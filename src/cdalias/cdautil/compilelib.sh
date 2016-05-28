#!/bin/sh

# Navigate to the path so all file references work
REL_PATH=${BASH_SOURCE%/*}
cd $REL_PATH

# Cleanup
rm -rf build dist cdautil.spec

# Activate venv
source venv/bin/activate

# Check if 'pyinstaller' is installed, install if not
CHECK_PYINST="$(pip list | grep -i pyinstaller)"
if [ ! -n "${CHECK_PYINST}" ]
    then
        pip install pyinstaller
fi

# Compile executable
pyinstaller -F --log-level CRITICAL --clean -p cda -n cdautil cda/run.py

# Cleanup again
rm -rf build
#rm -rf build cdautil.spec

# Dectivate venv
deactivate