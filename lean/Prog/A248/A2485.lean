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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
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
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.Opaque.C010
import Seq.Opaque.C011
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A248500: Numbers m that are not coprime to A059995(m): floor(m/10).

The programs for A248500, the canonical program `A248500.P8270427556894314220` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248500 has offset 1).

The definition of A248500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248500.P8270427556894314220

`lt[1, gcd(n, floor(n/10))]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248500

/-- `lt[1, gcd(n, floor(n/10))]` -/
def P8270427556894314220.Spec : Prop :=
  ∀ n, (P8270427556894314220.a n : ℤ) = A248500 (n + 1)

theorem P8270427556894314220.correct : P8270427556894314220.Spec := by
  intro n
  simp only [A248500, Nat.add_sub_cancel]

end A248500

/-! ## A248500.P16895700451208900898

`comp[A248499(n+1)-1]+1`
-/

namespace A248500.P16895700451208900898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248499 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248500.P16895700451208900898

namespace A248500

/-- `comp[A248499(n+1)-1]+1` -/
def P16895700451208900898.Spec : Prop :=
  ∀ n, (P16895700451208900898.a n : ℤ) = A248500 (n + 1)

end A248500

/-! ## A248500.P2974704739891223191

`lt[1, gcd(n, A059995(n))²]`
-/

namespace A248500.P2974704739891223191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A059995 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248500.P2974704739891223191

namespace A248500

/-- `lt[1, gcd(n, A059995(n))²]` -/
def P2974704739891223191.Spec : Prop :=
  ∀ n, (P2974704739891223191.a n : ℤ) = A248500 (n + 1)

end A248500

/-! ## A248500.P3872249429900156404

`lt[1, gcd(n², A081600(n))²-2]`
-/

namespace A248500.P3872249429900156404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n ^ 2 : ℤ) (A081600 n) ^ 2 : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A248500.P3872249429900156404

namespace A248500

/-- `lt[1, gcd(n², A081600(n))²-2]` -/
def P3872249429900156404.Spec : Prop :=
  ∀ n, (P3872249429900156404.a n : ℤ) = A248500 (n + 1)

end A248500

/-! ## A248500.P913732985940127125

`lt[1, gcd(n+1, A059995(n+1))]+1`
-/

namespace A248500.P913732985940127125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A059995 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A248500.P913732985940127125

namespace A248500

/-- `lt[1, gcd(n+1, A059995(n+1))]+1` -/
def P913732985940127125.Spec : Prop :=
  ∀ n, (P913732985940127125.a n : ℤ) = A248500 (n + 1)

end A248500

/-!
# A248501: Numbers m that are coprime to floor(m/16).

The programs for A248501, the canonical program `A248501.P6617891412935947150` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248501 has offset 1).

The definition of A248501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5839 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248501.P6617891412935947150

`eq[1, gcd(n, A002265(A002265(n)))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248501

/-- `eq[1, gcd(n, A002265(A002265(n)))]` -/
def P6617891412935947150.Spec : Prop :=
  ∀ n, (P6617891412935947150.a n : ℤ) = A248501 (n + 1)

theorem P6617891412935947150.correct : P6617891412935947150.Spec := by
  intro n
  simp only [A248501, Nat.add_sub_cancel]

end A248501

/-! ## A248501.P3180424713600325150

`eq[char[A248502(n+1)], A000007(n)]`
-/

namespace A248501.P3180424713600325150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248502 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A248501.P3180424713600325150

namespace A248501

/-- `eq[char[A248502(n+1)], A000007(n)]` -/
def P3180424713600325150.Spec : Prop :=
  ∀ n, (P3180424713600325150.a n : ℤ) = A248501 (n + 1)

end A248501

/-! ## A248501.P5962467752411744911

`eq[char[A248502(n+1)], A000038(n)]`
-/

namespace A248501.P5962467752411744911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248502 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A248501.P5962467752411744911

namespace A248501

/-- `eq[char[A248502(n+1)], A000038(n)]` -/
def P5962467752411744911.Spec : Prop :=
  ∀ n, (P5962467752411744911.a n : ℤ) = A248501 (n + 1)

end A248501

/-! ## A248501.P16329107006630469148

`eq[char[A248502(n+1)], A010051(2*(n+1))]`
-/

namespace A248501.P16329107006630469148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248502 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A248501.P16329107006630469148

namespace A248501

/-- `eq[char[A248502(n+1)], A010051(2*(n+1))]` -/
def P16329107006630469148.Spec : Prop :=
  ∀ n, (P16329107006630469148.a n : ℤ) = A248501 (n + 1)

end A248501

/-! ## A248501.P13855131682706749716

`record[(n+1)/gcd(n+1, A002265(A002265(n+1)))]`
-/

namespace A248501.P13855131682706749716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A002265 (A002265 (n + 1)).toNat) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248501.P13855131682706749716

namespace A248501

/-- `record[(n+1)/gcd(n+1, A002265(A002265(n+1)))]` -/
def P13855131682706749716.Spec : Prop :=
  ∀ n, P13855131682706749716.a n = (A248501 (n + 1) : ℚ)

end A248501

/-!
# A248502: Numbers m that are not coprime to floor(m/16).

The programs for A248502, the canonical program `A248502.P6195159982500652258` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248502 has offset 1).

The definition of A248502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248502.P6195159982500652258

`comp[A248501(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A248502

/-- `comp[A248501(n+1)-1]+1` -/
def P6195159982500652258.Spec : Prop :=
  ∀ n, (P6195159982500652258.a n : ℤ) = A248502 (n + 1)

theorem P6195159982500652258.correct : P6195159982500652258.Spec := by
  intro n
  simp only [A248502, Nat.add_sub_cancel]

end A248502

/-! ## A248502.P15659353456883770722

`lt[1, gcd(n, A002265(A002265(n)))]`
-/

namespace A248502.P15659353456883770722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A002265 (A002265 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248502.P15659353456883770722

namespace A248502

/-- `lt[1, gcd(n, A002265(A002265(n)))]` -/
def P15659353456883770722.Spec : Prop :=
  ∀ n, (P15659353456883770722.a n : ℤ) = A248502 (n + 1)

end A248502

/-!
# A248509: Length of longest sequence of distinct nonzero squares summing to n, or 0 if no such sequence exists.

The programs for A248509, there is no canonical definition to state claims against.
-/

/-! ## A248509.P10461332437042992623

`A084558(A331844(n+1))`
-/

namespace A248509.P10461332437042992623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A331844 (n + 1)).toNat

end

end A248509.P10461332437042992623

/-! ## A248509.P18173681439733396520

`A122922(A279368(n+1))`
-/

namespace A248509.P18173681439733396520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A279368 (n + 1)).toNat

end

end A248509.P18173681439733396520

/-! ## A248509.P3257020730982775892

`A326702((A331844(n+1)%A039938(n+1))²)`
-/

namespace A248509.P3257020730982775892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (Int.tmod (A331844 (n + 1)) (A039938 (n + 1)) ^ 2).toNat

end

end A248509.P3257020730982775892

/-! ## A248509.P7783662945318328214

`A307319(A281542(n+1)^A331844(n)!)`
-/

namespace A248509.P7783662945318328214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307319 (A281542 (n + 1) ^ Nat.factorial (A331844 n).toNat).toNat

end

end A248509.P7783662945318328214

/-! ## A248509.P4677883309039665412

`A281542(n+1)-A185284(∑[A327622(n)])`
-/

namespace A248509.P4677883309039665412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281542 (n + 1) - A185284 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248509.P4677883309039665412

/-!
# A248511: Difference between k and the least prime factor of k^2+1 where k is the n-th number with k^2+1 composite.

The programs for A248511, there is no canonical definition to state claims against.
-/

/-! ## A248511.P3570159075825342853

`lt[1, A193330(n)]-A020639(A134406(n+1))`
-/

namespace A248511.P3570159075825342853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - A020639 (A134406 (n + 1)).toNat

end

end A248511.P3570159075825342853

/-! ## A248511.P17426676410333031626

`lt[2, A193432(n)]-A020639(A134406(n+1))`
-/

namespace A248511.P17426676410333031626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - A020639 (A134406 (n + 1)).toNat

end

end A248511.P17426676410333031626

/-! ## A248511.P9641267076747824187

`lt[1, A001221(n²+1)]-A020639(A134406(n+1))`
-/

namespace A248511.P9641267076747824187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - A020639 (A134406 (n + 1)).toNat

end

end A248511.P9641267076747824187

/-! ## A248511.P17081760985663736281

`lt[1, A001222(n²+1)]-A020639(A134406(n+1))`
-/

namespace A248511.P17081760985663736281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - A020639 (A134406 (n + 1)).toNat

end

end A248511.P17081760985663736281

/-! ## A248511.P13344948021101850634

`lt[2, A000005(n²+1)]-A020639(A134406(n+1))`
-/

namespace A248511.P13344948021101850634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - A020639 (A134406 (n + 1)).toNat

end

end A248511.P13344948021101850634

/-! ## A248511.P12630950954152797296

`lt[A006530(n²+1), n²]-A020639(A134406(n+1))`
-/

namespace A248511.P12630950954152797296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ 2 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - A020639 (A134406 (n + 1)).toNat

end

end A248511.P12630950954152797296

/-! ## A248511.P18087805195148841745

`lt[0, A072670(n²)]-A020639(A134406(n+1))`
-/

namespace A248511.P18087805195148841745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - A020639 (A134406 (n + 1)).toNat

end

end A248511.P18087805195148841745

/-! ## A248511.P17222529531323584361

`lt[A014963(n²+1), n]-A020639(A134406(n+1))`
-/

namespace A248511.P17222529531323584361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n ^ 2 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - A020639 (A134406 (n + 1)).toNat

end

end A248511.P17222529531323584361

/-! ## A248511.P17472458126079805288

`eq[1, A014963((n+1)²+1)]+1-A020639(A134406(n+1))`
-/

namespace A248511.P17472458126079805288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A020639 (A134406 (n + 1)).toNat

end

end A248511.P17472458126079805288

/-! ## A248511.P548196260861897604

`A134407(n+1)-A020639(A134406(n+1))`
-/

namespace A248511.P548196260861897604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134407 (n + 1) - A020639 (A134406 (n + 1)).toNat

end

end A248511.P548196260861897604

/-!
# A248513: Rectangular array by antidiagonals: the dispersion of A181155 ("odious numbers").

The programs for A248513, there is no canonical definition to state claims against.
-/

/-! ## A248513.P2746322266769324009

`A042963(A288870(n))-A277880(n+1)`
-/

namespace A248513.P2746322266769324009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (A288870 n).toNat - A277880 (n + 1)

end

end A248513.P2746322266769324009

/-! ## A248513.P10927555529715716710

`A268718(A277880(n+1))`
-/

namespace A248513.P10927555529715716710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268718 (A277880 (n + 1)).toNat

end

end A248513.P10927555529715716710

/-!
# A248514: Fractal sequence of the dispersion of the "odious numbers".

The programs for A248514, the canonical program `A248514.P12001065706870817028` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248514 has offset 1).

The definition of A248514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248514.P5290985463752468382

`ceil(A003602(comp[xor(n, 2*n)])/2)`
-/

namespace A248514.P5290985463752468382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003602 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2⌉

end

end A248514.P5290985463752468382

namespace A248514

/-- `ceil(A003602(comp[xor(n, 2*n)])/2)` -/
def P5290985463752468382.Spec : Prop :=
  ∀ n, P5290985463752468382.a n = A248514 (n + 1)

end A248514

/-! ## A248514.P12694093381980865028

`ceil(A000265(comp[xor(n, 2*n)])/4)`
-/

namespace A248514.P12694093381980865028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000265 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 4⌉

end

end A248514.P12694093381980865028

namespace A248514

/-- `ceil(A000265(comp[xor(n, 2*n)])/4)` -/
def P12694093381980865028.Spec : Prop :=
  ∀ n, P12694093381980865028.a n = A248514 (n + 1)

end A248514

/-! ## A248514.P14487871495893827708

`floor(A103391(comp[xor(n, 2*n)]+1)/2)`
-/

namespace A248514.P14487871495893827708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103391 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2⌋

end

end A248514.P14487871495893827708

namespace A248514

/-- `floor(A103391(comp[xor(n, 2*n)]+1)/2)` -/
def P14487871495893827708.Spec : Prop :=
  ∀ n, P14487871495893827708.a n = A248514 (n + 1)

end A248514

/-! ## A248514.P3501740379447246598

`A277813(A268717(n+1))`
-/

namespace A248514.P3501740379447246598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277813 (A268717 (n + 1)).toNat

end

end A248514.P3501740379447246598

namespace A248514

/-- `A277813(A268717(n+1))` -/
def P3501740379447246598.Spec : Prop :=
  ∀ n, P3501740379447246598.a n = A248514 (n + 1)

end A248514

/-! ## A248514.P12001065706870817028

`ceil(A003602(eq[1, A010060(n)])/2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A248514

/-- `ceil(A003602(eq[1, A010060(n)])/2)` -/
def P12001065706870817028.Spec : Prop :=
  ∀ n, P12001065706870817028.a n = A248514 (n + 1)

theorem P12001065706870817028.correct : P12001065706870817028.Spec := by
  intro n
  simp only [A248514, Nat.add_sub_cancel]

end A248514

/-! ## A248514.P10524710484562717574

`ceil(A003602(eq[1, A254379(n)])/2)`
-/

namespace A248514.P10524710484562717574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2⌉

end

end A248514.P10524710484562717574

namespace A248514

/-- `ceil(A003602(eq[1, A254379(n)])/2)` -/
def P10524710484562717574.Spec : Prop :=
  ∀ n, P10524710484562717574.a n = A248514 (n + 1)

end A248514

/-! ## A248514.P7994936948795843934

`ceil((n+1)/A036154(A268727(n)))`
-/

namespace A248514.P7994936948795843934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A036154 (A268727 n).toNat : ℚ)⌉

end

end A248514.P7994936948795843934

namespace A248514

/-- `ceil((n+1)/A036154(A268727(n)))` -/
def P7994936948795843934.Spec : Prop :=
  ∀ n, P7994936948795843934.a n = A248514 (n + 1)

end A248514

/-! ## A248514.P10882558936339092591

`A008621(A000265(comp[xor(n, 2*n)]))`
-/

namespace A248514.P10882558936339092591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A000265 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A248514.P10882558936339092591

namespace A248514

/-- `A008621(A000265(comp[xor(n, 2*n)]))` -/
def P10882558936339092591.Spec : Prop :=
  ∀ n, P10882558936339092591.a n = A248514 (n + 1)

end A248514

/-! ## A248514.P1686872682901208806

`A065033(A003602(comp[xor(n, 2*n)]))`
-/

namespace A248514.P1686872682901208806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A003602 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A248514.P1686872682901208806

namespace A248514

/-- `A065033(A003602(comp[xor(n, 2*n)]))` -/
def P1686872682901208806.Spec : Prop :=
  ∀ n, P1686872682901208806.a n = A248514 (n + 1)

end A248514

/-! ## A248514.P15743837743289399546

`A008619(A101279(comp[xor(n, 2*n)]))`
-/

namespace A248514.P15743837743289399546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A101279 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A248514.P15743837743289399546

namespace A248514

/-- `A008619(A101279(comp[xor(n, 2*n)]))` -/
def P15743837743289399546.Spec : Prop :=
  ∀ n, P15743837743289399546.a n = A248514 (n + 1)

end A248514

/-! ## A248514.P17613825643600297117

`A110654(A101279(comp[xor(n, 2*n)])+1)`
-/

namespace A248514.P17613825643600297117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A101279 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A248514.P17613825643600297117

namespace A248514

/-- `A110654(A101279(comp[xor(n, 2*n)])+1)` -/
def P17613825643600297117.Spec : Prop :=
  ∀ n, P17613825643600297117.a n = A248514 (n + 1)

end A248514

/-! ## A248514.P6290615928432198974

`A008619(A003602(comp[xor(n, 2*n)])-1)`
-/

namespace A248514.P6290615928432198974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003602 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1).toNat

end

end A248514.P6290615928432198974

namespace A248514

/-- `A008619(A003602(comp[xor(n, 2*n)])-1)` -/
def P6290615928432198974.Spec : Prop :=
  ∀ n, P6290615928432198974.a n = A248514 (n + 1)

end A248514

/-! ## A248514.P2170579051132475229

`A008621(A000265(A000069(n+1)))`
-/

namespace A248514.P2170579051132475229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A000265 (A000069 (n + 1)).toNat).toNat

end

end A248514.P2170579051132475229

namespace A248514

/-- `A008621(A000265(A000069(n+1)))` -/
def P2170579051132475229.Spec : Prop :=
  ∀ n, P2170579051132475229.a n = A248514 (n + 1)

end A248514

/-! ## A248514.P1554453295449885855

`A277813(A268817(A268718(n+1)))`
-/

namespace A248514.P1554453295449885855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277813 (A268817 (A268718 (n + 1)).toNat).toNat

end

end A248514.P1554453295449885855

namespace A248514

/-- `A277813(A268817(A268718(n+1)))` -/
def P1554453295449885855.Spec : Prop :=
  ∀ n, P1554453295449885855.a n = A248514 (n + 1)

end A248514

/-! ## A248514.P13573263971780821726

`A277813(A003188(A268671(A277812(2*n+1))))`
-/

namespace A248514.P13573263971780821726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277813 (A003188 (A268671 (A277812 (2 * n + 1)).toNat).toNat).toNat

end

end A248514.P13573263971780821726

namespace A248514

/-- `A277813(A003188(A268671(A277812(2*n+1))))` -/
def P13573263971780821726.Spec : Prop :=
  ∀ n, P13573263971780821726.a n = A248514 (n + 1)

end A248514

/-!
# A248516: n^2+1 divided by its largest prime factor.

The programs for A248516, the canonical program `A248516.P14062479917539595472` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248516 has offset 1).

The definition of A248516 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248516.P4806800727667714199

`A002522(n+1)/A014442(n+1)`
-/

namespace A248516.P4806800727667714199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 (n + 1) : ℚ) / (A014442 (n + 1) : ℚ)

end

end A248516.P4806800727667714199

namespace A248516

/-- `A002522(n+1)/A014442(n+1)` -/
def P4806800727667714199.Spec : Prop :=
  ∀ n, P4806800727667714199.a n = (A248516 (n + 1) : ℚ)

end A248516

/-! ## A248516.P14062479917539595472

