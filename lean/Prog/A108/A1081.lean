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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A108100: a(n) = (2*n-1)^2 + (2*n+1)^2.

The programs for A108100, the canonical program `A108100.P10155419690726348729` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108100 has offset 0).

The definition of A108100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108100.P10155419690726348729

`8*n²+2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108100

/-- `8*n²+2` -/
def P10155419690726348729.Spec : Prop :=
  ∀ n, (P10155419690726348729.a n : ℤ) = A108100 n

theorem P10155419690726348729.correct : P10155419690726348729.Spec := by
  intro n
  simp only [A108100]

end A108100

/-! ## A108100.P10749853006697504528

`2*A053755(n)`
-/

namespace A108100.P10749853006697504528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053755 n

end

end A108100.P10749853006697504528

namespace A108100

/-- `2*A053755(n)` -/
def P10749853006697504528.Spec : Prop :=
  ∀ n, P10749853006697504528.a n = A108100 n

end A108100

/-! ## A108100.P12849553200034263037

`2*(A000466(n)+2)`
-/

namespace A108100.P12849553200034263037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000466 n + 2)

end

end A108100.P12849553200034263037

namespace A108100

/-- `2*(A000466(n)+2)` -/
def P12849553200034263037.Spec : Prop :=
  ∀ n, P12849553200034263037.a n = A108100 n

end A108100

/-! ## A108100.P5973389671419221944

`or(2, 8*n²)`
-/

namespace A108100.P5973389671419221944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (8 * n ^ 2)

end

end A108100.P5973389671419221944

namespace A108100

/-- `or(2, 8*n²)` -/
def P5973389671419221944.Spec : Prop :=
  ∀ n, (P5973389671419221944.a n : ℤ) = A108100 n

end A108100

/-! ## A108100.P18370460283678691487

`xor(2, 8*n²)`
-/

namespace A108100.P18370460283678691487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (8 * n ^ 2)

end

end A108100.P18370460283678691487

namespace A108100

/-- `xor(2, 8*n²)` -/
def P18370460283678691487.Spec : Prop :=
  ∀ n, (P18370460283678691487.a n : ℤ) = A108100 n

end A108100

/-! ## A108100.P14979495877969655727

`record[lcm(2, n²+1)]`
-/

namespace A108100.P14979495877969655727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108100.P14979495877969655727

namespace A108100

/-- `record[lcm(2, n²+1)]` -/
def P14979495877969655727.Spec : Prop :=
  ∀ n, (P14979495877969655727.a n : ℤ) = A108100 n

end A108100

/-! ## A108100.P5147655126920315000

`2/sin(acot(2*n))²`
-/

namespace A108100.P5147655126920315000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.sin (SequenceMachineLib.acot (2 * n : ℝ)) ^ 2

end

end A108100.P5147655126920315000

namespace A108100

/-- `2/sin(acot(2*n))²` -/
def P5147655126920315000.Spec : Prop :=
  ∀ n, P5147655126920315000.a n = (A108100 n : ℝ)

end A108100

/-! ## A108100.P14467446803834046968

`∑[a(n-1)+16]` with `a(0)=2, a(1)=8`
-/

namespace A108100.P14467446803834046968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108100.P14467446803834046968

namespace A108100

/-- `∑[a(n-1)+16]` -/
def P14467446803834046968.Spec : Prop :=
  ∀ n, (P14467446803834046968.a n : ℤ) = A108100 n

end A108100

/-! ## A108100.P12526337658931896120

`2*(Δ[C(2*n, 3)]+1)`
-/

namespace A108100.P12526337658931896120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1)

end

end A108100.P12526337658931896120

namespace A108100

/-- `2*(Δ[C(2*n, 3)]+1)` -/
def P12526337658931896120.Spec : Prop :=
  ∀ n, P12526337658931896120.a n = A108100 n

end A108100

/-! ## A108100.P4051046282070844891

`record[xor(1, n)²+(1-n)²]`
-/

namespace A108100.P4051046282070844891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n ^ 2 : ℤ) + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108100.P4051046282070844891

namespace A108100

/-- `record[xor(1, n)²+(1-n)²]` -/
def P4051046282070844891.Spec : Prop :=
  ∀ n, P4051046282070844891.a n = A108100 n

end A108100

/-! ## A108100.P10999910341806961536

`2*(5-∑[a(n-1)-8])` with `a(0)=4`
-/

namespace A108100.P10999910341806961536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108100.P10999910341806961536

namespace A108100

/-- `2*(5-∑[a(n-1)-8])` -/
def P10999910341806961536.Spec : Prop :=
  ∀ n, P10999910341806961536.a n = A108100 n

end A108100

/-! ## A108100.P13307742129341238801

`2*(2*n*lcm(n, 2*n)+1)`
-/

namespace A108100.P13307742129341238801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n * Nat.lcm n (2 * n) + 1)

end

end A108100.P13307742129341238801

namespace A108100

/-- `2*(2*n*lcm(n, 2*n)+1)` -/
def P13307742129341238801.Spec : Prop :=
  ∀ n, (P13307742129341238801.a n : ℤ) = A108100 n

theorem P13307742129341238801.correct : P13307742129341238801.Spec := by
  intro n
  simp only [A108100, Nat.add_sub_cancel, A108100.P13307742129341238801.a, A108100.P10155419690726348729.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A108100

/-! ## A108100.P3215780877915757195

`floor(a(n-1)+4*(4*n-2))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A108100.P3215780877915757195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 4 * ((4 * n : ℤ) - 2)

end

end A108100.P3215780877915757195

namespace A108100

/-- `floor(a(n-1)+4*(4*n-2))` -/
def P3215780877915757195.Spec : Prop :=
  ∀ n, P3215780877915757195.a n = A108100 n

theorem P3215780877915757195.correct : P3215780877915757195.Spec := by
  intro n
  induction n with
  | zero => simp [A108100, A108100.P3215780877915757195.a, A108100.P10155419690726348729.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A108100, Nat.add_sub_cancel, A108100.P3215780877915757195.a, A108100.P10155419690726348729.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A108100

/-! ## A108100.P1735208375585206608

`2*(2*C(2*n, 2)+2*n+1)`
-/

namespace A108100.P1735208375585206608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * Nat.choose (2 * n) 2 + (2 * n + 1))

end

end A108100.P1735208375585206608

namespace A108100

/-- `2*(2*C(2*n, 2)+2*n+1)` -/
def P1735208375585206608.Spec : Prop :=
  ∀ n, (P1735208375585206608.a n : ℤ) = A108100 n

end A108100

/-! ## A108100.P13565750007247743227

`record[(2*n+1)*xor(1, n-2)+n+3]`
-/

namespace A108100.P13565750007247743227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * Int.xor 1 ((n : ℤ) - 2) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108100.P13565750007247743227

namespace A108100

/-- `record[(2*n+1)*xor(1, n-2)+n+3]` -/
def P13565750007247743227.Spec : Prop :=
  ∀ n, P13565750007247743227.a n = A108100 n

end A108100

/-! ## A108100.P16469817955442251068

`2*(2*n*and(2*n+1, 2*n)+1)`
-/

namespace A108100.P16469817955442251068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n * Nat.land (2 * n + 1) (2 * n) + 1)

end

end A108100.P16469817955442251068

namespace A108100

/-- `2*(2*n*and(2*n+1, 2*n)+1)` -/
def P16469817955442251068.Spec : Prop :=
  ∀ n, (P16469817955442251068.a n : ℤ) = A108100 n

end A108100

/-! ## A108100.P8600366702136871265

`lcm(2, A008527(n))`
-/

namespace A108100.P8600366702136871265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A008527 n)

end

end A108100.P8600366702136871265

namespace A108100

/-- `lcm(2, A008527(n))` -/
def P8600366702136871265.Spec : Prop :=
  ∀ n, (P8600366702136871265.a n : ℤ) = A108100 n

end A108100

/-! ## A108100.P7651587742775499296

`2*(A016742(n)+1)`
-/

namespace A108100.P7651587742775499296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016742 n + 1)

end

end A108100.P7651587742775499296

namespace A108100

/-- `2*(A016742(n)+1)` -/
def P7651587742775499296.Spec : Prop :=
  ∀ n, P7651587742775499296.a n = A108100 n

end A108100

/-!
# A108101: Numbers k such that the string 1131k is the decimal expansion of a prime number.

The programs for A108101, there is no canonical definition to state claims against.
-/

/-! ## A108101.P14047891915467371085

`record[A091088(A289509(3*n+5)*A333254(n+1))]`
-/

namespace A108101.P14047891915467371085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (A289509 (3 * n + 5) * A333254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108101.P14047891915467371085

/-!
# A108103: Fixed point of the square of the morphism: 1->3, 2->1, 3->121, starting with 1.

The programs for A108103, the canonical program `A108103.P10097195682817123467` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108103 has offset 1).

The definition of A108103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108103.P10097195682817123467

`or(gcd(2, n+1), A096270(floor(n/2)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108103

/-- `or(gcd(2, n+1), A096270(floor(n/2)))` -/
def P10097195682817123467.Spec : Prop :=
  ∀ n, P10097195682817123467.a n = A108103 (n + 1)

theorem P10097195682817123467.correct : P10097195682817123467.Spec := by
  intro n
  simp only [A108103, Nat.add_sub_cancel]

end A108103

/-! ## A108103.P18219929028397349277

`A026355(Δ[A026351(floor(n/2))])`
-/

namespace A108103.P18219929028397349277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 (f1 (n + 1) - f1 n).toNat

end

end A108103.P18219929028397349277

namespace A108103

/-- `A026355(Δ[A026351(floor(n/2))])` -/
def P18219929028397349277.Spec : Prop :=
  ∀ n, P18219929028397349277.a n = A108103 (n + 1)

end A108103

/-! ## A108103.P11182768154487982252

`A097332(Δ[A026351(floor(n/2))])`
-/

namespace A108103.P11182768154487982252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 (f1 (n + 1) - f1 n).toNat

end

end A108103.P11182768154487982252

namespace A108103

/-- `A097332(Δ[A026351(floor(n/2))])` -/
def P11182768154487982252.Spec : Prop :=
  ∀ n, P11182768154487982252.a n = A108103 (n + 1)

end A108103

/-! ## A108103.P16531293374779099670

`C(A282162(floor(n/2)), A267860(n))`
-/

namespace A108103.P16531293374779099670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A282162 ⌊(n : ℚ) / 2⌋.toNat).toNat (A267860 n).toNat

end

end A108103.P16531293374779099670

namespace A108103

/-- `C(A282162(floor(n/2)), A267860(n))` -/
def P16531293374779099670.Spec : Prop :=
  ∀ n, (P16531293374779099670.a n : ℤ) = A108103 (n + 1)

end A108103

/-! ## A108103.P12426608698349321935

`or(A000034(n), A096270(A188010(n+1)))`
-/

namespace A108103.P12426608698349321935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000034 n) (A096270 (A188010 (n + 1)).toNat)

end

end A108103.P12426608698349321935

namespace A108103

/-- `or(A000034(n), A096270(A188010(n+1)))` -/
def P12426608698349321935.Spec : Prop :=
  ∀ n, P12426608698349321935.a n = A108103 (n + 1)

end A108103

/-! ## A108103.P10235292982507543085

`Δ[comp[A003623(n+1)-(2*n+1)]]`
-/

namespace A108103.P10235292982507543085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) - (2 * n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A108103.P10235292982507543085

namespace A108103

/-- `Δ[comp[A003623(n+1)-(2*n+1)]]` -/
def P10235292982507543085.Spec : Prop :=
  ∀ n, P10235292982507543085.a n = A108103 (n + 1)

end A108103

/-! ## A108103.P11695814561034520615

`A020992(Δ[A188468(n+1)])`
-/

namespace A108103.P11695814561034520615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (f1 (n + 1) - f1 n).toNat

end

end A108103.P11695814561034520615

namespace A108103

/-- `A020992(Δ[A188468(n+1)])` -/
def P11695814561034520615.Spec : Prop :=
  ∀ n, P11695814561034520615.a n = A108103 (n + 1)

end A108103

/-! ## A108103.P9904682737793632177

`A028920(Δ[A188468(n+1)])`
-/

namespace A108103.P9904682737793632177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (f1 (n + 1) - f1 n).toNat

end

end A108103.P9904682737793632177

namespace A108103

/-- `A028920(Δ[A188468(n+1)])` -/
def P9904682737793632177.Spec : Prop :=
  ∀ n, P9904682737793632177.a n = A108103 (n + 1)

end A108103

/-! ## A108103.P5270614392650294884

`A000035(n)+Δ[A188010(n+1)]`
-/

namespace A108103.P5270614392650294884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (f1 (n + 1) - f1 n)

end

end A108103.P5270614392650294884

namespace A108103

/-- `A000035(n)+Δ[A188010(n+1)]` -/
def P5270614392650294884.Spec : Prop :=
  ∀ n, P5270614392650294884.a n = A108103 (n + 1)

end A108103

/-! ## A108103.P16981023727399010182

`Δ[A188010(n+1)+A004526(n)]`
-/

namespace A108103.P16981023727399010182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (n + 1) + A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108103.P16981023727399010182

namespace A108103

/-- `Δ[A188010(n+1)+A004526(n)]` -/
def P16981023727399010182.Spec : Prop :=
  ∀ n, P16981023727399010182.a n = A108103 (n + 1)

end A108103

/-! ## A108103.P12220759621356843200

`Δ[A188010(n+1)+A008619(n)]`
-/

namespace A108103.P12220759621356843200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (n + 1) + A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108103.P12220759621356843200

namespace A108103

/-- `Δ[A188010(n+1)+A008619(n)]` -/
def P12220759621356843200.Spec : Prop :=
  ∀ n, P12220759621356843200.a n = A108103 (n + 1)

end A108103

/-! ## A108103.P15593413052134153461

`A284394(A032766(n)+1)+1`
-/

namespace A108103.P15593413052134153461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284394 (A032766 n + 1).toNat + 1

end

end A108103.P15593413052134153461

namespace A108103

/-- `A284394(A032766(n)+1)+1` -/
def P15593413052134153461.Spec : Prop :=
  ∀ n, P15593413052134153461.a n = A108103 (n + 1)

end A108103

/-! ## A108103.P11423487383998003637

`A284394(A294732(n+2))+1`
-/

namespace A108103.P11423487383998003637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284394 (A294732 (n + 2)).toNat + 1

end

end A108103.P11423487383998003637

namespace A108103

/-- `A284394(A294732(n+2))+1` -/
def P11423487383998003637.Spec : Prop :=
  ∀ n, P11423487383998003637.a n = A108103 (n + 1)

end A108103

/-! ## A108103.P814646638194992967

`Δ[lt[A284749(n+1), 2]]`
-/

namespace A108103.P814646638194992967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A108103.P814646638194992967

namespace A108103

/-- `Δ[lt[A284749(n+1), 2]]` -/
def P814646638194992967.Spec : Prop :=
  ∀ n, P814646638194992967.a n = A108103 (n + 1)

end A108103

/-! ## A108103.P14970319168827263123

`or(A000034(n), A096270(A002265(2*n)))`
-/

namespace A108103.P14970319168827263123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000034 n) (A096270 (A002265 (2 * n)).toNat)

end

end A108103.P14970319168827263123

namespace A108103

/-- `or(A000034(n), A096270(A002265(2*n)))` -/
def P14970319168827263123.Spec : Prop :=
  ∀ n, P14970319168827263123.a n = A108103 (n + 1)

end A108103

/-! ## A108103.P13971377597049087070

`A120614(A054084(n+1))+1`
-/

namespace A108103.P13971377597049087070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120614 (A054084 (n + 1)).toNat + 1

end

end A108103.P13971377597049087070

namespace A108103

/-- `A120614(A054084(n+1))+1` -/
def P13971377597049087070.Spec : Prop :=
  ∀ n, P13971377597049087070.a n = A108103 (n + 1)

end A108103

/-!
# A108104: Sequence A000930 with terms repeated.

The programs for A108104, the canonical program `A108104.P7537875615996482833` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108104 has offset 0).

The definition of A108104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108104.P7537875615996482833

`a(n-2)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108104

/-- `a(n-2)+a(n-6)` -/
def P7537875615996482833.Spec : Prop :=
  ∀ n, (P7537875615996482833.a n : ℤ) = A108104 n

theorem P7537875615996482833.correct : P7537875615996482833.Spec := by
  intro n
  simp only [A108104]

end A108104

/-! ## A108104.P10862272561432635513

`A000930(floor(n/2))`
-/

namespace A108104.P10862272561432635513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 ⌊(n : ℚ) / 2⌋.toNat

end

end A108104.P10862272561432635513

namespace A108104

/-- `A000930(floor(n/2))` -/
def P10862272561432635513.Spec : Prop :=
  ∀ n, P10862272561432635513.a n = A108104 n

end A108104

/-! ## A108104.P3569691303124117521

`abs(A199804(floor(n/2)))`
-/

namespace A108104.P3569691303124117521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199804 ⌊(n : ℚ) / 2⌋.toNat|

end

end A108104.P3569691303124117521

namespace A108104

/-- `abs(A199804(floor(n/2)))` -/
def P3569691303124117521.Spec : Prop :=
  ∀ n, P3569691303124117521.a n = A108104 n

end A108104

/-! ## A108104.P15901675532743756136

`A078012(ceil((n+1)/2)+2)`
-/

namespace A108104.P15901675532743756136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (⌈(n + 1 : ℚ) / 2⌉ + 2).toNat

end

end A108104.P15901675532743756136

namespace A108104

/-- `A078012(ceil((n+1)/2)+2)` -/
def P15901675532743756136.Spec : Prop :=
  ∀ n, P15901675532743756136.a n = A108104 n

end A108104

/-! ## A108104.P16995063363795053075

`A135851(∑[(n+1)%2]+4)`
-/

namespace A108104.P16995063363795053075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A108104.P16995063363795053075

namespace A108104

/-- `A135851(∑[(n+1)%2]+4)` -/
def P16995063363795053075.Spec : Prop :=
  ∀ n, P16995063363795053075.a n = A108104 n

end A108104

/-! ## A108104.P14904081137063819794

`A135851(n+5-round(n/2))`
-/

namespace A108104.P14904081137063819794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 ((n + 5 : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat

end

end A108104.P14904081137063819794

namespace A108104

/-- `A135851(n+5-round(n/2))` -/
def P14904081137063819794.Spec : Prop :=
  ∀ n, P14904081137063819794.a n = A108104 n

end A108104

/-! ## A108104.P13390311259210835600

`A068921(∑[char[A005843(n+2)]])`
-/

namespace A108104.P13390311259210835600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108104.P13390311259210835600

namespace A108104

/-- `A068921(∑[char[A005843(n+2)]])` -/
def P13390311259210835600.Spec : Prop :=
  ∀ n, P13390311259210835600.a n = A108104 n

end A108104

/-! ## A108104.P6843873653789669738

`gcd(A000038(n), A199804(floor(n/2)))`
-/

namespace A108104.P6843873653789669738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A199804 ⌊(n : ℚ) / 2⌋.toNat)

end

end A108104.P6843873653789669738

namespace A108104

/-- `gcd(A000038(n), A199804(floor(n/2)))` -/
def P6843873653789669738.Spec : Prop :=
  ∀ n, (P6843873653789669738.a n : ℤ) = A108104 n

end A108104

/-! ## A108104.P15113409293660378333

`or(A000007(n), A000930(A004526(n)))`
-/

namespace A108104.P15113409293660378333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A000930 (A004526 n).toNat)

end

end A108104.P15113409293660378333

namespace A108104

/-- `or(A000007(n), A000930(A004526(n)))` -/
def P15113409293660378333.Spec : Prop :=
  ∀ n, P15113409293660378333.a n = A108104 n

end A108104

/-! ## A108104.P17115448001351584300

`A224809(n-1)/a(n-1)` with `a(0)=1`
-/

namespace A108104.P17115448001351584300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A224809 (n - 1) : ℚ) / a (n - 1)

end

end A108104.P17115448001351584300

namespace A108104

/-- `A224809(n-1)/a(n-1)` -/
def P17115448001351584300.Spec : Prop :=
  ∀ n, P17115448001351584300.a n = (A108104 n : ℚ)

end A108104

/-! ## A108104.P14089525620049959864

`A144401(A008805(n))`
-/

namespace A108104.P14089525620049959864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144401 (A008805 n).toNat

end

end A108104.P14089525620049959864

namespace A108104

/-- `A144401(A008805(n))` -/
def P14089525620049959864.Spec : Prop :=
  ∀ n, P14089525620049959864.a n = A108104 n

end A108104

/-! ## A108104.P5232297530843953377

`A139040(A061925(n)-n)`
-/

namespace A108104.P5232297530843953377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139040 (A061925 n - (n : ℤ)).toNat

end

end A108104.P5232297530843953377

namespace A108104

/-- `A139040(A061925(n)-n)` -/
def P5232297530843953377.Spec : Prop :=
  ∀ n, P5232297530843953377.a n = A108104 n

end A108104

/-! ## A108104.P8247497442163922882

`A139040(A261243(n+2)-n)`
-/

namespace A108104.P8247497442163922882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139040 (A261243 (n + 2) - (n : ℤ)).toNat

end

end A108104.P8247497442163922882

namespace A108104

/-- `A139040(A261243(n+2)-n)` -/
def P8247497442163922882.Spec : Prop :=
  ∀ n, P8247497442163922882.a n = A108104 n

end A108104

/-! ## A108104.P8239221097115313291

`A139040(A061925(n))`
-/

namespace A108104.P8239221097115313291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139040 (A061925 n).toNat

end

end A108104.P8239221097115313291

namespace A108104

/-- `A139040(A061925(n))` -/
def P8239221097115313291.Spec : Prop :=
  ∀ n, P8239221097115313291.a n = A108104 n

end A108104

/-! ## A108104.P16676944850354794474

`A139040(A261243(n+2))`
-/

namespace A108104.P16676944850354794474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139040 (A261243 (n + 2)).toNat

end

end A108104.P16676944850354794474

namespace A108104

/-- `A139040(A261243(n+2))` -/
def P16676944850354794474.Spec : Prop :=
  ∀ n, P16676944850354794474.a n = A108104 n

end A108104

/-! ## A108104.P11674234554913695040

`A139040(A333574(n+2))`
-/

namespace A108104.P11674234554913695040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139040 (A333574 (n + 2)).toNat

end

end A108104.P11674234554913695040

namespace A108104

/-- `A139040(A333574(n+2))` -/
def P11674234554913695040.Spec : Prop :=
  ∀ n, P11674234554913695040.a n = A108104 n

end A108104

/-! ## A108104.P13641820516710433350

`A139040(A116940(n)+2-n)`
-/

namespace A108104.P13641820516710433350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139040 (A116940 n + (2 - (n : ℤ))).toNat

end

end A108104.P13641820516710433350

namespace A108104

/-- `A139040(A116940(n)+2-n)` -/
def P13641820516710433350.Spec : Prop :=
  ∀ n, P13641820516710433350.a n = A108104 n

end A108104

/-! ## A108104.P7270125942200666192

`A139040(2-(n-A116940(n)))`
-/

namespace A108104.P7270125942200666192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139040 (2 - ((n : ℤ) - A116940 n)).toNat

end

end A108104.P7270125942200666192

namespace A108104

/-- `A139040(2-(n-A116940(n)))` -/
def P7270125942200666192.Spec : Prop :=
  ∀ n, P7270125942200666192.a n = A108104 n

end A108104

/-!
# A108105: 2^floor(n/5).

The programs for A108105, the canonical program `A108105.P2043183910634799034` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108105 has offset 0).

The definition of A108105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108105.P2043183910634799034

