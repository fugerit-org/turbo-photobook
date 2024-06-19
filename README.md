# turbo-photobook

[![Keep a Changelog v1.1.0 badge](https://img.shields.io/badge/changelog-Keep%20a%20Changelog%20v1.1.0-%23E05735)](https://github.com/fugerit-org/fj-universe/blob/main/CHANGELOG.md)
[![license](https://img.shields.io/badge/License-MIT%20License-blue.svg)](https://opensource.org/license/mit)
[![code of conduct](https://img.shields.io/badge/conduct-Contributor%20Covenant-purple.svg)](https://github.com/fugerit-org/fj-universe/blob/main/CODE_OF_CONDUCT.md)

This is a comparison of a simple online demo photobook implemented with three popular java cloud ready framework : 

1. [Spring Boot](https://spring.io/projects/spring-boot) - Spring Boot makes it easy to create stand-alone, production-grade Spring based Applications that you can "just run"
2. [Quarkus](https://quarkus.io/) - A Kubernetes Native Java stack tailored for OpenJDK HotSpot and GraalVM, crafted from the best of breed Java libraries and standards.
3. [Micronaut](https://micronaut.io/) - A modern, jvm-based, full-stack framework for building modular, easily testable microservice and serverless applications.

Each demo photobook implementation supports a few different build versions (all based on java 21) :

1. [Java Hotspot](https://www.oracle.com/java/technologies/downloads/) - Just In Time (JIT) java package (jar)
2. [GraalVM](https://www.graalvm.org/) - Ahead Of Time (AOT) native executable
3. [GraalVM](https://www.graalvm.org/) - Ahead Of Time (AOT) native executable ([PMO - Profile-Guided Optimizations](https://www.graalvm.org/22.0/reference-manual/native-image/PGO/))
4. Containerized JIT application (1)
5. Containerized AOT application (2)

For an online preview here is the [Spring Boot based demo photobook](https://springio23.fugerit.org/photobook-demo/home/index.html)

## Documentation project prerequisites (turbo-photobook)

[![Java runtime version](https://img.shields.io/badge/run%20on-java%208+-%23113366.svg?style=for-the-badge&logo=openjdk&logoColor=white)](https://universe.fugerit.org/src/docs/versions/java11.html)
[![Java build version](https://img.shields.io/badge/build%20on-java%2011+-%23ED8B00.svg?style=for-the-badge&logo=openjdk&logoColor=white)](https://universe.fugerit.org/src/docs/versions/java11.html)
[![Apache Maven](https://img.shields.io/badge/Apache%20Maven-3.9.0+-C71A36?style=for-the-badge&logo=Apache%20Maven&logoColor=white)](https://universe.fugerit.org/src/docs/versions/maven3_9.html)
[![Fugerit Github Project Conventions](https://img.shields.io/badge/Fugerit%20Org-Project%20Conventions-1A36C7?style=for-the-badge&logo=Onlinect%20Playground&logoColor=white)](https://universe.fugerit.org/src/docs/conventions/index.html)

## Demo projects prerequisites

| software                                                                                                                                                                                           | docker compose | local build and run |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------|---------------------|
| [![Java version](https://img.shields.io/badge/Java-GraalVM%2021+-%23ED8B00.svg?style=for-the-badge&logo=openjdk&logoColor=white)](https://universe.fugerit.org/src/docs/versions/gvm21.html)       | no             | yes                 |
| [![Apache Maven](https://img.shields.io/badge/Apache%20Maven-3.9.0+-C71A36?style=for-the-badge&logo=Apache%20Maven&logoColor=white)](https://universe.fugerit.org/src/docs/versions/maven3_9.html) | no             | yes                 |
| [![Node JS](https://img.shields.io/badge/Node%20JS-20+-1AC736?style=for-the-badge&logo=node.js&logoColor=white)](https://universe.fugerit.org/src/docs/versions/node.html)                         | no             | yes                 |
| [![Docker](https://img.shields.io/badge/docker-26+-1266E7?style=for-the-badge&logo=docker&logoColor=white)](https://universe.fugerit.org/src/docs/versions/docker.html)                            | yes            | no                  |

## Demo project summary

| version                                                                      | quality gate                                                                                                                                                                                                        | coverage                                                                                                                                                                                             | 
|------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [springboot-photobook](https://github.com/fugerit-org/springboot-photobook/) | [![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=fugerit-org_springboot-photobook&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=fugerit-org_springboot-photobook) | [![Coverage](https://sonarcloud.io/api/project_badges/measure?project=fugerit-org_springboot-photobook&metric=coverage)](https://sonarcloud.io/summary/new_code?id=fugerit-org_springboot-photobook) |
| [quarkus-photobook](https://github.com/fugerit-org/quarkus-photobook/)       | [![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=fugerit-org_quarkus-photobook&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=fugerit-org_quarkus-photobook)       | [![Coverage](https://sonarcloud.io/api/project_badges/measure?project=fugerit-org_quarkus-photobook&metric=coverage)](https://sonarcloud.io/summary/new_code?id=fugerit-org_quarkus-photobook)       |
| [micronaut-photobook](https://github.com/fugerit-org/micronaut-photobook/)   | [![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=fugerit-org_micronaut-photobook&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=fugerit-org_micronaut-photobook)   | [![Coverage](https://sonarcloud.io/api/project_badges/measure?project=fugerit-org_micronaut-photobook&metric=coverage)](https://sonarcloud.io/summary/new_code?id=fugerit-org_micronaut-photobook)   |
