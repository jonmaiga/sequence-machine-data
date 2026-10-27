import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A280301: 

The programs for A280301, there is no canonical definition to state claims against.
-/

/-! ## A280301.P11307689732358128656

`p?[comp[n²]]^72`
-/

namespace A280301.P11307689732358128656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 72

end

end A280301.P11307689732358128656

/-! ## A280301.P4320550138180354074

`p?[round(8*n/7)]²^36`
-/

namespace A280301.P4320550138180354074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) ^ 36

end

end A280301.P4320550138180354074

/-! ## A280301.P2494829996010464750

`comp[n^C(2, ∑{e}[n, #])!]^72`
-/

namespace A280301.P2494829996010464750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 72

end

end A280301.P2494829996010464750

/-! ## A280301.P13463841927569961849

`A000040(n+1)^72`
-/

namespace A280301.P13463841927569961849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 72

end

end A280301.P13463841927569961849

/-! ## A280301.P9714139995738394103

`A039649(A093893(n+1))^72`
-/

namespace A280301.P9714139995738394103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A093893 (n + 1)).toNat ^ 72

end

end A280301.P9714139995738394103

/-!
# A280303: Number of binary necklaces of length n with no subsequence 00000.

The programs for A280303, there is no canonical definition to state claims against.
-/

/-! ## A280303.P17767025815095439607

`A322057(∑[n+5]+6)`
-/

namespace A280303.P17767025815095439607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322057 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A280303.P17767025815095439607

/-! ## A280303.P8177929187945439470

`A317492(A210736(n)+n)`
-/

namespace A280303.P8177929187945439470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (A210736 n + (n : ℤ)).toNat

end

end A280303.P8177929187945439470

/-! ## A280303.P11736624874576523452

`A316495(A227309(n)+n)`
-/

namespace A280303.P11736624874576523452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (A227309 n + (n : ℤ)).toNat

end

end A280303.P11736624874576523452

/-! ## A280303.P2634345695624561037

`A306202(A274160(n)+n)`
-/

namespace A280303.P2634345695624561037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (A274160 n + (n : ℤ)).toNat

end

end A280303.P2634345695624561037

/-! ## A280303.P6287551993471269155

`∑[A285573(∏[A002033(n)])]`
-/

namespace A280303.P6287551993471269155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280303.P6287551993471269155

/-!
# A280304: a(n) = 3*n*(n^2 + 3*n + 4).

The programs for A280304, the canonical program `A280304.P16844979010241976580` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280304 has offset 0).

The definition of A280304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n²+3*n+4)` (program `A280304.P16844979010241976580`, by `A280304.P16844979010241976580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A280304.P16844979010241976580

`3*n*(n²+3*n+4)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280304

/-- `3*n*(n²+3*n+4)` -/
def P16844979010241976580.Spec : Prop :=
  ∀ n, (P16844979010241976580.a n : ℤ) = A280304 n

theorem P16844979010241976580.correct : P16844979010241976580.Spec := by
  intro n
  simp only [A280304]

end A280304

/-! ## A280304.P14892029224985312679

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=24, a(2)=84, a(3)=198`
-/

namespace A280304.P14892029224985312679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 24, 84, 198] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A280304.P14892029224985312679

namespace A280304

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14892029224985312679.Spec : Prop :=
  ∀ n, P14892029224985312679.a n = A280304 n

theorem P14892029224985312679.correct : P14892029224985312679.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A280304, Nat.add_sub_cancel, A280304.P14892029224985312679.a, A280304.P16844979010241976580.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A280304, Nat.add_sub_cancel, A280304.P14892029224985312679.a, A280304.P16844979010241976580.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A280304

/-! ## A280304.P629346880043653631

`∑[a(n-1)+18]+a(n-1)+6` with `a(0)=0`
-/

namespace A280304.P629346880043653631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (a (n - 1) + 6)

end

end A280304.P629346880043653631

namespace A280304

/-- `∑[a(n-1)+18]+a(n-1)+6` -/
def P629346880043653631.Spec : Prop :=
  ∀ n, (P629346880043653631.a n : ℤ) = A280304 n

end A280304

/-! ## A280304.P16745911951562182844

`A207165(n+1)/3-3`
-/

namespace A280304.P16745911951562182844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207165 (n + 1) : ℚ) / 3 - 3

end

end A280304.P16745911951562182844

namespace A280304

/-- `A207165(n+1)/3-3` -/
def P16745911951562182844.Spec : Prop :=
  ∀ n, P16745911951562182844.a n = (A280304 n : ℚ)

end A280304

/-! ## A280304.P5616108425010776277

`A027602(n)-3*(n+3)`
-/

namespace A280304.P5616108425010776277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027602 n - (3 * (n + 3) : ℤ)

end

end A280304.P5616108425010776277

namespace A280304

/-- `A027602(n)-3*(n+3)` -/
def P5616108425010776277.Spec : Prop :=
  ∀ n, P5616108425010776277.a n = A280304 n

theorem P5616108425010776277.correct : P5616108425010776277.Spec := by
  intro n
  simp only [A280304, Nat.add_sub_cancel, A280304.P5616108425010776277.a, A280304.P16844979010241976580.a, A027602, A027602.P2679377937091624113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280304

/-! ## A280304.P6244328198836978217

`A117642(n+1)+3*(n-1)`
-/

namespace A280304.P6244328198836978217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 (n + 1) + 3 * ((n : ℤ) - 1)

end

end A280304.P6244328198836978217

namespace A280304

/-- `A117642(n+1)+3*(n-1)` -/
def P6244328198836978217.Spec : Prop :=
  ∀ n, P6244328198836978217.a n = A280304 n

theorem P6244328198836978217.correct : P6244328198836978217.Spec := by
  intro n
  simp only [A280304, Nat.add_sub_cancel, A280304.P6244328198836978217.a, A280304.P16844979010241976580.a, A117642, A117642.P2206942344561243653.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280304

/-! ## A280304.P3208760633981334753

`3*(A000578(n+1)+n)-3`
-/

namespace A280304.P3208760633981334753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000578 (n + 1) + (n : ℤ)) - 3

end

end A280304.P3208760633981334753

namespace A280304

/-- `3*(A000578(n+1)+n)-3` -/
def P3208760633981334753.Spec : Prop :=
  ∀ n, P3208760633981334753.a n = A280304 n

theorem P3208760633981334753.correct : P3208760633981334753.Spec := by
  intro n
  simp only [A280304, Nat.add_sub_cancel, A280304.P3208760633981334753.a, A280304.P16844979010241976580.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280304

/-! ## A280304.P12339642793127912969

`6*n+6*n*A000217(n+1)`
-/

namespace A280304.P12339642793127912969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + (6 * n : ℤ) * A000217 (n + 1)

end

end A280304.P12339642793127912969

namespace A280304

/-- `6*n+6*n*A000217(n+1)` -/
def P12339642793127912969.Spec : Prop :=
  ∀ n, P12339642793127912969.a n = A280304 n

theorem P12339642793127912969.correct : P12339642793127912969.Spec := by
  intro n
  simp only [A280304, Nat.add_sub_cancel, A280304.P12339642793127912969.a, A280304.P16844979010241976580.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A280304

/-! ## A280304.P12818521046967339170

`A195039(n)+A005945(n)`
-/

namespace A280304.P12818521046967339170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195039 n + A005945 n

end

end A280304.P12818521046967339170

namespace A280304

/-- `A195039(n)+A005945(n)` -/
def P12818521046967339170.Spec : Prop :=
  ∀ n, P12818521046967339170.a n = A280304 n

end A280304

/-! ## A280304.P11958775481548924663

`A163758(n)+A119536(n)`
-/

namespace A280304.P11958775481548924663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163758 n + A119536 n

end

end A280304.P11958775481548924663

namespace A280304

/-- `A163758(n)+A119536(n)` -/
def P11958775481548924663.Spec : Prop :=
  ∀ n, P11958775481548924663.a n = A280304 n

theorem P11958775481548924663.correct : P11958775481548924663.Spec := by
  intro n
  simp only [A280304, Nat.add_sub_cancel, A280304.P11958775481548924663.a, A280304.P16844979010241976580.a, A119536, A119536.P17684524526440716851.a, A163758, A163758.P16330388119460632135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280304

/-! ## A280304.P2687597955743543324

`A163833(n)+A140675(n)`
-/

namespace A280304.P2687597955743543324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163833 n + A140675 n

end

end A280304.P2687597955743543324

namespace A280304

/-- `A163833(n)+A140675(n)` -/
def P2687597955743543324.Spec : Prop :=
  ∀ n, P2687597955743543324.a n = A280304 n

end A280304

/-! ## A280304.P462037824682792618

`A277978(n)+A059986(n)`
-/

namespace A280304.P462037824682792618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 n + A059986 n

end

end A280304.P462037824682792618

namespace A280304

/-- `A277978(n)+A059986(n)` -/
def P462037824682792618.Spec : Prop :=
  ∀ n, P462037824682792618.a n = A280304 n

theorem P462037824682792618.correct : P462037824682792618.Spec := by
  intro n
  simp only [A280304, Nat.add_sub_cancel, A280304.P462037824682792618.a, A280304.P16844979010241976580.a, A059986, A059986.P854937850389378493.a, A277978, A277978.P6474816177575129903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280304

/-! ## A280304.P15929460263087550983

`A300758(n)-A126935(n)`
-/

namespace A280304.P15929460263087550983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n - A126935 n

end

end A280304.P15929460263087550983

namespace A280304

/-- `A300758(n)-A126935(n)` -/
def P15929460263087550983.Spec : Prop :=
  ∀ n, P15929460263087550983.a n = A280304 n

theorem P15929460263087550983.correct : P15929460263087550983.Spec := by
  intro n
  simp only [A280304, Nat.add_sub_cancel, A280304.P15929460263087550983.a, A280304.P16844979010241976580.a, A126935, A126935.P13333738668432150418.a, A300758, A300758.P12177003143173864216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280304

/-! ## A280304.P16092028371835103723

`A007531(n)+4*A267370(n)`
-/

namespace A280304.P16092028371835103723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + 4 * A267370 n

end

end A280304.P16092028371835103723

namespace A280304

/-- `A007531(n)+4*A267370(n)` -/
def P16092028371835103723.Spec : Prop :=
  ∀ n, P16092028371835103723.a n = A280304 n

end A280304

/-! ## A280304.P17211677247892759937

`A008588(n)+A000217(n+1)*A008588(n)`
-/

namespace A280304.P17211677247892759937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n + A000217 (n + 1) * A008588 n

end

end A280304.P17211677247892759937

namespace A280304

/-- `A008588(n)+A000217(n+1)*A008588(n)` -/
def P17211677247892759937.Spec : Prop :=
  ∀ n, P17211677247892759937.a n = A280304 n

theorem P17211677247892759937.correct : P17211677247892759937.Spec := by
  intro n
  simp only [A280304, Nat.add_sub_cancel, A280304.P17211677247892759937.a, A280304.P16844979010241976580.a, A000217, A000217.P10269402890581615239.a, A008588, A008588.P12386450284809463491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A280304

/-! ## A280304.P13335974202534705962

`A119536(n+1)-6`
-/

namespace A280304.P13335974202534705962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119536 (n + 1) - 6

end

end A280304.P13335974202534705962

namespace A280304

/-- `A119536(n+1)-6` -/
def P13335974202534705962.Spec : Prop :=
  ∀ n, P13335974202534705962.a n = A280304 n

theorem P13335974202534705962.correct : P13335974202534705962.Spec := by
  intro n
  simp only [A280304, Nat.add_sub_cancel, A280304.P13335974202534705962.a, A280304.P16844979010241976580.a, A119536, A119536.P17684524526440716851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280304

/-! ## A280304.P17677633460110785888

`5*n+n*A003215(n+1)`
-/

namespace A280304.P17677633460110785888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) + (n : ℤ) * A003215 (n + 1)

end

end A280304.P17677633460110785888

namespace A280304

/-- `5*n+n*A003215(n+1)` -/
def P17677633460110785888.Spec : Prop :=
  ∀ n, P17677633460110785888.a n = A280304 n

theorem P17677633460110785888.correct : P17677633460110785888.Spec := by
  intro n
  simp only [A280304, Nat.add_sub_cancel, A280304.P17677633460110785888.a, A280304.P16844979010241976580.a, A003215, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280304

/-! ## A280304.P6250788584260715402

`6*n+n*A028896(n+1)`
-/

namespace A280304.P6250788584260715402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + (n : ℤ) * A028896 (n + 1)

end

end A280304.P6250788584260715402

namespace A280304

/-- `6*n+n*A028896(n+1)` -/
def P6250788584260715402.Spec : Prop :=
  ∀ n, P6250788584260715402.a n = A280304 n

theorem P6250788584260715402.correct : P6250788584260715402.Spec := by
  intro n
  simp only [A280304, Nat.add_sub_cancel, A280304.P6250788584260715402.a, A280304.P16844979010241976580.a, A028896, A028896.P3776891904721443318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280304

/-! ## A280304.P7938273804767728550

`A000124(n+1)*A016921(n)-A000124(n+1)`
-/

namespace A280304.P7938273804767728550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) * A016921 n - A000124 (n + 1)

end

end A280304.P7938273804767728550

namespace A280304

/-- `A000124(n+1)*A016921(n)-A000124(n+1)` -/
def P7938273804767728550.Spec : Prop :=
  ∀ n, P7938273804767728550.a n = A280304 n

end A280304

/-!
# A280305: a(n) = (n^(2n) - (n-1)^(2n))/(2n-1).

The programs for A280305, the canonical program `A280305.P1454064115618356439` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280305 has offset 1).

The definition of A280305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280305.P1454064115618356439

`((n+1)^(2*(n+1))-n^(2*(n+1)))/(2*(n+1)-1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280305

/-- `((n+1)^(2*(n+1))-n^(2*(n+1)))/(2*(n+1)-1)` -/
def P1454064115618356439.Spec : Prop :=
  ∀ n, P1454064115618356439.a n = (A280305 (n + 1) : ℚ)

end A280305

/-! ## A280305.P10452698763830356527

`A072024(A081270(n))`
-/

namespace A280305.P10452698763830356527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (A081270 n).toNat

end

end A280305.P10452698763830356527

namespace A280305

/-- `A072024(A081270(n))` -/
def P10452698763830356527.Spec : Prop :=
  ∀ n, P10452698763830356527.a n = A280305 (n + 1)

end A280305

/-! ## A280305.P5377876479897269599

`A081297(A062708(n+1))`
-/

namespace A280305.P5377876479897269599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A062708 (n + 1)).toNat

end

end A280305.P5377876479897269599

namespace A280305

/-- `A081297(A062708(n+1))` -/
def P5377876479897269599.Spec : Prop :=
  ∀ n, P5377876479897269599.a n = A280305 (n + 1)

end A280305

/-! ## A280305.P1428569597743289120

`A081297(A081268(n)+1)`
-/

namespace A280305.P1428569597743289120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A081268 n + 1).toNat

end

end A280305.P1428569597743289120

namespace A280305

/-- `A081297(A081268(n)+1)` -/
def P1428569597743289120.Spec : Prop :=
  ∀ n, P1428569597743289120.a n = A280305 (n + 1)

end A280305

/-! ## A280305.P2199560997860910190

`A072024(eq[n, A065562(n+1)])`
-/

namespace A280305.P2199560997860910190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280305.P2199560997860910190

namespace A280305

/-- `A072024(eq[n, A065562(n+1)])` -/
def P2199560997860910190.Spec : Prop :=
  ∀ n, P2199560997860910190.a n = A280305 (n + 1)

end A280305

/-!
# A280308: Tribonacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3) with a(0)=3, a(1)=4, a(2)=5.

The programs for A280308, the canonical program `A280308.P6472469979355002779` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280308 has offset 0).

The definition of A280308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A280308.P6472469979355002779`, by `A280308.P6472469979355002779.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A280308.P6472469979355002779

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=3, a(1)=4, a(2)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280308

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P6472469979355002779.Spec : Prop :=
  ∀ n, (P6472469979355002779.a n : ℤ) = A280308 n

theorem P6472469979355002779.correct : P6472469979355002779.Spec := by
  intro n
  simp only [A280308]

end A280308

/-! ## A280308.P12985014921369757282

`ogf((-3-x+2x^2)/(-1+x+x^2+x^3))`
-/

namespace A280308.P12985014921369757282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -2] [1, -1, -1, -1] n

end

end A280308.P12985014921369757282

namespace A280308

/-- `ogf((-3-x+2x^2)/(-1+x+x^2+x^3))` -/
def P12985014921369757282.Spec : Prop :=
  ∀ n, P12985014921369757282.a n = A280308 n

end A280308

/-! ## A280308.P11664157004733793729

`2*A121986(n+1)+n+1`
-/

namespace A280308.P11664157004733793729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121986 (n + 1) + (n + 1 : ℤ)

end

end A280308.P11664157004733793729

namespace A280308

/-- `2*A121986(n+1)+n+1` -/
def P11664157004733793729.Spec : Prop :=
  ∀ n, P11664157004733793729.a n = A280308 n

end A280308

/-! ## A280308.P9852991902110353952

`A183344(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A280308.P9852991902110353952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A183344 (n + 1) - a (n - 1)

end

end A280308.P9852991902110353952

namespace A280308

/-- `A183344(n+1)-a(n-1)` -/
def P9852991902110353952.Spec : Prop :=
  ∀ n, P9852991902110353952.a n = A280308 n

end A280308

/-! ## A280308.P7988178950708635446

`A214899(n)+A214825(n)`
-/

namespace A280308.P7988178950708635446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n + A214825 n

end

end A280308.P7988178950708635446

namespace A280308

/-- `A214899(n)+A214825(n)` -/
def P7988178950708635446.Spec : Prop :=
  ∀ n, P7988178950708635446.a n = A280308 n

end A280308

/-! ## A280308.P9635769173411557546

`A073728(n)-A354784(n)`
-/

namespace A280308.P9635769173411557546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073728 n - A354784 n

end

end A280308.P9635769173411557546

namespace A280308

/-- `A073728(n)-A354784(n)` -/
def P9635769173411557546.Spec : Prop :=
  ∀ n, P9635769173411557546.a n = A280308 n

end A280308

/-! ## A280308.P14583741286190981220

`A145027(n+1)+A000213(n)`
-/

namespace A280308.P14583741286190981220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145027 (n + 1) + A000213 n

end

end A280308.P14583741286190981220

namespace A280308

/-- `A145027(n+1)+A000213(n)` -/
def P14583741286190981220.Spec : Prop :=
  ∀ n, P14583741286190981220.a n = A280308 n

end A280308

/-! ## A280308.P6471048661415030632

`A141036(n)+A007486(n+1)`
-/

namespace A280308.P6471048661415030632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n + A007486 (n + 1)

end

end A280308.P6471048661415030632

namespace A280308

/-- `A141036(n)+A007486(n+1)` -/
def P6471048661415030632.Spec : Prop :=
  ∀ n, P6471048661415030632.a n = A280308 n

end A280308

/-! ## A280308.P9784041743729511184

`A214727(n)+A100683(n+1)`
-/

namespace A280308.P9784041743729511184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n + A100683 (n + 1)

end

end A280308.P9784041743729511184

namespace A280308

/-- `A214727(n)+A100683(n+1)` -/
def P9784041743729511184.Spec : Prop :=
  ∀ n, P9784041743729511184.a n = A280308 n

end A280308

/-! ## A280308.P4637069529640149079

`A276658(n)+A214727(n+1)`
-/

namespace A280308.P4637069529640149079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 n + A214727 (n + 1)

end

end A280308.P4637069529640149079

namespace A280308

/-- `A276658(n)+A214727(n+1)` -/
def P4637069529640149079.Spec : Prop :=
  ∀ n, P4637069529640149079.a n = A280308 n

end A280308

/-! ## A280308.P4379764491800001507

`A081172(n+3)+A081172(n)`
-/

namespace A280308.P4379764491800001507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 3) + A081172 n

end

end A280308.P4379764491800001507

namespace A280308

/-- `A081172(n+3)+A081172(n)` -/
def P4379764491800001507.Spec : Prop :=
  ∀ n, P4379764491800001507.a n = A280308 n

end A280308

/-! ## A280308.P18367715076951658718

`A047081(n)+2*A000213(n)`
-/

namespace A280308.P18367715076951658718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047081 n + 2 * A000213 n

end

end A280308.P18367715076951658718

namespace A280308

/-- `A047081(n)+2*A000213(n)` -/
def P18367715076951658718.Spec : Prop :=
  ∀ n, P18367715076951658718.a n = A280308 n

end A280308

/-! ## A280308.P17567140376467006993

`A274761(n)+2*A001590(n)`
-/

namespace A280308.P17567140376467006993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274761 n + 2 * A001590 n

end

end A280308.P17567140376467006993

namespace A280308

/-- `A274761(n)+2*A001590(n)` -/
def P17567140376467006993.Spec : Prop :=
  ∀ n, P17567140376467006993.a n = A280308 n

end A280308

/-! ## A280308.P11007335581541654591

`A073728(n)-2*A000073(n)`
-/

namespace A280308.P11007335581541654591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073728 n - 2 * A000073 n

end

end A280308.P11007335581541654591

namespace A280308

/-- `A073728(n)-2*A000073(n)` -/
def P11007335581541654591.Spec : Prop :=
  ∀ n, P11007335581541654591.a n = A280308 n

end A280308

/-! ## A280308.P17371597384424523727

`abs(A078042(n))+2*A000213(n)`
-/

namespace A280308.P17371597384424523727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078042 n| + 2 * A000213 n

end

end A280308.P17371597384424523727

namespace A280308

/-- `abs(A078042(n))+2*A000213(n)` -/
def P17371597384424523727.Spec : Prop :=
  ∀ n, P17371597384424523727.a n = A280308 n

end A280308

/-! ## A280308.P13191795628824574835

`A001644(n)+Δ[A141036(n+1)]`
-/

namespace A280308.P13191795628824574835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n + (f1 (n + 1) - f1 n)

end

end A280308.P13191795628824574835

namespace A280308

/-- `A001644(n)+Δ[A141036(n+1)]` -/
def P13191795628824574835.Spec : Prop :=
  ∀ n, P13191795628824574835.a n = A280308 n

end A280308

/-! ## A280308.P14296614857582988256

`A214899(n)+Δ[A214899(n+1)]`
-/

namespace A280308.P14296614857582988256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n + (f1 (n + 1) - f1 n)

end

end A280308.P14296614857582988256

namespace A280308

/-- `A214899(n)+Δ[A214899(n+1)]` -/
def P14296614857582988256.Spec : Prop :=
  ∀ n, P14296614857582988256.a n = A280308 n

end A280308

/-! ## A280308.P13015750960837136044

`A001590(n+1)+2*A214727(n)`
-/

namespace A280308.P13015750960837136044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) + 2 * A214727 n

end

end A280308.P13015750960837136044

namespace A280308

/-- `A001590(n+1)+2*A214727(n)` -/
def P13015750960837136044.Spec : Prop :=
  ∀ n, P13015750960837136044.a n = A280308 n

end A280308

/-! ## A280308.P4031441035421307036

`2*A100683(n+1)-A001590(n+1)`
-/

namespace A280308.P4031441035421307036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100683 (n + 1) - A001590 (n + 1)

end

end A280308.P4031441035421307036

namespace A280308

/-- `2*A100683(n+1)-A001590(n+1)` -/
def P4031441035421307036.Spec : Prop :=
  ∀ n, P4031441035421307036.a n = A280308 n

end A280308

/-! ## A280308.P5494899897818067997

`A000073(n)+A214825(n)+A141036(n)`
-/

namespace A280308.P5494899897818067997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (A214825 n + A141036 n)

end

end A280308.P5494899897818067997

namespace A280308

/-- `A000073(n)+A214825(n)+A141036(n)` -/
def P5494899897818067997.Spec : Prop :=
  ∀ n, P5494899897818067997.a n = A280308 n

end A280308

/-!
# A280309: Number of n X 1 0..2 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280309, there is no canonical definition to state claims against.
-/

/-! ## A280309.P17608253756181170485

`A281540(∑[n]+1)`
-/

namespace A280309.P17608253756181170485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A280309.P17608253756181170485

/-! ## A280309.P11028217810672121256

`A281540(A000124(n))+char[22]`
-/

namespace A280309.P11028217810672121256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280309.P11028217810672121256

/-! ## A280309.P1025855929965589464

`A369054(n)+A281540(A000124(n))`
-/

namespace A280309.P1025855929965589464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n + A281540 (A000124 n).toNat

end

end A280309.P1025855929965589464

/-! ## A280309.P14909641179456861877

`A057427(n)*A281540(A000124(n))`
-/

namespace A280309.P14909641179456861877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A281540 (A000124 n).toNat

end

end A280309.P14909641179456861877

/-! ## A280309.P5412362084169837112

`A281540(A000124(n))%A000108(n)`
-/

namespace A280309.P5412362084169837112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281540 (A000124 n).toNat) (A000108 n)

end

end A280309.P5412362084169837112

/-!
# A280310: Number of nX3 0..2 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280310, there is no canonical definition to state claims against.
-/

/-! ## A280310.P1741977974691951068

`A280313(∑[n+2]+4)`
-/

namespace A280310.P1741977974691951068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280310.P1741977974691951068

/-! ## A280310.P15016418642140152418

`or(char[1], A280313(A167614(n+1)))`
-/

namespace A280310.P15016418642140152418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A280313 (A167614 (n + 1)).toNat)

end

end A280310.P15016418642140152418

/-! ## A280310.P16470965154283157940

`record[A010054(n)*A280313(n+3)]`
-/

namespace A280310.P16470965154283157940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A280313 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280310.P16470965154283157940

/-! ## A280310.P9593401722240890365

`A280313(A167614(n+1))+A011730(n)`
-/

namespace A280310.P9593401722240890365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (A167614 (n + 1)).toNat + A011730 n

end

end A280310.P9593401722240890365

/-! ## A280310.P4751045771002400078

`A280313(A167614(n+1))+A011731(n)`
-/

namespace A280310.P4751045771002400078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (A167614 (n + 1)).toNat + A011731 n

end

end A280310.P4751045771002400078

/-!
# A280311: Number of nX4 0..2 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280311, there is no canonical definition to state claims against.
-/

/-! ## A280311.P4112675844243056166

`A280313(A374004(n+1))`
-/

namespace A280311.P4112675844243056166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (A374004 (n + 1)).toNat

end

end A280311.P4112675844243056166

/-! ## A280311.P9301192360896901620

`A280313(A141214(n)+7)`
-/

namespace A280311.P9301192360896901620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (A141214 n + 7).toNat

end

end A280311.P9301192360896901620

/-! ## A280311.P867305991334483333

`A280313(A052905(n)+9)`
-/

namespace A280311.P867305991334483333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (A052905 n + 9).toNat

end

end A280311.P867305991334483333

/-! ## A280311.P16767340095730887786

`A280313(A055999(n)+10)`
-/

namespace A280311.P16767340095730887786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (A055999 n + 10).toNat

end

end A280311.P16767340095730887786

/-! ## A280311.P8503229151955635372

`A280313(eq[5, A066657(n)])`
-/

namespace A280311.P8503229151955635372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280311.P8503229151955635372

/-!
# A280312: Number of nX5 0..2 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280312, there is no canonical definition to state claims against.
-/

/-! ## A280312.P14082915211569023112

`A280313(A374005(n+1))`
-/

namespace A280312.P14082915211569023112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (A374005 (n + 1)).toNat

end

end A280312.P14082915211569023112

/-! ## A280312.P6057624607491549153

`A280313(A077169(n+5))`
-/

namespace A280312.P6057624607491549153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (A077169 (n + 5)).toNat

end

end A280312.P6057624607491549153

/-! ## A280312.P1683571379431289814

`A280313(A155212(n)+13)`
-/

namespace A280312.P1683571379431289814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (A155212 n + 13).toNat

end

end A280312.P1683571379431289814

/-! ## A280312.P12572857781304609356

`A280313(A056000(n)+15)`
-/

namespace A280312.P12572857781304609356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (A056000 n + 15).toNat

end

end A280312.P12572857781304609356

/-! ## A280312.P15776419775855058759

`A280313(eq[7, A066657(n)])`
-/

namespace A280312.P15776419775855058759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280312.P15776419775855058759

/-!
# A280313: T(n,k)=Number of nXk 0..2 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280313, there is no canonical definition to state claims against.
-/

/-! ## A280313.P15494997731380297773

`A279534(n+1)%A238860(A279534(n+1))`
-/

namespace A280313.P15494997731380297773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279534 (n + 1)) (A238860 (A279534 (n + 1)).toNat)

end

end A280313.P15494997731380297773

/-!
# A280314: Relationship of prime numbers to multiples of 6. The value of a(n) = 2 if n*6 has two neighboring primes, a(n) = 1 if only n*6+1 is prime, a(n) = -1 if only n*6-1 is prime, and a(n) = 0 if the neighbors of n*6 are both composite.

The programs for A280314, there is no canonical definition to state claims against.
-/

/-! ## A280314.P2072697548520737875

`A167021(n+1)+A129950(6*n+5)`
-/

namespace A280314.P2072697548520737875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167021 (n + 1) + A129950 (6 * n + 5)

end

end A280314.P2072697548520737875

/-! ## A280314.P196444902807787115

`-xor(-A167021(n+1), A167020(n+1))`
-/

namespace A280314.P196444902807787115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-A167021 (n + 1)) (A167020 (n + 1))

end

end A280314.P196444902807787115

/-! ## A280314.P16502099140758942906

`A097065(A294185(3*n+4)%A346197(n+3))`
-/

namespace A280314.P16502099140758942906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (Int.tmod (A294185 (3 * n + 4)) (A346197 (n + 3))).toNat

end

end A280314.P16502099140758942906

/-! ## A280314.P1817927904897382699

`A097065(A294185(3*n+4))%A122139(2*(n+1))`
-/

namespace A280314.P1817927904897382699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097065 (A294185 (3 * n + 4)).toNat) (A122139 (2 * (n + 1)))

end

end A280314.P1817927904897382699

/-! ## A280314.P213984219327857236

`A055643(3*n+4)-A004524(A108294(n))`
-/

namespace A280314.P213984219327857236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (3 * n + 4) - A004524 (A108294 n).toNat

end

end A280314.P213984219327857236

/-!
# A280315: Denominator of Farey fractions sorted according to increasing k, with k = numerator + denominator. Fractions with same k are sorted in order of increasing denominator.

The programs for A280315, there is no canonical definition to state claims against.
-/

/-! ## A280315.P1336334179827740584

`A128227(lt[n, A051173(n+1)])`
-/

namespace A280315.P1336334179827740584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A280315.P1336334179827740584

/-! ## A280315.P17151593368559704741

`A128227(lt[n, A051537(n+1)])`
-/

namespace A280315.P17151593368559704741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A280315.P17151593368559704741

/-! ## A280315.P8558235617660280419

`A193738(lt[n, A051173(n+1)])`
-/

namespace A280315.P8558235617660280419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A280315.P8558235617660280419

/-! ## A280315.P1014354471473627190

`A193738(lt[n, A051537(n+1)])`
-/

namespace A280315.P1014354471473627190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A280315.P1014354471473627190

/-! ## A280315.P11522064065532881508

`A128227(lt[n, A338797(n+1)])`
-/

namespace A280315.P11522064065532881508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A280315.P11522064065532881508

/-! ## A280315.P7038334465410975727

`A002260(lt[n, A051173(n+1)]+1)`
-/

namespace A280315.P7038334465410975727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A280315.P7038334465410975727

/-! ## A280315.P6264861177900938290

`A002260(eq[n, n%A051173(n+1)]+1)`
-/

namespace A280315.P6264861177900938290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A051173 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A280315.P6264861177900938290

/-! ## A280315.P4688554787664239762

`A002260(eq[A101688(n), A109004(n)])`
-/

namespace A280315.P4688554787664239762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A280315.P4688554787664239762

/-! ## A280315.P9867343888602155240

`A002262(eq[A101688(n), A109004(n)])`
-/

namespace A280315.P9867343888602155240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A280315.P9867343888602155240

/-! ## A280315.P1095179879009298556

`A038567(A004273(n))-A280073(n+1)`
-/

namespace A280315.P1095179879009298556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A004273 n).toNat - A280073 (n + 1)

