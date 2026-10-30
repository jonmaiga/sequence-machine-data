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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C047
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A130702: Possible sides in the Euler V=E-F+2 as roots in a cubic polynomial of the form: P(x)=(x-V)*(x-F)*(x+E) =x^3+(E-V-F)*x^2+(V*F-E(V+F))*x=E*F*V Solves here for F ( Face, Edge, Vertex).

The programs for A130702, there is no canonical definition to state claims against.
-/

/-! ## A130702.P4967167925387909154

`A002202(comp[Δ[A279790(n+1)]])`
-/

namespace A130702.P4967167925387909154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279790 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A130702.P4967167925387909154

/-! ## A130702.P1136072501948437006

`lt[A345924(A065941(n+2)), A141459(n)]`
-/

namespace A130702.P1136072501948437006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345924 (A065941 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130702.P1136072501948437006

/-! ## A130702.P11217873523563647447

`lt[A048883(A048883(2*(n+1))), A366571(n)]`
-/

namespace A130702.P11217873523563647447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A048883 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366571 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130702.P11217873523563647447

/-! ## A130702.P14601804968021663637

`lt[A230980(A111449(n+2)), A050932(n)]`
-/

namespace A130702.P14601804968021663637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A111449 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130702.P14601804968021663637

/-! ## A130702.P6828969146787742762

`lt[A257906(n+2), A328666(n+2)]`
-/

namespace A130702.P6828969146787742762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257906 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328666 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130702.P6828969146787742762

/-!
# A130703: a(n) = smallest k such that A000217(n+1) = A000217(n) + (A000217(n) mod k), or 0 if no such k exists.

The programs for A130703, there is no canonical definition to state claims against.
-/

/-! ## A130703.P3443204242014695172

`A184218(n+1)/A028310(A184219(n+1))`
-/

namespace A130703.P3443204242014695172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184218 (n + 1) : ℚ) / (A028310 (A184219 (n + 1)).toNat : ℚ)

end

end A130703.P3443204242014695172

/-! ## A130703.P6353403811799244902

`(∑[n]-1)*A130543(n)/A028310(A184219(n+1))`
-/

namespace A130703.P6353403811799244902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A130543 n : ℚ) / (A028310 (A184219 (n + 1)).toNat : ℚ)

end

end A130703.P6353403811799244902

/-! ## A130703.P11071699422125664522

`A000096((n-1)%A005161(n))/A028310(A184219(n+1))`
-/

namespace A130703.P11071699422125664522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (Int.tmod ((n : ℤ) - 1) (A005161 n)).toNat : ℚ) / (A028310 (A184219 (n + 1)).toNat : ℚ)

end

end A130703.P11071699422125664522

/-! ## A130703.P13121512482818889548

`(∑[n]-1)%(2^n-n)/A026835(A242622(n))`
-/

namespace A130703.P13121512482818889548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) ((2 ^ n : ℤ) - (n : ℤ)) : ℚ) / (A026835 (A242622 n).toNat : ℚ)

end

end A130703.P13121512482818889548

/-! ## A130703.P14538645154765942409

`A184218(n+1)/A000034(A210696(n))`
-/

namespace A130703.P14538645154765942409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184218 (n + 1) : ℚ) / (A000034 (A210696 n).toNat : ℚ)

end

end A130703.P14538645154765942409

/-!
# A130704: Palindromic primes whose squares are the sum of three consecutive primes.

The programs for A130704, there is no canonical definition to state claims against.
-/

/-! ## A130704.P9590503150418378819

`∩[A002113(n+1), A122560(n+1)]`
-/

namespace A130704.P9590503150418378819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130704.P9590503150418378819

/-! ## A130704.P7219361584862022337

`∩[A002385(n+1), A122560(n+1)]`
-/

namespace A130704.P7219361584862022337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130704.P7219361584862022337

/-! ## A130704.P9047530832005480888

`∩[A029950(n+1), A122560(n+1)]`
-/

namespace A130704.P9047530832005480888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130704.P9047530832005480888

/-! ## A130704.P16233033134542197277

`∩[A062687(n+1), A122560(n+1)]`
-/

namespace A130704.P16233033134542197277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130704.P16233033134542197277

/-! ## A130704.P18307924947998626048

`∩[A069217(n+1), A122560(n+1)]`
-/

namespace A130704.P18307924947998626048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130704.P18307924947998626048

/-!
# A130705: Floors of constants in de Bruijn's approach to weighted Carleman's inequality.

The programs for A130705, the canonical program `A130705.P17510282708883819563` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130705 has offset 2).

The definition of A130705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130705.P17510282708883819563

`floor(e-2*π²*e/log(n+2)²)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130705

/-- `floor(e-2*π²*e/log(n+2)²)` -/
def P17510282708883819563.Spec : Prop :=
  ∀ n, P17510282708883819563.a n = A130705 (n + 2)

theorem P17510282708883819563.correct : P17510282708883819563.Spec := by
  intro n
  simp only [A130705, Nat.add_sub_cancel]

end A130705

/-!
# A130706: a(0) = 1, a(1) = 2, a(n) = 0 for n > 1.

The programs for A130706, the canonical program `A130706.P6943270999618007984` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130706 has offset 0).

The definition of A130706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130706.P6943270999618007984

`T(n-1,k+1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130706

/-- `T(n-1,k+1)` -/
def P6943270999618007984.Spec : Prop :=
  ∀ n, (P6943270999618007984.a n : ℤ) = A130706 n

theorem P6943270999618007984.correct : P6943270999618007984.Spec := by
  intro n
  simp only [A130706]

end A130706

/-!
# A130707: a(n+3) = 3*(a(n+2) - a(n+1)) + 2*a(n).

The programs for A130707, the canonical program `A130707.P11529305779174893885` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130707 has offset 0).

The definition of A130707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130707.P2806762368282634181

`ogf((1-x-x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A130707.P2806762368282634181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -3, 3, -2] n

end

end A130707.P2806762368282634181

namespace A130707

/-- `ogf((1-x-x^2)/(1-3x+3x^2-2x^3))` -/
def P2806762368282634181.Spec : Prop :=
  ∀ n, P2806762368282634181.a n = A130707 n

end A130707

/-! ## A130707.P11529305779174893885

`3*(a(n-1)-a(n-2))+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130707

/-- `3*(a(n-1)-a(n-2))+2*a(n-3)` -/
def P11529305779174893885.Spec : Prop :=
  ∀ n, P11529305779174893885.a n = A130707 n

theorem P11529305779174893885.correct : P11529305779174893885.Spec := by
  intro n
  simp only [A130707]

end A130707

/-! ## A130707.P13671555353009815210

`2^n/3+4*(-1)^n*1/3*cos((2*n+1)*π/3)`
-/

namespace A130707.P13671555353009815210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℚ) / 3 : ℝ) + ((4 * (-1) ^ n : ℚ) * ((1 : ℚ) / 3) : ℝ) * Real.cos ((2 * n + 1 : ℝ) * Real.pi / 3)

end

end A130707.P13671555353009815210

namespace A130707

/-- `2^n/3+4*(-1)^n*1/3*cos((2*n+1)*π/3)` -/
def P13671555353009815210.Spec : Prop :=
  ∀ n, P13671555353009815210.a n = (A130707 n : ℝ)

end A130707

/-! ## A130707.P2982773968575480511

`(2*A057079(n)+2^n)/3`
-/

namespace A130707.P2982773968575480511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A057079 n + (2 ^ n : ℤ) : ℚ) / 3

end

end A130707.P2982773968575480511

namespace A130707

/-- `(2*A057079(n)+2^n)/3` -/
def P2982773968575480511.Spec : Prop :=
  ∀ n, P2982773968575480511.a n = (A130707 n : ℚ)

end A130707

/-! ## A130707.P6586156381010576171

`abs(A131562(n))`
-/

namespace A130707.P6586156381010576171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131562 n|

end

end A130707.P6586156381010576171

namespace A130707

/-- `abs(A131562(n))` -/
def P6586156381010576171.Spec : Prop :=
  ∀ n, P6586156381010576171.a n = A130707 n

end A130707

/-! ## A130707.P14456848108646374973

`A086953(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A130707.P14456848108646374973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086953 (n - 1) + a (n - 1)

end

end A130707.P14456848108646374973

namespace A130707

/-- `A086953(n-1)+a(n-1)` -/
def P14456848108646374973.Spec : Prop :=
  ∀ n, P14456848108646374973.a n = A130707 n

end A130707

/-! ## A130707.P10436794725976334362

`a(n-1)+A109265(n)+a(n-1)` with `a(0)=1`
-/

namespace A130707.P10436794725976334362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A109265 n + a (n - 1))

end

end A130707.P10436794725976334362

namespace A130707

/-- `a(n-1)+A109265(n)+a(n-1)` -/
def P10436794725976334362.Spec : Prop :=
  ∀ n, P10436794725976334362.a n = A130707 n

end A130707

/-! ## A130707.P8908826154641120051

`A057079(n)+A024495(n)`
-/

namespace A130707.P8908826154641120051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n + A024495 n

end

end A130707.P8908826154641120051

namespace A130707

/-- `A057079(n)+A024495(n)` -/
def P8908826154641120051.Spec : Prop :=
  ∀ n, P8908826154641120051.a n = A130707 n

end A130707

/-! ## A130707.P8251137543944548378

`A130151(n)+A001045(n)`
-/

namespace A130707.P8251137543944548378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 n + A001045 n

end

end A130707.P8251137543944548378

namespace A130707

/-- `A130151(n)+A001045(n)` -/
def P8251137543944548378.Spec : Prop :=
  ∀ n, P8251137543944548378.a n = A130707 n

end A130707

/-! ## A130707.P2972024848847218535

`A131708(n)+A010892(n)`
-/

namespace A130707.P2972024848847218535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n + A010892 n

end

end A130707.P2972024848847218535

namespace A130707

/-- `A131708(n)+A010892(n)` -/
def P2972024848847218535.Spec : Prop :=
  ∀ n, P2972024848847218535.a n = A130707 n

end A130707

/-! ## A130707.P18253174683591844996

`A128834(n)+A024493(n)`
-/

namespace A130707.P18253174683591844996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + A024493 n

end

end A130707.P18253174683591844996

namespace A130707

/-- `A128834(n)+A024493(n)` -/
def P18253174683591844996.Spec : Prop :=
  ∀ n, P18253174683591844996.a n = A130707 n

end A130707

/-! ## A130707.P15936356549012146004

`A164965(n)+A111927(n)`
-/

namespace A130707.P15936356549012146004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 n + A111927 n

end

end A130707.P15936356549012146004

namespace A130707

/-- `A164965(n)+A111927(n)` -/
def P15936356549012146004.Spec : Prop :=
  ∀ n, P15936356549012146004.a n = A130707 n

end A130707

/-! ## A130707.P15538887378258284900

`A153643(n)-A130974(n)`
-/

namespace A130707.P15538887378258284900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 n - A130974 n

end

end A130707.P15538887378258284900

namespace A130707

/-- `A153643(n)-A130974(n)` -/
def P15538887378258284900.Spec : Prop :=
  ∀ n, P15538887378258284900.a n = A130707 n

end A130707

/-! ## A130707.P5640940984802746253

`A033999(n)*A131562(n)`
-/

namespace A130707.P5640940984802746253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A131562 n

end

end A130707.P5640940984802746253

namespace A130707

/-- `A033999(n)*A131562(n)` -/
def P5640940984802746253.Spec : Prop :=
  ∀ n, P5640940984802746253.a n = A130707 n

end A130707

/-! ## A130707.P1058494179287818560

`gcd(A000038(n), A131562(n))`
-/

namespace A130707.P1058494179287818560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A131562 n)

end

end A130707.P1058494179287818560

namespace A130707

/-- `gcd(A000038(n), A131562(n))` -/
def P1058494179287818560.Spec : Prop :=
  ∀ n, (P1058494179287818560.a n : ℤ) = A130707 n

end A130707

/-! ## A130707.P7375129018811322983

`lcm(A000034(n), A131562(n))`
-/

namespace A130707.P7375129018811322983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A131562 n)

end

end A130707.P7375129018811322983

namespace A130707

/-- `lcm(A000034(n), A131562(n))` -/
def P7375129018811322983.Spec : Prop :=
  ∀ n, (P7375129018811322983.a n : ℤ) = A130707 n

end A130707

/-! ## A130707.P1193118277549227476

`A111927(n)+A128834(n)+1`
-/

namespace A130707.P1193118277549227476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111927 n + (A128834 n + 1)

end

end A130707.P1193118277549227476

namespace A130707

/-- `A111927(n)+A128834(n)+1` -/
def P1193118277549227476.Spec : Prop :=
  ∀ n, P1193118277549227476.a n = A130707 n

end A130707

/-! ## A130707.P2818211133562968286

`A131708(n)+A128834(n+1)`
-/

namespace A130707.P2818211133562968286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n + A128834 (n + 1)

end

end A130707.P2818211133562968286

namespace A130707

/-- `A131708(n)+A128834(n+1)` -/
def P2818211133562968286.Spec : Prop :=
  ∀ n, P2818211133562968286.a n = A130707 n

end A130707

/-! ## A130707.P6862192652567772963

`A086953(n)-A109265(n+1)`
-/

namespace A130707.P6862192652567772963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 n - A109265 (n + 1)

end

end A130707.P6862192652567772963

namespace A130707

/-- `A086953(n)-A109265(n+1)` -/
def P6862192652567772963.Spec : Prop :=
  ∀ n, P6862192652567772963.a n = A130707 n

end A130707

/-! ## A130707.P12998977275486240494

`A131370(n)-A130772(n+1)`
-/

namespace A130707.P12998977275486240494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131370 n - A130772 (n + 1)

end

end A130707.P12998977275486240494

namespace A130707

/-- `A131370(n)-A130772(n+1)` -/
def P12998977275486240494.Spec : Prop :=
  ∀ n, P12998977275486240494.a n = A130707 n

end A130707

/-!
# A130708: Number of compositions of n such that every part divides the largest part.

The programs for A130708, there is no canonical definition to state claims against.
-/

/-! ## A130708.P7106004959291935651

`A017913(n)-A001221(A131428(n))`
-/

namespace A130708.P7106004959291935651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 n - A001221 (A131428 n).toNat

end

end A130708.P7106004959291935651

/-! ## A130708.P18155417967248143177

`A003056(Δ[A183113(n)])`
-/

namespace A130708.P18155417967248143177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f1 (n + 1) - f1 n).toNat

end

end A130708.P18155417967248143177

/-! ## A130708.P6245778139479583849

`A000267(A248122(n)/3)`
-/

namespace A130708.P6245778139479583849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (SequenceMachineLib.roundAway ((A248122 n : ℚ) / 3)).toNat

end

end A130708.P6245778139479583849

/-! ## A130708.P1741953232768180062

`A002024(A001156(2*n²))`
-/

namespace A130708.P1741953232768180062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A001156 (2 * n ^ 2)).toNat

end

end A130708.P1741953232768180062

/-! ## A130708.P8094113044441797653

`A003056(∑[A005169(2*n)])`
-/

namespace A130708.P8094113044441797653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005169 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130708.P8094113044441797653

/-!
# A130709: Number of compositions of n such that the largest part is coprime to every other part.

The programs for A130709, there is no canonical definition to state claims against.
-/

/-! ## A130709.P6669829565557842876

`A006670(A000958(n+1))`
-/

namespace A130709.P6669829565557842876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A000958 (n + 1)).toNat

end

end A130709.P6669829565557842876

/-! ## A130709.P4210146417406558850

`A003056(2*or(n, A000108(n)))`
-/

namespace A130709.P4210146417406558850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * Int.lor (n : ℤ) (A000108 n)).toNat

end

end A130709.P4210146417406558850

/-! ## A130709.P5371876639385226004

`A003056(or(2*n, A068875(n)))`
-/

namespace A130709.P5371876639385226004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (2 * n : ℤ) (A068875 n)).toNat

end

end A130709.P5371876639385226004

/-! ## A130709.P6494661869444803270

`A055086(A003070(n)+A000108(n))`
-/

namespace A130709.P6494661869444803270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A003070 n + A000108 n).toNat

end

end A130709.P6494661869444803270

/-! ## A130709.P3765925980398050989

`A003056(A131428(n)+A091894(n))`
-/

namespace A130709.P3765925980398050989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A131428 n + A091894 n).toNat

end

end A130709.P3765925980398050989

/-!
# A130711: Number of compositions of n such that the smallest part divides every part.

The programs for A130711, the canonical program `A130711.P3365278622554452030` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130711 has offset 1).

The definition of A130711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130711.P3365278622554452030

`∑{d}[n+1, A099036(#-1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A130711

/-- `∑{d}[n+1, A099036(#-1)]` -/
def P3365278622554452030.Spec : Prop :=
  ∀ n, P3365278622554452030.a n = A130711 (n + 1)

theorem P3365278622554452030.correct : P3365278622554452030.Spec := by
  intro n
  simp only [A130711, Nat.add_sub_cancel]

end A130711

/-! ## A130711.P4164033911055712466

`A034729(n+1)-A108046(n+1)`
-/

namespace A130711.P4164033911055712466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034729 (n + 1) - A108046 (n + 1)

end

end A130711.P4164033911055712466

namespace A130711

/-- `A034729(n+1)-A108046(n+1)` -/
def P4164033911055712466.Spec : Prop :=
  ∀ n, P4164033911055712466.a n = A130711 (n + 1)

end A130711

/-! ## A130711.P16467469235630344725

`A247146(n+1)+2^n-A108046(n+1)`
-/

namespace A130711.P16467469235630344725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247146 (n + 1) + (2 ^ n : ℤ) - A108046 (n + 1)

end

end A130711.P16467469235630344725

namespace A130711

/-- `A247146(n+1)+2^n-A108046(n+1)` -/
def P16467469235630344725.Spec : Prop :=
  ∀ n, P16467469235630344725.a n = A130711 (n + 1)

end A130711

/-! ## A130711.P16891206107662484110

`A328337(n+1)+A083318(n)-A108046(n+1)`
-/

namespace A130711.P16891206107662484110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328337 (n + 1) + (A083318 n - A108046 (n + 1))

end

end A130711.P16891206107662484110

namespace A130711

/-- `A328337(n+1)+A083318(n)-A108046(n+1)` -/
def P16891206107662484110.Spec : Prop :=
  ∀ n, P16891206107662484110.a n = A130711 (n + 1)

end A130711

/-! ## A130711.P3629193995836880349

`A007435(n+1)+A034729(n+1)-A245282(n+1)`
-/

namespace A130711.P3629193995836880349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007435 (n + 1) + (A034729 (n + 1) - A245282 (n + 1))

end

end A130711.P3629193995836880349

namespace A130711

/-- `A007435(n+1)+A034729(n+1)-A245282(n+1)` -/
def P3629193995836880349.Spec : Prop :=
  ∀ n, P3629193995836880349.a n = A130711 (n + 1)

end A130711

/-! ## A130711.P14514898945350954279

`A034729(n+1)+A245282(n+1)-A100107(n+1)`
-/

namespace A130711.P14514898945350954279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034729 (n + 1) + (A245282 (n + 1) - A100107 (n + 1))

end

end A130711.P14514898945350954279

namespace A130711

/-- `A034729(n+1)+A245282(n+1)-A100107(n+1)` -/
def P14514898945350954279.Spec : Prop :=
  ∀ n, P14514898945350954279.a n = A130711 (n + 1)

end A130711

/-!
# A130713: a(0)=a(2)=1, a(1)=2, a(n)=0 for n > 2.

The programs for A130713, the canonical program `A130713.P14707225220297585008` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130713 has offset 0).

The definition of A130713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130713.P14707225220297585008

`C(2*n, n²)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130713

/-- `C(2*n, n²)` -/
def P14707225220297585008.Spec : Prop :=
  ∀ n, (P14707225220297585008.a n : ℤ) = A130713 n

theorem P14707225220297585008.correct : P14707225220297585008.Spec := by
  intro n
  simp only [A130713]

end A130713

/-!
# A130714: Number of partitions of n such that every part divides the largest part and such that the smallest part divides every part.

The programs for A130714, there is no canonical definition to state claims against.
-/

/-! ## A130714.P1231975513250816088

`∑{d}[n+1, A130689(#-1)]`
-/

namespace A130714.P1231975513250816088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130689 (d - 1)

end

end A130714.P1231975513250816088

/-! ## A130714.P7511634707942999211

`∑[-Δ[A343344(n)-A130689(n)]]`
-/

namespace A130714.P7511634707942999211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 n - A130689 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130714.P7511634707942999211

/-! ## A130714.P13088831780092533073

`A130689(n+1)-A343344(n+1)`
-/

namespace A130714.P13088831780092533073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130689 (n + 1) - A343344 (n + 1)

end

end A130714.P13088831780092533073

/-! ## A130714.P17827173310348230570

`A083710(n+1)-A343345(n+1)`
-/

namespace A130714.P17827173310348230570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083710 (n + 1) - A343345 (n + 1)

end

end A130714.P17827173310348230570

/-! ## A130714.P4026353437428715522

`Δ[A000070(n)-∑[A343346(n)]]`
-/

namespace A130714.P4026353437428715522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343346 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130714.P4026353437428715522

/-!
# A130715: Number of vertices of the Gelfand Tsetlin-polytope. Alternatively, the number of Gelfand-Tsetlin patterns with top row 1234...n and such that every entry in a given row also appears in the row above it.

The programs for A130715, there is no canonical definition to state claims against.
-/

/-! ## A130715.P7169528412857869371

`A326535(A365353(n+1))+n`
-/

namespace A130715.P7169528412857869371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (A365353 (n + 1)).toNat + (n : ℤ)

end

end A130715.P7169528412857869371

/-! ## A130715.P12564345549428043742

`A236842(A002110(n))+A109062(n+1)`
-/

namespace A130715.P12564345549428043742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236842 (A002110 n).toNat + A109062 (n + 1)

end

end A130715.P12564345549428043742

/-!
# A130716: a(0)=a(1)=a(2)=1, a(n)=0 for n>2.

The programs for A130716, the canonical program `A130716.P13605837186844265742` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130716 has offset 0).

The definition of A130716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130716.P13605837186844265742

`ogf((1-x^3)/(1-x))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130716

/-- `ogf((1-x^3)/(1-x))` -/
def P13605837186844265742.Spec : Prop :=
  ∀ n, P13605837186844265742.a n = A130716 n

theorem P13605837186844265742.correct : P13605837186844265742.Spec := by
  intro n
  simp only [A130716]

end A130716

/-!
# A130717: Second differences of A130845.

The programs for A130717, the canonical program `A130717.P13372029454541461089` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130717 has offset 0).

The definition of A130717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130717.P12193217008869586794

`Δ[Δ[floor(n/gcd(4, gcd(4, n)-n))]]`
-/

namespace A130717.P12193217008869586794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Int.gcd 4 ((Nat.gcd 4 n : ℤ) - (n : ℤ)) : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130717.P12193217008869586794

namespace A130717

/-- `Δ[Δ[floor(n/gcd(4, gcd(4, n)-n))]]` -/
def P12193217008869586794.Spec : Prop :=
  ∀ n, P12193217008869586794.a n = A130717 n

end A130717

/-! ## A130717.P15625832925600958464

`Δ[Δ[floor(lcm(n, ∑[n])/lcm(4, n+1))]]`
-/

namespace A130717.P15625832925600958464
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm n (∑ j ∈ Finset.range (n + 1), f3 j) : ℚ) / (Nat.lcm 4 (n + 1) : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130717.P15625832925600958464

namespace A130717

/-- `Δ[Δ[floor(lcm(n, ∑[n])/lcm(4, n+1))]]` -/
def P15625832925600958464.Spec : Prop :=
  ∀ n, P15625832925600958464.a n = A130717 n

end A130717

/-! ## A130717.P13372029454541461089

`Δ[A131358(A057353(n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A130717

/-- `Δ[A131358(A057353(n))]` -/
def P13372029454541461089.Spec : Prop :=
  ∀ n, P13372029454541461089.a n = A130717 n

theorem P13372029454541461089.correct : P13372029454541461089.Spec := by
  intro n
  simp only [A130717]

end A130717

/-! ## A130717.P10800064304906289936

`Δ[A131358(A131742(n))]`
-/

namespace A130717.P10800064304906289936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A131742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130717.P10800064304906289936

namespace A130717

/-- `Δ[A131358(A131742(n))]` -/
def P10800064304906289936.Spec : Prop :=
  ∀ n, P10800064304906289936.a n = A130717 n

end A130717

/-! ## A130717.P8649108426099493637

`Δ[A130507(n)]`
-/

namespace A130717.P8649108426099493637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130717.P8649108426099493637

namespace A130717

/-- `Δ[A130507(n)]` -/
def P8649108426099493637.Spec : Prop :=
  ∀ n, P8649108426099493637.a n = A130717 n

end A130717

/-! ## A130717.P1114241618074575108

`Δ[A131730(n*A021913(n))]`
-/

namespace A130717.P1114241618074575108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 ((n : ℤ) * A021913 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130717.P1114241618074575108

namespace A130717

/-- `Δ[A131730(n*A021913(n))]` -/
def P1114241618074575108.Spec : Prop :=
  ∀ n, P1114241618074575108.a n = A130717 n

end A130717

/-! ## A130717.P7167623686257026422

`A130507(n+1)-A130507(n)`
-/

namespace A130717.P7167623686257026422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 (n + 1) - A130507 n

end

end A130717.P7167623686257026422

namespace A130717

/-- `A130507(n+1)-A130507(n)` -/
def P7167623686257026422.Spec : Prop :=
  ∀ n, P7167623686257026422.a n = A130717 n

end A130717

/-! ## A130717.P10665618106710299145

`Δ[Δ[A130845(n)]]`
-/

namespace A130717.P10665618106710299145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130717.P10665618106710299145

namespace A130717

/-- `Δ[Δ[A130845(n)]]` -/
def P10665618106710299145.Spec : Prop :=
  ∀ n, P10665618106710299145.a n = A130717 n

end A130717

/-! ## A130717.P15406349258963656602

`Δ[Δ[A026741(A004524(n))]]`
-/

namespace A130717.P15406349258963656602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004524 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130717.P15406349258963656602

namespace A130717

/-- `Δ[Δ[A026741(A004524(n))]]` -/
def P15406349258963656602.Spec : Prop :=
  ∀ n, P15406349258963656602.a n = A130717 n

end A130717

/-! ## A130717.P12036095873907539112

`Δ[Δ[A009947(A130766(n))]]`
-/

namespace A130717.P12036095873907539112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A130766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130717.P12036095873907539112

namespace A130717

/-- `Δ[Δ[A009947(A130766(n))]]` -/
def P12036095873907539112.Spec : Prop :=
  ∀ n, P12036095873907539112.a n = A130717 n

end A130717

/-! ## A130717.P1902089329293796501

`Δ[Δ[(A002265(n)+1)*A177704(n)]]`
-/

namespace A130717.P1902089329293796501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002265 n + 1) * A177704 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130717.P1902089329293796501

namespace A130717

/-- `Δ[Δ[(A002265(n)+1)*A177704(n)]]` -/
def P1902089329293796501.Spec : Prop :=
  ∀ n, P1902089329293796501.a n = A130717 n

end A130717

/-! ## A130717.P16427325346431970131

`Δ[Δ[A002265(A222259(n+1))]]`
-/

namespace A130717.P16427325346431970131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A222259 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130717.P16427325346431970131

namespace A130717

/-- `Δ[Δ[A002265(A222259(n+1))]]` -/
def P16427325346431970131.Spec : Prop :=
  ∀ n, P16427325346431970131.a n = A130717 n

end A130717

/-! ## A130717.P9949346970104556582

`Δ[Δ[A002265(n*A177704(n))]]`
-/

namespace A130717.P9949346970104556582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((n : ℤ) * A177704 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130717.P9949346970104556582

namespace A130717

/-- `Δ[Δ[A002265(n*A177704(n))]]` -/
def P9949346970104556582.Spec : Prop :=
  ∀ n, P9949346970104556582.a n = A130717 n

end A130717

/-! ## A130717.P12272055308266142051

`A004525(A077814(2*n))-A077814(n)`
-/

namespace A130717.P12272055308266142051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A077814 (2 * n)).toNat - A077814 n

end

end A130717.P12272055308266142051

namespace A130717

/-- `A004525(A077814(2*n))-A077814(n)` -/
def P12272055308266142051.Spec : Prop :=
  ∀ n, P12272055308266142051.a n = A130717 n

end A130717

/-! ## A130717.P9589279319513196400

`A315925(n)-A315071(n)`
-/

namespace A130717.P9589279319513196400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315925 n - A315071 n

end

end A130717.P9589279319513196400

namespace A130717

/-- `A315925(n)-A315071(n)` -/
def P9589279319513196400.Spec : Prop :=
  ∀ n, P9589279319513196400.a n = A130717 n

end A130717

/-! ## A130717.P9087532573229708731

`A315346(n)-A314154(n)`
-/

namespace A130717.P9087532573229708731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315346 n - A314154 n

end

end A130717.P9087532573229708731

namespace A130717

/-- `A315346(n)-A314154(n)` -/
def P9087532573229708731.Spec : Prop :=
  ∀ n, P9087532573229708731.a n = A130717 n

end A130717

/-! ## A130717.P13273824816908502053

`Δ[A307013(A272212(n))]`
-/

namespace A130717.P13273824816908502053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307013 (A272212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130717.P13273824816908502053

namespace A130717

/-- `Δ[A307013(A272212(n))]` -/
def P13273824816908502053.Spec : Prop :=
  ∀ n, P13273824816908502053.a n = A130717 n

end A130717

/-! ## A130717.P6229615913298891365

`Δ[A307012(A296805(n+1))]`
-/

namespace A130717.P6229615913298891365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 (A296805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130717.P6229615913298891365

namespace A130717

/-- `Δ[A307012(A296805(n+1))]` -/
def P6229615913298891365.Spec : Prop :=
  ∀ n, P6229615913298891365.a n = A130717 n

end A130717

/-!
# A130718: 2*(prime(n)-2)!.

The programs for A130718, the canonical program `A130718.P3678526743814345301` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130718 has offset 1).

The definition of A130718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(A000040(n+1)-2)!` (program `A130718.P3678526743814345301`, by `A130718.P3678526743814345301.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130718.P3678526743814345301

`2*(A000040(n+1)-2)!`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A130718

/-- `2*(A000040(n+1)-2)!` -/
def P3678526743814345301.Spec : Prop :=
  ∀ n, (P3678526743814345301.a n : ℤ) = A130718 (n + 1)

theorem P3678526743814345301.correct : P3678526743814345301.Spec := by
  intro n
  simp only [A130718, Nat.add_sub_cancel]

end A130718

/-! ## A130718.P14331257058649987958

`2*eq[1, ∑{e}[n+2, #]]!`
-/

namespace A130718.P14331257058649987958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A130718.P14331257058649987958

namespace A130718

/-- `2*eq[1, ∑{e}[n+2, #]]!` -/
def P14331257058649987958.Spec : Prop :=
  ∀ n, (P14331257058649987958.a n : ℤ) = A130718 (n + 1)

end A130718

/-! ## A130718.P17817319937968179561

`2*lt[∑{e}[n+2, #], 2]!`
-/

namespace A130718.P17817319937968179561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A130718.P17817319937968179561

namespace A130718

/-- `2*lt[∑{e}[n+2, #], 2]!` -/
def P17817319937968179561.Spec : Prop :=
  ∀ n, (P17817319937968179561.a n : ℤ) = A130718 (n + 1)

end A130718

/-! ## A130718.P7875243863310281645

`2*eq[n+2, ∏{d}[n+2, #]]!`
-/

namespace A130718.P7875243863310281645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A130718.P7875243863310281645

namespace A130718

/-- `2*eq[n+2, ∏{d}[n+2, #]]!` -/
def P7875243863310281645.Spec : Prop :=
  ∀ n, (P7875243863310281645.a n : ℤ) = A130718 (n + 1)

end A130718

/-! ## A130718.P3326624225887413680

`2*eq[n+3, ∑{d}[n+2, #]]!`
-/

namespace A130718.P3326624225887413680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A130718.P3326624225887413680

namespace A130718

/-- `2*eq[n+3, ∑{d}[n+2, #]]!` -/
def P3326624225887413680.Spec : Prop :=
  ∀ n, (P3326624225887413680.a n : ℤ) = A130718 (n + 1)

end A130718

/-!
# A130721: Sum of the cubes of the number of standard Young tableaux over all partitions of n.

The programs for A130721, there is no canonical definition to state claims against.
-/

/-! ## A130721.P15696416393070946367

`A208447(∑[n+3]+n+3)`
-/

namespace A130721.P15696416393070946367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A130721.P15696416393070946367

/-! ## A130721.P7604687842137902404

`A306743(A307006(n))`
-/

namespace A130721.P7604687842137902404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306743 (A307006 n).toNat

end

end A130721.P7604687842137902404

/-!
# A130722: The twice repeated nonnegative integers at even indices, the non-repeated nonnegative integers at odd indices.

The programs for A130722, the canonical program `A130722.P10840610299157429851` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130722 has offset 0).

The definition of A130722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130722.P10840610299157429851

`ogf((x^3+x^4+x^5)/(1-x^2-x^4+x^6))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130722

/-- `ogf((x^3+x^4+x^5)/(1-x^2-x^4+x^6))` -/
def P10840610299157429851.Spec : Prop :=
  ∀ n, P10840610299157429851.a n = A130722 n

theorem P10840610299157429851.correct : P10840610299157429851.Spec := by
  intro n
  simp only [A130722]

end A130722

/-! ## A130722.P6530785115753276241

`floor(lcm(2, n)/4)`
-/

namespace A130722.P6530785115753276241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 n : ℚ) / 4⌋

end

end A130722.P6530785115753276241

namespace A130722

/-- `floor(lcm(2, n)/4)` -/
def P6530785115753276241.Spec : Prop :=
  ∀ n, P6530785115753276241.a n = A130722 n

end A130722

/-! ## A130722.P10363139611453511592

`floor(gcd(n, ∑[n])/2)`
-/

namespace A130722.P10363139611453511592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌋

end

end A130722.P10363139611453511592

namespace A130722

/-- `floor(gcd(n, ∑[n])/2)` -/
def P10363139611453511592.Spec : Prop :=
  ∀ n, P10363139611453511592.a n = A130722 n

end A130722

/-! ## A130722.P5798753503902046251

`floor(n/gcd(4, 2*n))`
-/

namespace A130722.P5798753503902046251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.gcd 4 (2 * n) : ℚ)⌋

end

end A130722.P5798753503902046251

namespace A130722

/-- `floor(n/gcd(4, 2*n))` -/
def P5798753503902046251.Spec : Prop :=
  ∀ n, P5798753503902046251.a n = A130722 n

end A130722

/-! ## A130722.P15613696063206822018

`floor(n/((-1)^n+3))`
-/

namespace A130722.P15613696063206822018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((-1) ^ n + 3 : ℚ)⌋

end

end A130722.P15613696063206822018

namespace A130722

/-- `floor(n/((-1)^n+3))` -/
def P15613696063206822018.Spec : Prop :=
  ∀ n, P15613696063206822018.a n = A130722 n

end A130722

/-! ## A130722.P6539121872697934771

`-ceil(n/(2*or(n, -2)))`
-/

namespace A130722.P6539121872697934771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(n : ℚ) / (2 * Int.lor (n : ℤ) (-2) : ℚ)⌉

end

end A130722.P6539121872697934771

namespace A130722

/-- `-ceil(n/(2*or(n, -2)))` -/
def P6539121872697934771.Spec : Prop :=
  ∀ n, P6539121872697934771.a n = A130722 n

end A130722

/-! ## A130722.P14457136355904856928

`round((n-1)/(4-2*and(1, n)))`
-/

namespace A130722.P14457136355904856928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / (4 - (2 * Nat.land 1 n : ℤ) : ℚ))

end

end A130722.P14457136355904856928

namespace A130722

/-- `round((n-1)/(4-2*and(1, n)))` -/
def P14457136355904856928.Spec : Prop :=
  ∀ n, P14457136355904856928.a n = A130722 n

end A130722

/-! ## A130722.P5284883272272051360

`ceil((n-2)/(4-2*and(1, n)))`
-/

namespace A130722.P5284883272272051360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 2 : ℚ) / (4 - (2 * Nat.land 1 n : ℤ) : ℚ)⌉

end

end A130722.P5284883272272051360

namespace A130722

/-- `ceil((n-2)/(4-2*and(1, n)))` -/
def P5284883272272051360.Spec : Prop :=
  ∀ n, P5284883272272051360.a n = A130722 n

end A130722

/-! ## A130722.P12604980246326930987

`round((n-1)/(xor(1, n)-(n-3)))`
-/

namespace A130722.P12604980246326930987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / ((Nat.xor 1 n : ℤ) - ((n : ℤ) - 3) : ℚ))

end

end A130722.P12604980246326930987

namespace A130722

/-- `round((n-1)/(xor(1, n)-(n-3)))` -/
def P12604980246326930987.Spec : Prop :=
  ∀ n, P12604980246326930987.a n = A130722 n

end A130722

/-! ## A130722.P16643416285102911104

`ceil((n-2)/(xor(1, n)-(n-3)))`
-/

namespace A130722.P16643416285102911104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 2 : ℚ) / ((Nat.xor 1 n : ℤ) - ((n : ℤ) - 3) : ℚ)⌉

end

end A130722.P16643416285102911104

namespace A130722

/-- `ceil((n-2)/(xor(1, n)-(n-3)))` -/
def P16643416285102911104.Spec : Prop :=
  ∀ n, P16643416285102911104.a n = A130722 n

end A130722

/-! ## A130722.P6888510190415846265

`round(-((n-1)/(2*or(n, -2))))`
-/

namespace A130722.P6888510190415846265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-(((n : ℤ) - 1 : ℚ) / (2 * Int.lor (n : ℤ) (-2) : ℚ)))

end

end A130722.P6888510190415846265

namespace A130722

/-- `round(-((n-1)/(2*or(n, -2))))` -/
def P6888510190415846265.Spec : Prop :=
  ∀ n, P6888510190415846265.a n = A130722 n

end A130722

/-! ## A130722.P11277028784466917719

`floor(3*(n-1)/4)-a(n-1)` with `a(0)=0`
-/

namespace A130722.P11277028784466917719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊3 * (((n : ℤ) - 1 : ℚ) / 4)⌋ - a (n - 1)

end

end A130722.P11277028784466917719

namespace A130722

/-- `floor(3*(n-1)/4)-a(n-1)` -/
def P11277028784466917719.Spec : Prop :=
  ∀ n, P11277028784466917719.a n = A130722 n

end A130722

/-! ## A130722.P1764386023113471668

`a(n-2)+(∑[n+1]%n)%2` with `a(0)=0, a(1)=0`
-/

namespace A130722.P1764386023113471668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (∑ j ∈ Finset.range (n + 1), f1 j) % n % 2

end

end A130722.P1764386023113471668

namespace A130722

/-- `a(n-2)+(∑[n+1]%n)%2` -/
def P1764386023113471668.Spec : Prop :=
  ∀ n, (P1764386023113471668.a n : ℤ) = A130722 n

end A130722

/-! ## A130722.P7624530424791616358

`a(n-4)+gcd(n+1, n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A130722.P7624530424791616358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  a (n - 4) + Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)

end

end A130722.P7624530424791616358

namespace A130722

/-- `a(n-4)+gcd(n+1, n-1)` -/
def P7624530424791616358.Spec : Prop :=
  ∀ n, (P7624530424791616358.a n : ℤ) = A130722 n

end A130722

/-! ## A130722.P1946411196369345371

`A004526(gcd(n, ∑[n]))`
-/

namespace A130722.P1946411196369345371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A130722.P1946411196369345371

namespace A130722

/-- `A004526(gcd(n, ∑[n]))` -/
def P1946411196369345371.Spec : Prop :=
  ∀ n, P1946411196369345371.a n = A130722 n

end A130722

/-! ## A130722.P7739086750789488293

`A178804(n+1)-1`
-/

namespace A130722.P7739086750789488293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (n + 1) - 1

end

end A130722.P7739086750789488293

namespace A130722

/-- `A178804(n+1)-1` -/
def P7739086750789488293.Spec : Prop :=
  ∀ n, P7739086750789488293.a n = A130722 n

end A130722

/-! ## A130722.P8524051642111661770

`(A215495(n)-1)/2`
-/

namespace A130722.P8524051642111661770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215495 n - 1 : ℚ) / 2

end

end A130722.P8524051642111661770

namespace A130722

/-- `(A215495(n)-1)/2` -/
def P8524051642111661770.Spec : Prop :=
  ∀ n, P8524051642111661770.a n = (A130722 n : ℚ)

end A130722

/-! ## A130722.P10416008383381499724

`A106466(xor(1, n))-1`
-/

namespace A130722.P10416008383381499724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (Nat.xor 1 n) - 1

end

end A130722.P10416008383381499724

namespace A130722

/-- `A106466(xor(1, n))-1` -/
def P10416008383381499724.Spec : Prop :=
  ∀ n, P10416008383381499724.a n = A130722 n

end A130722

/-! ## A130722.P17393900617161587451

`A124072(n)-and(1, n)`
-/

namespace A130722.P17393900617161587451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 n - (Nat.land 1 n : ℤ)

end

end A130722.P17393900617161587451

namespace A130722

/-- `A124072(n)-and(1, n)` -/
def P17393900617161587451.Spec : Prop :=
  ∀ n, P17393900617161587451.a n = A130722 n

end A130722

/-! ## A130722.P18034114136364657576

`A004524(n)/gcd(2, n²)`
-/

namespace A130722.P18034114136364657576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004524 n : ℚ) / (Nat.gcd 2 (n ^ 2) : ℚ)

end

end A130722.P18034114136364657576

namespace A130722

/-- `A004524(n)/gcd(2, n²)` -/
def P18034114136364657576.Spec : Prop :=
  ∀ n, P18034114136364657576.a n = (A130722 n : ℚ)

end A130722

/-!
# A130723: Least common multiple of 3 and n^2+n+1.

The programs for A130723, the canonical program `A130723.P13760091124918147923` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130723 has offset 0).

The definition of A130723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130723.P13760091124918147923

`lcm(3, n²+n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130723

/-- `lcm(3, n²+n+1)` -/
def P13760091124918147923.Spec : Prop :=
  ∀ n, (P13760091124918147923.a n : ℤ) = A130723 n

theorem P13760091124918147923.correct : P13760091124918147923.Spec := by
  intro n
  simp only [A130723]

end A130723

/-! ## A130723.P14056142227902495067

`ogf((3+3x+21x^2+30x^3+12x^4+30x^5+21x^6+3x^7+3x^8)/(1-3x^3+3x^6-x^9))`
-/

namespace A130723.P14056142227902495067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 21, 30, 12, 30, 21, 3, 3] [1, 0, 0, -3, 0, 0, 3, 0, 0, -1] n

end

end A130723.P14056142227902495067

namespace A130723

/-- `ogf((3+3x+21x^2+30x^3+12x^4+30x^5+21x^6+3x^7+3x^8)/(1-3x^3+3x^6-x^9))` -/
def P14056142227902495067.Spec : Prop :=
  ∀ n, P14056142227902495067.a n = A130723 n

end A130723

/-! ## A130723.P9058355911468745026

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=3, a(1)=3, a(2)=21, a(3)=39, a(4)=21, a(5)=93, a(6)=129, a(7)=57, a(8)=219`
-/

namespace A130723.P9058355911468745026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 21, 39, 21, 93, 129, 57, 219] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 9)

