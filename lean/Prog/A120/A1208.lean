import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A120800: a(n) = 3^(n^2) + 2^(n^2).

The programs for A120800, the canonical program `A120800.P13227663531485442143` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120800 has offset 0).

The definition of A120800 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n²+2^n²` (program `A120800.P13227663531485442143`, by `A120800.P13227663531485442143.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120800.P13227663531485442143

`3^n²+2^n²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A120800

/-- `3^n²+2^n²` -/
def P13227663531485442143.Spec : Prop :=
  ∀ n, (P13227663531485442143.a n : ℤ) = A120800 n

theorem P13227663531485442143.correct : P13227663531485442143.Spec := by
  intro n
  simp only [A120800]

end A120800

/-! ## A120800.P9923434987678572313

`A007689(n²)`
-/

namespace A120800.P9923434987678572313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 (n ^ 2)

end

end A120800.P9923434987678572313

namespace A120800

/-- `A007689(n²)` -/
def P9923434987678572313.Spec : Prop :=
  ∀ n, P9923434987678572313.a n = A120800 n

end A120800

/-! ## A120800.P17954123595530525789

`A085281(n²+1)`
-/

namespace A120800.P17954123595530525789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 (n ^ 2 + 1)

end

end A120800.P17954123595530525789

namespace A120800

/-- `A085281(n²+1)` -/
def P17954123595530525789.Spec : Prop :=
  ∀ n, P17954123595530525789.a n = A120800 n

end A120800

/-! ## A120800.P18210434129301274975

`A229194(A093328(n))`
-/

namespace A120800.P18210434129301274975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229194 (A093328 n).toNat

end

end A120800.P18210434129301274975

namespace A120800

/-- `A229194(A093328(n))` -/
def P18210434129301274975.Spec : Prop :=
  ∀ n, P18210434129301274975.a n = A120800 n

end A120800

/-! ## A120800.P3733820174440711172

`record[A007689(A073254(n))]`
-/

namespace A120800.P3733820174440711172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 (A073254 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120800.P3733820174440711172

namespace A120800

/-- `record[A007689(A073254(n))]` -/
def P3733820174440711172.Spec : Prop :=
  ∀ n, P3733820174440711172.a n = A120800 n

end A120800

/-!
# A120801: a(n) = 3^(n^2) - 2^(n^2).

The programs for A120801, the canonical program `A120801.P650219850743146877` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120801 has offset 0).

The definition of A120801 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n²-2^n²` (program `A120801.P650219850743146877`, by `A120801.P650219850743146877.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120801.P650219850743146877

`3^n²-2^n²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A120801

/-- `3^n²-2^n²` -/
def P650219850743146877.Spec : Prop :=
  ∀ n, P650219850743146877.a n = A120801 n

theorem P650219850743146877.correct : P650219850743146877.Spec := by
  intro n
  simp only [A120801]

end A120801

/-! ## A120801.P12757318512086818726

`A001047(n²)`
-/

namespace A120801.P12757318512086818726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n ^ 2)

end

end A120801.P12757318512086818726

namespace A120801

/-- `A001047(n²)` -/
def P12757318512086818726.Spec : Prop :=
  ∀ n, P12757318512086818726.a n = A120801 n

end A120801

/-! ## A120801.P9281232156188618222

`A056182(n²)/2`
-/

namespace A120801.P9281232156188618222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056182 (n ^ 2) : ℚ) / 2

end

end A120801.P9281232156188618222

namespace A120801

/-- `A056182(n²)/2` -/
def P9281232156188618222.Spec : Prop :=
  ∀ n, P9281232156188618222.a n = (A120801 n : ℚ)

end A120801

/-! ## A120801.P14957437507387891119

`A210448(n²)/3`
-/

namespace A120801.P14957437507387891119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210448 (n ^ 2) : ℚ) / 3

end

end A120801.P14957437507387891119

namespace A120801

/-- `A210448(n²)/3` -/
def P14957437507387891119.Spec : Prop :=
  ∀ n, P14957437507387891119.a n = (A120801 n : ℚ)

end A120801

/-! ## A120801.P12324438387097245294

`(A002783(n²)-1)/2`
-/

namespace A120801.P12324438387097245294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002783 (n ^ 2) - 1 : ℚ) / 2

end

end A120801.P12324438387097245294

namespace A120801

/-- `(A002783(n²)-1)/2` -/
def P12324438387097245294.Spec : Prop :=
  ∀ n, P12324438387097245294.a n = (A120801 n : ℚ)

end A120801

/-!
# A120802: a(n) = 5^(n^2)+3^n.

The programs for A120802, the canonical program `A120802.P12790823865466165850` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120802 has offset 0).

The definition of A120802 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n²+3^n` (program `A120802.P12790823865466165850`, by `A120802.P12790823865466165850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120802.P12790823865466165850

`5^n²+3^n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A120802

/-- `5^n²+3^n` -/
def P12790823865466165850.Spec : Prop :=
  ∀ n, (P12790823865466165850.a n : ℤ) = A120802 n

theorem P12790823865466165850.correct : P12790823865466165850.Spec := by
  intro n
  simp only [A120802]

end A120802

/-!
# A120803: Number of series-reduced balanced trees with n leaves.

The programs for A120803, there is no canonical definition to state claims against.
-/

/-! ## A120803.P11862772205147257670

`A320291(A187829(n+1))+1`
-/

namespace A120803.P11862772205147257670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320291 (A187829 (n + 1)).toNat + 1

end

end A120803.P11862772205147257670

/-! ## A120803.P7940355519254142979

`A320291(n+1)+A284098(A011782(n))`
-/

namespace A120803.P7940355519254142979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320291 (n + 1) + A284098 (A011782 n).toNat

end

end A120803.P7940355519254142979

/-! ## A120803.P257149128067526418

`A320291(n+1)+A057427(A065507(n+1))`
-/

namespace A120803.P257149128067526418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320291 (n + 1) + A057427 (A065507 (n + 1)).toNat

end

end A120803.P257149128067526418

/-! ## A120803.P18289911066017992234

`A320291(n+1)+A294934(A351310(n+1))`
-/

namespace A120803.P18289911066017992234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320291 (n + 1) + A294934 (A351310 (n + 1)).toNat

end

end A120803.P18289911066017992234

/-! ## A120803.P761098316927254443

`A320291(3^C(a(n-1), 68)+n)+1` with `a(0)=1`
-/

namespace A120803.P761098316927254443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320291 (3 ^ Nat.choose (a (n - 1)).toNat 68 + n) + 1

end

end A120803.P761098316927254443

/-!
# A120804: Primes with consecutive digits descending.

The programs for A120804, there is no canonical definition to state claims against.
-/

/-! ## A120804.P15424788469214812827

`p?[A158699(n)]`
-/

namespace A120804.P15424788469214812827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120804.P15424788469214812827

/-! ## A120804.P254593586058090580

`A036343(∑[A080791(n)!])`
-/

namespace A120804.P254593586058090580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A080791 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036343 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120804.P254593586058090580

/-! ## A120804.P12777044073987929175

`p?[A036343(A020655(n+1))]`
-/

namespace A120804.P12777044073987929175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036343 (A020655 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120804.P12777044073987929175

/-! ## A120804.P13410631225908189877

`filter[A158699(n+1), A010051(#)]`
-/

namespace A120804.P13410631225908189877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A120804.P13410631225908189877

/-!
# A120805: Primes with consecutive digits.

The programs for A120805, there is no canonical definition to state claims against.
-/

/-! ## A120805.P1508341373032999012

`p?[∪[A059043(n+2), A158699(n)]]`
-/

namespace A120805.P1508341373032999012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158699 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A120805.P1508341373032999012

/-! ## A120805.P13262886341779241781

`∩[A068148(n+1), A068710(n+1)]`
-/

namespace A120805.P13262886341779241781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120805.P13262886341779241781

/-! ## A120805.P10540490558791258883

`∩[A068148(n+1), A323578(n+1)]`
-/

namespace A120805.P10540490558791258883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120805.P10540490558791258883

/-! ## A120805.P17264084166656319357

`∩[A068710(n+1), A376425(n+1)]`
-/

namespace A120805.P17264084166656319357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120805.P17264084166656319357

/-! ## A120805.P2209283847959037419

`∩[A323578(n+1), A376425(n+1)]`
-/

namespace A120805.P2209283847959037419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120805.P2209283847959037419

/-!
# A120806: Positive integers k such that k+d+1 is prime for all divisors d of k.

The programs for A120806, there is no canonical definition to state claims against.
-/

/-! ## A120806.P10808543508182037167

`∪[A045536(n+1), A187554(n+1)]`
-/

namespace A120806.P10808543508182037167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120806.P10808543508182037167

/-! ## A120806.P15395633141385978453

`∪[floor(A118072(n+1)/2), A187554(n+1)]`
-/

namespace A120806.P15395633141385978453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118072 (n + 1) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120806.P15395633141385978453

/-! ## A120806.P12815716671584724369

`∪[A187554(n+1), p?[A206037(n+1)+1]]`
-/

namespace A120806.P12815716671584724369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187554 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206037 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120806.P12815716671584724369

/-! ## A120806.P759449666783714389

`∪[p?[A063908(n+1)-2], A187554(n+1)]`
-/

namespace A120806.P759449666783714389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A120806.P759449666783714389

/-! ## A120806.P4949957144404715625

`∪[p?[A176045(n+1)+1]-2, A187554(n+1)]`
-/

namespace A120806.P4949957144404715625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A120806.P4949957144404715625

/-!
# A120807: 

The programs for A120807, there is no canonical definition to state claims against.
-/

/-! ## A120807.P3087490170308119257

`A120808(n+1)^3`
-/

namespace A120807.P3087490170308119257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120808 (n + 1) ^ 3

end

end A120807.P3087490170308119257

/-!
# A120811: Positive integers n such that n+d+1 is prime for all proper divisors d of n. Generalization of twin prime to all integers.

The programs for A120811, there is no canonical definition to state claims against.
-/

/-! ## A120811.P11169831468785104932

`lt[A002729(A011773(n+1)), A098371(n+2)]`
-/

namespace A120811.P11169831468785104932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002729 (A011773 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098371 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120811.P11169831468785104932

/-! ## A120811.P13795697762683909622

`lt[A354192(A002322(2*(n+1))), A173614(n+2)]`
-/

namespace A120811.P13795697762683909622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354192 (A002322 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173614 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120811.P13795697762683909622

/-! ## A120811.P625724507986659481

`lt[A354192(A002322(2*(n+1))), A023900(2*(n+2))]`
-/

namespace A120811.P625724507986659481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354192 (A002322 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120811.P625724507986659481

/-! ## A120811.P5966988946704476464

`lt[A086508(n+3), A086222(n+1)]`
-/

namespace A120811.P5966988946704476464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086508 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120811.P5966988946704476464

/-! ## A120811.P9350154893326588550

`eq[A000005(n+2), A321696(A000009(n))]`
-/

namespace A120811.P9350154893326588550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321696 (A000009 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120811.P9350154893326588550

/-!
# A120813: Number of permutations of length n with exactly 5 occurrences of the pattern 2-13.

The programs for A120813, there is no canonical definition to state claims against.
-/

/-! ## A120813.P10193368148190392520

`Δ[C(A109230(n+1), 11)]`
-/

namespace A120813.P10193368148190392520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A109230 (n + 1)).toNat 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A120813.P10193368148190392520

/-! ## A120813.P17395858907797567003

`A344420(C(2*n+7, 15))`
-/

namespace A120813.P17395858907797567003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (Nat.choose (2 * n + 7) 15)

end

end A120813.P17395858907797567003

/-! ## A120813.P10075518163592724231

`A320657(A036661(n))`
-/

namespace A120813.P10075518163592724231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320657 (A036661 n).toNat

end

end A120813.P10075518163592724231

/-!
# A120814: Number of permutations of length n with exactly 6 occurrences of the pattern 2-13.

The programs for A120814, there is no canonical definition to state claims against.
-/

/-! ## A120814.P6133633381606976746

`A339166(floor(sqrt(C(2*n, n))))`
-/

namespace A120814.P6133633381606976746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339166 (Nat.sqrt (Nat.choose (2 * n) n))

end

end A120814.P6133633381606976746

/-! ## A120814.P17253870996927877972

`A014228(a(n-1))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A120814.P17253870996927877972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0] fun n a =>
  A014228 (a (n - 1)).toNat

end

end A120814.P17253870996927877972

/-! ## A120814.P15900449504116541473

`ceil(acot(n)*A007031(2*(n+2)))`
-/

namespace A120814.P15900449504116541473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ) * (A007031 (2 * (n + 2)) : ℝ)⌉

end

end A120814.P15900449504116541473

/-!
# A120817: 10-adic integer x=...07839804103263499879186432 satisfying x^5 = x; also x^3 = -x = A120818; (x^2)^3 = x^2 = A091664; (x^4)^2 = x^4 = A018248.

The programs for A120817, there is no canonical definition to state claims against.
-/

/-! ## A120817.P15278148390742816212

`A018247(n)+A091663(n)-A120818(n)`
-/

namespace A120817.P15278148390742816212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A120818 n)

end

end A120817.P15278148390742816212

/-! ## A120817.P6747894989840413093

`A018248(n)+A091664(n)-A120818(n)`
-/

namespace A120817.P6747894989840413093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n + (A091664 n - A120818 n)

end

end A120817.P6747894989840413093

/-! ## A120817.P9111513629569900816

`A063006(n)+A091661(n)-A120818(n)`
-/

namespace A120817.P9111513629569900816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063006 n + (A091661 n - A120818 n)

end

end A120817.P9111513629569900816

/-! ## A120817.P14409920951587268262

`A290372(n)+A290375(n)-A120818(n)`
-/

namespace A120817.P14409920951587268262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290372 n + (A290375 n - A120818 n)

end

end A120817.P14409920951587268262

/-! ## A120817.P826853761920539813

`A290373(n)+A290374(n)-A120818(n)`
-/

namespace A120817.P826853761920539813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290373 n + (A290374 n - A120818 n)

end

end A120817.P826853761920539813

/-! ## A120817.P8807533107959504382

`A216102(n+1)+A216103(n+1)-A120818(n)`
-/

namespace A120817.P8807533107959504382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216102 (n + 1) + (A216103 (n + 1) - A120818 n)

end

end A120817.P8807533107959504382

/-!
# A120818: 10-adic integer x=...92160195896736500120813568 satisfying x^5 = x; also x^3 = -x = A120817; (x^2)^3 = x^2 = A091664; (x^4)^2 = x^4 = A018248.

The programs for A120818, there is no canonical definition to state claims against.
-/

/-! ## A120818.P15184618061078405281

`A018247(n)+A091663(n)-A120817(n)`
-/

namespace A120818.P15184618061078405281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A120817 n)

end

end A120818.P15184618061078405281

/-! ## A120818.P15800312392191253512

`A018248(n)+A091664(n)-A120817(n)`
-/

namespace A120818.P15800312392191253512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n + (A091664 n - A120817 n)

end

end A120818.P15800312392191253512

/-! ## A120818.P12163194123287763224

`A063006(n)+A091661(n)-A120817(n)`
-/

namespace A120818.P12163194123287763224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063006 n + (A091661 n - A120817 n)

end

end A120818.P12163194123287763224

/-! ## A120818.P2033734602909610926

`A290372(n)+A290375(n)-A120817(n)`
-/

namespace A120818.P2033734602909610926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290372 n + (A290375 n - A120817 n)

end

end A120818.P2033734602909610926

/-! ## A120818.P10947819074449212270

`A290373(n)+A290374(n)-A120817(n)`
-/

namespace A120818.P10947819074449212270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290373 n + (A290374 n - A120817 n)

end

end A120818.P10947819074449212270

/-!
# A120820: a(n) consecutive digits ascending beginning with the digit 2 give a prime.

The programs for A120820, there is no canonical definition to state claims against.
-/

/-! ## A120820.P4252823361301742287

`A330027(A077162(n+1))`
-/

namespace A120820.P4252823361301742287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330027 (A077162 (n + 1)).toNat

end

end A120820.P4252823361301742287

/-!
# A120824: a(n) consecutive digits ascending beginning with the digit 6 give a prime.

The programs for A120824, there is no canonical definition to state claims against.
-/

/-! ## A120824.P9855765907323722613

`A352194(A111584(n+1))`
-/

namespace A120824.P9855765907323722613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352194 (A111584 (n + 1)).toNat

end

end A120824.P9855765907323722613

/-!
# A120825: a(n) consecutive digits ascending beginning with the digit 7 give a prime.

The programs for A120825, there is no canonical definition to state claims against.
-/

/-! ## A120825.P8956638851588400684

`A280264(A337699(n)+A175495(3*(n+1)))`
-/

namespace A120825.P8956638851588400684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280264 (A337699 n + A175495 (3 * (n + 1))).toNat

end

end A120825.P8956638851588400684

/-!
# A120828: Numbers k such that the concatenation of n successive descending digits (1,0,9,8,7,...) starting with 1 is prime.

The programs for A120828, there is no canonical definition to state claims against.
-/

/-! ## A120828.P13958677624350045420

`A330827(A220574(n+2))`
-/

namespace A120828.P13958677624350045420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330827 (A220574 (n + 2)).toNat

end

end A120828.P13958677624350045420

/-!
# A120830: a(n) = 5^(n^2)-3^n.

The programs for A120830, the canonical program `A120830.P4458282937007440954` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120830 has offset 0).

The definition of A120830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n²-3^n` (program `A120830.P4458282937007440954`, by `A120830.P4458282937007440954.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120830.P4458282937007440954

`5^n²-3^n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A120830

/-- `5^n²-3^n` -/
def P4458282937007440954.Spec : Prop :=
  ∀ n, P4458282937007440954.a n = A120830 n

theorem P4458282937007440954.correct : P4458282937007440954.Spec := by
  intro n
  simp only [A120830]

end A120830

/-!
# A120831: Numerators of partial sums of (p+q)/(p*q), where p and q are primes.

The programs for A120831, there is no canonical definition to state claims against.
-/

/-! ## A120831.P12987882042584077859

`A083345(∏[A001358(n+1)])`
-/

namespace A120831.P12987882042584077859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120831.P12987882042584077859

/-!
# A120832: Denominators of partial sums of (p+q)/p*q, where p and q are primes.

The programs for A120832, there is no canonical definition to state claims against.
-/

/-! ## A120832.P3336793941711706389

`A000108(n)*A392731(A392700(n+1))`
-/

namespace A120832.P3336793941711706389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A392731 (A392700 (n + 1)).toNat

end

end A120832.P3336793941711706389

/-! ## A120832.P6818576377341765919

`A000030(A152663(n+2))*A000108(n)`
-/

namespace A120832.P6818576377341765919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A152663 (n + 2)).toNat * A000108 n

end

end A120832.P6818576377341765919

/-!
# A120833: Numerators of partial sums of (p+q)/p*q, where p and q are primes.

The programs for A120833, there is no canonical definition to state claims against.
-/

/-! ## A120833.P7800128259470616269

`A277417(A007016(n+3)+A000638(n))`
-/

namespace A120833.P7800128259470616269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277417 (A007016 (n + 3) + A000638 n).toNat

end

end A120833.P7800128259470616269

/-!
# A120834: Denominators of partial sums of (p+q)/p*q, where p and q are primes.

The programs for A120834, there is no canonical definition to state claims against.
-/

/-! ## A120834.P1880601513461797054

`A028310(lcm(a(n-1), A313525(n)))` with `a(0)=1`
-/

namespace A120834.P1880601513461797054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (Int.lcm (a (n - 1)) (A313525 n))

end

end A120834.P1880601513461797054

/-! ## A120834.P11290958741527201019

`∏[A112384(∑[A000211(n+1)])]`
-/

namespace A120834.P11290958741527201019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112384 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120834.P11290958741527201019

/-!
# A120835: Integer parts of partial sums of (p+q)/p*q, with primes p and q.

The programs for A120835, there is no canonical definition to state claims against.
-/

/-! ## A120835.P34426687959897138

`floor(∑[A068318(n+1)/A001358(n+1)])`
-/

namespace A120835.P34426687959897138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068318 (n + 1) : ℚ) / (A001358 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A120835.P34426687959897138

/-! ## A120835.P5298464334671739606

`A048766(∑[A333463(n+1)+A004525(n)])`
-/

namespace A120835.P5298464334671739606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333463 (n + 1) + A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120835.P5298464334671739606

/-! ## A120835.P17758899277055820433

`A048766(∑[A032924(A163297(n+1))])`
-/

namespace A120835.P17758899277055820433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (A163297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120835.P17758899277055820433

/-! ## A120835.P1880357641182773775

`A163563(∑[A000005(A152271(n))])`
-/

namespace A120835.P1880357641182773775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120835.P1880357641182773775

/-! ## A120835.P12718715050880864320

`A104147(A141214(n)+1)-2`
-/

namespace A120835.P12718715050880864320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104147 (A141214 n + 1).toNat - 2

end

end A120835.P12718715050880864320

/-!
# A120836: Integer parts of partial sums of p*q/(p+q), with primes p and q.

The programs for A120836, there is no canonical definition to state claims against.
-/

/-! ## A120836.P11437866607453301293

`floor(∑[A001358(n+1)/A068318(n+1)])`
-/

namespace A120836.P11437866607453301293
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 1) : ℚ) / (A068318 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A120836.P11437866607453301293

/-! ## A120836.P1808530561265621525

`floor(A120833(n+1)/A120834(n+1))`
-/

namespace A120836.P1808530561265621525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120833 (n + 1) : ℚ) / (A120834 (n + 1) : ℚ)⌋

end

end A120836.P1808530561265621525

/-!
# A120838: a(n) = 5^(n^2)+3^(n^2).

The programs for A120838, the canonical program `A120838.P2406999557782906728` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120838 has offset 0).

The definition of A120838 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n²+3^n²` (program `A120838.P2406999557782906728`, by `A120838.P2406999557782906728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120838.P2406999557782906728

`5^n²+3^n²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A120838

/-- `5^n²+3^n²` -/
def P2406999557782906728.Spec : Prop :=
  ∀ n, (P2406999557782906728.a n : ℤ) = A120838 n

theorem P2406999557782906728.correct : P2406999557782906728.Spec := by
  intro n
  simp only [A120838]

end A120838

/-! ## A120838.P12360872210800323809

`A074606(n²)`
-/

namespace A120838.P12360872210800323809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074606 (n ^ 2)

end

end A120838.P12360872210800323809

namespace A120838

/-- `A074606(n²)` -/
def P12360872210800323809.Spec : Prop :=
  ∀ n, P12360872210800323809.a n = A120838 n

end A120838

/-! ## A120838.P4010206296207395118

`2*A081186(n²)`
-/

namespace A120838.P4010206296207395118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081186 (n ^ 2)

end

end A120838.P4010206296207395118

namespace A120838

/-- `2*A081186(n²)` -/
def P4010206296207395118.Spec : Prop :=
  ∀ n, P4010206296207395118.a n = A120838 n

end A120838

/-!
# A120839: a(n) is the n-th positive integer which is coprime to the n-th Fibonacci number.

The programs for A120839, there is no canonical definition to state claims against.
-/

/-! ## A120839.P3957009075471441186

`A129322(∑[n+1])`
-/

namespace A120839.P3957009075471441186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129322 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120839.P3957009075471441186

/-! ## A120839.P8622807628674140725

`or(char[2], A129322(A000217(n+1)))`
-/

namespace A120839.P8622807628674140725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A129322 (A000217 (n + 1)).toNat)

end

end A120839.P8622807628674140725

/-! ## A120839.P15811547489209014694

`A129322(C(n+2, 2))+A036987(2*(n+1))`
-/

namespace A120839.P15811547489209014694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129322 (Nat.choose (n + 2) 2) + A036987 (2 * (n + 1))

end

end A120839.P15811547489209014694

/-! ## A120839.P15247516052119033198

`A129322(A000217(n+1))%A016874(n)`
-/

namespace A120839.P15247516052119033198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129322 (A000217 (n + 1)).toNat) (A016874 n)

end

end A120839.P15247516052119033198

/-! ## A120839.P13427505984378690288

`∑{d}[A129322(A000217(n+1)), A000010(#)]`
-/

namespace A120839.P13427505984378690288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129322 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A120839.P13427505984378690288

/-! ## A120839.P10379613125228636992

`char[A299969(n)]*A129322(A000217(n+1))`
-/

namespace A120839.P10379613125228636992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299969 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A129322 (A000217 (n + 1)).toNat

end

end A120839.P10379613125228636992

/-! ## A120839.P14609627123875543546

`A007318(C(2, n))*A129322(A000217(n+1))`
-/

namespace A120839.P14609627123875543546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A129322 (A000217 (n + 1)).toNat

end

end A120839.P14609627123875543546

/-! ## A120839.P8808832008786917116

`A129322(A000217(n+1))/A000041(C(n, n²))`
-/

namespace A120839.P8808832008786917116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129322 (A000217 (n + 1)).toNat : ℚ) / (A000041 (Nat.choose n (n ^ 2)) : ℚ)

end

end A120839.P8808832008786917116

/-! ## A120839.P16156829623798543631

`A000041(C(2, n+2))*A129322(A000217(n+1))`
-/

namespace A120839.P16156829623798543631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A129322 (A000217 (n + 1)).toNat

end

end A120839.P16156829623798543631

/-! ## A120839.P15224300301289448203

`A007318(and(2, n-2))*A129322(A000217(n+1))`
-/

namespace A120839.P15224300301289448203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 2)).toNat * A129322 (A000217 (n + 1)).toNat

end

end A120839.P15224300301289448203

/-! ## A120839.P16212965151515895289

`A000045(gcd(n, n+1))*A129322(A000217(n+1))`
-/

namespace A120839.P16212965151515895289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A129322 (A000217 (n + 1)).toNat

end

end A120839.P16212965151515895289

/-! ## A120839.P754011161253659433

`log2(A020639(2*(n+1)))*A129322(A000217(n+1))`
-/

namespace A120839.P754011161253659433
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A129322 (A000217 (n + 1)).toNat : ℝ)

end

end A120839.P754011161253659433

/-! ## A120839.P16733363431554309290

`A000010(and(2, n-2)!)*A129322(A000217(n+1))`
-/

namespace A120839.P16733363431554309290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Int.land 2 ((n : ℤ) - 2)).toNat) * A129322 (A000217 (n + 1)).toNat

