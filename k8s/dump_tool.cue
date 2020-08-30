package k8s

import "encoding/yaml"

objectSets: [ 
    deployment,
    service,
]

objects: [for v in objectSets if len(v) > 0 { v }]


command: dump: {
    task: print: {
        kind: "print"
        text: yaml.MarshalStream(objects)
    }
}