end

end A130723.P9058355911468745026

namespace A130723

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P9058355911468745026.Spec : Prop :=
  ∀ n, P9058355911468745026.a n = A130723 n

end A130723

/-! ## A130723.P9969321674238405826

`lcm(3, xor(1, ∑[2*n]))`
-/

namespace A130723.P9969321674238405826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A130723.P9969321674238405826

namespace A130723

/-- `lcm(3, xor(1, ∑[2*n]))` -/
def P9969321674238405826.Spec : Prop :=
  ∀ n, (P9969321674238405826.a n : ℤ) = A130723 n

end A130723

/-! ## A130723.P17662173421337004427

`lcm(6, ∑[2*n]+1)/2`
-/

namespace A130723.P17662173421337004427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A130723.P17662173421337004427

namespace A130723

/-- `lcm(6, ∑[2*n]+1)/2` -/
def P17662173421337004427.Spec : Prop :=
  ∀ n, P17662173421337004427.a n = (A130723 n : ℚ)

end A130723

/-! ## A130723.P10834088824495198335

`(n²+1+n)*gcd(3, ∑[n])`
-/

namespace A130723.P10834088824495198335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 + n) * Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130723.P10834088824495198335

namespace A130723

/-- `(n²+1+n)*gcd(3, ∑[n])` -/
def P10834088824495198335.Spec : Prop :=
  ∀ n, (P10834088824495198335.a n : ℤ) = A130723 n

end A130723

/-! ## A130723.P1478863399693517351

`3*A130770(n)`
-/

namespace A130723.P1478863399693517351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A130770 n

end

end A130723.P1478863399693517351

namespace A130723

/-- `3*A130770(n)` -/
def P1478863399693517351.Spec : Prop :=
  ∀ n, P1478863399693517351.a n = A130723 n

end A130723

/-! ## A130723.P2900550773944719576

`3*A046163(A028310(n))`
-/

namespace A130723.P2900550773944719576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046163 (A028310 n).toNat

end

end A130723.P2900550773944719576

namespace A130723

/-- `3*A046163(A028310(n))` -/
def P2900550773944719576.Spec : Prop :=
  ∀ n, P2900550773944719576.a n = A130723 n

end A130723

/-! ## A130723.P6806135685570778008

`A109007(n)*A109007(n+1)*A002061(n+1)`
-/

namespace A130723.P6806135685570778008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109007 n * A109007 (n + 1) * A002061 (n + 1)

end

end A130723.P6806135685570778008

namespace A130723

/-- `A109007(n)*A109007(n+1)*A002061(n+1)` -/
def P6806135685570778008.Spec : Prop :=
  ∀ n, P6806135685570778008.a n = A130723 n

end A130723

/-! ## A130723.P15647269940273567608

`A144437(n+2)+A002378(n)*A144437(n+2)`
-/

namespace A130723.P15647269940273567608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144437 (n + 2) + A002378 n * A144437 (n + 2)

end

end A130723.P15647269940273567608

namespace A130723

/-- `A144437(n+2)+A002378(n)*A144437(n+2)` -/
def P15647269940273567608.Spec : Prop :=
  ∀ n, P15647269940273567608.a n = A130723 n

end A130723

/-! ## A130723.P16917758962962785369

`(n²+1+n)*A169609(n+2)`
-/

namespace A130723.P16917758962962785369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 + n : ℤ) * A169609 (n + 2)

end

end A130723.P16917758962962785369

namespace A130723

/-- `(n²+1+n)*A169609(n+2)` -/
def P16917758962962785369.Spec : Prop :=
  ∀ n, P16917758962962785369.a n = A130723 n

end A130723

/-! ## A130723.P14421099987957789771

`A103991(A179865(n+1))`
-/

namespace A130723.P14421099987957789771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103991 (A179865 (n + 1)).toNat

end

end A130723.P14421099987957789771

namespace A130723

/-- `A103991(A179865(n+1))` -/
def P14421099987957789771.Spec : Prop :=
  ∀ n, P14421099987957789771.a n = A130723 n

end A130723

/-! ## A130723.P14442595194964614050

`A008486(A130770(n))`
-/

namespace A130723.P14442595194964614050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A130770 n).toNat

end

end A130723.P14442595194964614050

namespace A130723

/-- `A008486(A130770(n))` -/
def P14442595194964614050.Spec : Prop :=
  ∀ n, P14442595194964614050.a n = A130723 n

end A130723

/-! ## A130723.P11787656345593901737

`A109044(∑[2*n]+1)`
-/

namespace A130723.P11787656345593901737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109044 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A130723.P11787656345593901737

namespace A130723

/-- `A109044(∑[2*n]+1)` -/
def P11787656345593901737.Spec : Prop :=
  ∀ n, P11787656345593901737.a n = A130723 n

end A130723

/-! ## A130723.P15321848881631934509

`A227106(n²+n+1)`
-/

namespace A130723.P15321848881631934509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227106 (n ^ 2 + (n + 1))

end

end A130723.P15321848881631934509

namespace A130723

/-- `A227106(n²+n+1)` -/
def P15321848881631934509.Spec : Prop :=
  ∀ n, P15321848881631934509.a n = A130723 n

end A130723

/-! ## A130723.P16403799852600671729

`3*A087507(n²+n)`
-/

namespace A130723.P16403799852600671729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A087507 (n ^ 2 + n)

end

end A130723.P16403799852600671729

namespace A130723

/-- `3*A087507(n²+n)` -/
def P16403799852600671729.Spec : Prop :=
  ∀ n, P16403799852600671729.a n = A130723 n

end A130723

/-! ## A130723.P9452129376268620320

`A008585(A087507(n²+n))`
-/

namespace A130723.P9452129376268620320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A087507 (n ^ 2 + n)).toNat

end

end A130723.P9452129376268620320

namespace A130723

/-- `A008585(A087507(n²+n))` -/
def P9452129376268620320.Spec : Prop :=
  ∀ n, P9452129376268620320.a n = A130723 n

end A130723

/-!
# A130724: a(n) = lcm(n,3) / gcd(n,3).

The programs for A130724, the canonical program `A130724.P6857967124393143818` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130724 has offset 0).

The definition of A130724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130724.P5133532953469103000

`lcm(n, 3)/gcd(n, 3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A130724.P5133532953469103000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n 3 : ℚ) / (Nat.gcd n 3 : ℚ)

end

end A130724.P5133532953469103000

namespace A130724

/-- `lcm(n, 3)/gcd(n, 3)` -/
def P5133532953469103000.Spec : Prop :=
  ∀ n, P5133532953469103000.a n = (A130724 n : ℚ)

end A130724

/-! ## A130724.P17469909749657146467

`ogf((3x+6x^2+x^3+6x^4+3x^5)/(1-2x^3+x^6))`
-/

namespace A130724.P17469909749657146467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 6, 1, 6, 3] [1, 0, 0, -2, 0, 0, 1] n

end

end A130724.P17469909749657146467

namespace A130724

/-- `ogf((3x+6x^2+x^3+6x^4+3x^5)/(1-2x^3+x^6))` -/
def P17469909749657146467.Spec : Prop :=
  ∀ n, P17469909749657146467.a n = A130724 n

end A130724

/-! ## A130724.P6857967124393143818

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=3, a(2)=6, a(3)=1, a(4)=12, a(5)=15`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130724

/-- `2*a(n-3)-a(n-6)` -/
def P6857967124393143818.Spec : Prop :=
  ∀ n, P6857967124393143818.a n = A130724 n

theorem P6857967124393143818.correct : P6857967124393143818.Spec := by
  intro n
  simp only [A130724]

end A130724

/-! ## A130724.P13037553747297950851

`A109044(n)/A109007(n)`
-/

namespace A130724.P13037553747297950851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109044 n : ℚ) / (A109007 n : ℚ)

end

end A130724.P13037553747297950851

namespace A130724

/-- `A109044(n)/A109007(n)` -/
def P13037553747297950851.Spec : Prop :=
  ∀ n, P13037553747297950851.a n = (A130724 n : ℚ)

end A130724

/-! ## A130724.P13427193392714750689

`3*n/gcd(9, n²)`
-/

namespace A130724.P13427193392714750689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) / (Nat.gcd 9 (n ^ 2) : ℚ))

end

end A130724.P13427193392714750689

namespace A130724

/-- `3*n/gcd(9, n²)` -/
def P13427193392714750689.Spec : Prop :=
  ∀ n, P13427193392714750689.a n = (A130724 n : ℚ)

end A130724

/-! ## A130724.P8063903781075001032

`lcm(6, 4*n)/3-n`
-/

namespace A130724.P8063903781075001032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 (4 * n) : ℚ) / 3 - (n : ℚ)

end

end A130724.P8063903781075001032

namespace A130724

/-- `lcm(6, 4*n)/3-n` -/
def P8063903781075001032.Spec : Prop :=
  ∀ n, P8063903781075001032.a n = (A130724 n : ℚ)

end A130724

/-! ## A130724.P4392559282042621151

`n/3*9^(n²%3)`
-/

namespace A130724.P4392559282042621151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (9 ^ (n ^ 2 % 3) : ℚ)

end

end A130724.P4392559282042621151

namespace A130724

/-- `n/3*9^(n²%3)` -/
def P4392559282042621151.Spec : Prop :=
  ∀ n, P4392559282042621151.a n = (A130724 n : ℚ)

end A130724

/-! ## A130724.P3636241139277958651

`n*C(3, n%3)²/3`
-/

namespace A130724.P3636241139277958651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Nat.choose 3 (n % 3) ^ 2 : ℚ) / 3)

end

end A130724.P3636241139277958651

namespace A130724

/-- `n*C(3, n%3)²/3` -/
def P3636241139277958651.Spec : Prop :=
  ∀ n, P3636241139277958651.a n = (A130724 n : ℚ)

end A130724

/-! ## A130724.P5542183986337070610

`n/3*dr((n²+8)²)`
-/

namespace A130724.P5542183986337070610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (SequenceMachineLib.digitalRoot ((n ^ 2 + 8) ^ 2 : ℤ) : ℚ)

end

end A130724.P5542183986337070610

namespace A130724

/-- `n/3*dr((n²+8)²)` -/
def P5542183986337070610.Spec : Prop :=
  ∀ n, P5542183986337070610.a n = (A130724 n : ℚ)

end A130724

/-! ## A130724.P5328541085720395305

`gcd(3*n, ∑[n+1]*∑[∑[n]])`
-/

namespace A130724.P5328541085720395305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 * n) ((∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A130724.P5328541085720395305

namespace A130724

/-- `gcd(3*n, ∑[n+1]*∑[∑[n]])` -/
def P5328541085720395305.Spec : Prop :=
  ∀ n, (P5328541085720395305.a n : ℤ) = A130724 n

end A130724

/-! ## A130724.P14368812625719469042

`lcm(3*n, (n+3)²)/(n+3)²`
-/

namespace A130724.P14368812625719469042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (3 * n) ((n + 3) ^ 2) : ℚ) / ((n + 3) ^ 2 : ℚ)

end

end A130724.P14368812625719469042

namespace A130724

/-- `lcm(3*n, (n+3)²)/(n+3)²` -/
def P14368812625719469042.Spec : Prop :=
  ∀ n, P14368812625719469042.a n = (A130724 n : ℚ)

end A130724

/-! ## A130724.P11995817008708102026

`2*gcd(2*n, ∑[(2*n)²])-n`
-/

namespace A130724.P11995817008708102026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.gcd (2 * n) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n : ℤ)

end

end A130724.P11995817008708102026

namespace A130724

/-- `2*gcd(2*n, ∑[(2*n)²])-n` -/
def P11995817008708102026.Spec : Prop :=
  ∀ n, P11995817008708102026.a n = A130724 n

end A130724

/-! ## A130724.P9231113203428336425

`n/3*∑[ogf((1+9x+9x^2)/(1+x+x^2))]`
-/

namespace A130724.P9231113203428336425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 9] [1, 1, 1] n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A130724.P9231113203428336425

namespace A130724

/-- `n/3*∑[ogf((1+9x+9x^2)/(1+x+x^2))]` -/
def P9231113203428336425.Spec : Prop :=
  ∀ n, P9231113203428336425.a n = (A130724 n : ℚ)

end A130724

/-! ## A130724.P2228600818075589071

`4*A051176(n)-n`
-/

namespace A130724.P2228600818075589071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A051176 n - (n : ℤ)

end

end A130724.P2228600818075589071

namespace A130724

/-- `4*A051176(n)-n` -/
def P2228600818075589071.Spec : Prop :=
  ∀ n, P2228600818075589071.a n = A130724 n

end A130724

/-! ## A130724.P4666333679382388979

`n/3*A166925(n+1)`
-/

namespace A130724.P4666333679382388979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A166925 (n + 1) : ℚ)

end

end A130724.P4666333679382388979

namespace A130724

/-- `n/3*A166925(n+1)` -/
def P4666333679382388979.Spec : Prop :=
  ∀ n, P4666333679382388979.a n = (A130724 n : ℚ)

end A130724

/-! ## A130724.P18158046353140171134

`A051176(n)*A169609(n)`
-/

namespace A130724.P18158046353140171134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n * A169609 n

end

end A130724.P18158046353140171134

namespace A130724

/-- `A051176(n)*A169609(n)` -/
def P18158046353140171134.Spec : Prop :=
  ∀ n, P18158046353140171134.a n = A130724 n

end A130724

/-! ## A130724.P11175170058534066986

`A109047(n)/A089145(n)`
-/

namespace A130724.P11175170058534066986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109047 n : ℚ) / (A089145 n : ℚ)

end

end A130724.P11175170058534066986

namespace A130724

/-- `A109047(n)/A089145(n)` -/
def P11175170058534066986.Spec : Prop :=
  ∀ n, P11175170058534066986.a n = (A130724 n : ℚ)

end A130724

/-! ## A130724.P9361908661964161911

`A132123(n)%A008574(n)`
-/

namespace A130724.P9361908661964161911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132123 n) (A008574 n)

end

end A130724.P9361908661964161911

namespace A130724

/-- `A132123(n)%A008574(n)` -/
def P9361908661964161911.Spec : Prop :=
  ∀ n, P9361908661964161911.a n = A130724 n

end A130724

/-! ## A130724.P11422227728605654104

`A143166(n)%A008574(n)`
-/

namespace A130724.P11422227728605654104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143166 n) (A008574 n)

end

end A130724.P11422227728605654104

namespace A130724

/-- `A143166(n)%A008574(n)` -/
def P11422227728605654104.Spec : Prop :=
  ∀ n, P11422227728605654104.a n = A130724 n

end A130724

/-! ## A130724.P14042907615981939986

`lcm(A051176(n), A154595(n))`
-/

namespace A130724.P14042907615981939986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051176 n) (A154595 n)

end

end A130724.P14042907615981939986

namespace A130724

/-- `lcm(A051176(n), A154595(n))` -/
def P14042907615981939986.Spec : Prop :=
  ∀ n, (P14042907615981939986.a n : ℤ) = A130724 n

end A130724

/-!
# A130726: Factorial of the largest prime less than or equal to n.

The programs for A130726, there is no canonical definition to state claims against.
-/

/-! ## A130726.P14698602818690093839

`A000142(A007917(n+2))`
-/

namespace A130726.P14698602818690093839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A007917 (n + 2)).toNat

end

end A130726.P14698602818690093839

/-! ## A130726.P15818680448578759894

`A007917(n+2)!`
-/

namespace A130726.P15818680448578759894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007917 (n + 2)).toNat

end

end A130726.P15818680448578759894

/-! ## A130726.P13992704587998918613

`A136548(3+n)!`
-/

namespace A130726.P13992704587998918613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A136548 (3 + n)).toNat

end

end A130726.P13992704587998918613

/-! ## A130726.P5662211376461124712

`A151799(n+3)!`
-/

namespace A130726.P5662211376461124712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A151799 (n + 3)).toNat

end

end A130726.P5662211376461124712

/-! ## A130726.P16425291685260010311

`A056813((n+2)²)!`
-/

namespace A130726.P16425291685260010311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A056813 ((n + 2) ^ 2)).toNat

end

end A130726.P16425291685260010311

/-! ## A130726.P13293334706018943983

`ratio[A118455(n+1)]!`
-/

namespace A130726.P13293334706018943983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A130726.P13293334706018943983

/-! ## A130726.P16137442947083389819

`p?[A079786(n+1)]!`
-/

namespace A130726.P16137442947083389819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079786 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A130726.P16137442947083389819

/-! ## A130726.P8062213372404815027

`A357980(p?[2*n+1])!`
-/

namespace A130726.P8062213372404815027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A357980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A130726.P8062213372404815027

/-! ## A130726.P13129057517349698993

`A000142(A055377(2*(n+2)))`
-/

namespace A130726.P13129057517349698993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A055377 (2 * (n + 2))).toNat

end

end A130726.P13129057517349698993

/-! ## A130726.P5190177713542949571

`A306461((A151799(n+3)+1)²)`
-/

namespace A130726.P5190177713542949571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306461 ((A151799 (n + 3) + 1) ^ 2).toNat

end

end A130726.P5190177713542949571

/-!
# A130727: List of triples 2n+1, 2n+3, 2n+2.

The programs for A130727, the canonical program `A130727.P13789160544353432` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130727 has offset 0).

The definition of A130727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130727.P13789160544353432

