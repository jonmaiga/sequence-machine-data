import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
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
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A301400: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301400, there is no canonical definition to state claims against.
-/

/-! ## A301400.P6756087665281456920

`A237839(A176483(n)+1)`
-/

namespace A301400.P6756087665281456920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237839 (A176483 n + 1).toNat

end

end A301400.P6756087665281456920

/-!
# A301401: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301401, there is no canonical definition to state claims against.
-/

/-! ## A301401.P15612741397317774455

`A301407(∑[4*n]+1)`
-/

namespace A301401.P15612741397317774455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301401.P15612741397317774455

/-! ## A301401.P6314780957439414040

`record[A003982(n)*A301407(n+1)]`
-/

namespace A301401.P6314780957439414040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A301407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301401.P6314780957439414040

/-! ## A301401.P1764833190545893928

`A301407(A001844(n))+A185238(n)`
-/

namespace A301401.P1764833190545893928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (A001844 n).toNat + A185238 n

end

end A301401.P1764833190545893928

/-! ## A301401.P5153257017136142913

`A301407(A001844(n))+A185255(n)`
-/

namespace A301401.P5153257017136142913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (A001844 n).toNat + A185255 n

end

end A301401.P5153257017136142913

/-! ## A301401.P7449413757161603440

`A007318(∑[n])*A301407(A001844(n))`
-/

namespace A301401.P7449413757161603440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A301407 (A001844 n).toNat

end

end A301401.P7449413757161603440

/-!
# A301402: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301402, the canonical program `A301402.P5725263456662410360` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301402 has offset 1).

The definition of A301402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301402.P5725263456662410360

`7*(a(n-1)+a(n-2))` with `a(0)=4, a(1)=32`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A301402

/-- `7*(a(n-1)+a(n-2))` -/
def P5725263456662410360.Spec : Prop :=
  ∀ n, (P5725263456662410360.a n : ℤ) = A301402 (n + 1)

theorem P5725263456662410360.correct : P5725263456662410360.Spec := by
  intro n
  simp only [A301402, Nat.add_sub_cancel]

end A301402

/-! ## A301402.P13661589459239964887

`4*A395831(n)`
-/

namespace A301402.P13661589459239964887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A395831 n

end

end A301402.P13661589459239964887

namespace A301402

/-- `4*A395831(n)` -/
def P13661589459239964887.Spec : Prop :=
  ∀ n, P13661589459239964887.a n = A301402 (n + 1)

end A301402

/-! ## A301402.P17381899450915866202

`2/3*A155130(n+1)`
-/

namespace A301402.P17381899450915866202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A155130 (n + 1) : ℚ)

end

end A301402.P17381899450915866202

namespace A301402

/-- `2/3*A155130(n+1)` -/
def P17381899450915866202.Spec : Prop :=
  ∀ n, P17381899450915866202.a n = (A301402 (n + 1) : ℚ)

end A301402

/-! ## A301402.P1991471467401529806

`4*A180165(A055998(n+5)-3)`
-/

namespace A301402.P1991471467401529806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A180165 (A055998 (n + 5) - 3).toNat

end

end A301402.P1991471467401529806

namespace A301402

/-- `4*A180165(A055998(n+5)-3)` -/
def P1991471467401529806.Spec : Prop :=
  ∀ n, P1991471467401529806.a n = A301402 (n + 1)

end A301402

/-!
# A301403: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301403, there is no canonical definition to state claims against.
-/

/-! ## A301403.P16726732427182600890

`A301407(A052905(n)+9)`
-/

namespace A301403.P16726732427182600890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (A052905 n + 9).toNat

end

end A301403.P16726732427182600890

/-! ## A301403.P17662585644262318758

`A301407(A055999(n)+10)`
-/

namespace A301403.P17662585644262318758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (A055999 n + 10).toNat

end

end A301403.P17662585644262318758

/-! ## A301403.P1496485376385342111

`A301407(A167614(n+2)+1)`
-/

namespace A301403.P1496485376385342111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (A167614 (n + 2) + 1).toNat

end

end A301403.P1496485376385342111

/-! ## A301403.P12293335469177732223

`A301407(A000217(n+3)+4)`
-/

namespace A301403.P12293335469177732223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (A000217 (n + 3) + 4).toNat

end

end A301403.P12293335469177732223

/-! ## A301403.P12016361522000113152

`A301407(Δ[A264443(n)-n²])`
-/

namespace A301403.P12016361522000113152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (f1 (n + 1) - f1 n).toNat

end

end A301403.P12016361522000113152

/-!
# A301404: Number of n X 5 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301404, there is no canonical definition to state claims against.
-/

/-! ## A301404.P5470648575503962653

`A301407(A155212(n)+13)`
-/

namespace A301404.P5470648575503962653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (A155212 n + 13).toNat

end

end A301404.P5470648575503962653

/-! ## A301404.P810760506829735294

`A301407(Δ[A264443(n)])`
-/

namespace A301404.P810760506829735294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (f1 (n + 1) - f1 n).toNat

end

end A301404.P810760506829735294

/-! ## A301404.P6283476087574551522

`A301407(A374005(n+1))`
-/

namespace A301404.P6283476087574551522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (A374005 (n + 1)).toNat

end

end A301404.P6283476087574551522

/-! ## A301404.P6848348440822942525

`A301407(A046691(n+3))`
-/

namespace A301404.P6848348440822942525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (A046691 (n + 3)).toNat

end

end A301404.P6848348440822942525

/-! ## A301404.P14931466017367595927

`A301407(eq[4, A193592(n)])`
-/

namespace A301404.P14931466017367595927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301404.P14931466017367595927

/-!
# A301405: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301405, there is no canonical definition to state claims against.
-/

/-! ## A301405.P12782531919058489923

`A301407(A046691(n+3)+10)`
-/

namespace A301405.P12782531919058489923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (A046691 (n + 3) + 10).toNat

end

end A301405.P12782531919058489923

/-! ## A301405.P1447029486736519027

`A301407(A374007(n+1))`
-/

namespace A301405.P1447029486736519027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (A374007 (n + 1)).toNat

end

end A301405.P1447029486736519027

/-! ## A301405.P16286161642533503082

`A301407(A052905(n+3))`
-/

namespace A301405.P16286161642533503082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (A052905 (n + 3)).toNat

end

end A301405.P16286161642533503082

/-! ## A301405.P18006805225133907013

`A301407(eq[3, A219347(n)])`
-/

namespace A301405.P18006805225133907013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301405.P18006805225133907013

/-! ## A301405.P2827696482670368069

`A301407(eq[5, A193592(n)])`
-/

namespace A301405.P2827696482670368069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301405.P2827696482670368069

/-!
# A301406: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301406, there is no canonical definition to state claims against.
-/

/-! ## A301406.P5027683825637360385

`A301407(eq[8, A131818(n+1)])`
-/

namespace A301406.P5027683825637360385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301406.P5027683825637360385

/-! ## A301406.P17043225247183780982

`A301407(A374008(n+1))`
-/

namespace A301406.P17043225247183780982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (A374008 (n + 1)).toNat

end

end A301406.P17043225247183780982

/-! ## A301406.P3395102128041622681

`A301407(A055999(n+4))`
-/

namespace A301406.P3395102128041622681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (A055999 (n + 4)).toNat

end

end A301406.P3395102128041622681

/-! ## A301406.P17538102497925030621

`A301407(eq[4, A219347(n)])`
-/

namespace A301406.P17538102497925030621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301406.P17538102497925030621

/-! ## A301406.P6604937920041166970

`A301407(eq[6, A193592(n)])`
-/

namespace A301406.P6604937920041166970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301406.P6604937920041166970

/-!
# A301407: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301407, there is no canonical definition to state claims against.
-/

/-! ## A301407.P10962126958614835404

`A145342(A301784(n+1))`
-/

namespace A301407.P10962126958614835404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (A301784 (n + 1)).toNat

end

end A301407.P10962126958614835404

/-! ## A301407.P7827128879215876306

`A145342(A302010(n+1))`
-/

namespace A301407.P7827128879215876306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (A302010 (n + 1)).toNat

end

end A301407.P7827128879215876306

/-! ## A301407.P12542694645431727246

`A303421(n+1)+A004216(A019425(A303421(n+1)))`
-/

namespace A301407.P12542694645431727246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303421 (n + 1) + A004216 (A019425 (A303421 (n + 1)).toNat).toNat

end

end A301407.P12542694645431727246

/-! ## A301407.P5431111816309710245

`A303421(n+1)+A185238(A222488(n+1))`
-/

namespace A301407.P5431111816309710245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303421 (n + 1) + A185238 (A222488 (n + 1)).toNat

end

end A301407.P5431111816309710245

/-!
# A301409: G.f. A(x) satisfies: A(x) = 1/(1 - x*A(x) - x^2*A(x)/(1 - 2*x*A(x) - 2*x^2*A(x)/(1 - 3*x*A(x) - 3*x^2*A(x)/(1 - ...)))), a continued fraction.

The programs for A301409, there is no canonical definition to state claims against.
-/

/-! ## A301409.P18360657958259414056

`or(A008611(A064641(n)), A098479(n))`
-/

namespace A301409.P18360657958259414056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008611 (A064641 n).toNat) (A098479 n)

end

end A301409.P18360657958259414056

/-! ## A301409.P5303874789146461580

`A224293(A084831(n+1))+A118927(n)`
-/

namespace A301409.P5303874789146461580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224293 (A084831 (n + 1)).toNat + A118927 n

end

end A301409.P5303874789146461580

/-! ## A301409.P413218687470473661

`or(A217216(n+1), A217262(A217275(n)))`
-/

namespace A301409.P413218687470473661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A217216 (n + 1)) (A217262 (A217275 n).toNat)

end

end A301409.P413218687470473661

/-!
# A301411: G.f. A(x) satisfies: A(x) = 1/(1 - x*A(x) - x*A(x)^2/(1 - x*A(x)^3 - x*A(x)^4/(1 - x*A(x)^5 - x*A(x)^6/(1 - ...)))), a continued fraction.

The programs for A301411, there is no canonical definition to state claims against.
-/

/-! ## A301411.P6328321231948483604

`∑[A064413(A083069(n)-n)]`
-/

namespace A301411.P6328321231948483604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A083069 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301411.P6328321231948483604

/-!
# A301412: G.f. A(x) satisfies: A(x) = 1/(1 - x*A(x)/(1 - x*A(x)/(1 - x^2*A(x)/(1 - x^2*A(x)/(1 - x^3*A(x)/(1 - x^3*A(x)/(1 - ...))))))), a continued fraction.

The programs for A301412, there is no canonical definition to state claims against.
-/

/-! ## A301412.P7438607740022689083

`A072912(A150861(n))`
-/

namespace A301412.P7438607740022689083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072912 (A150861 n).toNat

end

end A301412.P7438607740022689083

/-! ## A301412.P10911468526728324741

`A195120(A150991(n)+1)`
-/

namespace A301412.P10911468526728324741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A150991 n + 1).toNat

end

end A301412.P10911468526728324741

