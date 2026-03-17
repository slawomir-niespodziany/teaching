# Phoenix WSL image
An image consiting of a prebuilt Phoenix RTOS is avaliable for direct import into WSL. The image has aliases defined for easy build & run of the modified Phoenix image and for connecting to it with telnet. 

## Phoenix image
The subdirectory _image_ consists of a WSL image with Phoenix virtual machine embedded. 

1. Assemble the image using _./merge.sh_ script,
2. Import the image _Phoenix\_\*.wsl_ to WSL using PowerShell command (replace the corresponding paths):
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