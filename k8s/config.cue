package k8s

#config: {
    namespace: *name | string
    name: string
    replicas: *1 | >=1 & <10
    service: use: *false | bool
}
