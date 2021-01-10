# TouchID-Sudo

### This is a simple script to automate adding touchID as a sufficient authentication method for sudo commands on mac with Touch ID. Since  won't just include it officially, we must resort to these hacky measures. 

This script will create a backup of the sudo pam file whenever it edits it and it will only edit the file if touchID is not already found. 

Should this bork your system, simply copying the `sudo.bak` file over the modified `sudo` file from a recovery shell should do the trick.

## Installation 

1. Place the bash script itself anywhere you like. The default is `/usr/local/bin`
2. Edit `com.user.addtouch.plist` and replace `/usr/local/bin/addTouch.sh` with the full path to the script in step 1 above.
3. Place `com.user.addtouch.plist` file in `/Library/LaunchDaemons/`
4. Make sure the `addTouch.sh` script is executable.

#### Note:  

If you used the default location, the script should be in your path now, you can call it to go ahead and add touchID to pam's sudo file now. 

After future updates wipe your custom sudo file, this will kick in on boot and update it. 
