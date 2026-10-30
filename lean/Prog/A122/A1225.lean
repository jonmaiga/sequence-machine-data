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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A122501: Expansion of -x*(47*x^3+25*x^2+5*x+1)/(38*x^4+54*x^3+22*x^2-1).

The programs for A122501, the canonical program `A122501.P2278593816408052660` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122501 has offset 1).

The definition of A122501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x+25x^2+47x^3)/(1-22x^2-54x^3-38x^4))` (program `A122501.P2278593816408052660`, by `A122501.P2278593816408052660.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122501.P2278593816408052660

`ogf((1+5x+25x^2+47x^3)/(1-22x^2-54x^3-38x^4))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122501

/-- `ogf((1+5x+25x^2+47x^3)/(1-22x^2-54x^3-38x^4))` -/
def P2278593816408052660.Spec : Prop :=
  ∀ n, P2278593816408052660.a n = A122501 (n + 1)

theorem P2278593816408052660.correct : P2278593816408052660.Spec := by
  intro n
  simp only [A122501, Nat.add_sub_cancel]

end A122501

/-!
# A122502: Expansion of x/(1 - 22*x^2 - 54*x^3 - 38*x^4).

The programs for A122502, the canonical program `A122502.P6438552943656909332` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122502 has offset 0).

The definition of A122502 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-22x^2-54x^3-38x^4))` (program `A122502.P6438552943656909332`, by `A122502.P6438552943656909332.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122502.P6438552943656909332

`ogf(x/(1-22x^2-54x^3-38x^4))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122502

/-- `ogf(x/(1-22x^2-54x^3-38x^4))` -/
def P6438552943656909332.Spec : Prop :=
  ∀ n, P6438552943656909332.a n = A122502 n

theorem P6438552943656909332.correct : P6438552943656909332.Spec := by
  intro n
  simp only [A122502]

end A122502

/-! ## A122502.P14335858002482946774

`22*a(n-2)+54*a(n-3)+38*a(n-4)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=22`
-/

namespace A122502.P14335858002482946774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 22] fun n a =>
  22 * a (n - 2) + 54 * a (n - 3) + 38 * a (n - 4)

end

end A122502.P14335858002482946774

namespace A122502

/-- `22*a(n-2)+54*a(n-3)+38*a(n-4)` -/
def P14335858002482946774.Spec : Prop :=
  ∀ n, (P14335858002482946774.a n : ℤ) = A122502 n

end A122502

/-!
# A122503: a(n) = 22*a(n - 2) + 54*a(n - 3) + 38*a(n - 4).

The programs for A122503, the canonical program `A122503.P16652089963776029727` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122503 has offset 1).

The definition of A122503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22*a(n-2)+54*a(n-3)+38*a(n-4)` (program `A122503.P16652089963776029727`, by `A122503.P16652089963776029727.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122503.P2841038502238081058

`ogf((1+x-21x^2-75x^3)/(1-22x^2-54x^3-38x^4))`
-/

namespace A122503.P2841038502238081058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -21, -75] [1, 0, -22, -54, -38] n

end

end A122503.P2841038502238081058

namespace A122503

/-- `ogf((1+x-21x^2-75x^3)/(1-22x^2-54x^3-38x^4))` -/
def P2841038502238081058.Spec : Prop :=
  ∀ n, P2841038502238081058.a n = A122503 (n + 1)

end A122503

/-! ## A122503.P16652089963776029727

`22*a(n-2)+54*a(n-3)+38*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122503

/-- `22*a(n-2)+54*a(n-3)+38*a(n-4)` -/
def P16652089963776029727.Spec : Prop :=
  ∀ n, (P16652089963776029727.a n : ℤ) = A122503 (n + 1)

theorem P16652089963776029727.correct : P16652089963776029727.Spec := by
  intro n
  simp only [A122503, Nat.add_sub_cancel]

end A122503

/-!
# A122504: a(n) = -a(n-6) + 3*a(n-5) + a(n-4) - 7*a(n-3) + a(n-2) + 3*a(n-1).

The programs for A122504, the canonical program `A122504.P11959377487047092672` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122504 has offset 1).

The definition of A122504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122504.P11959377487047092672

`ogf((1-2x-3x^2+4x^3+3x^4)/(1-3x-x^2+7x^3-x^4-3x^5+x^6))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122504

/-- `ogf((1-2x-3x^2+4x^3+3x^4)/(1-3x-x^2+7x^3-x^4-3x^5+x^6))` -/
def P11959377487047092672.Spec : Prop :=
  ∀ n, P11959377487047092672.a n = A122504 (n + 1)

theorem P11959377487047092672.correct : P11959377487047092672.Spec := by
  intro n
  simp only [A122504, Nat.add_sub_cancel]

end A122504

/-! ## A122504.P14902453111783884050

`A294929(A001200(n)-A335514(n))+1-A335514(n)`
-/

namespace A122504.P14902453111783884050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294929 (A001200 n - A335514 n).toNat + 1 - A335514 n

end

end A122504.P14902453111783884050

namespace A122504

/-- `A294929(A001200(n)-A335514(n))+1-A335514(n)` -/
def P14902453111783884050.Spec : Prop :=
  ∀ n, P14902453111783884050.a n = A122504 (n + 1)

end A122504

/-! ## A122504.P1699260816630195533

`2-A260731(A185318(∑[n]))`
-/

namespace A122504.P1699260816630195533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A260731 (A185318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A122504.P1699260816630195533

namespace A122504

/-- `2-A260731(A185318(∑[n]))` -/
def P1699260816630195533.Spec : Prop :=
  ∀ n, P1699260816630195533.a n = A122504 (n + 1)

end A122504

/-! ## A122504.P3281819368848481283

`2-A325863(A349061(n+1))`
-/

namespace A122504.P3281819368848481283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A325863 (A349061 (n + 1)).toNat

end

end A122504.P3281819368848481283

namespace A122504

/-- `2-A325863(A349061(n+1))` -/
def P3281819368848481283.Spec : Prop :=
  ∀ n, P3281819368848481283.a n = A122504 (n + 1)

end A122504

/-! ## A122504.P11295946832846745037

`A055642(n+1)-floor(A010364(n+1)/10)`
-/

namespace A122504.P11295946832846745037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) - ⌊(A010364 (n + 1) : ℚ) / 10⌋

end

end A122504.P11295946832846745037

namespace A122504

/-- `A055642(n+1)-floor(A010364(n+1)/10)` -/
def P11295946832846745037.Spec : Prop :=
  ∀ n, P11295946832846745037.a n = A122504 (n + 1)

end A122504

/-!
# A122505: Table 1 on page 46 in the Witten reference.

The programs for A122505, there is no canonical definition to state claims against.
-/

/-! ## A122505.P15144445107150678211

`A048699(A173493(A272405(A272405(A006535(n+1)))))`
-/

namespace A122505.P15144445107150678211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048699 (A173493 (A272405 (A272405 (A006535 (n + 1)).toNat).toNat).toNat).toNat

end

end A122505.P15144445107150678211

/-!
# A122506: A symmetrical triangular array read by rows based on A018805.

The programs for A122506, there is no canonical definition to state claims against.
-/

/-! ## A122506.P8042714162474824752

`gcd(21, A188640(A160728(n)))`
-/

namespace A122506.P8042714162474824752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 21 (A188640 ((A160728 n).toNat + 1))

end

end A122506.P8042714162474824752

/-! ## A122506.P3846371060842296408

`A053381(lt[3, A228691(n)])`
-/

namespace A122506.P3846371060842296408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A122506.P3846371060842296408

/-! ## A122506.P12979584844246552562

`gcd(∑[n], A163094(A132280(n)))`
-/

namespace A122506.P12979584844246552562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A163094 (A132280 n).toNat)

end

end A122506.P12979584844246552562

/-! ## A122506.P18110507852819094681

`A080383(A138364(comp[2^n-1]))`
-/

namespace A122506.P18110507852819094681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080383 (A138364 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A122506.P18110507852819094681

/-! ## A122506.P15612549094704764250

`gcd(A117221(3^∑{e}[n+1, #]), A124808(n))`
-/

namespace A122506.P15612549094704764250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117221 (3 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))) (A124808 n)

end

end A122506.P15612549094704764250

/-!
# A122507: Triangle in which row n contains the first n terms of A018805.

The programs for A122507, the canonical program `A122507.P15819417335415522876` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122507 has offset 1).

The definition of A122507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122507.P15159417211715616099

`A018805(col(n)+1)`
-/

namespace A122507.P15159417211715616099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (SequenceMachineLib.triCol n + 1)

end

end A122507.P15159417211715616099

namespace A122507

/-- `A018805(col(n)+1)` -/
def P15159417211715616099.Spec : Prop :=
  ∀ n, P15159417211715616099.a n = A122507 (n + 1)

end A122507

/-! ## A122507.P3615423915590547248

`A018805(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A122507.P3615423915590547248
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat

end

end A122507.P3615423915590547248

namespace A122507

/-- `A018805(1-C(∑[char[∑[n]]], 2)+n)` -/
def P3615423915590547248.Spec : Prop :=
  ∀ n, P3615423915590547248.a n = A122507 (n + 1)

end A122507

/-! ## A122507.P10480413880997834758

`A049696(1-C(∑[char[∑[n]]], 2)+n)-1`
-/

namespace A122507.P10480413880997834758
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat - 1

end

end A122507.P10480413880997834758

namespace A122507

/-- `A049696(1-C(∑[char[∑[n]]], 2)+n)-1` -/
def P10480413880997834758.Spec : Prop :=
  ∀ n, P10480413880997834758.a n = A122507 (n + 1)

end A122507

/-! ## A122507.P15819417335415522876

`A049691(1-C(∑[char[∑[n]]], 2)+n)-2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A122507

/-- `A049691(1-C(∑[char[∑[n]]], 2)+n)-2` -/
def P15819417335415522876.Spec : Prop :=
  ∀ n, P15819417335415522876.a n = A122507 (n + 1)

theorem P15819417335415522876.correct : P15819417335415522876.Spec := by
  intro n
  simp only [A122507, Nat.add_sub_cancel]

end A122507

/-! ## A122507.P6047970060868948757

`A209978(1-C(∑[char[∑[n]]], 2)+n)+1-C(∑[char[∑[n]]], 2)+n`
-/

namespace A122507.P6047970060868948757
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209978 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ))

end

end A122507.P6047970060868948757

namespace A122507

/-- `A209978(1-C(∑[char[∑[n]]], 2)+n)+1-C(∑[char[∑[n]]], 2)+n` -/
def P6047970060868948757.Spec : Prop :=
  ∀ n, P6047970060868948757.a n = A122507 (n + 1)

end A122507

/-! ## A122507.P16193395403914998025

`A018805(A002260(n+1))`
-/

namespace A122507.P16193395403914998025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (A002260 (n + 1)).toNat

end

end A122507.P16193395403914998025

namespace A122507

/-- `A018805(A002260(n+1))` -/
def P16193395403914998025.Spec : Prop :=
  ∀ n, P16193395403914998025.a n = A122507 (n + 1)

end A122507

/-! ## A122507.P17820149726315833964

`A018805(A002262(n)+1)`
-/

namespace A122507.P17820149726315833964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (A002262 n + 1).toNat

end

end A122507.P17820149726315833964

namespace A122507

/-- `A018805(A002262(n)+1)` -/
def P17820149726315833964.Spec : Prop :=
  ∀ n, P17820149726315833964.a n = A122507 (n + 1)

end A122507

/-! ## A122507.P5129835123478745325

`A018805(abs(A140756(n+1)))`
-/

namespace A122507.P5129835123478745325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 |A140756 (n + 1)|.toNat

end

end A122507.P5129835123478745325

namespace A122507

/-- `A018805(abs(A140756(n+1)))` -/
def P5129835123478745325.Spec : Prop :=
  ∀ n, P5129835123478745325.a n = A122507 (n + 1)

end A122507

/-! ## A122507.P14243256041994591474

`A018805(A057555(Δ[n²]))`
-/

namespace A122507.P14243256041994591474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A122507.P14243256041994591474

namespace A122507

/-- `A018805(A057555(Δ[n²]))` -/
def P14243256041994591474.Spec : Prop :=
  ∀ n, P14243256041994591474.a n = A122507 (n + 1)

end A122507

/-! ## A122507.P4540447269001351992

`A122506(A185868(n+1))`
-/

namespace A122507.P4540447269001351992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122506 (A185868 (n + 1)).toNat

end

end A122507.P4540447269001351992

namespace A122507

/-- `A122506(A185868(n+1))` -/
def P4540447269001351992.Spec : Prop :=
  ∀ n, P4540447269001351992.a n = A122507 (n + 1)

end A122507

/-! ## A122507.P15941130689156177436

`A018805(A000005(2^(n-C(∑[char[∑[n]]], 2))))`
-/

namespace A122507.P15941130689156177436
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat).toNat

end

end A122507.P15941130689156177436

namespace A122507

/-- `A018805(A000005(2^(n-C(∑[char[∑[n]]], 2))))` -/
def P15941130689156177436.Spec : Prop :=
  ∀ n, P15941130689156177436.a n = A122507 (n + 1)

end A122507

/-! ## A122507.P6103325509792731703

`A018805(A000005(A059268(n)))`
-/

namespace A122507.P6103325509792731703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (A000005 (A059268 n).toNat).toNat

end

end A122507.P6103325509792731703

namespace A122507

/-- `A018805(A000005(A059268(n)))` -/
def P6103325509792731703.Spec : Prop :=
  ∀ n, P6103325509792731703.a n = A122507 (n + 1)

end A122507

/-!
# A122508: G.f.: 1/[(1-2x)(1+2x+3x^2)].

The programs for A122508, the canonical program `A122508.P2164523544675943655` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122508 has offset 0).

The definition of A122508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122508.P14928577095962170095

`ogf(1/(1-x^2-6x^3))`
-/

namespace A122508.P14928577095962170095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, -6] n

end

end A122508.P14928577095962170095

namespace A122508

/-- `ogf(1/(1-x^2-6x^3))` -/
def P14928577095962170095.Spec : Prop :=
  ∀ n, P14928577095962170095.a n = A122508 n

end A122508

/-! ## A122508.P2164523544675943655

`a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122508

/-- `a(n-2)+6*a(n-3)` -/
def P2164523544675943655.Spec : Prop :=
  ∀ n, (P2164523544675943655.a n : ℤ) = A122508 n

theorem P2164523544675943655.correct : P2164523544675943655.Spec := by
  intro n
  simp only [A122508]

end A122508

/-! ## A122508.P15414451421695805873

`7*a(n-3)-(a(n-3)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A122508.P15414451421695805873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  7 * a (n - 3) - (a (n - 3) - a (n - 2))

end

end A122508.P15414451421695805873

namespace A122508

/-- `7*a(n-3)-(a(n-3)-a(n-2))` -/
def P15414451421695805873.Spec : Prop :=
  ∀ n, P15414451421695805873.a n = A122508 n

end A122508

/-!
# A122509: Expansion of x/(1 - 2*x^2 - 21*x^3).

The programs for A122509, the canonical program `A122509.P1040831024324782074` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122509 has offset 0).

The definition of A122509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-2x^2-21x^3))` (program `A122509.P1040831024324782074`, by `A122509.P1040831024324782074.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122509.P1040831024324782074

`ogf(x/(1-2x^2-21x^3))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122509

/-- `ogf(x/(1-2x^2-21x^3))` -/
def P1040831024324782074.Spec : Prop :=
  ∀ n, P1040831024324782074.a n = A122509 n

theorem P1040831024324782074.correct : P1040831024324782074.Spec := by
  intro n
  simp only [A122509]

end A122509

/-!
# A122510: Array T(d,n) = number of integer lattice points inside the d-dimensional hypersphere of radius sqrt(n), read by ascending antidiagonals.

The programs for A122510, there is no canonical definition to state claims against.
-/

/-! ## A122510.P13282185066692121176

`A122141(n+1)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A122510.P13282185066692121176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122141 (n + 1) + SequenceMachineLib.triUpLeft a n

end

end A122510.P13282185066692121176

/-! ## A122510.P17121324708579983954

`or(A035607(n), A119339(∑[n]))`
-/

namespace A122510.P17121324708579983954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035607 n) (A119339 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A122510.P17121324708579983954

/-! ## A122510.P12548383962574240738

`or(A000035(∑[2^n]), A035607(n))`
-/

namespace A122510.P12548383962574240738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (∑ j ∈ Finset.range (n + 1), f1 j)) (A035607 n)

end

end A122510.P12548383962574240738

/-! ## A122510.P3242601042759608920

`or(A000188(A034386(n)), A035607(n))`
-/

namespace A122510.P3242601042759608920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000188 (A034386 n).toNat) (A035607 n)

end

end A122510.P3242601042759608920

/-! ## A122510.P16147459311073329646

`or(A035607(n), A046951(A001317(n)))`
-/

namespace A122510.P16147459311073329646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035607 n) (A046951 (A001317 n).toNat)

end

end A122510.P16147459311073329646

/-!
# A122511: Number of n-node labeled trivalent (or cubic) graphs with connectivity 1.

The programs for A122511, there is no canonical definition to state claims against.
-/

/-! ## A122511.P7815724597386768713

`A004109(n+1)-A007099(n+1)`
-/

namespace A122511.P7815724597386768713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004109 (n + 1) - A007099 (n + 1)

end

end A122511.P7815724597386768713

/-! ## A122511.P2479780374026371819

`A004109(n+1)%A007099(A233583(n+2))`
-/

namespace A122511.P2479780374026371819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004109 (n + 1)) (A007099 (A233583 (n + 2)).toNat)

end

end A122511.P2479780374026371819

/-!
# A122512: Expansion of 1/(1 - x^2 - 2 x^3 + x^4).

The programs for A122512, the canonical program `A122512.P10596869237452009647` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122512 has offset 0).

The definition of A122512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-2x^3+x^4))` (program `A122512.P10596869237452009647`, by `A122512.P10596869237452009647.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122512.P10596869237452009647

`ogf(1/(1-x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122512

/-- `ogf(1/(1-x^2-2x^3+x^4))` -/
def P10596869237452009647.Spec : Prop :=
  ∀ n, P10596869237452009647.a n = A122512 n

theorem P10596869237452009647.correct : P10596869237452009647.Spec := by
  intro n
  simp only [A122512]

end A122512

/-! ## A122512.P5245888145481909307

`2*a(n-3)+a(n-2)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A122512.P5245888145481909307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n a =>
  2 * a (n - 3) + (a (n - 2) - a (n - 4))

end

end A122512.P5245888145481909307

namespace A122512

/-- `2*a(n-3)+a(n-2)-a(n-4)` -/
def P5245888145481909307.Spec : Prop :=
  ∀ n, P5245888145481909307.a n = A122512 n

end A122512

/-! ## A122512.P12136479829351980735

`a(n-2)+a(n-3)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A122512.P12136479829351980735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n a =>
  a (n - 2) + (a (n - 3) + (a (n - 3) - a (n - 4)))

end

end A122512.P12136479829351980735

namespace A122512

/-- `a(n-2)+a(n-3)+a(n-3)-a(n-4)` -/
def P12136479829351980735.Spec : Prop :=
  ∀ n, P12136479829351980735.a n = A122512 n

end A122512

/-! ## A122512.P7875396154444159754

`a(n-2)-(a(n-4)-a(n-3)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A122512.P7875396154444159754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n a =>
  a (n - 2) - (a (n - 4) - a (n - 3) - a (n - 3))

end

end A122512.P7875396154444159754

namespace A122512

/-- `a(n-2)-(a(n-4)-a(n-3)-a(n-3))` -/
def P7875396154444159754.Spec : Prop :=
  ∀ n, P7875396154444159754.a n = A122512 n

end A122512

/-!
# A122513: Numbers n such that 1+2n+3n^2 is a triangular number.

The programs for A122513, the canonical program `A122513.P7893191404185632653` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122513 has offset 1).

The definition of A122513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122513.P7893191404185632653

`ogf((x+45x^2-9x^3-5x^4)/(1-x-98x^2+98x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122513

/-- `ogf((x+45x^2-9x^3-5x^4)/(1-x-98x^2+98x^3+x^4-x^5))` -/
def P7893191404185632653.Spec : Prop :=
  ∀ n, P7893191404185632653.a n = A122513 (n + 1)

theorem P7893191404185632653.correct : P7893191404185632653.Spec := by
  intro n
  simp only [A122513, Nat.add_sub_cancel]

end A122513

/-! ## A122513.P12694980790389456141

`floor(A249164(n+1)/sqrt(6))`
-/

namespace A122513.P12694980790389456141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A249164 (n + 1) : ℝ) / Real.sqrt (6 : ℝ)⌋

end

end A122513.P12694980790389456141

namespace A122513

/-- `floor(A249164(n+1)/sqrt(6))` -/
def P12694980790389456141.Spec : Prop :=
  ∀ n, P12694980790389456141.a n = A122513 (n + 1)

end A122513

/-!
# A122514: Expansion of x/(1 - 2*x^2 - x^3 + x^4).

The programs for A122514, the canonical program `A122514.P9485789262691883182` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122514 has offset 0).

The definition of A122514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-2x^2-x^3+x^4))` (program `A122514.P9485789262691883182`, by `A122514.P9485789262691883182.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122514.P9485789262691883182

`ogf(x/(1-2x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122514

/-- `ogf(x/(1-2x^2-x^3+x^4))` -/
def P9485789262691883182.Spec : Prop :=
  ∀ n, P9485789262691883182.a n = A122514 n

theorem P9485789262691883182.correct : P9485789262691883182.Spec := by
  intro n
  simp only [A122514]

end A122514

/-! ## A122514.P15814974763119267738

`2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A122514.P15814974763119267738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 2] fun n a =>
  2 * a (n - 2) + (a (n - 3) - a (n - 4))

end

end A122514.P15814974763119267738

namespace A122514

/-- `2*a(n-2)+a(n-3)-a(n-4)` -/
def P15814974763119267738.Spec : Prop :=
  ∀ n, P15814974763119267738.a n = A122514 n

end A122514

/-! ## A122514.P12158604111379518991

`a(n-2)+a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A122514.P12158604111379518991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 3) - a (n - 4)))

end

end A122514.P12158604111379518991

namespace A122514

/-- `a(n-2)+a(n-2)+a(n-3)-a(n-4)` -/
def P12158604111379518991.Spec : Prop :=
  ∀ n, P12158604111379518991.a n = A122514 n

end A122514

/-! ## A122514.P11968066099059380404

`a(n-2)-(a(n-4)-a(n-2)-a(n-3))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A122514.P11968066099059380404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 2] fun n a =>
  a (n - 2) - (a (n - 4) - a (n - 2) - a (n - 3))

end

end A122514.P11968066099059380404

namespace A122514

/-- `a(n-2)-(a(n-4)-a(n-2)-a(n-3))` -/
def P11968066099059380404.Spec : Prop :=
  ∀ n, P11968066099059380404.a n = A122514 n

end A122514

/-! ## A122514.P14094260540342168536

`A017817(Δ[n²])`
-/

namespace A122514.P14094260540342168536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A122514.P14094260540342168536

namespace A122514

/-- `A017817(Δ[n²])` -/
def P14094260540342168536.Spec : Prop :=
  ∀ n, P14094260540342168536.a n = A122514 n

end A122514

/-! ## A122514.P15023720076452714266

`A127838(2*(n+3))`
-/

namespace A122514.P15023720076452714266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (2 * (n + 3))

end

end A122514.P15023720076452714266

namespace A122514

/-- `A127838(2*(n+3))` -/
def P15023720076452714266.Spec : Prop :=
  ∀ n, P15023720076452714266.a n = A122514 n

end A122514

/-! ## A122514.P5857660438356414838

`A175790(2*(n+2))-1`
-/

namespace A122514.P5857660438356414838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175790 (2 * (n + 2)) - 1

end

end A122514.P5857660438356414838

namespace A122514

/-- `A175790(2*(n+2))-1` -/
def P5857660438356414838.Spec : Prop :=
  ∀ n, P5857660438356414838.a n = A122514 n

end A122514

/-! ## A122514.P14928551273964306938

`A177825(2*(n+2))-1`
-/

namespace A122514.P14928551273964306938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177825 (2 * (n + 2)) - 1

end

end A122514.P14928551273964306938

namespace A122514

/-- `A177825(2*(n+2))-1` -/
def P14928551273964306938.Spec : Prop :=
  ∀ n, P14928551273964306938.a n = A122514 n

end A122514

/-! ## A122514.P5453403608253099486

`A245487(2*n+1)+A022003(n+1)`
-/

namespace A122514.P5453403608253099486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245487 (2 * n + 1) + A022003 (n + 1)

end

end A122514.P5453403608253099486

namespace A122514

/-- `A245487(2*n+1)+A022003(n+1)` -/
def P5453403608253099486.Spec : Prop :=
  ∀ n, P5453403608253099486.a n = A122514 n

end A122514

/-! ## A122514.P12908433561876869740

`A017817(2*n+1)+A000035(2*n)`
-/

namespace A122514.P12908433561876869740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (2 * n + 1) + A000035 (2 * n)

end

end A122514.P12908433561876869740

namespace A122514

/-- `A017817(2*n+1)+A000035(2*n)` -/
def P12908433561876869740.Spec : Prop :=
  ∀ n, P12908433561876869740.a n = A122514 n

end A122514

/-! ## A122514.P16050580596934731242

`A079398(2*n)-a(n-1)` with `a(0)=0`
-/

namespace A122514.P16050580596934731242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A079398 (2 * n) - a (n - 1)

end

end A122514.P16050580596934731242

namespace A122514

/-- `A079398(2*n)-a(n-1)` -/
def P16050580596934731242.Spec : Prop :=
  ∀ n, P16050580596934731242.a n = A122514 n

end A122514

/-! ## A122514.P1283341696148123316

`Δ[A079398(Δ[n²])]`
-/

namespace A122514.P1283341696148123316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122514.P1283341696148123316

namespace A122514

/-- `Δ[A079398(Δ[n²])]` -/
def P1283341696148123316.Spec : Prop :=
  ∀ n, P1283341696148123316.a n = A122514 n

end A122514

/-! ## A122514.P13151610336297277743

`A079398(2*n+3)-A079398(2*n+1)`
-/

namespace A122514.P13151610336297277743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (2 * n + 3) - A079398 (2 * n + 1)

end

end A122514.P13151610336297277743

namespace A122514

/-- `A079398(2*n+3)-A079398(2*n+1)` -/
def P13151610336297277743.Spec : Prop :=
  ∀ n, P13151610336297277743.a n = A122514 n

end A122514

/-! ## A122514.P15324637209872478448

`A123552(2*n+1)-A123552(2*n)`
-/

namespace A122514.P15324637209872478448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123552 (2 * n + 1) - A123552 (2 * n)

end

end A122514.P15324637209872478448

namespace A122514

/-- `A123552(2*n+1)-A123552(2*n)` -/
def P15324637209872478448.Spec : Prop :=
  ∀ n, P15324637209872478448.a n = A122514 n

end A122514

/-!
# A122515: a(n) = A007504(n) - A046992(n).

The programs for A122515, the canonical program `A122515.P14647723614096955269` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122515 has offset 1).

The definition of A122515 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122515.P14647723614096955269

`A007504(n+1)-A046992(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A122515

/-- `A007504(n+1)-A046992(n+1)` -/
def P14647723614096955269.Spec : Prop :=
  ∀ n, P14647723614096955269.a n = A122515 (n + 1)

theorem P14647723614096955269.correct : P14647723614096955269.Spec := by
  intro n
  simp only [A122515, Nat.add_sub_cancel]

end A122515

/-! ## A122515.P12875309266882545409

`∑[A111181(n+1)]`
-/

namespace A122515.P12875309266882545409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P12875309266882545409

namespace A122515

/-- `∑[A111181(n+1)]` -/
def P12875309266882545409.Spec : Prop :=
  ∀ n, P12875309266882545409.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P14409424857968883613

`∑[A008864(n+1)-∑[∑{e}[1+n, #]!%2]]`
-/

namespace A122515.P14409424857968883613
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P14409424857968883613

namespace A122515

/-- `∑[A008864(n+1)-∑[∑{e}[1+n, #]!%2]]` -/
def P14409424857968883613.Spec : Prop :=
  ∀ n, P14409424857968883613.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P12951764840508451212

`∑[Δ[A007504(n)]-A000720(n+1)]`
-/

namespace A122515.P12951764840508451212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P12951764840508451212

namespace A122515

/-- `∑[Δ[A007504(n)]-A000720(n+1)]` -/
def P12951764840508451212.Spec : Prop :=
  ∀ n, P12951764840508451212.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P1750776872200127242

`∑[A062298(n+1)+A014689(n+1)]`
-/

namespace A122515.P1750776872200127242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) + A014689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P1750776872200127242

