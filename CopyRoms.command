#!/bin/bash
rsync -r --exclude=.DS_Store "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/RetroPie/ gamer@192.168.4.1:RetroPie/
