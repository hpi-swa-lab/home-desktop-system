private
extractLabelsFrom: content

	^ {#label -> ((content entities values first labels at: 'en' ifAbsent: [content entities values first labels values first]) at: 'value')}
	"Generic solution for later (when there are strings with languages attached) --pre"
	"(content entities values first aliases gather: [:labelsOfALanguage | 
		labelsOfALanguage collect: [:labelValue | #label -> labelValue value]])."