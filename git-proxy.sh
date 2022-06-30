read -p "开启/关闭代理? [on/off] " input
case $input in
        [on]*)
                echo "开启代理..."
                git config --global https.proxy http://127.0.0.1:7890
                git config --global https.proxy https://127.0.0.1:7890
                git config --global http.proxy 'socks5://127.0.0.1:7890'
                git config --global https.proxy 'socks5://127.0.0.1:7890'
                echo "完成！"
                ;;
        [off]*)
                echo "关闭代理..."
                git config --global --unset http.proxy
                git config --global --unset https.proxy
                echo "完成！"
                ;;
        *)
                echo "Just enter on or off, please."
                exit
                ;;
esac
