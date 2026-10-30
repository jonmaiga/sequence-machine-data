import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A165300: a(n) is the smallest number not already present that permits the cyclic repetition of the path 1,2 of the digits in the sequence.

The programs for A165300, there is no canonical definition to state claims against.
-/

/-! ## A165300.P8259350409826498070

`A065031(A377919(n+1))`
-/

namespace A165300.P8259350409826498070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (A377919 (n + 1)).toNat

end

end A165300.P8259350409826498070

/-! ## A165300.P7087460736338069465

`A167679(A335458(n+4)^A007095(n+1))`
-/

namespace A165300.P7087460736338069465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167679 (SequenceMachineLib.roundAway ((A335458 (n + 4) : ℚ) ^ (A007095 (n + 1) : ℤ))).toNat

end

end A165300.P7087460736338069465

/-! ## A165300.P1154208061570232956

`A167679(A335458(n+4)^A000010(2*(n+2)))`
-/

namespace A165300.P1154208061570232956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167679 (SequenceMachineLib.roundAway ((A335458 (n + 4) : ℚ) ^ (A000010 (2 * (n + 2)) : ℤ))).toNat

end

end A165300.P1154208061570232956

/-!
# A165302: a(n) is the smallest number not already in the sequence, such that the concatenation of all a(n) displays the periodic digit string 1, 2, 3, 4 (and repeat).

The programs for A165302, there is no canonical definition to state claims against.
-/

/-! ## A165302.P6033770925504639474

`∑[A337277(A337457(n))]`
-/

namespace A165302.P6033770925504639474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337277 (A337457 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165302.P6033770925504639474

/-! ## A165302.P16177337593200034379

`eq[A031235(n), A229186(n)]`
-/

namespace A165302.P16177337593200034379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165302.P16177337593200034379

/-! ## A165302.P16154962564785847317

`A362563(A026764(n))+A163905(n)`
-/

namespace A165302.P16154962564785847317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362563 (A026764 n).toNat + A163905 n

end

end A165302.P16154962564785847317

/-!
# A165303: a(n) is the smallest number not already in the sequence, such that the concatenation of all a(n) displays the periodic digit string 1, 2, 3, 4, 5 (and repeat).

The programs for A165303, there is no canonical definition to state claims against.
-/

/-! ## A165303.P7412656070136552727

`A098758(n+1)-A106747(A098758(n+1))`
-/

namespace A165303.P7412656070136552727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098758 (n + 1) - A106747 (A098758 (n + 1)).toNat

end

end A165303.P7412656070136552727

/-!
# A165304: a(n) is the smallest number not already in the sequence, such that the concatenation of all a(n) displays the periodic digit string 1, 2, 3, 4, 5, 6 (and repeat).

The programs for A165304, there is no canonical definition to state claims against.
-/

/-! ## A165304.P15788841328882226985

`A138141(A078931(n+1))`
-/

namespace A165304.P15788841328882226985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138141 (A078931 (n + 1)).toNat

end

end A165304.P15788841328882226985

/-! ## A165304.P13815748559487783145

`∑[A275440(A275442(n)²)]`
-/

namespace A165304.P13815748559487783145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275440 (A275442 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165304.P13815748559487783145

/-! ## A165304.P7152837218547350721

`∑[A010200(A241444(n)!)]`
-/

namespace A165304.P7152837218547350721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010200 (Nat.factorial (A241444 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165304.P7152837218547350721

/-! ## A165304.P13275029143721373550

`∑[A268811(A008130(n)!)]`
-/

namespace A165304.P13275029143721373550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268811 (Nat.factorial (A008130 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165304.P13275029143721373550

/-! ## A165304.P13178306284993240666

`∑[A258127(A029045(n)!)]`
-/

namespace A165304.P13178306284993240666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258127 (Nat.factorial (A029045 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165304.P13178306284993240666

/-!
# A165305: a(n) is the smallest number not yet in the sequence such that the concatenation of all terms yields a periodic stream of digits 1, 2, 3, ..., 7 (repeat from 1).

The programs for A165305, there is no canonical definition to state claims against.
-/

/-! ## A165305.P12670257394317389831

`A290388(∑[A262809(n)])`
-/

namespace A165305.P12670257394317389831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290388 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165305.P12670257394317389831

/-! ## A165305.P8946806291574410316

`A290388(∑[A347811(n)])`
-/

namespace A165305.P8946806291574410316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290388 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165305.P8946806291574410316

/-! ## A165305.P1575343269859328981

`A290388(or(A262878(n), A290387(n+1)))`
-/

namespace A165305.P1575343269859328981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290388 (Int.lor (A262878 n) (A290387 (n + 1))).toNat

end

end A165305.P1575343269859328981

/-! ## A165305.P6319291707816024094

`A290388(A290387(n+1)+A282441(n+1))`
-/

namespace A165305.P6319291707816024094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290388 (A290387 (n + 1) + A282441 (n + 1)).toNat

end

end A165305.P6319291707816024094

/-! ## A165305.P4752927783912630250

`A290388(or(A290387(n+1), A298719(n+1)))`
-/

namespace A165305.P4752927783912630250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290388 (Int.lor (A290387 (n + 1)) (A298719 (n + 1))).toNat

end

end A165305.P4752927783912630250

/-!
# A165306: a(n) is the smallest number not yet in the sequence such that concatenation of all terms yields an infinite periodic stream of digits 1, 2, 3, ..., 8 (repeat from 1).

The programs for A165306, there is no canonical definition to state claims against.
-/

/-! ## A165306.P2216808631662394902

`A098755(∑[A144150(n)!])`
-/

namespace A165306.P2216808631662394902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A144150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098755 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165306.P2216808631662394902

/-! ## A165306.P13195760604341356728

`A098755(∑[A326323(n)!])`
-/

namespace A165306.P13195760604341356728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A326323 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098755 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165306.P13195760604341356728

/-! ## A165306.P9532910846971383866

`A138141(A141340(n+1)%A355630(n+2))`
-/

namespace A165306.P9532910846971383866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138141 (Int.tmod (A141340 (n + 1)) (A355630 (n + 2))).toNat

end

end A165306.P9532910846971383866

/-! ## A165306.P14414743877158270623

`A098755(∑[A227578(n)!])`
-/

namespace A165306.P14414743877158270623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A227578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098755 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165306.P14414743877158270623

/-! ## A165306.P11883670480073022073

`filter[A098755(n+1), A102609(#)]`
-/

namespace A165306.P11883670480073022073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A165306.P11883670480073022073

/-!
# A165307: Minimum number n, not already present, that permits the cyclic repetition of the decimal digits 1,2,3,4,5,6,7,8,9 in the sequence.

The programs for A165307, there is no canonical definition to state claims against.
-/

/-! ## A165307.P10037768373327791056

`A004719(A098755(n+1))`
-/

namespace A165307.P10037768373327791056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A098755 (n + 1)).toNat

end

end A165307.P10037768373327791056

/-! ## A165307.P9171519080794292439

`A302504(n+2)+A016389(A008292(n+1))`
-/

namespace A165307.P9171519080794292439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302504 (n + 2) + A016389 (A008292 (n + 1)).toNat

end

end A165307.P9171519080794292439

/-! ## A165307.P11205708891996272014

`A081549(A077168(n))`
-/

namespace A165307.P11205708891996272014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081549 (A077168 n).toNat

end

end A165307.P11205708891996272014

/-! ## A165307.P9769344137313917385

`A081549(A065673(n+1))`
-/

namespace A165307.P9769344137313917385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081549 (A065673 (n + 1)).toNat

end

end A165307.P9769344137313917385

/-! ## A165307.P15327545648260911767

`A118759(A081549(n+1))`
-/

namespace A165307.P15327545648260911767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A081549 (n + 1)).toNat

end

end A165307.P15327545648260911767

/-!
# A165310: a(0)=1, a(1)=3, a(n) = 7*a(n-1) - 9*a(n-2) for n > 1.

The programs for A165310, the canonical program `A165310.P14903914367116849212` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165310 has offset 0).

The definition of A165310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-9*a(n-2)` (program `A165310.P14903914367116849212`, by `A165310.P14903914367116849212.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165310.P13684098238846596075

`ogf((1-4x)/(1-7x+9x^2))`
-/

namespace A165310.P13684098238846596075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -7, 9] n

end

end A165310.P13684098238846596075

namespace A165310

/-- `ogf((1-4x)/(1-7x+9x^2))` -/
def P13684098238846596075.Spec : Prop :=
  ∀ n, P13684098238846596075.a n = A165310 n

end A165310

/-! ## A165310.P14903914367116849212

`7*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165310

/-- `7*a(n-1)-9*a(n-2)` -/
def P14903914367116849212.Spec : Prop :=
  ∀ n, P14903914367116849212.a n = A165310 n

theorem P14903914367116849212.correct : P14903914367116849212.Spec := by
  intro n
  simp only [A165310]

end A165310

/-! ## A165310.P11216360155088329085

`∑{#}[n, A165253(C(n+1, 2)+#)*3^(n-#)]`
-/

namespace A165310.P11216360155088329085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A165253 (Nat.choose (n + 1) 2 + k) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A165310.P11216360155088329085

namespace A165310

/-- `∑{#}[n, A165253(C(n+1, 2)+#)*3^(n-#)]` -/
def P11216360155088329085.Spec : Prop :=
  ∀ n, P11216360155088329085.a n = (A165310 n : ℚ)

end A165310

/-! ## A165310.P3099704908417746815

`((13-sqrt(13))*(7+sqrt(13))^n+(13+sqrt(13))*(7-sqrt(13))^n)/(26*2^n)`
-/

namespace A165310.P3099704908417746815
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((13 - Real.sqrt (13 : ℝ)) * (7 + Real.sqrt (13 : ℝ)) ^ n + (13 + Real.sqrt (13 : ℝ)) * (7 - Real.sqrt (13 : ℝ)) ^ n) / (26 * 2 ^ n : ℝ)

end

end A165310.P3099704908417746815

namespace A165310

/-- `((13-sqrt(13))*(7+sqrt(13))^n+(13+sqrt(13))*(7-sqrt(13))^n)/(26*2^n)` -/
def P3099704908417746815.Spec : Prop :=
  ∀ n, P3099704908417746815.a n = (A165310 n : ℝ)

theorem P3099704908417746815.correct : P3099704908417746815.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165310, Nat.add_sub_cancel, A165310.P3099704908417746815.a, A165310.P14903914367116849212.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165310, Nat.add_sub_cancel, A165310.P3099704908417746815.a, A165310.P14903914367116849212.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A165310

/-! ## A165310.P11868323276040615247

`record[3*a(n-2)-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A165310.P11868323276040615247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  3 * f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165310.P11868323276040615247

namespace A165310

/-- `record[3*a(n-2)-a(n-1)]` -/
def P11868323276040615247.Spec : Prop :=
  ∀ n, P11868323276040615247.a n = A165310 n

end A165310

/-! ## A165310.P7684008746787149453

`Δ[A112831(n)]`
-/

namespace A165310.P7684008746787149453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165310.P7684008746787149453

namespace A165310

/-- `Δ[A112831(n)]` -/
def P7684008746787149453.Spec : Prop :=
  ∀ n, P7684008746787149453.a n = A165310 n

end A165310

/-! ## A165310.P5445088342192048343

`A052533(2*n)`
-/

namespace A165310.P5445088342192048343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 (2 * n)

end

end A165310.P5445088342192048343

namespace A165310

/-- `A052533(2*n)` -/
def P5445088342192048343.Spec : Prop :=
  ∀ n, P5445088342192048343.a n = A165310 n

end A165310

/-! ## A165310.P4969372767124292464

`Δ[record[A140165(n+1)]]`
-/

namespace A165310.P4969372767124292464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165310.P4969372767124292464

namespace A165310

/-- `Δ[record[A140165(n+1)]]` -/
def P4969372767124292464.Spec : Prop :=
  ∀ n, P4969372767124292464.a n = A165310 n

end A165310

/-! ## A165310.P3106457954530275017

`∑{#}[n, C(n, #)*A052961(#)]`
-/

namespace A165310.P3106457954530275017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A052961 k

end

end A165310.P3106457954530275017

namespace A165310

/-- `∑{#}[n, C(n, #)*A052961(#)]` -/
def P3106457954530275017.Spec : Prop :=
  ∀ n, P3106457954530275017.a n = A165310 n

end A165310

/-! ## A165310.P13087088520943238794

`record[A052533(A014681(n))]`
-/

namespace A165310.P13087088520943238794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165310.P13087088520943238794

namespace A165310

/-- `record[A052533(A014681(n))]` -/
def P13087088520943238794.Spec : Prop :=
  ∀ n, P13087088520943238794.a n = A165310 n

end A165310

/-! ## A165310.P17495511773425542773

`A112831(n+1)-A112831(n)`
-/

namespace A165310.P17495511773425542773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112831 (n + 1) - A112831 n

end

end A165310.P17495511773425542773

namespace A165310

/-- `A112831(n+1)-A112831(n)` -/
def P17495511773425542773.Spec : Prop :=
  ∀ n, P17495511773425542773.a n = A165310 n

end A165310

/-! ## A165310.P14574963264144844746

`record[A052533(gcd(n, A318517(n+2)))]`
-/

namespace A165310.P14574963264144844746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 (Int.gcd (n : ℤ) (A318517 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165310.P14574963264144844746

namespace A165310

/-- `record[A052533(gcd(n, A318517(n+2)))]` -/
def P14574963264144844746.Spec : Prop :=
  ∀ n, P14574963264144844746.a n = A165310 n

end A165310

/-! ## A165310.P3937474103281062219

`A182228(2*n)+A006130(2*n)`
-/

namespace A165310.P3937474103281062219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 (2 * n) + A006130 (2 * n)

end

end A165310.P3937474103281062219

namespace A165310

/-- `A182228(2*n)+A006130(2*n)` -/
def P3937474103281062219.Spec : Prop :=
  ∀ n, P3937474103281062219.a n = A165310 n

end A165310

/-! ## A165310.P14320967129877783223

`A075118(2*n)-A006130(2*n)`
-/

namespace A165310.P14320967129877783223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075118 (2 * n) - A006130 (2 * n)

end

end A165310.P14320967129877783223

namespace A165310

/-- `A075118(2*n)-A006130(2*n)` -/
def P14320967129877783223.Spec : Prop :=
  ∀ n, P14320967129877783223.a n = A165310 n

end A165310

/-! ## A165310.P17118338305091912088

`A006130(2*n)-A099579(2*n)`
-/

namespace A165310.P17118338305091912088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (2 * n) - A099579 (2 * n)

end

end A165310.P17118338305091912088

namespace A165310

/-- `A006130(2*n)-A099579(2*n)` -/
def P17118338305091912088.Spec : Prop :=
  ∀ n, P17118338305091912088.a n = A165310 n

end A165310

/-! ## A165310.P17137565721520851564

`A140165(2*n+1)+2*A099579(2*n)`
-/

namespace A165310.P17137565721520851564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (2 * n + 1) + 2 * A099579 (2 * n)

end

end A165310.P17137565721520851564

namespace A165310

/-- `A140165(2*n+1)+2*A099579(2*n)` -/
def P17137565721520851564.Spec : Prop :=
  ∀ n, P17137565721520851564.a n = A165310 n

end A165310

/-! ## A165310.P15256167289078352145

`A140165(2*(n+1))-A140165(A004277(n))`
-/

namespace A165310.P15256167289078352145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (2 * (n + 1)) - A140165 (A004277 n).toNat

end

end A165310.P15256167289078352145

namespace A165310

/-- `A140165(2*(n+1))-A140165(A004277(n))` -/
def P15256167289078352145.Spec : Prop :=
  ∀ n, P15256167289078352145.a n = A165310 n

end A165310

/-! ## A165310.P8754918155979324855

`A140165(2*(n+1))-A140165(A004275(n+1))`
-/

namespace A165310.P8754918155979324855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (2 * (n + 1)) - A140165 (A004275 (n + 1)).toNat

end

end A165310.P8754918155979324855

namespace A165310

/-- `A140165(2*(n+1))-A140165(A004275(n+1))` -/
def P8754918155979324855.Spec : Prop :=
  ∀ n, P8754918155979324855.a n = A165310 n

end A165310

/-! ## A165310.P8265038011043307811

`A006130(2*n)+A006130(2*n)-A006138(2*n)`
-/

namespace A165310.P8265038011043307811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (2 * n) + (A006130 (2 * n) - A006138 (2 * n))

end

end A165310.P8265038011043307811

namespace A165310

/-- `A006130(2*n)+A006130(2*n)-A006138(2*n)` -/
def P8265038011043307811.Spec : Prop :=
  ∀ n, P8265038011043307811.a n = A165310 n

end A165310

/-! ## A165310.P2815168032777164872

`Δ[record[∑[A182228(n)]]]`
-/

namespace A165310.P2815168032777164872
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165310.P2815168032777164872

namespace A165310

/-- `Δ[record[∑[A182228(n)]]]` -/
def P2815168032777164872.Spec : Prop :=
  ∀ n, P2815168032777164872.a n = A165310 n

end A165310

/-!
# A165311: a(0)=1, a(1)=4, a(n)=9*a(n-1)-16*a(n-2) for n>1.

The programs for A165311, the canonical program `A165311.P12258096462931412990` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165311 has offset 0).

The definition of A165311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-16*a(n-2)` (program `A165311.P12258096462931412990`, by `A165311.P12258096462931412990.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165311.P1831173653633667565

`ogf((1-5x)/(1-9x+16x^2))`
-/

namespace A165311.P1831173653633667565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -9, 16] n

end

end A165311.P1831173653633667565

namespace A165311

/-- `ogf((1-5x)/(1-9x+16x^2))` -/
def P1831173653633667565.Spec : Prop :=
  ∀ n, P1831173653633667565.a n = A165311 n

end A165311

/-! ## A165311.P12258096462931412990

`9*a(n-1)-16*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165311

/-- `9*a(n-1)-16*a(n-2)` -/
def P12258096462931412990.Spec : Prop :=
  ∀ n, P12258096462931412990.a n = A165311 n

theorem P12258096462931412990.correct : P12258096462931412990.Spec := by
  intro n
  simp only [A165311]

end A165311

/-! ## A165311.P4742117736321784324

`((17-sqrt(17))*(9+sqrt(17))^n+(17+sqrt(17))*(9-sqrt(17))^n)/(34*2^n)`
-/

namespace A165311.P4742117736321784324
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((17 - Real.sqrt (17 : ℝ)) * (9 + Real.sqrt (17 : ℝ)) ^ n + (17 + Real.sqrt (17 : ℝ)) * (9 - Real.sqrt (17 : ℝ)) ^ n) / (34 * 2 ^ n : ℝ)

end

end A165311.P4742117736321784324

namespace A165311

/-- `((17-sqrt(17))*(9+sqrt(17))^n+(17+sqrt(17))*(9-sqrt(17))^n)/(34*2^n)` -/
def P4742117736321784324.Spec : Prop :=
  ∀ n, P4742117736321784324.a n = (A165311 n : ℝ)

theorem P4742117736321784324.correct : P4742117736321784324.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165311, Nat.add_sub_cancel, A165311.P4742117736321784324.a, A165311.P12258096462931412990.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165311, Nat.add_sub_cancel, A165311.P4742117736321784324.a, A165311.P12258096462931412990.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A165311

/-! ## A165311.P12027643199983132993

`record[4*a(n-2)-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A165311.P12027643199983132993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  4 * f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165311.P12027643199983132993

namespace A165311

/-- `record[4*a(n-2)-a(n-1)]` -/
def P12027643199983132993.Spec : Prop :=
  ∀ n, P12027643199983132993.a n = A165311 n

end A165311

/-! ## A165311.P11667099404668582453

`A052923(2*n)`
-/

namespace A165311.P11667099404668582453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052923 (2 * n)

end

end A165311.P11667099404668582453

namespace A165311

/-- `A052923(2*n)` -/
def P11667099404668582453.Spec : Prop :=
  ∀ n, P11667099404668582453.a n = A165311 n

end A165311

/-! ## A165311.P6383998669952893435

`record[A052923(n)/(-1)^n]`
-/

namespace A165311.P6383998669952893435
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052923 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165311.P6383998669952893435

namespace A165311

/-- `record[A052923(n)/(-1)^n]` -/
def P6383998669952893435.Spec : Prop :=
  ∀ n, P6383998669952893435.a n = (A165311 n : ℚ)

end A165311

/-! ## A165311.P6629050349763970037

`A072265(2*n)-A006131(2*n)`
-/

namespace A165311.P6629050349763970037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072265 (2 * n) - A006131 (2 * n)

end

end A165311.P6629050349763970037

namespace A165311

/-- `A072265(2*n)-A006131(2*n)` -/
def P6629050349763970037.Spec : Prop :=
  ∀ n, P6629050349763970037.a n = A165311 n

end A165311

/-! ## A165311.P6173398117670087050

`A006131(2*n)-A099580(2*n)`
-/

namespace A165311.P6173398117670087050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 (2 * n) - A099580 (2 * n)

end

end A165311.P6173398117670087050

namespace A165311

/-- `A006131(2*n)-A099580(2*n)` -/
def P6173398117670087050.Spec : Prop :=
  ∀ n, P6173398117670087050.a n = A165311 n

end A165311

/-! ## A165311.P15101441802315349866

`A102446(2*n)-A026597(2*n)`
-/

namespace A165311.P15101441802315349866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102446 (2 * n) - A026597 (2 * n)

end

end A165311.P15101441802315349866

namespace A165311

/-- `A102446(2*n)-A026597(2*n)` -/
def P15101441802315349866.Spec : Prop :=
  ∀ n, P15101441802315349866.a n = A165311 n

end A165311

/-! ## A165311.P2952519095400732817

`2*A006131(2*n)-A026597(2*n)`
-/

namespace A165311.P2952519095400732817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006131 (2 * n) - A026597 (2 * n)

end

end A165311.P2952519095400732817

namespace A165311

/-- `2*A006131(2*n)-A026597(2*n)` -/
def P2952519095400732817.Spec : Prop :=
  ∀ n, P2952519095400732817.a n = A165311 n

end A165311

/-! ## A165311.P16920764064518283362

`A072265(2*n)-A102446(2*n)/2`
-/

namespace A165311.P16920764064518283362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072265 (2 * n) : ℚ) - (A102446 (2 * n) : ℚ) / 2

end

end A165311.P16920764064518283362

namespace A165311

/-- `A072265(2*n)-A102446(2*n)/2` -/
def P16920764064518283362.Spec : Prop :=
  ∀ n, P16920764064518283362.a n = (A165311 n : ℚ)

end A165311

/-! ## A165311.P15018765796218441628

`A159612(2*(n+1))/2-A159612(2*n+1)`
-/

namespace A165311.P15018765796218441628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159612 (2 * (n + 1)) : ℚ) / 2 - (A159612 (2 * n + 1) : ℚ)

end

end A165311.P15018765796218441628

namespace A165311

/-- `A159612(2*(n+1))/2-A159612(2*n+1)` -/
def P15018765796218441628.Spec : Prop :=
  ∀ n, P15018765796218441628.a n = (A165311 n : ℚ)

end A165311

/-! ## A165311.P1427242191124719084

`A072265(2*n+1)+A072265(2*n)-A102446(2*n+1)`
-/

namespace A165311.P1427242191124719084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072265 (2 * n + 1) + (A072265 (2 * n) - A102446 (2 * n + 1))

end

end A165311.P1427242191124719084

namespace A165311

/-- `A072265(2*n+1)+A072265(2*n)-A102446(2*n+1)` -/
def P1427242191124719084.Spec : Prop :=
  ∀ n, P1427242191124719084.a n = A165311 n

end A165311

/-!
# A165312: a(0)=1, a(1)=5, a(n)=11*a(n-1)-25*a(n-2) for n>1.

The programs for A165312, the canonical program `A165312.P14698443654005623579` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165312 has offset 0).

The definition of A165312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)-25*a(n-2)` (program `A165312.P14698443654005623579`, by `A165312.P14698443654005623579.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165312.P12120938595316087129

`ogf((1-6x)/(1-11x+25x^2))`
-/

namespace A165312.P12120938595316087129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -11, 25] n

end

end A165312.P12120938595316087129

namespace A165312

/-- `ogf((1-6x)/(1-11x+25x^2))` -/
def P12120938595316087129.Spec : Prop :=
  ∀ n, P12120938595316087129.a n = A165312 n

end A165312

/-! ## A165312.P14698443654005623579

`11*a(n-1)-25*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165312

/-- `11*a(n-1)-25*a(n-2)` -/
def P14698443654005623579.Spec : Prop :=
  ∀ n, P14698443654005623579.a n = A165312 n

theorem P14698443654005623579.correct : P14698443654005623579.Spec := by
  intro n
  simp only [A165312]

end A165312

/-! ## A165312.P8933682243428077911

`∑{#}[n, A165253(C(n+1, 2)+#)*5^(n-#)]`
-/

namespace A165312.P8933682243428077911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A165253 (Nat.choose (n + 1) 2 + k) : ℚ) * (5 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A165312.P8933682243428077911

namespace A165312

/-- `∑{#}[n, A165253(C(n+1, 2)+#)*5^(n-#)]` -/
def P8933682243428077911.Spec : Prop :=
  ∀ n, P8933682243428077911.a n = (A165312 n : ℚ)

end A165312

/-! ## A165312.P10735119504936092435

`((21-sqrt(21))*(11+sqrt(21))^n+(21+sqrt(21))*(11-sqrt(21))^n)/(42*2^n)`
-/

namespace A165312.P10735119504936092435
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((21 - Real.sqrt (21 : ℝ)) * (11 + Real.sqrt (21 : ℝ)) ^ n + (21 + Real.sqrt (21 : ℝ)) * (11 - Real.sqrt (21 : ℝ)) ^ n) / (42 * 2 ^ n : ℝ)

end

end A165312.P10735119504936092435

namespace A165312

/-- `((21-sqrt(21))*(11+sqrt(21))^n+(21+sqrt(21))*(11-sqrt(21))^n)/(42*2^n)` -/
def P10735119504936092435.Spec : Prop :=
  ∀ n, P10735119504936092435.a n = (A165312 n : ℝ)

theorem P10735119504936092435.correct : P10735119504936092435.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165312, Nat.add_sub_cancel, A165312.P10735119504936092435.a, A165312.P14698443654005623579.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165312, Nat.add_sub_cancel, A165312.P10735119504936092435.a, A165312.P14698443654005623579.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A165312

/-! ## A165312.P11794219246177982697

`record[5*a(n-2)-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A165312.P11794219246177982697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  5 * f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165312.P11794219246177982697

namespace A165312

/-- `record[5*a(n-2)-a(n-1)]` -/
def P11794219246177982697.Spec : Prop :=
  ∀ n, P11794219246177982697.a n = A165312 n

end A165312

/-! ## A165312.P14091116998340143676

`A365824(2*n)`
-/

namespace A165312.P14091116998340143676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365824 (2 * n)

end

end A165312.P14091116998340143676

namespace A165312

/-- `A365824(2*n)` -/
def P14091116998340143676.Spec : Prop :=
  ∀ n, P14091116998340143676.a n = A165312 n

end A165312

/-! ## A165312.P11262027713851386151

`record[Δ[A015440(n)]^and(1, n)]`
-/

namespace A165312.P11262027713851386151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015440 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165312.P11262027713851386151

namespace A165312

/-- `record[Δ[A015440(n)]^and(1, n)]` -/
def P11262027713851386151.Spec : Prop :=
  ∀ n, P11262027713851386151.a n = A165312 n

end A165312

/-!
# A165313: Triangle T(n,k) = A091137(k-1) read by rows.

The programs for A165313, the canonical program `A165313.P9008062106168668561` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165313 has offset 1).

The definition of A165313 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165313.P9008062106168668561

`A091137(col(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A165313

/-- `A091137(col(n))` -/
def P9008062106168668561.Spec : Prop :=
  ∀ n, P9008062106168668561.a n = A165313 (n + 1)

theorem P9008062106168668561.correct : P9008062106168668561.Spec := by
  intro n
  simp only [A165313, Nat.add_sub_cancel]

end A165313

/-! ## A165313.P14386627126166559207

`A091137(n-C(∑[char[∑[n]]], 2))`
-/

namespace A165313.P14386627126166559207
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091137 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A165313.P14386627126166559207

namespace A165313

/-- `A091137(n-C(∑[char[∑[n]]], 2))` -/
def P14386627126166559207.Spec : Prop :=
  ∀ n, P14386627126166559207.a n = A165313 (n + 1)

end A165313

/-! ## A165313.P6786130095422068567

`A091137(A002262(n))`
-/

namespace A165313.P6786130095422068567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091137 (A002262 n).toNat

end

end A165313.P6786130095422068567

namespace A165313

/-- `A091137(A002262(n))` -/
def P6786130095422068567.Spec : Prop :=
  ∀ n, P6786130095422068567.a n = A165313 (n + 1)

end A165313

/-! ## A165313.P2077918593827993605

`A091137(sqrt(A143844(n)))`
-/

namespace A165313.P2077918593827993605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091137 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))).toNat

end

end A165313.P2077918593827993605

namespace A165313

/-- `A091137(sqrt(A143844(n)))` -/
def P2077918593827993605.Spec : Prop :=
  ∀ n, P2077918593827993605.a n = A165313 (n + 1)

end A165313

/-! ## A165313.P15160835916088515939

`A091137(log2(A059268(n)))`
-/

namespace A165313.P15160835916088515939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091137 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A165313.P15160835916088515939

namespace A165313

/-- `A091137(log2(A059268(n)))` -/
def P15160835916088515939.Spec : Prop :=
  ∀ n, P15160835916088515939.a n = A165313 (n + 1)

end A165313

/-! ## A165313.P2804533743222628620

`A091137(val(A059268(n), 2))`
-/

namespace A165313.P2804533743222628620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091137 (SequenceMachineLib.valuation (A059268 n).toNat 2)

end

end A165313.P2804533743222628620

namespace A165313

/-- `A091137(val(A059268(n), 2))` -/
def P2804533743222628620.Spec : Prop :=
  ∀ n, P2804533743222628620.a n = A165313 (n + 1)

end A165313

/-! ## A165313.P12801279412878905329

`A091137(val(A036561(n), 3))`
-/

namespace A165313.P12801279412878905329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091137 (SequenceMachineLib.valuation (A036561 n).toNat 3)

end

end A165313.P12801279412878905329

namespace A165313

/-- `A091137(val(A036561(n), 3))` -/
def P12801279412878905329.Spec : Prop :=
  ∀ n, P12801279412878905329.a n = A165313 (n + 1)

end A165313

/-! ## A165313.P17559468512965844366

`A232853(A112367(n))`
-/

namespace A165313.P17559468512965844366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232853 (A112367 n).toNat

end

end A165313.P17559468512965844366

namespace A165313

/-- `A232853(A112367(n))` -/
def P17559468512965844366.Spec : Prop :=
  ∀ n, P17559468512965844366.a n = A165313 (n + 1)

end A165313

/-!
# A165314: a(0)=1, a(1)=6, a(n)=13*a(n-1)-36*a(n-2) for n>1.

The programs for A165314, the canonical program `A165314.P3661941156222217297` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165314 has offset 0).

The definition of A165314 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*a(n-1)-36*a(n-2)` (program `A165314.P3661941156222217297`, by `A165314.P3661941156222217297.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165314.P9578144533769105896

`ogf((1-7x)/(1-13x+36x^2))`
-/

namespace A165314.P9578144533769105896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -13, 36] n

