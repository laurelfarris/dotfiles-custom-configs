python << EOF
import vim
import re

pdb_breakpoint = 'import ipdb; ipdb.set_trace()'

def set_breakpoint():
    breakpoint_line = int(vim.eval('line(".")')) - 1

    current_line = vim.current.line
    white_spaces = re.search('^(\s*)', current_line).group(1)

    vim.current.buffer.append(white_spaces + pdb_breakpoint, breakpoint_line)

vim.command('map <f6> :py set_breakpoint()<cr>:w<cr>')

def remove_breakpoints():
    op = 'g/^.*%s.*/d' % pdb_breakpoint
    vim.command(op)

vim.command('map <f7> :py remove_breakpoints()<cr>:w<cr>')
EOF
