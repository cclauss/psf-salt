base:
  '*':
    - base.sanity
    - groups
    - firewall
    - users
    - sudoers
    - backup.client
    - auto-security

  'roles:backup-server':
    - match: grain
    - backup.server

  'roles:cdn-logs':
    - match: grain
    - cdn-logs

  'roles:docs':
    - match: grain
    - docs

  'roles:downloads':
    - match: grain
    - downloads

  'roles:hg':
    - match: grain
    - hg
    - ssh.host_keys

  'roles:jython-web':
    - match: grain
    - jython

  'roles:loadbalancer':
    - match: grain
    - haproxy
    - openvpn.routing

  'roles:salt-master':
    - match: grain

  'roles:vpn':
    - match: grain
    - openvpn.server
