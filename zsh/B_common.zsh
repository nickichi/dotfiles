PATH=$PATH:/usr/local/bin:/usr/bin

# VIM設定
export XDG_CONFIG_HOME=~/.dotfiles
# 履歴を保存する
export HISTFILE=${HOME}/.zsh_history
# メモリ履歴の件数
export SAVESIZE=1000
# ファイルに保存する履歴件数
export SAVEHIST=100000
# 重複を記録しない
setopt hist_ignore_dups
# 開始と終了を記録
setopt EXTENDED_HISTORY
# ビープ音うるせ
setopt no_beep
