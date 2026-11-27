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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A269000: Number of 6Xn binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269000, there is no canonical definition to state claims against.
-/

/-! ## A269000.P10491019932510376252

`A268995(A166136(n+4))`
-/

namespace A269000.P10491019932510376252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A166136 (n + 4)).toNat

end

end A269000.P10491019932510376252

/-!
# A269001: Number of 7Xn binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269001, there is no canonical definition to state claims against.
-/

/-! ## A269001.P2312211683040383794

`A268892(n+1)+A188704(n+1)`
-/

namespace A269001.P2312211683040383794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268892 (n + 1) + A188704 (n + 1)

end

end A269001.P2312211683040383794

/-! ## A269001.P8031475757642701948

`A268995(A056119(n)+28)`
-/

namespace A269001.P8031475757642701948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A056119 n + 28).toNat

end

end A269001.P8031475757642701948

/-!
# A269003: Numbers having the same parity of numbers of 1's in bases 2 and -2.

The programs for A269003, there is no canonical definition to state claims against.
-/

/-! ## A269003.P3008303394834208886

`eq[4, A106049(2*n)]`
-/

namespace A269003.P3008303394834208886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106049 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269003.P3008303394834208886

/-! ## A269003.P14594061383637158135

`eq[1-a(and(n, n-1)), A269027(n)]` with `a(0)=0`
-/

namespace A269003.P14594061383637158135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269003.P14594061383637158135

/-! ## A269003.P9613447126611934510

`eq[1-a(and(n, n-1)), A027615(n)%2]` with `a(0)=0`
-/

namespace A269003.P9613447126611934510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027615 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269003.P9613447126611934510

/-! ## A269003.P17221282093558065851

`eq[1-a(and(n, n-1)), A338253(n)%2]` with `a(0)=0`
-/

namespace A269003.P17221282093558065851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338253 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269003.P17221282093558065851

/-! ## A269003.P11906302960614390755

`eq[1-a(and(n, n-1)), A284566(3*n)%2]` with `a(0)=0`
-/

namespace A269003.P11906302960614390755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284566 (3 * n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269003.P11906302960614390755

/-! ## A269003.P1237487576284027456

`eq[A010060(n), A269027(n)]`
-/

namespace A269003.P1237487576284027456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269003.P1237487576284027456

/-! ## A269003.P1520104898571849777

`eq[log2(A001285(n)), A269027(n)]`
-/

namespace A269003.P1520104898571849777
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001285 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A269003.P1520104898571849777

/-! ## A269003.P8243186172151731578

`eq[1, A269027(n)+A010059(n)]`
-/

namespace A269003.P8243186172151731578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n + A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A269003.P8243186172151731578

/-! ## A269003.P8166616624344089904

`eq[A254379(2*n), A269027(n)]`
-/

namespace A269003.P8166616624344089904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269003.P8166616624344089904

/-! ## A269003.P16080963053704343875

`eq[A269027(n), A316828(2*n)]`
-/

namespace A269003.P16080963053704343875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269003.P16080963053704343875

/-!
# A269004: a(n) is the sum of the prime factors, with repetition, of the sum of all preceding terms, with initial terms a(1)=1 and a(2)=2.

The programs for A269004, there is no canonical definition to state claims against.
-/

/-! ## A269004.P13848459635362238153

`Δ[A001414(a(n-1))+a(n-1)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A269004.P13848459635362238153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A001414 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269004.P13848459635362238153

/-! ## A269004.P9688180469484426707

`Δ[A222416(a(n-1))+a(n-1)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A269004.P9688180469484426707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A222416 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269004.P9688180469484426707

/-! ## A269004.P7592439436013412657

`Δ[A075254(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A269004.P7592439436013412657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A075254 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269004.P7592439436013412657

/-! ## A269004.P13522435006053502362

`Δ[A075653(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A269004.P13522435006053502362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A075653 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269004.P13522435006053502362

/-! ## A269004.P9549695078425963257

`Δ[A254340(A023443(a(n-1)))]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A269004.P9549695078425963257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  A254340 (A023443 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269004.P9549695078425963257

/-!
# A269005: Number of n X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269005, there is no canonical definition to state claims against.
-/

/-! ## A269005.P5359987375530044818

`A269011(4*∑[n]+1)`
-/

namespace A269005.P5359987375530044818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A269005.P5359987375530044818

/-! ## A269005.P10117519634214366546

`record[A003982(n)*A269011(n+1)]`
-/

namespace A269005.P10117519634214366546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A269011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269005.P10117519634214366546

/-!
# A269006: Number of n X 3 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269006, the canonical program `A269006.P7530285059064777046` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269006 has offset 1).

The definition of A269006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269006.P7530285059064777046

`ogf((2-12x+28x^2-36x^3+18x^4)/(1-10x+31x^2-24x^3-21x^4+18x^5+9x^6))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269006

/-- `ogf((2-12x+28x^2-36x^3+18x^4)/(1-10x+31x^2-24x^3-21x^4+18x^5+9x^6))` -/
def P7530285059064777046.Spec : Prop :=
  ∀ n, P7530285059064777046.a n = A269006 (n + 1)

theorem P7530285059064777046.correct : P7530285059064777046.Spec := by
  intro n
  simp only [A269006, Nat.add_sub_cancel]

end A269006

/-! ## A269006.P11532382825130539515

`A269070(n+1)-A228678(n+1)`
-/

namespace A269006.P11532382825130539515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269070 (n + 1) - A228678 (n + 1)

end

end A269006.P11532382825130539515

namespace A269006

/-- `A269070(n+1)-A228678(n+1)` -/
def P11532382825130539515.Spec : Prop :=
  ∀ n, P11532382825130539515.a n = A269006 (n + 1)

end A269006

/-! ## A269006.P16214228819040354494

`A269070(n+1)-A228683(∑[n+3]+1)`
-/

namespace A269006.P16214228819040354494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269070 (n + 1) - A228683 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269006.P16214228819040354494

namespace A269006

/-- `A269070(n+1)-A228683(∑[n+3]+1)` -/
def P16214228819040354494.Spec : Prop :=
  ∀ n, P16214228819040354494.a n = A269006 (n + 1)

end A269006

/-! ## A269006.P1112239846381876145

`A269011(∑[n+3]+1)`
-/

namespace A269006.P1112239846381876145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269006.P1112239846381876145

namespace A269006

/-- `A269011(∑[n+3]+1)` -/
def P1112239846381876145.Spec : Prop :=
  ∀ n, P1112239846381876145.a n = A269006 (n + 1)

end A269006

/-!
# A269007: Number of n X 4 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269007, the canonical program `A269007.P17250824353176398276` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269007 has offset 1).

The definition of A269007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269007.P17250824353176398276

`ogf((5-24x+73x^2-124x^3+60x^4+16x^5+4x^6)/(1-12x+40x^2-8x^3-92x^4+32x^5+64x^6))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269007

/-- `ogf((5-24x+73x^2-124x^3+60x^4+16x^5+4x^6)/(1-12x+40x^2-8x^3-92x^4+32x^5+64x^6))` -/
def P17250824353176398276.Spec : Prop :=
  ∀ n, P17250824353176398276.a n = A269007 (n + 1)

theorem P17250824353176398276.correct : P17250824353176398276.Spec := by
  intro n
  simp only [A269007, Nat.add_sub_cancel]

end A269007

/-! ## A269007.P17724524662500777280

`A269011(A027379(n+2))`
-/

namespace A269007.P17724524662500777280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A027379 (n + 2)).toNat

end

end A269007.P17724524662500777280

namespace A269007

/-- `A269011(A027379(n+2))` -/
def P17724524662500777280.Spec : Prop :=
  ∀ n, P17724524662500777280.a n = A269007 (n + 1)

end A269007

/-!
# A269008: Number of n X 5 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269008, there is no canonical definition to state claims against.
-/

/-! ## A269008.P10594008610468148203

`A269011(Δ[A264443(n)])`
-/

namespace A269008.P10594008610468148203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (f1 (n + 1) - f1 n).toNat

end

end A269008.P10594008610468148203

/-!
# A269009: Number of nX6 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269009, there is no canonical definition to state claims against.
-/

/-! ## A269009.P16792446642342279033

`A269011(A052905(n+3))`
-/

namespace A269009.P16792446642342279033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A052905 (n + 3)).toNat

end

end A269009.P16792446642342279033

/-!
# A269010: Number of nX7 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269010, there is no canonical definition to state claims against.
-/

/-! ## A269010.P5261324226827770317

`A269011(A055999(n+4))`
-/

namespace A269010.P5261324226827770317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A055999 (n + 4)).toNat

end

end A269010.P5261324226827770317

/-!
# A269011: T(n,k)=Number of nXk binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269011, there is no canonical definition to state claims against.
-/

/-! ## A269011.P1481068644672124044

`A269075(n+1)-A228683(n+1)`
-/

namespace A269011.P1481068644672124044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (n + 1) - A228683 (n + 1)

end

end A269011.P1481068644672124044

/-! ## A269011.P3891306871513245702

`A056737(A228683(n+1)*A269075(n+1))`
-/

namespace A269011.P3891306871513245702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A228683 (n + 1) * A269075 (n + 1)).toNat

end

end A269011.P3891306871513245702

/-! ## A269011.P6262997407481755138

`A283543(n+1)-(A228683(n+1)+A107846(A001006(n)))`
-/

namespace A269011.P6262997407481755138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (n + 1) - (A228683 (n + 1) + A107846 (A001006 n).toNat)

end

end A269011.P6262997407481755138

/-! ## A269011.P12406485939170659276

`A283543(n+1)-(A228683(n+1)+A044940(A102468(n)))`
-/

namespace A269011.P12406485939170659276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (n + 1) - (A228683 (n + 1) + A044940 (A102468 n).toNat)

end

end A269011.P12406485939170659276

/-!
# A269012: Number of 2 X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269012, the canonical program `A269012.P16983890212988660902` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269012 has offset 1).

The definition of A269012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269012.P17730189843540162763

`ogf(4x/(1-2x-5x^2+6x^3+9x^4))`
-/

namespace A269012.P17730189843540162763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -2, -5, 6, 9] n

end

end A269012.P17730189843540162763

namespace A269012

/-- `ogf(4x/(1-2x-5x^2+6x^3+9x^4))` -/
def P17730189843540162763.Spec : Prop :=
  ∀ n, P17730189843540162763.a n = A269012 (n + 1)

end A269012

/-! ## A269012.P16983890212988660902

`2*a(n-1)+5*a(n-2)-6*a(n-3)-9*a(n-4)` with `a(0)=0, a(1)=4, a(2)=8, a(3)=36`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269012

/-- `2*a(n-1)+5*a(n-2)-6*a(n-3)-9*a(n-4)` -/
def P16983890212988660902.Spec : Prop :=
  ∀ n, P16983890212988660902.a n = A269012 (n + 1)

theorem P16983890212988660902.correct : P16983890212988660902.Spec := by
  intro n
  simp only [A269012, Nat.add_sub_cancel]

end A269012

/-! ## A269012.P12983162460782291091

`∑{#}[floor((n+1)/2), C(n+1-#, #)*A120908(#+1)]`
-/

namespace A269012.P12983162460782291091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n + 1 : ℤ) - (k : ℤ)).toNat k : ℤ) * A120908 (k + 1)

end

end A269012.P12983162460782291091

namespace A269012

/-- `∑{#}[floor((n+1)/2), C(n+1-#, #)*A120908(#+1)]` -/
def P12983162460782291091.Spec : Prop :=
  ∀ n, P12983162460782291091.a n = A269012 (n + 1)

end A269012

/-! ## A269012.P7199492802843401140

`A269011(∑[n+1]+2)`
-/

namespace A269012.P7199492802843401140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269012.P7199492802843401140

namespace A269012

/-- `A269011(∑[n+1]+2)` -/
def P7199492802843401140.Spec : Prop :=
  ∀ n, P7199492802843401140.a n = A269012 (n + 1)

end A269012

/-!
# A269013: Number of 3 X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269013, the canonical program `A269013.P6053196905423208836` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269013 has offset 1).

The definition of A269013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269013.P14480286369484669328

`A269077(n+1)-A228684(n+1)`
-/

namespace A269013.P14480286369484669328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269077 (n + 1) - A228684 (n + 1)

end

end A269013.P14480286369484669328

namespace A269013

/-- `A269077(n+1)-A228684(n+1)` -/
def P14480286369484669328.Spec : Prop :=
  ∀ n, P14480286369484669328.a n = A269013 (n + 1)

theorem P14480286369484669328.correct : P14480286369484669328.Spec := by
  intro n
  simp only [A269013, Nat.add_sub_cancel, A269013.P14480286369484669328.a, A269013.P6053196905423208836.a, A228684, A228684.P6711127263793948843.a, A269077, A269077.P11552380146082181965.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269013

/-! ## A269013.P6053196905423208836

`ogf((15x-14x^2+x^3)/(1-4x-8x^2+34x^3+16x^4-60x^5+25x^6))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269013

/-- `ogf((15x-14x^2+x^3)/(1-4x-8x^2+34x^3+16x^4-60x^5+25x^6))` -/
def P6053196905423208836.Spec : Prop :=
  ∀ n, P6053196905423208836.a n = A269013 (n + 1)

theorem P6053196905423208836.correct : P6053196905423208836.Spec := by
  intro n
  simp only [A269013, Nat.add_sub_cancel]

end A269013

/-! ## A269013.P7360892047382021230

`A269077(n+1)-A228683(A167614(n+1))`
-/

namespace A269013.P7360892047382021230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269077 (n + 1) - A228683 (A167614 (n + 1)).toNat

end

end A269013.P7360892047382021230

namespace A269013

/-- `A269077(n+1)-A228683(A167614(n+1))` -/
def P7360892047382021230.Spec : Prop :=
  ∀ n, P7360892047382021230.a n = A269013 (n + 1)

end A269013

/-! ## A269013.P8701410318370132829

`A269011(∑[n+2]+4)`
-/

namespace A269013.P8701410318370132829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269013.P8701410318370132829

namespace A269013

/-- `A269011(∑[n+2]+4)` -/
def P8701410318370132829.Spec : Prop :=
  ∀ n, P8701410318370132829.a n = A269013 (n + 1)

end A269013

/-! ## A269013.P14865497437842744116

`A269075(∑[n+2]+4)-A228684(n+1)`
-/

namespace A269013.P14865497437842744116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (∑ j ∈ Finset.range (n + 1), f1 j + 4) - A228684 (n + 1)

end

end A269013.P14865497437842744116

namespace A269013

/-- `A269075(∑[n+2]+4)-A228684(n+1)` -/
def P14865497437842744116.Spec : Prop :=
  ∀ n, P14865497437842744116.a n = A269013 (n + 1)

end A269013

/-!
# A269014: Number of 4 X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269014, the canonical program `A269014.P3177176264661704322` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269014 has offset 1).

The definition of A269014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269014.P3177176264661704322

`ogf((48x+32x^2-104x^3-96x^4)/(1-4x-28x^2+78x^3+264x^4-296x^5-527x^6+252x^7+324x^8))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269014

/-- `ogf((48x+32x^2-104x^3-96x^4)/(1-4x-28x^2+78x^3+264x^4-296x^5-527x^6+252x^7+324x^8))` -/
def P3177176264661704322.Spec : Prop :=
  ∀ n, P3177176264661704322.a n = A269014 (n + 1)

theorem P3177176264661704322.correct : P3177176264661704322.Spec := by
  intro n
  simp only [A269014, Nat.add_sub_cancel]

end A269014

/-! ## A269014.P13103563391247598124

`A269011(A052905(n)+9)`
-/

namespace A269014.P13103563391247598124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A052905 n + 9).toNat

end

end A269014.P13103563391247598124

namespace A269014

/-- `A269011(A052905(n)+9)` -/
def P13103563391247598124.Spec : Prop :=
  ∀ n, P13103563391247598124.a n = A269014 (n + 1)

end A269014

/-!
# A269015: Number of 5Xn binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269015, there is no canonical definition to state claims against.
-/

/-! ## A269015.P5498166146247036770

`A269011(A167499(n+3))`
-/

namespace A269015.P5498166146247036770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A167499 (n + 3)).toNat

end

end A269015.P5498166146247036770

/-!
# A269016: Number of 6Xn binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269016, there is no canonical definition to state claims against.
-/

/-! ## A269016.P2808483645354274865

`A269011(A166136(n+4))`
-/

namespace A269016.P2808483645354274865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A166136 (n + 4)).toNat

end