`A052126(1+(n+1)²)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A248516

/-- `A052126(1+(n+1)²)` -/
def P14062479917539595472.Spec : Prop :=
  ∀ n, P14062479917539595472.a n = A248516 (n + 1)

theorem P14062479917539595472.correct : P14062479917539595472.Spec := by
  intro n
  simp only [A248516, Nat.add_sub_cancel]

end A248516

/-! ## A248516.P16144151202201791139

`A002522(n+1)/(A252096(n+1)+A089120(n+1))`
-/

namespace A248516.P16144151202201791139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 (n + 1) : ℚ) / (A252096 (n + 1) + A089120 (n + 1) : ℚ)

end

end A248516.P16144151202201791139

namespace A248516

/-- `A002522(n+1)/(A252096(n+1)+A089120(n+1))` -/
def P16144151202201791139.Spec : Prop :=
  ∀ n, P16144151202201791139.a n = (A248516 (n + 1) : ℚ)

end A248516

/-! ## A248516.P2364964287517224883

`A002522(n+1)/A002313(A248746(n+1))`
-/

namespace A248516.P2364964287517224883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 (n + 1) : ℚ) / (A002313 (A248746 (n + 1)).toNat : ℚ)

end

end A248516.P2364964287517224883

namespace A248516

/-- `A002522(n+1)/A002313(A248746(n+1))` -/
def P2364964287517224883.Spec : Prop :=
  ∀ n, P2364964287517224883.a n = (A248516 (n + 1) : ℚ)

end A248516

/-! ## A248516.P4143029500788241395

`((n+1)²+1)/A006530((n+1)²+1)`
-/

namespace A248516.P4143029500788241395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 1 : ℚ) / (A006530 ((n + 1) ^ 2 + 1) : ℚ)

end

end A248516.P4143029500788241395

namespace A248516

/-- `((n+1)²+1)/A006530((n+1)²+1)` -/
def P4143029500788241395.Spec : Prop :=
  ∀ n, P4143029500788241395.a n = (A248516 (n + 1) : ℚ)

end A248516

/-! ## A248516.P9380513874961365370

`A002522(n+1)/A000040(A061395((n+1)²+1))`
-/

namespace A248516.P9380513874961365370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 (n + 1) : ℚ) / (A000040 (A061395 ((n + 1) ^ 2 + 1)).toNat : ℚ)

end

end A248516.P9380513874961365370

namespace A248516

/-- `A002522(n+1)/A000040(A061395((n+1)²+1))` -/
def P9380513874961365370.Spec : Prop :=
  ∀ n, P9380513874961365370.a n = (A248516 (n + 1) : ℚ)

end A248516

/-! ## A248516.P4259085376890853044

`A338669((n+1)²+1)`
-/

namespace A248516.P4259085376890853044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338669 ((n + 1) ^ 2 + 1)

end

end A248516.P4259085376890853044

namespace A248516

/-- `A338669((n+1)²+1)` -/
def P4259085376890853044.Spec : Prop :=
  ∀ n, P4259085376890853044.a n = A248516 (n + 1)

end A248516

/-! ## A248516.P16273733407416251181

`A070821(A005893(n+1))`
-/

namespace A248516.P16273733407416251181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (A005893 (n + 1)).toNat

end

end A248516.P16273733407416251181

namespace A248516

/-- `A070821(A005893(n+1))` -/
def P16273733407416251181.Spec : Prop :=
  ∀ n, P16273733407416251181.a n = A248516 (n + 1)

end A248516

/-! ## A248516.P2001612536309165494

`A070821(A271624(n+2))`
-/

namespace A248516.P2001612536309165494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (A271624 (n + 2)).toNat

end

end A248516.P2001612536309165494

namespace A248516

/-- `A070821(A271624(n+2))` -/
def P2001612536309165494.Spec : Prop :=
  ∀ n, P2001612536309165494.a n = A248516 (n + 1)

end A248516

/-!
# A248517: Number of odd divisors > 1 in the numbers 1 through n, counted with multiplicity.

The programs for A248517, the canonical program `A248517.P14904334009551317657` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248517 has offset 0).

The definition of A248517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248517.P14904334009551317657

`A060831(n)-n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A248517

/-- `A060831(n)-n` -/
def P14904334009551317657.Spec : Prop :=
  ∀ n, P14904334009551317657.a n = A248517 n

theorem P14904334009551317657.correct : P14904334009551317657.Spec := by
  intro n
  simp only [A248517]

end A248517

/-! ## A248517.P15351869200265999557

`A006218(n)-A006218(floor(n/2))-n`
-/

namespace A248517.P15351869200265999557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A006218 ⌊(n : ℚ) / 2⌋.toNat - (n : ℤ)

end

end A248517.P15351869200265999557

namespace A248517

/-- `A006218(n)-A006218(floor(n/2))-n` -/
def P15351869200265999557.Spec : Prop :=
  ∀ n, P15351869200265999557.a n = A248517 n

end A248517

/-! ## A248517.P296958405468786378

`∑[∑{d}[n, #%2]]-n`
-/

namespace A248517.P296958405468786378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A248517.P296958405468786378

namespace A248517

/-- `∑[∑{d}[n, #%2]]-n` -/
def P296958405468786378.Spec : Prop :=
  ∀ n, P296958405468786378.a n = A248517 n

end A248517

/-! ## A248517.P373117309960630879

`∑[∑{d}[n, and(1, #)]]-n`
-/

namespace A248517.P373117309960630879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.land 1 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A248517.P373117309960630879

namespace A248517

/-- `∑[∑{d}[n, and(1, #)]]-n` -/
def P373117309960630879.Spec : Prop :=
  ∀ n, P373117309960630879.a n = A248517 n

end A248517

/-! ## A248517.P18007320083550335298

`∑[∑{d}[n, and(#, (n+1)%#)]]`
-/

namespace A248517.P18007320083550335298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.land d ((n + 1) % d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248517.P18007320083550335298

namespace A248517

/-- `∑[∑{d}[n, and(#, (n+1)%#)]]` -/
def P18007320083550335298.Spec : Prop :=
  ∀ n, (P18007320083550335298.a n : ℤ) = A248517 n

end A248517

/-! ## A248517.P8971635230079907525

`∑[A069283(n)]`
-/

namespace A248517.P8971635230079907525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248517.P8971635230079907525

namespace A248517

/-- `∑[A069283(n)]` -/
def P8971635230079907525.Spec : Prop :=
  ∀ n, P8971635230079907525.a n = A248517 n

end A248517

/-! ## A248517.P13981503427145321993

`A113241(n)-A006218(n)`
-/

namespace A248517.P13981503427145321993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113241 n - A006218 n

end

end A248517.P13981503427145321993

namespace A248517

/-- `A113241(n)-A006218(n)` -/
def P13981503427145321993.Spec : Prop :=
  ∀ n, P13981503427145321993.a n = A248517 n

end A248517

/-! ## A248517.P3919265273321676413

`∪[A056548(n), A056549(n)]-n`
-/

namespace A248517.P3919265273321676413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056548 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056549 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A248517.P3919265273321676413

namespace A248517

/-- `∪[A056548(n), A056549(n)]-n` -/
def P3919265273321676413.Spec : Prop :=
  ∀ n, P3919265273321676413.a n = A248517 n

end A248517

/-! ## A248517.P10673900156289101675

`A006591(n+1)-A263085(n+1)`
-/

namespace A248517.P10673900156289101675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006591 (n + 1) - A263085 (n + 1)

end

end A248517.P10673900156289101675

namespace A248517

/-- `A006591(n+1)-A263085(n+1)` -/
def P10673900156289101675.Spec : Prop :=
  ∀ n, P10673900156289101675.a n = A248517 n

end A248517

/-! ## A248517.P13260188858167423360

`A338733(n)-(A002024(n+1)+n)`
-/

namespace A248517.P13260188858167423360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338733 n - (A002024 (n + 1) + (n : ℤ))

end

end A248517.P13260188858167423360

namespace A248517

/-- `A338733(n)-(A002024(n+1)+n)` -/
def P13260188858167423360.Spec : Prop :=
  ∀ n, P13260188858167423360.a n = A248517 n

end A248517

/-! ## A248517.P3247511938408593654

`∑[A000005(A000265(abs(1-n)+1))-1]`
-/

namespace A248517.P3247511938408593654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (|1 - (n : ℤ)| + 1).toNat).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248517.P3247511938408593654

namespace A248517

/-- `∑[A000005(A000265(abs(1-n)+1))-1]` -/
def P3247511938408593654.Spec : Prop :=
  ∀ n, P3247511938408593654.a n = A248517 n

end A248517

/-! ## A248517.P15575349276815363334

`∑[A001227(n+1)]-(A001227(n+1)+n)`
-/

namespace A248517.P15575349276815363334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A001227 (n + 1) + (n : ℤ))

end

end A248517.P15575349276815363334

namespace A248517

/-- `∑[A001227(n+1)]-(A001227(n+1)+n)` -/
def P15575349276815363334.Spec : Prop :=
  ∀ n, P15575349276815363334.a n = A248517 n

end A248517

/-! ## A248517.P15475891505949469975

`A006218(n)-(A006218(A004526(n))+n)`
-/

namespace A248517.P15475891505949469975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - (A006218 (A004526 n).toNat + (n : ℤ))

end

end A248517.P15475891505949469975

namespace A248517

/-- `A006218(n)-(A006218(A004526(n))+n)` -/
def P15475891505949469975.Spec : Prop :=
  ∀ n, P15475891505949469975.a n = A248517 n

end A248517

/-! ## A248517.P11172294897324291769

`A054519(n)-(A054519(A004526(n))+n)`
-/

namespace A248517.P11172294897324291769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - (A054519 (A004526 n).toNat + (n : ℤ))

end

end A248517.P11172294897324291769

namespace A248517

/-- `A054519(n)-(A054519(A004526(n))+n)` -/
def P11172294897324291769.Spec : Prop :=
  ∀ n, P11172294897324291769.a n = A248517 n

end A248517

/-! ## A248517.P9945920148652940914

`A111775(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A248517.P9945920148652940914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A111775 (2 * n) + a (n - 1)

end

end A248517.P9945920148652940914

namespace A248517

/-- `A111775(2*n)+a(n-1)` -/
def P9945920148652940914.Spec : Prop :=
  ∀ n, P9945920148652940914.a n = A248517 n

end A248517

/-! ## A248517.P17910267592458322389

`∑[A001227(A004277(n))-1]`
-/

namespace A248517.P17910267592458322389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A004277 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248517.P17910267592458322389

namespace A248517

/-- `∑[A001227(A004277(n))-1]` -/
def P17910267592458322389.Spec : Prop :=
  ∀ n, P17910267592458322389.a n = A248517 n

end A248517

/-! ## A248517.P3895002840610657452

`∑[A299480(A004281(n+1))]-n`
-/

namespace A248517.P3895002840610657452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (A004281 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A248517.P3895002840610657452

namespace A248517

/-- `∑[A299480(A004281(n+1))]-n` -/
def P3895002840610657452.Spec : Prop :=
  ∀ n, P3895002840610657452.a n = A248517 n

end A248517

/-! ## A248517.P17902733339087045940

`∑[A032741(2*n)]-A006218(n)`
-/

namespace A248517.P17902733339087045940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006218 n

end

end A248517.P17902733339087045940

namespace A248517

/-- `∑[A032741(2*n)]-A006218(n)` -/
def P17902733339087045940.Spec : Prop :=
  ∀ n, P17902733339087045940.a n = A248517 n

end A248517

/-! ## A248517.P2233743808321291554

`∑[A111775(2*(n+1))]-A111775(2*(n+1))`
-/

namespace A248517.P2233743808321291554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A111775 (2 * (n + 1))

end

end A248517.P2233743808321291554

namespace A248517

/-- `∑[A111775(2*(n+1))]-A111775(2*(n+1))` -/
def P2233743808321291554.Spec : Prop :=
  ∀ n, P2233743808321291554.a n = A248517 n

end A248517

/-!
# A248518: Number of partitions of n into parts > 0 without 1 as digit, cf. A052383.

The programs for A248518, there is no canonical definition to state claims against.
-/

/-! ## A248518.P13230495136359133231

`A266777(n)+A185245(A266770(n))`
-/

namespace A248518.P13230495136359133231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n + A185245 (A266770 n).toNat

end

end A248518.P13230495136359133231

/-! ## A248518.P15144675272998656247

`A335520(A240519(n+3))+A266777(n)`
-/

namespace A248518.P15144675272998656247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A240519 (n + 3)).toNat + A266777 n

end

end A248518.P15144675272998656247

/-! ## A248518.P11411895839100956891

`A026815(n)+A185245(A266770(n))+A060028(n)`
-/

namespace A248518.P11411895839100956891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026815 n + (A185245 (A266770 n).toNat + A060028 n)

end

end A248518.P11411895839100956891

/-! ## A248518.P2185657856881136909

`A185245(A266770(n))+A026815(n+9)-A026815(n+8)`
-/

namespace A248518.P2185657856881136909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 (A266770 n).toNat + (A026815 (n + 9) - A026815 (n + 8))

end

end A248518.P2185657856881136909

/-!
# A248519: Number of partitions of n into distinct parts > 0 without 1 as digit, cf. A052383.

The programs for A248519, there is no canonical definition to state claims against.
-/

/-! ## A248519.P9973525763657217399

`ceil(A317913(n)/A290697(n+6))`
-/

namespace A248519.P9973525763657217399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317913 n : ℚ) / (A290697 (n + 6) : ℚ)⌉

end

end A248519.P9973525763657217399

/-!
# A248520: Numbers k such that floor(cot(Pi/(2k+2))) = floor(cot(Pi/(2k))).

The programs for A248520, there is no canonical definition to state claims against.
-/

/-! ## A248520.P2051649564794369368

`comp[A024812(n+1)-1]+n+2`
-/

namespace A248520.P2051649564794369368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024812 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 2)

end

end A248520.P2051649564794369368

/-! ## A248520.P5268220742742515643

`comp[A024812(A028310(n))-1]+n+2`
-/

namespace A248520.P5268220742742515643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024812 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n + 2

end

end A248520.P5268220742742515643

/-! ## A248520.P10454647590538249475

`floor(sqrt(A232742((n+1)²)))`
-/

namespace A248520.P10454647590538249475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A232742 ((n + 1) ^ 2))

end

end A248520.P10454647590538249475

/-! ## A248520.P10681293984069639213

`ceil(sqrt(A232742(∑[2*n+1])))-1`
-/

namespace A248520.P10681293984069639213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A232742 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌉ - 1

end

end A248520.P10681293984069639213

/-! ## A248520.P13545543362774081133

`A233583(ceil(sqrt(A232742((n+1)²))))`
-/

namespace A248520.P13545543362774081133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 ⌈Real.sqrt (A232742 ((n + 1) ^ 2) : ℝ)⌉.toNat

end

end A248520.P13545543362774081133

/-! ## A248520.P9833018609797577295

`A000038(n+1)+ceil(sqrt(A232742((n+1)²)))-1`
-/

namespace A248520.P9833018609797577295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (⌈Real.sqrt (A232742 ((n + 1) ^ 2) : ℝ)⌉ - 1)

end

end A248520.P9833018609797577295

/-! ## A248520.P89380216818992217

`A065033(A065033(A133137(n+1))+A016885(n))`
-/

namespace A248520.P89380216818992217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065033 (A133137 (n + 1)).toNat + A016885 n).toNat

end

end A248520.P89380216818992217

/-!
# A248521: Numbers k such that floor(cot(Pi/(2k+2))) = floor(cot(Pi/(2k))) + 1.

The programs for A248521, the canonical program `A248521.P8138205606955792279` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248521 has offset 1).

The definition of A248521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248521.P8138205606955792279

`ceil(atan(n+1)/acot(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248521

/-- `ceil(atan(n+1)/acot(n+1))` -/
def P8138205606955792279.Spec : Prop :=
  ∀ n, P8138205606955792279.a n = A248521 (n + 1)

theorem P8138205606955792279.correct : P8138205606955792279.Spec := by
  intro n
  simp only [A248521, Nat.add_sub_cancel]

end A248521

/-! ## A248521.P2628381553451432157

`floor(acot(floor(acot(n)))/acot(n+1))`
-/

namespace A248521.P2628381553451432157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (⌊SequenceMachineLib.acot (n : ℝ)⌋ : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A248521.P2628381553451432157

namespace A248521

/-- `floor(acot(floor(acot(n)))/acot(n+1))` -/
def P2628381553451432157.Spec : Prop :=
  ∀ n, P2628381553451432157.a n = A248521 (n + 1)

end A248521

/-! ## A248521.P13038105333975686538

`ceil(atan(n+1)/atan(1/(n+1)))`
-/

namespace A248521.P13038105333975686538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) / Real.arctan (1 / (n + 1 : ℚ) : ℝ)⌉

end

end A248521.P13038105333975686538

namespace A248521

/-- `ceil(atan(n+1)/atan(1/(n+1)))` -/
def P13038105333975686538.Spec : Prop :=
  ∀ n, P13038105333975686538.a n = A248521 (n + 1)

end A248521

/-! ## A248521.P18066094990789070074

`ceil(acot(1/(n+1))/acot(n+1))`
-/

namespace A248521.P18066094990789070074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (1 / (n + 1 : ℚ) : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌉

end

end A248521.P18066094990789070074

namespace A248521

/-- `ceil(acot(1/(n+1))/acot(n+1))` -/
def P18066094990789070074.Spec : Prop :=
  ∀ n, P18066094990789070074.a n = A248521 (n + 1)

end A248521

/-! ## A248521.P6219112049865460566

`comp[comp[A024812(n+1)]+n]`
-/

namespace A248521.P6219112049865460566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024812 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A248521.P6219112049865460566

namespace A248521

/-- `comp[comp[A024812(n+1)]+n]` -/
def P6219112049865460566.Spec : Prop :=
  ∀ n, (P6219112049865460566.a n : ℤ) = A248521 (n + 1)

end A248521

/-! ## A248521.P15310115512172901127

`round(∑[atan(cosh(n+1)²)])`
-/

namespace A248521.P15310115512172901127
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Real.cosh (n + 1 : ℝ) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248521.P15310115512172901127

namespace A248521

/-- `round(∑[atan(cosh(n+1)²)])` -/
def P15310115512172901127.Spec : Prop :=
  ∀ n, P15310115512172901127.a n = A248521 (n + 1)

end A248521

/-!
# A248522: Beatty sequence for 1/(1-exp(-1/3)): a(n) = floor(n/(1-exp(-1/3))).

The programs for A248522, the canonical program `A248522.P779319537800669012` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248522 has offset 1).

The definition of A248522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/(1-exp(-1/3)))` (program `A248522.P779319537800669012`, by `A248522.P779319537800669012.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248522.P779319537800669012

`floor((n+1)/(1-exp(-1/3)))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248522

/-- `floor((n+1)/(1-exp(-1/3)))` -/
def P779319537800669012.Spec : Prop :=
  ∀ n, P779319537800669012.a n = A248522 (n + 1)

theorem P779319537800669012.correct : P779319537800669012.Spec := by
  intro n
  simp only [A248522, Nat.add_sub_cancel]

end A248522

/-! ## A248522.P1604186962676839373

`comp[A247964(n)]`
-/

namespace A248522.P1604186962676839373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247964 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248522.P1604186962676839373

namespace A248522

/-- `comp[A247964(n)]` -/
def P1604186962676839373.Spec : Prop :=
  ∀ n, (P1604186962676839373.a n : ℤ) = A248522 (n + 1)

end A248522

/-! ## A248522.P5285374385251950593

`A097992(A097992(n)+A008589(3*n+2))`
-/

namespace A248522.P5285374385251950593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A097992 n + A008589 (3 * n + 2)).toNat

end

end A248522.P5285374385251950593

namespace A248522

/-- `A097992(A097992(n)+A008589(3*n+2))` -/
def P5285374385251950593.Spec : Prop :=
  ∀ n, P5285374385251950593.a n = A248522 (n + 1)

end A248522

/-! ## A248522.P7768037209816408406

`floor(A045749(A132209(n+1)+1)/(n+2))+n+1`
-/

namespace A248522.P7768037209816408406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045749 (A132209 (n + 1) + 1).toNat : ℚ) / (n + 2 : ℚ)⌋ + (n : ℤ) + 1

end

end A248522.P7768037209816408406

namespace A248522

/-- `floor(A045749(A132209(n+1)+1)/(n+2))+n+1` -/
def P7768037209816408406.Spec : Prop :=
  ∀ n, P7768037209816408406.a n = A248522 (n + 1)

end A248522

/-! ## A248522.P18127052532059240468

`A335137(3*(n+1))%A335142(n+1)`
-/

namespace A248522.P18127052532059240468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335137 (3 * (n + 1))) (A335142 (n + 1))

end

end A248522.P18127052532059240468

namespace A248522

/-- `A335137(3*(n+1))%A335142(n+1)` -/
def P18127052532059240468.Spec : Prop :=
  ∀ n, P18127052532059240468.a n = A248522 (n + 1)

end A248522

/-! ## A248522.P18444340051160973491

`A335137(3*n+3)+A000122(A322551(n+1))`
-/

namespace A248522.P18444340051160973491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335137 (3 * n + 3) + A000122 (A322551 (n + 1)).toNat

end

end A248522.P18444340051160973491

namespace A248522

/-- `A335137(3*n+3)+A000122(A322551(n+1))` -/
def P18444340051160973491.Spec : Prop :=
  ∀ n, P18444340051160973491.a n = A248522 (n + 1)

end A248522

/-! ## A248522.P7561621721704060121

`A335137(3*(n+1))+A010815(A046310(2*n+3))`
-/

namespace A248522.P7561621721704060121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335137 (3 * (n + 1)) + A010815 (A046310 (2 * n + 3)).toNat

end

end A248522.P7561621721704060121

namespace A248522

/-- `A335137(3*(n+1))+A010815(A046310(2*n+3))` -/
def P7561621721704060121.Spec : Prop :=
  ∀ n, P7561621721704060121.a n = A248522 (n + 1)

end A248522

/-! ## A248522.P5202172186546694001

`A335137(3*(n+1))%A063912(A054552(n))`
-/

namespace A248522.P5202172186546694001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335137 (3 * (n + 1))) (A063912 (A054552 n).toNat)

end

end A248522.P5202172186546694001

namespace A248522

/-- `A335137(3*(n+1))%A063912(A054552(n))` -/
def P5202172186546694001.Spec : Prop :=
  ∀ n, P5202172186546694001.a n = A248522 (n + 1)

end A248522

/-! ## A248522.P2245920514255438276

`A000188(A220475(n+1))*A335137(3*n+3)`
-/

namespace A248522.P2245920514255438276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A220475 (n + 1)).toNat * A335137 (3 * n + 3)

end

end A248522.P2245920514255438276

namespace A248522

/-- `A000188(A220475(n+1))*A335137(3*n+3)` -/
def P2245920514255438276.Spec : Prop :=
  ∀ n, P2245920514255438276.a n = A248522 (n + 1)

end A248522

/-! ## A248522.P17258482850793509565

`A335137(3*n+3)/A000188(A220293(n+1))`
-/

namespace A248522.P17258482850793509565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335137 (3 * n + 3) : ℚ) / (A000188 (A220293 (n + 1)).toNat : ℚ)

end

end A248522.P17258482850793509565

namespace A248522

/-- `A335137(3*n+3)/A000188(A220293(n+1))` -/
def P17258482850793509565.Spec : Prop :=
  ∀ n, P17258482850793509565.a n = (A248522 (n + 1) : ℚ)

end A248522

/-!
# A248523: Initial members of prime quadruples (n, n+2, n+144, n+146).

The programs for A248523, there is no canonical definition to state claims against.
-/

/-! ## A248523.P10861767523326358116

`∩[A156107(n+1)-2, A156107(n+1)]`
-/

namespace A248523.P10861767523326358116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248523.P10861767523326358116

/-! ## A248523.P11787914091589917808

`∩[A156107(n+1), A109606(A156107(n+1))]`
-/

namespace A248523.P11787914091589917808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A156107 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248523.P11787914091589917808

/-!
# A248524: Beatty sequence for 1/(1-Pi^(-1/3)).

The programs for A248524, the canonical program `A248524.P15661614110697140604` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248524 has offset 1).

The definition of A248524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248524.P15661614110697140604

`comp[floor(n*root(π, 3))]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248524

/-- `comp[floor(n*root(π, 3))]` -/
def P15661614110697140604.Spec : Prop :=
  ∀ n, (P15661614110697140604.a n : ℤ) = A248524 (n + 1)

theorem P15661614110697140604.correct : P15661614110697140604.Spec := by
  intro n
  simp only [A248524, Nat.add_sub_cancel]

end A248524

/-! ## A248524.P1046774993542754883

`comp[A240977(n)]%A136079(3*n+1)`
-/

namespace A248524.P1046774993542754883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A136079 (3 * n + 1))

