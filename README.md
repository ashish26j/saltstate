This repo is for learning purpose for SALT State

Configuration at master
/etc/salt/master  >   include_default: /etc/salt/master.d/*.conf  >  /etc/salt/master.d/roots.conf:

file_roots:
  base:
    - /srv/saltstate

  common:
    - /srv/saltstate/common

  dev:
    - /srv/saltstate/dev



	
tree /srv/saltstate
saltstate
├── base
│   ├── shell_exec.sls
│   ├── vim
│   │   └── init.sls
│   └── vim.sls
├── common
│   └── install_pckgs
│       └── init.sls
├── dev
│   └── shell_exec
│       ├── artifactory.sls
│       └── init.sls
└── top.sls





Apply salt state (SLS) to minion 'ngnix001'	
salt      'ngnix001'      state.sls        shell_exec     saltenv=dev

salt     'ngnix001'     state.show_sls     shell_exec     saltenv=dev


For Artifactory_jinja

salt 'ngnix001' slsutil.renderer /srv/saltstate/dev/artifactory_jinja/artifactory_download.sls saltenv=dev 'jinja'

salt 'ngnix001' state.apply shell_exec saltenv=dev
