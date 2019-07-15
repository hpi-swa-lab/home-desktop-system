serialized grammar
serializedGrammar
^ 'HsQueryLanguage <: OhmSmalltalk {
Query
	= BooleanQuery

BlockQuery
	= CodeBlock

BracedQuery
	= "(" Query ")"

BooleanQuery
	= BooleanClause (conjunction BooleanClause)*

BooleanClause
	= Field "(" (occurrence TermQuery)+ ")" -- fieldedGroup
  	| Field occurrence TermQuery -- fielded
	| occurrence ImmediateQuery -- unfielded

ImmediateQuery
	= BracedQuery
	| BlockQuery
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
	= BlockTerm
  | PhraseTerm
  | WordTerm

Field
	= fieldName ":"

fieldName
	= letter alnum*

BlockTerm
	= CodeBlock

CodeBlock
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