/-! ## A301412.P3918081423719679256

`A195120(or(2, A150991(n))-1)`
-/

namespace A301412.P3918081423719679256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (Int.lor 2 (A150991 n) - 1).toNat

end

end A301412.P3918081423719679256

/-!
# A301413: a(n) = A002182(n)/A002110(A108602(n)).

The programs for A301413, there is no canonical definition to state claims against.
-/

/-! ## A301413.P18280155882350719286

`A002182(n+1)/A002110(A108602(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A301413.P18280155882350719286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) / (A002110 (A108602 (n + 1)).toNat : ℚ)

end

end A301413.P18280155882350719286

/-! ## A301413.P5424967604334435483

`A002182(n+1)/A319865(n+1)`
-/

namespace A301413.P5424967604334435483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) / (A319865 (n + 1) : ℚ)

end

end A301413.P5424967604334435483

/-! ## A301413.P3477752658704426613

`(A135372(n+1)-1)/A319865(n+1)`
-/

namespace A301413.P3477752658704426613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135372 (n + 1) - 1 : ℚ) / (A319865 (n + 1) : ℚ)

end

end A301413.P3477752658704426613

/-! ## A301413.P3404534502946064437

`A002182(n+1)/A034386(A272605(n+1))`
-/

namespace A301413.P3404534502946064437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) / (A034386 (A272605 (n + 1)).toNat : ℚ)

end

end A301413.P3404534502946064437

/-! ## A301413.P5502515162361843752

`(A063072(n+1)-A072824(n+1))/A319865(n+1)`
-/

namespace A301413.P5502515162361843752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063072 (n + 1) - A072824 (n + 1) : ℚ) / (A319865 (n + 1) : ℚ)

end

end A301413.P5502515162361843752

/-! ## A301413.P10658943929315765255

`sqrt(A046952(n+1))/A319865(n+1)`
-/

namespace A301413.P10658943929315765255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A046952 (n + 1) : ℝ) / (A319865 (n + 1) : ℝ)

end

end A301413.P10658943929315765255

/-! ## A301413.P4208291931111079056

`A002182(n+1)/A108951(A006530(A329902(n+1)))`
-/

namespace A301413.P4208291931111079056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) / (A108951 (A006530 (A329902 (n + 1)).toNat).toNat : ℚ)

end

end A301413.P4208291931111079056

/-! ## A301413.P13309631413219460160

`A307107(A306802(n+1))`
-/

namespace A301413.P13309631413219460160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307107 (A306802 (n + 1)).toNat

end

end A301413.P13309631413219460160

/-! ## A301413.P1435454347655016863

`A331188(A329902(n+1))`
-/

namespace A301413.P1435454347655016863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A329902 (n + 1)).toNat

end

end A301413.P1435454347655016863

/-! ## A301413.P4614308919247072114

`A397499(A332034(n+1))`
-/

namespace A301413.P4614308919247072114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397499 (A332034 (n + 1)).toNat

end

end A301413.P4614308919247072114

/-!
# A301414: Distinct terms of A301413 in ascending order: terms k in A301413 that have at least one number m such that k * A002110(m) is a highly composite number (A002182) with m distinct prime factors.

The programs for A301414, there is no canonical definition to state claims against.
-/

/-! ## A301414.P15502549617661752473

`record[A301413(n+1)%A052938(A025487(n+1))]`
-/

namespace A301414.P15502549617661752473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301413 (n + 1)) (A052938 (A025487 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301414.P15502549617661752473

/-! ## A301414.P6504608712511763724

`record[A301413(A197432(n)+2)]`
-/

namespace A301414.P6504608712511763724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (A197432 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301414.P6504608712511763724

/-! ## A301414.P12410263360145423750

`record[A301413(n+1)%A119919(n+2)]`
-/

namespace A301414.P12410263360145423750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301413 (n + 1)) (A119919 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301414.P12410263360145423750

/-! ## A301414.P11162366496904824779

`record[A083259(A301413(n+1))%A327822(n+1)]`
-/

namespace A301414.P11162366496904824779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083259 (A301413 (n + 1)).toNat) (A327822 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301414.P11162366496904824779

/-! ## A301414.P13891206356283148528

`A333963(A043318(n+1))`
-/

namespace A301414.P13891206356283148528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333963 (A043318 (n + 1)).toNat

end

end A301414.P13891206356283148528

/-!
# A301416: Numbers k in A301413 such that k * A002110 (m) is in A002201.

The programs for A301416, there is no canonical definition to state claims against.
-/

/-! ## A301416.P4533717496011148308

`A000027(A340137(n+1))`
-/

namespace A301416.P4533717496011148308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A340137 (n + 1)).toNat

end

end A301416.P4533717496011148308

/-! ## A301416.P11695297086044410722

`A340137(A043318(n+1))`
-/

namespace A301416.P11695297086044410722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340137 (A043318 (n + 1)).toNat

end

end A301416.P11695297086044410722

/-! ## A301416.P15499166024248097744

`A340137(A044915(n+1))`
-/

namespace A301416.P15499166024248097744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340137 (A044915 (n + 1)).toNat

end

end A301416.P15499166024248097744

/-! ## A301416.P4671103797752159996

`A340137(A055647(n+1))`
-/

namespace A301416.P4671103797752159996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340137 (A055647 (n + 1)).toNat

end

end A301416.P4671103797752159996

/-! ## A301416.P7850916467877466506

`A340137(A055648(n)+1)`
-/

namespace A301416.P7850916467877466506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340137 (A055648 n + 1).toNat

end

end A301416.P7850916467877466506

/-!
# A301417: Sums of positive coefficients in generalized Chebyshev polynomials of the first kind, for a family of 4 data.

The programs for A301417, there is no canonical definition to state claims against.
-/

/-! ## A301417.P14327574639233884944

`A184916(a(n-1))` with `a(0)=1`
-/

namespace A301417.P14327574639233884944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184916 (a (n - 1)).toNat

end

end A301417.P14327574639233884944

/-! ## A301417.P2639153273841549658

`A184919(2*a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A301417.P2639153273841549658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184919 (2 * a (n - 1)).toNat - a (n - 1)

end

end A301417.P2639153273841549658

/-! ## A301417.P6582516613784685878

`A184919(a(n-1)+a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A301417.P6582516613784685878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184919 (a (n - 1) + a (n - 1)).toNat - a (n - 1)

end

end A301417.P6582516613784685878

/-!
# A301418: G.f. A(x) satisfies: A(x) = 1/(1 - x*A(x)/(1 - x*A(x)/(1 - x*A(x)^2/(1 - x*A(x)^2/(1 - x*A(x)^3/(1 - x*A(x)^3/(1 - ...))))))), a continued fraction.

The programs for A301418, there is no canonical definition to state claims against.
-/

/-! ## A301418.P17240003265039339568

`A082784(n!)+A000257(n)`
-/

namespace A301418.P17240003265039339568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 (Nat.factorial n) + A000257 n

end

end A301418.P17240003265039339568

/-! ## A301418.P16232157389187314230

`A028310(A000257(n)+∑[val(54*n+6, 16)])`
-/

namespace A301418.P16232157389187314230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (54 * n + 6) 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000257 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A301418.P16232157389187314230

/-! ## A301418.P9232752500487144186

`A004182(A014082(n)+A000257(n))`
-/

namespace A301418.P9232752500487144186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A014082 n + A000257 n).toNat

end

end A301418.P9232752500487144186

/-! ## A301418.P8968810991141364464

`A025466(A000142(n))+A000257(n)`
-/

namespace A301418.P8968810991141364464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (A000142 n).toNat + A000257 n

end

end A301418.P8968810991141364464

/-!
# A301419: a(n) = [x^n] Sum_{k>=0} x^k/Product_{j=1..k} (1 - n*j*x).

The programs for A301419, there is no canonical definition to state claims against.
-/

/-! ## A301419.P3778123374140334384

`A111673(∑[4*n])`
-/

namespace A301419.P3778123374140334384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111673 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301419.P3778123374140334384

/-! ## A301419.P9093351847216819750

`A350260(∑[n]+n)`
-/

namespace A301419.P9093351847216819750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350260 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A301419.P9093351847216819750

/-! ## A301419.P10770810437372505980

`A350260(A000096(n))+char[9]`
-/

namespace A301419.P10770810437372505980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350260 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301419.P10770810437372505980

/-! ## A301419.P9625988212525805217

`A119963(n)*A350260(A000096(n))`
-/

namespace A301419.P9625988212525805217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n * A350260 (A000096 n).toNat

end

end A301419.P9625988212525805217

/-! ## A301419.P7316927119267212598

`A136522(n)*A350260(A000096(n))`
-/

namespace A301419.P7316927119267212598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n * A350260 (A000096 n).toNat

end

end A301419.P7316927119267212598

/-!
# A301420: Sums of positive coefficients in generalized Chebyshev polynomials of the first kind, for a family of 5 data.

The programs for A301420, there is no canonical definition to state claims against.
-/

/-! ## A301420.P11454594337688636376

`A313722(A015551(n))+A015554(n+1)`
-/

namespace A301420.P11454594337688636376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313722 (A015551 n).toNat + A015554 (n + 1)

end

end A301420.P11454594337688636376

/-!
# A301421: Sums of positive coefficients of generalized Chebyshev polynomials of the first kind, for a family of 6 data.

The programs for A301421, there is no canonical definition to state claims against.
-/

/-! ## A301421.P6947742616886499965

`∑[∑[A092754(A258791(n))]]`
-/

namespace A301421.P6947742616886499965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (A258791 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301421.P6947742616886499965

/-!
# A301422: Regular triangle where T(n,k) is the number of r-trees of size n with k leaves.

The programs for A301422, there is no canonical definition to state claims against.
-/

/-! ## A301422.P9919533931383317069

`A102683(A219381(n+1))+A055277(n+1)`
-/

namespace A301422.P9919533931383317069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A219381 (n + 1)).toNat + A055277 (n + 1)

end

end A301422.P9919533931383317069

/-! ## A301422.P18312852857426012577

`A102683(A227655(n))+A055277(n+1)`
-/

namespace A301422.P18312852857426012577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A227655 n).toNat + A055277 (n + 1)

end

end A301422.P18312852857426012577

/-! ## A301422.P1901277947916783031

`A124761(A105868(n+2))+A055277(n+1)`
-/

namespace A301422.P1901277947916783031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A105868 (n + 2)).toNat + A055277 (n + 1)

end

end A301422.P1901277947916783031

/-! ## A301422.P2921382744835718636

`A070109(A268448(n+3))+A055277(n+1)`
-/

namespace A301422.P2921382744835718636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070109 (A268448 (n + 3)).toNat + A055277 (n + 1)

end

end A301422.P2921382744835718636

/-! ## A301422.P2453516954866307077

`or(A055277(n+1), A121262(A255101(n+1)))`
-/

namespace A301422.P2453516954866307077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055277 (n + 1)) (A121262 (A255101 (n + 1)).toNat)

end

end A301422.P2453516954866307077

/-!
# A301423: Numbers k such that !k/(k-1) is prime, where !k = A000166(k) is the subfactorial of k.

The programs for A301423, there is no canonical definition to state claims against.
-/

/-! ## A301423.P7125388589334199517

`A222254(A166342(n+1))+2`
-/

namespace A301423.P7125388589334199517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A166342 (n + 1)).toNat + 2

end

end A301423.P7125388589334199517

/-! ## A301423.P16998691298742420139

`A166342(n+1)+p?[A160381(n)]`
-/

namespace A301423.P16998691298742420139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166342 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A301423.P16998691298742420139

/-! ## A301423.P1332281873670880286

`A166342(n+1)+p?[A193495(n)]`
-/

namespace A301423.P1332281873670880286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166342 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A301423.P1332281873670880286

/-! ## A301423.P5231542051036249333

`A166342(n+1)+p?[A268643(n)]`
-/

namespace A301423.P5231542051036249333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166342 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A301423.P5231542051036249333

/-! ## A301423.P12611742918099774859

`A166342(n+1)+∏{p}[A305611(2*n+3)+1, #]`
-/

namespace A301423.P12611742918099774859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305611 (2 * n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166342 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A301423.P12611742918099774859

/-!
# A301424: Sums of positive coefficients of generalized Chebyshev polynomials of the first kind, for a family of 7 data.

The programs for A301424, there is no canonical definition to state claims against.
-/

/-! ## A301424.P4518561131643195519

`A020660(A331748(n+1)+A054413(n))`
-/

namespace A301424.P4518561131643195519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020660 (A331748 (n + 1) + A054413 n).toNat

end

end A301424.P4518561131643195519

/-!
# A301427: Least nonnegative integer k such that n! - n - k is prime.

The programs for A301427, there is no canonical definition to state claims against.
-/

/-! ## A301427.P10831543906368671115

`A037155(n+3)-(n+3)`
-/

namespace A301427.P10831543906368671115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037155 (n + 3) - (n + 3 : ℤ)

end

end A301427.P10831543906368671115

/-! ## A301427.P8368614944373722200

`A079536(A037155(n+3))-n`
-/

namespace A301427.P8368614944373722200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (A037155 (n + 3)).toNat - (n : ℤ)

end

end A301427.P8368614944373722200

/-! ## A301427.P13250304158132689562

`A001478(n+3)+A037155(n+3)`
-/

namespace A301427.P13250304158132689562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 3) + A037155 (n + 3)

end

end A301427.P13250304158132689562

/-! ## A301427.P13260941272638599036

`abs(A037155(n+3)+A001489(n+3))`
-/

namespace A301427.P13260941272638599036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037155 (n + 3) + A001489 (n + 3)|

end

end A301427.P13260941272638599036

/-! ## A301427.P4301482997550008705

`A079536(A037155(n+3))+A001489(n+1)+1`
-/

namespace A301427.P4301482997550008705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (A037155 (n + 3)).toNat + A001489 (n + 1) + 1

end

end A301427.P4301482997550008705

/-! ## A301427.P17029647902763364773

`A079536((n+3)!-A037154(n+3))-n`
-/

namespace A301427.P17029647902763364773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 ((Nat.factorial (n + 3) : ℤ) - A037154 (n + 3)).toNat - (n : ℤ)

end

end A301427.P17029647902763364773

/-! ## A301427.P7871577758000512253

`A289207((n+3)!-A037154(n+3)-(n+1))`
-/

namespace A301427.P7871577758000512253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 ((Nat.factorial (n + 3) : ℤ) - A037154 (n + 3) - (n + 1 : ℤ)).toNat

end

end A301427.P7871577758000512253

/-! ## A301427.P6968898776149994929

`A079536(A000142(n+3)-A037154(n+3))-n`
-/

namespace A301427.P6968898776149994929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (A000142 (n + 3) - A037154 (n + 3)).toNat - (n : ℤ)

end

end A301427.P6968898776149994929

/-! ## A301427.P13692654332314532295

`A289207(A000142(n+3)-A037154(n+3)-(n+1))`
-/

namespace A301427.P13692654332314532295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A000142 (n + 3) - A037154 (n + 3) - (n + 1 : ℤ)).toNat

end

end A301427.P13692654332314532295

/-!
# A301433: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n * (1 + (1+x)^n * A(x))^n.

The programs for A301433, there is no canonical definition to state claims against.
-/

/-! ## A301433.P6345149640360919011

`A020915(or(1, A318494(n+1)))`
-/

namespace A301433.P6345149640360919011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (Int.lor 1 (A318494 (n + 1))).toNat

end

end A301433.P6345149640360919011

/-! ## A301433.P13640658013100321718

`A020915(xor(1, A318494(n+1)))`
-/

namespace A301433.P13640658013100321718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (Int.xor 1 (A318494 (n + 1))).toNat

end

end A301433.P13640658013100321718

/-!
# A301434: G.f. A(x) satisfies: A(x) = Sum_{n>=0} ((1+x)^n - 1)^n * A(x)^n.

The programs for A301434, there is no canonical definition to state claims against.
-/

/-! ## A301434.P10207963333040948799

`A185279(8^n)+1`
-/

namespace A301434.P10207963333040948799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185279 (8 ^ n) + 1

end

end A301434.P10207963333040948799

/-!
# A301437: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301437, there is no canonical definition to state claims against.
-/

/-! ## A301437.P9777863082774811986

`A301443(∑[4*n]+1)`
-/

namespace A301437.P9777863082774811986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301437.P9777863082774811986

/-! ## A301437.P7133171405948529480

`record[A003982(n)*A301443(n+1)]`
-/

namespace A301437.P7133171405948529480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A301443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301437.P7133171405948529480

/-! ## A301437.P7095191714179855544

`A260340(n)*A301443(A001844(n))`
-/

namespace A301437.P7095191714179855544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260340 n * A301443 (A001844 n).toNat

end

end A301437.P7095191714179855544

/-! ## A301437.P9146515904795352858

`or(A000007(n), A301443(A001844(n)))`
-/

namespace A301437.P9146515904795352858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A301443 (A001844 n).toNat)

