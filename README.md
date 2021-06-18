# lultala_infra
Способ подключения к someinternalhost в одну команду:
ssh -J appuser@bastion_ip appuser@privat_someinternalhost_ip

bastion_IP = 178.154.252.85 
someinternalhost_IP = 10.128.0.32
testapp_IP = 178.154.252.252
testapp_port = 9292


В директории config-scripts находятся скрипты для установки и деплоя приложения

<p>В директории packer находится:<br>
папка files - находится скрипт деплоя, и key.json для авторизации на yc<br>
папка scripts - скрипты для install и деплоя приложения<br>
в корне папки packer находятся json для запуска instance в yc с помощью команды packer build -var-file variables.json ./ubuntu16.json</p>