namespace A122515

/-- `∑[A062298(n+1)+A014689(n+1)]` -/
def P1750776872200127242.Spec : Prop :=
  ∀ n, P1750776872200127242.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P17019527140598211283

`∑[A065855(n+1)+A014692(n+1)]`
-/

namespace A122515.P17019527140598211283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) + A014692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P17019527140598211283

namespace A122515

/-- `∑[A065855(n+1)+A014692(n+1)]` -/
def P17019527140598211283.Spec : Prop :=
  ∀ n, P17019527140598211283.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P1865879125658712304

`∑[A000040(n+1)-A000720(n+1)]`
-/

namespace A122515.P1865879125658712304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P1865879125658712304

namespace A122515

/-- `∑[A000040(n+1)-A000720(n+1)]` -/
def P1865879125658712304.Spec : Prop :=
  ∀ n, P1865879125658712304.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P7956675381796799757

`∑[A000040(n+1)]-A046992(n+1)`
-/

namespace A122515.P7956675381796799757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A046992 (n + 1)

end

end A122515.P7956675381796799757

namespace A122515

/-- `∑[A000040(n+1)]-A046992(n+1)` -/
def P7956675381796799757.Spec : Prop :=
  ∀ n, P7956675381796799757.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P8102376474061453537

`∑[sqrt(A001248(n+1))-A000720(n+1)]`
-/

namespace A122515.P8102376474061453537
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - (A000720 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P8102376474061453537

namespace A122515

/-- `∑[sqrt(A001248(n+1))-A000720(n+1)]` -/
def P8102376474061453537.Spec : Prop :=
  ∀ n, P8102376474061453537.a n = (A122515 (n + 1) : ℝ)

end A122515

/-! ## A122515.P4227290713418922570

`∑[A000040(n+1)-∑[A010051(n+1)]]`
-/

namespace A122515.P4227290713418922570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P4227290713418922570

namespace A122515

/-- `∑[A000040(n+1)-∑[A010051(n+1)]]` -/
def P4227290713418922570.Spec : Prop :=
  ∀ n, P4227290713418922570.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P189949420946730052

`∑[∑[A054541(n+1)]-A000720(n+1)]`
-/

namespace A122515.P189949420946730052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P189949420946730052

namespace A122515

/-- `∑[∑[A054541(n+1)]-A000720(n+1)]` -/
def P189949420946730052.Spec : Prop :=
  ∀ n, P189949420946730052.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P4322363883070369145

`∑[A008864(n+1)-(A000720(n+1)+1)]`
-/

namespace A122515.P4322363883070369145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A000720 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P4322363883070369145

namespace A122515

/-- `∑[A008864(n+1)-(A000720(n+1)+1)]` -/
def P4322363883070369145.Spec : Prop :=
  ∀ n, P4322363883070369145.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P7798147782753011978

`∑[A000040(n+1)+1-A036234(n+1)]`
-/

namespace A122515.P7798147782753011978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (1 - A036234 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P7798147782753011978

namespace A122515

/-- `∑[A000040(n+1)+1-A036234(n+1)]` -/
def P7798147782753011978.Spec : Prop :=
  ∀ n, P7798147782753011978.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P11168782339771434278

`A101301(n+1)+∑[1-A000720(n+1)]`
-/

namespace A122515.P11168782339771434278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P11168782339771434278

namespace A122515

/-- `A101301(n+1)+∑[1-A000720(n+1)]` -/
def P11168782339771434278.Spec : Prop :=
  ∀ n, P11168782339771434278.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P9977103644006291593

`A237589(n+1)+1-∑[A000720(n+1)]`
-/

namespace A122515.P9977103644006291593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122515.P9977103644006291593

namespace A122515

/-- `A237589(n+1)+1-∑[A000720(n+1)]` -/
def P9977103644006291593.Spec : Prop :=
  ∀ n, P9977103644006291593.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P1942890055968294050

`∑[A100484(n+1)/2-A000720(n+1)]`
-/

namespace A122515.P1942890055968294050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2 - (A000720 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P1942890055968294050

namespace A122515

/-- `∑[A100484(n+1)/2-A000720(n+1)]` -/
def P1942890055968294050.Spec : Prop :=
  ∀ n, P1942890055968294050.a n = (A122515 (n + 1) : ℚ)

end A122515

/-! ## A122515.P16353358092356396296

`∑[A000040(n+1)-∑[floor(n/(A000203(n+1)-2))]]`
-/

namespace A122515.P16353358092356396296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A000203 (n + 1) - 2 : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P16353358092356396296

namespace A122515

/-- `∑[A000040(n+1)-∑[floor(n/(A000203(n+1)-2))]]` -/
def P16353358092356396296.Spec : Prop :=
  ∀ n, P16353358092356396296.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P10916072547627952769

`∑[A000040(n+1)-∑[round(A020639(n+1)/(n+3))]]`
-/

namespace A122515.P10916072547627952769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020639 (n + 1) : ℚ) / (n + 3 : ℚ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P10916072547627952769

namespace A122515

/-- `∑[A000040(n+1)-∑[round(A020639(n+1)/(n+3))]]` -/
def P10916072547627952769.Spec : Prop :=
  ∀ n, P10916072547627952769.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P12330046634584018270

`∑[p?[A018252(n+1)-7]-∑[char[record[A000010(n+1)]]]]`
-/

namespace A122515.P12330046634584018270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f5 (SequenceMachineLib.nth (fun j => ∀ l < j, f5 l < f5 j) n)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P12330046634584018270

namespace A122515

/-- `∑[p?[A018252(n+1)-7]-∑[char[record[A000010(n+1)]]]]` -/
def P12330046634584018270.Spec : Prop :=
  ∀ n, P12330046634584018270.a n = A122515 (n + 1)

end A122515

/-! ## A122515.P7571254922631103046

`∑[record[A051698(n)]-A000720(n+1)]`
-/

namespace A122515.P7571254922631103046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122515.P7571254922631103046

namespace A122515

/-- `∑[record[A051698(n)]-A000720(n+1)]` -/
def P7571254922631103046.Spec : Prop :=
  ∀ n, P7571254922631103046.a n = A122515 (n + 1)

end A122515

/-!
# A122516: Primes in A046992.

The programs for A122516, the canonical program `A122516.P15119530128524371559` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122516 has offset 1).

The definition of A122516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122516.P17136250126300475566

`A000040(A122933(n+1))`
-/

namespace A122516.P17136250126300475566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A122933 (n + 1)).toNat

end

end A122516.P17136250126300475566

namespace A122516

/-- `A000040(A122933(n+1))` -/
def P17136250126300475566.Spec : Prop :=
  ∀ n, P17136250126300475566.a n = A122516 (n + 1)

end A122516

/-! ## A122516.P1966230398639765530

`p?[∑[A230980(n)]]`
-/

namespace A122516.P1966230398639765530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122516.P1966230398639765530

namespace A122516

/-- `p?[∑[A230980(n)]]` -/
def P1966230398639765530.Spec : Prop :=
  ∀ n, P1966230398639765530.a n = A122516 (n + 1)

end A122516

/-! ## A122516.P15119530128524371559

`p?[A046992(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A122516

/-- `p?[A046992(n+1)]` -/
def P15119530128524371559.Spec : Prop :=
  ∀ n, P15119530128524371559.a n = A122516 (n + 1)

theorem P15119530128524371559.correct : P15119530128524371559.Spec := by
  intro n
  simp only [A122516, Nat.add_sub_cancel]

end A122516

/-! ## A122516.P6073189723500245748

`p?[A002815(n)-n]`
-/

namespace A122516.P6073189723500245748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122516.P6073189723500245748

namespace A122516

/-- `p?[A002815(n)-n]` -/
def P6073189723500245748.Spec : Prop :=
  ∀ n, P6073189723500245748.a n = A122516 (n + 1)

end A122516

/-! ## A122516.P9333825153231431086

`p?[∑[A000720(n+1)]]`
-/

namespace A122516.P9333825153231431086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122516.P9333825153231431086

namespace A122516

/-- `p?[∑[A000720(n+1)]]` -/
def P9333825153231431086.Spec : Prop :=
  ∀ n, P9333825153231431086.a n = A122516 (n + 1)

end A122516

/-! ## A122516.P12665751740568331043

`p?[Δ[A137441(n+1)]]`
-/

namespace A122516.P12665751740568331043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137441 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122516.P12665751740568331043

namespace A122516

/-- `p?[Δ[A137441(n+1)]]` -/
def P12665751740568331043.Spec : Prop :=
  ∀ n, P12665751740568331043.a n = A122516 (n + 1)

end A122516

/-! ## A122516.P17156888243079654518

`p?[A061536(n+1)-1]`
-/

namespace A122516.P17156888243079654518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061536 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122516.P17156888243079654518

namespace A122516

/-- `p?[A061536(n+1)-1]` -/
def P17156888243079654518.Spec : Prop :=
  ∀ n, P17156888243079654518.a n = A122516 (n + 1)

theorem P17156888243079654518.correct : P17156888243079654518.Spec := by
  intro n
  simp only [A122516, Nat.add_sub_cancel, A122516.P17156888243079654518.f1, A122516.P17156888243079654518.a, A122516.P15119530128524371559.f1, A122516.P15119530128524371559.a, A046992, A046992.P5723550036857346414.a, A061536, A061536.P1966979558929038729.a, A002815, A002815.P11144953744924913715.f1, A002815.P11144953744924913715.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A122516

/-! ## A122516.P17587749315761067834

`p?[∑[∑[A010051(n+1)]]]`
-/

namespace A122516.P17587749315761067834
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122516.P17587749315761067834

namespace A122516

/-- `p?[∑[∑[A010051(n+1)]]]` -/
def P17587749315761067834.Spec : Prop :=
  ∀ n, P17587749315761067834.a n = A122516 (n + 1)

end A122516

/-! ## A122516.P468578560719260391

`p?[∑[A056172(2*n+1)]]`
-/

namespace A122516.P468578560719260391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122516.P468578560719260391

namespace A122516

/-- `p?[∑[A056172(2*n+1)]]` -/
def P468578560719260391.Spec : Prop :=
  ∀ n, P468578560719260391.a n = A122516 (n + 1)

end A122516

/-! ## A122516.P17290129841302840693

`p?[∑[A242096(2*n+1)]]`
-/

namespace A122516.P17290129841302840693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122516.P17290129841302840693

namespace A122516

/-- `p?[∑[A242096(2*n+1)]]` -/
def P17290129841302840693.Spec : Prop :=
  ∀ n, P17290129841302840693.a n = A122516 (n + 1)

end A122516

/-! ## A122516.P12949973106790729109

`p?[∑[∑[char[A000040(n+1)]]]]`
-/

namespace A122516.P12949973106790729109
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A122516.P12949973106790729109

namespace A122516

/-- `p?[∑[∑[char[A000040(n+1)]]]]` -/
def P12949973106790729109.Spec : Prop :=
  ∀ n, (P12949973106790729109.a n : ℤ) = A122516 (n + 1)

end A122516

/-! ## A122516.P7212196276563819365

`p?[∑[∑[char[A006530(n+2)]]]]`
-/

namespace A122516.P7212196276563819365
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A122516.P7212196276563819365

namespace A122516

/-- `p?[∑[∑[char[A006530(n+2)]]]]` -/
def P7212196276563819365.Spec : Prop :=
  ∀ n, (P7212196276563819365.a n : ℤ) = A122516 (n + 1)

end A122516

/-! ## A122516.P3197166871344108683

`p?[∑[∑[char[A020639(n+2)]]]]`
-/

namespace A122516.P3197166871344108683
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A122516.P3197166871344108683

namespace A122516

/-- `p?[∑[∑[char[A020639(n+2)]]]]` -/
def P3197166871344108683.Spec : Prop :=
  ∀ n, (P3197166871344108683.a n : ℤ) = A122516 (n + 1)

end A122516

/-! ## A122516.P9974039973702216479

`p?[∑[∑[A001222(n+2)!%2]]]`
-/

namespace A122516.P9974039973702216479
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (n + 2)).toNat % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A122516.P9974039973702216479

namespace A122516

/-- `p?[∑[∑[A001222(n+2)!%2]]]` -/
def P9974039973702216479.Spec : Prop :=
  ∀ n, (P9974039973702216479.a n : ℤ) = A122516 (n + 1)

end A122516

/-! ## A122516.P3348555110526950021

`∩[A000040(n+1), A046992(n+1)]`
-/

namespace A122516.P3348555110526950021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122516.P3348555110526950021

namespace A122516

/-- `∩[A000040(n+1), A046992(n+1)]` -/
def P3348555110526950021.Spec : Prop :=
  ∀ n, (P3348555110526950021.a n : ℤ) = A122516 (n + 1)

end A122516

/-! ## A122516.P4797939038223254617

`∩[A046992(n+1), A051948(n+1)]`
-/

namespace A122516.P4797939038223254617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122516.P4797939038223254617

namespace A122516

/-- `∩[A046992(n+1), A051948(n+1)]` -/
def P4797939038223254617.Spec : Prop :=
  ∀ n, (P4797939038223254617.a n : ℤ) = A122516 (n + 1)

end A122516

/-! ## A122516.P6735414470920235944

`∩[A046992(n+1), A053813(n+1)]`
-/

namespace A122516.P6735414470920235944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122516.P6735414470920235944

namespace A122516

/-- `∩[A046992(n+1), A053813(n+1)]` -/
def P6735414470920235944.Spec : Prop :=
  ∀ n, (P6735414470920235944.a n : ℤ) = A122516 (n + 1)

end A122516

/-! ## A122516.P12476069988351418349

`∩[A046992(n+1), A065091(n+1)]`
-/

namespace A122516.P12476069988351418349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122516.P12476069988351418349

namespace A122516

/-- `∩[A046992(n+1), A065091(n+1)]` -/
def P12476069988351418349.Spec : Prop :=
  ∀ n, (P12476069988351418349.a n : ℤ) = A122516 (n + 1)

end A122516

/-! ## A122516.P6423991103435037930

`∩[A046992(n+1), A070159(n+1)]`
-/

namespace A122516.P6423991103435037930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122516.P6423991103435037930

namespace A122516

/-- `∩[A046992(n+1), A070159(n+1)]` -/
def P6423991103435037930.Spec : Prop :=
  ∀ n, (P6423991103435037930.a n : ℤ) = A122516 (n + 1)

end A122516

/-!
# A122517: G.f.: 1/(1 - x^3 - 2 x^4 + x^5).

The programs for A122517, the canonical program `A122517.P5449583536680177871` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122517 has offset 0).

The definition of A122517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 902 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122517.P5449583536680177871

`ogf(1/(1-x^3-2x^4+x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122517

/-- `ogf(1/(1-x^3-2x^4+x^5))` -/
def P5449583536680177871.Spec : Prop :=
  ∀ n, P5449583536680177871.a n = A122517 n

theorem P5449583536680177871.correct : P5449583536680177871.Spec := by
  intro n
  simp only [A122517]

end A122517

/-!
# A122518: G.f.: 1/(1 -2 x^3 - x^4 + x^5).

The programs for A122518, the canonical program `A122518.P4163835182008851658` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122518 has offset 0).

The definition of A122518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122518.P4163835182008851658

`ogf(1/(1-2x^3-x^4+x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122518

/-- `ogf(1/(1-2x^3-x^4+x^5))` -/
def P4163835182008851658.Spec : Prop :=
  ∀ n, P4163835182008851658.a n = A122518 n

theorem P4163835182008851658.correct : P4163835182008851658.Spec := by
  intro n
  simp only [A122518]

end A122518

/-!
# A122519: Expansion of x * (x+1) * (x^3-x^2-1) / ((x^2+1) * (x^3+x^2-1)).

The programs for A122519, the canonical program `A122519.P7866659114058839393` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122519 has offset 1).

The definition of A122519 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2-x^4)/(1-x^3-x^4-x^5))` (program `A122519.P7866659114058839393`, by `A122519.P7866659114058839393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122519.P7866659114058839393

`ogf((1+x+x^2-x^4)/(1-x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122519

/-- `ogf((1+x+x^2-x^4)/(1-x^3-x^4-x^5))` -/
def P7866659114058839393.Spec : Prop :=
  ∀ n, P7866659114058839393.a n = A122519 (n + 1)

theorem P7866659114058839393.correct : P7866659114058839393.Spec := by
  intro n
  simp only [A122519, Nat.add_sub_cancel]

end A122519

/-! ## A122519.P4639442099224455450

`a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A122519.P4639442099224455450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  a (n - 3) + (a (n - 4) + a (n - 5))

end

end A122519.P4639442099224455450

namespace A122519

/-- `a(n-3)+a(n-4)+a(n-5)` -/
def P4639442099224455450.Spec : Prop :=
  ∀ n, (P4639442099224455450.a n : ℤ) = A122519 (n + 1)

end A122519

/-! ## A122519.P11128304762643893668

`A182097(n)+Δ[A017818(n+1)]`
-/

namespace A122519.P11128304762643893668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n + (f1 (n + 1) - f1 n)

end

end A122519.P11128304762643893668

namespace A122519

/-- `A182097(n)+Δ[A017818(n+1)]` -/
def P11128304762643893668.Spec : Prop :=
  ∀ n, P11128304762643893668.a n = A122519 (n + 1)

end A122519

/-! ## A122519.P3760506538247141479

`A078027(n+5)+Δ[A017818(n+1)]`
-/

namespace A122519.P3760506538247141479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 5) + (f1 (n + 1) - f1 n)

end

end A122519.P3760506538247141479

namespace A122519

/-- `A078027(n+5)+Δ[A017818(n+1)]` -/
def P3760506538247141479.Spec : Prop :=
  ∀ n, P3760506538247141479.a n = A122519 (n + 1)

end A122519

/-! ## A122519.P16494736004931553470

`A000931(n)+Δ[A017818(n+5)]`
-/

namespace A122519.P16494736004931553470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n + (f1 (n + 1) - f1 n)

end

end A122519.P16494736004931553470

namespace A122519

/-- `A000931(n)+Δ[A017818(n+5)]` -/
def P16494736004931553470.Spec : Prop :=
  ∀ n, P16494736004931553470.a n = A122519 (n + 1)

end A122519

/-! ## A122519.P16427616141433134102

`Δ[A023434(n)+A017818(n+1)]`
-/

namespace A122519.P16427616141433134102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 n + A017818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122519.P16427616141433134102

namespace A122519

/-- `Δ[A023434(n)+A017818(n+1)]` -/
def P16427616141433134102.Spec : Prop :=
  ∀ n, P16427616141433134102.a n = A122519 (n + 1)

end A122519

/-! ## A122519.P7681046306819757203

`Δ[A134816(n+3)+A017818(n+1)]`
-/

namespace A122519.P7681046306819757203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 3) + A017818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122519.P7681046306819757203

namespace A122519

/-- `Δ[A134816(n+3)+A017818(n+1)]` -/
def P7681046306819757203.Spec : Prop :=
  ∀ n, P7681046306819757203.a n = A122519 (n + 1)

end A122519

/-! ## A122519.P7330676651669810536

`Δ[A164001(n+2)-A017818(n+3)]`
-/

namespace A122519.P7330676651669810536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 2) - A017818 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122519.P7330676651669810536

namespace A122519

/-- `Δ[A164001(n+2)-A017818(n+3)]` -/
def P7330676651669810536.Spec : Prop :=
  ∀ n, P7330676651669810536.a n = A122519 (n + 1)

end A122519

/-!
# A122520: Expansion of x*(1+2*x+3*x^2+4*x^3+4*x^4)/(1+x+x^2+x^3-x^5).

The programs for A122520, the canonical program `A122520.P2552190871272920246` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122520 has offset 1).

The definition of A122520 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2+4x^3+4x^4)/(1+x+x^2+x^3-x^5))` (program `A122520.P2552190871272920246`, by `A122520.P2552190871272920246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122520.P2552190871272920246

`ogf((1+2x+3x^2+4x^3+4x^4)/(1+x+x^2+x^3-x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122520

/-- `ogf((1+2x+3x^2+4x^3+4x^4)/(1+x+x^2+x^3-x^5))` -/
def P2552190871272920246.Spec : Prop :=
  ∀ n, P2552190871272920246.a n = A122520 (n + 1)

theorem P2552190871272920246.correct : P2552190871272920246.Spec := by
  intro n
  simp only [A122520, Nat.add_sub_cancel]

end A122520

/-!
# A122521: Recursion: a(n) = a(n - 6) + a(n - 8).

The programs for A122521, the canonical program `A122521.P7746566168653688867` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122521 has offset 1).

The definition of A122521 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-6)+a(n-8)` (program `A122521.P7746566168653688867`, by `A122521.P7746566168653688867.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122521.P7746566168653688867

`a(n-6)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122521

/-- `a(n-6)+a(n-8)` -/
def P7746566168653688867.Spec : Prop :=
  ∀ n, (P7746566168653688867.a n : ℤ) = A122521 (n + 1)

theorem P7746566168653688867.correct : P7746566168653688867.Spec := by
  intro n
  simp only [A122521, Nat.add_sub_cancel]

end A122521

/-! ## A122521.P9351465815119183395

`ogf((1+x+x^2+x^3+x^4+x^5)/(1-x^6-x^8))`
-/

namespace A122521.P9351465815119183395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1, 1, 1] [1, 0, 0, 0, 0, 0, -1, 0, -1] n

end

end A122521.P9351465815119183395

namespace A122521

/-- `ogf((1+x+x^2+x^3+x^4+x^5)/(1-x^6-x^8))` -/
def P9351465815119183395.Spec : Prop :=
  ∀ n, P9351465815119183395.a n = A122521 (n + 1)

end A122521

/-! ## A122521.P17434403052561212095

`A079398(∑[char[2*n]])`
-/

namespace A122521.P17434403052561212095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122521.P17434403052561212095

namespace A122521

/-- `A079398(∑[char[2*n]])` -/
def P17434403052561212095.Spec : Prop :=
  ∀ n, P17434403052561212095.a n = A122521 (n + 1)

end A122521

/-! ## A122521.P7175608321838767830

`and(-1, A079398(A110654(n+1)))`
-/

namespace A122521.P7175608321838767830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A079398 (A110654 (n + 1)).toNat)

end

end A122521.P7175608321838767830

namespace A122521

/-- `and(-1, A079398(A110654(n+1)))` -/
def P7175608321838767830.Spec : Prop :=
  ∀ n, P7175608321838767830.a n = A122521 (n + 1)

end A122521

/-! ## A122521.P4295555550884466278

`or(A000007(n), A079398(A110654(n+1)))`
-/

namespace A122521.P4295555550884466278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A079398 (A110654 (n + 1)).toNat)

end

end A122521.P4295555550884466278

namespace A122521

/-- `or(A000007(n), A079398(A110654(n+1)))` -/
def P4295555550884466278.Spec : Prop :=
  ∀ n, P4295555550884466278.a n = A122521 (n + 1)

end A122521

/-! ## A122521.P4666467966802465534

`or(A036987(n), A079398(A110654(n+1)))`
-/

namespace A122521.P4666467966802465534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A079398 (A110654 (n + 1)).toNat)

end

end A122521.P4666467966802465534

namespace A122521

/-- `or(A036987(n), A079398(A110654(n+1)))` -/
def P4666467966802465534.Spec : Prop :=
  ∀ n, P4666467966802465534.a n = A122521 (n + 1)

end A122521

/-! ## A122521.P9971142013760775865

`A079398(A110654(n+1))+A000007(2*(n+1))`
-/

namespace A122521.P9971142013760775865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (A110654 (n + 1)).toNat + A000007 (2 * (n + 1))

end

end A122521.P9971142013760775865

namespace A122521

/-- `A079398(A110654(n+1))+A000007(2*(n+1))` -/
def P9971142013760775865.Spec : Prop :=
  ∀ n, P9971142013760775865.a n = A122521 (n + 1)

end A122521

/-!
# A122522: a(n) = a(n - 2) + a(n - 8), with a(1) = ... = a(8) = 1.

The programs for A122522, the canonical program `A122522.P10574045769408448485` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122522 has offset 1).

The definition of A122522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-8)` (program `A122522.P10574045769408448485`, by `A122522.P10574045769408448485.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122522.P1736398335487110857

`ogf((1+x)/(1-x^2-x^8))`
-/

namespace A122522.P1736398335487110857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 0, -1, 0, 0, 0, 0, 0, -1] n

end

end A122522.P1736398335487110857

namespace A122522

/-- `ogf((1+x)/(1-x^2-x^8))` -/
def P1736398335487110857.Spec : Prop :=
  ∀ n, P1736398335487110857.a n = A122522 (n + 1)

end A122522

/-! ## A122522.P10574045769408448485

`a(n-2)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122522

/-- `a(n-2)+a(n-8)` -/
def P10574045769408448485.Spec : Prop :=
  ∀ n, (P10574045769408448485.a n : ℤ) = A122522 (n + 1)

theorem P10574045769408448485.correct : P10574045769408448485.Spec := by
  intro n
  simp only [A122522, Nat.add_sub_cancel]

end A122522

/-! ## A122522.P652182936000077784

`A003269(∑[char[2*n]])`
-/

namespace A122522.P652182936000077784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122522.P652182936000077784

namespace A122522

/-- `A003269(∑[char[2*n]])` -/
def P652182936000077784.Spec : Prop :=
  ∀ n, P652182936000077784.a n = A122522 (n + 1)

end A122522

/-! ## A122522.P6448483299068567392

`A017898(round((n+1)/2)+3)`
-/

namespace A122522.P6448483299068567392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2) + 3).toNat

end

end A122522.P6448483299068567392

namespace A122522

/-- `A017898(round((n+1)/2)+3)` -/
def P6448483299068567392.Spec : Prop :=
  ∀ n, P6448483299068567392.a n = A122522 (n + 1)

end A122522

/-! ## A122522.P12192807832545684266

`sqrt(A224808(and(n, -2)))`
-/

namespace A122522.P12192807832545684266
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A224808 (Int.land (n : ℤ) (-2)).toNat : ℝ)

end

end A122522.P12192807832545684266

namespace A122522

/-- `sqrt(A224808(and(n, -2)))` -/
def P12192807832545684266.Spec : Prop :=
  ∀ n, P12192807832545684266.a n = (A122522 (n + 1) : ℝ)

end A122522

/-!
# A122523: Coefficients of series giving the best rational approximations to e.

The programs for A122523, there is no canonical definition to state claims against.
-/

/-! ## A122523.P131662669718259257

`∏[A002119(n+2)/A002119(n)]`
-/

namespace A122523.P131662669718259257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002119 (n + 2) : ℚ) / (A002119 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122523.P131662669718259257

/-! ## A122523.P8969932417711523473

`lcm(A002119(n+1), A002119(n+2))`
-/

namespace A122523.P8969932417711523473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002119 (n + 1)) (A002119 (n + 2))

end

end A122523.P8969932417711523473

/-! ## A122523.P6197357064951404365

`A340738(2*n+1)*A340738(2*n+3)`
-/

namespace A122523.P6197357064951404365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340738 (2 * n + 1) * A340738 (2 * n + 3)

end

end A122523.P6197357064951404365

/-! ## A122523.P16899405041578249795

`A006259(A339267(3*n+2))*A007677(3*n+4)`
-/

namespace A122523.P16899405041578249795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006259 (A339267 (3 * n + 2)).toNat * A007677 (3 * n + 4)

end

end A122523.P16899405041578249795

/-! ## A122523.P15391264946716999910

`A007677(3*n+1)*A259588(3*(n+1))`
-/

namespace A122523.P15391264946716999910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007677 (3 * n + 1) * A259588 (3 * (n + 1))

end

end A122523.P15391264946716999910

/-!
# A122525: Triangle read by rows: G(s, rho) = ((s-1)!/s)*Sum_{i=0..s-1} ((s-i)/i!)*(s*rho)^i.

The programs for A122525, the canonical program `A122525.P3049472410063395283` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122525 has offset 1).

The definition of A122525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1747 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122525.P6790484932528821286

`A119502(n)*A395611(n)`
-/

namespace A122525.P6790484932528821286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A395611 n

end

end A122525.P6790484932528821286

namespace A122525

/-- `A119502(n)*A395611(n)` -/
def P6790484932528821286.Spec : Prop :=
  ∀ n, P6790484932528821286.a n = A122525 (n + 1)

end A122525

/-! ## A122525.P3049472410063395283

`A058127(n+1)*A094587(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A122525

/-- `A058127(n+1)*A094587(n)` -/
def P3049472410063395283.Spec : Prop :=
  ∀ n, P3049472410063395283.a n = A122525 (n + 1)

theorem P3049472410063395283.correct : P3049472410063395283.Spec := by
  intro n
  simp only [A122525, Nat.add_sub_cancel]

end A122525

/-! ## A122525.P3372831971678416108

`A259334(A038722(n+1))`
-/

namespace A122525.P3372831971678416108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259334 (A038722 (n + 1)).toNat

end

end A122525.P3372831971678416108

namespace A122525

/-- `A259334(A038722(n+1))` -/
def P3372831971678416108.Spec : Prop :=
  ∀ n, P3372831971678416108.a n = A122525 (n + 1)

end A122525

/-! ## A122525.P4504291863371370932

`A219694(n+1)/∑[A010054(n)]`
-/

namespace A122525.P4504291863371370932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219694 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A122525.P4504291863371370932

namespace A122525

/-- `A219694(n+1)/∑[A010054(n)]` -/
def P4504291863371370932.Spec : Prop :=
  ∀ n, P4504291863371370932.a n = (A122525 (n + 1) : ℚ)

end A122525

/-! ## A122525.P2709255677014314220

`A219694(n+1)/A002024(n+1)`
-/

namespace A122525.P2709255677014314220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219694 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A122525.P2709255677014314220

namespace A122525

/-- `A219694(n+1)/A002024(n+1)` -/
def P2709255677014314220.Spec : Prop :=
  ∀ n, P2709255677014314220.a n = (A122525 (n + 1) : ℚ)

end A122525

/-! ## A122525.P17759323324298622031

`A219694(n+1)/(A003056(n)+1)`
-/

namespace A122525.P17759323324298622031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219694 (n + 1) : ℚ) / (A003056 n + 1 : ℚ)

end

end A122525.P17759323324298622031

namespace A122525

/-- `A219694(n+1)/(A003056(n)+1)` -/
def P17759323324298622031.Spec : Prop :=
  ∀ n, P17759323324298622031.a n = (A122525 (n + 1) : ℚ)

end A122525

/-! ## A122525.P14425615539338943373

`A219694(n+1)/sqrt(A093995(n+1))`
-/

namespace A122525.P14425615539338943373
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A219694 (n + 1) : ℝ) / Real.sqrt (A093995 (n + 1) : ℝ)

end

end A122525.P14425615539338943373

namespace A122525

/-- `A219694(n+1)/sqrt(A093995(n+1))` -/
def P14425615539338943373.Spec : Prop :=
  ∀ n, P14425615539338943373.a n = (A122525 (n + 1) : ℝ)

end A122525

/-! ## A122525.P496353177826270928

`A219694(n+1)/(A007401(n+1)-n)`
-/

namespace A122525.P496353177826270928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219694 (n + 1) : ℚ) / (A007401 (n + 1) - (n : ℤ) : ℚ)

end

end A122525.P496353177826270928

namespace A122525

/-- `A219694(n+1)/(A007401(n+1)-n)` -/
def P496353177826270928.Spec : Prop :=
  ∀ n, P496353177826270928.a n = (A122525 (n + 1) : ℚ)

end A122525

/-! ## A122525.P16089315709369793981

`A219694(n+1)/A000196(A195437(n))`
-/

namespace A122525.P16089315709369793981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219694 (n + 1) : ℚ) / (A000196 (A195437 n).toNat : ℚ)

end

end A122525.P16089315709369793981

namespace A122525

/-- `A219694(n+1)/A000196(A195437(n))` -/
def P16089315709369793981.Spec : Prop :=
  ∀ n, P16089315709369793981.a n = (A122525 (n + 1) : ℚ)

end A122525

/-! ## A122525.P2685387907664189716

`A219694(n+1)/A137735(A064801(n+1))`
-/

namespace A122525.P2685387907664189716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219694 (n + 1) : ℚ) / (A137735 (A064801 (n + 1)).toNat : ℚ)

end

end A122525.P2685387907664189716

namespace A122525

/-- `A219694(n+1)/A137735(A064801(n+1))` -/
def P2685387907664189716.Spec : Prop :=
  ∀ n, P2685387907664189716.a n = (A122525 (n + 1) : ℚ)

end A122525

/-! ## A122525.P6699017038701006648

`A219694(n+1)/A164677(A137688(n))`
-/

namespace A122525.P6699017038701006648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219694 (n + 1) : ℚ) / (A164677 (A137688 n).toNat : ℚ)

end

end A122525.P6699017038701006648

namespace A122525

/-- `A219694(n+1)/A164677(A137688(n))` -/
def P6699017038701006648.Spec : Prop :=
  ∀ n, P6699017038701006648.a n = (A122525 (n + 1) : ℚ)

end A122525

/-!
# A122526: Complement of A002410.

The programs for A122526, there is no canonical definition to state claims against.
-/

/-! ## A122526.P14876493679693312437

`comp[A002410(n+1)-1]+1`
-/

namespace A122526.P14876493679693312437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A122526.P14876493679693312437

/-! ## A122526.P10690965154576806680

`comp[A002410(A028310(n))%A014641(4*n)]`
-/

namespace A122526.P10690965154576806680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002410 (A028310 n).toNat) (A014641 (4 * n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A122526.P10690965154576806680

/-! ## A122526.P3700392525941334867

`eq[0, A133010(n+1)]+1`
-/

namespace A122526.P3700392525941334867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122526.P3700392525941334867

/-! ## A122526.P4595831965114316316

`lt[0, A133011(n+1)]+1`
-/

namespace A122526.P4595831965114316316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A122526.P4595831965114316316

/-! ## A122526.P10087362846417540637

`eq[1, A133011(C(n+1, n))]+1`
-/

namespace A122526.P10087362846417540637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133011 (Nat.choose (n + 1) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122526.P10087362846417540637

/-! ## A122526.P407238355200483652

`eq[1, A133011(round(acot(n)+n)+1)]+1`
-/

namespace A122526.P407238355200483652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133011 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122526.P407238355200483652

/-! ## A122526.P3974656999720200133

`eq[1, A133011(round(sqrt(n²+1))+1)]+1`
-/

namespace A122526.P3974656999720200133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133011 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122526.P3974656999720200133

/-! ## A122526.P11667464288936231088

`filter[A069782(n+1), A133011(#)]`
-/

namespace A122526.P11667464288936231088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133011 (f1 j).toNat = 1) n)

end

end A122526.P11667464288936231088

/-! ## A122526.P6487294090731795552

`filter[A118759(n+1), A133011(#)]`
-/

namespace A122526.P6487294090731795552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133011 (f1 j).toNat = 1) n)