`2^floor(n/5)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108105

/-- `2^floor(n/5)` -/
def P2043183910634799034.Spec : Prop :=
  ∀ n, P2043183910634799034.a n = (A108105 n : ℚ)

end A108105

/-! ## A108105.P7660338848269351749

`∏[∑{p}[n, val(#, 5)]+1]`
-/

namespace A108105.P7660338848269351749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 5 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108105.P7660338848269351749

namespace A108105

/-- `∏[∑{p}[n, val(#, 5)]+1]` -/
def P7660338848269351749.Spec : Prop :=
  ∀ n, (P7660338848269351749.a n : ℤ) = A108105 n

end A108105

/-! ## A108105.P8696695224097207189

`∏[∏{p}[n, val(#, 5)+1]]`
-/

namespace A108105.P8696695224097207189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (SequenceMachineLib.valuation p 5 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108105.P8696695224097207189

namespace A108105

/-- `∏[∏{p}[n, val(#, 5)+1]]` -/
def P8696695224097207189.Spec : Prop :=
  ∀ n, (P8696695224097207189.a n : ℤ) = A108105 n

end A108105

/-! ## A108105.P13041787388531577630

`∏[val(5*∏{p}[n, #], 5)]`
-/

namespace A108105.P13041787388531577630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (5 * (∏ p ∈ Nat.primeFactors (f2 n), p)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108105.P13041787388531577630

namespace A108105

/-- `∏[val(5*∏{p}[n, #], 5)]` -/
def P13041787388531577630.Spec : Prop :=
  ∀ n, (P13041787388531577630.a n : ℤ) = A108105 n

end A108105

/-! ## A108105.P11951740511285909053

`2*a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A108105.P11951740511285909053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  2 * a (n - 5)

end

end A108105.P11951740511285909053

namespace A108105

/-- `2*a(n-5)` -/
def P11951740511285909053.Spec : Prop :=
  ∀ n, (P11951740511285909053.a n : ℤ) = A108105 n

end A108105

/-! ## A108105.P8025716130308345015

`a(n-5)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A108105.P8025716130308345015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  a (n - 5) + a (n - 5)

end

end A108105.P8025716130308345015

namespace A108105

/-- `a(n-5)+a(n-5)` -/
def P8025716130308345015.Spec : Prop :=
  ∀ n, (P8025716130308345015.a n : ℤ) = A108105 n

end A108105

/-! ## A108105.P17048412095240511691

`∏[abs(A280569(n))]`
-/

namespace A108105.P17048412095240511691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280569 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108105.P17048412095240511691

namespace A108105

/-- `∏[abs(A280569(n))]` -/
def P17048412095240511691.Spec : Prop :=
  ∀ n, P17048412095240511691.a n = A108105 n

end A108105

/-! ## A108105.P5320739226407722185

`∏[dr(A040789(n))]`
-/

namespace A108105.P5320739226407722185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040789 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108105.P5320739226407722185

namespace A108105

/-- `∏[dr(A040789(n))]` -/
def P5320739226407722185.Spec : Prop :=
  ∀ n, (P5320739226407722185.a n : ℤ) = A108105 n

end A108105

/-! ## A108105.P14776436717612471660

`∏[dr(A040807(n))]`
-/

namespace A108105.P14776436717612471660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040807 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108105.P14776436717612471660

namespace A108105

/-- `∏[dr(A040807(n))]` -/
def P14776436717612471660.Spec : Prop :=
  ∀ n, (P14776436717612471660.a n : ℤ) = A108105 n

end A108105

/-! ## A108105.P4234139368329299845

`∏[A280569(2*n)]`
-/

namespace A108105.P4234139368329299845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280569 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108105.P4234139368329299845

namespace A108105

/-- `∏[A280569(2*n)]` -/
def P4234139368329299845.Spec : Prop :=
  ∀ n, P4234139368329299845.a n = A108105 n

end A108105

/-! ## A108105.P14214172844363293800

`∏[gcd(2, A040948(n))]`
-/

namespace A108105.P14214172844363293800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A040948 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108105.P14214172844363293800

namespace A108105

/-- `∏[gcd(2, A040948(n))]` -/
def P14214172844363293800.Spec : Prop :=
  ∀ n, (P14214172844363293800.a n : ℤ) = A108105 n

end A108105

/-! ## A108105.P6215966663256022323

`∏[A177706(abs(1-n))]`
-/

namespace A108105.P6215966663256022323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177706 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108105.P6215966663256022323

namespace A108105

/-- `∏[A177706(abs(1-n))]` -/
def P6215966663256022323.Spec : Prop :=
  ∀ n, P6215966663256022323.a n = A108105 n

end A108105

/-! ## A108105.P17473075515324441584

`∏[A257181(2*n)!]`
-/

namespace A108105.P17473075515324441584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A257181 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108105.P17473075515324441584

namespace A108105

/-- `∏[A257181(2*n)!]` -/
def P17473075515324441584.Spec : Prop :=
  ∀ n, (P17473075515324441584.a n : ℤ) = A108105 n

end A108105

/-! ## A108105.P10529062109775035709

`∏[dr(A040355(2*n))]`
-/

namespace A108105.P10529062109775035709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040355 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108105.P10529062109775035709

namespace A108105

/-- `∏[dr(A040355(2*n))]` -/
def P10529062109775035709.Spec : Prop :=
  ∀ n, (P10529062109775035709.a n : ℤ) = A108105 n

end A108105

/-! ## A108105.P1998564051278089625

`∏[dr(A040790(2*n))]`
-/

namespace A108105.P1998564051278089625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040790 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108105.P1998564051278089625

namespace A108105

/-- `∏[dr(A040790(2*n))]` -/
def P1998564051278089625.Spec : Prop :=
  ∀ n, (P1998564051278089625.a n : ℤ) = A108105 n

end A108105

/-!
# A108108: Numbers k such that both 137*k + 139 and 139*k + 137 are primes.

The programs for A108108, there is no canonical definition to state claims against.
-/

/-! ## A108108.P11110230935468142795

`∩[A108027(n+1), A108028(n+1)]`
-/

namespace A108108.P11110230935468142795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108108.P11110230935468142795

/-!
# A108115: Let B(x) = Sum_{i >= 0} A108336(i)*x^i; sequence gives coefficients of B(x)^2.

The programs for A108115, there is no canonical definition to state claims against.
-/

/-! ## A108115.P4627618614435516487

`gcd(10, A315660(A001590(n)))`
-/

namespace A108115.P4627618614435516487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A315660 (A001590 n).toNat)

end

end A108115.P4627618614435516487

/-! ## A108115.P11369555865271659789

`A050320(A105028(n)+A003325(n+1))`
-/

namespace A108115.P11369555865271659789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A105028 n + A003325 (n + 1)).toNat

end

end A108115.P11369555865271659789

/-! ## A108115.P2208445700064487051

`gcd(A011542(A036970(n+2)), A020988(n))`
-/

namespace A108115.P2208445700064487051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011542 (A036970 (n + 2)).toNat) (A020988 n)

end

end A108115.P2208445700064487051

/-! ## A108115.P4891946966236392437

`gcd(A155596(n+2), A302023(A088599(n+1)))`
-/

namespace A108115.P4891946966236392437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155596 (n + 2)) (A302023 (A088599 (n + 1)).toNat)

end

end A108115.P4891946966236392437

/-! ## A108115.P16943767220873126794

`A333212(∑[A158822(n)])`
-/

namespace A108115.P16943767220873126794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333212 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108115.P16943767220873126794

/-!
# A108116: Base 10 weak Skolem-Langford numbers.

The programs for A108116, there is no canonical definition to state claims against.
-/

/-! ## A108116.P7118964752893072600

`A339803(∑[A307748(3*n+4)%3])`
-/

namespace A108116.P7118964752893072600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307748 (3 * n + 4)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339803 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108116.P7118964752893072600

/-! ## A108116.P6638542182312953943

`A339803(lt[(n+1)², A337681(3*n+4)])`
-/

namespace A108116.P6638542182312953943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337681 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339803 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A108116.P6638542182312953943

/-!
# A108118: Integers not divisible by 3 or 4.

The programs for A108118, the canonical program `A108118.P12434218501336898147` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108118 has offset 1).

The definition of A108118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108118.P12434218501336898147

`a(n-6)+12` with `a(0)=1, a(1)=2, a(2)=5, a(3)=7, a(4)=10, a(5)=11`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108118

/-- `a(n-6)+12` -/
def P12434218501336898147.Spec : Prop :=
  ∀ n, (P12434218501336898147.a n : ℤ) = A108118 (n + 1)

theorem P12434218501336898147.correct : P12434218501336898147.Spec := by
  intro n
  simp only [A108118, Nat.add_sub_cancel]

end A108118

/-! ## A108118.P9322520519168605323

`lt[4*n, lcm(12, n)]`
-/

namespace A108118.P9322520519168605323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 12 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108118.P9322520519168605323

namespace A108118

/-- `lt[4*n, lcm(12, n)]` -/
def P9322520519168605323.Spec : Prop :=
  ∀ n, (P9322520519168605323.a n : ℤ) = A108118 (n + 1)

end A108118

/-! ## A108118.P10396291878099494078

`record[xor(n, (n%3)!)]`
-/

namespace A108118.P10396291878099494078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.factorial (n % 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108118.P10396291878099494078

namespace A108118

/-- `record[xor(n, (n%3)!)]` -/
def P10396291878099494078.Spec : Prop :=
  ∀ n, (P10396291878099494078.a n : ℤ) = A108118 (n + 1)

end A108118

/-! ## A108118.P13503716604280512006

`or(2*n, ((n+1)%3)!)`
-/

namespace A108118.P13503716604280512006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (Nat.factorial ((n + 1) % 3))

end

end A108118.P13503716604280512006

namespace A108118

/-- `or(2*n, ((n+1)%3)!)` -/
def P13503716604280512006.Spec : Prop :=
  ∀ n, (P13503716604280512006.a n : ℤ) = A108118 (n + 1)

end A108118

/-! ## A108118.P16142213615805794706

`comp[n*(3-2%gcd(4, n))]`
-/

namespace A108118.P16142213615805794706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - ((2 % Nat.gcd 4 n : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A108118.P16142213615805794706

namespace A108118

/-- `comp[n*(3-2%gcd(4, n))]` -/
def P16142213615805794706.Spec : Prop :=
  ∀ n, (P16142213615805794706.a n : ℤ) = A108118 (n + 1)

end A108118

/-! ## A108118.P4525231818694448918

`xor(n, ∑[n]%3)+n+1`
-/

namespace A108118.P4525231818694448918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n ((∑ j ∈ Finset.range (n + 1), f1 j) % 3) + (n + 1)

end

end A108118.P4525231818694448918

namespace A108118

/-- `xor(n, ∑[n]%3)+n+1` -/
def P4525231818694448918.Spec : Prop :=
  ∀ n, (P4525231818694448918.a n : ℤ) = A108118 (n + 1)

end A108118

/-! ## A108118.P1388503058034635689

`∑[4-a(n-3)]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A108118.P1388503058034635689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 2] fun n f1 =>
  4 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108118.P1388503058034635689

namespace A108118

/-- `∑[4-a(n-3)]` -/
def P1388503058034635689.Spec : Prop :=
  ∀ n, P1388503058034635689.a n = A108118 (n + 1)

end A108118

/-! ## A108118.P15661163951928380502

`or(2*n, C(2, (n+3)%3))`
-/

namespace A108118.P15661163951928380502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (Nat.choose 2 ((n + 3) % 3))

end

end A108118.P15661163951928380502

namespace A108118

/-- `or(2*n, C(2, (n+3)%3))` -/
def P15661163951928380502.Spec : Prop :=
  ∀ n, (P15661163951928380502.a n : ℤ) = A108118 (n + 1)

end A108118

/-! ## A108118.P2645494881185427136

`or(2*n, ((2*n)%3)!!)`
-/

namespace A108118.P2645494881185427136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (Nat.factorial (Nat.factorial (2 * n % 3)))

end

end A108118.P2645494881185427136

namespace A108118

/-- `or(2*n, ((2*n)%3)!!)` -/
def P2645494881185427136.Spec : Prop :=
  ∀ n, (P2645494881185427136.a n : ℤ) = A108118 (n + 1)

end A108118

/-! ## A108118.P16016824975941282376

`or(2*n, (gcd(3, 1-n)-1)!)`
-/

namespace A108118.P16016824975941282376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (Nat.factorial ((Int.gcd 3 (1 - (n : ℤ)) : ℤ) - 1).toNat)

end

end A108118.P16016824975941282376

namespace A108118

/-- `or(2*n, (gcd(3, 1-n)-1)!)` -/
def P16016824975941282376.Spec : Prop :=
  ∀ n, (P16016824975941282376.a n : ℤ) = A108118 (n + 1)

end A108118

/-! ## A108118.P6455613496704633576

`or(char[3*n+1]+1, 2*n)`
-/

namespace A108118.P6455613496704633576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor ((if ∃ j, f1 j = n then 1 else 0) + 1) (2 * n)

end

end A108118.P6455613496704633576

namespace A108118

/-- `or(char[3*n+1]+1, 2*n)` -/
def P6455613496704633576.Spec : Prop :=
  ∀ n, (P6455613496704633576.a n : ℤ) = A108118 (n + 1)

end A108118

/-! ## A108118.P14452304551381713190

`4*(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A108118.P14452304551381713190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  4 * ((n : ℤ) - 1) - a (n - 3)

end

end A108118.P14452304551381713190

namespace A108118

/-- `4*(n-1)-a(n-3)` -/
def P14452304551381713190.Spec : Prop :=
  ∀ n, P14452304551381713190.a n = A108118 (n + 1)

end A108118

/-! ## A108118.P9683398239035035611

`4-(a(n-2)%4-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A108118.P9683398239035035611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - (Int.tmod (a (n - 2)) 4 - a (n - 1))

end

end A108118.P9683398239035035611

namespace A108118

/-- `4-(a(n-2)%4-a(n-1))` -/
def P9683398239035035611.Spec : Prop :=
  ∀ n, P9683398239035035611.a n = A108118 (n + 1)

end A108118

/-! ## A108118.P3497807817451296732

`eq[1, gcd(lcm(n+2, 2*n)+n, n+3)]`
-/

namespace A108118.P3497807817451296732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.lcm (n + 2) (2 * n) + n) (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108118.P3497807817451296732

namespace A108118

/-- `eq[1, gcd(lcm(n+2, 2*n)+n, n+3)]` -/
def P3497807817451296732.Spec : Prop :=
  ∀ n, (P3497807817451296732.a n : ℤ) = A108118 (n + 1)

end A108118

/-! ## A108118.P14653635847369068456

`∑[dr(A040799(n))]`
-/

namespace A108118.P14653635847369068456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040799 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108118.P14653635847369068456

namespace A108118

/-- `∑[dr(A040799(n))]` -/
def P14653635847369068456.Spec : Prop :=
  ∀ n, (P14653635847369068456.a n : ℤ) = A108118 (n + 1)

end A108118

/-! ## A108118.P14126476970710273846

`∑[2-A092220(n)]-1`
-/

namespace A108118.P14126476970710273846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A092220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A108118.P14126476970710273846

namespace A108118

/-- `∑[2-A092220(n)]-1` -/
def P14126476970710273846.Spec : Prop :=
  ∀ n, P14126476970710273846.a n = A108118 (n + 1)

end A108118

/-! ## A108118.P11952516055012640892

`round(A249916(n)/2+n)`
-/

namespace A108118.P11952516055012640892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A249916 n : ℚ) / 2 + (n : ℚ))

end

end A108118.P11952516055012640892

namespace A108118

/-- `round(A249916(n)/2+n)` -/
def P11952516055012640892.Spec : Prop :=
  ∀ n, P11952516055012640892.a n = A108118 (n + 1)

end A108118

/-! ## A108118.P14197972592383553921

`comp[A134667(n)+2*n]`
-/

namespace A108118.P14197972592383553921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A108118.P14197972592383553921

namespace A108118

/-- `comp[A134667(n)+2*n]` -/
def P14197972592383553921.Spec : Prop :=
  ∀ n, (P14197972592383553921.a n : ℤ) = A108118 (n + 1)

end A108118

/-! ## A108118.P5769926001062410550

`A135265(n)+A042948(n)`
-/

namespace A108118.P5769926001062410550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135265 n + A042948 n

end

end A108118.P5769926001062410550

namespace A108118

/-- `A135265(n)+A042948(n)` -/
def P5769926001062410550.Spec : Prop :=
  ∀ n, P5769926001062410550.a n = A108118 (n + 1)

end A108118

/-!
# A108119: Numbers k such that prime(k) and prime(k+1) are congruent to 1 (mod 10).

The programs for A108119, the canonical program `A108119.P18242225102554614006` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108119 has offset 1).

The definition of A108119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108119.P18242225102554614006

`∩[A049511(n+1), A107730(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A108119

/-- `∩[A049511(n+1), A107730(n+1)]` -/
def P18242225102554614006.Spec : Prop :=
  ∀ n, (P18242225102554614006.a n : ℤ) = A108119 (n + 1)

theorem P18242225102554614006.correct : P18242225102554614006.Spec := by
  intro n
  simp only [A108119, Nat.add_sub_cancel]

end A108119

/-! ## A108119.P10539389179185839344

`A000720(A330366(n+1))`
-/

namespace A108119.P10539389179185839344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A330366 (n + 1)).toNat

end

end A108119.P10539389179185839344

namespace A108119

/-- `A000720(A330366(n+1))` -/
def P10539389179185839344.Spec : Prop :=
  ∀ n, P10539389179185839344.a n = A108119 (n + 1)

end A108119

/-! ## A108119.P8200097950028212441

`A061395(p?[A330366(n+1)])`
-/

namespace A108119.P8200097950028212441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A108119.P8200097950028212441

namespace A108119

/-- `A061395(p?[A330366(n+1)])` -/
def P8200097950028212441.Spec : Prop :=
  ∀ n, P8200097950028212441.a n = A108119 (n + 1)

end A108119

/-! ## A108119.P10754263168823478429

`A061395(or(1, A330366(n+1)))`
-/

namespace A108119.P10754263168823478429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A330366 (n + 1))).toNat

end

end A108119.P10754263168823478429

namespace A108119

/-- `A061395(or(1, A330366(n+1)))` -/
def P10754263168823478429.Spec : Prop :=
  ∀ n, P10754263168823478429.a n = A108119 (n + 1)

end A108119

/-! ## A108119.P15249703808303442597

`A061395(∪[A330366(n+1), A330366(n+5)])`
-/

namespace A108119.P15249703808303442597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330366 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A108119.P15249703808303442597

namespace A108119

/-- `A061395(∪[A330366(n+1), A330366(n+5)])` -/
def P15249703808303442597.Spec : Prop :=
  ∀ n, P15249703808303442597.a n = A108119 (n + 1)

end A108119

/-! ## A108119.P8781869281810059811

`A061395(2*A330366(n+1))`
-/

namespace A108119.P8781869281810059811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A330366 (n + 1)).toNat

end

end A108119.P8781869281810059811

namespace A108119

/-- `A061395(2*A330366(n+1))` -/
def P8781869281810059811.Spec : Prop :=
  ∀ n, P8781869281810059811.a n = A108119 (n + 1)

end A108119

/-! ## A108119.P11764269721641361873

`A061395(lcm(2, A330366(n+1)))`
-/

namespace A108119.P11764269721641361873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A330366 (n + 1)))

end

end A108119.P11764269721641361873

namespace A108119

/-- `A061395(lcm(2, A330366(n+1)))` -/
def P11764269721641361873.Spec : Prop :=
  ∀ n, P11764269721641361873.a n = A108119 (n + 1)

end A108119

/-! ## A108119.P8173109897961265500

`A058933(p?[A330366(n+1)])`
-/

namespace A108119.P8173109897961265500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A108119.P8173109897961265500

namespace A108119

/-- `A058933(p?[A330366(n+1)])` -/
def P8173109897961265500.Spec : Prop :=
  ∀ n, P8173109897961265500.a n = A108119 (n + 1)

end A108119

/-!
# A108120: Floor[n*1/Sin[1]], or Beatty sequence for 1/sin(1).

The programs for A108120, the canonical program `A108120.P10908721066715974549` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108120 has offset 1).

The definition of A108120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108120.P10908721066715974549

`floor((n+1)/sin(1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108120

/-- `floor((n+1)/sin(1))` -/
def P10908721066715974549.Spec : Prop :=
  ∀ n, P10908721066715974549.a n = A108120 (n + 1)

theorem P10908721066715974549.correct : P10908721066715974549.Spec := by
  intro n
  simp only [A108120, Nat.add_sub_cancel]

end A108120

/-! ## A108120.P367323524246667226

`∑[Δ[floor(n/sin(1))]!]`
-/

namespace A108120.P367323524246667226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sin (1 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108120.P367323524246667226

namespace A108120

/-- `∑[Δ[floor(n/sin(1))]!]` -/
def P367323524246667226.Spec : Prop :=
  ∀ n, (P367323524246667226.a n : ℤ) = A108120 (n + 1)

end A108120

/-! ## A108120.P11498941876648140343

`ceil((n+1)/sin(1))-1`
-/

namespace A108120.P11498941876648140343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sin (1 : ℝ)⌉ - 1

end

end A108120.P11498941876648140343

namespace A108120

/-- `ceil((n+1)/sin(1))-1` -/
def P11498941876648140343.Spec : Prop :=
  ∀ n, P11498941876648140343.a n = A108120 (n + 1)

end A108120

/-! ## A108120.P8587337310536099623

`-ceil((n+1)/sin(-1))`
-/

namespace A108120.P8587337310536099623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(n + 1 : ℝ) / Real.sin (-1 : ℝ)⌉

end

end A108120.P8587337310536099623

namespace A108120

/-- `-ceil((n+1)/sin(-1))` -/
def P8587337310536099623.Spec : Prop :=
  ∀ n, P8587337310536099623.a n = A108120 (n + 1)

end A108120

/-! ## A108120.P8515956632619189734

`∑[Δ[floor(n/sin(1))]%3]`
-/

namespace A108120.P8515956632619189734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sin (1 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108120.P8515956632619189734

namespace A108120

/-- `∑[Δ[floor(n/sin(1))]%3]` -/
def P8515956632619189734.Spec : Prop :=
  ∀ n, P8515956632619189734.a n = A108120 (n + 1)

end A108120

/-! ## A108120.P15758742434107651416

`ceil((1-(sin(1)-n))/sin(1))`
-/

namespace A108120.P15758742434107651416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - (Real.sin (1 : ℝ) - (n : ℝ))) / Real.sin (1 : ℝ)⌉

end

end A108120.P15758742434107651416

namespace A108120

/-- `ceil((1-(sin(1)-n))/sin(1))` -/
def P15758742434107651416.Spec : Prop :=
  ∀ n, P15758742434107651416.a n = A108120 (n + 1)

end A108120

/-! ## A108120.P16029167745877547340

`A108593(A108587(n+1))`
-/

namespace A108120.P16029167745877547340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108593 (A108587 (n + 1)).toNat

end

end A108120.P16029167745877547340

namespace A108120

/-- `A108593(A108587(n+1))` -/
def P16029167745877547340.Spec : Prop :=
  ∀ n, P16029167745877547340.a n = A108120 (n + 1)

end A108120

/-! ## A108120.P5160292930099764230

`A108593(record[A108593(n+1)])`
-/

namespace A108120.P5160292930099764230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108593 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108120.P5160292930099764230

namespace A108120

/-- `A108593(record[A108593(n+1)])` -/
def P5160292930099764230.Spec : Prop :=
  ∀ n, P5160292930099764230.a n = A108120 (n + 1)

end A108120

/-! ## A108120.P9156751494647678983

`floor(sqrt(A003623((n+1)²)/3))`
-/

namespace A108120.P9156751494647678983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A003623 ((n + 1) ^ 2) : ℚ) / 3 : ℝ)⌋

end

end A108120.P9156751494647678983

namespace A108120

/-- `floor(sqrt(A003623((n+1)²)/3))` -/
def P9156751494647678983.Spec : Prop :=
  ∀ n, P9156751494647678983.a n = A108120 (n + 1)

end A108120

/-! ## A108120.P7147676151232037352

`A108611(n)+1+n`
-/

namespace A108120.P7147676151232037352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 n + 1 + (n : ℤ)

end

end A108120.P7147676151232037352

namespace A108120

/-- `A108611(n)+1+n` -/
def P7147676151232037352.Spec : Prop :=
  ∀ n, P7147676151232037352.a n = A108120 (n + 1)

end A108120

/-!
# A108121: 3-limiting word of the morphism 1->2, 2->3, 3->1223.

The programs for A108121, there is no canonical definition to state claims against.
-/

/-! ## A108121.P16706770077187144973

`A000120(record[A109038(n)+2])+C(2, n+2)`
-/

namespace A108121.P16706770077187144973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109038 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A108121.P16706770077187144973

/-! ## A108121.P8348214028132580911

`A000120(record[A109038(n)+2])+A000007(n)`
-/

namespace A108121.P8348214028132580911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109038 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A000007 n

end

end A108121.P8348214028132580911

/-! ## A108121.P12564107373388533873

`A028240(n)+A000120(record[A109038(n)+2])`
-/

namespace A108121.P12564107373388533873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109038 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028240 n + A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108121.P12564107373388533873

/-! ## A108121.P17473889463652491144

`A105083(A162576(n+1)-A163820(n+1))`
-/

namespace A108121.P17473889463652491144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 (A162576 (n + 1) - A163820 (n + 1)).toNat

end

end A108121.P17473889463652491144

/-!
# A108122: G.f.: (1-2*x^2)/(1-x-2*x^2-x^3).

The programs for A108122, the canonical program `A108122.P1540138715057939910` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108122 has offset 0).

The definition of A108122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108122.P1540138715057939910

`a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108122

/-- `a(n-1)+2*a(n-2)+a(n-3)` -/
def P1540138715057939910.Spec : Prop :=
  ∀ n, (P1540138715057939910.a n : ℤ) = A108122 n

theorem P1540138715057939910.correct : P1540138715057939910.Spec := by
  intro n
  simp only [A108122]

end A108122

/-! ## A108122.P8341764291801994725

`a(n-1)+a(n-2)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A108122.P8341764291801994725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A108122.P8341764291801994725

namespace A108122

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-3)` -/
def P8341764291801994725.Spec : Prop :=
  ∀ n, (P8341764291801994725.a n : ℤ) = A108122 n

theorem P8341764291801994725.correct : P8341764291801994725.Spec := by
  intro n
  simp only [A108122, Nat.add_sub_cancel, A108122.P8341764291801994725.a, A108122.P1540138715057939910.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A108122

/-! ## A108122.P6808425609184862923

`3*A192805(n)-2`
-/

namespace A108122.P6808425609184862923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A192805 n - 2

end

end A108122.P6808425609184862923

namespace A108122

/-- `3*A192805(n)-2` -/
def P6808425609184862923.Spec : Prop :=
  ∀ n, P6808425609184862923.a n = A108122 n

end A108122

/-! ## A108122.P16750510627740684046

`3*(A107458(2*n+1)+1)-2`
-/

namespace A108122.P16750510627740684046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A107458 (2 * n + 1) + 1) - 2

end

end A108122.P16750510627740684046

namespace A108122

/-- `3*(A107458(2*n+1)+1)-2` -/
def P16750510627740684046.Spec : Prop :=
  ∀ n, P16750510627740684046.a n = A108122 n

end A108122

/-! ## A108122.P5255206750761953000

`A058278(2*n+1)+A078012(2*n)-A058278(2*n)`
-/

namespace A108122.P5255206750761953000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (2 * n + 1) + (A078012 (2 * n) - A058278 (2 * n))

end

end A108122.P5255206750761953000

namespace A108122

/-- `A058278(2*n+1)+A078012(2*n)-A058278(2*n)` -/
def P5255206750761953000.Spec : Prop :=
  ∀ n, P5255206750761953000.a n = A108122 n

end A108122

/-! ## A108122.P16830658143985373545

`A078012(2*n+1)+A078012(2*n)-A135851(2*n+1)`
-/

namespace A108122.P16830658143985373545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (2 * n + 1) + (A078012 (2 * n) - A135851 (2 * n + 1))

end

end A108122.P16830658143985373545

namespace A108122

/-- `A078012(2*n+1)+A078012(2*n)-A135851(2*n+1)` -/
def P16830658143985373545.Spec : Prop :=
  ∀ n, P16830658143985373545.a n = A108122 n

end A108122

/-! ## A108122.P11031624119011684163

`Δ[A277252(2*n)]`
-/

namespace A108122.P11031624119011684163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277252 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108122.P11031624119011684163

namespace A108122

/-- `Δ[A277252(2*n)]` -/
def P11031624119011684163.Spec : Prop :=
  ∀ n, P11031624119011684163.a n = A108122 n

end A108122

/-! ## A108122.P6316043042365232747

`A277252(2*(n+1))-A277252(2*n)`
-/

namespace A108122.P6316043042365232747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277252 (2 * (n + 1)) - A277252 (2 * n)

end

end A108122.P6316043042365232747

namespace A108122

/-- `A277252(2*(n+1))-A277252(2*n)` -/
def P6316043042365232747.Spec : Prop :=
  ∀ n, P6316043042365232747.a n = A108122 n

end A108122

/-! ## A108122.P9758403360058780037

`2*A058278(2*n+1)-A000930(2*n)`
-/

namespace A108122.P9758403360058780037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058278 (2 * n + 1) - A000930 (2 * n)

end

end A108122.P9758403360058780037

namespace A108122

/-- `2*A058278(2*n+1)-A000930(2*n)` -/
def P9758403360058780037.Spec : Prop :=
  ∀ n, P9758403360058780037.a n = A108122 n

end A108122

/-! ## A108122.P15267136509235026422

`A000930(2*n)-2*A135851(2*n+1)`
-/

namespace A108122.P15267136509235026422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (2 * n) - 2 * A135851 (2 * n + 1)

end

end A108122.P15267136509235026422

namespace A108122

/-- `A000930(2*n)-2*A135851(2*n+1)` -/
def P15267136509235026422.Spec : Prop :=
  ∀ n, P15267136509235026422.a n = A108122 n

end A108122

/-! ## A108122.P147845463867875135

`A199804(2*n)-2*A135851(2*n+1)`
-/

namespace A108122.P147845463867875135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 (2 * n) - 2 * A135851 (2 * n + 1)

end

end A108122.P147845463867875135

namespace A108122

/-- `A199804(2*n)-2*A135851(2*n+1)` -/
def P147845463867875135.Spec : Prop :=
  ∀ n, P147845463867875135.a n = A108122 n

end A108122

/-! ## A108122.P15351463490561510152

`A097333(2*n+1)-(A135851(2*n+1)+A097333(2*n))`
-/

namespace A108122.P15351463490561510152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (2 * n + 1) - (A135851 (2 * n + 1) + A097333 (2 * n))

end

end A108122.P15351463490561510152

namespace A108122

/-- `A097333(2*n+1)-(A135851(2*n+1)+A097333(2*n))` -/
def P15351463490561510152.Spec : Prop :=
  ∀ n, P15351463490561510152.a n = A108122 n

end A108122

/-! ## A108122.P5477360090755332645

`A000930(2*n+1)+A196382(2*n+1)-A196382(2*(n+1))`
-/

namespace A108122.P5477360090755332645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (2 * n + 1) + (A196382 (2 * n + 1) - A196382 (2 * (n + 1)))

end

end A108122.P5477360090755332645

