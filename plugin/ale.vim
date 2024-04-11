let g:ale_linters = {
  \  'javascript': ['eslint'],
  \  'typescript': ['eslint'],
  \  'javascriptreact': ['eslint'],
  \  'typescriptreact': ['eslint'],
  \  'jsx': ['eslint'],
  \  'tsx': ['eslint'],
  \}

let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \  'javascript': ['prettier', 'eslint'],
  \  'typescript': ['prettier', 'eslint'],
  \  'javascriptreact': ['prettier', 'eslint'],
  \  'typescriptreact': ['prettier', 'eslint'],
  \  'jsx': ['prettier', 'eslint'],
  \  'tsx': ['prettier', 'eslint'],
  \}

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
