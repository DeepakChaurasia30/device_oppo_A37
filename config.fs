[firmware/]
mode: 0771
user: AID_SYSTEM
group: AID_SYSTEM
caps: 0

[persist/]
mode: 0771
user: AID_SYSTEM
group: AID_SYSTEM
caps: 0

[vendor/bin/imsdatadaemon]
user: AID_SYSTEM
group: AID_SYSTEM
mode: 0755
caps: NET_BIND_SERVICE

[vendor/bin/ims_rtp_daemon]
user: AID_SYSTEM
group: AID_RADIO
mode: 0755
caps: NET_BIND_SERVICE
