#
# alias for nvim
#
function vim --description 'alias vim=nvim'
	nvim  $argv;
end

alias du="du -sh"
alias guntar="tar -xzvf"
alias htop="htop -t"
alias nmgui="nm-connection-editor"

function cat
	bat $argv;
end

function rustcheck
	rustfmt --check $argv;
end

