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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A156601: Triangle T(n, k, m) = t(n, m)/(t(k, m)*t(n-k, m)), where t(n, k) = Product_{j=1..n} p(j, k+1), p(n, x) = Sum_{j=0..n} (-1)^j*A053122(n, j)*x^j, and m = 7, read by rows.

The programs for A156601, there is no canonical definition to state claims against.
-/

/-! ## A156601.P4979373760606967812

`A154335(n)-A269162(A093129(n))`
-/

namespace A156601.P4979373760606967812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154335 n - A269162 (A093129 n).toNat

end

end A156601.P4979373760606967812

/-! ## A156601.P5372162987298427617

`A143046(A026747(n)%A220015(n+1))`
-/

namespace A156601.P5372162987298427617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143046 (Int.tmod (A026747 n) (A220015 (n + 1))).toNat

end

end A156601.P5372162987298427617

/-! ## A156601.P17309114238317800750

`A008275(A131065(n)%A003022(3*n+4))`
-/

namespace A156601.P17309114238317800750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (Int.tmod (A131065 n) (A003022 (3 * n + 4))).toNat

end

end A156601.P17309114238317800750

/-! ## A156601.P1914876181884323534

`A053122(and(A000040(n+1), A272599(3*n+5)))`
-/

namespace A156601.P1914876181884323534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053122 (Int.land (A000040 (n + 1)) (A272599 (3 * n + 5))).toNat

end

end A156601.P1914876181884323534

/-! ## A156601.P17762665909090881154

`A305006(A276777(n)^A276777(n))-(A009963(n)-1)`
-/

namespace A156601.P17762665909090881154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305006 (SequenceMachineLib.roundAway ((A276777 n : ℚ) ^ (A276777 n : ℤ))).toNat - (A009963 n - 1)

end

end A156601.P17762665909090881154

/-!
# A156602: Triangle T(n, k, m) = t(n, m)/(t(k, m)*t(n-k, m)), where t(n, k) = Product_{j=1..n} p(j, k+1), p(n, x) = Sum_{j=0..n} (-1)^j*A053122(n, j)*x^j, and m = 8, read by rows.

The programs for A156602, there is no canonical definition to state claims against.
-/

/-! ## A156602.P16249978735821927436

`A328258(A157148(n)%A307161(3*n+5))`
-/

namespace A156602.P16249978735821927436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328258 (Int.tmod (A157148 n) (A307161 (3 * n + 5))).toNat

end

end A156602.P16249978735821927436

/-!
# A156603: Square array T(n, k) = Product_{j=1..n} p(j, k+1), p(n, x) = Sum_{j=0..n} (-1)^j*A053122(n, j)*x^j, and T(n, 0) = n!, read by antidiagonals.

The programs for A156603, there is no canonical definition to state claims against.
-/

/-! ## A156603.P14640067323517059291

`A156612(n)*A328698(2*A133277(n+1))`
-/

namespace A156603.P14640067323517059291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156612 n * A328698 (2 * A133277 (n + 1)).toNat

end

end A156603.P14640067323517059291

/-! ## A156603.P7084896297392848207

`A353812(A232955(n+1))+A156612(n)`
-/

namespace A156603.P7084896297392848207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353812 (A232955 (n + 1)).toNat + A156612 n

end

end A156603.P7084896297392848207

/-! ## A156603.P15717944547864433163

`A156612(n)-A010815(A001567(n+1))`
-/

namespace A156603.P15717944547864433163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156612 n - A010815 (A001567 (n + 1)).toNat

end

end A156603.P15717944547864433163

/-! ## A156603.P12050368704636778216

`A156612(n)%A287227(A216219(n+2))`
-/

namespace A156603.P12050368704636778216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156612 n) (A287227 (A216219 (n + 2)).toNat)

end

end A156603.P12050368704636778216

/-! ## A156603.P4243738988992878273

`A156612(n)+A122841(A154228(n+4))`
-/

namespace A156603.P4243738988992878273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156612 n + A122841 (A154228 (n + 4)).toNat

end

end A156603.P4243738988992878273

/-!
# A156605: a(n) = (4^n + 20)/3.

The programs for A156605, the canonical program `A156605.P14108321304059692395` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156605 has offset 0).

The definition of A156605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4^n+20)/3` (program `A156605.P4037252828774119257`, by `A156605.P4037252828774119257.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156605.P4037252828774119257

`(4^n+20)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156605.P4037252828774119257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n + 20 : ℚ) / 3

end

end A156605.P4037252828774119257

namespace A156605

/-- `(4^n+20)/3` -/
def P4037252828774119257.Spec : Prop :=
  ∀ n, P4037252828774119257.a n = (A156605 n : ℚ)

theorem P4037252828774119257.correct : P4037252828774119257.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156605, Nat.add_sub_cancel, A156605.P4037252828774119257.a, A156605.P14108321304059692395.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156605, Nat.add_sub_cancel, A156605.P4037252828774119257.a, A156605.P14108321304059692395.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A156605

/-! ## A156605.P14108321304059692395

`4*a(n-1)-20` with `a(0)=7`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A156605

/-- `4*a(n-1)-20` -/
def P14108321304059692395.Spec : Prop :=
  ∀ n, P14108321304059692395.a n = A156605 n

theorem P14108321304059692395.correct : P14108321304059692395.Spec := by
  intro n
  simp only [A156605]

end A156605

/-! ## A156605.P15119753012789766593

`7+A002450(n)`
-/

namespace A156605.P15119753012789766593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 + A002450 n

end

end A156605.P15119753012789766593

namespace A156605

/-- `7+A002450(n)` -/
def P15119753012789766593.Spec : Prop :=
  ∀ n, P15119753012789766593.a n = A156605 n

end A156605

/-! ## A156605.P2048111028850584022

`4+A154879(2*n)`
-/

namespace A156605.P2048111028850584022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + A154879 (2 * n)

end

end A156605.P2048111028850584022

namespace A156605

/-- `4+A154879(2*n)` -/
def P2048111028850584022.Spec : Prop :=
  ∀ n, P2048111028850584022.a n = A156605 n

end A156605

/-! ## A156605.P17862996440160584523

`-A156591(2*n+1)`
-/

namespace A156605.P17862996440160584523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A156591 (2 * n + 1)

end

end A156605.P17862996440160584523

namespace A156605

/-- `-A156591(2*n+1)` -/
def P17862996440160584523.Spec : Prop :=
  ∀ n, P17862996440160584523.a n = A156605 n

end A156605

/-! ## A156605.P13293240043494094790

`lcm(4, 5-a(n-1))` with `a(0)=7, a(1)=8`
-/

namespace A156605.P13293240043494094790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 8] fun n a =>
  Int.lcm 4 (5 - (a (n - 1) : ℤ))

end

end A156605.P13293240043494094790

namespace A156605

/-- `lcm(4, 5-a(n-1))` -/
def P13293240043494094790.Spec : Prop :=
  ∀ n, (P13293240043494094790.a n : ℤ) = A156605 n

end A156605

/-! ## A156605.P14459119154591275730

`a(n-1)+4^(n-1)` with `a(0)=7`
-/

namespace A156605.P14459119154591275730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A156605.P14459119154591275730

namespace A156605

/-- `a(n-1)+4^(n-1)` -/
def P14459119154591275730.Spec : Prop :=
  ∀ n, P14459119154591275730.a n = (A156605 n : ℚ)

end A156605

/-! ## A156605.P4191241326461937397

`or(4^(n-1), a(n-1))` with `a(0)=7, a(1)=8`
-/

namespace A156605.P4191241326461937397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 8] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1))

end

end A156605.P4191241326461937397

namespace A156605

/-- `or(4^(n-1), a(n-1))` -/
def P4191241326461937397.Spec : Prop :=
  ∀ n, P4191241326461937397.a n = A156605 n

end A156605

/-! ## A156605.P2640179139441464245

`xor(4^(n-1), a(n-1))` with `a(0)=7, a(1)=8`
-/

namespace A156605.P2640179139441464245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 8] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1))

end

end A156605.P2640179139441464245

namespace A156605

/-- `xor(4^(n-1), a(n-1))` -/
def P2640179139441464245.Spec : Prop :=
  ∀ n, P2640179139441464245.a n = A156605 n

end A156605

/-! ## A156605.P2811391587349638424

`∑[4^(n-a(n-1)%3)]` with `a(0)=7`
-/

namespace A156605.P2811391587349638424
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [7] fun n f1 =>
  (4 : ℚ) ^ ((n : ℤ) - Int.tmod (SequenceMachineLib.roundAway (f1 (n - 1))) 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156605.P2811391587349638424

namespace A156605

/-- `∑[4^(n-a(n-1)%3)]` -/
def P2811391587349638424.Spec : Prop :=
  ∀ n, P2811391587349638424.a n = (A156605 n : ℚ)

end A156605

/-! ## A156605.P8020305114741137485

`∑[4^(n-gcd(3, a(n-1)))]` with `a(0)=7`
-/

namespace A156605.P8020305114741137485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [7] fun n f1 =>
  (4 : ℚ) ^ ((n : ℤ) - (Int.gcd 3 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156605.P8020305114741137485

namespace A156605

/-- `∑[4^(n-gcd(3, a(n-1)))]` -/
def P8020305114741137485.Spec : Prop :=
  ∀ n, P8020305114741137485.a n = (A156605 n : ℚ)

end A156605

/-! ## A156605.P3597495202298817374

`A163868(n)+3`
-/

namespace A156605.P3597495202298817374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163868 n + 3

end

end A156605.P3597495202298817374

namespace A156605

/-- `A163868(n)+3` -/
def P3597495202298817374.Spec : Prop :=
  ∀ n, P3597495202298817374.a n = A156605 n

end A156605

/-! ## A156605.P17573003308627775738

`A155701(n)+4`
-/

namespace A156605.P17573003308627775738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155701 n + 4

end

end A156605.P17573003308627775738

namespace A156605

/-- `A155701(n)+4` -/
def P17573003308627775738.Spec : Prop :=
  ∀ n, P17573003308627775738.a n = A156605 n

end A156605

/-! ## A156605.P13468571952400185349

`A163834(n)+5`
-/

namespace A156605.P13468571952400185349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163834 n + 5

end

end A156605.P13468571952400185349

namespace A156605

/-- `A163834(n)+5` -/
def P13468571952400185349.Spec : Prop :=
  ∀ n, P13468571952400185349.a n = A156605 n

end A156605

/-! ## A156605.P15081840580820429430

`A047849(n)+6`
-/

namespace A156605.P15081840580820429430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n + 6

end

end A156605.P15081840580820429430

namespace A156605

/-- `A047849(n)+6` -/
def P15081840580820429430.Spec : Prop :=
  ∀ n, P15081840580820429430.a n = A156605 n

end A156605

/-! ## A156605.P3228946447391706164

`Δ[A323397(n)]+5`
-/

namespace A156605.P3228946447391706164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 5

end

end A156605.P3228946447391706164

namespace A156605

/-- `Δ[A323397(n)]+5` -/
def P3228946447391706164.Spec : Prop :=
  ∀ n, P3228946447391706164.a n = A156605 n

end A156605

/-! ## A156605.P15159449227828237413

`record[A140966(n)+5]`
-/

namespace A156605.P15159449227828237413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156605.P15159449227828237413

namespace A156605

/-- `record[A140966(n)+5]` -/
def P15159449227828237413.Spec : Prop :=
  ∀ n, P15159449227828237413.a n = A156605 n

end A156605

/-! ## A156605.P707712950641714112

`A352692(2*n)+3`
-/

namespace A156605.P707712950641714112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352692 (2 * n) + 3

end

end A156605.P707712950641714112

namespace A156605

/-- `A352692(2*n)+3` -/
def P707712950641714112.Spec : Prop :=
  ∀ n, P707712950641714112.a n = A156605 n

end A156605

/-! ## A156605.P368852978982752114

`A154890(2*n)+4`
-/

namespace A156605.P368852978982752114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154890 (2 * n) + 4

end

end A156605.P368852978982752114

namespace A156605

/-- `A154890(2*n)+4` -/
def P368852978982752114.Spec : Prop :=
  ∀ n, P368852978982752114.a n = A156605 n

end A156605

/-! ## A156605.P4635190273045449252

`A140966(2*n)+5`
-/

namespace A156605.P4635190273045449252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 (2 * n) + 5

end

end A156605.P4635190273045449252

namespace A156605

/-- `A140966(2*n)+5` -/
def P4635190273045449252.Spec : Prop :=
  ∀ n, P4635190273045449252.a n = A156605 n

end A156605

/-!
# A156606: a(n)=number of even digits in prime(n) + number of prime digits in prime(n).

The programs for A156606, there is no canonical definition to state claims against.
-/

/-! ## A156606.P2909942008378766351

`A109066(n+1)+A104637(n+1)`
-/

namespace A156606.P2909942008378766351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109066 (n + 1) + A104637 (n + 1)

end

end A156606.P2909942008378766351

/-! ## A156606.P3077900012115169672

`A193238(A000040(n+1))+A104637(n+1)`
-/

namespace A156606.P3077900012115169672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A000040 (n + 1)).toNat + A104637 (n + 1)

end

end A156606.P3077900012115169672

/-! ## A156606.P2533976613450291502

`A196563(A000040(n+1))+A109066(n+1)`
-/

namespace A156606.P2533976613450291502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A000040 (n + 1)).toNat + A109066 (n + 1)

end

end A156606.P2533976613450291502

/-! ## A156606.P12707710454278995552

`A196563(A004087(n+1))+A109066(n+1)`
-/

namespace A156606.P12707710454278995552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A004087 (n + 1)).toNat + A109066 (n + 1)

end

end A156606.P12707710454278995552

/-! ## A156606.P11565747608091010633

`A196563(A028906(n+1))+A109066(n+1)`
-/

namespace A156606.P11565747608091010633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A028906 (n + 1)).toNat + A109066 (n + 1)

end

end A156606.P11565747608091010633

/-! ## A156606.P17278523938360871403

`A193238(A171039(n+1))+A104637(n+1)`
-/

namespace A156606.P17278523938360871403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A171039 (n + 1)).toNat + A104637 (n + 1)

end

end A156606.P17278523938360871403

/-! ## A156606.P17784257200317872102

`A109066(n+1)+∑{digits}[A000040(n+1), A059841(#)]`
-/

namespace A156606.P17784257200317872102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109066 (n + 1) + ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A059841 x).sum

end

end A156606.P17784257200317872102

/-! ## A156606.P4564106192125166698

`A196563(record[A000010(n+1)+1])+A109066(n+1)`
-/

namespace A156606.P4564106192125166698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A109066 (n + 1)

end

end A156606.P4564106192125166698

/-! ## A156606.P10790550832058328163

`A104637(n+1)+A156607(n+1)-A104638(n+1)`
-/

namespace A156606.P10790550832058328163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104637 (n + 1) + (A156607 (n + 1) - A104638 (n + 1))

end

end A156606.P10790550832058328163

/-!
# A156607: a(n) = number of odd decimal digits of n-th prime + number of prime decimal digits of n-th prime.

The programs for A156607, the canonical program `A156607.P10129258563701118720` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156607 has offset 1).

The definition of A156607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156607.P4150710681181600289

`A109066(n+1)+A104638(n+1)`
-/

namespace A156607.P4150710681181600289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109066 (n + 1) + A104638 (n + 1)

end

end A156607.P4150710681181600289

namespace A156607

/-- `A109066(n+1)+A104638(n+1)` -/
def P4150710681181600289.Spec : Prop :=
  ∀ n, P4150710681181600289.a n = A156607 (n + 1)

end A156607

/-! ## A156607.P10129258563701118720

`∑{digits}[A000040(n+1), A101660(2*#²-#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A156607

/-- `∑{digits}[A000040(n+1), A101660(2*#²-#)]` -/
def P10129258563701118720.Spec : Prop :=
  ∀ n, P10129258563701118720.a n = A156607 (n + 1)

theorem P10129258563701118720.correct : P10129258563701118720.Spec := by
  intro n
  simp only [A156607, Nat.add_sub_cancel]

end A156607

/-! ## A156607.P9202608675590153015

`∑{digits}[sqrt(A001248(n+1)), A101660(2*#²-#)]`
-/

namespace A156607.P9202608675590153015
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => A101660 (2 * x ^ 2 - x)).sum

end

end A156607.P9202608675590153015

namespace A156607

/-- `∑{digits}[sqrt(A001248(n+1)), A101660(2*#²-#)]` -/
def P9202608675590153015.Spec : Prop :=
  ∀ n, P9202608675590153015.a n = A156607 (n + 1)

end A156607

/-! ## A156607.P11939420414579756172

`A193238(Δ[A007504(n)])+A104638(n+1)`
-/

namespace A156607.P11939420414579756172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (f1 (n + 1) - f1 n).toNat + A104638 (n + 1)

end

end A156607.P11939420414579756172

namespace A156607

/-- `A193238(Δ[A007504(n)])+A104638(n+1)` -/
def P11939420414579756172.Spec : Prop :=
  ∀ n, P11939420414579756172.a n = A156607 (n + 1)

end A156607

/-! ## A156607.P10751399171438852828

`A193238(A000040(n+1))+A104638(n+1)`
-/

namespace A156607.P10751399171438852828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A000040 (n + 1)).toNat + A104638 (n + 1)

end

end A156607.P10751399171438852828

namespace A156607

/-- `A193238(A000040(n+1))+A104638(n+1)` -/
def P10751399171438852828.Spec : Prop :=
  ∀ n, P10751399171438852828.a n = A156607 (n + 1)

end A156607

/-! ## A156607.P11775868436562506088

`A196564(A000040(n+1))+A109066(n+1)`
-/

namespace A156607.P11775868436562506088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A000040 (n + 1)).toNat + A109066 (n + 1)

end

end A156607.P11775868436562506088

namespace A156607

/-- `A196564(A000040(n+1))+A109066(n+1)` -/
def P11775868436562506088.Spec : Prop :=
  ∀ n, P11775868436562506088.a n = A156607 (n + 1)

end A156607

/-! ## A156607.P6618352827229522512

`A196564(A004087(n+1))+A109066(n+1)`
-/

namespace A156607.P6618352827229522512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A004087 (n + 1)).toNat + A109066 (n + 1)

end

end A156607.P6618352827229522512

namespace A156607

/-- `A196564(A004087(n+1))+A109066(n+1)` -/
def P6618352827229522512.Spec : Prop :=
  ∀ n, P6618352827229522512.a n = A156607 (n + 1)

end A156607

/-! ## A156607.P14808800474805278059

`A193238(A028905(n+1))+A104638(n+1)`
-/

namespace A156607.P14808800474805278059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A028905 (n + 1)).toNat + A104638 (n + 1)

end

end A156607.P14808800474805278059

namespace A156607

/-- `A193238(A028905(n+1))+A104638(n+1)` -/
def P14808800474805278059.Spec : Prop :=
  ∀ n, P14808800474805278059.a n = A156607 (n + 1)

end A156607

/-! ## A156607.P15311919290080045477

`A196564(A028905(n+1))+A109066(n+1)`
-/

namespace A156607.P15311919290080045477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A028905 (n + 1)).toNat + A109066 (n + 1)

end

end A156607.P15311919290080045477

namespace A156607

/-- `A196564(A028905(n+1))+A109066(n+1)` -/
def P15311919290080045477.Spec : Prop :=
  ∀ n, P15311919290080045477.a n = A156607 (n + 1)

end A156607

/-! ## A156607.P7951501296311967093

`A196564(A028906(n+1))+A109066(n+1)`
-/

namespace A156607.P7951501296311967093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A028906 (n + 1)).toNat + A109066 (n + 1)

end

end A156607.P7951501296311967093

namespace A156607

/-- `A196564(A028906(n+1))+A109066(n+1)` -/
def P7951501296311967093.Spec : Prop :=
  ∀ n, P7951501296311967093.a n = A156607 (n + 1)

end A156607

/-! ## A156607.P18344554106903078718

`A196564(A171014(n+1))+A109066(n+1)`
-/

namespace A156607.P18344554106903078718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A171014 (n + 1)).toNat + A109066 (n + 1)

end

end A156607.P18344554106903078718

namespace A156607

/-- `A196564(A171014(n+1))+A109066(n+1)` -/
def P18344554106903078718.Spec : Prop :=
  ∀ n, P18344554106903078718.a n = A156607 (n + 1)

end A156607

/-! ## A156607.P583106000993057963

`A193238(record[A006530(n+2)])+A104638(n+1)`
-/

namespace A156607.P583106000993057963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A104638 (n + 1)

end

end A156607.P583106000993057963

namespace A156607

/-- `A193238(record[A006530(n+2)])+A104638(n+1)` -/
def P583106000993057963.Spec : Prop :=
  ∀ n, P583106000993057963.a n = A156607 (n + 1)

end A156607

/-! ## A156607.P16618664508882957433

`A193238(record[A014963(n+2)])+A104638(n+1)`
-/

namespace A156607.P16618664508882957433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A104638 (n + 1)

end

end A156607.P16618664508882957433

namespace A156607

/-- `A193238(record[A014963(n+2)])+A104638(n+1)` -/
def P16618664508882957433.Spec : Prop :=
  ∀ n, P16618664508882957433.a n = A156607 (n + 1)

end A156607

/-! ## A156607.P6725688719596519486

`A193238(record[A020639(n+2)])+A104638(n+1)`
-/

namespace A156607.P6725688719596519486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A104638 (n + 1)

end

end A156607.P6725688719596519486

namespace A156607

/-- `A193238(record[A020639(n+2)])+A104638(n+1)` -/
def P6725688719596519486.Spec : Prop :=
  ∀ n, P6725688719596519486.a n = A156607 (n + 1)

end A156607

/-!
# A156609: Triangle T(n, k, m) = round( t(n,m)/(t(k,m)*t(n-k,m)) ), with T(0, k, m) = 1, where t(n, k) = Product_{j=1..n} A129862(k+1, j), t(n, 0) = n!, and m = 3, read by rows.

The programs for A156609, there is no canonical definition to state claims against.
-/

/-! ## A156609.P1655350349389639352

`A158522(A172342(n)*A172358(n))`
-/

namespace A156609.P1655350349389639352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A172342 n * A172358 n).toNat

end

end A156609.P1655350349389639352

/-!
# A156611: a(1) = 2, a(n+1) is smallest prime >= a(n)+2*n.

The programs for A156611, the canonical program `A156611.P13062868264229254532` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156611 has offset 1).

The definition of A156611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156611.P13062868264229254532

