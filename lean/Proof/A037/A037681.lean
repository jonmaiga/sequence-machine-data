import Prog.A037.A0376
import Proof.Lib.OgfRec

/-- A037681: the number whose base-4 digits are, in order, the first n terms of the periodic sequence 1, 0, 3, 2, ... -/
theorem A037681.anchor (n : ℕ) (hn : 1 ≤ n) :
    A037681 n = ((Nat.ofDigits 4 ((List.range n).reverse.map fun i => [1, 0, 3, 2].getD (i % 4) 0) : ℕ) : ℤ) := by
  set t : ℕ → ℕ := fun i => [1, 0, 3, 2].getD (i % 4) 0 with ht_def
  set D : ℕ → ℕ := fun n => Nat.ofDigits 4 ((List.range n).reverse.map t) with hD
  have hstep : ∀ n, D (n + 1) = t n + 4 * D n := fun n => by
    simp only [hD, List.range_succ, List.reverse_append, List.reverse_singleton, List.singleton_append,
      List.map_cons, Nat.ofDigits_cons]
  have hper : ∀ n, t (n + 4) = t n := fun n => by simp only [ht_def, Nat.add_mod_right]
  have cf : ∀ m, A037681.P11597297634071554081.a m = (D (m + 1) : ℤ) := by
    have o0 : SequenceMachineLib.ogf [1, 0, 3, 2] [1, -4, 0, 0, -1, 4] 0 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [1, 0, 3, 2] [1, -4, 0, 0, -1, 4] 1 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [1, 0, 3, 2] [1, -4, 0, 0, -1, 4] 2 = 19 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [1, 0, 3, 2] [1, -4, 0, 0, -1, 4] 3 = 78 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [1, 0, 3, 2] [1, -4, 0, 0, -1, 4] 4 = 313 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    intro m
    induction m using Nat.strong_induction_on with
    | _ m ih =>
      match m with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A037681.P11597297634071554081.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4] <;> decide
      | m + 5 =>
        have h1 : A037681.P11597297634071554081.a (m + 4) = D (m + 5) := ih (m + 4) (by omega)
        have h4 : A037681.P11597297634071554081.a (m + 1) = D (m + 2) := ih (m + 1) (by omega)
        have h5 : A037681.P11597297634071554081.a (m) = D (m + 1) := ih (m) (by omega)
        simp only [A037681.P11597297634071554081.a, SequenceMachineLib.memo_apply] at h1 h4 h5 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 5 - 1 = m + 4 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega]
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
            show [1, 0, 3, 2].getD ((m + 1) % 4) 0 = 0
            rw [show (m + 1) % 4 = 1 by omega]; rfl
          have v2 : t (m + 2) = 3 := by
            show [1, 0, 3, 2].getD ((m + 2) % 4) 0 = 3
            rw [show (m + 2) % 4 = 2 by omega]; rfl
          have v3 : t (m + 3) = 2 := by
            show [1, 0, 3, 2].getD ((m + 3) % 4) 0 = 2
            rw [show (m + 3) % 4 = 3 by omega]; rfl
          have v4 : t (m + 4) = 1 := by
            show [1, 0, 3, 2].getD ((m + 4) % 4) 0 = 1
            rw [show (m + 4) % 4 = 0 by omega]; rfl
          have v5 : t (m + 5) = 0 := by
            show [1, 0, 3, 2].getD ((m + 5) % 4) 0 = 0
            rw [show (m + 5) % 4 = 1 by omega]; rfl
          have v6 : t (m + 6) = 3 := by
            show [1, 0, 3, 2].getD ((m + 6) % 4) 0 = 3
            rw [show (m + 6) % 4 = 2 by omega]; rfl
          omega
        · have v1 : t (m + 1) = 3 := by
            show [1, 0, 3, 2].getD ((m + 1) % 4) 0 = 3
            rw [show (m + 1) % 4 = 2 by omega]; rfl
          have v2 : t (m + 2) = 2 := by
            show [1, 0, 3, 2].getD ((m + 2) % 4) 0 = 2
            rw [show (m + 2) % 4 = 3 by omega]; rfl
          have v3 : t (m + 3) = 1 := by
            show [1, 0, 3, 2].getD ((m + 3) % 4) 0 = 1
            rw [show (m + 3) % 4 = 0 by omega]; rfl
          have v4 : t (m + 4) = 0 := by
            show [1, 0, 3, 2].getD ((m + 4) % 4) 0 = 0
            rw [show (m + 4) % 4 = 1 by omega]; rfl
          have v5 : t (m + 5) = 3 := by
            show [1, 0, 3, 2].getD ((m + 5) % 4) 0 = 3
            rw [show (m + 5) % 4 = 2 by omega]; rfl
          have v6 : t (m + 6) = 2 := by
            show [1, 0, 3, 2].getD ((m + 6) % 4) 0 = 2
            rw [show (m + 6) % 4 = 3 by omega]; rfl
          omega
        · have v1 : t (m + 1) = 2 := by
            show [1, 0, 3, 2].getD ((m + 1) % 4) 0 = 2
            rw [show (m + 1) % 4 = 3 by omega]; rfl
          have v2 : t (m + 2) = 1 := by
            show [1, 0, 3, 2].getD ((m + 2) % 4) 0 = 1
            rw [show (m + 2) % 4 = 0 by omega]; rfl
          have v3 : t (m + 3) = 0 := by
            show [1, 0, 3, 2].getD ((m + 3) % 4) 0 = 0
            rw [show (m + 3) % 4 = 1 by omega]; rfl
          have v4 : t (m + 4) = 3 := by
            show [1, 0, 3, 2].getD ((m + 4) % 4) 0 = 3
            rw [show (m + 4) % 4 = 2 by omega]; rfl
          have v5 : t (m + 5) = 2 := by
            show [1, 0, 3, 2].getD ((m + 5) % 4) 0 = 2
            rw [show (m + 5) % 4 = 3 by omega]; rfl
          have v6 : t (m + 6) = 1 := by
            show [1, 0, 3, 2].getD ((m + 6) % 4) 0 = 1
            rw [show (m + 6) % 4 = 0 by omega]; rfl
          omega
        · have v1 : t (m + 1) = 1 := by
            show [1, 0, 3, 2].getD ((m + 1) % 4) 0 = 1
            rw [show (m + 1) % 4 = 0 by omega]; rfl
          have v2 : t (m + 2) = 0 := by
            show [1, 0, 3, 2].getD ((m + 2) % 4) 0 = 0
            rw [show (m + 2) % 4 = 1 by omega]; rfl
          have v3 : t (m + 3) = 3 := by
            show [1, 0, 3, 2].getD ((m + 3) % 4) 0 = 3
            rw [show (m + 3) % 4 = 2 by omega]; rfl
          have v4 : t (m + 4) = 2 := by
            show [1, 0, 3, 2].getD ((m + 4) % 4) 0 = 2
            rw [show (m + 4) % 4 = 3 by omega]; rfl
          have v5 : t (m + 5) = 1 := by
            show [1, 0, 3, 2].getD ((m + 5) % 4) 0 = 1
            rw [show (m + 5) % 4 = 0 by omega]; rfl
          have v6 : t (m + 6) = 0 := by
            show [1, 0, 3, 2].getD ((m + 6) % 4) 0 = 0
            rw [show (m + 6) % 4 = 1 by omega]; rfl
          omega
  simp only [A037681, cf, Nat.sub_add_cancel hn]
  all_goals rfl
