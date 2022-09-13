#!/bin/bash

# cd "/home/pawanroy/PawanRoy1997/PawanRoy1997"

bash "./generator.sh"
git add .
git commit -m "Update $( date )"
git push -u origin main
