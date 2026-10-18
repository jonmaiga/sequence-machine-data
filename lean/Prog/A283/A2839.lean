import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B001.C008
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A283905: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 758", based on the 5-celled von Neumann neighborhood.

The programs for A283905, the canonical program `A283905.P18323214636868983378` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283905 has offset 0).

The definition of A283905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283905.P18323214636868983378

`2*a(n-1)+a(n-4)-2*a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=11, a(4)=21, a(5)=43, a(6)=93, a(7)=179, a(8)=381`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A283905

/-- `2*a(n-1)+a(n-4)-2*a(n-5)` -/
def P18323214636868983378.Spec : Prop :=
  ∀ n, P18323214636868983378.a n = A283905 n

theorem P18323214636868983378.correct : P18323214636868983378.Spec := by
  intro n
  simp only [A283905]

end A283905

/-! ## A283905.P12534260541436506149

`and(A126646(n), A264618(A283752(n)))`
-/

namespace A283905.P12534260541436506149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A283752 n).toNat)

end

end A283905.P12534260541436506149

namespace A283905

/-- `and(A126646(n), A264618(A283752(n)))` -/
def P12534260541436506149.Spec : Prop :=
  ∀ n, P12534260541436506149.a n = A283905 n

end A283905

/-! ## A283905.P14586915352977927398

`and(A264618(A283752(n)), A284482(n))`
-/

namespace A283905.P14586915352977927398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264618 (A283752 n).toNat) (A284482 n)

end

end A283905.P14586915352977927398

namespace A283905

/-- `and(A264618(A283752(n)), A284482(n))` -/
def P14586915352977927398.Spec : Prop :=
  ∀ n, P14586915352977927398.a n = A283905 n

end A283905

/-! ## A283905.P10437260617154952753

`A057889(A283752(n))`
-/

namespace A283905.P10437260617154952753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283752 n).toNat

end

end A283905.P10437260617154952753

namespace A283905

/-- `A057889(A283752(n))` -/
def P10437260617154952753.Spec : Prop :=
  ∀ n, P10437260617154952753.a n = A283905 n

end A283905

/-! ## A283905.P9888388437841321348

`A325401(or(1, A283752(n)))`
-/

namespace A283905.P9888388437841321348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lor 1 (A283752 n)).toNat

end

end A283905.P9888388437841321348

namespace A283905

/-- `A325401(or(1, A283752(n)))` -/
def P9888388437841321348.Spec : Prop :=
  ∀ n, P9888388437841321348.a n = A283905 n

end A283905

/-!
# A283906: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

The programs for A283906, there is no canonical definition to state claims against.
-/

/-! ## A283906.P5983977430637876085

`A284028((n-1)%(n+1))`
-/

namespace A283906.P5983977430637876085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284028 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A283906.P5983977430637876085

/-! ## A283906.P11803873184680610731

`A284028(round(sqrt(n²+1))-1)`
-/

namespace A283906.P11803873184680610731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284028 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

end

end A283906.P11803873184680610731

/-! ## A283906.P8389403692285601973

`A290416(A004273(n))`
-/

namespace A283906.P8389403692285601973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (A004273 n).toNat

end

end A283906.P8389403692285601973

/-! ## A283906.P1969228570044488250

`A290416(A163985(n))`
-/

namespace A283906.P1969228570044488250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (A163985 n).toNat

end

end A283906.P1969228570044488250

/-! ## A283906.P12970510327421909578

`A290416(record[A026741(n)])`
-/

namespace A283906.P12970510327421909578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A283906.P12970510327421909578

/-! ## A283906.P8865240621756620895

`A290416(A004277(n)-1)`
-/

namespace A283906.P8865240621756620895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (A004277 n - 1).toNat

end

end A283906.P8865240621756620895

/-! ## A283906.P17869656729149077263

`A290416(A014681(2*n))`
-/

namespace A283906.P17869656729149077263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (A014681 (2 * n)).toNat

end

end A283906.P17869656729149077263

/-! ## A283906.P7638113872690903498

`A290416(eq[n, A022998(n)])`
-/

namespace A283906.P7638113872690903498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283906.P7638113872690903498

/-! ## A283906.P3383807045366665041

`A290416(record[Δ[A008794(n)]])`
-/

namespace A283906.P3383807045366665041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A283906.P3383807045366665041

/-! ## A283906.P6102735521218623663

`A290416(record[n*A088705(n)])`
-/

namespace A283906.P6102735521218623663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A283906.P6102735521218623663

/-! ## A283906.P6913849335735741125

`A290416(record[and(n, A033999(n))])`
-/

namespace A283906.P6913849335735741125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A033999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A283906.P6913849335735741125

/-! ## A283906.P532403100605434875

`A290416(record[n*A033999(n+1)])`
-/

namespace A283906.P532403100605434875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A283906.P532403100605434875

/-! ## A283906.P9494164681754135959

`A290416(record[n/A033999(n+1)])`
-/

namespace A283906.P9494164681754135959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A033999 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A283906.P9494164681754135959

/-! ## A283906.P4523258498915034475

`A000042(n+1)-A285771(A028310(2*n))`
-/

namespace A283906.P4523258498915034475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A285771 (A028310 (2 * n)).toNat

end

end A283906.P4523258498915034475

/-! ## A283906.P16942818439127342377

`A000042(n+1)-A285771(A028310(n)+n)`
-/

namespace A283906.P16942818439127342377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A285771 (A028310 n + (n : ℤ)).toNat

end

end A283906.P16942818439127342377

/-!
# A283907: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

The programs for A283907, there is no canonical definition to state claims against.
-/

/-! ## A283907.P16530897097080048312

`A007088(A283909(n))`
-/

namespace A283907.P16530897097080048312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283909 n).toNat

end

end A283907.P16530897097080048312

/-! ## A283907.P8969871911062167955

`A007088(A267247(n)%A198633(n))`
-/

namespace A283907.P8969871911062167955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A267247 n) (A198633 n)).toNat

end

end A283907.P8969871911062167955

/-! ## A283907.P16485499415949835316

`A007088(and(A095121(n), A267247(n)))`
-/

namespace A283907.P16485499415949835316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A095121 n) (A267247 n)).toNat

end

end A283907.P16485499415949835316

/-! ## A283907.P2950142904682217354

`A007088(and(A126646(n), A267247(n)))`
-/

namespace A283907.P2950142904682217354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A126646 n) (A267247 n)).toNat

end

end A283907.P2950142904682217354

/-! ## A283907.P1654539798357430257

`A007088(and(A267247(n), A281482(n)))`
-/

namespace A283907.P1654539798357430257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A267247 n) (A281482 n)).toNat

end

end A283907.P1654539798357430257

/-!
# A283908: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

The programs for A283908, the canonical program `A283908.P12039075813356450362` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283908 has offset 0).

The definition of A283908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283908.P12039075813356450362

`A290418(n-(1-n)%(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A283908

/-- `A290418(n-(1-n)%(n+1))` -/
def P12039075813356450362.Spec : Prop :=
  ∀ n, P12039075813356450362.a n = A283908 n

theorem P12039075813356450362.correct : P12039075813356450362.Spec := by
  intro n
  simp only [A283908]

end A283908

/-! ## A283908.P3740005103217153853

`A290418(A004273(n))`
-/

namespace A283908.P3740005103217153853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290418 (A004273 n).toNat

end

end A283908.P3740005103217153853

namespace A283908

/-- `A290418(A004273(n))` -/
def P3740005103217153853.Spec : Prop :=
  ∀ n, P3740005103217153853.a n = A283908 n

end A283908

/-! ## A283908.P12117459053341999801

`A290418(A163985(n))`
-/

namespace A283908.P12117459053341999801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290418 (A163985 n).toNat

end

end A283908.P12117459053341999801

namespace A283908

/-- `A290418(A163985(n))` -/
def P12117459053341999801.Spec : Prop :=
  ∀ n, P12117459053341999801.a n = A283908 n

end A283908

/-! ## A283908.P16110920120911803004

`A290418(A130824(n)/2)`
-/

namespace A283908.P16110920120911803004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290418 (SequenceMachineLib.roundAway ((A130824 n : ℚ) / 2)).toNat

end

end A283908.P16110920120911803004

namespace A283908

/-- `A290418(A130824(n)/2)` -/
def P16110920120911803004.Spec : Prop :=
  ∀ n, P16110920120911803004.a n = A283908 n

end A283908

/-! ## A283908.P9620189054377818278

`A290418(eq[n, A195817(n)])`
-/

namespace A283908.P9620189054377818278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290418 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283908.P9620189054377818278

namespace A283908

/-- `A290418(eq[n, A195817(n)])` -/
def P9620189054377818278.Spec : Prop :=
  ∀ n, P9620189054377818278.a n = A283908 n

end A283908

/-! ## A283908.P15823368445347558381

`A290418(eq[n, n*A000035(n)])`
-/

namespace A283908.P15823368445347558381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290418 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283908.P15823368445347558381

namespace A283908

/-- `A290418(eq[n, n*A000035(n)])` -/
def P15823368445347558381.Spec : Prop :=
  ∀ n, P15823368445347558381.a n = A283908 n

end A283908

/-! ## A283908.P2007483718139967186

`A290418(eq[n, n*A266724(n)])`
-/

namespace A283908.P2007483718139967186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A266724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290418 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283908.P2007483718139967186

namespace A283908

/-- `A290418(eq[n, n*A266724(n)])` -/
def P2007483718139967186.Spec : Prop :=
  ∀ n, P2007483718139967186.a n = A283908 n

end A283908

/-! ## A283908.P16355877518122313144

`A290418(A055999(n)-A253145(n))`
-/

namespace A283908.P16355877518122313144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290418 (A055999 n - A253145 n).toNat

end

end A283908.P16355877518122313144

namespace A283908

/-- `A290418(A055999(n)-A253145(n))` -/
def P16355877518122313144.Spec : Prop :=
  ∀ n, P16355877518122313144.a n = A283908 n

end A283908

/-! ## A283908.P11882655304125346874

`A290418(eq[A000035(n), A266724(n)])`
-/

namespace A283908.P11882655304125346874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290418 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A283908.P11882655304125346874

namespace A283908

/-- `A290418(eq[A000035(n), A266724(n)])` -/
def P11882655304125346874.Spec : Prop :=
  ∀ n, P11882655304125346874.a n = A283908 n

end A283908

/-! ## A283908.P7585660173624923228

`A290418(eq[A266724(n)², A266724(n)])`
-/

namespace A283908.P7585660173624923228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290418 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A283908.P7585660173624923228

namespace A283908

/-- `A290418(eq[A266724(n)², A266724(n)])` -/
def P7585660173624923228.Spec : Prop :=
  ∀ n, P7585660173624923228.a n = A283908 n

end A283908

/-! ## A283908.P16441742792908921445

`A052955(A004277(n))-A288807(2*n)`
-/

namespace A283908.P16441742792908921445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288807 (2 * n)

end

end A283908.P16441742792908921445

namespace A283908

/-- `A052955(A004277(n))-A288807(2*n)` -/
def P16441742792908921445.Spec : Prop :=
  ∀ n, P16441742792908921445.a n = A283908 n

end A283908

/-! ## A283908.P13109518870177523355

`A288811(2*n)%(2^(n+1))`
-/

namespace A283908.P13109518870177523355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288811 (2 * n)) (2 ^ (n + 1) : ℤ)

end

end A283908.P13109518870177523355

namespace A283908

/-- `A288811(2*n)%(2^(n+1))` -/
def P13109518870177523355.Spec : Prop :=
  ∀ n, P13109518870177523355.a n = A283908 n

end A283908

/-! ## A283908.P14615519759345842889

`A290230(2*n)%(2^(n+1))`
-/

namespace A283908.P14615519759345842889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290230 (2 * n)) (2 ^ (n + 1) : ℤ)

end

end A283908.P14615519759345842889

namespace A283908

/-- `A290230(2*n)%(2^(n+1))` -/
def P14615519759345842889.Spec : Prop :=
  ∀ n, P14615519759345842889.a n = A283908 n

end A283908

/-! ## A283908.P6445182848761814573

`and(A052551(2*n), A290230(2*n))`
-/

namespace A283908.P6445182848761814573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052551 (2 * n)) (A290230 (2 * n))

end

end A283908.P6445182848761814573

namespace A283908

/-- `and(A052551(2*n), A290230(2*n))` -/
def P6445182848761814573.Spec : Prop :=
  ∀ n, P6445182848761814573.a n = A283908 n

end A283908

/-! ## A283908.P10501312087596503775

`and(A282418(2*n+1), A290230(2*n))`
-/

namespace A283908.P10501312087596503775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282418 (2 * n + 1)) (A290230 (2 * n))

end

end A283908.P10501312087596503775

namespace A283908

/-- `and(A282418(2*n+1), A290230(2*n))` -/
def P10501312087596503775.Spec : Prop :=
  ∀ n, P10501312087596503775.a n = A283908 n

end A283908

/-! ## A283908.P1863223520569329284

`A288811(2*n)-and(A086652(2*n), A288811(2*n))`
-/

namespace A283908.P1863223520569329284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288811 (2 * n) - Int.land (A086652 (2 * n)) (A288811 (2 * n))

end

end A283908.P1863223520569329284

namespace A283908

/-- `A288811(2*n)-and(A086652(2*n), A288811(2*n))` -/
def P1863223520569329284.Spec : Prop :=
  ∀ n, P1863223520569329284.a n = A283908 n

end A283908

/-!
# A283909: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

The programs for A283909, the canonical program `A283909.P7601031243717363811` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283909 has offset 0).

The definition of A283909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283909.P13062624481315828869

`∪[2*A284031(2*n), A284023(2*n)]`
-/

namespace A283909.P13062624481315828869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284031 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284023 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A283909.P13062624481315828869

namespace A283909

/-- `∪[2*A284031(2*n), A284023(2*n)]` -/
def P13062624481315828869.Spec : Prop :=
  ∀ n, (P13062624481315828869.a n : ℤ) = A283909 n

end A283909

/-! ## A283909.P7601031243717363811

`A267247(n)%A198633(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A283909

/-- `A267247(n)%A198633(n)` -/
def P7601031243717363811.Spec : Prop :=
  ∀ n, P7601031243717363811.a n = A283909 n

theorem P7601031243717363811.correct : P7601031243717363811.Spec := by
  intro n
  simp only [A283909]

end A283909

/-! ## A283909.P13504831085919917250

`and(A095121(n), A267247(n))`
-/

namespace A283909.P13504831085919917250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095121 n) (A267247 n)

end

end A283909.P13504831085919917250

namespace A283909

/-- `and(A095121(n), A267247(n))` -/
def P13504831085919917250.Spec : Prop :=
  ∀ n, P13504831085919917250.a n = A283909 n

end A283909

/-! ## A283909.P9702007607456136065

`and(A126646(n), A267247(n))`
-/

namespace A283909.P9702007607456136065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A267247 n)

end

end A283909.P9702007607456136065

namespace A283909

/-- `and(A126646(n), A267247(n))` -/
def P9702007607456136065.Spec : Prop :=
  ∀ n, P9702007607456136065.a n = A283909 n

end A283909

/-! ## A283909.P5009872788326276155

`and(A267247(n), A290682(n))`
-/

namespace A283909.P5009872788326276155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267247 n) (A290682 n)

end

end A283909.P5009872788326276155

namespace A283909

/-- `and(A267247(n), A290682(n))` -/
def P5009872788326276155.Spec : Prop :=
  ∀ n, P5009872788326276155.a n = A283909 n

end A283909

/-! ## A283909.P16269308984187384115

`and(∑[A000079(n)], A267247(n))`
-/

namespace A283909.P16269308984187384115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A267247 n)

end

end A283909.P16269308984187384115

namespace A283909

/-- `and(∑[A000079(n)], A267247(n))` -/
def P16269308984187384115.Spec : Prop :=
  ∀ n, P16269308984187384115.a n = A283909 n

end A283909

/-! ## A283909.P2584819921291751242

`A290419(A004273(n))/A011782(n)`
-/

namespace A283909.P2584819921291751242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290419 (A004273 n).toNat : ℚ) / (A011782 n : ℚ)

end

end A283909.P2584819921291751242

namespace A283909

/-- `A290419(A004273(n))/A011782(n)` -/
def P2584819921291751242.Spec : Prop :=
  ∀ n, P2584819921291751242.a n = (A283909 n : ℚ)

end A283909

/-! ## A283909.P1140771483332423357

`and(A000225(2*n)-A001317(2*n), A000225(n+1))`
-/

namespace A283909.P1140771483332423357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (2 * n) - A001317 (2 * n)) (A000225 (n + 1))

end

end A283909.P1140771483332423357

namespace A283909

/-- `and(A000225(2*n)-A001317(2*n), A000225(n+1))` -/
def P1140771483332423357.Spec : Prop :=
  ∀ n, P1140771483332423357.a n = A283909 n

end A283909

/-! ## A283909.P6575870497732594346

`and(A267247(n), A281482(n))`
-/

namespace A283909.P6575870497732594346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267247 n) (A281482 n)

end

end A283909.P6575870497732594346

namespace A283909

/-- `and(A267247(n), A281482(n))` -/
def P6575870497732594346.Spec : Prop :=
  ∀ n, P6575870497732594346.a n = A283909 n

end A283909

/-! ## A283909.P9634776131347210811

`and(A000225(n+1), A267675(2*n))`
-/

namespace A283909.P9634776131347210811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (n + 1)) (A267675 (2 * n))

end

end A283909.P9634776131347210811

namespace A283909

/-- `and(A000225(n+1), A267675(2*n))` -/
def P9634776131347210811.Spec : Prop :=
  ∀ n, P9634776131347210811.a n = A283909 n

end A283909

/-!
# A283912: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 774", based on the 5-celled von Neumann neighborhood.

The programs for A283912, there is no canonical definition to state claims against.
-/

/-! ## A283912.P12436522849700292796

`A000027(A284143(n))`
-/

namespace A283912.P12436522849700292796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A284143 n).toNat

end

end A283912.P12436522849700292796

/-! ## A283912.P11497314978342717013

`record[A284143(A284282(n))]`
-/

namespace A283912.P11497314978342717013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284143 (A284282 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283912.P11497314978342717013

/-! ## A283912.P12896348981246091486

`record[A015396(n)*A284143(n)]`
-/

namespace A283912.P12896348981246091486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015396 n * A284143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283912.P12896348981246091486

/-! ## A283912.P1281855604955257337

`A284143(n)%A082671(n+1)²`
-/

namespace A283912.P1281855604955257337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284143 n) (A082671 (n + 1) ^ 2)

end

end A283912.P1281855604955257337

/-! ## A283912.P2473020372437583630

`A284143(n)+A000007(A034297(n))`
-/

namespace A283912.P2473020372437583630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284143 n + A000007 (A034297 n).toNat

end

end A283912.P2473020372437583630

/-!
# A283913: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 774", based on the 5-celled von Neumann neighborhood.

The programs for A283913, there is no canonical definition to state claims against.
-/

/-! ## A283913.P6105409505376044259

`A000027(A284144(n))`
-/

namespace A283913.P6105409505376044259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A284144 n).toNat

end

end A283913.P6105409505376044259

/-! ## A283913.P13180045747491540954

`record[A284144(A284282(n))]`
-/

namespace A283913.P13180045747491540954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284144 (A284282 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283913.P13180045747491540954

/-! ## A283913.P13343668228493127576

`record[A284144(A304038(n+1))]`
-/

namespace A283913.P13343668228493127576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284144 (A304038 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283913.P13343668228493127576

/-! ## A283913.P8505549832062892913

`record[A015396(n)*A284144(n)]`
-/

namespace A283913.P8505549832062892913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015396 n * A284144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283913.P8505549832062892913

/-! ## A283913.P11510975321579031851

`A284144(n)+A000007(A001371(n))`
-/

namespace A283913.P11510975321579031851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284144 n + A000007 (A001371 n).toNat

end

end A283913.P11510975321579031851

/-!
# A283914: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 777", based on the 5-celled von Neumann neighborhood.

The programs for A283914, there is no canonical definition to state claims against.
-/

/-! ## A283914.P11945535340429351237

`A007088(A283916(n))`
-/

namespace A283914.P11945535340429351237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283916 n).toNat

end

end A283914.P11945535340429351237

/-! ## A283914.P10782724357312000392

`A105028(A284185(n))`
-/

namespace A283914.P10782724357312000392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105028 (A284185 n).toNat

end

end A283914.P10782724357312000392

/-!
# A283915: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 777", based on the 5-celled von Neumann neighborhood.

The programs for A283915, there is no canonical definition to state claims against.
-/

/-! ## A283915.P7910036741659561707

`A007088(A283917(n))`
-/

namespace A283915.P7910036741659561707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283917 n).toNat

end

end A283915.P7910036741659561707

/-!
# A283918: a(n) = (1 + Sum_{j=1..K-2} a(n-j)*a(n-j-1))/a(n-K) with a(1),...,a(K)=1, where K=6.

The programs for A283918, there is no canonical definition to state claims against.
-/

/-! ## A283918.P15923382923512426452

`A321655(floor(C(n, 2)/2)-(n-2))`
-/

namespace A283918.P15923382923512426452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321655 (⌊(Nat.choose n 2 : ℚ) / 2⌋ - ((n : ℤ) - 2)).toNat

end

end A283918.P15923382923512426452

/-! ## A283918.P341666471984662206

`A321655(Δ[round(ϕ*a(n-1))])` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A283918.P341666471984662206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321655 (f1 (n + 1) - f1 n).toNat

end

end A283918.P341666471984662206

/-! ## A283918.P1021780384235660395

`A321655(Δ[a(n-1)+a(n-2)])` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A283918.P1021780384235660395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321655 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A283918.P1021780384235660395

/-! ## A283918.P2700590706264781903

`A321655(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=0, a(1)=2, a(2)=0, a(3)=2`
-/

namespace A283918.P2700590706264781903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321655 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A283918.P2700590706264781903

/-! ## A283918.P2452965004178522395

`A025452(A148734(n))`
-/

namespace A283918.P2452965004178522395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (A148734 n).toNat

end

end A283918.P2452965004178522395

/-!
# A283919: The smallest square referenced in A013929 (Numbers that are not squarefree).

The programs for A283919, there is no canonical definition to state claims against.
-/

/-! ## A283919.P9295524589378834499

`A046027(n+1)²`
-/

namespace A283919.P9295524589378834499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046027 (n + 1) ^ 2

end

end A283919.P9295524589378834499

/-! ## A283919.P18171714993998236063

`A088377(A084936(n+1))`
-/

namespace A283919.P18171714993998236063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (A084936 (n + 1)).toNat

end

end A283919.P18171714993998236063

/-! ## A283919.P1864748948279005997

`A088377(A087050(n+1))`
-/

namespace A283919.P1864748948279005997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (A087050 (n + 1)).toNat

end

end A283919.P1864748948279005997

/-! ## A283919.P12183972806306789031

`A046021(2*A046027(n+1))`
-/

namespace A283919.P12183972806306789031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046021 (2 * A046027 (n + 1)).toNat

end

end A283919.P12183972806306789031

/-! ## A283919.P17141439619062079923

`A046027(n+1)^A278222(2^val(n+1, 2))`
-/

namespace A283919.P17141439619062079923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046027 (n + 1) : ℚ) ^ (A278222 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℤ)

end

end A283919.P17141439619062079923

/-! ## A283919.P8855146850094158301

`A020639(A084936(n+1))*A046027(n+1)`
-/

namespace A283919.P8855146850094158301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A084936 (n + 1)).toNat * A046027 (n + 1)

end

end A283919.P8855146850094158301

/-! ## A283919.P14516401834642776156

`A046027(n+1)^A000005(A046026(n+1))`
-/

namespace A283919.P14516401834642776156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046027 (n + 1) : ℚ) ^ (A000005 (A046026 (n + 1)).toNat : ℤ)

end

end A283919.P14516401834642776156

/-! ## A283919.P721530739238777640

`A046027(n+1)^A000005(A046028(n+1))`
-/

namespace A283919.P721530739238777640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046027 (n + 1) : ℚ) ^ (A000005 (A046028 (n + 1)).toNat : ℤ)

end

end A283919.P721530739238777640

/-! ## A283919.P6239735847219233484

`A020639(A013929(n+1)/A015049(n+1))²`
-/

namespace A283919.P6239735847219233484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A013929 (n + 1) : ℚ) / (A015049 (n + 1) : ℚ))).toNat ^ 2

end

end A283919.P6239735847219233484

/-! ## A283919.P15189508414617806900

`A046027(n+1)^A046027(A003946(C(2, n))+1)`
-/

namespace A283919.P15189508414617806900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046027 (n + 1) : ℚ) ^ (A046027 (A003946 (Nat.choose 2 n) + 1).toNat : ℤ)

end

end A283919.P15189508414617806900

/-! ## A283919.P15805066536119498821

`A013929(n+1)*A046027(n+1)/A384064(n+1)`
-/

namespace A283919.P15805066536119498821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) * A046027 (n + 1) : ℚ) / (A384064 (n + 1) : ℚ)

end

end A283919.P15805066536119498821

/-! ## A283919.P12121611669850528634

`A046027(n+1)*A249739(A249739(n+1))*A046027(n+1)`
-/

namespace A283919.P12121611669850528634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046027 (n + 1) * A249739 (A249739 (n + 1)).toNat * A046027 (n + 1)

end

end A283919.P12121611669850528634

/-! ## A283919.P9801087245313217305

`A083730(A046027(n+1)*A046027(n+1))`
-/

namespace A283919.P9801087245313217305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083730 (A046027 (n + 1) * A046027 (n + 1)).toNat

end

end A283919.P9801087245313217305

/-! ## A283919.P8605980991506816556

`A088377(A368040(n+1))`
-/

namespace A283919.P8605980991506816556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (A368040 (n + 1)).toNat

end

end A283919.P8605980991506816556

/-! ## A283919.P2403647118613541726

`p?[A249739(n+1)]²`
-/

namespace A283919.P2403647118613541726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A283919.P2403647118613541726

/-! ## A283919.P1811416474696020345

`p?[A392108(n+1)]²`
-/

namespace A283919.P1811416474696020345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A283919.P1811416474696020345

/-! ## A283919.P6949155374182009015

`A249739(A013929(n+1))²`
-/

namespace A283919.P6949155374182009015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A013929 (n + 1)).toNat ^ 2

end

end A283919.P6949155374182009015

/-! ## A283919.P14605037912138558491

`A328271(p?[A249739(n+1)])`
-/

namespace A283919.P14605037912138558491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328271 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A283919.P14605037912138558491

/-! ## A283919.P11695091592857683310

`p?[A020639(A003557(n+1))]²`
-/

namespace A283919.P11695091592857683310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A283919.P11695091592857683310

/-! ## A283919.P6633785713276053461

`p?[A249739(n+1)]*A046027(n+1)`
-/

namespace A283919.P6633785713276053461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A046027 (n + 1)

end

end A283919.P6633785713276053461

/-!
# A283920: a(n) = (1 + Sum_{j=1..K-2} a(n-j)*a(n-j-1))/a(n-K) with a(1),...,a(K)=1, where K=8.

The programs for A283920, there is no canonical definition to state claims against.
-/

/-! ## A283920.P9442440295396817867

`A201459(A336022(n))`
-/

namespace A283920.P9442440295396817867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201459 (A336022 n).toNat

end

end A283920.P9442440295396817867

/-! ## A283920.P393503153319309674

`A187188(2^A108949(n))`
-/

namespace A283920.P393503153319309674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A108949 n : ℤ))).toNat

end

end A283920.P393503153319309674

/-! ## A283920.P14136306596555402903

`filter[A147448(n+2), A072770(#)]`
-/

namespace A283920.P14136306596555402903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147448 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072770 (f1 j).toNat = 1) n)

end

end A283920.P14136306596555402903

/-! ## A283920.P10722353224176521920

`filter[A147448(n+2), A104893(#)]`
-/

namespace A283920.P10722353224176521920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147448 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104893 (f1 j).toNat = 1) n)

end

end A283920.P10722353224176521920

/-! ## A283920.P5312793695257155116

`filter[A147448(n+2), A104894(#)]`
-/

namespace A283920.P5312793695257155116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147448 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104894 (f1 j).toNat = 1) n)

end

end A283920.P5312793695257155116

/-!
# A283922: Denominators of poly-Bernoulli numbers B_n^(k) with k=5.

The programs for A283922, there is no canonical definition to state claims against.
-/

/-! ## A283922.P13989571034550272959

`A283935(n)/A007480(A001104(n+1))`
-/

namespace A283922.P13989571034550272959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283935 n : ℚ) / (A007480 (A001104 (n + 1)).toNat : ℚ)

end

end A283922.P13989571034550272959

/-! ## A283922.P8098008109046574526

`A224100(n)/A000005(A002425(n+1))`
-/

namespace A283922.P8098008109046574526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224100 n : ℚ) / (A000005 (A002425 (n + 1)).toNat : ℚ)

end

end A283922.P8098008109046574526

/-!
# A283924: Denominators of poly-Bernoulli numbers B_n^(k) with k=6.

The programs for A283924, there is no canonical definition to state claims against.
-/

/-! ## A283924.P7238982976455370996

`A007407(n+1)/A218622(A219247(n))*A224105(n)`
-/

namespace A283924.P7238982976455370996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007407 (n + 1) : ℚ) / (A218622 (A219247 n).toNat : ℚ) * (A224105 n : ℚ)

end

end A283924.P7238982976455370996

/-!
# A283926: Denominators of poly-Bernoulli numbers B_n^(k) with k=7.

The programs for A283926, there is no canonical definition to state claims against.
-/

/-! ## A283926.P16548016837331919499

`A007407(A001104(n+1))*A283922(n)`
-/

namespace A283926.P16548016837331919499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (A001104 (n + 1)).toNat * A283922 n

end

end A283926.P16548016837331919499

/-!
# A283929: Number of ways of writing n as a sum of a twin prime (A001097) and a squarefree semiprime (A006881).

The programs for A283929, there is no canonical definition to state claims against.
-/

/-! ## A283929.P6736580686120276212

`A091221(C(A263411(n+1), A263396(n)))`
-/

namespace A283929.P6736580686120276212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091221 (Nat.choose (A263411 (n + 1)).toNat (A263396 n).toNat)

end

end A283929.P6736580686120276212

/-! ## A283929.P1398110745679600185

`A358724(A046100(n+1)+A024645(n+1))`
-/

namespace A283929.P1398110745679600185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358724 (A046100 (n + 1) + A024645 (n + 1)).toNat

end

end A283929.P1398110745679600185

/-! ## A283929.P15707958374163753552

`(n-2)%A237442(A025591(n))`
-/

namespace A283929.P15707958374163753552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 2) (A237442 (A025591 n).toNat)

end

end A283929.P15707958374163753552

/-! ## A283929.P690073835338914581

`A076142(A210557(n+1)+A096235(n+1))`
-/

namespace A283929.P690073835338914581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076142 (A210557 (n + 1) + A096235 (n + 1)).toNat

end

end A283929.P690073835338914581

/-! ## A283929.P17638903434593685620

`A323069(A131096(n+1))`
-/

namespace A283929.P17638903434593685620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323069 (A131096 (n + 1)).toNat

end

end A283929.P17638903434593685620

/-!
# A283930: Numbers k such that tau(2^k - 1) = tau(2^k + 1).

The programs for A283930, there is no canonical definition to state claims against.
-/

/-! ## A283930.P10732317937339021471

`eq[A046798(n), A046801(A028310(n))]`
-/

namespace A283930.P10732317937339021471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046801 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283930.P10732317937339021471

/-!
# A283933: Denominators of poly-Bernoulli numbers B_n^(k) with k = 8.

The programs for A283933, there is no canonical definition to state claims against.
-/

/-! ## A283933.P13472586961104292904

`record[A284002(n)]*A283926(n)`
-/

namespace A283933.P13472586961104292904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A283926 n

end

end A283933.P13472586961104292904

/-!
# A283935: Denominators of poly-Bernoulli numbers B_n^(k) with k = 9.