end

end A122526.P6487294090731795552

/-! ## A122526.P15762682109836561419

`filter[A118760(n+1), A133011(#)]`
-/

namespace A122526.P15762682109836561419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133011 (f1 j).toNat = 1) n)

end

end A122526.P15762682109836561419

/-!
# A122529: Complement of sequence A029903.

The programs for A122529, there is no canonical definition to state claims against.
-/

/-! ## A122529.P9931382702215138531

`comp[comp[A029902(n)]-n]+1`
-/

namespace A122529.P9931382702215138531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029902 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A122529.P9931382702215138531

/-! ## A122529.P5168906697693469254

`A171463(comp[comp[A029902(n)]-n])-1`
-/

namespace A122529.P5168906697693469254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029902 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A122529.P5168906697693469254

/-! ## A122529.P11560849341651447637

`A008619(2*comp[comp[A029902(n)]-n])`
-/

namespace A122529.P11560849341651447637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029902 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A122529.P11560849341651447637

/-! ## A122529.P2055678490123099628

`A131732(2*comp[comp[A029902(n)]-n])`
-/

namespace A122529.P2055678490123099628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029902 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A122529.P2055678490123099628

/-! ## A122529.P4714052576502778880

`A008611(3*comp[comp[A029902(n)]-n])`
-/

namespace A122529.P4714052576502778880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029902 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A122529.P4714052576502778880

/-!
# A122531: Primes equal to arithmetic mean of 6 successive primes; or primes in A122040(n).

The programs for A122531, there is no canonical definition to state claims against.
-/

/-! ## A122531.P6913348701216164188

`p?[A122040(n+1)]`
-/

namespace A122531.P6913348701216164188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122531.P6913348701216164188

/-!
# A122533: Coefficients of the series giving the best rational approximations to 1/e.

The programs for A122533, there is no canonical definition to state claims against.
-/

/-! ## A122533.P15670675363186070341

`A001517(n+1)*A001517(n+2)`
-/

namespace A122533.P15670675363186070341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001517 (n + 1) * A001517 (n + 2)

end

end A122533.P15670675363186070341

/-!
# A122534: Numbers k such that Fibonacci(prime(prime(k))) is prime.

The programs for A122534, there is no canonical definition to state claims against.
-/

/-! ## A122534.P6227279161759679260

`A000720(A277575(n+1))`
-/

namespace A122534.P6227279161759679260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A277575 (n + 1)).toNat

end

end A122534.P6227279161759679260

/-! ## A122534.P7271179677722605873

`A000720(p?[A119984(n+1)])`
-/

namespace A122534.P7271179677722605873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122534.P7271179677722605873

/-! ## A122534.P1389477754354858034

`A061395(p?[A119984(n+1)])`
-/

namespace A122534.P1389477754354858034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122534.P1389477754354858034

/-! ## A122534.P14524695777918566554

`A066328(p?[A119984(n+1)])`
-/

namespace A122534.P14524695777918566554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122534.P14524695777918566554

/-! ## A122534.P14105312278719906788

`A061395(2*A277575(n+1))`
-/

namespace A122534.P14105312278719906788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A277575 (n + 1)).toNat

end

end A122534.P14105312278719906788

/-!
# A122535: Smallest prime of a triple of successive primes, where the middle one is the arithmetic mean of the other two.

The programs for A122535, there is no canonical definition to state claims against.
-/

/-! ## A122535.P17720916588140485535

`A000040(A064113(n+1))`
-/

namespace A122535.P17720916588140485535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064113 (n + 1)).toNat

end

end A122535.P17720916588140485535

/-! ## A122535.P18262028373584712649

`A006562(n+1)-A117217(n+1)`
-/

namespace A122535.P18262028373584712649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) - A117217 (n + 1)

end

end A122535.P18262028373584712649

/-! ## A122535.P5651297603043958573

`2*A006562(n+1)-A181424(n+1)`
-/

namespace A122535.P5651297603043958573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006562 (n + 1) - A181424 (n + 1)

end

end A122535.P5651297603043958573

/-! ## A122535.P11880184046316438471

`A181424(n+1)-2*A117217(n+1)`
-/

namespace A122535.P11880184046316438471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1) - 2 * A117217 (n + 1)

end

end A122535.P11880184046316438471

/-! ## A122535.P15629675544879149823

`∩[A071680(n+1), A173970(n+1)]-A117217(n+1)`
-/

namespace A122535.P15629675544879149823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173970 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A117217 (n + 1)

end

end A122535.P15629675544879149823

/-! ## A122535.P3435505843340594656

`∩[A173970(n+1), A225494(n+1)]-A117217(n+1)`
-/

namespace A122535.P3435505843340594656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A117217 (n + 1)

end

end A122535.P3435505843340594656

/-! ## A122535.P10814855587454491857

`∩[A125830(n+1), A225494(n+1)]-A117217(n+1)`
-/

namespace A122535.P10814855587454491857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A117217 (n + 1)

end

end A122535.P10814855587454491857

/-! ## A122535.P12847124144220163325

`A006562(n+1)-A001223(A064113(n+1))`
-/

namespace A122535.P12847124144220163325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) - A001223 (A064113 (n + 1)).toNat

end

end A122535.P12847124144220163325

/-! ## A122535.P8796822027720617814

`A006562(n+1)-A001223(A066875(n+1))`
-/

namespace A122535.P8796822027720617814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) - A001223 (A066875 (n + 1)).toNat

end

end A122535.P8796822027720617814

/-! ## A122535.P12692138448547711936

`A181424(n+1)-2*A001223(A064113(n+1))`
-/

namespace A122535.P12692138448547711936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1) - 2 * A001223 (A064113 (n + 1)).toNat

end

end A122535.P12692138448547711936

/-! ## A122535.P1695912349617977012

`A117646(3*n+1)`
-/

namespace A122535.P1695912349617977012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117646 (3 * n + 1)

end

end A122535.P1695912349617977012

/-! ## A122535.P13485453757943884997

`2*p?[A225494(n+1)]-A181424(n+1)`
-/

namespace A122535.P13485453757943884997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A181424 (n + 1)

end

end A122535.P13485453757943884997

/-! ## A122535.P10954907632790037050

`2*p?[A075540(n+1)]-A181424(n+1)`
-/

namespace A122535.P10954907632790037050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A181424 (n + 1)

end

end A122535.P10954907632790037050

/-! ## A122535.P18070141010208042955

`∩[A147813(n+1), A372209(n+1)]`
-/

namespace A122535.P18070141010208042955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122535.P18070141010208042955

/-! ## A122535.P7573180548870405846

`∩[A087031(n+1), A147813(n+1)]`
-/

namespace A122535.P7573180548870405846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122535.P7573180548870405846

/-! ## A122535.P17146510024331378580

`A008578(A066875(n+1))`
-/

namespace A122535.P17146510024331378580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A066875 (n + 1)).toNat

end

end A122535.P17146510024331378580

/-! ## A122535.P12427602876832905446

`A158611(A356347(n+1))`
-/

namespace A122535.P12427602876832905446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A356347 (n + 1)).toNat

end

end A122535.P12427602876832905446

/-! ## A122535.P6688264270543878862

`A008578(A173390(n+2))`
-/

namespace A122535.P6688264270543878862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A173390 (n + 2)).toNat

end

end A122535.P6688264270543878862

/-! ## A122535.P7237404315240549803

`A000040(A066875(n+1)-1)`
-/

namespace A122535.P7237404315240549803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A066875 (n + 1) - 1).toNat

end

end A122535.P7237404315240549803

/-! ## A122535.P18183057238566909139

`A065091(A064113(n+1)-1)`
-/

namespace A122535.P18183057238566909139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A064113 (n + 1) - 1).toNat

end

end A122535.P18183057238566909139

/-!
# A122536: Number of binary sequences of length n with no initial repeats (or, with no final repeats).

The programs for A122536, there is no canonical definition to state claims against.
-/

/-! ## A122536.P5300570203262605313

`2^(n+1)-A121880(n+1)`
-/

namespace A122536.P5300570203262605313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A121880 (n + 1)

end

end A122536.P5300570203262605313

/-! ## A122536.P10905491141557625466

`abs(A121880(n+1)-A166444(n+3))`
-/

namespace A122536.P10905491141557625466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121880 (n + 1) - A166444 (n + 3)|

end

end A122536.P10905491141557625466

/-! ## A122536.P8925558123068338166

`A003000(n+1)+A094536(n+1)-A121880(n+1)`
-/

namespace A122536.P8925558123068338166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003000 (n + 1) + (A094536 (n + 1) - A121880 (n + 1))

end

end A122536.P8925558123068338166

/-! ## A122536.P7270923487242345835

`A216955(∑[n]+1)`
-/

namespace A122536.P7270923487242345835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216955 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A122536.P7270923487242345835

/-! ## A122536.P3176033029331236203

`A216955(A000217(n)+1)+2-4/2`
-/

namespace A122536.P3176033029331236203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216955 (A000217 n + 1).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A122536.P3176033029331236203

/-! ## A122536.P1388311498215529939

`A216960(n+1)+A216958(n+1)`
-/

namespace A122536.P1388311498215529939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216960 (n + 1) + A216958 (n + 1)

end

end A122536.P1388311498215529939

/-! ## A122536.P4264900668583903737

`A216958(n+1)+2*A216961(n+1)`
-/

namespace A122536.P4264900668583903737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216958 (n + 1) + 2 * A216961 (n + 1)

end

end A122536.P4264900668583903737

/-! ## A122536.P9101198313928670399

`A216960(n+1)+2*A216959(n+1)`
-/

namespace A122536.P9101198313928670399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216960 (n + 1) + 2 * A216959 (n + 1)

end

end A122536.P9101198313928670399

/-! ## A122536.P1110768823481133645

`2*(A216961(n+1)+A216959(n+1))`
-/

namespace A122536.P1110768823481133645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A216961 (n + 1) + A216959 (n + 1))

end

end A122536.P1110768823481133645

/-!
# A122537: a(1) = 1; for n>1, a(n) is smallest number greater than a(n-1), divisible by n and not equal to any a(i)+a(j) with i and j <= n-1.

The programs for A122537, there is no canonical definition to state claims against.
-/

/-! ## A122537.P11659221154534746205

`(n+1)*A122543(n+1)`
-/

namespace A122537.P11659221154534746205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A122543 (n + 1)

end

end A122537.P11659221154534746205

/-! ## A122537.P3240140329490141569

`-(xor(n, -1)*A122543(A008619(2*n)))`
-/

namespace A122537.P3240140329490141569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * A122543 (A008619 (2 * n)).toNat)

end

end A122537.P3240140329490141569

/-! ## A122537.P16092528302267493645

`record[A008611(n)*A122543(A008620(n))]`
-/

namespace A122537.P16092528302267493645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A122543 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122537.P16092528302267493645

/-! ## A122537.P4450778436230733104

`record[A102885(n)*A122543(A102885(n))]`
-/

namespace A122537.P4450778436230733104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102885 n * A122543 (A102885 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122537.P4450778436230733104

/-! ## A122537.P13273755801268349315

`record[A122543(A193592(n))*A193592(n)]`
-/

namespace A122537.P13273755801268349315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122543 (A193592 n).toNat * A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122537.P13273755801268349315

/-!
# A122538: Riordan array (1, x*f(x)) where f(x)is the g.f. of A006318.

The programs for A122538, the canonical program `A122538.P1373840780686066300` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122538 has offset 0).

The definition of A122538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122538.P1373840780686066300

