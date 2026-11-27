import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C048
import Seq.B000.C050
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
# A279300: Number of n X 1 0..2 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279300, the canonical program `A279300.P8583214145318446269` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279300 has offset 1).

The definition of A279300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279300.P8583214145318446269

`ogf((x-6x^2+9x^3+4x^4-6x^5-12x^6-4x^7)/(1-6x+6x^2+16x^3-12x^4-24x^5-8x^6))`

The canonical program, it is in `Seq.B000.C042`.
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

/-! ## A279300.P7104981711789801297

`A279534(1+∑[n])`
-/

namespace A279300.P7104981711789801297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279534 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279300.P7104981711789801297

namespace A279300

/-- `A279534(1+∑[n])` -/
def P7104981711789801297.Spec : Prop :=
  ∀ n, P7104981711789801297.a n = A279300 (n + 1)

end A279300

/-! ## A279300.P12277293849985069798

`A279925(1+∑[n])`
-/

namespace A279300.P12277293849985069798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279925 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279300.P12277293849985069798

namespace A279300

/-- `A279925(1+∑[n])` -/
def P12277293849985069798.Spec : Prop :=
  ∀ n, P12277293849985069798.a n = A279300 (n + 1)

end A279300

/-! ## A279300.P15170657445275198893

`A279305(∑[n]+1)`
-/

namespace A279300.P15170657445275198893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279305 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279300.P15170657445275198893

namespace A279300

/-- `A279305(∑[n]+1)` -/
def P15170657445275198893.Spec : Prop :=
  ∀ n, P15170657445275198893.a n = A279300 (n + 1)

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

/-! ## A279311.P7637437300525115918

`fp[8-xor(6, n)]!`
-/

namespace A279311.P7637437300525115918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - (Nat.xor 6 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0)

end

end A279311.P7637437300525115918

/-!
# A279312: Number of subsets of {1, 2, 3, ..., n} that include no consecutive even integers.

The programs for A279312, the canonical program `A279312.P18329410404252926570` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279312 has offset 0).

The definition of A279312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279312.P18329410404252926570

`2*a(n-2)+4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C042`.
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

/-! ## A279312.P1759971537046325091

`record[2^col(n)*A202453(n+1)]`
-/

namespace A279312.P1759971537046325091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n : ℤ) * A202453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279312.P1759971537046325091

namespace A279312

/-- `record[2^col(n)*A202453(n+1)]` -/
def P1759971537046325091.Spec : Prop :=
  ∀ n, P1759971537046325091.a n = A279312 n

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

The programs for A279313, the canonical program `A279313.P3952706338962781724` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279313 has offset 0).

The definition of A279313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279313.P3952706338962781724

`abs(n-14*round(n/14))`

The canonical program, it is in `Seq.B000.C042`.
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

The programs for A279316, the canonical program `A279316.P12908273073121982643` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279316 has offset 0).

The definition of A279316 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A279316.anchor (n : ℕ) : A279316 n = (([0, 1, 2, 3, 3, 2, 1].getD (n % 7) 0 : ℕ) : ℤ)` in `Proof.A279.A279316`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A279316.P12908273073121982643

`a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=3, a(5)=2, a(6)=1`

The canonical program, it is in `Seq.B000.C042`.
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

/-! ## A279317.P8375344526612130710

`A219158(∑[2+n])`
-/

namespace A279317.P8375344526612130710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279317.P8375344526612130710

/-! ## A279317.P15965053526155016295

`A113881(2*(n+1)²)`
-/

namespace A279317.P15965053526155016295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (2 * (n + 1) ^ 2)

end

end A279317.P15965053526155016295

/-!
# A279318: Permutation of the nonnegative integers [6k+3, 6k+2, 6k+1, 6k, 6k+5, 6k+4].

The programs for A279318, the canonical program `A279318.P15004235757766935366` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279318 has offset 0).

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

The canonical program, it is in `Seq.B000.C042`.
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

The programs for A279319, the canonical program `A279319.P14291676352488474219` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279319 has offset 0).

The definition of A279319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279319.P14291676352488474219

`abs(n-16*round(n/16))`

The canonical program, it is in `Seq.B000.C042`.
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

The programs for A279321, the canonical program `A279321.P9481517395730797203` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279321 has offset 0).

The definition of A279321 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A279321.anchor (n : ℕ) : A279321 n = (([1, 3, 5, 7, 5, 3, 1].getD (n % 7) 0 : ℕ) : ℤ)` in `Proof.A279.A279321`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A279321.P9481517395730797203

