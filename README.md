# Containerized Schema Curation Interface

We have designed a web application that provides the visualization of well-structured schemas and allows the curator to correct them. The application lets the user upload the schema, and the application returns a graphical representation. These well-structured schemas follows the rules set by DARPA as part of their KAIROS project.

### Technologies
  - REST APIs
  - Flask
  - ReactJS
  - CytoscapeJS
  - RabbitMQ
  - Docker
  - Kubernetes

### Developer's Guide
  To run the interface, 
  1. Run ```setup.sh```
  2. Run ```local_sh```
  3. Interface should be accessible on ```http://127.0.0.1:5000```