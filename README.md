# emby-mirakc-server

このリポジトリは、[**Emby**](https://emby.media/) と [**mirakc**](https://github.com/mirakc/mirakc) を組み合わせて構築したテレビ録画・視聴サーバーの構成例です。  
PX-Q1Uなどの地デジ対応のUSBチューナーを使い、Docker上で録画・ストリーミング配信が可能です。

## 概要

- **OS**：Ubuntu Server 24.04.2 LTS
- **構成**：Emby + mirakc + b25 + bcas
- **用途**：地デジの録画・ストリーミング
- **チューナー**：PX-Q1UD
- **ICカードリーダー**：SCR3310/v2.0

この構成では、Emby が録画の管理とストリーミング配信を担い、Mirakurun の軽量版フォークである mirakc がチューナー制御と番組表の管理を行います。暗号化された放送ストリームのデコード処理には、libaribb25 を使用する b25 コンテナと、ICカードリーダーからB-CASカードの情報を提供する bcas コンテナを併用しています。

## ディレクトリ構成図

```plaintext
tv-server/
├── emby/
│ ├── compose.yml
│ └── config/
│
└── mirakc/
  ├── compose.yml
  ├── config.yml
  ├── b25/
  │ ├── Dockerfile
  │ └── main.sh
  └── bcas/
    ├── Dockerfile
    └── main.sh
```

## 初期設定とセットアップ

初期設定とセットアップやトラブルシューティングの詳細は、以下のブログ記事で解説しています。

[ブログ記事を読む（ITスコープ）](https://it-scope.net/home-server/livetv-server-with-px-q1ud/)  

## 注意事項

この構成は **私的視聴目的で構築**されており、再配信・再利用・不正改造などの用途には使用していません。  
B-CASカードの扱いについても、正規のものを利用し、法令に則った運用を行っています。