end A269016.P2808483645354274865

/-!
# A269017: Number of 7Xn binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269017, there is no canonical definition to state claims against.
-/

/-! ## A269017.P17262526179073078150

`A269011(A167487(n+5))`
-/

namespace A269017.P17262526179073078150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (A167487 (n + 5)).toNat

end

end A269017.P17262526179073078150

/-!
# A269018: Primes p of the form 2^k + 2*(-1)^k - 1.

The programs for A269018, there is no canonical definition to state claims against.
-/

/-! ## A269018.P4864541710517681508

`p?[record[Δ[2^n-xor(1, n)]]]`
-/

namespace A269018.P4864541710517681508
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.xor 1 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269018.P4864541710517681508

/-! ## A269018.P8454689964852544570

`p?[record[abs((-2)^n+2)-1]]`
-/

namespace A269018.P8454689964852544570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-2) ^ n + 2| - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269018.P8454689964852544570

/-! ## A269018.P3005366461240413962

`p?[2^n+1-and(4, (n+1)²)]`
-/

namespace A269018.P3005366461240413962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (1 - (Nat.land 4 ((n + 1) ^ 2) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269018.P3005366461240413962

/-!
# A269019: a(n) = 2^n + 2*(-1)^n - 1.

The programs for A269019, the canonical program `A269019.P9311159951334276451` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269019 has offset 0).

The definition of A269019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+2*(-1)^n-1` (program `A269019.P9311159951334276451`, by `A269019.P9311159951334276451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269019.P1413175910141751449

`ogf((2-5x+5x^2)/(1-2x-x^2+2x^3))`
-/

namespace A269019.P1413175910141751449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5, 5] [1, -2, -1, 2] n

end

end A269019.P1413175910141751449

namespace A269019

/-- `ogf((2-5x+5x^2)/(1-2x-x^2+2x^3))` -/
def P1413175910141751449.Spec : Prop :=
  ∀ n, P1413175910141751449.a n = A269019 n

end A269019

/-! ## A269019.P9311159951334276451

`2^n+2*(-1)^n-1`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269019

/-- `2^n+2*(-1)^n-1` -/
def P9311159951334276451.Spec : Prop :=
  ∀ n, P9311159951334276451.a n = A269019 n

theorem P9311159951334276451.correct : P9311159951334276451.Spec := by
  intro n
  simp only [A269019]

end A269019

/-! ## A269019.P4962090712075676942

`(2-A225883(n))*A033999(n)`
-/

namespace A269019.P4962090712075676942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A225883 n) * A033999 n

end

end A269019.P4962090712075676942

namespace A269019

/-- `(2-A225883(n))*A033999(n)` -/
def P4962090712075676942.Spec : Prop :=
  ∀ n, P4962090712075676942.a n = A269019 n

end A269019

/-! ## A269019.P15837292143748160977

`Δ[2^n-xor(1, n)]`
-/

namespace A269019.P15837292143748160977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P15837292143748160977

namespace A269019

/-- `Δ[2^n-xor(1, n)]` -/
def P15837292143748160977.Spec : Prop :=
  ∀ n, P15837292143748160977.a n = A269019 n

end A269019

/-! ## A269019.P3734176487220661736

`Δ[xor(n, -2)+2^n]`
-/

namespace A269019.P3734176487220661736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-2) + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P3734176487220661736

namespace A269019

/-- `Δ[xor(n, -2)+2^n]` -/
def P3734176487220661736.Spec : Prop :=
  ∀ n, P3734176487220661736.a n = A269019 n

end A269019

/-! ## A269019.P4577698679216293405

`Δ[A062510(n)-n]`
-/

namespace A269019.P4577698679216293405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P4577698679216293405

namespace A269019

/-- `Δ[A062510(n)-n]` -/
def P4577698679216293405.Spec : Prop :=
  ∀ n, P4577698679216293405.a n = A269019 n

