# History

## 0.3.1 - 2010-12-1

* install_server
  * Updates the default host for `hudson` CLI to newly created server
  * Explicitly set $HOME/$USER so Hudson/Java has access to .gitconfig

## 0.3.0 - 2010-11-24

* Renamed task 'server' => 'install_server'
* install_server does the complete job of setup/installation of Hudson into an environment on AppCloud
* install_server can take --environment/--account options OR auto-discover which environment to install Hudson into


## 0.2.0 - 2010-10-30

* Initial 'server' task implementation

## 0.1.0 - 2010-10-30

* Initial 'ey-hudson install .' command
* 'ey-hudson server' shows 'Coming soon'
