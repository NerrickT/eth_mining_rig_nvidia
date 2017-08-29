#!/bin/sh

#`Only use the following on the initial startup of your rig.`
#`sudo update-grub`
#`sudo nvidia-xconfig -a --cool-bits=28 --allow-empty-initial-configuration` 






export GPU_FORCE_64BIT_PTR=0
export GPU_MAX_HEAP_SIZE=100
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100

#GPU 0
nvidia-settings -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=1450'
nvidia-settings -a '[gpu:0]/GPUFanControlState=1'
nvidia-settings -a '[fan:0]/GPUTargetFanSpeed=62'
# Change Power (to check power settings: nvidia-smi -i 0 -q -d POWER)
nvidia-smi -i 0 -pl 93


#GPU 1
nvidia-settings -a '[gpu:1]/GPUMemoryTransferRateOffset[3]=1400'
# Change Power (to check power settings: nvidia-smi -i 1 -q -d POWER)
nvidia-smi -i 1 -pl 93




#GPU 3
nvidia-settings -a '[gpu:2]/GPUMemoryTransferRateOffset[3]=710'
nvidia-settings -a '[gpu:2]/GPUFanControlState=1'
nvidia-settings -a '[fan:2]/GPUTargetFanSpeed=62'
# Change Power (to check power settings: nvidia-smi -i 0 -q -d POWER)
nvidia-smi -i 0 -pl 93


./ethdcrminer64 -epool us1.ethermine.org:14444 -ewal <YOUR ETH ADDRESS GOES HERE>.<Rig NAME GOES HERE> -epsw x -mode 1 -eres 5 -tt 65,68  -allpools 1
