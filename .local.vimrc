scriptencoding utf-8

lcd <sfile>:h

hi Comment guifg=#009955

com! -buffer TOC call <SID>TOC()
if !exists("*s:TOC")
	func! s:TOC() abort
		let efm = &efm
		set efm=%f\|%m
		set efm+=%-G%.%#
		cgetfile 00_目次.md
		let &efm = efm
	endf
endif
