# left display
function dualmonitorabove
	xrandr --auto --output eDP1 --mode 1920x1080 --below $argv
	xrandr --auto --output $argv --mode 1920x1080 --above eDP1
end

function resetdisplay
    xrandr --auto --output eDP1 --mode 1920x1080
end

# starts recording
function record
	asciinema rec
end

# send wakeonlan packet to leviathan
function wakeleviathan
	ssh plankton wakeonlan -p 9 D8:CB:8A:95:11:E6
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
	cd $HOME/work/canopy/invoices
	/bin/python3 $HOME/work/canopy/invoices/{invoice.py,zipbooks.env,archives}
end

# bluetooth headphones
function dolphin
    if test $argv[1] = "on"
        bluetoothctl power on
        bluetoothctl connect 00:18:09:F5:0F:1B
    else
        bluetoothctl disconnect 00:18:09:F5:0F:1B
        bluetoothctl power off
    end
end
