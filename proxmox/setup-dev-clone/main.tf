resource "proxmox_vm_qemu" "setup-dev" {
    name = var.vm_name
    desc = var.desc
    target_node = var.target_node
    vmid = "xxx"
    iso = var.iso
    #clone iso
    clone = var.vm_iso_clone
    cores = 2
    sockets = 1
    memory = 8192       # 8GB RAM
    agent = 1           # Habilitar Qemu Agent
    cpu = "host"

    network {
        model = "virtio"
        bridge = ""
    }

    disk {
        storage = "NVME"
        size = "40G"
        type = "virtio"
    }

}