root@gridtestvm://dip/terraform# nano main.tf
root@gridtestvm://dip/terraform# nano main.tf
root@gridtestvm://dip/terraform# terraform init
Initializing the backend...
Initializing provider plugins...
- Reusing previous version of yandex-cloud/yandex from the dependency lock file
- Using previously-installed yandex-cloud/yandex v0.133.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
root@gridtestvm://dip/terraform# terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # yandex_compute_instance.k8s_app will be created
  + resource "yandex_compute_instance" "k8s_app" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hardware_generation       = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                grid:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdjIk2tI5BU398tSXfHLNtXBU+ln1sEIJriDWvdtZZMfSStE3EqK5HJLQPn743LWc23XB/9w8zILg/jDkzeUrb0vsDDbpIJCzUw2bQBMiLfNdsqFJZoTiuAnfQG5xCGPhwW1vVT3Cz6+D/TG+VMxiVqEbq6bkxjP2U4kSQ/s1X9hYdeJsiC+fjyUrVGkwtEpWaXKJtcUq/XBiVFC8tnXrHkLn6HWaaIY1GxquYby2akFYnJTgNm2PCNsY0dj3cZt2fusWYA4jcYV00zEmotxKmjT/3u/xLJ/P/nMX397gmZrv0+ihwe30doVN5OW7gI2ZDPVQqaGAYfSJMm//OG5+JhrRwp9S4X+/7CCw0E2nNdwE6OiLoKgEhLIhhkb1Fr6xL+btm+mCG1UIoYhMPQpZry9yn4zk+fQP/yFa7QTXHVMXb59W2cXCLisoCfFqnEZ7jvNTTc/Wfbb1MUMktvkisXqbMFTaSxon08eRqgKaxTMFulSHlJvDF+CKmxCG+nCPXairEdcT8c4aEJVTG7kLwof72VrbN9aivM6xQB/p2BBdjvn4SvTiAakeChSRwptFuUBPanNW47uKGmIgqBtgBxVSTIVyLhulk+YkuRKIIfcUQo1RqF1PUtEmvWem9AwTL3HilDJjlX0GwsGhDV2qLdoDzUQq7oksPNlYRet5hTQ== yaeh@nice.com
            EOT
        }
      + name                      = "k8s-app"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v2"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-a"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd80bm0rh4rkepi5ksdi"
              + name        = (known after apply)
              + size        = 50
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = "10.0.0.11"
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = false
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 4
        }

      + scheduling_policy (known after apply)
    }

  # yandex_compute_instance.k8s_master will be created
  + resource "yandex_compute_instance" "k8s_master" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hardware_generation       = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                grid:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdjIk2tI5BU398tSXfHLNtXBU+ln1sEIJriDWvdtZZMfSStE3EqK5HJLQPn743LWc23XB/9w8zILg/jDkzeUrb0vsDDbpIJCzUw2bQBMiLfNdsqFJZoTiuAnfQG5xCGPhwW1vVT3Cz6+D/TG+VMxiVqEbq6bkxjP2U4kSQ/s1X9hYdeJsiC+fjyUrVGkwtEpWaXKJtcUq/XBiVFC8tnXrHkLn6HWaaIY1GxquYby2akFYnJTgNm2PCNsY0dj3cZt2fusWYA4jcYV00zEmotxKmjT/3u/xLJ/P/nMX397gmZrv0+ihwe30doVN5OW7gI2ZDPVQqaGAYfSJMm//OG5+JhrRwp9S4X+/7CCw0E2nNdwE6OiLoKgEhLIhhkb1Fr6xL+btm+mCG1UIoYhMPQpZry9yn4zk+fQP/yFa7QTXHVMXb59W2cXCLisoCfFqnEZ7jvNTTc/Wfbb1MUMktvkisXqbMFTaSxon08eRqgKaxTMFulSHlJvDF+CKmxCG+nCPXairEdcT8c4aEJVTG7kLwof72VrbN9aivM6xQB/p2BBdjvn4SvTiAakeChSRwptFuUBPanNW47uKGmIgqBtgBxVSTIVyLhulk+YkuRKIIfcUQo1RqF1PUtEmvWem9AwTL3HilDJjlX0GwsGhDV2qLdoDzUQq7oksPNlYRet5hTQ== yaeh@nice.com
            EOT
        }
      + name                      = "k8s-master"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v2"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-a"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd80bm0rh4rkepi5ksdi"
              + name        = (known after apply)
              + size        = 50
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = "10.0.0.10"
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = false
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 4
        }

      + scheduling_policy (known after apply)
    }

  # yandex_compute_instance.srv will be created
  + resource "yandex_compute_instance" "srv" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hardware_generation       = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                grid:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdjIk2tI5BU398tSXfHLNtXBU+ln1sEIJriDWvdtZZMfSStE3EqK5HJLQPn743LWc23XB/9w8zILg/jDkzeUrb0vsDDbpIJCzUw2bQBMiLfNdsqFJZoTiuAnfQG5xCGPhwW1vVT3Cz6+D/TG+VMxiVqEbq6bkxjP2U4kSQ/s1X9hYdeJsiC+fjyUrVGkwtEpWaXKJtcUq/XBiVFC8tnXrHkLn6HWaaIY1GxquYby2akFYnJTgNm2PCNsY0dj3cZt2fusWYA4jcYV00zEmotxKmjT/3u/xLJ/P/nMX397gmZrv0+ihwe30doVN5OW7gI2ZDPVQqaGAYfSJMm//OG5+JhrRwp9S4X+/7CCw0E2nNdwE6OiLoKgEhLIhhkb1Fr6xL+btm+mCG1UIoYhMPQpZry9yn4zk+fQP/yFa7QTXHVMXb59W2cXCLisoCfFqnEZ7jvNTTc/Wfbb1MUMktvkisXqbMFTaSxon08eRqgKaxTMFulSHlJvDF+CKmxCG+nCPXairEdcT8c4aEJVTG7kLwof72VrbN9aivM6xQB/p2BBdjvn4SvTiAakeChSRwptFuUBPanNW47uKGmIgqBtgBxVSTIVyLhulk+YkuRKIIfcUQo1RqF1PUtEmvWem9AwTL3HilDJjlX0GwsGhDV2qLdoDzUQq7oksPNlYRet5hTQ== yaeh@nice.com
            EOT
        }
      + name                      = "srv"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v2"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-a"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd80bm0rh4rkepi5ksdi"
              + name        = (known after apply)
              + size        = 50
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = "10.0.0.12"
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = false
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 4
        }

      + scheduling_policy (known after apply)
    }

  # yandex_vpc_network.main_network will be created
  + resource "yandex_vpc_network" "main_network" {
      + created_at                = (known after apply)
      + default_security_group_id = (known after apply)
      + description               = "Main VPC network for our resources"
      + folder_id                 = (known after apply)
      + id                        = (known after apply)
      + labels                    = (known after apply)
      + name                      = "main-network"
      + subnet_ids                = (known after apply)
    }

  # yandex_vpc_subnet.main_subnet will be created
  + resource "yandex_vpc_subnet" "main_subnet" {
      + created_at     = (known after apply)
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + labels         = (known after apply)
      + name           = "default-subnet"
      + network_id     = (known after apply)
      + v4_cidr_blocks = [
          + "10.0.0.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-a"
    }

Plan: 5 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

yandex_vpc_network.main_network: Creating...
yandex_vpc_network.main_network: Creation complete after 2s [id=enpbf7n8tlha2cihf556]
yandex_vpc_subnet.main_subnet: Creating...
yandex_vpc_subnet.main_subnet: Creation complete after 1s [id=e9bi4v5a2vjrhdmq3qg1]
yandex_compute_instance.srv: Creating...
yandex_compute_instance.k8s_app: Creating...
yandex_compute_instance.k8s_master: Creating...
yandex_compute_instance.srv: Still creating... [10s elapsed]
yandex_compute_instance.k8s_app: Still creating... [10s elapsed]
yandex_compute_instance.k8s_master: Still creating... [10s elapsed]
yandex_compute_instance.srv: Still creating... [20s elapsed]
yandex_compute_instance.k8s_master: Still creating... [20s elapsed]
yandex_compute_instance.k8s_app: Still creating... [20s elapsed]
yandex_compute_instance.srv: Still creating... [30s elapsed]
yandex_compute_instance.k8s_app: Still creating... [30s elapsed]
yandex_compute_instance.k8s_master: Still creating... [30s elapsed]
yandex_compute_instance.k8s_master: Still creating... [40s elapsed]
yandex_compute_instance.srv: Still creating... [40s elapsed]
yandex_compute_instance.k8s_app: Still creating... [40s elapsed]
yandex_compute_instance.k8s_master: Still creating... [50s elapsed]
yandex_compute_instance.k8s_app: Still creating... [50s elapsed]
yandex_compute_instance.srv: Still creating... [50s elapsed]
yandex_compute_instance.srv: Still creating... [1m0s elapsed]
yandex_compute_instance.k8s_master: Still creating... [1m0s elapsed]
yandex_compute_instance.k8s_app: Still creating... [1m0s elapsed]
yandex_compute_instance.k8s_app: Still creating... [1m10s elapsed]
yandex_compute_instance.srv: Still creating... [1m10s elapsed]
yandex_compute_instance.k8s_master: Still creating... [1m10s elapsed]
yandex_compute_instance.srv: Still creating... [1m20s elapsed]
yandex_compute_instance.k8s_app: Still creating... [1m20s elapsed]
yandex_compute_instance.k8s_master: Still creating... [1m20s elapsed]
yandex_compute_instance.k8s_app: Still creating... [1m30s elapsed]
yandex_compute_instance.srv: Still creating... [1m30s elapsed]
yandex_compute_instance.k8s_master: Still creating... [1m30s elapsed]
yandex_compute_instance.srv: Creation complete after 1m32s [id=fhm0ngm49jhndro3iaif]
yandex_compute_instance.k8s_app: Still creating... [1m40s elapsed]
yandex_compute_instance.k8s_master: Still creating... [1m40s elapsed]
yandex_compute_instance.k8s_app: Still creating... [1m50s elapsed]
yandex_compute_instance.k8s_master: Still creating... [1m50s elapsed]
yandex_compute_instance.k8s_app: Creation complete after 1m58s [id=fhmhlt0mgldt6lt8k9v4]
yandex_compute_instance.k8s_master: Still creating... [2m0s elapsed]
yandex_compute_instance.k8s_master: Creation complete after 2m4s [id=fhm3r2dplf61bb2lekpl]

Apply complete! Resources: 5 added, 0 changed, 0 destroyed.
root@gridtestvm://dip/terraform# cd ..
root@gridtestvm://dip# cd ansible/
root@gridtestvm://dip/ansible# ll
total 8
drwxr-xr-x 2 root root 4096 Mar 31 06:50 ./
drwxr-xr-x 4 root root 4096 Mar 31 04:06 ../
root@gridtestvm://dip/ansible# nano inventory.ini
root@gridtestvm://dip/ansible# ll
total 12
drwxr-xr-x 2 root root 4096 Mar 31 07:15 ./
drwxr-xr-x 4 root root 4096 Mar 31 04:06 ../
-rw-r--r-- 1 root root   61 Mar 31 07:15 inventory.ini
root@gridtestvm://dip/ansible# nano install_docker.yml
root@gridtestvm://dip/ansible# ansible-playbook -i inventory.ini install_docker.yml^C
root@gridtestvm://dip/ansible# cd ..
root@gridtestvm://dip# ll
total 16
drwxr-xr-x  4 root root 4096 Mar 31 04:06 ./
drwxr-xr-x 24 root root 4096 Mar 31 04:06 ../
drwxr-xr-x  2 root root 4096 Mar 31 07:16 ansible/
drwxr-xr-x  3 grid grid 4096 Mar 31 06:59 terraform/
root@gridtestvm://dip# cd terraform/
root@gridtestvm://dip/terraform# ll
total 27240
drwxr-xr-x 3 grid grid     4096 Mar 31 06:59 ./
drwxr-xr-x 4 root root     4096 Mar 31 04:06 ../
-rw-r--r-- 1 grid grid     4922 Mar 26 08:34 LICENSE.txt
-rw-r--r-- 1 grid grid     2890 Mar 31 06:57 main.tf
drwxr-xr-x 3 root root     4096 Mar 31 05:28 .terraform/
-rw-rw-r-- 1 grid grid 27843250 Mar 31 03:59 terraform_1.11.3_linux_amd64.zip
-rw-r--r-- 1 root root      289 Mar 31 05:44 .terraform.lock.hcl
-rw-r--r-- 1 root root    16036 Mar 31 06:59 terraform.tfstate
-rw-r--r-- 1 root root      182 Mar 31 06:57 terraform.tfstate.backup
root@gridtestvm://dip/terraform# terraform destroy
yandex_vpc_network.main_network: Refreshing state... [id=enpbf7n8tlha2cihf556]
yandex_vpc_subnet.main_subnet: Refreshing state... [id=e9bi4v5a2vjrhdmq3qg1]
yandex_compute_instance.srv: Refreshing state... [id=fhm0ngm49jhndro3iaif]
yandex_compute_instance.k8s_master: Refreshing state... [id=fhm3r2dplf61bb2lekpl]
yandex_compute_instance.k8s_app: Refreshing state... [id=fhmhlt0mgldt6lt8k9v4]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # yandex_compute_instance.k8s_app will be destroyed
  - resource "yandex_compute_instance" "k8s_app" {
      - created_at                = "2025-03-31T10:57:44Z" -> null
      - folder_id                 = "b1grpu8ht5p4p9pj4bkd" -> null
      - fqdn                      = "fhmhlt0mgldt6lt8k9v4.auto.internal" -> null
      - hardware_generation       = [
          - {
              - generation2_features = []
              - legacy_features      = [
                  - {
                      - pci_topology = "PCI_TOPOLOGY_V1"
                    },
                ]
            },
        ] -> null
      - id                        = "fhmhlt0mgldt6lt8k9v4" -> null
      - labels                    = {} -> null
      - metadata                  = {
          - "ssh-keys" = <<-EOT
                grid:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdjIk2tI5BU398tSXfHLNtXBU+ln1sEIJriDWvdtZZMfSStE3EqK5HJLQPn743LWc23XB/9w8zILg/jDkzeUrb0vsDDbpIJCzUw2bQBMiLfNdsqFJZoTiuAnfQG5xCGPhwW1vVT3Cz6+D/TG+VMxiVqEbq6bkxjP2U4kSQ/s1X9hYdeJsiC+fjyUrVGkwtEpWaXKJtcUq/XBiVFC8tnXrHkLn6HWaaIY1GxquYby2akFYnJTgNm2PCNsY0dj3cZt2fusWYA4jcYV00zEmotxKmjT/3u/xLJ/P/nMX397gmZrv0+ihwe30doVN5OW7gI2ZDPVQqaGAYfSJMm//OG5+JhrRwp9S4X+/7CCw0E2nNdwE6OiLoKgEhLIhhkb1Fr6xL+btm+mCG1UIoYhMPQpZry9yn4zk+fQP/yFa7QTXHVMXb59W2cXCLisoCfFqnEZ7jvNTTc/Wfbb1MUMktvkisXqbMFTaSxon08eRqgKaxTMFulSHlJvDF+CKmxCG+nCPXairEdcT8c4aEJVTG7kLwof72VrbN9aivM6xQB/p2BBdjvn4SvTiAakeChSRwptFuUBPanNW47uKGmIgqBtgBxVSTIVyLhulk+YkuRKIIfcUQo1RqF1PUtEmvWem9AwTL3HilDJjlX0GwsGhDV2qLdoDzUQq7oksPNlYRet5hTQ== yaeh@nice.com
            EOT
        } -> null
      - name                      = "k8s-app" -> null
      - network_acceleration_type = "standard" -> null
      - platform_id               = "standard-v2" -> null
      - status                    = "running" -> null
      - zone                      = "ru-central1-a" -> null
        # (5 unchanged attributes hidden)

      - boot_disk {
          - auto_delete = true -> null
          - device_name = "fhmq6d4j66lo1lhi67pu" -> null
          - disk_id     = "fhmq6d4j66lo1lhi67pu" -> null
          - mode        = "READ_WRITE" -> null

          - initialize_params {
              - block_size  = 4096 -> null
              - image_id    = "fd80bm0rh4rkepi5ksdi" -> null
                name        = null
              - size        = 50 -> null
              - type        = "network-hdd" -> null
                # (2 unchanged attributes hidden)
            }
        }

      - metadata_options {
          - aws_v1_http_endpoint = 1 -> null
          - aws_v1_http_token    = 2 -> null
          - gce_http_endpoint    = 1 -> null
          - gce_http_token       = 1 -> null
        }

      - network_interface {
          - index              = 0 -> null
          - ip_address         = "10.0.0.11" -> null
          - ipv4               = true -> null
          - ipv6               = false -> null
          - mac_address        = "d0:0d:11:af:41:68" -> null
          - nat                = false -> null
          - security_group_ids = [] -> null
          - subnet_id          = "e9bi4v5a2vjrhdmq3qg1" -> null
            # (3 unchanged attributes hidden)
        }

      - placement_policy {
          - host_affinity_rules       = [] -> null
          - placement_group_partition = 0 -> null
            # (1 unchanged attribute hidden)
        }

      - resources {
          - core_fraction = 100 -> null
          - cores         = 2 -> null
          - gpus          = 0 -> null
          - memory        = 4 -> null
        }

      - scheduling_policy {
          - preemptible = false -> null
        }
    }

  # yandex_compute_instance.k8s_master will be destroyed
  - resource "yandex_compute_instance" "k8s_master" {
      - created_at                = "2025-03-31T10:57:44Z" -> null
      - folder_id                 = "b1grpu8ht5p4p9pj4bkd" -> null
      - fqdn                      = "fhm3r2dplf61bb2lekpl.auto.internal" -> null
      - hardware_generation       = [
          - {
              - generation2_features = []
              - legacy_features      = [
                  - {
                      - pci_topology = "PCI_TOPOLOGY_V1"
                    },
                ]
            },
        ] -> null
      - id                        = "fhm3r2dplf61bb2lekpl" -> null
      - labels                    = {} -> null
      - metadata                  = {
          - "ssh-keys" = <<-EOT
                grid:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdjIk2tI5BU398tSXfHLNtXBU+ln1sEIJriDWvdtZZMfSStE3EqK5HJLQPn743LWc23XB/9w8zILg/jDkzeUrb0vsDDbpIJCzUw2bQBMiLfNdsqFJZoTiuAnfQG5xCGPhwW1vVT3Cz6+D/TG+VMxiVqEbq6bkxjP2U4kSQ/s1X9hYdeJsiC+fjyUrVGkwtEpWaXKJtcUq/XBiVFC8tnXrHkLn6HWaaIY1GxquYby2akFYnJTgNm2PCNsY0dj3cZt2fusWYA4jcYV00zEmotxKmjT/3u/xLJ/P/nMX397gmZrv0+ihwe30doVN5OW7gI2ZDPVQqaGAYfSJMm//OG5+JhrRwp9S4X+/7CCw0E2nNdwE6OiLoKgEhLIhhkb1Fr6xL+btm+mCG1UIoYhMPQpZry9yn4zk+fQP/yFa7QTXHVMXb59W2cXCLisoCfFqnEZ7jvNTTc/Wfbb1MUMktvkisXqbMFTaSxon08eRqgKaxTMFulSHlJvDF+CKmxCG+nCPXairEdcT8c4aEJVTG7kLwof72VrbN9aivM6xQB/p2BBdjvn4SvTiAakeChSRwptFuUBPanNW47uKGmIgqBtgBxVSTIVyLhulk+YkuRKIIfcUQo1RqF1PUtEmvWem9AwTL3HilDJjlX0GwsGhDV2qLdoDzUQq7oksPNlYRet5hTQ== yaeh@nice.com
            EOT
        } -> null
      - name                      = "k8s-master" -> null
      - network_acceleration_type = "standard" -> null
      - platform_id               = "standard-v2" -> null
      - status                    = "running" -> null
      - zone                      = "ru-central1-a" -> null
        # (5 unchanged attributes hidden)

      - boot_disk {
          - auto_delete = true -> null
          - device_name = "fhma9oo7bqa9purroh6g" -> null
          - disk_id     = "fhma9oo7bqa9purroh6g" -> null
          - mode        = "READ_WRITE" -> null

          - initialize_params {
              - block_size  = 4096 -> null
              - image_id    = "fd80bm0rh4rkepi5ksdi" -> null
                name        = null
              - size        = 50 -> null
              - type        = "network-hdd" -> null
                # (2 unchanged attributes hidden)
            }
        }

      - metadata_options {
          - aws_v1_http_endpoint = 1 -> null
          - aws_v1_http_token    = 2 -> null
          - gce_http_endpoint    = 1 -> null
          - gce_http_token       = 1 -> null
        }

      - network_interface {
          - index              = 0 -> null
          - ip_address         = "10.0.0.10" -> null
          - ipv4               = true -> null
          - ipv6               = false -> null
          - mac_address        = "d0:0d:3d:89:b9:ab" -> null
          - nat                = false -> null
          - security_group_ids = [] -> null
          - subnet_id          = "e9bi4v5a2vjrhdmq3qg1" -> null
            # (3 unchanged attributes hidden)
        }

      - placement_policy {
          - host_affinity_rules       = [] -> null
          - placement_group_partition = 0 -> null
            # (1 unchanged attribute hidden)
        }

      - resources {
          - core_fraction = 100 -> null
          - cores         = 2 -> null
          - gpus          = 0 -> null
          - memory        = 4 -> null
        }

      - scheduling_policy {
          - preemptible = false -> null
        }
    }

  # yandex_compute_instance.srv will be destroyed
  - resource "yandex_compute_instance" "srv" {
      - created_at                = "2025-03-31T10:57:44Z" -> null
      - folder_id                 = "b1grpu8ht5p4p9pj4bkd" -> null
      - fqdn                      = "fhm0ngm49jhndro3iaif.auto.internal" -> null
      - hardware_generation       = [
          - {
              - generation2_features = []
              - legacy_features      = [
                  - {
                      - pci_topology = "PCI_TOPOLOGY_V1"
                    },
                ]
            },
        ] -> null
      - id                        = "fhm0ngm49jhndro3iaif" -> null
      - labels                    = {} -> null
      - metadata                  = {
          - "ssh-keys" = <<-EOT
                grid:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdjIk2tI5BU398tSXfHLNtXBU+ln1sEIJriDWvdtZZMfSStE3EqK5HJLQPn743LWc23XB/9w8zILg/jDkzeUrb0vsDDbpIJCzUw2bQBMiLfNdsqFJZoTiuAnfQG5xCGPhwW1vVT3Cz6+D/TG+VMxiVqEbq6bkxjP2U4kSQ/s1X9hYdeJsiC+fjyUrVGkwtEpWaXKJtcUq/XBiVFC8tnXrHkLn6HWaaIY1GxquYby2akFYnJTgNm2PCNsY0dj3cZt2fusWYA4jcYV00zEmotxKmjT/3u/xLJ/P/nMX397gmZrv0+ihwe30doVN5OW7gI2ZDPVQqaGAYfSJMm//OG5+JhrRwp9S4X+/7CCw0E2nNdwE6OiLoKgEhLIhhkb1Fr6xL+btm+mCG1UIoYhMPQpZry9yn4zk+fQP/yFa7QTXHVMXb59W2cXCLisoCfFqnEZ7jvNTTc/Wfbb1MUMktvkisXqbMFTaSxon08eRqgKaxTMFulSHlJvDF+CKmxCG+nCPXairEdcT8c4aEJVTG7kLwof72VrbN9aivM6xQB/p2BBdjvn4SvTiAakeChSRwptFuUBPanNW47uKGmIgqBtgBxVSTIVyLhulk+YkuRKIIfcUQo1RqF1PUtEmvWem9AwTL3HilDJjlX0GwsGhDV2qLdoDzUQq7oksPNlYRet5hTQ== yaeh@nice.com
            EOT
        } -> null
      - name                      = "srv" -> null
      - network_acceleration_type = "standard" -> null
      - platform_id               = "standard-v2" -> null
      - status                    = "running" -> null
      - zone                      = "ru-central1-a" -> null
        # (5 unchanged attributes hidden)

      - boot_disk {
          - auto_delete = true -> null
          - device_name = "fhmgbfgit876q52ibttk" -> null
          - disk_id     = "fhmgbfgit876q52ibttk" -> null
          - mode        = "READ_WRITE" -> null

          - initialize_params {
              - block_size  = 4096 -> null
              - image_id    = "fd80bm0rh4rkepi5ksdi" -> null
                name        = null
              - size        = 50 -> null
              - type        = "network-hdd" -> null
                # (2 unchanged attributes hidden)
            }
        }

      - metadata_options {
          - aws_v1_http_endpoint = 1 -> null
          - aws_v1_http_token    = 2 -> null
          - gce_http_endpoint    = 1 -> null
          - gce_http_token       = 1 -> null
        }

      - network_interface {
          - index              = 0 -> null
          - ip_address         = "10.0.0.12" -> null
          - ipv4               = true -> null
          - ipv6               = false -> null
          - mac_address        = "d0:0d:bc:2c:44:ce" -> null
          - nat                = false -> null
          - security_group_ids = [] -> null
          - subnet_id          = "e9bi4v5a2vjrhdmq3qg1" -> null
            # (3 unchanged attributes hidden)
        }

      - placement_policy {
          - host_affinity_rules       = [] -> null
          - placement_group_partition = 0 -> null
            # (1 unchanged attribute hidden)
        }

      - resources {
          - core_fraction = 100 -> null
          - cores         = 2 -> null
          - gpus          = 0 -> null
          - memory        = 4 -> null
        }

      - scheduling_policy {
          - preemptible = false -> null
        }
    }

  # yandex_vpc_network.main_network will be destroyed
  - resource "yandex_vpc_network" "main_network" {
      - created_at                = "2025-03-31T10:57:41Z" -> null
      - default_security_group_id = "enp15h4slhk0q48sr1i1" -> null
      - description               = "Main VPC network for our resources" -> null
      - folder_id                 = "b1grpu8ht5p4p9pj4bkd" -> null
      - id                        = "enpbf7n8tlha2cihf556" -> null
      - labels                    = {} -> null
      - name                      = "main-network" -> null
      - subnet_ids                = [
          - "e9bi4v5a2vjrhdmq3qg1",
        ] -> null
    }

  # yandex_vpc_subnet.main_subnet will be destroyed
  - resource "yandex_vpc_subnet" "main_subnet" {
      - created_at     = "2025-03-31T10:57:43Z" -> null
      - folder_id      = "b1grpu8ht5p4p9pj4bkd" -> null
      - id             = "e9bi4v5a2vjrhdmq3qg1" -> null
      - labels         = {} -> null
      - name           = "default-subnet" -> null
      - network_id     = "enpbf7n8tlha2cihf556" -> null
      - v4_cidr_blocks = [
          - "10.0.0.0/24",
        ] -> null
      - v6_cidr_blocks = [] -> null
      - zone           = "ru-central1-a" -> null
        # (2 unchanged attributes hidden)
    }

Plan: 0 to add, 0 to change, 5 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

yandex_compute_instance.srv: Destroying... [id=fhm0ngm49jhndro3iaif]
yandex_compute_instance.k8s_app: Destroying... [id=fhmhlt0mgldt6lt8k9v4]
yandex_compute_instance.k8s_master: Destroying... [id=fhm3r2dplf61bb2lekpl]
yandex_compute_instance.k8s_app: Still destroying... [id=fhmhlt0mgldt6lt8k9v4, 10s elapsed]
yandex_compute_instance.srv: Still destroying... [id=fhm0ngm49jhndro3iaif, 10s elapsed]
yandex_compute_instance.k8s_master: Still destroying... [id=fhm3r2dplf61bb2lekpl, 10s elapsed]
yandex_compute_instance.srv: Still destroying... [id=fhm0ngm49jhndro3iaif, 20s elapsed]
yandex_compute_instance.k8s_master: Still destroying... [id=fhm3r2dplf61bb2lekpl, 20s elapsed]
yandex_compute_instance.k8s_app: Still destroying... [id=fhmhlt0mgldt6lt8k9v4, 20s elapsed]
yandex_compute_instance.k8s_app: Still destroying... [id=fhmhlt0mgldt6lt8k9v4, 30s elapsed]
yandex_compute_instance.k8s_master: Still destroying... [id=fhm3r2dplf61bb2lekpl, 30s elapsed]
yandex_compute_instance.srv: Still destroying... [id=fhm0ngm49jhndro3iaif, 30s elapsed]
yandex_compute_instance.k8s_app: Still destroying... [id=fhmhlt0mgldt6lt8k9v4, 40s elapsed]
yandex_compute_instance.k8s_master: Still destroying... [id=fhm3r2dplf61bb2lekpl, 40s elapsed]
yandex_compute_instance.srv: Still destroying... [id=fhm0ngm49jhndro3iaif, 40s elapsed]
yandex_compute_instance.k8s_master: Still destroying... [id=fhm3r2dplf61bb2lekpl, 50s elapsed]
yandex_compute_instance.k8s_app: Still destroying... [id=fhmhlt0mgldt6lt8k9v4, 50s elapsed]
yandex_compute_instance.srv: Still destroying... [id=fhm0ngm49jhndro3iaif, 50s elapsed]
yandex_compute_instance.k8s_app: Still destroying... [id=fhmhlt0mgldt6lt8k9v4, 1m0s elapsed]
yandex_compute_instance.k8s_master: Still destroying... [id=fhm3r2dplf61bb2lekpl, 1m0s elapsed]
yandex_compute_instance.srv: Still destroying... [id=fhm0ngm49jhndro3iaif, 1m0s elapsed]
yandex_compute_instance.k8s_app: Destruction complete after 1m1s
yandex_compute_instance.k8s_master: Destruction complete after 1m2s
yandex_compute_instance.srv: Destruction complete after 1m5s
yandex_vpc_subnet.main_subnet: Destroying... [id=e9bi4v5a2vjrhdmq3qg1]
yandex_vpc_subnet.main_subnet: Destruction complete after 6s
yandex_vpc_network.main_network: Destroying... [id=enpbf7n8tlha2cihf556]
yandex_vpc_network.main_network: Destruction complete after 0s

Destroy complete! Resources: 5 destroyed.
root@gridtestvm://dip/terraform# terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # yandex_compute_instance.k8s_app will be created
  + resource "yandex_compute_instance" "k8s_app" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hardware_generation       = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                grid:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdjIk2tI5BU398tSXfHLNtXBU+ln1sEIJriDWvdtZZMfSStE3EqK5HJLQPn743LWc23XB/9w8zILg/jDkzeUrb0vsDDbpIJCzUw2bQBMiLfNdsqFJZoTiuAnfQG5xCGPhwW1vVT3Cz6+            D/TG+VMxiVqEbq6bkxjP2U4kSQ/s1X9hYdeJsiC+fjyUrVGkwtEpWaXKJtcUq/XBiVFC8tnXrHkLn6HWaaIY1GxquYby2akFYnJTgNm2PCNsY0dj3cZt2fusWYA4jcYV00zEmotxKmjT/3u/xLJ/P/nMX397gmZrv0+ihwe30doVN5OW7gI2ZDPVQqaGAYfSJMm//OG            5+JhrRwp9S4X+/7CCw0E2nNdwE6OiLoKgEhLIhhkb1Fr6xL+btm+mCG1UIoYhMPQpZry9yn4zk+fQP/yFa7QTXHVMXb59W2cXCLisoCfFqnEZ7jvNTTc/Wfbb1MUMktvkisXqbMFTaSxon08eRqgKaxTMFulSHlJvDF+CKmxCG+nCPXairEdcT8c4aEJVTG7kLwof72            VrbN9aivM6xQB/p2BBdjvn4SvTiAakeChSRwptFuUBPanNW47uKGmIgqBtgBxVSTIVyLhulk+YkuRKIIfcUQo1RqF1PUtEmvWem9AwTL3HilDJjlX0GwsGhDV2qLdoDzUQq7oksPNlYRet5hTQ== yaeh@nice.com
            EOT
        }
      + name                      = "k8s-app"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v2"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-a"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd80bm0rh4rkepi5ksdi"
              + name        = (known after apply)
              + size        = 50
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = "10.0.0.11"
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = false
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 4
        }

      + scheduling_policy (known after apply)
    }

  # yandex_compute_instance.k8s_master will be created
  + resource "yandex_compute_instance" "k8s_master" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hardware_generation       = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                grid:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdjIk2tI5BU398tSXfHLNtXBU+ln1sEIJriDWvdtZZMfSStE3EqK5HJLQPn743LWc23XB/9w8zILg/jDkzeUrb0vsDDbpIJCzUw2bQBMiLfNdsqFJZoTiuAnfQG5xCGPhwW1vVT3Cz6+            D/TG+VMxiVqEbq6bkxjP2U4kSQ/s1X9hYdeJsiC+fjyUrVGkwtEpWaXKJtcUq/XBiVFC8tnXrHkLn6HWaaIY1GxquYby2akFYnJTgNm2PCNsY0dj3cZt2fusWYA4jcYV00zEmotxKmjT/3u/xLJ/P/nMX397gmZrv0+ihwe30doVN5OW7gI2ZDPVQqaGAYfSJMm//OG            5+JhrRwp9S4X+/7CCw0E2nNdwE6OiLoKgEhLIhhkb1Fr6xL+btm+mCG1UIoYhMPQpZry9yn4zk+fQP/yFa7QTXHVMXb59W2cXCLisoCfFqnEZ7jvNTTc/Wfbb1MUMktvkisXqbMFTaSxon08eRqgKaxTMFulSHlJvDF+CKmxCG+nCPXairEdcT8c4aEJVTG7kLwof72            VrbN9aivM6xQB/p2BBdjvn4SvTiAakeChSRwptFuUBPanNW47uKGmIgqBtgBxVSTIVyLhulk+YkuRKIIfcUQo1RqF1PUtEmvWem9AwTL3HilDJjlX0GwsGhDV2qLdoDzUQq7oksPNlYRet5hTQ== yaeh@nice.com
            EOT
        }
      + name                      = "k8s-master"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v2"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-a"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd80bm0rh4rkepi5ksdi"
              + name        = (known after apply)
              + size        = 50
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = "10.0.0.10"
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = false
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 4
        }

      + scheduling_policy (known after apply)
    }

  # yandex_compute_instance.srv will be created
  + resource "yandex_compute_instance" "srv" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hardware_generation       = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                grid:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdjIk2tI5BU398tSXfHLNtXBU+ln1sEIJriDWvdtZZMfSStE3EqK5HJLQPn743LWc23XB/9w8zILg/jDkzeUrb0vsDDbpIJCzUw2bQBMiLfNdsqFJZoTiuAnfQG5xCGPhwW1vVT3Cz6+            D/TG+VMxiVqEbq6bkxjP2U4kSQ/s1X9hYdeJsiC+fjyUrVGkwtEpWaXKJtcUq/XBiVFC8tnXrHkLn6HWaaIY1GxquYby2akFYnJTgNm2PCNsY0dj3cZt2fusWYA4jcYV00zEmotxKmjT/3u/xLJ/P/nMX397gmZrv0+ihwe30doVN5OW7gI2ZDPVQqaGAYfSJMm//OG            5+JhrRwp9S4X+/7CCw0E2nNdwE6OiLoKgEhLIhhkb1Fr6xL+btm+mCG1UIoYhMPQpZry9yn4zk+fQP/yFa7QTXHVMXb59W2cXCLisoCfFqnEZ7jvNTTc/Wfbb1MUMktvkisXqbMFTaSxon08eRqgKaxTMFulSHlJvDF+CKmxCG+nCPXairEdcT8c4aEJVTG7kLwof72            VrbN9aivM6xQB/p2BBdjvn4SvTiAakeChSRwptFuUBPanNW47uKGmIgqBtgBxVSTIVyLhulk+YkuRKIIfcUQo1RqF1PUtEmvWem9AwTL3HilDJjlX0GwsGhDV2qLdoDzUQq7oksPNlYRet5hTQ== yaeh@nice.com
            EOT
        }
      + name                      = "srv"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v2"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-a"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd80bm0rh4rkepi5ksdi"
              + name        = (known after apply)
              + size        = 50
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = "10.0.0.12"
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = false
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 4
        }

      + scheduling_policy (known after apply)
    }

  # yandex_vpc_network.main_network will be created
  + resource "yandex_vpc_network" "main_network" {
      + created_at                = (known after apply)
      + default_security_group_id = (known after apply)
      + description               = "Main VPC network for our resources"
      + folder_id                 = (known after apply)
      + id                        = (known after apply)
      + labels                    = (known after apply)
      + name                      = "main-network"
      + subnet_ids                = (known after apply)
    }

  # yandex_vpc_subnet.main_subnet will be created
  + resource "yandex_vpc_subnet" "main_subnet" {
      + created_at     = (known after apply)
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + labels         = (known after apply)
      + name           = "default-subnet"
      + network_id     = (known after apply)
      + v4_cidr_blocks = [
          + "10.0.0.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-a"
    }

Plan: 5 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

yandex_vpc_network.main_network: Creating...
yandex_vpc_network.main_network: Creation complete after 2s [id=enpcvh9bd30dhm6v7k4f]
yandex_vpc_subnet.main_subnet: Creating...
yandex_vpc_subnet.main_subnet: Creation complete after 0s [id=e9bapjd2hjhd2flfsvd8]
yandex_compute_instance.k8s_app: Creating...
yandex_compute_instance.srv: Creating...
yandex_compute_instance.k8s_master: Creating...
yandex_compute_instance.k8s_app: Still creating... [10s elapsed]
yandex_compute_instance.srv: Still creating... [10s elapsed]
yandex_compute_instance.k8s_master: Still creating... [10s elapsed]
yandex_compute_instance.k8s_app: Still creating... [20s elapsed]
yandex_compute_instance.srv: Still creating... [20s elapsed]
yandex_compute_instance.k8s_master: Still creating... [20s elapsed]
yandex_compute_instance.k8s_app: Still creating... [30s elapsed]
yandex_compute_instance.srv: Still creating... [30s elapsed]
yandex_compute_instance.k8s_master: Still creating... [30s elapsed]
yandex_compute_instance.k8s_app: Creation complete after 36s [id=fhmmp65ie1dbgtul2lfa]
yandex_compute_instance.srv: Still creating... [40s elapsed]
yandex_compute_instance.k8s_master: Still creating... [40s elapsed]
yandex_compute_instance.srv: Creation complete after 41s [id=fhmo1qfk3mp5p0v3icro]
yandex_compute_instance.k8s_master: Still creating... [50s elapsed]
yandex_compute_instance.k8s_master: Creation complete after 51s [id=fhmvisfnkjfl75shujhb]

Apply complete! Resources: 5 added, 0 changed, 0 destroyed.
root@gridtestvm://dip/terraform# terraform destroy
yandex_vpc_network.main_network: Refreshing state... [id=enpcvh9bd30dhm6v7k4f]
yandex_vpc_subnet.main_subnet: Refreshing state... [id=e9bapjd2hjhd2flfsvd8]
yandex_compute_instance.srv: Refreshing state... [id=fhmo1qfk3mp5p0v3icro]
yandex_compute_instance.k8s_master: Refreshing state... [id=fhmvisfnkjfl75shujhb]
yandex_compute_instance.k8s_app: Refreshing state... [id=fhmmp65ie1dbgtul2lfa]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # yandex_compute_instance.k8s_app will be destroyed
  - resource "yandex_compute_instance" "k8s_app" {
      - created_at                = "2025-03-31T13:15:36Z" -> null
      - folder_id                 = "b1grpu8ht5p4p9pj4bkd" -> null
      - fqdn                      = "fhmmp65ie1dbgtul2lfa.auto.internal" -> null
      - hardware_generation       = [
          - {
              - generation2_features = []
              - legacy_features      = [
                  - {
                      - pci_topology = "PCI_TOPOLOGY_V1"
                    },
                ]
            },
        ] -> null
      - id                        = "fhmmp65ie1dbgtul2lfa" -> null
      - labels                    = {} -> null
      - metadata                  = {
          - "ssh-keys" = <<-EOT
                grid:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdjIk2tI5BU398tSXfHLNtXBU+ln1sEIJriDWvdtZZMfSStE3EqK5HJLQPn743LWc23XB/9w8zILg/jDkzeUrb0vsDDbpIJCzUw2bQBMiLfNdsqFJZoTiuAnfQG5xCGPhwW1vVT3Cz6+            D/TG+VMxiVqEbq6bkxjP2U4kSQ/s1X9hYdeJsiC+fjyUrVGkwtEpWaXKJtcUq/XBiVFC8tnXrHkLn6HWaaIY1GxquYby2akFYnJTgNm2PCNsY0dj3cZt2fusWYA4jcYV00zEmotxKmjT/3u/xLJ/P/nMX397gmZrv0+ihwe30doVN5OW7gI2ZDPVQqaGAYfSJMm//OG            5+JhrRwp9S4X+/7CCw0E2nNdwE6OiLoKgEhLIhhkb1Fr6xL+btm+mCG1UIoYhMPQpZry9yn4zk+fQP/yFa7QTXHVMXb59W2cXCLisoCfFqnEZ7jvNTTc/Wfbb1MUMktvkisXqbMFTaSxon08eRqgKaxTMFulSHlJvDF+CKmxCG+nCPXairEdcT8c4aEJVTG7kLwof72            VrbN9aivM6xQB/p2BBdjvn4SvTiAakeChSRwptFuUBPanNW47uKGmIgqBtgBxVSTIVyLhulk+YkuRKIIfcUQo1RqF1PUtEmvWem9AwTL3HilDJjlX0GwsGhDV2qLdoDzUQq7oksPNlYRet5hTQ== yaeh@nice.com
            EOT
        } -> null
      - name                      = "k8s-app" -> null
      - network_acceleration_type = "standard" -> null
      - platform_id               = "standard-v2" -> null
      - status                    = "running" -> null
      - zone                      = "ru-central1-a" -> null
        # (5 unchanged attributes hidden)

      - boot_disk {
          - auto_delete = true -> null
          - device_name = "fhmlp07jcg4njjo64v5s" -> null
          - disk_id     = "fhmlp07jcg4njjo64v5s" -> null
          - mode        = "READ_WRITE" -> null

          - initialize_params {
              - block_size  = 4096 -> null
              - image_id    = "fd80bm0rh4rkepi5ksdi" -> null
                name        = null
              - size        = 50 -> null
              - type        = "network-hdd" -> null
                # (2 unchanged attributes hidden)
            }
        }

      - metadata_options {
          - aws_v1_http_endpoint = 1 -> null
          - aws_v1_http_token    = 2 -> null
          - gce_http_endpoint    = 1 -> null
          - gce_http_token       = 1 -> null
        }

      - network_interface {
          - index              = 0 -> null
          - ip_address         = "10.0.0.11" -> null
          - ipv4               = true -> null
          - ipv6               = false -> null
          - mac_address        = "d0:0d:16:c9:8b:27" -> null
          - nat                = false -> null
          - security_group_ids = [] -> null
          - subnet_id          = "e9bapjd2hjhd2flfsvd8" -> null
            # (3 unchanged attributes hidden)
        }

      - placement_policy {
          - host_affinity_rules       = [] -> null
          - placement_group_partition = 0 -> null
            # (1 unchanged attribute hidden)
        }

      - resources {
          - core_fraction = 100 -> null
          - cores         = 2 -> null
          - gpus          = 0 -> null
          - memory        = 4 -> null
        }

      - scheduling_policy {
          - preemptible = false -> null
        }
    }

  # yandex_compute_instance.k8s_master will be destroyed
  - resource "yandex_compute_instance" "k8s_master" {
      - created_at                = "2025-03-31T13:15:36Z" -> null
      - folder_id                 = "b1grpu8ht5p4p9pj4bkd" -> null
      - fqdn                      = "fhmvisfnkjfl75shujhb.auto.internal" -> null
      - hardware_generation       = [
          - {
              - generation2_features = []
              - legacy_features      = [
                  - {
                      - pci_topology = "PCI_TOPOLOGY_V1"
                    },
                ]
            },
        ] -> null
      - id                        = "fhmvisfnkjfl75shujhb" -> null
      - labels                    = {} -> null
      - metadata                  = {
          - "ssh-keys" = <<-EOT
                grid:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdjIk2tI5BU398tSXfHLNtXBU+ln1sEIJriDWvdtZZMfSStE3EqK5HJLQPn743LWc23XB/9w8zILg/jDkzeUrb0vsDDbpIJCzUw2bQBMiLfNdsqFJZoTiuAnfQG5xCGPhwW1vVT3Cz6+            D/TG+VMxiVqEbq6bkxjP2U4kSQ/s1X9hYdeJsiC+fjyUrVGkwtEpWaXKJtcUq/XBiVFC8tnXrHkLn6HWaaIY1GxquYby2akFYnJTgNm2PCNsY0dj3cZt2fusWYA4jcYV00zEmotxKmjT/3u/xLJ/P/nMX397gmZrv0+ihwe30doVN5OW7gI2ZDPVQqaGAYfSJMm//OG            5+JhrRwp9S4X+/7CCw0E2nNdwE6OiLoKgEhLIhhkb1Fr6xL+btm+mCG1UIoYhMPQpZry9yn4zk+fQP/yFa7QTXHVMXb59W2cXCLisoCfFqnEZ7jvNTTc/Wfbb1MUMktvkisXqbMFTaSxon08eRqgKaxTMFulSHlJvDF+CKmxCG+nCPXairEdcT8c4aEJVTG7kLwof72            VrbN9aivM6xQB/p2BBdjvn4SvTiAakeChSRwptFuUBPanNW47uKGmIgqBtgBxVSTIVyLhulk+YkuRKIIfcUQo1RqF1PUtEmvWem9AwTL3HilDJjlX0GwsGhDV2qLdoDzUQq7oksPNlYRet5hTQ== yaeh@nice.com
            EOT
        } -> null
      - name                      = "k8s-master" -> null
      - network_acceleration_type = "standard" -> null
      - platform_id               = "standard-v2" -> null
      - status                    = "running" -> null
      - zone                      = "ru-central1-a" -> null
        # (5 unchanged attributes hidden)

      - boot_disk {
          - auto_delete = true -> null
          - device_name = "fhmbjuf3vfjkafki7ur5" -> null
          - disk_id     = "fhmbjuf3vfjkafki7ur5" -> null
          - mode        = "READ_WRITE" -> null

          - initialize_params {
              - block_size  = 4096 -> null
              - image_id    = "fd80bm0rh4rkepi5ksdi" -> null
                name        = null
              - size        = 50 -> null
              - type        = "network-hdd" -> null
                # (2 unchanged attributes hidden)
            }
        }

      - metadata_options {
          - aws_v1_http_endpoint = 1 -> null
          - aws_v1_http_token    = 2 -> null
          - gce_http_endpoint    = 1 -> null
          - gce_http_token       = 1 -> null
        }

      - network_interface {
          - index              = 0 -> null
          - ip_address         = "10.0.0.10" -> null
          - ipv4               = true -> null
          - ipv6               = false -> null
          - mac_address        = "d0:0d:1f:97:1f:7a" -> null
          - nat                = false -> null
          - security_group_ids = [] -> null
          - subnet_id          = "e9bapjd2hjhd2flfsvd8" -> null
            # (3 unchanged attributes hidden)
        }

      - placement_policy {
          - host_affinity_rules       = [] -> null
          - placement_group_partition = 0 -> null
            # (1 unchanged attribute hidden)
        }

      - resources {
          - core_fraction = 100 -> null
          - cores         = 2 -> null
          - gpus          = 0 -> null
          - memory        = 4 -> null
        }

      - scheduling_policy {
          - preemptible = false -> null
        }
    }

  # yandex_compute_instance.srv will be destroyed
  - resource "yandex_compute_instance" "srv" {
      - created_at                = "2025-03-31T13:15:36Z" -> null
      - folder_id                 = "b1grpu8ht5p4p9pj4bkd" -> null
      - fqdn                      = "fhmo1qfk3mp5p0v3icro.auto.internal" -> null
      - hardware_generation       = [
          - {
              - generation2_features = []
              - legacy_features      = [
                  - {
                      - pci_topology = "PCI_TOPOLOGY_V1"
                    },
                ]
            },
        ] -> null
      - id                        = "fhmo1qfk3mp5p0v3icro" -> null
      - labels                    = {} -> null
      - metadata                  = {
          - "ssh-keys" = <<-EOT
                grid:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdjIk2tI5BU398tSXfHLNtXBU+ln1sEIJriDWvdtZZMfSStE3EqK5HJLQPn743LWc23XB/9w8zILg/jDkzeUrb0vsDDbpIJCzUw2bQBMiLfNdsqFJZoTiuAnfQG5xCGPhwW1vVT3Cz6+            D/TG+VMxiVqEbq6bkxjP2U4kSQ/s1X9hYdeJsiC+fjyUrVGkwtEpWaXKJtcUq/XBiVFC8tnXrHkLn6HWaaIY1GxquYby2akFYnJTgNm2PCNsY0dj3cZt2fusWYA4jcYV00zEmotxKmjT/3u/xLJ/P/nMX397gmZrv0+ihwe30doVN5OW7gI2ZDPVQqaGAYfSJMm//OG            5+JhrRwp9S4X+/7CCw0E2nNdwE6OiLoKgEhLIhhkb1Fr6xL+btm+mCG1UIoYhMPQpZry9yn4zk+fQP/yFa7QTXHVMXb59W2cXCLisoCfFqnEZ7jvNTTc/Wfbb1MUMktvkisXqbMFTaSxon08eRqgKaxTMFulSHlJvDF+CKmxCG+nCPXairEdcT8c4aEJVTG7kLwof72            VrbN9aivM6xQB/p2BBdjvn4SvTiAakeChSRwptFuUBPanNW47uKGmIgqBtgBxVSTIVyLhulk+YkuRKIIfcUQo1RqF1PUtEmvWem9AwTL3HilDJjlX0GwsGhDV2qLdoDzUQq7oksPNlYRet5hTQ== yaeh@nice.com
            EOT
        } -> null
      - name                      = "srv" -> null
      - network_acceleration_type = "standard" -> null
      - platform_id               = "standard-v2" -> null
      - status                    = "running" -> null
      - zone                      = "ru-central1-a" -> null
        # (5 unchanged attributes hidden)

      - boot_disk {
          - auto_delete = true -> null
          - device_name = "fhm64per252oll36vurj" -> null
          - disk_id     = "fhm64per252oll36vurj" -> null
          - mode        = "READ_WRITE" -> null

          - initialize_params {
              - block_size  = 4096 -> null
              - image_id    = "fd80bm0rh4rkepi5ksdi" -> null
                name        = null
              - size        = 50 -> null
              - type        = "network-hdd" -> null
                # (2 unchanged attributes hidden)
            }
        }

      - metadata_options {
          - aws_v1_http_endpoint = 1 -> null
          - aws_v1_http_token    = 2 -> null
          - gce_http_endpoint    = 1 -> null
          - gce_http_token       = 1 -> null
        }

      - network_interface {
          - index              = 0 -> null
          - ip_address         = "10.0.0.12" -> null
          - ipv4               = true -> null
          - ipv6               = false -> null
          - mac_address        = "d0:0d:18:0e:9f:41" -> null
          - nat                = false -> null
          - security_group_ids = [] -> null
          - subnet_id          = "e9bapjd2hjhd2flfsvd8" -> null
            # (3 unchanged attributes hidden)
        }

      - placement_policy {
          - host_affinity_rules       = [] -> null
          - placement_group_partition = 0 -> null
            # (1 unchanged attribute hidden)
        }

      - resources {
          - core_fraction = 100 -> null
          - cores         = 2 -> null
          - gpus          = 0 -> null
          - memory        = 4 -> null
        }

      - scheduling_policy {
          - preemptible = false -> null
        }
    }

  # yandex_vpc_network.main_network will be destroyed
  - resource "yandex_vpc_network" "main_network" {
      - created_at                = "2025-03-31T13:15:34Z" -> null
      - default_security_group_id = "enpm1nveq3phg75v2gj2" -> null
      - description               = "Main VPC network for our resources" -> null
      - folder_id                 = "b1grpu8ht5p4p9pj4bkd" -> null
      - id                        = "enpcvh9bd30dhm6v7k4f" -> null
      - labels                    = {} -> null
      - name                      = "main-network" -> null
      - subnet_ids                = [
          - "e9bapjd2hjhd2flfsvd8",
        ] -> null
    }

  # yandex_vpc_subnet.main_subnet will be destroyed
  - resource "yandex_vpc_subnet" "main_subnet" {
      - created_at     = "2025-03-31T13:15:35Z" -> null
      - folder_id      = "b1grpu8ht5p4p9pj4bkd" -> null
      - id             = "e9bapjd2hjhd2flfsvd8" -> null
      - labels         = {} -> null
      - name           = "default-subnet" -> null
      - network_id     = "enpcvh9bd30dhm6v7k4f" -> null
      - v4_cidr_blocks = [
          - "10.0.0.0/24",
        ] -> null
      - v6_cidr_blocks = [] -> null
      - zone           = "ru-central1-a" -> null
        # (2 unchanged attributes hidden)
    }

Plan: 0 to add, 0 to change, 5 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

yandex_compute_instance.k8s_master: Destroying... [id=fhmvisfnkjfl75shujhb]
yandex_compute_instance.srv: Destroying... [id=fhmo1qfk3mp5p0v3icro]
yandex_compute_instance.k8s_app: Destroying... [id=fhmmp65ie1dbgtul2lfa]
yandex_compute_instance.k8s_master: Still destroying... [id=fhmvisfnkjfl75shujhb, 10s elapsed]
yandex_compute_instance.srv: Still destroying... [id=fhmo1qfk3mp5p0v3icro, 10s elapsed]
yandex_compute_instance.k8s_app: Still destroying... [id=fhmmp65ie1dbgtul2lfa, 10s elapsed]
yandex_compute_instance.k8s_master: Still destroying... [id=fhmvisfnkjfl75shujhb, 20s elapsed]
yandex_compute_instance.srv: Still destroying... [id=fhmo1qfk3mp5p0v3icro, 20s elapsed]
yandex_compute_instance.k8s_app: Still destroying... [id=fhmmp65ie1dbgtul2lfa, 20s elapsed]
yandex_compute_instance.k8s_master: Still destroying... [id=fhmvisfnkjfl75shujhb, 30s elapsed]
yandex_compute_instance.srv: Still destroying... [id=fhmo1qfk3mp5p0v3icro, 30s elapsed]
yandex_compute_instance.k8s_app: Still destroying... [id=fhmmp65ie1dbgtul2lfa, 30s elapsed]
yandex_compute_instance.k8s_master: Still destroying... [id=fhmvisfnkjfl75shujhb, 40s elapsed]
yandex_compute_instance.srv: Still destroying... [id=fhmo1qfk3mp5p0v3icro, 40s elapsed]
yandex_compute_instance.k8s_app: Still destroying... [id=fhmmp65ie1dbgtul2lfa, 40s elapsed]
yandex_compute_instance.k8s_master: Still destroying... [id=fhmvisfnkjfl75shujhb, 50s elapsed]
yandex_compute_instance.k8s_app: Still destroying... [id=fhmmp65ie1dbgtul2lfa, 50s elapsed]
yandex_compute_instance.srv: Still destroying... [id=fhmo1qfk3mp5p0v3icro, 50s elapsed]
yandex_compute_instance.k8s_app: Destruction complete after 58s
yandex_compute_instance.k8s_master: Still destroying... [id=fhmvisfnkjfl75shujhb, 1m0s elapsed]
yandex_compute_instance.srv: Still destroying... [id=fhmo1qfk3mp5p0v3icro, 1m0s elapsed]
yandex_compute_instance.k8s_master: Still destroying... [id=fhmvisfnkjfl75shujhb, 1m10s elapsed]
yandex_compute_instance.srv: Still destroying... [id=fhmo1qfk3mp5p0v3icro, 1m10s elapsed]
yandex_compute_instance.k8s_master: Destruction complete after 1m11s
yandex_compute_instance.srv: Still destroying... [id=fhmo1qfk3mp5p0v3icro, 1m20s elapsed]
yandex_compute_instance.srv: Destruction complete after 1m30s
yandex_vpc_subnet.main_subnet: Destroying... [id=e9bapjd2hjhd2flfsvd8]
yandex_vpc_subnet.main_subnet: Destruction complete after 6s
yandex_vpc_network.main_network: Destroying... [id=enpcvh9bd30dhm6v7k4f]
yandex_vpc_network.main_network: Destruction complete after 2s

Destroy complete! Resources: 5 destroyed.
root@gridtestvm://dip/terraform# yc vpc address list
+----+------+---------+----------+------+
| ID | NAME | ADDRESS | RESERVED | USED |
+----+------+---------+----------+------+
+----+------+---------+----------+------+

root@gridtestvm://dip/terraform# yc vpc address create k8s-master-ip --external-ipv4 zone=ru-central1-a
yc vpc address create k8s-app-ip --external-ipv4 zone=ru-central1-a
yc vpc address create srv-ip --external-ipv4 zone=ru-central1-a
ERROR: unknown command "k8s-master-ip" for "yc vpc address create"

Usage: yc vpc address create <ADDRESS-NAME> [Flags...] [Global Flags...]
For detailed information on this command and its flags, run: yc vpc address create --help
ERROR: unknown command "k8s-app-ip" for "yc vpc address create"

Usage: yc vpc address create <ADDRESS-NAME> [Flags...] [Global Flags...]
For detailed information on this command and its flags, run: yc vpc address create --help
ERROR: unknown command "srv-ip" for "yc vpc address create"

Usage: yc vpc address create <ADDRESS-NAME> [Flags...] [Global Flags...]
For detailed information on this command and its flags, run: yc vpc address create --help
root@gridtestvm://dip/terraform# yc vpc address list
+----+------+---------+----------+------+
| ID | NAME | ADDRESS | RESERVED | USED |
+----+------+---------+----------+------+
+----+------+---------+----------+------+

root@gridtestvm://dip/terraform# yc vpc address create k8s-master-ip --external-ipv4 zone=ru-central1-a
yc vpc address create k8s-app-ip --external-ipv4 zone=ru-central1-a
yc vpc address create srv-ip --external-ipv4 zone=ru-central1-a
ERROR: unknown command "k8s-master-ip" for "yc vpc address create"

Usage: yc vpc address create <ADDRESS-NAME> [Flags...] [Global Flags...]
For detailed information on this command and its flags, run: yc vpc address create --help
ERROR: unknown command "k8s-app-ip" for "yc vpc address create"

Usage: yc vpc address create <ADDRESS-NAME> [Flags...] [Global Flags...]
For detailed information on this command and its flags, run: yc vpc address create --help
ERROR: unknown command "srv-ip" for "yc vpc address create"

Usage: yc vpc address create <ADDRESS-NAME> [Flags...] [Global Flags...]
For detailed information on this command and its flags, run: yc vpc address create --help
root@gridtestvm://dip/terraform# yc vpc address create --name k8s-master-ip --external-ipv4 zone=ru-central1-a
yc vpc address create --name k8s-app-ip --external-ipv4 zone=ru-central1-a
yc vpc address create --name srv-ip --external-ipv4 zone=ru-central1-a
id: e9b9e6hjkb5je2chruro
folder_id: b1grpu8ht5p4p9pj4bkd
created_at: "2025-03-31T13:43:20Z"
name: k8s-master-ip
external_ipv4_address:
  address: 158.160.119.174
  zone_id: ru-central1-a
  requirements: {}
reserved: true
type: EXTERNAL
ip_version: IPV4

id: e9bktps0f5fi2s7he386
folder_id: b1grpu8ht5p4p9pj4bkd
created_at: "2025-03-31T13:43:22Z"
name: k8s-app-ip
external_ipv4_address:
  address: 158.160.115.222
  zone_id: ru-central1-a
  requirements: {}
reserved: true
type: EXTERNAL
ip_version: IPV4

ERROR: rpc error: code = ResourceExhausted desc = Quota limit vpc.externalStaticAddresses.count exceeded


server-request-id: 31834484-c254-49e3-8c16-aa46e603d0d3
client-request-id: 81b5cb91-adeb-45de-b25f-7080940de014
server-trace-id: 4b2804e24805e6f:dcff2952180a23ae:4b2804e24805e6f:1
client-trace-id: 1de63d12-70d6-44de-b8ad-b174966f843a

Use server-request-id, client-request-id, server-trace-id, client-trace-id for investigation of issues in cloud support
If you are going to ask for help of cloud support, please send the following trace file: /root/.config/yandex-cloud/logs/2025-03-31T09-43-22.966-yc_vpc_address_create.txt
root@gridtestvm://dip/terraform# yc vpc address list
+----------------------+---------------+-----------------+----------+-------+
|          ID          |     NAME      |     ADDRESS     | RESERVED | USED  |
+----------------------+---------------+-----------------+----------+-------+
| e9b9e6hjkb5je2chruro | k8s-master-ip | 158.160.119.174 | true     | false |
| e9bktps0f5fi2s7he386 | k8s-app-ip    | 158.160.115.222 | true     | false |
+----------------------+---------------+-----------------+----------+-------+

root@gridtestvm://dip/terraform# yc vpc address delete e9b9e6hjkb5je2chruro
root@gridtestvm://dip/terraform# yc vpc address delete e9bktps0f5fi2s7he386
root@gridtestvm://dip/terraform# yc vpc address list
+----+------+---------+----------+------+
| ID | NAME | ADDRESS | RESERVED | USED |
+----+------+---------+----------+------+
+----+------+---------+----------+------+

root@gridtestvm://dip/terraform# ll
total 27240
drwxr-xr-x 3 grid grid     4096 Mar 31 09:21 ./
drwxr-xr-x 4 root root     4096 Mar 31 04:06 ../
-rw-r--r-- 1 grid grid     4922 Mar 26 08:34 LICENSE.txt
-rw-r--r-- 1 grid grid     2890 Mar 31 06:57 main.tf
drwxr-xr-x 3 root root     4096 Mar 31 05:28 .terraform/
-rw-rw-r-- 1 grid grid 27843250 Mar 31 03:59 terraform_1.11.3_linux_amd64.zip
-rw-r--r-- 1 root root      289 Mar 31 05:44 .terraform.lock.hcl
-rw-r--r-- 1 root root      182 Mar 31 09:21 terraform.tfstate
-rw-r--r-- 1 root root    16036 Mar 31 09:20 terraform.tfstate.backup
root@gridtestvm://dip/terraform# nano main.tf
root@gridtestvm://dip/terraform# terraform init
Initializing the backend...
Initializing provider plugins...
- Reusing previous version of yandex-cloud/yandex from the dependency lock file
- Using previously-installed yandex-cloud/yandex v0.133.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
root@gridtestvm://dip/terraform# terraform apply
╷
│ Error: Unsupported argument
│
│   on main.tf line 35, in resource "yandex_vpc_address" "k8s_master_ip":
│   35:     zone = "ru-central1-a"
│
│ An argument named "zone" is not expected here.
╵
╷
│ Error: Unsupported block type
│
│   on main.tf line 61, in resource "yandex_compute_instance" "k8s_master":
│   61:     primary_v4_address {
│
│ Blocks of type "primary_v4_address" are not expected here.
╵
╷
│ Error: Unsupported argument
│
│   on main.tf line 75, in resource "yandex_vpc_address" "k8s_app_ip":
│   75:     zone = "ru-central1-a"
│
│ An argument named "zone" is not expected here.
╵
╷
│ Error: Unsupported block type
│
│   on main.tf line 101, in resource "yandex_compute_instance" "k8s_app":
│  101:     primary_v4_address {
│
│ Blocks of type "primary_v4_address" are not expected here.
╵
╷
│ Error: Unsupported argument
│
│   on main.tf line 115, in resource "yandex_vpc_address" "srv_ip":
│  115:     zone = "ru-central1-a"
│
│ An argument named "zone" is not expected here.
╵
╷
│ Error: Unsupported block type
│
│   on main.tf line 141, in resource "yandex_compute_instance" "srv":
│  141:     primary_v4_address {
│
│ Blocks of type "primary_v4_address" are not expected here.
╵
root@gridtestvm://dip/terraform# nano main.tf
root@gridtestvm://dip/terraform# terraform init
Initializing the backend...
Initializing provider plugins...
- Reusing previous version of yandex-cloud/yandex from the dependency lock file
- Using previously-installed yandex-cloud/yandex v0.133.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
root@gridtestvm://dip/terraform# terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # yandex_compute_instance.k8s_app will be created
  + resource "yandex_compute_instance" "k8s_app" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hardware_generation       = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                grid:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdjIk2tI5BU398tSXfHLNtXBU+ln1sEIJriDWvdtZZMfSStE3EqK5HJLQPn743LWc23XB/9w8zILg/jDkzeUrb0vsDDbpIJCzUw2bQBMiLfNdsqFJZoTiuAnfQG5xCGPhwW1vVT3Cz6+D/TG+VMxiVqEbq6bkxjP2U4kSQ/s1X9hYdeJsiC+fjyUrVGkwtEpWaXKJtcUq/XBiVFC8tnXrHkLn6HWaaIY1GxquYby2akFYnJTgNm2PCNsY0dj3cZt2fusWYA4jcYV00zEmotxKmjT/3u/xLJ/P/nMX397gmZrv0+ihwe30doVN5OW7gI2ZDPVQqaGAYfSJMm//OG5+JhrRwp9S4X+/7CCw0E2nNdwE6OiLoKgEhLIhhkb1Fr6xL+btm+mCG1UIoYhMPQpZry9yn4zk+fQP/yFa7QTXHVMXb59W2cXCLisoCfFqnEZ7jvNTTc/Wfbb1MUMktvkisXqbMFTaSxon08eRqgKaxTMFulSHlJvDF+CKmxCG+nCPXairEdcT8c4aEJVTG7kLwof72VrbN9aivM6xQB/p2BBdjvn4SvTiAakeChSRwptFuUBPanNW47uKGmIgqBtgBxVSTIVyLhulk+YkuRKIIfcUQo1RqF1PUtEmvWem9AwTL3HilDJjlX0GwsGhDV2qLdoDzUQq7oksPNlYRet5hTQ== yaeh@nice.com
            EOT
        }
      + name                      = "k8s-app"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v2"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-a"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd80bm0rh4rkepi5ksdi"
              + name        = (known after apply)
              + size        = 50
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 4
        }

      + scheduling_policy (known after apply)
    }

  # yandex_compute_instance.k8s_master will be created
  + resource "yandex_compute_instance" "k8s_master" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hardware_generation       = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                grid:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdjIk2tI5BU398tSXfHLNtXBU+ln1sEIJriDWvdtZZMfSStE3EqK5HJLQPn743LWc23XB/9w8zILg/jDkzeUrb0vsDDbpIJCzUw2bQBMiLfNdsqFJZoTiuAnfQG5xCGPhwW1vVT3Cz6+D/TG+VMxiVqEbq6bkxjP2U4kSQ/s1X9hYdeJsiC+fjyUrVGkwtEpWaXKJtcUq/XBiVFC8tnXrHkLn6HWaaIY1GxquYby2akFYnJTgNm2PCNsY0dj3cZt2fusWYA4jcYV00zEmotxKmjT/3u/xLJ/P/nMX397gmZrv0+ihwe30doVN5OW7gI2ZDPVQqaGAYfSJMm//OG5+JhrRwp9S4X+/7CCw0E2nNdwE6OiLoKgEhLIhhkb1Fr6xL+btm+mCG1UIoYhMPQpZry9yn4zk+fQP/yFa7QTXHVMXb59W2cXCLisoCfFqnEZ7jvNTTc/Wfbb1MUMktvkisXqbMFTaSxon08eRqgKaxTMFulSHlJvDF+CKmxCG+nCPXairEdcT8c4aEJVTG7kLwof72VrbN9aivM6xQB/p2BBdjvn4SvTiAakeChSRwptFuUBPanNW47uKGmIgqBtgBxVSTIVyLhulk+YkuRKIIfcUQo1RqF1PUtEmvWem9AwTL3HilDJjlX0GwsGhDV2qLdoDzUQq7oksPNlYRet5hTQ== yaeh@nice.com
            EOT
        }
      + name                      = "k8s-master"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v2"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-a"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd80bm0rh4rkepi5ksdi"
              + name        = (known after apply)
              + size        = 50
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 4
        }

      + scheduling_policy (known after apply)
    }

  # yandex_compute_instance.srv will be created
  + resource "yandex_compute_instance" "srv" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hardware_generation       = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                grid:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdjIk2tI5BU398tSXfHLNtXBU+ln1sEIJriDWvdtZZMfSStE3EqK5HJLQPn743LWc23XB/9w8zILg/jDkzeUrb0vsDDbpIJCzUw2bQBMiLfNdsqFJZoTiuAnfQG5xCGPhwW1vVT3Cz6+D/TG+VMxiVqEbq6bkxjP2U4kSQ/s1X9hYdeJsiC+fjyUrVGkwtEpWaXKJtcUq/XBiVFC8tnXrHkLn6HWaaIY1GxquYby2akFYnJTgNm2PCNsY0dj3cZt2fusWYA4jcYV00zEmotxKmjT/3u/xLJ/P/nMX397gmZrv0+ihwe30doVN5OW7gI2ZDPVQqaGAYfSJMm//OG5+JhrRwp9S4X+/7CCw0E2nNdwE6OiLoKgEhLIhhkb1Fr6xL+btm+mCG1UIoYhMPQpZry9yn4zk+fQP/yFa7QTXHVMXb59W2cXCLisoCfFqnEZ7jvNTTc/Wfbb1MUMktvkisXqbMFTaSxon08eRqgKaxTMFulSHlJvDF+CKmxCG+nCPXairEdcT8c4aEJVTG7kLwof72VrbN9aivM6xQB/p2BBdjvn4SvTiAakeChSRwptFuUBPanNW47uKGmIgqBtgBxVSTIVyLhulk+YkuRKIIfcUQo1RqF1PUtEmvWem9AwTL3HilDJjlX0GwsGhDV2qLdoDzUQq7oksPNlYRet5hTQ== yaeh@nice.com
            EOT
        }
      + name                      = "srv"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v2"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-a"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd80bm0rh4rkepi5ksdi"
              + name        = (known after apply)
              + size        = 50
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 4
        }

      + scheduling_policy (known after apply)
    }

  # yandex_vpc_network.main_network will be created
  + resource "yandex_vpc_network" "main_network" {
      + created_at                = (known after apply)
      + default_security_group_id = (known after apply)
      + description               = "Main VPC network for our resources"
      + folder_id                 = (known after apply)
      + id                        = (known after apply)
      + labels                    = (known after apply)
      + name                      = "main-network"
      + subnet_ids                = (known after apply)
    }

  # yandex_vpc_subnet.main_subnet will be created
  + resource "yandex_vpc_subnet" "main_subnet" {
      + created_at     = (known after apply)
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + labels         = (known after apply)
      + name           = "default-subnet"
      + network_id     = (known after apply)
      + v4_cidr_blocks = [
          + "10.0.0.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-a"
    }

Plan: 5 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

yandex_vpc_network.main_network: Creating...
yandex_vpc_network.main_network: Creation complete after 2s [id=enp0iqceancccluml64h]
yandex_vpc_subnet.main_subnet: Creating...
yandex_vpc_subnet.main_subnet: Creation complete after 0s [id=e9bvulkp141eamfite5b]
yandex_compute_instance.k8s_master: Creating...
yandex_compute_instance.k8s_app: Creating...
yandex_compute_instance.srv: Creating...
yandex_compute_instance.k8s_app: Still creating... [10s elapsed]
yandex_compute_instance.k8s_master: Still creating... [10s elapsed]
yandex_compute_instance.srv: Still creating... [10s elapsed]
yandex_compute_instance.k8s_app: Still creating... [20s elapsed]
yandex_compute_instance.k8s_master: Still creating... [20s elapsed]
yandex_compute_instance.srv: Still creating... [20s elapsed]
yandex_compute_instance.k8s_app: Still creating... [30s elapsed]
yandex_compute_instance.k8s_master: Still creating... [30s elapsed]
yandex_compute_instance.srv: Still creating... [30s elapsed]
yandex_compute_instance.k8s_app: Creation complete after 38s [id=fhmgqqjeci6g026guug9]
yandex_compute_instance.k8s_master: Still creating... [40s elapsed]
yandex_compute_instance.srv: Still creating... [40s elapsed]
yandex_compute_instance.srv: Creation complete after 42s [id=fhmavff7ggbp2ama2u4h]
yandex_compute_instance.k8s_master: Still creating... [50s elapsed]
yandex_compute_instance.k8s_master: Creation complete after 52s [id=fhmq68p1q1l9ijc37v6s]

Apply complete! Resources: 5 added, 0 changed, 0 destroyed.
root@gridtestvm://dip/terraform# yc vpc address list
+----------------------+------+---------------+----------+------+
|          ID          | NAME |    ADDRESS    | RESERVED | USED |
+----------------------+------+---------------+----------+------+
| e9b1413ibk5ljk48c0r2 |      |               | false    | true |
| e9b47ote0hblvog3fiqr |      |               | false    | true |
| e9baentj7kdv1n2ljd21 |      | 51.250.6.70   | false    | true |
| e9bd7eak4785u7ivgc59 |      | 62.84.112.43  | false    | true |
| e9becmpps4mnvht3te3d |      |               | false    | true |
| e9bj60n57q1d389usisl |      | 89.169.143.18 | false    | true |
+----------------------+------+---------------+----------+------+

root@gridtestvm://dip/terraform# yc vpc address list --format yaml
- id: e9b1413ibk5ljk48c0r2
  folder_id: b1grpu8ht5p4p9pj4bkd
  created_at: "2025-03-31T13:52:26Z"
  used: true
  type: INTERNAL
  ip_version: IPV4
- id: e9b47ote0hblvog3fiqr
  folder_id: b1grpu8ht5p4p9pj4bkd
  created_at: "2025-03-31T13:52:24Z"
  used: true
  type: INTERNAL
  ip_version: IPV4
- id: e9baentj7kdv1n2ljd21
  folder_id: b1grpu8ht5p4p9pj4bkd
  created_at: "2025-03-31T13:52:24Z"
  external_ipv4_address:
    address: 51.250.6.70
    zone_id: ru-central1-a
    requirements: {}
  used: true
  type: EXTERNAL
  ip_version: IPV4
- id: e9bd7eak4785u7ivgc59
  folder_id: b1grpu8ht5p4p9pj4bkd
  created_at: "2025-03-31T13:52:28Z"
  external_ipv4_address:
    address: 62.84.112.43
    zone_id: ru-central1-a
    requirements: {}
  used: true
  type: EXTERNAL
  ip_version: IPV4
- id: e9becmpps4mnvht3te3d
  folder_id: b1grpu8ht5p4p9pj4bkd
  created_at: "2025-03-31T13:52:27Z"
  used: true
  type: INTERNAL
  ip_version: IPV4
- id: e9bj60n57q1d389usisl
  folder_id: b1grpu8ht5p4p9pj4bkd
  created_at: "2025-03-31T13:52:27Z"
  external_ipv4_address:
    address: 89.169.143.18
    zone_id: ru-central1-a
    requirements: {}
  used: true
  type: EXTERNAL
  ip_version: IPV4

root@gridtestvm://dip/terraform# yc vpc address list --format json
[
  {
    "id": "e9b1413ibk5ljk48c0r2",
    "folder_id": "b1grpu8ht5p4p9pj4bkd",
    "created_at": "2025-03-31T13:52:26Z",
    "used": true,
    "type": "INTERNAL",
    "ip_version": "IPV4"
  },
  {
    "id": "e9b47ote0hblvog3fiqr",
    "folder_id": "b1grpu8ht5p4p9pj4bkd",
    "created_at": "2025-03-31T13:52:24Z",
    "used": true,
    "type": "INTERNAL",
    "ip_version": "IPV4"
  },
  {
    "id": "e9baentj7kdv1n2ljd21",
    "folder_id": "b1grpu8ht5p4p9pj4bkd",
    "created_at": "2025-03-31T13:52:24Z",
    "external_ipv4_address": {
      "address": "51.250.6.70",
      "zone_id": "ru-central1-a",
      "requirements": {}
    },
    "used": true,
    "type": "EXTERNAL",
    "ip_version": "IPV4"
  },
  {
    "id": "e9bd7eak4785u7ivgc59",
    "folder_id": "b1grpu8ht5p4p9pj4bkd",
    "created_at": "2025-03-31T13:52:28Z",
    "external_ipv4_address": {
      "address": "62.84.112.43",
      "zone_id": "ru-central1-a",
      "requirements": {}
    },
    "used": true,
    "type": "EXTERNAL",
    "ip_version": "IPV4"
  },
  {
    "id": "e9becmpps4mnvht3te3d",
    "folder_id": "b1grpu8ht5p4p9pj4bkd",
    "created_at": "2025-03-31T13:52:27Z",
    "used": true,
    "type": "INTERNAL",
    "ip_version": "IPV4"
  },
  {
    "id": "e9bj60n57q1d389usisl",
    "folder_id": "b1grpu8ht5p4p9pj4bkd",
    "created_at": "2025-03-31T13:52:27Z",
    "external_ipv4_address": {
      "address": "89.169.143.18",
      "zone_id": "ru-central1-a",
      "requirements": {}
    },
    "used": true,
    "type": "EXTERNAL",
    "ip_version": "IPV4"
  }
]

root@gridtestvm://dip/terraform#
root@gridtestvm://dip/terraform#
root@gridtestvm://dip/terraform#
root@gridtestvm://dip/terraform#
root@gridtestvm://dip/terraform# ssh grid@51.250.6.70
The authenticity of host '51.250.6.70 (51.250.6.70)' can't be established.
ED25519 key fingerprint is SHA256:CgPat9G38kTf17aTNTBxIxpX8FW8/X0hlu70xgr4iUc.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? y
Please type 'yes', 'no' or the fingerprint: yes
Warning: Permanently added '51.250.6.70' (ED25519) to the list of known hosts.
grid@51.250.6.70's password:
Permission denied, please try again.
grid@51.250.6.70's password:
Permission denied, please try again.
grid@51.250.6.70's password:
grid@51.250.6.70: Permission denied (publickey,password).
root@gridtestvm://dip/terraform#
root@gridtestvm://dip/terraform#
root@gridtestvm://dip/terraform#
root@gridtestvm://dip/terraform# ssh grid@51.250.6.70
grid@51.250.6.70's password:
Permission denied, please try again.
grid@51.250.6.70's password:
Permission denied, please try again.
grid@51.250.6.70's password:
grid@51.250.6.70: Permission denied (publickey,password).
root@gridtestvm://dip/terraform#
root@gridtestvm://dip/terraform#
root@gridtestvm://dip/terraform# nano main.tf
  GNU nano 7.2                                                                                          main.tf
terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.133.0"
    }
  }
}

