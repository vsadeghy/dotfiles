# proxenet
# Autogenerated from man page /usr/share/man/man1/proxenet.1.gz
complete -c proxenet -s h -l help --description 'Show help.'
complete -c proxenet -s V -l version --description 'Show version.'
complete -c proxenet -s d -l daemon --description 'Start as daemon.'
complete -c proxenet -s v -l verbose --description 'Increase verbosity (default: 0).'
complete -c proxenet -s n -l no-color --description 'Disable colored output.'
complete -c proxenet -s l -l logfile --description 'Log actions in file (default stdout).'
complete -c proxenet -s x -l plugins --description 'Specify plugins directory (default: \'~/. proxenet/plugins\') INTERCEPT OPTIONS.'
complete -c proxenet -s I -l intercept-only --description 'Intercept only hostnames matching pattern (default mode).'
complete -c proxenet -s E -l intercept-except --description 'Intercept everything except hostnames matching pattern.'
complete -c proxenet -s m -l pattern --description 'Specify a hostname matching pattern (default: \'*\').'
complete -c proxenet -s N -l no-ssl-intercept --description 'Do not intercept any SSL traffic.'
complete -c proxenet -s i -l ie-compatibility --description 'Toggle old IE compatibility mode (default: on) NETWORK OPTIONS.'
complete -c proxenet -s 4 --description 'IPv4 only (default).'
complete -c proxenet -s 6 --description 'IPv6 only (default: IPv4).'
complete -c proxenet -s t -l nb-threads --description 'Number of threads (default: 20).'
complete -c proxenet -s b -l bind --description 'Bind local address (default: \'localhost\').'
complete -c proxenet -s p -l port --description 'Bind local port file (default: \'8008\').'
complete -c proxenet -s X -l proxy-host --description 'Forward to proxy.'
complete -c proxenet -s P -l proxy-port --description 'Specify port for proxy (default: \'8080\').'
complete -c proxenet -s D -l use-socks --description 'The proxy to connect to is supports SOCKS4 (default: \'HTTP\') SSL OPTIONS.'
complete -c proxenet -s c -l certfile --description 'Specify SSL cert to use (default: \'~/. proxenet/keys/proxenet. crt\').'
complete -c proxenet -s k -l keyfile --description 'Specify SSL private key file to use (default: \'~/. proxenet/keys/proxenet.'
complete -c proxenet -l keyfile-passphrase --description 'Specify the password for this SSL key (default: \'\').'
complete -c proxenet -l sslcli-certfile --description 'Path to the SSL client certificate to use.'
complete -c proxenet -l sslcli-domain --description 'Domain to use for invoking the client certificate (default: \'*\').'
complete -c proxenet -l sslcli-keyfile --description 'Path to the SSL client certificate private key.'
complete -c proxenet -l sslcli-keyfile-passphrase --description 'Specify the password for the SSL client certificate private key (default: \'\')…'
