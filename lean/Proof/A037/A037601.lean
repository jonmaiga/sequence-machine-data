import Prog.A037.A0376
import Proof.Lib.OgfRec

/-- A037601: the number whose base-8 digits are, in order, the first n terms of the periodic sequence 1, 3, 0, ... -/
theorem A037601.anchor (n : ℕ) (hn : 1 ≤ n) :
    A037601 n = ((Nat.ofDigits 8 ((List.range n).reverse.map fun i => [1, 3, 0].getD (i % 3) 0) : ℕ) : ℤ) := by
  set t : ℕ → ℕ := fun i => [1, 3, 0].getD (i % 3) 0 with ht_def
  set D : ℕ → ℕ := fun n => Nat.ofDigits 8 ((List.range n).reverse.map t) with hD
  have hstep : ∀ n, D (n + 1) = t n + 8 * D n := fun n => by
    simp only [hD, List.range_succ, List.reverse_append, List.reverse_singleton, List.singleton_append,
      List.map_cons, Nat.ofDigits_cons]
  have hper : ∀ n, t (n + 3) = t n := fun n => by simp only [ht_def, Nat.add_mod_right]
  have cf : ∀ m, A037601.P7302128715342705990.a m = (D (m + 1) : ℤ) := by
    have o0 : SequenceMachineLib.ogf [1, 3] [1, -8, 0, -1, 8] 0 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [1, 3] [1, -8, 0, -1, 8] 1 = 11 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [1, 3] [1, -8, 0, -1, 8] 2 = 88 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [1, 3] [1, -8, 0, -1, 8] 3 = 705 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    intro m
    induction m using Nat.strong_induction_on with
    | _ m ih =>
      match m with
      | 0 | 1 | 2 | 3 =>
        simp only [A037601.P7302128715342705990.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3] <;> decide
      | m + 4 =>
        have h1 : A037601.P7302128715342705990.a (m + 3) = D (m + 4) := ih (m + 3) (by omega)
        have h3 : A037601.P7302128715342705990.a (m + 1) = D (m + 2) := ih (m + 1) (by omega)
        have h4 : A037601.P7302128715342705990.a (m) = D (m + 1) := ih (m) (by omega)
        simp only [A037601.P7302128715342705990.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega]
        rw [h1, h3, h4]
        have s1 : D (m + 2) = t (m + 1) + 8 * D (m + 1) := hstep (m + 1)
        have s2 : D (m + 3) = t (m + 2) + 8 * D (m + 2) := hstep (m + 2)
        have s3 : D (m + 4) = t (m + 3) + 8 * D (m + 3) := hstep (m + 3)
        have s4 : D (m + 5) = t (m + 4) + 8 * D (m + 4) := hstep (m + 4)
        have p1 : t (m + 4) = t (m + 1) := hper (m + 1)
        show _ = ((D (m + 5) : ℕ) : ℤ)
        push_cast
        rcases (by omega : m % 3 = 0 ∨ m % 3 = 1 ∨ m % 3 = 2) with hm | hm | hm
        · have v1 : t (m + 1) = 3 := by
            show [1, 3, 0].getD ((m + 1) % 3) 0 = 3
            rw [show (m + 1) % 3 = 1 by omega]; rfl
          have v2 : t (m + 2) = 0 := by
            show [1, 3, 0].getD ((m + 2) % 3) 0 = 0
            rw [show (m + 2) % 3 = 2 by omega]; rfl
          have v3 : t (m + 3) = 1 := by
            show [1, 3, 0].getD ((m + 3) % 3) 0 = 1
            rw [show (m + 3) % 3 = 0 by omega]; rfl
          have v4 : t (m + 4) = 3 := by
            show [1, 3, 0].getD ((m + 4) % 3) 0 = 3
            rw [show (m + 4) % 3 = 1 by omega]; rfl
          have v5 : t (m + 5) = 0 := by
            show [1, 3, 0].getD ((m + 5) % 3) 0 = 0
            rw [show (m + 5) % 3 = 2 by omega]; rfl
          omega
        · have v1 : t (m + 1) = 0 := by
            show [1, 3, 0].getD ((m + 1) % 3) 0 = 0
            rw [show (m + 1) % 3 = 2 by omega]; rfl
          have v2 : t (m + 2) = 1 := by
            show [1, 3, 0].getD ((m + 2) % 3) 0 = 1
            rw [show (m + 2) % 3 = 0 by omega]; rfl
          have v3 : t (m + 3) = 3 := by
            show [1, 3, 0].getD ((m + 3) % 3) 0 = 3
            rw [show (m + 3) % 3 = 1 by omega]; rfl
          have v4 : t (m + 4) = 0 := by
            show [1, 3, 0].getD ((m + 4) % 3) 0 = 0
            rw [show (m + 4) % 3 = 2 by omega]; rfl
          have v5 : t (m + 5) = 1 := by
            show [1, 3, 0].getD ((m + 5) % 3) 0 = 1
            rw [show (m + 5) % 3 = 0 by omega]; rfl
          omega
        · have v1 : t (m + 1) = 1 := by
            show [1, 3, 0].getD ((m + 1) % 3) 0 = 1
            rw [show (m + 1) % 3 = 0 by omega]; rfl
          have v2 : t (m + 2) = 3 := by
            show [1, 3, 0].getD ((m + 2) % 3) 0 = 3
            rw [show (m + 2) % 3 = 1 by omega]; rfl
          have v3 : t (m + 3) = 0 := by
            show [1, 3, 0].getD ((m + 3) % 3) 0 = 0
            rw [show (m + 3) % 3 = 2 by omega]; rfl
          have v4 : t (m + 4) = 1 := by
            show [1, 3, 0].getD ((m + 4) % 3) 0 = 1
            rw [show (m + 4) % 3 = 0 by omega]; rfl
          have v5 : t (m + 5) = 3 := by
            show [1, 3, 0].getD ((m + 5) % 3) 0 = 3
            rw [show (m + 5) % 3 = 1 by omega]; rfl
          omega
  simp only [A037601, cf, Nat.sub_add_cancel hn]
  all_goals rfl
