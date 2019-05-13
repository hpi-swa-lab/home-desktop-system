as yet unclassified
privateStyle: aText

	| ranges attribute attributes |
	
	aText runs: (RunArray new: aText size withAll: #()).
	
	ranges := OrderedCollection new.
	ranges addAll: ((aText asString allRangesOfRegexMatches: '^#\s.*$') 
		collect: [:r | {r . #h1}]).
	ranges addAll: ((aText asString allRangesOfRegexMatches: '^##\s.*$') 
		collect: [:r | {r . #h2}]).
	ranges addAll: ((aText asString allRangesOfRegexMatches: '^###\s.*$') 
		collect: [:r | {r . #h3}]).
	ranges addAll: ((aText asString allRangesOfRegexMatches: 'TODO') 
		collect: [:r | {r . #todo}]).
	ranges addAll: ((aText asString allRangesOfRegexMatches: 'todo') 
		collect: [:r | {r . #todo}]).
	
	"Set ranges"
	attributes := Dictionary newFrom: {
		#h1 -> TextEmphasis bold.
		#h2 -> TextEmphasis bold.
		#h3 -> TextEmphasis italic.
		#todo -> TextColor red.
	}.
	ranges do: [:r |
		attribute := attributes at: r second.
		aText addAttribute: attribute from: r first first to: r first last].
	
	aText addAttribute: (TextFontReference toFont: (StrikeFont familyName: #BitstreamDejaVuSans pointSize: 9)) from: 1 to: aText size.
	
	^ aText