# Dollhouse

Dollhouse is a way to deploy servers.

## Setup

Before you can use Dollhouse to set up a new server you first need to do 2 things.

1. Enable root access via ssh.
  
2. Install your public key in authorized_keys for the root account.

  $ scp ~/.ssh/id_rsa.pub root@remote.server.com:.ssh/authorized_keys