`∑[2-xor(1, n%3)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130727

/-- `∑[2-xor(1, n%3)]` -/
def P13789160544353432.Spec : Prop :=
  ∀ n, P13789160544353432.a n = A130727 n

theorem P13789160544353432.correct : P13789160544353432.Spec := by
  intro n
  simp only [A130727]

end A130727

/-! ## A130727.P9055979957930187635

`2+a(n-3)` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A130727.P9055979957930187635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  2 + a (n - 3)

end

end A130727.P9055979957930187635

namespace A130727

/-- `2+a(n-3)` -/
def P9055979957930187635.Spec : Prop :=
  ∀ n, (P9055979957930187635.a n : ℤ) = A130727 n

end A130727

/-! ## A130727.P9791764962204663900

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A130727.P9791764962204663900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130727.P9791764962204663900

namespace A130727

/-- `∑[floor(a(n-3))]` -/
def P9791764962204663900.Spec : Prop :=
  ∀ n, P9791764962204663900.a n = A130727 n

end A130727

/-! ## A130727.P2926993277909104418

`∑[2-dr(4^dr(n))%4]`
-/

namespace A130727.P2926993277909104418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.digitalRoot (4 ^ SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) % 4 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130727.P2926993277909104418

namespace A130727

/-- `∑[2-dr(4^dr(n))%4]` -/
def P2926993277909104418.Spec : Prop :=
  ∀ n, P2926993277909104418.a n = A130727 n

end A130727

/-! ## A130727.P17599486595551212978

`∑[a(n-3)%7]` with `a(0)=1, a(1)=2, a(2)=-1`
-/

namespace A130727.P17599486595551212978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -1] fun n f1 =>
  Int.tmod (f1 (n - 3)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130727.P17599486595551212978

namespace A130727

/-- `∑[a(n-3)%7]` -/
def P17599486595551212978.Spec : Prop :=
  ∀ n, P17599486595551212978.a n = A130727 n

end A130727

/-! ## A130727.P7752556735513903544

`∑[∑[ogf((1+2x-x^2)/(1+x+x^2))]]`
-/

namespace A130727.P7752556735513903544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130727.P7752556735513903544

namespace A130727

/-- `∑[∑[ogf((1+2x-x^2)/(1+x+x^2))]]` -/
def P7752556735513903544.Spec : Prop :=
  ∀ n, P7752556735513903544.a n = A130727 n

end A130727

/-! ## A130727.P9144826542090032406

`ogf((1+2x-x^2)/(1-x-x^3+x^4))`
-/

namespace A130727.P9144826542090032406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -1, 0, -1, 1] n

end

end A130727.P9144826542090032406

namespace A130727

/-- `ogf((1+2x-x^2)/(1-x-x^3+x^4))` -/
def P9144826542090032406.Spec : Prop :=
  ∀ n, P9144826542090032406.a n = A130727 n

end A130727

/-! ## A130727.P11051005960232146644

`2-floor(-a(n-3))` with `a(0)=1, a(1)=3, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A130727.P11051005960232146644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  2 - (-a (n - 3))

end

end A130727.P11051005960232146644

namespace A130727

/-- `2-floor(-a(n-3))` -/
def P11051005960232146644.Spec : Prop :=
  ∀ n, P11051005960232146644.a n = A130727 n

end A130727

/-! ## A130727.P4029975881617445674

`2-ceil(-a(n-3))` with `a(0)=1, a(1)=3, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A130727.P4029975881617445674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  2 - (-a (n - 3))

end

end A130727.P4029975881617445674

namespace A130727

/-- `2-ceil(-a(n-3))` -/
def P4029975881617445674.Spec : Prop :=
  ∀ n, P4029975881617445674.a n = A130727 n

end A130727

/-! ## A130727.P15536205964585193612

`2-round(-a(n-3))` with `a(0)=1, a(1)=3, a(2)=2`

`round` is left out, it is the identity on integers.
-/

namespace A130727.P15536205964585193612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  2 - (-a (n - 3))

end

end A130727.P15536205964585193612

namespace A130727

/-- `2-round(-a(n-3))` -/
def P15536205964585193612.Spec : Prop :=
  ∀ n, P15536205964585193612.a n = A130727 n

end A130727

/-! ## A130727.P14714019329711018370

`∑[3-2^((2*n+1)%3)]`
-/

namespace A130727.P14714019329711018370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (2 ^ ((2 * n + 1) % 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130727.P14714019329711018370

namespace A130727

/-- `∑[3-2^((2*n+1)%3)]` -/
def P14714019329711018370.Spec : Prop :=
  ∀ n, P14714019329711018370.a n = A130727 n

end A130727

/-! ## A130727.P8284230073845781678

`ceil(2*n/3)+(n+1)%3`
-/

namespace A130727.P8284230073845781678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n : ℚ) / 3)⌉ + (((n + 1) % 3 : ℕ) : ℤ)

end

end A130727.P8284230073845781678

namespace A130727

/-- `ceil(2*n/3)+(n+1)%3` -/
def P8284230073845781678.Spec : Prop :=
  ∀ n, P8284230073845781678.a n = A130727 n

end A130727

/-! ## A130727.P12833947400268732406

`floor(2*n/3)+gcd(3, 1-n)`
-/

namespace A130727.P12833947400268732406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℚ) / 3)⌋ + (Int.gcd 3 (1 - (n : ℤ)) : ℤ)

end

end A130727.P12833947400268732406

namespace A130727

/-- `floor(2*n/3)+gcd(3, 1-n)` -/
def P12833947400268732406.Spec : Prop :=
  ∀ n, P12833947400268732406.a n = A130727 n

end A130727

/-! ## A130727.P4324089677986034033

`∑[(1/a(n-3))^(-1)]` with `a(0)=1, a(1)=2, a(2)=-1`
-/

namespace A130727.P4324089677986034033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, -1] fun n f1 =>
  (1 / f1 (n - 3)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130727.P4324089677986034033

namespace A130727

/-- `∑[(1/a(n-3))^(-1)]` -/
def P4324089677986034033.Spec : Prop :=
  ∀ n, P4324089677986034033.a n = (A130727 n : ℚ)

end A130727

/-! ## A130727.P515123605323785650

`∑[(a(n-3)^(-1))^(-1)]` with `a(0)=1, a(1)=2, a(2)=-1`
-/

namespace A130727.P515123605323785650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, -1] fun n f1 =>
  (f1 (n - 3) ^ (-1 : ℤ)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130727.P515123605323785650

namespace A130727

/-- `∑[(a(n-3)^(-1))^(-1)]` -/
def P515123605323785650.Spec : Prop :=
  ∀ n, P515123605323785650.a n = (A130727 n : ℚ)

end A130727

/-! ## A130727.P12313994789474777080

`4-(4/2-a(n-3))` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A130727.P12313994789474777080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  4 - ((4 : ℚ) / 2 - a (n - 3))

end

end A130727.P12313994789474777080

namespace A130727

/-- `4-(4/2-a(n-3))` -/
def P12313994789474777080.Spec : Prop :=
  ∀ n, P12313994789474777080.a n = (A130727 n : ℚ)

end A130727

/-! ## A130727.P9371853533693148119

`-Δ[a(n-3)-2*n]` with `a(0)=4, a(1)=3, a(2)=0`
-/

namespace A130727.P9371853533693148119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 0] fun n f1 =>
  f1 (n - 3) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A130727.P9371853533693148119

namespace A130727

/-- `-Δ[a(n-3)-2*n]` -/
def P9371853533693148119.Spec : Prop :=
  ∀ n, P9371853533693148119.a n = A130727 n

end A130727

/-! ## A130727.P1468632968891462230

`∑[2-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A130727.P1468632968891462230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130727.P1468632968891462230

namespace A130727

/-- `∑[2-a(n-1)-a(n-2)]` -/
def P1468632968891462230.Spec : Prop :=
  ∀ n, P1468632968891462230.a n = A130727 n

end A130727

/-! ## A130727.P8009035467593850826

`2-(a(n-3)-2*a(n-3))` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A130727.P8009035467593850826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  2 - (a (n - 3) - 2 * a (n - 3))

end

end A130727.P8009035467593850826

namespace A130727

/-- `2-(a(n-3)-2*a(n-3))` -/
def P8009035467593850826.Spec : Prop :=
  ∀ n, P8009035467593850826.a n = A130727 n

end A130727

/-!
# A130729: Fermat numbers of order 3 or F(n,3) = 2^(2^n) + 3.

The programs for A130729, the canonical program `A130729.P9063830520896854585` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130729 has offset 0).

The definition of A130729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130729.P9063830520896854585

`2^2^n+3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130729

/-- `2^2^n+3` -/
def P9063830520896854585.Spec : Prop :=
  ∀ n, (P9063830520896854585.a n : ℤ) = A130729 n

theorem P9063830520896854585.correct : P9063830520896854585.Spec := by
  intro n
  simp only [A130729]

end A130729

/-! ## A130729.P6559571781305169121

`or(3, (3-a(n-1))²)` with `a(0)=5`
-/

namespace A130729.P6559571781305169121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.lor 3 ((3 - a (n - 1)) ^ 2)

end

end A130729.P6559571781305169121

namespace A130729

/-- `or(3, (3-a(n-1))²)` -/
def P6559571781305169121.Spec : Prop :=
  ∀ n, P6559571781305169121.a n = A130729 n

end A130729

/-! ## A130729.P15114889027219745577

`xor(3, (3-a(n-1))²)` with `a(0)=5`
-/

namespace A130729.P15114889027219745577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.xor 3 ((3 - a (n - 1)) ^ 2)

end

end A130729.P15114889027219745577

namespace A130729

/-- `xor(3, (3-a(n-1))²)` -/
def P15114889027219745577.Spec : Prop :=
  ∀ n, P15114889027219745577.a n = A130729 n

end A130729

/-! ## A130729.P10636209062981779938

`∑[abs(Δ[a(n-1)²])]` with `a(0)=7, a(1)=2`
-/

namespace A130729.P10636209062981779938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7, 2] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130729.P10636209062981779938

namespace A130729

/-- `∑[abs(Δ[a(n-1)²])]` -/
def P10636209062981779938.Spec : Prop :=
  ∀ n, P10636209062981779938.a n = A130729 n

end A130729

/-! ## A130729.P8054522489744225018

`A062709(2^n)`
-/

namespace A130729.P8054522489744225018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062709 (2 ^ n)

end

end A130729.P8054522489744225018

namespace A130729

/-- `A062709(2^n)` -/
def P8054522489744225018.Spec : Prop :=
  ∀ n, P8054522489744225018.a n = A130729 n

end A130729

/-!
# A130730: Fermat numbers of order 7 or F(n,7) = 2^(2^n) + 7.

The programs for A130730, the canonical program `A130730.P6663149245363065236` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130730 has offset 0).

The definition of A130730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130730.P6663149245363065236

`2^2^n+7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130730

/-- `2^2^n+7` -/
def P6663149245363065236.Spec : Prop :=
  ∀ n, (P6663149245363065236.a n : ℤ) = A130730 n

theorem P6663149245363065236.correct : P6663149245363065236.Spec := by
  intro n
  simp only [A130730]

end A130730

/-! ## A130730.P15632676138407627835

`A168415(2^n)`
-/

namespace A130730.P15632676138407627835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168415 (2 ^ n)

end

end A130730.P15632676138407627835

namespace A130730

/-- `A168415(2^n)` -/
def P15632676138407627835.Spec : Prop :=
  ∀ n, P15632676138407627835.a n = A130730 n

end A130730

/-! ## A130730.P994605677166614915

`abs(A232460(n)+12)`
-/

namespace A130730.P994605677166614915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A232460 n + 12|

end

end A130730.P994605677166614915

namespace A130730

/-- `abs(A232460(n)+12)` -/
def P994605677166614915.Spec : Prop :=
  ∀ n, P994605677166614915.a n = A130730 n

end A130730

/-! ## A130730.P5139951173578091514

`record[A329050(n)+7]`
-/

namespace A130730.P5139951173578091514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329050 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130730.P5139951173578091514

namespace A130730

/-- `record[A329050(n)+7]` -/
def P5139951173578091514.Spec : Prop :=
  ∀ n, P5139951173578091514.a n = A130730 n

end A130730

/-! ## A130730.P18426659798217561297

`record[A228540(n)+8]`
-/

namespace A130730.P18426659798217561297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228540 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130730.P18426659798217561297

namespace A130730

/-- `record[A228540(n)+8]` -/
def P18426659798217561297.Spec : Prop :=
  ∀ n, P18426659798217561297.a n = A130730 n

end A130730

/-!
# A130731: Period 4: repeat [1, 2, 0, 0].

The programs for A130731, the canonical program `A130731.P2200076964011723733` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130731 has offset 0).

The definition of A130731 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A130731.anchor (n : ℕ) : A130731 n = (([1, 2, 0, 0].getD (n % 4) 0 : ℕ) : ℤ)` in `Proof.A130.A130731`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130731.P2200076964011723733

`a(n-4)` with `a(0)=1, a(1)=2, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130731

/-- `a(n-4)` -/
def P2200076964011723733.Spec : Prop :=
  ∀ n, (P2200076964011723733.a n : ℤ) = A130731 n

theorem P2200076964011723733.correct : P2200076964011723733.Spec := by
  intro n
  simp only [A130731]

end A130731

/-!
# A130732: a(n) = floor(Fibonacci(n)/prime(n)).

The programs for A130732, the canonical program `A130732.P11785332401039935677` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130732 has offset 1).

The definition of A130732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000045(n+1)/A000040(n+1))` (program `A130732.P11785332401039935677`, by `A130732.P11785332401039935677.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130732.P11785332401039935677

`floor(A000045(n+1)/A000040(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A130732

/-- `floor(A000045(n+1)/A000040(n+1))` -/
def P11785332401039935677.Spec : Prop :=
  ∀ n, P11785332401039935677.a n = A130732 (n + 1)

theorem P11785332401039935677.correct : P11785332401039935677.Spec := by
  intro n
  simp only [A130732, Nat.add_sub_cancel]

end A130732

/-! ## A130732.P9445718007631226656

`floor(A074331(n)/record[A020639(n+2)])`
-/

namespace A130732.P9445718007631226656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074331 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A130732.P9445718007631226656

namespace A130732

/-- `floor(A074331(n)/record[A020639(n+2)])` -/
def P9445718007631226656.Spec : Prop :=
  ∀ n, P9445718007631226656.a n = A130732 (n + 1)

end A130732

/-! ## A130732.P4551063112878819747

`floor(A000045(n+1)/p?[A352844(n)])`
-/

namespace A130732.P4551063112878819747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A130732.P4551063112878819747

namespace A130732

/-- `floor(A000045(n+1)/p?[A352844(n)])` -/
def P4551063112878819747.Spec : Prop :=
  ∀ n, P4551063112878819747.a n = A130732 (n + 1)

end A130732

/-! ## A130732.P6055701788228057643

`floor(A000071(n+1)/A000040(n+1))`
-/

namespace A130732.P6055701788228057643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000071 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A130732.P6055701788228057643

namespace A130732

/-- `floor(A000071(n+1)/A000040(n+1))` -/
def P6055701788228057643.Spec : Prop :=
  ∀ n, P6055701788228057643.a n = A130732 (n + 1)

end A130732

/-! ## A130732.P13862676782068284215

`floor(A000045(n+1)/record[A051664(n+1)])`
-/

namespace A130732.P13862676782068284215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A130732.P13862676782068284215

namespace A130732

/-- `floor(A000045(n+1)/record[A051664(n+1)])` -/
def P13862676782068284215.Spec : Prop :=
  ∀ n, P13862676782068284215.a n = A130732 (n + 1)

end A130732

/-! ## A130732.P16323951517434312616

`floor(A000071(n+1)/p?[A005180(n+1)])`
-/

namespace A130732.P16323951517434312616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000071 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A130732.P16323951517434312616

namespace A130732

/-- `floor(A000071(n+1)/p?[A005180(n+1)])` -/
def P16323951517434312616.Spec : Prop :=
  ∀ n, P16323951517434312616.a n = A130732 (n + 1)

end A130732

/-! ## A130732.P1592872715664418704

`floor(A000045(n+1)/record[A020639(n+2)])`
-/

namespace A130732.P1592872715664418704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A130732.P1592872715664418704

namespace A130732

/-- `floor(A000045(n+1)/record[A020639(n+2)])` -/
def P1592872715664418704.Spec : Prop :=
  ∀ n, P1592872715664418704.a n = A130732 (n + 1)

end A130732

/-! ## A130732.P7341894009857779538

`(A000045(n+1)-A072123(n+1))/A000040(n+1)`
-/

namespace A130732.P7341894009857779538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) - A072123 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A130732.P7341894009857779538

namespace A130732

/-- `(A000045(n+1)-A072123(n+1))/A000040(n+1)` -/
def P7341894009857779538.Spec : Prop :=
  ∀ n, P7341894009857779538.a n = (A130732 (n + 1) : ℚ)

end A130732

/-! ## A130732.P1704236709220723901

`floor(A019274(n+1)/(2*A000040(n+1)))`
-/

namespace A130732.P1704236709220723901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019274 (n + 1) : ℚ) / (2 * A000040 (n + 1) : ℚ)⌋

end

end A130732.P1704236709220723901

namespace A130732

/-- `floor(A019274(n+1)/(2*A000040(n+1)))` -/
def P1704236709220723901.Spec : Prop :=
  ∀ n, P1704236709220723901.a n = A130732 (n + 1)

end A130732

/-! ## A130732.P6308229459949906434

`floor(A064497(n+1)/A001248(n+1))`
-/

namespace A130732.P6308229459949906434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064497 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)⌋

end

end A130732.P6308229459949906434

namespace A130732

/-- `floor(A064497(n+1)/A001248(n+1))` -/
def P6308229459949906434.Spec : Prop :=
  ∀ n, P6308229459949906434.a n = A130732 (n + 1)

end A130732

/-!
# A130734: List of numbers of cents you can have in US coins without having change for a dollar.

The programs for A130734, the canonical program `A130734.P17083660106069136315` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130734 has offset 1).

The definition of A130734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130734.P3761403798421787658

`floor(eq[3, A027748(A073053(n))]/2)`
-/

namespace A130734.P3761403798421787658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (A073053 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2⌋

end

end A130734.P3761403798421787658

namespace A130734

/-- `floor(eq[3, A027748(A073053(n))]/2)` -/
def P3761403798421787658.Spec : Prop :=
  ∀ n, P3761403798421787658.a n = A130734 (n + 1)

end A130734

/-! ## A130734.P953981872221532469

`A002266(A196222(n))+n`
-/

namespace A130734.P953981872221532469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A196222 n).toNat + (n : ℤ)

end

end A130734.P953981872221532469

namespace A130734

/-- `A002266(A196222(n))+n` -/
def P953981872221532469.Spec : Prop :=
  ∀ n, P953981872221532469.a n = A130734 (n + 1)

end A130734

/-! ## A130734.P12226941169610207219

`A292579(n)+A108782(A196222(n))`
-/

namespace A130734.P12226941169610207219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 n + A108782 (A196222 n).toNat

end

end A130734.P12226941169610207219

namespace A130734

/-- `A292579(n)+A108782(A196222(n))` -/
def P12226941169610207219.Spec : Prop :=
  ∀ n, P12226941169610207219.a n = A130734 (n + 1)

end A130734

/-! ## A130734.P13212267716561219981

`A296882(n+1)-A279041(A196222(n))`
-/

namespace A130734.P13212267716561219981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296882 (n + 1) - A279041 (A196222 n).toNat

end

end A130734.P13212267716561219981

namespace A130734

/-- `A296882(n+1)-A279041(A196222(n))` -/
def P13212267716561219981.Spec : Prop :=
  ∀ n, P13212267716561219981.a n = A130734 (n + 1)

end A130734

/-! ## A130734.P17083660106069136315

`A083920(n)+A003056(A118759(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A130734

/-- `A083920(n)+A003056(A118759(n))` -/
def P17083660106069136315.Spec : Prop :=
  ∀ n, P17083660106069136315.a n = A130734 (n + 1)

theorem P17083660106069136315.correct : P17083660106069136315.Spec := by
  intro n
  simp only [A130734, Nat.add_sub_cancel]

end A130734

/-! ## A130734.P4454028343023037366

`∪[A109289(A181325(2*n+2)), A118759(n)]`
-/

namespace A130734.P4454028343023037366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109289 (A181325 (2 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130734.P4454028343023037366

namespace A130734

/-- `∪[A109289(A181325(2*n+2)), A118759(n)]` -/
def P4454028343023037366.Spec : Prop :=
  ∀ n, (P4454028343023037366.a n : ℤ) = A130734 (n + 1)

end A130734

/-!
# A130738: Greedy odd Egyptian fraction representation of 1 (without repeats).

The programs for A130738, there is no canonical definition to state claims against.
-/

/-! ## A130738.P10172766938840001801

`A026741(A239036(n+1))`
-/

namespace A130738.P10172766938840001801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A239036 (n + 1)).toNat

end

end A130738.P10172766938840001801

/-! ## A130738.P748080910674482509

`A109613(or(1, A239036(n+1)))`
-/

namespace A130738.P748080910674482509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Int.lor 1 (A239036 (n + 1))).toNat

end

end A130738.P748080910674482509

/-! ## A130738.P7632709466284838101

`A239036(∑[A281181(ceil((n-3)/4))])`
-/

namespace A130738.P7632709466284838101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281181 ⌈((n : ℤ) - 3 : ℚ) / 4⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239036 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130738.P7632709466284838101

/-! ## A130738.P14555828180637501831

`A239036(n+1)%A200173(3*n+2)`
-/

namespace A130738.P14555828180637501831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239036 (n + 1)) (A200173 (3 * n + 2))

end

end A130738.P14555828180637501831

/-!
# A130739: Sum of primes < 2^n.

The programs for A130739, there is no canonical definition to state claims against.
-/

/-! ## A130739.P2500329807147090601

`ceil(n/98)*∑[A293697(n)]`
-/

namespace A130739.P2500329807147090601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 98⌉ * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130739.P2500329807147090601

/-! ## A130739.P10947922749528092590

`∑[A293697(n)]-A000038(n)`
-/

namespace A130739.P10947922749528092590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000038 n

end

end A130739.P10947922749528092590

/-! ## A130739.P12283613053660998827

`∑[A293697(n)]*A057427(n)`
-/

namespace A130739.P12283613053660998827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A130739.P12283613053660998827

/-! ## A130739.P17064230496344075981

`∑[A293697(n)]*A178334(n)`
-/

namespace A130739.P17064230496344075981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A178334 n

end

end A130739.P17064230496344075981

/-! ## A130739.P9013697949576250670

`∑[A293697(n)]%A081279(n)`
-/

namespace A130739.P9013697949576250670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A081279 n)

end

end A130739.P9013697949576250670

/-!
# A130740: a(n) = 2^(4^n) + 5.

The programs for A130740, there is no canonical definition to state claims against.
-/

/-! ## A130740.P5336720089245585661

`2^4^n+5`
-/

namespace A130740.P5336720089245585661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ 4 ^ n + 5

end

end A130740.P5336720089245585661

/-!
# A130742: Reciprocal of the base-2 logarithm of the ratio between consecutive primes, rounded down.

The programs for A130742, the canonical program `A130742.P12710228676025909946` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130742 has offset 1).

The definition of A130742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130742.P12710228676025909946

`floor(1/log2(A000040(n+2)/A000040(n+1)))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A130742

/-- `floor(1/log2(A000040(n+2)/A000040(n+1)))` -/
def P12710228676025909946.Spec : Prop :=
  ∀ n, P12710228676025909946.a n = A130742 (n + 1)

theorem P12710228676025909946.correct : P12710228676025909946.Spec := by
  intro n
  simp only [A130742, Nat.add_sub_cancel]

end A130742

/-! ## A130742.P6715318004427179618

`A378744(n+1)-1`
-/

namespace A130742.P6715318004427179618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378744 (n + 1) - 1

end

end A130742.P6715318004427179618

namespace A130742

/-- `A378744(n+1)-1` -/
def P6715318004427179618.Spec : Prop :=
  ∀ n, P6715318004427179618.a n = A130742 (n + 1)

end A130742

/-! ## A130742.P12625254033615530945

`floor(1/Δ[log2(A000040(n+1))])`
-/

namespace A130742.P12625254033615530945
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (f1 (n + 1) - f1 n)⌋

end

end A130742.P12625254033615530945

namespace A130742

/-- `floor(1/Δ[log2(A000040(n+1))])` -/
def P12625254033615530945.Spec : Prop :=
  ∀ n, P12625254033615530945.a n = A130742 (n + 1)

end A130742

/-! ## A130742.P18249172745089251887

`floor(1/Δ[log2(A001749(n+1))])`
-/

namespace A130742.P18249172745089251887
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001749 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (f1 (n + 1) - f1 n)⌋

end

end A130742.P18249172745089251887

namespace A130742

/-- `floor(1/Δ[log2(A001749(n+1))])` -/
def P18249172745089251887.Spec : Prop :=
  ∀ n, P18249172745089251887.a n = A130742 (n + 1)

end A130742

/-! ## A130742.P1711770705600553489

`floor(1/Δ[log2(A142342(n+1))])`
-/

namespace A130742.P1711770705600553489
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A142342 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (f1 (n + 1) - f1 n)⌋

end

end A130742.P1711770705600553489

namespace A130742

/-- `floor(1/Δ[log2(A142342(n+1))])` -/
def P1711770705600553489.Spec : Prop :=
  ∀ n, P1711770705600553489.a n = A130742 (n + 1)

end A130742

/-! ## A130742.P3233191906697417613

`A023443(A378744(n+1))`
-/

namespace A130742.P3233191906697417613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A378744 (n + 1)).toNat

end

end A130742.P3233191906697417613

namespace A130742

/-- `A023443(A378744(n+1))` -/
def P3233191906697417613.Spec : Prop :=
  ∀ n, P3233191906697417613.a n = A130742 (n + 1)

end A130742

/-!
# A130743: Triangle related to super-Catalan numbers (or little Schroeder numbers).

The programs for A130743, there is no canonical definition to state claims against.
-/

/-! ## A130743.P8876622689907464548

`A192933(n+1)/2^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A130743.P8876622689907464548
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192933 (n + 1) : ℚ) / (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)

end

end A130743.P8876622689907464548

/-! ## A130743.P4857222080604894951

`A192933(n+1)/A059268(n)`
-/

namespace A130743.P4857222080604894951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192933 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A130743.P4857222080604894951

/-! ## A130743.P8985434595288590590

`A192933(n+1)/2^A002262(n)`
-/

namespace A130743.P8985434595288590590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192933 (n + 1) : ℚ) / (2 : ℚ) ^ (A002262 n : ℤ)

end

end A130743.P8985434595288590590

/-! ## A130743.P8831012983288388438

`A192933(n+1)/A000079(A002262(n))`
-/

namespace A130743.P8831012983288388438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192933 (n + 1) : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A130743.P8831012983288388438

/-! ## A130743.P504126119508990873

`A192933(n+1)/A013620(A112367(n))`
-/

namespace A130743.P504126119508990873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192933 (n + 1) : ℚ) / (A013620 (A112367 n).toNat : ℚ)

end

end A130743.P504126119508990873

/-! ## A130743.P2372769174093722493

`A192933(n+1)/A130321(A061579(n))`
-/

namespace A130743.P2372769174093722493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192933 (n + 1) : ℚ) / (A130321 (A061579 n).toNat : ℚ)

end

end A130743.P2372769174093722493

/-! ## A130743.P3973090715594961273

`A192933(n+1)/A130321(A286147(n))`
-/

namespace A130743.P3973090715594961273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192933 (n + 1) : ℚ) / (A130321 (A286147 n).toNat : ℚ)

end

end A130743.P3973090715594961273

/-! ## A130743.P4732199340254541106

`A192933(n+1)/A011782(A002260(n+1))`
-/

namespace A130743.P4732199340254541106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192933 (n + 1) : ℚ) / (A011782 (A002260 (n + 1)).toNat : ℚ)

end

end A130743.P4732199340254541106

/-! ## A130743.P8647463746105749786

`A192933(n+1)/A232089(A014132(n+1))`
-/

namespace A130743.P8647463746105749786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192933 (n + 1) : ℚ) / (A232089 (A014132 (n + 1)).toNat : ℚ)

end

end A130743.P8647463746105749786

/-! ## A130743.P9107440137722129238

`A192933(n+1)/A013609(n)*A007318(n)`
-/

namespace A130743.P9107440137722129238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192933 (n + 1) : ℚ) / (A013609 n : ℚ) * (A007318 n : ℚ)

end

end A130743.P9107440137722129238

/-!
# A130744: a(n) = n*(n+2)*n!.

The programs for A130744, the canonical program `A130744.P711431262756029720` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130744 has offset 0).

The definition of A130744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+2)*n!` (program `A130744.P711431262756029720`, by `A130744.P711431262756029720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130744.P711431262756029720

`n*(n+2)*n!`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130744

/-- `n*(n+2)*n!` -/
def P711431262756029720.Spec : Prop :=
  ∀ n, (P711431262756029720.a n : ℤ) = A130744 n

theorem P711431262756029720.correct : P711431262756029720.Spec := by
  intro n
  simp only [A130744]

end A130744

/-! ## A130744.P13106525734094385807

`(n+2)!-(n+1)!-n!`
-/

namespace A130744.P13106525734094385807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℤ) - (Nat.factorial (n + 1) : ℤ) - (Nat.factorial n : ℤ)

end

end A130744.P13106525734094385807

namespace A130744

/-- `(n+2)!-(n+1)!-n!` -/
def P13106525734094385807.Spec : Prop :=
  ∀ n, P13106525734094385807.a n = A130744 n

