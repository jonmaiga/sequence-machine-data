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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A000400: Powers of 6: a(n) = 6^n.

The programs for A000400, the canonical program `A000400.P10889281521385558416` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000400 has offset 0).

The definition of A000400 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n` (program `A000400.P10889281521385558416`, by `A000400.P10889281521385558416.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000400.P10889281521385558416

`6^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000400

/-- `6^n` -/
def P10889281521385558416.Spec : Prop :=
  ∀ n, (P10889281521385558416.a n : ℤ) = A000400 n

theorem P10889281521385558416.correct : P10889281521385558416.Spec := by
  intro n
  simp only [A000400]

end A000400

/-!
# A000401: Numbers of form x^2 + y^2 + 2*z^2.

The programs for A000401, there is no canonical definition to state claims against.
-/

/-! ## A000401.P1566210193842192989

`comp[A055039(n+1)]`
-/

namespace A000401.P1566210193842192989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A000401.P1566210193842192989

/-! ## A000401.P5369160936065588750

`comp[2*A004215(n+1)]`
-/

namespace A000401.P5369160936065588750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A000401.P5369160936065588750

/-! ## A000401.P8121230897173148303

`comp[2*eq[0, A212885(n)]]`
-/

namespace A000401.P8121230897173148303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212885 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A000401.P8121230897173148303

/-! ## A000401.P3792562006332613135

`comp[2*eq[1, A072401(n)]]`
-/

namespace A000401.P3792562006332613135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A000401.P3792562006332613135

/-! ## A000401.P7409386162624158548

`comp[2*lt[A138202(n), 1]]`
-/

namespace A000401.P7409386162624158548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138202 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A000401.P7409386162624158548

/-! ## A000401.P1766599790489213520

`comp[2*eq[4, A002828(n)]]`
-/

namespace A000401.P1766599790489213520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A000401.P1766599790489213520

/-! ## A000401.P8051903124514447499

`comp[2*(lt[abs(A212885(n+1)), 1]+1)]`
-/

namespace A000401.P8051903124514447499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212885 (n + 1)|

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A000401.P8051903124514447499

/-! ## A000401.P8566350139769681282

`lt[0, A014455(n)]`
-/

namespace A000401.P8566350139769681282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000401.P8566350139769681282

/-! ## A000401.P7562642277656516149

`eq[n, n%(A004015(n)+n)]`
-/

namespace A000401.P7562642277656516149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A004015 n + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000401.P7562642277656516149

/-! ## A000401.P5880394982561899185

`eq[0, A064873(2*n)]`
-/

namespace A000401.P5880394982561899185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064873 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000401.P5880394982561899185

/-! ## A000401.P12973054272949713878

`eq[0, A072401(2*n)]`
-/

namespace A000401.P12973054272949713878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000401.P12973054272949713878

/-! ## A000401.P9080465560827585404

`lt[0, A283273(2*n)]`
-/

namespace A000401.P9080465560827585404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283273 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000401.P9080465560827585404

/-! ## A000401.P16802129280506894953

`eq[2, A020639(A000118(A000164(2*n)))]`
-/

namespace A000401.P16802129280506894953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000118 (A000164 (2 * n)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000401.P16802129280506894953

/-! ## A000401.P5563116788001763053

`eq[1, A071374(2*n)]`
-/

namespace A000401.P5563116788001763053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071374 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000401.P5563116788001763053

/-! ## A000401.P5814070129747717214

`lt[n, A138202(2*n)²²]`
-/

namespace A000401.P5814070129747717214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138202 (2 * n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000401.P5814070129747717214

/-! ## A000401.P3567380974563181512

`lt[n, A002102(2*n)*A094024(2*n+1)]`
-/

namespace A000401.P3567380974563181512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 (2 * n) * A094024 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000401.P3567380974563181512

/-! ## A000401.P18363311140155844831

`lt[1/A000032(2*n), A000164(2*n)]`
-/

namespace A000401.P18363311140155844831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000032 (2 * n) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A000401.P18363311140155844831

/-! ## A000401.P17777551612369041594

`lt[n, A000032(2*n+1)*A000164(2*n)]`
-/

namespace A000401.P17777551612369041594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1) * A000164 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000401.P17777551612369041594

/-!
# A000402: Number of permutations of [n] in which the longest increasing run has length 3.

The programs for A000402, there is no canonical definition to state claims against.
-/

/-! ## A000402.P9500326207204542863

`A117158(n+1)-A049774(n+1)`
-/

namespace A000402.P9500326207204542863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117158 (n + 1) - A049774 (n + 1)

end

end A000402.P9500326207204542863

/-! ## A000402.P6237557040774783173

`A008304(A152950(n+1))-A051161(n²+10)`
-/

namespace A000402.P6237557040774783173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A152950 (n + 1)).toNat - A051161 (n ^ 2 + 10)

end

end A000402.P6237557040774783173

/-! ## A000402.P4872883239435287735

`char[A333485(n+1)]*A008304(A152950(n+1))`
-/

namespace A000402.P4872883239435287735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333485 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A008304 (A152950 (n + 1)).toNat

end

end A000402.P4872883239435287735

/-! ## A000402.P3991900010394879705

`A117158(n+1)-A242784(A052905(n+2)+1)`
-/

namespace A000402.P3991900010394879705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117158 (n + 1) - A242784 (A052905 (n + 2) + 1).toNat

end

end A000402.P3991900010394879705

/-! ## A000402.P2458322043551897662

`A008304(A152950(n+1))%A222012(n)`
-/

namespace A000402.P2458322043551897662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008304 (A152950 (n + 1)).toNat) (A222012 n)

end

end A000402.P2458322043551897662

/-!
# A000404: Numbers that are the sum of 2 nonzero squares.

The programs for A000404, the canonical program `A000404.P2881668745635022014` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000404 has offset 1).

The definition of A000404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000404.P1111531075737539881

`sqrt(A135784(n+1))`
-/

namespace A000404.P1111531075737539881
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135784 (n + 1) : ℝ)

end

end A000404.P1111531075737539881

namespace A000404

/-- `sqrt(A135784(n+1))` -/
def P1111531075737539881.Spec : Prop :=
  ∀ n, P1111531075737539881.a n = (A000404 (n + 1) : ℝ)

end A000404

/-! ## A000404.P4809925816610956624

`A166265(n+1)-1`
-/

namespace A000404.P4809925816610956624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1) - 1

end

end A000404.P4809925816610956624

namespace A000404

/-- `A166265(n+1)-1` -/
def P4809925816610956624.Spec : Prop :=
  ∀ n, P4809925816610956624.a n = A000404 (n + 1)

end A000404

/-! ## A000404.P4855662836736232287

`A339273(n+1)/4`
-/

namespace A000404.P4855662836736232287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339273 (n + 1) : ℚ) / 4

end

end A000404.P4855662836736232287

namespace A000404

/-- `A339273(n+1)/4` -/
def P4855662836736232287.Spec : Prop :=
  ∀ n, P4855662836736232287.a n = (A000404 (n + 1) : ℚ)

end A000404

/-! ## A000404.P5111264186597901139

`sqrt(sqrt(A135786(n+1)))`
-/

namespace A000404.P5111264186597901139
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A135786 (n + 1) : ℝ))

end

end A000404.P5111264186597901139

namespace A000404

/-- `sqrt(sqrt(A135786(n+1)))` -/
def P5111264186597901139.Spec : Prop :=
  ∀ n, P5111264186597901139.a n = (A000404 (n + 1) : ℝ)

end A000404

/-! ## A000404.P3449514620465444193

`A135787(n+1)/A135786(n+1)`
-/

namespace A000404.P3449514620465444193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135787 (n + 1) : ℚ) / (A135786 (n + 1) : ℚ)

end

end A000404.P3449514620465444193

namespace A000404

/-- `A135787(n+1)/A135786(n+1)` -/
def P3449514620465444193.Spec : Prop :=
  ∀ n, P3449514620465444193.a n = (A000404 (n + 1) : ℚ)

end A000404

/-! ## A000404.P5536664584242242376

`A135788(n+1)/A135787(n+1)`
-/

namespace A000404.P5536664584242242376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135788 (n + 1) : ℚ) / (A135787 (n + 1) : ℚ)

end

end A000404.P5536664584242242376

namespace A000404

/-- `A135788(n+1)/A135787(n+1)` -/
def P5536664584242242376.Spec : Prop :=
  ∀ n, P5536664584242242376.a n = (A000404 (n + 1) : ℚ)

end A000404

/-! ## A000404.P17235654666607397649

`A135787(n+1)%A166265(n+1)`
-/

namespace A000404.P17235654666607397649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135787 (n + 1)) (A166265 (n + 1))

end

end A000404.P17235654666607397649

namespace A000404

/-- `A135787(n+1)%A166265(n+1)` -/
def P17235654666607397649.Spec : Prop :=
  ∀ n, P17235654666607397649.a n = A000404 (n + 1)

end A000404

/-! ## A000404.P2881668745635022014

`∪[A000415(n+1), A004431(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A000404

/-- `∪[A000415(n+1), A004431(n+1)]` -/
def P2881668745635022014.Spec : Prop :=
  ∀ n, (P2881668745635022014.a n : ℤ) = A000404 (n + 1)

theorem P2881668745635022014.correct : P2881668745635022014.Spec := by
  intro n
  simp only [A000404, Nat.add_sub_cancel]

end A000404

/-! ## A000404.P18060805303154970490

`∪[A004431(n+1), A025284(n+1)]`
-/

namespace A000404.P18060805303154970490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P18060805303154970490

namespace A000404

/-- `∪[A004431(n+1), A025284(n+1)]` -/
def P18060805303154970490.Spec : Prop :=
  ∀ n, (P18060805303154970490.a n : ℤ) = A000404 (n + 1)

end A000404

/-! ## A000404.P9696883328373807522

`∪[A007692(n+1), A025284(n+1)]`
-/

namespace A000404.P9696883328373807522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P9696883328373807522

namespace A000404

/-- `∪[A007692(n+1), A025284(n+1)]` -/
def P9696883328373807522.Spec : Prop :=
  ∀ n, (P9696883328373807522.a n : ℤ) = A000404 (n + 1)

end A000404

/-! ## A000404.P8825446955635834393

`∪[A004431(n+1), A050804(n+1)]`
-/

namespace A000404.P8825446955635834393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P8825446955635834393

namespace A000404

/-- `∪[A004431(n+1), A050804(n+1)]` -/
def P8825446955635834393.Spec : Prop :=
  ∀ n, (P8825446955635834393.a n : ℤ) = A000404 (n + 1)

end A000404

/-! ## A000404.P11431280427217100959

`∪[A000415(n+1), A085989(n+1)]`
-/

namespace A000404.P11431280427217100959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P11431280427217100959

namespace A000404

/-- `∪[A000415(n+1), A085989(n+1)]` -/
def P11431280427217100959.Spec : Prop :=
  ∀ n, (P11431280427217100959.a n : ℤ) = A000404 (n + 1)

end A000404

/-! ## A000404.P6705971147300910208

`∪[A003814(n+1), A085989(n+1)]`
-/

namespace A000404.P6705971147300910208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P6705971147300910208

namespace A000404

/-- `∪[A003814(n+1), A085989(n+1)]` -/
def P6705971147300910208.Spec : Prop :=
  ∀ n, (P6705971147300910208.a n : ℤ) = A000404 (n + 1)

end A000404

/-! ## A000404.P2872124537229617123

`∪[A000415(n+1), A097268(n+1)]`
-/

namespace A000404.P2872124537229617123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P2872124537229617123

namespace A000404

/-- `∪[A000415(n+1), A097268(n+1)]` -/
def P2872124537229617123.Spec : Prop :=
  ∀ n, (P2872124537229617123.a n : ℤ) = A000404 (n + 1)

end A000404

/-! ## A000404.P8486780790717371857

`∪[A004431(n+1), A094147(n+1)]`
-/

namespace A000404.P8486780790717371857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P8486780790717371857

namespace A000404

/-- `∪[A004431(n+1), A094147(n+1)]` -/
def P8486780790717371857.Spec : Prop :=
  ∀ n, (P8486780790717371857.a n : ℤ) = A000404 (n + 1)

end A000404

/-! ## A000404.P11876122087431701890

`∪[A004431(n+1), A100829(n+1)]`
-/

namespace A000404.P11876122087431701890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P11876122087431701890

namespace A000404

/-- `∪[A004431(n+1), A100829(n+1)]` -/
def P11876122087431701890.Spec : Prop :=
  ∀ n, (P11876122087431701890.a n : ℤ) = A000404 (n + 1)

end A000404

/-! ## A000404.P5495299829124464070

`∪[A000415(n+1), A118882(n+1)]`
-/

namespace A000404.P5495299829124464070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P5495299829124464070

namespace A000404

/-- `∪[A000415(n+1), A118882(n+1)]` -/
def P5495299829124464070.Spec : Prop :=
  ∀ n, (P5495299829124464070.a n : ℤ) = A000404 (n + 1)

end A000404

/-! ## A000404.P14797128551250125825

`∪[A134422(n+1), A000415(n+1)]`
-/

namespace A000404.P14797128551250125825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P14797128551250125825

namespace A000404

/-- `∪[A134422(n+1), A000415(n+1)]` -/
def P14797128551250125825.Spec : Prop :=
  ∀ n, (P14797128551250125825.a n : ℤ) = A000404 (n + 1)

end A000404

/-! ## A000404.P4562350387471755537

`∪[A097268(n+1), A097269(n+1)]`
-/

namespace A000404.P4562350387471755537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P4562350387471755537

namespace A000404

/-- `∪[A097268(n+1), A097269(n+1)]` -/
def P4562350387471755537.Spec : Prop :=
  ∀ n, (P4562350387471755537.a n : ℤ) = A000404 (n + 1)

end A000404

/-! ## A000404.P4690610407990764778

`∪[A098365(n+1), A100829(n+1)]`
-/

namespace A000404.P4690610407990764778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P4690610407990764778

namespace A000404

/-- `∪[A098365(n+1), A100829(n+1)]` -/
def P4690610407990764778.Spec : Prop :=
  ∀ n, (P4690610407990764778.a n : ℤ) = A000404 (n + 1)

end A000404

/-!
# A000405: Number of 6-level labeled rooted trees with n leaves.

The programs for A000405, there is no canonical definition to state claims against.
-/

/-! ## A000405.P18201528484599542223

`A144150(A055999(n+3))`
-/

namespace A000405.P18201528484599542223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (A055999 (n + 3)).toNat

end

end A000405.P18201528484599542223

/-! ## A000405.P9887837087657461686

`A144150(eq[4, A212551(n)])`
-/

namespace A000405.P9887837087657461686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000405.P9887837087657461686

/-! ## A000405.P10633632565927223760

`A144150(eq[5, A025581(n)])`
-/

namespace A000405.P10633632565927223760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000405.P10633632565927223760

/-! ## A000405.P2969223246247011632

`A144150(eq[11, A099375(n)])`
-/

namespace A000405.P2969223246247011632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000405.P2969223246247011632

/-! ## A000405.P13812855622641079049

`A144150(Δ[A023551(n+1)])`
-/

namespace A000405.P13812855622641079049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (f1 (n + 1) - f1 n).toNat

end

end A000405.P13812855622641079049

/-! ## A000405.P3464772924575772942

`A144150(Δ[A026054(n+3)])`
-/

namespace A000405.P3464772924575772942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (f1 (n + 1) - f1 n).toNat

end

end A000405.P3464772924575772942

/-! ## A000405.P9724885876180749989

`A144150(eq[6, A004736(n+1)])`
-/

namespace A000405.P9724885876180749989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000405.P9724885876180749989

/-! ## A000405.P16934274415711754169

`A144150(Δ[A055831(n+5)]-1)`
-/

namespace A000405.P16934274415711754169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (f1 (n + 1) - f1 n - 1).toNat

end

end A000405.P16934274415711754169

/-!
# A000406: Coefficients of iterated exponentials.

The programs for A000406, there is no canonical definition to state claims against.
-/

/-! ## A000406.P16726325500314729773

`A111933(eq[3, A219347(n)])`
-/

namespace A000406.P16726325500314729773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000406.P16726325500314729773

/-! ## A000406.P9145138931269525347

`A111933(eq[5, A193592(n)])`
-/

namespace A000406.P9145138931269525347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000406.P9145138931269525347

/-! ## A000406.P6091114310698399683

`A111933(A000124(n+6)-6)`
-/

namespace A000406.P6091114310698399683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (A000124 (n + 6) - 6).toNat

end

end A000406.P6091114310698399683

/-! ## A000406.P9685017497157081131

`A111933(Δ[Δ[A006504(n+1)]])`
-/

namespace A000406.P9685017497157081131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (f1 (n + 1) - f1 n).toNat

end

end A000406.P9685017497157081131

/-! ## A000406.P17291422849182373696

`A111933(eq[6, A200370(n+1)])`
-/

namespace A000406.P17291422849182373696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000406.P17291422849182373696

/-!
# A000407: a(n) = (2*n+1)! / n!.

The programs for A000407, the canonical program `A000407.P1109338673122301012` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000407 has offset 0).

The definition of A000407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000407.P1109338673122301012

`a(n-1)*(4*n+2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000407

/-- `a(n-1)*(4*n+2)` -/
def P1109338673122301012.Spec : Prop :=
  ∀ n, (P1109338673122301012.a n : ℤ) = A000407 n

theorem P1109338673122301012.correct : P1109338673122301012.Spec := by
  intro n
  simp only [A000407]

end A000407

/-! ## A000407.P13435951733255612727

`A081125(2*n+1)`
-/

namespace A000407.P13435951733255612727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081125 (2 * n + 1)

end

end A000407.P13435951733255612727

namespace A000407

/-- `A081125(2*n+1)` -/
def P13435951733255612727.Spec : Prop :=
  ∀ n, P13435951733255612727.a n = A000407 n

end A000407

/-! ## A000407.P1857810722294588694

`A087299(2*n+1)`
-/

namespace A000407.P1857810722294588694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087299 (2 * n + 1)

end

end A000407.P1857810722294588694

namespace A000407

/-- `A087299(2*n+1)` -/
def P1857810722294588694.Spec : Prop :=
  ∀ n, P1857810722294588694.a n = A000407 n

end A000407

/-! ## A000407.P11341583773388266093

`1/2*A001813(n+1)`
-/

namespace A000407.P11341583773388266093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A001813 (n + 1) : ℚ)

end

end A000407.P11341583773388266093

namespace A000407

/-- `1/2*A001813(n+1)` -/
def P11341583773388266093.Spec : Prop :=
  ∀ n, P11341583773388266093.a n = (A000407 n : ℚ)

end A000407

/-! ## A000407.P5225415790784284897

`(2*n+1)!/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000407.P5225415790784284897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A000407.P5225415790784284897

namespace A000407

/-- `(2*n+1)!/n!` -/
def P5225415790784284897.Spec : Prop :=
  ∀ n, P5225415790784284897.a n = (A000407 n : ℚ)

end A000407

/-! ## A000407.P7866127791861570708

`∏[4*n+2]/2`
-/

namespace A000407.P7866127791861570708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A000407.P7866127791861570708

namespace A000407

/-- `∏[4*n+2]/2` -/
def P7866127791861570708.Spec : Prop :=
  ∀ n, P7866127791861570708.a n = (A000407 n : ℚ)

end A000407

/-! ## A000407.P11354592125099664998

`lcm(2^n, ∏[Δ[n²]])`
-/

namespace A000407.P11354592125099664998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A000407.P11354592125099664998

namespace A000407

/-- `lcm(2^n, ∏[Δ[n²]])` -/
def P11354592125099664998.Spec : Prop :=
  ∀ n, (P11354592125099664998.a n : ℤ) = A000407 n

end A000407

/-! ## A000407.P12701119221114998018

`∏[a(n-1)+4]` with `a(0)=1, a(1)=6`
-/

namespace A000407.P12701119221114998018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000407.P12701119221114998018

namespace A000407

/-- `∏[a(n-1)+4]` -/
def P12701119221114998018.Spec : Prop :=
  ∀ n, (P12701119221114998018.a n : ℤ) = A000407 n

end A000407

/-! ## A000407.P10008306723217264760

`∏[record[xor(3, n+1)]-1]`
-/

namespace A000407.P10008306723217264760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000407.P10008306723217264760

namespace A000407

/-- `∏[record[xor(3, n+1)]-1]` -/
def P10008306723217264760.Spec : Prop :=
  ∀ n, P10008306723217264760.a n = A000407 n

end A000407

/-! ## A000407.P9224372655010804471

`∏[ceil(cosh(sin(n)))+4*n]`
-/

namespace A000407.P9224372655010804471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ + (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000407.P9224372655010804471

namespace A000407

/-- `∏[ceil(cosh(sin(n)))+4*n]` -/
def P9224372655010804471.Spec : Prop :=
  ∀ n, P9224372655010804471.a n = A000407 n

end A000407

/-!
# A000408: Numbers that are the sum of three nonzero squares.

The programs for A000408, there is no canonical definition to state claims against.
-/

/-! ## A000408.P633651378202479982

`A144020(n+1)-1`
-/

namespace A000408.P633651378202479982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144020 (n + 1) - 1

end

end A000408.P633651378202479982

/-! ## A000408.P3044350125723375520

`comp[A004214(n+1)-1]+1`
-/

namespace A000408.P3044350125723375520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A000408.P3044350125723375520

/-! ## A000408.P11980173449866106880

`∪[A004432(n+1), A154777(n+1)]`
-/

namespace A000408.P11980173449866106880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000408.P11980173449866106880

/-! ## A000408.P14787199574597906858

`∪[A166265(n+1), A302359(n+1)]`
-/

namespace A000408.P14787199574597906858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000408.P14787199574597906858

/-! ## A000408.P13270036070411235282

`∪[A223731(n+1), A302359(n+1)]`
-/

namespace A000408.P13270036070411235282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000408.P13270036070411235282

/-! ## A000408.P1737275123839336123

`lt[0, A025427(n)]`
-/

namespace A000408.P1737275123839336123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000408.P1737275123839336123

/-! ## A000408.P10854471315332357603

`lt[0, A037215(n)]`
-/

namespace A000408.P10854471315332357603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000408.P10854471315332357603

/-! ## A000408.P9320106254086197379

`lt[0, A063691(n)]`
-/

namespace A000408.P9320106254086197379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000408.P9320106254086197379

/-! ## A000408.P367147064848371012

`lt[0, A347802(n)]`
-/

namespace A000408.P367147064848371012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000408.P367147064848371012

/-! ## A000408.P8239533654461481577

`lt[A000161(n), A000164(n)]`
-/

namespace A000408.P8239533654461481577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A000408.P8239533654461481577

/-! ## A000408.P7502895809440587168

`eq[1, A002828(A025427(n)²)]`
-/

namespace A000408.P7502895809440587168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A025427 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000408.P7502895809440587168

/-! ## A000408.P15047997477767382956

`eq[1, A057427(A025427(n)²)]`
-/

namespace A000408.P15047997477767382956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A025427 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000408.P15047997477767382956

/-! ## A000408.P17709140703289372722

`eq[1, A158388(A025427(n)²)]`
-/

namespace A000408.P17709140703289372722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A025427 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000408.P17709140703289372722

/-! ## A000408.P5827353497348145125

`eq[1, A019430(2*A025427(n))]`
-/

namespace A000408.P5827353497348145125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (2 * A025427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000408.P5827353497348145125

/-! ## A000408.P7087842623901875231

`eq[1, A019431(2*A025427(n))]`
-/

namespace A000408.P7087842623901875231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (2 * A025427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000408.P7087842623901875231

/-! ## A000408.P12691152039750497571

`eq[2, A040001(2*A063691(n))]`
-/

namespace A000408.P12691152039750497571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * A063691 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000408.P12691152039750497571

/-! ## A000408.P15806000992094301446

`eq[1, A014577(a(A063691(n)))]` with `a(0)=2`
-/

namespace A000408.P15806000992094301446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A014577 (f2 (A063691 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000408.P15806000992094301446

/-! ## A000408.P14266641712013702908

`eq[1, A000010(a(A063691(n)))]` with `a(0)=3`
-/

namespace A000408.P14266641712013702908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A063691 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000408.P14266641712013702908

/-! ## A000408.P6933442326556712112

`eq[A000038(n)², A000038(A025427(n))]`
-/

namespace A000408.P6933442326556712112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000408.P6933442326556712112

/-! ## A000408.P16582699905259607871

`eq[A000038(n)², A000038(A063691(n))]`
-/

namespace A000408.P16582699905259607871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A063691 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000408.P16582699905259607871

/-!
# A000409: Singular n X n (0,1)-matrices: the number of n X n (0,1)-matrices having distinct, nonzero ordered rows, but having at least two equal columns or at least one zero column.

The programs for A000409, there is no canonical definition to state claims against.
-/

/-! ## A000409.P4807134359468710620

`C(2^(n+2)-1, n+2)-A094000(n+2)`
-/

namespace A000409.P4807134359468710620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((2 ^ (n + 2) : ℤ) - 1).toNat (n + 2) : ℤ) - A094000 (n + 2)

end

end A000409.P4807134359468710620

/-! ## A000409.P7594474610314599815

`A000410(n+2)-A116527(n+2)`
-/

namespace A000409.P7594474610314599815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000410 (n + 2) - A116527 (n + 2)

end

end A000409.P7594474610314599815

/-! ## A000409.P848762510842692299

`Δ[A173760(n+1)]-A116527(n+2)`
-/

namespace A000409.P848762510842692299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A116527 (n + 2)

end

end A000409.P848762510842692299

/-!
# A000410: Number of singular n X n rational (0,1)-matrices.

The programs for A000410, there is no canonical definition to state claims against.
-/

/-! ## A000410.P13320660254294463179

`Δ[A173760(round(acot(n)+n))]`
-/

namespace A000410.P13320660254294463179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173760 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000410.P13320660254294463179

/-! ## A000410.P16485056921305034258

`Δ[A173760(round(sqrt(n²+1)))]`
-/

namespace A000410.P16485056921305034258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173760 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000410.P16485056921305034258

/-! ## A000410.P5682399422442190862

`abs(Δ[A173760(A028310(n))])`
-/

namespace A000410.P5682399422442190862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173760 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000410.P5682399422442190862

/-! ## A000410.P6022389368624848093

`A173760(n+1)-A173760(round(acot(n)+n))`
-/

namespace A000410.P6022389368624848093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173760 (n + 1) - A173760 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A000410.P6022389368624848093

/-!
# A000411: Generalized tangent numbers d(6,n).

The programs for A000411, there is no canonical definition to state claims against.
-/

/-! ## A000411.P16559773698073052879

`A001587(Δ[n²])`
-/

namespace A000411.P16559773698073052879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001587 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000411.P16559773698073052879

/-! ## A000411.P13186001368008051886

`A001587(2*n+1)%A000191(2*n+1)`
-/

namespace A000411.P13186001368008051886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001587 (2 * n + 1)) (A000191 (2 * n + 1))

end

end A000411.P13186001368008051886

/-!
# A000412: Number of bipartite partitions of n white objects and 3 black ones.

The programs for A000412, there is no canonical definition to state claims against.
-/

/-! ## A000412.P13220784468392092522

`A000098(n)+A000070(n)+A014153(n)`
-/

namespace A000412.P13220784468392092522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000098 n + A000070 n + A014153 n

end

end A000412.P13220784468392092522

/-! ## A000412.P8491943185915416180

`A031126(n)+1`
-/

namespace A000412.P8491943185915416180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031126 n + 1

end

end A000412.P8491943185915416180

/-! ## A000412.P14730821400523567354

`A082775(n+2)+A000098(n)`
-/

namespace A000412.P14730821400523567354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082775 (n + 2) + A000098 n

end

end A000412.P14730821400523567354

/-! ## A000412.P1558391494311598350

`∑[A000041(n)]+A014153(n)+A000098(n)`
-/

namespace A000412.P1558391494311598350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A014153 n + A000098 n)

end

end A000412.P1558391494311598350

/-! ## A000412.P3720238171204761171

`A014153(n+1)+A000098(n)-A000041(n+1)`
-/

namespace A000412.P3720238171204761171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 (n + 1) + (A000098 n - A000041 (n + 1))

end

end A000412.P3720238171204761171

/-! ## A000412.P2268811310238922889

`A054225(∑[n+4]+2)`
-/

namespace A000412.P2268811310238922889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000412.P2268811310238922889

/-! ## A000412.P2855165165807090926

`2-(A340785(A307855(n))-A031126(n))`
-/

namespace A000412.P2855165165807090926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A340785 (A307855 n).toNat - A031126 n)

end

end A000412.P2855165165807090926

/-!
# A000413: Let A(n) = #{(i,j,k): i^2 + j^2 + k^2 <= n}, V(n) = (4/3)*Pi*n^(3/2), P(n) = A(n) - V(n); A000092 gives values of n where |P(n)| sets a new record; sequence gives A(A000092(n)).

The programs for A000413, there is no canonical definition to state claims against.
-/

/-! ## A000413.P15342091019850432290

`A117609(lt[A237126(2*(n+1)), 13])`
-/

namespace A000413.P15342091019850432290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237126 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117609 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A000413.P15342091019850432290

/-! ## A000413.P1647736428563548580

`A117609(eq[A314994(n), A315087(n)])`
-/

namespace A000413.P1647736428563548580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314994 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117609 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A000413.P1647736428563548580

/-!
# A000414: Numbers that are the sum of 4 nonzero squares.

The programs for A000414, there is no canonical definition to state claims against.
-/

/-! ## A000414.P7286112074769545449

`comp[A000534(n+1)]`
-/

namespace A000414.P7286112074769545449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A000414.P7286112074769545449

/-! ## A000414.P3950104031943198951

`lt[0, A025428(n)]`
-/

namespace A000414.P3950104031943198951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000414.P3950104031943198951

/-! ## A000414.P12523780104745601785

`lt[0, A037216(n)]`
-/

namespace A000414.P12523780104745601785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000414.P12523780104745601785

/-! ## A000414.P5363271510084075511

`lt[0, A063730(n)]`
-/

namespace A000414.P5363271510084075511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000414.P5363271510084075511

/-! ## A000414.P18184949547954784243

`lt[0, A307510(n)]`
-/

namespace A000414.P18184949547954784243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307510 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000414.P18184949547954784243

/-! ## A000414.P5763240297258621580

`lt[0, A347803(n)]`
-/

namespace A000414.P5763240297258621580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000414.P5763240297258621580

/-! ## A000414.P469953284033280702

`lt[A000164(n), A002635(n)]`
-/

namespace A000414.P469953284033280702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A000414.P469953284033280702

/-! ## A000414.P2952344191150888019

`eq[2, A000005(a(A025428(n)))]` with `a(0)=4`
-/

namespace A000414.P2952344191150888019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A025428 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000414.P2952344191150888019

/-! ## A000414.P9742836472562582291

`eq[1, A168377(a(A025428(n)))²]` with `a(0)=4`
-/

namespace A000414.P9742836472562582291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A168377 (f2 (A025428 n).toNat).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000414.P9742836472562582291

/-! ## A000414.P12040992449641764195

`eq[1, gcd(A000040(n+1), A025428(n))]`
-/

namespace A000414.P12040992449641764195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A025428 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000414.P12040992449641764195

/-! ## A000414.P9538851044356859958

`eq[2, A000122(A025428(n)²)]`
-/

namespace A000414.P9538851044356859958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A025428 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000414.P9538851044356859958

/-!
# A000415: Numbers that are the sum of 2 but no fewer nonzero squares.

The programs for A000415, the canonical program `A000415.P13707848856828247433` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000415 has offset 1).

The definition of A000415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000415.P7000886895035277585

`eq[2, a(A262678(n))+1]` with `a(0)=0`
-/

namespace A000415.P7000886895035277585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (A262678 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000415.P7000886895035277585

namespace A000415

/-- `eq[2, a(A262678(n))+1]` -/
def P7000886895035277585.Spec : Prop :=
  ∀ n, (P7000886895035277585.a n : ℤ) = A000415 (n + 1)

end A000415

/-! ## A000415.P5150751939991804394

`eq[1, A262678(A262678(n)+1)]`
-/

namespace A000415.P5150751939991804394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262678 (A262678 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000415.P5150751939991804394

namespace A000415

/-- `eq[1, A262678(A262678(n)+1)]` -/
def P5150751939991804394.Spec : Prop :=
  ∀ n, (P5150751939991804394.a n : ℤ) = A000415 (n + 1)

end A000415

/-! ## A000415.P4098605316579059246

`eq[1, A002828(A262678(n))]`
-/

namespace A000415.P4098605316579059246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A262678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000415.P4098605316579059246

namespace A000415

/-- `eq[1, A002828(A262678(n))]` -/
def P4098605316579059246.Spec : Prop :=
  ∀ n, (P4098605316579059246.a n : ℤ) = A000415 (n + 1)

end A000415

/-! ## A000415.P7030597416313093516

`filter[A000404(n+1), A049240(#)]`
-/

namespace A000415.P7030597416313093516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A000415.P7030597416313093516

namespace A000415

/-- `filter[A000404(n+1), A049240(#)]` -/
def P7030597416313093516.Spec : Prop :=
  ∀ n, P7030597416313093516.a n = A000415 (n + 1)

end A000415

/-! ## A000415.P13707848856828247433

`filter[A001481(n+2), A049240(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A000415

/-- `filter[A001481(n+2), A049240(#)]` -/
def P13707848856828247433.Spec : Prop :=
  ∀ n, P13707848856828247433.a n = A000415 (n + 1)

theorem P13707848856828247433.correct : P13707848856828247433.Spec := by
  intro n
  simp only [A000415, Nat.add_sub_cancel]

end A000415

/-! ## A000415.P10402118457399745886

`eq[2, A002828(n)]`
-/

namespace A000415.P10402118457399745886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000415.P10402118457399745886

namespace A000415

/-- `eq[2, A002828(n)]` -/
def P10402118457399745886.Spec : Prop :=
  ∀ n, (P10402118457399745886.a n : ℤ) = A000415 (n + 1)

end A000415

/-! ## A000415.P16771159573773514760

`filter[A092206(n+1), A229062(#)]`
-/

namespace A000415.P16771159573773514760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A000415.P16771159573773514760

namespace A000415

/-- `filter[A092206(n+1), A229062(#)]` -/
def P16771159573773514760.Spec : Prop :=
  ∀ n, P16771159573773514760.a n = A000415 (n + 1)

end A000415

/-! ## A000415.P6778398193852828320

`∩[A000404(n+1), A092206(n+1)]`
-/

namespace A000415.P6778398193852828320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000415.P6778398193852828320

namespace A000415

/-- `∩[A000404(n+1), A092206(n+1)]` -/
def P6778398193852828320.Spec : Prop :=
  ∀ n, (P6778398193852828320.a n : ℤ) = A000415 (n + 1)

end A000415

/-! ## A000415.P15719058698554244260

`∩[A001481(n+1), A092206(n+1)]`
-/

namespace A000415.P15719058698554244260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000415.P15719058698554244260

namespace A000415

/-- `∩[A001481(n+1), A092206(n+1)]` -/
def P15719058698554244260.Spec : Prop :=
  ∀ n, (P15719058698554244260.a n : ℤ) = A000415 (n + 1)

end A000415

/-! ## A000415.P10361214112556702349

`∩[A005792(n+1), A092206(n+1)]`
-/

namespace A000415.P10361214112556702349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000415.P10361214112556702349

namespace A000415

/-- `∩[A005792(n+1), A092206(n+1)]` -/
def P10361214112556702349.Spec : Prop :=
  ∀ n, (P10361214112556702349.a n : ℤ) = A000415 (n + 1)

end A000415

/-! ## A000415.P17907131726666943681

`filter[A000037(n+1), A229062(#)]`
-/

namespace A000415.P17907131726666943681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A000415.P17907131726666943681

namespace A000415

/-- `filter[A000037(n+1), A229062(#)]` -/
def P17907131726666943681.Spec : Prop :=
  ∀ n, P17907131726666943681.a n = A000415 (n + 1)

end A000415

/-! ## A000415.P13938880850993087154

`∩[A000037(n+1), A000404(n+1)]`
-/

namespace A000415.P13938880850993087154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000415.P13938880850993087154

namespace A000415

/-- `∩[A000037(n+1), A000404(n+1)]` -/
def P13938880850993087154.Spec : Prop :=
  ∀ n, (P13938880850993087154.a n : ℤ) = A000415 (n + 1)

end A000415

/-! ## A000415.P16168426981224255269

`∩[A000037(n+1), A001481(n+1)]`
-/

namespace A000415.P16168426981224255269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000415.P16168426981224255269

namespace A000415

/-- `∩[A000037(n+1), A001481(n+1)]` -/
def P16168426981224255269.Spec : Prop :=
  ∀ n, (P16168426981224255269.a n : ℤ) = A000415 (n + 1)

end A000415

/-! ## A000415.P3625330226374032533

`filter[A164514(n+2), A229062(#)]`
-/

namespace A000415.P3625330226374032533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A000415.P3625330226374032533

namespace A000415

/-- `filter[A164514(n+2), A229062(#)]` -/
def P3625330226374032533.Spec : Prop :=
  ∀ n, P3625330226374032533.a n = A000415 (n + 1)

end A000415

/-! ## A000415.P7825148656958231625

`∩[A000404(n+1), A164514(n+1)]`
-/

namespace A000415.P7825148656958231625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000415.P7825148656958231625

namespace A000415

/-- `∩[A000404(n+1), A164514(n+1)]` -/
def P7825148656958231625.Spec : Prop :=
  ∀ n, (P7825148656958231625.a n : ℤ) = A000415 (n + 1)

end A000415

/-! ## A000415.P1336015764969488139

`eq[2, n-A255131(n)]`
-/

namespace A000415.P1336015764969488139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A255131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000415.P1336015764969488139

namespace A000415

/-- `eq[2, n-A255131(n)]` -/
def P1336015764969488139.Spec : Prop :=
  ∀ n, (P1336015764969488139.a n : ℤ) = A000415 (n + 1)

end A000415

/-! ## A000415.P12092697118773420356

`eq[char[n²], A070176(n)]`
-/

namespace A000415.P12092697118773420356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A000415.P12092697118773420356

namespace A000415

/-- `eq[char[n²], A070176(n)]` -/
def P12092697118773420356.Spec : Prop :=
  ∀ n, (P12092697118773420356.a n : ℤ) = A000415 (n + 1)

end A000415

/-! ## A000415.P16864278206464598364

`lt[char[n²], A229062(n)]`
-/

namespace A000415.P16864278206464598364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A000415.P16864278206464598364

namespace A000415

/-- `lt[char[n²], A229062(n)]` -/
def P16864278206464598364.Spec : Prop :=
  ∀ n, (P16864278206464598364.a n : ℤ) = A000415 (n + 1)

end A000415

/-! ## A000415.P807864969753259760

`eq[2, A286368(n+1)]+1`
-/

namespace A000415.P807864969753259760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000415.P807864969753259760

namespace A000415

/-- `eq[2, A286368(n+1)]+1` -/
def P807864969753259760.Spec : Prop :=
  ∀ n, (P807864969753259760.a n : ℤ) = A000415 (n + 1)

end A000415

/-! ## A000415.P3562498023292103527

`eq[2, A362068(n+1)]+1`
-/

namespace A000415.P3562498023292103527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000415.P3562498023292103527

namespace A000415

/-- `eq[2, A362068(n+1)]+1` -/
def P3562498023292103527.Spec : Prop :=
  ∀ n, (P3562498023292103527.a n : ℤ) = A000415 (n + 1)

end A000415

/-!
# A000416: Number of 6-dimensional partitions of n.

The programs for A000416, there is no canonical definition to state claims against.
-/

/-! ## A000416.P285128260080288286

`A000417(n+1)-A007329(n+1)`
-/

namespace A000416.P285128260080288286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000417 (n + 1) - A007329 (n + 1)

end

end A000416.P285128260080288286

/-! ## A000416.P10481456276893794324

`A293551(A055999(n+5)-1)-A007329(n+1)`
-/

namespace A000416.P10481456276893794324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A055999 (n + 5) - 1).toNat - A007329 (n + 1)

end

end A000416.P10481456276893794324

/-! ## A000416.P13100776745095470233

`A293551(A052905(n+5)-2)-A007329(n+1)`
-/

namespace A000416.P13100776745095470233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A052905 (n + 5) - 2).toNat - A007329 (n + 1)

end

end A000416.P13100776745095470233

/-! ## A000416.P10603200027206675404

`A293551(A000124(n+8)-8)-A007329(n+1)`
-/

namespace A000416.P10603200027206675404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A000124 (n + 8) - 8).toNat - A007329 (n + 1)

end

end A000416.P10603200027206675404

/-! ## A000416.P831729652307387363

`A293551(A000217(n+7)+n+1)-A007329(n+1)`
-/

namespace A000416.P831729652307387363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A000217 (n + 7) + (n + 1 : ℤ)).toNat - A007329 (n + 1)

end

end A000416.P831729652307387363

/-!
# A000417: Euler transform of A000389.

The programs for A000417, there is no canonical definition to state claims against.
-/

/-! ## A000417.P13336595023355140852

`A293551(A055999(n+5)-1)`
-/

namespace A000417.P13336595023355140852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A055999 (n + 5) - 1).toNat

