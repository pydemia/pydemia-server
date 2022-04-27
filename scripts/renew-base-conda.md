# Renew the Base conda

1. reinstall anaconda with different dir: `~/anaconda3-py39`
1. mv the old anaconda: `mv ~/anaconda3 ~/anaconda3-py36`
1. mv the new anaconda with the settled path `mv ~/anaconda3-py39 ~/anaconda3`
1. Restore your envs: `cp -r ~/anaconda3-py36/envs ~/anaconda3/`
