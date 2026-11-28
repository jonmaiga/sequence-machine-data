import Prog.A002.A0024

/-- A002487: Stern's diatomic series, `a(0) = 0`, `a(1) = 1`, `a(2n) = a(n)`, `a(2n+1) = a(n) + a(n+1)`. -/
theorem A002487.anchor :
    A002487 0 = 0 ∧ A002487 1 = 1 ∧
      ∀ n, A002487 (2 * n) = A002487 n ∧ A002487 (2 * n + 1) = A002487 n + A002487 (n + 1) := by
  simp only [A002487]
  set c : ℕ → ℤ := A002487.P14011177000981426228.a with hc
  have h0 : c 0 = 0 := by rw [hc, A002487.P14011177000981426228.a, SequenceMachineLib.rec_of_lt _ _ (by simp)]; rfl
  have h1 : c 1 = 1 := by rw [hc, A002487.P14011177000981426228.a, SequenceMachineLib.rec_of_lt _ _ (by simp)]; rfl
  have hstep : ∀ n, 2 ≤ n → c n = c (n - 2) + c (n - 1) - 2 * Int.tmod (c (n - 2)) (c (n - 1)) := by
    intro n hn
    rw [hc, A002487.P14011177000981426228.a, SequenceMachineLib.rec_of_le _ _ (by simp; omega)]
    simp only [show n - 2 < n by omega, show n - 1 < n by omega, ↓reduceIte]
  have h2 : c 2 = 1 := by rw [hstep 2 le_rfl]; simp [h0, h1]
  have h3 : c 3 = 2 := by rw [hstep 3 (by norm_num)]; simp [h1, h2]
  -- the diatomic rules and positivity, by strong induction
  have key : ∀ k, 1 ≤ k → (1 ≤ c k) ∧ c (2 * k) = c k ∧ c (2 * k + 1) = c k + c (k + 1) := by
    intro k
    induction k using Nat.strong_induction_on with
    | _ k ih =>
    intro hk
    have pos : 1 ≤ c k := by
      rcases Nat.even_or_odd' k with ⟨q, rfl | rfl⟩
      · rcases Nat.lt_or_ge q 1 with hq | hq
        · omega
        · obtain ⟨p1, p2, -⟩ := ih q (by omega) hq; rw [p2]; exact p1
      · rcases Nat.lt_or_ge q 1 with hq | hq
        · obtain rfl : q = 0 := by omega
          rw [h1]
        · obtain ⟨p1, -, p3⟩ := ih q (by omega) hq
          obtain ⟨p4, -, -⟩ := ih (q + 1) (by omega) (by omega)
          rw [p3]; omega
    refine ⟨pos, ?_, ?_⟩
    · rcases Nat.lt_or_ge k 2 with hk2 | hk2
      · obtain rfl : k = 1 := by omega
        rw [h2, h1]
      · obtain ⟨-, d2, d3⟩ := ih (k - 1) (by omega) (by omega)
        have hnn : 0 ≤ c (k - 1) := by
          rcases Nat.lt_or_ge (k - 1) 1 with h | h
          · rw [show k - 1 = 0 by omega, h0]
          · exact le_trans zero_le_one (ih (k - 1) (by omega) h).1
        rw [hstep (2 * k) (by omega), show 2 * k - 2 = 2 * (k - 1) by omega,
          show 2 * k - 1 = 2 * (k - 1) + 1 by omega, d2, d3, show k - 1 + 1 = k by omega,
          Int.tmod_eq_of_lt hnn (by omega)]
        ring
    · rcases Nat.lt_or_ge k 2 with hk2 | hk2
      · obtain rfl : k = 1 := by omega
        rw [h3, h1, h2]; norm_num
      · obtain ⟨-, d2, d3⟩ := ih (k - 1) (by omega) (by omega)
        have hnn : 0 ≤ c (k - 1) := by
          rcases Nat.lt_or_ge (k - 1) 1 with h | h
          · rw [show k - 1 = 0 by omega, h0]
          · exact le_trans zero_le_one (ih (k - 1) (by omega) h).1
        have hk1 := hstep (k + 1) (by omega)
        rw [show k + 1 - 2 = k - 1 by omega, show k + 1 - 1 = k by omega] at hk1
        rw [hstep (2 * k + 1) (by omega), show 2 * k + 1 - 2 = 2 * (k - 1) + 1 by omega,
          show 2 * k + 1 - 1 = 2 * k by omega, d3, show k - 1 + 1 = k by omega]
        -- c(2k) = c(k), by the even rule just shown for k
        have e2 : c (2 * k) = c k := by
          rw [hstep (2 * k) (by omega), show 2 * k - 2 = 2 * (k - 1) by omega,
            show 2 * k - 1 = 2 * (k - 1) + 1 by omega, d2, d3, show k - 1 + 1 = k by omega,
            Int.tmod_eq_of_lt hnn (by omega)]
          ring
        rw [e2, hk1, Int.tmod_eq_emod_of_nonneg (by omega), Int.tmod_eq_emod_of_nonneg hnn, Int.add_emod_right]
        ring
  refine ⟨h0, h1, fun n => ?_⟩
  rcases Nat.lt_or_ge n 1 with hn | hn
  · obtain rfl : n = 0 := by omega
    simp [h0, h1]
  · exact ⟨(key n hn).2.1, (key n hn).2.2⟩

