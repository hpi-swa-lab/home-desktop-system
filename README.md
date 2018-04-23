# A New Home [![Build Status](https://travis-ci.org/hpi-swa-lab/home-desktop-system.svg?branch=master)](https://travis-ci.org/hpi-swa-lab/home-desktop-system)

The Home System is a desktop system build on top of Squeak/Smalltalk. It is based upon the idea of storing data in living objects. The system comes with:

 - Mechanisms to create persistent domain objects in the image
 - The global domain object collection *soup* which allows access to all domain objects
 - A basic set of domain objects (e.g. Person, Collaboration, ToDo)
 - Ways to store and access arbitrary fields on domain objects
 - The [Rack](https://github.com/hpi-swa/Rack) for organizing domain objects in a hierarchical structure
 
## Creating Persistent Domain Objects

### Creating and Deleting a Persistent Domain Object
Instantiation of existing domain object classes works just like normal object instantiation (e.g. `Person new`). Note that whenever you create a new instance, this instance is directly persisted and will not be garbage collected.

You can delete such a persisten object by calling `delete`.

### Creating your own Persistent Domain Object Class
All management methods and the persistence mechanism are contained in the class `DomainObject`. Any new persistent domain object class must subclass from this class. When creating new domain object classes make sure to not include to many fixed instance variables. Any information which does not define such a domain object (or is not frequently used) might just as well be added as instance-specific fields.

## Accessing Persistent Domain Objects
You can access all persistent domain objects through the `soup` which is a global entry point. The `soup` provides the interface of a `Set`. Additionally you can use the `search:` message to start a simply full-text search on the stored objects.

Beyond that you can also access all persisted instances of a class through the `all` message (e.g. `Person all`).

## Other

### How to cite this work
If you did work based on / or build using the Rack and want to write about the work, you can reference the Rack through the reference at the bottom.

````Bibtex
inproceedings{Rein2017LYP,
 author = {Rein, Patrick and Lincke, Jens and Ramson, Stefan and Mattis, Toni and Hirschfeld, Robert},
 title = {Living in Your Programming Environment: Towards an Environment for Exploratory Adaptations of Productivity Tools},
 booktitle = {Proceedings of the 3rd ACM SIGPLAN International Workshop on Programming Experience},
 series = {PX/17.2},
 year = {2017},
 isbn = {978-1-4503-5522-3},
 location = {Vancouver, BC, Canada},
 pages = {17--27},
 numpages = {11},
 url = {http://doi.acm.org/10.1145/3167108},
 doi = {10.1145/3167108},
 acmid = {3167108},
 publisher = {ACM},
 address = {New York, NY, USA},
 keywords = {desktop environment, exploratory programming, live programming, productivity tools, programming environment},
} 
````