`A132372(n-1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A122538

/-- `A132372(n-1)-a(n-1)` -/
def P1373840780686066300.Spec : Prop :=
  ∀ n, P1373840780686066300.a n = A122538 n

theorem P1373840780686066300.correct : P1373840780686066300.Spec := by
  intro n
  simp only [A122538]

end A122538

/-! ## A122538.P11624522877346345505

`A106579(A038722(n+1))+floor(acot(n))`
-/

namespace A122538.P11624522877346345505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (A038722 (n + 1)).toNat + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A122538.P11624522877346345505

namespace A122538

/-- `A106579(A038722(n+1))+floor(acot(n))` -/
def P11624522877346345505.Spec : Prop :=
  ∀ n, P11624522877346345505.a n = A122538 n

end A122538

/-! ## A122538.P989666073316320933

`A106579(A038722(n+1))+A000007(n)`
-/

namespace A122538.P989666073316320933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (A038722 (n + 1)).toNat + A000007 n

end

end A122538.P989666073316320933

namespace A122538

/-- `A106579(A038722(n+1))+A000007(n)` -/
def P989666073316320933.Spec : Prop :=
  ∀ n, P989666073316320933.a n = A122538 n

end A122538

/-! ## A122538.P5459446996168457643

`A106579((∑[char[∑[n-1]]]+1)²-n)`
-/

namespace A122538.P5459446996168457643
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 - n)

end

end A122538.P5459446996168457643

namespace A122538

/-- `A106579((∑[char[∑[n-1]]]+1)²-n)` -/
def P5459446996168457643.Spec : Prop :=
  ∀ n, P5459446996168457643.a n = A122538 n

end A122538

/-! ## A122538.P10442577768635835617

`abs(∑[A103136(abs(1-n))])`
-/

namespace A122538.P10442577768635835617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103136 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A122538.P10442577768635835617

namespace A122538

/-- `abs(∑[A103136(abs(1-n))])` -/
def P10442577768635835617.Spec : Prop :=
  ∀ n, P10442577768635835617.a n = A122538 n

end A122538

/-! ## A122538.P13128242224277337192

`2*A186826(n)-A080247(n)`
-/

namespace A122538.P13128242224277337192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186826 n - A080247 n

end

end A122538.P13128242224277337192

namespace A122538

/-- `2*A186826(n)-A080247(n)` -/
def P13128242224277337192.Spec : Prop :=
  ∀ n, P13128242224277337192.a n = A122538 n

end A122538

/-!
# A122541: Squares that can be seen on a digital clock.

The programs for A122541, there is no canonical definition to state claims against.
-/

/-! ## A122541.P12170071639728229037

`∩[n², A055643(n)]`
-/

namespace A122541.P12170071639728229037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122541.P12170071639728229037

/-! ## A122541.P4891793854639653167

`filter[A055643(n), A010052(#)]`
-/

namespace A122541.P4891793854639653167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A122541.P4891793854639653167

/-! ## A122541.P2331285023411633154

`∩[A055643(n), A000290(n)]`
-/

namespace A122541.P2331285023411633154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122541.P2331285023411633154

/-! ## A122541.P11181234342518165657

`A000290(record[A037213(A055643(n))])`
-/

namespace A122541.P11181234342518165657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A055643 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A122541.P11181234342518165657

/-! ## A122541.P955095192313450365

`A000290(record[A056926(A055643(n))])`
-/

namespace A122541.P955095192313450365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A055643 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A122541.P955095192313450365

/-!
# A122542: Triangle T(n,k), 0 <= k <= n, read by rows, given by [0, 2, -1, 0, 0, 0, 0, 0, ...] DELTA [1, 0, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

The programs for A122542, the canonical program `A122542.P16135938646038972650` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122542 has offset 0).

The definition of A122542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122542.P16135938646038972650

`T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122542

/-- `T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)` -/
def P16135938646038972650.Spec : Prop :=
  ∀ n, (P16135938646038972650.a n : ℤ) = A122542 n

theorem P16135938646038972650.correct : P16135938646038972650.Spec := by
  intro n
  simp only [A122542]

end A122542

/-! ## A122542.P17016571161300664476

`2*A008288(n)-A113413(n)`
-/

namespace A122542.P17016571161300664476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008288 n - A113413 n

end

end A122542.P17016571161300664476

namespace A122542

/-- `2*A008288(n)-A113413(n)` -/
def P17016571161300664476.Spec : Prop :=
  ∀ n, P17016571161300664476.a n = A122542 n

end A122542

/-! ## A122542.P16750037853965635319

`A035607(n)+A266213(n)-A113413(n)`
-/

namespace A122542.P16750037853965635319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n + (A266213 n - A113413 n)

end

end A122542.P16750037853965635319

namespace A122542

/-- `A035607(n)+A266213(n)-A113413(n)` -/
def P16750037853965635319.Spec : Prop :=
  ∀ n, P16750037853965635319.a n = A122542 n

end A122542

/-! ## A122542.P12470354271663763305

`A008288(n+1)+A008288(n)-A035607(n+1)`
-/

namespace A122542.P12470354271663763305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (n + 1) + (A008288 n - A035607 (n + 1))

end

end A122542.P12470354271663763305

namespace A122542

/-- `A008288(n+1)+A008288(n)-A035607(n+1)` -/
def P12470354271663763305.Spec : Prop :=
  ∀ n, P12470354271663763305.a n = A122542 n

end A122542

/-! ## A122542.P7853778091508853757

`A266213(n+1)+A008288(n)-A008288(n+1)`
-/

namespace A122542.P7853778091508853757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (n + 1) + (A008288 n - A008288 (n + 1))

end

end A122542.P7853778091508853757

namespace A122542

/-- `A266213(n+1)+A008288(n)-A008288(n+1)` -/
def P7853778091508853757.Spec : Prop :=
  ∀ n, P7853778091508853757.a n = A122542 n

end A122542

/-! ## A122542.P2949393453740385516

`A266213(row(n)*(row(n)+3)/2-col(n))`
-/

namespace A122542.P2949393453740385516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.roundAway ((SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 3) : ℚ) / 2 - (SequenceMachineLib.triCol n : ℚ))).toNat

end

end A122542.P2949393453740385516

namespace A122542

/-- `A266213(row(n)*(row(n)+3)/2-col(n))` -/
def P2949393453740385516.Spec : Prop :=
  ∀ n, P2949393453740385516.a n = A122542 n

end A122542

/-! ## A122542.P4200227089683936299

`A266213(A061579(n))`
-/

namespace A122542.P4200227089683936299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A061579 n).toNat

end

end A122542.P4200227089683936299

namespace A122542

/-- `A266213(A061579(n))` -/
def P4200227089683936299.Spec : Prop :=
  ∀ n, P4200227089683936299.a n = A122542 n

end A122542

/-! ## A122542.P16136453220694320121

`A266213(A038722(n+1)-1)`
-/

namespace A122542.P16136453220694320121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A038722 (n + 1) - 1).toNat

end

end A122542.P16136453220694320121

namespace A122542

/-- `A266213(A038722(n+1)-1)` -/
def P16136453220694320121.Spec : Prop :=
  ∀ n, P16136453220694320121.a n = A122542 n

end A122542

/-! ## A122542.P9326937477803550450

`A266213(A038722(n+2))`
-/

namespace A122542.P9326937477803550450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A038722 (n + 2)).toNat

end

end A122542.P9326937477803550450

namespace A122542

/-- `A266213(A038722(n+2))` -/
def P9326937477803550450.Spec : Prop :=
  ∀ n, P9326937477803550450.a n = A122542 n

end A122542

/-! ## A122542.P2438489013629055609

`A035607(n)-A128966(n)`
-/

namespace A122542.P2438489013629055609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n - A128966 n

end

end A122542.P2438489013629055609

namespace A122542

/-- `A035607(n)-A128966(n)` -/
def P2438489013629055609.Spec : Prop :=
  ∀ n, P2438489013629055609.a n = A122542 n

end A122542

/-!
# A122543: A122537(n)/n.

The programs for A122543, there is no canonical definition to state claims against.
-/

/-! ## A122543.P3059395352309691782

`A122537(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122543.P3059395352309691782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122537 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A122543.P3059395352309691782

/-! ## A122543.P9474521715818764109

`(3*A122537(n+1))%A016789(n)`
-/

namespace A122543.P9474521715818764109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A122537 (n + 1)) (A016789 n)

end

end A122543.P9474521715818764109

/-! ## A122543.P6364491371490451948

`(4*A122537(n+1))%A004767(n)`
-/

namespace A122543.P6364491371490451948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A122537 (n + 1)) (A004767 n)

end

end A122543.P6364491371490451948

/-! ## A122543.P260774146530401652

`(6*A122537(n+1))%A016969(n)`
-/

namespace A122543.P260774146530401652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (6 * A122537 (n + 1)) (A016969 n)

end

end A122543.P260774146530401652

/-! ## A122543.P8237021215993083333

`(10*A122537(n+1))%A017377(n)`
-/

namespace A122543.P8237021215993083333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (10 * A122537 (n + 1)) (A017377 n)

end

end A122543.P8237021215993083333

/-! ## A122543.P11119624812370250619

`A008486(A122537(n+1))%A016789(n)`
-/

namespace A122543.P11119624812370250619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A122537 (n + 1)).toNat) (A016789 n)

end

end A122543.P11119624812370250619

/-! ## A122543.P16550813264061179465

`(n+1)^A008683(A020483(n))*A122537(n+1)`
-/

namespace A122543.P16550813264061179465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A122537 (n + 1) : ℚ)

end

end A122543.P16550813264061179465

/-! ## A122543.P17190322846857386207

`(A004280(n+3)*A122537(n+1))%A004280(n+2)`
-/

namespace A122543.P17190322846857386207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004280 (n + 3) * A122537 (n + 1)) (A004280 (n + 2))

end

end A122543.P17190322846857386207

/-!
# A122544: Smallest positive number divisible by n which is not of the form a(i) or a(i)+a(j) for i and j <= n-1.

The programs for A122544, there is no canonical definition to state claims against.
-/

/-! ## A122544.P5343580436694073022

`A122545(1+n)*(n+1)`
-/

namespace A122544.P5343580436694073022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122545 (1 + n) * (n + 1 : ℤ)

end

end A122544.P5343580436694073022

/-!
# A122545: A122544(n)/n.

The programs for A122545, there is no canonical definition to state claims against.
-/

/-! ## A122545.P10740863712876132041

`A122544(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122545.P10740863712876132041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122544 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A122545.P10740863712876132041

/-! ## A122545.P8558588066707134768

`(3*A122544(n+1))%A016789(n)`
-/

namespace A122545.P8558588066707134768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A122544 (n + 1)) (A016789 n)

end

end A122545.P8558588066707134768

/-! ## A122545.P932939525030385829

`(10*A122544(n+1))%A017377(n)`
-/

namespace A122545.P932939525030385829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (10 * A122544 (n + 1)) (A017377 n)

end

end A122545.P932939525030385829

/-! ## A122545.P17714945759518289496

`A008486(A122544(n+1))%A016789(n)`
-/

namespace A122545.P17714945759518289496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A122544 (n + 1)).toNat) (A016789 n)

end

end A122545.P17714945759518289496

/-! ## A122545.P7886597352980000884

`A022144(A122544(n+1))%A004771(n)`
-/

namespace A122545.P7886597352980000884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A122544 (n + 1)).toNat) (A004771 n)

end

end A122545.P7886597352980000884

/-!
# A122546: Numbers not in A122544.

The programs for A122546, there is no canonical definition to state claims against.
-/

/-! ## A122546.P1733226967052689016

`eq[floor(1/(n+1)), char[A122544(n+1)]]`
-/

namespace A122546.P1733226967052689016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122544 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A122546.P1733226967052689016

/-! ## A122546.P16133530961976910138

`comp[A122544(n+1)%A156165(2*n+3)]`
-/

namespace A122546.P16133530961976910138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122544 (n + 1)) (A156165 (2 * n + 3))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A122546.P16133530961976910138

/-! ## A122546.P17412599836461037427

`eq[A025902(n+1), A178334(A319284(n+3))]`
-/

namespace A122546.P17412599836461037427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A319284 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122546.P17412599836461037427

/-!
# A122547: Number of planar locally finite Cayley graphs of degree n.

The programs for A122547, there is no canonical definition to state claims against.
-/

/-! ## A122547.P1582698504111641344

`A330874(a(n-1))+n+1` with `a(0)=0, a(1)=2`
-/

namespace A122547.P1582698504111641344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A330874 (a (n - 1)).toNat + (n + 1 : ℤ)

end

end A122547.P1582698504111641344

/-! ## A122547.P16939797797284054983

`n*A054703(A338327(n))`
-/

namespace A122547.P16939797797284054983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054703 (A338327 n).toNat

end

end A122547.P16939797797284054983

/-!
# A122550: Floor of the slanted side of a right trapezoid formed by 3 consecutive primes.

The programs for A122550, there is no canonical definition to state claims against.
-/

/-! ## A122550.P3410639011684316980

`A079311(A109805(1+n))`
-/

namespace A122550.P3410639011684316980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079311 (A109805 (1 + n)).toNat

end

end A122550.P3410639011684316980

/-! ## A122550.P12386222531182241545

`A308009(A123071(n))+A000040(n+2)`
-/

namespace A122550.P12386222531182241545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308009 (A123071 n).toNat + A000040 (n + 2)

end

end A122550.P12386222531182241545

/-! ## A122550.P8824750914457442457

`A287108(A007716(n))+A000040(n+2)`
-/

namespace A122550.P8824750914457442457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287108 (A007716 n).toNat + A000040 (n + 2)

end

end A122550.P8824750914457442457

/-! ## A122550.P5117147444503047068

`A065091(n+1)+A038769(A270406(n+1))`
-/

namespace A122550.P5117147444503047068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A038769 (A270406 (n + 1)).toNat

end

end A122550.P5117147444503047068

/-! ## A122550.P162003569473091771

`A359902(A278254(n+2))+A000040(n+2)`
-/

namespace A122550.P162003569473091771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359902 (A278254 (n + 2)).toNat + A000040 (n + 2)

end

end A122550.P162003569473091771

/-!
# A122551: Denominators of the coefficients of the series for InverseErf(x).

The programs for A122551, the canonical program `A122551.P13634977607048004429` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122551 has offset 0).

The definition of A122551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122551.P13634977607048004429

`(2*n+1)!*2^(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122551

/-- `(2*n+1)!*2^(n+1)` -/
def P13634977607048004429.Spec : Prop :=
  ∀ n, (P13634977607048004429.a n : ℤ) = A122551 n

theorem P13634977607048004429.correct : P13634977607048004429.Spec := by
  intro n
  simp only [A122551]

end A122551

/-! ## A122551.P12485784828150961332

`2^(n+1)*Δ[n²]!`
-/

namespace A122551.P12485784828150961332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1) * Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A122551.P12485784828150961332

namespace A122551

/-- `2^(n+1)*Δ[n²]!` -/
def P12485784828150961332.Spec : Prop :=
  ∀ n, (P12485784828150961332.a n : ℤ) = A122551 n

end A122551

/-! ## A122551.P6835943508844474463

`∏[record[lcm(n+2, 2*(n+1))]]`
-/

namespace A122551.P6835943508844474463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122551.P6835943508844474463

namespace A122551

/-- `∏[record[lcm(n+2, 2*(n+1))]]` -/
def P6835943508844474463.Spec : Prop :=
  ∀ n, (P6835943508844474463.a n : ℤ) = A122551 n

end A122551

/-! ## A122551.P4175720749860494040

`record[-(lcm(2, n)*a(n-1))]` with `a(0)=2, a(1)=2`
-/

namespace A122551.P4175720749860494040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  -((Nat.lcm 2 n : ℤ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122551.P4175720749860494040

namespace A122551

/-- `record[-(lcm(2, n)*a(n-1))]` -/
def P4175720749860494040.Spec : Prop :=
  ∀ n, P4175720749860494040.a n = A122551 n

end A122551

/-! ## A122551.P14235706118108886728

`∏[floor(4/acot(n*(2*n+1)))]`
-/

namespace A122551.P14235706118108886728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / SequenceMachineLib.acot (n * (2 * n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122551.P14235706118108886728

namespace A122551

/-- `∏[floor(4/acot(n*(2*n+1)))]` -/
def P14235706118108886728.Spec : Prop :=
  ∀ n, P14235706118108886728.a n = A122551 n

end A122551

/-!
# A122552: a(0)=a(1)=a(2)=1, a(n) = a(n-1) + a(n-2) + 2*a(n-3) for n > 2.

The programs for A122552, the canonical program `A122552.P17714630927674434203` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122552 has offset 0).

The definition of A122552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+2*a(n-3)` (program `A122552.P17714630927674434203`, by `A122552.P17714630927674434203.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122552.P16087720958921014678

`ogf((1-x^2)/(1-x-x^2-2x^3))`
-/

namespace A122552.P16087720958921014678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -1, -1, -2] n

end

end A122552.P16087720958921014678

namespace A122552

/-- `ogf((1-x^2)/(1-x-x^2-2x^3))` -/
def P16087720958921014678.Spec : Prop :=
  ∀ n, P16087720958921014678.a n = A122552 n

end A122552

/-! ## A122552.P17714630927674434203

`a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122552

/-- `a(n-1)+a(n-2)+2*a(n-3)` -/
def P17714630927674434203.Spec : Prop :=
  ∀ n, (P17714630927674434203.a n : ℤ) = A122552 n

theorem P17714630927674434203.correct : P17714630927674434203.Spec := by
  intro n
  simp only [A122552]

end A122552

/-! ## A122552.P1182065983342789635

`A140295(n+2)/4`
-/

namespace A122552.P1182065983342789635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140295 (n + 2) : ℚ) / 4

end

end A122552.P1182065983342789635

namespace A122552

/-- `A140295(n+2)/4` -/
def P1182065983342789635.Spec : Prop :=
  ∀ n, P1182065983342789635.a n = (A122552 n : ℚ)

end A122552

/-! ## A122552.P2117550963984233160

`((-1)^n*A130815(n+2)+3*2^n)/7`
-/

namespace A122552.P2117550963984233160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A130815 (n + 2) + (3 * 2 ^ n : ℤ) : ℚ) / 7

end

end A122552.P2117550963984233160

namespace A122552

/-- `((-1)^n*A130815(n+2)+3*2^n)/7` -/
def P2117550963984233160.Spec : Prop :=
  ∀ n, P2117550963984233160.a n = (A122552 n : ℚ)

end A122552

/-! ## A122552.P1702953086399591780

`a(n-1)+a(n-3)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A122552.P1702953086399591780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + (a (n - 3) + (a (n - 2) + a (n - 3)))

end

end A122552.P1702953086399591780

namespace A122552

/-- `a(n-1)+a(n-3)+a(n-2)+a(n-3)` -/
def P1702953086399591780.Spec : Prop :=
  ∀ n, (P1702953086399591780.a n : ℤ) = A122552 n

end A122552

/-! ## A122552.P4445654805326602223

`3*A155803(n)+1`
-/

namespace A122552.P4445654805326602223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A155803 n + 1

end

end A122552.P4445654805326602223

namespace A122552

/-- `3*A155803(n)+1` -/
def P4445654805326602223.Spec : Prop :=
  ∀ n, P4445654805326602223.a n = A122552 n

end A122552

/-! ## A122552.P448958629402008512

`A122391(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A122552.P448958629402008512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A122391 n + a (n - 3)

end

end A122552.P448958629402008512

namespace A122552

/-- `A122391(n)+a(n-3)` -/
def P448958629402008512.Spec : Prop :=
  ∀ n, P448958629402008512.a n = A122552 n

end A122552

/-! ## A122552.P17413420302298587754

`A099837(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A122552.P17413420302298587754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099837 n + 2 * a (n - 1)

end

end A122552.P17413420302298587754

namespace A122552

/-- `A099837(n)+2*a(n-1)` -/
def P17413420302298587754.Spec : Prop :=
  ∀ n, P17413420302298587754.a n = A122552 n

end A122552

/-! ## A122552.P11280011814344085915

`a(n-1)+a(n-1)-A061347(n)` with `a(0)=1`
-/

namespace A122552.P11280011814344085915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A061347 n)

end

end A122552.P11280011814344085915

namespace A122552

/-- `a(n-1)+a(n-1)-A061347(n)` -/
def P11280011814344085915.Spec : Prop :=
  ∀ n, P11280011814344085915.a n = A122552 n

end A122552

/-! ## A122552.P13838132716316956884

`A294627(n)+A057078(n)`
-/

namespace A122552.P13838132716316956884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 n + A057078 n

end

end A122552.P13838132716316956884

namespace A122552

/-- `A294627(n)+A057078(n)` -/
def P13838132716316956884.Spec : Prop :=
  ∀ n, P13838132716316956884.a n = A122552 n

end A122552

/-! ## A122552.P10951002329366129916

`A294627(n)-A049347(n+1)`
-/

namespace A122552.P10951002329366129916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 n - A049347 (n + 1)

end

end A122552.P10951002329366129916

namespace A122552

/-- `A294627(n)-A049347(n+1)` -/
def P10951002329366129916.Spec : Prop :=
  ∀ n, P10951002329366129916.a n = A122552 n

end A122552

/-! ## A122552.P12525176412653480880

`A294627(n)+A010892(2*n)`
-/

namespace A122552.P12525176412653480880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 n + A010892 (2 * n)

end

end A122552.P12525176412653480880

namespace A122552

/-- `A294627(n)+A010892(2*n)` -/
def P12525176412653480880.Spec : Prop :=
  ∀ n, P12525176412653480880.a n = A122552 n

end A122552

/-! ## A122552.P8974153564786026361

`A077947(n)-A152732(n+1)/2`
-/

namespace A122552.P8974153564786026361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077947 n : ℚ) - (A152732 (n + 1) : ℚ) / 2

end

end A122552.P8974153564786026361

namespace A122552

/-- `A077947(n)-A152732(n+1)/2` -/
def P8974153564786026361.Spec : Prop :=
  ∀ n, P8974153564786026361.a n = (A122552 n : ℚ)

end A122552

/-! ## A122552.P10551769360925255175

`3*floor(2^n/7)+1`
-/

namespace A122552.P10551769360925255175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(2 ^ n : ℚ) / 7⌋ + 1

end

end A122552.P10551769360925255175

namespace A122552

/-- `3*floor(2^n/7)+1` -/
def P10551769360925255175.Spec : Prop :=
  ∀ n, P10551769360925255175.a n = A122552 n

end A122552

/-! ## A122552.P10190566587917936224

`Δ[A294627(n)]`
-/

namespace A122552.P10190566587917936224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122552.P10190566587917936224

namespace A122552

/-- `Δ[A294627(n)]` -/
def P10190566587917936224.Spec : Prop :=
  ∀ n, P10190566587917936224.a n = A122552 n

end A122552

/-! ## A122552.P10213507241148908158

`Δ[2^n-A077947(n)]`
-/

namespace A122552.P10213507241148908158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A077947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122552.P10213507241148908158

namespace A122552

/-- `Δ[2^n-A077947(n)]` -/
def P10213507241148908158.Spec : Prop :=
  ∀ n, P10213507241148908158.a n = A122552 n

end A122552

/-! ## A122552.P17130375385803083217

`Δ[ceil((A000225(n+1)-A033138(n+1))/2)]`
-/

namespace A122552.P17130375385803083217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000225 (n + 1) - A033138 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122552.P17130375385803083217

namespace A122552

/-- `Δ[ceil((A000225(n+1)-A033138(n+1))/2)]` -/
def P17130375385803083217.Spec : Prop :=
  ∀ n, P17130375385803083217.a n = A122552 n

end A122552

/-! ## A122552.P16917963645686091721

`∑{#}[n, (-1)^(n-#)*C(n, #)*A099215(#)]`
-/

namespace A122552.P16917963645686091721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A099215 k : ℚ)

end

end A122552.P16917963645686091721

namespace A122552

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A099215(#)]` -/
def P16917963645686091721.Spec : Prop :=
  ∀ n, P16917963645686091721.a n = (A122552 n : ℚ)

end A122552

/-!
# A122553: a(0)=1, a(n)=3 for n > 0.

The programs for A122553, the canonical program `A122553.P3927573479016407879` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122553 has offset 0).

The definition of A122553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122553.P3927573479016407879

`ogf((1+2x)/(1-x))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122553

/-- `ogf((1+2x)/(1-x))` -/
def P3927573479016407879.Spec : Prop :=
  ∀ n, P3927573479016407879.a n = A122553 n

theorem P3927573479016407879.correct : P3927573479016407879.Spec := by
  intro n
  simp only [A122553]

end A122553

/-!
# A122554: Let S(1) = {1} and, for n>1 let S(n) be the smallest set containing x, 2x and x+2 for each element x in S(n-1). a(n) is the number of elements in S(n).

The programs for A122554, the canonical program `A122554.P5887206238991290460` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122554 has offset 1).

The definition of A122554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122554.P16399210605076572190

`∑[round(Δ[ϕ^n])]+n`
-/

namespace A122554.P16399210605076572190
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A122554.P16399210605076572190

namespace A122554

/-- `∑[round(Δ[ϕ^n])]+n` -/
def P16399210605076572190.Spec : Prop :=
  ∀ n, P16399210605076572190.a n = A122554 (n + 1)

end A122554

/-! ## A122554.P9112612506228477801

`ceil(∑[ϕ*a(n-1)]+n)` with `a(0)=1, a(1)=1`
-/

namespace A122554.P9112612506228477801
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Real.goldenRatio * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)⌉

end

end A122554.P9112612506228477801

namespace A122554

/-- `ceil(∑[ϕ*a(n-1)]+n)` -/
def P9112612506228477801.Spec : Prop :=
  ∀ n, P9112612506228477801.a n = A122554 (n + 1)

end A122554

/-! ## A122554.P12888222765325095493

`∑[floor(ϕ*a(n-1))]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A122554.P12888222765325095493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122554.P12888222765325095493

namespace A122554

/-- `∑[floor(ϕ*a(n-1))]` -/
def P12888222765325095493.Spec : Prop :=
  ∀ n, P12888222765325095493.a n = A122554 (n + 1)

end A122554

/-! ## A122554.P502237741384474570

`ogf((1-x^2-x^3-x^4+x^5)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A122554.P502237741384474570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -1, -1, 1] [1, -3, 2, 1, -1] n

end

end A122554.P502237741384474570

namespace A122554

/-- `ogf((1-x^2-x^3-x^4+x^5)/(1-3x+2x^2+x^3-x^4))` -/
def P502237741384474570.Spec : Prop :=
  ∀ n, P502237741384474570.a n = A122554 (n + 1)

end A122554

/-! ## A122554.P5887206238991290460

`∑[∑[a(n-1)-(1-a(n-2))]-n]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=2, a(5)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122554

/-- `∑[∑[a(n-1)-(1-a(n-2))]-n]` -/
def P5887206238991290460.Spec : Prop :=
  ∀ n, P5887206238991290460.a n = A122554 (n + 1)

theorem P5887206238991290460.correct : P5887206238991290460.Spec := by
  intro n
  simp only [A122554, Nat.add_sub_cancel]

end A122554

/-! ## A122554.P2112366087295786899

`abs(A000204(n+1)+n-char[1])`
-/

namespace A122554.P2112366087295786899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000204 (n + 1) + ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))|

end

end A122554.P2112366087295786899

namespace A122554

/-- `abs(A000204(n+1)+n-char[1])` -/
def P2112366087295786899.Spec : Prop :=
  ∀ n, P2112366087295786899.a n = A122554 (n + 1)

end A122554

/-! ## A122554.P3875003154084077144

`(A000204(n+1)-char[1]+n)%A022112(n)`
-/

namespace A122554.P3875003154084077144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000204 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)) (A022112 n)

end

end A122554.P3875003154084077144

namespace A122554

/-- `(A000204(n+1)-char[1]+n)%A022112(n)` -/
def P3875003154084077144.Spec : Prop :=
  ∀ n, P3875003154084077144.a n = A122554 (n + 1)

end A122554

/-!
# A122556: Primes occur infinitely often, with first appearance in order. Between each occurrence of a prime p, there are p distinct primes.

The programs for A122556, there is no canonical definition to state claims against.
-/

/-! ## A122556.P14882644138153726404

`A000040(A104705(n+1))`
-/

namespace A122556.P14882644138153726404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A104705 (n + 1)).toNat

end

end A122556.P14882644138153726404

/-! ## A122556.P12093159402373248459

`A008578(A104705(n+1)+1)`
-/

namespace A122556.P12093159402373248459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A104705 (n + 1) + 1).toNat

end

end A122556.P12093159402373248459

/-! ## A122556.P17917783745686229980

`A015919(A104705(n+1)+1)`
-/

namespace A122556.P17917783745686229980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A104705 (n + 1) + 1).toNat

end

end A122556.P17917783745686229980

/-! ## A122556.P13797909434705290783

`A182986(A104705(n+1)+1)`
-/

namespace A122556.P13797909434705290783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A104705 (n + 1) + 1).toNat

end

end A122556.P13797909434705290783

