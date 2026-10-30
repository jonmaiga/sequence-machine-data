import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C045
import Seq.B000.C048
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
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
# A279300: Number of n X 1 0..2 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279300, the canonical program `A279300.P8583214145318446269` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279300 has offset 1).

The definition of A279300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279300.P8583214145318446269

`ogf((x-6x^2+9x^3+4x^4-6x^5-12x^6-4x^7)/(1-6x+6x^2+16x^3-12x^4-24x^5-8x^6))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A279300

/-- `ogf((x-6x^2+9x^3+4x^4-6x^5-12x^6-4x^7)/(1-6x+6x^2+16x^3-12x^4-24x^5-8x^6))` -/
def P8583214145318446269.Spec : Prop :=
  ∀ n, P8583214145318446269.a n = A279300 (n + 1)

theorem P8583214145318446269.correct : P8583214145318446269.Spec := by
  intro n
  simp only [A279300, Nat.add_sub_cancel]

end A279300

/-! ## A279300.P953014087031225554

`A279657(∑[n]+1)`
-/

namespace A279300.P953014087031225554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279300.P953014087031225554

namespace A279300

/-- `A279657(∑[n]+1)` -/
def P953014087031225554.Spec : Prop :=
  ∀ n, P953014087031225554.a n = A279300 (n + 1)

end A279300

/-! ## A279300.P3612402956125695226

`A279657(A000124(n))+A025466(n)`
-/

namespace A279300.P3612402956125695226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279657 (A000124 n).toNat + A025466 n

end

end A279300.P3612402956125695226

namespace A279300

/-- `A279657(A000124(n))+A025466(n)` -/
def P3612402956125695226.Spec : Prop :=
  ∀ n, P3612402956125695226.a n = A279300 (n + 1)

end A279300

/-! ## A279300.P14075267721704498088

`A279534(∑[n]+1)`
-/

namespace A279300.P14075267721704498088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279534 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279300.P14075267721704498088

namespace A279300

/-- `A279534(∑[n]+1)` -/
def P14075267721704498088.Spec : Prop :=
  ∀ n, P14075267721704498088.a n = A279300 (n + 1)

end A279300

/-! ## A279300.P2653031613374841056

`A279925(∑[n]+1)`
-/

namespace A279300.P2653031613374841056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279300.P2653031613374841056

namespace A279300

/-- `A279925(∑[n]+1)` -/
def P2653031613374841056.Spec : Prop :=
  ∀ n, P2653031613374841056.a n = A279300 (n + 1)

end A279300

/-!
# A279301: Number of nX2 0..2 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279301, there is no canonical definition to state claims against.
-/

/-! ## A279301.P12363070249442882184

`A279305(∑[n+1]+2)`
-/

namespace A279301.P12363070249442882184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279305 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279301.P12363070249442882184

/-! ## A279301.P12369778574478326801

`A279305(A000096(n)+3)+char[10]`
-/

namespace A279301.P12369778574478326801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279305 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279301.P12369778574478326801

/-! ## A279301.P11008462105179274990

`A279305(A000096(n)+3)^A178334(n)`
-/

namespace A279301.P11008462105179274990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279305 (A000096 n + 3).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A279301.P11008462105179274990

/-! ## A279301.P1626699928396659077

`A178334(n+1)*A279305(A000096(n+1))`
-/

namespace A279301.P1626699928396659077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1) * A279305 (A000096 (n + 1)).toNat

end

end A279301.P1626699928396659077

/-! ## A279301.P6893538953617817998

`A007318(C(n, 2))*A279305(A000096(n+1))`
-/

namespace A279301.P6893538953617817998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A279305 (A000096 (n + 1)).toNat

end

end A279301.P6893538953617817998

/-!
# A279302: Number of nX3 0..2 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279302, there is no canonical definition to state claims against.
-/

/-! ## A279302.P7965234664122432459

`A279305(∑[n+2]+4)`
-/

namespace A279302.P7965234664122432459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279305 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279302.P7965234664122432459

/-! ## A279302.P4585090820118556923

`lcm(2, A279305(A167614(n+1)))`
-/

namespace A279302.P4585090820118556923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A279305 (A167614 (n + 1)).toNat)

end

end A279302.P4585090820118556923

/-! ## A279302.P7584478698675883701

`A279305(A167614(n+1))+A011738(n)`
-/

namespace A279302.P7584478698675883701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279305 (A167614 (n + 1)).toNat + A011738 n

end

end A279302.P7584478698675883701

/-! ## A279302.P7212594319126655356

`A279305(A167614(n+1))+A025443(n)`
-/

namespace A279302.P7212594319126655356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279305 (A167614 (n + 1)).toNat + A025443 n

end

end A279302.P7212594319126655356

/-! ## A279302.P3444678888137059900

`A279305(A167614(n+1))+A025466(n)`
-/

namespace A279302.P3444678888137059900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279305 (A167614 (n + 1)).toNat + A025466 n

end

end A279302.P3444678888137059900

/-!
# A279303: Number of nX4 0..2 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279303, there is no canonical definition to state claims against.
-/

/-! ## A279303.P6858423059935874956

`A279305(∑[n+3]+7)`
-/

namespace A279303.P6858423059935874956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279305 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A279303.P6858423059935874956

/-! ## A279303.P10286382030259693293

`A325955(n)+A279305(A374004(n+1))`
-/

namespace A279303.P10286382030259693293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325955 n + A279305 (A374004 (n + 1)).toNat

end

end A279303.P10286382030259693293

/-! ## A279303.P4458285886092253550

`lcm(A000079(n)%3, A279305(A055999(n)+10))`
-/

namespace A279303.P4458285886092253550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A000079 n) 3) (A279305 (A055999 n + 10).toNat)

end

end A279303.P4458285886092253550

/-!
# A279304: Number of nX5 0..2 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279304, there is no canonical definition to state claims against.
-/

/-! ## A279304.P4472230604897619071

`A279305(A374005(n+1))`
-/

namespace A279304.P4472230604897619071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279305 (A374005 (n + 1)).toNat

end

end A279304.P4472230604897619071

/-! ## A279304.P18126222045864579248

`A279305(A167499(n+3))`
-/

namespace A279304.P18126222045864579248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279305 (A167499 (n + 3)).toNat

end

end A279304.P18126222045864579248

/-! ## A279304.P9764424764989410916

`A279305(A155212(n)+13)`
-/

namespace A279304.P9764424764989410916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279305 (A155212 n + 13).toNat

end

end A279304.P9764424764989410916

/-!
# A279306: Numerators of coefficients in expansion of (cosh(x))/(1 + cos(sqrt(x))).

The programs for A279306, there is no canonical definition to state claims against.
-/

/-! ## A279306.P5884877864891997029

`A239743(n+1)%A055944(A239762(n))`
-/

namespace A279306.P5884877864891997029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239743 (n + 1)) (A055944 (A239762 n).toNat)

end

end A279306.P5884877864891997029

/-!
# A279307: Numerators of coefficients in expansion of (sinh x)/(1 + cos(sqrt(x))).

The programs for A279307, there is no canonical definition to state claims against.
-/

/-! ## A279307.P16052702047369880048

`and(A008621(A000045(3*(n+1))), A126311(n))`
-/

namespace A279307.P16052702047369880048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008621 (A000045 (3 * (n + 1))).toNat) (A126311 n)

end

end A279307.P16052702047369880048

/-!
# A279310: Numerators of coefficients in expansion of (cos x)/(1 - x - x^2).

The programs for A279310, there is no canonical definition to state claims against.
-/

/-! ## A279310.P3311757938789613051

`A057034(6*a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A279310.P3311757938789613051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A057034 (6 * a (n - 2)).toNat

end

end A279310.P3311757938789613051

/-! ## A279310.P9220927140648022537

`A333028(A288763(n))`
-/

namespace A279310.P9220927140648022537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333028 (A288763 n).toNat

end

end A279310.P9220927140648022537

/-!
# A279311: Denominators of coefficients in expansion of (cos x)/(1 - x - x^2).

The programs for A279311, there is no canonical definition to state claims against.
-/

/-! ## A279311.P13966442507950142755

`A036503(or(1, A024656(n)))`
-/

namespace A279311.P13966442507950142755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036503 (Int.lor 1 (A024656 n)).toNat

end

end A279311.P13966442507950142755

/-! ## A279311.P18442964017869379805

`A092043(or(1, A024656(n)))`
-/

namespace A279311.P18442964017869379805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092043 (Int.lor 1 (A024656 n)).toNat

end

end A279311.P18442964017869379805

/-! ## A279311.P6966449975802322028

`A119619(or(1, A024656(n)))`
-/

namespace A279311.P6966449975802322028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119619 (Int.lor 1 (A024656 n)).toNat

end

end A279311.P6966449975802322028

/-! ## A279311.P13479361048904098824

`A036503(or(n, A309861(n)))`
-/

namespace A279311.P13479361048904098824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036503 (Int.lor (n : ℤ) (A309861 n)).toNat

end

end A279311.P13479361048904098824

/-! ## A279311.P2730731866120541308

`A092043(or(n, A291700(n)))`
-/

namespace A279311.P2730731866120541308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092043 (Int.lor (n : ℤ) (A291700 n)).toNat

end

end A279311.P2730731866120541308

/-!
# A279312: Number of subsets of {1, 2, 3, ..., n} that include no consecutive even integers.

The programs for A279312, the canonical program `A279312.P18329410404252926570` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279312 has offset 0).

The definition of A279312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279312.P18329410404252926570

`2*a(n-2)+4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A279312

/-- `2*a(n-2)+4*a(n-4)` -/
def P18329410404252926570.Spec : Prop :=
  ∀ n, (P18329410404252926570.a n : ℤ) = A279312 n

theorem P18329410404252926570.correct : P18329410404252926570.Spec := by
  intro n
  simp only [A279312]

end A279312

/-! ## A279312.P5712918906834785376

`ogf((1+2x+2x^2+4x^3)/(1-2x^2-4x^4))`
-/

namespace A279312.P5712918906834785376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 4] [1, 0, -2, 0, -4] n

end

end A279312.P5712918906834785376

namespace A279312

/-- `ogf((1+2x+2x^2+4x^3)/(1-2x^2-4x^4))` -/
def P5712918906834785376.Spec : Prop :=
  ∀ n, P5712918906834785376.a n = A279312 n

end A279312

/-! ## A279312.P5351452752235653448

`2^ceil(n/2)*A000045(round((n-1)/2)+2)`
-/

namespace A279312.P5351452752235653448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) * (A000045 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2).toNat : ℚ)

end

end A279312.P5351452752235653448

namespace A279312

/-- `2^ceil(n/2)*A000045(round((n-1)/2)+2)` -/
def P5351452752235653448.Spec : Prop :=
  ∀ n, P5351452752235653448.a n = (A279312 n : ℚ)

end A279312

/-! ## A279312.P17248264482863322949

`A060546(n)*A103609(n+4)`
-/

namespace A279312.P17248264482863322949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A103609 (n + 4)

end

end A279312.P17248264482863322949

namespace A279312

/-- `A060546(n)*A103609(n+4)` -/
def P17248264482863322949.Spec : Prop :=
  ∀ n, P17248264482863322949.a n = A279312 n

end A279312

/-! ## A279312.P8508047453212737726

`A000045(floor(n/2)+2)*Δ[A163978(n+1)]`
-/

namespace A279312.P8508047453212737726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌊(n : ℚ) / 2⌋ + 2).toNat * (f1 (n + 1) - f1 n)

end

end A279312.P8508047453212737726

namespace A279312

/-- `A000045(floor(n/2)+2)*Δ[A163978(n+1)]` -/
def P8508047453212737726.Spec : Prop :=
  ∀ n, P8508047453212737726.a n = A279312 n

end A279312

/-! ## A279312.P14055486780830667178

`A000045(A008619(n)+1)*A060546(n)`
-/

namespace A279312.P14055486780830667178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008619 n + 1).toNat * A060546 n

end

end A279312.P14055486780830667178

namespace A279312

/-- `A000045(A008619(n)+1)*A060546(n)` -/
def P14055486780830667178.Spec : Prop :=
  ∀ n, P14055486780830667178.a n = A279312 n

end A279312

/-! ## A279312.P13352347126727153432

`A000045(A080513(n+1))*A060546(n)`
-/

namespace A279312.P13352347126727153432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A080513 (n + 1)).toNat * A060546 n

end

end A279312.P13352347126727153432

namespace A279312

/-- `A000045(A080513(n+1))*A060546(n)` -/
def P13352347126727153432.Spec : Prop :=
  ∀ n, P13352347126727153432.a n = A279312 n

end A279312

/-! ## A279312.P2283755247582107721

`A171648(n+3)/2`
-/

namespace A279312.P2283755247582107721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171648 (n + 3) : ℚ) / 2

end

end A279312.P2283755247582107721

namespace A279312

/-- `A171648(n+3)/2` -/
def P2283755247582107721.Spec : Prop :=
  ∀ n, P2283755247582107721.a n = (A279312 n : ℚ)

end A279312

/-! ## A279312.P16580780882528796038

`∪[A063727(n), A087206(n)]`
-/

namespace A279312.P16580780882528796038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087206 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279312.P16580780882528796038

namespace A279312

/-- `∪[A063727(n), A087206(n)]` -/
def P16580780882528796038.Spec : Prop :=
  ∀ n, (P16580780882528796038.a n : ℤ) = A279312 n

end A279312

/-! ## A279312.P8460259868158816058

`∪[2*A279245(2*n), A279245(2*n)]`
-/

namespace A279312.P8460259868158816058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A279245 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279245 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279312.P8460259868158816058

namespace A279312

/-- `∪[2*A279245(2*n), A279245(2*n)]` -/
def P8460259868158816058.Spec : Prop :=
  ∀ n, (P8460259868158816058.a n : ℤ) = A279312 n

end A279312

/-! ## A279312.P699672651569665928

`record[A059268(n)*A128540(n+1)]`
-/

namespace A279312.P699672651569665928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A128540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279312.P699672651569665928

namespace A279312

/-- `record[A059268(n)*A128540(n+1)]` -/
def P699672651569665928.Spec : Prop :=
  ∀ n, P699672651569665928.a n = A279312 n

end A279312

/-! ## A279312.P12181832440890458884

`record[A059268(n)*A131410(n+1)]`
-/

namespace A279312.P12181832440890458884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A131410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279312.P12181832440890458884

namespace A279312

/-- `record[A059268(n)*A131410(n+1)]` -/
def P12181832440890458884.Spec : Prop :=
  ∀ n, P12181832440890458884.a n = A279312 n

end A279312

/-! ## A279312.P4740728931174693380

`record[A059268(n)*A117501(n+1)]`
-/

namespace A279312.P4740728931174693380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A117501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279312.P4740728931174693380

namespace A279312

/-- `record[A059268(n)*A117501(n+1)]` -/
def P4740728931174693380.Spec : Prop :=
  ∀ n, P4740728931174693380.a n = A279312 n

end A279312

/-! ## A279312.P14833468050223018567

`A153281(A080476(n+2))`
-/

namespace A279312.P14833468050223018567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153281 (A080476 (n + 2)).toNat

end

end A279312.P14833468050223018567

namespace A279312

/-- `A153281(A080476(n+2))` -/
def P14833468050223018567.Spec : Prop :=
  ∀ n, P14833468050223018567.a n = A279312 n

end A279312

/-!
# A279313: Period 14 zigzag sequence: repeat [0,1,2,3,4,5,6,7,6,5,4,3,2,1].

The programs for A279313, the canonical program `A279313.P3952706338962781724` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279313 has offset 0).

The definition of A279313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279313.P3952706338962781724

`abs(n-14*round(n/14))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A279313

/-- `abs(n-14*round(n/14))` -/
def P3952706338962781724.Spec : Prop :=
  ∀ n, P3952706338962781724.a n = A279313 n

theorem P3952706338962781724.correct : P3952706338962781724.Spec := by
  intro n
  simp only [A279313]

end A279313

/-!
# A279314: Composite numbers n such that the sum of the prime factors of n, with multiplicity, is congruent to n (mod 9).

The programs for A279314, there is no canonical definition to state claims against.
-/

/-! ## A279314.P4745384862592192454

`∪[A098836(n+1)+A098874(3*n+5)%2, A036920(n+3)]`
-/

namespace A279314.P4745384862592192454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1) + Int.tmod (A098874 (3 * n + 5)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279314.P4745384862592192454

/-! ## A279314.P5028374142100895905

`∪[A006753(n+1), A036920(A077168(n+3))]`
-/

namespace A279314.P5028374142100895905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (A077168 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279314.P5028374142100895905

/-! ## A279314.P5142746262101079225

`∪[A098836(n+1), A036920(A077168(n+3))]`
-/

namespace A279314.P5142746262101079225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (A077168 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279314.P5142746262101079225

/-! ## A279314.P16780937565319120898

`∪[A006753(n+1), A036920(n+1)]%A329942(n+2)`
-/

namespace A279314.P16780937565319120898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A329942 (n + 2))

end

end A279314.P16780937565319120898

/-! ## A279314.P2907665312360068240

`∪[A036920(n+1), A104171(n+1)]%A329942(n+2)`
-/

namespace A279314.P2907665312360068240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104171 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A329942 (n + 2))

end

end A279314.P2907665312360068240

/-!
# A279315: Count the primes appearing in each interval [p,q] where (p,q) is a Goldbach partition of 2n such that all primes from p to q (inclusive) appear as a part in some Goldbach partition of p+q = 2n, and then add the results.

The programs for A279315, there is no canonical definition to state claims against.
-/

/-! ## A279315.P2983082367543851777

`A278700(n+1)²+(1-A010051(n+1))*A278700(n+1)`
-/

namespace A279315.P2983082367543851777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278700 (n + 1) ^ 2 + (1 - A010051 (n + 1)) * A278700 (n + 1)

end

end A279315.P2983082367543851777

/-! ## A279315.P8624516931079499

`(A278700(n+1)+A066247(n+1))*A278700(n+1)`
-/

namespace A279315.P8624516931079499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A278700 (n + 1) + A066247 (n + 1)) * A278700 (n + 1)

end

end A279315.P8624516931079499

/-! ## A279315.P8280671759794167931

`Δ[A279615(round(acot(n)+n))]`
-/

namespace A279315.P8280671759794167931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279615 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279315.P8280671759794167931

/-! ## A279315.P11356544505451840329

`Δ[A279615(round(sqrt(n²+1)))]`
-/

namespace A279315.P11356544505451840329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279615 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279315.P11356544505451840329

/-! ## A279315.P12493757226893724449

`abs(Δ[A279615(A028310(n))])`
-/

namespace A279315.P12493757226893724449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279615 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A279315.P12493757226893724449

/-! ## A279315.P14053419985585893092

`A279615(n+1)-A279615(round(sqrt(n²+1)))`
-/

namespace A279315.P14053419985585893092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279615 (n + 1) - A279615 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A279315.P14053419985585893092