The programs for A283935, there is no canonical definition to state claims against.
-/

/-! ## A283935.P7841459737738705307

`A007480(A001104(n+1))*A283922(n)`
-/

namespace A283935.P7841459737738705307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007480 (A001104 (n + 1)).toNat * A283922 n

end

end A283935.P7841459737738705307

/-! ## A283935.P16461303173486350056

`A224100(n)/A053150(A224094(n))*A007480(n+1)`
-/

namespace A283935.P16461303173486350056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224100 n : ℚ) / (A053150 (A224094 n).toNat : ℚ) * (A007480 (n + 1) : ℚ)

end

end A283935.P16461303173486350056

/-!
# A283936: Number of "Euclidean primes" with respect to the first n primes.

The programs for A283936, there is no canonical definition to state claims against.
-/

/-! ## A283936.P15710515874364086442

`A342191(A280278(n+1))`
-/

namespace A283936.P15710515874364086442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (A280278 (n + 1)).toNat

end

end A283936.P15710515874364086442

/-! ## A283936.P6912812236877002813

`A329138(A061257(n)+n)`
-/

namespace A283936.P6912812236877002813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329138 (A061257 n + (n : ℤ)).toNat

end

end A283936.P6912812236877002813

/-! ## A283936.P15281569180058962924

`A166018(A059923(n+1)+1)`
-/

namespace A283936.P15281569180058962924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166018 (A059923 (n + 1) + 1).toNat

end

end A283936.P15281569180058962924

/-! ## A283936.P211189874304393187

`A166018(A091493(2*n+1))`
-/

namespace A283936.P211189874304393187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166018 (A091493 (2 * n + 1)).toNat

end

end A283936.P211189874304393187

/-! ## A283936.P9126843640045154210

`A002024(A324783(n))-A045686(n)`
-/

namespace A283936.P9126843640045154210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A324783 n).toNat - A045686 n

end

end A283936.P9126843640045154210

/-!
# A283937: Prime numbers p such that A283751(p) < p.

The programs for A283937, there is no canonical definition to state claims against.
-/

/-! ## A283937.P12212110858854461822

`p?[lt[A283751(n), A181983(n)]]`
-/

namespace A283937.P12212110858854461822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283751 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A283937.P12212110858854461822

/-! ## A283937.P954982256346019073

`p?[A341058(n+1)+A261488(n+1)]`
-/

namespace A283937.P954982256346019073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341058 (n + 1) + A261488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283937.P954982256346019073

/-! ## A283937.P1677114933206904073

`p?[A353481(n+1)+A341058(n+1)]`
-/

namespace A283937.P1677114933206904073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (n + 1) + A341058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283937.P1677114933206904073

/-! ## A283937.P7202611045881183178

`p?[or(A325135(n+1), A341058(n+1))]`
-/

namespace A283937.P7202611045881183178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A325135 (n + 1)) (A341058 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283937.P7202611045881183178

/-! ## A283937.P11059368122895188715

`p?[or(A341058(n+1), A353629(n+1))]`
-/

namespace A283937.P11059368122895188715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A341058 (n + 1)) (A353629 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283937.P11059368122895188715

/-!
# A283938: Interspersion of the signature sequence of phi^2, where phi = (1 + sqrt(5))/2 = golden ratio.

The programs for A283938, there is no canonical definition to state claims against.
-/

/-! ## A283938.P14992279285614064306

`A283961(A038722(n+1))`
-/

namespace A283938.P14992279285614064306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283961 (A038722 (n + 1)).toNat

end

end A283938.P14992279285614064306

/-! ## A283938.P10895037304746733354

`A283961(A061579(n)+1)`
-/

namespace A283938.P10895037304746733354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283961 (A061579 n + 1).toNat

end

end A283938.P10895037304746733354

/-! ## A283938.P17299354558865398916

`A283961(A114327(n)+1+n)`
-/

namespace A283938.P17299354558865398916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283961 (A114327 n + 1 + (n : ℤ)).toNat

end

end A283938.P17299354558865398916

/-! ## A283938.P10444585060148188585

`A283961(A093995(n+1)-n)`
-/

namespace A283938.P10444585060148188585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283961 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A283938.P10444585060148188585

/-! ## A283938.P5342995350710203827

`A283961(A002024(n+1)²-n)`
-/

namespace A283938.P5342995350710203827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283961 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A283938.P5342995350710203827

/-!
# A283939: Interspersion of the signature sequence of sqrt(2).

The programs for A283939, there is no canonical definition to state claims against.
-/

/-! ## A283939.P16214864447136724615

`A283962(∑[2*n]%comp[∑[n]]+1)`
-/

namespace A283939.P16214864447136724615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283962 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

end

end A283939.P16214864447136724615

/-! ## A283939.P10464683096440131485

`A283962(A038722(n+1))`
-/

namespace A283939.P10464683096440131485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283962 (A038722 (n + 1)).toNat

end

end A283939.P10464683096440131485

/-! ## A283939.P700668385582530230

`A283962(A061579(n)+1)`
-/

namespace A283939.P700668385582530230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283962 (A061579 n + 1).toNat

end

end A283939.P700668385582530230

/-! ## A283939.P6437957370477315222

`A283962(A114327(n)+1+n)`
-/

namespace A283939.P6437957370477315222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283962 (A114327 n + 1 + (n : ℤ)).toNat

end

end A283939.P6437957370477315222

/-! ## A283939.P10941889110684382659

`A283962(A093995(n+1)-n)`
-/

namespace A283939.P10941889110684382659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283962 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A283939.P10941889110684382659

/-! ## A283939.P8079828496417248476

`A283962(A002024(n+1)²-n)`
-/

namespace A283939.P8079828496417248476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283962 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A283939.P8079828496417248476

/-!
# A283940: Interspersion of the signature sequence of sqrt(3).

The programs for A283940, there is no canonical definition to state claims against.
-/

/-! ## A283940.P2204198564255266966

`A293052(A038722(n+1))`
-/

namespace A283940.P2204198564255266966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293052 (A038722 (n + 1)).toNat

end

end A283940.P2204198564255266966

/-! ## A283940.P14937838879045907370

`A293052(A061579(n)+1)`
-/

namespace A283940.P14937838879045907370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293052 (A061579 n + 1).toNat

end

end A283940.P14937838879045907370

/-! ## A283940.P5658766371465708958

`A293052(A093995(n+1)-n)`
-/

namespace A283940.P5658766371465708958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293052 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A283940.P5658766371465708958

/-! ## A283940.P14241378302418501071

`A293052(A002024(n+1)²-n)`
-/

namespace A283940.P14241378302418501071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293052 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A283940.P14241378302418501071

/-! ## A283940.P17510458568751583920

`A293052(A000194(2*(n+1))²-n)`
-/

namespace A283940.P17510458568751583920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293052 (A000194 (2 * (n + 1)) ^ 2 - (n : ℤ)).toNat

end

end A283940.P17510458568751583920

/-!
# A283941: Interspersion of the signature sequence of sqrt(5).

The programs for A283941, there is no canonical definition to state claims against.
-/

/-! ## A283941.P4978137302518562849

`A293054(A038722(n+1))`
-/

namespace A283941.P4978137302518562849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293054 (A038722 (n + 1)).toNat

end

end A283941.P4978137302518562849

/-! ## A283941.P8250974826867812794

`A293054(A061579(n)+1)`
-/

namespace A283941.P8250974826867812794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293054 (A061579 n + 1).toNat

end

end A283941.P8250974826867812794

/-! ## A283941.P11892058247645861034

`A293054(A114327(n)+1+n)`
-/

namespace A283941.P11892058247645861034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293054 (A114327 n + 1 + (n : ℤ)).toNat

end

end A283941.P11892058247645861034

/-! ## A283941.P13660412117368989438

`A293054(A093995(n+1)-n)`
-/

namespace A283941.P13660412117368989438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293054 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A283941.P13660412117368989438

/-! ## A283941.P171456954085422234

`A293054(A000194(2*(n+1))²-n)`
-/

namespace A283941.P171456954085422234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293054 (A000194 (2 * (n + 1)) ^ 2 - (n : ℤ)).toNat

end

end A283941.P171456954085422234

/-!
# A283942: Rectangular array by antidiagonals: interspersion of the signature sequence of sqrt(8).

The programs for A283942, there is no canonical definition to state claims against.
-/

/-! ## A283942.P7429839950636902747

`or(A010060(A080616(n)), A283943(n+1))`
-/

namespace A283942.P7429839950636902747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A080616 n).toNat) (A283943 (n + 1))

end

end A283942.P7429839950636902747

/-! ## A283942.P535249161846688622

`or(A122179(A122178(n)), A283943(n+1))`
-/

namespace A283942.P535249161846688622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122179 (A122178 n).toNat) (A283943 (n + 1))

end

end A283942.P535249161846688622

/-! ## A283942.P11143134496997826604

`or(A054907(A346426(n)), A283943(n+1))`
-/

namespace A283942.P11143134496997826604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054907 (A346426 n).toNat) (A283943 (n + 1))

end

end A283942.P11143134496997826604

/-! ## A283942.P12624417178365861004

`or(A196563(A274487(n)), A283943(n+1))`
-/

namespace A283942.P12624417178365861004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A196563 (A274487 n).toNat) (A283943 (n + 1))

end

end A283942.P12624417178365861004

/-! ## A283942.P10992438970994066035

`or(A185294(A283940(n+1)), A283943(n+1))`
-/

namespace A283942.P10992438970994066035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185294 (A283940 (n + 1)).toNat) (A283943 (n + 1))

end

end A283942.P10992438970994066035

/-!
# A283943: Interspersion of the signature sequence of e (a rectangular array, by antidiagonals).

The programs for A283943, there is no canonical definition to state claims against.
-/

/-! ## A283943.P11280866862791621858

`A283942(n+1)-A185284(A283942(n+1)+1)`
-/

namespace A283943.P11280866862791621858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283942 (n + 1) - A185284 (A283942 (n + 1) + 1).toNat

end

end A283943.P11280866862791621858

/-! ## A283943.P15767427143324528868

`A283942(n+1)-A185294(A071944(n+4))`
-/

namespace A283943.P15767427143324528868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283942 (n + 1) - A185294 (A071944 (n + 4)).toNat

end

end A283943.P15767427143324528868

/-! ## A283943.P8613350724013608889

`A283942(n+1)-A374208(A024450(2*n+1))`
-/

namespace A283943.P8613350724013608889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283942 (n + 1) - A374208 (A024450 (2 * n + 1)).toNat

end

end A283943.P8613350724013608889

/-! ## A283943.P1558763904949459897

`A283942(n+1)-A185284(A122111(n+1))`
-/

namespace A283943.P1558763904949459897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283942 (n + 1) - A185284 (A122111 (n + 1)).toNat

end

end A283943.P1558763904949459897

/-! ## A283943.P17600841991786882610

`A283942(n+1)-A288512(A283920(n+1))`
-/

namespace A283943.P17600841991786882610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283942 (n + 1) - A288512 (A283920 (n + 1)).toNat

end

end A283943.P17600841991786882610

/-!
# A283944: Interspersion of the signature sequence of Pi (rectangular array by antidiagonals).

The programs for A283944, there is no canonical definition to state claims against.
-/

/-! ## A283944.P17386538316586351195

`A332104(A186748(n))+A082153(n+1)`
-/

namespace A283944.P17386538316586351195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332104 (A186748 n).toNat + A082153 (n + 1)

end

end A283944.P17386538316586351195

/-! ## A283944.P15009418922334929077

`A185284(A014973(n+1))+A082153(n+1)`
-/

namespace A283944.P15009418922334929077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A014973 (n + 1)).toNat + A082153 (n + 1)

end

end A283944.P15009418922334929077

/-! ## A283944.P6184032764930191035

`A290870(A014499(A123664(n+1)))+A082153(n+1)`
-/

namespace A283944.P6184032764930191035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (A014499 (A123664 (n + 1)).toNat).toNat + A082153 (n + 1)

end

end A283944.P6184032764930191035

/-! ## A283944.P12556434247269263481

`A082153(n+1)+A064459(A185284(n))`
-/

namespace A283944.P12556434247269263481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082153 (n + 1) + A064459 (A185284 n).toNat

end

end A283944.P12556434247269263481

/-! ## A283944.P274547698466758483

`A082153(n+1)+A063524(A031285(n))`
-/

namespace A283944.P274547698466758483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082153 (n + 1) + A063524 (A031285 n).toNat

end

end A283944.P274547698466758483

/-!
# A283945: Number of nX3 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283945, there is no canonical definition to state claims against.
-/

/-! ## A283945.P11214695027627549402

`A283950(∑[n+3]+1)`
-/

namespace A283945.P11214695027627549402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283945.P11214695027627549402

/-! ## A283945.P3701119446615795824

`record[A283950(A101881(n))]`
-/

namespace A283945.P3701119446615795824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283945.P3701119446615795824

/-! ## A283945.P1128891402661786304

`record[A185018(n)*A283950(n+1)]`
-/

namespace A283945.P1128891402661786304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n * A283950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283945.P1128891402661786304

/-! ## A283945.P2349538584757917350

`record[char[A141214(n)]*A283950(n+1)]`
-/

namespace A283945.P2349538584757917350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A283950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283945.P2349538584757917350

/-! ## A283945.P4712360818011663286

`record[gcd(A230730(n+1), A283950(n+1))]`
-/

namespace A283945.P4712360818011663286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A230730 (n + 1)) (A283950 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283945.P4712360818011663286

/-!
# A283946: Number of nX4 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283946, there is no canonical definition to state claims against.
-/

/-! ## A283946.P12599765714684121925

`A283950(A141214(n+1))`
-/

namespace A283946.P12599765714684121925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A141214 (n + 1)).toNat

end

end A283946.P12599765714684121925

/-! ## A283946.P16122178420116511358

`A283950(A027379(n+2))`
-/

namespace A283946.P16122178420116511358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A027379 (n + 2)).toNat

end

end A283946.P16122178420116511358

/-! ## A283946.P4118429028545089239

`A283950(A056000(n)+7)`
-/

namespace A283946.P4118429028545089239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A056000 n + 7).toNat

end

end A283946.P4118429028545089239

/-! ## A283946.P16400157940737567425

`A283950(eq[2, A054123(n)])`
-/

namespace A283946.P16400157940737567425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283946.P16400157940737567425

/-! ## A283946.P5394852348919444569

`A283950(A052905(n+1)+2)`
-/

namespace A283946.P5394852348919444569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A052905 (n + 1) + 2).toNat

end

end A283946.P5394852348919444569

/-!
# A283947: Number of nX5 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283947, there is no canonical definition to state claims against.
-/

/-! ## A283947.P13151264433917165603

`A283950(Δ[A264443(n)])`
-/

namespace A283947.P13151264433917165603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (f1 (n + 1) - f1 n).toNat

end

end A283947.P13151264433917165603

/-! ## A283947.P10195917678402679277

`A283950(A046691(n+3))`
-/

namespace A283947.P10195917678402679277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A046691 (n + 3)).toNat

end

end A283947.P10195917678402679277

/-! ## A283947.P14297052328516361185

`A283950(eq[4, A054123(n)])`
-/

namespace A283947.P14297052328516361185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283947.P14297052328516361185

/-! ## A283947.P2615701494541991968

`A283950(eq[4, A193592(n)])`
-/

namespace A283947.P2615701494541991968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283947.P2615701494541991968

/-! ## A283947.P3310957786197092668

`A283950(Δ[A023545(n+1)])`
-/

namespace A283947.P3310957786197092668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (f1 (n + 1) - f1 n).toNat

end

end A283947.P3310957786197092668

/-!
# A283948: Number of nX6 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283948, there is no canonical definition to state claims against.
-/

/-! ## A283948.P18321942460107922964

`A283950(eq[3, A219347(n)])`
-/

namespace A283948.P18321942460107922964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283948.P18321942460107922964

/-! ## A283948.P8496104833888953868

`A283950(eq[5, A193592(n)])`
-/

namespace A283948.P8496104833888953868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283948.P8496104833888953868

/-! ## A283948.P6870951590950609007

`A283950(eq[8, A185782(n+1)])`
-/

namespace A283948.P6870951590950609007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283948.P6870951590950609007

/-! ## A283948.P7063891516659388086

`A283950(eq[8, A243070(n+1)])`
-/

namespace A283948.P7063891516659388086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283948.P7063891516659388086

/-! ## A283948.P15135393425120585112

`A283950(Δ[Δ[A006504(n+1)]])`
-/

namespace A283948.P15135393425120585112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (f1 (n + 1) - f1 n).toNat

end

end A283948.P15135393425120585112

/-!
# A283949: Number of nX7 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283949, there is no canonical definition to state claims against.
-/

/-! ## A283949.P1201830725562732750

`A283950(eq[4, A219347(n)])`
-/

namespace A283949.P1201830725562732750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283949.P1201830725562732750

/-! ## A283949.P14989988499065306595

`A283950(eq[5, A332954(n)])`
-/

namespace A283949.P14989988499065306595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283949.P14989988499065306595

/-! ## A283949.P7643057742481978163

`A283950(eq[6, A193592(n)])`
-/

namespace A283949.P7643057742481978163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283949.P7643057742481978163

/-! ## A283949.P12997851685446768873

`A283950(A046691(n+5)-2)`
-/

namespace A283949.P12997851685446768873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A046691 (n + 5) - 2).toNat

end

end A283949.P12997851685446768873

/-! ## A283949.P14766421561591408609

`A283950(A000217(n+7)-6)`
-/

namespace A283949.P14766421561591408609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A000217 (n + 7) - 6).toNat

end

end A283949.P14766421561591408609

/-!
# A283950: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283950, there is no canonical definition to state claims against.
-/

/-! ## A283950.P14382437989522648131

`A085860(A280526(n)+A241568(n+1))`
-/

namespace A283950.P14382437989522648131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 (A280526 n + A241568 (n + 1)).toNat

end

end A283950.P14382437989522648131

/-! ## A283950.P10563130367466805937

`A019568(n+2)%A000045(A099594(n))`
-/

namespace A283950.P10563130367466805937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019568 (n + 2)) (A000045 (A099594 n).toNat)

end

end A283950.P10563130367466805937

/-! ## A283950.P3668981385961474833

`A085860(or(A184389(n+1), A280526(n)))`
-/

namespace A283950.P3668981385961474833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 (Int.lor (A184389 (n + 1)) (A280526 n)).toNat

end

end A283950.P3668981385961474833

/-!
# A283951: Number of 2Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283951, there is no canonical definition to state claims against.
-/

/-! ## A283951.P6558449420304497269

`A283950(∑[n+1]+2)`
-/

namespace A283951.P6558449420304497269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283951.P6558449420304497269

/-! ## A283951.P15128217549852313348

`2*ceil(A283950(A000217(n+1)+2)/2)`
-/

namespace A283951.P15128217549852313348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A283950 (A000217 (n + 1) + 2).toNat : ℚ) / 2⌉

end

end A283951.P15128217549852313348

/-! ## A283951.P17092831995277976652

`A283950(A000217(n+1)+2)+A080846(3*n+4)`
-/

namespace A283951.P17092831995277976652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A000217 (n + 1) + 2).toNat + A080846 (3 * n + 4)

end

end A283951.P17092831995277976652

/-!
# A283952: Number of 3Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283952, there is no canonical definition to state claims against.
-/

/-! ## A283952.P33410176026887677

`A283950(∑[n+2]+4)`
-/

namespace A283952.P33410176026887677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283952.P33410176026887677

/-! ## A283952.P11842247333703621686

`A283950(A167614(n+1))+A185284(n)`
-/

namespace A283952.P11842247333703621686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A167614 (n + 1)).toNat + A185284 n

end

end A283952.P11842247333703621686

/-! ## A283952.P3170859213435943692

`A057427(n)*A283950(A167614(n+1))`
-/

namespace A283952.P3170859213435943692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A283950 (A167614 (n + 1)).toNat

end

end A283952.P3170859213435943692

/-! ## A283952.P18119315540513590372

`A158388(n)*A283950(A167614(n+1))`
-/

namespace A283952.P18119315540513590372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A283950 (A167614 (n + 1)).toNat

end

end A283952.P18119315540513590372

/-! ## A283952.P1000178029567609202

`A178489(n)*A283950(A167614(n+1))`
-/

namespace A283952.P1000178029567609202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A283950 (A167614 (n + 1)).toNat

end

end A283952.P1000178029567609202

/-!
# A283953: Number of 4Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283953, there is no canonical definition to state claims against.
-/

/-! ## A283953.P15401974114098431924

`A283950(A141214(n)+7)`
-/

namespace A283953.P15401974114098431924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A141214 n + 7).toNat

end

end A283953.P15401974114098431924

/-! ## A283953.P10594063236801842669

`A283950(A052905(n)+9)`
-/

namespace A283953.P10594063236801842669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A052905 n + 9).toNat

end

end A283953.P10594063236801842669

/-! ## A283953.P7762625611449597114

`A283950(A055999(n)+10)`
-/

namespace A283953.P7762625611449597114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A055999 n + 10).toNat

end

end A283953.P7762625611449597114

/-! ## A283953.P9432211540208300243

`A283950(A167614(n+2)+1)`
-/

namespace A283953.P9432211540208300243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A167614 (n + 2) + 1).toNat

end

end A283953.P9432211540208300243

/-! ## A283953.P840780605090178542

`A283950(A166136(n+2)-2)`
-/

namespace A283953.P840780605090178542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A166136 (n + 2) - 2).toNat

end

end A283953.P840780605090178542

/-!
# A283954: Number of 5Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283954, there is no canonical definition to state claims against.
-/

/-! ## A283954.P1976787740738390884

`A283950(A056000(n)+15)`
-/

namespace A283954.P1976787740738390884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A056000 n + 15).toNat

end

end A283954.P1976787740738390884

/-! ## A283954.P7409607981132661472

`A283950(A166136(n+3)-1)`
-/

namespace A283954.P7409607981132661472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A166136 (n + 3) - 1).toNat

end

end A283954.P7409607981132661472

/-! ## A283954.P8614651053859913466

`A283950(A141214(n+1)+8)`
-/

namespace A283954.P8614651053859913466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A141214 (n + 1) + 8).toNat

end

end A283954.P8614651053859913466

/-! ## A283954.P14024342258857792351

`A283950(eq[6, A131818(n+1)])`
-/

namespace A283954.P14024342258857792351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283954.P14024342258857792351

/-! ## A283954.P13944969493423142099

`A283950(floor(atan(n+1))+A167499(n+3)-1)`
-/

namespace A283954.P13944969493423142099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (⌊Real.arctan (n + 1 : ℝ)⌋ + (A167499 (n + 3) - 1)).toNat

end

end A283954.P13944969493423142099

/-!
# A283955: Number of 6Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283955, there is no canonical definition to state claims against.
-/

/-! ## A283955.P4177993166838310887

`A283950(A166136(n+4))`
-/

namespace A283955.P4177993166838310887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A166136 (n + 4)).toNat

end

end A283955.P4177993166838310887

/-! ## A283955.P4830948077360584236

`A283950(A056115(n)+21)`
-/

namespace A283955.P4830948077360584236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A056115 n + 21).toNat

end

end A283955.P4830948077360584236

/-! ## A283955.P10156555389611277670

`A283950(A167499(n+4)+1)`
-/

namespace A283955.P10156555389611277670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A167499 (n + 4) + 1).toNat

end

end A283955.P10156555389611277670

/-! ## A283955.P5997645425712171798

`A283950(eq[6, A130270(n+1)])`
-/

namespace A283955.P5997645425712171798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283955.P5997645425712171798

/-! ## A283955.P11428555219776320736

`A283950(eq[7, A131818(n+1)])`
-/

namespace A283955.P11428555219776320736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283955.P11428555219776320736

/-!
# A283956: Number of 7Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283956, there is no canonical definition to state claims against.
-/

/-! ## A283956.P6947894902098160661

`A283950(A302537(n)+27)`
-/

namespace A283956.P6947894902098160661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A302537 n + 27).toNat

end

end A283956.P6947894902098160661

/-! ## A283956.P13572227612284733289

`A283950(A056119(n)+28)`
-/

namespace A283956.P13572227612284733289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A056119 n + 28).toNat

end

end A283956.P13572227612284733289

/-! ## A283956.P7604034867071052013

`A283950(eq[11, A066657(n)])`
-/

namespace A283956.P7604034867071052013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283956.P7604034867071052013

/-! ## A283956.P2383225012731366595

`A283950(A167614(n+5)+4)`
-/

namespace A283956.P2383225012731366595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A167614 (n + 5) + 4).toNat

end

end A283956.P2383225012731366595

/-! ## A283956.P3014842303880190527

`A283950(A000124(n+6)+6)`
-/

namespace A283956.P3014842303880190527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283950 (A000124 (n + 6) + 6).toNat

end

end A283956.P3014842303880190527

/-!
# A283957: Primes p such that 6p - 1 and 6p + 1 are twin primes and ((6p-1)^2 + (6p+1)^2) / 10 is prime.

The programs for A283957, there is no canonical definition to state claims against.
-/

/-! ## A283957.P14229582679483400749

`p?[A309538(n)-A080099(n)]`
-/

namespace A283957.P14229582679483400749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309538 n - A080099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283957.P14229582679483400749

/-!
# A283958: a(n) = (Sum_{j=1..h-1} a(n-j) + a(n-1)*a(n-h+1))/a(n-h) with a(1), ..., a(h)=1, where h = 4.

The programs for A283958, there is no canonical definition to state claims against.
-/

/-! ## A283958.P16044685254479638420

`A328428(6*a(n-2)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4, a(5)=10, a(6)=25`
-/

namespace A283958.P16044685254479638420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 4, 10, 25] fun n a =>
  A328428 (6 * a (n - 2) - a (n - 4)).toNat

end

end A283958.P16044685254479638420

/-! ## A283958.P12631224229066505615

`A065382(lcm(2, A048631(n)))`
-/

namespace A283958.P12631224229066505615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065382 (Int.lcm 2 (A048631 n))

end

end A283958.P12631224229066505615

/-! ## A283958.P546784827633748186

`A097230(∑[A098010(n+1)])`
-/

namespace A283958.P546784827633748186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097230 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283958.P546784827633748186

/-! ## A283958.P7368931948550938250

`A054531(∏[∏[A339913(n+1)]])`
-/

namespace A283958.P7368931948550938250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283958.P7368931948550938250

/-!
# A283959: a(n) = (Sum_{j=1..h-1} a(n-j) + a(n-1)*a(n-h+1))/a(n-h) with a(1), ..., a(h)=1, where h = 5.

The programs for A283959, there is no canonical definition to state claims against.
-/

/-! ## A283959.P14557720054441673902

`A157966(A204855(n))`
-/

namespace A283959.P14557720054441673902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A204855 n).toNat

end

end A283959.P14557720054441673902

/-! ## A283959.P12816496157853422330

`A046074(A382367(n))`
-/

namespace A283959.P12816496157853422330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A382367 n).toNat

end

end A283959.P12816496157853422330

/-! ## A283959.P15173910588755265866

`A000189(A109786(n)²)`
-/

namespace A283959.P15173910588755265866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A109786 n ^ 2).toNat

end

end A283959.P15173910588755265866

/-! ## A283959.P16639941683926203271

`A109814(A109786(n)²)`
-/

namespace A283959.P16639941683926203271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (A109786 n ^ 2).toNat

end

end A283959.P16639941683926203271

/-! ## A283959.P7379017130021387179

`A109786(A004881(n+1))`
-/

namespace A283959.P7379017130021387179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109786 (A004881 (n + 1)).toNat

end

end A283959.P7379017130021387179

/-!
# A283960: a(n) = (Sum_{j=1..h-1} a(n-j) + a(n-1)*a(n-h+1))/a(n-h) with a(1), ..., a(h)=1, where h = 6.

The programs for A283960, there is no canonical definition to state claims against.
-/

/-! ## A283960.P7958123809939365550

`A109538(lt[n*ratio[gcd(2, n)], 8])`
-/

namespace A283960.P7958123809939365550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109538 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n)

end

end A283960.P7958123809939365550

/-! ## A283960.P11166878939738741673

`A283330(A131353(n)+n)`
-/

namespace A283960.P11166878939738741673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283330 (A131353 n + (n : ℤ)).toNat

end

end A283960.P11166878939738741673

/-! ## A283960.P437019362620061409

`A283330(A323533(n)+n)`
-/

namespace A283960.P437019362620061409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283330 (A323533 n + (n : ℤ)).toNat

end

end A283960.P437019362620061409

/-! ## A283960.P5393833263051301229

`A283330(n^A326441(n))`
-/

namespace A283960.P5393833263051301229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283330 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A326441 n : ℤ))).toNat

end

end A283960.P5393833263051301229

/-! ## A283960.P4159745843643517115

`A283330(or(n, A131353(n)))`
-/

namespace A283960.P4159745843643517115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283330 (Int.lor (n : ℤ) (A131353 n)).toNat

end

end A283960.P4159745843643517115

/-!
# A283961: Rank array, R, of (golden ratio)^2, by antidiagonals.

The programs for A283961, there is no canonical definition to state claims against.
-/

/-! ## A283961.P2419191700342506079

`A283938(A038722(n+1))`
-/

namespace A283961.P2419191700342506079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283938 (A038722 (n + 1)).toNat

end

end A283961.P2419191700342506079

/-! ## A283961.P3160888604909268899

`A283938(A061579(n)+1)`
-/

namespace A283961.P3160888604909268899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283938 (A061579 n + 1).toNat

end

end A283961.P3160888604909268899

/-! ## A283961.P6310909767080417388

`A283938(A114327(n)+1+n)`
-/

namespace A283961.P6310909767080417388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283938 (A114327 n + 1 + (n : ℤ)).toNat

end

end A283961.P6310909767080417388

/-! ## A283961.P16103387716012596169

`A283938(A093995(n+1)-n)`
-/

namespace A283961.P16103387716012596169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283938 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A283961.P16103387716012596169

/-! ## A283961.P3792939076217016792

`A283938(A002024(n+1)²-n)`
-/

namespace A283961.P3792939076217016792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283938 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A283961.P3792939076217016792

/-! ## A283961.P14775920027110664109

`A283938(A053187(2*(n+1))-n)`
-/

namespace A283961.P14775920027110664109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283938 (A053187 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A283961.P14775920027110664109

/-! ## A283961.P955464557595897983

`A283938(A127739(n+1)-A002262(n))`
-/

namespace A283961.P955464557595897983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283938 (A127739 (n + 1) - A002262 n).toNat

end

end A283961.P955464557595897983

/-!
# A283962: Interspersion of the signature sequence of sqrt(1/2).

The programs for A283962, there is no canonical definition to state claims against.
-/

/-! ## A283962.P2969139508555665526

`A283939(A038722(n+1))`
-/

namespace A283962.P2969139508555665526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283939 (A038722 (n + 1)).toNat

end

end A283962.P2969139508555665526

/-! ## A283962.P7867574344934949439

`A283939(A061579(n)+1)`
-/

namespace A283962.P7867574344934949439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283939 (A061579 n + 1).toNat

end

end A283962.P7867574344934949439

/-! ## A283962.P15908218134676277766

`A283939(A114327(n)+1+n)`
-/

namespace A283962.P15908218134676277766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283939 (A114327 n + 1 + (n : ℤ)).toNat

end

end A283962.P15908218134676277766

/-! ## A283962.P2281128213947098546

`A283939(A093995(n+1)-n)`
-/

namespace A283962.P2281128213947098546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283939 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A283962.P2281128213947098546

/-! ## A283962.P9765330266002175654

`A283939(A057944(n)+A004736(n+1))`
-/

namespace A283962.P9765330266002175654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283939 (A057944 n + A004736 (n + 1)).toNat

end

end A283962.P9765330266002175654

/-!
# A283963: Fixed point of the morphism 0 -> 1, 1 -> 1010.

The programs for A283963, the canonical program `A283963.P10359583538470732036` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283963 has offset 1).

The definition of A283963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283963.P10359583538470732036

