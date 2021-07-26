# Docker SCP

Sometimes, you want something simple.

## Environment variables
The 3 environment variables are:

* `SRC`: The source directory or file to copy

* `DST`: The destination directory 

* `SCP_ARGS`: Whatever argument you feel like passing to scp.

## Examples
To simply copy the etc directory to /tmp/etc, you can use:
```
docker run \
	-e SRC=/etc/ \
	-e DST=/tmp
```

But if you want to copy /etc to 192.168.42.240 /tmp by using a verbose output and authenticating using ssh keys in `./ssh`:
```
docker run \
	-e SCP_ARGS=-vr
	-e SRC=/etc/ \
	-e DST=user@192.168.42.240:/tmp \
	-v $(pwd)/ssh:/root/.ssh
```

