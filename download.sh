#!/usr/bin/env bash

module load Python

# activate an envirnonment containing pyEGA
conda activate /scratch/blazquL/envs/biotools

# move to the desired download directory
cd /dipc/blazquL/EGA_DATA

# fill in the credentials and the dataset ID
cred=credentials.json
id=EGAD00001007860

# download the data
pyega3 -cf $cred -c 30 fetch $id
