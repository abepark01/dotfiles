"python with virtualenv support
if has('python')
  py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

if has('python3')
  py3 << EOF
import os
virtualenv = os.environ.get('VIRTUAL_ENV')
if virtualenv:
  activate_this = os.path.join(virtualenv, 'bin', 'activate_this.py')
  if os.path.exists(activate_this):
    exec(compile(open(activate_this).read(), activate_this, 'exec'), {'__file__': activate_this})
EOF
endif
let python_highlight_all=1
let g:ycm_python_binary_path = 'python'

au BufRead,BufNewFile *.py,*.ptw,*.c,*.h highlight BadWhiteSpace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhiteSpace /\s\+$/

let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args="--ignore=E501"
