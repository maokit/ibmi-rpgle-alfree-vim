set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

" Language:	RPGIV

" 大文字/小文字を無視
sy case ignore

"---------------------------
" RPGLE All Free Syntax 設定 
"---------------------------
" 1-7 桁目の表示
sy match rpg7Comment /^\s\s\s\s\s\s\s/ 
" コメント行
sy region cbLineComment start=+//+ end=+$+
" /COPY
sy region rpgSCopy start=+/copy+ end=+\s+
" H仕様書
sy region rpgafHspec start=+ctl-opt+ end=+\s+
" F仕様書
sy region rpgafFspec start=+dcl-f+ end=+\s+ 
" D仕様書
sy region rpgafDspecC start=+dcl-c+ end=+\s+
sy region rpgafDspecS start=+dcl-s+ end=+\s+
sy region rpgafDspecDSs start=+dcl-ds+ end=+\s+
sy region rpgafDspecDSe start=+end-ds+ end=+;+me=s-1
sy region rpgafDspecPIs start=+dcl-pi+ end=+\s+
sy region rpgafDspecPIe start=+end-pi+ end=+;+me=s-1
sy region rpgafDspecPRs start=+dcl-pr+ end=+\s+
sy region rpgafDspecPRe start=+end-pr+ end=+;+me=s-1
" P仕様書
sy region rpgafPspecs start=+dcl-proc+ end=+\s+
sy region rpgafPspece start=+end-proc+ end=+;+me=s-1
" H仕様書キーワード
sy keyword rpgHKeyword alloc actgrp altseq alwnull aut bnddir ccsid ccsidcvt copynest copyright cursym cvtopt datedit datfmt debug decedit decprec dftactgrp dftname enbpfrcol expropts extbinint fixnbr fltdiv formsalign ftrans genlvl indent intprec langid main nomain openopt optimize option pgminfo prfdta srtseq stgmdl text thread timfmt truncnbr usrprf validate
" F仕様書キーワード
sy keyword rpgFKeyword block commit data devid disk extdesc extfile extind extmbr formlen formofl handler ignore include indds infds infsr keyloc keyed likefile maxdev oflind pass pgmname plist prefix printer prtctl qualified rafdata recno rename saveds saveind seq sfile sln special static template timfmt usage usropn workstn 
" D仕様書キーワード
sy keyword rpgDKeyword alias align alt altseq ascend based bindec ccsid char class const ctdata date datfmt descend dim dtaara export ext extfld extfmt extname extpgm extproc froat fromfile graph import int ind inz len like likeds likefile likerec noopt object occurs opdesc options overlay packed packeven perrcd pointer pos prefix procptr psds qualified rtnparm static template time timestamp timfmt tofile usc2 uns value varchar vargraph varucs2 varying zoned
" C仕様書 演算命令
sy keyword rpgCOperation acq and or begsr endsr callp chain clear close commit dealloc delete dou dow enddo dsply dump if else elseif for endfor endif endmon endsl eval evalr eval-corr except exfmt exsr feod force in out iter leave leavesr monitor next on-error open other post read readc reade readp readpe rel reset return rolbk select when setgt setll sorta test unlock update write xml-into xml-sax not           
" 関数
sy region rpgCFunction start=+%+ end=+(+me=s-1
" 文字列
sy region rpgStrings start=/'/ end=/'/ 
" 式
sy match rpgOperand /[+=*<>():;\-\.,]/
" 予約語
sy keyword rpgReservString stgmdl teraspace snglvl new caller none src srcstmt ext no inputonly usrctl libcrtaut all change use exclude excp list nodatetime datetime nographic graphic novarchar varchar novargraphic vargraphic input dump xmlsax yes jobrun pep entryexit full maxdigits resdecpos nozoned zoned noinputpacked inputpacked job noinzofl inzofl nocvtdata cvtdata basic noxref xref nogen gen noseclvl seclvl noshowcpy showcpy noexpdds expdds noext noshowskp showskp nodebugio debugio nounref unref pcml module nocol col hex langidunq langidshr inherit snglvl srcmbrtxt blank concurrent serialize user owner nocvt cvt extdesc char only file noind compat output update delete java cl cwiden cnowiden nopass omit varsize string trim rightadj nullind next proc allthread in inlr on off 

"-----------------------------------------
" 色の設定 (based: mac vim xterm-256color)
"-----------------------------------------
set cursorline
"hi clear CursorLine
"-----
" 行番号, カーソルライン, 先頭7桁
hi LineNr ctermfg=darkgray ctermbg=black
hi CursorLineNr ctermfg=brown
hi rpg7Comment ctermbg=black
"-----
" コメント行
hi cbLineComment cterm=bold ctermfg=darkgray
" /COPY
hi rpgSCopy ctermfg=blue
" H仕様書
hi rpgafHspec ctermfg=darkred
" F仕様書
hi rpgafFspec ctermfg=darkred
" D仕様書
hi rpgafDspecC ctermfg=darkred
hi rpgafDspecS ctermfg=darkred
hi rpgafDspecDSs ctermfg=darkred
hi rpgafDspecDSe ctermfg=darkred
hi rpgafDspecPIs ctermfg=darkred
hi rpgafDspecPIe ctermfg=darkred
hi rpgafDspecPRs ctermfg=darkred
hi rpgafDspecPRe ctermfg=darkred
" P仕様書
hi rpgafPspecs ctermfg=darkred
hi rpgafPspece ctermfg=darkred
" H仕様書キーワード
hi rpgHKeyword ctermfg=darkcyan
" F仕様書キーワード
hi rpgFKeyword ctermfg=darkcyan
" D仕様書キーワード
hi rpgDKeyword ctermfg=darkcyan
" C仕様書 演算命令
hi rpgCOperation ctermfg=brown
" 関数
hi rpgCFunction ctermfg=darkmagenta
" 式
hi rpgOperand ctermfg=darkgreen
" 文字列
hi rpgStrings ctermfg=darkblue
" 予約語
hi rpgReservString ctermfg=darkgreen

" vim 設定
autocmd!
set number
set ruler
set columns=170
set lines=50
set colorcolumn=80
set tabstop=2
set autoindent
set expandtab
set shiftwidth=2
" DBCSブランク強調
autocmd VimEnter,WinEnter,BufRead,BufNewFile,BufReadPre,BufReadPost * match ZSpace /　/
hi ZSpace ctermbg=blue
