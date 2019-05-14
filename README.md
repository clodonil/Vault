# HashCorp Vault





# Provisionamento para o Laboratório

Para o desenvolvimento do laboratório, vamos provisionar o Vault no docker e também no [Vagrant](). Fique a vontade para escolhar qualquer um deles.

Como é laboratório, não precisamos persistir nenhum tipo de dados, portanto vamos utilizar o modo `development` do Vault. Todas as alterações são perdidas após o restart.

## Povisionando em Docker

A forma mais rápida e fácil para provisionar o vault e começar a testar, sem dúvida é o Docker. 

Com o docker já instalado no seu computador, execute o seguinte comando:

```
docker run -p 8200:8200 --cap-add=IPC_LOCK -e 'VAULT_DEV_ROOT_TOKEN_ID=redepp'  --name=dev-vault vault 
```

Os parâmetros importantes:

- `-p 8200:8200`: Define que aporta de acesso;
- `--cap-add=IPC_LOCK`: O Vault da um lock na memória para não fazer swap;
- `--VAULT_DEV_ROOT_TOKEN_ID=redepp`: Define o token root;
- `--name=dev-vault`: Define o Vault no modo desenvolvimento. Nenhuma informação é persistida.


Após a inicialização do servidor, acesso a interface web pelo seguinte endereço:

> url :http://localhost:8200/ui/vault/auth


## Provisionando em Vagrant

Caso você queira ter um pouco mais de controle no provisionamento do Vault e ver o que realmente acontece, pode escolher o provisionamento com  Vagrant.

Vamos seguir os seguintes passos para realizar o provisionamento do Vault.

Com o Vagrant já instalado, execute os seguintes comandos:

1. Faça o clone do projeto; 
  > ``` git clone ... ```

2. Entre na pasta vagrant;
  > ``` cd vagrant```

3. Inicialize o Vagrant;
  > ``` vagrant up ```

Após a inicialização do servidor, acesso a interface web pelo seguinte endereço:

> url :http://192.168.77.200:8200/ui/vault/auth

O token para acesso: `redepp`

![vault](https://github.com/clodonil/vault_administrator/blob/master/vault.PNG)

## Secrets Engine

As Engine são:

- KV
- PKI Certificates
- SSH
- Transit
- TOTP
- Active Directory
- AliCloud
- AWS
- Azure
- Google Cloud
- Google Cloud KMS
- Consult
- Database
- Nomad
- RabbiMQ


### KV

### PKI Certificates

### SSH

### AWS