end

end A165314.P9578144533769105896

namespace A165314

/-- `ogf((1-7x)/(1-13x+36x^2))` -/
def P9578144533769105896.Spec : Prop :=
  ∀ n, P9578144533769105896.a n = A165314 n

end A165314

/-! ## A165314.P3661941156222217297

`13*a(n-1)-36*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165314

/-- `13*a(n-1)-36*a(n-2)` -/
def P3661941156222217297.Spec : Prop :=
  ∀ n, P3661941156222217297.a n = A165314 n

theorem P3661941156222217297.correct : P3661941156222217297.Spec := by
  intro n
  simp only [A165314]

end A165314

/-! ## A165314.P9853627633638586407

`(2*9^n+3*4^n)/5`
-/

namespace A165314.P9853627633638586407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 9 ^ n + 3 * 4 ^ n : ℚ) / 5

end

end A165314.P9853627633638586407

namespace A165314

/-- `(2*9^n+3*4^n)/5` -/
def P9853627633638586407.Spec : Prop :=
  ∀ n, P9853627633638586407.a n = (A165314 n : ℚ)

theorem P9853627633638586407.correct : P9853627633638586407.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165314, Nat.add_sub_cancel, A165314.P9853627633638586407.a, A165314.P3661941156222217297.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165314, Nat.add_sub_cancel, A165314.P9853627633638586407.a, A165314.P3661941156222217297.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A165314

/-! ## A165314.P6534770912986281434

`record[3*(2^(n-1)-a(n-1))]` with `a(0)=1`
-/

namespace A165314.P6534770912986281434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165314.P6534770912986281434

namespace A165314

/-- `record[3*(2^(n-1)-a(n-1))]` -/
def P6534770912986281434.Spec : Prop :=
  ∀ n, P6534770912986281434.a n = (A165314 n : ℚ)

end A165314

/-! ## A165314.P4016858983338666584

`A102901(2*n)`
-/

namespace A165314.P4016858983338666584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102901 (2 * n)

end

end A165314.P4016858983338666584

namespace A165314

/-- `A102901(2*n)` -/
def P4016858983338666584.Spec : Prop :=
  ∀ n, P4016858983338666584.a n = A165314 n

end A165314

/-! ## A165314.P4569781700940368286

`A178936(2*n)`
-/

namespace A165314.P4569781700940368286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178936 (2 * n)

end

end A165314.P4569781700940368286

namespace A165314

/-- `A178936(2*n)` -/
def P4569781700940368286.Spec : Prop :=
  ∀ n, P4569781700940368286.a n = A165314 n

end A165314

/-! ## A165314.P15653312956701193025

`Δ[record[∑[A091005(n)]]]`
-/

namespace A165314.P15653312956701193025
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165314.P15653312956701193025

namespace A165314

/-- `Δ[record[∑[A091005(n)]]]` -/
def P15653312956701193025.Spec : Prop :=
  ∀ n, P15653312956701193025.a n = A165314 n

end A165314

/-! ## A165314.P12026338007852038271

`record[A178936(n)/A033999(n)]`
-/

namespace A165314.P12026338007852038271
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178936 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165314.P12026338007852038271

namespace A165314

/-- `record[A178936(n)/A033999(n)]` -/
def P12026338007852038271.Spec : Prop :=
  ∀ n, P12026338007852038271.a n = (A165314 n : ℚ)

end A165314

/-! ## A165314.P17086191567239621523

`A096951(n)-A015441(2*n)`
-/

namespace A165314.P17086191567239621523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096951 n - A015441 (2 * n)

end

end A165314.P17086191567239621523

namespace A165314

/-- `A096951(n)-A015441(2*n)` -/
def P17086191567239621523.Spec : Prop :=
  ∀ n, P17086191567239621523.a n = A165314 n

end A165314

/-! ## A165314.P8654501317978316424

`A015441(2*n+1)-A016153(n)`
-/

namespace A165314.P8654501317978316424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (2 * n + 1) - A016153 n

end

end A165314.P8654501317978316424

namespace A165314

/-- `A015441(2*n+1)-A016153(n)` -/
def P8654501317978316424.Spec : Prop :=
  ∀ n, P8654501317978316424.a n = A165314 n

end A165314

/-! ## A165314.P5072128609416945235

`A140725(2*n)+A011782(2*n)`
-/

namespace A165314.P5072128609416945235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140725 (2 * n) + A011782 (2 * n)

end

end A165314.P5072128609416945235

namespace A165314

/-- `A140725(2*n)+A011782(2*n)` -/
def P5072128609416945235.Spec : Prop :=
  ∀ n, P5072128609416945235.a n = A165314 n

end A165314

/-! ## A165314.P8802623451571854600

`A232015(2*n)+A015441(2*n)`
-/

namespace A165314.P8802623451571854600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232015 (2 * n) + A015441 (2 * n)

end

end A165314.P8802623451571854600

namespace A165314

/-- `A232015(2*n)+A015441(2*n)` -/
def P8802623451571854600.Spec : Prop :=
  ∀ n, P8802623451571854600.a n = A165314 n

end A165314

/-! ## A165314.P13109776486782828102

`A000079(n)²+2*A015441(2*n)`
-/

namespace A165314.P13109776486782828102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + 2 * A015441 (2 * n)

end

end A165314.P13109776486782828102

namespace A165314

/-- `A000079(n)²+2*A015441(2*n)` -/
def P13109776486782828102.Spec : Prop :=
  ∀ n, P13109776486782828102.a n = A165314 n

end A165314

/-! ## A165314.P17810347823535140118

`A122803(n)²+2*A015441(2*n)`
-/

namespace A165314.P17810347823535140118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n ^ 2 + 2 * A015441 (2 * n)

end

end A165314.P17810347823535140118

namespace A165314

/-- `A122803(n)²+2*A015441(2*n)` -/
def P17810347823535140118.Spec : Prop :=
  ∀ n, P17810347823535140118.a n = A165314 n

end A165314

/-! ## A165314.P1359129589668373979

`A000079(n)²+2*A167910(2*n)`
-/

namespace A165314.P1359129589668373979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + 2 * A167910 (2 * n)

end

end A165314.P1359129589668373979

namespace A165314

/-- `A000079(n)²+2*A167910(2*n)` -/
def P1359129589668373979.Spec : Prop :=
  ∀ n, P1359129589668373979.a n = A165314 n

end A165314

/-! ## A165314.P8526718880888373738

`2*A232015(2*n)-A122803(n)²`
-/

namespace A165314.P8526718880888373738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A232015 (2 * n) - A122803 n ^ 2

end

end A165314.P8526718880888373738

namespace A165314

/-- `2*A232015(2*n)-A122803(n)²` -/
def P8526718880888373738.Spec : Prop :=
  ∀ n, P8526718880888373738.a n = A165314 n

end A165314

/-! ## A165314.P7835902020813642831

`A091002(2*n)+A091001(2*n+1)`
-/

namespace A165314.P7835902020813642831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 (2 * n) + A091001 (2 * n + 1)

end

end A165314.P7835902020813642831

namespace A165314

/-- `A091002(2*n)+A091001(2*n+1)` -/
def P7835902020813642831.Spec : Prop :=
  ∀ n, P7835902020813642831.a n = A165314 n

end A165314

/-! ## A165314.P8550035978672704759

`A015441(2*n+1)-A015441(2*n)`
-/

namespace A165314.P8550035978672704759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (2 * n + 1) - A015441 (2 * n)

end

end A165314.P8550035978672704759

namespace A165314

/-- `A015441(2*n+1)-A015441(2*n)` -/
def P8550035978672704759.Spec : Prop :=
  ∀ n, P8550035978672704759.a n = A165314 n

end A165314

/-! ## A165314.P2577221668044029482

`A094555(2*n+1)-A091001(2*n)`
-/

namespace A165314.P2577221668044029482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094555 (2 * n + 1) - A091001 (2 * n)

end

end A165314.P2577221668044029482

namespace A165314

/-- `A094555(2*n+1)-A091001(2*n)` -/
def P2577221668044029482.Spec : Prop :=
  ∀ n, P2577221668044029482.a n = A165314 n

end A165314

/-! ## A165314.P16343005406239756679

`A094556(2*n+1)-A091002(2*n)`
-/

namespace A165314.P16343005406239756679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094556 (2 * n + 1) - A091002 (2 * n)

end

end A165314.P16343005406239756679

namespace A165314

/-- `A094556(2*n+1)-A091002(2*n)` -/
def P16343005406239756679.Spec : Prop :=
  ∀ n, P16343005406239756679.a n = A165314 n

end A165314

/-!
# A165315: a(1)=2. If s is the largest integer such that n = r^s, r = positive integer, then a(n) = the smallest integer > a(n-1) such that a(n) = t^s, t = positive integer.

The programs for A165315, there is no canonical definition to state claims against.
-/

/-! ## A165315.P17309368480875162324

`A329297(A329296(n+4))%A023747(2*(n+2))`
-/

namespace A165315.P17309368480875162324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329297 (A329296 (n + 4)).toNat) (A023747 (2 * (n + 2)))

end

end A165315.P17309368480875162324

/-!
# A165316: a(n) = the number of digits in the binary representation of n that each either precede and/or follow a similarly valued digit.

The programs for A165316, the canonical program `A165316.P17245115861618815472` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165316 has offset 1).

The definition of A165316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165316.P5321901986153407740

`ceil(log2(n+2))-A165317(n+1)`
-/

namespace A165316.P5321901986153407740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉ - A165317 (n + 1)

end

end A165316.P5321901986153407740

namespace A165316

/-- `ceil(log2(n+2))-A165317(n+1)` -/
def P5321901986153407740.Spec : Prop :=
  ∀ n, P5321901986153407740.a n = A165316 (n + 1)

end A165316

/-! ## A165316.P17245115861618815472

`A320042(n+1)+A297030(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A165316

/-- `A320042(n+1)+A297030(n+1)` -/
def P17245115861618815472.Spec : Prop :=
  ∀ n, P17245115861618815472.a n = A165316 (n + 1)

theorem P17245115861618815472.correct : P17245115861618815472.Spec := by
  intro n
  simp only [A165316, Nat.add_sub_cancel]

end A165316

/-! ## A165316.P5952438894080074575

`A320042(n+1)+n-∑[A014709(n)-A342892(n+1)]`
-/

namespace A165316.P5952438894080074575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 n - A342892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320042 (n + 1) + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165316.P5952438894080074575

namespace A165316

/-- `A320042(n+1)+n-∑[A014709(n)-A342892(n+1)]` -/
def P5952438894080074575.Spec : Prop :=
  ∀ n, P5952438894080074575.a n = A165316 (n + 1)

end A165316

/-! ## A165316.P7961779552665633017

`A320042(n+1)+A005811(n+1)+A037834(n+1)-A165317(n+1)`
-/

namespace A165316.P7961779552665633017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320042 (n + 1) + (A005811 (n + 1) + (A037834 (n + 1) - A165317 (n + 1)))

end

end A165316.P7961779552665633017

namespace A165316

/-- `A320042(n+1)+A005811(n+1)+A037834(n+1)-A165317(n+1)` -/
def P7961779552665633017.Spec : Prop :=
  ∀ n, P7961779552665633017.a n = A165316 (n + 1)

end A165316

/-! ## A165316.P17922768535051118851

`∑{e}[A286468(n+1), #+1]`
-/

namespace A165316.P17922768535051118851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286468 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A165316.P17922768535051118851

namespace A165316

/-- `∑{e}[A286468(n+1), #+1]` -/
def P17922768535051118851.Spec : Prop :=
  ∀ n, (P17922768535051118851.a n : ℤ) = A165316 (n + 1)

end A165316

/-! ## A165316.P15338909988297525362

`A080256(A286468(n+1))`
-/

namespace A165316.P15338909988297525362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080256 (A286468 (n + 1)).toNat

end

end A165316.P15338909988297525362

namespace A165316

/-- `A080256(A286468(n+1))` -/
def P15338909988297525362.Spec : Prop :=
  ∀ n, P15338909988297525362.a n = A165316 (n + 1)

end A165316

/-! ## A165316.P11057978148795366289

`A320042(n+1)+A297031(A005823(n+2))`
-/

namespace A165316.P11057978148795366289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320042 (n + 1) + A297031 (A005823 (n + 2)).toNat

end

end A165316.P11057978148795366289

namespace A165316

/-- `A320042(n+1)+A297031(A005823(n+2))` -/
def P11057978148795366289.Spec : Prop :=
  ∀ n, P11057978148795366289.a n = A165316 (n + 1)

end A165316

/-! ## A165316.P2998369703606419268

`A320042(n+1)+A297032(A000695(n+1))`
-/

namespace A165316.P2998369703606419268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320042 (n + 1) + A297032 (A000695 (n + 1)).toNat

end

end A165316.P2998369703606419268

namespace A165316

/-- `A320042(n+1)+A297032(A000695(n+1))` -/
def P2998369703606419268.Spec : Prop :=
  ∀ n, P2998369703606419268.a n = A165316 (n + 1)

end A165316

/-!
# A165317: a(n) = the number of digits in the binary representation of n that each do not precede or follow a similarly valued digit.

The programs for A165317, the canonical program `A165317.P13194388540254621520` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165317 has offset 1).

