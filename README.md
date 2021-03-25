# Containerized Schema Curation Interface

We have designed a web application that provides the visualization of well-structured schemas and allows the curator to correct them. The application lets the user upload the schema, and the application returns a graphical representation. These well-structured schemas follows the rules set by DARPA as part of their KAIROS project.

Curation Interface is available [here](http://107.178.212.18/) and a walkthrough of HowTo can be seen [here](https://drive.google.com/file/d/1fpjrgOTttTn88gTeD4gpbR6p0XFJ8qSt/view?usp=sharing).

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

### Operations Guide

**Must: Use this demo to get familiar with different operations before proceeding.**


https://mac-s-g.github.io/react-json-view/demo/dist/

For everyone using the curation tool to modify the schemas, below are some pointers to get started. Curation Interface allows CRUD operations on any schema.

![image](https://user-images.githubusercontent.com/54338352/112529426-ddabb680-8d6a-11eb-938b-6eb7e6d15b81.png)

These operations are performed by using the different buttons provided in the JSON editor within the interface. Besides every Key-Value pair in the JSON, a green plus (+) for adding, a red minus(-) for deleting, a clipboard for reading, and a pencil icon for editing. Combinations of these operations, while following KSF schema structure, generate a valid schema. 

A valid KSF schema must have 
  - all its events mentioned in the "steps" block,
  - steps ordered as "before" and "after" in "order" block,
  - all its orderings removed, if the "step" is removed from the schema,
  - participating entities in the "slots" block of a step.


All the operations are valid if they maintain the validity of a schema.


JSON is a combination of values, objects, and lists.


#### Add a node:
![image](https://user-images.githubusercontent.com/54338352/112532175-20bb5900-8d6e-11eb-80b9-7cae6d91515c.png)

  1. Clicking the "+" icon at the level of the steps inserts a null entry.
  2. The easiest way to set the value is to copy the value of prior entry, paste it as current entry, and modify the Ids and values as per requirements. The same can be done for slots as well. While saving the value, {...} should be used for objects. ![image](https://user-images.githubusercontent.com/54338352/112531246-f4eba380-8d6c-11eb-9948-1c809de8f091.png)
  3. These additions expect an object value and not a string.
  4. String values do not expect quotes. Saving the value automatically adds the quotes.


#### Read a node:
![image](https://user-images.githubusercontent.com/54338352/112532096-07b2a800-8d6e-11eb-97fb-1985d554765d.png)

  1. The clipboard icon can copy the assigned value. Later, this can be used to reinitialize, reset, or reuse at a different location.
  2. Copying at the schema level is similar to copying the schema itself. This can be saved later as the updated schema (assuming any changes have been made).
  3. The JSON editor doesn't render context level information, so there has to be an explicit copy of the information from the original schema to the updated schema.


#### Delete a node:
![image](https://user-images.githubusercontent.com/54338352/112532112-0c775c00-8d6e-11eb-8401-3c8eb4153712.png)

  1. Clicking the "x" icon deletes the entry object and all its children.
  2. At the steps and slots level, deleting an object will remove the node. 
  3. Although the node will be removed from the visualizations, the edges in the "order" block will stay as garbage values. They have to be explicitly removed.
  4. Once a step has been removed, the schema has to be reloaded to get the new view.


#### Edit a node:
![image](https://user-images.githubusercontent.com/54338352/112532155-1a2ce180-8d6e-11eb-86ca-52b965bd3f23.png)

  1. Clicking the "pen and sheet" icon makes an object available for editing.
  2. Nodes should be edited carefully to maintain uniqueness (by id).
  3. The node-ordering can be modified by editing the before and after values in the "order" block.
  4. Since "before" and "after" can be a string and a list, the conversion should be done accordingly. 
  5. While editing as well objects should be saved using {…}. ![image](https://user-images.githubusercontent.com/54338352/112531760-9115aa80-8d6d-11eb-988b-06cf162f6f0f.png)