end

end A280315.P1095179879009298556

/-!
# A280316: Sum of squares of parts of the partitions of 2n into two squarefree parts.

The programs for A280316, there is no canonical definition to state claims against.
-/

/-! ## A280316.P11442928346475867905

`A280320(n+1)+A280322(n+1)`
-/

namespace A280316.P11442928346475867905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280320 (n + 1) + A280322 (n + 1)

end

end A280316.P11442928346475867905

/-!
# A280317: Ordinate of points (x,y) of the square lattice such that x >= 0 and 0 <= y <= x, and ranked in order of increasing distance from the origin. Equidistant points are ranked in order of increasing ordinate.

The programs for A280317, there is no canonical definition to state claims against.
-/

/-! ## A280317.P16662132073030005645

`A059905(A283618(n+1))`
-/

namespace A280317.P16662132073030005645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A283618 (n + 1)).toNat

end

end A280317.P16662132073030005645

/-! ## A280317.P3631744170480218347

`A059906(2*A283618(n+1))`
-/

namespace A280317.P3631744170480218347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (2 * A283618 (n + 1)).toNat

end

end A280317.P3631744170480218347

/-! ## A280317.P14088442957641752696

`A358402(n+1)-A044941(A364914(n+2))`
-/

namespace A280317.P14088442957641752696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358402 (n + 1) - A044941 (A364914 (n + 2)).toNat

end

end A280317.P14088442957641752696

/-!
# A280320: Sum of the squares of the smaller parts of the partitions of 2n into two squarefree parts.

The programs for A280320, there is no canonical definition to state claims against.
-/

/-! ## A280320.P8667828568929837130

`A280316(n+1)-A280322(n+1)`
-/

namespace A280320.P8667828568929837130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280316 (n + 1) - A280322 (n + 1)

end

end A280320.P8667828568929837130

/-! ## A280320.P15404191587092272096

`A028310(A280316(n+1)%A280322(n+1))`
-/

namespace A280320.P15404191587092272096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A280316 (n + 1)) (A280322 (n + 1))).toNat

end

end A280320.P15404191587092272096

/-!
# A280321: Number of 2 X 2 matrices with all elements in {0,..,n} having determinant = n*permanent.

The programs for A280321, the canonical program `A280321.P17729338480366932090` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280321 has offset 0).

The definition of A280321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280321.P11230845459449042583

`∑[8*n]+(char[1]+1)²`
-/

namespace A280321.P11230845459449042583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((if ∃ j, f2 j = n then 1 else 0) + 1) ^ 2

end

end A280321.P11230845459449042583

namespace A280321

/-- `∑[8*n]+(char[1]+1)²` -/
def P11230845459449042583.Spec : Prop :=
  ∀ n, (P11230845459449042583.a n : ℤ) = A280321 n

end A280321

/-! ## A280321.P17729338480366932090

`floor((2*n+1)²+3/a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280321

/-- `floor((2*n+1)²+3/a(n-1))` -/
def P17729338480366932090.Spec : Prop :=
  ∀ n, P17729338480366932090.a n = A280321 n

theorem P17729338480366932090.correct : P17729338480366932090.Spec := by
  intro n
  simp only [A280321]

end A280321

/-! ## A280321.P9542952427936154621

`round((2*n+1)²+3/a(n-1))` with `a(0)=1`
-/

namespace A280321.P9542952427936154621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) + 3 / (a (n - 1) : ℚ))

end

end A280321.P9542952427936154621

namespace A280321

/-- `round((2*n+1)²+3/a(n-1))` -/
def P9542952427936154621.Spec : Prop :=
  ∀ n, P9542952427936154621.a n = A280321 n

end A280321

/-! ## A280321.P16069508378176977977

`lcm(2*n+1, floor(2/(n+1)-(2*n+1))²)`
-/

namespace A280321.P16069508378176977977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (⌊2 / (n + 1 : ℚ) - (2 * n + 1 : ℚ)⌋ ^ 2)

end

end A280321.P16069508378176977977

namespace A280321

/-- `lcm(2*n+1, floor(2/(n+1)-(2*n+1))²)` -/
def P16069508378176977977.Spec : Prop :=
  ∀ n, (P16069508378176977977.a n : ℤ) = A280321 n

end A280321

/-! ## A280321.P14924865255111156963

`floor((1/a(n-1)+2*n+1)*(2*n+1))` with `a(0)=1`
-/

namespace A280321.P14924865255111156963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(1 / (a (n - 1) : ℚ) + (2 * n + 1 : ℚ)) * (2 * n + 1 : ℚ)⌋

end

end A280321.P14924865255111156963

namespace A280321

/-- `floor((1/a(n-1)+2*n+1)*(2*n+1))` -/
def P14924865255111156963.Spec : Prop :=
  ∀ n, P14924865255111156963.a n = A280321 n

end A280321

/-! ## A280321.P1460460764984515468

`Δ[n²]*A223134(n)`
-/

namespace A280321.P1460460764984515468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A223134 n

end

end A280321.P1460460764984515468

namespace A280321

/-- `Δ[n²]*A223134(n)` -/
def P1460460764984515468.Spec : Prop :=
  ∀ n, P1460460764984515468.a n = A280321 n

end A280321

/-! ## A280321.P7699028958477677846

`(A005408(n)+char[1])*A005408(n)`
-/

namespace A280321.P7699028958477677846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A005408 n

end

end A280321.P7699028958477677846

namespace A280321

/-- `(A005408(n)+char[1])*A005408(n)` -/
def P7699028958477677846.Spec : Prop :=
  ∀ n, P7699028958477677846.a n = A280321 n

end A280321

/-! ## A280321.P4701122072804740308

`(A157142(n)-char[1])*A157142(n)`
-/

namespace A280321.P4701122072804740308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157142 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A157142 n

end

end A280321.P4701122072804740308

namespace A280321

/-- `(A157142(n)-char[1])*A157142(n)` -/
def P4701122072804740308.Spec : Prop :=
  ∀ n, P4701122072804740308.a n = A280321 n

end A280321

/-! ## A280321.P6935627523264308300

`A000217(2*n+1)*(4*n+2)/A316571(n+2)`
-/

namespace A280321.P6935627523264308300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * n + 1) * (4 * n + 2 : ℤ) : ℚ) / (A316571 (n + 2) : ℚ)

end

end A280321.P6935627523264308300

namespace A280321

/-- `A000217(2*n+1)*(4*n+2)/A316571(n+2)` -/
def P6935627523264308300.Spec : Prop :=
  ∀ n, P6935627523264308300.a n = (A280321 n : ℚ)

end A280321

/-! ## A280321.P10823240689295160782

`(A055029(2*n)+2*n+1)*(2*n+1)`
-/

namespace A280321.P10823240689295160782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055029 (2 * n) + (2 * n + 1 : ℤ)) * (2 * n + 1 : ℤ)

end

end A280321.P10823240689295160782

namespace A280321

/-- `(A055029(2*n)+2*n+1)*(2*n+1)` -/
def P10823240689295160782.Spec : Prop :=
  ∀ n, P10823240689295160782.a n = A280321 n

end A280321

/-! ## A280321.P18043926249727750293

`A183207(A223134(n))`
-/

namespace A280321.P18043926249727750293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183207 (A223134 n).toNat

end

end A280321.P18043926249727750293

namespace A280321

/-- `A183207(A223134(n))` -/
def P18043926249727750293.Spec : Prop :=
  ∀ n, P18043926249727750293.a n = A280321 n

end A280321

/-! ## A280321.P10489912607745365354

`(A294619(2*n)+A028310(2*n))*(2*n+1)`
-/

namespace A280321.P10489912607745365354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A294619 (2 * n) + A028310 (2 * n)) * (2 * n + 1 : ℤ)

end

end A280321.P10489912607745365354

namespace A280321

/-- `(A294619(2*n)+A028310(2*n))*(2*n+1)` -/
def P10489912607745365354.Spec : Prop :=
  ∀ n, P10489912607745365354.a n = A280321 n

end A280321

/-! ## A280321.P17435779878304786693

`A103505(2*n+1)/A103505(2*n)*A082562(2*n)`
-/

namespace A280321.P17435779878304786693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103505 (2 * n + 1) : ℚ) / (A103505 (2 * n) : ℚ) * (A082562 (2 * n) : ℚ)

end

end A280321.P17435779878304786693

namespace A280321

/-- `A103505(2*n+1)/A103505(2*n)*A082562(2*n)` -/
def P17435779878304786693.Spec : Prop :=
  ∀ n, P17435779878304786693.a n = (A280321 n : ℚ)

end A280321

/-! ## A280321.P5680960101363721659

`A002620(A266449(2*n+1)+A266449(2*n))`
-/

namespace A280321.P5680960101363721659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A266449 (2 * n + 1) + A266449 (2 * n)).toNat

end

end A280321.P5680960101363721659

namespace A280321

/-- `A002620(A266449(2*n+1)+A266449(2*n))` -/
def P5680960101363721659.Spec : Prop :=
  ∀ n, P5680960101363721659.a n = A280321 n

end A280321

/-! ## A280321.P9970009041594420891

`(2*n+1)*(C(n, A000045(A000010(2*n+1)))+2*n+1)`
-/

namespace A280321.P9970009041594420891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose n (A000045 (A000010 (2 * n + 1)).toNat).toNat + (2 * n + 1))

end

end A280321.P9970009041594420891

namespace A280321

/-- `(2*n+1)*(C(n, A000045(A000010(2*n+1)))+2*n+1)` -/
def P9970009041594420891.Spec : Prop :=
  ∀ n, (P9970009041594420891.a n : ℤ) = A280321 n

end A280321

/-! ## A280321.P13635818016149073453

`(2*n+1)*(C(n, A000045(n+1)²)+2*n+1)`
-/

namespace A280321.P13635818016149073453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose n (A000045 (n + 1) ^ 2).toNat + (2 * n + 1))

end

end A280321.P13635818016149073453

namespace A280321

/-- `(2*n+1)*(C(n, A000045(n+1)²)+2*n+1)` -/
def P13635818016149073453.Spec : Prop :=
  ∀ n, (P13635818016149073453.a n : ℤ) = A280321 n

end A280321

/-! ## A280321.P6842065889112502537

`(2*n+1)*(C(2*n, Δ[A000045(2*n)])+2*n+1)`
-/

namespace A280321.P6842065889112502537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose (2 * n) (f1 (n + 1) - f1 n).toNat + (2 * n + 1))

end

end A280321.P6842065889112502537

namespace A280321

/-- `(2*n+1)*(C(2*n, Δ[A000045(2*n)])+2*n+1)` -/
def P6842065889112502537.Spec : Prop :=
  ∀ n, (P6842065889112502537.a n : ℤ) = A280321 n

end A280321

/-! ## A280321.P2058206385683826654

`(2*n+1)*(C(2*n, A000045(2*n+1))+2*n+1)`
-/

namespace A280321.P2058206385683826654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose (2 * n) (A000045 (2 * n + 1)).toNat + (2 * n + 1))

end

end A280321.P2058206385683826654

namespace A280321

/-- `(2*n+1)*(C(2*n, A000045(2*n+1))+2*n+1)` -/
def P2058206385683826654.Spec : Prop :=
  ∀ n, (P2058206385683826654.a n : ℤ) = A280321 n

end A280321

/-! ## A280321.P10941694590448606171

`(2*n+1)*(C(2*n, C(2*n, n))+2*n+1)`
-/

namespace A280321.P10941694590448606171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose (2 * n) (Nat.choose (2 * n) n) + (2 * n + 1))

end

end A280321.P10941694590448606171

namespace A280321

/-- `(2*n+1)*(C(2*n, C(2*n, n))+2*n+1)` -/
def P10941694590448606171.Spec : Prop :=
  ∀ n, (P10941694590448606171.a n : ℤ) = A280321 n

end A280321

/-!
# A280322: Sum of the squares of the larger parts of the partitions of 2n into two squarefree parts.

The programs for A280322, there is no canonical definition to state claims against.
-/

/-! ## A280322.P17930840728565466311

`A280316(n+1)-A280320(n+1)`
-/

namespace A280322.P17930840728565466311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280316 (n + 1) - A280320 (n + 1)

end

end A280322.P17930840728565466311

/-!
# A280323: Number of years of lunisolar cycles.

The programs for A280323, there is no canonical definition to state claims against.
-/

/-! ## A280323.P12556851464819271442

`record[A104505(A104504(n))-A104510(n+1)]`
-/

namespace A280323.P12556851464819271442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104505 (A104504 n).toNat - A104510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280323.P12556851464819271442

/-!
# A280324: Number of lunar months of lunisolar cycles.

The programs for A280324, there is no canonical definition to state claims against.
-/

/-! ## A280324.P15179832929303541153

`A194515(A041490(n+1))`
-/

namespace A280324.P15179832929303541153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194515 (A041490 (n + 1)).toNat

end

end A280324.P15179832929303541153

/-!
# A280326: Primes such that the previous prime plus the next prime minus 1 is also prime.

The programs for A280326, the canonical program `A280326.P13927515747860217816` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280326 has offset 1).

The definition of A280326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280326.P13927515747860217816

`A076272(A394471(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A280326

/-- `A076272(A394471(n+1))` -/
def P13927515747860217816.Spec : Prop :=
  ∀ n, P13927515747860217816.a n = A280326 (n + 1)

theorem P13927515747860217816.correct : P13927515747860217816.Spec := by
  intro n
  simp only [A280326, Nat.add_sub_cancel]

end A280326

/-! ## A280326.P1253982541517115411

`A076272(p?[A014681(A048448(n))])`
-/

namespace A280326.P1253982541517115411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A048448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280326.P1253982541517115411

namespace A280326

/-- `A076272(p?[A014681(A048448(n))])` -/
def P1253982541517115411.Spec : Prop :=
  ∀ n, P1253982541517115411.a n = A280326 (n + 1)

end A280326

/-! ## A280326.P15798355700064793306

`A076272(p?[A001043(n+1)-A076368(n+1)])`
-/

namespace A280326.P15798355700064793306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280326.P15798355700064793306

namespace A280326

/-- `A076272(p?[A001043(n+1)-A076368(n+1)])` -/
def P15798355700064793306.Spec : Prop :=
  ∀ n, P15798355700064793306.a n = A280326 (n + 1)

end A280326

/-! ## A280326.P12432264658282398700

`A076272(p?[A008578(n+4)+A006093(n+1)])`
-/

namespace A280326.P12432264658282398700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 4) + A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280326.P12432264658282398700

namespace A280326

/-- `A076272(p?[A008578(n+4)+A006093(n+1)])` -/
def P12432264658282398700.Spec : Prop :=
  ∀ n, P12432264658282398700.a n = A280326 (n + 1)

end A280326

/-! ## A280326.P7371694209525249692

`A076272(p?[A111254(n+1)-2])`
-/

namespace A280326.P7371694209525249692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111254 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280326.P7371694209525249692

namespace A280326

/-- `A076272(p?[A111254(n+1)-2])` -/
def P7371694209525249692.Spec : Prop :=
  ∀ n, P7371694209525249692.a n = A280326 (n + 1)

end A280326

/-!
# A280327: a(n) is obtained by applying the map k -> composite(k) n times, starting at n.

The programs for A280327, there is no canonical definition to state claims against.
-/

/-! ## A280327.P13003147694218295666

`∑[lt[A296150(n+1), A193531(2*n+3)]]`
-/

namespace A280327.P13003147694218295666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193531 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280327.P13003147694218295666

/-!
# A280328: Expansion of f(-x)^3 * f(-x^2) * chi(-x^3)^3 in powers of x where chi(), f() are Ramanujan theta functions.

The programs for A280328, there is no canonical definition to state claims against.
-/

/-! ## A280328.P515042588987252826

`(-1)^n*A280384(n)`
-/

namespace A280328.P515042588987252826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A280384 n

end

end A280328.P515042588987252826

/-!
# A280329: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 246", based on the 5-celled von Neumann neighborhood.

The programs for A280329, there is no canonical definition to state claims against.
-/

/-! ## A280329.P2014303468357031545

`A007088(A280331(n))`
-/

namespace A280329.P2014303468357031545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280331 n).toNat

