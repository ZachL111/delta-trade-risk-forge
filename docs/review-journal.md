# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its trading systems focus without claiming live deployment or external usage.

## Cases

- `baseline`: `spread pressure`, score 99, lane `hold`
- `stress`: `fill risk`, score 130, lane `watch`
- `edge`: `portfolio drift`, score 170, lane `ship`
- `recovery`: `quote width`, score 124, lane `watch`
- `stale`: `spread pressure`, score 200, lane `ship`

## Note

The repository should be understandable without pretending it is larger than it is.
