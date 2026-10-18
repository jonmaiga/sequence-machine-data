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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A086300: Arithmetic derivative of 7-smooth numbers.

The programs for A086300, the canonical program `A086300.P13309129529402629296` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086300 has offset 1).

The definition of A086300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086300.P9826015132054824371

`A003415(A002473(n+1))`
-/

namespace A086300.P9826015132054824371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A002473 (n + 1)).toNat

end

end A086300.P9826015132054824371

namespace A086300

/-- `A003415(A002473(n+1))` -/
def P9826015132054824371.Spec : Prop :=
  ∀ n, P9826015132054824371.a n = A086300 (n + 1)

end A086300

/-! ## A086300.P13309129529402629296

`A003415(record[A071785(n+1)])`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A086300

/-- `A003415(record[A071785(n+1)])` -/
def P13309129529402629296.Spec : Prop :=
  ∀ n, P13309129529402629296.a n = A086300 (n + 1)

theorem P13309129529402629296.correct : P13309129529402629296.Spec := by
  intro n
  simp only [A086300, Nat.add_sub_cancel]

end A086300

/-! ## A086300.P15065816571651838632

`A003415(record[A262401(n+1)])`
-/

namespace A086300.P15065816571651838632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086300.P15065816571651838632

namespace A086300

/-- `A003415(record[A262401(n+1)])` -/
def P15065816571651838632.Spec : Prop :=
  ∀ n, P15065816571651838632.a n = A086300 (n + 1)

end A086300

/-! ## A086300.P620326842334681806

`A003415(A080194(n+1)/7)`
-/

namespace A086300.P620326842334681806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A080194 (n + 1) : ℚ) / 7)).toNat

end

end A086300.P620326842334681806

namespace A086300

/-- `A003415(A080194(n+1)/7)` -/
def P620326842334681806.Spec : Prop :=
  ∀ n, P620326842334681806.a n = A086300 (n + 1)

end A086300

/-! ## A086300.P13279513815067017341

`A003415(lt[A006530(n+1), 8]+1)`
-/

namespace A086300.P13279513815067017341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A086300.P13279513815067017341

namespace A086300

/-- `A003415(lt[A006530(n+1), 8]+1)` -/
def P13279513815067017341.Spec : Prop :=
  ∀ n, P13279513815067017341.a n = A086300 (n + 1)

end A086300

/-! ## A086300.P16963758546582589786

`A003415(record[A118541(n)])`
-/

namespace A086300.P16963758546582589786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086300.P16963758546582589786

namespace A086300

/-- `A003415(record[A118541(n)])` -/
def P16963758546582589786.Spec : Prop :=
  ∀ n, P16963758546582589786.a n = A086300 (n + 1)

end A086300

/-! ## A086300.P15844227773270296368

`A003415(eq[n, A118541(n)])`
-/

namespace A086300.P15844227773270296368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A086300.P15844227773270296368

namespace A086300

/-- `A003415(eq[n, A118541(n)])` -/
def P15844227773270296368.Spec : Prop :=
  ∀ n, P15844227773270296368.a n = A086300 (n + 1)

end A086300

/-! ## A086300.P5192179096538248902

`A319703(A085125(n+1))`
-/

namespace A086300.P5192179096538248902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A085125 (n + 1)).toNat

end

end A086300.P5192179096538248902

namespace A086300

/-- `A319703(A085125(n+1))` -/
def P5192179096538248902.Spec : Prop :=
  ∀ n, P5192179096538248902.a n = A086300 (n + 1)

end A086300

/-! ## A086300.P17760814138934398900

`A168036(A085127(n+1))/4`
-/

namespace A086300.P17760814138934398900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168036 (A085127 (n + 1)).toNat : ℚ) / 4

end

end A086300.P17760814138934398900

namespace A086300

/-- `A168036(A085127(n+1))/4` -/
def P17760814138934398900.Spec : Prop :=
  ∀ n, P17760814138934398900.a n = (A086300 (n + 1) : ℚ)

end A086300

/-! ## A086300.P12123698216712057468

`A379967(A147571(n+1))`
-/

namespace A086300.P12123698216712057468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379967 (A147571 (n + 1)).toNat

end

end A086300.P12123698216712057468

namespace A086300

/-- `A379967(A147571(n+1))` -/
def P12123698216712057468.Spec : Prop :=
  ∀ n, P12123698216712057468.a n = A086300 (n + 1)

end A086300

/-!
# A086301: Numbers n such that 1 +/ - 2n + 3n^2 are primes.

The programs for A086301, there is no canonical definition to state claims against.
-/

/-! ## A086301.P13431578187548215222

`∩[A086285(n+1), A086298(n+1)]`
-/

namespace A086301.P13431578187548215222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086301.P13431578187548215222

/-!
# A086302: a(n) = 4*n^4 + 24*n^3 + 48*n^2 + 36*n + 8.

The programs for A086302, the canonical program `A086302.P4520655770065289972` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086302 has offset 0).

The definition of A086302 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^4+24*n^3+48*n²+36*n+8` (program `A086302.P4520655770065289972`, by `A086302.P4520655770065289972.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086302.P6220816544753358261

`4*(n+1)*(n+2)*(n²+3*n+1)`
-/

namespace A086302.P6220816544753358261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1) * ((n + 2) * (n ^ 2 + 3 * n + 1)))

end

end A086302.P6220816544753358261

namespace A086302

/-- `4*(n+1)*(n+2)*(n²+3*n+1)` -/
def P6220816544753358261.Spec : Prop :=
  ∀ n, (P6220816544753358261.a n : ℤ) = A086302 n

theorem P6220816544753358261.correct : P6220816544753358261.Spec := by
  intro n
  simp only [A086302, Nat.add_sub_cancel, A086302.P6220816544753358261.a, A086302.P4520655770065289972.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A086302

/-! ## A086302.P4520655770065289972

`4*n^4+24*n^3+48*n²+36*n+8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086302

/-- `4*n^4+24*n^3+48*n²+36*n+8` -/
def P4520655770065289972.Spec : Prop :=
  ∀ n, (P4520655770065289972.a n : ℤ) = A086302 n

theorem P4520655770065289972.correct : P4520655770065289972.Spec := by
  intro n
  simp only [A086302]

end A086302

/-! ## A086302.P14149212213925811577

`xor(1, (∑[record[xor(3, n)]]+n)²)`
-/

namespace A086302.P14149212213925811577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2)

end

end A086302.P14149212213925811577

namespace A086302

/-- `xor(1, (∑[record[xor(3, n)]]+n)²)` -/
def P14149212213925811577.Spec : Prop :=
  ∀ n, (P14149212213925811577.a n : ℤ) = A086302 n

end A086302

/-! ## A086302.P13589863694557824376

`xor(1, ((n+3)*2*n+3)²)`
-/

namespace A086302.P13589863694557824376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (((n + 3) * (2 * n) + 3) ^ 2)

end

end A086302.P13589863694557824376

namespace A086302

/-- `xor(1, ((n+3)*2*n+3)²)` -/
def P13589863694557824376.Spec : Prop :=
  ∀ n, (P13589863694557824376.a n : ℤ) = A086302 n

end A086302

/-! ## A086302.P6213756986846407788

`∑[abs(Δ[(1-A046092(n))²])]`
-/

namespace A086302.P6213756986846407788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A046092 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086302.P6213756986846407788

namespace A086302

/-- `∑[abs(Δ[(1-A046092(n))²])]` -/
def P6213756986846407788.Spec : Prop :=
  ∀ n, P6213756986846407788.a n = A086302 n

end A086302

/-! ## A086302.P16366358008006940191

`∑[abs(Δ[A057769(n)])]`
-/

namespace A086302.P16366358008006940191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057769 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086302.P16366358008006940191

namespace A086302

/-- `∑[abs(Δ[A057769(n)])]` -/
def P16366358008006940191.Spec : Prop :=
  ∀ n, P16366358008006940191.a n = A086302 n

end A086302

/-! ## A086302.P5792996357853253756

`∑[2*A144138(n+1)]`
-/

namespace A086302.P5792996357853253756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086302.P5792996357853253756

namespace A086302

/-- `∑[2*A144138(n+1)]` -/
def P5792996357853253756.Spec : Prop :=
  ∀ n, P5792996357853253756.a n = A086302 n

end A086302

/-! ## A086302.P3539093631232422044

`Δ[∑[A132209(n)²]-n]`
-/

namespace A086302.P3539093631232422044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086302.P3539093631232422044

namespace A086302

/-- `Δ[∑[A132209(n)²]-n]` -/
def P3539093631232422044.Spec : Prop :=
  ∀ n, P3539093631232422044.a n = A086302 n

end A086302

/-! ## A086302.P16127281576997644375

`Δ[∑[A142463(n)²]-n]`
-/

namespace A086302.P16127281576997644375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086302.P16127281576997644375

namespace A086302

/-- `Δ[∑[A142463(n)²]-n]` -/
def P16127281576997644375.Spec : Prop :=
  ∀ n, P16127281576997644375.a n = A086302 n

end A086302

/-! ## A086302.P3320607052822361800

`A067239(∑[n+1])`
-/

namespace A086302.P3320607052822361800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067239 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086302.P3320607052822361800

namespace A086302

/-- `A067239(∑[n+1])` -/
def P3320607052822361800.Spec : Prop :=
  ∀ n, P3320607052822361800.a n = A086302 n

end A086302

/-! ## A086302.P11315436326391631070

`A152750(∑[n+1])`
-/

namespace A086302.P11315436326391631070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086302.P11315436326391631070

namespace A086302

/-- `A152750(∑[n+1])` -/
def P11315436326391631070.Spec : Prop :=
  ∀ n, P11315436326391631070.a n = A086302 n

end A086302

/-!
# A086303: Numbers n such that n+15 is prime.

The programs for A086303, the canonical program `A086303.P4608548906216220800` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086303 has offset 1).

The definition of A086303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086303.P3927670916598949216

`2*A089559(n+1)`
-/

namespace A086303.P3927670916598949216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089559 (n + 1)

end

end A086303.P3927670916598949216

namespace A086303

/-- `2*A089559(n+1)` -/
def P3927670916598949216.Spec : Prop :=
  ∀ n, P3927670916598949216.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P4608548906216220800

`p?[2*n+15]-15`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086303

/-- `p?[2*n+15]-15` -/
def P4608548906216220800.Spec : Prop :=
  ∀ n, P4608548906216220800.a n = A086303 (n + 1)

theorem P4608548906216220800.correct : P4608548906216220800.Spec := by
  intro n
  simp only [A086303, Nat.add_sub_cancel]

end A086303

/-! ## A086303.P1050333519233389055

`2*(A173059(n+1)+1)`
-/

namespace A086303.P1050333519233389055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A173059 (n + 1) + 1)

end

end A086303.P1050333519233389055

namespace A086303

/-- `2*(A173059(n+1)+1)` -/
def P1050333519233389055.Spec : Prop :=
  ∀ n, P1050333519233389055.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P3523657868445195879

`∑[A001223(A107820(n+1))]`
-/

namespace A086303.P3523657868445195879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A107820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086303.P3523657868445195879

namespace A086303

/-- `∑[A001223(A107820(n+1))]` -/
def P3523657868445195879.Spec : Prop :=
  ∀ n, P3523657868445195879.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P13988590651498055501

`∑[A001223(A242963(n+1))]`
-/

namespace A086303.P13988590651498055501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A242963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086303.P13988590651498055501

namespace A086303

/-- `∑[A001223(A242963(n+1))]` -/
def P13988590651498055501.Spec : Prop :=
  ∀ n, P13988590651498055501.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P3811707885542557670

`A089559(n+1)+A173059(n+1)+1`
-/

namespace A086303.P3811707885542557670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089559 (n + 1) + (A173059 (n + 1) + 1)

end

end A086303.P3811707885542557670

namespace A086303

/-- `A089559(n+1)+A173059(n+1)+1` -/
def P3811707885542557670.Spec : Prop :=
  ∀ n, P3811707885542557670.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P1960699542112371847

`∑[A001223(2*(n+1)-A028310(n)+4)]`
-/

namespace A086303.P1960699542112371847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 ((2 * (n + 1) : ℤ) - A028310 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086303.P1960699542112371847

namespace A086303

/-- `∑[A001223(2*(n+1)-A028310(n)+4)]` -/
def P1960699542112371847.Spec : Prop :=
  ∀ n, P1960699542112371847.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P11270002779805369158

`A089559(A000027(n+1))+A089559(n+1)`
-/

namespace A086303.P11270002779805369158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089559 (A000027 (n + 1)).toNat + A089559 (n + 1)

end

end A086303.P11270002779805369158

namespace A086303

/-- `A089559(A000027(n+1))+A089559(n+1)` -/
def P11270002779805369158.Spec : Prop :=
  ∀ n, P11270002779805369158.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P13574516368944693588

`2*(A153081(n+2)-1)`
-/

namespace A086303.P13574516368944693588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153081 (n + 2) - 1)

end

end A086303.P13574516368944693588

namespace A086303

/-- `2*(A153081(n+2)-1)` -/
def P13574516368944693588.Spec : Prop :=
  ∀ n, P13574516368944693588.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P12028984703973546948

`A173059(n+1)+A153081(n+2)`
-/

namespace A086303.P12028984703973546948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173059 (n + 1) + A153081 (n + 2)

end

end A086303.P12028984703973546948

namespace A086303

/-- `A173059(n+1)+A153081(n+2)` -/
def P12028984703973546948.Spec : Prop :=
  ∀ n, P12028984703973546948.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P3134488554563999669

`A172407(n+3)-5`
-/

namespace A086303.P3134488554563999669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 3) - 5

end

end A086303.P3134488554563999669

namespace A086303

/-- `A172407(n+3)-5` -/
def P3134488554563999669.Spec : Prop :=
  ∀ n, P3134488554563999669.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P5922388188847105556

`A088967(n+3)-6`
-/

namespace A086303.P5922388188847105556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088967 (n + 3) - 6

end

end A086303.P5922388188847105556

namespace A086303

/-- `A088967(n+3)-6` -/
def P5922388188847105556.Spec : Prop :=
  ∀ n, P5922388188847105556.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P10348846453578727962

`2*(A101448(n+3)-2)`
-/

namespace A086303.P10348846453578727962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A101448 (n + 3) - 2)

end

end A086303.P10348846453578727962

namespace A086303

/-- `2*(A101448(n+3)-2)` -/
def P10348846453578727962.Spec : Prop :=
  ∀ n, P10348846453578727962.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P12897591176222275534

`2*(A155722(n+3)-3)`
-/

namespace A086303.P12897591176222275534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155722 (n + 3) - 3)

end

end A086303.P12897591176222275534

namespace A086303

/-- `2*(A155722(n+3)-3)` -/
def P12897591176222275534.Spec : Prop :=
  ∀ n, P12897591176222275534.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P12725230530189809562

`A000040(n+7)-15`
-/

namespace A086303.P12725230530189809562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 7) - 15

end

end A086303.P12725230530189809562

namespace A086303

/-- `A000040(n+7)-15` -/
def P12725230530189809562.Spec : Prop :=
  ∀ n, P12725230530189809562.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P8048035379329011131

`record[A000010(n+17)-14]`
-/

namespace A086303.P8048035379329011131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 17) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086303.P8048035379329011131

namespace A086303

/-- `record[A000010(n+17)-14]` -/
def P8048035379329011131.Spec : Prop :=
  ∀ n, P8048035379329011131.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P10463846078728255662

`record[A006530(n+17)-15]`
-/

namespace A086303.P10463846078728255662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 17) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086303.P10463846078728255662

namespace A086303

/-- `record[A006530(n+17)-15]` -/
def P10463846078728255662.Spec : Prop :=
  ∀ n, P10463846078728255662.a n = A086303 (n + 1)

end A086303

/-! ## A086303.P2380130085458930311

`eq[1, A001222(n+15)]`
-/

namespace A086303.P2380130085458930311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 15)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086303.P2380130085458930311

namespace A086303

/-- `eq[1, A001222(n+15)]` -/
def P2380130085458930311.Spec : Prop :=
  ∀ n, (P2380130085458930311.a n : ℤ) = A086303 (n + 1)

end A086303

/-! ## A086303.P12076289894529673561

`eq[2, A000005(n+15)]`
-/

namespace A086303.P12076289894529673561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 15)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086303.P12076289894529673561

namespace A086303

/-- `eq[2, A000005(n+15)]` -/
def P12076289894529673561.Spec : Prop :=
  ∀ n, (P12076289894529673561.a n : ℤ) = A086303 (n + 1)

end A086303

/-! ## A086303.P11694397576849465118

`lt[A000005(n+17), 3]+2`
-/

namespace A086303.P11694397576849465118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 17)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A086303.P11694397576849465118

namespace A086303

/-- `lt[A000005(n+17), 3]+2` -/
def P11694397576849465118.Spec : Prop :=
  ∀ n, (P11694397576849465118.a n : ℤ) = A086303 (n + 1)

end A086303

/-!
# A086304: Numbers n such that n+6 is prime.

The programs for A086304, the canonical program `A086304.P12731462681422693653` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086304 has offset 1).

The definition of A086304 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089038, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086304.P12731462681422693653

`2*A089038(n+2)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A086304

/-- `2*A089038(n+2)-1` -/
def P12731462681422693653.Spec : Prop :=
  ∀ n, P12731462681422693653.a n = A086304 (n + 1)

theorem P12731462681422693653.correct : P12731462681422693653.Spec := by
  intro n
  simp only [A086304, Nat.add_sub_cancel]

end A086304

/-! ## A086304.P14663274561494744659

`p?[2*n+7]-6`
-/

namespace A086304.P14663274561494744659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 6

end

end A086304.P14663274561494744659

namespace A086304

/-- `p?[2*n+7]-6` -/
def P14663274561494744659.Spec : Prop :=
  ∀ n, P14663274561494744659.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P8424508954032601780

`A055670(n+4)-7`
-/

namespace A086304.P8424508954032601780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 4) - 7

end

end A086304.P8424508954032601780

namespace A086304

/-- `A055670(n+4)-7` -/
def P8424508954032601780.Spec : Prop :=
  ∀ n, P8424508954032601780.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P10870616196710533093

`∑[A001223(n+3)]-1`
-/

namespace A086304.P10870616196710533093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A086304.P10870616196710533093

namespace A086304

/-- `∑[A001223(n+3)]-1` -/
def P10870616196710533093.Spec : Prop :=
  ∀ n, P10870616196710533093.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P11064061441424259971

`Δ[A007504(n+3)]-6`
-/

namespace A086304.P11064061441424259971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 6

end

end A086304.P11064061441424259971

namespace A086304

/-- `Δ[A007504(n+3)]-6` -/
def P11064061441424259971.Spec : Prop :=
  ∀ n, P11064061441424259971.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P1558142246393437273

`2*A105760(n+1)+1`
-/

namespace A086304.P1558142246393437273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105760 (n + 1) + 1

end

end A086304.P1558142246393437273

namespace A086304

/-- `2*A105760(n+1)+1` -/
def P1558142246393437273.Spec : Prop :=
  ∀ n, P1558142246393437273.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P12693076246944135308

`∑[A001223(3%comp[∑[n]]+n)]`
-/

namespace A086304.P12693076246944135308
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (3 % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086304.P12693076246944135308

namespace A086304

/-- `∑[A001223(3%comp[∑[n]]+n)]` -/
def P12693076246944135308.Spec : Prop :=
  ∀ n, P12693076246944135308.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P12069387222442075379

`∑[A001223(n--3%comp[∑[n]])]`
-/

namespace A086304.P12069387222442075379
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 ((n : ℤ) - Int.tmod (-3) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086304.P12069387222442075379

namespace A086304

/-- `∑[A001223(n--3%comp[∑[n]])]` -/
def P12069387222442075379.Spec : Prop :=
  ∀ n, P12069387222442075379.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P12096437478744277138

`A172367(n+2)-2`
-/

namespace A086304.P12096437478744277138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 2) - 2

end

end A086304.P12096437478744277138

namespace A086304

/-- `A172367(n+2)-2` -/
def P12096437478744277138.Spec : Prop :=
  ∀ n, P12096437478744277138.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P14456625887259068088

`A173064(n+4)-1`
-/

namespace A086304.P14456625887259068088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173064 (n + 4) - 1

end

end A086304.P14456625887259068088

namespace A086304

/-- `A173064(n+4)-1` -/
def P14456625887259068088.Spec : Prop :=
  ∀ n, P14456625887259068088.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P14193570572093730986

`A004139(n+2)-6`
-/

namespace A086304.P14193570572093730986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2) - 6

end

end A086304.P14193570572093730986

namespace A086304

/-- `A004139(n+2)-6` -/
def P14193570572093730986.Spec : Prop :=
  ∀ n, P14193570572093730986.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P4785457958279175184

`A215848(n+2)-6`
-/

namespace A086304.P4785457958279175184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 2) - 6

end

end A086304.P4785457958279175184

namespace A086304

/-- `A215848(n+2)-6` -/
def P4785457958279175184.Spec : Prop :=
  ∀ n, P4785457958279175184.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P4480106185008832915

`∑[A135732(n+2)]+n`
-/

namespace A086304.P4480106185008832915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A086304.P4480106185008832915

namespace A086304

/-- `∑[A135732(n+2)]+n` -/
def P4480106185008832915.Spec : Prop :=
  ∀ n, P4480106185008832915.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P7406882534767293142

`∑[A176246(n+2)]+n`
-/

namespace A086304.P7406882534767293142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A086304.P7406882534767293142

namespace A086304

/-- `∑[A176246(n+2)]+n` -/
def P7406882534767293142.Spec : Prop :=
  ∀ n, P7406882534767293142.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P3974216700276349861

`2*A161720(n+4)+1`
-/

namespace A086304.P3974216700276349861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161720 (n + 4) + 1

end

end A086304.P3974216700276349861

namespace A086304

/-- `2*A161720(n+4)+1` -/
def P3974216700276349861.Spec : Prop :=
  ∀ n, P3974216700276349861.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P14586425239072959871

`A105760(n+1)+A089038(n+2)`
-/

namespace A086304.P14586425239072959871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1) + A089038 (n + 2)

end

end A086304.P14586425239072959871

namespace A086304

/-- `A105760(n+1)+A089038(n+2)` -/
def P14586425239072959871.Spec : Prop :=
  ∀ n, P14586425239072959871.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P2174696780017026124

`A161720(n+4)+A089038(n+2)`
-/

namespace A086304.P2174696780017026124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 4) + A089038 (n + 2)

end

end A086304.P2174696780017026124

namespace A086304

/-- `A161720(n+4)+A089038(n+2)` -/
def P2174696780017026124.Spec : Prop :=
  ∀ n, P2174696780017026124.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P17546653975208151140

`A118538(n+3)`
-/

namespace A086304.P17546653975208151140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 3)

end

end A086304.P17546653975208151140

namespace A086304

/-- `A118538(n+3)` -/
def P17546653975208151140.Spec : Prop :=
  ∀ n, P17546653975208151140.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P8727115876005989257

`A154115(n+3)-3`
-/

namespace A086304.P8727115876005989257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 3) - 3

end

end A086304.P8727115876005989257

namespace A086304

/-- `A154115(n+3)-3` -/
def P8727115876005989257.Spec : Prop :=
  ∀ n, P8727115876005989257.a n = A086304 (n + 1)

end A086304

/-! ## A086304.P6919457901788436196

`A165972(n+3)-5`
-/

namespace A086304.P6919457901788436196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 3) - 5

end

end A086304.P6919457901788436196

namespace A086304

/-- `A165972(n+3)-5` -/
def P6919457901788436196.Spec : Prop :=
  ∀ n, P6919457901788436196.a n = A086304 (n + 1)

end A086304

/-!
# A086305: Numbers such that two successive terms have no common digit and have distinct prime signature.

The programs for A086305, there is no canonical definition to state claims against.
-/

/-! ## A086305.P9491193868834587436

`A344548(n+1)+A147981(A265447(n+1))`
-/

namespace A086305.P9491193868834587436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344548 (n + 1) + A147981 (A265447 (n + 1)).toNat

end

end A086305.P9491193868834587436

/-! ## A086305.P7020613270126421975

`A124460(A082744(n+4))+A030066(A341903(n+1))`
-/

namespace A086305.P7020613270126421975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (A082744 (n + 4)).toNat + A030066 (A341903 (n + 1)).toNat

end

end A086305.P7020613270126421975

/-!
# A086314: Total number of edges in the distinct simple graphs on n nodes.