`A151800(a(n-1)+2*n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156611

/-- `A151800(a(n-1)+2*n-1)` -/
def P13062868264229254532.Spec : Prop :=
  ∀ n, P13062868264229254532.a n = A156611 (n + 1)

theorem P13062868264229254532.correct : P13062868264229254532.Spec := by
  intro n
  simp only [A156611, Nat.add_sub_cancel]

end A156611

/-! ## A156611.P2616775014008091277

`A151800(A005843(n)+a(n-1)-1)` with `a(0)=2`
-/

namespace A156611.P2616775014008091277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A005843 n + (a (n - 1) - 1)).toNat

end

end A156611.P2616775014008091277

namespace A156611

/-- `A151800(A005843(n)+a(n-1)-1)` -/
def P2616775014008091277.Spec : Prop :=
  ∀ n, P2616775014008091277.a n = A156611 (n + 1)

end A156611

/-! ## A156611.P478501127127397352

`A151800(A005843(n)-(1-a(n-1)))` with `a(0)=2`
-/

namespace A156611.P478501127127397352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A005843 n - (1 - a (n - 1))).toNat

end

end A156611.P478501127127397352

namespace A156611

/-- `A151800(A005843(n)-(1-a(n-1)))` -/
def P478501127127397352.Spec : Prop :=
  ∀ n, P478501127127397352.a n = A156611 (n + 1)

end A156611

/-! ## A156611.P5200969783925905171

`A151800(A000010(a(n-1))+2*n)` with `a(0)=2`
-/

namespace A156611.P5200969783925905171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A000010 (a (n - 1)).toNat + (2 * n : ℤ)).toNat

end

end A156611.P5200969783925905171

namespace A156611

/-- `A151800(A000010(a(n-1))+2*n)` -/
def P5200969783925905171.Spec : Prop :=
  ∀ n, P5200969783925905171.a n = A156611 (n + 1)

end A156611

/-! ## A156611.P15179785300952580358

`A151800(eq[n, A195140(n)]+a(n-1))` with `a(0)=2`
-/

namespace A156611.P15179785300952580358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + a (n - 1)).toNat

end

end A156611.P15179785300952580358

namespace A156611

/-- `A151800(eq[n, A195140(n)]+a(n-1))` -/
def P15179785300952580358.Spec : Prop :=
  ∀ n, P15179785300952580358.a n = A156611 (n + 1)

end A156611

/-! ## A156611.P12046423336545450049

`A007918(a(n-1)+2*n)` with `a(0)=2`
-/

namespace A156611.P12046423336545450049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (a (n - 1) + (2 * n : ℤ)).toNat

end

end A156611.P12046423336545450049

namespace A156611

/-- `A007918(a(n-1)+2*n)` -/
def P12046423336545450049.Spec : Prop :=
  ∀ n, P12046423336545450049.a n = A156611 (n + 1)

end A156611

/-! ## A156611.P5100004238900868618

`A007918(a(n-1)+n+n)` with `a(0)=2`
-/

namespace A156611.P5100004238900868618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (a (n - 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A156611.P5100004238900868618

namespace A156611

/-- `A007918(a(n-1)+n+n)` -/
def P5100004238900868618.Spec : Prop :=
  ∀ n, P5100004238900868618.a n = A156611 (n + 1)

end A156611

/-!
# A156612: Square array T(n, k) = Product_{j=1..n} A129862(k+1, j) with T(n, 0) = n!, read by antidiagonals.

The programs for A156612, there is no canonical definition to state claims against.
-/

/-! ## A156612.P9464915780809479170

`A156603(n)-A332579(A238016(n))`
-/

namespace A156612.P9464915780809479170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156603 n - A332579 (A238016 n).toNat

end

end A156612.P9464915780809479170

/-! ## A156612.P7732404435307925943

`A156603(n)-A353812(A232955(n+1))`
-/

namespace A156612.P7732404435307925943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156603 n - A353812 (A232955 (n + 1)).toNat

end

end A156612.P7732404435307925943

/-! ## A156612.P7690362448778279194

`A156603(n)+A010815(A008440(3*n+4))`
-/

namespace A156612.P7690362448778279194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156603 n + A010815 (A008440 (3 * n + 4)).toNat

end

end A156612.P7690362448778279194

/-!
# A156615: a(1)=2, a(n+1) is the smallest prime > n*final digit of a(n).

The programs for A156615, there is no canonical definition to state claims against.
-/

/-! ## A156615.P15649993030238952490

`A151800(n*A010879(a(n-1)))` with `a(0)=2`
-/

namespace A156615.P15649993030238952490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 ((n : ℤ) * A010879 (a (n - 1)).toNat).toNat

end

end A156615.P15649993030238952490

/-!
# A156616: G.f.: Product_{n>0} ((1+x^n)/(1-x^n))^n.

The programs for A156616, there is no canonical definition to state claims against.
-/

/-! ## A156616.P9573360962742300915

`floor(sqrt(A000040(4^n-n²)))`
-/

namespace A156616.P9573360962742300915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 (4 ^ n - n ^ 2))

end

end A156616.P9573360962742300915

/-! ## A156616.P15881868757722718055

`A000006(A024038(n))`
-/

namespace A156616.P15881868757722718055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A024038 n).toNat

end

end A156616.P15881868757722718055

/-! ## A156616.P11952115497303198821

`A000267(A189391(n)²)`
-/

namespace A156616.P11952115497303198821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A189391 n ^ 2).toNat

end

end A156616.P11952115497303198821

/-!
# A156617: Prime numbers where the last digit is the sum of all the previous digits.

The programs for A156617, there is no canonical definition to state claims against.
-/

/-! ## A156617.P14393230251048537626

`p?[A108773(n)%A304205(n+1)]`
-/

namespace A156617.P14393230251048537626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108773 n) (A304205 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156617.P14393230251048537626

/-! ## A156617.P2177248564122280173

`record[A020639(A108773(n+1)%A304205(n+1))]`
-/

namespace A156617.P2177248564122280173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A108773 (n + 1)) (A304205 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156617.P2177248564122280173

/-! ## A156617.P10186236545623355765

`p?[A055640(A169805(n)/2)*A108773(n)]`
-/

namespace A156617.P10186236545623355765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat * A108773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156617.P10186236545623355765

/-! ## A156617.P15439656992035577138

`p?[A055640(A062028(n)-n)*A108773(n)]`
-/

namespace A156617.P15439656992035577138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A062028 n - (n : ℤ)).toNat * A108773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156617.P15439656992035577138

/-! ## A156617.P12109255157408036217

`p?[A089643(A169805(n))*A108773(n)]`
-/

namespace A156617.P12109255157408036217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (A169805 n).toNat * A108773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156617.P12109255157408036217

/-!
# A156619: Numbers congruent to {7, 18} mod 25.

The programs for A156619, the canonical program `A156619.P16791312320456282629` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156619 has offset 1).

The definition of A156619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156619.P16791312320456282629

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=7, a(1)=18, a(2)=32`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A156619

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P16791312320456282629.Spec : Prop :=
  ∀ n, P16791312320456282629.a n = A156619 (n + 1)

theorem P16791312320456282629.correct : P16791312320456282629.Spec := by
  intro n
  simp only [A156619, Nat.add_sub_cancel]

end A156619

/-! ## A156619.P13424302139783135154

`a(n-2)+25` with `a(0)=7, a(1)=18`
-/

namespace A156619.P13424302139783135154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 18] fun n a =>
  a (n - 2) + 25

end

end A156619.P13424302139783135154

namespace A156619

/-- `a(n-2)+25` -/
def P13424302139783135154.Spec : Prop :=
  ∀ n, (P13424302139783135154.a n : ℤ) = A156619 (n + 1)

end A156619

/-! ## A156619.P3519585035670214075

`Δ[ceil((5*n/2)²)]`
-/

namespace A156619.P3519585035670214075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 * ((n : ℚ) / 2)) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156619.P3519585035670214075

namespace A156619

/-- `Δ[ceil((5*n/2)²)]` -/
def P3519585035670214075.Spec : Prop :=
  ∀ n, P3519585035670214075.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P15014386168336791643

`∑[25-a(n-1)]` with `a(0)=7, a(1)=11`
-/

namespace A156619.P15014386168336791643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 11] fun n f1 =>
  25 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156619.P15014386168336791643

namespace A156619

/-- `∑[25-a(n-1)]` -/
def P15014386168336791643.Spec : Prop :=
  ∀ n, P15014386168336791643.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P5253939310032708287

`25*n-a(n-1)` with `a(0)=7`
-/

namespace A156619.P5253939310032708287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  (25 * n : ℤ) - a (n - 1)

end

end A156619.P5253939310032708287

namespace A156619

/-- `25*n-a(n-1)` -/
def P5253939310032708287.Spec : Prop :=
  ∀ n, P5253939310032708287.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P10163984490305463010

`record[lcm(3, n+1)]+8*n+4`
-/

namespace A156619.P10163984490305463010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (8 * n + 4)

end

end A156619.P10163984490305463010

namespace A156619

/-- `record[lcm(3, n+1)]+8*n+4` -/
def P10163984490305463010.Spec : Prop :=
  ∀ n, (P10163984490305463010.a n : ℤ) = A156619 (n + 1)

end A156619

/-! ## A156619.P2755918702670072259

`∑[A029621(a(n-1))]` with `a(0)=7`
-/

namespace A156619.P2755918702670072259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A029621 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156619.P2755918702670072259

namespace A156619

/-- `∑[A029621(a(n-1))]` -/
def P2755918702670072259.Spec : Prop :=
  ∀ n, P2755918702670072259.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P45900347247280553

`∑[A259556(a(n-1))]` with `a(0)=7`
-/

namespace A156619.P45900347247280553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A259556 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156619.P45900347247280553

namespace A156619

/-- `∑[A259556(a(n-1))]` -/
def P45900347247280553.Spec : Prop :=
  ∀ n, P45900347247280553.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P15297095144290821069

`∑[A292776(a(n-1))]` with `a(0)=7`
-/

namespace A156619.P15297095144290821069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A292776 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156619.P15297095144290821069

namespace A156619

/-- `∑[A292776(a(n-1))]` -/
def P15297095144290821069.Spec : Prop :=
  ∀ n, P15297095144290821069.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P11010773851971262115

`∑[A359515(a(n-1))]` with `a(0)=7`
-/

namespace A156619.P11010773851971262115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A359515 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156619.P11010773851971262115

namespace A156619

/-- `∑[A359515(a(n-1))]` -/
def P11010773851971262115.Spec : Prop :=
  ∀ n, P11010773851971262115.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P13871303619858312416

`∑[A383020(a(n-1))]` with `a(0)=7`
-/

namespace A156619.P13871303619858312416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A383020 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156619.P13871303619858312416

namespace A156619

/-- `∑[A383020(a(n-1))]` -/
def P13871303619858312416.Spec : Prop :=
  ∀ n, P13871303619858312416.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P11702235737698317309

`3*A193910(n+1)-(n-1)`
-/

namespace A156619.P11702235737698317309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A193910 (n + 1) - ((n : ℤ) - 1)

end

end A156619.P11702235737698317309

namespace A156619

/-- `3*A193910(n+1)-(n-1)` -/
def P11702235737698317309.Spec : Prop :=
  ∀ n, P11702235737698317309.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P3282523713891102607

`A047348(n+1)+9*n+5`
-/

namespace A156619.P3282523713891102607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047348 (n + 1) + (9 * n + 5 : ℤ)

end

end A156619.P3282523713891102607

namespace A156619

/-- `A047348(n+1)+9*n+5` -/
def P3282523713891102607.Spec : Prop :=
  ∀ n, P3282523713891102607.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P9743978577937326020

`5*n+11*n+7-A047382(n+1)`
-/

namespace A156619.P9743978577937326020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) + ((11 * n + 7 : ℤ) - A047382 (n + 1))

end

end A156619.P9743978577937326020

namespace A156619

/-- `5*n+11*n+7-A047382(n+1)` -/
def P9743978577937326020.Spec : Prop :=
  ∀ n, P9743978577937326020.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P14289891081709858782

`A028242(n)+A017593(n)`
-/

namespace A156619.P14289891081709858782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + A017593 n

end

end A156619.P14289891081709858782

namespace A156619

/-- `A028242(n)+A017593(n)` -/
def P14289891081709858782.Spec : Prop :=
  ∀ n, P14289891081709858782.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P15373643415526884006

`A168237(n)+A017473(n)`
-/

namespace A156619.P15373643415526884006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168237 n + A017473 n

end

end A156619.P15373643415526884006

namespace A156619

/-- `A168237(n)+A017473(n)` -/
def P15373643415526884006.Spec : Prop :=
  ∀ n, P15373643415526884006.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P508434031089584867

`A269044(n)-A030451(n)`
-/

namespace A156619.P508434031089584867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n - A030451 n

end

end A156619.P508434031089584867

namespace A156619

/-- `A269044(n)-A030451(n)` -/
def P508434031089584867.Spec : Prop :=
  ∀ n, P508434031089584867.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P5582914812565630790

`∑[A040012(n)+A040007(n)]`
-/

namespace A156619.P5582914812565630790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040012 n + A040007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156619.P5582914812565630790

namespace A156619

/-- `∑[A040012(n)+A040007(n)]` -/
def P5582914812565630790.Spec : Prop :=
  ∀ n, P5582914812565630790.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P222870749448708870

`∑[or(A040011(n), A040020(n))]`
-/

namespace A156619.P222870749448708870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040011 n) (A040020 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156619.P222870749448708870

namespace A156619

/-- `∑[or(A040011(n), A040020(n))]` -/
def P222870749448708870.Spec : Prop :=
  ∀ n, P222870749448708870.a n = A156619 (n + 1)

end A156619

/-! ## A156619.P18411379162495090135

`A017353(n)+A008851(n+1)`
-/

namespace A156619.P18411379162495090135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + A008851 (n + 1)

end

end A156619.P18411379162495090135

namespace A156619

/-- `A017353(n)+A008851(n+1)` -/
def P18411379162495090135.Spec : Prop :=
  ∀ n, P18411379162495090135.a n = A156619 (n + 1)

end A156619

/-!
# A156620: Primes p such that p^2 - 2 is a 5-almost prime.

The programs for A156620, there is no canonical definition to state claims against.
-/

/-! ## A156620.P11413993840115005089

`ceil(sqrt(A156621(n+1)))`
-/

namespace A156620.P11413993840115005089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A156621 (n + 1) : ℝ)⌉

end

end A156620.P11413993840115005089

/-! ## A156620.P2738807427057289785

`A000027(round(sqrt(A156621(n+1))))`
-/

namespace A156620.P2738807427057289785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A156621 (n + 1) : ℝ))).toNat

end

end A156620.P2738807427057289785

/-! ## A156620.P15836913200138284892

`A006530(round(sqrt(A156621(n+1))))`
-/

namespace A156620.P15836913200138284892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A156621 (n + 1) : ℝ))).toNat

end

end A156620.P15836913200138284892

/-! ## A156620.P15895452144366495072

`A020639(round(sqrt(A156621(n+1))))`
-/

namespace A156620.P15895452144366495072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A156621 (n + 1) : ℝ))).toNat

end

end A156620.P15895452144366495072

/-! ## A156620.P11568780723211446674

`A006530(sqrt(A156621(n+1)+2))`
-/

namespace A156620.P11568780723211446674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A156621 (n + 1) + 2 : ℝ))).toNat

end

end A156620.P11568780723211446674

/-!
# A156621: 5-almost primes of the form p^2 - 2, where p is prime.

The programs for A156621, there is no canonical definition to state claims against.
-/

/-! ## A156621.P607555646878801712

`A156620(n+1)²-2`
-/

namespace A156621.P607555646878801712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156620 (n + 1) ^ 2 - 2

end

end A156621.P607555646878801712

/-! ## A156621.P26256589397573531

`A007427(A002476(n+1))+A156620(n+1)²`
-/

namespace A156621.P26256589397573531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A002476 (n + 1)).toNat + A156620 (n + 1) ^ 2

end

end A156621.P26256589397573531

/-! ## A156621.P13307003977120874151

`A008865(A156620(n+1))`
-/

namespace A156621.P13307003977120874151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (A156620 (n + 1)).toNat

end

end A156621.P13307003977120874151

/-!
# A156622: Values of register a when register b becomes 0 for the two-register machine {i[1], i[1], i[1], d[2,1], d[1,6], i[2], d[1,5], d[2,3]}.

The programs for A156622, there is no canonical definition to state claims against.
-/

/-! ## A156622.P3804907096378265769

`3*ceil(a(n-1)/2)+1` with `a(0)=1`
-/

namespace A156622.P3804907096378265769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * ⌈(a (n - 1) : ℚ) / 2⌉ + 1

end

end A156622.P3804907096378265769

/-! ## A156622.P16878457285299577168

`3*round(a(n-1)/2)+1` with `a(0)=1`
-/

namespace A156622.P16878457285299577168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 2) + 1

end

end A156622.P16878457285299577168

/-! ## A156622.P6350058567204246835

`lcm(3, ceil(a(n-1)/2))+1` with `a(0)=1`
-/

namespace A156622.P6350058567204246835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 3 ⌈(a (n - 1) : ℚ) / 2⌉ + 1

end

end A156622.P6350058567204246835

/-! ## A156622.P4831843440781498271

`3*round(cosh(log(a(n-1))))+1` with `a(0)=1`
-/

namespace A156622.P4831843440781498271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * SequenceMachineLib.roundAway (Real.cosh (Real.log (a (n - 1) : ℝ))) + 1

end

end A156622.P4831843440781498271

/-! ## A156622.P15739361077923322053

`3*floor((a(n-1)+1)/2)+1` with `a(0)=1`
-/

namespace A156622.P15739361077923322053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * ⌊(a (n - 1) + 1 : ℚ) / 2⌋ + 1

end

end A156622.P15739361077923322053

/-!
# A156624: Nearest integer to the integral of log(x) between 1 and n.

The programs for A156624, there is no canonical definition to state claims against.
-/

/-! ## A156624.P537539541631517907

`ceil(log(A294506(n+1)))`
-/

namespace A156624.P537539541631517907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A294506 (n + 1) : ℝ)⌉

end

end A156624.P537539541631517907

/-! ## A156624.P2139292152360198637

`A050503(n+2)-(n+1)`
-/

namespace A156624.P2139292152360198637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050503 (n + 2) - (n + 1 : ℤ)

end

end A156624.P2139292152360198637

/-! ## A156624.P17012562713027385280

`A023443(A050503(n+2)-n)`
-/

namespace A156624.P17012562713027385280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A050503 (n + 2) - (n : ℤ)).toNat

end

end A156624.P17012562713027385280

/-! ## A156624.P8332840197098346501

`∑[A023443(Δ[A050503(n+1)])]`
-/

namespace A156624.P8332840197098346501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050503 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156624.P8332840197098346501

/-! ## A156624.P17165218929140865217

`∑[A269388(Δ[A050503(n+1)])]`
-/

namespace A156624.P17165218929140865217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050503 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156624.P17165218929140865217

/-!
# A156625: Floor(integral of log(x) from 1 to n).

The programs for A156625, the canonical program `A156625.P10571450301041905720` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156625 has offset 2).

The definition of A156625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156625.P10571450301041905720

`ceil((n+2)*(log(n+2)-1))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A156625

/-- `ceil((n+2)*(log(n+2)-1))` -/
def P10571450301041905720.Spec : Prop :=
  ∀ n, P10571450301041905720.a n = A156625 (n + 2)

theorem P10571450301041905720.correct : P10571450301041905720.Spec := by
  intro n
  simp only [A156625, Nat.add_sub_cancel]

end A156625

/-! ## A156625.P16094803781757734634

`∑[A217865(n+1)-1]`
-/

namespace A156625.P16094803781757734634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217865 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156625.P16094803781757734634

namespace A156625

/-- `∑[A217865(n+1)-1]` -/
def P16094803781757734634.Spec : Prop :=
  ∀ n, P16094803781757734634.a n = A156625 (n + 2)

end A156625

/-! ## A156625.P379760912339800190

`∑[A023443(A217865(n+1))]`
-/

namespace A156625.P379760912339800190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A217865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156625.P379760912339800190

namespace A156625

/-- `∑[A023443(A217865(n+1))]` -/
def P379760912339800190.Spec : Prop :=
  ∀ n, P379760912339800190.a n = A156625 (n + 2)

end A156625

/-! ## A156625.P9269179957484235015

`A050504(n+2)-(n+1)`
-/

namespace A156625.P9269179957484235015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 2) - (n + 1 : ℤ)

end

end A156625.P9269179957484235015

namespace A156625

/-- `A050504(n+2)-(n+1)` -/
def P9269179957484235015.Spec : Prop :=
  ∀ n, P9269179957484235015.a n = A156625 (n + 2)

end A156625

/-! ## A156625.P4283700225472598107

`A050502(n+2)-(n+2)`
-/

namespace A156625.P4283700225472598107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050502 (n + 2) - (n + 2 : ℤ)

end

end A156625.P4283700225472598107

namespace A156625

/-- `A050502(n+2)-(n+2)` -/
def P4283700225472598107.Spec : Prop :=
  ∀ n, P4283700225472598107.a n = A156625 (n + 2)

end A156625

/-! ## A156625.P1214005489582887755

`record[A050502(A028310(n))-n]`
-/

namespace A156625.P1214005489582887755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050502 (A028310 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156625.P1214005489582887755

namespace A156625

/-- `record[A050502(A028310(n))-n]` -/
def P1214005489582887755.Spec : Prop :=
  ∀ n, P1214005489582887755.a n = A156625 (n + 2)

end A156625

/-! ## A156625.P11670966607174634900

`∑[A023443(Δ[A050504(n+1)])]`
-/

namespace A156625.P11670966607174634900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156625.P11670966607174634900

namespace A156625

/-- `∑[A023443(Δ[A050504(n+1)])]` -/
def P11670966607174634900.Spec : Prop :=
  ∀ n, P11670966607174634900.a n = A156625 (n + 2)

end A156625

/-! ## A156625.P7413485316393914926

`A023443(A050504(n+2)-n)`
-/

namespace A156625.P7413485316393914926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A050504 (n + 2) - (n : ℤ)).toNat

end

end A156625.P7413485316393914926

namespace A156625

/-- `A023443(A050504(n+2)-n)` -/
def P7413485316393914926.Spec : Prop :=
  ∀ n, P7413485316393914926.a n = A156625 (n + 2)

end A156625

/-!
# A156626: a(0)=1; a(1)=2; a(2)=6; a(n+1) = 2*(n+1)*a(n) - n^2*a(n-1), n > 1.

The programs for A156626, there is no canonical definition to state claims against.
-/

/-! ## A156626.P18073212478750535974

`and(3, A047849(n))*A005189(n+1)`
-/

namespace A156626.P18073212478750535974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A047849 n) * A005189 (n + 1)

end

end A156626.P18073212478750535974

/-! ## A156626.P10701735207031485822

`2/A285068(2*n+1)*A005189(n+1)`
-/

namespace A156626.P10701735207031485822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A285068 (2 * n + 1) : ℚ) * (A005189 (n + 1) : ℚ)

end

end A156626.P10701735207031485822

/-! ## A156626.P12351690754653458380

`(A000040(n+1)%2+1)*A005189(n+1)`
-/

namespace A156626.P12351690754653458380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000040 (n + 1)) 2 + 1) * A005189 (n + 1)

end

end A156626.P12351690754653458380

/-! ## A156626.P10878704704779165739

`A020639(A001223(n+1))*A005189(n+1)`
-/

namespace A156626.P10878704704779165739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001223 (n + 1)).toNat * A005189 (n + 1)

end

end A156626.P10878704704779165739

/-! ## A156626.P2873353618934001230

`A005189(n+1)*A159885(A285068(2*n+1))`
-/

namespace A156626.P2873353618934001230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005189 (n + 1) * A159885 (A285068 (2 * n + 1)).toNat

end

end A156626.P2873353618934001230

/-!
# A156627: a(n) = 4394*n - 1820.

The programs for A156627, the canonical program `A156627.P2115852716161736592` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156627 has offset 1).

The definition of A156627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156627.P2115852716161736592

`26*A156718(2*(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156627

/-- `26*A156718(2*(n+1))` -/
def P2115852716161736592.Spec : Prop :=
  ∀ n, P2115852716161736592.a n = A156627 (n + 1)

theorem P2115852716161736592.correct : P2115852716161736592.Spec := by
  intro n
  simp only [A156627, Nat.add_sub_cancel]

end A156627

/-!
# A156628: Square array, read by antidiagonals, where row n+1 is generated from row n by first removing terms in row n at positions 0 and {(m+1)*(m+2)/2-2, m>0} and then taking partial sums, starting with all 1's in row 0.

The programs for A156628, there is no canonical definition to state claims against.
-/

/-! ## A156628.P11932302775512698416

`A104980(n)-A083893(A005105(n+5))`
-/

namespace A156628.P11932302775512698416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104980 n - A083893 (A005105 (n + 5)).toNat

end

end A156628.P11932302775512698416

/-! ## A156628.P6612366919868594048

`A104980(n)+A010815(A008440(3*n+4))`
-/

namespace A156628.P6612366919868594048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104980 n + A010815 (A008440 (3 * n + 4)).toNat

end

end A156628.P6612366919868594048

/-! ## A156628.P8861093223288606913

`A104980(n)-A025465(A136225(n))`
-/

namespace A156628.P8861093223288606913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104980 n - A025465 (A136225 n).toNat

end

end A156628.P8861093223288606913

/-! ## A156628.P18166347994565802910

`A104980(n)-A347706(A118113(n))`
-/

namespace A156628.P18166347994565802910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104980 n - A347706 (A118113 n).toNat

end

end A156628.P18166347994565802910

/-! ## A156628.P8944976426421863389

`A104980(n)-A286939(A093466(2*(n+1)))`
-/

namespace A156628.P8944976426421863389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104980 n - A286939 (A093466 (2 * (n + 1))).toNat

end

end A156628.P8944976426421863389

/-!
# A156629: Column 4 of square array A156628.

The programs for A156629, there is no canonical definition to state claims against.
-/

/-! ## A156629.P6333574162022714131

`abs(Δ[A117337(n+1)])`
-/

namespace A156629.P6333574162022714131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A156629.P6333574162022714131

/-! ## A156629.P811105951366843177

`Δ[A117337(n+1)]*A033999(n)`
-/

namespace A156629.P811105951366843177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A156629.P811105951366843177

/-! ## A156629.P12059305299538812834

`abs(A117337(n+1)-A117337(n+2))`
-/

namespace A156629.P12059305299538812834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117337 (n + 1) - A117337 (n + 2)|

end

end A156629.P12059305299538812834

/-! ## A156629.P3733343165423382257

`gcd(Δ[A117337(n+1)], A130706(n+1))`
-/

namespace A156629.P3733343165423382257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A130706 (n + 1))

end

end A156629.P3733343165423382257

/-! ## A156629.P13169980526039902437

`lcm(Δ[A117337(n+1)], A055874(2*n+1))`
-/

namespace A156629.P13169980526039902437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A055874 (2 * n + 1))

end

end A156629.P13169980526039902437

/-!
# A156631: G.f.: A(x) = Sum_{n>=0} ( Sum_{k>=1} (2^n*2^k*x)^k/k )^n / n!, a power series in x with integer coefficients.

The programs for A156631, there is no canonical definition to state claims against.
-/

/-! ## A156631.P18074464394444042455

`∏[A172307(A080929(n))]`
-/

namespace A156631.P18074464394444042455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172307 (A080929 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A156631.P18074464394444042455

/-!
# A156634: Denominator of Euler(n, 1/18).

The programs for A156634, there is no canonical definition to state claims against.
-/

/-! ## A156634.P6086881081577263585

`(3^n*A011782(ceil(xor(1, n)/2)))²`
-/

namespace A156634.P6086881081577263585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) * A011782 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat) ^ 2

end

end A156634.P6086881081577263585

/-! ## A156634.P2908099885304520245

`A001019(n)*A056623(A000079(n))`
-/

namespace A156634.P2908099885304520245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n * A056623 (A000079 n).toNat

end

end A156634.P2908099885304520245

/-! ## A156634.P1919695295745125501

`A000244(n)²*A056623(A000079(n))`
-/

namespace A156634.P1919695295745125501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 * A056623 (A000079 n).toNat

end

end A156634.P1919695295745125501

/-! ## A156634.P8702936647791018154

`A001019(n)*A056623(A011782(n+1))`
-/

namespace A156634.P8702936647791018154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n * A056623 (A011782 (n + 1)).toNat

end

end A156634.P8702936647791018154

/-! ## A156634.P15100259440797486044

`A000244(2*n)*A056623(A000079(n))`
-/

namespace A156634.P15100259440797486044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n) * A056623 (A000079 n).toNat

end

end A156634.P15100259440797486044

/-!
# A156635: a(n) = 144*n^2 - n.

The programs for A156635, the canonical program `A156635.P4675150518182901403` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156635 has offset 1).