end

end A248524.P1046774993542754883

namespace A248524

/-- `comp[A240977(n)]%A136079(3*n+1)` -/
def P1046774993542754883.Spec : Prop :=
  ∀ n, P1046774993542754883.a n = A248524 (n + 1)

end A248524

/-! ## A248524.P18047113943211835632

`A000007(3*(n+1))+comp[A240977(n)]`
-/

namespace A248524.P18047113943211835632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * (n + 1)) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A248524.P18047113943211835632

namespace A248524

/-- `A000007(3*(n+1))+comp[A240977(n)]` -/
def P18047113943211835632.Spec : Prop :=
  ∀ n, P18047113943211835632.a n = A248524 (n + 1)

end A248524

/-! ## A248524.P16764147210140833742

`A028310(comp[A240977(n)])`
-/

namespace A248524.P16764147210140833742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A248524.P16764147210140833742

namespace A248524

/-- `A028310(comp[A240977(n)])` -/
def P16764147210140833742.Spec : Prop :=
  ∀ n, P16764147210140833742.a n = A248524 (n + 1)

end A248524

/-! ## A248524.P649439785297132507

`A184985(comp[A240977(n)])`
-/

namespace A248524.P649439785297132507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A248524.P649439785297132507

namespace A248524

/-- `A184985(comp[A240977(n)])` -/
def P649439785297132507.Spec : Prop :=
  ∀ n, P649439785297132507.a n = A248524 (n + 1)

end A248524

/-! ## A248524.P13977431222363949017

`abs(A001489(comp[A240977(n)]))`
-/

namespace A248524.P13977431222363949017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A248524.P13977431222363949017

namespace A248524

/-- `abs(A001489(comp[A240977(n)]))` -/
def P13977431222363949017.Spec : Prop :=
  ∀ n, P13977431222363949017.a n = A248524 (n + 1)

end A248524

/-! ## A248524.P11818291491283255262

`comp[A240977(n)]*A000120(A318454(n+1))`
-/

namespace A248524.P11818291491283255262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A000120 (A318454 (n + 1)).toNat

end

end A248524.P11818291491283255262

namespace A248524

/-- `comp[A240977(n)]*A000120(A318454(n+1))` -/
def P11818291491283255262.Spec : Prop :=
  ∀ n, P11818291491283255262.a n = A248524 (n + 1)

end A248524

/-! ## A248524.P16037604166011951285

`A007318(∑[n])*comp[A240977(n)]`
-/

namespace A248524.P16037604166011951285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A248524.P16037604166011951285

namespace A248524

/-- `A007318(∑[n])*comp[A240977(n)]` -/
def P16037604166011951285.Spec : Prop :=
  ∀ n, P16037604166011951285.a n = A248524 (n + 1)

end A248524

/-! ## A248524.P3451909141359040626

`comp[A240977(n)]%A188105(A000124(n))`
-/

namespace A248524.P3451909141359040626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A188105 (A000124 n).toNat)

end

end A248524.P3451909141359040626

namespace A248524

/-- `comp[A240977(n)]%A188105(A000124(n))` -/
def P3451909141359040626.Spec : Prop :=
  ∀ n, P3451909141359040626.a n = A248524 (n + 1)

end A248524

/-!
# A248525: Primes of the form 2^x - y^2 that are primes of the form m^2 - 2^k.

The programs for A248525, there is no canonical definition to state claims against.
-/

/-! ## A248525.P3710808330960146329

`filter[A236514(n+1), A267006(#)]`
-/

namespace A248525.P3710808330960146329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267006 (f1 j).toNat = 1) n)

end

end A248525.P3710808330960146329

/-! ## A248525.P7964687107182883241

`filter[A236514(n+1), A267050(#)]`
-/

namespace A248525.P7964687107182883241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267050 (f1 j).toNat = 1) n)

end

end A248525.P7964687107182883241

/-! ## A248525.P8008357114943294940

`filter[A236514(n+1), A267355(#)]`
-/

namespace A248525.P8008357114943294940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267355 (f1 j).toNat = 1) n)

end

end A248525.P8008357114943294940

/-! ## A248525.P512171453754312978

`filter[A248346(n+1), A267006(#)]`
-/

namespace A248525.P512171453754312978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267006 (f1 j).toNat = 1) n)

end

end A248525.P512171453754312978

/-! ## A248525.P16420386462657443283

`filter[A248346(n+1), A267050(#)]`
-/

namespace A248525.P16420386462657443283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267050 (f1 j).toNat = 1) n)

end

end A248525.P16420386462657443283

/-!
# A248527: Numbers k such that the smallest prime divisor of k^2+1 is 13.

The programs for A248527, the canonical program `A248527.P3361420579525358352` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248527 has offset 1).

The definition of A248527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1538 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248527.P3361420579525358352

`∩[A155086(n+1), A298784(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248527

/-- `∩[A155086(n+1), A298784(n)]` -/
def P3361420579525358352.Spec : Prop :=
  ∀ n, (P3361420579525358352.a n : ℤ) = A248527 (n + 1)

theorem P3361420579525358352.correct : P3361420579525358352.Spec := by
  intro n
  simp only [A248527, Nat.add_sub_cancel]

end A248527

/-! ## A248527.P12102894766394294197

`2*(1+eq[13, A256970(n+1)])`
-/

namespace A248527.P12102894766394294197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248527.P12102894766394294197

namespace A248527

/-- `2*(1+eq[13, A256970(n+1)])` -/
def P12102894766394294197.Spec : Prop :=
  ∀ n, (P12102894766394294197.a n : ℤ) = A248527 (n + 1)

end A248527

/-! ## A248527.P10928135181336635682

`A103517(eq[13, A256970(n+1)])`
-/

namespace A248527.P10928135181336635682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248527.P10928135181336635682

namespace A248527

/-- `A103517(eq[13, A256970(n+1)])` -/
def P10928135181336635682.Spec : Prop :=
  ∀ n, P10928135181336635682.a n = A248527 (n + 1)

end A248527

/-! ## A248527.P5620247456348443823

`A005843(eq[13, A256970(n+1)]+1)`
-/

namespace A248527.P5620247456348443823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A248527.P5620247456348443823

namespace A248527

/-- `A005843(eq[13, A256970(n+1)]+1)` -/
def P5620247456348443823.Spec : Prop :=
  ∀ n, P5620247456348443823.a n = A248527 (n + 1)

end A248527

/-! ## A248527.P10970234386479212780

`A004275(eq[13, A256970(n+1)]+2)`
-/

namespace A248527.P10970234386479212780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A248527.P10970234386479212780

namespace A248527

/-- `A004275(eq[13, A256970(n+1)]+2)` -/
def P10970234386479212780.Spec : Prop :=
  ∀ n, P10970234386479212780.a n = A248527 (n + 1)

end A248527

/-! ## A248527.P15753991744036523690

`eq[5, A247339(n+1)]+1`
-/

namespace A248527.P15753991744036523690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248527.P15753991744036523690

namespace A248527

/-- `eq[5, A247339(n+1)]+1` -/
def P15753991744036523690.Spec : Prop :=
  ∀ n, (P15753991744036523690.a n : ℤ) = A248527 (n + 1)

end A248527

/-! ## A248527.P509217468246526466

`eq[5, A247339(A028310(n))]`
-/

namespace A248527.P509217468246526466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248527.P509217468246526466

namespace A248527

/-- `eq[5, A247339(A028310(n))]` -/
def P509217468246526466.Spec : Prop :=
  ∀ n, (P509217468246526466.a n : ℤ) = A248527 (n + 1)

end A248527

/-! ## A248527.P6153107414183730915

`A020725(eq[5, A247339(n+1)])`
-/

namespace A248527.P6153107414183730915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248527.P6153107414183730915

namespace A248527

/-- `A020725(eq[5, A247339(n+1)])` -/
def P6153107414183730915.Spec : Prop :=
  ∀ n, P6153107414183730915.a n = A248527 (n + 1)

end A248527

/-! ## A248527.P7948098968147016726

`A065475(eq[5, A247339(n+1)])`
-/

namespace A248527.P7948098968147016726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248527.P7948098968147016726

namespace A248527

/-- `A065475(eq[5, A247339(n+1)])` -/
def P7948098968147016726.Spec : Prop :=
  ∀ n, P7948098968147016726.a n = A248527 (n + 1)

end A248527

/-!
# A248528: Numbers k such that the smallest prime divisor of k^2+1 is 17.

The programs for A248528, there is no canonical definition to state claims against.
-/

/-! ## A248528.P1592575257902905831

`A103517(eq[17, A256970(n+1)])`
-/

namespace A248528.P1592575257902905831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248528.P1592575257902905831

/-! ## A248528.P14775851741624500067

`A005408(eq[17, A256970(n+1)])+1`
-/

namespace A248528.P14775851741624500067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A248528.P14775851741624500067

/-! ## A248528.P13568714864229523550

`A005843(eq[17, A256970(n+1)]+1)`
-/

namespace A248528.P13568714864229523550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A248528.P13568714864229523550

/-! ## A248528.P9498842876757638593

`A004275(eq[17, A256970(n+1)]+2)`
-/

namespace A248528.P9498842876757638593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A248528.P9498842876757638593

/-! ## A248528.P11902348103408665654

`A004273(eq[17, A256970(n+1)])+3`
-/

namespace A248528.P11902348103408665654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 3

end

end A248528.P11902348103408665654

/-! ## A248528.P5444668387417181680

`eq[4, A247339(n+1)]+1`
-/

namespace A248528.P5444668387417181680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248528.P5444668387417181680

/-! ## A248528.P17175682271521270010

`eq[4, A247339(A028310(n))]`
-/

namespace A248528.P17175682271521270010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248528.P17175682271521270010

/-!
# A248529: Numbers k such that the smallest prime divisor of k^2+1 is 29.

The programs for A248529, there is no canonical definition to state claims against.
-/

/-! ## A248529.P13137994948933362650

`eq[12, A247339(A028310(n))]`
-/

namespace A248529.P13137994948933362650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248529.P13137994948933362650

/-! ## A248529.P12773614709113502252

`A014681(eq[12, A247339(n+1)])`
-/

namespace A248529.P12773614709113502252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248529.P12773614709113502252

/-! ## A248529.P14484667332713375208

`A020725(eq[12, A247339(n+1)])`
-/

namespace A248529.P14484667332713375208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248529.P14484667332713375208

/-! ## A248529.P4426691593867278837

`A014681(eq[29, A089120(n+1)])`
-/

namespace A248529.P4426691593867278837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248529.P4426691593867278837

/-! ## A248529.P4762701089198036396

`A065475(eq[29, A089120(n+1)])`
-/

namespace A248529.P4762701089198036396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248529.P4762701089198036396

/-!
# A248530: Numbers k such that the smallest prime divisor of k^2+1 is 37.

The programs for A248530, there is no canonical definition to state claims against.
-/

/-! ## A248530.P3217736262796809143

`A103517(eq[37, A256970(n+1)])`
-/

namespace A248530.P3217736262796809143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248530.P3217736262796809143

/-! ## A248530.P586300450521193739

`eq[6, A247339(round(acot(n)+n))]`
-/

namespace A248530.P586300450521193739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248530.P586300450521193739

/-! ## A248530.P9163848300410694821

`eq[6, A247339(A028310(n))]`
-/

namespace A248530.P9163848300410694821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248530.P9163848300410694821

/-! ## A248530.P13607752827108312775

`A014681(eq[6, A247339(n+1)])`
-/

namespace A248530.P13607752827108312775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248530.P13607752827108312775

/-! ## A248530.P13635414454197368791

`A020725(eq[6, A247339(n+1)])`
-/

namespace A248530.P13635414454197368791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248530.P13635414454197368791

/-! ## A248530.P9076727057424651178

`A065475(eq[6, A247339(n+1)])`
-/

namespace A248530.P9076727057424651178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248530.P9076727057424651178

/-! ## A248530.P18094097415502200062

`eq[6, A247339(A060000(n+1))]`
-/

namespace A248530.P18094097415502200062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248530.P18094097415502200062

/-!
# A248531: Numbers k such that the smallest prime divisor of k^2+1 is 41.

The programs for A248531, there is no canonical definition to state claims against.
-/

/-! ## A248531.P4600909781457845477

`A103517(eq[41, A256970(n+1)])`
-/

namespace A248531.P4600909781457845477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248531.P4600909781457845477

/-! ## A248531.P10538322728220887301

`eq[9, A247339(round(acot(n)+n))]`
-/

namespace A248531.P10538322728220887301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248531.P10538322728220887301

/-! ## A248531.P4675170025989851777

`eq[9, A247339(A028310(n))]`
-/

namespace A248531.P4675170025989851777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248531.P4675170025989851777

/-! ## A248531.P15830657729764722244

`A020725(eq[9, A247339(n+1)])`
-/

namespace A248531.P15830657729764722244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248531.P15830657729764722244

/-! ## A248531.P2396099139149875031

`A065475(eq[9, A247339(n+1)])`
-/

namespace A248531.P2396099139149875031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248531.P2396099139149875031

/-! ## A248531.P12077085233584796980

`A326178(eq[9, A247339(n+1)])`
-/

namespace A248531.P12077085233584796980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248531.P12077085233584796980

/-! ## A248531.P3660894346524097900

`A065475(eq[41, A089120(n+1)])`
-/

namespace A248531.P3660894346524097900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248531.P3660894346524097900

/-! ## A248531.P3044677807640995964

`eq[9, A247339(A060000(n+1))]`
-/

namespace A248531.P3044677807640995964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248531.P3044677807640995964

/-!
# A248532: Numbers k such that the smallest prime divisor of k^2+1 is 53.

The programs for A248532, there is no canonical definition to state claims against.
-/

/-! ## A248532.P11798584625462039335

`eq[23, A247339(A028310(n))]`
-/

namespace A248532.P11798584625462039335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248532.P11798584625462039335

/-! ## A248532.P15251754078493596608

`A020725(eq[23, A247339(n+1)])`
-/

namespace A248532.P15251754078493596608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248532.P15251754078493596608

/-! ## A248532.P13827088880299462024

`A153152(eq[23, A247339(n+1)])`
-/

namespace A248532.P13827088880299462024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248532.P13827088880299462024

/-! ## A248532.P5579924042617686711

`A326178(eq[23, A247339(n+1)])`
-/

namespace A248532.P5579924042617686711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248532.P5579924042617686711

/-! ## A248532.P14396527115760135161

`eq[23, A247339(A060000(n+1))]`
-/

namespace A248532.P14396527115760135161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248532.P14396527115760135161

/-!
# A248533: Number of length n+3 0..4 arrays with every four consecutive terms having the sum of some three elements equal to three times the fourth.

The programs for A248533, the canonical program `A248533.P12172224158410862603` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248533 has offset 1).

The definition of A248533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248533.P12172224158410862603

`6*A288732(n)+89`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248533

/-- `6*A288732(n)+89` -/
def P12172224158410862603.Spec : Prop :=
  ∀ n, P12172224158410862603.a n = A248533 (n + 1)

theorem P12172224158410862603.correct : P12172224158410862603.Spec := by
  intro n
  simp only [A248533, Nat.add_sub_cancel]

end A248533

/-! ## A248533.P4055653018804924912

`a(n-1)+2*a(n-4)-2*a(n-5)` with `a(0)=101, a(1)=113, a(2)=125, a(3)=137, a(4)=149`
-/

namespace A248533.P4055653018804924912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [101, 113, 125, 137, 149] fun n a =>
  a (n - 1) + 2 * a (n - 4) - 2 * a (n - 5)

end

end A248533.P4055653018804924912

namespace A248533

/-- `a(n-1)+2*a(n-4)-2*a(n-5)` -/
def P4055653018804924912.Spec : Prop :=
  ∀ n, P4055653018804924912.a n = A248533 (n + 1)

end A248533

/-! ## A248533.P15420963748510602341

`A248537(∑[n+4]+3)`
-/

namespace A248533.P15420963748510602341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A248533.P15420963748510602341

namespace A248533

/-- `A248537(∑[n+4]+3)` -/
def P15420963748510602341.Spec : Prop :=
  ∀ n, P15420963748510602341.a n = A248533 (n + 1)

end A248533

/-! ## A248533.P8285682818392484769

`or(1, A248537(A155212(n)+5))`
-/

namespace A248533.P8285682818392484769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A248537 (A155212 n + 5).toNat)

end

end A248533.P8285682818392484769

namespace A248533

/-- `or(1, A248537(A155212(n)+5))` -/
def P8285682818392484769.Spec : Prop :=
  ∀ n, P8285682818392484769.a n = A248533 (n + 1)

end A248533

/-! ## A248533.P13074121084807161112

`or(1, A248537(A046691(n+2)+1))`
-/

namespace A248533.P13074121084807161112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A248537 (A046691 (n + 2) + 1).toNat)

end

end A248533.P13074121084807161112

namespace A248533

/-- `or(1, A248537(A046691(n+2)+1))` -/
def P13074121084807161112.Spec : Prop :=
  ∀ n, P13074121084807161112.a n = A248533 (n + 1)

end A248533

/-! ## A248533.P3429885543011599488

`A248537(A046691(n+2)+1)+A000007(n+1)`
-/

namespace A248533.P3429885543011599488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A046691 (n + 2) + 1).toNat + A000007 (n + 1)

end

end A248533.P3429885543011599488

namespace A248533

/-- `A248537(A046691(n+2)+1)+A000007(n+1)` -/
def P3429885543011599488.Spec : Prop :=
  ∀ n, P3429885543011599488.a n = A248533 (n + 1)

end A248533

/-! ## A248533.P6407200081215603726

`A248537(A046691(n+2)+1)%A248534(n+1)`
-/

namespace A248533.P6407200081215603726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248537 (A046691 (n + 2) + 1).toNat) (A248534 (n + 1))

end

end A248533.P6407200081215603726

namespace A248533

/-- `A248537(A046691(n+2)+1)%A248534(n+1)` -/
def P6407200081215603726.Spec : Prop :=
  ∀ n, P6407200081215603726.a n = A248533 (n + 1)

end A248533

/-! ## A248533.P2042342530448053985

`A000265(A130321(n))*A248537(A055998(n+2))`
-/

namespace A248533.P2042342530448053985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A130321 n).toNat * A248537 (A055998 (n + 2)).toNat

end

end A248533.P2042342530448053985

namespace A248533

/-- `A000265(A130321(n))*A248537(A055998(n+2))` -/
def P2042342530448053985.Spec : Prop :=
  ∀ n, P2042342530448053985.a n = A248533 (n + 1)

end A248533

/-!
# A248534: Number of length n+3 0..5 arrays with every four consecutive terms having the sum of some three elements equal to three times the fourth.

The programs for A248534, there is no canonical definition to state claims against.
-/

/-! ## A248534.P11930734082696572777

`A248537(∑[n+5]+6)`
-/

namespace A248534.P11930734082696572777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A248534.P11930734082696572777

/-! ## A248534.P6156459090283110524

`lcm(2, A248537(Δ[A023545(n+1)]))`
-/

namespace A248534.P6156459090283110524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A248537 (f1 (n + 1) - f1 n).toNat)

end

end A248534.P6156459090283110524

/-! ## A248534.P2340654858309626625

`A248537(Δ[A023545(n+1)])%A067984(n)²`
-/

namespace A248534.P2340654858309626625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248537 (f1 (n + 1) - f1 n).toNat) (A067984 n ^ 2)

end

end A248534.P2340654858309626625

/-! ## A248534.P9051634806089881235

`A248537(Δ[A023545(n+1)])+A000007(n+1)`
-/

namespace A248534.P9051634806089881235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A248534.P9051634806089881235

/-! ## A248534.P4573356645990348564

`A152271(2*n)*A248537(Δ[A023545(n+1)])`
-/

namespace A248534.P4573356645990348564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (2 * n) * A248537 (f1 (n + 1) - f1 n).toNat

end

end A248534.P4573356645990348564

/-! ## A248534.P2200208400094814595

`A248537(A000096(n+4)-3)%A248535(n+1)`
-/

namespace A248534.P2200208400094814595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248537 (A000096 (n + 4) - 3).toNat) (A248535 (n + 1))

end

end A248534.P2200208400094814595

/-! ## A248534.P703374751613173611

`A248537(Δ[A023545(n+1)])+A035444(2*n+1)`
-/

namespace A248534.P703374751613173611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (f1 (n + 1) - f1 n).toNat + A035444 (2 * n + 1)

end

end A248534.P703374751613173611

/-! ## A248534.P7153737027646287316

`A014963(20*(n+1))*A248537(Δ[A023545(n+1)])`
-/

namespace A248534.P7153737027646287316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (20 * (n + 1)) * A248537 (f1 (n + 1) - f1 n).toNat

end

end A248534.P7153737027646287316

/-! ## A248534.P10314896492731158394

`A001221(A126329(n+1))*A248537(A000096(n+4)-3)`
-/

namespace A248534.P10314896492731158394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A126329 (n + 1)).toNat * A248537 (A000096 (n + 4) - 3).toNat

end

end A248534.P10314896492731158394

/-! ## A248534.P1274783941251787177

`A248537(A000096(n+4)-3)+A008683(2*A089551(n+1))`
-/

namespace A248534.P1274783941251787177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A000096 (n + 4) - 3).toNat + A008683 (2 * A089551 (n + 1)).toNat

end

end A248534.P1274783941251787177

/-!
# A248535: Number of length n+3 0..6 arrays with every four consecutive terms having the sum of some three elements equal to three times the fourth.

The programs for A248535, there is no canonical definition to state claims against.
-/

/-! ## A248535.P14058831507434009665

`A248537((n+4)²-∑[n+1]+1)`
-/

namespace A248535.P14058831507434009665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A248535.P14058831507434009665

/-! ## A248535.P7172666490595273940

`or(1, A248537(A052905(n+3)))`
-/

namespace A248535.P7172666490595273940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A248537 (A052905 (n + 3)).toNat)

end

end A248535.P7172666490595273940

/-! ## A248535.P4358072033900687656

`or(1, A248537(A000124(n+6)-6))`
-/

namespace A248535.P4358072033900687656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A248537 (A000124 (n + 6) - 6).toNat)

end

end A248535.P4358072033900687656

/-! ## A248535.P7748883863887288851

`A248537(A052905(n+3))%A248536(n+1)`
-/

namespace A248535.P7748883863887288851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248537 (A052905 (n + 3)).toNat) (A248536 (n + 1))

end

end A248535.P7748883863887288851

/-! ## A248535.P6593779418747141550

`lcm(A008836(n+1), A248537(A052905(n+3)))`
-/

namespace A248535.P6593779418747141550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A248537 (A052905 (n + 3)).toNat)

end

end A248535.P6593779418747141550

/-! ## A248535.P2838642704786811760

`A248537(A052905(n+3))*A262681(A079886(n+1))`
-/

namespace A248535.P2838642704786811760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A052905 (n + 3)).toNat * A262681 (A079886 (n + 1)).toNat

end

end A248535.P2838642704786811760

/-!
# A248536: Number of length n+3 0..7 arrays with every four consecutive terms having the sum of some three elements equal to three times the fourth.

The programs for A248536, there is no canonical definition to state claims against.
-/

/-! ## A248536.P18209038396791871234

`A248537(A055999(n+4))`
-/

namespace A248536.P18209038396791871234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A055999 (n + 4)).toNat

end

end A248536.P18209038396791871234

/-! ## A248536.P378876360463175384

`A248537(Δ[A026054(n+4)])`
-/

namespace A248536.P378876360463175384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (f1 (n + 1) - f1 n).toNat

end

end A248536.P378876360463175384

/-! ## A248536.P3520396679973164220

`A248537(A000124(n+7)-7)`
-/

namespace A248536.P3520396679973164220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A000124 (n + 7) - 7).toNat

end

end A248536.P3520396679973164220

/-! ## A248536.P2077556106957302330

`A248537(A000217(n+6)+n+1)`
-/

namespace A248536.P2077556106957302330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A248536.P2077556106957302330

/-! ## A248536.P17223197526203410850

`A248537(A167614(n+5)+n-2)`
-/

namespace A248536.P17223197526203410850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A167614 (n + 5) + ((n : ℤ) - 2)).toNat

end

end A248536.P17223197526203410850

/-!
# A248538: Number of length 1+3 0..n arrays with every four consecutive terms having the sum of some three elements equal to three times the fourth.

The programs for A248538, the canonical program `A248538.P7326384781602204052` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248538 has offset 1).

The definition of A248538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248538.P7326384781602204052

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` with `a(0)=2, a(1)=15, a(2)=52, a(3)=101, a(4)=198, a(5)=331, a(6)=512`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248538