The definition of A165317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165317.P14320246851532380472

`val(A382255(n+1), 2)`
-/

namespace A165317.P14320246851532380472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A382255 (n + 1)).toNat 2

end

end A165317.P14320246851532380472

namespace A165317

/-- `val(A382255(n+1), 2)` -/
def P14320246851532380472.Spec : Prop :=
  ∀ n, (P14320246851532380472.a n : ℤ) = A165317 (n + 1)

end A165317

/-! ## A165317.P12702163247221433906

`ceil(log2(n+2))-A165316(n+1)`
-/

namespace A165317.P12702163247221433906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉ - A165316 (n + 1)

end

end A165317.P12702163247221433906

namespace A165317

/-- `ceil(log2(n+2))-A165316(n+1)` -/
def P12702163247221433906.Spec : Prop :=
  ∀ n, P12702163247221433906.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P7263861684852199620

`A007814(A382255(n+1))`
-/

namespace A165317.P7263861684852199620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A382255 (n + 1)).toNat

end

end A165317.P7263861684852199620

namespace A165317

/-- `A007814(A382255(n+1))` -/
def P7263861684852199620.Spec : Prop :=
  ∀ n, P7263861684852199620.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P6898289891245780978

`A290260(n+1)+A277937(n+1)`
-/

namespace A165317.P6898289891245780978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290260 (n + 1) + A277937 (n + 1)

end

end A165317.P6898289891245780978

namespace A165317

/-- `A290260(n+1)+A277937(n+1)` -/
def P6898289891245780978.Spec : Prop :=
  ∀ n, P6898289891245780978.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P8990847012435156462

`A277937(A035327(n+1))+A277937(n+1)`
-/

namespace A165317.P8990847012435156462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A035327 (n + 1)).toNat + A277937 (n + 1)

end

end A165317.P8990847012435156462

namespace A165317

/-- `A277937(A035327(n+1))+A277937(n+1)` -/
def P8990847012435156462.Spec : Prop :=
  ∀ n, P8990847012435156462.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P15257008041635915442

`A277937(A036044(n+1))+A277937(n+1)`
-/

namespace A165317.P15257008041635915442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A036044 (n + 1)).toNat + A277937 (n + 1)

end

end A165317.P15257008041635915442

namespace A165317

/-- `A277937(A036044(n+1))+A277937(n+1)` -/
def P15257008041635915442.Spec : Prop :=
  ∀ n, P15257008041635915442.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P13194388540254621520

`A005811(n+1)-A033264(A003188(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A165317

/-- `A005811(n+1)-A033264(A003188(n+1))` -/
def P13194388540254621520.Spec : Prop :=
  ∀ n, P13194388540254621520.a n = A165317 (n + 1)

theorem P13194388540254621520.correct : P13194388540254621520.Spec := by
  intro n
  simp only [A165317, Nat.add_sub_cancel]

end A165317

/-! ## A165317.P6242085519119501448

`A014081(or(1, A048724(n+1)))`
-/

namespace A165317.P6242085519119501448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Int.lor 1 (A048724 (n + 1))).toNat

end

end A165317.P6242085519119501448

namespace A165317

/-- `A014081(or(1, A048724(n+1)))` -/
def P6242085519119501448.Spec : Prop :=
  ∀ n, P6242085519119501448.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P16561751818819219346

`A014081(2*A003188(n+1)+1)`
-/

namespace A165317.P16561751818819219346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (2 * A003188 (n + 1) + 1).toNat

end

end A165317.P16561751818819219346

namespace A165317

/-- `A014081(2*A003188(n+1)+1)` -/
def P16561751818819219346.Spec : Prop :=
  ∀ n, P16561751818819219346.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P1383674731848576754

`A014081(xor(A000035(n)+1+n, 2*(n+1)))`
-/

namespace A165317.P1383674731848576754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Int.xor (A000035 n + 1 + (n : ℤ)) (2 * (n + 1) : ℤ)).toNat

end

end A165317.P1383674731848576754

namespace A165317

/-- `A014081(xor(A000035(n)+1+n, 2*(n+1)))` -/
def P1383674731848576754.Spec : Prop :=
  ∀ n, P1383674731848576754.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P10477793616147237102

`A141612(A047463(n+2))`
-/

namespace A165317.P10477793616147237102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141612 (A047463 (n + 2)).toNat

end

end A165317.P10477793616147237102

namespace A165317

/-- `A141612(A047463(n+2))` -/
def P10477793616147237102.Spec : Prop :=
  ∀ n, P10477793616147237102.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P3696881788432304196

`A141612(A272100(n+2))`
-/

namespace A165317.P3696881788432304196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141612 (A272100 (n + 2)).toNat

end

end A165317.P3696881788432304196

namespace A165317

/-- `A141612(A272100(n+2))` -/
def P3696881788432304196.Spec : Prop :=
  ∀ n, P3696881788432304196.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P5001197498478667535

`A290260(A035928(n+1))`
-/

namespace A165317.P5001197498478667535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290260 (A035928 (n + 1)).toNat

end

end A165317.P5001197498478667535

namespace A165317

/-- `A290260(A035928(n+1))` -/
def P5001197498478667535.Spec : Prop :=
  ∀ n, P5001197498478667535.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P5703909659788859183

`A046660(2*A243353(n+1))`
-/

namespace A165317.P5703909659788859183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (2 * A243353 (n + 1)).toNat

end

end A165317.P5703909659788859183

namespace A165317

/-- `A046660(2*A243353(n+1))` -/
def P5703909659788859183.Spec : Prop :=
  ∀ n, P5703909659788859183.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P2916214851446015010

`A046660(A243353(n+1)+A243353(n+1))`
-/

namespace A165317.P2916214851446015010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A243353 (n + 1) + A243353 (n + 1)).toNat

end

end A165317.P2916214851446015010

namespace A165317

/-- `A046660(A243353(n+1)+A243353(n+1))` -/
def P2916214851446015010.Spec : Prop :=
  ∀ n, P2916214851446015010.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P8786417799280276059

`A290260(A276795(n+2))`
-/

namespace A165317.P8786417799280276059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290260 (A276795 (n + 2)).toNat

end

end A165317.P8786417799280276059

namespace A165317

/-- `A290260(A276795(n+2))` -/
def P8786417799280276059.Spec : Prop :=
  ∀ n, P8786417799280276059.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P8484130076385608845

`A277937(A290254(n+2))`
-/

namespace A165317.P8484130076385608845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A290254 (n + 2)).toNat

end

end A165317.P8484130076385608845

namespace A165317

/-- `A277937(A290254(n+2))` -/
def P8484130076385608845.Spec : Prop :=
  ∀ n, P8484130076385608845.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P11855485842534088532

`A290260(A328567(n+2))`
-/

namespace A165317.P11855485842534088532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290260 (A328567 (n + 2)).toNat

end

end A165317.P11855485842534088532

namespace A165317

/-- `A290260(A328567(n+2))` -/
def P11855485842534088532.Spec : Prop :=
  ∀ n, P11855485842534088532.a n = A165317 (n + 1)

end A165317

/-! ## A165317.P15013371434344919252

`A277937(A035928(n+1)/2)`
-/

namespace A165317.P15013371434344919252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (SequenceMachineLib.roundAway ((A035928 (n + 1) : ℚ) / 2)).toNat

end

end A165317.P15013371434344919252

namespace A165317

/-- `A277937(A035928(n+1)/2)` -/
def P15013371434344919252.Spec : Prop :=
  ∀ n, P15013371434344919252.a n = A165317 (n + 1)

end A165317

/-!
# A165318: Primes p where the number of divisors of p-1 is a power of 2.

The programs for A165318, the canonical program `A165318.P3843113614457274030` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165318 has offset 1).

The definition of A165318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4833 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165318.P3843113614457274030

`p?[A014963(2*A000005(n+1))+n]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A165318

/-- `p?[A014963(2*A000005(n+1))+n]` -/
def P3843113614457274030.Spec : Prop :=
  ∀ n, P3843113614457274030.a n = A165318 (n + 1)

theorem P3843113614457274030.correct : P3843113614457274030.Spec := by
  intro n
  simp only [A165318, Nat.add_sub_cancel]

end A165318

/-! ## A165318.P16914010450007148903

`p?[A036987(A000005(n+1)-1)+n+1]`
-/

namespace A165318.P16914010450007148903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A000005 (n + 1) - 1).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165318.P16914010450007148903

namespace A165318

/-- `p?[A036987(A000005(n+1)-1)+n+1]` -/
def P16914010450007148903.Spec : Prop :=
  ∀ n, P16914010450007148903.a n = A165318 (n + 1)

end A165318

/-! ## A165318.P7328383381018764025

`p?[A014963(A000005(lcm(2, n+1)))+n]`
-/

namespace A165318.P7328383381018764025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000005 (Nat.lcm 2 (n + 1))).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165318.P7328383381018764025

namespace A165318

/-- `p?[A014963(A000005(lcm(2, n+1)))+n]` -/
def P7328383381018764025.Spec : Prop :=
  ∀ n, P7328383381018764025.a n = A165318 (n + 1)

end A165318

/-! ## A165318.P3795092257874583356

`eq[A000120(A000005(n+1)), A010051(n+2)]+2`
-/

namespace A165318.P3795092257874583356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A165318.P3795092257874583356

namespace A165318

/-- `eq[A000120(A000005(n+1)), A010051(n+2)]+2` -/
def P3795092257874583356.Spec : Prop :=
  ∀ n, (P3795092257874583356.a n : ℤ) = A165318 (n + 1)

end A165318

/-! ## A165318.P8284911471211158821

`p?[A372690(n+1)+1]`
-/

namespace A165318.P8284911471211158821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165318.P8284911471211158821

namespace A165318

/-- `p?[A372690(n+1)+1]` -/
def P8284911471211158821.Spec : Prop :=
  ∀ n, P8284911471211158821.a n = A165318 (n + 1)

end A165318

/-! ## A165318.P18205725392420490903

`∩[A000040(n+1), A372690(n+1)+1]`
-/

namespace A165318.P18205725392420490903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165318.P18205725392420490903

namespace A165318

/-- `∩[A000040(n+1), A372690(n+1)+1]` -/
def P18205725392420490903.Spec : Prop :=
  ∀ n, (P18205725392420490903.a n : ℤ) = A165318 (n + 1)

end A165318

/-! ## A165318.P17399629311410320820

`∩[A000430(n+1), A372690(n+1)+1]`
-/

namespace A165318.P17399629311410320820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165318.P17399629311410320820

namespace A165318

/-- `∩[A000430(n+1), A372690(n+1)+1]` -/
def P17399629311410320820.Spec : Prop :=
  ∀ n, (P17399629311410320820.a n : ℤ) = A165318 (n + 1)

end A165318

/-! ## A165318.P8163631800451545163

`∩[A009087(n+1), A372690(n+1)+1]`
-/

namespace A165318.P8163631800451545163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165318.P8163631800451545163

namespace A165318

/-- `∩[A009087(n+1), A372690(n+1)+1]` -/
def P8163631800451545163.Spec : Prop :=
  ∀ n, (P8163631800451545163.a n : ℤ) = A165318 (n + 1)

end A165318

/-! ## A165318.P1049715624086727126

`∩[A050376(n+1), A372690(n+1)+1]`
-/

namespace A165318.P1049715624086727126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165318.P1049715624086727126

namespace A165318

/-- `∩[A050376(n+1), A372690(n+1)+1]` -/
def P1049715624086727126.Spec : Prop :=
  ∀ n, (P1049715624086727126.a n : ℤ) = A165318 (n + 1)

end A165318

/-! ## A165318.P10199590165954877931

`∩[A175787(n+1), A372690(n+1)+1]`
-/

namespace A165318.P10199590165954877931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165318.P10199590165954877931

namespace A165318

/-- `∩[A175787(n+1), A372690(n+1)+1]` -/
def P10199590165954877931.Spec : Prop :=
  ∀ n, (P10199590165954877931.a n : ℤ) = A165318 (n + 1)

end A165318

/-! ## A165318.P2113284299152367094

`∩[A182358(n+1), A372690(n+1)+1]`
-/

namespace A165318.P2113284299152367094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165318.P2113284299152367094

namespace A165318

/-- `∩[A182358(n+1), A372690(n+1)+1]` -/
def P2113284299152367094.Spec : Prop :=
  ∀ n, (P2113284299152367094.a n : ℤ) = A165318 (n + 1)

end A165318