end

end A280329.P2014303468357031545

/-! ## A280329.P12988931870558099741

`A185544(2*A280331(n))`
-/

namespace A280329.P12988931870558099741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280331 n).toNat

end

end A280329.P12988931870558099741

/-! ## A280329.P3992320260256307716

`A007088(xor(A278922(n!), A278953(n)))`
-/

namespace A280329.P3992320260256307716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A278922 (Nat.factorial n)) (A278953 n)).toNat

end

end A280329.P3992320260256307716

/-! ## A280329.P3281732540865530258

`A185544(2*xor(A278922(n!), A278953(n)))`
-/

namespace A280329.P3281732540865530258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * Int.xor (A278922 (Nat.factorial n)) (A278953 n)).toNat

end

end A280329.P3281732540865530258

/-!
# A280330: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 246", based on the 5-celled von Neumann neighborhood.

The programs for A280330, there is no canonical definition to state claims against.
-/

/-! ## A280330.P8691607655319398851

`A007088(A280332(n))`
-/

namespace A280330.P8691607655319398851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280332 n).toNat

end

end A280330.P8691607655319398851

/-! ## A280330.P18374258562544385271

`A305989(A280331(n)/A055642(n))`
-/

namespace A280330.P18374258562544385271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A280331 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A280330.P18374258562544385271

/-! ## A280330.P8058949826150022830

`A305989(A280331(n)/A279951(n))`
-/

namespace A280330.P8058949826150022830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A280331 n : ℚ) / (A279951 n : ℚ))).toNat

end

end A280330.P8058949826150022830

/-! ## A280330.P12388016177732805706

`A305989(A280331(n)/A323018(2*n+1))`
-/

namespace A280330.P12388016177732805706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A280331 n : ℚ) / (A323018 (2 * n + 1) : ℚ))).toNat

end

end A280330.P12388016177732805706

/-! ## A280330.P5215315766673220053

`A305989(A280331(n))`
-/

namespace A280330.P5215315766673220053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A280331 n).toNat

end

end A280330.P5215315766673220053

/-!
# A280331: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 246", based on the 5-celled von Neumann neighborhood.

The programs for A280331, there is no canonical definition to state claims against.
-/

/-! ## A280331.P16759484964575898099

`xor(A278922(n!), A278953(n))`
-/

namespace A280331.P16759484964575898099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A278922 (Nat.factorial n)) (A278953 n)

end

end A280331.P16759484964575898099

/-! ## A280331.P12511735795012751453

`xor(A278953(n), A337228(A168089(n)))`
-/

namespace A280331.P12511735795012751453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A278953 n) (A337228 (A168089 n).toNat)

end

end A280331.P12511735795012751453

/-! ## A280331.P5022397333230160312

`xor(A278922(A061581(n+1)), A278953(n))`
-/

namespace A280331.P5022397333230160312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A278922 (A061581 (n + 1)).toNat) (A278953 n)

end

end A280331.P5022397333230160312

/-!
# A280332: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 246", based on the 5-celled von Neumann neighborhood.

The programs for A280332, there is no canonical definition to state claims against.
-/

/-! ## A280332.P2777898053805602401

`A030101(lcm(2, A280331(n))/2)`
-/

namespace A280332.P2777898053805602401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((Int.lcm 2 (A280331 n) : ℚ) / 2)).toNat

end

end A280332.P2777898053805602401

/-! ## A280332.P15530485755382587339

`A030101(A280331(n)/A055642(n))`
-/

namespace A280332.P15530485755382587339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A280331 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A280332.P15530485755382587339

/-! ## A280332.P1969903531307656004

`A030101(A280331(n)/A279951(n))`
-/

namespace A280332.P1969903531307656004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A280331 n : ℚ) / (A279951 n : ℚ))).toNat

end

end A280332.P1969903531307656004

/-! ## A280332.P12504411639505888561

`A030101(A280331(n)/A323018(2*n+1))`
-/

namespace A280332.P12504411639505888561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A280331 n : ℚ) / (A323018 (2 * n + 1) : ℚ))).toNat

end

end A280332.P12504411639505888561

/-! ## A280332.P12533741067428398680

`A325401(A280331(n))`
-/

namespace A280332.P12533741067428398680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A280331 n).toNat

end

end A280332.P12533741067428398680

/-!
# A280334: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 249", based on the 5-celled von Neumann neighborhood.

The programs for A280334, there is no canonical definition to state claims against.
-/

/-! ## A280334.P3517054198585350670

`A007088(A280336(n))`
-/

namespace A280334.P3517054198585350670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280336 n).toNat

end

end A280334.P3517054198585350670

/-! ## A280334.P1662507041764232651

`A185544(2*A280336(n))`
-/

namespace A280334.P1662507041764232651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280336 n).toNat

end

end A280334.P1662507041764232651

/-!
# A280335: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 249", based on the 5-celled von Neumann neighborhood.

The programs for A280335, there is no canonical definition to state claims against.
-/

/-! ## A280335.P4124943401604564215

`A007088(A280337(n))`
-/

namespace A280335.P4124943401604564215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280337 n).toNat

end

end A280335.P4124943401604564215

/-! ## A280335.P3971766385294641000

`A185544(2*A280337(n))`
-/

namespace A280335.P3971766385294641000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280337 n).toNat

end

end A280335.P3971766385294641000

/-!
# A280336: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 249", based on the 5-celled von Neumann neighborhood.

The programs for A280336, there is no canonical definition to state claims against.
-/

/-! ## A280336.P17107090606227395826

`A283607(n)%A006530(A003499(n))`
-/

namespace A280336.P17107090606227395826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283607 n) (A006530 (A003499 n).toNat)

end

end A280336.P17107090606227395826

/-! ## A280336.P18229542502652402365

`and(A051673(A000670(n)), A282798(n))`
-/

namespace A280336.P18229542502652402365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051673 (A000670 n).toNat) (A282798 n)

end

end A280336.P18229542502652402365

/-! ## A280336.P13185940273375658074

`and(A004767(A173358(n+1)), A282798(n))`
-/

namespace A280336.P13185940273375658074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004767 (A173358 (n + 1)).toNat) (A282798 n)

end

end A280336.P13185940273375658074

/-!
# A280337: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 249", based on the 5-celled von Neumann neighborhood.

The programs for A280337, there is no canonical definition to state claims against.
-/

/-! ## A280337.P7549068719809236060

`xor(A273294(A057817(n+1)), A279872(n))`
-/

namespace A280337.P7549068719809236060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A273294 (A057817 (n + 1)).toNat) (A279872 n)

end

end A280337.P7549068719809236060

/-!
# A280338: Number of sizes of remainder sets for n, for any natural number c, given natural number b in (b^c) mod n.

The programs for A280338, there is no canonical definition to state claims against.
-/

/-! ## A280338.P17806477741284176403

`A369015(A000010(n+1)%A215432(2*n+1))`
-/

namespace A280338.P17806477741284176403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369015 (Int.tmod (A000010 (n + 1)) (A215432 (2 * n + 1))).toNat

end

end A280338.P17806477741284176403

/-! ## A280338.P8210119505092049154

`A369907(A105129(2*n+1))+A369890(A000010(n+1))`
-/

namespace A280338.P8210119505092049154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369907 (A105129 (2 * n + 1)).toNat + A369890 (A000010 (n + 1)).toNat

end

end A280338.P8210119505092049154

/-! ## A280338.P14383265131815932795

`A007895(A007588(Δ[A002088(n)]))`
-/

namespace A280338.P14383265131815932795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A007588 (f1 (n + 1) - f1 n).toNat).toNat

end

end A280338.P14383265131815932795

/-! ## A280338.P10506894505096128917

`A007895(A007588(Δ[A005728(n)]))`
-/

namespace A280338.P10506894505096128917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A007588 (f1 (n + 1) - f1 n).toNat).toNat

end

end A280338.P10506894505096128917

/-! ## A280338.P5993042222786851731

`A087990(A100371(n+1))`
-/

namespace A280338.P5993042222786851731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (A100371 (n + 1)).toNat

end

end A280338.P5993042222786851731

/-!
# A280339: Expansion of phi(x)^2 * chi(x^2)^4 * f(-x)^2 in powers of x where phi(), chi(), f() are Ramanujan theta functions.

The programs for A280339, there is no canonical definition to state claims against.
-/

/-! ## A280339.P12635302766287656800

`(-1)^n*A279955(n)`
-/

namespace A280339.P12635302766287656800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A279955 n

end

end A280339.P12635302766287656800

/-! ## A280339.P15693323695105851197

`A279955(n)/A057077(A004277(n))`
-/

namespace A280339.P15693323695105851197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279955 n : ℚ) / (A057077 (A004277 n).toNat : ℚ)

end

end A280339.P15693323695105851197

/-! ## A280339.P17584747675613023411

`A279955(n)/A057077(A005408(n))`
-/

namespace A280339.P17584747675613023411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279955 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A280339.P17584747675613023411

/-! ## A280339.P11446908552054923525

`A279955(n)/A057077(A016969(n))`
-/

namespace A280339.P11446908552054923525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279955 n : ℚ) / (A057077 (A016969 n).toNat : ℚ)

end

end A280339.P11446908552054923525

/-! ## A280339.P16501705039083678642

`A279955(n)/A020985(A134067(n))`
-/

namespace A280339.P16501705039083678642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279955 n : ℚ) / (A020985 (A134067 n).toNat : ℚ)

end

end A280339.P16501705039083678642

/-!
# A280340: a(n) = a(n-1) + 10^n * a(n-2) with a(0) = 1 and a(1) = 1.

The programs for A280340, the canonical program `A280340.P17189406467434333004` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280340 has offset 0).

The definition of A280340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+10^n*a(n-2)` (program `A280340.P17189406467434333004`, by `A280340.P17189406467434333004.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A280340.P17189406467434333004

`a(n-1)+10^n*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280340

/-- `a(n-1)+10^n*a(n-2)` -/
def P17189406467434333004.Spec : Prop :=
  ∀ n, (P17189406467434333004.a n : ℤ) = A280340 n

theorem P17189406467434333004.correct : P17189406467434333004.Spec := by
  intro n
  simp only [A280340]

end A280340

/-! ## A280340.P17866381499036072721

`∏[10^n/a(n-1)+1]` with `a(0)=1, a(1)=1`
-/

namespace A280340.P17866381499036072721
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (10 ^ n : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280340.P17866381499036072721

namespace A280340

/-- `∏[10^n/a(n-1)+1]` -/
def P17866381499036072721.Spec : Prop :=
  ∀ n, P17866381499036072721.a n = (A280340 n : ℚ)

end A280340

/-! ## A280340.P10956149545680739880

`a(n-1)+lcm(10^n, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A280340.P10956149545680739880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Nat.lcm (10 ^ n) (a (n - 2))

end

end A280340.P10956149545680739880

namespace A280340

/-- `a(n-1)+lcm(10^n, a(n-2))` -/
def P10956149545680739880.Spec : Prop :=
  ∀ n, (P10956149545680739880.a n : ℤ) = A280340 n

end A280340

/-! ## A280340.P2167875863010652397

`a(n-1)+a(n-2)*A011557(n)` with `a(0)=1, a(1)=1`
-/

namespace A280340.P2167875863010652397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) * A011557 n

end

end A280340.P2167875863010652397

namespace A280340

/-- `a(n-1)+a(n-2)*A011557(n)` -/
def P2167875863010652397.Spec : Prop :=
  ∀ n, P2167875863010652397.a n = A280340 n

end A280340

/-!
# A280341: Number of distinct heights achieved in the Collatz (or '3x+1') problem when starting from numbers in the range [2^n,2^(n+1)).

The programs for A280341, there is no canonical definition to state claims against.
-/

/-! ## A280341.P13458846559209994161

`∑[A003990(Δ[A319642(n+1)])]`
-/

namespace A280341.P13458846559209994161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280341.P13458846559209994161

/-! ## A280341.P3186194659168955206

`A103609(n)+A089865(A097083(n+1))`
-/

namespace A280341.P3186194659168955206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n + A089865 (A097083 (n + 1)).toNat

end

end A280341.P3186194659168955206

/-! ## A280341.P1394335609472384809

`A029931(A303432(n+1)+A000228(n+1))`
-/

namespace A280341.P1394335609472384809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A303432 (n + 1) + A000228 (n + 1)).toNat

end

end A280341.P1394335609472384809

/-!
# A280342: Sum of digits of A003418(n).

The programs for A280342, the canonical program `A280342.P1529878865036493981` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280342 has offset 0).

The definition of A280342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280342.P1529878865036493981

`∑{digits}[lcm(n, a(n-1)), #]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280342

/-- `∑{digits}[lcm(n, a(n-1)), #]` -/
def P1529878865036493981.Spec : Prop :=
  ∀ n, (P1529878865036493981.a n : ℤ) = A280342 n

theorem P1529878865036493981.correct : P1529878865036493981.Spec := by
  intro n
  simp only [A280342]

end A280342

/-! ## A280342.P12108876516033299355

`∑{digits}[A003418(n), #]`
-/

namespace A280342.P12108876516033299355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A280342.P12108876516033299355

namespace A280342

/-- `∑{digits}[A003418(n), #]` -/
def P12108876516033299355.Spec : Prop :=
  ∀ n, (P12108876516033299355.a n : ℤ) = A280342 n

end A280342

/-! ## A280342.P2072180081873981560

`∑{digits}[A139550(2*n), #]`
-/

namespace A280342.P2072180081873981560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A280342.P2072180081873981560

namespace A280342

/-- `∑{digits}[A139550(2*n), #]` -/
def P2072180081873981560.Spec : Prop :=
  ∀ n, (P2072180081873981560.a n : ℤ) = A280342 n

end A280342

/-! ## A280342.P7158604530442217485

`∑{digits}[∏[A014963(∏{p}[n, #])], #]`
-/

namespace A280342.P7158604530442217485
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A280342.P7158604530442217485

namespace A280342

/-- `∑{digits}[∏[A014963(∏{p}[n, #])], #]` -/
def P7158604530442217485.Spec : Prop :=
  ∀ n, (P7158604530442217485.a n : ℤ) = A280342 n

end A280342

/-! ## A280342.P4038894824324861897

`∑{digits}[a(n-1)*A014963(n), #]` with `a(0)=1`
-/

namespace A280342.P4038894824324861897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A014963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A280342.P4038894824324861897

namespace A280342

/-- `∑{digits}[a(n-1)*A014963(n), #]` -/
def P4038894824324861897.Spec : Prop :=
  ∀ n, (P4038894824324861897.a n : ℤ) = A280342 n

end A280342

/-! ## A280342.P14500358152419618819

`∑{digits}[∏[A014963(A257088(n))], #]`
-/

namespace A280342.P14500358152419618819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A257088 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A280342.P14500358152419618819

namespace A280342

/-- `∑{digits}[∏[A014963(A257088(n))], #]` -/
def P14500358152419618819.Spec : Prop :=
  ∀ n, (P14500358152419618819.a n : ℤ) = A280342 n

end A280342

/-! ## A280342.P9252437295099364435

`∑{digits}[A002944(n+1)*A048671(n+1), #]`
-/

namespace A280342.P9252437295099364435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 1) * A048671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A280342.P9252437295099364435

