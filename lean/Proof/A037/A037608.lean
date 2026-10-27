import Prog.A037.A0376

/-- A037608: the number whose base-8 digits are, in order, the first n terms of the periodic sequence 1, 2, 3, ... -/
theorem A037608.anchor (n : ℕ) (hn : 1 ≤ n) :
    A037608 n = ((Nat.ofDigits 8 ((List.range n).reverse.map fun i => [1, 2, 3].getD (i % 3) 0) : ℕ) : ℤ) := by
  set t : ℕ → ℕ := fun i => [1, 2, 3].getD (i % 3) 0 with ht_def
  set D : ℕ → ℕ := fun n => Nat.ofDigits 8 ((List.range n).reverse.map t) with hD
  have hstep : ∀ n, D (n + 1) = t n + 8 * D n := fun n => by
    simp only [hD, List.range_succ, List.reverse_append, List.reverse_singleton, List.singleton_append,
      List.map_cons, Nat.ofDigits_cons]
  have hper : ∀ n, t (n + 3) = t n := fun n => by simp only [ht_def, Nat.add_mod_right]
  have cf : ∀ m, A037608.P3172134688616158549.a m = (D (m + 1) : ℤ) := by
    intro m
    induction m using Nat.strong_induction_on with
    | _ m ih =>
      match m with
      | 0 | 1 | 2 | 3 =>
        simp only [A037608.P3172134688616158549.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        decide
      | m + 4 =>
        have h1 : A037608.P3172134688616158549.a (m + 3) = D (m + 4) := ih (m + 3) (by omega)
        have h3 : A037608.P3172134688616158549.a (m + 1) = D (m + 2) := ih (m + 1) (by omega)
        have h4 : A037608.P3172134688616158549.a (m) = D (m + 1) := ih (m) (by omega)
        simp only [A037608.P3172134688616158549.a] at h1 h3 h4 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
        rw [h1, h3, h4]
        have s1 : D (m + 2) = t (m + 1) + 8 * D (m + 1) := hstep (m + 1)
        have s2 : D (m + 3) = t (m + 2) + 8 * D (m + 2) := hstep (m + 2)
        have s3 : D (m + 4) = t (m + 3) + 8 * D (m + 3) := hstep (m + 3)
        have s4 : D (m + 5) = t (m + 4) + 8 * D (m + 4) := hstep (m + 4)
        have p1 : t (m + 4) = t (m + 1) := hper (m + 1)
        show _ = ((D (m + 5) : ℕ) : ℤ)
        push_cast
        rcases (by omega : m % 3 = 0 ∨ m % 3 = 1 ∨ m % 3 = 2) with hm | hm | hm
        · have v1 : t (m + 1) = 2 := by
            show [1, 2, 3].getD ((m + 1) % 3) 0 = 2
            rw [show (m + 1) % 3 = 1 by omega]; rfl
          have v2 : t (m + 2) = 3 := by
            show [1, 2, 3].getD ((m + 2) % 3) 0 = 3
            rw [show (m + 2) % 3 = 2 by omega]; rfl
          have v3 : t (m + 3) = 1 := by
            show [1, 2, 3].getD ((m + 3) % 3) 0 = 1
            rw [show (m + 3) % 3 = 0 by omega]; rfl
          have v4 : t (m + 4) = 2 := by
            show [1, 2, 3].getD ((m + 4) % 3) 0 = 2
            rw [show (m + 4) % 3 = 1 by omega]; rfl
          have v5 : t (m + 5) = 3 := by
            show [1, 2, 3].getD ((m + 5) % 3) 0 = 3
            rw [show (m + 5) % 3 = 2 by omega]; rfl
          omega
        · have v1 : t (m + 1) = 3 := by
            show [1, 2, 3].getD ((m + 1) % 3) 0 = 3
            rw [show (m + 1) % 3 = 2 by omega]; rfl
          have v2 : t (m + 2) = 1 := by
            show [1, 2, 3].getD ((m + 2) % 3) 0 = 1
            rw [show (m + 2) % 3 = 0 by omega]; rfl
          have v3 : t (m + 3) = 2 := by
            show [1, 2, 3].getD ((m + 3) % 3) 0 = 2
            rw [show (m + 3) % 3 = 1 by omega]; rfl
          have v4 : t (m + 4) = 3 := by
            show [1, 2, 3].getD ((m + 4) % 3) 0 = 3
            rw [show (m + 4) % 3 = 2 by omega]; rfl
          have v5 : t (m + 5) = 1 := by
            show [1, 2, 3].getD ((m + 5) % 3) 0 = 1
            rw [show (m + 5) % 3 = 0 by omega]; rfl
          omega
        · have v1 : t (m + 1) = 1 := by
            show [1, 2, 3].getD ((m + 1) % 3) 0 = 1
            rw [show (m + 1) % 3 = 0 by omega]; rfl
          have v2 : t (m + 2) = 2 := by
            show [1, 2, 3].getD ((m + 2) % 3) 0 = 2
            rw [show (m + 2) % 3 = 1 by omega]; rfl
          have v3 : t (m + 3) = 3 := by
            show [1, 2, 3].getD ((m + 3) % 3) 0 = 3
            rw [show (m + 3) % 3 = 2 by omega]; rfl
          have v4 : t (m + 4) = 1 := by
            show [1, 2, 3].getD ((m + 4) % 3) 0 = 1
            rw [show (m + 4) % 3 = 0 by omega]; rfl
          have v5 : t (m + 5) = 2 := by
            show [1, 2, 3].getD ((m + 5) % 3) 0 = 2
            rw [show (m + 5) % 3 = 1 by omega]; rfl
          omega
  simp only [A037608, cf, Nat.sub_add_cancel hn]
  all_goals rfl