/-- `2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` -/
def P7326384781602204052.Spec : Prop :=
  ∀ n, P7326384781602204052.a n = A248538 (n + 1)

theorem P7326384781602204052.correct : P7326384781602204052.Spec := by
  intro n
  simp only [A248538, Nat.add_sub_cancel]

end A248538

/-! ## A248538.P6373937516277147096

`(n+2)^4-A249291(n+1)`
-/

namespace A248538.P6373937516277147096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 4 : ℤ) - A249291 (n + 1)

end

end A248538.P6373937516277147096

namespace A248538

/-- `(n+2)^4-A249291(n+1)` -/
def P6373937516277147096.Spec : Prop :=
  ∀ n, P6373937516277147096.a n = A248538 (n + 1)

theorem P6373937516277147096.correct : P6373937516277147096.Spec := by
  intro n
  simp only [A248538, Nat.add_sub_cancel, A248538.P6373937516277147096.a, A248538.P7326384781602204052.a, A249291, A249291.P11440317869399723647.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A248538

/-! ## A248538.P1921426723142740448

`(A001489(n+2)^4)%A249291(n+1)`
-/

namespace A248538.P1921426723142740448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001489 (n + 2) ^ 4) (A249291 (n + 1))

end

end A248538.P1921426723142740448

namespace A248538

/-- `(A001489(n+2)^4)%A249291(n+1)` -/
def P1921426723142740448.Spec : Prop :=
  ∀ n, P1921426723142740448.a n = A248538 (n + 1)

end A248538

/-! ## A248538.P13543435891584562515

`A248537(∑[n]+1)`
-/

namespace A248538.P13543435891584562515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A248538.P13543435891584562515

namespace A248538

/-- `A248537(∑[n]+1)` -/
def P13543435891584562515.Spec : Prop :=
  ∀ n, P13543435891584562515.a n = A248538 (n + 1)

end A248538

/-! ## A248538.P16883160748359346072

`record[A248537(A106247(n))]`
-/

namespace A248538.P16883160748359346072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A106247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248538.P16883160748359346072

namespace A248538

/-- `record[A248537(A106247(n))]` -/
def P16883160748359346072.Spec : Prop :=
  ∀ n, P16883160748359346072.a n = A248538 (n + 1)

end A248538

/-! ## A248538.P14716564628933919795

`record[A248537(A056534(n+1))]`
-/

namespace A248538.P14716564628933919795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248538.P14716564628933919795

namespace A248538

/-- `record[A248537(A056534(n+1))]` -/
def P14716564628933919795.Spec : Prop :=
  ∀ n, P14716564628933919795.a n = A248538 (n + 1)

end A248538

/-! ## A248538.P8530661664048936344

`record[A248537(A055802(n+2))]`
-/

namespace A248538.P8530661664048936344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A055802 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248538.P8530661664048936344

namespace A248538

/-- `record[A248537(A055802(n+2))]` -/
def P8530661664048936344.Spec : Prop :=
  ∀ n, P8530661664048936344.a n = A248538 (n + 1)

end A248538

/-!
# A248539: Number of length 2+3 0..n arrays with every four consecutive terms having the sum of some three elements equal to three times the fourth.

The programs for A248539, there is no canonical definition to state claims against.
-/

/-! ## A248539.P6504409755800434192

`A248537(∑[n+1]+2)`
-/

namespace A248539.P6504409755800434192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A248539.P6504409755800434192

/-! ## A248539.P1995476996332973758

`A248537(A000096(n)+3)+A000038(n+2)`
-/

namespace A248539.P1995476996332973758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A000096 n + 3).toNat + A000038 (n + 2)

end

end A248539.P1995476996332973758

/-! ## A248539.P9617692652897448111

`A248537(A000096(n)+3)%A248535(n+1)`
-/

namespace A248539.P9617692652897448111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248537 (A000096 n + 3).toNat) (A248535 (n + 1))

end

end A248539.P9617692652897448111

/-! ## A248539.P5642647306364578296

`lcm(A008836(n+1), A248537(A000096(n)+3))`
-/

namespace A248539.P5642647306364578296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A248537 (A000096 n + 3).toNat)

end

end A248539.P5642647306364578296

/-! ## A248539.P8112356708681643600

`A248537(A000096(n)+3)+A090192(and(n+2, -2))`
-/

namespace A248539.P8112356708681643600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A000096 n + 3).toNat + A090192 (Int.land (n + 2 : ℤ) (-2)).toNat

end

end A248539.P8112356708681643600

/-! ## A248539.P128583191723312503

`A001222(A007918(n))*A248537(A000096(n)+3)`
-/

namespace A248539.P128583191723312503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A248537 (A000096 n + 3).toNat

end

end A248539.P128583191723312503

/-! ## A248539.P386767444800276986

`A007318(A057944(n))*A248537(A000096(n)+3)`
-/

namespace A248539.P386767444800276986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A057944 n).toNat * A248537 (A000096 n + 3).toNat

end

end A248539.P386767444800276986

/-! ## A248539.P9748081068706801197

`A248537(A000096(n)+3)/A119335(A000217(n))`
-/

namespace A248539.P9748081068706801197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248537 (A000096 n + 3).toNat : ℚ) / (A119335 (A000217 n).toNat : ℚ)

end

end A248539.P9748081068706801197

/-! ## A248539.P16099089811061733734

`A248537(A000096(n)+3)+A010051(A087112(n+1))`
-/

namespace A248539.P16099089811061733734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A000096 n + 3).toNat + A010051 (A087112 (n + 1)).toNat

end

end A248539.P16099089811061733734

/-! ## A248539.P3018183074895747461

`A001222(A002476(n+1))*A248537(A000096(n)+3)`
-/

namespace A248539.P3018183074895747461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002476 (n + 1)).toNat * A248537 (A000096 n + 3).toNat

end

end A248539.P3018183074895747461

/-! ## A248539.P13411678869134850695

`A014963(A120624(n+1))*A248537(A000096(n)+3)`
-/

namespace A248539.P13411678869134850695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A120624 (n + 1)).toNat * A248537 (A000096 n + 3).toNat

end

end A248539.P13411678869134850695

/-! ## A248539.P17315760497389633070

`A010227(xor(2, n²))*A248537(A000096(n)+3)`
-/

namespace A248539.P17315760497389633070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010227 (Nat.xor 2 (n ^ 2)) * A248537 (A000096 n + 3).toNat

end

end A248539.P17315760497389633070

/-!
# A248540: Number of length 3+3 0..n arrays with every four consecutive terms having the sum of some three elements equal to three times the fourth.

The programs for A248540, there is no canonical definition to state claims against.
-/

/-! ## A248540.P12368890222298980942

`A248537(∑[n+2]+4)`
-/

namespace A248540.P12368890222298980942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A248540.P12368890222298980942

/-! ## A248540.P11276862573469621189

`lcm((-1)^n, A248537(A167614(n+1)))`
-/

namespace A248540.P11276862573469621189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A248537 (A167614 (n + 1)).toNat)

end

end A248540.P11276862573469621189

/-! ## A248540.P7189805002865490531

`A248537(A167614(n+1))%A195744(n)`
-/

namespace A248540.P7189805002865490531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248537 (A167614 (n + 1)).toNat) (A195744 n)

end

end A248540.P7189805002865490531

/-! ## A248540.P2519961074004660462

`A248537(A034856(n+1)+5)%A248536(n+1)`
-/

namespace A248540.P2519961074004660462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248537 (A034856 (n + 1) + 5).toNat) (A248536 (n + 1))

end

end A248540.P2519961074004660462

/-! ## A248540.P11414971967728254619

`A248537(A167614(n+1))+A000007(A004770(n+1))`
-/

namespace A248540.P11414971967728254619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A167614 (n + 1)).toNat + A000007 (A004770 (n + 1)).toNat

end

end A248540.P11414971967728254619

/-! ## A248540.P12089282549838868104

`A248537(A167614(n+1))+A096501(2*A173971(n+1))`
-/

namespace A248540.P12089282549838868104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A167614 (n + 1)).toNat + A096501 (2 * A173971 (n + 1)).toNat

end

end A248540.P12089282549838868104

/-!
# A248541: Number of length 4+3 0..n arrays with every four consecutive terms having the sum of some three elements equal to three times the fourth.

The programs for A248541, there is no canonical definition to state claims against.
-/

/-! ## A248541.P6927846302807482417

`A248537(∑[n+3]+7)`
-/

namespace A248541.P6927846302807482417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A248541.P6927846302807482417

/-! ## A248541.P2571486472147071497

`or(and(1, n), A248537(A167614(n+2)+1))`
-/

namespace A248541.P2571486472147071497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 n : ℤ) (A248537 (A167614 (n + 2) + 1).toNat)

end

end A248541.P2571486472147071497

/-! ## A248541.P9097101619005024788

`record[A248537(A038722(A027379(n)))]`
-/

namespace A248541.P9097101619005024788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A038722 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248541.P9097101619005024788

/-! ## A248541.P13908658606833221482

`A248537(A145018(n+4))%A304666(n+1)`
-/

namespace A248541.P13908658606833221482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248537 (A145018 (n + 4)).toNat) (A304666 (n + 1))

end

end A248541.P13908658606833221482

/-! ## A248541.P16231316573741807051

`or(A000035(n), A248537(A167614(n+2)+1))`
-/

namespace A248541.P16231316573741807051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A248537 (A167614 (n + 2) + 1).toNat)

end

end A248541.P16231316573741807051

/-! ## A248541.P4483269148837443831

`A248537(A167614(n+2)+1)%A248536(n+1)`
-/

namespace A248541.P4483269148837443831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248537 (A167614 (n + 2) + 1).toNat) (A248536 (n + 1))

end

end A248541.P4483269148837443831

/-!
# A248542: Number of length 5+3 0..n arrays with every four consecutive terms having the sum of some three elements equal to three times the fourth.

The programs for A248542, there is no canonical definition to state claims against.
-/

/-! ## A248542.P15841813996450187462

`A248537(A167499(n+3))`
-/

namespace A248542.P15841813996450187462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A167499 (n + 3)).toNat

end

end A248542.P15841813996450187462

/-! ## A248542.P3907505720295605270

`A248537(A155212(n)+13)`
-/

namespace A248542.P3907505720295605270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A155212 n + 13).toNat

end

end A248542.P3907505720295605270

/-! ## A248542.P13960875938222905207

`A248537(A167614(n+3)+2)`
-/

namespace A248542.P13960875938222905207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A167614 (n + 3) + 2).toNat

end

end A248542.P13960875938222905207

/-! ## A248542.P9857057316114416943

`A248537(A000217(n+4)+5)`
-/

namespace A248542.P9857057316114416943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A000217 (n + 4) + 5).toNat

end

end A248542.P9857057316114416943

/-! ## A248542.P16539614405778428260

`A248537(A000096(n+4)-(n-1))`
-/

namespace A248542.P16539614405778428260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A248542.P16539614405778428260

/-! ## A248542.P16475783454588517881

`A248537(A038722(Δ[A023545(n+1)]))`
-/

namespace A248542.P16475783454588517881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A248542.P16475783454588517881

/-!
# A248543: Number of length 6+3 0..n arrays with every four consecutive terms having the sum of some three elements equal to three times the fourth.

The programs for A248543, there is no canonical definition to state claims against.
-/

/-! ## A248543.P5646102256034473418

`A248537(A000217(n+5)+6)`
-/

namespace A248543.P5646102256034473418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A000217 (n + 5) + 6).toNat

end

end A248543.P5646102256034473418

/-! ## A248543.P13132028424540517795

`A248537(A161680(n+6)+6)`
-/

namespace A248543.P13132028424540517795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A161680 (n + 6) + 6).toNat

end

end A248543.P13132028424540517795

/-! ## A248543.P14151548118150657320

`A248537(A046691(n+3)+10)`
-/

namespace A248543.P14151548118150657320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A046691 (n + 3) + 10).toNat

end

end A248543.P14151548118150657320

/-! ## A248543.P13860336886896413778

`A248537(A005843(n+7)+A000124(n+3))`
-/

namespace A248543.P13860336886896413778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A005843 (n + 7) + A000124 (n + 3)).toNat

end

end A248543.P13860336886896413778

/-! ## A248543.P9044926658511557377

