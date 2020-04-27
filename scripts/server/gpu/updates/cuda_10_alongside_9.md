# Install CUDA 10 alongside 9

# Download

# Installation

## Dependencies

```sh
sudo apt-get install build-essential dkms
sudo apt-get install freeglut3 freeglut3-dev libxi-dev libxmu-dev
```

## CUDA

```sh
sudo dpkg -i cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub


sudo apt-get update
sudo apt-get install cuda
```

Now it's installed in `/usr/local/cuda`

```sh
ls -al /usr/local |grep cuda

lrwxrwxrwx  1 root root    9 Sep 26 09:28 cuda -> cuda-10.0
drwxr-xr-x 16 root root 4096 Sep 26 09:27 cuda-10.0
drwxr-xr-x 19 root root 4096 Sep 25 19:59 cuda-9.2
```

```sh
nvidia-smi

Tue Apr 28 06:38:48 2020
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 418.67       Driver Version: 418.67       CUDA Version: 10.1     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|===============================+======================+======================|
|   0  GeForce GTX 1070    Off  | 00000000:01:00.0 Off |                  N/A |
|  0%   37C    P8    13W / 195W |      0MiB /  8117MiB |      0%      Default |
+-------------------------------+----------------------+----------------------+

+-----------------------------------------------------------------------------+
| Processes:                                                       GPU Memory |
|  GPU       PID   Type   Process name                             Usage      |
|=============================================================================|
|  No running processes found                                                 |
+-----------------------------------------------------------------------------+
```

## Optional(Create Env files)

`cuda9.2-env`

```vim
# CUDA 9.2

### CUDA PATH
export CUDA_HOME="/usr/local/cuda-9.2"
export PATH="${CUDA_HOME}/bin${PATH:+:${PATH}}"
export LD_LIBRARY_PATH="${CUDA_HOME}/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
export LD_LIBRARY_PATH="${CUDA_HOME}/include${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
export LD_LIBRARY_PATH="${CUDA_HOME}/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
export LD_LIBRARY_PATH="${CUDA_HOME}/include${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
#export LD_LIBRARY_PATH="${CUDA_HOME}/lib64:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+${LD_LIBRARY_PATH}:}${CUDA_HOME}/extras/CUPTI/lib64"
```


`cuda10.0-env`

```vim
# CUDA 10.0

### CUDA PATH
export CUDA_HOME="/usr/local/cuda-10.0"
export PATH="${CUDA_HOME}/bin${PATH:+:${PATH}}"
export LD_LIBRARY_PATH="${CUDA_HOME}/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
export LD_LIBRARY_PATH="${CUDA_HOME}/include${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
export LD_LIBRARY_PATH="${CUDA_HOME}/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
export LD_LIBRARY_PATH="${CUDA_HOME}/include${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
#export LD_LIBRARY_PATH="${CUDA_HOME}/lib64:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+${LD_LIBRARY_PATH}:}${CUDA_HOME}/extras/CUPTI/lib64"
```

Activate it:

```sh
source ~/misc/cuda10.0.env

pydemia@pydemia-server🔗 ❯ env | grep -i cuda
PATH=/usr/local/cuda-10.0/bin:/home/pydemia/apps/anaconda3/bin/jupyter-kernelspec:/home/pydemia/apps/scala/bin:/home/pydemia/apps/julia/bin:/home/pydemia/apps/pypy3/bin:/usr/local/cud
/bin:/home/pydemia/apps/anaconda3/bin/jupyter-kernelspec:/home/pydemia/apps/scala/bin:/home/pydemia/apps/julia/bin:/home/pydemia/apps/pypy3/bin:/usr/local/cuda/bin:/usr/local/cuda-9.0/bin:/home/pydemia/apps/anaconda3/bin:/home/pydemia/apps/anaconda3/condabin:/home/pydemia/apps/anaconda3/bin/jupyter-kernelspec:/home/pydemia/apps/scala/bin:/home/pydemia/apps/julia/bin:/home/pydemia/apps/pypy3/bin:/home/pydemia/apps/anaconda3/bin:/usr/local/cuda/bin:/usr/local/cuda-9.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/ssl/bin
CUDA_HOME=/usr/local/cuda-10.0
LD_LIBRARY_PATH=/usr/local/cuda-10.0/include:/usr/local/cuda-10.0/lib64:/usr/local/cuda-10.0/include:/usr/local/cuda-10.0/lib64:/usr/local/cuda/include:/usr/local/cuda/lib64:/usr/local/cuda/include:/usr/local/cuda/lib64:/usr/local/cuda/lib64:/usr/local/cuda/include:/usr/local/cuda/lib64:/usr/local/cuda-9.0/include:/usr/local/cuda-9.0/lib64:/usr/local/cuda/lib64:/usr/local/cuda/include:/usr/local/cuda/lib64:/usr/local/cuda-9.0/include:/usr/local/cuda-9.0/lib64:/usr/local/cuda/extras/CUPTI/lib64:/usr/local/cuda/extras/CUPTI/lib64:/usr/local/cuda/extras/CUPTI/lib64:/usr/local/cuda-10.0/extras/CUPTI/lib64
```