end

end A000417.P13336595023355140852

/-! ## A000417.P15975102596309665480

`A293551(A052905(n+5)-2)`
-/

namespace A000417.P15975102596309665480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A052905 (n + 5) - 2).toNat

end

end A000417.P15975102596309665480

/-! ## A000417.P12340896108994182701

`A293551(A000124(n+8)-8)`
-/

namespace A000417.P12340896108994182701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A000124 (n + 8) - 8).toNat

end

end A000417.P12340896108994182701

/-! ## A000417.P4548047860737316806

`A293551(A000217(n+7)+n+1)`
-/

namespace A000417.P4548047860737316806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A000417.P4548047860737316806

/-! ## A000417.P8611423401948800266

`A293551(A000326(n+6)-A014206(n+4))`
-/

namespace A000417.P8611423401948800266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A000326 (n + 6) - A014206 (n + 4)).toNat

end

end A000417.P8611423401948800266

/-!
# A000418: Number of n-node rooted trees of height 7.

The programs for A000418, there is no canonical definition to state claims against.
-/

/-! ## A000418.P6387909339933552748

`A034824(n+1)-A034823(n+1)`
-/

namespace A000418.P6387909339933552748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034824 (n + 1) - A034823 (n + 1)

end

end A000418.P6387909339933552748

/-! ## A000418.P4541088056486182057

`A034824(n+1)-(A001385(n+1)+A000393(n+1))`
-/

namespace A000418.P4541088056486182057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034824 (n + 1) - (A001385 (n + 1) + A000393 (n + 1))

end

end A000418.P4541088056486182057

/-! ## A000418.P8943112863100192304

`A034825(n+1)-(A034823(n+1)+A000429(n+1))`
-/

namespace A000418.P8943112863100192304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034825 (n + 1) - (A034823 (n + 1) + A000429 (n + 1))

end

end A000418.P8943112863100192304

/-! ## A000418.P6343300626176473932

`A034824(n+1)%(A034823(n+1)%A036624(n+6))`
-/

namespace A000418.P6343300626176473932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034824 (n + 1)) (Int.tmod (A034823 (n + 1)) (A036624 (n + 6)))

end

end A000418.P6343300626176473932

/-! ## A000418.P6991299783434506005

`A222233(A036646(n+1))`
-/

namespace A000418.P6991299783434506005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A036646 (n + 1)).toNat

end

end A000418.P6991299783434506005

/-!
# A000419: Numbers that are the sum of 3 but no fewer nonzero squares.

The programs for A000419, there is no canonical definition to state claims against.
-/

/-! ## A000419.P10291953652551349876

`eq[3, A002828(n)]`
-/

namespace A000419.P10291953652551349876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000419.P10291953652551349876

/-! ## A000419.P3174728303000232505

`eq[3, a(A262678(n))+1]` with `a(0)=0`
-/

namespace A000419.P3174728303000232505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (A262678 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000419.P3174728303000232505

/-! ## A000419.P13173028378320673296

`lt[A229062(n), A229062(A262678(n))]`
-/

namespace A000419.P13173028378320673296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (A262678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A000419.P13173028378320673296

/-! ## A000419.P251887319548293584

`∩[A000408(n+1), A022544(n+1)]`
-/

namespace A000419.P251887319548293584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000419.P251887319548293584

/-! ## A000419.P18329808784292875380

`∩[A022544(n+1), A267312(n+1)]`
-/

namespace A000419.P18329808784292875380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000419.P18329808784292875380

/-! ## A000419.P10088461255434883072

`∩[A022544(n+1), A214329(n+1)]`
-/

namespace A000419.P10088461255434883072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000419.P10088461255434883072

/-! ## A000419.P1511292519712727330

`∩[A000378(n+1), A022544(n+1)]`
-/

namespace A000419.P1511292519712727330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000419.P1511292519712727330

/-! ## A000419.P9686160973050507597

`eq[3, n-A255131(n)]`
-/

namespace A000419.P9686160973050507597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A255131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000419.P9686160973050507597

/-! ## A000419.P9434683455032098959

`eq[0, A286368(n+1)]+1`
-/

namespace A000419.P9434683455032098959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000419.P9434683455032098959

/-! ## A000419.P4657732671008400611

`eq[A000161(n), A064873(n)]`
-/

namespace A000419.P4657732671008400611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000419.P4657732671008400611

/-! ## A000419.P734263939516540009

`eq[A000925(n), A064873(n)]`
-/

namespace A000419.P734263939516540009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000419.P734263939516540009

/-! ## A000419.P12470312253184475967

`eq[A004018(n), A064873(n)]`
-/

namespace A000419.P12470312253184475967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000419.P12470312253184475967

/-! ## A000419.P18032934682482000993

`eq[A000161(n), A072401(n)]`
-/

namespace A000419.P18032934682482000993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000419.P18032934682482000993

/-! ## A000419.P18252739501326910366

`eq[A000925(n), A072401(n)]`
-/

namespace A000419.P18252739501326910366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000419.P18252739501326910366

/-! ## A000419.P11490064962796651001

`eq[A004018(n), A072401(n)]`
-/

namespace A000419.P11490064962796651001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000419.P11490064962796651001

/-! ## A000419.P13924573950941829103

`eq[A064873(n), A104794(n)]`
-/

namespace A000419.P13924573950941829103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000419.P13924573950941829103

/-! ## A000419.P11016962274397609193

`eq[A072401(n), A104794(n)]`
-/

namespace A000419.P11016962274397609193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000419.P11016962274397609193

/-! ## A000419.P15118263494514389737

`eq[A064873(n), A133573(n)]`
-/

namespace A000419.P15118263494514389737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000419.P15118263494514389737

/-! ## A000419.P11063469286551645385

`eq[A064873(n), A133574(n)]`
-/

namespace A000419.P11063469286551645385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000419.P11063469286551645385

/-! ## A000419.P14528812363856893807

`eq[A072401(n), A133573(n)]`
-/

namespace A000419.P14528812363856893807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000419.P14528812363856893807

/-!
# A000420: Powers of 7: a(n) = 7^n.

The programs for A000420, the canonical program `A000420.P3695589171832359676` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000420 has offset 0).

The definition of A000420 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n` (program `A000420.P3695589171832359676`, by `A000420.P3695589171832359676.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000420.P3695589171832359676

`7^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000420

/-- `7^n` -/
def P3695589171832359676.Spec : Prop :=
  ∀ n, (P3695589171832359676.a n : ℤ) = A000420 n

theorem P3695589171832359676.correct : P3695589171832359676.Spec := by
  intro n
  simp only [A000420]

end A000420

/-!
# A000421: Number of isomorphism classes of connected 3-regular (trivalent, cubic) loopless multigraphs of order 2n.

The programs for A000421, there is no canonical definition to state claims against.
-/

/-! ## A000421.P2914056954346541707

`record[A328682(abs(A046691(n)))]`
-/

namespace A000421.P2914056954346541707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000421.P2914056954346541707

/-! ## A000421.P1994683180455034289

`record[A328682(A046691(n+1))]`
-/

namespace A000421.P1994683180455034289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A046691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000421.P1994683180455034289

/-! ## A000421.P17270589799985808717

`record[A328682(A027379(n)-1)]`
-/

namespace A000421.P17270589799985808717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000421.P17270589799985808717

/-! ## A000421.P15975548121670633915

`record[A328682(A055999(n)+2)]`
-/

namespace A000421.P15975548121670633915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A055999 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000421.P15975548121670633915

/-! ## A000421.P4282310712787774801

`record[A328682(eq[3, A025581(n)])]`
-/

namespace A000421.P4282310712787774801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000421.P4282310712787774801

/-!
# A000422: Concatenation of numbers from n down to 1.

The programs for A000422, there is no canonical definition to state claims against.
-/

/-! ## A000422.P17161297999829290141

`A397496(∑[n+1])`
-/

namespace A000422.P17161297999829290141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397496 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000422.P17161297999829290141

/-! ## A000422.P16218330359795691653

`A052246(n+1)/10`
-/

namespace A000422.P16218330359795691653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052246 (n + 1) : ℚ) / 10

end

end A000422.P16218330359795691653

/-! ## A000422.P15908048951991581325

`round(A052246(1-(n-2*n))/10)`
-/

namespace A000422.P15908048951991581325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A052246 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat : ℚ) / 10)

end

end A000422.P15908048951991581325

/-! ## A000422.P14180819358268566192

`A083453(n+1)+(n+1)^(n+1)`
-/

namespace A000422.P14180819358268566192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083453 (n + 1) + ((n + 1) ^ (n + 1) : ℤ)

end

end A000422.P14180819358268566192

/-! ## A000422.P1681609033279167767

`record[A052246(A324343(n))/10]`
-/

namespace A000422.P1681609033279167767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052246 (A324343 n).toNat : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000422.P1681609033279167767

/-! ## A000422.P17523652454673397153

`A019566(n+1)+A007908(n+1)`
-/

namespace A000422.P17523652454673397153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019566 (n + 1) + A007908 (n + 1)

end

end A000422.P17523652454673397153

/-! ## A000422.P17900224754340671903

`A019566(n+1)+∑[A078998(n+1)]`
-/

namespace A000422.P17900224754340671903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019566 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000422.P17900224754340671903

/-! ## A000422.P15124803351302023918

`A252043(A033061(n+1))+A019566(n+1)`
-/

namespace A000422.P15124803351302023918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (A033061 (n + 1)).toNat + A019566 (n + 1)

end

end A000422.P15124803351302023918

/-! ## A000422.P10675299661464782290

`A252043(A058183(n+1))+A019566(n+1)`
-/

namespace A000422.P10675299661464782290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (A058183 (n + 1)).toNat + A019566 (n + 1)

end

end A000422.P10675299661464782290

/-!
# A000423: a(n) is smallest number > a(n-1) of form a(i)*a(j), i < j < n.

The programs for A000423, there is no canonical definition to state claims against.
-/

/-! ## A000423.P6533104034236352039

`∪[A007335(n+1), A033845(n+1)]`
-/

namespace A000423.P6533104034236352039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000423.P6533104034236352039

/-! ## A000423.P4548449891803903492

`lcm(A010693(n), A187778(A028310(n)))`
-/

namespace A000423.P4548449891803903492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010693 n) (A187778 (A028310 n).toNat)

end

end A000423.P4548449891803903492

/-! ## A000423.P5105490356162630107

`A007694(A028310(n))*A157532(n+1)`
-/

namespace A000423.P5105490356162630107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (A028310 n).toNat * A157532 (n + 1)

end

end A000423.P5105490356162630107

/-! ## A000423.P13342305265194412750

`(3-A000007(n))*A007694(A028310(n))`
-/

namespace A000423.P13342305265194412750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000007 n) * A007694 (A028310 n).toNat

end

end A000423.P13342305265194412750

/-! ## A000423.P16834918518089746474

`A007694(A000038(n)+n)*A122553(n)`
-/

namespace A000423.P16834918518089746474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (A000038 n + (n : ℤ)).toNat * A122553 n

end

end A000423.P16834918518089746474

/-! ## A000423.P14321623102387597708

`A065642(a(n-1))` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A000423.P14321623102387597708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  A065642 (a (n - 1)).toNat

end

end A000423.P14321623102387597708

/-! ## A000423.P15660327555163660855

`record[A187831(A003586(n+1))]`
-/

namespace A000423.P15660327555163660855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187831 (A003586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000423.P15660327555163660855

/-! ## A000423.P12407798016950457812

`record[A187831(sqrt(A025620(n+1)))]`
-/

namespace A000423.P12407798016950457812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187831 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000423.P12407798016950457812

/-! ## A000423.P17132985598209573463

`record[A187831(A065119(n+1)/3)]`
-/

namespace A000423.P17132985598209573463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187831 (SequenceMachineLib.roundAway ((A065119 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000423.P17132985598209573463

/-!
# A000424: Differences of reciprocals of unity.

The programs for A000424, there is no canonical definition to state claims against.
-/

/-! ## A000424.P12219257175895965061

`A060237(n+2)`
-/

namespace A000424.P12219257175895965061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060237 (n + 2)

end

end A000424.P12219257175895965061

/-! ## A000424.P17744066150737349377

`A025527(n+2)²*record[A027447(n+2)]`
-/

namespace A000424.P17744066150737349377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025527 (n + 2) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000424.P17744066150737349377

/-! ## A000424.P16081716797924647360

`A008969(∑[n+2]+4)`
-/

namespace A000424.P16081716797924647360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A000424.P16081716797924647360

/-! ## A000424.P718579768895900706

`or(A000007(n), A008969(A167614(n+1)))`
-/

namespace A000424.P718579768895900706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A008969 (A167614 (n + 1)).toNat)

end

end A000424.P718579768895900706

/-! ## A000424.P14879557295100827083

`or(A000038(n), A008969(A167614(n+1)))`
-/

namespace A000424.P14879557295100827083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A008969 (A167614 (n + 1)).toNat)

end

end A000424.P14879557295100827083

/-!
# A000425: Coefficients of ménage hit polynomials.

The programs for A000425, there is no canonical definition to state claims against.
-/

/-! ## A000425.P17786933403154199614

`A156996(∑[n+1]+1)`
-/

namespace A000425.P17786933403154199614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000425.P17786933403154199614

/-! ## A000425.P12766433231113876957

`A058087(∑[n+2]-1)`
-/

namespace A000425.P12766433231113876957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A000425.P12766433231113876957

/-! ## A000425.P14691512951845547088

`2*(n+1)*A000271(n)`
-/

namespace A000425.P14691512951845547088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A000271 n

end

end A000425.P14691512951845547088

/-! ## A000425.P9811004293329782576

`2*(n+1)*∑[A000179(n)]`
-/

namespace A000425.P9811004293329782576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000425.P9811004293329782576

/-! ## A000425.P11992366860096516615

`2*(n+1)*A047922(∑[n]+n)`
-/

namespace A000425.P11992366860096516615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A047922 (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A000425.P11992366860096516615

/-! ## A000425.P17694888552918510080

`2*(n+1)*A058057(∑[n]+n)`
-/

namespace A000425.P17694888552918510080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A058057 (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A000425.P17694888552918510080

/-! ## A000425.P15791561908007363483

`A000271(n)+Δ[A000426(n+1)]`
-/

namespace A000425.P15791561908007363483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000271 n + (f1 (n + 1) - f1 n)

end

end A000425.P15791561908007363483

/-! ## A000425.P15007732769903342330

`2*(n+1)*A047922(A000096(n))`
-/

namespace A000425.P15007732769903342330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A047922 (A000096 n).toNat

end

end A000425.P15007732769903342330

/-! ## A000425.P4746341848064146624

`2*(n+1)*A156368(A000217(n))`
-/

namespace A000425.P4746341848064146624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A156368 (A000217 n).toNat

end

end A000425.P4746341848064146624

/-!
# A000426: Coefficients of ménage hit polynomials.

The programs for A000426, there is no canonical definition to state claims against.
-/

/-! ## A000426.P11324781950707519944

`A000033(n+1)/(n+1)`
-/

namespace A000426.P11324781950707519944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000033 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000426.P11324781950707519944

/-! ## A000426.P2558779465197247488

`A156368(∑[n]+1)`
-/

namespace A000426.P2558779465197247488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000426.P2558779465197247488

/-! ## A000426.P8703060779841191911

`A058057(A038722(A000217(n)+3))`
-/

namespace A000426.P8703060779841191911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (A038722 (A000217 n + 3).toNat).toNat

end

end A000426.P8703060779841191911

/-! ## A000426.P16989301032986474439

`A094314(∑[n+1]+2)/(n+1)`
-/

namespace A000426.P16989301032986474439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094314 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / (n + 1 : ℚ)

end

end A000426.P16989301032986474439

/-! ## A000426.P14453389630950558900

`Δ[A000222(n)]/A028310(n)`
-/

namespace A000426.P14453389630950558900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000222 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A028310 n : ℚ)

end

end A000426.P14453389630950558900

/-!
# A000427: Number of 7-dimensional partitions of n.

The programs for A000427, there is no canonical definition to state claims against.
-/

/-! ## A000427.P18141242279903787493

`A000428(n+1)-A007330(n+1)`
-/

namespace A000427.P18141242279903787493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000428 (n + 1) - A007330 (n + 1)

end

end A000427.P18141242279903787493

/-! ## A000427.P16012042023212747920

`A096751(A052905(n+6)-3)`
-/

namespace A000427.P16012042023212747920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (A052905 (n + 6) - 3).toNat

end

end A000427.P16012042023212747920

/-! ## A000427.P12326388730519770376

`A096751(A056115(n+4)+7)`
-/

namespace A000427.P12326388730519770376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (A056115 (n + 4) + 7).toNat

end

end A000427.P12326388730519770376

/-! ## A000427.P8814489905333082375

`A096751(A056126(n+1)+28)`
-/

namespace A000427.P8814489905333082375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (A056126 (n + 1) + 28).toNat

end

end A000427.P8814489905333082375

/-! ## A000427.P16857757104955541368

`A096751(eq[9, (A193592(n)+1)%A052938(n)])`
-/

namespace A000427.P16857757104955541368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193592 n + 1) (A052938 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000427.P16857757104955541368

/-!
# A000428: Euler transform of A000579.

The programs for A000428, there is no canonical definition to state claims against.
-/

/-! ## A000428.P2469085230055934860

`A293551(A055999(n+6)-2)`
-/

namespace A000428.P2469085230055934860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A055999 (n + 6) - 2).toNat

end

end A000428.P2469085230055934860

/-! ## A000428.P5561584200701281843

`A293551(A000124(n+9)-9)`
-/

namespace A000428.P5561584200701281843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A000124 (n + 9) - 9).toNat

end

end A000428.P5561584200701281843

/-! ## A000428.P5880171342752535496

`A293551(A000096(n+7)+n+2)`
-/

namespace A000428.P5880171342752535496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A000096 (n + 7) + (n + 2 : ℤ)).toNat

end

end A000428.P5880171342752535496

/-! ## A000428.P1900972456569503158

`A293551(A000217(n+8)+n+1)`
-/

namespace A000428.P1900972456569503158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A000428.P1900972456569503158

/-! ## A000428.P15705779851131533352

`A293551(A027468(n+9)%A014206(n+9))`
-/

namespace A000428.P15705779851131533352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (Int.tmod (A027468 (n + 9)) (A014206 (n + 9))).toNat

end

end A000428.P15705779851131533352

/-!
# A000429: Number of n-node rooted trees of height 8.

The programs for A000429, there is no canonical definition to state claims against.
-/

/-! ## A000429.P17685870919638223764

`A034825(n+1)-A034824(n+1)`
-/

namespace A000429.P17685870919638223764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034825 (n + 1) - A034824 (n + 1)

end

end A000429.P17685870919638223764

/-! ## A000429.P10588815005146506242

`A034825(n+1)-(A034823(n+1)+A000418(n+1))`
-/

namespace A000429.P10588815005146506242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034825 (n + 1) - (A034823 (n + 1) + A000418 (n + 1))

end

end A000429.P10588815005146506242

/-! ## A000429.P6309212775936791459

`(A034825(n+1)%A034824(n+1))%A036624(n+2)`
-/

namespace A000429.P6309212775936791459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A034825 (n + 1)) (A034824 (n + 1))) (A036624 (n + 2))

end

end A000429.P6309212775936791459

/-! ## A000429.P5718102985261478349

`A036647(A077168(n))`
-/

namespace A000429.P5718102985261478349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036647 (A077168 n).toNat

end

end A000429.P5718102985261478349

/-! ## A000429.P6324175691485697658

`A036647(A043319(n+1))`
-/

namespace A000429.P6324175691485697658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036647 (A043319 (n + 1)).toNat

end

end A000429.P6324175691485697658

/-!
# A000430: Primes and squares of primes.

The programs for A000430, the canonical program `A000430.P3476626595135912415` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000430 has offset 1).

The definition of A000430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000430.P16227872237529027260

`∪[A001248(n+1), Δ[A007504(n)]]`
-/

namespace A000430.P16227872237529027260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000430.P16227872237529027260

namespace A000430

/-- `∪[A001248(n+1), Δ[A007504(n)]]` -/
def P16227872237529027260.Spec : Prop :=
  ∀ n, (P16227872237529027260.a n : ℤ) = A000430 (n + 1)

end A000430

/-! ## A000430.P3476626595135912415

`∪[A000040(n+1), A001248(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000430

/-- `∪[A000040(n+1), A001248(n+1)]` -/
def P3476626595135912415.Spec : Prop :=
  ∀ n, (P3476626595135912415.a n : ℤ) = A000430 (n + 1)

theorem P3476626595135912415.correct : P3476626595135912415.Spec := by
  intro n
  simp only [A000430, Nat.add_sub_cancel]

end A000430

/-! ## A000430.P14172143369966780706

`∪[A001248(n+1), A008578(n+2)]`
-/

namespace A000430.P14172143369966780706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000430.P14172143369966780706

namespace A000430

/-- `∪[A001248(n+1), A008578(n+2)]` -/
def P14172143369966780706.Spec : Prop :=
  ∀ n, (P14172143369966780706.a n : ℤ) = A000430 (n + 1)

end A000430

/-! ## A000430.P2267052564518432012

`∪[A000040(n+1), A280076(n+2)]`
-/

namespace A000430.P2267052564518432012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000430.P2267052564518432012

namespace A000430

/-- `∪[A000040(n+1), A280076(n+2)]` -/
def P2267052564518432012.Spec : Prop :=
  ∀ n, (P2267052564518432012.a n : ℤ) = A000430 (n + 1)

end A000430

/-! ## A000430.P18302243926638918686

`∪[A000040(n+1), Δ[A007504(n)]²]`
-/

namespace A000430.P18302243926638918686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000430.P18302243926638918686

namespace A000430

/-- `∪[A000040(n+1), Δ[A007504(n)]²]` -/
def P18302243926638918686.Spec : Prop :=
  ∀ n, (P18302243926638918686.a n : ℤ) = A000430 (n + 1)

end A000430

/-! ## A000430.P14655788541516633092

`∪[A000040(n+1), A008578(n+2)²]`
-/

namespace A000430.P14655788541516633092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000430.P14655788541516633092

namespace A000430

/-- `∪[A000040(n+1), A008578(n+2)²]` -/
def P14655788541516633092.Spec : Prop :=
  ∀ n, (P14655788541516633092.a n : ℤ) = A000430 (n + 1)

end A000430

/-! ## A000430.P739192954819797203

`∪[A001248(n+1), ∑[A054541(n+1)]]`
-/

namespace A000430.P739192954819797203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000430.P739192954819797203

namespace A000430

/-- `∪[A001248(n+1), ∑[A054541(n+1)]]` -/
def P739192954819797203.Spec : Prop :=
  ∀ n, (P739192954819797203.a n : ℤ) = A000430 (n + 1)

end A000430

/-! ## A000430.P349159412464327946

`∪[A006093(n+1)+1, A001248(n+1)]`
-/

namespace A000430.P349159412464327946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000430.P349159412464327946

namespace A000430

/-- `∪[A006093(n+1)+1, A001248(n+1)]` -/
def P349159412464327946.Spec : Prop :=
  ∀ n, (P349159412464327946.a n : ℤ) = A000430 (n + 1)

end A000430

/-! ## A000430.P14739189214097084254

`∪[A001248(n+1), A040976(n+1)+2]`
-/

namespace A000430.P14739189214097084254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000430.P14739189214097084254

namespace A000430

/-- `∪[A001248(n+1), A040976(n+1)+2]` -/
def P14739189214097084254.Spec : Prop :=
  ∀ n, (P14739189214097084254.a n : ℤ) = A000430 (n + 1)

end A000430

/-! ## A000430.P16555672786797111528

`∪[A014692(n+1)+n, A001248(n+1)]`
-/

namespace A000430.P16555672786797111528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000430.P16555672786797111528

namespace A000430

/-- `∪[A014692(n+1)+n, A001248(n+1)]` -/
def P16555672786797111528.Spec : Prop :=
  ∀ n, (P16555672786797111528.a n : ℤ) = A000430 (n + 1)

end A000430

/-! ## A000430.P15990959851819675487

`∪[A001248(n+1), A014688(n+1)-(n+1)]`
-/

namespace A000430.P15990959851819675487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000430.P15990959851819675487

namespace A000430

/-- `∪[A001248(n+1), A014688(n+1)-(n+1)]` -/
def P15990959851819675487.Spec : Prop :=
  ∀ n, (P15990959851819675487.a n : ℤ) = A000430 (n + 1)

end A000430

/-! ## A000430.P3387142318570721547

`A166684(n+2)`
-/

namespace A000430.P3387142318570721547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (n + 2)

end

end A000430.P3387142318570721547

namespace A000430

/-- `A166684(n+2)` -/
def P3387142318570721547.Spec : Prop :=
  ∀ n, P3387142318570721547.a n = A000430 (n + 1)

end A000430

/-! ## A000430.P2817417770476946179

`∩[A000961(n+1), A135785(n+1)]`
-/

namespace A000430.P2817417770476946179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000430.P2817417770476946179

namespace A000430

/-- `∩[A000961(n+1), A135785(n+1)]` -/
def P2817417770476946179.Spec : Prop :=
  ∀ n, (P2817417770476946179.a n : ℤ) = A000430 (n + 1)

end A000430

/-! ## A000430.P6738159996554863734

`∩[A081061(n+1), A135785(n+1)]`
-/

namespace A000430.P6738159996554863734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000430.P6738159996554863734

namespace A000430

/-- `∩[A081061(n+1), A135785(n+1)]` -/
def P6738159996554863734.Spec : Prop :=
  ∀ n, (P6738159996554863734.a n : ℤ) = A000430 (n + 1)

end A000430

/-! ## A000430.P7618662516694337941

`record[gcd(n+2, A006530(n+2)²)]`
-/

namespace A000430.P7618662516694337941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A006530 (n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000430.P7618662516694337941

namespace A000430

/-- `record[gcd(n+2, A006530(n+2)²)]` -/
def P7618662516694337941.Spec : Prop :=
  ∀ n, (P7618662516694337941.a n : ℤ) = A000430 (n + 1)

end A000430

/-! ## A000430.P295610339254548609

`filter[A135785(n+1), A069513(#)]`
-/

namespace A000430.P295610339254548609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A000430.P295610339254548609

namespace A000430

/-- `filter[A135785(n+1), A069513(#)]` -/
def P295610339254548609.Spec : Prop :=
  ∀ n, P295610339254548609.a n = A000430 (n + 1)

end A000430

/-! ## A000430.P6285783992113074038

`filter[A009087(n+1), A212793(#)]`
-/

namespace A000430.P6285783992113074038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A000430.P6285783992113074038

namespace A000430

/-- `filter[A009087(n+1), A212793(#)]` -/
def P6285783992113074038.Spec : Prop :=
  ∀ n, P6285783992113074038.a n = A000430 (n + 1)

end A000430

/-! ## A000430.P13738021360904698695

`filter[A050376(n+1), A212793(#)]`
-/

namespace A000430.P13738021360904698695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A000430.P13738021360904698695

namespace A000430

/-- `filter[A050376(n+1), A212793(#)]` -/
def P13738021360904698695.Spec : Prop :=
  ∀ n, P13738021360904698695.a n = A000430 (n + 1)

end A000430

/-! ## A000430.P18198708688147089812

`filter[A096165(n+1), A212793(#)]`
-/

namespace A000430.P18198708688147089812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A000430.P18198708688147089812

namespace A000430

/-- `filter[A096165(n+1), A212793(#)]` -/
def P18198708688147089812.Spec : Prop :=
  ∀ n, P18198708688147089812.a n = A000430 (n + 1)

end A000430

/-!
# A000431: Expansion of 2*x^3/((1-2*x)^2*(1-4*x)).

The programs for A000431, the canonical program `A000431.P11286682523906021` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000431 has offset 0).

The definition of A000431 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(2x^3/(1-8x+20x^2-16x^3))` (program `A000431.P11286682523906021`, by `A000431.P11286682523906021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000431.P11286682523906021

`ogf(2x^3/(1-8x+20x^2-16x^3))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000431

/-- `ogf(2x^3/(1-8x+20x^2-16x^3))` -/
def P11286682523906021.Spec : Prop :=
  ∀ n, P11286682523906021.a n = A000431 n

theorem P11286682523906021.correct : P11286682523906021.Spec := by
  intro n
  simp only [A000431]

end A000431

/-! ## A000431.P5858658442511278024

`abs(floor(2^(n-1))-n)/2*A011782(n)`
-/

namespace A000431.P5858658442511278024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - (n : ℤ)| : ℚ) / 2 * (A011782 n : ℚ)

end

end A000431.P5858658442511278024

namespace A000431

/-- `abs(floor(2^(n-1))-n)/2*A011782(n)` -/
def P5858658442511278024.Spec : Prop :=
  ∀ n, P5858658442511278024.a n = (A000431 n : ℚ)

end A000431

/-! ## A000431.P9010029973244784674

`∑[∑[2*a(n-1)]]*A166444(n)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A000431.P9010029973244784674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A166444 n

end

end A000431.P9010029973244784674

namespace A000431

/-- `∑[∑[2*a(n-1)]]*A166444(n)` -/
def P9010029973244784674.Spec : Prop :=
  ∀ n, P9010029973244784674.a n = A000431 n

end A000431

/-! ## A000431.P4463911364676106425

`A395948(n)-A274497(n)`
-/

namespace A000431.P4463911364676106425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395948 n - A274497 n

end

end A000431.P4463911364676106425

namespace A000431

/-- `A395948(n)-A274497(n)` -/
def P4463911364676106425.Spec : Prop :=
  ∀ n, P4463911364676106425.a n = A000431 n

end A000431

/-! ## A000431.P12676756396580300726

`(A131577(n)-n)*A034008(n)`
-/

namespace A000431.P12676756396580300726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 n - (n : ℤ)) * A034008 n

end

end A000431.P12676756396580300726

namespace A000431

/-- `(A131577(n)-n)*A034008(n)` -/
def P12676756396580300726.Spec : Prop :=
  ∀ n, P12676756396580300726.a n = A000431 n

end A000431

/-! ## A000431.P6424813563697957243

`(A011782(n)-n)*A166444(n)`
-/

namespace A000431.P6424813563697957243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 n - (n : ℤ)) * A166444 n

end

end A000431.P6424813563697957243

namespace A000431

/-- `(A011782(n)-n)*A166444(n)` -/
def P6424813563697957243.Spec : Prop :=
  ∀ n, P6424813563697957243.a n = A000431 n

end A000431

/-! ## A000431.P4494192840395796050

`(A131577(n)-n)*A166444(n)`
-/

namespace A000431.P4494192840395796050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 n - (n : ℤ)) * A166444 n