/-! ## A165318.P18408659393368754624

`∩[A182986(n+1), A372690(n+1)+1]`
-/

namespace A165318.P18408659393368754624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165318.P18408659393368754624

namespace A165318

/-- `∩[A182986(n+1), A372690(n+1)+1]` -/
def P18408659393368754624.Spec : Prop :=
  ∀ n, (P18408659393368754624.a n : ℤ) = A165318 (n + 1)

end A165318

/-! ## A165318.P17307475709824145249

`∩[A258456(n+1), A372690(n+1)+1]`
-/

namespace A165318.P17307475709824145249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165318.P17307475709824145249

namespace A165318

/-- `∩[A258456(n+1), A372690(n+1)+1]` -/
def P17307475709824145249.Spec : Prop :=
  ∀ n, (P17307475709824145249.a n : ℤ) = A165318 (n + 1)

end A165318

/-! ## A165318.P7582329689649286308

`∩[A336615(n+1), A372690(n+1)+1]`
-/

namespace A165318.P7582329689649286308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165318.P7582329689649286308

namespace A165318

/-- `∩[A336615(n+1), A372690(n+1)+1]` -/
def P7582329689649286308.Spec : Prop :=
  ∀ n, (P7582329689649286308.a n : ℤ) = A165318 (n + 1)

end A165318

/-! ## A165318.P11713464218471478290

`p?[A036537(n+1)+1]`
-/

namespace A165318.P11713464218471478290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165318.P11713464218471478290

namespace A165318

/-- `p?[A036537(n+1)+1]` -/
def P11713464218471478290.Spec : Prop :=
  ∀ n, P11713464218471478290.a n = A165318 (n + 1)

end A165318

/-! ## A165318.P18054324200507300736

`record[A020639(A036537(n+1)+1)]`
-/

namespace A165318.P18054324200507300736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A036537 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165318.P18054324200507300736

namespace A165318

/-- `record[A020639(A036537(n+1)+1)]` -/
def P18054324200507300736.Spec : Prop :=
  ∀ n, P18054324200507300736.a n = A165318 (n + 1)

end A165318

/-! ## A165318.P6093915815659651521

`p?[(n+2)*A193348(n+1)]`
-/

namespace A165318.P6093915815659651521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A193348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165318.P6093915815659651521

namespace A165318

/-- `p?[(n+2)*A193348(n+1)]` -/
def P6093915815659651521.Spec : Prop :=
  ∀ n, P6093915815659651521.a n = A165318 (n + 1)

end A165318

/-! ## A165318.P183707291889587271

`p?[(n+2)*A193349(n+1)]`
-/

namespace A165318.P183707291889587271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A193349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165318.P183707291889587271

namespace A165318

/-- `p?[(n+2)*A193349(n+1)]` -/
def P183707291889587271.Spec : Prop :=
  ∀ n, P183707291889587271.a n = A165318 (n + 1)

end A165318

/-! ## A165318.P17119011992343967275

`p?[(n+2)*A212181(n+1)]`
-/

namespace A165318.P17119011992343967275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A212181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165318.P17119011992343967275

namespace A165318

/-- `p?[(n+2)*A212181(n+1)]` -/
def P17119011992343967275.Spec : Prop :=
  ∀ n, P17119011992343967275.a n = A165318 (n + 1)

end A165318

/-!
# A165319: Primes p where the number of divisors of p+1 is a power of 2.

The programs for A165319, the canonical program `A165319.P7856077442135454805` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165319 has offset 1).

The definition of A165319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4777 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165319.P7856077442135454805

`p?[n*A000120(A000005(n+1))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A165319

/-- `p?[n*A000120(A000005(n+1))]` -/
def P7856077442135454805.Spec : Prop :=
  ∀ n, P7856077442135454805.a n = A165319 (n + 1)

theorem P7856077442135454805.correct : P7856077442135454805.Spec := by
  intro n
  simp only [A165319, Nat.add_sub_cancel]

end A165319

/-! ## A165319.P12995871221755955323

`p?[A372690(n+1)]`
-/

namespace A165319.P12995871221755955323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165319.P12995871221755955323

namespace A165319

/-- `p?[A372690(n+1)]` -/
def P12995871221755955323.Spec : Prop :=
  ∀ n, P12995871221755955323.a n = A165319 (n + 1)

end A165319

/-! ## A165319.P14376100569766649519

`filter[A372690(n+1), A001222(#)]`
-/

namespace A165319.P14376100569766649519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A165319.P14376100569766649519

namespace A165319

/-- `filter[A372690(n+1), A001222(#)]` -/
def P14376100569766649519.Spec : Prop :=
  ∀ n, P14376100569766649519.a n = A165319 (n + 1)

end A165319

/-! ## A165319.P8400840199499009218

`filter[A372690(n+1), A010051(#)]`
-/

namespace A165319.P8400840199499009218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A165319.P8400840199499009218

namespace A165319

/-- `filter[A372690(n+1), A010051(#)]` -/
def P8400840199499009218.Spec : Prop :=
  ∀ n, P8400840199499009218.a n = A165319 (n + 1)

end A165319

/-! ## A165319.P17279807979094357642

`filter[A372690(n+1), A302777(#)]`
-/

namespace A165319.P17279807979094357642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A165319.P17279807979094357642

namespace A165319

/-- `filter[A372690(n+1), A302777(#)]` -/
def P17279807979094357642.Spec : Prop :=
  ∀ n, P17279807979094357642.a n = A165319 (n + 1)

end A165319

/-! ## A165319.P2094281227197983738

`filter[A372690(n+2), A353787(#)]`
-/

namespace A165319.P2094281227197983738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A165319.P2094281227197983738

namespace A165319

/-- `filter[A372690(n+2), A353787(#)]` -/
def P2094281227197983738.Spec : Prop :=
  ∀ n, P2094281227197983738.a n = A165319 (n + 1)

end A165319

/-! ## A165319.P2409495844785569454

`filter[A372690(n+2), A355937(#)]`
-/

namespace A165319.P2409495844785569454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A165319.P2409495844785569454

namespace A165319

/-- `filter[A372690(n+2), A355937(#)]` -/
def P2409495844785569454.Spec : Prop :=
  ∀ n, P2409495844785569454.a n = A165319 (n + 1)

end A165319

/-! ## A165319.P8792863460040858256

`filter[A372690(n+2), A369253(#)]`
-/

namespace A165319.P8792863460040858256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A165319.P8792863460040858256

namespace A165319

/-- `filter[A372690(n+2), A369253(#)]` -/
def P8792863460040858256.Spec : Prop :=
  ∀ n, P8792863460040858256.a n = A165319 (n + 1)

end A165319

/-! ## A165319.P13691242640352336442

`∩[A000040(n+1), A372690(n+1)]`
-/

namespace A165319.P13691242640352336442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165319.P13691242640352336442

namespace A165319

/-- `∩[A000040(n+1), A372690(n+1)]` -/
def P13691242640352336442.Spec : Prop :=
  ∀ n, (P13691242640352336442.a n : ℤ) = A165319 (n + 1)

end A165319

/-! ## A165319.P1589450378088985280

`∩[A000430(n+1), A372690(n+1)]`
-/

namespace A165319.P1589450378088985280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165319.P1589450378088985280

namespace A165319

/-- `∩[A000430(n+1), A372690(n+1)]` -/
def P1589450378088985280.Spec : Prop :=
  ∀ n, (P1589450378088985280.a n : ℤ) = A165319 (n + 1)

end A165319

/-! ## A165319.P9195384963974309161

`∩[A009087(n+1), A372690(n+1)]`
-/

namespace A165319.P9195384963974309161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165319.P9195384963974309161

namespace A165319

/-- `∩[A009087(n+1), A372690(n+1)]` -/
def P9195384963974309161.Spec : Prop :=
  ∀ n, (P9195384963974309161.a n : ℤ) = A165319 (n + 1)

end A165319

/-! ## A165319.P1776521736847785229

`∩[A045344(n+1), A372690(n+1)]`
-/

namespace A165319.P1776521736847785229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165319.P1776521736847785229

namespace A165319

/-- `∩[A045344(n+1), A372690(n+1)]` -/
def P1776521736847785229.Spec : Prop :=
  ∀ n, (P1776521736847785229.a n : ℤ) = A165319 (n + 1)

end A165319

/-! ## A165319.P5240005420003195644

`∩[A045352(n+1), A372690(n+1)]`
-/

namespace A165319.P5240005420003195644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165319.P5240005420003195644

namespace A165319

/-- `∩[A045352(n+1), A372690(n+1)]` -/
def P5240005420003195644.Spec : Prop :=
  ∀ n, (P5240005420003195644.a n : ℤ) = A165319 (n + 1)

end A165319

/-! ## A165319.P12593544542904471500

`∩[A050376(n+1), A372690(n+1)]`
-/

namespace A165319.P12593544542904471500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165319.P12593544542904471500

namespace A165319

/-- `∩[A050376(n+1), A372690(n+1)]` -/
def P12593544542904471500.Spec : Prop :=
  ∀ n, (P12593544542904471500.a n : ℤ) = A165319 (n + 1)

end A165319

/-! ## A165319.P15355769550329669389

`∩[A135785(n+1), A372690(n+1)]`
-/

namespace A165319.P15355769550329669389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165319.P15355769550329669389

namespace A165319

/-- `∩[A135785(n+1), A372690(n+1)]` -/
def P15355769550329669389.Spec : Prop :=
  ∀ n, (P15355769550329669389.a n : ℤ) = A165319 (n + 1)

end A165319

/-! ## A165319.P5096172789135003863

`∩[A175787(n+1), A372690(n+1)]`
-/

namespace A165319.P5096172789135003863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165319.P5096172789135003863

namespace A165319

/-- `∩[A175787(n+1), A372690(n+1)]` -/
def P5096172789135003863.Spec : Prop :=
  ∀ n, (P5096172789135003863.a n : ℤ) = A165319 (n + 1)

end A165319

/-! ## A165319.P1108940232601465725

`∩[A182358(n+1), A372690(n+1)]`
-/

namespace A165319.P1108940232601465725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165319.P1108940232601465725

namespace A165319

/-- `∩[A182358(n+1), A372690(n+1)]` -/
def P1108940232601465725.Spec : Prop :=
  ∀ n, (P1108940232601465725.a n : ℤ) = A165319 (n + 1)

end A165319

/-! ## A165319.P17815549194072338478

`∩[A182986(n+1), A372690(n+1)]`
-/

namespace A165319.P17815549194072338478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165319.P17815549194072338478

namespace A165319

/-- `∩[A182986(n+1), A372690(n+1)]` -/
def P17815549194072338478.Spec : Prop :=
  ∀ n, (P17815549194072338478.a n : ℤ) = A165319 (n + 1)

end A165319

/-! ## A165319.P2436077411705107677

`∩[A258456(n+1), A372690(n+1)]`
-/

namespace A165319.P2436077411705107677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165319.P2436077411705107677

namespace A165319

/-- `∩[A258456(n+1), A372690(n+1)]` -/
def P2436077411705107677.Spec : Prop :=
  ∀ n, (P2436077411705107677.a n : ℤ) = A165319 (n + 1)

end A165319

/-! ## A165319.P6858721895420900279

`∩[A336615(n+1), A372690(n+1)]`
-/

namespace A165319.P6858721895420900279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165319.P6858721895420900279

namespace A165319

/-- `∩[A336615(n+1), A372690(n+1)]` -/
def P6858721895420900279.Spec : Prop :=
  ∀ n, (P6858721895420900279.a n : ℤ) = A165319 (n + 1)

end A165319

/-!
# A165320: Primes p where neither the number of divisors of p+1 nor the number of divisors of p-1 is a power of 2.

The programs for A165320, there is no canonical definition to state claims against.
-/

/-! ## A165320.P5329525255711288653

`∩[A120993(n+1), A205511(n+1)]`
-/

namespace A165320.P5329525255711288653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165320.P5329525255711288653

/-!
# A165322: a(0)=1, a(1)=7, a(n)=15*a(n-1)-49*a(n-2) for n>1.

The programs for A165322, the canonical program `A165322.P16028048643552130741` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165322 has offset 0).

The definition of A165322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*a(n-1)-49*a(n-2)` (program `A165322.P16028048643552130741`, by `A165322.P16028048643552130741.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165322.P10747803121064465088

`ogf((1-8x)/(1-15x+49x^2))`
-/

namespace A165322.P10747803121064465088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8] [1, -15, 49] n

end

end A165322.P10747803121064465088

namespace A165322

/-- `ogf((1-8x)/(1-15x+49x^2))` -/
def P10747803121064465088.Spec : Prop :=
  ∀ n, P10747803121064465088.a n = A165322 n

end A165322

/-! ## A165322.P16028048643552130741

