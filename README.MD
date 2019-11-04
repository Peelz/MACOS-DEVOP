# Install .dmg

sudo hdiutil attach [disk-image-name].dmg
Enter into the mount volume:

cd /Volumes/[disk-image-name]
Then, copy entire .app folder to /Applications folder:

sudo cp -rf [app-name].app /Applications
Finally, unmount the disk image:

sudo hdiutil detach /Volumes/[disk-image-name]