/-!
# A279316: Period 7: repeat [0, 1, 2, 3, 3, 2, 1].

The programs for A279316, the canonical program `A279316.P12908273073121982643` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279316 has offset 0).

The definition of A279316 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A279316.anchor (n : ℕ) : A279316 n = (([0, 1, 2, 3, 3, 2, 1].getD (n % 7) 0 : ℕ) : ℤ)` in `Proof.A279.A279316`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A279316.P12908273073121982643

`a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=3, a(5)=2, a(6)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A279316

/-- `a(n-7)` -/
def P12908273073121982643.Spec : Prop :=
  ∀ n, (P12908273073121982643.a n : ℤ) = A279316 n

theorem P12908273073121982643.correct : P12908273073121982643.Spec := by
  intro n
  simp only [A279316]

end A279316

/-!
# A279317: Minimal number of squares in a dissection of an (n) X (n+1) oblong into squares.

The programs for A279317, there is no canonical definition to state claims against.
-/

/-! ## A279317.P5900125809304404849

`A219158(∑[n+2])`
-/

namespace A279317.P5900125809304404849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279317.P5900125809304404849

/-! ## A279317.P9930282518527332482

`A219158(A000096(n+1))%16`
-/

namespace A279317.P9930282518527332482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219158 (A000096 (n + 1)).toNat) 16

end

end A279317.P9930282518527332482

/-! ## A279317.P16518701913861421940

`A219158(A000217(n+1)+n+1)%64`
-/

namespace A279317.P16518701913861421940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219158 (A000217 (n + 1) + (n + 1 : ℤ)).toNat) 64

end

end A279317.P16518701913861421940

/-! ## A279317.P6949462900497166322

`A001222(A284292(n+1))*A219158(A000096(n+1))`
-/

namespace A279317.P6949462900497166322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284292 (n + 1)).toNat * A219158 (A000096 (n + 1)).toNat

end

end A279317.P6949462900497166322

/-! ## A279317.P6746261232198410116

`A001222(A065151(n+2))*A219158(A000096(n+1))`
-/

namespace A279317.P6746261232198410116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065151 (n + 2)).toNat * A219158 (A000096 (n + 1)).toNat

end

end A279317.P6746261232198410116

/-! ## A279317.P7151779692976698147

`A219158(A000096(n+1))/A219158(A000217(n+1))`
-/

namespace A279317.P7151779692976698147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219158 (A000096 (n + 1)).toNat : ℚ) / (A219158 (A000217 (n + 1)).toNat : ℚ)

end

end A279317.P7151779692976698147

/-! ## A279317.P15965053526155016295

`A113881(2*(n+1)²)`
-/

namespace A279317.P15965053526155016295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (2 * (n + 1) ^ 2)

end

end A279317.P15965053526155016295

/-! ## A279317.P8809345264259604870

`A014963(A000217(n+6))*A219158(A000096(n+1))`
-/

namespace A279317.P8809345264259604870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat * A219158 (A000096 (n + 1)).toNat

end

end A279317.P8809345264259604870

/-!
# A279318: Permutation of the nonnegative integers [6k+3, 6k+2, 6k+1, 6k, 6k+5, 6k+4].

The programs for A279318, the canonical program `A279318.P15004235757766935366` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279318 has offset 0).

The definition of A279318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279318.P6994539651557320619

`ogf((3-x-x^2-x^3+5x^4-x^5+2x^6)/(1-x-x^6+x^7))`
-/

namespace A279318.P6994539651557320619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, -1, -1, 5, -1, 2] [1, -1, 0, 0, 0, 0, -1, 1] n

end

end A279318.P6994539651557320619

namespace A279318

/-- `ogf((3-x-x^2-x^3+5x^4-x^5+2x^6)/(1-x-x^6+x^7))` -/
def P6994539651557320619.Spec : Prop :=
  ∀ n, P6994539651557320619.a n = A279318 n

end A279318

/-! ## A279318.P15004235757766935366

`n+cos(n*π)+2*cos(n*π/3)+2*sin(2*n*π/3)/sqrt(3)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A279318

/-- `n+cos(n*π)+2*cos(n*π/3)+2*sin(2*n*π/3)/sqrt(3)` -/
def P15004235757766935366.Spec : Prop :=
  ∀ n, P15004235757766935366.a n = (A279318 n : ℝ)

end A279318

/-! ## A279318.P17716886141232222576

`a(n-2)-xor(2, -(2%xor(n, a(n-2))))` with `a(0)=3, a(1)=2`
-/

namespace A279318.P17716886141232222576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 2) - Int.xor 2 (-Int.tmod 2 (Int.xor (n : ℤ) (a (n - 2))))

end

end A279318.P17716886141232222576

namespace A279318

/-- `a(n-2)-xor(2, -(2%xor(n, a(n-2))))` -/
def P17716886141232222576.Spec : Prop :=
  ∀ n, P17716886141232222576.a n = A279318 n

end A279318

/-! ## A279318.P18124684569311681696

`2*A103368(n)+A004442(n)`
-/

namespace A279318.P18124684569311681696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103368 n + A004442 n

end

end A279318.P18124684569311681696

namespace A279318

/-- `2*A103368(n)+A004442(n)` -/
def P18124684569311681696.Spec : Prop :=
  ∀ n, P18124684569311681696.a n = A279318 n

end A279318

/-! ## A279318.P1638138083056647182

`Δ[C(n, 2)-A070431(n+4)]`
-/

namespace A279318.P1638138083056647182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A070431 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279318.P1638138083056647182

namespace A279318

/-- `Δ[C(n, 2)-A070431(n+4)]` -/
def P1638138083056647182.Spec : Prop :=
  ∀ n, P1638138083056647182.a n = A279318 n

end A279318

/-! ## A279318.P583228664241225390

`A006368(xor(2, round((lcm(3, n)+n)/3)))`
-/

namespace A279318.P583228664241225390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.xor 2 (SequenceMachineLib.roundAway ((Nat.lcm 3 n + n : ℚ) / 3))).toNat

end

end A279318.P583228664241225390

namespace A279318

/-- `A006368(xor(2, round((lcm(3, n)+n)/3)))` -/
def P583228664241225390.Spec : Prop :=
  ∀ n, P583228664241225390.a n = A279318 n

end A279318

/-! ## A279318.P9668084734657411499

`A006368(xor(2, A006369(n)))`
-/

namespace A279318.P9668084734657411499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.xor 2 (A006369 n)).toNat

end

end A279318.P9668084734657411499

namespace A279318

/-- `A006368(xor(2, A006369(n)))` -/
def P9668084734657411499.Spec : Prop :=
  ∀ n, P9668084734657411499.a n = A279318 n

end A279318

/-! ## A279318.P3801712565013185916

`A074306(xor(2, A074305(n)))`
-/

namespace A279318.P3801712565013185916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (Int.xor 2 (A074305 n)).toNat

end

end A279318.P3801712565013185916

namespace A279318

/-- `A074306(xor(2, A074305(n)))` -/
def P3801712565013185916.Spec : Prop :=
  ∀ n, P3801712565013185916.a n = A279318 n

end A279318

/-! ## A279318.P13316679262138577580

`A119910(A080030(n))+n`
-/

namespace A279318.P13316679262138577580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119910 (A080030 n).toNat + (n : ℤ)

end

end A279318.P13316679262138577580

namespace A279318

/-- `A119910(A080030(n))+n` -/
def P13316679262138577580.Spec : Prop :=
  ∀ n, P13316679262138577580.a n = A279318 n

end A279318

/-!
# A279319: Period 16 zigzag sequence: repeat [0,1,2,3,4,5,6,7,8,7,6,5,4,3,2,1].

The programs for A279319, the canonical program `A279319.P14291676352488474219` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279319 has offset 0).

The definition of A279319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279319.P14291676352488474219

`abs(n-16*round(n/16))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A279319

/-- `abs(n-16*round(n/16))` -/
def P14291676352488474219.Spec : Prop :=
  ∀ n, P14291676352488474219.a n = A279319 n

theorem P14291676352488474219.correct : P14291676352488474219.Spec := by
  intro n
  simp only [A279319]

end A279319

/-!
# A279320: Expansion of chi(-x^4) * psi(x^6) / phi(-x) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A279320, there is no canonical definition to state claims against.
-/

/-! ## A279320.P999308615982617951

`A309528(A326842(n))+A131945(2*n)`
-/

namespace A279320.P999308615982617951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309528 (A326842 n).toNat + A131945 (2 * n)

end

end A279320.P999308615982617951

/-! ## A279320.P15813549725539799192

`A131945(2*n)+A000007(A059479(n+1))`
-/

namespace A279320.P15813549725539799192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131945 (2 * n) + A000007 (A059479 (n + 1)).toNat

end

end A279320.P15813549725539799192

/-! ## A279320.P6320039645550951650

`A131945(2*n)^A350388(ceil((n-1/2)²))`
-/

namespace A279320.P6320039645550951650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131945 (2 * n) : ℚ) ^ (A350388 ⌈((n : ℚ) - (1 : ℚ) / 2) ^ 2⌉.toNat : ℤ)

end

end A279320.P6320039645550951650

/-! ## A279320.P15090626668313873662

`A131945(2*n)%A334332(n+1)`
-/

namespace A279320.P15090626668313873662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131945 (2 * n)) (A334332 (n + 1))

end

end A279320.P15090626668313873662

/-! ## A279320.P17983746981182989407

`A377028(A208481(n))`
-/

namespace A279320.P17983746981182989407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377028 (A208481 n).toNat

end

end A279320.P17983746981182989407

/-!
# A279321: Period 7: repeat [1, 3, 5, 7, 5, 3, 1].

The programs for A279321, the canonical program `A279321.P9481517395730797203` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279321 has offset 0).

The definition of A279321 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A279321.anchor (n : ℕ) : A279321 n = (([1, 3, 5, 7, 5, 3, 1].getD (n % 7) 0 : ℕ) : ℤ)` in `Proof.A279.A279321`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A279321.P9481517395730797203

`a(n-7)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=5, a(5)=3, a(6)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A279321

/-- `a(n-7)` -/
def P9481517395730797203.Spec : Prop :=
  ∀ n, (P9481517395730797203.a n : ℤ) = A279321 n

theorem P9481517395730797203.correct : P9481517395730797203.Spec := by
  intro n
  simp only [A279321]

end A279321

/-!
# A279322: Number of n X 1 0..2 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279322, the canonical program `A279322.P9487066948656547903` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279322 has offset 1).

The definition of A279322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279322.P2973204327792084285

`ogf((2x^2-4x^3-2x^4)/(1-4x+8x^3+4x^4))`
-/

namespace A279322.P2973204327792084285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -4, -2] [1, -4, 0, 8, 4] n

end

end A279322.P2973204327792084285

namespace A279322

/-- `ogf((2x^2-4x^3-2x^4)/(1-4x+8x^3+4x^4))` -/
def P2973204327792084285.Spec : Prop :=
  ∀ n, P2973204327792084285.a n = A279322 (n + 1)

end A279322

/-! ## A279322.P9487066948656547903

`4*a(n-1)-8*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=4, a(4)=14`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A279322

/-- `4*a(n-1)-8*a(n-3)-4*a(n-4)` -/
def P9487066948656547903.Spec : Prop :=
  ∀ n, P9487066948656547903.a n = A279322 (n + 1)

theorem P9487066948656547903.correct : P9487066948656547903.Spec := by
  intro n
  simp only [A279322, Nat.add_sub_cancel]

end A279322

/-! ## A279322.P6905720350744172640

`A279580(∑[n]+1)`
-/

namespace A279322.P6905720350744172640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279580 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279322.P6905720350744172640

namespace A279322

/-- `A279580(∑[n]+1)` -/
def P6905720350744172640.Spec : Prop :=
  ∀ n, P6905720350744172640.a n = A279322 (n + 1)

end A279322

/-! ## A279322.P15611102300835569277

`lcm(2, A279580(A000124(n)))`
-/

namespace A279322.P15611102300835569277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A279580 (A000124 n).toNat)

end

end A279322.P15611102300835569277

namespace A279322

/-- `lcm(2, A279580(A000124(n)))` -/
def P15611102300835569277.Spec : Prop :=
  ∀ n, (P15611102300835569277.a n : ℤ) = A279322 (n + 1)

end A279322

/-! ## A279322.P13149824844782714514

`A279527(∑[n]+1)`
-/

namespace A279322.P13149824844782714514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279527 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279322.P13149824844782714514

namespace A279322

/-- `A279527(∑[n]+1)` -/
def P13149824844782714514.Spec : Prop :=
  ∀ n, P13149824844782714514.a n = A279322 (n + 1)

end A279322

/-!
# A279323: Number of nX2 0..2 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279323, there is no canonical definition to state claims against.
-/

/-! ## A279323.P13594524267841609861

`A279327(∑[n+1]+2)`
-/

namespace A279323.P13594524267841609861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279323.P13594524267841609861

/-! ## A279323.P13600897119157953067

`A279327(A314940(n))%A007565(n)`
-/

namespace A279323.P13600897119157953067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279327 (A314940 n).toNat) (A007565 n)

end

end A279323.P13600897119157953067

/-!
# A279324: Number of nX3 0..2 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279324, there is no canonical definition to state claims against.
-/

/-! ## A279324.P15123334899143935338

`A279327(∑[n+2]+4)`
-/

namespace A279324.P15123334899143935338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279324.P15123334899143935338

/-! ## A279324.P13156737368201195063

`lcm(2, A279327(A167614(n+1)))`
-/

namespace A279324.P13156737368201195063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A279327 (A167614 (n + 1)).toNat)

end

end A279324.P13156737368201195063

/-! ## A279324.P5429596842642607604

`A279327(A167614(n+1))+A014083(n)`
-/

namespace A279324.P5429596842642607604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (A167614 (n + 1)).toNat + A014083 n

end

end A279324.P5429596842642607604

/-! ## A279324.P12924644806911642774

`A279327(A167614(n+1))+A036601(n)`
-/

namespace A279324.P12924644806911642774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (A167614 (n + 1)).toNat + A036601 n

end

end A279324.P12924644806911642774

/-! ## A279324.P2564754268305837452

`A279327(A167614(n+1))+A054900(n)`
-/

namespace A279324.P2564754268305837452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (A167614 (n + 1)).toNat + A054900 n

end

end A279324.P2564754268305837452

/-!
# A279325: Number of nX4 0..2 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279325, there is no canonical definition to state claims against.
-/

/-! ## A279325.P10537769168585694957

`A279327(A141214(n)+7)`
-/

namespace A279325.P10537769168585694957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (A141214 n + 7).toNat

end

end A279325.P10537769168585694957

/-! ## A279325.P11914075028420739525

`A279327(A052905(n)+9)`
-/

namespace A279325.P11914075028420739525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (A052905 n + 9).toNat

end

end A279325.P11914075028420739525

/-! ## A279325.P10818904510198115622

`A279327(A055999(n)+10)`
-/

namespace A279325.P10818904510198115622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (A055999 n + 10).toNat

end

end A279325.P10818904510198115622

/-! ## A279325.P2599264435138196538

`A279327(eq[5, A066657(n)])`
-/

namespace A279325.P2599264435138196538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279325.P2599264435138196538

/-! ## A279325.P10007735769219570781

`A279327(A167614(n+2)+1)`
-/

namespace A279325.P10007735769219570781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (A167614 (n + 2) + 1).toNat

end

end A279325.P10007735769219570781

/-!
# A279326: Number of nX5 0..2 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279326, there is no canonical definition to state claims against.
-/

/-! ## A279326.P9134980963180191165

`A279327(A167499(n+3))`
-/

namespace A279326.P9134980963180191165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (A167499 (n + 3)).toNat

end

end A279326.P9134980963180191165

/-! ## A279326.P13920550839379853201

`A279327(A155212(n)+13)`
-/

namespace A279326.P13920550839379853201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (A155212 n + 13).toNat

end

end A279326.P13920550839379853201

/-! ## A279326.P803512959667185486

`A279327(A056000(n)+15)`
-/

namespace A279326.P803512959667185486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (A056000 n + 15).toNat

end

end A279326.P803512959667185486

/-! ## A279326.P14851726080360269905

`A279327(eq[7, A066657(n)])`
-/

namespace A279326.P14851726080360269905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279326.P14851726080360269905

/-!
# A279328: Expansion of Product_{k>=1} (1 + x^(2*k)) / (1 - x^k).

The programs for A279328, there is no canonical definition to state claims against.
-/

/-! ## A279328.P8101170935425672341

`A067085(A316961(n)+1)`
-/

namespace A279328.P8101170935425672341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A316961 n + 1).toNat

end

end A279328.P8101170935425672341

/-! ## A279328.P9744978954703679468

`A067085(or(1, A316961(n)))`
-/

namespace A279328.P9744978954703679468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (Int.lor 1 (A316961 n)).toNat

end

end A279328.P9744978954703679468

/-! ## A279328.P18363846199535363753

`A067085(xor(2, A316961(n))-1)`
-/

namespace A279328.P18363846199535363753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (Int.xor 2 (A316961 n) - 1).toNat

end

end A279328.P18363846199535363753

/-! ## A279328.P5486644713319878971

`A128559(A226622(n))`
-/

namespace A279328.P5486644713319878971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128559 (A226622 n).toNat

end

end A279328.P5486644713319878971

/-! ## A279328.P14703459296988939090

`A369422(A066898(n+2))`
-/

namespace A279328.P14703459296988939090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369422 (A066898 (n + 2)).toNat

end

end A279328.P14703459296988939090

/-!
# A279329: Number of partitions of n into distinct cubes.

The programs for A279329, there is no canonical definition to state claims against.
-/

/-! ## A279329.P17667430028349894453

`A280130(abs(1-n))+A280130(n)`
-/

namespace A279329.P17667430028349894453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280130 |1 - (n : ℤ)|.toNat + A280130 n

end

end A279329.P17667430028349894453

/-! ## A279329.P10473696352623013243

`A034968(A331845(n))`
-/

namespace A279329.P10473696352623013243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A331845 n).toNat

end

end A279329.P10473696352623013243

/-! ## A279329.P11497275201841799194

`A055091(A331845(n)+A000007(n))`
-/

namespace A279329.P11497275201841799194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A331845 n + A000007 n).toNat

end

end A279329.P11497275201841799194

/-! ## A279329.P10039463722145451634

`gcd(A000038(n), A055091(A331845(n)))`
-/

namespace A279329.P10039463722145451634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A055091 (A331845 n).toNat)

end

end A279329.P10039463722145451634

/-! ## A279329.P11005089233326745679

`abs(A279484(n)%A059890(n+1))`
-/

namespace A279329.P11005089233326745679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A279484 n) (A059890 (n + 1))|

end

end A279329.P11005089233326745679

/-! ## A279329.P6187593717869261071

`lcm(A279484(n), A317937(A173971(2*(n+2))))`
-/

