scriptencoding utf-8

lcd <sfile>:h

com! -buffer QFix0525 call <SID>QFix0525()

" 関数の再帰呼び出しを防ぐ
if !exists("s:doing")
	func! s:QFix0525() abort
		let s:doing = 1
		" 保持
		let efm = &efm
		" efm 設定
		set efm=
		set efm+=エラー%\\tCS0525%\\t%m%\\tsrc%\\t%f%\\t%l%\\t%.%#
		set efm+=%-G%.%#
		" QFixList に クリップボードから展開
		cgetex @*
		" 復元
		let &efm = efm
		" 専用コマンド作成
		com! -buffer QFixDo0525 call <SID>QFixDo0525()
		delcom QFix0525
		unlet s:doing
	endfunc
	func! s:QFixDo0525() abort
		let s:doing = 1
		cdo :s/private \([^;]*\);/\1 { get; set; }/ | write
		if exists(":QFixDo0525")
			delcom QFixDo0525
			com! -buffer QFix0525 call <SID>QFix0525()
		endif
		unlet s:doing
	endfunc
endif

" vim: fdm=indent
