[![Rebol-Names CI](https://github.com/Oldes/Rebol-Names/actions/workflows/main.yml/badge.svg)](https://github.com/Oldes/Rebol-Names/actions/workflows/main.yml)

# Rebol-Names
Random names generator scheme

So far using https://britishsurnames.co.uk/random as a source of names.
It can be enhanced in a future to multiple source and or customizations.

# Usage example

1. Getting a single random name
```rebol
read names://
```
2. Getting multiple random names at once
```rebol
read/part names:// 10
```
3. Getting multiple random names one by one
```rebol
loop 10 [
	probe read names://
]
```