The definition of A156635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `144*(n+1)²-(n+1)` (program `A156635.P4675150518182901403`, by `A156635.P4675150518182901403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156635.P4675150518182901403

`144*(n+1)²-(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A156635

/-- `144*(n+1)²-(n+1)` -/
def P4675150518182901403.Spec : Prop :=
  ∀ n, P4675150518182901403.a n = A156635 (n + 1)

theorem P4675150518182901403.correct : P4675150518182901403.Spec := by
  intro n
  simp only [A156635, Nat.add_sub_cancel]

end A156635

/-! ## A156635.P2971712844404467305

`(n+1)*A158136(n+1)`
-/

namespace A156635.P2971712844404467305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158136 (n + 1)

end

end A156635.P2971712844404467305

namespace A156635

/-- `(n+1)*A158136(n+1)` -/
def P2971712844404467305.Spec : Prop :=
  ∀ n, P2971712844404467305.a n = A156635 (n + 1)

end A156635

/-! ## A156635.P13833374257627086372

`(n+1)*(A158133(n+1)-2)`
-/

namespace A156635.P13833374257627086372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158133 (n + 1) - 2)

end

end A156635.P13833374257627086372

namespace A156635

/-- `(n+1)*(A158133(n+1)-2)` -/
def P13833374257627086372.Spec : Prop :=
  ∀ n, P13833374257627086372.a n = A156635 (n + 1)

end A156635

/-! ## A156635.P16457366945579377748

`(n+1)*(A187206(n+1)+5)`
-/

namespace A156635.P16457366945579377748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A187206 (n + 1) + 5)

end

end A156635.P16457366945579377748

namespace A156635

/-- `(n+1)*(A187206(n+1)+5)` -/
def P16457366945579377748.Spec : Prop :=
  ∀ n, P16457366945579377748.a n = A156635 (n + 1)

end A156635

/-! ## A156635.P11405195935974548523

`lcm(A000027(n+1), A158136(n+1))`
-/

namespace A156635.P11405195935974548523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A158136 (n + 1))

end

end A156635.P11405195935974548523

namespace A156635

/-- `lcm(A000027(n+1), A158136(n+1))` -/
def P11405195935974548523.Spec : Prop :=
  ∀ n, (P11405195935974548523.a n : ℤ) = A156635 (n + 1)

end A156635

/-!
# A156636: a(n) = 4394*n + 1820.

The programs for A156636, the canonical program `A156636.P2324365661510684648` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156636 has offset 0).

The definition of A156636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156636.P2324365661510684648

`26*A156718(2*n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156636

/-- `26*A156718(2*n+1)` -/
def P2324365661510684648.Spec : Prop :=
  ∀ n, P2324365661510684648.a n = A156636 n

theorem P2324365661510684648.correct : P2324365661510684648.Spec := by
  intro n
  simp only [A156636]

end A156636

/-!
# A156637: Pell numbers A000129 mod 9. Period 24: repeat 0,1,2,5,3,2,7,7,3,4,2,8,0,8,7,4,6,7,2,2,6,5,7,1.

The programs for A156637, the canonical program `A156637.P5170852203027643146` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156637 has offset 0).

The definition of A156637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156637.P5170852203027643146

`(a(n-2)+2*a(n-1))%9` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A156637

/-- `(a(n-2)+2*a(n-1))%9` -/
def P5170852203027643146.Spec : Prop :=
  ∀ n, (P5170852203027643146.a n : ℤ) = A156637 n

theorem P5170852203027643146.correct : P5170852203027643146.Spec := by
  intro n
  simp only [A156637]

end A156637

/-!
# A156638: Numbers k such that k^2 + 2 == 0 (mod 9).

The programs for A156638, the canonical program `A156638.P14018531804375866489` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156638 has offset 1).

The definition of A156638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156638.P14018531804375866489

`a(n-2)+9` with `a(0)=4, a(1)=5`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A156638

/-- `a(n-2)+9` -/
def P14018531804375866489.Spec : Prop :=
  ∀ n, (P14018531804375866489.a n : ℤ) = A156638 (n + 1)

theorem P14018531804375866489.correct : P14018531804375866489.Spec := by
  intro n
  simp only [A156638, Nat.add_sub_cancel]

end A156638

/-! ## A156638.P4372116469243868402

`∑[gcd(2, n)^3]-4`
-/

namespace A156638.P4372116469243868402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A156638.P4372116469243868402

namespace A156638

/-- `∑[gcd(2, n)^3]-4` -/
def P4372116469243868402.Spec : Prop :=
  ∀ n, P4372116469243868402.a n = A156638 (n + 1)

end A156638

/-! ## A156638.P9540540127710419176

`∑[gcd(8, n²²)]-4`
-/

namespace A156638.P9540540127710419176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 ((n ^ 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A156638.P9540540127710419176

namespace A156638

/-- `∑[gcd(8, n²²)]-4` -/
def P9540540127710419176.Spec : Prop :=
  ∀ n, P9540540127710419176.a n = A156638 (n + 1)

end A156638

/-! ## A156638.P13080138327548733824

`∑[9-a(n-1)]` with `a(0)=4, a(1)=1`
-/

namespace A156638.P13080138327548733824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156638.P13080138327548733824

namespace A156638

/-- `∑[9-a(n-1)]` -/
def P13080138327548733824.Spec : Prop :=
  ∀ n, P13080138327548733824.a n = A156638 (n + 1)

end A156638

/-! ## A156638.P17606382458802071882

`9*n-a(n-1)` with `a(0)=4`
-/

namespace A156638.P17606382458802071882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (9 * n : ℤ) - a (n - 1)

end

end A156638.P17606382458802071882

namespace A156638

/-- `9*n-a(n-1)` -/
def P17606382458802071882.Spec : Prop :=
  ∀ n, P17606382458802071882.a n = A156638 (n + 1)

end A156638

/-! ## A156638.P2224695454165284352

`record[n-lcm(46, dr(n))]+4`
-/

namespace A156638.P2224695454165284352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.lcm 46 (SequenceMachineLib.digitalRoot (n : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 4

end

end A156638.P2224695454165284352

namespace A156638

/-- `record[n-lcm(46, dr(n))]+4` -/
def P2224695454165284352.Spec : Prop :=
  ∀ n, P2224695454165284352.a n = A156638 (n + 1)

end A156638

/-! ## A156638.P5129223267088081706

`∑[8^∑[(-1)^n]]-4`
-/

namespace A156638.P5129223267088081706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A156638.P5129223267088081706

namespace A156638

/-- `∑[8^∑[(-1)^n]]-4` -/
def P5129223267088081706.Spec : Prop :=
  ∀ n, P5129223267088081706.a n = (A156638 (n + 1) : ℚ)

end A156638

/-! ## A156638.P9965510069244751975

`lt[n^dr((2*n)²), n²]`
-/

namespace A156638.P9965510069244751975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot ((2 * n) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A156638.P9965510069244751975

namespace A156638

/-- `lt[n^dr((2*n)²), n²]` -/
def P9965510069244751975.Spec : Prop :=
  ∀ n, (P9965510069244751975.a n : ℤ) = A156638 (n + 1)

end A156638

/-! ## A156638.P8203214983997594837

`lt[dr((2*n)²), 3%(n+1)]`
-/

namespace A156638.P8203214983997594837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((2 * n) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A156638.P8203214983997594837

namespace A156638

/-- `lt[dr((2*n)²), 3%(n+1)]` -/
def P8203214983997594837.Spec : Prop :=
  ∀ n, (P8203214983997594837.a n : ℤ) = A156638 (n + 1)

end A156638

/-! ## A156638.P4039054425490108145

`eq[dr((2*n)²)+n, n+1]`
-/

namespace A156638.P4039054425490108145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((2 * n) ^ 2 : ℤ) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156638.P4039054425490108145

namespace A156638

/-- `eq[dr((2*n)²)+n, n+1]` -/
def P4039054425490108145.Spec : Prop :=
  ∀ n, (P4039054425490108145.a n : ℤ) = A156638 (n + 1)

end A156638

/-! ## A156638.P14615191071100106119

`eq[n-1, n-dr((2*n)²)]`
-/

namespace A156638.P14615191071100106119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot ((2 * n) ^ 2 : ℤ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156638.P14615191071100106119

namespace A156638

/-- `eq[n-1, n-dr((2*n)²)]` -/
def P14615191071100106119.Spec : Prop :=
  ∀ n, (P14615191071100106119.a n : ℤ) = A156638 (n + 1)

end A156638

/-! ## A156638.P15899229335086450155

`lt[n*dr((2*n)²), 2*n]`
-/

namespace A156638.P15899229335086450155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot ((2 * n) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A156638.P15899229335086450155

namespace A156638

/-- `lt[n*dr((2*n)²), 2*n]` -/
def P15899229335086450155.Spec : Prop :=
  ∀ n, (P15899229335086450155.a n : ℤ) = A156638 (n + 1)

end A156638

/-! ## A156638.P13373965689385214716

`lt[0, (3-dr(3-n))*(n-3)]`
-/

namespace A156638.P13373965689385214716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℤ)) * ((n : ℤ) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A156638.P13373965689385214716

namespace A156638

/-- `lt[0, (3-dr(3-n))*(n-3)]` -/
def P13373965689385214716.Spec : Prop :=
  ∀ n, (P13373965689385214716.a n : ℤ) = A156638 (n + 1)

end A156638

/-! ## A156638.P2811388823219618419

`lt[1, (n-2)^(3-dr(3-n))]`
-/

namespace A156638.P2811388823219618419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) ^ (3 - (SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℤ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A156638.P2811388823219618419

namespace A156638

/-- `lt[1, (n-2)^(3-dr(3-n))]` -/
def P2811388823219618419.Spec : Prop :=
  ∀ n, (P2811388823219618419.a n : ℤ) = A156638 (n + 1)

end A156638

/-! ## A156638.P3878852121957757054

`eq[n+1, dr((2*n)^4)+n]`
-/

namespace A156638.P3878852121957757054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((2 * n) ^ 4 : ℤ) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156638.P3878852121957757054

namespace A156638

/-- `eq[n+1, dr((2*n)^4)+n]` -/
def P3878852121957757054.Spec : Prop :=
  ∀ n, (P3878852121957757054.a n : ℤ) = A156638 (n + 1)

end A156638

/-! ## A156638.P11263124477361982931

`eq[n+3-dr(n^4), n-1]`
-/

namespace A156638.P11263124477361982931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (SequenceMachineLib.digitalRoot (n ^ 4 : ℤ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156638.P11263124477361982931

namespace A156638

/-- `eq[n+3-dr(n^4), n-1]` -/
def P11263124477361982931.Spec : Prop :=
  ∀ n, (P11263124477361982931.a n : ℤ) = A156638 (n + 1)

end A156638

/-! ## A156638.P7672051825031593644

`∑[A040019(n)]`
-/

namespace A156638.P7672051825031593644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156638.P7672051825031593644

namespace A156638

/-- `∑[A040019(n)]` -/
def P7672051825031593644.Spec : Prop :=
  ∀ n, P7672051825031593644.a n = A156638 (n + 1)

end A156638

/-!
# A156639: a(n) = 169*n^2 - 140*n + 29.

The programs for A156639, the canonical program `A156639.P2306368915905496859` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156639 has offset 1).

The definition of A156639 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `169*(n+1)²-140*(n+1)+29` (program `A156639.P2306368915905496859`, by `A156639.P2306368915905496859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156639.P2306368915905496859

`169*(n+1)²-140*(n+1)+29`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A156639

/-- `169*(n+1)²-140*(n+1)+29` -/
def P2306368915905496859.Spec : Prop :=
  ∀ n, P2306368915905496859.a n = A156639 (n + 1)

theorem P2306368915905496859.correct : P2306368915905496859.Spec := by
  intro n
  simp only [A156639, Nat.add_sub_cancel]

end A156639

/-! ## A156639.P3610501920512822325

`floor(A016886(n)+sqrt(A017608(n)))`
-/

namespace A156639.P3610501920512822325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016886 n : ℝ) + Real.sqrt (A017608 n : ℝ)⌋

end

end A156639.P3610501920512822325

namespace A156639

/-- `floor(A016886(n)+sqrt(A017608(n)))` -/
def P3610501920512822325.Spec : Prop :=
  ∀ n, P3610501920512822325.a n = A156639 (n + 1)

end A156639

/-! ## A156639.P17073152586463311462

`round((A156721(n+1)/A156627(n+1))²)`
-/

namespace A156639.P17073152586463311462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A156721 (n + 1) : ℚ) / (A156627 (n + 1) : ℚ)) ^ 2)

end

end A156639.P17073152586463311462

namespace A156639

/-- `round((A156721(n+1)/A156627(n+1))²)` -/
def P17073152586463311462.Spec : Prop :=
  ∀ n, P17073152586463311462.a n = A156639 (n + 1)

end A156639

/-! ## A156639.P10714935279116510114

`(A017606(n)+A016886(n))%A017607(n)`
-/

namespace A156639.P10714935279116510114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017606 n + A016886 n) (A017607 n)

end

end A156639.P10714935279116510114

namespace A156639

/-- `(A017606(n)+A016886(n))%A017607(n)` -/
def P10714935279116510114.Spec : Prop :=
  ∀ n, P10714935279116510114.a n = A156639 (n + 1)

end A156639

/-! ## A156639.P6144589199511971669

`floor(A156721(n+1)/A156735(n)*A156640(n))`
-/

namespace A156639.P6144589199511971669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A156721 (n + 1) : ℚ) / (A156735 n : ℚ) * (A156640 n : ℚ)⌋

end

end A156639.P6144589199511971669

namespace A156639

/-- `floor(A156721(n+1)/A156735(n)*A156640(n))` -/
def P6144589199511971669.Spec : Prop :=
  ∀ n, P6144589199511971669.a n = A156639 (n + 1)

end A156639

/-! ## A156639.P7504240360075862426

`∩[A010338(n+1), A010342(n+1)]`
-/

namespace A156639.P7504240360075862426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156639.P7504240360075862426

namespace A156639

/-- `∩[A010338(n+1), A010342(n+1)]` -/
def P7504240360075862426.Spec : Prop :=
  ∀ n, (P7504240360075862426.a n : ℤ) = A156639 (n + 1)

end A156639

/-!
# A156640: a(n) = 169*n^2 + 140*n + 29.

The programs for A156640, the canonical program `A156640.P14011691115004335223` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156640 has offset 0).

The definition of A156640 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `169*n²+140*n+29` (program `A156640.P14011691115004335223`, by `A156640.P14011691115004335223.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156640.P14011691115004335223

`169*n²+140*n+29`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A156640

/-- `169*n²+140*n+29` -/
def P14011691115004335223.Spec : Prop :=
  ∀ n, (P14011691115004335223.a n : ℤ) = A156640 n

theorem P14011691115004335223.correct : P14011691115004335223.Spec := by
  intro n
  simp only [A156640]

end A156640

/-! ## A156640.P9506058142729992565

`round((A156735(n)/A156636(n))²)`
-/

namespace A156640.P9506058142729992565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A156735 n : ℚ) / (A156636 n : ℚ)) ^ 2)

end

end A156640.P9506058142729992565

namespace A156640

/-- `round((A156735(n)/A156636(n))²)` -/
def P9506058142729992565.Spec : Prop :=
  ∀ n, P9506058142729992565.a n = A156640 n

end A156640

/-! ## A156640.P15269296167808521918

`ceil(A156639(n+1)/A156721(n+1)*A156735(n))`
-/

namespace A156640.P15269296167808521918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A156639 (n + 1) : ℚ) / (A156721 (n + 1) : ℚ) * (A156735 n : ℚ)⌉

end

end A156640.P15269296167808521918

namespace A156640

/-- `ceil(A156639(n+1)/A156721(n+1)*A156735(n))` -/
def P15269296167808521918.Spec : Prop :=
  ∀ n, P15269296167808521918.a n = A156640 n

end A156640

/-! ## A156640.P18042435219361295226

`A055096(A139274(3*n+1)+A005843(n)+2)`
-/

namespace A156640.P18042435219361295226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (A139274 (3 * n + 1) + A005843 n + 2).toNat

end

end A156640.P18042435219361295226

namespace A156640

/-- `A055096(A139274(3*n+1)+A005843(n)+2)` -/
def P18042435219361295226.Spec : Prop :=
  ∀ n, P18042435219361295226.a n = A156640 n

end A156640

/-!
# A156641: a(n) = 13*(100^(n+1) - 1)/99.

The programs for A156641, the canonical program `A156641.P3785716625594487488` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156641 has offset 0).

The definition of A156641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156641.P3785716625594487488

`13/99*(10^(2*n+2)-1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A156641

/-- `13/99*(10^(2*n+2)-1)` -/
def P3785716625594487488.Spec : Prop :=
  ∀ n, P3785716625594487488.a n = (A156641 n : ℚ)

end A156641

/-! ## A156641.P10145227333582037192

`A037582(Δ[n²])`
-/

namespace A156641.P10145227333582037192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037582 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1)

end

end A156641.P10145227333582037192

namespace A156641

/-- `A037582(Δ[n²])` -/
def P10145227333582037192.Spec : Prop :=
  ∀ n, P10145227333582037192.a n = A156641 n

end A156641

/-! ## A156641.P13168170419931893784

`record[13*A279028(n)]`
-/

namespace A156641.P13168170419931893784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A279028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156641.P13168170419931893784

namespace A156641

/-- `record[13*A279028(n)]` -/
def P13168170419931893784.Spec : Prop :=
  ∀ n, P13168170419931893784.a n = A156641 n

end A156641

/-! ## A156641.P13167539770904780042

`record[13*A282088(n)]`
-/

namespace A156641.P13167539770904780042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A282088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156641.P13167539770904780042

namespace A156641

/-- `record[13*A282088(n)]` -/
def P13167539770904780042.Spec : Prop :=
  ∀ n, P13167539770904780042.a n = A156641 n

end A156641

/-! ## A156641.P9579457970433555975

`A099814(n+1)+A100706(n)+A095372(n)`
-/

namespace A156641.P9579457970433555975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099814 (n + 1) + (A100706 n + A095372 n)

end

end A156641.P9579457970433555975

namespace A156641

/-- `A099814(n+1)+A100706(n)+A095372(n)` -/
def P9579457970433555975.Spec : Prop :=
  ∀ n, P9579457970433555975.a n = A156641 n

end A156641

/-!
# A156642: Number of decompositions of 4n+2 into unordered sums of two primes of the form 4k+3.

The programs for A156642, there is no canonical definition to state claims against.
-/

/-! ## A156642.P16381558480853379690

`A002375(2*n+1)-A071635(n)`
-/

namespace A156642.P16381558480853379690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (2 * n + 1) - A071635 n

end

end A156642.P16381558480853379690

/-! ## A156642.P8291958580256135910

`A045917(2*n+1)-A071635(n)`
-/

namespace A156642.P8291958580256135910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (2 * n + 1) - A071635 n

end

end A156642.P8291958580256135910

/-! ## A156642.P16562822773623003680

`A190353(A016825(n))-A071635(n)`
-/

namespace A156642.P16562822773623003680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (A016825 n).toNat - A071635 n

end

end A156642.P16562822773623003680

/-! ## A156642.P13480060315858819856

`ceil(A279027(2*n+1)/2)`
-/

namespace A156642.P13480060315858819856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A279027 (2 * n + 1) : ℚ) / 2⌉

end

end A156642.P13480060315858819856

/-! ## A156642.P15182365778101565483

`round(A279027(n+1+n)/2)`
-/

namespace A156642.P15182365778101565483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A279027 (n + 1 + n) : ℚ) / 2)

end

end A156642.P15182365778101565483

/-!
# A156644: Mirror image of triangle A080233.

The programs for A156644, the canonical program `A156644.P8680727843130991433` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156644 has offset 0).

The definition of A156644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156644.P8680727843130991433

