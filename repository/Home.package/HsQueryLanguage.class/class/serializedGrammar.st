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
	= field "{" Query "}" -- single
	| "{" Query "}" -- any

BooleanClause
	= occurrence ImmediateQuery

ImmediateQuery
	= BracedQuery
	| FieldQuery
	| ObjectQuery
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
	= TextQuery
	| PhraseQuery
	| WordQuery

field
	= bindableIdentifier ":"

ObjectQuery
	= "[[" ExecutableCode "]]"

WordQuery
	= word

PhraseQuery
	= phrase

TextQuery
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