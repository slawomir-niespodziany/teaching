# OPSY - GENERAL

## Phoenix image
The subdirectory _image_ consists of a WSL image with Phoenix virtual machine embedded. 

1. Assemble the image using _./merge.sh_ script,
2. Import the image _Phoenix\_\*.wsl_ to WSL using PowerShell command:
```
wsl --import Phoenix C:\Phoenix C:\Phoenix_3.1.0_Ubuntu_24-04.wsl
```

1. Navigate to _/root/phoenix-rtos-project_ and execute commands:
* _bp_ - Build Phoenix - Perform build of the Phoenix OS,
* _rp_ - Run Phoenix - Run the the created image using QEMU,
* _tp_ - Telnet Phoenix - Open telnet session to Phoenix,

Phoenix login credentials (for telnet session):
> user: root \
> password: 1234
