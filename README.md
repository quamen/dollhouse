# Dollhouse

Dollhouse is a way to deploy servers. It is designed to be used with [Babushka](http://github.com/benhoskings/babushka).

## Setup

Before you can use Dollhouse to set up a new server you first need to do 2 things.

1. Enable root access via ssh.
  
2. Install your public key in authorized_keys for the root account.

  $ scp ~/.ssh/id_rsa.pub root@remote.server.com:.ssh/authorized_keys
  
## Usage

[Dollhouse](http://github.com/geelen/dollhouse) does not yet exist in Gem format, we'll fix that soon, so first you need to clone the repo.

  $ cd ~/Code
  $ git clone http://github.com/geelen/dollhouse.git
  
Next copy the dollhouse directory under examples/demo/config into your rails projects config directory.

Once you've configured dollhouse for you project you can then run dollhouse from within your rails apps root directory using the clones repository.

  $ ~/Code/dollhouse/bin/dollhouse.rb list
  
## Configuring Dollhouse

