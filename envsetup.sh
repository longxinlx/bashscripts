function ggrep()
{ 
echo -e "\033[31m grep 开始------------------------------------------华丽的分割线------------------------------------- \033[0m" 
    find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -type f -name "*\.gradle" \
        -exec grep --color -n "$@" {} +
echo -e "\033[31m grep 结束------------------------------------------华丽的分割线------------------------------------- \033[0m"
}

function jgrep()
{
echo -e "\033[31m grep 开始------------------------------------------华丽的分割线------------------------------------- \033[0m" 
    find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -type f -name "*\.java" \
        -exec grep --color -n "$@" {} +
echo -e "\033[31m grep 结束------------------------------------------华丽的分割线------------------------------------- \033[0m"
}

function cgrep()
{
echo -e "\033[31m grep 开始------------------------------------------华丽的分割线------------------------------------- \033[0m" 
    find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -type f \( -name '*.c' -o -name '*.cc' -o -name '*.cpp' -o -name '*.h' -o -name '*.hpp' \) \
        -exec grep --color -n "$@" {} +
echo -e "\033[31m grep 结束------------------------------------------华丽的分割线------------------------------------- \033[0m"
}

function resgrep()
{
echo -e "\033[31m grep 开始------------------------------------------华丽的分割线------------------------------------- \033[0m" 
    for dir in `find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -name res -type d`; do
        find $dir -type f -name '*\.xml' -exec grep --color -n "$@" {} +
    done
echo -e "\033[31m grep 结束------------------------------------------华丽的分割线------------------------------------- \033[0m"
}

function mangrep()
{
echo -e "\033[31m grep 开始------------------------------------------华丽的分割线------------------------------------- \033[0m" 
    find . -name .repo -prune -o -name .git -prune -o -path ./out -prune -o -type f -name 'AndroidManifest.xml' \
        -exec grep --color -n "$@" {} +
echo -e "\033[31m grep 结束------------------------------------------华丽的分割线------------------------------------- \033[0m"
}

function sepgrep()
{
echo -e "\033[31m grep 开始------------------------------------------华丽的分割线------------------------------------- \033[0m" 
    find . -name .repo -prune -o -name .git -prune -o -path ./out -prune -o -name sepolicy -type d \
        -exec grep --color -n -r --exclude-dir=\.git "$@" {} +
echo -e "\033[31m grep 结束------------------------------------------华丽的分割线------------------------------------- \033[0m"
}

function rcgrep()
{
echo -e "\033[31m grep 开始------------------------------------------华丽的分割线------------------------------------- \033[0m" 
    find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -type f -name "*\.rc*" \
        -exec grep --color -n "$@" {} +
echo -e "\033[31m grep 结束------------------------------------------华丽的分割线------------------------------------- \033[0m"
}
