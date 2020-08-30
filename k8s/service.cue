package k8s

service: {}

if #config.service.use == true {
service: {
        kind: "Service"
        apiVersion: "v1"
        metadata: {
            name: #config.name
            namespace: #config.namespace
        }
    }
}
