REBOL [
	Title:  "Random names"
	type:    module
	name:    names
	version: 0.0.1
	author: @oldes
	exports: [random-names]
]

;;	https://britishsurnames.co.uk/random
;;	num:  50
;;	sex:  ["a" "m" "f"]
;;	type: ["current" "1881"]
;;	submit: "go"


buffer: make block! 100

random-names: function/with/extern [
	/into out [block!]
][
	txt: read https://britishsurnames.co.uk/random
	;write %names.html txt
	
	out: any [out make block! 100]

	parse txt [
		thru "<h3>Random Names</h3>"
		any [
			any whitespace
			copy name: to whitespace
			any whitespace
			"<a" thru #">"
			copy surname: to #"<" 
			thru "<br />"
			(
				append out ajoin [name #" " surname]
			)
		]
	]
	new-line/all out true
	out
] :system/catalog/bitsets [buffer]


open-names: func [port [port!] /local spec conn][
	unless empty? buffer [return port]
	random-names/into buffer
]
read-names: func [
	port [port!]
	/part length [number!]
	/local n
][
	length: any [length 1]
	while [length > length? buffer][
		random-names/into buffer
	]
	n: random length? buffer
	either part [
		take/part at buffer n length
	][	take at buffer n ]
]


sys/make-scheme [
	name:  'names
	title: "Random names generator"
	spec: make system/standard/port-spec-head [
		host: %britishsurnames
	]
	actor: compose [
		open: (:open-names)
		read: (:read-names)
	]
]
