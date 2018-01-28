# Kubernetes demo running on Raspberry Pi Cluster

The purpose of this repository is to demostrate a pipeline of being able to locally build and deploy to a local k8s (Kubernetes) cluster and then deploy to a 5 node Raspberry Pi Cluster running k8s.

## Requirements:
  * Code must run cross platform - (NodeJS and .NET Core)
  * Code must be able to run both on x86 and ARM (NodeJS and .NET Core)
  * Application should demonstrate a Microservices Architecture
  * State persistence must also be contained within the cluster (Database, Key/Value, Memory Stores)
  
## Current Application Artifacts:
  * Inventory Web front end - (JavaScript Services WeatherForecast)
  * Inventory API - (JavaScript Services SampleDataController only)
  
## Goals:
  * Setup basic project
  * Build Raspberry Pi 3 Cluster - waiting on equipment (Pis, Network Switch, USB Hub 60W)
  * Install k8s on Pi Cluster - (1 master / 4 workers)
  * Deploy to k8s Raspberry Pi Cluster - (how does this work cross-platform)
  * Develop simple multi-tenant identity and access platform (Customer + User)
  * Develop simple inventory application
  * Integrate using rabbit-mq
  * Demonstrate message signaling using SignalR perhaps
  * Setup load balancing using nginx
  * Try integrating some sort of service mesh control and data plane for the side car model (istio or linkerd?)
  
## Things I want to learn:
  * How do I work with docker + k8s in a local environment?
  * How does hybrid development with local vs k8s-only work?
  * Can I use local docker repository without having to deploy to docker repository?
   * If not will local k8s version work?
  * How do I debug RPi cluster?
  * How much overhead will k8s add to RPi?
  