namespace A279329.P6187593717869261071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A279484 n) (A317937 (A173971 (2 * (n + 2))).toNat)

end

end A279329.P6187593717869261071

/-! ## A279329.P4127258934701333368

`lcm(A001222(A106282(n+1)), A279484(n))`
-/

namespace A279329.P4127258934701333368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A106282 (n + 1)).toNat) (A279484 n)

end

end A279329.P4127258934701333368

/-! ## A279329.P13229836974362294211

`A124764(lcm(6, A331845(n)))`
-/

namespace A279329.P13229836974362294211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (Int.lcm 6 (A331845 n))

end

end A279329.P13229836974362294211

/-! ## A279329.P11725919851625202836

`A001221(A080513(A331845(n)²))`
-/

namespace A279329.P11725919851625202836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A080513 (A331845 n ^ 2).toNat).toNat

end

end A279329.P11725919851625202836

/-! ## A279329.P3587905428000745455

`A001222(A125855(A331845(n)+1)-3)`
-/

namespace A279329.P3587905428000745455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A125855 (A331845 n + 1).toNat - 3).toNat

end

end A279329.P3587905428000745455

/-! ## A279329.P8319614332231423598

`A331847(A331844(3*A331845(n)))`
-/

namespace A279329.P8319614332231423598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331847 (A331844 (3 * A331845 n).toNat).toNat

end

end A279329.P8319614332231423598

/-! ## A279329.P13035299209176860368

`(A279484(n)^n)²`
-/

namespace A279329.P13035299209176860368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A279484 n ^ n) ^ 2

end

end A279329.P13035299209176860368

/-! ## A279329.P15096999048397785160

`A279484(n)^A000079(n)`
-/

namespace A279329.P15096999048397785160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279484 n : ℚ) ^ (A000079 n : ℤ)

end

end A279329.P15096999048397785160

/-! ## A279329.P1302136481228651502

`A279484(n)^A005843(n)`
-/

namespace A279329.P1302136481228651502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279484 n : ℚ) ^ (A005843 n : ℤ)

end

end A279329.P1302136481228651502

/-! ## A279329.P13745050840720493986

`A279484(n)^A007590(n)`
-/

namespace A279329.P13745050840720493986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279484 n : ℚ) ^ (A007590 n : ℤ)

end

end A279329.P13745050840720493986

/-! ## A279329.P4200052393500049751

`A279484(n)^A000578(2*n)`
-/

namespace A279329.P4200052393500049751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279484 n : ℚ) ^ (A000578 (2 * n) : ℤ)

end

end A279329.P4200052393500049751

/-! ## A279329.P12167183955326412723

`A279484(n)^A000009(n+5)`
-/

namespace A279329.P12167183955326412723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279484 n : ℚ) ^ (A000009 (n + 5) : ℤ)

end

end A279329.P12167183955326412723

/-! ## A279329.P10761773627347647145

`(A279484(n)^2)^A000041(n)`
-/

namespace A279329.P10761773627347647145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279484 n ^ 2 : ℚ) ^ (A000041 n : ℤ)

end

end A279329.P10761773627347647145

/-! ## A279329.P2299686601345959917

`A001222(A331845(n)²+1)^n`
-/

namespace A279329.P2299686601345959917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A331845 n ^ 2 + 1).toNat ^ n

end

end A279329.P2299686601345959917

/-! ## A279329.P15395808945435866669

`A124764(6*A331845(n))`
-/

namespace A279329.P15395808945435866669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (6 * A331845 n).toNat

end

end A279329.P15395808945435866669

/-!
# A279331: Denominators of coefficients in expansion of (cos(sqrt x))/(1 - x - x^2).

The programs for A279331, there is no canonical definition to state claims against.
-/

/-! ## A279331.P18007591526415859025

`A354378(n)/A354364(A075369(n+2))`
-/

namespace A279331.P18007591526415859025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354378 n : ℚ) / (A354364 (A075369 (n + 2)).toNat : ℚ)

end

end A279331.P18007591526415859025

/-! ## A279331.P4251808426477092648

`A354378(A029965(n+1))`
-/

namespace A279331.P4251808426477092648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354378 (A029965 (n + 1)).toNat

end

end A279331.P4251808426477092648

/-! ## A279331.P3358263389079590126

`lcm(A000005(n!), A354378(n))`
-/

namespace A279331.P3358263389079590126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (Nat.factorial n)) (A354378 n)

end

end A279331.P3358263389079590126

/-! ## A279331.P5091284779629001535

`A354378(A110734(n+1)-1)`
-/

namespace A279331.P5091284779629001535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354378 (A110734 (n + 1) - 1).toNat

end

end A279331.P5091284779629001535

/-! ## A279331.P11429219872986356064

`A354378(n^A304382(n+1))`
-/

namespace A279331.P11429219872986356064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354378 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A304382 (n + 1) : ℤ))).toNat

end

end A279331.P11429219872986356064

/-!
# A279332: Numerators of coefficients in expansion of (sin(x))/(1 - x - x^2).

The programs for A279332, there is no canonical definition to state claims against.
-/

/-! ## A279332.P1527017337990391579

`p?[A121268(n)]%A000984(n)`
-/

namespace A279332.P1527017337990391579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000984 n)

end

end A279332.P1527017337990391579

/-! ## A279332.P16895720992544567050

`xor(3, A185782(A223943(n+1)))`
-/

namespace A279332.P16895720992544567050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A185782 (A223943 (n + 1)).toNat)

end

end A279332.P16895720992544567050

/-!
# A279333: Denominators of coefficients in expansion of (sin(x))/(1 - x - x^2).

The programs for A279333, there is no canonical definition to state claims against.
-/

/-! ## A279333.P5101939466165880018

`A331167(n!/A249151(n))`
-/

namespace A279333.P5101939466165880018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331167 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A249151 n : ℚ))).toNat

end

end A279333.P5101939466165880018

/-! ## A279333.P8541812421362315426

`A004178(A000142(n)/A326062(n+1))`
-/

namespace A279333.P8541812421362315426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (SequenceMachineLib.roundAway ((A000142 n : ℚ) / (A326062 (n + 1) : ℚ))).toNat

end

end A279333.P8541812421362315426

/-! ## A279333.P16494382017129509301

`A028310(A000142(n)/A326062(n+1))`
-/

namespace A279333.P16494382017129509301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A000142 n : ℚ) / (A326062 (n + 1) : ℚ))).toNat

end

end A279333.P16494382017129509301

/-!
# A279334: Numerators of coefficients in expansion of exp(x)/(1 - x - x^2).

The programs for A279334, there is no canonical definition to state claims against.
-/

/-! ## A279334.P9270257064812466683

`A110313(n)/A000142(n)*A279335(n)`
-/

namespace A279334.P9270257064812466683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110313 n : ℚ) / (A000142 n : ℚ) * (A279335 n : ℚ)

end

end A279334.P9270257064812466683

/-! ## A279334.P17749727746376353558

`lcm(A005442(n), A110313(n))/A005442(n)`
-/

namespace A279334.P17749727746376353558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A005442 n) (A110313 n) : ℚ) / (A005442 n : ℚ)

end

end A279334.P17749727746376353558

/-! ## A279334.P15043482793782973977

`A332883(A110313(n))`
-/

namespace A279334.P15043482793782973977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332883 (A110313 n).toNat

end

end A279334.P15043482793782973977

/-!
# A279335: Denominators of coefficients in expansion of exp(x)/(1 - x - x^2).

The programs for A279335, there is no canonical definition to state claims against.
-/

/-! ## A279335.P17202772676856535490

`A000142(n)/A110313(n)*A279334(n)`
-/

namespace A279335.P17202772676856535490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A110313 n : ℚ) * (A279334 n : ℚ)

end

end A279335.P17202772676856535490

/-!
# A279336: Permutation of natural numbers: a(1) = 1; for n > 1, if A079559(n) = 0, a(n) = 2*A234016(n), otherwise a(n) = A003961(a(A213714(n))).

The programs for A279336, there is no canonical definition to state claims against.
-/

/-! ## A279336.P7262871300553697436

`A266645(A279338(n+1)^A340365(n+3))`
-/

namespace A279336.P7262871300553697436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (SequenceMachineLib.roundAway ((A279338 (n + 1) : ℚ) ^ (A340365 (n + 3) : ℤ))).toNat

end

end A279336.P7262871300553697436

/-!
# A279337: a(1) = 1, for n > 1, if n is even, a(n) = A055938(n/2), otherwise a(n) = A005187(a(A064989(n))).

The programs for A279337, there is no canonical definition to state claims against.
-/

/-! ## A279337.P8997080202711613762

`A143579(n+3)-A309858(A035041(n))`
-/

namespace A279337.P8997080202711613762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 (n + 3) - A309858 (A035041 n).toNat

end

end A279337.P8997080202711613762

/-! ## A279337.P11883672863589054277

`A331510(A331510(3*n+2))+A279125(2*n+1)`
-/

namespace A279337.P11883672863589054277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331510 (A331510 (3 * n + 2)).toNat + A279125 (2 * n + 1)

end

end A279337.P11883672863589054277

/-!
# A279338: a(1) = 1, for n > 1, if A079559(n) = 0, a(n) = 2*a(A256992(n)), otherwise a(n) = A003961(a(A256992(n))).

The programs for A279338, there is no canonical definition to state claims against.
-/

/-! ## A279338.P2303883843714275574

`A005940(1+A279343(n+1))`
-/

namespace A279338.P2303883843714275574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A279343 (n + 1)).toNat

end

end A279338.P2303883843714275574

/-! ## A279338.P2581739510481718834

`A163511(A279341(n+1))`
-/

namespace A279338.P2581739510481718834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A279341 (n + 1)).toNat

end

end A279338.P2581739510481718834

/-! ## A279338.P8373028077130612508

`A250246(A279348(n+1))`
-/

namespace A279338.P8373028077130612508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A279348 (n + 1)).toNat

end

end A279338.P8373028077130612508

/-! ## A279338.P39102143072934007

`A163511(A279343(A279347(n+1)))`
-/

namespace A279338.P39102143072934007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A279343 (A279347 (n + 1)).toNat).toNat

end

end A279338.P39102143072934007

/-! ## A279338.P15659588272995108795

`A250250(A005843(A279348(n+1))/2)`
-/