The programs for A086314, there is no canonical definition to state claims against.
-/

/-! ## A086314.P9425590167307710168

`n/4*A055542(n+1)`
-/

namespace A086314.P9425590167307710168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A055542 (n + 1) : ℚ)

end

end A086314.P9425590167307710168

/-! ## A086314.P12961789257748183037

`∑[n/2]*Δ[A006897(n)]`
-/

namespace A086314.P12961789257748183037
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n : ℚ)

end

end A086314.P12961789257748183037

/-! ## A086314.P9035178032084518993

`∑[n/2]*A000088(n+1)`
-/

namespace A086314.P9035178032084518993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000088 (n + 1) : ℚ)

end

end A086314.P9035178032084518993

/-! ## A086314.P5770787228107319410

`A000088(n+1)/2*A000217(n)`
-/

namespace A086314.P5770787228107319410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000088 (n + 1) : ℚ) / 2 * (A000217 n : ℚ)

end

end A086314.P5770787228107319410

/-! ## A086314.P14959707278441814305

`(n+1)*record[A000088(A004736(n+1))]*n/4`
-/

namespace A086314.P14959707278441814305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (A004736 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) * ((n : ℚ) / 4)

end

end A086314.P14959707278441814305

/-!
# A086319: Primes produced by repeated application of the formula p -> (4p +- 3) starting at the prime 2.

The programs for A086319, there is no canonical definition to state claims against.
-/

/-! ## A086319.P15202762868701536879

`∩[A287558(n+1), A057751(n)]`
-/

namespace A086319.P15202762868701536879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057751 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086319.P15202762868701536879

/-! ## A086319.P11427705083283615801

`record[p?[A267582(A241559(n+1))]]`
-/

namespace A086319.P11427705083283615801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267582 (A241559 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086319.P11427705083283615801

/-! ## A086319.P9342960223143273100

`record[p?[A267582(A299693(n+1))]]`
-/

namespace A086319.P9342960223143273100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267582 (A299693 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086319.P9342960223143273100

/-! ## A086319.P17902572335645752101

`∩[A192585(n+1), A287558(n+1)]`
-/

namespace A086319.P17902572335645752101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086319.P17902572335645752101

/-! ## A086319.P16361837351345722187

`record[p?[A292271(A176988(n))]]`
-/

namespace A086319.P16361837351345722187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292271 (A176988 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086319.P16361837351345722187

/-!
# A086321: Primes produced by repeated application of the formula p -> (6p +- 5) starting at the prime 2.

The programs for A086321, there is no canonical definition to state claims against.
-/

/-! ## A086321.P2628612407382775435

`record[A006530(A175024(3*n+5)+A017293(n)+1)]`
-/

namespace A086321.P2628612407382775435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A175024 (3 * n + 5) + A017293 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086321.P2628612407382775435

/-! ## A086321.P11127817541774190142

`p?[∑[A053737(A002865(n+1))]]`
-/

namespace A086321.P11127817541774190142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A002865 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086321.P11127817541774190142

/-! ## A086321.P7652349920344682355

`p?[∑[A053737(A002865(n))]-1]`
-/

namespace A086321.P7652349920344682355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A002865 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086321.P7652349920344682355

/-!
# A086322: Primes produced by repeated application of the formula p -> (10p +- 3) starting at the prime 2.

The programs for A086322, there is no canonical definition to state claims against.
-/

/-! ## A086322.P8313461517922459797

`p?[A327440(A284380(n+1))]`
-/

namespace A086322.P8313461517922459797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327440 (A284380 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086322.P8313461517922459797

/-! ## A086322.P2530988991985697065

`∩[A000040(n+1), A007494(A351327(n+1))]`
-/

namespace A086322.P2530988991985697065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A351327 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086322.P2530988991985697065

/-!
# A086323: Number of n X n circulant invertible (0,1) matrices over the reals.

The programs for A086323, there is no canonical definition to state claims against.
-/

/-! ## A086323.P6484122945703537052

`2^(n+1)-A086328(n+1)`
-/

namespace A086323.P6484122945703537052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A086328 (n + 1)

end

end A086323.P6484122945703537052

/-! ## A086323.P16217113000017798607

`and(-A086328(n+1), A095121(n))`
-/

namespace A086323.P16217113000017798607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A086328 (n + 1)) (A095121 n)

end

end A086323.P16217113000017798607

/-! ## A086323.P8005190791204864608

`and(-A086328(n+1), A126646(n))`
-/

namespace A086323.P8005190791204864608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A086328 (n + 1)) (A126646 n)

end

end A086323.P8005190791204864608

/-! ## A086323.P12275485852294953875

`A048578(n)-(A086328(n+1)+1)`
-/

namespace A086323.P12275485852294953875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - (A086328 (n + 1) + 1)

end

end A086323.P12275485852294953875

/-! ## A086323.P1285528007713290211

`and(-A086328(n+1), ∑[A000079(n)])`
-/

namespace A086323.P1285528007713290211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A086328 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086323.P1285528007713290211

/-!
# A086324: Number of n X n circulant singular matrices over GF(2).

The programs for A086324, there is no canonical definition to state claims against.
-/

/-! ## A086324.P11645244855797361594

`2^(n+1)-A003473(n+1)`
-/

namespace A086324.P11645244855797361594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A003473 (n + 1)

end

end A086324.P11645244855797361594

/-! ## A086324.P4717632185078340041

`2^(n+1)-(n+1)*A027362(n+1)`
-/

namespace A086324.P4717632185078340041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (n + 1 : ℤ) * A027362 (n + 1)

end

end A086324.P4717632185078340041

/-! ## A086324.P7124674086301216756

`and(-A003473(n+1), ∑[A000079(n)])`
-/

namespace A086324.P7124674086301216756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A003473 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086324.P7124674086301216756

/-! ## A086324.P14405035365302796958

`∑[A000051(n)]-(A003473(n+1)+n)`
-/

namespace A086324.P14405035365302796958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A003473 (n + 1) + (n : ℤ))

end

end A086324.P14405035365302796958

/-! ## A086324.P3205591310102231172

`A000051(n+1)-(A003473(n+1)+1)`
-/

namespace A086324.P3205591310102231172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - (A003473 (n + 1) + 1)

end

end A086324.P3205591310102231172

/-! ## A086324.P14240656051596409985

`A000079(n+1)-A003473(2*(n+1))/A000079(n+1)`
-/

namespace A086324.P14240656051596409985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) - (A003473 (2 * (n + 1)) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A086324.P14240656051596409985

/-!
# A086325: Let u(1)=0, u(2)=1, u(k)=u(k-1)+u(k-2)/(k-2); then a(n)=n!*u(n).

The programs for A086325, the canonical program `A086325.P15899201594958227124` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086325 has offset 1).

The definition of A086325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086325.P18311377084314210701

`(n+1)*floor(((n+1)!+1)/e)`
-/

namespace A086325.P18311377084314210701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(Nat.factorial (n + 1) + 1 : ℝ) / Real.exp 1⌋

end

end A086325.P18311377084314210701

namespace A086325

/-- `(n+1)*floor(((n+1)!+1)/e)` -/
def P18311377084314210701.Spec : Prop :=
  ∀ n, P18311377084314210701.a n = A086325 (n + 1)

end A086325

/-! ## A086325.P15899201594958227124

`(n+1)*A000166(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A086325

/-- `(n+1)*A000166(n+1)` -/
def P15899201594958227124.Spec : Prop :=
  ∀ n, P15899201594958227124.a n = A086325 (n + 1)

theorem P15899201594958227124.correct : P15899201594958227124.Spec := by
  intro n
  simp only [A086325, Nat.add_sub_cancel]

end A086325

/-! ## A086325.P6265277176095391879

`ceil((n+1)*(n+1)!/e)-(1-(-1)^(n+1))/2`
-/

namespace A086325.P6265277176095391879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈((n + 1) * Nat.factorial (n + 1) : ℝ) / Real.exp 1⌉ : ℚ) - (1 - (-1) ^ (n + 1) : ℚ) / 2

end

end A086325.P6265277176095391879

namespace A086325

/-- `ceil((n+1)*(n+1)!/e)-(1-(-1)^(n+1))/2` -/
def P6265277176095391879.Spec : Prop :=
  ∀ n, P6265277176095391879.a n = (A086325 (n + 1) : ℚ)

end A086325

/-! ## A086325.P978544476864970365

`Δ[(n+1)*a(n-1)-lcm(2, n)]` with `a(0)=2`
-/

namespace A086325.P978544476864970365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n + 1 : ℤ) * f1 (n - 1) - (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086325.P978544476864970365

namespace A086325

/-- `Δ[(n+1)*a(n-1)-lcm(2, n)]` -/
def P978544476864970365.Spec : Prop :=
  ∀ n, P978544476864970365.a n = A086325 (n + 1)

end A086325

/-! ## A086325.P4898015282016226821

`Δ[A014508(n+1)]`
-/

namespace A086325.P4898015282016226821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086325.P4898015282016226821

namespace A086325

/-- `Δ[A014508(n+1)]` -/
def P4898015282016226821.Spec : Prop :=
  ∀ n, P4898015282016226821.a n = A086325 (n + 1)

end A086325

/-! ## A086325.P15996481117756535097

`Δ[A174318(n+1)]`
-/

namespace A086325.P15996481117756535097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086325.P15996481117756535097

namespace A086325

/-- `Δ[A174318(n+1)]` -/
def P15996481117756535097.Spec : Prop :=
  ∀ n, P15996481117756535097.a n = A086325 (n + 1)

end A086325

/-! ## A086325.P15307997870284776583

`2*A000274(n+2)`
-/

namespace A086325.P15307997870284776583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000274 (n + 2)

end

end A086325.P15307997870284776583

namespace A086325

/-- `2*A000274(n+2)` -/
def P15307997870284776583.Spec : Prop :=
  ∀ n, P15307997870284776583.a n = A086325 (n + 1)

end A086325

/-! ## A086325.P10905595003817818850

`Δ[A212291(n+1)/2]`
-/

namespace A086325.P10905595003817818850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212291 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086325.P10905595003817818850

namespace A086325

/-- `Δ[A212291(n+1)/2]` -/
def P10905595003817818850.Spec : Prop :=
  ∀ n, P10905595003817818850.a n = (A086325 (n + 1) : ℚ)

end A086325

/-! ## A086325.P1771721894080578918

`Δ[or(1, A000166(n+1))]`
-/

namespace A086325.P1771721894080578918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000166 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086325.P1771721894080578918

namespace A086325

/-- `Δ[or(1, A000166(n+1))]` -/
def P1771721894080578918.Spec : Prop :=
  ∀ n, P1771721894080578918.a n = A086325 (n + 1)

end A086325

/-! ## A086325.P11957262642178454393

`Δ[or(1, A000240(n+1))]`
-/

namespace A086325.P11957262642178454393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000240 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086325.P11957262642178454393

namespace A086325

/-- `Δ[or(1, A000240(n+1))]` -/
def P11957262642178454393.Spec : Prop :=
  ∀ n, P11957262642178454393.a n = A086325 (n + 1)

end A086325

/-!
# A086326: Markoff numbers (A002559) multiplied by 3.

The programs for A086326, there is no canonical definition to state claims against.
-/

/-! ## A086326.P16332350495752456913

`A324250(n+1)+2`
-/

namespace A086326.P16332350495752456913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324250 (n + 1) + 2

end

end A086326.P16332350495752456913

/-! ## A086326.P1298673149663196362

`3*A002559(n+1)`
-/

namespace A086326.P1298673149663196362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002559 (n + 1)

end

end A086326.P1298673149663196362

/-! ## A086326.P2189130770228269937

`lcm(3, A002559(C(n+1, n)))`
-/

namespace A086326.P2189130770228269937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A002559 (Nat.choose (n + 1) n))

end

end A086326.P2189130770228269937

/-! ## A086326.P10733780388529445380

`or(2, A324250(-xor(n, -1)))`
-/

namespace A086326.P10733780388529445380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A324250 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A086326.P10733780388529445380

/-! ## A086326.P11649030376504161449

`lcm(3, A002559(A000027(n+1)))`
-/

namespace A086326.P11649030376504161449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A002559 (A000027 (n + 1)).toNat)

end

end A086326.P11649030376504161449

/-! ## A086326.P5570295272274229349

`lcm(A002559(n+1), A174971(n))`
-/

namespace A086326.P5570295272274229349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002559 (n + 1)) (A174971 n)

end

end A086326.P5570295272274229349

/-!
# A086327: Number of factors over Q in the factorization of the Chebyshev polynomial of the second kind U_n(x).

The programs for A086327, the canonical program `A086327.P7064425793430139378` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086327 has offset 1).

The definition of A086327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086327.P7064425793430139378

`∏{e}[2*(n+2), #+1]-2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086327

/-- `∏{e}[2*(n+2), #+1]-2` -/
def P7064425793430139378.Spec : Prop :=
  ∀ n, P7064425793430139378.a n = A086327 (n + 1)

theorem P7064425793430139378.correct : P7064425793430139378.Spec := by
  intro n
  simp only [A086327, Nat.add_sub_cancel]

end A086327

/-! ## A086327.P8119135112028672497

`A069930(n+2)`
-/

namespace A086327.P8119135112028672497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (n + 2)

end

end A086327.P8119135112028672497

namespace A086327

/-- `A069930(n+2)` -/
def P8119135112028672497.Spec : Prop :=
  ∀ n, P8119135112028672497.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P4094137374209469143

`A337566(n+2)+1`
-/

namespace A086327.P4094137374209469143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337566 (n + 2) + 1

end

end A086327.P4094137374209469143

namespace A086327

/-- `A337566(n+2)+1` -/
def P4094137374209469143.Spec : Prop :=
  ∀ n, P4094137374209469143.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P4527463284762525715

`A066660(n+2)-1`
-/

namespace A086327.P4527463284762525715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (n + 2) - 1

end

end A086327.P4527463284762525715

namespace A086327

/-- `A066660(n+2)-1` -/
def P4527463284762525715.Spec : Prop :=
  ∀ n, P4527463284762525715.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P10262527945356359187

`A099777(n+2)-2`
-/

namespace A086327.P10262527945356359187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 2) - 2

end

end A086327.P10262527945356359187

namespace A086327

/-- `A099777(n+2)-2` -/
def P10262527945356359187.Spec : Prop :=
  ∀ n, P10262527945356359187.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P10000922560010693334

`A023645(2*(n+2))`
-/

namespace A086327.P10000922560010693334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (2 * (n + 2))

end

end A086327.P10000922560010693334

namespace A086327

/-- `A023645(2*(n+2))` -/
def P10000922560010693334.Spec : Prop :=
  ∀ n, P10000922560010693334.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P4584561204585222072

`A070824(2*(n+2))`
-/

namespace A086327.P4584561204585222072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (2 * (n + 2))

end

end A086327.P4584561204585222072

namespace A086327

/-- `A070824(2*(n+2))` -/
def P4584561204585222072.Spec : Prop :=
  ∀ n, P4584561204585222072.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P9982417146684217542

`A264440(2*(n+2))`
-/

namespace A086327.P9982417146684217542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264440 (2 * (n + 2))

end

end A086327.P9982417146684217542

namespace A086327

/-- `A264440(2*(n+2))` -/
def P9982417146684217542.Spec : Prop :=
  ∀ n, P9982417146684217542.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P1812253866643379318

`Δ[A113241(n+1)]-1`
-/

namespace A086327.P1812253866643379318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A086327.P1812253866643379318

namespace A086327

/-- `Δ[A113241(n+1)]-1` -/
def P1812253866643379318.Spec : Prop :=
  ∀ n, P1812253866643379318.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P583249829058723796

`Δ[A263086(n+1)]-2`
-/

namespace A086327.P583249829058723796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A086327.P583249829058723796

namespace A086327

/-- `Δ[A263086(n+1)]-2` -/
def P583249829058723796.Spec : Prop :=
  ∀ n, P583249829058723796.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P13208937204701472358

`A032741(2*(n+2))-1`
-/

namespace A086327.P13208937204701472358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * (n + 2)) - 1

end

end A086327.P13208937204701472358

namespace A086327

/-- `A032741(2*(n+2))-1` -/
def P13208937204701472358.Spec : Prop :=
  ∀ n, P13208937204701472358.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P8868086985845397641

`A076984(2*(n+2))-1`
-/

namespace A086327.P8868086985845397641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (2 * (n + 2)) - 1

end

end A086327.P8868086985845397641

namespace A086327

/-- `A076984(2*(n+2))-1` -/
def P8868086985845397641.Spec : Prop :=
  ∀ n, P8868086985845397641.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P14412416124847537695

`A000005(2*(n+2))-2`
-/

namespace A086327.P14412416124847537695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 2)) - 2

end

end A086327.P14412416124847537695

namespace A086327

/-- `A000005(2*(n+2))-2` -/
def P14412416124847537695.Spec : Prop :=
  ∀ n, P14412416124847537695.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P13981895157214137449

`A111150(n+2)/2-1`
-/

namespace A086327.P13981895157214137449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111150 (n + 2) : ℚ) / 2 - 1

end

end A086327.P13981895157214137449

namespace A086327

/-- `A111150(n+2)/2-1` -/
def P13981895157214137449.Spec : Prop :=
  ∀ n, P13981895157214137449.a n = (A086327 (n + 1) : ℚ)

end A086327

/-! ## A086327.P12254288446589324893

`A325765(2*n+3)-1`
-/

namespace A086327.P12254288446589324893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 (2 * n + 3) - 1

end

end A086327.P12254288446589324893

namespace A086327

/-- `A325765(2*n+3)-1` -/
def P12254288446589324893.Spec : Prop :=
  ∀ n, P12254288446589324893.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P14354837992849857111

`A340273(2*(n+2))-2`
-/

namespace A086327.P14354837992849857111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340273 (2 * (n + 2)) - 2

end

end A086327.P14354837992849857111

namespace A086327

/-- `A340273(2*(n+2))-2` -/
def P14354837992849857111.Spec : Prop :=
  ∀ n, P14354837992849857111.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P17328979432749164931

`A334954(2*(n+2))-3`
-/

namespace A086327.P17328979432749164931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (2 * (n + 2)) - 3

end

end A086327.P17328979432749164931

namespace A086327

/-- `A334954(2*(n+2))-3` -/
def P17328979432749164931.Spec : Prop :=
  ∀ n, P17328979432749164931.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P255971267710306139

`1-A234306(n+2)+n`
-/

namespace A086327.P255971267710306139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A234306 (n + 2) + (n : ℤ)

end

end A086327.P255971267710306139

namespace A086327

/-- `1-A234306(n+2)+n` -/
def P255971267710306139.Spec : Prop :=
  ∀ n, P255971267710306139.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P319462124947083888

`abs(2-A000005(n+4+n))`
-/

namespace A086327.P319462124947083888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000005 (n + 4 + n)|

end

end A086327.P319462124947083888

namespace A086327

/-- `abs(2-A000005(n+4+n))` -/
def P319462124947083888.Spec : Prop :=
  ∀ n, P319462124947083888.a n = A086327 (n + 1)

end A086327

/-! ## A086327.P14735539416202146720

`A023444(A099777(n+2))`
-/

namespace A086327.P14735539416202146720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A099777 (n + 2)).toNat

end

end A086327.P14735539416202146720

namespace A086327

/-- `A023444(A099777(n+2))` -/
def P14735539416202146720.Spec : Prop :=
  ∀ n, P14735539416202146720.a n = A086327 (n + 1)

end A086327

/-!
# A086328: Number of n X n circulant singular (0,1) matrices over the reals.

The programs for A086328, there is no canonical definition to state claims against.
-/

/-! ## A086328.P1485998306366462737

`2^(n+1)-A086323(n+1)`
-/

namespace A086328.P1485998306366462737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A086323 (n + 1)

end

end A086328.P1485998306366462737

/-! ## A086328.P7235928495034920858

`and(-A086323(n+1), A095121(n))`
-/

namespace A086328.P7235928495034920858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A086323 (n + 1)) (A095121 n)

end

end A086328.P7235928495034920858

/-! ## A086328.P13449594837582995089

`and(-A086323(n+1), A126646(n))`
-/

namespace A086328.P13449594837582995089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A086323 (n + 1)) (A126646 n)

end

end A086328.P13449594837582995089

/-! ## A086328.P16737101094182965100

`A048578(n)-(A086323(n+1)+1)`
-/

namespace A086328.P16737101094182965100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - (A086323 (n + 1) + 1)

end

end A086328.P16737101094182965100

/-! ## A086328.P5636194148078469116

`and(-A086323(n+1), ∑[A000079(n)])`
-/

namespace A086328.P5636194148078469116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A086323 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086328.P5636194148078469116

/-!
# A086329: Triangle T(n,k) read by rows, given by [0, 1, 0, 1, 0, 1, 0, 1, 0, 1, ...] DELTA [1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, ...] where DELTA is the operator defined in A084938.

The programs for A086329, there is no canonical definition to state claims against.
-/

/-! ## A086329.P3367645411034339033

`A103298(A085791(n)²)`
-/

namespace A086329.P3367645411034339033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A085791 n ^ 2).toNat

end

end A086329.P3367645411034339033

/-! ## A086329.P1667261744152964964

`A103298(A085791(n)^2)`
-/

namespace A086329.P1667261744152964964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A085791 n ^ 2).toNat

end

end A086329.P1667261744152964964

/-! ## A086329.P14462182199302703188

`and(A123125(n), A337439(2*n+3))`
-/

namespace A086329.P14462182199302703188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123125 n) (A337439 (2 * n + 3))

end

end A086329.P14462182199302703188

/-! ## A086329.P861449154312397835

`and(A082719(A204892(n+1)), A123125(n))`
-/

namespace A086329.P861449154312397835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082719 (A204892 (n + 1)).toNat) (A123125 n)

end

end A086329.P861449154312397835

/-! ## A086329.P17983184518825554693

`and(A001359(A000051(n)), A123125(n))`
-/

namespace A086329.P17983184518825554693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001359 (A000051 n).toNat) (A123125 n)

end

end A086329.P17983184518825554693

/-!
# A086330: a(n) = Sum_{m >= 2} m! mod n.

The programs for A086330, there is no canonical definition to state claims against.
-/

/-! ## A086330.P17168510532223363220

`A119360(n+2)-1`
-/

namespace A086330.P17168510532223363220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119360 (n + 2) - 1

end

end A086330.P17168510532223363220

/-! ## A086330.P9649012822145608808

`A023443(A119360(n+2))`
-/

namespace A086330.P9649012822145608808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A119360 (n + 2)).toNat

end

end A086330.P9649012822145608808

/-!
# A086331: Expansion of e.g.f. exp(x)/(1 + LambertW(-x)).

The programs for A086331, there is no canonical definition to state claims against.
-/

/-! ## A086331.P8525328099584150474

`∑[A355494(n)]`
-/

namespace A086331.P8525328099584150474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086331.P8525328099584150474

/-! ## A086331.P3991610372584521704

`Δ[A360193(n)]`
-/

namespace A086331.P3991610372584521704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086331.P3991610372584521704

/-! ## A086331.P14567691113562961293

`A277464(n)+A277463(n)`
-/

namespace A086331.P14567691113562961293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277464 n + A277463 n

end

end A086331.P14567691113562961293

/-! ## A086331.P4508759952553317821

`A360193(n+1)-A360193(n)`
-/

namespace A086331.P4508759952553317821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360193 (n + 1) - A360193 n

end

end A086331.P4508759952553317821

/-! ## A086331.P16518979945677291829

`abs(A069856(n))+2*A277463(n)`
-/

namespace A086331.P16518979945677291829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069856 n| + 2 * A277463 n

end

end A086331.P16518979945677291829

/-! ## A086331.P17652000971113346387

`2*A277464(n)-abs(A069856(n))`
-/

namespace A086331.P17652000971113346387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277464 n - |A069856 n|

end

end A086331.P17652000971113346387

/-! ## A086331.P6278205758923935512

`A350212(A000217(n))+2*A277463(n)`
-/

namespace A086331.P6278205758923935512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350212 (A000217 n).toNat + 2 * A277463 n

end

end A086331.P6278205758923935512

/-! ## A086331.P7603141537399583186

`2*A277464(n)-A350212(A000217(n))`
-/

namespace A086331.P7603141537399583186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277464 n - A350212 (A000217 n).toNat

end

end A086331.P7603141537399583186

/-!
# A086332: Least highly composite number having n distinct prime factors.

The programs for A086332, there is no canonical definition to state claims against.
-/