end

end A301437.P9146515904795352858

/-! ## A301437.P13177830807778926908

`A301443(A001844(n))+A281155(n)²`
-/

namespace A301437.P13177830807778926908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (A001844 n).toNat + A281155 n ^ 2

end

end A301437.P13177830807778926908

/-!
# A301438: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301438, the canonical program `A301438.P2584885111232426969` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301438 has offset 1).

The definition of A301438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301438.P2584885111232426969

`8*a(n-1)-4*a(n-2)-5*a(n-3)` with `a(0)=4, a(1)=32, a(2)=232`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A301438

/-- `8*a(n-1)-4*a(n-2)-5*a(n-3)` -/
def P2584885111232426969.Spec : Prop :=
  ∀ n, P2584885111232426969.a n = A301438 (n + 1)

theorem P2584885111232426969.correct : P2584885111232426969.Spec := by
  intro n
  simp only [A301438, Nat.add_sub_cancel]

end A301438

/-! ## A301438.P14858275905733968116

`A301443(∑[n+2]+4)`
-/

namespace A301438.P14858275905733968116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301438.P14858275905733968116

namespace A301438

/-- `A301443(∑[n+2]+4)` -/
def P14858275905733968116.Spec : Prop :=
  ∀ n, P14858275905733968116.a n = A301438 (n + 1)

end A301438

/-! ## A301438.P12615483684838096382

`lcm(2, A301443(A167614(n+1)))`
-/

namespace A301438.P12615483684838096382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A301443 (A167614 (n + 1)).toNat)

end

end A301438.P12615483684838096382

namespace A301438

/-- `lcm(2, A301443(A167614(n+1)))` -/
def P12615483684838096382.Spec : Prop :=
  ∀ n, (P12615483684838096382.a n : ℤ) = A301438 (n + 1)

end A301438

/-! ## A301438.P10240678153052709216

`A301443(A167614(n+1))+A025466(n)`
-/

namespace A301438.P10240678153052709216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (A167614 (n + 1)).toNat + A025466 n

end

end A301438.P10240678153052709216

namespace A301438

/-- `A301443(A167614(n+1))+A025466(n)` -/
def P10240678153052709216.Spec : Prop :=
  ∀ n, P10240678153052709216.a n = A301438 (n + 1)

end A301438

/-!
# A301439: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301439, there is no canonical definition to state claims against.
-/

/-! ## A301439.P14237087704109643595

`A301443(∑[n+3]+7)`
-/

namespace A301439.P14237087704109643595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A301439.P14237087704109643595

/-! ## A301439.P18366714469576617119

`lcm(2, A301443(A027379(n+2)))`
-/

namespace A301439.P18366714469576617119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A301443 (A027379 (n + 2)).toNat)

end

end A301439.P18366714469576617119

/-! ## A301439.P2749260509638995402

`lcm(4, A301443(A141214(n+1)))`
-/

namespace A301439.P2749260509638995402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A301443 (A141214 (n + 1)).toNat)

end

end A301439.P2749260509638995402

/-! ## A301439.P5923319041883629399

`A301443(A027379(n+2))%A355379(n+3)`
-/

namespace A301439.P5923319041883629399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301443 (A027379 (n + 2)).toNat) (A355379 (n + 3))

end

end A301439.P5923319041883629399

/-! ## A301439.P516726377827742797

`record[A301443(A155212(∑{e}[n+1, #])+5)]`
-/