`char[A286389(n)+n]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A283963

/-- `char[A286389(n)+n]` -/
def P10359583538470732036.Spec : Prop :=
  ∀ n, (P10359583538470732036.a n : ℤ) = A283963 (n + 1)

theorem P10359583538470732036.correct : P10359583538470732036.Spec := by
  intro n
  simp only [A283963, Nat.add_sub_cancel]

end A283963

/-! ## A283963.P1302065338553259534

`char[A283965(n+1)-1]`
-/

namespace A283963.P1302065338553259534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283965 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A283963.P1302065338553259534

namespace A283963

/-- `char[A283965(n+1)-1]` -/
def P1302065338553259534.Spec : Prop :=
  ∀ n, (P1302065338553259534.a n : ℤ) = A283963 (n + 1)

end A283963

/-! ## A283963.P18148526597162337657

`1-char[A026367(n+1)+n]`
-/

namespace A283963.P18148526597162337657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A283963.P18148526597162337657

namespace A283963

/-- `1-char[A026367(n+1)+n]` -/
def P18148526597162337657.Spec : Prop :=
  ∀ n, P18148526597162337657.a n = A283963 (n + 1)

end A283963

/-! ## A283963.P2710254537468266477

`log2(Δ[A284773(n+1)])`
-/

namespace A283963.P2710254537468266477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A283963.P2710254537468266477

namespace A283963

/-- `log2(Δ[A284773(n+1)])` -/
def P2710254537468266477.Spec : Prop :=
  ∀ n, P2710254537468266477.a n = (A283963 (n + 1) : ℝ)

end A283963

/-! ## A283963.P15967939285880926248

`A001221(Δ[A284773(n+1)])`
-/

namespace A283963.P15967939285880926248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A283963.P15967939285880926248

namespace A283963

/-- `A001221(Δ[A284773(n+1)])` -/
def P15967939285880926248.Spec : Prop :=
  ∀ n, P15967939285880926248.a n = A283963 (n + 1)

end A283963

/-! ## A283963.P18212125469111795777

`A001222(Δ[A284773(n+1)])`
-/

namespace A283963.P18212125469111795777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A283963.P18212125469111795777

namespace A283963

/-- `A001222(Δ[A284773(n+1)])` -/
def P18212125469111795777.Spec : Prop :=
  ∀ n, P18212125469111795777.a n = A283963 (n + 1)

end A283963

/-! ## A283963.P13452166030448739418

`A002262(Δ[A284773(n+1)])`
-/

namespace A283963.P13452166030448739418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (n + 1) - f1 n).toNat

end

end A283963.P13452166030448739418

namespace A283963

/-- `A002262(Δ[A284773(n+1)])` -/
def P13452166030448739418.Spec : Prop :=
  ∀ n, P13452166030448739418.a n = A283963 (n + 1)

end A283963

/-! ## A283963.P15057384578482477453

`A007814(Δ[A284773(n+1)])`
-/

namespace A283963.P15057384578482477453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (n + 1) - f1 n).toNat

end

end A283963.P15057384578482477453

namespace A283963

/-- `A007814(Δ[A284773(n+1)])` -/
def P15057384578482477453.Spec : Prop :=
  ∀ n, P15057384578482477453.a n = A283963 (n + 1)

end A283963

/-! ## A283963.P676021301319287225

`A284772(Δ[A284773(n+1)])`
-/

namespace A283963.P676021301319287225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284772 (f1 (n + 1) - f1 n).toNat

end

end A283963.P676021301319287225

namespace A283963

/-- `A284772(Δ[A284773(n+1)])` -/
def P676021301319287225.Spec : Prop :=
  ∀ n, P676021301319287225.a n = A283963 (n + 1)

end A283963

/-! ## A283963.P9190327756579126088

`A285431(A284773(n+1))`
-/

namespace A283963.P9190327756579126088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285431 (A284773 (n + 1)).toNat

end

end A283963.P9190327756579126088

namespace A283963

/-- `A285431(A284773(n+1))` -/
def P9190327756579126088.Spec : Prop :=
  ∀ n, P9190327756579126088.a n = A283963 (n + 1)

end A283963

/-! ## A283963.P2736250217876175737

`A284772(A284773(n+2)-1)`
-/

namespace A283963.P2736250217876175737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284772 (A284773 (n + 2) - 1).toNat

end

end A283963.P2736250217876175737

namespace A283963

/-- `A284772(A284773(n+2)-1)` -/
def P2736250217876175737.Spec : Prop :=
  ∀ n, P2736250217876175737.a n = A283963 (n + 1)

end A283963

/-! ## A283963.P3456498878116918487

`Δ[A008620(A284658(n+1))]`
-/

namespace A283963.P3456498878116918487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A284658 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283963.P3456498878116918487

namespace A283963

/-- `Δ[A008620(A284658(n+1))]` -/
def P3456498878116918487.Spec : Prop :=
  ∀ n, P3456498878116918487.a n = A283963 (n + 1)

end A283963

/-! ## A283963.P18131292363562671925

`A284505(Δ[n²])`
-/

namespace A283963.P18131292363562671925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284505 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A283963.P18131292363562671925

namespace A283963

/-- `A284505(Δ[n²])` -/
def P18131292363562671925.Spec : Prop :=
  ∀ n, P18131292363562671925.a n = A283963 (n + 1)

end A283963

/-! ## A283963.P18392626192431180097

`A284852(2*(n+1))%2`
-/

namespace A283963.P18392626192431180097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284852 (2 * (n + 1))) 2

end

end A283963.P18392626192431180097

namespace A283963

/-- `A284852(2*(n+1))%2` -/
def P18392626192431180097.Spec : Prop :=
  ∀ n, P18392626192431180097.a n = A283963 (n + 1)

end A283963

/-! ## A283963.P8729555668912908336

`and(2*n+1, A284505(2*(n+1)))`
-/

namespace A283963.P8729555668912908336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A284505 (2 * (n + 1)))

end

end A283963.P8729555668912908336

namespace A283963

/-- `and(2*n+1, A284505(2*(n+1)))` -/
def P8729555668912908336.Spec : Prop :=
  ∀ n, P8729555668912908336.a n = A283963 (n + 1)

end A283963

/-! ## A283963.P8193082845709809631

`log2(A284852(2*(n+1))-A284852(2*n+1))`
-/

namespace A283963.P8193082845709809631
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A284852 (2 * (n + 1)) - A284852 (2 * n + 1) : ℝ)

end

end A283963.P8193082845709809631

namespace A283963

/-- `log2(A284852(2*(n+1))-A284852(2*n+1))` -/
def P8193082845709809631.Spec : Prop :=
  ∀ n, P8193082845709809631.a n = (A283963 (n + 1) : ℝ)

end A283963

/-! ## A283963.P12214596330740084299

`A004526(A284852(2*(n+1))-A284852(2*n+1))`
-/

namespace A283963.P12214596330740084299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A284852 (2 * (n + 1)) - A284852 (2 * n + 1)).toNat

end

end A283963.P12214596330740084299

namespace A283963

/-- `A004526(A284852(2*(n+1))-A284852(2*n+1))` -/
def P12214596330740084299.Spec : Prop :=
  ∀ n, P12214596330740084299.a n = A283963 (n + 1)

end A283963

/-! ## A283963.P15183137297991755286

`A057979(A284852(2*(n+1))-A284852(2*n+1))`
-/

namespace A283963.P15183137297991755286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A284852 (2 * (n + 1)) - A284852 (2 * n + 1)).toNat

end

end A283963.P15183137297991755286

namespace A283963

/-- `A057979(A284852(2*(n+1))-A284852(2*n+1))` -/
def P15183137297991755286.Spec : Prop :=
  ∀ n, P15183137297991755286.a n = A283963 (n + 1)

end A283963

/-! ## A283963.P18066708467531547516

`log2(log2(Δ[A284852(2*n+1)]))`
-/

namespace A283963.P18066708467531547516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284852 (2 * n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.logb 2 (f1 (n + 1) - f1 n : ℝ))

end

end A283963.P18066708467531547516

namespace A283963

/-- `log2(log2(Δ[A284852(2*n+1)]))` -/
def P18066708467531547516.Spec : Prop :=
  ∀ n, P18066708467531547516.a n = (A283963 (n + 1) : ℝ)

end A283963

/-!
# A283964: Positions of 0 in A283963; complement of A283965.

The programs for A283964, the canonical program `A283964.P17668733400232915345` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283964 has offset 1).

The definition of A283964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283964.P17668733400232915345

`A026367(n+1)+1+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A283964

/-- `A026367(n+1)+1+n` -/
def P17668733400232915345.Spec : Prop :=
  ∀ n, P17668733400232915345.a n = A283964 (n + 1)

theorem P17668733400232915345.correct : P17668733400232915345.Spec := by
  intro n
  simp only [A283964, Nat.add_sub_cancel]

end A283964

/-! ## A283964.P2621274619749533467

`∑[char[A284853(n+1)]+2]`
-/

namespace A283964.P2621274619749533467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284853 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283964.P2621274619749533467

namespace A283964

/-- `∑[char[A284853(n+1)]+2]` -/
def P2621274619749533467.Spec : Prop :=
  ∀ n, (P2621274619749533467.a n : ℤ) = A283964 (n + 1)

end A283964

/-! ## A283964.P11109849666107466093

`ceil((A026368(n+1)+n)/2)`
-/

namespace A283964.P11109849666107466093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026368 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A283964.P11109849666107466093

namespace A283964

/-- `ceil((A026368(n+1)+n)/2)` -/
def P11109849666107466093.Spec : Prop :=
  ∀ n, P11109849666107466093.a n = A283964 (n + 1)

end A283964

/-! ## A283964.P955655744431554250

`A000027(n+1)+A284853(n+1)/2`
-/

namespace A283964.P955655744431554250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) + (A284853 (n + 1) : ℚ) / 2

end

end A283964.P955655744431554250

namespace A283964

/-- `A000027(n+1)+A284853(n+1)/2` -/
def P955655744431554250.Spec : Prop :=
  ∀ n, P955655744431554250.a n = (A283964 (n + 1) : ℚ)

end A283964

/-! ## A283964.P10875571403842801173

`(A026368(n+1)-A001478(n+1))/2`
-/

namespace A283964.P10875571403842801173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026368 (n + 1) - A001478 (n + 1) : ℚ) / 2

end

end A283964.P10875571403842801173

namespace A283964

/-- `(A026368(n+1)-A001478(n+1))/2` -/
def P10875571403842801173.Spec : Prop :=
  ∀ n, P10875571403842801173.a n = (A283964 (n + 1) : ℚ)

end A283964

/-! ## A283964.P1210750396338185261

`A284853(n+1)/2-A001478(n+1)`
-/

namespace A283964.P1210750396338185261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284853 (n + 1) : ℚ) / 2 - (A001478 (n + 1) : ℚ)

end

end A283964.P1210750396338185261

namespace A283964

/-- `A284853(n+1)/2-A001478(n+1)` -/
def P1210750396338185261.Spec : Prop :=
  ∀ n, P1210750396338185261.a n = (A283964 (n + 1) : ℚ)

end A283964

/-! ## A283964.P16298491914292844010

`A026368(n+1)-A284853(n+1)/2`
-/

namespace A283964.P16298491914292844010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026368 (n + 1) : ℚ) - (A284853 (n + 1) : ℚ) / 2

end

end A283964.P16298491914292844010

namespace A283964

/-- `A026368(n+1)-A284853(n+1)/2` -/
def P16298491914292844010.Spec : Prop :=
  ∀ n, P16298491914292844010.a n = (A283964 (n + 1) : ℚ)

end A283964

/-! ## A283964.P10779984195397869808

`∑[A284851(n+1)+2]-A284851(n+1)`
-/

namespace A283964.P10779984195397869808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A284851 (n + 1)

end

end A283964.P10779984195397869808

namespace A283964

/-- `∑[A284851(n+1)+2]-A284851(n+1)` -/
def P10779984195397869808.Spec : Prop :=
  ∀ n, P10779984195397869808.a n = A283964 (n + 1)

end A283964

/-! ## A283964.P14250359370247766747

`A284853(n+1)-A286389(A004526(n))`
-/

namespace A283964.P14250359370247766747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284853 (n + 1) - A286389 (A004526 n).toNat

end

end A283964.P14250359370247766747

namespace A283964

/-- `A284853(n+1)-A286389(A004526(n))` -/
def P14250359370247766747.Spec : Prop :=
  ∀ n, P14250359370247766747.a n = A283964 (n + 1)

end A283964

/-! ## A283964.P9537925956603414726

`A026359(n+2)+n`
-/

namespace A283964.P9537925956603414726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026359 (n + 2) + (n : ℤ)

end

end A283964.P9537925956603414726

namespace A283964

/-- `A026359(n+2)+n` -/
def P9537925956603414726.Spec : Prop :=
  ∀ n, P9537925956603414726.a n = A283964 (n + 1)

end A283964

/-! ## A283964.P12669967957870123766

`(A026360(n+2)+n)/2`
-/

namespace A283964.P12669967957870123766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026360 (n + 2) + (n : ℤ) : ℚ) / 2

end

end A283964.P12669967957870123766

namespace A283964

/-- `(A026360(n+2)+n)/2` -/
def P12669967957870123766.Spec : Prop :=
  ∀ n, P12669967957870123766.a n = (A283964 (n + 1) : ℚ)

end A283964

/-! ## A283964.P13669635093587758117

`record[A026366(n+1)+1+n]`
-/

namespace A283964.P13669635093587758117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026366 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283964.P13669635093587758117

namespace A283964

/-- `record[A026366(n+1)+1+n]` -/
def P13669635093587758117.Spec : Prop :=
  ∀ n, P13669635093587758117.a n = A283964 (n + 1)

end A283964

/-! ## A283964.P15529233862185961055

`A283965(A026367(n+1))+1`
-/

namespace A283964.P15529233862185961055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283965 (A026367 (n + 1)).toNat + 1

end

end A283964.P15529233862185961055

namespace A283964

/-- `A283965(A026367(n+1))+1` -/
def P15529233862185961055.Spec : Prop :=
  ∀ n, P15529233862185961055.a n = A283964 (n + 1)

end A283964

/-! ## A283964.P2547601877606688576

`A026368(n+1)-record[(n+1)*A285431(n+1)]`
-/

namespace A283964.P2547601877606688576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026368 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283964.P2547601877606688576

namespace A283964

/-- `A026368(n+1)-record[(n+1)*A285431(n+1)]` -/
def P2547601877606688576.Spec : Prop :=
  ∀ n, P2547601877606688576.a n = A283964 (n + 1)

end A283964

/-! ## A283964.P12929288518575619259

`A284506(2*(n+1))/2`
-/

namespace A283964.P12929288518575619259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284506 (2 * (n + 1)) : ℚ) / 2

end

end A283964.P12929288518575619259

namespace A283964

/-- `A284506(2*(n+1))/2` -/
def P12929288518575619259.Spec : Prop :=
  ∀ n, P12929288518575619259.a n = (A283964 (n + 1) : ℚ)

end A283964

/-! ## A283964.P14443964140054300420

`A115384(A026368(n+1)-n)+n`
-/

namespace A283964.P14443964140054300420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A026368 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A283964.P14443964140054300420

namespace A283964

/-- `A115384(A026368(n+1)-n)+n` -/
def P14443964140054300420.Spec : Prop :=
  ∀ n, P14443964140054300420.a n = A283964 (n + 1)

end A283964

/-! ## A283964.P17517833419282373298

`A004526(A284853(n+1)+2)+n`
-/

namespace A283964.P17517833419282373298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A284853 (n + 1) + 2).toNat + (n : ℤ)

end

end A283964.P17517833419282373298

namespace A283964

/-- `A004526(A284853(n+1)+2)+n` -/
def P17517833419282373298.Spec : Prop :=
  ∀ n, P17517833419282373298.a n = A283964 (n + 1)

end A283964

/-! ## A283964.P1517929591840892406

`A014245(A026368(n+1))`
-/

namespace A283964.P1517929591840892406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014245 (A026368 (n + 1)).toNat

end

end A283964.P1517929591840892406

namespace A283964

/-- `A014245(A026368(n+1))` -/
def P1517929591840892406.Spec : Prop :=
  ∀ n, P1517929591840892406.a n = A283964 (n + 1)

end A283964

/-!
# A283965: Positions of 1 in A283963; complement of A283964.

The programs for A283965, the canonical program `A283965.P9752618056722054252` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283965 has offset 1).

The definition of A283965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283965.P9752618056722054252

`A286389(n)+1+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A283965

/-- `A286389(n)+1+n` -/
def P9752618056722054252.Spec : Prop :=
  ∀ n, P9752618056722054252.a n = A283965 (n + 1)

theorem P9752618056722054252.correct : P9752618056722054252.Spec := by
  intro n
  simp only [A283965, Nat.add_sub_cancel]

end A283965

/-! ## A283965.P15303741215349527668

`A284774(n+1)-(n+1)`
-/

namespace A283965.P15303741215349527668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284774 (n + 1) - (n + 1 : ℤ)

end

end A283965.P15303741215349527668

namespace A283965

/-- `A284774(n+1)-(n+1)` -/
def P15303741215349527668.Spec : Prop :=
  ∀ n, P15303741215349527668.a n = A283965 (n + 1)

end A283965

/-! ## A283965.P4986829794856663356

`∑[char[A026367(n+1)]+1]`
-/

namespace A283965.P4986829794856663356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283965.P4986829794856663356

namespace A283965

/-- `∑[char[A026367(n+1)]+1]` -/
def P4986829794856663356.Spec : Prop :=
  ∀ n, (P4986829794856663356.a n : ℤ) = A283965 (n + 1)

end A283965

/-! ## A283965.P5686575152949592450

`comp[comp[A026368(n+1)]+n]`
-/

namespace A283965.P5686575152949592450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026368 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A283965.P5686575152949592450

namespace A283965

/-- `comp[comp[A026368(n+1)]+n]` -/
def P5686575152949592450.Spec : Prop :=
  ∀ n, (P5686575152949592450.a n : ℤ) = A283965 (n + 1)

end A283965

/-! ## A283965.P6966259848211764886

`a(n-1)+A285431(n)+1` with `a(0)=1`
-/

namespace A283965.P6966259848211764886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A285431 n + 1)

end

end A283965.P6966259848211764886

namespace A283965

/-- `a(n-1)+A285431(n)+1` -/
def P6966259848211764886.Spec : Prop :=
  ∀ n, P6966259848211764886.a n = A283965 (n + 1)

end A283965

/-! ## A283965.P12768999165621354615

`∑[A285431(n+1)+1]-A285431(n+1)`
-/

namespace A283965.P12768999165621354615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285431 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A285431 (n + 1)

end

end A283965.P12768999165621354615

namespace A283965

/-- `∑[A285431(n+1)+1]-A285431(n+1)` -/
def P12768999165621354615.Spec : Prop :=
  ∀ n, P12768999165621354615.a n = A283965 (n + 1)

end A283965

/-! ## A283965.P6422334934403510639

`filter[n+1, A283963(#)]`
-/

namespace A283965.P6422334934403510639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283963 (f1 j) = 1) n)

end

end A283965.P6422334934403510639

namespace A283965

/-- `filter[n+1, A283963(#)]` -/
def P6422334934403510639.Spec : Prop :=
  ∀ n, (P6422334934403510639.a n : ℤ) = A283965 (n + 1)

end A283965

/-! ## A283965.P7839081884052528770

`record[(n+1)*A283963(n+1)]`
-/

namespace A283965.P7839081884052528770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A283963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283965.P7839081884052528770

namespace A283965

/-- `record[(n+1)*A283963(n+1)]` -/
def P7839081884052528770.Spec : Prop :=
  ∀ n, P7839081884052528770.a n = A283965 (n + 1)

end A283965

/-! ## A283965.P2009348437212237496

`A026367(Δ[n²])-n`
-/

namespace A283965.P2009348437212237496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A283965.P2009348437212237496

namespace A283965

/-- `A026367(Δ[n²])-n` -/
def P2009348437212237496.Spec : Prop :=
  ∀ n, P2009348437212237496.a n = A283965 (n + 1)

end A283965

/-! ## A283965.P10749408066126503718

`A284507(2*(n+1))/2`
-/

namespace A283965.P10749408066126503718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284507 (2 * (n + 1)) : ℚ) / 2

end

end A283965.P10749408066126503718

namespace A283965

/-- `A284507(2*(n+1))/2` -/
def P10749408066126503718.Spec : Prop :=
  ∀ n, P10749408066126503718.a n = (A283965 (n + 1) : ℚ)

end A283965

/-! ## A283965.P9143618293692278081

`A026359(2*(n+1))-(n+1)`
-/

namespace A283965.P9143618293692278081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026359 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A283965.P9143618293692278081

namespace A283965

/-- `A026359(2*(n+1))-(n+1)` -/
def P9143618293692278081.Spec : Prop :=
  ∀ n, P9143618293692278081.a n = A283965 (n + 1)

end A283965

/-! ## A283965.P278947772978428661

`A284853(2*n+1)/2-n`
-/

namespace A283965.P278947772978428661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284853 (2 * n + 1) : ℚ) / 2 - (n : ℚ)

end

end A283965.P278947772978428661

namespace A283965

/-- `A284853(2*n+1)/2-n` -/
def P278947772978428661.Spec : Prop :=
  ∀ n, P278947772978428661.a n = (A283965 (n + 1) : ℚ)

end A283965

/-! ## A283965.P12545364753762432759

`(A026368(2*(n+1))-4*(n+1))/2`
-/

namespace A283965.P12545364753762432759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026368 (2 * (n + 1)) - (4 * (n + 1) : ℤ) : ℚ) / 2

end

end A283965.P12545364753762432759

namespace A283965

/-- `(A026368(2*(n+1))-4*(n+1))/2` -/
def P12545364753762432759.Spec : Prop :=
  ∀ n, P12545364753762432759.a n = (A283965 (n + 1) : ℚ)

end A283965

/-! ## A283965.P16086267376450127215

`A023443(A026359(2*(n+1))-n)`
-/

namespace A283965.P16086267376450127215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A026359 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A283965.P16086267376450127215

namespace A283965

/-- `A023443(A026359(2*(n+1))-n)` -/
def P16086267376450127215.Spec : Prop :=
  ∀ n, P16086267376450127215.a n = A283965 (n + 1)

end A283965

/-! ## A283965.P3028616151229690798

`A001478(2*(n+1))+A026368(2*(n+1))/2`
-/

namespace A283965.P3028616151229690798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001478 (2 * (n + 1)) : ℚ) + (A026368 (2 * (n + 1)) : ℚ) / 2

end

end A283965.P3028616151229690798

namespace A283965

/-- `A001478(2*(n+1))+A026368(2*(n+1))/2` -/
def P3028616151229690798.Spec : Prop :=
  ∀ n, P3028616151229690798.a n = (A283965 (n + 1) : ℚ)

end A283965

/-! ## A283965.P6667079086341227937

`(A284853(2*(n+1))+A001478(2*(n+1)))/2`
-/

namespace A283965.P6667079086341227937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284853 (2 * (n + 1)) + A001478 (2 * (n + 1)) : ℚ) / 2

end

end A283965.P6667079086341227937

namespace A283965

/-- `(A284853(2*(n+1))+A001478(2*(n+1)))/2` -/
def P6667079086341227937.Spec : Prop :=
  ∀ n, P6667079086341227937.a n = (A283965 (n + 1) : ℚ)

end A283965

/-! ## A283965.P2289528292923805447

`A026368(2*n+1)-(A283964(2*n+1)+n)`
-/

namespace A283965.P2289528292923805447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026368 (2 * n + 1) - (A283964 (2 * n + 1) + (n : ℤ))

end

end A283965.P2289528292923805447

namespace A283965

/-- `A026368(2*n+1)-(A283964(2*n+1)+n)` -/
def P2289528292923805447.Spec : Prop :=
  ∀ n, P2289528292923805447.a n = A283965 (n + 1)

end A283965

/-! ## A283965.P6006591666764813768

`A115384(A284507(2*n+1))`
-/

namespace A283965.P6006591666764813768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A284507 (2 * n + 1)).toNat

end

end A283965.P6006591666764813768

namespace A283965

/-- `A115384(A284507(2*n+1))` -/
def P6006591666764813768.Spec : Prop :=
  ∀ n, P6006591666764813768.a n = A283965 (n + 1)

end A283965

/-!
# A283966: Fixed point of the morphism 0 -> 1, 1 -> 10101.

The programs for A283966, there is no canonical definition to state claims against.
-/

/-! ## A283966.P17192186799282432389

`char[A284015(n+1)-1]`
-/

namespace A283966.P17192186799282432389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284015 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A283966.P17192186799282432389

/-! ## A283966.P11055440059562000194

`char[∑[A323116(n+1)]]+floor(1/(n+1))`
-/

namespace A283966.P11055440059562000194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323116 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊1 / (n + 1 : ℚ)⌋

end

end A283966.P11055440059562000194

/-! ## A283966.P679886166986997546

`A266659((A014076(n+1)-comp[A055052(n+1)])²)`
-/

namespace A283966.P679886166986997546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266659 ((A014076 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)) ^ 2).toNat

end

end A283966.P679886166986997546

/-! ## A283966.P3387297921880707913

`A000035((A014076(n+1)-comp[A055052(n+1)])²)`
-/

namespace A283966.P3387297921880707913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((A014076 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)) ^ 2).toNat

end

end A283966.P3387297921880707913

/-!
# A283967: Positions of 0 in A283966; complement of A284015.

The programs for A283967, there is no canonical definition to state claims against.
-/

/-! ## A283967.P5566664390499000659

`A284015(ceil((n+1)/2))+2*n+1`
-/

namespace A283967.P5566664390499000659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284015 ⌈(n + 1 : ℚ) / 2⌉.toNat + (2 * n + 1 : ℤ)

end

end A283967.P5566664390499000659

/-! ## A283967.P3100447208164208299

`record[Δ[(A284015(n+1)/2)²]]`
-/

namespace A283967.P3100447208164208299
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A284015 (n + 1) : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283967.P3100447208164208299

/-! ## A283967.P6207908214525014224

`eq[2, A323116(n+1)]+2+n`
-/

namespace A283967.P6207908214525014224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 + n

end

end A283967.P6207908214525014224

/-! ## A283967.P9974762183727052044

`record[Δ[A002620(A284015(n+1))]]`
-/

namespace A283967.P9974762183727052044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A284015 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283967.P9974762183727052044

/-!
# A283968: a(n) = a(n-1) + 1 + floor(n*(3 + sqrt(5))/2), a(0) = 1.

The programs for A283968, the canonical program `A283968.P5197437824306790223` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283968 has offset 0).

The definition of A283968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283968.P13477306849348943932

`∑[floor(n/ϕ²)+1]`
-/

namespace A283968.P13477306849348943932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283968.P13477306849348943932

namespace A283968

/-- `∑[floor(n/ϕ²)+1]` -/
def P13477306849348943932.Spec : Prop :=
  ∀ n, P13477306849348943932.a n = A283968 n

end A283968

/-! ## A283968.P10378022948244337376

`∑[floor(n/ϕ²)]-xor(n, -1)`
-/

namespace A283968.P10378022948244337376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A283968.P10378022948244337376

namespace A283968

/-- `∑[floor(n/ϕ²)]-xor(n, -1)` -/
def P10378022948244337376.Spec : Prop :=
  ∀ n, P10378022948244337376.a n = A283968 n

end A283968

/-! ## A283968.P7657847982675679872

`ceil(a(n-1)+n/ϕ²)` with `a(0)=1`
-/

namespace A283968.P7657847982675679872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.goldenRatio ^ 2⌉

end

end A283968.P7657847982675679872

namespace A283968

/-- `ceil(a(n-1)+n/ϕ²)` -/
def P7657847982675679872.Spec : Prop :=
  ∀ n, P7657847982675679872.a n = A283968 n

end A283968

/-! ## A283968.P642926627158026928

`a(n-1)-floor(n*(ϕ-2))` with `a(0)=1`
-/

namespace A283968.P642926627158026928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(n : ℝ) * (Real.goldenRatio - 2)⌋

end

end A283968.P642926627158026928

namespace A283968

/-- `a(n-1)-floor(n*(ϕ-2))` -/
def P642926627158026928.Spec : Prop :=
  ∀ n, P642926627158026928.a n = A283968 n

end A283968

/-! ## A283968.P10264457946579751447

`a(n-1)-floor(n/ϕ)+n` with `a(0)=1`
-/

namespace A283968.P10264457946579751447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(n : ℝ) / Real.goldenRatio⌋ + (n : ℤ)

end

end A283968.P10264457946579751447

namespace A283968

/-- `a(n-1)-floor(n/ϕ)+n` -/
def P10264457946579751447.Spec : Prop :=
  ∀ n, P10264457946579751447.a n = A283968 n

end A283968

/-! ## A283968.P4754326385901877547

`n-floor(n/ϕ-a(n-1))` with `a(0)=1`
-/

namespace A283968.P4754326385901877547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ⌊(n : ℝ) / Real.goldenRatio - (a (n - 1) : ℝ)⌋

end

end A283968.P4754326385901877547

namespace A283968

/-- `n-floor(n/ϕ-a(n-1))` -/
def P4754326385901877547.Spec : Prop :=
  ∀ n, P4754326385901877547.a n = A283968 n

end A283968

/-! ## A283968.P4967472041568139759

`n+1-(ceil(n/ϕ)-a(n-1))` with `a(0)=1`
-/

namespace A283968.P4967472041568139759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - (⌈(n : ℝ) / Real.goldenRatio⌉ - a (n - 1))

end

end A283968.P4967472041568139759

namespace A283968

/-- `n+1-(ceil(n/ϕ)-a(n-1))` -/
def P4967472041568139759.Spec : Prop :=
  ∀ n, P4967472041568139759.a n = A283968 n

end A283968

/-! ## A283968.P5197437824306790223

`∑[n+1]-∑[n+1-a(a(n-1))]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A283968

/-- `∑[n+1]-∑[n+1-a(a(n-1))]` -/
def P5197437824306790223.Spec : Prop :=
  ∀ n, P5197437824306790223.a n = A283968 n

theorem P5197437824306790223.correct : P5197437824306790223.Spec := by
  intro n
  simp only [A283968]

end A283968

/-! ## A283968.P1484483622891234414

`∑[A189663(n+1)]+1`
-/

namespace A283968.P1484483622891234414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A283968.P1484483622891234414

namespace A283968

/-- `∑[A189663(n+1)]+1` -/
def P1484483622891234414.Spec : Prop :=
  ∀ n, P1484483622891234414.a n = A283968 n

end A283968

/-! ## A283968.P4618921525019102280

`∑[n-A060143(n)]+1`
-/

namespace A283968.P4618921525019102280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A060143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A283968.P4618921525019102280

namespace A283968

/-- `∑[n-A060143(n)]+1` -/
def P4618921525019102280.Spec : Prop :=
  ∀ n, P4618921525019102280.a n = A283968 n

end A283968

/-! ## A283968.P17369519290448204669

`∑[A195121(n)-n]+1`
-/

namespace A283968.P17369519290448204669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A283968.P17369519290448204669

namespace A283968

/-- `∑[A195121(n)-n]+1` -/
def P17369519290448204669.Spec : Prop :=
  ∀ n, P17369519290448204669.a n = A283968 n

end A283968

/-! ## A283968.P5362037259227682714

`∑[∑[A189661(n+1)]]+1`
-/

namespace A283968.P5362037259227682714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A283968.P5362037259227682714

namespace A283968

/-- `∑[∑[A189661(n+1)]]+1` -/
def P5362037259227682714.Spec : Prop :=
  ∀ n, P5362037259227682714.a n = A283968 n

end A283968

/-! ## A283968.P11370268199803059935

`(n+1)²-∑[A004956(n)]`
-/

namespace A283968.P11370268199803059935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283968.P11370268199803059935

namespace A283968

/-- `(n+1)²-∑[A004956(n)]` -/
def P11370268199803059935.Spec : Prop :=
  ∀ n, P11370268199803059935.a n = A283968 n

end A283968

/-! ## A283968.P12704371988587633665

`(n+1)²+1-A283733(n)`
-/

namespace A283968.P12704371988587633665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (1 - A283733 n)

end

end A283968.P12704371988587633665

namespace A283968

/-- `(n+1)²+1-A283733(n)` -/
def P12704371988587633665.Spec : Prop :=
  ∀ n, P12704371988587633665.a n = A283968 n

end A283968

/-! ## A283968.P3386493774610445466

`2*n-(A000201(n)-(char[1]+a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A283968.P3386493774610445466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * n : ℤ) - (A000201 n - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + a (n - 1)))

