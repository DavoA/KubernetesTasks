output "instance_public_ip" {
  description = "The public IP address of the NFS server instance"
  value       = aws_instance.nfs_server.public_ip
}