REBOL [
	Title:  "Test random names"
]

import %names.reb

print as-yellow "Getting a single random name..."
probe read names://

print as-yellow "Getting 60 random names..."
probe read/part names:// 60