/-! ## A086332.P6247015487055526553

`record[A022404(n+2)]`
-/

namespace A086332.P6247015487055526553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022404 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086332.P6247015487055526553

/-! ## A086332.P7804756629936228444

`A022404(A000040(n+1))`
-/

namespace A086332.P7804756629936228444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022404 (A000040 (n + 1)).toNat

end

end A086332.P7804756629936228444

/-! ## A086332.P12267327125773687077

`A002182(A072846(n+1))`
-/

namespace A086332.P12267327125773687077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (A072846 (n + 1)).toNat

end

end A086332.P12267327125773687077

/-! ## A086332.P8547849775548542806

`A022404(A008578(n+2))`
-/

namespace A086332.P8547849775548542806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022404 (A008578 (n + 2)).toNat

end

end A086332.P8547849775548542806

/-! ## A086332.P752676671364796587

`A002110(n+1)*A161894(n+1)`
-/

namespace A086332.P752676671364796587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) * A161894 (n + 1)

end

end A086332.P752676671364796587

/-!
# A086333: Index power of 2 in the first highly composite number m such that omega(m)=n.

The programs for A086333, there is no canonical definition to state claims against.
-/

/-! ## A086333.P3884005829204181469

`1+val(A161894(n+1), 2)`
-/

namespace A086333.P3884005829204181469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.valuation (A161894 (n + 1)).toNat 2

end

end A086333.P3884005829204181469

/-! ## A086333.P2653261751911890564

`A291769(val(A161894(n+1), 2))`
-/

namespace A086333.P2653261751911890564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (SequenceMachineLib.valuation (A161894 (n + 1)).toNat 2)

end

end A086333.P2653261751911890564

/-! ## A086333.P10708350411426213675

`A348553(val(A161894(n+1), 2))`
-/

namespace A086333.P10708350411426213675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (SequenceMachineLib.valuation (A161894 (n + 1)).toNat 2)

end

end A086333.P10708350411426213675

/-! ## A086333.P16494576403081176384

`A000005(and(-A161894(n+1), A161894(n+1)))`
-/

namespace A086333.P16494576403081176384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.land (-A161894 (n + 1)) (A161894 (n + 1))).toNat

end

end A086333.P16494576403081176384

/-! ## A086333.P16371703736279322669

`A000005(gcd(A000079(n), A161894(n+1)))`
-/

namespace A086333.P16371703736279322669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000079 n) (A161894 (n + 1)))

end

end A086333.P16371703736279322669

/-! ## A086333.P11258292602396341463

`A112779(A072846(n+1))`
-/

namespace A086333.P11258292602396341463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112779 (A072846 (n + 1)).toNat

end

end A086333.P11258292602396341463

/-!
# A086334: Number of highly composite numbers having n distinct prime factors.

The programs for A086334, there is no canonical definition to state claims against.
-/

/-! ## A086334.P12520865562427739592

`Δ[record[A199337(n+1)]]`
-/

namespace A086334.P12520865562427739592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199337 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086334.P12520865562427739592

/-! ## A086334.P1378230856842824550

`Δ[A199337(A008578(n+1))]`
-/

namespace A086334.P1378230856842824550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199337 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086334.P1378230856842824550

/-! ## A086334.P8386316693469896645

`Δ[A199337(A001747(n+1)/2)]`
-/

namespace A086334.P8386316693469896645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199337 (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086334.P8386316693469896645

/-! ## A086334.P11945974928150951885

`Δ[A199337(A209259(A004273(n)))]`
-/

namespace A086334.P11945974928150951885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199337 (A209259 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086334.P11945974928150951885

/-! ## A086334.P8941760368226025746

`Δ[A199337(A004525(A001747(n+1)))]`
-/

namespace A086334.P8941760368226025746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199337 (A004525 (A001747 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086334.P8941760368226025746

/-! ## A086334.P276426013870609629

`A199337(A000040(n+1))-record[A199337(n+1)]`
-/

namespace A086334.P276426013870609629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199337 (A000040 (n + 1)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086334.P276426013870609629

/-!
# A086335: a(n) = a((n - a(n-1))*(1-mod(n, 2))+a(n-1)*(mod(n, 2))) + a((n - a(n-2))*(1-mod(n, 2)) +(n-a(n-1))*(mod(n, 2))) with a(1) = a(2) = 1.

The programs for A086335, there is no canonical definition to state claims against.
-/

/-! ## A086335.P12119524309879514089

`Δ[record[A034887(A282888(n))]]`
-/

namespace A086335.P12119524309879514089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A282888 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086335.P12119524309879514089

/-! ## A086335.P16587221168234608810

`Δ[A034887(A187296(A000124(n)))]`
-/

namespace A086335.P16587221168234608810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A187296 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086335.P16587221168234608810

/-! ## A086335.P12348916233777310759

`A033182(A346126(2*n+1))+A008619(n)`
-/

namespace A086335.P12348916233777310759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A346126 (2 * n + 1)).toNat + A008619 n

end

end A086335.P12348916233777310759

/-! ## A086335.P6278569142925013471

`Δ[A034887(A077342(n+1)²)]`
-/

namespace A086335.P6278569142925013471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A077342 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086335.P6278569142925013471

/-! ## A086335.P9593139147830120981

`Δ[A034887(A242474(n+1)²)]`
-/

namespace A086335.P9593139147830120981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A242474 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086335.P9593139147830120981

/-!
# A086337: Numbers n such that n, n-1 and n-2 have the same prime signature.

The programs for A086337, there is no canonical definition to state claims against.
-/

/-! ## A086337.P4648551882875506883

`A359746(n+1)+2`
-/

namespace A086337.P4648551882875506883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (n + 1) + 2

end

end A086337.P4648551882875506883

/-! ## A086337.P605346069630986835

`A130195(2*A075039(n+1))`
-/

namespace A086337.P605346069630986835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130195 (2 * A075039 (n + 1)).toNat

end

end A086337.P605346069630986835

/-! ## A086337.P11689947112431575898

`A130195(lcm(2, A075039(n+1)))`
-/

namespace A086337.P11689947112431575898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130195 (Int.lcm 2 (A075039 (n + 1)))

end

end A086337.P11689947112431575898

/-! ## A086337.P8748431225294777239

`A008619(2*(A075039(n+1)+1))`
-/

namespace A086337.P8748431225294777239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (A075039 (n + 1) + 1)).toNat

end

end A086337.P8748431225294777239

/-! ## A086337.P13152117341544988941

`A001281(2*(A075039(n+1)+2))`
-/

namespace A086337.P13152117341544988941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * (A075039 (n + 1) + 2)).toNat

end

end A086337.P13152117341544988941

/-! ## A086337.P8325249615037930587

`A004525(2*(A075039(n+1)+2))`
-/

namespace A086337.P8325249615037930587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * (A075039 (n + 1) + 2)).toNat

end

end A086337.P8325249615037930587

/-! ## A086337.P6918820353651502274

`A004526(2*(A075039(n+1)+2))`
-/

namespace A086337.P6918820353651502274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * (A075039 (n + 1) + 2)).toNat

end

end A086337.P6918820353651502274

/-! ## A086337.P9206315855237278875

`A000463(2*A075039(n+1)+3)`
-/

namespace A086337.P9206315855237278875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A075039 (n + 1) + 3).toNat

end

end A086337.P9206315855237278875

/-! ## A086337.P13056140031765122258

`2-A001057(2*A075039(n+1))`
-/

namespace A086337.P13056140031765122258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001057 (2 * A075039 (n + 1)).toNat

end

end A086337.P13056140031765122258

/-! ## A086337.P11485188066290947700

`A075039(n+1)+A000005(A086519(n))`
-/

namespace A086337.P11485188066290947700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1) + A000005 (A086519 n).toNat

end

end A086337.P11485188066290947700

/-!
# A086338: Numbers n such that the trinomial x^n + x + 1 is irreducible over GF(11).

The programs for A086338, there is no canonical definition to state claims against.
-/

/-! ## A086338.P7233217531180450357

`A000621(A000645(n))%A000648(n)`
-/

namespace A086338.P7233217531180450357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000621 (A000645 n).toNat) (A000648 n)

end

end A086338.P7233217531180450357

/-!
# A086339: Irreducible trinomials of prime degree for some k: x^p + x^k + 1 is irreducible over GF(5) for at least one k, p>k>0.

The programs for A086339, there is no canonical definition to state claims against.
-/

/-! ## A086339.P2790543581895787127

`A000040(lt[A308855(n), A068527(3*n)])`
-/

namespace A086339.P2790543581895787127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308855 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086339.P2790543581895787127

/-! ## A086339.P10126570627031847132

`A000040(lt[A000700(n), A296339(2*n+1)])`
-/

namespace A086339.P10126570627031847132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086339.P10126570627031847132

/-! ## A086339.P16403797468057666687

`p?[∑[gcd(4, A181454(2*n+5))]]`
-/

namespace A086339.P16403797468057666687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A181454 (2 * n + 5))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A086339.P16403797468057666687

/-! ## A086339.P5910684187796018504

`p?[∑[A003842(A085908(n+1))]]`
-/

namespace A086339.P5910684187796018504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A085908 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086339.P5910684187796018504

/-! ## A086339.P5699985726176704623

`∩[A039189(n+1), A078668(n+1)]`
-/

namespace A086339.P5699985726176704623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086339.P5699985726176704623

/-!
# A086341: a(n) = 2*2^floor(n/2) - (-1)^n.

The programs for A086341, the canonical program `A086341.P7486086993471441106` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086341 has offset 0).

The definition of A086341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086341.P7486086993471441106

`2^(floor(n/2)+1)-(-1)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086341

/-- `2^(floor(n/2)+1)-(-1)^n` -/
def P7486086993471441106.Spec : Prop :=
  ∀ n, P7486086993471441106.a n = (A086341 n : ℚ)

end A086341

/-! ## A086341.P14399039500194689317

`2*2^floor(n/2)-(-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086341.P14399039500194689317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - ((-1) ^ n : ℚ)

end

end A086341.P14399039500194689317

namespace A086341

/-- `2*2^floor(n/2)-(-1)^n` -/
def P14399039500194689317.Spec : Prop :=
  ∀ n, P14399039500194689317.a n = (A086341 n : ℚ)

end A086341

/-! ## A086341.P6139818811169516147

`or(1, ∏[gcd(2, n)]-log2(gcd(2, n)))`
-/

namespace A086341.P6139818811169516147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)))

end

end A086341.P6139818811169516147

namespace A086341

/-- `or(1, ∏[gcd(2, n)]-log2(gcd(2, n)))` -/
def P6139818811169516147.Spec : Prop :=
  ∀ n, P6139818811169516147.a n = A086341 n

end A086341

/-! ## A086341.P14461477317394541339

`floor(a(n-2)+a(n-2)+(-1)^n)` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A086341.P14461477317394541339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (a (n - 2) + (-1) ^ n)

end

end A086341.P14461477317394541339

namespace A086341

/-- `floor(a(n-2)+a(n-2)+(-1)^n)` -/
def P14461477317394541339.Spec : Prop :=
  ∀ n, P14461477317394541339.a n = A086341 n

end A086341

/-! ## A086341.P14377125160196790982

`or(1, A097110(n))`
-/

namespace A086341.P14377125160196790982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A097110 n)

end

end A086341.P14377125160196790982

namespace A086341

/-- `or(1, A097110(n))` -/
def P14377125160196790982.Spec : Prop :=
  ∀ n, P14377125160196790982.a n = A086341 n

end A086341

/-! ## A086341.P6106439428753621477

`∑[abs(2-A077957(n))]`
-/

namespace A086341.P6106439428753621477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A077957 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086341.P6106439428753621477

namespace A086341

/-- `∑[abs(2-A077957(n))]` -/
def P6106439428753621477.Spec : Prop :=
  ∀ n, P6106439428753621477.a n = A086341 n

end A086341

/-! ## A086341.P2649728207071646689

`abs(A152166(n+1)+1)`
-/

namespace A086341.P2649728207071646689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152166 (n + 1) + 1|

end

end A086341.P2649728207071646689

namespace A086341

/-- `abs(A152166(n+1)+1)` -/
def P2649728207071646689.Spec : Prop :=
  ∀ n, P2649728207071646689.a n = A086341 n

end A086341

/-! ## A086341.P9130040832014609534

`∑[abs(2-abs(A077966(n)))]`
-/

namespace A086341.P9130040832014609534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |A077966 n|)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086341.P9130040832014609534

namespace A086341

/-- `∑[abs(2-abs(A077966(n)))]` -/
def P9130040832014609534.Spec : Prop :=
  ∀ n, P9130040832014609534.a n = A086341 n

end A086341

/-! ## A086341.P14594138586471222876

`or(1, A228693(n+3)-1)`
-/

namespace A086341.P14594138586471222876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228693 (n + 3) - 1)

end

end A086341.P14594138586471222876

namespace A086341

/-- `or(1, A228693(n+3)-1)` -/
def P14594138586471222876.Spec : Prop :=
  ∀ n, P14594138586471222876.a n = A086341 n

end A086341

/-! ## A086341.P11898318771942741437

`or(1, A106624(xor(1, n+2)))`
-/

namespace A086341.P11898318771942741437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A106624 (Nat.xor 1 (n + 2)))

end

end A086341.P11898318771942741437

namespace A086341

/-- `or(1, A106624(xor(1, n+2)))` -/
def P11898318771942741437.Spec : Prop :=
  ∀ n, P11898318771942741437.a n = A086341 n

end A086341

/-! ## A086341.P11677140643123791640

`abs(1-Δ[A052552(n+1)])`
-/

namespace A086341.P11677140643123791640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n)|

end

end A086341.P11677140643123791640

namespace A086341

/-- `abs(1-Δ[A052552(n+1)])` -/
def P11677140643123791640.Spec : Prop :=
  ∀ n, P11677140643123791640.a n = A086341 n

end A086341

/-! ## A086341.P14835937737672191988

`∑[abs(2-A131575(n+1))]`
-/

namespace A086341.P14835937737672191988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A131575 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086341.P14835937737672191988

namespace A086341

/-- `∑[abs(2-A131575(n+1))]` -/
def P14835937737672191988.Spec : Prop :=
  ∀ n, P14835937737672191988.a n = A086341 n

end A086341

/-! ## A086341.P18409804287912975916

`abs(Δ[2*A131575(n)]-1)`
-/

namespace A086341.P18409804287912975916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - 1|

end

end A086341.P18409804287912975916

namespace A086341

/-- `abs(Δ[2*A131575(n)]-1)` -/
def P18409804287912975916.Spec : Prop :=
  ∀ n, P18409804287912975916.a n = A086341 n

end A086341

/-! ## A086341.P2416799968874750650

`∑[abs(2-Δ[A016116(n+1)])]`
-/

namespace A086341.P2416799968874750650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f2 (n + 1) - f2 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086341.P2416799968874750650

namespace A086341

/-- `∑[abs(2-Δ[A016116(n+1)])]` -/
def P2416799968874750650.Spec : Prop :=
  ∀ n, P2416799968874750650.a n = A086341 n

end A086341

/-! ## A086341.P4710489780376508520

`xor(A000035(n), A097110(n))`
-/

namespace A086341.P4710489780376508520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A097110 n)

end

end A086341.P4710489780376508520

namespace A086341

/-- `xor(A000035(n), A097110(n))` -/
def P4710489780376508520.Spec : Prop :=
  ∀ n, P4710489780376508520.a n = A086341 n

end A086341

/-! ## A086341.P6842106809358130213

`or(A016116(n+1), A094024(n+1))`
-/

namespace A086341.P6842106809358130213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016116 (n + 1)) (A094024 (n + 1))

end

end A086341.P6842106809358130213

namespace A086341

/-- `or(A016116(n+1), A094024(n+1))` -/
def P6842106809358130213.Spec : Prop :=
  ∀ n, P6842106809358130213.a n = A086341 n

end A086341

/-! ## A086341.P8051140614064871384

`or(1, ∪[2^n, ∑[2^n]])`
-/

namespace A086341.P8051140614064871384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A086341.P8051140614064871384

namespace A086341

/-- `or(1, ∪[2^n, ∑[2^n]])` -/
def P8051140614064871384.Spec : Prop :=
  ∀ n, (P8051140614064871384.a n : ℤ) = A086341 n

end A086341

/-! ## A086341.P8625746083321527877

`A140407(xor(1, n+1))`
-/

namespace A086341.P8625746083321527877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 (Nat.xor 1 (n + 1))

end

end A086341.P8625746083321527877

namespace A086341

/-- `A140407(xor(1, n+1))` -/
def P8625746083321527877.Spec : Prop :=
  ∀ n, P8625746083321527877.a n = A086341 n

end A086341

/-! ## A086341.P15898371038094676857

`A140407(A004442(n+1))`
-/

namespace A086341.P15898371038094676857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 (A004442 (n + 1)).toNat

end

end A086341.P15898371038094676857

namespace A086341

/-- `A140407(A004442(n+1))` -/
def P15898371038094676857.Spec : Prop :=
  ∀ n, P15898371038094676857.a n = A086341 n

end A086341

/-! ## A086341.P10018822162381552142

`A140407(A010673(n)+n)`
-/

namespace A086341.P10018822162381552142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 (A010673 n + (n : ℤ)).toNat

end

end A086341.P10018822162381552142

namespace A086341

/-- `A140407(A010673(n)+n)` -/
def P10018822162381552142.Spec : Prop :=
  ∀ n, P10018822162381552142.a n = A086341 n

end A086341

/-!
# A086342: Smallest number of 1's in binary expansion of any positive multiple of n.

The programs for A086342, there is no canonical definition to state claims against.
-/

/-! ## A086342.P8504943963064558584

`A319420(A356354(n)%A210020(n+1))`
-/

namespace A086342.P8504943963064558584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (Int.tmod (A356354 n) (A210020 (n + 1))).toNat

end

end A086342.P8504943963064558584

/-! ## A086342.P15584263639470530025

`gcd(A274036(A129602(2*n)), A274036(n))`
-/

namespace A086342.P15584263639470530025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A274036 (A129602 (2 * n)).toNat) (A274036 n)

end

end A086342.P15584263639470530025

/-! ## A086342.P14943916247553483368

`A274036(lt[A007091(n), A000203(2*n+1)])`
-/

namespace A086342.P14943916247553483368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086342.P14943916247553483368

/-! ## A086342.P7602244525341013706

`A274036(lt[A241645(n), A332817(2*n+1)])`
-/

namespace A086342.P7602244525341013706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241645 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332817 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086342.P7602244525341013706

/-! ## A086342.P15149136157162841107

`A274036(n)%A217135(n+1)`
-/

namespace A086342.P15149136157162841107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274036 n) (A217135 (n + 1))

end

end A086342.P15149136157162841107

/-!
# A086343: a(n) starts new run of consecutive values in A055938.

The programs for A086343, the canonical program `A086343.P5334447728122572615` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086343 has offset 1).

The definition of A086343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086343.P5334447728122572615

`∑[val(record[lcm(4, n)+4], 2)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086343

/-- `∑[val(record[lcm(4, n)+4], 2)]` -/
def P5334447728122572615.Spec : Prop :=
  ∀ n, (P5334447728122572615.a n : ℤ) = A086343 (n + 1)

theorem P5334447728122572615.correct : P5334447728122572615.Spec := by
  intro n
  simp only [A086343, Nat.add_sub_cancel]

end A086343

/-! ## A086343.P15482106766700174753

`∑[a(∑[n]%n)+1]` with `a(0)=2`
-/

namespace A086343.P15482106766700174753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086343.P15482106766700174753

namespace A086343

/-- `∑[a(∑[n]%n)+1]` -/
def P15482106766700174753.Spec : Prop :=
  ∀ n, (P15482106766700174753.a n : ℤ) = A086343 (n + 1)

end A086343

/-! ## A086343.P8863084060628327290

`∑[∑{e}[xor(n, -n), #]+2]`
-/

namespace A086343.P8863084060628327290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086343.P8863084060628327290

namespace A086343

/-- `∑[∑{e}[xor(n, -n), #]+2]` -/
def P8863084060628327290.Spec : Prop :=
  ∀ n, (P8863084060628327290.a n : ℤ) = A086343 (n + 1)

end A086343

/-! ## A086343.P4583817549738973509

`∑[val(floor(2/acot(n)), 2)+2]`
-/

namespace A086343.P4583817549738973509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋.toNat 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086343.P4583817549738973509

namespace A086343

/-- `∑[val(floor(2/acot(n)), 2)+2]` -/
def P4583817549738973509.Spec : Prop :=
  ∀ n, (P4583817549738973509.a n : ℤ) = A086343 (n + 1)

end A086343

/-! ## A086343.P6365963451763310667

`a(n-1)+val(n, 2)+3` with `a(0)=2`
-/

namespace A086343.P6365963451763310667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (SequenceMachineLib.valuation n 2 + 3)

end

end A086343.P6365963451763310667

namespace A086343

/-- `a(n-1)+val(n, 2)+3` -/
def P6365963451763310667.Spec : Prop :=
  ∀ n, (P6365963451763310667.a n : ℤ) = A086343 (n + 1)

end A086343

/-! ## A086343.P10954194450486732115

`A120738(n)+2`
-/

namespace A086343.P10954194450486732115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 n + 2

end

end A086343.P10954194450486732115

namespace A086343

/-- `A120738(n)+2` -/
def P10954194450486732115.Spec : Prop :=
  ∀ n, P10954194450486732115.a n = A086343 (n + 1)

end A086343

/-! ## A086343.P9900415081921442819

`A005187(2*n)+2`
-/

namespace A086343.P9900415081921442819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (2 * n) + 2

end

end A086343.P9900415081921442819

namespace A086343

/-- `A005187(2*n)+2` -/
def P9900415081921442819.Spec : Prop :=
  ∀ n, P9900415081921442819.a n = A086343 (n + 1)

end A086343

/-! ## A086343.P7718341050245120563

`eq[2, A082850(n+1)]`
-/

namespace A086343.P7718341050245120563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086343.P7718341050245120563

namespace A086343

/-- `eq[2, A082850(n+1)]` -/
def P7718341050245120563.Spec : Prop :=
  ∀ n, (P7718341050245120563.a n : ℤ) = A086343 (n + 1)

end A086343

/-! ## A086343.P16360738264840807867

`A288933(n+1)+n`
-/

namespace A086343.P16360738264840807867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288933 (n + 1) + (n : ℤ)

end

end A086343.P16360738264840807867

namespace A086343

/-- `A288933(n+1)+n` -/
def P16360738264840807867.Spec : Prop :=
  ∀ n, P16360738264840807867.a n = A086343 (n + 1)

end A086343

/-! ## A086343.P16763788648528507334

`A004134(n)+2+n`
-/

namespace A086343.P16763788648528507334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n + 2 + (n : ℤ)

end

end A086343.P16763788648528507334

namespace A086343

/-- `A004134(n)+2+n` -/
def P16763788648528507334.Spec : Prop :=
  ∀ n, P16763788648528507334.a n = A086343 (n + 1)

end A086343

/-! ## A086343.P5246256901387650999

`∑[abs(A123725(n))+1]`
-/

namespace A086343.P5246256901387650999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123725 n| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086343.P5246256901387650999

namespace A086343

/-- `∑[abs(A123725(n))+1]` -/
def P5246256901387650999.Spec : Prop :=
  ∀ n, P5246256901387650999.a n = A086343 (n + 1)

end A086343

/-! ## A086343.P9337704467988762866

`A101925(n)+Δ[n²]`
-/

namespace A086343.P9337704467988762866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A086343.P9337704467988762866

namespace A086343

/-- `A101925(n)+Δ[n²]` -/
def P9337704467988762866.Spec : Prop :=
  ∀ n, P9337704467988762866.a n = A086343 (n + 1)

end A086343

/-! ## A086343.P6785409237499674110

`∑[A089080(n+1)+1]`
-/

namespace A086343.P6785409237499674110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086343.P6785409237499674110

namespace A086343

/-- `∑[A089080(n+1)+1]` -/
def P6785409237499674110.Spec : Prop :=
  ∀ n, P6785409237499674110.a n = A086343 (n + 1)

end A086343

/-! ## A086343.P11858846672566447232

`∑[val(A004277(n), 2)+2]`
-/

namespace A086343.P11858846672566447232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 n).toNat 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086343.P11858846672566447232

namespace A086343

/-- `∑[val(A004277(n), 2)+2]` -/
def P11858846672566447232.Spec : Prop :=
  ∀ n, (P11858846672566447232.a n : ℤ) = A086343 (n + 1)

end A086343

/-! ## A086343.P1610551621061060150

`∑[val(A006863(n), 2)]+2`
-/

namespace A086343.P1610551621061060150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006863 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A086343.P1610551621061060150

namespace A086343

/-- `∑[val(A006863(n), 2)]+2` -/
def P1610551621061060150.Spec : Prop :=
  ∀ n, (P1610551621061060150.a n : ℤ) = A086343 (n + 1)

end A086343

/-! ## A086343.P16289181082092480199

`∑[val(A007900(n), 2)]+2`
-/

namespace A086343.P16289181082092480199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007900 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A086343.P16289181082092480199

namespace A086343

/-- `∑[val(A007900(n), 2)]+2` -/
def P16289181082092480199.Spec : Prop :=
  ∀ n, (P16289181082092480199.a n : ℤ) = A086343 (n + 1)

end A086343

/-! ## A086343.P109144431064641529

`∑[val(A008458(n), 2)+2]`
-/

namespace A086343.P109144431064641529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008458 n).toNat 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086343.P109144431064641529

