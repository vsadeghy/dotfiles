# pkgconf
# Autogenerated from man page /usr/share/man/man1/pkgconf.1.gz
complete -c pkgconf -l version --description 'Display the supported pkg-config version and exit.'
complete -c pkgconf -l atleast-pkgconfig-version --description 'Exit with error if we do not support the requested pkg-config version.'
complete -c pkgconf -l errors-to-stdout --description 'Print all errors on the main output stream instead of the error output stream.'
complete -c pkgconf -l silence-errors --description 'Do not display any errors at all.'
complete -c pkgconf -l list-all --description 'Walk all directories listed in the PKG_CONFIG_PATH environmental variable and…'
complete -c pkgconf -l simulate --description 'Simulates resolving a dependency graph based on the requested modules on the …'
complete -c pkgconf -l no-cache --description 'Skip caching packages when they are loaded into the internal resolver.'
complete -c pkgconf -l ignore-conflicts --description 'Ignore Conflicts rules in modules.'
complete -c pkgconf -l env-only --description 'Learn about pkgconf\'s configuration strictly from environmental variables.'
complete -c pkgconf -l maximum-traverse-depth --description 'Impose a limit on the allowed depth in the dependency graph.'
complete -c pkgconf -l static --description 'Compute a deeper dependency graph and use compiler/linker flags intended for …'
complete -c pkgconf -l shared --description 'Compute a simple dependency graph that is only suitable for shared linking.'
complete -c pkgconf -l pure --description 'Treats the computed dependency graph as if it were pure.'
complete -c pkgconf -l no-provides --description 'Ignore Provides rules in modules when resolving dependencies.'
complete -c pkgconf -l with-path --description 'Adds a new module search path to pkgconf\'s dependency resolver.'
complete -c pkgconf -l define-prefix --description 'Attempts to determine the prefix variable to use for CFLAGS and LIBS entry re…'
complete -c pkgconf -l dont-define-prefix --description 'Disables the define-prefix feature.'
complete -c pkgconf -l prefix-variable --description 'Sets the prefix variable used by the define-prefix feature.'
complete -c pkgconf -l relocate --description 'Relocates a path using the pkgconf_path_relocate API.'
complete -c pkgconf -l dont-relocate-paths --description 'Disables the path relocation feature.'
complete -c pkgconf -l atleast-version --description 'Exit with error if a module\'s version is less than the specified version.'
complete -c pkgconf -l exact-version --description 'Exit with error if a module\'s version is not exactly the specified version.'
complete -c pkgconf -l max-version --description 'Exit with error if a module\'s version is greater than the specified version.'
complete -c pkgconf -l exists --description 'Exit with a non-zero result if the dependency resolver was unable to find all…'
complete -c pkgconf -l uninstalled --description 'Exit with a non-zero result if the dependency resolver uses an uninstalled mo…'
complete -c pkgconf -l no-uninstalled --description 'Forbids the dependency resolver from considering \'uninstalled\' modules as par…'
complete -c pkgconf -l cflags --description 'Display either all CFLAGS, only I CFLAGS or only CFLAGS that are not I.'
complete -c pkgconf -l libs --description 'Display either all linker flags, only L linker flags, only l linker flags or …'
complete -c pkgconf -l keep-system-cflags --description 'Keep CFLAGS or linker flag fragments that would be filtered due to being incl…'
complete -c pkgconf -l define-variable --description 'Define VARNAME as VALUE.'
complete -c pkgconf -l print-variables --description 'Print all seen variables for a module to the output channel.'
complete -c pkgconf -l print-provides --description 'Print all relevant Provides entries for a module to the output channel.'
complete -c pkgconf -l variable --description 'Print the value of VARNAME.'
complete -c pkgconf -l print-requires --description 'Print the modules included in either the Requires field or the Requires.'
complete -c pkgconf -l digraph --description 'Dump the dependency resolver\'s solution as a graphviz dot file.'
complete -c pkgconf -l path --description 'Display the filenames of the .'
complete -c pkgconf -l env --description 'Print the requested values as variable declarations in a similar format as th…'
complete -c pkgconf -l fragment-filter --description 'Filter the fragment lists for the specified types.'
complete -c pkgconf -l modversion --description 'Print the version of the queried module.'
