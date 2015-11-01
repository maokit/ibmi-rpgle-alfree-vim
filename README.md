# rpgle.vim の使い方
## 1. filetype の追加
~/.vim/filetype.vim に以下を追加（ファイルが無ければ作成）
  
    augroup filetypedetect
    	au! BufRead,BufNewFile *.rpgle    setfiletype rpgle
    augroup END

## 2. .vimrc への追記
~/.vim/rpgle.vim に配置した場合
  
`au! Syntax rpgle so ~/.vim/rpgle.vim`
  
# rpgle.vim イメージ
![rpgleimage](https://github.com/maokit/ibmi-rpgle-alfree-vim/blob/master/RpgleImage.png)

# その他
もうすぐか？[Hot New Features Coming in IBM i Technology Refreshes in November][1]
  
[1]:https://connection.common.org/blogs/news/entry/hot_new_features_coming_in_ibm_i_technology_refreshes_in_november?lang=ja "COMMON"

Coding Beyond 80
 
For RPG programmers, IBM has made coding in free-format RPG even freer by letting programmers extend their code: 
 
"If you're an RPGer, the removal of the 80-column limit is going to get very quick and very extensive use. The move to free-form gets a bunch of help from this," Steve Will, IBM chief architect for the IBM i operating system, told COMMON. 