namespace A086343

/-- `∑[val(A008458(n), 2)+2]` -/
def P109144431064641529.Spec : Prop :=
  ∀ n, (P109144431064641529.a n : ℤ) = A086343 (n + 1)

end A086343

/-! ## A086343.P16650585205745960984

`∑[val(A255177(n), 2)+2]`
-/

namespace A086343.P16650585205745960984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255177 n).toNat 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086343.P16650585205745960984

namespace A086343

/-- `∑[val(A255177(n), 2)+2]` -/
def P16650585205745960984.Spec : Prop :=
  ∀ n, (P16650585205745960984.a n : ℤ) = A086343 (n + 1)

end A086343

/-! ## A086343.P17107556053476218048

`∑[a(A142150(n))+1]` with `a(0)=2`
-/

namespace A086343.P17107556053476218048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (A142150 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086343.P17107556053476218048

namespace A086343

/-- `∑[a(A142150(n))+1]` -/
def P17107556053476218048.Spec : Prop :=
  ∀ n, (P17107556053476218048.a n : ℤ) = A086343 (n + 1)

end A086343

/-!
# A086344: a(n) = -2*a(n-1) + 4*a(n-2), a(0) = 1, a(1) = 0.

The programs for A086344, the canonical program `A086344.P15383927170165244125` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086344 has offset 0).

The definition of A086344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086344.P2999946367449624087

`ogf((1+2x)/(1+2x-4x^2))`
-/

namespace A086344.P2999946367449624087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 2, -4] n

end

end A086344.P2999946367449624087

namespace A086344

/-- `ogf((1+2x)/(1+2x-4x^2))` -/
def P2999946367449624087.Spec : Prop :=
  ∀ n, P2999946367449624087.a n = A086344 n

end A086344

/-! ## A086344.P15383927170165244125

`8*(a(n-2)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086344

/-- `8*(a(n-2)-a(n-3))` -/
def P15383927170165244125.Spec : Prop :=
  ∀ n, P15383927170165244125.a n = A086344 n

theorem P15383927170165244125.correct : P15383927170165244125.Spec := by
  intro n
  simp only [A086344]

end A086344

/-! ## A086344.P12380356428530651767

`(a(n-2)-a(n-1)/2)/(1/2)²` with `a(0)=1, a(1)=0`
-/

namespace A086344.P12380356428530651767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (a (n - 2) - a (n - 1) / 2) / ((1 : ℚ) / 2) ^ 2

end

end A086344.P12380356428530651767

namespace A086344

/-- `(a(n-2)-a(n-1)/2)/(1/2)²` -/
def P12380356428530651767.Spec : Prop :=
  ∀ n, P12380356428530651767.a n = (A086344 n : ℚ)

end A086344

/-! ## A086344.P15575992967464487975

`(-2)^n*Δ[A000045(n)]`
-/

namespace A086344.P15575992967464487975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * (f1 (n + 1) - f1 n)

end

end A086344.P15575992967464487975

namespace A086344

/-- `(-2)^n*Δ[A000045(n)]` -/
def P15575992967464487975.Spec : Prop :=
  ∀ n, P15575992967464487975.a n = A086344 n

end A086344

/-! ## A086344.P17657610238875105086

`(-2)^n*A000045(abs(1-n))`
-/

namespace A086344.P17657610238875105086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A000045 |1 - (n : ℤ)|.toNat

end

end A086344.P17657610238875105086

namespace A086344

/-- `(-2)^n*A000045(abs(1-n))` -/
def P17657610238875105086.Spec : Prop :=
  ∀ n, P17657610238875105086.a n = A086344 n

end A086344

/-! ## A086344.P1423226864966222162

`A006355(n)*A084633(n)`
-/

namespace A086344.P1423226864966222162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n * A084633 n

end

end A086344.P1423226864966222162

namespace A086344

/-- `A006355(n)*A084633(n)` -/
def P1423226864966222162.Spec : Prop :=
  ∀ n, P1423226864966222162.a n = A086344 n

end A086344

/-! ## A086344.P12584776234516296429

`A122803(n)*A212804(n)`
-/

namespace A086344.P12584776234516296429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A212804 n

end

end A086344.P12584776234516296429

namespace A086344

/-- `A122803(n)*A212804(n)` -/
def P12584776234516296429.Spec : Prop :=
  ∀ n, P12584776234516296429.a n = A086344 n

end A086344

/-! ## A086344.P7329465500523667653

`Δ[A268741(n)]*A212804(n)`
-/

namespace A086344.P7329465500523667653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A212804 n

end

end A086344.P7329465500523667653

namespace A086344

/-- `Δ[A268741(n)]*A212804(n)` -/
def P7329465500523667653.Spec : Prop :=
  ∀ n, P7329465500523667653.a n = A086344 n

end A086344

/-! ## A086344.P5300900942137642921

`(A119282(n)+1)*A000079(n)`
-/

namespace A086344.P5300900942137642921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A119282 n + 1) * A000079 n

end

end A086344.P5300900942137642921

namespace A086344

/-- `(A119282(n)+1)*A000079(n)` -/
def P5300900942137642921.Spec : Prop :=
  ∀ n, P5300900942137642921.a n = A086344 n

end A086344

/-! ## A086344.P13585297763049117078

`A084633(n)*A163733(n+1)`
-/

namespace A086344.P13585297763049117078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084633 n * A163733 (n + 1)

end

end A086344.P13585297763049117078

namespace A086344

/-- `A084633(n)*A163733(n+1)` -/
def P13585297763049117078.Spec : Prop :=
  ∀ n, P13585297763049117078.a n = A086344 n

end A086344

/-! ## A086344.P8492407813033033608

`A122803(n+1)/2*A152163(n+1)`
-/

namespace A086344.P8492407813033033608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122803 (n + 1) : ℚ) / 2 * (A152163 (n + 1) : ℚ)

end

end A086344.P8492407813033033608

namespace A086344

/-- `A122803(n+1)/2*A152163(n+1)` -/
def P8492407813033033608.Spec : Prop :=
  ∀ n, P8492407813033033608.a n = (A086344 n : ℚ)

end A086344

/-! ## A086344.P4885549897010969027

`-(A000045(n)-A000045(n+1))*(-2)^n`
-/

namespace A086344.P4885549897010969027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A000045 n - A000045 (n + 1)) * (-2) ^ n)

end

end A086344.P4885549897010969027

namespace A086344

/-- `-(A000045(n)-A000045(n+1))*(-2)^n` -/
def P4885549897010969027.Spec : Prop :=
  ∀ n, P4885549897010969027.a n = A086344 n

end A086344

/-! ## A086344.P16552444650709626790

`(A000045(n+1)-A000045(n))*A122803(n)`
-/

namespace A086344.P16552444650709626790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) - A000045 n) * A122803 n

end

end A086344.P16552444650709626790

namespace A086344

/-- `(A000045(n+1)-A000045(n))*A122803(n)` -/
def P16552444650709626790.Spec : Prop :=
  ∀ n, P16552444650709626790.a n = A086344 n

end A086344

/-! ## A086344.P6941934398680102155

`A087205(n+1)/2`
-/

namespace A086344.P6941934398680102155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087205 (n + 1) : ℚ) / 2

end

end A086344.P6941934398680102155

namespace A086344

/-- `A087205(n+1)/2` -/
def P6941934398680102155.Spec : Prop :=
  ∀ n, P6941934398680102155.a n = (A086344 n : ℚ)

end A086344

/-! ## A086344.P17642138985614086581

`a(n-1)-A152174(n-1)` with `a(0)=1`
-/

namespace A086344.P17642138985614086581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A152174 (n - 1)

end

end A086344.P17642138985614086581

namespace A086344

/-- `a(n-1)-A152174(n-1)` -/
def P17642138985614086581.Spec : Prop :=
  ∀ n, P17642138985614086581.a n = A086344 n

end A086344

/-! ## A086344.P14790896489377893794

`A051792(2*n+1)/A166444(n+1)*A166444(2*n+1)`
-/

namespace A086344.P14790896489377893794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051792 (2 * n + 1) : ℚ) / (A166444 (n + 1) : ℚ) * (A166444 (2 * n + 1) : ℚ)

end

end A086344.P14790896489377893794

namespace A086344

/-- `A051792(2*n+1)/A166444(n+1)*A166444(2*n+1)` -/
def P14790896489377893794.Spec : Prop :=
  ∀ n, P14790896489377893794.a n = (A086344 n : ℚ)

end A086344

/-!
# A086345: Number of connected oriented graphs (i.e., connected directed graphs with no bidirected edges) on n nodes.

The programs for A086345, there is no canonical definition to state claims against.
-/

/-! ## A086345.P847998016637702340

`A281446(∑[char[1]+n])`
-/

namespace A086345.P847998016637702340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281446 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086345.P847998016637702340

/-! ## A086345.P16428988684451508591

`A281446(A000124(n))+floor(acot(n))`
-/

namespace A086345.P16428988684451508591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281446 (A000124 n).toNat + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A086345.P16428988684451508591

/-! ## A086345.P2334747761098984265

`A281446(A000124(n))+A000007(n)`
-/

namespace A086345.P2334747761098984265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281446 (A000124 n).toNat + A000007 n

end

end A086345.P2334747761098984265

/-! ## A086345.P14007181063682308103

`A281446(A000124(n))+A010893(n)`
-/

namespace A086345.P14007181063682308103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281446 (A000124 n).toNat + A010893 (n + 13)

end

end A086345.P14007181063682308103

/-! ## A086345.P18250807045483554777

`A281446(A000124(n))+A010894(n)`
-/

namespace A086345.P18250807045483554777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281446 (A000124 n).toNat + A010894 (n + 21)

end

end A086345.P18250807045483554777

/-!
# A086346: On a 3 X 3 board, the number of n-move paths for a chess king ending in a given corner square.

The programs for A086346, the canonical program `A086346.P17200692926448641761` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086346 has offset 0).

The definition of A086346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086346.P17200692926448641761

`2*a(n-1)+12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=3, a(2)=18`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086346

/-- `2*a(n-1)+12*a(n-2)+8*a(n-3)` -/
def P17200692926448641761.Spec : Prop :=
  ∀ n, (P17200692926448641761.a n : ℤ) = A086346 n

theorem P17200692926448641761.correct : P17200692926448641761.Spec := by
  intro n
  simp only [A086346]

end A086346

/-! ## A086346.P5791154923056199321

`2^(n-3)*(A002203(n+2)+2*(-1)^n)`
-/

namespace A086346.P5791154923056199321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (A002203 (n + 2) + 2 * (-1) ^ n : ℚ)

end

end A086346.P5791154923056199321

namespace A086346

/-- `2^(n-3)*(A002203(n+2)+2*(-1)^n)` -/
def P5791154923056199321.Spec : Prop :=
  ∀ n, P5791154923056199321.a n = (A086346 n : ℚ)

end A086346

/-! ## A086346.P10803298663384549927

`1/32*(2*(-2)^(n+2)+(2+sqrt(8))^(n+2)+(2-sqrt(8))^(n+2))`
-/

namespace A086346.P10803298663384549927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 32 : ℝ) * ((2 * (-2) ^ (n + 2) : ℝ) + (2 + Real.sqrt (8 : ℝ)) ^ (n + 2) + (2 - Real.sqrt (8 : ℝ)) ^ (n + 2))

end

end A086346.P10803298663384549927

namespace A086346

/-- `1/32*(2*(-2)^(n+2)+(2+sqrt(8))^(n+2)+(2-sqrt(8))^(n+2))` -/
def P10803298663384549927.Spec : Prop :=
  ∀ n, P10803298663384549927.a n = (A086346 n : ℝ)

end A086346

/-! ## A086346.P1383581894153948360

`ogf((1+x)/(1-2x-12x^2-8x^3))`
-/

namespace A086346.P1383581894153948360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -12, -8] n

end

end A086346.P1383581894153948360

namespace A086346

/-- `ogf((1+x)/(1-2x-12x^2-8x^3))` -/
def P1383581894153948360.Spec : Prop :=
  ∀ n, P1383581894153948360.a n = A086346 n

end A086346

/-! ## A086346.P15614080255440050743

`A086347(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A086346.P15614080255440050743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086347 n - (a (n - 1) + a (n - 1))

end

end A086346.P15614080255440050743

namespace A086346

/-- `A086347(n)-(a(n-1)+a(n-1))` -/
def P15614080255440050743.Spec : Prop :=
  ∀ n, P15614080255440050743.a n = A086346 n

end A086346

/-! ## A086346.P15973984711490664071

`(A110048(n)+A057087(n))/2`
-/

namespace A086346.P15973984711490664071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110048 n + A057087 n : ℚ) / 2

end

end A086346.P15973984711490664071

namespace A086346

/-- `(A110048(n)+A057087(n))/2` -/
def P15973984711490664071.Spec : Prop :=
  ∀ n, P15973984711490664071.a n = (A086346 n : ℚ)

end A086346

/-! ## A086346.P6854467507480118427

`floor(A086347(n)²/A086348(n))`
-/

namespace A086346.P6854467507480118427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086347 n ^ 2 : ℚ) / (A086348 n : ℚ)⌋

end

end A086346.P6854467507480118427

namespace A086346

/-- `floor(A086347(n)²/A086348(n))` -/
def P6854467507480118427.Spec : Prop :=
  ∀ n, P6854467507480118427.a n = A086346 n

end A086346

/-!
# A086347: On a 3 X 3 board, number of n-move routes of chess king ending in a given side square.

The programs for A086347, the canonical program `A086347.P3938287612727224172` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086347 has offset 0).

The definition of A086347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086347.P3938287612727224172

`4*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086347

/-- `4*a(n-1)+4*a(n-2)` -/
def P3938287612727224172.Spec : Prop :=
  ∀ n, (P3938287612727224172.a n : ℤ) = A086347 n

theorem P3938287612727224172.correct : P3938287612727224172.Spec := by
  intro n
  simp only [A086347]

end A086347

/-! ## A086347.P8256958641276728504

`sqrt(2)/32*((2+sqrt(8))^(n+2)-(2-sqrt(8))^(n+2))`
-/

namespace A086347.P8256958641276728504
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) / 32 * ((2 + Real.sqrt (8 : ℝ)) ^ (n + 2) - (2 - Real.sqrt (8 : ℝ)) ^ (n + 2))

end

end A086347.P8256958641276728504

namespace A086347

/-- `sqrt(2)/32*((2+sqrt(8))^(n+2)-(2-sqrt(8))^(n+2))` -/
def P8256958641276728504.Spec : Prop :=
  ∀ n, P8256958641276728504.a n = (A086347 n : ℝ)

end A086347

/-! ## A086347.P749585310284023112

`ogf((1+x)/(1-4x-4x^2))`
-/

namespace A086347.P749585310284023112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -4, -4] n

end

end A086347.P749585310284023112

namespace A086347

/-- `ogf((1+x)/(1-4x-4x^2))` -/
def P749585310284023112.Spec : Prop :=
  ∀ n, P749585310284023112.a n = A086347 n

end A086347

/-! ## A086347.P6151982321261399573

`round((sqrt(8)+2)*a(n-1))` with `a(0)=1`
-/

namespace A086347.P6151982321261399573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (8 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A086347.P6151982321261399573

namespace A086347

/-- `round((sqrt(8)+2)*a(n-1))` -/
def P6151982321261399573.Spec : Prop :=
  ∀ n, P6151982321261399573.a n = A086347 n

end A086347

/-! ## A086347.P4719690094371036456

`(a(n-1)+a(n-2))/(1/2)²` with `a(0)=1, a(1)=5`
-/

namespace A086347.P4719690094371036456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  (a (n - 1) + a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A086347.P4719690094371036456

namespace A086347

/-- `(a(n-1)+a(n-2))/(1/2)²` -/
def P4719690094371036456.Spec : Prop :=
  ∀ n, P4719690094371036456.a n = (A086347 n : ℚ)

end A086347

/-! ## A086347.P14175966055875309011

`6*a(n-1)-A108051(n)` with `a(0)=1`
-/

namespace A086347.P14175966055875309011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A108051 n

end

end A086347.P14175966055875309011

namespace A086347

/-- `6*a(n-1)-A108051(n)` -/
def P14175966055875309011.Spec : Prop :=
  ∀ n, P14175966055875309011.a n = A086347 n

end A086347

/-! ## A086347.P5097890476149849265

`A155117(n+1)/3`
-/

namespace A086347.P5097890476149849265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155117 (n + 1) : ℚ) / 3

end

end A086347.P5097890476149849265

namespace A086347

/-- `A155117(n+1)/3` -/
def P5097890476149849265.Spec : Prop :=
  ∀ n, P5097890476149849265.a n = (A086347 n : ℚ)

end A086347

/-! ## A086347.P7665122969706810355

`A057087(n+1)/4`
-/

namespace A086347.P7665122969706810355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057087 (n + 1) : ℚ) / 4

end

end A086347.P7665122969706810355

namespace A086347

/-- `A057087(n+1)/4` -/
def P7665122969706810355.Spec : Prop :=
  ∀ n, P7665122969706810355.a n = (A086347 n : ℚ)

end A086347

/-! ## A086347.P10219223176189096426

`A123871(n+1)/5`
-/

namespace A086347.P10219223176189096426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123871 (n + 1) : ℚ) / 5

end

end A086347.P10219223176189096426

namespace A086347

/-- `A123871(n+1)/5` -/
def P10219223176189096426.Spec : Prop :=
  ∀ n, P10219223176189096426.a n = (A086347 n : ℚ)

end A086347

/-! ## A086347.P10278181484950985352

`(A094013(n)+Δ[A084128(n)])/2`
-/

namespace A086347.P10278181484950985352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094013 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A086347.P10278181484950985352

namespace A086347

/-- `(A094013(n)+Δ[A084128(n)])/2` -/
def P10278181484950985352.Spec : Prop :=
  ∀ n, P10278181484950985352.a n = (A086347 n : ℚ)

end A086347

/-! ## A086347.P14359690147466908460

`A123871(n+1)-A057087(n+1)`
-/

namespace A086347.P14359690147466908460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123871 (n + 1) - A057087 (n + 1)

end

end A086347.P14359690147466908460

namespace A086347

/-- `A123871(n+1)-A057087(n+1)` -/
def P14359690147466908460.Spec : Prop :=
  ∀ n, P14359690147466908460.a n = A086347 n

end A086347

/-! ## A086347.P15334255015405137684

`A057087(n+1)-A155117(n+1)`
-/

namespace A086347.P15334255015405137684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 (n + 1) - A155117 (n + 1)

end

end A086347.P15334255015405137684

namespace A086347

/-- `A057087(n+1)-A155117(n+1)` -/
def P15334255015405137684.Spec : Prop :=
  ∀ n, P15334255015405137684.a n = A086347 n

end A086347

/-! ## A086347.P12600873741737656774

`Δ[A048739(n)]*A011782(n+1)/2`
-/

namespace A086347.P12600873741737656774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) * A011782 (n + 1) : ℚ) / 2

end

end A086347.P12600873741737656774

namespace A086347

/-- `Δ[A048739(n)]*A011782(n+1)/2` -/
def P12600873741737656774.Spec : Prop :=
  ∀ n, P12600873741737656774.a n = (A086347 n : ℚ)

end A086347

/-!
# A086348: On a 3 X 3 board, number of n-move routes of chess king ending in the central square.

The programs for A086348, the canonical program `A086348.P6736856918536647258` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086348 has offset 0).

The definition of A086348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086348.P6736856918536647258

`2*a(n-1)+12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=8, a(2)=32`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086348

/-- `2*a(n-1)+12*a(n-2)+8*a(n-3)` -/
def P6736856918536647258.Spec : Prop :=
  ∀ n, (P6736856918536647258.a n : ℤ) = A086348 n

theorem P6736856918536647258.correct : P6736856918536647258.Spec := by
  intro n
  simp only [A086348]

end A086348

/-! ## A086348.P4896840882757483062

`1/16*(4*(-2)^(n+1)+(2+sqrt(8))^(n+2)+(2-sqrt(8))^(n+2))`
-/

namespace A086348.P4896840882757483062
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 16 : ℝ) * ((4 * (-2) ^ (n + 1) : ℝ) + (2 + Real.sqrt (8 : ℝ)) ^ (n + 2) + (2 - Real.sqrt (8 : ℝ)) ^ (n + 2))

end

end A086348.P4896840882757483062

namespace A086348

/-- `1/16*(4*(-2)^(n+1)+(2+sqrt(8))^(n+2)+(2-sqrt(8))^(n+2))` -/
def P4896840882757483062.Spec : Prop :=
  ∀ n, P4896840882757483062.a n = (A086348 n : ℝ)

end A086348

/-! ## A086348.P731698592084643639

`A110048(n+1)/2`
-/

namespace A086348.P731698592084643639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110048 (n + 1) : ℚ) / 2

end

end A086348.P731698592084643639

namespace A086348

/-- `A110048(n+1)/2` -/
def P731698592084643639.Spec : Prop :=
  ∀ n, P731698592084643639.a n = (A086348 n : ℚ)

end A086348

/-! ## A086348.P17923868927845783822

`Δ[∑[A110048(n)]/2]`
-/

namespace A086348.P17923868927845783822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110048 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086348.P17923868927845783822

namespace A086348

/-- `Δ[∑[A110048(n)]/2]` -/
def P17923868927845783822.Spec : Prop :=
  ∀ n, P17923868927845783822.a n = (A086348 n : ℚ)

end A086348

/-! ## A086348.P14993801083227915727

`A086349(n)-a(n-1)` with `a(0)=1`
-/

namespace A086348.P14993801083227915727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086349 n - a (n - 1)

end

end A086348.P14993801083227915727

namespace A086348

/-- `A086349(n)-a(n-1)` -/
def P14993801083227915727.Spec : Prop :=
  ∀ n, P14993801083227915727.a n = A086348 n

end A086348

/-! ## A086348.P4416158243980712076

`A086346(n+1)-2*A086347(n)`
-/

namespace A086348.P4416158243980712076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086346 (n + 1) - 2 * A086347 n

end

end A086348.P4416158243980712076

namespace A086348

/-- `A086346(n+1)-2*A086347(n)` -/
def P4416158243980712076.Spec : Prop :=
  ∀ n, P4416158243980712076.a n = A086348 n

end A086348

/-! ## A086348.P624121056159531011

`A086346(n+1)-A057087(n+1)/2`
-/

namespace A086348.P624121056159531011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086346 (n + 1) : ℚ) - (A057087 (n + 1) : ℚ) / 2

end

end A086348.P624121056159531011

namespace A086348

/-- `A086346(n+1)-A057087(n+1)/2` -/
def P624121056159531011.Spec : Prop :=
  ∀ n, P624121056159531011.a n = (A086348 n : ℚ)

end A086348

/-! ## A086348.P4298894709908240334

`2*A086347(n+1)-A086349(n+1)`
-/

namespace A086348.P4298894709908240334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086347 (n + 1) - A086349 (n + 1)

end

end A086348.P4298894709908240334

namespace A086348

/-- `2*A086347(n+1)-A086349(n+1)` -/
def P4298894709908240334.Spec : Prop :=
  ∀ n, P4298894709908240334.a n = A086348 n

end A086348

/-!
# A086349: On a 3 X 3 board, the number of n-move paths for a chess king.

The programs for A086349, the canonical program `A086349.P13174248579140179318` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086349 has offset 0).

The definition of A086349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086349.P13174248579140179318

`2*a(n-1)+12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=9, a(2)=40, a(3)=200`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086349

/-- `2*a(n-1)+12*a(n-2)+8*a(n-3)` -/
def P13174248579140179318.Spec : Prop :=
  ∀ n, (P13174248579140179318.a n : ℤ) = A086349 n

theorem P13174248579140179318.correct : P13174248579140179318.Spec := by
  intro n
  simp only [A086349]

end A086349

/-! ## A086349.P16327922592385107009

`floor(A086346(n+1)/2)`
-/

namespace A086349.P16327922592385107009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086346 (n + 1) : ℚ) / 2⌋

end

end A086349.P16327922592385107009

namespace A086349

/-- `floor(A086346(n+1)/2)` -/
def P16327922592385107009.Spec : Prop :=
  ∀ n, P16327922592385107009.a n = A086349 n

end A086349

/-! ## A086349.P764041154846449052

`floor(A086347(n)+A086348(n)/2)`
-/

namespace A086349.P764041154846449052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086347 n : ℚ) + (A086348 n : ℚ) / 2⌋

end

end A086349.P764041154846449052

namespace A086349

/-- `floor(A086347(n)+A086348(n)/2)` -/
def P764041154846449052.Spec : Prop :=
  ∀ n, P764041154846449052.a n = A086349 n

end A086349

/-! ## A086349.P17958084891642092009

`A086346(n+1)/(A000007(n)+2)`
-/

namespace A086349.P17958084891642092009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086346 (n + 1) : ℚ) / (A000007 n + 2 : ℚ)

end

end A086349.P17958084891642092009

namespace A086349

/-- `A086346(n+1)/(A000007(n)+2)` -/
def P17958084891642092009.Spec : Prop :=
  ∀ n, P17958084891642092009.a n = (A086349 n : ℚ)

end A086349

/-! ## A086349.P2253769781461291368

`Δ[∑[A086346(n)]/A036453(n+1)]`
-/

namespace A086349.P2253769781461291368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086346 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A036453 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086349.P2253769781461291368

namespace A086349

/-- `Δ[∑[A086346(n)]/A036453(n+1)]` -/
def P2253769781461291368.Spec : Prop :=
  ∀ n, P2253769781461291368.a n = (A086349 n : ℚ)

end A086349

/-! ## A086349.P11025535341167242168

`A086346(n+1)/A178815(n+1)`
-/

namespace A086349.P11025535341167242168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086346 (n + 1) : ℚ) / (A178815 (n + 1) : ℚ)

end

end A086349.P11025535341167242168

namespace A086349

/-- `A086346(n+1)/A178815(n+1)` -/
def P11025535341167242168.Spec : Prop :=
  ∀ n, P11025535341167242168.a n = (A086349 n : ℚ)

end A086349

/-!
# A086350: Square array of Pell related numbers, read by antidiagonals.

The programs for A086350, there is no canonical definition to state claims against.
-/

/-! ## A086350.P2270108301019673865

`A081572(n)-A011734(A156953(n)²)`
-/

namespace A086350.P2270108301019673865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 n - A011734 (A156953 n ^ 2).toNat

end

end A086350.P2270108301019673865

/-! ## A086350.P3642185247691636627

`A020753(A106179(n+2))-A115220(A002260(n+1))`
-/

namespace A086350.P3642185247691636627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (A106179 (n + 2)).toNat - A115220 (A002260 (n + 1)).toNat

end

end A086350.P3642185247691636627

/-! ## A086350.P14445921869572508072

`A106179(n+2)-A327695(A263858(n))`
-/

namespace A086350.P14445921869572508072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106179 (n + 2) - A327695 (A263858 n).toNat

end

end A086350.P14445921869572508072

/-! ## A086350.P182577456485008819

`A073133(n+1)-A379678(A004760(2*n+3))`
-/

namespace A086350.P182577456485008819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073133 (n + 1) - A379678 (A004760 (2 * n + 3)).toNat

end

end A086350.P182577456485008819

/-!
# A086351: Row T(n,3) of square array A086350.

The programs for A086351, the canonical program `A086351.P5732003736721579715` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086351 has offset 0).

The definition of A086351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086351.P5732003736721579715

`A081179(n+1)-2*A081179(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A086351

/-- `A081179(n+1)-2*A081179(n)` -/
def P5732003736721579715.Spec : Prop :=
  ∀ n, P5732003736721579715.a n = A086351 n

theorem P5732003736721579715.correct : P5732003736721579715.Spec := by
  intro n
  simp only [A086351]

end A086351

/-! ## A086351.P267021138790300136

`ogf((1-2x)/(1-6x+7x^2))`
-/

namespace A086351.P267021138790300136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -6, 7] n