theorem P4577698679216293405.correct : P4577698679216293405.Spec := by
  intro n
  simp only [A269019, Nat.add_sub_cancel, A269019.P4577698679216293405.f1, A269019.P4577698679216293405.a, A269019.P9311159951334276451.a, A062510, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269019

/-! ## A269019.P15877634919857247506

`Δ[xor(n, A000918(n))]`
-/

namespace A269019.P15877634919857247506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A000918 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P15877634919857247506

namespace A269019

/-- `Δ[xor(n, A000918(n))]` -/
def P15877634919857247506.Spec : Prop :=
  ∀ n, P15877634919857247506.a n = A269019 n

end A269019

/-! ## A269019.P2404398546141762961

`Δ[xor(n, A000225(n)-1)]`
-/

namespace A269019.P2404398546141762961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A000225 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P2404398546141762961

namespace A269019

/-- `Δ[xor(n, A000225(n)-1)]` -/
def P2404398546141762961.Spec : Prop :=
  ∀ n, P2404398546141762961.a n = A269019 n

end A269019

/-! ## A269019.P75279181575016555

`A296953(n)-a(n-1)` with `a(0)=2`
-/

namespace A269019.P75279181575016555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A296953 n - a (n - 1)

end

end A269019.P75279181575016555

namespace A269019

/-- `A296953(n)-a(n-1)` -/
def P75279181575016555.Spec : Prop :=
  ∀ n, P75279181575016555.a n = A269019 n

end A269019

/-! ## A269019.P12105171041437719775

`Δ[A000295(n)-(-1)^n]`
-/

namespace A269019.P12105171041437719775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P12105171041437719775

namespace A269019

/-- `Δ[A000295(n)-(-1)^n]` -/
def P12105171041437719775.Spec : Prop :=
  ∀ n, P12105171041437719775.a n = A269019 n

theorem P12105171041437719775.correct : P12105171041437719775.Spec := by
  intro n
  simp only [A269019, Nat.add_sub_cancel, A269019.P12105171041437719775.f1, A269019.P12105171041437719775.a, A269019.P9311159951334276451.a, A000295, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269019

/-! ## A269019.P15260469541192487935

`Δ[A000325(n)-(-1)^n]`
-/

namespace A269019.P15260469541192487935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P15260469541192487935

namespace A269019

/-- `Δ[A000325(n)-(-1)^n]` -/
def P15260469541192487935.Spec : Prop :=
  ∀ n, P15260469541192487935.a n = A269019 n

theorem P15260469541192487935.correct : P15260469541192487935.Spec := by
  intro n
  simp only [A269019, Nat.add_sub_cancel, A269019.P15260469541192487935.f1, A269019.P15260469541192487935.a, A269019.P9311159951334276451.a, A000325, A000325.P17729744711211405807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269019

/-! ## A269019.P11065939581904797352

`Δ[A000051(n)-(xor(1, n)+1)]`
-/

namespace A269019.P11065939581904797352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (Nat.xor 1 n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P11065939581904797352

namespace A269019

/-- `Δ[A000051(n)-(xor(1, n)+1)]` -/
def P11065939581904797352.Spec : Prop :=
  ∀ n, P11065939581904797352.a n = A269019 n

end A269019

/-! ## A269019.P14336790512167219878

`Δ[2^n-(2-A010684(n)+n)]`
-/

namespace A269019.P14336790512167219878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (2 - A010684 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P14336790512167219878

namespace A269019

/-- `Δ[2^n-(2-A010684(n)+n)]` -/
def P14336790512167219878.Spec : Prop :=
  ∀ n, P14336790512167219878.a n = A269019 n

end A269019

/-! ## A269019.P5702217333476023322

`Δ[A010673(n)+A000295(n)]`
-/

namespace A269019.P5702217333476023322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n + A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P5702217333476023322

namespace A269019

/-- `Δ[A010673(n)+A000295(n)]` -/
def P5702217333476023322.Spec : Prop :=
  ∀ n, P5702217333476023322.a n = A269019 n

end A269019

/-! ## A269019.P16967177427641208837

`Δ[A000051(n)-A004442(n)]`
-/

namespace A269019.P16967177427641208837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P16967177427641208837

namespace A269019

/-- `Δ[A000051(n)-A004442(n)]` -/
def P16967177427641208837.Spec : Prop :=
  ∀ n, P16967177427641208837.a n = A269019 n

theorem P16967177427641208837.correct : P16967177427641208837.Spec := by
  intro n
  simp only [A269019, Nat.add_sub_cancel, A269019.P16967177427641208837.f1, A269019.P16967177427641208837.a, A269019.P9311159951334276451.a, A000051, A000051.P14067217022188782580.a, A004442, A004442.P2439415777187857398.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269019

/-! ## A269019.P8553067525407352070

`Δ[A000079(n)-A004442(n)]`
-/

namespace A269019.P8553067525407352070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P8553067525407352070

namespace A269019

/-- `Δ[A000079(n)-A004442(n)]` -/
def P8553067525407352070.Spec : Prop :=
  ∀ n, P8553067525407352070.a n = A269019 n

theorem P8553067525407352070.correct : P8553067525407352070.Spec := by
  intro n
  simp only [A269019, Nat.add_sub_cancel, A269019.P8553067525407352070.f1, A269019.P8553067525407352070.a, A269019.P9311159951334276451.a, A000079, A000079.P10855139691139572931.a, A004442, A004442.P2439415777187857398.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269019

/-! ## A269019.P10950960150240418538

`Δ[A000225(n)-A004442(n)]`
-/

namespace A269019.P10950960150240418538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P10950960150240418538

namespace A269019

/-- `Δ[A000225(n)-A004442(n)]` -/
def P10950960150240418538.Spec : Prop :=
  ∀ n, P10950960150240418538.a n = A269019 n

theorem P10950960150240418538.correct : P10950960150240418538.Spec := by
  intro n
  simp only [A269019, Nat.add_sub_cancel, A269019.P10950960150240418538.f1, A269019.P10950960150240418538.a, A269019.P9311159951334276451.a, A000225, A000225.P6535533121115206393.a, A004442, A004442.P2439415777187857398.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269019

/-! ## A269019.P16610997983215786761

`Δ[A000918(n)-A004442(n)]`
-/

namespace A269019.P16610997983215786761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P16610997983215786761

namespace A269019

/-- `Δ[A000918(n)-A004442(n)]` -/
def P16610997983215786761.Spec : Prop :=
  ∀ n, P16610997983215786761.a n = A269019 n

theorem P16610997983215786761.correct : P16610997983215786761.Spec := by
  intro n
  simp only [A269019, Nat.add_sub_cancel, A269019.P16610997983215786761.f1, A269019.P16610997983215786761.a, A269019.P9311159951334276451.a, A000918, A000918.P14329454465793069288.a, A004442, A004442.P2439415777187857398.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269019

/-! ## A269019.P7841119146672106321

`Δ[xor(A057427(n), A132045(n))]`
-/

namespace A269019.P7841119146672106321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A132045 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P7841119146672106321

namespace A269019

/-- `Δ[xor(A057427(n), A132045(n))]` -/
def P7841119146672106321.Spec : Prop :=
  ∀ n, P7841119146672106321.a n = A269019 n

end A269019

/-! ## A269019.P8844787481616097982

`Δ[A000079(n)-A014681(n+1)]`
-/

namespace A269019.P8844787481616097982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A014681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269019.P8844787481616097982

namespace A269019

/-- `Δ[A000079(n)-A014681(n+1)]` -/
def P8844787481616097982.Spec : Prop :=
  ∀ n, P8844787481616097982.a n = A269019 n

end A269019

/-!
# A269020: a(n) = ceiling(n^(1+1/n)).

The programs for A269020, the canonical program `A269020.P13375410208845023554` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269020 has offset 1).

The definition of A269020 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)^(1+1/(n+1)))` (program `A269020.P13375410208845023554`, by `A269020.P13375410208845023554.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269020.P13375410208845023554

`ceil((n+1)^(1+1/(n+1)))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269020

/-- `ceil((n+1)^(1+1/(n+1)))` -/
def P13375410208845023554.Spec : Prop :=
  ∀ n, P13375410208845023554.a n = A269020 (n + 1)

theorem P13375410208845023554.correct : P13375410208845023554.Spec := by
  intro n
  simp only [A269020, Nat.add_sub_cancel]

end A269020

/-! ## A269020.P8275771960759512223

`A269024(1+n)+1+n`
-/

namespace A269020.P8275771960759512223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269024 (1 + n) + 1 + (n : ℤ)

end

end A269020.P8275771960759512223

namespace A269020

/-- `A269024(1+n)+1+n` -/
def P8275771960759512223.Spec : Prop :=
  ∀ n, P8275771960759512223.a n = A269020 (n + 1)

end A269020

/-! ## A269020.P2018992849811172209

`A059921(n+1)+(n+2)%(n+1)`
-/

namespace A269020.P2018992849811172209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059921 (n + 1) + (((n + 2) % (n + 1) : ℕ) : ℤ)

end

end A269020.P2018992849811172209

namespace A269020

/-- `A059921(n+1)+(n+2)%(n+1)` -/
def P2018992849811172209.Spec : Prop :=
  ∀ n, P2018992849811172209.a n = A269020 (n + 1)

end A269020

/-! ## A269020.P8286143739011916744

`col(A000124(n))+floor((n+1)^(1+1/(n+1)))`
-/

namespace A269020.P8286143739011916744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol (A000124 n).toNat : ℤ) + ⌊(n + 1 : ℝ) ^ (1 + 1 / (n + 1 : ℚ) : ℝ)⌋

end

end A269020.P8286143739011916744

namespace A269020

/-- `col(A000124(n))+floor((n+1)^(1+1/(n+1)))` -/
def P8286143739011916744.Spec : Prop :=
  ∀ n, P8286143739011916744.a n = A269020 (n + 1)

end A269020

/-! ## A269020.P1396077065966606953

`A059921(n+1)+A057427(n)`
-/

namespace A269020.P1396077065966606953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059921 (n + 1) + A057427 n

end

end A269020.P1396077065966606953

namespace A269020

/-- `A059921(n+1)+A057427(n)` -/
def P1396077065966606953.Spec : Prop :=
  ∀ n, P1396077065966606953.a n = A269020 (n + 1)

end A269020

/-! ## A269020.P2350150123873357370

`A059921(n+1)-A057428(n)`
-/

namespace A269020.P2350150123873357370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059921 (n + 1) - A057428 n

end

end A269020.P2350150123873357370

namespace A269020

/-- `A059921(n+1)-A057428(n)` -/
def P2350150123873357370.Spec : Prop :=
  ∀ n, P2350150123873357370.a n = A269020 (n + 1)

end A269020

/-! ## A269020.P17835104452049842790

`A059921(n+1)+n/A028310(n)`
-/

namespace A269020.P17835104452049842790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059921 (n + 1) : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A269020.P17835104452049842790

namespace A269020

/-- `A059921(n+1)+n/A028310(n)` -/
def P17835104452049842790.Spec : Prop :=
  ∀ n, P17835104452049842790.a n = (A269020 (n + 1) : ℚ)

end A269020

/-! ## A269020.P18009443473167268264

`A065475(A059921(n+1))`
-/

namespace A269020.P18009443473167268264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A059921 (n + 1)).toNat

end

end A269020.P18009443473167268264

namespace A269020

/-- `A065475(A059921(n+1))` -/
def P18009443473167268264.Spec : Prop :=
  ∀ n, P18009443473167268264.a n = A269020 (n + 1)

end A269020

/-! ## A269020.P13331496314494787668

`fp[fp[(n+1)^ratio[n+1]]]`
-/

namespace A269020.P13331496314494787668
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((f3 (n + 1) : ℚ) / (f3 n : ℚ) : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f1 j) 0

end

end A269020.P13331496314494787668

namespace A269020

/-- `fp[fp[(n+1)^ratio[n+1]]]` -/
def P13331496314494787668.Spec : Prop :=
  ∀ n, (P13331496314494787668.a n : ℤ) = A269020 (n + 1)

end A269020

/-! ## A269020.P1845632416498356833

`A080342(A184413(n+1))+1+n`
-/

namespace A269020.P1845632416498356833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A184413 (n + 1)).toNat + 1 + (n : ℤ)

end

end A269020.P1845632416498356833

namespace A269020

/-- `A080342(A184413(n+1))+1+n` -/
def P1845632416498356833.Spec : Prop :=
  ∀ n, P1845632416498356833.a n = A269020 (n + 1)

end A269020

/-!
# A269021: Number of permutations of [2n] containing an increasing subsequence of length n.

The programs for A269021, there is no canonical definition to state claims against.
-/

/-! ## A269021.P18238182312970246216

`(2*n)!-A269042(n)`
-/

namespace A269021.P18238182312970246216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℤ) - A269042 n

end

end A269021.P18238182312970246216

/-! ## A269021.P7534794502536960767

`A010050(n)-A269042(n)`
-/

namespace A269021.P7534794502536960767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 n - A269042 n

end

end A269021.P7534794502536960767

/-! ## A269021.P4810843809790797167

`record[A246072(n)]-A269042(n)`
-/

namespace A269021.P4810843809790797167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A269042 n

end

end A269021.P4810843809790797167

/-! ## A269021.P6877275669929446860

`A000142(2*n)-A269042(n)`
-/

namespace A269021.P6877275669929446860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 * n) - A269042 n

end

end A269021.P6877275669929446860

/-! ## A269021.P4216542504927278190

`A005359(2*n)-A269042(n)`
-/

namespace A269021.P4216542504927278190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005359 (2 * n) - A269042 n

end

end A269021.P4216542504927278190

/-!
# A269022: Primes p such that sigma(p)/pi(p) is prime.

The programs for A269022, there is no canonical definition to state claims against.
-/

/-! ## A269022.P12757891439437948869

`A052013(lt[A057354(n), A095840(2*n+1)])`
-/

namespace A269022.P12757891439437948869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095840 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052013 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A269022.P12757891439437948869

/-! ## A269022.P4405712661474744939

`A052013(A029804(n+2))`
-/

namespace A269022.P4405712661474744939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052013 (A029804 (n + 2)).toNat

end

end A269022.P4405712661474744939

/-! ## A269022.P2714288322573454864

`filter[A052013(n+1), A088150(#)]`
-/

namespace A269022.P2714288322573454864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088150 (f1 j).toNat = 1) n)

end

end A269022.P2714288322573454864

/-! ## A269022.P16878174185874682973

`filter[A052013(n+1), A166280(#)]`
-/

namespace A269022.P16878174185874682973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166280 (f1 j).toNat = 1) n)

end

end A269022.P16878174185874682973

/-!
# A269023: Complement of A269020: numbers not of the form ceiling(n^(1+1/n)).

The programs for A269023, there is no canonical definition to state claims against.
-/

/-! ## A269023.P15109566125654163816

`comp[A269020(n+1)-1]+1`
-/

namespace A269023.P15109566125654163816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269020 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A269023.P15109566125654163816

/-! ## A269023.P3416276045880569113

`record[C(A059921(n+2), A269020(n+1))]`
-/

namespace A269023.P3416276045880569113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059921 (n + 2)).toNat (A269020 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269023.P3416276045880569113

/-! ## A269023.P13906639863560914178

`A008683(A001405(3*n+1))+A002426(n+1)`
-/

namespace A269023.P13906639863560914178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001405 (3 * n + 1)).toNat + A002426 (n + 1)

end

end A269023.P13906639863560914178

/-!
# A269024: a(n) = A269020(n) - n.

The programs for A269024, the canonical program `A269024.P12608391171988860494` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269024 has offset 1).

The definition of A269024 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A269020(n+1)-(n+1)` (program `A269024.P12608391171988860494`, by `A269024.P12608391171988860494.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269024.P12608391171988860494

`A269020(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A269024

/-- `A269020(n+1)-(n+1)` -/
def P12608391171988860494.Spec : Prop :=
  ∀ n, P12608391171988860494.a n = A269024 (n + 1)

theorem P12608391171988860494.correct : P12608391171988860494.Spec := by
  intro n
  simp only [A269024, Nat.add_sub_cancel]

end A269024

/-! ## A269024.P7924963270388257864

`ceil((n+1)^ratio[n+1])-(n+1)`
-/

namespace A269024.P7924963270388257864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)⌉ - (n + 1 : ℤ)

end

end A269024.P7924963270388257864

namespace A269024

/-- `ceil((n+1)^ratio[n+1])-(n+1)` -/
def P7924963270388257864.Spec : Prop :=
  ∀ n, P7924963270388257864.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P18170175902263053156

`(A059921(n+1)+1)%(n+1)`
-/

namespace A269024.P18170175902263053156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059921 (n + 1) + 1) (n + 1 : ℤ)

end

end A269024.P18170175902263053156

namespace A269024

/-- `(A059921(n+1)+1)%(n+1)` -/
def P18170175902263053156.Spec : Prop :=
  ∀ n, P18170175902263053156.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P6377687381386588462

`A008554(A269020(1+n)-n)`
-/

namespace A269024.P6377687381386588462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (A269020 (1 + n) - (n : ℤ)).toNat

end

end A269024.P6377687381386588462

namespace A269024

/-- `A008554(A269020(1+n)-n)` -/
def P6377687381386588462.Spec : Prop :=
  ∀ n, P6377687381386588462.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P10271835384944977984

`A029730(A269020(n+1)-n)`
-/

namespace A269024.P10271835384944977984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (A269020 (n + 1) - (n : ℤ)).toNat

end

end A269024.P10271835384944977984

namespace A269024

/-- `A029730(A269020(n+1)-n)` -/
def P10271835384944977984.Spec : Prop :=
  ∀ n, P10271835384944977984.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P13024794100246754652

`A008619(A095395(n+1))%(n+1)`
-/

namespace A269024.P13024794100246754652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A095395 (n + 1)).toNat) (n + 1 : ℤ)

end

end A269024.P13024794100246754652

namespace A269024

/-- `A008619(A095395(n+1))%(n+1)` -/
def P13024794100246754652.Spec : Prop :=
  ∀ n, P13024794100246754652.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P17136215399557474149

`A269020(n+1)%A000027(n+1)`
-/

namespace A269024.P17136215399557474149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269020 (n + 1)) (A000027 (n + 1))

end

end A269024.P17136215399557474149

namespace A269024

/-- `A269020(n+1)%A000027(n+1)` -/
def P17136215399557474149.Spec : Prop :=
  ∀ n, P17136215399557474149.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P16945119250335593419

`(A059921(n+1)-n)*A057427(n)`
-/

namespace A269024.P16945119250335593419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059921 (n + 1) - (n : ℤ)) * A057427 n

end

end A269024.P16945119250335593419

namespace A269024

/-- `(A059921(n+1)-n)*A057427(n)` -/
def P16945119250335593419.Spec : Prop :=
  ∀ n, P16945119250335593419.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P5376271206332649780

`(n-A059921(n+1))*A057428(n)`
-/

namespace A269024.P5376271206332649780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A059921 (n + 1)) * A057428 n

end

end A269024.P5376271206332649780

namespace A269024

/-- `(n-A059921(n+1))*A057428(n)` -/
def P5376271206332649780.Spec : Prop :=
  ∀ n, P5376271206332649780.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P14653832260094773060

`col(A139591(2*n)+floor((n+1)^(1+1/(n+1))))`
-/

namespace A269024.P14653832260094773060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A139591 (2 * n) + ⌊(n + 1 : ℝ) ^ (1 + 1 / (n + 1 : ℚ) : ℝ)⌋).toNat

end

end A269024.P14653832260094773060

namespace A269024

/-- `col(A139591(2*n)+floor((n+1)^(1+1/(n+1))))` -/
def P14653832260094773060.Spec : Prop :=
  ∀ n, (P14653832260094773060.a n : ℤ) = A269024 (n + 1)

end A269024

/-! ## A269024.P743315842826192235

`A072643(A000045(A072643(n²)))`
-/

namespace A269024.P743315842826192235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A000045 (A072643 (n ^ 2)).toNat).toNat

end

end A269024.P743315842826192235

namespace A269024

/-- `A072643(A000045(A072643(n²)))` -/
def P743315842826192235.Spec : Prop :=
  ∀ n, P743315842826192235.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P1409347780405520657

`floor(log(A007969(2*n+1)))`
-/

namespace A269024.P1409347780405520657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A007969 (2 * n + 1) : ℝ)⌋

end

end A269024.P1409347780405520657

namespace A269024

/-- `floor(log(A007969(2*n+1)))` -/
def P1409347780405520657.Spec : Prop :=
  ∀ n, P1409347780405520657.a n = A269024 (n + 1)

end A269024

/-! ## A269024.P5000386998816667355

`A080342(A184413(n+1))`
-/

namespace A269024.P5000386998816667355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A184413 (n + 1)).toNat

end

end A269024.P5000386998816667355

namespace A269024

/-- `A080342(A184413(n+1))` -/
def P5000386998816667355.Spec : Prop :=
  ∀ n, P5000386998816667355.a n = A269024 (n + 1)

end A269024

/-!
# A269025: a(n) = Sum_{k = 0..n} 60^k.

The programs for A269025, the canonical program `A269025.P12239771421361614475` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269025 has offset 0).

The definition of A269025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269025.P7900300311004189322

`ogf(1/(1-61x+60x^2))`
-/

namespace A269025.P7900300311004189322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -61, 60] n

end

end A269025.P7900300311004189322

namespace A269025

/-- `ogf(1/(1-61x+60x^2))` -/
def P7900300311004189322.Spec : Prop :=
  ∀ n, P7900300311004189322.a n = A269025 n

end A269025

/-! ## A269025.P12239771421361614475

`60^n+floor(60^n/59)`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269025

/-- `60^n+floor(60^n/59)` -/
def P12239771421361614475.Spec : Prop :=
  ∀ n, P12239771421361614475.a n = A269025 n

theorem P12239771421361614475.correct : P12239771421361614475.Spec := by
  intro n
  simp only [A269025]

end A269025

/-! ## A269025.P1798874999155781855

`∑[60^gcd(n, n)]`
-/

namespace A269025.P1798874999155781855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 ^ Nat.gcd n n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269025.P1798874999155781855

namespace A269025

/-- `∑[60^gcd(n, n)]` -/
def P1798874999155781855.Spec : Prop :=
  ∀ n, (P1798874999155781855.a n : ℤ) = A269025 n

end A269025

/-! ## A269025.P6304706212409870767

`∑[60*a(n-1)]` with `a(0)=1`
-/

namespace A269025.P6304706212409870767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  60 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269025.P6304706212409870767

namespace A269025

/-- `∑[60*a(n-1)]` -/
def P6304706212409870767.Spec : Prop :=
  ∀ n, (P6304706212409870767.a n : ℤ) = A269025 n

end A269025

/-! ## A269025.P4432924482682014330

`∑[(61-C(n, n))^n]`
-/

namespace A269025.P4432924482682014330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 - (Nat.choose n n : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269025.P4432924482682014330

namespace A269025

/-- `∑[(61-C(n, n))^n]` -/
def P4432924482682014330.Spec : Prop :=
  ∀ n, P4432924482682014330.a n = A269025 n

end A269025

/-! ## A269025.P16108133595796278264

`1+60*a(n-1)` with `a(0)=1`
-/

namespace A269025.P16108133595796278264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + 60 * a (n - 1)

end

end A269025.P16108133595796278264

namespace A269025

/-- `1+60*a(n-1)` -/
def P16108133595796278264.Spec : Prop :=
  ∀ n, (P16108133595796278264.a n : ℤ) = A269025 n

end A269025

/-! ## A269025.P399265031015824548

`or(1, 60*a(n-1))` with `a(0)=1`
-/

namespace A269025.P399265031015824548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (60 * a (n - 1))

end

end A269025.P399265031015824548

namespace A269025

/-- `or(1, 60*a(n-1))` -/
def P399265031015824548.Spec : Prop :=
  ∀ n, (P399265031015824548.a n : ℤ) = A269025 n

end A269025

/-! ## A269025.P18193239642650621079

`xor(1, 6*10*a(n-1))` with `a(0)=1`
-/

namespace A269025.P18193239642650621079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (6 * (10 * a (n - 1)))

end

end A269025.P18193239642650621079

namespace A269025

/-- `xor(1, 6*10*a(n-1))` -/
def P18193239642650621079.Spec : Prop :=
  ∀ n, (P18193239642650621079.a n : ℤ) = A269025 n

end A269025

/-! ## A269025.P15992733494406557994

`∑[A159991(n)]`
-/

namespace A269025.P15992733494406557994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269025.P15992733494406557994

namespace A269025

/-- `∑[A159991(n)]` -/
def P15992733494406557994.Spec : Prop :=
  ∀ n, P15992733494406557994.a n = A269025 n

end A269025

/-! ## A269025.P6327030793036024349

`∑[A281863(2*n)]`
-/

namespace A269025.P6327030793036024349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281863 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269025.P6327030793036024349

namespace A269025

/-- `∑[A281863(2*n)]` -/
def P6327030793036024349.Spec : Prop :=
  ∀ n, P6327030793036024349.a n = A269025 n

end A269025

/-!
# A269027: Parity of the number of 1's in A039724(n).

The programs for A269027, the canonical program `A269027.P11463476603679121488` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269027 has offset 0).

The definition of A269027 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005351, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A269027.P11463476603679121488

`A010060(A005351(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A269027

/-- `A010060(A005351(n))` -/
def P11463476603679121488.Spec : Prop :=
  ∀ n, P11463476603679121488.a n = A269027 n

theorem P11463476603679121488.correct : P11463476603679121488.Spec := by
  intro n
  simp only [A269027]

end A269027

/-! ## A269027.P13544787450772971976

`(a(round(n/4))+ceil(n/2))%2` with `a(0)=0`
-/

namespace A269027.P13544787450772971976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (SequenceMachineLib.roundAway ((n : ℚ) / 4)).toNat + ⌈(n : ℚ) / 2⌉) 2

end

end A269027.P13544787450772971976

namespace A269027

/-- `(a(round(n/4))+ceil(n/2))%2` -/
def P13544787450772971976.Spec : Prop :=
  ∀ n, P13544787450772971976.a n = A269027 n

end A269027

/-! ## A269027.P453074197517266719

`and(1, a(round(n/4))+ceil(n/2))` with `a(0)=0`
-/

namespace A269027.P453074197517266719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 1 (a (SequenceMachineLib.roundAway ((n : ℚ) / 4)).toNat + ⌈(n : ℚ) / 2⌉)

end

end A269027.P453074197517266719

namespace A269027

/-- `and(1, a(round(n/4))+ceil(n/2))` -/
def P453074197517266719.Spec : Prop :=
  ∀ n, P453074197517266719.a n = A269027 n

end A269027

/-! ## A269027.P2014804823482445298

`∑[gcd(2, val(xor(n, 2*n)+6, 2))-1]%2`
-/

namespace A269027.P2014804823482445298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (SequenceMachineLib.valuation (Nat.xor n (2 * n) + 6) 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A269027.P2014804823482445298

namespace A269027

/-- `∑[gcd(2, val(xor(n, 2*n)+6, 2))-1]%2` -/
def P2014804823482445298.Spec : Prop :=
  ∀ n, P2014804823482445298.a n = A269027 n

end A269027

/-! ## A269027.P5901913075355964135

`A027615(n)%2`
-/

namespace A269027.P5901913075355964135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027615 n) 2

end

end A269027.P5901913075355964135

namespace A269027

/-- `A027615(n)%2` -/
def P5901913075355964135.Spec : Prop :=
  ∀ n, P5901913075355964135.a n = A269027 n

end A269027

/-! ## A269027.P14464329994909619132

`∑[A098725(n)]%2`
-/

namespace A269027.P14464329994909619132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A269027.P14464329994909619132

namespace A269027

/-- `∑[A098725(n)]%2` -/
def P14464329994909619132.Spec : Prop :=
  ∀ n, P14464329994909619132.a n = A269027 n

end A269027

/-! ## A269027.P14434895995540117894

`A000035(A027615(n))`
-/

namespace A269027.P14434895995540117894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A027615 n).toNat

end

end A269027.P14434895995540117894

namespace A269027

/-- `A000035(A027615(n))` -/
def P14434895995540117894.Spec : Prop :=
  ∀ n, P14434895995540117894.a n = A269027 n

end A269027

/-! ## A269027.P12746529354710067611

`A096268(A027615(n)²)`
-/

namespace A269027.P12746529354710067611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A027615 n ^ 2).toNat

end

end A269027.P12746529354710067611

namespace A269027

/-- `A096268(A027615(n)²)` -/
def P12746529354710067611.Spec : Prop :=
  ∀ n, P12746529354710067611.a n = A269027 n

end A269027

/-! ## A269027.P17745778948202724745

`A098725(A027615(n)²)`
-/

namespace A269027.P17745778948202724745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (A027615 n ^ 2).toNat

end

end A269027.P17745778948202724745

namespace A269027

/-- `A098725(A027615(n)²)` -/
def P17745778948202724745.Spec : Prop :=
  ∀ n, P17745778948202724745.a n = A269027 n

end A269027

/-! ## A269027.P16672162829659126110

`A101660(A027615(n)²)`
-/

namespace A269027.P16672162829659126110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 (A027615 n ^ 2).toNat

end

end A269027.P16672162829659126110

namespace A269027

/-- `A101660(A027615(n)²)` -/
def P16672162829659126110.Spec : Prop :=
  ∀ n, P16672162829659126110.a n = A269027 n

end A269027

/-! ## A269027.P11365338956683189300

`A059841(A072894(n+1))`
-/

namespace A269027.P11365338956683189300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A072894 (n + 1)).toNat

