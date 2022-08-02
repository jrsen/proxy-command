# cproxy
一个用于在终端设置命令行代理的工具

## 示例:
```
$ cproxy curl http://ipinfo.io
```

## 配置:
- 安装
    ```
    $ git clone https://github.com/kaisar945/cproxy.git ~/cproxy
    $ cd ~/cproxy
    $ sudo make install
    ```

- 设置
    使用文本编辑器打开配置文件```/etc/cproxy.conf```
    ```
    # Example
    http_proxy=http://127.0.0.1:8888 # http代理地址
    https_proxy=http://127.0.0.1:8888 # https代理地址
    all_proxy=socks5://127.0.0.1:8888 # 其他协议代理地址
    ```

- 卸载
    ```
    $ cd ~/cproxy
    $ sudo make uninstall
    ```

## 问题:
1. 无法与命令行自动完成一起使用

    暂时还有没有特别好的办法,可以先输入原始的命令行然后跳转到头部输入```cproxy```来使用,支持子命令自动完成正在开发计划中

如遇到BUG或者功能性的建议请提交[issue](https://github.com/kaisar945/cproxy/issues)