namespace A301439.P516726377827742797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (A155212 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301439.P516726377827742797

/-!
# A301440: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301440, there is no canonical definition to state claims against.
-/

/-! ## A301440.P3415836922547761707

`A301443(A167499(n+3))`
-/

namespace A301440.P3415836922547761707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (A167499 (n + 3)).toNat

end

end A301440.P3415836922547761707

/-! ## A301440.P10316475310371688142

`A301443(A166136(n+3)-1)`
-/

namespace A301440.P10316475310371688142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (A166136 (n + 3) - 1).toNat

end

end A301440.P10316475310371688142

/-! ## A301440.P6161128997595645559

`A301443(A052905(n+3)-(2*n+1))`
-/

namespace A301440.P6161128997595645559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A301440.P6161128997595645559

/-! ## A301440.P6677710601400240658

`A301443(A374005(n+1))`
-/

namespace A301440.P6677710601400240658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (A374005 (n + 1)).toNat

end

end A301440.P6677710601400240658

/-!
# A301441: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301441, there is no canonical definition to state claims against.
-/

/-! ## A301441.P10017779806069694332

`A301443(A056115(n)+21)`
-/

namespace A301441.P10017779806069694332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (A056115 n + 21).toNat

end

end A301441.P10017779806069694332

/-! ## A301441.P6595192119476905357

`A301443(A167499(n+4)+1)`
-/

namespace A301441.P6595192119476905357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (A167499 (n + 4) + 1).toNat

end

end A301441.P6595192119476905357

/-! ## A301441.P10019140168165052944

`A301443(eq[7, A131818(n+1)])`
-/

namespace A301441.P10019140168165052944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301441.P10019140168165052944

/-! ## A301441.P13066882403371153564

`A301443(A374007(n+1))`
-/

namespace A301441.P13066882403371153564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (A374007 (n + 1)).toNat

end

end A301441.P13066882403371153564

/-! ## A301441.P11232872733046434432

`A301443(A052905(n+3))`
-/

namespace A301441.P11232872733046434432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (A052905 (n + 3)).toNat

end

end A301441.P11232872733046434432

/-!
# A301442: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301442, there is no canonical definition to state claims against.
-/

/-! ## A301442.P15116200510489442933

`A301443(eq[8, A131818(n+1)])`
-/

namespace A301442.P15116200510489442933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301442.P15116200510489442933

/-! ## A301442.P16443987158192866827

`A301443(A374008(n+1))`
-/

namespace A301442.P16443987158192866827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (A374008 (n + 1)).toNat

end

end A301442.P16443987158192866827

/-! ## A301442.P13389942354896208360

`A301443(A055999(n+4))`
-/

namespace A301442.P13389942354896208360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (A055999 (n + 4)).toNat

end

end A301442.P13389942354896208360

/-! ## A301442.P7507534189517381293

`A301443(eq[6, A193592(n)])`
-/

namespace A301442.P7507534189517381293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301442.P7507534189517381293

/-! ## A301442.P4909845244348807226

`A301443(eq[7, A200370(n+1)])`
-/

namespace A301442.P4909845244348807226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301442.P4909845244348807226

/-!
# A301444: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301444, there is no canonical definition to state claims against.
-/

/-! ## A301444.P10153786150293937444

`A301450(∑[4*n]+1)`
-/

namespace A301444.P10153786150293937444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301444.P10153786150293937444

/-! ## A301444.P18345043142869204316

`record[A003982(n)*A301450(n+1)]`
-/

namespace A301444.P18345043142869204316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A301450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301444.P18345043142869204316

/-! ## A301444.P17379748803024486240

`record[gcd(A204016(n+1), A301450(n+1))]`
-/

namespace A301444.P17379748803024486240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204016 (n + 1)) (A301450 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301444.P17379748803024486240

/-! ## A301444.P11353068761283204008

`A301450(A001844(n))+A026816(n)`
-/

namespace A301444.P11353068761283204008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A001844 n).toNat + A026816 n

end

end A301444.P11353068761283204008

/-! ## A301444.P13617407898998975386

`gcd(A111332(n), A301450(A001844(n)))`
-/

namespace A301444.P13617407898998975386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111332 n) (A301450 (A001844 n).toNat)

end

end A301444.P13617407898998975386

/-!
# A301445: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301445, there is no canonical definition to state claims against.
-/

/-! ## A301445.P8331813341084911693

`A301450(∑[n+2]+4)`
-/

namespace A301445.P8331813341084911693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301445.P8331813341084911693

/-! ## A301445.P13160503544741728503

`lcm((-1)^n, A301450(A167614(n+1)))`
-/

namespace A301445.P13160503544741728503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A301450 (A167614 (n + 1)).toNat)

end

end A301445.P13160503544741728503

/-! ## A301445.P10299418206470481242

`A301450(A167614(n+1))+A011737(n)`
-/

namespace A301445.P10299418206470481242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A167614 (n + 1)).toNat + A011737 n

end

end A301445.P10299418206470481242

/-! ## A301445.P5575756021439533154

`A301450(A167614(n+1))+A025438(n)`
-/

namespace A301445.P5575756021439533154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A167614 (n + 1)).toNat + A025438 n

end

end A301445.P5575756021439533154

/-! ## A301445.P9965327107916944661

`A301450(A167614(n+1))+A025466(n)`
-/

namespace A301445.P9965327107916944661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A167614 (n + 1)).toNat + A025466 n

end

end A301445.P9965327107916944661

/-!
# A301446: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301446, there is no canonical definition to state claims against.
-/

/-! ## A301446.P806024878911218333

`A301450(A141214(n)+7)`
-/

namespace A301446.P806024878911218333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A141214 n + 7).toNat

end

end A301446.P806024878911218333

/-! ## A301446.P7849795409936506006

`A301450(A055999(n)+10)`
-/

namespace A301446.P7849795409936506006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A055999 n + 10).toNat

end

end A301446.P7849795409936506006

/-! ## A301446.P16859364458035645801

`A301450(A167614(n+2)+1)`
-/

namespace A301446.P16859364458035645801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A167614 (n + 2) + 1).toNat

end

end A301446.P16859364458035645801

/-! ## A301446.P2006298707314379776

`A301450(Δ[A023545(n+1)-n²])`
-/

namespace A301446.P2006298707314379776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (f1 (n + 1) - f1 n).toNat

end

end A301446.P2006298707314379776

/-! ## A301446.P15820604392735186146

`A301450(A374004(n+1))`
-/

namespace A301446.P15820604392735186146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A374004 (n + 1)).toNat

end

end A301446.P15820604392735186146

/-!
# A301447: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301447, there is no canonical definition to state claims against.
-/

/-! ## A301447.P527171440164647393

`A301450(A167614(n+3)+2)`
-/

namespace A301447.P527171440164647393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A167614 (n + 3) + 2).toNat

end

end A301447.P527171440164647393

/-! ## A301447.P17540910298628020290

`A301450(A000096(n+3)+6)`
-/

namespace A301447.P17540910298628020290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A000096 (n + 3) + 6).toNat

end

end A301447.P17540910298628020290

/-! ## A301447.P8004701767691039716

`A301450(eq[6, A131818(n+1)])`
-/

namespace A301447.P8004701767691039716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301447.P8004701767691039716

/-! ## A301447.P13045148216503636745

`A301450(A374005(n+1))`
-/

namespace A301447.P13045148216503636745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A374005 (n + 1)).toNat

end

end A301447.P13045148216503636745

/-! ## A301447.P15111745402133087910

`A301450(A046691(n+3))`
-/

namespace A301447.P15111745402133087910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A046691 (n + 3)).toNat

end

end A301447.P15111745402133087910

/-!
# A301448: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301448, there is no canonical definition to state claims against.
-/

/-! ## A301448.P735692426019672195

`A301450(A141214(n+2)+9)`
-/

namespace A301448.P735692426019672195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A141214 (n + 2) + 9).toNat

end

end A301448.P735692426019672195

/-! ## A301448.P200551143311068474

`A301450(eq[7, A131818(n+1)])`
-/

namespace A301448.P200551143311068474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301448.P200551143311068474

/-! ## A301448.P805722469820318381

`A301450(A374007(n+1))`
-/

namespace A301448.P805722469820318381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A374007 (n + 1)).toNat

end

end A301448.P805722469820318381

/-! ## A301448.P5881454066344853148

`A301450(A052905(n+3))`
-/

namespace A301448.P5881454066344853148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A052905 (n + 3)).toNat

end

end A301448.P5881454066344853148

/-! ## A301448.P9741639859459536285

`A301450(eq[5, A193592(n)])`
-/

namespace A301448.P9741639859459536285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301448.P9741639859459536285

/-!
# A301449: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301449, there is no canonical definition to state claims against.
-/

/-! ## A301449.P4721874090791477269

`A301450(eq[8, A131818(n+1)])`
-/

namespace A301449.P4721874090791477269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301449.P4721874090791477269

/-! ## A301449.P381468047315674294

`A301450(A374008(n+1))`
-/

namespace A301449.P381468047315674294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A374008 (n + 1)).toNat

end

end A301449.P381468047315674294

/-! ## A301449.P13216327052703640099

`A301450(A055999(n+4))`
-/

namespace A301449.P13216327052703640099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (A055999 (n + 4)).toNat

end

end A301449.P13216327052703640099

/-! ## A301449.P18346108862175811419

`A301450(eq[4, A219347(n)])`
-/

namespace A301449.P18346108862175811419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301449.P18346108862175811419

/-! ## A301449.P4609688259301589014

`A301450(eq[6, A193592(n)])`
-/

namespace A301449.P4609688259301589014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301449.P4609688259301589014

/-!
# A301450: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301450, there is no canonical definition to state claims against.
-/

/-! ## A301450.P11019891260783604214

`A300811(n+1)+A321936(A001263(n+1))²`
-/

namespace A301450.P11019891260783604214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (n + 1) + A321936 (A001263 (n + 1)).toNat ^ 2

end

end A301450.P11019891260783604214

/-! ## A301450.P7155584535160238567

`A300811(n+1)+A280737(A301784(n+1))²`
-/

namespace A301450.P7155584535160238567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (n + 1) + A280737 (A301784 (n + 1)).toNat ^ 2

end

end A301450.P7155584535160238567

/-! ## A301450.P2178448355789921053

`A300811(n+1)+A124763(A316545(n+1))²`
-/

namespace A301450.P2178448355789921053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (n + 1) + A124763 (A316545 (n + 1)).toNat ^ 2

end

end A301450.P2178448355789921053

/-! ## A301450.P16776669355586552175

`or(A112765(A300785(n)), A300811(n+1))`
-/

namespace A301450.P16776669355586552175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112765 (A300785 n).toNat) (A300811 (n + 1))

end

end A301450.P16776669355586552175

/-! ## A301450.P7225374450499702999

`A300811(n+1)+A060862(A153651(n+1))`
-/

namespace A301450.P7225374450499702999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300811 (n + 1) + A060862 (A153651 (n + 1)).toNat

end

end A301450.P7225374450499702999

/-!
# A301451: Numbers congruent to {1, 7} mod 9.

The programs for A301451, the canonical program `A301451.P14810881185217548848` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301451 has offset 1).

The definition of A301451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301451.P14810881185217548848

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=7, a(2)=10`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A301451

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P14810881185217548848.Spec : Prop :=
  ∀ n, P14810881185217548848.a n = A301451 (n + 1)

theorem P14810881185217548848.correct : P14810881185217548848.Spec := by
  intro n
  simp only [A301451, Nat.add_sub_cancel]

end A301451

/-! ## A301451.P17886092868440389845

`2*(2*(n+1)-1)+(2*(n+1)-3*(1-(-1)^(n+1)))/4`
-/

namespace A301451.P17886092868440389845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((2 * (n + 1) : ℤ) - 1) : ℚ) + ((2 * (n + 1) : ℤ) - 3 * (1 - (-1) ^ (n + 1)) : ℚ) / 4

end

end A301451.P17886092868440389845

namespace A301451

/-- `2*(2*(n+1)-1)+(2*(n+1)-3*(1-(-1)^(n+1)))/4` -/
def P17886092868440389845.Spec : Prop :=
  ∀ n, P17886092868440389845.a n = (A301451 (n + 1) : ℚ)

theorem P17886092868440389845.correct : P17886092868440389845.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A301451, Nat.add_sub_cancel, A301451.P17886092868440389845.a, A301451.P14810881185217548848.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A301451, Nat.add_sub_cancel, A301451.P17886092868440389845.a, A301451.P14810881185217548848.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A301451

/-! ## A301451.P11495491766474642704

`record[lcm(3, n+2)-5]`
-/

namespace A301451.P11495491766474642704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 2) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301451.P11495491766474642704

namespace A301451

/-- `record[lcm(3, n+2)-5]` -/
def P11495491766474642704.Spec : Prop :=
  ∀ n, P11495491766474642704.a n = A301451 (n + 1)

end A301451

/-! ## A301451.P12719514548409663988

`eq[1, val(2*n+1, 3)]`
-/

namespace A301451.P12719514548409663988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A301451.P12719514548409663988

namespace A301451

/-- `eq[1, val(2*n+1, 3)]` -/
def P12719514548409663988.Spec : Prop :=
  ∀ n, (P12719514548409663988.a n : ℤ) = A301451 (n + 1)

end A301451

/-! ## A301451.P12037020858283800634

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=6, a(2)=3`
-/