end

end A086351.P267021138790300136

namespace A086351

/-- `ogf((1-2x)/(1-6x+7x^2))` -/
def P267021138790300136.Spec : Prop :=
  ∀ n, P267021138790300136.a n = A086351 n

end A086351

/-! ## A086351.P9278919193429834449

`∑[6*a(n-1)-7*a(n-2)]` with `a(0)=1, a(1)=3, a(2)=13`
-/

namespace A086351.P9278919193429834449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13] fun n f1 =>
  6 * f1 (n - 1) - 7 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086351.P9278919193429834449

namespace A086351

/-- `∑[6*a(n-1)-7*a(n-2)]` -/
def P9278919193429834449.Spec : Prop :=
  ∀ n, P9278919193429834449.a n = A086351 n

end A086351

/-! ## A086351.P9763699906440151076

`A163606(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A086351.P9763699906440151076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163606 (n - 1) + a (n - 1)

end

end A086351.P9763699906440151076

namespace A086351

/-- `A163606(n-1)+a(n-1)` -/
def P9763699906440151076.Spec : Prop :=
  ∀ n, P9763699906440151076.a n = A086351 n

end A086351

/-! ## A086351.P17460099820606561866

`A083878(n)+A081179(n)`
-/

namespace A086351.P17460099820606561866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 n + A081179 n

end

end A086351.P17460099820606561866

namespace A086351

/-- `A083878(n)+A081179(n)` -/
def P17460099820606561866.Spec : Prop :=
  ∀ n, P17460099820606561866.a n = A086351 n

end A086351

/-! ## A086351.P1580905378798035203

`6*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A086351.P1580905378798035203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  6 * a (n - 1) - 7 * a (n - 2)

end

end A086351.P1580905378798035203

namespace A086351

/-- `6*a(n-1)-7*a(n-2)` -/
def P1580905378798035203.Spec : Prop :=
  ∀ n, P1580905378798035203.a n = A086351 n

end A086351

/-! ## A086351.P15418152741314944414

`A034999(n+1)/2`
-/

namespace A086351.P15418152741314944414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034999 (n + 1) : ℚ) / 2

end

end A086351.P15418152741314944414

namespace A086351

/-- `A034999(n+1)/2` -/
def P15418152741314944414.Spec : Prop :=
  ∀ n, P15418152741314944414.a n = (A086351 n : ℚ)

end A086351

/-! ## A086351.P15002905624826427440

`A102285(n)-A081179(n)`
-/

namespace A086351.P15002905624826427440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n - A081179 n

end

end A086351.P15002905624826427440

namespace A086351

/-- `A102285(n)-A081179(n)` -/
def P15002905624826427440.Spec : Prop :=
  ∀ n, P15002905624826427440.a n = A086351 n

end A086351

/-! ## A086351.P11334964442655523155

`A161944(n)-A083878(n)`
-/

namespace A086351.P11334964442655523155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161944 n - A083878 n

end

end A086351.P11334964442655523155

namespace A086351

/-- `A161944(n)-A083878(n)` -/
def P11334964442655523155.Spec : Prop :=
  ∀ n, P11334964442655523155.a n = A086351 n

end A086351

/-! ## A086351.P14117778168250871572

`A164033(n)-A102285(n)`
-/

namespace A086351.P14117778168250871572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164033 n - A102285 n

end

end A086351.P14117778168250871572

namespace A086351

/-- `A164033(n)-A102285(n)` -/
def P14117778168250871572.Spec : Prop :=
  ∀ n, P14117778168250871572.a n = A086351 n

end A086351

/-! ## A086351.P505349062326556117

`A163606(n)-A164033(n)`
-/

namespace A086351.P505349062326556117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163606 n - A164033 n

end

end A086351.P505349062326556117

namespace A086351

/-- `A163606(n)-A164033(n)` -/
def P505349062326556117.Spec : Prop :=
  ∀ n, P505349062326556117.a n = A086351 n

end A086351

/-! ## A086351.P14123897626466660845

`(A164033(n)-A081179(n))/2`
-/

namespace A086351.P14123897626466660845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164033 n - A081179 n : ℚ) / 2

end

end A086351.P14123897626466660845

namespace A086351

/-- `(A164033(n)-A081179(n))/2` -/
def P14123897626466660845.Spec : Prop :=
  ∀ n, P14123897626466660845.a n = (A086351 n : ℚ)

end A086351

/-! ## A086351.P14351210996372411898

`(A163606(n)-A102285(n))/2`
-/

namespace A086351.P14351210996372411898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163606 n - A102285 n : ℚ) / 2

end

end A086351.P14351210996372411898

namespace A086351

/-- `(A163606(n)-A102285(n))/2` -/
def P14351210996372411898.Spec : Prop :=
  ∀ n, P14351210996372411898.a n = (A086351 n : ℚ)

end A086351

/-! ## A086351.P8359306287424907931

`A102285(n)+∑[A102285(n)]-A163348(n)`
-/

namespace A086351.P8359306287424907931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n + (∑ j ∈ Finset.range (n + 1), f1 j - A163348 n)

end

end A086351.P8359306287424907931

namespace A086351

/-- `A102285(n)+∑[A102285(n)]-A163348(n)` -/
def P8359306287424907931.Spec : Prop :=
  ∀ n, P8359306287424907931.a n = A086351 n

end A086351

/-! ## A086351.P11162577289679508451

`A161944(n+1)/7`
-/

namespace A086351.P11162577289679508451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161944 (n + 1) : ℚ) / 7

end

end A086351.P11162577289679508451

namespace A086351

/-- `A161944(n+1)/7` -/
def P11162577289679508451.Spec : Prop :=
  ∀ n, P11162577289679508451.a n = (A086351 n : ℚ)

end A086351

/-!
# A086352: Main diagonal of square array A086350.

The programs for A086352, the canonical program `A086352.P7709946521901140214` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086352 has offset 0).

The definition of A086352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086352.P7709946521901140214

`((1+sqrt(2))*(n+sqrt(2))^n-(1-sqrt(2))*(n-sqrt(2))^n)/sqrt(8)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086352

/-- `((1+sqrt(2))*(n+sqrt(2))^n-(1-sqrt(2))*(n-sqrt(2))^n)/sqrt(8)` -/
def P7709946521901140214.Spec : Prop :=
  ∀ n, P7709946521901140214.a n = (A086352 n : ℝ)

end A086352

/-! ## A086352.P354611282349633246

`A086350(∑[4*n])`
-/

namespace A086352.P354611282349633246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086350 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086352.P354611282349633246

namespace A086352

/-- `A086350(∑[4*n])` -/
def P354611282349633246.Spec : Prop :=
  ∀ n, P354611282349633246.a n = A086352 n

end A086352

/-!
# A086354: Fixed point if (nonzero-digit product)-function at initial value 2^n is iterated.

The programs for A086354, the canonical program `A086354.P11978846609188503568` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086354 has offset 1).

The definition of A086354 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051802, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086354.P11978846609188503568

`A051802(2^(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A086354

/-- `A051802(2^(n+1))` -/
def P11978846609188503568.Spec : Prop :=
  ∀ n, P11978846609188503568.a n = A086354 (n + 1)

theorem P11978846609188503568.correct : P11978846609188503568.Spec := by
  intro n
  simp only [A086354, Nat.add_sub_cancel]

end A086354

/-! ## A086354.P326667312983440090

`dr(A051802(Δ[A048578(n)]))`
-/

namespace A086354.P326667312983440090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A051802 (f1 (n + 1) - f1 n).toNat)

end

end A086354.P326667312983440090

namespace A086354

/-- `dr(A051802(Δ[A048578(n)]))` -/
def P326667312983440090.Spec : Prop :=
  ∀ n, (P326667312983440090.a n : ℤ) = A086354 (n + 1)

end A086354

/-!
# A086355: Fixed point if [nonzero-digit product]-function at initial-value=prime(n) is iterated.

The programs for A086355, the canonical program `A086355.P16316922587585958246` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086355 has offset 1).

The definition of A086355 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A051802, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086355.P16316922587585958246

`A051802(A000040(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A086355

/-- `A051802(A000040(n+1))` -/
def P16316922587585958246.Spec : Prop :=
  ∀ n, P16316922587585958246.a n = A086355 (n + 1)

theorem P16316922587585958246.correct : P16316922587585958246.Spec := by
  intro n
  simp only [A086355, Nat.add_sub_cancel]

end A086355

/-! ## A086355.P1375151844834582681

`A051802(A101987(n+1))`
-/

namespace A086355.P1375151844834582681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A101987 (n + 1)).toNat

end

end A086355.P1375151844834582681

namespace A086355

/-- `A051802(A101987(n+1))` -/
def P1375151844834582681.Spec : Prop :=
  ∀ n, P1375151844834582681.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P6598210655203330824

`A051802(A171013(n+1))`
-/

namespace A086355.P6598210655203330824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A171013 (n + 1)).toNat

end

end A086355.P6598210655203330824

namespace A086355

/-- `A051802(A171013(n+1))` -/
def P6598210655203330824.Spec : Prop :=
  ∀ n, P6598210655203330824.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P15624039811402465415

`A051802(A028905(n+1))`
-/

namespace A086355.P15624039811402465415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A028905 (n + 1)).toNat

end

end A086355.P15624039811402465415

namespace A086355

/-- `A051802(A028905(n+1))` -/
def P15624039811402465415.Spec : Prop :=
  ∀ n, P15624039811402465415.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P13876628929488672362

`A051802(Δ[A007504(n)])`
-/

namespace A086355.P13876628929488672362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (f1 (n + 1) - f1 n).toNat

end

end A086355.P13876628929488672362

namespace A086355

/-- `A051802(Δ[A007504(n)])` -/
def P13876628929488672362.Spec : Prop :=
  ∀ n, P13876628929488672362.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P4758433689684876557

`A051802(A004087(n+1))`
-/

namespace A086355.P4758433689684876557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A004087 (n + 1)).toNat

end

end A086355.P4758433689684876557

namespace A086355

/-- `A051802(A004087(n+1))` -/
def P4758433689684876557.Spec : Prop :=
  ∀ n, P4758433689684876557.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P18263444605054731109

`A051802(A028906(n+1))`
-/

namespace A086355.P18263444605054731109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A028906 (n + 1)).toNat

end

end A086355.P18263444605054731109

namespace A086355

/-- `A051802(A028906(n+1))` -/
def P18263444605054731109.Spec : Prop :=
  ∀ n, P18263444605054731109.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P9326903872109391040

`A051802(A008578(n+2))`
-/

namespace A086355.P9326903872109391040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A008578 (n + 2)).toNat

end

end A086355.P9326903872109391040

namespace A086355

/-- `A051802(A008578(n+2))` -/
def P9326903872109391040.Spec : Prop :=
  ∀ n, P9326903872109391040.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P11083128646195247374

`A051802(A182986(n+2))`
-/

namespace A086355.P11083128646195247374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A182986 (n + 2)).toNat

end

end A086355.P11083128646195247374

namespace A086355

/-- `A051802(A182986(n+2))` -/
def P11083128646195247374.Spec : Prop :=
  ∀ n, P11083128646195247374.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P16768582739157193005

`A051802(sqrt(A001248(n+1)))`
-/

namespace A086355.P16768582739157193005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A086355.P16768582739157193005

namespace A086355

/-- `A051802(sqrt(A001248(n+1)))` -/
def P16768582739157193005.Spec : Prop :=
  ∀ n, P16768582739157193005.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P3649909878008550491

`A051802(record[A006530(n+2)])`
-/

namespace A086355.P3649909878008550491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086355.P3649909878008550491

namespace A086355

/-- `A051802(record[A006530(n+2)])` -/
def P3649909878008550491.Spec : Prop :=
  ∀ n, P3649909878008550491.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P2140056564758070663

`A051802(record[A014963(n+2)])`
-/

namespace A086355.P2140056564758070663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086355.P2140056564758070663

namespace A086355

/-- `A051802(record[A014963(n+2)])` -/
def P2140056564758070663.Spec : Prop :=
  ∀ n, P2140056564758070663.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P819912420969302970

`A051802(record[A020639(n+2)])`
-/

namespace A086355.P819912420969302970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086355.P819912420969302970

namespace A086355

/-- `A051802(record[A020639(n+2)])` -/
def P819912420969302970.Spec : Prop :=
  ∀ n, P819912420969302970.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P17851290502001957310

`A051802(p?[A061397(n+1)])`
-/

namespace A086355.P17851290502001957310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086355.P17851290502001957310

namespace A086355

/-- `A051802(p?[A061397(n+1)])` -/
def P17851290502001957310.Spec : Prop :=
  ∀ n, P17851290502001957310.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P2613040488201750894

`A051802(p?[A062759(n+1)])`
-/

namespace A086355.P2613040488201750894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086355.P2613040488201750894

namespace A086355

/-- `A051802(p?[A062759(n+1)])` -/
def P2613040488201750894.Spec : Prop :=
  ∀ n, P2613040488201750894.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P17745046356117499704

`A051802(A007504(n+1)-A007504(n))`
-/

namespace A086355.P17745046356117499704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A007504 (n + 1) - A007504 n).toNat

end

end A086355.P17745046356117499704

namespace A086355

/-- `A051802(A007504(n+1)-A007504(n))` -/
def P17745046356117499704.Spec : Prop :=
  ∀ n, P17745046356117499704.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P7560975807677174663

`A051802(A068395(n+1)+A007605(n+1))`
-/

namespace A086355.P7560975807677174663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A068395 (n + 1) + A007605 (n + 1)).toNat

end

end A086355.P7560975807677174663

namespace A086355

/-- `A051802(A068395(n+1)+A007605(n+1))` -/
def P7560975807677174663.Spec : Prop :=
  ∀ n, P7560975807677174663.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P3510956594132864753

`A051802(A065073(n+1)-A007605(n+1))`
-/

namespace A086355.P3510956594132864753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A065073 (n + 1) - A007605 (n + 1)).toNat

end

end A086355.P3510956594132864753

namespace A086355

/-- `A051802(A065073(n+1)-A007605(n+1))` -/
def P3510956594132864753.Spec : Prop :=
  ∀ n, P3510956594132864753.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P2924547235941581128

`A051802(A101989(n+1))`
-/

namespace A086355.P2924547235941581128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A101989 (n + 1)).toNat

end

end A086355.P2924547235941581128

namespace A086355

/-- `A051802(A101989(n+1))` -/
def P2924547235941581128.Spec : Prop :=
  ∀ n, P2924547235941581128.a n = A086355 (n + 1)

end A086355

/-! ## A086355.P9563900213063795042

`A051802(A039790(n+1))`
-/

namespace A086355.P9563900213063795042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A039790 (n + 1)).toNat

end

end A086355.P9563900213063795042

namespace A086355

/-- `A051802(A039790(n+1))` -/
def P9563900213063795042.Spec : Prop :=
  ∀ n, P9563900213063795042.a n = A086355 (n + 1)

end A086355

/-!
# A086358: Digital root of n!.

The programs for A086358, the canonical program `A086358.P8974172340659135165` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086358 has offset 0).

The definition of A086358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086358.P8974172340659135165

`dr(n*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086358

/-- `dr(n*a(n-1))` -/
def P8974172340659135165.Spec : Prop :=
  ∀ n, (P8974172340659135165.a n : ℤ) = A086358 n

theorem P8974172340659135165.correct : P8974172340659135165.Spec := by
  intro n
  simp only [A086358]

end A086358

/-!
# A086359: Fixed point if [decimal-digit-sum]-function at initial-value=A000984(n)=C[2n,n] is iterated.

The programs for A086359, the canonical program `A086359.P1098304662819681129` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086359 has offset 1).

The definition of A086359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086359.P1098304662819681129

`dr(∏[2/(n+1)-4])`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086359

/-- `dr(∏[2/(n+1)-4])` -/
def P1098304662819681129.Spec : Prop :=
  ∀ n, (P1098304662819681129.a n : ℤ) = A086359 (n + 1)

theorem P1098304662819681129.correct : P1098304662819681129.Spec := by
  intro n
  simp only [A086359, Nat.add_sub_cancel]

end A086359

/-! ## A086359.P11561384822258960437

`dr(∑[abs(Δ[C(2*n, n)])])+1`
-/

namespace A086359.P11561384822258960437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A086359.P11561384822258960437

namespace A086359

/-- `dr(∑[abs(Δ[C(2*n, n)])])+1` -/
def P11561384822258960437.Spec : Prop :=
  ∀ n, (P11561384822258960437.a n : ℤ) = A086359 (n + 1)

end A086359

/-! ## A086359.P14913001016901227083

`A060011(3*(n+1))`
-/

namespace A086359.P14913001016901227083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060011 (3 * (n + 1))

end

end A086359.P14913001016901227083

namespace A086359

/-- `A060011(3*(n+1))` -/
def P14913001016901227083.Spec : Prop :=
  ∀ n, P14913001016901227083.a n = A086359 (n + 1)

end A086359

/-! ## A086359.P17903419767673932623

`A130856(9*(n+1))`
-/

namespace A086359.P17903419767673932623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130856 (9 * (n + 1))

end

end A086359.P17903419767673932623

namespace A086359

/-- `A130856(9*(n+1))` -/
def P17903419767673932623.Spec : Prop :=
  ∀ n, P17903419767673932623.a n = A086359 (n + 1)

end A086359

/-! ## A086359.P14502307451229109696

`dr(A043294(n+1))%10`
-/

namespace A086359.P14502307451229109696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A043294 (n + 1)) % 10

end

end A086359.P14502307451229109696

namespace A086359

/-- `dr(A043294(n+1))%10` -/
def P14502307451229109696.Spec : Prop :=
  ∀ n, (P14502307451229109696.a n : ℤ) = A086359 (n + 1)

end A086359

/-! ## A086359.P11559596241313087335

`A010888(A043294(n+1))`
-/

namespace A086359.P11559596241313087335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A043294 (n + 1)).toNat

end

end A086359.P11559596241313087335

namespace A086359

/-- `A010888(A043294(n+1))` -/
def P11559596241313087335.Spec : Prop :=
  ∀ n, P11559596241313087335.a n = A086359 (n + 1)

end A086359

/-! ## A086359.P18238971469673028138

`A007318(C(2, n))*dr(A043294(n+1))`
-/

namespace A086359.P18238971469673028138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * (SequenceMachineLib.digitalRoot (A043294 (n + 1)) : ℤ)

end

end A086359.P18238971469673028138

namespace A086359

/-- `A007318(C(2, n))*dr(A043294(n+1))` -/
def P18238971469673028138.Spec : Prop :=
  ∀ n, P18238971469673028138.a n = A086359 (n + 1)

end A086359

/-! ## A086359.P7760143263348403660

`dr(A043294(n+1))*A006530(ceil(1/(n+1)))`
-/

namespace A086359.P7760143263348403660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A043294 (n + 1)) : ℤ) * A006530 ⌈1 / (n + 1 : ℚ)⌉.toNat

end

end A086359.P7760143263348403660

namespace A086359

/-- `dr(A043294(n+1))*A006530(ceil(1/(n+1)))` -/
def P7760143263348403660.Spec : Prop :=
  ∀ n, P7760143263348403660.a n = A086359 (n + 1)

end A086359

/-! ## A086359.P16508942102092702652

`A242312(∑[4*(n+1)])`
-/

namespace A086359.P16508942102092702652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242312 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086359.P16508942102092702652

namespace A086359

/-- `A242312(∑[4*(n+1)])` -/
def P16508942102092702652.Spec : Prop :=
  ∀ n, P16508942102092702652.a n = A086359 (n + 1)

end A086359

/-!
# A086360: The n-th primorial number reduced modulo 9.

The programs for A086360, the canonical program `A086360.P14079381084218253739` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086360 has offset 0).

The definition of A086360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086360.P17787838580297036907

`dr(A066098(n))`
-/

namespace A086360.P17787838580297036907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A066098 n)

end

end A086360.P17787838580297036907

namespace A086360

