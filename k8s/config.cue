package k8s

#config: {
    namespace: *name | string
    name: "hello"
    replicas: *1 | int
}