end

end A120839.P16733363431554309290

/-! ## A120839.P6492576620020589178

`A000045(floor(n^(3/14)))!*A129322(A000217(n+1))`
-/

namespace A120839.P6492576620020589178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000045 ⌊(n : ℝ) ^ ((3 : ℚ) / 14 : ℝ)⌋.toNat).toNat : ℤ) * A129322 (A000217 (n + 1)).toNat

end

end A120839.P6492576620020589178

/-! ## A120839.P8270000612657812879

`A014963(A008458(n))*A129322(A000217(n+1))`
-/

namespace A120839.P8270000612657812879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A129322 (A000217 (n + 1)).toNat

end

end A120839.P8270000612657812879

/-! ## A120839.P5791311310783252439

`A129322(A000217(n+1))*A129322(A000124(n))`
-/

namespace A120839.P5791311310783252439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129322 (A000217 (n + 1)).toNat * A129322 (A000124 n).toNat

end

end A120839.P5791311310783252439

/-! ## A120839.P2633470248883486225

`A001222(A002144(n+1))*A129322(A000217(n+1))`
-/

namespace A120839.P2633470248883486225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002144 (n + 1)).toNat * A129322 (A000217 (n + 1)).toNat

end

end A120839.P2633470248883486225

/-! ## A120839.P2151599947449233323

`A129322(A000217(n+1))/A129322(A000124(n+2))`
-/

namespace A120839.P2151599947449233323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129322 (A000217 (n + 1)).toNat : ℚ) / (A129322 (A000124 (n + 2)).toNat : ℚ)

end

end A120839.P2151599947449233323

/-! ## A120839.P4119108205448350681

`A014963(A000217(n+3))*A129322(A000217(n+1))`
-/

namespace A120839.P4119108205448350681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 3)).toNat * A129322 (A000217 (n + 1)).toNat

end

end A120839.P4119108205448350681

/-!
# A120840: a(n) = 5^(n^2)-3^(n^2).

The programs for A120840, the canonical program `A120840.P16935572575916677205` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120840 has offset 0).

The definition of A120840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n²-3^n²` (program `A120840.P16935572575916677205`, by `A120840.P16935572575916677205.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120840.P16935572575916677205

`5^n²-3^n²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A120840

/-- `5^n²-3^n²` -/
def P16935572575916677205.Spec : Prop :=
  ∀ n, P16935572575916677205.a n = A120840 n

theorem P16935572575916677205.correct : P16935572575916677205.Spec := by
  intro n
  simp only [A120840]

end A120840

/-! ## A120840.P17317128857773796324

`A005058(n²)`
-/

namespace A120840.P17317128857773796324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005058 (n ^ 2)

end

end A120840.P17317128857773796324

namespace A120840

/-- `A005058(n²)` -/
def P17317128857773796324.Spec : Prop :=
  ∀ n, P17317128857773796324.a n = A120840 n

end A120840

/-! ## A120840.P9368332573671272148

`2*A005059(n²)`
-/

namespace A120840.P9368332573671272148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005059 (n ^ 2)

end

end A120840.P9368332573671272148

namespace A120840

/-- `2*A005059(n²)` -/
def P9368332573671272148.Spec : Prop :=
  ∀ n, P9368332573671272148.a n = A120840 n

end A120840

/-! ## A120840.P1973574361817122544

`A005058(A000290(n))%A114848(A034472(n+1))`
-/

namespace A120840.P1973574361817122544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005058 (A000290 n).toNat) (A114848 (A034472 (n + 1)).toNat)

end

end A120840.P1973574361817122544

namespace A120840

/-- `A005058(A000290(n))%A114848(A034472(n+1))` -/
def P1973574361817122544.Spec : Prop :=
  ∀ n, P1973574361817122544.a n = A120840 n

end A120840

/-!
# A120841: a(n) = the n-th positive integer which is coprime to the number of positive divisors of n.

The programs for A120841, there is no canonical definition to state claims against.
-/

/-! ## A120841.P509512149164279754

`A126571(∏{e}[n+1, #+1]+∑[n])`
-/

namespace A120841.P509512149164279754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A120841.P509512149164279754

/-! ## A120841.P8124117018705782116

`A126571(Δ[A006218(n)]+∑[n])`
-/

namespace A120841.P8124117018705782116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A120841.P8124117018705782116

/-! ## A120841.P13577907908202028389

`A126571(Δ[A054519(n)]+∑[n])`
-/

namespace A120841.P13577907908202028389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A120841.P13577907908202028389

/-! ## A120841.P7267541024951301692

`A126571(A000005(n+1)+∑[n])`
-/

namespace A120841.P7267541024951301692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (A000005 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A120841.P7267541024951301692

/-! ## A120841.P957714403184658801

`A126571(A179941(n+1)+∑[n])`
-/

namespace A120841.P957714403184658801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (A179941 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A120841.P957714403184658801

/-! ## A120841.P12860049036526049924

`A126571(A000217(n)+A000005(n+1))`
-/

namespace A120841.P12860049036526049924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (A000217 n + A000005 (n + 1)).toNat

end

end A120841.P12860049036526049924

/-! ## A120841.P4231498667749099694

`A126571(A133263(n)+A070824(n+1))`
-/

namespace A120841.P4231498667749099694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (A133263 n + A070824 (n + 1)).toNat

end

end A120841.P4231498667749099694

/-!
# A120842: a(n) = the (number of positive divisors of n)th positive integer which is coprime to n.

The programs for A120842, there is no canonical definition to state claims against.
-/

/-! ## A120842.P9425533400020531578

`A077581(∏{e}[n+1, #+1]+∑[n])`
-/

namespace A120842.P9425533400020531578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A120842.P9425533400020531578

/-! ## A120842.P9590074679740459917

`A077581(Δ[A054519(n)]+∑[n])`
-/

namespace A120842.P9590074679740459917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A120842.P9590074679740459917

/-! ## A120842.P3163277171290649873

`A077581(A000005(n+1)+∑[n])`
-/

namespace A120842.P3163277171290649873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (A000005 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A120842.P3163277171290649873

/-! ## A120842.P9076632612697650936

`A077581(A000217(n)+∏{e}[n+1, #+1])`
-/

namespace A120842.P9076632612697650936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (A000217 n + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A120842.P9076632612697650936

/-! ## A120842.P4754157863463309213

`A077664(∑[n]+A000005(n+1))-(n+1)`
-/

namespace A120842.P4754157863463309213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077664 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000005 (n + 1)).toNat - (n + 1 : ℤ)

end

end A120842.P4754157863463309213

/-! ## A120842.P9752552569300409166

`A077581(A000217(n)+A000005(n+1))`
-/

namespace A120842.P9752552569300409166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (A000217 n + A000005 (n + 1)).toNat

end

end A120842.P9752552569300409166

/-! ## A120842.P16876753334118421708

`A077581(A133263(n)+A070824(n+1))`
-/

namespace A120842.P16876753334118421708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (A133263 n + A070824 (n + 1)).toNat

end

end A120842.P16876753334118421708

/-! ## A120842.P9545444763498448266

`A077581(A161680(n+1)+A000005(n+1))`
-/

namespace A120842.P9545444763498448266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (A161680 (n + 1) + A000005 (n + 1)).toNat

end

end A120842.P9545444763498448266

/-!
# A120844: Number of multi-trace BPS operators for the quiver gauge theory of the orbifold C^2/Z_2.

The programs for A120844, there is no canonical definition to state claims against.
-/

/-! ## A120844.P12275892297141151954

`A225086(A261446(n))`
-/

namespace A120844.P12275892297141151954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A261446 n).toNat

end

end A120844.P12275892297141151954

/-! ## A120844.P18151210046248279503

`A225086(abs(A261325(n)))`
-/

namespace A120844.P18151210046248279503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 |A261325 n|.toNat

end

end A120844.P18151210046248279503

/-!
# A120845: a(n) = 2^n + 3^n + 5*n.

The programs for A120845, the canonical program `A120845.P4863247953216373638` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120845 has offset 0).

The definition of A120845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3^n+5*n` (program `A120845.P4863247953216373638`, by `A120845.P4863247953216373638.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120845.P4863247953216373638

`2^n+3^n+5*n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A120845

/-- `2^n+3^n+5*n` -/
def P4863247953216373638.Spec : Prop :=
  ∀ n, (P4863247953216373638.a n : ℤ) = A120845 n

theorem P4863247953216373638.correct : P4863247953216373638.Spec := by
  intro n
  simp only [A120845]

end A120845

/-! ## A120845.P10658455810789450193

`abs(4*n+A001550(n)-1+n)`
-/

namespace A120845.P10658455810789450193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * n : ℤ) + (A001550 n - 1 + (n : ℤ))|

end

end A120845.P10658455810789450193

namespace A120845

/-- `abs(4*n+A001550(n)-1+n)` -/
def P10658455810789450193.Spec : Prop :=
  ∀ n, P10658455810789450193.a n = A120845 n

end A120845

/-! ## A120845.P12623578151846078570

`(A297663(n)+3^n)/gcd(n, n+1)`
-/

namespace A120845.P12623578151846078570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297663 n + (3 ^ n : ℤ) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A120845.P12623578151846078570

namespace A120845

/-- `(A297663(n)+3^n)/gcd(n, n+1)` -/
def P12623578151846078570.Spec : Prop :=
  ∀ n, P12623578151846078570.a n = (A120845 n : ℚ)

end A120845

/-! ## A120845.P14441805364672052471

`Δ[A094374(n)+A192136(n)-n]`
-/

namespace A120845.P14441805364672052471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + (A192136 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120845.P14441805364672052471

namespace A120845

/-- `Δ[A094374(n)+A192136(n)-n]` -/
def P14441805364672052471.Spec : Prop :=
  ∀ n, P14441805364672052471.a n = A120845 n

end A120845

/-! ## A120845.P3552088428531962016

`abs(5*n+A000244(n+1)-A027649(n))`
-/

namespace A120845.P3552088428531962016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * n : ℤ) + (A000244 (n + 1) - A027649 n)|

end

end A120845.P3552088428531962016

namespace A120845

/-- `abs(5*n+A000244(n+1)-A027649(n))` -/
def P3552088428531962016.Spec : Prop :=
  ∀ n, P3552088428531962016.a n = A120845 n

end A120845

/-!
# A120846: a(n) = 3^n + 2^n + n.

The programs for A120846, the canonical program `A120846.P3344464937255522886` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120846 has offset 0).

The definition of A120846 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+2^n+n` (program `A120846.P3344464937255522886`, by `A120846.P3344464937255522886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120846.P3344464937255522886

`3^n+2^n+n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A120846

/-- `3^n+2^n+n` -/
def P3344464937255522886.Spec : Prop :=
  ∀ n, (P3344464937255522886.a n : ℤ) = A120846 n

theorem P3344464937255522886.correct : P3344464937255522886.Spec := by
  intro n
  simp only [A120846]

end A120846

/-! ## A120846.P7669943572645115083

`∑[Δ[A085281(n)]+1]`
-/

namespace A120846.P7669943572645115083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120846.P7669943572645115083

namespace A120846

/-- `∑[Δ[A085281(n)]+1]` -/
def P7669943572645115083.Spec : Prop :=
  ∀ n, P7669943572645115083.a n = A120846 n

end A120846

/-! ## A120846.P10869537635248338496

`abs(Δ[A094374(n)]+n)`
-/

namespace A120846.P10869537635248338496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (n : ℤ)|

end

end A120846.P10869537635248338496

namespace A120846

/-- `abs(Δ[A094374(n)]+n)` -/
def P10869537635248338496.Spec : Prop :=
  ∀ n, P10869537635248338496.a n = A120846 n

end A120846

/-! ## A120846.P15279884673428659566

`abs(Δ[A099754(n)]+n)`
-/

namespace A120846.P15279884673428659566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (n : ℤ)|

end

end A120846.P15279884673428659566

namespace A120846

/-- `abs(Δ[A099754(n)]+n)` -/
def P15279884673428659566.Spec : Prop :=
  ∀ n, P15279884673428659566.a n = A120846 n

end A120846

/-! ## A120846.P8158670368625625807

`abs(A001550(n)-1+n)`
-/

namespace A120846.P8158670368625625807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001550 n - 1 + (n : ℤ)|

end

end A120846.P8158670368625625807

namespace A120846

/-- `abs(A001550(n)-1+n)` -/
def P8158670368625625807.Spec : Prop :=
  ∀ n, P8158670368625625807.a n = A120846 n

end A120846

/-! ## A120846.P2065979484777948760

`abs(A173657(n)-2+n)`
-/

namespace A120846.P2065979484777948760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A173657 n - 2 + (n : ℤ)|

end

end A120846.P2065979484777948760

namespace A120846

/-- `abs(A173657(n)-2+n)` -/
def P2065979484777948760.Spec : Prop :=
  ∀ n, P2065979484777948760.a n = A120846 n

end A120846

/-! ## A120846.P4047708404034149857

`abs(A005056(n)+2*n+1-n)`
-/

namespace A120846.P4047708404034149857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005056 n + ((2 * n + 1 : ℤ) - (n : ℤ))|

end

end A120846.P4047708404034149857

namespace A120846

/-- `abs(A005056(n)+2*n+1-n)` -/
def P4047708404034149857.Spec : Prop :=
  ∀ n, P4047708404034149857.a n = A120846 n

end A120846

/-! ## A120846.P9929563613735652167

`abs(A023443(n)+A001550(n))`
-/

namespace A120846.P9929563613735652167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023443 n + A001550 n|

end

end A120846.P9929563613735652167

namespace A120846

/-- `abs(A023443(n)+A001550(n))` -/
def P9929563613735652167.Spec : Prop :=
  ∀ n, P9929563613735652167.a n = A120846 n

end A120846

/-! ## A120846.P2424547498634113246

`∑[A099754(n)+A000392(n)]`
-/

namespace A120846.P2424547498634113246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + A000392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120846.P2424547498634113246

namespace A120846

/-- `∑[A099754(n)+A000392(n)]` -/
def P2424547498634113246.Spec : Prop :=
  ∀ n, P2424547498634113246.a n = A120846 n

end A120846

/-! ## A120846.P1157946613907047846

`∑[A100702(n)+A011782(n)]`
-/

namespace A120846.P1157946613907047846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 n + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120846.P1157946613907047846

namespace A120846

/-- `∑[A100702(n)+A011782(n)]` -/
def P1157946613907047846.Spec : Prop :=
  ∀ n, P1157946613907047846.a n = A120846 n

end A120846

/-! ## A120846.P17199012317500389992

`∑[A094373(n)+A025192(n)]`
-/

namespace A120846.P17199012317500389992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n + A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120846.P17199012317500389992

namespace A120846

/-- `∑[A094373(n)+A025192(n)]` -/
def P17199012317500389992.Spec : Prop :=
  ∀ n, P17199012317500389992.a n = A120846 n

end A120846

/-! ## A120846.P18263416844447558066

`∑[A001550(n)-A085281(n)]`
-/

namespace A120846.P18263416844447558066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 n - A085281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120846.P18263416844447558066

namespace A120846

/-- `∑[A001550(n)-A085281(n)]` -/
def P18263416844447558066.Spec : Prop :=
  ∀ n, P18263416844447558066.a n = A120846 n

end A120846

/-! ## A120846.P15137200702994745804

`Δ[A161680(n)+A094374(n)]`
-/

namespace A120846.P15137200702994745804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A094374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120846.P15137200702994745804

namespace A120846

/-- `Δ[A161680(n)+A094374(n)]` -/
def P15137200702994745804.Spec : Prop :=
  ∀ n, P15137200702994745804.a n = A120846 n

end A120846

/-! ## A120846.P4383473079373443188

`lcm(A005056(n)+1+n, A033999(n))`
-/

namespace A120846.P4383473079373443188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005056 n + 1 + (n : ℤ)) (A033999 n)

end

end A120846.P4383473079373443188

namespace A120846

/-- `lcm(A005056(n)+1+n, A033999(n))` -/
def P4383473079373443188.Spec : Prop :=
  ∀ n, (P4383473079373443188.a n : ℤ) = A120846 n

end A120846

/-! ## A120846.P7639277521399063506

`record[A025581(n)+A007689(A025581(n))]`
-/

namespace A120846.P7639277521399063506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A007689 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120846.P7639277521399063506

namespace A120846

/-- `record[A025581(n)+A007689(A025581(n))]` -/
def P7639277521399063506.Spec : Prop :=
  ∀ n, P7639277521399063506.a n = A120846 n

end A120846

/-!
# A120847: Klarner-Rado primes. Primes in A005658.

The programs for A120847, there is no canonical definition to state claims against.
-/

/-! ## A120847.P2717133392899598791

`p?[A005658(n+1)]`
-/

namespace A120847.P2717133392899598791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120847.P2717133392899598791

/-! ## A120847.P10315134512751072447

`record[p?[A005658(A328395(n))]]`
-/

namespace A120847.P10315134512751072447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (A328395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120847.P10315134512751072447

/-! ## A120847.P3272537414710163792

`record[A020639(A005658(n+2))]`
-/

namespace A120847.P3272537414710163792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005658 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120847.P3272537414710163792

/-! ## A120847.P11949733502973895491

`∩[A000040(n+1), A005658(n+1)]`
-/

namespace A120847.P11949733502973895491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P11949733502973895491

/-! ## A120847.P7392052151840925927

`∩[A003627(n+1), A005658(n+1)]`
-/

namespace A120847.P7392052151840925927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P7392052151840925927

/-! ## A120847.P942923528302634997

`∩[A005658(n+1), A040028(n+1)]`
-/

namespace A120847.P942923528302634997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P942923528302634997

/-! ## A120847.P2274582599312252164

`∩[A005658(n+1), A040036(n+1)]`
-/

namespace A120847.P2274582599312252164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P2274582599312252164

/-! ## A120847.P4946279470400590302

`∩[A005658(n+1), A040044(n+1)]`
-/

namespace A120847.P4946279470400590302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P4946279470400590302

/-! ## A120847.P11349107003526557579

`∩[A005658(n+1), A040046(n+1)]`
-/

namespace A120847.P11349107003526557579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P11349107003526557579

/-! ## A120847.P6026082184858160764

`∩[A005658(n+1), A040049(n+1)]`
-/

namespace A120847.P6026082184858160764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P6026082184858160764

/-! ## A120847.P16634659374339936848

`∩[A005658(n+1), A040054(n+1)]`
-/

namespace A120847.P16634659374339936848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P16634659374339936848

/-! ## A120847.P12798226271099096741

`∩[A005658(n+1), A040060(n+1)]`
-/

namespace A120847.P12798226271099096741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P12798226271099096741

/-! ## A120847.P16604999953942417408

`∩[A005658(n+1), A040062(n+1)]`
-/

namespace A120847.P16604999953942417408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P16604999953942417408

/-! ## A120847.P14232892630479366709

`∩[A005658(n+1), A040065(n+1)]`
-/

namespace A120847.P14232892630479366709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P14232892630479366709

/-! ## A120847.P9056220477934954394

`∩[A005658(n+1), A040078(n+1)]`
-/

namespace A120847.P9056220477934954394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P9056220477934954394

/-! ## A120847.P2704307282052800737

`∩[A005658(n+1), A040083(n+1)]`
-/

namespace A120847.P2704307282052800737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P2704307282052800737

/-! ## A120847.P4285346657404783762

`∩[A005658(n+1), A040085(n+1)]`
-/

namespace A120847.P4285346657404783762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P4285346657404783762

/-! ## A120847.P12093273936656668518

`∩[A005658(n+1), A040087(n+1)]`
-/

namespace A120847.P12093273936656668518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P12093273936656668518

/-! ## A120847.P10846103058178113322

`∩[A005658(n+1), A040089(n+1)]`
-/

namespace A120847.P10846103058178113322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P10846103058178113322

/-! ## A120847.P18372885913544614360

`∩[A005658(n+1), A040095(n+1)]`
-/

namespace A120847.P18372885913544614360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120847.P18372885913544614360

/-!
# A120848: a(n) = 2^n + 3^n - n.

The programs for A120848, the canonical program `A120848.P5736208375405741487` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120848 has offset 0).

The definition of A120848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3^n-n` (program `A120848.P5736208375405741487`, by `A120848.P5736208375405741487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120848.P5736208375405741487

`2^n+3^n-n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A120848

/-- `2^n+3^n-n` -/
def P5736208375405741487.Spec : Prop :=
  ∀ n, P5736208375405741487.a n = A120848 n

theorem P5736208375405741487.correct : P5736208375405741487.Spec := by
  intro n
  simp only [A120848]

end A120848

/-! ## A120848.P2872070194133774301

`abs(n-A007689(n))`
-/

namespace A120848.P2872070194133774301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A007689 n|

end

end A120848.P2872070194133774301

namespace A120848

/-- `abs(n-A007689(n))` -/
def P2872070194133774301.Spec : Prop :=
  ∀ n, P2872070194133774301.a n = A120848 n

end A120848

/-! ## A120848.P1823942168785689431

`abs(n-Δ[A094374(n)])`
-/

namespace A120848.P1823942168785689431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (f1 (n + 1) - f1 n)|

end

end A120848.P1823942168785689431

namespace A120848

/-- `abs(n-Δ[A094374(n)])` -/
def P1823942168785689431.Spec : Prop :=
  ∀ n, P1823942168785689431.a n = A120848 n

end A120848

/-! ## A120848.P15708780340016309955

`abs(n-Δ[A099754(n)])`
-/

namespace A120848.P15708780340016309955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (f1 (n + 1) - f1 n)|

end

end A120848.P15708780340016309955

namespace A120848

/-- `abs(n-Δ[A099754(n)])` -/
def P15708780340016309955.Spec : Prop :=
  ∀ n, P15708780340016309955.a n = A120848 n

end A120848

/-! ## A120848.P190539454834690045

`abs(1-A001550(n)+n)`
-/

namespace A120848.P190539454834690045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001550 n + (n : ℤ)|

end

end A120848.P190539454834690045

namespace A120848

/-- `abs(1-A001550(n)+n)` -/
def P190539454834690045.Spec : Prop :=
  ∀ n, P190539454834690045.a n = A120848 n

end A120848

/-! ## A120848.P4161697400107889325

`abs(n-(A005056(n)+1))`
-/

namespace A120848.P4161697400107889325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A005056 n + 1)|

end

end A120848.P4161697400107889325

namespace A120848

/-- `abs(n-(A005056(n)+1))` -/
def P4161697400107889325.Spec : Prop :=
  ∀ n, P4161697400107889325.a n = A120848 n

end A120848

/-! ## A120848.P5101298086226471066

`abs(A085281(n+1)-n)`
-/

namespace A120848.P5101298086226471066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A085281 (n + 1) - (n : ℤ)|

end

end A120848.P5101298086226471066

namespace A120848

/-- `abs(A085281(n+1)-n)` -/
def P5101298086226471066.Spec : Prop :=
  ∀ n, P5101298086226471066.a n = A120848 n

end A120848

/-! ## A120848.P3302306476887236863

`abs(2-A173657(n)+n)`
-/

namespace A120848.P3302306476887236863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A173657 n + (n : ℤ)|

end

end A120848.P3302306476887236863

namespace A120848

/-- `abs(2-A173657(n)+n)` -/
def P3302306476887236863.Spec : Prop :=
  ∀ n, P3302306476887236863.a n = A120848 n

end A120848

/-! ## A120848.P17563601014251269560

`abs(2*n-A120846(n))`
-/

namespace A120848.P17563601014251269560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A120846 n|

end

end A120848.P17563601014251269560

namespace A120848

/-- `abs(2*n-A120846(n))` -/
def P17563601014251269560.Spec : Prop :=
  ∀ n, P17563601014251269560.a n = A120848 n

end A120848

/-! ## A120848.P10726438183748069440

`Δ[A094374(n)-A161680(n)]`
-/

namespace A120848.P10726438183748069440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n - A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120848.P10726438183748069440

namespace A120848

/-- `Δ[A094374(n)-A161680(n)]` -/
def P10726438183748069440.Spec : Prop :=
  ∀ n, P10726438183748069440.a n = A120848 n

end A120848

/-! ## A120848.P11726564688747284232

`abs(A001550(n)+A001478(n+1))`
-/

namespace A120848.P11726564688747284232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001550 n + A001478 (n + 1)|

end

end A120848.P11726564688747284232

namespace A120848

/-- `abs(A001550(n)+A001478(n+1))` -/
def P11726564688747284232.Spec : Prop :=
  ∀ n, P11726564688747284232.a n = A120848 n

end A120848

/-! ## A120848.P6475973637362575387

`abs(n-(A000244(n)+A000079(n)))`
-/

namespace A120848.P6475973637362575387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A000244 n + A000079 n)|

end

end A120848.P6475973637362575387

namespace A120848

/-- `abs(n-(A000244(n)+A000079(n)))` -/
def P6475973637362575387.Spec : Prop :=
  ∀ n, P6475973637362575387.a n = A120848 n

end A120848

/-! ## A120848.P9274780645985346380

`abs(n-(A024023(n)+A000051(n)))`
-/

namespace A120848.P9274780645985346380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A024023 n + A000051 n)|

end

end A120848.P9274780645985346380

namespace A120848

/-- `abs(n-(A024023(n)+A000051(n)))` -/
def P9274780645985346380.Spec : Prop :=
  ∀ n, P9274780645985346380.a n = A120848 n

end A120848

/-! ## A120848.P17886806444325535726

`abs(n-(A001047(n)+A000079(n+1)))`
-/

namespace A120848.P17886806444325535726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A001047 n + A000079 (n + 1))|

end

end A120848.P17886806444325535726

namespace A120848

/-- `abs(n-(A001047(n)+A000079(n+1)))` -/
def P17886806444325535726.Spec : Prop :=
  ∀ n, P17886806444325535726.a n = A120848 n

end A120848

/-! ## A120848.P8489573794952951150

`(A001550(n)-(n+1))%A316878(n+1)`
-/

namespace A120848.P8489573794952951150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001550 n - (n + 1 : ℤ)) (A316878 (n + 1))

end

end A120848.P8489573794952951150

namespace A120848

/-- `(A001550(n)-(n+1))%A316878(n+1)` -/
def P8489573794952951150.Spec : Prop :=
  ∀ n, P8489573794952951150.a n = A120848 n

end A120848

/-! ## A120848.P193261329340307117

`(A001550(n)-(n+1))%A074503(n)`
-/

namespace A120848.P193261329340307117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001550 n - (n + 1 : ℤ)) (A074503 n)

end

end A120848.P193261329340307117

namespace A120848

/-- `(A001550(n)-(n+1))%A074503(n)` -/
def P193261329340307117.Spec : Prop :=
  ∀ n, P193261329340307117.a n = A120848 n

end A120848

/-!
# A120849: a(n) = 5*n + 3^n - 2^n.

The programs for A120849, the canonical program `A120849.P12240104246286886661` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120849 has offset 0).

The definition of A120849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n+3^n-2^n` (program `A120849.P12240104246286886661`, by `A120849.P12240104246286886661.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120849.P12240104246286886661

`5*n+3^n-2^n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A120849

/-- `5*n+3^n-2^n` -/
def P12240104246286886661.Spec : Prop :=
  ∀ n, P12240104246286886661.a n = A120849 n

theorem P12240104246286886661.correct : P12240104246286886661.Spec := by
  intro n
  simp only [A120849]

end A120849

/-! ## A120849.P8794958788570666909

`abs(A008587(n)+3^n-2^n)`
-/

namespace A120849.P8794958788570666909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008587 n + ((3 ^ n : ℤ) - (2 ^ n : ℤ))|

end

end A120849.P8794958788570666909

namespace A120849

/-- `abs(A008587(n)+3^n-2^n)` -/
def P8794958788570666909.Spec : Prop :=
  ∀ n, P8794958788570666909.a n = A120849 n

end A120849

/-! ## A120849.P18229621440141781942

`abs(A005803(n)-A221905(n))`
-/

namespace A120849.P18229621440141781942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005803 n - A221905 n|

end

end A120849.P18229621440141781942

namespace A120849

/-- `abs(A005803(n)-A221905(n))` -/
def P18229621440141781942.Spec : Prop :=
  ∀ n, P18229621440141781942.a n = A120849 n

end A120849

/-! ## A120849.P11772854261802634875

`(A004273(n)-2*n)*(A005803(n)-A221905(n))`
-/

namespace A120849.P11772854261802634875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n - (2 * n : ℤ)) * (A005803 n - A221905 n)

end

end A120849.P11772854261802634875

namespace A120849

/-- `(A004273(n)-2*n)*(A005803(n)-A221905(n))` -/
def P11772854261802634875.Spec : Prop :=
  ∀ n, P11772854261802634875.a n = A120849 n

end A120849

/-! ## A120849.P5176328934466463

`Δ[A094374(n)+A192136(n)-n-A000079(n+1)]`
-/

namespace A120849.P5176328934466463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + (A192136 n - (n : ℤ)) - A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120849.P5176328934466463

namespace A120849

/-- `Δ[A094374(n)+A192136(n)-n-A000079(n+1)]` -/
def P5176328934466463.Spec : Prop :=
  ∀ n, P5176328934466463.a n = A120849 n

end A120849

/-! ## A120849.P12407296428737559631

`(A001047(n)+5*n)%A064008(n+1)`
-/

namespace A120849.P12407296428737559631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001047 n + (5 * n : ℤ)) (A064008 (n + 1))

end

end A120849.P12407296428737559631

namespace A120849

/-- `(A001047(n)+5*n)%A064008(n+1)` -/
def P12407296428737559631.Spec : Prop :=
  ∀ n, P12407296428737559631.a n = A120849 n

end A120849

/-!
# A120853: Triangle read by rows, where t(n,1) = 1, t(n,m) = t(n,m-1) + (largest nonprime {1 or composite} in row {n-1}).

The programs for A120853, there is no canonical definition to state claims against.
-/

/-! ## A120853.P1555243818410962392

`A120418(n+1)%A120433(A120446(n))`
-/

namespace A120853.P1555243818410962392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120418 (n + 1)) (A120433 (A120446 n).toNat)

end

end A120853.P1555243818410962392

/-! ## A120853.P12969238618678950749

`A120418(n+1)*A348611(A000040(n+1))`
-/

namespace A120853.P12969238618678950749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120418 (n + 1) * A348611 (A000040 (n + 1)).toNat

end

end A120853.P12969238618678950749

/-! ## A120853.P16791173487501836517

`A120418(n+1)^A120437(A000043(n+1))`
-/

namespace A120853.P16791173487501836517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120418 (n + 1) : ℚ) ^ (A120437 (A000043 (n + 1)).toNat : ℤ)