/-- `dr(A066098(n))` -/
def P17787838580297036907.Spec : Prop :=
  ∀ n, (P17787838580297036907.a n : ℤ) = A086360 n

end A086360

/-! ## A086360.P1158107153840832307

`dr(A377876(n))`
-/

namespace A086360.P1158107153840832307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A377876 n)

end

end A086360.P1158107153840832307

namespace A086360

/-- `dr(A377876(n))` -/
def P1158107153840832307.Spec : Prop :=
  ∀ n, (P1158107153840832307.a n : ℤ) = A086360 n

end A086360

/-! ## A086360.P14079381084218253739

`dr((A006093(n)+1)*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A086360

/-- `dr((A006093(n)+1)*a(n-1))` -/
def P14079381084218253739.Spec : Prop :=
  ∀ n, (P14079381084218253739.a n : ℤ) = A086360 n

theorem P14079381084218253739.correct : P14079381084218253739.Spec := by
  intro n
  simp only [A086360]

end A086360

/-! ## A086360.P9368199862844457724

`A010888(A377876(2*n-n))`
-/

namespace A086360.P9368199862844457724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A377876 (2 * n - n)).toNat

end

end A086360.P9368199862844457724

namespace A086360

/-- `A010888(A377876(2*n-n))` -/
def P9368199862844457724.Spec : Prop :=
  ∀ n, P9368199862844457724.a n = A086360 n

end A086360

/-! ## A086360.P9431261596495161206

`A066098(n)%A066586(n+1)`
-/

namespace A086360.P9431261596495161206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066098 n) (A066586 (n + 1))

end

end A086360.P9431261596495161206

namespace A086360

/-- `A066098(n)%A066586(n+1)` -/
def P9431261596495161206.Spec : Prop :=
  ∀ n, P9431261596495161206.a n = A086360 n

end A086360

/-! ## A086360.P4959843597590580584

`A377876(n)%A066586(n+1)`
-/

namespace A086360.P4959843597590580584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377876 n) (A066586 (n + 1))

end

end A086360.P4959843597590580584

namespace A086360

/-- `A377876(n)%A066586(n+1)` -/
def P4959843597590580584.Spec : Prop :=
  ∀ n, P4959843597590580584.a n = A086360 n

end A086360

/-! ## A086360.P6523120099949754578

`dr(∏[A039704(n+1)]/A039704(n+1))`
-/

namespace A086360.P6523120099949754578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A039704 (n + 1) : ℚ)))

end

end A086360.P6523120099949754578

namespace A086360

/-- `dr(∏[A039704(n+1)]/A039704(n+1))` -/
def P6523120099949754578.Spec : Prop :=
  ∀ n, (P6523120099949754578.a n : ℤ) = A086360 n

end A086360

/-! ## A086360.P15455675127108593091

`dr(∏[A038194(n+1)]/A038194(n+1))`
-/

namespace A086360.P15455675127108593091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A038194 (n + 1) : ℚ)))

end

end A086360.P15455675127108593091

namespace A086360

/-- `dr(∏[A038194(n+1)]/A038194(n+1))` -/
def P15455675127108593091.Spec : Prop :=
  ∀ n, (P15455675127108593091.a n : ℤ) = A086360 n

end A086360

/-! ## A086360.P4439771807398244571

`dr(∏[A039710(n+1)]/A039710(n+1))`
-/

namespace A086360.P4439771807398244571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A039710 (n + 1) : ℚ)))

end

end A086360.P4439771807398244571

namespace A086360

/-- `dr(∏[A039710(n+1)]/A039710(n+1))` -/
def P4439771807398244571.Spec : Prop :=
  ∀ n, (P4439771807398244571.a n : ℤ) = A086360 n

end A086360

/-! ## A086360.P14353399613428120545

`dr(∏[A039713(n+1)]/A039713(n+1))`
-/

namespace A086360.P14353399613428120545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039713 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A039713 (n + 1) : ℚ)))

end

end A086360.P14353399613428120545

namespace A086360

/-- `dr(∏[A039713(n+1)]/A039713(n+1))` -/
def P14353399613428120545.Spec : Prop :=
  ∀ n, (P14353399613428120545.a n : ℤ) = A086360 n

end A086360

/-! ## A086360.P9439890613953365588

`dr(∏[A242121(n+1)]/A242121(n+1))`
-/

namespace A086360.P9439890613953365588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A242121 (n + 1) : ℚ)))

end

end A086360.P9439890613953365588

namespace A086360

/-- `dr(∏[A242121(n+1)]/A242121(n+1))` -/
def P9439890613953365588.Spec : Prop :=
  ∀ n, (P9439890613953365588.a n : ℤ) = A086360 n

end A086360

/-! ## A086360.P12547357565365696787

`dr(∏[A229787(n+1)]/A229787(n+1))`
-/

namespace A086360.P12547357565365696787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A229787 (n + 1) : ℚ)))

end

end A086360.P12547357565365696787

namespace A086360

/-- `dr(∏[A229787(n+1)]/A229787(n+1))` -/
def P12547357565365696787.Spec : Prop :=
  ∀ n, (P12547357565365696787.a n : ℤ) = A086360 n

end A086360

/-!
# A086361: a(n)=A085956(3n).

The programs for A086361, there is no canonical definition to state claims against.
-/

/-! ## A086361.P10885660912174224420

`A085956(3*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086361.P10885660912174224420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085956 (3 * (n + 1))

end

end A086361.P10885660912174224420

/-! ## A086361.P18029862516803310788

`p?[A085956(Δ[A045943(n)])]`
-/

namespace A086361.P18029862516803310788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085956 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086361.P18029862516803310788

/-! ## A086361.P4958276515842668379

`p?[A085956(A008486(n+1))]`
-/

namespace A086361.P4958276515842668379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085956 (A008486 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086361.P4958276515842668379

/-! ## A086361.P2403637066478239642

`p?[A085956(A008585(n+1))]`
-/

namespace A086361.P2403637066478239642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085956 (A008585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086361.P2403637066478239642

/-! ## A086361.P11626864026274756274

`p?[A085956(n+1)+and(1, A000045(n+1))]`
-/

namespace A086361.P11626864026274756274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085956 (n + 1) + Int.land 1 (A000045 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086361.P11626864026274756274

/-!
# A086362: a(n) = A085956(3n+1).

The programs for A086362, there is no canonical definition to state claims against.
-/

/-! ## A086362.P17787461646730994314

`A085956(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086362.P17787461646730994314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085956 (3 * n + 1)

end

end A086362.P17787461646730994314

/-! ## A086362.P5599808837682349570

`p?[A085956(A016777(n))]`
-/

namespace A086362.P5599808837682349570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085956 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086362.P5599808837682349570

/-! ## A086362.P6865195394562625997

`p?[A085956(sqrt(A016778(n)))]`
-/

namespace A086362.P6865195394562625997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085956 (SequenceMachineLib.roundAway (Real.sqrt (A016778 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086362.P6865195394562625997

/-! ## A086362.P17267628331723116070

`p?[A085956(Δ[A000326(n)])]`
-/

namespace A086362.P17267628331723116070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085956 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086362.P17267628331723116070

/-! ## A086362.P10577523670693463338

`p?[A085956(n+1)+and(1, A000045(n))]`
-/

namespace A086362.P10577523670693463338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085956 (n + 1) + Int.land 1 (A000045 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086362.P10577523670693463338

/-!
# A086364: Triangle read by rows: S_D(n,k) = `Type D' Stirling numbers of the second kind.

The programs for A086364, there is no canonical definition to state claims against.
-/

/-! ## A086364.P1659763127739421465

`A226029(A066117(n+1))^A193592(n)`
-/

namespace A086364.P1659763127739421465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226029 (A066117 (n + 1)).toNat : ℚ) ^ (A193592 n : ℤ)

end

end A086364.P1659763127739421465

/-!
# A086365: n-th Bell number of type D: Number of symmetric partitions of {-n,...,n}\{0} such that none of the subsets is of the form {j,-j}.

The programs for A086365, there is no canonical definition to state claims against.
-/

/-! ## A086365.P1227793821047958087

`A324013(2*(n+1))`
-/

namespace A086365.P1227793821047958087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324013 (2 * (n + 1))

end

end A086365.P1227793821047958087

/-! ## A086365.P7287772531617144479

`record[cos(π*n)*A324013(n)]`
-/

namespace A086365.P7287772531617144479
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.pi * (n : ℝ)) * (A324013 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086365.P7287772531617144479

/-! ## A086365.P10531828852803556599

`record[A324013(A014681(n))]`
-/

namespace A086365.P10531828852803556599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324013 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086365.P10531828852803556599

/-! ## A086365.P12224262443815095331

`record[A324013(A141310(n)+1)]`
-/

namespace A086365.P12224262443815095331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324013 (A141310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086365.P12224262443815095331

/-! ## A086365.P4957635206469505426

`record[A033999(n)*A324013(n)]`
-/

namespace A086365.P4957635206469505426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A324013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086365.P4957635206469505426

/-!
# A086366: Number of labeled n-node digraphs in which every node belongs to a directed cycle.

The programs for A086366, there is no canonical definition to state claims against.
-/

/-! ## A086366.P12076277993636341405

`A361592(∑[n])`
-/

namespace A086366.P12076277993636341405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361592 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086366.P12076277993636341405

/-! ## A086366.P9649769765154544237

`and(-1, A361592(A000217(n)))`
-/

namespace A086366.P9649769765154544237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A361592 (A000217 n).toNat)

end

end A086366.P9649769765154544237

/-! ## A086366.P5708744120053793224

`A361592(C(n+1, 2))+A339171(n)`
-/

namespace A086366.P5708744120053793224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361592 (Nat.choose (n + 1) 2) + A339171 n

end

end A086366.P5708744120053793224

/-! ## A086366.P14653994371152956501

`A005134(n)*A361592(C(n+1, 2))`
-/

namespace A086366.P14653994371152956501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005134 n * A361592 (Nat.choose (n + 1) 2)

end

end A086366.P14653994371152956501

/-!
# A086368: Nonsquarefree numbers k such that sigma(k) is squarefree.

The programs for A086368, there is no canonical definition to state claims against.
-/

/-! ## A086368.P10085869979835744034

`∩[A065300(n+1), A034023(n)]`
-/

namespace A086368.P10085869979835744034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086368.P10085869979835744034

/-! ## A086368.P6234394121687077383

`record[A105570(A065300(n+3))]`
-/

namespace A086368.P6234394121687077383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A065300 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086368.P6234394121687077383

/-! ## A086368.P13928274473033498849

`filter[A065300(n+2), A087049(#)]`
-/

namespace A086368.P13928274473033498849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A086368.P13928274473033498849

/-! ## A086368.P11167866039125281136

`∩[A034043(n+1), A065300(n+1)]`
-/

namespace A086368.P11167866039125281136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086368.P11167866039125281136

/-! ## A086368.P1886935987973837523

`∩[A013929(n+1), A065300(n+1)]`
-/

namespace A086368.P1886935987973837523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086368.P1886935987973837523

/-! ## A086368.P9344657465878863082

`∩[A065300(n+1), A389462(n+1)]`
-/

namespace A086368.P9344657465878863082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086368.P9344657465878863082

/-! ## A086368.P5037974555460583805

`eq[log2(A326039(n+1)), A008683(n+1)]+1`
-/

namespace A086368.P5037974555460583805
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A326039 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A086368.P5037974555460583805

/-! ## A086368.P4804003247587812104

`∩[A065300(n+1), A366288(n+1)]`
-/

namespace A086368.P4804003247587812104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086368.P4804003247587812104

/-! ## A086368.P9605539510067976440

`eq[A008683(n+1), A048146(A000203(n+1))]+1`
-/

namespace A086368.P9605539510067976440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A086368.P9605539510067976440

/-! ## A086368.P466915462938086013

`filter[A065300(n+1), A107078(#)]`
-/

namespace A086368.P466915462938086013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A086368.P466915462938086013

/-! ## A086368.P8724613906878747639

`eq[A107078(n+1), A326038(n+1)]+1`
-/

namespace A086368.P8724613906878747639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A086368.P8724613906878747639

/-! ## A086368.P1361153332426081210

`eq[A107078(n+1), A326039(n+1)]+1`
-/

namespace A086368.P1361153332426081210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326039 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A086368.P1361153332426081210

/-! ## A086368.P8716261289727309177

`eq[A007424(A000203(n+1)), A107078(n+1)]+1`
-/

namespace A086368.P8716261289727309177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A086368.P8716261289727309177

/-! ## A086368.P12485560582923306375

`∩[A065300(n+1), A225353(n+1)]`
-/

namespace A086368.P12485560582923306375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086368.P12485560582923306375

/-!
# A086369: Number of factors over Q in the factorization of T_n(x) - 1 where T_n(x) is the Chebyshev polynomial of the first kind.

The programs for A086369, the canonical program `A086369.P16245572849496063867` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086369 has offset 1).

The definition of A086369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086369.P16245572849496063867

`∑{d}[n+1, (2%#)!]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086369

/-- `∑{d}[n+1, (2%#)!]` -/
def P16245572849496063867.Spec : Prop :=
  ∀ n, (P16245572849496063867.a n : ℤ) = A086369 (n + 1)

theorem P16245572849496063867.correct : P16245572849496063867.Spec := by
  intro n
  simp only [A086369, Nat.add_sub_cancel]

end A086369

/-! ## A086369.P2163617389708094960

`∑{d}[n+1, ceil(atan(sqrt(#)))]`
-/

namespace A086369.P2163617389708094960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈Real.arctan (Real.sqrt (d : ℝ))⌉

end

end A086369.P2163617389708094960

namespace A086369

/-- `∑{d}[n+1, ceil(atan(sqrt(#)))]` -/
def P2163617389708094960.Spec : Prop :=
  ∀ n, P2163617389708094960.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P626927318980267584

`∑{d}[n+1, round(atan(#)²)]`
-/

namespace A086369.P626927318980267584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (Real.arctan (d : ℝ) ^ 2)

end

end A086369.P626927318980267584

namespace A086369

/-- `∑{d}[n+1, round(atan(#)²)]` -/
def P626927318980267584.Spec : Prop :=
  ∀ n, P626927318980267584.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P17907789433328828634

`∑{d}[n+1, round(sinh(atan(#)))]`
-/

namespace A086369.P17907789433328828634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (Real.sinh (Real.arctan (d : ℝ)))

end

end A086369.P17907789433328828634

namespace A086369

/-- `∑{d}[n+1, round(sinh(atan(#)))]` -/
def P17907789433328828634.Spec : Prop :=
  ∀ n, P17907789433328828634.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P7342279609367219265

`∑{d}[n+1, 2-round(1/#)]`
-/

namespace A086369.P7342279609367219265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - SequenceMachineLib.roundAway (1 / (d : ℚ)))

end

end A086369.P7342279609367219265

namespace A086369

/-- `∑{d}[n+1, 2-round(1/#)]` -/
def P7342279609367219265.Spec : Prop :=
  ∀ n, P7342279609367219265.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P4283051482744370138

`A114003(n+1)-and(1, n)`
-/

namespace A086369.P4283051482744370138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) - (Nat.land 1 n : ℤ)

end

end A086369.P4283051482744370138

namespace A086369

/-- `A114003(n+1)-and(1, n)` -/
def P4283051482744370138.Spec : Prop :=
  ∀ n, P4283051482744370138.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P5112830049116024503

`n+1-2*A003165(n+1)`
-/

namespace A086369.P5112830049116024503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A003165 (n + 1)

end

end A086369.P5112830049116024503

namespace A086369

/-- `n+1-2*A003165(n+1)` -/
def P5112830049116024503.Spec : Prop :=
  ∀ n, P5112830049116024503.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P745285456034980694

`2*A361003(n+1)-(n+1)`
-/

namespace A086369.P745285456034980694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A361003 (n + 1) - (n + 1 : ℤ)

end

end A086369.P745285456034980694

namespace A086369

/-- `2*A361003(n+1)-(n+1)` -/
def P745285456034980694.Spec : Prop :=
  ∀ n, P745285456034980694.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P8770621754585771293

`2*A000005(n+1)-gcd(2, n+1)`
-/

namespace A086369.P8770621754585771293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1) - (Nat.gcd 2 (n + 1) : ℤ)

end

end A086369.P8770621754585771293

namespace A086369

/-- `2*A000005(n+1)-gcd(2, n+1)` -/
def P8770621754585771293.Spec : Prop :=
  ∀ n, P8770621754585771293.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P7803308321427908986

`Δ[A006218(n)]+∏{e}[n+1, #+1]-(n%2+1)`
-/

namespace A086369.P7803308321427908986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - ((n % 2 + 1 : ℕ) : ℤ))

end

end A086369.P7803308321427908986

namespace A086369

/-- `Δ[A006218(n)]+∏{e}[n+1, #+1]-(n%2+1)` -/
def P7803308321427908986.Spec : Prop :=
  ∀ n, P7803308321427908986.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P15746273419148890633

`A134156(n+1)+A052928(n)`
-/

namespace A086369.P15746273419148890633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134156 (n + 1) + A052928 n

end

end A086369.P15746273419148890633

namespace A086369

/-- `A134156(n+1)+A052928(n)` -/
def P15746273419148890633.Spec : Prop :=
  ∀ n, P15746273419148890633.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P10309479278308410999

`A062011(n+1)-A000034(n)`
-/

namespace A086369.P10309479278308410999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) - A000034 n

end

end A086369.P10309479278308410999

namespace A086369

/-- `A062011(n+1)-A000034(n)` -/
def P10309479278308410999.Spec : Prop :=
  ∀ n, P10309479278308410999.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P11555113725814781349

`A114003(n+1)-A000035(n)`
-/

namespace A086369.P11555113725814781349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) - A000035 n

end

end A086369.P11555113725814781349

namespace A086369

/-- `A114003(n+1)-A000035(n)` -/
def P11555113725814781349.Spec : Prop :=
  ∀ n, P11555113725814781349.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P15992312970507715729

`A360999(n+1)-A000007(n)`
-/

namespace A086369.P15992312970507715729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360999 (n + 1) - A000007 n

end

end A086369.P15992312970507715729

namespace A086369

/-- `A360999(n+1)-A000007(n)` -/
def P15992312970507715729.Spec : Prop :=
  ∀ n, P15992312970507715729.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P15508539632013883709

`A360999(n+1)/A054977(n)`
-/

namespace A086369.P15508539632013883709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360999 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A086369.P15508539632013883709

namespace A086369

/-- `A360999(n+1)/A054977(n)` -/
def P15508539632013883709.Spec : Prop :=
  ∀ n, P15508539632013883709.a n = (A086369 (n + 1) : ℚ)

end A086369

/-! ## A086369.P10804540963289525517

`A023645(n+1)+A000005(n+1)`
-/

namespace A086369.P10804540963289525517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) + A000005 (n + 1)

end

end A086369.P10804540963289525517

namespace A086369

/-- `A023645(n+1)+A000005(n+1)` -/
def P10804540963289525517.Spec : Prop :=
  ∀ n, P10804540963289525517.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P18223313775852568025

`A000034(n)+2*A023645(n+1)`
-/

namespace A086369.P18223313775852568025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + 2 * A023645 (n + 1)

end

end A086369.P18223313775852568025

namespace A086369

/-- `A000034(n)+2*A023645(n+1)` -/
def P18223313775852568025.Spec : Prop :=
  ∀ n, P18223313775852568025.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P4017364504096921808

`2*A000005(n+1)-A000034(n)`
-/

namespace A086369.P4017364504096921808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1) - A000034 n

end

end A086369.P4017364504096921808

namespace A086369

/-- `2*A000005(n+1)-A000034(n)` -/
def P4017364504096921808.Spec : Prop :=
  ∀ n, P4017364504096921808.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P14458946398422182029

`A176059(n)-2*A378216(n+1)`
-/

namespace A086369.P14458946398422182029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n - 2 * A378216 (n + 1)

end

end A086369.P14458946398422182029

namespace A086369

/-- `A176059(n)-2*A378216(n+1)` -/
def P14458946398422182029.Spec : Prop :=
  ∀ n, P14458946398422182029.a n = A086369 (n + 1)

end A086369

/-! ## A086369.P1657651081824209106

`A023645(n+1)+A076984(n+1)+A000035(n)`
-/

namespace A086369.P1657651081824209106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) + (A076984 (n + 1) + A000035 n)

end

end A086369.P1657651081824209106

namespace A086369

/-- `A023645(n+1)+A076984(n+1)+A000035(n)` -/
def P1657651081824209106.Spec : Prop :=
  ∀ n, P1657651081824209106.a n = A086369 (n + 1)

end A086369

/-!
# A086371: a(n) is the sum, over all labeled graphs G on n nodes, of the clique number w(G).

The programs for A086371, there is no canonical definition to state claims against.
-/

/-! ## A086371.P13352955038653962681

`∑[A336034(A276364(n+1))]`
-/

namespace A086371.P13352955038653962681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336034 (A276364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086371.P13352955038653962681

/-!
# A086372: First differences of A027349.

The programs for A086372, there is no canonical definition to state claims against.
-/

/-! ## A086372.P5661379387206644401

`Δ[A027349(n+1)]`
-/

namespace A086372.P5661379387206644401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086372.P5661379387206644401

/-! ## A086372.P13431936685304684098

`Δ[abs(∑[A081362(n)])]`
-/

namespace A086372.P13431936685304684098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086372.P13431936685304684098

/-! ## A086372.P13312192428012129800

`Δ[Δ[A096911(n+1)]]`
-/

namespace A086372.P13312192428012129800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096911 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086372.P13312192428012129800

/-! ## A086372.P11837906064625232769

`Δ[A000700(n)-a(n-1)]` with `a(0)=1`
-/

namespace A086372.P11837906064625232769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000700 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086372.P11837906064625232769

/-! ## A086372.P5279180526006496566

`A027349(n+2)-A027349(n+1)`
-/

namespace A086372.P5279180526006496566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027349 (n + 2) - A027349 (n + 1)

end

end A086372.P5279180526006496566

/-! ## A086372.P823117075974666598

`Δ[A116929(∑[n+2])]`
-/

namespace A086372.P823117075974666598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116929 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086372.P823117075974666598

/-!
# A086374: Number of factors over Q in the factorization of T_n(x) + 1 where T_n(x) is the Chebyshev polynomial of the first kind.

The programs for A086374, the canonical program `A086374.P1835455265533878125` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086374 has offset 1).

The definition of A086374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086374.P9392428782765334765

`A054844(n+1)-char[2*n]`
-/

namespace A086374.P9392428782765334765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A086374.P9392428782765334765

namespace A086374

/-- `A054844(n+1)-char[2*n]` -/
def P9392428782765334765.Spec : Prop :=
  ∀ n, P9392428782765334765.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P18152670821094848545

`A091954(n+1)+∑{d}[n+1, #%2]`
-/

namespace A086374.P18152670821094848545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)

end

end A086374.P18152670821094848545

namespace A086374

/-- `A091954(n+1)+∑{d}[n+1, #%2]` -/
def P18152670821094848545.Spec : Prop :=
  ∀ n, P18152670821094848545.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P9327220343744028101

`A062011((n+1)/2^val(n+1, 2))-log2(gcd(2, n))`
-/

namespace A086374.P9327220343744028101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A062011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A086374.P9327220343744028101

namespace A086374

/-- `A062011((n+1)/2^val(n+1, 2))-log2(gcd(2, n))` -/
def P9327220343744028101.Spec : Prop :=
  ∀ n, P9327220343744028101.a n = (A086374 (n + 1) : ℝ)

end A086374

/-! ## A086374.P14060073539476922102

`A302707(n)-A023645(n+1)`
-/

namespace A086374.P14060073539476922102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302707 n - A023645 (n + 1)

end

end A086374.P14060073539476922102

namespace A086374

/-- `A302707(n)-A023645(n+1)` -/
def P14060073539476922102.Spec : Prop :=
  ∀ n, P14060073539476922102.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P3769763259687667266

`A091954(n+1)+A001227(n+1)`
-/

namespace A086374.P3769763259687667266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) + A001227 (n + 1)

end

end A086374.P3769763259687667266

namespace A086374

/-- `A091954(n+1)+A001227(n+1)` -/
def P3769763259687667266.Spec : Prop :=
  ∀ n, P3769763259687667266.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P14763737051603930981

`A325937(n+1)+A076984(n+1)`
-/

namespace A086374.P14763737051603930981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) + A076984 (n + 1)

end

end A086374.P14763737051603930981

namespace A086374

