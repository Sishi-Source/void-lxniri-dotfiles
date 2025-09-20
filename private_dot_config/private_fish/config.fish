if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Source Zoxide
zoxide init fish --cmd cd | source

# Source FZF
fzf --fish | source

#Source Starship
starship init fish | source
