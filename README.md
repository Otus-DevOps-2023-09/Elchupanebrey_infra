# Elchupanebrey_infra
Elchupanebrey Infra repository

# Cloud Bastion Task

bastion_IP:51.250.72.57
someinternalhost_IP: 10.128.0.8
Подключение к someinternalhost в одну команду:
`ssh -i ~/.ssh/appuser -A -J  appuser@158.160.35.235 appuser@10.128.0.23`
Подключение к someonternalhost командой ssh someinternalhost:
прописываем в `~/.ssh/config` хост с именем `someinternalhost` [Источник](https://man.openbsd.org/ssh_config)
   ```
   Host someinternalhost
	ProxyJump appuser@158.160.35.235
	HostName 10.128.0.23
	User appuser
	IdentityFile ~/.ssh/appuser
   ```