`A074909(n)-A051601(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A156644

/-- `A074909(n)-A051601(n)` -/
def P8680727843130991433.Spec : Prop :=
  ∀ n, P8680727843130991433.a n = A156644 n

theorem P8680727843130991433.correct : P8680727843130991433.Spec := by
  intro n
  simp only [A156644]

end A156644

/-! ## A156644.P3806552564281723473

`A028326(n)-A135278(n)`
-/

namespace A156644.P3806552564281723473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A135278 n

end

end A156644.P3806552564281723473

namespace A156644

/-- `A028326(n)-A135278(n)` -/
def P3806552564281723473.Spec : Prop :=
  ∀ n, P3806552564281723473.a n = A156644 n

end A156644

/-! ## A156644.P5350228888054462322

`A023531(n)-A259525(n)`
-/

namespace A156644.P5350228888054462322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n - A259525 n

end

end A156644.P5350228888054462322

namespace A156644

/-- `A023531(n)-A259525(n)` -/
def P5350228888054462322.Spec : Prop :=
  ∀ n, P5350228888054462322.a n = A156644 n

end A156644

/-! ## A156644.P13727300065182932051

`A080233(n)-A214292(n)`
-/

namespace A156644.P13727300065182932051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 n - A214292 n

end

end A156644.P13727300065182932051

namespace A156644

/-- `A080233(n)-A214292(n)` -/
def P13727300065182932051.Spec : Prop :=
  ∀ n, P13727300065182932051.a n = A156644 n

end A156644

/-! ## A156644.P3178807398833887017

`A097807(n)*A097808(n)`
-/

namespace A156644.P3178807398833887017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A097808 n

end

end A156644.P3178807398833887017

namespace A156644

/-- `A097807(n)*A097808(n)` -/
def P3178807398833887017.Spec : Prop :=
  ∀ n, P3178807398833887017.a n = A156644 n

end A156644

/-! ## A156644.P8569173769812391010

`Δ[A003056(n)-A007318(n)]`
-/

namespace A156644.P8569173769812391010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156644.P8569173769812391010

namespace A156644

/-- `Δ[A003056(n)-A007318(n)]` -/
def P8569173769812391010.Spec : Prop :=
  ∀ n, P8569173769812391010.a n = A156644 n

end A156644

/-! ## A156644.P956671936661314308

`A029656(n+1)-A051597(n)`
-/

namespace A156644.P956671936661314308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A051597 n

end

end A156644.P956671936661314308

namespace A156644

/-- `A029656(n+1)-A051597(n)` -/
def P956671936661314308.Spec : Prop :=
  ∀ n, P956671936661314308.a n = A156644 n

end A156644

/-! ## A156644.P9234421316442606932

`A028326(n)-A074909(n+1)`
-/

namespace A156644.P9234421316442606932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A074909 (n + 1)

end

end A156644.P9234421316442606932

namespace A156644

/-- `A028326(n)-A074909(n+1)` -/
def P9234421316442606932.Spec : Prop :=
  ∀ n, P9234421316442606932.a n = A156644 n

end A156644

/-! ## A156644.P6406622079844881984

`A029635(n)-A209561(n+1)`
-/

namespace A156644.P6406622079844881984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n - A209561 (n + 1)

end

end A156644.P6406622079844881984

namespace A156644

/-- `A029635(n)-A209561(n+1)` -/
def P6406622079844881984.Spec : Prop :=
  ∀ n, P6406622079844881984.a n = A156644 n

end A156644

/-! ## A156644.P2275745668969193620

`2*A007318(n)-A135278(n)`
-/

namespace A156644.P2275745668969193620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A135278 n

end

end A156644.P2275745668969193620

namespace A156644

/-- `2*A007318(n)-A135278(n)` -/
def P2275745668969193620.Spec : Prop :=
  ∀ n, P2275745668969193620.a n = A156644 n

end A156644

/-! ## A156644.P3508814449850875483

`2*A135278(n)-A135857(n)`
-/

namespace A156644.P3508814449850875483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135278 n - A135857 n

end

end A156644.P3508814449850875483

namespace A156644

/-- `2*A135278(n)-A135857(n)` -/
def P3508814449850875483.Spec : Prop :=
  ∀ n, P3508814449850875483.a n = A156644 n

end A156644

/-! ## A156644.P9351582969687723958

`A028326(n)-A007318(comp[∑[n]])`
-/

namespace A156644.P9351582969687723958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A156644.P9351582969687723958

namespace A156644

/-- `A028326(n)-A007318(comp[∑[n]])` -/
def P9351582969687723958.Spec : Prop :=
  ∀ n, P9351582969687723958.a n = A156644 n

end A156644

/-! ## A156644.P4453545911997839042

`A010054(n+1)-Δ[A007318(n)]`
-/

namespace A156644.P4453545911997839042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) - (f1 (n + 1) - f1 n)

end

end A156644.P4453545911997839042

namespace A156644

/-- `A010054(n+1)-Δ[A007318(n)]` -/
def P4453545911997839042.Spec : Prop :=
  ∀ n, P4453545911997839042.a n = A156644 n

end A156644

/-! ## A156644.P3290177300143826484

`A073424(n+1)-Δ[A007318(n)]`
-/

namespace A156644.P3290177300143826484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 1) - (f1 (n + 1) - f1 n)

end

end A156644.P3290177300143826484

namespace A156644

/-- `A073424(n+1)-Δ[A007318(n)]` -/
def P3290177300143826484.Spec : Prop :=
  ∀ n, P3290177300143826484.a n = A156644 n

end A156644

/-! ## A156644.P1125990504512620464

`A128065(n+1)/A002260(n+1)`
-/

namespace A156644.P1125990504512620464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128065 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A156644.P1125990504512620464

namespace A156644

/-- `A128065(n+1)/A002260(n+1)` -/
def P1125990504512620464.Spec : Prop :=
  ∀ n, P1125990504512620464.a n = (A156644 n : ℚ)

end A156644

/-! ## A156644.P16980863532503237643

`A007318(A007401(n+1))-A051601(n)`
-/

namespace A156644.P16980863532503237643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007401 (n + 1)).toNat - A051601 n

end

end A156644.P16980863532503237643

namespace A156644

/-- `A007318(A007401(n+1))-A051601(n)` -/
def P16980863532503237643.Spec : Prop :=
  ∀ n, P16980863532503237643.a n = A156644 n

end A156644

/-! ## A156644.P4786425960763437504

`A007318(n)+A074909(n)-A051597(n)`
-/

namespace A156644.P4786425960763437504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A074909 n - A051597 n)

end

end A156644.P4786425960763437504

namespace A156644

/-- `A007318(n)+A074909(n)-A051597(n)` -/
def P4786425960763437504.Spec : Prop :=
  ∀ n, P4786425960763437504.a n = A156644 n

end A156644

/-! ## A156644.P17042489502283997224

`2*A007318(n)-A007318(A014132(n+1))`
-/

namespace A156644.P17042489502283997224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A007318 (A014132 (n + 1)).toNat

end

end A156644.P17042489502283997224

namespace A156644

/-- `2*A007318(n)-A007318(A014132(n+1))` -/
def P17042489502283997224.Spec : Prop :=
  ∀ n, P17042489502283997224.a n = A156644 n

end A156644

/-! ## A156644.P7772603478664955743

`A007318(n)+A023531(n)-A007318(n+1)`
-/

namespace A156644.P7772603478664955743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A023531 n - A007318 (n + 1))

end

end A156644.P7772603478664955743

namespace A156644

/-- `A007318(n)+A023531(n)-A007318(n+1)` -/
def P7772603478664955743.Spec : Prop :=
  ∀ n, P7772603478664955743.a n = A156644 n

end A156644

/-! ## A156644.P5697738030319882945

`A007318(A002024(n+1)+n)-A051601(n)`
-/

namespace A156644.P5697738030319882945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A002024 (n + 1) + (n : ℤ)).toNat - A051601 n

end

end A156644.P5697738030319882945

namespace A156644

/-- `A007318(A002024(n+1)+n)-A051601(n)` -/
def P5697738030319882945.Spec : Prop :=
  ∀ n, P5697738030319882945.a n = A156644 n

end A156644

/-!
# A156645: Triangle T(n, k, m) = b(n,m)/(b(k,m)*b(n-k,m)), where b(n, k) = Product_{j=1..n} (1 - ChebyshevT(j, k+1)^2), b(n, 0) = n!, and m = 2, read by rows.

The programs for A156645, there is no canonical definition to state claims against.
-/

/-! ## A156645.P11173184601454210113

`A156601(n)²`
-/

namespace A156645.P11173184601454210113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156601 n ^ 2

end

end A156645.P11173184601454210113

/-! ## A156645.P2707967797639341571

`A156601(xor(1, xor(1, n)))^2`
-/

namespace A156645.P2707967797639341571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156601 (Nat.xor 1 (Nat.xor 1 n)) ^ 2

end

end A156645.P2707967797639341571

/-! ## A156645.P6644123489932077796

`A156601(n)^ratio[A000079(n)]`
-/

namespace A156645.P6644123489932077796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156601 n : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A156645.P6644123489932077796

/-! ## A156645.P18162681403278831646

`A156601(n)^ratio[A011782(n)]`
-/

namespace A156645.P18162681403278831646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156601 n : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A156645.P18162681403278831646

/-! ## A156645.P13034884971965941227

`A156601(n)^(A073424(n)+2)`
-/

namespace A156645.P13034884971965941227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156601 n : ℚ) ^ (A073424 n + 2 : ℤ)

end

end A156645.P13034884971965941227

/-! ## A156645.P2643966161717061881

`A156601(n)^(2%A026917(n))`
-/

namespace A156645.P2643966161717061881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156601 n : ℚ) ^ (Int.tmod 2 (A026917 n) : ℤ)

end

end A156645.P2643966161717061881

/-! ## A156645.P3101449384156498907

`A156601(n)^A014963(A001316(n))`
-/

namespace A156645.P3101449384156498907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156601 n : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A156645.P3101449384156498907

/-! ## A156645.P2279511390949455242

`A156601(n)^A036452(A000267(n))`
-/

namespace A156645.P2279511390949455242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156601 n : ℚ) ^ (A036452 (A000267 n).toNat : ℤ)

end

end A156645.P2279511390949455242

/-! ## A156645.P15020067492166207890

`A156601(n)^A020639(A016825(n))`
-/

namespace A156645.P15020067492166207890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156601 n : ℚ) ^ (A020639 (A016825 n).toNat : ℤ)

end

end A156645.P15020067492166207890

/-! ## A156645.P7710785623984034952

`A156601(n)^A020639(A017089(n))`
-/

namespace A156645.P7710785623984034952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156601 n : ℚ) ^ (A020639 (A017089 n).toNat : ℤ)

end

end A156645.P7710785623984034952

/-! ## A156645.P7257827303422440209

`A156601(n)^A005811(A072376(n))`
-/

namespace A156645.P7257827303422440209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156601 n : ℚ) ^ (A005811 (A072376 n).toNat : ℤ)

end

end A156645.P7257827303422440209

/-! ## A156645.P2061461542073534197

`A156601(n)^A141310(A005408(n))`
-/

namespace A156645.P2061461542073534197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156601 n : ℚ) ^ (A141310 (A005408 n).toNat : ℤ)

end

end A156645.P2061461542073534197

/-! ## A156645.P14918660444728875602

`A156601(n)^A036452(A000040(n+1))`
-/

namespace A156645.P14918660444728875602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156601 n : ℚ) ^ (A036452 (A000040 (n + 1)).toNat : ℤ)

end

end A156645.P14918660444728875602

/-! ## A156645.P12985832304653463432

`A156601(n)^A000005(A156611(n+1))`
-/

namespace A156645.P12985832304653463432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156601 n : ℚ) ^ (A000005 (A156611 (n + 1)).toNat : ℤ)

end

end A156645.P12985832304653463432

/-! ## A156645.P17229320487914391034

`A156601(n)^A000040(A156601(C(5, n)))`
-/

namespace A156645.P17229320487914391034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156601 n : ℚ) ^ (A000040 (A156601 (Nat.choose 5 n)).toNat : ℤ)

end

end A156645.P17229320487914391034

/-! ## A156645.P273722630568474934

`A156601(n-A073424(n))*A156601(n)`
-/

namespace A156645.P273722630568474934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156601 ((n : ℤ) - A073424 n).toNat * A156601 n

end

end A156645.P273722630568474934

/-! ## A156645.P9863446862253192972

`A156601(n)*A156601(n%A008458(n))`
-/

namespace A156645.P9863446862253192972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156601 n * A156601 (Int.tmod (n : ℤ) (A008458 n)).toNat

end

end A156645.P9863446862253192972

/-! ## A156645.P4266499098189392192

`A156601(n)^A000040(A156601(val(n+1, 4)))`
-/

namespace A156645.P4266499098189392192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156601 n : ℚ) ^ (A000040 (A156601 (SequenceMachineLib.valuation (n + 1) 4)).toNat : ℤ)

end

end A156645.P4266499098189392192

/-!
# A156646: Triangle T(n, k, m) = b(n,m)/(b(k,m)*b(n-k,m)), where b(n, k) = Product_{j=1..n} (1 - ChebyshevT(j, k+1)^2), b(n, 0) = n!, and m = 10, read by rows.

The programs for A156646, there is no canonical definition to state claims against.
-/

/-! ## A156646.P1985347867691417307

`A061036(A074294(n+1)^(n+1))`
-/

namespace A156646.P1985347867691417307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (A074294 (n + 1) ^ (n + 1)).toNat

end

end A156646.P1985347867691417307

/-! ## A156646.P18278486181841277032

`A061036(A194103(n+1)^A178158(n+1))`
-/

namespace A156646.P18278486181841277032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (SequenceMachineLib.roundAway ((A194103 (n + 1) : ℚ) ^ (A178158 (n + 1) : ℤ))).toNat

end

end A156646.P18278486181841277032

/-!
# A156650: Positive numbers y such that y^2 is of the form x^2+(x+119)^2 with integer x.

The programs for A156650, there is no canonical definition to state claims against.
-/

/-! ## A156650.P14753014362986546152

`A323520(A077678(n+2))+18`
-/

namespace A156650.P14753014362986546152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323520 (A077678 (n + 2)).toNat + 18

end

end A156650.P14753014362986546152

/-!
# A156653: Triangle T(n,k) = ((-1)^(n+k)/(n+1))*Sum_{j=0..n} (-1)^j*j!*Stirling2(n, j)* binomial(n-j, k)*binomial(n+j, j), read by rows.

The programs for A156653, there is no canonical definition to state claims against.
-/

/-! ## A156653.P6718855792871834671

`A155163(A066182(n+1))/A003057(n+2)`
-/

namespace A156653.P6718855792871834671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155163 (A066182 (n + 1)).toNat : ℚ) / (A003057 (n + 2) : ℚ)

end

end A156653.P6718855792871834671

/-! ## A156653.P13033695655170825170

`A155163(A066182(n+1))/(A002024(n+1)+1)`
-/

namespace A156653.P13033695655170825170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155163 (A066182 (n + 1)).toNat : ℚ) / (A002024 (n + 1) + 1 : ℚ)

end

end A156653.P13033695655170825170

/-! ## A156653.P4770960403432891725

`A331998(A168038(n)+1-n)`
-/

namespace A156653.P4770960403432891725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331998 (A168038 n + (1 - (n : ℤ))).toNat

end

end A156653.P4770960403432891725

/-! ## A156653.P7435096178207887514

`A331998(1-(n-A168038(n)))`
-/

namespace A156653.P7435096178207887514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331998 (1 - ((n : ℤ) - A168038 n)).toNat

end

end A156653.P7435096178207887514

/-! ## A156653.P2232663446138205727

`A331998(A038722(A028310(n)))`
-/

namespace A156653.P2232663446138205727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331998 (A038722 (A028310 n).toNat).toNat

end

end A156653.P2232663446138205727

/-!
# A156655: Primes of the form 1000*k + 1.

The programs for A156655, the canonical program `A156655.P1351968691735993926` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156655 has offset 1).

The definition of A156655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156655.P1351968691735993926

`∩[A008853(2*n+1)+A008853(2*(n+1)), A179231(n+2)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156655

/-- `∩[A008853(2*n+1)+A008853(2*(n+1)), A179231(n+2)]` -/
def P1351968691735993926.Spec : Prop :=
  ∀ n, (P1351968691735993926.a n : ℤ) = A156655 (n + 1)

theorem P1351968691735993926.correct : P1351968691735993926.Spec := by
  intro n
  simp only [A156655, Nat.add_sub_cancel]

end A156655

/-! ## A156655.P2626323457596312389

`∩[A008853(n+1), A062800(n+1)]`
-/

namespace A156655.P2626323457596312389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156655.P2626323457596312389

namespace A156655

/-- `∩[A008853(n+1), A062800(n+1)]` -/
def P2626323457596312389.Spec : Prop :=
  ∀ n, (P2626323457596312389.a n : ℤ) = A156655 (n + 1)

end A156655

/-! ## A156655.P11319777870748944519

`∩[A008853(n+1), A141927(n+1)]`
-/

namespace A156655.P11319777870748944519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156655.P11319777870748944519

namespace A156655

/-- `∩[A008853(n+1), A141927(n+1)]` -/
def P11319777870748944519.Spec : Prop :=
  ∀ n, (P11319777870748944519.a n : ℤ) = A156655 (n + 1)

end A156655

/-! ## A156655.P4541772126207185705

`∩[A008853(n+1), A179231(n+1)]`
-/

namespace A156655.P4541772126207185705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156655.P4541772126207185705

namespace A156655

/-- `∩[A008853(n+1), A179231(n+1)]` -/
def P4541772126207185705.Spec : Prop :=
  ∀ n, (P4541772126207185705.a n : ℤ) = A156655 (n + 1)

end A156655

/-! ## A156655.P2892134884481043956

`∩[A008853(n+1), A142183(n+1)]`
-/

namespace A156655.P2892134884481043956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156655.P2892134884481043956

namespace A156655

/-- `∩[A008853(n+1), A142183(n+1)]` -/
def P2892134884481043956.Spec : Prop :=
  ∀ n, (P2892134884481043956.a n : ℤ) = A156655 (n + 1)

end A156655

/-! ## A156655.P14223100780124653986

`∩[A142183(n+1), A179231(n+1)]`
-/

namespace A156655.P14223100780124653986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156655.P14223100780124653986

namespace A156655

/-- `∩[A142183(n+1), A179231(n+1)]` -/
def P14223100780124653986.Spec : Prop :=
  ∀ n, (P14223100780124653986.a n : ℤ) = A156655 (n + 1)

end A156655

/-! ## A156655.P15733981447785350260

`∩[A157956(n+1), A179231(n+1)]`
-/

namespace A156655.P15733981447785350260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156655.P15733981447785350260

namespace A156655

/-- `∩[A157956(n+1), A179231(n+1)]` -/
def P15733981447785350260.Spec : Prop :=
  ∀ n, (P15733981447785350260.a n : ℤ) = A156655 (n + 1)

end A156655

/-! ## A156655.P10364117660642922988

`∩[A008853(n+1), A107145(n+1)]`
-/

namespace A156655.P10364117660642922988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156655.P10364117660642922988

namespace A156655

/-- `∩[A008853(n+1), A107145(n+1)]` -/
def P10364117660642922988.Spec : Prop :=
  ∀ n, (P10364117660642922988.a n : ℤ) = A156655 (n + 1)

end A156655

/-! ## A156655.P4893479105465700332

`p?[25*40*n+1]`
-/

namespace A156655.P4893479105465700332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * (40 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156655.P4893479105465700332

namespace A156655

/-- `p?[25*40*n+1]` -/
def P4893479105465700332.Spec : Prop :=
  ∀ n, (P4893479105465700332.a n : ℤ) = A156655 (n + 1)

end A156655

/-! ## A156655.P13977424615182732997

`or(1, p?[A008853(n+1)])`
-/

namespace A156655.P13977424615182732997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A156655.P13977424615182732997

namespace A156655

/-- `or(1, p?[A008853(n+1)])` -/
def P13977424615182732997.Spec : Prop :=
  ∀ n, P13977424615182732997.a n = A156655 (n + 1)

end A156655

/-! ## A156655.P619234519599130699

`∏{d}[p?[A008853(n+2+n)], #]`
-/

namespace A156655.P619234519599130699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (n + 2 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A156655.P619234519599130699

namespace A156655

/-- `∏{d}[p?[A008853(n+2+n)], #]` -/
def P619234519599130699.Spec : Prop :=
  ∀ n, (P619234519599130699.a n : ℤ) = A156655 (n + 1)

end A156655

/-! ## A156655.P16393640562294103948

`and(log2(1/2), p?[A008853(n+4+n)])`
-/

namespace A156655.P16393640562294103948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (n + 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A156655.P16393640562294103948

namespace A156655

/-- `and(log2(1/2), p?[A008853(n+4+n)])` -/
def P16393640562294103948.Spec : Prop :=
  ∀ n, P16393640562294103948.a n = A156655 (n + 1)

end A156655

/-! ## A156655.P15429181856157339111

`round(sqrt(p?[A008853(n+6+n)]²+1))`
-/

namespace A156655.P15429181856157339111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (n + 6 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1 : ℝ))

end

end A156655.P15429181856157339111

namespace A156655

/-- `round(sqrt(p?[A008853(n+6+n)]²+1))` -/
def P15429181856157339111.Spec : Prop :=
  ∀ n, P15429181856157339111.a n = A156655 (n + 1)

end A156655

/-! ## A156655.P7762668879635638695

`lcm(p?[A008853(n+1)], A033999(n))`
-/

namespace A156655.P7762668879635638695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A033999 n)

end

end A156655.P7762668879635638695

namespace A156655

/-- `lcm(p?[A008853(n+1)], A033999(n))` -/
def P7762668879635638695.Spec : Prop :=
  ∀ n, (P7762668879635638695.a n : ℤ) = A156655 (n + 1)

end A156655

/-! ## A156655.P16629618635489055637

`∩[A008853(n+1), A077501(n+1)]`
-/

namespace A156655.P16629618635489055637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156655.P16629618635489055637

namespace A156655

/-- `∩[A008853(n+1), A077501(n+1)]` -/
def P16629618635489055637.Spec : Prop :=
  ∀ n, (P16629618635489055637.a n : ℤ) = A156655 (n + 1)

end A156655

/-! ## A156655.P13535245044602708860

`p?[A008853(n+1)]%A147573(n+1)`
-/

namespace A156655.P13535245044602708860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A147573 (n + 1))

end

end A156655.P13535245044602708860

namespace A156655

/-- `p?[A008853(n+1)]%A147573(n+1)` -/
def P13535245044602708860.Spec : Prop :=
  ∀ n, P13535245044602708860.a n = A156655 (n + 1)

end A156655

/-! ## A156655.P4101585069485642321

`A000027(p?[A008853(n+1)])`
-/

namespace A156655.P4101585069485642321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A156655.P4101585069485642321

namespace A156655

/-- `A000027(p?[A008853(n+1)])` -/
def P4101585069485642321.Spec : Prop :=
  ∀ n, P4101585069485642321.a n = A156655 (n + 1)

end A156655

/-! ## A156655.P9782754108265005840

`∩[A008853(n+1), A052228(n+1)]`
-/

namespace A156655.P9782754108265005840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156655.P9782754108265005840

namespace A156655

/-- `∩[A008853(n+1), A052228(n+1)]` -/
def P9782754108265005840.Spec : Prop :=
  ∀ n, (P9782754108265005840.a n : ℤ) = A156655 (n + 1)

end A156655

/-!
# A156657: Numbers that are not safe primes.

The programs for A156657, the canonical program `A156657.P13599752432908791123` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156657 has offset 1).

The definition of A156657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156657.P16660687389650130751

`comp[A033300(n)]`
-/

namespace A156657.P16660687389650130751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033300 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P16660687389650130751

namespace A156657