end

end A000431.P4494192840395796050

namespace A000431

/-- `(A131577(n)-n)*A166444(n)` -/
def P4494192840395796050.Spec : Prop :=
  ∀ n, P4494192840395796050.a n = A000431 n

end A000431

/-! ## A000431.P9063327958343358730

`(A131577(n)²-A001787(n))/2`
-/

namespace A000431.P9063327958343358730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 n ^ 2 - A001787 n : ℚ) / 2

end

end A000431.P9063327958343358730

namespace A000431

/-- `(A131577(n)²-A001787(n))/2` -/
def P9063327958343358730.Spec : Prop :=
  ∀ n, P9063327958343358730.a n = (A000431 n : ℚ)

end A000431

/-! ## A000431.P8659643372947059977

`(A034008(n+1)-n)*A034008(n)`
-/

namespace A000431.P8659643372947059977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034008 (n + 1) - (n : ℤ)) * A034008 n

end

end A000431.P8659643372947059977

namespace A000431

/-- `(A034008(n+1)-n)*A034008(n)` -/
def P8659643372947059977.Spec : Prop :=
  ∀ n, P8659643372947059977.a n = A000431 n

end A000431

/-! ## A000431.P15358924509747762252

`(A166444(n+1)-n)*A166444(n)`
-/

namespace A000431.P15358924509747762252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166444 (n + 1) - (n : ℤ)) * A166444 n

end

end A000431.P15358924509747762252

namespace A000431

/-- `(A166444(n+1)-n)*A166444(n)` -/
def P15358924509747762252.Spec : Prop :=
  ∀ n, P15358924509747762252.a n = A000431 n

end A000431

/-! ## A000431.P5992448115962677965

`A011782(A004275(n))-A129952(n)`
-/

namespace A000431.P5992448115962677965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004275 n).toNat - A129952 n

end

end A000431.P5992448115962677965

namespace A000431

/-- `A011782(A004275(n))-A129952(n)` -/
def P5992448115962677965.Spec : Prop :=
  ∀ n, P5992448115962677965.a n = A000431 n

end A000431

/-! ## A000431.P10076989455802087984

`A131577(A004275(n))-A057711(n)`
-/

namespace A000431.P10076989455802087984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A004275 n).toNat - A057711 n

end

end A000431.P10076989455802087984

namespace A000431

/-- `A131577(A004275(n))-A057711(n)` -/
def P10076989455802087984.Spec : Prop :=
  ∀ n, P10076989455802087984.a n = A000431 n

end A000431

/-! ## A000431.P5056831415842959387

`A166444(A004273(n))-A057711(n)`
-/

namespace A000431.P5056831415842959387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A004273 n).toNat - A057711 n

end

end A000431.P5056831415842959387

namespace A000431

/-- `A166444(A004273(n))-A057711(n)` -/
def P5056831415842959387.Spec : Prop :=
  ∀ n, P5056831415842959387.a n = A000431 n

end A000431

/-! ## A000431.P1335888531933037880

`A034008(A004280(n+1))-A057711(n)`
-/

namespace A000431.P1335888531933037880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A004280 (n + 1)).toNat - A057711 n

end

end A000431.P1335888531933037880

namespace A000431

/-- `A034008(A004280(n+1))-A057711(n)` -/
def P1335888531933037880.Spec : Prop :=
  ∀ n, P1335888531933037880.a n = A000431 n

end A000431

/-! ## A000431.P4662906017979692135

`A166444(A004273(n))-n*A166444(n)`
-/

namespace A000431.P4662906017979692135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A004273 n).toNat - (n : ℤ) * A166444 n

end

end A000431.P4662906017979692135

namespace A000431

/-- `A166444(A004273(n))-n*A166444(n)` -/
def P4662906017979692135.Spec : Prop :=
  ∀ n, P4662906017979692135.a n = A000431 n

end A000431

/-! ## A000431.P7614147015313988760

`abs(floor(2^(n-1))-n)*2^n/4`
-/

namespace A000431.P7614147015313988760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - (n : ℤ)| * (2 ^ n : ℤ) : ℚ) / 4

end

end A000431.P7614147015313988760

namespace A000431

/-- `abs(floor(2^(n-1))-n)*2^n/4` -/
def P7614147015313988760.Spec : Prop :=
  ∀ n, P7614147015313988760.a n = (A000431 n : ℚ)

end A000431

/-! ## A000431.P2786885650459639798

`A292044(n+1)-A082134(n)`
-/

namespace A000431.P2786885650459639798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292044 (n + 1) - A082134 n

end

end A000431.P2786885650459639798

namespace A000431

/-- `A292044(n+1)-A082134(n)` -/
def P2786885650459639798.Spec : Prop :=
  ∀ n, P2786885650459639798.a n = A000431 n

end A000431

/-! ## A000431.P11198712398317488502

`and(A233868(n+1), A308700(n))`
-/

namespace A000431.P11198712398317488502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A233868 (n + 1)) (A308700 n)

end

end A000431.P11198712398317488502

namespace A000431

/-- `and(A233868(n+1), A308700(n))` -/
def P11198712398317488502.Spec : Prop :=
  ∀ n, P11198712398317488502.a n = A000431 n

end A000431

/-!
# A000432: Series-parallel numbers.

The programs for A000432, there is no canonical definition to state claims against.
-/

/-! ## A000432.P4319407896141935014

`A036654(A167614(n+2))`
-/

namespace A000432.P4319407896141935014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036654 (A167614 (n + 2)).toNat

end

end A000432.P4319407896141935014

/-! ## A000432.P2800275661832486666

`A036654(A052905(n)+8)`
-/

namespace A000432.P2800275661832486666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036654 (A052905 n + 8).toNat

end

end A000432.P2800275661832486666

/-! ## A000432.P18370579803325098943

`A036654(eq[3, A002262(n)])`
-/

namespace A000432.P18370579803325098943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000432.P18370579803325098943

/-! ## A000432.P16790890764186037345

`A036654(eq[4, A002260(n+1)])`
-/

namespace A000432.P16790890764186037345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000432.P16790890764186037345

/-! ## A000432.P16150005039518906728

`A036654(A167487(n)+A005408(n))`
-/

namespace A000432.P16150005039518906728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036654 (A167487 n + A005408 n).toNat

end

end A000432.P16150005039518906728

/-!
# A000433: n written in base where place values are positive cubes.

The programs for A000433, there is no canonical definition to state claims against.
-/

/-! ## A000433.P13221305533537977207

`lt[A160942(n+1), A122731(A169805(n+2))]`
-/

namespace A000433.P13221305533537977207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122731 (A169805 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A000433.P13221305533537977207

/-!
# A000434: Number of permutations of [n] in which the longest increasing run has length 4.

The programs for A000434, there is no canonical definition to state claims against.
-/

/-! ## A000434.P14237087392308900066

`A177523(n+1)-A117158(n+1)`
-/

namespace A000434.P14237087392308900066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177523 (n + 1) - A117158 (n + 1)

end

end A000434.P14237087392308900066

/-! ## A000434.P5694117402776284585

`A177523(A342952(n+1))%A117158(A342952(n+1))`
-/

namespace A000434.P5694117402776284585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177523 (A342952 (n + 1)).toNat) (A117158 (A342952 (n + 1)).toNat)

end

end A000434.P5694117402776284585

/-! ## A000434.P11634669095656472751

`A054899(A232165(n)+A001809(n))`
-/

namespace A000434.P11634669095656472751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A232165 n + A001809 n).toNat

end

end A000434.P11634669095656472751

/-!
# A000435: Normalized total height of all nodes in all rooted trees with n labeled nodes.

The programs for A000435, there is no canonical definition to state claims against.
-/

/-! ## A000435.P15203131999489773264

`n*A001863(n+1)`
-/

namespace A000435.P15203131999489773264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001863 (n + 1)

end

end A000435.P15203131999489773264

/-! ## A000435.P12718561343577173465

`A001865(n+1)-(n+1)^n`
-/

namespace A000435.P12718561343577173465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001865 (n + 1) - ((n + 1) ^ n : ℤ)

end

end A000435.P12718561343577173465

/-! ## A000435.P798239749232466230

`A001864(n+1)/(n+1)`
-/

namespace A000435.P798239749232466230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001864 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000435.P798239749232466230

/-! ## A000435.P9980548840384369398

`record[Δ[A350452(n+1)]]`
-/

namespace A000435.P9980548840384369398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350452 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000435.P9980548840384369398

/-! ## A000435.P8589457292288479804

`n*record[A001863(A028920(n))]`
-/

namespace A000435.P8589457292288479804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001863 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000435.P8589457292288479804

/-! ## A000435.P5184152170105943980

`n*record[A001863(A126759(n))]`
-/

namespace A000435.P5184152170105943980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001863 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000435.P5184152170105943980

/-! ## A000435.P2803115030274068270

`n*record[A001863(A137735(n))]`
-/

namespace A000435.P2803115030274068270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001863 (A137735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000435.P2803115030274068270

/-! ## A000435.P4310544076610487158

`A060281(∑[n]+1)-A000169(n+1)`
-/

namespace A000435.P4310544076610487158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A000169 (n + 1)

end

end A000435.P4310544076610487158

/-! ## A000435.P1902066145326244154

`A053506(n+1)+2*A057500(n+1)`
-/

namespace A000435.P1902066145326244154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053506 (n + 1) + 2 * A057500 (n + 1)

end

end A000435.P1902066145326244154

/-! ## A000435.P1167805716540861598

`A350079(A000124(n))-A000169(n+1)`
-/

namespace A000435.P1167805716540861598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350079 (A000124 n).toNat - A000169 (n + 1)

end

end A000435.P1167805716540861598

/-!
# A000436: Generalized Euler numbers c(3,n).

The programs for A000436, there is no canonical definition to state claims against.
-/

/-! ## A000436.P15364420392637505065

`A000810(2*n)`
-/

namespace A000436.P15364420392637505065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000810 (2 * n)

end

end A000436.P15364420392637505065

/-! ## A000436.P9021546221637983168

`A007289(2*n)`
-/

namespace A000436.P9021546221637983168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007289 (2 * n)

end

end A000436.P9021546221637983168

/-! ## A000436.P2848352647389283491

`(-4)^n*A210657(n)`
-/

namespace A000436.P2848352647389283491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n * A210657 n

end

end A000436.P2848352647389283491

/-! ## A000436.P11930619274613261379

`record[A007289(n)/(-1)^n]`
-/

namespace A000436.P11930619274613261379
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007289 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000436.P11930619274613261379

/-! ## A000436.P1589883149028828088

`A202692(C(2*(n+1), 2))`
-/

namespace A000436.P1589883149028828088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202692 (Nat.choose (2 * (n + 1)) 2)

end

end A000436.P1589883149028828088

/-!
# A000437: Smallest nonnegative number that is the sum of 3 squares in exactly n ways.

The programs for A000437, there is no canonical definition to state claims against.
-/

/-! ## A000437.P7220378396406779656

`A124970(n+1)%((n+1)^4)`
-/

namespace A000437.P7220378396406779656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124970 (n + 1)) ((n + 1) ^ 4 : ℤ)

end

end A000437.P7220378396406779656

/-! ## A000437.P5572963338067981521

`A124970(n+1)-A000007(n)`
-/

namespace A000437.P5572963338067981521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124970 (n + 1) - A000007 n

end

end A000437.P5572963338067981521

/-! ## A000437.P11497225269249885767

`and(A057428(n), A124970(n+1))`
-/

namespace A000437.P11497225269249885767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A124970 (n + 1))

end

end A000437.P11497225269249885767

/-! ## A000437.P9396418004094169215

`A159075(n+1)+A124970(n+1)`
-/

namespace A000437.P9396418004094169215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (n + 1) + A124970 (n + 1)

end

end A000437.P9396418004094169215

/-! ## A000437.P3612819056631430342

`A124970(n+1)-A063524(n+1)`
-/

namespace A000437.P3612819056631430342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124970 (n + 1) - A063524 (n + 1)

end

end A000437.P3612819056631430342

/-! ## A000437.P9399349858186876145

`A060576(n+1)*A124970(n+1)`
-/

namespace A000437.P9399349858186876145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 1) * A124970 (n + 1)

end

end A000437.P9399349858186876145

/-! ## A000437.P5786611443667559065

`lcm(A105812(n+1), A124970(n+1))`
-/

namespace A000437.P5786611443667559065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105812 (n + 1)) (A124970 (n + 1))

end

end A000437.P5786611443667559065

/-! ## A000437.P9130720152187325872

`char[A280864(n+1)]*A124970(n+1)`
-/

namespace A000437.P9130720152187325872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A124970 (n + 1)

end

end A000437.P9130720152187325872

/-! ## A000437.P1428929000334938994

`A105812(2*n+1)*A124970(n+1)`
-/

namespace A000437.P1428929000334938994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * n + 1) * A124970 (n + 1)

end

end A000437.P1428929000334938994

/-! ## A000437.P16394723684489859004

`A124970(n+1)-A072453(A008486(n))`
-/

namespace A000437.P16394723684489859004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124970 (n + 1) - A072453 (A008486 n).toNat

end

end A000437.P16394723684489859004

/-! ## A000437.P15624860167776760032

`A124970(n+1)+A008683(A072462(n+1))`
-/

namespace A000437.P15624860167776760032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124970 (n + 1) + A008683 (A072462 (n + 1)).toNat

end

end A000437.P15624860167776760032

/-! ## A000437.P5222788325774203394

`A095809(n+1)-floor(acot(n))`
-/

namespace A000437.P5222788325774203394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095809 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A000437.P5222788325774203394

/-! ## A000437.P13465799880535300639

`A095809(n+1)-A000007(n)`
-/

namespace A000437.P13465799880535300639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095809 (n + 1) - A000007 n

end

end A000437.P13465799880535300639

/-! ## A000437.P18046430224640803015

`A057427(n)*A095809(n+1)`
-/

namespace A000437.P18046430224640803015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A095809 (n + 1)

end

end A000437.P18046430224640803015

/-! ## A000437.P8390325971921664492

`A095809(n+1)%A000141(n)`
-/

namespace A000437.P8390325971921664492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095809 (n + 1)) (A000141 n)

end

end A000437.P8390325971921664492

/-! ## A000437.P17850404254650307050

`and(A057428(n), A095809(n+1))`
-/

namespace A000437.P17850404254650307050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A095809 (n + 1))

end

end A000437.P17850404254650307050

/-! ## A000437.P11073961127279308289

`xor(A000007(4*n), A095809(n+1))`
-/

namespace A000437.P11073961127279308289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (4 * n)) (A095809 (n + 1))

end

end A000437.P11073961127279308289

/-! ## A000437.P1511885468234061359

`A122699(n+1)`
-/

namespace A000437.P1511885468234061359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122699 (n + 1)

end

end A000437.P1511885468234061359

/-!
# A000438: Number of 1-factorizations of complete graph K_{2n}.

The programs for A000438, there is no canonical definition to state claims against.
-/

/-! ## A000438.P11310478354677232993

`A035481(Δ[n²])`
-/

namespace A000438.P11310478354677232993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035481 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000438.P11310478354677232993

/-! ## A000438.P11080719945715201644

`A001147(n)*A365520(n+1)`
-/

namespace A000438.P11080719945715201644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n * A365520 (n + 1)

end

end A000438.P11080719945715201644

/-! ## A000438.P9504243205666566286

`gcd(A000038(n), A035481(2*n+1))`
-/

namespace A000438.P9504243205666566286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A035481 (2 * n + 1))

end

end A000438.P9504243205666566286

/-!
# A000439: Powers of rooted tree enumerator.

The programs for A000439, the canonical program `A000439.P17354767155742786108` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000439 has offset 1).

The definition of A000439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000439.P17354767155742786108

`((n+1)^4+18*(n+1)^3+83*(n+1)²+114*(n+1))/24`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000439

/-- `((n+1)^4+18*(n+1)^3+83*(n+1)²+114*(n+1))/24` -/
def P17354767155742786108.Spec : Prop :=
  ∀ n, P17354767155742786108.a n = (A000439 (n + 1) : ℚ)

end A000439

/-! ## A000439.P15191626314319472863

`A095667(n)+∑[3*n+5]`
-/

namespace A000439.P15191626314319472863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A000439.P15191626314319472863

namespace A000439

/-- `A095667(n)+∑[3*n+5]` -/
def P15191626314319472863.Spec : Prop :=
  ∀ n, P15191626314319472863.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P3990898403385377182

`A006504(n+1)+(n+1)*(n+4)`
-/

namespace A000439.P3990898403385377182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) + ((n + 1) * (n + 4) : ℤ)

end

end A000439.P3990898403385377182

namespace A000439

/-- `A006504(n+1)+(n+1)*(n+4)` -/
def P3990898403385377182.Spec : Prop :=
  ∀ n, P3990898403385377182.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P18420154790161723448

`A095661(n)+A023545(n+1)`
-/

namespace A000439.P18420154790161723448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 n + A023545 (n + 1)

end

end A000439.P18420154790161723448

namespace A000439

/-- `A095661(n)+A023545(n+1)` -/
def P18420154790161723448.Spec : Prop :=
  ∀ n, P18420154790161723448.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P14333317179359779459

`A151675(n+1)+A055417(n)`
-/

namespace A000439.P14333317179359779459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151675 (n + 1) + A055417 n

end

end A000439.P14333317179359779459

namespace A000439

/-- `A151675(n+1)+A055417(n)` -/
def P14333317179359779459.Spec : Prop :=
  ∀ n, P14333317179359779459.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P6594372003319850888

`A387204(n)+A023551(n+1)`
-/

namespace A000439.P6594372003319850888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387204 n + A023551 (n + 1)

end

end A000439.P6594372003319850888

namespace A000439

