
resource "virtualbox_vm" "node" {
    count = 1
    name = "${format("node-%02d", count.index+1)}"
    url = "https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/20180206.0.0/providers/virtualbox.box"
    image = "./virtualbox-ubuntu.box"
    cpus = 2
    memory = "512 mib"
    user_data = "${file("user_data")}"

    network_adapter  {
        type = "nat"

    }
}