/-- `comp[A033300(n)]` -/
def P16660687389650130751.Spec : Prop :=
  ∀ n, (P16660687389650130751.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P8929794171839955550

`comp[A005385(n+1)]`
-/

namespace A156657.P8929794171839955550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P8929794171839955550

namespace A156657

/-- `comp[A005385(n+1)]` -/
def P8929794171839955550.Spec : Prop :=
  ∀ n, (P8929794171839955550.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P3825649935610239002

`comp[A079148(n+3)]`
-/

namespace A156657.P3825649935610239002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P3825649935610239002

namespace A156657

/-- `comp[A079148(n+3)]` -/
def P3825649935610239002.Spec : Prop :=
  ∀ n, (P3825649935610239002.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P13599752432908791123

`comp[p?[A072055(n+1)]]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156657

/-- `comp[p?[A072055(n+1)]]` -/
def P13599752432908791123.Spec : Prop :=
  ∀ n, (P13599752432908791123.a n : ℤ) = A156657 (n + 1)

theorem P13599752432908791123.correct : P13599752432908791123.Spec := by
  intro n
  simp only [A156657, Nat.add_sub_cancel]

end A156657

/-! ## A156657.P6852950750387436510

`comp[p?[A088707(n+1)]]`
-/

namespace A156657.P6852950750387436510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P6852950750387436510

namespace A156657

/-- `comp[p?[A088707(n+1)]]` -/
def P6852950750387436510.Spec : Prop :=
  ∀ n, (P6852950750387436510.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P554984417555544371

`comp[A077065(n+1)+1]`
-/

namespace A156657.P554984417555544371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P554984417555544371

namespace A156657

/-- `comp[A077065(n+1)+1]` -/
def P554984417555544371.Spec : Prop :=
  ∀ n, (P554984417555544371.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P15806891367334296934

`comp[record[p?[A347127(n+1)]]]`
-/

namespace A156657.P15806891367334296934
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P15806891367334296934

namespace A156657

/-- `comp[record[p?[A347127(n+1)]]]` -/
def P15806891367334296934.Spec : Prop :=
  ∀ n, (P15806891367334296934.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P12442683700287608719

`comp[p?[A001358(n+1)+1]]`
-/

namespace A156657.P12442683700287608719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P12442683700287608719

namespace A156657

/-- `comp[p?[A001358(n+1)+1]]` -/
def P12442683700287608719.Spec : Prop :=
  ∀ n, (P12442683700287608719.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P1006317011063107052

`comp[p?[A253106(n+1)+1]]`
-/

namespace A156657.P1006317011063107052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253106 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P1006317011063107052

namespace A156657

/-- `comp[p?[A253106(n+1)+1]]` -/
def P1006317011063107052.Spec : Prop :=
  ∀ n, (P1006317011063107052.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P6691851704339629577

`comp[p?[A323644(n+1)+1]]`
-/

namespace A156657.P6691851704339629577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P6691851704339629577

namespace A156657

/-- `comp[p?[A323644(n+1)+1]]` -/
def P6691851704339629577.Spec : Prop :=
  ∀ n, (P6691851704339629577.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P15275075708708943850

`comp[2*A005384(n+1)+1]`
-/

namespace A156657.P15275075708708943850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005384 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P15275075708708943850

namespace A156657

/-- `comp[2*A005384(n+1)+1]` -/
def P15275075708708943850.Spec : Prop :=
  ∀ n, (P15275075708708943850.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P6435819212489688241

`comp[p?[2*A000040(n+1)+1]]`
-/

namespace A156657.P6435819212489688241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P6435819212489688241

namespace A156657

/-- `comp[p?[2*A000040(n+1)+1]]` -/
def P6435819212489688241.Spec : Prop :=
  ∀ n, (P6435819212489688241.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P15988061590224465282

`comp[p?[2*A093074(n+1)+1]]`
-/

namespace A156657.P15988061590224465282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093074 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P15988061590224465282

namespace A156657

/-- `comp[p?[2*A093074(n+1)+1]]` -/
def P15988061590224465282.Spec : Prop :=
  ∀ n, (P15988061590224465282.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P5103933626968738486

`comp[p?[eq[2, A001222(n+1)]+2]]`
-/

namespace A156657.P5103933626968738486
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A156657.P5103933626968738486

namespace A156657

/-- `comp[p?[eq[2, A001222(n+1)]+2]]` -/
def P5103933626968738486.Spec : Prop :=
  ∀ n, (P5103933626968738486.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P4887526681388194131

`comp[p?[4*A006530(n+1)-n]]`
-/

namespace A156657.P4887526681388194131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006530 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P4887526681388194131

namespace A156657

/-- `comp[p?[4*A006530(n+1)-n]]` -/
def P4887526681388194131.Spec : Prop :=
  ∀ n, (P4887526681388194131.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P295678646088422334

`comp[A005408(p?[A054639(n+1)])]`
-/

namespace A156657.P295678646088422334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A156657.P295678646088422334

namespace A156657

/-- `comp[A005408(p?[A054639(n+1)])]` -/
def P295678646088422334.Spec : Prop :=
  ∀ n, (P295678646088422334.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P4600477509326849177

`∪[A059456(n+1), A141468(n+1)]`
-/

namespace A156657.P4600477509326849177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156657.P4600477509326849177

namespace A156657

/-- `∪[A059456(n+1), A141468(n+1)]` -/
def P4600477509326849177.Spec : Prop :=
  ∀ n, (P4600477509326849177.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P7645677014240421219

`∪[A059456(n+1), A173905(n+1)]`
-/

namespace A156657.P7645677014240421219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156657.P7645677014240421219

namespace A156657

/-- `∪[A059456(n+1), A173905(n+1)]` -/
def P7645677014240421219.Spec : Prop :=
  ∀ n, (P7645677014240421219.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P15073970934598822984

`∪[A084622(n+1), A173905(n+1)]`
-/

namespace A156657.P15073970934598822984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156657.P15073970934598822984

namespace A156657

/-- `∪[A084622(n+1), A173905(n+1)]` -/
def P15073970934598822984.Spec : Prop :=
  ∀ n, (P15073970934598822984.a n : ℤ) = A156657 (n + 1)

end A156657

/-! ## A156657.P12637642700980470124

`∪[A173905(n+1), A176393(n+1)]`
-/

namespace A156657.P12637642700980470124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156657.P12637642700980470124

namespace A156657

/-- `∪[A173905(n+1), A176393(n+1)]` -/
def P12637642700980470124.Spec : Prop :=
  ∀ n, (P12637642700980470124.a n : ℤ) = A156657 (n + 1)

end A156657

/-!
# A156658: Primes p such that also 2*p+1 or (p-1)/2 is prime.

The programs for A156658, the canonical program `A156658.P11973961863335742166` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156658 has offset 1).

The definition of A156658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156658.P11973961863335742166

`∪[A005384(n+1), A005385(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A156658

/-- `∪[A005384(n+1), A005385(n+1)]` -/
def P11973961863335742166.Spec : Prop :=
  ∀ n, (P11973961863335742166.a n : ℤ) = A156658 (n + 1)

theorem P11973961863335742166.correct : P11973961863335742166.Spec := by
  intro n
  simp only [A156658, Nat.add_sub_cancel]

end A156658

/-! ## A156658.P15086140738731733085

`∪[A005384(n+1), A059452(n+1)]`
-/

namespace A156658.P15086140738731733085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156658.P15086140738731733085

namespace A156658

/-- `∪[A005384(n+1), A059452(n+1)]` -/
def P15086140738731733085.Spec : Prop :=
  ∀ n, (P15086140738731733085.a n : ℤ) = A156658 (n + 1)

end A156658

/-! ## A156658.P10363421208597952890

`∪[A005385(n+1), A059453(n+1)]`
-/

namespace A156658.P10363421208597952890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156658.P10363421208597952890

namespace A156658

/-- `∪[A005385(n+1), A059453(n+1)]` -/
def P10363421208597952890.Spec : Prop :=
  ∀ n, (P10363421208597952890.a n : ℤ) = A156658 (n + 1)

end A156658

/-! ## A156658.P15867749130457050035

`∪[A005384(n+1), A079148(n+1)]`
-/

namespace A156658.P15867749130457050035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156658.P15867749130457050035

namespace A156658

/-- `∪[A005384(n+1), A079148(n+1)]` -/
def P15867749130457050035.Spec : Prop :=
  ∀ n, (P15867749130457050035.a n : ℤ) = A156658 (n + 1)

end A156658

/-! ## A156658.P16367718157183138963

`∪[A059453(n+1), A079148(n+1)]`
-/

namespace A156658.P16367718157183138963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156658.P16367718157183138963

namespace A156658

/-- `∪[A059453(n+1), A079148(n+1)]` -/
def P16367718157183138963.Spec : Prop :=
  ∀ n, (P16367718157183138963.a n : ℤ) = A156658 (n + 1)

end A156658

/-! ## A156658.P13840999094314803664

`∪[A005384(n+1), A176045(n+1)+A005384(n+1)]`
-/

namespace A156658.P13840999094314803664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 (n + 1) + A005384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156658.P13840999094314803664

namespace A156658

/-- `∪[A005384(n+1), A176045(n+1)+A005384(n+1)]` -/
def P13840999094314803664.Spec : Prop :=
  ∀ n, (P13840999094314803664.a n : ℤ) = A156658 (n + 1)

end A156658

/-! ## A156658.P18103128207354408530

`∪[A005384(n+1), A175666(n+1)-A005384(n+1)]`
-/

namespace A156658.P18103128207354408530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175666 (n + 1) - A005384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156658.P18103128207354408530

namespace A156658

/-- `∪[A005384(n+1), A175666(n+1)-A005384(n+1)]` -/
def P18103128207354408530.Spec : Prop :=
  ∀ n, (P18103128207354408530.a n : ℤ) = A156658 (n + 1)

end A156658

/-!
# A156659: Characteristic function of safe primes.

The programs for A156659, the canonical program `A156659.P9694102179594452160` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156659 has offset 0).

The definition of A156659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156659.P8190346446743760527

`char[p?[eq[2, ∑{e}[n, #]]+1]]`
-/

namespace A156659.P8190346446743760527
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A156659.P8190346446743760527

namespace A156659

/-- `char[p?[eq[2, ∑{e}[n, #]]+1]]` -/
def P8190346446743760527.Spec : Prop :=
  ∀ n, (P8190346446743760527.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P8530791408711874630

`char[p?[eq[2, ∑{e}[1-n, #]]]]`
-/

namespace A156659.P8530791408711874630
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n).natAbs, Nat.factorization (f5 n).natAbs p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A156659.P8530791408711874630

namespace A156659

/-- `char[p?[eq[2, ∑{e}[1-n, #]]]]` -/
def P8530791408711874630.Spec : Prop :=
  ∀ n, (P8530791408711874630.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P18160067589952056275

`char[A033300(n)]`
-/

namespace A156659.P18160067589952056275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033300 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P18160067589952056275

namespace A156659

/-- `char[A033300(n)]` -/
def P18160067589952056275.Spec : Prop :=
  ∀ n, (P18160067589952056275.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P15903789752913923160

`char[A005385(n+1)]`
-/

namespace A156659.P15903789752913923160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P15903789752913923160

namespace A156659

/-- `char[A005385(n+1)]` -/
def P15903789752913923160.Spec : Prop :=
  ∀ n, (P15903789752913923160.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P10266152290381172110

`char[A033299(n+1)]`
-/

namespace A156659.P10266152290381172110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P10266152290381172110

namespace A156659

/-- `char[A033299(n+1)]` -/
def P10266152290381172110.Spec : Prop :=
  ∀ n, (P10266152290381172110.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P2072028385208372934

`char[A079148(n+3)]`
-/

namespace A156659.P2072028385208372934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P2072028385208372934

namespace A156659

/-- `char[A079148(n+3)]` -/
def P2072028385208372934.Spec : Prop :=
  ∀ n, (P2072028385208372934.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P1646106345997840634

`char[record[A023590(n+1)]]`
-/

namespace A156659.P1646106345997840634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023590 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P1646106345997840634

namespace A156659

/-- `char[record[A023590(n+1)]]` -/
def P1646106345997840634.Spec : Prop :=
  ∀ n, (P1646106345997840634.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P761527997277314298

`char[record[A023592(n+1)]]`
-/

namespace A156659.P761527997277314298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023592 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P761527997277314298

namespace A156659

/-- `char[record[A023592(n+1)]]` -/
def P761527997277314298.Spec : Prop :=
  ∀ n, (P761527997277314298.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P14376204737542049630

`char[record[A023594(n+1)]]`
-/

namespace A156659.P14376204737542049630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023594 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P14376204737542049630

namespace A156659

/-- `char[record[A023594(n+1)]]` -/
def P14376204737542049630.Spec : Prop :=
  ∀ n, (P14376204737542049630.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P16905707018572007862

`char[p?[A065966(n+1)]]`
-/

namespace A156659.P16905707018572007862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P16905707018572007862

namespace A156659

/-- `char[p?[A065966(n+1)]]` -/
def P16905707018572007862.Spec : Prop :=
  ∀ n, (P16905707018572007862.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P615501070044057407

`char[p?[A072055(n+1)]]`
-/

namespace A156659.P615501070044057407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P615501070044057407

namespace A156659

/-- `char[p?[A072055(n+1)]]` -/
def P615501070044057407.Spec : Prop :=
  ∀ n, (P615501070044057407.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P11953006167900274753

`char[p?[A088707(n+1)]]`
-/

namespace A156659.P11953006167900274753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P11953006167900274753

namespace A156659

/-- `char[p?[A088707(n+1)]]` -/
def P11953006167900274753.Spec : Prop :=
  ∀ n, (P11953006167900274753.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P13800982773509924584

`char[p?[A327251(n+1)]]`
-/

namespace A156659.P13800982773509924584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327251 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P13800982773509924584

namespace A156659

/-- `char[p?[A327251(n+1)]]` -/
def P13800982773509924584.Spec : Prop :=
  ∀ n, (P13800982773509924584.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P14497246298053043679

`char[p?[A373113(n+1)]]`
-/

namespace A156659.P14497246298053043679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P14497246298053043679

namespace A156659

/-- `char[p?[A373113(n+1)]]` -/
def P14497246298053043679.Spec : Prop :=
  ∀ n, (P14497246298053043679.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P10315770556946458625

`char[A077065(n+1)+1]`
-/

namespace A156659.P10315770556946458625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P10315770556946458625

namespace A156659

/-- `char[A077065(n+1)+1]` -/
def P10315770556946458625.Spec : Prop :=
  ∀ n, (P10315770556946458625.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P15811506227505518703

`char[2*A005384(n+1)+1]`
-/

namespace A156659.P15811506227505518703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005384 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P15811506227505518703

namespace A156659

/-- `char[2*A005384(n+1)+1]` -/
def P15811506227505518703.Spec : Prop :=
  ∀ n, (P15811506227505518703.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P11507702560897911425

`char[p?[2*A000040(n+1)+1]]`
-/

namespace A156659.P11507702560897911425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P11507702560897911425

namespace A156659

/-- `char[p?[2*A000040(n+1)+1]]` -/
def P11507702560897911425.Spec : Prop :=
  ∀ n, (P11507702560897911425.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P10109931587092650276

`char[p?[eq[2, A001222(n+1)]+2]]`
-/

namespace A156659.P10109931587092650276
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A156659.P10109931587092650276

namespace A156659

/-- `char[p?[eq[2, A001222(n+1)]+2]]` -/
def P10109931587092650276.Spec : Prop :=
  ∀ n, (P10109931587092650276.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P10503916710772078696

`char[p?[A166250(n+2)+n+3]]`
-/

namespace A156659.P10503916710772078696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166250 (n + 2) + (n + 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156659.P10503916710772078696

namespace A156659

/-- `char[p?[A166250(n+2)+n+3]]` -/
def P10503916710772078696.Spec : Prop :=
  ∀ n, (P10503916710772078696.a n : ℤ) = A156659 n

end A156659

/-! ## A156659.P9694102179594452160

`A156660(A057979(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156659

/-- `A156660(A057979(n))` -/
def P9694102179594452160.Spec : Prop :=
  ∀ n, P9694102179594452160.a n = A156659 n

theorem P9694102179594452160.correct : P9694102179594452160.Spec := by
  intro n
  simp only [A156659]

end A156659

/-!
# A156660: Characteristic function of Sophie Germain primes.

The programs for A156660, the canonical program `A156660.P13297999666719804209` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156660 has offset 0).

The definition of A156660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156660.P15395844621545570795

`char[A005384(n+1)]`
-/

namespace A156660.P15395844621545570795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156660.P15395844621545570795

namespace A156660

/-- `char[A005384(n+1)]` -/
def P15395844621545570795.Spec : Prop :=
  ∀ n, (P15395844621545570795.a n : ℤ) = A156660 n

end A156660

/-! ## A156660.P4462591316001197565

`char[A055769(n+2)]`
-/

namespace A156660.P4462591316001197565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055769 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156660.P4462591316001197565

namespace A156660

/-- `char[A055769(n+2)]` -/
def P4462591316001197565.Spec : Prop :=
  ∀ n, (P4462591316001197565.a n : ℤ) = A156660 n

end A156660

/-! ## A156660.P14087617856340402169

`char[record[A058256(n+1)]]`
-/

namespace A156660.P14087617856340402169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058256 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156660.P14087617856340402169

namespace A156660

/-- `char[record[A058256(n+1)]]` -/
def P14087617856340402169.Spec : Prop :=
  ∀ n, (P14087617856340402169.a n : ℤ) = A156660 n

end A156660

/-! ## A156660.P11822900404855044540

`char[p?[A003970(n+1)]]`
-/

namespace A156660.P11822900404855044540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003970 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156660.P11822900404855044540

namespace A156660

/-- `char[p?[A003970(n+1)]]` -/
def P11822900404855044540.Spec : Prop :=
  ∀ n, (P11822900404855044540.a n : ℤ) = A156660 n

end A156660

/-! ## A156660.P4834277967669655168

`char[p?[A005097(n+1)]]`
-/

namespace A156660.P4834277967669655168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156660.P4834277967669655168

namespace A156660

/-- `char[p?[A005097(n+1)]]` -/
def P4834277967669655168.Spec : Prop :=
  ∀ n, (P4834277967669655168.a n : ℤ) = A156660 n

end A156660

/-! ## A156660.P4214121807493368700

`char[p?[A014109(n+1)]]`
-/

namespace A156660.P4214121807493368700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156660.P4214121807493368700

namespace A156660

/-- `char[p?[A014109(n+1)]]` -/
def P4214121807493368700.Spec : Prop :=
  ∀ n, (P4214121807493368700.a n : ℤ) = A156660 n

end A156660

/-! ## A156660.P403158488168066101

`char[record[A023503(n+2)]]`
-/

namespace A156660.P403158488168066101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023503 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156660.P403158488168066101

namespace A156660

/-- `char[record[A023503(n+2)]]` -/
def P403158488168066101.Spec : Prop :=
  ∀ n, (P403158488168066101.a n : ℤ) = A156660 n

end A156660

/-! ## A156660.P700690124609008310

`char[p?[A070819(n+1)]]`
-/

namespace A156660.P700690124609008310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070819 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156660.P700690124609008310

namespace A156660

/-- `char[p?[A070819(n+1)]]` -/
def P700690124609008310.Spec : Prop :=
  ∀ n, (P700690124609008310.a n : ℤ) = A156660 n

end A156660

/-! ## A156660.P15746693962528299032

`char[p?[A072451(n+1)]]`
-/

namespace A156660.P15746693962528299032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156660.P15746693962528299032

namespace A156660

/-- `char[p?[A072451(n+1)]]` -/
def P15746693962528299032.Spec : Prop :=
  ∀ n, (P15746693962528299032.a n : ℤ) = A156660 n

end A156660

/-! ## A156660.P3124774865999540987

`char[p?[floor(A000010(n+1)/2)]]`
-/

namespace A156660.P3124774865999540987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 1) : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156660.P3124774865999540987

namespace A156660

/-- `char[p?[floor(A000010(n+1)/2)]]` -/
def P3124774865999540987.Spec : Prop :=
  ∀ n, (P3124774865999540987.a n : ℤ) = A156660 n

end A156660

/-! ## A156660.P4476382147655280797

`char[p?[floor(A000040(n+1)/2)]]`
-/

namespace A156660.P4476382147655280797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156660.P4476382147655280797

namespace A156660

/-- `char[p?[floor(A000040(n+1)/2)]]` -/
def P4476382147655280797.Spec : Prop :=
  ∀ n, (P4476382147655280797.a n : ℤ) = A156660 n

end A156660

/-! ## A156660.P854615309904377514

`char[p?[ceil(A000010(n+2)/2)]]`
-/

namespace A156660.P854615309904377514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (n + 2) : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156660.P854615309904377514

namespace A156660

/-- `char[p?[ceil(A000010(n+2)/2)]]` -/
def P854615309904377514.Spec : Prop :=
  ∀ n, (P854615309904377514.a n : ℤ) = A156660 n

end A156660

/-! ## A156660.P170153682575671393

`char[p?[eq[1, A001222(2*n+1)]]]`
-/

namespace A156660.P170153682575671393
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A156660.P170153682575671393

namespace A156660

/-- `char[p?[eq[1, A001222(2*n+1)]]]` -/
def P170153682575671393.Spec : Prop :=
  ∀ n, (P170153682575671393.a n : ℤ) = A156660 n

end A156660

/-! ## A156660.P9143221581369691251

`char[p?[eq[2, A000005(2*n+1)]]]`
-/

namespace A156660.P9143221581369691251
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A156660.P9143221581369691251

namespace A156660

/-- `char[p?[eq[2, A000005(2*n+1)]]]` -/
def P9143221581369691251.Spec : Prop :=
  ∀ n, (P9143221581369691251.a n : ℤ) = A156660 n

end A156660

/-! ## A156660.P8969237919288479912

`char[p?[n%A006530(2*n+1)]]`
-/

namespace A156660.P8969237919288479912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A006530 (2 * n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156660.P8969237919288479912

namespace A156660

/-- `char[p?[n%A006530(2*n+1)]]` -/
def P8969237919288479912.Spec : Prop :=
  ∀ n, (P8969237919288479912.a n : ℤ) = A156660 n

end A156660

/-! ## A156660.P13297999666719804209

`and(A101264(n), A105700(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156660

/-- `and(A101264(n), A105700(n))` -/
def P13297999666719804209.Spec : Prop :=
  ∀ n, P13297999666719804209.a n = A156660 n

theorem P13297999666719804209.correct : P13297999666719804209.Spec := by
  intro n
  simp only [A156660]

end A156660

/-! ## A156660.P1419651560691284409

`and(A101808(n), A105700(n))`
-/

namespace A156660.P1419651560691284409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101808 n) (A105700 n)

end

end A156660.P1419651560691284409

namespace A156660

/-- `and(A101808(n), A105700(n))` -/
def P1419651560691284409.Spec : Prop :=
  ∀ n, P1419651560691284409.a n = A156660 n

end A156660

/-! ## A156660.P8808835914740747768

`and(A101264(n), A246681(n))`
-/

namespace A156660.P8808835914740747768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101264 n) (A246681 n)

end

end A156660.P8808835914740747768

namespace A156660

/-- `and(A101264(n), A246681(n))` -/
def P8808835914740747768.Spec : Prop :=
  ∀ n, P8808835914740747768.a n = A156660 n

end A156660

/-!
# A156661: Denominator of Euler(n, 1/19).

The programs for A156661, there is no canonical definition to state claims against.
-/

/-! ## A156661.P9915480145986656602

`2^val(n+1, 2)*19^n`
-/

namespace A156661.P9915480145986656602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 19 ^ n

end

end A156661.P9915480145986656602

/-! ## A156661.P16478358316592192997

`lcm(2^val(n+1, 2), 19^n)`
-/

namespace A156661.P16478358316592192997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2) (19 ^ n)

end

end A156661.P16478358316592192997

/-! ## A156661.P5121797214142076005

`(or(n, n+1)-n)*19^n`
-/

namespace A156661.P5121797214142076005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor n (n + 1) : ℤ) - (n : ℤ)) * (19 ^ n : ℤ)

end

end A156661.P5121797214142076005

/-! ## A156661.P15243497813783201654

`19^n*A006519(n+1)`
-/

namespace A156661.P15243497813783201654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 ^ n : ℤ) * A006519 (n + 1)

end

end A156661.P15243497813783201654

/-! ## A156661.P11349529905509368395

`lcm(A001029(n), A006519(n+1))`
-/

namespace A156661.P11349529905509368395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001029 n) (A006519 (n + 1))

end

end A156661.P11349529905509368395

/-! ## A156661.P3521211952356583360

`19^n*A000079(A007814(n+1))`
-/

namespace A156661.P3521211952356583360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 ^ n : ℤ) * A000079 (A007814 (n + 1)).toNat

end

end A156661.P3521211952356583360

/-! ## A156661.P13130531537474538916

`A000079(A007814(n+1))*A001029(n)`
-/

namespace A156661.P13130531537474538916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1)).toNat * A001029 n

end

end A156661.P13130531537474538916

/-! ## A156661.P17034963917595824361

`A001029(n)*A008619(A038712(n+1))`
-/

namespace A156661.P17034963917595824361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001029 n * A008619 (A038712 (n + 1)).toNat

end

end A156661.P17034963917595824361

/-! ## A156661.P17209542645347646399

`gcd(A000079(n), A091030(n+1))*A001029(n)`
-/

namespace A156661.P17209542645347646399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000079 n) (A091030 (n + 1)) : ℤ) * A001029 n

end

end A156661.P17209542645347646399

/-!
# A156663: Triangle by columns, powers of 2 interleaved with zeros.

The programs for A156663, the canonical program `A156663.P8756800367634588388` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156663 has offset 0).

The definition of A156663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156663.P14401728705675124849

`A131575(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A156663.P14401728705675124849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A156663.P14401728705675124849

namespace A156663

/-- `A131575(C(comp[∑[n]]-n, 2)-n)` -/
def P14401728705675124849.Spec : Prop :=
  ∀ n, P14401728705675124849.a n = A156663 n

end A156663

/-! ## A156663.P13044968667770737379

`sqrt(comp[∑[4*n]]%2*A130321(n))`
-/

namespace A156663.P13044968667770737379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A130321 n : ℝ)

end

end A156663.P13044968667770737379

namespace A156663

/-- `sqrt(comp[∑[4*n]]%2*A130321(n))` -/
def P13044968667770737379.Spec : Prop :=
  ∀ n, P13044968667770737379.a n = (A156663 n : ℝ)

end A156663

/-! ## A156663.P15362500138418020069

`A077957(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A156663.P15362500138418020069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A156663.P15362500138418020069

namespace A156663

/-- `A077957(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P15362500138418020069.Spec : Prop :=
  ∀ n, P15362500138418020069.a n = A156663 n

end A156663

/-! ## A156663.P14597090689363535296

`A077957(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A156663.P14597090689363535296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A156663.P14597090689363535296

namespace A156663

/-- `A077957(C(comp[∑[n]]-n, 2)-n-1)` -/
def P14597090689363535296.Spec : Prop :=
  ∀ n, P14597090689363535296.a n = A156663 n

end A156663

/-! ## A156663.P8756800367634588388

`A077957(A025581(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156663

/-- `A077957(A025581(n))` -/
def P8756800367634588388.Spec : Prop :=
  ∀ n, P8756800367634588388.a n = A156663 n

theorem P8756800367634588388.correct : P8756800367634588388.Spec := by
  intro n
  simp only [A156663]

end A156663

/-! ## A156663.P13302212154231763979

`A119332(A099375(n))`
-/

namespace A156663.P13302212154231763979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A099375 n).toNat

end

end A156663.P13302212154231763979

namespace A156663

/-- `A119332(A099375(n))` -/
def P13302212154231763979.Spec : Prop :=
  ∀ n, P13302212154231763979.a n = A156663 n

end A156663

/-! ## A156663.P8298573876570211073

`A131575(A134224(n))`
-/

namespace A156663.P8298573876570211073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (A134224 n).toNat

end

end A156663.P8298573876570211073

namespace A156663

/-- `A131575(A134224(n))` -/
def P8298573876570211073.Spec : Prop :=
  ∀ n, P8298573876570211073.a n = A156663 n

end A156663

/-! ## A156663.P3659342511432165703

`A131575(A004736(n+1))`
-/

namespace A156663.P3659342511432165703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (A004736 (n + 1)).toNat

end

end A156663.P3659342511432165703

namespace A156663

/-- `A131575(A004736(n+1))` -/
def P3659342511432165703.Spec : Prop :=
  ∀ n, P3659342511432165703.a n = A156663 n

end A156663

/-! ## A156663.P4511397686298964343

`A131575(A025581(n)+1)`
-/

namespace A156663.P4511397686298964343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (A025581 n + 1).toNat

end

end A156663.P4511397686298964343

namespace A156663

/-- `A131575(A025581(n)+1)` -/
def P4511397686298964343.Spec : Prop :=
  ∀ n, P4511397686298964343.a n = A156663 n

end A156663

/-! ## A156663.P9903817149881265425

`A119332(A185782(n+1))`
-/

namespace A156663.P9903817149881265425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A185782 (n + 1)).toNat

end

end A156663.P9903817149881265425

namespace A156663

/-- `A119332(A185782(n+1))` -/
def P9903817149881265425.Spec : Prop :=
  ∀ n, P9903817149881265425.a n = A156663 n

end A156663

/-! ## A156663.P17360738953600619078

`A116949(n)*A369736(n)`
-/

namespace A156663.P17360738953600619078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n * A369736 n

end

end A156663.P17360738953600619078

namespace A156663

/-- `A116949(n)*A369736(n)` -/
def P17360738953600619078.Spec : Prop :=
  ∀ n, P17360738953600619078.a n = A156663 n

end A156663

/-! ## A156663.P4854956700811981884

`A136688(n+1)/A046854(n)`
-/

namespace A156663.P4854956700811981884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136688 (n + 1) : ℚ) / (A046854 n : ℚ)

end

end A156663.P4854956700811981884

namespace A156663

/-- `A136688(n+1)/A046854(n)` -/
def P4854956700811981884.Spec : Prop :=
  ∀ n, P4854956700811981884.a n = (A156663 n : ℚ)

end A156663

/-! ## A156663.P7778391876441030979

`A136688(n+1)/A134513(n)`
-/

namespace A156663.P7778391876441030979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136688 (n + 1) : ℚ) / (A134513 n : ℚ)

end

end A156663.P7778391876441030979

namespace A156663

/-- `A136688(n+1)/A134513(n)` -/
def P7778391876441030979.Spec : Prop :=
  ∀ n, P7778391876441030979.a n = (A156663 n : ℚ)

end A156663

/-! ## A156663.P12051258324573218144

`lcm(A116949(n), A129688(n+1))`
-/

namespace A156663.P12051258324573218144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A116949 n) (A129688 (n + 1))

end

end A156663.P12051258324573218144

namespace A156663

/-- `lcm(A116949(n), A129688(n+1))` -/
def P12051258324573218144.Spec : Prop :=
  ∀ n, (P12051258324573218144.a n : ℤ) = A156663 n

end A156663

/-! ## A156663.P2540879035217435202

`A136688(n+1)/A134505(n+1)`
-/

namespace A156663.P2540879035217435202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136688 (n + 1) : ℚ) / (A134505 (n + 1) : ℚ)

end

end A156663.P2540879035217435202

namespace A156663

/-- `A136688(n+1)/A134505(n+1)` -/
def P2540879035217435202.Spec : Prop :=
  ∀ n, P2540879035217435202.a n = (A156663 n : ℚ)

end A156663

/-! ## A156663.P13452002219256417674

`A077957(A059905(A054238(n)))`
-/

namespace A156663.P13452002219256417674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A059905 (A054238 n).toNat).toNat

end

end A156663.P13452002219256417674

namespace A156663

/-- `A077957(A059905(A054238(n)))` -/
def P13452002219256417674.Spec : Prop :=
  ∀ n, P13452002219256417674.a n = A156663 n

end A156663

/-! ## A156663.P14329439114435149762

`A155761(n)/A165621(n)`
-/

namespace A156663.P14329439114435149762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155761 n : ℚ) / (A165621 n : ℚ)

end

end A156663.P14329439114435149762

namespace A156663

/-- `A155761(n)/A165621(n)` -/
def P14329439114435149762.Spec : Prop :=
  ∀ n, P14329439114435149762.a n = (A156663 n : ℚ)

end A156663

/-! ## A156663.P12404921507312793339

`A292372(2^(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A156663.P12404921507312793339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ))).toNat

end

end A156663.P12404921507312793339

namespace A156663

/-- `A292372(2^(C(comp[∑[n]]-n, 2)-n))` -/
def P12404921507312793339.Spec : Prop :=
  ∀ n, P12404921507312793339.a n = A156663 n

end A156663

/-! ## A156663.P14417950145923613157

`A292371(A130330(n))`
-/

namespace A156663.P14417950145923613157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A130330 n).toNat

end

end A156663.P14417950145923613157

namespace A156663

/-- `A292371(A130330(n))` -/
def P14417950145923613157.Spec : Prop :=
  ∀ n, P14417950145923613157.a n = A156663 n

end A156663

/-! ## A156663.P3333691102981744072

`A292372(A043569(n+1))`
-/

namespace A156663.P3333691102981744072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A043569 (n + 1)).toNat

end

end A156663.P3333691102981744072

namespace A156663

/-- `A292372(A043569(n+1))` -/
def P3333691102981744072.Spec : Prop :=
  ∀ n, P3333691102981744072.a n = A156663 n

end A156663

/-!
# A156664: Binomial transform of A052551.

The programs for A156664, the canonical program `A156664.P8435972975703296166` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156664 has offset 0).

The definition of A156664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156664.P8435972975703296166

`2*A000129(n+1)-2^n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156664

/-- `2*A000129(n+1)-2^n` -/
def P8435972975703296166.Spec : Prop :=
  ∀ n, P8435972975703296166.a n = A156664 n

theorem P8435972975703296166.correct : P8435972975703296166.Spec := by
  intro n
  simp only [A156664]

end A156664

/-! ## A156664.P2827718353252290997

`4*a(n-1)-3*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A156664.P2827718353252290997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) - 2 * a (n - 3)

end

end A156664.P2827718353252290997

namespace A156664

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)` -/
def P2827718353252290997.Spec : Prop :=
  ∀ n, P2827718353252290997.a n = A156664 n

end A156664

/-! ## A156664.P1731375587003333203

`∑[A002203(n)]-2^n`
-/

namespace A156664.P1731375587003333203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A156664.P1731375587003333203

namespace A156664

/-- `∑[A002203(n)]-2^n` -/
def P1731375587003333203.Spec : Prop :=
  ∀ n, P1731375587003333203.a n = A156664 n

end A156664

/-! ## A156664.P14033617719410206452

`Δ[A078057(n)-2^n]`
-/

namespace A156664.P14033617719410206452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156664.P14033617719410206452

namespace A156664

/-- `Δ[A078057(n)-2^n]` -/
def P14033617719410206452.Spec : Prop :=
  ∀ n, P14033617719410206452.a n = A156664 n

end A156664

/-! ## A156664.P6323382955686749749

`A052542(n+1)-2^n`
-/

namespace A156664.P6323382955686749749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1) - (2 ^ n : ℤ)

end

end A156664.P6323382955686749749

namespace A156664

/-- `A052542(n+1)-2^n` -/
def P6323382955686749749.Spec : Prop :=
  ∀ n, P6323382955686749749.a n = A156664 n

end A156664

/-! ## A156664.P4997708810578203225

`A163271(n+2)-2^n`
-/

namespace A156664.P4997708810578203225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 2) - (2 ^ n : ℤ)

end

end A156664.P4997708810578203225

namespace A156664

/-- `A163271(n+2)-2^n` -/
def P4997708810578203225.Spec : Prop :=
  ∀ n, P4997708810578203225.a n = A156664 n

end A156664

/-! ## A156664.P1124442004959193051

`A175658(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A156664.P1124442004959193051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175658 (n - 1) + a (n - 1)

end

end A156664.P1124442004959193051

namespace A156664

/-- `A175658(n-1)+a(n-1)` -/
def P1124442004959193051.Spec : Prop :=
  ∀ n, P1124442004959193051.a n = A156664 n

end A156664

/-! ## A156664.P3140322047430303307

`A211479(n-1)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A156664.P3140322047430303307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A211479 (n - 1) - a (n - 1)

end

end A156664.P3140322047430303307

namespace A156664

/-- `A211479(n-1)-a(n-1)` -/
def P3140322047430303307.Spec : Prop :=
  ∀ n, P3140322047430303307.a n = A156664 n

end A156664

/-! ## A156664.P3216672378351044285

`2*(A000129(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A156664.P3216672378351044285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A000129 (n - 1) + a (n - 1))

end

end A156664.P3216672378351044285

namespace A156664

/-- `2*(A000129(n-1)+a(n-1))` -/
def P3216672378351044285.Spec : Prop :=
  ∀ n, P3216672378351044285.a n = A156664 n

end A156664

/-! ## A156664.P3598640380200772588

`A094723(n)-A000129(n)`
-/

namespace A156664.P3598640380200772588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094723 n - A000129 n

end

end A156664.P3598640380200772588

namespace A156664

/-- `A094723(n)-A000129(n)` -/
def P3598640380200772588.Spec : Prop :=
  ∀ n, P3598640380200772588.a n = A156664 n

end A156664

/-! ## A156664.P11550017013644272126

`A133654(n+1)-A000225(n)`
-/

namespace A156664.P11550017013644272126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133654 (n + 1) - A000225 n

end

end A156664.P11550017013644272126

namespace A156664

/-- `A133654(n+1)-A000225(n)` -/
def P11550017013644272126.Spec : Prop :=
  ∀ n, P11550017013644272126.a n = A156664 n

end A156664

/-! ## A156664.P14362706645192901100

`A175658(n)-A163271(n+1)`
-/

namespace A156664.P14362706645192901100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175658 n - A163271 (n + 1)

end

end A156664.P14362706645192901100

namespace A156664

/-- `A175658(n)-A163271(n+1)` -/
def P14362706645192901100.Spec : Prop :=
  ∀ n, P14362706645192901100.a n = A156664 n

end A156664

/-! ## A156664.P13786349934515293098

`A175658(n)-2*A000129(n)`
-/

namespace A156664.P13786349934515293098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175658 n - 2 * A000129 n

end

end A156664.P13786349934515293098

namespace A156664

/-- `A175658(n)-2*A000129(n)` -/
def P13786349934515293098.Spec : Prop :=
  ∀ n, P13786349934515293098.a n = A156664 n

end A156664

/-! ## A156664.P17108245938678941207

`∑[A100227(n)+1-A011782(n)]`
-/

namespace A156664.P17108245938678941207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n + (1 - A011782 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156664.P17108245938678941207

namespace A156664

/-- `∑[A100227(n)+1-A011782(n)]` -/
def P17108245938678941207.Spec : Prop :=
  ∀ n, P17108245938678941207.a n = A156664 n

end A156664

/-! ## A156664.P14908985586122200348

`Δ[A001333(n+1)-A000079(n)]`
-/

namespace A156664.P14908985586122200348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156664.P14908985586122200348

namespace A156664

/-- `Δ[A001333(n+1)-A000079(n)]` -/
def P14908985586122200348.Spec : Prop :=
  ∀ n, P14908985586122200348.a n = A156664 n

end A156664

/-! ## A156664.P10428873633574385719

`Δ[A078057(n)]-A011782(n+1)`
-/

namespace A156664.P10428873633574385719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A011782 (n + 1)

end

end A156664.P10428873633574385719

namespace A156664

/-- `Δ[A078057(n)]-A011782(n+1)` -/
def P10428873633574385719.Spec : Prop :=
  ∀ n, P10428873633574385719.a n = A156664 n

end A156664

/-! ## A156664.P3816082262887984175

`Δ[A293004(n+1)-A000079(n)]`
-/

namespace A156664.P3816082262887984175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 (n + 1) - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156664.P3816082262887984175

namespace A156664

/-- `Δ[A293004(n+1)-A000079(n)]` -/
def P3816082262887984175.Spec : Prop :=
  ∀ n, P3816082262887984175.a n = A156664 n

end A156664

/-! ## A156664.P3439211456556835063

`∑[2*A001333(n)]-A000079(n)`
-/

namespace A156664.P3439211456556835063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000079 n

end

end A156664.P3439211456556835063

namespace A156664

/-- `∑[2*A001333(n)]-A000079(n)` -/
def P3439211456556835063.Spec : Prop :=
  ∀ n, P3439211456556835063.a n = A156664 n

end A156664

/-! ## A156664.P15026320069666749224

`∑[2*A001333(n)-A011782(n)]`
-/

namespace A156664.P15026320069666749224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001333 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156664.P15026320069666749224

namespace A156664

/-- `∑[2*A001333(n)-A011782(n)]` -/
def P15026320069666749224.Spec : Prop :=
  ∀ n, P15026320069666749224.a n = A156664 n

end A156664

/-!
# A156665: Triangle read by rows, A156663 * A007318.

The programs for A156665, there is no canonical definition to state claims against.
-/

/-! ## A156665.P14464175073236282328

`A235501(comp[∑[n]])`
-/

namespace A156665.P14464175073236282328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235501 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A156665.P14464175073236282328

/-! ## A156665.P17407723543432926944

`xor(n, xor(n, A235501(A014132(n+1))))`
-/

namespace A156665.P17407723543432926944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (n : ℤ) (A235501 (A014132 (n + 1)).toNat))

end

end A156665.P17407723543432926944

/-! ## A156665.P12411385465808648154

`gcd(A000038(n), A235501(A014132(n+1)))`
-/

namespace A156665.P12411385465808648154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A235501 (A014132 (n + 1)).toNat)

end

end A156665.P12411385465808648154

/-! ## A156665.P2586668502306910232

`or(A000007(n), A235501(A014132(n+1)))`
-/

namespace A156665.P2586668502306910232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A235501 (A014132 (n + 1)).toNat)

end

end A156665.P2586668502306910232

/-! ## A156665.P566370302906531020

`or(A073424(n), A235501(A014132(n+1)))`
-/

namespace A156665.P566370302906531020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073424 n) (A235501 (A014132 (n + 1)).toNat)

end

end A156665.P566370302906531020

/-! ## A156665.P4453267990341051775

`char[A004442(n)]*A235501(A014132(n+1))`
-/

namespace A156665.P4453267990341051775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A235501 (A014132 (n + 1)).toNat

end

end A156665.P4453267990341051775

/-! ## A156665.P6399772076854916930

`A235501(A014132(n+1))+A000007(n+1)`
-/

namespace A156665.P6399772076854916930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235501 (A014132 (n + 1)).toNat + A000007 (n + 1)

end

end A156665.P6399772076854916930

/-! ## A156665.P17934224098602385377

`lcm(A008836(n+1), A235501(A014132(n+1)))`
-/

namespace A156665.P17934224098602385377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A235501 (A014132 (n + 1)).toNat)

end

end A156665.P17934224098602385377

/-! ## A156665.P12787004485901733778

`A057428(n+1)+A235501(A014132(n+1))+1`
-/

namespace A156665.P12787004485901733778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + (A235501 (A014132 (n + 1)).toNat + 1)

end

end A156665.P12787004485901733778

/-! ## A156665.P1717640087420185219

`A235501(A014132(n+1))%A052968(n)`
-/

namespace A156665.P1717640087420185219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235501 (A014132 (n + 1)).toNat) (A052968 n)

end

end A156665.P1717640087420185219

/-! ## A156665.P12457416008484919418

`A073424(∑[n]+1+n)*A235501(A014132(n+1))`
-/

namespace A156665.P12457416008484919418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (∑ j ∈ Finset.range (n + 1), f1 j + 1 + n) * A235501 (A014132 (n + 1)).toNat

end

end A156665.P12457416008484919418

/-!
# A156666: Primes where the last digit is greater than any other digit.

The programs for A156666, there is no canonical definition to state claims against.
-/

/-! ## A156666.P4289087523237655992

`p?[A193581(2*(n+4))+A004185(2*n+9)]`
-/

namespace A156666.P4289087523237655992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (2 * (n + 4)) + A004185 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156666.P4289087523237655992

/-! ## A156666.P13751281814672298772

`record[A328447(A296520(n+1))]`
-/

namespace A156666.P13751281814672298772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A296520 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156666.P13751281814672298772

/-! ## A156666.P5918715275683560801

`p?[A064446(A102357(n+1))]`
-/

namespace A156666.P5918715275683560801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064446 (A102357 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156666.P5918715275683560801

/-! ## A156666.P12774002597190823695

`p?[A102357(A151878(n)+n)]`
-/

namespace A156666.P12774002597190823695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102357 (A151878 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156666.P12774002597190823695

/-!
# A156667: Triangle read by rows, A156663 * (A001045 * 0^(n-k)).

The programs for A156667, there is no canonical definition to state claims against.
-/

/-! ## A156667.P7416207741741523844

`A156663(n)*A325678(A233543(n))`
-/

namespace A156667.P7416207741741523844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 n * A325678 (A233543 n).toNat

end

end A156667.P7416207741741523844

/-! ## A156667.P17508305270853515382

`A077957(A025581(n))*A325678(A233543(n))`
-/

namespace A156667.P17508305270853515382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A025581 n).toNat * A325678 (A233543 n).toNat

end

end A156667.P17508305270853515382

/-! ## A156667.P15265678756667098580

`A037213(A130321(n))*A325678(A233543(n))`
-/

namespace A156667.P15265678756667098580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A130321 n).toNat * A325678 (A233543 n).toNat

end

end A156667.P15265678756667098580

/-! ## A156667.P14066195893630689488

`A131575(A004736(n+1))*A325678(A233543(n))`
-/

namespace A156667.P14066195893630689488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (A004736 (n + 1)).toNat * A325678 (A233543 n).toNat

end

end A156667.P14066195893630689488

/-! ## A156667.P15243301999564176991

`A131575(A025581(n)+1)*A325678(A233543(n))`
-/

namespace A156667.P15243301999564176991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (A025581 n + 1).toNat * A325678 (A233543 n).toNat

end

end A156667.P15243301999564176991

/-!
# A156669: Positive integers k such that k^2 = (m^5 + n^5)/(m + n) for some nonnegative coprime integers m, n.

The programs for A156669, there is no canonical definition to state claims against.
-/

/-! ## A156669.P377389817466083975

`A156668(∑[A071416(n+1)])`
-/

namespace A156669.P377389817466083975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156668 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156669.P377389817466083975

/-!
# A156672: a(1)=2, a(n+1) is the smallest prime >= a(n) + sum of digits of a(n).

The programs for A156672, the canonical program `A156672.P6211038961780949761` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156672 has offset 1).

The definition of A156672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156672.P6211038961780949761

`A007918(A062028(a(n-1)))` with `a(0)=2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156672

/-- `A007918(A062028(a(n-1)))` -/
def P6211038961780949761.Spec : Prop :=
  ∀ n, P6211038961780949761.a n = A156672 (n + 1)

theorem P6211038961780949761.correct : P6211038961780949761.Spec := by
  intro n
  simp only [A156672, Nat.add_sub_cancel]

end A156672

/-! ## A156672.P132748484826901861

`A151800(A160939(a(n-1)))` with `a(0)=2`
-/

namespace A156672.P132748484826901861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A160939 (a (n - 1)).toNat).toNat

end

end A156672.P132748484826901861

namespace A156672

/-- `A151800(A160939(a(n-1)))` -/
def P132748484826901861.Spec : Prop :=
  ∀ n, P132748484826901861.a n = A156672 (n + 1)

end A156672

/-! ## A156672.P18332303474248508555

`A007918(A160931(a(n-1)-1)+1)` with `a(0)=2`
-/

namespace A156672.P18332303474248508555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (A160931 (a (n - 1) - 1).toNat + 1).toNat

end

end A156672.P18332303474248508555

namespace A156672

/-- `A007918(A160931(a(n-1)-1)+1)` -/
def P18332303474248508555.Spec : Prop :=
  ∀ n, P18332303474248508555.a n = A156672 (n + 1)

end A156672

/-! ## A156672.P1208144589917946870

`A007918(A160939(a(n-1)+1)-1)` with `a(0)=2`
-/

namespace A156672.P1208144589917946870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (A160939 (a (n - 1) + 1).toNat - 1).toNat

end

end A156672.P1208144589917946870

namespace A156672

/-- `A007918(A160939(a(n-1)+1)-1)` -/
def P1208144589917946870.Spec : Prop :=
  ∀ n, P1208144589917946870.a n = A156672 (n + 1)

end A156672

/-! ## A156672.P11046719225485682638

`A007918(A007953(a(n-1))+a(n-1))` with `a(0)=2`
-/

namespace A156672.P11046719225485682638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (A007953 (a (n - 1)).toNat + a (n - 1)).toNat

end

end A156672.P11046719225485682638

namespace A156672

/-- `A007918(A007953(a(n-1))+a(n-1))` -/
def P11046719225485682638.Spec : Prop :=
  ∀ n, P11046719225485682638.a n = A156672 (n + 1)

end A156672

/-!
# A156673: a(1)=0, a(n+1) is the smallest nonprime with sum of digits > sum of digits of a(n).

The programs for A156673, there is no canonical definition to state claims against.
-/

/-! ## A156673.P11343283036383263218

`record[A067524(n+1)%A002379(n)]`
-/

namespace A156673.P11343283036383263218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067524 (n + 1)) (A002379 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156673.P11343283036383263218

/-!
# A156674: Numbers k such that k^2 - 2 == 0 (mod 49).

The programs for A156674, the canonical program `A156674.P7804723727326678265` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156674 has offset 1).

The definition of A156674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156674.P7804723727326678265

`floor((n+1)/2)*49-10*(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A156674

/-- `floor((n+1)/2)*49-10*(-1)^(n+1)` -/
def P7804723727326678265.Spec : Prop :=
  ∀ n, P7804723727326678265.a n = A156674 (n + 1)

theorem P7804723727326678265.correct : P7804723727326678265.Spec := by
  intro n
  simp only [A156674, Nat.add_sub_cancel]

end A156674

/-! ## A156674.P15161517703744857121

`∑[floor(a(n-2))]` with `a(0)=10, a(1)=29, a(2)=20`

`floor` is left out, it is the identity on integers.
-/

namespace A156674.P15161517703744857121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 29, 20] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156674.P15161517703744857121

namespace A156674

/-- `∑[floor(a(n-2))]` -/
def P15161517703744857121.Spec : Prop :=
  ∀ n, (P15161517703744857121.a n : ℤ) = A156674 (n + 1)

end A156674

/-! ## A156674.P725664210073032389

`∑[49-a(n-1)]` with `a(0)=10, a(1)=29`
-/

namespace A156674.P725664210073032389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 29] fun n f1 =>
  49 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156674.P725664210073032389

namespace A156674

/-- `∑[49-a(n-1)]` -/
def P725664210073032389.Spec : Prop :=
  ∀ n, P725664210073032389.a n = A156674 (n + 1)

end A156674

/-!
# A156675: a(n) = 17*((100^(n+1) - 1)/99).

The programs for A156675, the canonical program `A156675.P8097993881942059269` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156675 has offset 0).

The definition of A156675 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094028, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156675.P8097993881942059269

`17*A094028(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A156675

/-- `17*A094028(n)` -/
def P8097993881942059269.Spec : Prop :=
  ∀ n, P8097993881942059269.a n = A156675 n

theorem P8097993881942059269.correct : P8097993881942059269.Spec := by
  intro n
  simp only [A156675]

end A156675

/-! ## A156675.P697886320063862724

`∑[17*(10^n)²]`
-/

namespace A156675.P697886320063862724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * (10 ^ n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156675.P697886320063862724

namespace A156675

/-- `∑[17*(10^n)²]` -/
def P697886320063862724.Spec : Prop :=
  ∀ n, (P697886320063862724.a n : ℤ) = A156675 n

end A156675

/-! ## A156675.P17560171481201687883

`10*10*a(n-1)+17` with `a(0)=17`
-/

namespace A156675.P17560171481201687883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [17] fun n a =>
  10 * (10 * a (n - 1)) + 17

end

end A156675.P17560171481201687883

namespace A156675

/-- `10*10*a(n-1)+17` -/
def P17560171481201687883.Spec : Prop :=
  ∀ n, (P17560171481201687883.a n : ℤ) = A156675 n

end A156675

/-! ## A156675.P7457939490022401370

`record[17*A279028(n)]`
-/

namespace A156675.P7457939490022401370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A279028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156675.P7457939490022401370

namespace A156675

/-- `record[17*A279028(n)]` -/
def P7457939490022401370.Spec : Prop :=
  ∀ n, P7457939490022401370.a n = A156675 n

end A156675

/-! ## A156675.P4904390678454673145

`record[17*A282088(n)]`
-/

namespace A156675.P4904390678454673145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A282088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156675.P4904390678454673145

namespace A156675

/-- `record[17*A282088(n)]` -/
def P4904390678454673145.Spec : Prop :=
  ∀ n, P4904390678454673145.a n = A156675 n

end A156675

/-! ## A156675.P10076504752005156661

`17*A266508(A005843(n))`
-/

namespace A156675.P10076504752005156661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A266508 (A005843 n).toNat

end

end A156675.P10076504752005156661

namespace A156675

/-- `17*A266508(A005843(n))` -/
def P10076504752005156661.Spec : Prop :=
  ∀ n, P10076504752005156661.a n = A156675 n

end A156675

/-! ## A156675.P3601631101355387171

`A033619(2*A139280(n+1))`
-/

namespace A156675.P3601631101355387171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (2 * A139280 (n + 1)).toNat

end

end A156675.P3601631101355387171

namespace A156675

/-- `A033619(2*A139280(n+1))` -/
def P3601631101355387171.Spec : Prop :=
  ∀ n, P3601631101355387171.a n = A156675 n

end A156675

/-! ## A156675.P9512134444439308197

`A033619(A005843(A139280(n+1)))`
-/

namespace A156675.P9512134444439308197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A005843 (A139280 (n + 1)).toNat).toNat

end

end A156675.P9512134444439308197

namespace A156675

/-- `A033619(A005843(A139280(n+1)))` -/
def P9512134444439308197.Spec : Prop :=
  ∀ n, P9512134444439308197.a n = A156675 n

end A156675

/-!
# A156676: a(n) = 81*n^2 - 44*n + 6.

The programs for A156676, the canonical program `A156676.P2913965523641244757` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156676 has offset 0).

The definition of A156676 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `81*n²-44*n+6` (program `A156676.P2913965523641244757`, by `A156676.P2913965523641244757.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156676.P2913965523641244757

`81*n²-44*n+6`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A156676

/-- `81*n²-44*n+6` -/
def P2913965523641244757.Spec : Prop :=
  ∀ n, P2913965523641244757.a n = A156676 n

theorem P2913965523641244757.correct : P2913965523641244757.Spec := by
  intro n
  simp only [A156676]

end A156676

/-! ## A156676.P11718245755558180359

`ceil(A156774(n)/81)`
-/

namespace A156676.P11718245755558180359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A156774 n : ℚ) / 81⌉