theorem P13106525734094385807.correct : P13106525734094385807.Spec := by
  intro n
  simp only [A130744, Nat.add_sub_cancel, A130744.P13106525734094385807.a, A130744.P711431262756029720.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A130744

/-! ## A130744.P5489419597877706902

`n*A001048(n+1)`
-/

namespace A130744.P5489419597877706902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001048 (n + 1)

end

end A130744.P5489419597877706902

namespace A130744

/-- `n*A001048(n+1)` -/
def P5489419597877706902.Spec : Prop :=
  ∀ n, P5489419597877706902.a n = A130744 n

end A130744

/-! ## A130744.P8792754274274489712

`A005563(n)*A000142(n)`
-/

namespace A130744.P8792754274274489712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n * A000142 n

end

end A130744.P8792754274274489712

namespace A130744

/-- `A005563(n)*A000142(n)` -/
def P8792754274274489712.Spec : Prop :=
  ∀ n, P8792754274274489712.a n = A130744 n

theorem P8792754274274489712.correct : P8792754274274489712.Spec := by
  intro n
  simp only [A130744, Nat.add_sub_cancel, A130744.P8792754274274489712.a, A130744.P711431262756029720.a, A000142, A000142.P3272619076580183195.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A130744

/-! ## A130744.P1107777822895000299

`(n+2)*Δ[n!]`
-/

namespace A130744.P1107777822895000299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A130744.P1107777822895000299

namespace A130744

/-- `(n+2)*Δ[n!]` -/
def P1107777822895000299.Spec : Prop :=
  ∀ n, P1107777822895000299.a n = A130744 n

theorem P1107777822895000299.correct : P1107777822895000299.Spec := by
  intro n
  simp only [A130744, Nat.add_sub_cancel, A130744.P1107777822895000299.f1, A130744.P1107777822895000299.a, A130744.P711431262756029720.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A130744

/-! ## A130744.P5321701820040663349

`(n+2)*n!*n`
-/

namespace A130744.P5321701820040663349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.factorial n * n

end

end A130744.P5321701820040663349

namespace A130744

/-- `(n+2)*n!*n` -/
def P5321701820040663349.Spec : Prop :=
  ∀ n, (P5321701820040663349.a n : ℤ) = A130744 n

theorem P5321701820040663349.correct : P5321701820040663349.Spec := by
  intro n
  simp only [A130744, Nat.add_sub_cancel, A130744.P5321701820040663349.a, A130744.P711431262756029720.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A130744

/-! ## A130744.P6490760833082196558

`Δ[(n+1)!]-n!`
-/

namespace A130744.P6490760833082196558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.factorial n : ℤ)

end

end A130744.P6490760833082196558

namespace A130744

/-- `Δ[(n+1)!]-n!` -/
def P6490760833082196558.Spec : Prop :=
  ∀ n, P6490760833082196558.a n = A130744 n

theorem P6490760833082196558.correct : P6490760833082196558.Spec := by
  intro n
  simp only [A130744, Nat.add_sub_cancel, A130744.P6490760833082196558.f1, A130744.P6490760833082196558.a, A130744.P711431262756029720.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A130744

/-! ## A130744.P18432910917890635158

`n!*record[n*(n-2)]`
-/

namespace A130744.P18432910917890635158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130744.P18432910917890635158

namespace A130744

/-- `n!*record[n*(n-2)]` -/
def P18432910917890635158.Spec : Prop :=
  ∀ n, P18432910917890635158.a n = A130744 n

end A130744

/-! ## A130744.P13925308858526913545

`abs(n/Δ[1/(n+1)!])`
-/

namespace A130744.P13925308858526913545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) / (f1 (n + 1) - f1 n)|

end

end A130744.P13925308858526913545

namespace A130744

/-- `abs(n/Δ[1/(n+1)!])` -/
def P13925308858526913545.Spec : Prop :=
  ∀ n, P13925308858526913545.a n = (A130744 n : ℚ)

end A130744

/-! ## A130744.P9379268346329567724

`Δ[n!]/(n+2)^-1`
-/

namespace A130744.P9379268346329567724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (n + 2 : ℚ) ^ (-1 : ℤ)

end

end A130744.P9379268346329567724

namespace A130744

/-- `Δ[n!]/(n+2)^-1` -/
def P9379268346329567724.Spec : Prop :=
  ∀ n, P9379268346329567724.a n = (A130744 n : ℚ)

theorem P9379268346329567724.correct : P9379268346329567724.Spec := by
  intro n
  simp only [A130744, Nat.add_sub_cancel, A130744.P9379268346329567724.f1, A130744.P9379268346329567724.a, A130744.P711431262756029720.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A130744

/-!
# A130746: Triangle read by rows: T(n,m) = binomial(n+m,1+n), 1<=m<=n.

The programs for A130746, the canonical program `A130746.P212020261729733462` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130746 has offset 1).

The definition of A130746 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+1+col(n)+1, 1+row(n)+1)` (program `A130746.P212020261729733462`, by `A130746.P212020261729733462.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130746.P212020261729733462

`C(row(n)+1+col(n)+1, 1+row(n)+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130746

/-- `C(row(n)+1+col(n)+1, 1+row(n)+1)` -/
def P212020261729733462.Spec : Prop :=
  ∀ n, (P212020261729733462.a n : ℤ) = A130746 (n + 1)

theorem P212020261729733462.correct : P212020261729733462.Spec := by
  intro n
  simp only [A130746, Nat.add_sub_cancel]

end A130746

/-! ## A130746.P17329035674873403663

`C(row(n)+col(n)+2, col(n))`
-/

namespace A130746.P17329035674873403663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + (SequenceMachineLib.triCol n + 2)) (SequenceMachineLib.triCol n)

end

end A130746.P17329035674873403663

namespace A130746

/-- `C(row(n)+col(n)+2, col(n))` -/
def P17329035674873403663.Spec : Prop :=
  ∀ n, (P17329035674873403663.a n : ℤ) = A130746 (n + 1)

end A130746

/-! ## A130746.P9601428111613913195

`C(n-C(∑[char[∑[n+1]]], 2)+2, comp[∑[n]]-n)`
-/

namespace A130746.P9601428111613913195
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + 2).toNat ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat

end

end A130746.P9601428111613913195

namespace A130746

/-- `C(n-C(∑[char[∑[n+1]]], 2)+2, comp[∑[n]]-n)` -/
def P9601428111613913195.Spec : Prop :=
  ∀ n, (P9601428111613913195.a n : ℤ) = A130746 (n + 1)

end A130746

/-! ## A130746.P18389920935451925544

`C(abs(n-C(∑[char[∑[n+1]]], 2)+2), n-C(∑[char[∑[n]]], 2))`
-/

namespace A130746.P18389920935451925544
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

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |(n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + 2|.toNat ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat

end

end A130746.P18389920935451925544

namespace A130746

/-- `C(abs(n-C(∑[char[∑[n+1]]], 2)+2), n-C(∑[char[∑[n]]], 2))` -/
def P18389920935451925544.Spec : Prop :=
  ∀ n, (P18389920935451925544.a n : ℤ) = A130746 (n + 1)

end A130746

/-! ## A130746.P2674652709436820780

`A178300(comp[∑[n]])`
-/

namespace A130746.P2674652709436820780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178300 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A130746.P2674652709436820780

namespace A130746

/-- `A178300(comp[∑[n]])` -/
def P2674652709436820780.Spec : Prop :=
  ∀ n, P2674652709436820780.a n = A130746 (n + 1)

end A130746

/-! ## A130746.P11829650200481795296

`A046899(2*comp[∑[n]]-(n+1))`
-/

namespace A130746.P11829650200481795296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - (n + 1))

end

end A130746.P11829650200481795296

namespace A130746

/-- `A046899(2*comp[∑[n]]-(n+1))` -/
def P11829650200481795296.Spec : Prop :=
  ∀ n, P11829650200481795296.a n = A130746 (n + 1)

end A130746

/-! ## A130746.P14416789660336348364

`C(A108872(n+1), comp[∑[n]]-n)`
-/

namespace A130746.P14416789660336348364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A108872 (n + 1)).toNat ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat

end

end A130746.P14416789660336348364

namespace A130746

/-- `C(A108872(n+1), comp[∑[n]]-n)` -/
def P14416789660336348364.Spec : Prop :=
  ∀ n, (P14416789660336348364.a n : ℤ) = A130746 (n + 1)

end A130746

/-! ## A130746.P7805254425895682454

`A176992(2*(C(comp[∑[n]]-n, 2)-n)+n)`
-/

namespace A130746.P7805254425895682454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176992 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) + (n : ℤ)).toNat

end

end A130746.P7805254425895682454

namespace A130746

/-- `A176992(2*(C(comp[∑[n]]-n, 2)-n)+n)` -/
def P7805254425895682454.Spec : Prop :=
  ∀ n, P7805254425895682454.a n = A130746 (n + 1)

end A130746

/-! ## A130746.P15477728378938533676

`A209518(A245300(n))`
-/

namespace A130746.P15477728378938533676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 (A245300 n).toNat

end

end A130746.P15477728378938533676

namespace A130746

/-- `A209518(A245300(n))` -/
def P15477728378938533676.Spec : Prop :=
  ∀ n, P15477728378938533676.a n = A130746 (n + 1)

end A130746

/-!
# A130747: A self-referential sequence related to Mancala solitaire (see comment).

The programs for A130747, there is no canonical definition to state claims against.
-/

/-! ## A130747.P5485908687666305747

`ceil((n+1)/A002378(A028920(n)))`
-/

namespace A130747.P5485908687666305747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A002378 (A028920 n).toNat : ℚ)⌉

end

end A130747.P5485908687666305747

/-! ## A130747.P18246403548575845194

`ceil(A008619(n)/A000217(A028920(n)))`
-/

namespace A130747.P18246403548575845194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008619 n : ℚ) / (A000217 (A028920 n).toNat : ℚ)⌉

end

end A130747.P18246403548575845194

/-! ## A130747.P10489455274203145352

`ceil(A052938(n)/A000217(A028920(n)))`
-/

namespace A130747.P10489455274203145352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052938 n : ℚ) / (A000217 (A028920 n).toNat : ℚ)⌉

end

end A130747.P10489455274203145352

/-! ## A130747.P5372235342093231232

`ceil(A080513(n)/A000217(A028920(n)))`
-/

namespace A130747.P5372235342093231232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080513 n : ℚ) / (A000217 (A028920 n).toNat : ℚ)⌉

end

end A130747.P5372235342093231232

/-! ## A130747.P7887326296010846305

`ceil(A317439(n+1)/A046092(A028920(n)))`
-/

namespace A130747.P7887326296010846305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317439 (n + 1) : ℚ) / (A046092 (A028920 n).toNat : ℚ)⌉

end

end A130747.P7887326296010846305

/-!
# A130748: Place n points on each of the three sides of a triangle, 3n points in all; a(n) = number of nondegenerate triangles that can be constructed using these points (plus the 3 original vertices) as vertices.

The programs for A130748, the canonical program `A130748.P9037552864923720558` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130748 has offset 1).

The definition of A130748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130748.P6653499684368575707

`ogf((17+4x+4x^2-x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A130748.P6653499684368575707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [17, 4, 4, -1] [1, -4, 6, -4, 1] n

end

end A130748.P6653499684368575707

namespace A130748

/-- `ogf((17+4x+4x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P6653499684368575707.Spec : Prop :=
  ∀ n, P6653499684368575707.a n = A130748 (n + 1)

end A130748

/-! ## A130748.P9037552864923720558

`C(3*(n+2), 3)-3*C(n+3, 3)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130748

/-- `C(3*(n+2), 3)-3*C(n+3, 3)` -/
def P9037552864923720558.Spec : Prop :=
  ∀ n, P9037552864923720558.a n = A130748 (n + 1)

theorem P9037552864923720558.correct : P9037552864923720558.Spec := by
  intro n
  simp only [A130748, Nat.add_sub_cancel]

end A130748

/-! ## A130748.P3846089549184518282

`4*(n+1)^3+(n+1)*(15*(n+1)+9)/2+1`
-/

namespace A130748.P3846089549184518282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) ^ 3 : ℚ) + ((n + 1) * (15 * (n + 1) + 9) : ℚ) / 2 + 1

end

end A130748.P3846089549184518282

namespace A130748

/-- `4*(n+1)^3+(n+1)*(15*(n+1)+9)/2+1` -/
def P3846089549184518282.Spec : Prop :=
  ∀ n, P3846089549184518282.a n = (A130748 (n + 1) : ℚ)

theorem P3846089549184518282.correct : P3846089549184518282.Spec := by
  intro n
  simp only [A130748, Nat.add_sub_cancel, A130748.P3846089549184518282.a, A130748.P9037552864923720558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A130748

/-! ## A130748.P10801495955185462709

`Δ[C(2*(n+1), 2)*∑[n+1]]`
-/

namespace A130748.P10801495955185462709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A130748.P10801495955185462709

namespace A130748

/-- `Δ[C(2*(n+1), 2)*∑[n+1]]` -/
def P10801495955185462709.Spec : Prop :=
  ∀ n, P10801495955185462709.a n = A130748 (n + 1)

end A130748

/-! ## A130748.P4713533052063504957

`lcm(n+2, (2*n+3)²)-∑[n+1]`
-/

namespace A130748.P4713533052063504957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) ((2 * n + 3) ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130748.P4713533052063504957

namespace A130748

/-- `lcm(n+2, (2*n+3)²)-∑[n+1]` -/
def P4713533052063504957.Spec : Prop :=
  ∀ n, P4713533052063504957.a n = A130748 (n + 1)

end A130748

/-! ## A130748.P14729501442189529372

`Δ[(n+2)*lcm(2*n+1, (n+1)²)]/2`
-/

namespace A130748.P14729501442189529372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.lcm (2 * n + 1) ((n + 1) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2

end

end A130748.P14729501442189529372

namespace A130748

/-- `Δ[(n+2)*lcm(2*n+1, (n+1)²)]/2` -/
def P14729501442189529372.Spec : Prop :=
  ∀ n, P14729501442189529372.a n = (A130748 (n + 1) : ℚ)

end A130748

/-! ## A130748.P3260568872762649581

`Δ[lcm((2*n+1)*(n+2), ∑[2*n+1])]/2`
-/

namespace A130748.P3260568872762649581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((2 * n + 1) * (n + 2)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2

end

end A130748.P3260568872762649581

namespace A130748

/-- `Δ[lcm((2*n+1)*(n+2), ∑[2*n+1])]/2` -/
def P3260568872762649581.Spec : Prop :=
  ∀ n, P3260568872762649581.a n = (A130748 (n + 1) : ℚ)

end A130748

/-! ## A130748.P7413307935783143519

`Δ[(2*n+1)*(n+1)*A000217(n+1)]`
-/

namespace A130748.P7413307935783143519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n + 1) : ℤ) * A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130748.P7413307935783143519

namespace A130748

/-- `Δ[(2*n+1)*(n+1)*A000217(n+1)]` -/
def P7413307935783143519.Spec : Prop :=
  ∀ n, P7413307935783143519.a n = A130748 (n + 1)

theorem P7413307935783143519.correct : P7413307935783143519.Spec := by
  intro n
  simp only [A130748, Nat.add_sub_cancel, A130748.P7413307935783143519.f1, A130748.P7413307935783143519.a, A130748.P9037552864923720558.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A130748

/-! ## A130748.P13287669941985635328

`Δ[(n+1)*A002414(n+1)]`
-/

namespace A130748.P13287669941985635328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130748.P13287669941985635328

namespace A130748

/-- `Δ[(n+1)*A002414(n+1)]` -/
def P13287669941985635328.Spec : Prop :=
  ∀ n, P13287669941985635328.a n = A130748 (n + 1)

end A130748

/-! ## A130748.P11575895331519405636

`Δ[A000217(n+1)*A000384(n+1)]`
-/

namespace A130748.P11575895331519405636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A000384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130748.P11575895331519405636

namespace A130748

/-- `Δ[A000217(n+1)*A000384(n+1)]` -/
def P11575895331519405636.Spec : Prop :=
  ∀ n, P11575895331519405636.a n = A130748 (n + 1)

theorem P11575895331519405636.correct : P11575895331519405636.Spec := by
  intro n
  simp only [A130748, Nat.add_sub_cancel, A130748.P11575895331519405636.f1, A130748.P11575895331519405636.a, A130748.P9037552864923720558.a, A000217, A000217.P10269402890581615239.a, A000384, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A130748

/-! ## A130748.P1927852891802085551

`Δ[(2*n+1)*A002411(n+1)]`
-/

namespace A130748.P1927852891802085551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A002411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130748.P1927852891802085551

namespace A130748

/-- `Δ[(2*n+1)*A002411(n+1)]` -/
def P1927852891802085551.Spec : Prop :=
  ∀ n, P1927852891802085551.a n = A130748 (n + 1)

end A130748

/-! ## A130748.P9217678775526542573

`Δ[A179865(2*(n+1))*A179865(n+2)]`
-/

namespace A130748.P9217678775526542573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (2 * (n + 1)) * A179865 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130748.P9217678775526542573

namespace A130748

/-- `Δ[A179865(2*(n+1))*A179865(n+2)]` -/
def P9217678775526542573.Spec : Prop :=
  ∀ n, P9217678775526542573.a n = A130748 (n + 1)

end A130748

/-! ## A130748.P17923933894822521978

`Δ[sqrt(A000537(2*n+1)*A000537(n+1))]`
-/

namespace A130748.P17923933894822521978
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000537 (2 * n + 1) * A000537 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130748.P17923933894822521978

namespace A130748

/-- `Δ[sqrt(A000537(2*n+1)*A000537(n+1))]` -/
def P17923933894822521978.Spec : Prop :=
  ∀ n, P17923933894822521978.a n = (A130748 (n + 1) : ℝ)

end A130748

/-! ## A130748.P16485378629080156604

`Δ[A008805(4*n)*A008805(2*n)]`
-/

namespace A130748.P16485378629080156604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (4 * n) * A008805 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130748.P16485378629080156604

namespace A130748

/-- `Δ[A008805(4*n)*A008805(2*n)]` -/
def P16485378629080156604.Spec : Prop :=
  ∀ n, P16485378629080156604.a n = A130748 (n + 1)

end A130748

/-! ## A130748.P11637443722611115867

`A183920(A016921(n+1))`
-/

namespace A130748.P11637443722611115867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183920 (A016921 (n + 1)).toNat

end

end A130748.P11637443722611115867

namespace A130748

/-- `A183920(A016921(n+1))` -/
def P11637443722611115867.Spec : Prop :=
  ∀ n, P11637443722611115867.a n = A130748 (n + 1)

end A130748

/-! ## A130748.P6492173643526615435

`A183920(A271114(n+1))`
-/

namespace A130748.P6492173643526615435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183920 (A271114 (n + 1)).toNat

end

end A130748.P6492173643526615435

namespace A130748

/-- `A183920(A271114(n+1))` -/
def P6492173643526615435.Spec : Prop :=
  ∀ n, P6492173643526615435.a n = A130748 (n + 1)

end A130748

/-!
# A130749: Triangle A007318*A090181 (as infinite lower triangular matrices) .

The programs for A130749, there is no canonical definition to state claims against.
-/

/-! ## A130749.P9732340871303561868

`A008277(n+1)-A010894(A003401(n+1))`
-/

namespace A130749.P9732340871303561868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A010894 ((A003401 (n + 1)).toNat + 21)

end

end A130749.P9732340871303561868

/-! ## A130749.P3576807292420242336

`A384048(A008277(n+1)%A060699(n+1))`
-/

namespace A130749.P3576807292420242336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384048 (Int.tmod (A008277 (n + 1)) (A060699 (n + 1))).toNat

end

end A130749.P3576807292420242336

/-! ## A130749.P15282927205922905378

`A296206(A008277(n+1))^A014963(A133263(n))`
-/

namespace A130749.P15282927205922905378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296206 (A008277 (n + 1)).toNat : ℚ) ^ (A014963 (A133263 n).toNat : ℤ)

end

end A130749.P15282927205922905378

/-! ## A130749.P8217546423570781600

`A338466(A008277(n+1))`
-/

namespace A130749.P8217546423570781600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A008277 (n + 1)).toNat

end

end A130749.P8217546423570781600

/-! ## A130749.P862150513457898448

`A180198(A218577(n+1))`
-/

namespace A130749.P862150513457898448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180198 (A218577 (n + 1)).toNat

end

end A130749.P862150513457898448

/-!
# A130750: Binomial transform of A010882.

The programs for A130750, the canonical program `A130750.P14488460667816927176` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130750 has offset 0).

The definition of A130750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130750.P18094506602580622887

`ogf((1+2x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A130750.P18094506602580622887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -3, 3, -2] n

end

end A130750.P18094506602580622887

namespace A130750

/-- `ogf((1+2x^2)/(1-3x+3x^2-2x^3))` -/
def P18094506602580622887.Spec : Prop :=
  ∀ n, P18094506602580622887.a n = A130750 n

end A130750

/-! ## A130750.P14488460667816927176

`2^(n+1)+A128834(n+4)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A130750

/-- `2^(n+1)+A128834(n+4)` -/
def P14488460667816927176.Spec : Prop :=
  ∀ n, P14488460667816927176.a n = A130750 n

theorem P14488460667816927176.correct : P14488460667816927176.Spec := by
  intro n
  simp only [A130750]

end A130750

/-! ## A130750.P1586747962200522558

`2*a(n-1)+A057079(n-1)` with `a(0)=1`
-/

namespace A130750.P1586747962200522558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A057079 (n - 1)

end

end A130750.P1586747962200522558

namespace A130750

/-- `2*a(n-1)+A057079(n-1)` -/
def P1586747962200522558.Spec : Prop :=
  ∀ n, P1586747962200522558.a n = A130750 n

end A130750

/-! ## A130750.P7229605196426829668

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A130750.P7229605196426829668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3)

end

end A130750.P7229605196426829668

namespace A130750

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P7229605196426829668.Spec : Prop :=
  ∀ n, P7229605196426829668.a n = A130750 n

end A130750

/-! ## A130750.P15042218188322569862

`2^(n+1)-∑[a(n-1)-a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A130750.P15042218188322569862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130750.P15042218188322569862

namespace A130750

/-- `2^(n+1)-∑[a(n-1)-a(n-2)]` -/
def P15042218188322569862.Spec : Prop :=
  ∀ n, P15042218188322569862.a n = A130750 n

end A130750

/-! ## A130750.P1024918361490097462

`A281166(n+1)`
-/

namespace A130750.P1024918361490097462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281166 (n + 1)

end

end A130750.P1024918361490097462

namespace A130750

/-- `A281166(n+1)` -/
def P1024918361490097462.Spec : Prop :=
  ∀ n, P1024918361490097462.a n = A130750 n

end A130750

/-! ## A130750.P411814387537362420

`A158745(3*n)`
-/

namespace A130750.P411814387537362420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158745 (3 * n)

end

end A130750.P411814387537362420

namespace A130750

/-- `A158745(3*n)` -/
def P411814387537362420.Spec : Prop :=
  ∀ n, P411814387537362420.a n = A130750 n

end A130750

/-! ## A130750.P16711147099753273346

`2^(n+1)-A010892(n)`
-/

namespace A130750.P16711147099753273346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A010892 n

end

end A130750.P16711147099753273346

namespace A130750

/-- `2^(n+1)-A010892(n)` -/
def P16711147099753273346.Spec : Prop :=
  ∀ n, P16711147099753273346.a n = A130750 n

end A130750

/-! ## A130750.P10171521542974556512

`A163810(n+1)+2^(n+1)`
-/

namespace A130750.P10171521542974556512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A130750.P10171521542974556512

namespace A130750

/-- `A163810(n+1)+2^(n+1)` -/
def P10171521542974556512.Spec : Prop :=
  ∀ n, P10171521542974556512.a n = A130750 n

end A130750

/-! ## A130750.P363244131945978290

`2^(n+1)-A163806(n+1)`
-/

namespace A130750.P363244131945978290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A163806 (n + 1)

end

end A130750.P363244131945978290

namespace A130750

/-- `2^(n+1)-A163806(n+1)` -/
def P363244131945978290.Spec : Prop :=
  ∀ n, P363244131945978290.a n = A130750 n

end A130750

/-! ## A130750.P13334530291788855271

`A010892(n+3)+2^(n+1)`
-/

namespace A130750.P13334530291788855271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 3) + (2 ^ (n + 1) : ℤ)

end

end A130750.P13334530291788855271

namespace A130750

/-- `A010892(n+3)+2^(n+1)` -/
def P13334530291788855271.Spec : Prop :=
  ∀ n, P13334530291788855271.a n = A130750 n

end A130750

/-! ## A130750.P453047499940718694

`A130752(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A130750.P453047499940718694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130752 (n - 1) + a (n - 1)

end

end A130750.P453047499940718694

namespace A130750

/-- `A130752(n-1)+a(n-1)` -/
def P453047499940718694.Spec : Prop :=
  ∀ n, P453047499940718694.a n = A130750 n

end A130750

/-! ## A130750.P15836290280932656487

`A122876(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A130750.P15836290280932656487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122876 n + 2 * a (n - 1)

end

end A130750.P15836290280932656487

namespace A130750

/-- `A122876(n)+2*a(n-1)` -/
def P15836290280932656487.Spec : Prop :=
  ∀ n, P15836290280932656487.a n = A130750 n

end A130750

/-! ## A130750.P16710845883323098198

`A130752(n)-A057079(n)`
-/

namespace A130750.P16710845883323098198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130752 n - A057079 n

end

end A130750.P16710845883323098198

namespace A130750

/-- `A130752(n)-A057079(n)` -/
def P16710845883323098198.Spec : Prop :=
  ∀ n, P16710845883323098198.a n = A130750 n

end A130750

/-! ## A130750.P4405890191618863206

`A130755(n)-A087204(n)`
-/

namespace A130750.P4405890191618863206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130755 n - A087204 n

end

end A130750.P4405890191618863206

namespace A130750

/-- `A130755(n)-A087204(n)` -/
def P4405890191618863206.Spec : Prop :=
  ∀ n, P4405890191618863206.a n = A130750 n

end A130750

/-! ## A130750.P10846684383557233663

`A130624(n)+A024494(n+1)`
-/

namespace A130750.P10846684383557233663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130624 n + A024494 (n + 1)

end

end A130750.P10846684383557233663

namespace A130750

/-- `A130624(n)+A024494(n+1)` -/
def P10846684383557233663.Spec : Prop :=
  ∀ n, P10846684383557233663.a n = A130750 n

end A130750

/-! ## A130750.P10474247023384029881

`A048578(n)-A131026(n+1)`
-/

namespace A130750.P10474247023384029881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - A131026 (n + 1)

end

end A130750.P10474247023384029881

namespace A130750

/-- `A048578(n)-A131026(n+1)` -/
def P10474247023384029881.Spec : Prop :=
  ∀ n, P10474247023384029881.a n = A130750 n

end A130750

/-! ## A130750.P16306416383140515382

`A130755(n)-A057079(n+1)`
-/

namespace A130750.P16306416383140515382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130755 n - A057079 (n + 1)

end

end A130750.P16306416383140515382

namespace A130750

/-- `A130755(n)-A057079(n+1)` -/
def P16306416383140515382.Spec : Prop :=
  ∀ n, P16306416383140515382.a n = A130750 n

end A130750

/-! ## A130750.P11886612403210819110

`A130781(n)+A086953(n+2)`
-/

namespace A130750.P11886612403210819110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 n + A086953 (n + 2)

end

end A130750.P11886612403210819110

namespace A130750

/-- `A130781(n)+A086953(n+2)` -/
def P11886612403210819110.Spec : Prop :=
  ∀ n, P11886612403210819110.a n = A130750 n

end A130750

/-! ## A130750.P3065694698988342165

`A130752(n)+A087204(n+2)`
-/

namespace A130750.P3065694698988342165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130752 n + A087204 (n + 2)

end

end A130750.P3065694698988342165

namespace A130750

/-- `A130752(n)+A087204(n+2)` -/
def P3065694698988342165.Spec : Prop :=
  ∀ n, P3065694698988342165.a n = A130750 n

end A130750

/-!
# A130752: Binomial transform of periodic sequence (2, 3, 1).

The programs for A130752, the canonical program `A130752.P9194626256441328904` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130752 has offset 0).

The definition of A130752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130752.P1645303653352869858

`ogf((2-x)/(1-3x+3x^2-2x^3))`
-/

namespace A130752.P1645303653352869858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -3, 3, -2] n

end

end A130752.P1645303653352869858

namespace A130752

/-- `ogf((2-x)/(1-3x+3x^2-2x^3))` -/
def P1645303653352869858.Spec : Prop :=
  ∀ n, P1645303653352869858.a n = A130752 n

end A130752

/-! ## A130752.P13906278618888408514

`2^(n+1)+2*sin(π*n/3)/sqrt(3)`
-/

namespace A130752.P13906278618888408514
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℝ) + 2 * Real.sin (Real.pi * (n : ℝ) / 3) / Real.sqrt (3 : ℝ)

end

end A130752.P13906278618888408514

namespace A130752

/-- `2^(n+1)+2*sin(π*n/3)/sqrt(3)` -/
def P13906278618888408514.Spec : Prop :=
  ∀ n, P13906278618888408514.a n = (A130752 n : ℝ)

end A130752

/-! ## A130752.P9194626256441328904

`2^(n+1)+A128834(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A130752

/-- `2^(n+1)+A128834(n)` -/
def P9194626256441328904.Spec : Prop :=
  ∀ n, P9194626256441328904.a n = A130752 n

theorem P9194626256441328904.correct : P9194626256441328904.Spec := by
  intro n
  simp only [A130752]

end A130752

/-! ## A130752.P14629933868613457956

`2*a(n-1)+A057079(n+1)` with `a(0)=2`
-/

namespace A130752.P14629933868613457956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) + A057079 (n + 1)

end

end A130752.P14629933868613457956

namespace A130752

/-- `2*a(n-1)+A057079(n+1)` -/
def P14629933868613457956.Spec : Prop :=
  ∀ n, P14629933868613457956.a n = A130752 n

end A130752

/-! ## A130752.P10950043515164550468

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=2, a(1)=5, a(2)=9`
-/

namespace A130752.P10950043515164550468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 9] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3)

end

end A130752.P10950043515164550468

namespace A130752

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P10950043515164550468.Spec : Prop :=
  ∀ n, P10950043515164550468.a n = A130752 n

end A130752

/-! ## A130752.P14991870528467192795

`∑[A282153(n)+2]`
-/

namespace A130752.P14991870528467192795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282153 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130752.P14991870528467192795

namespace A130752

/-- `∑[A282153(n)+2]` -/
def P14991870528467192795.Spec : Prop :=
  ∀ n, P14991870528467192795.a n = A130752 n

end A130752

/-! ## A130752.P6525593155973655060

`A158745(3*n+1)`
-/

namespace A130752.P6525593155973655060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158745 (3 * n + 1)

end

end A130752.P6525593155973655060

namespace A130752

/-- `A158745(3*n+1)` -/
def P6525593155973655060.Spec : Prop :=
  ∀ n, P6525593155973655060.a n = A130752 n

end A130752

/-! ## A130752.P10679239343708883181

`A141775(n)+2^n`
-/

namespace A130752.P10679239343708883181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141775 n + (2 ^ n : ℤ)

end

end A130752.P10679239343708883181

namespace A130752

/-- `A141775(n)+2^n` -/
def P10679239343708883181.Spec : Prop :=
  ∀ n, P10679239343708883181.a n = A130752 n

end A130752

/-! ## A130752.P16271368303943347709

`∑[A010892(n)+2^n]`
-/

namespace A130752.P16271368303943347709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130752.P16271368303943347709

namespace A130752

/-- `∑[A010892(n)+2^n]` -/
def P16271368303943347709.Spec : Prop :=
  ∀ n, P16271368303943347709.a n = A130752 n

end A130752

/-! ## A130752.P7803096844365980699

`2^(n+1)-A010892(n+2)`
-/

namespace A130752.P7803096844365980699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A010892 (n + 2)

end

end A130752.P7803096844365980699

namespace A130752

/-- `2^(n+1)-A010892(n+2)` -/
def P7803096844365980699.Spec : Prop :=
  ∀ n, P7803096844365980699.a n = A130752 n

end A130752

/-! ## A130752.P14510657697350198852

`A163810(n+3)+2^(n+1)`
-/

namespace A130752.P14510657697350198852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (n + 3) + (2 ^ (n + 1) : ℤ)

end

end A130752.P14510657697350198852

namespace A130752

/-- `A163810(n+3)+2^(n+1)` -/
def P14510657697350198852.Spec : Prop :=
  ∀ n, P14510657697350198852.a n = A130752 n

end A130752

/-! ## A130752.P3531841705131124286

`2^(n+1)-A163806(n+3)`
-/

namespace A130752.P3531841705131124286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A163806 (n + 3)

end

end A130752.P3531841705131124286

namespace A130752

/-- `2^(n+1)-A163806(n+3)` -/
def P3531841705131124286.Spec : Prop :=
  ∀ n, P3531841705131124286.a n = A130752 n

end A130752

/-! ## A130752.P7133457777784448211

`A010892(n+5)+2^(n+1)`
-/

namespace A130752.P7133457777784448211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 5) + (2 ^ (n + 1) : ℤ)

end

end A130752.P7133457777784448211

namespace A130752

/-- `A010892(n+5)+2^(n+1)` -/
def P7133457777784448211.Spec : Prop :=
  ∀ n, P7133457777784448211.a n = A130752 n

end A130752

/-! ## A130752.P7384259326508629765

`A130755(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A130752.P7384259326508629765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A130755 (n - 1) + a (n - 1)

end

end A130752.P7384259326508629765

namespace A130752

/-- `A130755(n-1)+a(n-1)` -/
def P7384259326508629765.Spec : Prop :=
  ∀ n, P7384259326508629765.a n = A130752 n

end A130752

/-! ## A130752.P2131236664065968351

`A087204(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A130752.P2131236664065968351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A087204 n + 2 * a (n - 1)

end

end A130752.P2131236664065968351

namespace A130752

/-- `A087204(n)+2*a(n-1)` -/
def P2131236664065968351.Spec : Prop :=
  ∀ n, P2131236664065968351.a n = A130752 n

end A130752

/-! ## A130752.P11344017337174023354

`A130750(n)+A057079(n)`
-/

namespace A130752.P11344017337174023354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130750 n + A057079 n

end

end A130752.P11344017337174023354

namespace A130752

/-- `A130750(n)+A057079(n)` -/
def P11344017337174023354.Spec : Prop :=
  ∀ n, P11344017337174023354.a n = A130752 n

end A130752

/-! ## A130752.P15617909952583415297

`A130781(n)+A130625(n)`
-/

namespace A130752.P15617909952583415297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 n + A130625 n

end

end A130752.P15617909952583415297

namespace A130752

/-- `A130781(n)+A130625(n)` -/
def P15617909952583415297.Spec : Prop :=
  ∀ n, P15617909952583415297.a n = A130752 n

end A130752

/-! ## A130752.P12806034357377365884

`A164965(n)+A126646(n)`
-/

namespace A130752.P12806034357377365884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 n + A126646 n

end

end A130752.P12806034357377365884

namespace A130752

/-- `A164965(n)+A126646(n)` -/
def P12806034357377365884.Spec : Prop :=
  ∀ n, P12806034357377365884.a n = A130752 n

end A130752

/-! ## A130752.P18155655393517213856

`A171231(n)+A166022(n)`
-/

namespace A130752.P18155655393517213856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171231 n + A166022 n

end

end A130752.P18155655393517213856

namespace A130752

/-- `A171231(n)+A166022(n)` -/
def P18155655393517213856.Spec : Prop :=
  ∀ n, P18155655393517213856.a n = A130752 n

end A130752

/-! ## A130752.P14268980483195634951

`A284353(n)+A134977(n)`
-/

namespace A130752.P14268980483195634951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284353 n + A134977 n

end

end A130752.P14268980483195634951

namespace A130752

/-- `A284353(n)+A134977(n)` -/
def P14268980483195634951.Spec : Prop :=
  ∀ n, P14268980483195634951.a n = A130752 n

end A130752

/-!
# A130753: A folded-back triangular sequence based on symmetry of CnH2*n+2 straight chain alkanes and the number of hydrogen atoms of a given symmetry type: Besides methane at 4 there are only three symmetry types: two CH3's->6: a single CH2->2, two CH2's->4.

The programs for A130753, the canonical program `A130753.P6587758951476041366` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130753 has offset 1).

The definition of A130753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130753.P6587758951476041366

`2*(A275437(n)+A240025(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A130753

/-- `2*(A275437(n)+A240025(n))` -/
def P6587758951476041366.Spec : Prop :=
  ∀ n, P6587758951476041366.a n = A130753 (n + 1)

theorem P6587758951476041366.correct : P6587758951476041366.Spec := by
  intro n
  simp only [A130753, Nat.add_sub_cancel]

end A130753

/-! ## A130753.P2884602639875447369

`2*(A240025(n)+Δ[A028391(n)]+1)`
-/

namespace A130753.P2884602639875447369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A240025 n + (f1 (n + 1) - f1 n) + 1)

end

end A130753.P2884602639875447369

namespace A130753

/-- `2*(A240025(n)+Δ[A028391(n)]+1)` -/
def P2884602639875447369.Spec : Prop :=
  ∀ n, P2884602639875447369.a n = A130753 (n + 1)

theorem P2884602639875447369.correct : P2884602639875447369.Spec := by
  intro n
  simp only [A130753, Nat.add_sub_cancel, A130753.P2884602639875447369.f1, A130753.P2884602639875447369.a, A130753.P6587758951476041366.a, A028391, A028391.P17198271841435315725.a, A240025, A240025.P6086676864116806394.a, A275437, A275437.P1610729705273858639.f1, A275437.P1610729705273858639.a, A000007, A000007.P6599383543502402472.a, A055087, A055087.P7292023998189211287.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A130753

/-! ## A130753.P13546400047963890828

`A080037(A240025(n)+Δ[A028391(n)])`
-/

namespace A130753.P13546400047963890828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080037 (A240025 n + (f1 (n + 1) - f1 n)).toNat

end

end A130753.P13546400047963890828

namespace A130753

/-- `A080037(A240025(n)+Δ[A028391(n)])` -/
def P13546400047963890828.Spec : Prop :=
  ∀ n, P13546400047963890828.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P9892050170187658695

`A081225(A240025(n)+Δ[A028391(n)])`
-/

namespace A130753.P9892050170187658695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081225 (A240025 n + (f1 (n + 1) - f1 n)).toNat

end

end A130753.P9892050170187658695

namespace A130753

/-- `A081225(A240025(n)+Δ[A028391(n)])` -/
def P9892050170187658695.Spec : Prop :=
  ∀ n, P9892050170187658695.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P12736905770845596118

`A004092(A240025(n)+Δ[A028391(n)]+1)`
-/

namespace A130753.P12736905770845596118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A240025 n + (f1 (n + 1) - f1 n) + 1).toNat

end

end A130753.P12736905770845596118

namespace A130753

/-- `A004092(A240025(n)+Δ[A028391(n)]+1)` -/
def P12736905770845596118.Spec : Prop :=
  ∀ n, P12736905770845596118.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P13132202194869464627

`A005408(A240025(n)+Δ[A028391(n)])+1`
-/

namespace A130753.P13132202194869464627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A240025 n + (f1 (n + 1) - f1 n)).toNat + 1

end

end A130753.P13132202194869464627

namespace A130753

/-- `A005408(A240025(n)+Δ[A028391(n)])+1` -/
def P13132202194869464627.Spec : Prop :=
  ∀ n, P13132202194869464627.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P17911782361763073286

`A005843(A240025(n)+Δ[A028391(n)]+1)`
-/

namespace A130753.P17911782361763073286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A240025 n + (f1 (n + 1) - f1 n) + 1).toNat

end

end A130753.P17911782361763073286

namespace A130753

/-- `A005843(A240025(n)+Δ[A028391(n)]+1)` -/
def P17911782361763073286.Spec : Prop :=
  ∀ n, P17911782361763073286.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P12123271913879886167

`A133263(A240025(n)+Δ[A028391(n)])+1`
-/

namespace A130753.P12123271913879886167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (A240025 n + (f1 (n + 1) - f1 n)).toNat + 1

end

end A130753.P12123271913879886167

namespace A130753

/-- `A133263(A240025(n)+Δ[A028391(n)])+1` -/
def P12123271913879886167.Spec : Prop :=
  ∀ n, P12123271913879886167.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P10998075293678707823

`A002088(A240025(n)+Δ[A028391(n)]+2)`
-/

namespace A130753.P10998075293678707823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (A240025 n + (f1 (n + 1) - f1 n) + 2).toNat

end

end A130753.P10998075293678707823

namespace A130753

/-- `A002088(A240025(n)+Δ[A028391(n)]+2)` -/
def P10998075293678707823.Spec : Prop :=
  ∀ n, P10998075293678707823.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P3177442650072168196

`A002182(A240025(n)+Δ[A028391(n)]+2)`
-/

namespace A130753.P3177442650072168196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (A240025 n + (f1 (n + 1) - f1 n) + 2).toNat

end

end A130753.P3177442650072168196

namespace A130753

/-- `A002182(A240025(n)+Δ[A028391(n)]+2)` -/
def P3177442650072168196.Spec : Prop :=
  ∀ n, P3177442650072168196.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P1443527513545558066

`A003972(A240025(n)+Δ[A028391(n)]+2)`
-/

namespace A130753.P1443527513545558066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (A240025 n + (f1 (n + 1) - f1 n) + 2).toNat

end

end A130753.P1443527513545558066

namespace A130753

/-- `A003972(A240025(n)+Δ[A028391(n)]+2)` -/
def P1443527513545558066.Spec : Prop :=
  ∀ n, P1443527513545558066.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P9585984310185237514

`A004275(A240025(n)+Δ[A028391(n)]+2)`
-/

namespace A130753.P9585984310185237514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A240025 n + (f1 (n + 1) - f1 n) + 2).toNat

end

end A130753.P9585984310185237514

namespace A130753

/-- `A004275(A240025(n)+Δ[A028391(n)]+2)` -/
def P9585984310185237514.Spec : Prop :=
  ∀ n, P9585984310185237514.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P17693338848698864774

`A005179(A240025(n)+Δ[A028391(n)]+2)`
-/

namespace A130753.P17693338848698864774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A240025 n + (f1 (n + 1) - f1 n) + 2).toNat