/-- `A387204(n)+A023551(n+1)` -/
def P6594372003319850888.Spec : Prop :=
  ∀ n, P6594372003319850888.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P7098478040031530028

`A217947(n)-A051743(n+1)`
-/

namespace A000439.P7098478040031530028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217947 n - A051743 (n + 1)

end

end A000439.P7098478040031530028

namespace A000439

/-- `A217947(n)-A051743(n+1)` -/
def P7098478040031530028.Spec : Prop :=
  ∀ n, P7098478040031530028.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P16587756334830860578

`A005718(n)+2*A062748(n)`
-/

namespace A000439.P16587756334830860578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 n + 2 * A062748 n

end

end A000439.P16587756334830860578

namespace A000439

/-- `A005718(n)+2*A062748(n)` -/
def P16587756334830860578.Spec : Prop :=
  ∀ n, P16587756334830860578.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P6366445892519021299

`A162263(n+1)+A055795(n+1)`
-/

namespace A000439.P6366445892519021299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162263 (n + 1) + A055795 (n + 1)

end

end A000439.P6366445892519021299

namespace A000439

/-- `A162263(n+1)+A055795(n+1)` -/
def P6366445892519021299.Spec : Prop :=
  ∀ n, P6366445892519021299.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P7327940557572633526

`A000096(n+1)+A006504(n+1)+A000096(n+1)`
-/

namespace A000439.P7327940557572633526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) + (A006504 (n + 1) + A000096 (n + 1))

end

end A000439.P7327940557572633526

namespace A000439

/-- `A000096(n+1)+A006504(n+1)+A000096(n+1)` -/
def P7327940557572633526.Spec : Prop :=
  ∀ n, P7327940557572633526.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P11319449557637915304

`Δ[A000574(n+3)]-(n+4)`
-/

namespace A000439.P11319449557637915304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000574 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 4 : ℤ)

end

end A000439.P11319449557637915304

namespace A000439

/-- `Δ[A000574(n+3)]-(n+4)` -/
def P11319449557637915304.Spec : Prop :=
  ∀ n, P11319449557637915304.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P6918098289175944261

`A180118(n+1)+A005718(n)`
-/

namespace A000439.P6918098289175944261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180118 (n + 1) + A005718 n

end

end A000439.P6918098289175944261

namespace A000439

/-- `A180118(n+1)+A005718(n)` -/
def P6918098289175944261.Spec : Prop :=
  ∀ n, P6918098289175944261.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P15672370797409225243

`A005586(n)+A005582(n+2)`
-/

namespace A000439.P15672370797409225243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n + A005582 (n + 2)

end

end A000439.P15672370797409225243

namespace A000439

/-- `A005586(n)+A005582(n+2)` -/
def P15672370797409225243.Spec : Prop :=
  ∀ n, P15672370797409225243.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P10621386395709394905

`A077415(n+3)+A063258(n)`
-/

namespace A000439.P10621386395709394905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077415 (n + 3) + A063258 n

end

end A000439.P10621386395709394905

namespace A000439

/-- `A077415(n+3)+A063258(n)` -/
def P10621386395709394905.Spec : Prop :=
  ∀ n, P10621386395709394905.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P16797359152410128844

`A005586(n)+Δ[A005583(n+1)]`
-/

namespace A000439.P16797359152410128844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n + (f1 (n + 1) - f1 n)

end

end A000439.P16797359152410128844

namespace A000439

/-- `A005586(n)+Δ[A005583(n+1)]` -/
def P16797359152410128844.Spec : Prop :=
  ∀ n, P16797359152410128844.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P5925999182640583978

`A005287(n+4)+A000292(n+2)`
-/

namespace A000439.P5925999182640583978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005287 (n + 4) + A000292 (n + 2)

end

end A000439.P5925999182640583978

namespace A000439

/-- `A005287(n+4)+A000292(n+2)` -/
def P5925999182640583978.Spec : Prop :=
  ∀ n, P5925999182640583978.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P13286613425356738626

`Δ[A005583(n+1)+A005582(n)]-2`
-/

namespace A000439.P13286613425356738626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 1) + A005582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A000439.P13286613425356738626

namespace A000439

/-- `Δ[A005583(n+1)+A005582(n)]-2` -/
def P13286613425356738626.Spec : Prop :=
  ∀ n, P13286613425356738626.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P15637185533090611487

`A056000(n+1)+A096942(n)-A000125(n)`
-/

namespace A000439.P15637185533090611487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 (n + 1) + (A096942 n - A000125 n)

end

end A000439.P15637185533090611487

namespace A000439

/-- `A056000(n+1)+A096942(n)-A000125(n)` -/
def P15637185533090611487.Spec : Prop :=
  ∀ n, P15637185533090611487.a n = A000439 (n + 1)

end A000439

/-! ## A000439.P4803230698812310497

`A005286(n+1)+A005582(n+1)+A005286(n)`
-/

namespace A000439.P4803230698812310497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 1) + (A005582 (n + 1) + A005286 n)

end

end A000439.P4803230698812310497

namespace A000439

/-- `A005286(n+1)+A005582(n+1)+A005286(n)` -/
def P4803230698812310497.Spec : Prop :=
  ∀ n, P4803230698812310497.a n = A000439 (n + 1)

end A000439

/-!
# A000440: Number of permutations of an n-sequence discordant with three given permutations (see reference) in n-4 places.

The programs for A000440, there is no canonical definition to state claims against.
-/

/-! ## A000440.P16109572319046536958

`A094315(eq[4, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A000440.P16109572319046536958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000440.P16109572319046536958

/-!
# A000441: a(n) = Sum_{k=1..n-1} k*sigma(k)*sigma(n-k).

The programs for A000441, there is no canonical definition to state claims against.
-/

/-! ## A000441.P14866177586651555678

`A259356(A034856(n+1))-char[3]`
-/

namespace A000441.P14866177586651555678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259356 (A034856 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A000441.P14866177586651555678

/-! ## A000441.P14534192356230623087

`A002418(n)-A324421(xor(n, n+1)+1)`
-/

namespace A000441.P14534192356230623087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002418 n - A324421 (Nat.xor n (n + 1) + 1)

end

end A000441.P14534192356230623087

/-! ## A000441.P13700251439979167932

`∑[n^3-C(n, 3)]-A038189(A000032(3*n))`
-/

namespace A000441.P13700251439979167932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A038189 (A000032 (3 * n)).toNat

end

end A000441.P13700251439979167932

/-!
# A000442: a(n) = (n!)^3.

The programs for A000442, the canonical program `A000442.P1367213380399715497` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000442 has offset 0).

The definition of A000442 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^3` (program `A000442.P1367213380399715497`, by `A000442.P1367213380399715497.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000442.P1367213380399715497

`n!^3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000442

/-- `n!^3` -/
def P1367213380399715497.Spec : Prop :=
  ∀ n, (P1367213380399715497.a n : ℤ) = A000442 n

theorem P1367213380399715497.correct : P1367213380399715497.Spec := by
  intro n
  simp only [A000442]

end A000442

/-! ## A000442.P3960598379290549662

`n^3*a(n-1)` with `a(0)=1`
-/

namespace A000442.P3960598379290549662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ 3 * a (n - 1)

end

end A000442.P3960598379290549662

namespace A000442

/-- `n^3*a(n-1)` -/
def P3960598379290549662.Spec : Prop :=
  ∀ n, (P3960598379290549662.a n : ℤ) = A000442 n

end A000442

/-! ## A000442.P660881579027689400

`A000142(n)^3`
-/

namespace A000442.P660881579027689400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n ^ 3

end

end A000442.P660881579027689400

namespace A000442

/-- `A000142(n)^3` -/
def P660881579027689400.Spec : Prop :=
  ∀ n, P660881579027689400.a n = A000442 n

end A000442

/-! ## A000442.P11564552710304486970

`root(n!, 1/3)`
-/

namespace A000442.P11564552710304486970
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A000442.P11564552710304486970

namespace A000442

/-- `root(n!, 1/3)` -/
def P11564552710304486970.Spec : Prop :=
  ∀ n, P11564552710304486970.a n = (A000442 n : ℝ)

theorem P11564552710304486970.correct : P11564552710304486970.Spec := by
  intro n
  simp only [A000442, Nat.add_sub_cancel, A000442.P11564552710304486970.a, A000442.P1367213380399715497.a, SequenceMachineLib.memo_apply]
  try simp

end A000442

/-! ## A000442.P10942193158282376461

`exp(3*log(n!))`
-/

namespace A000442.P10942193158282376461
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (3 * Real.log (Nat.factorial n : ℝ))

end

end A000442.P10942193158282376461

namespace A000442

/-- `exp(3*log(n!))` -/
def P10942193158282376461.Spec : Prop :=
  ∀ n, P10942193158282376461.a n = (A000442 n : ℝ)

end A000442

/-!
# A000443: Numbers that are the sum of 2 squares in exactly 3 ways.

The programs for A000443, the canonical program `A000443.P2477946098226311991` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000443 has offset 1).

The definition of A000443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000443.P2477946098226311991

`eq[3, A000161(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A000443

/-- `eq[3, A000161(n)]` -/
def P2477946098226311991.Spec : Prop :=
  ∀ n, (P2477946098226311991.a n : ℤ) = A000443 (n + 1)

theorem P2477946098226311991.correct : P2477946098226311991.Spec := by
  intro n
  simp only [A000443, Nat.add_sub_cancel]

end A000443

/-! ## A000443.P4113768843289202783

`eq[2, A040259(A000925(n))]`
-/

namespace A000443.P4113768843289202783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040259 (A000925 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000443.P4113768843289202783

namespace A000443

/-- `eq[2, A040259(A000925(n))]` -/
def P4113768843289202783.Spec : Prop :=
  ∀ n, (P4113768843289202783.a n : ℤ) = A000443 (n + 1)

end A000443

/-! ## A000443.P16529395513628280727

`eq[3, A110656(A004018(n))]`
-/

namespace A000443.P16529395513628280727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A004018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000443.P16529395513628280727

namespace A000443

/-- `eq[3, A110656(A004018(n))]` -/
def P16529395513628280727.Spec : Prop :=
  ∀ n, (P16529395513628280727.a n : ℤ) = A000443 (n + 1)

end A000443

/-! ## A000443.P13553028136906484841

`eq[2, A052916(ceil(A000925(n)/2))]`
-/

namespace A000443.P13553028136906484841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052916 ⌈(A000925 n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000443.P13553028136906484841

namespace A000443

/-- `eq[2, A052916(ceil(A000925(n)/2))]` -/
def P13553028136906484841.Spec : Prop :=
  ∀ n, (P13553028136906484841.a n : ℤ) = A000443 (n + 1)

end A000443

/-! ## A000443.P11470178371882376007

`eq[2, A306486(ceil(A000925(n)/2))]`
-/

namespace A000443.P11470178371882376007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306486 ⌈(A000925 n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000443.P11470178371882376007

namespace A000443

/-- `eq[2, A306486(ceil(A000925(n)/2))]` -/
def P11470178371882376007.Spec : Prop :=
  ∀ n, (P11470178371882376007.a n : ℤ) = A000443 (n + 1)

end A000443

/-! ## A000443.P10853770601791643009

`eq[2, A052916(ceil(A004018(n)/8))]`
-/

namespace A000443.P10853770601791643009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052916 ⌈(A004018 n : ℚ) / 8⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000443.P10853770601791643009

namespace A000443

/-- `eq[2, A052916(ceil(A004018(n)/8))]` -/
def P10853770601791643009.Spec : Prop :=
  ∀ n, (P10853770601791643009.a n : ℤ) = A000443 (n + 1)

end A000443

/-! ## A000443.P12059433567796850759

`eq[2, A306486(ceil(A004018(n)/8))]`
-/

namespace A000443.P12059433567796850759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306486 ⌈(A004018 n : ℚ) / 8⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000443.P12059433567796850759

namespace A000443

/-- `eq[2, A306486(ceil(A004018(n)/8))]` -/
def P12059433567796850759.Spec : Prop :=
  ∀ n, (P12059433567796850759.a n : ℤ) = A000443 (n + 1)

end A000443

/-!
# A000444: Number of partially labeled rooted trees with n nodes (3 of which are labeled).

The programs for A000444, there is no canonical definition to state claims against.
-/

/-! ## A000444.P17831414862655798060

`A008295(A167614(n+2))`
-/

namespace A000444.P17831414862655798060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (A167614 (n + 2)).toNat

end

end A000444.P17831414862655798060

/-! ## A000444.P15007426143954209258

`A008295(A141214(n)+6)`
-/

namespace A000444.P15007426143954209258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (A141214 n + 6).toNat

end

end A000444.P15007426143954209258

/-! ## A000444.P8058732357880681358

`A008295(A052905(n)+8)`
-/

namespace A000444.P8058732357880681358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (A052905 n + 8).toNat

end

end A000444.P8058732357880681358

/-! ## A000444.P14853089693353804240

`A008295(eq[2, A141169(n)])`
-/

namespace A000444.P14853089693353804240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000444.P14853089693353804240

/-! ## A000444.P15913613866154058526

`A008295(eq[3, A002262(n)])`
-/

namespace A000444.P15913613866154058526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000444.P15913613866154058526

/-!
# A000446: Smallest number that is the sum of 2 squares (allowing zeros) in exactly n ways.

The programs for A000446, there is no canonical definition to state claims against.
-/

/-! ## A000446.P9896353259729436158

`A124980(n+1)-floor(acot(n))`
-/

namespace A000446.P9896353259729436158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124980 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A000446.P9896353259729436158

/-! ## A000446.P1664329777170289412

`A124980(n+1)-A000007(n)`
-/

namespace A000446.P1664329777170289412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124980 (n + 1) - A000007 n

end

end A000446.P1664329777170289412

/-! ## A000446.P6880297596959030335

`A057427(n)*A124980(n+1)`
-/

namespace A000446.P6880297596959030335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A124980 (n + 1)

end

end A000446.P6880297596959030335

/-! ## A000446.P15408556178657132517

`and(A057428(n), A124980(n+1))`
-/

namespace A000446.P15408556178657132517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A124980 (n + 1))

end

end A000446.P15408556178657132517

/-! ## A000446.P17612165730116669225

`char[A133310(n)]*A124980(n+1)`
-/

namespace A000446.P17612165730116669225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A124980 (n + 1)

end

end A000446.P17612165730116669225

/-! ## A000446.P4922776416867108440

`A124980(n+1)-A000079(n)%2`
-/

namespace A000446.P4922776416867108440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124980 (n + 1) - Int.tmod (A000079 n) 2

end

end A000446.P4922776416867108440

/-! ## A000446.P2960021607906810477

`A124980(n+1)-A004018(n)%2`
-/

namespace A000446.P2960021607906810477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124980 (n + 1) - Int.tmod (A004018 n) 2

end

end A000446.P2960021607906810477

/-! ## A000446.P14178081499985653469

`A124980(n+1)-char[A124997(n+1)]`
-/

namespace A000446.P14178081499985653469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124997 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124980 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000446.P14178081499985653469

/-! ## A000446.P7174684555382208847

`A124980(n+1)-A005179(n+1)%2`
-/

namespace A000446.P7174684555382208847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124980 (n + 1) - Int.tmod (A005179 (n + 1)) 2

end

end A000446.P7174684555382208847

/-! ## A000446.P7287244503529637340

`A002313(n+1)%2*A124980(n+1)`
-/

namespace A000446.P7287244503529637340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002313 (n + 1)) 2 * A124980 (n + 1)

end

end A000446.P7287244503529637340

/-! ## A000446.P625194099439369343

`round(A124980(n+1)-acot(A018825(n+1)))`
-/

namespace A000446.P625194099439369343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A124980 (n + 1) : ℝ) - SequenceMachineLib.acot (A018825 (n + 1) : ℝ))

end

end A000446.P625194099439369343

/-! ## A000446.P4246359880445409598

`A048766(A000120(n))*A124980(n+1)`
-/

namespace A000446.P4246359880445409598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000120 n).toNat * A124980 (n + 1)

end

end A000446.P4246359880445409598

/-! ## A000446.P236506553710387198

`A048766(A048766(n))*A124980(n+1)`
-/

namespace A000446.P236506553710387198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048766 n).toNat * A124980 (n + 1)

end

end A000446.P236506553710387198

/-! ## A000446.P15776053612236870101

`A124980(n+1)+A020639(A028659(n))-2`
-/

namespace A000446.P15776053612236870101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124980 (n + 1) + (A020639 (A028659 n).toNat - 2)

end

end A000446.P15776053612236870101

/-! ## A000446.P11726798213778345744

`C(A124980(n+1), A014963(A124936(n+1)))`
-/

namespace A000446.P11726798213778345744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124980 (n + 1)).toNat (A014963 (A124936 (n + 1)).toNat).toNat

end

end A000446.P11726798213778345744

/-! ## A000446.P18164676597785636503

`A124980(n+1)-C(A014963(n+1), A124980(n+1))`
-/

namespace A000446.P18164676597785636503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124980 (n + 1) - (Nat.choose (A014963 (n + 1)).toNat (A124980 (n + 1)).toNat : ℤ)

end

end A000446.P18164676597785636503

/-!
# A000447: a(n) = 1^2 + 3^2 + 5^2 + 7^2 + ... + (2*n-1)^2 = n*(4*n^2 - 1)/3.

The programs for A000447, the canonical program `A000447.P17250821094733215500` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000447 has offset 0).

The definition of A000447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n²-1)/3` (program `A000447.P1037784498048229611`, by `A000447.P1037784498048229611.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000447.P16934247130465702405

`C(2*n+1, 3)`
-/

namespace A000447.P16934247130465702405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 3

end

end A000447.P16934247130465702405

namespace A000447

/-- `C(2*n+1, 3)` -/
def P16934247130465702405.Spec : Prop :=
  ∀ n, (P16934247130465702405.a n : ℤ) = A000447 n

end A000447

/-! ## A000447.P1037784498048229611

`n*(4*n²-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000447.P1037784498048229611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((4 * n ^ 2 : ℤ) - 1) : ℚ) / 3

end

end A000447.P1037784498048229611

namespace A000447

/-- `n*(4*n²-1)/3` -/
def P1037784498048229611.Spec : Prop :=
  ∀ n, P1037784498048229611.a n = (A000447 n : ℚ)

theorem P1037784498048229611.correct : P1037784498048229611.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A000447, Nat.add_sub_cancel, A000447.P1037784498048229611.a, A000447.P17250821094733215500.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A000447, Nat.add_sub_cancel, A000447.P1037784498048229611.a, A000447.P17250821094733215500.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000447

/-! ## A000447.P17250821094733215500

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=10, a(3)=35`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000447

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17250821094733215500.Spec : Prop :=
  ∀ n, P17250821094733215500.a n = A000447 n

theorem P17250821094733215500.correct : P17250821094733215500.Spec := by
  intro n
  simp only [A000447]

end A000447

/-! ## A000447.P3023514316094690521

`A005917(n+1)-A100157(n+1)`
-/

namespace A000447.P3023514316094690521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1) - A100157 (n + 1)

end

end A000447.P3023514316094690521

namespace A000447

/-- `A005917(n+1)-A100157(n+1)` -/
def P3023514316094690521.Spec : Prop :=
  ∀ n, P3023514316094690521.a n = A000447 n

end A000447

/-! ## A000447.P5646592898322888218

`A000578(n)+A007290(n+1)`
-/

namespace A000447.P5646592898322888218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + A007290 (n + 1)

end

end A000447.P5646592898322888218

namespace A000447

/-- `A000578(n)+A007290(n+1)` -/
def P5646592898322888218.Spec : Prop :=
  ∀ n, P5646592898322888218.a n = A000447 n

end A000447

/-! ## A000447.P4028232513565552960

`A000330(2*n)-4*A000330(n)`
-/

namespace A000447.P4028232513565552960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (2 * n) - 4 * A000330 n

end

end A000447.P4028232513565552960

namespace A000447

/-- `A000330(2*n)-4*A000330(n)` -/
def P4028232513565552960.Spec : Prop :=
  ∀ n, P4028232513565552960.a n = A000447 n

end A000447

/-! ## A000447.P12742314325238656068

`record[C(xor(1, n), 3)]`
-/

namespace A000447.P12742314325238656068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000447.P12742314325238656068

namespace A000447

/-- `record[C(xor(1, n), 3)]` -/
def P12742314325238656068.Spec : Prop :=
  ∀ n, (P12742314325238656068.a n : ℤ) = A000447 n

end A000447

/-! ## A000447.P10304462660674293551

`record[C(lcm(8, n)/8, 3)]`
-/

namespace A000447.P10304462660674293551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000447.P10304462660674293551

namespace A000447

/-- `record[C(lcm(8, n)/8, 3)]` -/
def P10304462660674293551.Spec : Prop :=
  ∀ n, (P10304462660674293551.a n : ℤ) = A000447 n

end A000447

/-! ## A000447.P4793601921353813251

`record[C(n, 3)*and(1, n)]`
-/

namespace A000447.P4793601921353813251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000447.P4793601921353813251

namespace A000447

/-- `record[C(n, 3)*and(1, n)]` -/
def P4793601921353813251.Spec : Prop :=
  ∀ n, (P4793601921353813251.a n : ℤ) = A000447 n

end A000447

/-! ## A000447.P2869570519084364587

`record[C(n^(n%2), 3)]`
-/

namespace A000447.P2869570519084364587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ (n % 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000447.P2869570519084364587

namespace A000447

/-- `record[C(n^(n%2), 3)]` -/
def P2869570519084364587.Spec : Prop :=
  ∀ n, (P2869570519084364587.a n : ℤ) = A000447 n

end A000447

/-! ## A000447.P4391977102892640100

`∑[or(1, -(2*n))²]-1`
-/

namespace A000447.P4391977102892640100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A000447.P4391977102892640100

namespace A000447

/-- `∑[or(1, -(2*n))²]-1` -/
def P4391977102892640100.Spec : Prop :=
  ∀ n, P4391977102892640100.a n = A000447 n

end A000447

/-! ## A000447.P14398050211030837369

`∑[xor(1, -(2*n))²]-1`
-/

namespace A000447.P14398050211030837369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(2 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A000447.P14398050211030837369

namespace A000447

/-- `∑[xor(1, -(2*n))²]-1` -/
def P14398050211030837369.Spec : Prop :=
  ∀ n, P14398050211030837369.a n = A000447 n

end A000447

/-! ## A000447.P3548488779170996089

`∑[∑[a(n-1)+8]]` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A000447.P3548488779170996089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 8] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000447.P3548488779170996089

namespace A000447

/-- `∑[∑[a(n-1)+8]]` -/
def P3548488779170996089.Spec : Prop :=
  ∀ n, (P3548488779170996089.a n : ℤ) = A000447 n

end A000447

/-! ## A000447.P14041719756040610439

`∑[(1-lcm(2, 2*n))²]-1`
-/

namespace A000447.P14041719756040610439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.lcm 2 (2 * n) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A000447.P14041719756040610439

namespace A000447

/-- `∑[(1-lcm(2, 2*n))²]-1` -/
def P14041719756040610439.Spec : Prop :=
  ∀ n, P14041719756040610439.a n = A000447 n

end A000447

/-! ## A000447.P17886119187248866983

`(1-2*n)²+a(n-1)` with `a(0)=0`
-/

namespace A000447.P17886119187248866983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (1 - (2 * n : ℤ)) ^ 2 + a (n - 1)

end

end A000447.P17886119187248866983

namespace A000447

/-- `(1-2*n)²+a(n-1)` -/
def P17886119187248866983.Spec : Prop :=
  ∀ n, P17886119187248866983.a n = A000447 n

end A000447

/-! ## A000447.P2674121180760035493

`n-∑[∑[a(n-1)-8]]` with `a(0)=0, a(1)=0`
-/

namespace A000447.P2674121180760035493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (n - 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000447.P2674121180760035493

namespace A000447

/-- `n-∑[∑[a(n-1)-8]]` -/
def P2674121180760035493.Spec : Prop :=
  ∀ n, P2674121180760035493.a n = A000447 n

end A000447

/-! ## A000447.P2844487639798689608

`a(n-1)+(n-1+n)²` with `a(0)=0`
-/

namespace A000447.P2844487639798689608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - 1 + (n : ℤ)) ^ 2

end

end A000447.P2844487639798689608

namespace A000447

/-- `a(n-1)+(n-1+n)²` -/
def P2844487639798689608.Spec : Prop :=
  ∀ n, P2844487639798689608.a n = A000447 n

end A000447

/-!
# A000448: Smallest number that is the sum of 2 squares in at least n ways.

The programs for A000448, there is no canonical definition to state claims against.
-/

/-! ## A000448.P7763569846546405595

`A000446(A087036(n)+A033630(n))`
-/

namespace A000448.P7763569846546405595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000446 (A087036 n + A033630 n).toNat

end

end A000448.P7763569846546405595

/-! ## A000448.P7723064059799150306

`A000446(C(A094686(n), A078866(n+2))+n+1)`
-/

namespace A000448.P7723064059799150306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000446 (Nat.choose (A094686 n).toNat (A078866 (n + 2)).toNat + n + 1)

end

end A000448.P7723064059799150306

/-! ## A000448.P16268503257176623824

`A071340(n*A331728(2*(n+2)))`
-/

namespace A000448.P16268503257176623824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071340 ((n : ℤ) * A331728 (2 * (n + 2))).toNat

end

end A000448.P16268503257176623824

/-! ## A000448.P2064519807263543919

`A071340(n*A003814(n+1))`
-/

namespace A000448.P2064519807263543919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071340 ((n : ℤ) * A003814 (n + 1)).toNat

end

end A000448.P2064519807263543919

/-!
# A000449: Rencontres numbers: number of permutations of [n] with exactly 3 fixed points.

The programs for A000449, the canonical program `A000449.P12405531933684339176` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000449 has offset 3).

The definition of A000449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000449.P12405531933684339176

`C(n+3, 3)*A000166(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000449

/-- `C(n+3, 3)*A000166(n)` -/
def P12405531933684339176.Spec : Prop :=
  ∀ n, P12405531933684339176.a n = A000449 (n + 3)

theorem P12405531933684339176.correct : P12405531933684339176.Spec := by
  intro n
  simp only [A000449, Nat.add_sub_cancel]

end A000449

/-! ## A000449.P16873446726034836425

`(n+3)*a(n-1)-(-1)^(n+3)*(n+3)*(n+2)*(n+1)/6` with `a(0)=1`
-/

namespace A000449.P16873446726034836425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 3 : ℚ) * a (n - 1) - ((-1) ^ (n + 3) : ℚ) * ((n + 3 : ℚ) * ((n + 2 : ℚ) * ((n + 1 : ℚ) / 6)))

end

end A000449.P16873446726034836425

namespace A000449

/-- `(n+3)*a(n-1)-(-1)^(n+3)*(n+3)*(n+2)*(n+1)/6` -/
def P16873446726034836425.Spec : Prop :=
  ∀ n, P16873446726034836425.a n = (A000449 (n + 3) : ℚ)

end A000449

/-! ## A000449.P11712680596604438632

`A182661(n+3)/2`
-/

namespace A000449.P11712680596604438632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182661 (n + 3) : ℚ) / 2

end

end A000449.P11712680596604438632

namespace A000449

/-- `A182661(n+3)/2` -/
def P11712680596604438632.Spec : Prop :=
  ∀ n, P11712680596604438632.a n = (A000449 (n + 3) : ℚ)

end A000449

/-! ## A000449.P17710505572956298721

`A145222(n+3)/3`
-/

namespace A000449.P17710505572956298721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145222 (n + 3) : ℚ) / 3

end

end A000449.P17710505572956298721

namespace A000449

/-- `A145222(n+3)/3` -/
def P17710505572956298721.Spec : Prop :=
  ∀ n, P17710505572956298721.a n = (A000449 (n + 3) : ℚ)

end A000449

/-! ## A000449.P2048228448267054856

`A098825(∑[n+4]+2)`
-/

namespace A000449.P2048228448267054856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000449.P2048228448267054856

namespace A000449

/-- `A098825(∑[n+4]+2)` -/
def P2048228448267054856.Spec : Prop :=
  ∀ n, P2048228448267054856.a n = A000449 (n + 3)

end A000449

/-! ## A000449.P5269497901486790350

`C(n+3, 3)*A008290(∑[n])`
-/

namespace A000449.P5269497901486790350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A008290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000449.P5269497901486790350

namespace A000449

/-- `C(n+3, 3)*A008290(∑[n])` -/
def P5269497901486790350.Spec : Prop :=
  ∀ n, P5269497901486790350.a n = A000449 (n + 3)

end A000449

/-! ## A000449.P2370882643042282550

`∑[∑[n+1]]*A068106(∑[n])`
-/

namespace A000449.P2370882643042282550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A068106 (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A000449.P2370882643042282550

namespace A000449

/-- `∑[∑[n+1]]*A068106(∑[n])` -/
def P2370882643042282550.Spec : Prop :=
  ∀ n, P2370882643042282550.a n = A000449 (n + 3)

end A000449

/-! ## A000449.P18351099161852844041

`A008290(A167614(n+2))`
-/

namespace A000449.P18351099161852844041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A167614 (n + 2)).toNat

end

end A000449.P18351099161852844041

namespace A000449

/-- `A008290(A167614(n+2))` -/
def P18351099161852844041.Spec : Prop :=
  ∀ n, P18351099161852844041.a n = A000449 (n + 3)

end A000449

/-! ## A000449.P11095710748924895272

`A008290(eq[3, A002262(n)])`
-/

namespace A000449.P11095710748924895272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000449.P11095710748924895272

namespace A000449

/-- `A008290(eq[3, A002262(n)])` -/
def P11095710748924895272.Spec : Prop :=
  ∀ n, P11095710748924895272.a n = A000449 (n + 3)

end A000449

/-! ## A000449.P12174146861559641191

`A000166(n)*A000292(n+1)`
-/

namespace A000449.P12174146861559641191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * A000292 (n + 1)

end

end A000449.P12174146861559641191