end

end A283968.P3386493774610445466

namespace A283968

/-- `2*n-(A000201(n)-(char[1]+a(n-1)))` -/
def P3386493774610445466.Spec : Prop :=
  ∀ n, P3386493774610445466.a n = A283968 n

end A283968

/-! ## A283968.P9359190629214996974

`A005448(n+1)-A088207(n)`
-/

namespace A283968.P9359190629214996974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1) - A088207 n

end

end A283968.P9359190629214996974

namespace A283968

/-- `A005448(n+1)-A088207(n)` -/
def P9359190629214996974.Spec : Prop :=
  ∀ n, P9359190629214996974.a n = A283968 n

end A283968

/-! ## A283968.P10025850816369534950

`∑[n]+A000124(n)-A054347(n)`
-/

namespace A283968.P10025850816369534950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000124 n - A054347 n)

end

end A283968.P10025850816369534950

namespace A283968

/-- `∑[n]+A000124(n)-A054347(n)` -/
def P10025850816369534950.Spec : Prop :=
  ∀ n, P10025850816369534950.a n = A283968 n

end A283968

/-! ## A283968.P13592807358816044356

`A054066(n+1)-A183136(n+1)`
-/

namespace A283968.P13592807358816044356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054066 (n + 1) - A183136 (n + 1)

end

end A283968.P13592807358816044356

namespace A283968

/-- `A054066(n+1)-A183136(n+1)` -/
def P13592807358816044356.Spec : Prop :=
  ∀ n, P13592807358816044356.a n = A283968 n

end A283968

/-! ## A283968.P9338323999958510135

`A000124(n)+A005206(n)-∑[A005206(n)]`
-/

namespace A283968.P9338323999958510135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (A005206 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283968.P9338323999958510135

namespace A283968

/-- `A000124(n)+A005206(n)-∑[A005206(n)]` -/
def P9338323999958510135.Spec : Prop :=
  ∀ n, P9338323999958510135.a n = A283968 n

end A283968

/-! ## A283968.P5829398233492377374

`A000217(n+1)-(A183136(n+1)+A060144(n+1))`
-/

namespace A283968.P5829398233492377374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - (A183136 (n + 1) + A060144 (n + 1))

end

end A283968.P5829398233492377374

namespace A283968

/-- `A000217(n+1)-(A183136(n+1)+A060144(n+1))` -/
def P5829398233492377374.Spec : Prop :=
  ∀ n, P5829398233492377374.a n = A283968 n

end A283968

/-!
# A283969: a(n) = n + 1 + Sum_{k=0..n} floor((n-k)/r), where r = (3+sqrt(5))/2.

The programs for A283969, the canonical program `A283969.P16321695659683954026` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283969 has offset 0).

The definition of A283969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283969.P16321695659683954026

`a(n-1)+1+floor(n*(3+sqrt(5))/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A283969

/-- `a(n-1)+1+floor(n*(3+sqrt(5))/2)` -/
def P16321695659683954026.Spec : Prop :=
  ∀ n, P16321695659683954026.a n = A283969 n

theorem P16321695659683954026.correct : P16321695659683954026.Spec := by
  intro n
  simp only [A283969]

end A283969

/-! ## A283969.P16674332250953527137

`∑[comp[ceil(ϕ*n)]]`
-/

namespace A283969.P16674332250953527137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283969.P16674332250953527137

namespace A283969

/-- `∑[comp[ceil(ϕ*n)]]` -/
def P16674332250953527137.Spec : Prop :=
  ∀ n, (P16674332250953527137.a n : ℤ) = A283969 n

end A283969

/-! ## A283969.P5062477866866514528

`∑[floor(ϕ*n)]-∑[xor(n, -1)]`
-/

namespace A283969.P5062477866866514528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A283969.P5062477866866514528

namespace A283969

/-- `∑[floor(ϕ*n)]-∑[xor(n, -1)]` -/
def P5062477866866514528.Spec : Prop :=
  ∀ n, P5062477866866514528.a n = A283969 n

end A283969

/-! ## A283969.P18281477121115052979

`ceil(a(n-1)+n*ϕ²)` with `a(0)=1`
-/

namespace A283969.P18281477121115052979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.goldenRatio ^ 2⌉

end

end A283969.P18281477121115052979

namespace A283969

/-- `ceil(a(n-1)+n*ϕ²)` -/
def P18281477121115052979.Spec : Prop :=
  ∀ n, P18281477121115052979.a n = A283969 n

end A283969

/-! ## A283969.P11469273675583263809

`∑[floor(ϕ*n)]+C(n+2, 2)`
-/

namespace A283969.P11469273675583263809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (n + 2) 2 : ℤ)

end

end A283969.P11469273675583263809

namespace A283969

/-- `∑[floor(ϕ*n)]+C(n+2, 2)` -/
def P11469273675583263809.Spec : Prop :=
  ∀ n, P11469273675583263809.a n = A283969 n

end A283969

/-! ## A283969.P9239883307972812091

`comp[ceil(ϕ*n)]+a(n-1)` with `a(0)=1`
-/

namespace A283969.P9239883307972812091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + a (n - 1)

end

end A283969.P9239883307972812091

namespace A283969

/-- `comp[ceil(ϕ*n)]+a(n-1)` -/
def P9239883307972812091.Spec : Prop :=
  ∀ n, (P9239883307972812091.a n : ℤ) = A283969 n

end A283969

/-! ## A283969.P17594482389841922596

`floor(ϕ*n+a(n-1)+n+1)` with `a(0)=1`
-/

namespace A283969.P17594482389841922596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio * (n : ℝ) + (a (n - 1) + (n + 1 : ℤ) : ℝ)⌋

end

end A283969.P17594482389841922596

namespace A283969

/-- `floor(ϕ*n+a(n-1)+n+1)` -/
def P17594482389841922596.Spec : Prop :=
  ∀ n, P17594482389841922596.a n = A283969 n

end A283969

/-! ## A283969.P9176891544036516795

`∑[A004957(n)]+1`
-/

namespace A283969.P9176891544036516795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A283969.P9176891544036516795

namespace A283969

/-- `∑[A004957(n)]+1` -/
def P9176891544036516795.Spec : Prop :=
  ∀ n, P9176891544036516795.a n = A283969 n

end A283969

/-! ## A283969.P2419763728760769803

`A283733(n)+∑[n]`
-/

namespace A283969.P2419763728760769803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283733 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A283969.P2419763728760769803

namespace A283969

/-- `A283733(n)+∑[n]` -/
def P2419763728760769803.Spec : Prop :=
  ∀ n, P2419763728760769803.a n = A283969 n

end A283969

/-! ## A283969.P17669141119113003299

`A088207(n)+1+n`
-/

namespace A283969.P17669141119113003299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 n + 1 + (n : ℤ)

end

end A283969.P17669141119113003299

namespace A283969

/-- `A088207(n)+1+n` -/
def P17669141119113003299.Spec : Prop :=
  ∀ n, P17669141119113003299.a n = A283969 n

end A283969

/-! ## A283969.P1101753634015869466

`∑[A022413(n)-2]+2`
-/

namespace A283969.P1101753634015869466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A283969.P1101753634015869466

namespace A283969

/-- `∑[A022413(n)-2]+2` -/
def P1101753634015869466.Spec : Prop :=
  ∀ n, P1101753634015869466.a n = A283969 n

end A283969

/-! ## A283969.P8188703570324839801

`∑[A004956(n)+n]+1`
-/

namespace A283969.P8188703570324839801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A283969.P8188703570324839801

namespace A283969

/-- `∑[A004956(n)+n]+1` -/
def P8188703570324839801.Spec : Prop :=
  ∀ n, P8188703570324839801.a n = A283969 n

end A283969

/-! ## A283969.P17051676330272893534

`A054347(n)+∑[n+1]`
-/

namespace A283969.P17051676330272893534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A283969.P17051676330272893534

namespace A283969

/-- `A054347(n)+∑[n+1]` -/
def P17051676330272893534.Spec : Prop :=
  ∀ n, P17051676330272893534.a n = A283969 n

end A283969

/-! ## A283969.P9055054115493198496

`∑[A007066(n+1)]-n`
-/

namespace A283969.P9055054115493198496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A283969.P9055054115493198496

namespace A283969

/-- `∑[A007066(n+1)]-n` -/
def P9055054115493198496.Spec : Prop :=
  ∀ n, P9055054115493198496.a n = A283969 n

end A283969

/-! ## A283969.P5401768317292389401

`∑[A060143(n)]+(n+1)²`
-/

namespace A283969.P5401768317292389401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A283969.P5401768317292389401

namespace A283969

/-- `∑[A060143(n)]+(n+1)²` -/
def P5401768317292389401.Spec : Prop :=
  ∀ n, P5401768317292389401.a n = A283969 n

end A283969

/-! ## A283969.P6740128278832390358

`∑[A189662(n+1)+n]-n`
-/

namespace A283969.P6740128278832390358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189662 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A283969.P6740128278832390358

namespace A283969

/-- `∑[A189662(n+1)+n]-n` -/
def P6740128278832390358.Spec : Prop :=
  ∀ n, P6740128278832390358.a n = A283969 n

end A283969

/-! ## A283969.P17832740014566152372

`A000124(n)+A054347(n)+n`
-/

namespace A283969.P17832740014566152372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (A054347 n + (n : ℤ))

end

end A283969.P17832740014566152372

namespace A283969

/-- `A000124(n)+A054347(n)+n` -/
def P17832740014566152372.Spec : Prop :=
  ∀ n, P17832740014566152372.a n = A283969 n

end A283969

/-! ## A283969.P4193342312970111459

`∑[A003622(n+1)]-A005206(n)`
-/

namespace A283969.P4193342312970111459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005206 n

end

end A283969.P4193342312970111459

namespace A283969

/-- `∑[A003622(n+1)]-A005206(n)` -/
def P4193342312970111459.Spec : Prop :=
  ∀ n, P4193342312970111459.a n = A283969 n

end A283969

/-! ## A283969.P14078582398402144673

`∑[A001950(n+1)]-A000201(n+1)`
-/

namespace A283969.P14078582398402144673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000201 (n + 1)

end

end A283969.P14078582398402144673

namespace A283969

/-- `∑[A001950(n+1)]-A000201(n+1)` -/
def P14078582398402144673.Spec : Prop :=
  ∀ n, P14078582398402144673.a n = A283969 n

end A283969

/-!
# A283971: a(n) = n except a(4*n + 2) = 2*n + 1.

The programs for A283971, the canonical program `A283971.P1852162337180441378` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283971 has offset 0).

The definition of A283971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283971.P1852162337180441378

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=4, a(5)=5, a(6)=3, a(7)=7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A283971

/-- `2*a(n-4)-a(n-8)` -/
def P1852162337180441378.Spec : Prop :=
  ∀ n, P1852162337180441378.a n = A283971 n

theorem P1852162337180441378.correct : P1852162337180441378.Spec := by
  intro n
  simp only [A283971]

end A283971

/-! ## A283971.P17613353274196203909

`gcd(n, ∑[n]²)`
-/

namespace A283971.P17613353274196203909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A283971.P17613353274196203909

namespace A283971

/-- `gcd(n, ∑[n]²)` -/
def P17613353274196203909.Spec : Prop :=
  ∀ n, (P17613353274196203909.a n : ℤ) = A283971 n

end A283971

/-! ## A283971.P3320959245789017320

`n/sqrt(and(4, n²))!`
-/

namespace A283971.P3320959245789017320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (Nat.land 4 (n ^ 2) : ℝ))).toNat : ℚ)

end

end A283971.P3320959245789017320

namespace A283971

/-- `n/sqrt(and(4, n²))!` -/
def P3320959245789017320.Spec : Prop :=
  ∀ n, P3320959245789017320.a n = (A283971 n : ℚ)

end A283971

/-! ## A283971.P13655761678447500617

`n/(and(4, n²)/2)!`
-/

namespace A283971.P13655761678447500617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (SequenceMachineLib.roundAway ((Nat.land 4 (n ^ 2) : ℚ) / 2)).toNat : ℚ)

end

end A283971.P13655761678447500617

namespace A283971

/-- `n/(and(4, n²)/2)!` -/
def P13655761678447500617.Spec : Prop :=
  ∀ n, P13655761678447500617.a n = (A283971 n : ℚ)

end A283971

/-! ## A283971.P3288847706013840883

`n/val(n²+12, 4)!`
-/

namespace A283971.P3288847706013840883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (SequenceMachineLib.valuation (n ^ 2 + 12) 4) : ℚ)

end

end A283971.P3288847706013840883

namespace A283971

/-- `n/val(n²+12, 4)!` -/
def P3288847706013840883.Spec : Prop :=
  ∀ n, P3288847706013840883.a n = (A283971 n : ℚ)

end A283971

/-! ## A283971.P8722776869152573673

`n/ceil(acot((n+2)%4))`
-/

namespace A283971.P8722776869152573673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (⌈SequenceMachineLib.acot (((n + 2) % 4 : ℕ) : ℝ)⌉ : ℚ)

end

end A283971.P8722776869152573673

namespace A283971

/-- `n/ceil(acot((n+2)%4))` -/
def P8722776869152573673.Spec : Prop :=
  ∀ n, P8722776869152573673.a n = (A283971 n : ℚ)

end A283971

/-! ## A283971.P17640728428311117912

`n/gcd(2, a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A283971.P17640728428311117912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℚ) / (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 2))) : ℚ)

end

end A283971.P17640728428311117912

namespace A283971

/-- `n/gcd(2, a(n-2))` -/
def P17640728428311117912.Spec : Prop :=
  ∀ n, P17640728428311117912.a n = (A283971 n : ℚ)

end A283971

/-! ## A283971.P17406471854023466583

`gcd(2*n, C(n², 2))/2`
-/

namespace A283971.P17406471854023466583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * n) (Nat.choose (n ^ 2) 2) : ℚ) / 2

end

end A283971.P17406471854023466583

namespace A283971

/-- `gcd(2*n, C(n², 2))/2` -/
def P17406471854023466583.Spec : Prop :=
  ∀ n, P17406471854023466583.a n = (A283971 n : ℚ)

end A283971

/-! ## A283971.P4663600497059301830

`n/ceil(gcd(4, n+2)/2)`
-/

namespace A283971.P4663600497059301830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (⌈(Nat.gcd 4 (n + 2) : ℚ) / 2⌉ : ℚ)

end

end A283971.P4663600497059301830

namespace A283971

/-- `n/ceil(gcd(4, n+2)/2)` -/
def P4663600497059301830.Spec : Prop :=
  ∀ n, P4663600497059301830.a n = (A283971 n : ℚ)

end A283971

/-! ## A283971.P8037177937153574761

`n/and(2, (n+1)^3)!`
-/

namespace A283971.P8037177937153574761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (Nat.land 2 ((n + 1) ^ 3)) : ℚ)

end

end A283971.P8037177937153574761

namespace A283971

/-- `n/and(2, (n+1)^3)!` -/
def P8037177937153574761.Spec : Prop :=
  ∀ n, P8037177937153574761.a n = (A283971 n : ℚ)

end A283971

/-! ## A283971.P10215873337580064697

`n/C(2, and(3, n-1))!`
-/

namespace A283971.P10215873337580064697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (Nat.choose 2 (Int.land 3 ((n : ℤ) - 1)).toNat) : ℚ)

end

end A283971.P10215873337580064697

namespace A283971

/-- `n/C(2, and(3, n-1))!` -/
def P10215873337580064697.Spec : Prop :=
  ∀ n, P10215873337580064697.a n = (A283971 n : ℚ)

end A283971

/-! ## A283971.P9668337770582163330

`n-Δ[floor((n+1)/4)²]`
-/

namespace A283971.P9668337770582163330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 4⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A283971.P9668337770582163330

namespace A283971

/-- `n-Δ[floor((n+1)/4)²]` -/
def P9668337770582163330.Spec : Prop :=
  ∀ n, P9668337770582163330.a n = A283971 n

end A283971

/-! ## A283971.P13039366263951544505

`n/∏{e}[or(n+2, -4), #]`
-/

namespace A283971.P13039366263951544505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 2 : ℤ) (-4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)

end

end A283971.P13039366263951544505

namespace A283971

/-- `n/∏{e}[or(n+2, -4), #]` -/
def P13039366263951544505.Spec : Prop :=
  ∀ n, P13039366263951544505.a n = (A283971 n : ℚ)

end A283971

/-! ## A283971.P6394262908075440950

`n/gcd(∑[n+1], ∏{p}[n, #])`
-/

namespace A283971.P6394262908075440950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A283971.P6394262908075440950

namespace A283971

/-- `n/gcd(∑[n+1], ∏{p}[n, #])` -/
def P6394262908075440950.Spec : Prop :=
  ∀ n, P6394262908075440950.a n = (A283971 n : ℚ)

end A283971

/-! ## A283971.P4538351853788742694

`n/(4%(n%4+1)+1)`
-/

namespace A283971.P4538351853788742694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((4 % (n % 4 + 1) + 1 : ℕ) : ℚ)

end

end A283971.P4538351853788742694

namespace A283971

/-- `n/(4%(n%4+1)+1)` -/
def P4538351853788742694.Spec : Prop :=
  ∀ n, P4538351853788742694.a n = (A283971 n : ℚ)

end A283971

/-! ## A283971.P12381786247841683067

`lcm(n, xor(2, n+2))%(n+3)`
-/

namespace A283971.P12381786247841683067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.xor 2 (n + 2)) % (n + 3)

end

end A283971.P12381786247841683067

namespace A283971

/-- `lcm(n, xor(2, n+2))%(n+3)` -/
def P12381786247841683067.Spec : Prop :=
  ∀ n, (P12381786247841683067.a n : ℤ) = A283971 n

end A283971

/-! ## A283971.P17880968842388714981

`n/(2-a(n-2)%2)` with `a(0)=0, a(1)=1`
-/

namespace A283971.P17880968842388714981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℚ) / (2 - Int.tmod (SequenceMachineLib.roundAway (a (n - 2))) 2 : ℚ)

end

end A283971.P17880968842388714981

namespace A283971

/-- `n/(2-a(n-2)%2)` -/
def P17880968842388714981.Spec : Prop :=
  ∀ n, P17880968842388714981.a n = (A283971 n : ℚ)

end A283971

/-! ## A283971.P2500615706584824260

`n/(2-and(1, a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A283971.P2500615706584824260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℚ) / (2 - Int.land 1 (SequenceMachineLib.roundAway (a (n - 2))) : ℚ)

end

end A283971.P2500615706584824260

namespace A283971

/-- `n/(2-and(1, a(n-2)))` -/
def P2500615706584824260.Spec : Prop :=
  ∀ n, P2500615706584824260.a n = (A283971 n : ℚ)

end A283971

/-! ## A283971.P11041393224686863441

`n/ceil((n+3)/lcm(4, n+2))`
-/

namespace A283971.P11041393224686863441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (⌈(n + 3 : ℚ) / (Nat.lcm 4 (n + 2) : ℚ)⌉ : ℚ)

end

end A283971.P11041393224686863441

namespace A283971

/-- `n/ceil((n+3)/lcm(4, n+2))` -/
def P11041393224686863441.Spec : Prop :=
  ∀ n, P11041393224686863441.a n = (A283971 n : ℚ)

end A283971

/-! ## A283971.P3406316969234709422

`n/ceil((n+2)/or(3, n+1))`
-/

namespace A283971.P3406316969234709422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (⌈(n + 2 : ℚ) / (Nat.lor 3 (n + 1) : ℚ)⌉ : ℚ)

end

end A283971.P3406316969234709422

namespace A283971

/-- `n/ceil((n+2)/or(3, n+1))` -/
def P3406316969234709422.Spec : Prop :=
  ∀ n, P3406316969234709422.a n = (A283971 n : ℚ)

end A283971

/-!
# A283972: a(n) = n minus (product of lengths of 1-runs in binary representation of n) = n - A227349(n).

The programs for A283972, the canonical program `A283972.P4272654146123541670` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283972 has offset 1).

The definition of A283972 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227349, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283972.P4272654146123541670

`n+1-A227349(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A283972

/-- `n+1-A227349(n+1)` -/
def P4272654146123541670.Spec : Prop :=
  ∀ n, P4272654146123541670.a n = A283972 (n + 1)

theorem P4272654146123541670.correct : P4272654146123541670.Spec := by
  intro n
  simp only [A283972, Nat.add_sub_cancel]

end A283972

/-! ## A283972.P13307790783754435450

`1-Δ[A253083(n)]+n`
-/

namespace A283972.P13307790783754435450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A283972.P13307790783754435450

namespace A283972

/-- `1-Δ[A253083(n)]+n` -/
def P13307790783754435450.Spec : Prop :=
  ∀ n, P13307790783754435450.a n = A283972 (n + 1)

end A283972

/-! ## A283972.P15395786106214343558

`∑[-Δ[A227349(n)]]+n`
-/

namespace A283972.P15395786106214343558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A283972.P15395786106214343558

namespace A283972

/-- `∑[-Δ[A227349(n)]]+n` -/
def P15395786106214343558.Spec : Prop :=
  ∀ n, P15395786106214343558.a n = A283972 (n + 1)

end A283972

/-! ## A283972.P16552078632908545638

`n+1-sqrt(A246595(n+1))`
-/

namespace A283972.P16552078632908545638
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.sqrt (A246595 (n + 1) : ℝ)

end

end A283972.P16552078632908545638

namespace A283972

/-- `n+1-sqrt(A246595(n+1))` -/
def P16552078632908545638.Spec : Prop :=
  ∀ n, P16552078632908545638.a n = (A283972 (n + 1) : ℝ)

end A283972

/-! ## A283972.P2619294160712151280

`A253083(n)+n+1-A253083(n+1)`
-/

namespace A283972.P2619294160712151280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253083 n + ((n + 1 : ℤ) - A253083 (n + 1))

end

end A283972.P2619294160712151280

namespace A283972

/-- `A253083(n)+n+1-A253083(n+1)` -/
def P2619294160712151280.Spec : Prop :=
  ∀ n, P2619294160712151280.a n = A283972 (n + 1)

end A283972

/-! ## A283972.P16002614049834004911

`n+1-∏{e}[A005940(n+2), #]`
-/

namespace A283972.P16002614049834004911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A283972.P16002614049834004911

namespace A283972

/-- `n+1-∏{e}[A005940(n+2), #]` -/
def P16002614049834004911.Spec : Prop :=
  ∀ n, P16002614049834004911.a n = A283972 (n + 1)

end A283972

/-! ## A283972.P15888740738798361369

`n+1-A005361(A005940(n+2))`
-/

namespace A283972.P15888740738798361369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005361 (A005940 (n + 2)).toNat

end

end A283972.P15888740738798361369

namespace A283972

/-- `n+1-A005361(A005940(n+2))` -/
def P15888740738798361369.Spec : Prop :=
  ∀ n, P15888740738798361369.a n = A283972 (n + 1)

end A283972

/-! ## A283972.P14363133440225302129

`n-A000120(A213370(n+1)²)`
-/

namespace A283972.P14363133440225302129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000120 (A213370 (n + 1) ^ 2).toNat

end

end A283972.P14363133440225302129

namespace A283972

/-- `n-A000120(A213370(n+1)²)` -/
def P14363133440225302129.Spec : Prop :=
  ∀ n, P14363133440225302129.a n = A283972 (n + 1)

end A283972

/-! ## A283972.P11593057287517460205

`A284571(A284572(n+1))-A284580(n+1)`
-/

namespace A283972.P11593057287517460205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284571 (A284572 (n + 1)).toNat - A284580 (n + 1)

end

end A283972.P11593057287517460205

namespace A283972

/-- `A284571(A284572(n+1))-A284580(n+1)` -/
def P11593057287517460205.Spec : Prop :=
  ∀ n, P11593057287517460205.a n = A283972 (n + 1)

end A283972

/-!
# A283973: Numbers n such that A007306(n) = A283986(n); positions of zeros in A283988.

The programs for A283973, the canonical program `A283973.P12202427252811082316` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283973 has offset 1).

The definition of A283973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283973.P12202427252811082316

`lt[A283988(n+1), 1]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A283973

/-- `lt[A283988(n+1), 1]+1` -/
def P12202427252811082316.Spec : Prop :=
  ∀ n, (P12202427252811082316.a n : ℤ) = A283973 (n + 1)

theorem P12202427252811082316.correct : P12202427252811082316.Spec := by
  intro n
  simp only [A283973, Nat.add_sub_cancel]

end A283973

/-! ## A283973.P8518243841610533174

`record[gcd(A000027(n+1), A283988(n+1))]`
-/

namespace A283973.P8518243841610533174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A283988 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283973.P8518243841610533174

namespace A283973

/-- `record[gcd(A000027(n+1), A283988(n+1))]` -/
def P8518243841610533174.Spec : Prop :=
  ∀ n, (P8518243841610533174.a n : ℤ) = A283973 (n + 1)

end A283973

/-! ## A283973.P14441175449975857134

`eq[2, A007510(A283988(n+1)+1)]+1`
-/

namespace A283973.P14441175449975857134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (A283988 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283973.P14441175449975857134

namespace A283973

/-- `eq[2, A007510(A283988(n+1)+1)]+1` -/
def P14441175449975857134.Spec : Prop :=
  ∀ n, (P14441175449975857134.a n : ℤ) = A283973 (n + 1)

end A283973

/-! ## A283973.P13938341646774821638

`record[(n+1)/A000005(A283988(n+1)+1)]`
-/

namespace A283973.P13938341646774821638
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000005 (A283988 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283973.P13938341646774821638

namespace A283973

/-- `record[(n+1)/A000005(A283988(n+1)+1)]` -/
def P13938341646774821638.Spec : Prop :=
  ∀ n, P13938341646774821638.a n = (A283973 (n + 1) : ℚ)

end A283973

/-! ## A283973.P1954351965228451664

`record[n+1-A007088(9*A283988(n+1))]`
-/

namespace A283973.P1954351965228451664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007088 (9 * A283988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283973.P1954351965228451664

namespace A283973

/-- `record[n+1-A007088(9*A283988(n+1))]` -/
def P1954351965228451664.Spec : Prop :=
  ∀ n, P1954351965228451664.a n = A283973 (n + 1)

end A283973

/-! ## A283973.P1128822656894446772

`record[n+1-A246201(n+1)*A283988(n+1)]`
-/

namespace A283973.P1128822656894446772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A246201 (n + 1) * A283988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283973.P1128822656894446772

namespace A283973

/-- `record[n+1-A246201(n+1)*A283988(n+1)]` -/
def P1128822656894446772.Spec : Prop :=
  ∀ n, P1128822656894446772.a n = A283973 (n + 1)

end A283973

/-! ## A283973.P4064844618788036073

`eq[A283978(2*n+1), 0]+1`
-/

namespace A283973.P4064844618788036073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A283973.P4064844618788036073

namespace A283973

/-- `eq[A283978(2*n+1), 0]+1` -/
def P4064844618788036073.Spec : Prop :=
  ∀ n, (P4064844618788036073.a n : ℤ) = A283973 (n + 1)

end A283973

/-! ## A283973.P12293126399351595841

`A008619(eq[A283976(2*n+1), A283976(n)])`
-/

namespace A283973.P12293126399351595841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A283973.P12293126399351595841

namespace A283973

/-- `A008619(eq[A283976(2*n+1), A283976(n)])` -/
def P12293126399351595841.Spec : Prop :=
  ∀ n, P12293126399351595841.a n = A283973 (n + 1)

end A283973

/-!
# A283974: Numbers n for which A002487(n-1) AND A002487(n) > 0 where AND is bitwise-and (A004198).

The programs for A283974, the canonical program `A283974.P17363378362124844892` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283974 has offset 1).

The definition of A283974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283974.P17363378362124844892

`comp[lt[A283988(n+1), 1]]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A283974

/-- `comp[lt[A283988(n+1), 1]]+1` -/
def P17363378362124844892.Spec : Prop :=
  ∀ n, (P17363378362124844892.a n : ℤ) = A283974 (n + 1)

theorem P17363378362124844892.correct : P17363378362124844892.Spec := by
  intro n
  simp only [A283974, Nat.add_sub_cancel]

end A283974

/-! ## A283974.P8420945730099574199

`lt[A283986(A028310(n)), A007306(n)]`
-/

namespace A283974.P8420945730099574199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283986 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283974.P8420945730099574199

namespace A283974

/-- `lt[A283986(A028310(n)), A007306(n)]` -/
def P8420945730099574199.Spec : Prop :=
  ∀ n, (P8420945730099574199.a n : ℤ) = A283974 (n + 1)

end A283974

/-! ## A283974.P12897136888987871062

`lt[A283986(A028310(n)), 1-A309256(n)+n]`
-/

namespace A283974.P12897136888987871062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283986 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A309256 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283974.P12897136888987871062

namespace A283974

/-- `lt[A283986(A028310(n)), 1-A309256(n)+n]` -/
def P12897136888987871062.Spec : Prop :=
  ∀ n, (P12897136888987871062.a n : ℤ) = A283974 (n + 1)

end A283974

/-! ## A283974.P8635804459842477821

`A003602(lt[A283976(n), A002487(n)])`
-/

namespace A283974.P8635804459842477821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A283974.P8635804459842477821

namespace A283974

/-- `A003602(lt[A283976(n), A002487(n)])` -/
def P8635804459842477821.Spec : Prop :=
  ∀ n, P8635804459842477821.a n = A283974 (n + 1)

end A283974

/-! ## A283974.P11896687877985552619

`lt[A007306(n), A283986(A004277(n))]`
-/

namespace A283974.P11896687877985552619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283986 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283974.P11896687877985552619

namespace A283974

/-- `lt[A007306(n), A283986(A004277(n))]` -/
def P11896687877985552619.Spec : Prop :=
  ∀ n, (P11896687877985552619.a n : ℤ) = A283974 (n + 1)

end A283974

/-! ## A283974.P4295936893288732508

`A003602(lt[A283976(n), n-A284013(n)])`
-/

namespace A283974.P4295936893288732508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A284013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A283974.P4295936893288732508

namespace A283974

/-- `A003602(lt[A283976(n), n-A284013(n)])` -/
def P4295936893288732508.Spec : Prop :=
  ∀ n, P4295936893288732508.a n = A283974 (n + 1)

end A283974

/-! ## A283974.P5433022231199468109

`lt[1-A309256(n)+n, A283986(A004277(n))]`
-/

namespace A283974.P5433022231199468109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A309256 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283986 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283974.P5433022231199468109

namespace A283974

/-- `lt[1-A309256(n)+n, A283986(A004277(n))]` -/
def P5433022231199468109.Spec : Prop :=
  ∀ n, (P5433022231199468109.a n : ℤ) = A283974 (n + 1)

end A283974

/-!
# A283975: Odd bisection of A264977.

The programs for A283975, there is no canonical definition to state claims against.
-/

/-! ## A283975.P13314303258710950588

`A264977(2*n+1)`
-/

namespace A283975.P13314303258710950588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264977 (2 * n + 1)

end

end A283975.P13314303258710950588

/-! ## A283975.P2477707002715143262

`xor(A264977(n+1), A264977(n))`
-/

namespace A283975.P2477707002715143262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A264977 (n + 1)) (A264977 n)

end

end A283975.P2477707002715143262

/-! ## A283975.P15560748009732226068

`A249811(A264977(n+1+n))`
-/

namespace A283975.P15560748009732226068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249811 (A264977 (n + 1 + n)).toNat

end

end A283975.P15560748009732226068