`A248537(A167499(n+6)-A005843(n+6))`
-/

namespace A248543.P9044926658511557377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A167499 (n + 6) - A005843 (n + 6)).toNat

end

end A248543.P9044926658511557377

/-!
# A248544: Number of length 7+3 0..n arrays with every four consecutive terms having the sum of some three elements equal to three times the fourth.

The programs for A248544, there is no canonical definition to state claims against.
-/

/-! ## A248544.P2478708890148184526

`A248537(A167487(n+5))`
-/

namespace A248544.P2478708890148184526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A167487 (n + 5)).toNat

end

end A248544.P2478708890148184526

/-! ## A248544.P6732402204635837500

`A248537(A000217(n+6)+7)`
-/

namespace A248544.P6732402204635837500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A000217 (n + 6) + 7).toNat

end

end A248544.P6732402204635837500

/-! ## A248544.P1650899732760756566

`A248537(A034856(n+5)+9)`
-/

namespace A248544.P1650899732760756566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A034856 (n + 5) + 9).toNat

end

end A248544.P1650899732760756566

/-! ## A248544.P5595117093234782232

`A248537(A055999(n)+A016777(n+9))`
-/

namespace A248544.P5595117093234782232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A055999 n + A016777 (n + 9)).toNat

end

end A248544.P5595117093234782232

/-! ## A248544.P12575546881195562978

`A248537(A167499(n+7)-A004273(n+7))`
-/

namespace A248544.P12575546881195562978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248537 (A167499 (n + 7) - A004273 (n + 7)).toNat

end

end A248544.P12575546881195562978

/-!
# A248545: a(n+1) = a(n)^2 + 75.

The programs for A248545, there is no canonical definition to state claims against.
-/

/-! ## A248545.P1253443672522400349

`a(n-1)²+75` with `a(0)=0`
-/

namespace A248545.P1253443672522400349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 + 75

end

end A248545.P1253443672522400349

/-! ## A248545.P9699567629466554633

`a(n-1)*a(n-1)+75` with `a(0)=0`
-/

namespace A248545.P9699567629466554633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * a (n - 1) + 75

end

end A248545.P9699567629466554633

/-!
# A248546: Numbers k such that 75^k - 2 is prime.

The programs for A248546, there is no canonical definition to state claims against.
-/

/-! ## A248546.P367161066760182297

`A358457(or(A324838(n+1), A325755(n+1)))`
-/

namespace A248546.P367161066760182297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358457 (Int.lor (A324838 (n + 1)) (A325755 (n + 1))).toNat

end

end A248546.P367161066760182297

/-!
# A248549: Numbers n such that the smallest prime divisor of n^2+1 is 61.

The programs for A248549, there is no canonical definition to state claims against.
-/

/-! ## A248549.P8181748900486492203

`eq[11, A247339(round(acot(n)+n))]`
-/

namespace A248549.P8181748900486492203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248549.P8181748900486492203

/-! ## A248549.P3784265937224095239

`eq[11, A247339(A028310(n))]`
-/

namespace A248549.P3784265937224095239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248549.P3784265937224095239

/-! ## A248549.P18414546934545218448

`A020725(eq[11, A247339(n+1)])`
-/

namespace A248549.P18414546934545218448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248549.P18414546934545218448

/-! ## A248549.P11932222308440458701

`A153152(eq[11, A247339(n+1)])`
-/

namespace A248549.P11932222308440458701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248549.P11932222308440458701

/-! ## A248549.P10546605337037238521

`A181569(eq[11, A247339(n+1)])`
-/

namespace A248549.P10546605337037238521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248549.P10546605337037238521

/-!
# A248550: Numbers n such that the smallest prime divisor of n^2+1 is 73.

The programs for A248550, there is no canonical definition to state claims against.
-/

/-! ## A248550.P8817628488650706681

`eq[27, A247339(A060000(n+1))]`
-/

namespace A248550.P8817628488650706681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248550.P8817628488650706681

/-!
# A248553: Numbers n such that the smallest prime divisor of n^2+1 is 101.

The programs for A248553, there is no canonical definition to state claims against.
-/

/-! ## A248553.P3232917917232214164

`eq[10, A247339(A028310(n))]`
-/

namespace A248553.P3232917917232214164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248553.P3232917917232214164

/-! ## A248553.P14777218367200936814

`A065475(eq[10, A247339(n+1)])`
-/

namespace A248553.P14777218367200936814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248553.P14777218367200936814

/-! ## A248553.P6967541794429956429

`A181569(eq[10, A247339(n+1)])`
-/

namespace A248553.P6967541794429956429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248553.P6967541794429956429

/-!
# A248554: Numbers k such that the sum of the digital roots of the first k primes is also prime; increasingly sorted.

The programs for A248554, there is no canonical definition to state claims against.
-/

/-! ## A248554.P8470896668460777104

`eq[A026796(A122461(n)), A351978(n)]`
-/

namespace A248554.P8470896668460777104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (A122461 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351978 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248554.P8470896668460777104

/-! ## A248554.P10657534260367441069

`A349903(A002865(2*n))+A220570(n+1)`
-/

namespace A248554.P10657534260367441069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349903 (A002865 (2 * n)).toNat + A220570 (n + 1)

end

end A248554.P10657534260367441069

/-! ## A248554.P9069583776362567303

`A131042(lt[A234943(n+1), A004016(3*n+1)]+1)`
-/

namespace A248554.P9069583776362567303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131042 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A248554.P9069583776362567303

/-!
# A248555: a(n) is the concatenation of 3n-2, 3n and 3n-1.

The programs for A248555, there is no canonical definition to state claims against.
-/

/-! ## A248555.P9475790718851164888

`A261618(3*n+1)+p?[A172507(n+1)]`
-/

namespace A248555.P9475790718851164888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261618 (3 * n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248555.P9475790718851164888

/-!
# A248556: Concatenate (3n-2,3n-1,3n).

The programs for A248556, there is no canonical definition to state claims against.
-/

/-! ## A248556.P2853303782306607445

`A082252(n+1)*3`
-/

namespace A248556.P2853303782306607445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082252 (n + 1) * 3

end

end A248556.P2853303782306607445

/-! ## A248556.P6039085786337127481

`lcm(A010704(n), A082252(n+1))`
-/

namespace A248556.P6039085786337127481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010704 n) (A082252 (n + 1))

end

end A248556.P6039085786337127481

/-! ## A248556.P1781122503022889275

`A261618(3*n+1)+2`
-/

namespace A248556.P1781122503022889275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261618 (3 * n + 1) + 2

end

end A248556.P1781122503022889275

/-! ## A248556.P5810626000429018152

`A001703(3*n+1)`
-/

namespace A248556.P5810626000429018152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001703 (3 * n + 1)

end

end A248556.P5810626000429018152

/-! ## A248556.P1958219855287653228

`3*A074991(3*n+1)`
-/

namespace A248556.P1958219855287653228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A074991 (3 * n + 1)

end

end A248556.P1958219855287653228

/-!
# A248558: Squares of the digits of the decimal expansion of e.

The programs for A248558, there is no canonical definition to state claims against.
-/

/-! ## A248558.P10048581327265020480

`A001113(n)²`
-/

namespace A248558.P10048581327265020480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) ^ 2

end

end A248558.P10048581327265020480

/-! ## A248558.P10052140411028242348

`(9-A121239(n))²`
-/

namespace A248558.P10052140411028242348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A121239 (n + 1)) ^ 2

end

end A248558.P10052140411028242348

/-! ## A248558.P4630904228331488350

`A098363(∑[4*n])`
-/

namespace A248558.P4630904228331488350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098363 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248558.P4630904228331488350

/-! ## A248558.P4265109999147745583

`A110779(Δ[n²])²`
-/

namespace A248558.P4265109999147745583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A248558.P4265109999147745583

/-! ## A248558.P16692130002561135686

`A095711(∑[n]+1)²`
-/

namespace A248558.P16692130002561135686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A248558.P16692130002561135686

/-! ## A248558.P10495999201935193

`A138115(∑[n+1])²`
-/

namespace A248558.P10495999201935193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138115 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A248558.P10495999201935193

/-! ## A248558.P15601986088451240678

`A098363(∑[n+3])²`
-/

namespace A248558.P15601986088451240678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098363 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A248558.P15601986088451240678

/-! ## A248558.P7351992342840624623

`(A098363(∑[n])/2)²`
-/

namespace A248558.P7351992342840624623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A098363 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2) ^ 2

end

end A248558.P7351992342840624623

/-! ## A248558.P1443046063057533849

`A001355(2*(n+1))²`
-/

namespace A248558.P1443046063057533849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1)) ^ 2

end

end A248558.P1443046063057533849

/-! ## A248558.P5598536635358561632

`floor(A091131(n)+acot(n))²`
-/

namespace A248558.P5598536635358561632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091131 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋ ^ 2

end

end A248558.P5598536635358561632

/-!
# A248559: Least k such that log(2) - sum{1/(h*2^h), h = 1..k} < 1/3^n.

The programs for A248559, there is no canonical definition to state claims against.
-/

/-! ## A248559.P9782397246250367629

`comp[comp[A248560(n+1)]+n]`
-/

namespace A248559.P9782397246250367629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248560 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A248559.P9782397246250367629

/-! ## A248559.P5709770911816276696

`A259899(∑[2*(n+1)-A000267(n)])`
-/

namespace A248559.P5709770911816276696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248559.P5709770911816276696

/-! ## A248559.P4941253667294628931

`A259899(∑[2*n+1-A055086(n)])`
-/

namespace A248559.P4941253667294628931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A055086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248559.P4941253667294628931

/-! ## A248559.P1555661703462553823

`floor(∑[atan(A105588(2*n+3))])`
-/

namespace A248559.P1555661703462553823
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A105588 (2 * n + 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A248559.P1555661703462553823

/-! ## A248559.P1207628954351103241

`∑[∑[A389734(A320201(3*(n+1)))%2+1]%2+1]`
-/

namespace A248559.P1207628954351103241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389734 (A320201 (3 * (n + 1))).toNat) 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248559.P1207628954351103241

/-!
# A248560: Numbers k such that A248559(k+1) = A248559(k) + 1.

The programs for A248560, there is no canonical definition to state claims against.
-/

/-! ## A248560.P13027803647208114189

`eq[1, Δ[A248559(n+1)]]+1`
-/

namespace A248560.P13027803647208114189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248560.P13027803647208114189

/-! ## A248560.P2661550204669304441

`eq[1, Δ[A248559(A028310(n))]]`
-/

namespace A248560.P2661550204669304441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248559 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248560.P2661550204669304441

/-! ## A248560.P4058262335626067952

`record[A001057(Δ[A248559(n+1)])+n]`
-/

namespace A248560.P4058262335626067952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248559 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f2 (n + 1) - f2 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248560.P4058262335626067952

/-! ## A248560.P14403144073664285407

`record[(1-A001489(n))/Δ[A248559(n+1)]]`
-/

namespace A248560.P14403144073664285407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248559 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A001489 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248560.P14403144073664285407

/-! ## A248560.P12946700152582236283

`record[A008619(2*n)/Δ[A248559(n+1)]]`
-/

namespace A248560.P12946700152582236283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248559 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248560.P12946700152582236283

/-! ## A248560.P9509276844038247580

`record[A028242(2*n)/Δ[A248559(n+1)]]`
-/

namespace A248560.P9509276844038247580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248559 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248560.P9509276844038247580

/-! ## A248560.P6857518528432746167

`eq[1, A248559(n+1)-A248559(A028310(n))]`
-/

namespace A248560.P6857518528432746167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248559 (n + 1) - A248559 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248560.P6857518528432746167

/-!
# A248561: Numbers k such that A248559(k+1) = A248559(k) + 2.

The programs for A248561, there is no canonical definition to state claims against.
-/

/-! ## A248561.P9158181598764046616

`comp[A248560(n+1)-1]+1`
-/

namespace A248561.P9158181598764046616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248560 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248561.P9158181598764046616

/-! ## A248561.P7155293131165787697

`eq[2, Δ[A248559(n+1)]]+1`
-/

namespace A248561.P7155293131165787697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248561.P7155293131165787697

/-! ## A248561.P12233798878608914796

`eq[2, Δ[A248559(A028310(n))]]`
-/

namespace A248561.P12233798878608914796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248559 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248561.P12233798878608914796

/-! ## A248561.P14669492001197593770

`lt[1, A003418(Δ[A248559(n+1)])]+1`
-/

namespace A248561.P14669492001197593770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A248561.P14669492001197593770

/-! ## A248561.P2836524616634462094

`eq[2, A248559(n+1)-A248559(A028310(n))]`
-/

namespace A248561.P2836524616634462094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248559 (n + 1) - A248559 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248561.P2836524616634462094

/-!
# A248562: Least k such that log(3/2) - sum{1/(h*3^h), h = 1..k} < 1/6^n.

The programs for A248562, there is no canonical definition to state claims against.
-/

/-! ## A248562.P3035662325570939028

`comp[comp[A248563(n+1)]+n]`
-/

namespace A248562.P3035662325570939028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248563 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A248562.P3035662325570939028

/-! ## A248562.P8144086996108219569

`A135664(∑[∑[gcd(2, n)+4]]+1)-1`
-/

namespace A248562.P8144086996108219569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A248562.P8144086996108219569

/-! ## A248562.P3526361752868228259

`A135664(∑[∑[(n+1)%2+5]]+1)-1`
-/

namespace A248562.P3526361752868228259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A248562.P3526361752868228259

/-! ## A248562.P13605291367347991377

`floor(∑[A134862(n+1)/A188438(n+1)])`
-/

namespace A248562.P13605291367347991377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134862 (n + 1) : ℚ) / (A188438 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A248562.P13605291367347991377

/-! ## A248562.P9115151346566706406

`A056556(∑[A003056(n+1)]²)`
-/

namespace A248562.P9115151346566706406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A248562.P9115151346566706406

/-!
# A248563: Numbers k such that A248562(k+1) = A248562(k) + 1.

The programs for A248563, there is no canonical definition to state claims against.
-/

/-! ## A248563.P4515821962563445697

`A003059(A028310(n)*A358992(3*n+1))`
-/

namespace A248563.P4515821962563445697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A028310 n * A358992 (3 * n + 1)).toNat

end

end A248563.P4515821962563445697

/-! ## A248563.P10299274176297536229

`A346693(A350234(n+2))`
-/

namespace A248563.P10299274176297536229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346693 (A350234 (n + 2)).toNat

end

end A248563.P10299274176297536229

/-! ## A248563.P3817813976480505900

`round(log2(A067648(n+3)))`
-/

namespace A248563.P3817813976480505900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A067648 (n + 3) : ℝ))

end

end A248563.P3817813976480505900

/-! ## A248563.P12663955361220983912

`round(log(A136440(n+1)))`
-/

namespace A248563.P12663955361220983912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A136440 (n + 1) : ℝ))

end

end A248563.P12663955361220983912

/-!
# A248564: Numbers k such that A248562(k+1) = A248562(k) + 2.

The programs for A248564, there is no canonical definition to state claims against.
-/

/-! ## A248564.P3044093826023453578

`comp[A248563(n+1)-1]+1`
-/

namespace A248564.P3044093826023453578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248563 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248564.P3044093826023453578

/-! ## A248564.P17503788000235391384

`comp[A248562(ceil((n+1)/2))-1]-n`
-/

namespace A248564.P17503788000235391384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248562 ⌈(n + 1 : ℚ) / 2⌉.toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A248564.P17503788000235391384

/-! ## A248564.P12814608132311550668

`(comp[A248562(A028310(n))-1]-n)%A016946(n)`
-/

namespace A248564.P12814608132311550668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248562 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) (A016946 n)

end

end A248564.P12814608132311550668

/-! ## A248564.P13299808653496215021

`abs(comp[A248562(A291766(n))-1]-n)`
-/

namespace A248564.P13299808653496215021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248562 (A291766 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)|

end

end A248564.P13299808653496215021

/-! ## A248564.P1588987902441205529

`floor(log2(Δ[A027471(n+1)]))+3`
-/

namespace A248564.P1588987902441205529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (n + 1) - f1 n).toNat + 3

end

end A248564.P1588987902441205529

/-! ## A248564.P4500855419317893697

`floor(log2(A113071(n+1)))`
-/

namespace A248564.P4500855419317893697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A113071 (n + 1)).toNat

end

end A248564.P4500855419317893697

/-! ## A248564.P3246947417038041606

`floor(log2(A268622(n+1)))`
-/

namespace A248564.P3246947417038041606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A268622 (n + 1)).toNat

end

end A248564.P3246947417038041606

/-! ## A248564.P9876732424202406266

`floor(log2(8*A081038(n)))`
-/

namespace A248564.P9876732424202406266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (8 * A081038 n).toNat

end

end A248564.P9876732424202406266

/-! ## A248564.P5131502326235374757

`floor(log2(Δ[n*A080923(n+1)]))`
-/

namespace A248564.P5131502326235374757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080923 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (n + 1) - f1 n).toNat

end

end A248564.P5131502326235374757

/-! ## A248564.P352829075017383077

`floor(log2(A268905(n+2)))-2`
-/

namespace A248564.P352829075017383077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A268905 (n + 2)).toNat : ℤ) - 2

end

end A248564.P352829075017383077

/-!
# A248565: Least k such that log(4/3) - sum{1/(h*4^h), h = 1..k} < 1/8^n.

The programs for A248565, the canonical program `A248565.P6743472506241932522` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248565 has offset 1).

The definition of A248565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248565.P6743472506241932522

`comp[A248567(n+1)+n]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A248565

/-- `comp[A248567(n+1)+n]+1` -/
def P6743472506241932522.Spec : Prop :=
  ∀ n, (P6743472506241932522.a n : ℤ) = A248565 (n + 1)

theorem P6743472506241932522.correct : P6743472506241932522.Spec := by
  intro n
  simp only [A248565, Nat.add_sub_cancel]

end A248565

/-! ## A248565.P668628013130233105

`A000196(A003056(A033638(n))+A002984(3*n+1))`
-/

namespace A248565.P668628013130233105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A003056 (A033638 n).toNat + A002984 (3 * n + 1)).toNat

end

end A248565.P668628013130233105

namespace A248565

/-- `A000196(A003056(A033638(n))+A002984(3*n+1))` -/
def P668628013130233105.Spec : Prop :=
  ∀ n, P668628013130233105.a n = A248565 (n + 1)

end A248565

/-! ## A248565.P13973389952040852478

`A000196(A033638(A000196(3*n))+A002984(3*n+1))`
-/

namespace A248565.P13973389952040852478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A033638 (A000196 (3 * n)).toNat + A002984 (3 * n + 1)).toNat

end

end A248565.P13973389952040852478

namespace A248565

/-- `A000196(A033638(A000196(3*n))+A002984(3*n+1))` -/
def P13973389952040852478.Spec : Prop :=
  ∀ n, P13973389952040852478.a n = A248565 (n + 1)

end A248565

/-! ## A248565.P824840489204198361

`A000196(A109965(A000196(4*n))+A002984(3*n+1))`
-/

namespace A248565.P824840489204198361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A109965 (A000196 (4 * n)).toNat + A002984 (3 * n + 1)).toNat

end

end A248565.P824840489204198361

namespace A248565

/-- `A000196(A109965(A000196(4*n))+A002984(3*n+1))` -/
def P824840489204198361.Spec : Prop :=
  ∀ n, P824840489204198361.a n = A248565 (n + 1)

end A248565

/-! ## A248565.P16499936251143962040

`A000196(A002984(3*n)+A000196((2*n+1)²))`
-/

namespace A248565.P16499936251143962040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002984 (3 * n) + A000196 ((2 * n + 1) ^ 2)).toNat

end

end A248565.P16499936251143962040

namespace A248565

/-- `A000196(A002984(3*n)+A000196((2*n+1)²))` -/
def P16499936251143962040.Spec : Prop :=
  ∀ n, P16499936251143962040.a n = A248565 (n + 1)

end A248565

/-!
# A248566: Numbers k such that A248565(k+1) = A248565(k) + 1.

The programs for A248566, the canonical program `A248566.P11564736642265823741` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248566 has offset 1).

The definition of A248566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248566.P1541085024681988519

`comp[comp[A248565(n+1)]-n]`
-/

namespace A248566.P1541085024681988519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248565 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248566.P1541085024681988519

namespace A248566

/-- `comp[comp[A248565(n+1)]-n]` -/
def P1541085024681988519.Spec : Prop :=
  ∀ n, (P1541085024681988519.a n : ℤ) = A248566 (n + 1)

end A248566

/-! ## A248566.P13900687768351168851

`comp[A248567(n+1)-1]+1`
-/

namespace A248566.P13900687768351168851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248567 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248566.P13900687768351168851

namespace A248566

/-- `comp[A248567(n+1)-1]+1` -/
def P13900687768351168851.Spec : Prop :=
  ∀ n, (P13900687768351168851.a n : ℤ) = A248566 (n + 1)

end A248566

/-! ## A248566.P11564736642265823741

`record[A008611(A006369(n)+A000523(n+1))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248566

/-- `record[A008611(A006369(n)+A000523(n+1))]` -/
def P11564736642265823741.Spec : Prop :=
  ∀ n, P11564736642265823741.a n = A248566 (n + 1)

theorem P11564736642265823741.correct : P11564736642265823741.Spec := by
  intro n
  simp only [A248566, Nat.add_sub_cancel]

end A248566

/-! ## A248566.P16990517151388084303

`ceil(log2(A149863(n)))+1`
-/

namespace A248566.P16990517151388084303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A149863 n : ℝ)⌉ + 1