`a(n-7)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=5, a(5)=3, a(6)=1`

The canonical program, it is in `Seq.B000.C042`.
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

The programs for A279322, the canonical program `A279322.P9487066948656547903` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279322 has offset 1).

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

The canonical program, it is in `Seq.B000.C042`.
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

/-! ## A279322.P4688265385873165484

`A279327(∑[n]+1)`
-/

namespace A279322.P4688265385873165484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279322.P4688265385873165484

namespace A279322

/-- `A279327(∑[n]+1)` -/
def P4688265385873165484.Spec : Prop :=
  ∀ n, P4688265385873165484.a n = A279322 (n + 1)

end A279322

/-!
# A279323: Number of nX2 0..2 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279323, there is no canonical definition to state claims against.
-/

/-! ## A279323.P9376154844469073767

`A279327(∑[1+n]+2)`
-/

namespace A279323.P9376154844469073767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279323.P9376154844469073767

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

/-!
# A279325: Number of nX4 0..2 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279325, there is no canonical definition to state claims against.
-/

/-! ## A279325.P13704095804850114673

`A279327(C(n+5, 2)-n)`
-/

namespace A279325.P13704095804850114673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (Nat.choose (n + 5) 2 - n)

end

end A279325.P13704095804850114673

/-!
# A279326: Number of nX5 0..2 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279326, there is no canonical definition to state claims against.
-/

/-! ## A279326.P13616421770676525601

`A279327(∑[n+4]+11)`
-/

namespace A279326.P13616421770676525601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279327 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A279326.P13616421770676525601

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

/-! ## A279328.P11425532403299682335

`A130527(A066898(n+2))`
-/

namespace A279328.P11425532403299682335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130527 (A066898 (n + 2)).toNat

end

end A279328.P11425532403299682335

/-! ## A279328.P11477008457210205082

`A252474(A024786(n+2))`
-/

namespace A279328.P11477008457210205082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (A024786 (n + 2)).toNat

end

end A279328.P11477008457210205082

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

/-! ## A279329.P11005089233326745679

`abs(A279484(n)%A059890(n+1))`
-/

namespace A279329.P11005089233326745679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A279484 n) (A059890 (n + 1))|

end

end A279329.P11005089233326745679

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

/-! ## A279329.P15395808945435866669

`A124764(6*A331845(n))`
-/

namespace A279329.P15395808945435866669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (6 * A331845 n).toNat

end

end A279329.P15395808945435866669

/-! ## A279329.P689818039934278080

`A219180(A219107(A331845(n)²))`
-/

namespace A279329.P689818039934278080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219180 (A219107 (A331845 n ^ 2).toNat).toNat

end

end A279329.P689818039934278080

/-! ## A279329.P3235535666658816923

`A278929(A278929(A331845(n)²))`
-/

namespace A279329.P3235535666658816923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278929 (A278929 (A331845 n ^ 2).toNat).toNat

end

end A279329.P3235535666658816923

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

/-! ## A279333.P18240316631692960148

`A134413(A042667(n))`
-/

namespace A279333.P18240316631692960148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134413 (A042667 n).toNat

end

end A279333.P18240316631692960148

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

/-! ## A279335.P16882502897123203008

`lcm(A160618(n), A267482(A147399(n+1)))`
-/

namespace A279335.P16882502897123203008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A160618 n) (A267482 (A147399 (n + 1)).toNat)

end

end A279335.P16882502897123203008

/-!
# A279336: Permutation of natural numbers: a(1) = 1; for n > 1, if A079559(n) = 0, a(n) = 2*A234016(n), otherwise a(n) = A003961(a(A213714(n))).

The programs for A279336, there is no canonical definition to state claims against.
-/

/-! ## A279336.P3196294228780874951

`fo[A279337(n+1)-1]+1`
-/

namespace A279336.P3196294228780874951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279337 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A279336.P3196294228780874951

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

/-! ## A279337.P15990837981940530712

`fo[A279336(n+1)-1]+1`
-/

namespace A279337.P15990837981940530712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279336 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A279337.P15990837981940530712

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

/-! ## A279338.P6505229816903361430

`fo[A279339(n+1)-1]+1`
-/

namespace A279338.P6505229816903361430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279339 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A279338.P6505229816903361430

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

/-! ## A279339.P2267333356255155211

`fo[A279338(n+1)-1]+1`
-/

namespace A279339.P2267333356255155211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A279339.P2267333356255155211