end

end A156676.P11718245755558180359

namespace A156676

/-- `ceil(A156774(n)/81)` -/
def P11718245755558180359.Spec : Prop :=
  ∀ n, P11718245755558180359.a n = A156676 n

end A156676

/-! ## A156676.P14095529928321204853

`round(A156774(n)/81)%A117412(n+3)²`
-/

namespace A156676.P14095529928321204853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A156774 n : ℚ) / 81)) (A117412 (n + 3) ^ 2)

end

end A156676.P14095529928321204853

namespace A156676

/-- `round(A156774(n)/81)%A117412(n+3)²` -/
def P14095529928321204853.Spec : Prop :=
  ∀ n, P14095529928321204853.a n = A156676 n

end A156676

/-! ## A156676.P1361314950580852884

`A007318(C(2, n)+1)*round(A156774(n)/81)`
-/

namespace A156676.P1361314950580852884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n + 1) * SequenceMachineLib.roundAway ((A156774 n : ℚ) / 81)

end

end A156676.P1361314950580852884

namespace A156676

/-- `A007318(C(2, n)+1)*round(A156774(n)/81)` -/
def P1361314950580852884.Spec : Prop :=
  ∀ n, P1361314950580852884.a n = A156676 n

end A156676

/-! ## A156676.P7474414885807726686

`round(A156774(n)/81)^or(1, A327974(n+1))`
-/

namespace A156676.P7474414885807726686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A156774 n : ℚ) / 81) : ℚ) ^ (Int.lor 1 (A327974 (n + 1)) : ℤ)

end

end A156676.P7474414885807726686

namespace A156676

/-- `round(A156774(n)/81)^or(1, A327974(n+1))` -/
def P7474414885807726686.Spec : Prop :=
  ∀ n, P7474414885807726686.a n = (A156676 n : ℚ)

end A156676

/-! ## A156676.P8036780987662283156

`floor(gcd(n, A000290(n+1))+A156774(n)/81)`
-/

namespace A156676.P8036780987662283156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (n : ℤ) (A000290 (n + 1)) : ℚ) + (A156774 n : ℚ) / 81⌋

end

end A156676.P8036780987662283156

namespace A156676

/-- `floor(gcd(n, A000290(n+1))+A156774(n)/81)` -/
def P8036780987662283156.Spec : Prop :=
  ∀ n, P8036780987662283156.a n = A156676 n

end A156676

/-! ## A156676.P12771934246610927883

`round(A156774(n)/81)*A001222(A008578(n+2))`
-/

namespace A156676.P12771934246610927883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A156774 n : ℚ) / 81) * A001222 (A008578 (n + 2)).toNat

end

end A156676.P12771934246610927883

namespace A156676

/-- `round(A156774(n)/81)*A001222(A008578(n+2))` -/
def P12771934246610927883.Spec : Prop :=
  ∀ n, P12771934246610927883.a n = A156676 n

end A156676

/-! ## A156676.P814011083960968368

`xor(round(A156774(n)/81), A000035(2*n))`
-/

namespace A156676.P814011083960968368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A156774 n : ℚ) / 81)) (A000035 (2 * n))

end

end A156676.P814011083960968368

namespace A156676

/-- `xor(round(A156774(n)/81), A000035(2*n))` -/
def P814011083960968368.Spec : Prop :=
  ∀ n, P814011083960968368.a n = A156676 n

end A156676

/-! ## A156676.P9129434526090750225

`floor(A156774(n)/81-A033999(2*n+1))`
-/

namespace A156676.P9129434526090750225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A156774 n : ℚ) / 81 - (A033999 (2 * n + 1) : ℚ)⌋

end

end A156676.P9129434526090750225

namespace A156676

/-- `floor(A156774(n)/81-A033999(2*n+1))` -/
def P9129434526090750225.Spec : Prop :=
  ∀ n, P9129434526090750225.a n = A156676 n

end A156676

/-! ## A156676.P2508662228108974402

`round(A156774(n)/81)^A007318(∑[n+1])`
-/

namespace A156676.P2508662228108974402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A156774 n : ℚ) / 81) : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A156676.P2508662228108974402

namespace A156676

