#!/bin/bash

main ()
        {

        sudo rm -r ovpn*
        sudo wget https://downloads.nordcdn.com/configs/archives/servers/ovpn.zip
        sudo unzip ovpn.zip
        TEST=$(curl --silent 'https://nordvpn.com/wp-admin/admin-ajax.php?action=servers_recommendations' | jq --raw-output '.[].hostname' | head -n 1)
        sudo openvpn /home/$USER/vpn/ovpn_udp/$TEST.udp.ovpn

        }

main;