/-- `A325937(n+1)+A076984(n+1)` -/
def P14763737051603930981.Spec : Prop :=
  ∀ n, P14763737051603930981.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P9837635452594607135

`A111150(n+1)-A086369(n+1)`
-/

namespace A086374.P9837635452594607135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111150 (n + 1) - A086369 (n + 1)

end

end A086374.P9837635452594607135

namespace A086374

/-- `A111150(n+1)-A086369(n+1)` -/
def P9837635452594607135.Spec : Prop :=
  ∀ n, P9837635452594607135.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P14925554215709784173

`A372784(n+1)-A062558(n+1)`
-/

namespace A086374.P14925554215709784173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372784 (n + 1) - A062558 (n + 1)

end

end A086374.P14925554215709784173

namespace A086374

/-- `A372784(n+1)-A062558(n+1)` -/
def P14925554215709784173.Spec : Prop :=
  ∀ n, P14925554215709784173.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P6345456169699785209

`2*A001227(n+1)-A059841(n)`
-/

namespace A086374.P6345456169699785209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001227 (n + 1) - A059841 n

end

end A086374.P6345456169699785209

namespace A086374

/-- `2*A001227(n+1)-A059841(n)` -/
def P6345456169699785209.Spec : Prop :=
  ∀ n, P6345456169699785209.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P9231552924046768242

`A091954(2*(n+1))+A091954(n+1)`
-/

namespace A086374.P9231552924046768242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (2 * (n + 1)) + A091954 (n + 1)

end

end A086374.P9231552924046768242

namespace A086374

/-- `A091954(2*(n+1))+A091954(n+1)` -/
def P9231552924046768242.Spec : Prop :=
  ∀ n, P9231552924046768242.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P428591572578697156

`2*A001227(n+1)-A000035(n+1)`
-/

namespace A086374.P428591572578697156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001227 (n + 1) - A000035 (n + 1)

end

end A086374.P428591572578697156

namespace A086374

/-- `2*A001227(n+1)-A000035(n+1)` -/
def P428591572578697156.Spec : Prop :=
  ∀ n, P428591572578697156.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P1835455265533878125

`A069733(2*(n+1))-A000035(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A086374

/-- `A069733(2*(n+1))-A000035(n+1)` -/
def P1835455265533878125.Spec : Prop :=
  ∀ n, P1835455265533878125.a n = A086374 (n + 1)

theorem P1835455265533878125.correct : P1835455265533878125.Spec := by
  intro n
  simp only [A086374, Nat.add_sub_cancel]

end A086374

/-! ## A086374.P10840620961295381716

`A069930(2*(n+1))-A023645(n+1)`
-/

namespace A086374.P10840620961295381716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (2 * (n + 1)) - A023645 (n + 1)

end

end A086374.P10840620961295381716

namespace A086374

/-- `A069930(2*(n+1))-A023645(n+1)` -/
def P10840620961295381716.Spec : Prop :=
  ∀ n, P10840620961295381716.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P13313811388146562539

`A066660(2*(n+1))-A076984(n+1)`
-/

namespace A086374.P13313811388146562539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (2 * (n + 1)) - A076984 (n + 1)

end

end A086374.P13313811388146562539

namespace A086374

/-- `A066660(2*(n+1))-A076984(n+1)` -/
def P13313811388146562539.Spec : Prop :=
  ∀ n, P13313811388146562539.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P17581749019403195335

`A086369(2*(n+1))-A086369(n+1)`
-/

namespace A086374.P17581749019403195335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086369 (2 * (n + 1)) - A086369 (n + 1)

end

end A086374.P17581749019403195335

namespace A086374

/-- `A086369(2*(n+1))-A086369(n+1)` -/
def P17581749019403195335.Spec : Prop :=
  ∀ n, P17581749019403195335.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P10891809025830488261

`A023645(4*(n+1))-A023645(n+1)`
-/

namespace A086374.P10891809025830488261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (4 * (n + 1)) - A023645 (n + 1)

end

end A086374.P10891809025830488261

namespace A086374

/-- `A023645(4*(n+1))-A023645(n+1)` -/
def P10891809025830488261.Spec : Prop :=
  ∀ n, P10891809025830488261.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P4767613165206337427

`2*A001227(n+1)-A121262(2*n)`
-/

namespace A086374.P4767613165206337427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001227 (n + 1) - A121262 (2 * n)

end

end A086374.P4767613165206337427

namespace A086374

/-- `2*A001227(n+1)-A121262(2*n)` -/
def P4767613165206337427.Spec : Prop :=
  ∀ n, P4767613165206337427.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P18335982997696024022

`A091954(n+1)+∑{d}[n+1, A000035(#)]`
-/

namespace A086374.P18335982997696024022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A000035 d

end

end A086374.P18335982997696024022

namespace A086374

/-- `A091954(n+1)+∑{d}[n+1, A000035(#)]` -/
def P18335982997696024022.Spec : Prop :=
  ∀ n, P18335982997696024022.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P13152242889551551112

`∑{d}[n+1, A001227(#)*A157657((n+1)/#)]`
-/

namespace A086374.P13152242889551551112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A157657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086374.P13152242889551551112

namespace A086374

/-- `∑{d}[n+1, A001227(#)*A157657((n+1)/#)]` -/
def P13152242889551551112.Spec : Prop :=
  ∀ n, P13152242889551551112.a n = A086374 (n + 1)

end A086374

/-! ## A086374.P17083647019691060978

`A091954(n+1)+A000005((n+1)/and(n+1, -(n+1)))`
-/

namespace A086374.P17083647019691060978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) + A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A086374.P17083647019691060978

namespace A086374

/-- `A091954(n+1)+A000005((n+1)/and(n+1, -(n+1)))` -/
def P17083647019691060978.Spec : Prop :=
  ∀ n, P17083647019691060978.a n = A086374 (n + 1)

end A086374

/-!
# A086375: Number of factors over Q in the factorization of U_n(x) + 1 where U_n(x) is the Chebyshev polynomial of the second kind.

The programs for A086375, the canonical program `A086375.P9880467582994103932` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086375 has offset 1).

The definition of A086375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086375.P9880467582994103932

`A070824(n+3)+∑{d}[n+1, #%2]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A086375

/-- `A070824(n+3)+∑{d}[n+1, #%2]` -/
def P9880467582994103932.Spec : Prop :=
  ∀ n, P9880467582994103932.a n = A086375 (n + 1)

theorem P9880467582994103932.correct : P9880467582994103932.Spec := by
  intro n
  simp only [A086375, Nat.add_sub_cancel]

end A086375

/-! ## A086375.P15055276418199888656

`∑{d}[n+1, and(1, #)]+A000005(n+3)-2`
-/

namespace A086375.P15055276418199888656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d : ℕ) : ℤ) + (A000005 (n + 3) - 2)

end

end A086375.P15055276418199888656

namespace A086375

/-- `∑{d}[n+1, and(1, #)]+A000005(n+3)-2` -/
def P15055276418199888656.Spec : Prop :=
  ∀ n, P15055276418199888656.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P14513704587562909199

`Δ[A325459(n+2)+A060831(n)]`
-/

namespace A086375.P14513704587562909199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (n + 2) + A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086375.P14513704587562909199

namespace A086375

/-- `Δ[A325459(n+2)+A060831(n)]` -/
def P14513704587562909199.Spec : Prop :=
  ∀ n, P14513704587562909199.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P5492797249441369915

`A070824(n+3)+Δ[A060831(n)]`
-/

namespace A086375.P5492797249441369915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 3) + (f1 (n + 1) - f1 n)

end

end A086375.P5492797249441369915

namespace A086375

/-- `A070824(n+3)+Δ[A060831(n)]` -/
def P5492797249441369915.Spec : Prop :=
  ∀ n, P5492797249441369915.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P17596583088859813510

`A032741(n+3)+Δ[A248517(n)]`
-/

namespace A086375.P17596583088859813510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 3) + (f1 (n + 1) - f1 n)

end

end A086375.P17596583088859813510

namespace A086375

/-- `A032741(n+3)+Δ[A248517(n)]` -/
def P17596583088859813510.Spec : Prop :=
  ∀ n, P17596583088859813510.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P13356046360333415610

`A384195(n+2)+A069930(n+1)`
-/

namespace A086375.P13356046360333415610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384195 (n + 2) + A069930 (n + 1)

end

end A086375.P13356046360333415610

namespace A086375

/-- `A384195(n+2)+A069930(n+1)` -/
def P13356046360333415610.Spec : Prop :=
  ∀ n, P13356046360333415610.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P18424957791909586128

`A070824(n+3)+A001227(n+1)`
-/

namespace A086375.P18424957791909586128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 3) + A001227 (n + 1)

end

end A086375.P18424957791909586128

namespace A086375

/-- `A070824(n+3)+A001227(n+1)` -/
def P18424957791909586128.Spec : Prop :=
  ∀ n, P18424957791909586128.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P16847190336130856263

`A069283(n+1)+A032741(n+3)`
-/

namespace A086375.P16847190336130856263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 1) + A032741 (n + 3)

end

end A086375.P16847190336130856263

namespace A086375

/-- `A069283(n+1)+A032741(n+3)` -/
def P16847190336130856263.Spec : Prop :=
  ∀ n, P16847190336130856263.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P2292197354810594715

`A091954(n+1)+A023645(n+3)`
-/

namespace A086375.P2292197354810594715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) + A023645 (n + 3)

end

end A086375.P2292197354810594715

namespace A086375

/-- `A091954(n+1)+A023645(n+3)` -/
def P2292197354810594715.Spec : Prop :=
  ∀ n, P2292197354810594715.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P10753577527508015997

`A318874(n+1)+A070824(n+3)`
-/

namespace A086375.P10753577527508015997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (n + 1) + A070824 (n + 3)

end

end A086375.P10753577527508015997

namespace A086375

/-- `A318874(n+1)+A070824(n+3)` -/
def P10753577527508015997.Spec : Prop :=
  ∀ n, P10753577527508015997.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P8052054165499288549

`A069930(n+1)+Δ[A092405(n+1)]`
-/

namespace A086375.P8052054165499288549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (n + 1) + (f1 (n + 1) - f1 n)

end

end A086375.P8052054165499288549

namespace A086375

/-- `A069930(n+1)+Δ[A092405(n+1)]` -/
def P8052054165499288549.Spec : Prop :=
  ∀ n, P8052054165499288549.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P7621075911671164071

`A001227(n+1)+∑[A051950(n+3)]`
-/

namespace A086375.P7621075911671164071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086375.P7621075911671164071

namespace A086375

/-- `A001227(n+1)+∑[A051950(n+3)]` -/
def P7621075911671164071.Spec : Prop :=
  ∀ n, P7621075911671164071.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P17029578895497314770

`A001227(n+1)+A000005(n+3)-2`
-/

namespace A086375.P17029578895497314770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A000005 (n + 3) - 2)

end

end A086375.P17029578895497314770

namespace A086375

/-- `A001227(n+1)+A000005(n+3)-2` -/
def P17029578895497314770.Spec : Prop :=
  ∀ n, P17029578895497314770.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P3170106966608305343

`Δ[A092405(n+1)]+A000005(2*(n+1))-2`
-/

namespace A086375.P3170106966608305343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A000005 (2 * (n + 1)) - 2)

end

end A086375.P3170106966608305343

namespace A086375

/-- `Δ[A092405(n+1)]+A000005(2*(n+1))-2` -/
def P3170106966608305343.Spec : Prop :=
  ∀ n, P3170106966608305343.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P16371117543484176694

`Δ[A092405(n+1)]+abs(2-A000005(n+2+n))`
-/

namespace A086375.P16371117543484176694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + |2 - A000005 (n + 2 + n)|

end

end A086375.P16371117543484176694

namespace A086375

/-- `Δ[A092405(n+1)]+abs(2-A000005(n+2+n))` -/
def P16371117543484176694.Spec : Prop :=
  ∀ n, P16371117543484176694.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P6872097562787475958

`∑{d}[n+1, A020639(3*#)-2]+∑[A051950(n+3)]`
-/

namespace A086375.P6872097562787475958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A020639 (3 * d) - 2) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A086375.P6872097562787475958

namespace A086375

/-- `∑{d}[n+1, A020639(3*#)-2]+∑[A051950(n+3)]` -/
def P6872097562787475958.Spec : Prop :=
  ∀ n, P6872097562787475958.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P12686744078004378674

`∑[A051950(n+3)]+A000005((n+1)/(or(n, n+1)-n))`
-/

namespace A086375.P12686744078004378674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A086375.P12686744078004378674

namespace A086375

/-- `∑[A051950(n+3)]+A000005((n+1)/(or(n, n+1)-n))` -/
def P12686744078004378674.Spec : Prop :=
  ∀ n, P12686744078004378674.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P7179395698287232105

`A070824(n+3)+A000005(A064989(n+1))`
-/

namespace A086375.P7179395698287232105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 3) + A000005 (A064989 (n + 1)).toNat

end

end A086375.P7179395698287232105

namespace A086375

/-- `A070824(n+3)+A000005(A064989(n+1))` -/
def P7179395698287232105.Spec : Prop :=
  ∀ n, P7179395698287232105.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P1590837037802673418

`A000005(A000265(n+1))-(2-A000005(n+3))`
-/

namespace A086375.P1590837037802673418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat - (2 - A000005 (n + 3))

end

end A086375.P1590837037802673418

namespace A086375

/-- `A000005(A000265(n+1))-(2-A000005(n+3))` -/
def P1590837037802673418.Spec : Prop :=
  ∀ n, P1590837037802673418.a n = A086375 (n + 1)

end A086375

/-! ## A086375.P1167563896467427788

`A066660(n+1)+A131187(n+1)-A131187(n+2)`
-/

namespace A086375.P1167563896467427788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (n + 1) + (A131187 (n + 1) - A131187 (n + 2))

end

end A086375.P1167563896467427788

namespace A086375

/-- `A066660(n+1)+A131187(n+1)-A131187(n+2)` -/
def P1167563896467427788.Spec : Prop :=
  ∀ n, P1167563896467427788.a n = A086375 (n + 1)

end A086375

/-!
# A086376: Maximal coefficient of the polynomial (1-x)*(1-x^2)*...*(1-x^n).

The programs for A086376, there is no canonical definition to state claims against.
-/

/-! ## A086376.P4393908388069734590

`A160089(n)-A340998(A107027(n))`
-/

namespace A086376.P4393908388069734590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160089 n - A340998 ((A107027 n).toNat + 140)

end

end A086376.P4393908388069734590

/-! ## A086376.P4182573709816678566

`A160089(n)-A080116(A268448(n+5))`
-/

namespace A086376.P4182573709816678566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160089 n - A080116 (A268448 (n + 5)).toNat

end

end A086376.P4182573709816678566

/-! ## A086376.P17274675648785308122

`A160089(n)-A185284(A143619(n))`
-/

namespace A086376.P17274675648785308122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160089 n - A185284 (A143619 n).toNat

end

end A086376.P17274675648785308122

/-! ## A086376.P5694889397887792296

`A160089(n)-A185284(A086394(n+4))`
-/

namespace A086376.P5694889397887792296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160089 n - A185284 (A086394 (n + 4)).toNat

end

end A086376.P5694889397887792296

/-! ## A086376.P5144093089774274036

`A001222(2^A160089(n))`
-/

namespace A086376.P5144093089774274036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A160089 n : ℤ))).toNat

end

end A086376.P5144093089774274036

/-!
# A086377: a(1)=1; a(n)=a(n-1)+2 if n is in the sequence; a(n)=a(n-1)+2 if n and (n-1) are not in the sequence; a(n)=a(n-1)+3 if n is not in the sequence but (n-1) is in the sequence.

The programs for A086377, the canonical program `A086377.P18272257375655639388` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086377 has offset 1).

The definition of A086377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086377.P9642366762246492554

`floor((1+sqrt(2))*(n+1)-1/sqrt(2))`
-/

namespace A086377.P9642366762246492554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 + Real.sqrt (2 : ℝ)) * (n + 1 : ℝ) - 1 / Real.sqrt (2 : ℝ)⌋

end

end A086377.P9642366762246492554

namespace A086377

/-- `floor((1+sqrt(2))*(n+1)-1/sqrt(2))` -/
def P9642366762246492554.Spec : Prop :=
  ∀ n, P9642366762246492554.a n = A086377 (n + 1)

end A086377

/-! ## A086377.P3385255934753507877

`A080652(n+1)-1`
-/

namespace A086377.P3385255934753507877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1) - 1

end

end A086377.P3385255934753507877

namespace A086377

/-- `A080652(n+1)-1` -/
def P3385255934753507877.Spec : Prop :=
  ∀ n, P3385255934753507877.a n = A086377 (n + 1)

end A086377

/-! ## A086377.P18272257375655639388

`A064437(n+2)-2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A086377

/-- `A064437(n+2)-2` -/
def P18272257375655639388.Spec : Prop :=
  ∀ n, P18272257375655639388.a n = A086377 (n + 1)

theorem P18272257375655639388.correct : P18272257375655639388.Spec := by
  intro n
  simp only [A086377, Nat.add_sub_cancel]

end A086377

/-! ## A086377.P17633038168232552428

`A081841(n+3)-3`
-/

namespace A086377.P17633038168232552428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081841 (n + 3) - 3

end

end A086377.P17633038168232552428

namespace A086377

/-- `A081841(n+3)-3` -/
def P17633038168232552428.Spec : Prop :=
  ∀ n, P17633038168232552428.a n = A086377 (n + 1)

end A086377

/-! ## A086377.P2968999627214750453

`xor(-floor(2*sqrt(∑[n])+2+n), -1)`
-/

namespace A086377.P2968999627214750453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-⌊2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + 2 + (n : ℝ)⌋) (-1)

end

end A086377.P2968999627214750453

namespace A086377

/-- `xor(-floor(2*sqrt(∑[n])+2+n), -1)` -/
def P2968999627214750453.Spec : Prop :=
  ∀ n, P2968999627214750453.a n = A086377 (n + 1)

end A086377

/-! ## A086377.P5900055407053333206

`floor(2*sqrt(∑[n])+2+n)-(1-and(2, n))²`
-/

namespace A086377.P5900055407053333206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + 2 + (n : ℝ)⌋ - (1 - (Nat.land 2 n : ℤ)) ^ 2

end

end A086377.P5900055407053333206

namespace A086377

/-- `floor(2*sqrt(∑[n])+2+n)-(1-and(2, n))²` -/
def P5900055407053333206.Spec : Prop :=
  ∀ n, P5900055407053333206.a n = A086377 (n + 1)

end A086377

/-! ## A086377.P8161251198285141872

`floor(2*sqrt(∑[n])+2+n)-(or(1, -n)%2)²`
-/

namespace A086377.P8161251198285141872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + 2 + (n : ℝ)⌋ - Int.tmod (Int.lor 1 (-(n : ℤ))) 2 ^ 2

end

end A086377.P8161251198285141872

namespace A086377

/-- `floor(2*sqrt(∑[n])+2+n)-(or(1, -n)%2)²` -/
def P8161251198285141872.Spec : Prop :=
  ∀ n, P8161251198285141872.a n = A086377 (n + 1)

end A086377

/-! ## A086377.P2111046070159981767

`A001954(n)-n`
-/

namespace A086377.P2111046070159981767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n - (n : ℤ)

end

end A086377.P2111046070159981767

namespace A086377

/-- `A001954(n)-n` -/
def P2111046070159981767.Spec : Prop :=
  ∀ n, P2111046070159981767.a n = A086377 (n + 1)

end A086377

/-! ## A086377.P3440917665681589011

`A001953(n)+1+n`
-/

namespace A086377.P3440917665681589011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n + 1 + (n : ℤ)

end

end A086377.P3440917665681589011

namespace A086377

/-- `A001953(n)+1+n` -/
def P3440917665681589011.Spec : Prop :=
  ∀ n, P3440917665681589011.a n = A086377 (n + 1)

end A086377

/-! ## A086377.P11681474534032277308

`A136119(n+1)+n`
-/

namespace A086377.P11681474534032277308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1) + (n : ℤ)

end

end A086377.P11681474534032277308

namespace A086377

/-- `A136119(n+1)+n` -/
def P11681474534032277308.Spec : Prop :=
  ∀ n, P11681474534032277308.a n = A086377 (n + 1)

end A086377

/-! ## A086377.P3538677172132276909

`ceil(sqrt(A001844(n))+n)`
-/

namespace A086377.P3538677172132276909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001844 n : ℝ) + (n : ℝ)⌉

end

end A086377.P3538677172132276909

namespace A086377

/-- `ceil(sqrt(A001844(n))+n)` -/
def P3538677172132276909.Spec : Prop :=
  ∀ n, P3538677172132276909.a n = A086377 (n + 1)

end A086377

/-! ## A086377.P1612865226258753363

`ceil(A215247(n+1)/2)`
-/

namespace A086377.P1612865226258753363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A215247 (n + 1) : ℚ) / 2⌉

end

end A086377.P1612865226258753363

namespace A086377

/-- `ceil(A215247(n+1)/2)` -/
def P1612865226258753363.Spec : Prop :=
  ∀ n, P1612865226258753363.a n = A086377 (n + 1)

end A086377

/-! ## A086377.P10524542992855672204

`(A363406(n+1)-1)/2`
-/

namespace A086377.P10524542992855672204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363406 (n + 1) - 1 : ℚ) / 2

end

end A086377.P10524542992855672204

namespace A086377

/-- `(A363406(n+1)-1)/2` -/
def P10524542992855672204.Spec : Prop :=
  ∀ n, P10524542992855672204.a n = (A086377 (n + 1) : ℚ)

end A086377

/-! ## A086377.P16490661756022238583

`A184119(n+1)-(n+1)`
-/

namespace A086377.P16490661756022238583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1) - (n + 1 : ℤ)

end

end A086377.P16490661756022238583

namespace A086377

/-- `A184119(n+1)-(n+1)` -/
def P16490661756022238583.Spec : Prop :=
  ∀ n, P16490661756022238583.a n = A086377 (n + 1)

end A086377

/-! ## A086377.P7575543023596127055

`ceil(sqrt(A046092(n)+1))+n`
-/

namespace A086377.P7575543023596127055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A046092 n + 1 : ℝ)⌉ + (n : ℤ)

end

end A086377.P7575543023596127055

namespace A086377

/-- `ceil(sqrt(A046092(n)+1))+n` -/
def P7575543023596127055.Spec : Prop :=
  ∀ n, P7575543023596127055.a n = A086377 (n + 1)

end A086377

/-! ## A086377.P11532877657344223661

`A189574(n+1)+Δ[n²]`
-/

namespace A086377.P11532877657344223661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A086377.P11532877657344223661

namespace A086377

/-- `A189574(n+1)+Δ[n²]` -/
def P11532877657344223661.Spec : Prop :=
  ∀ n, P11532877657344223661.a n = A086377 (n + 1)

end A086377

/-! ## A086377.P6072759233967843087

`a(n-1)+A001030(n)+1` with `a(0)=1`
-/

namespace A086377.P6072759233967843087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001030 n + 1)

end

end A086377.P6072759233967843087

namespace A086377

/-- `a(n-1)+A001030(n)+1` -/
def P6072759233967843087.Spec : Prop :=
  ∀ n, P6072759233967843087.a n = A086377 (n + 1)

end A086377

/-!
# A086378: Sum of successive remainders in computing Euclidean algorithm for (1,1/sqrt(n)) is rational.

The programs for A086378, there is no canonical definition to state claims against.
-/

/-! ## A086378.P12809360595887319788

`∪[A088900(n+1), A111086(n)]`
-/

namespace A086378.P12809360595887319788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111086 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086378.P12809360595887319788

/-! ## A086378.P8177291809506045163

`∪[A050209(n+1), A088900(n+1)]`
-/

namespace A086378.P8177291809506045163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086378.P8177291809506045163

/-! ## A086378.P9320093436874375969

`∪[A073938(n+1), A088900(n+1)]`
-/

namespace A086378.P9320093436874375969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086378.P9320093436874375969

/-! ## A086378.P1284507485459653600

`∪[A088900(n+1), A117511(n+1)]`
-/

namespace A086378.P1284507485459653600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086378.P1284507485459653600

/-! ## A086378.P3331947386427398180

`∪[A088900(n+1), A181775(n+1)]`
-/

namespace A086378.P3331947386427398180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086378.P3331947386427398180

/-! ## A086378.P9863571873818173300

`∪[A088900(n+1), A193249(n+1)]`
-/

namespace A086378.P9863571873818173300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086378.P9863571873818173300

/-! ## A086378.P7076681056055466446

`∪[A088900(n+1), A386425(n+1)]`
-/

namespace A086378.P7076681056055466446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086378.P7076681056055466446

/-!
# A086380: Numbers n such that p = n^2 + 2, p+2 and p+6 are consecutive primes.

The programs for A086380, there is no canonical definition to state claims against.
-/

/-! ## A086380.P3351528170270369316

`∩[A086381(n+1), A114271(n+1)]`
-/

namespace A086380.P3351528170270369316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086380.P3351528170270369316

/-! ## A086380.P702942762022983215

`A086381(lt[A280144(n), A001897(n)]+1)`
-/

namespace A086380.P702942762022983215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280144 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086381 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A086380.P702942762022983215

/-!
# A086381: Numbers k such that p=k^2+2 and p+2 are primes.

The programs for A086381, there is no canonical definition to state claims against.
-/

/-! ## A086381.P5239764706295848391

`floor(sqrt(A253639(n+1)))`
-/

namespace A086381.P5239764706295848391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A253639 (n + 1))

end

end A086381.P5239764706295848391

/-! ## A086381.P6823565531270294106

`sqrt(A085554(n+1)-4)`
-/

namespace A086381.P6823565531270294106
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A085554 (n + 1) - 4 : ℝ)

end

end A086381.P6823565531270294106

/-! ## A086381.P16243116918377234092

`floor(sqrt(A085554(n+1)+A023445(n)))`
-/

namespace A086381.P16243116918377234092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A085554 (n + 1) + A023445 n)

end

end A086381.P16243116918377234092

/-! ## A086381.P7368398489622359109

`round(sqrt(A319419(n)+A253639(n+1)))`
-/

namespace A086381.P7368398489622359109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A319419 n + A253639 (n + 1) : ℝ))

end

end A086381.P7368398489622359109

/-! ## A086381.P12080237137729238106

`round(sqrt(A253639(n+1)-A028242(n)))`
-/

namespace A086381.P12080237137729238106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A253639 (n + 1) - A028242 n : ℝ))

end

end A086381.P12080237137729238106

/-! ## A086381.P6216412864873453310

`sqrt(and(A085554(n+1), A253639(n+1)))`
-/

namespace A086381.P6216412864873453310
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.land (A085554 (n + 1)) (A253639 (n + 1)) : ℝ)

end

end A086381.P6216412864873453310

/-! ## A086381.P15465302962533182758

`A257049(n+1)/(2*A253639(n+1))`
-/

namespace A086381.P15465302962533182758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257049 (n + 1) : ℚ) / (2 * A253639 (n + 1) : ℚ)

end

end A086381.P15465302962533182758

/-! ## A086381.P15646670717403108156

`sqrt(A253639(n+1)-A020639(2*(n+1)))`
-/

namespace A086381.P15646670717403108156
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A253639 (n + 1) - A020639 (2 * (n + 1)) : ℝ)

end

end A086381.P15646670717403108156

/-! ## A086381.P5025821258931681349

`∩[A007591(n+1), A067201(n+1)]`
-/

namespace A086381.P5025821258931681349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086381.P5025821258931681349

/-! ## A086381.P18402430245459391296

`A000265(floor(sqrt(A085554(n+1))))`
-/

namespace A086381.P18402430245459391296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.sqrt (A085554 (n + 1))).toNat

end

end A086381.P18402430245459391296

/-! ## A086381.P12794789602267261546

`filter[A007591(n+1), A355449(#)]`
-/

namespace A086381.P12794789602267261546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A086381.P12794789602267261546

/-! ## A086381.P6438776029469856271

`A000265(round(sqrt(A253639(n+1))))`
-/

namespace A086381.P6438776029469856271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway (Real.sqrt (A253639 (n + 1) : ℝ))).toNat

end

end A086381.P6438776029469856271

/-!
# A086383: Prime terms in the sequence of Pell numbers, A000129.

The programs for A086383, there is no canonical definition to state claims against.
-/

/-! ## A086383.P5915029066359327113

`A000129(A096650(n+1))`
-/

namespace A086383.P5915029066359327113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A096650 (n + 1)).toNat

