complete -c ff -n "__fish_use_subcommand" -s t -l type -d 'Filter by type: d,directory, f,file, l,symlink, x,executable'
complete -c ff -n "__fish_use_subcommand" -s d -l max-depth -d 'Set maximum search depth. [default: none]'
complete -c ff -n "__fish_use_subcommand" -s c -l color -d 'When to use colors: auto, never, always [default: auto]' -r -f -a "auto never always"
complete -c ff -n "__fish_use_subcommand" -s j -l threads -d 'Set number of threads for searching and command execution.'
complete -c ff -n "__fish_use_subcommand" -l max-buffer-time -d 'Set time (in milliseconds) for buffering and sorting.'
complete -c ff -n "__fish_use_subcommand" -s x -l exec -d 'Execute the given command for each search result.'
complete -c ff -n "__fish_use_subcommand" -s g -l glob -d 'Search with a glob pattern. [default]'
complete -c ff -n "__fish_use_subcommand" -s r -l regex -d 'Search with a regex pattern. [default: glob]'
complete -c ff -n "__fish_use_subcommand" -s u -l unicode -d 'Match UTF-8 scalar values [default: match bytes]'
complete -c ff -n "__fish_use_subcommand" -s i -l ignore-case -d 'Case-insensitive search. [default: case-sensitive]'
complete -c ff -n "__fish_use_subcommand" -s s -l case-sensitive -d 'Case-sensitive search. [default]'
complete -c ff -n "__fish_use_subcommand" -s p -l full-path -d 'Match full paths. [default: match filename]'
complete -c ff -n "__fish_use_subcommand" -s L -l follow -d 'Follow symbolic links.'
complete -c ff -n "__fish_use_subcommand" -s M -l mount -d 'Do not descend into directories on other file systems.'
complete -c ff -n "__fish_use_subcommand" -s 0 -l print0 -d 'Terminate each search result with NUL.'
complete -c ff -n "__fish_use_subcommand" -s A -l absolute-path -d 'Output absolute paths instead of relative paths.'
complete -c ff -n "__fish_use_subcommand" -s S -l sort-path -d 'Sort the results by pathname.'
complete -c ff -n "__fish_use_subcommand" -s a -l all -d 'Include dot-files in the search.'
complete -c ff -n "__fish_use_subcommand" -s I -l no-ignore -d 'Do not respect .(git)ignore files.'
complete -c ff -n "__fish_use_subcommand" -s m -l multiplex -d 'All executed commands receive the same input.'
complete -c ff -n "__fish_use_subcommand" -s v -l verbose -d 'Warn about I/O errors, file permissions, symlink loops, etc.'
complete -c ff -n "__fish_use_subcommand" -s h -l help -d 'Prints help information. Use --help to show details and full list of options.'
complete -c ff -n "__fish_use_subcommand" -s V -l version -d 'Prints version information'
