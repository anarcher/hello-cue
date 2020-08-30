package k8s

#config: {
    namespace: *name | string
    name: string
    replicas: *1 | int
}