end

end A130753.P17693338848698864774

namespace A130753

/-- `A005179(A240025(n)+Δ[A028391(n)]+2)` -/
def P17693338848698864774.Spec : Prop :=
  ∀ n, P17693338848698864774.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P957663965616658899

`A006093(A240025(n)+Δ[A028391(n)]+2)`
-/

namespace A130753.P957663965616658899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A240025 n + (f1 (n + 1) - f1 n) + 2).toNat

end

end A130753.P957663965616658899

namespace A130753

/-- `A006093(A240025(n)+Δ[A028391(n)]+2)` -/
def P957663965616658899.Spec : Prop :=
  ∀ n, P957663965616658899.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P11268259025961603881

`A038558(A240025(n)+Δ[A028391(n)])+2`
-/

namespace A130753.P11268259025961603881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 (A240025 n + (f1 (n + 1) - f1 n)).toNat + 2

end

end A130753.P11268259025961603881

namespace A130753

/-- `A038558(A240025(n)+Δ[A028391(n)])+2` -/
def P11268259025961603881.Spec : Prop :=
  ∀ n, P11268259025961603881.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P8560138435156779548

`A080037(Δ[A000037(n+1)-A240025(n)])`
-/

namespace A130753.P8560138435156779548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1) - A240025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080037 (f1 (n + 1) - f1 n).toNat

end

end A130753.P8560138435156779548

namespace A130753

/-- `A080037(Δ[A000037(n+1)-A240025(n)])` -/
def P8560138435156779548.Spec : Prop :=
  ∀ n, P8560138435156779548.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P5446794678996733493

`A000005(47-(A240025(n)+Δ[A028391(n)]))`
-/

namespace A130753.P5446794678996733493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (47 - (A240025 n + (f1 (n + 1) - f1 n))).toNat

end

end A130753.P5446794678996733493

namespace A130753

/-- `A000005(47-(A240025(n)+Δ[A028391(n)]))` -/
def P5446794678996733493.Spec : Prop :=
  ∀ n, P5446794678996733493.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P11022784207684813612

`A000005(A240025(n)+Δ[A028391(n)]+61)`
-/

namespace A130753.P11022784207684813612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A240025 n + (f1 (n + 1) - f1 n) + 61).toNat

end

end A130753.P11022784207684813612

namespace A130753

/-- `A000005(A240025(n)+Δ[A028391(n)]+61)` -/
def P11022784207684813612.Spec : Prop :=
  ∀ n, P11022784207684813612.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P11338115171991148373

`A000040(A240025(n)+Δ[A028391(n)]+2)-1`
-/

namespace A130753.P11338115171991148373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A240025 n + (f1 (n + 1) - f1 n + 2)).toNat - 1

end

end A130753.P11338115171991148373

namespace A130753

/-- `A000040(A240025(n)+Δ[A028391(n)]+2)-1` -/
def P11338115171991148373.Spec : Prop :=
  ∀ n, P11338115171991148373.a n = A130753 (n + 1)

end A130753

/-! ## A130753.P6663520390308986730

`A018252(A240025(n)+Δ[A028391(n)]+2)-2`
-/

namespace A130753.P6663520390308986730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A240025 n + (f1 (n + 1) - f1 n) + 2).toNat - 2

end

end A130753.P6663520390308986730

namespace A130753

/-- `A018252(A240025(n)+Δ[A028391(n)]+2)-2` -/
def P6663520390308986730.Spec : Prop :=
  ∀ n, P6663520390308986730.a n = A130753 (n + 1)

end A130753

/-!
# A130754: A folded back triangular sequence of the binomial / Pascal's triangle A007318: half of the sequence is taken and doubled except for the odd middle terms which remain the same.

The programs for A130754, there is no canonical definition to state claims against.
-/

/-! ## A130754.P9501354338991170178

`A000034(A293137(n))*A034868(n)`
-/

namespace A130754.P9501354338991170178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A293137 n).toNat * A034868 n

end

end A130754.P9501354338991170178

/-!
# A130755: Binomial transform of periodic sequence (3, 1, 2).

The programs for A130755, the canonical program `A130755.P8640777015960531994` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130755 has offset 0).

The definition of A130755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130755.P14961311790829604737

`ogf((3-5x+4x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A130755.P14961311790829604737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -5, 4] [1, -3, 3, -2] n

end

end A130755.P14961311790829604737

namespace A130755

/-- `ogf((3-5x+4x^2)/(1-3x+3x^2-2x^3))` -/
def P14961311790829604737.Spec : Prop :=
  ∀ n, P14961311790829604737.a n = A130755 n

end A130755

/-! ## A130755.P8640777015960531994

`2^(n+1)+A128834(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A130755

/-- `2^(n+1)+A128834(n+2)` -/
def P8640777015960531994.Spec : Prop :=
  ∀ n, P8640777015960531994.a n = A130755 n

theorem P8640777015960531994.correct : P8640777015960531994.Spec := by
  intro n
  simp only [A130755]

end A130755

/-! ## A130755.P4495489161022556078

`2*a(n-1)+A057079(n+3)` with `a(0)=3`
-/

namespace A130755.P4495489161022556078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (n - 1) + A057079 (n + 3)

end

end A130755.P4495489161022556078

namespace A130755

/-- `2*a(n-1)+A057079(n+3)` -/
def P4495489161022556078.Spec : Prop :=
  ∀ n, P4495489161022556078.a n = A130755 n

end A130755

/-! ## A130755.P4453661613263740829

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=4, a(2)=7`
-/

namespace A130755.P4453661613263740829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 7] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3)

end

end A130755.P4453661613263740829

namespace A130755

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P4453661613263740829.Spec : Prop :=
  ∀ n, P4453661613263740829.a n = A130755 n

end A130755

/-! ## A130755.P32892996302819017

`∑[A281166(n)]+2`
-/

namespace A130755.P32892996302819017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A130755.P32892996302819017

namespace A130755

/-- `∑[A281166(n)]+2` -/
def P32892996302819017.Spec : Prop :=
  ∀ n, P32892996302819017.a n = A130755 n

end A130755

/-! ## A130755.P7972955616901744302

`A282153(n+1)+2`
-/

namespace A130755.P7972955616901744302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282153 (n + 1) + 2

end

end A130755.P7972955616901744302

namespace A130755

/-- `A282153(n+1)+2` -/
def P7972955616901744302.Spec : Prop :=
  ∀ n, P7972955616901744302.a n = A130755 n

end A130755

/-! ## A130755.P10616264556369483049

`A158745(3*n+2)`
-/

namespace A130755.P10616264556369483049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158745 (3 * n + 2)

end

end A130755.P10616264556369483049

namespace A130755

/-- `A158745(3*n+2)` -/
def P10616264556369483049.Spec : Prop :=
  ∀ n, P10616264556369483049.a n = A130755 n

end A130755

/-! ## A130755.P8716661470337565751

`∑[A130750(abs(1-n))]`
-/

namespace A130755.P8716661470337565751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130750 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130755.P8716661470337565751

namespace A130755

/-- `∑[A130750(abs(1-n))]` -/
def P8716661470337565751.Spec : Prop :=
  ∀ n, P8716661470337565751.a n = A130755 n

end A130755

/-! ## A130755.P15123861228357048183

`A010892(n+1)+2^(n+1)`
-/

namespace A130755.P15123861228357048183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A130755.P15123861228357048183

namespace A130755

/-- `A010892(n+1)+2^(n+1)` -/
def P15123861228357048183.Spec : Prop :=
  ∀ n, P15123861228357048183.a n = A130755 n

end A130755

/-! ## A130755.P2347322015788046372

`A163806(n+2)+2^(n+1)`
-/

namespace A130755.P2347322015788046372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 (n + 2) + (2 ^ (n + 1) : ℤ)

end

end A130755.P2347322015788046372

namespace A130755

/-- `A163806(n+2)+2^(n+1)` -/
def P2347322015788046372.Spec : Prop :=
  ∀ n, P2347322015788046372.a n = A130755 n

end A130755

/-! ## A130755.P10573181621057745284

`2^(n+1)-A163810(n+2)`
-/

namespace A130755.P10573181621057745284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A163810 (n + 2)

end

end A130755.P10573181621057745284

namespace A130755

/-- `2^(n+1)-A163810(n+2)` -/
def P10573181621057745284.Spec : Prop :=
  ∀ n, P10573181621057745284.a n = A130755 n

end A130755

/-! ## A130755.P13702350885597061761

`A130750(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A130755.P13702350885597061761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A130750 (n - 1) + a (n - 1)

end

end A130755.P13702350885597061761

namespace A130755

/-- `A130750(n-1)+a(n-1)` -/
def P13702350885597061761.Spec : Prop :=
  ∀ n, P13702350885597061761.a n = A130755 n

end A130755

/-! ## A130755.P13797250538516383749

`A166249(n)+A048573(n)`
-/

namespace A130755.P13797250538516383749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166249 n + A048573 n

end

end A130755.P13797250538516383749

namespace A130755

/-- `A166249(n)+A048573(n)` -/
def P13797250538516383749.Spec : Prop :=
  ∀ n, P13797250538516383749.a n = A130755 n

end A130755

/-! ## A130755.P16301533930404812602

`A130750(n)+A087204(n)`
-/

namespace A130755.P16301533930404812602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130750 n + A087204 n

end

end A130755.P16301533930404812602

namespace A130755

/-- `A130750(n)+A087204(n)` -/
def P16301533930404812602.Spec : Prop :=
  ∀ n, P16301533930404812602.a n = A130755 n

end A130755

/-! ## A130755.P114620823027968094

`A130750(n)+A057079(n+1)`
-/

namespace A130755.P114620823027968094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130750 n + A057079 (n + 1)

end

end A130755.P114620823027968094

namespace A130755

/-- `A130750(n)+A057079(n+1)` -/
def P114620823027968094.Spec : Prop :=
  ∀ n, P114620823027968094.a n = A130755 n

end A130755

/-! ## A130755.P11642065874219941953

`A130752(n)+A087204(n+1)`
-/

namespace A130755.P11642065874219941953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130752 n + A087204 (n + 1)

end

end A130755.P11642065874219941953

namespace A130755

/-- `A130752(n)+A087204(n+1)` -/
def P11642065874219941953.Spec : Prop :=
  ∀ n, P11642065874219941953.a n = A130755 n

end A130755

/-! ## A130755.P9268744821799334504

`A130785(n)+A130772(n+1)`
-/

namespace A130755.P9268744821799334504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130785 n + A130772 (n + 1)

end

end A130755.P9268744821799334504

namespace A130755

/-- `A130785(n)+A130772(n+1)` -/
def P9268744821799334504.Spec : Prop :=
  ∀ n, P9268744821799334504.a n = A130755 n

end A130755

/-! ## A130755.P9215812453462065529

`A130781(n)+A024494(n+2)`
-/

namespace A130755.P9215812453462065529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 n + A024494 (n + 2)

end

end A130755.P9215812453462065529

namespace A130755

/-- `A130781(n)+A024494(n+2)` -/
def P9215812453462065529.Spec : Prop :=
  ∀ n, P9215812453462065529.a n = A130755 n

end A130755

/-! ## A130755.P16894809229883435855

`A130752(n)+A057079(n+2)`
-/

namespace A130755.P16894809229883435855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130752 n + A057079 (n + 2)

end

end A130755.P16894809229883435855

namespace A130755

/-- `A130752(n)+A057079(n+2)` -/
def P16894809229883435855.Spec : Prop :=
  ∀ n, P16894809229883435855.a n = A130755 n

end A130755

/-! ## A130755.P14901462197834292627

`A131708(n+2)+A130781(n)`
-/

namespace A130755.P14901462197834292627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 (n + 2) + A130781 n

end

end A130755.P14901462197834292627

namespace A130755

/-- `A131708(n+2)+A130781(n)` -/
def P14901462197834292627.Spec : Prop :=
  ∀ n, P14901462197834292627.a n = A130755 n

end A130755

/-!
# A130756: Number of minimally strongly connected digraphs on n vertices, up to isomorphism.

The programs for A130756, there is no canonical definition to state claims against.
-/

/-! ## A130756.P18374897312173860252

`A373847(A148281(n))`
-/

namespace A130756.P18374897312173860252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373847 (A148281 n).toNat

end

end A130756.P18374897312173860252

/-! ## A130756.P13632816220722635373

`A373847(A148282(n))`
-/

namespace A130756.P13632816220722635373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373847 (A148282 n).toNat

end

end A130756.P13632816220722635373

/-! ## A130756.P8633195539651421282

`A373847(A148283(n))`
-/

namespace A130756.P8633195539651421282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373847 (A148283 n).toNat

end

end A130756.P8633195539651421282

/-!
# A130757: Triangular table of coefficients of Laguerre-Sonin polynomials n!*2^n*Lag(n,x/2,1/2) of order 1/2.

The programs for A130757, the canonical program `A130757.P16733792025287580104` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130757 has offset 0).

The definition of A130757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1771 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130757.P16733792025287580104

`(2*(row(n)+col(n))+1)*T(n-1,k)-T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130757

/-- `(2*(row(n)+col(n))+1)*T(n-1,k)-T(n-1,k-1)` -/
def P16733792025287580104.Spec : Prop :=
  ∀ n, P16733792025287580104.a n = A130757 n

theorem P16733792025287580104.correct : P16733792025287580104.Spec := by
  intro n
  simp only [A130757]

end A130757

/-! ## A130757.P6212061478013666143

`A098503(∑[2*n]%comp[∑[n]])/2^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A130757.P6212061478013666143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098503 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) : ℚ) / (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ)

end

end A130757.P6212061478013666143

namespace A130757

/-- `A098503(∑[2*n]%comp[∑[n]])/2^(n-C(∑[char[∑[n]]], 2))` -/
def P6212061478013666143.Spec : Prop :=
  ∀ n, P6212061478013666143.a n = (A130757 n : ℚ)

end A130757

/-! ## A130757.P15330161215324836186

`A098503(A061579(n))/A059268(n)`
-/

namespace A130757.P15330161215324836186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098503 (A061579 n).toNat : ℚ) / (A059268 n : ℚ)

end

end A130757.P15330161215324836186

namespace A130757

/-- `A098503(A061579(n))/A059268(n)` -/
def P15330161215324836186.Spec : Prop :=
  ∀ n, P15330161215324836186.a n = (A130757 n : ℚ)

end A130757

/-! ## A130757.P7535498052220894881

`A098503(A061579(n))/A000079(A002262(n))`
-/

namespace A130757.P7535498052220894881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098503 (A061579 n).toNat : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A130757.P7535498052220894881

namespace A130757

/-- `A098503(A061579(n))/A000079(A002262(n))` -/
def P7535498052220894881.Spec : Prop :=
  ∀ n, P7535498052220894881.a n = (A130757 n : ℚ)

end A130757

/-! ## A130757.P2881222856884795796

`A334824(A245300(n)+A002262(n))`
-/

namespace A130757.P2881222856884795796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334824 (A245300 n + A002262 n).toNat

end

end A130757.P2881222856884795796

namespace A130757

/-- `A334824(A245300(n)+A002262(n))` -/
def P2881222856884795796.Spec : Prop :=
  ∀ n, P2881222856884795796.a n = A130757 n

end A130757

/-! ## A130757.P16348854844087660167

`A021009(n)/A286724(n)*A292219(n)`
-/

namespace A130757.P16348854844087660167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021009 n : ℚ) / (A286724 n : ℚ) * (A292219 n : ℚ)

end

end A130757.P16348854844087660167

namespace A130757

/-- `A021009(n)/A286724(n)*A292219(n)` -/
def P16348854844087660167.Spec : Prop :=
  ∀ n, P16348854844087660167.a n = (A130757 n : ℚ)

end A130757

/-!
# A130758: a(n) = n if n is not an odd prime number. Otherwise, a(n) = k, where k is the smallest integer such that n < 10^k.

The programs for A130758, there is no canonical definition to state claims against.
-/

/-! ## A130758.P3525403106271366867

`gcd(2*n, A130892(n+1))`
-/

namespace A130758.P3525403106271366867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A130892 (n + 1))

end

end A130758.P3525403106271366867

/-! ## A130758.P18080780274547481557

`round(n/A008619(A055672(n)))`
-/

namespace A130758.P18080780274547481557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A008619 (A055672 n).toNat : ℚ))

end

end A130758.P18080780274547481557

/-! ## A130758.P10260398958071237884

`gcd(A130892(n+1), A278417(n))`
-/

namespace A130758.P10260398958071237884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130892 (n + 1)) (A278417 n)

end

end A130758.P10260398958071237884

/-! ## A130758.P5273932993452827143

`gcd(A130892(n+1)², A109043(n))`
-/

namespace A130758.P5273932993452827143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130892 (n + 1) ^ 2) (A109043 n)

end

end A130758.P5273932993452827143

/-! ## A130758.P1212716822841696508

`char[A006005(n+5)]+n^(1-char[A000040(n+2)])`
-/

namespace A130758.P1212716822841696508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (n : ℚ) ^ (1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A130758.P1212716822841696508

/-! ## A130758.P6923710707694109229

`A055642(A055672(n))*A131516(n)`
-/

namespace A130758.P6923710707694109229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A055672 n).toNat * A131516 n

end

end A130758.P6923710707694109229

/-! ## A130758.P18241367376129875599

`char[A306926(n+1)]+n%xor(-n, ∏{d}[n, #])`
-/