end

end A269027.P11365338956683189300

namespace A269027

/-- `A059841(A072894(n+1))` -/
def P11365338956683189300.Spec : Prop :=
  ∀ n, P11365338956683189300.a n = A269027 n

end A269027

/-! ## A269027.P6994837837728091356

`and(A008349(n), A027615(n))`
-/

namespace A269027.P6994837837728091356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A027615 n)

end

end A269027.P6994837837728091356

namespace A269027

/-- `and(A008349(n), A027615(n))` -/
def P6994837837728091356.Spec : Prop :=
  ∀ n, P6994837837728091356.a n = A269027 n

end A269027

/-! ## A269027.P173736159416749281

`and(A008362(n), A027615(n))`
-/

namespace A269027.P173736159416749281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A027615 n)

end

end A269027.P173736159416749281

namespace A269027

/-- `and(A008362(n), A027615(n))` -/
def P173736159416749281.Spec : Prop :=
  ∀ n, P173736159416749281.a n = A269027 n

end A269027

/-! ## A269027.P16791558116942174320

`and(A008417(n), A027615(n))`
-/

namespace A269027.P16791558116942174320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A027615 n)

end

end A269027.P16791558116942174320

namespace A269027

/-- `and(A008417(n), A027615(n))` -/
def P16791558116942174320.Spec : Prop :=
  ∀ n, P16791558116942174320.a n = A269027 n

end A269027

/-! ## A269027.P6734490619954161823

`and(A008514(n), A027615(n))`
-/

namespace A269027.P6734490619954161823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A027615 n)

end

end A269027.P6734490619954161823

namespace A269027

/-- `and(A008514(n), A027615(n))` -/
def P6734490619954161823.Spec : Prop :=
  ∀ n, P6734490619954161823.a n = A269027 n

end A269027

/-! ## A269027.P17060482128439270618

`and(A016760(n), A027615(n))`
-/

namespace A269027.P17060482128439270618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A027615 n)

end

end A269027.P17060482128439270618

namespace A269027

/-- `and(A016760(n), A027615(n))` -/
def P17060482128439270618.Spec : Prop :=
  ∀ n, P17060482128439270618.a n = A269027 n

end A269027

/-! ## A269027.P14436872295122976643

`and(A016820(n), A027615(n))`
-/

namespace A269027.P14436872295122976643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A027615 n)

end

end A269027.P14436872295122976643

namespace A269027

/-- `and(A016820(n), A027615(n))` -/
def P14436872295122976643.Spec : Prop :=
  ∀ n, P14436872295122976643.a n = A269027 n

end A269027

/-! ## A269027.P7137662169254945322

`and(A027615(n), A282997(n+1))`
-/

namespace A269027.P7137662169254945322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027615 n) (A282997 (n + 1))

end

end A269027.P7137662169254945322

namespace A269027

/-- `and(A027615(n), A282997(n+1))` -/
def P7137662169254945322.Spec : Prop :=
  ∀ n, P7137662169254945322.a n = A269027 n

end A269027

/-! ## A269027.P3589484484442546763

`A338253(n)%2`
-/

namespace A269027.P3589484484442546763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338253 n) 2

end

end A269027.P3589484484442546763

namespace A269027

/-- `A338253(n)%2` -/
def P3589484484442546763.Spec : Prop :=
  ∀ n, P3589484484442546763.a n = A269027 n

end A269027

/-! ## A269027.P8347773170314906850

`A268272(2*n)%2`
-/

namespace A269027.P8347773170314906850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268272 (2 * n)) 2

end

end A269027.P8347773170314906850

namespace A269027

/-- `A268272(2*n)%2` -/
def P8347773170314906850.Spec : Prop :=
  ∀ n, P8347773170314906850.a n = A269027 n

end A269027

/-!
# A269028: a(n) = 40*a(n - 1) - a(n - 2) for n>1, a(0) = 1, a(1) = 1.

The programs for A269028, the canonical program `A269028.P15140228179202886568` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269028 has offset 0).

The definition of A269028 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `40*a(n-1)-a(n-2)` (program `A269028.P15140228179202886568`, by `A269028.P15140228179202886568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269028.P10472424729003073140

`ogf((1-39x)/(1-40x+x^2))`
-/

namespace A269028.P10472424729003073140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -39] [1, -40, 1] n

end

end A269028.P10472424729003073140

namespace A269028

/-- `ogf((1-39x)/(1-40x+x^2))` -/
def P10472424729003073140.Spec : Prop :=
  ∀ n, P10472424729003073140.a n = A269028 n

end A269028

/-! ## A269028.P15140228179202886568

`40*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269028

/-- `40*a(n-1)-a(n-2)` -/
def P15140228179202886568.Spec : Prop :=
  ∀ n, P15140228179202886568.a n = A269028 n

theorem P15140228179202886568.correct : P15140228179202886568.Spec := by
  intro n
  simp only [A269028]

end A269028

/-! ## A269028.P9739077843918122754

`cosh(n*log(20+sqrt(399)))-sqrt(19/21)*sinh(n*log(20+sqrt(399)))`
-/

namespace A269028.P9739077843918122754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh ((n : ℝ) * Real.log (20 + Real.sqrt (399 : ℝ))) - Real.sqrt ((19 : ℚ) / 21 : ℝ) * Real.sinh ((n : ℝ) * Real.log (20 + Real.sqrt (399 : ℝ)))

end

end A269028.P9739077843918122754

namespace A269028

/-- `cosh(n*log(20+sqrt(399)))-sqrt(19/21)*sinh(n*log(20+sqrt(399)))` -/
def P9739077843918122754.Spec : Prop :=
  ∀ n, P9739077843918122754.a n = (A269028 n : ℝ)

end A269028

/-! ## A269028.P3168270013336361903

`A041759(A004275(n))`
-/

namespace A269028.P3168270013336361903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041759 (A004275 n).toNat

end

end A269028.P3168270013336361903

namespace A269028

/-- `A041759(A004275(n))` -/
def P3168270013336361903.Spec : Prop :=
  ∀ n, P3168270013336361903.a n = A269028 n

end A269028

/-! ## A269028.P16846778090240273887

`(a(n-1)²+38)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A269028.P16846778090240273887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) ^ 2 + 38) / a (n - 2)

end

end A269028.P16846778090240273887

namespace A269028

/-- `(a(n-1)²+38)/a(n-2)` -/
def P16846778090240273887.Spec : Prop :=
  ∀ n, P16846778090240273887.a n = (A269028 n : ℚ)

end A269028

/-!
# A269029: Number of n X n 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269029, there is no canonical definition to state claims against.
-/

/-! ## A269029.P12232992304651354381

`6*A229528(n+1)`
-/

namespace A269029.P12232992304651354381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229528 (n + 1)

end

end A269029.P12232992304651354381

/-! ## A269029.P15214654408154853036

`A269035(1+∑[4*n])`
-/

namespace A269029.P15214654408154853036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269029.P15214654408154853036

/-! ## A269029.P11879770041943240206

`6*A229534(A001844(n))`
-/

namespace A269029.P11879770041943240206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229534 (A001844 n).toNat

end

end A269029.P11879770041943240206

/-! ## A269029.P14810614197456202069

`record[A269035(A330613(n+1))]`
-/

namespace A269029.P14810614197456202069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269029.P14810614197456202069

/-! ## A269029.P4266527514543382641

`record[A003982(n)*A269035(n+1)]`
-/

namespace A269029.P4266527514543382641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A269035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269029.P4266527514543382641

/-!
# A269030: Number of n X 3 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269030, the canonical program `A269030.P423690107189056236` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269030 has offset 1).

The definition of A269030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269030.P16049515370453522938

`ogf((12-72x+216x^2-192x^3+48x^4)/(1-10x+29x^2-20x^3+4x^4))`
-/

namespace A269030.P16049515370453522938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -72, 216, -192, 48] [1, -10, 29, -20, 4] n

end

end A269030.P16049515370453522938

namespace A269030

/-- `ogf((12-72x+216x^2-192x^3+48x^4)/(1-10x+29x^2-20x^3+4x^4))` -/
def P16049515370453522938.Spec : Prop :=
  ∀ n, P16049515370453522938.a n = A269030 (n + 1)

end A269030

/-! ## A269030.P423690107189056236

`6*A229529(1+n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A269030

/-- `6*A229529(1+n)` -/
def P423690107189056236.Spec : Prop :=
  ∀ n, P423690107189056236.a n = A269030 (n + 1)

theorem P423690107189056236.correct : P423690107189056236.Spec := by
  intro n
  simp only [A269030, Nat.add_sub_cancel]

end A269030

/-! ## A269030.P7653448792410226394

`A269035(∑[n+3]+1)`
-/

namespace A269030.P7653448792410226394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269030.P7653448792410226394

namespace A269030

/-- `A269035(∑[n+3]+1)` -/
def P7653448792410226394.Spec : Prop :=
  ∀ n, P7653448792410226394.a n = A269030 (n + 1)

end A269030

/-! ## A269030.P180287926924128147

`6*A229534(∑[n+3]+1)`
-/

namespace A269030.P180287926924128147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229534 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269030.P180287926924128147

namespace A269030

/-- `6*A229534(∑[n+3]+1)` -/
def P180287926924128147.Spec : Prop :=
  ∀ n, P180287926924128147.a n = A269030 (n + 1)

end A269030

/-!
# A269031: Number of n X 4 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269031, the canonical program `A269031.P6220414311641273728` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269031 has offset 1).

The definition of A269031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269031.P6220414311641273728

`6*A229530(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A269031

/-- `6*A229530(n+1)` -/
def P6220414311641273728.Spec : Prop :=
  ∀ n, P6220414311641273728.a n = A269031 (n + 1)

theorem P6220414311641273728.correct : P6220414311641273728.Spec := by
  intro n
  simp only [A269031, Nat.add_sub_cancel]

end A269031

/-! ## A269031.P17521113315281513748

`A269048(n+1)-A223373(n+1)`
-/

namespace A269031.P17521113315281513748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269048 (n + 1) - A223373 (n + 1)

end

end A269031.P17521113315281513748

namespace A269031

/-- `A269048(n+1)-A223373(n+1)` -/
def P17521113315281513748.Spec : Prop :=
  ∀ n, P17521113315281513748.a n = A269031 (n + 1)

theorem P17521113315281513748.correct : P17521113315281513748.Spec := by
  intro n
  simp only [A269031, Nat.add_sub_cancel, A269031.P17521113315281513748.a, A269031.P6220414311641273728.a, A223373, A223373.P15280993736744581091.a, A229530, A229530.P1023103085469675362.a, A269048, A269048.P10214764849750222702.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269031

/-! ## A269031.P2876515014115580191

`A269048(n+1)-A232920(A141214(n+1))`
-/

namespace A269031.P2876515014115580191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269048 (n + 1) - A232920 (A141214 (n + 1)).toNat

end

end A269031.P2876515014115580191

namespace A269031

/-- `A269048(n+1)-A232920(A141214(n+1))` -/
def P2876515014115580191.Spec : Prop :=
  ∀ n, P2876515014115580191.a n = A269031 (n + 1)

end A269031

/-! ## A269031.P8156695363449647641

`A269048(n+1)-A232920(A055998(n+2))`
-/

namespace A269031.P8156695363449647641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269048 (n + 1) - A232920 (A055998 (n + 2)).toNat

end

end A269031.P8156695363449647641

namespace A269031

/-- `A269048(n+1)-A232920(A055998(n+2))` -/
def P8156695363449647641.Spec : Prop :=
  ∀ n, P8156695363449647641.a n = A269031 (n + 1)

end A269031

/-! ## A269031.P4994436756616379554

`A269035(∑[n+3]+4+n)`
-/

namespace A269031.P4994436756616379554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (∑ j ∈ Finset.range (n + 1), f1 j + 4 + n)

end

end A269031.P4994436756616379554

namespace A269031

/-- `A269035(∑[n+3]+4+n)` -/
def P4994436756616379554.Spec : Prop :=
  ∀ n, P4994436756616379554.a n = A269031 (n + 1)

end A269031

/-!
# A269032: Number of nX5 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269032, there is no canonical definition to state claims against.
-/

/-! ## A269032.P11570800992888671341

`6*A229531(n+1)`
-/

namespace A269032.P11570800992888671341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229531 (n + 1)

end

end A269032.P11570800992888671341

/-! ## A269032.P2412247556747854906

`A269035(Δ[A264443(n)])`
-/

namespace A269032.P2412247556747854906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (f1 (n + 1) - f1 n).toNat

end

end A269032.P2412247556747854906

/-!
# A269033: Number of nX6 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269033, there is no canonical definition to state claims against.
-/

/-! ## A269033.P3214221752125472571

`6*A229532(n+1)`
-/

namespace A269033.P3214221752125472571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229532 (n + 1)

end

end A269033.P3214221752125472571

/-! ## A269033.P18040907052030132221

`A269035(A052905(n+3))`
-/

namespace A269033.P18040907052030132221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A052905 (n + 3)).toNat

end

end A269033.P18040907052030132221

/-!
# A269034: Number of nX7 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269034, there is no canonical definition to state claims against.
-/

/-! ## A269034.P124005991386298559

`6*A229533(n+1)`
-/

namespace A269034.P124005991386298559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229533 (n + 1)

end

end A269034.P124005991386298559

/-! ## A269034.P10528913041952394038

`A269035(A055999(n+4))`
-/

namespace A269034.P10528913041952394038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A055999 (n + 4)).toNat

end

end A269034.P10528913041952394038

/-!
# A269035: T(n,k)=Number of nXk 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269035, there is no canonical definition to state claims against.
-/

/-! ## A269035.P15155493117742637638

`A229534(1+n)*A267884(n)`
-/

namespace A269035.P15155493117742637638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (1 + n) * A267884 n

end

end A269035.P15155493117742637638

/-! ## A269035.P12502408232533589351

`A269052(n+1)-A232920(n+1)`
-/

namespace A269035.P12502408232533589351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (n + 1) - A232920 (n + 1)

end

end A269035.P12502408232533589351

/-! ## A269035.P4278340630961510024

`A040006(floor(n/3))*A229534(n+1)`
-/

namespace A269035.P4278340630961510024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 ⌊(n : ℚ) / 3⌋.toNat * A229534 (n + 1)

end

end A269035.P4278340630961510024

/-! ## A269035.P11551786384610961287

`gcd(6, A269052(n+1))*A229534(n+1)`
-/

namespace A269035.P11551786384610961287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 6 (A269052 (n + 1)) : ℤ) * A229534 (n + 1)

end

end A269035.P11551786384610961287

/-! ## A269035.P2913398531435451651

`A229534(n+1)*A266251(A266249(2*n+1))`
-/

namespace A269035.P2913398531435451651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (n + 1) * A266251 (A266249 (2 * n + 1)).toNat

end

end A269035.P2913398531435451651

/-!
# A269036: Number of 2 X n 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269036, the canonical program `A269036.P11597247794785147094` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269036 has offset 1).

The definition of A269036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269036.P849847766373704471

`ogf((24x-48x^2+24x^3)/(1-4x+8x^3+4x^4))`
-/

namespace A269036.P849847766373704471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 24, -48, 24] [1, -4, 0, 8, 4] n

end

end A269036.P849847766373704471

namespace A269036

/-- `ogf((24x-48x^2+24x^3)/(1-4x+8x^3+4x^4))` -/
def P849847766373704471.Spec : Prop :=
  ∀ n, P849847766373704471.a n = A269036 (n + 1)

end A269036

/-! ## A269036.P11597247794785147094

`4*a(n-1)-8*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=24, a(2)=48, a(3)=216`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269036

/-- `4*a(n-1)-8*a(n-3)-4*a(n-4)` -/
def P11597247794785147094.Spec : Prop :=
  ∀ n, P11597247794785147094.a n = A269036 (n + 1)

theorem P11597247794785147094.correct : P11597247794785147094.Spec := by
  intro n
  simp only [A269036, Nat.add_sub_cancel]

end A269036

/-! ## A269036.P3928020134606922049

`6*A229535(n+1)`
-/

namespace A269036.P3928020134606922049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229535 (n + 1)

end

end A269036.P3928020134606922049

namespace A269036

/-- `6*A229535(n+1)` -/
def P3928020134606922049.Spec : Prop :=
  ∀ n, P3928020134606922049.a n = A269036 (n + 1)

end A269036

/-! ## A269036.P8732912341386163075

`Δ[A008458(n)*A293007(n)]`
-/

namespace A269036.P8732912341386163075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n * A293007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269036.P8732912341386163075

namespace A269036

/-- `Δ[A008458(n)*A293007(n)]` -/
def P8732912341386163075.Spec : Prop :=
  ∀ n, P8732912341386163075.a n = A269036 (n + 1)

end A269036

/-! ## A269036.P4592250995067730352

`Δ[A008588(n)*A293007(n)]`
-/

namespace A269036.P4592250995067730352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n * A293007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269036.P4592250995067730352

namespace A269036

/-- `Δ[A008588(n)*A293007(n)]` -/
def P4592250995067730352.Spec : Prop :=
  ∀ n, P4592250995067730352.a n = A269036 (n + 1)

end A269036

/-! ## A269036.P14576472887462182033

`Δ[A008588(n)*A028860(n+1)]`
-/

namespace A269036.P14576472887462182033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n * A028860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269036.P14576472887462182033

namespace A269036

/-- `Δ[A008588(n)*A028860(n+1)]` -/
def P14576472887462182033.Spec : Prop :=
  ∀ n, P14576472887462182033.a n = A269036 (n + 1)

end A269036

/-! ## A269036.P6623026896162938986

`A269053(n+1)-A232921(n+1)`
-/

namespace A269036.P6623026896162938986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269053 (n + 1) - A232921 (n + 1)

end

end A269036.P6623026896162938986

namespace A269036

/-- `A269053(n+1)-A232921(n+1)` -/
def P6623026896162938986.Spec : Prop :=
  ∀ n, P6623026896162938986.a n = A269036 (n + 1)

end A269036

/-!
# A269037: Number of 3 X n 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269037, the canonical program `A269037.P9438472991931552230` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269037 has offset 1).

The definition of A269037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269037.P9438472991931552230

`6*A229536(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A269037

/-- `6*A229536(n+1)` -/
def P9438472991931552230.Spec : Prop :=
  ∀ n, P9438472991931552230.a n = A269037 (n + 1)

theorem P9438472991931552230.correct : P9438472991931552230.Spec := by
  intro n
  simp only [A269037, Nat.add_sub_cancel]

end A269037

/-! ## A269037.P8260440704495132012

`ogf((120x-372x^2+198x^3+240x^4-18x^5-96x^6+24x^7)/(1-6x+x^2+28x^3+4x^4-16x^5+4x^6))`
-/

namespace A269037.P8260440704495132012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 120, -372, 198, 240, -18, -96, 24] [1, -6, 1, 28, 4, -16, 4] n

end

end A269037.P8260440704495132012

namespace A269037

/-- `ogf((120x-372x^2+198x^3+240x^4-18x^5-96x^6+24x^7)/(1-6x+x^2+28x^3+4x^4-16x^5+4x^6))` -/
def P8260440704495132012.Spec : Prop :=
  ∀ n, P8260440704495132012.a n = A269037 (n + 1)

end A269037

/-! ## A269037.P2902238734726343373

`A269035(∑[n+2]+4)`
-/

namespace A269037.P2902238734726343373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269037.P2902238734726343373

namespace A269037

/-- `A269035(∑[n+2]+4)` -/
def P2902238734726343373.Spec : Prop :=
  ∀ n, P2902238734726343373.a n = A269037 (n + 1)

end A269037

/-! ## A269037.P14859971146938672809

`6*A229534(A167614(n+1))`
-/

namespace A269037.P14859971146938672809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229534 (A167614 (n + 1)).toNat

end

end A269037.P14859971146938672809

namespace A269037

/-- `6*A229534(A167614(n+1))` -/
def P14859971146938672809.Spec : Prop :=
  ∀ n, P14859971146938672809.a n = A269037 (n + 1)

end A269037

/-!
# A269038: Number of 4Xn 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269038, there is no canonical definition to state claims against.
-/

/-! ## A269038.P9369008965213345597

`6*A229537(1+n)`
-/

namespace A269038.P9369008965213345597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229537 (1 + n)

end

end A269038.P9369008965213345597

/-! ## A269038.P14252801141801278911

`A269035(A141214(n)+7)`
-/

namespace A269038.P14252801141801278911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A141214 n + 7).toNat

end

end A269038.P14252801141801278911

/-!
# A269039: Number of 5Xn 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269039, there is no canonical definition to state claims against.
-/

/-! ## A269039.P1597190840012374905

`6*A229538(n+1)`
-/

namespace A269039.P1597190840012374905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229538 (n + 1)

end

end A269039.P1597190840012374905

/-! ## A269039.P269517508991171435

`A269056(n+1)-A232924(n+1)`
-/

namespace A269039.P269517508991171435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269056 (n + 1) - A232924 (n + 1)

end

end A269039.P269517508991171435

/-! ## A269039.P5334095066564071263

`A269035(A167499(n+3))`
-/

namespace A269039.P5334095066564071263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A167499 (n + 3)).toNat