namespace A279338.P15659588272995108795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (SequenceMachineLib.roundAway ((A005843 (A279348 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A279338.P15659588272995108795

/-! ## A279338.P1821113456026577821

`A250250(A279348(n+1)%A167499(n))`
-/

namespace A279338.P1821113456026577821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (Int.tmod (A279348 (n + 1)) (A167499 n)).toNat

end

end A279338.P1821113456026577821

/-! ## A279338.P6070915632661850239

`A250250(abs(A279348(n+1)-A000038(n)))`
-/

namespace A279338.P6070915632661850239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 |A279348 (n + 1) - A000038 n|.toNat

end

end A279338.P6070915632661850239

/-! ## A279338.P12298725993095561044

`A250250(A107286(A096915(n+1))*A279348(n+1))`
-/

namespace A279338.P12298725993095561044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (A107286 (A096915 (n + 1)).toNat * A279348 (n + 1)).toNat

end

end A279338.P12298725993095561044

/-!
# A279339: a(1) = 1; for n > 1, if n is even, a(n) = A055938(a(n/2)), otherwise a(n) = A005187(a(A064989(n))).

The programs for A279339, there is no canonical definition to state claims against.
-/

/-! ## A279339.P14846273464433055702

`A279344(A156552(n+1))`
-/

namespace A279339.P14846273464433055702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279344 (A156552 (n + 1)).toNat

end

end A279339.P14846273464433055702

/-! ## A279339.P16197963667592198220

`A279342(A243071(n+1))`
-/

namespace A279339.P16197963667592198220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279342 (A243071 (n + 1)).toNat

end

end A279339.P16197963667592198220

/-! ## A279339.P303274828888047194

`A279349(A250245(n+1))`
-/

namespace A279339.P303274828888047194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279349 (A250245 (n + 1)).toNat

end

end A279339.P303274828888047194

/-! ## A279339.P4676774227044237638

`A279349(A250249(n+1))`
-/

namespace A279339.P4676774227044237638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279349 (A250249 (n + 1)).toNat

end

end A279339.P4676774227044237638

/-! ## A279339.P9479527106646853306

`A279349(A280495(2*(n+1)))`
-/

namespace A279339.P9479527106646853306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279349 (A280495 (2 * (n + 1))).toNat

end

end A279339.P9479527106646853306

/-!
# A279340: First differences of A055938.

The programs for A279340, the canonical program `A279340.P3137699239334451419` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279340 has offset 1).

The definition of A279340 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055938, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A279340.P4208323138589372614

`2*A079559(n+1)+1`
-/

namespace A279340.P4208323138589372614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079559 (n + 1) + 1

end

end A279340.P4208323138589372614

namespace A279340

/-- `2*A079559(n+1)+1` -/
def P4208323138589372614.Spec : Prop :=
  ∀ n, P4208323138589372614.a n = A279340 (n + 1)

end A279340

/-! ## A279340.P3137699239334451419

`A055938(n+2)-A055938(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A279340

/-- `A055938(n+2)-A055938(n+1)` -/
def P3137699239334451419.Spec : Prop :=
  ∀ n, P3137699239334451419.a n = A279340 (n + 1)

theorem P3137699239334451419.correct : P3137699239334451419.Spec := by
  intro n
  simp only [A279340, Nat.add_sub_cancel]

end A279340

/-! ## A279340.P505923315770011859

`Δ[comp[A005187(n)]]`
-/

namespace A279340.P505923315770011859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A279340.P505923315770011859

namespace A279340

/-- `Δ[comp[A005187(n)]]` -/
def P505923315770011859.Spec : Prop :=
  ∀ n, P505923315770011859.a n = A279340 (n + 1)

end A279340

/-! ## A279340.P11282482201514997225

`C(3, A257265(n+1))`
-/

namespace A279340.P11282482201514997225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A257265 (n + 1)).toNat

end

end A279340.P11282482201514997225

namespace A279340

/-- `C(3, A257265(n+1))` -/
def P11282482201514997225.Spec : Prop :=
  ∀ n, (P11282482201514997225.a n : ℤ) = A279340 (n + 1)

end A279340

/-! ## A279340.P12488932002376265196

`Δ[A080468(n+2)]+2`
-/

namespace A279340.P12488932002376265196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A279340.P12488932002376265196

namespace A279340

/-- `Δ[A080468(n+2)]+2` -/
def P12488932002376265196.Spec : Prop :=
  ∀ n, P12488932002376265196.a n = A279340 (n + 1)

end A279340

/-! ## A279340.P1199965500752311265

`3^Δ[A046699(n+2)]`
-/

namespace A279340.P1199965500752311265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A279340.P1199965500752311265

namespace A279340

/-- `3^Δ[A046699(n+2)]` -/
def P1199965500752311265.Spec : Prop :=
  ∀ n, P1199965500752311265.a n = (A279340 (n + 1) : ℚ)

end A279340

/-! ## A279340.P14837824991963733371

`2*char[A283208(n)]+1`
-/

namespace A279340.P14837824991963733371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283208 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A279340.P14837824991963733371

namespace A279340

/-- `2*char[A283208(n)]+1` -/
def P14837824991963733371.Spec : Prop :=
  ∀ n, (P14837824991963733371.a n : ℤ) = A279340 (n + 1)

end A279340

/-! ## A279340.P5586701185296166118

`3-2*A308187(n+2)`
-/

namespace A279340.P5586701185296166118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A308187 (n + 2)

end

end A279340.P5586701185296166118

namespace A279340

/-- `3-2*A308187(n+2)` -/
def P5586701185296166118.Spec : Prop :=
  ∀ n, P5586701185296166118.a n = A279340 (n + 1)

end A279340

/-! ## A279340.P10416899983360935615

`3^(2-A308188(n+2))`
-/

namespace A279340.P10416899983360935615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (2 - A308188 (n + 2) : ℤ)

end

end A279340.P10416899983360935615

namespace A279340

/-- `3^(2-A308188(n+2))` -/
def P10416899983360935615.Spec : Prop :=
  ∀ n, P10416899983360935615.a n = (A279340 (n + 1) : ℚ)

end A279340

/-! ## A279340.P11257830407992362059

`A010684(A123390(n+1))`
-/

namespace A279340.P11257830407992362059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A123390 (n + 1)).toNat

end

end A279340.P11257830407992362059

namespace A279340

/-- `A010684(A123390(n+1))` -/
def P11257830407992362059.Spec : Prop :=
  ∀ n, P11257830407992362059.a n = A279340 (n + 1)

end A279340

/-! ## A279340.P17894057103024924993

`A001051(A240755(n+1))`
-/

namespace A279340.P17894057103024924993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001051 (A240755 (n + 1)).toNat

end

end A279340.P17894057103024924993

namespace A279340

/-- `A001051(A240755(n+1))` -/
def P17894057103024924993.Spec : Prop :=
  ∀ n, P17894057103024924993.a n = A279340 (n + 1)

end A279340

/-! ## A279340.P6458780491199695285

`A230432(Δ[A046699(n+2)]+1)`
-/

namespace A279340.P6458780491199695285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230432 (f1 (n + 1) - f1 n + 1).toNat

end

end A279340.P6458780491199695285

namespace A279340

/-- `A230432(Δ[A046699(n+2)]+1)` -/
def P6458780491199695285.Spec : Prop :=
  ∀ n, P6458780491199695285.a n = A279340 (n + 1)

end A279340

/-! ## A279340.P12945335117338287206

`A005187(A082850(A089279(A101925(A082850(n+2)))))`
-/

namespace A279340.P12945335117338287206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A082850 (A089279 (A101925 (A082850 (n + 2)).toNat).toNat).toNat).toNat

end

end A279340.P12945335117338287206

namespace A279340

/-- `A005187(A082850(A089279(A101925(A082850(n+2)))))` -/
def P12945335117338287206.Spec : Prop :=
  ∀ n, P12945335117338287206.a n = A279340 (n + 1)

end A279340

/-! ## A279340.P681668036400080118

`Δ[A045412(n+1)]`
-/

namespace A279340.P681668036400080118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279340.P681668036400080118

namespace A279340

/-- `Δ[A045412(n+1)]` -/
def P681668036400080118.Spec : Prop :=
  ∀ n, P681668036400080118.a n = A279340 (n + 1)

theorem P681668036400080118.correct : P681668036400080118.Spec := by
  intro n
  simp only [A279340, Nat.add_sub_cancel, A279340.P681668036400080118.f1, A279340.P681668036400080118.a, A279340.P3137699239334451419.a, A045412, A045412.P17699345519846233104.f1, A045412.P17699345519846233104.a, A055938, A055938.P11436454756649086681.a, A079559, A079559.P6833565121082423031.a, A043545, A043545.P6199121594405564387.a, A053644, A053644.P1707366427427647095.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A279340

/-! ## A279340.P10170324426835453309

`Δ[A055938(n+1)]`
-/

namespace A279340.P10170324426835453309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279340.P10170324426835453309

namespace A279340

/-- `Δ[A055938(n+1)]` -/
def P10170324426835453309.Spec : Prop :=
  ∀ n, P10170324426835453309.a n = A279340 (n + 1)

theorem P10170324426835453309.correct : P10170324426835453309.Spec := by
  intro n
  simp only [A279340, Nat.add_sub_cancel, A279340.P10170324426835453309.f1, A279340.P10170324426835453309.a, A279340.P3137699239334451419.a, SequenceMachineLib.memo_apply]

end A279340

/-! ## A279340.P3546393674621158293

`Δ[A100661(n+1)]+2`
-/

namespace A279340.P3546393674621158293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A279340.P3546393674621158293

namespace A279340

/-- `Δ[A100661(n+1)]+2` -/
def P3546393674621158293.Spec : Prop :=
  ∀ n, P3546393674621158293.a n = A279340 (n + 1)

end A279340

/-! ## A279340.P13822700026556199365

`A010159(A182105(n+2))`
-/

namespace A279340.P13822700026556199365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010159 (A182105 (n + 2)).toNat

end

end A279340.P13822700026556199365

namespace A279340

/-- `A010159(A182105(n+2))` -/
def P13822700026556199365.Spec : Prop :=
  ∀ n, P13822700026556199365.a n = A279340 (n + 1)

end A279340

/-! ## A279340.P9727217133307135893

`A038712(A182105(n+2)+1)`
-/

namespace A279340.P9727217133307135893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A182105 (n + 2) + 1).toNat

end

end A279340.P9727217133307135893

namespace A279340

/-- `A038712(A182105(n+2)+1)` -/
def P9727217133307135893.Spec : Prop :=
  ∀ n, P9727217133307135893.a n = A279340 (n + 1)

end A279340

/-! ## A279340.P1074494639721798091

`A045412(n+2)-A045412(n+1)`
-/

namespace A279340.P1074494639721798091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045412 (n + 2) - A045412 (n + 1)

end

end A279340.P1074494639721798091

namespace A279340

/-- `A045412(n+2)-A045412(n+1)` -/
def P1074494639721798091.Spec : Prop :=
  ∀ n, P1074494639721798091.a n = A279340 (n + 1)

theorem P1074494639721798091.correct : P1074494639721798091.Spec := by
  intro n
  simp only [A279340, Nat.add_sub_cancel, A279340.P1074494639721798091.a, A279340.P3137699239334451419.a, A045412, A045412.P17699345519846233104.f1, A045412.P17699345519846233104.a, A055938, A055938.P11436454756649086681.a, A079559, A079559.P6833565121082423031.a, A043545, A043545.P6199121594405564387.a, A053644, A053644.P1707366427427647095.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A279340

/-! ## A279340.P14746551673561015462

`A001511(n+2)+A257126(n+2)-A257126(n+1)`
-/

namespace A279340.P14746551673561015462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 2) + (A257126 (n + 2) - A257126 (n + 1))

end

end A279340.P14746551673561015462

namespace A279340

/-- `A001511(n+2)+A257126(n+2)-A257126(n+1)` -/
def P14746551673561015462.Spec : Prop :=
  ∀ n, P14746551673561015462.a n = A279340 (n + 1)

end A279340

/-! ## A279340.P10956385102392186864

`Δ[comp[∑[val(n+1, 2)]]]`
-/

namespace A279340.P10956385102392186864
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A279340.P10956385102392186864

namespace A279340

/-- `Δ[comp[∑[val(n+1, 2)]]]` -/
def P10956385102392186864.Spec : Prop :=
  ∀ n, P10956385102392186864.a n = A279340 (n + 1)

end A279340

/-!
# A279341: a(1) = 0, a(2) = 1, for n > 2, if A079559(n) = 0, a(n) = 2*a(A256992(n)), otherwise a(n) = 1 + 2*a(A256992(n)).

The programs for A279341, there is no canonical definition to state claims against.
-/

/-! ## A279341.P13541383811774593786

`A279343(A279347(n+1))`
-/

namespace A279341.P13541383811774593786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279343 (A279347 (n + 1)).toNat

end

end A279341.P13541383811774593786

/-! ## A279341.P1176254222023229439

`A243071(A279338(n+1))`
-/

namespace A279341.P1176254222023229439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A279338 (n + 1)).toNat

end

end A279341.P1176254222023229439

/-! ## A279341.P4195353008837295386

`A279343(A279342(A279343(n+1)))`
-/

namespace A279341.P4195353008837295386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279343 (A279342 (A279343 (n + 1)).toNat).toNat

end

end A279341.P4195353008837295386

/-! ## A279341.P2846908914541946050

`A252756(A279348(n+1))`
-/

namespace A279341.P2846908914541946050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (A279348 (n + 1)).toNat

end

end A279341.P2846908914541946050

/-! ## A279341.P15203804681596852833

`∑{d}[A279338(n+1), A297171(#)]`
-/

namespace A279341.P15203804681596852833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297171 d

end

end A279341.P15203804681596852833

/-! ## A279341.P9818978477516806916

`∑{d}[A163511(A279343(n+1)), A297112(#)]`
-/

namespace A279341.P9818978477516806916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A279343 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297112 d

end

end A279341.P9818978477516806916

/-!
# A279342: a(0) = 1, a(1) = 2, a(2n) = A055938(a(n)), a(2n+1) = A005187(a(n)).

The programs for A279342, there is no canonical definition to state claims against.
-/

/-! ## A279342.P14278103988059720989

`A279347(A279344(n))`
-/

namespace A279342.P14278103988059720989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279347 (A279344 n).toNat

end

end A279342.P14278103988059720989

/-! ## A279342.P8602118083291481090

`A279339(A163511(n))`
-/

namespace A279342.P8602118083291481090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279339 (A163511 n).toNat

end

end A279342.P8602118083291481090

/-! ## A279342.P12072848920032153817

`A279344(A337909(n+1)-1)`
-/

namespace A279342.P12072848920032153817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279344 (A337909 (n + 1) - 1).toNat

end

end A279342.P12072848920032153817

/-! ## A279342.P17723376250056327997

`A279344(A286548(n)+A180201(n))`
-/

namespace A279342.P17723376250056327997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279344 (A286548 n + A180201 n).toNat

end

end A279342.P17723376250056327997

/-! ## A279342.P2510799744060744861

`A279344(A286546(n)+A233279(n))`
-/

namespace A279342.P2510799744060744861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279344 (A286546 n + A233279 n).toNat

end

end A279342.P2510799744060744861

/-! ## A279342.P3452290903841149395

`A279344(xor(A004526(n), A180201(n)))`
-/

namespace A279342.P3452290903841149395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279344 (Int.xor (A004526 n) (A180201 n)).toNat

end

end A279342.P3452290903841149395

/-! ## A279342.P2437688477183687924

`A279344(A234025(xor(n, A280507(n))))`
-/

namespace A279342.P2437688477183687924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279344 (A234025 (Int.xor (n : ℤ) (A280507 n)).toNat).toNat

end

end A279342.P2437688477183687924

/-! ## A279342.P13307105287768822006

`A279344(xor(A233279(n), A292600(n)))`
-/

namespace A279342.P13307105287768822006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279344 (Int.xor (A233279 n) (A292600 n)).toNat

end

end A279342.P13307105287768822006

/-! ## A279342.P2773702891344688693

`A279344(A279341(A279344(n)%A055938(n+1)))`
-/

namespace A279342.P2773702891344688693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279344 (A279341 (Int.tmod (A279344 n) (A055938 (n + 1))).toNat).toNat

end

end A279342.P2773702891344688693

/-! ## A279342.P10329151814493828783

`A279344(A279341(A256992(A279344(2*n))))`
-/

namespace A279342.P10329151814493828783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279344 (A279341 (A256992 (A279344 (2 * n)).toNat).toNat).toNat

end

end A279342.P10329151814493828783

/-! ## A279342.P5680210140664228943

`A256992(A279344(A054429(2*n+1)))`
-/

namespace A279342.P5680210140664228943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256992 (A279344 (A054429 (2 * n + 1)).toNat).toNat

end

end A279342.P5680210140664228943

/-! ## A279342.P2014617529865656196

`A279344(A279341(A234017(A279344(2*n+1))))`
-/

namespace A279342.P2014617529865656196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279344 (A279341 (A234017 (A279344 (2 * n + 1)).toNat).toNat).toNat

end

end A279342.P2014617529865656196

/-!
# A279343: a(1) = 0, and for n > 1, if A079559(n) = 0, a(n) = 1 + 2*a(A256992(n)), otherwise a(n) = 2*a(A256992(n)).

The programs for A279343, there is no canonical definition to state claims against.
-/

/-! ## A279343.P15126019340818645262

`A279341(A279347(n+1))`
-/

namespace A279343.P15126019340818645262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279341 (A279347 (n + 1)).toNat

end

end A279343.P15126019340818645262

/-! ## A279343.P5273179686738593181

`A156552(A279338(n+1))`
-/

namespace A279343.P5273179686738593181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A279338 (n + 1)).toNat

end

end A279343.P5273179686738593181

/-! ## A279343.P4160707246919325001

`A279341(A279344(A279341(n+1)))`
-/

namespace A279343.P4160707246919325001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279341 (A279344 (A279341 (n + 1)).toNat).toNat

end

end A279343.P4160707246919325001

/-! ## A279343.P16650707428910247253

`A252754(A279348(n+1))`
-/

namespace A279343.P16650707428910247253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (A279348 (n + 1)).toNat

end

end A279343.P16650707428910247253

/-! ## A279343.P13550044909141264549

`∑{d}[A279338(n+1), A297112(#)]`
-/

namespace A279343.P13550044909141264549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297112 d

end

end A279343.P13550044909141264549

/-!
# A279344: a(0) = 1, a(2n) = A005187(a(n)), a(2n+1) = A055938(a(n)).

The programs for A279344, there is no canonical definition to state claims against.
-/

/-! ## A279344.P9259537388384607002

`A279347(A279342(n))`
-/

namespace A279344.P9259537388384607002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279347 (A279342 n).toNat

end

end A279344.P9259537388384607002

/-! ## A279344.P9868787130305841492

`A279339(A005940(1+n))`
-/

namespace A279344.P9868787130305841492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279339 (A005940 (1 + n)).toNat

end

end A279344.P9868787130305841492

/-! ## A279344.P11588171764685658314

`A256992(A279342(A054429(2*n+1)))`
-/

namespace A279344.P11588171764685658314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256992 (A279342 (A054429 (2 * n + 1)).toNat).toNat

end

end A279344.P11588171764685658314

/-! ## A279344.P13024458340462651337

`A279342(A279343(A256992(A279342(2*n))))`
-/

namespace A279344.P13024458340462651337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279342 (A279343 (A256992 (A279342 (2 * n)).toNat).toNat).toNat

end

end A279344.P13024458340462651337

/-! ## A279344.P13723133668890685461

`A279342(A279343(A279342(n))%A055938(n+1))`
-/

namespace A279344.P13723133668890685461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279342 (Int.tmod (A279343 (A279342 n).toNat) (A055938 (n + 1))).toNat

end

end A279344.P13723133668890685461

/-! ## A279344.P4059570743775421169

`A279342(A337909(n+1)+A057428(3*n+4))`
-/

namespace A279344.P4059570743775421169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279342 (A337909 (n + 1) + A057428 (3 * n + 4)).toNat

end

end A279344.P4059570743775421169

/-! ## A279344.P10758454519433534892

`A234017(A279342(A279343(A279342(2*n+1))))`
-/

namespace A279344.P10758454519433534892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 (A279342 (A279343 (A279342 (2 * n + 1)).toNat).toNat).toNat

end

end A279344.P10758454519433534892

/-! ## A279344.P4680653041494472929

`A279342(A279343(A279342(A156552(A005940(n+1)))))`
-/

namespace A279344.P4680653041494472929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279342 (A279343 (A279342 (A156552 (A005940 (n + 1)).toNat).toNat).toNat).toNat

end

end A279344.P4680653041494472929

/-! ## A279344.P7091624759663511733

`A279342(A156552(A163511(n)))`
-/

namespace A279344.P7091624759663511733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279342 (A156552 (A163511 n).toNat).toNat

end

end A279344.P7091624759663511733

/-!
# A279345: a(n) = A000120(A279341(n)).

The programs for A279345, there is no canonical definition to state claims against.
-/

/-! ## A279345.P12563696860140144396

`A000120(A279341(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A279345.P12563696860140144396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A279341 (n + 1)).toNat

end

end A279345.P12563696860140144396

/-! ## A279345.P4760885563329436288

`A279346(A279347(n+1))`
-/

namespace A279345.P4760885563329436288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279346 (A279347 (n + 1)).toNat

end

end A279345.P4760885563329436288

/-! ## A279345.P13573980916185372523

`A290251(A279343(1+n))`
-/

namespace A279345.P13573980916185372523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A279343 (1 + n)).toNat

end

end A279345.P13573980916185372523

/-! ## A279345.P9308701341548263312

`A256993(n+1)-A080791(A279341(n+1))`
-/

namespace A279345.P9308701341548263312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256993 (n + 1) - A080791 (A279341 (n + 1)).toNat

end

end A279345.P9308701341548263312

/-! ## A279345.P4158439482320274409

`A080791(2*A279343(n+1))`
-/

namespace A279345.P4158439482320274409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * A279343 (n + 1)).toNat

end

end A279345.P4158439482320274409

/-! ## A279345.P2412668425002019713

`A080791(A279343(A005187(n+1)))`
-/

namespace A279345.P2412668425002019713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A279343 (A005187 (n + 1)).toNat).toNat

end

end A279345.P2412668425002019713

/-! ## A279345.P1686679803612223108

`A080791(A279343(n+1)+A279343(n+1))`
-/

namespace A279345.P1686679803612223108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A279343 (n + 1) + A279343 (n + 1)).toNat

end

end A279345.P1686679803612223108

/-! ## A279345.P10495209426227174515

`A048881(2*A279341(n+1))`
-/

namespace A279345.P10495209426227174515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A279341 (n + 1)).toNat

end

end A279345.P10495209426227174515

/-! ## A279345.P918979255464405254

`A048881(A279341(n+1)+A279341(n+1))`
-/

namespace A279345.P918979255464405254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A279341 (n + 1) + A279341 (n + 1)).toNat

end

end A279345.P918979255464405254

/-! ## A279345.P9345135987697174660

`A279346(A279344(A279341(A279341(A279342(n+1)))))`
-/

namespace A279345.P9345135987697174660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279346 (A279344 (A279341 (A279341 (A279342 (n + 1)).toNat).toNat).toNat).toNat

end

end A279345.P9345135987697174660

/-! ## A279345.P4655761895710611706

`A279346(A279344(A279341(A279343(A279344(n+1)))))`
-/

namespace A279345.P4655761895710611706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279346 (A279344 (A279341 (A279343 (A279344 (n + 1)).toNat).toNat).toNat).toNat

end

end A279345.P4655761895710611706

/-! ## A279345.P3266260710324279948

`A253558(A279348(n+1))%(n+1)`
-/

namespace A279345.P3266260710324279948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253558 (A279348 (n + 1)).toNat) (n + 1 : ℤ)

end

end A279345.P3266260710324279948

/-! ## A279345.P4859169250894236246

`A061395(A279338(n+1))`
-/

namespace A279345.P4859169250894236246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A279338 (n + 1)).toNat

end

end A279345.P4859169250894236246

/-!
# A279346: a(n) = A000120(A279343(n)).

The programs for A279346, there is no canonical definition to state claims against.
-/

/-! ## A279346.P3227601197284239107

`A000120(A279343(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A279346.P3227601197284239107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A279343 (n + 1)).toNat

end

end A279346.P3227601197284239107

/-! ## A279346.P6423850845035552431

`A279345(A279347(n+1))`
-/

namespace A279346.P6423850845035552431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279345 (A279347 (n + 1)).toNat

end

end A279346.P6423850845035552431

/-! ## A279346.P2332412124890527225

`∑{e}[A278502(n+1), #]`
-/

namespace A279346.P2332412124890527225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A279346.P2332412124890527225

/-! ## A279346.P17827301138546265252

`A290251(A279341(n+1))`
-/

namespace A279346.P17827301138546265252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A279341 (n + 1)).toNat

end

end A279346.P17827301138546265252

/-! ## A279346.P14408153971463711720

`A001222(A001316(4*A279343(n+1)))`
-/

namespace A279346.P14408153971463711720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (4 * A279343 (n + 1)).toNat).toNat

end

end A279346.P14408153971463711720

/-! ## A279346.P147490888519202491

`A256993(n+1)-A080791(A279343(n+1))`
-/

namespace A279346.P147490888519202491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256993 (n + 1) - A080791 (A279343 (n + 1)).toNat

end

end A279346.P147490888519202491

/-! ## A279346.P2304810456157451408

`A001222(A278502(n+1))`
-/

namespace A279346.P2304810456157451408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278502 (n + 1)).toNat

end

end A279346.P2304810456157451408

/-! ## A279346.P15636333912943249057

`A256993(A005187(n+1))-A279345(n+1)`
-/

namespace A279346.P15636333912943249057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256993 (A005187 (n + 1)).toNat - A279345 (n + 1)

end

end A279346.P15636333912943249057

/-! ## A279346.P6714855531792220065

`A080791(2*A279341(n+1))`
-/

namespace A279346.P6714855531792220065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * A279341 (n + 1)).toNat

end

end A279346.P6714855531792220065

/-! ## A279346.P5717490761856258924

`A080791(A279341(A055938(n+1)))`
-/

namespace A279346.P5717490761856258924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A279341 (A055938 (n + 1)).toNat).toNat

end

end A279346.P5717490761856258924

/-! ## A279346.P2890234033539939513

`A080791(A279341(n+1)+A279341(n+1))`
-/

namespace A279346.P2890234033539939513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A279341 (n + 1) + A279341 (n + 1)).toNat

end

end A279346.P2890234033539939513

/-! ## A279346.P14259512164674936468

`A279345(A279342(A279343(A279341(A279342(n+1)))))`
-/

namespace A279346.P14259512164674936468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279345 (A279342 (A279343 (A279341 (A279342 (n + 1)).toNat).toNat).toNat).toNat

end

end A279346.P14259512164674936468

/-! ## A279346.P11675856389635880309

`A279345(A279342(A279343(A279343(A279344(n+1)))))`
-/

namespace A279346.P11675856389635880309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279345 (A279342 (A279343 (A279343 (A279344 (n + 1)).toNat).toNat).toNat).toNat

end

end A279346.P11675856389635880309

/-! ## A279346.P8753090200490253668

`∑{e}[A279338(n+1), #]`
-/

namespace A279346.P8753090200490253668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A279346.P8753090200490253668

/-! ## A279346.P12064504664925680098

`A253557(A279348(n+1))`
-/

