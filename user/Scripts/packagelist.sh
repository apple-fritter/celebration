#!/bin/bash

# Run dpkg-query with sudo, show only package name and version, and save to ~/Documents/packages.txt
sudo dpkg-query --show --showformat='${package}\t${version}\n' > ~/Documents/packages.txt