namespace A130758.P18241367376129875599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306926 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + Int.tmod (n : ℤ) (Int.xor (-(n : ℤ)) ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

end

end A130758.P18241367376129875599

/-! ## A130758.P10054260484865550146

`A131516(n)+char[A306926(n+1)]`
-/

namespace A130758.P10054260484865550146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306926 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A130758.P10054260484865550146

/-! ## A130758.P10977642762754890218

`char[A306926(n+1)]+n^(1-char[A000040(n+2)])`
-/

namespace A130758.P10977642762754890218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (n : ℚ) ^ (1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A130758.P10977642762754890218

/-! ## A130758.P9896369343325251544

`char[A306926(n+1)]+n^(1-char[A014963(2*n+1)])`
-/

namespace A130758.P9896369343325251544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (n : ℚ) ^ (1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A130758.P9896369343325251544

/-!
# A130759: Partial sums of A130707.

The programs for A130759, the canonical program `A130759.P3835187196836942526` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130759 has offset 0).

The definition of A130759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130759.P18146484813811552024

`∑[ogf((-1+x+x^2)/(-1+3x-3x^2+2x^3))]`
-/

namespace A130759.P18146484813811552024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -3, 3, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130759.P18146484813811552024

namespace A130759

/-- `∑[ogf((-1+x+x^2)/(-1+3x-3x^2+2x^3))]` -/
def P18146484813811552024.Spec : Prop :=
  ∀ n, P18146484813811552024.a n = A130759 n

end A130759

/-! ## A130759.P8852745394158783584

`ogf((1-x-x^2)/(1-4x+6x^2-5x^3+2x^4))`
-/

namespace A130759.P8852745394158783584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -4, 6, -5, 2] n

end

end A130759.P8852745394158783584

namespace A130759

/-- `ogf((1-x-x^2)/(1-4x+6x^2-5x^3+2x^4))` -/
def P8852745394158783584.Spec : Prop :=
  ∀ n, P8852745394158783584.a n = A130759 n

end A130759

/-! ## A130759.P3835187196836942526

`∑[A130707(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A130759

/-- `∑[A130707(n)]` -/
def P3835187196836942526.Spec : Prop :=
  ∀ n, P3835187196836942526.a n = A130759 n

theorem P3835187196836942526.correct : P3835187196836942526.Spec := by
  intro n
  simp only [A130759]

end A130759

/-! ## A130759.P3949050227945938007

`∑[abs(A131562(n))]`
-/

namespace A130759.P3949050227945938007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131562 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130759.P3949050227945938007

namespace A130759

/-- `∑[abs(A131562(n))]` -/
def P3949050227945938007.Spec : Prop :=
  ∀ n, P3949050227945938007.a n = A130759 n

end A130759

/-! ## A130759.P12626413584930677995

`2*A131708(n)+1`
-/

namespace A130759.P12626413584930677995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131708 n + 1

end

end A130759.P12626413584930677995

namespace A130759

/-- `2*A131708(n)+1` -/
def P12626413584930677995.Spec : Prop :=
  ∀ n, P12626413584930677995.a n = A130759 n

end A130759

/-! ## A130759.P12223157871673278905

`2*Δ[A024495(n)]+1`
-/

namespace A130759.P12223157871673278905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) + 1

end

end A130759.P12223157871673278905

namespace A130759

/-- `2*Δ[A024495(n)]+1` -/
def P12223157871673278905.Spec : Prop :=
  ∀ n, P12223157871673278905.a n = A130759 n

end A130759

/-! ## A130759.P2220226671686967358

`2*A133806(2*n)+1`
-/

namespace A130759.P2220226671686967358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133806 (2 * n) + 1

end

end A130759.P2220226671686967358

namespace A130759

/-- `2*A133806(2*n)+1` -/
def P2220226671686967358.Spec : Prop :=
  ∀ n, P2220226671686967358.a n = A130759 n

end A130759

/-! ## A130759.P12095034189997118115

`2^n-(A086953(n)-1)`
-/

namespace A130759.P12095034189997118115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A086953 n - 1)

end

end A130759.P12095034189997118115

namespace A130759

/-- `2^n-(A086953(n)-1)` -/
def P12095034189997118115.Spec : Prop :=
  ∀ n, P12095034189997118115.a n = A130759 n

end A130759

/-! ## A130759.P6209769971059705466

`2*∑[A024493(abs(1-n))]-1`
-/

namespace A130759.P6209769971059705466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A130759.P6209769971059705466

namespace A130759

/-- `2*∑[A024493(abs(1-n))]-1` -/
def P6209769971059705466.Spec : Prop :=
  ∀ n, P6209769971059705466.a n = A130759 n

end A130759

/-! ## A130759.P15878417259438181073

`A000051(n)-A086953(n)`
-/

namespace A130759.P15878417259438181073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A086953 n

end

end A130759.P15878417259438181073

namespace A130759

/-- `A000051(n)-A086953(n)` -/
def P15878417259438181073.Spec : Prop :=
  ∀ n, P15878417259438181073.a n = A130759 n

end A130759

/-! ## A130759.P4372657125858019053

`A141775(n)-A111927(n)`
-/

namespace A130759.P4372657125858019053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141775 n - A111927 n

end

end A130759.P4372657125858019053

namespace A130759

/-- `A141775(n)-A111927(n)` -/
def P4372657125858019053.Spec : Prop :=
  ∀ n, P4372657125858019053.a n = A130759 n

end A130759

/-! ## A130759.P12088521804626889076

`A000079(n)+1-A086953(n)`
-/

namespace A130759.P12088521804626889076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (1 - A086953 n)

end

end A130759.P12088521804626889076

namespace A130759

/-- `A000079(n)+1-A086953(n)` -/
def P12088521804626889076.Spec : Prop :=
  ∀ n, P12088521804626889076.a n = A130759 n

end A130759

/-! ## A130759.P1340508693013277371

`A130781(n)-A100219(n+1)`
-/

namespace A130759.P1340508693013277371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 n - A100219 (n + 1)

end

end A130759.P1340508693013277371

namespace A130759

/-- `A130781(n)-A100219(n+1)` -/
def P1340508693013277371.Spec : Prop :=
  ∀ n, P1340508693013277371.a n = A130759 n

end A130759

/-! ## A130759.P111839439818591389

`∑[A024494(n+1)-A024495(n)]`
-/

namespace A130759.P111839439818591389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024494 (n + 1) - A024495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130759.P111839439818591389

namespace A130759

/-- `∑[A024494(n+1)-A024495(n)]` -/
def P111839439818591389.Spec : Prop :=
  ∀ n, P111839439818591389.a n = A130759 n

end A130759

/-! ## A130759.P15713622369222237130

`∑[A131708(n+1)-A024495(n)]`
-/

namespace A130759.P15713622369222237130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 (n + 1) - A024495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130759.P15713622369222237130

namespace A130759

/-- `∑[A131708(n+1)-A024495(n)]` -/
def P15713622369222237130.Spec : Prop :=
  ∀ n, P15713622369222237130.a n = A130759 n

end A130759

/-! ## A130759.P2349782807463322443

`∑[2*A132780(n)]-A132780(n)`
-/

namespace A130759.P2349782807463322443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A132780 n

end

end A130759.P2349782807463322443

namespace A130759

/-- `∑[2*A132780(n)]-A132780(n)` -/
def P2349782807463322443.Spec : Prop :=
  ∀ n, P2349782807463322443.a n = A130759 n

end A130759

/-! ## A130759.P14721788506723455589

`2*A133684(A047267(n+1))+1`
-/

namespace A130759.P14721788506723455589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133684 (A047267 (n + 1)).toNat + 1

end

end A130759.P14721788506723455589

namespace A130759

/-- `2*A133684(A047267(n+1))+1` -/
def P14721788506723455589.Spec : Prop :=
  ∀ n, P14721788506723455589.a n = A130759 n

end A130759

/-! ## A130759.P5706271059570483219

`A024493(n+1)+1-A087204(n+1)`
-/

namespace A130759.P5706271059570483219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (n + 1) + (1 - A087204 (n + 1))

end

end A130759.P5706271059570483219

namespace A130759

/-- `A024493(n+1)+1-A087204(n+1)` -/
def P5706271059570483219.Spec : Prop :=
  ∀ n, P5706271059570483219.a n = A130759 n

end A130759

/-! ## A130759.P5086935650956482469

`A131708(n+1)+1-A010892(n+1)`
-/

namespace A130759.P5086935650956482469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 (n + 1) + (1 - A010892 (n + 1))

end

end A130759.P5086935650956482469

namespace A130759

/-- `A131708(n+1)+1-A010892(n+1)` -/
def P5086935650956482469.Spec : Prop :=
  ∀ n, P5086935650956482469.a n = A130759 n

end A130759

/-! ## A130759.P11334490901657959371

`A086953(n+1)+1-A109265(n+1)`
-/

namespace A130759.P11334490901657959371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 (n + 1) + (1 - A109265 (n + 1))

end

end A130759.P11334490901657959371

namespace A130759

/-- `A086953(n+1)+1-A109265(n+1)` -/
def P11334490901657959371.Spec : Prop :=
  ∀ n, P11334490901657959371.a n = A130759 n

end A130759

/-!
# A130760: Noncrossing set partition version of A102356.

The programs for A130760, there is no canonical definition to state claims against.
-/

/-! ## A130760.P3799472459159667084

`A247651(n)/(n+1)`
-/

namespace A130760.P3799472459159667084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247651 n : ℚ) / (n + 1 : ℚ)

end

end A130760.P3799472459159667084

/-! ## A130760.P10872084063131686514

`ceil(A247651(n)/A031285(n))`
-/

namespace A130760.P10872084063131686514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A247651 n : ℚ) / (A031285 n : ℚ)⌉

end

end A130760.P10872084063131686514

/-! ## A130760.P5576805611426414028

`floor(A247651(n)/A176743(2*n))`
-/

namespace A130760.P5576805611426414028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247651 n : ℚ) / (A176743 (2 * n) : ℚ)⌋

end

end A130760.P5576805611426414028

/-! ## A130760.P17145160544159875104

`ceil(A247651(n)/A008619(2*n))`
-/

namespace A130760.P17145160544159875104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A247651 n : ℚ) / (A008619 (2 * n) : ℚ)⌉

end

end A130760.P17145160544159875104

/-! ## A130760.P2194916820706267090

`ceil(A247651(n)/A008611(3*n))`
-/

namespace A130760.P2194916820706267090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A247651 n : ℚ) / (A008611 (3 * n) : ℚ)⌉

end

end A130760.P2194916820706267090

/-!
# A130761: Primes prime(n) such that at least one of the two numbers (prime(n+2)^2-prime(n)^2)/2 - 1 and (prime(n+2)^2-prime(n)^2)/2 + 1 is prime.

The programs for A130761, there is no canonical definition to state claims against.
-/

/-! ## A130761.P5423301102956291520

`A000040(∑[gcd(2, A242864(n+13))])`
-/

namespace A130761.P5423301102956291520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A242864 (n + 13))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130761.P5423301102956291520

/-! ## A130761.P958464746514584247

`∩[A059334(n+1), A320230(n+1)]`
-/

namespace A130761.P958464746514584247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130761.P958464746514584247

/-! ## A130761.P12140730961478957102

`record[A101300(A143694(n+1)-A308243(n+1))]`
-/

namespace A130761.P12140730961478957102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (A143694 (n + 1) - A308243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130761.P12140730961478957102

/-! ## A130761.P973343149793639038

`∩[A028809(n+1), A059334(n+1)]`
-/

namespace A130761.P973343149793639038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130761.P973343149793639038

/-! ## A130761.P5743325913699316339

`∩[A059334(n+1), A316495(n+1)]`
-/

namespace A130761.P5743325913699316339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130761.P5743325913699316339

/-!
# A130762: A fold back triangular sequence for A003991: symmetrical folding and addition of.

The programs for A130762, there is no canonical definition to state claims against.
-/

/-! ## A130762.P15735356331185277237

`A007543(n+1)/2`
-/

namespace A130762.P15735356331185277237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007543 (n + 1) : ℚ) / 2

end

end A130762.P15735356331185277237

/-! ## A130762.P2738514468106763700

`floor(A007543(Δ[n²]-n)/2)`
-/

namespace A130762.P2738514468106763700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007543 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A130762.P2738514468106763700

/-! ## A130762.P12617319308517211099

`ceil(A007543(n-log2(1/2))/2)`
-/

namespace A130762.P12617319308517211099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007543 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / 2⌉

end

end A130762.P12617319308517211099

/-! ## A130762.P15559886698070349333

`round(A007543(2*n-(n-1))/2)`
-/

namespace A130762.P15559886698070349333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007543 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2)

end

end A130762.P15559886698070349333

/-! ## A130762.P15731448874532635628

`A001281(A007543(n+1))`
-/

namespace A130762.P15731448874532635628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A007543 (n + 1)).toNat

end

end A130762.P15731448874532635628

/-! ## A130762.P7566599031268224635

`A004524(A007543(n+1)+1)`
-/

namespace A130762.P7566599031268224635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A007543 (n + 1) + 1).toNat

end

end A130762.P7566599031268224635

/-! ## A130762.P826065934477411136

`A004526(A007543(n+1)+1)`
-/

namespace A130762.P826065934477411136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007543 (n + 1) + 1).toNat

end

end A130762.P826065934477411136

/-! ## A130762.P1895149551660712108

`A028242(A007543(n+1)+1)`
-/

namespace A130762.P1895149551660712108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A007543 (n + 1) + 1).toNat

end

end A130762.P1895149551660712108

/-! ## A130762.P2823943645403211261

`A057979(A007543(n+1)+1)`
-/

namespace A130762.P2823943645403211261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A007543 (n + 1) + 1).toNat

end

end A130762.P2823943645403211261

/-! ## A130762.P2942886903539069046

`A275437(n)*A350634(n+1)`
-/

namespace A130762.P2942886903539069046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n * A350634 (n + 1)

end

end A130762.P2942886903539069046

/-!
# A130763: Natural numbers such that d(n)!+ 1 is a square, where d(n) is the number of divisors of n, A000005.

The programs for A130763, the canonical program `A130763.P5899014126795405265` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130763 has offset 1).

The definition of A130763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130763.P4912895420224611212

`eq[1, 5%A045778(n+1)]+1`
-/

namespace A130763.P4912895420224611212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A045778 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A130763.P4912895420224611212

namespace A130763

/-- `eq[1, 5%A045778(n+1)]+1` -/
def P4912895420224611212.Spec : Prop :=
  ∀ n, (P4912895420224611212.a n : ℤ) = A130763 (n + 1)

end A130763

/-! ## A130763.P5899014126795405265

`eq[0, A078027(A032741(n))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A130763

/-- `eq[0, A078027(A032741(n))]` -/
def P5899014126795405265.Spec : Prop :=
  ∀ n, (P5899014126795405265.a n : ℤ) = A130763 (n + 1)

theorem P5899014126795405265.correct : P5899014126795405265.Spec := by
  intro n
  simp only [A130763, Nat.add_sub_cancel]

end A130763

/-! ## A130763.P641555201908083420

`eq[2, A000010(A325765(n))]+1`
-/

namespace A130763.P641555201908083420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A325765 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A130763.P641555201908083420

namespace A130763

/-- `eq[2, A000010(A325765(n))]+1` -/
def P641555201908083420.Spec : Prop :=
  ∀ n, (P641555201908083420.a n : ℤ) = A130763 (n + 1)

end A130763

/-! ## A130763.P6884021480888146555

`eq[2, A000010(A325765(abs(1-n)))]`
-/

namespace A130763.P6884021480888146555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A325765 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130763.P6884021480888146555

namespace A130763

/-- `eq[2, A000010(A325765(abs(1-n)))]` -/
def P6884021480888146555.Spec : Prop :=
  ∀ n, (P6884021480888146555.a n : ℤ) = A130763 (n + 1)

end A130763

/-! ## A130763.P8200038469574935101

`eq[1, A332801(A000005(n+1))]+1`
-/

namespace A130763.P8200038469574935101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332801 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A130763.P8200038469574935101

namespace A130763

/-- `eq[1, A332801(A000005(n+1))]+1` -/
def P8200038469574935101.Spec : Prop :=
  ∀ n, (P8200038469574935101.a n : ℤ) = A130763 (n + 1)

end A130763

/-! ## A130763.P10466680434275278803

`eq[2, A033677(A045778(n+1))]+1`
-/

namespace A130763.P10466680434275278803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A045778 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A130763.P10466680434275278803

namespace A130763

/-- `eq[2, A033677(A045778(n+1))]+1` -/
def P10466680434275278803.Spec : Prop :=
  ∀ n, (P10466680434275278803.a n : ℤ) = A130763 (n + 1)

end A130763

/-! ## A130763.P14511269470029601812

`eq[2, A000010(A000005(n+2)-1)]+2`
-/

namespace A130763.P14511269470029601812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (n + 2) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A130763.P14511269470029601812

namespace A130763

/-- `eq[2, A000010(A000005(n+2)-1)]+2` -/
def P14511269470029601812.Spec : Prop :=
  ∀ n, (P14511269470029601812.a n : ℤ) = A130763 (n + 1)

end A130763

/-! ## A130763.P4785917094074775188

`lt[A011971(A000005((n-1)%(n+1)+1)-1), A000005((n-1)%(n+1)+1)-1]`
-/

namespace A130763.P4785917094074775188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A000005 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130763.P4785917094074775188

namespace A130763

/-- `lt[A011971(A000005((n-1)%(n+1)+1)-1), A000005((n-1)%(n+1)+1)-1]` -/
def P4785917094074775188.Spec : Prop :=
  ∀ n, (P4785917094074775188.a n : ℤ) = A130763 (n + 1)

end A130763

/-! ## A130763.P6080997170648410408

`filter[A255429(n+1), A294935(#)]`
-/

namespace A130763.P6080997170648410408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A130763.P6080997170648410408

namespace A130763

/-- `filter[A255429(n+1), A294935(#)]` -/
def P6080997170648410408.Spec : Prop :=
  ∀ n, P6080997170648410408.a n = A130763 (n + 1)

end A130763

/-! ## A130763.P17948800645551771564

`filter[A255429(n+1), A307421(#)]`
-/

namespace A130763.P17948800645551771564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A130763.P17948800645551771564

namespace A130763

/-- `filter[A255429(n+1), A307421(#)]` -/
def P17948800645551771564.Spec : Prop :=
  ∀ n, P17948800645551771564.a n = A130763 (n + 1)

end A130763

/-!
# A130766: 3n+2 sandwiched by tripled 3n+1 .

The programs for A130766, the canonical program `A130766.P3882996922540795249` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130766 has offset 0).

The definition of A130766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130766.P9968409390852715582

`ogf((1+x^3+x^4)/(1-x-x^4+x^5))`
-/

namespace A130766.P9968409390852715582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 1, 1] [1, -1, 0, 0, -1, 1] n

end

end A130766.P9968409390852715582

namespace A130766

/-- `ogf((1+x^3+x^4)/(1-x-x^4+x^5))` -/
def P9968409390852715582.Spec : Prop :=
  ∀ n, P9968409390852715582.a n = A130766 n

end A130766

/-! ## A130766.P3882996922540795249

`2*floor(n/4)+floor((n+1)/4)+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130766

/-- `2*floor(n/4)+floor((n+1)/4)+1` -/
def P3882996922540795249.Spec : Prop :=
  ∀ n, P3882996922540795249.a n = A130766 n

theorem P3882996922540795249.correct : P3882996922540795249.Spec := by
  intro n
  simp only [A130766]

end A130766

/-! ## A130766.P9089634550934428550

`3+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A130766.P9089634550934428550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  3 + a (n - 4)

end

end A130766.P9089634550934428550

namespace A130766

/-- `3+a(n-4)` -/
def P9089634550934428550.Spec : Prop :=
  ∀ n, (P9089634550934428550.a n : ℤ) = A130766 n

end A130766

/-! ## A130766.P14720240920679234719

`floor((2*or(2, n)+n)/4)`
-/

namespace A130766.P14720240920679234719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * Nat.lor 2 n + n : ℚ) / 4⌋

end

end A130766.P14720240920679234719

namespace A130766

/-- `floor((2*or(2, n)+n)/4)` -/
def P14720240920679234719.Spec : Prop :=
  ∀ n, P14720240920679234719.a n = A130766 n

end A130766

/-! ## A130766.P9767169710880316378

`floor(n-xor(2, n-2)/4)`
-/

namespace A130766.P9767169710880316378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) - (Int.xor 2 ((n : ℤ) - 2) : ℚ) / 4⌋

end

end A130766.P9767169710880316378

namespace A130766

/-- `floor(n-xor(2, n-2)/4)` -/
def P9767169710880316378.Spec : Prop :=
  ∀ n, P9767169710880316378.a n = A130766 n

end A130766

/-! ## A130766.P13708491307007613205

`round((xor(2, n)+2*n)/4)`
-/

namespace A130766.P13708491307007613205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 n + 2 * n : ℚ) / 4)

end

end A130766.P13708491307007613205

namespace A130766

/-- `round((xor(2, n)+2*n)/4)` -/
def P13708491307007613205.Spec : Prop :=
  ∀ n, P13708491307007613205.a n = A130766 n

end A130766

/-! ## A130766.P3941666654745453383

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A130766.P3941666654745453383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130766.P3941666654745453383

namespace A130766

/-- `∑[abs(a(n-4))]` -/
def P3941666654745453383.Spec : Prop :=
  ∀ n, (P3941666654745453383.a n : ℤ) = A130766 n

end A130766

/-! ## A130766.P131648526099564198

`∑[dr(a(n-4))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A130766.P131648526099564198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130766.P131648526099564198

namespace A130766

/-- `∑[dr(a(n-4))]` -/
def P131648526099564198.Spec : Prop :=
  ∀ n, (P131648526099564198.a n : ℤ) = A130766 n

end A130766

/-! ## A130766.P11975085859122344983

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A130766.P11975085859122344983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130766.P11975085859122344983

namespace A130766

/-- `∑[floor(a(n-4))]` -/
def P11975085859122344983.Spec : Prop :=
  ∀ n, (P11975085859122344983.a n : ℤ) = A130766 n

end A130766

/-! ## A130766.P130764578085247365

`∑[ceil(a(n-4))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A130766.P130764578085247365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130766.P130764578085247365

namespace A130766

/-- `∑[ceil(a(n-4))]` -/
def P130764578085247365.Spec : Prop :=
  ∀ n, (P130764578085247365.a n : ℤ) = A130766 n

end A130766

/-! ## A130766.P697149906185224203

`∑[round(a(n-4))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A130766.P697149906185224203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130766.P697149906185224203

namespace A130766

/-- `∑[round(a(n-4))]` -/
def P697149906185224203.Spec : Prop :=
  ∀ n, (P697149906185224203.a n : ℤ) = A130766 n

end A130766

/-! ## A130766.P16694455796441380863

`∑[a(n-4)%3]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A130766.P16694455796441380863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 2] fun n f1 =>
  f1 (n - 4) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130766.P16694455796441380863

namespace A130766

/-- `∑[a(n-4)%3]` -/
def P16694455796441380863.Spec : Prop :=
  ∀ n, (P16694455796441380863.a n : ℤ) = A130766 n

end A130766

/-! ## A130766.P17884511386144657649

`∑[gcd(2, n)-a(n-2)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A130766.P17884511386144657649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  (Nat.gcd 2 n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130766.P17884511386144657649

namespace A130766

/-- `∑[gcd(2, n)-a(n-2)]` -/
def P17884511386144657649.Spec : Prop :=
  ∀ n, P17884511386144657649.a n = A130766 n

end A130766

/-! ## A130766.P16081062028371490374

`n+1-ceil(xor(2, n+2)/4)`
-/

namespace A130766.P16081062028371490374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌈(Nat.xor 2 (n + 2) : ℚ) / 4⌉

end

end A130766.P16081062028371490374

namespace A130766

/-- `n+1-ceil(xor(2, n+2)/4)` -/
def P16081062028371490374.Spec : Prop :=
  ∀ n, P16081062028371490374.a n = A130766 n

end A130766

/-! ## A130766.P3759796311774539585

`floor((xor(3, n)+2*(n+1))/4)`
-/

namespace A130766.P3759796311774539585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 3 n + 2 * (n + 1) : ℚ) / 4⌋

end

end A130766.P3759796311774539585

namespace A130766

/-- `floor((xor(3, n)+2*(n+1))/4)` -/
def P3759796311774539585.Spec : Prop :=
  ∀ n, P3759796311774539585.a n = A130766 n

end A130766

/-! ## A130766.P8930716268146132882

`round((2*or(2, n)+n-2)/4)`
-/

namespace A130766.P8930716268146132882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * Nat.lor 2 n : ℤ) + ((n : ℤ) - 2) : ℚ) / 4)

end

end A130766.P8930716268146132882

namespace A130766

/-- `round((2*or(2, n)+n-2)/4)` -/
def P8930716268146132882.Spec : Prop :=
  ∀ n, P8930716268146132882.a n = A130766 n

end A130766

/-! ## A130766.P13478616199540510321

`ceil((2*or(2, n)+n-3)/4)`
-/

namespace A130766.P13478616199540510321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * Nat.lor 2 n : ℤ) + ((n : ℤ) - 3) : ℚ) / 4⌉

end

end A130766.P13478616199540510321

namespace A130766

/-- `ceil((2*or(2, n)+n-3)/4)` -/
def P13478616199540510321.Spec : Prop :=
  ∀ n, P13478616199540510321.a n = A130766 n

end A130766

/-! ## A130766.P12704223481549186312

`∑[2^a(n-1)*a(a(n-2))]` with `a(0)=1, a(1)=0`
-/

namespace A130766.P12704223481549186312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 ^ f1 (n - 1) * f1 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130766.P12704223481549186312

namespace A130766

/-- `∑[2^a(n-1)*a(a(n-2))]` -/
def P12704223481549186312.Spec : Prop :=
  ∀ n, (P12704223481549186312.a n : ℤ) = A130766 n

end A130766

/-! ## A130766.P7804762343325043090

`∑[a(a(n-2))*a(n-4)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A130766.P7804762343325043090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 2] fun n f1 =>
  f1 (f1 (n - 2)) * f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130766.P7804762343325043090

namespace A130766

/-- `∑[a(a(n-2))*a(n-4)]` -/
def P7804762343325043090.Spec : Prop :=
  ∀ n, (P7804762343325043090.a n : ℤ) = A130766 n

end A130766

/-! ## A130766.P5901273952802061794

`A147534(A037915(n))`
-/

namespace A130766.P5901273952802061794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (A037915 n).toNat

end

end A130766.P5901273952802061794

namespace A130766

/-- `A147534(A037915(n))` -/
def P5901273952802061794.Spec : Prop :=
  ∀ n, P5901273952802061794.a n = A130766 n

end A130766

/-!
# A130767: a(n) = product{k=1 to n} (k-th integer from among those positive integers which are coprime to (n+1-k)).

The programs for A130767, there is no canonical definition to state claims against.
-/

/-! ## A130767.P10463139193468108315

`∏{p}[(2*n)!, val(n, #)+#]`
-/

namespace A130767.P10463139193468108315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation n p + p)

end

end A130767.P10463139193468108315

/-!
# A130770: One third of the least common multiple of 3 and n^2+n+1.

The programs for A130770, the canonical program `A130770.P8490681098128574560` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130770 has offset 0).

The definition of A130770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130770.P1203036794988774631

`lcm(3, n²+n+1)/3`
-/

namespace A130770.P1203036794988774631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n ^ 2 + n + 1) : ℚ) / 3

end

end A130770.P1203036794988774631

namespace A130770

/-- `lcm(3, n²+n+1)/3` -/
def P1203036794988774631.Spec : Prop :=
  ∀ n, P1203036794988774631.a n = (A130770 n : ℚ)

end A130770

/-! ## A130770.P16339858887099744403

`ogf((1+x+7x^2+10x^3+4x^4+10x^5+7x^6+x^7+x^8)/(1-3x^3+3x^6-x^9))`
-/

namespace A130770.P16339858887099744403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 7, 10, 4, 10, 7, 1, 1] [1, 0, 0, -3, 0, 0, 3, 0, 0, -1] n

end

end A130770.P16339858887099744403

namespace A130770

/-- `ogf((1+x+7x^2+10x^3+4x^4+10x^5+7x^6+x^7+x^8)/(1-3x^3+3x^6-x^9))` -/
def P16339858887099744403.Spec : Prop :=
  ∀ n, P16339858887099744403.a n = A130770 n

end A130770

/-! ## A130770.P8490681098128574560

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=13, a(4)=7, a(5)=31, a(6)=43, a(7)=19, a(8)=73`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130770

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P8490681098128574560.Spec : Prop :=
  ∀ n, P8490681098128574560.a n = A130770 n

theorem P8490681098128574560.correct : P8490681098128574560.Spec := by
  intro n
  simp only [A130770]

end A130770

/-! ## A130770.P5104764296711521075

`(∑[2*n]+1)/gcd(3, 1-n)`
-/

namespace A130770.P5104764296711521075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / (Int.gcd 3 (1 - (n : ℤ)) : ℚ)

end

end A130770.P5104764296711521075

namespace A130770

/-- `(∑[2*n]+1)/gcd(3, 1-n)` -/
def P5104764296711521075.Spec : Prop :=
  ∀ n, P5104764296711521075.a n = (A130770 n : ℚ)

end A130770

/-! ## A130770.P15053617709617398335

`floor((∑[2*n]+1)/gcd(2*n+1, n+2))`
-/

namespace A130770.P15053617709617398335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / (Nat.gcd (2 * n + 1) (n + 2) : ℚ)⌋

end

end A130770.P15053617709617398335

namespace A130770

/-- `floor((∑[2*n]+1)/gcd(2*n+1, n+2))` -/
def P15053617709617398335.Spec : Prop :=
  ∀ n, P15053617709617398335.a n = A130770 n

end A130770

/-! ## A130770.P11091292011478673483

`A130723(n)/3`
-/

namespace A130770.P11091292011478673483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130723 n : ℚ) / 3

end

end A130770.P11091292011478673483

namespace A130770

/-- `A130723(n)/3` -/
def P11091292011478673483.Spec : Prop :=
  ∀ n, P11091292011478673483.a n = (A130770 n : ℚ)

end A130770

/-! ## A130770.P10924139025386340178

`A153171(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A130770.P10924139025386340178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A153171 (n - 2) + a (n - 1)

end

end A130770.P10924139025386340178

namespace A130770

/-- `A153171(n-2)+a(n-1)` -/
def P10924139025386340178.Spec : Prop :=
  ∀ n, P10924139025386340178.a n = A130770 n

end A130770

/-! ## A130770.P2363057976117616585

`A046163(A028310(n))`
-/

namespace A130770.P2363057976117616585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046163 (A028310 n).toNat

end

end A130770.P2363057976117616585

namespace A130770

/-- `A046163(A028310(n))` -/
def P2363057976117616585.Spec : Prop :=
  ∀ n, P2363057976117616585.a n = A130770 n

end A130770

/-! ## A130770.P1108183026448370225

`gcd(A006565(n), A111002(n))`
-/

namespace A130770.P1108183026448370225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006565 n) (A111002 n)

end

end A130770.P1108183026448370225

namespace A130770

/-- `gcd(A006565(n), A111002(n))` -/
def P1108183026448370225.Spec : Prop :=
  ∀ n, (P1108183026448370225.a n : ℤ) = A130770 n

end A130770

/-! ## A130770.P13200546686485279053

`gcd(A059721(n), A102909(n))`
-/

namespace A130770.P13200546686485279053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059721 n) (A102909 n)

end

end A130770.P13200546686485279053

namespace A130770

/-- `gcd(A059721(n), A102909(n))` -/
def P13200546686485279053.Spec : Prop :=
  ∀ n, (P13200546686485279053.a n : ℤ) = A130770 n

end A130770

/-! ## A130770.P11603851846950951144

`gcd(A027444(n), A220892(n))`
-/

namespace A130770.P11603851846950951144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027444 n) (A220892 n)

end

end A130770.P11603851846950951144

namespace A130770

/-- `gcd(A027444(n), A220892(n))` -/
def P11603851846950951144.Spec : Prop :=
  ∀ n, (P11603851846950951144.a n : ℤ) = A130770 n

end A130770

/-! ## A130770.P934758982931641951

`gcd(A005898(n), A331528(n))`
-/

namespace A130770.P934758982931641951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005898 n) (A331528 n)

end

end A130770.P934758982931641951

namespace A130770

/-- `gcd(A005898(n), A331528(n))` -/
def P934758982931641951.Spec : Prop :=
  ∀ n, (P934758982931641951.a n : ℤ) = A130770 n

end A130770

