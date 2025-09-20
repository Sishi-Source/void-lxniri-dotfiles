# environment variables
## PATH
fish_add_path $HOME/.local/bin/ $HOME/.cargo/bin

# Zoxide
set -gx _ZO_ECHO 1
set -gx _ZO_RESOLVE_SYMLINKS 1
set -gx _ZO_FZF_OPTS "--height 21% --no-reverse --smart-case --style=minimal --border=sharp"

# FZF
set -gx FZF_DEFAULT_OPTS "--height 21% --no-reverse --smart-case --style=minimal --border=sharp"
set -gx FZF_COMPLETION_TRIGGER "??"
set -gx FZF_ALT_C_OPTS "--preview 'tree -C {} | head -25'"
set -gx FZF_CTRL_R_OPTS "--no-sort --exact"
set -gx FZF_CTRL_R_OPTS "--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"

# fish greeting
set -U fish_greeting ''
