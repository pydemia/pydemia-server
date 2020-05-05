# SSL Certificate

## Enabling HTTPS on Your Servers

Ref: [https://developers.google.com/web/fundamentals/security](https://developers.google.com/web/fundamentals/security/encrypt-in-transit/enable-https)

## Generating keys and certificate signing requests

### Generate a public/private key pair

```bash
$ export DOMAIN=www.pydemia.dev
```

Let's start by generating a 2,048-bit RSA key pair. A smaller key, such as 1,024 bits, is insufficiently resistant to brute-force guessing attacks. A larger key, such as 4,096 bits, is overkill. Over time, key sizes increase as computer processing gets cheaper. 2,048 is currently the sweet spot.

The command to generate the RSA key pair is:
```bash
$ openssl genrsa -out $DOMAIN.key 2048
Generating RSA private key, 2048 bit long modulus
.+++
.......................................................................................+++
e is 65537 (0x10001)
```

### Generate a certificate signing request

```bash
$ openssl req -new -sha256 -key $DOMAIN.key -out $DOMAIN.csr
You are about to be asked to enter information that will be incorporated
into your certificate request

What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [AU]:KR
State or Province Name (full name) [Some-State]:Gyeonggi-do
Locality Name (for example, city) []:Seongnam-si
Organization Name (for example, company) [Internet Widgits Pty Ltd]:pydemia
Organizational Unit Name (for example, section) []:
Common Name (e.g. server FQDN or YOUR name) []:www.pydemia.dev
Email Address []:pydemia@gmail.com

Please enter the following 'extra' attributes
to be sent with your certificate request
A challenge password []:
An optional company name []:
```

To ensure the validity of the CSR, run this command:
```bash
$ openssl req -text -in $DOMAIN.csr -noout
Certificate Request:
    Data:
        Version: 0 (0x0)
        Subject: C=CA, ST=Gyeonggi-do, L=Seongnam-si, O=pydemia,
OU=,
CN=www.pydemia.dev/emailAddress=pydemia@gmail.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:ad:fc:58:e0:da:f2:0b:73:51:93:29:a5:d3:9e:
                    f8:f1:14:13:64:cc:e0:bc:be:26:5d:04:e1:58:dc:
                    ...
                Exponent: 65537 (0x10001)
        Attributes:
            a0:00
    Signature Algorithm: sha256WithRSAEncryption
         5f:05:f3:71:d5:f7:b7:b6:dc:17:cc:88:03:b8:87:29:f6:87:
         2f:7f:00:49:08:0a:20:41:0b:70:03:04:7d:94:af:69:3d:f4:
         ...
```

### Submit your CSR to a certificate authority

Different certificate authorities (CAs) require different methods for sending them your CSRs. Methods may include using a form on their website, sending the CSR by email, or something else. Some CAs (or their resellers) may even automate some or all of the process (including, in some cases, key pair and CSR generation).

Send the CA to your CSR, and follow their instructions to receive your final certificate or certificate chain.

Different CAs charge different amounts of money for the service of vouching for your public key.

There are also options for mapping your key to more than one DNS name, including several distinct names (e.g. all of example.com, www.example.com, example.net, and www.example.net) or "wildcard" names such as *.example.com.

For example, one CA currently offers these prices:
* Standard: $16/year, valid for example.com and www.example.com.
* Wildcard: $150/year, valid for example.com and *.example.com.

At these prices, wildcard certificates are economical when you have more than 9 subdomains; otherwise, you can just buy one or more single-name certificates. (If you have more than, say, five subdomains, you might find a wildcard certificate more convenient when you come to enable HTTPS on your servers.)

**Note**: Keep in mind that in wildcard certificates the wildcard applies to only one DNS label. A certificate good for *.example.com will work for foo.example.com and bar.example.com, but not for foo.bar.example.com.

Copy the certificates to all your front-end servers in a non-web-accessible place such as `/etc/ssl` (Linux and Unix) or wherever IIS (Windows) requires them.

### Enable HTTPS on your servers

Enabling HTTPS on your servers is a critical step in providing security for your web pages.

* Use Mozilla's Server Configuration tool to set up your server for HTTPS support.
* Regularly test your site with the Qualys' handy SSL Server Test and ensure you get at least an A or A+.

At this point, you must make a crucial operations decision. Choose one of the following:

* Dedicate a distinct IP address to each hostname your web server serves content from.
* Use name-based virtual hosting.
If you have been using distinct IP addresses for each hostname, you can easily support both HTTP and HTTPS for all clients.

However, most site operators use name-based virtual hosting to conserve IP addresses and because it's more convenient in general. The problem with IE on Windows XP and Android earlier than 2.3 is that they do not understand Server Name Indication (SNI), which is crucial for HTTPS name-based virtual hosting.

Someday—hopefully soon—clients that don't support SNI will be replaced with modern software. Monitor the user agent string in your request logs to know when enough of your user population has migrated to modern software. (You can decide what your threshold is; perhaps < 5%, or < 1%.)

If you don't already have HTTPS service available on your servers, enable it now (without redirecting HTTP to HTTPS; see below). Configure your web server to use the certificates you bought and installed. You might find Mozilla's handy configuration generator useful.

**Note**: Ultimately you should redirect HTTP requests to HTTPS and use HTTP Strict Transport Security (HSTS). However, this is not the right stage in the migration process to do that; see “Redirect HTTP To HTTPS” and “Turn On Strict Transport Security And Secure Cookies.”

### Check your HTTPS config

Now, and throughout your site's lifetime, check your HTTPS configuration with [Qualys' handy SSL Server Test](https://www.ssllabs.com/ssltest/). Your site should score an A or A+; treat anything that causes a lower grade as a bug. (Today's A is tomorrow's B, because attacks against algorithms and protocols are always improving!)

If you have many hostnames/subdomains, they each need to use the right certificate.
