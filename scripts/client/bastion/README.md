# Client Settings for Bastions

## Bastion SSH Tunneling

```bash
ssh -i <bastion-ssh-key> \
  -N \
  -L <localhost-port>:<private-network-target-ip-or-domain>:<private-network-target-port> \
  yj.kim1@13.124.2.235

```

```config
# Elasticsearch Tunnel
Host <alias>
    HostName <bastion-external-ip>
    User <bastion-username>
    IdentitiesOnly yes
    IdentityFile <bastion-ssh-key>
    # LocalForward <localhost-port> <private-network-target-ip-or-domain>:<private-network-target-port>
    LocalForward 9200 vpc-xxx-asldfjalsejalshb;albhalsdf.ap-northeast-2.es.amazonaws.com:443

ssh <alias> -N

```