namespace A279346.P12064504664925680098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (A279348 (n + 1)).toNat

end

end A279346.P12064504664925680098

/-! ## A279346.P15866615965554952949

`A279345(A279342(A279343(A005187(n+1))))`
-/

namespace A279346.P15866615965554952949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279345 (A279342 (A279343 (A005187 (n + 1)).toNat).toNat).toNat

end

end A279346.P15866615965554952949

/-! ## A279346.P6857538087211770236

`A001222(A279338(n+1))`
-/

namespace A279346.P6857538087211770236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A279338 (n + 1)).toNat

end

end A279346.P6857538087211770236

/-! ## A279346.P11815388611689812747

`A253559(2*A279348(n+1))`
-/

namespace A279346.P11815388611689812747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253559 (2 * A279348 (n + 1)).toNat

end

end A279346.P11815388611689812747

/-!
# A279347: Self-inverse permutation of natural numbers: a(1) = 1, a(2) = 2, a(A055938(n)) = A005187(a(n)), a(A005187(n)) = A055938(a(n)).

The programs for A279347, there is no canonical definition to state claims against.
-/

/-! ## A279347.P12555292216820241753

`A279344(A279341(n+1))`
-/

namespace A279347.P12555292216820241753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279344 (A279341 (n + 1)).toNat

end

end A279347.P12555292216820241753

/-! ## A279347.P6031728986478121679

`A279342(A279343(n+1))`
-/

namespace A279347.P6031728986478121679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279342 (A279343 (n + 1)).toNat

end

end A279347.P6031728986478121679

/-! ## A279347.P8102509170048118250

`A279342(A252754(A279348(n+1)))`
-/

namespace A279347.P8102509170048118250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279342 (A252754 (A279348 (n + 1)).toNat).toNat

end

end A279347.P8102509170048118250

/-! ## A279347.P13326959843963338964

`A279342(A156552(A279338(n+1)))`
-/

namespace A279347.P13326959843963338964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279342 (A156552 (A279338 (n + 1)).toNat).toNat

end

end A279347.P13326959843963338964

/-! ## A279347.P4242133985501139651

`A279342(∑{d}[A279338(n+1), A297112(#)])`
-/

namespace A279347.P4242133985501139651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279342 (∑ d ∈ Nat.divisors (f1 n).natAbs, A297112 d).toNat

end

end A279347.P4242133985501139651

/-! ## A279347.P8591666482472926702

`A279344(A243071(A279338(A279338(A279339(n+1)))))`
-/

namespace A279347.P8591666482472926702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279344 (A243071 (A279338 (A279338 (A279339 (n + 1)).toNat).toNat).toNat).toNat

end

end A279347.P8591666482472926702

/-!
# A279348: a(1) = 1, for n > 1, if A079559(n) = 0, a(n) = 2*a(A256992(n)), otherwise a(n) = A250469(a(A256992(n))).

The programs for A279348, there is no canonical definition to state claims against.
-/

/-! ## A279348.P11175548780572105241

`A252753(A279343(n+1))`
-/

namespace A279348.P11175548780572105241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (A279343 (n + 1)).toNat

end

end A279348.P11175548780572105241

/-! ## A279348.P4638331320998272792

`A252755(A279341(n+1))`
-/

namespace A279348.P4638331320998272792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 (A279341 (n + 1)).toNat

end

end A279348.P4638331320998272792

/-! ## A279348.P8829216470009719280

`A250245(A279338(n+1))`
-/

namespace A279348.P8829216470009719280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (A279338 (n + 1)).toNat

end

end A279348.P8829216470009719280

/-! ## A279348.P11633999678270028200

`A280495(2*A279338(n+1))`
-/

namespace A279348.P11633999678270028200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280495 (2 * A279338 (n + 1)).toNat

end

end A279348.P11633999678270028200

/-! ## A279348.P8238826941383679680

`A280495(A279338(n+1)+A279338(n+1))`
-/

namespace A279348.P8238826941383679680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280495 (A279338 (n + 1) + A279338 (n + 1)).toNat

end

end A279348.P8238826941383679680

/-! ## A279348.P6025755581364376108

`A250249(A279338(n+1))%A004771(n)`
-/

namespace A279348.P6025755581364376108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250249 (A279338 (n + 1)).toNat) (A004771 n)

end

end A279348.P6025755581364376108

/-! ## A279348.P18048934279550220404

`A250249(A279338(n+1)%A014206(n))`
-/

namespace A279348.P18048934279550220404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250249 (Int.tmod (A279338 (n + 1)) (A014206 n)).toNat

end

end A279348.P18048934279550220404

/-! ## A279348.P5710438271966443668

`A250249(or(A000007(n), A279338(n+1)))`
-/

namespace A279348.P5710438271966443668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250249 (Int.lor (A000007 n) (A279338 (n + 1))).toNat

end

end A279348.P5710438271966443668

/-!
# A279349: a(1) = 1, for n > 1, if n is even, a(n) = A055938(a(n/2)), otherwise a(n) = A005187(a(A268674(n))).

The programs for A279349, there is no canonical definition to state claims against.
-/

/-! ## A279349.P4058326601942059769

`A279339(A250246(n+1))`
-/

namespace A279349.P4058326601942059769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279339 (A250246 (n + 1)).toNat

end

end A279349.P4058326601942059769

/-! ## A279349.P15007896159865902916

`A279344(A252754(n+1))`
-/

namespace A279349.P15007896159865902916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279344 (A252754 (n + 1)).toNat

end

end A279349.P15007896159865902916

/-! ## A279349.P6724289814264409184

`A279342(A252756(n+1))`
-/

namespace A279349.P6724289814264409184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279342 (A252756 (n + 1)).toNat

end

end A279349.P6724289814264409184

/-! ## A279349.P4134081631923864308

`A279339(A280496(2*(n+1)))`
-/

namespace A279349.P4134081631923864308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279339 (A280496 (2 * (n + 1))).toNat

end

end A279349.P4134081631923864308

/-! ## A279349.P14034840105971407472

`A279339(A324545(n+1)-A324535(n+1))`
-/

namespace A279349.P14034840105971407472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279339 (A324545 (n + 1) - A324535 (n + 1)).toNat

end

end A279349.P14034840105971407472

/-! ## A279349.P6833427894322900349

`A279339(A250250(n+1)%A167918(n+1))`
-/

namespace A279349.P6833427894322900349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279339 (Int.tmod (A250250 (n + 1)) (A167918 (n + 1))).toNat

end

end A279349.P6833427894322900349

/-!
# A279350: a(n) = A046523(A279352(n)).

The programs for A279350, there is no canonical definition to state claims against.
-/

/-! ## A279350.P15188260394931768681

`A278221(A249818(n+1))`
-/

namespace A279350.P15188260394931768681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 (A249818 (n + 1)).toNat

end

end A279350.P15188260394931768681

/-! ## A279350.P10112602474300876919

`A046523(A279352(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A279350.P10112602474300876919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A279352 (n + 1)).toNat

end

end A279350.P10112602474300876919

/-! ## A279350.P9859576258036309687

`A278221((A061228(n+1)-(n+1))*A280498(n+1))`
-/

namespace A279350.P9859576258036309687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 ((A061228 (n + 1) - (n + 1 : ℤ)) * A280498 (n + 1)).toNat

end

end A279350.P9859576258036309687

/-! ## A279350.P3114647366186885560

`A278221(lcm(A028233(n+1), A280498(n+1)))`
-/

namespace A279350.P3114647366186885560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 (Int.lcm (A028233 (n + 1)) (A280498 (n + 1)))

end

end A279350.P3114647366186885560

/-! ## A279350.P15054212192524919944

`A278221(A028233(n+1)*A280498(n+1))`
-/

namespace A279350.P15054212192524919944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 (A028233 (n + 1) * A280498 (n + 1)).toNat

end

end A279350.P15054212192524919944

/-! ## A279350.P111417403256519812

`A278221(A250248(n+1))%A134612(A058187(n))`
-/

namespace A279350.P111417403256519812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278221 (A250248 (n + 1)).toNat) (A134612 (A058187 n).toNat)

end

end A279350.P111417403256519812

/-!
# A279351: Permutation of natural numbers: a(n) = A249817(A122111(n)).

The programs for A279351, there is no canonical definition to state claims against.
-/

/-! ## A279351.P16925428809696773927

`A249817(A122111(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A279351.P16925428809696773927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A122111 (n + 1)).toNat

end

end A279351.P16925428809696773927

/-! ## A279351.P8365543992256671361

`A249818(A122111(1+n))`
-/

namespace A279351.P8365543992256671361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A122111 (1 + n)).toNat

end

end A279351.P8365543992256671361

/-! ## A279351.P18193217351674589651

`A249817(∑{d}[n+1, A329034(#)])`
-/

namespace A279351.P18193217351674589651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (∑ d ∈ Nat.divisors (f1 n), A329034 d).toNat

end

end A279351.P18193217351674589651

/-! ## A279351.P8464065172317963346

`A249818(∑{d}[n+1, A329034(#)])`
-/

namespace A279351.P8464065172317963346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (∑ d ∈ Nat.divisors (f1 n), A329034 d).toNat

end

end A279351.P8464065172317963346

/-! ## A279351.P17337241830110631644

`A249817(A331595(n+1)*A331598(n+1))`
-/

namespace A279351.P17337241830110631644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A331595 (n + 1) * A331598 (n + 1)).toNat

end

end A279351.P17337241830110631644

/-!
# A279352: Permutation of natural numbers: a(n) = A122111(A249818(n)).

The programs for A279352, there is no canonical definition to state claims against.
-/

/-! ## A279352.P18072826672839490941

`A122111(A249818(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A279352.P18072826672839490941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A249818 (n + 1)).toNat

end

end A279352.P18072826672839490941

/-! ## A279352.P10132546433677244799

`∑{d}[A249818(n+1), A329034(#)]`
-/

namespace A279352.P10132546433677244799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A279352.P10132546433677244799

/-! ## A279352.P2396681553751966250

`A122111(A020639(n+1)*A280498(n+1))`
-/

namespace A279352.P2396681553751966250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A020639 (n + 1) * A280498 (n + 1)).toNat

end

end A279352.P2396681553751966250

/-! ## A279352.P1336736956053051336

`A122111(A249817(n+1)/A280497(n+1)*A280498(n+1))`
-/

namespace A279352.P1336736956053051336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (SequenceMachineLib.roundAway ((A249817 (n + 1) : ℚ) / (A280497 (n + 1) : ℚ) * (A280498 (n + 1) : ℚ))).toNat

end

end A279352.P1336736956053051336

/-! ## A279352.P5709931058235578391

`A122111(A074828((n+1)²)*A280498(n+1))`
-/

namespace A279352.P5709931058235578391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A074828 ((n + 1) ^ 2) * A280498 (n + 1)).toNat

end

end A279352.P5709931058235578391

/-! ## A279352.P6591451437092761908

`A122111(lcm(A089026(n+1), A250248(n+1)))`
-/

namespace A279352.P6591451437092761908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (Int.lcm (A089026 (n + 1)) (A250248 (n + 1)))

end

end A279352.P6591451437092761908

/-! ## A279352.P11729592237600240475

`A122111(A250248(n+1)%A325038(n+1))`
-/

namespace A279352.P11729592237600240475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (Int.tmod (A250248 (n + 1)) (A325038 (n + 1))).toNat

end

end A279352.P11729592237600240475

/-! ## A279352.P5894767815052843563

`A122111(A250248(n+1))/A089026(A250248(n+1)²)`
-/

namespace A279352.P5894767815052843563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (A250248 (n + 1)).toNat : ℚ) / (A089026 (A250248 (n + 1) ^ 2).toNat : ℚ)

end

end A279352.P5894767815052843563

/-!
# A279353: a(n) = A055938(n+1) XOR A055938(n).

The programs for A279353, the canonical program `A279353.P12583084604223118015` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279353 has offset 1).

The definition of A279353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279353.P5294887814213332879

`xor(comp[A005187(n)], A055938(n+2))`
-/

namespace A279353.P5294887814213332879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A055938 (n + 2))

end

end A279353.P5294887814213332879

namespace A279353

/-- `xor(comp[A005187(n)], A055938(n+2))` -/
def P5294887814213332879.Spec : Prop :=
  ∀ n, P5294887814213332879.a n = A279353 (n + 1)

end A279353

/-! ## A279353.P12583084604223118015

`xor(A055938(n+1), A055938(n+2))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A279353

/-- `xor(A055938(n+1), A055938(n+2))` -/
def P12583084604223118015.Spec : Prop :=
  ∀ n, P12583084604223118015.a n = A279353 (n + 1)

theorem P12583084604223118015.correct : P12583084604223118015.Spec := by
  intro n
  simp only [A279353, Nat.add_sub_cancel]

end A279353

/-! ## A279353.P10390226814023551560

`xor(-A045412(n+1), -A045412(n+2))`
-/

namespace A279353.P10390226814023551560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A045412 (n + 1)) (-A045412 (n + 2))

end

end A279353.P10390226814023551560

namespace A279353

/-- `xor(-A045412(n+1), -A045412(n+2))` -/
def P10390226814023551560.Spec : Prop :=
  ∀ n, P10390226814023551560.a n = A279353 (n + 1)

end A279353

/-! ## A279353.P16541746424273183854

`xor(comp[A005187(n)], A279337(2*(n+2)))`
-/

namespace A279353.P16541746424273183854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A279337 (2 * (n + 2)))

end

end A279353.P16541746424273183854

namespace A279353

/-- `xor(comp[A005187(n)], A279337(2*(n+2)))` -/
def P16541746424273183854.Spec : Prop :=
  ∀ n, P16541746424273183854.a n = A279353 (n + 1)

end A279353

/-! ## A279353.P2702776556084816959

`xor(A279337(2*(n+1)), A279337(2*(n+2)))`
-/

namespace A279353.P2702776556084816959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A279337 (2 * (n + 1))) (A279337 (2 * (n + 2)))

end

end A279353.P2702776556084816959

namespace A279353

/-- `xor(A279337(2*(n+1)), A279337(2*(n+2)))` -/
def P2702776556084816959.Spec : Prop :=
  ∀ n, P2702776556084816959.a n = A279353 (n + 1)

end A279353

/-!
# A279354: a(n) = A046523(A279356(n)).

The programs for A279354, there is no canonical definition to state claims against.
-/

/-! ## A279354.P9865761750648284542

`A278220(A249818(n+1))`
-/

namespace A279354.P9865761750648284542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278220 (A249818 (n + 1)).toNat

end

end A279354.P9865761750648284542

/-! ## A279354.P5193058428769626325

`A046523(A279356(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A279354.P5193058428769626325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A279356 (n + 1)).toNat

end

end A279354.P5193058428769626325

/-! ## A279354.P331645825270459705

`A278220(A020639(n+1)*A280498(n+1))`
-/

namespace A279354.P331645825270459705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278220 (A020639 (n + 1) * A280498 (n + 1)).toNat

end

end A279354.P331645825270459705

/-! ## A279354.P8359529196666079913

`A278220(A074828(n+1)*A280498(n+1))`
-/

namespace A279354.P8359529196666079913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278220 (A074828 (n + 1) * A280498 (n + 1)).toNat

end

end A279354.P8359529196666079913

/-! ## A279354.P2348553882210923227

`A278220(lcm(A028233(n+1), A280498(n+1)))`
-/

namespace A279354.P2348553882210923227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278220 (Int.lcm (A028233 (n + 1)) (A280498 (n + 1)))

end

end A279354.P2348553882210923227

/-! ## A279354.P18131298636428740317

`A278220(A250248(n+1)%A342784(n+1))`
-/

namespace A279354.P18131298636428740317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278220 (Int.tmod (A250248 (n + 1)) (A342784 (n + 1))).toNat

end

end A279354.P18131298636428740317

/-! ## A279354.P3108197201625867420

`A278220(A250248(n+1))%A250231(n+1)`
-/

namespace A279354.P3108197201625867420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278220 (A250248 (n + 1)).toNat) (A250231 (n + 1))

end

end A279354.P3108197201625867420

/-!
# A279355: Permutation of natural numbers: a(n) = A249817(A241909(n)).

The programs for A279355, there is no canonical definition to state claims against.
-/

/-! ## A279355.P5126455047633228596

`A249817(A241909(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A279355.P5126455047633228596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A241909 (n + 1)).toNat

end

end A279355.P5126455047633228596

/-! ## A279355.P7870805146700187924

`A279351(A241916(n+1))`
-/

namespace A279355.P7870805146700187924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279351 (A241916 (n + 1)).toNat

end

end A279355.P7870805146700187924

/-! ## A279355.P6188671940253827009

`A249817(A279356(A249817(n+1)))`
-/

namespace A279355.P6188671940253827009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A279356 (A249817 (n + 1)).toNat).toNat

end

end A279355.P6188671940253827009

/-! ## A279355.P17666104247988525415

`A249817(A331595(n+1)*A331599(n+1))`
-/

namespace A279355.P17666104247988525415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A331595 (n + 1) * A331599 (n + 1)).toNat

end

end A279355.P17666104247988525415

/-! ## A279355.P15886141086494845449

`A249817(A122111(n+1)/A331598(n+1)*A331599(n+1))`
-/

namespace A279355.P15886141086494845449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (SequenceMachineLib.roundAway ((A122111 (n + 1) : ℚ) / (A331598 (n + 1) : ℚ) * (A331599 (n + 1) : ℚ))).toNat

end

end A279355.P15886141086494845449

/-!
# A279356: Permutation of natural numbers: a(n) = A241909(A249818(n)).

The programs for A279356, there is no canonical definition to state claims against.
-/

/-! ## A279356.P14942781313857757770

`A241909(A249818(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A279356.P14942781313857757770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A249818 (n + 1)).toNat

end

end A279356.P14942781313857757770

/-! ## A279356.P13528935003023624597

`A241909(A020639(n+1)*A280498(n+1))`
-/

namespace A279356.P13528935003023624597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A020639 (n + 1) * A280498 (n + 1)).toNat

end

end A279356.P13528935003023624597

/-! ## A279356.P8467846022689625857

`A241909(A249817(n+1)/A280497(n+1)*A280498(n+1))`
-/

namespace A279356.P8467846022689625857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (SequenceMachineLib.roundAway ((A249817 (n + 1) : ℚ) / (A280497 (n + 1) : ℚ) * (A280498 (n + 1) : ℚ))).toNat

end

end A279356.P8467846022689625857

/-! ## A279356.P12890015852337123062

`A241909(A250245(n+1)/A280495(n+1)*A280498(n+1))`
-/

namespace A279356.P12890015852337123062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (SequenceMachineLib.roundAway ((A250245 (n + 1) : ℚ) / (A280495 (n + 1) : ℚ) * (A280498 (n + 1) : ℚ))).toNat

end

end A279356.P12890015852337123062

/-! ## A279356.P860532690439915338

`A241909(A250246(n+1)/A280496(n+1)*A280498(n+1))`
-/