`15*a(n-1)-49*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165322

/-- `15*a(n-1)-49*a(n-2)` -/
def P16028048643552130741.Spec : Prop :=
  ∀ n, P16028048643552130741.a n = A165322 n

theorem P16028048643552130741.correct : P16028048643552130741.Spec := by
  intro n
  simp only [A165322]

end A165322

/-! ## A165322.P17629449473910868814

`∑{#}[n, A165253(C(n+1, 2)+#)*7^(n-#)]`
-/

namespace A165322.P17629449473910868814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A165253 (Nat.choose (n + 1) 2 + k) : ℚ) * (7 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A165322.P17629449473910868814

namespace A165322

/-- `∑{#}[n, A165253(C(n+1, 2)+#)*7^(n-#)]` -/
def P17629449473910868814.Spec : Prop :=
  ∀ n, P17629449473910868814.a n = (A165322 n : ℚ)

end A165322

/-! ## A165322.P10012956166234955222

`((29-sqrt(29))*(15+sqrt(29))^n+(29+sqrt(29))*(15-sqrt(29))^n)/(58*2^n)`
-/

namespace A165322.P10012956166234955222
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((29 - Real.sqrt (29 : ℝ)) * (15 + Real.sqrt (29 : ℝ)) ^ n + (29 + Real.sqrt (29 : ℝ)) * (15 - Real.sqrt (29 : ℝ)) ^ n) / (58 * 2 ^ n : ℝ)

end

end A165322.P10012956166234955222

namespace A165322

/-- `((29-sqrt(29))*(15+sqrt(29))^n+(29+sqrt(29))*(15-sqrt(29))^n)/(58*2^n)` -/
def P10012956166234955222.Spec : Prop :=
  ∀ n, P10012956166234955222.a n = (A165322 n : ℝ)

theorem P10012956166234955222.correct : P10012956166234955222.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165322, Nat.add_sub_cancel, A165322.P10012956166234955222.a, A165322.P16028048643552130741.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165322, Nat.add_sub_cancel, A165322.P10012956166234955222.a, A165322.P16028048643552130741.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A165322

/-! ## A165322.P4896178151755367596

`record[7*a(n-2)-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A165322.P4896178151755367596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  7 * f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165322.P4896178151755367596

namespace A165322

/-- `record[7*a(n-2)-a(n-1)]` -/
def P4896178151755367596.Spec : Prop :=
  ∀ n, P4896178151755367596.a n = A165322 n

end A165322

/-! ## A165322.P15534054995945270382

`A367456(2*n)`
-/

namespace A165322.P15534054995945270382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367456 (2 * n)

end

end A165322.P15534054995945270382

namespace A165322

/-- `A367456(2*n)` -/
def P15534054995945270382.Spec : Prop :=
  ∀ n, P15534054995945270382.a n = A165322 n

end A165322

/-! ## A165322.P11792350878385088336

`A015442(2*n+1)-A015442(2*n)`
-/

namespace A165322.P11792350878385088336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015442 (2 * n + 1) - A015442 (2 * n)

end

end A165322.P11792350878385088336

namespace A165322

/-- `A015442(2*n+1)-A015442(2*n)` -/
def P11792350878385088336.Spec : Prop :=
  ∀ n, P11792350878385088336.a n = A165322 n

end A165322

/-!
# A165323: a(0)=1, a(1)=8, a(n)=17*a(n-1)-64*a(n-2) for n>1.

The programs for A165323, the canonical program `A165323.P7762590200198086789` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165323 has offset 0).

The definition of A165323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*a(n-1)-64*a(n-2)` (program `A165323.P7762590200198086789`, by `A165323.P7762590200198086789.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165323.P5383835035785904973

`ogf((1-9x)/(1-17x+64x^2))`
-/

namespace A165323.P5383835035785904973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -9] [1, -17, 64] n

end

end A165323.P5383835035785904973

namespace A165323

/-- `ogf((1-9x)/(1-17x+64x^2))` -/
def P5383835035785904973.Spec : Prop :=
  ∀ n, P5383835035785904973.a n = A165323 n

end A165323

/-! ## A165323.P10257444439080887990

`∑{#}[n, A165253(C(n+1, 2)+#)*8^(n-#)]`
-/

namespace A165323.P10257444439080887990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A165253 (Nat.choose (n + 1) 2 + k) : ℚ) * (8 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A165323.P10257444439080887990

namespace A165323

/-- `∑{#}[n, A165253(C(n+1, 2)+#)*8^(n-#)]` -/
def P10257444439080887990.Spec : Prop :=
  ∀ n, P10257444439080887990.a n = (A165323 n : ℚ)

end A165323

/-! ## A165323.P7762590200198086789

`17*a(n-1)-64*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165323

/-- `17*a(n-1)-64*a(n-2)` -/
def P7762590200198086789.Spec : Prop :=
  ∀ n, P7762590200198086789.a n = A165323 n

theorem P7762590200198086789.correct : P7762590200198086789.Spec := by
  intro n
  simp only [A165323]

end A165323

/-! ## A165323.P11653486232076000065

`((33-sqrt(33))*(17+sqrt(33))^n+(33+sqrt(33))*(17-sqrt(33))^n)/(66*2^n)`
-/

namespace A165323.P11653486232076000065
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((33 - Real.sqrt (33 : ℝ)) * (17 + Real.sqrt (33 : ℝ)) ^ n + (33 + Real.sqrt (33 : ℝ)) * (17 - Real.sqrt (33 : ℝ)) ^ n) / (66 * 2 ^ n : ℝ)

end

end A165323.P11653486232076000065

namespace A165323

/-- `((33-sqrt(33))*(17+sqrt(33))^n+(33+sqrt(33))*(17-sqrt(33))^n)/(66*2^n)` -/
def P11653486232076000065.Spec : Prop :=
  ∀ n, P11653486232076000065.a n = (A165323 n : ℝ)

theorem P11653486232076000065.correct : P11653486232076000065.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165323, Nat.add_sub_cancel, A165323.P11653486232076000065.a, A165323.P7762590200198086789.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165323, Nat.add_sub_cancel, A165323.P11653486232076000065.a, A165323.P7762590200198086789.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A165323

/-! ## A165323.P14162514728459383868

`record[A100303(n)*A280560(n)]`
-/

namespace A165323.P14162514728459383868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100303 n * A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165323.P14162514728459383868

namespace A165323

/-- `record[A100303(n)*A280560(n)]` -/
def P14162514728459383868.Spec : Prop :=
  ∀ n, P14162514728459383868.a n = A165323 n

end A165323

/-! ## A165323.P1167586576644495998

`A040000(n)*A100303(2*n)`
-/

namespace A165323.P1167586576644495998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A100303 (2 * n)

end

end A165323.P1167586576644495998

namespace A165323

/-- `A040000(n)*A100303(2*n)` -/
def P1167586576644495998.Spec : Prop :=
  ∀ n, P1167586576644495998.a n = A165323 n

end A165323

/-! ## A165323.P11843574692031656463

`A000122(n²)*A100303(2*n)`
-/

namespace A165323.P11843574692031656463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A100303 (2 * n)

end

end A165323.P11843574692031656463

namespace A165323

/-- `A000122(n²)*A100303(2*n)` -/
def P11843574692031656463.Spec : Prop :=
  ∀ n, P11843574692031656463.a n = A165323 n

end A165323

/-! ## A165323.P14016371899151014435

`A040000(n)²*A100304(2*n)`
-/

namespace A165323.P14016371899151014435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n ^ 2 * A100304 (2 * n)

end

end A165323.P14016371899151014435

namespace A165323

/-- `A040000(n)²*A100304(2*n)` -/
def P14016371899151014435.Spec : Prop :=
  ∀ n, P14016371899151014435.a n = A165323 n

end A165323

/-! ## A165323.P11609213007275982929

`A036453(n+1)*A100303(2*n)`
-/

namespace A165323.P11609213007275982929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A100303 (2 * n)

end

end A165323.P11609213007275982929

namespace A165323

/-- `A036453(n+1)*A100303(2*n)` -/
def P11609213007275982929.Spec : Prop :=
  ∀ n, P11609213007275982929.a n = A165323 n

end A165323

/-! ## A165323.P14571854882178728437

`A100304(2*n)*A113311(2*n)`
-/

namespace A165323.P14571854882178728437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100304 (2 * n) * A113311 (2 * n)

end

end A165323.P14571854882178728437

namespace A165323

/-- `A100304(2*n)*A113311(2*n)` -/
def P14571854882178728437.Spec : Prop :=
  ∀ n, P14571854882178728437.a n = A165323 n

end A165323

/-!
# A165324: a(0)=1, a(1)=9, a(n)= 19*a(n-1)-81*a(n-2) for n>1.

The programs for A165324, the canonical program `A165324.P16164808804117204176` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165324 has offset 0).

The definition of A165324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*a(n-1)-81*a(n-2)` (program `A165324.P16164808804117204176`, by `A165324.P16164808804117204176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165324.P14778900710184211043

`ogf((1-10x)/(1-19x+81x^2))`
-/

namespace A165324.P14778900710184211043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -10] [1, -19, 81] n

end

end A165324.P14778900710184211043

namespace A165324

/-- `ogf((1-10x)/(1-19x+81x^2))` -/
def P14778900710184211043.Spec : Prop :=
  ∀ n, P14778900710184211043.a n = A165324 n

end A165324

/-! ## A165324.P16164808804117204176

`19*a(n-1)-81*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165324

/-- `19*a(n-1)-81*a(n-2)` -/
def P16164808804117204176.Spec : Prop :=
  ∀ n, P16164808804117204176.a n = A165324 n

theorem P16164808804117204176.correct : P16164808804117204176.Spec := by
  intro n
  simp only [A165324]

end A165324

/-! ## A165324.P17217342206877340184

`((37-sqrt(37))*(19+sqrt(37))^n+(37+sqrt(37))*(19-sqrt(37))^n)/(74*2^n)`
-/

namespace A165324.P17217342206877340184
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((37 - Real.sqrt (37 : ℝ)) * (19 + Real.sqrt (37 : ℝ)) ^ n + (37 + Real.sqrt (37 : ℝ)) * (19 - Real.sqrt (37 : ℝ)) ^ n) / (74 * 2 ^ n : ℝ)

end

end A165324.P17217342206877340184

namespace A165324

/-- `((37-sqrt(37))*(19+sqrt(37))^n+(37+sqrt(37))*(19-sqrt(37))^n)/(74*2^n)` -/
def P17217342206877340184.Spec : Prop :=
  ∀ n, P17217342206877340184.a n = (A165324 n : ℝ)

theorem P17217342206877340184.correct : P17217342206877340184.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165324, Nat.add_sub_cancel, A165324.P17217342206877340184.a, A165324.P16164808804117204176.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165324, Nat.add_sub_cancel, A165324.P17217342206877340184.a, A165324.P16164808804117204176.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A165324

/-! ## A165324.P12476361419656033232

`record[9*a(n-2)-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A165324.P12476361419656033232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  9 * f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165324.P12476361419656033232

namespace A165324

/-- `record[9*a(n-2)-a(n-1)]` -/
def P12476361419656033232.Spec : Prop :=
  ∀ n, P12476361419656033232.a n = A165324 n

end A165324

/-!
# A165326: a(0)=a(1)=1, a(n) = -a(n-1) for n > 1.

The programs for A165326, the canonical program `A165326.P7177893560965415136` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165326 has offset 0).

The definition of A165326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)` (program `A165326.P7177893560965415136`, by `A165326.P7177893560965415136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165326.P12195667650049055367

`ogf((1+2x)/(1+x))`
-/

namespace A165326.P12195667650049055367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 1] n

end

end A165326.P12195667650049055367

namespace A165326

/-- `ogf((1+2x)/(1+x))` -/
def P12195667650049055367.Spec : Prop :=
  ∀ n, P12195667650049055367.a n = A165326 n

end A165326

/-! ## A165326.P7177893560965415136

`-a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165326

/-- `-a(n-1)` -/
def P7177893560965415136.Spec : Prop :=
  ∀ n, P7177893560965415136.a n = A165326 n

theorem P7177893560965415136.correct : P7177893560965415136.Spec := by
  intro n
  simp only [A165326]

end A165326

/-!
# A165327: E.g.f: Sum_{n>=0} 2^(n(n-1)) * exp(2^n*x) * x^n/n!.

The programs for A165327, the canonical program `A165327.P6347244436836467775` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165327 has offset 0).

The definition of A165327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165327.P6347244436836467775

`(2^(n-1)+1)^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165327

/-- `(2^(n-1)+1)^n` -/
def P6347244436836467775.Spec : Prop :=
  ∀ n, P6347244436836467775.a n = (A165327 n : ℚ)

end A165327

/-! ## A165327.P17703425127635244632

`floor(∑[2*a(n-1)]^n)` with `a(0)=0, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A165327.P17703425127635244632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A165327.P17703425127635244632

namespace A165327

/-- `floor(∑[2*a(n-1)]^n)` -/
def P17703425127635244632.Spec : Prop :=
  ∀ n, (P17703425127635244632.a n : ℤ) = A165327 n

end A165327

/-! ## A165327.P13129195330075256384

`record[((n+3)/2)^val(n+1, 2)]`
-/

namespace A165327.P13129195330075256384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℚ) / 2) ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165327.P13129195330075256384

namespace A165327

/-- `record[((n+3)/2)^val(n+1, 2)]` -/
def P13129195330075256384.Spec : Prop :=
  ∀ n, P13129195330075256384.a n = (A165327 n : ℚ)

end A165327

/-! ## A165327.P5655534189954394397

`record[∑{e}[2*(n-2), (n-1)^#]]`
-/

namespace A165327.P5655534189954394397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, ((n : ℤ) - 1) ^ Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165327.P5655534189954394397

namespace A165327

/-- `record[∑{e}[2*(n-2), (n-1)^#]]` -/
def P5655534189954394397.Spec : Prop :=
  ∀ n, P5655534189954394397.a n = A165327 n

end A165327

/-! ## A165327.P4663642111201558100

`record[∏{e}[n, (n+2)^#/n]]`
-/

namespace A165327.P4663642111201558100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((n + 2) ^ Nat.factorization (f2 n) p : ℚ) / (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165327.P4663642111201558100

namespace A165327

/-- `record[∏{e}[n, (n+2)^#/n]]` -/
def P4663642111201558100.Spec : Prop :=
  ∀ n, P4663642111201558100.a n = (A165327 n : ℚ)

end A165327

/-!
# A165328: The number of even separable permutations of length n.

The programs for A165328, there is no canonical definition to state claims against.
-/

/-! ## A165328.P9994579977177294306

`A092573(A005668(n))+A001003(n)`
-/

namespace A165328.P9994579977177294306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 (A005668 n).toNat + A001003 n

end

end A165328.P9994579977177294306

/-! ## A165328.P7633298107967726426

`A069283(A055747(n))+A001003(n)`
-/

namespace A165328.P7633298107967726426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A055747 n).toNat + A001003 n

end

end A165328.P7633298107967726426

/-! ## A165328.P17509564314174599504

`A081603(A055749(n))+A001003(n)`
-/

namespace A165328.P17509564314174599504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A055749 n).toNat + A001003 n

end

end A165328.P17509564314174599504

/-!
# A165333: Numbers that eventually reach the fixed point 370 under "x -> sum of cubes of digits of x" (see A055012).

The programs for A165333, there is no canonical definition to state claims against.
-/

/-! ## A165333.P7563315966414336889

`eq[0, A225402(A165330(n))]`
-/

namespace A165333.P7563315966414336889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 (A165330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165333.P7563315966414336889

/-! ## A165333.P7147574549539491119

`eq[3, A055017(2*A165330(n))]`
-/

namespace A165333.P7147574549539491119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (2 * A165330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165333.P7147574549539491119

/-! ## A165333.P10970086320613316008

`eq[3, A055012(3*A165330(n))]`
-/

namespace A165333.P10970086320613316008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (3 * A165330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165333.P10970086320613316008

/-! ## A165333.P13315767981322112156

`eq[-A031178(n), A165326(A165330(n))]`
-/

namespace A165333.P13315767981322112156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A165330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165333.P13315767981322112156

/-! ## A165333.P6249224693108813959

`eq[A165330(2*A165330(n+1)), A165330(n)]`
-/

namespace A165333.P6249224693108813959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165330 (2 * A165330 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165333.P6249224693108813959

/-!
# A165334: Numbers that eventually reach the fixed point 371 under "x -> sum of cubes of digits of x" (see A055012).

The programs for A165334, there is no canonical definition to state claims against.
-/

/-! ## A165334.P7581302547542438347

`eq[3, A165330(n)%23]`
-/

namespace A165334.P7581302547542438347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165330 n) 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165334.P7581302547542438347

/-! ## A165334.P8656025274584945779

`eq[0, A309700(A165330(n))]`
-/

namespace A165334.P8656025274584945779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309700 (A165330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165334.P8656025274584945779

/-! ## A165334.P10163007918646879192

`lt[2, A262988(A165330(n)+2)]`
-/

namespace A165334.P10163007918646879192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (A165330 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A165334.P10163007918646879192

/-! ## A165334.P8431689885273711330

`eq[1, A318655(A165330(n)+5)]`
-/

namespace A165334.P8431689885273711330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318655 (A165330 n + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165334.P8431689885273711330

/-! ## A165334.P16642056069931018972

`lt[1, A249094(A165330(n)+5)]`
-/

namespace A165334.P16642056069931018972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (A165330 n + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A165334.P16642056069931018972

/-! ## A165334.P11632046145797291068

`eq[4, A165331(2*A165330(n))]`
-/

namespace A165334.P11632046145797291068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165331 (2 * A165330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165334.P11632046145797291068

/-! ## A165334.P9206693930542008262

`eq[0, A267814(A165330(n)+8)]`
-/

namespace A165334.P9206693930542008262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267814 (A165330 n + 8).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165334.P9206693930542008262

/-! ## A165334.P5732738153552511811

`eq[7, A294902(A165330(n)+1)]`
-/

namespace A165334.P5732738153552511811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294902 (A165330 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165334.P5732738153552511811

/-! ## A165334.P964585505129696318

`eq[1, A001222(A165330(n)+8)]`
-/

namespace A165334.P964585505129696318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A165330 n + 8).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165334.P964585505129696318

/-! ## A165334.P10158074248482330482

`eq[2, A000005(A165330(n)+8)]`
-/

namespace A165334.P10158074248482330482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A165330 n + 8).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165334.P10158074248482330482

/-!
# A165335: Numbers that eventually reach the fixed point 407 under "x -> sum of cubes of digits of x" (see A055012).

The programs for A165335, there is no canonical definition to state claims against.
-/

/-! ## A165335.P2376185860678541778

`eq[28, A007318(A165330(n))]`
-/

namespace A165335.P2376185860678541778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A165330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165335.P2376185860678541778

/-!
# A165336: Numbers that eventually reach a cycle under "x -> sum of cubes of digits of x" (see A055012).

The programs for A165336, there is no canonical definition to state claims against.
-/

/-! ## A165336.P9380560632934899778

`∪[A031180(n+1), A031181(n+1)]`
-/

namespace A165336.P9380560632934899778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165336.P9380560632934899778

/-! ## A165336.P12752969938400299036

`lt[1, A031178(A165330(n))]`
-/

namespace A165336.P12752969938400299036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 (A165330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A165336.P12752969938400299036

/-! ## A165336.P13093669173411231151

`comp[A031179(n+1)]`
-/

namespace A165336.P13093669173411231151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165336.P13093669173411231151

/-! ## A165336.P10785513124201753342

`lt[1, A031178(A055012(n))]`
-/

namespace A165336.P10785513124201753342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A165336.P10785513124201753342

/-! ## A165336.P4405880613414447395

`lt[1, A031178(n)]`
-/

namespace A165336.P4405880613414447395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A165336.P4405880613414447395

/-! ## A165336.P17749886984464151991

`eq[A031178(n), A244893(A031178(n)+n)]`
-/

namespace A165336.P17749886984464151991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244893 (A031178 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165336.P17749886984464151991

/-!
# A165339: Numbers that eventually reach the cycle 919-1459 under "x -> sum of cubes of digits of x" (see A055012).

The programs for A165339, there is no canonical definition to state claims against.
-/

/-! ## A165339.P14331178287720601170

`eq[1, A003415(A165330(n))]`
-/

namespace A165339.P14331178287720601170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A165330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165339.P14331178287720601170

/-!
# A165342: a(n) = A061037(n+2)/A000265(n+4).

The programs for A165342, the canonical program `A165342.P13431516689000651143` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165342 has offset 0).

The definition of A165342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165342.P13431516689000651143

`A061037(n+2)/A000265(n+4)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A165342

/-- `A061037(n+2)/A000265(n+4)` -/
def P13431516689000651143.Spec : Prop :=
  ∀ n, P13431516689000651143.a n = (A165342 n : ℚ)

end A165342

/-! ## A165342.P2641995274027381364

`gcd(A008454(n), A061037(n+2))`
-/

namespace A165342.P2641995274027381364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008454 n) (A061037 (n + 2))

end

end A165342.P2641995274027381364

namespace A165342

/-- `gcd(A008454(n), A061037(n+2))` -/
def P2641995274027381364.Spec : Prop :=
  ∀ n, (P2641995274027381364.a n : ℤ) = A165342 n

end A165342

/-! ## A165342.P1674690486089344769

`(A188134(n)+A181318(n))/A000265(n+4)`
-/

namespace A165342.P1674690486089344769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188134 n + A181318 n : ℚ) / (A000265 (n + 4) : ℚ)

end

end A165342.P1674690486089344769

namespace A165342

/-- `(A188134(n)+A181318(n))/A000265(n+4)` -/
def P1674690486089344769.Spec : Prop :=
  ∀ n, P1674690486089344769.a n = (A165342 n : ℚ)

end A165342

/-! ## A165342.P2015496334870824550

`gcd(A000584(n), A175628(2*(n+1)))`
-/

namespace A165342.P2015496334870824550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000584 n) (A175628 (2 * (n + 1)))

end

end A165342.P2015496334870824550

namespace A165342

/-- `gcd(A000584(n), A175628(2*(n+1)))` -/
def P2015496334870824550.Spec : Prop :=
  ∀ n, (P2015496334870824550.a n : ℤ) = A165342 n

end A165342

/-! ## A165342.P7961580747264001869

`gcd(A000584(n)², A175628(A103517(n)))`
-/

namespace A165342.P7961580747264001869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000584 n ^ 2) (A175628 (A103517 n).toNat)

end

end A165342.P7961580747264001869

namespace A165342

/-- `gcd(A000584(n)², A175628(A103517(n)))` -/
def P7961580747264001869.Spec : Prop :=
  ∀ n, (P7961580747264001869.a n : ℤ) = A165342 n

end A165342

/-! ## A165342.P15341535361469372280

`gcd(A001787(n), A061037(n+2))`
-/

namespace A165342.P15341535361469372280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001787 n) (A061037 (n + 2))

end

end A165342.P15341535361469372280

namespace A165342

/-- `gcd(A001787(n), A061037(n+2))` -/
def P15341535361469372280.Spec : Prop :=
  ∀ n, (P15341535361469372280.a n : ℤ) = A165342 n

end A165342

/-! ## A165342.P15616507610300295807

`A188134(A006519(n+4)*A188134(n))`
-/

namespace A165342.P15616507610300295807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A006519 (n + 4) * A188134 n).toNat

end

end A165342.P15616507610300295807

namespace A165342

/-- `A188134(A006519(n+4)*A188134(n))` -/
def P15616507610300295807.Spec : Prop :=
  ∀ n, P15616507610300295807.a n = A165342 n

end A165342

/-! ## A165342.P48709753940960133

`A106617(n*A006519(n+4))`
-/

namespace A165342.P48709753940960133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 ((n : ℤ) * A006519 (n + 4)).toNat

end

end A165342.P48709753940960133

namespace A165342

/-- `A106617(n*A006519(n+4))` -/
def P48709753940960133.Spec : Prop :=
  ∀ n, P48709753940960133.a n = A165342 n

end A165342

/-!
# A165345: Number of ON cells after n generations of the 2D cellular automaton described in the comments.

The programs for A165345, there is no canonical definition to state claims against.
-/

/-! ## A165345.P7722267077791203894

`A160125(A147552(n+1))+A147552(n+1)`
-/

namespace A165345.P7722267077791203894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160125 (A147552 (n + 1)).toNat + A147552 (n + 1)

end

end A165345.P7722267077791203894

/-! ## A165345.P10773448741370924658

`A160720(n+1)+A160125(A160720(n+1))`
-/

namespace A165345.P10773448741370924658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160720 (n + 1) + A160125 (A160720 (n + 1)).toNat

end

end A165345.P10773448741370924658

/-!
# A165346: Numbers such that the sum of the distinct prime factors is a fourth power.

The programs for A165346, there is no canonical definition to state claims against.
-/

/-! ## A165346.P17245682364244272110

`A196547(A065926(n+3)-A035513(2*n+3))`
-/

namespace A165346.P17245682364244272110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196547 (A065926 (n + 3) - A035513 (2 * n + 3)).toNat

end

end A165346.P17245682364244272110

/-!
# A165347: Primes which are sum of at least two consecutive fourth powers.

The programs for A165347, there is no canonical definition to state claims against.
-/

/-! ## A165347.P15484535040732882948

`p?[A217844(n+1)]`
-/

namespace A165347.P15484535040732882948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165347.P15484535040732882948

/-! ## A165347.P2755612209910425236

`p?[record[A217844(A052938(n))]]`
-/

namespace A165347.P2755612209910425236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217844 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165347.P2755612209910425236

/-! ## A165347.P5325012243253084905

`p?[record[A217844(A133310(n))]]`
-/

namespace A165347.P5325012243253084905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217844 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165347.P5325012243253084905

/-! ## A165347.P4019810890674291206

`p?[record[A217844(A203814(n))]]`
-/

namespace A165347.P4019810890674291206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217844 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165347.P4019810890674291206

/-! ## A165347.P8323212234961092583

`p?[record[A217844(A324343(n))]]`
-/

namespace A165347.P8323212234961092583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217844 (A324343 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165347.P8323212234961092583

/-!
# A165349: Primes p such that (p^2-1)/4-p is also prime.

The programs for A165349, there is no canonical definition to state claims against.
-/

/-! ## A165349.P7425275550806176328

`p?[A088502(n+1)+2]`
-/

namespace A165349.P7425275550806176328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165349.P7425275550806176328

/-! ## A165349.P10423424482788892764

`p?[2*A002328(n+1)+1]`
-/

namespace A165349.P10423424482788892764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002328 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165349.P10423424482788892764

/-! ## A165349.P5624613168584921658

`record[A006530(A088502(n+1)+2)]`
-/

namespace A165349.P5624613168584921658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A088502 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165349.P5624613168584921658

/-! ## A165349.P9544997183620082818

`record[A020639(A088502(n+1)+2)]`
-/

namespace A165349.P9544997183620082818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088502 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165349.P9544997183620082818

/-! ## A165349.P9873743090199046117

`record[A006530(sqrt(A110013(n+1))+2)]`
-/

namespace A165349.P9873743090199046117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A110013 (n + 1) : ℝ) + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165349.P9873743090199046117

/-! ## A165349.P5918928729867308417

`record[A020639(sqrt(A110013(n+1))+2)]`
-/

namespace A165349.P5918928729867308417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A110013 (n + 1) : ℝ) + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165349.P5918928729867308417

/-! ## A165349.P10473106672393001717

`record[A006530(2*A002328(n+1)+1)]`
-/

namespace A165349.P10473106672393001717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A002328 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165349.P10473106672393001717

/-! ## A165349.P15091736254154838527

`record[A020639(2*A045546(n+1)+3)]`
-/

namespace A165349.P15091736254154838527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A045546 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165349.P15091736254154838527

/-! ## A165349.P7267445851382973986

`p?[A089362(n+1)+A045546(n+1)]`
-/

namespace A165349.P7267445851382973986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1) + A045546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165349.P7267445851382973986

/-! ## A165349.P12442905374201830739

`∩[A000040(n+1), A088502(n+1)+2]`
-/

namespace A165349.P12442905374201830739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165349.P12442905374201830739

/-! ## A165349.P18402457309735713553

`∩[A001751(n+1), A088502(n+1)+2]`
-/

namespace A165349.P18402457309735713553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165349.P18402457309735713553

/-! ## A165349.P17283266256224799782

`∩[A006005(n+1), A088502(n+1)+2]`
-/

namespace A165349.P17283266256224799782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165349.P17283266256224799782

/-! ## A165349.P1132094487758285070

`∩[A008578(n+1), A088502(n+1)+2]`
-/

namespace A165349.P1132094487758285070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165349.P1132094487758285070

/-! ## A165349.P12397364857509196419

`∩[A045344(n+1), A088502(n+1)+2]`
-/

namespace A165349.P12397364857509196419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165349.P12397364857509196419

/-! ## A165349.P11170644552482362897

`∩[A046022(n+1), A088502(n+1)+2]`
-/

namespace A165349.P11170644552482362897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165349.P11170644552482362897

/-! ## A165349.P13886548493789385086

`∩[A051948(n+1), A088502(n+1)+2]`
-/

namespace A165349.P13886548493789385086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165349.P13886548493789385086

/-! ## A165349.P5196766261685531694

`∩[A053577(n+1), A088502(n+1)+2]`
-/

namespace A165349.P5196766261685531694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165349.P5196766261685531694

/-! ## A165349.P17106520164884824789

`∩[A053813(n+1), A088502(n+1)+2]`
-/

namespace A165349.P17106520164884824789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165349.P17106520164884824789

/-! ## A165349.P15732290389445800744

`∩[A058363(n+1), A088502(n+1)+2]`
-/

namespace A165349.P15732290389445800744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165349.P15732290389445800744

/-!
# A165350: Primes p such that floor((p^2-1)/4)+p is not prime.

The programs for A165350, there is no canonical definition to state claims against.
-/

/-! ## A165350.P12913988350377354900

`2*eq[1, A286680(n)]+1`
-/

namespace A165350.P12913988350377354900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A165350.P12913988350377354900

/-! ## A165350.P9658549244223158521

`A005408(eq[1, A286680(n)])`
-/

namespace A165350.P9658549244223158521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165350.P9658549244223158521

/-! ## A165350.P8044141324498602905

`A051445(eq[1, A286680(n)])`
-/

namespace A165350.P8044141324498602905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165350.P8044141324498602905

/-! ## A165350.P10655464491325563013

`A060264(eq[1, A286680(n)])`
-/

namespace A165350.P10655464491325563013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165350.P10655464491325563013

/-! ## A165350.P15280114137993385272

`A341845(eq[1, A286680(n)])`
-/

namespace A165350.P15280114137993385272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165350.P15280114137993385272

/-! ## A165350.P5431043141831252416

`p?[A005408(n)*A286680(n)]`
-/

namespace A165350.P5431043141831252416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A286680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165350.P5431043141831252416

/-! ## A165350.P11783449823281721134

`p?[A047268(n+1)*A286680(n)]`
-/

namespace A165350.P11783449823281721134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (n + 1) * A286680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165350.P11783449823281721134

/-! ## A165350.P16839613712953083676

`p?[A109613(2*n)*A286680(n)]`
-/

namespace A165350.P16839613712953083676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * n) * A286680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165350.P16839613712953083676

/-! ## A165350.P4388924270762851235

`p?[2*lt[2, A000005((n+1)²+n)]+1]`
-/

namespace A165350.P4388924270762851235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ 2 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165350.P4388924270762851235

/-! ## A165350.P1013192155846915958

`p?[n+1+A010051(A028552(n)+1)+n]`
-/

namespace A165350.P1013192155846915958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A010051 (A028552 n + 1).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165350.P1013192155846915958

/-!
# A165351: Numerator of 3*n/2.

The programs for A165351, the canonical program `A165351.P14190395736733323369` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165351 has offset 0).

The definition of A165351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165351.P13125630906779317026

`3*n/(1+(n+1)%2)`
-/

namespace A165351.P13125630906779317026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n : ℚ) / ((1 + (n + 1) % 2 : ℕ) : ℚ)

end

end A165351.P13125630906779317026

namespace A165351

/-- `3*n/(1+(n+1)%2)` -/
def P13125630906779317026.Spec : Prop :=
  ∀ n, P13125630906779317026.a n = (A165351 n : ℚ)

end A165351

/-! ## A165351.P4257929198317780243

`ogf((3x+3x^2+3x^3)/(1-2x^2+x^4))`
-/

namespace A165351.P4257929198317780243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 3, 3] [1, 0, -2, 0, 1] n

end

end A165351.P4257929198317780243

namespace A165351

/-- `ogf((3x+3x^2+3x^3)/(1-2x^2+x^4))` -/
def P4257929198317780243.Spec : Prop :=
  ∀ n, P4257929198317780243.a n = A165351 n

end A165351

/-! ## A165351.P16961360157848825755

`3*n*(3-(-1)^n)/4`
-/

namespace A165351.P16961360157848825755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) * (3 - (-1) ^ n) : ℚ) / 4

end

end A165351.P16961360157848825755

namespace A165351

/-- `3*n*(3-(-1)^n)/4` -/
def P16961360157848825755.Spec : Prop :=
  ∀ n, P16961360157848825755.a n = (A165351 n : ℚ)

end A165351

/-! ## A165351.P14190395736733323369

`A026741(3*n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A165351

/-- `A026741(3*n)` -/
def P14190395736733323369.Spec : Prop :=
  ∀ n, P14190395736733323369.a n = A165351 n

theorem P14190395736733323369.correct : P14190395736733323369.Spec := by
  intro n
  simp only [A165351]

end A165351

/-! ## A165351.P11303479009306713773

`3*gcd(n, ∑[n])`
-/

namespace A165351.P11303479009306713773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165351.P11303479009306713773

namespace A165351

/-- `3*gcd(n, ∑[n])` -/
def P11303479009306713773.Spec : Prop :=
  ∀ n, (P11303479009306713773.a n : ℤ) = A165351 n

end A165351

/-! ## A165351.P6464868424636006511

`lcm(2, 3*n)/2`
-/

namespace A165351.P6464868424636006511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (3 * n) : ℚ) / 2

end

end A165351.P6464868424636006511

namespace A165351

/-- `lcm(2, 3*n)/2` -/
def P6464868424636006511.Spec : Prop :=
  ∀ n, P6464868424636006511.a n = (A165351 n : ℚ)

end A165351

/-! ## A165351.P16926628802128637396

`3*n/gcd(2, n²)`
-/

namespace A165351.P16926628802128637396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) / (Nat.gcd 2 (n ^ 2) : ℚ))

end

end A165351.P16926628802128637396

namespace A165351

/-- `3*n/gcd(2, n²)` -/
def P16926628802128637396.Spec : Prop :=
  ∀ n, P16926628802128637396.a n = (A165351 n : ℚ)

end A165351

/-! ## A165351.P8386262637453083454

`3*n/(2-n%2)`
-/

namespace A165351.P8386262637453083454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ))

end

end A165351.P8386262637453083454

namespace A165351

/-- `3*n/(2-n%2)` -/
def P8386262637453083454.Spec : Prop :=
  ∀ n, P8386262637453083454.a n = (A165351 n : ℚ)

end A165351

/-! ## A165351.P6073098250390607863

`3*n/(2-and(1, n))`
-/

namespace A165351.P6073098250390607863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)

end

end A165351.P6073098250390607863

namespace A165351

/-- `3*n/(2-and(1, n))` -/
def P6073098250390607863.Spec : Prop :=
  ∀ n, P6073098250390607863.a n = (A165351 n : ℚ)

end A165351

/-! ## A165351.P9768333327484928220

`gcd(3*n, C(3*n, 2))`
-/

namespace A165351.P9768333327484928220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 * n) (Nat.choose (3 * n) 2)

end

end A165351.P9768333327484928220

namespace A165351

/-- `gcd(3*n, C(3*n, 2))` -/
def P9768333327484928220.Spec : Prop :=
  ∀ n, (P9768333327484928220.a n : ℤ) = A165351 n

end A165351

/-! ## A165351.P12010845836698770666

`Δ[C(floor(3*n/2), 2)]`
-/

namespace A165351.P12010845836698770666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊3 * ((n : ℚ) / 2)⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A165351.P12010845836698770666

namespace A165351

/-- `Δ[C(floor(3*n/2), 2)]` -/
def P12010845836698770666.Spec : Prop :=
  ∀ n, P12010845836698770666.a n = A165351 n

end A165351

/-! ## A165351.P14014010506724878035

`3*lcm(n, n+2)%(n+1)`
-/

namespace A165351.P14014010506724878035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (Nat.lcm n (n + 2) % (n + 1))

end

end A165351.P14014010506724878035

namespace A165351

/-- `3*lcm(n, n+2)%(n+1)` -/
def P14014010506724878035.Spec : Prop :=
  ∀ n, (P14014010506724878035.a n : ℤ) = A165351 n

end A165351

/-! ## A165351.P9802535937402050726

`3*n/runs[val(2*n+1, 3)]`
-/

namespace A165351.P9802535937402050726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * n + 1) 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) / ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℚ))

