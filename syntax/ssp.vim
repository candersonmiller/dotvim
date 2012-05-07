 "
 " Chicken Scheme Server Pages syntax
 " Language: HTML + Scheme
 " Maintainer: Alex Sandro Queiroz e Silva <asandroq@gmail.com>
 " Last Change: 2007 Apr 17
 "
 
 if version < 600
         syn clear
 elseif exists("b:current_syntax")
         finish
 endif
 
 if !exists("main_syntax")
         let main_syntax = "ssp"
 endif
 
 " Mostly HTML
 runtime! syntax/html.vim
 unlet! b:current_syntax
 
 " With embedded Chicken Scheme
 let is_chicken = 1
 syn include syntax/scheme.vim
 syn region sspScheme matchgroup=Delimiter start="<?scheme" end="?>" contains=schemeSyntax,schemeFunc,schemeOther,schemeConstant,schemeString,schemeBoolean,\
 schemeChar,schemeNumber,schemeExtSyntax,schemeComment
 
 " There are conflicts between Scheme keywords and HTML tags :(
 " <, =, >, / are not keyword chars in HTML
 if version < 600
         set iskeyword=33,35-39,42-46,48-58,63-90,94,95,97-122,126,_
 else
         setlocal iskeyword=33,35-39,42-46,48-58,63-90,94,95,97-122,126,_
 endif
 
 if main_syntax == "ssp"
         unlet main_syntax
 endif
 let b:current_syntax = "ssp"
 
