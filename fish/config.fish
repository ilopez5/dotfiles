set fish_greeting

source ~/.config/fish/functions/commands.fish
source ~/.config/fish/functions/aliases.fish

# prints prompt
if which starship >/dev/null 2>/dev/null
    starship init fish | source
end 
