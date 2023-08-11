#!/bin/bash

# Remove .db and data folders
sudo rm -rf .db data

# ask for confirmation to remove odoo build
read -p "Do you want to remove odoo build? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo rm -rf odoo/backup odoo/external-src odoo/links odoo/my_project_name.egg-info odoo/src odoo/repo.yaml
fi