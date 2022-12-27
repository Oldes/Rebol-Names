REBOL [
	Title:  "Test random names"
]

import %names.reb

print as-yellow "Getting a single random name..."
probe read names://

print as-yellow "Getting 60 random names at once..."
probe read/part names:// 60

print as-yellow "Getting 10 random names one by one..."
loop 10 [
	probe read names://
]

