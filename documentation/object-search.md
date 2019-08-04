# Object Search [![Demo Video][demo-badge]][demo-url]
Domain objects are a central element for storing information in the Home Desktop System. Consequentially to prevent loss of these objects, they are persisted within the soup. Due to the lack of any structure or index into this collection, objects can easily get lost or at least be difficult to find, with no reference besides the soup pointing towards them.

The Home System offers its own search mechanisms to help users find the objects they are looking for quickly - even if there are many of them.

## Search Bar
![Search Bar Image][search-bar]

### The Search Query Language
The grammar of the search query language is fairly simple and can be found [here][grammar].

#### Word Queries
```
Frodo
```
The most common and powerful query type is the word query. In text, it is represented as a concatenation of alphanumeric characters. Word queries do not operate on the object itself. An object to be matched by a word query is first converted into its [search terms]. If the specified word can be found in these search terms, the query matches successfully.

---
```
Frodo Baggins
```
It is important to note, that a word query (as the name implies) only represents a single word. The query above actually consists of two different word queries. One for 'Frodo' and one for 'Baggins', causing it to match `Frodo Baggins` as wells as `Bilbo Baggins`.

---
```
Fordo~1
```
Fuzzy word queries (as denoted by `'~'`) don't require the word to match exactly to a search term, but rather calculate the [edit distance] between the two, requiring it to be less or equal than the provided number to match.

#### Phrase Queries
```
"Frodo Baggins"
```
Phrase queries consist of a sequence of words. They are denoted by enclosing double ticks`'"'`. Just like word queries, the matching operates on [search terms]. Different to word queries, though, a phrase query has to match all of its words in the correct order.

The above query would therefore match `Frodo Baggins` but not `Bilbo Baggins` or `Frodo R. R. Baggins`.

---
```
"Frodo Baggins"~2
```
Fuzziness in phrase queries is derived from the positional distance between the phrase's words. The above query would therefore match `Frodo R. R. Baggins` but not `Frodo lives with his uncle Bilbo Baggins`, since in the latter the distance between the words 'Frodo' and 'Baggins' is higher than the specified leeway of 2.

#### Text Queries
```
'Frodo Baggins'
```
Very similar to phrase queries, text queries are denoted by enclosing single ticks (`'`). Different to phrase queries, they do not represent a sequence of words, but a sequence of characters. They hence don't operate on [search terms], but the string representation (`Object>>asString`) directly, enabling searches for exact spellings and notations.

---
```
'Odo Bag'
```
The text query matches, if an object's string representation includes the searched text as a substring. The above query would hence successfully match `Frodo Baggins`.