end

end A120853.P16791173487501836517

/-! ## A120853.P17181450316256952940

`A120418(n+1)+A000122(A057326(2*(n+1)))`
-/

namespace A120853.P17181450316256952940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120418 (n + 1) + A000122 (A057326 (2 * (n + 1))).toNat

end

end A120853.P17181450316256952940

/-! ## A120853.P9920590180910193765

`A120418(n+1)+A063524(A120417(n+1))`
-/

namespace A120853.P9920590180910193765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120418 (n + 1) + A063524 (A120417 (n + 1)).toNat

end

end A120853.P9920590180910193765

/-!
# A120855: Row sums of triangle A120854, which is the matrix log of triangle A117939.

The programs for A120855, the canonical program `A120855.P8159909929861358285` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120855 has offset 0).

The definition of A120855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120855.P8159909929861358285

`a(floor(n/3))+(2*n)%3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A120855

/-- `a(floor(n/3))+(2*n)%3` -/
def P8159909929861358285.Spec : Prop :=
  ∀ n, (P8159909929861358285.a n : ℤ) = A120855 n

theorem P8159909929861358285.correct : P8159909929861358285.Spec := by
  intro n
  simp only [A120855]

end A120855

/-! ## A120855.P1143676849051717202

`a(floor(n/3))+2-(n+2)%3` with `a(0)=0`
-/

namespace A120855.P1143676849051717202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + (2 - (((n + 2) % 3 : ℕ) : ℤ))

end

end A120855.P1143676849051717202

namespace A120855

/-- `a(floor(n/3))+2-(n+2)%3` -/
def P1143676849051717202.Spec : Prop :=
  ∀ n, P1143676849051717202.a n = A120855 n

end A120855

/-! ## A120855.P13440239213059067159

`A102283(n)+a(floor(n/3))+n%3` with `a(0)=0`
-/

namespace A120855.P13440239213059067159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A102283 n + (a ⌊(n : ℚ) / 3⌋.toNat + ((n % 3 : ℕ) : ℤ))

end

end A120855.P13440239213059067159

namespace A120855

/-- `A102283(n)+a(floor(n/3))+n%3` -/
def P13440239213059067159.Spec : Prop :=
  ∀ n, P13440239213059067159.a n = A120855 n

end A120855

/-! ## A120855.P1159822815377909495

`A078458(A006047(n))`
-/

namespace A120855.P1159822815377909495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078458 (A006047 n).toNat

end

end A120855.P1159822815377909495

namespace A120855

/-- `A078458(A006047(n))` -/
def P1159822815377909495.Spec : Prop :=
  ∀ n, P1159822815377909495.a n = A120855 n

end A120855

/-! ## A120855.P13062321939782006975

`A003313(A120879(n))`
-/

namespace A120855.P13062321939782006975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A120879 n).toNat

end

end A120855.P13062321939782006975

namespace A120855

/-- `A003313(A120879(n))` -/
def P13062321939782006975.Spec : Prop :=
  ∀ n, P13062321939782006975.a n = A120855 n

end A120855

/-! ## A120855.P10842532794340516406

`A160384(n)+A062756(n)`
-/

namespace A120855.P10842532794340516406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 n + A062756 n

end

end A120855.P10842532794340516406

namespace A120855

/-- `A160384(n)+A062756(n)` -/
def P10842532794340516406.Spec : Prop :=
  ∀ n, P10842532794340516406.a n = A120855 n

end A120855

/-! ## A120855.P13186605877045640398

`∑{digits}[A007089(n), A001281(#)]`
-/

namespace A120855.P13186605877045640398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001281 x).sum

end

end A120855.P13186605877045640398

namespace A120855

/-- `∑{digits}[A007089(n), A001281(#)]` -/
def P13186605877045640398.Spec : Prop :=
  ∀ n, P13186605877045640398.a n = A120855 n

end A120855

/-! ## A120855.P10473587601511424827

`∑{digits}[A007089(n), A002251(#)]`
-/

namespace A120855.P10473587601511424827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002251 x).sum

end

end A120855.P10473587601511424827

namespace A120855

/-- `∑{digits}[A007089(n), A002251(#)]` -/
def P10473587601511424827.Spec : Prop :=
  ∀ n, P10473587601511424827.a n = A120855 n

end A120855

/-! ## A120855.P13851140694245632812

`∑{digits}[A007089(n), A014681(#)]`
-/

namespace A120855.P13851140694245632812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014681 x).sum

end

end A120855.P13851140694245632812

namespace A120855

/-- `∑{digits}[A007089(n), A014681(#)]` -/
def P13851140694245632812.Spec : Prop :=
  ∀ n, P13851140694245632812.a n = A120855 n

end A120855

/-! ## A120855.P10313066278079374404

`∑{digits}[A007089(n), A014682(#)]`
-/

namespace A120855.P10313066278079374404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014682 x).sum

end

end A120855.P10313066278079374404

namespace A120855

/-- `∑{digits}[A007089(n), A014682(#)]` -/
def P10313066278079374404.Spec : Prop :=
  ∀ n, P10313066278079374404.a n = A120855 n

end A120855

/-! ## A120855.P10630336721778376094

`∑{digits}[A007089(n), A060583(#)]`
-/

namespace A120855.P10630336721778376094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A060583 x).sum

end

end A120855.P10630336721778376094

namespace A120855

/-- `∑{digits}[A007089(n), A060583(#)]` -/
def P10630336721778376094.Spec : Prop :=
  ∀ n, P10630336721778376094.a n = A120855 n

end A120855

/-! ## A120855.P1576225341301248383

`A081603(n)+2*A062756(n)`
-/

namespace A120855.P1576225341301248383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n + 2 * A062756 n

end

end A120855.P1576225341301248383

namespace A120855

/-- `A081603(n)+2*A062756(n)` -/
def P1576225341301248383.Spec : Prop :=
  ∀ n, P1576225341301248383.a n = A120855 n

end A120855

/-! ## A120855.P7987863414925949777

`A062756(n)+A081604(n)-A077267(n)`
-/

namespace A120855.P7987863414925949777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n + (A081604 n - A077267 n)

end

end A120855.P7987863414925949777

namespace A120855

/-- `A062756(n)+A081604(n)-A077267(n)` -/
def P7987863414925949777.Spec : Prop :=
  ∀ n, P7987863414925949777.a n = A120855 n

end A120855

/-! ## A120855.P3076199157520948766

`A160384(n)+A160384(n)-A081603(n)`
-/

namespace A120855.P3076199157520948766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 n + (A160384 n - A081603 n)

end

end A120855.P3076199157520948766

namespace A120855

/-- `A160384(n)+A160384(n)-A081603(n)` -/
def P3076199157520948766.Spec : Prop :=
  ∀ n, P3076199157520948766.a n = A120855 n

end A120855

/-! ## A120855.P7147175080499651498

`A053735(n)-(A081603(n)-A062756(n))`
-/

namespace A120855.P7147175080499651498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - (A081603 n - A062756 n)

end

end A120855.P7147175080499651498

namespace A120855

/-- `A053735(n)-(A081603(n)-A062756(n))` -/
def P7147175080499651498.Spec : Prop :=
  ∀ n, P7147175080499651498.a n = A120855 n

end A120855

/-! ## A120855.P12051219787997589178

`A053735(A137305(n))`
-/

namespace A120855.P12051219787997589178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A137305 n).toNat

end

end A120855.P12051219787997589178

namespace A120855

/-- `A053735(A137305(n))` -/
def P12051219787997589178.Spec : Prop :=
  ∀ n, P12051219787997589178.a n = A120855 n

end A120855

/-! ## A120855.P2724244889982189178

`A053735(A004488(n))`
-/

namespace A120855.P2724244889982189178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A004488 n).toNat

end

end A120855.P2724244889982189178

namespace A120855

/-- `A053735(A004488(n))` -/
def P2724244889982189178.Spec : Prop :=
  ∀ n, P2724244889982189178.a n = A120855 n

end A120855

/-! ## A120855.P9187960327514950361

`A053735(A357616(n))`
-/

namespace A120855.P9187960327514950361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A357616 n).toNat

end

end A120855.P9187960327514950361

namespace A120855

/-- `A053735(A357616(n))` -/
def P9187960327514950361.Spec : Prop :=
  ∀ n, P9187960327514950361.a n = A120855 n

end A120855

/-! ## A120855.P8830988745614455635

`A053735(A117966(n)+n)`
-/

namespace A120855.P8830988745614455635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A117966 n + (n : ℤ)).toNat

end

end A120855.P8830988745614455635

namespace A120855

/-- `A053735(A117966(n)+n)` -/
def P8830988745614455635.Spec : Prop :=
  ∀ n, P8830988745614455635.a n = A120855 n

end A120855

/-! ## A120855.P7987625951033473773

`A062756(n)+A062756(A374363(n))`
-/

namespace A120855.P7987625951033473773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n + A062756 (A374363 n).toNat

end

end A120855.P7987625951033473773

namespace A120855

/-- `A062756(n)+A062756(A374363(n))` -/
def P7987625951033473773.Spec : Prop :=
  ∀ n, P7987625951033473773.a n = A120855 n

end A120855

/-!
# A120856: Records in A034694.

The programs for A120856, there is no canonical definition to state claims against.
-/

/-! ## A120856.P7576271991908056288

`record[A034694(n+1)]`
-/

namespace A120856.P7576271991908056288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120856.P7576271991908056288

/-! ## A120856.P16066162991317208833

`A034694(A120857(n+1))`
-/

namespace A120856.P16066162991317208833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A120857 (n + 1)).toNat

end

end A120856.P16066162991317208833

/-! ## A120856.P1908034988663907831

`p?[record[A034694(A028310(n))]]`
-/

namespace A120856.P1908034988663907831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120856.P1908034988663907831

/-! ## A120856.P10114916314049362812

`p?[record[A034694(A029579(n))]]`
-/

namespace A120856.P10114916314049362812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A029579 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120856.P10114916314049362812

/-! ## A120856.P11624018356744196480

`p?[record[A034694(A141310(n))]]`
-/

namespace A120856.P11624018356744196480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A141310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120856.P11624018356744196480

/-!
# A120857: Positions of records in A034694.

The programs for A120857, there is no canonical definition to state claims against.
-/

/-! ## A120857.P15432056392159180782

`∑[A066086(∑[A293774(n)])]`
-/

namespace A120857.P15432056392159180782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293774 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066086 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120857.P15432056392159180782

/-! ## A120857.P1953261109994747778

`record[A067280(record[A151765(n+1)])]`
-/

namespace A120857.P1953261109994747778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151765 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120857.P1953261109994747778

/-! ## A120857.P13352751285987665996

`eq[A294137(n), A294141(A053447(n))]`
-/

namespace A120857.P13352751285987665996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294141 (A053447 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120857.P13352751285987665996

/-! ## A120857.P322474887972661068

`A233516(n+1)-A139789(A309862(n))`
-/

namespace A120857.P322474887972661068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233516 (n + 1) - A139789 (A309862 n).toNat

end

end A120857.P322474887972661068

/-! ## A120857.P7999193626800308879

`A233516(n+1)-A025907(A228652(n+1))`
-/

namespace A120857.P7999193626800308879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233516 (n + 1) - A025907 (A228652 (n + 1)).toNat

end

end A120857.P7999193626800308879

/-!
# A120858: Dispersion of the Beatty sequence ([r*n]: n >= 1), where r = 3 + 8^(1/2): square array D(n,m) (n, m >= 1), read by ascending antidiagonals.

The programs for A120858, there is no canonical definition to state claims against.
-/

/-! ## A120858.P697096815313760790

`A089867(or(A120860(n+1), A307597(n)))`
-/

namespace A120858.P697096815313760790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (Int.lor (A120860 (n + 1)) (A307597 n)).toNat

end

end A120858.P697096815313760790

/-! ## A120858.P9446855849463930737

`A089867(A120860(n+1)-A010815(2*(n+2)))`
-/

namespace A120858.P9446855849463930737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A120860 (n + 1) - A010815 (2 * (n + 2))).toNat

end

end A120858.P9446855849463930737

/-! ## A120858.P6517144921481923247

`A089867(or(A010815(4*n+6), A120860(n+1)))`
-/

namespace A120858.P6517144921481923247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (Int.lor (A010815 (4 * n + 6)) (A120860 (n + 1))).toNat

end

end A120858.P6517144921481923247

/-!
# A120859: Dispersion of the sequence ([r*n] + 1: n >= 1), where r = 3 + 8^(1/2): square array D(n,m) (n, m >= 1), read by ascending antidiagonals.

The programs for A120859, there is no canonical definition to state claims against.
-/

/-! ## A120859.P15699738605481609740

`A101447(n)*A344655(A059268(n))`
-/

namespace A120859.P15699738605481609740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n * A344655 (A059268 n).toNat

end

end A120859.P15699738605481609740

/-!
# A120862: Fixed-j dispersion for Q = 13: array D(g,h) (g, h >= 1), read by ascending antidiagonals.

The programs for A120862, there is no canonical definition to state claims against.
-/

/-! ## A120862.P402492817120207979

`A003465(a(n-2))` with `a(0)=1, a(1)=2, a(2)=10, a(3)=3, a(4)=20`
-/

namespace A120862.P402492817120207979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10, 3, 20] fun n a =>
  A003465 (a (n - 2)).toNat

end

end A120862.P402492817120207979

/-! ## A120862.P4902191708748261588

`A245062(n+1)+(n+4)*val(A317079(n), 6)`
-/

namespace A120862.P4902191708748261588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245062 (n + 1) + ((n + 4) * SequenceMachineLib.valuation (A317079 n).toNat 6 : ℤ)

end

end A120862.P4902191708748261588

/-!
# A120863: Fixed-k dispersion for Q = 13: array D(g,h) (g, h >= 1), read by ascending antidiagonals.

The programs for A120863, there is no canonical definition to state claims against.
-/

/-! ## A120863.P444265584430820070

`A096108(A096114(n+1)*A301413(n+1))`
-/

namespace A120863.P444265584430820070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096108 (A096114 (n + 1) * A301413 (n + 1)).toNat

end

end A120863.P444265584430820070

/-!
# A120864: a(n) is the number j for which there exists a unique pair (j,k) of positive integers such that (j + k + 1)^2 - 4*k = 12*n^2.

The programs for A120864, the canonical program `A120864.P6170511930668319101` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120864 has offset 1).

The definition of A120864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120864.P6170511930668319101

`3*(n+1)²-A022838(n+1)²`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120864

/-- `3*(n+1)²-A022838(n+1)²` -/
def P6170511930668319101.Spec : Prop :=
  ∀ n, P6170511930668319101.a n = A120864 (n + 1)

theorem P6170511930668319101.correct : P6170511930668319101.Spec := by
  intro n
  simp only [A120864, Nat.add_sub_cancel]

end A120864

/-! ## A120864.P8078244071379023350

`A003512(n+1)-(n+1)²%A003512(n+1)`
-/

namespace A120864.P8078244071379023350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1) - Int.tmod ((n + 1) ^ 2 : ℤ) (A003512 (n + 1))

end

end A120864.P8078244071379023350

namespace A120864

/-- `A003512(n+1)-(n+1)²%A003512(n+1)` -/
def P8078244071379023350.Spec : Prop :=
  ∀ n, P8078244071379023350.a n = A120864 (n + 1)

end A120864

/-! ## A120864.P1264178020538803734

`A033428(n+1)-A022838(n+1)*A022838(n+1)`
-/

namespace A120864.P1264178020538803734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (n + 1) - A022838 (n + 1) * A022838 (n + 1)

end

end A120864.P1264178020538803734

namespace A120864

/-- `A033428(n+1)-A022838(n+1)*A022838(n+1)` -/
def P1264178020538803734.Spec : Prop :=
  ∀ n, P1264178020538803734.a n = A120864 (n + 1)

end A120864

/-! ## A120864.P16637410020359328365

`(A182778(n+1)*A188089(n+1))%A003512(n+1)`
-/

namespace A120864.P16637410020359328365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182778 (n + 1) * A188089 (n + 1)) (A003512 (n + 1))

end

end A120864.P16637410020359328365

namespace A120864

/-- `(A182778(n+1)*A188089(n+1))%A003512(n+1)` -/
def P16637410020359328365.Spec : Prop :=
  ∀ n, P16637410020359328365.a n = A120864 (n + 1)

end A120864

/-! ## A120864.P1470765901738170936

`A005408(A022838(n+1))-A120865(n+1)`
-/

namespace A120864.P1470765901738170936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A022838 (n + 1)).toNat - A120865 (n + 1)

end

end A120864.P1470765901738170936

namespace A120864

/-- `A005408(A022838(n+1))-A120865(n+1)` -/
def P1470765901738170936.Spec : Prop :=
  ∀ n, P1470765901738170936.a n = A120864 (n + 1)

end A120864

/-! ## A120864.P4731036488952947858

`A180497(3*(n+1))/3`
-/

namespace A120864.P4731036488952947858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180497 (3 * (n + 1)) : ℚ) / 3

end

end A120864.P4731036488952947858

namespace A120864

/-- `A180497(3*(n+1))/3` -/
def P4731036488952947858.Spec : Prop :=
  ∀ n, P4731036488952947858.a n = (A120864 (n + 1) : ℚ)

end A120864

/-! ## A120864.P4910003235249675284