end

end A269039.P5334095066564071263

/-!
# A269040: Number of 6 X n 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269040, there is no canonical definition to state claims against.
-/

/-! ## A269040.P16392882700840998750

`6*A229539(n+1)`
-/

namespace A269040.P16392882700840998750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229539 (n + 1)

end

end A269040.P16392882700840998750

/-! ## A269040.P2954961844761915076

`A269057(1+n)-A232925(n+1)`
-/

namespace A269040.P2954961844761915076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269057 (1 + n) - A232925 (n + 1)

end

end A269040.P2954961844761915076

/-! ## A269040.P1697759958937197079

`A269035(C(n+7, 2)-n)`
-/

namespace A269040.P1697759958937197079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (Nat.choose (n + 7) 2 - n)

end

end A269040.P1697759958937197079

/-!
# A269041: Number of 7Xn 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A269041, there is no canonical definition to state claims against.
-/

/-! ## A269041.P10992794823640718614

`6*A229540(1+n)`
-/

namespace A269041.P10992794823640718614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229540 (1 + n)

end

end A269041.P10992794823640718614

/-! ## A269041.P2432350481176965522

`A269058(n+1)-A232926(n+1)`
-/

namespace A269041.P2432350481176965522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269058 (n + 1) - A232926 (n + 1)

end

end A269041.P2432350481176965522

/-! ## A269041.P14330662008070723005

`A269035(A167487(n+5))`
-/

namespace A269041.P14330662008070723005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (A167487 (n + 5)).toNat

end

end A269041.P14330662008070723005

/-!
# A269042: Number of permutations of [2n] avoiding the pattern 12...n.

The programs for A269042, there is no canonical definition to state claims against.
-/

/-! ## A269042.P2859070874227017173

`(2*n)!-A269021(n)`
-/

namespace A269042.P2859070874227017173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℤ) - A269021 n

end

end A269042.P2859070874227017173

/-! ## A269042.P9110190159602468251

`A010050(n)-A269021(n)`
-/

namespace A269042.P9110190159602468251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 n - A269021 n

end

end A269042.P9110190159602468251

/-! ## A269042.P6003159197022362563

`record[A246072(n)]-A269021(n)`
-/

namespace A269042.P6003159197022362563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A269021 n

end

end A269042.P6003159197022362563

/-! ## A269042.P10206438335544042516

`A000142(2*n)-A269021(n)`
-/

namespace A269042.P10206438335544042516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 * n) - A269021 n

end

end A269042.P10206438335544042516

/-! ## A269042.P10724267852010335085

`A000079(n)*A000680(n)-A269021(n)`
-/

namespace A269042.P10724267852010335085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000680 n - A269021 n

end

end A269042.P10724267852010335085

/-!
# A269044: a(n) = 13*n + 7.

The programs for A269044, the canonical program `A269044.P7228503288842382504` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269044 has offset 0).

The definition of A269044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n+7` (program `A269044.P7228503288842382504`, by `A269044.P7228503288842382504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269044.P7228503288842382504

`13*n+7`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269044

/-- `13*n+7` -/
def P7228503288842382504.Spec : Prop :=
  ∀ n, (P7228503288842382504.a n : ℤ) = A269044 n

theorem P7228503288842382504.correct : P7228503288842382504.Spec := by
  intro n
  simp only [A269044]

end A269044

/-!
# A269045: Indices k such that A006255(k) != A070229(k); that is, the k-th term of R. L. Graham's sequence is not equal to k + lpf(k).

The programs for A269045, there is no canonical definition to state claims against.
-/

/-! ## A269045.P8572389577284287772

`eq[char[eq[A006255(n+1), A070229(n+1)]+1], A000007(n)]`
-/

namespace A269045.P8572389577284287772
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006255 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f5 j) n

end

end A269045.P8572389577284287772

/-! ## A269045.P8669273773747439936

`comp[A255363(n+1)-1]+1`
-/

namespace A269045.P8669273773747439936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255363 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A269045.P8669273773747439936

/-! ## A269045.P9986821677696838483

`lt[A006530(n+1), A068568(n+1)]+1`
-/

namespace A269045.P9986821677696838483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A269045.P9986821677696838483

/-! ## A269045.P4862704318138219361

`lt[A006530(A028310(n)), A068568(n)]`
-/

namespace A269045.P4862704318138219361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269045.P4862704318138219361

/-! ## A269045.P3544192480124645374

`lt[A006530(A233583(n+1)), A068568(n)]`
-/

namespace A269045.P3544192480124645374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269045.P3544192480124645374

/-!
# A269046: Number of n X n 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269046, there is no canonical definition to state claims against.
-/

/-! ## A269046.P8048065384160247786

`A269052(∑[4*n]+1)`
-/

namespace A269046.P8048065384160247786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269046.P8048065384160247786

/-! ## A269046.P16683642880467988771

`record[A269052(A330613(n+1))]`
-/

namespace A269046.P16683642880467988771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269046.P16683642880467988771

/-! ## A269046.P8989982927575661140

`record[A003982(n)*A269052(n+1)]`
-/

namespace A269046.P8989982927575661140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A269052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269046.P8989982927575661140

/-!
# A269047: Number of n X 3 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269047, the canonical program `A269047.P15332018815455573961` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269047 has offset 1).

The definition of A269047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269047.P15332018815455573961

`ogf((24-138x+270x^2-204x^3+48x^4)/(1-10x+29x^2-20x^3+4x^4))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269047

/-- `ogf((24-138x+270x^2-204x^3+48x^4)/(1-10x+29x^2-20x^3+4x^4))` -/
def P15332018815455573961.Spec : Prop :=
  ∀ n, P15332018815455573961.a n = A269047 (n + 1)

theorem P15332018815455573961.correct : P15332018815455573961.Spec := by
  intro n
  simp only [A269047, Nat.add_sub_cancel]

end A269047

/-! ## A269047.P1176396735345248416

`A269052(∑[n+3]+1)`
-/

namespace A269047.P1176396735345248416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269047.P1176396735345248416

namespace A269047

/-- `A269052(∑[n+3]+1)` -/
def P1176396735345248416.Spec : Prop :=
  ∀ n, P1176396735345248416.a n = A269047 (n + 1)

end A269047

/-!
# A269048: Number of n X 4 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269048, the canonical program `A269048.P10214764849750222702` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269048 has offset 1).

The definition of A269048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269048.P10214764849750222702

`A269031(n+1)+A223373(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A269048

/-- `A269031(n+1)+A223373(n+1)` -/
def P10214764849750222702.Spec : Prop :=
  ∀ n, P10214764849750222702.a n = A269048 (n + 1)

theorem P10214764849750222702.correct : P10214764849750222702.Spec := by
  intro n
  simp only [A269048, Nat.add_sub_cancel]

end A269048

/-! ## A269048.P8864814135398010548

`A269052(A141214(n+1))`
-/

namespace A269048.P8864814135398010548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A141214 (n + 1)).toNat

end

end A269048.P8864814135398010548

namespace A269048

/-- `A269052(A141214(n+1))` -/
def P8864814135398010548.Spec : Prop :=
  ∀ n, P8864814135398010548.a n = A269048 (n + 1)

end A269048

/-!
# A269049: Number of nX5 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269049, there is no canonical definition to state claims against.
-/

/-! ## A269049.P13502446065601176523

`A269032(n+1)+A232920(Δ[A023545(n+1)])`
-/

namespace A269049.P13502446065601176523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269032 (n + 1) + A232920 (f1 (n + 1) - f1 n).toNat

end

end A269049.P13502446065601176523

/-! ## A269049.P5809344168778146190

`A269052(Δ[A264443(n)])`
-/

namespace A269049.P5809344168778146190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (f1 (n + 1) - f1 n).toNat

end

end A269049.P5809344168778146190

/-!
# A269050: Number of n X 6 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269050, there is no canonical definition to state claims against.
-/

/-! ## A269050.P2416227597394391272

`A269052(A052905(n+3))`
-/

namespace A269050.P2416227597394391272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A052905 (n + 3)).toNat

end

end A269050.P2416227597394391272

/-!
# A269051: Number of nX7 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269051, there is no canonical definition to state claims against.
-/

/-! ## A269051.P9223711964815085644

`A269034(n+1)+A232919(n+1)`
-/

namespace A269051.P9223711964815085644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269034 (n + 1) + A232919 (n + 1)

end

end A269051.P9223711964815085644

/-! ## A269051.P9199950396471318987

`A269052(A055999(n+4))`
-/

namespace A269051.P9199950396471318987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A055999 (n + 4)).toNat

end

end A269051.P9199950396471318987

/-!
# A269052: T(n,k)=Number of nXk 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269052, there is no canonical definition to state claims against.
-/

/-! ## A269052.P17349166718150279030

`A269035(n+1)+A232920(n+1)`
-/

namespace A269052.P17349166718150279030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269035 (n + 1) + A232920 (n + 1)

end

end A269052.P17349166718150279030

/-! ## A269052.P441695123271668599

`A232920(n+1)+A229534(n+1)*A267884(n)`
-/

namespace A269052.P441695123271668599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A229534 (n + 1) * A267884 n

end

end A269052.P441695123271668599

/-! ## A269052.P2398351719485186399

`A232920(n+1)+A040006(A004526(n))*A229534(n+1)`
-/

namespace A269052.P2398351719485186399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A040006 (A004526 n).toNat * A229534 (n + 1)

end

end A269052.P2398351719485186399

/-! ## A269052.P1436066950799930401

`A232920(n+1)+A040006(A008612(n))*A229534(n+1)`
-/

namespace A269052.P1436066950799930401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A040006 (A008612 n).toNat * A229534 (n + 1)

end

end A269052.P1436066950799930401

/-! ## A269052.P7407050839583774972

`A232920(n+1)+A040006(A028242(n))*A229534(n+1)`
-/

namespace A269052.P7407050839583774972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A040006 (A028242 n).toNat * A229534 (n + 1)

end

end A269052.P7407050839583774972

/-! ## A269052.P2506864542393088154

`A232920(n+1)+A040006(A294061(n+1))*A229534(n+1)`
-/

namespace A269052.P2506864542393088154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A040006 (A294061 (n + 1)).toNat * A229534 (n + 1)

end

end A269052.P2506864542393088154

/-! ## A269052.P17417131850621348304

`A232920(n+1)+A040006(n-A010872(n))*A229534(n+1)`
-/

namespace A269052.P17417131850621348304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A040006 ((n : ℤ) - A010872 n).toNat * A229534 (n + 1)

end

end A269052.P17417131850621348304

/-! ## A269052.P14207053323767312712

`A232920(n+1)+A229534(n+1)*A266251(A266249(2*n+1))`
-/

namespace A269052.P14207053323767312712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A229534 (n + 1) * A266251 (A266249 (2 * n + 1)).toNat

end

end A269052.P14207053323767312712

/-! ## A269052.P11845246336497607410

`A232920(n+1)+gcd(6, A167667(n))*A229534(n+1)`
-/

namespace A269052.P11845246336497607410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + (Int.gcd 6 (A167667 n) : ℤ) * A229534 (n + 1)

end

end A269052.P11845246336497607410

/-! ## A269052.P9810980237656174051

`A232920(n+1)+A040006(A007590(n))*A229534(n+1)`
-/

