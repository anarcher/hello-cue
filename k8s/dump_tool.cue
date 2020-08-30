package k8s

import "encoding/yaml"

objects: [ 
    deployment,
    service,
]

command: dump: {
    task: print: {
        kind: "print"
        text: yaml.MarshalStream(objects)
    }
}
