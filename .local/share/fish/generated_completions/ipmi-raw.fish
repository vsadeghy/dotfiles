# ipmi-raw
# Autogenerated from man page /usr/share/man/man8/ipmi-raw.8.gz
complete -c ipmi-raw -s D -l driver-type --description 'Specify the driver type to use instead of doing an auto selection.'
complete -c ipmi-raw -l disable-auto-probe --description 'Do not probe in-band IPMI devices for default settings.'
complete -c ipmi-raw -l driver-address --description 'Specify the in-band driver address to be used instead of the probed value.'
complete -c ipmi-raw -l driver-device --description 'Specify the in-band driver device path to be used instead of the probed path.'
complete -c ipmi-raw -l register-spacing --description 'Specify the in-band driver register spacing instead of the probed value.'
complete -c ipmi-raw -l target-channel-number --description 'Specify the in-band driver target channel number to send IPMI requests to.'
complete -c ipmi-raw -l target-slave-address --description 'Specify the in-band driver target slave number to send IPMI requests to.'
complete -c ipmi-raw -s h -l hostname --description 'Specify the remote host(s) to communicate with.'
complete -c ipmi-raw -s u -l username --description 'Specify the username to use when authenticating with the remote host.'
complete -c ipmi-raw -s p -l password --description 'Specify the password to use when authenticationg with the remote host.'
complete -c ipmi-raw -s P -l password-prompt --description 'Prompt for password to avoid possibility of listing it in process lists.'
complete -c ipmi-raw -s k -l k-g --description 'Specify the K_g BMC key to use when authenticating with the remote host for I…'
complete -c ipmi-raw -s K -l k-g-prompt --description 'Prompt for k-g to avoid possibility of listing it in process lists.'
complete -c ipmi-raw -l session-timeout --description 'Specify the session timeout in milliseconds.'
complete -c ipmi-raw -l retransmission-timeout --description 'Specify the packet retransmission timeout in milliseconds.'
complete -c ipmi-raw -s a -l authentication-type --description 'Specify the IPMI 1. 5 authentication type to use.'
complete -c ipmi-raw -s I -l cipher-suite-id --description 'Specify the IPMI 2. 0 cipher suite ID to use.'
complete -c ipmi-raw -s l -l privilege-level --description 'Specify the privilege level to be used.'
complete -c ipmi-raw -l config-file --description 'Specify an alternate configuration file.'
complete -c ipmi-raw -s W -l workaround-flags --description 'Specify workarounds to vendor compliance issues.'
complete -c ipmi-raw -l debug --description 'Turn on debugging.'
complete -c ipmi-raw -s '?' -l help --description 'Output a help list and exit.'
complete -c ipmi-raw -l usage --description 'Output a usage message and exit.'
complete -c ipmi-raw -s V -l version --description 'Output the program version and exit.'
complete -c ipmi-raw -l file --description 'Specify a file to read command requests from.'
complete -c ipmi-raw -l no-session --description 'If performing out of band communication, do not establish an IPMI session and…'
complete -c ipmi-raw -s B -l buffer-output --description 'Buffer hostranged output.'
complete -c ipmi-raw -s C -l consolidate-output --description 'Consolidate hostranged output.'
complete -c ipmi-raw -s F -l fanout --description 'Specify multiple host fanout.'
complete -c ipmi-raw -s E -l eliminate --description 'Eliminate hosts determined as undetected by ipmidetect.'
complete -c ipmi-raw -l always-prefix --description 'Always prefix output, even if only one host is specified or communicating in-…'