/-! ## A279339.P2006925990864665419

`A279349(A055644(n+1))`
-/

namespace A279339.P2006925990864665419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279349 (A055644 (n + 1)).toNat

end

end A279339.P2006925990864665419

/-!
# A279340: First differences of A055938.

The programs for A279340, the canonical program `A279340.P3137699239334451419` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279340 has offset 1).

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

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A279340

/-- `A055938(n+2)-A055938(n+1)` -/
def P3137699239334451419.Spec : Prop :=
  ∀ n, P3137699239334451419.a n = A279340 (n + 1)

theorem P3137699239334451419.correct : P3137699239334451419.Spec := by
  intro n
  simp only [A279340, Nat.add_sub_cancel]

end A279340

/-! ## A279340.P3250243029087845123

`Δ[comp[a(floor(n/2))+n]]` with `a(0)=0`
-/

namespace A279340.P3250243029087845123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A279340.P3250243029087845123

namespace A279340

/-- `Δ[comp[a(floor(n/2))+n]]` -/
def P3250243029087845123.Spec : Prop :=
  ∀ n, P3250243029087845123.a n = A279340 (n + 1)

end A279340

/-! ## A279340.P7679065361228346160

`Δ[comp[val(n, 2)-a(n-1)]]` with `a(0)=1, a(1)=2`
-/

namespace A279340.P7679065361228346160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  (SequenceMachineLib.valuation n 2 : ℤ) - f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A279340.P7679065361228346160

namespace A279340

/-- `Δ[comp[val(n, 2)-a(n-1)]]` -/
def P7679065361228346160.Spec : Prop :=
  ∀ n, P7679065361228346160.a n = A279340 (n + 1)

end A279340

/-! ## A279340.P11917654940900022498

`2*char[a(floor(n/2))+n]+1` with `a(0)=-1`
-/

namespace A279340.P11917654940900022498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A279340.P11917654940900022498

namespace A279340

/-- `2*char[a(floor(n/2))+n]+1` -/
def P11917654940900022498.Spec : Prop :=
  ∀ n, (P11917654940900022498.a n : ℤ) = A279340 (n + 1)

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

/-! ## A279341.P9422578598416727696

`fo[A279342(n)-1]`
-/

namespace A279341.P9422578598416727696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279342 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A279341.P9422578598416727696

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

/-! ## A279342.P13593381495467203791

`fo[A279341(n+1)]+1`
-/

namespace A279342.P13593381495467203791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279341 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A279342.P13593381495467203791

/-! ## A279342.P5680210140664228943

`A256992(A279344(A054429(2*n+1)))`
-/

namespace A279342.P5680210140664228943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256992 (A279344 (A054429 (2 * n + 1)).toNat).toNat

end

end A279342.P5680210140664228943

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

/-! ## A279343.P10505108242147338216

`fo[A279344(n)-1]`
-/

namespace A279343.P10505108242147338216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279344 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A279343.P10505108242147338216

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

/-! ## A279344.P14720786586588913902

`fo[A279343(n+1)]+1`
-/

namespace A279344.P14720786586588913902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279343 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A279344.P14720786586588913902

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

/-! ## A279344.P10758454519433534892

`A234017(A279342(A279343(A279342(2*n+1))))`
-/

namespace A279344.P10758454519433534892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 (A279342 (A279343 (A279342 (2 * n + 1)).toNat).toNat).toNat

end

end A279344.P10758454519433534892

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

/-! ## A279345.P10495209426227174515

`A048881(2*A279341(n+1))`
-/

namespace A279345.P10495209426227174515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A279341 (n + 1)).toNat

end

end A279345.P10495209426227174515

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

/-! ## A279346.P5519444715056559175

`∑{e}[A278502(1+n), #]`
-/

namespace A279346.P5519444715056559175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278502 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A279346.P5519444715056559175

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

/-! ## A279346.P10199360649940754795

`A001222(A278502(1+n))`
-/

namespace A279346.P10199360649940754795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278502 (1 + n)).toNat

end

end A279346.P10199360649940754795

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

/-! ## A279348.P18048934279550220404

`A250249(A279338(n+1)%A014206(n))`
-/

namespace A279348.P18048934279550220404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250249 (Int.tmod (A279338 (n + 1)) (A014206 n)).toNat

end

end A279348.P18048934279550220404

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

/-! ## A279349.P9373075310042005157

`fo[A279348(n+1)-1]+1`
-/

namespace A279349.P9373075310042005157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279348 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A279349.P9373075310042005157

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

