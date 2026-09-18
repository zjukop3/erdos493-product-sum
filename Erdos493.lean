/-!
# Erdős Problem 493

Does there exist a k such that every sufficiently large integer n
can be written as ∏aᵢ - ∑aᵢ with all aᵢ ≥ 2?

Answer: Yes. Taking k = 2, for every n ≥ 0, choose a₀ = n + 2 and a₁ = 2.
Then a₀·a₁ - (a₀ + a₁) = 2(n+2) - (n+4) = n.

Reference: https://www.erdosproblems.com/493
-/

namespace Erdos493

/-- For every non-negative integer n, there exist a₀, a₁ ≥ 2 with
a₀·a₁ - (a₀ + a₁) = n. This shows k = 2 suffices for Erdős Problem 493. -/
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

end Erdos493