namespace A280342

/-- `∑{digits}[A002944(n+1)*A048671(n+1), #]` -/
def P9252437295099364435.Spec : Prop :=
  ∀ n, (P9252437295099364435.a n : ℤ) = A280342 n

end A280342

/-! ## A280342.P10245675972242190321

`∑{digits}[∏[A014963(n+1)]/A014963(n+1), #]`
-/

namespace A280342.P10245675972242190321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A014963 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A280342.P10245675972242190321

namespace A280342

/-- `∑{digits}[∏[A014963(n+1)]/A014963(n+1), #]` -/
def P10245675972242190321.Spec : Prop :=
  ∀ n, (P10245675972242190321.a n : ℤ) = A280342 n

end A280342

/-!
# A280343: Number of 2 X 2 matrices with all elements in {-n,..,0,..,n} with determinant = 2*permanent.

The programs for A280343, there is no canonical definition to state claims against.
-/

/-! ## A280343.P5769317910887508442

`A211422(A362211(n+1)-A336893(n+1))`
-/

namespace A280343.P5769317910887508442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211422 (A362211 (n + 1) - A336893 (n + 1)).toNat

end

end A280343.P5769317910887508442

/-!
# A280344: Number of 2 X 2 matrices with all elements in {0,...,n} with determinant = permanent^n.

The programs for A280344, the canonical program `A280344.P9755056991855217700` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280344 has offset 0).

The definition of A280344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280344.P9755056991855217700

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=12, a(2)=30, a(3)=56`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280344

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P9755056991855217700.Spec : Prop :=
  ∀ n, P9755056991855217700.a n = A280344 n

theorem P9755056991855217700.correct : P9755056991855217700.Spec := by
  intro n
  simp only [A280344]

end A280344

/-! ## A280344.P13597986929220987799

`∑[a(n-1)+8]` with `a(0)=0, a(1)=12, a(2)=18`
-/

namespace A280344.P13597986929220987799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12, 18] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280344.P13597986929220987799

namespace A280344

/-- `∑[a(n-1)+8]` -/
def P13597986929220987799.Spec : Prop :=
  ∀ n, (P13597986929220987799.a n : ℤ) = A280344 n

end A280344

/-! ## A280344.P15741043380909207261

`record[(n+3)*xor(1, n+1)]`
-/

namespace A280344.P15741043380909207261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.xor 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280344.P15741043380909207261

namespace A280344

/-- `record[(n+3)*xor(1, n+1)]` -/
def P15741043380909207261.Spec : Prop :=
  ∀ n, (P15741043380909207261.a n : ℤ) = A280344 n

end A280344

/-! ## A280344.P14400954531073880309

`record[lcm(n+3, xor(1, n+1))]`
-/

namespace A280344.P14400954531073880309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 3) (Nat.xor 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280344.P14400954531073880309

namespace A280344

/-- `record[lcm(n+3, xor(1, n+1))]` -/
def P14400954531073880309.Spec : Prop :=
  ∀ n, (P14400954531073880309.a n : ℤ) = A280344 n

end A280344

/-! ## A280344.P2038451155447659192

`record[(n+2)*(n+3)*n%2]`
-/

namespace A280344.P2038451155447659192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * ((n + 3) * (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280344.P2038451155447659192

namespace A280344

/-- `record[(n+2)*(n+3)*n%2]` -/
def P2038451155447659192.Spec : Prop :=
  ∀ n, (P2038451155447659192.a n : ℤ) = A280344 n

end A280344

/-! ## A280344.P8875610788735059632

`record[(n+2)*(n+3)*and(1, n)]`
-/

namespace A280344.P8875610788735059632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * ((n + 3) * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280344.P8875610788735059632

namespace A280344

/-- `record[(n+2)*(n+3)*and(1, n)]` -/
def P8875610788735059632.Spec : Prop :=
  ∀ n, (P8875610788735059632.a n : ℤ) = A280344 n

end A280344

/-! ## A280344.P5850436852583799678

`ceil(sqrt(∑[2*n]))*(4*n+2)`
-/

namespace A280344.P5850436852583799678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ * (4 * n + 2 : ℤ)

end

end A280344.P5850436852583799678

namespace A280344

/-- `ceil(sqrt(∑[2*n]))*(4*n+2)` -/
def P5850436852583799678.Spec : Prop :=
  ∀ n, P5850436852583799678.a n = A280344 n

end A280344

/-! ## A280344.P8440958785670311456

`∑[ogf((1+10x-5x^2+2x^3)/(1-2x+x^2))]-1`
-/

namespace A280344.P8440958785670311456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -5, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A280344.P8440958785670311456

namespace A280344

/-- `∑[ogf((1+10x-5x^2+2x^3)/(1-2x+x^2))]-1` -/
def P8440958785670311456.Spec : Prop :=
  ∀ n, P8440958785670311456.a n = A280344 n

end A280344

/-! ## A280344.P1700972071090176574

`∑[8*n+2]%(3*n+1)²`
-/

namespace A280344.P1700972071090176574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (3 * n + 1) ^ 2

end

end A280344.P1700972071090176574

namespace A280344

/-- `∑[8*n+2]%(3*n+1)²` -/
def P1700972071090176574.Spec : Prop :=
  ∀ n, (P1700972071090176574.a n : ℤ) = A280344 n

end A280344

/-! ## A280344.P17363220050262388203

`record[(n+3)^gcd(2, n+1)-(n+3)]`
-/

namespace A280344.P17363220050262388203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ Nat.gcd 2 (n + 1) : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280344.P17363220050262388203

namespace A280344

/-- `record[(n+3)^gcd(2, n+1)-(n+3)]` -/
def P17363220050262388203.Spec : Prop :=
  ∀ n, P17363220050262388203.a n = A280344 n

end A280344

/-! ## A280344.P8894801293980486029

`∑{d}[-a(n-1), (2*n+1)^#]` with `a(0)=0, a(1)=2`
-/

namespace A280344.P8894801293980486029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (2 * n + 1) ^ d

end

end A280344.P8894801293980486029

namespace A280344

/-- `∑{d}[-a(n-1), (2*n+1)^#]` -/
def P8894801293980486029.Spec : Prop :=
  ∀ n, (P8894801293980486029.a n : ℤ) = A280344 n

end A280344

/-! ## A280344.P18258457609852962626

`Δ[(2*n)²+a(n-1)-2*n]` with `a(0)=0, a(1)=0`
-/

namespace A280344.P18258457609852962626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  ((2 * n) ^ 2 : ℤ) + (f1 (n - 1) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280344.P18258457609852962626

namespace A280344

/-- `Δ[(2*n)²+a(n-1)-2*n]` -/
def P18258457609852962626.Spec : Prop :=
  ∀ n, P18258457609852962626.a n = A280344 n

end A280344

/-! ## A280344.P4374077222531647986

`Δ[(2*n)²-(2*n-a(n-1))]` with `a(0)=0, a(1)=0`
-/

namespace A280344.P4374077222531647986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  ((2 * n) ^ 2 : ℤ) - ((2 * n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280344.P4374077222531647986

namespace A280344

/-- `Δ[(2*n)²-(2*n-a(n-1))]` -/
def P4374077222531647986.Spec : Prop :=
  ∀ n, P4374077222531647986.a n = A280344 n

end A280344

/-! ## A280344.P8877834382365664597

`lcm(2*n+1, ∪[(2*n)², 2*(n+2)])`
-/

namespace A280344.P8877834382365664597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A280344.P8877834382365664597

namespace A280344

/-- `lcm(2*n+1, ∪[(2*n)², 2*(n+2)])` -/
def P8877834382365664597.Spec : Prop :=
  ∀ n, (P8877834382365664597.a n : ℤ) = A280344 n

end A280344

/-! ## A280344.P7526441828785285399

`lcm(C(2, n+2)-(2*n+1), 2*(n+1))`
-/

namespace A280344.P7526441828785285399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Nat.choose 2 (n + 2) : ℤ) - (2 * n + 1 : ℤ)) (2 * (n + 1) : ℤ)

end

end A280344.P7526441828785285399

namespace A280344

/-- `lcm(C(2, n+2)-(2*n+1), 2*(n+1))` -/
def P7526441828785285399.Spec : Prop :=
  ∀ n, (P7526441828785285399.a n : ℤ) = A280344 n

end A280344

/-! ## A280344.P12793854233511303592

`(2*n+1)²+gcd(2*n, a(n-1))+1` with `a(0)=0`
-/

namespace A280344.P12793854233511303592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n + 1) ^ 2 + (Nat.gcd (2 * n) (a (n - 1)) + 1)

end

end A280344.P12793854233511303592

namespace A280344

/-- `(2*n+1)²+gcd(2*n, a(n-1))+1` -/
def P12793854233511303592.Spec : Prop :=
  ∀ n, (P12793854233511303592.a n : ℤ) = A280344 n

end A280344

/-! ## A280344.P4919158525774687767

`floor((2*n+1)*Δ[a(n-1)+2*n])` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A280344.P4919158525774687767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A280344.P4919158525774687767

namespace A280344

/-- `floor((2*n+1)*Δ[a(n-1)+2*n])` -/
def P4919158525774687767.Spec : Prop :=
  ∀ n, P4919158525774687767.a n = A280344 n

end A280344

/-! ## A280344.P1123645189641863560

`2*(2*n+1)*(n+1)-C(2, 2*n+1)`
-/

namespace A280344.P1123645189641863560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((2 * n + 1) * (n + 1)) : ℤ) - (Nat.choose 2 (2 * n + 1) : ℤ)

end

end A280344.P1123645189641863560

namespace A280344

/-- `2*(2*n+1)*(n+1)-C(2, 2*n+1)` -/
def P1123645189641863560.Spec : Prop :=
  ∀ n, P1123645189641863560.a n = A280344 n

end A280344

/-! ## A280344.P5041151712463153452

`Δ[lcm(n+1, (n+1)*(n-1))]+(2*n+1)²`
-/

namespace A280344.P5041151712463153452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((n + 1 : ℤ) * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((2 * n + 1) ^ 2 : ℤ)

end

end A280344.P5041151712463153452

namespace A280344

/-- `Δ[lcm(n+1, (n+1)*(n-1))]+(2*n+1)²` -/
def P5041151712463153452.Spec : Prop :=
  ∀ n, P5041151712463153452.a n = A280344 n

end A280344

/-! ## A280344.P8996279151807028501

`xor((2*n+1)²+2*n+1, C(2, 2*n+1))`
-/

namespace A280344.P8996279151807028501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor ((2 * n + 1) ^ 2 + (2 * n + 1)) (Nat.choose 2 (2 * n + 1))

end

end A280344.P8996279151807028501

namespace A280344

/-- `xor((2*n+1)²+2*n+1, C(2, 2*n+1))` -/
def P8996279151807028501.Spec : Prop :=
  ∀ n, (P8996279151807028501.a n : ℤ) = A280344 n

end A280344

/-!
# A280345: a(0) = 3, a(n+1) = 2*a(n) + periodic sequence of length 2: repeat [1, -2].

The programs for A280345, the canonical program `A280345.P11159356857183546691` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280345 has offset 0).

The definition of A280345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280345.P11159356857183546691

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=3, a(1)=7, a(2)=12`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280345

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P11159356857183546691.Spec : Prop :=
  ∀ n, P11159356857183546691.a n = A280345 n

theorem P11159356857183546691.correct : P11159356857183546691.Spec := by
  intro n
  simp only [A280345]

end A280345

/-! ## A280345.P18446070624674832834

`2^(n+2)-A051049(n)`
-/

namespace A280345.P18446070624674832834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A051049 n

end

end A280345.P18446070624674832834

namespace A280345

/-- `2^(n+2)-A051049(n)` -/
def P18446070624674832834.Spec : Prop :=
  ∀ n, P18446070624674832834.a n = A280345 n

end A280345

/-! ## A280345.P481026775187607152

`n%2+3*2^n`
-/

namespace A280345.P481026775187607152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 3 * 2 ^ n

end

end A280345.P481026775187607152

namespace A280345

/-- `n%2+3*2^n` -/
def P481026775187607152.Spec : Prop :=
  ∀ n, (P481026775187607152.a n : ℤ) = A280345 n

end A280345

/-! ## A280345.P5413728702760771407

`ogf((3+x-5x^2)/(1-2x-x^2+2x^3))`
-/

namespace A280345.P5413728702760771407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -5] [1, -2, -1, 2] n

end

end A280345.P5413728702760771407

namespace A280345

/-- `ogf((3+x-5x^2)/(1-2x-x^2+2x^3))` -/
def P5413728702760771407.Spec : Prop :=
  ∀ n, P5413728702760771407.a n = A280345 n

end A280345

/-! ## A280345.P8821550932453690093

`or((n+2)%2, lcm(3, 2^n))`
-/

namespace A280345.P8821550932453690093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor ((n + 2) % 2) (Nat.lcm 3 (2 ^ n))

end

end A280345.P8821550932453690093

namespace A280345

/-- `or((n+2)%2, lcm(3, 2^n))` -/
def P8821550932453690093.Spec : Prop :=
  ∀ n, (P8821550932453690093.a n : ℤ) = A280345 n

end A280345

/-! ## A280345.P5301543179893888329

`xor(2*a(n-1), gcd(2, n))` with `a(0)=3`
-/

namespace A280345.P5301543179893888329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor (2 * a (n - 1)) (Nat.gcd 2 n)

end

end A280345.P5301543179893888329

namespace A280345

/-- `xor(2*a(n-1), gcd(2, n))` -/
def P5301543179893888329.Spec : Prop :=
  ∀ n, (P5301543179893888329.a n : ℤ) = A280345 n

end A280345

/-! ## A280345.P11413853632832510638

`char[2*n+1]+3*2^n`
-/

namespace A280345.P11413853632832510638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 3 * 2 ^ n

end

end A280345.P11413853632832510638

namespace A280345

/-- `char[2*n+1]+3*2^n` -/
def P11413853632832510638.Spec : Prop :=
  ∀ n, (P11413853632832510638.a n : ℤ) = A280345 n

end A280345

/-! ## A280345.P14842958840916313013

`xor(2*a(n-1), ∑{d}[n, round(1/#)])` with `a(0)=3`
-/

namespace A280345.P14842958840916313013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.xor (2 * a (n - 1)) (∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (1 / (d : ℚ)))

end

end A280345.P14842958840916313013

namespace A280345

/-- `xor(2*a(n-1), ∑{d}[n, round(1/#)])` -/
def P14842958840916313013.Spec : Prop :=
  ∀ n, P14842958840916313013.a n = A280345 n

end A280345

/-! ## A280345.P10446969669671626734

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=3, a(1)=4, a(2)=5`
-/

namespace A280345.P10446969669671626734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 5] fun n f1 =>
  f1 (n - 2) + f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280345.P10446969669671626734

namespace A280345

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P10446969669671626734.Spec : Prop :=
  ∀ n, (P10446969669671626734.a n : ℤ) = A280345 n

end A280345

/-! ## A280345.P4263914615304177402

`or(n%2, A042950(n+1))`
-/

namespace A280345.P4263914615304177402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A042950 (n + 1))

end

end A280345.P4263914615304177402

namespace A280345

/-- `or(n%2, A042950(n+1))` -/
def P4263914615304177402.Spec : Prop :=
  ∀ n, P4263914615304177402.a n = A280345 n

end A280345

/-! ## A280345.P335687434499667287

`xor(A000035(n), A007283(n))`
-/

namespace A280345.P335687434499667287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A007283 n)

end

end A280345.P335687434499667287

namespace A280345

/-- `xor(A000035(n), A007283(n))` -/
def P335687434499667287.Spec : Prop :=
  ∀ n, P335687434499667287.a n = A280345 n

end A280345

/-! ## A280345.P6352765808986100405

`xor(A201630(n), A279872(n))`
-/

namespace A280345.P6352765808986100405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A201630 n) (A279872 n)

end

end A280345.P6352765808986100405

namespace A280345

/-- `xor(A201630(n), A279872(n))` -/
def P6352765808986100405.Spec : Prop :=
  ∀ n, P6352765808986100405.a n = A280345 n

end A280345

/-! ## A280345.P11234101141987321816

`xor(A084173(n), A123720(n+1))`
-/

namespace A280345.P11234101141987321816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084173 n) (A123720 (n + 1))

end

end A280345.P11234101141987321816

namespace A280345

/-- `xor(A084173(n), A123720(n+1))` -/
def P11234101141987321816.Spec : Prop :=
  ∀ n, P11234101141987321816.a n = A280345 n

end A280345

/-! ## A280345.P2055058505507941232

`xor(A081253(n+1), A283642(n))`
-/

namespace A280345.P2055058505507941232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081253 (n + 1)) (A283642 n)

end

end A280345.P2055058505507941232

namespace A280345

/-- `xor(A081253(n+1), A283642(n))` -/
def P2055058505507941232.Spec : Prop :=
  ∀ n, P2055058505507941232.a n = A280345 n

end A280345

/-! ## A280345.P15283680148467466490

`record[A308709(n+1)+A000035(n)]`
-/

namespace A280345.P15283680148467466490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 (n + 1) + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280345.P15283680148467466490

namespace A280345

/-- `record[A308709(n+1)+A000035(n)]` -/
def P15283680148467466490.Spec : Prop :=
  ∀ n, P15283680148467466490.a n = A280345 n

end A280345

/-! ## A280345.P4528498025102933598

`record[A308709(n+1)+A021913(n)]`
-/

namespace A280345.P4528498025102933598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 (n + 1) + A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280345.P4528498025102933598

namespace A280345

/-- `record[A308709(n+1)+A021913(n)]` -/
def P4528498025102933598.Spec : Prop :=
  ∀ n, P4528498025102933598.a n = A280345 n

end A280345

/-! ## A280345.P16065885375867785862

`or(log2(A134451(n+1)), A029744(2*n+3))`
-/

namespace A280345.P16065885375867785862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.logb 2 (A134451 (n + 1) : ℝ))) (A029744 (2 * n + 3))

end

end A280345.P16065885375867785862

namespace A280345

/-- `or(log2(A134451(n+1)), A029744(2*n+3))` -/
def P16065885375867785862.Spec : Prop :=
  ∀ n, P16065885375867785862.a n = A280345 n

end A280345

/-! ## A280345.P6899621910275286772

`record[A308709(n+1)+A046980(2*(n+1))]`
-/

namespace A280345.P6899621910275286772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 (n + 1) + A046980 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280345.P6899621910275286772

namespace A280345

/-- `record[A308709(n+1)+A046980(2*(n+1))]` -/
def P6899621910275286772.Spec : Prop :=
  ∀ n, P6899621910275286772.a n = A280345 n

end A280345

/-! ## A280345.P14871348853150754899

`record[A308709(n+1)+A102560(2*(n+1))]`
-/

namespace A280345.P14871348853150754899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 (n + 1) + A102560 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280345.P14871348853150754899

namespace A280345

/-- `record[A308709(n+1)+A102560(2*(n+1))]` -/
def P14871348853150754899.Spec : Prop :=
  ∀ n, P14871348853150754899.a n = A280345 n

end A280345

/-! ## A280345.P8963900632843545148

`Δ[A033484(n)+floor(n/2)]`
-/

namespace A280345.P8963900632843545148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n + ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280345.P8963900632843545148

namespace A280345

/-- `Δ[A033484(n)+floor(n/2)]` -/
def P8963900632843545148.Spec : Prop :=
  ∀ n, P8963900632843545148.a n = A280345 n

end A280345

/-!
# A280346: 

The programs for A280346, there is no canonical definition to state claims against.
-/

/-! ## A280346.P4894785939604984872

`p?[round(8*n/7)]²^39`
-/

namespace A280346.P4894785939604984872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) ^ 39

end

end A280346.P4894785939604984872

/-! ## A280346.P2296982637564250859

`A042966(n+1)^78`
-/

namespace A280346.P2296982637564250859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1) ^ 78

end

end A280346.P2296982637564250859

/-! ## A280346.P7101484693979445166

`(p?[A018252(n+1)-7]^39)²`
-/

namespace A280346.P7101484693979445166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 39) ^ 2

end

end A280346.P7101484693979445166

/-!
# A280347: 

The programs for A280347, there is no canonical definition to state claims against.
-/

/-! ## A280347.P4570128315623003231

`A000040(n+1)²^41`
-/

namespace A280347.P4570128315623003231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2) ^ 41

end

end A280347.P4570128315623003231

/-!
# A280349: 

The programs for A280349, there is no canonical definition to state claims against.
-/

/-! ## A280349.P5534817939678093207

`(A000040(n+1)^44)²`
-/

namespace A280349.P5534817939678093207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 44) ^ 2

end

end A280349.P5534817939678093207

/-!
# A280350: 

The programs for A280350, there is no canonical definition to state claims against.
-/

/-! ## A280350.P5087563409333954865

`(p?[∏{d}[n, #]]²^24)²`
-/

namespace A280350.P5087563409333954865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2) ^ 24) ^ 2

end

end A280350.P5087563409333954865

/-!
# A280351: Expansion of Sum_{k>=0} (x/(1 - x))^(k^3).

The programs for A280351, there is no canonical definition to state claims against.
-/

/-! ## A280351.P17571624175374217257

`A000027(C(abs(1-n), 7)+1)`
-/

namespace A280351.P17571624175374217257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose |1 - (n : ℤ)|.toNat 7 + 1)

end

end A280351.P17571624175374217257

/-! ## A280351.P7398096408408500680

`C(A057428(A000045(n))+n, 7)+1`
-/

namespace A280351.P7398096408408500680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057428 (A000045 n).toNat + (n : ℤ)).toNat 7 + 1

end

end A280351.P7398096408408500680

/-! ## A280351.P2004502283511002046

`C(A001222(ceil(2^(n-1))), 7)+1`
-/

namespace A280351.P2004502283511002046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat 7 + 1

end

end A280351.P2004502283511002046

/-! ## A280351.P1989146604384359960

`C(A051903(A011782(n)), 7)+1`
-/

namespace A280351.P1989146604384359960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051903 (A011782 n).toNat).toNat 7 + 1

end

end A280351.P1989146604384359960

/-! ## A280351.P3456976911086749451

`A131717(A306721(n))`
-/

namespace A280351.P3456976911086749451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (A306721 n).toNat

end

end A280351.P3456976911086749451

/-!
# A280352: Expansion of Sum_{k>=1} (x/(1 - x))^(k*(k+1)/2).

The programs for A280352, there is no canonical definition to state claims against.
-/

/-! ## A280352.P9525717133444601184

`Δ[A143961(n)]`
-/

namespace A280352.P9525717133444601184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280352.P9525717133444601184

/-! ## A280352.P7347476650390955939

`A143961(n+1)-A143961(n)`
-/

namespace A280352.P7347476650390955939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143961 (n + 1) - A143961 n

end

end A280352.P7347476650390955939

/-! ## A280352.P8786598210297623532

`Δ[A065979(n+1)]-A065979(n+1)`
-/

namespace A280352.P8786598210297623532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A065979 (n + 1)

end

end A280352.P8786598210297623532

/-! ## A280352.P5060238051672307782

`A065979(n+2)%(A065979(n+1)+A000007(n))`
-/

namespace A280352.P5060238051672307782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065979 (n + 2)) (A065979 (n + 1) + A000007 n)