`A080663(A180122(n+1))%A198081(A180123(n+1))`
-/

namespace A120864.P4910003235249675284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080663 (A180122 (n + 1)).toNat) (A198081 (A180123 (n + 1)).toNat)

end

end A120864.P4910003235249675284

namespace A120864

/-- `A080663(A180122(n+1))%A198081(A180123(n+1))` -/
def P4910003235249675284.Spec : Prop :=
  ∀ n, P4910003235249675284.a n = A120864 (n + 1)

end A120864

/-! ## A120864.P9969631763968490060

`A227790(A003512(n+1))`
-/

namespace A120864.P9969631763968490060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227790 (A003512 (n + 1)).toNat

end

end A120864.P9969631763968490060

namespace A120864

/-- `A227790(A003512(n+1))` -/
def P9969631763968490060.Spec : Prop :=
  ∀ n, P9969631763968490060.a n = A120864 (n + 1)

end A120864

/-! ## A120864.P15985790797097095648

`A227790(A188069(n+2)-1)`
-/

namespace A120864.P15985790797097095648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227790 (A188069 (n + 2) - 1).toNat

end

end A120864.P15985790797097095648

namespace A120864

/-- `A227790(A188069(n+2)-1)` -/
def P15985790797097095648.Spec : Prop :=
  ∀ n, P15985790797097095648.a n = A120864 (n + 1)

end A120864

/-! ## A120864.P3763113538833489901

`A227790(A188089(n+1))`
-/

namespace A120864.P3763113538833489901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227790 (A188089 (n + 1)).toNat

end

end A120864.P3763113538833489901

namespace A120864

/-- `A227790(A188089(n+1))` -/
def P3763113538833489901.Spec : Prop :=
  ∀ n, P3763113538833489901.a n = A120864 (n + 1)

end A120864

/-! ## A120864.P10476002283875741628

`3*(n+1)²-A202304((n+1)²)²`
-/

namespace A120864.P10476002283875741628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) ^ 2 : ℤ) - A202304 ((n + 1) ^ 2) ^ 2

end

end A120864.P10476002283875741628

namespace A120864

/-- `3*(n+1)²-A202304((n+1)²)²` -/
def P10476002283875741628.Spec : Prop :=
  ∀ n, P10476002283875741628.a n = A120864 (n + 1)

end A120864

/-!
# A120865: a(n) is the number k for which there exists a unique pair (j,k) of positive integers such that (j + k + 1)^2 - 4*k = 12*n^2.

The programs for A120865, the canonical program `A120865.P2031921682378064138` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120865 has offset 1).

The definition of A120865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120865.P2031921682378064138

`(n+1)²%(A003512(n+1)+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120865

/-- `(n+1)²%(A003512(n+1)+1)` -/
def P2031921682378064138.Spec : Prop :=
  ∀ n, P2031921682378064138.a n = A120865 (n + 1)

theorem P2031921682378064138.correct : P2031921682378064138.Spec := by
  intro n
  simp only [A120865, Nat.add_sub_cancel]

end A120865

/-! ## A120865.P17424453794296194200

`A198081(n+1)²-3*(n+1)²`
-/

namespace A120865.P17424453794296194200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (n + 1) ^ 2 - (3 * (n + 1) ^ 2 : ℤ)

end

end A120865.P17424453794296194200

namespace A120865

/-- `A198081(n+1)²-3*(n+1)²` -/
def P17424453794296194200.Spec : Prop :=
  ∀ n, P17424453794296194200.a n = A120865 (n + 1)

end A120865

/-! ## A120865.P1585879569649877142

`∑[2*n+1]%(A180123(n+1)+2)`
-/

namespace A120865.P1585879569649877142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A180123 (n + 1) + 2)

end

end A120865.P1585879569649877142

namespace A120865

/-- `∑[2*n+1]%(A180123(n+1)+2)` -/
def P1585879569649877142.Spec : Prop :=
  ∀ n, P1585879569649877142.a n = A120865 (n + 1)

end A120865

/-! ## A120865.P8174555005270157339

`A003154(n+1)%A182778(n+1)`
-/

namespace A120865.P8174555005270157339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003154 (n + 1)) (A182778 (n + 1))

end

end A120865.P8174555005270157339

namespace A120865

/-- `A003154(n+1)%A182778(n+1)` -/
def P8174555005270157339.Spec : Prop :=
  ∀ n, P8174555005270157339.a n = A120865 (n + 1)

end A120865

/-! ## A120865.P4565474582305516220

`A000290(n+1)%(n-A182778(n+1))`
-/

namespace A120865.P4565474582305516220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (n + 1)) ((n : ℤ) - A182778 (n + 1))

end

end A120865.P4565474582305516220

namespace A120865

/-- `A000290(n+1)%(n-A182778(n+1))` -/
def P4565474582305516220.Spec : Prop :=
  ∀ n, P4565474582305516220.a n = A120865 (n + 1)

end A120865

/-! ## A120865.P5824499365952366466

`(n+1)²%A188069(n+2)`
-/

namespace A120865.P5824499365952366466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A188069 (n + 2))

end

end A120865.P5824499365952366466

namespace A120865

/-- `(n+1)²%A188069(n+2)` -/
def P5824499365952366466.Spec : Prop :=
  ∀ n, P5824499365952366466.a n = A120865 (n + 1)

end A120865

/-! ## A120865.P13619362358609259998

`A180497(A198081(n+1))`
-/

namespace A120865.P13619362358609259998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180497 (A198081 (n + 1)).toNat

end

end A120865.P13619362358609259998

namespace A120865

/-- `A180497(A198081(n+1))` -/
def P13619362358609259998.Spec : Prop :=
  ∀ n, P13619362358609259998.a n = A120865 (n + 1)

end A120865

/-! ## A120865.P2683567456596452879

`A180497(A180122(n+1)+1-n)`
-/

namespace A120865.P2683567456596452879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180497 (A180122 (n + 1) + (1 - (n : ℤ))).toNat

end

end A120865.P2683567456596452879

namespace A120865

/-- `A180497(A180122(n+1)+1-n)` -/
def P2683567456596452879.Spec : Prop :=
  ∀ n, P2683567456596452879.a n = A120865 (n + 1)

end A120865

/-! ## A120865.P15288504229169638184

`A180497(A003511(2*(n+1))-n)`
-/

namespace A120865.P15288504229169638184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180497 (A003511 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A120865.P15288504229169638184

namespace A120865

/-- `A180497(A003511(2*(n+1))-n)` -/
def P15288504229169638184.Spec : Prop :=
  ∀ n, P15288504229169638184.a n = A120865 (n + 1)

end A120865

/-! ## A120865.P10172397187024689469

`A227790(A188069(n+2))`
-/

namespace A120865.P10172397187024689469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227790 (A188069 (n + 2)).toNat

end

end A120865.P10172397187024689469

namespace A120865

/-- `A227790(A188069(n+2))` -/
def P10172397187024689469.Spec : Prop :=
  ∀ n, P10172397187024689469.a n = A120865 (n + 1)

end A120865

/-! ## A120865.P6058107417421329418

`A227790(A003512(n+1)+1)`
-/

namespace A120865.P6058107417421329418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227790 (A003512 (n + 1) + 1).toNat

end

end A120865.P6058107417421329418

namespace A120865

/-- `A227790(A003512(n+1)+1)` -/
def P6058107417421329418.Spec : Prop :=
  ∀ n, P6058107417421329418.a n = A120865 (n + 1)

end A120865

/-! ## A120865.P5939430722023178536

`A227790(A188075(n+2))`
-/

namespace A120865.P5939430722023178536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227790 (A188075 (n + 2)).toNat

end

end A120865.P5939430722023178536

namespace A120865

/-- `A227790(A188075(n+2))` -/
def P5939430722023178536.Spec : Prop :=
  ∀ n, P5939430722023178536.a n = A120865 (n + 1)

end A120865

/-!
# A120866: a(n) is the number j for which there exists a unique pair (j,k) of positive integers such that (j + k + 1)^2 - 4*k = 20*n^2.

The programs for A120866, the canonical program `A120866.P7809339818810666601` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120866 has offset 1).

The definition of A120866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120866.P7809339818810666601

`((n+1)*A001961(n+1))%A001962(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120866

/-- `((n+1)*A001961(n+1))%A001962(n+1)` -/
def P7809339818810666601.Spec : Prop :=
  ∀ n, P7809339818810666601.a n = A120866 (n + 1)

theorem P7809339818810666601.correct : P7809339818810666601.Spec := by
  intro n
  simp only [A120866, Nat.add_sub_cancel]

end A120866

/-! ## A120866.P14451330917434792839

`A010001(n+1)-(A022839(n+1)²+2)`
-/

namespace A120866.P14451330917434792839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 (n + 1) - (A022839 (n + 1) ^ 2 + 2)

end

end A120866.P14451330917434792839

namespace A120866

/-- `A010001(n+1)-(A022839(n+1)²+2)` -/
def P14451330917434792839.Spec : Prop :=
  ∀ n, P14451330917434792839.a n = A120866 (n + 1)

end A120866

/-! ## A120866.P1013913908065162176

`A005752(2*(n+1))`
-/

namespace A120866.P1013913908065162176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (2 * (n + 1))

end

end A120866.P1013913908065162176

namespace A120866

/-- `A005752(2*(n+1))` -/
def P1013913908065162176.Spec : Prop :=
  ∀ n, P1013913908065162176.a n = A120866 (n + 1)

end A120866

/-! ## A120866.P5647059098331983572

`filter[A005752(2*n), A014578(#)]`
-/

namespace A120866.P5647059098331983572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A120866.P5647059098331983572

namespace A120866

/-- `filter[A005752(2*n), A014578(#)]` -/
def P5647059098331983572.Spec : Prop :=
  ∀ n, P5647059098331983572.a n = A120866 (n + 1)

end A120866

/-! ## A120866.P16770330513218041297

`A120867(A004976(n+1))`
-/

namespace A120866.P16770330513218041297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120867 (A004976 (n + 1)).toNat

end

end A120866.P16770330513218041297

namespace A120866

/-- `A120867(A004976(n+1))` -/
def P16770330513218041297.Spec : Prop :=
  ∀ n, P16770330513218041297.a n = A120866 (n + 1)

end A120866

/-! ## A120866.P4776309458532899982

`A001961(n+1)²%A001961(A001962(n+1))`
-/

namespace A120866.P4776309458532899982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001961 (n + 1) ^ 2) (A001961 (A001962 (n + 1)).toNat)

end

end A120866.P4776309458532899982

namespace A120866

/-- `A001961(n+1)²%A001961(A001962(n+1))` -/
def P4776309458532899982.Spec : Prop :=
  ∀ n, P4776309458532899982.a n = A120866 (n + 1)

end A120866

/-! ## A120866.P9880459372788569056

`A001965(A001950(n+1))²%A000201(A001962(n+1))`
-/

namespace A120866.P9880459372788569056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001965 (A001950 (n + 1)).toNat ^ 2) (A000201 (A001962 (n + 1)).toNat)

end

end A120866.P9880459372788569056

namespace A120866

/-- `A001965(A001950(n+1))²%A000201(A001962(n+1))` -/
def P9880459372788569056.Spec : Prop :=
  ∀ n, P9880459372788569056.a n = A120866 (n + 1)

end A120866

/-!
# A120867: a(n) is the number k for which there exists a unique pair (j,k) of positive integers such that (j + k + 1)^2 - 4*k = 20*n^2.

The programs for A120867, the canonical program `A120867.P17303152158714817452` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120867 has offset 1).

The definition of A120867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120867.P17303152158714817452

`A005843(n+1)²%(A001962(n+1)+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120867

/-- `A005843(n+1)²%(A001962(n+1)+1)` -/
def P17303152158714817452.Spec : Prop :=
  ∀ n, P17303152158714817452.a n = A120867 (n + 1)

theorem P17303152158714817452.correct : P17303152158714817452.Spec := by
  intro n
  simp only [A120867, Nat.add_sub_cancel]

end A120867

/-! ## A120867.P4823852794296405905

`A198082(n+1)²%(A008574(n+1)+n+1)`
-/

namespace A120867.P4823852794296405905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198082 (n + 1) ^ 2) (A008574 (n + 1) + (n + 1 : ℤ))

end

end A120867.P4823852794296405905

namespace A120867

/-- `A198082(n+1)²%(A008574(n+1)+n+1)` -/
def P4823852794296405905.Spec : Prop :=
  ∀ n, P4823852794296405905.a n = A120867 (n + 1)

end A120867

/-! ## A120867.P12987132291899360124

`A022344(2*n+1)-A063732(2*(n+1))`
-/

namespace A120867.P12987132291899360124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022344 (2 * n + 1) - A063732 (2 * (n + 1))

end

end A120867.P12987132291899360124

namespace A120867

/-- `A022344(2*n+1)-A063732(2*(n+1))` -/
def P12987132291899360124.Spec : Prop :=
  ∀ n, P12987132291899360124.a n = A120867 (n + 1)

end A120867

/-! ## A120867.P17173572754803998218

`A180498(A198082(n+1))`
-/

namespace A120867.P17173572754803998218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180498 (A198082 (n + 1)).toNat

end

end A120867.P17173572754803998218

namespace A120867

/-- `A180498(A198082(n+1))` -/
def P17173572754803998218.Spec : Prop :=
  ∀ n, P17173572754803998218.a n = A120867 (n + 1)

end A120867

/-! ## A120867.P12430508187077512726

`A180498(A022839(n+1)+1)`
-/

namespace A120867.P12430508187077512726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180498 (A022839 (n + 1) + 1).toNat

end

end A120867.P12430508187077512726

namespace A120867

/-- `A180498(A022839(n+1)+1)` -/
def P12430508187077512726.Spec : Prop :=
  ∀ n, P12430508187077512726.a n = A120867 (n + 1)

end A120867

/-! ## A120867.P11195090412890341186

`A005752(A000201(2*(n+1))+1)`
-/

namespace A120867.P11195090412890341186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (A000201 (2 * (n + 1)) + 1).toNat

end

end A120867.P11195090412890341186

namespace A120867

/-- `A005752(A000201(2*(n+1))+1)` -/
def P11195090412890341186.Spec : Prop :=
  ∀ n, P11195090412890341186.a n = A120867 (n + 1)

end A120867

/-! ## A120867.P3765250457180158495

`A120866(A004958(n+1))`
-/

namespace A120867.P3765250457180158495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120866 (A004958 (n + 1)).toNat

end

end A120867.P3765250457180158495

namespace A120867

/-- `A120866(A004958(n+1))` -/
def P3765250457180158495.Spec : Prop :=
  ∀ n, P3765250457180158495.a n = A120867 (n + 1)

end A120867

/-! ## A120867.P11893711635527096568

`A120866(A004976(n+1)+1)`
-/

namespace A120867.P11893711635527096568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120866 (A004976 (n + 1) + 1).toNat

end

end A120867.P11893711635527096568

namespace A120867

/-- `A120866(A004976(n+1)+1)` -/
def P11893711635527096568.Spec : Prop :=
  ∀ n, P11893711635527096568.a n = A120867 (n + 1)

end A120867

/-! ## A120867.P6140087383523237191

`A120866(A101868(2*(n+1))/2)`
-/

namespace A120867.P6140087383523237191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120866 (SequenceMachineLib.roundAway ((A101868 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A120867.P6140087383523237191

namespace A120867

/-- `A120866(A101868(2*(n+1))/2)` -/
def P6140087383523237191.Spec : Prop :=
  ∀ n, P6140087383523237191.a n = A120867 (n + 1)

end A120867

/-! ## A120867.P13249590425589351332

`A005752(A101868(2*(n+1)))`
-/

namespace A120867.P13249590425589351332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (A101868 (2 * (n + 1))).toNat

end

end A120867.P13249590425589351332

namespace A120867

/-- `A005752(A101868(2*(n+1)))` -/
def P13249590425589351332.Spec : Prop :=
  ∀ n, P13249590425589351332.a n = A120867 (n + 1)

end A120867

/-!
# A120868: a(n) is the number k for which there exists a unique pair (j,k) of positive integers such that (j + k + 1)^2 - 4*k = 5*n^2.

The programs for A120868, there is no canonical definition to state claims against.
-/

/-! ## A120868.P5806214061558447633

`(n+1)²%ceil((n+1)*ϕ²)`
-/

namespace A120868.P5806214061558447633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) ⌈(n + 1 : ℝ) * Real.goldenRatio ^ 2⌉

end

end A120868.P5806214061558447633

/-! ## A120868.P1813379547573975080

`A005752(ceil(ϕ*(n+1)))`
-/

namespace A120868.P1813379547573975080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 ⌈Real.goldenRatio * (n + 1 : ℝ)⌉.toNat

end

end A120868.P1813379547573975080

/-! ## A120868.P3790493593475540557

`A022344(n)-comp[comp[floor(ϕ*n)]+n]`
-/

namespace A120868.P3790493593475540557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022344 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A120868.P3790493593475540557

/-! ## A120868.P6326561854441297250

`A028310((∑[10*n]+1)%floor((ϕ+2)*(n+1)))`
-/

namespace A120868.P6326561854441297250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) ⌊(Real.goldenRatio + 2) * (n + 1 : ℝ)⌋).toNat

end

end A120868.P6326561854441297250

/-! ## A120868.P11881974778452628504

`A120866(A101868(n+1))/4`
-/

namespace A120868.P11881974778452628504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120866 (A101868 (n + 1)).toNat : ℚ) / 4

end

end A120868.P11881974778452628504

/-! ## A120868.P668065947072219838

`abs(A063732(n+1)-A022344(n))`
-/

namespace A120868.P668065947072219838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063732 (n + 1) - A022344 n|

end

end A120868.P668065947072219838

/-! ## A120868.P16301027825351287673

`A005563(n)%(A001950(n+1)+1)+1`
-/

namespace A120868.P16301027825351287673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005563 n) (A001950 (n + 1) + 1) + 1

end

end A120868.P16301027825351287673

/-! ## A120868.P13801749551001783023

`A005752(A026351(n+1))^A178334(n)`
-/

namespace A120868.P13801749551001783023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005752 (A026351 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A120868.P13801749551001783023

/-! ## A120868.P15516283293838261678

`A005752(A035338(n))-comp[A054770(n+1)]`
-/

namespace A120868.P15516283293838261678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054770 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (A035338 n).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A120868.P15516283293838261678

/-! ## A120868.P4742747844589816142

`A005752(A000201(n+1))-comp[A054770(n+1)]`
-/

namespace A120868.P4742747844589816142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054770 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (A000201 (n + 1)).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A120868.P4742747844589816142

/-!
# A120869: a(n) is the number j for which there exists a unique pair (j,k) of positive integers such that (j + k + 1)^2 - 4*k = 13*n^2.

The programs for A120869, there is no canonical definition to state claims against.
-/

/-! ## A120869.P15008855178352317250

`((n+1)*A184480(n+1))%A001956(n+1)`
-/

namespace A120869.P15008855178352317250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A184480 (n + 1)) (A001956 (n + 1))

end

end A120869.P15008855178352317250

/-! ## A120869.P4512949957002185606

`A001956(n+1)²%A184480(A001956(n+1))`
-/

namespace A120869.P4512949957002185606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001956 (n + 1) ^ 2) (A184480 (A001956 (n + 1)).toNat)

end

end A120869.P4512949957002185606

/-! ## A120869.P10422186233982939020

`(A031193(n+1)*A059550(n+1))%A001956(n+1)`
-/

namespace A120869.P10422186233982939020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031193 (n + 1) * A059550 (n + 1)) (A001956 (n + 1))

end

end A120869.P10422186233982939020

/-! ## A120869.P15230731511584723968

`(A031193(n+1)*A080081(n+1))%A001956(n+1)`
-/

namespace A120869.P15230731511584723968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031193 (n + 1) * A080081 (n + 1)) (A001956 (n + 1))

end

end A120869.P15230731511584723968

/-! ## A120869.P4829492690716765241

`A120870(comp[floor(n/log(10)+n)])`
-/

namespace A120869.P4829492690716765241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log (10 : ℝ) + (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120870 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A120869.P4829492690716765241

/-!
# A120870: a(n) is the number k for which there exists a unique pair (j,k) of positive integers such that (j + k + 1)^2 - 4*k = 13*n^2.

The programs for A120870, there is no canonical definition to state claims against.
-/

/-! ## A120870.P16343390014753919799

`A008486(n+1)²%(A284675(n+2)+n)`
-/

namespace A120870.P16343390014753919799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (n + 1) ^ 2) (A284675 (n + 2) + (n : ℤ))

end

end A120870.P16343390014753919799

/-! ## A120870.P7573448487643697987

`A120869(ceil((n+1)*log(10)+n)+1)`
-/

namespace A120870.P7573448487643697987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120869 (⌈(n + 1 : ℝ) * Real.log (10 : ℝ) + (n : ℝ)⌉ + 1).toNat

end

end A120870.P7573448487643697987

/-!
# A120871: a(n) is the value of j for row n of the fixed-j dispersion for Q = 8.

The programs for A120871, there is no canonical definition to state claims against.
-/

/-! ## A120871.P3111362759663145972

`A087056(floor(∑[sqrt(2-n%2)]))`
-/

namespace A120871.P3111362759663145972
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 - ((n % 2 : ℕ) : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087056 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A120871.P3111362759663145972

/-! ## A120871.P14352260933951927005

`A087056(floor(∑[sqrt((n+1)%2+1)]))`
-/

namespace A120871.P14352260933951927005
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n + 1) % 2 + 1 : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087056 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A120871.P14352260933951927005

/-! ## A120871.P2225572590451417151

`A087056(floor(∑[2^∑[(-1)^n/2]]))`
-/

namespace A120871.P2225572590451417151
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) / 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((∑ j ∈ Finset.range (n + 1), f2 j : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087056 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A120871.P2225572590451417151

/-! ## A120871.P8881501441899124224

`A087059(A187973(n+1)-1)`
-/

namespace A120871.P8881501441899124224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (A187973 (n + 1) - 1).toNat

end

end A120871.P8881501441899124224

/-! ## A120871.P13686819210367905937

`A087060(A187973(n+1)-1)`
-/

namespace A120871.P13686819210367905937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087060 (A187973 (n + 1) - 1).toNat

end

end A120871.P13686819210367905937

/-! ## A120871.P5399885349171342352

`A087059(lt[A087059(n+5), A087059(n+1)])`
-/

namespace A120871.P5399885349171342352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A120871.P5399885349171342352

/-! ## A120871.P11075760751136485543

`A087060(record[A098021(n+1)*A187967(n+1)])`
-/

namespace A120871.P11075760751136485543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (n + 1) * A187967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087060 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120871.P11075760751136485543

/-! ## A120871.P8376689543357946087

`A053186(2*A187968(n+1)²)`
-/

namespace A120871.P8376689543357946087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (2 * A187968 (n + 1) ^ 2).toNat

end

end A120871.P8376689543357946087

/-! ## A120871.P3951030034152879540

`A053186(A005843(A187968(n+1)²))`
-/

namespace A120871.P3951030034152879540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A005843 (A187968 (n + 1) ^ 2).toNat).toNat

end

end A120871.P3951030034152879540

/-!
# A120872: a(n) is the value of k for row n of the fixed-k dispersion for Q = 8.

The programs for A120872, there is no canonical definition to state claims against.
-/

/-! ## A120872.P2086185362964903213

`A087059(A336109(n+1))`
-/

namespace A120872.P2086185362964903213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (A336109 (n + 1)).toNat

end

end A120872.P2086185362964903213

/-! ## A120872.P718119592632157405

`A350962(A336109(n+1)²)`
-/

namespace A120872.P718119592632157405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350962 (A336109 (n + 1) ^ 2).toNat

end

end A120872.P718119592632157405

/-! ## A120872.P15383442629611058975

`A082532(A188298(n+1)+1)`
-/

namespace A120872.P15383442629611058975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082532 (A188298 (n + 1) + 1).toNat

end

end A120872.P15383442629611058975

/-! ## A120872.P10021412894386515469

`A087060(A188045(n+1)+1)`
-/

namespace A120872.P10021412894386515469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087060 (A188045 (n + 1) + 1).toNat

end

end A120872.P10021412894386515469

/-! ## A120872.P11707260517182007027

`A087059(comp[A276879(n+2)]+1)`
-/

namespace A120872.P11707260517182007027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276879 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A120872.P11707260517182007027

/-! ## A120872.P15264454005608811891

`A082532(A336109(n+1)+A008619(n))`
-/

namespace A120872.P15264454005608811891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082532 (A336109 (n + 1) + A008619 n).toNat

end

end A120872.P15264454005608811891

/-! ## A120872.P13913647316214609550

`A087059(A188298(n+1)-A004526(n))`
-/

namespace A120872.P13913647316214609550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (A188298 (n + 1) - A004526 n).toNat

end

end A120872.P13913647316214609550

/-! ## A120872.P9916704645332825278

`A087059(A188045(n+1)-A188298(n+1))`
-/

namespace A120872.P9916704645332825278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (A188045 (n + 1) - A188298 (n + 1)).toNat

end

end A120872.P9916704645332825278

/-! ## A120872.P3395187653044037167

`A087059(A188298(n+1)-A002265(2*n))`
-/

namespace A120872.P3395187653044037167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (A188298 (n + 1) - A002265 (2 * n)).toNat

end

end A120872.P3395187653044037167

/-! ## A120872.P15163872549351353506

`A082532(A336109(n+1)+A002265(2*n)+1)`
-/

namespace A120872.P15163872549351353506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082532 (A336109 (n + 1) + (A002265 (2 * n) + 1)).toNat

end

end A120872.P15163872549351353506

/-!
# A120873: Fractal sequence of the Wythoff difference array (A080164).

The programs for A120873, there is no canonical definition to state claims against.
-/

/-! ## A120873.P2858735273785999588

`A003603(floor(∑[ϕ-n])+C(n+1, 2))`
-/

namespace A120873.P2858735273785999588
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + (Nat.choose (n + 1) 2 : ℤ)).toNat

end

end A120873.P2858735273785999588

/-! ## A120873.P654642376206323634

`lcm((-1)^n, A003603(ceil(ϕ*(n+1))-1))`
-/

namespace A120873.P654642376206323634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A003603 (⌈Real.goldenRatio * (n + 1 : ℝ)⌉ - 1).toNat)

end

end A120873.P654642376206323634

/-! ## A120873.P2724620429023881617

`A003603(∑[A001468(n)])`
-/

namespace A120873.P2724620429023881617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120873.P2724620429023881617

/-! ## A120873.P5547004976541448113

`A003603(Δ[A054347(n)])`
-/

namespace A120873.P5547004976541448113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (f1 (n + 1) - f1 n).toNat

end

end A120873.P5547004976541448113

/-! ## A120873.P8972836915851908609

`A003603(A000201(n+1))`
-/

namespace A120873.P8972836915851908609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A000201 (n + 1)).toNat

end

end A120873.P8972836915851908609

/-! ## A120873.P10297178796659927448

`A003603(A066096(n+1))`
-/

namespace A120873.P10297178796659927448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A066096 (n + 1)).toNat

end

end A120873.P10297178796659927448

/-! ## A120873.P6300536644756619786

`A003603(A022342(n+1)+1)`
-/

namespace A120873.P6300536644756619786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A022342 (n + 1) + 1).toNat

end

end A120873.P6300536644756619786

/-! ## A120873.P13325854786401046729

`A003603(A026351(n+1)-1)`
-/

namespace A120873.P13325854786401046729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A026351 (n + 1) - 1).toNat

end

end A120873.P13325854786401046729

/-! ## A120873.P17340345538694337952

`A003603(A054347(n+1)-A054347(n))`
-/

namespace A120873.P17340345538694337952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A054347 (n + 1) - A054347 n).toNat

end

end A120873.P17340345538694337952

/-! ## A120873.P4605858209120091427

`A003603(comp[floor(ϕ*n)])`
-/

namespace A120873.P4605858209120091427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A120873.P4605858209120091427

/-! ## A120873.P4863723931278747793

`or(char[1], A003603(floor((n+1)*ϕ²)))`
-/

namespace A120873.P4863723931278747793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A003603 ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋.toNat)

end

end A120873.P4863723931278747793

/-! ## A120873.P7201712094246348655

`∑{d}[A003603(A001950(n+1)), A000010(#)]`
-/

namespace A120873.P7201712094246348655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A001950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A120873.P7201712094246348655

/-! ## A120873.P12905536467731171029

`A019586(comp[floor(ϕ*n)])+1`
-/

namespace A120873.P12905536467731171029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A120873.P12905536467731171029

/-! ## A120873.P10258375945328730293

`A334749(A060138(n)+1)`
-/

namespace A120873.P10258375945328730293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334749 (A060138 n + 1).toNat

end

end A120873.P10258375945328730293

/-! ## A120873.P8300333313743340389

`A334749(eq[1, A334749(n+1)]+2)`
-/

namespace A120873.P8300333313743340389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A120873.P8300333313743340389

/-! ## A120873.P12717065476656716590

`A334749(lt[A334749(n+1), 2]+2)`
-/

namespace A120873.P12717065476656716590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334749 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334749 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A120873.P12717065476656716590

/-!
# A120874: Fractal sequence of the Fraenkel array (A038150).

The programs for A120874, there is no canonical definition to state claims against.
-/

/-! ## A120874.P7712779587067225578

`A167198(floor(ϕ*(n+1)))`
-/

namespace A120874.P7712779587067225578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167198 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

end

end A120874.P7712779587067225578

/-! ## A120874.P4798712503265237222

`A167198(-ceil(ϕ*xor(n, -1)))%comp[floor(ϕ*n)]`
-/

namespace A120874.P4798712503265237222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167198 (-⌈Real.goldenRatio * (Int.xor (n : ℤ) (-1) : ℝ)⌉).toNat) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A120874.P4798712503265237222

/-! ## A120874.P10559291598568419625

`A167198(ceil(ϕ*(n+1))-1)%ceil(2*n+1+(n+1)/ϕ)`
-/

namespace A120874.P10559291598568419625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167198 (⌈Real.goldenRatio * (n + 1 : ℝ)⌉ - 1).toNat) ⌈(2 * n + 1 : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌉

end

end A120874.P10559291598568419625

/-! ## A120874.P307310913061526111

`A167198(A000201(n+1))^ceil(acot(n))`
-/

namespace A120874.P307310913061526111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167198 (A000201 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A120874.P307310913061526111

/-! ## A120874.P17806549215186596042

`A028310(A167198(ceil(ϕ*(n+1))-1))`
-/

namespace A120874.P17806549215186596042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A167198 (⌈Real.goldenRatio * (n + 1 : ℝ)⌉ - 1).toNat).toNat

end

end A120874.P17806549215186596042

/-!
# A120875: Product of twin primes minus 1.

The programs for A120875, the canonical program `A120875.P6924631559376339399` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120875 has offset 1).