namespace A108122

/-- `A000930(2*n+1)+A196382(2*n+1)-A196382(2*(n+1))` -/
def P5477360090755332645.Spec : Prop :=
  ∀ n, P5477360090755332645.a n = A108122 n

end A108122

/-! ## A108122.P8380026611898808796

`Δ[A164316(2*n+1)]-A164316(2*n+1)`
-/

namespace A108122.P8380026611898808796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164316 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A164316 (2 * n + 1)

end

end A108122.P8380026611898808796

namespace A108122

/-- `Δ[A164316(2*n+1)]-A164316(2*n+1)` -/
def P8380026611898808796.Spec : Prop :=
  ∀ n, P8380026611898808796.a n = A108122 n

end A108122

/-!
# A108124: Expansion of e.g.f. x/(1+sin(x)).

The programs for A108124, there is no canonical definition to state claims against.
-/

/-! ## A108124.P16691227631285313209

`-n*A346838(n)`
-/

namespace A108124.P16691227631285313209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * A346838 n)

end

end A108124.P16691227631285313209

/-! ## A108124.P2548078714316259083

`A000111(n)*A181983(n)`
-/

namespace A108124.P2548078714316259083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A181983 n

end

end A108124.P2548078714316259083

/-! ## A108124.P2857427915131082754

`A062157(n)*A186365(n)`
-/

namespace A108124.P2857427915131082754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A186365 n

end

end A108124.P2857427915131082754

/-! ## A108124.P7787165299279138283

`A001489(n)*A346838(n)`
-/

namespace A108124.P7787165299279138283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n * A346838 n

end

end A108124.P7787165299279138283

/-! ## A108124.P4074850970261947667

`-A000111(n)*A038608(n)`
-/

namespace A108124.P4074850970261947667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000111 n * A038608 n)

end

end A108124.P4074850970261947667

/-! ## A108124.P17044734278207461452

`A186365(n)/A062157(n+2)`
-/

namespace A108124.P17044734278207461452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186365 n : ℚ) / (A062157 (n + 2) : ℚ)

end

end A108124.P17044734278207461452

/-!
# A108125: Expansion of e.g.f.: x/(1 - log(1+x)).

The programs for A108125, there is no canonical definition to state claims against.
-/

/-! ## A108125.P7694777314305025152

`n*A006252(abs(1-n))`
-/

namespace A108125.P7694777314305025152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006252 |1 - (n : ℤ)|.toNat

end

end A108125.P7694777314305025152

/-! ## A108125.P13560365793138102219

`A306038(n)-A006252(n)`
-/

namespace A108125.P13560365793138102219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306038 n - A006252 n

end

end A108125.P13560365793138102219

/-! ## A108125.P14992351537885559282

`A317280(n)-Δ[A306038(n)]`
-/

namespace A108125.P14992351537885559282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317280 n - (f1 (n + 1) - f1 n)

end

end A108125.P14992351537885559282

/-! ## A108125.P2734450143030219844

`A306038(n)+A320344(n)-A317280(n)`
-/

namespace A108125.P2734450143030219844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306038 n + (A320344 n - A317280 n)

end

end A108125.P2734450143030219844

/-! ## A108125.P17097001882520684264

`A306038(n)-(A306038(n+1)-A317280(n))`
-/

namespace A108125.P17097001882520684264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306038 n - (A306038 (n + 1) - A317280 n)

end

end A108125.P17097001882520684264

/-!
# A108126: Maximal number of squares of side 1 in an ellipse of semiaxes n,2n.

The programs for A108126, there is no canonical definition to state claims against.
-/

/-! ## A108126.P5852716729254135088

`A224212(A194268(n)%A079385(n+1))`
-/

namespace A108126.P5852716729254135088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (Int.tmod (A194268 n) (A079385 (n + 1))).toNat

end

end A108126.P5852716729254135088

/-! ## A108126.P15737236672452561602

`A224212(A194268(n))%A222164(n+1)`
-/

namespace A108126.P15737236672452561602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224212 (A194268 n).toNat) (A222164 (n + 1))

end

end A108126.P15737236672452561602

/-! ## A108126.P9234430463515111340

`A224212(A194268(n)^A054576(n+1))`
-/

namespace A108126.P9234430463515111340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 (SequenceMachineLib.roundAway ((A194268 n : ℚ) ^ (A054576 (n + 1) : ℤ))).toNat

end

end A108126.P9234430463515111340

/-!
# A108128: Number of distinct prime factors of concatenated twin primes.

The programs for A108128, the canonical program `A108128.P3599511480061197557` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108128 has offset 1).

The definition of A108128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108128.P3599511480061197557

`A001221(11*A001359(n+1)+2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A108128

/-- `A001221(11*A001359(n+1)+2)` -/
def P3599511480061197557.Spec : Prop :=
  ∀ n, P3599511480061197557.a n = A108128 (n + 1)

theorem P3599511480061197557.correct : P3599511480061197557.Spec := by
  intro n
  simp only [A108128, Nat.add_sub_cancel]

end A108128

/-! ## A108128.P17912540575932748928

`A001221(11*(A014574(n+1)-1)+2)`
-/

namespace A108128.P17912540575932748928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (11 * (A014574 (n + 1) - 1) + 2).toNat

end

end A108128.P17912540575932748928

namespace A108128

/-- `A001221(11*(A014574(n+1)-1)+2)` -/
def P17912540575932748928.Spec : Prop :=
  ∀ n, P17912540575932748928.a n = A108128 (n + 1)

end A108128

/-! ## A108128.P12711407145111624030

`A001221(A017413(A001359(n+1)))`
-/

namespace A108128.P12711407145111624030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A017413 (A001359 (n + 1)).toNat).toNat

end

end A108128.P12711407145111624030

namespace A108128

/-- `A001221(A017413(A001359(n+1)))` -/
def P12711407145111624030.Spec : Prop :=
  ∀ n, P12711407145111624030.a n = A108128 (n + 1)

end A108128

/-! ## A108128.P4616316783541642865

`A001221(A017413(A111166(n+1)))`
-/

namespace A108128.P4616316783541642865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A017413 (A111166 (n + 1)).toNat).toNat

end

end A108128.P4616316783541642865

namespace A108128

/-- `A001221(A017413(A111166(n+1)))` -/
def P4616316783541642865.Spec : Prop :=
  ∀ n, P4616316783541642865.a n = A108128 (n + 1)

end A108128

/-! ## A108128.P7919135207935270610

`A001221(A017413(p?[A120811(n+1)]))`
-/

namespace A108128.P7919135207935270610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A017413 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A108128.P7919135207935270610

namespace A108128

/-- `A001221(A017413(p?[A120811(n+1)]))` -/
def P7919135207935270610.Spec : Prop :=
  ∀ n, P7919135207935270610.a n = A108128 (n + 1)

end A108128

/-! ## A108128.P4245295220701411329

`A001221(A008593(A001359(n+1))+2)`
-/

namespace A108128.P4245295220701411329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008593 (A001359 (n + 1)).toNat + 2).toNat

end

end A108128.P4245295220701411329

namespace A108128

/-- `A001221(A008593(A001359(n+1))+2)` -/
def P4245295220701411329.Spec : Prop :=
  ∀ n, P4245295220701411329.a n = A108128 (n + 1)

end A108128

/-! ## A108128.P16376182580911152803

`A001221(A017413(A006512(n+1)-2))`
-/

namespace A108128.P16376182580911152803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A017413 (A006512 (n + 1) - 2).toNat).toNat

end

end A108128.P16376182580911152803

namespace A108128

/-- `A001221(A017413(A006512(n+1)-2))` -/
def P16376182580911152803.Spec : Prop :=
  ∀ n, P16376182580911152803.a n = A108128 (n + 1)

end A108128

/-! ## A108128.P18115931535311896408

`A001221(A017449(A001359(n+1))-3)`
-/

namespace A108128.P18115931535311896408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A017449 (A001359 (n + 1)).toNat - 3).toNat

end

end A108128.P18115931535311896408

namespace A108128

/-- `A001221(A017449(A001359(n+1))-3)` -/
def P18115931535311896408.Spec : Prop :=
  ∀ n, P18115931535311896408.a n = A108128 (n + 1)

end A108128

/-! ## A108128.P11994675456564373937

`A001221(A017293(A001359(n+1))+A001359(n+1))`
-/

namespace A108128.P11994675456564373937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A017293 (A001359 (n + 1)).toNat + A001359 (n + 1)).toNat

end

end A108128.P11994675456564373937

namespace A108128

/-- `A001221(A017293(A001359(n+1))+A001359(n+1))` -/
def P11994675456564373937.Spec : Prop :=
  ∀ n, P11994675456564373937.a n = A108128 (n + 1)

end A108128

/-!
# A108129: Riesel problem: let k=2n-1; then a(n)=smallest m >= 1 such that k*2^m-1 is prime, or -1 if no such prime exists.

The programs for A108129, there is no canonical definition to state claims against.
-/

/-! ## A108129.P184179164414499556

`A046069(n+1)+char[1]`
-/

namespace A108129.P184179164414499556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046069 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A108129.P184179164414499556

/-! ## A108129.P13251656503000145030

`A040081(Δ[n²])+char[1]`
-/

namespace A108129.P13251656503000145030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A108129.P13251656503000145030

/-! ## A108129.P14479141689515764702

`A040081(Δ[n²]-char[1])`
-/

namespace A108129.P14479141689515764702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A108129.P14479141689515764702

/-! ## A108129.P903462560963997772

`A028310(A046069(n+1))`
-/

namespace A108129.P903462560963997772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A046069 (n + 1)).toNat

end

end A108129.P903462560963997772

/-! ## A108129.P5518646268499910944

`A028310(A040081(2*n+1))`
-/

namespace A108129.P5518646268499910944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A040081 (2 * n + 1)).toNat

end

end A108129.P5518646268499910944

/-! ## A108129.P18412985263670383225

`A063524(n)+A046069(n+1)`
-/

namespace A108129.P18412985263670383225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A046069 (n + 1)

end

end A108129.P18412985263670383225

/-! ## A108129.P13595631247613885702

`A063524(n)+A040081(2*n+1)`
-/

namespace A108129.P13595631247613885702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A040081 (2 * n + 1)

end

end A108129.P13595631247613885702

/-! ## A108129.P15097046987491231121

`gcd(A033322(n+1), A046069(n+1))`
-/

namespace A108129.P15097046987491231121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033322 (n + 1)) (A046069 (n + 1))

end

end A108129.P15097046987491231121

/-! ## A108129.P15285863328918176539

`A156660(2*n)+A040081(2*n+1)`
-/

namespace A108129.P15285863328918176539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (2 * n) + A040081 (2 * n + 1)

end

end A108129.P15285863328918176539

/-! ## A108129.P18146005410488000039

`A178333(A046069(n+1)+1)+A046069(n+1)`
-/

namespace A108129.P18146005410488000039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (A046069 (n + 1) + 1).toNat + A046069 (n + 1)

end

end A108129.P18146005410488000039

/-! ## A108129.P2515108713175458807

`A266070(2*A046069(n+1))+A046069(n+1)`
-/

namespace A108129.P2515108713175458807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 (2 * A046069 (n + 1)).toNat + A046069 (n + 1)

end

end A108129.P2515108713175458807

/-! ## A108129.P5207723346358299448

`gcd(A046069(n+1), A119944(n))`
-/

namespace A108129.P5207723346358299448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046069 (n + 1)) (A119944 n)

end

end A108129.P5207723346358299448

/-!
# A108130: Partial sums of A108129.

The programs for A108130, there is no canonical definition to state claims against.
-/

/-! ## A108130.P13488213353644527761

`∑[A108129(n+1)]`
-/

namespace A108130.P13488213353644527761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108130.P13488213353644527761

/-! ## A108130.P5645841860402594764

`∑[A046069(n+1)+char[1]]`
-/

namespace A108130.P5645841860402594764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046069 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108130.P5645841860402594764

/-! ## A108130.P6534905003101120628

`∑[A028310(A040081(2*n+1))]`
-/

namespace A108130.P6534905003101120628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A040081 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108130.P6534905003101120628

/-! ## A108130.P14332379648588386968

`∑[A063524(n)+A046069(n+1)]`
-/

namespace A108130.P14332379648588386968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A046069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108130.P14332379648588386968

/-! ## A108130.P1277763405075682729

`∑[A063524(n)+A040081(2*n+1)+A010051(2*(n+2))]`
-/

namespace A108130.P1277763405075682729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + (A040081 (2 * n + 1) + A010051 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108130.P1277763405075682729

/-! ## A108130.P16742430249413466821

`∑[A063524(n)+A063377(2*(n+2))+A040081(2*n+1)]`
-/

namespace A108130.P16742430249413466821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + (A063377 (2 * (n + 2)) + A040081 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108130.P16742430249413466821

/-! ## A108130.P4352512533056150201

`∑[A040081(2*n+1)+A010051(2*(n+2))-A159075(n)]`
-/

namespace A108130.P4352512533056150201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (2 * n + 1) + A010051 (2 * (n + 2)) - A159075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108130.P4352512533056150201

/-!
# A108131: Array read by antidiagonals: A(k,n) = C(n^k, n).

The programs for A108131, there is no canonical definition to state claims against.
-/

/-! ## A108131.P15260605197780588519

`C(A009999(A038722(n+1)), A002262(n))`
-/

namespace A108131.P15260605197780588519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A009999 (A038722 (n + 1)).toNat).toNat (A002262 n).toNat

end

end A108131.P15260605197780588519

/-! ## A108131.P6316080897170375227

`C(A009999(A038722(n+1)), A163351(n))`
-/

namespace A108131.P6316080897170375227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A009999 (A038722 (n + 1)).toNat).toNat (A163351 n).toNat

end

end A108131.P6316080897170375227

/-! ## A108131.P587981244568058734

`C(A002262(n)*A004248(n), A002262(n))`
-/

namespace A108131.P587981244568058734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n * A004248 n).toNat (A002262 n).toNat

end

end A108131.P587981244568058734

/-! ## A108131.P11655100536703434510

`C(A114219(n)^A193592(n), A114219(n))`
-/

namespace A108131.P11655100536703434510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A114219 n : ℚ) ^ (A193592 n : ℤ))).toNat (A114219 n).toNat

end

end A108131.P11655100536703434510

/-! ## A108131.P2563784817164743034

`C(A009999(A038722(n+1)), A144328(n+1))`
-/

namespace A108131.P2563784817164743034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A009999 (A038722 (n + 1)).toNat).toNat (A144328 (n + 1)).toNat

end

end A108131.P2563784817164743034

/-!
# A108132: 2-limiting word of the morphism 1->2, 2->3, 3->12233.

The programs for A108132, there is no canonical definition to state claims against.
-/

/-! ## A108132.P11931995737434157559

`A010882(∑[A325174(n+1)²])`
-/

namespace A108132.P11931995737434157559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325174 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108132.P11931995737434157559

/-! ## A108132.P348857443467916322

`A008683(A141018(A141021(n+8)))+2`
-/

namespace A108132.P348857443467916322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A141018 (A141021 (n + 8)).toNat).toNat + 2

end

end A108132.P348857443467916322

/-! ## A108132.P11078172407961798945

`A079729(7*A015904(n+2))`
-/

namespace A108132.P11078172407961798945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079729 (7 * A015904 (n + 2)).toNat

end

end A108132.P11078172407961798945

/-!
# A108133: Trajectory of 1 under the morphism 1->{2}, 2->{3}, 3->{1, 2, 2, 3, 3, 3}.

The programs for A108133, there is no canonical definition to state claims against.
-/

/-! ## A108133.P5494608790075292544

`A059832(A066481(n+3)+A000213(n))`
-/

namespace A108133.P5494608790075292544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 (A066481 (n + 3) + A000213 n).toNat

end

end A108133.P5494608790075292544

/-!
# A108135: Least number (n+1)(n+2)(n+3)...(n+k) >= n^n.

The programs for A108135, there is no canonical definition to state claims against.
-/

/-! ## A108135.P1845494819919634804

`∏{p}[A352881(n+1), A000720(#)+n+1]`
-/

namespace A108135.P1845494819919634804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000720 p + (n + 1 : ℤ))

end

end A108135.P1845494819919634804

/-! ## A108135.P7868727560630766879

`A001813(n+1)/A001813(A051118(n))`
-/

namespace A108135.P7868727560630766879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 (n + 1) : ℚ) / (A001813 (A051118 n).toNat : ℚ)

end

end A108135.P7868727560630766879

/-!
# A108136: a(1)=1; a(2)=1; a(3)=1; a(n) = 3*a(n-1) + 2*a(n-2) + a(n-3).

The programs for A108136, the canonical program `A108136.P418251009397965952` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108136 has offset 1).

The definition of A108136 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2*a(n-2)+a(n-3)` (program `A108136.P418251009397965952`, by `A108136.P418251009397965952.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108136.P418251009397965952

`3*a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108136

/-- `3*a(n-1)+2*a(n-2)+a(n-3)` -/
def P418251009397965952.Spec : Prop :=
  ∀ n, (P418251009397965952.a n : ℤ) = A108136 (n + 1)

theorem P418251009397965952.correct : P418251009397965952.Spec := by
  intro n
  simp only [A108136, Nat.add_sub_cancel]

end A108136

/-! ## A108136.P6272221019976734436

`A070207(n)-A100477(n)`
-/

namespace A108136.P6272221019976734436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070207 n - A100477 n

end

end A108136.P6272221019976734436

namespace A108136

/-- `A070207(n)-A100477(n)` -/
def P6272221019976734436.Spec : Prop :=
  ∀ n, P6272221019976734436.a n = A108136 (n + 1)

end A108136

/-! ## A108136.P13849964901542817927

`Δ[A100477(n+4)]%A010911(n)`
-/

namespace A108136.P13849964901542817927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100477 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A010911 n)

end

end A108136.P13849964901542817927

namespace A108136

/-- `Δ[A100477(n+4)]%A010911(n)` -/
def P13849964901542817927.Spec : Prop :=
  ∀ n, P13849964901542817927.a n = A108136 (n + 1)

end A108136

/-! ## A108136.P748953396211001528

`Δ[Δ[A108153(n+3)]]%A108153(n+2)`
-/

namespace A108136.P748953396211001528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108153 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A108153 (n + 2))

end

end A108136.P748953396211001528

namespace A108136

/-- `Δ[Δ[A108153(n+3)]]%A108153(n+2)` -/
def P748953396211001528.Spec : Prop :=
  ∀ n, P748953396211001528.a n = A108136 (n + 1)

end A108136

/-! ## A108136.P5943044336645986672

`(A070207(n+6)%A100477(n+4))%A100477(n+2)`
-/

namespace A108136.P5943044336645986672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A070207 (n + 6)) (A100477 (n + 4))) (A100477 (n + 2))

end

end A108136.P5943044336645986672

namespace A108136

/-- `(A070207(n+6)%A100477(n+4))%A100477(n+2)` -/
def P5943044336645986672.Spec : Prop :=
  ∀ n, P5943044336645986672.a n = A108136 (n + 1)

end A108136

/-!
# A108137: Primes p such that p + 6^k is composite for all k >= 0.

The programs for A108137, there is no canonical definition to state claims against.
-/

/-! ## A108137.P17133213431669115634

`p?[n*(n+2)%5]`
-/

namespace A108137.P17133213431669115634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 2) % 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A108137.P17133213431669115634

/-! ## A108137.P12062460803626570972

`p?[a(n-1)+5]` with `a(0)=3, a(1)=4`
-/

namespace A108137.P12062460803626570972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A108137.P12062460803626570972

/-! ## A108137.P3973385791610726800

`p?[abs(2-10*n)+1]`
-/

namespace A108137.P3973385791610726800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (10 * n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108137.P3973385791610726800

/-! ## A108137.P6620131049913723341

`record[∑{p}[5*(2*n+1)+4, #]]`
-/

namespace A108137.P6620131049913723341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (2 * n + 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108137.P6620131049913723341

/-! ## A108137.P14797249575678604688

`record[A090368(5*(n+1))]`
-/

namespace A108137.P14797249575678604688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108137.P14797249575678604688

/-!
# A108138: n to the power of the smallest prime divisor of n.

The programs for A108138, there is no canonical definition to state claims against.
-/

/-! ## A108138.P7430322792468239256

`(n+2)^A020639(n+2)`
-/

namespace A108138.P7430322792468239256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A020639 (n + 2) : ℤ)

end

end A108138.P7430322792468239256

/-! ## A108138.P6571520606400964928

`(n+2)^A092028(n+3)`
-/

namespace A108138.P6571520606400964928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A092028 (n + 3) : ℤ)

end

end A108138.P6571520606400964928

/-! ## A108138.P16736441485299893305

`(n+2)^A102457(n+3)`
-/

namespace A108138.P16736441485299893305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A102457 (n + 3) : ℤ)

end

end A108138.P16736441485299893305

/-! ## A108138.P13340234073016036679

`(n+2)^A014673((n+2)²)`
-/

namespace A108138.P13340234073016036679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A014673 ((n + 2) ^ 2) : ℤ)

end

end A108138.P13340234073016036679

/-! ## A108138.P5394237917701309546

`(n+2)^A074828((n+2)²)`
-/

namespace A108138.P5394237917701309546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A074828 ((n + 2) ^ 2) : ℤ)

end

end A108138.P5394237917701309546

/-! ## A108138.P13747365045563364665

`(n+2)^A082067((n+2)²)`
-/

namespace A108138.P13747365045563364665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A082067 ((n + 2) ^ 2) : ℤ)

end

end A108138.P13747365045563364665

/-! ## A108138.P8429668036789457064

`(n+2)^A107286((n+2)²)`
-/

namespace A108138.P8429668036789457064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A107286 ((n + 2) ^ 2) : ℤ)

end

end A108138.P8429668036789457064

/-! ## A108138.P3676689211783451371

`(n+2)^A227196((n+2)²)`
-/

namespace A108138.P3676689211783451371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A227196 ((n + 2) ^ 2) : ℤ)

end

end A108138.P3676689211783451371

/-!
# A108139: n to the power of the largest prime divisor of n.

The programs for A108139, there is no canonical definition to state claims against.
-/

/-! ## A108139.P8601434262133708276

`(n+2)^A006530(n+2)`
-/

namespace A108139.P8601434262133708276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A006530 (n + 2) : ℤ)

end

end A108139.P8601434262133708276

/-! ## A108139.P500025444792388137

`(n+2)^A111089(n+2)`
-/

namespace A108139.P500025444792388137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A111089 (n + 2) : ℤ)

end

end A108139.P500025444792388137

/-! ## A108139.P1654514425576577708

`(n+2)^A197862(n+2)`
-/

namespace A108139.P1654514425576577708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A197862 (n + 2) : ℤ)

end

end A108139.P1654514425576577708

/-! ## A108139.P4919582699554881806

`(n+2)^A324371(n+2)`
-/

namespace A108139.P4919582699554881806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A324371 (n + 2) : ℤ)

end

end A108139.P4919582699554881806

/-! ## A108139.P7276493844874298212

`(n+2)^A327398(n+2)`
-/

namespace A108139.P7276493844874298212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A327398 (n + 2) : ℤ)

end

end A108139.P7276493844874298212

/-!
# A108140: a(n) = 4*a(n-1) -3*a(n-2) -2*a(n-3) +a(n-4), n>8.

The programs for A108140, the canonical program `A108140.P9535309481153986171` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108140 has offset 0).

The definition of A108140 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` (program `A108140.P9535309481153986171`, by `A108140.P9535309481153986171.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108140.P9535309481153986171

`4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=0, a(5)=4, a(6)=17, a(7)=55`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108140

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` -/
def P9535309481153986171.Spec : Prop :=
  ∀ n, P9535309481153986171.a n = A108140 n

theorem P9535309481153986171.correct : P9535309481153986171.Spec := by
  intro n
  simp only [A108140]

end A108140

/-! ## A108140.P7416608509707667297

`abs(A005207(n+1)-A001906(n))`
-/

namespace A108140.P7416608509707667297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005207 (n + 1) - A001906 n|

end

end A108140.P7416608509707667297

namespace A108140

/-- `abs(A005207(n+1)-A001906(n))` -/
def P7416608509707667297.Spec : Prop :=
  ∀ n, P7416608509707667297.a n = A108140 n

end A108140

/-! ## A108140.P2171120401304780354

`abs(A056014(n+1)-A001519(n))`
-/

namespace A108140.P2171120401304780354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056014 (n + 1) - A001519 n|

end

end A108140.P2171120401304780354

namespace A108140

/-- `abs(A056014(n+1)-A001519(n))` -/
def P2171120401304780354.Spec : Prop :=
  ∀ n, P2171120401304780354.a n = A108140 n

end A108140

/-! ## A108140.P17694806987760116079

`abs(A000045(2*n)-A005207(n+1))`
-/

namespace A108140.P17694806987760116079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 (2 * n) - A005207 (n + 1)|

end

end A108140.P17694806987760116079

namespace A108140

/-- `abs(A000045(2*n)-A005207(n+1))` -/
def P17694806987760116079.Spec : Prop :=
  ∀ n, P17694806987760116079.a n = A108140 n

end A108140

/-! ## A108140.P13178678845947707650

`abs(A001906(n)-A001224(A004277(n)))`
-/

namespace A108140.P13178678845947707650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001906 n - A001224 (A004277 n).toNat|

end

end A108140.P13178678845947707650

namespace A108140

/-- `abs(A001906(n)-A001224(A004277(n)))` -/
def P13178678845947707650.Spec : Prop :=
  ∀ n, P13178678845947707650.a n = A108140 n

end A108140

/-! ## A108140.P15452448700319877056

`abs(A005207(n+1)-A000045(A005843(n)))`
-/

namespace A108140.P15452448700319877056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005207 (n + 1) - A000045 (A005843 n).toNat|

end

end A108140.P15452448700319877056

namespace A108140

/-- `abs(A005207(n+1)-A000045(A005843(n)))` -/
def P15452448700319877056.Spec : Prop :=
  ∀ n, P15452448700319877056.a n = A108140 n

end A108140

/-! ## A108140.P9505077252133157203

`abs(A005207(n+1)-Δ[A001519(n)])`
-/

namespace A108140.P9505077252133157203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005207 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A108140.P9505077252133157203

namespace A108140

/-- `abs(A005207(n+1)-Δ[A001519(n)])` -/
def P9505077252133157203.Spec : Prop :=
  ∀ n, P9505077252133157203.a n = A108140 n

end A108140

/-!
# A108141: Least k such that the number (n+1)(n+2)(n+3)...(n+k) >= n^n.

The programs for A108141, there is no canonical definition to state claims against.
-/

/-! ## A108141.P4628692067118580213

`n+2-A055642(A265057(n))`
-/

namespace A108141.P4628692067118580213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A055642 (A265057 n).toNat

end

end A108141.P4628692067118580213

/-! ## A108141.P17832729777641789972

`A000196(∑[A055572(n)+A000010(n+3)])`
-/

namespace A108141.P17832729777641789972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 n + A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108141.P17832729777641789972

/-! ## A108141.P4326698289465492893

`∑[A159689(A025478(3*n+2)²)]`
-/

namespace A108141.P4326698289465492893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159689 (A025478 (3 * n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108141.P4326698289465492893

/-! ## A108141.P15753525555375395186

`∑[A053865(∑[A349130(3*(n+1))])]`
-/

namespace A108141.P15753525555375395186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349130 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053865 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108141.P15753525555375395186

/-! ## A108141.P7024957710857577321

`∑[A066247(A198778(n+1)+(n+1)^3)]`
-/

namespace A108141.P7024957710857577321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A198778 (n + 1) + ((n + 1) ^ 3 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108141.P7024957710857577321

/-!
# A108142: a[1] = 1; a[2] = 1; a[3] = 1; a[4] = 1; a[5] = 1; a[6] = 1; for n >= 7, a[n] = 6*a[n - 1] - 5*a[n - 2] - 4*a[n - 3] - 3*a[ n - 4] + 2*a[n - 5] + a[n - 6]; then take absolute values.

The programs for A108142, there is no canonical definition to state claims against.
-/

/-! ## A108142.P11508889359906024020

`A215800(C(n, 6)+1)`
-/

namespace A108142.P11508889359906024020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (Nat.choose n 6 + 1)

end

end A108142.P11508889359906024020

/-! ## A108142.P13289030230000967468

`A215800(A212385(n))`
-/

namespace A108142.P13289030230000967468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (A212385 n).toNat

end

end A108142.P13289030230000967468

/-! ## A108142.P4724059910162237277

`A215800(A306847(n))`
-/

namespace A108142.P4724059910162237277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (A306847 n).toNat

end

end A108142.P4724059910162237277

/-! ## A108142.P14909107014717551850

`A215800(A333882(n))`
-/

namespace A108142.P14909107014717551850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (A333882 n).toNat

end

end A108142.P14909107014717551850

/-! ## A108142.P4060313870013731818

`A215800(A364523(n))`
-/

namespace A108142.P4060313870013731818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (A364523 n).toNat

end

end A108142.P4060313870013731818

/-!
# A108143: a(n)= 5*a(n-1) -a(n-2) -a(n-3).

The programs for A108143, the canonical program `A108143.P12323149210313874774` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108143 has offset 0).

The definition of A108143 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-a(n-2)-a(n-3)` (program `A108143.P12323149210313874774`, by `A108143.P12323149210313874774.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108143.P12323149210313874774

`5*a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108143

/-- `5*a(n-1)-a(n-2)-a(n-3)` -/
def P12323149210313874774.Spec : Prop :=
  ∀ n, P12323149210313874774.a n = A108143 n

theorem P12323149210313874774.correct : P12323149210313874774.Spec := by
  intro n
  simp only [A108143]

end A108143

/-! ## A108143.P8988860971141563290

`A081753(A121517(n))`
-/

namespace A108143.P8988860971141563290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A121517 n).toNat

