# Renew the Base conda

1. reinstall anaconda with different dir: `~/anaconda3-py39`
1. mv the old anaconda: `mv ~/anaconda3 ~/anaconda3-py36`
1. mv the new anaconda with the settled path `mv ~/anaconda3-py39 ~/anaconda3`
1. Restore your envs: `cp -r ~/anaconda3-py36/envs ~/anaconda3/`
1. If some old packages are needed, maybe not because your base conda has too many conflicts to preserve, use the following:
  > ```bash
  > # before the renewal:
  > conda env export -n base > base-condaenv.yaml
  > 
  > # after the renewal:
  > conda env update -n base -f base-condaenv.yaml --prune
 