The definition of A120875 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037074, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120875.P6924631559376339399

`A037074(n+1)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A120875

/-- `A037074(n+1)-1` -/
def P6924631559376339399.Spec : Prop :=
  ∀ n, P6924631559376339399.a n = A120875 (n + 1)

theorem P6924631559376339399.correct : P6924631559376339399.Spec := by
  intro n
  simp only [A120875, Nat.add_sub_cancel]

end A120875

/-! ## A120875.P6931288958309538444

`A075369(n+1)-2`
-/

namespace A120875.P6931288958309538444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075369 (n + 1) - 2

end

end A120875.P6931288958309538444

namespace A120875

/-- `A075369(n+1)-2` -/
def P6931288958309538444.Spec : Prop :=
  ∀ n, P6931288958309538444.a n = A120875 (n + 1)

end A120875

/-! ## A120875.P8810726427150700156

`2*A120876(n+1)`
-/

namespace A120875.P8810726427150700156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120876 (n + 1)

end

end A120875.P8810726427150700156

namespace A120875

/-- `2*A120876(n+1)` -/
def P8810726427150700156.Spec : Prop :=
  ∀ n, P8810726427150700156.a n = A120875 (n + 1)

end A120875

/-! ## A120875.P8836335110479295956

`A014574(n+1)²-2`
-/

namespace A120875.P8836335110479295956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) ^ 2 - 2

end

end A120875.P8836335110479295956

namespace A120875

/-- `A014574(n+1)²-2` -/
def P8836335110479295956.Spec : Prop :=
  ∀ n, P8836335110479295956.a n = A120875 (n + 1)

end A120875

/-! ## A120875.P6204401361303499392

`ceil(sqrt(A094949(n+1)))`
-/

namespace A120875.P6204401361303499392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A094949 (n + 1) : ℝ)⌉

end

end A120875.P6204401361303499392

namespace A120875

/-- `ceil(sqrt(A094949(n+1)))` -/
def P6204401361303499392.Spec : Prop :=
  ∀ n, P6204401361303499392.a n = A120875 (n + 1)

end A120875

/-! ## A120875.P2206301417593544656

`A071142(n+1)/2-1`
-/

namespace A120875.P2206301417593544656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071142 (n + 1) : ℚ) / 2 - 1

end

end A120875.P2206301417593544656

namespace A120875

/-- `A071142(n+1)/2-1` -/
def P2206301417593544656.Spec : Prop :=
  ∀ n, P2206301417593544656.a n = (A120875 (n + 1) : ℚ)

end A120875

/-! ## A120875.P8684922529067340094

`A063533(n+1)/2-3`
-/

namespace A120875.P8684922529067340094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063533 (n + 1) : ℚ) / 2 - 3

end

end A120875.P8684922529067340094

namespace A120875

/-- `A063533(n+1)/2-3` -/
def P8684922529067340094.Spec : Prop :=
  ∀ n, P8684922529067340094.a n = (A120875 (n + 1) : ℚ)

end A120875

/-! ## A120875.P11890598496968204587

`(A184417(n+1)-5)/2`
-/

namespace A120875.P11890598496968204587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184417 (n + 1) - 5 : ℚ) / 2

end

end A120875.P11890598496968204587

namespace A120875

/-- `(A184417(n+1)-5)/2` -/
def P11890598496968204587.Spec : Prop :=
  ∀ n, P11890598496968204587.a n = (A120875 (n + 1) : ℚ)

end A120875

/-! ## A120875.P14930343030457875979

`(A001359(n+1)+1)²-2`
-/

namespace A120875.P14930343030457875979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) + 1) ^ 2 - 2

end

end A120875.P14930343030457875979

namespace A120875

/-- `(A001359(n+1)+1)²-2` -/
def P14930343030457875979.Spec : Prop :=
  ∀ n, P14930343030457875979.a n = A120875 (n + 1)

end A120875

/-! ## A120875.P10840801015346135439

`(1-A006512(n+1))²-2`
-/

namespace A120875.P10840801015346135439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A006512 (n + 1)) ^ 2 - 2

end

end A120875.P10840801015346135439

namespace A120875

/-- `(1-A006512(n+1))²-2` -/
def P10840801015346135439.Spec : Prop :=
  ∀ n, P10840801015346135439.a n = A120875 (n + 1)

end A120875

/-! ## A120875.P11496771582216267425

`(A144834(n+1)+2)²-2`
-/

namespace A120875.P11496771582216267425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144834 (n + 1) + 2) ^ 2 - 2

end

end A120875.P11496771582216267425

namespace A120875

/-- `(A144834(n+1)+2)²-2` -/
def P11496771582216267425.Spec : Prop :=
  ∀ n, P11496771582216267425.a n = A120875 (n + 1)

end A120875

/-! ## A120875.P14026641258750348426

`(2*A040040(n+1))²-2`
-/

namespace A120875.P14026641258750348426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A040040 (n + 1)) ^ 2 - 2

end

end A120875.P14026641258750348426

namespace A120875

/-- `(2*A040040(n+1))²-2` -/
def P14026641258750348426.Spec : Prop :=
  ∀ n, P14026641258750348426.a n = A120875 (n + 1)

end A120875

/-! ## A120875.P6775181734257400284

`(A054735(n+1)/2)²-2`
-/

namespace A120875.P6775181734257400284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A054735 (n + 1) : ℚ) / 2) ^ 2 - 2

end

end A120875.P6775181734257400284

namespace A120875

/-- `(A054735(n+1)/2)²-2` -/
def P6775181734257400284.Spec : Prop :=
  ∀ n, P6775181734257400284.a n = (A120875 (n + 1) : ℚ)

end A120875

/-! ## A120875.P8042438539362205928

`floor(sqrt(A135286(n+1)))²-2`
-/

namespace A120875.P8042438539362205928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A135286 (n + 1)) ^ 2 - 2

end

end A120875.P8042438539362205928

namespace A120875

/-- `floor(sqrt(A135286(n+1)))²-2` -/
def P8042438539362205928.Spec : Prop :=
  ∀ n, P8042438539362205928.a n = A120875 (n + 1)

end A120875

/-! ## A120875.P17409931437223128651

`A328493(n+1)-A006512(n+1)`
-/

namespace A120875.P17409931437223128651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328493 (n + 1) - A006512 (n + 1)

end

end A120875.P17409931437223128651

namespace A120875

/-- `A328493(n+1)-A006512(n+1)` -/
def P17409931437223128651.Spec : Prop :=
  ∀ n, P17409931437223128651.a n = A120875 (n + 1)

end A120875

/-! ## A120875.P2403203784735551053

`A071142(n+1)%A075369(n+1)`
-/

namespace A120875.P2403203784735551053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071142 (n + 1)) (A075369 (n + 1))

end

end A120875.P2403203784735551053

namespace A120875

/-- `A071142(n+1)%A075369(n+1)` -/
def P2403203784735551053.Spec : Prop :=
  ∀ n, P2403203784735551053.a n = A120875 (n + 1)

end A120875

/-! ## A120875.P10320044904047932334

`A001359(n+1)*A006512(n+1)-1`
-/

namespace A120875.P10320044904047932334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) * A006512 (n + 1) - 1

end

end A120875.P10320044904047932334

namespace A120875

/-- `A001359(n+1)*A006512(n+1)-1` -/
def P10320044904047932334.Spec : Prop :=
  ∀ n, P10320044904047932334.a n = A120875 (n + 1)

end A120875

/-! ## A120875.P746427780778261985

`A144834(n+1)+A001359(n+1)*A014574(n+1)`
-/

namespace A120875.P746427780778261985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + A001359 (n + 1) * A014574 (n + 1)

end

end A120875.P746427780778261985

namespace A120875

/-- `A144834(n+1)+A001359(n+1)*A014574(n+1)` -/
def P746427780778261985.Spec : Prop :=
  ∀ n, P746427780778261985.a n = A120875 (n + 1)

end A120875

/-! ## A120875.P8699848022822241671

`A014574(n+1)+A006512(n+1)*A144834(n+1)`
-/

namespace A120875.P8699848022822241671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) + A006512 (n + 1) * A144834 (n + 1)

end

end A120875.P8699848022822241671

namespace A120875

/-- `A014574(n+1)+A006512(n+1)*A144834(n+1)` -/
def P8699848022822241671.Spec : Prop :=
  ∀ n, P8699848022822241671.a n = A120875 (n + 1)

end A120875

/-! ## A120875.P11571856099964767652

`A362941(n+1)-A006512(n+1)-A006512(n+1)`
-/

namespace A120875.P11571856099964767652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362941 (n + 1) - A006512 (n + 1) - A006512 (n + 1)

end

end A120875.P11571856099964767652

namespace A120875

/-- `A362941(n+1)-A006512(n+1)-A006512(n+1)` -/
def P11571856099964767652.Spec : Prop :=
  ∀ n, P11571856099964767652.a n = A120875 (n + 1)

end A120875

/-!
# A120876: (Product of twin primes - 1)/2.

The programs for A120876, the canonical program `A120876.P2538607332345797917` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120876 has offset 1).

The definition of A120876 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120875, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120876.P2538607332345797917

`A120875(n+1)/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A120876

/-- `A120875(n+1)/2` -/
def P2538607332345797917.Spec : Prop :=
  ∀ n, P2538607332345797917.a n = (A120876 (n + 1) : ℚ)

end A120876

/-! ## A120876.P5761544566593353759

`A075369(n+1)/2-1`
-/

namespace A120876.P5761544566593353759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075369 (n + 1) : ℚ) / 2 - 1

end

end A120876.P5761544566593353759

namespace A120876

/-- `A075369(n+1)/2-1` -/
def P5761544566593353759.Spec : Prop :=
  ∀ n, P5761544566593353759.a n = (A120876 (n + 1) : ℚ)

end A120876

/-! ## A120876.P5287643857548591308

`floor(A037074(n+1)/2)`
-/

namespace A120876.P5287643857548591308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037074 (n + 1) : ℚ) / 2⌋

end

end A120876.P5287643857548591308

namespace A120876

/-- `floor(A037074(n+1)/2)` -/
def P5287643857548591308.Spec : Prop :=
  ∀ n, P5287643857548591308.a n = A120876 (n + 1)

end A120876

/-! ## A120876.P12267963846710905935

`floor(A071142(n+1)/4)`
-/

namespace A120876.P12267963846710905935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071142 (n + 1) : ℚ) / 4⌋

end

end A120876.P12267963846710905935

namespace A120876

/-- `floor(A071142(n+1)/4)` -/
def P12267963846710905935.Spec : Prop :=
  ∀ n, P12267963846710905935.a n = A120876 (n + 1)

end A120876

/-! ## A120876.P4079212770002747638

`(A184417(n+1)-5)/4`
-/

namespace A120876.P4079212770002747638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184417 (n + 1) - 5 : ℚ) / 4

end

end A120876.P4079212770002747638

namespace A120876

/-- `(A184417(n+1)-5)/4` -/
def P4079212770002747638.Spec : Prop :=
  ∀ n, P4079212770002747638.a n = (A120876 (n + 1) : ℚ)

end A120876

/-! ## A120876.P17348445678288957711

`ceil(sqrt(A094949(n+1))/2)`
-/

namespace A120876.P17348445678288957711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A094949 (n + 1) : ℝ) / 2⌉

end

end A120876.P17348445678288957711

namespace A120876

/-- `ceil(sqrt(A094949(n+1))/2)` -/
def P17348445678288957711.Spec : Prop :=
  ∀ n, P17348445678288957711.a n = A120876 (n + 1)

end A120876

/-! ## A120876.P17672590897152801644

`2*A040040(n+1)²-1`
-/

namespace A120876.P17672590897152801644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1) ^ 2 - 1

end

end A120876.P17672590897152801644

namespace A120876

/-- `2*A040040(n+1)²-1` -/
def P17672590897152801644.Spec : Prop :=
  ∀ n, P17672590897152801644.a n = A120876 (n + 1)

end A120876

/-! ## A120876.P7869531437794014829

`A014574(n+1)²/2-1`
-/

namespace A120876.P7869531437794014829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) ^ 2 : ℚ) / 2 - 1

end

end A120876.P7869531437794014829

namespace A120876

/-- `A014574(n+1)²/2-1` -/
def P7869531437794014829.Spec : Prop :=
  ∀ n, P7869531437794014829.a n = (A120876 (n + 1) : ℚ)

end A120876

/-! ## A120876.P8710674729059148654

`(A001359(n+1)+1)²/2-1`
-/

namespace A120876.P8710674729059148654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001359 (n + 1) + 1) ^ 2 : ℚ) / 2 - 1

end

end A120876.P8710674729059148654

namespace A120876

/-- `(A001359(n+1)+1)²/2-1` -/
def P8710674729059148654.Spec : Prop :=
  ∀ n, P8710674729059148654.a n = (A120876 (n + 1) : ℚ)

end A120876

/-! ## A120876.P9792219774937159681

`2*((A006512(n+1)-1)/2)²-1`
-/

namespace A120876.P9792219774937159681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A006512 (n + 1) - 1 : ℚ) / 2) ^ 2 - 1

end

end A120876.P9792219774937159681

namespace A120876

/-- `2*((A006512(n+1)-1)/2)²-1` -/
def P9792219774937159681.Spec : Prop :=
  ∀ n, P9792219774937159681.a n = (A120876 (n + 1) : ℚ)

end A120876

/-! ## A120876.P331392447740149471

`A014574(n+1)*A040040(n+1)-1`
-/

namespace A120876.P331392447740149471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) * A040040 (n + 1) - 1

end

end A120876.P331392447740149471

namespace A120876

/-- `A014574(n+1)*A040040(n+1)-1` -/
def P331392447740149471.Spec : Prop :=
  ∀ n, P331392447740149471.a n = A120876 (n + 1)

end A120876

/-! ## A120876.P5953090988925051036

`A362941(n+1)/2-A006512(n+1)`
-/

namespace A120876.P5953090988925051036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362941 (n + 1) : ℚ) / 2 - (A006512 (n + 1) : ℚ)

end

end A120876.P5953090988925051036

namespace A120876

/-- `A362941(n+1)/2-A006512(n+1)` -/
def P5953090988925051036.Spec : Prop :=
  ∀ n, P5953090988925051036.a n = (A120876 (n + 1) : ℚ)

end A120876

/-! ## A120876.P1262276420338433669

`floor(sqrt(A037074(n+1))*A040040(n+1))`
-/

namespace A120876.P1262276420338433669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A037074 (n + 1) : ℝ) * (A040040 (n + 1) : ℝ)⌋

end

end A120876.P1262276420338433669

namespace A120876

/-- `floor(sqrt(A037074(n+1))*A040040(n+1))` -/
def P1262276420338433669.Spec : Prop :=
  ∀ n, P1262276420338433669.a n = A120876 (n + 1)

end A120876

/-! ## A120876.P9699940189656019622

`floor(A134020(n+2)/2)`
-/

namespace A120876.P9699940189656019622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134020 (n + 2) : ℚ) / 2⌋

end

end A120876.P9699940189656019622

namespace A120876

/-- `floor(A134020(n+2)/2)` -/
def P9699940189656019622.Spec : Prop :=
  ∀ n, P9699940189656019622.a n = A120876 (n + 1)

end A120876

/-! ## A120876.P390470679006219007

`(1-p?[A000040(n+1)+2])²/2-1`
-/

namespace A120876.P390470679006219007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ^ 2 : ℚ) / 2 - 1

end

end A120876.P390470679006219007

namespace A120876

/-- `(1-p?[A000040(n+1)+2])²/2-1` -/
def P390470679006219007.Spec : Prop :=
  ∀ n, P390470679006219007.a n = (A120876 (n + 1) : ℚ)

end A120876

/-! ## A120876.P2361241024256274707

`A102770(A155752(n+1))`
-/

namespace A120876.P2361241024256274707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102770 (A155752 (n + 1)).toNat

end

end A120876.P2361241024256274707

namespace A120876

/-- `A102770(A155752(n+1))` -/
def P2361241024256274707.Spec : Prop :=
  ∀ n, P2361241024256274707.a n = A120876 (n + 1)

end A120876

/-! ## A120876.P15599065241796385224

`A102770(A107770(n+1)-2)`
-/

namespace A120876.P15599065241796385224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102770 (A107770 (n + 1) - 2).toNat

end

end A120876.P15599065241796385224

namespace A120876

/-- `A102770(A107770(n+1)-2)` -/
def P15599065241796385224.Spec : Prop :=
  ∀ n, P15599065241796385224.a n = A120876 (n + 1)

end A120876

/-! ## A120876.P3064492112151624609

`(A006094(A029707(n+1))-1)/2`
-/

namespace A120876.P3064492112151624609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (A029707 (n + 1)).toNat - 1 : ℚ) / 2

end

end A120876.P3064492112151624609

namespace A120876

/-- `(A006094(A029707(n+1))-1)/2` -/
def P3064492112151624609.Spec : Prop :=
  ∀ n, P3064492112151624609.a n = (A120876 (n + 1) : ℚ)

end A120876

/-! ## A120876.P12140394153954540224

`(A000203(A001359(n+1))²-2)/2`
-/

namespace A120876.P12140394153954540224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A001359 (n + 1)).toNat ^ 2 - 2 : ℚ) / 2

end

end A120876.P12140394153954540224

namespace A120876

/-- `(A000203(A001359(n+1))²-2)/2` -/
def P12140394153954540224.Spec : Prop :=
  ∀ n, P12140394153954540224.a n = (A120876 (n + 1) : ℚ)

end A120876

/-! ## A120876.P16113424726040755181

`ceil(A124659(n+1)/2)`
-/

namespace A120876.P16113424726040755181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124659 (n + 1) : ℚ) / 2⌉

end

end A120876.P16113424726040755181

namespace A120876

/-- `ceil(A124659(n+1)/2)` -/
def P16113424726040755181.Spec : Prop :=
  ∀ n, P16113424726040755181.a n = A120876 (n + 1)

end A120876

/-!
# A120877: a(1) = 1. a(n) = number of earlier terms of the sequence that divide the sum of the earlier terms of the sequence.

The programs for A120877, there is no canonical definition to state claims against.
-/

/-! ## A120877.P1573805319974977612

`Δ[A120878(a(floor((n+1)/(n+2)))+n)]` with `a(0)=0`
-/

