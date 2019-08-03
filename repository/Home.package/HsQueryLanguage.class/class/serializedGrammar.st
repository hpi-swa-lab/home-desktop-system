serialized grammar
serializedGrammar
^ 'HsQueryLanguage <: OhmSmalltalk {
Query
	= BooleanQuery

BracedQuery
	= "(" Query ")"

BooleanQuery
	= BooleanClause (conjunction BooleanClause)*

SelectionQuery
	= "[" ExecutableCode "]"

FieldQuery
	= Field "{" Query "}" -- single
	| "{" Query "}" -- any

BooleanClause
	= occurrence ImmediateQuery

ImmediateQuery
	= BracedQuery
	| SelectionQuery
	| FieldQuery
	| TermQuery

occurrence
  = "+" -- must
  | ("-" | "!" | "NOT") -- mustNot
  | "#" -- filter
  | "" -- should

conjunction
  = ("AND" | "&&") -- and
  | ("OR" | "||" | "") -- or

TermQuery
	= Term fuzziness -- fuzzy
	| Term -- notFuzzy

fuzziness
	= "~" number -- valued
	| "~" -- default

Term
	= ObjectTerm
	| PhraseTerm
	| WordTerm

Field
	= fieldName ":"

fieldName
	= letter alnum*

ObjectTerm
	= "[[" ExecutableCode "]]"

WordTerm
	= word

PhraseTerm
	= text

word
	= alnum+

textCharacter
    = "\\\""
    | "\\\\"
    | ~"\\" ~"\"" any

text
	= "\"" textCharacter+ "\""

number
	= scaledDecimalLiteral
	| floatingPointLiteral
	| integerLiteral   
}'