PATH=$PATH:/usr/local/bin:/usr/bin
# nodejs
PATH=$PATH:${HOME}/.nodebrew/current/bin
# yarn
PATH=$PATH:`yarn global bin`

# VIM設定
export XDG_CONFIG_HOME=${HOME}/.dotfiles
# 履歴を保存する
export HISTFILE=${HOME}/.zsh_history
# 履歴サイズとフォーマット
export HISTSIZE=100000
export HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '
# メモリ履歴の件数
export SAVESIZE=100000
# ファイルに保存する履歴件数
export SAVEHIST=100000
# 重複を記録しない
setopt hist_ignore_all_dups
# 同時起動のzsh間でヒストリ共有
setopt share_history
# ヒストリの無駄なスペースを削除
setopt hist_reduce_blanks
# ディレクトリ名だけでcd
setopt auto_cd
# 開始と終了を記録
setopt EXTENDED_HISTORY
# ビープ音うるせ
setopt no_beep
# 高機能なワイルドカード展開
setopt extended_glob
# 大文字入力したときだけ大文字補完、見つからないときは小文字
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'
