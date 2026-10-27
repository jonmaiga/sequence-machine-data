import Prog.A002.A0021
import Mathlib.NumberTheory.PrimesCongruentOne

/-- A002144 are the Pythagorean primes, the primes of the form `4k + 1`. -/
theorem A002144.anchor (n : ℕ) (hn : 1 ≤ n) :
    A002144 n = (Nat.nth (fun p => p.Prime ∧ p % 4 = 1) (n - 1) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  have hinf : (Set.ofPred fun p => p.Prime ∧ p % 4 = 1).Infinite := by
    refine Set.infinite_of_not_bddAbove fun ⟨N, hN⟩ => ?_
    obtain ⟨p, hp, hNp, hmod⟩ := Nat.exists_prime_gt_modEq_one N (by norm_num : 4 ≠ 0)
    have h : (fun p => p.Prime ∧ p % 4 = 1) p := ⟨hp, hmod⟩
    have := hN h
    omega
  have hcomp := Nat.nth_comp_of_strictMono (p := fun p => p.Prime ∧ p % 4 = 1) (f := fun j => 4 * j + 1)
    (n := m) (fun a b h => by simp only; omega) (fun k hk => ⟨k / 4, by simp only; omega⟩)
    (fun hf => absurd hf hinf)
  simp only [A002144, A002144.P15538936588089724505.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel,
    SequenceMachineLib.nth_eq, Nat.cast_inj]
  simp only [A002144.P15538936588089724505.f1, SequenceMachineLib.memo_apply]
  have hpred : (fun j => Nat.Prime (4 * j + 1)) = fun i => Nat.Prime (4 * i + 1) ∧ (4 * i + 1) % 4 = 1 := by
    funext j
    exact propext ⟨fun h => ⟨h, by omega⟩, fun h => h.1⟩
  rw [hpred, hcomp]
