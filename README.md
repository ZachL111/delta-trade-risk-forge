# delta-trade-risk-forge

`delta-trade-risk-forge` explores trading systems with a small Zig codebase and local fixtures. The technical goal is to design a Zig verification harness for risk systems, covering graph analysis, node-edge fixtures, and failure-oriented tests.

## Use Case

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how spread pressure and portfolio drift should influence a review result.

## Delta Trade Risk Forge Review Notes

For a quick review, compare `spread pressure` with `spread pressure` before reading the middle cases.

## Highlights

- `fixtures/domain_review.csv` adds cases for spread pressure and fill risk.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/delta-trade-risk-walkthrough.md` walks through the case spread.
- The Zig code includes a review path for `spread pressure` and `spread pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Zig addition stays small enough to inspect in one sitting.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The check exercises the source code and the review fixture. `stale` is the high score at 200; `baseline` is the low score at 99.

## Future Work

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
