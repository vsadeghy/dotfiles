# glusterfsd
# Autogenerated from man page /usr/share/man/man8/glusterfsd.8.gz
complete -c glusterfsd -s f -l volfile --description 'File to use as VOLUME-FILE [default:/etc/glusterfs/glusterfs. vol].'
complete -c glusterfsd -s l -l log-file --description 'File to use for logging [default:/var/log/glusterfs/glusterfs. log].'
complete -c glusterfsd -s L -l log-level --description 'Logging severity.'
complete -c glusterfsd -s s -l volfile-server --description 'Server to get the volume from.   This option overrides --volfile option  .'
complete -c glusterfsd -l localtime-logging --description 'Enable localtime log timestamps.'
complete -c glusterfsd -l debug --description 'Run in debug mode.'
complete -c glusterfsd -s N -l no-daemon --description 'Run in foreground.'
complete -c glusterfsd -l read-only --description 'Makes the filesystem read-only.'
complete -c glusterfsd -s p -l pid-file --description 'File to use as pid file.'
complete -c glusterfsd -s S --description 'Socket file to used for inter-process communication.'
complete -c glusterfsd -l brick-name --description 'Directory to be used as export directory for GlusterFS.'
complete -c glusterfsd -l brick-port --description 'Brick Port to be registered with Gluster portmapper.'
complete -c glusterfsd -l volfile-id --description 'KEY of the volume file to be fetched from server.'
complete -c glusterfsd -l volfile-server-port --description 'Port number of volfile server.'
complete -c glusterfsd -l volfile-server-transport --description 'Transport type to get volume file from server [default: tcp].'
complete -c glusterfsd -l volume-name --description 'Volume name to be used for MOUNT-POINT [default: top most volume in VOLUME-FI…'
complete -c glusterfsd -l xlator-option --description 'Add/override a translator option for a volume with the specified value  .'
complete -c glusterfsd -l attribute-timeout --description 'Set attribute timeout to SECONDS for inodes in fuse kernel module [default: 1…'
complete -c glusterfsd -l entry-timeout --description 'Set entry timeout to SECONDS in fuse kernel module [default: 1].'
complete -c glusterfsd -l direct-io-mode --description 'Enable/Disable direct-io mode in fuse module [default: enable].'
complete -c glusterfsd -l resolve-gids --description 'Resolve all auxiliary groups in fuse translator (max 32 otherwise).'
complete -c glusterfsd -l auto-invalidation --description 'controls whether fuse-kernel can auto-invalidate attribute, dentry and page-c…'
complete -c glusterfsd -s '?' -l help --description 'Give this help list.'
complete -c glusterfsd -l usage --description 'Give a short usage message.'
complete -c glusterfsd -s V -l version --description 'Print program version FILES /etc/glusterfs/*. vol.'
