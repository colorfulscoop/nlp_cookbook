# 実行環境の準備

## 環境準備

Python3.8以上の環境を用意してください。
このチュートリアルの全てのスクリプトは以下の Docker 環境で実行しています。

```sh
$ docker container run -p 8080:8080 -w /work -v $(pwd):/work --rm -it python:3.8.6-slim-buster bash
$ apt update && apt install -y git build-essential
```

## Pythonライブラリのインストール

Python環境を準備した後は、依存ライブラリをインストールします。

pandas, numpy, scikit-learn のほか、日本語の解析を行うために spacy をインストールします。

```sh
$ git clone https://github.com/colorfulscoop/nlp_cookbook.git
$ cd nlp_cookbook/jupyter_book/src/
$ cat requirements.txt
pandas==1.4.2
numpy==1.22.3
scikit-learn==1.1.0
matplotlib==3.5.1
spacy[ja]==3.2.4
tensorflow_text>=2.0.0
openpyxl==3.0.9
pandas-profiling[notebook]==3.2.0
emoji==1.7.0
fasttext==0.9.1
```

内容を確認したらインストールを実行します。

```sh
$ pip install -r requirements.txt
```

SpaCy 用に[日本語モデル](https://spacy.io/models/ja#ja_core_news_sm)をダウンロードしておきます。

```sh
$ python -m spacy download ja_core_news_md
```
