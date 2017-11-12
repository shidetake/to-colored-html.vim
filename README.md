# to-colored-html.vim
任意の`colorscheme`でカレントバッファをHTML化して、ブラウザで開く。

## Requirements
- QuickRun
- OpenBrowser

## Example
```vim
let g:quickrun_config.html = { 'command': 'cat', 'outputter': 'browser' }
let g:tocoloredhtml_color = 'louver'
let g:tocoloredhtml_bg = 'light'
```

## Execute
```vim
:TOcoloredHTML
```