/-! ## A283975.P4221180587852907949

`2*n+1-A265397(2*n+1)`
-/

namespace A283975.P4221180587852907949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A265397 (2 * n + 1)

end

end A283975.P4221180587852907949

/-! ## A283975.P4308725643103451939

`filter[A264977(n), A000035(#)]`
-/

namespace A283975.P4308725643103451939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A283975.P4308725643103451939

/-! ## A283975.P17856693141849505940

`A264977(A016825(n))/2`
-/

namespace A283975.P17856693141849505940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264977 (A016825 n).toNat : ℚ) / 2

end

end A283975.P17856693141849505940

/-! ## A283975.P17856944020344519605

`∑{p}[A277330(2*n+1), A048675(#)]`
-/

namespace A283975.P17856944020344519605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A283975.P17856944020344519605

/-! ## A283975.P4025669366956471590

`∑{p}[A277330(2*n+1), A156552(#)]`
-/

namespace A283975.P4025669366956471590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A283975.P4025669366956471590

/-! ## A283975.P13871709677505318402

`∑{p}[A277330(2*n+1), A297108(#)]`
-/

namespace A283975.P13871709677505318402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297108 p

end

end A283975.P13871709677505318402

/-!
# A283976: a(2n) = A002487(n), a(2n+1) = A002487(n) OR A002487(n+1), where OR is bitwise-or (A003986).

The programs for A283976, the canonical program `A283976.P17238727065902708821` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283976 has offset 0).

The definition of A283976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283976.P6284917103409739430

`A283977(n)+A283978(n)`
-/

namespace A283976.P6284917103409739430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 n + A283978 n

end

end A283976.P6284917103409739430

namespace A283976

/-- `A283977(n)+A283978(n)` -/
def P6284917103409739430.Spec : Prop :=
  ∀ n, P6284917103409739430.a n = A283976 n

end A283976

/-! ## A283976.P1100604742309677910

`A002487(n)-A283978(n)`
-/

namespace A283976.P1100604742309677910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n - A283978 n

end

end A283976.P1100604742309677910

namespace A283976

/-- `A002487(n)-A283978(n)` -/
def P1100604742309677910.Spec : Prop :=
  ∀ n, P1100604742309677910.a n = A283976 n

end A283976

/-! ## A283976.P15070945322618254235

`(A283977(n)+A002487(n))/2`
-/

namespace A283976.P15070945322618254235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283977 n + A002487 n : ℚ) / 2

end

end A283976.P15070945322618254235

namespace A283976

/-- `(A283977(n)+A002487(n))/2` -/
def P15070945322618254235.Spec : Prop :=
  ∀ n, P15070945322618254235.a n = (A283976 n : ℚ)

end A283976

/-! ## A283976.P713385962755992462

`or(A283977(n), A295515(n+1))`
-/

namespace A283976.P713385962755992462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283977 n) (A295515 (n + 1))

end

end A283976.P713385962755992462

namespace A283976

/-- `or(A283977(n), A295515(n+1))` -/
def P713385962755992462.Spec : Prop :=
  ∀ n, P713385962755992462.a n = A283976 n

end A283976

/-! ## A283976.P3832015409949705128

`or(A283977(n), A283978(or(1, n)))`
-/

namespace A283976.P3832015409949705128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283977 n) (A283978 (Nat.lor 1 n))

end

end A283976.P3832015409949705128

namespace A283976

/-- `or(A283977(n), A283978(or(1, n)))` -/
def P3832015409949705128.Spec : Prop :=
  ∀ n, P3832015409949705128.a n = A283976 n

end A283976

/-! ## A283976.P1890852969865054890

`n-(A284013(n)+A283978(n))`
-/

namespace A283976.P1890852969865054890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A284013 n + A283978 n)

end

end A283976.P1890852969865054890

namespace A283976

/-- `n-(A284013(n)+A283978(n))` -/
def P1890852969865054890.Spec : Prop :=
  ∀ n, P1890852969865054890.a n = A283976 n

end A283976

/-! ## A283976.P18302755734741107073

`∑{d}[n, A317839(#)]-A283978(n)`
-/

namespace A283976.P18302755734741107073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317839 d - A283978 n

end

end A283976.P18302755734741107073

namespace A283976

/-- `∑{d}[n, A317839(#)]-A283978(n)` -/
def P18302755734741107073.Spec : Prop :=
  ∀ n, P18302755734741107073.a n = A283976 n

end A283976

/-! ## A283976.P17238727065902708821

`or(A295515(or(1, n)), A295515(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A283976

/-- `or(A295515(or(1, n)), A295515(n+1))` -/
def P17238727065902708821.Spec : Prop :=
  ∀ n, P17238727065902708821.a n = A283976 n

theorem P17238727065902708821.correct : P17238727065902708821.Spec := by
  intro n
  simp only [A283976]

end A283976

/-! ## A283976.P16586129700354104322

`A324337(xor(n, floor(n/2)))-A283978(n)`
-/

namespace A283976.P16586129700354104322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat - A283978 n

end

end A283976.P16586129700354104322

namespace A283976

/-- `A324337(xor(n, floor(n/2)))-A283978(n)` -/
def P16586129700354104322.Spec : Prop :=
  ∀ n, P16586129700354104322.a n = A283976 n

end A283976

/-! ## A283976.P6462892472322836828

`A038572(A283977(n)+A002487(n))`
-/

namespace A283976.P6462892472322836828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A283977 n + A002487 n).toNat

end

end A283976.P6462892472322836828

namespace A283976

/-- `A038572(A283977(n)+A002487(n))` -/
def P6462892472322836828.Spec : Prop :=
  ∀ n, P6462892472322836828.a n = A283976 n

end A283976

/-! ## A283976.P2648038859939297546

`or(A283977(n), A283978(A028310(n)))`
-/

namespace A283976.P2648038859939297546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283977 n) (A283978 (A028310 n).toNat)

end

end A283976.P2648038859939297546

namespace A283976

/-- `or(A283977(n), A283978(A028310(n)))` -/
def P2648038859939297546.Spec : Prop :=
  ∀ n, P2648038859939297546.a n = A283976 n

end A283976

/-! ## A283976.P16798766035744312571

`A324338(A233280(n))%(n+1)-A283978(n)`
-/

namespace A283976.P16798766035744312571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324338 (A233280 n).toNat) (n + 1 : ℤ) - A283978 n

end

end A283976.P16798766035744312571

namespace A283976

/-- `A324338(A233280(n))%(n+1)-A283978(n)` -/
def P16798766035744312571.Spec : Prop :=
  ∀ n, P16798766035744312571.a n = A283976 n

end A283976

/-! ## A283976.P8646267373838899288

`A287896(n+1)-(A288003(n+1)+A283978(n))`
-/

namespace A283976.P8646267373838899288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (n + 1) - (A288003 (n + 1) + A283978 n)

end

end A283976.P8646267373838899288

namespace A283976

/-- `A287896(n+1)-(A288003(n+1)+A283978(n))` -/
def P8646267373838899288.Spec : Prop :=
  ∀ n, P8646267373838899288.a n = A283976 n

end A283976

/-! ## A283976.P13295666645444838567

`A002487(n)-A038572(A002487(n)-A283977(n))`
-/

namespace A283976.P13295666645444838567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n - A038572 (A002487 n - A283977 n).toNat

end

end A283976.P13295666645444838567

namespace A283976

/-- `A002487(n)-A038572(A002487(n)-A283977(n))` -/
def P13295666645444838567.Spec : Prop :=
  ∀ n, P13295666645444838567.a n = A283976 n

end A283976

/-! ## A283976.P1030203504971703373

`A295515(2*n+1)-A283978(n)`
-/

namespace A283976.P1030203504971703373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * n + 1) - A283978 n

end

end A283976.P1030203504971703373

namespace A283976

/-- `A295515(2*n+1)-A283978(n)` -/
def P1030203504971703373.Spec : Prop :=
  ∀ n, P1030203504971703373.a n = A283976 n

end A283976

/-! ## A283976.P7284287516677742038

`A038572(A283977(2*n)+A283977(n))`
-/

namespace A283976.P7284287516677742038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A283977 (2 * n) + A283977 n).toNat

end

end A283976.P7284287516677742038

namespace A283976

/-- `A038572(A283977(2*n)+A283977(n))` -/
def P7284287516677742038.Spec : Prop :=
  ∀ n, P7284287516677742038.a n = A283976 n

end A283976

/-! ## A283976.P11902753331534485348

`A284556(2*n)+A284556(n)-A283978(n)`
-/

namespace A283976.P11902753331534485348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (2 * n) + A284556 n - A283978 n

end

end A283976.P11902753331534485348

namespace A283976

/-- `A284556(2*n)+A284556(n)-A283978(n)` -/
def P11902753331534485348.Spec : Prop :=
  ∀ n, P11902753331534485348.a n = A283976 n

end A283976

/-! ## A283976.P6458428780390052605

`A287896(2*n+1)-A287896((n+1)/and(n+1, -(n+1)))-A283978(n)`
-/

namespace A283976.P6458428780390052605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (2 * n + 1) - A287896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat - A283978 n

end

end A283976.P6458428780390052605

namespace A283976

/-- `A287896(2*n+1)-A287896((n+1)/and(n+1, -(n+1)))-A283978(n)` -/
def P6458428780390052605.Spec : Prop :=
  ∀ n, P6458428780390052605.a n = A283976 n

end A283976

/-!
# A283977: a(2n) = A002487(n), a(2n+1) = A002487(n) XOR A002487(n+1), where XOR is bitwise-xor (A003987).

The programs for A283977, the canonical program `A283977.P3008186910418949964` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283977 has offset 0).

The definition of A283977 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, A283978, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283977.P3008186910418949964

`A283976(n)-A283978(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A283977

/-- `A283976(n)-A283978(n)` -/
def P3008186910418949964.Spec : Prop :=
  ∀ n, P3008186910418949964.a n = A283977 n

theorem P3008186910418949964.correct : P3008186910418949964.Spec := by
  intro n
  simp only [A283977]

end A283977

/-! ## A283977.P7137275746456562146

`A002487(n)-2*A283978(n)`
-/

namespace A283977.P7137275746456562146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n - 2 * A283978 n

end

end A283977.P7137275746456562146

namespace A283977

/-- `A002487(n)-2*A283978(n)` -/
def P7137275746456562146.Spec : Prop :=
  ∀ n, P7137275746456562146.a n = A283977 n

end A283977

/-! ## A283977.P13126896037000742641

`2*A283976(n)-A002487(n)`
-/

namespace A283977.P13126896037000742641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283976 n - A002487 n

end

end A283977.P13126896037000742641

namespace A283977

/-- `2*A283976(n)-A002487(n)` -/
def P13126896037000742641.Spec : Prop :=
  ∀ n, P13126896037000742641.a n = A283977 n

end A283977

/-! ## A283977.P18109206828430405915

`2*A283976(n)-A283976(A109043(n))`
-/

namespace A283977.P18109206828430405915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283976 n - A283976 (A109043 n).toNat

end

end A283977.P18109206828430405915

namespace A283977

/-- `2*A283976(n)-A283976(A109043(n))` -/
def P18109206828430405915.Spec : Prop :=
  ∀ n, P18109206828430405915.a n = A283977 n

end A283977

/-! ## A283977.P16981196708635834691

`2*A283976(n)-A283976(A005843(n))`
-/

namespace A283977.P16981196708635834691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283976 n - A283976 (A005843 n).toNat

end

end A283977.P16981196708635834691

namespace A283977

/-- `2*A283976(n)-A283976(A005843(n))` -/
def P16981196708635834691.Spec : Prop :=
  ∀ n, P16981196708635834691.a n = A283977 n

end A283977

/-! ## A283977.P15914110958430393842

`A004277(A283976(n))-A283976(A004277(n))`
-/

namespace A283977.P15914110958430393842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A283976 n).toNat - A283976 (A004277 n).toNat

end

end A283977.P15914110958430393842

namespace A283977

/-- `A004277(A283976(n))-A283976(A004277(n))` -/
def P15914110958430393842.Spec : Prop :=
  ∀ n, P15914110958430393842.a n = A283977 n

end A283977

/-! ## A283977.P14730282854591205790

`A005843(A283976(n))-A283976(A005843(n))`
-/

namespace A283977.P14730282854591205790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A283976 n).toNat - A283976 (A005843 n).toNat

end

end A283977.P14730282854591205790

namespace A283977

/-- `A005843(A283976(n))-A283976(A005843(n))` -/
def P14730282854591205790.Spec : Prop :=
  ∀ n, P14730282854591205790.a n = A283977 n

end A283977

/-! ## A283977.P4826701846605779248

`2*A283976(n)-A283976(A109045(n))`
-/

namespace A283977.P4826701846605779248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283976 n - A283976 (A109045 n).toNat

end

end A283977.P4826701846605779248

namespace A283977

/-- `2*A283976(n)-A283976(A109045(n))` -/
def P4826701846605779248.Spec : Prop :=
  ∀ n, P4826701846605779248.a n = A283977 n

end A283977

/-! ## A283977.P11215690646682108504

`2*A283976(n)-A283976(A008586(n))`
-/

namespace A283977.P11215690646682108504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283976 n - A283976 (A008586 n).toNat

end

end A283977.P11215690646682108504

namespace A283977

/-- `2*A283976(n)-A283976(A008586(n))` -/
def P11215690646682108504.Spec : Prop :=
  ∀ n, P11215690646682108504.a n = A283977 n

end A283977

/-! ## A283977.P10183306181796212932

`2*A283976(n)-A283976(A008590(n))`
-/

namespace A283977.P10183306181796212932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283976 n - A283976 (A008590 n).toNat

end

end A283977.P10183306181796212932

namespace A283977

/-- `2*A283976(n)-A283976(A008590(n))` -/
def P10183306181796212932.Spec : Prop :=
  ∀ n, P10183306181796212932.a n = A283977 n

end A283977

/-! ## A283977.P9596749029708289521

`2*A283976(n)-A283976(A008598(n))`
-/

namespace A283977.P9596749029708289521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283976 n - A283976 (A008598 n).toNat

end

end A283977.P9596749029708289521

namespace A283977

/-- `2*A283976(n)-A283976(A008598(n))` -/
def P9596749029708289521.Spec : Prop :=
  ∀ n, P9596749029708289521.a n = A283977 n

end A283977

/-! ## A283977.P11989843549938820339

`2*A283976(n)-A283976(A174312(n))`
-/

namespace A283977.P11989843549938820339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283976 n - A283976 (A174312 n).toNat

end

end A283977.P11989843549938820339

namespace A283977

/-- `2*A283976(n)-A283976(A174312(n))` -/
def P11989843549938820339.Spec : Prop :=
  ∀ n, P11989843549938820339.a n = A283977 n

end A283977

/-! ## A283977.P11920221596426129307

`2*A283976(n)-A283976(A335063(n))`
-/

namespace A283977.P11920221596426129307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283976 n - A283976 (A335063 n).toNat

end

end A283977.P11920221596426129307

namespace A283977

/-- `2*A283976(n)-A283976(A335063(n))` -/
def P11920221596426129307.Spec : Prop :=
  ∀ n, P11920221596426129307.a n = A283977 n

end A283977

/-!
# A283978: a(2n) = 0, a(2n+1) = A002487(n) AND A002487(n+1), where AND is bitwise-and (A004198).

The programs for A283978, the canonical program `A283978.P12954739794367481226` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283978 has offset 0).

The definition of A283978 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A283976, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283978.P12954739794367481226

`A002487(n)-A283976(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A283978

/-- `A002487(n)-A283976(n)` -/
def P12954739794367481226.Spec : Prop :=
  ∀ n, P12954739794367481226.a n = A283978 n

theorem P12954739794367481226.correct : P12954739794367481226.Spec := by
  intro n
  simp only [A283978]

end A283978

/-! ## A283978.P15853629407000974481

`A283976(n)-A283977(n)`
-/

namespace A283978.P15853629407000974481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 n - A283977 n

end

end A283978.P15853629407000974481

namespace A283978

/-- `A283976(n)-A283977(n)` -/
def P15853629407000974481.Spec : Prop :=
  ∀ n, P15853629407000974481.a n = A283978 n

end A283978

/-! ## A283978.P11605397543527908330

`(A002487(n)-A283977(n))/2`
-/

namespace A283978.P11605397543527908330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 n - A283977 n : ℚ) / 2

end

end A283978.P11605397543527908330

namespace A283978

/-- `(A002487(n)-A283977(n))/2` -/
def P11605397543527908330.Spec : Prop :=
  ∀ n, P11605397543527908330.a n = (A283978 n : ℚ)

end A283978

/-! ## A283978.P2426762255852998601

`A283988(A152271(n))`
-/

namespace A283978.P2426762255852998601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283988 (A152271 n).toNat

end

end A283978.P2426762255852998601

namespace A283978

/-- `A283988(A152271(n))` -/
def P2426762255852998601.Spec : Prop :=
  ∀ n, P2426762255852998601.a n = A283978 n

end A283978

/-! ## A283978.P3235112252679063117

`A283988(gcd(n+1, A001057(n)))`
-/

namespace A283978.P3235112252679063117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283988 (Int.gcd (n + 1 : ℤ) (A001057 n))

end

end A283978.P3235112252679063117

namespace A283978

/-- `A283988(gcd(n+1, A001057(n)))` -/
def P3235112252679063117.Spec : Prop :=
  ∀ n, P3235112252679063117.a n = A283978 n

end A283978

/-! ## A283978.P14807166131296088587

`n-(A284013(n)+A283976(n))`
-/

namespace A283978.P14807166131296088587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A284013 n + A283976 n)

end

end A283978.P14807166131296088587

namespace A283978

/-- `n-(A284013(n)+A283976(n))` -/
def P14807166131296088587.Spec : Prop :=
  ∀ n, P14807166131296088587.a n = A283978 n

end A283978

/-! ## A283978.P13280185943630218982

`∑{d}[n, A317839(#)]-A283976(n)`
-/

namespace A283978.P13280185943630218982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317839 d - A283976 n

end

end A283978.P13280185943630218982

namespace A283978

/-- `∑{d}[n, A317839(#)]-A283976(n)` -/
def P13280185943630218982.Spec : Prop :=
  ∀ n, P13280185943630218982.a n = A283978 n

end A283978

/-! ## A283978.P13818897655925922029

`A324337(xor(n, floor(n/2)))-A283976(n)`
-/

namespace A283978.P13818897655925922029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat - A283976 n

end

end A283978.P13818897655925922029

namespace A283978

/-- `A324337(xor(n, floor(n/2)))-A283976(n)` -/
def P13818897655925922029.Spec : Prop :=
  ∀ n, P13818897655925922029.a n = A283978 n

end A283978

/-! ## A283978.P3341441461434848456

`∑{d}[n+1, A063524(#-1)*A283988((n+1)/#)]`
-/

namespace A283978.P3341441461434848456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063524 (d - 1) * A283988 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A283978.P3341441461434848456

namespace A283978

/-- `∑{d}[n+1, A063524(#-1)*A283988((n+1)/#)]` -/
def P3341441461434848456.Spec : Prop :=
  ∀ n, P3341441461434848456.a n = A283978 n

end A283978

/-! ## A283978.P12938456977631883723

`A038572(A002487(n)-A283977(n))`
-/

namespace A283978.P12938456977631883723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A002487 n - A283977 n).toNat

end

end A283978.P12938456977631883723

namespace A283978

/-- `A038572(A002487(n)-A283977(n))` -/
def P12938456977631883723.Spec : Prop :=
  ∀ n, P12938456977631883723.a n = A283978 n

end A283978

/-! ## A283978.P5477092288552647707

`A324338(A233280(n))%(n+1)-A283976(n)`
-/

namespace A283978.P5477092288552647707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324338 (A233280 n).toNat) (n + 1 : ℤ) - A283976 n

end

end A283978.P5477092288552647707

namespace A283978

/-- `A324338(A233280(n))%(n+1)-A283976(n)` -/
def P5477092288552647707.Spec : Prop :=
  ∀ n, P5477092288552647707.a n = A283978 n

end A283978

/-! ## A283978.P16886971690964097841

`or(A283977(n), A295515(n+1))-A283977(n)`
-/

namespace A283978.P16886971690964097841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283977 n) (A295515 (n + 1)) - A283977 n

end

end A283978.P16886971690964097841

namespace A283978

/-- `or(A283977(n), A295515(n+1))-A283977(n)` -/
def P16886971690964097841.Spec : Prop :=
  ∀ n, P16886971690964097841.a n = A283978 n

end A283978

/-! ## A283978.P3791192249425597840

`A287896(n+1)-(A288003(n+1)+A283976(n))`
-/

namespace A283978.P3791192249425597840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (n + 1) - (A288003 (n + 1) + A283976 n)

end

end A283978.P3791192249425597840

namespace A283978

/-- `A287896(n+1)-(A288003(n+1)+A283976(n))` -/
def P3791192249425597840.Spec : Prop :=
  ∀ n, P3791192249425597840.a n = A283978 n

end A283978

/-! ## A283978.P13486945190945648863

`A283988(A057979(n+2))`
-/

namespace A283978.P13486945190945648863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283988 (A057979 (n + 2)).toNat

end

end A283978.P13486945190945648863

namespace A283978

/-- `A283988(A057979(n+2))` -/
def P13486945190945648863.Spec : Prop :=
  ∀ n, P13486945190945648863.a n = A283978 n

end A283978

/-! ## A283978.P14215402197991702245

`A283976(A109043(n))-A283976(n)`
-/

namespace A283978.P14215402197991702245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (A109043 n).toNat - A283976 n

end

end A283978.P14215402197991702245

namespace A283978

/-- `A283976(A109043(n))-A283976(n)` -/
def P14215402197991702245.Spec : Prop :=
  ∀ n, P14215402197991702245.a n = A283978 n

end A283978

/-! ## A283978.P4163611666011031021

`A283976(2*n)-A283976(n)`
-/

namespace A283978.P4163611666011031021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n) - A283976 n

end

end A283978.P4163611666011031021

namespace A283978

/-- `A283976(2*n)-A283976(n)` -/
def P4163611666011031021.Spec : Prop :=
  ∀ n, P4163611666011031021.a n = A283978 n

end A283978

/-! ## A283978.P244388679413335515

`A038572(A283977(2*n)-A283977(n))`
-/

namespace A283978.P244388679413335515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A283977 (2 * n) - A283977 n).toNat

end

end A283978.P244388679413335515

namespace A283978

/-- `A038572(A283977(2*n)-A283977(n))` -/
def P244388679413335515.Spec : Prop :=
  ∀ n, P244388679413335515.a n = A283978 n

end A283978

/-!
# A283979: a(n) = (n XOR A264977(n))/4, where XOR is bitwise-xor (A003987).

The programs for A283979, there is no canonical definition to state claims against.
-/

/-! ## A283979.P5663137655212677088

`xor(n, A264977(n))/4`
-/

namespace A283979.P5663137655212677088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (A264977 n) : ℚ) / 4

end

end A283979.P5663137655212677088

/-! ## A283979.P9994888863281102434

`xor(A002265(n), A002265(A264977(n)))`
-/

namespace A283979.P9994888863281102434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002265 n) (A002265 (A264977 n).toNat)

end

end A283979.P9994888863281102434

/-! ## A283979.P15125655998204976902

`A002265(xor(n, A264977(n)))`
-/

namespace A283979.P15125655998204976902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.xor (n : ℤ) (A264977 n)).toNat

end

end A283979.P15125655998204976902

/-! ## A283979.P1103984617003627522

`A110657(xor(n, A264977(n)))`
-/

namespace A283979.P1103984617003627522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (Int.xor (n : ℤ) (A264977 n)).toNat

end

end A283979.P1103984617003627522

/-! ## A283979.P15099224230213270111

`A316631(xor(n, A264977(n)))`
-/

namespace A283979.P15099224230213270111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 (Int.xor (n : ℤ) (A264977 n)).toNat

end

end A283979.P15099224230213270111

/-! ## A283979.P18335917133225981131

`A316631(xor(n, n-A265397(n)))`
-/

namespace A283979.P18335917133225981131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 (Int.xor (n : ℤ) ((n : ℤ) - A265397 n)).toNat

end

end A283979.P18335917133225981131

/-! ## A283979.P13942527681592750154

`A316631(xor(n, -(A265397(n)+A001489(n))))`
-/

namespace A283979.P13942527681592750154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 (Int.xor (n : ℤ) (-(A265397 n + A001489 n))).toNat

end

end A283979.P13942527681592750154

/-!
# A283980: a(n) = A003961(n)*A006519(n).

The programs for A283980, the canonical program `A283980.P7159182790163433340` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283980 has offset 1).

The definition of A283980 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283980.P7159182790163433340

`A003961(n+1)*A006519(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A283980

/-- `A003961(n+1)*A006519(n+1)` -/
def P7159182790163433340.Spec : Prop :=
  ∀ n, P7159182790163433340.a n = A283980 (n + 1)

theorem P7159182790163433340.correct : P7159182790163433340.Spec := by
  intro n
  simp only [A283980, Nat.add_sub_cancel]

end A283980

/-! ## A283980.P4062325483010605826

`lcm(Δ[A003188(n)], A003961(n+1))`
-/

namespace A283980.P4062325483010605826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A003961 (n + 1))

end

end A283980.P4062325483010605826

namespace A283980

/-- `lcm(Δ[A003188(n)], A003961(n+1))` -/
def P4062325483010605826.Spec : Prop :=
  ∀ n, (P4062325483010605826.a n : ℤ) = A283980 (n + 1)

end A283980

/-! ## A283980.P10785350463901319300

`(A253885(n)+1)*A006519(n+1)`
-/

namespace A283980.P10785350463901319300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A253885 n + 1) * A006519 (n + 1)

end

end A283980.P10785350463901319300

namespace A283980

/-- `(A253885(n)+1)*A006519(n+1)` -/
def P10785350463901319300.Spec : Prop :=
  ∀ n, P10785350463901319300.a n = A283980 (n + 1)

end A283980

/-! ## A283980.P2299574313249607373

`A191002(n+1)/A000265(n+1)`
-/

namespace A283980.P2299574313249607373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191002 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ)

end

end A283980.P2299574313249607373

namespace A283980

/-- `A191002(n+1)/A000265(n+1)` -/
def P2299574313249607373.Spec : Prop :=
  ∀ n, P2299574313249607373.a n = (A283980 (n + 1) : ℚ)

end A283980

/-! ## A283980.P778509988374771113

`(A243501(n+1)-1)*A006519(n+1)`
-/

namespace A283980.P778509988374771113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243501 (n + 1) - 1) * A006519 (n + 1)

end

end A283980.P778509988374771113

namespace A283980

/-- `(A243501(n+1)-1)*A006519(n+1)` -/
def P778509988374771113.Spec : Prop :=
  ∀ n, P778509988374771113.a n = A283980 (n + 1)

end A283980

/-! ## A283980.P2568552020083454576

`2^A007814(n+1)*A003961(n+1)`
-/

namespace A283980.P2568552020083454576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (A003961 (n + 1) : ℚ)

end

end A283980.P2568552020083454576

namespace A283980

/-- `2^A007814(n+1)*A003961(n+1)` -/
def P2568552020083454576.Spec : Prop :=
  ∀ n, P2568552020083454576.a n = (A283980 (n + 1) : ℚ)

end A283980

/-! ## A283980.P10122934328980546543

`gcd(n+1, A062383(n))*A003961(n+1)`
-/

namespace A283980.P10122934328980546543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A062383 n) : ℤ) * A003961 (n + 1)

end

end A283980.P10122934328980546543

namespace A283980

/-- `gcd(n+1, A062383(n))*A003961(n+1)` -/
def P10122934328980546543.Spec : Prop :=
  ∀ n, P10122934328980546543.a n = A283980 (n + 1)

end A283980

/-! ## A283980.P1456249987386664993

`(n+1)/A000265(n+1)*A003961(n+1)`
-/

namespace A283980.P1456249987386664993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000265 (n + 1) : ℚ) * (A003961 (n + 1) : ℚ)

end

end A283980.P1456249987386664993

namespace A283980

/-- `(n+1)/A000265(n+1)*A003961(n+1)` -/
def P1456249987386664993.Spec : Prop :=
  ∀ n, P1456249987386664993.a n = (A283980 (n + 1) : ℚ)

end A283980

/-! ## A283980.P16087587395530705881

`A000010(xor(n, n+1)+1)*A003961(n+1)`
-/

namespace A283980.P16087587395530705881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.xor n (n + 1) + 1) * A003961 (n + 1)

end

end A283980.P16087587395530705881

namespace A283980

/-- `A000010(xor(n, n+1)+1)*A003961(n+1)` -/
def P16087587395530705881.Spec : Prop :=
  ∀ n, P16087587395530705881.a n = A283980 (n + 1)

end A283980

/-! ## A283980.P12628438199198173127

`A000079(A007814(n+1))*A003961(n+1)`
-/

namespace A283980.P12628438199198173127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1)).toNat * A003961 (n + 1)

end

end A283980.P12628438199198173127

namespace A283980

/-- `A000079(A007814(n+1))*A003961(n+1)` -/
def P12628438199198173127.Spec : Prop :=
  ∀ n, P12628438199198173127.a n = A283980 (n + 1)

end A283980

/-! ## A283980.P14424692840077297517

`A003961(n+1)*A065331(A038502(n+1))`
-/

namespace A283980.P14424692840077297517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A065331 (A038502 (n + 1)).toNat

end

end A283980.P14424692840077297517

namespace A283980

/-- `A003961(n+1)*A065331(A038502(n+1))` -/
def P14424692840077297517.Spec : Prop :=
  ∀ n, P14424692840077297517.a n = A283980 (n + 1)

end A283980

/-! ## A283980.P7192580448047949092

`A191002(n+1)/A003961(A064989(n+1))`
-/

namespace A283980.P7192580448047949092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191002 (n + 1) : ℚ) / (A003961 (A064989 (n + 1)).toNat : ℚ)

end

end A283980.P7192580448047949092

namespace A283980

/-- `A191002(n+1)/A003961(A064989(n+1))` -/
def P7192580448047949092.Spec : Prop :=
  ∀ n, P7192580448047949092.a n = (A283980 (n + 1) : ℚ)

end A283980

/-! ## A283980.P16479161289590613441

`A000079(1-Δ[A000120(n)])*A003961(n+1)`
-/

namespace A283980.P16479161289590613441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (1 - (f1 (n + 1) - f1 n)).toNat * A003961 (n + 1)

end

end A283980.P16479161289590613441

namespace A283980

/-- `A000079(1-Δ[A000120(n)])*A003961(n+1)` -/
def P16479161289590613441.Spec : Prop :=
  ∀ n, P16479161289590613441.a n = A283980 (n + 1)

end A283980

/-! ## A283980.P1010416130136258302

`A000079(A001511(n+1)-1)*A003961(n+1)`
-/

namespace A283980.P1010416130136258302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001511 (n + 1) - 1).toNat * A003961 (n + 1)

end

end A283980.P1010416130136258302

namespace A283980

/-- `A000079(A001511(n+1)-1)*A003961(n+1)` -/
def P1010416130136258302.Spec : Prop :=
  ∀ n, P1010416130136258302.a n = A283980 (n + 1)

end A283980

/-! ## A283980.P17481998098906297060

`A002131(n+1)/A000593(n+1)*A003961(n+1)`
-/

namespace A283980.P17481998098906297060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002131 (n + 1) : ℚ) / (A000593 (n + 1) : ℚ) * (A003961 (n + 1) : ℚ)

end

end A283980.P17481998098906297060

namespace A283980

/-- `A002131(n+1)/A000593(n+1)*A003961(n+1)` -/
def P17481998098906297060.Spec : Prop :=
  ∀ n, P17481998098906297060.a n = (A283980 (n + 1) : ℚ)

end A283980

/-! ## A283980.P6733396412864341068

`A003961(n+1)/A030101(n+1)*A057889(n+1)`
-/

namespace A283980.P6733396412864341068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A030101 (n + 1) : ℚ) * (A057889 (n + 1) : ℚ)

end

end A283980.P6733396412864341068

namespace A283980

/-- `A003961(n+1)/A030101(n+1)*A057889(n+1)` -/
def P6733396412864341068.Spec : Prop :=
  ∀ n, P6733396412864341068.a n = (A283980 (n + 1) : ℚ)

end A283980

/-! ## A283980.P17087625784894981054

`A003961(n+1)/A064989(n+1)*A079707(n+1)`
-/

namespace A283980.P17087625784894981054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A064989 (n + 1) : ℚ) * (A079707 (n + 1) : ℚ)

end

end A283980.P17087625784894981054

namespace A283980

/-- `A003961(n+1)/A064989(n+1)*A079707(n+1)` -/
def P17087625784894981054.Spec : Prop :=
  ∀ n, P17087625784894981054.a n = (A283980 (n + 1) : ℚ)

end A283980

/-! ## A283980.P9115689252516559868

`A003961(n+1)*A299150(A003961(n+1))/A299150(n+1)`
-/

namespace A283980.P9115689252516559868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) * A299150 (A003961 (n + 1)).toNat : ℚ) / (A299150 (n + 1) : ℚ)

end

end A283980.P9115689252516559868

namespace A283980

/-- `A003961(n+1)*A299150(A003961(n+1))/A299150(n+1)` -/
def P9115689252516559868.Spec : Prop :=
  ∀ n, P9115689252516559868.a n = (A283980 (n + 1) : ℚ)

end A283980

/-!
# A283981: a(n) = A029931(n) - A280700(n).

The programs for A283981, the canonical program `A283981.P14600652629483997425` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283981 has offset 0).

The definition of A283981 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283981.P18336634112155807762

`A283982(n)+A124757(n)`
-/

namespace A283981.P18336634112155807762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283982 n + A124757 n

end

end A283981.P18336634112155807762

namespace A283981

/-- `A283982(n)+A124757(n)` -/
def P18336634112155807762.Spec : Prop :=
  ∀ n, P18336634112155807762.a n = A283981 n

end A283981

/-! ## A283981.P14600652629483997425

`A029931(n)-A280700(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A283981

/-- `A029931(n)-A280700(n)` -/
def P14600652629483997425.Spec : Prop :=
  ∀ n, P14600652629483997425.a n = A283981 n

theorem P14600652629483997425.correct : P14600652629483997425.Spec := by
  intro n
  simp only [A283981]

end A283981

/-! ## A283981.P14748432958385348286

`log2(A029930(n))-A280700(n)`
-/

namespace A283981.P14748432958385348286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A029930 n : ℝ) - (A280700 n : ℝ)