namespace A301451.P12037020858283800634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 3] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301451.P12037020858283800634

namespace A301451

/-- `∑[abs(a(n-2))]` -/
def P12037020858283800634.Spec : Prop :=
  ∀ n, (P12037020858283800634.a n : ℤ) = A301451 (n + 1)

end A301451

/-! ## A301451.P17387648621430976615

`∑[9-a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A301451.P17387648621430976615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301451.P17387648621430976615

namespace A301451

/-- `∑[9-a(n-1)]` -/
def P17387648621430976615.Spec : Prop :=
  ∀ n, P17387648621430976615.a n = A301451 (n + 1)

end A301451

/-! ## A301451.P11109457688673813907

`lt[(1-val(2*n+1, 3))², 1]`
-/

namespace A301451.P11109457688673813907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (SequenceMachineLib.valuation (2 * n + 1) 3 : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A301451.P11109457688673813907

namespace A301451

/-- `lt[(1-val(2*n+1, 3))², 1]` -/
def P11109457688673813907.Spec : Prop :=
  ∀ n, (P11109457688673813907.a n : ℤ) = A301451 (n + 1)

end A301451

/-! ## A301451.P15796471965952258657

`eq[3, gcd(2*n+1, (1-n)^10)]`
-/

namespace A301451.P15796471965952258657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) ((1 - (n : ℤ)) ^ 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A301451.P15796471965952258657

namespace A301451

/-- `eq[3, gcd(2*n+1, (1-n)^10)]` -/
def P15796471965952258657.Spec : Prop :=
  ∀ n, (P15796471965952258657.a n : ℤ) = A301451 (n + 1)

end A301451

/-! ## A301451.P3056350791562547088

`eq[3*(2*n+1), lcm(9, 2*n+1)]`
-/

namespace A301451.P3056350791562547088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 9 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A301451.P3056350791562547088

namespace A301451

/-- `eq[3*(2*n+1), lcm(9, 2*n+1)]` -/
def P3056350791562547088.Spec : Prop :=
  ∀ n, (P3056350791562547088.a n : ℤ) = A301451 (n + 1)

end A301451

/-! ## A301451.P430510722491708502

`record[n+2-dr(2*n+2*n+1)!]`
-/

namespace A301451.P430510722491708502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.factorial (SequenceMachineLib.digitalRoot (2 * n + (2 * n + 1) : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301451.P430510722491708502

namespace A301451

/-- `record[n+2-dr(2*n+2*n+1)!]` -/
def P430510722491708502.Spec : Prop :=
  ∀ n, P430510722491708502.a n = A301451 (n + 1)

end A301451

/-! ## A301451.P8005936529268239817

`A056991(Δ[n²])`
-/

namespace A301451.P8005936529268239817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A301451.P8005936529268239817

namespace A301451

/-- `A056991(Δ[n²])` -/
def P8005936529268239817.Spec : Prop :=
  ∀ n, P8005936529268239817.a n = A301451 (n + 1)

end A301451

/-! ## A301451.P6599574080284590107

`∑[dr(A298033(n))]`
-/

namespace A301451.P6599574080284590107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A298033 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301451.P6599574080284590107

namespace A301451

/-- `∑[dr(A298033(n))]` -/
def P6599574080284590107.Spec : Prop :=
  ∀ n, (P6599574080284590107.a n : ℤ) = A301451 (n + 1)

end A301451

/-! ## A301451.P16075547910554319898

`A242660(2*(n+1))`
-/

namespace A301451.P16075547910554319898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (2 * (n + 1))

end

end A301451.P16075547910554319898

namespace A301451

/-- `A242660(2*(n+1))` -/
def P16075547910554319898.Spec : Prop :=
  ∀ n, P16075547910554319898.a n = A301451 (n + 1)

end A301451

/-! ## A301451.P17963395965135688301

`∑[A010704(a(n-1))]` with `a(0)=1`
-/

namespace A301451.P17963395965135688301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A010704 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301451.P17963395965135688301

namespace A301451

/-- `∑[A010704(a(n-1))]` -/
def P17963395965135688301.Spec : Prop :=
  ∀ n, P17963395965135688301.a n = A301451 (n + 1)

end A301451

/-! ## A301451.P9878006893600553596

`∑[A158090(a(n-1))]` with `a(0)=1`
-/

namespace A301451.P9878006893600553596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A158090 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301451.P9878006893600553596

namespace A301451

/-- `∑[A158090(a(n-1))]` -/
def P9878006893600553596.Spec : Prop :=
  ∀ n, P9878006893600553596.a n = A301451 (n + 1)

end A301451

/-!
# A301453: a(n) is the number of ways of writing the binary expansion of n as a concatenation of nonempty substrings with no two consecutive equal substrings.

The programs for A301453, there is no canonical definition to state claims against.
-/

/-! ## A301453.P7403089801185138361

`A287731(n+1)+A065339(A287744(2*n+1))`
-/

namespace A301453.P7403089801185138361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287731 (n + 1) + A065339 (A287744 (2 * n + 1)).toNat

end

end A301453.P7403089801185138361

/-!
# A301455: G.f. A(x) satisfies: A(x) = Product_{k>=1} 1/(1 - x^k*A(x)^k)^k.

The programs for A301455, there is no canonical definition to state claims against.
-/

/-! ## A301455.P14827535633200294513

`A255961(A056220(n+1))/(n+1)`
-/

namespace A301455.P14827535633200294513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255961 (A056220 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A301455.P14827535633200294513

/-! ## A301455.P10011227281185266776

`A015525(n)+A011598(A002486(n))`
-/

namespace A301455.P10011227281185266776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015525 n + A011598 (A002486 n).toNat

end

end A301455.P10011227281185266776

/-!
# A301456: G.f. A(x) satisfies: A(x) = Product_{k>=1} (1 + x^k*A(x)^k)^k.

The programs for A301456, there is no canonical definition to state claims against.
-/

/-! ## A301456.P688568426361834226

`A277938(A056220(n+1))/(n+1)`
-/

namespace A301456.P688568426361834226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277938 (A056220 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A301456.P688568426361834226

/-! ## A301456.P5776789245963790036

`A151916(A007460(n))`
-/

namespace A301456.P5776789245963790036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151916 (A007460 n).toNat

end

end A301456.P5776789245963790036

/-!
# A301458: a(n) = [x^n] Product_{k>=1} 1/(1 - x^(k*(k+1)/2))^n.

The programs for A301458, there is no canonical definition to state claims against.
-/

/-! ## A301458.P4880156835829655014

`A304629(n)+A007814(A247059(n))`
-/

namespace A301458.P4880156835829655014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304629 n + A007814 (A247059 n).toNat

end

end A301458.P4880156835829655014

/-! ## A301458.P5175374328168237975

`A276147(or(A012864(n), A014273(n)))`
-/

namespace A301458.P5175374328168237975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276147 (Int.lor (A012864 n) (A014273 n)).toNat

end

end A301458.P5175374328168237975

/-! ## A301458.P2757573013255911603

`or(A012864(n), A059995(A318229(n+2)))`
-/

namespace A301458.P2757573013255911603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012864 n) (A059995 (A318229 (n + 2)).toNat)

end

end A301458.P2757573013255911603

/-!
# A301459: Number of 6-cycles in the n-folded cube graph.

The programs for A301459, there is no canonical definition to state claims against.
-/

/-! ## A301459.P17654858563691079461

`A349357(2*A036217(n))`
-/

namespace A301459.P17654858563691079461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349357 (2 * A036217 n).toNat

end

end A301459.P17654858563691079461

/-!
# A301460: Number of maximal independent vertex sets in the n-folded cube graph.

The programs for A301460, there is no canonical definition to state claims against.
-/

/-! ## A301460.P18363925328824182973

`A294648(A007097(n)*A173316(n))`
-/

namespace A301460.P18363925328824182973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294648 (A007097 n * A173316 n).toNat

end

end A301460.P18363925328824182973

/-!
# A301461: Number of integers less than or equal to n whose largest prime factor is 3.

The programs for A301461, there is no canonical definition to state claims against.
-/

/-! ## A301461.P1159988747210077737

`∑[char[eq[1, ∑{p}[n, #-2]]]]`
-/

namespace A301461.P1159988747210077737
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), ((p : ℤ) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301461.P1159988747210077737

/-! ## A301461.P5572398220403646228

`∑[char[eq[2, ∏{p}[n, #-1]]]]`
-/

namespace A301461.P5572398220403646228
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f5 n), ((p : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301461.P5572398220403646228

/-! ## A301461.P9638126638632609262

`∑[and(char[3*n], ∑{p}[n, #])]`
-/

namespace A301461.P9638126638632609262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (if ∃ j, f2 j = n then 1 else 0) (∑ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301461.P9638126638632609262

/-! ## A301461.P8203938533009106633

`∑[((3%∏{p}[n, #-1])%3)²]`
-/

namespace A301461.P8203938533009106633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod 3 (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))) 3 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301461.P8203938533009106633

/-! ## A301461.P4615773902438840211

`∑[floor(3/∏{p}[n, #-1])%3]`
-/

namespace A301461.P4615773902438840211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊3 / ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)⌋ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301461.P4615773902438840211

/-! ## A301461.P11393119432707569077

`∑[char[A063996(n+1)]]`
-/

namespace A301461.P11393119432707569077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063996 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301461.P11393119432707569077

/-! ## A301461.P6674210463302082740

`∑[char[A065119(n+1)]]`
-/

namespace A301461.P6674210463302082740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301461.P6674210463302082740

/-! ## A301461.P4913025824213722336

`∑[char[A176893(n+1)]]`
-/

namespace A301461.P4913025824213722336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176893 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301461.P4913025824213722336

/-! ## A301461.P10589742053584569034

`∑[val(A006530(∏{p}[n, #]), 3)]`
-/

namespace A301461.P10589742053584569034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301461.P10589742053584569034

/-! ## A301461.P9511777276853225598

`∑[char[A286587(2*n+1)]]`
-/

namespace A301461.P9511777276853225598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286587 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301461.P9511777276853225598

/-!
# A301462: Number of enriched r-trees of size n.

The programs for A301462, there is no canonical definition to state claims against.
-/

/-! ## A301462.P15566617925997059316

`ceil(A010366(n+4)/3)`
-/

namespace A301462.P15566617925997059316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010366 (n + 4) : ℚ) / 3⌉

end

end A301462.P15566617925997059316

/-! ## A301462.P8431934296753508744

`∑[A341141(A332724(n))]`
-/

namespace A301462.P8431934296753508744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341141 ((A332724 n).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301462.P8431934296753508744

/-! ## A301462.P11082802428327931854

`A140357(A181545(n))+A034968(n)`
-/

namespace A301462.P11082802428327931854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140357 (A181545 n).toNat + A034968 n

end

end A301462.P11082802428327931854

/-!
# A301465: G.f.: Sum_{n>=0} ( (1+x)^n + (1+2*x)^n )^n * x^n.

The programs for A301465, there is no canonical definition to state claims against.
-/

/-! ## A301465.P5637293363683756885

`A019446(A000081(2*n+1)+n)`
-/

namespace A301465.P5637293363683756885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A000081 (2 * n + 1) + (n : ℤ)).toNat

end

end A301465.P5637293363683756885

/-! ## A301465.P6930590898971588041

`A163801(A145550(2*n+1)+n)`
-/

namespace A301465.P6930590898971588041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163801 (A145550 (2 * n + 1) + (n : ℤ)).toNat

end

end A301465.P6930590898971588041

/-!
# A301467: Number of enriched r-trees of size n with no empty subtrees.

The programs for A301467, there is no canonical definition to state claims against.
-/

/-! ## A301467.P5224025164861322917

`A371286(A047121(n))`
-/

namespace A301467.P5224025164861322917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371286 (A047121 n).toNat

end

end A301467.P5224025164861322917

/-! ## A301467.P18244415396178614272

`A371448(A047090(n))`
-/

namespace A301467.P18244415396178614272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371448 (A047090 n).toNat

end

end A301467.P18244415396178614272

/-! ## A301467.P10400929722805263823

`A320239(A331706(n))`
-/

namespace A301467.P10400929722805263823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320239 (A331706 n).toNat

end

end A301467.P10400929722805263823

/-!
# A301470: Signed recurrence over enriched r-trees: a(n) = (-1)^n + Sum_y Product_{i in y} a(y) where the sum is over all integer partitions of n - 1.

The programs for A301470, there is no canonical definition to state claims against.
-/

/-! ## A301470.P4551873908301164760

`round(A112681(A028304(n+4))/(A112681(3*n+5)+1))`
-/

namespace A301470.P4551873908301164760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112681 (A028304 (n + 4)).toNat : ℚ) / (A112681 (3 * n + 5) + 1 : ℚ))

