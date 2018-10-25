# Sisfogo 2

Este sistema é responsável por fazer o gerenciamento de autorizações de queima controlada, registrar ocorrência de incêndios em Unidades de Conservação (Federais, Estaduais e Municipais), ocorrências de incêndios de municípios com brigadas do Prevfogo, relatório de acompanhamento mensal de brigada, queimas autorizadas, ocorrências de incêndios atendidos pelos Corpos de Bombeiros, gerenciar as atividades de capacitação e realizar os procedimentos necessários para a contratação e administração das brigadas.

Nas próximas seções serão apresentados os requisitos e o procedimento para realizar o setup da aplicação.

## Requisitos
Para montar o ambiente do projeto é necessário:

* Java 8
* NodeJS 8.11.3
* Docker
* Git
* Maven

## Introdução

Chart utilizado para subir o SISFOGO2.

## Configuração

Verifique quais parametros deverão ser configurados, como usuário e senha de banco de dados ou url correta da aplicação.
Segue abaixo a lista de parametros configuraveis do Sisfogo2.

Parametro | Descrição | Padrão
--------- | ----------- | -------
`auth.registryPassword` | Senha do Jhipster Registry | `mudar123`
`spring.cloudConfigURI` | URL do Jhipster Registry | `http://admin:${jhipster.registry.password}@jhipster-registry.discovery:8761/config`
`eureka.clientDefaultURL` | URL do Eureka | `http://admin:${jhipster.registry.password}@jhipster-registry.discovery:8761/eureka/`
`cliente.name` | Nome do deployment Cliente | `cliente`
`cliente.image` | Imagem do container do Cliente | `eb-registry.basis.com.br/gp3eb/gp3ebclient:teste`
`cliente.replicaCount` | Numero de réplicas | `1`
`cliente.ingress.enable` | Se true, cria o ingress do Cliente | `true`
`cliente.ingress.url` | URL de acesso ao Cliente | `gp3eb2.tst.basis.com.br`
`cliente.service.servicePort` | Porta do serviço do Cliente | `80`
`gateway.name` | Nome do deployment Gateway  | `gateway`
`gateway.image` | Imagem do container do Gateway | `eb-registry.basis.com.br/gp3eb/gateway:teste`
`gateway.replicaCount` | Numero de réplicas | `1`
`gateway.spring.profileActive` | Spring profiles ativos | `prod,login-automatico`
`gateway.ingress.enabled` | Se true, cria o ingress do Gateway | `true`
`gateway.ingress.url` | URL de acesso ao Gateway | `gatewaygp3eb.tst.basis.com.br`
`gateway.configmap.datasource.dburl` | URL do banco de dados | `jdbc:oracle:thin:@oracle.basis.com.br:1521:orcl`
`gateway.configmap.datasource.dbusername` | Usuario do banco de dados | `gp3ebgateway`
`gateway.configmap.datasource.dbpassword` | Senha do banco de dados | `mudar123`
`gateway.configmap.security.oauth2ClientId` | Senha do banco de dados | `gp3eb-admin-dev`
`gateway.configmap.security.oauth2ClientSecret` | Senha do banco de dados | `mudar123`
`cadastroprogramas.enabled` | Se true, cria cadastroprogramas | `true`
`cadastroprogramas.name` | Nome do deployment cadastroprogramas | `cadastroprogramas`
`cadastroprogramas.image` | Imagem do container do cadastroprogramas | `eb-registry.basis.com.br/gp3eb/cadastroprogramas:teste`
`cadastroprogramas.replicaCount` | Numero de réplicas | `1`
`cadastroprogramas.spring.profileActive` | Spring profiles ativos | `prod,swagger`
`cadastroprogramas.configmap.datasource.dburl` | URL do banco de dados | `jdbc:oracle:thin:@oracle.basis.com.br:1521:orcl`
`cadastroprogramas.configmap.datasource.dbusername` | Usuario do banco de dados | `gp3ebgateway`
`cadastroprogramas.configmap.datasource.dbpassword` | Senha do banco de dados | `mudar123`
