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
	| FieldQuery
	| TermQuery
	| SelectionQuery

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
	| TextTerm
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
	= phrase

TextTerm
	= text

word
	= alnum+

textCharacter
    = "\\\''" -- tick
    | "\\\\" -- backslash
    | ~"\\" ~"\''" any -- any

text
	= "\''" textCharacter+ "\''"

phraseCharacter
    = "\\\"" -- tick
    | "\\\\" -- backslash
    | ~"\\" ~"\"" any -- any

phrase
	= "\"" phraseCharacter+ "\""

number
	= scaledDecimalLiteral
	| floatingPointLiteral
	| integerLiteral   
}'