end

end A283981.P14748432958385348286

namespace A283981

/-- `log2(A029930(n))-A280700(n)` -/
def P14748432958385348286.Spec : Prop :=
  ∀ n, P14748432958385348286.a n = (A283981 n : ℝ)

end A283981

/-! ## A283981.P17583264465322898642

`A283982(n)+A073642(A006257(n))`
-/

namespace A283981.P17583264465322898642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283982 n + A073642 (A006257 n).toNat

end

end A283981.P17583264465322898642

namespace A283981

/-- `A283982(n)+A073642(A006257(n))` -/
def P17583264465322898642.Spec : Prop :=
  ∀ n, P17583264465322898642.a n = A283981 n

end A283981

/-! ## A283981.P8160690239849539462

`A124757(n)+A023416(A324378(n))`
-/

namespace A283981.P8160690239849539462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 n + A023416 (A324378 n).toNat

end

end A283981.P8160690239849539462

namespace A283981

/-- `A124757(n)+A023416(A324378(n))` -/
def P8160690239849539462.Spec : Prop :=
  ∀ n, P8160690239849539462.a n = A283981 n

end A283981

/-! ## A283981.P11970094687989211468

`A029931(n)-A000120(A005187(n))`
-/

namespace A283981.P11970094687989211468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A000120 (A005187 n).toNat

end

end A283981.P11970094687989211468

namespace A283981

/-- `A029931(n)-A000120(A005187(n))` -/
def P11970094687989211468.Spec : Prop :=
  ∀ n, P11970094687989211468.a n = A283981 n

end A283981

/-! ## A283981.P6092199672798626328

`A029931(n)-A000120(eq[1, A079559(n)])`
-/

namespace A283981.P6092199672798626328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283981.P6092199672798626328

namespace A283981

/-- `A029931(n)-A000120(eq[1, A079559(n)])` -/
def P6092199672798626328.Spec : Prop :=
  ∀ n, P6092199672798626328.a n = A283981 n

end A283981

/-! ## A283981.P3338904008710171189

`A029931(n)-A000120(A011371(n)+n)`
-/

namespace A283981.P3338904008710171189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A000120 (A011371 n + (n : ℤ)).toNat

end

end A283981.P3338904008710171189

namespace A283981

/-- `A029931(n)-A000120(A011371(n)+n)` -/
def P3338904008710171189.Spec : Prop :=
  ∀ n, P3338904008710171189.a n = A283981 n

end A283981

/-! ## A283981.P474081199743639172

`A029931(n)-A000120(comp[A055938(n+1)])`
-/

namespace A283981.P474081199743639172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A000120 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A283981.P474081199743639172

namespace A283981

/-- `A029931(n)-A000120(comp[A055938(n+1)])` -/
def P474081199743639172.Spec : Prop :=
  ∀ n, P474081199743639172.a n = A283981 n

end A283981

/-! ## A283981.P9485091408102178536

`A029931(n)-A000120(2*n-A000120(n))`
-/

namespace A283981.P9485091408102178536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A000120 ((2 * n : ℤ) - A000120 n).toNat

end

end A283981.P9485091408102178536

namespace A283981

/-- `A029931(n)-A000120(2*n-A000120(n))` -/
def P9485091408102178536.Spec : Prop :=
  ∀ n, P9485091408102178536.a n = A283981 n

end A283981

/-! ## A283981.P8957304585649049641

`A029931(n)-A000120(∑[A089080(n+1)-1])`
-/

namespace A283981.P8957304585649049641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A000120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283981.P8957304585649049641

namespace A283981

/-- `A029931(n)-A000120(∑[A089080(n+1)-1])` -/
def P8957304585649049641.Spec : Prop :=
  ∀ n, P8957304585649049641.a n = A283981 n

end A283981

/-! ## A283981.P10176775883002185424

`A000120(n)+A073642(n)-A000120(A005187(n))`
-/

namespace A283981.P10176775883002185424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A073642 n - A000120 (A005187 n).toNat)

end

end A283981.P10176775883002185424

namespace A283981

/-- `A000120(n)+A073642(n)-A000120(A005187(n))` -/
def P10176775883002185424.Spec : Prop :=
  ∀ n, P10176775883002185424.a n = A283981 n

end A283981

/-! ## A283981.P15268755135832779629

`A073642(2*n)-A280700(n)`
-/

namespace A283981.P15268755135832779629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * n) - A280700 n

end

end A283981.P15268755135832779629

namespace A283981

/-- `A073642(2*n)-A280700(n)` -/
def P15268755135832779629.Spec : Prop :=
  ∀ n, P15268755135832779629.a n = A283981 n

end A283981

/-! ## A283981.P10814942306317047033

`A029931(n)-A352784(2*n)`
-/

namespace A283981.P10814942306317047033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A352784 (2 * n)

end

end A283981.P10814942306317047033

namespace A283981

/-- `A029931(n)-A352784(2*n)` -/
def P10814942306317047033.Spec : Prop :=
  ∀ n, P10814942306317047033.a n = A283981 n

end A283981

/-! ## A283981.P2085307443967769051

`A073642(2*n)-A352784(2*n)`
-/

namespace A283981.P2085307443967769051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * n) - A352784 (2 * n)

end

end A283981.P2085307443967769051

namespace A283981

/-- `A073642(2*n)-A352784(2*n)` -/
def P2085307443967769051.Spec : Prop :=
  ∀ n, P2085307443967769051.a n = A283981 n

end A283981

/-! ## A283981.P12992690333695154299

`A029931(n)-A000120(A011371(2*n))`
-/

namespace A283981.P12992690333695154299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A000120 (A011371 (2 * n)).toNat

end

end A283981.P12992690333695154299

namespace A283981

/-- `A029931(n)-A000120(A011371(2*n))` -/
def P12992690333695154299.Spec : Prop :=
  ∀ n, P12992690333695154299.a n = A283981 n

end A283981

/-! ## A283981.P6840785013421633342

`A073642(2*n)-A000120(A005187(n))`
-/

namespace A283981.P6840785013421633342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * n) - A000120 (A005187 n).toNat

end

end A283981.P6840785013421633342

namespace A283981

/-- `A073642(2*n)-A000120(A005187(n))` -/
def P6840785013421633342.Spec : Prop :=
  ∀ n, P6840785013421633342.a n = A283981 n

end A283981

/-!
# A283982: a(0) = 0, and for n > 0, a(n) = A070939(n) - A280700(n).

The programs for A283982, the canonical program `A283982.P10832225324888640207` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283982 has offset 0).

The definition of A283982 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124757, A283981, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283982.P10832225324888640207

`A283981(n)-A124757(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A283982

/-- `A283981(n)-A124757(n)` -/
def P10832225324888640207.Spec : Prop :=
  ∀ n, P10832225324888640207.a n = A283982 n

theorem P10832225324888640207.correct : P10832225324888640207.Spec := by
  intro n
  simp only [A283982]

end A283982

/-! ## A283982.P5705709587190239613

`log2(A062383(n))-A280700(n)`
-/

namespace A283982.P5705709587190239613
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A062383 n : ℝ) - (A280700 n : ℝ)

end

end A283982.P5705709587190239613

namespace A283982

/-- `log2(A062383(n))-A280700(n)` -/
def P5705709587190239613.Spec : Prop :=
  ∀ n, P5705709587190239613.a n = (A283982 n : ℝ)

end A283982

/-! ## A283982.P6407606249801452538

`A029837(n+1)-A280700(n)`
-/

namespace A283982.P6407606249801452538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A280700 n

end

end A283982.P6407606249801452538

namespace A283982

/-- `A029837(n+1)-A280700(n)` -/
def P6407606249801452538.Spec : Prop :=
  ∀ n, P6407606249801452538.a n = A283982 n

end A283982

/-! ## A283982.P10585150391582065057

`A283981(n)-A073642(A006257(n))`
-/

namespace A283982.P10585150391582065057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283981 n - A073642 (A006257 n).toNat

end

end A283982.P10585150391582065057

namespace A283982

/-- `A283981(n)-A073642(A006257(n))` -/
def P10585150391582065057.Spec : Prop :=
  ∀ n, P10585150391582065057.a n = A283982 n

end A283982

/-! ## A283982.P3321453008546240280

`A280700(A053644(n))-A280700(n)`
-/

namespace A283982.P3321453008546240280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280700 (A053644 n).toNat - A280700 n

end

end A283982.P3321453008546240280

namespace A283982

/-- `A280700(A053644(n))-A280700(n)` -/
def P3321453008546240280.Spec : Prop :=
  ∀ n, P3321453008546240280.a n = A283982 n

end A283982

/-! ## A283982.P235841044476599399

`A029931(n)-(A280700(n)+A124757(n))`
-/

namespace A283982.P235841044476599399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - (A280700 n + A124757 n)

end

end A283982.P235841044476599399

namespace A283982

/-- `A029931(n)-(A280700(n)+A124757(n))` -/
def P235841044476599399.Spec : Prop :=
  ∀ n, P235841044476599399.a n = A283982 n

end A283982

/-! ## A283982.P3021932690376829161

`A000120(A003817(n))+A283981(n)-A029931(n)`
-/

namespace A283982.P3021932690376829161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003817 n).toNat + (A283981 n - A029931 n)

end

end A283982.P3021932690376829161

namespace A283982

/-- `A000120(A003817(n))+A283981(n)-A029931(n)` -/
def P3021932690376829161.Spec : Prop :=
  ∀ n, P3021932690376829161.a n = A283982 n

end A283982

/-! ## A283982.P13574001824018336911

`A086784(A101925(n))`
-/

namespace A283982.P13574001824018336911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086784 (A101925 n).toNat

end

end A283982.P13574001824018336911

namespace A283982

/-- `A086784(A101925(n))` -/
def P13574001824018336911.Spec : Prop :=
  ∀ n, P13574001824018336911.a n = A283982 n

end A283982

/-! ## A283982.P7188170837232250991

`A023416(A324378(n))`
-/

namespace A283982.P7188170837232250991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A324378 n).toNat

end

end A283982.P7188170837232250991

namespace A283982

/-- `A023416(A324378(n))` -/
def P7188170837232250991.Spec : Prop :=
  ∀ n, P7188170837232250991.a n = A283982 n

end A283982

/-! ## A283982.P3309165343359018496

`A086784(2*n+1-A000120(n))`
-/

namespace A283982.P3309165343359018496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086784 ((2 * n + 1 : ℤ) - A000120 n).toNat

end

end A283982.P3309165343359018496

namespace A283982

/-- `A086784(2*n+1-A000120(n))` -/
def P3309165343359018496.Spec : Prop :=
  ∀ n, P3309165343359018496.a n = A283982 n

end A283982

/-! ## A283982.P791521243803196251

`ceil(log2(n+1)-A000120(A005187(n)))`
-/

namespace A283982.P791521243803196251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ) - (A000120 (A005187 n).toNat : ℝ)⌉

end

end A283982.P791521243803196251

namespace A283982

/-- `ceil(log2(n+1)-A000120(A005187(n)))` -/
def P791521243803196251.Spec : Prop :=
  ∀ n, P791521243803196251.a n = A283982 n

end A283982

/-! ## A283982.P10456083672646090630

`A000120(A003817(n))-A000120(2*n-A000120(n))`
-/

namespace A283982.P10456083672646090630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003817 n).toNat - A000120 ((2 * n : ℤ) - A000120 n).toNat

end

end A283982.P10456083672646090630

namespace A283982

/-- `A000120(A003817(n))-A000120(2*n-A000120(n))` -/
def P10456083672646090630.Spec : Prop :=
  ∀ n, P10456083672646090630.a n = A283982 n

end A283982

/-! ## A283982.P12199834898978961765

`log2(A062383(n))-A352784(2*n)`
-/

namespace A283982.P12199834898978961765
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A062383 n : ℝ) - (A352784 (2 * n) : ℝ)

end

end A283982.P12199834898978961765

namespace A283982

/-- `log2(A062383(n))-A352784(2*n)` -/
def P12199834898978961765.Spec : Prop :=
  ∀ n, P12199834898978961765.a n = (A283982 n : ℝ)

end A283982

/-! ## A283982.P3441699409333831925

`A000120(A003817(n))-A352784(2*n)`
-/

namespace A283982.P3441699409333831925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003817 n).toNat - A352784 (2 * n)

end

end A283982.P3441699409333831925

namespace A283982

/-- `A000120(A003817(n))-A352784(2*n)` -/
def P3441699409333831925.Spec : Prop :=
  ∀ n, P3441699409333831925.a n = A283982 n

end A283982

/-! ## A283982.P1624596020101788046

`log2(A062383(n))-A000120(A011371(2*n))`
-/

namespace A283982.P1624596020101788046
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A062383 n : ℝ) - (A000120 (A011371 (2 * n)).toNat : ℝ)

end

end A283982.P1624596020101788046

namespace A283982

/-- `log2(A062383(n))-A000120(A011371(2*n))` -/
def P1624596020101788046.Spec : Prop :=
  ∀ n, P1624596020101788046.a n = (A283982 n : ℝ)

end A283982

/-! ## A283982.P9456539015121625961

`∏{e}[2*n+1-A006257(n), #]-A028310(A352784(2*n))`
-/

namespace A283982.P9456539015121625961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A028310 (A352784 (2 * n)).toNat

end

end A283982.P9456539015121625961

namespace A283982

/-- `∏{e}[2*n+1-A006257(n), #]-A028310(A352784(2*n))` -/
def P9456539015121625961.Spec : Prop :=
  ∀ n, P9456539015121625961.a n = A283982 n

end A283982

/-! ## A283982.P5564355754546002004

`A000120(A003817(n))-A000120(A011371(2*n))`
-/

namespace A283982.P5564355754546002004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003817 n).toNat - A000120 (A011371 (2 * n)).toNat

end

end A283982.P5564355754546002004

namespace A283982

/-- `A000120(A003817(n))-A000120(A011371(2*n))` -/
def P5564355754546002004.Spec : Prop :=
  ∀ n, P5564355754546002004.a n = A283982 n

end A283982

/-! ## A283982.P15045911633631818430

`A000523(A003817(n)+2)-A028310(A352784(2*n))`
-/

namespace A283982.P15045911633631818430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A003817 n + 2).toNat - A028310 (A352784 (2 * n)).toNat

end

end A283982.P15045911633631818430

namespace A283982

/-- `A000523(A003817(n)+2)-A028310(A352784(2*n))` -/
def P15045911633631818430.Spec : Prop :=
  ∀ n, P15045911633631818430.a n = A283982 n

end A283982

/-! ## A283982.P16635294440419888523

`A000523(2*n+1)-A280700(n)`
-/

namespace A283982.P16635294440419888523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 1) - A280700 n

end

end A283982.P16635294440419888523

namespace A283982

/-- `A000523(2*n+1)-A280700(n)` -/
def P16635294440419888523.Spec : Prop :=
  ∀ n, P16635294440419888523.a n = A283982 n

end A283982

/-! ## A283982.P17510130265630418717

`A086784(2*n+1-A048881(2*n))`
-/

namespace A283982.P17510130265630418717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086784 ((2 * n + 1 : ℤ) - A048881 (2 * n)).toNat

end

end A283982.P17510130265630418717

namespace A283982

/-- `A086784(2*n+1-A048881(2*n))` -/
def P17510130265630418717.Spec : Prop :=
  ∀ n, P17510130265630418717.a n = A283982 n

end A283982

/-!
# A283983: Square root of the largest square dividing prime factorization representation of the n-th Stern polynomial: a(n) = A000188(A260443(n)).

The programs for A283983, there is no canonical definition to state claims against.
-/

/-! ## A283983.P13335138281301617804

`A000196(A283989(n))`
-/

namespace A283983.P13335138281301617804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A283989 n).toNat

end

end A283983.P13335138281301617804

/-! ## A283983.P6977545967562927952

`A000188(A260443(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283983.P6977545967562927952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A260443 n).toNat

end

end A283983.P6977545967562927952

/-! ## A283983.P11824185101746182451

`sqrt(A260443(n)/A277330(n))`
-/

namespace A283983.P11824185101746182451
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A260443 n : ℚ) / (A277330 n : ℚ) : ℝ)

end

end A283983.P11824185101746182451

/-! ## A283983.P5004312213898064159

`root(A283989(n), A176170(A176170(n+1)))`
-/

namespace A283983.P5004312213898064159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A283989 n : ℝ) ^ (1 / (A176170 (A176170 (n + 1)).toNat : ℝ))

end

end A283983.P5004312213898064159

/-! ## A283983.P7744379425489042334

`A283989(n)^(1/A020639(A001316(n)))`
-/

namespace A283983.P7744379425489042334
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A283989 n : ℝ) ^ (1 / (A020639 (A001316 n).toNat : ℚ) : ℝ)

end

end A283983.P7744379425489042334

/-! ## A283983.P12102346309118198382

`root(A283989(n), 2%A122041(n+1))`
-/

namespace A283983.P12102346309118198382
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A283989 n : ℝ) ^ (1 / (Int.tmod 2 (A122041 (n + 1)) : ℝ))

end

end A283983.P12102346309118198382

/-! ## A283983.P3571071549540350153

`A004151(root(A283989(n), 2))`
-/

namespace A283983.P3571071549540350153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.roundAway ((A283989 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A283983.P3571071549540350153

/-! ## A283983.P16830151159098710406

`A283971(root(A283989(n), 2))`
-/

namespace A283983.P16830151159098710406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (SequenceMachineLib.roundAway ((A283989 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A283983.P16830151159098710406

/-!
# A283984: Sums of distinct nonzero terms of A007489: a(n) = Sum_{k>=0} A030308(n,k)*A007489(1+k).

The programs for A283984, there is no canonical definition to state claims against.
-/

/-! ## A283984.P12443253181612736209

`∑[A071912(A000225(and(n, -n)))]`
-/

namespace A283984.P12443253181612736209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (A000225 (Int.land (n : ℤ) (-(n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283984.P12443253181612736209

/-! ## A283984.P9091173487173193127

`∑[A000196(A305119(and(n, -n)))]`
-/

namespace A283984.P9091173487173193127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A305119 (Int.land (n : ℤ) (-(n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283984.P9091173487173193127

/-! ## A283984.P17238884406135395470

`A065295(5^floor(n/2))+n`
-/

namespace A283984.P17238884406135395470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat + (n : ℤ)

end

end A283984.P17238884406135395470

/-! ## A283984.P12265193338055050062

`A111660(A111660(n+3)+A000695(n))`
-/

namespace A283984.P12265193338055050062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A111660 (n + 3) + A000695 n).toNat

end

end A283984.P12265193338055050062

/-! ## A283984.P15696703699467443063

`eq[A057605(n+1), A060374(n)]`
-/

namespace A283984.P15696703699467443063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283984.P15696703699467443063

/-!
# A283985: Sums of distinct terms of A143293: a(n) = Sum_{k>=0} A030308(n,k)*A143293(k).

The programs for A283985, there is no canonical definition to state claims against.
-/

/-! ## A283985.P13332477575168457564

`A346105(A019565(n))`
-/

namespace A283985.P13332477575168457564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346105 (A019565 n).toNat

end

end A283985.P13332477575168457564

/-! ## A283985.P3074904779419996160

`A346105(gcd(A344530(n), A378631(n+1)))`
-/

namespace A283985.P3074904779419996160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346105 (Int.gcd (A344530 n) (A378631 (n + 1)))

end

end A283985.P3074904779419996160

/-! ## A283985.P7037739578805975738

`A372576(A283477(n))`
-/

namespace A283985.P7037739578805975738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A283477 n).toNat

end

end A283985.P7037739578805975738

/-! ## A283985.P16655005447515048154

`record[A372576(A278236(n))]`
-/

namespace A283985.P16655005447515048154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A278236 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283985.P16655005447515048154

/-! ## A283985.P15428589465010311165

`eq[A049934(A227543(n)), A091976(n+1)]`
-/

namespace A283985.P15428589465010311165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049934 (A227543 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283985.P15428589465010311165

/-!
# A283986: a(n) = A002487(n-1) OR A002487(n), where OR is bitwise-or (A003986).

The programs for A283986, the canonical program `A283986.P7450117296325847881` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283986 has offset 1).

The definition of A283986 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283986.P1814604173183203931

`A283987(n+1)+A283988(n+1)`
-/

namespace A283986.P1814604173183203931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283987 (n + 1) + A283988 (n + 1)

end

end A283986.P1814604173183203931

namespace A283986

/-- `A283987(n+1)+A283988(n+1)` -/
def P1814604173183203931.Spec : Prop :=
  ∀ n, P1814604173183203931.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P1555520351515274188

`A007306(n+1)-A283988(n+1)`
-/

namespace A283986.P1555520351515274188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A283988 (n + 1)

end

end A283986.P1555520351515274188

namespace A283986

/-- `A007306(n+1)-A283988(n+1)` -/
def P1555520351515274188.Spec : Prop :=
  ∀ n, P1555520351515274188.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P7450117296325847881

`A283976(2*(n+1)-1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A283986

/-- `A283976(2*(n+1)-1)` -/
def P7450117296325847881.Spec : Prop :=
  ∀ n, P7450117296325847881.a n = A283986 (n + 1)

theorem P7450117296325847881.correct : P7450117296325847881.Spec := by
  intro n
  simp only [A283986, Nat.add_sub_cancel]

end A283986

/-! ## A283986.P12579349265766581108

`or(A002487(n+1), A002487(n))`
-/

namespace A283986.P12579349265766581108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002487 (n + 1)) (A002487 n)

end

end A283986.P12579349265766581108

namespace A283986

/-- `or(A002487(n+1), A002487(n))` -/
def P12579349265766581108.Spec : Prop :=
  ∀ n, P12579349265766581108.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P3691977681301039673

`A025480(A283987(n+1)+A007306(n+1))`
-/

namespace A283986.P3691977681301039673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A283987 (n + 1) + A007306 (n + 1)).toNat

end

end A283986.P3691977681301039673

namespace A283986

/-- `A025480(A283987(n+1)+A007306(n+1))` -/
def P3691977681301039673.Spec : Prop :=
  ∀ n, P3691977681301039673.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P7500356814680478083

`A002487(n+1)+A002487(n)-A283988(n+1)`
-/

namespace A283986.P7500356814680478083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A002487 n - A283988 (n + 1))

end

end A283986.P7500356814680478083

namespace A283986

/-- `A002487(n+1)+A002487(n)-A283988(n+1)` -/
def P7500356814680478083.Spec : Prop :=
  ∀ n, P7500356814680478083.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P14797516358787044586

`A127971(2*n)-A283988(n+1)`
-/

namespace A283986.P14797516358787044586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (2 * n) - A283988 (n + 1)

end

end A283986.P14797516358787044586

namespace A283986

/-- `A127971(2*n)-A283988(n+1)` -/
def P14797516358787044586.Spec : Prop :=
  ∀ n, P14797516358787044586.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P12901397395599944605

`or(1, A283976(2*n+1))`
-/

namespace A283986.P12901397395599944605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A283976 (2 * n + 1))

end

end A283986.P12901397395599944605

namespace A283986

/-- `or(1, A283976(2*n+1))` -/
def P12901397395599944605.Spec : Prop :=
  ∀ n, P12901397395599944605.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P15767120613081849718

`A283971(A283976(2*n+1))`
-/

namespace A283986.P15767120613081849718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (A283976 (2 * n + 1)).toNat

end

end A283986.P15767120613081849718

namespace A283986

/-- `A283971(A283976(2*n+1))` -/
def P15767120613081849718.Spec : Prop :=
  ∀ n, P15767120613081849718.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P12495372575521577572

`A078898(2*A283976(2*n+1))`
-/

namespace A283986.P12495372575521577572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (2 * A283976 (2 * n + 1)).toNat

end

end A283986.P12495372575521577572

namespace A283986

/-- `A078898(2*A283976(2*n+1))` -/
def P12495372575521577572.Spec : Prop :=
  ∀ n, P12495372575521577572.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P8181128291952294206

`filter[A283976(2*n+1), A000035(#)]`
-/

namespace A283986.P8181128291952294206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A283986.P8181128291952294206

namespace A283986

/-- `filter[A283976(2*n+1), A000035(#)]` -/
def P8181128291952294206.Spec : Prop :=
  ∀ n, P8181128291952294206.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P2140148788127360904

`filter[A283976(2*n+1), A035263(#)]`
-/

namespace A283986.P2140148788127360904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A283986.P2140148788127360904

namespace A283986

/-- `filter[A283976(2*n+1), A035263(#)]` -/
def P2140148788127360904.Spec : Prop :=
  ∀ n, P2140148788127360904.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P2038848078604663726

`filter[A283976(2*n+1), A039982(#)]`
-/

namespace A283986.P2038848078604663726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A283986.P2038848078604663726

namespace A283986

/-- `filter[A283976(2*n+1), A039982(#)]` -/
def P2038848078604663726.Spec : Prop :=
  ∀ n, P2038848078604663726.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P7099741138724349975

`filter[A283976(2*n+1), A093719(#)]`
-/

namespace A283986.P7099741138724349975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A283986.P7099741138724349975

namespace A283986

/-- `filter[A283976(2*n+1), A093719(#)]` -/
def P7099741138724349975.Spec : Prop :=
  ∀ n, P7099741138724349975.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P17843939368770484890

`filter[A283976(2*n+1), A097325(#)]`
-/

namespace A283986.P17843939368770484890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A283986.P17843939368770484890

namespace A283986

/-- `filter[A283976(2*n+1), A097325(#)]` -/
def P17843939368770484890.Spec : Prop :=
  ∀ n, P17843939368770484890.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P1981386831968649864

`filter[A283976(2*n+1), A098725(#)]`
-/

namespace A283986.P1981386831968649864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A283986.P1981386831968649864

namespace A283986

/-- `filter[A283976(2*n+1), A098725(#)]` -/
def P1981386831968649864.Spec : Prop :=
  ∀ n, P1981386831968649864.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P9667330338350086438

`filter[A283976(2*n+1), A102863(#)]`
-/

namespace A283986.P9667330338350086438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A283986.P9667330338350086438

namespace A283986

/-- `filter[A283976(2*n+1), A102863(#)]` -/
def P9667330338350086438.Spec : Prop :=
  ∀ n, P9667330338350086438.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P9560487477077593119

`filter[A283976(2*n+1), A104106(#)]`
-/

namespace A283986.P9560487477077593119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A283986.P9560487477077593119

namespace A283986

/-- `filter[A283976(2*n+1), A104106(#)]` -/
def P9560487477077593119.Spec : Prop :=
  ∀ n, P9560487477077593119.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P15249106431172268673

`filter[A283976(2*n+1), A105234(#)]`
-/

namespace A283986.P15249106431172268673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A283986.P15249106431172268673

namespace A283986

/-- `filter[A283976(2*n+1), A105234(#)]` -/
def P15249106431172268673.Spec : Prop :=
  ∀ n, P15249106431172268673.a n = A283986 (n + 1)

end A283986

/-! ## A283986.P13276682274244833396

`∑{d}[A283976(2*n+1), A000010(#)]`
-/

namespace A283986.P13276682274244833396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A283986.P13276682274244833396

namespace A283986

/-- `∑{d}[A283976(2*n+1), A000010(#)]` -/
def P13276682274244833396.Spec : Prop :=
  ∀ n, P13276682274244833396.a n = A283986 (n + 1)

end A283986

/-!
# A283987: a(n) = A002487(n-1) XOR A002487(n), where XOR is bitwise-xor (A003987).

The programs for A283987, the canonical program `A283987.P9700574852503741046` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283987 has offset 1).

The definition of A283987 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283977, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283987.P13113484843698514393

`A283986(n+1)-A283988(n+1)`
-/

namespace A283987.P13113484843698514393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283986 (n + 1) - A283988 (n + 1)

end

end A283987.P13113484843698514393

namespace A283987

/-- `A283986(n+1)-A283988(n+1)` -/
def P13113484843698514393.Spec : Prop :=
  ∀ n, P13113484843698514393.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P16559699028783957288

`A007306(n+1)-2*A283988(n+1)`
-/

namespace A283987.P16559699028783957288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - 2 * A283988 (n + 1)

end

end A283987.P16559699028783957288

namespace A283987

/-- `A007306(n+1)-2*A283988(n+1)` -/
def P16559699028783957288.Spec : Prop :=
  ∀ n, P16559699028783957288.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P9700574852503741046

