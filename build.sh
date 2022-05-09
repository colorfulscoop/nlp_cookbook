set -eu

target=jupyter_book
cd ${target}
jb build .