---
```
'Frodo Baggins'~4
```
Fuzziness for text queries is, similarly to word queries, realized by calculating edit distances. Here, however, the [smallest edit distance from the query's text to any of the target object's string representation's substrings][substring edit distance] is relevant. This can obviously be extremely powerful, but keep in mind that this will also frequently match more than expected, especially for high fuzziness values.

The above query will therefore match `F. Baggins`, `Frodo R. R. Baggins` and `Bilbo Baggins`, but not `Odo Bag` and `B. Baggins`.

#### Field Queries
```
fullName: {Frodo Baggins}
```
Field queries apply queries enclosed by curly braces (`{}`) to the specified field of the object to match.

---
```
{Frodo Baggins}
```
A field query without a specified field will try to match with any of the object's fields.

#### Selection Queries
```
[self height <= 110]
```
Selection queries are denoted by square brackets (`[ ]`) and contain arbitrary smalltalk code. When matching, the object to match is bound to the compiled code's `'self'` pseudo-variable and executed. If the execution's result equals `true`, the query matches successfully. Errors during execution are interpreted as failed matches.

#### Object Queries
```
[[Smalltalk at: #Frodo]]
```
Object queries are denoted by double square brackets (`[[ ]]`) and also contain arbitrary smalltalk code. Different to selection queries, however, this code is executed only once (before the search even fully begins). The resulting object is compared to potential matches using the `=` operator. If it returns true, the query matches successfully.

---
```
gender: {[[#female]]}
```
This type of query is only really useful in combination with field queries.


#### Boolean Queries
##### Should
```
Frodo Baggins
```
As explained previously, the above query actually consists of multiple word queries. The query enclosing both of them and handling the logical combination is the boolean query. 

By default all queries are interpreted as `should` clauses. This means that they are not required for the entire query to be successful, but will be taken into account for the score of the match.

##### Must
```
Frodo +Baggins
```
Must clauses have to be fulfilled in order for the entire query to match. They will additionally be taken into account for the score of the match.

##### Filter
```
Frodo #Baggins
```
Filter clauses have to be fulfilled in order for the entire query to match. They will, however, not be taken into account for the score of the match.

##### Must Not
```
-Frodo Baggins
```
Must not clauses (also denoted by `!` or `NOT`) must not be fulfilled in order for the entire query to match. They are hence also not scored.

---
```
+(Frodo Bilbo) Baggins
```
Round parenthesis can be used to open sub queries.

The above query will match both `Frodo Baggins` and `Bilbo Baggins`.

## Building Queries
Queries can also be constructed manually by directly connecting the provided query classes found within the `Home-Search-Queries` system category. These classes correspond almost exactly to the search query language features outlined above. Further information can be found in the query classes' respective class comments:
  * [Boolean Query]
  * [Field Query]
  * [Selection Query]
  * [Term Queries]
    * [Object Query]
    * [Phrase Query]
    * [Text Query]
    * [Word Query]


## Soup Index?
To improve response time for the most common search operations (unfuzzy word queries & phrase queries), domain objects residing inside the soup could be indexed. This index would be updated whenever a domain object's field changes. The current implementation of such an index is [currently incomplete][index] as it neither allows updating the index nor stores all required information.

### Inconsistent Index State
Such an index might, however, deviate from the correct state, since domain objects' search terms do not necessarily have to be dependent on value objects. Hence, when a field relevant to deriving the search terms changes, without that field's identity changing, no update to the index would be triggered.

## Benchmarks
> todo

## Todos
* Optimize phrase queries when searching using an index
* Use advanced scoring techniques when searching using an index
  * e.g. [tf-idf](http://www.ardendertat.com/2011/07/17/how-to-implement-a-search-engine-part-3-ranking-tf-idf/)
* Dedicated search results widget
  * show why / how / which parts of an object matched
* Stemming of search terms
* Prioritizing / ordering scorers to improve performance
* Permanent index for soup

<!-- References -->
[demo-badge]: https://img.shields.io/badge/demo-vimeo-blue

[search-bar]: ./search-bar.gif

[grammar]: ../repository/Home.package/HsQueryLanguage.class/class/serializedGrammar.st
[search terms]: ../repository/Home.package/Object.extension/instance/searchTerms.st
[edit distance]: ../repository/Home.package/String.extension/instance/editDistanceTo..st
[substring edit distance]: ../repository/Home.package/String.extension/instance/substringEditDistanceTo..st

[Boolean Query]: ../repository/Home.package/HsBooleanQuery.class/README.md
[Field Query]: ../repository/Home.package/HsFieldQuery.class/README.md
[Selection Query]: ../repository/Home.package/HsSelectionQuery.class/README.md
[Term Queries]: ../repository/Home.package/HsTermQuery.class/README.md
[Object Query]: ../repository/Home.package/HsObjectTerm.class/README.md
[Phrase Query]: ../repository/Home.package/HsPhraseTerm.class/README.md
[Text Query]: ../repository/Home.package/HsTextTerm.class/README.md
[Word Query]: ../repository/Home.package/HsWordTerm.class/README.md

[index]: ../repository/Home.package/HsIndex.class/README.md

<!-- Todo -->
[demo-url]: https://vimeo.com/