namespace A120877.P1573805319974977612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A120878 (f1 ⌊(n + 1 : ℚ) / (n + 2 : ℚ)⌋.toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120877.P1573805319974977612

/-! ## A120877.P2438330071630149245

`abs(Δ[A120878(A000038(n)+n)])`
-/

namespace A120877.P2438330071630149245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120878 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A120877.P2438330071630149245

/-! ## A120877.P15811544843096033902

`Δ[A120878(A028310(n))%(n+1)²]`
-/

namespace A120877.P15811544843096033902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120878 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120877.P15811544843096033902

/-! ## A120877.P12812035423033562810

`A028310(Δ[A120878(A028310(n))])`
-/

namespace A120877.P12812035423033562810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120878 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A120877.P12812035423033562810

/-! ## A120877.P16013709279853075631

`Δ[A120878(A000007(n)+n)%(n+1)²]`
-/

namespace A120877.P16013709279853075631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120878 (A000007 n + (n : ℤ)).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120877.P16013709279853075631

/-! ## A120877.P8870419122819247326

`Δ[A120878(A000038(a(n-1))+n)]` with `a(0)=0, a(1)=1`
-/

namespace A120877.P8870419122819247326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A120878 (A000038 (f1 (n - 1)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120877.P8870419122819247326

/-!
# A120878: a(n) = sum of first n terms of sequence A120877.

The programs for A120878, there is no canonical definition to state claims against.
-/

/-! ## A120878.P8068373513300796929

`∑[A120877(n+1)]`
-/

namespace A120878.P8068373513300796929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120878.P8068373513300796929

/-! ## A120878.P13350739317704109526

`A120877(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A120878.P13350739317704109526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120877 (n + 1) + a (A023443 n).toNat

end

end A120878.P13350739317704109526

/-! ## A120878.P8931637925031037023

`A120877(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A120878.P8931637925031037023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120877 (n + 1) + a (A028310 n - 1).toNat

end

end A120878.P8931637925031037023

/-! ## A120878.P9575602194703876943

`lt[A231876(n+1), A231923(A231890(n+1))]`
-/

namespace A120878.P9575602194703876943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231923 (A231890 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120878.P9575602194703876943

/-!
# A120879: G.f. satisfies: A(x) = A(x^3)*(1 + 3*x + 2*x^2).

The programs for A120879, the canonical program `A120879.P12900563397631605067` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120879 has offset 0).

The definition of A120879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120879.P12900563397631605067

`a(floor(n/3))*a(n%3)` with `a(0)=1, a(1)=3, a(2)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A120879

/-- `a(floor(n/3))*a(n%3)` -/
def P12900563397631605067.Spec : Prop :=
  ∀ n, (P12900563397631605067.a n : ℤ) = A120879 n

theorem P12900563397631605067.correct : P12900563397631605067.Spec := by
  intro n
  simp only [A120879]

end A120879

/-! ## A120879.P5491104108810111986

`A006047(A004488(n))`
-/

namespace A120879.P5491104108810111986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A004488 n).toNat

end

end A120879.P5491104108810111986

namespace A120879

/-- `A006047(A004488(n))` -/
def P5491104108810111986.Spec : Prop :=
  ∀ n, P5491104108810111986.a n = A120879 n

end A120879

/-! ## A120879.P3249143579257001418

`A061898(A006047(n))`
-/

namespace A120879.P3249143579257001418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A006047 n).toNat

end

end A120879.P3249143579257001418

namespace A120879

/-- `A061898(A006047(n))` -/
def P3249143579257001418.Spec : Prop :=
  ∀ n, P3249143579257001418.a n = A120879 n

end A120879

/-! ## A120879.P11576679284001277778

`A006047(A117966(n)+n)`
-/

namespace A120879.P11576679284001277778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A117966 n + (n : ℤ)).toNat

end

end A120879.P11576679284001277778

namespace A120879

/-- `A006047(A117966(n)+n)` -/
def P11576679284001277778.Spec : Prop :=
  ∀ n, P11576679284001277778.a n = A120879 n

end A120879

/-! ## A120879.P16500620170700876919

`∏{digits}[2*A007089(n), A268444(#)]`
-/

namespace A120879.P16500620170700876919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A268444 x).prod

end

end A120879.P16500620170700876919

namespace A120879

/-- `∏{digits}[2*A007089(n), A268444(#)]` -/
def P16500620170700876919.Spec : Prop :=
  ∀ n, P16500620170700876919.a n = A120879 n

end A120879

/-! ## A120879.P13638913507549565997

`∏{digits}[A007089(n), A000122(#)+#]`
-/

namespace A120879.P13638913507549565997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000122 x + (x : ℤ)).prod

end

end A120879.P13638913507549565997

namespace A120879

/-- `∏{digits}[A007089(n), A000122(#)+#]` -/
def P13638913507549565997.Spec : Prop :=
  ∀ n, P13638913507549565997.a n = A120879 n

end A120879

/-! ## A120879.P7122324298076849999

`∏{digits}[A007089(n), A006996(#)+#]`
-/

namespace A120879.P7122324298076849999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006996 x + (x : ℤ)).prod

end

end A120879.P7122324298076849999

namespace A120879

/-- `∏{digits}[A007089(n), A006996(#)+#]` -/
def P7122324298076849999.Spec : Prop :=
  ∀ n, P7122324298076849999.a n = A120879 n

end A120879

/-! ## A120879.P9861538492553077291

`∏{digits}[A007089(n), A033716(#)+#]`
-/

namespace A120879.P9861538492553077291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033716 x + (x : ℤ)).prod

end

end A120879.P9861538492553077291

namespace A120879

/-- `∏{digits}[A007089(n), A033716(#)+#]` -/
def P9861538492553077291.Spec : Prop :=
  ∀ n, P9861538492553077291.a n = A120879 n

end A120879

/-! ## A120879.P11483748380368441942

`∏{digits}[A007089(n), A054635(A039586(#+1))+1]`
-/

namespace A120879.P11483748380368441942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A054635 (A039586 (x + 1)).toNat + 1).prod

end

end A120879.P11483748380368441942

namespace A120879

/-- `∏{digits}[A007089(n), A054635(A039586(#+1))+1]` -/
def P11483748380368441942.Spec : Prop :=
  ∀ n, P11483748380368441942.a n = A120879 n

end A120879

/-! ## A120879.P7485540352938416426

`A006047(A137305(n))`
-/

namespace A120879.P7485540352938416426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A137305 n).toNat

end

end A120879.P7485540352938416426

namespace A120879

/-- `A006047(A137305(n))` -/
def P7485540352938416426.Spec : Prop :=
  ∀ n, P7485540352938416426.a n = A120879 n

end A120879

/-! ## A120879.P11588194783286260571

`A006047(A357616(n))`
-/

namespace A120879.P11588194783286260571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A357616 n).toNat

end

end A120879.P11588194783286260571

namespace A120879

/-- `A006047(A357616(n))` -/
def P11588194783286260571.Spec : Prop :=
  ∀ n, P11588194783286260571.a n = A120879 n

end A120879

/-! ## A120879.P8236909413818132544

`∏{e}[A101278(n), A000040(2/#)]`
-/

namespace A120879.P8236909413818132544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (SequenceMachineLib.roundAway (2 / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat

end

end A120879.P8236909413818132544

namespace A120879

/-- `∏{e}[A101278(n), A000040(2/#)]` -/
def P8236909413818132544.Spec : Prop :=
  ∀ n, P8236909413818132544.a n = A120879 n

end A120879

/-! ## A120879.P12514193637404713194

`∏{e}[A101278(n), A095320(2/#)]`
-/

namespace A120879.P12514193637404713194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A095320 (SequenceMachineLib.roundAway (2 / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat

end

end A120879.P12514193637404713194

namespace A120879

/-- `∏{e}[A101278(n), A095320(2/#)]` -/
def P12514193637404713194.Spec : Prop :=
  ∀ n, P12514193637404713194.a n = A120879 n

end A120879

/-!
# A120880: G.f. satisfies: A(x) = A(x^3)*(1 + 2*x + x^2); thus a(n) = 2^A062756(n), where A062756(n) is the number of 1's in the ternary expansion of n.

The programs for A120880, the canonical program `A120880.P15839126143348392204` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120880 has offset 0).

The definition of A120880 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120880.P15839126143348392204

`2^A062756(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120880

/-- `2^A062756(n)` -/
def P15839126143348392204.Spec : Prop :=
  ∀ n, P15839126143348392204.a n = (A120880 n : ℚ)

end A120880

/-! ## A120880.P12214252991024960298

`a(floor(n/3))*a(n%3)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A120880.P12214252991024960298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat * a (n % 3)

end

end A120880.P12214252991024960298

namespace A120880

/-- `a(floor(n/3))*a(n%3)` -/
def P12214252991024960298.Spec : Prop :=
  ∀ n, (P12214252991024960298.a n : ℤ) = A120880 n

end A120880

/-! ## A120880.P11983294528051218162

`2^val(A006047(n), 2)`
-/

namespace A120880.P11983294528051218162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A006047 n).toNat 2

end

end A120880.P11983294528051218162

namespace A120880

/-- `2^val(A006047(n), 2)` -/
def P11983294528051218162.Spec : Prop :=
  ∀ n, (P11983294528051218162.a n : ℤ) = A120880 n

end A120880

/-! ## A120880.P379961962838175094

`A006519(A006047(n))`
-/

namespace A120880.P379961962838175094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A006047 n).toNat

end

end A120880.P379961962838175094

namespace A120880

/-- `A006519(A006047(n))` -/
def P379961962838175094.Spec : Prop :=
  ∀ n, P379961962838175094.a n = A120880 n

end A120880

/-! ## A120880.P6748617980491145653

`A003958(A120879(n))`
-/

namespace A120880.P6748617980491145653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A120879 n).toNat

end

end A120880.P6748617980491145653

namespace A120880

/-- `A003958(A120879(n))` -/
def P6748617980491145653.Spec : Prop :=
  ∀ n, P6748617980491145653.a n = A120880 n

end A120880

/-! ## A120880.P291466204639230816

`A006047(A244042(n))`
-/

namespace A120880.P291466204639230816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A244042 n).toNat

end

end A120880.P291466204639230816

namespace A120880

/-- `A006047(A244042(n))` -/
def P291466204639230816.Spec : Prop :=
  ∀ n, P291466204639230816.a n = A120880 n

end A120880

/-! ## A120880.P38359461196224052

`A001316(A289813(n))`
-/

namespace A120880.P38359461196224052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A289813 n).toNat

end

end A120880.P38359461196224052

namespace A120880

/-- `A001316(A289813(n))` -/
def P38359461196224052.Spec : Prop :=
  ∀ n, P38359461196224052.a n = A120880 n

end A120880

/-! ## A120880.P13379679991319187344

`A290091(A038574(n))`
-/

namespace A120880.P13379679991319187344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 (A038574 n).toNat

end

end A120880.P13379679991319187344

namespace A120880

/-- `A290091(A038574(n))` -/
def P13379679991319187344.Spec : Prop :=
  ∀ n, P13379679991319187344.a n = A120880 n

end A120880

/-! ## A120880.P12053303941569283051

`A160467(2*A006047(n))`
-/

namespace A120880.P12053303941569283051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (2 * A006047 n).toNat

end

end A120880.P12053303941569283051

namespace A120880

/-- `A160467(2*A006047(n))` -/
def P12053303941569283051.Spec : Prop :=
  ∀ n, P12053303941569283051.a n = A120880 n

end A120880

/-! ## A120880.P6393473593348130994

`A206424(n)-A227428(n)`
-/

namespace A120880.P6393473593348130994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206424 n - A227428 n

end

end A120880.P6393473593348130994

namespace A120880

/-- `A206424(n)-A227428(n)` -/
def P6393473593348130994.Spec : Prop :=
  ∀ n, P6393473593348130994.a n = A120880 n

end A120880

/-! ## A120880.P2273845361881643041

`A105220(n)*A205565(n)`
-/

namespace A120880.P2273845361881643041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 n * A205565 n

end

end A120880.P2273845361881643041

namespace A120880

/-- `A105220(n)*A205565(n)` -/
def P2273845361881643041.Spec : Prop :=
  ∀ n, P2273845361881643041.a n = A120880 n

end A120880

/-! ## A120880.P53722531961649810

`gcd(A006047(n), A051638(n))`
-/

namespace A120880.P53722531961649810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006047 n) (A051638 n)

end

end A120880.P53722531961649810

namespace A120880

/-- `gcd(A006047(n), A051638(n))` -/
def P53722531961649810.Spec : Prop :=
  ∀ n, (P53722531961649810.a n : ℤ) = A120880 n

end A120880

/-! ## A120880.P664509201852476177

`∏{digits}[A007089(n), A006996(#²)]`
-/

namespace A120880.P664509201852476177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006996 (x ^ 2)).prod

end

end A120880.P664509201852476177

namespace A120880

/-- `∏{digits}[A007089(n), A006996(#²)]` -/
def P664509201852476177.Spec : Prop :=
  ∀ n, P664509201852476177.a n = A120880 n

end A120880

/-! ## A120880.P14855502280390563788

`(A316829(n)+1)*A205565(n)`
-/

namespace A120880.P14855502280390563788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A316829 n + 1) * A205565 n

end

end A120880.P14855502280390563788

namespace A120880

/-- `(A316829(n)+1)*A205565(n)` -/
def P14855502280390563788.Spec : Prop :=
  ∀ n, P14855502280390563788.a n = A120880 n

end A120880

/-! ## A120880.P5323697251170993137

`2*A206424(n)-A006047(n)`
-/

namespace A120880.P5323697251170993137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206424 n - A006047 n

end

end A120880.P5323697251170993137

namespace A120880

/-- `2*A206424(n)-A006047(n)` -/
def P5323697251170993137.Spec : Prop :=
  ∀ n, P5323697251170993137.a n = A120880 n

end A120880

/-! ## A120880.P13512454957850153978

`A006047(n)-2*A227428(n)`
-/

namespace A120880.P13512454957850153978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n - 2 * A227428 n

end

end A120880.P13512454957850153978

namespace A120880

/-- `A006047(n)-2*A227428(n)` -/
def P13512454957850153978.Spec : Prop :=
  ∀ n, P13512454957850153978.a n = A120880 n

end A120880

/-! ## A120880.P6109113266082607025

`∏{digits}[A007089(n), A054635(#+1)]`
-/

namespace A120880.P6109113266082607025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A054635 (x + 1)).prod

end

end A120880.P6109113266082607025

namespace A120880

/-- `∏{digits}[A007089(n), A054635(#+1)]` -/
def P6109113266082607025.Spec : Prop :=
  ∀ n, P6109113266082607025.a n = A120880 n

end A120880

/-! ## A120880.P14263017164023113726

`∏{digits}[A007089(n), A007448(#)-#]`
-/

namespace A120880.P14263017164023113726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007448 x - (x : ℤ)).prod

end

end A120880.P14263017164023113726

namespace A120880

/-- `∏{digits}[A007089(n), A007448(#)-#]` -/
def P14263017164023113726.Spec : Prop :=
  ∀ n, P14263017164023113726.a n = A120880 n

end A120880

/-! ## A120880.P11285580625323067358

`abs(A117942(A128173(2*n)))`
-/

namespace A120880.P11285580625323067358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117942 (A128173 (2 * n)).toNat|

end

end A120880.P11285580625323067358

namespace A120880

/-- `abs(A117942(A128173(2*n)))` -/
def P11285580625323067358.Spec : Prop :=
  ∀ n, P11285580625323067358.a n = A120880 n

end A120880

/-! ## A120880.P7458204921433797661

`A117592(A137305(n))`
-/

namespace A120880.P7458204921433797661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 (A137305 n).toNat

end

end A120880.P7458204921433797661

namespace A120880

/-- `A117592(A137305(n))` -/
def P7458204921433797661.Spec : Prop :=
  ∀ n, P7458204921433797661.a n = A120880 n

end A120880

/-!
# A120881: a(n) = number of k's, for 1 <= k <= n, where GCD(k,floor(n/k)) > 1.

The programs for A120881, there is no canonical definition to state claims against.
-/

/-! ## A120881.P13087807214282326832

`1-A120882(n+1)+n`
-/

namespace A120881.P13087807214282326832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A120882 (n + 1) + (n : ℤ)

end

end A120881.P13087807214282326832

/-! ## A120881.P14427650357241878578

`1-(A120882(abs(xor(n, -1)))-n)`
-/

namespace A120881.P14427650357241878578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A120882 |Int.xor (n : ℤ) (-1)|.toNat - (n : ℤ))

end

end A120881.P14427650357241878578

/-! ## A120881.P9966137551576195740

`1-(A120882(n-log2(1/2))-n)`
-/

namespace A120881.P9966137551576195740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A120882 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - (n : ℤ))

end

end A120881.P9966137551576195740

/-! ## A120881.P2658006117724856815

`A024000(A120882(n+1))+n`
-/

namespace A120881.P2658006117724856815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A120882 (n + 1)).toNat + (n : ℤ)

end

end A120881.P2658006117724856815

/-! ## A120881.P4760388350758664164

`(n+1)%A120882(A000027(n+1))`
-/

namespace A120881.P4760388350758664164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A120882 (A000027 (n + 1)).toNat)

end

end A120881.P4760388350758664164

/-! ## A120881.P15364774744172655575

`A060401(n+1)%A120882(n+1)`
-/

namespace A120881.P15364774744172655575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A120882 (n + 1))

end

end A120881.P15364774744172655575

/-! ## A120881.P16652930062428973835

`A087156(n+1)%A120882(n+1)`
-/

namespace A120881.P16652930062428973835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A120882 (n + 1))

end

end A120881.P16652930062428973835

/-! ## A120881.P18114020144147979428

`A130446(n+1)%A120882(n+1)`
-/

namespace A120881.P18114020144147979428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130446 (n + 1)) (A120882 (n + 1))

end

end A120881.P18114020144147979428

/-!
# A120882: a(n) is the number of k's, for 1 <= k <= n, where gcd(k,floor(n/k)) = 1.

The programs for A120882, there is no canonical definition to state claims against.
-/

/-! ## A120882.P3099633708223107994

`1-A120881(n+1)+n`
-/

namespace A120882.P3099633708223107994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A120881 (n + 1) + (n : ℤ)

end

end A120882.P3099633708223107994

/-! ## A120882.P15307632647945959233

`1-(A120881(n-log2(1/2))-n)`
-/

namespace A120882.P15307632647945959233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A120881 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - (n : ℤ))

end

end A120882.P15307632647945959233

/-! ## A120882.P13300125103056744555

`A024000(A120881(n+1))+n`
-/

namespace A120882.P13300125103056744555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A120881 (n + 1)).toNat + (n : ℤ)

end

end A120882.P13300125103056744555

/-! ## A120882.P13361319541355895608

`A196199(A120881(n+1)²)+1+n`
-/

namespace A120882.P13361319541355895608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A120881 (n + 1) ^ 2).toNat + 1 + (n : ℤ)

end

end A120882.P13361319541355895608

/-! ## A120882.P17944726060872631893

`A004736(A120881(n+1)+∑[n]+1)`
-/

namespace A120882.P17944726060872631893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A120881 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A120882.P17944726060872631893

/-!
# A120883: (1/4)*number of lattice points with odd indices in a square lattice inside a circle around the origin with radius 2*n.

The programs for A120883, there is no canonical definition to state claims against.
-/

/-! ## A120883.P10949363196630145389

`A053415(2*n)/4`
-/

namespace A120883.P10949363196630145389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053415 (2 * n) : ℚ) / 4

end

end A120883.P10949363196630145389

/-! ## A120883.P14075013783116513066

`record[A053415(n)/A010713(n)]`
-/

namespace A120883.P14075013783116513066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053415 n : ℚ) / (A010713 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120883.P14075013783116513066

/-! ## A120883.P11964029590399345005

`record[A053415(n)/A059132(n)]`
-/

namespace A120883.P11964029590399345005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053415 n : ℚ) / (A059132 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120883.P11964029590399345005

/-! ## A120883.P7891415377690245510

`record[A053415(n)/A101432(n)]`
-/

namespace A120883.P7891415377690245510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053415 n : ℚ) / (A101432 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120883.P7891415377690245510

/-! ## A120883.P6748316277095049864

`(2^A008683(A006450(n+1)))²*A053415(2*n)`
-/

namespace A120883.P6748316277095049864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ)) ^ 2 * (A053415 (2 * n) : ℚ)

end

end A120883.P6748316277095049864

/-! ## A120883.P18192121472130975717

`A349609(2*n)`
-/

namespace A120883.P18192121472130975717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349609 (2 * n)

end

end A120883.P18192121472130975717

/-! ## A120883.P7330522992541969446

`A174571(A053415(2*n))`
-/

namespace A120883.P7330522992541969446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A053415 (2 * n)).toNat

end

end A120883.P7330522992541969446

/-! ## A120883.P15702888649056442976

`A014200(A001105(n))-A036698(n)`
-/

namespace A120883.P15702888649056442976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (A001105 n).toNat - A036698 n

end

end A120883.P15702888649056442976

/-! ## A120883.P15427457562890741992

`A014200(A001105(n))-A014200(n²)`
-/

namespace A120883.P15427457562890741992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (A001105 n).toNat - A014200 (n ^ 2)

end

end A120883.P15427457562890741992

/-! ## A120883.P4063923337886156499

`A014200(A001105(n))-∑[A036694(n)]`
-/

namespace A120883.P4063923337886156499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (A001105 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120883.P4063923337886156499

/-!
# A120884: (1/8)*number of lattice points with odd indices in a cubic lattice inside a sphere around the origin with radius 2*n.

The programs for A120884, there is no canonical definition to state claims against.
-/

/-! ## A120884.P13409306021316346616

`A349610(2*(n+1))`
-/

namespace A120884.P13409306021316346616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349610 (2 * (n + 1))

end

end A120884.P13409306021316346616

/-! ## A120884.P16286096651055201753

`∑[abs(Δ[A349610(2*n)])]`
-/

namespace A120884.P16286096651055201753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349610 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120884.P16286096651055201753

/-! ## A120884.P11856889113796570226

`A053596(2*(n+1))/8`
-/

namespace A120884.P11856889113796570226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053596 (2 * (n + 1)) : ℚ) / 8

end

end A120884.P11856889113796570226

/-! ## A120884.P15061904889833349000

`A038835(∑[n]+floor(n/2))`
-/

namespace A120884.P15061904889833349000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038835 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋).toNat

end

end A120884.P15061904889833349000

/-! ## A120884.P4698818645598373433

`floor(A053596(n+2+n)/8)`
-/

namespace A120884.P4698818645598373433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053596 (n + 2 + n) : ℚ) / 8⌋

end

end A120884.P4698818645598373433

/-!
# A120885: Triangle read by rows where t(n,m) = ceiling(n/m).

The programs for A120885, there is no canonical definition to state claims against.
-/

/-! ## A120885.P1315912239244852121

`ceil(∑[char[∑[n]]]/(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A120885.P1315912239244852121
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
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ) : ℚ)⌉

end

end A120885.P1315912239244852121

/-! ## A120885.P10481218015550455812

`floor((n+1-C(∑[char[∑[n+1]]], 2))/(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A120885.P10481218015550455812
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

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
  ⌊((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ) : ℚ)⌋

end

end A120885.P10481218015550455812

/-! ## A120885.P2338407803364601571

`ceil(sqrt(A085383(n+1)))`
-/

namespace A120885.P2338407803364601571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A085383 (n + 1) : ℝ)⌉

end

end A120885.P2338407803364601571

/-! ## A120885.P6934427023825263189

`ceil(sqrt(A331145(n+1)))`
-/

namespace A120885.P6934427023825263189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A331145 (n + 1) : ℝ)⌉

end

end A120885.P6934427023825263189

/-! ## A120885.P3235959301776040619

`ceil(sqrt(A331149(n+1)))`
-/

namespace A120885.P3235959301776040619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A331149 (n + 1) : ℝ)⌉

end

end A120885.P3235959301776040619

/-! ## A120885.P6701791264109934944

`ceil(sqrt(A331151(n+1)))`
-/

namespace A120885.P6701791264109934944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A331151 (n + 1) : ℝ)⌉

end

end A120885.P6701791264109934944

/-! ## A120885.P6414693934091109903

`A003059(A085383(n+1))`
-/

namespace A120885.P6414693934091109903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A085383 (n + 1)).toNat

end

end A120885.P6414693934091109903

/-! ## A120885.P16201103363036938002

`A010766(A245300(n)+1)`
-/

namespace A120885.P16201103363036938002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A245300 n + 1).toNat

end

end A120885.P16201103363036938002

/-! ## A120885.P3609176527715802837

`A000194(A331145(n+1))`
-/

namespace A120885.P3609176527715802837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A331145 (n + 1)).toNat

end

end A120885.P3609176527715802837

/-! ## A120885.P3441851487587416607

`A003059(A331149(n+1))`
-/

namespace A120885.P3441851487587416607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A331149 (n + 1)).toNat

end

end A120885.P3441851487587416607

/-!
# A120886: a(n) = number of k's with 1 <= k <= n where gcd(k,ceiling(n/k)) > 1.

The programs for A120886, there is no canonical definition to state claims against.
-/