end

end A165351.P9802535937402050726

namespace A165351

/-- `3*n/runs[val(2*n+1, 3)]` -/
def P9802535937402050726.Spec : Prop :=
  ∀ n, P9802535937402050726.a n = (A165351 n : ℚ)

end A165351

/-! ## A165351.P17712063154664761682

`2*n-n/Δ[n+1-a(n-1)]` with `a(0)=0`
-/

namespace A165351.P17712063154664761682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - (n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A165351.P17712063154664761682

namespace A165351

/-- `2*n-n/Δ[n+1-a(n-1)]` -/
def P17712063154664761682.Spec : Prop :=
  ∀ n, P17712063154664761682.a n = (A165351 n : ℚ)

end A165351

/-! ## A165351.P10313267310903196225

`a(n-2)+dr(a(n-1)+a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A165351.P10313267310903196225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 2) + SequenceMachineLib.digitalRoot (a (n - 1) + a (n - 2) : ℤ)

end

end A165351.P10313267310903196225

namespace A165351

/-- `a(n-2)+dr(a(n-1)+a(n-2))` -/
def P10313267310903196225.Spec : Prop :=
  ∀ n, (P10313267310903196225.a n : ℤ) = A165351 n

end A165351

/-! ## A165351.P11896064053309286810

`A064680(n)+n`
-/

namespace A165351.P11896064053309286810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n + (n : ℤ)

end

end A165351.P11896064053309286810

namespace A165351

/-- `A064680(n)+n` -/
def P11896064053309286810.Spec : Prop :=
  ∀ n, P11896064053309286810.a n = A165351 n

end A165351

/-! ## A165351.P554647629252840505

`A008585(gcd(n, ∑[n]))`
-/

namespace A165351.P554647629252840505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A165351.P554647629252840505

namespace A165351

/-- `A008585(gcd(n, ∑[n]))` -/
def P554647629252840505.Spec : Prop :=
  ∀ n, P554647629252840505.a n = A165351 n

end A165351

/-! ## A165351.P12135218207483957070

`3/2*A109043(n)`
-/

namespace A165351.P12135218207483957070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A109043 n : ℚ)

end

end A165351.P12135218207483957070

namespace A165351

/-- `3/2*A109043(n)` -/
def P12135218207483957070.Spec : Prop :=
  ∀ n, P12135218207483957070.a n = (A165351 n : ℚ)

end A165351

/-! ## A165351.P15399540528965480767

`A176447(n)+2*n`
-/

namespace A165351.P15399540528965480767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 n + (2 * n : ℤ)

end

end A165351.P15399540528965480767

namespace A165351

/-- `A176447(n)+2*n` -/
def P15399540528965480767.Spec : Prop :=
  ∀ n, P15399540528965480767.a n = A165351 n

end A165351

/-! ## A165351.P2718339291234828756

`3*(n-A142150(n))`
-/

namespace A165351.P2718339291234828756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - A142150 n)

end

end A165351.P2718339291234828756

namespace A165351

/-- `3*(n-A142150(n))` -/
def P2718339291234828756.Spec : Prop :=
  ∀ n, P2718339291234828756.a n = A165351 n

end A165351

/-!
# A165352: Primes of the form p + (p^2 - 1)/8, where p is also prime.

The programs for A165352, there is no canonical definition to state claims against.
-/

/-! ## A165352.P14751720146852144235

`A165353(n+1)+(A165353(n+1)²-1)/8`
-/

namespace A165352.P14751720146852144235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165353 (n + 1) : ℚ) + (A165353 (n + 1) ^ 2 - 1 : ℚ) / 8

end

end A165352.P14751720146852144235

/-! ## A165352.P15750128976379670027

`A034856((A165353(n+1)+1)/2)`
-/

namespace A165352.P15750128976379670027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (SequenceMachineLib.roundAway ((A165353 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A165352.P15750128976379670027

/-! ## A165352.P296200902741556117

`A165157(A165353(n+1))`
-/

namespace A165352.P296200902741556117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 (A165353 (n + 1)).toNat

end

end A165352.P296200902741556117

/-! ## A165352.P632817349627933976

`A101881(A165353(n+1)-1)`
-/

namespace A165352.P632817349627933976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 (A165353 (n + 1) - 1).toNat

end

end A165352.P632817349627933976

/-! ## A165352.P12260420059042621686

`A186347(or(1, A165353(n+1)))`
-/

namespace A165352.P12260420059042621686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186347 (Int.lor 1 (A165353 (n + 1))).toNat

end

end A165352.P12260420059042621686

/-! ## A165352.P4000414151469141581

`A101881(xor(1, A165353(n+1)))`
-/

namespace A165352.P4000414151469141581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 (Int.xor 1 (A165353 (n + 1))).toNat

end

end A165352.P4000414151469141581

/-! ## A165352.P13890263537765402222

`p?[A165157(p?[2*n+1])]`
-/

namespace A165352.P13890263537765402222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165352.P13890263537765402222

/-! ## A165352.P7801069616183662106

`p?[A186347(p?[2*n+1])]`
-/

namespace A165352.P7801069616183662106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186347 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165352.P7801069616183662106

/-! ## A165352.P3586979905707999793

`p?[A186349(p?[2*n+1])]`
-/

namespace A165352.P3586979905707999793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186349 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165352.P3586979905707999793

/-!
# A165353: Primes p such that p+(p^2-1)/8 is a prime number.

The programs for A165353, there is no canonical definition to state claims against.
-/

/-! ## A165353.P6489486680250933585

`p?[(2*n+1)*A001222(A055998(n)+1)]`
-/

namespace A165353.P6489486680250933585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A001222 (A055998 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165353.P6489486680250933585

/-! ## A165353.P6684689376527322016

`p?[A006530(A034856(n+1))-A000217(n)]`
-/

namespace A165353.P6684689376527322016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034856 (n + 1)).toNat - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165353.P6684689376527322016

/-! ## A165353.P13503387613047674604

`p?[A001222(A034856(n+1))*A005408(n)]`
-/

namespace A165353.P13503387613047674604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034856 (n + 1)).toNat * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165353.P13503387613047674604

/-! ## A165353.P8119260360484028052

`p?[A010051(A034856(n+1))*A085090(n+1)]`
-/

namespace A165353.P8119260360484028052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A034856 (n + 1)).toNat * A085090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165353.P8119260360484028052

/-! ## A165353.P4004020366857463630

`p?[A010051(A034856(n+1))*A247328(n+1)]`
-/

namespace A165353.P4004020366857463630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A034856 (n + 1)).toNat * A247328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165353.P4004020366857463630

/-!
# A165354: Primes p such that p+(p^2-1)/8 is an integer but not a prime number.

The programs for A165354, the canonical program `A165354.P16000707471541955230` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165354 has offset 1).

The definition of A165354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165354.P16000707471541955230

`p?[A010051(A034856(n+1))+2*n+1]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A165354

/-- `p?[A010051(A034856(n+1))+2*n+1]` -/
def P16000707471541955230.Spec : Prop :=
  ∀ n, P16000707471541955230.a n = A165354 (n + 1)

theorem P16000707471541955230.correct : P16000707471541955230.Spec := by
  intro n
  simp only [A165354, Nat.add_sub_cancel]

end A165354

/-! ## A165354.P15373592912861867548

`p?[A010051(A055998(n)+1)+2*n+1]`
-/

namespace A165354.P15373592912861867548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A055998 n + 1).toNat + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165354.P15373592912861867548

