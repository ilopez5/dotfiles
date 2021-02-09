# set screen layout for home monitors
function tripledisplay
	xrandr --auto --output eDP1 --mode 1920x1080 --left-of HDMI2 --below HDMI1;
	xrandr --auto --output HDMI1 --mode 1920x1080 --above eDP1 --left-of HDMI2;
	xrandr --auto --output HDMI2 --mode 1920x1080 --right-of eDP1 --right-of HDMI1 --rotate left
	xrandr --auto --output eDP1 --mode 1920x1080 --left-of HDMI2 --below HDMI1;
	xrandr --auto --output HDMI1 --mode 1920x1080 --above eDP1 --left-of HDMI2;
	xrandr --auto --output HDMI2 --mode 1920x1080 --right-of eDP1 --right-of HDMI1 --rotate left
end

# set screen back to default (thinkpad only)
function normaldisplay
	xrandr --auto --output eDP1 --mode 1920x1080;
	xrandr --auto --output eDP1 --mode 1920x1080;
end

# left display
function leftdisplayonly
	xrandr --auto --output eDP1 --mode 1920x1080 --below HDMI1
	xrandr --auto --output HDMI1 --mode 1920x1080 --above eDP1
end

# right display
function rightdisplayonly
	xrandr --auto --output eDP1 --mode 1920x1080 --left-of HDMI2
	xrandr --auto --output HDMI2 --mode 1920x1080 --right-of eDP1 --rotate left
end


# set screen layout for Canopy LLC workstation
function workdisplay
	xrandr --auto --output eDP1 --mode 1920x1080 --left-of HDMI2 --below DP1;
	xrandr --auto --output DP1 --mode 1920x1080 --above eDP1 --left-of HDMI2;
	xrandr --auto --output HDMI2 --mode 1920x1080 --right-of eDP1 --right-of DP1 --rotate left
	xrandr --auto --output eDP1 --mode 1920x1080 --left-of HDMI2 --below DP1;
	xrandr --auto --output DP1 --mode 1920x1080 --above eDP1 --left-of HDMI2;
	xrandr --auto --output HDMI2 --mode 1920x1080 --right-of eDP1 --right-of DP1 --rotate left
end

################################### END OF DISPLAYS SECTION  #######################################

# used for when video stuttering is acting up, keeps the GPU rendering
function blinkenlights
	i3-msg resize set width 35
	while true
		for i in / \| \\ \|
			echo $i
			sleep 0.1
		end
	end
end


# starts recording
function record
	asciinema rec
end

# send wakeonlan packet to leviathan
function wakeleviathan
	ssh plankton wakeonlan -p 9 D8:CB:8A:95:11:E6
end


# check mailbox for Avery's letters
function checkmail
	ssh plankton ~/Documents/scripts/checkmail.sh
end


# sizeof - check the size of a directory or file
function sizeof
	du -sh $argv
end

# make clean and make again
function remake
	make clean && make
end

# mounts seashell
function seashell
	udisksctl mount -b /dev/sdb1
end

# generate invoice for Canopy
function generateInvoice
	cd $HOME/documents/work/canopy/invoices
	/bin/python3 $HOME/documents/work/canopy/invoices/{invoice.py,zipbooks.env,archives}
end


# bluetooth functions
function ondolphin
	bluetoothctl power on
	bluetoothctl connect 00:18:09:F5:0F:1B
end

function offdolphin
	bluetoothctl disconnect 00:18:09:F5:0F:1B
	bluetoothctl power off
end
