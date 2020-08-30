package k8s

service: {
    kind: "Service"
    apiVersion: "v1"
    metadata: {
        name: #config.name
        namespace: #config.namespace
    }
}