`A283977(2*(n+1)-1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A283987

/-- `A283977(2*(n+1)-1)` -/
def P9700574852503741046.Spec : Prop :=
  ∀ n, P9700574852503741046.a n = A283987 (n + 1)

theorem P9700574852503741046.correct : P9700574852503741046.Spec := by
  intro n
  simp only [A283987, Nat.add_sub_cancel]

end A283987

/-! ## A283987.P17469765377714779009

`xor(A002487(n+1), A002487(n))`
-/

namespace A283987.P17469765377714779009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002487 (n + 1)) (A002487 n)

end

end A283987.P17469765377714779009

namespace A283987

/-- `xor(A002487(n+1), A002487(n))` -/
def P17469765377714779009.Spec : Prop :=
  ∀ n, P17469765377714779009.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P5734300547901995198

`xor(A114214(n), A295515(n+1))`
-/

namespace A283987.P5734300547901995198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A114214 n) (A295515 (n + 1))

end

end A283987.P5734300547901995198

namespace A283987

/-- `xor(A114214(n), A295515(n+1))` -/
def P5734300547901995198.Spec : Prop :=
  ∀ n, P5734300547901995198.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P15194535348258204371

`A283986(n+1)+A283986(n+1)-A007306(n+1)`
-/

namespace A283987.P15194535348258204371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283986 (n + 1) + (A283986 (n + 1) - A007306 (n + 1))

end

end A283987.P15194535348258204371

namespace A283987

/-- `A283986(n+1)+A283986(n+1)-A007306(n+1)` -/
def P15194535348258204371.Spec : Prop :=
  ∀ n, P15194535348258204371.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P9619159062435541538

`A283977(2*n+1)%(n+2)`
-/

namespace A283987.P9619159062435541538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283977 (2 * n + 1)) (n + 2 : ℤ)

end

end A283987.P9619159062435541538

namespace A283987

/-- `A283977(2*n+1)%(n+2)` -/
def P9619159062435541538.Spec : Prop :=
  ∀ n, P9619159062435541538.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P17342578889698498483

`A283976(2*n+1)-A283988(n+1)`
-/

namespace A283987.P17342578889698498483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1) - A283988 (n + 1)

end

end A283987.P17342578889698498483

namespace A283987

/-- `A283976(2*n+1)-A283988(n+1)` -/
def P17342578889698498483.Spec : Prop :=
  ∀ n, P17342578889698498483.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P9139796918717721588

`A283986(n+1)-A283978(2*n+1)`
-/

namespace A283987.P9139796918717721588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283986 (n + 1) - A283978 (2 * n + 1)

end

end A283987.P9139796918717721588

namespace A283987

/-- `A283986(n+1)-A283978(2*n+1)` -/
def P9139796918717721588.Spec : Prop :=
  ∀ n, P9139796918717721588.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P6938032747864589504

`2*A283976(2*n+1)-A007306(n+1)`
-/

namespace A283987.P6938032747864589504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283976 (2 * n + 1) - A007306 (n + 1)

end

end A283987.P6938032747864589504

namespace A283987

/-- `2*A283976(2*n+1)-A007306(n+1)` -/
def P6938032747864589504.Spec : Prop :=
  ∀ n, P6938032747864589504.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P13368925471551677588

`A007306(n+1)-2*A283978(2*n+1)`
-/

namespace A283987.P13368925471551677588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - 2 * A283978 (2 * n + 1)

end

end A283987.P13368925471551677588

namespace A283987

/-- `A007306(n+1)-2*A283978(2*n+1)` -/
def P13368925471551677588.Spec : Prop :=
  ∀ n, P13368925471551677588.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P52706232162610988

`A283976(2*n+1)-A283978(2*n+1)`
-/

namespace A283987.P52706232162610988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1) - A283978 (2 * n + 1)

end

end A283987.P52706232162610988

namespace A283987

/-- `A283976(2*n+1)-A283978(2*n+1)` -/
def P52706232162610988.Spec : Prop :=
  ∀ n, P52706232162610988.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P14583915037657274591

`xor(A295515(2*n+1), A295515(2*(n+1)))`
-/

namespace A283987.P14583915037657274591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A295515 (2 * n + 1)) (A295515 (2 * (n + 1)))

end

end A283987.P14583915037657274591

namespace A283987

/-- `xor(A295515(2*n+1), A295515(2*(n+1)))` -/
def P14583915037657274591.Spec : Prop :=
  ∀ n, P14583915037657274591.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P15007666357766731108

`2*A283976(2*n+1)-A002487(2*n+1)`
-/

namespace A283987.P15007666357766731108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283976 (2 * n + 1) - A002487 (2 * n + 1)

end

end A283987.P15007666357766731108

namespace A283987

/-- `2*A283976(2*n+1)-A002487(2*n+1)` -/
def P15007666357766731108.Spec : Prop :=
  ∀ n, P15007666357766731108.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P324151041054127909

`A002487(2*n+1)-2*A283978(2*n+1)`
-/

namespace A283987.P324151041054127909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - 2 * A283978 (2 * n + 1)

end

end A283987.P324151041054127909

namespace A283987

/-- `A002487(2*n+1)-2*A283978(2*n+1)` -/
def P324151041054127909.Spec : Prop :=
  ∀ n, P324151041054127909.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P4158810022734777905

`2*A283976(2*n+1)-A287896(2*n+1)`
-/

namespace A283987.P4158810022734777905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283976 (2 * n + 1) - A287896 (2 * n + 1)

end

end A283987.P4158810022734777905

namespace A283987

/-- `2*A283976(2*n+1)-A287896(2*n+1)` -/
def P4158810022734777905.Spec : Prop :=
  ∀ n, P4158810022734777905.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P11388211788175582746

`A287896(2*n+1)-2*A283978(2*n+1)`
-/

namespace A283987.P11388211788175582746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (2 * n + 1) - 2 * A283978 (2 * n + 1)

end

end A283987.P11388211788175582746

namespace A283987

/-- `A287896(2*n+1)-2*A283978(2*n+1)` -/
def P11388211788175582746.Spec : Prop :=
  ∀ n, P11388211788175582746.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P4206324734538145281

`xor(A283976(2*n), A283976(A004277(n+1)))`
-/

namespace A283987.P4206324734538145281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A283976 (2 * n)) (A283976 (A004277 (n + 1)).toNat)

end

end A283987.P4206324734538145281

namespace A283987

/-- `xor(A283976(2*n), A283976(A004277(n+1)))` -/
def P4206324734538145281.Spec : Prop :=
  ∀ n, P4206324734538145281.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P13625197691557188545

`xor(A283976(2*n), A283976(A005843(n+1)))`
-/

namespace A283987.P13625197691557188545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A283976 (2 * n)) (A283976 (A005843 (n + 1)).toNat)

end

end A283987.P13625197691557188545

namespace A283987

/-- `xor(A283976(2*n), A283976(A005843(n+1)))` -/
def P13625197691557188545.Spec : Prop :=
  ∀ n, P13625197691557188545.a n = A283987 (n + 1)

end A283987

/-! ## A283987.P6987066569050272348

`xor(n-A284013(n), A283976(A004277(n+1)))`
-/

namespace A283987.P6987066569050272348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A284013 n) (A283976 (A004277 (n + 1)).toNat)

end

end A283987.P6987066569050272348

namespace A283987

/-- `xor(n-A284013(n), A283976(A004277(n+1)))` -/
def P6987066569050272348.Spec : Prop :=
  ∀ n, P6987066569050272348.a n = A283987 (n + 1)

end A283987

/-!
# A283988: a(n) = A002487(n-1) AND A002487(n), where AND is bitwise-and (A004198).

The programs for A283988, the canonical program `A283988.P2763794539889423270` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283988 has offset 1).

The definition of A283988 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283978, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283988.P11904851650604275439

`A007306(n+1)-A283986(n+1)`
-/

namespace A283988.P11904851650604275439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A283986 (n + 1)

end

end A283988.P11904851650604275439

namespace A283988

/-- `A007306(n+1)-A283986(n+1)` -/
def P11904851650604275439.Spec : Prop :=
  ∀ n, P11904851650604275439.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P2207824751527369544

`A283986(n+1)-A283987(n+1)`
-/

namespace A283988.P2207824751527369544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283986 (n + 1) - A283987 (n + 1)

end

end A283988.P2207824751527369544

namespace A283988

/-- `A283986(n+1)-A283987(n+1)` -/
def P2207824751527369544.Spec : Prop :=
  ∀ n, P2207824751527369544.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P13687709284249667461

`(A007306(n+1)-A283987(n+1))/2`
-/

namespace A283988.P13687709284249667461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007306 (n + 1) - A283987 (n + 1) : ℚ) / 2

end

end A283988.P13687709284249667461

namespace A283988

/-- `(A007306(n+1)-A283987(n+1))/2` -/
def P13687709284249667461.Spec : Prop :=
  ∀ n, P13687709284249667461.a n = (A283988 (n + 1) : ℚ)

end A283988

/-! ## A283988.P2763794539889423270

`A283978(2*(n+1)-1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A283988

/-- `A283978(2*(n+1)-1)` -/
def P2763794539889423270.Spec : Prop :=
  ∀ n, P2763794539889423270.a n = A283988 (n + 1)

theorem P2763794539889423270.correct : P2763794539889423270.Spec := by
  intro n
  simp only [A283988, Nat.add_sub_cancel]

end A283988

/-! ## A283988.P2536863729993849651

`and(A002487(n+1), A002487(n))`
-/

namespace A283988.P2536863729993849651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002487 (n + 1)) (A002487 n)

end

end A283988.P2536863729993849651

namespace A283988

/-- `and(A002487(n+1), A002487(n))` -/
def P2536863729993849651.Spec : Prop :=
  ∀ n, P2536863729993849651.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P8752738816301147586

`and(A114214(n), A295515(n+1))`
-/

namespace A283988.P8752738816301147586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114214 n) (A295515 (n + 1))

end

end A283988.P8752738816301147586

namespace A283988

/-- `and(A114214(n), A295515(n+1))` -/
def P8752738816301147586.Spec : Prop :=
  ∀ n, P8752738816301147586.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P6403754585971446531

`and(A002487(n), A324337(A233280(n)))`
-/

namespace A283988.P6403754585971446531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002487 n) (A324337 (A233280 n).toNat)

end

end A283988.P6403754585971446531

namespace A283988

/-- `and(A002487(n), A324337(A233280(n)))` -/
def P6403754585971446531.Spec : Prop :=
  ∀ n, P6403754585971446531.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P10460802858344508755

`A025480(A007306(n+1)-A283987(n+1))`
-/

namespace A283988.P10460802858344508755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A007306 (n + 1) - A283987 (n + 1)).toNat

end

end A283988.P10460802858344508755

namespace A283988

/-- `A025480(A007306(n+1)-A283987(n+1))` -/
def P10460802858344508755.Spec : Prop :=
  ∀ n, P10460802858344508755.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P16534300841328812571

`A002487(n+1)+A002487(n)-A283986(n+1)`
-/

namespace A283988.P16534300841328812571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A002487 n - A283986 (n + 1))

end

end A283988.P16534300841328812571

namespace A283988

/-- `A002487(n+1)+A002487(n)-A283986(n+1)` -/
def P16534300841328812571.Spec : Prop :=
  ∀ n, P16534300841328812571.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P11790081102243034265

`A002487(2*n+1)-A283986(n+1)`
-/

namespace A283988.P11790081102243034265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A283986 (n + 1)

end

end A283988.P11790081102243034265

namespace A283988

/-- `A002487(2*n+1)-A283986(n+1)` -/
def P11790081102243034265.Spec : Prop :=
  ∀ n, P11790081102243034265.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P9970302951977555669

`A007306(n+1)-A283976(2*n+1)`
-/

namespace A283988.P9970302951977555669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A283976 (2 * n + 1)

end

end A283988.P9970302951977555669

namespace A283988

/-- `A007306(n+1)-A283976(2*n+1)` -/
def P9970302951977555669.Spec : Prop :=
  ∀ n, P9970302951977555669.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P18041198505259262286

`A283976(2*n+1)-A283987(n+1)`
-/

namespace A283988.P18041198505259262286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1) - A283987 (n + 1)

end

end A283988.P18041198505259262286

namespace A283988

/-- `A283976(2*n+1)-A283987(n+1)` -/
def P18041198505259262286.Spec : Prop :=
  ∀ n, P18041198505259262286.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P12963270586713906980

`A283986(n+1)-A283977(2*n+1)`
-/

namespace A283988.P12963270586713906980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283986 (n + 1) - A283977 (2 * n + 1)

end

end A283988.P12963270586713906980

namespace A283988

/-- `A283986(n+1)-A283977(2*n+1)` -/
def P12963270586713906980.Spec : Prop :=
  ∀ n, P12963270586713906980.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P13165506341224104098

`A283978(2*n+1)+A283978(2*n)`
-/

namespace A283988.P13165506341224104098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (2 * n + 1) + A283978 (2 * n)

end

end A283988.P13165506341224104098

namespace A283988

/-- `A283978(2*n+1)+A283978(2*n)` -/
def P13165506341224104098.Spec : Prop :=
  ∀ n, P13165506341224104098.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P618782534988396912

`A002487(2*n+1)-A283976(2*n+1)`
-/

namespace A283988.P618782534988396912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A283976 (2 * n + 1)

end

end A283988.P618782534988396912

namespace A283988

/-- `A002487(2*n+1)-A283976(2*n+1)` -/
def P618782534988396912.Spec : Prop :=
  ∀ n, P618782534988396912.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P3800521557364098841

`A283976(2*n+1)-A283977(2*n+1)`
-/

namespace A283988.P3800521557364098841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1) - A283977 (2 * n + 1)

end

end A283988.P3800521557364098841

namespace A283988

/-- `A283976(2*n+1)-A283977(2*n+1)` -/
def P3800521557364098841.Spec : Prop :=
  ∀ n, P3800521557364098841.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P12625408496268576744

`A287896(2*n+1)-A283976(2*n+1)`
-/

namespace A283988.P12625408496268576744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (2 * n + 1) - A283976 (2 * n + 1)

end

end A283988.P12625408496268576744

namespace A283988

/-- `A287896(2*n+1)-A283976(2*n+1)` -/
def P12625408496268576744.Spec : Prop :=
  ∀ n, P12625408496268576744.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P3547716269893693452

`and(A295515(2*n+1), A295515(2*(n+1)))`
-/

namespace A283988.P3547716269893693452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A295515 (2 * n + 1)) (A295515 (2 * (n + 1)))

end

end A283988.P3547716269893693452

namespace A283988

/-- `and(A295515(2*n+1), A295515(2*(n+1)))` -/
def P3547716269893693452.Spec : Prop :=
  ∀ n, P3547716269893693452.a n = A283988 (n + 1)

end A283988

/-! ## A283988.P4562379887071227391

`(A002487(2*n+1)-A283977(2*n+1))/2`
-/

namespace A283988.P4562379887071227391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (2 * n + 1) - A283977 (2 * n + 1) : ℚ) / 2

end

end A283988.P4562379887071227391

namespace A283988

/-- `(A002487(2*n+1)-A283977(2*n+1))/2` -/
def P4562379887071227391.Spec : Prop :=
  ∀ n, P4562379887071227391.a n = (A283988 (n + 1) : ℚ)

end A283988

/-! ## A283988.P6164736524943557944

`A038572(A002487(2*n+1)-A283977(2*n+1))`
-/

namespace A283988.P6164736524943557944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A002487 (2 * n + 1) - A283977 (2 * n + 1)).toNat

end

end A283988.P6164736524943557944

namespace A283988

/-- `A038572(A002487(2*n+1)-A283977(2*n+1))` -/
def P6164736524943557944.Spec : Prop :=
  ∀ n, P6164736524943557944.a n = A283988 (n + 1)

end A283988

/-!
# A283989: Largest square dividing prime factorization representation of the n-th Stern polynomial: a(n) = A008833(A260443(n)).

The programs for A283989, there is no canonical definition to state claims against.
-/

/-! ## A283989.P15817812700741029207

`A283983(n)²`
-/

namespace A283989.P15817812700741029207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283983 n ^ 2

end

end A283989.P15817812700741029207

/-! ## A283989.P11883170008807688352

`A260443(n)/A277330(n)`
-/

namespace A283989.P11883170008807688352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 n : ℚ) / (A277330 n : ℚ)

end

end A283989.P11883170008807688352

/-! ## A283989.P10903971006014313166

`A008833(A260443(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283989.P10903971006014313166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A260443 n).toNat

end

end A283989.P10903971006014313166

/-! ## A283989.P4266371241102425779

`A283983((n+n)/2)^2`
-/

namespace A283989.P4266371241102425779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283983 (SequenceMachineLib.roundAway ((n + n : ℚ) / 2)).toNat ^ 2

end

end A283989.P4266371241102425779

/-! ## A283989.P266759951296450209

`A283983(A028310(n))*A283983(n)`
-/

namespace A283989.P266759951296450209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283983 (A028310 n).toNat * A283983 n

end

end A283989.P266759951296450209

/-! ## A283989.P7859329478104388760

`A283983(A004525(2*n))*A283983(n)`
-/

namespace A283989.P7859329478104388760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283983 (A004525 (2 * n)).toNat * A283983 n

end

end A283989.P7859329478104388760

/-! ## A283989.P1056779124615857782

`A283983(A004526(2*n))*A283983(n)`
-/

namespace A283989.P1056779124615857782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283983 (A004526 (2 * n)).toNat * A283983 n

end

end A283989.P1056779124615857782

/-! ## A283989.P9119828004417721070

`A283983(n*A054977(n))*A283983(n)`
-/

namespace A283989.P9119828004417721070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283983 ((n : ℤ) * A054977 n).toNat * A283983 n

end

end A283989.P9119828004417721070

/-! ## A283989.P5605192245827491991

`A283983(n*A141044(n))*A283983(n)`
-/

namespace A283989.P5605192245827491991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283983 ((n : ℤ) * A141044 n).toNat * A283983 n

end

end A283989.P5605192245827491991

/-! ## A283989.P18116697271855207070

`lcm(A008836(n+1), A283983(n))*A283983(n)`
-/

namespace A283989.P18116697271855207070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A008836 (n + 1)) (A283983 n) : ℤ) * A283983 n

end

end A283989.P18116697271855207070

/-! ## A283989.P14527266435166678177

`A283983(A048896(n))*A283983(n)*A283983(n)`
-/

namespace A283989.P14527266435166678177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283983 (A048896 n).toNat * A283983 n * A283983 n

end

end A283989.P14527266435166678177

/-! ## A283989.P15291652474892586927

`(A283983(n)+A034540(A256452(n+1)))*A283983(n)`
-/

namespace A283989.P15291652474892586927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A283983 n + A034540 (A256452 (n + 1)).toNat) * A283983 n

end

end A283989.P15291652474892586927

/-!
# A283990: a(n) = A046523(A243103(n)).

The programs for A283990, there is no canonical definition to state claims against.
-/

/-! ## A283990.P13041748109951452550

`A046523(A243103(n+1)%A122232(2*(n+2)))`
-/

namespace A283990.P13041748109951452550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.tmod (A243103 (n + 1)) (A122232 (2 * (n + 2)))).toNat

end

end A283990.P13041748109951452550

/-! ## A283990.P18018462048557458689

`A046523(A243103(n+1))%A331931(3*n+1)`
-/

namespace A283990.P18018462048557458689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046523 (A243103 (n + 1)).toNat) (A331931 (3 * n + 1))

end

end A283990.P18018462048557458689

/-!
# A283991: a(1) = 0 and for n > 1, a(n) = 1 if Stern polynomial B(n,x) is irreducible, 0 otherwise.

The programs for A283991, there is no canonical definition to state claims against.
-/

/-! ## A283991.P4292616028364835990

`A389911(A260443(n+1))`
-/

namespace A283991.P4292616028364835990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389911 (A260443 (n + 1)).toNat

end

end A283991.P4292616028364835990

/-! ## A283991.P5323231132952258756

`char[A186891(n+2)-1]`
-/

namespace A283991.P5323231132952258756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A283991.P5323231132952258756

/-! ## A283991.P10676723917532994895

`char[eq[1, A277013(n+1)]]`
-/

namespace A283991.P10676723917532994895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A283991.P10676723917532994895

/-! ## A283991.P8929766197852196347

`char[eq[2, A284011(n+1)]]`
-/

namespace A283991.P8929766197852196347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A283991.P8929766197852196347

/-! ## A283991.P17853246593750449626

`char[eq[2, A305899(n+1)]]`
-/

namespace A283991.P17853246593750449626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305899 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A283991.P17853246593750449626

/-! ## A283991.P4605069018529485069

`A010051(A284011(n+1))`
-/

namespace A283991.P4605069018529485069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A284011 (n + 1)).toNat

end

end A283991.P4605069018529485069

/-! ## A283991.P17633046515938131623

`A063524(A277013(n+1))`
-/

namespace A283991.P17633046515938131623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A277013 (n + 1)).toNat

end

end A283991.P17633046515938131623

/-! ## A283991.P11508677896001860064

`A257000(2*A277013(n+1))`
-/

namespace A283991.P11508677896001860064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (2 * A277013 (n + 1)).toNat

end

end A283991.P11508677896001860064

/-! ## A283991.P9798420355448899600

`A036987(A284011(n+1)+5)`
-/

namespace A283991.P9798420355448899600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A284011 (n + 1) + 5).toNat

end

end A283991.P9798420355448899600

/-! ## A283991.P4689684437213917607

`A283982(C(4, A284011(n+1)))`
-/

namespace A283991.P4689684437213917607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283982 (Nat.choose 4 (A284011 (n + 1)).toNat)

end

end A283991.P4689684437213917607

/-! ## A283991.P13259044063925812529

`A000007((1-A277013(n+1))²)`
-/

namespace A283991.P13259044063925812529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((1 - A277013 (n + 1)) ^ 2).toNat

end

end A283991.P13259044063925812529

/-! ## A283991.P6399374290249938536

`round(A057427(n)/A284011(n+1))`
-/

namespace A283991.P6399374290249938536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A057427 n : ℚ) / (A284011 (n + 1) : ℚ))

end

end A283991.P6399374290249938536

/-! ## A283991.P10627578297215939976

`A001222(C(2, C(2, A284011(n+1))))`
-/

namespace A283991.P10627578297215939976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose 2 (Nat.choose 2 (A284011 (n + 1)).toNat))

end

end A283991.P10627578297215939976

/-! ## A283991.P10247916579219479254

`A010051(n+1)+A305892(n+1)`
-/

namespace A283991.P10247916579219479254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A305892 (n + 1)

end

end A283991.P10247916579219479254

/-! ## A283991.P13566134212070186843

`A294893(n+1)-A294891(n+1)`
-/

namespace A283991.P13566134212070186843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294893 (n + 1) - A294891 (n + 1)

end

end A283991.P13566134212070186843

/-! ## A283991.P6281423299031453492

`∑{d}[n+1, A008683(#)*A294893((n+1)/#)]`
-/

namespace A283991.P6281423299031453492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A294893 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A283991.P6281423299031453492

/-! ## A283991.P16916788514395712399

`A257000(n+1)+A305892(n+1)-A305821(n+1)`
-/

namespace A283991.P16916788514395712399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (n + 1) + (A305892 (n + 1) - A305821 (n + 1))

end

end A283991.P16916788514395712399

/-! ## A283991.P9131039060766288596

`A010058(A277027(n+1))`
-/

namespace A283991.P9131039060766288596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010058 (A277027 (n + 1)).toNat

end

end A283991.P9131039060766288596

/-! ## A283991.P11499953971317189960

`A277007(A277027(n+1)+28)`
-/

namespace A283991.P11499953971317189960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 (A277027 (n + 1) + 28).toNat

end

end A283991.P11499953971317189960

/-! ## A283991.P15310813415184938606

`A277017(A277027(n+1)+28)`
-/

namespace A283991.P15310813415184938606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277017 (A277027 (n + 1) + 28).toNat

end

end A283991.P15310813415184938606

/-!
# A283992: a(n) = number of irreducible Stern polynomials in range B(1,x) .. B(n,x). (Polynomial B_1(x) = 1 is not included in the count).

The programs for A283992, there is no canonical definition to state claims against.
-/

/-! ## A283992.P10873628072422499098

`A283991(n+1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A283992.P10873628072422499098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A283991 (n + 1) + a (n - 1)

end

end A283992.P10873628072422499098

/-! ## A283992.P12918096084083558354

`∑[A283991(n+1)]`
-/

namespace A283992.P12918096084083558354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283992.P12918096084083558354

/-! ## A283992.P9106400761975589786

`n-A283993(n+1)`
-/

namespace A283992.P9106400761975589786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A283993 (n + 1)

end

end A283992.P9106400761975589786

/-! ## A283992.P14999324432625092705

`∑[char[A186891(n+2)-1]]`
-/

namespace A283992.P14999324432625092705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283992.P14999324432625092705

/-! ## A283992.P11287691536625315429

`∑[C(C(2, A277013(n+1)), 2)]`
-/

namespace A283992.P11287691536625315429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A277013 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283992.P11287691536625315429

/-! ## A283992.P1010418306979515921

`round(a(n-1)+1/A284011(n+1))` with `a(0)=0`
-/

namespace A283992.P1010418306979515921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + 1 / (A284011 (n + 1) : ℚ))

end

end A283992.P1010418306979515921

/-! ## A283992.P8135602249147682302

`∑[A010051(A284011(n+1))]`
-/

namespace A283992.P8135602249147682302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A284011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283992.P8135602249147682302

/-! ## A283992.P10608040785905210327

`∑[A044941(7*(A277027(n+1)+2)+1)]`
-/

namespace A283992.P10608040785905210327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (7 * (A277027 (n + 1) + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283992.P10608040785905210327

/-! ## A283992.P3908641545620238608

`∑[A257000((n+1)*A015945(n+1)²%3)]`
-/

namespace A283992.P3908641545620238608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 ((n + 1 : ℤ) * Int.tmod (A015945 (n + 1) ^ 2) 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283992.P3908641545620238608

/-! ## A283992.P3208141736551092223

`∑[and(A294905(n+1), A332877(n+2))]`
-/

namespace A283992.P3208141736551092223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A294905 (n + 1)) (A332877 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283992.P3208141736551092223

/-!
# A283993: a(n) = number of reducible Stern polynomials in range B(1,x) .. B(n,x). (Polynomial B_1(x) = 1 is not included in the count).

The programs for A283993, there is no canonical definition to state claims against.
-/

/-! ## A283993.P3910418982182201191

`n-A283992(n+1)`
-/

namespace A283993.P3910418982182201191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A283992 (n + 1)

end

end A283993.P3910418982182201191

/-! ## A283993.P9666066966188849719

`n-∑[A283991(n+1)]`
-/

namespace A283993.P9666066966188849719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283993.P9666066966188849719

/-! ## A283993.P5932429885536592080

`∑[floor(atan(A277013(n+1)))]`
-/

namespace A283993.P5932429885536592080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A277013 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283993.P5932429885536592080

/-! ## A283993.P17763737859958611796

`∑[1-round(1/A284011(n+1))]`
-/

namespace A283993.P17763737859958611796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway (1 / (A284011 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283993.P17763737859958611796

/-! ## A283993.P6115196624796644721

`n-∑[A010051(A284011(n+1))]`
-/

namespace A283993.P6115196624796644721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A284011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283993.P6115196624796644721

/-! ## A283993.P8038509495732031891

`A016789(n)%∑[A283991(n+1)+2]`
-/

namespace A283993.P8038509495732031891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016789 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283993.P8038509495732031891

/-! ## A283993.P12890072506595176132

`∑[A000040(A000010(A284011(n+1))²)%2]`
-/

namespace A283993.P12890072506595176132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A000010 (A284011 (n + 1)).toNat ^ 2).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283993.P12890072506595176132

/-!
# A283995: Least number with same prime signature as the n-th divisorial: a(n) = A046523(A007955(n)).

The programs for A283995, the canonical program `A283995.P1385133873450417107` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283995 has offset 1).

The definition of A283995 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283995.P1385133873450417107

`A046523(A007955(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A283995

/-- `A046523(A007955(n+1))` -/
def P1385133873450417107.Spec : Prop :=
  ∀ n, P1385133873450417107.a n = A283995 (n + 1)

theorem P1385133873450417107.correct : P1385133873450417107.Spec := by
  intro n
  simp only [A283995, Nat.add_sub_cancel]

end A283995

/-! ## A283995.P13613162487106843836

`∏{d}[A046523(n+1), #]`
-/

namespace A283995.P13613162487106843836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A283995.P13613162487106843836

namespace A283995

/-- `∏{d}[A046523(n+1), #]` -/
def P13613162487106843836.Spec : Prop :=
  ∀ n, (P13613162487106843836.a n : ℤ) = A283995 (n + 1)

end A283995

/-! ## A283995.P17504940626901316945

`∏{d}[sqrt(A278254(n+1)), #]`
-/

namespace A283995.P17504940626901316945
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278254 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A283995.P17504940626901316945

namespace A283995

/-- `∏{d}[sqrt(A278254(n+1)), #]` -/
def P17504940626901316945.Spec : Prop :=
  ∀ n, (P17504940626901316945.a n : ℤ) = A283995 (n + 1)

end A283995

/-! ## A283995.P17544883864523283487

`∏{d}[A025487(A101296(n+1)), #]`
-/

namespace A283995.P17544883864523283487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A283995.P17544883864523283487

namespace A283995

/-- `∏{d}[A025487(A101296(n+1)), #]` -/
def P17544883864523283487.Spec : Prop :=
  ∀ n, (P17544883864523283487.a n : ℤ) = A283995 (n + 1)

end A283995

/-! ## A283995.P7255844089790281779

`∏{d}[A089247(A071364(n+1)), #]`
-/

namespace A283995.P7255844089790281779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A283995.P7255844089790281779

namespace A283995

/-- `∏{d}[A089247(A071364(n+1)), #]` -/
def P7255844089790281779.Spec : Prop :=
  ∀ n, (P7255844089790281779.a n : ℤ) = A283995 (n + 1)

end A283995

/-! ## A283995.P1250953985010239050

`∏{d}[A181821(A181819(n+1)), #]`
-/

namespace A283995.P1250953985010239050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A283995.P1250953985010239050

namespace A283995

/-- `∏{d}[A181821(A181819(n+1)), #]` -/
def P1250953985010239050.Spec : Prop :=
  ∀ n, (P1250953985010239050.a n : ℤ) = A283995 (n + 1)

end A283995

/-! ## A283995.P14273945894912183495

`∏{d}[A181821(∏{e}[n+1, A095285(#)]), #]`
-/

namespace A283995.P14273945894912183495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f2 n), A095285 (Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A283995.P14273945894912183495

namespace A283995

/-- `∏{d}[A181821(∏{e}[n+1, A095285(#)]), #]` -/
def P14273945894912183495.Spec : Prop :=
  ∀ n, (P14273945894912183495.a n : ℤ) = A283995 (n + 1)

end A283995

/-! ## A283995.P11351325894186673697

`∏{d}[lcm(A083260(n+1), A212173(n+1)), #]`
-/

namespace A283995.P11351325894186673697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083260 (n + 1)) (A212173 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A283995.P11351325894186673697

namespace A283995

/-- `∏{d}[lcm(A083260(n+1), A212173(n+1)), #]` -/
def P11351325894186673697.Spec : Prop :=
  ∀ n, (P11351325894186673697.a n : ℤ) = A283995 (n + 1)

end A283995

/-! ## A283995.P16114061935557575947

`∏{d}[A181821(∏{e}[n+1, A008578(#+1)]), #]`
-/

namespace A283995.P16114061935557575947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f2 n), A008578 (Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A283995.P16114061935557575947

namespace A283995

/-- `∏{d}[A181821(∏{e}[n+1, A008578(#+1)]), #]` -/
def P16114061935557575947.Spec : Prop :=
  ∀ n, (P16114061935557575947.a n : ℤ) = A283995 (n + 1)

end A283995

/-! ## A283995.P5859547973806607147

`A007955(A089247(A071364(n+1)))`
-/

namespace A283995.P5859547973806607147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A089247 (A071364 (n + 1)).toNat).toNat

end

end A283995.P5859547973806607147

namespace A283995

/-- `A007955(A089247(A071364(n+1)))` -/
def P5859547973806607147.Spec : Prop :=
  ∀ n, P5859547973806607147.a n = A283995 (n + 1)

end A283995

/-! ## A283995.P17020665102311871617

`∏{d}[A283466(A266645(n+1)), #]`
-/

namespace A283995.P17020665102311871617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283466 (A266645 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A283995.P17020665102311871617

namespace A283995

/-- `∏{d}[A283466(A266645(n+1)), #]` -/
def P17020665102311871617.Spec : Prop :=
  ∀ n, (P17020665102311871617.a n : ℤ) = A283995 (n + 1)

end A283995

/-! ## A283995.P18316862166483670977

`∏{d}[A283466((n+1)/A032742(n+1)*A283463(n+1)), #]`
-/

namespace A283995.P18316862166483670977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283466 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ) * (A283463 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A283995.P18316862166483670977

namespace A283995

/-- `∏{d}[A283466((n+1)/A032742(n+1)*A283463(n+1)), #]` -/
def P18316862166483670977.Spec : Prop :=
  ∀ n, (P18316862166483670977.a n : ℤ) = A283995 (n + 1)

end A283995

/-! ## A283995.P12916870802391243442

`∏{d}[A002024(A286249(A000124(n))), #]`
-/

namespace A283995.P12916870802391243442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A286249 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A283995.P12916870802391243442

namespace A283995

/-- `∏{d}[A002024(A286249(A000124(n))), #]` -/
def P12916870802391243442.Spec : Prop :=
  ∀ n, (P12916870802391243442.a n : ℤ) = A283995 (n + 1)

end A283995

/-! ## A283995.P592371023972970865

`∏{d}[sqrt(A212173((n+1)²)), #]`
-/

namespace A283995.P592371023972970865
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A212173 ((n + 1) ^ 2) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A283995.P592371023972970865

namespace A283995

/-- `∏{d}[sqrt(A212173((n+1)²)), #]` -/
def P592371023972970865.Spec : Prop :=
  ∀ n, (P592371023972970865.a n : ℤ) = A283995 (n + 1)

end A283995

/-!
# A283996: a(n) = n OR A005187(floor(n/2)), where OR is bitwise-or (A003986).

The programs for A283996, the canonical program `A283996.P11119559197446750383` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283996 has offset 0).

The definition of A283996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283996.P5603009957411790591

`A283997(n)+A283998(n)`
-/

namespace A283996.P5603009957411790591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283997 n + A283998 n

end

end A283996.P5603009957411790591

namespace A283996

/-- `A283997(n)+A283998(n)` -/
def P5603009957411790591.Spec : Prop :=
  ∀ n, P5603009957411790591.a n = A283996 n

end A283996

/-! ## A283996.P8686150780894381433

`A005187(n)-A283998(n)`
-/

namespace A283996.P8686150780894381433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - A283998 n

end

end A283996.P8686150780894381433

namespace A283996

/-- `A005187(n)-A283998(n)` -/
def P8686150780894381433.Spec : Prop :=
  ∀ n, P8686150780894381433.a n = A283996 n

end A283996

/-! ## A283996.P11119559197446750383

`or(n, ∑[a(∑[n]%n)+1]-n)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A283996

/-- `or(n, ∑[a(∑[n]%n)+1]-n)` -/
def P11119559197446750383.Spec : Prop :=
  ∀ n, P11119559197446750383.a n = A283996 n

theorem P11119559197446750383.correct : P11119559197446750383.Spec := by
  intro n
  simp only [A283996]

end A283996

/-! ## A283996.P3143656437398784405

`or(n, ∑[val(n+1, 2)]-val(n+1, 2))`
-/

namespace A283996.P3143656437398784405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))

end

end A283996.P3143656437398784405

namespace A283996

/-- `or(n, ∑[val(n+1, 2)]-val(n+1, 2))` -/
def P3143656437398784405.Spec : Prop :=
  ∀ n, P3143656437398784405.a n = A283996 n

end A283996

/-! ## A283996.P2208078893539543127

`or(n, A011371(n))`
-/

namespace A283996.P2208078893539543127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A011371 n)

end

end A283996.P2208078893539543127

namespace A283996

/-- `or(n, A011371(n))` -/
def P2208078893539543127.Spec : Prop :=
  ∀ n, P2208078893539543127.a n = A283996 n

end A283996

/-! ## A283996.P15902474897830401404

`or(n, A283997(n))`
-/

namespace A283996.P15902474897830401404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A283997 n)

end

end A283996.P15902474897830401404

namespace A283996

/-- `or(n, A283997(n))` -/
def P15902474897830401404.Spec : Prop :=
  ∀ n, P15902474897830401404.a n = A283996 n

end A283996

/-! ## A283996.P17640221044993199962

`or(n, A227361(or(1, n)))`
-/

namespace A283996.P17640221044993199962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A227361 (Nat.lor 1 n))

end

end A283996.P17640221044993199962

namespace A283996

/-- `or(n, A227361(or(1, n)))` -/
def P17640221044993199962.Spec : Prop :=
  ∀ n, P17640221044993199962.a n = A283996 n

end A283996

/-! ## A283996.P4008669861676924435

`or(n, n-A000120(n))`
-/

namespace A283996.P4008669861676924435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - A000120 n)

end

end A283996.P4008669861676924435

namespace A283996

/-- `or(n, n-A000120(n))` -/
def P4008669861676924435.Spec : Prop :=
  ∀ n, P4008669861676924435.a n = A283996 n

end A283996

/-! ## A283996.P8664734186412954274

`or(n, n-log2(A001316(n)))`
-/

namespace A283996.P8664734186412954274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 (A001316 n : ℝ)))

end

end A283996.P8664734186412954274

namespace A283996

/-- `or(n, n-log2(A001316(n)))` -/
def P8664734186412954274.Spec : Prop :=
  ∀ n, P8664734186412954274.a n = A283996 n

end A283996

/-! ## A283996.P14908192177183777959

`or(n, n-∑[A088705(n)])`
-/

namespace A283996.P14908192177183777959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283996.P14908192177183777959

namespace A283996

/-- `or(n, n-∑[A088705(n)])` -/
def P14908192177183777959.Spec : Prop :=
  ∀ n, P14908192177183777959.a n = A283996 n

end A283996

/-! ## A283996.P14584212758653541490

`or(n, A005187(A004526(n)))`
-/

namespace A283996.P14584212758653541490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A005187 (A004526 n).toNat)

end

end A283996.P14584212758653541490

namespace A283996

/-- `or(n, A005187(A004526(n)))` -/
def P14584212758653541490.Spec : Prop :=
  ∀ n, P14584212758653541490.a n = A283996 n

end A283996

/-! ## A283996.P17802999459575782112

`(A283997(n)+A005187(n))/2`
-/

namespace A283996.P17802999459575782112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283997 n + A005187 n : ℚ) / 2

end

end A283996.P17802999459575782112

namespace A283996

/-- `(A283997(n)+A005187(n))/2` -/
def P17802999459575782112.Spec : Prop :=
  ∀ n, P17802999459575782112.a n = (A283996 n : ℚ)

end A283996

/-! ## A283996.P1857759599840189619

`A005187(n)-and(n, A011371(n))`
-/

namespace A283996.P1857759599840189619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - Int.land (n : ℤ) (A011371 n)

end

end A283996.P1857759599840189619

namespace A283996

/-- `A005187(n)-and(n, A011371(n))` -/
def P1857759599840189619.Spec : Prop :=
  ∀ n, P1857759599840189619.a n = A283996 n

end A283996

/-! ## A283996.P6302286742379689981

`or(n, A233931(n)+A233905(n))`
-/

namespace A283996.P6302286742379689981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A233931 n + A233905 n)

end

end A283996.P6302286742379689981

namespace A283996

/-- `or(n, A233931(n)+A233905(n))` -/
def P6302286742379689981.Spec : Prop :=
  ∀ n, P6302286742379689981.a n = A283996 n

end A283996

/-! ## A283996.P4765044945445466766

`or(n, n-A001222(A071044(n)))`
-/

namespace A283996.P4765044945445466766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - A001222 (A071044 n).toNat)

end

end A283996.P4765044945445466766

namespace A283996

/-- `or(n, n-A001222(A071044(n)))` -/
def P4765044945445466766.Spec : Prop :=
  ∀ n, P4765044945445466766.a n = A283996 n

end A283996

/-! ## A283996.P17130865344241897285

`or(n, ∑[A007814(n+1)]-A007814(n+1))`
-/

namespace A283996.P17130865344241897285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j - A007814 (n + 1))

end

end A283996.P17130865344241897285

namespace A283996

/-- `or(n, ∑[A007814(n+1)]-A007814(n+1))` -/
def P17130865344241897285.Spec : Prop :=
  ∀ n, P17130865344241897285.a n = A283996 n

end A283996

/-! ## A283996.P6815765253389432757

`A005187(n)-and(n, A005187(A004526(n)))`
-/

namespace A283996.P6815765253389432757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - Int.land (n : ℤ) (A005187 (A004526 n).toNat)

end

end A283996.P6815765253389432757

namespace A283996

/-- `A005187(n)-and(n, A005187(A004526(n)))` -/
def P6815765253389432757.Spec : Prop :=
  ∀ n, P6815765253389432757.a n = A283996 n

end A283996

/-! ## A283996.P17700710070312738354

`or(n, n-A005811(A341916(n)))`
-/

namespace A283996.P17700710070312738354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - A005811 (A341916 n).toNat)

end

end A283996.P17700710070312738354

namespace A283996

/-- `or(n, n-A005811(A341916(n)))` -/
def P17700710070312738354.Spec : Prop :=
  ∀ n, P17700710070312738354.a n = A283996 n

end A283996

/-! ## A283996.P5302679984654361507

`or(n, n-A001222(A278222(n)))`
-/

namespace A283996.P5302679984654361507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - A001222 (A278222 n).toNat)

end

end A283996.P5302679984654361507

namespace A283996

/-- `or(n, n-A001222(A278222(n)))` -/
def P5302679984654361507.Spec : Prop :=
  ∀ n, P5302679984654361507.a n = A283996 n

end A283996

/-! ## A283996.P2794402574219111351

`A011371(2*n)-A283998(n)`
-/

namespace A283996.P2794402574219111351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * n) - A283998 n

end

end A283996.P2794402574219111351

namespace A283996

/-- `A011371(2*n)-A283998(n)` -/
def P2794402574219111351.Spec : Prop :=
  ∀ n, P2794402574219111351.a n = A283996 n

end A283996

/-!
# A283997: a(n) = n XOR A005187(floor(n/2)), where XOR is bitwise-xor (A003987).

The programs for A283997, the canonical program `A283997.P17182648528535694112` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283997 has offset 0).

The definition of A283997 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283996, A283998, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283997.P17182648528535694112

`A283996(n)-A283998(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A283997

/-- `A283996(n)-A283998(n)` -/
def P17182648528535694112.Spec : Prop :=
  ∀ n, P17182648528535694112.a n = A283997 n

theorem P17182648528535694112.correct : P17182648528535694112.Spec := by
  intro n
  simp only [A283997]

end A283997

/-! ## A283997.P12557688225356098150

`A005187(n)-2*A283998(n)`
-/

namespace A283997.P12557688225356098150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - 2 * A283998 n

end

end A283997.P12557688225356098150

namespace A283997

/-- `A005187(n)-2*A283998(n)` -/
def P12557688225356098150.Spec : Prop :=
  ∀ n, P12557688225356098150.a n = A283997 n

end A283997

/-! ## A283997.P5801644621098736559

`xor(n, ∑[val(abs(1-n)+1, 2)]-1)`
-/

namespace A283997.P5801644621098736559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A283997.P5801644621098736559

namespace A283997

/-- `xor(n, ∑[val(abs(1-n)+1, 2)]-1)` -/
def P5801644621098736559.Spec : Prop :=
  ∀ n, P5801644621098736559.a n = A283997 n

end A283997

/-! ## A283997.P4252594810783036142

`xor(n, ∑[a(∑[n]%n)+1]-n)` with `a(0)=0`
-/

namespace A283997.P4252594810783036142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A283997.P4252594810783036142

namespace A283997

/-- `xor(n, ∑[a(∑[n]%n)+1]-n)` -/
def P4252594810783036142.Spec : Prop :=
  ∀ n, P4252594810783036142.a n = A283997 n

end A283997

/-! ## A283997.P8796789974975035860

`xor(n, A011371(n))`
-/

namespace A283997.P8796789974975035860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A011371 n)

end

end A283997.P8796789974975035860

namespace A283997

/-- `xor(n, A011371(n))` -/
def P8796789974975035860.Spec : Prop :=
  ∀ n, P8796789974975035860.a n = A283997 n

end A283997

/-! ## A283997.P8195396861418537609

`xor(n, A227361(or(1, n)))`
-/

namespace A283997.P8195396861418537609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A227361 (Nat.lor 1 n))

end

end A283997.P8195396861418537609

namespace A283997

/-- `xor(n, A227361(or(1, n)))` -/
def P8195396861418537609.Spec : Prop :=
  ∀ n, P8195396861418537609.a n = A283997 n

end A283997

/-! ## A283997.P2821693325575801248

`xor(n, n-A000120(n))`
-/

namespace A283997.P2821693325575801248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - A000120 n)

end

end A283997.P2821693325575801248

namespace A283997

/-- `xor(n, n-A000120(n))` -/
def P2821693325575801248.Spec : Prop :=
  ∀ n, P2821693325575801248.a n = A283997 n

end A283997

/-! ## A283997.P6104862239827204193

`xor(n, A005187(n)-n)`
-/

namespace A283997.P6104862239827204193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A005187 n - (n : ℤ))

