#!/bin/bash
case $ST_SYS_GEN in
    linux)
        sudo apt-get update
        sudo apt-get -y install fortune
        sudo apt-get -y install cowsay         
        ;;
    macos)
        echo "stop ..."
        ;;
    msys)
        echo "reload..."
        ;;
    *)
        echo "Usage: $name [start|stop|reload]"
        exit 1
        ;;
    esac


