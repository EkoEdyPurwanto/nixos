# 🛠️ Installation

___

- #### Make a backup of your current `nixos` configurations:
```shell
doas mv /etc/nixos{,.bak}
```
- #### Clone the starter:
```shell
doas git clone git@github.com:EkoEdyPurwanto/nixos.git /etc/
```
- #### Remove the `.git` folder, so you can add it to your own repo later:
```shell
doas rm -rf /etc/nixos/.git
```
> ### Note:
>> if you're not using `doas`, replace with `sudo`

___