/-! ## A130770.P16307872079056300796

`A194767(n)-A146535(n+1)`
-/

namespace A130770.P16307872079056300796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194767 n - A146535 (n + 1)

end

end A130770.P16307872079056300796

namespace A130770

/-- `A194767(n)-A146535(n+1)` -/
def P16307872079056300796.Spec : Prop :=
  ∀ n, P16307872079056300796.a n = A130770 n

end A130770

/-! ## A130770.P10497631869579786459

`A046163(A008486(n)-2*n)`
-/

namespace A130770.P10497631869579786459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046163 (A008486 n - (2 * n : ℤ)).toNat

end

end A130770.P10497631869579786459

namespace A130770

/-- `A046163(A008486(n)-2*n)` -/
def P10497631869579786459.Spec : Prop :=
  ∀ n, P10497631869579786459.a n = A130770 n

end A130770

/-! ## A130770.P8898649582637852228

`A046163(A008486(n)-n-n)`
-/

namespace A130770.P8898649582637852228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046163 (A008486 n - (n : ℤ) - (n : ℤ)).toNat

end

end A130770.P8898649582637852228

namespace A130770

/-- `A046163(A008486(n)-n-n)` -/
def P8898649582637852228.Spec : Prop :=
  ∀ n, P8898649582637852228.a n = A130770 n

end A130770

/-! ## A130770.P7163739378275738962

`gcd(A068601(n+1)+2, A220892(n)²)`
-/

namespace A130770.P7163739378275738962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068601 (n + 1) + 2) (A220892 n ^ 2)

end

end A130770.P7163739378275738962

namespace A130770

/-- `gcd(A068601(n+1)+2, A220892(n)²)` -/
def P7163739378275738962.Spec : Prop :=
  ∀ n, (P7163739378275738962.a n : ℤ) = A130770 n

end A130770

/-! ## A130770.P12771386055608339378

`(n²+1+n)/A109007(n+2)`
-/

namespace A130770.P12771386055608339378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 + n : ℚ) / (A109007 (n + 2) : ℚ)

end

end A130770.P12771386055608339378

namespace A130770

/-- `(n²+1+n)/A109007(n+2)` -/
def P12771386055608339378.Spec : Prop :=
  ∀ n, P12771386055608339378.a n = (A130770 n : ℚ)

end A130770

/-! ## A130770.P11373546153174355917

`(n²+1+n)/A281098(2*n+1)`
-/

namespace A130770.P11373546153174355917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 + n : ℚ) / (A281098 (2 * n + 1) : ℚ)

end

end A130770.P11373546153174355917

namespace A130770

/-- `(n²+1+n)/A281098(2*n+1)` -/
def P11373546153174355917.Spec : Prop :=
  ∀ n, P11373546153174355917.a n = (A130770 n : ℚ)

end A130770

/-! ## A130770.P11021089676948708269

`(n²+1+n)/A089128(2*n+1)`
-/

namespace A130770.P11021089676948708269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 + n : ℚ) / (A089128 (2 * n + 1) : ℚ)

end

end A130770.P11021089676948708269

namespace A130770

/-- `(n²+1+n)/A089128(2*n+1)` -/
def P11021089676948708269.Spec : Prop :=
  ∀ n, P11021089676948708269.a n = (A130770 n : ℚ)

end A130770

/-! ## A130770.P13468371551374957647

`A194767(n)-A051176(2*n+1)`
-/

namespace A130770.P13468371551374957647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194767 n - A051176 (2 * n + 1)

end

end A130770.P13468371551374957647

namespace A130770

/-- `A194767(n)-A051176(2*n+1)` -/
def P13468371551374957647.Spec : Prop :=
  ∀ n, P13468371551374957647.a n = A130770 n

end A130770

/-!
# A130771: Numbers n not divisible by 3 for which neither 2n-3 nor 2n+3 are primes.

The programs for A130771, there is no canonical definition to state claims against.
-/

/-! ## A130771.P6266288430184610402

`filter[A130699(n+2), A011655(#)]`
-/

namespace A130771.P6266288430184610402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130699 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A130771.P6266288430184610402

/-! ## A130771.P8666622419412928476

`filter[A130699(n+2), A267208(#)]`
-/

namespace A130771.P8666622419412928476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130699 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A130771.P8666622419412928476

/-! ## A130771.P12772499248319456853

`∩[A001651(n+1), A130699(n+2)]`
-/

namespace A130771.P12772499248319456853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130699 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130771.P12772499248319456853

/-! ## A130771.P14126344843280388120

`∩[A062132(n+1), A130699(n+2)]`
-/

namespace A130771.P14126344843280388120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130699 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130771.P14126344843280388120

/-! ## A130771.P14560728507614076215

`∩[A112886(n+1), A130699(n+2)]`
-/

namespace A130771.P14560728507614076215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130699 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130771.P14560728507614076215

/-!
# A130772: Periodic sequence with period 2 2 0 -2 -2 0.

The programs for A130772, the canonical program `A130772.P18322012598278748242` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130772 has offset 0).

The definition of A130772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130772.P18322012598278748242

`ogf(2/(1-x+x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130772

/-- `ogf(2/(1-x+x^2))` -/
def P18322012598278748242.Spec : Prop :=
  ∀ n, P18322012598278748242.a n = A130772 n

theorem P18322012598278748242.correct : P18322012598278748242.Spec := by
  intro n
  simp only [A130772]

end A130772

/-!
# A130773: a(0) = 0, a(1) = 2, a(n) = 2*n + 1 for n >= 2.

The programs for A130773, the canonical program `A130773.P10469411356303720889` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130773 has offset 0).

The definition of A130773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130773.P10469411356303720889

`ogf((2x+x^2-x^3)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130773

/-- `ogf((2x+x^2-x^3)/(1-2x+x^2))` -/
def P10469411356303720889.Spec : Prop :=
  ∀ n, P10469411356303720889.a n = A130773 n

theorem P10469411356303720889.correct : P10469411356303720889.Spec := by
  intro n
  simp only [A130773]

end A130773

/-!
# A130775: a(1) = 0; for n > 1: a(n) = 2*(prime(n)-1)!/(prime(n)+1).

The programs for A130775, there is no canonical definition to state claims against.
-/

/-! ## A130775.P12237856000857658813

`A061370(A000040(n+1))`
-/

namespace A130775.P12237856000857658813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061370 (A000040 (n + 1)).toNat

end

end A130775.P12237856000857658813

/-! ## A130775.P17003117524131214393

`A164652(A008837(n+1))`
-/

namespace A130775.P17003117524131214393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164652 (A008837 (n + 1)).toNat

end

end A130775.P17003117524131214393

/-! ## A130775.P12578779302986960068

`A164652(A112456(n+1))`
-/

namespace A130775.P12578779302986960068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164652 (A112456 (n + 1)).toNat

end

end A130775.P12578779302986960068

/-! ## A130775.P13048200020837447500

`A061370(record[A006530(n+2)])`
-/

namespace A130775.P13048200020837447500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130775.P13048200020837447500

/-! ## A130775.P10629621364435482250

`A061370(record[A020639(n+2)])`
-/

namespace A130775.P10629621364435482250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130775.P10629621364435482250

/-!
# A130776: Numbers n such that the sum of the proper divisors of n and n+1 equals either n or n+1.

The programs for A130776, there is no canonical definition to state claims against.
-/

/-! ## A130776.P13369913044535246869

`eq[A198261(A246029(n)), A332762(n)]`
-/

namespace A130776.P13369913044535246869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198261 (A246029 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130776.P13369913044535246869

/-! ## A130776.P17733507094321481117

`∑[A279391(A282500(n)²)]`
-/

namespace A130776.P17733507094321481117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279391 (A282500 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130776.P17733507094321481117

/-! ## A130776.P15739556390041979944

`A336014(A088005(n+1)-2)`
-/

namespace A130776.P15739556390041979944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336014 (A088005 (n + 1) - 2).toNat

end

end A130776.P15739556390041979944

/-! ## A130776.P9496073862614654939

`filter[A096360(n+1), A334812(#)]`
-/

namespace A130776.P9496073862614654939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334812 (f1 j).toNat = 1) n)

end

end A130776.P9496073862614654939

/-! ## A130776.P4667930211729703253

`record[A032542(A039581(n+1)²)]`
-/

namespace A130776.P4667930211729703253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032542 (A039581 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130776.P4667930211729703253

/-!
# A130777: Coefficients of first difference of Chebyshev S polynomials.

The programs for A130777, the canonical program `A130777.P3794494300640736709` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130777 has offset 0).

The definition of A130777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130777.P3794494300640736709

`(-1)^C(row(n)-col(n)+1, 2)*C(floor((row(n)+col(n))/2), col(n))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130777

/-- `(-1)^C(row(n)-col(n)+1, 2)*C(floor((row(n)+col(n))/2), col(n))` -/
def P3794494300640736709.Spec : Prop :=
  ∀ n, P3794494300640736709.a n = A130777 n

theorem P3794494300640736709.correct : P3794494300640736709.Spec := by
  intro n
  simp only [A130777]

end A130777

/-! ## A130777.P15360475660590180442

`(-1)^(row(n)-col(n))*T(n-1,k)+1/2*(1+(-1)^(row(n)-col(n)))*T(n-1,k-1)` with `a(0)=1`
-/

namespace A130777.P15360475660590180442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * SequenceMachineLib.triUp a n + (1 : ℚ) / 2 * (1 + (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)) * SequenceMachineLib.triUpLeft a n

end

end A130777.P15360475660590180442

namespace A130777

/-- `(-1)^(row(n)-col(n))*T(n-1,k)+1/2*(1+(-1)^(row(n)-col(n)))*T(n-1,k-1)` -/
def P15360475660590180442.Spec : Prop :=
  ∀ n, P15360475660590180442.a n = (A130777 n : ℚ)

end A130777

/-! ## A130777.P12163154177550084907

`T(n-1,k-1)-T(n-2,k)` with `a(0)=1, a(1)=-1`
-/

namespace A130777.P12163154177550084907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n

end

end A130777.P12163154177550084907

namespace A130777

/-- `T(n-1,k-1)-T(n-2,k)` -/
def P12163154177550084907.Spec : Prop :=
  ∀ n, P12163154177550084907.a n = A130777 n

end A130777

/-! ## A130777.P1216314929855618164

`T(n-1,k-1)-T(T(T(n-1,k-1), T(n-1,k+1))+row(n)-2, col(n))` with `a(0)=1`
-/

namespace A130777.P1216314929855618164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triAt a (SequenceMachineLib.triAt a (SequenceMachineLib.triUpLeft a n) (SequenceMachineLib.triUpRight a n) + (SequenceMachineLib.triRow n : ℤ) - 2) (SequenceMachineLib.triCol n : ℤ)

end

end A130777.P1216314929855618164

namespace A130777

/-- `T(n-1,k-1)-T(T(T(n-1,k-1), T(n-1,k+1))+row(n)-2, col(n))` -/
def P1216314929855618164.Spec : Prop :=
  ∀ n, P1216314929855618164.a n = A130777 n

end A130777

/-! ## A130777.P9102356453746062897

`A127672(n)-T(n-1,k)` with `a(0)=1`
-/

namespace A130777.P9102356453746062897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127672 n - SequenceMachineLib.triUp a n

end

end A130777.P9102356453746062897

namespace A130777

/-- `A127672(n)-T(n-1,k)` -/
def P9102356453746062897.Spec : Prop :=
  ∀ n, P9102356453746062897.a n = A130777 n

end A130777

/-! ## A130777.P5285621728606394609

`A108299(∑[char[∑[n]]]²-(n+1))`
-/

namespace A130777.P5285621728606394609
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A130777.P5285621728606394609

namespace A130777

/-- `A108299(∑[char[∑[n]]]²-(n+1))` -/
def P5285621728606394609.Spec : Prop :=
  ∀ n, P5285621728606394609.a n = A130777 n

end A130777

/-! ## A130777.P15497019466336415827

`or(char[1], A108299(A061579(n)))`
-/

namespace A130777.P15497019466336415827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A108299 (A061579 n).toNat)

end

end A130777.P15497019466336415827

namespace A130777

/-- `or(char[1], A108299(A061579(n)))` -/
def P15497019466336415827.Spec : Prop :=
  ∀ n, P15497019466336415827.a n = A130777 n

end A130777

/-! ## A130777.P2011539801035821668

`or(char[1], A108299(A038722(n+2)))`
-/

namespace A130777.P2011539801035821668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A108299 (A038722 (n + 2)).toNat)

end

end A130777.P2011539801035821668

namespace A130777

/-- `or(char[1], A108299(A038722(n+2)))` -/
def P2011539801035821668.Spec : Prop :=
  ∀ n, P2011539801035821668.a n = A130777 n

end A130777

/-! ## A130777.P1943373966523594327

`xor(1, xor(1, A108299(A114327(n)+n)))`
-/

namespace A130777.P1943373966523594327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A108299 (A114327 n + (n : ℤ)).toNat))

end

end A130777.P1943373966523594327

namespace A130777

/-- `xor(1, xor(1, A108299(A114327(n)+n)))` -/
def P1943373966523594327.Spec : Prop :=
  ∀ n, P1943373966523594327.a n = A130777 n

end A130777

/-! ## A130777.P39247602111540675

`A046854(n)*A087960(A025581(n))`
-/

namespace A130777.P39247602111540675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A087960 (A025581 n).toNat

end

end A130777.P39247602111540675

namespace A130777

/-- `A046854(n)*A087960(A025581(n))` -/
def P39247602111540675.Spec : Prop :=
  ∀ n, P39247602111540675.a n = A130777 n

end A130777

/-! ## A130777.P1691515739133402365

`A046854(n)*A057077(A004736(n+1))`
-/

namespace A130777.P1691515739133402365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A057077 (A004736 (n + 1)).toNat

end

end A130777.P1691515739133402365

namespace A130777

/-- `A046854(n)*A057077(A004736(n+1))` -/
def P1691515739133402365.Spec : Prop :=
  ∀ n, P1691515739133402365.a n = A130777 n

end A130777

/-! ## A130777.P12226488990913948602

`A046854(n)*A057077(A025581(n)+1)`
-/

namespace A130777.P12226488990913948602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A057077 (A025581 n + 1).toNat

end

end A130777.P12226488990913948602

namespace A130777

/-- `A046854(n)*A057077(A025581(n)+1)` -/
def P12226488990913948602.Spec : Prop :=
  ∀ n, P12226488990913948602.a n = A130777 n

theorem P12226488990913948602.correct : P12226488990913948602.Spec := by
  intro n
  simp only [A130777, Nat.add_sub_cancel, A130777.P12226488990913948602.a, A130777.P3794494300640736709.a, A025581, A025581.P16112744757063613497.a, A046854, A046854.P6321065027790251998.a, A057077, A057077.P1014922601361247684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A130777

/-! ## A130777.P12853458922579584564

`A108299(A114327(n)+n)^(A000007(n)+1)`
-/

namespace A130777.P12853458922579584564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108299 (A114327 n + (n : ℤ)).toNat : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A130777.P12853458922579584564

namespace A130777

/-- `A108299(A114327(n)+n)^(A000007(n)+1)` -/
def P12853458922579584564.Spec : Prop :=
  ∀ n, P12853458922579584564.a n = (A130777 n : ℚ)

end A130777

/-! ## A130777.P15449120532869670227

`A039961(A038722(n+1)+1)`
-/

namespace A130777.P15449120532869670227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039961 (A038722 (n + 1) + 1).toNat

end

end A130777.P15449120532869670227

namespace A130777

/-- `A039961(A038722(n+1)+1)` -/
def P15449120532869670227.Spec : Prop :=
  ∀ n, P15449120532869670227.a n = A130777 n

end A130777

/-! ## A130777.P9004611093154786563

`A039961(A114327(n)+2+n)`
-/

namespace A130777.P9004611093154786563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039961 (A114327 n + 2 + (n : ℤ)).toNat

end

end A130777.P9004611093154786563

namespace A130777

/-- `A039961(A114327(n)+2+n)` -/
def P9004611093154786563.Spec : Prop :=
  ∀ n, P9004611093154786563.a n = A130777 n

end A130777

/-! ## A130777.P16741475769163312666

`A124038(n)/A131406(n+1)`
-/

namespace A130777.P16741475769163312666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124038 n : ℚ) / (A131406 (n + 1) : ℚ)

end

end A130777.P16741475769163312666

namespace A130777

/-- `A124038(n)/A131406(n+1)` -/
def P16741475769163312666.Spec : Prop :=
  ∀ n, P16741475769163312666.a n = (A130777 n : ℚ)

end A130777

/-! ## A130777.P15220293135812181599

`A097807(n)*A267482(n)`
-/

namespace A130777.P15220293135812181599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A267482 n

end

end A130777.P15220293135812181599

namespace A130777

/-- `A097807(n)*A267482(n)` -/
def P15220293135812181599.Spec : Prop :=
  ∀ n, P15220293135812181599.a n = A130777 n

end A130777

/-! ## A130777.P8530692762974634630

`2*A049310(n)-A267482(n)`
-/

namespace A130777.P8530692762974634630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049310 n - A267482 n

end

end A130777.P8530692762974634630

namespace A130777

/-- `2*A049310(n)-A267482(n)` -/
def P8530692762974634630.Spec : Prop :=
  ∀ n, P8530692762974634630.a n = A130777 n

end A130777

/-! ## A130777.P2207859299213423123

`A033999(A051162(n))*A267482(n)`
-/

namespace A130777.P2207859299213423123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A267482 n

end

end A130777.P2207859299213423123

namespace A130777

/-- `A033999(A051162(n))*A267482(n)` -/
def P2207859299213423123.Spec : Prop :=
  ∀ n, P2207859299213423123.a n = A130777 n

end A130777

/-! ## A130777.P10793893662521993787

`A108299(A061579(n))+A010051((n+1)²)`
-/

namespace A130777.P10793893662521993787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 (A061579 n).toNat + A010051 ((n + 1) ^ 2)

end

end A130777.P10793893662521993787

namespace A130777

/-- `A108299(A061579(n))+A010051((n+1)²)` -/
def P10793893662521993787.Spec : Prop :=
  ∀ n, P10793893662521993787.a n = A130777 n

end A130777

/-!
# A130778: Period 6: repeat [1, -1, -3, -3, -1, 1].

The programs for A130778, the canonical program `A130778.P6510551055009916101` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130778 has offset 0).

The definition of A130778 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A130778.anchor (n : ℕ) : A130778 n = [1, -1, -3, -3, -1, 1].getD (n % 6) 0` in `Proof.A130.A130778`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130778.P12167521419590425191

`ogf((1-3x+x^2)/(1-2x+2x^2-x^3))`
-/

namespace A130778.P12167521419590425191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1] [1, -2, 2, -1] n

end

end A130778.P12167521419590425191

namespace A130778

/-- `ogf((1-3x+x^2)/(1-2x+2x^2-x^3))` -/
def P12167521419590425191.Spec : Prop :=
  ∀ n, P12167521419590425191.a n = A130778 n

end A130778

/-! ## A130778.P6510551055009916101

`2*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=-1, a(2)=-3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130778

/-- `2*a(n-1)-2*a(n-2)+a(n-3)` -/
def P6510551055009916101.Spec : Prop :=
  ∀ n, P6510551055009916101.a n = A130778 n

theorem P6510551055009916101.correct : P6510551055009916101.Spec := by
  intro n
  simp only [A130778]

end A130778

/-!
# A130779: a(0)=a(1)=1, a(2)=2, a(n)=0 for n >= 3.

The programs for A130779, the canonical program `A130779.P15988933815021837739` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130779 has offset 0).

The definition of A130779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130779.P15988933815021837739

`T(n,k-1)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130779

/-- `T(n,k-1)` -/
def P15988933815021837739.Spec : Prop :=
  ∀ n, (P15988933815021837739.a n : ℤ) = A130779 n

theorem P15988933815021837739.correct : P15988933815021837739.Spec := by
  intro n
  simp only [A130779]

end A130779

/-!
# A130780: Number of partitions of n such that number of odd parts is greater than or equal to number of even parts.

The programs for A130780, there is no canonical definition to state claims against.
-/

/-! ## A130780.P10213446192876896017

`A000041(n)-A108949(n)`
-/

namespace A130780.P10213446192876896017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A108949 n

end

end A130780.P10213446192876896017

/-! ## A130780.P10199249572068798885

`A000701(n)+A046682(n)-A108949(n)`
-/

namespace A130780.P10199249572068798885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + (A046682 n - A108949 n)

end

end A130780.P10199249572068798885

/-! ## A130780.P6854468548771416157

`A000041(n)+A045931(n)-A171966(n)`
-/

namespace A130780.P6854468548771416157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A045931 n - A171966 n)

end

end A130780.P6854468548771416157

/-! ## A130780.P12639664669292903668

`A045931(n)+A171967(n)-A108949(n)`
-/

namespace A130780.P12639664669292903668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045931 n + (A171967 n - A108949 n)

end

end A130780.P12639664669292903668

/-! ## A130780.P9790517347168106702

`A338860(n)+A171966(n)`
-/

namespace A130780.P9790517347168106702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338860 n + A171966 n

end

end A130780.P9790517347168106702

/-! ## A130780.P12894408487324806145

`A045931(n)+A338860(n)+A108949(n)`
-/

namespace A130780.P12894408487324806145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045931 n + (A338860 n + A108949 n)

end

end A130780.P12894408487324806145

/-! ## A130780.P15500899963775587359

`A108950(n+1)-A239832(n)`
-/

namespace A130780.P15500899963775587359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108950 (n + 1) - A239832 n

end

end A130780.P15500899963775587359

/-!
# A130781: Sequence is identical to its third differences: a(n+3) = 3*a(n+2) - 3*a(n+1) + 2*a(n), with a(0)=a(1)=1, a(2)=2.

The programs for A130781, the canonical program `A130781.P10015965005139993821` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130781 has offset 0).

The definition of A130781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130781.P17081810281820243465

`ogf((1-2x+2x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A130781.P17081810281820243465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -3, 3, -2] n

end

end A130781.P17081810281820243465

namespace A130781

/-- `ogf((1-2x+2x^2)/(1-3x+3x^2-2x^3))` -/
def P17081810281820243465.Spec : Prop :=
  ∀ n, P17081810281820243465.a n = A130781 n

end A130781

/-! ## A130781.P10015965005139993821

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130781

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P10015965005139993821.Spec : Prop :=
  ∀ n, P10015965005139993821.a n = A130781 n

theorem P10015965005139993821.correct : P10015965005139993821.Spec := by
  intro n
  simp only [A130781]

end A130781

/-! ## A130781.P5177842222316249581

`round(2*a(n-1)-cos(n%6))` with `a(0)=1`
-/

namespace A130781.P5177842222316249581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((2 * a (n - 1) : ℝ) - Real.cos ((n % 6 : ℕ) : ℝ))

end

end A130781.P5177842222316249581

namespace A130781

/-- `round(2*a(n-1)-cos(n%6))` -/
def P5177842222316249581.Spec : Prop :=
  ∀ n, P5177842222316249581.a n = A130781 n

end A130781

/-! ## A130781.P15049308549004694597

`2^(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A130781.P15049308549004694597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (a (n - 1) - a (n - 2))

end

end A130781.P15049308549004694597

namespace A130781

/-- `2^(n-1)+a(n-1)-a(n-2)` -/
def P15049308549004694597.Spec : Prop :=
  ∀ n, P15049308549004694597.a n = (A130781 n : ℚ)

end A130781

/-! ## A130781.P9125945577732352992

`A024493(1+n)`
-/

namespace A130781.P9125945577732352992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (1 + n)

end

end A130781.P9125945577732352992

namespace A130781

/-- `A024493(1+n)` -/
def P9125945577732352992.Spec : Prop :=
  ∀ n, P9125945577732352992.a n = A130781 n

end A130781

/-! ## A130781.P3312182136279368049

`∑[A024495(n)]+1`
-/

namespace A130781.P3312182136279368049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A130781.P3312182136279368049

namespace A130781

/-- `∑[A024495(n)]+1` -/
def P3312182136279368049.Spec : Prop :=
  ∀ n, P3312182136279368049.a n = A130781 n

end A130781

/-! ## A130781.P12434083954295515362

`A111927(n+1)+1`
-/

namespace A130781.P12434083954295515362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111927 (n + 1) + 1

end

end A130781.P12434083954295515362

namespace A130781

/-- `A111927(n+1)+1` -/
def P12434083954295515362.Spec : Prop :=
  ∀ n, P12434083954295515362.a n = A130781 n

end A130781

/-! ## A130781.P16195251121388740314

`2^n-A131708(n)`
-/

namespace A130781.P16195251121388740314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A131708 n

end

end A130781.P16195251121388740314

namespace A130781

/-- `2^n-A131708(n)` -/
def P16195251121388740314.Spec : Prop :=
  ∀ n, P16195251121388740314.a n = A130781 n

end A130781

/-! ## A130781.P10358593916828827534

`A138635(3*(n+1)+2)`
-/

namespace A130781.P10358593916828827534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138635 (3 * (n + 1) + 2)

end

end A130781.P10358593916828827534

namespace A130781

/-- `A138635(3*(n+1)+2)` -/
def P10358593916828827534.Spec : Prop :=
  ∀ n, P10358593916828827534.a n = A130781 n

end A130781

/-! ## A130781.P14368187669126179659

`A111286(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A130781.P14368187669126179659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A111286 n - a (n - 3)

end

end A130781.P14368187669126179659

namespace A130781

/-- `A111286(n)-a(n-3)` -/
def P14368187669126179659.Spec : Prop :=
  ∀ n, P14368187669126179659.a n = A130781 n

end A130781

/-! ## A130781.P4399996688512610170

`2*a(n-1)-A010892(n)` with `a(0)=1`
-/

namespace A130781.P4399996688512610170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A010892 n

end

end A130781.P4399996688512610170

namespace A130781

/-- `2*a(n-1)-A010892(n)` -/
def P4399996688512610170.Spec : Prop :=
  ∀ n, P4399996688512610170.a n = A130781 n

end A130781

/-! ## A130781.P5239536737306566022

`A133684(A047236(n+2))`
-/

namespace A130781.P5239536737306566022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047236 (n + 2)).toNat

end

end A130781.P5239536737306566022

namespace A130781

/-- `A133684(A047236(n+2))` -/
def P5239536737306566022.Spec : Prop :=
  ∀ n, P5239536737306566022.a n = A130781 n

end A130781

/-! ## A130781.P10982815163003588505

`A131708(n)+A086953(n)`
-/

namespace A130781.P10982815163003588505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n + A086953 n

end

end A130781.P10982815163003588505

namespace A130781

/-- `A131708(n)+A086953(n)` -/
def P10982815163003588505.Spec : Prop :=
  ∀ n, P10982815163003588505.a n = A130781 n

end A130781

/-! ## A130781.P10178650729593295751

`A242563(n)+A166249(n)`
-/

namespace A130781.P10178650729593295751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242563 n + A166249 n

end

end A130781.P10178650729593295751

namespace A130781

/-- `A242563(n)+A166249(n)` -/
def P10178650729593295751.Spec : Prop :=
  ∀ n, P10178650729593295751.a n = A130781 n

end A130781

/-! ## A130781.P10697873999255911314

`A000325(n)-A111926(n)`
-/

namespace A130781.P10697873999255911314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A111926 n

end

end A130781.P10697873999255911314

namespace A130781

/-- `A000325(n)-A111926(n)` -/
def P10697873999255911314.Spec : Prop :=
  ∀ n, P10697873999255911314.a n = A130781 n

end A130781

/-! ## A130781.P7085359536335474973

`A281166(n)-A024495(n)`
-/

namespace A130781.P7085359536335474973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281166 n - A024495 n

end

end A130781.P7085359536335474973

namespace A130781

/-- `A281166(n)-A024495(n)` -/
def P7085359536335474973.Spec : Prop :=
  ∀ n, P7085359536335474973.a n = A130781 n

end A130781

/-! ## A130781.P8391174260941446435

`A133684(∑[A010882(n)]+1)`
-/

namespace A130781.P8391174260941446435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A130781.P8391174260941446435

namespace A130781

/-- `A133684(∑[A010882(n)]+1)` -/
def P8391174260941446435.Spec : Prop :=
  ∀ n, P8391174260941446435.a n = A130781 n

end A130781

/-! ## A130781.P13668642150768326497

`A133684(A047267(n+1)+2)`
-/

namespace A130781.P13668642150768326497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047267 (n + 1) + 2).toNat

end

end A130781.P13668642150768326497

namespace A130781

/-- `A133684(A047267(n+1)+2)` -/
def P13668642150768326497.Spec : Prop :=
  ∀ n, P13668642150768326497.a n = A130781 n

end A130781

/-! ## A130781.P15418014651304534963

`A086953(n+1)+A010892(n)`
-/

namespace A130781.P15418014651304534963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 (n + 1) + A010892 n

end

end A130781.P15418014651304534963

namespace A130781

/-- `A086953(n+1)+A010892(n)` -/
def P15418014651304534963.Spec : Prop :=
  ∀ n, P15418014651304534963.a n = A130781 n

end A130781

/-! ## A130781.P789393607853429049

`A088911(n+2)+A000975(n)`
-/

namespace A130781.P789393607853429049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (n + 2) + A000975 n

end

end A130781.P789393607853429049

namespace A130781

/-- `A088911(n+2)+A000975(n)` -/
def P789393607853429049.Spec : Prop :=
  ∀ n, P789393607853429049.a n = A130781 n

end A130781

/-!
# A130782: Period 5, repeat [1, 1, 2, 1, 1].

The programs for A130782, the canonical program `A130782.P5199446296278613737` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130782 has offset 0).

The definition of A130782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130782.P5199446296278613737

`floor((n+3)/5)-ceil((n-7)/5)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130782

/-- `floor((n+3)/5)-ceil((n-7)/5)` -/
def P5199446296278613737.Spec : Prop :=
  ∀ n, P5199446296278613737.a n = A130782 n

theorem P5199446296278613737.correct : P5199446296278613737.Spec := by
  intro n
  simp only [A130782]

end A130782

/-!
# A130783: Maximum value of the n-th difference of a permutation of 0..n.

The programs for A130783, the canonical program `A130783.P12800633891459325744` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130783 has offset 0).

The definition of A130783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130783.P12800633891459325744