end

end A108143.P8988860971141563290

namespace A108143

/-- `A081753(A121517(n))` -/
def P8988860971141563290.Spec : Prop :=
  ∀ n, P8988860971141563290.a n = A108143 n

end A108143

/-!
# A108144: Numbers n such that (n-1)/P(n-1) is a power of two > 1, where P(n) is the largest prime factor of n.

The programs for A108144, the canonical program `A108144.P14357558413651915361` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108144 has offset 1).

The definition of A108144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108144.P3020638900469392722

`A192868(n+1)+2`
-/

namespace A108144.P3020638900469392722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1) + 2

end

end A108144.P3020638900469392722

namespace A108144

/-- `A192868(n+1)+2` -/
def P3020638900469392722.Spec : Prop :=
  ∀ n, P3020638900469392722.a n = A108144 (n + 1)

end A108144

/-! ## A108144.P14357558413651915361

`2*A093641(n+2)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108144

/-- `2*A093641(n+2)+1` -/
def P14357558413651915361.Spec : Prop :=
  ∀ n, P14357558413651915361.a n = A108144 (n + 1)

theorem P14357558413651915361.correct : P14357558413651915361.Spec := by
  intro n
  simp only [A108144, Nat.add_sub_cancel]

end A108144

/-! ## A108144.P3855994685946175234

`eq[2, A006530((n+1)/A006530(n+1))]+2`
-/

namespace A108144.P3855994685946175234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A108144.P3855994685946175234

namespace A108144

/-- `eq[2, A006530((n+1)/A006530(n+1))]+2` -/
def P3855994685946175234.Spec : Prop :=
  ∀ n, (P3855994685946175234.a n : ℤ) = A108144 (n + 1)

end A108144

/-! ## A108144.P10060000222526292477

`∩[A093641(n+2)+1, A192863(n+2)]`
-/

namespace A108144.P10060000222526292477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108144.P10060000222526292477

namespace A108144

/-- `∩[A093641(n+2)+1, A192863(n+2)]` -/
def P10060000222526292477.Spec : Prop :=
  ∀ n, (P10060000222526292477.a n : ℤ) = A108144 (n + 1)

end A108144

/-! ## A108144.P6064698384196228394

`eq[2, A322813(n+1)]+2`
-/

namespace A108144.P6064698384196228394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A108144.P6064698384196228394

namespace A108144

/-- `eq[2, A322813(n+1)]+2` -/
def P6064698384196228394.Spec : Prop :=
  ∀ n, (P6064698384196228394.a n : ℤ) = A108144 (n + 1)

end A108144

/-! ## A108144.P11942926516045357262

`A130773(A093641(n+2))`
-/

namespace A108144.P11942926516045357262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A093641 (n + 2)).toNat

end

end A108144.P11942926516045357262

namespace A108144

/-- `A130773(A093641(n+2))` -/
def P11942926516045357262.Spec : Prop :=
  ∀ n, P11942926516045357262.a n = A108144 (n + 1)

end A108144

/-! ## A108144.P4039421851230020500

`A004273(A093641(n+2)+1)`
-/

namespace A108144.P4039421851230020500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A093641 (n + 2) + 1).toNat

end

end A108144.P4039421851230020500

namespace A108144

/-- `A004273(A093641(n+2)+1)` -/
def P4039421851230020500.Spec : Prop :=
  ∀ n, P4039421851230020500.a n = A108144 (n + 1)

end A108144

/-! ## A108144.P13926824749293841079

`eq[A005171(n+1), A257990(n+1)]+2`
-/

namespace A108144.P13926824749293841079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A108144.P13926824749293841079

namespace A108144

/-- `eq[A005171(n+1), A257990(n+1)]+2` -/
def P13926824749293841079.Spec : Prop :=
  ∀ n, (P13926824749293841079.a n : ℤ) = A108144 (n + 1)

end A108144

/-! ## A108144.P210186074736746833

`eq[2, A014963(A329888(n+1))]+2`
-/

namespace A108144.P210186074736746833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A329888 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A108144.P210186074736746833

namespace A108144

/-- `eq[2, A014963(A329888(n+1))]+2` -/
def P210186074736746833.Spec : Prop :=
  ∀ n, (P210186074736746833.a n : ℤ) = A108144 (n + 1)

end A108144

/-! ## A108144.P308207138538083430

`eq[A257990(n+1), A288872(n)]+2`
-/

namespace A108144.P308207138538083430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A108144.P308207138538083430

namespace A108144

/-- `eq[A257990(n+1), A288872(n)]+2` -/
def P308207138538083430.Spec : Prop :=
  ∀ n, (P308207138538083430.a n : ℤ) = A108144 (n + 1)

end A108144

/-! ## A108144.P4387839126539660805

`eq[2, A087039(n+1)]+2`
-/

namespace A108144.P4387839126539660805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A108144.P4387839126539660805

namespace A108144

/-- `eq[2, A087039(n+1)]+2` -/
def P4387839126539660805.Spec : Prop :=
  ∀ n, (P4387839126539660805.a n : ℤ) = A108144 (n + 1)

end A108144

/-! ## A108144.P7282005398336278736

`A009056(A192868(n+1))`
-/

namespace A108144.P7282005398336278736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A192868 (n + 1)).toNat

end

end A108144.P7282005398336278736

namespace A108144

/-- `A009056(A192868(n+1))` -/
def P7282005398336278736.Spec : Prop :=
  ∀ n, P7282005398336278736.a n = A108144 (n + 1)

end A108144

/-! ## A108144.P2000135042074365744

`eq[2, A014963(A052126(n+1))]+2`
-/

namespace A108144.P2000135042074365744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A052126 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A108144.P2000135042074365744

namespace A108144

/-- `eq[2, A014963(A052126(n+1))]+2` -/
def P2000135042074365744.Spec : Prop :=
  ∀ n, (P2000135042074365744.a n : ℤ) = A108144 (n + 1)

end A108144

/-! ## A108144.P1032593280294001917

`eq[A091090(n), A144494(n+1)]+2`
-/

namespace A108144.P1032593280294001917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A108144.P1032593280294001917

namespace A108144

/-- `eq[A091090(n), A144494(n+1)]+2` -/
def P1032593280294001917.Spec : Prop :=
  ∀ n, (P1032593280294001917.a n : ℤ) = A108144 (n + 1)

end A108144

/-! ## A108144.P332544179492929216

`eq[A027642(n), A257990(n+1)]+2`
-/

namespace A108144.P332544179492929216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A108144.P332544179492929216

namespace A108144

/-- `eq[A027642(n), A257990(n+1)]+2` -/
def P332544179492929216.Spec : Prop :=
  ∀ n, (P332544179492929216.a n : ℤ) = A108144 (n + 1)

end A108144

/-! ## A108144.P12247212561789983609

`eq[A001227(n+1), A087624(n+1)]+2`
-/

namespace A108144.P12247212561789983609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A108144.P12247212561789983609

namespace A108144

/-- `eq[A001227(n+1), A087624(n+1)]+2` -/
def P12247212561789983609.Spec : Prop :=
  ∀ n, (P12247212561789983609.a n : ℤ) = A108144 (n + 1)

end A108144

/-! ## A108144.P8229872974649924419

`eq[A033272(n+1), A066247(n+1)]+2`
-/

namespace A108144.P8229872974649924419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A108144.P8229872974649924419

namespace A108144

/-- `eq[A033272(n+1), A066247(n+1)]+2` -/
def P8229872974649924419.Spec : Prop :=
  ∀ n, (P8229872974649924419.a n : ℤ) = A108144 (n + 1)

end A108144

/-! ## A108144.P10015530395643594825

`eq[A049298(n+1), A054844(n+1)]+2`
-/

namespace A108144.P10015530395643594825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A108144.P10015530395643594825

namespace A108144

/-- `eq[A049298(n+1), A054844(n+1)]+2` -/
def P10015530395643594825.Spec : Prop :=
  ∀ n, (P10015530395643594825.a n : ℤ) = A108144 (n + 1)

end A108144

/-! ## A108144.P5267154927245513945

`lt[A003958(n+1), A006530(A032742(n+1))]+2`
-/

namespace A108144.P5267154927245513945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A032742 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A108144.P5267154927245513945

namespace A108144

/-- `lt[A003958(n+1), A006530(A032742(n+1))]+2` -/
def P5267154927245513945.Spec : Prop :=
  ∀ n, (P5267154927245513945.a n : ℤ) = A108144 (n + 1)

end A108144

/-! ## A108144.P8261215150775913524

`eq[A106458(n)², A325135(n+1)]+2`
-/

namespace A108144.P8261215150775913524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A108144.P8261215150775913524

namespace A108144

/-- `eq[A106458(n)², A325135(n+1)]+2` -/
def P8261215150775913524.Spec : Prop :=
  ∀ n, (P8261215150775913524.a n : ℤ) = A108144 (n + 1)

end A108144

/-!
# A108146: a(n) = 4*a(n-1) - a(n-2) - a(n-3).

The programs for A108146, the canonical program `A108146.P1228236711270220498` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108146 has offset 0).

The definition of A108146 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)-a(n-3)` (program `A108146.P1228236711270220498`, by `A108146.P1228236711270220498.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108146.P1228236711270220498

`4*a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108146

/-- `4*a(n-1)-a(n-2)-a(n-3)` -/
def P1228236711270220498.Spec : Prop :=
  ∀ n, P1228236711270220498.a n = A108146 n

theorem P1228236711270220498.correct : P1228236711270220498.Spec := by
  intro n
  simp only [A108146]

end A108146

/-! ## A108146.P5106918748978331972

`a(n-1)/(1/2)²-a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A108146.P5106918748978331972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2) - a (n - 3)

end

end A108146.P5106918748978331972

namespace A108146

/-- `a(n-1)/(1/2)²-a(n-2)-a(n-3)` -/
def P5106918748978331972.Spec : Prop :=
  ∀ n, P5106918748978331972.a n = (A108146 n : ℚ)

end A108146

/-! ## A108146.P5299360302876423970

`A226233(A191280(n+1))`
-/

namespace A108146.P5299360302876423970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (A191280 (n + 1)).toNat

end

end A108146.P5299360302876423970

namespace A108146

/-- `A226233(A191280(n+1))` -/
def P5299360302876423970.Spec : Prop :=
  ∀ n, P5299360302876423970.a n = A108146 n

end A108146

/-!
# A108149: Triangle T(n,k), 0<=k<=n, read by rows, defined by: T(0,0)=1,T(n,k)= 0 if n

The programs for A108149, there is no canonical definition to state claims against.
-/

/-! ## A108149.P14143202550673017656

`A008683((2-char[2^n-1])*A036413(n+1))`
-/

namespace A108149.P14143202550673017656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A036413 (n + 1)).toNat

end

end A108149.P14143202550673017656

/-! ## A108149.P12147726588185656917

`A127895(n)%A046523(A059801(n+1))`
-/

namespace A108149.P12147726588185656917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127895 n) (A046523 (A059801 (n + 1)).toNat)

end

end A108149.P12147726588185656917

/-! ## A108149.P1838588812943260901

`(A097807(n)*A127893(n))%A336500(A349751(n+1))`
-/

namespace A108149.P1838588812943260901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097807 n * A127893 n) (A336500 (A349751 (n + 1)).toNat)

end

end A108149.P1838588812943260901

/-! ## A108149.P8372424828644604154

`A008683(A026699(n))^A025581(n)`
-/

namespace A108149.P8372424828644604154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A026699 n).toNat : ℚ) ^ (A025581 n : ℤ)

end

end A108149.P8372424828644604154

/-! ## A108149.P3274633949574430082

`A008683(A026699(n))^A089840(n)`
-/

namespace A108149.P3274633949574430082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A026699 n).toNat : ℚ) ^ (A089840 n : ℤ)

end

end A108149.P3274633949574430082

/-!
# A108150: Number of different nonnegative values taken by the determinant of a real (0,1)-matrix of order n.

The programs for A108150, there is no canonical definition to state claims against.
-/

/-! ## A108150.P2756776689803784355

`ceil(cosh(log(A089472(n))))`
-/

namespace A108150.P2756776689803784355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A089472 n : ℝ))⌉

end

end A108150.P2756776689803784355

/-! ## A108150.P15828990293836328117

`A008619(A089472(n))`
-/

namespace A108150.P15828990293836328117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A089472 n).toNat

end

end A108150.P15828990293836328117

/-! ## A108150.P7669130759718115594

`A029578(A089472(n)+1)`
-/

namespace A108150.P7669130759718115594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A089472 n + 1).toNat

end

end A108150.P7669130759718115594

/-! ## A108150.P18024327532739246430

`A060681(A089472(n)+1)`
-/

namespace A108150.P18024327532739246430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A089472 n + 1).toNat

end

end A108150.P18024327532739246430

/-! ## A108150.P18148327599378899725

`A065033(A089472(n)+1)`
-/

namespace A108150.P18148327599378899725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A089472 n + 1).toNat

end

end A108150.P18148327599378899725

/-!
# A108151: a(n) = n^2 + 3*n + 1 if prime or 0 if composite.

The programs for A108151, the canonical program `A108151.P16650730596409365169` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108151 has offset 1).

The definition of A108151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108151.P13202563398386943422

`C(A020639(A028387(n+1)), (n+2)²+n)`
-/

namespace A108151.P13202563398386943422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (A028387 (n + 1)).toNat).toNat ((n + 2) ^ 2 + n)

end

end A108151.P13202563398386943422

namespace A108151

/-- `C(A020639(A028387(n+1)), (n+2)²+n)` -/
def P13202563398386943422.Spec : Prop :=
  ∀ n, (P13202563398386943422.a n : ℤ) = A108151 (n + 1)

end A108151

/-! ## A108151.P16650730596409365169

`A010051(A028387(n+1))*A028387(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108151

/-- `A010051(A028387(n+1))*A028387(n+1)` -/
def P16650730596409365169.Spec : Prop :=
  ∀ n, P16650730596409365169.a n = A108151 (n + 1)

theorem P16650730596409365169.correct : P16650730596409365169.Spec := by
  intro n
  simp only [A108151, Nat.add_sub_cancel]

end A108151

/-! ## A108151.P5221719744687678137

`A010051(A165900(n+3))*A165900(n+3)`
-/

namespace A108151.P5221719744687678137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A165900 (n + 3)).toNat * A165900 (n + 3)

end

end A108151.P5221719744687678137

namespace A108151

/-- `A010051(A165900(n+3))*A165900(n+3)` -/
def P5221719744687678137.Spec : Prop :=
  ∀ n, P5221719744687678137.a n = A108151 (n + 1)

end A108151

/-! ## A108151.P1695961707002196074

`A010051(A024206(2*(n+2)))*A024206(2*(n+2))`
-/

namespace A108151.P1695961707002196074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A024206 (2 * (n + 2))).toNat * A024206 (2 * (n + 2))

end

end A108151.P1695961707002196074

namespace A108151

/-- `A010051(A024206(2*(n+2)))*A024206(2*(n+2))` -/
def P1695961707002196074.Spec : Prop :=
  ∀ n, P1695961707002196074.a n = A108151 (n + 1)

end A108151

/-! ## A108151.P5408258441062527219

`A010051(A140144(2*n+3))*A140144(2*n+3)`
-/

namespace A108151.P5408258441062527219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A140144 (2 * n + 3)).toNat * A140144 (2 * n + 3)

end

end A108151.P5408258441062527219

namespace A108151

/-- `A010051(A140144(2*n+3))*A140144(2*n+3)` -/
def P5408258441062527219.Spec : Prop :=
  ∀ n, P5408258441062527219.a n = A108151 (n + 1)

end A108151

/-! ## A108151.P4329245159855044115

`A085090(C(n+3, 2))`
-/

namespace A108151.P4329245159855044115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (Nat.choose (n + 3) 2)

end

end A108151.P4329245159855044115

namespace A108151

/-- `A085090(C(n+3, 2))` -/
def P4329245159855044115.Spec : Prop :=
  ∀ n, P4329245159855044115.a n = A108151 (n + 1)

end A108151

/-! ## A108151.P8048951386626623789

`A085090(A253145(n+1))`
-/

namespace A108151.P8048951386626623789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (A253145 (n + 1)).toNat

end

end A108151.P8048951386626623789

namespace A108151

/-- `A085090(A253145(n+1))` -/
def P8048951386626623789.Spec : Prop :=
  ∀ n, P8048951386626623789.a n = A108151 (n + 1)

end A108151

/-! ## A108151.P2599469142351393972

`C(A166333((n+2)²+n), (n+2)²+n)`
-/

namespace A108151.P2599469142351393972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A166333 ((n + 2) ^ 2 + n)).toNat ((n + 2) ^ 2 + n)

end

end A108151.P2599469142351393972

namespace A108151

/-- `C(A166333((n+2)²+n), (n+2)²+n)` -/
def P2599469142351393972.Spec : Prop :=
  ∀ n, (P2599469142351393972.a n : ℤ) = A108151 (n + 1)

end A108151

/-! ## A108151.P16859166388117532484

`A061397(n*(n+5)+5)`
-/

namespace A108151.P16859166388117532484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n * (n + 5) + 5)

end

end A108151.P16859166388117532484

namespace A108151

/-- `A061397(n*(n+5)+5)` -/
def P16859166388117532484.Spec : Prop :=
  ∀ n, P16859166388117532484.a n = A108151 (n + 1)

end A108151

/-! ## A108151.P15515800726381117391

`∑{p}[A061397(A028387(n+1)), #]`
-/

namespace A108151.P15515800726381117391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A028387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A108151.P15515800726381117391

namespace A108151

/-- `∑{p}[A061397(A028387(n+1)), #]` -/
def P15515800726381117391.Spec : Prop :=
  ∀ n, (P15515800726381117391.a n : ℤ) = A108151 (n + 1)

end A108151

/-!
# A108152: a(n)= 3*a(n-1) +2*a(n-2) +a(n-3).

The programs for A108152, the canonical program `A108152.P148049312336567915` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108152 has offset 0).

The definition of A108152 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2*a(n-2)+a(n-3)` (program `A108152.P148049312336567915`, by `A108152.P148049312336567915.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108152.P148049312336567915

`3*a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108152

/-- `3*a(n-1)+2*a(n-2)+a(n-3)` -/
def P148049312336567915.Spec : Prop :=
  ∀ n, (P148049312336567915.a n : ℤ) = A108152 n

theorem P148049312336567915.correct : P148049312336567915.Spec := by
  intro n
  simp only [A108152]

end A108152

/-! ## A108152.P7318830105865721588

`A108153(n+1)-3*A108153(n)`
-/

namespace A108152.P7318830105865721588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108153 (n + 1) - 3 * A108153 n

end

end A108152.P7318830105865721588

namespace A108152

/-- `A108153(n+1)-3*A108153(n)` -/
def P7318830105865721588.Spec : Prop :=
  ∀ n, P7318830105865721588.a n = A108152 n

end A108152

/-! ## A108152.P16683924666253893438

`A100477(n+1)-∑[2*A100477(n)]`
-/

namespace A108152.P16683924666253893438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100477 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108152.P16683924666253893438

namespace A108152

/-- `A100477(n+1)-∑[2*A100477(n)]` -/
def P16683924666253893438.Spec : Prop :=
  ∀ n, P16683924666253893438.a n = A108152 n

end A108152

/-! ## A108152.P9731119967137332151

`A100477(n+1)-(A108153(n)+A108153(n))`
-/

namespace A108152.P9731119967137332151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100477 (n + 1) - (A108153 n + A108153 n)

end

end A108152.P9731119967137332151

namespace A108152

/-- `A100477(n+1)-(A108153(n)+A108153(n))` -/
def P9731119967137332151.Spec : Prop :=
  ∀ n, P9731119967137332151.a n = A108152 n

end A108152

/-! ## A108152.P6758839229752811461

`Δ[A108153(n)]-2*A108153(n)`
-/

namespace A108152.P6758839229752811461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A108153 n

end

end A108152.P6758839229752811461

namespace A108152

/-- `Δ[A108153(n)]-2*A108153(n)` -/
def P6758839229752811461.Spec : Prop :=
  ∀ n, P6758839229752811461.a n = A108152 n

end A108152

/-! ## A108152.P5161861711212821673

`A100477(n+1)-2*Δ[A108136(n+2)/5]`
-/

namespace A108152.P5161861711212821673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108136 (n + 2) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100477 (n + 1) : ℚ) - 2 * (f1 (n + 1) - f1 n)

end

end A108152.P5161861711212821673

namespace A108152

/-- `A100477(n+1)-2*Δ[A108136(n+2)/5]` -/
def P5161861711212821673.Spec : Prop :=
  ∀ n, P5161861711212821673.a n = (A108152 n : ℚ)

end A108152

/-!
# A108153: a(n) = 3*a(n-1) + 2*a(n-2) + a(n-3).

The programs for A108153, the canonical program `A108153.P5914275477311953527` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108153 has offset 0).

The definition of A108153 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2*a(n-2)+a(n-3)` (program `A108153.P5914275477311953527`, by `A108153.P5914275477311953527.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108153.P5914275477311953527

`3*a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108153

/-- `3*a(n-1)+2*a(n-2)+a(n-3)` -/
def P5914275477311953527.Spec : Prop :=
  ∀ n, (P5914275477311953527.a n : ℤ) = A108153 n

theorem P5914275477311953527.correct : P5914275477311953527.Spec := by
  intro n
  simp only [A108153]

end A108153

/-! ## A108153.P4902820731864287477

`∑[A100477(n)]`
-/

namespace A108153.P4902820731864287477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108153.P4902820731864287477

namespace A108153

/-- `∑[A100477(n)]` -/
def P4902820731864287477.Spec : Prop :=
  ∀ n, P4902820731864287477.a n = A108153 n

end A108153

/-! ## A108153.P6422360343533984198

`∑[∑[A108136(n+1)]-1]`
-/

namespace A108153.P6422360343533984198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108136 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108153.P6422360343533984198

namespace A108153

/-- `∑[∑[A108136(n+1)]-1]` -/
def P6422360343533984198.Spec : Prop :=
  ∀ n, P6422360343533984198.a n = A108153 n

end A108153

/-! ## A108153.P11930752335514490806

`∑[∑[A057427(n)*A108136(n+1)]]`
-/

namespace A108153.P11930752335514490806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A108136 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108153.P11930752335514490806

namespace A108153

/-- `∑[∑[A057427(n)*A108136(n+1)]]` -/
def P11930752335514490806.Spec : Prop :=
  ∀ n, P11930752335514490806.a n = A108153 n

end A108153

/-! ## A108153.P8810598597347331948

`A108152(n+1)+A108152(n)-A108136(n+2)`
-/

namespace A108153.P8810598597347331948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108152 (n + 1) + (A108152 n - A108136 (n + 2))

end

end A108153.P8810598597347331948

namespace A108153

/-- `A108152(n+1)+A108152(n)-A108136(n+2)` -/
def P8810598597347331948.Spec : Prop :=
  ∀ n, P8810598597347331948.a n = A108153 n

end A108153

/-! ## A108153.P1763481055943599775

`Δ[A108136(n+2)/5]`
-/

namespace A108153.P1763481055943599775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108136 (n + 2) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108153.P1763481055943599775

namespace A108153

/-- `Δ[A108136(n+2)/5]` -/
def P1763481055943599775.Spec : Prop :=
  ∀ n, P1763481055943599775.a n = (A108153 n : ℚ)

end A108153

/-! ## A108153.P4378441123007599430

`∑[∑[A108136(n+1)%A000302(n)]]`
-/

namespace A108153.P4378441123007599430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108136 (n + 1)) (A000302 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108153.P4378441123007599430

namespace A108153

/-- `∑[∑[A108136(n+1)%A000302(n)]]` -/
def P4378441123007599430.Spec : Prop :=
  ∀ n, P4378441123007599430.a n = A108153 n

end A108153

/-!
# A108154: a(n) = n^2 - n + 1 if prime else 0.

The programs for A108154, the canonical program `A108154.P5474788176503657523` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108154 has offset 1).

The definition of A108154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108154.P1886873591736211913

`(∑[2*n]+1)*char[A002384(n+1)]`
-/

namespace A108154.P1886873591736211913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A108154.P1886873591736211913

namespace A108154

/-- `(∑[2*n]+1)*char[A002384(n+1)]` -/
def P1886873591736211913.Spec : Prop :=
  ∀ n, (P1886873591736211913.a n : ℤ) = A108154 (n + 1)

end A108154

/-! ## A108154.P11241429374680445720

`char[A002384(n+1)]*A182047(n)`
-/

namespace A108154.P11241429374680445720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A182047 n

end

end A108154.P11241429374680445720

namespace A108154

/-- `char[A002384(n+1)]*A182047(n)` -/
def P11241429374680445720.Spec : Prop :=
  ∀ n, P11241429374680445720.a n = A108154 (n + 1)

end A108154

/-! ## A108154.P5474788176503657523

