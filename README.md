# tailscale-updater-glinet

A simple script to update tailscale on my GliNet Beryl AX travel router

## Instructions

- SSH into the router - This can be done by running `ssh root@ip_of_router`. The default for mine was `192.168.8.1`.

Once connected over SSH:

- Create the file - Run `curl -O https://raw.githubusercontent.com/CattoSalad/tailscale-updater-glinet/main/update_tailscale.sh` download the script.

- Make it executable - Run `chmod +x update_tailscale.sh`

## Usage

Once the above has been done just run the following `./update_tailscale.sh`

Once complete restart your router.

## Supported Devices

**Disclaimer**: I only own a Beryl AX so I can't guarantee it'll work for other models.

This should work for most GliNet routers as referenced [here](https://docs.gl-inet.com/router/en/4/interface_guide/tailscale/) the following should be supported:

GL-MT6000 (Flint 2), GL-X3000 (Spitz AX), GL-MT3000 (Beryl AX), GL-AXT1800 (Slate AX), GL-A1300 (Slate Plus), GL-MT2500/GL-MT2500A (Brume 2), GL-AX1800 (Flint) and GL-MV1000/GL-MV1000W (Brume).