namespace A269052.P9810980237656174051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A040006 (A007590 n).toNat * A229534 (n + 1)

end

end A269052.P9810980237656174051

/-! ## A269052.P14680147442607347878

`A232920(n+1)+A040006(n²-n)*A229534(n+1)`
-/

namespace A269052.P14680147442607347878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (n + 1) + A040006 (n ^ 2 - n) * A229534 (n + 1)

end

end A269052.P14680147442607347878

/-!
# A269053: Number of 2 X n 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269053, the canonical program `A269053.P12181308701025121849` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269053 has offset 1).

The definition of A269053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269053.P2089449015498495260

`ogf((9+6x-66x^2+24x^3)/(1-4x+8x^3+4x^4))`
-/

namespace A269053.P2089449015498495260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 6, -66, 24] [1, -4, 0, 8, 4] n

end

end A269053.P2089449015498495260

namespace A269053

/-- `ogf((9+6x-66x^2+24x^3)/(1-4x+8x^3+4x^4))` -/
def P2089449015498495260.Spec : Prop :=
  ∀ n, P2089449015498495260.a n = A269053 (n + 1)

end A269053

/-! ## A269053.P12181308701025121849

`4*a(n-1)-8*a(n-3)-4*a(n-4)` with `a(0)=9, a(1)=42, a(2)=102, a(3)=360`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269053

/-- `4*a(n-1)-8*a(n-3)-4*a(n-4)` -/
def P12181308701025121849.Spec : Prop :=
  ∀ n, P12181308701025121849.a n = A269053 (n + 1)

theorem P12181308701025121849.correct : P12181308701025121849.Spec := by
  intro n
  simp only [A269053, Nat.add_sub_cancel]

end A269053

/-! ## A269053.P1235045161268083412

`A269036(n+1)+A232921(n+1)`
-/

namespace A269053.P1235045161268083412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269036 (n + 1) + A232921 (n + 1)

end

end A269053.P1235045161268083412

namespace A269053

/-- `A269036(n+1)+A232921(n+1)` -/
def P1235045161268083412.Spec : Prop :=
  ∀ n, P1235045161268083412.a n = A269053 (n + 1)

end A269053

/-! ## A269053.P17547123191870936998

`A232921(n+1)+6*A229535(n+1)`
-/

namespace A269053.P17547123191870936998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232921 (n + 1) + 6 * A229535 (n + 1)

end

end A269053.P17547123191870936998

namespace A269053

/-- `A232921(n+1)+6*A229535(n+1)` -/
def P17547123191870936998.Spec : Prop :=
  ∀ n, P17547123191870936998.a n = A269053 (n + 1)

end A269053

/-! ## A269053.P2446290127005839149

`A269036(n+1)+A040072(n)*A155020(n)`
-/

namespace A269053.P2446290127005839149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269036 (n + 1) + A040072 n * A155020 n

end

end A269053.P2446290127005839149

namespace A269053

/-- `A269036(n+1)+A040072(n)*A155020(n)` -/
def P2446290127005839149.Spec : Prop :=
  ∀ n, P2446290127005839149.a n = A269053 (n + 1)

end A269053

/-! ## A269053.P3220736029968250338

`A232921(n+1)+Δ[A008458(n)*A293007(n)]`
-/

namespace A269053.P3220736029968250338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n * A293007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232921 (n + 1) + (f1 (n + 1) - f1 n)

end

end A269053.P3220736029968250338

namespace A269053

/-- `A232921(n+1)+Δ[A008458(n)*A293007(n)]` -/
def P3220736029968250338.Spec : Prop :=
  ∀ n, P3220736029968250338.a n = A269053 (n + 1)

end A269053

/-! ## A269053.P14859152779726012048

`A232921(n+1)+Δ[A008588(n)*A293007(n)]`
-/

namespace A269053.P14859152779726012048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n * A293007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232921 (n + 1) + (f1 (n + 1) - f1 n)

end

end A269053.P14859152779726012048

namespace A269053

/-- `A232921(n+1)+Δ[A008588(n)*A293007(n)]` -/
def P14859152779726012048.Spec : Prop :=
  ∀ n, P14859152779726012048.a n = A269053 (n + 1)

end A269053

/-!
# A269054: Number of 3 X n 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269054, the canonical program `A269054.P4019097353616594897` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269054 has offset 1).

The definition of A269054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269054.P4019097353616594897

`A269037(1+n)+A232922(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A269054

/-- `A269037(1+n)+A232922(n+1)` -/
def P4019097353616594897.Spec : Prop :=
  ∀ n, P4019097353616594897.a n = A269054 (n + 1)

theorem P4019097353616594897.correct : P4019097353616594897.Spec := by
  intro n
  simp only [A269054, Nat.add_sub_cancel]

end A269054

/-! ## A269054.P18409098257141015859

`ogf((27+12x-423x^2+444x^3+246x^4-114x^5-72x^6+24x^7)/(1-6x+x^2+28x^3+4x^4-16x^5+4x^6))`
-/

namespace A269054.P18409098257141015859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [27, 12, -423, 444, 246, -114, -72, 24] [1, -6, 1, 28, 4, -16, 4] n

end

end A269054.P18409098257141015859

namespace A269054

/-- `ogf((27+12x-423x^2+444x^3+246x^4-114x^5-72x^6+24x^7)/(1-6x+x^2+28x^3+4x^4-16x^5+4x^6))` -/
def P18409098257141015859.Spec : Prop :=
  ∀ n, P18409098257141015859.a n = A269054 (n + 1)

end A269054

/-! ## A269054.P7639441501050567775

`A269037(n+1)+A232920(A167614(n+1))`
-/

namespace A269054.P7639441501050567775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269037 (n + 1) + A232920 (A167614 (n + 1)).toNat

end

end A269054.P7639441501050567775

namespace A269054

/-- `A269037(n+1)+A232920(A167614(n+1))` -/
def P7639441501050567775.Spec : Prop :=
  ∀ n, P7639441501050567775.a n = A269054 (n + 1)

end A269054

/-! ## A269054.P8462547254676313789

`A269052(∑[n+2]+4)`
-/

namespace A269054.P8462547254676313789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269054.P8462547254676313789

namespace A269054

/-- `A269052(∑[n+2]+4)` -/
def P8462547254676313789.Spec : Prop :=
  ∀ n, P8462547254676313789.a n = A269054 (n + 1)

end A269054

/-!
# A269055: Number of 4Xn 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269055, there is no canonical definition to state claims against.
-/

/-! ## A269055.P6315273574242979776

`A269052(A141214(n)+7)`
-/

namespace A269055.P6315273574242979776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A141214 n + 7).toNat

end

end A269055.P6315273574242979776

/-!
# A269056: Number of 5Xn 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269056, there is no canonical definition to state claims against.
-/

/-! ## A269056.P18200468815282447922

`A269039(n+1)+A232924(n+1)`
-/

namespace A269056.P18200468815282447922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269039 (n + 1) + A232924 (n + 1)

end

end A269056.P18200468815282447922

/-! ## A269056.P6457909752722337664

`A269052(A167499(n+3))`
-/

namespace A269056.P6457909752722337664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A167499 (n + 3)).toNat

end

end A269056.P6457909752722337664

/-!
# A269057: Number of 6Xn 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269057, there is no canonical definition to state claims against.
-/

/-! ## A269057.P4452418399743590168

`A269040(n+1)+A232925(n+1)`
-/

namespace A269057.P4452418399743590168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269040 (n + 1) + A232925 (n + 1)

end

end A269057.P4452418399743590168

/-! ## A269057.P18123838687200597454

`A232925(n+1)+6*A229539(n+1)`
-/

namespace A269057.P18123838687200597454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232925 (n + 1) + 6 * A229539 (n + 1)

end

end A269057.P18123838687200597454

/-! ## A269057.P10385693512501186

`A269040(n+1)+A232920(A056115(n)+21)`
-/

namespace A269057.P10385693512501186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269040 (n + 1) + A232920 (A056115 n + 21).toNat

end

end A269057.P10385693512501186

/-! ## A269057.P16468997944004248677

`A269040(n+1)+A232920(eq[7, A131818(n+1)])`
-/

namespace A269057.P16468997944004248677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269040 (n + 1) + A232920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269057.P16468997944004248677

/-! ## A269057.P3166328935744971783

`A269040(n+1)+A232920(Δ[A023545(n+1)]+10)`
-/

namespace A269057.P3166328935744971783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269040 (n + 1) + A232920 (f1 (n + 1) - f1 n + 10).toNat

end

end A269057.P3166328935744971783

/-!
# A269058: Number of 7Xn 0..2 arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269058, there is no canonical definition to state claims against.
-/

/-! ## A269058.P1605839378477420788

`A269041(n+1)+A232926(n+1)`
-/

namespace A269058.P1605839378477420788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269041 (n + 1) + A232926 (n + 1)

end

end A269058.P1605839378477420788

/-! ## A269058.P1005350794366393836

`A232926(n+1)+6*A229540(n+1)`
-/

namespace A269058.P1005350794366393836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232926 (n + 1) + 6 * A229540 (n + 1)

end

end A269058.P1005350794366393836

/-! ## A269058.P14707880961199958947

`A269052(A167487(n+5))`
-/

namespace A269058.P14707880961199958947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (A167487 (n + 5)).toNat

end

end A269058.P14707880961199958947

/-!
# A269059: Construct a hollow square of 1's of side n and fill its interior with 0's to create a stack of n binary numbers. Express the sum of the stack in decimal.

The programs for A269059, the canonical program `A269059.P6039961534867293737` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269059 has offset 1).

The definition of A269059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269059.P6039961534867293737

`ogf((1-4x^2+4x^4)/(1-6x+13x^2-12x^3+4x^4))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269059

/-- `ogf((1-4x^2+4x^4)/(1-6x+13x^2-12x^3+4x^4))` -/
def P6039961534867293737.Spec : Prop :=
  ∀ n, P6039961534867293737.a n = A269059 (n + 1)

theorem P6039961534867293737.correct : P6039961534867293737.Spec := by
  intro n
  simp only [A269059, Nat.add_sub_cancel]

end A269059

/-! ## A269059.P2094528503455587302

`A069229(n)+A068156(n)`
-/

namespace A269059.P2094528503455587302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069229 n + A068156 n

end

end A269059.P2094528503455587302

namespace A269059

/-- `A069229(n)+A068156(n)` -/
def P2094528503455587302.Spec : Prop :=
  ∀ n, P2094528503455587302.a n = A269059 (n + 1)

end A269059

/-! ## A269059.P16212580054754033187

`A004273(n)+∑[A047859(n)]`
-/

namespace A269059.P16212580054754033187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269059.P16212580054754033187

namespace A269059

/-- `A004273(n)+∑[A047859(n)]` -/
def P16212580054754033187.Spec : Prop :=
  ∀ n, P16212580054754033187.a n = A269059 (n + 1)

end A269059

/-! ## A269059.P4870837333016043152

`A053221(n+1)+A004273(n)`
-/

namespace A269059.P4870837333016043152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053221 (n + 1) + A004273 n

end

end A269059.P4870837333016043152

namespace A269059

/-- `A053221(n+1)+A004273(n)` -/
def P4870837333016043152.Spec : Prop :=
  ∀ n, P4870837333016043152.a n = A269059 (n + 1)

end A269059

/-! ## A269059.P17546568056256593488

`A260006(n)+A081494(n+1)`
-/

namespace A269059.P17546568056256593488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260006 n + A081494 (n + 1)

end

end A269059.P17546568056256593488

namespace A269059

/-- `A260006(n)+A081494(n+1)` -/
def P17546568056256593488.Spec : Prop :=
  ∀ n, P17546568056256593488.a n = A269059 (n + 1)

end A269059

/-! ## A269059.P5011226994145045103

`A004277(n)+(n+3)*A000225(n)`
-/

namespace A269059.P5011226994145045103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (n + 3 : ℤ) * A000225 n

end

end A269059.P5011226994145045103

namespace A269059

/-- `A004277(n)+(n+3)*A000225(n)` -/
def P5011226994145045103.Spec : Prop :=
  ∀ n, P5011226994145045103.a n = A269059 (n + 1)

end A269059

/-! ## A269059.P507504917605601259

`A004273(n)+∑[∑[A045891(n+1)]]`
-/

namespace A269059.P507504917605601259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269059.P507504917605601259

namespace A269059

/-- `A004273(n)+∑[∑[A045891(n+1)]]` -/
def P507504917605601259.Spec : Prop :=
  ∀ n, P507504917605601259.a n = A269059 (n + 1)

end A269059

/-! ## A269059.P5959389256310646395

`∑{#}[n, A083318(#)*A083318(n-#)]`
-/

namespace A269059.P5959389256310646395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A083318 k * A083318 (n - k)

end

end A269059.P5959389256310646395

namespace A269059

/-- `∑{#}[n, A083318(#)*A083318(n-#)]` -/
def P5959389256310646395.Spec : Prop :=
  ∀ n, P5959389256310646395.a n = A269059 (n + 1)

end A269059

/-! ## A269059.P17901233755471121643

`A000295(n+1)+A004273(n)+A001787(n+1)`
-/

namespace A269059.P17901233755471121643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (n + 1) + (A004273 n + A001787 (n + 1))

end

end A269059.P17901233755471121643

namespace A269059

/-- `A000295(n+1)+A004273(n)+A001787(n+1)` -/
def P17901233755471121643.Spec : Prop :=
  ∀ n, P17901233755471121643.a n = A269059 (n + 1)

end A269059

/-! ## A269059.P13846805395995980478

`Δ[A135854(n)]-4+n`
-/

namespace A269059.P13846805395995980478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4 + (n : ℤ)

end

end A269059.P13846805395995980478

namespace A269059

/-- `Δ[A135854(n)]-4+n` -/
def P13846805395995980478.Spec : Prop :=
  ∀ n, P13846805395995980478.a n = A269059 (n + 1)

end A269059

/-!
# A269060: Magic sums of 3 X 3 semimagic squares composed of positive triangular numbers.

The programs for A269060, there is no canonical definition to state claims against.
-/

/-! ## A269060.P9762339461947616720

`A265197(lt[A049600(2*(n+1)), A176538(n+4)])`
-/

namespace A269060.P9762339461947616720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176538 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265197 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A269060.P9762339461947616720

/-!
# A269061: Magic sums of 3 X 3 semimagic squares composed of positive squares.

The programs for A269061, there is no canonical definition to state claims against.
-/

/-! ## A269061.P5635478975889323526

`A265198(A265187(n+2)*A287383(n))`
-/

namespace A269061.P5635478975889323526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265198 (A265187 (n + 2) * A287383 n).toNat

end

end A269061.P5635478975889323526

/-!
# A269064: At stage 1, start with a unit equilateral triangle. At each successive stage add 3*(n-1) new triangles around outside with vertex-to-vertex contacts. Sequence gives number of triangles at n-th stage.

The programs for A269064, the canonical program `A269064.P12111126041009199653` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269064 has offset 0).

The definition of A269064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269064.P12111126041009199653

`ogf((x+2x^2+2x^3+8x^4+2x^5+5x^6+x^7)/(1-2x+2x^3-2x^4+2x^5-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269064

/-- `ogf((x+2x^2+2x^3+8x^4+2x^5+5x^6+x^7)/(1-2x+2x^3-2x^4+2x^5-2x^7+x^8))` -/
def P12111126041009199653.Spec : Prop :=
  ∀ n, P12111126041009199653.a n = A269064 n

theorem P12111126041009199653.correct : P12111126041009199653.Spec := by
  intro n
  simp only [A269064]

end A269064

/-!
# A269065: Irregular triangle read by rows: row n lists divisors of n-th composite number.

The programs for A269065, there is no canonical definition to state claims against.
-/

/-! ## A269065.P9884750504307261771

`A027750(lt[5, A182631(3*n+4)])`
-/

namespace A269065.P9884750504307261771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182631 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A269065.P9884750504307261771

/-! ## A269065.P11685032125218146758

`A094560(A347113(3*n+5)+A163876(n+1))`
-/

namespace A269065.P11685032125218146758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094560 (A347113 (3 * n + 5) + A163876 (n + 1)).toNat

end

end A269065.P11685032125218146758

/-! ## A269065.P1878979664859639110

`A081532(n+4)%A032741(A005179(n+5))`
-/

namespace A269065.P1878979664859639110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081532 (n + 4)) (A032741 (A005179 (n + 5)).toNat)

end

end A269065.P1878979664859639110

/-! ## A269065.P6004911306026994782

`A161901(lt[A191703(n+5), A343342(2*n+1)])`
-/

namespace A269065.P6004911306026994782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191703 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343342 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161901 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A269065.P6004911306026994782

/-! ## A269065.P12082501586926312047

`A040001(A006882(n))*A158416(A065033(n+2))`
-/

namespace A269065.P12082501586926312047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A006882 n).toNat * A158416 (A065033 (n + 2)).toNat

end

end A269065.P12082501586926312047

/-!
# A269068: a(n+2) = a(n+1) + L(n+1)*a(n), where L = Lucas number (A000032) and a(0) = a(1) = 1.

The programs for A269068, the canonical program `A269068.P7155734449118119329` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269068 has offset 0).

The definition of A269068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269068.P7155734449118119329

`a(n-1)+A000032(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A269068

/-- `a(n-1)+A000032(n-1)*a(n-2)` -/
def P7155734449118119329.Spec : Prop :=
  ∀ n, P7155734449118119329.a n = A269068 n

theorem P7155734449118119329.correct : P7155734449118119329.Spec := by
  intro n
  simp only [A269068]

end A269068

/-! ## A269068.P8191054034391290156

`a(n-1)+a(n-2)*Δ[A000032(n)]` with `a(0)=1, a(1)=1`
-/

namespace A269068.P8191054034391290156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) * (f1 (n + 1) - f1 n)