/-! ## A122556.P12582913095222271440

`A158611(A104705(n+1)+2)`
-/

namespace A122556.P12582913095222271440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A104705 (n + 1) + 2).toNat

end

end A122556.P12582913095222271440

/-! ## A122556.P13702887864420844038

`A073846(2*A104705(n+1))`
-/

namespace A122556.P13702887864420844038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A104705 (n + 1)).toNat

end

end A122556.P13702887864420844038

/-! ## A122556.P17534813962396227569

`A219606(2*A104705(n+1))`
-/

namespace A122556.P17534813962396227569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * A104705 (n + 1)).toNat

end

end A122556.P17534813962396227569

/-! ## A122556.P9645731508402479046

`∑{d}[A104705(n+1), A007444(#)]`
-/

namespace A122556.P9645731508402479046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A122556.P9645731508402479046

/-! ## A122556.P10947942981125688969

`A037126(2*A104705(n+1)²)`
-/

namespace A122556.P10947942981125688969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (2 * A104705 (n + 1) ^ 2).toNat

end

end A122556.P10947942981125688969

/-!
# A122558: a(0)=1, a(1)=3, a(n) = 4*a(n-1) + 3*a(n-2) for n > 1.

The programs for A122558, the canonical program `A122558.P17538861966145011951` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122558 has offset 0).

The definition of A122558 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+3*a(n-2)` (program `A122558.P17538861966145011951`, by `A122558.P17538861966145011951.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122558.P16797920569979564872

`ogf((1-x)/(1-4x-3x^2))`
-/

namespace A122558.P16797920569979564872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -4, -3] n

end

end A122558.P16797920569979564872

namespace A122558

/-- `ogf((1-x)/(1-4x-3x^2))` -/
def P16797920569979564872.Spec : Prop :=
  ∀ n, P16797920569979564872.a n = A122558 n

end A122558

/-! ## A122558.P17538861966145011951

`4*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122558

/-- `4*a(n-1)+3*a(n-2)` -/
def P17538861966145011951.Spec : Prop :=
  ∀ n, (P17538861966145011951.a n : ℤ) = A122558 n

theorem P17538861966145011951.correct : P17538861966145011951.Spec := by
  intro n
  simp only [A122558]

end A122558

/-! ## A122558.P6701675239390772474

`(7+sqrt(7))/14*(2+sqrt(7))^n+(7-sqrt(7))/14*(2-sqrt(7))^n`
-/

namespace A122558.P6701675239390772474
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (7 + Real.sqrt (7 : ℝ)) / 14 * (2 + Real.sqrt (7 : ℝ)) ^ n + (7 - Real.sqrt (7 : ℝ)) / 14 * (2 - Real.sqrt (7 : ℝ)) ^ n

end

end A122558.P6701675239390772474

namespace A122558

/-- `(7+sqrt(7))/14*(2+sqrt(7))^n+(7-sqrt(7))/14*(2-sqrt(7))^n` -/
def P6701675239390772474.Spec : Prop :=
  ∀ n, P6701675239390772474.a n = (A122558 n : ℝ)

theorem P6701675239390772474.correct : P6701675239390772474.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A122558, Nat.add_sub_cancel, A122558.P6701675239390772474.a, A122558.P17538861966145011951.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A122558, Nat.add_sub_cancel, A122558.P6701675239390772474.a, A122558.P17538861966145011951.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A122558

/-! ## A122558.P14733058694074807528

`∑{#}[n, 3^#*A122542(C(n+1, 2)+#)]`
-/

namespace A122558.P14733058694074807528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 ^ k : ℤ) * A122542 (Nat.choose (n + 1) 2 + k)

end

end A122558.P14733058694074807528

namespace A122558

/-- `∑{#}[n, 3^#*A122542(C(n+1, 2)+#)]` -/
def P14733058694074807528.Spec : Prop :=
  ∀ n, P14733058694074807528.a n = A122558 n

end A122558

/-! ## A122558.P9799409602782540066

`lcm(3, a(n-1)/3+a(n-1)+a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A122558.P9799409602782540066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lcm 3 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 3 + (a (n - 1) + a (n - 2) : ℚ)))

end

end A122558.P9799409602782540066

namespace A122558

/-- `lcm(3, a(n-1)/3+a(n-1)+a(n-2))` -/
def P9799409602782540066.Spec : Prop :=
  ∀ n, (P9799409602782540066.a n : ℤ) = A122558 n

end A122558

/-! ## A122558.P1066639485317059754

`Δ[A015530(n)]`
-/

namespace A122558.P1066639485317059754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122558.P1066639485317059754

namespace A122558

/-- `Δ[A015530(n)]` -/
def P1066639485317059754.Spec : Prop :=
  ∀ n, P1066639485317059754.a n = A122558 n

end A122558

/-! ## A122558.P13277645581456560118

`Δ[A106570(n)/3]`
-/

namespace A122558.P13277645581456560118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106570 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122558.P13277645581456560118

namespace A122558

/-- `Δ[A106570(n)/3]` -/
def P13277645581456560118.Spec : Prop :=
  ∀ n, P13277645581456560118.a n = (A122558 n : ℚ)

end A122558

/-! ## A122558.P3127089821495777663

`∑{#}[n, (-1)^(n-#)*C(n, #)*A180034(#)]`
-/

namespace A122558.P3127089821495777663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A180034 k : ℚ)

end

end A122558.P3127089821495777663

namespace A122558

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A180034(#)]` -/
def P3127089821495777663.Spec : Prop :=
  ∀ n, P3127089821495777663.a n = (A122558 n : ℚ)

end A122558

/-!
# A122560: Primes p such that p^2 is a sum of three successive primes, or primes in A076304.

The programs for A122560, there is no canonical definition to state claims against.
-/

/-! ## A122560.P7164033062606786786

`p?[A076304(n+1)]`
-/

namespace A122560.P7164033062606786786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122560.P7164033062606786786

/-! ## A122560.P8288785695707523457

`p?[ceil(sqrt(3*A206279(n+1)))]`
-/

namespace A122560.P8288785695707523457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (3 * A206279 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122560.P8288785695707523457

/-! ## A122560.P3000574686781076368

`∩[A076304(n+1), A380468(n+1)]`
-/

namespace A122560.P3000574686781076368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P3000574686781076368

/-! ## A122560.P2818733651865850247

`∩[A000040(n+1), A076304(n+1)]`
-/

namespace A122560.P2818733651865850247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P2818733651865850247

/-! ## A122560.P16003878157234460982

`∩[A004139(n+1), A076304(n+1)]`
-/

namespace A122560.P16003878157234460982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P16003878157234460982

/-! ## A122560.P16024057517414757568

`∩[A006005(n+1), A076304(n+1)]`
-/

namespace A122560.P16024057517414757568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P16024057517414757568

/-! ## A122560.P10559245842877972144

`∩[A045319(n+1), A076304(n+1)]`
-/

namespace A122560.P10559245842877972144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P10559245842877972144

/-! ## A122560.P2766019195373097135

`∩[A045344(n+1), A076304(n+1)]`
-/

namespace A122560.P2766019195373097135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P2766019195373097135

/-! ## A122560.P11840175797199596572

`∩[A065091(n+1), A076304(n+1)]`
-/

namespace A122560.P11840175797199596572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P11840175797199596572

/-! ## A122560.P1926117335655916369

`∩[A076304(n+1), A093515(n+1)]`
-/

namespace A122560.P1926117335655916369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P1926117335655916369

/-! ## A122560.P6244361000611260993

`∩[A008578(n+1), A076304(n+1)]`
-/

namespace A122560.P6244361000611260993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P6244361000611260993

/-! ## A122560.P17288996708726112849

`∩[A033946(n+1), A076304(n+1)]`
-/

namespace A122560.P17288996708726112849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P17288996708726112849

/-! ## A122560.P7920350416076713485

`∩[A046022(n+1), A076304(n+1)]`
-/

namespace A122560.P7920350416076713485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P7920350416076713485

/-! ## A122560.P4448402239138719365

`∩[A051948(n+1), A076304(n+1)]`
-/

namespace A122560.P4448402239138719365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P4448402239138719365

/-! ## A122560.P10554168018393023320

`∩[A053813(n+1), A076304(n+1)]`
-/

namespace A122560.P10554168018393023320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P10554168018393023320

/-! ## A122560.P3890660519978093548

`∩[A060634(n+1), A076304(n+1)]`
-/

namespace A122560.P3890660519978093548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P3890660519978093548

/-! ## A122560.P3691640954931646010

`∩[A062972(n+1), A076304(n+1)]`
-/

namespace A122560.P3691640954931646010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P3691640954931646010

/-! ## A122560.P2576483851705349549

`∩[A064728(n+1), A076304(n+1)]`
-/

namespace A122560.P2576483851705349549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P2576483851705349549

/-! ## A122560.P16293744667346898047

`∩[A066050(n+1), A076304(n+1)]`
-/

namespace A122560.P16293744667346898047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122560.P16293744667346898047

/-!
# A122562: a(n) = n^3 + 114 * n.

The programs for A122562, the canonical program `A122562.P13058208799221049303` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122562 has offset 1).

The definition of A122562 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3+114*(n+1)` (program `A122562.P13058208799221049303`, by `A122562.P13058208799221049303.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122562.P5010619752981022689

`(n+1)*((n+1)²+114)`
-/

namespace A122562.P5010619752981022689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) ^ 2 + 114)

end

end A122562.P5010619752981022689

namespace A122562

/-- `(n+1)*((n+1)²+114)` -/
def P5010619752981022689.Spec : Prop :=
  ∀ n, (P5010619752981022689.a n : ℤ) = A122562 (n + 1)

theorem P5010619752981022689.correct : P5010619752981022689.Spec := by
  intro n
  simp only [A122562, Nat.add_sub_cancel, A122562.P5010619752981022689.a, A122562.P13058208799221049303.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A122562

/-! ## A122562.P13058208799221049303

`(n+1)^3+114*(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122562

/-- `(n+1)^3+114*(n+1)` -/
def P13058208799221049303.Spec : Prop :=
  ∀ n, (P13058208799221049303.a n : ℤ) = A122562 (n + 1)

theorem P13058208799221049303.correct : P13058208799221049303.Spec := by
  intro n
  simp only [A122562, Nat.add_sub_cancel]

end A122562

/-! ## A122562.P7851739275934356945

`Δ[(lcm(n, n+1)/2+57)²]`
-/

namespace A122562.P7851739275934356945
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm n (n + 1) : ℚ) / 2 + 57) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122562.P7851739275934356945

namespace A122562

/-- `Δ[(lcm(n, n+1)/2+57)²]` -/
def P7851739275934356945.Spec : Prop :=
  ∀ n, P7851739275934356945.a n = (A122562 (n + 1) : ℚ)

end A122562

/-! ## A122562.P2785774638414990585

`Δ[(A000217(n)+57)²]`
-/

namespace A122562.P2785774638414990585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + 57) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122562.P2785774638414990585

namespace A122562

/-- `Δ[(A000217(n)+57)²]` -/
def P2785774638414990585.Spec : Prop :=
  ∀ n, P2785774638414990585.a n = A122562 (n + 1)

theorem P2785774638414990585.correct : P2785774638414990585.Spec := by
  intro n
  simp only [A122562, Nat.add_sub_cancel, A122562.P2785774638414990585.f1, A122562.P2785774638414990585.a, A122562.P13058208799221049303.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A122562

/-! ## A122562.P2393103571697307284

`Δ[(A000124(n)+56)²]`
-/

namespace A122562.P2393103571697307284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000124 n + 56) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122562.P2393103571697307284

namespace A122562

/-- `Δ[(A000124(n)+56)²]` -/
def P2393103571697307284.Spec : Prop :=
  ∀ n, P2393103571697307284.a n = A122562 (n + 1)

end A122562

/-! ## A122562.P11806096542472857025

`Δ[A005563(∑[n]+56)]`
-/

namespace A122562.P11806096542472857025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (∑ j ∈ Finset.range (n + 1), f2 j + 56)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122562.P11806096542472857025

namespace A122562

/-- `Δ[A005563(∑[n]+56)]` -/
def P11806096542472857025.Spec : Prop :=
  ∀ n, P11806096542472857025.a n = A122562 (n + 1)

end A122562

/-!
# A122564: Twin primes of form 4k-1, 4k+1.

The programs for A122564, the canonical program `A122564.P13385177037397452995` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122564 has offset 1).

The definition of A122564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122564.P1698244476246408781

`∪[A071698(n+1), A071699(n+1)]`
-/

namespace A122564.P1698244476246408781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122564.P1698244476246408781

namespace A122564

/-- `∪[A071698(n+1), A071699(n+1)]` -/
def P1698244476246408781.Spec : Prop :=
  ∀ n, (P1698244476246408781.a n : ℤ) = A122564 (n + 1)

end A122564

/-! ## A122564.P7962653982289398709

`A071698(A008619(n))+A010673(n)`
-/

namespace A122564.P7962653982289398709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071698 (A008619 n).toNat + A010673 n

end

end A122564.P7962653982289398709

namespace A122564

/-- `A071698(A008619(n))+A010673(n)` -/
def P7962653982289398709.Spec : Prop :=
  ∀ n, P7962653982289398709.a n = A122564 (n + 1)

end A122564

/-! ## A122564.P9973654533667793410

`A108245(A000720(p?[A108245(n+2)]))`
-/

namespace A122564.P9973654533667793410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A122564.P9973654533667793410

namespace A122564

/-- `A108245(A000720(p?[A108245(n+2)]))` -/
def P9973654533667793410.Spec : Prop :=
  ∀ n, P9973654533667793410.a n = A122564 (n + 1)

end A122564

/-! ## A122564.P13385177037397452995

`A108245(A061395(p?[A108245(n+2)]))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A122564

/-- `A108245(A061395(p?[A108245(n+2)]))` -/
def P13385177037397452995.Spec : Prop :=
  ∀ n, P13385177037397452995.a n = A122564 (n + 1)

theorem P13385177037397452995.correct : P13385177037397452995.Spec := by
  intro n
  simp only [A122564, Nat.add_sub_cancel]

end A122564

/-! ## A122564.P3184887810468405894

`A108245(A326846(p?[A108245(n+2)]))`
-/

namespace A122564.P3184887810468405894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (A326846 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A122564.P3184887810468405894

namespace A122564

/-- `A108245(A326846(p?[A108245(n+2)]))` -/
def P3184887810468405894.Spec : Prop :=
  ∀ n, P3184887810468405894.a n = A122564 (n + 1)

end A122564

/-! ## A122564.P14561508880647933000

`p?[A101264(A014681(n+1))+2*(n+1)]`
-/

namespace A122564.P14561508880647933000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A014681 (n + 1)).toNat + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122564.P14561508880647933000

namespace A122564

/-- `p?[A101264(A014681(n+1))+2*(n+1)]` -/
def P14561508880647933000.Spec : Prop :=
  ∀ n, P14561508880647933000.a n = A122564 (n + 1)

end A122564

/-! ## A122564.P3798919384545795870

`p?[A005408(n)*A281680(A014681(n))]`
-/

namespace A122564.P3798919384545795870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A281680 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122564.P3798919384545795870

namespace A122564

/-- `p?[A005408(n)*A281680(A014681(n))]` -/
def P3798919384545795870.Spec : Prop :=
  ∀ n, P3798919384545795870.a n = A122564 (n + 1)

end A122564

/-! ## A122564.P4526831040411761688

`A108245(A067004(p?[A108245(n+2)]))`
-/

namespace A122564.P4526831040411761688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (A067004 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A122564.P4526831040411761688

namespace A122564

/-- `A108245(A067004(p?[A108245(n+2)]))` -/
def P4526831040411761688.Spec : Prop :=
  ∀ n, P4526831040411761688.a n = A122564 (n + 1)

end A122564

/-! ## A122564.P14115831080305925051

`A108245(A230980(p?[A108245(n+2)]))`
-/

namespace A122564.P14115831080305925051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A122564.P14115831080305925051

namespace A122564

/-- `A108245(A230980(p?[A108245(n+2)]))` -/
def P14115831080305925051.Spec : Prop :=
  ∀ n, P14115831080305925051.a n = A122564 (n + 1)

end A122564

/-! ## A122564.P13605233751989580768

`A108245(A324733(p?[A108245(n+2)]))`
-/

namespace A122564.P13605233751989580768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (A324733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A122564.P13605233751989580768

namespace A122564

/-- `A108245(A324733(p?[A108245(n+2)]))` -/
def P13605233751989580768.Spec : Prop :=
  ∀ n, P13605233751989580768.a n = A122564 (n + 1)

end A122564

/-!
# A122565: Twin primes of form 4k+1, 4k+3.

The programs for A122565, there is no canonical definition to state claims against.
-/

/-! ## A122565.P12777992282647213777

`A071695(1+floor(n/2))+2*n%2`
-/

namespace A122565.P12777992282647213777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071695 (1 + ⌊(n : ℚ) / 2⌋).toNat + ((2 * (n % 2) : ℕ) : ℤ)

end

end A122565.P12777992282647213777

/-! ## A122565.P6191777665146700173

`∪[A071695(n+1), A071696(n+1)]`
-/

namespace A122565.P6191777665146700173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P6191777665146700173

/-! ## A122565.P7006568241305037733

`or(A000034(n), A071695(A008619(n)))`
-/

namespace A122565.P7006568241305037733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000034 n) (A071695 (A008619 n).toNat)

end

end A122565.P7006568241305037733

/-! ## A122565.P11607379588116366686

`∩[A001097(n+1), A003630(n+1)]`
-/

namespace A122565.P11607379588116366686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P11607379588116366686

/-! ## A122565.P18114868736166819649

`∩[A003630(n+1), A171688(n+1)]`
-/

namespace A122565.P18114868736166819649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P18114868736166819649

/-! ## A122565.P11376638448806501678

`∩[A003630(n+1), A171821(n+1)]`
-/

namespace A122565.P11376638448806501678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P11376638448806501678

/-! ## A122565.P6126894171607148790

`∩[A001097(n+1), A038875(n+1)]`
-/

namespace A122565.P6126894171607148790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P6126894171607148790

/-! ## A122565.P10651078901076858984

`∩[A038875(n+1), A171688(n+1)]`
-/

namespace A122565.P10651078901076858984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P10651078901076858984

/-! ## A122565.P635043754894375507

`p?[A072013(n+3)]`
-/

namespace A122565.P635043754894375507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122565.P635043754894375507

/-! ## A122565.P17417108692162690811

`∩[A001097(n+1), A072013(n+1)]`
-/

namespace A122565.P17417108692162690811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P17417108692162690811

/-! ## A122565.P6984091111386480846

`∩[A003630(n+1), A072013(n+1)]`
-/

namespace A122565.P6984091111386480846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P6984091111386480846

/-! ## A122565.P2538280432940343474

`∩[A040102(n+1), A072013(n+1)]`
-/

namespace A122565.P2538280432940343474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P2538280432940343474

/-! ## A122565.P6706982798924211775

`∩[A040125(n+1), A072013(n+1)]`
-/

namespace A122565.P6706982798924211775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P6706982798924211775

/-! ## A122565.P17163159984120215021

`∩[A040995(n+1), A072013(n+1)]`
-/

namespace A122565.P17163159984120215021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P17163159984120215021

/-! ## A122565.P9100818362745623401

`∩[A045318(n+1), A072013(n+1)]`
-/

namespace A122565.P9100818362745623401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P9100818362745623401

/-! ## A122565.P9193952351302204313

`∩[A072013(n+1), A084197(n+1)]`
-/

namespace A122565.P9193952351302204313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P9193952351302204313

/-! ## A122565.P6853897806258239859

`∩[A072013(n+1), A090190(n+1)]`
-/

namespace A122565.P6853897806258239859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P6853897806258239859

/-! ## A122565.P11530199222925268176

`∩[A072013(n+1), A171688(n+1)]`
-/

namespace A122565.P11530199222925268176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P11530199222925268176

/-! ## A122565.P1835766389119342152

`∩[A072013(n+1), A240699(n+1)]`
-/

namespace A122565.P1835766389119342152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P1835766389119342152

/-! ## A122565.P11901792586434747880

`∩[A072013(n+1), A325143(n+1)]`
-/

namespace A122565.P11901792586434747880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122565.P11901792586434747880

/-! ## A122565.P3443613618498695975

`p?[xor(2, p?[xor(2, n)])]`
-/

namespace A122565.P3443613618498695975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A122565.P3443613618498695975

/-!
# A122566: a(n) = prime(n^2 + n + 1).

The programs for A122566, the canonical program `A122566.P5410346461009973998` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122566 has offset 0).

The definition of A122566 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n²+n+1)` (program `A122566.P5410346461009973998`, by `A122566.P5410346461009973998.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122566.P5410346461009973998

