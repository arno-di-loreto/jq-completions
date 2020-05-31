function _jq {
    local line

    _arguments -C \
        {-f,--from-file}"[read filter from the a rather than from a command line]:file:_files" \
        {-Ldirectory,-L}"[Prepend directory to the search list for modules]":dir:_dirs \
        "--arg[set variable \$a to value <v>]": \
        "--argjson[set variable \$a to JSON value <v>]" \
        "--slurpfile[set variable \$a to an array of JSON texts read from <f>]" \
        "--args[Remaining arguments are positional string arguments.]" \
        "--jsonargs[Remaining arguments are positional JSON text arguments]" \
        "--version[Output the jq version and exit with zero.]" \
        "--seq[Use the application/json-seq MIME type scheme for separating JSON texts in jq's input and output.]" \
        "--stream[Parse  the  input  in  streaming fashion, outputing arrays of path and leaf values (scalars and empty arrays or empty objects).]" \
        {--slurp,-s}"[Read the entire input stream into a large array instead of running the filter for each JSON object in the input.]" \
        {--raw-input,-R}"[Each line of text is passed to the filter as a string.]" \
        {--null-input,-n}"[Don't read any input at all.]" \
        {--compact-output,-c}"[Output each JSON  object on a single line.]" \
        "--tab[Use a tab for each indentation level instead of two spaces.]" \
        "--indent[Use the given number of spaces (no more than 8) for indentation.]:int:" \
        {--color-output,-C}"[colorize JSON.]" \
        {--monochrome-output,-M}"[don't colorize JSON.]" \
        {--ascii-output,-a}"[force pure ASCII output.]" \
        "--unbuffered[Flush the output after each JSON object is printed.]" \
        {--sort-keys,-S}"[Output the fields of each object with the keys in sorted order.]" \
        {--raw-output,-r}"[output raw strings, not JSON texts.]" \
        {--join-output,-j}"[Like -r but jq won't print a newline after each output.]" \
        {-e,--exit-status}"[Set exit status based on output value.]" \
        "*:file:_files"
}