end

end A269068.P8191054034391290156

namespace A269068

/-- `a(n-1)+a(n-2)*Δ[A000032(n)]` -/
def P8191054034391290156.Spec : Prop :=
  ∀ n, P8191054034391290156.a n = A269068 n

end A269068

/-! ## A269068.P1741325216067601265

`A349523(A089976(n))`
-/

namespace A269068.P1741325216067601265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349523 (A089976 n).toNat

end

end A269068.P1741325216067601265

namespace A269068

/-- `A349523(A089976(n))` -/
def P1741325216067601265.Spec : Prop :=
  ∀ n, P1741325216067601265.a n = A269068 n

end A269068

/-!
# A269069: Number of n X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269069, there is no canonical definition to state claims against.
-/

/-! ## A269069.P6891337676515075680

`A269005(n+1)+A228683(A001844(n))`
-/

namespace A269069.P6891337676515075680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269005 (n + 1) + A228683 (A001844 n).toNat

end

end A269069.P6891337676515075680

/-! ## A269069.P5474908238664829544

`A269075(4*∑[n]+1)`
-/

namespace A269069.P5474908238664829544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A269069.P5474908238664829544

/-! ## A269069.P12449263825725509050

`record[A269075(A001844(col(n)))]`
-/

namespace A269069.P12449263825725509050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A001844 (SequenceMachineLib.triCol n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269069.P12449263825725509050

/-! ## A269069.P731386594787533115

`record[A003982(n)*A269075(n+1)]`
-/

namespace A269069.P731386594787533115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A269075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269069.P731386594787533115

/-!
# A269070: Number of n X 3 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269070, the canonical program `A269070.P7230518956083626315` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269070 has offset 1).

The definition of A269070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269070.P7230518956083626315

`ogf((7-43x+70x^2-24x^3-9x^4-9x^5)/(1-10x+31x^2-24x^3-21x^4+18x^5+9x^6))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269070

/-- `ogf((7-43x+70x^2-24x^3-9x^4-9x^5)/(1-10x+31x^2-24x^3-21x^4+18x^5+9x^6))` -/
def P7230518956083626315.Spec : Prop :=
  ∀ n, P7230518956083626315.a n = A269070 (n + 1)

theorem P7230518956083626315.correct : P7230518956083626315.Spec := by
  intro n
  simp only [A269070, Nat.add_sub_cancel]

end A269070

/-! ## A269070.P3592519436729749623

`A269006(n+1)+A228678(n+1)`
-/

namespace A269070.P3592519436729749623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269006 (n + 1) + A228678 (n + 1)

end

end A269070.P3592519436729749623

namespace A269070

/-- `A269006(n+1)+A228678(n+1)` -/
def P3592519436729749623.Spec : Prop :=
  ∀ n, P3592519436729749623.a n = A269070 (n + 1)

end A269070

/-! ## A269070.P6397309767773616584

`A269075(∑[n+3]+1)`
-/

namespace A269070.P6397309767773616584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269070.P6397309767773616584

namespace A269070

/-- `A269075(∑[n+3]+1)` -/
def P6397309767773616584.Spec : Prop :=
  ∀ n, P6397309767773616584.a n = A269070 (n + 1)

end A269070

/-!
# A269071: Number of n X 4 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269071, the canonical program `A269071.P14040545685430031080` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269071 has offset 1).

The definition of A269071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269071.P14040545685430031080

`ogf((13-80x+129x^2-28x^3-20x^4-48x^5+4x^6)/(1-12x+40x^2-8x^3-92x^4+32x^5+64x^6))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269071

/-- `ogf((13-80x+129x^2-28x^3-20x^4-48x^5+4x^6)/(1-12x+40x^2-8x^3-92x^4+32x^5+64x^6))` -/
def P14040545685430031080.Spec : Prop :=
  ∀ n, P14040545685430031080.a n = A269071 (n + 1)

theorem P14040545685430031080.correct : P14040545685430031080.Spec := by
  intro n
  simp only [A269071, Nat.add_sub_cancel]

end A269071

/-! ## A269071.P2027917112696342100

`A269075(A027379(n+2))`
-/

namespace A269071.P2027917112696342100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A027379 (n + 2)).toNat

end

end A269071.P2027917112696342100

namespace A269071

/-- `A269075(A027379(n+2))` -/
def P2027917112696342100.Spec : Prop :=
  ∀ n, P2027917112696342100.a n = A269071 (n + 1)

end A269071

/-!
# A269072: Number of nX5 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269072, there is no canonical definition to state claims against.
-/

/-! ## A269072.P16353061281316597497

`A269075(Δ[A264443(n)])`
-/

namespace A269072.P16353061281316597497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (f1 (n + 1) - f1 n).toNat

end

end A269072.P16353061281316597497

/-!
# A269073: Number of nX6 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269073, there is no canonical definition to state claims against.
-/

/-! ## A269073.P15199054928397469919

`A269075(A052905(n+3))`
-/

namespace A269073.P15199054928397469919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A052905 (n + 3)).toNat

end

end A269073.P15199054928397469919

/-!
# A269074: Number of nX7 binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269074, there is no canonical definition to state claims against.
-/

/-! ## A269074.P2497852400126300208

`A269075(A055999(n+4))`
-/

namespace A269074.P2497852400126300208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A055999 (n + 4)).toNat

end

end A269074.P2497852400126300208

/-!
# A269075: T(n,k)=Number of nXk binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269075, there is no canonical definition to state claims against.
-/

/-! ## A269075.P12414637981748027902

`A269011(1+n)+A228683(n+1)`
-/

namespace A269075.P12414637981748027902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (1 + n) + A228683 (n + 1)

end

end A269075.P12414637981748027902

/-! ## A269075.P3279864416988255706

`A283543(n+1)-A107846(A001006(n))`
-/

namespace A269075.P3279864416988255706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (n + 1) - A107846 (A001006 n).toNat

end

end A269075.P3279864416988255706

/-! ## A269075.P1829050232675694440

`A283543(n+1)-A044940(A102468(n))`
-/

namespace A269075.P1829050232675694440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (n + 1) - A044940 (A102468 n).toNat

end

end A269075.P1829050232675694440

/-! ## A269075.P13890902714118261593

`A283543(n+1)-A044940(A060223(n))`
-/

namespace A269075.P13890902714118261593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (n + 1) - A044940 (A060223 n).toNat

end

end A269075.P13890902714118261593

/-! ## A269075.P4241516878607287196

`A283543(n+1)-A025469(A102468(n))`
-/

namespace A269075.P4241516878607287196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283543 (n + 1) - A025469 (A102468 n).toNat

end

end A269075.P4241516878607287196

/-!
# A269076: Number of 2 X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269076, the canonical program `A269076.P16139417725698352669` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269076 has offset 1).

The definition of A269076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269076.P16139417725698352669

`2*a(n-1)+5*a(n-2)-6*a(n-3)-9*a(n-4)` with `a(0)=4, a(1)=11, a(2)=27, a(3)=76`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269076

/-- `2*a(n-1)+5*a(n-2)-6*a(n-3)-9*a(n-4)` -/
def P16139417725698352669.Spec : Prop :=
  ∀ n, P16139417725698352669.a n = A269076 (n + 1)

theorem P16139417725698352669.correct : P16139417725698352669.Spec := by
  intro n
  simp only [A269076, Nat.add_sub_cancel]

end A269076

/-! ## A269076.P6746714054180091531

`ogf((4+3x-15x^2-9x^3)/(1-2x-5x^2+6x^3+9x^4))`
-/

namespace A269076.P6746714054180091531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, -15, -9] [1, -2, -5, 6, 9] n

end

end A269076.P6746714054180091531

namespace A269076

/-- `ogf((4+3x-15x^2-9x^3)/(1-2x-5x^2+6x^3+9x^4))` -/
def P6746714054180091531.Spec : Prop :=
  ∀ n, P6746714054180091531.a n = A269076 (n + 1)

end A269076

/-! ## A269076.P3921858919756153978

`A269075(∑[n+1]+2)`
-/

namespace A269076.P3921858919756153978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269076.P3921858919756153978

namespace A269076

/-- `A269075(∑[n+1]+2)` -/
def P3921858919756153978.Spec : Prop :=
  ∀ n, P3921858919756153978.a n = A269076 (n + 1)

end A269076

/-! ## A269076.P6283256026958995807

`record[A269075(A004736(n+1)+A020639(n+2))]`
-/

namespace A269076.P6283256026958995807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A004736 (n + 1) + A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269076.P6283256026958995807

namespace A269076

/-- `record[A269075(A004736(n+1)+A020639(n+2))]` -/
def P6283256026958995807.Spec : Prop :=
  ∀ n, P6283256026958995807.a n = A269076 (n + 1)

end A269076

/-!
# A269077: Number of 3 X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269077, the canonical program `A269077.P11552380146082181965` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269077 has offset 1).

The definition of A269077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269077.P11552380146082181965

`A269013(n+1)+A228684(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A269077

/-- `A269013(n+1)+A228684(n+1)` -/
def P11552380146082181965.Spec : Prop :=
  ∀ n, P11552380146082181965.a n = A269077 (n + 1)

theorem P11552380146082181965.correct : P11552380146082181965.Spec := by
  intro n
  simp only [A269077, Nat.add_sub_cancel]

end A269077

/-! ## A269077.P12114006290201589985

`ogf((8-69x^2+45x^3+35x^4-25x^5)/(1-4x-8x^2+34x^3+16x^4-60x^5+25x^6))`
-/

namespace A269077.P12114006290201589985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 0, -69, 45, 35, -25] [1, -4, -8, 34, 16, -60, 25] n

end

end A269077.P12114006290201589985

namespace A269077

/-- `ogf((8-69x^2+45x^3+35x^4-25x^5)/(1-4x-8x^2+34x^3+16x^4-60x^5+25x^6))` -/
def P12114006290201589985.Spec : Prop :=
  ∀ n, P12114006290201589985.a n = A269077 (n + 1)

end A269077

/-! ## A269077.P8403415732949584878

`A269075(∑[n+2]+4)`
-/

namespace A269077.P8403415732949584878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269077.P8403415732949584878

namespace A269077

/-- `A269075(∑[n+2]+4)` -/
def P8403415732949584878.Spec : Prop :=
  ∀ n, P8403415732949584878.a n = A269077 (n + 1)

end A269077

/-!
# A269078: Number of 4 X n binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269078, the canonical program `A269078.P10607210711120107227` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269078 has offset 1).

The definition of A269078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269078.P10607210711120107227

`ogf((16+25x-267x^2-104x^3+691x^4+275x^5-576x^6-324x^7)/(1-4x-28x^2+78x^3+264x^4-296x^5-527x^6+252x^7+324x^8))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269078

/-- `ogf((16+25x-267x^2-104x^3+691x^4+275x^5-576x^6-324x^7)/(1-4x-28x^2+78x^3+264x^4-296x^5-527x^6+252x^7+324x^8))` -/
def P10607210711120107227.Spec : Prop :=
  ∀ n, P10607210711120107227.a n = A269078 (n + 1)

theorem P10607210711120107227.correct : P10607210711120107227.Spec := by
  intro n
  simp only [A269078, Nat.add_sub_cancel]

end A269078

/-! ## A269078.P5597338945714140415

`A269075(A052905(n)+9)`
-/

namespace A269078.P5597338945714140415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A052905 n + 9).toNat

end

end A269078.P5597338945714140415

namespace A269078

/-- `A269075(A052905(n)+9)` -/
def P5597338945714140415.Spec : Prop :=
  ∀ n, P5597338945714140415.a n = A269078 (n + 1)

end A269078

/-!
# A269079: Number of 5Xn binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269079, there is no canonical definition to state claims against.
-/

/-! ## A269079.P12299831747112180896

`A269015(n+1)+A228683(A167499(n+3))`
-/

namespace A269079.P12299831747112180896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269015 (n + 1) + A228683 (A167499 (n + 3)).toNat

end

end A269079.P12299831747112180896

/-! ## A269079.P3020264465318308706

`A269075(A167499(n+3))`
-/

namespace A269079.P3020264465318308706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A167499 (n + 3)).toNat

end

end A269079.P3020264465318308706

/-!
# A269080: Number of 6Xn binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269080, there is no canonical definition to state claims against.
-/

/-! ## A269080.P1331275145801116945

`A269075(A166136(n+4))`
-/

namespace A269080.P1331275145801116945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A166136 (n + 4)).toNat

end

end A269080.P1331275145801116945

/-!
# A269081: Number of 7Xn binary arrays with some element plus some horizontally, diagonally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269081, there is no canonical definition to state claims against.
-/

/-! ## A269081.P2880927668857066061

`A269075(A167487(n+5))`
-/

namespace A269081.P2880927668857066061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269075 (A167487 (n + 5)).toNat

end

end A269081.P2880927668857066061

/-!
# A269082: Number of n X n binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269082, there is no canonical definition to state claims against.
-/

/-! ## A269082.P12237027372013122488

`A269089((n+1)²+n²)`
-/

namespace A269082.P12237027372013122488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 ((n + 1) ^ 2 + n ^ 2)

end

end A269082.P12237027372013122488

/-! ## A269082.P13407551146134682089

`record[A003982(n)*A269089(n+1)]`
-/

namespace A269082.P13407551146134682089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A269089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269082.P13407551146134682089

/-! ## A269082.P4657807358930633140

`record[gcd(A157521(n), A269089(n+1))]`
-/