/-! ## A279350.P10493617955533571174

`A278525(A279356(n+1))`
-/

namespace A279350.P10493617955533571174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278525 (A279356 (n + 1)).toNat

end

end A279350.P10493617955533571174

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

/-! ## A279351.P4817273654114970138

`A279352(A279352(A279352(n+1)))`
-/

namespace A279351.P4817273654114970138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279352 (A279352 (A279352 (n + 1)).toNat).toNat

end

end A279351.P4817273654114970138

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

/-! ## A279352.P4202994273661137567

`A241916(A279356(n+1))`
-/

namespace A279352.P4202994273661137567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A279356 (n + 1)).toNat

end

end A279352.P4202994273661137567

/-!
# A279353: a(n) = A055938(n+1) XOR A055938(n).

The programs for A279353, the canonical program `A279353.P4456106351297198872` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279353 has offset 1).

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

/-! ## A279353.P4456106351297198872

`xor(A055938(1+n), A055938(n+2))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A279353

/-- `xor(A055938(1+n), A055938(n+2))` -/
def P4456106351297198872.Spec : Prop :=
  ∀ n, P4456106351297198872.a n = A279353 (n + 1)

theorem P4456106351297198872.correct : P4456106351297198872.Spec := by
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

/-! ## A279354.P10199121422940417809

`A278525(A279352(n+1))`
-/

namespace A279354.P10199121422940417809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278525 (A279352 (n + 1)).toNat

end

end A279354.P10199121422940417809

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

/-! ## A279355.P16246536548162102991

`fo[A279356(n+1)-1]+1`
-/

namespace A279355.P16246536548162102991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279356 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A279355.P16246536548162102991

/-! ## A279355.P16264568938499844305

`A279356(A279356(A249817(A249817(A279356(n+1)))))`
-/

namespace A279355.P16264568938499844305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279356 (A279356 (A249817 (A249817 (A279356 (n + 1)).toNat).toNat).toNat).toNat

end

end A279355.P16264568938499844305

/-! ## A279355.P4952206607198849278

`A279356(A279356(A279356(n+1)))`
-/

namespace A279355.P4952206607198849278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279356 (A279356 (A279356 (n + 1)).toNat).toNat

end

end A279355.P4952206607198849278

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

/-! ## A279356.P12207275919957110922

`A241916(A279352(n+1))`
-/

namespace A279356.P12207275919957110922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A279352 (n + 1)).toNat

end

end A279356.P12207275919957110922

/-! ## A279356.P435932551219432901

`A163511(A279341(A279347(A279349(n+1))))`
-/

namespace A279356.P435932551219432901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A279341 (A279347 (A279349 (n + 1)).toNat).toNat).toNat

end

end A279356.P435932551219432901

/-! ## A279356.P8810866486624413601

`A250246(A279348(A279342(A252754(n+1))))`
-/

namespace A279356.P8810866486624413601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A279348 (A279342 (A252754 (n + 1)).toNat).toNat).toNat

end

end A279356.P8810866486624413601

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

/-! ## A279357.P10290013095925682610

`xor(A005187(1+n), A005187(n))`
-/

namespace A279357.P10290013095925682610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005187 (1 + n)) (A005187 n)

end

end A279357.P10290013095925682610

namespace A279357

/-- `xor(A005187(1+n), A005187(n))` -/
def P10290013095925682610.Spec : Prop :=
  ∀ n, P10290013095925682610.a n = A279357 n

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

/-! ## A279363.P4741471243097782484

`A001159(n+1)-(n+1)^4`
-/

namespace A279363.P4741471243097782484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (n + 1) - ((n + 1) ^ 4 : ℤ)

end

end A279363.P4741471243097782484

namespace A279363

/-- `A001159(n+1)-(n+1)^4` -/
def P4741471243097782484.Spec : Prop :=
  ∀ n, P4741471243097782484.a n = A279363 (n + 1)

theorem P4741471243097782484.correct : P4741471243097782484.Spec := by
  intro n
  simp only [A279363, Nat.add_sub_cancel, A279363.P4741471243097782484.a, A279363.P36880166466637901.a, A000583, A000583.P14547500281748394449.a, A001159, A001159.P8364664063089029622.f1, A001159.P8364664063089029622.a, SequenceMachineLib.memo_apply]
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
  simp only [A279364, Nat.add_sub_cancel, A279364.P13687907619460127318.a, A279364.P12642884651805125480.a, A000584, A000584.P5477385692209315495.a, A001160, A001160.P12560755524347550975.f1, A001160.P12560755524347550975.a, SequenceMachineLib.memo_apply]
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

/-! ## A279364.P4035807441527529261

`∑{d}[1+n, #^5]-A000584(n+1)`
-/

namespace A279364.P4035807441527529261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 5 : ℕ) : ℤ) - A000584 (n + 1)

