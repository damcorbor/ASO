#!/bin/bash

echo "últimos usuarios que iniciaron sesión"
last | egrep "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+"
