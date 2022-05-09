set -eu

target=jupyter_book
output=$(pwd)/docs
cd ${target}
jb build .
cp -r _build/html/* ${output}/