end

end A279364.P4035807441527529261

namespace A279364

/-- `∑{d}[1+n, #^5]-A000584(n+1)` -/
def P4035807441527529261.Spec : Prop :=
  ∀ n, P4035807441527529261.a n = A279364 (n + 1)

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

/-! ## A279370.P2311105783013399077

`C(2, A027390(n))-A276592(n+1)`
-/

namespace A279370.P2311105783013399077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A027390 n).toNat : ℤ) - A276592 (n + 1)

end

end A279370.P2311105783013399077

/-! ## A279370.P3383450249110057045

`C(2, A349513(n))-A276592(n+1)`
-/

namespace A279370.P3383450249110057045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A349513 n).toNat : ℤ) - A276592 (n + 1)

end

end A279370.P3383450249110057045

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

/-! ## A279373.P1063473808979143692

`record[A122377(A262981(1+n))]`
-/

namespace A279373.P1063473808979143692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A262981 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279373.P1063473808979143692

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

/-! ## A279374.P37759370322044381

`record[A300301(A272727(n))]`
-/

namespace A279374.P37759370322044381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300301 (A272727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279374.P37759370322044381

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

/-!
# A279378: Number of n X 2 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with new values introduced in order 0 sequentially upwards.

The programs for A279378, the canonical program `A279378.P2761334199534657203` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279378 has offset 1).

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

The canonical program, it is in `Seq.B000.C042`.
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

/-! ## A279387.P8726679636931442859

`A359211(eq[A257990(n+1), A366040(n+2)])`
-/

namespace A279387.P8726679636931442859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359211 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A279387.P8726679636931442859

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

/-! ## A279389.P15426718558908953122

`3*A169628(∑[n+1])`
-/

namespace A279389.P15426718558908953122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A169628 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279389.P15426718558908953122

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

/-!
# A279392: Bisection of primes congruent to 1 modulo 4 (A002144), depending on the corresponding sum of the A002972 and 2*A002973 entries being congruent to 1 modulo 4 or not. Here we give the first case.

The programs for A279392, there is no canonical definition to state claims against.
-/

/-! ## A279392.P8274480608904821624

`A045319(lt[0, A278720(1+n)])`
-/

namespace A279392.P8274480608904821624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A279392.P8274480608904821624

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

/-! ## A279392.P14745950803657509306

`A065091(lt[0, A278720(1+n)])`
-/

namespace A279392.P14745950803657509306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A279392.P14745950803657509306

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

/-! ## A279393.P11678552783833042048

`A065091(lt[A278720(1+n), 0])`
-/

namespace A279393.P11678552783833042048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A279393.P11678552783833042048

/-! ## A279393.P5939293690522401454

`A000040(1+lt[A278720(n+1), 0])`
-/

namespace A279393.P5939293690522401454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A279393.P5939293690522401454

/-! ## A279393.P2923836556221502449

`A006093(lt[A278720(n+1), 0]+1)+1`
-/

namespace A279393.P2923836556221502449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) + 1

end

end A279393.P2923836556221502449

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

/-! ## A279394.P6039161714534051411

`∑{d}[col(n)+1, #^(row(n)-col(n))]`
-/

namespace A279394.P6039161714534051411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A279394.P6039161714534051411

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

/-! ## A279397.P7006045727658834058

`A079952(∑[A047085(n)])+1`
-/

namespace A279397.P7006045727658834058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079952 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A279397.P7006045727658834058

/-! ## A279397.P2111363250163725847

`A148423(n)+A001222(A059416(n))`
-/

namespace A279397.P2111363250163725847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148423 n + A001222 (A059416 n).toNat

end

end A279397.P2111363250163725847

/-!
# A279398: a(n) is the smallest prime primitive root modulo A193305(n).

The programs for A279398, there is no canonical definition to state claims against.
-/

/-! ## A279398.P41242676530012224

`A111076(A193305(n+1)%A374806(2*(n+2)))`
-/

namespace A279398.P41242676530012224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (Int.tmod (A193305 (n + 1)) (A374806 (2 * (n + 2)))).toNat

end

end A279398.P41242676530012224

