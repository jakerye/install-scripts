Create key on host
```
ssh-keygen -t rsa
```

Add key to client
```
cat .ssh/id_rsa.pub | ssh <user>@<ip> 'cat >> .ssh/authorized_keys'
```