end

end A248566.P16990517151388084303

namespace A248566

/-- `ceil(log2(A149863(n)))+1` -/
def P16990517151388084303.Spec : Prop :=
  ∀ n, P16990517151388084303.a n = A248566 (n + 1)

end A248566

/-! ## A248566.P10494016797836659795

`Δ[n²]-A284248(A188085(n+1))`
-/

namespace A248566.P10494016797836659795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A284248 (A188085 (n + 1)).toNat

end

end A248566.P10494016797836659795

namespace A248566

/-- `Δ[n²]-A284248(A188085(n+1))` -/
def P10494016797836659795.Spec : Prop :=
  ∀ n, P10494016797836659795.a n = A248566 (n + 1)

end A248566

/-! ## A248566.P6847061300330430265

`A067085(A135901(n+1))`
-/

namespace A248566.P6847061300330430265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A135901 (n + 1)).toNat

end

end A248566.P6847061300330430265

namespace A248566

/-- `A067085(A135901(n+1))` -/
def P6847061300330430265.Spec : Prop :=
  ∀ n, P6847061300330430265.a n = A248566 (n + 1)

end A248566

/-! ## A248566.P17475586452557519101

`∑[A236678(A003987(A106486(2*n+1)))]`
-/

namespace A248566.P17475586452557519101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236678 (A003987 (A106486 (2 * n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248566.P17475586452557519101

namespace A248566

/-- `∑[A236678(A003987(A106486(2*n+1)))]` -/
def P17475586452557519101.Spec : Prop :=
  ∀ n, P17475586452557519101.a n = A248566 (n + 1)

end A248566

/-!
# A248567: Numbers k such that A248565(k+1) = A248565(k) + 2.

The programs for A248567, the canonical program `A248567.P6131162230624126847` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248567 has offset 1).

The definition of A248567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248567.P11912608726422365261

`A000523(A212447(A212447(n+1)))+2*n`
-/

namespace A248567.P11912608726422365261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A212447 (A212447 (n + 1)).toNat).toNat + (2 * n : ℤ)

end

end A248567.P11912608726422365261

namespace A248567

/-- `A000523(A212447(A212447(n+1)))+2*n` -/
def P11912608726422365261.Spec : Prop :=
  ∀ n, P11912608726422365261.a n = A248567 (n + 1)

end A248567

/-! ## A248567.P6131162230624126847

`A107907(A028310(3*n+2))+A001478(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248567

/-- `A107907(A028310(3*n+2))+A001478(n+1)` -/
def P6131162230624126847.Spec : Prop :=
  ∀ n, P6131162230624126847.a n = A248567 (n + 1)

theorem P6131162230624126847.correct : P6131162230624126847.Spec := by
  intro n
  simp only [A248567, Nat.add_sub_cancel]

end A248567

/-! ## A248567.P6367745194099937770

`eq[2, Δ[A248566(n+1)]]+n+2`
-/

namespace A248567.P6367745194099937770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 2)

end

end A248567.P6367745194099937770

namespace A248567

/-- `eq[2, Δ[A248566(n+1)]]+n+2` -/
def P6367745194099937770.Spec : Prop :=
  ∀ n, (P6367745194099937770.a n : ℤ) = A248567 (n + 1)

end A248567

/-! ## A248567.P515248504034489424

`A130249(A298746(n+1))+Δ[n²]`
-/

namespace A248567.P515248504034489424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130249 (A298746 (n + 1)).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A248567.P515248504034489424

namespace A248567

/-- `A130249(A298746(n+1))+Δ[n²]` -/
def P515248504034489424.Spec : Prop :=
  ∀ n, P515248504034489424.a n = A248567 (n + 1)

end A248567

/-!
# A248571: Number of connected irreducible digital images of n points up to homotopy equivalence.

The programs for A248571, there is no canonical definition to state claims against.
-/

/-! ## A248571.P17216347227204291401

`A255538(n+1)+∑[A004197(n)]`
-/

namespace A248571.P17216347227204291401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255538 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248571.P17216347227204291401

/-! ## A248571.P5046229003290257333

`A255538(n+1)+∑[A298902(n+1)]`
-/

namespace A248571.P5046229003290257333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255538 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248571.P5046229003290257333

/-! ## A248571.P12839561472010717007

`A255538(n+1)+∑[A025922(n+4)]`
-/

namespace A248571.P12839561472010717007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255538 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248571.P12839561472010717007

/-! ## A248571.P5305687686901517037

`A255538(n+1)+A136409(A136409(n))`
-/

namespace A248571.P5305687686901517037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255538 (n + 1) + A136409 (A136409 n).toNat

end

end A248571.P5305687686901517037

/-! ## A248571.P9350188662613400793

`A261091(A011862(n))+A255538(n+1)`
-/

namespace A248571.P9350188662613400793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261091 (A011862 n).toNat + A255538 (n + 1)

end

end A248571.P9350188662613400793

/-!
# A248572: a(n) = 29*n + 1.

The programs for A248572, the canonical program `A248572.P122617447327759137` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248572 has offset 0).

The definition of A248572 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `29*n+1` (program `A248572.P122617447327759137`, by `A248572.P122617447327759137.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248572.P122617447327759137

`29*n+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248572

/-- `29*n+1` -/
def P122617447327759137.Spec : Prop :=
  ∀ n, (P122617447327759137.a n : ℤ) = A248572 n

theorem P122617447327759137.correct : P122617447327759137.Spec := by
  intro n
  simp only [A248572]

end A248572

/-!
# A248574: a(n) = A027306(n) + A027306(n-1) for n > 0; a(0) = 1.

The programs for A248574, the canonical program `A248574.P8867556678546182953` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248574 has offset 0).

The definition of A248574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248574.P8867556678546182953

`A131577(n)+A116406(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A248574

/-- `A131577(n)+A116406(n)` -/
def P8867556678546182953.Spec : Prop :=
  ∀ n, P8867556678546182953.a n = A248574 n

theorem P8867556678546182953.correct : P8867556678546182953.Spec := by
  intro n
  simp only [A248574]

end A248574

/-! ## A248574.P18073627270081583973

`A011782(n+1)+A116406(n)-A011782(n)`
-/

namespace A248574.P18073627270081583973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + (A116406 n - A011782 n)

end

end A248574.P18073627270081583973

namespace A248574

/-- `A011782(n+1)+A116406(n)-A011782(n)` -/
def P18073627270081583973.Spec : Prop :=
  ∀ n, P18073627270081583973.a n = A248574 n

end A248574

/-! ## A248574.P7460439726166761294

`Δ[A134389(n)]-A100071(n)`
-/

namespace A248574.P7460439726166761294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A100071 n

end

end A248574.P7460439726166761294

namespace A248574

/-- `Δ[A134389(n)]-A100071(n)` -/
def P7460439726166761294.Spec : Prop :=
  ∀ n, P7460439726166761294.a n = A248574 n

end A248574

/-! ## A248574.P11700716216780972306

`A102363(∑[and(n, char[1]-2)])`
-/

namespace A248574.P11700716216780972306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248574.P11700716216780972306

namespace A248574

/-- `A102363(∑[and(n, char[1]-2)])` -/
def P11700716216780972306.Spec : Prop :=
  ∀ n, P11700716216780972306.a n = A248574 n

end A248574

/-! ## A248574.P10193911003186984119

`A102363(ceil(sqrt(A006528(n))))`
-/

namespace A248574.P10193911003186984119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 ⌈Real.sqrt (A006528 n : ℝ)⌉.toNat

end

end A248574.P10193911003186984119

namespace A248574

/-- `A102363(ceil(sqrt(A006528(n))))` -/
def P10193911003186984119.Spec : Prop :=
  ∀ n, P10193911003186984119.a n = A248574 n

end A248574

/-! ## A248574.P9300044962084866428

`A102363(∑[A285869(A004275(n))])`
-/

namespace A248574.P9300044962084866428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248574.P9300044962084866428

namespace A248574

/-- `A102363(∑[A285869(A004275(n))])` -/
def P9300044962084866428.Spec : Prop :=
  ∀ n, P9300044962084866428.a n = A248574 n

end A248574

/-! ## A248574.P431144904510030912

`A102363(A000124(n)-A065033(n))`
-/

namespace A248574.P431144904510030912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (A000124 n - A065033 n).toNat

end

end A248574.P431144904510030912

namespace A248574

/-- `A102363(A000124(n)-A065033(n))` -/
def P431144904510030912.Spec : Prop :=
  ∀ n, P431144904510030912.a n = A248574 n

end A248574

/-! ## A248574.P4608992746386447582

`A102363(A133263(n)-A080513(n))`
-/

namespace A248574.P4608992746386447582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (A133263 n - A080513 n).toNat

end

end A248574.P4608992746386447582

namespace A248574

/-- `A102363(A133263(n)-A080513(n))` -/
def P4608992746386447582.Spec : Prop :=
  ∀ n, P4608992746386447582.a n = A248574 n

end A248574

/-! ## A248574.P16798689311555055289

`A308663(A000982(n+1))`
-/

namespace A248574.P16798689311555055289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 (A000982 (n + 1)).toNat

end

end A248574.P16798689311555055289

namespace A248574

/-- `A308663(A000982(n+1))` -/
def P16798689311555055289.Spec : Prop :=
  ∀ n, P16798689311555055289.a n = A248574 n

end A248574

/-! ## A248574.P8279923130456973433

`A308663(A087327(n+1))`
-/

namespace A248574.P8279923130456973433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 (A087327 (n + 1)).toNat

end

end A248574.P8279923130456973433

namespace A248574

/-- `A308663(A087327(n+1))` -/
def P8279923130456973433.Spec : Prop :=
  ∀ n, P8279923130456973433.a n = A248574 n

end A248574

/-! ## A248574.P4409544435467657695

`A308663(A047838(n+2)-n)`
-/

namespace A248574.P4409544435467657695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 (A047838 (n + 2) - (n : ℤ)).toNat

end

end A248574.P4409544435467657695

namespace A248574

/-- `A308663(A047838(n+2)-n)` -/
def P4409544435467657695.Spec : Prop :=
  ∀ n, P4409544435467657695.a n = A248574 n

end A248574

/-! ## A248574.P16936824378949173896

`A249111(∑[2*n])`
-/

namespace A248574.P16936824378949173896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248574.P16936824378949173896

namespace A248574

/-- `A249111(∑[2*n])` -/
def P16936824378949173896.Spec : Prop :=
  ∀ n, P16936824378949173896.a n = A248574 n

end A248574

/-! ## A248574.P8907184763255434346

`record[A249111(∑[A032766(n)-n])]`
-/

namespace A248574.P8907184763255434346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248574.P8907184763255434346

namespace A248574

/-- `record[A249111(∑[A032766(n)-n])]` -/
def P8907184763255434346.Spec : Prop :=
  ∀ n, P8907184763255434346.a n = A248574 n

end A248574

/-! ## A248574.P12846088236739444659

`A249111(n²+n)+A000007(n+1)`
-/

namespace A248574.P12846088236739444659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 (n ^ 2 + n) + A000007 (n + 1)

end

end A248574.P12846088236739444659

namespace A248574

/-- `A249111(n²+n)+A000007(n+1)` -/
def P12846088236739444659.Spec : Prop :=
  ∀ n, P12846088236739444659.a n = A248574 n

end A248574

/-! ## A248574.P7962361145554708220

`A249111(∑[n+n])%A304388(n+1)`
-/

namespace A248574.P7962361145554708220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249111 (∑ j ∈ Finset.range (n + 1), f1 j)) (A304388 (n + 1))

end

end A248574.P7962361145554708220

namespace A248574

/-- `A249111(∑[n+n])%A304388(n+1)` -/
def P7962361145554708220.Spec : Prop :=
  ∀ n, P7962361145554708220.a n = A248574 n

end A248574

/-!
# A248575: Rounded sums of the non-integer cube roots of n, as partitioned by the integer roots: round(Sum_{j=n^3+1..(n+1)^3-1} j^(1/3)).

The programs for A248575, the canonical program `A248575.P16316469783095060685` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248575 has offset 0).

The definition of A248575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248575.P2357871543922287895

`(1-(-1)^n+8*n+18*n²+12*n^3)/4`
-/

namespace A248575.P2357871543922287895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-1) ^ n + (8 * n : ℤ) + (18 * n ^ 2 : ℤ) + (12 * n ^ 3 : ℤ) : ℚ) / 4

end

end A248575.P2357871543922287895

namespace A248575

/-- `(1-(-1)^n+8*n+18*n²+12*n^3)/4` -/
def P2357871543922287895.Spec : Prop :=
  ∀ n, P2357871543922287895.a n = (A248575 n : ℚ)

theorem P2357871543922287895.correct : P2357871543922287895.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A248575, Nat.add_sub_cancel, A248575.P2357871543922287895.a, A248575.P16316469783095060685.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A248575, Nat.add_sub_cancel, A248575.P2357871543922287895.a, A248575.P16316469783095060685.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A248575

/-! ## A248575.P1634633993882168269

`((n+1)*a(n-2)+3*a(n-1)-30)/(n-2)-20` with `a(0)=0, a(1)=10, a(2)=46`
-/

namespace A248575.P1634633993882168269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 10, 46] fun n a =>
  ((n + 1 : ℚ) * a (n - 2) + 3 * a (n - 1) - 30) / ((n : ℤ) - 2 : ℚ) - 20

end

end A248575.P1634633993882168269

namespace A248575

/-- `((n+1)*a(n-2)+3*a(n-1)-30)/(n-2)-20` -/
def P1634633993882168269.Spec : Prop :=
  ∀ n, P1634633993882168269.a n = (A248575 n : ℚ)

end A248575