`char[eq[1, A289356(n)]]*A182047(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A108154

/-- `char[eq[1, A289356(n)]]*A182047(n)` -/
def P5474788176503657523.Spec : Prop :=
  ∀ n, P5474788176503657523.a n = A108154 (n + 1)

theorem P5474788176503657523.correct : P5474788176503657523.Spec := by
  intro n
  simp only [A108154, Nat.add_sub_cancel]

end A108154

/-! ## A108154.P1360758003434531215

`char[A002384(n+1)]*A081256(n+1)`
-/

namespace A108154.P1360758003434531215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A081256 (n + 1)

end

end A108154.P1360758003434531215

namespace A108154

/-- `char[A002384(n+1)]*A081256(n+1)` -/
def P1360758003434531215.Spec : Prop :=
  ∀ n, P1360758003434531215.a n = A108154 (n + 1)

end A108154

/-! ## A108154.P15118837057143161068

`char[eq[1, A289356(n)]]*A081256(n+1)`
-/

namespace A108154.P15118837057143161068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A081256 (n + 1)

end

end A108154.P15118837057143161068

namespace A108154

/-- `char[eq[1, A289356(n)]]*A081256(n+1)` -/
def P15118837057143161068.Spec : Prop :=
  ∀ n, P15118837057143161068.a n = A108154 (n + 1)

end A108154

/-! ## A108154.P5163481363967126579

`(∑[2*n]+1)*A010051(∑[2*n]+1)`
-/

namespace A108154.P5163481363967126579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A010051 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A108154.P5163481363967126579

namespace A108154

/-- `(∑[2*n]+1)*A010051(∑[2*n]+1)` -/
def P5163481363967126579.Spec : Prop :=
  ∀ n, P5163481363967126579.a n = A108154 (n + 1)

end A108154

/-! ## A108154.P6380401909550732479

`A085090(∑[n]+1)`
-/

namespace A108154.P6380401909550732479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A108154.P6380401909550732479

namespace A108154

/-- `A085090(∑[n]+1)` -/
def P6380401909550732479.Spec : Prop :=
  ∀ n, P6380401909550732479.a n = A108154 (n + 1)

end A108154

/-! ## A108154.P2851297048167279549

`A061397(∑[2*n]+1)`
-/

namespace A108154.P2851297048167279549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A108154.P2851297048167279549

namespace A108154

/-- `A061397(∑[2*n]+1)` -/
def P2851297048167279549.Spec : Prop :=
  ∀ n, P2851297048167279549.a n = A108154 (n + 1)

end A108154

/-! ## A108154.P9033251010863171496

`∑{p}[A014973(n²+1+n), #]`
-/

namespace A108154.P9033251010863171496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n ^ 2 + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A108154.P9033251010863171496

namespace A108154

/-- `∑{p}[A014973(n²+1+n), #]` -/
def P9033251010863171496.Spec : Prop :=
  ∀ n, (P9033251010863171496.a n : ℤ) = A108154 (n + 1)

end A108154

/-! ## A108154.P12699349981919918438

`(∑[2*n]+1)%A014963(∑[2*n]+1)²`
-/

namespace A108154.P12699349981919918438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (A014963 (∑ j ∈ Finset.range (n + 1), f2 j + 1) ^ 2)

end

end A108154.P12699349981919918438

namespace A108154

/-- `(∑[2*n]+1)%A014963(∑[2*n]+1)²` -/
def P12699349981919918438.Spec : Prop :=
  ∀ n, P12699349981919918438.a n = A108154 (n + 1)

end A108154

/-! ## A108154.P7700530581219594815

`A053139(A110560(∑[2*n]))`
-/

namespace A108154.P7700530581219594815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (A110560 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A108154.P7700530581219594815

namespace A108154

/-- `A053139(A110560(∑[2*n]))` -/
def P7700530581219594815.Spec : Prop :=
  ∀ n, P7700530581219594815.a n = A108154 (n + 1)

end A108154

/-! ## A108154.P2749535746089702184

`A008472(A089026(∑[2*n]+1))`
-/

namespace A108154.P2749535746089702184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A089026 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A108154.P2749535746089702184

namespace A108154

/-- `A008472(A089026(∑[2*n]+1))` -/
def P2749535746089702184.Spec : Prop :=
  ∀ n, P2749535746089702184.a n = A108154 (n + 1)

end A108154

/-!
# A108155: Numbers of the forms 2^n-2, 2^n-1, 2^n, 2^n+1 and 2^n+2.

The programs for A108155, there is no canonical definition to state claims against.
-/

/-! ## A108155.P9657726756290476097

`lt[A006257(n+1), 10]-1`
-/

namespace A108155.P9657726756290476097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A108155.P9657726756290476097

/-! ## A108155.P15182480239763743525

`lt[A053645(n+1), 5]-1`
-/

namespace A108155.P15182480239763743525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A108155.P15182480239763743525

/-! ## A108155.P14995252211601037423

`lt[A292601(n+1), 9]-1`
-/

namespace A108155.P14995252211601037423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292601 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A108155.P14995252211601037423

/-! ## A108155.P13327695224374267691

`eq[1, A195177(A062050(n+1))]-1`
-/

namespace A108155.P13327695224374267691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A062050 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A108155.P13327695224374267691

/-! ## A108155.P7167946185739457186

`record[n-A062828(A164089(n+1)+1)²]`
-/

namespace A108155.P7167946185739457186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A062828 (A164089 (n + 1) + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108155.P7167946185739457186

/-!
# A108158: Triangular numbers whose 10's complements are squares.

The programs for A108158, there is no canonical definition to state claims against.
-/

/-! ## A108158.P9346608655636053025

`record[C(A351080(2*n), A115241(3*(n+1)))]`
-/

namespace A108158.P9346608655636053025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A351080 (2 * n)).toNat (A115241 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108158.P9346608655636053025

/-!
# A108160: Squarefree integers m congruent to 5 modulo 8 such that the minimal solution of the Pell equation x^2 - m*y^2 = +-4 has both x and y even.

The programs for A108160, there is no canonical definition to state claims against.
-/

/-! ## A108160.P9218376268371643863

`∩[A004770(n+1), A107998(n+1)]`
-/

namespace A108160.P9218376268371643863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108160.P9218376268371643863

/-! ## A108160.P8029273288578738536

`∩[A047608(n+1), A107998(n+1)]`
-/

namespace A108160.P8029273288578738536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108160.P8029273288578738536

/-! ## A108160.P4447947386796875847

`∩[A047609(n+1), A107998(n+1)]`
-/

namespace A108160.P4447947386796875847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108160.P4447947386796875847

/-! ## A108160.P13259184272419536703

`∩[A047615(n+1), A107998(n+1)]`
-/

namespace A108160.P13259184272419536703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108160.P13259184272419536703

/-! ## A108160.P658052099737540171

`∩[A055045(n+1), A107998(n+1)]`
-/

namespace A108160.P658052099737540171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108160.P658052099737540171

/-!
# A108161: Partial sums of the positive integers n according to the rule: if n is square then add sqrt(n) else add n.

The programs for A108161, there is no canonical definition to state claims against.
-/

/-! ## A108161.P1757748172294503271

`∑[sqrt(n^(2-char[n²]))]`
-/

namespace A108161.P1757748172294503271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n : ℚ) ^ (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108161.P1757748172294503271

/-! ## A108161.P16163518236335003571

`floor(∑[sqrt(n)^(2/(char[n²]+1)!)])`
-/

namespace A108161.P16163518236335003571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) ^ (2 / (Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1) : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A108161.P16163518236335003571

/-! ## A108161.P127518642918963896

`round(∑[sqrt(n)^(2/(char[n²]+1)!)])`
-/

namespace A108161.P127518642918963896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) ^ (2 / (Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1) : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108161.P127518642918963896

/-! ## A108161.P17507719541211088429

`a(n-1)+sqrt(n^(2-char[n²]))` with `a(0)=0`
-/

namespace A108161.P17507719541211088429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Real.sqrt ((n : ℚ) ^ (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ) : ℝ)

end

end A108161.P17507719541211088429

/-! ## A108161.P3384584581775788380

`floor(∑[n/(C(2, n+2)+n^(char[n²]/2))])`
-/

namespace A108161.P3384584581775788380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / ((Nat.choose 2 (n + 2) : ℝ) + (n : ℝ) ^ (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A108161.P3384584581775788380

/-! ## A108161.P1683801313337611524

`ceil(∑[n/(C(2, n+2)+n^(char[n²]/2))])`
-/

namespace A108161.P1683801313337611524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / ((Nat.choose 2 (n + 2) : ℝ) + (n : ℝ) ^ (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A108161.P1683801313337611524

/-! ## A108161.P8893354067657934623

`floor(∑[n*n^(char[n²]/2)^(1-2%(n+2))])`
-/

namespace A108161.P8893354067657934623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * ((n : ℝ) ^ (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ)) ^ (1 - ((2 % (n + 2) : ℕ) : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A108161.P8893354067657934623

/-! ## A108161.P5176426570906206505

`or(∑[A097448(n)], char[1])`
-/

namespace A108161.P5176426570906206505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A108161.P5176426570906206505

/-! ## A108161.P4319045798364059875

`∑{d}[∑[A097448(n)], A000010(#)]`
-/

namespace A108161.P4319045798364059875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A108161.P4319045798364059875

/-! ## A108161.P6582959692115315160

`∑[A097448(n)]%A000040(n+1)²`
-/

namespace A108161.P6582959692115315160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1) ^ 2)

end

end A108161.P6582959692115315160

/-!
# A108163: A124049(n)/3.

The programs for A108163, there is no canonical definition to state claims against.
-/

/-! ## A108163.P6595381928945888415

`A124049(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108163.P6595381928945888415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124049 (n + 1) : ℚ) / 3

end

end A108163.P6595381928945888415

/-! ## A108163.P12920698103429470033

`A255588(A124049(n+1))`
-/

namespace A108163.P12920698103429470033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A124049 (n + 1)).toNat

end

end A108163.P12920698103429470033

/-! ## A108163.P16602479051258529628

`root(3, A140962(gcd(n, n+1)))*A124049(n+1)`
-/

namespace A108163.P16602479051258529628
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (1 / (A140962 (Nat.gcd n (n + 1)) : ℝ)) * (A124049 (n + 1) : ℝ)

end

end A108163.P16602479051258529628

/-! ## A108163.P17117569718107212735

`A002264(A124049(n+1)+1)`
-/

namespace A108163.P17117569718107212735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A124049 (n + 1) + 1).toNat

end

end A108163.P17117569718107212735

/-! ## A108163.P10918770326747502116

`A008611(A124049(n+1)+1)`
-/

namespace A108163.P10918770326747502116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A124049 (n + 1) + 1).toNat

end

end A108163.P10918770326747502116

/-!
# A108164: Semiprimes p*q where both p and q are primes of the form 6n+1 (A002476).

The programs for A108164, the canonical program `A108164.P16644971163881353331` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108164 has offset 1).

The definition of A108164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4789 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108164.P16909661172991755364

`∩[A107890(n+1), A198773(n+1)]`
-/

namespace A108164.P16909661172991755364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108164.P16909661172991755364

namespace A108164

/-- `∩[A107890(n+1), A198773(n+1)]` -/
def P16909661172991755364.Spec : Prop :=
  ∀ n, (P16909661172991755364.a n : ℤ) = A108164 (n + 1)

end A108164

/-! ## A108164.P16644971163881353331

`A198773(eq[2, ∑{e}[A198773(n+1), #]]+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A108164

/-- `A198773(eq[2, ∑{e}[A198773(n+1), #]]+1)` -/
def P16644971163881353331.Spec : Prop :=
  ∀ n, P16644971163881353331.a n = A108164 (n + 1)

theorem P16644971163881353331.correct : P16644971163881353331.Spec := by
  intro n
  simp only [A108164, Nat.add_sub_cancel]

end A108164

/-! ## A108164.P18278060005844608061

`∩[A107890(n+1), A112771(n+1)]`
-/

namespace A108164.P18278060005844608061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108164.P18278060005844608061

namespace A108164

/-- `∩[A107890(n+1), A112771(n+1)]` -/
def P18278060005844608061.Spec : Prop :=
  ∀ n, (P18278060005844608061.a n : ℤ) = A108164 (n + 1)

end A108164

/-! ## A108164.P6683308375918661986

`∩[A107890(n+1), A118886(n+1)]`
-/

namespace A108164.P6683308375918661986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108164.P6683308375918661986

namespace A108164

/-- `∩[A107890(n+1), A118886(n+1)]` -/
def P6683308375918661986.Spec : Prop :=
  ∀ n, (P6683308375918661986.a n : ℤ) = A108164 (n + 1)

end A108164

/-! ## A108164.P15008986924452817899

`∩[A112771(n+1), A118886(n+1)]`
-/

namespace A108164.P15008986924452817899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108164.P15008986924452817899

namespace A108164

/-- `∩[A112771(n+1), A118886(n+1)]` -/
def P15008986924452817899.Spec : Prop :=
  ∀ n, (P15008986924452817899.a n : ℤ) = A108164 (n + 1)

end A108164

/-! ## A108164.P13186325621737008298

`∩[A004611(n+1), A107890(n+1)]`
-/

namespace A108164.P13186325621737008298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108164.P13186325621737008298

namespace A108164

/-- `∩[A004611(n+1), A107890(n+1)]` -/
def P13186325621737008298.Spec : Prop :=
  ∀ n, (P13186325621737008298.a n : ℤ) = A108164 (n + 1)

end A108164

/-! ## A108164.P6232919078314155525

`∩[A004611(n+1), A112771(n+1)]`
-/

namespace A108164.P6232919078314155525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108164.P6232919078314155525

namespace A108164

/-- `∩[A004611(n+1), A112771(n+1)]` -/
def P6232919078314155525.Spec : Prop :=
  ∀ n, (P6232919078314155525.a n : ℤ) = A108164 (n + 1)

end A108164

/-! ## A108164.P13914444339840246590

`∩[A004611(n+1), A230834(n+1)]`
-/

namespace A108164.P13914444339840246590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108164.P13914444339840246590

namespace A108164

/-- `∩[A004611(n+1), A230834(n+1)]` -/
def P13914444339840246590.Spec : Prop :=
  ∀ n, (P13914444339840246590.a n : ℤ) = A108164 (n + 1)

end A108164

/-! ## A108164.P894707293892471728

`∩[A107890(n+1), A129904(n+1)]`
-/

namespace A108164.P894707293892471728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108164.P894707293892471728

namespace A108164

/-- `∩[A107890(n+1), A129904(n+1)]` -/
def P894707293892471728.Spec : Prop :=
  ∀ n, (P894707293892471728.a n : ℤ) = A108164 (n + 1)

end A108164

/-! ## A108164.P16900269878604734838

`∩[A112771(n+1), A129904(n+1)]`
-/

namespace A108164.P16900269878604734838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108164.P16900269878604734838

namespace A108164

/-- `∩[A112771(n+1), A129904(n+1)]` -/
def P16900269878604734838.Spec : Prop :=
  ∀ n, (P16900269878604734838.a n : ℤ) = A108164 (n + 1)

end A108164

/-! ## A108164.P10049723375247587657

`∩[A230834(n+1), A129904(n+1)]`
-/

namespace A108164.P10049723375247587657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108164.P10049723375247587657

namespace A108164

/-- `∩[A230834(n+1), A129904(n+1)]` -/
def P10049723375247587657.Spec : Prop :=
  ∀ n, (P10049723375247587657.a n : ℤ) = A108164 (n + 1)

end A108164

/-! ## A108164.P13468802187053411005

`∩[A107890(n+1), A350704(n+1)]`
-/

namespace A108164.P13468802187053411005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108164.P13468802187053411005

namespace A108164

/-- `∩[A107890(n+1), A350704(n+1)]` -/
def P13468802187053411005.Spec : Prop :=
  ∀ n, (P13468802187053411005.a n : ℤ) = A108164 (n + 1)

end A108164

/-! ## A108164.P2380247121361053409

`∩[A107890(n+1), A260682(n+1)]`
-/

namespace A108164.P2380247121361053409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108164.P2380247121361053409

namespace A108164

/-- `∩[A107890(n+1), A260682(n+1)]` -/
def P2380247121361053409.Spec : Prop :=
  ∀ n, (P2380247121361053409.a n : ℤ) = A108164 (n + 1)

end A108164

/-! ## A108164.P2772456697480712593

`filter[A107890(n+1), A187074(#)]`
-/

namespace A108164.P2772456697480712593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A108164.P2772456697480712593

namespace A108164

/-- `filter[A107890(n+1), A187074(#)]` -/
def P2772456697480712593.Spec : Prop :=
  ∀ n, P2772456697480712593.a n = A108164 (n + 1)

end A108164

/-! ## A108164.P1240891732546068961

`filter[A107890(n+1), A359170(#)]`
-/

namespace A108164.P1240891732546068961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A108164.P1240891732546068961

namespace A108164

/-- `filter[A107890(n+1), A359170(#)]` -/
def P1240891732546068961.Spec : Prop :=
  ∀ n, P1240891732546068961.a n = A108164 (n + 1)

end A108164

/-! ## A108164.P9521060182896464125

`filter[A107890(n+1), A359374(#)]`
-/

namespace A108164.P9521060182896464125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A108164.P9521060182896464125

namespace A108164

/-- `filter[A107890(n+1), A359374(#)]` -/
def P9521060182896464125.Spec : Prop :=
  ∀ n, P9521060182896464125.a n = A108164 (n + 1)

end A108164

/-! ## A108164.P15284825663364634724

`filter[A118886(n+1), A359828(#)]`
-/

namespace A108164.P15284825663364634724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A108164.P15284825663364634724

namespace A108164

/-- `filter[A118886(n+1), A359828(#)]` -/
def P15284825663364634724.Spec : Prop :=
  ∀ n, P15284825663364634724.a n = A108164 (n + 1)

end A108164

/-! ## A108164.P8419904070973541709

`filter[A107890(n+1), A372573(#)]`
-/

namespace A108164.P8419904070973541709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A108164.P8419904070973541709

namespace A108164

/-- `filter[A107890(n+1), A372573(#)]` -/
def P8419904070973541709.Spec : Prop :=
  ∀ n, P8419904070973541709.a n = A108164 (n + 1)

end A108164

/-! ## A108164.P596182912618666091

`filter[A107890(n+1), A373139(#)]`
-/

namespace A108164.P596182912618666091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373139 (f1 j).toNat = 1) n)

end

end A108164.P596182912618666091

namespace A108164

/-- `filter[A107890(n+1), A373139(#)]` -/
def P596182912618666091.Spec : Prop :=
  ∀ n, P596182912618666091.a n = A108164 (n + 1)

end A108164

/-! ## A108164.P14982949255608724599

`filter[A107890(n+1), A373155(#)]`
-/

namespace A108164.P14982949255608724599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A108164.P14982949255608724599

namespace A108164

/-- `filter[A107890(n+1), A373155(#)]` -/
def P14982949255608724599.Spec : Prop :=
  ∀ n, P14982949255608724599.a n = A108164 (n + 1)

end A108164

/-!
# A108165: a(n) = a(n-1) + A108173(n+1) - A108173(n).

The programs for A108165, there is no canonical definition to state claims against.
-/

/-! ## A108165.P435585563818896828

`∑[A108171(n)]-2`
-/

namespace A108165.P435585563818896828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A108165.P435585563818896828

/-! ## A108165.P17007340162097196995

`A277722(n+1)-1`
-/

namespace A108165.P17007340162097196995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277722 (n + 1) - 1

end

end A108165.P17007340162097196995

/-! ## A108165.P3017530791958299263

`A278040(n)+A276799(n+1)`
-/

namespace A108165.P3017530791958299263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n + A276799 (n + 1)

end

end A108165.P3017530791958299263

/-! ## A108165.P7985234409919536043

`A108173(n+2)-3`
-/

namespace A108165.P7985234409919536043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108173 (n + 2) - 3

end

end A108165.P7985234409919536043

/-! ## A108165.P1449181963804069154

`Δ[∑[A277722(n)]-n]`
-/

namespace A108165.P1449181963804069154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108165.P1449181963804069154

/-! ## A108165.P6549396626629609020

`A276799(n+1)+A003144(A003144(n+1))`
-/

namespace A108165.P6549396626629609020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276799 (n + 1) + A003144 (A003144 (n + 1)).toNat

end

end A108165.P6549396626629609020

/-! ## A108165.P15296495594857800655

`A023443(A277722(n+1))`
-/

namespace A108165.P15296495594857800655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A277722 (n + 1)).toNat

end

end A108165.P15296495594857800655

/-! ## A108165.P7921569559489585061

`A023445(A108173(n+2))`
-/

namespace A108165.P7921569559489585061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A108173 (n + 2)).toNat

end

end A108165.P7921569559489585061

/-! ## A108165.P13069575922309634481

`A016885(n)-A330063(n+1)`
-/

namespace A108165.P13069575922309634481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - A330063 (n + 1)

end

end A108165.P13069575922309634481

/-!
# A108166: Semiprimes p*q where both p and q are primes of the form 6n-1 (A007528).

The programs for A108166, the canonical program `A108166.P5838971523629436961` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108166 has offset 1).

The definition of A108166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108166.P5743862944076687646

`∩[A112771(n+1), A259548(n+1)]`
-/

namespace A108166.P5743862944076687646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108166.P5743862944076687646

namespace A108166

/-- `∩[A112771(n+1), A259548(n+1)]` -/
def P5743862944076687646.Spec : Prop :=
  ∀ n, (P5743862944076687646.a n : ℤ) = A108166 (n + 1)

end A108166

/-! ## A108166.P12086645845219583608

`filter[A112771(n+1), A373254(#)]`
-/

namespace A108166.P12086645845219583608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A108166.P12086645845219583608

namespace A108166

/-- `filter[A112771(n+1), A373254(#)]` -/
def P12086645845219583608.Spec : Prop :=
  ∀ n, P12086645845219583608.a n = A108166 (n + 1)

end A108166

/-! ## A108166.P10201941902725634061

`filter[A391330(n+1), A373254(#)]`
-/

namespace A108166.P10201941902725634061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A108166.P10201941902725634061

namespace A108166

/-- `filter[A391330(n+1), A373254(#)]` -/
def P10201941902725634061.Spec : Prop :=
  ∀ n, P10201941902725634061.a n = A108166 (n + 1)

end A108166

/-! ## A108166.P14083100770983957642

`filter[A259548(n+1), A064911(#)]`
-/

namespace A108166.P14083100770983957642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108166.P14083100770983957642

namespace A108166

/-- `filter[A259548(n+1), A064911(#)]` -/
def P14083100770983957642.Spec : Prop :=
  ∀ n, P14083100770983957642.a n = A108166 (n + 1)

end A108166

/-! ## A108166.P13177027427195487814

`filter[A395997(n+1), A064911(#)]`
-/

namespace A108166.P13177027427195487814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108166.P13177027427195487814

namespace A108166

/-- `filter[A395997(n+1), A064911(#)]` -/
def P13177027427195487814.Spec : Prop :=
  ∀ n, P13177027427195487814.a n = A108166 (n + 1)

end A108166

/-! ## A108166.P6563835319047097487

`filter[A395997(n+1), A101040(#)]`
-/

namespace A108166.P6563835319047097487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A108166.P6563835319047097487

namespace A108166

/-- `filter[A395997(n+1), A101040(#)]` -/
def P6563835319047097487.Spec : Prop :=
  ∀ n, P6563835319047097487.a n = A108166 (n + 1)

end A108166

/-! ## A108166.P3159451010112080873

`filter[A259548(n+1), A353480(#)]`
-/

namespace A108166.P3159451010112080873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A108166.P3159451010112080873

namespace A108166

/-- `filter[A259548(n+1), A353480(#)]` -/
def P3159451010112080873.Spec : Prop :=
  ∀ n, P3159451010112080873.a n = A108166 (n + 1)

end A108166

/-! ## A108166.P12215835253960694755

`∩[A259548(n+1), A280389(n+1)]`
-/

namespace A108166.P12215835253960694755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108166.P12215835253960694755

namespace A108166

/-- `∩[A259548(n+1), A280389(n+1)]` -/
def P12215835253960694755.Spec : Prop :=
  ∀ n, (P12215835253960694755.a n : ℤ) = A108166 (n + 1)

end A108166

/-! ## A108166.P8944847461408489823

`filter[A176262(n+1), A353480(#)]`
-/

namespace A108166.P8944847461408489823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A108166.P8944847461408489823

namespace A108166

/-- `filter[A176262(n+1), A353480(#)]` -/
def P8944847461408489823.Spec : Prop :=
  ∀ n, P8944847461408489823.a n = A108166 (n + 1)

end A108166

/-! ## A108166.P2833167880411593945

`∩[A112771(n+1), A176262(n+1)]`
-/

namespace A108166.P2833167880411593945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108166.P2833167880411593945

namespace A108166

/-- `∩[A112771(n+1), A176262(n+1)]` -/
def P2833167880411593945.Spec : Prop :=
  ∀ n, (P2833167880411593945.a n : ℤ) = A108166 (n + 1)

end A108166

/-! ## A108166.P15111455014892195103

`∩[A176262(n+1), A280389(n+1)]`
-/

namespace A108166.P15111455014892195103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108166.P15111455014892195103

namespace A108166

/-- `∩[A176262(n+1), A280389(n+1)]` -/
def P15111455014892195103.Spec : Prop :=
  ∀ n, (P15111455014892195103.a n : ℤ) = A108166 (n + 1)

end A108166

/-! ## A108166.P9410912356353714302

`∩[A176262(n+1), A391330(n+1)]`
-/

namespace A108166.P9410912356353714302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108166.P9410912356353714302

namespace A108166

/-- `∩[A176262(n+1), A391330(n+1)]` -/
def P9410912356353714302.Spec : Prop :=
  ∀ n, (P9410912356353714302.a n : ℤ) = A108166 (n + 1)

end A108166

/-! ## A108166.P10690504902885945127

`∩[A046315(n+1), A176262(n+1)]`
-/

namespace A108166.P10690504902885945127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108166.P10690504902885945127

namespace A108166

/-- `∩[A046315(n+1), A176262(n+1)]` -/
def P10690504902885945127.Spec : Prop :=
  ∀ n, (P10690504902885945127.a n : ℤ) = A108166 (n + 1)

end A108166

/-! ## A108166.P5838971523629436961

`∩[A046315(n+1), A259548(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A108166

/-- `∩[A046315(n+1), A259548(n+1)]` -/
def P5838971523629436961.Spec : Prop :=
  ∀ n, (P5838971523629436961.a n : ℤ) = A108166 (n + 1)

theorem P5838971523629436961.correct : P5838971523629436961.Spec := by
  intro n
  simp only [A108166, Nat.add_sub_cancel]

end A108166

/-! ## A108166.P16214339664858170942

`∩[A046315(n+1), A395997(n+1)]`
-/

namespace A108166.P16214339664858170942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108166.P16214339664858170942

namespace A108166

/-- `∩[A046315(n+1), A395997(n+1)]` -/
def P16214339664858170942.Spec : Prop :=
  ∀ n, (P16214339664858170942.a n : ℤ) = A108166 (n + 1)

end A108166

/-! ## A108166.P6719835833727359722

`∩[A112771(n+1), A177927(n+1)]`
-/

namespace A108166.P6719835833727359722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108166.P6719835833727359722

namespace A108166

/-- `∩[A112771(n+1), A177927(n+1)]` -/
def P6719835833727359722.Spec : Prop :=
  ∀ n, (P6719835833727359722.a n : ℤ) = A108166 (n + 1)

end A108166

/-! ## A108166.P738558027508426203

`∩[A177927(n+1), A259548(n+1)]`
-/

namespace A108166.P738558027508426203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108166.P738558027508426203

namespace A108166

/-- `∩[A177927(n+1), A259548(n+1)]` -/
def P738558027508426203.Spec : Prop :=
  ∀ n, (P738558027508426203.a n : ℤ) = A108166 (n + 1)

end A108166

/-! ## A108166.P17146662909488867681

`∩[A177927(n+1), A280389(n+1)]`
-/

namespace A108166.P17146662909488867681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108166.P17146662909488867681

namespace A108166

/-- `∩[A177927(n+1), A280389(n+1)]` -/
def P17146662909488867681.Spec : Prop :=
  ∀ n, (P17146662909488867681.a n : ℤ) = A108166 (n + 1)

end A108166

/-! ## A108166.P13818427066604717847

`∩[A004612(n+1), A046315(n+1)]`
-/

namespace A108166.P13818427066604717847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108166.P13818427066604717847

namespace A108166

/-- `∩[A004612(n+1), A046315(n+1)]` -/
def P13818427066604717847.Spec : Prop :=
  ∀ n, (P13818427066604717847.a n : ℤ) = A108166 (n + 1)

end A108166

/-! ## A108166.P6779316002174801693

`∩[A004612(n+1), A112771(n+1)]`
-/

namespace A108166.P6779316002174801693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108166.P6779316002174801693

namespace A108166

/-- `∩[A004612(n+1), A112771(n+1)]` -/
def P6779316002174801693.Spec : Prop :=
  ∀ n, (P6779316002174801693.a n : ℤ) = A108166 (n + 1)

end A108166

/-!
# A108167: Partial sums of the positive integers n according to the rule: if n is square then subtract sqrt(n) else add n.

The programs for A108167, the canonical program `A108167.P8145188214537581929` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108167 has offset 0).

The definition of A108167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108167.P11454243086971035236

`∑[n-A002378(A037213(n))]`
-/

namespace A108167.P11454243086971035236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002378 (A037213 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108167.P11454243086971035236

namespace A108167

/-- `∑[n-A002378(A037213(n))]` -/
def P11454243086971035236.Spec : Prop :=
  ∀ n, P11454243086971035236.a n = A108167 n

end A108167

/-! ## A108167.P7106887154114769577

`∑[n-A127366(A037213(n)²)]`
-/

namespace A108167.P7106887154114769577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A127366 (A037213 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108167.P7106887154114769577

namespace A108167

/-- `∑[n-A127366(A037213(n)²)]` -/
def P7106887154114769577.Spec : Prop :=
  ∀ n, P7106887154114769577.a n = A108167 n

end A108167

/-! ## A108167.P8145188214537581929

`∑[n]-A007290(A000196(n)+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108167

/-- `∑[n]-A007290(A000196(n)+2)` -/
def P8145188214537581929.Spec : Prop :=
  ∀ n, P8145188214537581929.a n = A108167 n

theorem P8145188214537581929.correct : P8145188214537581929.Spec := by
  intro n
  simp only [A108167]

end A108167

/-! ## A108167.P17360813985147316885

`∑[n+1-A002061(A037213(n)+1)]`
-/

namespace A108167.P17360813985147316885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002061 (A037213 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108167.P17360813985147316885

namespace A108167

/-- `∑[n+1-A002061(A037213(n)+1)]` -/
def P17360813985147316885.Spec : Prop :=
  ∀ n, P17360813985147316885.a n = A108167 n

end A108167

/-! ## A108167.P14075802903459613148

`A000124(n)-A064999(A000196(n))`
-/

namespace A108167.P14075802903459613148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A064999 (A000196 n).toNat

end

end A108167.P14075802903459613148

namespace A108167

/-- `A000124(n)-A064999(A000196(n))` -/
def P14075802903459613148.Spec : Prop :=
  ∀ n, P14075802903459613148.a n = A108167 n

end A108167

/-! ## A108167.P1323201660245671542

`A000217(n)+1-A064999(A000196(n))`
-/

namespace A108167.P1323201660245671542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (1 - A064999 (A000196 n).toNat)

end

end A108167.P1323201660245671542

namespace A108167

/-- `A000217(n)+1-A064999(A000196(n))` -/
def P1323201660245671542.Spec : Prop :=
  ∀ n, P1323201660245671542.a n = A108167 n

end A108167

/-!
# A108168: Padovan sequence for indices of the Beatty sequence of the tribonacci constant.

The programs for A108168, there is no canonical definition to state claims against.
-/

/-! ## A108168.P8722307922897039066

`A182097(A158919(n+1))`
-/

namespace A108168.P8722307922897039066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A158919 (n + 1)).toNat

end

end A108168.P8722307922897039066

/-! ## A108168.P13030803949423430675

`A000931(A158919(n+1)+3)`
-/

namespace A108168.P13030803949423430675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A158919 (n + 1) + 3).toNat

end

end A108168.P13030803949423430675

/-! ## A108168.P3293846282506151694

`A078027(A158919(n+1)+5)`
-/

namespace A108168.P3293846282506151694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (A158919 (n + 1) + 5).toNat

end

end A108168.P3293846282506151694

/-! ## A108168.P13339728713890095236

`∩[A117600(n+1), A169655(n+1)]`
-/

namespace A108168.P13339728713890095236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108168.P13339728713890095236

/-!
# A108169: Alternating three ratio switched sequence based on characteristic root of A000931.

The programs for A108169, there is no canonical definition to state claims against.
-/

/-! ## A108169.P11314788935381084867

`A285572(A025012(n))+A074084(n)`
-/

namespace A108169.P11314788935381084867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285572 (A025012 n).toNat + A074084 n

end

end A108169.P11314788935381084867

/-! ## A108169.P1585557869447425428

`A245328(A202519(n))-A005089(n+1)`
-/

namespace A108169.P1585557869447425428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A202519 n).toNat - A005089 (n + 1)

end

end A108169.P1585557869447425428

/-!
# A108171: Tribonacci version of A076662 using the positive real Pisot root of x^3 - x^2 - x - 1.

The programs for A108171, there is no canonical definition to state claims against.
-/

/-! ## A108171.P3412130508276658526

`abs(Δ[A108173(n+1)])`
-/

namespace A108171.P3412130508276658526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A108171.P3412130508276658526

/-! ## A108171.P8076878813284787105

`A003037(Δ[A108173(n+1)])`
-/

namespace A108171.P8076878813284787105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003037 (f1 (n + 1) - f1 n).toNat

end

end A108171.P8076878813284787105

/-! ## A108171.P11644108706005564360

`A004086(Δ[A108173(n+1)])`
-/

namespace A108171.P11644108706005564360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (n + 1) - f1 n).toNat

end

end A108171.P11644108706005564360

/-! ## A108171.P15785541672628120048

`A010348(Δ[A108173(n+1)])`
-/

namespace A108171.P15785541672628120048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010348 (f1 (n + 1) - f1 n).toNat

end

end A108171.P15785541672628120048

/-! ## A108171.P14421092788515517024

`A054055(Δ[A108173(n+1)])`
-/

namespace A108171.P14421092788515517024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (f1 (n + 1) - f1 n).toNat

end

end A108171.P14421092788515517024

/-! ## A108171.P12783203004731615696

`A108193(Δ[A108173(n+1)])`
-/

namespace A108171.P12783203004731615696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108193 (f1 (n + 1) - f1 n).toNat

end

end A108171.P12783203004731615696

/-! ## A108171.P5794804601141502407

`A108173(n+2)-A108173(n+1)`
-/

namespace A108171.P5794804601141502407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108173 (n + 2) - A108173 (n + 1)

end

end A108171.P5794804601141502407

/-!
# A108172: Semiprimes p*q where p is a prime of the form 6n+1 (A002476) and q is a prime of the form 6n-1 (A007528).

The programs for A108172, the canonical program `A108172.P15433218810507831366` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108172 has offset 1).

The definition of A108172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108172.P17120319532596215174

`6*A112776(n+1)+5`
-/

namespace A108172.P17120319532596215174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A112776 (n + 1) + 5

end

end A108172.P17120319532596215174

namespace A108172

/-- `6*A112776(n+1)+5` -/
def P17120319532596215174.Spec : Prop :=
  ∀ n, P17120319532596215174.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P15433218810507831366

`filter[A344872(n+1), A187074(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A108172

/-- `filter[A344872(n+1), A187074(#)]` -/
def P15433218810507831366.Spec : Prop :=
  ∀ n, P15433218810507831366.a n = A108172 (n + 1)

theorem P15433218810507831366.correct : P15433218810507831366.Spec := by
  intro n
  simp only [A108172, Nat.add_sub_cancel]

end A108172

/-! ## A108172.P11240184799539300297

`filter[A373484(n+3), A359828(#)]`
-/

namespace A108172.P11240184799539300297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373484 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A108172.P11240184799539300297

namespace A108172

/-- `filter[A373484(n+3), A359828(#)]` -/
def P11240184799539300297.Spec : Prop :=
  ∀ n, P11240184799539300297.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P7604651617597450455

`filter[A373144(n+3), A359828(#)]`
-/

namespace A108172.P7604651617597450455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373144 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A108172.P7604651617597450455

namespace A108172

/-- `filter[A373144(n+3), A359828(#)]` -/
def P7604651617597450455.Spec : Prop :=
  ∀ n, P7604651617597450455.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P7692254688227396176

`filter[A391330(n+1), A359430(#)]`
-/

namespace A108172.P7692254688227396176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A108172.P7692254688227396176

namespace A108172

/-- `filter[A391330(n+1), A359430(#)]` -/
def P7692254688227396176.Spec : Prop :=
  ∀ n, P7692254688227396176.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P7225217399554431386

`filter[A391330(n+1), A369643(#)]`
-/

namespace A108172.P7225217399554431386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A108172.P7225217399554431386

namespace A108172

/-- `filter[A391330(n+1), A369643(#)]` -/
def P7225217399554431386.Spec : Prop :=
  ∀ n, P7225217399554431386.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P2129952901196678579

`filter[A391330(n+1), A369658(#)]`
-/

namespace A108172.P2129952901196678579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369658 (f1 j).toNat = 1) n)

end

end A108172.P2129952901196678579

namespace A108172

/-- `filter[A391330(n+1), A369658(#)]` -/
def P2129952901196678579.Spec : Prop :=
  ∀ n, P2129952901196678579.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P5492591596823545388

`filter[A391330(n+1), A373143(#)]`
-/

namespace A108172.P5492591596823545388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A108172.P5492591596823545388

namespace A108172

/-- `filter[A391330(n+1), A373143(#)]` -/
def P5492591596823545388.Spec : Prop :=
  ∀ n, P5492591596823545388.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P5330551079288435988

`filter[A391330(n+1), A373371(#)]`
-/

namespace A108172.P5330551079288435988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A108172.P5330551079288435988

namespace A108172

/-- `filter[A391330(n+1), A373371(#)]` -/
def P5330551079288435988.Spec : Prop :=
  ∀ n, P5330551079288435988.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P11399155444713946449

`filter[A391330(n+1), A373372(#)]`
-/

namespace A108172.P11399155444713946449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373372 (f1 j).toNat = 1) n)

