output "private_ip" {
  value = module.VirtuelMachine.vm_out_ip
}

output "public_ip" {
    value = module.VirtuelMachine.vm_out_pip
}
