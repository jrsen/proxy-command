# cproxy
A tool for setting the command line proxy in the terminal

## Example:
```
$ cproxy curl http://ipinfo.io
```

## Setup:
- Install
    ```
    $ git clone https://github.com/kaisar945/cproxy.git ~/cproxy
    $ cd ~/cproxy
    $ sudo make install
    ```

- Configuration
    Open the configuration file with a text editor ```/etc/cproxy.conf```
    ```
    # Example
    http_proxy=http://127.0.0.1:1080
    https_proxy=http://127.0.0.1:1080
    all_proxy=socks5://127.0.0.1:1080
    ```

- Uninstall
    ```
    $ cd ~/cproxy
    $ sudo make uninstall
    ```

## Q&A:

1. Cannot be used with command line auto-completion

    Is there a particularly good way for the time being, you can enter the original command line first, then jump to the head and enter ```cproxy``` to use, support sub-command automatic completion is in development plan

If you encounter BUG or functional suggestions, please submit [issue](https://github.com/kaisar945/cproxy/issues)