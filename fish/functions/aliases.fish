#
# alias for nvim
#
function vim --description 'alias vim=nvim'
	nvim  $argv;
end

alias du="du -sh"
alias guntar="tar -xzvf"

function rustcheck
	rustfmt --check $argv;
end