namespace A000449

/-- `A000166(n)*A000292(n+1)` -/
def P12174146861559641191.Spec : Prop :=
  ∀ n, P12174146861559641191.a n = A000449 (n + 3)

end A000449

/-!
# A000450: a(n) = A058057(n,n-4).

The programs for A000450, there is no canonical definition to state claims against.
-/

/-! ## A000450.P17545617153997544706

`A058057(2*n+∑[n+3]+7)`
-/

namespace A000450.P17545617153997544706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 7))

end

end A000450.P17545617153997544706

/-! ## A000450.P7023606798658079701

`record[A058057(A052905(n))]`
-/

namespace A000450.P7023606798658079701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000450.P7023606798658079701

/-! ## A000450.P5912551280856412342

`A156368(A155212(n)+12)`
-/

namespace A000450.P5912551280856412342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A155212 n + 12).toNat

end

end A000450.P5912551280856412342

/-! ## A000450.P4421152943039613462

`A156368(eq[4, A002262(n)])`
-/

namespace A000450.P4421152943039613462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000450.P4421152943039613462

/-! ## A000450.P8623663708058258125

`record[A058057(A055999(n)+1)]`
-/

namespace A000450.P8623663708058258125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000450.P8623663708058258125

/-! ## A000450.P10705806009552899866

`A156368(A000217(n+4)+4)`
-/

namespace A000450.P10705806009552899866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A000217 (n + 4) + 4).toNat

end

end A000450.P10705806009552899866

/-! ## A000450.P2954140399693425752

`A156368(A027379(n+2)+7)`
-/

namespace A000450.P2954140399693425752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A027379 (n + 2) + 7).toNat

end

end A000450.P2954140399693425752

/-! ## A000450.P10440061263836403939

`A156368(eq[5, A002260(n+1)])`
-/

namespace A000450.P10440061263836403939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000450.P10440061263836403939

/-! ## A000450.P15309006740091787112

`record[A058057(A055998(n+1)-2)]`
-/

namespace A000450.P15309006740091787112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (A055998 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000450.P15309006740091787112

/-! ## A000450.P16343934417238805378

`A156368(A000124(n+5)-(n+2))`
-/

namespace A000450.P16343934417238805378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A000124 (n + 5) - (n + 2 : ℤ)).toNat

end

end A000450.P16343934417238805378

/-!
# A000451: Smallest number that is the sum of 3 squares in at least n ways.

The programs for A000451, there is no canonical definition to state claims against.
-/

/-! ## A000451.P10218293300695657634

`A122699(or(A025434(n), A043320(n+1)))`
-/

namespace A000451.P10218293300695657634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122699 (Int.lor (A025434 n) (A043320 (n + 1))).toNat

end

end A000451.P10218293300695657634

/-! ## A000451.P2076573898102121871

`A000437(or(A025434(n), A187829(n+1)))`
-/

namespace A000451.P2076573898102121871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000437 (Int.lor (A025434 n) (A187829 (n + 1))).toNat

end

end A000451.P2076573898102121871

/-! ## A000451.P805995841907372215

`A122699(or(A025434(n), A187829(n+1)))`
-/

namespace A000451.P805995841907372215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122699 (Int.lor (A025434 n) (A187829 (n + 1))).toNat

end

end A000451.P805995841907372215

/-! ## A000451.P12979878187957720665

`A122699(A056649(n+1)+A043320(n+1))`
-/

namespace A000451.P12979878187957720665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122699 (A056649 (n + 1) + A043320 (n + 1)).toNat

end

end A000451.P12979878187957720665

/-! ## A000451.P12221567284105580930

`A000437(A187829(n+1)+A056649(n+1))`
-/

namespace A000451.P12221567284105580930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000437 (A187829 (n + 1) + A056649 (n + 1)).toNat

end

end A000451.P12221567284105580930

/-!
# A000452: The greedy sequence of integers which avoids 3-term geometric progressions.

The programs for A000452, the canonical program `A000452.P15432004544007735088` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000452 has offset 1).

The definition of A000452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000452.P13195853807945007811

`eq[1, A294932(n+1)]+1`
-/

namespace A000452.P13195853807945007811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000452.P13195853807945007811

namespace A000452

/-- `eq[1, A294932(n+1)]+1` -/
def P13195853807945007811.Spec : Prop :=
  ∀ n, (P13195853807945007811.a n : ℤ) = A000452 (n + 1)

end A000452

/-! ## A000452.P10294730086646960578

`record[(n+1)/A075643(A294932(n+1)+1)]`
-/

namespace A000452.P10294730086646960578
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A075643 (A294932 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000452.P10294730086646960578

namespace A000452

/-- `record[(n+1)/A075643(A294932(n+1)+1)]` -/
def P10294730086646960578.Spec : Prop :=
  ∀ n, P10294730086646960578.a n = (A000452 (n + 1) : ℚ)

end A000452

/-! ## A000452.P1601354629779552268

`record[(n+1)/A008732(A294932(n+1)-1)]`
-/

namespace A000452.P1601354629779552268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008732 (A294932 (n + 1) - 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000452.P1601354629779552268

namespace A000452

/-- `record[(n+1)/A008732(A294932(n+1)-1)]` -/
def P1601354629779552268.Spec : Prop :=
  ∀ n, P1601354629779552268.a n = (A000452 (n + 1) : ℚ)

end A000452

/-! ## A000452.P5314259096778520687

`record[(n+1)/A036697(A294932(n+1)-1)]`
-/

namespace A000452.P5314259096778520687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A036697 (A294932 (n + 1) - 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000452.P5314259096778520687

namespace A000452

/-- `record[(n+1)/A036697(A294932(n+1)-1)]` -/
def P5314259096778520687.Spec : Prop :=
  ∀ n, P5314259096778520687.a n = (A000452 (n + 1) : ℚ)

end A000452

/-! ## A000452.P10119954839494936006

`record[(n+1)/A294932(lcm(n+1, A294932(n+1)))]`
-/

namespace A000452.P10119954839494936006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A294932 (Int.lcm (n + 1 : ℤ) (A294932 (n + 1))) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000452.P10119954839494936006

namespace A000452

/-- `record[(n+1)/A294932(lcm(n+1, A294932(n+1)))]` -/
def P10119954839494936006.Spec : Prop :=
  ∀ n, P10119954839494936006.a n = (A000452 (n + 1) : ℚ)

end A000452

/-! ## A000452.P15432004544007735088

`eq[2, A001316(A038148(n+1))]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A000452

/-- `eq[2, A001316(A038148(n+1))]+1` -/
def P15432004544007735088.Spec : Prop :=
  ∀ n, (P15432004544007735088.a n : ℤ) = A000452 (n + 1)

theorem P15432004544007735088.correct : P15432004544007735088.Spec := by
  intro n
  simp only [A000452, Nat.add_sub_cancel]

end A000452

/-! ## A000452.P12298153888547619817

`record[A209279(2*n+1)/A294932(A209279(2*n+1))]`
-/

namespace A000452.P12298153888547619817
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209279 (2 * n + 1) : ℚ) / (A294932 (A209279 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000452.P12298153888547619817

namespace A000452

/-- `record[A209279(2*n+1)/A294932(A209279(2*n+1))]` -/
def P12298153888547619817.Spec : Prop :=
  ∀ n, P12298153888547619817.a n = (A000452 (n + 1) : ℚ)

end A000452

/-!
# A000453: Stirling numbers of the second kind, S(n,4).

The programs for A000453, the canonical program `A000453.P2227300644151805457` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000453 has offset 4).

The definition of A000453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000453.P2227300644151805457

`10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` with `a(0)=1, a(1)=10, a(2)=65, a(3)=350`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000453

/-- `10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` -/
def P2227300644151805457.Spec : Prop :=
  ∀ n, P2227300644151805457.a n = A000453 (n + 4)

theorem P2227300644151805457.correct : P2227300644151805457.Spec := by
  intro n
  simp only [A000453, Nat.add_sub_cancel]

end A000453

/-! ## A000453.P6117409814258665777

`(4^(n+4)-4*3^(n+4)+6*2^(n+4)-4)/24`
-/

namespace A000453.P6117409814258665777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 4) : ℤ) - (4 * 3 ^ (n + 4) : ℤ) + (6 * 2 ^ (n + 4) : ℤ) - 4 : ℚ) / 24

end

end A000453.P6117409814258665777

namespace A000453

/-- `(4^(n+4)-4*3^(n+4)+6*2^(n+4)-4)/24` -/
def P6117409814258665777.Spec : Prop :=
  ∀ n, P6117409814258665777.a n = (A000453 (n + 4) : ℚ)

theorem P6117409814258665777.correct : P6117409814258665777.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A000453, Nat.add_sub_cancel, A000453.P6117409814258665777.a, A000453.P2227300644151805457.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A000453, Nat.add_sub_cancel, A000453.P6117409814258665777.a, A000453.P2227300644151805457.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000453

/-! ## A000453.P15331402899399810593

`∑[4^(n+1)-3^(n+1)]+2*a(n-1)` with `a(0)=1`
-/

namespace A000453.P15331402899399810593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A000453.P15331402899399810593

namespace A000453

/-- `∑[4^(n+1)-3^(n+1)]+2*a(n-1)` -/
def P15331402899399810593.Spec : Prop :=
  ∀ n, P15331402899399810593.a n = A000453 (n + 4)

end A000453

/-! ## A000453.P12850795415961630782

`A056473(2*(n+4))`
-/

namespace A000453.P12850795415961630782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056473 (2 * (n + 4))

end

end A000453.P12850795415961630782

namespace A000453

/-- `A056473(2*(n+4))` -/
def P12850795415961630782.Spec : Prop :=
  ∀ n, P12850795415961630782.a n = A000453 (n + 4)

end A000453

/-! ## A000453.P909742719899789559

`A056510(2*n+7)`
-/

namespace A000453.P909742719899789559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056510 (2 * n + 7)

end

end A000453.P909742719899789559

namespace A000453

/-- `A056510(2*n+7)` -/
def P909742719899789559.Spec : Prop :=
  ∀ n, P909742719899789559.a n = A000453 (n + 4)

end A000453

/-! ## A000453.P9735557671643169494

`2*∑[A016269(n)/2]`
-/

namespace A000453.P9735557671643169494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016269 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000453.P9735557671643169494

namespace A000453

/-- `2*∑[A016269(n)/2]` -/
def P9735557671643169494.Spec : Prop :=
  ∀ n, P9735557671643169494.a n = (A000453 (n + 4) : ℚ)

end A000453

/-! ## A000453.P18196158891474299896

`record[floor(A056473(n+1)+acot(n))]`
-/

namespace A000453.P18196158891474299896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056473 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000453.P18196158891474299896

namespace A000453

/-- `record[floor(A056473(n+1)+acot(n))]` -/
def P18196158891474299896.Spec : Prop :=
  ∀ n, P18196158891474299896.a n = A000453 (n + 4)

end A000453

/-! ## A000453.P5763352076861341500

`a(n-1)+A016208(n)+a(n-1)` with `a(0)=1`
-/

namespace A000453.P5763352076861341500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016208 n + a (n - 1))

end

end A000453.P5763352076861341500

namespace A000453

/-- `a(n-1)+A016208(n)+a(n-1)` -/
def P5763352076861341500.Spec : Prop :=
  ∀ n, P5763352076861341500.a n = A000453 (n + 4)

end A000453

/-! ## A000453.P14151520241629889592

`A038721(n+1)-A016208(n)`
-/

namespace A000453.P14151520241629889592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038721 (n + 1) - A016208 n

end

end A000453.P14151520241629889592

namespace A000453

/-- `A038721(n+1)-A016208(n)` -/
def P14151520241629889592.Spec : Prop :=
  ∀ n, P14151520241629889592.a n = A000453 (n + 4)

end A000453

/-! ## A000453.P2500277525456381236

`A171477(n)+A032263(n+3)`
-/

namespace A000453.P2500277525456381236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171477 n + A032263 (n + 3)

end

end A000453.P2500277525456381236

namespace A000453

/-- `A171477(n)+A032263(n+3)` -/
def P2500277525456381236.Spec : Prop :=
  ∀ n, P2500277525456381236.a n = A000453 (n + 4)

end A000453

/-! ## A000453.P7591444978544082333

`2*A016269(n)-A016208(n)`
-/

namespace A000453.P7591444978544082333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016269 n - A016208 n

end

end A000453.P7591444978544082333

namespace A000453

/-- `2*A016269(n)-A016208(n)` -/
def P7591444978544082333.Spec : Prop :=
  ∀ n, P7591444978544082333.a n = A000453 (n + 4)

end A000453

/-! ## A000453.P9436719082298453096

`A032263(n+3)+A006095(n+2)`
-/

namespace A000453.P9436719082298453096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032263 (n + 3) + A006095 (n + 2)

end

end A000453.P9436719082298453096

namespace A000453

/-- `A032263(n+3)+A006095(n+2)` -/
def P9436719082298453096.Spec : Prop :=
  ∀ n, P9436719082298453096.a n = A000453 (n + 4)

end A000453

/-! ## A000453.P18012606670524706530

`A081674(n+2)-A001047(n+2)`
-/

namespace A000453.P18012606670524706530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081674 (n + 2) - A001047 (n + 2)

end

end A000453.P18012606670524706530

namespace A000453

/-- `A081674(n+2)-A001047(n+2)` -/
def P18012606670524706530.Spec : Prop :=
  ∀ n, P18012606670524706530.a n = A000453 (n + 4)

end A000453

/-! ## A000453.P14061880216278133781

`A007581(n+3)-A007051(n+3)`
-/

namespace A000453.P14061880216278133781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 (n + 3) - A007051 (n + 3)

end

end A000453.P14061880216278133781

namespace A000453

/-- `A007581(n+3)-A007051(n+3)` -/
def P14061880216278133781.Spec : Prop :=
  ∀ n, P14061880216278133781.a n = A000453 (n + 4)

end A000453

/-! ## A000453.P6480408879055706390

`A320527(n+4)+A056328(n+4)`
-/

namespace A000453.P6480408879055706390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320527 (n + 4) + A056328 (n + 4)

end

end A000453.P6480408879055706390

namespace A000453

/-- `A320527(n+4)+A056328(n+4)` -/
def P6480408879055706390.Spec : Prop :=
  ∀ n, P6480408879055706390.a n = A000453 (n + 4)

end A000453

/-! ## A000453.P5538422396038086745

`∑[A016208(n)/A000079(n)]*A000079(n)`
-/

namespace A000453.P5538422396038086745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016208 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A000453.P5538422396038086745

namespace A000453

/-- `∑[A016208(n)/A000079(n)]*A000079(n)` -/
def P5538422396038086745.Spec : Prop :=
  ∀ n, P5538422396038086745.a n = (A000453 (n + 4) : ℚ)

end A000453

/-! ## A000453.P9570745805804687839

`A016269(n+1)-A016208(n+1)`
-/

namespace A000453.P9570745805804687839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 (n + 1) - A016208 (n + 1)

end

end A000453.P9570745805804687839

namespace A000453

/-- `A016269(n+1)-A016208(n+1)` -/
def P9570745805804687839.Spec : Prop :=
  ∀ n, P9570745805804687839.a n = A000453 (n + 4)

end A000453

/-! ## A000453.P8303965793497175814

`A016208(n+1)-A171477(n+1)`
-/

namespace A000453.P8303965793497175814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016208 (n + 1) - A171477 (n + 1)

end

end A000453.P8303965793497175814

namespace A000453

/-- `A016208(n+1)-A171477(n+1)` -/
def P8303965793497175814.Spec : Prop :=
  ∀ n, P8303965793497175814.a n = A000453 (n + 4)

end A000453

/-! ## A000453.P12195994858760554140

`A016208(n+1)-A006095(n+3)`
-/

namespace A000453.P12195994858760554140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016208 (n + 1) - A006095 (n + 3)

end

end A000453.P12195994858760554140

namespace A000453

/-- `A016208(n+1)-A006095(n+3)` -/
def P12195994858760554140.Spec : Prop :=
  ∀ n, P12195994858760554140.a n = A000453 (n + 4)

end A000453

/-!
# A000454: Unsigned Stirling numbers of first kind s(n,4).

The programs for A000454, the canonical program `A000454.P18327268781435728864` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000454 has offset 4).

The definition of A000454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000454.P9539163649065230812

`A103719(n)+(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A000454.P9539163649065230812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103719 n + (n + 2 : ℤ) * a (n - 1)

end

end A000454.P9539163649065230812

namespace A000454

/-- `A103719(n)+(n+2)*a(n-1)` -/
def P9539163649065230812.Spec : Prop :=
  ∀ n, P9539163649065230812.a n = A000454 (n + 4)

end A000454

/-! ## A000454.P18327268781435728864

`A000399(n+3)+(n+3)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000454

/-- `A000399(n+3)+(n+3)*a(n-1)` -/
def P18327268781435728864.Spec : Prop :=
  ∀ n, P18327268781435728864.a n = A000454 (n + 4)

theorem P18327268781435728864.correct : P18327268781435728864.Spec := by
  intro n
  simp only [A000454, Nat.add_sub_cancel]

end A000454

/-! ## A000454.P14743061474888150150

`A000254(n+1)+(2*(n+4)-3)*a(n-1)-(n+2)²*a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A000454.P14743061474888150150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  A000254 (n + 1) + ((2 * (n + 4) : ℤ) - 3) * a (n - 1) - ((n + 2) ^ 2 : ℤ) * a (n - 2)

end

end A000454.P14743061474888150150

namespace A000454

/-- `A000254(n+1)+(2*(n+4)-3)*a(n-1)-(n+2)²*a(n-2)` -/
def P14743061474888150150.Spec : Prop :=
  ∀ n, P14743061474888150150.a n = A000454 (n + 4)

end A000454

/-! ## A000454.P5180527737170511905

`A130534(∑[n+3]+6)`
-/

namespace A000454.P5180527737170511905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A000454.P5180527737170511905

namespace A000454

/-- `A130534(∑[n+3]+6)` -/
def P5180527737170511905.Spec : Prop :=
  ∀ n, P5180527737170511905.a n = A000454 (n + 4)

end A000454

/-! ## A000454.P560394681971476981

`A094638(A055998(n+2))`
-/

namespace A000454.P560394681971476981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A055998 (n + 2)).toNat

end

end A000454.P560394681971476981

namespace A000454

/-- `A094638(A055998(n+2))` -/
def P560394681971476981.Spec : Prop :=
  ∀ n, P560394681971476981.a n = A000454 (n + 4)

end A000454

/-! ## A000454.P9921079655007632121

`A094638(A056000(n)+7)`
-/

namespace A000454.P9921079655007632121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A056000 n + 7).toNat

end

end A000454.P9921079655007632121

namespace A000454

/-- `A094638(A056000(n)+7)` -/
def P9921079655007632121.Spec : Prop :=
  ∀ n, P9921079655007632121.a n = A000454 (n + 4)

end A000454

/-! ## A000454.P16822266855724125545

`A132393(A056000(n)+14)`
-/

namespace A000454.P16822266855724125545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A056000 n + 14).toNat

end

end A000454.P16822266855724125545

namespace A000454

/-- `A132393(A056000(n)+14)` -/
def P16822266855724125545.Spec : Prop :=
  ∀ n, P16822266855724125545.a n = A000454 (n + 4)

end A000454

/-! ## A000454.P11773509779117106768

`A132393(eq[4, A002262(n)])`
-/

namespace A000454.P11773509779117106768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000454.P11773509779117106768

namespace A000454

/-- `A132393(eq[4, A002262(n)])` -/
def P11773509779117106768.Spec : Prop :=
  ∀ n, P11773509779117106768.a n = A000454 (n + 4)

end A000454

/-! ## A000454.P14968849776031629472

`abs(A054654(A052905(n+2)))`
-/

namespace A000454.P14968849776031629472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054654 (A052905 (n + 2)).toNat|

end

end A000454.P14968849776031629472

namespace A000454

/-- `abs(A054654(A052905(n+2)))` -/
def P14968849776031629472.Spec : Prop :=
  ∀ n, P14968849776031629472.a n = A000454 (n + 4)

end A000454

/-! ## A000454.P14626266967736389780

`A094638(A052905(n+1)+2)`
-/

namespace A000454.P14626266967736389780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A052905 (n + 1) + 2).toNat

end

end A000454.P14626266967736389780

namespace A000454

/-- `A094638(A052905(n+1)+2)` -/
def P14626266967736389780.Spec : Prop :=
  ∀ n, P14626266967736389780.a n = A000454 (n + 4)

end A000454

/-!
# A000456: Number of permutations of [n] in which the longest increasing run has length 5.

The programs for A000456, there is no canonical definition to state claims against.
-/

/-! ## A000456.P6217450884262318858

`A177533(n+1)-A177523(n+1)`
-/

namespace A000456.P6217450884262318858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177533 (n + 1) - A177523 (n + 1)

end

end A000456.P6217450884262318858

/-! ## A000456.P15681603250763837050

`A177533(char[1]+1+n)%A177523(n+1)`
-/

namespace A000456.P15681603250763837050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177533 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)) (A177523 (n + 1))

end

end A000456.P15681603250763837050

/-! ## A000456.P9918111302967077852

`A001281(A001253(n+1))`
-/

namespace A000456.P9918111302967077852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A001253 (n + 1)).toNat

end

end A000456.P9918111302967077852

/-! ## A000456.P16101357427325856775

`A154125(A213454(n+1))`
-/

namespace A000456.P16101357427325856775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A213454 (n + 1)).toNat

end

end A000456.P16101357427325856775

/-!
# A000457: Exponential generating function: (1+3*x)/(1-2*x)^(7/2).

The programs for A000457, the canonical program `A000457.P17744989835339502776` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000457 has offset 0).

The definition of A000457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000457.P17744989835339502776

`(2*n+3)!/(6*n!*2^n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000457

/-- `(2*n+3)!/(6*n!*2^n)` -/
def P17744989835339502776.Spec : Prop :=
  ∀ n, P17744989835339502776.a n = (A000457 n : ℚ)

end A000457

/-! ## A000457.P6432902672822286418

`(n+1)*∏[2*n+3]/3`
-/

namespace A000457.P6432902672822286418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3)

end

end A000457.P6432902672822286418

namespace A000457

/-- `(n+1)*∏[2*n+3]/3` -/
def P6432902672822286418.Spec : Prop :=
  ∀ n, P6432902672822286418.a n = (A000457 n : ℚ)

end A000457

/-! ## A000457.P17712514332383519157

`∏[(2*n+3)^ceil(tanh(n))]+(2*n+3)*a(n-1)` with `a(0)=1`
-/

namespace A000457.P17712514332383519157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℚ) ^ (⌈Real.tanh (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (2 * n + 3 : ℚ) * a (n - 1)

end

end A000457.P17712514332383519157

namespace A000457

/-- `∏[(2*n+3)^ceil(tanh(n))]+(2*n+3)*a(n-1)` -/
def P17712514332383519157.Spec : Prop :=
  ∀ n, P17712514332383519157.a n = (A000457 n : ℚ)

end A000457

/-! ## A000457.P17477894133938878328

`∏[and(2*n+3, abs(1-n)-n)]+(2*n+3)*a(n-1)` with `a(0)=1`
-/

namespace A000457.P17477894133938878328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 3 : ℤ) (|1 - (n : ℤ)| - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (2 * n + 3 : ℤ) * a (n - 1)

end

end A000457.P17477894133938878328

namespace A000457

/-- `∏[and(2*n+3, abs(1-n)-n)]+(2*n+3)*a(n-1)` -/
def P17477894133938878328.Spec : Prop :=
  ∀ n, P17477894133938878328.a n = A000457 n

end A000457

/-! ## A000457.P4975116405380474581

`∏[(n+2)*ceil(sin(n)²)+n+1]+(2*n+3)*a(n-1)` with `a(0)=1`
-/

namespace A000457.P4975116405380474581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ⌈Real.sin (n : ℝ) ^ 2⌉ + (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (2 * n + 3 : ℤ) * a (n - 1)

end

end A000457.P4975116405380474581

namespace A000457

/-- `∏[(n+2)*ceil(sin(n)²)+n+1]+(2*n+3)*a(n-1)` -/
def P4975116405380474581.Spec : Prop :=
  ∀ n, P4975116405380474581.a n = A000457 n

end A000457

/-! ## A000457.P13392227086165343755

`A000906(n)/2`
-/

namespace A000457.P13392227086165343755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000906 n : ℚ) / 2

end

end A000457.P13392227086165343755

namespace A000457

/-- `A000906(n)/2` -/
def P13392227086165343755.Spec : Prop :=
  ∀ n, P13392227086165343755.a n = (A000457 n : ℚ)

end A000457

/-! ## A000457.P18084154115589143022

`A200142(n+1)/3`
-/

namespace A000457.P18084154115589143022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200142 (n + 1) : ℚ) / 3

end

end A000457.P18084154115589143022

namespace A000457

/-- `A200142(n+1)/3` -/
def P18084154115589143022.Spec : Prop :=
  ∀ n, P18084154115589143022.a n = (A000457 n : ℚ)

end A000457

/-! ## A000457.P2668240204887886136

`A259877(2*n+3)`
-/

namespace A000457.P2668240204887886136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259877 (2 * n + 3)

end

end A000457.P2668240204887886136

namespace A000457

/-- `A259877(2*n+3)` -/
def P2668240204887886136.Spec : Prop :=
  ∀ n, P2668240204887886136.a n = A000457 n

end A000457

/-! ## A000457.P5637555278794214393

`A100861(∑[2*(n+2)])`
-/

namespace A000457.P5637555278794214393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000457.P5637555278794214393

namespace A000457

/-- `A100861(∑[2*(n+2)])` -/
def P5637555278794214393.Spec : Prop :=
  ∀ n, P5637555278794214393.a n = A000457 n

end A000457

/-! ## A000457.P16522008233331484755

`A111924(∑[4*(n+1)])`
-/

namespace A000457.P16522008233331484755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111924 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000457.P16522008233331484755

namespace A000457

/-- `A111924(∑[4*(n+1)])` -/
def P16522008233331484755.Spec : Prop :=
  ∀ n, P16522008233331484755.a n = A000457 n

end A000457

/-!
# A000458: a(0) = a(1) = 1; thereafter a(n) = sigma(a(n-1)) + sigma(a(n-2)).

The programs for A000458, there is no canonical definition to state claims against.
-/

/-! ## A000458.P11000494846950381371

`A000203(a(n-1))+A000203(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A000458.P11000494846950381371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000203 (a (n - 1)).toNat + A000203 (a (n - 2)).toNat

end

end A000458.P11000494846950381371

/-! ## A000458.P15887217789697721929

`A175433(a(n-1))+A175433(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A000458.P15887217789697721929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A175433 (a (n - 1)).toNat + A175433 (a (n - 2)).toNat

end

end A000458.P15887217789697721929

/-! ## A000458.P8054934116635300154

`A074847(a(n-1))+A074847(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A000458.P8054934116635300154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A074847 (a (n - 1)).toNat + A074847 (a (n - 2)).toNat

end

end A000458.P8054934116635300154

/-! ## A000458.P14728814203868964117

`A097863(a(n-1))+A097863(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A000458.P14728814203868964117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A097863 (a (n - 1)).toNat + A097863 (a (n - 2)).toNat

end

end A000458.P14728814203868964117

/-! ## A000458.P11995427208831324656

`A116607(a(n-1))+A116607(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A000458.P11995427208831324656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A116607 (a (n - 1)).toNat + A116607 (a (n - 2)).toNat

end

end A000458.P11995427208831324656

/-!
# A000459: Number of multiset permutations of {1, 1, 2, 2, ..., n, n} with no fixed points.

The programs for A000459, the canonical program `A000459.P17736649955540889842` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000459 has offset 0).

The definition of A000459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000459.P17736649955540889842

`n*(2*n-1)*a(n-1)+2*(n-1)*n*a(n-2)-(2*n-1)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000459

/-- `n*(2*n-1)*a(n-1)+2*(n-1)*n*a(n-2)-(2*n-1)` -/
def P17736649955540889842.Spec : Prop :=
  ∀ n, P17736649955540889842.a n = A000459 n

theorem P17736649955540889842.correct : P17736649955540889842.Spec := by
  intro n
  simp only [A000459]

end A000459

/-! ## A000459.P8166368410342333472

`A000316(n)/2^n`
-/

namespace A000459.P8166368410342333472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000316 n : ℚ) / (2 ^ n : ℚ)

end

end A000459.P8166368410342333472

namespace A000459

/-- `A000316(n)/2^n` -/
def P8166368410342333472.Spec : Prop :=
  ∀ n, P8166368410342333472.a n = (A000459 n : ℚ)

end A000459

/-! ## A000459.P184727755038874778

`A059056(n²)`
-/

namespace A000459.P184727755038874778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059056 (n ^ 2)

end

end A000459.P184727755038874778

namespace A000459

/-- `A059056(n²)` -/
def P184727755038874778.Spec : Prop :=
  ∀ n, P184727755038874778.a n = A000459 n

end A000459

/-! ## A000459.P5354525795102930607

`A059056(A000290(n))+A000035(2*n+2)`
-/

namespace A000459.P5354525795102930607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059056 (A000290 n).toNat + A000035 (2 * n + 2)

end

end A000459.P5354525795102930607

namespace A000459

/-- `A059056(A000290(n))+A000035(2*n+2)` -/
def P5354525795102930607.Spec : Prop :=
  ∀ n, P5354525795102930607.a n = A000459 n

end A000459

/-! ## A000459.P17158890938923879209

`A059056(A000290(n))+A000038(3*n+2)`
-/

namespace A000459.P17158890938923879209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059056 (A000290 n).toNat + A000038 (3 * n + 2)

end

end A000459.P17158890938923879209

namespace A000459

/-- `A059056(A000290(n))+A000038(3*n+2)` -/
def P17158890938923879209.Spec : Prop :=
  ∀ n, P17158890938923879209.a n = A000459 n

end A000459

/-!
# A000460: Eulerian numbers (Euler's triangle: column k=3 of A008292, column k=2 of A173018).

The programs for A000460, the canonical program `A000460.P10204881405840651910` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000460 has offset 3).

The definition of A000460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000460.P10204881405840651910

`3^(n+3)-(n+4)*2^(n+3)+C(n+4, 2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000460

/-- `3^(n+3)-(n+4)*2^(n+3)+C(n+4, 2)` -/
def P10204881405840651910.Spec : Prop :=
  ∀ n, P10204881405840651910.a n = A000460 (n + 3)

theorem P10204881405840651910.correct : P10204881405840651910.Spec := by
  intro n
  simp only [A000460, Nat.add_sub_cancel]

end A000460

/-! ## A000460.P6540384780772413207

`3^(n+3)-(n+4)*2^(n+3)+1/2*(n+3)*(n+4)`
-/

namespace A000460.P6540384780772413207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 3) : ℤ) - ((n + 4) * 2 ^ (n + 3) : ℤ) : ℚ) + (1 : ℚ) / 2 * (n + 3 : ℚ) * (n + 4 : ℚ)

