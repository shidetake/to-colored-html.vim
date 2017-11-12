scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

function! tocoloredhtml#exec()
  " ユーザー設定がなければcolorschemeを変えない
  if !exists('g:tocoloredhtml_color')
    let g:tocoloredhtml_color = g:colors_name
  endif
  
  " ユーザー設定がなければbackgroundを変えない
  if !exists('g:tocoloredhtml_bg')
    let g:tocoloredhtml_bg = &background
  endif

  " 色を退避
  let s:save_colorscheme = g:colors_name
  let s:save_background = &background

  " 色を変えてHTML化してブラウザで開く
  execute "colorscheme " . g:tocoloredhtml_color
  let &background = g:tocoloredhtml_bg
  TOhtml
  QuickRun html
  quit!

  " 色を復元
  execute "colorscheme " . s:save_colorscheme
  let &background = s:save_background
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
