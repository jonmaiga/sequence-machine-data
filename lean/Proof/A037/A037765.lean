import Prog.A037.A0377

/-- A037765: the number whose base-4 digits are, in order, the first n terms of the periodic sequence 3, 0, 2, 1, ... -/
theorem A037765.anchor (n : ℕ) (hn : 1 ≤ n) :
    A037765 n = ((Nat.ofDigits 4 ((List.range n).reverse.map fun i => [3, 0, 2, 1].getD (i % 4) 0) : ℕ) : ℤ) := by
  set t : ℕ → ℕ := fun i => [3, 0, 2, 1].getD (i % 4) 0 with ht_def
  set D : ℕ → ℕ := fun n => Nat.ofDigits 4 ((List.range n).reverse.map t) with hD
  have hstep : ∀ n, D (n + 1) = t n + 4 * D n := fun n => by
    simp only [hD, List.range_succ, List.reverse_append, List.reverse_singleton, List.singleton_append,
      List.map_cons, Nat.ofDigits_cons]
  have hper : ∀ n, t (n + 4) = t n := fun n => by simp only [ht_def, Nat.add_mod_right]
  have cf : ∀ m, A037765.P14365841650636542087.a m = (D (m + 1) : ℤ) := by
    intro m
    induction m using Nat.strong_induction_on with
    | _ m ih =>
      match m with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A037765.P14365841650636542087.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        decide
      | m + 5 =>
        have h1 : A037765.P14365841650636542087.a (m + 4) = D (m + 5) := ih (m + 4) (by omega)
        have h4 : A037765.P14365841650636542087.a (m + 1) = D (m + 2) := ih (m + 1) (by omega)
        have h5 : A037765.P14365841650636542087.a (m) = D (m + 1) := ih (m) (by omega)
        simp only [A037765.P14365841650636542087.a] at h1 h4 h5 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
        rw [h1, h4, h5]
        have s1 : D (m + 2) = t (m + 1) + 4 * D (m + 1) := hstep (m + 1)
        have s2 : D (m + 3) = t (m + 2) + 4 * D (m + 2) := hstep (m + 2)
        have s3 : D (m + 4) = t (m + 3) + 4 * D (m + 3) := hstep (m + 3)
        have s4 : D (m + 5) = t (m + 4) + 4 * D (m + 4) := hstep (m + 4)
        have s5 : D (m + 6) = t (m + 5) + 4 * D (m + 5) := hstep (m + 5)
        have p1 : t (m + 5) = t (m + 1) := hper (m + 1)
        show _ = ((D (m + 6) : ℕ) : ℤ)
        push_cast
        rcases (by omega : m % 4 = 0 ∨ m % 4 = 1 ∨ m % 4 = 2 ∨ m % 4 = 3) with hm | hm | hm | hm
        · have v1 : t (m + 1) = 0 := by
            show [3, 0, 2, 1].getD ((m + 1) % 4) 0 = 0
            rw [show (m + 1) % 4 = 1 by omega]; rfl
          have v2 : t (m + 2) = 2 := by
            show [3, 0, 2, 1].getD ((m + 2) % 4) 0 = 2
            rw [show (m + 2) % 4 = 2 by omega]; rfl
          have v3 : t (m + 3) = 1 := by
            show [3, 0, 2, 1].getD ((m + 3) % 4) 0 = 1
            rw [show (m + 3) % 4 = 3 by omega]; rfl
          have v4 : t (m + 4) = 3 := by
            show [3, 0, 2, 1].getD ((m + 4) % 4) 0 = 3
            rw [show (m + 4) % 4 = 0 by omega]; rfl
          have v5 : t (m + 5) = 0 := by
            show [3, 0, 2, 1].getD ((m + 5) % 4) 0 = 0
            rw [show (m + 5) % 4 = 1 by omega]; rfl
          have v6 : t (m + 6) = 2 := by
            show [3, 0, 2, 1].getD ((m + 6) % 4) 0 = 2
            rw [show (m + 6) % 4 = 2 by omega]; rfl
          omega
        · have v1 : t (m + 1) = 2 := by
            show [3, 0, 2, 1].getD ((m + 1) % 4) 0 = 2
            rw [show (m + 1) % 4 = 2 by omega]; rfl
          have v2 : t (m + 2) = 1 := by
            show [3, 0, 2, 1].getD ((m + 2) % 4) 0 = 1
            rw [show (m + 2) % 4 = 3 by omega]; rfl
          have v3 : t (m + 3) = 3 := by
            show [3, 0, 2, 1].getD ((m + 3) % 4) 0 = 3
            rw [show (m + 3) % 4 = 0 by omega]; rfl
          have v4 : t (m + 4) = 0 := by
            show [3, 0, 2, 1].getD ((m + 4) % 4) 0 = 0
            rw [show (m + 4) % 4 = 1 by omega]; rfl
          have v5 : t (m + 5) = 2 := by
            show [3, 0, 2, 1].getD ((m + 5) % 4) 0 = 2
            rw [show (m + 5) % 4 = 2 by omega]; rfl
          have v6 : t (m + 6) = 1 := by
            show [3, 0, 2, 1].getD ((m + 6) % 4) 0 = 1
            rw [show (m + 6) % 4 = 3 by omega]; rfl
          omega
        · have v1 : t (m + 1) = 1 := by
            show [3, 0, 2, 1].getD ((m + 1) % 4) 0 = 1
            rw [show (m + 1) % 4 = 3 by omega]; rfl
          have v2 : t (m + 2) = 3 := by
            show [3, 0, 2, 1].getD ((m + 2) % 4) 0 = 3
            rw [show (m + 2) % 4 = 0 by omega]; rfl
          have v3 : t (m + 3) = 0 := by
            show [3, 0, 2, 1].getD ((m + 3) % 4) 0 = 0
            rw [show (m + 3) % 4 = 1 by omega]; rfl
          have v4 : t (m + 4) = 2 := by
            show [3, 0, 2, 1].getD ((m + 4) % 4) 0 = 2
            rw [show (m + 4) % 4 = 2 by omega]; rfl
          have v5 : t (m + 5) = 1 := by
            show [3, 0, 2, 1].getD ((m + 5) % 4) 0 = 1
            rw [show (m + 5) % 4 = 3 by omega]; rfl
          have v6 : t (m + 6) = 3 := by
            show [3, 0, 2, 1].getD ((m + 6) % 4) 0 = 3
            rw [show (m + 6) % 4 = 0 by omega]; rfl
          omega
        · have v1 : t (m + 1) = 3 := by
            show [3, 0, 2, 1].getD ((m + 1) % 4) 0 = 3
            rw [show (m + 1) % 4 = 0 by omega]; rfl
          have v2 : t (m + 2) = 0 := by
            show [3, 0, 2, 1].getD ((m + 2) % 4) 0 = 0
            rw [show (m + 2) % 4 = 1 by omega]; rfl
          have v3 : t (m + 3) = 2 := by
            show [3, 0, 2, 1].getD ((m + 3) % 4) 0 = 2
            rw [show (m + 3) % 4 = 2 by omega]; rfl
          have v4 : t (m + 4) = 1 := by
            show [3, 0, 2, 1].getD ((m + 4) % 4) 0 = 1
            rw [show (m + 4) % 4 = 3 by omega]; rfl
          have v5 : t (m + 5) = 3 := by
            show [3, 0, 2, 1].getD ((m + 5) % 4) 0 = 3
            rw [show (m + 5) % 4 = 0 by omega]; rfl
          have v6 : t (m + 6) = 0 := by
            show [3, 0, 2, 1].getD ((m + 6) % 4) 0 = 0
            rw [show (m + 6) % 4 = 1 by omega]; rfl
          omega
  simp only [A037765, cf, Nat.sub_add_cancel hn]
  all_goals rfl