/-! ## A120886.P8641971914825449993

`1-A120887(n+1)+n`
-/

namespace A120886.P8641971914825449993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A120887 (n + 1) + (n : ℤ)

end

end A120886.P8641971914825449993

/-! ## A120886.P9614239129008678741

`1-(A120887(n-log2(1/2))-n)`
-/

namespace A120886.P9614239129008678741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A120887 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - (n : ℤ))

end

end A120886.P9614239129008678741

/-! ## A120886.P12707193607790146506

`A024000(A120887(n+1))+n`
-/

namespace A120886.P12707193607790146506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A120887 (n + 1)).toNat + (n : ℤ)

end

end A120886.P12707193607790146506

/-! ## A120886.P7475216313624478255

`A001489(A120887(n+1))+A000027(n+1)`
-/

namespace A120886.P7475216313624478255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A120887 (n + 1)).toNat + A000027 (n + 1)

end

end A120886.P7475216313624478255

/-! ## A120886.P6887033671132026038

`A261309(A261309(n+1)+A120887(n+1))`
-/

namespace A120886.P6887033671132026038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261309 (A261309 (n + 1) + A120887 (n + 1)).toNat

end

end A120886.P6887033671132026038

/-! ## A120886.P13862073601389355535

`A014688(n+1)%(A120887(n+1)+eq[n, A194603(n+1)])`
-/

namespace A120886.P13862073601389355535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014688 (n + 1)) (A120887 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ))

end

end A120886.P13862073601389355535

/-!
# A120887: a(n) is the number of k's in 1..n such that gcd(k,ceiling(n/k)) = 1.

The programs for A120887, there is no canonical definition to state claims against.
-/

/-! ## A120887.P9219051547877845644

`1-A120886(n+1)+n`
-/

namespace A120887.P9219051547877845644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A120886 (n + 1) + (n : ℤ)

end

end A120887.P9219051547877845644

/-! ## A120887.P17041049654472071131

`1-(A120886(n-log2(1/2))-n)`
-/

namespace A120887.P17041049654472071131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A120886 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - (n : ℤ))

end

end A120887.P17041049654472071131

/-! ## A120887.P11171416552893224457

`A024000(A120886(n+1))+n`
-/

namespace A120887.P11171416552893224457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A120886 (n + 1)).toNat + (n : ℤ)

end

end A120887.P11171416552893224457

/-! ## A120887.P3394317850387902311

`A004736(A120886(n+1)+A000124(n))`
-/

namespace A120887.P3394317850387902311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A120886 (n + 1) + A000124 n).toNat

end

end A120887.P3394317850387902311

/-! ## A120887.P16556721611848788603

`A001489(A120886(n+1))+A000027(n+1)`
-/

namespace A120887.P16556721611848788603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A120886 (n + 1)).toNat + A000027 (n + 1)

end

end A120887.P16556721611848788603

/-! ## A120887.P9584960269516903402

`A004736(A167614(n+1)+A120886(n+1))`
-/

namespace A120887.P9584960269516903402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A167614 (n + 1) + A120886 (n + 1)).toNat

end

end A120887.P9584960269516903402

/-! ## A120887.P12594022041486969051

`A014688(n+1)%(A120886(n+1)+eq[n, A194603(n+1)])`
-/

namespace A120887.P12594022041486969051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014688 (n + 1)) (A120886 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ))

end

end A120887.P12594022041486969051

/-!
# A120888: Triangle read by rows: T(n,k) = gcd(k,floor(n/k)) (1 <= k <= n).

The programs for A120888, the canonical program `A120888.P6096856240399343851` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120888 has offset 1).

The definition of A120888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120888.P4947050403105013367

`gcd(A010766(n+1), A128227(n))`
-/

namespace A120888.P4947050403105013367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010766 (n + 1)) (A128227 n)

end

end A120888.P4947050403105013367

namespace A120888

/-- `gcd(A010766(n+1), A128227(n))` -/
def P4947050403105013367.Spec : Prop :=
  ∀ n, (P4947050403105013367.a n : ℤ) = A120888 (n + 1)

end A120888

/-! ## A120888.P10672852173624565628

`gcd(A141539(n), A158905(n+1))`
-/

namespace A120888.P10672852173624565628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141539 n) (A158905 (n + 1))

end

end A120888.P10672852173624565628

namespace A120888

/-- `gcd(A141539(n), A158905(n+1))` -/
def P10672852173624565628.Spec : Prop :=
  ∀ n, (P10672852173624565628.a n : ℤ) = A120888 (n + 1)

end A120888

/-! ## A120888.P4749942926182798068

`gcd(A134199(n), A174557(n+1))`
-/

namespace A120888.P4749942926182798068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134199 n) (A174557 (n + 1))

end

end A120888.P4749942926182798068

namespace A120888

/-- `gcd(A134199(n), A174557(n+1))` -/
def P4749942926182798068.Spec : Prop :=
  ∀ n, (P4749942926182798068.a n : ℤ) = A120888 (n + 1)

end A120888

/-! ## A120888.P10388095329201609376

`gcd(A013942(2*(n+1)), A293388(n))`
-/

namespace A120888.P10388095329201609376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013942 (2 * (n + 1))) (A293388 n)

end

end A120888.P10388095329201609376

namespace A120888

/-- `gcd(A013942(2*(n+1)), A293388(n))` -/
def P10388095329201609376.Spec : Prop :=
  ∀ n, (P10388095329201609376.a n : ℤ) = A120888 (n + 1)

end A120888

/-! ## A120888.P15438472344269682439

`gcd(abs(A174557(n+1)), A002260(n+1))`
-/

namespace A120888.P15438472344269682439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A174557 (n + 1)| (A002260 (n + 1))

end

end A120888.P15438472344269682439

namespace A120888

/-- `gcd(abs(A174557(n+1)), A002260(n+1))` -/
def P15438472344269682439.Spec : Prop :=
  ∀ n, (P15438472344269682439.a n : ℤ) = A120888 (n + 1)

end A120888

/-! ## A120888.P10710194207883022443

`gcd(dr(A010766(n+1)), A080508(n+1))`
-/

namespace A120888.P10710194207883022443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.digitalRoot (A010766 (n + 1)) : ℤ) (A080508 (n + 1))

end

end A120888.P10710194207883022443

namespace A120888

/-- `gcd(dr(A010766(n+1)), A080508(n+1))` -/
def P10710194207883022443.Spec : Prop :=
  ∀ n, (P10710194207883022443.a n : ℤ) = A120888 (n + 1)

end A120888

/-! ## A120888.P13898846522841356997

`gcd(A010783(A038722(n+1)), A193738(n))`
-/

namespace A120888.P13898846522841356997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010783 (A038722 (n + 1)).toNat) (A193738 n)

end

end A120888.P13898846522841356997

namespace A120888

/-- `gcd(A010783(A038722(n+1)), A193738(n))` -/
def P13898846522841356997.Spec : Prop :=
  ∀ n, (P13898846522841356997.a n : ℤ) = A120888 (n + 1)

end A120888

/-! ## A120888.P6096856240399343851

`gcd(A002260(n+1), A010783(A278818(n)))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A120888

/-- `gcd(A002260(n+1), A010783(A278818(n)))` -/
def P6096856240399343851.Spec : Prop :=
  ∀ n, (P6096856240399343851.a n : ℤ) = A120888 (n + 1)

theorem P6096856240399343851.correct : P6096856240399343851.Spec := by
  intro n
  simp only [A120888, Nat.add_sub_cancel]

end A120888

/-! ## A120888.P14004995740759292739

`gcd(A004086(A010766(n+1)), A307079(n))`
-/

namespace A120888.P14004995740759292739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004086 (A010766 (n + 1)).toNat) (A307079 n)

end

end A120888.P14004995740759292739

namespace A120888

/-- `gcd(A004086(A010766(n+1)), A307079(n))` -/
def P14004995740759292739.Spec : Prop :=
  ∀ n, (P14004995740759292739.a n : ℤ) = A120888 (n + 1)

end A120888

/-! ## A120888.P17484115616818019432

`gcd(A158905(n+1)+A048151(n+1), A048151(n+1))`
-/

namespace A120888.P17484115616818019432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158905 (n + 1) + A048151 (n + 1)) (A048151 (n + 1))

end

end A120888.P17484115616818019432

namespace A120888

/-- `gcd(A158905(n+1)+A048151(n+1), A048151(n+1))` -/
def P17484115616818019432.Spec : Prop :=
  ∀ n, (P17484115616818019432.a n : ℤ) = A120888 (n + 1)

end A120888

/-!
# A120889: Triangle read by rows: T(n,k) = gcd(k,ceiling(n/k)) (1 <= k <= n).

The programs for A120889, the canonical program `A120889.P18281959753175321360` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120889 has offset 1).

The definition of A120889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120889.P18281959753175321360

`gcd(A193738(n), A193739(A286158(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A120889

/-- `gcd(A193738(n), A193739(A286158(n+1)))` -/
def P18281959753175321360.Spec : Prop :=
  ∀ n, (P18281959753175321360.a n : ℤ) = A120889 (n + 1)

theorem P18281959753175321360.correct : P18281959753175321360.Spec := by
  intro n
  simp only [A120889, Nat.add_sub_cancel]

end A120889

/-! ## A120889.P5767919605245922252

`gcd(A307662(n+1)+A010766(n+1), A002260(n+1))`
-/

namespace A120889.P5767919605245922252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A307662 (n + 1) + A010766 (n + 1)) (A002260 (n + 1))

end

end A120889.P5767919605245922252

namespace A120889

/-- `gcd(A307662(n+1)+A010766(n+1), A002260(n+1))` -/
def P5767919605245922252.Spec : Prop :=
  ∀ n, (P5767919605245922252.a n : ℤ) = A120889 (n + 1)

end A120889

/-! ## A120889.P13806458458573952340

`gcd(A003059(A085383(n+1)), A128227(n))`
-/

namespace A120889.P13806458458573952340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003059 (A085383 (n + 1)).toNat) (A128227 n)

end

end A120889.P13806458458573952340

namespace A120889

/-- `gcd(A003059(A085383(n+1)), A128227(n))` -/
def P13806458458573952340.Spec : Prop :=
  ∀ n, (P13806458458573952340.a n : ℤ) = A120889 (n + 1)

end A120889

/-! ## A120889.P3649110120306280398

`gcd(A002260(n+1), A010766(A245300(n)+1))`
-/

namespace A120889.P3649110120306280398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A010766 (A245300 n + 1).toNat)

end

end A120889.P3649110120306280398

namespace A120889

/-- `gcd(A002260(n+1), A010766(A245300(n)+1))` -/
def P3649110120306280398.Spec : Prop :=
  ∀ n, (P3649110120306280398.a n : ℤ) = A120889 (n + 1)

end A120889

/-! ## A120889.P3948039260856776207

`gcd(A002262(n+1), A003059(A331149(n+1)))`
-/

namespace A120889.P3948039260856776207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 1)) (A003059 (A331149 (n + 1)).toNat)

end

end A120889.P3948039260856776207

namespace A120889

/-- `gcd(A002262(n+1), A003059(A331149(n+1)))` -/
def P3948039260856776207.Spec : Prop :=
  ∀ n, (P3948039260856776207.a n : ℤ) = A120889 (n + 1)

end A120889

/-! ## A120889.P4384573004494410142

`∏{p}[A009998(n), gcd(#, A120885(n+1))]`
-/

namespace A120889.P4384573004494410142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Int.gcd (p : ℤ) (A120885 (n + 1))

end

end A120889.P4384573004494410142

namespace A120889

/-- `∏{p}[A009998(n), gcd(#, A120885(n+1))]` -/
def P4384573004494410142.Spec : Prop :=
  ∀ n, (P4384573004494410142.a n : ℤ) = A120889 (n + 1)

end A120889

/-! ## A120889.P18304290239363579682

`gcd(A120885(n+1), A128227(n))`
-/

namespace A120889.P18304290239363579682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120885 (n + 1)) (A128227 n)

end

end A120889.P18304290239363579682

namespace A120889

/-- `gcd(A120885(n+1), A128227(n))` -/
def P18304290239363579682.Spec : Prop :=
  ∀ n, (P18304290239363579682.a n : ℤ) = A120889 (n + 1)

end A120889

/-! ## A120889.P17995011871984219769

`gcd(A020639(A120885(n+1)), A009998(n))`
-/

namespace A120889.P17995011871984219769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A120885 (n + 1)).toNat) (A009998 n)

end

end A120889.P17995011871984219769

namespace A120889

/-- `gcd(A020639(A120885(n+1)), A009998(n))` -/
def P17995011871984219769.Spec : Prop :=
  ∀ n, (P17995011871984219769.a n : ℤ) = A120889 (n + 1)

end A120889

/-! ## A120889.P12473509948440532843

`gcd(A019555(A120885(n+1)), A077320(n+1))`
-/

namespace A120889.P12473509948440532843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019555 (A120885 (n + 1)).toNat) (A077320 (n + 1))

end

end A120889.P12473509948440532843

namespace A120889

/-- `gcd(A019555(A120885(n+1)), A077320(n+1))` -/
def P12473509948440532843.Spec : Prop :=
  ∀ n, (P12473509948440532843.a n : ℤ) = A120889 (n + 1)

end A120889

/-!
# A120890: Ordered odd leg of primitive Pythagorean triangles.

The programs for A120890, the canonical program `A120890.P8934076253784631552` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120890 has offset 1).

The definition of A120890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120890.P8934076253784631552

`∑[2*char[∑[A024361(2*n+1)]]]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A120890

/-- `∑[2*char[∑[A024361(2*n+1)]]]+1` -/
def P8934076253784631552.Spec : Prop :=
  ∀ n, (P8934076253784631552.a n : ℤ) = A120890 (n + 1)

theorem P8934076253784631552.correct : P8934076253784631552.Spec := by
  intro n
  simp only [A120890, Nat.add_sub_cancel]

end A120890

/-! ## A120890.P11614605822930965516

`filter[A024355(n+1), A000035(#)]`
-/

namespace A120890.P11614605822930965516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A120890.P11614605822930965516

namespace A120890

/-- `filter[A024355(n+1), A000035(#)]` -/
def P11614605822930965516.Spec : Prop :=
  ∀ n, P11614605822930965516.a n = A120890 (n + 1)

end A120890

/-! ## A120890.P16819968650746979697

`filter[A024355(n+1), A039982(#)]`
-/

namespace A120890.P16819968650746979697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A120890.P16819968650746979697

namespace A120890

/-- `filter[A024355(n+1), A039982(#)]` -/
def P16819968650746979697.Spec : Prop :=
  ∀ n, P16819968650746979697.a n = A120890 (n + 1)

end A120890

/-! ## A120890.P12137583168466626927

`filter[A024355(n+1), A098725(#)]`
-/

namespace A120890.P12137583168466626927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A120890.P12137583168466626927

namespace A120890

/-- `filter[A024355(n+1), A098725(#)]` -/
def P12137583168466626927.Spec : Prop :=
  ∀ n, P12137583168466626927.a n = A120890 (n + 1)

end A120890

/-! ## A120890.P18035355792251123751

`filter[A024355(n+1), A166486(#)]`
-/

namespace A120890.P18035355792251123751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A120890.P18035355792251123751

namespace A120890

/-- `filter[A024355(n+1), A166486(#)]` -/
def P18035355792251123751.Spec : Prop :=
  ∀ n, P18035355792251123751.a n = A120890 (n + 1)

end A120890

/-! ## A120890.P6307809681622003299

`filter[A024355(n+1), A266070(#)]`
-/

namespace A120890.P6307809681622003299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A120890.P6307809681622003299

namespace A120890

/-- `filter[A024355(n+1), A266070(#)]` -/
def P6307809681622003299.Spec : Prop :=
  ∀ n, P6307809681622003299.a n = A120890 (n + 1)

end A120890

/-! ## A120890.P4324873045286830339

`filter[A024355(n+1), A266719(#)]`
-/

namespace A120890.P4324873045286830339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A120890.P4324873045286830339

namespace A120890

/-- `filter[A024355(n+1), A266719(#)]` -/
def P4324873045286830339.Spec : Prop :=
  ∀ n, P4324873045286830339.a n = A120890 (n + 1)

end A120890

/-! ## A120890.P13498762256853107160

`filter[A024355(n+1), A296066(#)]`
-/

namespace A120890.P13498762256853107160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A120890.P13498762256853107160

namespace A120890

/-- `filter[A024355(n+1), A296066(#)]` -/
def P13498762256853107160.Spec : Prop :=
  ∀ n, P13498762256853107160.a n = A120890 (n + 1)

end A120890

/-! ## A120890.P12731181628591552800

`filter[A020888(2*(n+1)), A000035(#)]`
-/

namespace A120890.P12731181628591552800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A120890.P12731181628591552800

namespace A120890

/-- `filter[A020888(2*(n+1)), A000035(#)]` -/
def P12731181628591552800.Spec : Prop :=
  ∀ n, P12731181628591552800.a n = A120890 (n + 1)

end A120890

/-! ## A120890.P16409419388281204062

`filter[A020888(2*n+1), A266070(#)]`
-/

namespace A120890.P16409419388281204062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A120890.P16409419388281204062

namespace A120890

/-- `filter[A020888(2*n+1), A266070(#)]` -/
def P16409419388281204062.Spec : Prop :=
  ∀ n, P16409419388281204062.a n = A120890 (n + 1)

end A120890

/-! ## A120890.P14731745041045869390

`filter[A020888(2*n+1), A266719(#)]`
-/

namespace A120890.P14731745041045869390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A120890.P14731745041045869390

namespace A120890

/-- `filter[A020888(2*n+1), A266719(#)]` -/
def P14731745041045869390.Spec : Prop :=
  ∀ n, P14731745041045869390.a n = A120890 (n + 1)

end A120890

/-! ## A120890.P3248861545134451131

`filter[A020888(2*n+1), A296066(#)]`
-/

namespace A120890.P3248861545134451131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A120890.P3248861545134451131

namespace A120890

/-- `filter[A020888(2*n+1), A296066(#)]` -/
def P3248861545134451131.Spec : Prop :=
  ∀ n, P3248861545134451131.a n = A120890 (n + 1)

end A120890

/-! ## A120890.P13518095605707137985

`filter[A050270(2*n+1), A000035(#)]`
-/

namespace A120890.P13518095605707137985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050270 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A120890.P13518095605707137985

namespace A120890

/-- `filter[A050270(2*n+1), A000035(#)]` -/
def P13518095605707137985.Spec : Prop :=
  ∀ n, P13518095605707137985.a n = A120890 (n + 1)

end A120890

/-! ## A120890.P14947409901452971960

`filter[A050270(2*n+1), A266070(#)]`
-/

namespace A120890.P14947409901452971960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050270 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A120890.P14947409901452971960

namespace A120890

/-- `filter[A050270(2*n+1), A266070(#)]` -/
def P14947409901452971960.Spec : Prop :=
  ∀ n, P14947409901452971960.a n = A120890 (n + 1)

end A120890

/-! ## A120890.P2895800906057685690

`filter[A050270(2*n+1), A266719(#)]`
-/

namespace A120890.P2895800906057685690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050270 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A120890.P2895800906057685690

namespace A120890

/-- `filter[A050270(2*n+1), A266719(#)]` -/
def P2895800906057685690.Spec : Prop :=
  ∀ n, P2895800906057685690.a n = A120890 (n + 1)

end A120890

/-! ## A120890.P13927818034254869875

`filter[A050270(2*n+1), A267256(#)]`
-/

namespace A120890.P13927818034254869875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050270 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A120890.P13927818034254869875

namespace A120890

/-- `filter[A050270(2*n+1), A267256(#)]` -/
def P13927818034254869875.Spec : Prop :=
  ∀ n, P13927818034254869875.a n = A120890 (n + 1)

end A120890

/-! ## A120890.P3464404953523925574

`filter[A050270(2*n+1), A296066(#)]`
-/

namespace A120890.P3464404953523925574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050270 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A120890.P3464404953523925574

namespace A120890

/-- `filter[A050270(2*n+1), A296066(#)]` -/
def P3464404953523925574.Spec : Prop :=
  ∀ n, P3464404953523925574.a n = A120890 (n + 1)

end A120890

/-!
# A120891: Number of primitive Pythagorean triangles with odd leg 2n-1.

The programs for A120891, the canonical program `A120891.P14989150919995251867` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120891 has offset 1).

The definition of A120891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120891.P14989150919995251867

`A024361(Δ[n²])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A120891

/-- `A024361(Δ[n²])` -/
def P14989150919995251867.Spec : Prop :=
  ∀ n, P14989150919995251867.a n = A120891 (n + 1)

theorem P14989150919995251867.correct : P14989150919995251867.Spec := by
  intro n
  simp only [A120891, Nat.add_sub_cancel]

end A120891

/-! ## A120891.P2313379121072537984

`A024361(2*n+1)%(n+1)`
-/

namespace A120891.P2313379121072537984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024361 (2 * n + 1)) (n + 1 : ℤ)

end

end A120891.P2313379121072537984

namespace A120891

/-- `A024361(2*n+1)%(n+1)` -/
def P2313379121072537984.Spec : Prop :=
  ∀ n, P2313379121072537984.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P5489746721916898993

`floor(2^(A001221(2*n+1)-1))`
-/

namespace A120891.P5489746721916898993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A001221 (2 * n + 1) - 1 : ℤ)⌋

end

end A120891.P5489746721916898993

namespace A120891

/-- `floor(2^(A001221(2*n+1)-1))` -/
def P5489746721916898993.Spec : Prop :=
  ∀ n, P5489746721916898993.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P1276158301343680450

`ceil((2^A001221(Δ[n²])-1)/2)`
-/

namespace A120891.P1276158301343680450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ (A001221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ) - 1) / 2⌉

end

end A120891.P1276158301343680450

namespace A120891

/-- `ceil((2^A001221(Δ[n²])-1)/2)` -/
def P1276158301343680450.Spec : Prop :=
  ∀ n, P1276158301343680450.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P9999711691969559938

`A140472(A024361(2*n+1))`
-/

namespace A120891.P9999711691969559938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A024361 (2 * n + 1)).toNat

end

end A120891.P9999711691969559938

namespace A120891

/-- `A140472(A024361(2*n+1))` -/
def P9999711691969559938.Spec : Prop :=
  ∀ n, P9999711691969559938.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P12342210925972546074

`A333805(A007947(2*n+1))`
-/

namespace A120891.P12342210925972546074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (A007947 (2 * n + 1)).toNat

end

end A120891.P12342210925972546074

namespace A120891

/-- `A333805(A007947(2*n+1))` -/
def P12342210925972546074.Spec : Prop :=
  ∀ n, P12342210925972546074.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P4885359659306124474

`A157230(Δ[n²])`
-/

namespace A120891.P4885359659306124474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A120891.P4885359659306124474

namespace A120891

/-- `A157230(Δ[n²])` -/
def P4885359659306124474.Spec : Prop :=
  ∀ n, P4885359659306124474.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P10139676275850264507

`val(A320017(2*n+1), 2)`
-/

namespace A120891.P10139676275850264507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A320017 (2 * n + 1)).toNat 2

end

end A120891.P10139676275850264507

namespace A120891

/-- `val(A320017(2*n+1), 2)` -/
def P10139676275850264507.Spec : Prop :=
  ∀ n, (P10139676275850264507.a n : ℤ) = A120891 (n + 1)

end A120891

/-! ## A120891.P18219132671743872625

`A056924(∏{p}[2*n+1, #])`
-/

namespace A120891.P18219132671743872625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A120891.P18219132671743872625

namespace A120891

/-- `A056924(∏{p}[2*n+1, #])` -/
def P18219132671743872625.Spec : Prop :=
  ∀ n, P18219132671743872625.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P18033335883464700339

`floor(A304182(2*n+1)/2)`
-/

namespace A120891.P18033335883464700339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A304182 (2 * n + 1) : ℚ) / 2⌋

end

end A120891.P18033335883464700339

namespace A120891

/-- `floor(A304182(2*n+1)/2)` -/
def P18033335883464700339.Spec : Prop :=
  ∀ n, P18033335883464700339.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P14166894905259485132

`A007875(2*n+1)%(n+1)`
-/

namespace A120891.P14166894905259485132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007875 (2 * n + 1)) (n + 1 : ℤ)

end

end A120891.P14166894905259485132

namespace A120891

/-- `A007875(2*n+1)%(n+1)` -/
def P14166894905259485132.Spec : Prop :=
  ∀ n, P14166894905259485132.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P4422109686504603075

`A007875(2*n+1)-A000007(n)`
-/

namespace A120891.P4422109686504603075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (2 * n + 1) - A000007 n

end

end A120891.P4422109686504603075

namespace A120891

/-- `A007875(2*n+1)-A000007(n)` -/
def P4422109686504603075.Spec : Prop :=
  ∀ n, P4422109686504603075.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P12606631648684476146

`A007875(2*n+1)-A019590(n+2)`
-/

namespace A120891.P12606631648684476146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (2 * n + 1) - A019590 (n + 2)

end

end A120891.P12606631648684476146

namespace A120891

/-- `A007875(2*n+1)-A019590(n+2)` -/
def P12606631648684476146.Spec : Prop :=
  ∀ n, P12606631648684476146.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P16189538262756478231

`A024360(2*n+1)+A024359(2*n+1)`
-/

namespace A120891.P16189538262756478231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (2 * n + 1) + A024359 (2 * n + 1)

end

end A120891.P16189538262756478231

namespace A120891

/-- `A024360(2*n+1)+A024359(2*n+1)` -/
def P16189538262756478231.Spec : Prop :=
  ∀ n, P16189538262756478231.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P13549627289659879182

`A034444(2*n+1)-A007875(2*n+1)`
-/

namespace A120891.P13549627289659879182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (2 * n + 1) - A007875 (2 * n + 1)

end

end A120891.P13549627289659879182

namespace A120891

/-- `A034444(2*n+1)-A007875(2*n+1)` -/
def P13549627289659879182.Spec : Prop :=
  ∀ n, P13549627289659879182.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P2527747991541740966

`A024363(2*n+1)-A024362(2*n+1)`
-/

namespace A120891.P2527747991541740966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (2 * n + 1) - A024362 (2 * n + 1)

end

end A120891.P2527747991541740966

namespace A120891

/-- `A024363(2*n+1)-A024362(2*n+1)` -/
def P2527747991541740966.Spec : Prop :=
  ∀ n, P2527747991541740966.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P12445264290201853606

`A157226(Δ[n²])`
-/

namespace A120891.P12445264290201853606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157226 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A120891.P12445264290201853606

namespace A120891

/-- `A157226(Δ[n²])` -/
def P12445264290201853606.Spec : Prop :=
  ∀ n, P12445264290201853606.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P2621253923562386428

`dr(A157226(2*n+1))`
-/

namespace A120891.P2621253923562386428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A157226 (2 * n + 1))