/-! ## A248575.P16316469783095060685

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=10, a(2)=46, a(3)=128, a(4)=272`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248575

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P16316469783095060685.Spec : Prop :=
  ∀ n, P16316469783095060685.a n = A248575 n

theorem P16316469783095060685.correct : P16316469783095060685.Spec := by
  intro n
  simp only [A248575]

end A248575

/-! ## A248575.P2300120791534867043

`∑[n%2+(3*n)²]`
-/

namespace A248575.P2300120791534867043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + (3 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248575.P2300120791534867043

namespace A248575

/-- `∑[n%2+(3*n)²]` -/
def P2300120791534867043.Spec : Prop :=
  ∀ n, (P2300120791534867043.a n : ℤ) = A248575 n

end A248575

/-! ## A248575.P12590775813779833372

`∑[and(1, n)+(3*n)²]`
-/

namespace A248575.P12590775813779833372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + (3 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248575.P12590775813779833372

namespace A248575

/-- `∑[and(1, n)+(3*n)²]` -/
def P12590775813779833372.Spec : Prop :=
  ∀ n, (P12590775813779833372.a n : ℤ) = A248575 n

end A248575

/-! ## A248575.P4107675101436959461

`A229620(n)+4*n`
-/

namespace A248575.P4107675101436959461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229620 n + (4 * n : ℤ)

end

end A248575.P4107675101436959461

namespace A248575

/-- `A229620(n)+4*n` -/
def P4107675101436959461.Spec : Prop :=
  ∀ n, P4107675101436959461.a n = A248575 n

end A248575

/-! ## A248575.P8834962139414335279

`∑[A016766(n)+n%2]`
-/

namespace A248575.P8834962139414335279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248575.P8834962139414335279

namespace A248575

/-- `∑[A016766(n)+n%2]` -/
def P8834962139414335279.Spec : Prop :=
  ∀ n, P8834962139414335279.a n = A248575 n

end A248575

/-! ## A248575.P5244462274416401918

`∑[A247792(n)-char[2*n]]`
-/

namespace A248575.P5244462274416401918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248575.P5244462274416401918

namespace A248575

/-- `∑[A247792(n)-char[2*n]]` -/
def P5244462274416401918.Spec : Prop :=
  ∀ n, P5244462274416401918.a n = A248575 n

end A248575

/-! ## A248575.P15140681308518526686

`A111746(n)+A050409(n)`
-/

namespace A248575.P15140681308518526686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111746 n + A050409 n

end

end A248575.P15140681308518526686

namespace A248575

/-- `A111746(n)+A050409(n)` -/
def P15140681308518526686.Spec : Prop :=
  ∀ n, P15140681308518526686.a n = A248575 n

end A248575

/-! ## A248575.P14828375602156962673

`A212960(n)+A055112(n)`
-/

namespace A248575.P14828375602156962673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212960 n + A055112 n

end

end A248575.P14828375602156962673

namespace A248575

/-- `A212960(n)+A055112(n)` -/
def P14828375602156962673.Spec : Prop :=
  ∀ n, P14828375602156962673.a n = A248575 n

end A248575

/-! ## A248575.P20196446000415279

`A220443(n)+A110654(n)`
-/

namespace A248575.P20196446000415279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n + A110654 n

end

end A248575.P20196446000415279

namespace A248575

/-- `A220443(n)+A110654(n)` -/
def P20196446000415279.Spec : Prop :=
  ∀ n, P20196446000415279.a n = A248575 n

end A248575

/-! ## A248575.P3769082494279775276

`A005915(n)-A212959(n)`
-/

namespace A248575.P3769082494279775276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 n - A212959 n

end

end A248575.P3769082494279775276

namespace A248575

/-- `A005915(n)-A212959(n)` -/
def P3769082494279775276.Spec : Prop :=
  ∀ n, P3769082494279775276.a n = A248575 n

end A248575

/-! ## A248575.P14444519709743412540

`A100186(n+1)-A213388(n)`
-/

namespace A248575.P14444519709743412540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100186 (n + 1) - A213388 n

end

end A248575.P14444519709743412540

namespace A248575

/-- `A100186(n+1)-A213388(n)` -/
def P14444519709743412540.Spec : Prop :=
  ∀ n, P14444519709743412540.a n = A248575 n

end A248575

/-! ## A248575.P14857312467342569005

`A374384(n)-A042963(n+1)`
-/

namespace A248575.P14857312467342569005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374384 n - A042963 (n + 1)

end

end A248575.P14857312467342569005

namespace A248575

/-- `A374384(n)-A042963(n+1)` -/
def P14857312467342569005.Spec : Prop :=
  ∀ n, P14857312467342569005.a n = A248575 n

end A248575

/-! ## A248575.P5121485919712845866

`A262402(n+1)-A317637(n)`
-/

namespace A248575.P5121485919712845866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262402 (n + 1) - A317637 n

end

end A248575.P5121485919712845866

namespace A248575

/-- `A262402(n+1)-A317637(n)` -/
def P5121485919712845866.Spec : Prop :=
  ∀ n, P5121485919712845866.a n = A248575 n

end A248575

/-! ## A248575.P3691713189829481775

`A212960(n)+A300758(n)/2`
-/

namespace A248575.P3691713189829481775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212960 n : ℚ) + (A300758 n : ℚ) / 2

end

end A248575.P3691713189829481775

namespace A248575

/-- `A212960(n)+A300758(n)/2` -/
def P3691713189829481775.Spec : Prop :=
  ∀ n, P3691713189829481775.a n = (A248575 n : ℚ)

end A248575

/-! ## A248575.P6434424190515024752

`A063491(n+1)-A001651(n+1)`
-/

namespace A248575.P6434424190515024752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063491 (n + 1) - A001651 (n + 1)

end

end A248575.P6434424190515024752

namespace A248575

/-- `A063491(n+1)-A001651(n+1)` -/
def P6434424190515024752.Spec : Prop :=
  ∀ n, P6434424190515024752.a n = A248575 n

end A248575

/-! ## A248575.P8025321472765456292

`2*(A063492(n+1)-A299290(n))`
-/

namespace A248575.P8025321472765456292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A063492 (n + 1) - A299290 n)

end

end A248575.P8025321472765456292

namespace A248575

/-- `2*(A063492(n+1)-A299290(n))` -/
def P8025321472765456292.Spec : Prop :=
  ∀ n, P8025321472765456292.a n = A248575 n

end A248575

/-! ## A248575.P7524035207518691654

`A004526(n+1)+∑[(3*n)²]`
-/

namespace A248575.P7524035207518691654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A248575.P7524035207518691654

namespace A248575

/-- `A004526(n+1)+∑[(3*n)²]` -/
def P7524035207518691654.Spec : Prop :=
  ∀ n, P7524035207518691654.a n = A248575 n

end A248575

/-! ## A248575.P6344681580939721287

`A027903(n)+A007590(n+1)`
-/

namespace A248575.P6344681580939721287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027903 n + A007590 (n + 1)

end

end A248575.P6344681580939721287

namespace A248575

/-- `A027903(n)+A007590(n+1)` -/
def P6344681580939721287.Spec : Prop :=
  ∀ n, P6344681580939721287.a n = A248575 n

end A248575

/-!
# A248576: Least prime p such that m^n+1 is divisible by p^2, where m = min{ b>0 | b^n+1 not squarefree} = A248214(n).

The programs for A248576, there is no canonical definition to state claims against.
-/

/-! ## A248576.P17124835422950427100

`sqrt(A283452(n+1))`
-/

namespace A248576.P17124835422950427100
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A283452 (n + 1) : ℝ)

end

end A248576.P17124835422950427100

/-! ## A248576.P4184075683148393650

`root(A283452(4*n*char[1]+n+1), 2)`
-/

namespace A248576.P4184075683148393650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A283452 (4 * n * (if ∃ j, f1 j = n then 1 else 0) + n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A248576.P4184075683148393650

/-! ## A248576.P2377702924206153655

`A001414(root(A283452(n+1), 2))`
-/

namespace A248576.P2377702924206153655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A283452 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A248576.P2377702924206153655

/-! ## A248576.P9642492462953226639

`A002034(root(A283452(n+1), 2))`
-/

namespace A248576.P9642492462953226639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.roundAway ((A283452 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A248576.P9642492462953226639

/-! ## A248576.P3179891913823008082

`A006530(root(A283452(n+1), 2))`
-/

namespace A248576.P3179891913823008082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A283452 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A248576.P3179891913823008082

/-! ## A248576.P4376317649896611904

`A008472(root(A283452(n+1), 2))`
-/

namespace A248576.P4376317649896611904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway ((A283452 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A248576.P4376317649896611904

/-! ## A248576.P16820380367120183417

`A014963(root(A283452(n+1), 2))`
-/

namespace A248576.P16820380367120183417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A283452 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A248576.P16820380367120183417

/-! ## A248576.P11924921029729085845

`A020639(root(A283452(n+1), 2))`
-/

namespace A248576.P11924921029729085845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A283452 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A248576.P11924921029729085845

/-! ## A248576.P15975971984888612462

`A006530(∑{p}[A283452(n+1), #])`
-/

namespace A248576.P15975971984888612462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A248576.P15975971984888612462

/-! ## A248576.P13363521243517288615

`A014963(∑{p}[A283452(n+1), #])`
-/

namespace A248576.P13363521243517288615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A248576.P13363521243517288615

/-!
# A248577: Product of the number of divisors of n and the number of distinct prime divisors of n; i.e., tau(n) * omega(n).

The programs for A248577, the canonical program `A248577.P10884066776821242186` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248577 has offset 1).

The definition of A248577 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248577.P10884066776821242186

`A000005(n+1)*A001221(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A248577

/-- `A000005(n+1)*A001221(n+1)` -/
def P10884066776821242186.Spec : Prop :=
  ∀ n, P10884066776821242186.a n = A248577 (n + 1)

theorem P10884066776821242186.correct : P10884066776821242186.Spec := by
  intro n
  simp only [A248577, Nat.add_sub_cancel]

end A248577

/-! ## A248577.P6722566632685996261

`∑{p}[n+1, A000005(lcm(#, n+1))]`
-/

namespace A248577.P6722566632685996261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000005 (Nat.lcm p (n + 1))

end

end A248577.P6722566632685996261

namespace A248577

/-- `∑{p}[n+1, A000005(lcm(#, n+1))]` -/
def P6722566632685996261.Spec : Prop :=
  ∀ n, P6722566632685996261.a n = A248577 (n + 1)

end A248577

/-! ## A248577.P1755663666589219722

`A001221(n+1)*Δ[A006218(n)]`
-/

namespace A248577.P1755663666589219722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * (f1 (n + 1) - f1 n)

end

end A248577.P1755663666589219722

namespace A248577

/-- `A001221(n+1)*Δ[A006218(n)]` -/
def P1755663666589219722.Spec : Prop :=
  ∀ n, P1755663666589219722.a n = A248577 (n + 1)

end A248577

/-! ## A248577.P17294713762039460013

`A001221(n+1)*Δ[A054519(n)]`
-/

namespace A248577.P17294713762039460013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * (f1 (n + 1) - f1 n)

end

end A248577.P17294713762039460013

namespace A248577

/-- `A001221(n+1)*Δ[A054519(n)]` -/
def P17294713762039460013.Spec : Prop :=
  ∀ n, P17294713762039460013.a n = A248577 (n + 1)

end A248577

/-! ## A248577.P9160004917603363741

`A351711(n+1)-A351746(n+1)`
-/

namespace A248577.P9160004917603363741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351711 (n + 1) - A351746 (n + 1)

end

end A248577.P9160004917603363741

namespace A248577

/-- `A351711(n+1)-A351746(n+1)` -/
def P9160004917603363741.Spec : Prop :=
  ∀ n, P9160004917603363741.a n = A248577 (n + 1)

theorem P9160004917603363741.correct : P9160004917603363741.Spec := by
  intro n
  simp only [A248577, Nat.add_sub_cancel, A248577.P9160004917603363741.a, A248577.P10884066776821242186.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A351711, A351711.P10274480873794141417.f1, A351711.P10274480873794141417.a, A351746, A351746.P13626312203566205031.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A055631, A055631.P8885936990558110793.a, A059841, A059841.P7264174615531153985.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A248577

/-! ## A248577.P1348681311059776475

`(A325765(n)+1)*A001221(n+1)`
-/

namespace A248577.P1348681311059776475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A325765 n + 1) * A001221 (n + 1)

end

end A248577.P1348681311059776475

namespace A248577

/-- `(A325765(n)+1)*A001221(n+1)` -/
def P1348681311059776475.Spec : Prop :=
  ∀ n, P1348681311059776475.a n = A248577 (n + 1)

end A248577

/-! ## A248577.P9667176376546856532

`Δ[A006218(n)]*∑{p}[n+1, A001222(#)]`
-/

namespace A248577.P9667176376546856532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (∑ p ∈ Nat.primeFactors (f2 n), A001222 p)

end

end A248577.P9667176376546856532

namespace A248577

/-- `Δ[A006218(n)]*∑{p}[n+1, A001222(#)]` -/
def P9667176376546856532.Spec : Prop :=
  ∀ n, P9667176376546856532.a n = A248577 (n + 1)

end A248577

/-! ## A248577.P3136559577416324345

`(A070824(n+1)+2)*A001221(n+1)`
-/

namespace A248577.P3136559577416324345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070824 (n + 1) + 2) * A001221 (n + 1)

end

end A248577.P3136559577416324345

namespace A248577

/-- `(A070824(n+1)+2)*A001221(n+1)` -/
def P3136559577416324345.Spec : Prop :=
  ∀ n, P3136559577416324345.a n = A248577 (n + 1)

end A248577

/-! ## A248577.P11457975044246886274

`(A083399(n+1)-1)*A000005(n+1)`
-/

namespace A248577.P11457975044246886274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083399 (n + 1) - 1) * A000005 (n + 1)

end

end A248577.P11457975044246886274

namespace A248577

/-- `(A083399(n+1)-1)*A000005(n+1)` -/
def P11457975044246886274.Spec : Prop :=
  ∀ n, P11457975044246886274.a n = A248577 (n + 1)

theorem P11457975044246886274.correct : P11457975044246886274.Spec := by
  intro n
  simp only [A248577, Nat.add_sub_cancel, A248577.P11457975044246886274.a, A248577.P10884066776821242186.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A083399, A083399.P16148020281325742632.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A055212, A055212.P14412881054625885538.a, A059841, A059841.P7264174615531153985.a, A033273, A033273.P18420659424697249895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A248577

/-! ## A248577.P18222862551512736340

`(A334954(n+1)-1)*A001221(n+1)`
-/

namespace A248577.P18222862551512736340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A334954 (n + 1) - 1) * A001221 (n + 1)

end

end A248577.P18222862551512736340

namespace A248577

/-- `(A334954(n+1)-1)*A001221(n+1)` -/
def P18222862551512736340.Spec : Prop :=
  ∀ n, P18222862551512736340.a n = A248577 (n + 1)

end A248577

/-! ## A248577.P3750416346841796329

`A000005(n+1)*∑{p}[n+1, A001222(#)]`
-/

namespace A248577.P3750416346841796329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), A001222 p)

end

end A248577.P3750416346841796329

namespace A248577

/-- `A000005(n+1)*∑{p}[n+1, A001222(#)]` -/
def P3750416346841796329.Spec : Prop :=
  ∀ n, P3750416346841796329.a n = A248577 (n + 1)

end A248577

/-! ## A248577.P7546455190604746601

`A000005(n+1)*A001222(∏{p}[n+1, #])`
-/

namespace A248577.P7546455190604746601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A248577.P7546455190604746601

namespace A248577

/-- `A000005(n+1)*A001222(∏{p}[n+1, #])` -/
def P7546455190604746601.Spec : Prop :=
  ∀ n, P7546455190604746601.a n = A248577 (n + 1)

end A248577

/-! ## A248577.P5852527545448953484

`A000005(n+1)*A001222(A007947(n+1))`
-/

namespace A248577.P5852527545448953484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A001222 (A007947 (n + 1)).toNat

end

end A248577.P5852527545448953484

namespace A248577

/-- `A000005(n+1)*A001222(A007947(n+1))` -/
def P5852527545448953484.Spec : Prop :=
  ∀ n, P5852527545448953484.a n = A248577 (n + 1)

end A248577

/-! ## A248577.P6124458790469099838

`A000005(n+1)*A001222(A034444(n+1))`
-/

namespace A248577.P6124458790469099838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A001222 (A034444 (n + 1)).toNat

end

end A248577.P6124458790469099838

namespace A248577

/-- `A000005(n+1)*A001222(A034444(n+1))` -/
def P6124458790469099838.Spec : Prop :=
  ∀ n, P6124458790469099838.a n = A248577 (n + 1)

end A248577

/-! ## A248577.P11860818532212020535

`A000005(n+1)*A001222(A074816(n+1))`
-/

namespace A248577.P11860818532212020535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A001222 (A074816 (n + 1)).toNat

end

end A248577.P11860818532212020535

namespace A248577

/-- `A000005(n+1)*A001222(A074816(n+1))` -/
def P11860818532212020535.Spec : Prop :=
  ∀ n, P11860818532212020535.a n = A248577 (n + 1)

end A248577

/-! ## A248577.P2195106728107677521

`A000005(n+1)*A001222(A181819(n+1))`
-/

namespace A248577.P2195106728107677521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A001222 (A181819 (n + 1)).toNat

end

end A248577.P2195106728107677521

namespace A248577

/-- `A000005(n+1)*A001222(A181819(n+1))` -/
def P2195106728107677521.Spec : Prop :=
  ∀ n, P2195106728107677521.a n = A248577 (n + 1)

end A248577

/-! ## A248577.P7108766063329720694

`(A000005(A082476(n+1))-1)*A000005(n+1)`
-/

namespace A248577.P7108766063329720694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (A082476 (n + 1)).toNat - 1) * A000005 (n + 1)

end

end A248577.P7108766063329720694

namespace A248577

/-- `(A000005(A082476(n+1))-1)*A000005(n+1)` -/
def P7108766063329720694.Spec : Prop :=
  ∀ n, P7108766063329720694.a n = A248577 (n + 1)

end A248577

/-! ## A248577.P15912653624294613217

`∑{p}[A007947(n+1), A000005(n+1)/A001222(#)]`
-/

namespace A248577.P15912653624294613217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000005 (n + 1) : ℚ) / (A001222 p : ℚ)

end

end A248577.P15912653624294613217

namespace A248577

/-- `∑{p}[A007947(n+1), A000005(n+1)/A001222(#)]` -/
def P15912653624294613217.Spec : Prop :=
  ∀ n, P15912653624294613217.a n = (A248577 (n + 1) : ℚ)

end A248577

/-! ## A248577.P18245964585736614989

`A001221(n+1)+A001221(n+1)*A032741(n+1)`
-/

namespace A248577.P18245964585736614989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A001221 (n + 1) * A032741 (n + 1)

end

end A248577.P18245964585736614989

namespace A248577

/-- `A001221(n+1)+A001221(n+1)*A032741(n+1)` -/
def P18245964585736614989.Spec : Prop :=
  ∀ n, P18245964585736614989.a n = A248577 (n + 1)

theorem P18245964585736614989.correct : P18245964585736614989.Spec := by
  intro n
  simp only [A248577, Nat.add_sub_cancel, A248577.P18245964585736614989.a, A248577.P10884066776821242186.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A248577

/-! ## A248577.P11614546282470140679

`(A033273(n+1)+A001221(n+1))*A001221(n+1)`
-/

namespace A248577.P11614546282470140679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033273 (n + 1) + A001221 (n + 1)) * A001221 (n + 1)

end

end A248577.P11614546282470140679

namespace A248577

/-- `(A033273(n+1)+A001221(n+1))*A001221(n+1)` -/
def P11614546282470140679.Spec : Prop :=
  ∀ n, P11614546282470140679.a n = A248577 (n + 1)

theorem P11614546282470140679.correct : P11614546282470140679.Spec := by
  intro n
  simp only [A248577, Nat.add_sub_cancel, A248577.P11614546282470140679.a, A248577.P10884066776821242186.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A033273, A033273.P18420659424697249895.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A248577

/-!
# A248578: a(n) = round(1/(Pi-n*sin(Pi/n))).

The programs for A248578, the canonical program `A248578.P2851860505686165164` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248578 has offset 1).

The definition of A248578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(1/(π-(n+1)*sin(π/(n+1))))` (program `A248578.P2851860505686165164`, by `A248578.P2851860505686165164.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248578.P2851860505686165164