end

end A000460.P6540384780772413207

namespace A000460

/-- `3^(n+3)-(n+4)*2^(n+3)+1/2*(n+3)*(n+4)` -/
def P6540384780772413207.Spec : Prop :=
  ∀ n, P6540384780772413207.a n = (A000460 (n + 3) : ℚ)

end A000460

/-! ## A000460.P3705496201957510767

`A008292(∑[n+2]+4)`
-/

namespace A000460.P3705496201957510767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A000460.P3705496201957510767

namespace A000460

/-- `A008292(∑[n+2]+4)` -/
def P3705496201957510767.Spec : Prop :=
  ∀ n, P3705496201957510767.a n = A000460 (n + 3)

end A000460

/-! ## A000460.P5402913173918637204

`A173018(∑[n+3]+5)`
-/

namespace A000460.P5402913173918637204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A000460.P5402913173918637204

namespace A000460

/-- `A173018(∑[n+3]+5)` -/
def P5402913173918637204.Spec : Prop :=
  ∀ n, P5402913173918637204.a n = A000460 (n + 3)

end A000460

/-! ## A000460.P9806822461420874417

`A123125(∑[n+3]+6)`
-/

namespace A000460.P9806822461420874417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A000460.P9806822461420874417

namespace A000460

/-- `A123125(∑[n+3]+6)` -/
def P9806822461420874417.Spec : Prop :=
  ∀ n, P9806822461420874417.a n = A000460 (n + 3)

end A000460

/-!
# A000461: Concatenate n n times.

The programs for A000461, there is no canonical definition to state claims against.
-/

/-! ## A000461.P10034405513708924028

`(n+1)*A078191(n+1)`
-/

namespace A000461.P10034405513708924028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A078191 (n + 1)

end

end A000461.P10034405513708924028

/-! ## A000461.P8318351191519199730

`A083451(n+1)+A000312(n+1)`
-/

namespace A000461.P8318351191519199730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083451 (n + 1) + A000312 (n + 1)

end

end A000461.P8318351191519199730

/-! ## A000461.P5303770649779575677

`(∑{p}[4^(n+1), round(e/#)]+n)*∑[10^n]`
-/

namespace A000461.P5303770649779575677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.exp 1 / (p : ℝ)) + (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A000461.P5303770649779575677

/-! ## A000461.P4274289393906921249

`A068325(∑[2^n])`
-/

namespace A000461.P4274289393906921249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068325 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000461.P4274289393906921249

/-! ## A000461.P6187362673704947700

`(n+1)*A071161(2^n)`
-/

namespace A000461.P6187362673704947700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071161 (2 ^ n)

end

end A000461.P6187362673704947700

/-!
# A000462: Numbers written in base of triangular numbers.

The programs for A000462, there is no canonical definition to state claims against.
-/

/-! ## A000462.P12374975152185482137

`A169683(∑[A216635(A242474(n+1))])`
-/

namespace A000462.P12374975152185482137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (A242474 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000462.P12374975152185482137

/-! ## A000462.P6400067188453619735

`eq[A000035(A058008(n+1)), A235049(n)]`
-/

namespace A000462.P6400067188453619735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A058008 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000462.P6400067188453619735

/-! ## A000462.P11541355915943830339

`A340051(A032575(n+1)^A136400(n))`
-/

namespace A000462.P11541355915943830339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340051 (SequenceMachineLib.roundAway ((A032575 (n + 1) : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A000462.P11541355915943830339

/-! ## A000462.P6985782037731364024

`A340051(C(A032575(n+1), A136400(n)))`
-/

namespace A000462.P6985782037731364024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340051 (Nat.choose (A032575 (n + 1)).toNat (A136400 n).toNat)

end

end A000462.P6985782037731364024

/-!
# A000463: n followed by n^2.

The programs for A000463, the canonical program `A000463.P5548531094295790740` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000463 has offset 1).

The definition of A000463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000463.P5548531094295790740

`((-1)^(n+2)+1)/4*(n+2)-((-1)^(n+2)-1)/8*(n+1)²`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000463

/-- `((-1)^(n+2)+1)/4*(n+2)-((-1)^(n+2)-1)/8*(n+1)²` -/
def P5548531094295790740.Spec : Prop :=
  ∀ n, P5548531094295790740.a n = (A000463 (n + 1) : ℚ)

end A000463

/-! ## A000463.P9323616526111154901

`∑[log2(gcd(2, n))]^gcd(2, n+1)`
-/

namespace A000463.P9323616526111154901
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.gcd 2 (n + 1)

end

end A000463.P9323616526111154901

namespace A000463

/-- `∑[log2(gcd(2, n))]^gcd(2, n+1)` -/
def P9323616526111154901.Spec : Prop :=
  ∀ n, P9323616526111154901.a n = (A000463 (n + 1) : ℝ)

end A000463

/-! ## A000463.P3092264093578337089

`∑[char[2*n]]^(n%2+1)`
-/

namespace A000463.P3092264093578337089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n % 2 + 1)

end

end A000463.P3092264093578337089

namespace A000463

/-- `∑[char[2*n]]^(n%2+1)` -/
def P3092264093578337089.Spec : Prop :=
  ∀ n, (P3092264093578337089.a n : ℤ) = A000463 (n + 1)

end A000463

/-! ## A000463.P5339554670600943652

`∑[C(n, and(1, n))-a(n-1)]` with `a(0)=1`
-/

namespace A000463.P5339554670600943652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.choose n (Nat.land 1 n) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000463.P5339554670600943652

namespace A000463

/-- `∑[C(n, and(1, n))-a(n-1)]` -/
def P5339554670600943652.Spec : Prop :=
  ∀ n, P5339554670600943652.a n = A000463 (n + 1)

end A000463

/-! ## A000463.P14307224270391678350

`gcd(∑[n+1]², floor(((n+1)/2)²))`
-/

namespace A000463.P14307224270391678350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) ⌊((n + 1 : ℚ) / 2) ^ 2⌋

end

end A000463.P14307224270391678350

namespace A000463

/-- `gcd(∑[n+1]², floor(((n+1)/2)²))` -/
def P14307224270391678350.Spec : Prop :=
  ∀ n, (P14307224270391678350.a n : ℤ) = A000463 (n + 1)

end A000463

/-! ## A000463.P14088881867749791821

`round(((n+1)/2)^gcd(n-1, 2*n))`
-/

namespace A000463.P14088881867749791821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℚ) / 2) ^ Int.gcd ((n : ℤ) - 1) (2 * n : ℤ))

end

end A000463.P14088881867749791821

namespace A000463

/-- `round(((n+1)/2)^gcd(n-1, 2*n))` -/
def P14088881867749791821.Spec : Prop :=
  ∀ n, P14088881867749791821.a n = A000463 (n + 1)

end A000463

/-! ## A000463.P7054238479585088977

`∑[n+1]²%∑[a(n-2)+4]` with `a(0)=5, a(1)=3`
-/

namespace A000463.P7054238479585088977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5, 3] fun n f2 =>
  f2 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A000463.P7054238479585088977

namespace A000463

/-- `∑[n+1]²%∑[a(n-2)+4]` -/
def P7054238479585088977.Spec : Prop :=
  ∀ n, (P7054238479585088977.a n : ℤ) = A000463 (n + 1)

end A000463

/-! ## A000463.P4655206368691252575

`∑[n^(a(n-1)%2)²-a(n-1)]` with `a(0)=1`
-/

namespace A000463.P4655206368691252575
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) ^ (Int.tmod (SequenceMachineLib.roundAway (f1 (n - 1))) 2 ^ 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000463.P4655206368691252575

namespace A000463

/-- `∑[n^(a(n-1)%2)²-a(n-1)]` -/
def P4655206368691252575.Spec : Prop :=
  ∀ n, P4655206368691252575.a n = (A000463 (n + 1) : ℚ)

end A000463

/-! ## A000463.P1929304316123835124

`A008619(n)*A152271(n)`
-/

namespace A000463.P1929304316123835124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A152271 n

end

end A000463.P1929304316123835124

namespace A000463

/-- `A008619(n)*A152271(n)` -/
def P1929304316123835124.Spec : Prop :=
  ∀ n, P1929304316123835124.a n = A000463 (n + 1)

end A000463

/-! ## A000463.P15520921842968726661

`A152271(n)²*A158416(n)`
-/

namespace A000463.P15520921842968726661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n ^ 2 * A158416 n

end

end A000463.P15520921842968726661

namespace A000463

/-- `A152271(n)²*A158416(n)` -/
def P15520921842968726661.Spec : Prop :=
  ∀ n, P15520921842968726661.a n = A000463 (n + 1)

end A000463

/-! ## A000463.P14183238638188074137

`A008619(n)²/A158416(n)`
-/

namespace A000463.P14183238638188074137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n ^ 2 : ℚ) / (A158416 n : ℚ)

end

end A000463.P14183238638188074137

namespace A000463

/-- `A008619(n)²/A158416(n)` -/
def P14183238638188074137.Spec : Prop :=
  ∀ n, P14183238638188074137.a n = (A000463 (n + 1) : ℚ)

end A000463

/-!
# A000464: Expansion of e.g.f. sin(x)/cos(2*x).

The programs for A000464, there is no canonical definition to state claims against.
-/

/-! ## A000464.P187865065968043719

`A000822(Δ[n²])`
-/

namespace A000464.P187865065968043719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000822 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000464.P187865065968043719

/-! ## A000464.P12549600922019057747

`A001586(Δ[n²])`
-/

namespace A000464.P12549600922019057747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001586 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000464.P12549600922019057747

/-! ## A000464.P6032793259858122017

`abs(A188458(Δ[n²]))`
-/

namespace A000464.P6032793259858122017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188458 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A000464.P6032793259858122017

/-! ## A000464.P16323328570713634981

`abs(A212435(Δ[n²]))`
-/

namespace A000464.P16323328570713634981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212435 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A000464.P16323328570713634981

/-! ## A000464.P14540844096582421605

`lcm(2, A188458(2*n+1))/2`
-/

namespace A000464.P14540844096582421605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A188458 (2 * n + 1)) : ℚ) / 2

end

end A000464.P14540844096582421605

/-!
# A000465: Number of bipartite partitions of n white objects and 4 black ones.

The programs for A000465, there is no canonical definition to state claims against.
-/

/-! ## A000465.P10858906335043039838

`A031127(n)+1`
-/

namespace A000465.P10858906335043039838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031127 n + 1

end

end A000465.P10858906335043039838

/-! ## A000465.P3006999320350714419

`n-(A023443(n)-A031127(n))`
-/

namespace A000465.P3006999320350714419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A031127 n)

end

end A000465.P3006999320350714419

/-! ## A000465.P5548013700543133589

`abs(A033999(A016969(n))-A031127(n))`
-/

namespace A000465.P5548013700543133589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 (A016969 n).toNat - A031127 n|

end

end A000465.P5548013700543133589

/-! ## A000465.P9142601242393069842

`abs(A057428(A028310(n))-A031127(n))`
-/

namespace A000465.P9142601242393069842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 (A028310 n).toNat - A031127 n|

end

end A000465.P9142601242393069842

/-! ## A000465.P6167070302172372944

`A000007(n)-(A057428(n)-A031127(n))`
-/

namespace A000465.P6167070302172372944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A057428 n - A031127 n)

end

end A000465.P6167070302172372944

/-! ## A000465.P16953008991219411678

`A054225(∑[n+5]+5)`
-/

namespace A000465.P16953008991219411678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A000465.P16953008991219411678

/-! ## A000465.P2378463744008071136

`record[A054225(A052905(abs(1-n)+1))]`
-/

namespace A000465.P2378463744008071136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A052905 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000465.P2378463744008071136

/-! ## A000465.P1514975215327146050

`or(A000007(n), A054225(A052905(n+2)))`
-/

namespace A000465.P1514975215327146050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A054225 (A052905 (n + 2)).toNat)

end

end A000465.P1514975215327146050

/-! ## A000465.P1899132829909160870

`or(A000038(n)², A054225(A052905(n+2)))`
-/

namespace A000465.P1899132829909160870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n ^ 2) (A054225 (A052905 (n + 2)).toNat)

end

end A000465.P1899132829909160870

/-! ## A000465.P2415845703954278961

`A054225(A052905(n+2))+A000038(n+1)`
-/

namespace A000465.P2415845703954278961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A052905 (n + 2)).toNat + A000038 (n + 1)

end

end A000465.P2415845703954278961

/-! ## A000465.P11676952302875078319

`A010685(2*n)*A054225(A052905(n+2))`
-/

namespace A000465.P11676952302875078319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (2 * n) * A054225 (A052905 (n + 2)).toNat

end

end A000465.P11676952302875078319

/-! ## A000465.P14690389722585180754

`A054225(A052905(n+2))%A011785(n+2)`
-/

namespace A000465.P14690389722585180754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054225 (A052905 (n + 2)).toNat) (A011785 (n + 2))

end

end A000465.P14690389722585180754

/-! ## A000465.P14436014532464879632

`A016969(n)%2*A054225(A052905(n+2))`
-/

namespace A000465.P14436014532464879632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) 2 * A054225 (A052905 (n + 2)).toNat

end

end A000465.P14436014532464879632

/-! ## A000465.P3529874479543562843

`lcm(A020985(n), A054225(A167499(n+3)-1))`
-/

namespace A000465.P3529874479543562843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A054225 (A167499 (n + 3) - 1).toNat)

end

end A000465.P3529874479543562843

/-! ## A000465.P1188405865708228324

`or(A000007(n), A054225(A167499(n+3)-1))`
-/

namespace A000465.P1188405865708228324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A054225 (A167499 (n + 3) - 1).toNat)

end

end A000465.P1188405865708228324

/-! ## A000465.P13646784738174201395

`A032629(n+1)%2*A054225(A052905(n+2))`
-/

namespace A000465.P13646784738174201395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032629 (n + 1)) 2 * A054225 (A052905 (n + 2)).toNat

end

end A000465.P13646784738174201395

/-! ## A000465.P457383422870336412

`A032631(n+1)%2*A054225(A052905(n+2))`
-/

namespace A000465.P457383422870336412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032631 (n + 1)) 2 * A054225 (A052905 (n + 2)).toNat

end

end A000465.P457383422870336412

/-! ## A000465.P15384576270850416845

`A032632(n+1)%2*A054225(A052905(n+2))`
-/

namespace A000465.P15384576270850416845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032632 (n + 1)) 2 * A054225 (A052905 (n + 2)).toNat

end

end A000465.P15384576270850416845

/-! ## A000465.P2552299736344768421

`A032650(n+1)%2*A054225(A052905(n+2))`
-/

namespace A000465.P2552299736344768421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032650 (n + 1)) 2 * A054225 (A052905 (n + 2)).toNat

end

end A000465.P2552299736344768421

/-! ## A000465.P1582997764705901578

`A054225(A052905(n+2))/A010685(n+2+n)`
-/

namespace A000465.P1582997764705901578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054225 (A052905 (n + 2)).toNat : ℚ) / (A010685 (n + 2 + n) : ℚ)

end

end A000465.P1582997764705901578

/-!
# A000466: a(n) = 4*n^2 - 1.

The programs for A000466, the canonical program `A000466.P5626493666969552810` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000466 has offset 0).

The definition of A000466 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²-1` (program `A000466.P5626493666969552810`, by `A000466.P5626493666969552810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000466.P5626493666969552810

`4*n²-1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000466

/-- `4*n²-1` -/
def P5626493666969552810.Spec : Prop :=
  ∀ n, P5626493666969552810.a n = A000466 n

theorem P5626493666969552810.correct : P5626493666969552810.Spec := by
  intro n
  simp only [A000466]

end A000466

/-! ## A000466.P6175745718743065197

`xor(-(2*n)², -1)`
-/

namespace A000466.P6175745718743065197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-((2 * n) ^ 2 : ℤ)) (-1)

end

end A000466.P6175745718743065197

namespace A000466

/-- `xor(-(2*n)², -1)` -/
def P6175745718743065197.Spec : Prop :=
  ∀ n, P6175745718743065197.a n = A000466 n

end A000466

/-! ## A000466.P18065775897827670876

`-or(1, -(2*n)²)`
-/

namespace A000466.P18065775897827670876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-((2 * n) ^ 2 : ℤ))

end

end A000466.P18065775897827670876

namespace A000466

/-- `-or(1, -(2*n)²)` -/
def P18065775897827670876.Spec : Prop :=
  ∀ n, P18065775897827670876.a n = A000466 n

end A000466

/-! ## A000466.P10123486571773503549

`Δ[C(2*n, 3)-n]`
-/

namespace A000466.P10123486571773503549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000466.P10123486571773503549

namespace A000466

/-- `Δ[C(2*n, 3)-n]` -/
def P10123486571773503549.Spec : Prop :=
  ∀ n, P10123486571773503549.a n = A000466 n

end A000466

/-! ## A000466.P16529991490034985777

`floor(cot(sinh(acot((2*n)²))))`
-/

namespace A000466.P16529991490034985777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.sinh (SequenceMachineLib.acot ((2 * n) ^ 2 : ℝ)))⌋

end

end A000466.P16529991490034985777

namespace A000466

/-- `floor(cot(sinh(acot((2*n)²))))` -/
def P16529991490034985777.Spec : Prop :=
  ∀ n, P16529991490034985777.a n = A000466 n

end A000466

/-! ## A000466.P9649267883692800695

`record[and(n, n+1)²-1]`
-/

namespace A000466.P9649267883692800695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land n (n + 1) ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000466.P9649267883692800695

namespace A000466

/-- `record[and(n, n+1)²-1]` -/
def P9649267883692800695.Spec : Prop :=
  ∀ n, P9649267883692800695.a n = A000466 n

end A000466

/-! ## A000466.P5929586040575051902

`∑[a(n-1)+8]` with `a(0)=-1, a(1)=4`
-/

namespace A000466.P5929586040575051902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 4] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000466.P5929586040575051902

namespace A000466

/-- `∑[a(n-1)+8]` -/
def P5929586040575051902.Spec : Prop :=
  ∀ n, P5929586040575051902.a n = A000466 n

end A000466

/-! ## A000466.P17323322945206653580

`∑[ogf((-1+6x+3x^2)/(1-2x+x^2))]`
-/

namespace A000466.P17323322945206653580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 6, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000466.P17323322945206653580

namespace A000466

/-- `∑[ogf((-1+6x+3x^2)/(1-2x+x^2))]` -/
def P17323322945206653580.Spec : Prop :=
  ∀ n, P17323322945206653580.a n = A000466 n

end A000466

/-! ## A000466.P15119369234257150512

`ogf((-1+6x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A000466.P15119369234257150512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 6, 3] [1, -3, 3, -1] n

end

end A000466.P15119369234257150512

namespace A000466

/-- `ogf((-1+6x+3x^2)/(1-3x+3x^2-x^3))` -/
def P15119369234257150512.Spec : Prop :=
  ∀ n, P15119369234257150512.a n = A000466 n

end A000466

/-! ## A000466.P6034573054453004205

`or(3, ∑[4*(2*n-1)])`
-/

namespace A000466.P6034573054453004205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((2 * n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000466.P6034573054453004205

namespace A000466

/-- `or(3, ∑[4*(2*n-1)])` -/
def P6034573054453004205.Spec : Prop :=
  ∀ n, P6034573054453004205.a n = A000466 n

end A000466

/-! ## A000466.P13436531995200813962

`record[(n+1)*xor(1, n-2)]`
-/

namespace A000466.P13436531995200813962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.xor 1 ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000466.P13436531995200813962

namespace A000466

/-- `record[(n+1)*xor(1, n-2)]` -/
def P13436531995200813962.Spec : Prop :=
  ∀ n, P13436531995200813962.a n = A000466 n

end A000466

/-! ## A000466.P9939446439369460998

`(2*n-1)*record[xor(1, n)]`
-/

namespace A000466.P9939446439369460998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A000466.P9939446439369460998

namespace A000466

/-- `(2*n-1)*record[xor(1, n)]` -/
def P9939446439369460998.Spec : Prop :=
  ∀ n, P9939446439369460998.a n = A000466 n

end A000466

/-! ## A000466.P4504977479469879246

`-(Δ[-C(2*n, 3)]+1)`
-/

namespace A000466.P4504977479469879246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (2 * n) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n + 1)

end

end A000466.P4504977479469879246

namespace A000466

/-- `-(Δ[-C(2*n, 3)]+1)` -/
def P4504977479469879246.Spec : Prop :=
  ∀ n, P4504977479469879246.a n = A000466 n

end A000466

/-! ## A000466.P5225508160158229328

`(2*n-1)*or(1, 2*n)`
-/

namespace A000466.P5225508160158229328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * (Nat.lor 1 (2 * n) : ℤ)

end

end A000466.P5225508160158229328

namespace A000466

/-- `(2*n-1)*or(1, 2*n)` -/
def P5225508160158229328.Spec : Prop :=
  ∀ n, P5225508160158229328.a n = A000466 n

end A000466

/-! ## A000466.P11843560784964084301

`(2*n-1)*xor(1, 2*n)`
-/

namespace A000466.P11843560784964084301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * (Nat.xor 1 (2 * n) : ℤ)

end

end A000466.P11843560784964084301

namespace A000466

/-- `(2*n-1)*xor(1, 2*n)` -/
def P11843560784964084301.Spec : Prop :=
  ∀ n, P11843560784964084301.a n = A000466 n

end A000466

/-! ## A000466.P6291842087320114378

`ceil(2*n/acot(2*n)-ϕ)`
-/

namespace A000466.P6291842087320114378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) - Real.goldenRatio⌉

end

end A000466.P6291842087320114378

namespace A000466

/-- `ceil(2*n/acot(2*n)-ϕ)` -/
def P6291842087320114378.Spec : Prop :=
  ∀ n, P6291842087320114378.a n = A000466 n

end A000466

/-! ## A000466.P1625220488917340918

`(lcm(2, 2*n)+1)*(2*n-1)`
-/

namespace A000466.P1625220488917340918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n) + 1 : ℤ) * ((2 * n : ℤ) - 1)

end

end A000466.P1625220488917340918

namespace A000466

/-- `(lcm(2, 2*n)+1)*(2*n-1)` -/
def P1625220488917340918.Spec : Prop :=
  ∀ n, P1625220488917340918.a n = A000466 n

theorem P1625220488917340918.correct : P1625220488917340918.Spec := by
  intro n
  simp only [A000466, Nat.add_sub_cancel, A000466.P1625220488917340918.a, A000466.P5626493666969552810.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A000466

/-! ## A000466.P17754845559727295243

`-((2*n+1)*or(1, -(2*n)))`
-/

namespace A000466.P17754845559727295243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n + 1 : ℤ) * Int.lor 1 (-(2 * n : ℤ)))

end

end A000466.P17754845559727295243

namespace A000466

/-- `-((2*n+1)*or(1, -(2*n)))` -/
def P17754845559727295243.Spec : Prop :=
  ∀ n, P17754845559727295243.a n = A000466 n

end A000466

/-! ## A000466.P15915758199603353602

`-((2*n+1)*xor(1, -(2*n)))`
-/

namespace A000466.P15915758199603353602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n + 1 : ℤ) * Int.xor 1 (-(2 * n : ℤ)))

end

end A000466.P15915758199603353602

namespace A000466

/-- `-((2*n+1)*xor(1, -(2*n)))` -/
def P15915758199603353602.Spec : Prop :=
  ∀ n, P15915758199603353602.a n = A000466 n

end A000466

/-! ## A000466.P9626649194185885806

`(2*n+1)*(2*gcd(n, 2*n)-1)`
-/

namespace A000466.P9626649194185885806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((2 * Nat.gcd n (2 * n) : ℤ) - 1)

end

end A000466.P9626649194185885806

namespace A000466

/-- `(2*n+1)*(2*gcd(n, 2*n)-1)` -/
def P9626649194185885806.Spec : Prop :=
  ∀ n, P9626649194185885806.a n = A000466 n

theorem P9626649194185885806.correct : P9626649194185885806.Spec := by
  intro n
  simp only [A000466, Nat.add_sub_cancel, A000466.P9626649194185885806.a, A000466.P5626493666969552810.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A000466

/-!
# A000467: Number of permutations of [n] in which the longest increasing run has length 6.

The programs for A000467, there is no canonical definition to state claims against.
-/

/-! ## A000467.P16809877684249747231

`A177553(n+1)-A177533(n+1)`
-/

namespace A000467.P16809877684249747231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177553 (n + 1) - A177533 (n + 1)

end

end A000467.P16809877684249747231

/-! ## A000467.P6776069987558926717

`A177553(char[2]+1+n)%A177533(n+1)`
-/

namespace A000467.P6776069987558926717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177553 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)) (A177533 (n + 1))

end

end A000467.P6776069987558926717

/-! ## A000467.P18357456440279446233

`A177553(A028431(n+1))%-A177533(n+1)`
-/

namespace A000467.P18357456440279446233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177553 (A028431 (n + 1)).toNat) (-A177533 (n + 1))

end

end A000467.P18357456440279446233

/-! ## A000467.P453239615124607054

`Δ[A266534(C(n, 6))]`
-/

namespace A000467.P453239615124607054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266534 (Nat.choose n 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000467.P453239615124607054

/-!
# A000468: Powers of ten written in base 8.

The programs for A000468, there is no canonical definition to state claims against.
-/

/-! ## A000468.P18065786587215382513

`A007094(10^n)`
-/

namespace A000468.P18065786587215382513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (10 ^ n)

end

end A000468.P18065786587215382513

/-!
# A000469: 1 together with products of 2 or more distinct primes.

The programs for A000469, the canonical program `A000469.P516089823978451219` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000469 has offset 1).

The definition of A000469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000469.P1755839828690750412

`eq[1, A354819(n+1)]+1`
-/

namespace A000469.P1755839828690750412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000469.P1755839828690750412

namespace A000469

/-- `eq[1, A354819(n+1)]+1` -/
def P1755839828690750412.Spec : Prop :=
  ∀ n, (P1755839828690750412.a n : ℤ) = A000469 (n + 1)

end A000469

/-! ## A000469.P516089823978451219

`A120944(floor(C(n, a(n-1))/2+n))` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A000469

/-- `A120944(floor(C(n, a(n-1))/2+n))` -/
def P516089823978451219.Spec : Prop :=
  ∀ n, P516089823978451219.a n = A000469 (n + 1)

theorem P516089823978451219.correct : P516089823978451219.Spec := by
  intro n
  simp only [A000469, Nat.add_sub_cancel]

end A000469

/-! ## A000469.P11941156835512480831

`A361321(A361324(n+1))`
-/

namespace A000469.P11941156835512480831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361321 (A361324 (n + 1)).toNat

end

end A000469.P11941156835512480831

namespace A000469

/-- `A361321(A361324(n+1))` -/
def P11941156835512480831.Spec : Prop :=
  ∀ n, P11941156835512480831.a n = A000469 (n + 1)

end A000469

/-! ## A000469.P12458096359020996188

`∪[A120944(n+1), A006859(n)]`
-/

namespace A000469.P12458096359020996188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006859 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000469.P12458096359020996188

namespace A000469

/-- `∪[A120944(n+1), A006859(n)]` -/
def P12458096359020996188.Spec : Prop :=
  ∀ n, (P12458096359020996188.a n : ℤ) = A000469 (n + 1)

end A000469

/-! ## A000469.P9070876736870010129

`∪[A120944(n+1), A008922(n)]`
-/

namespace A000469.P9070876736870010129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000469.P9070876736870010129

namespace A000469

/-- `∪[A120944(n+1), A008922(n)]` -/
def P9070876736870010129.Spec : Prop :=
  ∀ n, (P9070876736870010129.a n : ℤ) = A000469 (n + 1)

end A000469

/-! ## A000469.P942828311766568085

`∪[A120944(n+1), A017177(n)]`
-/

namespace A000469.P942828311766568085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017177 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000469.P942828311766568085

namespace A000469

/-- `∪[A120944(n+1), A017177(n)]` -/
def P942828311766568085.Spec : Prop :=
  ∀ n, (P942828311766568085.a n : ℤ) = A000469 (n + 1)

end A000469

/-! ## A000469.P6024224683372675034

`eq[A010051(n+1), A048146(n+1)]+1`
-/

namespace A000469.P6024224683372675034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A000469.P6024224683372675034

namespace A000469

/-- `eq[A010051(n+1), A048146(n+1)]+1` -/
def P6024224683372675034.Spec : Prop :=
  ∀ n, (P6024224683372675034.a n : ℤ) = A000469 (n + 1)

end A000469

/-! ## A000469.P546693120210667892

`eq[A008683(n+1)², A005171(n+1)]+1`
-/

namespace A000469.P546693120210667892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A000469.P546693120210667892

namespace A000469

