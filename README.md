# README #

This repository contains a setup for Puppet module dependency management using a metadata.json from a so called "composer" module. So you'll have just one module in your project wich contains all depencies (the modules you actually want). The benefit in doing this is to prevent pushing puppet modules into your repository. This will keep your repository clean and small.

### Installation ###
Clone repository and run `./puppet_module install` This will install all modules from the composer/metadata.json module

### Add module ###
To add a module, I created a Python helper which is inspired from the actual `puppet module install` command. This script adds a new entry into composer/metadata.json after wich it runs `puppet module install` which will install all modules and its dependencies:

Run `./puppet_module install <modulename> --version <1.2.3>`


### Why this setup and not using r10k / librarian-puppet
The workflow for r10k is not everyones cup of tea, as it just wipes all uncommited changes for all other environments! In my experience environments are usually used on a user basis (one environment per devops engineer). Also r10k is not able to install dependencies for modules (when used locally without deploying), a very desired feature (https://tickets.puppetlabs.com/browse/RK-3)

Librarian-puppet can't handle dependencies for more complex modules (it gives errors for some modules e.g. elastic-elasticsearch)
