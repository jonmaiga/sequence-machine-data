import Prog.A037.A0376

/-- A037699: the number whose base-8 digits are, in order, the first n terms of the periodic sequence 1, 2, 3, 0, ... -/
theorem A037699.anchor (n : ℕ) (hn : 1 ≤ n) :
    A037699 n = ((Nat.ofDigits 8 ((List.range n).reverse.map fun i => [1, 2, 3, 0].getD (i % 4) 0) : ℕ) : ℤ) := by
  set t : ℕ → ℕ := fun i => [1, 2, 3, 0].getD (i % 4) 0 with ht_def
  set D : ℕ → ℕ := fun n => Nat.ofDigits 8 ((List.range n).reverse.map t) with hD
  have hstep : ∀ n, D (n + 1) = t n + 8 * D n := fun n => by
    simp only [hD, List.range_succ, List.reverse_append, List.reverse_singleton, List.singleton_append,
      List.map_cons, Nat.ofDigits_cons]
  have hper : ∀ n, t (n + 4) = t n := fun n => by simp only [ht_def, Nat.add_mod_right]
  have cf : ∀ m, A037699.P4637923517044693852.a m = (D (m + 1) : ℕ) := by
    intro m
    induction m using Nat.strong_induction_on with
    | _ m ih =>
      match m with
      | 0 =>
        simp only [A037699.P4637923517044693852.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        decide
      | m + 1 =>
        have h1 : A037699.P4637923517044693852.a (m) = D (m + 1) := ih (m) (by omega)
        simp only [A037699.P4637923517044693852.a] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
        rw [h1]
        have s1 : D (m + 2) = t (m + 1) + 8 * D (m + 1) := hstep (m + 1)
        show _ = D (m + 2)
        push_cast
        rcases (by omega : m % 4 = 0 ∨ m % 4 = 1 ∨ m % 4 = 2 ∨ m % 4 = 3) with hm | hm | hm | hm
        · have v1 : t (m + 1) = 2 := by
            show [1, 2, 3, 0].getD ((m + 1) % 4) 0 = 2
            rw [show (m + 1) % 4 = 1 by omega]; rfl
          have v2 : t (m + 2) = 3 := by
            show [1, 2, 3, 0].getD ((m + 2) % 4) 0 = 3
            rw [show (m + 2) % 4 = 2 by omega]; rfl
          omega
        · have v1 : t (m + 1) = 3 := by
            show [1, 2, 3, 0].getD ((m + 1) % 4) 0 = 3
            rw [show (m + 1) % 4 = 2 by omega]; rfl
          have v2 : t (m + 2) = 0 := by
            show [1, 2, 3, 0].getD ((m + 2) % 4) 0 = 0
            rw [show (m + 2) % 4 = 3 by omega]; rfl
          omega
        · have v1 : t (m + 1) = 0 := by
            show [1, 2, 3, 0].getD ((m + 1) % 4) 0 = 0
            rw [show (m + 1) % 4 = 3 by omega]; rfl
          have v2 : t (m + 2) = 1 := by
            show [1, 2, 3, 0].getD ((m + 2) % 4) 0 = 1
            rw [show (m + 2) % 4 = 0 by omega]; rfl
          omega
        · have v1 : t (m + 1) = 1 := by
            show [1, 2, 3, 0].getD ((m + 1) % 4) 0 = 1
            rw [show (m + 1) % 4 = 0 by omega]; rfl
          have v2 : t (m + 2) = 2 := by
            show [1, 2, 3, 0].getD ((m + 2) % 4) 0 = 2
            rw [show (m + 2) % 4 = 1 by omega]; rfl
          omega
  simp only [A037699, cf, Nat.sub_add_cancel hn]
  all_goals rfl
