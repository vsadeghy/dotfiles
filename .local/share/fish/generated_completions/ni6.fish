# ni6
# Autogenerated from man page /usr/share/man/man1/ni6.1.gz
complete -c ni6 -s i -l interface --description 'This option specifies the network interface that the tool will use.'
complete -c ni6 -s s -l src-address --description 'This option specifies the IPv6 source address (or IPv6 prefix) to be used for…'
complete -c ni6 -s d -l dst-address --description 'This option specifies the IPv6 Destination Address of the victim.'
complete -c ni6 -l hop-limit -s A --description 'This option specifies the Hop Limit to be used for the IPv6 packets.'
complete -c ni6 -s y -l frag-hdr --description 'This option specifies that the resulting packet must be fragmented.'
complete -c ni6 -s u -l dst-opt-hdr --description 'This option specifies that a Destination Options header is to be included in …'
complete -c ni6 -s U -l dst-opt-u-hdr --description 'This option specifies a Destination Options header to be included in the "unf…'
complete -c ni6 -s H -l hbh-opt-hdr --description 'This option specifies that a Hop-by-Hop Options header is to be included in t…'
complete -c ni6 -s S -l src-link-address --description 'This option specifies the link-layer Source Address of the TCP segments.'
complete -c ni6 -s D -l dst-link-address --description 'This option specifies the link-layer Destination Address of the ICMPv6 NI pac…'
complete -c ni6 -l payload-size -s P --description 'This options specifies the size (in bytes) of the ICMPv6 NI payload.'
complete -c ni6 -l subject-ipv6 -s 6 --description 'This option specifies an IPv6 Address to be used as the Subject of ICMPv6 Nod…'
complete -c ni6 -l subject-ipv4 -s 4 --description 'This option specifies an IPv4 Address to be used as the Subject of ICMPv6 Nod…'
complete -c ni6 -l subject-name -s n --description 'This option specifies a Name to be used as the Subject of ICMPv6 Node Informa…'
complete -c ni6 -l subject-fname -s N --description 'This option instructs the ni6 tool to set the Subject of ICMPv6 NI Query mess…'
complete -c ni6 -l subject-ename -s x --description 'This option instructs the ni6 tool to set the Subject of an ICMPv6 NI Query m…'
complete -c ni6 -l subject-nloop -s O --description 'This option specifies that the Data field should be set to a Name that contai…'
complete -c ni6 -l sname-slabel -s e --description 'This option specifies that the specified Subject Name is a single-label name,…'
complete -c ni6 -l max-label-size -s Z --description 'This option specifies the maximum Name label size.  It defaults to 63.'
complete -c ni6 -l code -s C --description 'This option specified the ICMPv6 code.'
complete -c ni6 -l qtype -s q --description 'This option specifies the Qtype value of ICMPv6 NI messages.'
complete -c ni6 -l flags -s X --description 'This option specified the "Flags" field of the ICMPv6 NI messages.'
complete -c ni6 -l data-ipv6 -s w --description 'This option specifies an IPv6 Address to be used as the Data of ICMPv6 Node I…'
complete -c ni6 -l data-ipv4 -s W --description 'This option specifies an IPv4 Address to be used as the Data of ICMPv6 Node I…'
complete -c ni6 -l data-name -s a --description 'This option specifies a Name to be used as the Data of ICMPv6 Node Informatio…'
complete -c ni6 -l data-fname --description 'This option instructs the ni6 tool to set the Data of the ICMPv6 NI Reply mes…'
complete -c ni6 -l data-ename -s Q --description 'This option instructs the ni6 tool to set the Data of ICMPv6 NI Reply message…'
complete -c ni6 -l data-nloop --description 'This option specifies that the Data field should be set to a Name that contai…'
complete -c ni6 -l dname-slabel -s E --description 'This option specifies that the specified Data Name is a single-label name, an…'
complete -c ni6 -s j -l block-src --description 'This option sets a block filter for the incoming packets, based on their IPv6…'
complete -c ni6 -s k -l block-dst --description 'This option sets a block filter for the incoming Neighbor Solicitation messag…'
complete -c ni6 -s J -l block-link-src --description 'This option sets a block filter for the incoming packets, based on their link…'
complete -c ni6 -s K -l block-link-dst --description 'This option sets a block filter for the incoming packets, based on their link…'
complete -c ni6 -s b -l accept-src --description 'This option sets an accept filter for the incoming packets, based on their IP…'
complete -c ni6 -s g -l accept-dst --description 'This option sets a accept filter for the incoming packets, based on their IPv…'
complete -c ni6 -s B -l accept-link-src --description 'This option sets an accept filter for the incoming Neighbor Solicitation mess…'
complete -c ni6 -s G -l accept-link-dst --description 'This option sets an accept filter for the incoming packets, based on their li…'
complete -c ni6 -l forge-src-addr -s r --description 'This option instructs the ni6 tool to forge the IPv6 Source Address of ICMPv6…'
complete -c ni6 -l forge-link-src-addr -s R --description 'This option instructs the ni6 tool to forge the link-layer Source Address of …'
complete -c ni6 -l loop -s l --description 'This option instructs the tcp6 tool to send periodic TCP segments to the vict…'
complete -c ni6 -l sleep -s z --description 'This option specifies the amount of time to pause between sending ICMPv6 Node…'
complete -c ni6 -l listen -s L --description 'This instructs the ni6 tool to operate in listening mode (possibly after atta…'
complete -c ni6 -l verbose -s v --description 'This option instructs the ni6 tool to be verbose.'
complete -c ni6 -l help -s h --description '.'