end

end A280352.P5060238051672307782

/-! ## A280352.P11312792176489264278

`A028310(A065979(n+2)%A065979(n+1))`
-/

namespace A280352.P11312792176489264278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A065979 (n + 2)) (A065979 (n + 1))).toNat

end

end A280352.P11312792176489264278

/-!
# A280353: Numbers n such that the sum of the divisors of n divides sum of squares of divisors of n and number of divisors of n divides n.

The programs for A280353, there is no canonical definition to state claims against.
-/

/-! ## A280353.P13912063388169345829

`∩[A020487(n+1), A033950(n+1)]`
-/

namespace A280353.P13912063388169345829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280353.P13912063388169345829

/-! ## A280353.P11144573363570173110

`∩[∪[(n+1)², A227771(n+1)], A033950(n+1)]`
-/

namespace A280353.P11144573363570173110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227771 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A280353.P11144573363570173110

/-! ## A280353.P880840256008857522

`filter[A020487(n+1), A336040(#)]`
-/

namespace A280353.P880840256008857522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A280353.P880840256008857522

/-! ## A280353.P7948554750841309606

`record[A122377(A020487(n+1))]`
-/

namespace A280353.P7948554750841309606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A020487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280353.P7948554750841309606

/-! ## A280353.P1036913679734858128

`record[A122377(∪[(n+1)², A227771(n+1)])]`
-/

namespace A280353.P1036913679734858128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227771 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280353.P1036913679734858128

/-!
# A280355: Numbers that are divisible by the sum of their digits and for which the sum of digits equals the product of digits.

The programs for A280355, there is no canonical definition to state claims against.
-/

/-! ## A280355.P18352908110386809457

`∩[A007602(n+1), A034710(n+1)]`
-/

namespace A280355.P18352908110386809457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280355.P18352908110386809457

/-! ## A280355.P10477905584123120990

`∩[A034710(n+1), A038186(n+1)]`
-/

namespace A280355.P10477905584123120990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280355.P10477905584123120990

/-! ## A280355.P7647422538762626832

`∩[A007602(n+1), A342048(n+1)]`
-/

namespace A280355.P7647422538762626832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280355.P7647422538762626832

/-! ## A280355.P15112361153452658941

`∩[A038186(n+1), A342048(n+1)]`
-/

namespace A280355.P15112361153452658941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280355.P15112361153452658941

/-! ## A280355.P17042062452020348619

`∩[A034710(n+1), A051004(n+1)]`
-/

namespace A280355.P17042062452020348619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280355.P17042062452020348619

/-!
# A280358: Number of n X 3 0..2 arrays with no element equal to more than one of its horizontal and vertical neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280358, there is no canonical definition to state claims against.
-/

/-! ## A280358.P4616685453682693770

`A280362(∑[n+2]+4)`
-/

namespace A280358.P4616685453682693770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280358.P4616685453682693770

/-! ## A280358.P17327444522797484188

`lcm(A020985(n), A280362(A167614(n+1)))`
-/

namespace A280358.P17327444522797484188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A280362 (A167614 (n + 1)).toNat)

end

end A280358.P17327444522797484188

/-! ## A280358.P8580014983960368137

`or(A280362(A167614(n+1)), A316864(n))`
-/

namespace A280358.P8580014983960368137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A280362 (A167614 (n + 1)).toNat) (A316864 n)

end

end A280358.P8580014983960368137

/-! ## A280358.P10345541392289660603

`A280362(A167614(n+1))+A034506(n+1)`
-/

namespace A280358.P10345541392289660603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (A167614 (n + 1)).toNat + A034506 (n + 1)

end

end A280358.P10345541392289660603

/-! ## A280358.P2503428172879612486

`A280362(A167614(n+1))+A034555(n+1)`
-/

namespace A280358.P2503428172879612486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (A167614 (n + 1)).toNat + A034555 (n + 1)

end

end A280358.P2503428172879612486

/-!
# A280359: Number of nX4 0..2 arrays with no element equal to more than one of its horizontal and vertical neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280359, there is no canonical definition to state claims against.
-/

/-! ## A280359.P16320678304742182681

`A280362(A141214(n)+7)`
-/

namespace A280359.P16320678304742182681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (A141214 n + 7).toNat

end

end A280359.P16320678304742182681

/-! ## A280359.P6007322814239326865

`A280362(A052905(n)+9)`
-/

namespace A280359.P6007322814239326865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (A052905 n + 9).toNat

end

end A280359.P6007322814239326865

/-! ## A280359.P15275003712477421072

`A280362(A055999(n)+10)`
-/

namespace A280359.P15275003712477421072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (A055999 n + 10).toNat

end

end A280359.P15275003712477421072

/-! ## A280359.P13862229997215690346

`A280362(A167614(n+2)+1)`
-/

namespace A280359.P13862229997215690346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (A167614 (n + 2) + 1).toNat

end

end A280359.P13862229997215690346

/-! ## A280359.P2874600277794344331

`A280362(A000124(n+3)+3)`
-/

namespace A280359.P2874600277794344331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (A000124 (n + 3) + 3).toNat

end

end A280359.P2874600277794344331

/-!
# A280360: Number of nX5 0..2 arrays with no element equal to more than one of its horizontal and vertical neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280360, there is no canonical definition to state claims against.
-/

/-! ## A280360.P7720924220716746337

`A280362(A167499(n+3))`
-/

namespace A280360.P7720924220716746337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (A167499 (n + 3)).toNat

end

end A280360.P7720924220716746337

/-! ## A280360.P16975834382546232496

`A280362(A155212(n)+13)`
-/

namespace A280360.P16975834382546232496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (A155212 n + 13).toNat

end

end A280360.P16975834382546232496

/-! ## A280360.P11771326954245610972

`A280362(A056000(n)+15)`
-/

namespace A280360.P11771326954245610972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (A056000 n + 15).toNat

end

end A280360.P11771326954245610972

/-! ## A280360.P13039891994835584978

`A280362(eq[7, A066657(n)])`
-/

namespace A280360.P13039891994835584978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280360.P13039891994835584978

/-! ## A280360.P1782623111041136202

`A280362(eq[6, A131818(n+1)])`
-/

namespace A280360.P1782623111041136202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280360.P1782623111041136202

/-!
# A280361: Number of nX6 0..2 arrays with no element equal to more than one of its horizontal and vertical neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280361, there is no canonical definition to state claims against.
-/

/-! ## A280361.P2559600578565260020

`A280362(A056115(n)+21)`
-/

namespace A280361.P2559600578565260020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (A056115 n + 21).toNat

end

end A280361.P2559600578565260020

/-! ## A280361.P4612087874593032255

`A280362(A141214(n+2)+9)`
-/

namespace A280361.P4612087874593032255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (A141214 (n + 2) + 9).toNat

end

end A280361.P4612087874593032255

/-! ## A280361.P9150088628488380071

`A280362(eq[5, A002262(n)]+1)`
-/

namespace A280361.P9150088628488380071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A280361.P9150088628488380071

/-! ## A280361.P386199184535669897

`A280362(eq[7, A131818(n+1)])`
-/

namespace A280361.P386199184535669897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280361.P386199184535669897

/-! ## A280361.P3523539998583200891

`A280362(eq[6, A002260(n+1)]+1)`
-/

namespace A280361.P3523539998583200891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A280361.P3523539998583200891

/-!
# A280363: a(n) = floor(log_p(n)) where p = A020639(n), i.e., the least prime factor of n.

The programs for A280363, there is no canonical definition to state claims against.
-/

/-! ## A280363.P4932248685350018500

`val(A064446(n+1), A111089(A028233(n+1)))`
-/

namespace A280363.P4932248685350018500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064446 (n + 1)).toNat (A111089 (A028233 (n + 1)).toNat).toNat

end

end A280363.P4932248685350018500

/-! ## A280363.P6599722016391933582

`val(A064446(n+1), A111089(A068794(n+1)))`
-/

namespace A280363.P6599722016391933582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064446 (n + 1)).toNat (A111089 (A068794 (n + 1)).toNat).toNat

end

end A280363.P6599722016391933582

/-! ## A280363.P4205589758332265005

`val(A064446(n+1), A205006(A020639(n+1)))`
-/

namespace A280363.P4205589758332265005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064446 (n + 1)).toNat (A205006 (A020639 (n + 1)).toNat).toNat

end

end A280363.P4205589758332265005

/-! ## A280363.P2331342802578970189

`val(A064446(n+1), A111089(A304181(n+1)))`
-/

namespace A280363.P2331342802578970189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064446 (n + 1)).toNat (A111089 (A304181 (n + 1)).toNat).toNat

end

end A280363.P2331342802578970189

/-! ## A280363.P2611414811353163306

`val(A064446(n+1), A020639(A129598(n+1)))`
-/

namespace A280363.P2611414811353163306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064446 (n + 1)).toNat (A020639 (A129598 (n + 1)).toNat).toNat

end

end A280363.P2611414811353163306

/-! ## A280363.P10096839095223369623

`val(∏[A014963(n+1)], A020639(19*(n+1)))`
-/

namespace A280363.P10096839095223369623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (A020639 (19 * (n + 1))).toNat

end

end A280363.P10096839095223369623

/-! ## A280363.P7053509102193358722

`val(A003418(n+1), A254667(A020639(n+1)))`
-/

namespace A280363.P7053509102193358722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003418 (n + 1)).toNat (A254667 (A020639 (n + 1)).toNat).toNat

end

end A280363.P7053509102193358722

/-! ## A280363.P10917500592015379063

`val(A003418(n+1), A020639(A233583(n+2)))`
-/

namespace A280363.P10917500592015379063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003418 (n + 1)).toNat (A020639 (A233583 (n + 2)).toNat).toNat

end

end A280363.P10917500592015379063

/-! ## A280363.P530315674212050851

`A088388(A064446(n+1)/A028234(n+1))`
-/

namespace A280363.P530315674212050851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (SequenceMachineLib.roundAway ((A064446 (n + 1) : ℚ) / (A028234 (n + 1) : ℚ))).toNat

end

end A280363.P530315674212050851

/-! ## A280363.P3462433765865489190

`val(A064446(n+1), A020639(A033286(n+1)))`
-/

namespace A280363.P3462433765865489190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064446 (n + 1)).toNat (A020639 (A033286 (n + 1)).toNat).toNat

end

end A280363.P3462433765865489190

/-!
# A280364: Number of 2 X 2 matrices with all elements in {0,...,n} with permanent = determinant^n.

The programs for A280364, the canonical program `A280364.P13229320932049152870` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280364 has offset 0).

The definition of A280364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280364.P4983471882438673378

`(2*n+1)*∑[gcd(3, a(n-2))]` with `a(0)=0, a(1)=4`
-/

namespace A280364.P4983471882438673378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  Nat.gcd 3 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280364.P4983471882438673378

namespace A280364

/-- `(2*n+1)*∑[gcd(3, a(n-2))]` -/
def P4983471882438673378.Spec : Prop :=
  ∀ n, (P4983471882438673378.a n : ℤ) = A280364 n

end A280364

/-! ## A280364.P13229320932049152870

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=12, a(2)=35, a(3)=56, a(4)=99, a(5)=132`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280364

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P13229320932049152870.Spec : Prop :=
  ∀ n, P13229320932049152870.a n = A280364 n

theorem P13229320932049152870.correct : P13229320932049152870.Spec := by
  intro n
  simp only [A280364]

end A280364

/-! ## A280364.P10862392780157018502

`A280344(n)+A266439(n)`
-/

namespace A280364.P10862392780157018502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280344 n + A266439 n

end

end A280364.P10862392780157018502

namespace A280364

/-- `A280344(n)+A266439(n)` -/
def P10862392780157018502.Spec : Prop :=
  ∀ n, P10862392780157018502.a n = A280364 n

end A280364

/-! ## A280364.P2023031374653651077

`record[xor(1, n+1)]*A014601(n+1)`
-/

namespace A280364.P2023031374653651077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) * A014601 (n + 1)

end

end A280364.P2023031374653651077

namespace A280364

/-- `record[xor(1, n+1)]*A014601(n+1)` -/
def P2023031374653651077.Spec : Prop :=
  ∀ n, P2023031374653651077.a n = A280364 n

end A280364

/-! ## A280364.P9050987193823429536

`record[A004442(n+1)]*record[A159966(n+1)]`
-/

namespace A280364.P9050987193823429536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A280364.P9050987193823429536

namespace A280364

/-- `record[A004442(n+1)]*record[A159966(n+1)]` -/
def P9050987193823429536.Spec : Prop :=
  ∀ n, P9050987193823429536.a n = A280364 n

end A280364

/-! ## A280364.P8264517062600059350

`record[A004442(n+1)]*A116966(2*n+1)`
-/

namespace A280364.P8264517062600059350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A116966 (2 * n + 1)

end

end A280364.P8264517062600059350

namespace A280364

/-- `record[A004442(n+1)]*A116966(2*n+1)` -/
def P8264517062600059350.Spec : Prop :=
  ∀ n, P8264517062600059350.a n = A280364 n

end A280364

/-! ## A280364.P14553492812882460604

`(A053438(n+1)+1)*A063196(2*n+1)`
-/

namespace A280364.P14553492812882460604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053438 (n + 1) + 1) * A063196 (2 * n + 1)

end

end A280364.P14553492812882460604

namespace A280364

/-- `(A053438(n+1)+1)*A063196(2*n+1)` -/
def P14553492812882460604.Spec : Prop :=
  ∀ n, P14553492812882460604.a n = A280364 n

end A280364

/-! ## A280364.P7335816508656617987

`A098181(2*n+1)*A163300(2*n+1)/2`
-/

namespace A280364.P7335816508656617987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098181 (2 * n + 1) * A163300 (2 * n + 1) : ℚ) / 2

end

end A280364.P7335816508656617987

namespace A280364

/-- `A098181(2*n+1)*A163300(2*n+1)/2` -/
def P7335816508656617987.Spec : Prop :=
  ∀ n, P7335816508656617987.a n = (A280364 n : ℚ)

end A280364

/-! ## A280364.P2111515198894842263

`(A047247(2*(n+1))-n)*A063196(2*n+1)`
-/

namespace A280364.P2111515198894842263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047247 (2 * (n + 1)) - (n : ℤ)) * A063196 (2 * n + 1)

end

end A280364.P2111515198894842263

namespace A280364

/-- `(A047247(2*(n+1))-n)*A063196(2*n+1)` -/
def P2111515198894842263.Spec : Prop :=
  ∀ n, P2111515198894842263.a n = A280364 n

end A280364

/-! ## A280364.P4027147510629983574

`(A106249(2*n)+n+2)*A087156(2*n+1)`
-/

namespace A280364.P4027147510629983574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106249 (2 * n) + (n + 2 : ℤ)) * A087156 (2 * n + 1)

end

end A280364.P4027147510629983574

namespace A280364

/-- `(A106249(2*n)+n+2)*A087156(2*n+1)` -/
def P4027147510629983574.Spec : Prop :=
  ∀ n, P4027147510629983574.a n = A280364 n

end A280364

/-! ## A280364.P10495930861400106290

`(2*(n+1)+A000035(n+1))*A087156(2*n+1)`
-/

namespace A280364.P10495930861400106290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) + A000035 (n + 1)) * A087156 (2 * n + 1)

end

end A280364.P10495930861400106290

namespace A280364

/-- `(2*(n+1)+A000035(n+1))*A087156(2*n+1)` -/
def P10495930861400106290.Spec : Prop :=
  ∀ n, P10495930861400106290.a n = A280364 n

end A280364

/-! ## A280364.P6791904898446768246

`(n+2+A004525(2*n+1))*A087156(2*n+1)`
-/

namespace A280364.P6791904898446768246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) + A004525 (2 * n + 1)) * A087156 (2 * n + 1)

end

end A280364.P6791904898446768246

namespace A280364

/-- `(n+2+A004525(2*n+1))*A087156(2*n+1)` -/
def P6791904898446768246.Spec : Prop :=
  ∀ n, P6791904898446768246.a n = A280364 n

end A280364

/-! ## A280364.P3900080386146208955

`A153152(2*n)*A292576(A292576(2*(n+1)))`
-/

namespace A280364.P3900080386146208955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (2 * n) * A292576 (A292576 (2 * (n + 1))).toNat

end

end A280364.P3900080386146208955

namespace A280364

/-- `A153152(2*n)*A292576(A292576(2*(n+1)))` -/
def P3900080386146208955.Spec : Prop :=
  ∀ n, P3900080386146208955.a n = A280364 n

end A280364

/-! ## A280364.P6609068568269811040

`A000217(2*n)/A065033(2*n)*A014601(n+1)`
-/

namespace A280364.P6609068568269811040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * n) : ℚ) / (A065033 (2 * n) : ℚ) * (A014601 (n + 1) : ℚ)

end

end A280364.P6609068568269811040

namespace A280364

/-- `A000217(2*n)/A065033(2*n)*A014601(n+1)` -/
def P6609068568269811040.Spec : Prop :=
  ∀ n, P6609068568269811040.a n = (A280364 n : ℚ)

end A280364

/-! ## A280364.P18047072717144123252

`(A063196(2*n+1)+A000034(n+1))*A063196(2*n+1)`
-/

namespace A280364.P18047072717144123252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063196 (2 * n + 1) + A000034 (n + 1)) * A063196 (2 * n + 1)

end

end A280364.P18047072717144123252

namespace A280364

/-- `(A063196(2*n+1)+A000034(n+1))*A063196(2*n+1)` -/
def P18047072717144123252.Spec : Prop :=
  ∀ n, P18047072717144123252.a n = A280364 n

end A280364

/-! ## A280364.P8506088221154250556

`(A184985(n+2)+A004525(2*n+1))*A184985(2*n+1)`
-/

namespace A280364.P8506088221154250556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A184985 (n + 2) + A004525 (2 * n + 1)) * A184985 (2 * n + 1)

end

end A280364.P8506088221154250556

namespace A280364

/-- `(A184985(n+2)+A004525(2*n+1))*A184985(2*n+1)` -/
def P8506088221154250556.Spec : Prop :=
  ∀ n, P8506088221154250556.a n = A280364 n

end A280364

/-! ## A280364.P5874884872846347341

`Δ[A123108(2*n)²]*A014601(n+1)`
-/

namespace A280364.P5874884872846347341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A014601 (n + 1)

end

end A280364.P5874884872846347341

namespace A280364

/-- `Δ[A123108(2*n)²]*A014601(n+1)` -/
def P5874884872846347341.Spec : Prop :=
  ∀ n, P5874884872846347341.a n = A280364 n

end A280364

/-! ## A280364.P12306782719623666440

`A267530(4*n)²-A019425(A267530(2*n))`
-/

namespace A280364.P12306782719623666440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267530 (4 * n) ^ 2 - A019425 (A267530 (2 * n)).toNat

end

end A280364.P12306782719623666440

namespace A280364

/-- `A267530(4*n)²-A019425(A267530(2*n))` -/
def P12306782719623666440.Spec : Prop :=
  ∀ n, P12306782719623666440.a n = A280364 n

end A280364

/-!
# A280365: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 278", based on the 5-celled von Neumann neighborhood.

The programs for A280365, there is no canonical definition to state claims against.
-/

/-! ## A280365.P17792206473308290545

`A007088(A280525(n))`
-/

namespace A280365.P17792206473308290545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280525 n).toNat

end

end A280365.P17792206473308290545

/-! ## A280365.P5645713072903011339

`A007088(A126646(n+1)-A283254(n+1))`
-/

namespace A280365.P5645713072903011339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 (n + 1) - A283254 (n + 1)).toNat

end

end A280365.P5645713072903011339

/-! ## A280365.P6694221050200094220

`A007088(A000079(n+2)-1-A283254(n+1))`
-/

namespace A280365.P6694221050200094220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000079 (n + 2) - 1 - A283254 (n + 1)).toNat

end

end A280365.P6694221050200094220

/-! ## A280365.P3710089323669435674

`A007088(A000203(2^(n+1))-A283254(n+1))`
-/

namespace A280365.P3710089323669435674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000203 (2 ^ (n + 1)) - A283254 (n + 1)).toNat

end

end A280365.P3710089323669435674

/-! ## A280365.P4019832734686658239

`A185544(2*A280525(n))`
-/

namespace A280365.P4019832734686658239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280525 n).toNat

end

end A280365.P4019832734686658239

/-!
# A280367: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

The programs for A280367, there is no canonical definition to state claims against.
-/

/-! ## A280367.P11964108032211400229

`A007088(A280369(n))`
-/

namespace A280367.P11964108032211400229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280369 n).toNat

end

end A280367.P11964108032211400229

/-! ## A280367.P1989260400109623672

`A007088(floor(A266590(n)/A000079(n)))`
-/

namespace A280367.P1989260400109623672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A266590 n : ℚ) / (A000079 n : ℚ)⌋.toNat

end

end A280367.P1989260400109623672

/-! ## A280367.P1739561652005800148

`A007088(floor(A266590(n)/A106624(2*n)))`
-/

namespace A280367.P1739561652005800148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A266590 n : ℚ) / (A106624 (2 * n) : ℚ)⌋.toNat

end

end A280367.P1739561652005800148

/-! ## A280367.P2374462311958845729

`A185544(2*A280369(n))`
-/

namespace A280367.P2374462311958845729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280369 n).toNat

end

end A280367.P2374462311958845729

/-! ## A280367.P17193953020901679055

`A185544(A280369(n)+A280369(n))`
-/

namespace A280367.P17193953020901679055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A280369 n + A280369 n).toNat

end

end A280367.P17193953020901679055

/-!
# A280368: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

The programs for A280368, there is no canonical definition to state claims against.
-/

/-! ## A280368.P8869439991931206579

`A007088(A280370(n))`
-/

namespace A280368.P8869439991931206579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280370 n).toNat

end

end A280368.P8869439991931206579

/-! ## A280368.P2754137045545018857

`A007088(A266590(n)%A198633(n))`
-/

namespace A280368.P2754137045545018857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A266590 n) (A198633 n)).toNat

end

end A280368.P2754137045545018857

/-! ## A280368.P5453670013007279580

`A007088(and(A126646(n), A266590(n)))`
-/

namespace A280368.P5453670013007279580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A126646 n) (A266590 n)).toNat

end

end A280368.P5453670013007279580

/-! ## A280368.P3585398427282316881

`A007088(and(A266590(n), A267604(n)))`
-/

namespace A280368.P3585398427282316881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A266590 n) (A267604 n)).toNat

end

end A280368.P3585398427282316881

/-! ## A280368.P18257822510244631299

`A007088(and(A266590(n), A281482(n)))`
-/

namespace A280368.P18257822510244631299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A266590 n) (A281482 n)).toNat

end

end A280368.P18257822510244631299

/-!
# A280369: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

The programs for A280369, the canonical program `A280369.P1654784503309744944` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280369 has offset 0).

The definition of A280369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280369.P11466186829786284639

`gcd(4-A287197(n), A000038(n))`
-/

namespace A280369.P11466186829786284639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 - A287197 n) (A000038 n)

end

end A280369.P11466186829786284639

namespace A280369

/-- `gcd(4-A287197(n), A000038(n))` -/
def P11466186829786284639.Spec : Prop :=
  ∀ n, (P11466186829786284639.a n : ℤ) = A280369 n

end A280369

/-! ## A280369.P15627539251147796516

`gcd(4-A277799(n), A169585(n))`
-/

namespace A280369.P15627539251147796516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 - A277799 n) (A169585 n)

end

end A280369.P15627539251147796516

namespace A280369

/-- `gcd(4-A277799(n), A169585(n))` -/
def P15627539251147796516.Spec : Prop :=
  ∀ n, (P15627539251147796516.a n : ℤ) = A280369 n

end A280369

/-! ## A280369.P3354391026835031989

`A285844(A004525(2*n+1))-A279961(n+1)`
-/

namespace A280369.P3354391026835031989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285844 (A004525 (2 * n + 1)).toNat - A279961 (n + 1)

end

end A280369.P3354391026835031989

namespace A280369

/-- `A285844(A004525(2*n+1))-A279961(n+1)` -/
def P3354391026835031989.Spec : Prop :=
  ∀ n, P3354391026835031989.a n = A280369 n

end A280369

/-! ## A280369.P1654784503309744944

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=8, a(4)=3, a(5)=56`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280369

