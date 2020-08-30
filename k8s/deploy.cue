package k8s

apiVersion: "apps/v1"
kind:       "Deployment"
metadata: {
    namespace: #config.namespace
    name: #config.name
}
spec: {
	replicas: #config.replicas
	selector: matchLabels: app: #config.name
	template: {
		metadata: labels: app: #config.name
		spec: containers: [{
			name:  #config.name
			image: "paulbouwer/hello-kubernetes:1.5"
			ports: [{
				containerPort: 8080
			}]
		}]
	}
}