namespace A279356.P860532690439915338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (SequenceMachineLib.roundAway ((A250246 (n + 1) : ℚ) / (A280496 (n + 1) : ℚ) * (A280498 (n + 1) : ℚ))).toNat

end

end A279356.P860532690439915338

/-! ## A279356.P16820528327616854026

`A241909(A074828((n+1)²)*A280498(n+1))`
-/

namespace A279356.P16820528327616854026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A074828 ((n + 1) ^ 2) * A280498 (n + 1)).toNat

end

end A279356.P16820528327616854026

/-! ## A279356.P10981645390602790947

`A241909(A250248(n+1)%A342784(n+1))`
-/

namespace A279356.P10981645390602790947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (Int.tmod (A250248 (n + 1)) (A342784 (n + 1))).toNat

end

end A279356.P10981645390602790947

/-! ## A279356.P59298288153394114

`A241909(A000196(A250248(n+1)²))`
-/

namespace A279356.P59298288153394114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A000196 (A250248 (n + 1) ^ 2).toNat).toNat

end

end A279356.P59298288153394114

/-! ## A279356.P6093579675963271204

`A241909(A267177(A250248(n+1)²))`
-/

namespace A279356.P6093579675963271204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A267177 (A250248 (n + 1) ^ 2).toNat).toNat

end

end A279356.P6093579675963271204

/-!
# A279357: a(n) = A005187(n) XOR A005187(n+1).

The programs for A279357, the canonical program `A279357.P8695073576768170559` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279357 has offset 0).

The definition of A279357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279357.P8695073576768170559

`xor(Δ[A122247(n)], A005187(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A279357

/-- `xor(Δ[A122247(n)], A005187(n))` -/
def P8695073576768170559.Spec : Prop :=
  ∀ n, P8695073576768170559.a n = A279357 n

theorem P8695073576768170559.correct : P8695073576768170559.Spec := by
  intro n
  simp only [A279357]

end A279357

/-! ## A279357.P8856764709496345523

`xor(A005187(n+1), A005187(n))`
-/

namespace A279357.P8856764709496345523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005187 (n + 1)) (A005187 n)

end

end A279357.P8856764709496345523

namespace A279357

/-- `xor(A005187(n+1), A005187(n))` -/
def P8856764709496345523.Spec : Prop :=
  ∀ n, P8856764709496345523.a n = A279357 n

end A279357

/-! ## A279357.P4726406722501743715

`xor(A011371(n)+n, ∑[A001511(n+1)])`
-/

namespace A279357.P4726406722501743715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011371 n + (n : ℤ)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279357.P4726406722501743715

namespace A279357

/-- `xor(A011371(n)+n, ∑[A001511(n+1)])` -/
def P4726406722501743715.Spec : Prop :=
  ∀ n, P4726406722501743715.a n = A279357 n

end A279357

/-! ## A279357.P10053462584088649342

`xor(2*n-A000120(n), ∑[A001511(n+1)])`
-/

namespace A279357.P10053462584088649342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * n : ℤ) - A000120 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279357.P10053462584088649342

namespace A279357

/-- `xor(2*n-A000120(n), ∑[A001511(n+1)])` -/
def P10053462584088649342.Spec : Prop :=
  ∀ n, P10053462584088649342.a n = A279357 n

end A279357

/-! ## A279357.P17163189968109473040

`xor(A011371(2*n), ∑[A001511(n+1)])`
-/

namespace A279357.P17163189968109473040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011371 (2 * n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279357.P17163189968109473040

namespace A279357

/-- `xor(A011371(2*n), ∑[A001511(n+1)])` -/
def P17163189968109473040.Spec : Prop :=
  ∀ n, P17163189968109473040.a n = A279357 n

end A279357

/-! ## A279357.P10377163342375721032

`xor(n+1+A011371(n+1), A011371(2*n))`
-/

namespace A279357.P10377163342375721032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1 : ℤ) + A011371 (n + 1)) (A011371 (2 * n))

end

end A279357.P10377163342375721032

namespace A279357

/-- `xor(n+1+A011371(n+1), A011371(2*n))` -/
def P10377163342375721032.Spec : Prop :=
  ∀ n, P10377163342375721032.a n = A279357 n

end A279357

/-! ## A279357.P7548938467075053438

`xor(A011371(2*n), A011371(2*(n+1)))`
-/

namespace A279357.P7548938467075053438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011371 (2 * n)) (A011371 (2 * (n + 1)))

end

end A279357.P7548938467075053438

namespace A279357

/-- `xor(A011371(2*n), A011371(2*(n+1)))` -/
def P7548938467075053438.Spec : Prop :=
  ∀ n, P7548938467075053438.a n = A279357 n

end A279357

/-! ## A279357.P5815409763712943879

`xor(A011371(2*n), record[A115627(n+2)])`
-/

namespace A279357.P5815409763712943879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115627 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011371 (2 * n)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A279357.P5815409763712943879

namespace A279357

/-- `xor(A011371(2*n), record[A115627(n+2)])` -/
def P5815409763712943879.Spec : Prop :=
  ∀ n, P5815409763712943879.a n = A279357 n

end A279357

/-! ## A279357.P762536297049858390

`xor(A011371(n)+n, record[A115627(n+2)])`
-/

namespace A279357.P762536297049858390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115627 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011371 n + (n : ℤ)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A279357.P762536297049858390

namespace A279357

/-- `xor(A011371(n)+n, record[A115627(n+2)])` -/
def P762536297049858390.Spec : Prop :=
  ∀ n, P762536297049858390.a n = A279357 n

end A279357

/-!
# A279358: Exponential transform of the cubes A000578.

The programs for A279358, there is no canonical definition to state claims against.
-/

/-! ## A279358.P6044309119336578315

`A279636(∑[n+3]+n+3)`
-/

namespace A279358.P6044309119336578315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A279358.P6044309119336578315

/-!
# A279360: Expansion of Product_{k>=1} (1+2*x^(k^2)).

The programs for A279360, there is no canonical definition to state claims against.
-/

/-! ## A279360.P12993897084025934001

`A289813(A279368(n))%p?[A008262(n)]`
-/

namespace A279360.P12993897084025934001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289813 (A279368 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A279360.P12993897084025934001

/-! ## A279360.P16087018175665996340

`A289831(A279368(n))%A095904(n+1)`
-/

namespace A279360.P16087018175665996340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289831 (A279368 n).toNat) (A095904 (n + 1))

end

end A279360.P16087018175665996340

/-! ## A279360.P402472087081441077

`A289831(A279368(n))+A000007(A008079(n))`
-/

namespace A279360.P402472087081441077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A279368 n).toNat + A000007 (A008079 n).toNat

end

end A279360.P402472087081441077

/-! ## A279360.P2643795445789037331

`A289831(A279368(n))+A130706(A008079(n)+1)²`
-/

namespace A279360.P2643795445789037331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A279368 n).toNat + A130706 (A008079 n + 1).toNat ^ 2

end

end A279360.P2643795445789037331

/-! ## A279360.P17353285902026033920

`A289831(A279368(n))^(A159075(A008079(n)+1)+1)`
-/

namespace A279360.P17353285902026033920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289831 (A279368 n).toNat : ℚ) ^ (A159075 (A008079 n + 1).toNat + 1 : ℤ)

end

end A279360.P17353285902026033920

/-! ## A279360.P389336958241896610

`A038500(A127973(n))*A289813(A279368(n))`
-/

namespace A279360.P389336958241896610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A127973 n).toNat * A289813 (A279368 n).toNat

end

end A279360.P389336958241896610

/-! ## A279360.P4560362245657092969

`A001222(A267252(n+1))*A289813(A279368(n))`
-/

namespace A279360.P4560362245657092969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A267252 (n + 1)).toNat * A289813 (A279368 n).toNat

end

end A279360.P4560362245657092969

/-!
# A279361: Exponential transform of the triangular numbers.

The programs for A279361, there is no canonical definition to state claims against.
-/

/-! ## A279361.P2546066119683172025

`A226190((n+2)*n!-1)`
-/

namespace A279361.P2546066119683172025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 ((n + 2) * Nat.factorial n - 1)

end

end A279361.P2546066119683172025

/-! ## A279361.P16148327313078326952

`A008615(Δ[A090595(n)])`
-/

namespace A279361.P16148327313078326952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (n + 1) - f1 n).toNat

end

end A279361.P16148327313078326952

/-!
# A279363: Sum of 4th powers of proper divisors of n.

The programs for A279363, the canonical program `A279363.P36880166466637901` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279363 has offset 1).

The definition of A279363 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001159, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A279363.P36880166466637901

`A001159(n+1)-A000583(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A279363

/-- `A001159(n+1)-A000583(n+1)` -/
def P36880166466637901.Spec : Prop :=
  ∀ n, P36880166466637901.a n = A279363 (n + 1)

theorem P36880166466637901.correct : P36880166466637901.Spec := by
  intro n
  simp only [A279363, Nat.add_sub_cancel]

end A279363

/-! ## A279363.P3849717349067075454

`∑{d}[n+1, (#%(n+1))^4]`
-/

namespace A279363.P3849717349067075454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d % (n + 1)) ^ 4

end

end A279363.P3849717349067075454

namespace A279363

/-- `∑{d}[n+1, (#%(n+1))^4]` -/
def P3849717349067075454.Spec : Prop :=
  ∀ n, (P3849717349067075454.a n : ℤ) = A279363 (n + 1)

end A279363

/-! ## A279363.P4627153108035139973

`∑{d}[n+1, (-#%(n+1))²²]`
-/

namespace A279363.P4627153108035139973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Int.tmod (-(d : ℤ)) (n + 1 : ℤ) ^ 2) ^ 2

end

end A279363.P4627153108035139973

namespace A279363

/-- `∑{d}[n+1, (-#%(n+1))²²]` -/
def P4627153108035139973.Spec : Prop :=
  ∀ n, P4627153108035139973.a n = A279363 (n + 1)

end A279363

/-! ## A279363.P14411008983808928422

`∑{d}[n+1, (#²%(n+1)²)²]`
-/

namespace A279363.P14411008983808928422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 % (n + 1) ^ 2) ^ 2

end

end A279363.P14411008983808928422

namespace A279363

/-- `∑{d}[n+1, (#²%(n+1)²)²]` -/
def P14411008983808928422.Spec : Prop :=
  ∀ n, (P14411008983808928422.a n : ℤ) = A279363 (n + 1)

end A279363

/-! ## A279363.P230364402967198661

`A001159(n+1)-(n+1)²²`
-/

namespace A279363.P230364402967198661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (n + 1) - (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A279363.P230364402967198661

namespace A279363

/-- `A001159(n+1)-(n+1)²²` -/
def P230364402967198661.Spec : Prop :=
  ∀ n, P230364402967198661.a n = A279363 (n + 1)

theorem P230364402967198661.correct : P230364402967198661.Spec := by
  intro n
  simp only [A279363, Nat.add_sub_cancel, A279363.P230364402967198661.a, A279363.P36880166466637901.a, A000583, A000583.P14547500281748394449.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A279363

/-! ## A279363.P3169464484470298193

`∑{d}[n+1, A032741(#)*A059377((n+1)/#)]`
-/

namespace A279363.P3169464484470298193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A279363.P3169464484470298193

namespace A279363

/-- `∑{d}[n+1, A032741(#)*A059377((n+1)/#)]` -/
def P3169464484470298193.Spec : Prop :=
  ∀ n, P3169464484470298193.a n = A279363 (n + 1)

end A279363

/-! ## A279363.P11736474487532160819

`∑{d}[n+1, A064279(#)*A084218((n+1)/#)]`
-/

namespace A279363.P11736474487532160819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064279 d * A084218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A279363.P11736474487532160819

namespace A279363

/-- `∑{d}[n+1, A064279(#)*A084218((n+1)/#)]` -/
def P11736474487532160819.Spec : Prop :=
  ∀ n, P11736474487532160819.a n = A279363 (n + 1)

end A279363

/-! ## A279363.P3419251069438936429

`∑{d}[n+1, A001159(#)*A157658((n+1)/#)]`
-/

namespace A279363.P3419251069438936429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A279363.P3419251069438936429

namespace A279363

/-- `∑{d}[n+1, A001159(#)*A157658((n+1)/#)]` -/
def P3419251069438936429.Spec : Prop :=
  ∀ n, P3419251069438936429.a n = A279363 (n + 1)

end A279363

/-! ## A279363.P8183021871106176996

`∑{d}[n+1, A065960(#)*A344617((n+1)/#)]`
-/

namespace A279363.P8183021871106176996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065960 d * A344617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A279363.P8183021871106176996

namespace A279363

/-- `∑{d}[n+1, A065960(#)*A344617((n+1)/#)]` -/
def P8183021871106176996.Spec : Prop :=
  ∀ n, P8183021871106176996.a n = A279363 (n + 1)

end A279363

/-! ## A279363.P18218334950596664599

`∑{d}[n+1, A051953(#)*A372952((n+1)/#)]`
-/

namespace A279363.P18218334950596664599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A279363.P18218334950596664599

namespace A279363

/-- `∑{d}[n+1, A051953(#)*A372952((n+1)/#)]` -/
def P18218334950596664599.Spec : Prop :=
  ∀ n, P18218334950596664599.a n = A279363 (n + 1)

end A279363

/-! ## A279363.P8420746915252685826

`∑{d}[n+1, A067558(#)*A379833((n+1)/#)]`
-/

namespace A279363.P8420746915252685826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067558 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A279363.P8420746915252685826

namespace A279363

/-- `∑{d}[n+1, A067558(#)*A379833((n+1)/#)]` -/
def P8420746915252685826.Spec : Prop :=
  ∀ n, P8420746915252685826.a n = A279363 (n + 1)

end A279363

/-! ## A279363.P4501190981736906905

`∑{d}[n+1, A189393(#)*A276634((n+1)/#)]`
-/

namespace A279363.P4501190981736906905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A276634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A279363.P4501190981736906905

namespace A279363

/-- `∑{d}[n+1, A189393(#)*A276634((n+1)/#)]` -/
def P4501190981736906905.Spec : Prop :=
  ∀ n, P4501190981736906905.a n = A279363 (n + 1)

end A279363

/-! ## A279363.P954362932472384260

`A328271((n+1)²)-(n+1)²²`
-/

namespace A279363.P954362932472384260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328271 ((n + 1) ^ 2) - (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A279363.P954362932472384260

namespace A279363

/-- `A328271((n+1)²)-(n+1)²²` -/
def P954362932472384260.Spec : Prop :=
  ∀ n, P954362932472384260.a n = A279363 (n + 1)

end A279363

/-!
# A279364: Sum of 5th powers of proper divisors of n.

The programs for A279364, the canonical program `A279364.P12642884651805125480` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279364 has offset 1).

The definition of A279364 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001160, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A279364.P12642884651805125480

`A001160(n+1)-A000584(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A279364

/-- `A001160(n+1)-A000584(n+1)` -/
def P12642884651805125480.Spec : Prop :=
  ∀ n, P12642884651805125480.a n = A279364 (n + 1)

theorem P12642884651805125480.correct : P12642884651805125480.Spec := by
  intro n
  simp only [A279364, Nat.add_sub_cancel]

end A279364

/-! ## A279364.P4730431518875435946

`∑{d}[n+1, (#%(n+1))^5]`
-/

namespace A279364.P4730431518875435946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d % (n + 1)) ^ 5

end

end A279364.P4730431518875435946

namespace A279364

/-- `∑{d}[n+1, (#%(n+1))^5]` -/
def P4730431518875435946.Spec : Prop :=
  ∀ n, (P4730431518875435946.a n : ℤ) = A279364 (n + 1)

end A279364

/-! ## A279364.P13687907619460127318

`A001160(n+1)-(n+1)^5`
-/

namespace A279364.P13687907619460127318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001160 (n + 1) - ((n + 1) ^ 5 : ℤ)

end

end A279364.P13687907619460127318

namespace A279364

/-- `A001160(n+1)-(n+1)^5` -/
def P13687907619460127318.Spec : Prop :=
  ∀ n, P13687907619460127318.a n = A279364 (n + 1)

theorem P13687907619460127318.correct : P13687907619460127318.Spec := by
  intro n
  simp only [A279364, Nat.add_sub_cancel, A279364.P13687907619460127318.a, A279364.P12642884651805125480.a, A000584, A000584.P5477385692209315495.a, A001160, A001160.P16437103325583265017.f1, A001160.P16437103325583265017.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A279364

/-! ## A279364.P4738474564503492477

`∑{d}[n+1, A032741(#)*A059378((n+1)/#)]`
-/

namespace A279364.P4738474564503492477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 d * A059378 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A279364.P4738474564503492477

namespace A279364

/-- `∑{d}[n+1, A032741(#)*A059378((n+1)/#)]` -/
def P4738474564503492477.Spec : Prop :=
  ∀ n, P4738474564503492477.a n = A279364 (n + 1)

end A279364

/-! ## A279364.P5706771619281530423

`∑{d}[n+1, A001160(#)*A157658((n+1)/#)]`
-/

namespace A279364.P5706771619281530423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A279364.P5706771619281530423

namespace A279364

/-- `∑{d}[n+1, A001160(#)*A157658((n+1)/#)]` -/
def P5706771619281530423.Spec : Prop :=
  ∀ n, P5706771619281530423.a n = A279364 (n + 1)

end A279364

/-! ## A279364.P12215648959336499568

`∑{d}[n+1, A067558(#)*A115224((n+1)/#)]`
-/

namespace A279364.P12215648959336499568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067558 d * A115224 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A279364.P12215648959336499568

namespace A279364

/-- `∑{d}[n+1, A067558(#)*A115224((n+1)/#)]` -/
def P12215648959336499568.Spec : Prop :=
  ∀ n, P12215648959336499568.a n = A279364 (n + 1)

end A279364

/-! ## A279364.P3811735834749058241

`∑{d}[n+1, A051953(#)*A372961((n+1)/#)]`
-/

namespace A279364.P3811735834749058241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A372961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A279364.P3811735834749058241

namespace A279364

/-- `∑{d}[n+1, A051953(#)*A372961((n+1)/#)]` -/
def P3811735834749058241.Spec : Prop :=
  ∀ n, P3811735834749058241.a n = A279364 (n + 1)

end A279364

/-! ## A279364.P13806871669313258540

`∑{d}[n+1, A064279(#)*A372962((n+1)/#)]`
-/

namespace A279364.P13806871669313258540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064279 d * A372962 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A279364.P13806871669313258540

namespace A279364

/-- `∑{d}[n+1, A064279(#)*A372962((n+1)/#)]` -/
def P13806871669313258540.Spec : Prop :=
  ∀ n, P13806871669313258540.a n = A279364 (n + 1)

end A279364

/-! ## A279364.P5606571907102341067

`∑{d}[n+1, A238533(#)*A279363((n+1)/#)]`
-/

namespace A279364.P5606571907102341067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238533 d * A279363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A279364.P5606571907102341067

namespace A279364

/-- `∑{d}[n+1, A238533(#)*A279363((n+1)/#)]` -/
def P5606571907102341067.Spec : Prop :=
  ∀ n, P5606571907102341067.a n = A279364 (n + 1)

end A279364

/-! ## A279364.P8535257997394734444

`∑{d}[n+1, A344617(#)*A351300((n+1)/#)]`
-/

namespace A279364.P8535257997394734444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344617 d * A351300 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A279364.P8535257997394734444

namespace A279364

/-- `∑{d}[n+1, A344617(#)*A351300((n+1)/#)]` -/
def P8535257997394734444.Spec : Prop :=
  ∀ n, P8535257997394734444.a n = A279364 (n + 1)

end A279364

/-! ## A279364.P13088465765495222950

`A001160(n+1)+A000539(n)-A000539(n+1)`
-/

namespace A279364.P13088465765495222950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001160 (n + 1) + A000539 n - A000539 (n + 1)

end

end A279364.P13088465765495222950

namespace A279364

/-- `A001160(n+1)+A000539(n)-A000539(n+1)` -/
def P13088465765495222950.Spec : Prop :=
  ∀ n, P13088465765495222950.a n = A279364 (n + 1)

end A279364

/-!
# A279366: Primes whose proper substrings of consecutive digits are all composite.

The programs for A279366, there is no canonical definition to state claims against.
-/

/-! ## A279366.P2776070740729779132

`∩[A033274(n+1), A051416(n+1)]`
-/

namespace A279366.P2776070740729779132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279366.P2776070740729779132

/-! ## A279366.P11176871511533000632

`∩[A202262(n+1)+1, A254754(n+1)]`
-/

namespace A279366.P11176871511533000632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202262 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279366.P11176871511533000632

/-! ## A279366.P3699336706860808382

`∩[A029581(n+1), A033274(n+1)]`
-/

namespace A279366.P3699336706860808382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279366.P3699336706860808382

/-! ## A279366.P12119785757520772746

`record[A211396(A051416(n+1))]`
-/

namespace A279366.P12119785757520772746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A051416 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279366.P12119785757520772746

/-! ## A279366.P8666823218727849840

`record[A211396(p?[A029581(n+1)])]`
-/

namespace A279366.P8666823218727849840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279366.P8666823218727849840

/-!
# A279367: Numbers n for which the number of distinct prime divisors of binomial(n,k) has a "local maximum" (see the unusual meaning given in comment) at k = floor(n/2).

The programs for A279367, there is no canonical definition to state claims against.
-/

/-! ## A279367.P5024919416567832922

`comp[A019491(1+n)-1]+1`
-/

namespace A279367.P5024919416567832922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019491 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A279367.P5024919416567832922

/-! ## A279367.P6140890168142582189

`comp[A233583(A019491(1+n))]+1`
-/

namespace A279367.P6140890168142582189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A019491 (1 + n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A279367.P6140890168142582189

/-! ## A279367.P5500004086623058087

`eq[char[A019491(n+1)], A000007(n)]`
-/

namespace A279367.P5500004086623058087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019491 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A279367.P5500004086623058087

/-! ## A279367.P2566618576171846418

`eq[char[A019491(n+1)], A000038(n)]`
-/

namespace A279367.P2566618576171846418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019491 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A279367.P2566618576171846418

/-!
# A279368: Expansion of Product_{k>=1} (1+3*x^(k^2)).

The programs for A279368, there is no canonical definition to state claims against.
-/

/-! ## A279368.P18431751800422676050

`A119353(A279360(n)²%A107610(n+2))`
-/

namespace A279368.P18431751800422676050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (Int.tmod (A279360 n ^ 2) (A107610 (n + 2))).toNat

end

end A279368.P18431751800422676050

/-! ## A279368.P7948903330952938772

`A161830(A279360(n)%A138025(n+1))`
-/

namespace A279368.P7948903330952938772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161830 (Int.tmod (A279360 n) (A138025 (n + 1))).toNat

end

end A279368.P7948903330952938772

/-! ## A279368.P12748375913535689696

`A001222(A103383(n+1))*A161830(A279360(n))`
-/

namespace A279368.P12748375913535689696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A103383 (n + 1)).toNat * A161830 (A279360 n).toNat

end

end A279368.P12748375913535689696

/-! ## A279368.P6381887348221811902

`A151665(lt[A087275(3*n+1), A031461(n+3)])`
-/

namespace A279368.P6381887348221811902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087275 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151665 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A279368.P6381887348221811902

/-!
# A279370: Numerators of coefficients in expansion of (cos(sqrt(x)))/(1 + cos(sqrt(x))).

The programs for A279370, there is no canonical definition to state claims against.
-/

/-! ## A279370.P10542297494765302888

`A000038(n)-abs(A089171(n))`
-/

namespace A279370.P10542297494765302888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - |A089171 n|

end

end A279370.P10542297494765302888

/-! ## A279370.P15972810209338456487

`A000038(n)-A276592(n+1)`
-/

namespace A279370.P15972810209338456487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A276592 (n + 1)

end

end A279370.P15972810209338456487

/-! ## A279370.P7695851333375760014

`2*A000007(n)-A276592(n+1)`
-/

namespace A279370.P7695851333375760014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A276592 (n + 1)

end

end A279370.P7695851333375760014

/-! ## A279370.P8980829685596155387

`A000122(n²+1)-A276592(n+1)`
-/

namespace A279370.P8980829685596155387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2 + 1) - A276592 (n + 1)

end

end A279370.P8980829685596155387

/-! ## A279370.P984573773168546289

`A278500(3*n+2)-A276592(n+1)`
-/

namespace A279370.P984573773168546289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278500 (3 * n + 2) - A276592 (n + 1)

end

end A279370.P984573773168546289

/-!
# A279372: Expansion of (Sum_{k>=1} x^(prime(k)^2))^2.

The programs for A279372, the canonical program `A279372.P5325841830605275875` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279372 has offset 0).

The definition of A279372 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A302048, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A279372.P5325841830605275875

`∑{#}[n-1, A302048(#+1)*A302048(n-(#+1))]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A279372

/-- `∑{#}[n-1, A302048(#+1)*A302048(n-(#+1))]` -/
def P5325841830605275875.Spec : Prop :=
  ∀ n, P5325841830605275875.a n = A279372 n

theorem P5325841830605275875.correct : P5325841830605275875.Spec := by
  intro n
  simp only [A279372]

end A279372

/-! ## A279372.P13284092658549918708

`∑{d}[A000837(n)*A045698(n), round(1/#)]`
-/

namespace A279372.P13284092658549918708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n * A045698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, SequenceMachineLib.roundAway (1 / (d : ℚ))

end

end A279372.P13284092658549918708

namespace A279372

/-- `∑{d}[A000837(n)*A045698(n), round(1/#)]` -/
def P13284092658549918708.Spec : Prop :=
  ∀ n, P13284092658549918708.a n = A279372 n

end A279372

/-! ## A279372.P12671444598485851109

`∑{d}[A000837(n), round(1/#)]*A045698(n)`
-/

namespace A279372.P12671444598485851109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, SequenceMachineLib.roundAway (1 / (d : ℚ))) * A045698 n

end

end A279372.P12671444598485851109

namespace A279372

/-- `∑{d}[A000837(n), round(1/#)]*A045698(n)` -/
def P12671444598485851109.Spec : Prop :=
  ∀ n, P12671444598485851109.a n = A279372 n

end A279372

/-! ## A279372.P11371520546702142068

`and(A058669(n), A281154(n))`
-/

namespace A279372.P11371520546702142068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058669 n) (A281154 n)

end

end A279372.P11371520546702142068

namespace A279372

/-- `and(A058669(n), A281154(n))` -/
def P11371520546702142068.Spec : Prop :=
  ∀ n, P11371520546702142068.a n = A279372 n

end A279372

/-! ## A279372.P16251459943911705914

`and(A281154(n), A285526(n+1))`
-/

namespace A279372.P16251459943911705914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281154 n) (A285526 (n + 1))