end

end A108172.P11399155444713946449

namespace A108172

/-- `filter[A391330(n+1), A373372(#)]` -/
def P11399155444713946449.Spec : Prop :=
  ∀ n, P11399155444713946449.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P8916329977834497522

`filter[A391330(n+1), A373474(#)]`
-/

namespace A108172.P8916329977834497522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373474 (f1 j).toNat = 1) n)

end

end A108172.P8916329977834497522

namespace A108172

/-- `filter[A391330(n+1), A373474(#)]` -/
def P8916329977834497522.Spec : Prop :=
  ∀ n, P8916329977834497522.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P11127437527767719460

`filter[A391330(n+1), A373477(#)]`
-/

namespace A108172.P11127437527767719460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A108172.P11127437527767719460

namespace A108172

/-- `filter[A391330(n+1), A373477(#)]` -/
def P11127437527767719460.Spec : Prop :=
  ∀ n, P11127437527767719460.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P6996469203138476340

`filter[A391330(n+1), A373483(#)]`
-/

namespace A108172.P6996469203138476340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373483 (f1 j).toNat = 1) n)

end

end A108172.P6996469203138476340

namespace A108172

/-- `filter[A391330(n+1), A373483(#)]` -/
def P6996469203138476340.Spec : Prop :=
  ∀ n, P6996469203138476340.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P12134136852326344755

`filter[A391330(n+1), A374222(#)]`
-/

namespace A108172.P12134136852326344755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374222 (f1 j).toNat = 1) n)

end

end A108172.P12134136852326344755

namespace A108172

/-- `filter[A391330(n+1), A374222(#)]` -/
def P12134136852326344755.Spec : Prop :=
  ∀ n, P12134136852326344755.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P5148624216662409532

`filter[A092256(n+1), A064911(#)]`
-/

namespace A108172.P5148624216662409532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108172.P5148624216662409532

namespace A108172

/-- `filter[A092256(n+1), A064911(#)]` -/
def P5148624216662409532.Spec : Prop :=
  ∀ n, P5148624216662409532.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P3304065502946325662

`filter[A092256(n+1), A101040(#)]`
-/

namespace A108172.P3304065502946325662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A108172.P3304065502946325662

namespace A108172

/-- `filter[A092256(n+1), A101040(#)]` -/
def P3304065502946325662.Spec : Prop :=
  ∀ n, P3304065502946325662.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P12920848883582375236

`filter[A092256(n+1), A280710(#)]`
-/

namespace A108172.P12920848883582375236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A108172.P12920848883582375236

namespace A108172

/-- `filter[A092256(n+1), A280710(#)]` -/
def P12920848883582375236.Spec : Prop :=
  ∀ n, P12920848883582375236.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P16683629894644520839

`filter[A344872(n+1), A035263(#)]`
-/

namespace A108172.P16683629894644520839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A108172.P16683629894644520839

namespace A108172

/-- `filter[A344872(n+1), A035263(#)]` -/
def P16683629894644520839.Spec : Prop :=
  ∀ n, P16683629894644520839.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P12413075445919046031

`filter[A092256(n+1), A340370(#)]`
-/

namespace A108172.P12413075445919046031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A108172.P12413075445919046031

namespace A108172

/-- `filter[A092256(n+1), A340370(#)]` -/
def P12413075445919046031.Spec : Prop :=
  ∀ n, P12413075445919046031.a n = A108172 (n + 1)

end A108172

/-! ## A108172.P17283817215705807766

`filter[A373144(n+1), A064911(#)]`
-/

namespace A108172.P17283817215705807766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108172.P17283817215705807766

namespace A108172

/-- `filter[A373144(n+1), A064911(#)]` -/
def P17283817215705807766.Spec : Prop :=
  ∀ n, P17283817215705807766.a n = A108172 (n + 1)

end A108172

/-!
# A108173: Let beta = A058265. Sequence gives a(n) = 1 + ceiling((n-1)*beta^2).

The programs for A108173, there is no canonical definition to state claims against.
-/

/-! ## A108173.P969730629256317872

`ceil(A277722(n)+cosh(sin(n)))`
-/

namespace A108173.P969730629256317872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A277722 n : ℝ) + Real.cosh (Real.sin (n : ℝ))⌉

end

end A108173.P969730629256317872

/-! ## A108173.P9935430610213338612

`A057544(A277722(n))`
-/

namespace A108173.P9935430610213338612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (A277722 n).toNat

end

end A108173.P9935430610213338612

/-! ## A108173.P16057812701054575934

`eq[A005928(A068377(n+5)), A080764(n+4)]`
-/

namespace A108173.P16057812701054575934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (A068377 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108173.P16057812701054575934

/-!
# A108174: Partial sums of the positive integers n according to the rule: if n is square then subtract n, otherwise add n.

The programs for A108174, the canonical program `A108174.P8958809533646394211` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108174 has offset 0).

The definition of A108174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108174.P16757041392175611137

`∑[n*(1-2*char[n²])]`
-/

