# zmap
# Autogenerated from man page /usr/share/man/man1/zmap.1.gz
complete -c zmap -s p -l target-port --description 'TCP or UDP port number to scan (for SYN scans and basic UDP scans) .'
complete -c zmap -s o -l output-file --description 'When using an output module that uses a file, write results to this file.'
complete -c zmap -s b -l blacklist-file --description 'File of subnets to exclude, in CIDR notation, one-per line.'
complete -c zmap -s n -l max-targets --description 'Cap the number of targets to probe.  This can either be a number (e. g.'
complete -c zmap -s N -l max-results --description 'Exit after receiving this many results .'
complete -c zmap -s t -l max-runtime --description 'Cap the length of time for sending packets .'
complete -c zmap -s r -l rate --description 'Set the send rate in packets/sec .'
complete -c zmap -s B -l bandwidth --description 'Set the send rate in bits/second (supports suffixes G, M, and K (e. g.'
complete -c zmap -s c -l cooldown-time --description 'How long to continue receiving after sending has completed (default=8) .'
complete -c zmap -s e -l seed --description 'Seed used to select address permutation.'
complete -c zmap -l shards --description 'Split the scan up into N shards/partitions among different instances of zmap …'
complete -c zmap -l shard --description 'Set which shard to scan (default=0).'
complete -c zmap -s T -l sender-threads --description 'Threads used to send packets.'
complete -c zmap -s P -l probes --description 'Number of probes to send to each IP (default=1) .'
complete -c zmap -s d -l dryrun --description 'Print out each packet to stdout instead of sending it (useful for debugging) .'
complete -c zmap -s s -l source-port --description 'Source port(s) to send packets from .'
complete -c zmap -s S -l source-ip --description 'Source address(es) to send packets from.  Either single IP or range (e. g.'
complete -c zmap -s G -l gateway-mac --description 'Gateway MAC address to send packets to (in case auto-detection does not work)…'
complete -c zmap -s i -l interface --description 'Network interface to use .'
complete -c zmap -l list-probe-modules --description 'List available probe modules (e. g.  tcp_synscan) .'
complete -c zmap -s M -l probe-module --description 'Select probe module (default=tcp_synscan) .'
complete -c zmap -l probe-args --description 'Arguments to pass to probe module .'
complete -c zmap -l list-output-fields --description 'List the fields the selected probe module can send to the output module .'
complete -c zmap -l list-output-modules --description 'List available output modules (e. g.  tcp_synscan) .'
complete -c zmap -s O -l output-module --description 'Select output module (default=csv) .'
complete -c zmap -l output-args --description 'Arguments to pass to output module .'
complete -c zmap -s f -l output-fields --description 'Comma-separated list of fields to output .'
complete -c zmap -l output-filter --description 'Specify an output filter over the fields defined by the probe module.'
complete -c zmap -s C -l config --description 'Read a configuration file, which can specify any other options.'
complete -c zmap -s q -l quiet --description 'Do not print status updates once per second .'
complete -c zmap -s g -l summary --description 'Print configuration and summary of results at the end of the scan .'
complete -c zmap -s v -l verbosity --description 'Level of log detail (0-5, default=3) .'
complete -c zmap -s h -l help --description 'Print help and exit .'
complete -c zmap -s V -l version --description 'Print version and exit .'
