accessing
parts

	^ soup select: [:o | (o ? #partOf) = self]