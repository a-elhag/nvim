let g:ale_linters = {'python': ['flake8']} " 'mypy', 'pylint'
let g:ale_fixers = {
\    '*': ['remove_trailing_lines', 'trim_whitespace'],
\    'python': ['black', 'isort']
\}
