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
2. dev-env-masterを好きなところに配置(例: `C:￥Users￥%USERNAME%￥Desktop￥dev-env-master`)

### サーバ群の初回起動

1. コマンドプロンプト(cmd)で`dev-env-master`に入る

例:

```
$ cd C:\Users\%USERNAME%\Desktop\dev-env-master
```

2. 以下コマンドでサーバ群を起動, サーバファイルなどのダウンロード

```sh
$ vagrant up
```

※ 少し時間かかります

3. ブラウザで[ここ](http://localhost:10080/index.html)にアクセス, 表示されれば成功

4. 下記コマンドでサーバ群を終了

```sh
$ vagrant suspend
```

以降, 作業を始めるときは`vagrant up`, 終えるときは`vagrant suspend`をする.

`isatonic.../docker/data/www/html`がXAMPPでいう"htdocs"

---

以下は取り敢えず放置

---

### ファイルをgitで管理

1. [ここ](https://haniwaman.com/git-for-windows/)にしたがってGit for Windowsをインストール
2. Git bashから`dev-env-master`に入り, githubからファイルをclone

例: デスクトップに`dev-env-master`がある場合

```
$ cd Desktop/dev-env-master
$ git clone https://github.com/...
```

