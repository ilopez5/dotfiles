# starts recording
function record
	asciinema rec
end

# send wakeonlan packet to leviathan
function wakeleviathan
	ssh plankton wakeonlan -p 9 D8:CB:8A:95:11:E6
end

# make clean and make again
function remake
	make clean && make
end