end

end A120891.P2621253923562386428

namespace A120891

/-- `dr(A157226(2*n+1))` -/
def P2621253923562386428.Spec : Prop :=
  ∀ n, (P2621253923562386428.a n : ℤ) = A120891 (n + 1)

end A120891

/-! ## A120891.P12118704429618961695

`A024361(2*n+1)*A221074(2*n)`
-/

namespace A120891.P12118704429618961695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (2 * n + 1) * A221074 (2 * n)

end

end A120891.P12118704429618961695

namespace A120891

/-- `A024361(2*n+1)*A221074(2*n)` -/
def P12118704429618961695.Spec : Prop :=
  ∀ n, P12118704429618961695.a n = A120891 (n + 1)

end A120891

/-! ## A120891.P9455229609838132292

`gcd(A000496(2*n)-A000496(n+1), A157230(2*n+1))`
-/

namespace A120891.P9455229609838132292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000496 (2 * n) - A000496 (n + 1)) (A157230 (2 * n + 1))

end

end A120891.P9455229609838132292

namespace A120891

/-- `gcd(A000496(2*n)-A000496(n+1), A157230(2*n+1))` -/
def P9455229609838132292.Spec : Prop :=
  ∀ n, (P9455229609838132292.a n : ℤ) = A120891 (n + 1)

end A120891

/-!
# A120892: a(n) = 3*a(n-1) + 3*a(n-2) - a(n-3); a(0) = 1, a(1) = 0, a(2) = 3. a(n) = 4*{a(n-1)+(-1)^n}-a(n-2); a(0) = 1, a(1) = 0.

The programs for A120892, the canonical program `A120892.P1798597429372691248` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120892 has offset 0).

The definition of A120892 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+3*a(n-2)-a(n-3)` (program `A120892.P1798597429372691248`, by `A120892.P1798597429372691248.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120892.P1798597429372691248

`3*a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A120892

/-- `3*a(n-1)+3*a(n-2)-a(n-3)` -/
def P1798597429372691248.Spec : Prop :=
  ∀ n, P1798597429372691248.a n = A120892 n

theorem P1798597429372691248.correct : P1798597429372691248.Spec := by
  intro n
  simp only [A120892]

end A120892

/-! ## A120892.P10454573338936679968

`3*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A120892.P10454573338936679968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  3 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A120892.P10454573338936679968

namespace A120892

/-- `3*(a(n-1)+a(n-2))-a(n-3)` -/
def P10454573338936679968.Spec : Prop :=
  ∀ n, P10454573338936679968.a n = A120892 n

theorem P10454573338936679968.correct : P10454573338936679968.Spec := by
  intro n
  simp only [A120892, Nat.add_sub_cancel, A120892.P10454573338936679968.a, A120892.P1798597429372691248.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120892

/-! ## A120892.P8589083682272489206

`abs(A097949(n))-1`
-/

namespace A120892.P8589083682272489206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097949 n| - 1

end

end A120892.P8589083682272489206

namespace A120892

/-- `abs(A097949(n))-1` -/
def P8589083682272489206.Spec : Prop :=
  ∀ n, P8589083682272489206.a n = A120892 n

end A120892

/-! ## A120892.P5831373665581040762

`A001835(n)-a(n-1)` with `a(0)=1`
-/

namespace A120892.P5831373665581040762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001835 n - a (n - 1)

end

end A120892.P5831373665581040762

namespace A120892

/-- `A001835(n)-a(n-1)` -/
def P5831373665581040762.Spec : Prop :=
  ∀ n, P5831373665581040762.a n = A120892 n

end A120892

/-! ## A120892.P7176057169280958007

`A079935(n)-a(n-1)` with `a(0)=1`
-/

namespace A120892.P7176057169280958007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079935 n - a (n - 1)

end

end A120892.P7176057169280958007

namespace A120892

/-- `A079935(n)-a(n-1)` -/
def P7176057169280958007.Spec : Prop :=
  ∀ n, P7176057169280958007.a n = A120892 n

end A120892

/-! ## A120892.P17980748348532902862

`A005246(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A120892.P17980748348532902862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005246 (2 * n) - a (n - 1)

end

end A120892.P17980748348532902862

namespace A120892

/-- `A005246(2*n)-a(n-1)` -/
def P17980748348532902862.Spec : Prop :=
  ∀ n, P17980748348532902862.a n = A120892 n

end A120892

/-! ## A120892.P5726846597986725836

`A123020(n+1)-A014113(n)`
-/

namespace A120892.P5726846597986725836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123020 (n + 1) - A014113 n

end

end A120892.P5726846597986725836

namespace A120892

/-- `A123020(n+1)-A014113(n)` -/
def P5726846597986725836.Spec : Prop :=
  ∀ n, P5726846597986725836.a n = A120892 n

end A120892

/-! ## A120892.P6406223102076913824

`xor(1, A002530(n)*A048788(n))`
-/

namespace A120892.P6406223102076913824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A002530 n * A048788 n)

end

end A120892.P6406223102076913824

namespace A120892

/-- `xor(1, A002530(n)*A048788(n))` -/
def P6406223102076913824.Spec : Prop :=
  ∀ n, P6406223102076913824.a n = A120892 n

end A120892

/-! ## A120892.P16501429085884037251

`(A002531(n)-A002530(n))*A002530(n+1)`
-/

namespace A120892.P16501429085884037251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002531 n - A002530 n) * A002530 (n + 1)

end

end A120892.P16501429085884037251

namespace A120892

/-- `(A002531(n)-A002530(n))*A002530(n+1)` -/
def P16501429085884037251.Spec : Prop :=
  ∀ n, P16501429085884037251.a n = A120892 n

end A120892

/-! ## A120892.P13937548619337227982

`(A002530(n+1)-A048788(n))*A048788(n+1)`
-/

namespace A120892.P13937548619337227982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002530 (n + 1) - A048788 n) * A048788 (n + 1)

end

end A120892.P13937548619337227982

namespace A120892

/-- `(A002530(n+1)-A048788(n))*A048788(n+1)` -/
def P13937548619337227982.Spec : Prop :=
  ∀ n, P13937548619337227982.a n = A120892 n

end A120892

/-! ## A120892.P3889593671194675784

`Δ[A001353(abs(1-n))]-a(n-1)` with `a(0)=1`
-/

namespace A120892.P3889593671194675784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A120892.P3889593671194675784

namespace A120892

/-- `Δ[A001353(abs(1-n))]-a(n-1)` -/
def P3889593671194675784.Spec : Prop :=
  ∀ n, P3889593671194675784.a n = A120892 n

end A120892

/-! ## A120892.P6271040107616600924

`A217233(n)+A106707(n)`
-/

namespace A120892.P6271040107616600924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217233 n + A106707 n

end

end A120892.P6271040107616600924

namespace A120892

/-- `A217233(n)+A106707(n)` -/
def P6271040107616600924.Spec : Prop :=
  ∀ n, P6271040107616600924.a n = A120892 n

end A120892

/-! ## A120892.P3199658679405949583

`A217233(n)-A001353(n)`
-/

namespace A120892.P3199658679405949583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217233 n - A001353 n

end

end A120892.P3199658679405949583

namespace A120892

/-- `A217233(n)-A001353(n)` -/
def P3199658679405949583.Spec : Prop :=
  ∀ n, P3199658679405949583.a n = A120892 n

end A120892

/-! ## A120892.P8621857750511003412

`A006253(n)-2*A109437(n)`
-/

namespace A120892.P8621857750511003412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n - 2 * A109437 n

end

end A120892.P8621857750511003412

namespace A120892

/-- `A006253(n)-2*A109437(n)` -/
def P8621857750511003412.Spec : Prop :=
  ∀ n, P8621857750511003412.a n = A120892 n

end A120892

/-! ## A120892.P8773032145545524004

`2*A120893(n)-A001075(n)`
-/

namespace A120892.P8773032145545524004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120893 n - A001075 n

end

end A120892.P8773032145545524004

namespace A120892

/-- `2*A120893(n)-A001075(n)` -/
def P8773032145545524004.Spec : Prop :=
  ∀ n, P8773032145545524004.a n = A120892 n

end A120892

/-! ## A120892.P12196978028842751175

`(A120893(n)+A033999(n))/2`
-/

namespace A120892.P12196978028842751175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120893 n + A033999 n : ℚ) / 2

end

end A120892.P12196978028842751175

namespace A120892

/-- `(A120893(n)+A033999(n))/2` -/
def P12196978028842751175.Spec : Prop :=
  ∀ n, P12196978028842751175.a n = (A120892 n : ℚ)

end A120892

/-! ## A120892.P9616573748501376446

`A217233(n)-A002530(2*n)`
-/

namespace A120892.P9616573748501376446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217233 n - A002530 (2 * n)

end

end A120892.P9616573748501376446

namespace A120892

/-- `A217233(n)-A002530(2*n)` -/
def P9616573748501376446.Spec : Prop :=
  ∀ n, P9616573748501376446.a n = A120892 n

end A120892

/-! ## A120892.P4287715277771928023

`A217233(n)-A052530(n)/2`
-/

namespace A120892.P4287715277771928023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217233 n : ℚ) - (A052530 n : ℚ) / 2

end

end A120892.P4287715277771928023

namespace A120892

/-- `A217233(n)-A052530(n)/2` -/
def P4287715277771928023.Spec : Prop :=
  ∀ n, P4287715277771928023.a n = (A120892 n : ℚ)

end A120892

/-! ## A120892.P8957427008287942829

`A001075(n)-A001353(n)-a(n-1)` with `a(0)=1`
-/

namespace A120892.P8957427008287942829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001075 n - A001353 n - a (n - 1)

end

end A120892.P8957427008287942829

namespace A120892

/-- `A001075(n)-A001353(n)-a(n-1)` -/
def P8957427008287942829.Spec : Prop :=
  ∀ n, P8957427008287942829.a n = A120892 n

end A120892

/-!
# A120893: a(n) = 3*a(n-1) + 3*a(n-2) - a(n-3); a(0)=1, a(1)=1, a(2)=5.

The programs for A120893, the canonical program `A120893.P8515502401461281750` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120893 has offset 0).

The definition of A120893 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+3*a(n-2)-a(n-3)` (program `A120893.P8515502401461281750`, by `A120893.P8515502401461281750.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120893.P8515502401461281750

`3*a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A120893

/-- `3*a(n-1)+3*a(n-2)-a(n-3)` -/
def P8515502401461281750.Spec : Prop :=
  ∀ n, P8515502401461281750.a n = A120893 n

theorem P8515502401461281750.correct : P8515502401461281750.Spec := by
  intro n
  simp only [A120893]

end A120893

/-! ## A120893.P1532734905294988150

`((-1)^n+(2-sqrt(3))^n+(2+sqrt(3))^n)/3`
-/

namespace A120893.P1532734905294988150
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((-1) ^ n : ℝ) + (2 - Real.sqrt (3 : ℝ)) ^ n + (2 + Real.sqrt (3 : ℝ)) ^ n) / 3

end

end A120893.P1532734905294988150

namespace A120893

/-- `((-1)^n+(2-sqrt(3))^n+(2+sqrt(3))^n)/3` -/
def P1532734905294988150.Spec : Prop :=
  ∀ n, P1532734905294988150.a n = (A120893 n : ℝ)

end A120893

/-! ## A120893.P15595260504017982144

`3*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A120893.P15595260504017982144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  3 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A120893.P15595260504017982144

namespace A120893

/-- `3*(a(n-1)+a(n-2))-a(n-3)` -/
def P15595260504017982144.Spec : Prop :=
  ∀ n, P15595260504017982144.a n = A120893 n

theorem P15595260504017982144.correct : P15595260504017982144.Spec := by
  intro n
  simp only [A120893, Nat.add_sub_cancel, A120893.P15595260504017982144.a, A120893.P8515502401461281750.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120893

/-! ## A120893.P13341807458404017465

`A003699(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A120893.P13341807458404017465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A003699 n - a (n - 1)

end

end A120893.P13341807458404017465

namespace A120893

/-- `A003699(n)-a(n-1)` -/
def P13341807458404017465.Spec : Prop :=
  ∀ n, P13341807458404017465.a n = A120893 n

end A120893

/-! ## A120893.P14856740029729808489

`2*floor(A092184(n)/3)+1`
-/

namespace A120893.P14856740029729808489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A092184 n : ℚ) / 3⌋ + 1

end

end A120893.P14856740029729808489

namespace A120893

/-- `2*floor(A092184(n)/3)+1` -/
def P14856740029729808489.Spec : Prop :=
  ∀ n, P14856740029729808489.a n = A120893 n

end A120893

/-! ## A120893.P1744869682530168873

`2*ceil(A001075(n)/3)-1`
-/

namespace A120893.P1744869682530168873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A001075 n : ℚ) / 3⌉ - 1

end

end A120893.P1744869682530168873

namespace A120893

/-- `2*ceil(A001075(n)/3)-1` -/
def P1744869682530168873.Spec : Prop :=
  ∀ n, P1744869682530168873.a n = A120893 n

end A120893

/-! ## A120893.P298711861399573889

`∑[A231896(n-1)-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A120893.P298711861399573889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A231896 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120893.P298711861399573889

namespace A120893

/-- `∑[A231896(n-1)-a(n-1)]` -/
def P298711861399573889.Spec : Prop :=
  ∀ n, P298711861399573889.a n = A120893 n

end A120893

/-! ## A120893.P16679584096999614062

`A106707(n)+A006253(n)`
-/

namespace A120893.P16679584096999614062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106707 n + A006253 n

end

end A120893.P16679584096999614062

namespace A120893

/-- `A106707(n)+A006253(n)` -/
def P16679584096999614062.Spec : Prop :=
  ∀ n, P16679584096999614062.a n = A120893 n

end A120893

/-! ## A120893.P14762501505754992135

`A006253(n)-A001353(n)`
-/

namespace A120893.P14762501505754992135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n - A001353 n

end

end A120893.P14762501505754992135

namespace A120893

/-- `A006253(n)-A001353(n)` -/
def P14762501505754992135.Spec : Prop :=
  ∀ n, P14762501505754992135.a n = A120893 n

end A120893

/-! ## A120893.P5831276297238348509

`A087944(n)-A001045(n)`
-/

namespace A120893.P5831276297238348509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n - A001045 n

end

end A120893.P5831276297238348509

namespace A120893

/-- `A087944(n)-A001045(n)` -/
def P5831276297238348509.Spec : Prop :=
  ∀ n, P5831276297238348509.a n = A120893 n

end A120893

/-! ## A120893.P13034985289699766285

`A006253(n)-Δ[A101879(n)]`
-/

namespace A120893.P13034985289699766285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n - (f1 (n + 1) - f1 n)

end

end A120893.P13034985289699766285

namespace A120893

/-- `A006253(n)-Δ[A101879(n)]` -/
def P13034985289699766285.Spec : Prop :=
  ∀ n, P13034985289699766285.a n = A120893 n

end A120893

/-! ## A120893.P16995152289977969787

`A006253(n)-A002530(2*n)`
-/

namespace A120893.P16995152289977969787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n - A002530 (2 * n)

end

end A120893.P16995152289977969787

namespace A120893

/-- `A006253(n)-A002530(2*n)` -/
def P16995152289977969787.Spec : Prop :=
  ∀ n, P16995152289977969787.a n = A120893 n

end A120893

/-! ## A120893.P17627792524227061650

`2*A120892(n)-A033999(n)`
-/

namespace A120893.P17627792524227061650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120892 n - A033999 n

end

end A120893.P17627792524227061650

namespace A120893

/-- `2*A120892(n)-A033999(n)` -/
def P17627792524227061650.Spec : Prop :=
  ∀ n, P17627792524227061650.a n = A120893 n

end A120893

/-! ## A120893.P344478654262733429

`A006253(n)-A052530(n)/2`
-/

namespace A120893.P344478654262733429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006253 n : ℚ) - (A052530 n : ℚ) / 2

end

end A120893.P344478654262733429

namespace A120893

/-- `A006253(n)-A052530(n)/2` -/
def P344478654262733429.Spec : Prop :=
  ∀ n, P344478654262733429.a n = (A120893 n : ℚ)

end A120893

/-! ## A120893.P3405532834135149815

`A001835(n+1)-2*A109437(n)`
-/

namespace A120893.P3405532834135149815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 1) - 2 * A109437 n

end

end A120893.P3405532834135149815

namespace A120893

/-- `A001835(n+1)-2*A109437(n)` -/
def P3405532834135149815.Spec : Prop :=
  ∀ n, P3405532834135149815.a n = A120893 n

end A120893

/-! ## A120893.P14688027321826695490

`A001075(n)-A002530(n)*A048788(n)`
-/

namespace A120893.P14688027321826695490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n - A002530 n * A048788 n

end

end A120893.P14688027321826695490

namespace A120893

/-- `A001075(n)-A002530(n)*A048788(n)` -/
def P14688027321826695490.Spec : Prop :=
  ∀ n, P14688027321826695490.a n = A120893 n

end A120893

/-! ## A120893.P11090908445384280784

`∑[A120892(n)+A001353(n)]-A001353(n)`
-/

namespace A120893.P11090908445384280784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 n + A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001353 n

end

end A120893.P11090908445384280784

namespace A120893

/-- `∑[A120892(n)+A001353(n)]-A001353(n)` -/
def P11090908445384280784.Spec : Prop :=
  ∀ n, P11090908445384280784.a n = A120893 n

end A120893

/-! ## A120893.P4475377978655385162

`A120892(n)+xor(A034947(n+1)², A120892(n))`
-/

namespace A120893.P4475377978655385162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 n + Int.xor (A034947 (n + 1) ^ 2) (A120892 n)

end

end A120893.P4475377978655385162

namespace A120893

/-- `A120892(n)+xor(A034947(n+1)², A120892(n))` -/
def P4475377978655385162.Spec : Prop :=
  ∀ n, P4475377978655385162.a n = A120893 n

end A120893

/-! ## A120893.P16151204168891910122

`A002530(n+1)*A048788(n+1)-A001353(n)`
-/

namespace A120893.P16151204168891910122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (n + 1) * A048788 (n + 1) - A001353 n

end

end A120893.P16151204168891910122

namespace A120893

/-- `A002530(n+1)*A048788(n+1)-A001353(n)` -/
def P16151204168891910122.Spec : Prop :=
  ∀ n, P16151204168891910122.a n = A120893 n

end A120893

/-!
# A120895: G.f. satisfies: A(x) = G(x)*A(x^3*G(x)^2) where G(x) is the g.f. of the Motzkin numbers (A001006).

The programs for A120895, there is no canonical definition to state claims against.
-/

/-! ## A120895.P11030770208366483523

`A120894(n²)`
-/

namespace A120895.P11030770208366483523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120894 (n ^ 2)

end

end A120895.P11030770208366483523

/-! ## A120895.P8459443118667830933

`or(char[1], A120894(A000290(n)))`
-/

namespace A120895.P8459443118667830933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A120894 (A000290 n).toNat)

end

end A120895.P8459443118667830933

/-! ## A120895.P9154264479411798474

`A120894(n^ceil(atan(n)))+A000035(2*n)`
-/

namespace A120895.P9154264479411798474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120894 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat + A000035 (2 * n)

end

end A120895.P9154264479411798474

/-! ## A120895.P11016833977319311852

`A120894(n^ceil(atan(n)))+A033683(n+4)`
-/

namespace A120895.P11016833977319311852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120894 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat + A033683 (n + 4)

end

end A120895.P11016833977319311852

/-! ## A120895.P213126158447582027

`A120894(A000290(n))%A001550(n)`
-/

namespace A120895.P213126158447582027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120894 (A000290 n).toNat) (A001550 n)

end

end A120895.P213126158447582027

/-!
# A120896: Central terms of triangle A120894 (cascadence of 1+x+x^2).

The programs for A120896, there is no canonical definition to state claims against.
-/

/-! ## A120896.P12929711786441416077

`A120894(∑[2*n])`
-/

namespace A120896.P12929711786441416077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120894 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120896.P12929711786441416077

/-! ## A120896.P3833085650356254224

`and(-1, A120894(A002378(n)))`
-/

namespace A120896.P3833085650356254224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A120894 (A002378 n).toNat)

end

end A120896.P3833085650356254224

/-! ## A120896.P17673149507463778486

`lcm(A087960(n), A120894(A002378(n)))`
-/

namespace A120896.P17673149507463778486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A120894 (A002378 n).toNat)

end

end A120896.P17673149507463778486

/-! ## A120896.P4864923318483396108

`or(A033683(n), A120894(A002378(n)))`
-/

namespace A120896.P4864923318483396108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033683 n) (A120894 (A002378 n).toNat)

end

end A120896.P4864923318483396108

/-! ## A120896.P14528101622402717620

`A120894(A002378(n))/A007318(∑[n])`
-/

namespace A120896.P14528101622402717620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120894 (A002378 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A120896.P14528101622402717620

/-!
# A120897: Row sums of triangle A120894 (cascadence of 1+x+x^2).

The programs for A120897, there is no canonical definition to state claims against.
-/

/-! ## A120897.P15447460273120929216

`A008611(A327696(n)+A132153(n+1))`
-/

namespace A120897.P15447460273120929216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A327696 n + A132153 (n + 1)).toNat

end

end A120897.P15447460273120929216

/-! ## A120897.P10111662494796701071

`A325404(A105795(n))+A053152(n+1)`
-/

namespace A120897.P10111662494796701071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325404 (A105795 n).toNat + A053152 (n + 1)

end

end A120897.P10111662494796701071

/-!
# A120899: G.f. satisfies: A(x) = C(x)^2 * A(x^3*C(x)^4), where C(x) is the g.f. of the Catalan numbers (A000108).

The programs for A120899, there is no canonical definition to state claims against.
-/

/-! ## A120899.P18060287285202877793

`A120898(n²)`
-/

namespace A120899.P18060287285202877793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120898 (n ^ 2)

end

end A120899.P18060287285202877793

/-! ## A120899.P13972559688604507648

`record[A120898(∑[floor(n/2)])]`
-/

namespace A120899.P13972559688604507648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120898 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120899.P13972559688604507648

/-! ## A120899.P9324364170988024030

`and(-1, A120898(A000290(n)))`
-/

namespace A120899.P9324364170988024030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A120898 (A000290 n).toNat)

end

end A120899.P9324364170988024030

/-! ## A120899.P6369155329831105511

`record[A010052(n)*A120898(n)]`
-/

namespace A120899.P6369155329831105511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n * A120898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120899.P6369155329831105511

/-! ## A120899.P2208188000304281149

`record[A120898(n)/A008315(n)]`
-/

namespace A120899.P2208188000304281149
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120898 n : ℚ) / (A008315 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120899.P2208188000304281149