end

end A301470.P4551873908301164760

/-!
# A301472: Positive integers not of the form x^2 + 2*y^2 + 3*2^z with x,y,z nonnegative integers.

The programs for A301472, there is no canonical definition to state claims against.
-/

/-! ## A301472.P17265781021232635567

`A306151(A316265(n+2))+A073846(n+1)`
-/

namespace A301472.P17265781021232635567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306151 (A316265 (n + 2)).toNat + A073846 (n + 1)

end

end A301472.P17265781021232635567

/-!
# A301475: Triangular array of polynomials related to the Motzkin triangle and to rooted polyominoes, coefficients in ascending order, read by rows, for 0 <= k <= n.

The programs for A301475, there is no canonical definition to state claims against.
-/

/-! ## A301475.P811119369103441770

`gcd(A006128(n), A069010(A052932(n)))`
-/

namespace A301475.P811119369103441770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006128 n) (A069010 (A052932 n).toNat)

end

end A301475.P811119369103441770

/-! ## A301475.P15220323861375214669

`gcd(A300588(A036374(n)), A312054(n))`
-/

namespace A301475.P15220323861375214669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300588 (A036374 n).toNat) (A312054 n)

end

end A301475.P15220323861375214669

/-!
# A301476: Expansion of (sqrt(8*x^2 - 4*x + 1)*(1 - 4*x))^(-1).

The programs for A301476, there is no canonical definition to state claims against.
-/

/-! ## A301476.P4683624198560081827

`A098335(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A301476.P4683624198560081827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098335 n + 4 * a (n - 1)

end

end A301476.P4683624198560081827

/-! ## A301476.P16129632373247227433

`A123199(n²+n)+4*a(n-1)` with `a(0)=1`
-/

namespace A301476.P16129632373247227433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123199 (n ^ 2 + n) + 4 * a (n - 1)

end

end A301476.P16129632373247227433

/-!
# A301477: T(n,k) = Sum_{j=0..n-k} H(n,j)*2^k with H(n,k) = binomial(n,k)* hypergeom([-k/2, 1/2-k/2], [2-k+n], 4), for 0 <= k <= n, triangle read by rows.

The programs for A301477, there is no canonical definition to state claims against.
-/

/-! ## A301477.P5770715897964769959

`2^(n-C(∑[char[∑[n]]], 2))*A038622(n)`
-/

namespace A301477.P5770715897964769959
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A038622 n : ℚ)

end

end A301477.P5770715897964769959

/-! ## A301477.P12985277292781110067

`A038622(n)*A059268(n)`
-/

namespace A301477.P12985277292781110067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n * A059268 n

end

end A301477.P12985277292781110067

/-! ## A301477.P4627475281479593858

`2^A002262(n)*A038622(n)`
-/

namespace A301477.P4627475281479593858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A038622 n : ℚ)

end

end A301477.P4627475281479593858

/-! ## A301477.P17447163218488754054

`A038622(n)*A118655(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A301477.P17447163218488754054
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n * A118655 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat

end

end A301477.P17447163218488754054

/-! ## A301477.P7301584380927233353

`A000079(A002262(n))*A038622(n)`
-/

namespace A301477.P7301584380927233353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A038622 n

end

end A301477.P7301584380927233353

/-! ## A301477.P6659315917308786428

`A003958(A036561(n))*A038622(n)`
-/

namespace A301477.P6659315917308786428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A036561 n).toNat * A038622 n

end

end A301477.P6659315917308786428

/-! ## A301477.P9334033289030054004

`A003958(A099884(n))*A038622(n)`
-/

namespace A301477.P9334033289030054004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A099884 n).toNat * A038622 n

end

end A301477.P9334033289030054004

/-! ## A301477.P8590424367925718420

`A011782(A002260(n+1))*A038622(n)`
-/

namespace A301477.P8590424367925718420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A038622 n

end

end A301477.P8590424367925718420

/-! ## A301477.P5008902960406280140

`A011782(A002262(n)+1)*A038622(n)`
-/

namespace A301477.P5008902960406280140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n + 1).toNat * A038622 n

end

end A301477.P5008902960406280140

/-! ## A301477.P7343989326757407529

`A013609(n)/A007318(n)*A038622(n)`
-/

namespace A301477.P7343989326757407529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n : ℚ) * (A038622 n : ℚ)

end

end A301477.P7343989326757407529

/-!
# A301478: a(n) is the product of the n-th term of A301382 and its initial digit.

The programs for A301478, the canonical program `A301478.P10263299354286000172` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301478 has offset 1).

The definition of A301478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3059 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301478.P11078248212053540313

`A000030(A301382(n+1))*A301382(n+1)`
-/

namespace A301478.P11078248212053540313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A301382 (n + 1)).toNat * A301382 (n + 1)

end

end A301478.P11078248212053540313

namespace A301478

/-- `A000030(A301382(n+1))*A301382(n+1)` -/
def P11078248212053540313.Spec : Prop :=
  ∀ n, P11078248212053540313.a n = A301478 (n + 1)

end A301478

/-! ## A301478.P11619345514367453298

`eq[char[n*A000030(n)], A054977(n)]`
-/

namespace A301478.P11619345514367453298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000030 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A301478.P11619345514367453298

namespace A301478

/-- `eq[char[n*A000030(n)], A054977(n)]` -/
def P11619345514367453298.Spec : Prop :=
  ∀ n, (P11619345514367453298.a n : ℤ) = A301478 (n + 1)

end A301478

/-! ## A301478.P10263299354286000172

