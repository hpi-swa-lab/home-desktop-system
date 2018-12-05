# A New Home [![Build Status](https://travis-ci.org/hpi-swa-lab/home-desktop-system.svg?branch=master)](https://travis-ci.org/hpi-swa-lab/home-desktop-system)

The Home System is a desktop system build on top of Squeak/Smalltalk. It is based upon the idea of storing data in living objects and allowing its users to adapt it completely to their needs. The system comes with:

 - Mechanisms to create persistent domain objects in the image
 - The global domain object collection *soup* which allows access to all domain objects
 - A basic set of domain objects (e.g. Person, Collaboration, ToDo)
 - Ways to store and access arbitrary fields on domain objects
 - The [Rack](https://github.com/hpi-swa/Rack) for organizing domain objects in a hierarchical structure
 - The object search for searching for specific objects
 - Context menus for invoking methods on objects
 
The system can be used to accomplish many everyday computing tasks:

<p align="center">
<img alt="Screenshot of the Home Desktop System in use" src="https://github.com/hpi-swa-lab/home-desktop-system/blob/master/documentation/screenshot.png" width=450></img>
</p>

## Installation
The easiest way to run the Home system is to get the newest version from the [Github releases](https://github.com/hpi-swa-lab/home-desktop-system/releases). Get the zip file and a recent [virtual machine](http://squeak.org/downloads/).

### Manual Installation
You can also install the Home System manually. It requires a Squeak with updates up to the 24th of April 2018 (update number #17908). You also need [Metacello](https://github.com/Metacello/metacello) installed. Then you can execute the following:

```Smalltalk
Metacello new
  baseline: 'Home';
  repository: 'github://hpi-swa-lab/home-desktop-system/repository';
  load.
```

## Using the System
The Home desktop system provides a programming interface for domain objects as well as graphical tools for searching, managing, and accessing domain objects.


### Object Search
The system provides a system-wide search for objects. You can start a search through the search field left of the code search in the top right corner. You can access that search through the keyboard shortcut Ctrl/Cmd + 9.

### Invoking Methods through the Context Menus
As all information is stored in objects you can always invoke methods on them. Some of these methods are exposed in context menus accessible in the object explorer or the Rack. 

You can make methods accessible in the context menu by using the Pragma `rackOperationLabel: label inContextMenus: true` (see for example Todo>>#setDone).

### Accessing Persistent Domain Objects
You can access all persistent domain objects through the `soup` which is a global entry point. The `soup` provides the interface of a `Set`. Additionally you can use the `search:` message to start a simply full-text search on the stored objects.

Beyond that you can also access all persisted instances of a class through the `all` message (e.g. `Person all`).

### Creating your own Persistent Domain Object Class
All management methods and the persistence mechanism are contained in the class `DomainObject`. Any new persistent domain object class must subclass from this class. When creating new domain object classes make sure to not include to many fixed instance variables. Any information which does not define such a domain object (or is not frequently used) might just as well be added as instance-specific fields.

## Other

### How to cite this work
If you did work based on / or build using the Home desktop system and want to write about the work, you can reference the system through the reference at the bottom (You can find the author version [here](https://www.hpi.uni-potsdam.de/hirschfeld/publications/media/ReinLinckeRamsonMattisHirschfeld_2017_LivingInYourProgrammingEnvironmentTowardsAnEnvironmentForExploratoryAdaptationsOfProductivityTools_AcmDL.pdf)).

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
