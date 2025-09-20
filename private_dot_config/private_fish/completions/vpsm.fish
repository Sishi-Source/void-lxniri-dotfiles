# This is a fish shell completion script for the vpsm command.

# The script provides completion for subcommands and their arguments.

# Main command completion
complete -c vpsm -l color -d "Enable/Disable colorized output" -x -a "yes no auto"
complete -c vpsm -l help -d "Show help message" -x
complete -c vpsm -l help-pager -d "Show help message with pager" -x

# Git Subcommands
complete -c vpsm -n __fish_use_subcommand -a add-changes -F -d "Add work changes in your clone repository"
complete -c vpsm -n "__fish_seen_subcommand_from add-changes ac" -a '(__fish_complete_directories)'

complete -c vpsm -n __fish_use_subcommand -a add-remote-repo -x -d "Add new remote repo"
complete -c vpsm -n "__fish_seen_subcommand_from add-remote-repo arr" -a 'remote-name url'

complete -c vpsm -n __fish_use_subcommand -a checkout-branch -x -d "Switch branch"
complete -c vpsm -n "__fish_seen_subcommand_from checkout-branch co" -a branch-name

complete -c vpsm -n __fish_use_subcommand -a commit-changes -x -d "Commits changes added"
complete -c vpsm -n "__fish_seen_subcommand_from commit-changes cc" -a message

complete -c vpsm -n __fish_use_subcommand -a create-branch -x -d "Create a new branch"
complete -c vpsm -n "__fish_seen_subcommand_from create-branch cb" -a branch-name

complete -c vpsm -n __fish_use_subcommand -a delete-branch -x -d "Delete a existing branch"
complete -c vpsm -n "__fish_seen_subcommand_from delete-branch delb" -a branch-name

complete -c vpsm -n __fish_use_subcommand -a pull -x -d "Pull commit from remote repo"
complete -c vpsm -n "__fish_seen_subcommand_from pull pp" -x -a 'remote-repo branch'

complete -c vpsm -n __fish_use_subcommand -a pull-request -x -d "Create a pull-request"
complete -c vpsm -n "__fish_seen_subcommand_from pull-request pr" -a '[message]'

complete -c vpsm -n __fish_use_subcommand -a push-commit -x -d "Push commits to remote repo"
complete -c vpsm -n "__fish_seen_subcommand_from push-commit pc" -a 'remote-repo branch'

complete -c vpsm -n __fish_use_subcommand -a update-repo -f -d "Pull commits from void-linux official repo"

# XBPS-SRC Subcommands
complete -c vpsm -n __fish_use_subcommand -a binbootstrap -f -d "Install bootstrap packages"

complete -c vpsm -n __fish_use_subcommand -a bootstrap-up -f -d "Updates bootstrap packages"

complete -c vpsm -n __fish_use_subcommand -a build-environment -f -d "Configure environment to create binary packages"

complete -c vpsm -n __fish_use_subcommand -a edit-template -x -d "Edit <pkgname> template"
complete -c vpsm -n "__fish_seen_subcommand_from edit-template et" -a pkgname

complete -c vpsm -n __fish_use_subcommand -a install -x -d "Build and install binary package"
complete -c vpsm -n "__fish_seen_subcommand_from install i" -a pkgname

complete -c vpsm -n __fish_use_subcommand -a lint -x -d "Scan XBPS template for common mistakes"
complete -c vpsm -n "__fish_seen_subcommand_from lint li" -a pkgname

complete -c vpsm -n __fish_use_subcommand -a list -f -d "Lists installed packages"

complete -c vpsm -n __fish_use_subcommand -a pkg -x -d "Only build binary package"
complete -c vpsm -n "__fish_seen_subcommand_from pkg" -a pkgname

complete -c vpsm -n __fish_use_subcommand -a purge-distfiles -x -d "Removes all obsolete distfiles"

complete -c vpsm -n __fish_use_subcommand -a searchbin -x -d "Search for package in binary packages"
complete -c vpsm -n "__fish_seen_subcommand_from searchbin sb" -a pkgname

complete -c vpsm -n __fish_use_subcommand -a searchsrc -x -d "Search for package in source packages"
complete -c vpsm -n "__fish_seen_subcommand_from searchsrc ss" -a pkgname

complete -c vpsm -n __fish_use_subcommand -a show -x -d "Show information for the specified package"
complete -c vpsm -n "__fish_seen_subcommand_from show sw" -a pkgname

complete -c vpsm -n __fish_use_subcommand -a show-build-deps -x -d "Show required build dependencies"
complete -c vpsm -n "__fish_seen_subcommand_from show-build-deps bdeps" -a pkgname

complete -c vpsm -n __fish_use_subcommand -a show-deps -x -d "Show required run-time dependencies"
complete -c vpsm -n "__fish_seen_subcommand_from show-deps rdeps" -a pkgname

complete -c vpsm -n __fish_use_subcommand -a uninstall -x -d "Uninstall and purge distfiles"
complete -c vpsm -n "__fish_seen_subcommand_from uninstall un" -a pkgname

complete -c vpsm -n __fish_use_subcommand -a update-bulk -f -d "Rebuilds all outdated packages"

complete -c vpsm -n __fish_use_subcommand -a update-check -x -d "Check upstream site for new releases"
complete -c vpsm -n "__fish_seen_subcommand_from update-check upc" -a pkgname

complete -c vpsm -n __fish_use_subcommand -a update-sys -f -d "Rebuilds and updates system packages"

complete -c vpsm -n __fish_use_subcommand -a xgsum -x -d "Generate SHA256 for template"
complete -c vpsm -n "__fish_seen_subcommand_from xgsum" -a pkgname

complete -c vpsm -n __fish_use_subcommand -a xinstall -x -d "Like xbps-install but with repo and sudo/su"
complete -c vpsm -n "__fish_seen_subcommand_from xinstall xi" -a pkgname
