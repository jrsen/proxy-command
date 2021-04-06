# cproxy
一个用于在终端设置命令行http代理的工具

## 示例:
```
$ cproxy curl http://ipinfo.io
```

## 配置:
- 安装
    ```
    $ git clone git@github.com:kaisar945/cproxy.git ~/cproxy
    $ cd ~/cproxy
    $ sudo make install
    ```

- 设置
    使用文本编辑器打开配置文件```/etc/cproxy.conf```
    ```
    # Example
    http_proxy=http://127.0.0.1:8888 #http代理地址
    https_proxy=http://127.0.0.1:8888 #https代理地址
    ```

- 卸载
    ```
    $ cd ~/cproxy
    $ sudo make uninstall
    ```

## 问题:
1. 是否支持socks v4/v5代理

    因为是使用终端默认的```http_proxy``` ```https_proxy```环境变量来实现命令行代理功能因此```socks```代理暂不支持

3. 不生效应用没有经过代理

    应用可能绕过了代理,建议尝试使用```proxychain```强制代理

4. 无法与命令行自动完成一起使用

    暂时还有没有特别好的办法,可以先输入原始的命令行然后跳转到头部输入```cproxy```来使用,支持子命令自动完成正在开发计划中

遇到BUG或者功能性的建议请提交[issue](https://github.com/kaisar945/cproxy/issues)