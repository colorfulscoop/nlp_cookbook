# NLP クックブック

## インストール


```sh
$ docker container run -p 8080:8080 -w /work -v $(pwd):/work --rm -it python:3.8.6-slim-buster bash
$ cd jupyter_book/src/
$ apt update && apt install git build-essential
$ pip install -r requirements.txt
$ python -m spacy download ja_core_news_md
```

## Jupyter notebookの起動

```sh
$ jupyter notebook --port 8080 --ip 0.0.0.0 --allow-root
```

## HTMLのビルド


```
$ pip install jupyter_book==0.12.3
$ bash build.sh
```