/-- `round(A156774(n)/81)^A007318(∑[n+1])` -/
def P2508662228108974402.Spec : Prop :=
  ∀ n, P2508662228108974402.a n = (A156676 n : ℚ)

end A156676

/-!
# A156677: a(n) = 81*n^2 - 118*n + 43.

The programs for A156677, the canonical program `A156677.P17350434572551482617` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156677 has offset 0).

The definition of A156677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `81*n²-118*n+43` (program `A156677.P17350434572551482617`, by `A156677.P17350434572551482617.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156677.P17350434572551482617

`81*n²-118*n+43`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A156677

/-- `81*n²-118*n+43` -/
def P17350434572551482617.Spec : Prop :=
  ∀ n, P17350434572551482617.a n = A156677 n

theorem P17350434572551482617.correct : P17350434572551482617.Spec := by
  intro n
  simp only [A156677]

end A156677

/-! ## A156677.P10155482095512483058

`ceil(A156773(n)/81)`
-/

namespace A156677.P10155482095512483058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A156773 n : ℚ) / 81⌉

end

end A156677.P10155482095512483058

namespace A156677

/-- `ceil(A156773(n)/81)` -/
def P10155482095512483058.Spec : Prop :=
  ∀ n, P10155482095512483058.a n = A156677 n

end A156677

/-! ## A156677.P2955992873975517089

`round(A156773(C(or(n, -2)², 8)+n)/81)`
-/

namespace A156677.P2955992873975517089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A156773 (Nat.choose (Int.lor (n : ℤ) (-2) ^ 2).toNat 8 + n) : ℚ) / 81)

end

end A156677.P2955992873975517089

namespace A156677

/-- `round(A156773(C(or(n, -2)², 8)+n)/81)` -/
def P2955992873975517089.Spec : Prop :=
  ∀ n, P2955992873975517089.a n = A156677 n

end A156677

/-! ## A156677.P16991463660462884741

`lcm(round(A156773(n)/81), A033999(n))`
-/

namespace A156677.P16991463660462884741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A156773 n : ℚ) / 81)) (A033999 n)

end

end A156677.P16991463660462884741

namespace A156677

/-- `lcm(round(A156773(n)/81), A033999(n))` -/
def P16991463660462884741.Spec : Prop :=
  ∀ n, (P16991463660462884741.a n : ℤ) = A156677 n

end A156677

/-! ## A156677.P4977299916977025645

`or(round(A156773(n)/81), A000007(n))`
-/

namespace A156677.P4977299916977025645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A156773 n : ℚ) / 81)) (A000007 n)

end

end A156677.P4977299916977025645

namespace A156677

/-- `or(round(A156773(n)/81), A000007(n))` -/
def P4977299916977025645.Spec : Prop :=
  ∀ n, P4977299916977025645.a n = A156677 n

end A156677

/-! ## A156677.P8409546392666368403

`round(A156773(n)/81)%A017403(n+1)`
-/

namespace A156677.P8409546392666368403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A156773 n : ℚ) / 81)) (A017403 (n + 1))

end

end A156677.P8409546392666368403

namespace A156677

/-- `round(A156773(n)/81)%A017403(n+1)` -/
def P8409546392666368403.Spec : Prop :=
  ∀ n, P8409546392666368403.a n = A156677 n

end A156677

/-! ## A156677.P15302006580843023964

`or(round(A156773(n)/81), A137934(n+1))`
-/

namespace A156677.P15302006580843023964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A156773 n : ℚ) / 81)) (A137934 (n + 1))

end

end A156677.P15302006580843023964

namespace A156677

/-- `or(round(A156773(n)/81), A137934(n+1))` -/
def P15302006580843023964.Spec : Prop :=
  ∀ n, P15302006580843023964.a n = A156677 n

end A156677

/-! ## A156677.P6475823503558636185

`round(A008683(4*(n+1))+A156773(n)/81)`
-/

namespace A156677.P6475823503558636185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (4 * (n + 1)) : ℚ) + (A156773 n : ℚ) / 81)

end

end A156677.P6475823503558636185

namespace A156677

/-- `round(A008683(4*(n+1))+A156773(n)/81)` -/
def P6475823503558636185.Spec : Prop :=
  ∀ n, P6475823503558636185.a n = A156677 n

end A156677

/-! ## A156677.P15149704219153989922

`round(A000161(A002145(n+1))+A156773(n)/81)`
-/

namespace A156677.P15149704219153989922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000161 (A002145 (n + 1)).toNat : ℚ) + (A156773 n : ℚ) / 81)

end

end A156677.P15149704219153989922

namespace A156677

/-- `round(A000161(A002145(n+1))+A156773(n)/81)` -/
def P15149704219153989922.Spec : Prop :=
  ∀ n, P15149704219153989922.a n = A156677 n

end A156677

/-!
# A156678: Consider primitive Pythagorean triangles (A^2 + B^2 = C^2, gcd (A, B) = 1, A < B

The programs for A156678, there is no canonical definition to state claims against.
-/

/-! ## A156678.P13169700161167683082

`A020884(n+1)+A156680(n+1)`
-/

namespace A156678.P13169700161167683082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020884 (n + 1) + A156680 (n + 1)

end

end A156678.P13169700161167683082

/-! ## A156678.P2444517040100202644

`A263728(3*n+2)`
-/

namespace A156678.P2444517040100202644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 2)

end

end A156678.P2444517040100202644

/-! ## A156678.P18076345886702995456

`sqrt(A156679(n+1)²-A020884(n+1)²)`
-/

namespace A156678.P18076345886702995456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A156679 (n + 1) ^ 2 - A020884 (n + 1) ^ 2 : ℝ)

end

end A156678.P18076345886702995456

/-! ## A156678.P14013080768987170050

`A263728(A016789(n))%A017054(n)`
-/

namespace A156678.P14013080768987170050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263728 (A016789 n).toNat) (A017054 n)

end

end A156678.P14013080768987170050

/-! ## A156678.P7950873590340918712

`gcd(A000038(n)², A263728(A016789(n)))`
-/

namespace A156678.P7950873590340918712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n ^ 2) (A263728 (A016789 n).toNat)

end

end A156678.P7950873590340918712

/-! ## A156678.P13580392973031573964

`A263728(A016789(n))+A000007(n+1)`
-/

namespace A156678.P13580392973031573964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (A016789 n).toNat + A000007 (n + 1)

end

end A156678.P13580392973031573964

/-! ## A156678.P11587937013795645750

`lcm(A056594(2*n), A263728(A016789(n)))`
-/

namespace A156678.P11587937013795645750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 (2 * n)) (A263728 (A016789 n).toNat)

end

end A156678.P11587937013795645750

/-! ## A156678.P17882991135767856228

`A263728(A016789(n))/A001222(A304292(n+1))`
-/

namespace A156678.P17882991135767856228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263728 (A016789 n).toNat : ℚ) / (A001222 (A304292 (n + 1)).toNat : ℚ)

end

end A156678.P17882991135767856228

/-! ## A156678.P346633277538828943

`A263728(A016777(n))+A156680(n+1)`
-/

namespace A156678.P346633277538828943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (A016777 n).toNat + A156680 (n + 1)

end

end A156678.P346633277538828943

/-!
# A156679: Consider primitive Pythagorean triangles (A^2 + B^2 = C^2, gcd (A, B) = 1, A < B

The programs for A156679, there is no canonical definition to state claims against.
-/

/-! ## A156679.P9897655336790857079

`A263728(3*(n+1))`
-/

namespace A156679.P9897655336790857079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * (n + 1))

end

end A156679.P9897655336790857079

/-! ## A156679.P4089222095640935631

`sqrt(A020884(n+1)²+A156678(n+1)²)`
-/

namespace A156679.P4089222095640935631
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A020884 (n + 1) ^ 2 + A156678 (n + 1) ^ 2 : ℝ)

end

end A156679.P4089222095640935631

/-! ## A156679.P3103601139638596427

`A263728(A008486(n+1))+A000007(n+1)`
-/

namespace A156679.P3103601139638596427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (A008486 (n + 1)).toNat + A000007 (n + 1)

end

end A156679.P3103601139638596427

/-! ## A156679.P1970384382025831260

`A263728(A008486(n+1))-A000120(A001316(n))+1`
-/

namespace A156679.P1970384382025831260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (A008486 (n + 1)).toNat - A000120 (A001316 n).toNat + 1

end

end A156679.P1970384382025831260

/-! ## A156679.P324196314803957426

`A263728(A008486(n+1))/A001222(A002476(n+1))`
-/

namespace A156679.P324196314803957426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263728 (A008486 (n + 1)).toNat : ℚ) / (A001222 (A002476 (n + 1)).toNat : ℚ)

end

end A156679.P324196314803957426

/-! ## A156679.P4758855778140606730

`A263728(A008486(n+1))/A007318(∑[n]-n)`
-/

namespace A156679.P4758855778140606730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263728 (A008486 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j - n) : ℚ)

end

end A156679.P4758855778140606730

/-!
# A156680: Consider primitive Pythagorean triangles (A^2 + B^2 = C^2, gcd (A, B) = 1, A < B

The programs for A156680, there is no canonical definition to state claims against.
-/

/-! ## A156680.P3869075622357623729

`A156678(n+1)-A020884(n+1)`
-/

namespace A156680.P3869075622357623729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156678 (n + 1) - A020884 (n + 1)

end

end A156680.P3869075622357623729

/-! ## A156680.P3176116222011207901

`A156678(n+1)-A263728(3*n+1)`
-/

namespace A156680.P3176116222011207901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156678 (n + 1) - A263728 (3 * n + 1)

end

end A156680.P3176116222011207901

/-! ## A156680.P4139783795093073714

`A263728(3*n+2)-A020884(n+1)`
-/

namespace A156680.P4139783795093073714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 2) - A020884 (n + 1)

end

end A156680.P4139783795093073714

/-! ## A156680.P9904274654895051749

`A263728(3*n+2)-A263728(3*n+1)`
-/

namespace A156680.P9904274654895051749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 2) - A263728 (3 * n + 1)

end

end A156680.P9904274654895051749

/-! ## A156680.P14393298903295321813

`A196199(A020884(n+1)²)+A156678(n+1)`
-/

namespace A156680.P14393298903295321813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A020884 (n + 1) ^ 2).toNat + A156678 (n + 1)

end

end A156680.P14393298903295321813

/-! ## A156680.P10359975449003769923

`A156678(n+1)+-A020884(n+1)%A156679(n+1)`
-/

namespace A156680.P10359975449003769923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156678 (n + 1) + Int.tmod (-A020884 (n + 1)) (A156679 (n + 1))

end

end A156680.P10359975449003769923

/-!
# A156681: Consider all Pythagorean triangles A^2 + B^2 = C^2 with A < B < C; sequence gives values of B, sorted to correspond to increasing A (A009004).

The programs for A156681, there is no canonical definition to state claims against.
-/

/-! ## A156681.P6089316187897449882

`A242778(2*(n+1))/2`
-/

namespace A156681.P6089316187897449882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242778 (2 * (n + 1)) : ℚ) / 2

end

end A156681.P6089316187897449882

/-! ## A156681.P8352111412110340495

`A001281(A242778(2*(n+1)))`
-/

namespace A156681.P8352111412110340495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A242778 (2 * (n + 1))).toNat

end

end A156681.P8352111412110340495

/-! ## A156681.P12472937336729826307

`A004525(A242778(2*n+2))`
-/

namespace A156681.P12472937336729826307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A242778 (2 * n + 2)).toNat

end

end A156681.P12472937336729826307

/-! ## A156681.P1913732424680302974

`A032742(A242778(n+2+n))`
-/

namespace A156681.P1913732424680302974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A242778 (n + 2 + n)).toNat

end

end A156681.P1913732424680302974

/-! ## A156681.P5009350263491212354

`A028242(A242778(2*(n+1))+1)`
-/

namespace A156681.P5009350263491212354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A242778 (2 * (n + 1)) + 1).toNat

end

end A156681.P5009350263491212354

/-!
# A156682: Consider all Pythagorean triangles A^2 + B^2 = C^2 with A

The programs for A156682, there is no canonical definition to state claims against.
-/

/-! ## A156682.P6248149708089079051

`A156681(n+1)+A002033(A090438(n+1))`
-/

namespace A156682.P6248149708089079051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156681 (n + 1) + A002033 (A090438 (n + 1)).toNat

end

end A156682.P6248149708089079051

/-! ## A156682.P14960481131855874603

`A272210(A175317(n+1))+A156681(n+1)`
-/

namespace A156682.P14960481131855874603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272210 (A175317 (n + 1)).toNat + A156681 (n + 1)

end

end A156682.P14960481131855874603

/-!
# A156683: Integers that can occur as either leg in more than one primitive Pythagorean triple.

The programs for A156683, the canonical program `A156683.P11389173112947492787` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156683 has offset 1).

The definition of A156683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156683.P11389173112947492787

`lt[1, A024361(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A156683

/-- `lt[1, A024361(n+1)]+1` -/
def P11389173112947492787.Spec : Prop :=
  ∀ n, (P11389173112947492787.a n : ℤ) = A156683 (n + 1)

theorem P11389173112947492787.correct : P11389173112947492787.Spec := by
  intro n
  simp only [A156683, Nat.add_sub_cancel]

end A156683

/-! ## A156683.P11757629816040691384

`lt[2, abs(A317528(n+1))]+1`
-/

namespace A156683.P11757629816040691384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317528 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A156683.P11757629816040691384

namespace A156683

/-- `lt[2, abs(A317528(n+1))]+1` -/
def P11757629816040691384.Spec : Prop :=
  ∀ n, (P11757629816040691384.a n : ℤ) = A156683 (n + 1)

end A156683

/-! ## A156683.P8694102379685972588

`eq[1, A073274(a(A024361(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A156683.P8694102379685972588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A073274 (f2 (A024361 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A156683.P8694102379685972588

namespace A156683

/-- `eq[1, A073274(a(A024361(n)))]` -/
def P8694102379685972588.Spec : Prop :=
  ∀ n, (P8694102379685972588.a n : ℤ) = A156683 (n + 1)

end A156683

/-! ## A156683.P13455911896099557587

`eq[0, A025810(a(A024361(n)))]` with `a(0)=8, a(1)=8`
-/

namespace A156683.P13455911896099557587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8, 8] fun n f2 =>
  A025810 (f2 (A024361 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A156683.P13455911896099557587

namespace A156683

/-- `eq[0, A025810(a(A024361(n)))]` -/
def P13455911896099557587.Spec : Prop :=
  ∀ n, (P13455911896099557587.a n : ℤ) = A156683 (n + 1)

end A156683

/-! ## A156683.P1893159511064295766

`eq[1, A001065(a(A024361(n)))]` with `a(0)=8, a(1)=8`
-/

namespace A156683.P1893159511064295766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8, 8] fun n f2 =>
  A001065 (f2 (A024361 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A156683.P1893159511064295766

namespace A156683

/-- `eq[1, A001065(a(A024361(n)))]` -/
def P1893159511064295766.Spec : Prop :=
  ∀ n, (P1893159511064295766.a n : ℤ) = A156683 (n + 1)

end A156683

/-! ## A156683.P12727831534480540412

`eq[1, A051903(a(A024361(n)))]` with `a(0)=8, a(1)=8`
-/

namespace A156683.P12727831534480540412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8, 8] fun n f2 =>
  A051903 (f2 (A024361 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A156683.P12727831534480540412

namespace A156683

/-- `eq[1, A051903(a(A024361(n)))]` -/
def P12727831534480540412.Spec : Prop :=
  ∀ n, (P12727831534480540412.a n : ℤ) = A156683 (n + 1)

end A156683

/-! ## A156683.P13588123514406486976

`filter[A346608(n+1), A152822(#)]`
-/

namespace A156683.P13588123514406486976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A156683.P13588123514406486976

namespace A156683

/-- `filter[A346608(n+1), A152822(#)]` -/
def P13588123514406486976.Spec : Prop :=
  ∀ n, P13588123514406486976.a n = A156683 (n + 1)

end A156683

/-! ## A156683.P17357237282438114238

`∩[A346608(n+1), A107750(n)]`
-/

namespace A156683.P17357237282438114238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156683.P17357237282438114238

namespace A156683

/-- `∩[A346608(n+1), A107750(n)]` -/
def P17357237282438114238.Spec : Prop :=
  ∀ n, (P17357237282438114238.a n : ℤ) = A156683 (n + 1)

end A156683

/-! ## A156683.P9931548238761847484

`∩[A024352(n+1), A346608(n+1)]`
-/

namespace A156683.P9931548238761847484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156683.P9931548238761847484

namespace A156683

/-- `∩[A024352(n+1), A346608(n+1)]` -/
def P9931548238761847484.Spec : Prop :=
  ∀ n, (P9931548238761847484.a n : ℤ) = A156683 (n + 1)

end A156683

/-! ## A156683.P2280420839561081007

`∩[A042965(n+1), A346608(n+1)]`
-/

namespace A156683.P2280420839561081007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156683.P2280420839561081007

namespace A156683

/-- `∩[A042965(n+1), A346608(n+1)]` -/
def P2280420839561081007.Spec : Prop :=
  ∀ n, (P2280420839561081007.a n : ℤ) = A156683 (n + 1)

end A156683

/-! ## A156683.P14036508266772353959

`filter[A024619(n+1), A152822(#)]`
-/

namespace A156683.P14036508266772353959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A156683.P14036508266772353959

namespace A156683

/-- `filter[A024619(n+1), A152822(#)]` -/
def P14036508266772353959.Spec : Prop :=
  ∀ n, P14036508266772353959.a n = A156683 (n + 1)

end A156683

/-! ## A156683.P8020657392724311345

`∩[A024619(n+1), A107750(n)]`
-/

namespace A156683.P8020657392724311345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156683.P8020657392724311345

namespace A156683

/-- `∩[A024619(n+1), A107750(n)]` -/
def P8020657392724311345.Spec : Prop :=
  ∀ n, (P8020657392724311345.a n : ℤ) = A156683 (n + 1)

end A156683

/-! ## A156683.P3812562231462405363

`∩[A024352(n+1), A024619(n+1)]`
-/

namespace A156683.P3812562231462405363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156683.P3812562231462405363

namespace A156683

/-- `∩[A024352(n+1), A024619(n+1)]` -/
def P3812562231462405363.Spec : Prop :=
  ∀ n, (P3812562231462405363.a n : ℤ) = A156683 (n + 1)

end A156683

/-! ## A156683.P12189105592958123121

`∩[A024619(n+1), A042965(n+1)]`
-/

namespace A156683.P12189105592958123121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156683.P12189105592958123121

namespace A156683

/-- `∩[A024619(n+1), A042965(n+1)]` -/
def P12189105592958123121.Spec : Prop :=
  ∀ n, (P12189105592958123121.a n : ℤ) = A156683 (n + 1)

end A156683

/-! ## A156683.P15561161925282726209

`∩[A024619(n+1), A363863(n+1)]`
-/

namespace A156683.P15561161925282726209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156683.P15561161925282726209

namespace A156683

/-- `∩[A024619(n+1), A363863(n+1)]` -/
def P15561161925282726209.Spec : Prop :=
  ∀ n, (P15561161925282726209.a n : ℤ) = A156683 (n + 1)

end A156683

/-! ## A156683.P6446319474879322618

`filter[A361102(n+2), A152822(#)]`
-/

namespace A156683.P6446319474879322618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A156683.P6446319474879322618

namespace A156683

/-- `filter[A361102(n+2), A152822(#)]` -/
def P6446319474879322618.Spec : Prop :=
  ∀ n, P6446319474879322618.a n = A156683 (n + 1)

end A156683

/-! ## A156683.P3187527469788108997

`∩[A024352(n+1), A361102(n+1)]`
-/

namespace A156683.P3187527469788108997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156683.P3187527469788108997

namespace A156683

/-- `∩[A024352(n+1), A361102(n+1)]` -/
def P3187527469788108997.Spec : Prop :=
  ∀ n, (P3187527469788108997.a n : ℤ) = A156683 (n + 1)

end A156683

/-! ## A156683.P15489661776129406079

`∩[A024352(n+1), A387335(n+1)]`
-/

namespace A156683.P15489661776129406079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156683.P15489661776129406079

namespace A156683

/-- `∩[A024352(n+1), A387335(n+1)]` -/
def P15489661776129406079.Spec : Prop :=
  ∀ n, (P15489661776129406079.a n : ℤ) = A156683 (n + 1)

end A156683

/-! ## A156683.P4548995750409536535

`∩[A085971(n+1), A363863(n+1)]`
-/

namespace A156683.P4548995750409536535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156683.P4548995750409536535

namespace A156683

/-- `∩[A085971(n+1), A363863(n+1)]` -/
def P4548995750409536535.Spec : Prop :=
  ∀ n, (P4548995750409536535.a n : ℤ) = A156683 (n + 1)

end A156683

/-! ## A156683.P7550073697229680100

`filter[A024352(n+1), A143731(#)]`
-/

namespace A156683.P7550073697229680100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A156683.P7550073697229680100

namespace A156683

/-- `filter[A024352(n+1), A143731(#)]` -/
def P7550073697229680100.Spec : Prop :=
  ∀ n, P7550073697229680100.a n = A156683 (n + 1)

end A156683

/-!
# A156684: The number of primitive Pythagorean triples A^2+B^2=C^2 with 0 < A < B < C and gcd(A,B)=1, and both legs less than n.

The programs for A156684, there is no canonical definition to state claims against.
-/

/-! ## A156684.P5988756947158133338

`A024360(n)+a(n-1)` with `a(0)=0`
-/

namespace A156684.P5988756947158133338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A024360 n + a (n - 1)

end

end A156684.P5988756947158133338

/-! ## A156684.P11021723600883040992

`∑[A024360(A028310(n))]`
-/

namespace A156684.P11021723600883040992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156684.P11021723600883040992

/-! ## A156684.P225534609812606061

`∑[A024360(A000007(n)+n)]`
-/

namespace A156684.P225534609812606061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156684.P225534609812606061

/-! ## A156684.P11086552319776993410

`∑[A024360(n+1)]-A024360(n+1)`
-/

namespace A156684.P11086552319776993410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024360 (n + 1)

end

end A156684.P11086552319776993410

/-! ## A156684.P8291952883664135309

`∑[A024360(A065033(2*n))]`
-/

namespace A156684.P8291952883664135309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156684.P8291952883664135309

/-! ## A156684.P14856904145748133307

`∑[A024360(A123108(2*n))]`
-/

namespace A156684.P14856904145748133307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156684.P14856904145748133307

/-! ## A156684.P5886269813745523016

`∑[A024360(A233583(n+1))]`
-/

namespace A156684.P5886269813745523016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156684.P5886269813745523016

/-! ## A156684.P16820544902115385832

`∑[A024360(A134478(∑[n]))]`
-/

namespace A156684.P16820544902115385832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A134478 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156684.P16820544902115385832

/-! ## A156684.P14572371540192781845

`∑[A024360(A003056(A000124(n)))]`
-/

namespace A156684.P14572371540192781845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156684.P14572371540192781845

/-! ## A156684.P1908800163305932582

`∑[A024360(A003056(A133263(n)))]`
-/

namespace A156684.P1908800163305932582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A003056 (A133263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156684.P1908800163305932582

/-! ## A156684.P1300734991228585420

`∑[A024360(n^A178334(n))]`
-/

namespace A156684.P1300734991228585420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156684.P1300734991228585420

/-!
# A156685: Number of primitive Pythagorean triples A^2 + B^2 = C^2 with 0 < A < B < C and gcd(A,B)=1 that have a hypotenuse C that is less than or equal to n.

The programs for A156685, the canonical program `A156685.P11810782186417547600` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156685 has offset 1).

The definition of A156685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156685.P6789418369824354713

`∑[A024362(n+1)]`
-/

namespace A156685.P6789418369824354713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156685.P6789418369824354713

namespace A156685

/-- `∑[A024362(n+1)]` -/
def P6789418369824354713.Spec : Prop :=
  ∀ n, P6789418369824354713.a n = A156685 (n + 1)

end A156685

/-! ## A156685.P4426777308560469311

`∑[A157228(A098181(n))]`
-/

namespace A156685.P4426777308560469311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (A098181 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156685.P4426777308560469311

namespace A156685

/-- `∑[A157228(A098181(n))]` -/
def P4426777308560469311.Spec : Prop :=
  ∀ n, P4426777308560469311.a n = A156685 (n + 1)

end A156685

/-! ## A156685.P12181176324322142066

`∑[A157228(A127932(n))]`
-/

namespace A156685.P12181176324322142066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (A127932 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156685.P12181176324322142066

namespace A156685

/-- `∑[A157228(A127932(n))]` -/
def P12181176324322142066.Spec : Prop :=
  ∀ n, P12181176324322142066.a n = A156685 (n + 1)

end A156685

/-! ## A156685.P5048882750615442110

`∑[A157228(A141310(n))]`
-/

namespace A156685.P5048882750615442110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156685.P5048882750615442110

namespace A156685

/-- `∑[A157228(A141310(n))]` -/
def P5048882750615442110.Spec : Prop :=
  ∀ n, P5048882750615442110.a n = A156685 (n + 1)

end A156685

/-! ## A156685.P11810782186417547600

`A004526(∑[A350872(n+1)])`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156685

/-- `A004526(∑[A350872(n+1)])` -/
def P11810782186417547600.Spec : Prop :=
  ∀ n, P11810782186417547600.a n = A156685 (n + 1)

theorem P11810782186417547600.correct : P11810782186417547600.Spec := by
  intro n
  simp only [A156685, Nat.add_sub_cancel]

end A156685

/-! ## A156685.P15858736345422116422

`∑[A056594(n)*A157228(n+1)]`
-/

namespace A156685.P15858736345422116422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A157228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156685.P15858736345422116422

namespace A156685

/-- `∑[A056594(n)*A157228(n+1)]` -/
def P15858736345422116422.Spec : Prop :=
  ∀ n, P15858736345422116422.a n = A156685 (n + 1)

end A156685

/-! ## A156685.P16674285576183069055

`∑[A091949(n)*A157228(n+1)]`
-/

namespace A156685.P16674285576183069055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091949 n * A157228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156685.P16674285576183069055

namespace A156685

/-- `∑[A091949(n)*A157228(n+1)]` -/
def P16674285576183069055.Spec : Prop :=
  ∀ n, P16674285576183069055.a n = A156685 (n + 1)

end A156685

/-! ## A156685.P16329269765514907603

`∑[A117188(n)*A157228(n+1)]`
-/

namespace A156685.P16329269765514907603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117188 n * A157228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156685.P16329269765514907603

namespace A156685

/-- `∑[A117188(n)*A157228(n+1)]` -/
def P16329269765514907603.Spec : Prop :=
  ∀ n, P16329269765514907603.a n = A156685 (n + 1)

end A156685

/-! ## A156685.P99397424771461556

`∑[A024363(n+1)-A024361(n+1)]`
-/

namespace A156685.P99397424771461556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (n + 1) - A024361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156685.P99397424771461556

namespace A156685

/-- `∑[A024363(n+1)-A024361(n+1)]` -/
def P99397424771461556.Spec : Prop :=
  ∀ n, P99397424771461556.a n = A156685 (n + 1)

end A156685

/-! ## A156685.P14982439415854838868

`∑[and(A007875(n+1), A157228(n+1))]`
-/

namespace A156685.P14982439415854838868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007875 (n + 1)) (A157228 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156685.P14982439415854838868

namespace A156685

/-- `∑[and(A007875(n+1), A157228(n+1))]` -/
def P14982439415854838868.Spec : Prop :=
  ∀ n, P14982439415854838868.a n = A156685 (n + 1)

end A156685

/-! ## A156685.P5524873944244411522

`∑[A157228(lcm(2, n)+1)]`
-/

namespace A156685.P5524873944244411522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (Nat.lcm 2 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156685.P5524873944244411522

namespace A156685

/-- `∑[A157228(lcm(2, n)+1)]` -/
def P5524873944244411522.Spec : Prop :=
  ∀ n, P5524873944244411522.a n = A156685 (n + 1)

end A156685

/-! ## A156685.P11055361291850124600

`∑[A157228(2*(n+1))]`
-/

namespace A156685.P11055361291850124600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156685.P11055361291850124600

namespace A156685

/-- `∑[A157228(2*(n+1))]` -/
def P11055361291850124600.Spec : Prop :=
  ∀ n, P11055361291850124600.a n = A156685 (n + 1)

end A156685

/-! ## A156685.P7869321863768735316

`A004525(∑[A000089(2*(n+1))]-1)`
-/

namespace A156685.P7869321863768735316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A156685.P7869321863768735316

namespace A156685

/-- `A004525(∑[A000089(2*(n+1))]-1)` -/
def P7869321863768735316.Spec : Prop :=
  ∀ n, P7869321863768735316.a n = A156685 (n + 1)

end A156685

/-! ## A156685.P5883846473848676821

`A008619(∑[A000089(2*(n+1))])-1`
-/

namespace A156685.P5883846473848676821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A156685.P5883846473848676821

namespace A156685

/-- `A008619(∑[A000089(2*(n+1))])-1` -/
def P5883846473848676821.Spec : Prop :=
  ∀ n, P5883846473848676821.a n = A156685 (n + 1)

end A156685

/-!
# A156686: The ordered set of a + b - c as (a,b,c) runs through all Pythagorean triples with a

The programs for A156686, there is no canonical definition to state claims against.
-/

/-! ## A156686.P13585968114158078567

`A008480(A043326(n+1))*A196390(n+1)`
-/

namespace A156686.P13585968114158078567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A043326 (n + 1)).toNat * A196390 (n + 1)

end

end A156686.P13585968114158078567

/-! ## A156686.P6079421312424968075

`A000005(A040984(n+1))*A196390(n+1)`
-/

namespace A156686.P6079421312424968075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A040984 (n + 1)).toNat * A196390 (n + 1)

end

end A156686.P6079421312424968075

/-! ## A156686.P17274095708641365032

`A000034(A008578(3*n+1))*A196390(n+1)`
-/

namespace A156686.P17274095708641365032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A008578 (3 * n + 1)).toNat * A196390 (n + 1)

end

end A156686.P17274095708641365032

/-! ## A156686.P13805615328643734757

`A181819(A000040(3*n+4))*A196390(n+1)`
-/

namespace A156686.P13805615328643734757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A000040 (3 * n + 4)).toNat * A196390 (n + 1)

end

end A156686.P13805615328643734757

/-! ## A156686.P18271329775730541384

`A000005(A014754(3*n+4))*A196390(n+1)`
-/

namespace A156686.P18271329775730541384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A014754 (3 * n + 4)).toNat * A196390 (n + 1)

end

end A156686.P18271329775730541384

/-! ## A156686.P9567111025891338423

`(A348406(A142057(n+1))+1)*A196390(n+1)`
-/

namespace A156686.P9567111025891338423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348406 (A142057 (n + 1)).toNat + 1) * A196390 (n + 1)

end

end A156686.P9567111025891338423

/-! ## A156686.P11429073677887661908

`A005408(A196390(n+1))-A348406(A142057(n+1))`
-/

namespace A156686.P11429073677887661908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A196390 (n + 1)).toNat - A348406 (A142057 (n + 1)).toNat

end

end A156686.P11429073677887661908

/-! ## A156686.P1356382065917450199

`2*and(A055580(n), A196390(n+1))`
-/

namespace A156686.P1356382065917450199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (A055580 n) (A196390 (n + 1))

end

end A156686.P1356382065917450199

/-! ## A156686.P5532771032388017117

`(A008975(A000096(n))+1)*A196390(n+1)`
-/

namespace A156686.P5532771032388017117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008975 (A000096 n).toNat + 1) * A196390 (n + 1)

