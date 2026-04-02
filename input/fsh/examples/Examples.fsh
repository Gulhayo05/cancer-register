Instance: hospital-1
InstanceOf: Organization
Usage: #example
Description: "An example organization representing a national oncology hospital"

* name = "National Oncology Hospital"

Instance: lab-1
InstanceOf: Organization
Usage: #example
Description: "An example organization representing a central diagnostic laboratory"

* name = "Central Diagnostic Lab"

Instance: example-practitioner
InstanceOf: Practitioner
Usage: #example
Description: "An example practitioner with a sample name"

* name[0].family = "Karimov"
* name[0].given[0] = "Ali"

Instance: example-organization
InstanceOf: Organization
Usage: #example
Description: "A generic example organization for demonstration purposes"

* name = "Healthcare Organization"

Instance: example-surgery-request
InstanceOf: ServiceRequest
Usage: #example
Description: "An example service request for a cancer surgical operation"

* language = #en
* status = #active
* intent = #order

* subject = Reference(Patient/cancer-patient-example)

* code = $CancerCS#cancr0033.00001 "Laparoscopic"

* authoredOn = "2026-02-10"