end

end A283997.P6104862239827204193

namespace A283997

/-- `xor(n, A005187(n)-n)` -/
def P6104862239827204193.Spec : Prop :=
  ∀ n, P6104862239827204193.a n = A283997 n

end A283997

/-! ## A283997.P6425072792294269917

`xor(n, A005187(floor(n/2)))`
-/

namespace A283997.P6425072792294269917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A005187 ⌊(n : ℚ) / 2⌋.toNat)

end

end A283997.P6425072792294269917

namespace A283997

/-- `xor(n, A005187(floor(n/2)))` -/
def P6425072792294269917.Spec : Prop :=
  ∀ n, P6425072792294269917.a n = A283997 n

end A283997

/-! ## A283997.P2299103968072812067

`xor(n, n-log2(A001316(n)))`
-/

namespace A283997.P2299103968072812067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 (A001316 n : ℝ)))

end

end A283997.P2299103968072812067

namespace A283997

/-- `xor(n, n-log2(A001316(n)))` -/
def P2299103968072812067.Spec : Prop :=
  ∀ n, P2299103968072812067.a n = A283997 n

end A283997

/-! ## A283997.P12880105745361219094

`xor(n, n-∑[A088705(n)])`
-/

namespace A283997.P12880105745361219094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283997.P12880105745361219094

namespace A283997

/-- `xor(n, n-∑[A088705(n)])` -/
def P12880105745361219094.Spec : Prop :=
  ∀ n, P12880105745361219094.a n = A283997 n

end A283997

/-! ## A283997.P4608555675149229451

`xor(n, comp[A055938(n+1)]-n)`
-/

namespace A283997.P4608555675149229451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A283997.P4608555675149229451

namespace A283997

/-- `xor(n, comp[A055938(n+1)]-n)` -/
def P4608555675149229451.Spec : Prop :=
  ∀ n, P4608555675149229451.a n = A283997 n

end A283997

/-! ## A283997.P7539051551007666357

`2*A283996(n)-A005187(n)`
-/

namespace A283997.P7539051551007666357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283996 n - A005187 n

end

end A283997.P7539051551007666357

namespace A283997

/-- `2*A283996(n)-A005187(n)` -/
def P7539051551007666357.Spec : Prop :=
  ∀ n, P7539051551007666357.a n = A283997 n

end A283997

/-! ## A283997.P18210510608611336539

`xor(n, A233931(n)+A233905(n))`
-/

namespace A283997.P18210510608611336539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A233931 n + A233905 n)

end

end A283997.P18210510608611336539

namespace A283997

/-- `xor(n, A233931(n)+A233905(n))` -/
def P18210510608611336539.Spec : Prop :=
  ∀ n, P18210510608611336539.a n = A283997 n

end A283997

/-! ## A283997.P5391922132029578162

`xor(n, n-A001222(A071044(n)))`
-/

namespace A283997.P5391922132029578162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - A001222 (A071044 n).toNat)

end

end A283997.P5391922132029578162

namespace A283997

/-- `xor(n, n-A001222(A071044(n)))` -/
def P5391922132029578162.Spec : Prop :=
  ∀ n, P5391922132029578162.a n = A283997 n

end A283997

/-! ## A283997.P7444638898912581540

`xor(n, n-(A160385(n)+A160383(n)))`
-/

namespace A283997.P7444638898912581540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - (A160385 n + A160383 n))

end

end A283997.P7444638898912581540

namespace A283997

/-- `xor(n, n-(A160385(n)+A160383(n)))` -/
def P7444638898912581540.Spec : Prop :=
  ∀ n, P7444638898912581540.a n = A283997 n

end A283997

/-! ## A283997.P2799644956810041546

`xor(n, ∑[A007814(n+1)]-A007814(n+1))`
-/

namespace A283997.P2799644956810041546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j - A007814 (n + 1))

end

end A283997.P2799644956810041546

namespace A283997

/-- `xor(n, ∑[A007814(n+1)]-A007814(n+1))` -/
def P2799644956810041546.Spec : Prop :=
  ∀ n, P2799644956810041546.a n = A283997 n

end A283997

/-! ## A283997.P3224416283590212428

`xor(A035327(n)+A000120(n), A035327(n))`
-/

namespace A283997.P3224416283590212428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035327 n + A000120 n) (A035327 n)

end

end A283997.P3224416283590212428

namespace A283997

/-- `xor(A035327(n)+A000120(n), A035327(n))` -/
def P3224416283590212428.Spec : Prop :=
  ∀ n, P3224416283590212428.a n = A283997 n

end A283997

/-! ## A283997.P13988921094827399396

`xor(n, n-A005811(A006068(n)))`
-/

namespace A283997.P13988921094827399396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - A005811 (A006068 n).toNat)

end

end A283997.P13988921094827399396

namespace A283997

/-- `xor(n, n-A005811(A006068(n)))` -/
def P13988921094827399396.Spec : Prop :=
  ∀ n, P13988921094827399396.a n = A283997 n

end A283997

/-! ## A283997.P579807906078615991

`xor(n, n-A005811(A341916(n)))`
-/

namespace A283997.P579807906078615991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - A005811 (A341916 n).toNat)

end

end A283997.P579807906078615991

namespace A283997

/-- `xor(n, n-A005811(A341916(n)))` -/
def P579807906078615991.Spec : Prop :=
  ∀ n, P579807906078615991.a n = A283997 n

end A283997

/-!
# A283998: a(n) = n AND A005187(floor(n/2)), where AND is bitwise-and (A004198).

The programs for A283998, the canonical program `A283998.P9614756584148287979` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283998 has offset 0).

The definition of A283998 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283996, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283998.P9614756584148287979

`A005187(n)-A283996(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A283998

/-- `A005187(n)-A283996(n)` -/
def P9614756584148287979.Spec : Prop :=
  ∀ n, P9614756584148287979.a n = A283998 n

theorem P9614756584148287979.correct : P9614756584148287979.Spec := by
  intro n
  simp only [A283998]

end A283998

/-! ## A283998.P6630088574697530276

`A283996(n)-A283997(n)`
-/

namespace A283998.P6630088574697530276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283996 n - A283997 n

end

end A283998.P6630088574697530276

namespace A283998

/-- `A283996(n)-A283997(n)` -/
def P6630088574697530276.Spec : Prop :=
  ∀ n, P6630088574697530276.a n = A283998 n

end A283998

/-! ## A283998.P2179359642655162901

`(A005187(n)-A283997(n))/2`
-/

namespace A283998.P2179359642655162901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005187 n - A283997 n : ℚ) / 2

end

end A283998.P2179359642655162901

namespace A283998

/-- `(A005187(n)-A283997(n))/2` -/
def P2179359642655162901.Spec : Prop :=
  ∀ n, P2179359642655162901.a n = (A283998 n : ℚ)

end A283998

/-! ## A283998.P8020500702988773579

`and(n, ∑[val(abs(1-n)+1, 2)]-1)`
-/

namespace A283998.P8020500702988773579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A283998.P8020500702988773579

namespace A283998

/-- `and(n, ∑[val(abs(1-n)+1, 2)]-1)` -/
def P8020500702988773579.Spec : Prop :=
  ∀ n, P8020500702988773579.a n = A283998 n

end A283998

/-! ## A283998.P4863319707524915319

`and(n, ∑[a(∑[n]%n)+1]-n)` with `a(0)=0`
-/

namespace A283998.P4863319707524915319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A283998.P4863319707524915319

namespace A283998

/-- `and(n, ∑[a(∑[n]%n)+1]-n)` -/
def P4863319707524915319.Spec : Prop :=
  ∀ n, P4863319707524915319.a n = A283998 n

end A283998

/-! ## A283998.P17609960728290191087

`and(n, A011371(n))`
-/

namespace A283998.P17609960728290191087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A011371 n)

end

end A283998.P17609960728290191087

namespace A283998

/-- `and(n, A011371(n))` -/
def P17609960728290191087.Spec : Prop :=
  ∀ n, P17609960728290191087.a n = A283998 n

end A283998

/-! ## A283998.P16145625514496717086

`and(n, A227361(or(1, n)))`
-/

namespace A283998.P16145625514496717086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A227361 (Nat.lor 1 n))

end

end A283998.P16145625514496717086

namespace A283998

/-- `and(n, A227361(or(1, n)))` -/
def P16145625514496717086.Spec : Prop :=
  ∀ n, P16145625514496717086.a n = A283998 n

end A283998

/-! ## A283998.P17193173608268056694

`and(n, n-A000120(n))`
-/

namespace A283998.P17193173608268056694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - A000120 n)

end

end A283998.P17193173608268056694

namespace A283998

/-- `and(n, n-A000120(n))` -/
def P17193173608268056694.Spec : Prop :=
  ∀ n, P17193173608268056694.a n = A283998 n

end A283998

/-! ## A283998.P955729080365053285

`and(n, n-log2(A001316(n)))`
-/

namespace A283998.P955729080365053285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 (A001316 n : ℝ)))

end

end A283998.P955729080365053285

namespace A283998

/-- `and(n, n-log2(A001316(n)))` -/
def P955729080365053285.Spec : Prop :=
  ∀ n, P955729080365053285.a n = A283998 n

end A283998

/-! ## A283998.P4516102789600780677

`and(n, n-∑[A088705(n)])`
-/

namespace A283998.P4516102789600780677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283998.P4516102789600780677

namespace A283998

/-- `and(n, n-∑[A088705(n)])` -/
def P4516102789600780677.Spec : Prop :=
  ∀ n, P4516102789600780677.a n = A283998 n

end A283998

/-! ## A283998.P1981611634445724134

`and(n, A005187(A004526(n)))`
-/

namespace A283998.P1981611634445724134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A005187 (A004526 n).toNat)

end

end A283998.P1981611634445724134

namespace A283998

/-- `and(n, A005187(A004526(n)))` -/
def P1981611634445724134.Spec : Prop :=
  ∀ n, P1981611634445724134.a n = A283998 n

end A283998

/-! ## A283998.P16255897349514924101

`and(n, ∑[A007814(A302436(n))])`
-/

namespace A283998.P16255897349514924101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A302436 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283998.P16255897349514924101

namespace A283998

/-- `and(n, ∑[A007814(A302436(n))])` -/
def P16255897349514924101.Spec : Prop :=
  ∀ n, P16255897349514924101.a n = A283998 n

end A283998

/-! ## A283998.P7411880150241997409

`A011371(n)+n-A283996(n)`
-/

namespace A283998.P7411880150241997409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + ((n : ℤ) - A283996 n)

end

end A283998.P7411880150241997409

namespace A283998

/-- `A011371(n)+n-A283996(n)` -/
def P7411880150241997409.Spec : Prop :=
  ∀ n, P7411880150241997409.a n = A283998 n

end A283998

/-! ## A283998.P7674294644219737625

`and(n, n-A001222(A071044(n)))`
-/

namespace A283998.P7674294644219737625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - A001222 (A071044 n).toNat)

end

end A283998.P7674294644219737625

namespace A283998

/-- `and(n, n-A001222(A071044(n)))` -/
def P7674294644219737625.Spec : Prop :=
  ∀ n, P7674294644219737625.a n = A283998 n

end A283998

/-! ## A283998.P3622055327964586814

`and(n, A239904(n)-A014081(n))`
-/

namespace A283998.P3622055327964586814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A239904 n - A014081 n)

end

end A283998.P3622055327964586814

namespace A283998

/-- `and(n, A239904(n)-A014081(n))` -/
def P3622055327964586814.Spec : Prop :=
  ∀ n, P3622055327964586814.a n = A283998 n

end A283998

/-! ## A283998.P17407631331130424598

`and(n, ∑[A007814(n+1)]-A007814(n+1))`
-/

namespace A283998.P17407631331130424598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j - A007814 (n + 1))

end

end A283998.P17407631331130424598

namespace A283998

/-- `and(n, ∑[A007814(n+1)]-A007814(n+1))` -/
def P17407631331130424598.Spec : Prop :=
  ∀ n, P17407631331130424598.a n = A283998 n

end A283998

/-! ## A283998.P12033661330083588086

`A005187(n)-or(n, A005187(A004526(n)))`
-/

namespace A283998.P12033661330083588086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - Int.lor (n : ℤ) (A005187 (A004526 n).toNat)

end

end A283998.P12033661330083588086

namespace A283998

/-- `A005187(n)-or(n, A005187(A004526(n)))` -/
def P12033661330083588086.Spec : Prop :=
  ∀ n, P12033661330083588086.a n = A283998 n

end A283998

/-! ## A283998.P12862797771477318188

`and(n, n-A005811(A341916(n)))`
-/

namespace A283998.P12862797771477318188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - A005811 (A341916 n).toNat)

end

end A283998.P12862797771477318188

namespace A283998

/-- `and(n, n-A005811(A341916(n)))` -/
def P12862797771477318188.Spec : Prop :=
  ∀ n, P12862797771477318188.a n = A283998 n

end A283998

/-! ## A283998.P509612346048330340

`and(n, n-A001222(A278222(n)))`
-/

namespace A283998.P509612346048330340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - A001222 (A278222 n).toNat)

end

end A283998.P509612346048330340

namespace A283998

/-- `and(n, n-A001222(A278222(n)))` -/
def P509612346048330340.Spec : Prop :=
  ∀ n, P509612346048330340.a n = A283998 n

end A283998

/-! ## A283998.P14864542722508262698

`A011371(2*n)-A283996(n)`
-/

namespace A283998.P14864542722508262698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * n) - A283996 n

end

end A283998.P14864542722508262698

namespace A283998

/-- `A011371(2*n)-A283996(n)` -/
def P14864542722508262698.Spec : Prop :=
  ∀ n, P14864542722508262698.a n = A283998 n

end A283998

/-!
# A283999: a(n) = A005187(n) XOR A006068(n), where XOR is bitwise-xor (A003987).

The programs for A283999, the canonical program `A283999.P10523247562261861769` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283999 has offset 0).

The definition of A283999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283999.P10523247562261861769

`xor(A005187(n), A006068(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A283999

/-- `xor(A005187(n), A006068(n))` -/
def P10523247562261861769.Spec : Prop :=
  ∀ n, P10523247562261861769.a n = A283999 n

theorem P10523247562261861769.correct : P10523247562261861769.Spec := by
  intro n
  simp only [A283999]

end A283999

/-! ## A283999.P1876505271340662015

`xor(A268716(n)/2, A005187(n))`
-/

namespace A283999.P1876505271340662015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)) (A005187 n)

end

end A283999.P1876505271340662015

namespace A283999

/-- `xor(A268716(n)/2, A005187(n))` -/
def P1876505271340662015.Spec : Prop :=
  ∀ n, P1876505271340662015.a n = A283999 n

end A283999

/-! ## A283999.P6674288052881699665

`xor(A011371(n)+n, A006068(n))`
-/

namespace A283999.P6674288052881699665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011371 n + (n : ℤ)) (A006068 n)

end

end A283999.P6674288052881699665

namespace A283999

/-- `xor(A011371(n)+n, A006068(n))` -/
def P6674288052881699665.Spec : Prop :=
  ∀ n, P6674288052881699665.a n = A283999 n

end A283999

/-! ## A283999.P16010225989911194414

`xor(A286546(n)+n, A005187(n))`
-/

namespace A283999.P16010225989911194414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A286546 n + (n : ℤ)) (A005187 n)

end

end A283999.P16010225989911194414

namespace A283999

/-- `xor(A286546(n)+n, A005187(n))` -/
def P16010225989911194414.Spec : Prop :=
  ∀ n, P16010225989911194414.a n = A283999 n

end A283999

/-! ## A283999.P547022648471779798

`xor(n, xor(A005187(n), A292600(n)))`
-/

namespace A283999.P547022648471779798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A005187 n) (A292600 n))

end

end A283999.P547022648471779798

namespace A283999

/-- `xor(n, xor(A005187(n), A292600(n)))` -/
def P547022648471779798.Spec : Prop :=
  ∀ n, P547022648471779798.a n = A283999 n

end A283999

/-! ## A283999.P6545031859420267053

`xor(A003188(A064707(n)), A005187(n))`
-/

namespace A283999.P6545031859420267053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 (A064707 n).toNat) (A005187 n)

end

end A283999.P6545031859420267053

namespace A283999

/-- `xor(A003188(A064707(n)), A005187(n))` -/
def P6545031859420267053.Spec : Prop :=
  ∀ n, P6545031859420267053.a n = A283999 n

end A283999

/-! ## A283999.P7370700946073076778

`xor(A005187(n), A292600(A005843(n)))`
-/

namespace A283999.P7370700946073076778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005187 n) (A292600 (A005843 n).toNat)

end

end A283999.P7370700946073076778

namespace A283999

/-- `xor(A005187(n), A292600(A005843(n)))` -/
def P7370700946073076778.Spec : Prop :=
  ∀ n, P7370700946073076778.a n = A283999 n

end A283999

/-! ## A283999.P7606852935929574617

`xor(n-A005811(A341916(n))+n, A006068(n))`
-/

namespace A283999.P7606852935929574617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A005811 (A341916 n).toNat + (n : ℤ)) (A006068 n)

end

end A283999.P7606852935929574617

namespace A283999

/-- `xor(n-A005811(A341916(n))+n, A006068(n))` -/
def P7606852935929574617.Spec : Prop :=
  ∀ n, P7606852935929574617.a n = A283999 n

end A283999

/-! ## A283999.P5225714190194383749

`xor(n-A001222(A278222(n))+n, A006068(n))`
-/

namespace A283999.P5225714190194383749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A001222 (A278222 n).toNat + (n : ℤ)) (A006068 n)

end

end A283999.P5225714190194383749

namespace A283999

/-- `xor(n-A001222(A278222(n))+n, A006068(n))` -/
def P5225714190194383749.Spec : Prop :=
  ∀ n, P5225714190194383749.a n = A283999 n

end A283999

/-! ## A283999.P7636852146658849551

`xor(eq[1, A079559(n)], A006068(n))`
-/

namespace A283999.P7636852146658849551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A006068 n)

end

end A283999.P7636852146658849551

namespace A283999

/-- `xor(eq[1, A079559(n)], A006068(n))` -/
def P7636852146658849551.Spec : Prop :=
  ∀ n, P7636852146658849551.a n = A283999 n

end A283999

/-! ## A283999.P2756331343698329074

`xor(A011371(2*n), A006068(n))`
-/

namespace A283999.P2756331343698329074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011371 (2 * n)) (A006068 n)

end

end A283999.P2756331343698329074

namespace A283999

/-- `xor(A011371(2*n), A006068(n))` -/
def P2756331343698329074.Spec : Prop :=
  ∀ n, P2756331343698329074.a n = A283999 n

end A283999

/-! ## A283999.P189410590500773542

`xor(A006068(n), A011371(A005843(n)))`
-/

namespace A283999.P189410590500773542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006068 n) (A011371 (A005843 n).toNat)

end

end A283999.P189410590500773542

namespace A283999

/-- `xor(A006068(n), A011371(A005843(n)))` -/
def P189410590500773542.Spec : Prop :=
  ∀ n, P189410590500773542.a n = A283999 n

end A283999

/-! ## A283999.P11572693000297391882

`xor(A004525(A268716(n)), A005187(n))`
-/

namespace A283999.P11572693000297391882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004525 (A268716 n).toNat) (A005187 n)

end

end A283999.P11572693000297391882

namespace A283999

/-- `xor(A004525(A268716(n)), A005187(n))` -/
def P11572693000297391882.Spec : Prop :=
  ∀ n, P11572693000297391882.a n = A283999 n

end A283999

