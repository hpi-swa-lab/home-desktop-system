# Object Search [![Demo Video][demo-badge]][demo-url]
Domain objects are a central element for storing information in the Home Desktop System. Consequentially to prevent loss of these objects, they are persisted within the soup. Due to the lack of any structure or index into this collection, objects can easily get lost or at least be difficult to find, with no reference besides the soup pointing towards them.

The Home System offers its own search mechanisms to help users find the objects they are looking for quickly - even if there are many of them.

## Search Bar
![Search Bar Image][search-bar]

### Examples
`John Doe`

### The Search Query Language
The grammar of the search query language can be found [here][grammar].

#### Word Queries
`John`

---
`John Doe`

---
`John~2`

#### Phrase Queries
`"John Doe"`

---
`"John Doe"~2`

#### Text Queries
`'John Doe'`

---
`'John Doe'~2`

#### Selection Queries
`[self isPerson]`

#### Field Queries
`fullName: {John Doe}`

---
`{John Doe}`

#### Object Queries
`[[Smalltalk at: #me]]`

---
`deleted: {[[true]]}`

#### Boolean Queries
`John Doe`

---
`John +Doe`

---
`John #Doe`

---
`John -Doe` `John NOT Doe` `John !Doe`

---
`+(John Jane) Doe`


## Building Queries
Queries can also be constructed manually by directly connecting the provided query classes found within the `Home-Search-Queries` system category. These classes correspond almost exactly to the search query language features outlined above. Further information can be found in the query classes' respective class comments:
  * [Boolean Query]
  * [Field Query]
  * [Selection Query]
  * [Term Queries]
    * [Object Query]
    * [Phrase Query]
    * [Word Query]


## Soup Index
To improve response time for the most common search operations (unfuzzy word queries & phrase queries), domain objects residing inside the soup are indexed. This index is updated whenever a domain object's field changes.

### Inconsistent Index State
The index might deviate from the correct state, since domain objects' search terms do not necessarily have to be dependent on value objects. Hence, when a field relevant to deriving the search terms changes, without that field's identity changing, no update to the index is triggered.

To trigger a manual recalculation of the index, e.g. when inconsistent or unexpected search results are returned, execute `soup reindex`.

## Benchmarks




<!-- References -->
[demo-badge]: https://img.shields.io/badge/demo-vimeo-blue

[grammar]: ../repository/Home.package/HsQueryLanguage.class/class/serializedGrammar.st

[Boolean Query]: ../repository/Home.package/HsBooleanQuery.class/README.md
[Field Query]: ../repository/Home.package/HsFieldQuery.class/README.md
[Selection Query]: ../repository/Home.package/HsSelectionQuery.class/README.md
[Term Queries]: ../repository/Home.package/HsTermQuery.class/README.md
[Object Query]: ../repository/Home.package/HsObjectTerm.class/README.md
[Phrase Query]: ../repository/Home.package/HsPhraseTerm.class/README.md
[Word Query]: ../repository/Home.package/HsWordTerm.class/README.md


<!-- Todo -->
[demo-url]: https://vimeo.com/
[search-bar]: https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.istockphoto.com%2Fphotos%2Fsearch-bar-element-design-search-box-on-white-background-3d-render-picture-id1013557844%3Fk%3D6%26m%3D1013557844%26s%3D612x612%26w%3D0%26h%3DNHhull5GM3JHFJt9TxLPR3iui9fshugtOTX59etr69c%3D&f=1