end

end A279372.P16251459943911705914

namespace A279372

/-- `and(A281154(n), A285526(n+1))` -/
def P16251459943911705914.Spec : Prop :=
  ∀ n, P16251459943911705914.a n = A279372 n

end A279372

/-!
# A279373: Numbers n such that number of divisors of n divides n and at the same time the least number having exactly n divisors is divisible by n.

The programs for A279373, there is no canonical definition to state claims against.
-/

/-! ## A279373.P17903424312366637056

`record[A122377(A262981(n+1))]`
-/

namespace A279373.P17903424312366637056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A262981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279373.P17903424312366637056

/-! ## A279373.P7949342367450020632

`∩[eq[1, A298734(n+1)]+1, A262981(n+1)]`
-/

namespace A279373.P7949342367450020632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298734 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A279373.P7949342367450020632

/-! ## A279373.P4286189986414969234

`∩[eq[n+1, A009230(n+1)]+1, A262981(n+1)]`
-/

namespace A279373.P4286189986414969234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009230 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A279373.P4286189986414969234

/-!
# A279374: Number of ways to choose an odd partition of each part of an odd partition of 2n+1.

The programs for A279374, there is no canonical definition to state claims against.
-/

/-! ## A279374.P10664036499927590645

`A300301(Δ[n²])`
-/

namespace A279374.P10664036499927590645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300301 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A279374.P10664036499927590645

/-! ## A279374.P690132132953262370

`and(-1, A300301(2*n+1))`
-/

namespace A279374.P690132132953262370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A300301 (2 * n + 1))

end

end A279374.P690132132953262370

/-! ## A279374.P16066494100318368307

`record[A300301(A026741(n))]`
-/

namespace A279374.P16066494100318368307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300301 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279374.P16066494100318368307

/-! ## A279374.P5813881796312114206

`record[A300301(A000265(n+1))]`
-/

namespace A279374.P5813881796312114206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300301 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279374.P5813881796312114206

/-! ## A279374.P2413414585660844873

`record[A300301(A028234(n+1))]`
-/

namespace A279374.P2413414585660844873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300301 (A028234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279374.P2413414585660844873

/-! ## A279374.P467574409321253098

`record[A300301(A300330(n+1))]`
-/

namespace A279374.P467574409321253098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300301 (A300330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279374.P467574409321253098

/-! ## A279374.P2050305957518424105

`record[A300301(n*A266070(n))]`
-/

namespace A279374.P2050305957518424105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300301 ((n : ℤ) * A266070 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279374.P2050305957518424105

/-! ## A279374.P9502905461052360924

`record[A300301(n)/(2-A266070(n))]`
-/

namespace A279374.P9502905461052360924
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300301 n : ℚ) / (2 - A266070 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279374.P9502905461052360924

/-! ## A279374.P2008945768015062176

`A300301(n+1+n)+char[A016973(n)]`
-/

namespace A279374.P2008945768015062176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016973 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300301 (n + 1 + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A279374.P2008945768015062176

/-! ## A279374.P7591586652295031119

`A300301(2*n+1)+A080225(A000010(n+1)+1)`
-/

namespace A279374.P7591586652295031119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300301 (2 * n + 1) + A080225 (A000010 (n + 1) + 1).toNat

end

end A279374.P7591586652295031119

/-! ## A279374.P17283965449722157828

`gcd(A300301(2*n+1)*A300301(n+1), A300301(2*n+1))`
-/

namespace A279374.P17283965449722157828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300301 (2 * n + 1) * A300301 (n + 1)) (A300301 (2 * n + 1))

end

end A279374.P17283965449722157828

/-! ## A279374.P15393508414210922856

`A300301(2*n+1)²/A300301(A300330(2*n+1))`
-/

namespace A279374.P15393508414210922856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300301 (2 * n + 1) ^ 2 : ℚ) / (A300301 (A300330 (2 * n + 1)).toNat : ℚ)

end

end A279374.P15393508414210922856

/-! ## A279374.P12518552704127503441

`gcd(A300301(2*n+1), A319453(∑[n]))`
-/

namespace A279374.P12518552704127503441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300301 (2 * n + 1)) (A319453 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A279374.P12518552704127503441

/-! ## A279374.P12379491637854246289

`A319453(A000217(n+4))+A300301(n+1+n)`
-/

namespace A279374.P12379491637854246289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (A000217 (n + 4)).toNat + A300301 (n + 1 + n)

end

end A279374.P12379491637854246289

/-! ## A279374.P7232426398452464559

`A300301(n+1+n)/A007318(∑[n])`
-/

namespace A279374.P7232426398452464559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300301 (n + 1 + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A279374.P7232426398452464559

/-! ## A279374.P9274414195488226882

`A300301(2*n+1)%A199421(n)`
-/

namespace A279374.P9274414195488226882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300301 (2 * n + 1)) (A199421 n)

end

end A279374.P9274414195488226882

/-!
# A279375: Number of set partitions of strict integer partitions of n that have distinct block-sums.

The programs for A279375, there is no canonical definition to state claims against.
-/

/-! ## A279375.P15147312738946227623

`A294786(2^n)`
-/

namespace A279375.P15147312738946227623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294786 (2 ^ n)

end

end A279375.P15147312738946227623

/-! ## A279375.P13177634724875446032

`A294786(A000079(n))+char[15]`
-/

namespace A279375.P13177634724875446032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294786 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279375.P13177634724875446032

/-! ## A279375.P6747316165358531656

`A326546(n)+A294786(A000079(n))`
-/

namespace A279375.P6747316165358531656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326546 n + A294786 (A000079 n).toNat

end

end A279375.P6747316165358531656

/-! ## A279375.P10281502508699012443

`A326688(n)+A294786(A000079(n))`
-/

namespace A279375.P10281502508699012443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 n + A294786 (A000079 n).toNat

end

end A279375.P10281502508699012443

/-! ## A279375.P6585994458525828301

`A127836(n)*A294786(A000079(n))`
-/

namespace A279375.P6585994458525828301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127836 n * A294786 (A000079 n).toNat

end

end A279375.P6585994458525828301

/-!
# A279377: Number of n X n 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with new values introduced in order 0 sequentially upwards.

The programs for A279377, there is no canonical definition to state claims against.
-/

/-! ## A279377.P5039178856770615365

`A279384(∑[4*n]+1)`
-/

namespace A279377.P5039178856770615365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279377.P5039178856770615365

/-! ## A279377.P11323284844844941751

`record[A003982(n)*A279384(n+1)]`
-/

namespace A279377.P11323284844844941751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A279384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279377.P11323284844844941751

/-! ## A279377.P4180259219750509

`A007318(∑[n])*A279384(A001844(n))`
-/

namespace A279377.P4180259219750509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A279384 (A001844 n).toNat

end

end A279377.P4180259219750509

/-! ## A279377.P407602719742006554

`A014963(gcd(n, n+1))*A279384(A001844(n))`
-/

namespace A279377.P407602719742006554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.gcd n (n + 1)) * A279384 (A001844 n).toNat

end

end A279377.P407602719742006554

/-! ## A279377.P619665793492883057

`A000045(A020639(2*(n+1)))*A279384(A001844(n))`
-/

namespace A279377.P619665793492883057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A279384 (A001844 n).toNat

end

end A279377.P619665793492883057

/-!
# A279378: Number of n X 2 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with new values introduced in order 0 sequentially upwards.

The programs for A279378, the canonical program `A279378.P2761334199534657203` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279378 has offset 1).

The definition of A279378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279378.P3893307158727358865

`ogf((1+x+x^2+x^3)/(1-2x-x^2-2x^3-3x^4-x^5))`
-/

namespace A279378.P3893307158727358865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1] [1, -2, -1, -2, -3, -1] n

end

end A279378.P3893307158727358865

namespace A279378

/-- `ogf((1+x+x^2+x^3)/(1-2x-x^2-2x^3-3x^4-x^5))` -/
def P3893307158727358865.Spec : Prop :=
  ∀ n, P3893307158727358865.a n = A279378 (n + 1)

end A279378

/-! ## A279378.P2761334199534657203

`2*a(n-1)+a(n-2)+2*a(n-3)+3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=22, a(4)=61`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A279378

/-- `2*a(n-1)+a(n-2)+2*a(n-3)+3*a(n-4)+a(n-5)` -/
def P2761334199534657203.Spec : Prop :=
  ∀ n, (P2761334199534657203.a n : ℤ) = A279378 (n + 1)

theorem P2761334199534657203.correct : P2761334199534657203.Spec := by
  intro n
  simp only [A279378, Nat.add_sub_cancel]

end A279378

/-! ## A279378.P14520055870296885288

`A279384(∑[n+1]+2)`
-/

namespace A279378.P14520055870296885288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279378.P14520055870296885288

namespace A279378

/-- `A279384(∑[n+1]+2)` -/
def P14520055870296885288.Spec : Prop :=
  ∀ n, P14520055870296885288.a n = A279378 (n + 1)

end A279378

/-! ## A279378.P10259909197877932997

`record[root(A279384(n+1), A193554(n))]`
-/

namespace A279378.P10259909197877932997
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A279384 (n + 1) : ℝ) ^ (1 / (A193554 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279378.P10259909197877932997

namespace A279378

/-- `record[root(A279384(n+1), A193554(n))]` -/
def P10259909197877932997.Spec : Prop :=
  ∀ n, P10259909197877932997.a n = (A279378 (n + 1) : ℝ)

end A279378

/-! ## A279378.P6972959794806406732

`record[root(A279384(n+1), A307847(n))]`
-/

namespace A279378.P6972959794806406732
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A279384 (n + 1) : ℝ) ^ (1 / (A307847 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279378.P6972959794806406732

namespace A279378

/-- `record[root(A279384(n+1), A307847(n))]` -/
def P6972959794806406732.Spec : Prop :=
  ∀ n, P6972959794806406732.a n = (A279378 (n + 1) : ℝ)

end A279378

/-!
# A279379: Number of nX3 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with new values introduced in order 0 sequentially upwards.

The programs for A279379, there is no canonical definition to state claims against.
-/

/-! ## A279379.P1600993508897199016

`A279384(∑[n+2]+4)`
-/

namespace A279379.P1600993508897199016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279379.P1600993508897199016

/-! ## A279379.P14924221704699487147

`record[gcd(1-A159854(n), A279384(n+1))]`
-/

namespace A279379.P14924221704699487147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A159854 n) (A279384 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279379.P14924221704699487147

/-! ## A279379.P16025784559512829433

`A279384(A167614(n+1))%A002704(n)`
-/

namespace A279379.P16025784559512829433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279384 (A167614 (n + 1)).toNat) (A002704 n)

end

end A279379.P16025784559512829433

/-! ## A279379.P12704847348874542816

`gcd(A000038(n), A279384(A167614(n+1)))`
-/

namespace A279379.P12704847348874542816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A279384 (A167614 (n + 1)).toNat)

end

end A279379.P12704847348874542816

/-! ## A279379.P15919998789410605788

`lcm(A033999(n), A279384(A167614(n+1)))`
-/

namespace A279379.P15919998789410605788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A279384 (A167614 (n + 1)).toNat)

