" =========================================================
" Filename: cosco.vim
" Author: TornaxO7
" Last changes: 27.01.21
" Version: 1.0
" Usage: 
"     Here are all values which are loaded first for the
"     cosco plugin. It has the following structure:
"       1. Variables
"         1.1 Configurable Variables
"         1.2 Core variables (shouldn't be configured directly
"           from the user).
"       2. Autocommands.
"       3. Available commands for the user.
"         3.1 Commandline commands
"         3.2 <Plug> commands
" =========================================================

" =================
" 1. Variables 
" =================
" ---------------------------
" 1.1 Configurable variables 
" ---------------------------
" should cosco set the semicolons/commas automatically?
" Possible Vales:
"   0 => Don't set commas/semicolons automatically
"   1 => Set commas/semicolons automatically
if !exists("g:cosco_auto_comma_or_semicolon")
    let g:cosco_auto_comma_or_semicolon = 0
endif

" all events where cosco should set comments/semicolons automatically
" see :h autocmd-events to get all possible events
if !exists("g:cosco_auto_comma_or_semicolon_events")
    let g:cosco_auto_comma_or_semicolon_events = ["InsertLeave"]
endif

" should cosco add semicolons/commas in comments as well?
" Possible Values:
"   0 => No
"   1 => Yes
if !exists("g:cosco_ignore_comment_lines")
    let g:cosco_ignore_comments = 1
endif

" which filetypes should be added?
if !exists("g:cusco_whitelist")
    let g:cosco_whitelist = [
        \ "c",
        \ "cpp",
        \ "css",
        \ "javascript",
        \ "rust"
        \]
endif

" Possible values:
"   0 => Disable cosco :(
"   1 => Enable cosco :)
if !exists("g:cosco_enable")
    let g:cosco_enable = 1
endif

" -------------------
" Core variables 
" -------------------
" here are all variables which shouldn't be changed by
" the user

" ====================
" 2. Autocommands 
" ====================
" refresh the autocommands if the user moves to another buffer
autocmd BufEnter * call cosco_autocmds#RefreshAutocmds()

" ================
" 3. Commands 
" ================
" -------------------------
" 3.1 Commandline commands 
" -------------------------
command! CommaOrSemiColon call cosco#commaOrSemiColon()
command! AutoCommaOrSemiColonToggle :call cosco_helpers#AutoCommaOrSemiColonToggle()

" --------------------
" 3.2 <Plug> Commands 
" --------------------
nnoremap <silent> <nowait> <Plug>(cosco-commaOrSemiColon)
    \ :<C-u>silent! call cosco#commaOrSemiColon()<Bar>
    \ silent! call repeat#set("\<Plug>(cosco-commaOrSemiColon)")<CR>
