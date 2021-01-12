# set prompt with omega symbol, new line, and desired coloring
function fish_prompt
	# set auto coloring of git branch
	set -g __fish_git_prompt_showcolorhints

	# set magenta (set_color cecece)
	set -g __fish_git_prompt_color_branch magenta 

	set_color 64c8fa
	printf '%s' (whoami)
	set_color cecece
	printf '@'
	set_color 939393
	printf '%s' (hostname)
	set_color cecece
	printf '%s' (fish_git_prompt)
	set_color cecece
	printf ':'
	set_color 1dc7d6
	printf '%s\n' (prompt_pwd) 
	set_color ffe260
	printf '\xCE\xA9 '
	set_color 878787
	printf '>'
	set_color adadad
	printf '> '
	set_color normal
end

function fish_right_prompt
	set_color 404040
	date "+%H:%M:%S"
	set_color normal
end
