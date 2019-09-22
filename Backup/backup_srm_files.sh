!/bin/bash

saves_root="/home/pi/RetroPie/roms/"

cd "$saves_root"

# Go through each child folder

today_folder="`date +%F-%H%M`"

for SystemDir in *; do
        cd $SystemDir
        pwd

        # Check if the backup directory exists
        if [ ! -d "backups" ]; then
                mkdir "backups"
        fi

        # Check if the today folder in the backup directory exists
        if [ ! -d "backups/$today_folder" ]; then
                mkdir "backups/$today_folder"
        fi

        # Copy SRM files to the backup directory
        cp *.srm "backups/$today_folder/"
        #cp *.state* "backups/$today_folder/"

        cd ..

done
