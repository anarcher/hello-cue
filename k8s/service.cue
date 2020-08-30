package k8s

service: {}

if #config.service.use == true {
service: {
    let deploy = deployment.spec.template

    kind: "Service"
    apiVersion: "v1"
    metadata: {
        name: #config.name
        namespace: #config.namespace
    }
    spec: {
        selector: {
            for k,v in deploy.metadata.labels {
                "\(k)": v
            }
        }
    }
    if len(deploy.spec.containers[0].ports) > 0 {
    spec: {
        ports: [
            for v in deploy.spec.containers[0].ports {
                name: v.name
                port: v.containerPort
                targetPort: v.containerPort
            }
        ]
    }}
}}