`A000040(n²+n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A122566

/-- `A000040(n²+n+1)` -/
def P5410346461009973998.Spec : Prop :=
  ∀ n, P5410346461009973998.a n = A122566 n

theorem P5410346461009973998.correct : P5410346461009973998.Spec := by
  intro n
  simp only [A122566]

end A122566

/-! ## A122566.P8870133323631500389

`A059428(Δ[n²])`
-/

namespace A122566.P8870133323631500389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059428 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A122566.P8870133323631500389

namespace A122566

/-- `A059428(Δ[n²])` -/
def P8870133323631500389.Spec : Prop :=
  ∀ n, P8870133323631500389.a n = A122566 n

end A122566

/-! ## A122566.P14443280349334707677

`lcm(∑[A002448(n)], A059428(2*n+1))`
-/

namespace A122566.P14443280349334707677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A059428 (2 * n + 1))

end

end A122566.P14443280349334707677

namespace A122566

/-- `lcm(∑[A002448(n)], A059428(2*n+1))` -/
def P14443280349334707677.Spec : Prop :=
  ∀ n, (P14443280349334707677.a n : ℤ) = A122566 n

end A122566

/-! ## A122566.P3604941185684172171

`∪[A054553(n), A054568(n)]`
-/

namespace A122566.P3604941185684172171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054553 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054568 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122566.P3604941185684172171

namespace A122566

/-- `∪[A054553(n), A054568(n)]` -/
def P3604941185684172171.Spec : Prop :=
  ∀ n, (P3604941185684172171.a n : ℤ) = A122566 n

end A122566

/-! ## A122566.P1345198790903415338

`A059428(2*n+1)*A325567(A014580(n+1))`
-/

namespace A122566.P1345198790903415338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059428 (2 * n + 1) * A325567 (A014580 (n + 1)).toNat

end

end A122566.P1345198790903415338

namespace A122566

/-- `A059428(2*n+1)*A325567(A014580(n+1))` -/
def P1345198790903415338.Spec : Prop :=
  ∀ n, P1345198790903415338.a n = A122566 n

end A122566

/-! ## A122566.P10076419928230089535

`A031368(∑[n]+1)`
-/

namespace A122566.P10076419928230089535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A122566.P10076419928230089535

namespace A122566

/-- `A031368(∑[n]+1)` -/
def P10076419928230089535.Spec : Prop :=
  ∀ n, P10076419928230089535.a n = A122566 n

end A122566

/-! ## A122566.P10407896714213606602

`A001748(∑[2*n]+1)/3`
-/

namespace A122566.P10407896714213606602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 3

end

end A122566.P10407896714213606602

namespace A122566

/-- `A001748(∑[2*n]+1)/3` -/
def P10407896714213606602.Spec : Prop :=
  ∀ n, P10407896714213606602.a n = (A122566 n : ℚ)

end A122566

/-! ## A122566.P4294055217596464172

`A001749(∑[2*n]+1)/4`
-/

namespace A122566.P4294055217596464172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 4

end

end A122566.P4294055217596464172

namespace A122566

/-- `A001749(∑[2*n]+1)/4` -/
def P4294055217596464172.Spec : Prop :=
  ∀ n, P4294055217596464172.a n = (A122566 n : ℚ)

end A122566

/-! ## A122566.P10677587267325408947

`A213642(n²+n+1)`
-/

namespace A122566.P10677587267325408947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213642 (n ^ 2 + (n + 1))

end

end A122566.P10677587267325408947

namespace A122566

/-- `A213642(n²+n+1)` -/
def P10677587267325408947.Spec : Prop :=
  ∀ n, P10677587267325408947.a n = A122566 n

end A122566

/-! ## A122566.P8986386918898452931

`A008578(n²+n+2)`
-/

namespace A122566.P8986386918898452931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n ^ 2 + n + 2)

end

end A122566.P8986386918898452931

namespace A122566

/-- `A008578(n²+n+2)` -/
def P8986386918898452931.Spec : Prop :=
  ∀ n, P8986386918898452931.a n = A122566 n

end A122566

/-! ## A122566.P3671324705763188063

`A182986(n²+n+2)`
-/

namespace A122566.P3671324705763188063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n ^ 2 + n + 2)

end

end A122566.P3671324705763188063

namespace A122566

/-- `A182986(n²+n+2)` -/
def P3671324705763188063.Spec : Prop :=
  ∀ n, P3671324705763188063.a n = A122566 n

end A122566

/-! ## A122566.P17397356199728143340

`A158611(n²+n+3)`
-/

namespace A122566.P17397356199728143340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n ^ 2 + n + 3)

end

end A122566.P17397356199728143340

namespace A122566

/-- `A158611(n²+n+3)` -/
def P17397356199728143340.Spec : Prop :=
  ∀ n, P17397356199728143340.a n = A122566 n

end A122566

/-! ## A122566.P4272887493261912136

`A335402(n²+n+3)`
-/

namespace A122566.P4272887493261912136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (n ^ 2 + n + 3)

end

end A122566.P4272887493261912136

namespace A122566

/-- `A335402(n²+n+3)` -/
def P4272887493261912136.Spec : Prop :=
  ∀ n, P4272887493261912136.a n = A122566 n

end A122566

/-! ## A122566.P11258106567749071174

`A045344(A103505(n+1))`
-/

namespace A122566.P11258106567749071174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A103505 (n + 1)).toNat

end

end A122566.P11258106567749071174

namespace A122566

/-- `A045344(A103505(n+1))` -/
def P11258106567749071174.Spec : Prop :=
  ∀ n, P11258106567749071174.a n = A122566 n

end A122566

/-! ## A122566.P788770831938989887

`A175787(A003682(n+1))`
-/

namespace A122566.P788770831938989887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A003682 (n + 1)).toNat

end

end A122566.P788770831938989887

namespace A122566

/-- `A175787(A003682(n+1))` -/
def P788770831938989887.Spec : Prop :=
  ∀ n, P788770831938989887.a n = A122566 n

end A122566

/-!
# A122567: Twin primes modulo 4.

The programs for A122567, the canonical program `A122567.P13257649672823421498` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122567 has offset 1).

The definition of A122567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122567.P13257649672823421498

`A001097(n+1)%4`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A122567

/-- `A001097(n+1)%4` -/
def P13257649672823421498.Spec : Prop :=
  ∀ n, P13257649672823421498.a n = A122567 (n + 1)

theorem P13257649672823421498.correct : P13257649672823421498.Spec := by
  intro n
  simp only [A122567, Nat.add_sub_cancel]

end A122567

/-! ## A122567.P17083797163908682870

`and(3, A001097(C(n+1, n)))`
-/

namespace A122567.P17083797163908682870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A001097 (Nat.choose (n + 1) n))

end

end A122567.P17083797163908682870

namespace A122567

/-- `and(3, A001097(C(n+1, n)))` -/
def P17083797163908682870.Spec : Prop :=
  ∀ n, P17083797163908682870.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P443899195816094870

`and(3, A001097(n-log2(1/2)))`
-/

namespace A122567.P443899195816094870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A001097 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A122567.P443899195816094870

namespace A122567

/-- `and(3, A001097(n-log2(1/2)))` -/
def P443899195816094870.Spec : Prop :=
  ∀ n, P443899195816094870.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P2926970699416964238

`A171821(n+2)%4`
-/

namespace A122567.P2926970699416964238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171821 (n + 2)) 4

end

end A122567.P2926970699416964238

namespace A122567

/-- `A171821(n+2)%4` -/
def P2926970699416964238.Spec : Prop :=
  ∀ n, P2926970699416964238.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P2472217014083037846

`A039702(A334142(n+1))`
-/

namespace A122567.P2472217014083037846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (A334142 (n + 1)).toNat

end

end A122567.P2472217014083037846

namespace A122567

/-- `A039702(A334142(n+1))` -/
def P2472217014083037846.Spec : Prop :=
  ∀ n, P2472217014083037846.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P15192126007719464624

`and(3, A006530(or(1, A001097(n+1))))`
-/

namespace A122567.P15192126007719464624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A006530 (Int.lor 1 (A001097 (n + 1))).toNat)

end

end A122567.P15192126007719464624

namespace A122567

/-- `and(3, A006530(or(1, A001097(n+1))))` -/
def P15192126007719464624.Spec : Prop :=
  ∀ n, P15192126007719464624.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P10431711484847360079

`and(3, A020639(or(1, A001097(n+1))))`
-/

namespace A122567.P10431711484847360079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A020639 (Int.lor 1 (A001097 (n + 1))).toNat)

end

end A122567.P10431711484847360079

namespace A122567

/-- `and(3, A020639(or(1, A001097(n+1))))` -/
def P10431711484847360079.Spec : Prop :=
  ∀ n, P10431711484847360079.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P12879184675120638991

`p?[A334141(n+1)]%4`
-/

namespace A122567.P12879184675120638991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 4

end

end A122567.P12879184675120638991

namespace A122567

/-- `p?[A334141(n+1)]%4` -/
def P12879184675120638991.Spec : Prop :=
  ∀ n, P12879184675120638991.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P5082286963239127220

`A010873(A001097(n+1))`
-/

namespace A122567.P5082286963239127220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001097 (n + 1)).toNat

end

end A122567.P5082286963239127220

namespace A122567

/-- `A010873(A001097(n+1))` -/
def P5082286963239127220.Spec : Prop :=
  ∀ n, P5082286963239127220.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P5232221646118232937

`p?[A062505(n+1)]%4`
-/

namespace A122567.P5232221646118232937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 4

end

end A122567.P5232221646118232937

namespace A122567

/-- `p?[A062505(n+1)]%4` -/
def P5232221646118232937.Spec : Prop :=
  ∀ n, P5232221646118232937.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P11785385759539272564

`and(3, A006530(2*A001097(n+1)))`
-/

namespace A122567.P11785385759539272564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A006530 (2 * A001097 (n + 1)).toNat)

end

end A122567.P11785385759539272564

namespace A122567

/-- `and(3, A006530(2*A001097(n+1)))` -/
def P11785385759539272564.Spec : Prop :=
  ∀ n, P11785385759539272564.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P7243631982967870018

`record[A284599(n+3)]%4`
-/

namespace A122567.P7243631982967870018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284599 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 4

end

end A122567.P7243631982967870018

namespace A122567

/-- `record[A284599(n+3)]%4` -/
def P7243631982967870018.Spec : Prop :=
  ∀ n, P7243631982967870018.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P15911451293684757261

`A003324(A001097(n+1))`
-/

namespace A122567.P15911451293684757261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A001097 (n + 1)).toNat

end

end A122567.P15911451293684757261

namespace A122567

/-- `A003324(A001097(n+1))` -/
def P15911451293684757261.Spec : Prop :=
  ∀ n, P15911451293684757261.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P15788942034556281830

`A003324(A171821(n+2))`
-/

namespace A122567.P15788942034556281830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A171821 (n + 2)).toNat

end

end A122567.P15788942034556281830

namespace A122567

/-- `A003324(A171821(n+2))` -/
def P15788942034556281830.Spec : Prop :=
  ∀ n, P15788942034556281830.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P11469718396386001608

`A014963(A278972(n+1)/2)%4`
-/

namespace A122567.P11469718396386001608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (SequenceMachineLib.roundAway ((A278972 (n + 1) : ℚ) / 2)).toNat) 4

end

end A122567.P11469718396386001608

namespace A122567

/-- `A014963(A278972(n+1)/2)%4` -/
def P11469718396386001608.Spec : Prop :=
  ∀ n, P11469718396386001608.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P8568746040122309910

`A055095(A278972(n+1))`
-/

namespace A122567.P8568746040122309910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055095 (A278972 (n + 1)).toNat

end

end A122567.P8568746040122309910

namespace A122567

/-- `A055095(A278972(n+1))` -/
def P8568746040122309910.Spec : Prop :=
  ∀ n, P8568746040122309910.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P7699762643658820477

`A099545(2*A001097(n+1))`
-/

namespace A122567.P7699762643658820477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099545 (2 * A001097 (n + 1)).toNat

end

end A122567.P7699762643658820477

namespace A122567

/-- `A099545(2*A001097(n+1))` -/
def P7699762643658820477.Spec : Prop :=
  ∀ n, P7699762643658820477.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P13267184697687106490

`and(A001097(n+1), A191341(n+1))`
-/

namespace A122567.P13267184697687106490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001097 (n + 1)) (A191341 (n + 1))

end

end A122567.P13267184697687106490

namespace A122567

/-- `and(A001097(n+1), A191341(n+1))` -/
def P13267184697687106490.Spec : Prop :=
  ∀ n, P13267184697687106490.a n = A122567 (n + 1)

end A122567

/-! ## A122567.P3435249511903461797

`and(A001097(n+1), A127509(n+1))`
-/

namespace A122567.P3435249511903461797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001097 (n + 1)) (A127509 (n + 1))

end

end A122567.P3435249511903461797

namespace A122567

/-- `and(A001097(n+1), A127509(n+1))` -/
def P3435249511903461797.Spec : Prop :=
  ∀ n, P3435249511903461797.a n = A122567 (n + 1)

end A122567

/-!
# A122569: Consider the Thue-Morse sequence (A010059) at each iteration. Read each reversed string as a binary number and convert it to a decimal number.

The programs for A122569, there is no canonical definition to state claims against.
-/

/-! ## A122569.P11394547341865394783

`A228540(2^(n+1)-2)`
-/

namespace A122569.P11394547341865394783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228540 (2 ^ (n + 1) - 2)

end

end A122569.P11394547341865394783

/-!
# A122570: Consider the Thue-Morse sequence (A010060) at each iteration. Read each reversed string as a binary number and convert it to a decimal number.

The programs for A122570, there is no canonical definition to state claims against.
-/

/-! ## A122570.P12864061601936410916

`A320916(2^n)`
-/

namespace A122570.P12864061601936410916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320916 (2 ^ n)

end

end A122570.P12864061601936410916

/-! ## A122570.P1603348191943899569

`A228539(2^(n+1)-2)`
-/

namespace A122570.P1603348191943899569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228539 (2 ^ (n + 1) - 2)

end

end A122570.P1603348191943899569

/-! ## A122570.P15074359714951489032

`A051179(n)-A122569(n+1)`
-/

namespace A122570.P15074359714951489032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051179 n - A122569 (n + 1)

end

end A122570.P15074359714951489032

/-! ## A122570.P15182661969812562736

`record[A228540(n)]-A122569(n+1)`
-/

namespace A122570.P15182661969812562736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A122569 (n + 1)

end

end A122570.P15182661969812562736

/-! ## A122570.P1946499316618757735

`record[A228540(n)-A228540(2*n)]`
-/

namespace A122570.P1946499316618757735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228540 n - A228540 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122570.P1946499316618757735

/-!
# A122571: a(n) = 14*a(n-1) - a(n-2), with a(1) = a(2) = 1.

The programs for A122571, the canonical program `A122571.P16940093694797289451` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122571 has offset 1).

The definition of A122571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-a(n-2)` (program `A122571.P16940093694797289451`, by `A122571.P16940093694797289451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122571.P957719865531987648

`ogf((1-13x)/(1-14x+x^2))`
-/

namespace A122571.P957719865531987648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -13] [1, -14, 1] n

end

end A122571.P957719865531987648

namespace A122571

/-- `ogf((1-13x)/(1-14x+x^2))` -/
def P957719865531987648.Spec : Prop :=
  ∀ n, P957719865531987648.a n = A122571 (n + 1)

end A122571

/-! ## A122571.P16940093694797289451

`14*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122571

/-- `14*a(n-1)-a(n-2)` -/
def P16940093694797289451.Spec : Prop :=
  ∀ n, P16940093694797289451.a n = A122571 (n + 1)

theorem P16940093694797289451.correct : P16940093694797289451.Spec := by
  intro n
  simp only [A122571, Nat.add_sub_cancel]

end A122571

/-! ## A122571.P6956108051734123721

`1/4*((2+sqrt(3))^(2*(n+1)-3)+(2-sqrt(3))^(2*(n+1)-3))`
-/

namespace A122571.P6956108051734123721
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 4 : ℝ) * ((2 + Real.sqrt (3 : ℝ)) ^ ((2 * (n + 1) : ℤ) - 3 : ℤ) + (2 - Real.sqrt (3 : ℝ)) ^ ((2 * (n + 1) : ℤ) - 3 : ℤ))

end

end A122571.P6956108051734123721

namespace A122571

/-- `1/4*((2+sqrt(3))^(2*(n+1)-3)+(2-sqrt(3))^(2*(n+1)-3))` -/
def P6956108051734123721.Spec : Prop :=
  ∀ n, P6956108051734123721.a n = (A122571 (n + 1) : ℝ)

end A122571

/-! ## A122571.P2754330796333315499

`lcm(14, a(n-1))-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A122571.P2754330796333315499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Int.lcm 14 (a (n - 1)) : ℤ) - a (n - 2)

end

end A122571.P2754330796333315499

namespace A122571

/-- `lcm(14, a(n-1))-a(n-2)` -/
def P2754330796333315499.Spec : Prop :=
  ∀ n, P2754330796333315499.a n = A122571 (n + 1)

end A122571

/-! ## A122571.P14304364784832256100

`A094347(n)/2`
-/

namespace A122571.P14304364784832256100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094347 n : ℚ) / 2

end

end A122571.P14304364784832256100

namespace A122571

/-- `A094347(n)/2` -/
def P14304364784832256100.Spec : Prop :=
  ∀ n, P14304364784832256100.a n = (A122571 (n + 1) : ℚ)

end A122571

/-! ## A122571.P5647958587966321349

`A001570(floor(acot(n)+n))`
-/

namespace A122571.P5647958587966321349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001570 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A122571.P5647958587966321349

namespace A122571

/-- `A001570(floor(acot(n)+n))` -/
def P5647958587966321349.Spec : Prop :=
  ∀ n, P5647958587966321349.a n = A122571 (n + 1)

end A122571

/-! ## A122571.P11391019635169605231

`A001570(or(n, floor(acot(n))))`
-/

namespace A122571.P11391019635169605231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001570 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A122571.P11391019635169605231

namespace A122571

/-- `A001570(or(n, floor(acot(n))))` -/
def P11391019635169605231.Spec : Prop :=
  ∀ n, P11391019635169605231.a n = A122571 (n + 1)

end A122571

/-! ## A122571.P8009545400281550701

`A001570(xor(n, floor(acot(n))))`
-/

namespace A122571.P8009545400281550701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001570 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A122571.P8009545400281550701

namespace A122571

/-- `A001570(xor(n, floor(acot(n))))` -/
def P8009545400281550701.Spec : Prop :=
  ∀ n, P8009545400281550701.a n = A122571 (n + 1)

end A122571

/-! ## A122571.P9296875808634164368

`A084156(abs(1-2*n))`
-/

namespace A122571.P9296875808634164368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084156 |1 - (2 * n : ℤ)|.toNat

end

end A122571.P9296875808634164368

namespace A122571

/-- `A084156(abs(1-2*n))` -/
def P9296875808634164368.Spec : Prop :=
  ∀ n, P9296875808634164368.a n = A122571 (n + 1)

end A122571

/-! ## A122571.P10460223563860357752

`A001570(C(n, ceil(sin(n)²)))`
-/

namespace A122571.P10460223563860357752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001570 (Nat.choose n ⌈Real.sin (n : ℝ) ^ 2⌉.toNat)

end

end A122571.P10460223563860357752

namespace A122571

/-- `A001570(C(n, ceil(sin(n)²)))` -/
def P10460223563860357752.Spec : Prop :=
  ∀ n, P10460223563860357752.a n = A122571 (n + 1)

end A122571

/-!
# A122572: a(n) = -14*a(n-1) - a(n-2), with a(1) = a(2) = 1.

The programs for A122572, the canonical program `A122572.P3849366534713578389` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122572 has offset 1).

The definition of A122572 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-14*a(n-1)-a(n-2)` (program `A122572.P3849366534713578389`, by `A122572.P3849366534713578389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122572.P12450634331174847158

`ogf((1+15x)/(1+14x+x^2))`
-/

namespace A122572.P12450634331174847158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 15] [1, 14, 1] n

end

end A122572.P12450634331174847158

namespace A122572

/-- `ogf((1+15x)/(1+14x+x^2))` -/
def P12450634331174847158.Spec : Prop :=
  ∀ n, P12450634331174847158.a n = A122572 (n + 1)

end A122572

/-! ## A122572.P3849366534713578389

`-14*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122572

/-- `-14*a(n-1)-a(n-2)` -/
def P3849366534713578389.Spec : Prop :=
  ∀ n, P3849366534713578389.a n = A122572 (n + 1)

theorem P3849366534713578389.correct : P3849366534713578389.Spec := by
  intro n
  simp only [A122572, Nat.add_sub_cancel]

end A122572

/-! ## A122572.P10329955388388484974

`(a(n-1)+4)*(a(n-1)-4)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A122572.P10329955388388484974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + 4) * ((a (n - 1) - 4) / a (n - 2))

end

end A122572.P10329955388388484974

namespace A122572

/-- `(a(n-1)+4)*(a(n-1)-4)/a(n-2)` -/
def P10329955388388484974.Spec : Prop :=
  ∀ n, P10329955388388484974.a n = (A122572 (n + 1) : ℚ)

end A122572

/-! ## A122572.P17872323446387436860

`A140806(3*(n+1)+n-2)`
-/

namespace A122572.P17872323446387436860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140806 ((3 * (n + 1) : ℤ) + ((n : ℤ) - 2)).toNat

end

end A122572.P17872323446387436860

namespace A122572

/-- `A140806(3*(n+1)+n-2)` -/
def P17872323446387436860.Spec : Prop :=
  ∀ n, P17872323446387436860.a n = A122572 (n + 1)

end A122572

/-! ## A122572.P5082961828824417732

`A001835(n)*A108413(2*n)`
-/

namespace A122572.P5082961828824417732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n * A108413 (2 * n)

end

end A122572.P5082961828824417732

namespace A122572

/-- `A001835(n)*A108413(2*n)` -/
def P5082961828824417732.Spec : Prop :=
  ∀ n, P5082961828824417732.a n = A122572 (n + 1)

end A122572

/-! ## A122572.P306266484627525286

`A002530(A004280(n+1))*A108413(2*n)`
-/

namespace A122572.P306266484627525286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (A004280 (n + 1)).toNat * A108413 (2 * n)

end

end A122572.P306266484627525286

namespace A122572

/-- `A002530(A004280(n+1))*A108413(2*n)` -/
def P306266484627525286.Spec : Prop :=
  ∀ n, P306266484627525286.a n = A122572 (n + 1)

end A122572

/-!
# A122573: Expansion of x*(1 + x)*(1 - 3*x^2)/(1 - 4*x^2 + x^4).

The programs for A122573, the canonical program `A122573.P15973186930101598619` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122573 has offset 1).

The definition of A122573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-3x^2-3x^3)/(1-4x^2+x^4))` (program `A122573.P15973186930101598619`, by `A122573.P15973186930101598619.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122573.P15973186930101598619

`ogf((1+x-3x^2-3x^3)/(1-4x^2+x^4))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122573

/-- `ogf((1+x-3x^2-3x^3)/(1-4x^2+x^4))` -/
def P15973186930101598619.Spec : Prop :=
  ∀ n, P15973186930101598619.a n = A122573 (n + 1)

theorem P15973186930101598619.correct : P15973186930101598619.Spec := by
  intro n
  simp only [A122573, Nat.add_sub_cancel]

end A122573

/-! ## A122573.P5812621305827350818

`4*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A122573.P5812621305827350818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  4 * a (n - 2) - a (n - 4)

end

end A122573.P5812621305827350818

namespace A122573

/-- `4*a(n-2)-a(n-4)` -/
def P5812621305827350818.Spec : Prop :=
  ∀ n, P5812621305827350818.a n = A122573 (n + 1)

end A122573

/-! ## A122573.P5263904649440307196

`A001835(floor(n/2))`
-/

namespace A122573.P5263904649440307196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 ⌊(n : ℚ) / 2⌋.toNat

end

end A122573.P5263904649440307196

namespace A122573

/-- `A001835(floor(n/2))` -/
def P5263904649440307196.Spec : Prop :=
  ∀ n, P5263904649440307196.a n = A122573 (n + 1)

end A122573

/-! ## A122573.P11956201873511302130

`A005246(or(1, n)-1)`
-/

namespace A122573.P11956201873511302130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (Nat.lor 1 n - 1)

end

end A122573.P11956201873511302130

namespace A122573

/-- `A005246(or(1, n)-1)` -/
def P11956201873511302130.Spec : Prop :=
  ∀ n, P11956201873511302130.a n = A122573 (n + 1)

end A122573

/-! ## A122573.P13140519763126833146

`A005246(n-and(1, n))`
-/

namespace A122573.P13140519763126833146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (n - Nat.land 1 n)

end

end A122573.P13140519763126833146

namespace A122573

/-- `A005246(n-and(1, n))` -/
def P13140519763126833146.Spec : Prop :=
  ∀ n, P13140519763126833146.a n = A122573 (n + 1)

end A122573

/-! ## A122573.P7164581890113070035

`A005246(xor(n, and(1, n)))`
-/

namespace A122573.P7164581890113070035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (Nat.xor n (Nat.land 1 n))

end

end A122573.P7164581890113070035

namespace A122573

/-- `A005246(xor(n, and(1, n)))` -/
def P7164581890113070035.Spec : Prop :=
  ∀ n, P7164581890113070035.a n = A122573 (n + 1)

end A122573

/-! ## A122573.P14045688543298433355

`A005246(A052928(n))`
-/

namespace A122573.P14045688543298433355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (A052928 n).toNat

end

end A122573.P14045688543298433355

namespace A122573

/-- `A005246(A052928(n))` -/
def P14045688543298433355.Spec : Prop :=
  ∀ n, P14045688543298433355.a n = A122573 (n + 1)

end A122573

/-! ## A122573.P17225415239431572846

`A002530(A267458(n))`
-/

namespace A122573.P17225415239431572846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (A267458 n).toNat

end

end A122573.P17225415239431572846

namespace A122573

/-- `A002530(A267458(n))` -/
def P17225415239431572846.Spec : Prop :=
  ∀ n, P17225415239431572846.a n = A122573 (n + 1)

end A122573

/-! ## A122573.P14349071187264926824

`A005246(A109613(n)-1)`
-/

namespace A122573.P14349071187264926824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (A109613 n - 1).toNat

end

end A122573.P14349071187264926824

namespace A122573

/-- `A005246(A109613(n)-1)` -/
def P14349071187264926824.Spec : Prop :=
  ∀ n, P14349071187264926824.a n = A122573 (n + 1)

end A122573

/-! ## A122573.P4940187422693361572

`A005246(2*A004526(n))`
-/

namespace A122573.P4940187422693361572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * A004526 n).toNat

end

end A122573.P4940187422693361572

namespace A122573

/-- `A005246(2*A004526(n))` -/
def P4940187422693361572.Spec : Prop :=
  ∀ n, P4940187422693361572.a n = A122573 (n + 1)

end A122573

/-! ## A122573.P16538057854380805088

`A005246(n-A000035(n))`
-/

namespace A122573.P16538057854380805088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 ((n : ℤ) - A000035 n).toNat

end

end A122573.P16538057854380805088

namespace A122573

/-- `A005246(n-A000035(n))` -/
def P16538057854380805088.Spec : Prop :=
  ∀ n, P16538057854380805088.a n = A122573 (n + 1)

end A122573

/-! ## A122573.P17288803050266752088

`A005246(1-A000034(n)+n)`
-/

namespace A122573.P17288803050266752088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (1 - A000034 n + (n : ℤ)).toNat

end

end A122573.P17288803050266752088

namespace A122573

/-- `A005246(1-A000034(n)+n)` -/
def P17288803050266752088.Spec : Prop :=
  ∀ n, P17288803050266752088.a n = A122573 (n + 1)

end A122573

/-! ## A122573.P14997392823933849087

`A005246(1-(A000034(n)-n))`
-/

namespace A122573.P14997392823933849087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (1 - (A000034 n - (n : ℤ))).toNat

end

end A122573.P14997392823933849087

namespace A122573

/-- `A005246(1-(A000034(n)-n))` -/
def P14997392823933849087.Spec : Prop :=
  ∀ n, P14997392823933849087.a n = A122573 (n + 1)

end A122573

/-! ## A122573.P15534658236421472275

`(a(n-2)²+2)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A122573.P15534658236421472275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (a (n - 2) ^ 2 + 2) / a (n - 4)

end

end A122573.P15534658236421472275

namespace A122573

/-- `(a(n-2)²+2)/a(n-4)` -/
def P15534658236421472275.Spec : Prop :=
  ∀ n, P15534658236421472275.a n = (A122573 (n + 1) : ℚ)

end A122573

/-!
# A122574: a(1) = a(2) = 1, a(n) = -11*a(n-1) + a(n-2).

The programs for A122574, the canonical program `A122574.P7033109641364078522` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122574 has offset 1).

The definition of A122574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-11*a(n-1)+a(n-2)` (program `A122574.P7033109641364078522`, by `A122574.P7033109641364078522.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122574.P4012676154689475716

`ogf((1+12x)/(1+11x-x^2))`
-/

namespace A122574.P4012676154689475716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12] [1, 11, -1] n

end

end A122574.P4012676154689475716

namespace A122574

/-- `ogf((1+12x)/(1+11x-x^2))` -/
def P4012676154689475716.Spec : Prop :=
  ∀ n, P4012676154689475716.a n = A122574 (n + 1)

end A122574

/-! ## A122574.P7033109641364078522

`-11*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122574

/-- `-11*a(n-1)+a(n-2)` -/
def P7033109641364078522.Spec : Prop :=
  ∀ n, P7033109641364078522.a n = A122574 (n + 1)

theorem P7033109641364078522.correct : P7033109641364078522.Spec := by
  intro n
  simp only [A122574, Nat.add_sub_cancel]

end A122574

/-! ## A122574.P6298892631763397156

`a(n-2)-11*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A122574.P6298892631763397156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - 11 * a (n - 1)

end

end A122574.P6298892631763397156

namespace A122574

/-- `a(n-2)-11*a(n-1)` -/
def P6298892631763397156.Spec : Prop :=
  ∀ n, P6298892631763397156.a n = A122574 (n + 1)

end A122574

/-!
# A122576: Expansion of g.f.: -x*(1 - 2*x + 6*x^2 - 2*x^3 + x^4)/((1-x)^3*(1+x)^4).

The programs for A122576, the canonical program `A122576.P18379579931831600130` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122576 has offset 1).

The definition of A122576 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-1+2x-6x^2+2x^3-x^4)/(1+x-3x^2-3x^3+3x^4+3x^5-x^6-x^7))` (program `A122576.P18379579931831600130`, by `A122576.P18379579931831600130.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122576.P18379579931831600130

