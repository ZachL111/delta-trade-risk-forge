# Delta Trade Risk Forge Walkthrough

This walk-through keeps the domain vocabulary close to the data instead of burying it in prose.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | spread pressure | 99 | hold |
| stress | fill risk | 130 | watch |
| edge | portfolio drift | 170 | ship |
| recovery | quote width | 124 | watch |
| stale | spread pressure | 200 | ship |

Start with `stale` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `baseline` becomes less cautious without a clear reason, I would inspect the drag input first.
