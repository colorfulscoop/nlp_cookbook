set -eu

target=jupyter_book
output=$(pwd)/docs
jb build ${target}/
cp -r ${target}/_build/html/* ${output}/
