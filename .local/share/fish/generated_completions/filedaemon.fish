# filedaemon
# Autogenerated from man page /usr/share/man/man1/filedaemon.1.gz
complete -c filedaemon -l in --description '\\s-1INPUT_GLOB\\s0 is a file glob pattern, which must be  escaped or quoted to…'
complete -c filedaemon -l out --description '\\s-1OUTPUT_DIR\\s0 is a directory in which to place output files.'
complete -c filedaemon -l nextdir --description 'When reading from files, if this option is present, input files will be moved…'
complete -c filedaemon -l faildir --description 'When reading from files, if this option is present, input files will be moved…'
complete -c filedaemon -l extension --description 'Replace the input file\'s extension with \\s-1OUTPUT_EXTENSION\\s0.'
complete -c filedaemon -l poll --description '\\s-1POLLING_DELAY\\s0 is the polling delay in seconds; how long filedaemon wil…'
complete -c filedaemon -l lock --description 'Use lockfiles for concurrent file access protection.'
complete -c filedaemon -l pidfile --description 'Write the process identifier of the filedaemon process to \\s-1PIDFILE\\s0.'
complete -c filedaemon -l no-daemon --description 'Do not actually daemonize.   Mainly useful for testing/debugging.'
complete -c filedaemon -l log --description 'Specifies destination for log messages.'
complete -c filedaemon -l loglevel --description 'Specify minimum level for logged messages.'
complete -c filedaemon -l verbose --description 'Equivalent to --loglevel debug.'
