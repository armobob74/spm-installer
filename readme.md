# SPM-Installer
## installers
This directory contains scripts to install the various repositories and components required for the SPM project.
If on windows, right-click on `Install.ps1` and hit "run with PowerShell".
If on Linux, run `install.bash`.

## runners
This directory also includes some example run scripts to show how the SPM components can be used.
The general idea is that one server is run for each peace of equipment, and then a controller UI or script can send HTTP requests to the servers.
`RunBasicSetup.ps1` provides an example setup for one SPM and one XY-Stage.


