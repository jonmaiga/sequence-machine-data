import Prog.A000.A0000
import Mathlib.Data.Nat.Nth

/-! The canonical program of A000040 takes the k-th prime among `f1 = 2, 1, 3, 5, 7, ...`, i.e. 2 and the odd
numbers. Taking those values in order is strictly increasing and hits every prime, so it is `Nat.nth Nat.Prime`
(`Nat.eq_nth_of_strictMonoOn_of_mapsTo_of_surjOn`). -/

open SequenceMachineLib

local notation "odd1" => A000040.P3917089138138407011.f1

private theorem odd1_zero : odd1 0 = 2 := by
  simp [A000040.P3917089138138407011.f1, rec_of_lt]

private theorem odd1_succ (j : ℕ) : odd1 (j + 1) = 2 * j + 1 := by
  induction j with
  | zero => simp [A000040.P3917089138138407011.f1, rec_of_lt]
  | succ j ih =>
    have h : odd1 (j + 2) = odd1 (j + 1) + 2 := by
      simp only [A000040.P3917089138138407011.f1]
      rw [rec_of_le _ _ (by simp)]
      simp
    rw [h, ih]
    ring

/-- Every prime is a value of `odd1`. -/
private theorem odd1_of_prime {p : ℕ} (hp : p.Prime) : ∃ j, odd1 j = p := by
  rcases hp.eq_two_or_odd with h | h
  · exact ⟨0, by rw [odd1_zero, h]⟩
  · exact ⟨(p - 1) / 2 + 1, by rw [odd1_succ]; omega⟩

private abbrev S (j : ℕ) : Prop := (odd1 j).Prime

private theorem S_infinite : (Set.ofPred S).Infinite := by
  refine Set.infinite_of_not_bddAbove fun ⟨N, hN⟩ => ?_
  obtain ⟨p, hle, hp⟩ := Nat.exists_infinite_primes (2 * N + 3)
  have hodd : p % 2 = 1 := (hp.eq_two_or_odd).resolve_left (by omega)
  have hj : S ((p - 1) / 2 + 1) := by
    show (odd1 ((p - 1) / 2 + 1)).Prime
    rw [odd1_succ, show 2 * ((p - 1) / 2) + 1 = p by omega]
    exact hp
  have := hN hj
  omega

/-- On the indices of primes, `odd1` is strictly increasing. -/
private theorem odd1_lt {i j : ℕ} (hij : i < j) (hj : S j) : odd1 i < odd1 j := by
  rcases j with _ | _ | j
  · omega
  · have h1 : odd1 1 = 1 := odd1_succ 0
    simp only [S, h1] at hj
    exact absurd hj Nat.not_prime_one
  · rcases i with _ | i
    · rw [odd1_zero, odd1_succ]; omega
    · rw [odd1_succ, odd1_succ]; omega

private theorem infinite_primes : ¬(Set.ofPred Nat.Prime).Finite := Nat.infinite_setOfPred_prime

private theorem odd1_nth_eq (m : ℕ) : odd1 (Nat.nth S m) = Nat.nth Nat.Prime m := by
  have hall : ∀ n : ℕ, n ∈ {n : ℕ | ∀ hf : (Set.ofPred Nat.Prime).Finite, n < hf.toFinset.card} :=
    fun n hf => absurd hf infinite_primes
  have hmono : StrictMono fun m => odd1 (Nat.nth S m) := fun a b hab =>
    odd1_lt (Nat.nth_strictMono S_infinite hab) (Nat.nth_mem_of_infinite S_infinite b)
  refine Nat.eq_nth_of_strictMonoOn_of_mapsTo_of_surjOn (p := Nat.Prime) (fun m => odd1 (Nat.nth S m))
    ?_ ?_ (hmono.strictMonoOn _) (hall m)
  · intro p hp
    obtain ⟨j, hj⟩ := odd1_of_prime hp
    have hS : S j := by show (odd1 j).Prime; rw [hj]; exact hp
    exact ⟨Nat.count S j, hall _, by simp only [Nat.nth_count hS, hj]⟩
  · intro m _
    exact Nat.nth_mem_of_infinite S_infinite m

/-- A000040 is the prime numbers, `Nat.nth Nat.Prime` (0-based, the sequence has offset 1). -/
theorem A000040.anchor (n : ℕ) (_hn : 1 ≤ n) : A000040 n = (Nat.nth Nat.Prime (n - 1) : ℤ) := by
  simp [A000040, A000040.P3917089138138407011.a, SequenceMachineLib.nth_eq, odd1_nth_eq]
