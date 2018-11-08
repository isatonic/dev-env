# HEW2019 - ISATONIC開発環境

## 概要

```
local (Windows/macOS)
  |
  L---- Vagrant + VirtualBox (CentOS7)
                |
                L---- Docker
                         |
                         |---- Web Server (Nginx-Alpine)
                         |
                         |---- PHP (php-fpm-Alpine)
                         |
                         L---- MariaDB
```

## 導入手順

### Vagrant, VirtualBoxのインストール

以下からDL, インストール:

- [Vagrant](https://www.vagrantup.com/downloads.html)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

バージョンの確認:

```sh
$ vagrant -v
```

### Vagrant Pluginのインストール

必要プラグイン:

- vagrant-vbguest
- vagrant-hostsupdater
- vagrant-share
- vagrant-docker-compose

コマンドライン(cmd/ターミナル)で:

```sh
$ vagrant plugin install vagrant-vbguest vagrant-share vagrant-hostsupdater vagrant-docker-compose
```

### 必要ファイルの配置

1. 右上の緑色のボタンから「Download ZIP」(または[ここ](https://github.com/isatonic/dev-env/archive/master.zip))
2. `dev-env-master`を好きなところに配置

### 作業ディレクトリの準備

初期化スクリプトを実行

- Windows: `dev-env-master\init.bat`を実行
- Mac, Linuxなど:

```sh
cd path/to/dev-env-master
sh ./init.sh
```

### サーバ群のセットアップ

1. コマンドラインで`dev-env-master`に移動
2. 以下を実行:

```sh
vagrant up
```

※ 少し時間かかります

3. ブラウザで[ここ](http://localhost:10080/index.html)にアクセス, 表示されれば成功

4. 下記コマンドでサーバ群を終了

```sh
$ vagrant halt
```

以降, 作業を始めるときは`vagrant up`, 終えるときは`vagrant halt`.

`isatonic.../docker/data/www/html`がXAMPPでいう"htdocs"