/-- `eq[A008683(n+1)², A005171(n+1)]+1` -/
def P546693120210667892.Spec : Prop :=
  ∀ n, (P546693120210667892.a n : ℤ) = A000469 (n + 1)

end A000469

/-! ## A000469.P4666433627978946412

`record[A007913(A018252(n+1))]`
-/

namespace A000469.P4666433627978946412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000469.P4666433627978946412

namespace A000469

/-- `record[A007913(A018252(n+1))]` -/
def P4666433627978946412.Spec : Prop :=
  ∀ n, P4666433627978946412.a n = A000469 (n + 1)

end A000469

/-! ## A000469.P7526250533060252314

`record[A083346(A018252(n+2))]`
-/

namespace A000469.P7526250533060252314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000469.P7526250533060252314

namespace A000469

/-- `record[A083346(A018252(n+2))]` -/
def P7526250533060252314.Spec : Prop :=
  ∀ n, P7526250533060252314.a n = A000469 (n + 1)

end A000469

/-! ## A000469.P7302966140212491750

`filter[A067582(n+1), A008966(#)]`
-/

namespace A000469.P7302966140212491750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A000469.P7302966140212491750

namespace A000469

/-- `filter[A067582(n+1), A008966(#)]` -/
def P7302966140212491750.Spec : Prop :=
  ∀ n, P7302966140212491750.a n = A000469 (n + 1)

end A000469

/-! ## A000469.P905998185137435651

`filter[A067582(n+1), A353519(#)]`
-/

namespace A000469.P905998185137435651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A000469.P905998185137435651

namespace A000469

/-- `filter[A067582(n+1), A353519(#)]` -/
def P905998185137435651.Spec : Prop :=
  ∀ n, P905998185137435651.a n = A000469 (n + 1)

end A000469

/-! ## A000469.P2113407631498627578

`filter[A067582(n+1), A354819(#)]`
-/

namespace A000469.P2113407631498627578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A000469.P2113407631498627578

namespace A000469

/-- `filter[A067582(n+1), A354819(#)]` -/
def P2113407631498627578.Spec : Prop :=
  ∀ n, P2113407631498627578.a n = A000469 (n + 1)

end A000469

/-! ## A000469.P8800662631358279846

`filter[A067582(n+1), A359471(#)]`
-/

namespace A000469.P8800662631358279846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A000469.P8800662631358279846

namespace A000469

/-- `filter[A067582(n+1), A359471(#)]` -/
def P8800662631358279846.Spec : Prop :=
  ∀ n, P8800662631358279846.a n = A000469 (n + 1)

end A000469

/-! ## A000469.P878782104490613240

`filter[A067582(n+1), A359834(#)]`
-/

namespace A000469.P878782104490613240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A000469.P878782104490613240

namespace A000469

/-- `filter[A067582(n+1), A359834(#)]` -/
def P878782104490613240.Spec : Prop :=
  ∀ n, P878782104490613240.a n = A000469 (n + 1)

end A000469

/-! ## A000469.P1126506133606836282

`filter[A069169(n+1), A008966(#)]`
-/

namespace A000469.P1126506133606836282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A000469.P1126506133606836282

namespace A000469

/-- `filter[A069169(n+1), A008966(#)]` -/
def P1126506133606836282.Spec : Prop :=
  ∀ n, P1126506133606836282.a n = A000469 (n + 1)

end A000469

/-! ## A000469.P16887073071417561095

`filter[A069169(n+1), A323154(#)]`
-/

namespace A000469.P16887073071417561095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A000469.P16887073071417561095

namespace A000469

/-- `filter[A069169(n+1), A323154(#)]` -/
def P16887073071417561095.Spec : Prop :=
  ∀ n, P16887073071417561095.a n = A000469 (n + 1)

end A000469

/-! ## A000469.P14054843449135504857

`filter[A069169(n+1), A354819(#)]`
-/

namespace A000469.P14054843449135504857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A000469.P14054843449135504857

namespace A000469

/-- `filter[A069169(n+1), A354819(#)]` -/
def P14054843449135504857.Spec : Prop :=
  ∀ n, P14054843449135504857.a n = A000469 (n + 1)

end A000469

/-! ## A000469.P4679476896868541995

`filter[A005117(n+1), A005171(#)]`
-/

namespace A000469.P4679476896868541995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A000469.P4679476896868541995

namespace A000469

/-- `filter[A005117(n+1), A005171(#)]` -/
def P4679476896868541995.Spec : Prop :=
  ∀ n, P4679476896868541995.a n = A000469 (n + 1)

end A000469

/-! ## A000469.P14236284975342812062

`filter[A005117(n+1), A354819(#)]`
-/

namespace A000469.P14236284975342812062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A000469.P14236284975342812062

namespace A000469

/-- `filter[A005117(n+1), A354819(#)]` -/
def P14236284975342812062.Spec : Prop :=
  ∀ n, P14236284975342812062.a n = A000469 (n + 1)

end A000469

/-!
# A000471: a(n) = floor(sinh(n)).

The programs for A000471, the canonical program `A000471.P8385910161446910534` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000471 has offset 0).

The definition of A000471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sinh(n))` (program `A000471.P8385910161446910534`, by `A000471.P8385910161446910534.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000471.P8385910161446910534

`floor(sinh(n))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000471

/-- `floor(sinh(n))` -/
def P8385910161446910534.Spec : Prop :=
  ∀ n, P8385910161446910534.a n = A000471 n

theorem P8385910161446910534.correct : P8385910161446910534.Spec := by
  intro n
  simp only [A000471]

end A000471

/-! ## A000471.P15536768464419521414

`floor(exp(n)/2)`
-/

namespace A000471.P15536768464419521414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (n : ℝ) / 2⌋

end

end A000471.P15536768464419521414

namespace A000471

/-- `floor(exp(n)/2)` -/
def P15536768464419521414.Spec : Prop :=
  ∀ n, P15536768464419521414.a n = A000471 n

end A000471

/-! ## A000471.P648349410603356925

`ceil(2*sinh(n/2)²)`
-/

namespace A000471.P648349410603356925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sinh ((n : ℚ) / 2 : ℝ) ^ 2⌉

end

end A000471.P648349410603356925

namespace A000471

/-- `ceil(2*sinh(n/2)²)` -/
def P648349410603356925.Spec : Prop :=
  ∀ n, P648349410603356925.a n = A000471 n

end A000471

/-! ## A000471.P10480067832767976973

`ceil((A000149(n)-1)/2)`
-/

namespace A000471.P10480067832767976973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000149 n - 1 : ℚ) / 2⌉

end

end A000471.P10480067832767976973

namespace A000471

/-- `ceil((A000149(n)-1)/2)` -/
def P10480067832767976973.Spec : Prop :=
  ∀ n, P10480067832767976973.a n = A000471 n

end A000471

/-! ## A000471.P4369930885452180116

`A000501(n)-A000007(n)`
-/

namespace A000471.P4369930885452180116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000501 n - A000007 n

end

end A000471.P4369930885452180116

namespace A000471

/-- `A000501(n)-A000007(n)` -/
def P4369930885452180116.Spec : Prop :=
  ∀ n, P4369930885452180116.a n = A000471 n

end A000471

/-! ## A000471.P11124572920132408950

`A000501(n)*A057427(n)`
-/

namespace A000471.P11124572920132408950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000501 n * A057427 n

end

end A000471.P11124572920132408950

namespace A000471

/-- `A000501(n)*A057427(n)` -/
def P11124572920132408950.Spec : Prop :=
  ∀ n, P11124572920132408950.a n = A000471 n

end A000471

/-! ## A000471.P1684046215138529148

`A000501(n)%A000149(n)`
-/

namespace A000471.P1684046215138529148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000501 n) (A000149 n)

end

end A000471.P1684046215138529148

namespace A000471

/-- `A000501(n)%A000149(n)` -/
def P1684046215138529148.Spec : Prop :=
  ∀ n, P1684046215138529148.a n = A000471 n

end A000471

/-! ## A000471.P12044727610657760984

`and(A000501(n), A057428(n))`
-/

namespace A000471.P12044727610657760984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000501 n) (A057428 n)

end

end A000471.P12044727610657760984

namespace A000471

/-- `and(A000501(n), A057428(n))` -/
def P12044727610657760984.Spec : Prop :=
  ∀ n, P12044727610657760984.a n = A000471 n

end A000471

/-! ## A000471.P6210127495141211396

`and(A000501(n), A134824(n))`
-/

namespace A000471.P6210127495141211396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000501 n) (A134824 n)

end

end A000471.P6210127495141211396

namespace A000471

/-- `and(A000501(n), A134824(n))` -/
def P6210127495141211396.Spec : Prop :=
  ∀ n, P6210127495141211396.a n = A000471 n

end A000471

/-! ## A000471.P4191192722505959627

`A000501(n)-A019590(n+2)`
-/

namespace A000471.P4191192722505959627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000501 n - A019590 (n + 2)

end

end A000471.P4191192722505959627

namespace A000471

/-- `A000501(n)-A019590(n+2)` -/
def P4191192722505959627.Spec : Prop :=
  ∀ n, P4191192722505959627.a n = A000471 n

end A000471

/-! ## A000471.P2117243777135687391

`A000501(n)-A169585(2*n)`
-/

namespace A000471.P2117243777135687391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000501 n - A169585 (2 * n)

end

end A000471.P2117243777135687391

namespace A000471

/-- `A000501(n)-A169585(2*n)` -/
def P2117243777135687391.Spec : Prop :=
  ∀ n, P2117243777135687391.a n = A000471 n

end A000471

/-! ## A000471.P10350057265527490586

`A000501(n)-char[A000541(3*n)]`
-/

namespace A000471.P10350057265527490586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000501 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000471.P10350057265527490586

namespace A000471

/-- `A000501(n)-char[A000541(3*n)]` -/
def P10350057265527490586.Spec : Prop :=
  ∀ n, P10350057265527490586.a n = A000471 n

end A000471

/-! ## A000471.P767064055590521167

`A000007(A000007(n)*A000501(n))*A000501(n)`
-/

namespace A000471.P767064055590521167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000007 n * A000501 n).toNat * A000501 n

end

end A000471.P767064055590521167

namespace A000471

/-- `A000007(A000007(n)*A000501(n))*A000501(n)` -/
def P767064055590521167.Spec : Prop :=
  ∀ n, P767064055590521167.a n = A000471 n

end A000471

/-! ## A000471.P17066233720510492025

`ceil(cosh(n))-1`
-/

namespace A000471.P17066233720510492025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (n : ℝ)⌉ - 1

end

end A000471.P17066233720510492025

namespace A000471

/-- `ceil(cosh(n))-1` -/
def P17066233720510492025.Spec : Prop :=
  ∀ n, P17066233720510492025.a n = A000471 n

end A000471

/-! ## A000471.P10337792776069790702

`floor(cosh(n))%(3^n)`
-/

namespace A000471.P10337792776069790702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.cosh (n : ℝ)⌋ (3 ^ n : ℤ)

end

end A000471.P10337792776069790702

namespace A000471

/-- `floor(cosh(n))%(3^n)` -/
def P10337792776069790702.Spec : Prop :=
  ∀ n, P10337792776069790702.a n = A000471 n

end A000471

/-! ## A000471.P17433829947966561773

`n-ceil(n-sinh(n))`
-/

namespace A000471.P17433829947966561773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(n : ℝ) - Real.sinh (n : ℝ)⌉

end

end A000471.P17433829947966561773

namespace A000471

/-- `n-ceil(n-sinh(n))` -/
def P17433829947966561773.Spec : Prop :=
  ∀ n, P17433829947966561773.a n = A000471 n

end A000471

/-! ## A000471.P13215716554508728946

`n-floor(n+1-cosh(n))`
-/

namespace A000471.P13215716554508728946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n + 1 : ℝ) - Real.cosh (n : ℝ)⌋

end

end A000471.P13215716554508728946

namespace A000471

/-- `n-floor(n+1-cosh(n))` -/
def P13215716554508728946.Spec : Prop :=
  ∀ n, P13215716554508728946.a n = A000471 n

end A000471

/-! ## A000471.P13779292375292283345

`and(A000501(n), A024036(n))`
-/

namespace A000471.P13779292375292283345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000501 n) (A024036 n)

end

end A000471.P13779292375292283345

namespace A000471

/-- `and(A000501(n), A024036(n))` -/
def P13779292375292283345.Spec : Prop :=
  ∀ n, P13779292375292283345.a n = A000471 n

end A000471

/-! ## A000471.P10966119010995431799

`and(A000501(n), A198693(n))`
-/

namespace A000471.P10966119010995431799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000501 n) (A198693 n)

end

end A000471.P10966119010995431799

namespace A000471

/-- `and(A000501(n), A198693(n))` -/
def P10966119010995431799.Spec : Prop :=
  ∀ n, P10966119010995431799.a n = A000471 n

end A000471

/-! ## A000471.P428671115654549260

`and(A000501(n), A114569(n))`
-/

namespace A000471.P428671115654549260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000501 n) (A114569 n)

end

end A000471.P428671115654549260

namespace A000471

/-- `and(A000501(n), A114569(n))` -/
def P428671115654549260.Spec : Prop :=
  ∀ n, P428671115654549260.a n = A000471 n

end A000471

/-!
# A000472: a(n) = a(n-1)^2 + (a(n-2) + 1)*(a(n-1) - a(n-2)^2).

The programs for A000472, the canonical program `A000472.P12086270111024475168` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000472 has offset 1).

The definition of A000472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+(a(n-2)+1)*(a(n-1)-a(n-2)²)` (program `A000472.P12086270111024475168`, by `A000472.P12086270111024475168.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000472.P12086270111024475168

`a(n-1)²+(a(n-2)+1)*(a(n-1)-a(n-2)²)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000472

/-- `a(n-1)²+(a(n-2)+1)*(a(n-1)-a(n-2)²)` -/
def P12086270111024475168.Spec : Prop :=
  ∀ n, P12086270111024475168.a n = A000472 (n + 1)

theorem P12086270111024475168.correct : P12086270111024475168.Spec := by
  intro n
  simp only [A000472, Nat.add_sub_cancel]

end A000472

/-! ## A000472.P13256012561028057749

`A369607(n+1)-1`
-/

namespace A000472.P13256012561028057749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369607 (n + 1) - 1

end

end A000472.P13256012561028057749

namespace A000472

/-- `A369607(n+1)-1` -/
def P13256012561028057749.Spec : Prop :=
  ∀ n, P13256012561028057749.a n = A000472 (n + 1)

end A000472

/-! ## A000472.P1473135814109697906

`floor(sqrt(A369607(n+2)))`
-/

namespace A000472.P1473135814109697906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A369607 (n + 2))

end

end A000472.P1473135814109697906

namespace A000472

/-- `floor(sqrt(A369607(n+2)))` -/
def P1473135814109697906.Spec : Prop :=
  ∀ n, P1473135814109697906.a n = A000472 (n + 1)

end A000472

/-!
# A000473: Number of genus 0 rooted maps with 5 faces and n vertices.

The programs for A000473, there is no canonical definition to state claims against.
-/

/-! ## A000473.P11263728492072613215

`A269920(A155212(n)+12)`
-/

namespace A000473.P11263728492072613215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (A155212 n + 12).toNat

end

end A000473.P11263728492072613215

/-! ## A000473.P2845320470746301305

`A269920(eq[4, A002262(n)])`
-/

namespace A000473.P2845320470746301305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000473.P2845320470746301305

/-! ## A000473.P12099328232038485441

`A269920(A000096(n+3)+5)`
-/

namespace A000473.P12099328232038485441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (A000096 (n + 3) + 5).toNat

end

end A000473.P12099328232038485441

/-! ## A000473.P15811593826210103493

`A269920(A000217(n+5)-(n+1))`
-/

namespace A000473.P15811593826210103493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A000473.P15811593826210103493

/-! ## A000473.P17947032236634432679

`A269920(∑[n+5]+5)`
-/

namespace A000473.P17947032236634432679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A000473.P17947032236634432679

/-!
# A000474: Number of nonisomorphic 1-factorizations of complete graph K_{2n}.

The programs for A000474, there is no canonical definition to state claims against.
-/

/-! ## A000474.P13006567780247379701

`or(A003056(n)², A350017(n+1))`
-/

namespace A000474.P13006567780247379701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 n ^ 2) (A350017 (n + 1))

end

end A000474.P13006567780247379701

/-! ## A000474.P13683265285598517087

`A350017(n+1)+A284117(A000110(n))`
-/

namespace A000474.P13683265285598517087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350017 (n + 1) + A284117 (A000110 n).toNat

end

end A000474.P13683265285598517087

/-! ## A000474.P5412195901350657159

`or(A350017(n+1), A350042(A350012(n+1)))`
-/

namespace A000474.P5412195901350657159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A350017 (n + 1)) (A350042 (A350012 (n + 1)).toNat)

end

end A000474.P5412195901350657159

/-!
# A000475: Rencontres numbers: number of permutations of [n] with exactly 4 fixed points.

The programs for A000475, the canonical program `A000475.P5195117471153812020` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000475 has offset 4).

The definition of A000475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000475.P5195117471153812020

`(n+4)*a(n-1)+(-1)^(n+4)*C(n+4, 4)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000475

/-- `(n+4)*a(n-1)+(-1)^(n+4)*C(n+4, 4)` -/
def P5195117471153812020.Spec : Prop :=
  ∀ n, P5195117471153812020.a n = A000475 (n + 4)

theorem P5195117471153812020.correct : P5195117471153812020.Spec := by
  intro n
  simp only [A000475, Nat.add_sub_cancel]

end A000475

/-! ## A000475.P1478618642280753702

`A000166(n)*C(n+4, 4)`
-/

namespace A000475.P1478618642280753702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * (Nat.choose (n + 4) 4 : ℤ)

end

end A000475.P1478618642280753702

namespace A000475

/-- `A000166(n)*C(n+4, 4)` -/
def P1478618642280753702.Spec : Prop :=
  ∀ n, P1478618642280753702.a n = A000475 (n + 4)

end A000475

/-! ## A000475.P16953053315281189337

`abs(A182386(n))*C(n+4, 4)`
-/

namespace A000475.P16953053315281189337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| * (Nat.choose (n + 4) 4 : ℤ)

end

end A000475.P16953053315281189337

namespace A000475

/-- `abs(A182386(n))*C(n+4, 4)` -/
def P16953053315281189337.Spec : Prop :=
  ∀ n, P16953053315281189337.a n = A000475 (n + 4)

end A000475

/-! ## A000475.P4455359717482986000

`A098825(A052905(n+2))`
-/

namespace A000475.P4455359717482986000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A052905 (n + 2)).toNat

end

end A000475.P4455359717482986000

namespace A000475

/-- `A098825(A052905(n+2))` -/
def P4455359717482986000.Spec : Prop :=
  ∀ n, P4455359717482986000.a n = A000475 (n + 4)

end A000475

/-! ## A000475.P10102204571696971821

`A008290(eq[4, A002262(n)])`
-/

namespace A000475.P10102204571696971821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000475.P10102204571696971821

namespace A000475

/-- `A008290(eq[4, A002262(n)])` -/
def P10102204571696971821.Spec : Prop :=
  ∀ n, P10102204571696971821.a n = A000475 (n + 4)

end A000475

/-! ## A000475.P9148045553635949246

`A098825(eq[4, A025581(n)])`
-/

namespace A000475.P9148045553635949246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000475.P9148045553635949246

namespace A000475

/-- `A098825(eq[4, A025581(n)])` -/
def P9148045553635949246.Spec : Prop :=
  ∀ n, P9148045553635949246.a n = A000475 (n + 4)

end A000475

/-! ## A000475.P15954424540497742433

`A008290(A000217(n+4)+4)`
-/

namespace A000475.P15954424540497742433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A000217 (n + 4) + 4).toNat

end

end A000475.P15954424540497742433

namespace A000475

/-- `A008290(A000217(n+4)+4)` -/
def P15954424540497742433.Spec : Prop :=
  ∀ n, P15954424540497742433.a n = A000475 (n + 4)

end A000475

/-! ## A000475.P13980162048557696151

`∑[A000292(n+1)]*A000166(n)`
-/

namespace A000475.P13980162048557696151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000166 n

end

end A000475.P13980162048557696151

namespace A000475

/-- `∑[A000292(n+1)]*A000166(n)` -/
def P13980162048557696151.Spec : Prop :=
  ∀ n, P13980162048557696151.a n = A000475 (n + 4)

end A000475

/-! ## A000475.P9727905149299435588

`A008290(eq[2, A144328(n+1)-2])`
-/

namespace A000475.P9727905149299435588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000475.P9727905149299435588

namespace A000475

/-- `A008290(eq[2, A144328(n+1)-2])` -/
def P9727905149299435588.Spec : Prop :=
  ∀ n, P9727905149299435588.a n = A000475 (n + 4)

end A000475

/-! ## A000475.P3730271860563854768

`A008290(eq[2, A144328(n+1)/2])`
-/

namespace A000475.P3730271860563854768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A000475.P3730271860563854768

namespace A000475

/-- `A008290(eq[2, A144328(n+1)/2])` -/
def P3730271860563854768.Spec : Prop :=
  ∀ n, P3730271860563854768.a n = A000475 (n + 4)

end A000475

/-!
# A000477: a(n) = Sum_{k=1..n-1} k^2*sigma(k)*sigma(n-k).

The programs for A000477, there is no canonical definition to state claims against.
-/

/-! ## A000477.P1706946517186946245

`A028900(Δ[A309294(n)]²)`
-/

namespace A000477.P1706946517186946245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A000477.P1706946517186946245

/-!
# A000478: Number of ways of placing n labeled balls into 3 indistinguishable boxes with at least 2 balls in each box.

The programs for A000478, the canonical program `A000478.P1701058267609821545` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000478 has offset 6).

The definition of A000478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000478.P1701058267609821545

`3*a(n-1)+(2^(n+3)-(n+6)+1)*(n+5)` with `a(0)=15`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000478

/-- `3*a(n-1)+(2^(n+3)-(n+6)+1)*(n+5)` -/
def P1701058267609821545.Spec : Prop :=
  ∀ n, P1701058267609821545.a n = A000478 (n + 6)

theorem P1701058267609821545.correct : P1701058267609821545.Spec := by
  intro n
  simp only [A000478, Nat.add_sub_cancel]

end A000478

/-! ## A000478.P7183974069069927966

`(1+n+6+(n+6)²)/2-(1/2+(n+6)/4)*2^(n+6)+3^(n+6)/6`
-/

namespace A000478.P7183974069069927966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (n + 6) + (n + 6) ^ 2 : ℚ) / 2 - ((1 : ℚ) / 2 + (n + 6 : ℚ) / 4) * (2 ^ (n + 6) : ℚ) + (3 ^ (n + 6) : ℚ) / 6

end

end A000478.P7183974069069927966

namespace A000478

/-- `(1+n+6+(n+6)²)/2-(1/2+(n+6)/4)*2^(n+6)+3^(n+6)/6` -/
def P7183974069069927966.Spec : Prop :=
  ∀ n, P7183974069069927966.a n = (A000478 (n + 6) : ℚ)

theorem P7183974069069927966.correct : P7183974069069927966.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000478, Nat.add_sub_cancel, A000478.P7183974069069927966.a, A000478.P1701058267609821545.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000478, Nat.add_sub_cancel, A000478.P7183974069069927966.a, A000478.P1701058267609821545.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000478

/-! ## A000478.P12305892760603011759

`A224541(n+6)/6`
-/

namespace A000478.P12305892760603011759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224541 (n + 6) : ℚ) / 6

end

end A000478.P12305892760603011759

namespace A000478

/-- `A224541(n+6)/6` -/
def P12305892760603011759.Spec : Prop :=
  ∀ n, P12305892760603011759.a n = (A000478 (n + 6) : ℚ)

end A000478

/-! ## A000478.P747374417576748437

`A008299(A002620(n+7)-(n+2))`
-/

namespace A000478.P747374417576748437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008299 (A002620 (n + 7) - (n + 2 : ℤ)).toNat

end

end A000478.P747374417576748437

namespace A000478

/-- `A008299(A002620(n+7)-(n+2))` -/
def P747374417576748437.Spec : Prop :=
  ∀ n, P747374417576748437.a n = A000478 (n + 6)

end A000478

/-! ## A000478.P14167320785688871574

`A008299(n+8+A002620(n+3))`
-/

namespace A000478.P14167320785688871574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008299 ((n + 8 : ℤ) + A002620 (n + 3)).toNat

end

end A000478.P14167320785688871574

namespace A000478

/-- `A008299(n+8+A002620(n+3))` -/
def P14167320785688871574.Spec : Prop :=
  ∀ n, P14167320785688871574.a n = A000478 (n + 6)

end A000478

/-! ## A000478.P11068551776076152754

`record[A008299(n+10)/A008299(n+8)]`
-/

namespace A000478.P11068551776076152754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008299 (n + 10) : ℚ) / (A008299 (n + 8) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000478.P11068551776076152754

namespace A000478

/-- `record[A008299(n+10)/A008299(n+8)]` -/
def P11068551776076152754.Spec : Prop :=
  ∀ n, P11068551776076152754.a n = (A000478 (n + 6) : ℚ)

end A000478

/-! ## A000478.P11486459621120851015

`A134991(∑[n+2]+4)`
-/

namespace A000478.P11486459621120851015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A000478.P11486459621120851015

namespace A000478

/-- `A134991(∑[n+2]+4)` -/
def P11486459621120851015.Spec : Prop :=
  ∀ n, P11486459621120851015.a n = A000478 (n + 6)

end A000478

/-! ## A000478.P5937735739503456171

`A269939(A167614(n+2))`
-/

namespace A000478.P5937735739503456171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269939 (A167614 (n + 2)).toNat

end

end A000478.P5937735739503456171

namespace A000478

/-- `A269939(A167614(n+2))` -/
def P5937735739503456171.Spec : Prop :=
  ∀ n, P5937735739503456171.a n = A000478 (n + 6)

end A000478

/-!
# A000479: Number of 1-factorizations of K_{n,n}.

The programs for A000479, there is no canonical definition to state claims against.
-/

/-! ## A000479.P6085718082699617389

`A002860(round(sqrt(n²+1)))/A000142(n)`
-/

namespace A000479.P6085718082699617389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002860 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / (A000142 n : ℚ)

end

end A000479.P6085718082699617389

/-! ## A000479.P7185286244091502497

`A344693(A028310(n))/A001044(n)`
-/

namespace A000479.P7185286244091502497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344693 (A028310 n).toNat : ℚ) / (A001044 n : ℚ)

end

end A000479.P7185286244091502497

/-! ## A000479.P9323660370825536591

`abs(A002860(A028310(n))/A133942(n))`
-/

namespace A000479.P9323660370825536591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A002860 (A028310 n).toNat : ℚ) / (A133942 n : ℚ)|

end

end A000479.P9323660370825536591

/-! ## A000479.P10440894939713091924

`abs(A002860(A028310(n))/A165233(n))`
-/

namespace A000479.P10440894939713091924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A002860 (A028310 n).toNat : ℚ) / (A165233 n : ℚ)|

end

end A000479.P10440894939713091924

/-!
# A000480: a(n) = floor(cos(n)).

The programs for A000480, the canonical program `A000480.P8452483823509095733` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000480 has offset 0).

The definition of A000480 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(cos(n))` (program `A000480.P8452483823509095733`, by `A000480.P8452483823509095733.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000480.P8452483823509095733

`floor(cos(n))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000480

/-- `floor(cos(n))` -/
def P8452483823509095733.Spec : Prop :=
  ∀ n, P8452483823509095733.a n = A000480 n

theorem P8452483823509095733.correct : P8452483823509095733.Spec := by
  intro n
  simp only [A000480]

end A000480

/-!
# A000481: Stirling numbers of the second kind, S(n,5).

The programs for A000481, the canonical program `A000481.P6772728993080842638` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000481 has offset 5).

The definition of A000481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000481.P6772728993080842638

`(1-4^(n+5)+2*(3^(n+5)-2^(n+5))+5^(n+4))/24`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000481

/-- `(1-4^(n+5)+2*(3^(n+5)-2^(n+5))+5^(n+4))/24` -/
def P6772728993080842638.Spec : Prop :=
  ∀ n, P6772728993080842638.a n = (A000481 (n + 5) : ℚ)

end A000481

/-! ## A000481.P8155117945791702188

`∑[A025211(n)]`
-/

namespace A000481.P8155117945791702188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000481.P8155117945791702188

namespace A000481

/-- `∑[A025211(n)]` -/
def P8155117945791702188.Spec : Prop :=
  ∀ n, P8155117945791702188.a n = A000481 (n + 5)

end A000481

/-! ## A000481.P12831367306743647427

`A056474(2*(n+5))`
-/

namespace A000481.P12831367306743647427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056474 (2 * (n + 5))

end

end A000481.P12831367306743647427

namespace A000481

/-- `A056474(2*(n+5))` -/
def P12831367306743647427.Spec : Prop :=
  ∀ n, P12831367306743647427.a n = A000481 (n + 5)

end A000481

/-! ## A000481.P3798607127601819395

`A056511(2*n+9)`
-/

namespace A000481.P3798607127601819395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (2 * n + 9)

end

end A000481.P3798607127601819395

namespace A000481

/-- `A056511(2*n+9)` -/
def P3798607127601819395.Spec : Prop :=
  ∀ n, P3798607127601819395.a n = A000481 (n + 5)

end A000481

/-! ## A000481.P8785211388678617225

