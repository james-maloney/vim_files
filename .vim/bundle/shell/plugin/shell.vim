" Found this code here http://vim.wikia.com/wiki/Display_output_of_shell_commands_in_new_window
command! -complete=shellcmd -nargs=+ S call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
	echo a:cmdline
	let expanded_cmdline = a:cmdline
	for part in split(a:cmdline, ' ')
		if part[0] =~ '\v[%#<]'
				let expanded_part = fnameescape(expand(part))
				let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
		endif
	endfor
	botright new
	setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
	execute '$read !'. expanded_cmdline
	setlocal nomodifiable
	1
endfunction
