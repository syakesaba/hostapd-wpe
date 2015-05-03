コンパイル
======
まず、このリポジトリの中に置いてあるパッチ済みソースコードをコンパイルします。
必要なもの：
- libssl-dev
- libnl-dev
必要な操作：
$ cp defconfig .config
コンパイル：
make all
出てくるもの：
hostapd-wpe hostapd-wpe-cli

TLS証明書の作成
======
make allを実行するだけ。
オレオレ証明書に書いてあるプロパティを
変えたいなら.cnfファイルをいじってください。
削除は証明書のディレクトリでmake destroycerts

使い方
======
hostapdと使い方は全く同じです。
ひっかけさせたいAPと同じESSID・暗号化方式にするだけで
繋いできてくれるはずですし、confファイルをうまく作成しましょう。

サンプルconfig
=====
サンプルはconfs/の中に入ってます。
証明書の場所とeap\_userの場所は自分で変えてください。
confは基本的にESSIDを変更するだけで良いはずです。
また、eap\_userも変える必要はないはずです。
PEAP・TTLS・TLSの指定がしたいときはユーザ"t"のところを変えましょう。

