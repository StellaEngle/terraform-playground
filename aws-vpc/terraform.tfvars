# Skip 10.0.3.0/24 as the reserved space for a fourth AZ public subnet
# Skip 10.0.7.0/24 as the reserved space for a fourth AZ private subnet
# Skip 10.0.11.0/24 as the reserved space for a fourth AZ internal subnet
subnet_data = {
    publicAsubnet = {
        cidr_block = "10.0.0.0/24"
        availability_zone = "eu-west-1a" # todo: make dynamic
        public_ip_on_launch = true
        associate_subnet_to_route_table = "public"
        rt_name_assoc = "public-rt"
        nat_association = "publicAsubnet"
    },
    publicBsubnet = {
        cidr_block = "10.0.1.0/24"
        availability_zone = "eu-west-1b" # todo: make dynamic
        public_ip_on_launch = true
        associate_subnet_to_route_table = "public"
        rt_name_assoc = "public-rt"
        nat_association = "publicBsubnet"
    },
    publicCsubnet = {
        cidr_block = "10.0.2.0/24"
        availability_zone = "eu-west-1c" # todo: make dynamic
        public_ip_on_launch = true
        associate_subnet_to_route_table = "public"
        rt_name_assoc = "public-rt"
        nat_association = "publicCsubnet"

    },
    privateAsubnet = {
        cidr_block = "10.0.4.0/24"
        availability_zone = "eu-west-1a" # todo: make dynamic
        public_ip_on_launch = false
        associate_subnet_to_route_table = "private"
        rt_name_assoc = "privateA-rt"
        nat_association = "publicAsubnet"

    },
    privateBsubnet = {
        cidr_block = "10.0.5.0/24"
        availability_zone = "eu-west-1b" # todo: make dynamic
        public_ip_on_launch = false
        associate_subnet_to_route_table = "private"
        rt_name_assoc = "privateB-rt"
        nat_association = "publicBsubnet"

    },
    privateCsubnet = {
        cidr_block = "10.0.6.0/24"
        availability_zone = "eu-west-1c" # todo: make dynamic
        public_ip_on_launch = false
        associate_subnet_to_route_table = "private"
        rt_name_assoc = "privateC-rt"
        nat_association = "publicCsubnet"

    },
    internalAsubnet = {
        cidr_block = "10.0.8.0/24"
        availability_zone = "eu-west-1a" # todo: make dynamic
        public_ip_on_launch = false
        associate_subnet_to_route_table = "internal"
        rt_name_assoc = "privateA-rt"
        nat_association = ""

    },
    internalBsubnet = {
        cidr_block = "10.0.9.0/24"
        availability_zone = "eu-west-1b" # todo: make dynamic
        public_ip_on_launch = false
        associate_subnet_to_route_table = "internal"
        rt_name_assoc = "privateB-rt"
        nat_association = ""

    },
    internalCsubnet = {
        cidr_block = "10.0.10.0/24"
        availability_zone = "eu-west-1c" # todo: make dynamic
        public_ip_on_launch = false
        associate_subnet_to_route_table = "internal"
        rt_name_assoc = "privateC-rt"
        nat_association = ""

    },
}