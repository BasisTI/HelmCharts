# JHipster

The JHipster Registry is a runtime application, provided by the JHipster team. Like the JHipster generator, it is an Open Source, Apache 2-licensed application, and its source code is available on GitHub under the JHipster organization at jhipster/jhipster-registry.

The JHipster Registry has three main purposes:

It is a an Eureka server, that serves as a discovery server for applications. This is how JHipster handles routing, load balancing and scalability for all applications.
It is a Spring Cloud Config server, that provide runtime configuration to all applications.
It is an administration server, with dashboards to monitor and manage applications.
All those features are packaged into one convenient application with a modern Angular-based user interface.

## Introduction

This Helm Chart creates a Deployment, a service, a secret and an Ingress for JHipster Registry. It also creates a configmap with the Spring Cloud configuration YMLs.

## Configuration

Follow the list of configurable parameters for this Chart

Parameter | Descrption  | Default
----------| ----------- | -------
`secret.name` |  Name of the Kubernetes Secret | `registry-secret`
`secret.auth.registryAdminPassword` | JHipster Admin Password | `UmVnMjAxOEJBU0lT # base64 encoded = Reg2018BASIS"`
`jhipster.name` | Name of the deployment | `jhipster-registry`
`jhipster.port` | JHipster Registry Port | `8761`
`jhipster.replicaCount` | Number of replicas to be created | `2`
`jhipster.image` | Name of the JHipster Registry Image | `jhipster/jhipster-registry:v4.0.0`
`service.name` | Name of the Kubernetes Service | `jhipster-registry`
`service.port` | Kubernetes Service Port | `8761`
`ingress.name` | Name of the Kubernetes Name | `jhipster-registry`
`ingress.host` | Name of the JHipster External DNS | `jhipster-registry.basis.com.br`
`ingress.path` | Path of the URL | `/`
`ingress.serviceName` | Name of the service that the ingress points to | `jhipster-registry`
`ingress.servicePort` | Port number that the ingress points to | `8761`
`configmap.name` | Name of the Kubernetes ConfigMap | `jhipster-registry`
`configmap.application.spring.profilesActive` | Profiles to be activated in JHipster | `prod,swagger,k8s`
`configmap.application.eureka.client.initialInstanceInfoReplicationIntervalSeconds` | How long to replicate instance info to the eureka server | `15`
`configmap.application.eureka.client.instanceInfoReplicationIntervalSeconds` | 	How often to replicate instance changes to be replicated to the eureka server. | `15`
`configmap.application.eureka.client.registryFetchIntervalSeconds` | How often to fetch the registry information from the eureka server. | `15`
`configmap.application.eureka.client.fetchRegistry` | Whether this client should fetch eureka registry information from eureka server. | `true`
`configmap.application.eureka.client.registerWithEureka` | Whether or not this instance should register its information with eureka server for discovery by others. | `true`
`configmap.application.eureka.client.eurekaServiceUrlPollIntervalSeconds` | How oftento poll for changes to eureka server information. | `15`
`configmap.application.eureka.server.peerEurekaNodesUpdateIntervalMs` | NaN | `15000`
`configmap.application.eureka.server.renewalThresholdUpdateIntervalMs` | NaN | `15000`
`configmap.application.eureka.server.peerNodeConnectTimeoutMs` | NaN | `2000`
`configmap.application.eureka.server.enableSelfPreservation` | NaN | `false`
`configmap.application.eureka.server.registrySyncRetries` | NaN | `3`
`configmap.application.eureka.server.composite0Type` | NaN | `native`
`configmap.application.eureka.server.composite0SearchLocations` | NaN | `file:./central-config`
`configmap.application.eureka.instance.leaseRenewalIntervalInSeconds` | How often the eureka client needs to send heartbeats to eureka server to indicate that it is still alive. | `15`
`configmap.application.eureka.instance.leaseExpirationDurationInSeconds` | The time that the eureka server waits since it received the last heartbeat before it can remove this instance from its view and there by disallowing traffic to this instance. | `30`
`configmap.application.eureka.instance.registryDefaultOpenForTrafficCount` | `0`
`configmap.application.jhipster.securityAuthenticationJWTSecret` | JWT Secret Token | `change_it`
`configmap.jhipster.eureka.client.serviceurl.defaultZone` | NaN | `http://admin:${spring.security.user.password}@jhipster-registry.discovery:8761/eureka/`