/-- `5*a(n-2)-4*a(n-4)` -/
def P1654784503309744944.Spec : Prop :=
  ∀ n, P1654784503309744944.a n = A280369 n

theorem P1654784503309744944.correct : P1654784503309744944.Spec := by
  intro n
  simp only [A280369]

end A280369

/-! ## A280369.P849869640392781283

`floor(A266590(n)/A000079(n))`
-/

namespace A280369.P849869640392781283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266590 n : ℚ) / (A000079 n : ℚ)⌋

end

end A280369.P849869640392781283

namespace A280369

/-- `floor(A266590(n)/A000079(n))` -/
def P849869640392781283.Spec : Prop :=
  ∀ n, P849869640392781283.a n = A280369 n

end A280369

/-! ## A280369.P9841590020445913342

`floor(A266590(n)/record[A106624(n)])`
-/

namespace A280369.P9841590020445913342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266590 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A280369.P9841590020445913342

namespace A280369

/-- `floor(A266590(n)/record[A106624(n)])` -/
def P9841590020445913342.Spec : Prop :=
  ∀ n, P9841590020445913342.a n = A280369 n

end A280369

/-! ## A280369.P4756947262117322954

`floor(A266590(n)/A106624(2*n))`
-/

namespace A280369.P4756947262117322954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266590 n : ℚ) / (A106624 (2 * n) : ℚ)⌋

end

end A280369.P4756947262117322954

namespace A280369

/-- `floor(A266590(n)/A106624(2*n))` -/
def P4756947262117322954.Spec : Prop :=
  ∀ n, P4756947262117322954.a n = A280369 n

end A280369

/-!
# A280370: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

The programs for A280370, the canonical program `A280370.P17459165021751007918` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280370 has offset 0).

The definition of A280370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280370.P469282023613503185

`3*n%2+4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=1`
-/

namespace A280370.P469282023613503185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6, 1] fun n a =>
  3 * (n % 2) + 4 * a (n - 2)

end

end A280370.P469282023613503185

namespace A280370

/-- `3*n%2+4*a(n-2)` -/
def P469282023613503185.Spec : Prop :=
  ∀ n, (P469282023613503185.a n : ℤ) = A280370 n

end A280370

/-! ## A280370.P17459165021751007918

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=1, a(4)=24, a(5)=7`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280370

/-- `5*a(n-2)-4*a(n-4)` -/
def P17459165021751007918.Spec : Prop :=
  ∀ n, P17459165021751007918.a n = A280370 n

theorem P17459165021751007918.correct : P17459165021751007918.Spec := by
  intro n
  simp only [A280370]

end A280370

/-! ## A280370.P549454892609986105

`A266590(n)%A198633(n)`
-/

namespace A280370.P549454892609986105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266590 n) (A198633 n)

end

end A280370.P549454892609986105

namespace A280370

/-- `A266590(n)%A198633(n)` -/
def P549454892609986105.Spec : Prop :=
  ∀ n, P549454892609986105.a n = A280370 n

end A280370

/-! ## A280370.P1581319417233897120

`and(A126646(n), A266590(n))`
-/

namespace A280370.P1581319417233897120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A266590 n)

end

end A280370.P1581319417233897120

namespace A280370

/-- `and(A126646(n), A266590(n))` -/
def P1581319417233897120.Spec : Prop :=
  ∀ n, P1581319417233897120.a n = A280370 n

end A280370

/-! ## A280370.P10420729853642579274

`and(A266590(n), A267604(n))`
-/

namespace A280370.P10420729853642579274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266590 n) (A267604 n)

end

end A280370.P10420729853642579274

namespace A280370

/-- `and(A266590(n), A267604(n))` -/
def P10420729853642579274.Spec : Prop :=
  ∀ n, P10420729853642579274.a n = A280370 n

end A280370

/-! ## A280370.P5641451532250966828

`and(A266590(n), A282123(n))`
-/

namespace A280370.P5641451532250966828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266590 n) (A282123 n)

end

end A280370.P5641451532250966828

namespace A280370

/-- `and(A266590(n), A282123(n))` -/
def P5641451532250966828.Spec : Prop :=
  ∀ n, P5641451532250966828.a n = A280370 n

end A280370

/-! ## A280370.P221486166186412360

`and(A266590(n), A283606(n))`
-/

namespace A280370.P221486166186412360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266590 n) (A283606 n)

end

end A280370.P221486166186412360

namespace A280370

/-- `and(A266590(n), A283606(n))` -/
def P221486166186412360.Spec : Prop :=
  ∀ n, P221486166186412360.a n = A280370 n

end A280370

/-! ## A280370.P9029997823171279534

`and(A266590(n), A284354(n))`
-/

namespace A280370.P9029997823171279534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266590 n) (A284354 n)

end

end A280370.P9029997823171279534

namespace A280370

/-- `and(A266590(n), A284354(n))` -/
def P9029997823171279534.Spec : Prop :=
  ∀ n, P9029997823171279534.a n = A280370 n

end A280370

/-! ## A280370.P7781118141523702954

`and(A266590(n), A285543(n))`
-/

namespace A280370.P7781118141523702954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266590 n) (A285543 n)

end

end A280370.P7781118141523702954

namespace A280370

/-- `and(A266590(n), A285543(n))` -/
def P7781118141523702954.Spec : Prop :=
  ∀ n, P7781118141523702954.a n = A280370 n

end A280370

/-! ## A280370.P5128439044212462037

`and(A266590(n), A285563(n))`
-/

namespace A280370.P5128439044212462037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266590 n) (A285563 n)

end

end A280370.P5128439044212462037

namespace A280370

/-- `and(A266590(n), A285563(n))` -/
def P5128439044212462037.Spec : Prop :=
  ∀ n, P5128439044212462037.a n = A280370 n

end A280370

/-! ## A280370.P558341096562321714

`and(A266590(n), A286207(n))`
-/

namespace A280370.P558341096562321714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266590 n) (A286207 n)

end

end A280370.P558341096562321714

namespace A280370

/-- `and(A266590(n), A286207(n))` -/
def P558341096562321714.Spec : Prop :=
  ∀ n, P558341096562321714.a n = A280370 n

end A280370

/-! ## A280370.P2185929225293783532

`and(A266590(n), A286502(n))`
-/

namespace A280370.P2185929225293783532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266590 n) (A286502 n)

end

end A280370.P2185929225293783532

namespace A280370

/-- `and(A266590(n), A286502(n))` -/
def P2185929225293783532.Spec : Prop :=
  ∀ n, P2185929225293783532.a n = A280370 n

end A280370

/-! ## A280370.P9821486757248481975

`and(A266590(n), A287189(n))`
-/

namespace A280370.P9821486757248481975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266590 n) (A287189 n)

end

end A280370.P9821486757248481975

namespace A280370

/-- `and(A266590(n), A287189(n))` -/
def P9821486757248481975.Spec : Prop :=
  ∀ n, P9821486757248481975.a n = A280370 n

end A280370

/-! ## A280370.P5136596522014213590

`and(A266590(n), A288804(n))`
-/

namespace A280370.P5136596522014213590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266590 n) (A288804 n)

end

end A280370.P5136596522014213590

namespace A280370

/-- `and(A266590(n), A288804(n))` -/
def P5136596522014213590.Spec : Prop :=
  ∀ n, P5136596522014213590.a n = A280370 n

end A280370

/-! ## A280370.P11850240555711138970

`and(A266590(n), A290620(n))`
-/

namespace A280370.P11850240555711138970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266590 n) (A290620 n)

end

end A280370.P11850240555711138970

namespace A280370

/-- `and(A266590(n), A290620(n))` -/
def P11850240555711138970.Spec : Prop :=
  ∀ n, P11850240555711138970.a n = A280370 n

end A280370

/-! ## A280370.P14476678845722625264

`and(A266590(n), A290628(n))`
-/

namespace A280370.P14476678845722625264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266590 n) (A290628 n)

end

end A280370.P14476678845722625264

namespace A280370

/-- `and(A266590(n), A290628(n))` -/
def P14476678845722625264.Spec : Prop :=
  ∀ n, P14476678845722625264.a n = A280370 n

end A280370

/-! ## A280370.P17251761552860264963

`and(A266590(n), A281482(n))`
-/

namespace A280370.P17251761552860264963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266590 n) (A281482 n)

end

end A280370.P17251761552860264963

namespace A280370

/-- `and(A266590(n), A281482(n))` -/
def P17251761552860264963.Spec : Prop :=
  ∀ n, P17251761552860264963.a n = A280370 n

end A280370

/-!
# A280371: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 260", based on the 5-celled von Neumann neighborhood.

The programs for A280371, there is no canonical definition to state claims against.
-/

/-! ## A280371.P6828044236044478926

`record[A284243(n)-A056830(n)]`
-/

namespace A280371.P6828044236044478926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284243 n - A056830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280371.P6828044236044478926

/-! ## A280371.P5228371099621323898

`A007088(A280373(n))`
-/

namespace A280371.P5228371099621323898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280373 n).toNat

end

end A280371.P5228371099621323898

/-! ## A280371.P4707951314933468614

`A007088(record[A284245(n)-A000975(n)])`
-/

namespace A280371.P4707951314933468614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284245 n - A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280371.P4707951314933468614

/-! ## A280371.P11528858008354310152

`A007088(and(Δ[A284181(n)], A284181(n)))`
-/

namespace A280371.P11528858008354310152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (f1 (n + 1) - f1 n) (A284181 n)).toNat

end

end A280371.P11528858008354310152

/-! ## A280371.P6407163622485986403

`A007088(and(A279751(n), A284245(n+2)))`
-/

namespace A280371.P6407163622485986403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A279751 n) (A284245 (n + 2))).toNat

end

end A280371.P6407163622485986403

/-!
# A280372: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 260", based on the 5-celled von Neumann neighborhood.

The programs for A280372, there is no canonical definition to state claims against.
-/

/-! ## A280372.P11099448489358608210

`A007088(xor(A279876(n), A280412(n))+1)`
-/

namespace A280372.P11099448489358608210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A279876 n) (A280412 n) + 1).toNat

end

end A280372.P11099448489358608210

/-!
# A280373: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 260", based on the 5-celled von Neumann neighborhood.

The programs for A280373, there is no canonical definition to state claims against.
-/

/-! ## A280373.P5401910479528639474

`xor(1, xor(A279875(n), A280412(n)))`
-/

namespace A280373.P5401910479528639474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor (A279875 n) (A280412 n))

end

end A280373.P5401910479528639474

/-! ## A280373.P15336039736136652682

`record[A284245(n)-A000975(n)]`
-/

namespace A280373.P15336039736136652682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284245 n - A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280373.P15336039736136652682

/-! ## A280373.P17365474442257683104

`and(Δ[A284181(n)], A284181(n))`
-/

namespace A280373.P17365474442257683104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A284181 n)

end

end A280373.P17365474442257683104

/-! ## A280373.P15242246661884114865

`A126646(n+1)-A284181(n+1)`
-/

namespace A280373.P15242246661884114865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) - A284181 (n + 1)

end

end A280373.P15242246661884114865

/-! ## A280373.P16553896985944087146

`and(A284181(n+1)-A284181(n), A284181(n))`
-/

namespace A280373.P16553896985944087146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284181 (n + 1) - A284181 n) (A284181 n)

end

end A280373.P16553896985944087146

/-! ## A280373.P11713403389828569982

`record[and(A284245(n+9), A284245(n))]`
-/

namespace A280373.P11713403389828569982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284245 (n + 9)) (A284245 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280373.P11713403389828569982

/-!
# A280374: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 260", based on the 5-celled von Neumann neighborhood.

The programs for A280374, there is no canonical definition to state claims against.
-/

/-! ## A280374.P72496938800651854

`xor(A279876(n), A280412(n))+1`
-/

namespace A280374.P72496938800651854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A279876 n) (A280412 n) + 1

end

end A280374.P72496938800651854

/-!
# A280375: Expansion of Sum_{k>=1} k^3*x^(k^2)/(1 - x^k).

The programs for A280375, there is no canonical definition to state claims against.
-/

/-! ## A280375.P10764707296509115005

`A297793(n+1)-A339354(n+1)`
-/

namespace A280375.P10764707296509115005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297793 (n + 1) - A339354 (n + 1)

end

end A280375.P10764707296509115005

/-!
# A280376: Primes formed from the concatenation of n and nextprime(n).

The programs for A280376, there is no canonical definition to state claims against.
-/

/-! ## A280376.P3621406832682940779

`A049852(A034591(n+2))`
-/

namespace A280376.P3621406832682940779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A034591 (n + 2)).toNat

end

end A280376.P3621406832682940779

/-! ## A280376.P10956741247430087192

`p?[A049852(n+1)]`
-/

namespace A280376.P10956741247430087192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280376.P10956741247430087192

/-! ## A280376.P2955961164649618518

`p?[record[A049852(A133310(n))]]`
-/

namespace A280376.P2955961164649618518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280376.P2955961164649618518

/-! ## A280376.P5416637367849626198

`p?[record[A049852(A291769(n))]]`
-/

namespace A280376.P5416637367849626198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280376.P5416637367849626198

/-! ## A280376.P10588825181530626327

`p?[record[A049852(A292266(n))]]`
-/

namespace A280376.P10588825181530626327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280376.P10588825181530626327

/-! ## A280376.P112458140005843082

`p?[record[A049852(A331303(n))]]`
-/

namespace A280376.P112458140005843082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A331303 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280376.P112458140005843082

/-!
# A280377: Partial sums of A119619.

The programs for A280377, there is no canonical definition to state claims against.
-/

/-! ## A280377.P11842940876687755640

`∑[A119619(n+1)]`
-/

namespace A280377.P11842940876687755640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280377.P11842940876687755640

/-! ## A280377.P8383222086290969456

`∑[∏{d}[n+1, A001783(#)]]`
-/

namespace A280377.P8383222086290969456
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A001783 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280377.P8383222086290969456

/-! ## A280377.P3849416567178151327

`∑[n!/A051190(n+1)]`
-/

namespace A280377.P3849416567178151327
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A051190 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280377.P3849416567178151327

/-! ## A280377.P15815311421570895678

`∑[A000142(n)/A051190(n+1)]`
-/

namespace A280377.P15815311421570895678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A051190 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280377.P15815311421570895678

/-! ## A280377.P9470946636916499148

`∑[∏[n+1]/A067911(n+1)]`
-/

namespace A280377.P9470946636916499148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (A067911 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280377.P9470946636916499148

/-!
# A280378: Partial products of A119619.

The programs for A280378, there is no canonical definition to state claims against.
-/

/-! ## A280378.P9408506319641608189

`∏[A119619(n+1)]`
-/

namespace A280378.P9408506319641608189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280378.P9408506319641608189

/-! ## A280378.P18017299989781578571

`∏[∏{d}[n+1, A001783(#)]]`
-/

namespace A280378.P18017299989781578571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A001783 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280378.P18017299989781578571

/-! ## A280378.P13288918586918010596

`∏[n!/A051190(n+1)]`
-/

namespace A280378.P13288918586918010596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A051190 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280378.P13288918586918010596

/-! ## A280378.P15444732367443880039

`∏[(n+1)!/A067911(n+1)]`
-/

namespace A280378.P15444732367443880039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A067911 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280378.P15444732367443880039

/-! ## A280378.P17326916409510264567

`∏[A000142(n)/A051190(n+1)]`
-/

namespace A280378.P17326916409510264567
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A051190 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280378.P17326916409510264567

/-!
# A280379: a(n) = A056171(k) - m, where k=prime(n) and m is the Ramanujan prime index to the greatest Ramanujan prime R(m) <= k.

The programs for A280379, there is no canonical definition to state claims against.
-/

/-! ## A280379.P16562353282879896263

`A298859(A217554(2*n+3))+A217564(n+1)`
-/

namespace A280379.P16562353282879896263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298859 (A217554 (2 * n + 3)).toNat + A217564 (n + 1)

end

end A280379.P16562353282879896263

/-! ## A280379.P9484348309932453088

`A217564(n+1)+A061358(A186747(n))`
-/

namespace A280379.P9484348309932453088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217564 (n + 1) + A061358 (A186747 n).toNat

end

end A280379.P9484348309932453088

/-! ## A280379.P471208154711013410

`gcd(A057558(A185268(n+1)), A217564(n+1))`
-/

namespace A280379.P471208154711013410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057558 (A185268 (n + 1)).toNat) (A217564 (n + 1))

end

end A280379.P471208154711013410

/-! ## A280379.P10064090788638644555

`A217564(n+1)-A240467(∑[A106949(n+1)])`
-/

namespace A280379.P10064090788638644555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217564 (n + 1) - A240467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280379.P10064090788638644555

/-! ## A280379.P9906093590805306556

`A217564(n+1)+A185284(A058281(n))`
-/

namespace A280379.P9906093590805306556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217564 (n + 1) + A185284 (A058281 n).toNat

end

end A280379.P9906093590805306556

/-!
# A280380: First occurrence of A280379(k) = n.

The programs for A280380, there is no canonical definition to state claims against.
-/

/-! ## A280380.P17182071770068913

`A273258(A002895(n)+n)`
-/

namespace A280380.P17182071770068913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273258 (A002895 n + (n : ℤ)).toNat

end

end A280380.P17182071770068913

/-!
# A280382: Numbers k such that k-1 has the same number of prime factors counted with multiplicity as k+1.

The programs for A280382, the canonical program `A280382.P9861939106869173717` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280382 has offset 1).

The definition of A280382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280382.P6825388590041842442

`A115168(n+1)/2`
-/

namespace A280382.P6825388590041842442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115168 (n + 1) : ℚ) / 2

end

end A280382.P6825388590041842442

namespace A280382

/-- `A115168(n+1)/2` -/
def P6825388590041842442.Spec : Prop :=
  ∀ n, P6825388590041842442.a n = (A280382 (n + 1) : ℚ)

theorem P6825388590041842442.correct : P6825388590041842442.Spec := by
  intro n
  simp only [A280382, Nat.add_sub_cancel, A280382.P6825388590041842442.a, A280382.P9861939106869173717.f1, A280382.P9861939106869173717.f2, A280382.P9861939106869173717.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A115168, A115168.P15497853147863272993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280382

/-! ## A280382.P10313340174783423452

`A273943(A115168(n+1))`
-/

namespace A280382.P10313340174783423452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A115168 (n + 1)).toNat

end

end A280382.P10313340174783423452

namespace A280382

/-- `A273943(A115168(n+1))` -/
def P10313340174783423452.Spec : Prop :=
  ∀ n, P10313340174783423452.a n = A280382 (n + 1)

end A280382

/-! ## A280382.P9861939106869173717

`eq[A001222(n+1), A001222(n+3)]+2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A280382

/-- `eq[A001222(n+1), A001222(n+3)]+2` -/
def P9861939106869173717.Spec : Prop :=
  ∀ n, (P9861939106869173717.a n : ℤ) = A280382 (n + 1)

theorem P9861939106869173717.correct : P9861939106869173717.Spec := by
  intro n
  simp only [A280382, Nat.add_sub_cancel]

end A280382

/-! ## A280382.P11974488706621825306

`eq[A069904(n+2), A069904(n+1)]+2`
-/

namespace A280382.P11974488706621825306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A280382.P11974488706621825306

namespace A280382

/-- `eq[A069904(n+2), A069904(n+1)]+2` -/
def P11974488706621825306.Spec : Prop :=
  ∀ n, (P11974488706621825306.a n : ℤ) = A280382 (n + 1)

end A280382

/-! ## A280382.P6676844243877442062

`∩[A371656(n+1), A020739(n)]/2`
-/

namespace A280382.P6676844243877442062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A280382.P6676844243877442062

namespace A280382

/-- `∩[A371656(n+1), A020739(n)]/2` -/
def P6676844243877442062.Spec : Prop :=
  ∀ n, P6676844243877442062.a n = (A280382 (n + 1) : ℚ)

end A280382

/-! ## A280382.P13316694181837803948

`∩[A371656(n+1), A020744(n)]/2`
-/

namespace A280382.P13316694181837803948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A280382.P13316694181837803948

namespace A280382

/-- `∩[A371656(n+1), A020744(n)]/2` -/
def P13316694181837803948.Spec : Prop :=
  ∀ n, P13316694181837803948.a n = (A280382 (n + 1) : ℚ)

end A280382

/-! ## A280382.P17631531753511372230

`eq[∑{e}[n+1, #], ∑{e}[n+3, #]]+2`
-/

namespace A280382.P17631531753511372230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 2

end

end A280382.P17631531753511372230

namespace A280382

/-- `eq[∑{e}[n+1, #], ∑{e}[n+3, #]]+2` -/
def P17631531753511372230.Spec : Prop :=
  ∀ n, (P17631531753511372230.a n : ℤ) = A280382 (n + 1)

end A280382

/-! ## A280382.P3215741679846728223

`∩[A371656(n+1), A004271(n)]/2`
-/

namespace A280382.P3215741679846728223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A280382.P3215741679846728223

namespace A280382

/-- `∩[A371656(n+1), A004271(n)]/2` -/
def P3215741679846728223.Spec : Prop :=
  ∀ n, P3215741679846728223.a n = (A280382 (n + 1) : ℚ)

end A280382

/-! ## A280382.P11206096373984756769

`∩[A371656(n+1), A004275(n)]/2`
-/

namespace A280382.P11206096373984756769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A280382.P11206096373984756769

namespace A280382

/-- `∩[A371656(n+1), A004275(n)]/2` -/
def P11206096373984756769.Spec : Prop :=
  ∀ n, P11206096373984756769.a n = (A280382 (n + 1) : ℚ)

end A280382

/-! ## A280382.P1192206257947825679

`∩[A371656(n+1), A004277(n)]/2`
-/

namespace A280382.P1192206257947825679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A280382.P1192206257947825679

namespace A280382

/-- `∩[A371656(n+1), A004277(n)]/2` -/
def P1192206257947825679.Spec : Prop :=
  ∀ n, P1192206257947825679.a n = (A280382 (n + 1) : ℚ)

end A280382

/-! ## A280382.P14117431555977823133

`∩[A371656(n+1), A005843(n)]/2`
-/

namespace A280382.P14117431555977823133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A280382.P14117431555977823133

namespace A280382

/-- `∩[A371656(n+1), A005843(n)]/2` -/
def P14117431555977823133.Spec : Prop :=
  ∀ n, P14117431555977823133.a n = (A280382 (n + 1) : ℚ)

end A280382

/-! ## A280382.P8602164612616218885

`∩[A371656(n+1), A103517(n)]/2`
-/

namespace A280382.P8602164612616218885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A280382.P8602164612616218885

namespace A280382

/-- `∩[A371656(n+1), A103517(n)]/2` -/
def P8602164612616218885.Spec : Prop :=
  ∀ n, P8602164612616218885.a n = (A280382 (n + 1) : ℚ)

end A280382

/-! ## A280382.P8900659598699841254

`eq[A105560(n+1), A105560(n+3)]+2`
-/

namespace A280382.P8900659598699841254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A280382.P8900659598699841254

namespace A280382

/-- `eq[A105560(n+1), A105560(n+3)]+2` -/
def P8900659598699841254.Spec : Prop :=
  ∀ n, (P8900659598699841254.a n : ℤ) = A280382 (n + 1)

end A280382

/-! ## A280382.P11373309417211774382

`A110654(A115168(n+1)-1)`
-/

namespace A280382.P11373309417211774382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A115168 (n + 1) - 1).toNat

end

end A280382.P11373309417211774382

namespace A280382

/-- `A110654(A115168(n+1)-1)` -/
def P11373309417211774382.Spec : Prop :=
  ∀ n, P11373309417211774382.a n = A280382 (n + 1)

end A280382

/-! ## A280382.P13197408519339146699

`A001281(A115168(n+1)+2)-1`
-/

namespace A280382.P13197408519339146699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A115168 (n + 1) + 2).toNat - 1

end

end A280382.P13197408519339146699

namespace A280382

/-- `A001281(A115168(n+1)+2)-1` -/
def P13197408519339146699.Spec : Prop :=
  ∀ n, P13197408519339146699.a n = A280382 (n + 1)

end A280382

/-! ## A280382.P12201171386608747353

`A029578(A115168(n+1)+2)-1`
-/

namespace A280382.P12201171386608747353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A115168 (n + 1) + 2).toNat - 1