`ogf((-1+2x-6x^2+2x^3-x^4)/(1+x-3x^2-3x^3+3x^4+3x^5-x^6-x^7))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122576

/-- `ogf((-1+2x-6x^2+2x^3-x^4)/(1+x-3x^2-3x^3+3x^4+3x^5-x^6-x^7))` -/
def P18379579931831600130.Spec : Prop :=
  ∀ n, P18379579931831600130.a n = A122576 (n + 1)

theorem P18379579931831600130.correct : P18379579931831600130.Spec := by
  intro n
  simp only [A122576, Nat.add_sub_cancel]

end A122576

/-! ## A122576.P2397580323917574206

`(n+1)*(n+2)/8*((2*(n+1)+1)*(-1)^(n+1)-1)`
-/

namespace A122576.P2397580323917574206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℚ) / 8 * ((2 * (n + 1) + 1 : ℤ) * (-1) ^ (n + 1) - 1 : ℚ)

end

end A122576.P2397580323917574206

namespace A122576

/-- `(n+1)*(n+2)/8*((2*(n+1)+1)*(-1)^(n+1)-1)` -/
def P2397580323917574206.Spec : Prop :=
  ∀ n, P2397580323917574206.a n = (A122576 (n + 1) : ℚ)

end A122576

/-! ## A122576.P11828764067293915899

`-∑[A033999(n)*A317614(n+1)]`
-/

namespace A122576.P11828764067293915899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A317614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122576.P11828764067293915899

namespace A122576

/-- `-∑[A033999(n)*A317614(n+1)]` -/
def P11828764067293915899.Spec : Prop :=
  ∀ n, P11828764067293915899.a n = A122576 (n + 1)

end A122576

/-! ## A122576.P6331921165085479257

`Δ[A000292(n)/A168361(n+1)]`
-/

namespace A122576.P6331921165085479257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 n : ℚ) / (A168361 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122576.P6331921165085479257

namespace A122576

/-- `Δ[A000292(n)/A168361(n+1)]` -/
def P6331921165085479257.Spec : Prop :=
  ∀ n, P6331921165085479257.a n = (A122576 (n + 1) : ℚ)

end A122576

/-! ## A122576.P16063413396780462897

`-(A000217(n+1)*A001057(n+1))`
-/

namespace A122576.P16063413396780462897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000217 (n + 1) * A001057 (n + 1))

end

end A122576.P16063413396780462897

namespace A122576

/-- `-(A000217(n+1)*A001057(n+1))` -/
def P16063413396780462897.Spec : Prop :=
  ∀ n, P16063413396780462897.a n = A122576 (n + 1)

end A122576

/-! ## A122576.P11506695733363987814

`A129194(n+1)*A193356(n+2)-A212760(n)`
-/

namespace A122576.P11506695733363987814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (n + 1) * A193356 (n + 2) - A212760 n

end

end A122576.P11506695733363987814

namespace A122576

/-- `A129194(n+1)*A193356(n+2)-A212760(n)` -/
def P11506695733363987814.Spec : Prop :=
  ∀ n, P11506695733363987814.a n = A122576 (n + 1)

end A122576

/-! ## A122576.P11203807587508494286

`A001057(n+1)-A000124(n+1)*A001057(n+1)`
-/

namespace A122576.P11203807587508494286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) - A000124 (n + 1) * A001057 (n + 1)

end

end A122576.P11203807587508494286

namespace A122576

/-- `A001057(n+1)-A000124(n+1)*A001057(n+1)` -/
def P11203807587508494286.Spec : Prop :=
  ∀ n, P11203807587508494286.a n = A122576 (n + 1)

end A122576

/-! ## A122576.P14885252404690587061

`∑[∑[A004525(2*n+1)]*A038608(n+1)]`
-/

namespace A122576.P14885252404690587061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A038608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122576.P14885252404690587061

namespace A122576

/-- `∑[∑[A004525(2*n+1)]*A038608(n+1)]` -/
def P14885252404690587061.Spec : Prop :=
  ∀ n, P14885252404690587061.a n = A122576 (n + 1)

end A122576

/-! ## A122576.P6918189294426771663

`A000035(2*n)-A000217(n+1)*A001057(n+1)`
-/

namespace A122576.P6918189294426771663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A000217 (n + 1) * A001057 (n + 1)

end

end A122576.P6918189294426771663

namespace A122576

/-- `A000035(2*n)-A000217(n+1)*A001057(n+1)` -/
def P6918189294426771663.Spec : Prop :=
  ∀ n, P6918189294426771663.a n = A122576 (n + 1)

end A122576

/-! ## A122576.P7732771909905230661

`A059841(2*n+1)-A000217(n+1)*A001057(n+1)`
-/

namespace A122576.P7732771909905230661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n + 1) - A000217 (n + 1) * A001057 (n + 1)

end

end A122576.P7732771909905230661

namespace A122576

/-- `A059841(2*n+1)-A000217(n+1)*A001057(n+1)` -/
def P7732771909905230661.Spec : Prop :=
  ∀ n, P7732771909905230661.a n = A122576 (n + 1)

end A122576

/-! ## A122576.P12353382247758995401

`A142150(2*n+1)-A000217(n+1)*A001057(n+1)`
-/

namespace A122576.P12353382247758995401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1) - A000217 (n + 1) * A001057 (n + 1)

end

end A122576.P12353382247758995401

namespace A122576

/-- `A142150(2*n+1)-A000217(n+1)*A001057(n+1)` -/
def P12353382247758995401.Spec : Prop :=
  ∀ n, P12353382247758995401.a n = A122576 (n + 1)

end A122576

/-!
# A122577: A nonsense sequence.

The programs for A122577, there is no canonical definition to state claims against.
-/

/-! ## A122577.P5732859135627926524

`A232440(A227245(2*n+3)-2)`
-/

namespace A122577.P5732859135627926524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232440 (A227245 (2 * n + 3) - 2).toNat

end

end A122577.P5732859135627926524

/-! ## A122577.P9009600782507822083

`A246955(n+1)^A095734((2*n)!/(n!*(n+1)!))`
-/

namespace A122577.P9009600782507822083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246955 (n + 1) : ℚ) ^ (A095734 (SequenceMachineLib.roundAway ((Nat.factorial (2 * n) : ℚ) / (Nat.factorial n * Nat.factorial (n + 1) : ℚ))).toNat : ℤ)

end

end A122577.P9009600782507822083

/-!
# A122579: Integer sequence arising from the nested radical R(m) = sqrt(4^0+sqrt(4^1+sqrt(....+sqrt(4^m)...))) (see comment).

The programs for A122579, there is no canonical definition to state claims against.
-/

/-! ## A122579.P12064954129729208363

`A351463(C(n², n))`
-/

namespace A122579.P12064954129729208363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351463 (Nat.choose (n ^ 2) n)

end

end A122579.P12064954129729208363

/-!
# A122581: a(n) = a(n - 1) - 2*a(n - 2) + a(n - 3) - 4*a(n - 4) + 2*a(n - 5).

The programs for A122581, the canonical program `A122581.P17477239549169917554` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122581 has offset 1).

The definition of A122581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-2*a(n-2)+a(n-3)-4*a(n-4)+2*a(n-5)` (program `A122581.P17477239549169917554`, by `A122581.P17477239549169917554.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122581.P15703665543202926331

`a(n-1)-2*a(n-2)+a(n-3)-2*(2*a(n-4)-a(n-5))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A122581.P15703665543202926331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  a (n - 1) - 2 * a (n - 2) + a (n - 3) - 2 * (2 * a (n - 4) - a (n - 5))

end

end A122581.P15703665543202926331

namespace A122581

/-- `a(n-1)-2*a(n-2)+a(n-3)-2*(2*a(n-4)-a(n-5))` -/
def P15703665543202926331.Spec : Prop :=
  ∀ n, P15703665543202926331.a n = A122581 (n + 1)

theorem P15703665543202926331.correct : P15703665543202926331.Spec := by
  intro n
  simp only [A122581, Nat.add_sub_cancel, A122581.P15703665543202926331.a, A122581.P17477239549169917554.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A122581

/-! ## A122581.P17477239549169917554

`a(n-1)-2*a(n-2)+a(n-3)-4*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122581

/-- `a(n-1)-2*a(n-2)+a(n-3)-4*a(n-4)+2*a(n-5)` -/
def P17477239549169917554.Spec : Prop :=
  ∀ n, P17477239549169917554.a n = A122581 (n + 1)

theorem P17477239549169917554.correct : P17477239549169917554.Spec := by
  intro n
  simp only [A122581, Nat.add_sub_cancel]

end A122581

/-! ## A122581.P5025516643604710350

`ogf((1+2x^2+x^3+5x^4)/(1-x+2x^2-x^3+4x^4-2x^5))`
-/

namespace A122581.P5025516643604710350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 1, 5] [1, -1, 2, -1, 4, -2] n

end

end A122581.P5025516643604710350

namespace A122581

/-- `ogf((1+2x^2+x^3+5x^4)/(1-x+2x^2-x^3+4x^4-2x^5))` -/
def P5025516643604710350.Spec : Prop :=
  ∀ n, P5025516643604710350.a n = A122581 (n + 1)

end A122581

/-!
# A122582: a(n) = a(n - 1) - 2*a(n - 2) + a(n - 3) - 2*a(n - 4) + a(n - 5).

The programs for A122582, the canonical program `A122582.P13083042112924012161` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122582 has offset 1).

The definition of A122582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-2*a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` (program `A122582.P13083042112924012161`, by `A122582.P13083042112924012161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122582.P2330310522255109702

`ogf((1+2x^2+x^3+3x^4)/(1-x+2x^2-x^3+2x^4-x^5))`
-/

namespace A122582.P2330310522255109702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 1, 3] [1, -1, 2, -1, 2, -1] n

end

end A122582.P2330310522255109702

namespace A122582

/-- `ogf((1+2x^2+x^3+3x^4)/(1-x+2x^2-x^3+2x^4-x^5))` -/
def P2330310522255109702.Spec : Prop :=
  ∀ n, P2330310522255109702.a n = A122582 (n + 1)

end A122582

/-! ## A122582.P13083042112924012161

`a(n-1)-2*a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122582

/-- `a(n-1)-2*a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P13083042112924012161.Spec : Prop :=
  ∀ n, P13083042112924012161.a n = A122582 (n + 1)

theorem P13083042112924012161.correct : P13083042112924012161.Spec := by
  intro n
  simp only [A122582, Nat.add_sub_cancel]

end A122582

/-!
# A122583: a(n) = a(n - 1) - 2*a(n - 2) + a(n - 3) - 6*a(n - 4) + 3*a(n - 5).

The programs for A122583, the canonical program `A122583.P4030739875707030950` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122583 has offset 1).

The definition of A122583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-2*a(n-2)+a(n-3)-6*a(n-4)+3*a(n-5)` (program `A122583.P4030739875707030950`, by `A122583.P4030739875707030950.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122583.P16434216354753086576

`ogf((1+2x^2+x^3+7x^4)/(1-x+2x^2-x^3+6x^4-3x^5))`
-/

namespace A122583.P16434216354753086576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 1, 7] [1, -1, 2, -1, 6, -3] n

end

end A122583.P16434216354753086576

namespace A122583

/-- `ogf((1+2x^2+x^3+7x^4)/(1-x+2x^2-x^3+6x^4-3x^5))` -/
def P16434216354753086576.Spec : Prop :=
  ∀ n, P16434216354753086576.a n = A122583 (n + 1)

end A122583

/-! ## A122583.P4030739875707030950

`a(n-1)-2*a(n-2)+a(n-3)-6*a(n-4)+3*a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122583

/-- `a(n-1)-2*a(n-2)+a(n-3)-6*a(n-4)+3*a(n-5)` -/
def P4030739875707030950.Spec : Prop :=
  ∀ n, P4030739875707030950.a n = A122583 (n + 1)

theorem P4030739875707030950.correct : P4030739875707030950.Spec := by
  intro n
  simp only [A122583, Nat.add_sub_cancel]

end A122583

/-!
# A122584: Expansion of x*(1+x)*(1-2*x)/(1 - 2*x - x^2 + 2*x^3 - x^4).

The programs for A122584, the canonical program `A122584.P2782563032010696450` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122584 has offset 1).

The definition of A122584 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-2x^2)/(1-2x-x^2+2x^3-x^4))` (program `A122584.P2782563032010696450`, by `A122584.P2782563032010696450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122584.P2782563032010696450

`ogf((1-x-2x^2)/(1-2x-x^2+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122584

/-- `ogf((1-x-2x^2)/(1-2x-x^2+2x^3-x^4))` -/
def P2782563032010696450.Spec : Prop :=
  ∀ n, P2782563032010696450.a n = A122584 (n + 1)

theorem P2782563032010696450.correct : P2782563032010696450.Spec := by
  intro n
  simp only [A122584, Nat.add_sub_cancel]

end A122584

/-! ## A122584.P8545338132681311194

`2*a(n-1)+a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A122584.P8545338132681311194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) + a (n - 4)

end

end A122584.P8545338132681311194

namespace A122584

/-- `2*a(n-1)+a(n-2)-2*a(n-3)+a(n-4)` -/
def P8545338132681311194.Spec : Prop :=
  ∀ n, P8545338132681311194.a n = A122584 (n + 1)

end A122584

/-! ## A122584.P2017593085223496037

`A026819(A036022(C(n, 2)))`
-/

namespace A122584.P2017593085223496037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A036022 (Nat.choose n 2)).toNat

end

end A122584.P2017593085223496037

namespace A122584

/-- `A026819(A036022(C(n, 2)))` -/
def P2017593085223496037.Spec : Prop :=
  ∀ n, P2017593085223496037.a n = A122584 (n + 1)

end A122584

/-! ## A122584.P4118840804324453709

`A357291(A351870(n))+A126683(n)`
-/

namespace A122584.P4118840804324453709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357291 (A351870 n).toNat + A126683 n

end

end A122584.P4118840804324453709

namespace A122584

/-- `A357291(A351870(n))+A126683(n)` -/
def P4118840804324453709.Spec : Prop :=
  ∀ n, P4118840804324453709.a n = A122584 (n + 1)

end A122584

/-! ## A122584.P13435631006974967384

`xor(A126683(n), A351870(A357291(n)))`
-/

namespace A122584.P13435631006974967384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126683 n) (A351870 (A357291 n).toNat)

end

end A122584.P13435631006974967384

namespace A122584

/-- `xor(A126683(n), A351870(A357291(n)))` -/
def P13435631006974967384.Spec : Prop :=
  ∀ n, P13435631006974967384.a n = A122584 (n + 1)

end A122584

/-!
# A122585: Reciprocal of n modulo smallest prime greater than n.

The programs for A122585, there is no canonical definition to state claims against.
-/

/-! ## A122585.P5137584687080800839

`A124223(A349214(n+1))`
-/

namespace A122585.P5137584687080800839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124223 (A349214 (n + 1)).toNat

end

end A122585.P5137584687080800839

/-! ## A122585.P10466241055600423759

`A124223(∑[A089026(n+1)])`
-/

namespace A122585.P10466241055600423759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122585.P10466241055600423759

/-! ## A122585.P14558662263901507784

`A124223(∑[n*A010051(n+1)]+n+1)`
-/

namespace A122585.P14558662263901507784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124223 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1).toNat

end

end A122585.P14558662263901507784

/-!
# A122586: Leading digit of n expressed in base 3.

The programs for A122586, the canonical program `A122586.P875775541667639911` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122586 has offset 1).

The definition of A122586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122586.P875775541667639911

`floor((n+1)/3^floor(log(n+1)/log(3)))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122586

/-- `floor((n+1)/3^floor(log(n+1)/log(3)))` -/
def P875775541667639911.Spec : Prop :=
  ∀ n, P875775541667639911.a n = A122586 (n + 1)

theorem P875775541667639911.correct : P875775541667639911.Spec := by
  intro n
  simp only [A122586, Nat.add_sub_cancel]

end A122586

/-! ## A122586.P625656923102631410

`a(floor((n-2)/3))` with `a(0)=1, a(1)=2`
-/

namespace A122586.P625656923102631410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ⌊((n : ℤ) - 2 : ℚ) / 3⌋.toNat

end

end A122586.P625656923102631410

namespace A122586

/-- `a(floor((n-2)/3))` -/
def P625656923102631410.Spec : Prop :=
  ∀ n, (P625656923102631410.a n : ℤ) = A122586 (n + 1)

end A122586

/-! ## A122586.P6350180901954342557

`A030102(n+1)%3`
-/

namespace A122586.P6350180901954342557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030102 (n + 1)) 3

end

end A122586.P6350180901954342557

namespace A122586

/-- `A030102(n+1)%3` -/
def P6350180901954342557.Spec : Prop :=
  ∀ n, P6350180901954342557.a n = A122586 (n + 1)

end A122586

/-! ## A122586.P509735996461392660

`A048787(n+1)%3`
-/

namespace A122586.P509735996461392660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048787 (n + 1)) 3

end

end A122586.P509735996461392660

namespace A122586

/-- `A048787(n+1)%3` -/
def P509735996461392660.Spec : Prop :=
  ∀ n, P509735996461392660.a n = A122586 (n + 1)

end A122586

/-! ## A122586.P8695972113422431112

`gcd(2, A372621(n+1))`
-/

namespace A122586.P8695972113422431112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A372621 (n + 1))

end

end A122586.P8695972113422431112

namespace A122586

/-- `gcd(2, A372621(n+1))` -/
def P8695972113422431112.Spec : Prop :=
  ∀ n, (P8695972113422431112.a n : ℤ) = A122586 (n + 1)

end A122586

/-! ## A122586.P16796887204116772116

`A305877(n+1)%5`
-/

namespace A122586.P16796887204116772116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305877 (n + 1)) 5

end

end A122586.P16796887204116772116

namespace A122586

/-- `A305877(n+1)%5` -/
def P16796887204116772116.Spec : Prop :=
  ∀ n, P16796887204116772116.a n = A122586 (n + 1)

end A122586

/-! ## A122586.P13532779248731894510

`char[A117968(n+1)-1]+1`
-/

namespace A122586.P13532779248731894510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117968 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A122586.P13532779248731894510

namespace A122586

/-- `char[A117968(n+1)-1]+1` -/
def P13532779248731894510.Spec : Prop :=
  ∀ n, (P13532779248731894510.a n : ℤ) = A122586 (n + 1)

end A122586

/-! ## A122586.P5556990362655480610

`ceil((n+1)/A004488(n+1))`
-/

namespace A122586.P5556990362655480610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A004488 (n + 1) : ℚ)⌉

end

end A122586.P5556990362655480610

namespace A122586

/-- `ceil((n+1)/A004488(n+1))` -/
def P5556990362655480610.Spec : Prop :=
  ∀ n, P5556990362655480610.a n = A122586 (n + 1)

end A122586

/-! ## A122586.P14599942414288823898

`ceil((n+1)/A330740(n+1))`
-/

namespace A122586.P14599942414288823898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A330740 (n + 1) : ℚ)⌉

end

end A122586.P14599942414288823898

namespace A122586

/-- `ceil((n+1)/A330740(n+1))` -/
def P14599942414288823898.Spec : Prop :=
  ∀ n, P14599942414288823898.a n = A122586 (n + 1)

end A122586

/-! ## A122586.P7898164359414142766

`(1-A055947(n+1)+n)%3`
-/

namespace A122586.P7898164359414142766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A055947 (n + 1) + (n : ℤ)) 3

end

end A122586.P7898164359414142766

namespace A122586

/-- `(1-A055947(n+1)+n)%3` -/
def P7898164359414142766.Spec : Prop :=
  ∀ n, P7898164359414142766.a n = A122586 (n + 1)

end A122586

/-! ## A122586.P9100119270497018560

`log2(gcd(4, ∑[A000010(3*(n+1))]))`
-/

namespace A122586.P9100119270497018560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * (n + 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A122586.P9100119270497018560

namespace A122586

/-- `log2(gcd(4, ∑[A000010(3*(n+1))]))` -/
def P9100119270497018560.Spec : Prop :=
  ∀ n, P9100119270497018560.a n = (A122586 (n + 1) : ℝ)

end A122586

/-! ## A122586.P3300771352965807775

`A079882(A081608(n))`
-/

namespace A122586.P3300771352965807775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 (A081608 n).toNat

end

end A122586.P3300771352965807775

namespace A122586

/-- `A079882(A081608(n))` -/
def P3300771352965807775.Spec : Prop :=
  ∀ n, P3300771352965807775.a n = A122586 (n + 1)

end A122586

/-! ## A122586.P18026393237812667109

`Δ[A073849(n)]`
-/

namespace A122586.P18026393237812667109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122586.P18026393237812667109

namespace A122586

/-- `Δ[A073849(n)]` -/
def P18026393237812667109.Spec : Prop :=
  ∀ n, P18026393237812667109.a n = A122586 (n + 1)

end A122586

/-! ## A122586.P9787999580162309177

`Δ[A027874(n+1)]%3`
-/

namespace A122586.P9787999580162309177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A122586.P9787999580162309177

namespace A122586

/-- `Δ[A027874(n+1)]%3` -/
def P9787999580162309177.Spec : Prop :=
  ∀ n, P9787999580162309177.a n = A122586 (n + 1)

end A122586

/-! ## A122586.P17501570610216773643

`A000005(Δ[A080727(n)])`
-/

namespace A122586.P17501570610216773643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A122586.P17501570610216773643

namespace A122586

/-- `A000005(Δ[A080727(n)])` -/
def P17501570610216773643.Spec : Prop :=
  ∀ n, P17501570610216773643.a n = A122586 (n + 1)

end A122586

/-! ## A122586.P3905412702820118036

`A000010(Δ[A080727(n)])`
-/

namespace A122586.P3905412702820118036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A122586.P3905412702820118036

namespace A122586

/-- `A000010(Δ[A080727(n)])` -/
def P3905412702820118036.Spec : Prop :=
  ∀ n, P3905412702820118036.a n = A122586 (n + 1)

end A122586

/-! ## A122586.P13949557586005335395

`A000045(Δ[A080727(n)])`
-/

namespace A122586.P13949557586005335395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A122586.P13949557586005335395

namespace A122586

/-- `A000045(Δ[A080727(n)])` -/
def P13949557586005335395.Spec : Prop :=
  ∀ n, P13949557586005335395.a n = A122586 (n + 1)

end A122586

/-! ## A122586.P13610160698774520854

`A000005(Δ[A003605(n+1)])`
-/

namespace A122586.P13610160698774520854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A122586.P13610160698774520854

namespace A122586

/-- `A000005(Δ[A003605(n+1)])` -/
def P13610160698774520854.Spec : Prop :=
  ∀ n, P13610160698774520854.a n = A122586 (n + 1)

end A122586

/-! ## A122586.P2390453945909565901

`A000010(Δ[A003605(n+1)])`
-/

namespace A122586.P2390453945909565901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A122586.P2390453945909565901

namespace A122586

/-- `A000010(Δ[A003605(n+1)])` -/
def P2390453945909565901.Spec : Prop :=
  ∀ n, P2390453945909565901.a n = A122586 (n + 1)

end A122586

/-! ## A122586.P5363737900388120217

`A000045(Δ[A003605(n+1)])`
-/

namespace A122586.P5363737900388120217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A122586.P5363737900388120217

namespace A122586

/-- `A000045(Δ[A003605(n+1)])` -/
def P5363737900388120217.Spec : Prop :=
  ∀ n, P5363737900388120217.a n = A122586 (n + 1)

end A122586

/-!
# A122587: Leading digit of n in base 4.

The programs for A122587, the canonical program `A122587.P5218767554399708695` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122587 has offset 1).

The definition of A122587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122587.P5218767554399708695

`a(floor((n-3)/4))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122587

/-- `a(floor((n-3)/4))` -/
def P5218767554399708695.Spec : Prop :=
  ∀ n, (P5218767554399708695.a n : ℤ) = A122587 (n + 1)

theorem P5218767554399708695.correct : P5218767554399708695.Spec := by
  intro n
  simp only [A122587, Nat.add_sub_cancel]

end A122587

/-! ## A122587.P18444256202410992353

`abs(a(ceil((n/2-3)/2)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A122587.P18444256202410992353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a ⌈((n : ℚ) / 2 - 3) / 2⌉.toNat

end

end A122587.P18444256202410992353

namespace A122587

/-- `abs(a(ceil((n/2-3)/2)))` -/
def P18444256202410992353.Spec : Prop :=
  ∀ n, (P18444256202410992353.a n : ℤ) = A122587 (n + 1)

end A122587

/-! ## A122587.P12647595725742388088

`∏{p}[3-a(ceil(n/2)-1), #]` with `a(0)=0, a(1)=2`
-/

namespace A122587.P12647595725742388088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  3 - f1 (⌈(n : ℚ) / 2⌉ - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A122587.P12647595725742388088

namespace A122587

/-- `∏{p}[3-a(ceil(n/2)-1), #]` -/
def P12647595725742388088.Spec : Prop :=
  ∀ n, (P12647595725742388088.a n : ℤ) = A122587 (n + 1)

end A122587

/-! ## A122587.P18201636683637313394

`A030103(n+1)%4`
-/

namespace A122587.P18201636683637313394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030103 (n + 1)) 4

end

end A122587.P18201636683637313394

namespace A122587

/-- `A030103(n+1)%4` -/
def P18201636683637313394.Spec : Prop :=
  ∀ n, P18201636683637313394.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P4546267875064560200

`A048703(n+1)%4`
-/

namespace A122587.P4546267875064560200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048703 (n + 1)) 4

end

end A122587.P4546267875064560200

namespace A122587

/-- `A048703(n+1)%4` -/
def P4546267875064560200.Spec : Prop :=
  ∀ n, P4546267875064560200.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P10611685126302310721

`A048704(n+1)%4`
-/

namespace A122587.P10611685126302310721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048704 (n + 1)) 4

end

end A122587.P10611685126302310721

namespace A122587

/-- `A048704(n+1)%4` -/
def P10611685126302310721.Spec : Prop :=
  ∀ n, P10611685126302310721.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P3858207772991758727

`A255689(n+1)%4`
-/

namespace A122587.P3858207772991758727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255689 (n + 1)) 4

end

end A122587.P3858207772991758727

namespace A122587

/-- `A255689(n+1)%4` -/
def P3858207772991758727.Spec : Prop :=
  ∀ n, P3858207772991758727.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P11222089267779948269

`A010873(A030103(n+1))`
-/

namespace A122587.P11222089267779948269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A030103 (n + 1)).toNat

end

end A122587.P11222089267779948269

namespace A122587

