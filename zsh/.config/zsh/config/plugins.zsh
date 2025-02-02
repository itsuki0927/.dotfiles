source "$ZDOTDIR/config/functions.zsh"

zsh_add_plugin "zsh-users/zsh-autosuggestions"
# zsh_add_plugin "marlonrichert/zsh-autocomplete"
# zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
# zsh_add_plugin "hlissner/zsh-autopair"

export ASDF_ROOT="$HOME/.asdf"
source "$ASDF_ROOT/asdf.sh"
fpath=(${ASDF_ROOT}/completions $fpath)
