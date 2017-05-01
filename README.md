INSTALL

To install bash-tools follow these steps:

1 - Copy distribution folder 'bash-tools' to the desired permanent location. It is recommended to store it inside your user directory and the following steps will presume that you did exactly that.
2 - Open terminal and 'cd' into the directory where the 'bash-tools' folder is. '$ cd ~/' in our case.
3 - Type this command 'sudo sh bash-tools/install.sh -v'. Enter your password for 'sudo' command if prompted.

And we're done...


UNINSTALL

TODO


DEVELOPMENT

Clean build:

1 - From project directory run this command 'sh dev_clean_build.sh -fc' (optionally add 'i' flag to do a clean install as well).
2 - Then run 'sudo sh dist/bash-tools/etc/install.sh' (this step is not required if 'i' flag was used in the previous step).

Or a one-liner:
sh dev_clean_build.sh -fc; sudo sh dist/bash-tools/etc/install.sh; breset