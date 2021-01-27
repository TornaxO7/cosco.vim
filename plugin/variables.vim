" =========================================================
" Filename: variables.vim
" Author: TornaxO7
" Last changes: 27.01.21
" Version: 1.0
" Usage: 
"     Here are all global variables which are used in the
"     cosco plugin!
" =========================================================

" ===========================
" Configurable variables 
" ===========================
" should cosco set the semicolons/commas automatically?
" Possible Vales:
"   0 => Don't set commas/semicolons automatically
"   1 => Set commas/semicolons automatically
if !exists("g:cosco_auto_comma_or_semicolon")
    let g:cosco_auto_comma_or_semicolon = 0
endif

" all events where cosco should set comments/semicolons automatically
" see :h autocmd-events for more information
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

" should we use *only* the whitelist of the user or
" should we add it to our default list?
" If the whitelist of the user is empty, than this will
" variable will be disabled
" Possible Values:
"   0 => Don't include it
"   1 => Yes include it
if !exists("g:cosco_include_default_whitelist")
    let g:cosco_include_default_whitelist = 0
endif

" which filetypes should be added?
if !exists("g:cosco_custom_whitelist")
    let g:cosco_custom_whitelist = []
    let g:cosco_include_default_whitelist = -1
endif

" Possible values:
"   0 => Disable cosco :(
"   1 => Enable cosco :)
if !exists("g:cosco_enable")
    let g:cosco_enable = 1
endif

" ===================
" Core variables 
" ===================
let g:cosco_whitelist = [
    \ "c",
    \ "cpp",
    \ "javascript",
    \ "css",
    \ "matlab",
    \ "octave"
    \]