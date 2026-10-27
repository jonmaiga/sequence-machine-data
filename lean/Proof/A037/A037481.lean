import Prog.A037.A0374

/-- A037481: the number whose base-4 digits are, in order, the first n terms of the periodic sequence 1, 2, ... -/
theorem A037481.anchor (n : ℕ) :
    A037481 n = ((Nat.ofDigits 4 ((List.range n).reverse.map fun i => [1, 2].getD (i % 2) 0) : ℕ) : ℤ) := by
  set t : ℕ → ℕ := fun i => [1, 2].getD (i % 2) 0 with ht_def
  set D : ℕ → ℕ := fun n => Nat.ofDigits 4 ((List.range n).reverse.map t) with hD
  have hstep : ∀ n, D (n + 1) = t n + 4 * D n := fun n => by
    simp only [hD, List.range_succ, List.reverse_append, List.reverse_singleton, List.singleton_append,
      List.map_cons, Nat.ofDigits_cons]
  have hper : ∀ n, t (n + 2) = t n := fun n => by simp only [ht_def, Nat.add_mod_right]
  have cf : ∀ m, A037481.P10494666032556963771.a m = (D m : ℤ) := by
    intro m
    induction m using Nat.strong_induction_on with
    | _ m ih =>
      match m with
      | 0 | 1 | 2 =>
        simp only [A037481.P10494666032556963771.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        decide
      | m + 3 =>
        have h1 : A037481.P10494666032556963771.a (m + 2) = D (m + 2) := ih (m + 2) (by omega)
        have h2 : A037481.P10494666032556963771.a (m + 1) = D (m + 1) := ih (m + 1) (by omega)
        have h3 : A037481.P10494666032556963771.a (m) = D (m) := ih (m) (by omega)
        simp only [A037481.P10494666032556963771.a] at h1 h2 h3 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
        rw [h1, h2, h3]
        have s0 : D (m + 1) = t (m) + 4 * D (m) := hstep (m)
        have s1 : D (m + 2) = t (m + 1) + 4 * D (m + 1) := hstep (m + 1)
        have s2 : D (m + 3) = t (m + 2) + 4 * D (m + 2) := hstep (m + 2)
        have p0 : t (m + 2) = t (m) := hper (m)
        show _ = ((D (m + 3) : ℕ) : ℤ)
        push_cast
        rcases (by omega : m % 2 = 0 ∨ m % 2 = 1) with hm | hm
        · have v0 : t (m) = 1 := by
            show [1, 2].getD ((m) % 2) 0 = 1
            rw [show (m) % 2 = 0 by omega]; rfl
          have v1 : t (m + 1) = 2 := by
            show [1, 2].getD ((m + 1) % 2) 0 = 2
            rw [show (m + 1) % 2 = 1 by omega]; rfl
          have v2 : t (m + 2) = 1 := by
            show [1, 2].getD ((m + 2) % 2) 0 = 1
            rw [show (m + 2) % 2 = 0 by omega]; rfl
          have v3 : t (m + 3) = 2 := by
            show [1, 2].getD ((m + 3) % 2) 0 = 2
            rw [show (m + 3) % 2 = 1 by omega]; rfl
          omega
        · have v0 : t (m) = 2 := by
            show [1, 2].getD ((m) % 2) 0 = 2
            rw [show (m) % 2 = 1 by omega]; rfl
          have v1 : t (m + 1) = 1 := by
            show [1, 2].getD ((m + 1) % 2) 0 = 1
            rw [show (m + 1) % 2 = 0 by omega]; rfl
          have v2 : t (m + 2) = 2 := by
            show [1, 2].getD ((m + 2) % 2) 0 = 2
            rw [show (m + 2) % 2 = 1 by omega]; rfl
          have v3 : t (m + 3) = 1 := by
            show [1, 2].getD ((m + 3) % 2) 0 = 1
            rw [show (m + 3) % 2 = 0 by omega]; rfl
          omega
  simp only [A037481, cf]
  all_goals rfl
