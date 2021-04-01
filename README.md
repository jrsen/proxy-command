# cproxy
A command to set http proxy for other commands

## Example:
```
$ cproxy curl http://ipinfo.io
```

## Setup:
```
$ sudo make install
```
```
$ sudo make uninstall
```

## Q&A:
1. Can you set up a socks proxy?

   Because the terminal default ```http_proxy``` ```https_proxy``` environment variable is used to realize the command line proxy, so the ```socks``` proxy is not currently supported

2. Why you need to use it

   Because sometimes it is troublesome to use ```http_proxy=http://127.0.0.1:8888 https_proxy=http://127.0.0.1:8888 curl http://ipinfo.io``` directly in the terminal, so this project

3. Cannot be used with command line auto-completion

   Is there a particularly good way for the time being, you can first enter the original command line and then jump to the head and enter ```cproxy``` to use, but support for sub-command automatic completion is also under development

If you encounter BUG or functional suggestions, please submit [issue](https://github.com/kaisar945/cproxy/issues)