/-- `A010873(A030103(n+1))` -/
def P11222089267779948269.Spec : Prop :=
  ∀ n, P11222089267779948269.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P814740557877268311

`A010873(A255689(n+1))`
-/

namespace A122587.P814740557877268311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A255689 (n + 1)).toNat

end

end A122587.P814740557877268311

namespace A122587

/-- `A010873(A255689(n+1))` -/
def P814740557877268311.Spec : Prop :=
  ∀ n, P814740557877268311.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P13359762507955051616

`Δ[A073850(n)]`
-/

namespace A122587.P13359762507955051616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122587.P13359762507955051616

namespace A122587

/-- `Δ[A073850(n)]` -/
def P13359762507955051616.Spec : Prop :=
  ∀ n, P13359762507955051616.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P12062176875210765925

`A073850(n+1)-A073850(n)`
-/

namespace A122587.P12062176875210765925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073850 (n + 1) - A073850 n

end

end A122587.P12062176875210765925

namespace A122587

/-- `A073850(n+1)-A073850(n)` -/
def P12062176875210765925.Spec : Prop :=
  ∀ n, P12062176875210765925.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P13159026246206487796

`A065882(A264994(n+1))`
-/

namespace A122587.P13159026246206487796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (A264994 (n + 1)).toNat

end

end A122587.P13159026246206487796

namespace A122587

/-- `A065882(A264994(n+1))` -/
def P13159026246206487796.Spec : Prop :=
  ∀ n, P13159026246206487796.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P1235878163699212533

`A065882(A361946(A361947(n+1)))`
-/

namespace A122587.P1235878163699212533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (A361946 (A361947 (n + 1)).toNat).toNat

end

end A122587.P1235878163699212533

namespace A122587

/-- `A065882(A361946(A361947(n+1)))` -/
def P1235878163699212533.Spec : Prop :=
  ∀ n, P1235878163699212533.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P8054045339991124620

`A339255(A037459(n+1))`
-/

namespace A122587.P8054045339991124620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339255 (A037459 (n + 1)).toNat

end

end A122587.P8054045339991124620

namespace A122587

/-- `A339255(A037459(n+1))` -/
def P8054045339991124620.Spec : Prop :=
  ∀ n, P8054045339991124620.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P6081831533342664067

`A339255(A020654(n+2))`
-/

namespace A122587.P6081831533342664067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339255 (A020654 (n + 2)).toNat

end

end A122587.P6081831533342664067

namespace A122587

/-- `A339255(A020654(n+2))` -/
def P6081831533342664067.Spec : Prop :=
  ∀ n, P6081831533342664067.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P11595685705365424473

`and(3, A030103(4*(n+1)))`
-/

namespace A122587.P11595685705365424473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A030103 (4 * (n + 1)))

end

end A122587.P11595685705365424473

namespace A122587

/-- `and(3, A030103(4*(n+1)))` -/
def P11595685705365424473.Spec : Prop :=
  ∀ n, P11595685705365424473.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P8489128478540127082

`and(3, A055948(4*(n+1)))`
-/

namespace A122587.P8489128478540127082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A055948 (4 * (n + 1)))

end

end A122587.P8489128478540127082

namespace A122587

/-- `and(3, A055948(4*(n+1)))` -/
def P8489128478540127082.Spec : Prop :=
  ∀ n, P8489128478540127082.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P5272237825081113879

`Δ[a(n-1)+A055948(4*n)%4]` with `a(0)=1`
-/

namespace A122587.P5272237825081113879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + Int.tmod (A055948 (4 * n)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122587.P5272237825081113879

namespace A122587

/-- `Δ[a(n-1)+A055948(4*n)%4]` -/
def P5272237825081113879.Spec : Prop :=
  ∀ n, P5272237825081113879.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P17053315041353257893

`A030373(A030378(n+1))`
-/

namespace A122587.P17053315041353257893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (A030378 (n + 1)).toNat

end

end A122587.P17053315041353257893

namespace A122587

/-- `A030373(A030378(n+1))` -/
def P17053315041353257893.Spec : Prop :=
  ∀ n, P17053315041353257893.a n = A122587 (n + 1)

end A122587

/-! ## A122587.P1368413616761239527

`A030373(∑[A110591(n)])`
-/

namespace A122587.P1368413616761239527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122587.P1368413616761239527

namespace A122587

/-- `A030373(∑[A110591(n)])` -/
def P1368413616761239527.Spec : Prop :=
  ∀ n, P1368413616761239527.a n = A122587 (n + 1)

end A122587

/-!
# A122588: Expansion of x/(1 - 9*x + 28*x^2 - 35*x^3 + 15*x^4 - x^5).

The programs for A122588, the canonical program `A122588.P14343425271427761441` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122588 has offset 1).

The definition of A122588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-9x+28x^2-35x^3+15x^4-x^5))` (program `A122588.P14343425271427761441`, by `A122588.P14343425271427761441.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122588.P14343425271427761441

`ogf(1/(1-9x+28x^2-35x^3+15x^4-x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122588

/-- `ogf(1/(1-9x+28x^2-35x^3+15x^4-x^5))` -/
def P14343425271427761441.Spec : Prop :=
  ∀ n, P14343425271427761441.a n = A122588 (n + 1)

theorem P14343425271427761441.correct : P14343425271427761441.Spec := by
  intro n
  simp only [A122588, Nat.add_sub_cancel]

end A122588

/-! ## A122588.P13030422920720481771

`∑[A370568(n)]`
-/

namespace A122588.P13030422920720481771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122588.P13030422920720481771

namespace A122588

/-- `∑[A370568(n)]` -/
def P13030422920720481771.Spec : Prop :=
  ∀ n, P13030422920720481771.a n = A122588 (n + 1)

end A122588

/-! ## A122588.P10969739481346850322

`2*A370568(n)-A370391(n)`
-/

namespace A122588.P10969739481346850322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A370568 n - A370391 n

end

end A122588.P10969739481346850322

namespace A122588

/-- `2*A370568(n)-A370391(n)` -/
def P10969739481346850322.Spec : Prop :=
  ∀ n, P10969739481346850322.a n = A122588 (n + 1)

end A122588

/-! ## A122588.P490720471815325154

`A370568(n+1)-A370391(n+1)`
-/

namespace A122588.P490720471815325154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370568 (n + 1) - A370391 (n + 1)

end

end A122588.P490720471815325154

namespace A122588

/-- `A370568(n+1)-A370391(n+1)` -/
def P490720471815325154.Spec : Prop :=
  ∀ n, P490720471815325154.a n = A122588 (n + 1)

end A122588

/-! ## A122588.P9741047809003657301

`gcd(A000038(n), A005025(A028310(n)))`
-/

namespace A122588.P9741047809003657301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A005025 (A028310 n).toNat)

end

end A122588.P9741047809003657301

namespace A122588

/-- `gcd(A000038(n), A005025(A028310(n)))` -/
def P9741047809003657301.Spec : Prop :=
  ∀ n, (P9741047809003657301.a n : ℤ) = A122588 (n + 1)

end A122588

/-! ## A122588.P13845473881890262356

`A005025(A028310(n))^A057428(n)²`
-/

namespace A122588.P13845473881890262356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005025 (A028310 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A122588.P13845473881890262356

namespace A122588

/-- `A005025(A028310(n))^A057428(n)²` -/
def P13845473881890262356.Spec : Prop :=
  ∀ n, P13845473881890262356.a n = (A122588 (n + 1) : ℚ)

end A122588

/-! ## A122588.P11155957346022236847

`A370568(n+1)-(A370568(n)+A221863(n+1))`
-/

namespace A122588.P11155957346022236847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370568 (n + 1) - (A370568 n + A221863 (n + 1))

end

end A122588.P11155957346022236847

namespace A122588

/-- `A370568(n+1)-(A370568(n)+A221863(n+1))` -/
def P11155957346022236847.Spec : Prop :=
  ∀ n, P11155957346022236847.a n = A122588 (n + 1)

end A122588

/-! ## A122588.P18116351468187073142

`ceil(A005025(A028310(n))^(-1)^A000010(n+2))`
-/

namespace A122588.P18116351468187073142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005025 (A028310 n).toNat : ℝ) ^ ((-1 : ℚ) ^ (A000010 (n + 2) : ℤ) : ℝ)⌉

end

end A122588.P18116351468187073142

namespace A122588

/-- `ceil(A005025(A028310(n))^(-1)^A000010(n+2))` -/
def P18116351468187073142.Spec : Prop :=
  ∀ n, P18116351468187073142.a n = A122588 (n + 1)

end A122588

/-! ## A122588.P18239189533526235443

`A005025(A028310(n))^A001221(A001316(n))`
-/

namespace A122588.P18239189533526235443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005025 (A028310 n).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A122588.P18239189533526235443

namespace A122588

/-- `A005025(A028310(n))^A001221(A001316(n))` -/
def P18239189533526235443.Spec : Prop :=
  ∀ n, P18239189533526235443.a n = (A122588 (n + 1) : ℚ)

end A122588

/-! ## A122588.P7087732950852556482

`A005025(n+1)-A370568(n+1)`
-/

namespace A122588.P7087732950852556482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005025 (n + 1) - A370568 (n + 1)

end

end A122588.P7087732950852556482

namespace A122588

/-- `A005025(n+1)-A370568(n+1)` -/
def P7087732950852556482.Spec : Prop :=
  ∀ n, P7087732950852556482.a n = A122588 (n + 1)

end A122588

/-! ## A122588.P13373133229406144709

`A005025(A028310(n))%A034007(n+2)²`
-/

namespace A122588.P13373133229406144709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005025 (A028310 n).toNat) (A034007 (n + 2) ^ 2)

end

end A122588.P13373133229406144709

namespace A122588

/-- `A005025(A028310(n))%A034007(n+2)²` -/
def P13373133229406144709.Spec : Prop :=
  ∀ n, P13373133229406144709.a n = A122588 (n + 1)

end A122588

/-!
# A122589: Expansion of 1/(1 - 11*x + 45*x^2 - 84*x^3 + 70*x^4 - 21*x^5 + x^6).

The programs for A122589, the canonical program `A122589.P10316668825209089274` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122589 has offset 0).

The definition of A122589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-11x+45x^2-84x^3+70x^4-21x^5+x^6))` (program `A122589.P10316668825209089274`, by `A122589.P10316668825209089274.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122589.P10316668825209089274

`ogf(1/(1-11x+45x^2-84x^3+70x^4-21x^5+x^6))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122589

/-- `ogf(1/(1-11x+45x^2-84x^3+70x^4-21x^5+x^6))` -/
def P10316668825209089274.Spec : Prop :=
  ∀ n, P10316668825209089274.a n = A122589 n

theorem P10316668825209089274.correct : P10316668825209089274.Spec := by
  intro n
  simp only [A122589]

end A122589

/-! ## A122589.P9227689931363656936

`A259475(eq[11, A025581(n)])`
-/

namespace A122589.P9227689931363656936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A122589.P9227689931363656936

namespace A122589

/-- `A259475(eq[11, A025581(n)])` -/
def P9227689931363656936.Spec : Prop :=
  ∀ n, P9227689931363656936.a n = A122589 n

end A122589

/-! ## A122589.P395771839100913955

`A259475(eq[12, A004736(n+1)])`
-/

namespace A122589.P395771839100913955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A122589.P395771839100913955

namespace A122589

/-- `A259475(eq[12, A004736(n+1)])` -/
def P395771839100913955.Spec : Prop :=
  ∀ n, P395771839100913955.a n = A122589 n

end A122589

/-! ## A122589.P10749837921315176180

`A259475(eq[28, A272172(n+1)])`
-/

namespace A122589.P10749837921315176180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A122589.P10749837921315176180

namespace A122589

/-- `A259475(eq[28, A272172(n+1)])` -/
def P10749837921315176180.Spec : Prop :=
  ∀ n, P10749837921315176180.a n = A122589 n

end A122589

/-! ## A122589.P6774087629775955793

`A259475(eq[11, A193592(n+1)])`
-/

namespace A122589.P6774087629775955793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A122589.P6774087629775955793

namespace A122589

/-- `A259475(eq[11, A193592(n+1)])` -/
def P6774087629775955793.Spec : Prop :=
  ∀ n, P6774087629775955793.a n = A122589 n

end A122589

/-!
# A122590: a(n) = 2*a(n-1) - a(n-2) - (a(n-1)^2 + a(n-2)^2).

The programs for A122590, the canonical program `A122590.P4513103412937204846` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122590 has offset 1).

The definition of A122590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-2)-(a(n-1)²+a(n-2)²)` (program `A122590.P4513103412937204846`, by `A122590.P4513103412937204846.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122590.P4513103412937204846

`2*a(n-1)-a(n-2)-(a(n-1)²+a(n-2)²)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122590

/-- `2*a(n-1)-a(n-2)-(a(n-1)²+a(n-2)²)` -/
def P4513103412937204846.Spec : Prop :=
  ∀ n, P4513103412937204846.a n = A122590 (n + 1)

theorem P4513103412937204846.correct : P4513103412937204846.Spec := by
  intro n
  simp only [A122590, Nat.add_sub_cancel]

end A122590

/-! ## A122590.P11910384772061130974

`A309500(n+1)-A112070(A000108(n))`
-/

namespace A122590.P11910384772061130974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309500 (n + 1) - A112070 (A000108 n).toNat

end

end A122590.P11910384772061130974

namespace A122590

/-- `A309500(n+1)-A112070(A000108(n))` -/
def P11910384772061130974.Spec : Prop :=
  ∀ n, P11910384772061130974.a n = A122590 (n + 1)

end A122590

/-!
# A122591: a(n) = 2*a(n-1) - a(n-2) + (a(n-1)^2 + a(n-2)^2).

The programs for A122591, the canonical program `A122591.P4806917108143193146` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122591 has offset 1).

The definition of A122591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-2)+a(n-1)²+a(n-2)²` (program `A122591.P4806917108143193146`, by `A122591.P4806917108143193146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122591.P4806917108143193146

`2*a(n-1)-a(n-2)+a(n-1)²+a(n-2)²` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122591

/-- `2*a(n-1)-a(n-2)+a(n-1)²+a(n-2)²` -/
def P4806917108143193146.Spec : Prop :=
  ∀ n, P4806917108143193146.a n = A122591 (n + 1)

theorem P4806917108143193146.correct : P4806917108143193146.Spec := by
  intro n
  simp only [A122591, Nat.add_sub_cancel]

end A122591

/-!
# A122592: a(n) = - a(n-1) + a(n-3) + (a(n-1) - a(n-2))^2 + (a(n-2) - a(n-3))^2.

The programs for A122592, the canonical program `A122592.P7366256679525880422` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122592 has offset 1).

The definition of A122592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)+a(n-3)+(a(n-1)-a(n-2))²+(a(n-2)-a(n-3))²` (program `A122592.P7366256679525880422`, by `A122592.P7366256679525880422.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122592.P7366256679525880422

`-a(n-1)+a(n-3)+(a(n-1)-a(n-2))²+(a(n-2)-a(n-3))²` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122592

/-- `-a(n-1)+a(n-3)+(a(n-1)-a(n-2))²+(a(n-2)-a(n-3))²` -/
def P7366256679525880422.Spec : Prop :=
  ∀ n, P7366256679525880422.a n = A122592 (n + 1)

theorem P7366256679525880422.correct : P7366256679525880422.Spec := by
  intro n
  simp only [A122592, Nat.add_sub_cancel]

end A122592

/-! ## A122592.P6514425580385292700

`a(n-1)-2*a(n-1)+a(n-3)+(a(n-2)-a(n-1))²+(a(n-2)-a(n-3))²` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A122592.P6514425580385292700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - 2 * a (n - 1) + (a (n - 3) + (a (n - 2) - a (n - 1)) ^ 2) + (a (n - 2) - a (n - 3)) ^ 2

end

end A122592.P6514425580385292700

namespace A122592

/-- `a(n-1)-2*a(n-1)+a(n-3)+(a(n-2)-a(n-1))²+(a(n-2)-a(n-3))²` -/
def P6514425580385292700.Spec : Prop :=
  ∀ n, P6514425580385292700.a n = A122592 (n + 1)

theorem P6514425580385292700.correct : P6514425580385292700.Spec := by
  intro n
  simp only [A122592, Nat.add_sub_cancel, A122592.P6514425580385292700.a, A122592.P7366256679525880422.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A122592

/-!
# A122593: a(n) = -a(n-1) + a(n-3) - (a(n-1) - a(n-2))^2 + (a(n-2) - a(n-3))^2.

The programs for A122593, the canonical program `A122593.P1631855159718832021` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122593 has offset 1).

The definition of A122593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)+a(n-3)-(a(n-1)-a(n-2))²+(a(n-2)-a(n-3))²` (program `A122593.P1631855159718832021`, by `A122593.P1631855159718832021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122593.P1631855159718832021

`-a(n-1)+a(n-3)-(a(n-1)-a(n-2))²+(a(n-2)-a(n-3))²` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122593

/-- `-a(n-1)+a(n-3)-(a(n-1)-a(n-2))²+(a(n-2)-a(n-3))²` -/
def P1631855159718832021.Spec : Prop :=
  ∀ n, P1631855159718832021.a n = A122593 (n + 1)

theorem P1631855159718832021.correct : P1631855159718832021.Spec := by
  intro n
  simp only [A122593, Nat.add_sub_cancel]

end A122593

/-!
# A122594: a(0) = 2; a(1) = 5; a(n) = prime(a(n-1)) + prime(a(n-2)) if n > 1.

The programs for A122594, the canonical program `A122594.P1539754878105144670` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122594 has offset 0).

The definition of A122594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1))+A000040(a(n-2))` (program `A122594.P1539754878105144670`, by `A122594.P1539754878105144670.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122594.P1539754878105144670

`A000040(a(n-1))+A000040(a(n-2))` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A122594

/-- `A000040(a(n-1))+A000040(a(n-2))` -/
def P1539754878105144670.Spec : Prop :=
  ∀ n, P1539754878105144670.a n = A122594 n

theorem P1539754878105144670.correct : P1539754878105144670.Spec := by
  intro n
  simp only [A122594]

end A122594

/-! ## A122594.P8546390212681229233

`A171028(a(n-1))+A171028(a(n-2))` with `a(0)=2, a(1)=5`
-/

namespace A122594.P8546390212681229233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A171028 (a (n - 1)).toNat + A171028 (a (n - 2)).toNat

end

end A122594.P8546390212681229233

namespace A122594

/-- `A171028(a(n-1))+A171028(a(n-2))` -/
def P8546390212681229233.Spec : Prop :=
  ∀ n, P8546390212681229233.a n = A122594 n

end A122594

/-! ## A122594.P3846425982231176730

`A171041(a(n-1))+A171041(a(n-2))` with `a(0)=2, a(1)=5`
-/

namespace A122594.P3846425982231176730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A171041 (a (n - 1)).toNat + A171041 (a (n - 2)).toNat

end

end A122594.P3846425982231176730

namespace A122594

/-- `A171041(a(n-1))+A171041(a(n-2))` -/
def P3846425982231176730.Spec : Prop :=
  ∀ n, P3846425982231176730.a n = A122594 n

end A122594

/-!
# A122595: Expansion of x/(1 - 3*x + x^2 + x^3 - x^4).

The programs for A122595, the canonical program `A122595.P11904097986848480741` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122595 has offset 1).

The definition of A122595 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+x^2+x^3-x^4))` (program `A122595.P11904097986848480741`, by `A122595.P11904097986848480741.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122595.P11904097986848480741

`ogf(1/(1-3x+x^2+x^3-x^4))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122595

/-- `ogf(1/(1-3x+x^2+x^3-x^4))` -/
def P11904097986848480741.Spec : Prop :=
  ∀ n, P11904097986848480741.a n = A122595 (n + 1)

theorem P11904097986848480741.correct : P11904097986848480741.Spec := by
  intro n
  simp only [A122595, Nat.add_sub_cancel]

end A122595

/-! ## A122595.P3294834939267847422

`3*a(n-1)-a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=20`
-/

namespace A122595.P3294834939267847422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8, 20] fun n a =>
  3 * a (n - 1) - a (n - 2) - a (n - 3) + a (n - 4)

end

end A122595.P3294834939267847422

namespace A122595

/-- `3*a(n-1)-a(n-2)-a(n-3)+a(n-4)` -/
def P3294834939267847422.Spec : Prop :=
  ∀ n, P3294834939267847422.a n = A122595 (n + 1)

end A122595

/-! ## A122595.P9471327630331373666

`A192543(5*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A122595.P9471327630331373666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A192543 (5 * a (n - 1)).toNat + a (n - 1)

end

end A122595.P9471327630331373666

namespace A122595

/-- `A192543(5*a(n-1))+a(n-1)` -/
def P9471327630331373666.Spec : Prop :=
  ∀ n, P9471327630331373666.a n = A122595 (n + 1)

end A122595

/-! ## A122595.P17698733102322359854

`A008615(A265075(2*(n+1))+A206432(n))`
-/

namespace A122595.P17698733102322359854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A265075 (2 * (n + 1)) + A206432 n).toNat

end

end A122595.P17698733102322359854

namespace A122595

/-- `A008615(A265075(2*(n+1))+A206432(n))` -/
def P17698733102322359854.Spec : Prop :=
  ∀ n, P17698733102322359854.a n = A122595 (n + 1)

end A122595

/-!
# A122596: Antidiagonal sums of the row-reversed triangle A048998 of Bernoulli polynomial coefficients.

The programs for A122596, there is no canonical definition to state claims against.
-/

/-! ## A122596.P4027133184988075884

`A098841(A019565(n))+A058798(n+1)`
-/

namespace A122596.P4027133184988075884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098841 (A019565 n).toNat + A058798 (n + 1)

end

end A122596.P4027133184988075884

/-! ## A122596.P2694938259910385438

`A127708(A193093(n))+A058798(n+1)`
-/

namespace A122596.P2694938259910385438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127708 (A193093 n).toNat + A058798 (n + 1)

end

end A122596.P2694938259910385438

/-! ## A122596.P5744227045587050911

`A058798(n+1)+A046660(A358961(n))`
-/

namespace A122596.P5744227045587050911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058798 (n + 1) + A046660 (A358961 n).toNat

end

end A122596.P5744227045587050911

/-!
# A122597: a(0) = 1, a(1) = 2, s = 1; for n >= 2, if a(n-1) is even and s = 0 then set a(n) = a(n-1)/2 and s = 1; otherwise set a(n) = a(n-1) + a(n-2) and s = 0.

The programs for A122597, the canonical program `A122597.P11691461374029735247` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122597 has offset 0).

The definition of A122597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122597.P11691461374029735247

`ogf((1+2x+3x^2+5x^3+8x^4+x^5+6x^6-3x^7+3x^8-15x^9+15x^10)/(1-3x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122597

/-- `ogf((1+2x+3x^2+5x^3+8x^4+x^5+6x^6-3x^7+3x^8-15x^9+15x^10)/(1-3x^5))` -/
def P11691461374029735247.Spec : Prop :=
  ∀ n, P11691461374029735247.a n = A122597 n

theorem P11691461374029735247.correct : P11691461374029735247.Spec := by
  intro n
  simp only [A122597]

end A122597

/-! ## A122597.P10704819169438664947

`A129835(A323890(n+1))`
-/

namespace A122597.P10704819169438664947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129835 (A323890 (n + 1)).toNat

end

end A122597.P10704819169438664947

namespace A122597

/-- `A129835(A323890(n+1))` -/
def P10704819169438664947.Spec : Prop :=
  ∀ n, P10704819169438664947.a n = A122597 n

end A122597

/-! ## A122597.P6740054687331294930

`A323890(n+1)%A323852(n+4)`
-/

namespace A122597.P6740054687331294930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323890 (n + 1)) (A323852 (n + 4))

end

end A122597.P6740054687331294930

namespace A122597

/-- `A323890(n+1)%A323852(n+4)` -/
def P6740054687331294930.Spec : Prop :=
  ∀ n, P6740054687331294930.a n = A122597 n

end A122597

/-! ## A122597.P579189939580756529

`A323890(n+1)+A132792(A000217(n))`
-/

namespace A122597.P579189939580756529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323890 (n + 1) + A132792 (A000217 n).toNat

end

end A122597.P579189939580756529

namespace A122597

/-- `A323890(n+1)+A132792(A000217(n))` -/
def P579189939580756529.Spec : Prop :=
  ∀ n, P579189939580756529.a n = A122597 n

end A122597

/-! ## A122597.P4557985143757800053

`A323890(n+1)+A213186(A041021(n))`
-/

namespace A122597.P4557985143757800053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323890 (n + 1) + A213186 (A041021 n).toNat

end

end A122597.P4557985143757800053

namespace A122597

/-- `A323890(n+1)+A213186(A041021(n))` -/
def P4557985143757800053.Spec : Prop :=
  ∀ n, P4557985143757800053.a n = A122597 n

end A122597

/-!
# A122599: Maximal number of iterations required for analog of 3x+1 problem applied to polynomials of degree n over GF(2) to reach 1.

The programs for A122599, there is no canonical definition to state claims against.
-/

/-! ## A122599.P11869955426591530774

`∑[p?[dr(A007089(2^n+7))]]`
-/

namespace A122599.P11869955426591530774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007089 (2 ^ n + 7))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122599.P11869955426591530774

/-! ## A122599.P16530815512446124278

`∑[A141710(A008798(n)!)]`
-/

namespace A122599.P16530815512446124278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141710 (Nat.factorial (A008798 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122599.P16530815512446124278

/-! ## A122599.P5532112935356547963

`∑[A335516(A275735(n+1)²)]`
-/

namespace A122599.P5532112935356547963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335516 (A275735 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122599.P5532112935356547963

/-! ## A122599.P17207262076857052977

`∑[dr(A157869(A157922(n+1)))]`
-/

namespace A122599.P17207262076857052977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A157869 (A157922 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122599.P17207262076857052977

/-! ## A122599.P7467717877653009775

`∑[p?[A062399(A332801(n+1))]]`
-/

namespace A122599.P7467717877653009775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062399 (A332801 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122599.P7467717877653009775

