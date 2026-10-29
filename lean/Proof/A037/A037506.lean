import Prog.A037.A0375

/-- A037506: the number whose base-5 digits are, in order, the first n terms of the periodic sequence 1, 2, 0, ... -/
theorem A037506.anchor (n : ℕ) (hn : 1 ≤ n) :
    A037506 n = ((Nat.ofDigits 5 ((List.range n).reverse.map fun i => [1, 2, 0].getD (i % 3) 0) : ℕ) : ℤ) := by
  set t : ℕ → ℕ := fun i => [1, 2, 0].getD (i % 3) 0 with ht_def
  set D : ℕ → ℕ := fun n => Nat.ofDigits 5 ((List.range n).reverse.map t) with hD
  have hstep : ∀ n, D (n + 1) = t n + 5 * D n := fun n => by
    simp only [hD, List.range_succ, List.reverse_append, List.reverse_singleton, List.singleton_append,
      List.map_cons, Nat.ofDigits_cons]
  have hper : ∀ n, t (n + 3) = t n := fun n => by simp only [ht_def, Nat.add_mod_right]
  have cf : ∀ m, A037506.P3778759450179859677.a m = (D (m + 1) : ℕ) := by
    intro m
    induction m using Nat.strong_induction_on with
    | _ m ih =>
      match m with
      | 0 =>
        simp only [A037506.P3778759450179859677.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        decide
      | m + 1 =>
        have h1 : A037506.P3778759450179859677.a (m) = D (m + 1) := ih (m) (by omega)
        simp only [A037506.P3778759450179859677.a] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
        rw [h1]
        have s1 : D (m + 2) = t (m + 1) + 5 * D (m + 1) := hstep (m + 1)
        show _ = D (m + 2)
        push_cast
        rcases (by omega : m % 3 = 0 ∨ m % 3 = 1 ∨ m % 3 = 2) with hm | hm | hm
        · have v1 : t (m + 1) = 2 := by
            show [1, 2, 0].getD ((m + 1) % 3) 0 = 2
            rw [show (m + 1) % 3 = 1 by omega]; rfl
          have v2 : t (m + 2) = 0 := by
            show [1, 2, 0].getD ((m + 2) % 3) 0 = 0
            rw [show (m + 2) % 3 = 2 by omega]; rfl
          omega
        · have v1 : t (m + 1) = 0 := by
            show [1, 2, 0].getD ((m + 1) % 3) 0 = 0
            rw [show (m + 1) % 3 = 2 by omega]; rfl
          have v2 : t (m + 2) = 1 := by
            show [1, 2, 0].getD ((m + 2) % 3) 0 = 1
            rw [show (m + 2) % 3 = 0 by omega]; rfl
          omega
        · have v1 : t (m + 1) = 1 := by
            show [1, 2, 0].getD ((m + 1) % 3) 0 = 1
            rw [show (m + 1) % 3 = 0 by omega]; rfl
          have v2 : t (m + 2) = 2 := by
            show [1, 2, 0].getD ((m + 2) % 3) 0 = 2
            rw [show (m + 2) % 3 = 1 by omega]; rfl
          omega
  simp only [A037506, cf, Nat.sub_add_cancel hn]
  all_goals rfl
