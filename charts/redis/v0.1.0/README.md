# Redis

Nas próximas seções serão apresentados os requisitos e o procedimento para realizar o setup da aplicação.

## Introdução

Chart utilizado para subir o REDIS.

## Configuração

Verifique quais parametros deverão ser configurados, como usuário e senha de banco de dados ou url correta da aplicação.
Segue abaixo a lista de parametros configuraveis do Sisfogo2.

Parametro | Descrição | Padrão
--------- | ----------- | -------
`redis.name` | Nome da aplicação | `redis`
`redis.image.repository` | Nome da imagem do Redis | `redis`
`redis.image.tag` | Tag da imagem do Redis | `4.0.9-alpine`
`redis.replicaCount` | Numero de replicas | `1`
`redis.service.servicePort` | Porta do serviço | `6379`

