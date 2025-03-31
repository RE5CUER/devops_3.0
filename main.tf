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

# Создание Compute Instance с подключением к сети и субсети
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
      image_id = "fd80bm0rh4rkepi5ksdi"  # ID образа Ubuntu
      size     = 50
      type     = "network-hdd"
    }
  }

  network_interface {
    subnet_id     = yandex_vpc_subnet.main_subnet.id
    nat_ip_address = true  # Присваиваем публичный IP
  }

  metadata = {
    ssh-keys = "grid:${file("/home/grid/.ssh/id_rsa.pub")}"  # Ваш публичный ключ для доступа
  }
}

resource "yandex_compute_instance" "k8s_app" {
  name        = "k8s-app"
  zone        = "ru-central1-a"
  platform_id = "standard-v2"

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd80bm0rh4rkepi5ksdi"  # ID образа Ubuntu
      size     = 50
      type     = "network-hdd"
    }
  }

  network_interface {
    subnet_id     = yandex_vpc_subnet.main_subnet.id
    nat_ip_address = true  # Присваиваем публичный IP
  }

  metadata = {
    ssh-keys = "grid:${file("/home/grid/.ssh/id_rsa.pub")}"  # Ваш публичный ключ для доступа
  }
}

resource "yandex_compute_instance" "srv" {
  name        = "srv"
  zone        = "ru-central1-a"
  platform_id = "standard-v2"

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd80bm0rh4rkepi5ksdi"  # ID образа Ubuntu
      size     = 50
      type     = "network-hdd"
    }
  }

  network_interface {
    subnet_id     = yandex_vpc_subnet.main_subnet.id
    nat_ip_address = true  # Присваиваем публичный IP
  }

  metadata = {
    ssh-keys = "grid:${file("/home/grid/.ssh/id_rsa.pub")}"  # Ваш публичный ключ для доступа
  }
}
