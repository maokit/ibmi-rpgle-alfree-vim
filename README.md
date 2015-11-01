# filetype の追加
~/.vim/filetype.vim に以下を追加（ファイルが無ければ作成）
    augroup filetypedetect
      au! BufRead,BufNewFile *.rpgle    setfiletype rpgle
    augroup END

# .vimrc への追記
~/.vim/rpgle.vim に配置した場合
  
`au! Syntax rpgle so ~/.vim/rpgle.vim`
  
# rpgle.vim イメージ
![rpgleimage](https://github.com/maokit/ibmi-rpgle-alfree-vim/blob/master/RpgleImage.png)