namespace A165354

/-- `p?[A010051(A055998(n)+1)+2*n+1]` -/
def P15373592912861867548.Spec : Prop :=
  ∀ n, P15373592912861867548.a n = A165354 (n + 1)

end A165354

/-! ## A165354.P10554426021258769064

`p?[A005408(n)-A010051(A034856(n+1))]`
-/

namespace A165354.P10554426021258769064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A010051 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165354.P10554426021258769064

namespace A165354

/-- `p?[A005408(n)-A010051(A034856(n+1))]` -/
def P10554426021258769064.Spec : Prop :=
  ∀ n, P10554426021258769064.a n = A165354 (n + 1)

end A165354

/-! ## A165354.P2425310218298305503

`p?[A085090(n+1)+A010051(A034856(n+1))]`
-/

namespace A165354.P2425310218298305503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 1) + A010051 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165354.P2425310218298305503

namespace A165354

/-- `p?[A085090(n+1)+A010051(A034856(n+1))]` -/
def P2425310218298305503.Spec : Prop :=
  ∀ n, P2425310218298305503.a n = A165354 (n + 1)

end A165354

/-! ## A165354.P16553796555915943092

`p?[A247328(n+1)+A010051(A034856(n+1))]`
-/

namespace A165354.P16553796555915943092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247328 (n + 1) + A010051 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165354.P16553796555915943092

namespace A165354

/-- `p?[A247328(n+1)+A010051(A034856(n+1))]` -/
def P16553796555915943092.Spec : Prop :=
  ∀ n, P16553796555915943092.a n = A165354 (n + 1)

end A165354

/-! ## A165354.P8724916758878353483

`p?[A317107(n+1)+A010051(A034856(n+1))]`
-/

namespace A165354.P8724916758878353483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317107 (n + 1) + A010051 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165354.P8724916758878353483

namespace A165354

/-- `p?[A317107(n+1)+A010051(A034856(n+1))]` -/
def P8724916758878353483.Spec : Prop :=
  ∀ n, P8724916758878353483.a n = A165354 (n + 1)

end A165354

/-! ## A165354.P16722125977608309152

`p?[A317439(n+1)+A010051(A034856(n+1))]`
-/

namespace A165354.P16722125977608309152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317439 (n + 1) + A010051 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165354.P16722125977608309152

namespace A165354

/-- `p?[A317439(n+1)+A010051(A034856(n+1))]` -/
def P16722125977608309152.Spec : Prop :=
  ∀ n, P16722125977608309152.a n = A165354 (n + 1)

end A165354

/-! ## A165354.P16923501249159210084

`p?[A016777(n)+A010051(A055998(n)+1)-n]`
-/

namespace A165354.P16923501249159210084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (A010051 (A055998 n + 1).toNat - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165354.P16923501249159210084

namespace A165354

/-- `p?[A016777(n)+A010051(A055998(n)+1)-n]` -/
def P16923501249159210084.Spec : Prop :=
  ∀ n, P16923501249159210084.a n = A165354 (n + 1)

end A165354

/-!
# A165355: a(n) = 3n + 1 if n is even, or a(n) = (3n + 1)/2 if n is odd.

The programs for A165355, the canonical program `A165355.P5766212487541721838` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165355 has offset 0).

The definition of A165355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165355.P13380363427403948522

`ogf((1+2x+5x^2+x^3)/(1-2x^2+x^4))`
-/

namespace A165355.P13380363427403948522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 5, 1] [1, 0, -2, 0, 1] n

end

end A165355.P13380363427403948522

namespace A165355

/-- `ogf((1+2x+5x^2+x^3)/(1-2x^2+x^4))` -/
def P13380363427403948522.Spec : Prop :=
  ∀ n, P13380363427403948522.a n = A165355 n

end A165355

/-! ## A165355.P5766212487541721838

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165355

/-- `2*a(n-2)-a(n-4)` -/
def P5766212487541721838.Spec : Prop :=
  ∀ n, P5766212487541721838.a n = A165355 n

theorem P5766212487541721838.correct : P5766212487541721838.Spec := by
  intro n
  simp only [A165355]

end A165355

/-! ## A165355.P10487495725683100045

`2*(3*n+1)/(4-(2*n+2)%4)`
-/

namespace A165355.P10487495725683100045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (3 * n + 1) : ℚ) / (4 - (((2 * n + 2) % 4 : ℕ) : ℤ) : ℚ)

end

end A165355.P10487495725683100045

namespace A165355

/-- `2*(3*n+1)/(4-(2*n+2)%4)` -/
def P10487495725683100045.Spec : Prop :=
  ∀ n, P10487495725683100045.a n = (A165355 n : ℚ)

end A165355

/-! ## A165355.P16730712421801127889

`(3+9*n)/4+(-1)^n*(1+3*n)/4`
-/

namespace A165355.P16730712421801127889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + 9 * n : ℚ) / 4 + ((-1) ^ n * (1 + 3 * n : ℤ) : ℚ) / 4

end

end A165355.P16730712421801127889

namespace A165355

/-- `(3+9*n)/4+(-1)^n*(1+3*n)/4` -/
def P16730712421801127889.Spec : Prop :=
  ∀ n, P16730712421801127889.a n = (A165355 n : ℚ)

theorem P16730712421801127889.correct : P16730712421801127889.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A165355, Nat.add_sub_cancel, A165355.P16730712421801127889.a, A165355.P5766212487541721838.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A165355, Nat.add_sub_cancel, A165355.P16730712421801127889.a, A165355.P5766212487541721838.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A165355

/-! ## A165355.P15475129355915046371

`A026741(3*n+1)`
-/

namespace A165355.P15475129355915046371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (3 * n + 1)

end

end A165355.P15475129355915046371

namespace A165355

/-- `A026741(3*n+1)` -/
def P15475129355915046371.Spec : Prop :=
  ∀ n, P15475129355915046371.a n = A165355 n

end A165355

/-! ## A165355.P11933099730456784229

`lcm(2, 3*n+1)/2`
-/

namespace A165355.P11933099730456784229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (3 * n + 1) : ℚ) / 2

end

end A165355.P11933099730456784229

namespace A165355

/-- `lcm(2, 3*n+1)/2` -/
def P11933099730456784229.Spec : Prop :=
  ∀ n, P11933099730456784229.a n = (A165355 n : ℚ)

end A165355

/-! ## A165355.P16449996207540327926

`Δ[C(ceil(3*n/2), 2)]`
-/

namespace A165355.P16449996207540327926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈3 * ((n : ℚ) / 2)⌉.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A165355.P16449996207540327926

namespace A165355

/-- `Δ[C(ceil(3*n/2), 2)]` -/
def P16449996207540327926.Spec : Prop :=
  ∀ n, P16449996207540327926.a n = A165355 n

end A165355

/-! ## A165355.P6601106729397136883

`(3*n+1)/(n%2+1)`
-/

namespace A165355.P6601106729397136883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A165355.P6601106729397136883

namespace A165355

/-- `(3*n+1)/(n%2+1)` -/
def P6601106729397136883.Spec : Prop :=
  ∀ n, P6601106729397136883.a n = (A165355 n : ℚ)

end A165355

/-! ## A165355.P9508082328539180875

`(3*n+1)/gcd(2, n+1)`
-/

namespace A165355.P9508082328539180875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A165355.P9508082328539180875

namespace A165355

/-- `(3*n+1)/gcd(2, n+1)` -/
def P9508082328539180875.Spec : Prop :=
  ∀ n, P9508082328539180875.a n = (A165355 n : ℚ)

end A165355

/-! ## A165355.P2135600591952198495

`(3*n+1)/(and(1, n)+1)`
-/

namespace A165355.P2135600591952198495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℚ) / (Nat.land 1 n + 1 : ℚ)

end

end A165355.P2135600591952198495

namespace A165355

/-- `(3*n+1)/(and(1, n)+1)` -/
def P2135600591952198495.Spec : Prop :=
  ∀ n, P2135600591952198495.a n = (A165355 n : ℚ)

end A165355

/-! ## A165355.P4589956501551618152

`gcd(3*n+1, ∑[n]+n²)`
-/

namespace A165355.P4589956501551618152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2)

end

end A165355.P4589956501551618152

namespace A165355

/-- `gcd(3*n+1, ∑[n]+n²)` -/
def P4589956501551618152.Spec : Prop :=
  ∀ n, (P4589956501551618152.a n : ℤ) = A165355 n

end A165355

/-! ## A165355.P2086770367887513330

`a(n-2)+3*gcd(n, n+2)` with `a(0)=1, a(1)=2`
-/

namespace A165355.P2086770367887513330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 3 * Nat.gcd n (n + 2)

end

end A165355.P2086770367887513330

namespace A165355

/-- `a(n-2)+3*gcd(n, n+2)` -/
def P2086770367887513330.Spec : Prop :=
  ∀ n, (P2086770367887513330.a n : ℤ) = A165355 n

end A165355

/-! ## A165355.P17603463246693011969

`3*floor(3*n/2)-a(n-1)` with `a(0)=1`
-/

namespace A165355.P17603463246693011969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * ⌊(3 * n : ℚ) / 2⌋ - a (n - 1)

end

end A165355.P17603463246693011969

namespace A165355

/-- `3*floor(3*n/2)-a(n-1)` -/
def P17603463246693011969.Spec : Prop :=
  ∀ n, P17603463246693011969.a n = A165355 n

end A165355

/-! ## A165355.P5788698090030668047

`a(n-2)+dr(3*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A165355.P5788698090030668047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + SequenceMachineLib.digitalRoot (3 * a (n - 1) : ℤ)

end

end A165355.P5788698090030668047

namespace A165355

/-- `a(n-2)+dr(3*a(n-1))` -/
def P5788698090030668047.Spec : Prop :=
  ∀ n, (P5788698090030668047.a n : ℤ) = A165355 n

end A165355

/-! ## A165355.P7647565532202087904

`A339913(A008458(n))`
-/

namespace A165355.P7647565532202087904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (A008458 n).toNat

end

end A165355.P7647565532202087904

namespace A165355

/-- `A339913(A008458(n))` -/
def P7647565532202087904.Spec : Prop :=
  ∀ n, P7647565532202087904.a n = A165355 n

end A165355

/-! ## A165355.P17612266873162344335

`A016777(n)/A000034(n)`
-/

namespace A165355.P17612266873162344335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016777 n : ℚ) / (A000034 n : ℚ)

end

end A165355.P17612266873162344335

namespace A165355

/-- `A016777(n)/A000034(n)` -/
def P17612266873162344335.Spec : Prop :=
  ∀ n, P17612266873162344335.a n = (A165355 n : ℚ)

end A165355

/-! ## A165355.P14856036048889813965

`A016933(n)/A010694(n)`
-/

namespace A165355.P14856036048889813965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016933 n : ℚ) / (A010694 n : ℚ)

end

end A165355.P14856036048889813965

namespace A165355

/-- `A016933(n)/A010694(n)` -/
def P14856036048889813965.Spec : Prop :=
  ∀ n, P14856036048889813965.a n = (A165355 n : ℚ)

end A165355

/-! ## A165355.P14102504577267737363

`A017197(n)/A010704(n)`
-/

namespace A165355.P14102504577267737363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017197 n : ℚ) / (A010704 n : ℚ)

end

end A165355.P14102504577267737363

namespace A165355

/-- `A017197(n)/A010704(n)` -/
def P14102504577267737363.Spec : Prop :=
  ∀ n, P14102504577267737363.a n = (A165355 n : ℚ)

end A165355

/-! ## A165355.P7187588075643906627

`A017569(n)/A010713(n)`
-/

namespace A165355.P7187588075643906627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017569 n : ℚ) / (A010713 n : ℚ)

end

end A165355.P7187588075643906627

namespace A165355

/-- `A017569(n)/A010713(n)` -/
def P7187588075643906627.Spec : Prop :=
  ∀ n, P7187588075643906627.a n = (A165355 n : ℚ)

end A165355

/-! ## A165355.P6431604564182504981

`A166138(n)/A010685(n)`
-/

namespace A165355.P6431604564182504981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166138 n : ℚ) / (A010685 n : ℚ)

end

end A165355.P6431604564182504981

namespace A165355

/-- `A166138(n)/A010685(n)` -/
def P6431604564182504981.Spec : Prop :=
  ∀ n, P6431604564182504981.a n = (A165355 n : ℚ)

end A165355

/-!
# A165356: Primes p such that p + (p^2 - 1)/8 is a perfect square.

The programs for A165356, there is no canonical definition to state claims against.
-/

/-! ## A165356.P3188566086789821867

`p?[A077242(n)-4]`
-/

namespace A165356.P3188566086789821867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077242 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165356.P3188566086789821867

/-!
# A165357: Left-justified Wythoff array, read by descending antidiagonals.

The programs for A165357, there is no canonical definition to state claims against.
-/

/-! ## A165357.P247225314897021322

`A325430(A316834(n+1)+A109960(3*n))%5`
-/

namespace A165357.P247225314897021322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325430 (A316834 (n + 1) + A109960 (3 * n)).toNat) 5

end

end A165357.P247225314897021322

/-!
# A165359: Column 1 of Left-justified Wythoff Array.

The programs for A165359, there is no canonical definition to state claims against.
-/

/-! ## A165359.P13597589818516231843

`A165357(∑[n+1])`
-/

namespace A165359.P13597589818516231843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165357 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165359.P13597589818516231843

/-! ## A165359.P3908164353998137688

`A286326(comp[floor(ϕ*n)]+floor(ϕ*(n+1))-1)`
-/

namespace A165359.P3908164353998137688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286326 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1)).toNat

end

end A165359.P3908164353998137688

/-! ## A165359.P873957591075000824

`A097368(A035337(n))`
-/

namespace A165359.P873957591075000824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097368 (A035337 n).toNat

end

end A165359.P873957591075000824

/-! ## A165359.P1741676487974001654

`A097368(A035338(n))`
-/

namespace A165359.P1741676487974001654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097368 (A035338 n).toNat

end

end A165359.P1741676487974001654

/-! ## A165359.P14412593859181379204

`A097368(A035339(n))`
-/

namespace A165359.P14412593859181379204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097368 (A035339 n).toNat

end

end A165359.P14412593859181379204

/-! ## A165359.P1036338187308967661

`A097368(A035340(n))`
-/

namespace A165359.P1036338187308967661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097368 (A035340 n).toNat

end

end A165359.P1036338187308967661

/-! ## A165359.P5733560877524265542

`A097368(A035336(n+1))`
-/

namespace A165359.P5733560877524265542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097368 (A035336 (n + 1)).toNat

end

end A165359.P5733560877524265542

/-!
# A165360: Column 2 of Left-justified Wythoff Array.

The programs for A165360, there is no canonical definition to state claims against.
-/

/-! ## A165360.P10801322688069147499

`A165357(∑[n+2])`
-/

namespace A165360.P10801322688069147499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165357 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165360.P10801322688069147499

/-! ## A165360.P17514070151132238126

`A165357(A055998(n)+2)%32`
-/

namespace A165360.P17514070151132238126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165357 (A055998 n + 2).toNat) 32

end

end A165360.P17514070151132238126

/-! ## A165360.P12427772677087511985

`A054977(n)*A165357(A000096(n+1))`
-/

namespace A165360.P12427772677087511985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A165357 (A000096 (n + 1)).toNat

end

end A165360.P12427772677087511985

/-! ## A165360.P10074771346671135329

`A165357(record[A061579(n+2)])-A000007(n)`
-/

namespace A165360.P10074771346671135329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000007 n

end

end A165360.P10074771346671135329

/-! ## A165360.P4963311966686752958

`A057427(n+1)*A165357(A055998(n)+2)`
-/

namespace A165360.P4963311966686752958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A165357 (A055998 n + 2).toNat

end

end A165360.P4963311966686752958

/-! ## A165360.P2143544891552304954

`n/A028310(n)*A165357(record[A061579(n+2)])`
-/

namespace A165360.P2143544891552304954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A028310 n : ℚ) * (A165357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A165360.P2143544891552304954

/-! ## A165360.P15139724282174568779

`A165357(record[A061579(n+2)])-A096500(2*n+1)`
-/

namespace A165360.P15139724282174568779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A096500 (2 * n + 1)

end

end A165360.P15139724282174568779

/-! ## A165360.P16545114750836469386

`A165357(A034856(n+2))-A165359(n+1)`
-/

namespace A165360.P16545114750836469386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165357 (A034856 (n + 2)).toNat - A165359 (n + 1)

end

end A165360.P16545114750836469386

/-! ## A165360.P7210285718446414031

`A165357(A052905(n)+3)-A165359(n+1)`
-/

namespace A165360.P7210285718446414031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165357 (A052905 n + 3).toNat - A165359 (n + 1)

end

end A165360.P7210285718446414031

/-!
# A165362: Integers of pseudo-averages of at least two consecutive nonprime numbers of the form (a+b+c+..+z)/z, which can be expressed only ones.

The programs for A165362, there is no canonical definition to state claims against.
-/

/-! ## A165362.P3032014020004138271

`∩[A165240(n+1), comp[A165363(n+1)]]`
-/

namespace A165362.P3032014020004138271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165240 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165363 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A165362.P3032014020004138271

/-!
# A165363: Integers of pseudo-averages of at least two consecutive nonprime numbers of the form (a+b+c+..+z)/z, which can be expressed in more than one way.

The programs for A165363, there is no canonical definition to state claims against.
-/

/-! ## A165363.P17843145581675032981

`∩[A165240(n+1), comp[A165362(n+1)]]`
-/

namespace A165363.P17843145581675032981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165240 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165362 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A165363.P17843145581675032981

/-! ## A165363.P14609833229908692713

`lt[A058515(A011262(3*n+2)), A048716(n+1)]`
-/

namespace A165363.P14609833229908692713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058515 (A011262 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165363.P14609833229908692713

/-!
# A165367: Trisection a(n) = A026741(3n + 2).

The programs for A165367, the canonical program `A165367.P11038043711499478741` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165367 has offset 0).

The definition of A165367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165367.P12113504839206549436

`ogf((1+5x+2x^2+x^3)/(1-2x^2+x^4))`
-/

namespace A165367.P12113504839206549436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 2, 1] [1, 0, -2, 0, 1] n

end

end A165367.P12113504839206549436

namespace A165367

/-- `ogf((1+5x+2x^2+x^3)/(1-2x^2+x^4))` -/
def P12113504839206549436.Spec : Prop :=
  ∀ n, P12113504839206549436.a n = A165367 n

end A165367

/-! ## A165367.P12700840879152450174

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=4, a(3)=11`
-/

namespace A165367.P12700840879152450174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 4, 11] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A165367.P12700840879152450174

namespace A165367

/-- `2*a(n-2)-a(n-4)` -/
def P12700840879152450174.Spec : Prop :=
  ∀ n, P12700840879152450174.a n = A165367 n

end A165367

/-! ## A165367.P11038043711499478741

