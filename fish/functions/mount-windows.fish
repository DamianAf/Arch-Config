function mount-windows --wraps='sudo mount -t ntfs-3g /dev/nvme0n1p3 /mnt/windows' --description 'alias mount-windows sudo mount -t ntfs-3g /dev/nvme0n1p3 /mnt/windows'
    sudo mount -t ntfs-3g /dev/nvme0n1p3 /mnt/windows $argv
end
