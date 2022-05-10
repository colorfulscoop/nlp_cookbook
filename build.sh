set -eu

target=jupyter_book
output=$(pwd)/docs

# Clean up build folder
jupyter-book clean -a ${target}/
jupyter-book build ${target}/

# Clean up docs folder
[ -e "${output}" ] && rm -r ${output} && mkdir ${output}
cp -r ${target}/_build/html/* ${output}/
# 次のページに従って .nojekyll をおきます。
# https://jupyterbook.org/en/stable/publish/gh-pages.html
# .nojekyllを置かないとGithub Pagesがjekyllだと認識して表示しようとするため
# CSSのPATH等が正しく認識されずに描画に失敗するので注意
touch ${output}/.nojekyll
