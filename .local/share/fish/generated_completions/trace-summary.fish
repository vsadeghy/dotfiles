# trace-summary
# Autogenerated from man page /usr/share/man/man1/trace-summary.1.gz
complete -c trace-summary -l version --description 'show program\'s version number and exit.'
complete -c trace-summary -s h -l help --description 'show this help message and exit.'
complete -c trace-summary -s b -l bytes --description 'count fractions in terms of bytes rather than packets/connections.'
complete -c trace-summary -s c -l conn-summaries --description 'input file contains Zeek connection summaries.'
complete -c trace-summary -l conn-version --description 'when used with -c, specify \'1\' for use with Bro version 1.'
complete -c trace-summary -s C -l chema --description 'for packets: include only TCP, ignore when seq==0.'
complete -c trace-summary -s e -l external --description 'ignore strictly internal traffic.'
complete -c trace-summary -s E -l exclude-nets --description 'excludes CIDRs in file from analysis.'
complete -c trace-summary -s i -l intervals --description 'create summaries for time intervals of given length (seconds, or use suffix o…'
complete -c trace-summary -s l -l local-nets --description 'differentiate in/out based on CIDRs in file.'
complete -c trace-summary -s n -l topn --description 'show top <n>.'
complete -c trace-summary -s p -l ports --description 'include only ports listed in file.'
complete -c trace-summary -s P -l write-ports --description 'write top total/incoming/outgoing ports into file.'
complete -c trace-summary -s r -l resolve-host-names --description 'resolve host names.'
complete -c trace-summary -s R -l R --description 'write output suitable for R into files <tag. *>.'
complete -c trace-summary -s s -l sample-factor --description 'sample factor of input.'
complete -c trace-summary -s S -l do-sample --description 'sample input with probability (0. 0 < prob < 1. 0).'
complete -c trace-summary -s m -l save-mem --description 'do not make memory-expensive statistics.'
complete -c trace-summary -s t -l tcp --description 'include only TCP.'
complete -c trace-summary -s u -l udp --description 'include only UDP.'
complete -c trace-summary -s U -l min-time --description 'minimum time in ISO format (e. g.  2005-12-31-23-59-00).'
complete -c trace-summary -s v -l verbose --description 'show top-n for every interval.'
complete -c trace-summary -s V -l max-time --description 'maximum time in ISO format AUTHOR trace-summary was written by The Zeek Proje…'
