# ssh-logger-kit

See the [wiki](https://github.com/wesyoung/ssh-logger-kit/wiki).

SSH Logger Kit is a deploymentkit for [SSH Logger](https://github.com/JustinAzoff/ssh-auth-logger).

```
$ sudo bash bootstrap.sh
$ docker logs -f ssh_logger_kit
...
{"destinationServicename":"sshd","dpt":"22","dst":"172.17.0.2","level":"info","msg":"Connection","product":"ssh-auth-logger","spt":"55599","src":"10.0.2.2","time":"2017-04-11T12:06:03Z"}
{"client_version":"SSH-2.0-OpenSSH_6.9","destinationServicename":"sshd","dpt":"22","dst":"172.17.0.2","duser":"wes","fingerprint":"SHA256:JjZSJnhoPgPuErsJ2Dh+oQaOaO2Sgz37SkDGvbREBeQ","keytype":"ssh-rsa","level":"info","msg":"Request with key","product":"ssh-auth-logger","server_version":"SSH-2.0-OpenSSH_5.3","spt":"55599","src":"10.0.2.2","time":"2017-04-11T12:06:04Z"}
{"client_version":"SSH-2.0-OpenSSH_6.9","destinationServicename":"sshd","dpt":"22","dst":"172.17.0.2","duser":"wes","level":"info","msg":"Request with password","password":"asdf","product":"ssh-auth-logger","server_version":"SSH-2.0-OpenSSH_5.3","spt":"55599","src":"10.0.2.2","time":"2017-04-11T12:06:07Z"}
...
```

