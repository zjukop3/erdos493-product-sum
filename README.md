# Erdős Problem 493 — Every Large Integer as Product Minus Sum

## Problem

Does there exist a k such that every sufficiently large integer n can be written as ∏aᵢ - ∑aᵢ with all aᵢ ≥ 2?

## Answer

Yes. Taking **k = 2**, for every n ≥ 0, choose a₀ = n + 2 and a₁ = 2.

Then: a₀·a₁ - (a₀ + a₁) = (n+2)·2 - (n+2+2) = 2n+4 - (n+4) = n.

## Formalization

Pure Lean 4 (no Mathlib dependency). Axioms: `propext`, `Quot.sound` only.

```lean
theorem erdos_493 :
    ∀ (n : Int), 0 ≤ n →
      ∃ (a0 a1 : Int),
        (2 ≤ a0 ∧ 2 ≤ a1) ∧
        (a0 * a1 - (a0 + a1) = n) := by
  intro n hn
  refine ⟨n + 2, 2, ?_⟩
  refine ⟨?_, ?_⟩
  · refine ⟨?_, ?_⟩
    · omega
    · decide
  · omega
```

## Verification

- Build: `lake build` (succeeds)
- Axiom audit: `lake env lean Audit.lean` → `propext`, `Quot.sound`
- 0 sorry, 0 admit

## References

- [erdosproblems.com/493](https://www.erdosproblems.com/493)

## License

MIT

## Attribution

Independent formalization by zjukop3. The construction k=2, a₀=n+2, a₁=2 is elementary.
