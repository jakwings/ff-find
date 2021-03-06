
using namespace System.Management.Automation
using namespace System.Management.Automation.Language

Register-ArgumentCompleter -Native -CommandName 'ff' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'ff'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-')) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'ff' {
            [CompletionResult]::new('-D', 'D', [CompletionResultType]::ParameterName, 'Add a starting point.')
            [CompletionResult]::new('--include', 'include', [CompletionResultType]::ParameterName, 'Add a starting point.')
            [CompletionResult]::new('-E', 'E', [CompletionResultType]::ParameterName, 'Remove a branch in directory trees.')
            [CompletionResult]::new('--exclude', 'exclude', [CompletionResultType]::ParameterName, 'Remove a branch in directory trees.')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'Filter by type: d,directory, f,file, l,symlink, x,executable')
            [CompletionResult]::new('--type', 'type', [CompletionResultType]::ParameterName, 'Filter by type: d,directory, f,file, l,symlink, x,executable')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'Set maximum search depth. [default: unlimited]')
            [CompletionResult]::new('--max-depth', 'max-depth', [CompletionResultType]::ParameterName, 'Set maximum search depth. [default: unlimited]')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'When to use colors: auto, never, always [default: auto]')
            [CompletionResult]::new('--color', 'color', [CompletionResultType]::ParameterName, 'When to use colors: auto, never, always [default: auto]')
            [CompletionResult]::new('-j', 'j', [CompletionResultType]::ParameterName, 'Set number of threads for searching and command execution.')
            [CompletionResult]::new('--threads', 'threads', [CompletionResultType]::ParameterName, 'Set number of threads for searching and command execution.')
            [CompletionResult]::new('--max-buffer-time', 'max-buffer-time', [CompletionResultType]::ParameterName, 'Set time (in milliseconds) for buffering and sorting.')
            [CompletionResult]::new('-x', 'x', [CompletionResultType]::ParameterName, 'Execute the given command for each search result.')
            [CompletionResult]::new('--exec', 'exec', [CompletionResultType]::ParameterName, 'Execute the given command for each search result.')
            [CompletionResult]::new('-g', 'g', [CompletionResultType]::ParameterName, 'Search with a glob pattern. [default]')
            [CompletionResult]::new('--glob', 'glob', [CompletionResultType]::ParameterName, 'Search with a glob pattern. [default]')
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'Search with a regex pattern.')
            [CompletionResult]::new('--regex', 'regex', [CompletionResultType]::ParameterName, 'Search with a regex pattern.')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, 'Match UTF-8 scalar values instead of bytes.')
            [CompletionResult]::new('--unicode', 'unicode', [CompletionResultType]::ParameterName, 'Match UTF-8 scalar values instead of bytes.')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'Case-insensitive search.')
            [CompletionResult]::new('--ignore-case', 'ignore-case', [CompletionResultType]::ParameterName, 'Case-insensitive search.')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'Case-sensitive search. [default]')
            [CompletionResult]::new('--case-sensitive', 'case-sensitive', [CompletionResultType]::ParameterName, 'Case-sensitive search. [default]')
            [CompletionResult]::new('-p', 'p', [CompletionResultType]::ParameterName, 'Match the full path of a file.')
            [CompletionResult]::new('--full-path', 'full-path', [CompletionResultType]::ParameterName, 'Match the full path of a file.')
            [CompletionResult]::new('-L', 'L', [CompletionResultType]::ParameterName, 'Follow symbolic links.')
            [CompletionResult]::new('--follow', 'follow', [CompletionResultType]::ParameterName, 'Follow symbolic links.')
            [CompletionResult]::new('-M', 'M', [CompletionResultType]::ParameterName, 'Do not descend into directories on another file system.')
            [CompletionResult]::new('--mount', 'mount', [CompletionResultType]::ParameterName, 'Do not descend into directories on another file system.')
            [CompletionResult]::new('-0', '0', [CompletionResultType]::ParameterName, 'Terminate each search result with a NUL character.')
            [CompletionResult]::new('--print0', 'print0', [CompletionResultType]::ParameterName, 'Terminate each search result with a NUL character.')
            [CompletionResult]::new('-A', 'A', [CompletionResultType]::ParameterName, 'Output absolute paths instead of relative paths.')
            [CompletionResult]::new('--absolute-path', 'absolute-path', [CompletionResultType]::ParameterName, 'Output absolute paths instead of relative paths.')
            [CompletionResult]::new('-S', 'S', [CompletionResultType]::ParameterName, 'Sort the results by pathname.')
            [CompletionResult]::new('--sort-path', 'sort-path', [CompletionResultType]::ParameterName, 'Sort the results by pathname.')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'Include dot-files in the search.')
            [CompletionResult]::new('--all', 'all', [CompletionResultType]::ParameterName, 'Include dot-files in the search.')
            [CompletionResult]::new('-I', 'I', [CompletionResultType]::ParameterName, 'Do not respect .(git)ignore files.')
            [CompletionResult]::new('--no-ignore', 'no-ignore', [CompletionResultType]::ParameterName, 'Do not respect .(git)ignore files.')
            [CompletionResult]::new('-m', 'm', [CompletionResultType]::ParameterName, 'All executed commands receive the same input.')
            [CompletionResult]::new('--multiplex', 'multiplex', [CompletionResultType]::ParameterName, 'All executed commands receive the same input.')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'Warn about I/O errors, permission, symlink loops, etc.')
            [CompletionResult]::new('--verbose', 'verbose', [CompletionResultType]::ParameterName, 'Warn about I/O errors, permission, symlink loops, etc.')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help information.
Use --help to show details and full list of options.')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help information.
Use --help to show details and full list of options.')
            [CompletionResult]::new('-V', 'V', [CompletionResultType]::ParameterName, 'Print version information.')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version information.')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}
