<h1 align=center>
<img src="https://s2.glbimg.com/AnXNMtY3VON9i-ZO89UgGFg1X2g=/288x0/s.glbimg.com/jo/g1/f/original/2016/07/18/ubuntulogo.png" alt="Linux Ubuntu" />
</h1>

<h3 align="center">
🐧 This project is a virtual machine Linux/Ubuntu using **[vagrant](https://www.vagrantup.com/intro]**, its goal is to run Docker on Windows without compromising your pc.
</h3>

### ⚙️ HOW TO USE
First, you need to have **[Vagrant] (https://www.vagrantup.com/downloads)** and **[VirtualBox] (https://www.virtualbox.org/wiki/Downloads)** installed on your machine.

```sh
# Clone this project
$ git clone https://github.com/Caroladao/vm-linux.git
```

Once cloned, just start vm and access it, but first, I like to install the **[winnfsd] (https://github.com/winnfsd/vagrant-winnfsd)** plugin to manage and add support for NFS on Windows.

```sh
# Accessing the vm root folder
$ cd vm-linux

# Installing the plugin winnfsd
vagrant plugin install vagrant-winnfsd

# Initializing the vm
$ vagrant up
```

After the VM starts up, without any error, you can access it 
```sh
# To access
$ vagrant ssh
```

That's it, the docker is already configured, you can enjoy your VM a lot 😊