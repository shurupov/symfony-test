# Тестовое задание Symfony

## Как запускать проект

1. Файл [scripts/installSettings.json.sample](scripts/installSettings.json.sample) скопировать в scripts/installSettings.json

2. В hosts-файле прописать
``192.168.22.26 symfony-test.dev``

3. Потом надо установить [VirtualBox](https://www.virtualbox.org/wiki/Downloads) последней версии

4. Установить [Vagrant](https://www.vagrantup.com/downloads.html)

5. Перейти в терминал/консоль

6. В терминале перейти в папку [vm/ubuntu1604](vm/ubuntu1604) `cd vm/ubuntu1604`

7. Ввести в терминале `vagrant plugin install vagrant-vbguest`

8. Ввести `vagrant up`

После этого установится и запустится виртуальная машина со всем окружением. Всё установится, настроится и запустится.

## Как управлять виртуалкой

Находясь в терминале в папке [vm/ubuntu1604](vm/ubuntu1604) используйте следующие команды:

- `vagrant up`  чтобы запустить виртуалку

- `vagrant halt` чтобы остановить машину (выключить)

- `vagrant destroy -f` чтобы удалить машину

## Как запускать/смотреть

- [symfony-test.dev](http://symfony-test.dev) - открыть сайт с заданием

- [192.168.22.26](http://192.168.22.26) - открыть сайт с заданием