end

end A086383.P5915029066359327113

/-! ## A086383.P3451651251385112860

`record[A364820(n+2)]`
-/

namespace A086383.P3451651251385112860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364820 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086383.P3451651251385112860

/-! ## A086383.P2110387760213173755

`A056869(n%(2*a(n-1)))` with `a(0)=2`
-/

namespace A086383.P2110387760213173755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A056869 (Int.tmod (n : ℤ) (2 * a (n - 1))).toNat

end

end A086383.P2110387760213173755

/-! ## A086383.P13321832382793513034

`record[A246556(A000040(n+1))]`
-/

namespace A086383.P13321832382793513034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246556 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086383.P13321832382793513034

/-! ## A086383.P3758596285356755590

`record[A246556(A006530(n+2))]`
-/

namespace A086383.P3758596285356755590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246556 (A006530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086383.P3758596285356755590

/-!
# A086384: Odd digits of e.

The programs for A086384, there is no canonical definition to state claims against.
-/

/-! ## A086384.P7021185831840319900

`A001113(eq[1, A001113(n)%2])`
-/

namespace A086384.P7021185831840319900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001113 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086384.P7021185831840319900

/-! ## A086384.P16582654361516565733

`A001113(eq[1, gcd(2, A001113(n))])`
-/

namespace A086384.P16582654361516565733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001113 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A086384.P16582654361516565733

/-! ## A086384.P416367901762470403

`A001113(eq[1, and(1, A001113(n))])`
-/

namespace A086384.P416367901762470403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001113 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086384.P416367901762470403

/-! ## A086384.P7033486054710472404

`A001113(record[(n+1)*A001113(n+1)%2])`
-/

namespace A086384.P7033486054710472404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A001113 (n + 1 + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A086384.P7033486054710472404

/-! ## A086384.P7171321555915797770

`A001113(record[(n+1)*and(1, A001113(n+1))])`
-/

namespace A086384.P7171321555915797770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A001113 (n + 1 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A086384.P7171321555915797770

/-! ## A086384.P10980631055823422807

`A001113(eq[1, A071981(n+1)])`
-/

namespace A086384.P10980631055823422807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086384.P10980631055823422807

/-!
# A086385: Odd digits of Pi.

The programs for A086385, there is no canonical definition to state claims against.
-/

/-! ## A086385.P6110843867270566701

`A000796(eq[1, A000796(n)%2])`
-/

namespace A086385.P6110843867270566701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086385.P6110843867270566701

/-! ## A086385.P4655670929259617150

`A000796(eq[1, gcd(2, A000796(n))])`
-/

namespace A086385.P4655670929259617150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000796 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A086385.P4655670929259617150

/-! ## A086385.P2726165807325615693

`A000796(eq[1, and(1, A000796(n))])`
-/

namespace A086385.P2726165807325615693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000796 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086385.P2726165807325615693

/-! ## A086385.P7610459801570562306

`A000796(record[n*and(1, A000796(n))])`
-/

namespace A086385.P7610459801570562306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A000796 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A086385.P7610459801570562306

/-! ## A086385.P11989560168016564925

`A000796(record[n^and(1, A000796(n))])`
-/

namespace A086385.P11989560168016564925
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.land 1 (A000796 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat + 1)

end

end A086385.P11989560168016564925

/-! ## A086385.P13963773669123563762

`A000796(eq[1, A030657(n+1)])`
-/

namespace A086385.P13963773669123563762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086385.P13963773669123563762

/-! ## A086385.P547147846483085266

`A000796(A173999(n))`
-/

namespace A086385.P547147846483085266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A173999 n).toNat + 1)

end

end A086385.P547147846483085266

/-!
# A086386: Numerators of the rational convergents to sqrt(3) if both numerators and denominators are primes.

The programs for A086386, there is no canonical definition to state claims against.
-/

/-! ## A086386.P13638266074369381696

`A299107(comp[6*n])`
-/

namespace A086386.P13638266074369381696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299107 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A086386.P13638266074369381696

/-!
# A086389: Number of factors over Q in the factorization of U_n(x) - 1 where U_n(x) is the Chebyshev polynomial of the second kind.

The programs for A086389, there is no canonical definition to state claims against.
-/

/-! ## A086389.P18005865473425692011

`A091954(n+3)+∑{d}[n+1, 2%#/2]`
-/

namespace A086389.P18005865473425692011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091954 (n + 3) : ℚ) + ∑ d ∈ Nat.divisors (f1 n), ((2 % d : ℕ) : ℚ) / 2

end

end A086389.P18005865473425692011

/-! ## A086389.P3676923027344432153

`A069283(n+3)+A032741(n+1)`
-/

namespace A086389.P3676923027344432153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 3) + A032741 (n + 1)

end

end A086389.P3676923027344432153

/-! ## A086389.P11289249420273629599

`A091954(n+3)+A023645(n+1)`
-/

namespace A086389.P11289249420273629599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 3) + A023645 (n + 1)

end

end A086389.P11289249420273629599

/-! ## A086389.P6738010757082691170

`A111775(n+3)+A076984(n+1)`
-/

namespace A086389.P6738010757082691170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (n + 3) + A076984 (n + 1)

end

end A086389.P6738010757082691170

/-! ## A086389.P16200616708748073140

`A227559(n+3)-A003165(n+1)`
-/

namespace A086389.P16200616708748073140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227559 (n + 3) - A003165 (n + 1)

end

end A086389.P16200616708748073140

/-! ## A086389.P17309555209721309038

`A069283(n+3)+log2(A100577(n+1))`
-/

namespace A086389.P17309555209721309038
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A069283 (n + 3) : ℝ) + Real.logb 2 (A100577 (n + 1) : ℝ)

end

end A086389.P17309555209721309038

/-! ## A086389.P10335859314830543983

`A032741(n+1)+Δ[A248517(n+2)]`
-/

namespace A086389.P10335859314830543983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (f1 (n + 1) - f1 n)

end

end A086389.P10335859314830543983

/-! ## A086389.P4258390458563990972

`A069283(n+3)+A000005(n+1)-1`
-/

namespace A086389.P4258390458563990972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 3) + (A000005 (n + 1) - 1)

end

end A086389.P4258390458563990972

/-! ## A086389.P13831955566869119413

`A000005(n+1)+A001227(n+3)-2`
-/

namespace A086389.P13831955566869119413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A001227 (n + 3) - 2)

end

end A086389.P13831955566869119413

/-! ## A086389.P6697912079217576485

`A086375(n+1)-Δ[A000005(A008619(n))]`
-/

namespace A086389.P6697912079217576485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086375 (n + 1) - (f1 (n + 1) - f1 n)

end

end A086389.P6697912079217576485

/-!
# A086390: Composite n such that F(n^2+1)==1 (mod n) where F(k) denotes the k-th Fibonacci number.

The programs for A086390, there is no canonical definition to state claims against.
-/

/-! ## A086390.P9677926652228977473

`filter[A086391(n+1), A005171(#)]`
-/

namespace A086390.P9677926652228977473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A086390.P9677926652228977473

/-! ## A086390.P8498732491487007630

`filter[A086391(n+1), A066247(#)]`
-/

namespace A086390.P8498732491487007630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A086390.P8498732491487007630

/-! ## A086390.P10265236009590539079

`∩[A002808(n+1), A086391(n+1)]`
-/

namespace A086390.P10265236009590539079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086390.P10265236009590539079

/-! ## A086390.P13482620497332909305

`∩[A018252(n+1), A086391(n+1)]`
-/

namespace A086390.P13482620497332909305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086390.P13482620497332909305

/-! ## A086390.P11627402398649054766

`∩[A086391(n+1), A141468(n+1)]`
-/

namespace A086390.P11627402398649054766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086390.P11627402398649054766

/-! ## A086390.P9632004473519208843

`∩[A086391(n+1), A175526(n+1)]`
-/

namespace A086390.P9632004473519208843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086390.P9632004473519208843

/-! ## A086390.P668028154762309572

`∩[A086391(n+1), A379271(n+1)]`
-/

namespace A086390.P668028154762309572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086390.P668028154762309572

/-!
# A086391: Numbers k such that F(k^2+1) == 1 (mod k) where F(k) denotes the k-th Fibonacci number.

The programs for A086391, there is no canonical definition to state claims against.
-/

/-! ## A086391.P7982855838231574016

`lt[A005882(A000217(3*n+1)), A330234(3*n+2)]`
-/

namespace A086391.P7982855838231574016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 (A000217 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330234 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A086391.P7982855838231574016

/-!
# A086395: Primes found among the numerators of the continued fraction rational approximations to sqrt(2).

The programs for A086395, there is no canonical definition to state claims against.
-/

/-! ## A086395.P13396036072273339812

`A001333(A099088(n+1))`
-/

namespace A086395.P13396036072273339812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A099088 (n + 1)).toNat

end

end A086395.P13396036072273339812

/-! ## A086395.P4782339770521627164

`A078057(A099088(n+1)-1)`
-/

namespace A086395.P4782339770521627164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (A099088 (n + 1) - 1).toNat

end

end A086395.P4782339770521627164

/-! ## A086395.P7128361817017969372

`A082766(2*A099088(n+1))`
-/

namespace A086395.P7128361817017969372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (2 * A099088 (n + 1)).toNat

end

end A086395.P7128361817017969372

/-! ## A086395.P11109784778182622747

`A119016(2*A099088(n+1))`
-/

namespace A086395.P11109784778182622747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (2 * A099088 (n + 1)).toNat

end

end A086395.P11109784778182622747

/-! ## A086395.P14384308382958318067

`A002965(2*A099088(n+1)+1)`
-/

namespace A086395.P14384308382958318067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * A099088 (n + 1) + 1).toNat

end

end A086395.P14384308382958318067

/-!
# A086396: Even digits of e.

The programs for A086396, there is no canonical definition to state claims against.
-/

/-! ## A086396.P12179068401950959719

`A001113(eq[0, A001113(n)%2])`
-/

namespace A086396.P12179068401950959719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001113 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086396.P12179068401950959719

/-! ## A086396.P12988908600029113724

`A001113(eq[2, gcd(2, A001113(n))])`
-/

namespace A086396.P12988908600029113724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001113 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A086396.P12988908600029113724

/-! ## A086396.P18188551157913929510

`A001113(eq[0, and(1, A001113(n))])`
-/

namespace A086396.P18188551157913929510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001113 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086396.P18188551157913929510

/-! ## A086396.P6606018498147902076

`A001113(eq[0, A071981(n+1)])`
-/

namespace A086396.P6606018498147902076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086396.P6606018498147902076

/-! ## A086396.P3132477317091718699

`A001113(eq[A135725(n)!, A135725(n)])`
-/

namespace A086396.P3132477317091718699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A135725 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086396.P3132477317091718699

/-!
# A086397: 

The programs for A086397, there is no canonical definition to state claims against.
-/

/-! ## A086397.P235354130157279578

`A001333(A331399(n+1))`
-/

namespace A086397.P235354130157279578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A331399 (n + 1)).toNat

end

end A086397.P235354130157279578

/-!
# A086398: a(1)=1; a(n)=a(n-1)+2 if n is in the sequence; a(n)=a(n-1)+2 if n and (n-1) are not in the sequence; a(n)=a(n-1)+4 if n is not in the sequence but (n-1) is in the sequence.

The programs for A086398, the canonical program `A086398.P7357814214744844564` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086398 has offset 1).

The definition of A086398 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284753, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086398.P7357814214744844564

`A284753(n+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A086398

/-- `A284753(n+1)-1` -/
def P7357814214744844564.Spec : Prop :=
  ∀ n, P7357814214744844564.a n = A086398 (n + 1)

theorem P7357814214744844564.correct : P7357814214744844564.Spec := by
  intro n
  simp only [A086398, Nat.add_sub_cancel]

end A086398

/-! ## A086398.P1396927684583686229

`A284371(n+1)+n`
-/

namespace A086398.P1396927684583686229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284371 (n + 1) + (n : ℤ)

end

end A086398.P1396927684583686229

namespace A086398

/-- `A284371(n+1)+n` -/
def P1396927684583686229.Spec : Prop :=
  ∀ n, P1396927684583686229.a n = A086398 (n + 1)

end A086398

/-! ## A086398.P16981634297110577036

`2*A026363(n+1)-1`
-/

namespace A086398.P16981634297110577036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026363 (n + 1) - 1

end

end A086398.P16981634297110577036

namespace A086398

/-- `2*A026363(n+1)-1` -/
def P16981634297110577036.Spec : Prop :=
  ∀ n, P16981634297110577036.a n = A086398 (n + 1)

end A086398

/-! ## A086398.P10502119979467795546

`A026364(n+1)-(n+1)`
-/

namespace A086398.P10502119979467795546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026364 (n + 1) - (n + 1 : ℤ)

end

end A086398.P10502119979467795546

namespace A086398

/-- `A026364(n+1)-(n+1)` -/
def P10502119979467795546.Spec : Prop :=
  ∀ n, P10502119979467795546.a n = A086398 (n + 1)

end A086398

/-! ## A086398.P14835116529459733475

`record[(n+1)*A284369(n+1)]+n`
-/

namespace A086398.P14835116529459733475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A086398.P14835116529459733475

namespace A086398

/-- `record[(n+1)*A284369(n+1)]+n` -/
def P14835116529459733475.Spec : Prop :=
  ∀ n, P14835116529459733475.a n = A086398 (n + 1)

end A086398

/-! ## A086398.P13964023888089658651

`A080903(n+1)+2*A284751(n+1)`
-/

namespace A086398.P13964023888089658651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080903 (n + 1) + 2 * A284751 (n + 1)

end

end A086398.P13964023888089658651

namespace A086398

/-- `A080903(n+1)+2*A284751(n+1)` -/
def P13964023888089658651.Spec : Prop :=
  ∀ n, P13964023888089658651.a n = A086398 (n + 1)

end A086398

/-! ## A086398.P10824202304133265409

`A001478(n+1)+A284753(n+1)+n`
-/

namespace A086398.P10824202304133265409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A284753 (n + 1) + (n : ℤ))

end

end A086398.P10824202304133265409

namespace A086398

/-- `A001478(n+1)+A284753(n+1)+n` -/
def P10824202304133265409.Spec : Prop :=
  ∀ n, P10824202304133265409.a n = A086398 (n + 1)

end A086398

/-! ## A086398.P15206188075549394197

`A080903(n+2)-2`
-/

namespace A086398.P15206188075549394197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080903 (n + 2) - 2

end

end A086398.P15206188075549394197

namespace A086398

/-- `A080903(n+2)-2` -/
def P15206188075549394197.Spec : Prop :=
  ∀ n, P15206188075549394197.a n = A086398 (n + 1)

end A086398

/-! ## A086398.P498965422859614987

`A004273(A026363(n+1))`
-/

namespace A086398.P498965422859614987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A026363 (n + 1)).toNat

end

end A086398.P498965422859614987

namespace A086398

/-- `A004273(A026363(n+1))` -/
def P498965422859614987.Spec : Prop :=
  ∀ n, P498965422859614987.a n = A086398 (n + 1)

end A086398

/-! ## A086398.P13214146799364571893

`A005408(A026363(n+1)-1)`
-/

namespace A086398.P13214146799364571893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A026363 (n + 1) - 1).toNat

end

end A086398.P13214146799364571893

namespace A086398

/-- `A005408(A026363(n+1)-1)` -/
def P13214146799364571893.Spec : Prop :=
  ∀ n, P13214146799364571893.a n = A086398 (n + 1)

end A086398

/-! ## A086398.P14095322550422718414

`A005843(A026363(n+1)-1)+1`
-/

namespace A086398.P14095322550422718414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A026363 (n + 1) - 1).toNat + 1

end

end A086398.P14095322550422718414

namespace A086398

/-- `A005843(A026363(n+1)-1)+1` -/
def P14095322550422718414.Spec : Prop :=
  ∀ n, P14095322550422718414.a n = A086398 (n + 1)

end A086398

/-! ## A086398.P10319008524764747395

`A093178(A026363(n+1)+A026363(n+1)-1)`
-/

namespace A086398.P10319008524764747395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A026363 (n + 1) + (A026363 (n + 1) - 1)).toNat

end

end A086398.P10319008524764747395

namespace A086398

/-- `A093178(A026363(n+1)+A026363(n+1)-1)` -/
def P10319008524764747395.Spec : Prop :=
  ∀ n, P10319008524764747395.a n = A086398 (n + 1)

end A086398

/-! ## A086398.P2582276338450622725

`A284370(2*n+1)-Δ[n²]`
-/

namespace A086398.P2582276338450622725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284370 (2 * n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A086398.P2582276338450622725

namespace A086398

/-- `A284370(2*n+1)-Δ[n²]` -/
def P2582276338450622725.Spec : Prop :=
  ∀ n, P2582276338450622725.a n = A086398 (n + 1)

end A086398

/-! ## A086398.P16017207672472869121

`A284752(A284371(n+1))`
-/

namespace A086398.P16017207672472869121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (A284371 (n + 1)).toNat

end

end A086398.P16017207672472869121

namespace A086398

/-- `A284752(A284371(n+1))` -/
def P16017207672472869121.Spec : Prop :=
  ∀ n, P16017207672472869121.a n = A086398 (n + 1)

end A086398

/-! ## A086398.P12513239101613178992

`or(1, A187480(2*n+1))`
-/

namespace A086398.P12513239101613178992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A187480 (2 * n + 1))

end

end A086398.P12513239101613178992

namespace A086398

/-- `or(1, A187480(2*n+1))` -/
def P12513239101613178992.Spec : Prop :=
  ∀ n, P12513239101613178992.a n = A086398 (n + 1)

end A086398

/-! ## A086398.P5898314613424718707

`eq[1, A284751(n+1)]`
-/

namespace A086398.P5898314613424718707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086398.P5898314613424718707

namespace A086398

/-- `eq[1, A284751(n+1)]` -/
def P5898314613424718707.Spec : Prop :=
  ∀ n, (P5898314613424718707.a n : ℤ) = A086398 (n + 1)

end A086398

/-! ## A086398.P2570005873256995438

`filter[n+1, A285301(#)]`
-/

namespace A086398.P2570005873256995438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285301 (f1 j) = 1) n)

end

end A086398.P2570005873256995438

namespace A086398

/-- `filter[n+1, A285301(#)]` -/
def P2570005873256995438.Spec : Prop :=
  ∀ n, (P2570005873256995438.a n : ℤ) = A086398 (n + 1)

end A086398

/-! ## A086398.P14004471086903407714

`eq[1, A285301(n+1)]+1`
-/

namespace A086398.P14004471086903407714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086398.P14004471086903407714

namespace A086398

/-- `eq[1, A285301(n+1)]+1` -/
def P14004471086903407714.Spec : Prop :=
  ∀ n, (P14004471086903407714.a n : ℤ) = A086398 (n + 1)

end A086398

/-!
# A086399: Even digits of Pi.

The programs for A086399, there is no canonical definition to state claims against.
-/

/-! ## A086399.P2708859152515776503

`A000796(A153030(n+1)-1)`
-/

namespace A086399.P2708859152515776503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A153030 (n + 1) - 1).toNat + 1)

end

end A086399.P2708859152515776503

/-! ## A086399.P16683613474379387528

`A000796(eq[0, A000796(n)%2])`
-/

namespace A086399.P16683613474379387528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086399.P16683613474379387528

/-! ## A086399.P6693806384715375923

`A000796(eq[2, gcd(2, A000796(n))])`
-/

namespace A086399.P6693806384715375923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000796 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A086399.P6693806384715375923

/-! ## A086399.P18071275153367044564

`A000796(eq[0, and(1, A000796(n))])`
-/

namespace A086399.P18071275153367044564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000796 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086399.P18071275153367044564

/-! ## A086399.P14249331231542220063

`A000796(eq[1, (-1)^A000796(n)])`
-/

namespace A086399.P14249331231542220063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000796 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A086399.P14249331231542220063

/-! ## A086399.P13799790415699402077

`A000796(eq[0, A030657(n+1)])`
-/

namespace A086399.P13799790415699402077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086399.P13799790415699402077

/-! ## A086399.P4236251407101760171

`A164524(n+1)%10`
-/

namespace A086399.P4236251407101760171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164524 (n + 1)) 10

end

end A086399.P4236251407101760171

/-! ## A086399.P1068786134212707447

`A000796(A174000(n+1))`
-/

namespace A086399.P1068786134212707447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A174000 (n + 1)).toNat + 1)

end

end A086399.P1068786134212707447