`eq[char[n*A000030(n)], A057427(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A301478

/-- `eq[char[n*A000030(n)], A057427(n)]` -/
def P10263299354286000172.Spec : Prop :=
  ∀ n, (P10263299354286000172.a n : ℤ) = A301478 (n + 1)

theorem P10263299354286000172.correct : P10263299354286000172.Spec := by
  intro n
  simp only [A301478, Nat.add_sub_cancel]

end A301478

/-! ## A301478.P1505039521306834703

`record[char[n*A000030(n)]*A028310(n)]`
-/

namespace A301478.P1505039521306834703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000030 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301478.P1505039521306834703

namespace A301478

/-- `record[char[n*A000030(n)]*A028310(n)]` -/
def P1505039521306834703.Spec : Prop :=
  ∀ n, P1505039521306834703.a n = A301478 (n + 1)

end A301478

/-! ## A301478.P613240173193710557

`eq[A000038(n)!, char[n*A000030(n)]]`
-/

namespace A301478.P613240173193710557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000030 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A301478.P613240173193710557

namespace A301478

/-- `eq[A000038(n)!, char[n*A000030(n)]]` -/
def P613240173193710557.Spec : Prop :=
  ∀ n, (P613240173193710557.a n : ℤ) = A301478 (n + 1)

end A301478

/-!
# A301480: Number of rooted twice-partitions of n.

The programs for A301480, there is no canonical definition to state claims against.
-/

/-! ## A301480.P5287918329761948462

`A067086(A319752(n))`
-/

namespace A301480.P5287918329761948462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A319752 n).toNat

end

end A301480.P5287918329761948462

/-! ## A301480.P7727672303576635715

`A082447(A131910(n))+char[6]`
-/

namespace A301480.P7727672303576635715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A131910 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301480.P7727672303576635715

/-! ## A301480.P14187911221012751670

`∑[A057574(n)]-A158746(n+1)`
-/

namespace A301480.P14187911221012751670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A158746 (n + 1)

end

end A301480.P14187911221012751670

/-! ## A301480.P1507903222808334571

`∑[A057574(n)]-eq[0, A341999(n)]`
-/

namespace A301480.P1507903222808334571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057574 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A301480.P1507903222808334571

/-! ## A301480.P15636911695255048062

`∑[A057574(n)]-record[n*A328308(n)]`
-/

namespace A301480.P15636911695255048062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A301480.P15636911695255048062

/-!
# A301483: a(n) = floor(a(n-1)/(2^(1/3)-1)) with a(1)=1.

The programs for A301483, the canonical program `A301483.P12044537443377731643` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301483 has offset 1).

The definition of A301483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301483.P3475255687004051054

`floor(a(n-1)/(2^(1/3)-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A301483.P3475255687004051054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) / ((2 : ℝ) ^ ((1 : ℚ) / 3 : ℝ) - 1)⌋

end

end A301483.P3475255687004051054

namespace A301483

/-- `floor(a(n-1)/(2^(1/3)-1))` -/
def P3475255687004051054.Spec : Prop :=
  ∀ n, P3475255687004051054.a n = A301483 (n + 1)

end A301483

/-! ## A301483.P12044537443377731643

`4*a(n-1)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=42`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A301483

/-- `4*a(n-1)-2*a(n-3)-a(n-4)` -/
def P12044537443377731643.Spec : Prop :=
  ∀ n, P12044537443377731643.a n = A301483 (n + 1)

theorem P12044537443377731643.correct : P12044537443377731643.Spec := by
  intro n
  simp only [A301483, Nat.add_sub_cancel]

end A301483

/-! ## A301483.P6216492965261370416

`Δ[A195350(n+1)]-A195339(n)`
-/

namespace A301483.P6216492965261370416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A195339 n

end

end A301483.P6216492965261370416

namespace A301483

/-- `Δ[A195350(n+1)]-A195339(n)` -/
def P6216492965261370416.Spec : Prop :=
  ∀ n, P6216492965261370416.a n = A301483 (n + 1)

end A301483

/-! ## A301483.P2984018552049671510

`2*A195339(n)-A303647(n+1)`
-/

namespace A301483.P2984018552049671510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195339 n - A303647 (n + 1)

end

end A301483.P2984018552049671510

namespace A301483

/-- `2*A195339(n)-A303647(n+1)` -/
def P2984018552049671510.Spec : Prop :=
  ∀ n, P2984018552049671510.a n = A301483 (n + 1)

end A301483

/-! ## A301483.P9127688221623481297

`A195339(n)+A195339(n)-A303647(A000027(n+1))`
-/

namespace A301483.P9127688221623481297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195339 n + (A195339 n - A303647 (A000027 (n + 1)).toNat)

end

end A301483.P9127688221623481297

namespace A301483

/-- `A195339(n)+A195339(n)-A303647(A000027(n+1))` -/
def P9127688221623481297.Spec : Prop :=
  ∀ n, P9127688221623481297.a n = A301483 (n + 1)

end A301483

/-!
# A301485: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301485, there is no canonical definition to state claims against.
-/

/-! ## A301485.P1501191966534330731

`A301491(∑[4*n]+1)`
-/

namespace A301485.P1501191966534330731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301485.P1501191966534330731

/-! ## A301485.P12331124760311133848

`A301491(A001844(n))+A025442(n)`
-/

namespace A301485.P12331124760311133848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (A001844 n).toNat + A025442 n

end

end A301485.P12331124760311133848

/-! ## A301485.P15123821420950675740

`A301491(A001844(n))+A185284(n)`
-/

namespace A301485.P15123821420950675740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (A001844 n).toNat + A185284 n

end

end A301485.P15123821420950675740

/-! ## A301485.P3365566161741639757

`A005135(n)*A301491(A001844(n))`
-/

namespace A301485.P3365566161741639757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005135 n * A301491 (A001844 n).toNat

end

end A301485.P3365566161741639757

/-! ## A301485.P14116546673523318735

`A055642(n)*A301491(A001844(n))`
-/

namespace A301485.P14116546673523318735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A301491 (A001844 n).toNat

end

end A301485.P14116546673523318735

/-!
# A301486: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301486, there is no canonical definition to state claims against.
-/

/-! ## A301486.P10144731221619845382

`A301491(∑[n+2]+4)`
-/

namespace A301486.P10144731221619845382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301486.P10144731221619845382

/-! ## A301486.P4872386638321528280

`A014998(n)*A301491(A167614(n+1))`
-/

namespace A301486.P4872386638321528280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014998 n * A301491 (A167614 (n + 1)).toNat

end

end A301486.P4872386638321528280

/-! ## A301486.P17955341245836636683

`A014998(n)*A301491(A055998(n)+6)`
-/

namespace A301486.P17955341245836636683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014998 n * A301491 (A055998 n + 6).toNat

end

end A301486.P17955341245836636683

/-! ## A301486.P13379243676591425146

`or(A064873(n), A301491(A167614(n+1)))`
-/

namespace A301486.P13379243676591425146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064873 n) (A301491 (A167614 (n + 1)).toNat)

end

end A301486.P13379243676591425146

/-! ## A301486.P2054649353441106393

`lcm(A204131(n+1), A301491(A167614(n+1)))`
-/

namespace A301486.P2054649353441106393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A204131 (n + 1)) (A301491 (A167614 (n + 1)).toNat)

end

end A301486.P2054649353441106393

/-!
# A301487: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301487, there is no canonical definition to state claims against.
-/

/-! ## A301487.P10616228298979138004

`A301491(∑[n+3]+7)`
-/

namespace A301487.P10616228298979138004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A301487.P10616228298979138004

/-! ## A301487.P8551347887455162475

`A301491(Δ[A008778(n)]+6)+A128834(3*n)`
-/

namespace A301487.P8551347887455162475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (f1 (n + 1) - f1 n + 6).toNat + A128834 (3 * n)

end

end A301487.P8551347887455162475

/-! ## A301487.P1693707729726723653

`A000034(2*n)*A301491(Δ[A008778(n)]+6)`
-/

namespace A301487.P1693707729726723653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A301491 (f1 (n + 1) - f1 n + 6).toNat

end

end A301487.P1693707729726723653

/-! ## A301487.P17627636133104102163

`A301491(Δ[A008778(n)]+6)%A300497(n+1)`
-/

namespace A301487.P17627636133104102163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301491 (f1 (n + 1) - f1 n + 6).toNat) (A300497 (n + 1))

end

end A301487.P17627636133104102163

/-! ## A301487.P6314350431333329101

`A301491(Δ[A006503(n)]+7)%A232924(n+1)`
-/

namespace A301487.P6314350431333329101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301491 (f1 (n + 1) - f1 n + 7).toNat) (A232924 (n + 1))

end

end A301487.P6314350431333329101

/-!
# A301488: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301488, there is no canonical definition to state claims against.
-/

/-! ## A301488.P3236510290285208015

`A301491(A167499(n+3))`
-/

namespace A301488.P3236510290285208015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (A167499 (n + 3)).toNat

end

end A301488.P3236510290285208015

/-! ## A301488.P14160017045370047136

`A301491(A077169(n+5))`
-/

namespace A301488.P14160017045370047136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (A077169 (n + 5)).toNat

end

end A301488.P14160017045370047136

/-! ## A301488.P15673105709384461465

`A301491(A000217(n+4)+5)`
-/

namespace A301488.P15673105709384461465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (A000217 (n + 4) + 5).toNat

end

end A301488.P15673105709384461465

/-! ## A301488.P7788097049293694547

`A301491(A141214(n+1)+8)`
-/

namespace A301488.P7788097049293694547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (A141214 (n + 1) + 8).toNat

end

end A301488.P7788097049293694547

/-! ## A301488.P1755489622985980504

`A301491(A027379(n+2)+8)`
-/

namespace A301488.P1755489622985980504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (A027379 (n + 2) + 8).toNat

end

end A301488.P1755489622985980504

/-!
# A301489: Number of n X 6 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301489, there is no canonical definition to state claims against.
-/

/-! ## A301489.P3182003941541551351

`A301491(A166136(n+4))`
-/

namespace A301489.P3182003941541551351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (A166136 (n + 4)).toNat

end

end A301489.P3182003941541551351

/-! ## A301489.P4548082515902696179

`A301491(Δ[A111396(n)]+9)`
-/

namespace A301489.P4548082515902696179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (f1 (n + 1) - f1 n + 9).toNat

end

end A301489.P4548082515902696179

/-! ## A301489.P4759853948395044253

`A301491(A167614(n+4)+3)`
-/

namespace A301489.P4759853948395044253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (A167614 (n + 4) + 3).toNat

end

end A301489.P4759853948395044253

/-! ## A301489.P284371825438869567

`A301491(A055998(n+3)+9)`
-/

namespace A301489.P284371825438869567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (A055998 (n + 3) + 9).toNat

end

end A301489.P284371825438869567

/-! ## A301489.P13897999666691933702

`A301491(A055999(n+2)+12)`
-/

namespace A301489.P13897999666691933702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (A055999 (n + 2) + 12).toNat

end

end A301489.P13897999666691933702

/-!
# A301490: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301490, there is no canonical definition to state claims against.
-/

/-! ## A301490.P57196710407756756

`A301491(A167487(n+5))`
-/

namespace A301490.P57196710407756756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (A167487 (n + 5)).toNat

end

end A301490.P57196710407756756

/-! ## A301490.P16453809300598867357

`A301491(A056119(n)+28)`
-/

namespace A301490.P16453809300598867357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (A056119 n + 28).toNat

end

end A301490.P16453809300598867357

/-! ## A301490.P6244359797779774493

`A301491(eq[11, A066657(n)])`
-/

namespace A301490.P6244359797779774493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301490.P6244359797779774493

/-! ## A301490.P4629495668065863117

`A301491(eq[8, A131818(n+1)])`
-/

namespace A301490.P4629495668065863117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301490.P4629495668065863117

/-! ## A301490.P4124710714974988786

`A301491(A374008(n+1))`
-/

namespace A301490.P4124710714974988786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301491 (A374008 (n + 1)).toNat

end

end A301490.P4124710714974988786

/-!
# A301491: T(n,k) = Number of n X k 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301491, there is no canonical definition to state claims against.
-/

/-! ## A301491.P2027380253743969776

`A300881(n+1)+A107846(A187557(n))`
-/

namespace A301491.P2027380253743969776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300881 (n + 1) + A107846 (A187557 n).toNat

end

end A301491.P2027380253743969776

/-!
# A301492: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301492, there is no canonical definition to state claims against.
-/

/-! ## A301492.P1213992194230961864

`A301498(∑[4*n]+1)`
-/

namespace A301492.P1213992194230961864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301492.P1213992194230961864

/-! ## A301492.P11291242700329536110

`A301498(A001844(n))+A185284(n)`
-/

namespace A301492.P11291242700329536110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A001844 n).toNat + A185284 n

end

end A301492.P11291242700329536110

/-! ## A301492.P13486992730371515890

`gcd(A000038(n), A301498(A001844(n)))`
-/

namespace A301492.P13486992730371515890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A301498 (A001844 n).toNat)

end

end A301492.P13486992730371515890

/-! ## A301492.P12538785164411778522

`lcm(A033999(n), A301498(A001844(n)))`
-/

namespace A301492.P12538785164411778522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A301498 (A001844 n).toNat)

end

end A301492.P12538785164411778522

/-! ## A301492.P4368423389163527817

`or(A000007(n), A301498(A001844(n)))`
-/

namespace A301492.P4368423389163527817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A301498 (A001844 n).toNat)

end

end A301492.P4368423389163527817

/-!
# A301493: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301493, there is no canonical definition to state claims against.
-/

/-! ## A301493.P14307710374764447099

`A301498(∑[n+2]+4)`
-/

namespace A301493.P14307710374764447099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301493.P14307710374764447099

/-! ## A301493.P14003855218102212256

`A301498(A167614(n+1))+A025439(n)`
-/

namespace A301493.P14003855218102212256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A167614 (n + 1)).toNat + A025439 n

end

end A301493.P14003855218102212256