`A026741(3*n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A165367

/-- `A026741(3*n+2)` -/
def P11038043711499478741.Spec : Prop :=
  ∀ n, P11038043711499478741.a n = A165367 n

theorem P11038043711499478741.correct : P11038043711499478741.Spec := by
  intro n
  simp only [A165367]

end A165367

/-! ## A165367.P1677004729914525455

`lcm(2, 3*n+2)/2`
-/

namespace A165367.P1677004729914525455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (3 * n + 2) : ℚ) / 2

end

end A165367.P1677004729914525455

namespace A165367

/-- `lcm(2, 3*n+2)/2` -/
def P1677004729914525455.Spec : Prop :=
  ∀ n, P1677004729914525455.a n = (A165367 n : ℚ)

end A165367

/-! ## A165367.P11273544082517943216

`(2+n*3)/gcd(2, n)`
-/

namespace A165367.P11273544082517943216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + n * 3 : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A165367.P11273544082517943216

namespace A165367

/-- `(2+n*3)/gcd(2, n)` -/
def P11273544082517943216.Spec : Prop :=
  ∀ n, P11273544082517943216.a n = (A165367 n : ℚ)

end A165367

/-! ## A165367.P3617933852540814756

`Δ[or(1, 3*n)²/8]`
-/

namespace A165367.P3617933852540814756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * n) ^ 2 : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165367.P3617933852540814756

namespace A165367

/-- `Δ[or(1, 3*n)²/8]` -/
def P3617933852540814756.Spec : Prop :=
  ∀ n, P3617933852540814756.a n = (A165367 n : ℚ)

end A165367

/-! ## A165367.P15887795213753799756

`(3*n+2)/(2-n%2)`
-/

namespace A165367.P15887795213753799756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ)

end

end A165367.P15887795213753799756

namespace A165367

/-- `(3*n+2)/(2-n%2)` -/
def P15887795213753799756.Spec : Prop :=
  ∀ n, P15887795213753799756.a n = (A165367 n : ℚ)

end A165367

/-! ## A165367.P13807530721376729849

`(3*n+2)/(2-and(1, n))`
-/

namespace A165367.P13807530721376729849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)

end

end A165367.P13807530721376729849

namespace A165367

/-- `(3*n+2)/(2-and(1, n))` -/
def P13807530721376729849.Spec : Prop :=
  ∀ n, P13807530721376729849.a n = (A165367 n : ℚ)

end A165367

/-! ## A165367.P16258246811317010677

`Δ[C(floor(n/2+n+1), 2)]`
-/

namespace A165367.P16258246811317010677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 2 + (n + 1 : ℚ)⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A165367.P16258246811317010677

namespace A165367

/-- `Δ[C(floor(n/2+n+1), 2)]` -/
def P16258246811317010677.Spec : Prop :=
  ∀ n, P16258246811317010677.a n = A165367 n

end A165367

/-! ## A165367.P4750974135789792982

`(3*n+2)/(char[2*n]+1)`
-/

namespace A165367.P4750974135789792982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A165367.P4750974135789792982

namespace A165367

/-- `(3*n+2)/(char[2*n]+1)` -/
def P4750974135789792982.Spec : Prop :=
  ∀ n, P4750974135789792982.a n = (A165367 n : ℚ)

end A165367

/-! ## A165367.P17314908695503644548

`gcd(2*n+n+2, Δ[n*∑[n]])`
-/

namespace A165367.P17314908695503644548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + (n + 2) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A165367.P17314908695503644548

namespace A165367

/-- `gcd(2*n+n+2, Δ[n*∑[n]])` -/
def P17314908695503644548.Spec : Prop :=
  ∀ n, (P17314908695503644548.a n : ℤ) = A165367 n

end A165367

/-! ## A165367.P2942100895177009339

`a(n-2)+gcd(6, 3*(n+1))` with `a(0)=1, a(1)=5`
-/

namespace A165367.P2942100895177009339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + Nat.gcd 6 (3 * (n + 1))

end

end A165367.P2942100895177009339

namespace A165367

/-- `a(n-2)+gcd(6, 3*(n+1))` -/
def P2942100895177009339.Spec : Prop :=
  ∀ n, (P2942100895177009339.a n : ℤ) = A165367 n

end A165367

/-! ## A165367.P17905060365319910774

`a(n-2)+dr(3*a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A165367.P17905060365319910774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + SequenceMachineLib.digitalRoot (3 * a (n - 2) : ℤ)

end

end A165367.P17905060365319910774

namespace A165367

/-- `a(n-2)+dr(3*a(n-2))` -/
def P17905060365319910774.Spec : Prop :=
  ∀ n, (P17905060365319910774.a n : ℤ) = A165367 n

end A165367

/-! ## A165367.P9549603758824155376

`A145051(n+1)+lcm(2, n)`
-/

namespace A165367.P9549603758824155376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1) + (Nat.lcm 2 n : ℤ)

end

end A165367.P9549603758824155376

namespace A165367

/-- `A145051(n+1)+lcm(2, n)` -/
def P9549603758824155376.Spec : Prop :=
  ∀ n, P9549603758824155376.a n = A165367 n

end A165367

/-! ## A165367.P11616205006136469292

`A064680(n)+or(1, n+1)`
-/

namespace A165367.P11616205006136469292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n + (Nat.lor 1 (n + 1) : ℤ)

end

end A165367.P11616205006136469292

namespace A165367

/-- `A064680(n)+or(1, n+1)` -/
def P11616205006136469292.Spec : Prop :=
  ∀ n, P11616205006136469292.a n = A165367 n

end A165367

/-! ## A165367.P7849148974290504131

`A014682(n)+∑[∑[2*n]%(2*n+1)-(n-1)]`
-/

namespace A165367.P7849148974290504131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % (2 * n + 1) : ℕ) : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165367.P7849148974290504131

namespace A165367

/-- `A014682(n)+∑[∑[2*n]%(2*n+1)-(n-1)]` -/
def P7849148974290504131.Spec : Prop :=
  ∀ n, P7849148974290504131.a n = A165367 n

end A165367

/-! ## A165367.P5942476387765583922

`A339913(A016933(n))`
-/

namespace A165367.P5942476387765583922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (A016933 n).toNat

end

end A165367.P5942476387765583922

namespace A165367

/-- `A339913(A016933(n))` -/
def P5942476387765583922.Spec : Prop :=
  ∀ n, P5942476387765583922.a n = A165367 n

end A165367

/-! ## A165367.P13522689034116961395

`Δ[A000217(A032766(n))]`
-/

namespace A165367.P13522689034116961395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A032766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165367.P13522689034116961395

namespace A165367

/-- `Δ[A000217(A032766(n))]` -/
def P13522689034116961395.Spec : Prop :=
  ∀ n, P13522689034116961395.a n = A165367 n

end A165367

/-! ## A165367.P5761570621831545727

`A339913(A008458(n)+2)`
-/

namespace A165367.P5761570621831545727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (A008458 n + 2).toNat

end

end A165367.P5761570621831545727

namespace A165367

/-- `A339913(A008458(n)+2)` -/
def P5761570621831545727.Spec : Prop :=
  ∀ n, P5761570621831545727.a n = A165367 n

end A165367

/-! ## A165367.P3309518945688933722

`A066104(n)+A029579(n)`
-/

namespace A165367.P3309518945688933722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n + A029579 n

end

end A165367.P3309518945688933722

namespace A165367

/-- `A066104(n)+A029579(n)` -/
def P3309518945688933722.Spec : Prop :=
  ∀ n, P3309518945688933722.a n = A165367 n

end A165367

/-!
# A165372: Number of slanted n X 3 (i=1..n) X (j=i..3+i-1) 1..4 arrays with all 1s connected, all 2s connected, all 3s connected, all 4s connected, 1 in the upper left corner, 2 in the upper right corner, 3 in the lower left corner, and 4 in the lower right corner.

The programs for A165372, the canonical program `A165372.P118965263518243188` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165372 has offset 2).

The definition of A165372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165372.P118965263518243188

`a(n-1)+64` with `a(0)=9, a(1)=40`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165372

/-- `a(n-1)+64` -/
def P118965263518243188.Spec : Prop :=
  ∀ n, (P118965263518243188.a n : ℤ) = A165372 (n + 2)

theorem P118965263518243188.correct : P118965263518243188.Spec := by
  intro n
  simp only [A165372, Nat.add_sub_cancel]

end A165372

/-!
# A165378: Number of slanted n X 4 (i=1..n) X (j=i..4+i-1) 1..4 arrays with all 1s connected, all 2s connected, all 3s connected, all 4s connected, 1 in the upper left corner, 2 in the upper right corner, 3 in the lower left corner, 4 in the lower right corner, and with no element having more than 2 neighbors with the same value.

The programs for A165378, the canonical program `A165378.P12970165289191157138` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165378 has offset 2).

The definition of A165378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165378.P10292957762732496984

`ogf((33-5x-25x^2+18x^3-3x^4)/(1-3x+3x^2-x^3))`
-/

namespace A165378.P10292957762732496984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [33, -5, -25, 18, -3] [1, -3, 3, -1] n

end

end A165378.P10292957762732496984

namespace A165378

/-- `ogf((33-5x-25x^2+18x^3-3x^4)/(1-3x+3x^2-x^3))` -/
def P10292957762732496984.Spec : Prop :=
  ∀ n, P10292957762732496984.a n = A165378 (n + 2)

end A165378

/-! ## A165378.P12970165289191157138

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=33, a(1)=94, a(2)=158, a(3)=243, a(4)=346`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165378

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P12970165289191157138.Spec : Prop :=
  ∀ n, P12970165289191157138.a n = A165378 (n + 2)

theorem P12970165289191157138.correct : P12970165289191157138.Spec := by
  intro n
  simp only [A165378, Nat.add_sub_cancel]

end A165378

/-!
# A165379: Number of slanted nX6 (i=1..n)X(j=i..6+i-1) 1..4 arrays with all 1s connected, all 2s connected, all 3s connected, all 4s connected, 1 in the upper left corner, 2 in the upper right corner, 3 in the lower left corner, 4 in the lower right corner, and with no element having more than 2 neighbors with the same value.

The programs for A165379, the canonical program `A165379.P11777635069872483140` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165379 has offset 2).

The definition of A165379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165379.P11777635069872483140

`2*a(n-1)-a(n-2)` with `a(0)=101, a(1)=233, a(2)=265, a(3)=335, a(4)=409`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165379

/-- `2*a(n-1)-a(n-2)` -/
def P11777635069872483140.Spec : Prop :=
  ∀ n, P11777635069872483140.a n = A165379 (n + 2)

theorem P11777635069872483140.correct : P11777635069872483140.Spec := by
  intro n
  simp only [A165379, Nat.add_sub_cancel]

end A165379

/-!
# A165381: Number of slanted n X 4 (i=1..n) X (j=i..4+i-1) 1..4 arrays with all 1s connected, all 2s connected, all 3s connected, all 4s connected, 1 in the upper left corner, 2 in the upper right corner, 3 in the lower left corner, 4 in the lower right corner, and with no element having more than 3 neighbors with the same value.

The programs for A165381, the canonical program `A165381.P3982678779851927689` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165381 has offset 2).

The definition of A165381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165381.P3982678779851927689

`ogf((37+174x+268x^2+249x^3+58x^4+13x^5+x^6)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165381

/-- `ogf((37+174x+268x^2+249x^3+58x^4+13x^5+x^6)/(1-3x+3x^2-x^3))` -/
def P3982678779851927689.Spec : Prop :=
  ∀ n, P3982678779851927689.a n = A165381 (n + 2)

theorem P3982678779851927689.correct : P3982678779851927689.Spec := by
  intro n
  simp only [A165381, Nat.add_sub_cancel]

end A165381

/-!
# A165392: Number of slanted 2 X n (i=1..2) X (j=i..n+i-1) 1..4 arrays with all 1s connected, all 2s connected, all 3s connected, all 4s connected, 1 in the upper left corner, 2 in the upper right corner, 3 in the lower left corner, 4 in the lower right corner, and with no element having more than 2 neighbors with the same value.

The programs for A165392, the canonical program `A165392.P13428399819551904219` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165392 has offset 2).

The definition of A165392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165392.P9299484324394049870

`ogf((1+6x+9x^2-8x^3-4x^4+5x^5-x^6)/(1-3x+3x^2-x^3))`
-/

namespace A165392.P9299484324394049870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 9, -8, -4, 5, -1] [1, -3, 3, -1] n

end

end A165392.P9299484324394049870

namespace A165392

/-- `ogf((1+6x+9x^2-8x^3-4x^4+5x^5-x^6)/(1-3x+3x^2-x^3))` -/
def P9299484324394049870.Spec : Prop :=
  ∀ n, P9299484324394049870.a n = A165392 (n + 2)

end A165392

/-! ## A165392.P13428399819551904219

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=9, a(2)=33, a(3)=65, a(4)=101, a(5)=146, a(6)=199`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165392

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P13428399819551904219.Spec : Prop :=
  ∀ n, P13428399819551904219.a n = A165392 (n + 2)

theorem P13428399819551904219.correct : P13428399819551904219.Spec := by
  intro n
  simp only [A165392, Nat.add_sub_cancel]

end A165392

/-!
# A165394: Number of slanted 2 X n (i=1..2) X (j=i..n+i-1) 1..4 arrays with all 1s connected, all 2s connected, all 3s connected, all 4s connected, 1 in the upper left corner, 2 in the upper right corner, 3 in the lower left corner, 4 in the lower right corner, and with no element having more than 3 neighbors with the same value.

The programs for A165394, the canonical program `A165394.P12364420393288212500` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165394 has offset 2).

The definition of A165394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165394.P12364420393288212500

`∑[4*(∑[n²]+n)]+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165394

/-- `∑[4*(∑[n²]+n)]+1` -/
def P12364420393288212500.Spec : Prop :=
  ∀ n, (P12364420393288212500.a n : ℤ) = A165394 (n + 2)

theorem P12364420393288212500.correct : P12364420393288212500.Spec := by
  intro n
  simp only [A165394, Nat.add_sub_cancel]

end A165394

/-! ## A165394.P8193079413398009741

`ogf((1+4x+2x^2+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A165394.P8193079413398009741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 2, 0, 1] [1, -5, 10, -10, 5, -1] n

end

end A165394.P8193079413398009741

namespace A165394

/-- `ogf((1+4x+2x^2+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P8193079413398009741.Spec : Prop :=
  ∀ n, P8193079413398009741.a n = A165394 (n + 2)

end A165394

/-! ## A165394.P7806267008578246758

`xor(1, (C(n+2, 3)+n)*2*(n+1))`
-/

namespace A165394.P7806267008578246758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((Nat.choose (n + 2) 3 + n) * (2 * (n + 1)))

end

end A165394.P7806267008578246758

namespace A165394

/-- `xor(1, (C(n+2, 3)+n)*2*(n+1))` -/
def P7806267008578246758.Spec : Prop :=
  ∀ n, (P7806267008578246758.a n : ℤ) = A165394 (n + 2)

end A165394

/-! ## A165394.P8041002232745778828

`or(1, (∑[∑[2*n]]+2*n)*(n+1))`
-/

namespace A165394.P8041002232745778828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((∑ j ∈ Finset.range (n + 1), f1 j + 2 * n) * (n + 1))

end

end A165394.P8041002232745778828

namespace A165394

/-- `or(1, (∑[∑[2*n]]+2*n)*(n+1))` -/
def P8041002232745778828.Spec : Prop :=
  ∀ n, (P8041002232745778828.a n : ℤ) = A165394 (n + 2)

end A165394

/-! ## A165394.P9005994145133979052

`xor(1, (∑[∑[2*n]]+2*n)*(n+1))`
-/

namespace A165394.P9005994145133979052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((∑ j ∈ Finset.range (n + 1), f1 j + 2 * n) * (n + 1))

end

end A165394.P9005994145133979052

namespace A165394

/-- `xor(1, (∑[∑[2*n]]+2*n)*(n+1))` -/
def P9005994145133979052.Spec : Prop :=
  ∀ n, (P9005994145133979052.a n : ℤ) = A165394 (n + 2)

end A165394

/-! ## A165394.P12261797091080617567

`∑[A001845(n)+comp[2*(n+1)]]`
-/

namespace A165394.P12261797091080617567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165394.P12261797091080617567

namespace A165394

/-- `∑[A001845(n)+comp[2*(n+1)]]` -/
def P12261797091080617567.Spec : Prop :=
  ∀ n, P12261797091080617567.a n = A165394 (n + 2)

end A165394

/-! ## A165394.P1214643611747011794

`abs(A178073(n+1)-A006527(n))`
-/

namespace A165394.P1214643611747011794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178073 (n + 1) - A006527 n|

end

end A165394.P1214643611747011794

namespace A165394

/-- `abs(A178073(n+1)-A006527(n))` -/
def P1214643611747011794.Spec : Prop :=
  ∀ n, P1214643611747011794.a n = A165394 (n + 2)

end A165394

/-! ## A165394.P9438373348067154140

`ceil(((A000217(n+1)+3)*A046092(n)+1)/3)`
-/

namespace A165394.P9438373348067154140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A000217 (n + 1) + 3) * A046092 n + 1 : ℚ) / 3⌉

end

end A165394.P9438373348067154140

namespace A165394

/-- `ceil(((A000217(n+1)+3)*A046092(n)+1)/3)` -/
def P9438373348067154140.Spec : Prop :=
  ∀ n, P9438373348067154140.a n = A165394 (n + 2)

end A165394

/-! ## A165394.P10485715109563398579

`∑[A004277(2*n)+∑[A000290(2*n)]]`
-/

namespace A165394.P10485715109563398579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165394.P10485715109563398579

namespace A165394

/-- `∑[A004277(2*n)+∑[A000290(2*n)]]` -/
def P10485715109563398579.Spec : Prop :=
  ∀ n, P10485715109563398579.a n = A165394 (n + 2)

end A165394

/-! ## A165394.P1747001586624185585

`∑[A003600(2*n)+2*n]`
-/

namespace A165394.P1747001586624185585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 (2 * n) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165394.P1747001586624185585

namespace A165394

/-- `∑[A003600(2*n)+2*n]` -/
def P1747001586624185585.Spec : Prop :=
  ∀ n, P1747001586624185585.a n = A165394 (n + 2)

end A165394

/-! ## A165394.P14944124016348574809

`∑[A004273(n)+A004006(2*n+1)]`
-/

namespace A165394.P14944124016348574809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + A004006 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165394.P14944124016348574809

namespace A165394

/-- `∑[A004273(n)+A004006(2*n+1)]` -/
def P14944124016348574809.Spec : Prop :=
  ∀ n, P14944124016348574809.a n = A165394 (n + 2)

end A165394

/-! ## A165394.P16168028916698523168

`∑[A000292(2*n+1)-∑[A004274(2*n)]]`
-/

namespace A165394.P16168028916698523168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165394.P16168028916698523168

namespace A165394

/-- `∑[A000292(2*n+1)-∑[A004274(2*n)]]` -/
def P16168028916698523168.Spec : Prop :=
  ∀ n, P16168028916698523168.a n = A165394 (n + 2)

end A165394

