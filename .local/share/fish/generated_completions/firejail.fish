# firejail
# Autogenerated from man page /usr/share/man/man1/firejail.1.gz
complete -c firejail -l allow-debuggers --description 'Allow tools such as strace and gdb inside the sandbox by whitelisting system …'
complete -c firejail -l allusers --description 'All directories under /home are visible inside the sandbox.'
complete -c firejail -l apparmor --description 'Enable AppArmor confinement.'
complete -c firejail -l 'apparmor.print' --description 'Print the AppArmor confinement status for the sandbox identified by name or b…'
complete -c firejail -l appimage --description 'Sandbox an AppImage (https://appimage. org/) application.'
complete -c firejail -l audit --description 'Audit the sandbox, see AUDIT section for more details.'
complete -c firejail -l bandwidth --description 'Set bandwidth limits for the sandbox identified by name or PID, see TRAFFIC S…'
complete -c firejail -l bind --description 'Mount-bind filename1 on top of filename2.'
complete -c firejail -l blacklist --description 'Blacklist directory or file.'
complete -c firejail -l build --description 'The command builds a whitelisted profile.'
complete -c firejail -s c --description 'Login shell compatibility option.'
complete -c firejail -l caps --description 'Linux capabilities is a kernel feature designed to split up the root privileg…'
complete -c firejail -l 'caps.drop' --description 'Drop all capabilities for the processes running in the sandbox.'
complete -c firejail -l 'caps.keep' --description 'Define a custom whitelist Linux capabilities filter. br  . br Example: .'
complete -c firejail -l 'caps.print' --description 'Print the caps filter for the sandbox identified by name or by PID. br  .'
complete -c firejail -l cgroup --description 'Place the sandbox in the specified control group.'
complete -c firejail -l chroot --description 'Chroot the sandbox into a root filesystem.'
complete -c firejail -l cpu --description 'Set CPU affinity. br  . br Example: . br $ firejail --cpu=0,1 handbrake.'
complete -c firejail -l 'cpu.print' --description 'Print the CPU cores in use by the sandbox identified by name or by PID. br  .'
complete -c firejail -l debug --description 'Print debug messages. br  . br Example: . br $ firejail --debug firefox.'
complete -c firejail -l debug-blacklists --description 'Debug blacklisting. br  . br Example: .'
complete -c firejail -l debug-caps --description 'Print all recognized capabilities in the current Firejail software build and …'
complete -c firejail -l debug-errnos --description 'Print all recognized error numbers in the current Firejail software build and…'
complete -c firejail -l debug-private-lib --description 'Debug messages for --private-lib option.'
complete -c firejail -l debug-protocols --description 'Print all recognized protocols in the current Firejail software build and exi…'
complete -c firejail -l debug-syscalls --description 'Print all recognized system calls in the current Firejail software build and …'
complete -c firejail -l debug-whitelists --description 'Debug whitelisting. br  . br Example: .'
complete -c firejail -l defaultgw --description 'Use this address as default gateway in the new network namespace. br  .'
complete -c firejail -l disable-mnt --description 'Blacklist /mnt, /media, /run/mount and /run/media access. br  . br Example: .'
complete -c firejail -l deterministic-exit-code --description 'Always exit firejail with the first child\'s exit status.'
complete -c firejail -l dns --description 'Set a DNS server for the sandbox.  Up to three DNS servers can be defined.'
complete -c firejail -l 'dns.print' --description 'Print DNS configuration for a sandbox identified by name or by PID. br  .'
complete -c firejail -l env --description 'Set environment variable in the new sandbox. br  . br Example: .'
complete -c firejail -l 'fs.print' --description 'Print the filesystem log for the sandbox identified by name or by PID. br  .'
complete -c firejail -l get --description 'Get a file from sandbox container, see FILE TRANSFER section for more details.'
complete -c firejail -s '?' -l help --description 'Print options end exit.'
complete -c firejail -l hostname --description 'Set sandbox hostname. br  . br Example: .'
complete -c firejail -l hosts-file --description 'Use file as /etc/hosts. br  . br Example: .'
complete -c firejail -l ignore --description 'Ignore command in profile file. br  . br Example: .'
complete -c firejail -l interface --description 'Move interface in a new network namespace.'
complete -c firejail -l ip --description 'Assign IP addresses to the last network interface defined by a --net option.'
complete -c firejail -l ip6 --description 'Assign IPv6 addresses to the last network interface defined by a --net option.'
complete -c firejail -l iprange --description 'Assign an IP address in the provided range to the last network interface defi…'
complete -c firejail -l ipc-namespace --description 'Enable  a new IPC namespace if the sandbox was started as a regular user.'
complete -c firejail -l join --description 'Join the sandbox identified by name or by PID.'
complete -c firejail -l join-filesystem --description 'Join the mount namespace of the sandbox identified by name or PID.'
complete -c firejail -l join-network --description 'Join the network namespace of the sandbox identified by name.'
complete -c firejail -l join-or-start --description 'Join the sandbox identified by name or start a new one.'
complete -c firejail -l keep-dev-shm --description '/dev/shm directory is untouched (even with --private-dev) . br  .'
complete -c firejail -l keep-var-tmp --description '/var/tmp directory is untouched. br  . br Example: .'
complete -c firejail -l list --description 'List all sandboxes, see MONITORING section for more details. br  .'
complete -c firejail -l ls --description 'List files in sandbox container, see FILE TRANSFER section for more details.'
complete -c firejail -l mac --description 'Assign MAC addresses to the last network interface defined by a --net option.'
complete -c firejail -l machine-id --description 'Spoof id number in /etc/machine-id file - a new random id is generated inside…'
complete -c firejail -l memory-deny-write-execute --description 'Install a seccomp filter to block attempts to create memory mappings that are…'
complete -c firejail -l mtu --description 'Assign a MTU value to the last network interface defined by a --net option.'
complete -c firejail -l name --description 'Set sandbox name.'
complete -c firejail -l net --description 'Enable a new network namespace and connect it to this bridge interface.'
complete -c firejail -l 'net.print' --description 'If a new network namespace is enabled, print network interface configuration …'
complete -c firejail -l netfilter --description 'Enable a default firewall if a new network namespace is created inside the sa…'
complete -c firejail -l 'netfilter.print' --description 'Print the firewall installed in the sandbox specified by name or PID.'
complete -c firejail -l netfilter6 --description 'Enable the IPv6 firewall specified by filename if a new network namespace is …'
complete -c firejail -l 'netfilter6.print' --description 'Print the IPv6 firewall installed in the sandbox specified by name or PID.'
complete -c firejail -l netmask --description 'Use this option when you want to assign an IP address in a new namespace and …'
complete -c firejail -l netns --description 'Run the program in a named, persistent network namespace.'
complete -c firejail -l netstats --description 'Monitor network namespace statistics, see MONITORING section for more details.'
complete -c firejail -l nice --description 'Set nice value for all processes running inside the sandbox.'
complete -c firejail -l no3d --description 'Disable 3D hardware acceleration. br  . br Example: .'
complete -c firejail -l noautopulse --description 'Disable automatic ~/.'
complete -c firejail -l noblacklist --description 'Disable blacklist for this directory or file. br  . br Example: .'
complete -c firejail -l nodbus --description 'Disable D-Bus access (both system and session buses).'
complete -c firejail -l nodvd --description 'Disable DVD and audio CD devices. br  . br Example: . br $ firejail --nodvd.'
complete -c firejail -l noexec --description 'Remount directory or file noexec, nodev and nosuid.'
complete -c firejail -l nogroups --description 'Disable supplementary groups.'
complete -c firejail -l nonewprivs --description 'Sets the NO_NEW_PRIVS prctl.'
complete -c firejail -l noprofile --description 'Do not use a security profile. br  . br Example: . br $ firejail .'
complete -c firejail -l noroot --description 'Install a user namespace with a single user - the current user.'
complete -c firejail -l nosound --description 'Disable sound system. br  . br Example: . br $ firejail --nosound firefox.'
complete -c firejail -l notv --description 'Disable DVB (Digital Video Broadcasting) TV devices. br  . br Example: .'
complete -c firejail -l nou2f --description 'Disable U2F devices. br  . br Example: . br $ firejail --nou2f.'
complete -c firejail -l novideo --description 'Disable video devices. br.'
complete -c firejail -l nowhitelist --description 'Disable whitelist for this directory or file.'
complete -c firejail -l output --description 'stdout logging and log rotation.'
complete -c firejail -l output-stderr --description 'Similar to --output, but stderr is also stored.'
complete -c firejail -l overlay --description 'Mount a filesystem overlay on top of the current filesystem.'
complete -c firejail -l overlay-clean --description 'Clean all overlays stored in $HOME/. firejail directory. br  . br Example: .'
complete -c firejail -l overlay-named --description 'Mount a filesystem overlay on top of the current filesystem.'
complete -c firejail -l overlay-tmpfs --description 'Mount a filesystem overlay on top of the current filesystem.'
complete -c firejail -l private --description 'Mount new /root and /home/user directories in temporary filesystems.'
complete -c firejail -l private-bin --description 'Build a new /bin in a temporary filesystem, and copy the programs in the list.'
complete -c firejail -l private-cache --description 'Mount an empty temporary filesystem on top of the .'
complete -c firejail -l private-cwd --description 'Set working directory inside jail to the home directory, and failing that, th…'
complete -c firejail -l private-dev --description 'Create a new /dev directory.'
complete -c firejail -l private-etc --description 'Build a new /etc in a temporary filesystem, and copy the files and directorie…'
complete -c firejail -l private-home --description 'Build a new user home in a temporary filesystem, and copy the files and direc…'
complete -c firejail -l private-lib --description 'This feature is currently under heavy development.'
complete -c firejail -l private-opt --description 'Build a new /opt in a temporary filesystem, and copy the files and directorie…'
complete -c firejail -l private-srv --description 'Build a new /srv in a temporary filesystem, and copy the files and directorie…'
complete -c firejail -l private-tmp --description 'Mount an empty temporary filesystem on top of /tmp directory whitelisting X11…'
complete -c firejail -l profile --description 'Load a custom security profile from filename.'
complete -c firejail -l 'profile.print' --description 'Print the name of the profile file for the sandbox identified by name or or P…'
complete -c firejail -l protocol --description 'Enable protocol filter.'
complete -c firejail -l 'protocol.print' --description 'Print the protocol filter for the sandbox identified by name or PID. br  .'
complete -c firejail -l put --description 'Put a file in sandbox container, see FILE TRANSFER section for more details.'
complete -c firejail -l quiet --description 'Turn off Firejail\'s output. br  .'
complete -c firejail -l read-only --description 'Set directory or file read-only.'
complete -c firejail -l read-write --description 'Set directory or file read-write.'
complete -c firejail -l rlimit-as --description 'Set the maximum size of the process\'s virtual memory (address space) in bytes.'
complete -c firejail -l rlimit-cpu --description 'Set the maximum limit, in seconds, for the amount of CPU time each sandboxed …'
complete -c firejail -l rlimit-fsize --description 'Set the maximum file size that can be created by a process.'
complete -c firejail -l rlimit-nofile --description 'Set the maximum number of files that can be opened by a process.'
complete -c firejail -l rlimit-nproc --description 'Set the maximum number of processes that can be created for the real user ID …'
complete -c firejail -l rlimit-sigpending --description 'Set the maximum number of pending signals for a process.'
complete -c firejail -l rmenv --description 'Remove environment variable in the new sandbox. br  . br Example: .'
complete -c firejail -l scan --description 'ARP-scan all the networks from inside a network namespace.'
complete -c firejail -l seccomp --description 'Enable seccomp filter and blacklist the syscalls in the default list, which i…'
complete -c firejail -l 'seccomp.block-secondary' --description 'Enable seccomp filter and filter system call architectures so that only the n…'
complete -c firejail -l 'seccomp.drop' --description 'Enable seccomp filter, and blacklist the syscalls or the syscall groups speci…'
complete -c firejail -l 'seccomp.keep' --description 'Enable seccomp filter, blacklist all syscall not listed and "syscall2".'
complete -c firejail -l 'seccomp.print' --description 'Print the seccomp filter for the sandbox identified by name or PID. br  .'
complete -c firejail -l shell --description 'Run the program directly, without a user shell. br  . br Example: .'
complete -c firejail -l shutdown --description 'Shutdown the sandbox identified by name or PID. br  . br Example: .'
complete -c firejail -l timeout --description 'Kill the sandbox automatically after the time has elapsed.'
complete -c firejail -l tmpfs --description 'Mount a writable tmpfs filesystem on directory dirname.'
complete -c firejail -l top --description 'Monitor the most CPU-intensive sandboxes, see MONITORING section for more det…'
complete -c firejail -l trace --description 'Trace open, access and connect system calls.'
complete -c firejail -l tracelog --description 'This option enables auditing blacklisted files and directories.'
complete -c firejail -l tree --description 'Print a tree of all sandboxed processes, see MONITORING section for more deta…'
complete -c firejail -l tunnel --description 'Connect the sandbox to a network overlay/VPN tunnel created by firetunnel uti…'
complete -c firejail -l version --description 'Print program version and exit. br  . br Example: . br $ firejail --version .'
complete -c firejail -l veth-name --description 'Use this name for the interface connected to the bridge for --net=bridge_inte…'
complete -c firejail -l whitelist --description 'Whitelist directory or file.'
complete -c firejail -l writable-etc --description 'Mount /etc directory read-write. br  . br Example: .'
complete -c firejail -l writable-run-user --description 'Disable the default blacklisting of /run/user/$UID/systemd and /run/user/$UID…'
complete -c firejail -l writable-var --description 'Mount /var directory read-write. br  . br Example: .'
complete -c firejail -l writable-var-log --description 'Use the real /var/log directory, not a clone.'
complete -c firejail -l x11 --description 'Sandbox the application using Xpra, Xephyr, Xvfb or Xorg security extension.'
complete -c firejail -s A -s i -s j --description '.'
complete -c firejail -s m -l state --description '.'
complete -c firejail -s p -l icmp-type --description '.'
complete -c firejail -l dport --description '.'
complete -c firejail -o rw-r--r-- --description '.'
complete -c firejail -l xephyr-screen --description 'Set screen size for --x11=xephyr.'