end

end A280382.P12201171386608747353

namespace A280382

/-- `A029578(A115168(n+1)+2)-1` -/
def P12201171386608747353.Spec : Prop :=
  ∀ n, P12201171386608747353.a n = A280382 (n + 1)

end A280382

/-!
# A280383: Numbers n such that n-1 has the same count of prime factors as n+1 when including multiplicity and also when not.

The programs for A280383, the canonical program `A280383.P661674593425102213` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280383 has offset 1).

The definition of A280383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3546 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280383.P661674593425102213

`∩[A088070(n+1), A280382(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A280383

/-- `∩[A088070(n+1), A280382(n+1)]` -/
def P661674593425102213.Spec : Prop :=
  ∀ n, (P661674593425102213.a n : ℤ) = A280383 (n + 1)

theorem P661674593425102213.correct : P661674593425102213.Spec := by
  intro n
  simp only [A280383, Nat.add_sub_cancel]

end A280383

/-! ## A280383.P6704037823234300167

`∩[A063464(n+1)+1, A280382(n+1)]`
-/

namespace A280383.P6704037823234300167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063464 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280383.P6704037823234300167

namespace A280383

/-- `∩[A063464(n+1)+1, A280382(n+1)]` -/
def P6704037823234300167.Spec : Prop :=
  ∀ n, (P6704037823234300167.a n : ℤ) = A280383 (n + 1)

end A280383

/-! ## A280383.P11257127218842050671

`∩[A115166(n+1), A115168(n+1)]/2`
-/

namespace A280383.P11257127218842050671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115168 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A280383.P11257127218842050671

namespace A280383

/-- `∩[A115166(n+1), A115168(n+1)]/2` -/
def P11257127218842050671.Spec : Prop :=
  ∀ n, P11257127218842050671.a n = (A280383 (n + 1) : ℚ)

end A280383

/-! ## A280383.P9962368650614472333

`A029578(∩[A115166(n+1), A115168(n+1)])`
-/

namespace A280383.P9962368650614472333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115168 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A280383.P9962368650614472333

namespace A280383

/-- `A029578(∩[A115166(n+1), A115168(n+1)])` -/
def P9962368650614472333.Spec : Prop :=
  ∀ n, P9962368650614472333.a n = A280383 (n + 1)

end A280383

/-! ## A280383.P14636333402839794543

`A110654(∩[A115166(n+1), A115168(n+1)])`
-/

namespace A280383.P14636333402839794543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115168 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A280383.P14636333402839794543

namespace A280383

/-- `A110654(∩[A115166(n+1), A115168(n+1)])` -/
def P14636333402839794543.Spec : Prop :=
  ∀ n, P14636333402839794543.a n = A280383 (n + 1)

end A280383

/-!
# A280384: Expansion of f(x)^3 * f(-x^2) * chi(x^3)^3 in powers of x where chi(), f() are Ramanujan theta functions.

The programs for A280384, there is no canonical definition to state claims against.
-/

/-! ## A280384.P15619172034061272123

`(-1)^n*A280328(n)`
-/

namespace A280384.P15619172034061272123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A280328 n

end

end A280384.P15619172034061272123

/-! ## A280384.P3009723637496907233

`A280328(n)/A033999(n)`
-/

namespace A280384.P3009723637496907233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280328 n : ℚ) / (A033999 n : ℚ)

end

end A280384.P3009723637496907233

/-! ## A280384.P15675266367586063588

`A280328(n)*A309873(A007947(n+1))`
-/

namespace A280384.P15675266367586063588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280328 n * A309873 (A007947 (n + 1)).toNat

end

end A280384.P15675266367586063588

/-! ## A280384.P10376072136435843024

`A280328(n)/A034947(A005408(n))`
-/

namespace A280384.P10376072136435843024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280328 n : ℚ) / (A034947 (A005408 n).toNat : ℚ)

end

end A280384.P10376072136435843024

/-! ## A280384.P7948903579743335960

`A280328(n)*A309873(n²+1)`
-/

namespace A280384.P7948903579743335960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280328 n * A309873 (n ^ 2 + 1)

end

end A280384.P7948903579743335960

/-!
# A280385: a(n) = Sum_{k=1..n} prime(k)^2*floor(n/prime(k)) .

The programs for A280385, the canonical program `A280385.P11544614705466060103` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280385 has offset 1).

The definition of A280385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280385.P11544614705466060103

`∑[∑{p}[n+1, #²]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280385

/-- `∑[∑{p}[n+1, #²]]` -/
def P11544614705466060103.Spec : Prop :=
  ∀ n, (P11544614705466060103.a n : ℤ) = A280385 (n + 1)

theorem P11544614705466060103.correct : P11544614705466060103.Spec := by
  intro n
  simp only [A280385, Nat.add_sub_cancel]

end A280385

/-! ## A280385.P16292087580014849260

`∑{p}[n+1, #²]+a(n-1)` with `a(0)=0`
-/

namespace A280385.P16292087580014849260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), p ^ 2 + a (n - 1)

end

end A280385.P16292087580014849260

namespace A280385

/-- `∑{p}[n+1, #²]+a(n-1)` -/
def P16292087580014849260.Spec : Prop :=
  ∀ n, (P16292087580014849260.a n : ℤ) = A280385 (n + 1)

end A280385

/-! ## A280385.P2883908964005563711

`∑[A005063(n+1)]`
-/

namespace A280385.P2883908964005563711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280385.P2883908964005563711

namespace A280385

/-- `∑[A005063(n+1)]` -/
def P2883908964005563711.Spec : Prop :=
  ∀ n, P2883908964005563711.a n = A280385 (n + 1)

theorem P2883908964005563711.correct : P2883908964005563711.Spec := by
  intro n
  simp only [A280385, Nat.add_sub_cancel, A280385.P2883908964005563711.f1, A280385.P2883908964005563711.a, A280385.P11544614705466060103.f2, A280385.P11544614705466060103.f1, A280385.P11544614705466060103.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280385

/-! ## A280385.P1288182147494511605

`∑[A067666(A007947(n+1))]`
-/

namespace A280385.P1288182147494511605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067666 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280385.P1288182147494511605

namespace A280385

/-- `∑[A067666(A007947(n+1))]` -/
def P1288182147494511605.Spec : Prop :=
  ∀ n, P1288182147494511605.a n = A280385 (n + 1)

end A280385

/-! ## A280385.P4316447581157102224

`∑[A010675(n)+A005066(n+1)]`
-/

namespace A280385.P4316447581157102224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 n + A005066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280385.P4316447581157102224

namespace A280385

/-- `∑[A010675(n)+A005066(n+1)]` -/
def P4316447581157102224.Spec : Prop :=
  ∀ n, P4316447581157102224.a n = A280385 (n + 1)

end A280385

/-! ## A280385.P17918453939058891128

`∑[A008475(∏{p}[n+1, #²])]`
-/

namespace A280385.P17918453939058891128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f2 n), p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280385.P17918453939058891128

namespace A280385

/-- `∑[A008475(∏{p}[n+1, #²])]` -/
def P17918453939058891128.Spec : Prop :=
  ∀ n, P17918453939058891128.a n = A280385 (n + 1)

end A280385

/-! ## A280385.P9476469410446302346

`∑[A008475(A007947(n+1)²)]`
-/

namespace A280385.P9476469410446302346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A007947 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280385.P9476469410446302346

namespace A280385

/-- `∑[A008475(A007947(n+1)²)]` -/
def P9476469410446302346.Spec : Prop :=
  ∀ n, P9476469410446302346.a n = A280385 (n + 1)

end A280385

/-! ## A280385.P1173525955619863800

`∑[A071327((n+1)²)]`
-/

namespace A280385.P1173525955619863800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071327 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280385.P1173525955619863800

namespace A280385

/-- `∑[A071327((n+1)²)]` -/
def P1173525955619863800.Spec : Prop :=
  ∀ n, P1173525955619863800.a n = A280385 (n + 1)

end A280385

/-! ## A280385.P13691170216683296344

`∑[A098002((n+1)²)]`
-/

namespace A280385.P13691170216683296344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098002 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280385.P13691170216683296344

namespace A280385

/-- `∑[A098002((n+1)²)]` -/
def P13691170216683296344.Spec : Prop :=
  ∀ n, P13691170216683296344.a n = A280385 (n + 1)

end A280385

/-! ## A280385.P6756473949858252810

`∑[A345303((n+1)²)]`
-/

namespace A280385.P6756473949858252810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345303 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280385.P6756473949858252810

namespace A280385

/-- `∑[A345303((n+1)²)]` -/
def P6756473949858252810.Spec : Prop :=
  ∀ n, P6756473949858252810.a n = A280385 (n + 1)

end A280385

/-! ## A280385.P7193663477553506524

`∑[A181894(A007947(n+1)²)]`
-/

namespace A280385.P7193663477553506524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181894 (A007947 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280385.P7193663477553506524

namespace A280385

/-- `∑[A181894(A007947(n+1)²)]` -/
def P7193663477553506524.Spec : Prop :=
  ∀ n, P7193663477553506524.a n = A280385 (n + 1)

end A280385

/-!
# A280386: Number of ways to write n as the sum of two squares and a term of A000009.

The programs for A280386, there is no canonical definition to state claims against.
-/

/-! ## A280386.P8888424361211742065

`A124766(n)+A055642(A299260(n))`
-/

namespace A280386.P8888424361211742065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n + A055642 (A299260 n).toNat

end

end A280386.P8888424361211742065

/-! ## A280386.P2579594252379160561

`A358769((2-char[2^n-1])^A187730(n+1))+A358551(n+1)`
-/

namespace A280386.P2579594252379160561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358769 (SequenceMachineLib.roundAway ((2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (A187730 (n + 1) : ℤ))).toNat + A358551 (n + 1)

end

end A280386.P2579594252379160561

/-! ## A280386.P9942421844807300173

`A069010(n)+A043562(A048395(n))`
-/

namespace A280386.P9942421844807300173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n + A043562 (A048395 n).toNat

end

end A280386.P9942421844807300173

/-! ## A280386.P9926511389773533420

`A359043(n)+A010060(A280917(n))`
-/

namespace A280386.P9926511389773533420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359043 n + A010060 (A280917 n).toNat

end

end A280386.P9926511389773533420

/-! ## A280386.P18088988131459245381

`A358372(A358523(n))+A124763(n)-A124762(n)`
-/

namespace A280386.P18088988131459245381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (A358523 n).toNat + (A124763 n - A124762 n)

end

end A280386.P18088988131459245381

/-!
# A280387: Composite numbers n such that sum of proper divisors of n divides sum of proper divisors of n^n.

The programs for A280387, there is no canonical definition to state claims against.
-/

/-! ## A280387.P15233675886389679250

`A003624(A172540(n+1)+n+1)`
-/

namespace A280387.P15233675886389679250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (A172540 (n + 1) + (n + 1 : ℤ)).toNat

end

end A280387.P15233675886389679250

/-! ## A280387.P17776370488350030271

`eq[char[A003624(n+1)], A192183(2*(n+1))]`
-/

namespace A280387.P17776370488350030271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192183 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A280387.P17776370488350030271

/-! ## A280387.P3499039585565690640

`lt[A214158(n), A074206(A000041(n))]`
-/

namespace A280387.P3499039585565690640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214158 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A000041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280387.P3499039585565690640

/-! ## A280387.P3779987410571309432

`lt[A214158(n), A074206(A213598(n))]`
-/

namespace A280387.P3779987410571309432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214158 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A213598 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280387.P3779987410571309432

/-! ## A280387.P10790706581376507736

`A069283(A011815(n))+A003624(n+1)`
-/

namespace A280387.P10790706581376507736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A011815 n).toNat + A003624 (n + 1)

end

end A280387.P10790706581376507736

/-!
# A280389: Odd semiprimes that can be represented as 2p+3q, where p and q are primes.

The programs for A280389, there is no canonical definition to state claims against.
-/

/-! ## A280389.P16932065796860739660

`filter[A079026(n+1), A353480(#)]`
-/

namespace A280389.P16932065796860739660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A280389.P16932065796860739660

/-! ## A280389.P7140567068917670077

`filter[A079026(n+2), A064911(#)]`
-/

namespace A280389.P7140567068917670077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079026 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A280389.P7140567068917670077

/-! ## A280389.P743724816700990059

`∩[A046315(n+1), A079026(n+1)]`
-/

namespace A280389.P743724816700990059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280389.P743724816700990059

/-! ## A280389.P11726772016052005589

`∩[A079026(n+1), A176406(n+1)+2]`
-/

namespace A280389.P11726772016052005589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176406 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280389.P11726772016052005589

/-! ## A280389.P981518419267346276

`∩[eq[2, A001222(n^(n%2))], A079026(n+1)]`
-/

namespace A280389.P981518419267346276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ (n % 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A280389.P981518419267346276

/-! ## A280389.P9082760694041635136

`∩[A079026(n+1), A100484(n+1)-A131634(n+1)]`
-/

namespace A280389.P9082760694041635136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A131634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280389.P9082760694041635136

/-! ## A280389.P1031867793594862988

`∩[A079026(n+1), A282844(n+1)-A100484(n+1)]`
-/

namespace A280389.P1031867793594862988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282844 (n + 1) - A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280389.P1031867793594862988

/-! ## A280389.P15823835312546823634

`∩[A079026(n+1), A001747(n+2)-A131634(n+1)]`
-/

namespace A280389.P15823835312546823634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) - A131634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280389.P15823835312546823634

/-! ## A280389.P3883057855382775519

`∩[A282844(n+1)-A001747(n+2), A079026(n+1)]`
-/

namespace A280389.P3883057855382775519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282844 (n + 1) - A001747 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280389.P3883057855382775519

/-!
# A280390: Integers that can be written using their individual decimal digits and the operations + - * / ^ but not the concatenation of their digits.

The programs for A280390, there is no canonical definition to state claims against.
-/

/-! ## A280390.P9675142798533886082

`A083509(A033621(n+1)+A004218(n+1))`
-/

namespace A280390.P9675142798533886082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083509 (A033621 (n + 1) + A004218 (n + 1)).toNat

end

end A280390.P9675142798533886082

/-!
# A280392: Number of nX2 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280392, the canonical program `A280392.P11267800191044072622` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280392 has offset 1).

The definition of A280392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280392.P11267800191044072622

`A280399(2*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A280392

/-- `A280399(2*(n+1))` -/
def P11267800191044072622.Spec : Prop :=
  ∀ n, P11267800191044072622.a n = A280392 (n + 1)

theorem P11267800191044072622.correct : P11267800191044072622.Spec := by
  intro n
  simp only [A280392, Nat.add_sub_cancel]

end A280392

/-! ## A280392.P12750150905653242028

`∑[A291023(2*n)/2]`
-/

namespace A280392.P12750150905653242028
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291023 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280392.P12750150905653242028

namespace A280392

/-- `∑[A291023(2*n)/2]` -/
def P12750150905653242028.Spec : Prop :=
  ∀ n, P12750150905653242028.a n = (A280392 (n + 1) : ℚ)

end A280392

/-! ## A280392.P209270613552010206

`2*A219754(2*n+3)`
-/

namespace A280392.P209270613552010206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219754 (2 * n + 3)

end

end A280392.P209270613552010206

namespace A280392

/-- `2*A219754(2*n+3)` -/
def P209270613552010206.Spec : Prop :=
  ∀ n, P209270613552010206.a n = A280392 (n + 1)

end A280392

/-! ## A280392.P16871654053239131545

`record[A280399(gcd(n, ∑[n])+1)]`
-/

namespace A280392.P16871654053239131545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280399 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280392.P16871654053239131545

namespace A280392

/-- `record[A280399(gcd(n, ∑[n])+1)]` -/
def P16871654053239131545.Spec : Prop :=
  ∀ n, P16871654053239131545.a n = A280392 (n + 1)

end A280392

/-! ## A280392.P4579841211775764867

`∑[∑[A034007(2*n+1)/2]]`
-/

namespace A280392.P4579841211775764867
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034007 (2 * n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280392.P4579841211775764867

namespace A280392

/-- `∑[∑[A034007(2*n+1)/2]]` -/
def P4579841211775764867.Spec : Prop :=
  ∀ n, P4579841211775764867.a n = (A280392 (n + 1) : ℚ)

end A280392

/-! ## A280392.P1963645968560432831

`10*a(n-1)-33*a(n-2)+40*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=2, a(2)=14, a(3)=74`
-/

namespace A280392.P1963645968560432831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 14, 74] fun n a =>
  10 * a (n - 1) - 33 * a (n - 2) + 40 * a (n - 3) - 16 * a (n - 4)

end

end A280392.P1963645968560432831

namespace A280392

/-- `10*a(n-1)-33*a(n-2)+40*a(n-3)-16*a(n-4)` -/
def P1963645968560432831.Spec : Prop :=
  ∀ n, P1963645968560432831.a n = A280392 (n + 1)

end A280392

/-! ## A280392.P1658977278635347692

`abs(A322039(Δ[n²]))/2`
-/

namespace A280392.P1658977278635347692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A322039 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat| : ℚ) / 2

end

end A280392.P1658977278635347692

namespace A280392

/-- `abs(A322039(Δ[n²]))/2` -/
def P1658977278635347692.Spec : Prop :=
  ∀ n, P1658977278635347692.a n = (A280392 (n + 1) : ℚ)

end A280392

/-! ## A280392.P2995457444826272422

`abs(A322039(2*n+1)/2)`
-/

namespace A280392.P2995457444826272422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A322039 (2 * n + 1) : ℚ) / 2|

end

end A280392.P2995457444826272422

namespace A280392

/-- `abs(A322039(2*n+1)/2)` -/
def P2995457444826272422.Spec : Prop :=
  ∀ n, P2995457444826272422.a n = (A280392 (n + 1) : ℚ)

end A280392

/-! ## A280392.P14208441132256666591

`A127979(2*n+1)-A073371(2*n)`
-/

namespace A280392.P14208441132256666591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127979 (2 * n + 1) - A073371 (2 * n)

end

end A280392.P14208441132256666591

namespace A280392

/-- `A127979(2*n+1)-A073371(2*n)` -/
def P14208441132256666591.Spec : Prop :=
  ∀ n, P14208441132256666591.a n = A280392 (n + 1)

end A280392

/-! ## A280392.P7941905233507354207

`A091596(2*n+1)-(A091596(2*n)+1)`
-/

namespace A280392.P7941905233507354207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091596 (2 * n + 1) - (A091596 (2 * n) + 1)

end

end A280392.P7941905233507354207

namespace A280392

/-- `A091596(2*n+1)-(A091596(2*n)+1)` -/
def P7941905233507354207.Spec : Prop :=
  ∀ n, P7941905233507354207.a n = A280392 (n + 1)

end A280392

/-! ## A280392.P11589781654146069977

`A127984(2*(n+1))-A127978(2*(n+1))`
-/

namespace A280392.P11589781654146069977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127984 (2 * (n + 1)) - A127978 (2 * (n + 1))

end

end A280392.P11589781654146069977

namespace A280392

/-- `A127984(2*(n+1))-A127978(2*(n+1))` -/
def P11589781654146069977.Spec : Prop :=
  ∀ n, P11589781654146069977.a n = A280392 (n + 1)

end A280392

/-! ## A280392.P15953567908410639592

`A127984(2*n+1)-A127976(2*n+1)`
-/

namespace A280392.P15953567908410639592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127984 (2 * n + 1) - A127976 (2 * n + 1)

end

end A280392.P15953567908410639592

namespace A280392

/-- `A127984(2*n+1)-A127976(2*n+1)` -/
def P15953567908410639592.Spec : Prop :=
  ∀ n, P15953567908410639592.a n = A280392 (n + 1)

end A280392

/-! ## A280392.P4070806409065973038

`A322039(2*n+1)/(A062157(2*n)-1)`
-/

namespace A280392.P4070806409065973038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322039 (2 * n + 1) : ℚ) / (A062157 (2 * n) - 1 : ℚ)

end

end A280392.P4070806409065973038

namespace A280392

/-- `A322039(2*n+1)/(A062157(2*n)-1)` -/
def P4070806409065973038.Spec : Prop :=
  ∀ n, P4070806409065973038.a n = (A280392 (n + 1) : ℚ)

end A280392

/-! ## A280392.P2710133923591293332

`A059570(2*(n+1))/2-A127976(2*n+1)`
-/

namespace A280392.P2710133923591293332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059570 (2 * (n + 1)) : ℚ) / 2 - (A127976 (2 * n + 1) : ℚ)

end

end A280392.P2710133923591293332

namespace A280392

/-- `A059570(2*(n+1))/2-A127976(2*n+1)` -/
def P2710133923591293332.Spec : Prop :=
  ∀ n, P2710133923591293332.a n = (A280392 (n + 1) : ℚ)

end A280392

/-! ## A280392.P12759788868895318800

`(A127976(2*(n+1))-A127976(2*n+1))/2`
-/

namespace A280392.P12759788868895318800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127976 (2 * (n + 1)) - A127976 (2 * n + 1) : ℚ) / 2

end

end A280392.P12759788868895318800

namespace A280392

/-- `(A127976(2*(n+1))-A127976(2*n+1))/2` -/
def P12759788868895318800.Spec : Prop :=
  ∀ n, P12759788868895318800.a n = (A280392 (n + 1) : ℚ)

end A280392

/-! ## A280392.P377896592854146724

`A059570(2*n+1)+A001045(2*n)-A127976(2*n+1)`
-/

namespace A280392.P377896592854146724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (2 * n + 1) + (A001045 (2 * n) - A127976 (2 * n + 1))

end

end A280392.P377896592854146724

namespace A280392

/-- `A059570(2*n+1)+A001045(2*n)-A127976(2*n+1)` -/
def P377896592854146724.Spec : Prop :=
  ∀ n, P377896592854146724.a n = A280392 (n + 1)

end A280392

/-! ## A280392.P1445463323716786384

`A073371(2*n+1)-(A127984(2*n+1)+A073371(2*n))`
-/

namespace A280392.P1445463323716786384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073371 (2 * n + 1) - (A127984 (2 * n + 1) + A073371 (2 * n))

end

end A280392.P1445463323716786384

namespace A280392

/-- `A073371(2*n+1)-(A127984(2*n+1)+A073371(2*n))` -/
def P1445463323716786384.Spec : Prop :=
  ∀ n, P1445463323716786384.a n = A280392 (n + 1)

end A280392

/-! ## A280392.P11081503680444929448

`A127985(2*n+1)-(A127985(2*n)+A127976(2*n+1))`
-/

namespace A280392.P11081503680444929448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127985 (2 * n + 1) - (A127985 (2 * n) + A127976 (2 * n + 1))

end

end A280392.P11081503680444929448

namespace A280392

/-- `A127985(2*n+1)-(A127985(2*n)+A127976(2*n+1))` -/
def P11081503680444929448.Spec : Prop :=
  ∀ n, P11081503680444929448.a n = A280392 (n + 1)

end A280392

/-! ## A280392.P16694638172279550381

`4^(n+1)*(n+1)/18-4*(n+1)/9+2*4^(n+1)/27-2/27`
-/

namespace A280392.P16694638172279550381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) * (n + 1) : ℚ) / 18 - (4 * (n + 1) : ℚ) / 9 + (2 * 4 ^ (n + 1) : ℚ) / 27 - (2 : ℚ) / 27

end

end A280392.P16694638172279550381

namespace A280392

/-- `4^(n+1)*(n+1)/18-4*(n+1)/9+2*4^(n+1)/27-2/27` -/
def P16694638172279550381.Spec : Prop :=
  ∀ n, P16694638172279550381.a n = (A280392 (n + 1) : ℚ)

end A280392

/-!
# A280393: Number of n X 3 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280393, there is no canonical definition to state claims against.
-/

/-! ## A280393.P17557688712341121851

`A280398(∑[n+3]+1)`
-/

namespace A280393.P17557688712341121851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A280393.P17557688712341121851

/-! ## A280393.P15292497848689229286

`record[A280398(A130297(n+2))]`
-/

namespace A280393.P15292497848689229286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A130297 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280393.P15292497848689229286

/-!
# A280394: Number of nX4 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280394, there is no canonical definition to state claims against.
-/

/-! ## A280394.P10011155156223547749

`A280398(A141214(n+1))`
-/

namespace A280394.P10011155156223547749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A141214 (n + 1)).toNat

end

end A280394.P10011155156223547749

/-! ## A280394.P7246305005888877955

`A280398(A027379(n+2))`
-/

namespace A280394.P7246305005888877955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A027379 (n + 2)).toNat

end

end A280394.P7246305005888877955

/-! ## A280394.P8373025610588326982

`A280398(A055998(n+2))`
-/

namespace A280394.P8373025610588326982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A055998 (n + 2)).toNat

end

end A280394.P8373025610588326982

/-! ## A280394.P9835984552480118189

`A280398(A155212(n)+5)`
-/

namespace A280394.P9835984552480118189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A155212 n + 5).toNat

end

end A280394.P9835984552480118189

/-! ## A280394.P5751029931991443657

`A280398(A056000(n)+7)`
-/

namespace A280394.P5751029931991443657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A056000 n + 7).toNat

end

end A280394.P5751029931991443657

/-!
# A280395: Number of nX5 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280395, there is no canonical definition to state claims against.
-/

/-! ## A280395.P3370178875608008157

`A280398(Δ[A264443(n)])`
-/

namespace A280395.P3370178875608008157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (f1 (n + 1) - f1 n).toNat

end

end A280395.P3370178875608008157

/-! ## A280395.P17665921713760606191

`A280398(A046691(n+3))`
-/

namespace A280395.P17665921713760606191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A046691 (n + 3)).toNat

end

end A280395.P17665921713760606191

/-! ## A280395.P16461030800519840309

`A280398(A056115(n)+11)`
-/

namespace A280395.P16461030800519840309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A056115 n + 11).toNat

end

end A280395.P16461030800519840309

/-! ## A280395.P11005526096841944801

`A280398(eq[3, A152157(n)])`
-/

namespace A280395.P11005526096841944801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280395.P11005526096841944801

/-! ## A280395.P6073553871821445917

`A280398(eq[4, A193592(n)])`
-/

namespace A280395.P6073553871821445917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280395.P6073553871821445917

/-!
# A280396: Number of n X 6 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280396, there is no canonical definition to state claims against.
-/

/-! ## A280396.P15763544690112773543

`A280398(A052905(n+3))`
-/

namespace A280396.P15763544690112773543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A052905 (n + 3)).toNat

end

end A280396.P15763544690112773543

/-! ## A280396.P10151711580843830730

`A280398(A056119(n)+16)`
-/

namespace A280396.P10151711580843830730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A056119 n + 16).toNat

end

end A280396.P10151711580843830730

/-! ## A280396.P10336799178025167582

`A280398(eq[3, A219347(n)])`
-/

namespace A280396.P10336799178025167582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280396.P10336799178025167582

/-! ## A280396.P2085220384554838397

`A280398(eq[5, A193592(n)])`
-/

namespace A280396.P2085220384554838397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280396.P2085220384554838397

/-! ## A280396.P5823877556672118380

`A280398(eq[8, A258709(n)])`
-/

namespace A280396.P5823877556672118380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280396.P5823877556672118380

/-!
# A280397: Number of nX7 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280397, there is no canonical definition to state claims against.
-/

/-! ## A280397.P9374400724735617403

`A280398(A055999(n+4))`
-/

namespace A280397.P9374400724735617403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (A055999 (n + 4)).toNat

end

end A280397.P9374400724735617403

/-! ## A280397.P18296433792654393815

`A280398(eq[4, A219347(n)])`
-/

namespace A280397.P18296433792654393815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280397.P18296433792654393815

/-! ## A280397.P1110801990240510471

`A280398(eq[5, A332954(n)])`
-/

namespace A280397.P1110801990240510471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280397.P1110801990240510471

/-! ## A280397.P17461350090344286309

`A280398(eq[6, A193592(n)])`
-/

namespace A280397.P17461350090344286309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280397.P17461350090344286309

/-!
# A280399: Number of 1 X n 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280399, the canonical program `A280399.P1181990150596429307` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280399 has offset 1).

The definition of A280399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280399.P1181990150596429307

`2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2, a(4)=8`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A280399

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P1181990150596429307.Spec : Prop :=
  ∀ n, P1181990150596429307.a n = A280399 (n + 1)

theorem P1181990150596429307.correct : P1181990150596429307.Spec := by
  intro n
  simp only [A280399, Nat.add_sub_cancel]

end A280399

/-! ## A280399.P6843829101433285856

`2*A219754(n+2)`
-/

namespace A280399.P6843829101433285856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219754 (n + 2)

end

end A280399.P6843829101433285856

namespace A280399

/-- `2*A219754(n+2)` -/
def P6843829101433285856.Spec : Prop :=
  ∀ n, P6843829101433285856.a n = A280399 (n + 1)

end A280399

/-! ## A280399.P6700124070660622502

`Δ[A127976(A028310(n))/2]`
-/

namespace A280399.P6700124070660622502
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127976 (A028310 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280399.P6700124070660622502

namespace A280399

/-- `Δ[A127976(A028310(n))/2]` -/
def P6700124070660622502.Spec : Prop :=
  ∀ n, P6700124070660622502.a n = (A280399 (n + 1) : ℚ)

end A280399

/-! ## A280399.P926239545432223012

`Δ[A127976(A233583(n+1))/2]`
-/

namespace A280399.P926239545432223012
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127976 (A233583 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280399.P926239545432223012

namespace A280399

/-- `Δ[A127976(A233583(n+1))/2]` -/
def P926239545432223012.Spec : Prop :=
  ∀ n, P926239545432223012.a n = (A280399 (n + 1) : ℚ)

end A280399

/-! ## A280399.P2664104803961568750

`abs(A062157(n)/2*A322039(n))`
-/

namespace A280399.P2664104803961568750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A062157 n : ℚ) / 2 * (A322039 n : ℚ)|

end

end A280399.P2664104803961568750

namespace A280399

/-- `abs(A062157(n)/2*A322039(n))` -/
def P2664104803961568750.Spec : Prop :=
  ∀ n, P2664104803961568750.a n = (A280399 (n + 1) : ℚ)

end A280399

/-! ## A280399.P1914260107671753765

`(A127976(n+1)-A127976(A028310(n)))/2`
-/

namespace A280399.P1914260107671753765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127976 (n + 1) - A127976 (A028310 n).toNat : ℚ) / 2

end

end A280399.P1914260107671753765

namespace A280399

/-- `(A127976(n+1)-A127976(A028310(n)))/2` -/
def P1914260107671753765.Spec : Prop :=
  ∀ n, P1914260107671753765.a n = (A280399 (n + 1) : ℚ)

end A280399

/-! ## A280399.P7794428165341600956

`(A127976(n+1)-A127976(A233583(n+1)))/2`
-/

namespace A280399.P7794428165341600956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127976 (n + 1) - A127976 (A233583 (n + 1)).toNat : ℚ) / 2

end

end A280399.P7794428165341600956

namespace A280399

/-- `(A127976(n+1)-A127976(A233583(n+1)))/2` -/
def P7794428165341600956.Spec : Prop :=
  ∀ n, P7794428165341600956.a n = (A280399 (n + 1) : ℚ)

end A280399

/-! ## A280399.P9590787770463489240

`A102713(n+1)-A057711(n+1)`
-/

namespace A280399.P9590787770463489240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102713 (n + 1) - A057711 (n + 1)

end

end A280399.P9590787770463489240

namespace A280399

/-- `A102713(n+1)-A057711(n+1)` -/
def P9590787770463489240.Spec : Prop :=
  ∀ n, P9590787770463489240.a n = A280399 (n + 1)

end A280399

/-! ## A280399.P8038114018546378356

`A087447(n+1)+A001045(n)-A127976(n+2)`
-/

namespace A280399.P8038114018546378356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 (n + 1) + (A001045 n - A127976 (n + 2))

end

end A280399.P8038114018546378356

namespace A280399

/-- `A087447(n+1)+A001045(n)-A127976(n+2)` -/
def P8038114018546378356.Spec : Prop :=
  ∀ n, P8038114018546378356.a n = A280399 (n + 1)

end A280399

/-! ## A280399.P1788460983547333000

`A117316(A133263(n)+n)/2`
-/

namespace A280399.P1788460983547333000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117316 (A133263 n + (n : ℤ)).toNat : ℚ) / 2

end

end A280399.P1788460983547333000

namespace A280399

/-- `A117316(A133263(n)+n)/2` -/
def P1788460983547333000.Spec : Prop :=
  ∀ n, P1788460983547333000.a n = (A280399 (n + 1) : ℚ)

end A280399