end

end A156686.P5532771032388017117

/-! ## A156686.P10958886347211886139

`A005408(A196390(n+1))-A008975(A000096(n))`
-/

namespace A156686.P10958886347211886139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A196390 (n + 1)).toNat - A008975 (A000096 n).toNat

end

end A156686.P10958886347211886139

/-! ## A156686.P17870354905579902146

`(A047999(A266259(n))+1)*A196390(n+1)`
-/

namespace A156686.P17870354905579902146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047999 (A266259 n).toNat + 1) * A196390 (n + 1)

end

end A156686.P17870354905579902146

/-! ## A156686.P13573352864506687556

`A005408(A196390(n+1))-A047999(A266259(n))`
-/

namespace A156686.P13573352864506687556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A196390 (n + 1)).toNat - A047999 (A266259 n).toNat

end

end A156686.P13573352864506687556

/-! ## A156686.P3434476864247611026

`A005408(A196390(n+1))-A007318(∑[n])`
-/

namespace A156686.P3434476864247611026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A196390 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156686.P3434476864247611026

/-!
# A156687: Perimeters of Pythagorean triangles that can be constructed in exactly 5 different ways.

The programs for A156687, there is no canonical definition to state claims against.
-/

/-! ## A156687.P6942829296691067341

`A103517(eq[5, A270417(n+1)])`
-/

namespace A156687.P6942829296691067341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156687.P6942829296691067341

/-! ## A156687.P14066401331398045362

`eq[5, A024155(A028310(n))]`
-/

namespace A156687.P14066401331398045362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A156687.P14066401331398045362

/-! ## A156687.P17842517072266306667

`A014681(eq[5, A024155(n+1)])`
-/

namespace A156687.P17842517072266306667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156687.P17842517072266306667

/-! ## A156687.P16034381770077822519

`A065475(eq[5, A024155(n+1)])`
-/

namespace A156687.P16034381770077822519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156687.P16034381770077822519

/-!
# A156688: The total number of distinct Pythagorean triples with an area numerically equal to n times their perimeters.

The programs for A156688, the canonical program `A156688.P15753806741140365688` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156688 has offset 1).

The definition of A156688 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156688.P581005932211949915

`A078644(2*(n+1))`
-/

namespace A156688.P581005932211949915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (2 * (n + 1))

end

end A156688.P581005932211949915

namespace A156688

/-- `A078644(2*(n+1))` -/
def P581005932211949915.Spec : Prop :=
  ∀ n, P581005932211949915.a n = A156688 (n + 1)

end A156688

/-! ## A156688.P15753806741140365688

`A000005(8*(n+1)²)/2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A156688

/-- `A000005(8*(n+1)²)/2` -/
def P15753806741140365688.Spec : Prop :=
  ∀ n, P15753806741140365688.a n = (A156688 (n + 1) : ℚ)

end A156688

/-! ## A156688.P7951219158016480922

`A085058(n)*A275367(n+1)`
-/

namespace A156688.P7951219158016480922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n * A275367 (n + 1)

end

end A156688.P7951219158016480922

namespace A156688

/-- `A085058(n)*A275367(n+1)` -/
def P7951219158016480922.Spec : Prop :=
  ∀ n, P7951219158016480922.a n = A156688 (n + 1)

end A156688

/-! ## A156688.P5625340088699893447

`A275367(n+1)+A078644(n+1)`
-/

namespace A156688.P5625340088699893447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275367 (n + 1) + A078644 (n + 1)

end

end A156688.P5625340088699893447

namespace A156688

/-- `A275367(n+1)+A078644(n+1)` -/
def P5625340088699893447.Spec : Prop :=
  ∀ n, P5625340088699893447.a n = A156688 (n + 1)

end A156688

/-! ## A156688.P17798919743472340482

`(A001511(n+1)+1)*A275367(n+1)`
-/

namespace A156688.P17798919743472340482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001511 (n + 1) + 1) * A275367 (n + 1)

end

end A156688.P17798919743472340482

namespace A156688

/-- `(A001511(n+1)+1)*A275367(n+1)` -/
def P17798919743472340482.Spec : Prop :=
  ∀ n, P17798919743472340482.a n = A156688 (n + 1)

end A156688

/-! ## A156688.P5701579288498039877

`(A007814(n+1)+2)*A275367(n+1)`
-/

namespace A156688.P5701579288498039877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 2) * A275367 (n + 1)

end

end A156688.P5701579288498039877

namespace A156688

/-- `(A007814(n+1)+2)*A275367(n+1)` -/
def P5701579288498039877.Spec : Prop :=
  ∀ n, P5701579288498039877.a n = A156688 (n + 1)

end A156688

/-! ## A156688.P3803174564677448807

`A275367(n+1)+A361689(n+1)/2`
-/

namespace A156688.P3803174564677448807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275367 (n + 1) : ℚ) + (A361689 (n + 1) : ℚ) / 2

end

end A156688.P3803174564677448807

namespace A156688

/-- `A275367(n+1)+A361689(n+1)/2` -/
def P3803174564677448807.Spec : Prop :=
  ∀ n, P3803174564677448807.a n = (A156688 (n + 1) : ℚ)

end A156688

/-! ## A156688.P17453605967388360536

`∑{d}[n+1, A099777(#)*A323239((n+1)/#)]`
-/

namespace A156688.P17453605967388360536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099777 d * A323239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A156688.P17453605967388360536

namespace A156688

/-- `∑{d}[n+1, A099777(#)*A323239((n+1)/#)]` -/
def P17453605967388360536.Spec : Prop :=
  ∀ n, P17453605967388360536.a n = A156688 (n + 1)

end A156688

/-! ## A156688.P4532809725645221155

`A078644(A000265(n+1))+A078644(n+1)`
-/

namespace A156688.P4532809725645221155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (A000265 (n + 1)).toNat + A078644 (n + 1)

end

end A156688.P4532809725645221155

namespace A156688

/-- `A078644(A000265(n+1))+A078644(n+1)` -/
def P4532809725645221155.Spec : Prop :=
  ∀ n, P4532809725645221155.a n = A156688 (n + 1)

end A156688

/-! ## A156688.P8836310522903134521

`A078644(n+1)+A361689(n+1)-A048691(n+1)`
-/

namespace A156688.P8836310522903134521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (n + 1) + (A361689 (n + 1) - A048691 (n + 1))

end

end A156688.P8836310522903134521

namespace A156688

/-- `A078644(n+1)+A361689(n+1)-A048691(n+1)` -/
def P8836310522903134521.Spec : Prop :=
  ∀ n, P8836310522903134521.a n = A156688 (n + 1)

end A156688

/-! ## A156688.P847640968186454014

`A078644(n+1)+A078644(n+1)/A001511(n+1)`
-/

namespace A156688.P847640968186454014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078644 (n + 1) : ℚ) + (A078644 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A156688.P847640968186454014

namespace A156688

/-- `A078644(n+1)+A078644(n+1)/A001511(n+1)` -/
def P847640968186454014.Spec : Prop :=
  ∀ n, P847640968186454014.a n = (A156688 (n + 1) : ℚ)

end A156688

/-! ## A156688.P11978299031625708375

`A361689(2*(n+1))/2`
-/

namespace A156688.P11978299031625708375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361689 (2 * (n + 1)) : ℚ) / 2

end

end A156688.P11978299031625708375

namespace A156688

/-- `A361689(2*(n+1))/2` -/
def P11978299031625708375.Spec : Prop :=
  ∀ n, P11978299031625708375.a n = (A156688 (n + 1) : ℚ)

end A156688

/-! ## A156688.P13252299650055377837

`A001281(A361689(2*(n+1)))`
-/

namespace A156688.P13252299650055377837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A361689 (2 * (n + 1))).toNat

end

end A156688.P13252299650055377837

namespace A156688

/-- `A001281(A361689(2*(n+1)))` -/
def P13252299650055377837.Spec : Prop :=
  ∀ n, P13252299650055377837.a n = A156688 (n + 1)

end A156688

/-! ## A156688.P14817100770352089943

`A055081(2*(n+1))-A270417(2*(n+1))`
-/

namespace A156688.P14817100770352089943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055081 (2 * (n + 1)) - A270417 (2 * (n + 1))

end

end A156688.P14817100770352089943

namespace A156688

/-- `A055081(2*(n+1))-A270417(2*(n+1))` -/
def P14817100770352089943.Spec : Prop :=
  ∀ n, P14817100770352089943.a n = A156688 (n + 1)

end A156688

/-! ## A156688.P5906617525430914241

`A356574(2*(n+1))/A069735(2*(n+1))`
-/

namespace A156688.P5906617525430914241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356574 (2 * (n + 1)) : ℚ) / (A069735 (2 * (n + 1)) : ℚ)

end

end A156688.P5906617525430914241

namespace A156688

/-- `A356574(2*(n+1))/A069735(2*(n+1))` -/
def P5906617525430914241.Spec : Prop :=
  ∀ n, P5906617525430914241.a n = (A156688 (n + 1) : ℚ)

end A156688

/-! ## A156688.P13604970101558712179

`∏{e}[(n+1)*8*(n+1), #+1]/2`
-/

namespace A156688.P13604970101558712179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (8 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2

end

end A156688.P13604970101558712179

namespace A156688

/-- `∏{e}[(n+1)*8*(n+1), #+1]/2` -/
def P13604970101558712179.Spec : Prop :=
  ∀ n, P13604970101558712179.a n = (A156688 (n + 1) : ℚ)

end A156688

/-! ## A156688.P13353059229408853718

`A099777((n+1)*A000265(n+1))`
-/

namespace A156688.P13353059229408853718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 ((n + 1 : ℤ) * A000265 (n + 1)).toNat

end

end A156688.P13353059229408853718

namespace A156688

/-- `A099777((n+1)*A000265(n+1))` -/
def P13353059229408853718.Spec : Prop :=
  ∀ n, P13353059229408853718.a n = A156688 (n + 1)

end A156688

/-! ## A156688.P8520944412662280385

`A000005(2*(n+1)*A000265(n+1))`
-/

namespace A156688.P8520944412662280385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * ((n + 1 : ℤ) * A000265 (n + 1))).toNat

end

end A156688.P8520944412662280385

namespace A156688

/-- `A000005(2*(n+1)*A000265(n+1))` -/
def P8520944412662280385.Spec : Prop :=
  ∀ n, P8520944412662280385.a n = A156688 (n + 1)

end A156688

/-! ## A156688.P7875880961415831493

`A000005(4*(n+1)*A166466(n+1)/6)`
-/

namespace A156688.P7875880961415831493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((4 * (n + 1) : ℚ) * ((A166466 (n + 1) : ℚ) / 6))).toNat

end

end A156688.P7875880961415831493

namespace A156688

/-- `A000005(4*(n+1)*A166466(n+1)/6)` -/
def P7875880961415831493.Spec : Prop :=
  ∀ n, P7875880961415831493.a n = A156688 (n + 1)

end A156688

/-! ## A156688.P884978062664580036

`A000005(A005843(n+1)*A000265(n+1))`
-/

namespace A156688.P884978062664580036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005843 (n + 1) * A000265 (n + 1)).toNat

end

end A156688.P884978062664580036

namespace A156688

/-- `A000005(A005843(n+1)*A000265(n+1))` -/
def P884978062664580036.Spec : Prop :=
  ∀ n, P884978062664580036.a n = A156688 (n + 1)

end A156688

/-!
# A156689: Inradii of primitive Pythagorean triples a^2+b^2=c^2, 0

The programs for A156689, there is no canonical definition to state claims against.
-/

/-! ## A156689.P8120385010939392082

`A267116(2*A296993(n+1))`
-/

namespace A156689.P8120385010939392082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (2 * A296993 (n + 1)).toNat

end

end A156689.P8120385010939392082

/-! ## A156689.P8355322501629723556

`A004525(A014132(n+1))-A083892(A157149(n))`
-/

namespace A156689.P8355322501629723556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A014132 (n + 1)).toNat - A083892 (A157149 n).toNat

end

end A156689.P8355322501629723556

/-!
# A156690: Triangle T(n, k, m) = t(n,m)/( t(k,m) * t(n-k,m) ) with T(n, 0, m) = T(n, n, m) = 1, where t(n, m) = Product_{j=1..n} Product_{i=1..j-1} ( 1 - (m+1)*(i+1) ) and m = 1, read by rows.

The programs for A156690, there is no canonical definition to state claims against.
-/

/-! ## A156690.P6554994019123276643

`A188444(floor(cosh(A059922(n))))`
-/

namespace A156690.P6554994019123276643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188444 ⌊Real.cosh (A059922 n : ℝ)⌋.toNat

end

end A156690.P6554994019123276643

/-! ## A156690.P3605585270923307478

`A188444(floor(sinh(A059922(n))))`
-/

namespace A156690.P3605585270923307478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188444 ⌊Real.sinh (A059922 n : ℝ)⌋.toNat

end

end A156690.P3605585270923307478

/-! ## A156690.P8311580914614920946

`∏{p}[A095987(A081580(n)), -#]`
-/

namespace A156690.P8311580914614920946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095987 (A081580 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))

end

end A156690.P8311580914614920946

/-! ## A156690.P10584570454103454242

`∏{p}[A339886(A173887(n)), -#]`
-/

namespace A156690.P10584570454103454242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339886 (A173887 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))

end

end A156690.P10584570454103454242

/-! ## A156690.P18410644450622690047

`∏{p}[A131801(A009963(n)-1), -#]`
-/

namespace A156690.P18410644450622690047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131801 (A009963 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))

end

end A156690.P18410644450622690047

/-!
# A156691: Triangle T(n, k, m) = t(n,m)/( t(k,m) * t(n-k,m) ) with T(n, 0, m) = T(n, n, m) = 1, where t(n, m) = Product_{j=1..n} Product_{i=1..j-1} ( 1 - (m+1)*(i+1) ) and m = 2, read by rows.

The programs for A156691, there is no canonical definition to state claims against.
-/

/-! ## A156691.P17466879775394508704

`A002129(A276777(n)^A276777(n))`
-/

namespace A156691.P17466879775394508704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (SequenceMachineLib.roundAway ((A276777 n : ℚ) ^ (A276777 n : ℤ))).toNat

end

end A156691.P17466879775394508704

/-! ## A156691.P4753150244025990273

`A305006(A276777(n)^A276777(n))`
-/

namespace A156691.P4753150244025990273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305006 (SequenceMachineLib.roundAway ((A276777 n : ℚ) ^ (A276777 n : ℤ))).toNat

end

end A156691.P4753150244025990273

/-! ## A156691.P5968578939307058543

`A078905(A196641(n+1)%A187700(n+1))`
-/

namespace A156691.P5968578939307058543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078905 (Int.tmod (A196641 (n + 1)) (A187700 (n + 1))).toNat

end

end A156691.P5968578939307058543

/-! ## A156691.P4225758130971951343

`A078905(A196641(n+1))%A266929(n+1)`
-/

namespace A156691.P4225758130971951343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078905 (A196641 (n + 1)).toNat) (A266929 (n + 1))

end

end A156691.P4225758130971951343

/-! ## A156691.P401150512028407955

`A219093(A340130(n+2))-A004772(A176200(n))`
-/

namespace A156691.P401150512028407955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219093 (A340130 (n + 2)).toNat - A004772 (A176200 n).toNat

end

end A156691.P401150512028407955

/-!
# A156692: Triangle T(n, k, m) = t(n,m)/( t(k,m) * t(n-k,m) ) with T(n, 0, m) = T(n, n, m) = 1, where t(n, m) = Product_{j=1..n} Product_{i=1..j-1} ( 1 - (m+1)*(i+1) ) and m = 3, read by rows.

The programs for A156692, there is no canonical definition to state claims against.
-/

/-! ## A156692.P17649691418182607744

`or(A015121(n), A034328(A146620(n+1)))`
-/

namespace A156692.P17649691418182607744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A015121 n) (A034328 (A146620 (n + 1)).toNat)

end

end A156692.P17649691418182607744

/-!
# A156696: Triangle T(n, k, m) = t(n,m)/( t(k,m) * t(n-k,m) ) with T(n, 0, m) = T(n, n, m) = 1, where t(n, m) = Product_{j=1..n} Product_{i=1..j-1} ( 1 - (m+1)*(2*i-1) ) and m = 1, read by rows.

The programs for A156696, there is no canonical definition to state claims against.
-/

/-! ## A156696.P10906085087267913084

`A156727(n)/A118180(n)`
-/

namespace A156696.P10906085087267913084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156727 n : ℚ) / (A118180 n : ℚ)

end

end A156696.P10906085087267913084

/-! ## A156696.P15039797034122670010

`A134658(A116469(n+1))`
-/

namespace A156696.P15039797034122670010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134658 (A116469 (n + 1)).toNat

end

end A156696.P15039797034122670010

/-! ## A156696.P5774483011667325468

`A070990(A014473(n)^6)`
-/

namespace A156696.P5774483011667325468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (A014473 n ^ 6).toNat

end

end A156696.P5774483011667325468

/-! ## A156696.P16390984178660211003

`A070990(A343046(n)^6)`
-/

namespace A156696.P16390984178660211003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (A343046 n ^ 6).toNat

end

end A156696.P16390984178660211003

/-! ## A156696.P5474566685229890475

`A156727(n)/A000005(A156690(n)²)`
-/

namespace A156696.P5474566685229890475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156727 n : ℚ) / (A000005 (A156690 n ^ 2).toNat : ℚ)

end

end A156696.P5474566685229890475

/-!
# A156697: Triangle T(n, k, m) = t(n,m)/( t(k,m) * t(n-k,m) ) with T(n, 0, m) = T(n, n, m) = 1, where t(n, m) = Product_{j=1..n} Product_{i=1..j-1} ( 1 - (m+1)*(2*i-1) ) and m = 2, read by rows.

The programs for A156697, there is no canonical definition to state claims against.
-/

/-! ## A156697.P14979938941325398581

`A360484(A167040(n))/A167040(n)`
-/

namespace A156697.P14979938941325398581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360484 (A167040 n).toNat : ℚ) / (A167040 n : ℚ)

end

end A156697.P14979938941325398581

/-! ## A156697.P17170824264305865140

`A191898(n+1)*A299925(A008292(n+1))`
-/

namespace A156697.P17170824264305865140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191898 (n + 1) * A299925 (A008292 (n + 1)).toNat

end

end A156697.P17170824264305865140

/-!
# A156698: Triangle T(n, k, m) = t(n,m)/( t(k,m) * t(n-k,m) ) with T(n, 0, m) = T(n, n, m) = 1, where t(n, m) = Product_{j=1..n} Product_{i=1..j-1} ( 1 - (m+1)*(2*i-1) ) and m = 3, read by rows.

The programs for A156698, there is no canonical definition to state claims against.
-/

/-! ## A156698.P1760951530614328325

`∏{p}[2-A174919(A004892(n+1)), -#]`
-/

namespace A156698.P1760951530614328325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A174919 (A004892 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))

end

end A156698.P1760951530614328325

/-! ## A156698.P7106191604150120306

`∏{p}[2-A174919(A004914(n+1)), -#]`
-/

namespace A156698.P7106191604150120306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A174919 (A004914 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))

end

end A156698.P7106191604150120306

/-! ## A156698.P7648120786343963277

`∏{p}[2-A093466(A182779(n+1)), -#]`
-/

namespace A156698.P7648120786343963277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A093466 (A182779 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))

end

end A156698.P7648120786343963277

/-! ## A156698.P5492586904746606501

`A154853(gcd(A211130(n+3), A362034(n)))`
-/

namespace A156698.P5492586904746606501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154853 (Int.gcd (A211130 (n + 3)) (A362034 n))

end

end A156698.P5492586904746606501

/-! ## A156698.P15919598416075464158

`∏{p}[A000005(A073688(n))-A174919(n), -#]`
-/

namespace A156698.P15919598416075464158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A073688 n).toNat - A174919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))

end

end A156698.P15919598416075464158

