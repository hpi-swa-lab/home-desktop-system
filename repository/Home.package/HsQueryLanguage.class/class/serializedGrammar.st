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
	= "[[" ExecutableCode "]]"

BooleanClause
	= Field "(" (occurrence TermQuery)+ ")" -- fieldedGroup
  	| Field occurrence TermQuery -- fielded
	| occurrence ImmediateQuery -- unfielded

ImmediateQuery
	= BracedQuery
	| SelectionQuery
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
	= "[" ExecutableCode "]"

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