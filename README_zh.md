# cproxy
一个用于给其他命令设置http代理的命令

## 示例:
```
$ cproxy curl http://ipinfo.io
```

## 安装&卸载:
```
$ sudo make install
```
```
$ sudo make uninstall
```

## Q&A:
1. 可以设置socks代理吗
  因为使用终端默认```http_proxy``` ```https_proxy```环境变量来实现命令行代理的因此```socks```代理暂不支持
    
2. 为什么需要使用它
  因为有些时候在终端直接使用```http_proxy=http://127.0.0.1:8888 https_proxy=http://127.0.0.1:8888 curl http://ipinfo.io```比较麻烦因此有了这个项目

3. 无法与命令行自动完成一起使用
  暂时还有没有特别好的办法,你可以先输入原始的命令行然后跳转到头部输入```cproxy```来使用,不过支持子命令自动完成也在开发计划中

如果遇到BUG或者功能性的建议请提交[issue](https://github.com/kaisar945/cproxy/issues)