`(n+1)*(2^n-C(n, floor(n/2)))/2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130783

/-- `(n+1)*(2^n-C(n, floor(n/2)))/2` -/
def P12800633891459325744.Spec : Prop :=
  ∀ n, P12800633891459325744.a n = (A130783 n : ℚ)

end A130783

/-! ## A130783.P2300843661504765382

`(n+1)/2*A045621(n)`
-/

namespace A130783.P2300843661504765382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A045621 n : ℚ)

end

end A130783.P2300843661504765382

namespace A130783

/-- `(n+1)/2*A045621(n)` -/
def P2300843661504765382.Spec : Prop :=
  ∀ n, P2300843661504765382.a n = (A130783 n : ℚ)

end A130783

/-! ## A130783.P11439456363216706304

`A058622(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A130783.P11439456363216706304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A058622 n + 2 * a (n - 1)

end

end A130783.P11439456363216706304

namespace A130783

/-- `A058622(n)+2*a(n-1)` -/
def P11439456363216706304.Spec : Prop :=
  ∀ n, P11439456363216706304.a n = A130783 n

end A130783

/-! ## A130783.P6243027241514234932

`A206603(n)+A100071(n)`
-/

namespace A130783.P6243027241514234932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 n + A100071 n

end

end A130783.P6243027241514234932

namespace A130783

/-- `A206603(n)+A100071(n)` -/
def P6243027241514234932.Spec : Prop :=
  ∀ n, P6243027241514234932.a n = A130783 n

end A130783

/-! ## A130783.P13018693420237647617

`A245560(n)-A027306(n)`
-/

namespace A130783.P13018693420237647617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245560 n - A027306 n

end

end A130783.P13018693420237647617

namespace A130783

/-- `A245560(n)-A027306(n)` -/
def P13018693420237647617.Spec : Prop :=
  ∀ n, P13018693420237647617.a n = A130783 n

end A130783

/-! ## A130783.P5991326231306569793

`A001792(n)-A323988(n)`
-/

namespace A130783.P5991326231306569793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A323988 n

end

end A130783.P5991326231306569793

namespace A130783

/-- `A001792(n)-A323988(n)` -/
def P5991326231306569793.Spec : Prop :=
  ∀ n, P5991326231306569793.a n = A130783 n

end A130783

/-! ## A130783.P11870707197644294247

`A230137(n)-A189391(n)`
-/

namespace A130783.P11870707197644294247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230137 n - A189391 n

end

end A130783.P11870707197644294247

namespace A130783

/-- `A230137(n)-A189391(n)` -/
def P11870707197644294247.Spec : Prop :=
  ∀ n, P11870707197644294247.a n = A130783 n

end A130783

/-! ## A130783.P4059305798043412867

`A001787(n)-A107373(n+1)`
-/

namespace A130783.P4059305798043412867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - A107373 (n + 1)

end

end A130783.P4059305798043412867

namespace A130783

/-- `A001787(n)-A107373(n+1)` -/
def P4059305798043412867.Spec : Prop :=
  ∀ n, P4059305798043412867.a n = A130783 n

end A130783

/-! ## A130783.P4781357346745382481

`A206603(n)+n*A210736(n)`
-/

namespace A130783.P4781357346745382481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 n + (n : ℤ) * A210736 n

end

end A130783.P4781357346745382481

namespace A130783

/-- `A206603(n)+n*A210736(n)` -/
def P4781357346745382481.Spec : Prop :=
  ∀ n, P4781357346745382481.a n = A130783 n

end A130783

/-! ## A130783.P15333884063393243736

`A153335(n+1)+A107373(n+1)`
-/

namespace A130783.P15333884063393243736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153335 (n + 1) + A107373 (n + 1)

end

end A130783.P15333884063393243736

namespace A130783

/-- `A153335(n+1)+A107373(n+1)` -/
def P15333884063393243736.Spec : Prop :=
  ∀ n, P15333884063393243736.a n = A130783 n

end A130783

/-! ## A130783.P5851898356948354997

`A001787(n)+A100071(n)-A189391(n)`
-/

namespace A130783.P5851898356948354997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (A100071 n - A189391 n)

end

end A130783.P5851898356948354997

namespace A130783

/-- `A001787(n)+A100071(n)-A189391(n)` -/
def P5851898356948354997.Spec : Prop :=
  ∀ n, P5851898356948354997.a n = A130783 n

end A130783

/-! ## A130783.P1555465972447230514

`A185251(n+1)+A185251(n)-A185252(n)`
-/

namespace A130783.P1555465972447230514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185251 (n + 1) + (A185251 n - A185252 n)

end

end A130783.P1555465972447230514

namespace A130783

/-- `A185251(n+1)+A185251(n)-A185252(n)` -/
def P1555465972447230514.Spec : Prop :=
  ∀ n, P1555465972447230514.a n = A130783 n

end A130783

/-! ## A130783.P9287779699665476931

`A189390(n)-(a(n-1)+a(n-1))` with `a(0)=0`
-/

namespace A130783.P9287779699665476931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A189390 n - (a (n - 1) + a (n - 1))

end

end A130783.P9287779699665476931

namespace A130783

/-- `A189390(n)-(a(n-1)+a(n-1))` -/
def P9287779699665476931.Spec : Prop :=
  ∀ n, P9287779699665476931.a n = A130783 n

end A130783

/-! ## A130783.P14092402838626825084

`A189162(n+1)-A245560(n)`
-/

namespace A130783.P14092402838626825084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189162 (n + 1) - A245560 n

end

end A130783.P14092402838626825084

namespace A130783

/-- `A189162(n+1)-A245560(n)` -/
def P14092402838626825084.Spec : Prop :=
  ∀ n, P14092402838626825084.a n = A130783 n

end A130783

/-! ## A130783.P17623944342517826783

`(A348864(n+1)-A002378(n))/2`
-/

namespace A130783.P17623944342517826783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348864 (n + 1) - A002378 n : ℚ) / 2

end

end A130783.P17623944342517826783

namespace A130783

/-- `(A348864(n+1)-A002378(n))/2` -/
def P17623944342517826783.Spec : Prop :=
  ∀ n, P17623944342517826783.a n = (A130783 n : ℚ)

end A130783

/-! ## A130783.P2793157952520056743

`(A001787(n+1)-A100071(n+1))/2`
-/

namespace A130783.P2793157952520056743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 (n + 1) - A100071 (n + 1) : ℚ) / 2

end

end A130783.P2793157952520056743

namespace A130783

/-- `(A001787(n+1)-A100071(n+1))/2` -/
def P2793157952520056743.Spec : Prop :=
  ∀ n, P2793157952520056743.a n = (A130783 n : ℚ)

end A130783

/-! ## A130783.P6852818178873385936

`A001787(n+1)-A230137(n+1)/2`
-/

namespace A130783.P6852818178873385936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 (n + 1) : ℚ) - (A230137 (n + 1) : ℚ) / 2

end

end A130783.P6852818178873385936

namespace A130783

/-- `A001787(n+1)-A230137(n+1)/2` -/
def P6852818178873385936.Spec : Prop :=
  ∀ n, P6852818178873385936.a n = (A130783 n : ℚ)

end A130783

/-! ## A130783.P8346814410429784779

`A230137(n+1)/2-A100071(n+1)`
-/

namespace A130783.P8346814410429784779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230137 (n + 1) : ℚ) / 2 - (A100071 (n + 1) : ℚ)

end

end A130783.P8346814410429784779

namespace A130783

/-- `A230137(n+1)/2-A100071(n+1)` -/
def P8346814410429784779.Spec : Prop :=
  ∀ n, P8346814410429784779.a n = (A130783 n : ℚ)

end A130783

/-! ## A130783.P6853278105239689952

`A206603(n)+n*A007318(A007590(n))`
-/

namespace A130783.P6853278105239689952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 n + (n : ℤ) * A007318 (A007590 n).toNat

end

end A130783.P6853278105239689952

namespace A130783

/-- `A206603(n)+n*A007318(A007590(n))` -/
def P6853278105239689952.Spec : Prop :=
  ∀ n, P6853278105239689952.a n = A130783 n

end A130783

/-!
# A130784: Period 3: repeat [1, 3, 2].

The programs for A130784, the canonical program `A130784.P8212584088547361495` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130784 has offset 0).

The definition of A130784 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A130784.anchor (n : ℕ) : A130784 n = (([1, 3, 2].getD (n % 3) 0 : ℕ) : ℤ)` in `Proof.A130.A130784`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130784.P8212584088547361495

`a(n-3)` with `a(0)=1, a(1)=3, a(2)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130784

/-- `a(n-3)` -/
def P8212584088547361495.Spec : Prop :=
  ∀ n, (P8212584088547361495.a n : ℤ) = A130784 n

theorem P8212584088547361495.correct : P8212584088547361495.Spec := by
  intro n
  simp only [A130784]

end A130784

/-!
# A130785: Sequence identical to its third differences: a(n+3) = 3a(n+2)-3a(n+1)+2a(n), with a(0)=1, a(1)=4, a(2)=9.

The programs for A130785, the canonical program `A130785.P12809221537398918580` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130785 has offset 0).

The definition of A130785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130785.P8719976117369278071

`ogf((1+x)/(1-3x+3x^2-2x^3))`
-/

namespace A130785.P8719976117369278071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -3, 3, -2] n

end

end A130785.P8719976117369278071

namespace A130785

/-- `ogf((1+x)/(1-3x+3x^2-2x^3))` -/
def P8719976117369278071.Spec : Prop :=
  ∀ n, P8719976117369278071.a n = A130785 n

end A130785

/-! ## A130785.P12809221537398918580

`2^(n+1)-cos((2*n+1)*π/6)*2/sqrt(3)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130785

/-- `2^(n+1)-cos((2*n+1)*π/6)*2/sqrt(3)` -/
def P12809221537398918580.Spec : Prop :=
  ∀ n, P12809221537398918580.a n = (A130785 n : ℝ)

end A130785

/-! ## A130785.P7026483801549312057

`∑[round(sin(n%6))+2^n]`
-/

namespace A130785.P7026483801549312057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ)) + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130785.P7026483801549312057

namespace A130785

/-- `∑[round(sin(n%6))+2^n]` -/
def P7026483801549312057.Spec : Prop :=
  ∀ n, P7026483801549312057.a n = A130785 n

end A130785

/-! ## A130785.P2492879816914802936

`∑[2^n]+∑[lcm(2, n)/2]%3`
-/

namespace A130785.P2492879816914802936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)) 3

end

end A130785.P2492879816914802936

namespace A130785

/-- `∑[2^n]+∑[lcm(2, n)/2]%3` -/
def P2492879816914802936.Spec : Prop :=
  ∀ n, P2492879816914802936.a n = A130785 n

end A130785

/-! ## A130785.P17698485656427127973

`∑[A141775(n)]`
-/

namespace A130785.P17698485656427127973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130785.P17698485656427127973

namespace A130785

/-- `∑[A141775(n)]` -/
def P17698485656427127973.Spec : Prop :=
  ∀ n, P17698485656427127973.a n = A130785 n

end A130785

/-! ## A130785.P18359863738471819743

`∑[A128834(n)+2^n]`
-/

namespace A130785.P18359863738471819743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130785.P18359863738471819743

namespace A130785

/-- `∑[A128834(n)+2^n]` -/
def P18359863738471819743.Spec : Prop :=
  ∀ n, P18359863738471819743.a n = A130785 n

end A130785

/-! ## A130785.P7318186249339389182

`∑[A130752(n)-2^n]`
-/

namespace A130785.P7318186249339389182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130752 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130785.P7318186249339389182

namespace A130785

/-- `∑[A130752(n)-2^n]` -/
def P7318186249339389182.Spec : Prop :=
  ∀ n, P7318186249339389182.a n = A130785 n

end A130785

/-! ## A130785.P3671791730755970547

`∑[2^n-A010892(n+2)]`
-/

namespace A130785.P3671791730755970547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A010892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130785.P3671791730755970547

namespace A130785

/-- `∑[2^n-A010892(n+2)]` -/
def P3671791730755970547.Spec : Prop :=
  ∀ n, P3671791730755970547.a n = A130785 n

end A130785

/-! ## A130785.P8018803272531525918

`A131026(n+5)+∑[2^n]`
-/

namespace A130785.P8018803272531525918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131026 (n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130785.P8018803272531525918

namespace A130785

/-- `A131026(n+5)+∑[2^n]` -/
def P8018803272531525918.Spec : Prop :=
  ∀ n, P8018803272531525918.a n = A130785 n

end A130785

/-! ## A130785.P16016140300915361810

`∑[A000079(n)+round(sin(n%6))]`
-/

namespace A130785.P16016140300915361810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130785.P16016140300915361810

namespace A130785

/-- `∑[A000079(n)+round(sin(n%6))]` -/
def P16016140300915361810.Spec : Prop :=
  ∀ n, P16016140300915361810.a n = A130785 n

end A130785

/-! ## A130785.P4038561894144364989

`2^(n+1)-A010892(n+1)`
-/

namespace A130785.P4038561894144364989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A010892 (n + 1)

end

end A130785.P4038561894144364989

namespace A130785

/-- `2^(n+1)-A010892(n+1)` -/
def P4038561894144364989.Spec : Prop :=
  ∀ n, P4038561894144364989.a n = A130785 n

end A130785

/-! ## A130785.P11871015101644504240

`A163810(n+2)+2^(n+1)`
-/

namespace A130785.P11871015101644504240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (n + 2) + (2 ^ (n + 1) : ℤ)

end

end A130785.P11871015101644504240

namespace A130785

/-- `A163810(n+2)+2^(n+1)` -/
def P11871015101644504240.Spec : Prop :=
  ∀ n, P11871015101644504240.a n = A130785 n

end A130785

/-! ## A130785.P811086570122133434

`2^(n+1)-A128834(n+2)`
-/

namespace A130785.P811086570122133434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A128834 (n + 2)

end

end A130785.P811086570122133434

namespace A130785

/-- `2^(n+1)-A128834(n+2)` -/
def P811086570122133434.Spec : Prop :=
  ∀ n, P811086570122133434.a n = A130785 n

end A130785

/-! ## A130785.P6246050612078559554

`2^(n+1)-A163806(n+2)`
-/

namespace A130785.P6246050612078559554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A163806 (n + 2)

end

end A130785.P6246050612078559554

namespace A130785

/-- `2^(n+1)-A163806(n+2)` -/
def P6246050612078559554.Spec : Prop :=
  ∀ n, P6246050612078559554.a n = A130785 n

end A130785

/-! ## A130785.P8463594843172341810

`A010892(n+4)+2^(n+1)`
-/

namespace A130785.P8463594843172341810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 4) + (2 ^ (n + 1) : ℤ)

end

end A130785.P8463594843172341810

namespace A130785

/-- `A010892(n+4)+2^(n+1)` -/
def P8463594843172341810.Spec : Prop :=
  ∀ n, P8463594843172341810.a n = A130785 n

end A130785

/-! ## A130785.P4528244365719171640

`2*a(n-1)+A057079(n)` with `a(0)=1`
-/

namespace A130785.P4528244365719171640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A057079 n

end

end A130785.P4528244365719171640

namespace A130785

/-- `2*a(n-1)+A057079(n)` -/
def P4528244365719171640.Spec : Prop :=
  ∀ n, P4528244365719171640.a n = A130785 n

end A130785

/-! ## A130785.P16771152466026196268

`A158745(A350666(n))`
-/

namespace A130785.P16771152466026196268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158745 (A350666 n).toNat

end

end A130785.P16771152466026196268

namespace A130785

/-- `A158745(A350666(n))` -/
def P16771152466026196268.Spec : Prop :=
  ∀ n, P16771152466026196268.a n = A130785 n

end A130785

/-! ## A130785.P17043297151161706257

`A077859(n)+A000295(n+1)`
-/

namespace A130785.P17043297151161706257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077859 n + A000295 (n + 1)

end

end A130785.P17043297151161706257

namespace A130785

/-- `A077859(n)+A000295(n+1)` -/
def P17043297151161706257.Spec : Prop :=
  ∀ n, P17043297151161706257.a n = A130785 n

end A130785

/-! ## A130785.P15590873631629815686

`A130759(n)+A111927(n+2)`
-/

namespace A130785.P15590873631629815686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130759 n + A111927 (n + 2)

end

end A130785.P15590873631629815686

namespace A130785

/-- `A130759(n)+A111927(n+2)` -/
def P15590873631629815686.Spec : Prop :=
  ∀ n, P15590873631629815686.a n = A130785 n

end A130785

/-! ## A130785.P10767945884193402866

`A130755(n)-A130772(n+1)`
-/

namespace A130785.P10767945884193402866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130755 n - A130772 (n + 1)

end

end A130785.P10767945884193402866

namespace A130785

/-- `A130755(n)-A130772(n+1)` -/
def P10767945884193402866.Spec : Prop :=
  ∀ n, P10767945884193402866.a n = A130785 n

end A130785

/-!
# A130789: The primes prime(n) sorted according to increasing prime(n)/prime(n+1).

The programs for A130789, there is no canonical definition to state claims against.
-/

/-! ## A130789.P9066131781646483443

`A000040(A397820(n+1))`
-/

namespace A130789.P9066131781646483443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A397820 (n + 1)).toNat

end

end A130789.P9066131781646483443

/-! ## A130789.P10405604182810828345

`A389084(a(n-1))` with `a(0)=3`
-/

namespace A130789.P10405604182810828345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A389084 (a (n - 1)).toNat

end

end A130789.P10405604182810828345

/-! ## A130789.P12750446625362099588

`A389086(∑[n+1])`
-/

namespace A130789.P12750446625362099588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389086 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130789.P12750446625362099588

/-! ## A130789.P12131747511558108815

`p?[A389086(n+1)]`
-/

namespace A130789.P12131747511558108815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130789.P12131747511558108815

/-! ## A130789.P5036822597292491392

`filter[A389086(n+1), A010051(#)]`
-/

namespace A130789.P5036822597292491392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A130789.P5036822597292491392

/-!
# A130790: Number of nodes in the Lucas-Pratt primality tree rooted at prime(n).

The programs for A130790, there is no canonical definition to state claims against.
-/

/-! ## A130790.P1360378470936033627

`floor(A037202(n+1)/2)`
-/

namespace A130790.P1360378470936033627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037202 (n + 1) : ℚ) / 2⌋

end

end A130790.P1360378470936033627

/-! ## A130790.P2666509990969834371

`A004526(A037202(n+1))`
-/

namespace A130790.P2666509990969834371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A037202 (n + 1)).toNat

end

end A130790.P2666509990969834371

/-! ## A130790.P5488217425057486235

`A064727(A037202(n+1)²)`
-/

namespace A130790.P5488217425057486235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A037202 (n + 1) ^ 2).toNat

end

end A130790.P5488217425057486235

/-! ## A130790.P6659828406130955485

`A004524(A037202(n+1)+1)`
-/

namespace A130790.P6659828406130955485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A037202 (n + 1) + 1).toNat

end

end A130790.P6659828406130955485

/-! ## A130790.P9590421671609495859

`A239241(A037202(n+1)+1)`
-/

namespace A130790.P9590421671609495859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239241 (A037202 (n + 1) + 1).toNat

end

end A130790.P9590421671609495859

/-! ## A130790.P10147513978920044312

`A001057(A037202(n+1)-1)`
-/

namespace A130790.P10147513978920044312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A037202 (n + 1) - 1).toNat

end

end A130790.P10147513978920044312

/-! ## A130790.P1979707030375510879

`A110654(A037202(n+1)-1)`
-/

namespace A130790.P1979707030375510879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A037202 (n + 1) - 1).toNat

end

end A130790.P1979707030375510879

/-! ## A130790.P14562540329562174924

`A002265(2*A037202(n+1))`
-/

namespace A130790.P14562540329562174924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A037202 (n + 1)).toNat

end

end A130790.P14562540329562174924

/-! ## A130790.P9226570868374493318

`A008615(3*A037202(n+1))`
-/

namespace A130790.P9226570868374493318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A037202 (n + 1)).toNat

end

end A130790.P9226570868374493318

/-! ## A130790.P17048262170874859368

`A008676(7*A037202(n+1))`
-/

namespace A130790.P17048262170874859368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (7 * A037202 (n + 1)).toNat

end

end A130790.P17048262170874859368

/-! ## A130790.P17404095333496340059

`A194204(or(1, A037202(n+1)))`
-/

namespace A130790.P17404095333496340059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194204 (Int.lor 1 (A037202 (n + 1))).toNat

end

end A130790.P17404095333496340059

/-! ## A130790.P4836549481749296720

`A029923(xor(1, A037202(n+1)))`
-/

namespace A130790.P4836549481749296720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029923 (Int.xor 1 (A037202 (n + 1))).toNat

end

end A130790.P4836549481749296720

/-! ## A130790.P6925037904863989678

`floor(A034697(A000040(n+1))/2)`
-/

namespace A130790.P6925037904863989678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034697 (A000040 (n + 1)).toNat : ℚ) / 2⌋

end

end A130790.P6925037904863989678

/-! ## A130790.P17989454079545010219

`A001281(or(1, A037202(n+1))-1)`
-/

namespace A130790.P17989454079545010219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lor 1 (A037202 (n + 1)) - 1).toNat

end

end A130790.P17989454079545010219

/-! ## A130790.P13557791595161735886

`A000194(round((A037202(n+1)/2)²))`
-/

namespace A130790.P13557791595161735886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway (((A037202 (n + 1) : ℚ) / 2) ^ 2)).toNat

end

end A130790.P13557791595161735886

/-! ## A130790.P14842964571765949187

`floor(A034697(record[A006530(n+2)])/2)`
-/

namespace A130790.P14842964571765949187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034697 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2⌋

end

end A130790.P14842964571765949187

/-! ## A130790.P8243172239641206337

`floor(A034697(record[A020639(n+2)])/2)`
-/

namespace A130790.P8243172239641206337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034697 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2⌋

end

end A130790.P8243172239641206337

/-! ## A130790.P9794179988157179245

`(A000040(n+1)%2+A037202(n+1)-1)/2`
-/

namespace A130790.P9794179988157179245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000040 (n + 1)) 2 + (A037202 (n + 1) - 1) : ℚ) / 2

end

end A130790.P9794179988157179245

/-! ## A130790.P14549192620576988649

`∑{d}[A037202(n+1), A001222(A000041(#))]`
-/

namespace A130790.P14549192620576988649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001222 (A000041 d).toNat

end

end A130790.P14549192620576988649

/-!
# A130791: Triangle read by rows: n-th row is the lexicographically earliest arithmetic progression of n primes beginning with A007918(n).

The programs for A130791, there is no canonical definition to state claims against.
-/

/-! ## A130791.P2007707248939720630

`A113460(ceil(acot(n)+n))`
-/

namespace A130791.P2007707248939720630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113460 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A130791.P2007707248939720630

/-! ## A130791.P3475444103485205280

`floor(A113460(n+1)+acot(n))`
-/

namespace A130791.P3475444103485205280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113460 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A130791.P3475444103485205280

/-! ## A130791.P7419784598002605847

`A113460(round(sqrt(n²+1))+1)`
-/

namespace A130791.P7419784598002605847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113460 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

end

end A130791.P7419784598002605847

/-! ## A130791.P2916008805183992550

`A113460(n+1)+A000007(n)`
-/

namespace A130791.P2916008805183992550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113460 (n + 1) + A000007 n

end

end A130791.P2916008805183992550

/-! ## A130791.P8871160163414534844

`A151878(n)+A113460(n+1)`
-/

namespace A130791.P8871160163414534844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A113460 (n + 1)

end

end A130791.P8871160163414534844

/-! ## A130791.P714469239055920255

`A151909(n)+A113460(n+1)`
-/

namespace A130791.P714469239055920255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n + A113460 (n + 1)

end

end A130791.P714469239055920255

/-! ## A130791.P1628092187223998621

`A151933(n)+A113460(n+1)`
-/

namespace A130791.P1628092187223998621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + A113460 (n + 1)

end

end A130791.P1628092187223998621

/-! ## A130791.P15360723712309099278

`A054977(n)*A113460(n+1)`
-/

namespace A130791.P15360723712309099278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A113460 (n + 1)

end

end A130791.P15360723712309099278

/-!
# A130792: Numbers k whose representation can be split in two parts which can be used as seeds for a Fibonacci-like sequence containing k itself.

The programs for A130792, there is no canonical definition to state claims against.
-/

/-! ## A130792.P5787012845455817320

`A007629(n+1)-A030101(A059951(n+1))`
-/

namespace A130792.P5787012845455817320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007629 (n + 1) - A030101 (A059951 (n + 1)).toNat

end

end A130792.P5787012845455817320

/-! ## A130792.P15972192096335890164

`A121235(A029964(n+2))-15*A000910(n)`
-/

namespace A130792.P15972192096335890164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121235 (A029964 (n + 2)).toNat - 15 * A000910 n

end

end A130792.P15972192096335890164

/-!
# A130793: Periodic sequence with period 3: 1, 3, 5.

The programs for A130793, the canonical program `A130793.P11760898417033162000` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130793 has offset 0).

The definition of A130793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130793.P11760898417033162000

`2*n%3+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130793

/-- `2*n%3+1` -/
def P11760898417033162000.Spec : Prop :=
  ∀ n, (P11760898417033162000.a n : ℤ) = A130793 n

theorem P11760898417033162000.correct : P11760898417033162000.Spec := by
  intro n
  simp only [A130793]

end A130793

/-!
# A130794: Periodic sequence with period 1,5,3.

The programs for A130794, the canonical program `A130794.P3627416256106572403` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130794 has offset 0).

The definition of A130794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130794.P3627416256106572403

`5-2*(n+2)%3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A130794

/-- `5-2*(n+2)%3` -/
def P3627416256106572403.Spec : Prop :=
  ∀ n, P3627416256106572403.a n = A130794 n

theorem P3627416256106572403.correct : P3627416256106572403.Spec := by
  intro n
  simp only [A130794]

end A130794

/-!
# A130795: Multiaxial coordinate vectors normalized at Theta=0 and Phi=0 and rounded to the nearest integer ( "n" factor is added to make the integers show up better): based on cyclotomic angles for solving polynomials of the type x^n-1=0.

The programs for A130795, there is no canonical definition to state claims against.
-/

/-! ## A130795.P9146615165621866319

`A002024(n+1)%Δ[A080550(n+2)]`
-/

namespace A130795.P9146615165621866319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080550 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1)) (f1 (n + 1) - f1 n)

end

end A130795.P9146615165621866319

/-! ## A130795.P14300428449509448747

`C(A002024(n+1), A071605(A145141(n+1)))`
-/

namespace A130795.P14300428449509448747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1)).toNat (A071605 (A145141 (n + 1)).toNat).toNat

end

end A130795.P14300428449509448747

/-! ## A130795.P11691824879780009757

`C(A002024(n+1), A002024(A286951(2*n)))`
-/

namespace A130795.P11691824879780009757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1)).toNat (A002024 (A286951 (2 * n)).toNat).toNat

end

end A130795.P11691824879780009757

/-!
# A130796: Primes p such that nextprime(p)-p is not power of 2.

The programs for A130796, there is no canonical definition to state claims against.
-/

/-! ## A130796.P17425885579858247881

`A045319(lt[1, A100375(n+1)])`
-/

namespace A130796.P17425885579858247881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A130796.P17425885579858247881

/-! ## A130796.P7203531251310161045

`A045344(lt[1, A100375(n+1)])`
-/

namespace A130796.P7203531251310161045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A130796.P7203531251310161045

/-! ## A130796.P17569356913065150474

`A065091(lt[1, A100375(n+1)])`
-/

namespace A130796.P17569356913065150474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A130796.P17569356913065150474

/-! ## A130796.P10478410944425281694

`A000040(lt[1, A100375(n+1)]+1)`
-/

namespace A130796.P10478410944425281694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A130796.P10478410944425281694

/-! ## A130796.P12427684812358950567

`∪[A031924(n+1), A124584(n+1)]`
-/

namespace A130796.P12427684812358950567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130796.P12427684812358950567

/-! ## A130796.P12583557330531775707

`∪[A124584(n+1), A258578(n+1)]`
-/

namespace A130796.P12583557330531775707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130796.P12583557330531775707

/-! ## A130796.P820806936564402889

`A045319(eq[2, A001221(A001223(n+1))])`
-/

namespace A130796.P820806936564402889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130796.P820806936564402889

/-! ## A130796.P16838760916720886315

`A045344(eq[2, A001221(A001223(n+1))])`
-/

namespace A130796.P16838760916720886315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130796.P16838760916720886315

/-! ## A130796.P14846300087654834485

`A065091(eq[2, A001221(A001223(n+1))])`
-/

namespace A130796.P14846300087654834485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130796.P14846300087654834485

/-! ## A130796.P9493616707636082581

`A181901(eq[2, A001221(A001223(n+1))])`
-/

namespace A130796.P9493616707636082581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130796.P9493616707636082581

/-!
# A130798: a(1)=1. a(n+1) = a(n) + (number of terms, from among the first n terms of the sequence, which occur among (d(1),d(2),d(3),...d(n)), where d(n) = A000005(n)).

The programs for A130798, there is no canonical definition to state claims against.
-/

/-! ## A130798.P2252523815469394640

`∑[A284248(A248185(n+and(1, n+1)))]`
-/

namespace A130798.P2252523815469394640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284248 (A248185 (n + Nat.land 1 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130798.P2252523815469394640

/-! ## A130798.P15048810682887684515

`∑[A284248(A248185(1+n))]`
-/

namespace A130798.P15048810682887684515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284248 (A248185 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130798.P15048810682887684515

/-! ## A130798.P7205754831264807313

`∑[A284248(A024000(n)+A003151(n+1))]`
-/

namespace A130798.P7205754831264807313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284248 (A024000 n + A003151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130798.P7205754831264807313

/-! ## A130798.P2851066293999052923

`∑[A110592(∑[A380482(n+1)])]`
-/

namespace A130798.P2851066293999052923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380482 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130798.P2851066293999052923

/-! ## A130798.P6372802283122685029

`∑[A277822(A335107(n+1))]`
-/

namespace A130798.P6372802283122685029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A335107 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130798.P6372802283122685029

/-! ## A130798.P7809363748789952846

`∑[A363832(A362781(n+1))]`
-/

namespace A130798.P7809363748789952846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363832 (A362781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130798.P7809363748789952846

/-!
# A130799: Triangle read by rows in which row n (n>=3) lists the anti-divisors of n.

The programs for A130799, there is no canonical definition to state claims against.
-/

/-! ## A130799.P8785355845554366509

`A333416(A333489(n+1)+A059870(n+1))`
-/

namespace A130799.P8785355845554366509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333416 (A333489 (n + 1) + A059870 (n + 1)).toNat

end

end A130799.P8785355845554366509

