# cproxy
A tool for setting the command line http proxy in the terminal

## Example:
```
$ cproxy curl http://ipinfo.io
```

## Setup:
- Install
    ```
    $ git clone git@github.com:kaisar945/cproxy.git ~/cproxy
    $ cd ~/cproxy
    $ sudo make install
    ```

- Configuration
    Open the configuration file with a text editor ```/etc/cproxy.conf```
    ```
    # Example
    http_proxy=http://127.0.0.1:8888
    https_proxy=http://127.0.0.1:8888
    ```

- Uninstall
    ```
    $ cd ~/cproxy
    $ sudo make uninstall
    ```

## Q&A:
1. Whether to support socks v4/v5 proxy

    Because the terminal's default ```http_proxy``` ```https_proxy``` environment variable is used to implement the command line proxy function, so the ```socks``` proxy is not currently supported

3. Not working

    The application may bypass the proxy, it is recommended to try to use ```proxychain``` to force the proxy

4. Cannot be used with command line auto-completion

    Is there a particularly good way for the time being, you can enter the original command line first, then jump to the head and enter ```cproxy``` to use, support sub-command automatic completion is in development plan

If you encounter BUG or functional suggestions, please submit [issue](https://github.com/kaisar945/cproxy/issues)