`A021024(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A000481.P8785211388678617225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A021024 n + 4 * a (n - 1)

end

end A000481.P8785211388678617225

namespace A000481

/-- `A021024(n)+4*a(n-1)` -/
def P8785211388678617225.Spec : Prop :=
  ∀ n, P8785211388678617225.a n = A000481 (n + 5)

end A000481

/-! ## A000481.P3147377481896215310

`a(n-1)+A021344(n)+a(n-1)` with `a(0)=1`
-/

namespace A000481.P3147377481896215310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A021344 n + a (n - 1))

end

end A000481.P3147377481896215310

namespace A000481

/-- `a(n-1)+A021344(n)+a(n-1)` -/
def P3147377481896215310.Spec : Prop :=
  ∀ n, P3147377481896215310.a n = A000481 (n + 5)

end A000481

/-! ## A000481.P2854609037856531517

`record[A056511(n-(n%2-1))+floor(acot(n))]`
-/

namespace A000481.P2854609037856531517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 ((n : ℤ) - (((n % 2 : ℕ) : ℤ) - 1)).toNat + ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000481.P2854609037856531517

namespace A000481

/-- `record[A056511(n-(n%2-1))+floor(acot(n))]` -/
def P2854609037856531517.Spec : Prop :=
  ∀ n, P2854609037856531517.a n = A000481 (n + 5)

end A000481

/-! ## A000481.P534345281907977942

`∑[A099111(n)+A099111(n)-A004058(n)]`
-/

namespace A000481.P534345281907977942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099111 n + (A099111 n - A004058 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000481.P534345281907977942

namespace A000481

/-- `∑[A099111(n)+A099111(n)-A004058(n)]` -/
def P534345281907977942.Spec : Prop :=
  ∀ n, P534345281907977942.a n = A000481 (n + 5)

end A000481

/-! ## A000481.P15021704592864917077

`∑[2*A099111(n)-A004058(n)]`
-/

namespace A000481.P15021704592864917077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099111 n - A004058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000481.P15021704592864917077

namespace A000481

/-- `∑[2*A099111(n)-A004058(n)]` -/
def P15021704592864917077.Spec : Prop :=
  ∀ n, P15021704592864917077.a n = A000481 (n + 5)

end A000481

/-! ## A000481.P12550589893349775794

`A048993(A167499(n+4))`
-/

namespace A000481.P12550589893349775794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A167499 (n + 4)).toNat

end

end A000481.P12550589893349775794

namespace A000481

/-- `A048993(A167499(n+4))` -/
def P12550589893349775794.Spec : Prop :=
  ∀ n, P12550589893349775794.a n = A000481 (n + 5)

end A000481

/-!
# A000482: Unsigned Stirling numbers of first kind s(n,5).

The programs for A000482, there is no canonical definition to state claims against.
-/

/-! ## A000482.P1996212985128138004

`A132393(∑[a(n-1)+1])` with `a(0)=20, a(1)=6`
-/

namespace A000482.P1996212985128138004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [20, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000482.P1996212985128138004

/-! ## A000482.P15331538085302068336

`A094638(Δ[A264443(n)])`
-/

namespace A000482.P15331538085302068336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (f1 (n + 1) - f1 n).toNat

end

end A000482.P15331538085302068336

/-! ## A000482.P15170183580778753625

`A132393(A167499(n+4))`
-/

namespace A000482.P15170183580778753625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A167499 (n + 4)).toNat

end

end A000482.P15170183580778753625

/-! ## A000482.P12465693847477011213

`A130534(A155212(n)+12)`
-/

namespace A000482.P12465693847477011213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A155212 n + 12).toNat

end

end A000482.P12465693847477011213

/-! ## A000482.P15642057400292246476

`A130534(A056000(n)+14)`
-/

namespace A000482.P15642057400292246476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A056000 n + 14).toNat

end

end A000482.P15642057400292246476

/-! ## A000482.P7206719746577201959

`A130534(eq[4, A002262(n)])`
-/

namespace A000482.P7206719746577201959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000482.P7206719746577201959

/-! ## A000482.P4737208438074678141

`A132393(eq[5, A002262(n)])`
-/

namespace A000482.P4737208438074678141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000482.P4737208438074678141

/-! ## A000482.P9427923709749439081

`record[abs(A054654(A055999(n)))]`
-/

namespace A000482.P9427923709749439081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054654 (A055999 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000482.P9427923709749439081

/-! ## A000482.P13825202976932486635

`A130534(A000096(n+3)+5)`
-/

namespace A000482.P13825202976932486635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A000096 (n + 3) + 5).toNat

end

end A000482.P13825202976932486635

/-! ## A000482.P13277317990736568183

`A130534(eq[5, A002260(n+1)])`
-/

namespace A000482.P13277317990736568183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000482.P13277317990736568183

/-!
# A000483: Associated Stirling numbers: second-order reciprocal Stirling numbers (Fekete) a(n) = [[n, 3]]. The number of 3-orbit permutations of an n-set with at least 2 elements in each orbit.

The programs for A000483, there is no canonical definition to state claims against.
-/

/-! ## A000483.P2507370555809199703

`(n+5)*A112488(n+2)`
-/

namespace A000483.P2507370555809199703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A112488 (n + 2)

end

end A000483.P2507370555809199703

/-! ## A000483.P12058413871939983496

`A079510(A056115(n)+13)`
-/

namespace A000483.P12058413871939983496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079510 (A056115 n + 13).toNat

end

end A000483.P12058413871939983496

/-! ## A000483.P2920271499591580125

`record[A106828(A257020(n+1))]`
-/

namespace A000483.P2920271499591580125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106828 (A257020 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000483.P2920271499591580125

/-! ## A000483.P14711775156646012243

`A079510(A264443(n+1)-A264443(n)+2)`
-/

namespace A000483.P14711775156646012243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079510 (A264443 (n + 1) - A264443 n + 2).toNat

end

end A000483.P14711775156646012243

/-! ## A000483.P4346837243368158835

`A269940(A167614(n+2))`
-/

namespace A000483.P4346837243368158835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269940 (A167614 (n + 2)).toNat

end

end A000483.P4346837243368158835

/-! ## A000483.P15204978842159925011

`abs(A111999(∑[n+3]+1))`
-/

namespace A000483.P15204978842159925011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111999 (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A000483.P15204978842159925011

/-!
# A000484: a(n) = round(cos(n)).

The programs for A000484, the canonical program `A000484.P4045633764807094259` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000484 has offset 0).

The definition of A000484 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(cos(n))` (program `A000484.P4045633764807094259`, by `A000484.P4045633764807094259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000484.P4045633764807094259

`round(cos(n))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000484

/-- `round(cos(n))` -/
def P4045633764807094259.Spec : Prop :=
  ∀ n, P4045633764807094259.a n = A000484 n

theorem P4045633764807094259.correct : P4045633764807094259.Spec := by
  intro n
  simp only [A000484]

end A000484

/-!
# A000485: Number of partially labeled trees with n nodes (4 of which are labeled).

The programs for A000485, there is no canonical definition to state claims against.
-/

/-! ## A000485.P2527549295112060061

`A034799(eq[3, A141169(n)])`
-/

namespace A000485.P2527549295112060061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000485.P2527549295112060061

/-! ## A000485.P5219144772935857623

`A034799(eq[4, A002262(n)])`
-/

namespace A000485.P5219144772935857623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000485.P5219144772935857623

/-! ## A000485.P4263847213095364115

`A034799(eq[5, A140207(n)])`
-/

namespace A000485.P4263847213095364115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000485.P4263847213095364115

/-! ## A000485.P12566393873664339486

`A034799(eq[16, A059268(n)])`
-/

namespace A000485.P12566393873664339486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000485.P12566393873664339486

/-! ## A000485.P5496668278274460217

`A034799(eq[5, A002260(n+1)])`
-/

namespace A000485.P5496668278274460217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000485.P5496668278274460217

/-!
# A000486: One half of the number of permutations of [n] such that the differences have 4 runs with the same signs.

The programs for A000486, the canonical program `A000486.P14804195295319927566` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000486 has offset 5).

The definition of A000486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000486.P14804195295319927566

`2*A123003(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000486

/-- `2*A123003(n)` -/
def P14804195295319927566.Spec : Prop :=
  ∀ n, P14804195295319927566.a n = A000486 (n + 5)

theorem P14804195295319927566.correct : P14804195295319927566.Spec := by
  intro n
  simp only [A000486, Nat.add_sub_cancel]

end A000486

/-! ## A000486.P1296751996370999893

`A123003(A005408(n)-n-1)+A123003(n)`
-/

namespace A000486.P1296751996370999893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123003 (A005408 n - (n : ℤ) - 1).toNat + A123003 n

end

end A000486.P1296751996370999893

namespace A000486

/-- `A123003(A005408(n)-n-1)+A123003(n)` -/
def P1296751996370999893.Spec : Prop :=
  ∀ n, P1296751996370999893.a n = A000486 (n + 5)

end A000486

/-! ## A000486.P15209547635735012403

`A008970(A167499(n+2))`
-/

namespace A000486.P15209547635735012403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (A167499 (n + 2)).toNat

end

end A000486.P15209547635735012403

namespace A000486

/-- `A008970(A167499(n+2))` -/
def P15209547635735012403.Spec : Prop :=
  ∀ n, P15209547635735012403.a n = A000486 (n + 5)

end A000486

/-! ## A000486.P1700917289645511820

`A008970(A052905(n)+10)`
-/

namespace A000486.P1700917289645511820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (A052905 n + 10).toNat

end

end A000486.P1700917289645511820

namespace A000486

/-- `A008970(A052905(n)+10)` -/
def P1700917289645511820.Spec : Prop :=
  ∀ n, P1700917289645511820.a n = A000486 (n + 5)

end A000486

/-! ## A000486.P5012627561769829212

`A008970(A167614(n+2)+2)`
-/

namespace A000486.P5012627561769829212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (A167614 (n + 2) + 2).toNat

end

end A000486.P5012627561769829212

namespace A000486

/-- `A008970(A167614(n+2)+2)` -/
def P5012627561769829212.Spec : Prop :=
  ∀ n, P5012627561769829212.a n = A000486 (n + 5)

end A000486

/-! ## A000486.P1834034393324094735

`A008970(A000217(n+3)+5)`
-/

namespace A000486.P1834034393324094735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (A000217 (n + 3) + 5).toNat

end

end A000486.P1834034393324094735

namespace A000486

/-- `A008970(A000217(n+3)+5)` -/
def P1834034393324094735.Spec : Prop :=
  ∀ n, P1834034393324094735.a n = A000486 (n + 5)

end A000486

/-!
# A000487: Number of permutations of length n with exactly two valleys.

The programs for A000487, the canonical program `A000487.P8874464029128957278` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000487 has offset 5).

The definition of A000487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000487.P8874464029128957278

`(6^(n+5)+(2-2*(n+5))*4^(n+5)+(2*(n+5)²-4*(n+5)-1)*2^(n+5))/32`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000487

/-- `(6^(n+5)+(2-2*(n+5))*4^(n+5)+(2*(n+5)²-4*(n+5)-1)*2^(n+5))/32` -/
def P8874464029128957278.Spec : Prop :=
  ∀ n, P8874464029128957278.a n = (A000487 (n + 5) : ℚ)

end A000487

/-! ## A000487.P1171723067326818677

`16*A130651(n+4)`
-/

namespace A000487.P1171723067326818677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A130651 (n + 4)

end

end A000487.P1171723067326818677

namespace A000487

/-- `16*A130651(n+4)` -/
def P1171723067326818677.Spec : Prop :=
  ∀ n, P1171723067326818677.a n = A000487 (n + 5)

end A000487

/-!
# A000488: Generalized tangent numbers d_(n,3).

The programs for A000488, there is no canonical definition to state claims against.
-/

/-! ## A000488.P12737912805945771286

`A235606(∑[n+2]+4)`
-/

namespace A000488.P12737912805945771286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A000488.P12737912805945771286

/-! ## A000488.P12801221330997336961

`A235606(A167614(n+1))+A185245(n)`
-/

namespace A000488.P12801221330997336961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (A167614 (n + 1)).toNat + A185245 n

end

end A000488.P12801221330997336961

/-! ## A000488.P3413168147123688708

`A235606(A167614(n+1))*A304042(n)`
-/

namespace A000488.P3413168147123688708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (A167614 (n + 1)).toNat * A304042 n

end

end A000488.P3413168147123688708

/-! ## A000488.P15630520763604099813

`A000041(((-1)^n)²)*A235606(A167614(n+1))`
-/

namespace A000488.P15630520763604099813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (((-1) ^ n) ^ 2).toNat * A235606 (A167614 (n + 1)).toNat

end

end A000488.P15630520763604099813

/-! ## A000488.P9462325557721228749

`A000010(A014963(4*n+2))*A235606(A167614(n+1))`
-/

namespace A000488.P9462325557721228749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (4 * n + 2)).toNat * A235606 (A167614 (n + 1)).toNat

end

end A000488.P9462325557721228749

/-!
# A000489: Card matching: Coefficients B[n,3] of t^3 in the reduced hit polynomial A[n,n,n](t).

The programs for A000489, there is no canonical definition to state claims against.
-/

/-! ## A000489.P1671564263386034121

`A059066(∑[A016777(n)]+3)`
-/

namespace A000489.P1671564263386034121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059066 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A000489.P1671564263386034121

/-! ## A000489.P9816765181119755582

`A059066(A143689(n+1)+2)`
-/

namespace A000489.P9816765181119755582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059066 (A143689 (n + 1) + 2).toNat

end

end A000489.P9816765181119755582

/-! ## A000489.P6545400617046915410

`A059066(A000326(n+1)+3)`
-/

namespace A000489.P6545400617046915410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059066 (A000326 (n + 1) + 3).toNat

end

end A000489.P6545400617046915410

/-!
# A000490: Generalized Euler numbers c(4,n).

The programs for A000490, there is no canonical definition to state claims against.
-/

/-! ## A000490.P2999895975437966695

`A000364(n)*16^n`
-/

namespace A000490.P2999895975437966695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000364 n * (16 ^ n : ℤ)

end

end A000490.P2999895975437966695

/-! ## A000490.P690766608025641519

`A349264(2*n)`
-/

namespace A000490.P690766608025641519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349264 (2 * n)

end

end A000490.P690766608025641519

/-! ## A000490.P5967408218547399638

`4^n*A002436(n)`
-/

namespace A000490.P5967408218547399638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A002436 n

end

end A000490.P5967408218547399638

/-! ## A000490.P15307705997776711294

`lcm(16^n, A028296(n))`
-/

namespace A000490.P15307705997776711294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (16 ^ n : ℤ) (A028296 n)

end

end A000490.P15307705997776711294

/-! ## A000490.P14526552830773104286

`16^n*A125053(n²)`
-/

namespace A000490.P14526552830773104286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 ^ n : ℤ) * A125053 (n ^ 2)

end

end A000490.P14526552830773104286

/-!
# A000491: Number of bipartite partitions of n white objects and 5 black ones.

The programs for A000491, there is no canonical definition to state claims against.
-/

/-! ## A000491.P14536055867131980386

`A031128(n)+1`
-/

namespace A000491.P14536055867131980386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031128 n + 1

end

end A000491.P14536055867131980386

/-! ## A000491.P6115185297971775123

`A054225(A055999(n+3))`
-/

namespace A000491.P6115185297971775123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A055999 (n + 3)).toNat

end

end A000491.P6115185297971775123

/-! ## A000491.P16567890532061086231

`A054225(A056119(n)+15)`
-/

namespace A000491.P16567890532061086231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A056119 n + 15).toNat

end

end A000491.P16567890532061086231

/-! ## A000491.P1873458054866408201

`A054225(Δ[A023551(n+1)])`
-/

namespace A000491.P1873458054866408201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (f1 (n + 1) - f1 n).toNat

end

end A000491.P1873458054866408201

/-! ## A000491.P10145735391596554160

`A054225(Δ[A026054(n+3)])`
-/

namespace A000491.P10145735391596554160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (f1 (n + 1) - f1 n).toNat

end

end A000491.P10145735391596554160

/-! ## A000491.P10489604370630698020

`A054225(Δ[A023545(n+2)]-2)`
-/

namespace A000491.P10489604370630698020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (f1 (n + 1) - f1 n - 2).toNat

end

end A000491.P10489604370630698020

/-!
# A000493: a(n) = floor(sin(n)).

The programs for A000493, the canonical program `A000493.P9852377980788553267` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000493 has offset 0).

The definition of A000493 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sin(n))` (program `A000493.P9852377980788553267`, by `A000493.P9852377980788553267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000493.P9852377980788553267

`floor(sin(n))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000493

/-- `floor(sin(n))` -/
def P9852377980788553267.Spec : Prop :=
  ∀ n, P9852377980788553267.a n = A000493 n

theorem P9852377980788553267.correct : P9852377980788553267.Spec := by
  intro n
  simp only [A000493]

end A000493

/-!
# A000494: Nearest integer to sin(n).

The programs for A000494, the canonical program `A000494.P2596179860423022484` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000494 has offset 0).

The definition of A000494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000494.P2596179860423022484

`round(sin(n))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000494

/-- `round(sin(n))` -/
def P2596179860423022484.Spec : Prop :=
  ∀ n, P2596179860423022484.a n = A000494 n

theorem P2596179860423022484.correct : P2596179860423022484.Spec := by
  intro n
  simp only [A000494]

end A000494

/-!
# A000495: Nearest integer to sinh(n).

The programs for A000495, the canonical program `A000495.P2466991091611014578` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000495 has offset 0).

The definition of A000495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000495.P2466991091611014578

`floor(sinh(n)+1/2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000495

/-- `floor(sinh(n)+1/2)` -/
def P2466991091611014578.Spec : Prop :=
  ∀ n, P2466991091611014578.a n = A000495 n

theorem P2466991091611014578.correct : P2466991091611014578.Spec := by
  intro n
  simp only [A000495]

end A000495

/-! ## A000495.P4117423747962859937

`floor(ceil(exp(n))/2)`
-/

namespace A000495.P4117423747962859937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈Real.exp (n : ℝ)⌉ : ℚ) / 2⌋

end

end A000495.P4117423747962859937

namespace A000495

/-- `floor(ceil(exp(n))/2)` -/
def P4117423747962859937.Spec : Prop :=
  ∀ n, P4117423747962859937.a n = A000495 n

end A000495

/-! ## A000495.P9412995483154634793

`xor(C(3, n²), A002459(n))`
-/

namespace A000495.P9412995483154634793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose 3 (n ^ 2) : ℤ) (A002459 n)

end

end A000495.P9412995483154634793

namespace A000495

/-- `xor(C(3, n²), A002459(n))` -/
def P9412995483154634793.Spec : Prop :=
  ∀ n, P9412995483154634793.a n = A000495 n

end A000495

/-! ## A000495.P14652909988168751512

`A000149(n)-A000501(n)`
-/

namespace A000495.P14652909988168751512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 n - A000501 n

end

end A000495.P14652909988168751512

namespace A000495

/-- `A000149(n)-A000501(n)` -/
def P14652909988168751512.Spec : Prop :=
  ∀ n, P14652909988168751512.a n = A000495 n

end A000495

/-! ## A000495.P8122604124376304908

`xor(A002459(n), A169585(n))`
-/

namespace A000495.P8122604124376304908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002459 n) (A169585 n)

end

end A000495.P8122604124376304908

namespace A000495

/-- `xor(A002459(n), A169585(n))` -/
def P8122604124376304908.Spec : Prop :=
  ∀ n, P8122604124376304908.a n = A000495 n

end A000495

/-! ## A000495.P14761917728655486132

`A002459(n)-char[A002482(n)]`
-/

namespace A000495.P14761917728655486132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002482 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002459 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000495.P14761917728655486132

namespace A000495

/-- `A002459(n)-char[A002482(n)]` -/
def P14761917728655486132.Spec : Prop :=
  ∀ n, P14761917728655486132.a n = A000495 n

end A000495

/-! ## A000495.P6312209724248115880

`A002459(n)-A019590(n+1)`
-/

namespace A000495.P6312209724248115880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002459 n - A019590 (n + 1)

end

end A000495.P6312209724248115880

namespace A000495

/-- `A002459(n)-A019590(n+1)` -/
def P6312209724248115880.Spec : Prop :=
  ∀ n, P6312209724248115880.a n = A000495 n

end A000495

/-! ## A000495.P12203941258726891719

`A214077(A008486(n))-A000501(n)`
-/

namespace A000495.P12203941258726891719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214077 (A008486 n).toNat - A000501 n

end

end A000495.P12203941258726891719

namespace A000495

/-- `A214077(A008486(n))-A000501(n)` -/
def P12203941258726891719.Spec : Prop :=
  ∀ n, P12203941258726891719.a n = A000495 n

end A000495

/-! ## A000495.P14557409651016059551

`round(sinh(n))`
-/

namespace A000495.P14557409651016059551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (n : ℝ))

end

end A000495.P14557409651016059551

namespace A000495

/-- `round(sinh(n))` -/
def P14557409651016059551.Spec : Prop :=
  ∀ n, P14557409651016059551.a n = A000495 n

end A000495

/-! ## A000495.P7100048548088785182

`round(exp(n)-cosh(n))`
-/

namespace A000495.P7100048548088785182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (n : ℝ) - Real.cosh (n : ℝ))

end

end A000495.P7100048548088785182

namespace A000495

/-- `round(exp(n)-cosh(n))` -/
def P7100048548088785182.Spec : Prop :=
  ∀ n, P7100048548088785182.a n = A000495 n

end A000495

/-! ## A000495.P9578971383976776054

`ceil(sinh(n)-1/2)`
-/

namespace A000495.P9578971383976776054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (n : ℝ) - ((1 : ℚ) / 2 : ℝ)⌉

end

end A000495.P9578971383976776054

namespace A000495

/-- `ceil(sinh(n)-1/2)` -/
def P9578971383976776054.Spec : Prop :=
  ∀ n, P9578971383976776054.a n = A000495 n

end A000495

/-! ## A000495.P239194616636699510

`round(cosh(n)-(1/(n+1))²)`
-/

namespace A000495.P239194616636699510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (n : ℝ) - ((1 / (n + 1 : ℚ)) ^ 2 : ℝ))

end

end A000495.P239194616636699510

namespace A000495

/-- `round(cosh(n)-(1/(n+1))²)` -/
def P239194616636699510.Spec : Prop :=
  ∀ n, P239194616636699510.a n = A000495 n

end A000495

/-! ## A000495.P15985943066259807157

`round(cosh(n))-round(1/(n+1))`
-/

namespace A000495.P15985943066259807157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (n : ℝ)) - SequenceMachineLib.roundAway (1 / (n + 1 : ℚ))

end

end A000495.P15985943066259807157

namespace A000495

/-- `round(cosh(n))-round(1/(n+1))` -/
def P15985943066259807157.Spec : Prop :=
  ∀ n, P15985943066259807157.a n = A000495 n

end A000495

/-! ## A000495.P7164295543171119171

`ceil(cosh(n)-(n+1)/(2*n+1))`
-/

namespace A000495.P7164295543171119171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (n : ℝ) - ((n + 1 : ℚ) / (2 * n + 1 : ℚ) : ℝ)⌉

end

end A000495.P7164295543171119171

namespace A000495

/-- `ceil(cosh(n)-(n+1)/(2*n+1))` -/
def P7164295543171119171.Spec : Prop :=
  ∀ n, P7164295543171119171.a n = A000495 n

end A000495

/-! ## A000495.P5751064733295978781

`round(cot(e/cosh(n+1)))`
-/

namespace A000495.P5751064733295978781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.exp 1 / Real.cosh (n + 1 : ℝ)))

end

end A000495.P5751064733295978781

namespace A000495

/-- `round(cot(e/cosh(n+1)))` -/
def P5751064733295978781.Spec : Prop :=
  ∀ n, P5751064733295978781.a n = A000495 n

end A000495

/-! ## A000495.P2924411550578248694

`round(cosh(n)*tanh(n))`
-/

namespace A000495.P2924411550578248694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (n : ℝ) * Real.tanh (n : ℝ))

end

end A000495.P2924411550578248694

namespace A000495

/-- `round(cosh(n)*tanh(n))` -/
def P2924411550578248694.Spec : Prop :=
  ∀ n, P2924411550578248694.a n = A000495 n

end A000495

/-!
# A000496: Restricted permutations.

The programs for A000496, there is no canonical definition to state claims against.
-/

/-! ## A000496.P10908995250299421005

`A004306(n)-A347317(A014376(2*(n+2)))`
-/

namespace A000496.P10908995250299421005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004306 n - A347317 (A014376 (2 * (n + 2))).toNat

end

end A000496.P10908995250299421005

/-!
# A000497: S2(j,2j+2) where S2(n,k) is a 2-associated Stirling number of the second kind.

The programs for A000497, there is no canonical definition to state claims against.
-/

/-! ## A000497.P4744208906218608830

`∑[(n+1)²]*A051577(n)`
-/

namespace A000497.P4744208906218608830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A051577 n

end

end A000497.P4744208906218608830

/-! ## A000497.P10426723772246782602

`A001880(n+4)/A001879(n)*A000457(n)`
-/

namespace A000497.P10426723772246782602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001880 (n + 4) : ℚ) / (A001879 n : ℚ) * (A000457 n : ℚ)

end

end A000497.P10426723772246782602

/-! ## A000497.P12947603333363511489

`A134991(∑[n+3]+1)`
-/

namespace A000497.P12947603333363511489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000497.P12947603333363511489

/-! ## A000497.P14462648526278746269

`A008299((n+2)²)`
-/

namespace A000497.P14462648526278746269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008299 ((n + 2) ^ 2)

end

end A000497.P14462648526278746269

/-! ## A000497.P17017952837556458965

`record[A008299(A344888(n)²)]`
-/

namespace A000497.P17017952837556458965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008299 (A344888 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000497.P17017952837556458965

/-!
# A000498: Eulerian numbers (Euler's triangle: column k=4 of A008292, column k=3 of A173018).

The programs for A000498, the canonical program `A000498.P5377987917905714178` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000498 has offset 4).

The definition of A000498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000498.P5377987917905714178

`A066912(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000498

/-- `A066912(n+1)` -/
def P5377987917905714178.Spec : Prop :=
  ∀ n, P5377987917905714178.a n = A000498 (n + 4)

theorem P5377987917905714178.correct : P5377987917905714178.Spec := by
  intro n
  simp only [A000498, Nat.add_sub_cancel]

end A000498

/-! ## A000498.P1421080379471544799

`record[A066912(abs(1-n))]`
-/

namespace A000498.P1421080379471544799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066912 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000498.P1421080379471544799

namespace A000498

/-- `record[A066912(abs(1-n))]` -/
def P1421080379471544799.Spec : Prop :=
  ∀ n, P1421080379471544799.a n = A000498 (n + 4)

end A000498

/-! ## A000498.P24379859252010378

`A008292(A374004(n+1))`
-/

namespace A000498.P24379859252010378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A374004 (n + 1)).toNat

end

end A000498.P24379859252010378

namespace A000498

/-- `A008292(A374004(n+1))` -/
def P24379859252010378.Spec : Prop :=
  ∀ n, P24379859252010378.a n = A000498 (n + 4)

end A000498

/-! ## A000498.P9718422796169166857

`A173018(A167614(n+3))`
-/

namespace A000498.P9718422796169166857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A167614 (n + 3)).toNat

end

end A000498.P9718422796169166857

namespace A000498

/-- `A173018(A167614(n+3))` -/
def P9718422796169166857.Spec : Prop :=
  ∀ n, P9718422796169166857.a n = A000498 (n + 4)

end A000498

/-! ## A000498.P14192440145499628997

`A173018(A152950(n+5))`
-/

namespace A000498.P14192440145499628997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A152950 (n + 5)).toNat

end

end A000498.P14192440145499628997

namespace A000498

/-- `A173018(A152950(n+5))` -/
def P14192440145499628997.Spec : Prop :=
  ∀ n, P14192440145499628997.a n = A000498 (n + 4)

end A000498

/-! ## A000498.P17416439387180339666

`A008292(A052905(n)+9)`
-/

namespace A000498.P17416439387180339666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A052905 n + 9).toNat

end

end A000498.P17416439387180339666

namespace A000498

/-- `A008292(A052905(n)+9)` -/
def P17416439387180339666.Spec : Prop :=
  ∀ n, P17416439387180339666.a n = A000498 (n + 4)

end A000498

/-! ## A000498.P13025408896002424751

`A008292(A055999(n)+10)`
-/

namespace A000498.P13025408896002424751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A055999 n + 10).toNat

end

end A000498.P13025408896002424751

namespace A000498

/-- `A008292(A055999(n)+10)` -/
def P13025408896002424751.Spec : Prop :=
  ∀ n, P13025408896002424751.a n = A000498 (n + 4)

end A000498

/-! ## A000498.P1680303788402730502

`A123125(A155212(n)+12)`
-/

namespace A000498.P1680303788402730502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A155212 n + 12).toNat

end

end A000498.P1680303788402730502

namespace A000498

/-- `A123125(A155212(n)+12)` -/
def P1680303788402730502.Spec : Prop :=
  ∀ n, P1680303788402730502.a n = A000498 (n + 4)

end A000498

/-! ## A000498.P13364311238958159315

`A123125(A056000(n)+14)`
-/

namespace A000498.P13364311238958159315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A056000 n + 14).toNat

end

end A000498.P13364311238958159315

namespace A000498

/-- `A123125(A056000(n)+14)` -/
def P13364311238958159315.Spec : Prop :=
  ∀ n, P13364311238958159315.a n = A000498 (n + 4)

end A000498

/-! ## A000498.P15741571608022516328

`A123125(eq[4, A258651(n)])`
-/

namespace A000498.P15741571608022516328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000498.P15741571608022516328

namespace A000498

/-- `A123125(eq[4, A258651(n)])` -/
def P15741571608022516328.Spec : Prop :=
  ∀ n, P15741571608022516328.a n = A000498 (n + 4)

end A000498

/-!
# A000499: a(n) = Sum_{k=1..n-1} k^3*sigma(k)*sigma(n-k).

The programs for A000499, there is no canonical definition to state claims against.
-/

/-! ## A000499.P15668101012209103468

`A182160(A181357(n+1))+n`
-/

namespace A000499.P15668101012209103468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182160 (A181357 (n + 1)).toNat + (n : ℤ)

end

end A000499.P15668101012209103468

