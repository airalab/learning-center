## Raspberry Pi configuration

### Ready to use Raspberry Pi

1. Download the distro [link](https://drive.google.com/a/aira.life/file/d/17NT6xm0VRl3Elh0Cm0ufhjswdX4iIgY7/view?usp=sharing)
2. Decompress 
    ```
    $ xz --decompress smg2.img.xz
    ```
3. Burn it to USB stick 4Gb or more `$ dd if=smg2.img of=/dev/sdc`. You can resize the second partition
4. Boot Raspberry Pi, the user is pi, the password is raspberry. You should change the password
5. Connect the sensor
6. Add peers to the file `/etc/cjdroute.conf`
    ```
    "164.132.111.49:53741": {
        "password": "cr36pn2tp8u91s672pw2uu61u54ryu8",
        "publicKey": "35mdjzlxmsnuhc30ny4rhjyu5r1wdvhb09dctd1q5dcbq6r40qs0.k"
    },
    "195.135.232.19:60111": {
        "publicKey": "4u15jbz7t6rcvx20qp9rpuzsjffsrg567x7mz9g9mmczzvc8cd60.k",
        "password": "l9721qw2xqmxguyv7qcgs0l6b1k2nvr",
    },
    "52.232.72.83:31259": {
        "login": "default-login",
        "password":"tt3yb4613wgh3sgfsgkg1fvk24k6hnk",
        "publicKey":"jyl980gs5513dw5x19qp3khb6337ljsx3sgwbsmnsvvyb5jdcw90.k", 
        "peerName":"airalab.hype"
    }
    ```

### Configuration of fresh installation 

1. Connect the sensor
2. Create a directory /storage
    ```
    $ sudo mkdir -p /storage/data
    $ sudo mkdir -p /storage/images
    ```
3. Download and install rrdtool (https://goo.gl/fmgFfH) 
4. Download SMG2 driver (https://goo.gl/qZ4Zuf)
5. Edit the build file `/var/rrd` with `/storage/data`
6. Build the driver
    ```
    $ ./build
    ```
7. Move executable `SMG2` to `/bin/SMG2`
    ```
    $ sudo mv SMG2 /bin/SMG2
    ```
8. Copy smg2.service (https://goo.gl/pdNpwb) to `/etc/systemd/system/` and launch
    ```
    $ sudo systemctl enable smg2.service
    ```
9. Download and build cjdns (https://github.com/cjdelisle/cjdns). Add services to the system
    ```
    $ sudo cp cjdns/contrib/systemd/* /etc/systemd/system/
    $ sudo cp cjdns/cjdroute /usr/bin/
    ```
10. Launch the service. You should see `/etc/cjdroute.conf`
    ```
    $ sudo systemctl enable cjdns
    ```
11. Add peers to `/etc/cjdroute.conf` under “connectTo” (see above). Now you should have IPv6 address, it's necessary for next steps
12. Download additional scripts, make it executable and place to `/usr/bin/` folder
    gettimestamp.sh (https://goo.gl/TYjRMT) 
    render.sh (https://goo.gl/6kdgok) 
13. Add task to crontab
    ```
    */15 *  * * *   root     render.sh /storage/data/radiation.rrd /storage/images/`gettimestamp.sh`.png "Radiation"
    ```