provider "yandex" {
  cloud_id  = "b1gophec4tfv8sar6590"
  folder_id = "b1grpu8ht5p4p9pj4bkd"
  zone      = "ru-central1-a"
  token     = "y0__xDe867PBxjB3RMgk7nQ1xIwl7CKhwg5bNAGNCci-DUeMNGhZ43i24VaiA"
}

# Создание VPC (Virtual Private Cloud)
resource "yandex_vpc_network" "main_network" {
  name        = "main-network"
  description = "Main VPC network for our resources"
}

# Создание Subnet (субсети) в созданной сети
resource "yandex_vpc_subnet" "main_subnet" {
  name           = "default-subnet"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.main_network.id
  v4_cidr_blocks = ["10.0.0.0/24"]
}

# Создание Compute Instance для k8s-master с публичным IP
resource "yandex_compute_instance" "k8s_master" {
  name        = "k8s-master"
  zone        = "ru-central1-a"
  platform_id = "standard-v2"

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd80bm0rh4rkepi5ksdi"
      size     = 50
      type     = "network-hdd"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.main_subnet.id
    nat       = true  # Включает публичный IP
  }

  metadata = {
    ssh-keys = "grid:${file("/home/grid/.ssh/id_rsa.pub")}"
  }
}
                                                                                                [ Read 116 lines ]
^G Help          ^O Write Out     ^W Where Is      ^K Cut           ^T Execute       ^C Location      M-U Undo         M-A Set Mark     M-] To Bracket   M-Q Previous     ^B Back          ^◂ Prev Word
^X Exit          ^R Read File     ^\ Replace       ^U Paste         ^J Justify       ^/ Go To Line    M-E Redo         M-6 Copy         ^Q Where Was     M-W Next         ^F Forward       ^▸ Next Word
