# Client Settings for Bastions

## Bastion SSH Tunneling

### bastion itself

```bash
ssh -i <bastion-ssh-key> \
  -N \
  -L <localhost-port>:localhost:<private-network-target-port> \
  <bastion-username>@<bastion-external-ip>

```

```bash
Host aiip-prd-tunnel-19090
    HostName <bastion-external-ip>
    User <bastion-username>
    IdentitiesOnly yes
    IdentityFile <bastion-ssh-key>
    LocalForward <localhost-port> localhost:<private-network-target-port>

```

### other ips

```bash
ssh -i <bastion-ssh-key> \
  -N \
  -L <localhost-port>:<private-network-target-internal-ip-or-domain>:<private-network-target-port> \
  <bastion-username>@<bastion-external-ip>

```

```config
# SSH Tunnel
Host <alias>
    HostName <bastion-external-ip>
    User <bastion-username>
    IdentitiesOnly yes
    IdentityFile <bastion-ssh-key>
    # LocalForward <localhost-port> <private-network-target-internal-ip-or-domain>:<private-network-target-port>
    LocalForward 9999 vpc-xxx-asldfjalsejalshbalbhalsdf.ap-northeast-2.es.amazonaws.com:443

ssh <alias> -N

```