namespace A269082.P4657807358930633140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157521 n) (A269089 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269082.P4657807358930633140

/-! ## A269082.P2842112766131706942

`record[A077606(n+1)*A269089(n+1)]`
-/

namespace A269082.P2842112766131706942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A269089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269082.P2842112766131706942

/-! ## A269082.P13879079020249288464

`record[root(A269089(n+1), A089913(n+1))]`
-/

namespace A269082.P13879079020249288464
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A269089 (n + 1) : ℝ) ^ (1 / (A089913 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269082.P13879079020249288464

/-!
# A269083: Number of n X 2 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269083, the canonical program `A269083.P16503664026821643118` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269083 has offset 1).

The definition of A269083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269083.P16503664026821643118

`ogf((4+3x-4x^2-9x^3-5x^4-x^5)/(1-2x-3x^2+2x^3+6x^4+4x^5+x^6))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269083

/-- `ogf((4+3x-4x^2-9x^3-5x^4-x^5)/(1-2x-3x^2+2x^3+6x^4+4x^5+x^6))` -/
def P16503664026821643118.Spec : Prop :=
  ∀ n, P16503664026821643118.a n = A269083 (n + 1)

theorem P16503664026821643118.correct : P16503664026821643118.Spec := by
  intro n
  simp only [A269083, Nat.add_sub_cancel]

end A269083

/-! ## A269083.P11514585767774617325

`A269089(∑[n+1]+2)`
-/

namespace A269083.P11514585767774617325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269083.P11514585767774617325

namespace A269083

/-- `A269089(∑[n+1]+2)` -/
def P11514585767774617325.Spec : Prop :=
  ∀ n, P11514585767774617325.a n = A269083 (n + 1)

end A269083

/-! ## A269083.P749646180480867221

`record[A269089(A133263(A008611(n)))]`
-/

namespace A269083.P749646180480867221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269083.P749646180480867221

namespace A269083

/-- `record[A269089(A133263(A008611(n)))]` -/
def P749646180480867221.Spec : Prop :=
  ∀ n, P749646180480867221.a n = A269083 (n + 1)

end A269083

/-!
# A269084: Number of n X 3 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269084, the canonical program `A269084.P8747238342954904088` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269084 has offset 1).

The definition of A269084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269084.P8747238342954904088

`ogf((7+16x-9x^2-56x^3-60x^4-15x^5+13x^6+8x^7-x^8-x^9)/(1-2x-9x^2+2x^3+33x^4+42x^5+14x^6-10x^7-8x^8+x^10))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269084

/-- `ogf((7+16x-9x^2-56x^3-60x^4-15x^5+13x^6+8x^7-x^8-x^9)/(1-2x-9x^2+2x^3+33x^4+42x^5+14x^6-10x^7-8x^8+x^10))` -/
def P8747238342954904088.Spec : Prop :=
  ∀ n, P8747238342954904088.a n = A269084 (n + 1)

theorem P8747238342954904088.correct : P8747238342954904088.Spec := by
  intro n
  simp only [A269084, Nat.add_sub_cancel]

end A269084

/-! ## A269084.P1381480198697034180

`A269089(∑[n+2]+4)`
-/

namespace A269084.P1381480198697034180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269084.P1381480198697034180

namespace A269084

/-- `A269089(∑[n+2]+4)` -/
def P1381480198697034180.Spec : Prop :=
  ∀ n, P1381480198697034180.a n = A269084 (n + 1)

end A269084

/-!
# A269085: Number of nX4 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269085, there is no canonical definition to state claims against.
-/

/-! ## A269085.P8317195752837233346

`A269089(A374004(n+1))`
-/

namespace A269085.P8317195752837233346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A374004 (n + 1)).toNat

end

end A269085.P8317195752837233346

/-!
# A269086: Number of nX5 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269086, there is no canonical definition to state claims against.
-/

/-! ## A269086.P6388724141812553965

`A269089(A374005(n+1))`
-/

namespace A269086.P6388724141812553965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A374005 (n + 1)).toNat

end

end A269086.P6388724141812553965

/-!
# A269087: Number of nX6 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269087, there is no canonical definition to state claims against.
-/

/-! ## A269087.P3763627696520189858

`A269089(A374007(n+1))`
-/

namespace A269087.P3763627696520189858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A374007 (n + 1)).toNat

end

end A269087.P3763627696520189858

/-!
# A269088: Number of nX7 binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269088, there is no canonical definition to state claims against.
-/

/-! ## A269088.P2235237966835217602

`A269089(A374008(n+1))`
-/

namespace A269088.P2235237966835217602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269089 (A374008 (n + 1)).toNat

end

end A269088.P2235237966835217602

/-!
# A269089: T(n,k)=Number of nXk binary arrays with some element plus some horizontally, vertically or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A269089, there is no canonical definition to state claims against.
-/

/-! ## A269089.P16292441839623977648

`A000196(A223379(n+1)-5)`
-/

namespace A269089.P16292441839623977648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A223379 (n + 1) - 5).toNat

end

end A269089.P16292441839623977648

/-! ## A269089.P5474635630446013528

`A137734(A223379(n+1)-A047700(n+1))`
-/

namespace A269089.P5474635630446013528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A223379 (n + 1) - A047700 (n + 1)).toNat

end

end A269089.P5474635630446013528

/-!
# A269090: Number of n X n 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269090, there is no canonical definition to state claims against.
-/

/-! ## A269090.P12050633315353449218

`A269097(∑[4*n]+1)`
-/

namespace A269090.P12050633315353449218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269090.P12050633315353449218

/-!
# A269091: Number of n X 2 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269091, the canonical program `A269091.P6360547078196967768` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269091 has offset 1).

The definition of A269091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269091.P6360547078196967768

`ogf((4+40x+4x^2)/(1-14x+49x^2))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269091

/-- `ogf((4+40x+4x^2)/(1-14x+49x^2))` -/
def P6360547078196967768.Spec : Prop :=
  ∀ n, P6360547078196967768.a n = A269091 (n + 1)

theorem P6360547078196967768.correct : P6360547078196967768.Spec := by
  intro n
  simp only [A269091, Nat.add_sub_cancel]

end A269091

/-! ## A269091.P514103680950748764

`A269097(∑[n+1]+2)`
-/

namespace A269091.P514103680950748764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269091.P514103680950748764

namespace A269091

/-- `A269097(∑[n+1]+2)` -/
def P514103680950748764.Spec : Prop :=
  ∀ n, P514103680950748764.a n = A269091 (n + 1)

end A269091

/-! ## A269091.P12419290512882071850

`record[A269097(n+2)/A008826(n+5)]`
-/

namespace A269091.P12419290512882071850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269097 (n + 2) : ℚ) / (A008826 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269091.P12419290512882071850

namespace A269091

/-- `record[A269097(n+2)/A008826(n+5)]` -/
def P12419290512882071850.Spec : Prop :=
  ∀ n, P12419290512882071850.a n = (A269091 (n + 1) : ℚ)

end A269091

/-! ## A269091.P2021090238863297538

`A269214(∑[n+2])`
-/

namespace A269091.P2021090238863297538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269214 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269091.P2021090238863297538

namespace A269091

/-- `A269214(∑[n+2])` -/
def P2021090238863297538.Spec : Prop :=
  ∀ n, P2021090238863297538.a n = A269091 (n + 1)

end A269091

/-! ## A269091.P13842864055865168074

`record[A054525(n+3)*A269214(n+2)]`
-/

namespace A269091.P13842864055865168074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 3) * A269214 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269091.P13842864055865168074

namespace A269091

/-- `record[A054525(n+3)*A269214(n+2)]` -/
def P13842864055865168074.Spec : Prop :=
  ∀ n, P13842864055865168074.a n = A269091 (n + 1)

end A269091

/-!
# A269092: Number of n X 3 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269092, there is no canonical definition to state claims against.
-/

/-! ## A269092.P13356546656772285055

`A269097(∑[n+2]+4)`
-/

namespace A269092.P13356546656772285055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269092.P13356546656772285055

/-!
# A269093: Number of nX4 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269093, there is no canonical definition to state claims against.
-/

/-! ## A269093.P7555269209430943090

`A269097(A374004(n+1))`
-/

namespace A269093.P7555269209430943090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A374004 (n + 1)).toNat

end

end A269093.P7555269209430943090

/-! ## A269093.P3129960617014189780

`A269097(A141214(n+1))`
-/

namespace A269093.P3129960617014189780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A141214 (n + 1)).toNat

end

end A269093.P3129960617014189780

/-!
# A269094: Number of nX5 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269094, there is no canonical definition to state claims against.
-/

/-! ## A269094.P13468571598222097696

`A269097(A374005(n+1))`
-/

namespace A269094.P13468571598222097696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A374005 (n + 1)).toNat

end

end A269094.P13468571598222097696

/-! ## A269094.P7161365149950967599

`A269097(Δ[A264443(n)])`
-/

namespace A269094.P7161365149950967599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (f1 (n + 1) - f1 n).toNat

end

end A269094.P7161365149950967599

/-!
# A269095: Number of nX6 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269095, there is no canonical definition to state claims against.
-/

/-! ## A269095.P17629639597132716019

`A269097(A374007(n+1))`
-/

namespace A269095.P17629639597132716019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A374007 (n + 1)).toNat

end

end A269095.P17629639597132716019

/-!
# A269096: Number of nX7 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269096, there is no canonical definition to state claims against.
-/

/-! ## A269096.P2437467168426333269

`A269097(A374008(n+1))`
-/

namespace A269096.P2437467168426333269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269097 (A374008 (n + 1)).toNat

end

end A269096.P2437467168426333269

/-!
# A269097: T(n,k) = Number of n X k 0..3 arrays with some element plus some horizontally or vertically adjacent neighbor totalling three exactly once.

The programs for A269097, there is no canonical definition to state claims against.
-/

/-! ## A269097.P15991351436150521980

`A269109(n+1)-4*A222444(n+1)`
-/

namespace A269097.P15991351436150521980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (n + 1) - 4 * A222444 (n + 1)

end

end A269097.P15991351436150521980

/-! ## A269097.P16364067662404917371

`A269109(n+1)-4*(2*A233018(n+1)-1)`
-/

namespace A269097.P16364067662404917371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (n + 1) - 4 * (2 * A233018 (n + 1) - 1)

end

end A269097.P16364067662404917371

/-! ## A269097.P11455063781742682130

`A269109(n+1)-A008574(A222444(n+1))`
-/

namespace A269097.P11455063781742682130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269109 (n + 1) - A008574 (A222444 (n + 1)).toNat

end

end A269097.P11455063781742682130

/-! ## A269097.P16614004795289448917

`A001281(A028326(n)*A269186(n+1))`
-/

namespace A269097.P16614004795289448917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A028326 n * A269186 (n + 1)).toNat

end

end A269097.P16614004795289448917

/-! ## A269097.P9238380003152387168

`A007318(n)*A269186(A062399(n)+1)`
-/

namespace A269097.P9238380003152387168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A269186 (A062399 n + 1).toNat

end

end A269097.P9238380003152387168

/-!
# A269098: Expansion of (1 + 2*x + 3*x^2 + x^3 + x^5)/(1 - x^3)^2.

The programs for A269098, the canonical program `A269098.P6042021906619455401` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269098 has offset 0).

The definition of A269098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2+x^3+x^5)/(1-2x^3+x^6))` (program `A269098.P6042021906619455401`, by `A269098.P6042021906619455401.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269098.P6042021906619455401

`ogf((1+2x+3x^2+x^3+x^5)/(1-2x^3+x^6))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A269098

/-- `ogf((1+2x+3x^2+x^3+x^5)/(1-2x^3+x^6))` -/
def P6042021906619455401.Spec : Prop :=
  ∀ n, P6042021906619455401.a n = A269098 n

theorem P6042021906619455401.correct : P6042021906619455401.Spec := by
  intro n
  simp only [A269098]

end A269098

/-! ## A269098.P15857261149253453193

`1+n+(1-2*n)*floor(n/3)/3+2*(n-2)*floor((n+1)/3)/3`
-/

namespace A269098.P15857261149253453193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) + ((1 - (2 * n : ℤ)) * ⌊(n : ℚ) / 3⌋ : ℚ) / 3 + (2 * ((n : ℤ) - 2) * ⌊(n + 1 : ℚ) / 3⌋ : ℚ) / 3

end

end A269098.P15857261149253453193

namespace A269098

/-- `1+n+(1-2*n)*floor(n/3)/3+2*(n-2)*floor((n+1)/3)/3` -/
def P15857261149253453193.Spec : Prop :=
  ∀ n, P15857261149253453193.a n = (A269098 n : ℚ)

end A269098

/-! ## A269098.P4035020243237808413

`ceil((2*A222257(n)+1)/3)`
-/

namespace A269098.P4035020243237808413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A222257 n + 1 : ℚ) / 3⌉

end

end A269098.P4035020243237808413

namespace A269098

/-- `ceil((2*A222257(n)+1)/3)` -/
def P4035020243237808413.Spec : Prop :=
  ∀ n, P4035020243237808413.a n = A269098 n

end A269098

/-! ## A269098.P14113402292910307779

`A332057(A080782(n+1))`
-/

namespace A269098.P14113402292910307779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332057 (A080782 (n + 1)).toNat

end

end A269098.P14113402292910307779

namespace A269098

/-- `A332057(A080782(n+1))` -/
def P14113402292910307779.Spec : Prop :=
  ∀ n, P14113402292910307779.a n = A269098 n

end A269098

/-! ## A269098.P7070019130620043718

`A029579(ceil(4*n/3))`
-/

namespace A269098.P7070019130620043718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 ⌈4 * ((n : ℚ) / 3)⌉.toNat

end

end A269098.P7070019130620043718

namespace A269098

/-- `A029579(ceil(4*n/3))` -/
def P7070019130620043718.Spec : Prop :=
  ∀ n, P7070019130620043718.a n = A269098 n

end A269098

/-! ## A269098.P12550515002563473045

`A176743(A131452(n))`
-/

namespace A269098.P12550515002563473045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176743 (A131452 n).toNat

end

end A269098.P12550515002563473045

namespace A269098

/-- `A176743(A131452(n))` -/
def P12550515002563473045.Spec : Prop :=
  ∀ n, P12550515002563473045.a n = A269098 n

end A269098

/-! ## A269098.P13869752304824717393

`A026741(A131452(n)+2)`
-/

namespace A269098.P13869752304824717393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A131452 n + 2).toNat

end

end A269098.P13869752304824717393

namespace A269098

/-- `A026741(A131452(n)+2)` -/
def P13869752304824717393.Spec : Prop :=
  ∀ n, P13869752304824717393.a n = A269098 n

end A269098

/-! ## A269098.P250880654340041585

`A160413(A318500(2*(n+1)))%A318500(2*(n+1))`
-/

namespace A269098.P250880654340041585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160413 (A318500 (2 * (n + 1))).toNat) (A318500 (2 * (n + 1)))

end

end A269098.P250880654340041585

namespace A269098

/-- `A160413(A318500(2*(n+1)))%A318500(2*(n+1))` -/
def P250880654340041585.Spec : Prop :=
  ∀ n, P250880654340041585.a n = A269098 n

end A269098

/-! ## A269098.P5145352796602625965

`A004396(A222257(n)+1)`
-/

namespace A269098.P5145352796602625965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A222257 n + 1).toNat

end

end A269098.P5145352796602625965

namespace A269098

/-- `A004396(A222257(n)+1)` -/
def P5145352796602625965.Spec : Prop :=
  ∀ n, P5145352796602625965.a n = A269098 n

end A269098

/-! ## A269098.P16988387282928830052

`A173234(A047429(n+1))`
-/

namespace A269098.P16988387282928830052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173234 (A047429 (n + 1)).toNat

end

end A269098.P16988387282928830052

namespace A269098

/-- `A173234(A047429(n+1))` -/
def P16988387282928830052.Spec : Prop :=
  ∀ n, P16988387282928830052.a n = A269098 n

end A269098

/-! ## A269098.P1867788504801435631

`A178804(A047438(n+1))`
-/

namespace A269098.P1867788504801435631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (A047438 (n + 1)).toNat

end

end A269098.P1867788504801435631

namespace A269098

/-- `A178804(A047438(n+1))` -/
def P1867788504801435631.Spec : Prop :=
  ∀ n, P1867788504801435631.a n = A269098 n

end A269098

/-! ## A269098.P14984791527852777468

`A271519(A047552(n+1))`
-/

namespace A269098.P14984791527852777468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271519 (A047552 (n + 1)).toNat

end

end A269098.P14984791527852777468

namespace A269098

/-- `A271519(A047552(n+1))` -/
def P14984791527852777468.Spec : Prop :=
  ∀ n, P14984791527852777468.a n = A269098 n

end A269098

/-! ## A269098.P3499307853841225715

`A131922(A082667(n+1))`
-/

namespace A269098.P3499307853841225715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131922 (A082667 (n + 1)).toNat

end

end A269098.P3499307853841225715

namespace A269098

/-- `A131922(A082667(n+1))` -/
def P3499307853841225715.Spec : Prop :=
  ∀ n, P3499307853841225715.a n = A269098 n

end A269098

/-!
# A269099: Numbers n with the property that if there is a number j with prime(n+i) + prime(n-i) = j for some i, then there are least two choices for i that give this value of j.

The programs for A269099, there is no canonical definition to state claims against.
-/

/-! ## A269099.P3349787114196992751

`lt[1, A178670(1+n)]+1`
-/

namespace A269099.P3349787114196992751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178670 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A269099.P3349787114196992751

/-! ## A269099.P10755914980137740790

`lt[1, A178670(A028310(n))]`
-/

namespace A269099.P10755914980137740790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178670 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A269099.P10755914980137740790

/-! ## A269099.P5877613674708497691

`lt[1, A178670(A000007(n)+n)]`
-/

namespace A269099.P5877613674708497691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178670 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A269099.P5877613674708497691

/-! ## A269099.P16674686621695425762

`eq[3, 3%A000040(A178670(n+1)+1)]+1`
-/

namespace A269099.P16674686621695425762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A000040 (A178670 (n + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A269099.P16674686621695425762

/-! ## A269099.P16217363556222676149

`lt[1, A178670(A233583(n+1))]`
-/

namespace A269099.P16217363556222676149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178670 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A269099.P16217363556222676149

