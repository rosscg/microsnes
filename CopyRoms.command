#!/bin/bash
rsync -rPz --exclude=.DS_Store --exclude=__MACOSX "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/RetroPie/ gamer@192.168.4.1:RetroPie2/
ssh gamer@192.168.4.1 'mv RetroPie2 RetroPie'
