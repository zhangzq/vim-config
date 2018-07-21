" Vim syntax file
" Language: C++ Additions
" Maintainer: Jon Haggblad <jon@haeggblad.com>
" URL: http://www.haeggblad.com
" Last Change: 21 Sep 2014
" Version: 0.5
" Changelog:
"   0.1 - initial version.
"   0.2 - C++14
"   0.3 - Incorporate lastest changes from Mizuchi/STL-Syntax
"   0.4 - Add template function highlight
"   0.5 - Redo template function highlight to be more robust. Add options.
"
" Additional Vim syntax highlighting for C++ (including C++11/14)
"
" This file contains additional syntax highlighting that I use for C++11/14
" development in Vim. Compared to the standard syntax highlighting for C++ it
" adds highlighting of (user defined) functions and the containers and types
" in the standard library / boost.
"
" Based on:
"   http://stackoverflow.com/questions/736701/class-function-names-highlighting-in-vim
"   http://www.vim.org/scripts/script.php?script_id=4293
"   http://www.vim.org/scripts/script.php?script_id=2224
"   http://www.vim.org/scripts/script.php?script_id=1640
"   http://www.vim.org/scripts/script.php?script_id=3064

" -----------------------------------------------------------------------------
"  Highlight Class and Function names.
"
" Based on the discussion in:
"   http://stackoverflow.com/questions/736701/class-function-names-highlighting-in-vim
" -----------------------------------------------------------------------------

" Functions

" Highlight Function names
" Inspiration: http://stackoverflow.com/questions/736701/class-function-names-highlighting-in-vim/773392#773392
" syn match    cCustomParen    "(" contains=cParen contains=cCppParen
" " cCustomFunc combines cCustomMemberFunc and cCustomStaticFunc
" syn match    cCustomFunc        "\(::\|->\|\.\)\zs\w\+\s*\ze([^)]*).*[);]" contains=cCustomParen
" " syn match    cCustomMemberFunc  "\(->\|\.\)\zs\w\+\ze\s*(" contains=cCustomParen
" " syn match    cCustomStaticFunc  "::\zs\w\+\s*\ze([^)]*).*[);]" contains=cCustomParen
" hi def link cCustomFunc  Function
" " hi def link cCustomMemberFunc  Function
" " hi def link cCustomStaticFunc  Function

" " Alternative from Skelton
" "  syn match cppFuncDef "::\~\?\zs\h\w*\ze([^)]*\()\s*\(const\)\?\)\?$"
" "  hi def link cppFuncDef Special

" " Constants are all caps with underscores. Minimum 4 characters.
" " Source: http://stackoverflow.com/questions/1512602/highlighting-defined-value-in-vim/1515550#1515550
" syn match cConstant "\<[A-Z][A-Z0-9_]\{3,\}\>"
" hi def link cConstant Define

" Special highlight for method names
" Source: http://vim.wikia.com/wiki/Highlighting_of_method_names_in_the_definition
" syn match cppFuncDef "::\~\?\zs\h\w*\ze([^)]*\()\s*\(const\)\?\)\?$"
" hi def link cppFuncDef Function


syn match   cCustomParen    "(" contains=cParen contains=cCppParen
syn match   cCustomFunc     "\w\+\s*(\@=" contains=cCustomParen
hi def link cCustomFunc  Function


syn match    cCustomType    /\<[A-Z]\w\+\>/
hi def link cCustomType Type

syntax keyword cppType float32 uint32 double64 int32 int64 int16 uint16 vector map set unordered_map std boost string 
hi def link cppType Type

syntax keyword cppFunction get_data get_attr getdata
hi def link cppFunction Function


syn match    cCustomScope    "::"
syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope
hi def link cCustomClass Type  

