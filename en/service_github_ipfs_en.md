# Github -> IPFS

The service publishes github repos to IPFS. It goes through these steps:
1. Run `git push`
2. Github throws webhook
3. github-ipfs catches the event
4. github-ipfs clones the repo and publishes to IPFS
5. The hash from IPFS is written into Registry file
6. The file is published to IPNS

# Options

* `enable` - should be true to enable the service
* `key` - string. Key which was given at webhook creation in Github
* `path` - string. Path to Registry file. Default `/var/lib/github-ipfs/registry`
* `port` - integer. Port for the service to listen to. Default `8000`

# Пример

In most cases you should specify `key` option and enable the service:

```
services.github-ipfs.enable = true;
services.github-ipfs.key = "secret-key";
```