`round(1/(π-(n+1)*sin(π/(n+1))))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248578

/-- `round(1/(π-(n+1)*sin(π/(n+1))))` -/
def P2851860505686165164.Spec : Prop :=
  ∀ n, P2851860505686165164.a n = A248578 (n + 1)

theorem P2851860505686165164.correct : P2851860505686165164.Spec := by
  intro n
  simp only [A248578, Nat.add_sub_cancel]

end A248578

/-! ## A248578.P3847929685864339511

`A095861(A332355(n+1))`
-/

namespace A248578.P3847929685864339511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A332355 (n + 1)).toNat

end

end A248578.P3847929685864339511

namespace A248578

/-- `A095861(A332355(n+1))` -/
def P3847929685864339511.Spec : Prop :=
  ∀ n, P3847929685864339511.a n = A248578 (n + 1)

end A248578

/-! ## A248578.P1666398902352630940

`A373811(A047866(n))`
-/

namespace A248578.P1666398902352630940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A047866 n).toNat

end

end A248578.P1666398902352630940

namespace A248578

/-- `A373811(A047866(n))` -/
def P1666398902352630940.Spec : Prop :=
  ∀ n, P1666398902352630940.a n = A248578 (n + 1)

end A248578

/-! ## A248578.P17171836349695404220

`A033831(A034008(n+3))+A011858(n)`
-/

namespace A248578.P17171836349695404220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (A034008 (n + 3)).toNat + A011858 n

end

end A248578.P17171836349695404220

namespace A248578

/-- `A033831(A034008(n+3))+A011858(n)` -/
def P17171836349695404220.Spec : Prop :=
  ∀ n, P17171836349695404220.a n = A248578 (n + 1)

end A248578

/-! ## A248578.P3734629980898358682

`lt[A325325(n+1), A000051(A390307(2*n+7))]`
-/

namespace A248578.P3734629980898358682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A390307 (2 * n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248578.P3734629980898358682

namespace A248578

/-- `lt[A325325(n+1), A000051(A390307(2*n+7))]` -/
def P3734629980898358682.Spec : Prop :=
  ∀ n, (P3734629980898358682.a n : ℤ) = A248578 (n + 1)

end A248578

/-!
# A248579: a(n) = the smallest numbers k such that n*T(k)-1 and n*T(k)+1 are twin primes or 0 if no solution exists for n where T(k) = A000217(k) = k-th triangular number.

The programs for A248579, there is no canonical definition to state claims against.
-/

/-! ## A248579.P3068592387044446834

`floor(sqrt(2*A248580(n+1)))`
-/

namespace A248579.P3068592387044446834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A248580 (n + 1))

end

end A248579.P3068592387044446834

/-! ## A248579.P7489640559356259679

`A003056(A248580(n+1))`
-/

namespace A248579.P7489640559356259679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A248580 (n + 1)).toNat

end

end A248579.P7489640559356259679

/-! ## A248579.P5857698610511138251

`A079904(A248580(n+1)+1)`
-/

namespace A248579.P5857698610511138251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 (A248580 (n + 1) + 1).toNat

end

end A248579.P5857698610511138251

/-! ## A248579.P16086992652544674129

`A248813(A248580(n+1)+1)`
-/

namespace A248579.P16086992652544674129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 (A248580 (n + 1) + 1).toNat

end

end A248579.P16086992652544674129

/-! ## A248579.P13339941396149449664

`A000194(2*A248580(n+1))`
-/

namespace A248579.P13339941396149449664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A248580 (n + 1)).toNat

end

end A248579.P13339941396149449664

/-! ## A248579.P1154376113752939791

`A000196(2*A248580(n+1))`
-/

namespace A248579.P1154376113752939791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A248580 (n + 1)).toNat

end

end A248579.P1154376113752939791

/-! ## A248579.P16317900069142797396

`A053186(2*A248580(n+1))`
-/

namespace A248579.P16317900069142797396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (2 * A248580 (n + 1)).toNat

end

end A248579.P16317900069142797396

/-! ## A248579.P14746846853273767987

`A002262(4*A248580(n+1))`
-/

namespace A248579.P14746846853273767987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (4 * A248580 (n + 1)).toNat

end

end A248579.P14746846853273767987

/-! ## A248579.P3490217760417526245

`A025581(4*A248580(n+1))`
-/

namespace A248579.P3490217760417526245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (4 * A248580 (n + 1)).toNat

end

end A248579.P3490217760417526245

/-! ## A248579.P1625988241652070433

`round(sqrt(2*A248580(n+1)))%A016969(n)`
-/

namespace A248579.P1625988241652070433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A248580 (n + 1) : ℝ))) (A016969 n)

end

end A248579.P1625988241652070433

/-!
# A248580: a(n) = the smallest triangular number T(k) such that n*T(k)-1 and n*T(k)+1 are twin primes or 0 if no solution exists for n; T(k) = A000217(k) = k-th triangular number.

The programs for A248580, there is no canonical definition to state claims against.
-/

/-! ## A248580.P7422943286153678958

`A000217(A248579(n+1))`
-/

namespace A248580.P7422943286153678958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A248579 (n + 1)).toNat

end

end A248580.P7422943286153678958

/-! ## A248580.P7742048800948629951

`A161680(A248579(n+1)+1)`
-/

namespace A248580.P7742048800948629951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A248579 (n + 1) + 1).toNat

end

end A248580.P7742048800948629951

/-! ## A248580.P8989563561890325987

`floor(A165900(A248579(n+1)+1)/2)+1`
-/

namespace A248580.P8989563561890325987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165900 (A248579 (n + 1) + 1).toNat : ℚ) / 2⌋ + 1

end

end A248580.P8989563561890325987

/-! ## A248580.P13153025438957606476

`A000124(A248579(n+1))-A007318(and(1, -n))`
-/

namespace A248580.P13153025438957606476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A248579 (n + 1)).toNat - A007318 (Int.land 1 (-(n : ℤ))).toNat

end

end A248580.P13153025438957606476

/-! ## A248580.P17841563039703016259

`A000124(A248579(n+1))-A014963(6*(n+1))`
-/

namespace A248580.P17841563039703016259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A248579 (n + 1)).toNat - A014963 (6 * (n + 1))

end

end A248580.P17841563039703016259

/-! ## A248580.P10489777594968276512

`A000124(A248579(n+1))-A000045(((-1)^n)²)`
-/

namespace A248580.P10489777594968276512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A248579 (n + 1)).toNat - A000045 (((-1) ^ n) ^ 2).toNat

end

end A248580.P10489777594968276512

/-! ## A248580.P8362913699369187020

`A000124(A248579(n+1))-A007318(((-1)^n)²)`
-/

namespace A248580.P8362913699369187020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A248579 (n + 1)).toNat - A007318 (((-1) ^ n) ^ 2).toNat

end

end A248580.P8362913699369187020

/-! ## A248580.P4353411273397765312

`A000124(A248579(n+1))+1-A020639(lcm(2, n+1))`
-/

namespace A248580.P4353411273397765312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A248579 (n + 1)).toNat + (1 - A020639 (Nat.lcm 2 (n + 1)))

end

end A248580.P4353411273397765312

/-!
# A248583: The least number m == 1 (mod 6) that is divisible by prime(n).

The programs for A248583, the canonical program `A248583.P1905991375777124774` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248583 has offset 3).

The definition of A248583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248583.P1905991375777124774

`(4*floor((A000040(n+3)%6+4)/6)+1)*A000040(n+3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248583

/-- `(4*floor((A000040(n+3)%6+4)/6)+1)*A000040(n+3)` -/
def P1905991375777124774.Spec : Prop :=
  ∀ n, P1905991375777124774.a n = A248583 (n + 3)

theorem P1905991375777124774.correct : P1905991375777124774.Spec := by
  intro n
  simp only [A248583, Nat.add_sub_cancel]

end A248583

/-! ## A248583.P17161807323355531184

`p?[2*n+5]%6*p?[2*n+5]`
-/

namespace A248583.P17161807323355531184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % 6 * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A248583.P17161807323355531184

namespace A248583

/-- `p?[2*n+5]%6*p?[2*n+5]` -/
def P17161807323355531184.Spec : Prop :=
  ∀ n, (P17161807323355531184.a n : ℤ) = A248583 (n + 3)

end A248583

/-! ## A248583.P9994510648735926442

`A140213(A001750(n+3))`
-/

namespace A248583.P9994510648735926442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140213 (A001750 (n + 3)).toNat

end

end A248583.P9994510648735926442

namespace A248583

/-- `A140213(A001750(n+3))` -/
def P9994510648735926442.Spec : Prop :=
  ∀ n, P9994510648735926442.a n = A248583 (n + 3)

end A248583

/-! ## A248583.P2656938342410525974

`A140213(5*A045344(n+2))`
-/

namespace A248583.P2656938342410525974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140213 (5 * A045344 (n + 2)).toNat

end

end A248583.P2656938342410525974

namespace A248583

/-- `A140213(5*A045344(n+2))` -/
def P2656938342410525974.Spec : Prop :=
  ∀ n, P2656938342410525974.a n = A248583 (n + 3)

end A248583

/-! ## A248583.P8032239342691309921

`A140213(5*A000040(n+3))`
-/

namespace A248583.P8032239342691309921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140213 (5 * A000040 (n + 3)).toNat

end

end A248583.P8032239342691309921

namespace A248583

/-- `A140213(5*A000040(n+3))` -/
def P8032239342691309921.Spec : Prop :=
  ∀ n, P8032239342691309921.a n = A248583 (n + 3)

end A248583

/-! ## A248583.P515680013583570506

`A000040(n+3)*A039704(n+3)`
-/

namespace A248583.P515680013583570506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) * A039704 (n + 3)

end

end A248583.P515680013583570506

namespace A248583

/-- `A000040(n+3)*A039704(n+3)` -/
def P515680013583570506.Spec : Prop :=
  ∀ n, P515680013583570506.a n = A248583 (n + 3)

end A248583

/-! ## A248583.P4033201094615271716

`A008578(n+4)*A039704(n+3)`
-/

namespace A248583.P4033201094615271716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 4) * A039704 (n + 3)

end

end A248583.P4033201094615271716

namespace A248583

/-- `A008578(n+4)*A039704(n+3)` -/
def P4033201094615271716.Spec : Prop :=
  ∀ n, P4033201094615271716.a n = A248583 (n + 3)

end A248583

/-! ## A248583.P2961085624052506460

`record[A006530(n+5)]%6*record[A006530(n+5)]`
-/

namespace A248583.P2961085624052506460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 6 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A248583.P2961085624052506460

namespace A248583

/-- `record[A006530(n+5)]%6*record[A006530(n+5)]` -/
def P2961085624052506460.Spec : Prop :=
  ∀ n, P2961085624052506460.a n = A248583 (n + 3)

end A248583

/-! ## A248583.P15038528710315163301

`record[A014963(n+5)]%6*record[A014963(n+5)]`
-/

namespace A248583.P15038528710315163301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 6 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A248583.P15038528710315163301

namespace A248583

/-- `record[A014963(n+5)]%6*record[A014963(n+5)]` -/
def P15038528710315163301.Spec : Prop :=
  ∀ n, P15038528710315163301.a n = A248583 (n + 3)

end A248583

/-! ## A248583.P18213207999094325351

`record[A020639(n+5)]%6*record[A020639(n+5)]`
-/

namespace A248583.P18213207999094325351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 6 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A248583.P18213207999094325351

namespace A248583

/-- `record[A020639(n+5)]%6*record[A020639(n+5)]` -/
def P18213207999094325351.Spec : Prop :=
  ∀ n, P18213207999094325351.a n = A248583 (n + 3)

end A248583

/-!
# A248586: a(n) = Sum_{i=0..n} C(n,i)*C(2i,i)^2.

The programs for A248586, there is no canonical definition to state claims against.
-/

/-! ## A248586.P5657731255319659549

`A292763(A292763(n+1)*A292877(n))`
-/

namespace A248586.P5657731255319659549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292763 (A292763 (n + 1) * A292877 n).toNat

end

end A248586.P5657731255319659549

/-!
# A248591: Numerators of the (simplified) rationals n*2^(n - 1)/(n - 1)! .

The programs for A248591, the canonical program `A248591.P1269342593046905817` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248591 has offset 1).

The definition of A248591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6018 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248591.P1269342593046905817

`(n+1)/A171435(n+1)*A001316(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A248591

/-- `(n+1)/A171435(n+1)*A001316(n)` -/
def P1269342593046905817.Spec : Prop :=
  ∀ n, P1269342593046905817.a n = (A248591 (n + 1) : ℚ)

end A248591

/-! ## A248591.P15019157470606274037

`lcm(A000142(n), A001787(n+1))/A000142(n)`
-/

namespace A248591.P15019157470606274037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000142 n) (A001787 (n + 1)) : ℚ) / (A000142 n : ℚ)

end

end A248591.P15019157470606274037

namespace A248591

/-- `lcm(A000142(n), A001787(n+1))/A000142(n)` -/
def P15019157470606274037.Spec : Prop :=
  ∀ n, P15019157470606274037.a n = (A248591 (n + 1) : ℚ)

end A248591

/-! ## A248591.P18132306529740058933

`A002544(n)/gcd(A001147(n+1), A002544(n))`
-/

namespace A248591.P18132306529740058933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002544 n : ℚ) / (Int.gcd (A001147 (n + 1)) (A002544 n) : ℚ)

end

end A248591.P18132306529740058933

namespace A248591

/-- `A002544(n)/gcd(A001147(n+1), A002544(n))` -/
def P18132306529740058933.Spec : Prop :=
  ∀ n, P18132306529740058933.a n = (A248591 (n + 1) : ℚ)

end A248591

/-!
# A248592: Denominators of the (simplified) rational numbers n*2^(n - 1)/(n - 1)! .

The programs for A248592, there is no canonical definition to state claims against.
-/

/-! ## A248592.P15903319897374859242

`A049606(n)/A171435(n+1)`
-/

namespace A248592.P15903319897374859242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049606 n : ℚ) / (A171435 (n + 1) : ℚ)

end

end A248592.P15903319897374859242

/-! ## A248592.P9900409393661989112

`A049606(n)/gcd(A049606(n), A103517(n))`
-/

namespace A248592.P9900409393661989112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049606 n : ℚ) / (Int.gcd (A049606 n) (A103517 n) : ℚ)

end

end A248592.P9900409393661989112

/-! ## A248592.P18199912347219108767

`A085467(∑[n+1])`
-/

namespace A248592.P18199912347219108767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085467 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248592.P18199912347219108767

/-! ## A248592.P16680115319183004322

`gcd(∏[A005408(n)], A092043(n+1))`
-/

namespace A248592.P16680115319183004322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A092043 (n + 1))

end

end A248592.P16680115319183004322

/-! ## A248592.P17754340401287740514

`A085466(n+1)/A000079(A004396(3*n+1))`
-/

namespace A248592.P17754340401287740514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085466 (n + 1) : ℚ) / (A000079 (A004396 (3 * n + 1)).toNat : ℚ)

end

end A248592.P17754340401287740514

/-!
# A248595: Smallest prime number Q such that there is a prime number R such that floor(Q/R)=prime(n).

The programs for A248595, there is no canonical definition to state claims against.
-/

/-! ## A248595.P3446721489577812453

`A248597(n+1)+A000040(n+1)*A248596(n+1)`
-/

namespace A248595.P3446721489577812453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248597 (n + 1) + A000040 (n + 1) * A248596 (n + 1)

end

end A248595.P3446721489577812453

/-! ## A248595.P13926389717302721520

`A151800(Δ[A007504(n)]*A248596(n+1))`
-/

namespace A248595.P13926389717302721520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((f1 (n + 1) - f1 n) * A248596 (n + 1)).toNat

end

end A248595.P13926389717302721520

/-! ## A248595.P14592863312693133125

`A151800(p?[A090223(n)]*A248596(n+1))`
-/

namespace A248595.P14592863312693133125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A248596 (n + 1)).toNat

end

end A248595.P14592863312693133125

/-! ## A248595.P818291771432000302

`A151800(A000040(n+1)*A248596(n+1))`
-/

namespace A248595.P818291771432000302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000040 (n + 1) * A248596 (n + 1)).toNat

end

end A248595.P818291771432000302

/-! ## A248595.P12432282887446977876

`A151800(record[A006530(n+2)]*A248596(n+1))`
-/

namespace A248595.P12432282887446977876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A248596 (n + 1)).toNat

end

end A248595.P12432282887446977876

/-! ## A248595.P13711075036259942813

`A151800(p?[A304753(n+1)]*A248596(n+1))`
-/

namespace A248595.P13711075036259942813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A248596 (n + 1)).toNat

end

end A248595.P13711075036259942813

/-! ## A248595.P17502191582850309660

`A007918(Δ[A007504(n)]*A248596(n+1))`
-/

namespace A248595.P17502191582850309660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((f1 (n + 1) - f1 n) * A248596 (n + 1)).toNat

end

end A248595.P17502191582850309660

/-! ## A248595.P11446694954982223813

`A007918(p?[A090223(n)]*A248596(n+1))`
-/

namespace A248595.P11446694954982223813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A248596 (n + 1)).toNat

end

end A248595.P11446694954982223813

/-! ## A248595.P4736497186771654915

`A007918(A000040(n+1)*A248596(n+1))`
-/

namespace A248595.P4736497186771654915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000040 (n + 1) * A248596 (n + 1)).toNat

end

end A248595.P4736497186771654915

/-! ## A248595.P1144500308219599303

`A007918(p?[A304753(n+1)]*A248596(n+1))`
-/

namespace A248595.P1144500308219599303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A248596 (n + 1)).toNat

end

end A248595.P1144500308219599303

/-!
# A248596: Smallest prime number R such that there is a prime number Q with floor(Q/R) = prime(n).

The programs for A248596, there is no canonical definition to state claims against.
-/

/-! ## A248596.P12192756699636334315

`floor(A248595(n+1)/A000040(n+1))`
-/

namespace A248596.P12192756699636334315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A248595 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A248596.P12192756699636334315

/-! ## A248596.P11080576201706663191

`ceil(A248595(n+1)/A008864(n+1))`
-/

namespace A248596.P11080576201706663191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A248595 (n + 1) : ℚ) / (A008864 (n + 1) : ℚ)⌉

end

end A248596.P11080576201706663191

/-! ## A248596.P10701787558125431434

`ceil(A248595(n+1)/A065091(n+1))`
-/

namespace A248596.P10701787558125431434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A248595 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)⌉

end

end A248596.P10701787558125431434

/-! ## A248596.P11748676087568926195

`(A248595(n+1)-A248597(n+1))/A000040(n+1)`
-/

namespace A248596.P11748676087568926195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248595 (n + 1) - A248597 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A248596.P11748676087568926195

/-! ## A248596.P3696927302578401914

`A020639(A248595(n+1)-A248597(n+1))`
-/

namespace A248596.P3696927302578401914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A248595 (n + 1) - A248597 (n + 1)).toNat

end

end A248596.P3696927302578401914

/-!
# A248597: a(n) = A248595(n) - prime(n)*A248596(n).

The programs for A248597, there is no canonical definition to state claims against.
-/

/-! ## A248597.P6689148496273082190

`A248595(n+1)-A000040(n+1)*A248596(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A248597.P6689148496273082190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248595 (n + 1) - A000040 (n + 1) * A248596 (n + 1)

end

end A248597.P6689148496273082190

/-! ## A248597.P7031367496149621972

`A248595(n+1)%Δ[A007504(n)]`
-/

namespace A248597.P7031367496149621972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248595 (n + 1)) (f1 (n + 1) - f1 n)

end

end A248597.P7031367496149621972

/-! ## A248597.P10763013497317892649

`A007913(A248595(n+1))%A000040(n+1)`
-/

namespace A248597.P10763013497317892649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007913 (A248595 (n + 1)).toNat) (A000040 (n + 1))

end

end A248597.P10763013497317892649

/-! ## A248597.P4280853954021173446

`A006530(A248595(n+1))%A248596(n+1)`
-/

namespace A248597.P4280853954021173446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A248595 (n + 1)).toNat) (A248596 (n + 1))

end

end A248597.P4280853954021173446

/-! ## A248597.P4814411339671913355

`A013632(A000040(n+1)*A248596(n+1))`
-/

namespace A248597.P4814411339671913355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A000040 (n + 1) * A248596 (n + 1)).toNat

end

end A248597.P4814411339671913355

/-!
# A248598: a(n) = (2*n+23)*n*(n-1), a coefficient appearing in the formula a(n)*Pi/324+n+1 giving the average number of regions into which n random planes divide the cube.

The programs for A248598, the canonical program `A248598.P2387643955856173779` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248598 has offset 0).

The definition of A248598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248598.P2387643955856173779

`(2*n+23)*n*(n-1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248598

/-- `(2*n+23)*n*(n-1)` -/
def P2387643955856173779.Spec : Prop :=
  ∀ n, P2387643955856173779.a n = A248598 n

theorem P2387643955856173779.correct : P2387643955856173779.Spec := by
  intro n
  simp only [A248598]

end A248598

/-! ## A248598.P7997760064531625408

`A261343(n)+A015238(n)`
-/

namespace A248598.P7997760064531625408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261343 n + A015238 n

end

end A248598.P7997760064531625408

namespace A248598

/-- `A261343(n)+A015238(n)` -/
def P7997760064531625408.Spec : Prop :=
  ∀ n, P7997760064531625408.a n = A248598 n

theorem P7997760064531625408.correct : P7997760064531625408.Spec := by
  intro n
  simp only [A248598, Nat.add_sub_cancel, A248598.P7997760064531625408.a, A248598.P2387643955856173779.a, A015238, A015238.P18123639342462093912.a, A261343, A261343.P1195641689784462972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A248598

/-! ## A248598.P11884056210117287333

`A261343(n)+n*A014107(n)`
-/

namespace A248598.P11884056210117287333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261343 n + (n : ℤ) * A014107 n

end

end A248598.P11884056210117287333

namespace A248598

/-- `A261343(n)+n*A014107(n)` -/
def P11884056210117287333.Spec : Prop :=
  ∀ n, P11884056210117287333.a n = A248598 n

theorem P11884056210117287333.correct : P11884056210117287333.Spec := by
  intro n
  simp only [A248598, Nat.add_sub_cancel, A248598.P11884056210117287333.a, A248598.P2387643955856173779.a, A014107, A014107.P7046062318563033165.a, A261343, A261343.P1195641689784462972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A248598

/-! ## A248598.P10499184864681323257

`n*A132754(2*n)-A132754(2*n)`
-/

namespace A248598.P10499184864681323257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A132754 (2 * n) - A132754 (2 * n)

end

end A248598.P10499184864681323257

namespace A248598

/-- `n*A132754(2*n)-A132754(2*n)` -/
def P10499184864681323257.Spec : Prop :=
  ∀ n, P10499184864681323257.a n = A248598 n

end A248598

/-! ## A248598.P10890512113952239909

`∑[(n+7)*6*log2(A011782(n))]`
-/

namespace A248598.P10890512113952239909
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℝ) * (6 * Real.logb 2 (A011782 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248598.P10890512113952239909

namespace A248598

/-- `∑[(n+7)*6*log2(A011782(n))]` -/
def P10890512113952239909.Spec : Prop :=
  ∀ n, P10890512113952239909.a n = (A248598 n : ℝ)

end A248598

/-!
# A248599: Positive integers whose square is expressible in exactly one way as x^2 + 4xy + y^2, with 0 < x < y.

The programs for A248599, there is no canonical definition to state claims against.
-/

/-! ## A248599.P18433958615952909552

`lt[1, A035186((n+1)²)]+1`
-/

namespace A248599.P18433958615952909552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A248599.P18433958615952909552

/-! ## A248599.P11592698031571988268

`lt[1, A035186(A253909(n))]`
-/

namespace A248599.P11592698031571988268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A248599.P11592698031571988268

/-! ## A248599.P9137211487230823680

`lt[1, A035186(A028310(n²))]`
-/

namespace A248599.P9137211487230823680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A028310 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A248599.P9137211487230823680

/-! ## A248599.P8715786179659333561

`A063660(eq[3, A035186((n+1)²)])`
-/

namespace A248599.P8715786179659333561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248599.P8715786179659333561

/-! ## A248599.P17422695954765427310

`lt[1, A035186((A000038(n)+n)²)]`
-/

namespace A248599.P17422695954765427310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 ((A000038 n + (n : ℤ)) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A248599.P17422695954765427310

