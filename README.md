# vsomeip-test

- [vsomeip-test](#vsomeip-test)
  - [概要](#概要)
  - [環境](#環境)
  - [](#)

## 概要

- vsomeipサーバー/クライアントのビルド
- WiresharkによるSOME/IPパケット解析

>Dockerを用いた環境構築や、vsomeipサーバー/クライアントのビルド手順はこちらの記事を参考にさせていただきました。
>- [Dockerを用いてVSOMEIPを使ってみる - 作業中のメモ](https://workspacememory.hatenablog.com/entry/2020/11/08/193105)


## 環境

|項目|バージョン|
|-|-|
|OS| Windows 10 Pro 64bit 21H1 19043.2364|
|VirtualBox|6.1.40|
|OS(VM)|Ubuntu 18.04.6|
|Docker|23.0.1, build a5ee5b1|
|Docker Compose|v2.16.0|
|vsomeip|3.1.16.1|

![](pic/environment.drawio.png)

## 