/-! ## A301493.P10115143120306905909

`A301498(A167614(n+1))+A025469(n)`
-/

namespace A301493.P10115143120306905909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A167614 (n + 1)).toNat + A025469 n

end

end A301493.P10115143120306905909

/-! ## A301493.P6634569370204185113

`A301498(A167614(n+1))%A042246(n)`
-/

namespace A301493.P6634569370204185113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301498 (A167614 (n + 1)).toNat) (A042246 n)

end

end A301493.P6634569370204185113

/-! ## A301493.P7509420807291926675

`lcm(A057077(n), A301498(A167614(n+1)))`
-/

namespace A301493.P7509420807291926675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A301498 (A167614 (n + 1)).toNat)

end

end A301493.P7509420807291926675

/-!
# A301494: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301494, there is no canonical definition to state claims against.
-/

/-! ## A301494.P10494527685124455203

`A301498(A374004(n+1))`
-/

namespace A301494.P10494527685124455203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A374004 (n + 1)).toNat

end

end A301494.P10494527685124455203

/-! ## A301494.P14331467238854179434

`A301498(A141214(n)+7)`
-/

namespace A301494.P14331467238854179434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A141214 n + 7).toNat

end

end A301494.P14331467238854179434

/-! ## A301494.P6734346596416697677

`A301498(A055999(n)+10)`
-/

namespace A301494.P6734346596416697677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A055999 n + 10).toNat

end

end A301494.P6734346596416697677

/-! ## A301494.P3627046205258922074

`A301498(Δ[A008778(n)]+6)`
-/

namespace A301494.P3627046205258922074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (f1 (n + 1) - f1 n + 6).toNat

end

end A301494.P3627046205258922074

/-! ## A301494.P13205815203147536165

`A301498(A167614(n+2)+1)`
-/

namespace A301494.P13205815203147536165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A167614 (n + 2) + 1).toNat

end

end A301494.P13205815203147536165

/-!
# A301495: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301495, there is no canonical definition to state claims against.
-/

/-! ## A301495.P10506737128216461861

`A301498(A374005(n+1))`
-/

namespace A301495.P10506737128216461861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A374005 (n + 1)).toNat

end

end A301495.P10506737128216461861

/-! ## A301495.P5116172531886811752

`A301498(A167499(n+3))`
-/

namespace A301495.P5116172531886811752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A167499 (n + 3)).toNat

end

end A301495.P5116172531886811752

/-! ## A301495.P4915532797566204654

`A301498(A077169(n+5))`
-/

namespace A301495.P4915532797566204654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A077169 (n + 5)).toNat

end

end A301495.P4915532797566204654

/-! ## A301495.P9269356017075177280

`A301498(A000217(n+4)+5)`
-/

namespace A301495.P9269356017075177280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A000217 (n + 4) + 5).toNat

end

end A301495.P9269356017075177280

/-! ## A301495.P2769059078360543189

`A301498(A256188((n+4)²+4)+1)`
-/

namespace A301495.P2769059078360543189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A256188 ((n + 4) ^ 2 + 4) + 1).toNat

end

end A301495.P2769059078360543189

/-!
# A301496: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301496, there is no canonical definition to state claims against.
-/

/-! ## A301496.P12541513274151654604

`A301498(A374007(n+1))`
-/

namespace A301496.P12541513274151654604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A374007 (n + 1)).toNat

end

end A301496.P12541513274151654604

/-! ## A301496.P4183741967589485831

`A301498(A056115(n)+21)`
-/

namespace A301496.P4183741967589485831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A056115 n + 21).toNat

end

end A301496.P4183741967589485831

/-! ## A301496.P39097829585116977

`A301498(A000217(n+5)+6)`
-/

namespace A301496.P39097829585116977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A000217 (n + 5) + 6).toNat

end

end A301496.P39097829585116977

/-! ## A301496.P136326821181061586

`A301498(eq[7, A131818(n+1)])`
-/

namespace A301496.P136326821181061586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301496.P136326821181061586

/-! ## A301496.P10777196457538123213

`A301498(A000124(n+6)-(n+1))`
-/

namespace A301496.P10777196457538123213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A301496.P10777196457538123213

/-!
# A301497: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301497, there is no canonical definition to state claims against.
-/

/-! ## A301497.P14822476847073492192

`A301498(A374008(n+1))`
-/

namespace A301497.P14822476847073492192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A374008 (n + 1)).toNat

end

end A301497.P14822476847073492192

/-! ## A301497.P12357123330417316147

`A301498(A167487(n+5))`
-/

namespace A301497.P12357123330417316147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A167487 (n + 5)).toNat

end

end A301497.P12357123330417316147

/-! ## A301497.P5668141744830089497

`A301498(eq[11, A066657(n)])`
-/

namespace A301497.P5668141744830089497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301497.P5668141744830089497

/-! ## A301497.P5816230942633980523

`A301498(A000124(n+6)+6)`
-/

namespace A301497.P5816230942633980523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A000124 (n + 6) + 6).toNat

end

end A301497.P5816230942633980523

/-! ## A301497.P14645914303701222013

`A301498(A000217(n+6)+7)`
-/

namespace A301497.P14645914303701222013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (A000217 (n + 6) + 7).toNat

end

end A301497.P14645914303701222013

/-!
# A301498: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301498, there is no canonical definition to state claims against.
-/

/-! ## A301498.P3787624195117888228

`A300944(n+1)+A285006(A059922(n))`
-/

namespace A301498.P3787624195117888228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (n + 1) + A285006 (A059922 n).toNat

end

end A301498.P3787624195117888228

/-! ## A301498.P12421841441594483778

`A300506(n+1)+A285006(A174545(n))`
-/

namespace A301498.P12421841441594483778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (n + 1) + A285006 (A174545 n).toNat

end

end A301498.P12421841441594483778

/-! ## A301498.P11091234470342480224

`A326291(A174545(n))+A300944(n+1)`
-/

namespace A301498.P11091234470342480224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A174545 n).toNat + A300944 (n + 1)

end

end A301498.P11091234470342480224

/-! ## A301498.P10226546296644721064

`or(A285006(A001263(n+1)), A300944(n+1))`
-/

namespace A301498.P10226546296644721064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285006 (A001263 (n + 1)).toNat) (A300944 (n + 1))

end

end A301498.P10226546296644721064

/-! ## A301498.P12799857206191697205

`or(A285006(A174545(n)+1), A300944(n+1))`
-/

namespace A301498.P12799857206191697205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285006 (A174545 n + 1).toNat) (A300944 (n + 1))

end

end A301498.P12799857206191697205

/-!
# A301499: Total sum of the hook lengths over all partitions of 2n-1 having exactly n parts.

The programs for A301499, there is no canonical definition to state claims against.
-/

/-! ## A301499.P15016833142376134753

`A180681(∑[4*n]+1)`
-/

namespace A301499.P15016833142376134753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180681 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301499.P15016833142376134753

/-! ## A301499.P9124123192030569268

`and(-1, A180681(A001844(n)))`
-/

namespace A301499.P9124123192030569268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A180681 (A001844 n).toNat)

end

end A301499.P9124123192030569268

/-! ## A301499.P7170195266136058360

`A180681(A001844(n))%A135536(n)`
-/

namespace A301499.P7170195266136058360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180681 (A001844 n).toNat) (A135536 n)

end

end A301499.P7170195266136058360

/-! ## A301499.P1326694333269504900

`A025177(n²)*A180681(A001844(n))`
-/

namespace A301499.P1326694333269504900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (n ^ 2) * A180681 (A001844 n).toNat

end

end A301499.P1326694333269504900

/-! ## A301499.P13082631913030438922

`A180681(A001844(n))+A000007(n+1)`
-/

namespace A301499.P13082631913030438922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180681 (A001844 n).toNat + A000007 (n + 1)

end

end A301499.P13082631913030438922

/-! ## A301499.P9918707778645274643

`A007318(C(2, n))*A180681(A001844(n))`
-/

namespace A301499.P9918707778645274643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A180681 (A001844 n).toNat

end

end A301499.P9918707778645274643

/-! ## A301499.P18173154181355939518

`A000108(n*char[1])*A180681(A001844(n))`
-/

namespace A301499.P18173154181355939518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n * (if ∃ j, f1 j = n then 1 else 0)) * A180681 (A001844 n).toNat

end

end A301499.P18173154181355939518

/-! ## A301499.P13446617341949645956

`A180681(A001844(n))+char[A000032(n+12)]`
-/

namespace A301499.P13446617341949645956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 12)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180681 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A301499.P13446617341949645956

/-! ## A301499.P6717716696750597610

`A180681(A001844(n))+char[A000045(n+12)]`
-/

namespace A301499.P6717716696750597610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 12)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180681 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A301499.P6717716696750597610

/-! ## A301499.P12652057609893014472

`A180681(A001844(n))/A007318(C(n, n²))`
-/

namespace A301499.P12652057609893014472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180681 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A301499.P12652057609893014472

/-! ## A301499.P6910726041279377350

`A180681(A001844(n))+A008683(4*(n+1))`
-/

namespace A301499.P6910726041279377350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180681 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A301499.P6910726041279377350

/-! ## A301499.P16535614763672018696

`A014963(6*(n+1))*A180681(A001844(n))`
-/

namespace A301499.P16535614763672018696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A180681 (A001844 n).toNat

end

end A301499.P16535614763672018696

/-! ## A301499.P12038401703888068431

`A000041(C(2, n+2))*A180681(A001844(n))`
-/

namespace A301499.P12038401703888068431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A180681 (A001844 n).toNat

end

end A301499.P12038401703888068431

/-! ## A301499.P10250013912260331334

`A180681(A001844(n))^(A000040(n+1)%2)`
-/

namespace A301499.P10250013912260331334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180681 (A001844 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A301499.P10250013912260331334

/-! ## A301499.P17787022402889458773

`A091717(A091717(n+1))*A180681(A001844(n))`
-/

namespace A301499.P17787022402889458773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091717 (A091717 (n + 1)).toNat * A180681 (A001844 n).toNat

end

end A301499.P17787022402889458773

/-! ## A301499.P3404739183278238335

`A180681(A001844(n))^A040001(A000040(n+1))`
-/

namespace A301499.P3404739183278238335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180681 (A001844 n).toNat : ℚ) ^ (A040001 (A000040 (n + 1)).toNat : ℤ)

end

end A301499.P3404739183278238335

/-! ## A301499.P17869540214157100364

`A000045(A001511(n²+1))*A180681(A001844(n))`
-/

namespace A301499.P17869540214157100364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001511 (n ^ 2 + 1)).toNat * A180681 (A001844 n).toNat

end

end A301499.P17869540214157100364

/-! ## A301499.P9435341667639221139

`A180681(A001844(n))^A007318(A020639(3*(n+2))!)`
-/

namespace A301499.P9435341667639221139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180681 (A001844 n).toNat : ℚ) ^ (A007318 (Nat.factorial (A020639 (3 * (n + 2))).toNat) : ℤ)

end

end A301499.P9435341667639221139

