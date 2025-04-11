[![rebol-names](https://github.com/user-attachments/assets/84a5fac7-cd89-456f-ac0e-4f6d646ac80a)](https://github.com/Oldes/Rebol-Names)

[![Rebol-Names CI](https://github.com/Oldes/Rebol-Names/actions/workflows/main.yml/badge.svg)](https://github.com/Oldes/Rebol-Names/actions/workflows/main.yml)
[![Gitter](https://badges.gitter.im/rebol3/community.svg)](https://app.gitter.im/#/room/#Rebol3:gitter.im)
[![Zulip](https://img.shields.io/badge/zulip-join_chat-brightgreen.svg)](https://rebol.zulipchat.com/)

# Rebol-Names
Random names generator scheme

So far using https://britishsurnames.co.uk/random as a source of names.
It can be enhanced in a future to multiple sources and or customizations.

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
