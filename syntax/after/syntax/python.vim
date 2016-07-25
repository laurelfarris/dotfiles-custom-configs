"syntax on
syn region pythonDocstring  start=+"""+ end=+"""+ keepend "excludenl "contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
syn region pythonDocstring  start=+'''+ end=+'''+ keepend "excludenl "contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
hi link pythonDocString Comment