end

end A279379.P15919998789410605788

/-!
# A279380: Number of nX4 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with new values introduced in order 0 sequentially upwards.

The programs for A279380, there is no canonical definition to state claims against.
-/

/-! ## A279380.P14161069128513854042

`A279384(A374004(n+1))`
-/

namespace A279380.P14161069128513854042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (A374004 (n + 1)).toNat

end

end A279380.P14161069128513854042

/-! ## A279380.P4308911213794152815

`A279384(A141214(n)+7)`
-/

namespace A279380.P4308911213794152815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (A141214 n + 7).toNat

end

end A279380.P4308911213794152815

/-! ## A279380.P10287183422189348562

`A279384(Δ[A008778(n)]+6)`
-/

namespace A279380.P10287183422189348562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (f1 (n + 1) - f1 n + 6).toNat

end

end A279380.P10287183422189348562

/-! ## A279380.P13976865611770222146

`A279384(A167614(n+2)+1)`
-/

namespace A279380.P13976865611770222146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (A167614 (n + 2) + 1).toNat

end

end A279380.P13976865611770222146

/-! ## A279380.P11468235721340899497

`A279384(A141214(n+1))`
-/

namespace A279380.P11468235721340899497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (A141214 (n + 1)).toNat

end

end A279380.P11468235721340899497

/-!
# A279381: Number of nX5 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with new values introduced in order 0 sequentially upwards.

The programs for A279381, there is no canonical definition to state claims against.
-/

/-! ## A279381.P7363541062332868948

`A279384(A374005(n+1))`
-/

namespace A279381.P7363541062332868948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (A374005 (n + 1)).toNat

end

end A279381.P7363541062332868948

/-! ## A279381.P2933474904434371452

`A279384(A167499(n+3))`
-/

namespace A279381.P2933474904434371452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (A167499 (n + 3)).toNat

end

end A279381.P2933474904434371452

/-! ## A279381.P17866931418963427119

`A279384(A155212(n)+13)`
-/

namespace A279381.P17866931418963427119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (A155212 n + 13).toNat

end

end A279381.P17866931418963427119

/-! ## A279381.P13647473969287974946

`A279384(eq[6, A131818(n+1)])`
-/

namespace A279381.P13647473969287974946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279381.P13647473969287974946

/-! ## A279381.P17417702497508945604

`A279384(A046691(n+3))`
-/

namespace A279381.P17417702497508945604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (A046691 (n + 3)).toNat

end

end A279381.P17417702497508945604

/-!
# A279382: Number of nX6 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with new values introduced in order 0 sequentially upwards.

The programs for A279382, there is no canonical definition to state claims against.
-/

/-! ## A279382.P10277420387393527486

`A279384(A374007(n+1))`
-/

namespace A279382.P10277420387393527486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (A374007 (n + 1)).toNat

end

end A279382.P10277420387393527486

/-! ## A279382.P9248044343946849712

`A279384(A046691(n+3)+10)`
-/

namespace A279382.P9248044343946849712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (A046691 (n + 3) + 10).toNat

end

end A279382.P9248044343946849712

/-! ## A279382.P11216620454346964009

`A279384(eq[7, A131818(n+1)])`
-/

namespace A279382.P11216620454346964009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279382.P11216620454346964009

/-! ## A279382.P16567335150698970543

`A279384(A056119(n)+16)`
-/

namespace A279382.P16567335150698970543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (A056119 n + 16).toNat

end

end A279382.P16567335150698970543

/-! ## A279382.P8575384379566134255

`A279384(eq[3, A219347(n)])`
-/

namespace A279382.P8575384379566134255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279382.P8575384379566134255

/-!
# A279383: Number of nX7 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with new values introduced in order 0 sequentially upwards.

The programs for A279383, there is no canonical definition to state claims against.
-/

/-! ## A279383.P14999798370754612988

`A279384(A374008(n+1))`
-/

namespace A279383.P14999798370754612988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (A374008 (n + 1)).toNat

end

end A279383.P14999798370754612988

/-! ## A279383.P14171887988006342778

`A279384(eq[8, A131818(n+1)])`
-/

namespace A279383.P14171887988006342778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279383.P14171887988006342778

/-! ## A279383.P16928579792449596385

`A279384(eq[4, A219347(n)])`
-/

namespace A279383.P16928579792449596385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279383.P16928579792449596385

/-! ## A279383.P13105376106963737389

`A279384(eq[6, A193592(n)])`
-/

namespace A279383.P13105376106963737389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279383.P13105376106963737389

/-! ## A279383.P18142312198856855648

`A279384(A052905(n+4)-1)`
-/

namespace A279383.P18142312198856855648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279384 (A052905 (n + 4) - 1).toNat

end

end A279383.P18142312198856855648

/-!
# A279385: Irregular triangle read by rows in which row n lists the numbers k such that the largest Dyck path of the symmetric representation of sigma(k) contains the point (n,n), or row n is 0 if no such k exists.

The programs for A279385, there is no canonical definition to state claims against.
-/

/-! ## A279385.P145071176750552269

`A248148(n+1)%A108446(A284390(n+1))`
-/

namespace A279385.P145071176750552269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248148 (n + 1)) (A108446 (A284390 (n + 1)).toNat)

end

end A279385.P145071176750552269

/-!
# A279387: Irregular triangle read by rows: suppose the symmetric representation of sigma(n) consists of m = A250068(n) layers of width 1, arranged in increasing order; then T(n,k) (n >= 1, 1 <= k <= m) is the number of subparts in the k-th layer.

The programs for A279387, there is no canonical definition to state claims against.
-/

/-! ## A279387.P2537910682702802737

`gcd(A306239(A037916(3*n+1)), A378286(2*n+3))`
-/

namespace A279387.P2537910682702802737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A306239 (A037916 (3 * n + 1)).toNat) (A378286 (2 * n + 3))

end

end A279387.P2537910682702802737

/-! ## A279387.P12477605084555535623

`gcd(A194637(n+4), A275918(A051885(n)))`
-/

namespace A279387.P12477605084555535623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A194637 (n + 4)) (A275918 (A051885 n).toNat)

end

end A279387.P12477605084555535623

/-! ## A279387.P4387901102436435574

`gcd(A047395(n+1), A323023(A003586(n+1)))`
-/

namespace A279387.P4387901102436435574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047395 (n + 1)) (A323023 (A003586 (n + 1)).toNat)

end

end A279387.P4387901102436435574

/-! ## A279387.P1863757014294436720

`A001221(A059809(n+1)+A007093(n))`
-/

namespace A279387.P1863757014294436720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A059809 (n + 1) + A007093 n).toNat

end

end A279387.P1863757014294436720

/-! ## A279387.P13553708632070345077

`A351014(or(A141709(n+2), A338900(n+5)))`
-/

namespace A279387.P13553708632070345077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (Int.lor (A141709 (n + 2)) (A338900 (n + 5))).toNat

end

end A279387.P13553708632070345077

/-!
# A279389: 3 times Mersenne primes A000668.

The programs for A279389, there is no canonical definition to state claims against.
-/

/-! ## A279389.P14169351272188923122

`3*A000668(n+1)`
-/

namespace A279389.P14169351272188923122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000668 (n + 1)

end

end A279389.P14169351272188923122

/-! ## A279389.P12186385846719957502

`A000668(n+1)+A139257(n+1)`
-/

namespace A279389.P12186385846719957502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) + A139257 (n + 1)

end

end A279389.P12186385846719957502

/-! ## A279389.P11155093462847279835

`3*A343733(n+2)`
-/

namespace A279389.P11155093462847279835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A343733 (n + 2)

end

end A279389.P11155093462847279835

/-! ## A279389.P10272986911844610803

`A174055(C(n+3, 3))`
-/

namespace A279389.P10272986911844610803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174055 (Nat.choose (n + 3) 3)

end

end A279389.P10272986911844610803

/-! ## A279389.P4347527075003557514

`A174055(∑[∑[n+1]])`
-/

namespace A279389.P4347527075003557514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174055 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279389.P4347527075003557514

/-!
# A279391: Irregular triangle read by rows in which row n lists the subparts of the successive layers of the symmetric representation of sigma(n).

The programs for A279391, there is no canonical definition to state claims against.
-/

/-! ## A279391.P2845499863469316071

`A280851(or(n+1, A318721(3*n+4)))`
-/

namespace A279391.P2845499863469316071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280851 (Int.lor (n + 1 : ℤ) (A318721 (3 * n + 4))).toNat

end

end A279391.P2845499863469316071

/-! ## A279391.P1410852591803411772

`A280851(∑[A280865(n)^A280851(n+1)])`
-/

namespace A279391.P1410852591803411772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280865 n : ℚ) ^ (A280851 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280851 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A279391.P1410852591803411772

/-!
# A279392: Bisection of primes congruent to 1 modulo 4 (A002144), depending on the corresponding sum of the A002972 and 2*A002973 entries being congruent to 1 modulo 4 or not. Here we give the first case.

The programs for A279392, there is no canonical definition to state claims against.
-/

/-! ## A279392.P2965555408977628029

`A045319(lt[0, A278720(n+1)])`
-/

namespace A279392.P2965555408977628029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A279392.P2965555408977628029

/-! ## A279392.P15998057376352795075

`A045344(lt[0, A278720(n+1)])`
-/

namespace A279392.P15998057376352795075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A279392.P15998057376352795075

/-! ## A279392.P7022036431095660235

`A065091(lt[0, A278720(n+1)])`
-/

namespace A279392.P7022036431095660235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A279392.P7022036431095660235

/-! ## A279392.P2031986715898307842

`A000040(lt[0, A278720(n+1)]+1)`
-/

namespace A279392.P2031986715898307842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A279392.P2031986715898307842

/-! ## A279392.P11935616064274139065

`A065091(lt[A276730(n+1), A000040(n+1)])`
-/

namespace A279392.P11935616064274139065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A279392.P11935616064274139065

/-! ## A279392.P2266694062271023918

`∪[A087877(n+1), A087880(n+1)]`
-/

namespace A279392.P2266694062271023918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279392.P2266694062271023918

/-!
# A279393: Bisection of primes congruent to 1 modulo 4 (A002144), depending on the corresponding sum of the A002972 and 2*A002973 entries being congruent to 1 modulo 4 or not. Here we give the second case.

The programs for A279393, there is no canonical definition to state claims against.
-/

/-! ## A279393.P489467754442257282

`A045344(lt[A278720(n+1), 0])`
-/

namespace A279393.P489467754442257282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A279393.P489467754442257282

/-! ## A279393.P8960375528635249156

`A065091(lt[A278720(n+1), 0])`
-/

namespace A279393.P8960375528635249156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A279393.P8960375528635249156

/-! ## A279393.P10383660941730074850

`A000040(lt[A278720(n+1), 0]+1)`
-/

namespace A279393.P10383660941730074850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A279393.P10383660941730074850

/-! ## A279393.P6835475764071326795

`A001748(lt[A278720(n+1), 0]+1)/3`
-/

namespace A279393.P6835475764071326795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℚ) / 3

end

end A279393.P6835475764071326795

/-! ## A279393.P16862875049326773200

`A065091(lt[A000040(n+1), A276730(n+1)])`
-/

namespace A279393.P16862875049326773200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A279393.P16862875049326773200

/-! ## A279393.P10845175147260958501

`p?[lt[n, A028583(n)]]`
-/

namespace A279393.P10845175147260958501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028583 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A279393.P10845175147260958501

/-! ## A279393.P1543508218203407817

`∪[A087878(n+1), A087879(n+1)]`
-/

namespace A279393.P1543508218203407817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279393.P1543508218203407817

/-!
# A279394: Triangle read by rows, T(n,m) = sigma_{n-m}(m) for n >= 1, m = 1,2, ..., n.

The programs for A279394, there is no canonical definition to state claims against.
-/

/-! ## A279394.P9075278505607087688

`A109974(∑[2*n]%comp[∑[n]])`
-/

namespace A279394.P9075278505607087688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A279394.P9075278505607087688

/-! ## A279394.P720232829190454591

`A109974(∑[char[∑[n]]]²-(n+1))`
-/

namespace A279394.P720232829190454591
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A279394.P720232829190454591

/-! ## A279394.P1561929828203837043

`and(-1, A109974(A061579(n)))`
-/

namespace A279394.P1561929828203837043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A109974 (A061579 n).toNat)

end

end A279394.P1561929828203837043

/-! ## A279394.P5477582988791502576

`A321258(n+1)+A009998(n)`
-/

namespace A279394.P5477582988791502576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321258 (n + 1) + A009998 n

end

end A279394.P5477582988791502576

/-! ## A279394.P9482021731872349160

`∑{d}[A002260(n+1), #^A025581(n)]`
-/

namespace A279394.P9482021731872349160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A025581 n : ℤ)

end

end A279394.P9482021731872349160

/-! ## A279394.P18227566983437568796

`2*A322082(n+1)-A322081(n+1)`
-/

namespace A279394.P18227566983437568796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322082 (n + 1) - A322081 (n + 1)

end

end A279394.P18227566983437568796

/-! ## A279394.P10136898337162119700

`A109974(A114327(n)+n)%root(11, 1/11)`
-/

namespace A279394.P10136898337162119700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109974 (A114327 n + (n : ℤ)).toNat) (SequenceMachineLib.roundAway ((11 : ℝ) ^ (1 / ((1 : ℚ) / 11 : ℝ))))

end

end A279394.P10136898337162119700

/-! ## A279394.P10832785805374531311

`A109974(A061579(n))%A000041(n+2)`
-/

namespace A279394.P10832785805374531311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109974 (A061579 n).toNat) (A000041 (n + 2))

end

end A279394.P10832785805374531311

/-! ## A279394.P207758357371897398

`∑{d}[A000005(A059268(n)), #^A025581(n)]`
-/

namespace A279394.P207758357371897398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A025581 n : ℤ)

end

end A279394.P207758357371897398

/-!
# A279395: a(n) = Sum_{ d >= 1, d divides n} (-1)^(n-d)*d^4.

The programs for A279395, there is no canonical definition to state claims against.
-/

/-! ## A279395.P7609629618157199012

`A279396(Δ[n²]+∑[n+3]+7)`
-/

namespace A279395.P7609629618157199012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279396 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 7 : ℕ) : ℤ)).toNat

end

end A279395.P7609629618157199012

/-! ## A279395.P11705142373963047309

`lcm(A279396(A046691(n+3)), A332288(n+1))`
-/

namespace A279395.P11705142373963047309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A279396 (A046691 (n + 3)).toNat) (A332288 (n + 1))

end

end A279395.P11705142373963047309

/-! ## A279395.P176591184083667704

`A279396(Δ[A023545(n+1)])/(A000027(n+1)-n)`
-/

namespace A279395.P176591184083667704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279396 (f1 (n + 1) - f1 n).toNat : ℚ) / (A000027 (n + 1) - (n : ℤ) : ℚ)

end

end A279395.P176591184083667704

/-!
# A279396: Triangle read by rows T(n, m) = sigma^*_(n-m)(m), n >= 1, m = 1, 2, ..., n, with sigma^*_(k)(n) given in a comment in A279395.

The programs for A279396, there is no canonical definition to state claims against.
-/

/-! ## A279396.P4294486355386952939

`lcm(A124460(A102480(n)), A322081(n+1))`
-/

namespace A279396.P4294486355386952939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124460 (A102480 n).toNat) (A322081 (n + 1))

end

end A279396.P4294486355386952939

/-! ## A279396.P3716017947745763435

`gcd(A328459(n)%3, A322081(n+1))`
-/

namespace A279396.P3716017947745763435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A328459 n) 3) (A322081 (n + 1))

end

end A279396.P3716017947745763435

/-! ## A279396.P7476992521897100327

`abs(A322081(n+1)%A004684(n+1))`
-/

namespace A279396.P7476992521897100327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A322081 (n + 1)) (A004684 (n + 1))|

end

end A279396.P7476992521897100327

/-! ## A279396.P3167759803248535296

`abs(A322081(n+1))%A153022(n+1)`
-/

namespace A279396.P3167759803248535296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A322081 (n + 1)| (A153022 (n + 1))

end

end A279396.P3167759803248535296

/-! ## A279396.P18197444832916508068

`A322081(n+1)^A000005(A287383(n))`
-/

namespace A279396.P18197444832916508068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322081 (n + 1) : ℚ) ^ (A000005 (A287383 n).toNat : ℤ)

end

end A279396.P18197444832916508068

/-!
# A279397: Row sums of triangle A279396.

The programs for A279397, there is no canonical definition to state claims against.
-/

/-! ## A279397.P12724030854576193367

`∑{#}[n, A279396(C(n+1, 2)+#+1)]`
-/

namespace A279397.P12724030854576193367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A279396 (Nat.choose (n + 1) 2 + (k + 1))

end

end A279397.P12724030854576193367

/-! ## A279397.P2111363250163725847

`A148423(n)+A001222(A059416(n))`
-/

namespace A279397.P2111363250163725847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148423 n + A001222 (A059416 n).toNat

end

end A279397.P2111363250163725847

/-! ## A279397.P11197634436916723914

`A050535(n)+A001222(A326550(n))`
-/

namespace A279397.P11197634436916723914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050535 n + A001222 (A326550 n).toNat

end

end A279397.P11197634436916723914

/-!
# A279398: a(n) is the smallest prime primitive root modulo A193305(n).

The programs for A279398, there is no canonical definition to state claims against.
-/

/-! ## A279398.P1182075969229970712

`A103309(A007290(n))+A046145(A193305(n+1))`
-/

namespace A279398.P1182075969229970712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 (A007290 n).toNat + A046145 (A193305 (n + 1)).toNat

end

end A279398.P1182075969229970712

/-! ## A279398.P2408108076966541346

`A046145(A193305(n+1))%A032672(A000041(n))`
-/

namespace A279398.P2408108076966541346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046145 (A193305 (n + 1)).toNat) (A032672 (A000041 n).toNat)

end

end A279398.P2408108076966541346

/-! ## A279398.P12799173382323867460

`A010055(A036454(n+1))*A046145(A193305(n+1))`
-/

namespace A279398.P12799173382323867460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A036454 (n + 1)).toNat * A046145 (A193305 (n + 1)).toNat

end

end A279398.P12799173382323867460

/-! ## A279398.P41242676530012224

`A111076(A193305(n+1)%A374806(2*(n+2)))`
-/

namespace A279398.P41242676530012224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (Int.tmod (A193305 (n + 1)) (A374806 (2 * (n + 2)))).toNat

end

end A279398.P41242676530012224

/-! ## A279398.P17720962798900825893

`A103309(A193305(n+1))%A068652(3*n+5)`
-/

namespace A279398.P17720962798900825893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103309 (A193305 (n + 1)).toNat) (A068652 (3 * n + 5))

end

end A279398.P17720962798900825893

