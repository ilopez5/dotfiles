# set prompt with omega symbol, new line, and desired coloring
function fish_prompt
	set_color 939393
	printf '%s' (hostname)
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