namespace A108174.P16757041392175611137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ((2 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108174.P16757041392175611137

namespace A108174

/-- `∑[n*(1-2*char[n²])]` -/
def P16757041392175611137.Spec : Prop :=
  ∀ n, P16757041392175611137.a n = A108174 n

end A108174

/-! ## A108174.P16850764737083797761

`∑[2*n*round(cos(4*char[n²]))]/2`
-/

namespace A108174.P16850764737083797761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * SequenceMachineLib.roundAway (Real.cos ((4 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A108174.P16850764737083797761

namespace A108174

/-- `∑[2*n*round(cos(4*char[n²]))]/2` -/
def P16850764737083797761.Spec : Prop :=
  ∀ n, P16850764737083797761.a n = (A108174 n : ℚ)

end A108174

/-! ## A108174.P8958809533646394211

`∑[n]-A006331(floor(sqrt(n)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108174

/-- `∑[n]-A006331(floor(sqrt(n)))` -/
def P8958809533646394211.Spec : Prop :=
  ∀ n, P8958809533646394211.a n = A108174 n

theorem P8958809533646394211.correct : P8958809533646394211.Spec := by
  intro n
  simp only [A108174]

end A108174

/-! ## A108174.P16089811470426811134

`∑[∏{d}[n, -A014963(#)]]-1`
-/

namespace A108174.P16089811470426811134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (-A014963 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A108174.P16089811470426811134

namespace A108174

/-- `∑[∏{d}[n, -A014963(#)]]-1` -/
def P16089811470426811134.Spec : Prop :=
  ∀ n, P16089811470426811134.a n = A108174 n

end A108174

/-! ## A108174.P5356352393633498677

`A000217(n)-2*A000330(A000196(n))`
-/

namespace A108174.P5356352393633498677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - 2 * A000330 (A000196 n).toNat

end

end A108174.P5356352393633498677

namespace A108174

/-- `A000217(n)-2*A000330(A000196(n))` -/
def P5356352393633498677.Spec : Prop :=
  ∀ n, P5356352393633498677.a n = A108174 n

end A108174

/-!
# A108175: Three-step constructive order sequence.

The programs for A108175, there is no canonical definition to state claims against.
-/

/-! ## A108175.P2051160838898585330

`A313024(n)+A000002(A000701(3*n+4)+1)`
-/

namespace A108175.P2051160838898585330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313024 n + A000002 (A000701 (3 * n + 4) + 1).toNat

end

end A108175.P2051160838898585330

/-! ## A108175.P6211180742169081637

`∑[A008683(A007051(n+2)-n)+4]`
-/

namespace A108175.P6211180742169081637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007051 (n + 2) - (n : ℤ)).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108175.P6211180742169081637

/-! ## A108175.P4775061660067109568

`A361385(A361351(n)+1)+A008574(n)`
-/

namespace A108175.P4775061660067109568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361385 (A361351 n + 1).toNat + A008574 n

end

end A108175.P4775061660067109568

/-! ## A108175.P359160982986277190

`A189474(n+1)-A189476(A000293(n+2))`
-/

namespace A108175.P359160982986277190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189474 (n + 1) - A189476 (A000293 (n + 2)).toNat

end

end A108175.P359160982986277190

/-! ## A108175.P13675056429727994145

`A189474(n+1)-A011751(A108951(n+3))`
-/

namespace A108175.P13675056429727994145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189474 (n + 1) - A011751 (A108951 (n + 3)).toNat

end

end A108175.P13675056429727994145

/-!
# A108176: a(1) = 1, a(n) = (Sum_{k=1..floor(n/2)} 1/a(n + 1 - 2k))*(Product_{k=1..floor(n/2)} a(n + 1 - 2k)).

The programs for A108176, there is no canonical definition to state claims against.
-/

/-! ## A108176.P9625582906473106161

`A001064(A054760(∑[n]))`
-/

namespace A108176.P9625582906473106161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001064 (A054760 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A108176.P9625582906473106161

/-! ## A108176.P17171876821420103835

`A305194(A026746(n+1))`
-/

namespace A108176.P17171876821420103835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305194 (A026746 (n + 1)).toNat

end

end A108176.P17171876821420103835

/-! ## A108176.P11746857415905714432

`A365663(2*A000085(n))`
-/

namespace A108176.P11746857415905714432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365663 (2 * A000085 n).toNat

end

end A108176.P11746857415905714432

/-! ## A108176.P9541941228225831087

`A001064(A295638(n+1)+1)`
-/

namespace A108176.P9541941228225831087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001064 (A295638 (n + 1) + 1).toNat

end

end A108176.P9541941228225831087

/-!
# A108178: a(n) = (n+1)(n+2)^2*(n+3)^2*(n+4)(7n^2 + 23n + 20)/2880.

The programs for A108178, the canonical program `A108178.P13174187955981682460` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108178 has offset 0).

The definition of A108178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108178.P13174187955981682460

`2*A107968(n)-A107956(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108178

/-- `2*A107968(n)-A107956(n)` -/
def P13174187955981682460.Spec : Prop :=
  ∀ n, P13174187955981682460.a n = A108178 n

theorem P13174187955981682460.correct : P13174187955981682460.Spec := by
  intro n
  simp only [A108178]

end A108178

/-! ## A108178.P16025796818715348458

`(A108645(n)+A107968(n))/2`
-/

namespace A108178.P16025796818715348458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108645 n + A107968 n : ℚ) / 2

end

end A108178.P16025796818715348458

namespace A108178

/-- `(A108645(n)+A107968(n))/2` -/
def P16025796818715348458.Spec : Prop :=
  ∀ n, P16025796818715348458.a n = (A108178 n : ℚ)

end A108178

/-! ## A108178.P3670461338125924075

`A107891(n)+A107959(n)-A107908(n)`
-/

namespace A108178.P3670461338125924075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A107959 n - A107908 n)

end

end A108178.P3670461338125924075

namespace A108178

/-- `A107891(n)+A107959(n)-A107908(n)` -/
def P3670461338125924075.Spec : Prop :=
  ∀ n, P3670461338125924075.a n = A108178 n

end A108178

/-! ## A108178.P10438337096330268894

`A107956(n)+A107968(n)-A107959(n)`
-/

namespace A108178.P10438337096330268894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107956 n + (A107968 n - A107959 n)

end

end A108178.P10438337096330268894

namespace A108178

/-- `A107956(n)+A107968(n)-A107959(n)` -/
def P10438337096330268894.Spec : Prop :=
  ∀ n, P10438337096330268894.a n = A108178 n

end A108178

/-! ## A108178.P14345904829544849310

`A107891(n)+A107968(n)-A108680(n)`
-/

namespace A108178.P14345904829544849310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A107968 n - A108680 n)

end

end A108178.P14345904829544849310

namespace A108178

/-- `A107891(n)+A107968(n)-A108680(n)` -/
def P14345904829544849310.Spec : Prop :=
  ∀ n, P14345904829544849310.a n = A108178 n

end A108178

/-! ## A108178.P14672560977615529501

`A107956(n)+A108680(n)-A107908(n)`
-/

namespace A108178.P14672560977615529501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107956 n + (A108680 n - A107908 n)

end

end A108178.P14672560977615529501

namespace A108178

/-- `A107956(n)+A108680(n)-A107908(n)` -/
def P14672560977615529501.Spec : Prop :=
  ∀ n, P14672560977615529501.a n = A108178 n

end A108178

/-! ## A108178.P11405159416145966392

`A107959(n)+A108645(n)-A107956(n)`
-/

namespace A108178.P11405159416145966392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107959 n + (A108645 n - A107956 n)

end

end A108178.P11405159416145966392

namespace A108178

/-- `A107959(n)+A108645(n)-A107956(n)` -/
def P11405159416145966392.Spec : Prop :=
  ∀ n, P11405159416145966392.a n = A108178 n

end A108178

/-!
# A108179: Expansion of power series whose square is the weight enumerator of [48,23,8] Rao-Reddy code (A031137).

The programs for A108179, there is no canonical definition to state claims against.
-/

/-! ## A108179.P634537190190346039

`A031137(n)/A020639(∏[n+1])`
-/

namespace A108179.P634537190190346039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031137 n : ℚ) / (A020639 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A108179.P634537190190346039

/-! ## A108179.P5446417737236885890

`A031137(n)/A001817(A055099(n))`
-/

namespace A108179.P5446417737236885890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031137 n : ℚ) / (A001817 (A055099 n).toNat : ℚ)

end

end A108179.P5446417737236885890

/-! ## A108179.P4176287572314095507

`A031137(n)/A167489(A047849(n))`
-/

namespace A108179.P4176287572314095507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031137 n : ℚ) / (A167489 (A047849 n).toNat : ℚ)

end

end A108179.P4176287572314095507

/-! ## A108179.P15948203520522172322

`floor(A031137(n)/A020639(A000629(n)))`
-/

namespace A108179.P15948203520522172322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A031137 n : ℚ) / (A020639 (A000629 n).toNat : ℚ)⌋

end

end A108179.P15948203520522172322

/-!
# A108181: Semiprimes of the form 4n + 1.

The programs for A108181, the canonical program `A108181.P8503528665042007450` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108181 has offset 1).

The definition of A108181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6094 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108181.P11613487713615930181

`4*eq[2, A001222(4*n+1)]+1`
-/

namespace A108181.P11613487713615930181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A108181.P11613487713615930181

namespace A108181

/-- `4*eq[2, A001222(4*n+1)]+1` -/
def P11613487713615930181.Spec : Prop :=
  ∀ n, (P11613487713615930181.a n : ℤ) = A108181 (n + 1)

end A108181

/-! ## A108181.P13118933924898063926

`filter[A327862(n+1), A359828(#)]`
-/

namespace A108181.P13118933924898063926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A108181.P13118933924898063926

namespace A108181

/-- `filter[A327862(n+1), A359828(#)]` -/
def P13118933924898063926.Spec : Prop :=
  ∀ n, P13118933924898063926.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P8215397296999640363

`filter[A359161(n+2), A359828(#)]`
-/

namespace A108181.P8215397296999640363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359161 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A108181.P8215397296999640363

namespace A108181

/-- `filter[A359161(n+2), A359828(#)]` -/
def P8215397296999640363.Spec : Prop :=
  ∀ n, P8215397296999640363.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P719289358399423394

`∩[4*n+1, A001358(n+1)]`
-/

namespace A108181.P719289358399423394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108181.P719289358399423394

namespace A108181

/-- `∩[4*n+1, A001358(n+1)]` -/
def P719289358399423394.Spec : Prop :=
  ∀ n, (P719289358399423394.a n : ℤ) = A108181 (n + 1)

end A108181

/-! ## A108181.P17277061427273512663

`filter[A327862(n+1), A064911(#)]`
-/

namespace A108181.P17277061427273512663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108181.P17277061427273512663

namespace A108181

/-- `filter[A327862(n+1), A064911(#)]` -/
def P17277061427273512663.Spec : Prop :=
  ∀ n, P17277061427273512663.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P5104600726142434225

`filter[A359161(n+1), A064911(#)]`
-/

namespace A108181.P5104600726142434225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108181.P5104600726142434225

namespace A108181

/-- `filter[A359161(n+1), A064911(#)]` -/
def P5104600726142434225.Spec : Prop :=
  ∀ n, P5104600726142434225.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P18133664253132557361

`filter[A327862(n+1), A101040(#)]`
-/

namespace A108181.P18133664253132557361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A108181.P18133664253132557361

namespace A108181

/-- `filter[A327862(n+1), A101040(#)]` -/
def P18133664253132557361.Spec : Prop :=
  ∀ n, P18133664253132557361.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P16390016907280336357

`filter[A359161(n+1), A101040(#)]`
-/

namespace A108181.P16390016907280336357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A108181.P16390016907280336357

namespace A108181

/-- `filter[A359161(n+1), A101040(#)]` -/
def P16390016907280336357.Spec : Prop :=
  ∀ n, P16390016907280336357.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P15931973653515851487

`filter[A327862(n+1), A340369(#)]`
-/

namespace A108181.P15931973653515851487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A108181.P15931973653515851487

namespace A108181

/-- `filter[A327862(n+1), A340369(#)]` -/
def P15931973653515851487.Spec : Prop :=
  ∀ n, P15931973653515851487.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P6638348454749352282

`filter[A327862(n+1), A353477(#)]`
-/

namespace A108181.P6638348454749352282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353477 (f1 j).toNat = 1) n)

end

end A108181.P6638348454749352282

namespace A108181

/-- `filter[A327862(n+1), A353477(#)]` -/
def P6638348454749352282.Spec : Prop :=
  ∀ n, P6638348454749352282.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P12309228331997511001

`filter[A327862(n+1), A353480(#)]`
-/

namespace A108181.P12309228331997511001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A108181.P12309228331997511001

namespace A108181

/-- `filter[A327862(n+1), A353480(#)]` -/
def P12309228331997511001.Spec : Prop :=
  ∀ n, P12309228331997511001.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P13618379478642189050

`filter[A327862(n+1), A353799(#)]`
-/

namespace A108181.P13618379478642189050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A108181.P13618379478642189050

namespace A108181

/-- `filter[A327862(n+1), A353799(#)]` -/
def P13618379478642189050.Spec : Prop :=
  ∀ n, P13618379478642189050.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P14505266229834665508

`filter[A359161(n+1), A353477(#)]`
-/

namespace A108181.P14505266229834665508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353477 (f1 j).toNat = 1) n)

end

end A108181.P14505266229834665508

namespace A108181

/-- `filter[A359161(n+1), A353477(#)]` -/
def P14505266229834665508.Spec : Prop :=
  ∀ n, P14505266229834665508.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P4110545531264083347

`filter[A359161(n+1), A353480(#)]`
-/

namespace A108181.P4110545531264083347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A108181.P4110545531264083347

namespace A108181

/-- `filter[A359161(n+1), A353480(#)]` -/
def P4110545531264083347.Spec : Prop :=
  ∀ n, P4110545531264083347.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P8503528665042007450

`filter[A359161(n+2), A340369(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A108181

/-- `filter[A359161(n+2), A340369(#)]` -/
def P8503528665042007450.Spec : Prop :=
  ∀ n, P8503528665042007450.a n = A108181 (n + 1)

theorem P8503528665042007450.correct : P8503528665042007450.Spec := by
  intro n
  simp only [A108181, Nat.add_sub_cancel]

end A108181

/-! ## A108181.P7980256212450080431

`filter[A359161(n+2), A353799(#)]`
-/

namespace A108181.P7980256212450080431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359161 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A108181.P7980256212450080431

namespace A108181

/-- `filter[A359161(n+2), A353799(#)]` -/
def P7980256212450080431.Spec : Prop :=
  ∀ n, P7980256212450080431.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P2389811320901645157

`filter[A373265(n+1), A064911(#)]`
-/

namespace A108181.P2389811320901645157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108181.P2389811320901645157

namespace A108181

/-- `filter[A373265(n+1), A064911(#)]` -/
def P2389811320901645157.Spec : Prop :=
  ∀ n, P2389811320901645157.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P4900182182707321024

`filter[A373265(n+1), A101040(#)]`
-/

namespace A108181.P4900182182707321024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A108181.P4900182182707321024

namespace A108181

/-- `filter[A373265(n+1), A101040(#)]` -/
def P4900182182707321024.Spec : Prop :=
  ∀ n, P4900182182707321024.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P14291372808332695884

`filter[A373265(n+1), A353477(#)]`
-/

namespace A108181.P14291372808332695884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353477 (f1 j).toNat = 1) n)

end

end A108181.P14291372808332695884

namespace A108181

/-- `filter[A373265(n+1), A353477(#)]` -/
def P14291372808332695884.Spec : Prop :=
  ∀ n, P14291372808332695884.a n = A108181 (n + 1)

end A108181

/-! ## A108181.P9295727701694957864

`filter[A373265(n+1), A353480(#)]`
-/

namespace A108181.P9295727701694957864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A108181.P9295727701694957864

namespace A108181

/-- `filter[A373265(n+1), A353480(#)]` -/
def P9295727701694957864.Spec : Prop :=
  ∀ n, P9295727701694957864.a n = A108181 (n + 1)

end A108181

/-!
# A108182: Cumulative sum of antisquares (A080255).

The programs for A108182, there is no canonical definition to state claims against.
-/

/-! ## A108182.P16520951069918908677

`∑[A080255(n+1)]`
-/

namespace A108182.P16520951069918908677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108182.P16520951069918908677

/-! ## A108182.P15662154226183101363

`∑[record[A080255(A158416(n))]]`
-/

namespace A108182.P15662154226183101363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080255 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108182.P15662154226183101363

/-! ## A108182.P15213329750833024036

`∑[record[A080255(A109785(n))]]`
-/

namespace A108182.P15213329750833024036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080255 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108182.P15213329750833024036

/-! ## A108182.P17449972236289235327

`∑[record[A080255(A038569(n))]]`
-/

namespace A108182.P17449972236289235327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080255 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108182.P17449972236289235327

/-! ## A108182.P12249531336329430045

`∑[record[A080255(A304088(n))]]`
-/

namespace A108182.P12249531336329430045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080255 (A304088 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108182.P12249531336329430045

/-!
# A108183: Primes equal to the sum of two successive semiprimes.

The programs for A108183, the canonical program `A108183.P11791346970422582975` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108183 has offset 1).

The definition of A108183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 651 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108183.P11791346970422582975

`p?[A118717(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A108183

/-- `p?[A118717(n+1)]` -/
def P11791346970422582975.Spec : Prop :=
  ∀ n, P11791346970422582975.a n = A108183 (n + 1)

theorem P11791346970422582975.correct : P11791346970422582975.Spec := by
  intro n
  simp only [A108183, Nat.add_sub_cancel]

end A108183

/-! ## A108183.P11436290958861233013

`record[A001414(A118717(n+3))]`
-/

namespace A108183.P11436290958861233013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A118717 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108183.P11436290958861233013

namespace A108183

/-- `record[A001414(A118717(n+3))]` -/
def P11436290958861233013.Spec : Prop :=
  ∀ n, P11436290958861233013.a n = A108183 (n + 1)

end A108183

/-! ## A108183.P8860294473157733898

`filter[A118717(n+1), A010051(#)]`
-/

namespace A108183.P8860294473157733898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A108183.P8860294473157733898

namespace A108183

/-- `filter[A118717(n+1), A010051(#)]` -/
def P8860294473157733898.Spec : Prop :=
  ∀ n, P8860294473157733898.a n = A108183 (n + 1)

end A108183

/-! ## A108183.P11138815764693566703

`∩[A000040(n+1), A118717(n+1)]`
-/

namespace A108183.P11138815764693566703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P11138815764693566703

namespace A108183

/-- `∩[A000040(n+1), A118717(n+1)]` -/
def P11138815764693566703.Spec : Prop :=
  ∀ n, (P11138815764693566703.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P7743722555397390682

`∩[A004139(n+1), A118717(n+1)]`
-/

namespace A108183.P7743722555397390682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P7743722555397390682

namespace A108183

/-- `∩[A004139(n+1), A118717(n+1)]` -/
def P7743722555397390682.Spec : Prop :=
  ∀ n, (P7743722555397390682.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P16976652833320933740

`∩[A006005(n+1), A118717(n+1)]`
-/

namespace A108183.P16976652833320933740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P16976652833320933740

namespace A108183

/-- `∩[A006005(n+1), A118717(n+1)]` -/
def P16976652833320933740.Spec : Prop :=
  ∀ n, (P16976652833320933740.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P3516001229917056090

`∩[A008578(n+1), A118717(n+1)]`
-/

namespace A108183.P3516001229917056090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P3516001229917056090

namespace A108183

/-- `∩[A008578(n+1), A118717(n+1)]` -/
def P3516001229917056090.Spec : Prop :=
  ∀ n, (P3516001229917056090.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P5025243712821116330

`∩[A033946(n+1), A118717(n+1)]`
-/

namespace A108183.P5025243712821116330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P5025243712821116330

namespace A108183

/-- `∩[A033946(n+1), A118717(n+1)]` -/
def P5025243712821116330.Spec : Prop :=
  ∀ n, (P5025243712821116330.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P7485223924851393163

`∩[A045319(n+1), A118717(n+1)]`
-/

namespace A108183.P7485223924851393163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P7485223924851393163

namespace A108183

/-- `∩[A045319(n+1), A118717(n+1)]` -/
def P7485223924851393163.Spec : Prop :=
  ∀ n, (P7485223924851393163.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P16553060711858606647

`∩[A045344(n+1), A118717(n+1)]`
-/

namespace A108183.P16553060711858606647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P16553060711858606647

namespace A108183

/-- `∩[A045344(n+1), A118717(n+1)]` -/
def P16553060711858606647.Spec : Prop :=
  ∀ n, (P16553060711858606647.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P15581584347228208547

`∩[A046022(n+1), A118717(n+1)]`
-/

namespace A108183.P15581584347228208547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P15581584347228208547

namespace A108183

/-- `∩[A046022(n+1), A118717(n+1)]` -/
def P15581584347228208547.Spec : Prop :=
  ∀ n, (P15581584347228208547.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P13834155313181891889

`∩[A051948(n+1), A118717(n+1)]`
-/

namespace A108183.P13834155313181891889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P13834155313181891889

namespace A108183

/-- `∩[A051948(n+1), A118717(n+1)]` -/
def P13834155313181891889.Spec : Prop :=
  ∀ n, (P13834155313181891889.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P7330916985946209785

`∩[A064728(n+1), A118717(n+1)]`
-/

namespace A108183.P7330916985946209785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P7330916985946209785

namespace A108183

/-- `∩[A064728(n+1), A118717(n+1)]` -/
def P7330916985946209785.Spec : Prop :=
  ∀ n, (P7330916985946209785.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P15688496838201392772

`∩[A065091(n+1), A118717(n+1)]`
-/

namespace A108183.P15688496838201392772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P15688496838201392772

namespace A108183

/-- `∩[A065091(n+1), A118717(n+1)]` -/
def P15688496838201392772.Spec : Prop :=
  ∀ n, (P15688496838201392772.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P16603382263365451305

`∩[A065396(n+1), A118717(n+1)]`
-/

namespace A108183.P16603382263365451305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P16603382263365451305

namespace A108183

/-- `∩[A065396(n+1), A118717(n+1)]` -/
def P16603382263365451305.Spec : Prop :=
  ∀ n, (P16603382263365451305.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P9228531685224615775

`∩[A067126(n+1), A118717(n+1)]`
-/

namespace A108183.P9228531685224615775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P9228531685224615775

namespace A108183

/-- `∩[A067126(n+1), A118717(n+1)]` -/
def P9228531685224615775.Spec : Prop :=
  ∀ n, (P9228531685224615775.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P15015729521029807145

`∩[A071621(n+1), A118717(n+1)]`
-/

namespace A108183.P15015729521029807145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P15015729521029807145

namespace A108183

/-- `∩[A071621(n+1), A118717(n+1)]` -/
def P15015729521029807145.Spec : Prop :=
  ∀ n, (P15015729521029807145.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P8484722976266452643

`∩[A083249(n+1), A118717(n+1)]`
-/

namespace A108183.P8484722976266452643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P8484722976266452643

namespace A108183

/-- `∩[A083249(n+1), A118717(n+1)]` -/
def P8484722976266452643.Spec : Prop :=
  ∀ n, (P8484722976266452643.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P10301008256732964728

`∩[A106118(n+1), A118717(n+1)]`
-/

namespace A108183.P10301008256732964728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P10301008256732964728

namespace A108183

/-- `∩[A106118(n+1), A118717(n+1)]` -/
def P10301008256732964728.Spec : Prop :=
  ∀ n, (P10301008256732964728.a n : ℤ) = A108183 (n + 1)

end A108183

/-! ## A108183.P6292870167071629530

`∩[A108719(n+1), A118717(n+1)]`
-/

namespace A108183.P6292870167071629530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108183.P6292870167071629530

namespace A108183

/-- `∩[A108719(n+1), A118717(n+1)]` -/
def P6292870167071629530.Spec : Prop :=
  ∀ n, (P6292870167071629530.a n : ℤ) = A108183 (n + 1)

end A108183

/-!
# A108184: a(n) = smallest prime such that a(n) + 2n is also prime and such that a(n) > a(n-1).

The programs for A108184, there is no canonical definition to state claims against.
-/

/-! ## A108184.P3567613159502047459

`record[A006530(A239088(n+1)+A093178(n))]`
-/

namespace A108184.P3567613159502047459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A239088 (n + 1) + A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108184.P3567613159502047459

/-! ## A108184.P5335301140059398812

`record[A008472(A239088(n+1)+A093178(n))]`
-/

namespace A108184.P5335301140059398812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A239088 (n + 1) + A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108184.P5335301140059398812

/-! ## A108184.P18349733981373875887

`record[A020639(A239088(n+1)+A093178(n))]`
-/

namespace A108184.P18349733981373875887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A239088 (n + 1) + A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108184.P18349733981373875887

/-! ## A108184.P95579819421418704

`p?[∑[A333632(A329396(n+1))]]`
-/

namespace A108184.P95579819421418704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A329396 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108184.P95579819421418704

/-! ## A108184.P11161782998122902402

`∩[A162855(n+1), A268335(n+1)+1]`
-/

namespace A108184.P11161782998122902402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108184.P11161782998122902402

/-!
# A108186: New approximation of PrimePi based on x/(log[x]-1) and Integrate[x/Log[x],{x,2,n}] starting at n=10.

The programs for A108186, there is no canonical definition to state claims against.
-/

/-! ## A108186.P4347468413723781638

`A035100(A250120(n+4)+A115029(n+1))`
-/

namespace A108186.P4347468413723781638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (A250120 (n + 4) + A115029 (n + 1)).toNat

end

end A108186.P4347468413723781638

/-! ## A108186.P17124620076515903410

`A000193(A123946(n))+7`
-/

namespace A108186.P17124620076515903410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A123946 n).toNat + 7

end

end A108186.P17124620076515903410

/-! ## A108186.P4550324147180828055

`A305233(7*A321025(n+1))`
-/

namespace A108186.P4550324147180828055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305233 (7 * A321025 (n + 1)).toNat

end

end A108186.P4550324147180828055

/-!
# A108187: Numbers n such that 11*n - 5 is prime.

The programs for A108187, the canonical program `A108187.P14643957964987040468` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108187 has offset 1).

The definition of A108187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7876 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108187.P5239322871649781624

`A108724(n+1)+2`
-/

namespace A108187.P5239322871649781624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108724 (n + 1) + 2

end

end A108187.P5239322871649781624

namespace A108187

/-- `A108724(n+1)+2` -/
def P5239322871649781624.Spec : Prop :=
  ∀ n, P5239322871649781624.a n = A108187 (n + 1)

end A108187

/-! ## A108187.P14643957964987040468

`ceil(p?[a(n-1)+11]/11)` with `a(0)=6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108187

/-- `ceil(p?[a(n-1)+11]/11)` -/
def P14643957964987040468.Spec : Prop :=
  ∀ n, P14643957964987040468.a n = A108187 (n + 1)

theorem P14643957964987040468.correct : P14643957964987040468.Spec := by
  intro n
  simp only [A108187, Nat.add_sub_cancel]

end A108187

/-! ## A108187.P5323726995221931856

`round(p?[a(n-1)+11]/11)` with `a(0)=6`
-/

namespace A108187.P5323726995221931856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11)

end

end A108187.P5323726995221931856

namespace A108187

/-- `round(p?[a(n-1)+11]/11)` -/
def P5323726995221931856.Spec : Prop :=
  ∀ n, P5323726995221931856.a n = A108187 (n + 1)

end A108187

/-! ## A108187.P12028136042714659648

`ceil(p?[A017461(n)]/11)`
-/

namespace A108187.P12028136042714659648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 11⌉

end

end A108187.P12028136042714659648

namespace A108187

/-- `ceil(p?[A017461(n)]/11)` -/
def P12028136042714659648.Spec : Prop :=
  ∀ n, P12028136042714659648.a n = A108187 (n + 1)

end A108187

/-! ## A108187.P1459320186929500069

`A321220(A108724(n+1))`
-/

namespace A108187.P1459320186929500069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 (A108724 (n + 1)).toNat

end

end A108187.P1459320186929500069

namespace A108187

/-- `A321220(A108724(n+1))` -/
def P1459320186929500069.Spec : Prop :=
  ∀ n, P1459320186929500069.a n = A108187 (n + 1)

end A108187

/-! ## A108187.P17444045556058277989

`lt[A001222(11*n+6), 2]+1`
-/

namespace A108187.P17444045556058277989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * n + 6)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A108187.P17444045556058277989

namespace A108187

/-- `lt[A001222(11*n+6), 2]+1` -/
def P17444045556058277989.Spec : Prop :=
  ∀ n, (P17444045556058277989.a n : ℤ) = A108187 (n + 1)

end A108187

/-! ## A108187.P6839875161460691098

`lt[A000005(11*n+6), 3]+1`
-/

namespace A108187.P6839875161460691098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * n + 6)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A108187.P6839875161460691098

namespace A108187

/-- `lt[A000005(11*n+6), 3]+1` -/
def P6839875161460691098.Spec : Prop :=
  ∀ n, (P6839875161460691098.a n : ℤ) = A108187 (n + 1)

end A108187

/-! ## A108187.P5602365553881091002

`eq[1, A001222((2*n+1)*5+n+1)]+1`
-/

namespace A108187.P5602365553881091002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((2 * n + 1) * 5 + n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A108187.P5602365553881091002

namespace A108187

/-- `eq[1, A001222((2*n+1)*5+n+1)]+1` -/
def P5602365553881091002.Spec : Prop :=
  ∀ n, (P5602365553881091002.a n : ℤ) = A108187 (n + 1)

end A108187

/-! ## A108187.P1425764524474610028

`record[(n+2)%A020639(A017461(n+1))]`
-/

namespace A108187.P1425764524474610028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A020639 (A017461 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108187.P1425764524474610028

namespace A108187

/-- `record[(n+2)%A020639(A017461(n+1))]` -/
def P1425764524474610028.Spec : Prop :=
  ∀ n, P1425764524474610028.a n = A108187 (n + 1)

end A108187

/-! ## A108187.P8162712721597795521

`A194527(A141853(n+1))`
-/

namespace A108187.P8162712721597795521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194527 (A141853 (n + 1)).toNat

end

end A108187.P8162712721597795521

namespace A108187

/-- `A194527(A141853(n+1))` -/
def P8162712721597795521.Spec : Prop :=
  ∀ n, P8162712721597795521.a n = A108187 (n + 1)

end A108187

/-! ## A108187.P7019122121048260427

`eq[1, A053989(A017473(n))]+1`
-/

namespace A108187.P7019122121048260427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A017473 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A108187.P7019122121048260427

namespace A108187

/-- `eq[1, A053989(A017473(n))]+1` -/
def P7019122121048260427.Spec : Prop :=
  ∀ n, (P7019122121048260427.a n : ℤ) = A108187 (n + 1)

end A108187

/-!
# A108188: a(n) = (n-1)*(a(n-1)+a(n-2)+a(n-3)).

The programs for A108188, there is no canonical definition to state claims against.
-/

/-! ## A108188.P15325440262131927613

`n*(a(n-1)+a(n-2)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A108188.P15325440262131927613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  n * (a (n - 1) + (a (n - 2) + a (n - 3)))

end

end A108188.P15325440262131927613

/-! ## A108188.P7496587837125632654

`ceil(A171767(n+1)/37)`
-/

namespace A108188.P7496587837125632654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A171767 (n + 1) : ℚ) / 37⌉

end

end A108188.P7496587837125632654

/-!
# A108189: a(n) = (n-1)*(a(n-2)+a(n-3)).

The programs for A108189, the canonical program `A108189.P18250317116562613480` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108189 has offset 1).

The definition of A108189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108189.P18250317116562613480

`n*(a(n-2)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108189

/-- `n*(a(n-2)+a(n-3))` -/
def P18250317116562613480.Spec : Prop :=
  ∀ n, (P18250317116562613480.a n : ℤ) = A108189 (n + 1)

theorem P18250317116562613480.correct : P18250317116562613480.Spec := by
  intro n
  simp only [A108189, Nat.add_sub_cancel]

end A108189

/-! ## A108189.P8665657847933557419

`n*(a(n-2)-round(-a(n-3)))` with `a(0)=0, a(1)=1, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A108189.P8665657847933557419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  (n : ℤ) * (a (n - 2) - (-a (n - 3)))

end

end A108189.P8665657847933557419

namespace A108189

/-- `n*(a(n-2)-round(-a(n-3)))` -/
def P8665657847933557419.Spec : Prop :=
  ∀ n, P8665657847933557419.a n = A108189 (n + 1)

end A108189

/-! ## A108189.P5923955939148656466

`(a(n-2)+a(n-3))/n^(-1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A108189.P5923955939148656466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  (a (n - 2) + a (n - 3)) / (n : ℚ) ^ (-1 : ℤ)

end

end A108189.P5923955939148656466

namespace A108189

/-- `(a(n-2)+a(n-3))/n^(-1)` -/
def P5923955939148656466.Spec : Prop :=
  ∀ n, P5923955939148656466.a n = (A108189 (n + 1) : ℚ)

end A108189

/-!
# A108190: 4-almost primes equal to the sum of two successive semiprimes.

The programs for A108190, the canonical program `A108190.P7463370369085017250` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108190 has offset 1).

The definition of A108190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2004 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108190.P7463370369085017250

`filter[A118717(n+1), A101637(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A108190

/-- `filter[A118717(n+1), A101637(#)]` -/
def P7463370369085017250.Spec : Prop :=
  ∀ n, P7463370369085017250.a n = A108190 (n + 1)

theorem P7463370369085017250.correct : P7463370369085017250.Spec := by
  intro n
  simp only [A108190, Nat.add_sub_cancel]

end A108190

/-! ## A108190.P11014265579925265377

`∩[A014613(n+1), A118717(n+1)]`
-/

namespace A108190.P11014265579925265377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108190.P11014265579925265377

namespace A108190

/-- `∩[A014613(n+1), A118717(n+1)]` -/
def P11014265579925265377.Spec : Prop :=
  ∀ n, (P11014265579925265377.a n : ℤ) = A108190 (n + 1)

end A108190

/-! ## A108190.P3103413704320810130

`∩[eq[4, A001222(n+1)]+1, A118717(n+1)]`
-/

namespace A108190.P3103413704320810130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A108190.P3103413704320810130

namespace A108190

/-- `∩[eq[4, A001222(n+1)]+1, A118717(n+1)]` -/
def P3103413704320810130.Spec : Prop :=
  ∀ n, (P3103413704320810130.a n : ℤ) = A108190 (n + 1)

end A108190

/-! ## A108190.P9232387295580122674

`∩[A118717(n+1), A000720(A124282(n+1))]`
-/

namespace A108190.P9232387295580122674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124282 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108190.P9232387295580122674

namespace A108190

/-- `∩[A118717(n+1), A000720(A124282(n+1))]` -/
def P9232387295580122674.Spec : Prop :=
  ∀ n, (P9232387295580122674.a n : ℤ) = A108190 (n + 1)

end A108190

/-! ## A108190.P17631362577256754807

`∩[A207790(4*4*n+9), A118717(n+1)]`
-/

namespace A108190.P17631362577256754807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (4 * (4 * n) + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108190.P17631362577256754807

namespace A108190

/-- `∩[A207790(4*4*n+9), A118717(n+1)]` -/
def P17631362577256754807.Spec : Prop :=
  ∀ n, (P17631362577256754807.a n : ℤ) = A108190 (n + 1)

end A108190

/-! ## A108190.P16797468888244893995

`∩[A058933(A124282(n+1)), A118717(n+2)]`
-/

namespace A108190.P16797468888244893995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A124282 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108190.P16797468888244893995

namespace A108190

/-- `∩[A058933(A124282(n+1)), A118717(n+2)]` -/
def P16797468888244893995.Spec : Prop :=
  ∀ n, (P16797468888244893995.a n : ℤ) = A108190 (n + 1)

end A108190

/-!
# A108191: Numbers n such that n and the sum of the digits of n have at least one digit in common.

The programs for A108191, there is no canonical definition to state claims against.
-/

/-! ## A108191.P9567733811482590444

`eq[A061816(A053392(n)), A062329(n)]`
-/

namespace A108191.P9567733811482590444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061816 (A053392 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108191.P9567733811482590444

/-! ## A108191.P8518312829036536946

`lt[A257297(n), A000009(A007953(n))]`
-/

namespace A108191.P8518312829036536946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108191.P8518312829036536946

/-! ## A108191.P7568942756425125827

`lt[A265525(n), A007953(A047842(n))]`
-/

namespace A108191.P7568942756425125827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A047842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108191.P7568942756425125827

/-! ## A108191.P6763255338558060097

`lt[A038550(A336956(n+1)), 36]`
-/

namespace A108191.P6763255338558060097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (A336956 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A108191.P6763255338558060097

/-! ## A108191.P2343920385571027584

`eq[A106620(n), A334387(n)]`
-/

namespace A108191.P2343920385571027584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108191.P2343920385571027584

/-!
# A108192: Numbers k such that k and the product of the digits of k have at least one digit in common.

The programs for A108192, there is no canonical definition to state claims against.
-/

/-! ## A108192.P7475859229117817484

`lt[A017666(A025147(n+4)), A075824(n+1)]`
-/

namespace A108192.P7475859229117817484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A025147 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108192.P7475859229117817484

/-! ## A108192.P8861738134307144046

`lt[2^floor(n/4), A034448(A364611(n+3))]`
-/

namespace A108192.P8861738134307144046
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A364611 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A108192.P8861738134307144046

/-! ## A108192.P1012307672403202648

`lt[A349795(A000196(n)), A270566(n)]`
-/

namespace A108192.P1012307672403202648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349795 (A000196 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270566 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108192.P1012307672403202648

/-! ## A108192.P1683743830115953617

`lt[A293639(n), A218083(A270566(n))]`
-/

namespace A108192.P1683743830115953617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218083 (A270566 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108192.P1683743830115953617

/-! ## A108192.P9733038209126042396

`lt[A291146(n), A334322(A270566(n))]`
-/

namespace A108192.P9733038209126042396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334322 (A270566 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108192.P9733038209126042396

/-!
# A108193: Numbers n such that n shares at least one digit with both the sum of its digits and the product of its digits.

The programs for A108193, there is no canonical definition to state claims against.
-/

/-! ## A108193.P3626574449597914980

`A108191(n+2)^Δ[A281873(n+1)]`
-/

namespace A108193.P3626574449597914980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281873 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108191 (n + 2) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A108193.P3626574449597914980

/-! ## A108193.P16508715979673767416

`A108191(n+2)%A000096(A036035(n))`
-/

namespace A108193.P16508715979673767416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108191 (n + 2)) (A000096 (A036035 n).toNat)

end

end A108193.P16508715979673767416

/-! ## A108193.P15354548158469209170

`lcm(A049347(A022283(n)), A108191(n+2))`
-/

namespace A108193.P15354548158469209170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049347 (A022283 n).toNat) (A108191 (n + 2))

end

end A108193.P15354548158469209170

/-! ## A108193.P15735391038108175949

`A224074(A048691(n+1))+A108191(n+2)`
-/

namespace A108193.P15735391038108175949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224074 (A048691 (n + 1)).toNat + A108191 (n + 2)

end

end A108193.P15735391038108175949

/-!
# A108194: Numbers n such that the sum of the digits and the product of the digits have at least one common digit.

The programs for A108194, there is no canonical definition to state claims against.
-/

/-! ## A108194.P4404633849926330358

`lt[A167677(n), A103700(A047986(n+1))]`
-/

namespace A108194.P4404633849926330358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103700 (A047986 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108194.P4404633849926330358

/-!
# A108195: a(n) = n^2 + 5*n - 1.

The programs for A108195, the canonical program `A108195.P358036669222599232` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108195 has offset 1).

The definition of A108195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108195.P358036669222599232

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=5, a(1)=13, a(2)=23`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108195

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P358036669222599232.Spec : Prop :=
  ∀ n, P358036669222599232.a n = A108195 (n + 1)

theorem P358036669222599232.correct : P358036669222599232.Spec := by
  intro n
  simp only [A108195, Nat.add_sub_cancel]

end A108195

/-! ## A108195.P14168808815273758617

`5+(n+7)*n`
-/

namespace A108195.P14168808815273758617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + (n + 7) * n

end

end A108195.P14168808815273758617

namespace A108195

/-- `5+(n+7)*n` -/
def P14168808815273758617.Spec : Prop :=
  ∀ n, (P14168808815273758617.a n : ℤ) = A108195 (n + 1)

end A108195

/-! ## A108195.P18170153179506772044

`∑[ceil(∑[acot(n)²+2])]`
-/

namespace A108195.P18170153179506772044
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ) ^ 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108195.P18170153179506772044

namespace A108195

/-- `∑[ceil(∑[acot(n)²+2])]` -/
def P18170153179506772044.Spec : Prop :=
  ∀ n, P18170153179506772044.a n = A108195 (n + 1)

end A108195

/-! ## A108195.P2960886830447724339

`∑[a(n-1)+2]` with `a(0)=5, a(1)=8`
-/

namespace A108195.P2960886830447724339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 8] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108195.P2960886830447724339

namespace A108195

/-- `∑[a(n-1)+2]` -/
def P2960886830447724339.Spec : Prop :=
  ∀ n, (P2960886830447724339.a n : ℤ) = A108195 (n + 1)

end A108195

/-! ## A108195.P8815664510248376773

`record[(3-n)²-(n+4)]`
-/

namespace A108195.P8815664510248376773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) ^ 2 - (n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108195.P8815664510248376773

namespace A108195

/-- `record[(3-n)²-(n+4)]` -/
def P8815664510248376773.Spec : Prop :=
  ∀ n, P8815664510248376773.a n = A108195 (n + 1)

end A108195

/-! ## A108195.P10980463024751485483

`or(1, (n+3)²-4+n)`
-/

namespace A108195.P10980463024751485483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n + 3) ^ 2 : ℤ) - 4 + (n : ℤ))

end

end A108195.P10980463024751485483

namespace A108195

/-- `or(1, (n+3)²-4+n)` -/
def P10980463024751485483.Spec : Prop :=
  ∀ n, P10980463024751485483.a n = A108195 (n + 1)

end A108195

/-! ## A108195.P13285339867529926880

`xor(1, (n+3)²-5+n)`
-/

namespace A108195.P13285339867529926880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n + 3) ^ 2 : ℤ) - 5 + (n : ℤ))

end

end A108195.P13285339867529926880

namespace A108195

/-- `xor(1, (n+3)²-5+n)` -/
def P13285339867529926880.Spec : Prop :=
  ∀ n, P13285339867529926880.a n = A108195 (n + 1)

end A108195

/-! ## A108195.P15567132120813162373

`abs(4-record[(3-n)²-n])`
-/

namespace A108195.P15567132120813162373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A108195.P15567132120813162373

namespace A108195

/-- `abs(4-record[(3-n)²-n])` -/
def P15567132120813162373.Spec : Prop :=
  ∀ n, P15567132120813162373.a n = A108195 (n + 1)

end A108195

/-! ## A108195.P2520222344465206656

`floor(n-∑[a(n-1)-2])` with `a(0)=-5`

`floor` is left out, it is the identity on integers.
-/

namespace A108195.P2520222344465206656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-5] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108195.P2520222344465206656

namespace A108195

/-- `floor(n-∑[a(n-1)-2])` -/
def P2520222344465206656.Spec : Prop :=
  ∀ n, P2520222344465206656.a n = A108195 (n + 1)

end A108195

/-! ## A108195.P436103946146045044

`floor(a(n-1)+6+n+n)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A108195.P436103946146045044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 6 + n + n

end

end A108195.P436103946146045044

namespace A108195

/-- `floor(a(n-1)+6+n+n)` -/
def P436103946146045044.Spec : Prop :=
  ∀ n, (P436103946146045044.a n : ℤ) = A108195 (n + 1)

end A108195

/-! ## A108195.P2472867839116688214

`floor(n-2-(ϕ-record[(n-3)²]))`
-/

namespace A108195.P2472867839116688214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 2 : ℝ) - (Real.goldenRatio - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))⌋

end

end A108195.P2472867839116688214

namespace A108195

/-- `floor(n-2-(ϕ-record[(n-3)²]))` -/
def P2472867839116688214.Spec : Prop :=
  ∀ n, P2472867839116688214.a n = A108195 (n + 1)

end A108195

/-! ## A108195.P12467900056358023270

`round(n-2-(ϕ-record[(n-3)²]))`
-/

namespace A108195.P12467900056358023270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℝ) - (Real.goldenRatio - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)))

end

end A108195.P12467900056358023270

namespace A108195

/-- `round(n-2-(ϕ-record[(n-3)²]))` -/
def P12467900056358023270.Spec : Prop :=
  ∀ n, P12467900056358023270.a n = A108195 (n + 1)

end A108195

/-! ## A108195.P17863705405981556098

`ceil(n-3-(ϕ-record[(n-3)²]))`
-/

namespace A108195.P17863705405981556098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 3 : ℝ) - (Real.goldenRatio - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))⌉

end

end A108195.P17863705405981556098

namespace A108195

/-- `ceil(n-3-(ϕ-record[(n-3)²]))` -/
def P17863705405981556098.Spec : Prop :=
  ∀ n, P17863705405981556098.a n = A108195 (n + 1)

end A108195

/-! ## A108195.P3068032904012977723

`abs(n-1+lcm(n+2, n+3)+n)`
-/

namespace A108195.P3068032904012977723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 1 + (Nat.lcm (n + 2) (n + 3) + n : ℤ)|

end

end A108195.P3068032904012977723

namespace A108195

/-- `abs(n-1+lcm(n+2, n+3)+n)` -/
def P3068032904012977723.Spec : Prop :=
  ∀ n, P3068032904012977723.a n = A108195 (n + 1)

end A108195

/-! ## A108195.P7365464329813260020

`∑[4-(gcd(2, a(n-1))-a(n-1))]` with `a(0)=5`
-/

namespace A108195.P7365464329813260020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  4 - ((Int.gcd 2 (f1 (n - 1)) : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108195.P7365464329813260020

namespace A108195

/-- `∑[4-(gcd(2, a(n-1))-a(n-1))]` -/
def P7365464329813260020.Spec : Prop :=
  ∀ n, P7365464329813260020.a n = A108195 (n + 1)

end A108195

/-! ## A108195.P4522747641039104956

`floor(n-2+C(n+3, n+2)²-ϕ)`
-/

namespace A108195.P4522747641039104956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 2 : ℝ) + ((Nat.choose (n + 3) (n + 2) ^ 2 : ℝ) - Real.goldenRatio)⌋

end

end A108195.P4522747641039104956

namespace A108195

/-- `floor(n-2+C(n+3, n+2)²-ϕ)` -/
def P4522747641039104956.Spec : Prop :=
  ∀ n, P4522747641039104956.a n = A108195 (n + 1)

end A108195

/-! ## A108195.P5180048019189945234

`∑[A103517(n)+4]`
-/

namespace A108195.P5180048019189945234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108195.P5180048019189945234

namespace A108195

/-- `∑[A103517(n)+4]` -/
def P5180048019189945234.Spec : Prop :=
  ∀ n, P5180048019189945234.a n = A108195 (n + 1)

end A108195

/-! ## A108195.P4689427848805854882

`∑[A242963(n+1)+n]`
-/

namespace A108195.P4689427848805854882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242963 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108195.P4689427848805854882

namespace A108195

/-- `∑[A242963(n+1)+n]` -/
def P4689427848805854882.Spec : Prop :=
  ∀ n, P4689427848805854882.a n = A108195 (n + 1)

end A108195

/-! ## A108195.P3640915299029444057

`∑[A009005(n+1)+2+n]`
-/

namespace A108195.P3640915299029444057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (n + 1) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108195.P3640915299029444057

namespace A108195

/-- `∑[A009005(n+1)+2+n]` -/
def P3640915299029444057.Spec : Prop :=
  ∀ n, P3640915299029444057.a n = A108195 (n + 1)

end A108195

/-!
# A108196: Expansion of (x-1)*(x+1) / (8*x^2 + 1 - 3*x + x^4 - 3*x^3).

The programs for A108196, the canonical program `A108196.P5368115574678202276` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108196 has offset 0).

The definition of A108196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108196.P5368115574678202276

`3*a(n-1)-8*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=-1, a(1)=-3, a(2)=0, a(3)=21`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108196

/-- `3*a(n-1)-8*a(n-2)+3*a(n-3)-a(n-4)` -/
def P5368115574678202276.Spec : Prop :=
  ∀ n, P5368115574678202276.a n = A108196 n

theorem P5368115574678202276.correct : P5368115574678202276.Spec := by
  intro n
  simp only [A108196]

end A108196

/-! ## A108196.P3785207331222519679

`A088305(n+1)*A163810(n+1)`
-/

namespace A108196.P3785207331222519679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 1) * A163810 (n + 1)

end

end A108196.P3785207331222519679

namespace A108196

/-- `A088305(n+1)*A163810(n+1)` -/
def P3785207331222519679.Spec : Prop :=
  ∀ n, P3785207331222519679.a n = A108196 n

end A108196

/-! ## A108196.P9783891892388694967

`A001906(n+1)*A010892(n+3)`
-/

namespace A108196.P9783891892388694967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) * A010892 (n + 3)

end

end A108196.P9783891892388694967

namespace A108196

/-- `A001906(n+1)*A010892(n+3)` -/
def P9783891892388694967.Spec : Prop :=
  ∀ n, P9783891892388694967.a n = A108196 n

end A108196

/-! ## A108196.P14401286617546430022

`-A000045(2*(n+1))*A010892(n)`
-/

namespace A108196.P14401286617546430022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000045 (2 * (n + 1)) * A010892 n)

end

end A108196.P14401286617546430022

namespace A108196

/-- `-A000045(2*(n+1))*A010892(n)` -/
def P14401286617546430022.Spec : Prop :=
  ∀ n, P14401286617546430022.a n = A108196 n

end A108196

/-! ## A108196.P17638975458063335363

`A000045(2*(n+1))*A163810(n+1)`
-/

namespace A108196.P17638975458063335363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1)) * A163810 (n + 1)

end

end A108196.P17638975458063335363

namespace A108196

/-- `A000045(2*(n+1))*A163810(n+1)` -/
def P17638975458063335363.Spec : Prop :=
  ∀ n, P17638975458063335363.a n = A108196 n

end A108196

/-! ## A108196.P13361515188225381835

`A000045(2*(n+1))*A010892(n+3)`
-/

namespace A108196.P13361515188225381835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1)) * A010892 (n + 3)

end

end A108196.P13361515188225381835

namespace A108196

/-- `A000045(2*(n+1))*A010892(n+3)` -/
def P13361515188225381835.Spec : Prop :=
  ∀ n, P13361515188225381835.a n = A108196 n

end A108196

/-! ## A108196.P16696674774437136229

`A010892(n+3)*A074662(2*n+1)`
-/

namespace A108196.P16696674774437136229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 3) * A074662 (2 * n + 1)

end

end A108196.P16696674774437136229

namespace A108196

/-- `A010892(n+3)*A074662(2*n+1)` -/
def P16696674774437136229.Spec : Prop :=
  ∀ n, P16696674774437136229.a n = A108196 n

end A108196

/-! ## A108196.P6063054082677318589

`-A000045(2*(n+1))*A163806(n+1)`
-/

namespace A108196.P6063054082677318589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000045 (2 * (n + 1)) * A163806 (n + 1))

end

end A108196.P6063054082677318589

namespace A108196

/-- `-A000045(2*(n+1))*A163806(n+1)` -/
def P6063054082677318589.Spec : Prop :=
  ∀ n, P6063054082677318589.a n = A108196 n

end A108196

/-! ## A108196.P7498972522533234572

`(A280261(2*n)-A280261(2*n+1))*A001906(n+1)`
-/

namespace A108196.P7498972522533234572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280261 (2 * n) - A280261 (2 * n + 1)) * A001906 (n + 1)

end

end A108196.P7498972522533234572

namespace A108196

/-- `(A280261(2*n)-A280261(2*n+1))*A001906(n+1)` -/
def P7498972522533234572.Spec : Prop :=
  ∀ n, P7498972522533234572.a n = A108196 n

end A108196

/-! ## A108196.P4543711313826349889

`Δ[A000071(2*n+1)]*A010892(n+3)`
-/

namespace A108196.P4543711313826349889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010892 (n + 3)

end

end A108196.P4543711313826349889

namespace A108196

/-- `Δ[A000071(2*n+1)]*A010892(n+3)` -/
def P4543711313826349889.Spec : Prop :=
  ∀ n, P4543711313826349889.a n = A108196 n

end A108196

/-! ## A108196.P11545705801581156987

`(A226956(2*n)-A291660(2*n))*A128834(n+1)`
-/

namespace A108196.P11545705801581156987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A226956 (2 * n) - A291660 (2 * n)) * A128834 (n + 1)

end

end A108196.P11545705801581156987

namespace A108196

/-- `(A226956(2*n)-A291660(2*n))*A128834(n+1)` -/
def P11545705801581156987.Spec : Prop :=
  ∀ n, P11545705801581156987.a n = A108196 n

end A108196

/-! ## A108196.P6998493261914360130

`Δ[A112469(2*n+3)]*A010892(n)`
-/

namespace A108196.P6998493261914360130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010892 n

end

end A108196.P6998493261914360130

namespace A108196

/-- `Δ[A112469(2*n+3)]*A010892(n)` -/
def P6998493261914360130.Spec : Prop :=
  ∀ n, P6998493261914360130.a n = A108196 n

end A108196

/-!
# A108197: Number of composite numbers between two successive semiprimes.

The programs for A108197, the canonical program `A108197.P5504492317806481891` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108197 has offset 1).

The definition of A108197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108197.P5504492317806481891

`A065516(n+1)-(A088700(n+1)+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A108197

/-- `A065516(n+1)-(A088700(n+1)+1)` -/
def P5504492317806481891.Spec : Prop :=
  ∀ n, P5504492317806481891.a n = A108197 (n + 1)

theorem P5504492317806481891.correct : P5504492317806481891.Spec := by
  intro n
  simp only [A108197, Nat.add_sub_cancel]

end A108197

/-! ## A108197.P13085158538448877795

`Δ[A001358(n+1)]-(A088700(n+1)+1)`
-/

namespace A108197.P13085158538448877795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A088700 (n + 1) + 1)

end

end A108197.P13085158538448877795

namespace A108197

/-- `Δ[A001358(n+1)]-(A088700(n+1)+1)` -/
def P13085158538448877795.Spec : Prop :=
  ∀ n, P13085158538448877795.a n = A108197 (n + 1)

end A108197

/-! ## A108197.P11358797032322950407

`Δ[A176193(n+1)]-1`
-/

namespace A108197.P11358797032322950407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A108197.P11358797032322950407

namespace A108197

/-- `Δ[A176193(n+1)]-1` -/
def P11358797032322950407.Spec : Prop :=
  ∀ n, P11358797032322950407.a n = A108197 (n + 1)

end A108197

/-! ## A108197.P2222983496795974710

`Δ[A175708(n+1)]-A088700(n+1)`
-/

namespace A108197.P2222983496795974710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A088700 (n + 1)

end

end A108197.P2222983496795974710

namespace A108197

/-- `Δ[A175708(n+1)]-A088700(n+1)` -/
def P2222983496795974710.Spec : Prop :=
  ∀ n, P2222983496795974710.a n = A108197 (n + 1)

end A108197

/-! ## A108197.P175981074372650135

`Δ[A175708(n+1)-A111939(n+1)]`
-/

namespace A108197.P175981074372650135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) - A111939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108197.P175981074372650135

namespace A108197

/-- `Δ[A175708(n+1)-A111939(n+1)]` -/
def P175981074372650135.Spec : Prop :=
  ∀ n, P175981074372650135.a n = A108197 (n + 1)

end A108197

/-! ## A108197.P6374861934776468613

`Δ[eq[2, A001222(A002808(n+1))]]-1`
-/

namespace A108197.P6374861934776468613
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002808 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A108197.P6374861934776468613

namespace A108197

/-- `Δ[eq[2, A001222(A002808(n+1))]]-1` -/
def P6374861934776468613.Spec : Prop :=
  ∀ n, P6374861934776468613.a n = A108197 (n + 1)

end A108197

/-! ## A108197.P4593686420759225361

`Δ[eq[2, A001222(A018252(n+1))]]-1`
-/

namespace A108197.P4593686420759225361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A018252 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A108197.P4593686420759225361

namespace A108197

/-- `Δ[eq[2, A001222(A018252(n+1))]]-1` -/
def P4593686420759225361.Spec : Prop :=
  ∀ n, P4593686420759225361.a n = A108197 (n + 1)

end A108197

/-! ## A108197.P2163825905413034923

`Δ[eq[2, A062502(n+1)]]-1`
-/

namespace A108197.P2163825905413034923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062502 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A108197.P2163825905413034923

namespace A108197

/-- `Δ[eq[2, A062502(n+1)]]-1` -/
def P2163825905413034923.Spec : Prop :=
  ∀ n, P2163825905413034923.a n = A108197 (n + 1)

end A108197

/-! ## A108197.P16040499465041929102

`Δ[A062298(A186621(n+1))]-1`
-/

namespace A108197.P16040499465041929102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A186621 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A108197.P16040499465041929102

namespace A108197

/-- `Δ[A062298(A186621(n+1))]-1` -/
def P16040499465041929102.Spec : Prop :=
  ∀ n, P16040499465041929102.a n = A108197 (n + 1)

end A108197

/-! ## A108197.P15538634744173716144

`Δ[A026238(A001358(n+1))-n%A000203(n+1)]`
-/

namespace A108197.P15538634744173716144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A001358 (n + 1)).toNat - Int.tmod (n : ℤ) (A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108197.P15538634744173716144

namespace A108197

/-- `Δ[A026238(A001358(n+1))-n%A000203(n+1)]` -/
def P15538634744173716144.Spec : Prop :=
  ∀ n, P15538634744173716144.a n = A108197 (n + 1)

end A108197

/-! ## A108197.P16849208361662141535

`Δ[A022447(A001358(n+1))]-1`
-/

namespace A108197.P16849208361662141535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 (A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A108197.P16849208361662141535

namespace A108197

/-- `Δ[A022447(A001358(n+1))]-1` -/
def P16849208361662141535.Spec : Prop :=
  ∀ n, P16849208361662141535.a n = A108197 (n + 1)

end A108197

/-! ## A108197.P11460930279371295668

`Δ[A026233(A186621(n+1)+1)]-1`
-/

namespace A108197.P11460930279371295668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A186621 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A108197.P11460930279371295668

namespace A108197

/-- `Δ[A026233(A186621(n+1)+1)]-1` -/
def P11460930279371295668.Spec : Prop :=
  ∀ n, P11460930279371295668.a n = A108197 (n + 1)

end A108197

/-! ## A108197.P11423379006683332104

`Δ[A062298(A088707(n+1)-1)+n]-2`
-/

namespace A108197.P11423379006683332104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A088707 (n + 1) - 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A108197.P11423379006683332104

namespace A108197

/-- `Δ[A062298(A088707(n+1)-1)+n]-2` -/
def P11423379006683332104.Spec : Prop :=
  ∀ n, P11423379006683332104.a n = A108197 (n + 1)

end A108197

/-! ## A108197.P928338301462878632

`Δ[A026233(A001358(n+1))+A001489(n)]`
-/

namespace A108197.P928338301462878632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A001358 (n + 1)).toNat + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108197.P928338301462878632

namespace A108197

/-- `Δ[A026233(A001358(n+1))+A001489(n)]` -/
def P928338301462878632.Spec : Prop :=
  ∀ n, P928338301462878632.a n = A108197 (n + 1)

end A108197

/-!
# A108198: Triangle read by rows: T(n,k) = binomial(2k+2,k+1)*binomial(n,k)/(k+2) (0 <= k <= n).

The programs for A108198, the canonical program `A108198.P13960803102350845925` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108198 has offset 0).

The definition of A108198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108198.P2064474482983031302

`A000108(A002260(n+1))*A007318(n)`
-/

namespace A108198.P2064474482983031302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002260 (n + 1)).toNat * A007318 n

end

end A108198.P2064474482983031302

namespace A108198

/-- `A000108(A002260(n+1))*A007318(n)` -/
def P2064474482983031302.Spec : Prop :=
  ∀ n, P2064474482983031302.a n = A108198 n

end A108198

/-! ## A108198.P6375491388671227377

`A000108(A002262(n)+1)*A007318(n)`
-/

namespace A108198.P6375491388671227377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n + 1).toNat * A007318 n

end

end A108198.P6375491388671227377

namespace A108198

/-- `A000108(A002262(n)+1)*A007318(n)` -/
def P6375491388671227377.Spec : Prop :=
  ∀ n, P6375491388671227377.a n = A108198 n

end A108198

/-! ## A108198.P12513619804633237843

`abs(A000108(A002260(n+1))*A117440(n))`
-/

namespace A108198.P12513619804633237843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000108 (A002260 (n + 1)).toNat * A117440 n|

end

end A108198.P12513619804633237843

namespace A108198

/-- `abs(A000108(A002260(n+1))*A117440(n))` -/
def P12513619804633237843.Spec : Prop :=
  ∀ n, P12513619804633237843.a n = A108198 n

end A108198

/-! ## A108198.P9857521966559376254

`abs(A000108(A002260(n+1))*A130595(n))`
-/

namespace A108198.P9857521966559376254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000108 (A002260 (n + 1)).toNat * A130595 n|

end

end A108198.P9857521966559376254

namespace A108198

/-- `abs(A000108(A002260(n+1))*A130595(n))` -/
def P9857521966559376254.Spec : Prop :=
  ∀ n, P9857521966559376254.a n = A108198 n

end A108198

/-! ## A108198.P17965906344447935913

`sqrt(A008459(n))*A000108(A002260(n+1))`
-/

namespace A108198.P17965906344447935913
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A000108 (A002260 (n + 1)).toNat : ℝ)

end

end A108198.P17965906344447935913

namespace A108198

/-- `sqrt(A008459(n))*A000108(A002260(n+1))` -/
def P17965906344447935913.Spec : Prop :=
  ∀ n, P17965906344447935913.a n = (A108198 n : ℝ)

end A108198

/-! ## A108198.P7070103743551661870

`A000108(sqrt(A133819(n+1)))*A007318(n)`
-/

namespace A108198.P7070103743551661870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat * A007318 n

end

end A108198.P7070103743551661870

namespace A108198

/-- `A000108(sqrt(A133819(n+1)))*A007318(n)` -/
def P7070103743551661870.Spec : Prop :=
  ∀ n, P7070103743551661870.a n = A108198 n

end A108198

/-! ## A108198.P4262514616351594878

`A000108(log2(A059268(n))+1)*A007318(n)`
-/

namespace A108198.P4262514616351594878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 1)).toNat * A007318 n

end

end A108198.P4262514616351594878

namespace A108198

/-- `A000108(log2(A059268(n))+1)*A007318(n)` -/
def P4262514616351594878.Spec : Prop :=
  ∀ n, P4262514616351594878.a n = A108198 n

end A108198

/-! ## A108198.P13687654231481319324

`A000108(A002260(n+1))*Δ[A102363(n)]`
-/

namespace A108198.P13687654231481319324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002260 (n + 1)).toNat * (f1 (n + 1) - f1 n)

end

end A108198.P13687654231481319324

namespace A108198

/-- `A000108(A002260(n+1))*Δ[A102363(n)]` -/
def P13687654231481319324.Spec : Prop :=
  ∀ n, P13687654231481319324.a n = A108198 n

end A108198

/-! ## A108198.P5925195019026283903

`(A014473(n)+1)*A000108(A002262(n)+1)`
-/

namespace A108198.P5925195019026283903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A000108 (A002262 n + 1).toNat

end

end A108198.P5925195019026283903

namespace A108198

/-- `(A014473(n)+1)*A000108(A002262(n)+1)` -/
def P5925195019026283903.Spec : Prop :=
  ∀ n, P5925195019026283903.a n = A108198 n

end A108198

/-! ## A108198.P2148553246368682577

`A000108(A002260(n+1))/2*A028326(n)`
-/

namespace A108198.P2148553246368682577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (A002260 (n + 1)).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A108198.P2148553246368682577

namespace A108198

/-- `A000108(A002260(n+1))/2*A028326(n)` -/
def P2148553246368682577.Spec : Prop :=
  ∀ n, P2148553246368682577.a n = (A108198 n : ℚ)

end A108198

/-! ## A108198.P13960803102350845925

`A000108(A002260(n+1))*A074909(A083920(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A108198

/-- `A000108(A002260(n+1))*A074909(A083920(n))` -/
def P13960803102350845925.Spec : Prop :=
  ∀ n, P13960803102350845925.a n = A108198 n

theorem P13960803102350845925.correct : P13960803102350845925.Spec := by
  intro n
  simp only [A108198]

end A108198

/-! ## A108198.P3058548723645011923

`A126181(A061579(n))`
-/

namespace A108198.P3058548723645011923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126181 (A061579 n).toNat

end

end A108198.P3058548723645011923

namespace A108198

/-- `A126181(A061579(n))` -/
def P3058548723645011923.Spec : Prop :=
  ∀ n, P3058548723645011923.a n = A108198 n

end A108198

/-! ## A108198.P7704943222596464762

`A000108(A097285(2*n+1))*A007318(n)`
-/

namespace A108198.P7704943222596464762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A097285 (2 * n + 1)).toNat * A007318 n

end

end A108198.P7704943222596464762

namespace A108198

/-- `A000108(A097285(2*n+1))*A007318(n)` -/
def P7704943222596464762.Spec : Prop :=
  ∀ n, P7704943222596464762.a n = A108198 n

end A108198

/-! ## A108198.P14983864892900805452

`A000108(A002260(n+1))*A026741(A028326(n))`
-/

namespace A108198.P14983864892900805452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002260 (n + 1)).toNat * A026741 (A028326 n).toNat

end

end A108198.P14983864892900805452

namespace A108198

/-- `A000108(A002260(n+1))*A026741(A028326(n))` -/
def P14983864892900805452.Spec : Prop :=
  ∀ n, P14983864892900805452.a n = A108198 n

end A108198

/-!
# A108199: a(n) contains the digits of the remainder of a(n)/a(n-1). Sequence starts with 2.

The programs for A108199, there is no canonical definition to state claims against.
-/

/-! ## A108199.P9264817363883732036

`A317591(n+2)%A335907(2*n+1)`
-/

namespace A108199.P9264817363883732036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317591 (n + 2)) (A335907 (2 * n + 1))

end

end A108199.P9264817363883732036

/-! ## A108199.P6672705689810792617

`A317591(n+2)%A312561(A003215(n))`
-/

namespace A108199.P6672705689810792617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317591 (n + 2)) (A312561 (A003215 n).toNat)

end

end A108199.P6672705689810792617

