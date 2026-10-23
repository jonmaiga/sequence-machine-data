import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

/-!
# A238103: Product of composite numbers in range n+1 to 2n, exclusive of endpoints.

The programs for A238103, there is no canonical definition to state claims against.
-/

/-! ## A238103.P4963491756998549977

`A049614(2*n+1)/A049614(n+2)`
-/

namespace A238103.P4963491756998549977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049614 (2 * n + 1) : ℚ) / (A049614 (n + 2) : ℚ)

end

end A238103.P4963491756998549977

/-! ## A238103.P9366070206306108616

`gcd(n!², A262034(2*n+1))`
-/

namespace A238103.P9366070206306108616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n ^ 2 : ℤ) (A262034 (2 * n + 1))

end

end A238103.P9366070206306108616

/-! ## A238103.P5212666196055330708

`gcd(A000178(n), A008279(A054000(n+1)))`
-/

namespace A238103.P5212666196055330708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000178 n) (A008279 (A054000 (n + 1)).toNat)

end

end A238103.P5212666196055330708

/-!
# A238104: Sum of digits in periodic part of decimal expansion of 1/prime(n).

The programs for A238104, there is no canonical definition to state claims against.
-/

/-! ## A238104.P1212834074058911517

`3*A238105(n+1)`
-/

namespace A238104.P1212834074058911517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A238105 (n + 1)

end

end A238104.P1212834074058911517

/-! ## A238104.P1161318701714313396

`A008585(A238105(n+1))`
-/

namespace A238104.P1161318701714313396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A238105 (n + 1)).toNat

end

end A238104.P1161318701714313396

/-! ## A238104.P16555425637170278272

`A270392(A000040(n+1))`
-/

namespace A238104.P16555425637170278272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270392 (A000040 (n + 1)).toNat

end

end A238104.P16555425637170278272

/-! ## A238104.P5721395675969892711

`A270392(A006005(n+1))`
-/

namespace A238104.P5721395675969892711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270392 (A006005 (n + 1)).toNat

end

end A238104.P5721395675969892711

/-! ## A238104.P12808013228212264060

`A270392(A161847(n+1))`
-/

namespace A238104.P12808013228212264060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270392 (A161847 (n + 1)).toNat

end

end A238104.P12808013228212264060

/-! ## A238104.P14709981246074352247

`A270392(A008578(n+2))`
-/

namespace A238104.P14709981246074352247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270392 (A008578 (n + 2)).toNat

end

end A238104.P14709981246074352247

/-! ## A238104.P16067998753629009884

`A270392(A075643(n+2))`
-/

namespace A238104.P16067998753629009884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270392 (A075643 (n + 2)).toNat

end

end A238104.P16067998753629009884

/-! ## A238104.P17040198835249539856

`A270392(A182986(n+2))`
-/

namespace A238104.P17040198835249539856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270392 (A182986 (n + 2)).toNat

end

end A238104.P17040198835249539856

/-! ## A238104.P110210476447732645

`A270392(record[A006530(n+2)])`
-/

namespace A238104.P110210476447732645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270392 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A238104.P110210476447732645

/-! ## A238104.P18161766982142876604

`A270392(record[A020639(n+2)])`
-/

namespace A238104.P18161766982142876604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270392 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A238104.P18161766982142876604

/-! ## A238104.P17114222685514365433

`lcm(A048997(A006005(n+1)), A238105(n+1))`
-/

namespace A238104.P17114222685514365433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048997 (A006005 (n + 1)).toNat) (A238105 (n + 1))

end

end A238104.P17114222685514365433

/-!
# A238105: A238104(n)/3.

The programs for A238105, there is no canonical definition to state claims against.
-/

/-! ## A238105.P13601795183780360252

`A238104(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238105.P13601795183780360252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238104 (n + 1) : ℚ) / 3

end

end A238105.P13601795183780360252

/-! ## A238105.P7196146186088950474

`A002264(A238104(n+1))`
-/

namespace A238105.P7196146186088950474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A238104 (n + 1)).toNat

end

end A238105.P7196146186088950474

/-! ## A238105.P16558311100691565733

`A008611(A238104(n+1)+1)`
-/

namespace A238105.P16558311100691565733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A238104 (n + 1) + 1).toNat

end

end A238105.P16558311100691565733

/-! ## A238105.P11686536976214815687

`A009947(A238104(n+1)+1)`
-/

namespace A238105.P11686536976214815687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A238104 (n + 1) + 1).toNat

end

end A238105.P11686536976214815687

/-! ## A238105.P9526038214796923059

`A186731(A238104(n+1)+1)`
-/

namespace A238105.P9526038214796923059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 (A238104 (n + 1) + 1).toNat

end

end A238105.P9526038214796923059

/-! ## A238105.P5248402855335953690

`A270392(A000040(n+1))/3`
-/

namespace A238105.P5248402855335953690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270392 (A000040 (n + 1)).toNat : ℚ) / 3

end

end A238105.P5248402855335953690

/-! ## A238105.P12085279251714759455

`A270392(record[A006530(n+2)])/3`
-/

namespace A238105.P12085279251714759455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270392 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 3

end

end A238105.P12085279251714759455

/-! ## A238105.P2428244947559986122

`A270392(record[A020639(n+2)])/3`
-/

namespace A238105.P2428244947559986122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270392 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 3

end

end A238105.P2428244947559986122

/-! ## A238105.P11115045451008555699

`A008615(2*A238104(n+1))`
-/

namespace A238105.P11115045451008555699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A238104 (n + 1)).toNat

end

end A238105.P11115045451008555699

/-! ## A238105.P13029275818236542119

`A152467(2*A238104(n+1))`
-/

namespace A238105.P13029275818236542119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (2 * A238104 (n + 1)).toNat

end

end A238105.P13029275818236542119

/-!
# A238106: a(n) = A238104(n)/9.

The programs for A238106, there is no canonical definition to state claims against.
-/

/-! ## A238106.P15710808790220999161

`A238104(n+3)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238106.P15710808790220999161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238104 (n + 3) : ℚ) / 9

end

end A238106.P15710808790220999161

/-! ## A238106.P13617133186691724785

`A238105(n+3)/3`
-/

namespace A238106.P13617133186691724785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238105 (n + 3) : ℚ) / 3

end

end A238106.P13617133186691724785

/-! ## A238106.P9458342048138482919

`3^or(-1, A000041(n))*A238105(n+3)`
-/

namespace A238106.P9458342048138482919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.lor (-1) (A000041 n) : ℤ) * (A238105 (n + 3) : ℚ)

end

end A238106.P9458342048138482919

/-! ## A238106.P5823350316648938220

`A002264(A238105(n+3))`
-/

namespace A238106.P5823350316648938220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A238105 (n + 3)).toNat

end

end A238106.P5823350316648938220

/-! ## A238106.P6097863077241648259

`A008611(A238105(n+3)+1)`
-/

namespace A238106.P6097863077241648259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A238105 (n + 3) + 1).toNat

end

end A238106.P6097863077241648259

/-! ## A238106.P15219408476792286806

`A106610(A238104(n+3))`
-/

namespace A238106.P15219408476792286806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A238104 (n + 3)).toNat

end

end A238106.P15219408476792286806

/-!
# A238108: a(n) = (n - 1)*(n - 2)*(5*n^4 + 3*n^3 + 34*n^2 - 264*n + 180)/360.

The programs for A238108, the canonical program `A238108.P4488216212764168640` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238108 has offset 0).

The definition of A238108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238108.P4488216212764168640

`(n-1)*(n-2)*(5*n^4+3*n^3+34*n²-264*n+180)/360`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238108

/-- `(n-1)*(n-2)*(5*n^4+3*n^3+34*n²-264*n+180)/360` -/
def P4488216212764168640.Spec : Prop :=
  ∀ n, P4488216212764168640.a n = (A238108 n : ℚ)

end A238108

/-!
# A238109: List of prefix-normal words over the alphabet {1,2}.

The programs for A238109, there is no canonical definition to state claims against.
-/

/-! ## A238109.P10343800780713877100

`∩[A102660(n+1)-1, A134948(n+1)]`
-/

namespace A238109.P10343800780713877100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102660 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238109.P10343800780713877100

/-! ## A238109.P6378663367203976027

`∩[A101248(n+1), A102660(n+1)-1]`
-/

namespace A238109.P6378663367203976027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102660 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238109.P6378663367203976027

/-! ## A238109.P1308808416276199327

`record[A064770(A210585(n+1))]`
-/

namespace A238109.P1308808416276199327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A210585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238109.P1308808416276199327

/-! ## A238109.P2931191093492381182

`A007931(∑[A327168(A001981(n))])`
-/

namespace A238109.P2931191093492381182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327168 (A001981 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238109.P2931191093492381182

/-!
# A238110: Maximum size of a class of binary words of length n having the same prefix normal form.

The programs for A238110, there is no canonical definition to state claims against.
-/

/-! ## A238110.P15602926436320219654

`∩[A158292(n+1), A180493(n+1)]`
-/

namespace A238110.P15602926436320219654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238110.P15602926436320219654

/-!
# A238111: Twice the large Schroeder numbers A006318.

The programs for A238111, the canonical program `A238111.P18207636509686923299` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238111 has offset 0).

The definition of A238111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238111.P507228425548094326

`2*A006318(n)`
-/

namespace A238111.P507228425548094326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006318 n

end

end A238111.P507228425548094326

namespace A238111

/-- `2*A006318(n)` -/
def P507228425548094326.Spec : Prop :=
  ∀ n, P507228425548094326.a n = A238111 n

end A238111

/-! ## A238111.P5301884717597363969

`∑[2*A006319(n)]`
-/

namespace A238111.P5301884717597363969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238111.P5301884717597363969

namespace A238111

/-- `∑[2*A006319(n)]` -/
def P5301884717597363969.Spec : Prop :=
  ∀ n, P5301884717597363969.a n = A238111 n

end A238111

/-! ## A238111.P5168595214948751435

`2*A073150(∑[n])`
-/

namespace A238111.P5168595214948751435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073150 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238111.P5168595214948751435

namespace A238111

/-- `2*A073150(∑[n])` -/
def P5168595214948751435.Spec : Prop :=
  ∀ n, P5168595214948751435.a n = A238111 n

end A238111

/-! ## A238111.P2289338099157648174

`2*A080247(∑[n])`
-/

namespace A238111.P2289338099157648174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080247 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238111.P2289338099157648174

namespace A238111

/-- `2*A080247(∑[n])` -/
def P2289338099157648174.Spec : Prop :=
  ∀ n, P2289338099157648174.a n = A238111 n

end A238111

/-! ## A238111.P6935149756209459690

`2*A133367(∑[n])`
-/

namespace A238111.P6935149756209459690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133367 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238111.P6935149756209459690

namespace A238111

/-- `2*A133367(∑[n])` -/
def P6935149756209459690.Spec : Prop :=
  ∀ n, P6935149756209459690.a n = A238111 n

end A238111

/-! ## A238111.P2486886294041052840

`2*A351385(∑[n])`
-/

namespace A238111.P2486886294041052840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A351385 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238111.P2486886294041052840

namespace A238111

/-- `2*A351385(∑[n])` -/
def P2486886294041052840.Spec : Prop :=
  ∀ n, P2486886294041052840.a n = A238111 n

end A238111

/-! ## A238111.P18207636509686923299

`Δ[2*A176006(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A238111

/-- `Δ[2*A176006(n)]` -/
def P18207636509686923299.Spec : Prop :=
  ∀ n, P18207636509686923299.a n = A238111 n

theorem P18207636509686923299.correct : P18207636509686923299.Spec := by
  intro n
  simp only [A238111]

end A238111

/-! ## A238111.P5558724801289977771

`record[2*A080247(n)]`
-/

namespace A238111.P5558724801289977771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238111.P5558724801289977771

namespace A238111

/-- `record[2*A080247(n)]` -/
def P5558724801289977771.Spec : Prop :=
  ∀ n, P5558724801289977771.a n = A238111 n

end A238111

/-! ## A238111.P13405034842008220689

`record[2*A122538(n)]`
-/

namespace A238111.P13405034842008220689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238111.P13405034842008220689

namespace A238111

/-- `record[2*A122538(n)]` -/
def P13405034842008220689.Spec : Prop :=
  ∀ n, P13405034842008220689.a n = A238111 n

end A238111

/-! ## A238111.P11583883876897515457

`2*(A035011(n)+1)`
-/

namespace A238111.P11583883876897515457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A035011 n + 1)

end

end A238111.P11583883876897515457

namespace A238111

/-- `2*(A035011(n)+1)` -/
def P11583883876897515457.Spec : Prop :=
  ∀ n, P11583883876897515457.a n = A238111 n

end A238111

/-! ## A238111.P6728190644696129505

`2*A155069(n+1)`
-/

namespace A238111.P6728190644696129505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155069 (n + 1)

end

end A238111.P6728190644696129505

namespace A238111

/-- `2*A155069(n+1)` -/
def P6728190644696129505.Spec : Prop :=
  ∀ n, P6728190644696129505.a n = A238111 n

end A238111

/-! ## A238111.P14487277163572826872

`abs(2*A080245(∑[n]))`
-/

namespace A238111.P14487277163572826872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A080245 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A238111.P14487277163572826872

namespace A238111

/-- `abs(2*A080245(∑[n]))` -/
def P14487277163572826872.Spec : Prop :=
  ∀ n, P14487277163572826872.a n = A238111 n

end A238111

/-! ## A238111.P2239604031270555920

`record[abs(2*A080245(n))]`
-/

namespace A238111.P2239604031270555920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A080245 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238111.P2239604031270555920

namespace A238111

/-- `record[abs(2*A080245(n))]` -/
def P2239604031270555920.Spec : Prop :=
  ∀ n, P2239604031270555920.a n = A238111 n

end A238111

/-! ## A238111.P10948565168146732442

`record[abs(2*A112477(n))]`
-/

namespace A238111.P10948565168146732442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A112477 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238111.P10948565168146732442

namespace A238111

/-- `record[abs(2*A112477(n))]` -/
def P10948565168146732442.Spec : Prop :=
  ∀ n, P10948565168146732442.a n = A238111 n

end A238111

/-! ## A238111.P9295467087004758234

`record[abs(2*A117354(n))]`
-/

namespace A238111.P9295467087004758234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A117354 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238111.P9295467087004758234

namespace A238111

/-- `record[abs(2*A117354(n))]` -/
def P9295467087004758234.Spec : Prop :=
  ∀ n, P9295467087004758234.a n = A238111 n

end A238111

/-! ## A238111.P4427002391812627397

`Δ[2*∑[A155069(n)]]`
-/

namespace A238111.P4427002391812627397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238111.P4427002391812627397

namespace A238111

/-- `Δ[2*∑[A155069(n)]]` -/
def P4427002391812627397.Spec : Prop :=
  ∀ n, P4427002391812627397.a n = A238111 n

end A238111

/-! ## A238111.P3773801789485462383

`record[2*ratio[A132372(n)]]`
-/

namespace A238111.P3773801789485462383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132372 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238111.P3773801789485462383

namespace A238111

/-- `record[2*ratio[A132372(n)]]` -/
def P3773801789485462383.Spec : Prop :=
  ∀ n, P3773801789485462383.a n = (A238111 n : ℚ)

end A238111

/-! ## A238111.P3982384272699345759

`abs(2*A086456(n+1))`
-/

namespace A238111.P3982384272699345759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A086456 (n + 1)|

end

end A238111.P3982384272699345759

namespace A238111

/-- `abs(2*A086456(n+1))` -/
def P3982384272699345759.Spec : Prop :=
  ∀ n, P3982384272699345759.a n = A238111 n

end A238111

/-! ## A238111.P2564346142625629758

`abs(2*A103137(n+1))`
-/

namespace A238111.P2564346142625629758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A103137 (n + 1)|

end

end A238111.P2564346142625629758

namespace A238111

/-- `abs(2*A103137(n+1))` -/
def P2564346142625629758.Spec : Prop :=
  ∀ n, P2564346142625629758.a n = A238111 n

end A238111

/-! ## A238111.P15734508725292700329

`2*A033877(∑[n+1])`
-/

namespace A238111.P15734508725292700329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033877 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238111.P15734508725292700329

namespace A238111

/-- `2*A033877(∑[n+1])` -/
def P15734508725292700329.Spec : Prop :=
  ∀ n, P15734508725292700329.a n = A238111 n

end A238111

/-!
# A238112: Expansion of g.f.: (1-5*x+2*x^2+(2*x-1)*sqrt(x^2-6*x+1))/(4*x).

The programs for A238112, the canonical program `A238112.P3075264075609945640` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238112 has offset 0).

The definition of A238112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238112.P5813108605707763085

`A006319(n)-A001003(n)`
-/

namespace A238112.P5813108605707763085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n - A001003 n

end

end A238112.P5813108605707763085

namespace A238112

/-- `A006319(n)-A001003(n)` -/
def P5813108605707763085.Spec : Prop :=
  ∀ n, P5813108605707763085.a n = A238112 n

end A238112

/-! ## A238112.P3075264075609945640

`A001003(n)-A155069(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A238112

/-- `A001003(n)-A155069(n)` -/
def P3075264075609945640.Spec : Prop :=
  ∀ n, P3075264075609945640.a n = A238112 n

theorem P3075264075609945640.correct : P3075264075609945640.Spec := by
  intro n
  simp only [A238112]

end A238112

/-! ## A238112.P8925579508716923816

`A006319(n)%A080243(n)`
-/

namespace A238112.P8925579508716923816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006319 n) (A080243 n)

end

end A238112.P8925579508716923816

namespace A238112

/-- `A006319(n)%A080243(n)` -/
def P8925579508716923816.Spec : Prop :=
  ∀ n, P8925579508716923816.a n = A238112 n

end A238112

/-! ## A238112.P18329134537357696519

`A001003(n)-abs(A086456(n))`
-/

namespace A238112.P18329134537357696519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n - |A086456 n|

end

end A238112.P18329134537357696519

namespace A238112

/-- `A001003(n)-abs(A086456(n))` -/
def P18329134537357696519.Spec : Prop :=
  ∀ n, P18329134537357696519.a n = A238112 n

end A238112

/-! ## A238112.P6972839937251924919

`A001003(n)-abs(A103137(n))`
-/

namespace A238112.P6972839937251924919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n - |A103137 n|

end

end A238112.P6972839937251924919

namespace A238112

/-- `A001003(n)-abs(A103137(n))` -/
def P6972839937251924919.Spec : Prop :=
  ∀ n, P6972839937251924919.a n = A238112 n

end A238112

/-! ## A238112.P7076871981609571187

`abs(A080243(n)-A103137(n))`
-/

namespace A238112.P7076871981609571187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080243 n - A103137 n|

end

end A238112.P7076871981609571187

namespace A238112

/-- `abs(A080243(n)-A103137(n))` -/
def P7076871981609571187.Spec : Prop :=
  ∀ n, P7076871981609571187.a n = A238112 n

end A238112

/-! ## A238112.P15899009005582636998

`abs(A080243(n))-A155069(n)`
-/

namespace A238112.P15899009005582636998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080243 n| - A155069 n

end

end A238112.P15899009005582636998

namespace A238112

/-- `abs(A080243(n))-A155069(n)` -/
def P15899009005582636998.Spec : Prop :=
  ∀ n, P15899009005582636998.a n = A238112 n

end A238112

/-! ## A238112.P3615455147758442280

`(A006319(n)-A155069(n))/2`
-/

namespace A238112.P3615455147758442280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006319 n - A155069 n : ℚ) / 2

end

end A238112.P3615455147758442280

namespace A238112

/-- `(A006319(n)-A155069(n))/2` -/
def P3615455147758442280.Spec : Prop :=
  ∀ n, P3615455147758442280.a n = (A238112 n : ℚ)

end A238112

/-! ## A238112.P14774737759838906067

`ceil(A006318(n)/2-A155069(n))`
-/

namespace A238112.P14774737759838906067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006318 n : ℚ) / 2 - (A155069 n : ℚ)⌉

end

end A238112.P14774737759838906067

namespace A238112

/-- `ceil(A006318(n)/2-A155069(n))` -/
def P14774737759838906067.Spec : Prop :=
  ∀ n, P14774737759838906067.a n = A238112 n

end A238112

/-! ## A238112.P8457962514078523366

`Δ[A155069(n)/A011782(n)]*A011782(n)`
-/

namespace A238112.P8457962514078523366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155069 n : ℚ) / (A011782 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A011782 n : ℚ)

end

end A238112.P8457962514078523366

namespace A238112

/-- `Δ[A155069(n)/A011782(n)]*A011782(n)` -/
def P8457962514078523366.Spec : Prop :=
  ∀ n, P8457962514078523366.a n = (A238112 n : ℚ)

end A238112

/-! ## A238112.P18165086386678238090

`A006319(n)-A006318(n)/A036453(n+1)`
-/

namespace A238112.P18165086386678238090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006319 n : ℚ) - (A006318 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A238112.P18165086386678238090

namespace A238112

/-- `A006319(n)-A006318(n)/A036453(n+1)` -/
def P18165086386678238090.Spec : Prop :=
  ∀ n, P18165086386678238090.a n = (A238112 n : ℚ)

end A238112

/-! ## A238112.P293767253196909487

`A155069(n+1)/A020639(A025487(n+1))-A155069(n)`
-/

namespace A238112.P293767253196909487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155069 (n + 1) : ℚ) / (A020639 (A025487 (n + 1)).toNat : ℚ) - (A155069 n : ℚ)

end

end A238112.P293767253196909487

namespace A238112

/-- `A155069(n+1)/A020639(A025487(n+1))-A155069(n)` -/
def P293767253196909487.Spec : Prop :=
  ∀ n, P293767253196909487.a n = (A238112 n : ℚ)

end A238112

/-! ## A238112.P7599107289933492672

`A144944(eq[1, A144944(n+2)])-A155069(n)`
-/

namespace A238112.P7599107289933492672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144944 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A155069 n

end

end A238112.P7599107289933492672

namespace A238112

/-- `A144944(eq[1, A144944(n+2)])-A155069(n)` -/
def P7599107289933492672.Spec : Prop :=
  ∀ n, P7599107289933492672.a n = A238112 n

end A238112

/-! ## A238112.P10534100199297911904

`A144944(lt[A144944(n+2), 2])-A155069(n)`
-/

namespace A238112.P10534100199297911904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144944 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144944 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - A155069 n

end

end A238112.P10534100199297911904

namespace A238112

/-- `A144944(lt[A144944(n+2), 2])-A155069(n)` -/
def P10534100199297911904.Spec : Prop :=
  ∀ n, P10534100199297911904.a n = A238112 n

end A238112

/-!
# A238113: Expansion of (3 - 5*x - 3*sqrt(x^2-6*x+1))/(4*x).

The programs for A238113, the canonical program `A238113.P8705800087291428416` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238113 has offset 0).

The definition of A238113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238113.P8705800087291428416

`floor(3/4*A238111(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A238113

/-- `floor(3/4*A238111(n))` -/
def P8705800087291428416.Spec : Prop :=
  ∀ n, P8705800087291428416.a n = A238113 n

theorem P8705800087291428416.correct : P8705800087291428416.Spec := by
  intro n
  simp only [A238113]

end A238113

/-! ## A238113.P2862920165230018508

`A238111(n)-A001003(n)`
-/

namespace A238113.P2862920165230018508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238111 n - A001003 n

end

end A238113.P2862920165230018508

namespace A238113

/-- `A238111(n)-A001003(n)` -/
def P2862920165230018508.Spec : Prop :=
  ∀ n, P2862920165230018508.a n = A238113 n

end A238113

/-! ## A238113.P12669735461239477285

`A001003(n)*A122553(n)`
-/

namespace A238113.P12669735461239477285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n * A122553 n

end

end A238113.P12669735461239477285

namespace A238113

/-- `A001003(n)*A122553(n)` -/
def P12669735461239477285.Spec : Prop :=
  ∀ n, P12669735461239477285.a n = A238113 n

end A238113

/-! ## A238113.P12445391128174791596

`A238111(n)-abs(A080243(n))`
-/

namespace A238113.P12445391128174791596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238111 n - |A080243 n|

end

end A238113.P12445391128174791596

namespace A238113

/-- `A238111(n)-abs(A080243(n))` -/
def P12445391128174791596.Spec : Prop :=
  ∀ n, P12445391128174791596.a n = A238113 n

end A238113

/-! ## A238113.P3169313938475921273

`(A040002(n)-1)*A001003(n)`
-/

namespace A238113.P3169313938475921273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040002 n - 1) * A001003 n

end

end A238113.P3169313938475921273

namespace A238113

/-- `(A040002(n)-1)*A001003(n)` -/
def P3169313938475921273.Spec : Prop :=
  ∀ n, P3169313938475921273.a n = A238113 n

end A238113

/-! ## A238113.P11899256350565565514

`2*A006318(n)-A001003(n)`
-/

namespace A238113.P11899256350565565514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006318 n - A001003 n

end

end A238113.P11899256350565565514

namespace A238113

/-- `2*A006318(n)-A001003(n)` -/
def P11899256350565565514.Spec : Prop :=
  ∀ n, P11899256350565565514.a n = A238113 n

end A238113

/-! ## A238113.P10656818663320249102

`(3-A000038(n))*A001003(n)`
-/

namespace A238113.P10656818663320249102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000038 n) * A001003 n

end

end A238113.P10656818663320249102

namespace A238113

/-- `(3-A000038(n))*A001003(n)` -/
def P10656818663320249102.Spec : Prop :=
  ∀ n, P10656818663320249102.a n = A238113 n

end A238113

/-! ## A238113.P6363910599366396099

`A007583(n)%4*A001003(n)`
-/

namespace A238113.P6363910599366396099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007583 n) 4 * A001003 n

end

end A238113.P6363910599366396099

namespace A238113

/-- `A007583(n)%4*A001003(n)` -/
def P6363910599366396099.Spec : Prop :=
  ∀ n, P6363910599366396099.a n = A238113 n

end A238113

/-! ## A238113.P11960720382330453362

`ceil((A238111(n)+A035011(n))/2)`
-/

namespace A238113.P11960720382330453362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A238111 n + A035011 n : ℚ) / 2⌉

end

end A238113.P11960720382330453362

namespace A238113

/-- `ceil((A238111(n)+A035011(n))/2)` -/
def P11960720382330453362.Spec : Prop :=
  ∀ n, P11960720382330453362.a n = A238113 n

end A238113

/-! ## A238113.P6954645862100726447

`A238111(n)-ceil(A006318(n)/2)`
-/

namespace A238113.P6954645862100726447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238111 n - ⌈(A006318 n : ℚ) / 2⌉

end

end A238113.P6954645862100726447

namespace A238113

/-- `A238111(n)-ceil(A006318(n)/2)` -/
def P6954645862100726447.Spec : Prop :=
  ∀ n, P6954645862100726447.a n = A238113 n

end A238113

/-! ## A238113.P16223905961941309195

`A238111(n)-ceil(∑[A006319(n)/2])`
-/

namespace A238113.P16223905961941309195
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006319 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238111 n - ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A238113.P16223905961941309195

namespace A238113

/-- `A238111(n)-ceil(∑[A006319(n)/2])` -/
def P16223905961941309195.Spec : Prop :=
  ∀ n, P16223905961941309195.a n = A238113 n

end A238113

/-! ## A238113.P1327878843936562041

`A238111(n)-ceil(A155069(n+1)/2)`
-/

namespace A238113.P1327878843936562041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238111 n - ⌈(A155069 (n + 1) : ℚ) / 2⌉

end

end A238113.P1327878843936562041

namespace A238113

/-- `A238111(n)-ceil(A155069(n+1)/2)` -/
def P1327878843936562041.Spec : Prop :=
  ∀ n, P1327878843936562041.a n = A238113 n

end A238113

/-! ## A238113.P13032220408036747745

`A001003(n)*A014963(A048883(n))`
-/

namespace A238113.P13032220408036747745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n * A014963 (A048883 n).toNat

end

end A238113.P13032220408036747745

namespace A238113

/-- `A001003(n)*A014963(A048883(n))` -/
def P13032220408036747745.Spec : Prop :=
  ∀ n, P13032220408036747745.a n = A238113 n

end A238113

/-! ## A238113.P12067173741078046734

`A014963(A165824(n+1))*A001003(n)`
-/

namespace A238113.P12067173741078046734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A165824 (n + 1)).toNat * A001003 n

end

end A238113.P12067173741078046734

namespace A238113

/-- `A014963(A165824(n+1))*A001003(n)` -/
def P12067173741078046734.Spec : Prop :=
  ∀ n, P12067173741078046734.a n = A238113 n

end A238113

/-! ## A238113.P11422902513081268060

`A001003(n)+A006318(n)-A000007(n)`
-/

namespace A238113.P11422902513081268060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n + (A006318 n - A000007 n)

end

end A238113.P11422902513081268060

namespace A238113

/-- `A001003(n)+A006318(n)-A000007(n)` -/
def P11422902513081268060.Spec : Prop :=
  ∀ n, P11422902513081268060.a n = A238113 n

end A238113

/-! ## A238113.P9356898362325030520

`A006318(n)+A001003(n)%A010683(n)`
-/

namespace A238113.P9356898362325030520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n + Int.tmod (A001003 n) (A010683 n)

end

end A238113.P9356898362325030520

namespace A238113

/-- `A006318(n)+A001003(n)%A010683(n)` -/
def P9356898362325030520.Spec : Prop :=
  ∀ n, P9356898362325030520.a n = A238113 n

end A238113

/-! ## A238113.P24875124502466631

`(A001222(A006530(n+1)²)+1)*A001003(n)`
-/

namespace A238113.P24875124502466631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A006530 (n + 1) ^ 2).toNat + 1) * A001003 n

end

end A238113.P24875124502466631

namespace A238113

/-- `(A001222(A006530(n+1)²)+1)*A001003(n)` -/
def P24875124502466631.Spec : Prop :=
  ∀ n, P24875124502466631.a n = A238113 n

end A238113

/-! ## A238113.P5607942970962580812

`A155069(n+1)-(A086456(n+1)+A001003(n))`
-/

namespace A238113.P5607942970962580812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 (n + 1) - (A086456 (n + 1) + A001003 n)

end

end A238113.P5607942970962580812

namespace A238113

/-- `A155069(n+1)-(A086456(n+1)+A001003(n))` -/
def P5607942970962580812.Spec : Prop :=
  ∀ n, P5607942970962580812.a n = A238113 n

end A238113

/-! ## A238113.P7645720140660097034

`A238111(n)-A006318(n)/A020639(A025487(n+1))`
-/

namespace A238113.P7645720140660097034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238111 n : ℚ) - (A006318 n : ℚ) / (A020639 (A025487 (n + 1)).toNat : ℚ)

end

end A238113.P7645720140660097034

namespace A238113

/-- `A238111(n)-A006318(n)/A020639(A025487(n+1))` -/
def P7645720140660097034.Spec : Prop :=
  ∀ n, P7645720140660097034.a n = (A238113 n : ℚ)

end A238113

/-! ## A238113.P3857719559967786588

`A238111(n)-A155069(n+1)/A020639(A025487(n+1))`
-/

namespace A238113.P3857719559967786588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238111 n : ℚ) - (A155069 (n + 1) : ℚ) / (A020639 (A025487 (n + 1)).toNat : ℚ)

end

end A238113.P3857719559967786588

namespace A238113

/-- `A238111(n)-A155069(n+1)/A020639(A025487(n+1))` -/
def P3857719559967786588.Spec : Prop :=
  ∀ n, P3857719559967786588.a n = (A238113 n : ℚ)

end A238113

/-!
# A238114: Decimal expansion of constant 1 + B3 (or 1 + B_3) related to the Mertens constant.

The programs for A238114, there is no canonical definition to state claims against.
-/

/-! ## A238114.P16672286887219908483

`floor(A083343(n)+acot(n))`
-/

namespace A238114.P16672286887219908483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083343 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A238114.P16672286887219908483

/-! ## A238114.P14344737814292404120

`A083343(n)+A000007(n)`
-/

namespace A238114.P14344737814292404120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083343 (n + 1) + A000007 n

end

end A238114.P14344737814292404120

/-! ## A238114.P4265553530126050870

`A083343(n)+A010051(2*(n+1))`
-/

namespace A238114.P4265553530126050870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083343 (n + 1) + A010051 (2 * (n + 1))

end

end A238114.P4265553530126050870

/-! ## A238114.P10562832742826569581

`A014963(4*n+2)*A083343(n)`
-/

namespace A238114.P10562832742826569581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A083343 (n + 1)

end

end A238114.P10562832742826569581

/-! ## A238114.P9663201320012345787

`A087049(A007947(n+1))+A083343(n)`
-/

namespace A238114.P9663201320012345787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A007947 (n + 1)).toNat + A083343 (n + 1)

end

end A238114.P9663201320012345787

/-! ## A238114.P17802558271590619806

`A087049(A072775(n+1))+A083343(n)`
-/

namespace A238114.P17802558271590619806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A072775 (n + 1)).toNat + A083343 (n + 1)

end

end A238114.P17802558271590619806

/-! ## A238114.P1899927643978096436

`A087049(A265668(n+1))+A083343(n)`
-/

namespace A238114.P1899927643978096436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A265668 (n + 1)).toNat + A083343 (n + 1)

end

end A238114.P1899927643978096436

/-! ## A238114.P5176490930256505968

`A087049(record[A055653(n+1)])+A083343(n)`
-/

namespace A238114.P5176490930256505968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A083343 (n + 1)

end

end A238114.P5176490930256505968

/-! ## A238114.P4694809032670273081

`A087049(A055653(n²+1))+A083343(n)`
-/

namespace A238114.P4694809032670273081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A055653 (n ^ 2 + 1)).toNat + A083343 (n + 1)

end

end A238114.P4694809032670273081

/-! ## A238114.P8166255886709118830

`A083343(n)+A008683(A016754(n))`
-/

namespace A238114.P8166255886709118830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083343 (n + 1) + A008683 (A016754 n).toNat

end

end A238114.P8166255886709118830

/-! ## A238114.P6854076445570362487

`A083343(n)-A008683(2*A016754(n))`
-/

namespace A238114.P6854076445570362487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083343 (n + 1) - A008683 (2 * A016754 n).toNat

end

end A238114.P6854076445570362487

/-! ## A238114.P11099569422136876000

`lcm(A014963(A027689(n)), A083343(n))`
-/

namespace A238114.P11099569422136876000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (A027689 n).toNat) (A083343 (n + 1))

end

end A238114.P11099569422136876000

/-!
# A238115: Number of states arising in matrix method for enumerating Hamiltonian cycles on a 2n X 2n grid.

The programs for A238115, there is no canonical definition to state claims against.
-/

/-! ## A238115.P788067226600502679

`A086618(n+1)-1`
-/

namespace A238115.P788067226600502679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086618 (n + 1) - 1

end

end A238115.P788067226600502679

/-! ## A238115.P15364443413356117958

`∑[abs(Δ[A086618(n)])]`
-/

namespace A238115.P15364443413356117958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086618 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238115.P15364443413356117958

/-! ## A238115.P16379353396372741136

`record[A086618(floor(n/5)-floor((n-1)/6))-1]`
-/

namespace A238115.P16379353396372741136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086618 (⌊(n : ℚ) / 5⌋ - ⌊((n : ℤ) - 1 : ℚ) / 6⌋).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238115.P16379353396372741136

/-! ## A238115.P12340720463216503056

`record[Δ[A086618(A087508(n))]]`
-/

namespace A238115.P12340720463216503056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086618 (A087508 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238115.P12340720463216503056

/-! ## A238115.P4433144807938930658

`record[A086618(A028242(n))]-1`
-/

namespace A238115.P4433144807938930658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086618 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A238115.P4433144807938930658

/-!
# A238117: Number of states with reflective symmetry arising in matrix method for enumerating Hamiltonian cycles on 2n X 2n grid.

The programs for A238117, there is no canonical definition to state claims against.
-/

/-! ## A238117.P3417666512673766509

`(lt[n, val((n+1)^6, 2)]+n)*A011782(n)`
-/

namespace A238117.P3417666512673766509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 6) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + n : ℤ) * A011782 n

end

end A238117.P3417666512673766509

/-! ## A238117.P2066986324009866356

`A182195(A088209(n))`
-/

namespace A238117.P2066986324009866356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182195 (A088209 n).toNat

end

end A238117.P2066986324009866356

/-!
# A238118: Number of continuations with reflective symmetry arising in matrix method for enumerating Hamiltonian cycles on 2n X 2n grid.

The programs for A238118, there is no canonical definition to state claims against.
-/

/-! ## A238118.P13928852175085333585

`A229301(A359206(n+1))+n`
-/

namespace A238118.P13928852175085333585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (A359206 (n + 1)).toNat + (n : ℤ)

end

end A238118.P13928852175085333585

/-!
# A238121: Triangle read by rows: T(n,k) gives the number of ballot sequences of length n having exactly k descents, n>=0, 0<=k<=n.

The programs for A238121, there is no canonical definition to state claims against.
-/

/-! ## A238121.P4903724853827816603

`A238343(n)+A083910(A022105(n))`
-/

namespace A238121.P4903724853827816603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 n + A083910 (A022105 n).toNat

end

end A238121.P4903724853827816603

/-! ## A238121.P5782080295181250250

`A329860(A135021(n))+A238343(n)`
-/

namespace A238121.P5782080295181250250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329860 (A135021 n).toNat + A238343 n

end

end A238121.P5782080295181250250

/-! ## A238121.P17370336420343772037

`A238343(n)+A210714(A257565(n))`
-/

namespace A238121.P17370336420343772037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 n + A210714 (A257565 n).toNat

end

end A238121.P17370336420343772037

/-! ## A238121.P2099722693269982732

`A259479(n)+A210714(A257565(n))`
-/

namespace A238121.P2099722693269982732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259479 n + A210714 (A257565 n).toNat

end

end A238121.P2099722693269982732

/-! ## A238121.P8134160342236980719

`A339166(A152795(n))+A238343(n)`
-/

namespace A238121.P8134160342236980719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339166 (A152795 n).toNat + A238343 n

end

end A238121.P8134160342236980719

/-!
# A238122: Irregular triangle read by rows: T(n,k) gives the number of ballot sequences of length n having k descents, n>=0, 0<=k<=A083920(n-1).

The programs for A238122, there is no canonical definition to state claims against.
-/

/-! ## A238122.P4682463945446619514

`A238121(lt[0, A238121(n)])`
-/

namespace A238122.P4682463945446619514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A238122.P4682463945446619514

/-! ## A238122.P6137851289718414317

`A238121(record[n%(A238121(n)+n)])`
-/

namespace A238122.P6137851289718414317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A238121 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A238122.P6137851289718414317

/-! ## A238122.P5929955238252390243

`filter[A238121(n), A168185(#)]`
-/

namespace A238122.P5929955238252390243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A238122.P5929955238252390243

/-! ## A238122.P3220174505626159072

`A238121(eq[1, A057427(A238121(n))])`
-/

namespace A238122.P3220174505626159072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A238121 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238122.P3220174505626159072

/-!
# A238123: Triangle read by rows: T(n,k) gives the number of ballot sequences of length n having k largest parts, n >= k >= 0.

The programs for A238123, there is no canonical definition to state claims against.
-/

/-! ## A238123.P16486062443607741655

`A127321(A180200(A277031(n))²)`
-/

namespace A238123.P16486062443607741655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A180200 (A277031 n).toNat ^ 2).toNat

end

end A238123.P16486062443607741655

/-! ## A238123.P1668039231087093599

`A127321(A244454(n+1)*A281446(n))`
-/

namespace A238123.P1668039231087093599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A244454 (n + 1) * A281446 n).toNat

end

end A238123.P1668039231087093599

/-! ## A238123.P17655443029542323035

`A127321(lcm(A244454(n+1), A281446(n)))`
-/

namespace A238123.P17655443029542323035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (Int.lcm (A244454 (n + 1)) (A281446 n))

end

end A238123.P17655443029542323035

/-! ## A238123.P13357091493624784354

`A244454(n+1)+A014258(A283666(n+1))`
-/

namespace A238123.P13357091493624784354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (n + 1) + A014258 (A283666 (n + 1)).toNat

end

end A238123.P13357091493624784354

/-! ## A238123.P362486567768142490

`A244454(n+1)+A127321(A283666(n+1)²)`
-/

namespace A238123.P362486567768142490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (n + 1) + A127321 (A283666 (n + 1) ^ 2).toNat

end

end A238123.P362486567768142490

/-!
# A238124: Number of ballot sequences of length n having exactly 1 largest part.

The programs for A238124, there is no canonical definition to state claims against.
-/

/-! ## A238124.P13455186814058739816

`A238123(∑[n]+1)`
-/

namespace A238124.P13455186814058739816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238124.P13455186814058739816

/-! ## A238124.P12766111964634793508

`A178334(n)*A238123(A000124(n))`
-/

namespace A238124.P12766111964634793508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A238123 (A000124 n).toNat

end

end A238124.P12766111964634793508

/-! ## A238124.P2939649768175610476

`and(A057428(n), A238123(A000124(n)))`
-/

namespace A238124.P2939649768175610476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A238123 (A000124 n).toNat)

end

end A238124.P2939649768175610476

/-! ## A238124.P15679305731784417263

`lcm(A004442(n)-n, A238123(A000124(n)))`
-/

namespace A238124.P15679305731784417263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004442 n - (n : ℤ)) (A238123 (A000124 n).toNat)

end

end A238124.P15679305731784417263

/-! ## A238124.P9808983927146009323

`A010051(A061068(n+1))*A238123(A000124(n))`
-/

namespace A238124.P9808983927146009323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A061068 (n + 1)).toNat * A238123 (A000124 n).toNat

end

end A238124.P9808983927146009323

/-! ## A238124.P6405868237258740992

`A238750(∑[n+1]+2)`
-/

namespace A238124.P6405868237258740992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238750 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238124.P6405868237258740992

/-!
# A238125: Triangle read by rows: T(n,k) gives the number of ballot sequences of length n having exactly k flat steps, n>=0, 0<=k<=n.

The programs for A238125, there is no canonical definition to state claims against.
-/

/-! ## A238125.P9453174228620928781

`A051889(A327805(n))%p?[A007318(n)]`
-/

namespace A238125.P9453174228620928781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051889 (A327805 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A238125.P9453174228620928781

/-! ## A238125.P17512702365551381472

`A319951(A327805(n)^A105806(n+1))`
-/

namespace A238125.P17512702365551381472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (SequenceMachineLib.roundAway ((A327805 n : ℚ) ^ (A105806 (n + 1) : ℤ))).toNat

end

end A238125.P17512702365551381472

/-! ## A238125.P3423062254957238709

`A051889(A327805(n)^A119335(3*n))`
-/

namespace A238125.P3423062254957238709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (SequenceMachineLib.roundAway ((A327805 n : ℚ) ^ (A119335 (3 * n) : ℤ))).toNat

end

end A238125.P3423062254957238709

/-! ## A238125.P17715105483906251513

`A319951(A327805(n)^A119335(3*n))`
-/

namespace A238125.P17715105483906251513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (SequenceMachineLib.roundAway ((A327805 n : ℚ) ^ (A119335 (3 * n) : ℤ))).toNat

end

end A238125.P17715105483906251513

/-! ## A238125.P7019437675492672040

`A319951(C(A327805(n), A105806(n+1)))`
-/

namespace A238125.P7019437675492672040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (Nat.choose (A327805 n).toNat (A105806 (n + 1)).toNat)

end

end A238125.P7019437675492672040

/-!
# A238126: Number of standard Young tableaux with n cells and exactly one succession.

The programs for A238126, there is no canonical definition to state claims against.
-/

/-! ## A238126.P17804870056202280091

`A238125(A028310(∑[n])+1)`
-/

namespace A238126.P17804870056202280091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A238126.P17804870056202280091

/-! ## A238126.P3894892204915961162

`A238125(A179865(n+1)+1)`
-/

namespace A238126.P3894892204915961162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A179865 (n + 1) + 1).toNat

end

end A238126.P3894892204915961162

/-! ## A238126.P9115245397544113145

`char[A007318(n)]*A238125(∑[n]+1)`
-/

namespace A238126.P9115245397544113145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A238125 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A238126.P9115245397544113145

/-! ## A238126.P15039861024313807855

`A000040(n+1)%2*A238125(∑[n]+1)`
-/

namespace A238126.P15039861024313807855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A238125 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238126.P15039861024313807855

/-! ## A238126.P16374081357474698036

`A238125(∑[n]+1)%((n+1)*A000108(n))`
-/

namespace A238126.P16374081357474698036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238125 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) ((n + 1 : ℤ) * A000108 n)

end

end A238126.P16374081357474698036

/-!
# A238127: Number of standard Young tableaux with n cells and exactly two successions.

The programs for A238127, there is no canonical definition to state claims against.
-/

/-! ## A238127.P10763443716586964946

`A238125(A000217(n)+2-char[1])`
-/

namespace A238127.P10763443716586964946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A000217 n + (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))).toNat

end

end A238127.P10763443716586964946

/-! ## A238127.P2492543856978432858

`A238125(A133263(n))-C(n, n²)`
-/

namespace A238127.P2492543856978432858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A133263 n).toNat - (Nat.choose n (n ^ 2) : ℤ)

end

end A238127.P2492543856978432858

/-! ## A238127.P2922754381474841239

`A238125(A060576(n)+A000124(n))`
-/

namespace A238127.P2922754381474841239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A060576 n + A000124 n).toNat

end

end A238127.P2922754381474841239

/-! ## A238127.P17854373686231307596

`A238125(A133263(n)+A130706(n))`
-/

namespace A238127.P17854373686231307596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A133263 n + A130706 n).toNat

end

end A238127.P17854373686231307596

/-! ## A238127.P9050160600987835637

`A238125(A133263(n))%A026641(n)`
-/

namespace A238127.P9050160600987835637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238125 (A133263 n).toNat) (A026641 n)

end

end A238127.P9050160600987835637

/-!
# A238128: Triangle read by rows: T(n,k) gives the number of ballot sequences of length n having largest descent k, n>=0, 0<=k<=n.

The programs for A238128, there is no canonical definition to state claims against.
-/

/-! ## A238128.P6044592118648021407

`A238343(n)+A025442(A102276(n))`
-/

namespace A238128.P6044592118648021407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 n + A025442 (A102276 n).toNat

end

end A238128.P6044592118648021407

/-! ## A238128.P11108833944013839916

`A238343(n)+A083893(A098576(n))`
-/

namespace A238128.P11108833944013839916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 n + A083893 (A098576 n).toNat

end

end A238128.P11108833944013839916

/-! ## A238128.P7848852213200446343

`A259479(n)+A083893(A098576(n))`
-/

namespace A238128.P7848852213200446343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259479 n + A083893 (A098576 n).toNat

end

end A238128.P7848852213200446343

/-! ## A238128.P9691452834709282607

`A238343(n)+A184964(A128899(n))`
-/

namespace A238128.P9691452834709282607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 n + A184964 (A128899 n).toNat

end

end A238128.P9691452834709282607

/-! ## A238128.P17753308527222097187

`A259479(n)+A184964(A128899(n))`
-/

namespace A238128.P17753308527222097187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259479 n + A184964 (A128899 n).toNat

end

end A238128.P17753308527222097187

/-!
# A238129: Triangle read by rows: T(n,k) gives the number of ballot sequences of length n having largest ascent k, n>=0, 0<=k<=n.

The programs for A238129, there is no canonical definition to state claims against.
-/

/-! ## A238129.P7075971347167028625

`A189391(A045847(n)^A058710(n))`
-/

namespace A238129.P7075971347167028625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 (SequenceMachineLib.roundAway ((A045847 n : ℚ) ^ (A058710 n : ℤ))).toNat

end

end A238129.P7075971347167028625

/-! ## A238129.P4735516444563504981

`A189391(A052553(n)^A058710(n))`
-/

namespace A238129.P4735516444563504981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 (SequenceMachineLib.roundAway ((A052553 n : ℚ) ^ (A058710 n : ℤ))).toNat

end

end A238129.P4735516444563504981

/-! ## A238129.P2762296480048836797

`A189391(A045847(n)^A112475(n))`
-/

namespace A238129.P2762296480048836797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 (SequenceMachineLib.roundAway ((A045847 n : ℚ) ^ (A112475 n : ℤ))).toNat

end

end A238129.P2762296480048836797

/-! ## A238129.P7687196188370695825

`A189391(A052553(n)^A112475(n))`
-/

namespace A238129.P7687196188370695825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 (SequenceMachineLib.roundAway ((A052553 n : ℚ) ^ (A112475 n : ℤ))).toNat

end

end A238129.P7687196188370695825

/-! ## A238129.P8427597004010035356

`A307297(A301344(n+1)^3)`
-/

namespace A238129.P8427597004010035356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307297 (A301344 (n + 1) ^ 3).toNat

end

end A238129.P8427597004010035356

/-!
# A238130: Triangle read by rows: T(n,k) is the number of compositions into nonzero parts with k parts directly followed by a different part, n>=0, 0<=k<=n.

The programs for A238130, there is no canonical definition to state claims against.
-/

/-! ## A238130.P5600469244110009690

`A333755(Δ[A002262(n)]+n)`
-/

namespace A238130.P5600469244110009690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A238130.P5600469244110009690

/-! ## A238130.P18397238876711371225

`A333755(1-A127648(n)+n)`
-/

namespace A238130.P18397238876711371225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (1 - A127648 n + (n : ℤ)).toNat

end

end A238130.P18397238876711371225

/-! ## A238130.P17194512494884214221

`A333755(1-(A127648(n)-n))`
-/

namespace A238130.P17194512494884214221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (1 - (A127648 n - (n : ℤ))).toNat

end

end A238130.P17194512494884214221

/-! ## A238130.P4662883763872233530

`A333755(Δ[A002260(n+1)]+n)`
-/

namespace A238130.P4662883763872233530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A238130.P4662883763872233530

/-! ## A238130.P4316765513417267119

`A333755(A057944(n)+A002262(n+1))`
-/

namespace A238130.P4316765513417267119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (A057944 n + A002262 (n + 1)).toNat

end

end A238130.P4316765513417267119

/-! ## A238130.P15061133798084417208

`A333755(ceil(n/sin(8)))`
-/

namespace A238130.P15061133798084417208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 ⌈(n : ℝ) / Real.sin (8 : ℝ)⌉.toNat

end

end A238130.P15061133798084417208

/-! ## A238130.P2577974879203412205

`A333755(ceil(acot(n)+n))`
-/

namespace A238130.P2577974879203412205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A238130.P2577974879203412205

/-! ## A238130.P16784030414860665358

`A333755(ceil(sqrt(∑[2*n])))`
-/

namespace A238130.P16784030414860665358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat

end

end A238130.P16784030414860665358

/-! ## A238130.P15422277293106379216

`A333755(n+1)+C(2, n+2)`
-/

namespace A238130.P15422277293106379216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A238130.P15422277293106379216

/-! ## A238130.P17021737782682769678

`A333755(n+1)+A000007(n)`
-/

namespace A238130.P17021737782682769678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (n + 1) + A000007 n

end

end A238130.P17021737782682769678

/-!
# A238131: Number of parts in all partitions of n into odd number of distinct parts.

The programs for A238131, there is no canonical definition to state claims against.
-/

/-! ## A238131.P17809800056886505293

`A238133(n)+A238132(n)`
-/

namespace A238131.P17809800056886505293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238133 n + A238132 n

end

end A238131.P17809800056886505293

/-! ## A238131.P11529763861817908694

`A067588(n)-(A238132(n)+A090867(n))`
-/

namespace A238131.P11529763861817908694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n - (A238132 n + A090867 n)

end

end A238131.P11529763861817908694

/-! ## A238131.P8228126657595035491

`A116676(n)+A116680(n)-A238132(n)`
-/

namespace A238131.P8228126657595035491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116676 n + (A116680 n - A238132 n)

end

end A238131.P8228126657595035491

/-! ## A238131.P15417977210861121396

`A210485(A000124(n))-A238132(n)`
-/

namespace A238131.P15417977210861121396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A000124 n).toNat - A238132 n

end

end A238131.P15417977210861121396

/-! ## A238131.P4811613887210250844

`A327622(A034856(n+1))-A238132(n)`
-/

namespace A238131.P4811613887210250844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (A034856 (n + 1)).toNat - A238132 n

end

end A238131.P4811613887210250844

/-! ## A238131.P15852010480901351792

`A238133(n)+A278296(n)-A278297(n)`
-/

namespace A238131.P15852010480901351792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238133 n + (A278296 n - A278297 n)

end

end A238131.P15852010480901351792

/-!
# A238132: Number of parts in all partitions of n into even number of distinct parts.

The programs for A238132, there is no canonical definition to state claims against.
-/

/-! ## A238132.P16282659559797800055

`A238131(n)-A238133(n)`
-/

namespace A238132.P16282659559797800055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238131 n - A238133 n

end

end A238132.P16282659559797800055

/-! ## A238132.P13187514202229554900

`A067588(n)-(A238131(n)+A090867(n))`
-/

namespace A238132.P13187514202229554900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n - (A238131 n + A090867 n)

end

end A238132.P13187514202229554900

/-! ## A238132.P7394916791990500641

`A116676(n)+A116680(n)-A238131(n)`
-/

namespace A238132.P7394916791990500641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116676 n + (A116680 n - A238131 n)

end

end A238132.P7394916791990500641

/-! ## A238132.P39605334596978820

`A015723(A028310(n))-A238131(A028310(n))`
-/

namespace A238132.P39605334596978820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015723 (A028310 n).toNat - A238131 (A028310 n).toNat

end

end A238132.P39605334596978820

/-! ## A238132.P11771357777775799676

`A210485(∑[n]+1)-A238131(n)`
-/

namespace A238132.P11771357777775799676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A238131 n

end

end A238132.P11771357777775799676

/-! ## A238132.P13435224001329508771

`A327622(A034856(n+1))-A238131(n)`
-/

namespace A238132.P13435224001329508771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (A034856 (n + 1)).toNat - A238131 n

end

end A238132.P13435224001329508771

/-! ## A238132.P17346719468171819853

`A278296(n)-A278297(n)`
-/

namespace A238132.P17346719468171819853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278296 n - A278297 n

end

end A238132.P17346719468171819853

/-!
# A238133: Difference between A238131(n) and A238132(n).

The programs for A238133, there is no canonical definition to state claims against.
-/

/-! ## A238133.P13448099595116931247

`A238131(n)-(A067588(n)-(A238131(n)+A090867(n)))`
-/

namespace A238133.P13448099595116931247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238131 n - (A067588 n - (A238131 n + A090867 n))

end

end A238133.P13448099595116931247

/-! ## A238133.P5768007239391614593

`A238131(n)-(A116676(n)+A116680(n)-A238131(n))`
-/

namespace A238133.P5768007239391614593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238131 n - (A116676 n + (A116680 n - A238131 n))

end

end A238133.P5768007239391614593

/-! ## A238133.P2595311207464824762

`A238131(n)-A238132(n)`
-/

namespace A238133.P2595311207464824762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238131 n - A238132 n

end

end A238133.P2595311207464824762

/-! ## A238133.P15106562873330820325

`A067588(n)-(A238132(n)+A090867(n))-A238132(n)`
-/

namespace A238133.P15106562873330820325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n - (A238132 n + A090867 n) - A238132 n

end

end A238133.P15106562873330820325

/-! ## A238133.P17595734818377964338

`A116676(n)+A116680(n)-A238132(n)-A238132(n)`
-/

namespace A238133.P17595734818377964338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116676 n + (A116680 n - A238132 n) - A238132 n

end

end A238133.P17595734818377964338

/-! ## A238133.P9527355001151951

`2*A238131(n)-A210485(A000124(n))`
-/

namespace A238133.P9527355001151951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238131 n - A210485 (A000124 n).toNat

end

end A238133.P9527355001151951

/-! ## A238133.P14447101243931293009

`A210485(A000124(n))-2*A238132(n)`
-/

namespace A238133.P14447101243931293009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A000124 n).toNat - 2 * A238132 n

end

end A238133.P14447101243931293009

/-! ## A238133.P1022313648523618822

`A238131(n)-(A210485(∑[n]+1)-A238131(n))`
-/

namespace A238133.P1022313648523618822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238131 n - (A210485 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A238131 n)

end

end A238133.P1022313648523618822

/-! ## A238133.P1193334971637202338

`2*A238131(n)-A327622(A034856(n+1))`
-/

namespace A238133.P1193334971637202338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238131 n - A327622 (A034856 (n + 1)).toNat

end

end A238133.P1193334971637202338

/-! ## A238133.P9462147573085453137

`A327622(A034856(n+1))-2*A238132(n)`
-/

namespace A238133.P9462147573085453137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (A034856 (n + 1)).toNat - 2 * A238132 n

end

end A238133.P9462147573085453137

/-!
# A238134: Number of primes p < n with q = floor((n-p)/4) and prime(q) - q + 1 both prime.

The programs for A238134, there is no canonical definition to state claims against.
-/

/-! ## A238134.P9803401779195834099

`A238701(n+1)%A119840(n+1)`
-/

namespace A238134.P9803401779195834099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238701 (n + 1)) (A119840 (n + 1))

end

end A238134.P9803401779195834099

/-! ## A238134.P14692750573643982949

`A238701(A000142(n+1)/A000142(n))`
-/

namespace A238134.P14692750573643982949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238701 (SequenceMachineLib.roundAway ((A000142 (n + 1) : ℚ) / (A000142 n : ℚ))).toNat

end

end A238134.P14692750573643982949

/-! ## A238134.P3528743937441758626

`A238701(n+1)%A000040(A008000(n))`
-/

namespace A238134.P3528743937441758626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238701 (n + 1)) (A000040 (A008000 n).toNat)

end

end A238134.P3528743937441758626

/-! ## A238134.P12576670200063321976

`lcm(A087960(A238121(n)), A238701(n+1))`
-/

namespace A238134.P12576670200063321976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 (A238121 n).toNat) (A238701 (n + 1))

end

end A238134.P12576670200063321976

/-! ## A238134.P11234295261916757631

`A238701(n+1)+A000007(A036048(n+1))`
-/

namespace A238134.P11234295261916757631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238701 (n + 1) + A000007 (A036048 (n + 1)).toNat

end

end A238134.P11234295261916757631

/-! ## A238134.P15229242856949545343

`A238701(n+1)+A000038(A175965(n+1))`
-/

namespace A238134.P15229242856949545343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238701 (n + 1) + A000038 (A175965 (n + 1)).toNat

end

end A238134.P15229242856949545343

/-! ## A238134.P5215267808174100396

`A238701(n+1)+A010054(A001105(n+2))`
-/

namespace A238134.P5215267808174100396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238701 (n + 1) + A010054 (A001105 (n + 2)).toNat

end

end A238134.P5215267808174100396

/-! ## A238134.P10332405919738475977

`A059897(A001844(n+4))*A238701(n+1)`
-/

namespace A238134.P10332405919738475977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (A001844 (n + 4)).toNat * A238701 (n + 1)

end

end A238134.P10332405919738475977

/-! ## A238134.P14118315476129244096

`A238701(n+1)%A261046(n)`
-/

namespace A238134.P14118315476129244096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238701 (n + 1)) (A261046 n)

end

end A238134.P14118315476129244096

/-! ## A238134.P1279446992056768927

`and(A002223(n+1), A238701(n+1))`
-/

namespace A238134.P1279446992056768927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A238701 (n + 1))

end

end A238134.P1279446992056768927

/-!
# A238136: Primes p such that p^4-p^3+1 and p^4-p^3-1 are also primes.

The programs for A238136, there is no canonical definition to state claims against.
-/

/-! ## A238136.P15892216393319053924

`∩[A237995(n+1), A238083(n+1)]`
-/

namespace A238136.P15892216393319053924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238136.P15892216393319053924

/-!
# A238137: Starting with a(1) = 3, a(2) = 5, a(n+1) is the smallest prime number greater than the previous term a(n) such that there exists k satisfying 1<=k

The programs for A238137, there is no canonical definition to state claims against.
-/

/-! ## A238137.P17799325440994699489

`p?[A141109(n+1)-7]`
-/

namespace A238137.P17799325440994699489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141109 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238137.P17799325440994699489

/-! ## A238137.P12110996480832177441

`p?[A141340(n+1)-7]`
-/

namespace A238137.P12110996480832177441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141340 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238137.P12110996480832177441

/-! ## A238137.P2567486298307213060

`p?[2*A002271(n+1)-7]`
-/

namespace A238137.P2567486298307213060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002271 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238137.P2567486298307213060

/-! ## A238137.P8940922445057593097

`A230775(9*A283173(n))`
-/

namespace A238137.P8940922445057593097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (9 * A283173 n).toNat

end

end A238137.P8940922445057593097

/-! ## A238137.P13788551793513533047

`A125767(a(floor((n-1)/2))+a(n-1))` with `a(0)=3`
-/

namespace A238137.P13788551793513533047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A125767 (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a (n - 1)).toNat

end

end A238137.P13788551793513533047

/-!
# A238139: a(n) is the smallest prime divisor (not yet in the sequence) of all composite numbers of the form m^2+1 between the primes A002496(n) and A002496(n+1), or 0 if there is no such prime.

The programs for A238139, there is no canonical definition to state claims against.
-/

/-! ## A238139.P6628249600925788046

`∑{p}[A036249(∑[∏{e}[n, #+1]]), #]`
-/

namespace A238139.P6628249600925788046
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036249 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A238139.P6628249600925788046

/-! ## A238139.P10837922726446924025

`A057892(∑[A174284(2*n)])`
-/

namespace A238139.P10837922726446924025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174284 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057892 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238139.P10837922726446924025

/-!
# A238140: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238140, there is no canonical definition to state claims against.
-/

/-! ## A238140.P16731534790121132383

`A238145(∑[n]+1)`
-/

namespace A238140.P16731534790121132383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238145 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238140.P16731534790121132383

/-! ## A238140.P15843327182991859570

`record[root(A238145(n+1), A076110(n+1))]`
-/

namespace A238140.P15843327182991859570
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238145 (n + 1) : ℝ) ^ (1 / (A076110 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238140.P15843327182991859570

/-! ## A238140.P12398477671532276388

`record[root(A238145(n+1), A076112(n+1))]`
-/

namespace A238140.P12398477671532276388
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238145 (n + 1) : ℝ) ^ (1 / (A076112 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238140.P12398477671532276388

/-! ## A238140.P16020370501707317901

`A238145(A000124(n))+A025443(n)`
-/

namespace A238140.P16020370501707317901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238145 (A000124 n).toNat + A025443 n

end

end A238140.P16020370501707317901

/-! ## A238140.P15043780506102817208

`lcm(A000034(n), A238145(A000124(n)))`
-/

namespace A238140.P15043780506102817208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A238145 (A000124 n).toNat)

end

end A238140.P15043780506102817208

/-!
# A238141: Number of (n+1) X (2+1) 0..3 arrays with the maximum plus the lower median minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238141, there is no canonical definition to state claims against.
-/

/-! ## A238141.P11742894865024660596

`A238145(∑[n+1]+2)`
-/

namespace A238141.P11742894865024660596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238145 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238141.P11742894865024660596

/-! ## A238141.P15599501089497639771

`record[A023531(n)*A238145(n+3)]`
-/

namespace A238141.P15599501089497639771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A238145 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238141.P15599501089497639771

/-! ## A238141.P13591266232527090267

`record[root(A238145(n+2), A076110(n+1))]`
-/

namespace A238141.P13591266232527090267
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238145 (n + 2) : ℝ) ^ (1 / (A076110 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238141.P13591266232527090267

/-! ## A238141.P8614804911182455785

`record[root(A238145(n+2), A076112(n+1))]`
-/

namespace A238141.P8614804911182455785
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238145 (n + 2) : ℝ) ^ (1 / (A076112 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238141.P8614804911182455785

/-! ## A238141.P219390227324810213

`record[gcd(A238145(n+2), A238158(n+1))]`
-/

namespace A238141.P219390227324810213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238145 (n + 2)) (A238158 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238141.P219390227324810213

/-!
# A238142: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238142, there is no canonical definition to state claims against.
-/

/-! ## A238142.P15315109805177661528

`A238145(∑[n+2]+4)`
-/

namespace A238142.P15315109805177661528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238145 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238142.P15315109805177661528

/-! ## A238142.P2238149596265440996

`A238145(A167614(n+1))*A284562(n)`
-/

namespace A238142.P2238149596265440996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238145 (A167614 (n + 1)).toNat * A284562 n

end

end A238142.P2238149596265440996

/-! ## A238142.P3199912184719908307

`lcm(A020985(n), A238145(A167614(n+1)))`
-/

namespace A238142.P3199912184719908307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A238145 (A167614 (n + 1)).toNat)

end

end A238142.P3199912184719908307

/-! ## A238142.P13524456079234790607

`or(A000007(n), A238145(A167614(n+1)))`
-/

namespace A238142.P13524456079234790607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A238145 (A167614 (n + 1)).toNat)

end

end A238142.P13524456079234790607

/-! ## A238142.P2047558179073605948

`A283666(n+1)+A238145(A167614(n+1))`
-/

namespace A238142.P2047558179073605948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (n + 1) + A238145 (A167614 (n + 1)).toNat

end

end A238142.P2047558179073605948

/-!
# A238143: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238143, there is no canonical definition to state claims against.
-/

/-! ## A238143.P9877212399613414969

`A238145(A374004(n+1))`
-/

namespace A238143.P9877212399613414969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238145 (A374004 (n + 1)).toNat

end

end A238143.P9877212399613414969

/-! ## A238143.P2990501210477901862

`A238145(A052905(n)+9)`
-/

namespace A238143.P2990501210477901862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238145 (A052905 n + 9).toNat

end

end A238143.P2990501210477901862

/-! ## A238143.P719123514932361223

`A238145(A055999(n)+10)`
-/

namespace A238143.P719123514932361223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238145 (A055999 n + 10).toNat

end

end A238143.P719123514932361223

/-! ## A238143.P12463492346807181831

`A238145(A167614(n+2)+1)`
-/

namespace A238143.P12463492346807181831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238145 (A167614 (n + 2) + 1).toNat

end

end A238143.P12463492346807181831

/-! ## A238143.P18062072058937665330

`A238145(A141214(n+1))`
-/

namespace A238143.P18062072058937665330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238145 (A141214 (n + 1)).toNat

end

end A238143.P18062072058937665330

/-!
# A238144: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238144, there is no canonical definition to state claims against.
-/

/-! ## A238144.P14522756283103534491

`A238145(A374005(n+1))`
-/

namespace A238144.P14522756283103534491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238145 (A374005 (n + 1)).toNat

end

end A238144.P14522756283103534491

/-! ## A238144.P7001313020860526946

`A238145(eq[6, A131818(n+1)])`
-/

namespace A238144.P7001313020860526946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238144.P7001313020860526946

/-! ## A238144.P15488728614111309120

`A238145(eq[4, A193592(n)])`
-/

namespace A238144.P15488728614111309120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238144.P15488728614111309120

/-! ## A238144.P12489716449697526048

`A238145(Δ[A023545(n+1)])`
-/

namespace A238144.P12489716449697526048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238145 (f1 (n + 1) - f1 n).toNat

end

end A238144.P12489716449697526048

/-!
# A238146: Triangle read by rows: T(n,k) is coefficient of x^(n-k) in consecutive prime rooted polynomial of degree n, P(x) = Product_{k=1..n} (x-p(k)) = 1*x^n + T(n,1)*x^(n-1)+ ... + T(n,k-1)*x + T(n,k), for 1 <= k <= n.

The programs for A238146, there is no canonical definition to state claims against.
-/

/-! ## A238146.P874908302306976240

`A070918(A099375(n)+n)`
-/

namespace A238146.P874908302306976240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070918 (A099375 n + (n : ℤ)).toNat

end

end A238146.P874908302306976240

/-! ## A238146.P13228327871006895979

`A070918(A038722(n+1)+A003056(n))`
-/

namespace A238146.P13228327871006895979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070918 (A038722 (n + 1) + A003056 n).toNat

end

end A238146.P13228327871006895979

/-! ## A238146.P8424992999554732664

`A070918(A061579(n)+A002024(n+1))`
-/

namespace A238146.P8424992999554732664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070918 (A061579 n + A002024 (n + 1)).toNat

end

end A238146.P8424992999554732664

/-! ## A238146.P13114299513763944583

`A070918(A127739(n+1)+A025581(n))`
-/

namespace A238146.P13114299513763944583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070918 (A127739 (n + 1) + A025581 n).toNat

end

end A238146.P13114299513763944583

/-! ## A238146.P15538058220634474226

`A070918(A093995(n+1)-A083920(n))`
-/

namespace A238146.P15538058220634474226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070918 (A093995 (n + 1) - A083920 n).toNat

end

end A238146.P15538058220634474226

/-! ## A238146.P3262310359024344401

`A070918(A380649(n+1))`
-/

namespace A238146.P3262310359024344401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070918 (A380649 (n + 1)).toNat

end

end A238146.P3262310359024344401

/-!
# A238147: The number of P-positions in the game of Nim with up to five piles, allowing for piles of zero, such that the total number of objects in all piles doesn't exceed 2n.

The programs for A238147, there is no canonical definition to state claims against.
-/

/-! ## A238147.P14803330547553903909

`∑[A238759(n)]`
-/

namespace A238147.P14803330547553903909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238147.P14803330547553903909

/-! ## A238147.P18416071487822661767

`A238759(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A238147.P18416071487822661767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A238759 n + a (A023443 n).toNat

end

end A238147.P18416071487822661767

/-! ## A238147.P5494243013574873822

`a(n-1)+A057427(n)*A238759(n)` with `a(0)=1`
-/

namespace A238147.P5494243013574873822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A238759 n

end

end A238147.P5494243013574873822

/-! ## A238147.P9487005361307930642

`a(n-1)+A238759(n)%A085537(A008578(n+2))` with `a(0)=1`
-/

namespace A238147.P9487005361307930642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A238759 n) (A085537 (A008578 (n + 2)).toNat)

end

end A238147.P9487005361307930642

/-!
# A238148: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238148, there is no canonical definition to state claims against.
-/

/-! ## A238148.P6208018883803319451

`A238155(∑[n]+1)`
-/

namespace A238148.P6208018883803319451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238148.P6208018883803319451

/-! ## A238148.P1938046850582983126

`lcm(2, A238155(A000124(n)))`
-/

namespace A238148.P1938046850582983126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238155 (A000124 n).toNat)

end

end A238148.P1938046850582983126

/-! ## A238148.P10964012711018689090

`record[root(A238155(n+1), A059268(n))]`
-/

namespace A238148.P10964012711018689090
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238155 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238148.P10964012711018689090

/-! ## A238148.P9368639571982317465

`record[gcd(A002262(n), A238155(n+1))]`
-/

namespace A238148.P9368639571982317465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A238155 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238148.P9368639571982317465

/-! ## A238148.P18079339156291799350

`record[(1-A193471(n+1))*A238155(n+1)]`
-/

namespace A238148.P18079339156291799350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A193471 (n + 1)) * A238155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238148.P18079339156291799350

/-!
# A238149: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238149, there is no canonical definition to state claims against.
-/

/-! ## A238149.P14019172006068566624

`A238155(∑[n+1]+2)`
-/

namespace A238149.P14019172006068566624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238149.P14019172006068566624

/-! ## A238149.P5086480758913381425

`record[root(A238155(n+2), A059268(n))]`
-/

namespace A238149.P5086480758913381425
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238155 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238149.P5086480758913381425

/-! ## A238149.P11074351260562850788

`record[gcd(A002262(n), A238155(n+2))]`
-/

namespace A238149.P11074351260562850788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A238155 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238149.P11074351260562850788

/-! ## A238149.P783106005508797328

`record[A238155(A198455(n+1))]`
-/

namespace A238149.P783106005508797328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238149.P783106005508797328

/-! ## A238149.P9861867504644876991

`record[A238155(Δ[A003453(n+5)])]`
-/

namespace A238149.P9861867504644876991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238149.P9861867504644876991

/-!
# A238150: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238150, there is no canonical definition to state claims against.
-/

/-! ## A238150.P3699994078882820151

`A238155(∑[n+2]+4)`
-/

namespace A238150.P3699994078882820151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238150.P3699994078882820151

/-! ## A238150.P10216170781914678533

`lcm(2, A238155(A167614(n+1)))`
-/

namespace A238150.P10216170781914678533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238155 (A167614 (n + 1)).toNat)

end

end A238150.P10216170781914678533

/-! ## A238150.P7971928778566366697

`A238155(A167614(n+1))+A184955(n)`
-/

namespace A238150.P7971928778566366697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A167614 (n + 1)).toNat + A184955 n

end

end A238150.P7971928778566366697

/-! ## A238150.P8055392895400949989

`A238155(A167614(n+1))+A185255(n)`
-/

namespace A238150.P8055392895400949989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A167614 (n + 1)).toNat + A185255 n

end

end A238150.P8055392895400949989

/-! ## A238150.P7979136890841027889

`A238155(A167614(n+1))*A284562(n)`
-/

namespace A238150.P7979136890841027889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A167614 (n + 1)).toNat * A284562 n

end

end A238150.P7979136890841027889

/-!
# A238151: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238151, there is no canonical definition to state claims against.
-/

/-! ## A238151.P1163106246875982222

`A238155(A374004(n+1))`
-/

namespace A238151.P1163106246875982222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A374004 (n + 1)).toNat

end

end A238151.P1163106246875982222

/-! ## A238151.P4814659824972149600

`A238155(A052905(n)+9)`
-/

namespace A238151.P4814659824972149600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A052905 n + 9).toNat

end

end A238151.P4814659824972149600

/-! ## A238151.P17558692107945794424

`A238155(A055999(n)+10)`
-/

namespace A238151.P17558692107945794424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A055999 n + 10).toNat

end

end A238151.P17558692107945794424

/-! ## A238151.P977794119055062708

`A238155(A167614(n+2)+1)`
-/

namespace A238151.P977794119055062708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A167614 (n + 2) + 1).toNat

end

end A238151.P977794119055062708

/-! ## A238151.P10527763007212094444

`A238155(A000124(n+4)-(n+1))`
-/

namespace A238151.P10527763007212094444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A000124 (n + 4) - (n + 1 : ℤ)).toNat

end

end A238151.P10527763007212094444

/-!
# A238152: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238152, there is no canonical definition to state claims against.
-/

/-! ## A238152.P18006524100948446069

`A238155(A374005(n+1))`
-/

namespace A238152.P18006524100948446069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A374005 (n + 1)).toNat

end

end A238152.P18006524100948446069

/-! ## A238152.P16499648750829759579

`A238155(A155212(n)+13)`
-/

namespace A238152.P16499648750829759579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A155212 n + 13).toNat

end

end A238152.P16499648750829759579

/-! ## A238152.P2720283463494976359

`A238155(A133263(n+4)+3)`
-/

namespace A238152.P2720283463494976359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A133263 (n + 4) + 3).toNat

end

end A238152.P2720283463494976359

/-! ## A238152.P2330622510701962636

`A238155(A000124(n+4)+4)`
-/

namespace A238152.P2330622510701962636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A000124 (n + 4) + 4).toNat

end

end A238152.P2330622510701962636

/-! ## A238152.P13218623482404125840

`A238155(Δ[A023545(n+1)])`
-/

namespace A238152.P13218623482404125840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (f1 (n + 1) - f1 n).toNat

end

end A238152.P13218623482404125840

/-!
# A238153: Number of (n+1)X(6+1) 0..3 arrays with the maximum plus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238153, there is no canonical definition to state claims against.
-/

/-! ## A238153.P13164247669731302817

`A238155(A374007(n+1))`
-/

namespace A238153.P13164247669731302817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A374007 (n + 1)).toNat

end

end A238153.P13164247669731302817

/-! ## A238153.P16076696213016364299

`A238155(eq[7, A131818(n+1)])`
-/

namespace A238153.P16076696213016364299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238153.P16076696213016364299

/-! ## A238153.P6567603644867162949

`A238155(A045918(n)+A000124(n+4))`
-/

namespace A238153.P6567603644867162949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A045918 n + A000124 (n + 4)).toNat

end

end A238153.P6567603644867162949

/-! ## A238153.P1758276818949763300

`A238155(A047842(n)+A000124(n+4))`
-/

namespace A238153.P1758276818949763300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A047842 n + A000124 (n + 4)).toNat

end

end A238153.P1758276818949763300

/-! ## A238153.P8528716619473413350

`A238155(A052905(n+3))`
-/

namespace A238153.P8528716619473413350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238155 (A052905 (n + 3)).toNat

end

end A238153.P8528716619473413350

/-!
# A238156: Triangle T(n,k), 0<=k<=n, read by rows, given by (0, 1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A238156, the canonical program `A238156.P6367092869052855218` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238156 has offset 0).

The definition of A238156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238156.P6367092869052855218

`Δ[∑[A054142(n)]-A172431(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A238156

/-- `Δ[∑[A054142(n)]-A172431(n+1)]` -/
def P6367092869052855218.Spec : Prop :=
  ∀ n, P6367092869052855218.a n = A238156 n

theorem P6367092869052855218.correct : P6367092869052855218.Spec := by
  intro n
  simp only [A238156]

end A238156

/-! ## A238156.P7534793992005260881

`A054142(A326178(n))-Δ[A172431(n+1)]`
-/

namespace A238156.P7534793992005260881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A326178 n).toNat - (f1 (n + 1) - f1 n)

end

end A238156.P7534793992005260881

namespace A238156

/-- `A054142(A326178(n))-Δ[A172431(n+1)]` -/
def P7534793992005260881.Spec : Prop :=
  ∀ n, P7534793992005260881.a n = A238156 n

end A238156

/-! ## A238156.P9064988984783429594

`A054142(n+1)+A172431(n+1)-A172431(n+2)`
-/

namespace A238156.P9064988984783429594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (n + 1) + (A172431 (n + 1) - A172431 (n + 2))

end

end A238156.P9064988984783429594

namespace A238156

/-- `A054142(n+1)+A172431(n+1)-A172431(n+2)` -/
def P9064988984783429594.Spec : Prop :=
  ∀ n, P9064988984783429594.a n = A238156 n

end A238156

/-! ## A238156.P8107566963956460392

`A172431(n+1)+A172431(n+2)-A082985(n+1)`
-/

namespace A238156.P8107566963956460392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 (n + 1) + (A172431 (n + 2) - A082985 (n + 1))

end

end A238156.P8107566963956460392

namespace A238156

/-- `A172431(n+1)+A172431(n+2)-A082985(n+1)` -/
def P8107566963956460392.Spec : Prop :=
  ∀ n, P8107566963956460392.a n = A238156 n

end A238156

/-! ## A238156.P7614054452769331352

`A128908(A038722(n+1))+A121314(n)`
-/

namespace A238156.P7614054452769331352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (A038722 (n + 1)).toNat + A121314 n

end

end A238156.P7614054452769331352

namespace A238156

/-- `A128908(A038722(n+1))+A121314(n)` -/
def P7614054452769331352.Spec : Prop :=
  ∀ n, P7614054452769331352.a n = A238156 n

end A238156

/-! ## A238156.P7794258663957761997

`A165253(A061579(n))+A128908(A038722(n+1))`
-/

namespace A238156.P7794258663957761997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165253 (A061579 n).toNat + A128908 (A038722 (n + 1)).toNat

end

end A238156.P7794258663957761997

namespace A238156

/-- `A165253(A061579(n))+A128908(A038722(n+1))` -/
def P7794258663957761997.Spec : Prop :=
  ∀ n, P7794258663957761997.a n = A238156 n

end A238156

/-! ## A238156.P7921981438179710664

`A054142(n)-Δ[A128908(A038722(n+1))]`
-/

namespace A238156.P7921981438179710664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n - (f1 (n + 1) - f1 n)

end

end A238156.P7921981438179710664

namespace A238156

/-- `A054142(n)-Δ[A128908(A038722(n+1))]` -/
def P7921981438179710664.Spec : Prop :=
  ∀ n, P7921981438179710664.a n = A238156 n

end A238156

/-! ## A238156.P9648931896679175090

`A172431(n+1)-A103631(A185868(n+1))`
-/

namespace A238156.P9648931896679175090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 (n + 1) - A103631 (A185868 (n + 1)).toNat

end

end A238156.P9648931896679175090

namespace A238156

/-- `A172431(n+1)-A103631(A185868(n+1))` -/
def P9648931896679175090.Spec : Prop :=
  ∀ n, P9648931896679175090.a n = A238156 n

end A238156

/-! ## A238156.P375705631360458801

`A172431(n+1)-A103631(A185870(n+1))`
-/

namespace A238156.P375705631360458801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 (n + 1) - A103631 (A185870 (n + 1)).toNat

end

end A238156.P375705631360458801

namespace A238156

/-- `A172431(n+1)-A103631(A185870(n+1))` -/
def P375705631360458801.Spec : Prop :=
  ∀ n, P375705631360458801.a n = A238156 n

end A238156

/-!
# A238157: Reduced denominators of integral of the Stirling numbers of first kind.

The programs for A238157, there is no canonical definition to state claims against.
-/

/-! ## A238157.P12917247475424194542

`A002260(n+1)/gcd(A132393(n), A193738(n))`
-/

namespace A238157.P12917247475424194542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (Int.gcd (A132393 n) (A193738 n) : ℚ)

end

end A238157.P12917247475424194542

/-! ## A238157.P2188554951241872144

`A002260(n+1)/gcd(A002260(n+1), A048994(n))`
-/

namespace A238157.P2188554951241872144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (Int.gcd (A002260 (n + 1)) (A048994 n) : ℚ)

end

end A238157.P2188554951241872144

/-! ## A238157.P5156698039475050651

`gcd(A002260(n+1), A347130(A316674(n)))`
-/

namespace A238157.P5156698039475050651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A347130 (A316674 n).toNat)

end

end A238157.P5156698039475050651

/-! ## A238157.P9703467915947262394

`gcd(A036690(A069484(n+1)), A137152(n+1))`
-/

namespace A238157.P9703467915947262394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036690 (A069484 (n + 1)).toNat) (A137152 (n + 1))

end

end A238157.P9703467915947262394

/-! ## A238157.P13522631421922296744

`gcd(A083263(A256209(n)), A137152(n+1))`
-/

namespace A238157.P13522631421922296744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083263 (A256209 n).toNat) (A137152 (n + 1))

end

end A238157.P13522631421922296744

/-!
# A238158: Bicycle lock numbers: triangle T(n,k) with 1<=k<=n, where T(n,k) is the maximum value of min{xy, (n-x)(k-y)} over 0 <= x <= n, 0 <= y <= k for integers x, y.

The programs for A238158, there is no canonical definition to state claims against.
-/

/-! ## A238158.P16535799927780346100

`A225597(n+1)+A033999(A000043(n+3))`
-/

namespace A238158.P16535799927780346100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225597 (n + 1) + A033999 (A000043 (n + 3)).toNat

end

end A238158.P16535799927780346100

/-! ## A238158.P4093132819568829109

`A225597(n+1)-A225595(A303335(n+3))`
-/

namespace A238158.P4093132819568829109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225597 (n + 1) - A225595 (A303335 (n + 3)).toNat

end

end A238158.P4093132819568829109

/-! ## A238158.P17364605790341512950

`A225597(n+1)-A003415(A217566(3*n+5))`
-/

namespace A238158.P17364605790341512950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225597 (n + 1) - A003415 (A217566 (3 * n + 5)).toNat

end

end A238158.P17364605790341512950

/-! ## A238158.P3984395093396363337

`A225597(n+1)+A033999(A281311(n))`
-/

namespace A238158.P3984395093396363337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225597 (n + 1) + A033999 (A281311 n).toNat

end

end A238158.P3984395093396363337

/-! ## A238158.P17002993238268167123

`A225597(n+1)-A003415(A125602(n+1))`
-/

namespace A238158.P17002993238268167123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225597 (n + 1) - A003415 (A125602 (n + 1)).toNat

end

end A238158.P17002993238268167123

/-!
# A238159: Number of compositions of n with exactly one part equal to 1 or exactly one part equal to 2.

The programs for A238159, there is no canonical definition to state claims against.
-/

/-! ## A238159.P4483720050513346270

`A350898(A167614(n+3)+A064917(n+2))`
-/

namespace A238159.P4483720050513346270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350898 (A167614 (n + 3) + A064917 (n + 2)).toNat

end

end A238159.P4483720050513346270

/-!
# A238160: A skewed version of triangular array A029653.

The programs for A238160, the canonical program `A238160.P10222375909662323985` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238160 has offset 0).

The definition of A238160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238160.P10222375909662323985

`A026729(n)+abs(A057094(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A238160

/-- `A026729(n)+abs(A057094(n))` -/
def P10222375909662323985.Spec : Prop :=
  ∀ n, P10222375909662323985.a n = A238160 n

theorem P10222375909662323985.correct : P10222375909662323985.Spec := by
  intro n
  simp only [A238160]

end A238160

/-! ## A238160.P538733235027373622

`abs(A057094(n)-A109466(n))`
-/

namespace A238160.P538733235027373622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057094 n - A109466 n|

end

end A238160.P538733235027373622

namespace A238160

/-- `abs(A057094(n)-A109466(n))` -/
def P538733235027373622.Spec : Prop :=
  ∀ n, P538733235027373622.a n = A238160 n

end A238160

/-! ## A238160.P1558580245927959508

`A284938(n+1)+A026729(n)`
-/

namespace A238160.P1558580245927959508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (n + 1) + A026729 n

end

end A238160.P1558580245927959508

namespace A238160

/-- `A284938(n+1)+A026729(n)` -/
def P1558580245927959508.Spec : Prop :=
  ∀ n, P1558580245927959508.a n = A238160 n

end A238160

/-! ## A238160.P10443067538627564109

`A026729(n)+A199881(n)-A026729(A083920(n))`
-/

namespace A238160.P10443067538627564109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n + (A199881 n - A026729 (A083920 n).toNat)

end

end A238160.P10443067538627564109

namespace A238160

/-- `A026729(n)+A199881(n)-A026729(A083920(n))` -/
def P10443067538627564109.Spec : Prop :=
  ∀ n, P10443067538627564109.a n = A238160 n

end A238160

/-! ## A238160.P16796889067998691206

`A030528(n+1)-Δ[abs(A057094(n))]`
-/

namespace A238160.P16796889067998691206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057094 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1) - (f1 (n + 1) - f1 n)

end

end A238160.P16796889067998691206

namespace A238160

/-- `A030528(n+1)-Δ[abs(A057094(n))]` -/
def P16796889067998691206.Spec : Prop :=
  ∀ n, P16796889067998691206.a n = A238160 n

end A238160

/-! ## A238160.P6999785670864575440

`A030528(n+1)-Δ[A284938(n+1)]`
-/

namespace A238160.P6999785670864575440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1) - (f1 (n + 1) - f1 n)

end

end A238160.P6999785670864575440

namespace A238160

/-- `A030528(n+1)-Δ[A284938(n+1)]` -/
def P6999785670864575440.Spec : Prop :=
  ∀ n, P6999785670864575440.a n = A238160 n

end A238160

/-! ## A238160.P17062821419337856012

`A030528(n+1)+A284938(n+1)-A284938(n+2)`
-/

namespace A238160.P17062821419337856012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1) + (A284938 (n + 1) - A284938 (n + 2))

end

end A238160.P17062821419337856012

namespace A238160

/-- `A030528(n+1)+A284938(n+1)-A284938(n+2)` -/
def P17062821419337856012.Spec : Prop :=
  ∀ n, P17062821419337856012.a n = A238160 n

end A238160

/-! ## A238160.P4445055529451232035

`A284938(A183572(n+1)+1)+A284938(n+1)`
-/

namespace A238160.P4445055529451232035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (A183572 (n + 1) + 1).toNat + A284938 (n + 1)

end

end A238160.P4445055529451232035

namespace A238160

/-- `A284938(A183572(n+1)+1)+A284938(n+1)` -/
def P4445055529451232035.Spec : Prop :=
  ∀ n, P4445055529451232035.a n = A238160 n

end A238160

/-! ## A238160.P7443845420771428724

`lcm(A057094(n)-A109466(n), A056594(2*n))`
-/

namespace A238160.P7443845420771428724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057094 n - A109466 n) (A056594 (2 * n))

end

end A238160.P7443845420771428724

namespace A238160

/-- `lcm(A057094(n)-A109466(n), A056594(2*n))` -/
def P7443845420771428724.Spec : Prop :=
  ∀ n, (P7443845420771428724.a n : ℤ) = A238160 n

end A238160

/-! ## A238160.P6384641990669234021

`A178524(n+1)`
-/

namespace A238160.P6384641990669234021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178524 (n + 1)

end

end A238160.P6384641990669234021

namespace A238160

/-- `A178524(n+1)` -/
def P6384641990669234021.Spec : Prop :=
  ∀ n, P6384641990669234021.a n = A238160 n

end A238160

/-!
# A238161: Greatest common divisor of the prime factors of n, each increased by 1.

The programs for A238161, there is no canonical definition to state claims against.
-/

/-! ## A238161.P8820656381179496062

`A289508(∏{p}[n+2, A065091(#)])`
-/

namespace A238161.P8820656381179496062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (∏ p ∈ Nat.primeFactors (f1 n), A065091 p).toNat

end

end A238161.P8820656381179496062

/-! ## A238161.P14634603435319879243

`A328169(A328878(n+2))`
-/

namespace A238161.P14634603435319879243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328169 (A328878 (n + 2)).toNat

end

end A238161.P14634603435319879243

/-! ## A238161.P12147239458208762602

`A328169(∏{p}[A064988(n+2), #])`
-/

namespace A238161.P12147239458208762602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328169 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A238161.P12147239458208762602

/-! ## A238161.P17736167994433319916

`A104076(A183103(n+2))`
-/

namespace A238161.P17736167994433319916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104076 (A183103 (n + 2)).toNat

end

end A238161.P17736167994433319916

/-! ## A238161.P12506768201745518974

`A104076(A183105(n+2))`
-/

namespace A238161.P12506768201745518974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104076 (A183105 (n + 2)).toNat

end

end A238161.P12506768201745518974

/-!
# A238162: Least common multiple of the prime factors of n, each increased by 1.

The programs for A238162, there is no canonical definition to state claims against.
-/

/-! ## A238162.P16698044227391937986

`A353783(∏{p}[n+2, #])`
-/

namespace A238162.P16698044227391937986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353783 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A238162.P16698044227391937986

/-! ## A238162.P2485060636192033804

`A397828(∏{p}[n+2, #])`
-/

namespace A238162.P2485060636192033804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397828 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A238162.P2485060636192033804

/-! ## A238162.P7894532175394701458

`A353783(A007947(n+2))`
-/

namespace A238162.P7894532175394701458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353783 (A007947 (n + 2)).toNat

end

end A238162.P7894532175394701458

/-! ## A238162.P3167781301418557974

`A328219(A328878(n+2))`
-/

namespace A238162.P3167781301418557974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328219 (A328878 (n + 2)).toNat

end

end A238162.P3167781301418557974

/-! ## A238162.P11857538773508167597

`A328219(A064988(n+2))`
-/

namespace A238162.P11857538773508167597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328219 (A064988 (n + 2)).toNat

end

end A238162.P11857538773508167597

/-! ## A238162.P369518136257582368

`A290103(∏{p}[n+2, A065091(#)])`
-/

namespace A238162.P369518136257582368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (∏ p ∈ Nat.primeFactors (f1 n), A065091 p).toNat

end

end A238162.P369518136257582368

/-!
# A238170: Integer part of square root of A001017: a(n) = floor(n^(9/2)).

The programs for A238170, the canonical program `A238170.P8710277693144103903` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238170 has offset 0).

The definition of A238170 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^(9/2))` (program `A238170.P8710277693144103903`, by `A238170.P8710277693144103903.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238170.P8710277693144103903

`floor(n^(9/2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238170

/-- `floor(n^(9/2))` -/
def P8710277693144103903.Spec : Prop :=
  ∀ n, P8710277693144103903.a n = A238170 n

theorem P8710277693144103903.correct : P8710277693144103903.Spec := by
  intro n
  simp only [A238170]

end A238170

/-! ## A238170.P16146819197858647645

`round(sqrt(A196290(n)-A036494(n)))`
-/

namespace A238170.P16146819197858647645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A196290 n - A036494 n : ℝ))

end

end A238170.P16146819197858647645

namespace A238170

/-- `round(sqrt(A196290(n)-A036494(n)))` -/
def P16146819197858647645.Spec : Prop :=
  ∀ n, P16146819197858647645.a n = A238170 n

end A238170

/-! ## A238170.P16133779091877744069

`floor(sqrt(A001017(n)+1))-A000007(n)`
-/

namespace A238170.P16133779091877744069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001017 n + 1) - A000007 n

end

end A238170.P16133779091877744069

namespace A238170

/-- `floor(sqrt(A001017(n)+1))-A000007(n)` -/
def P16133779091877744069.Spec : Prop :=
  ∀ n, P16133779091877744069.a n = A238170 n

end A238170

/-! ## A238170.P290228927608909876

`floor(sqrt(A001017(n)+1))*A057427(n)`
-/

namespace A238170.P290228927608909876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001017 n + 1) * A057427 n

end

end A238170.P290228927608909876

namespace A238170

/-- `floor(sqrt(A001017(n)+1))*A057427(n)` -/
def P290228927608909876.Spec : Prop :=
  ∀ n, P290228927608909876.a n = A238170 n

end A238170

/-! ## A238170.P15949827824588990011

`floor(sqrt(A001017(n)+1))%A281638(n)²`
-/

namespace A238170.P15949827824588990011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A001017 n + 1)) (A281638 n ^ 2)

end

end A238170.P15949827824588990011

namespace A238170

/-- `floor(sqrt(A001017(n)+1))%A281638(n)²` -/
def P15949827824588990011.Spec : Prop :=
  ∀ n, P15949827824588990011.a n = A238170 n

end A238170

/-!
# A238172: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the minimum of every 2X2 subblock equal.

The programs for A238172, there is no canonical definition to state claims against.
-/

/-! ## A238172.P13322981642815102447

`A238180((n+1)²+n²)`
-/

namespace A238172.P13322981642815102447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 ((n + 1) ^ 2 + n ^ 2)

end

end A238172.P13322981642815102447

/-!
# A238173: Number of (n+1) X (1+1) 0..2 arrays with the maximum plus the minimum of every 2 X 2 subblock equal.

The programs for A238173, there is no canonical definition to state claims against.
-/

/-! ## A238173.P8665435283989475056

`A238180(∑[n]+1)`
-/

namespace A238173.P8665435283989475056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238173.P8665435283989475056

/-! ## A238173.P5929575738058883938

`or(1, A238180(A000124(n)))`
-/

namespace A238173.P5929575738058883938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238180 (A000124 n).toNat)

end

end A238173.P5929575738058883938

/-! ## A238173.P4499351935673203674

`record[A010054(n)*A238180(n+1)]`
-/

namespace A238173.P4499351935673203674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238173.P4499351935673203674

/-! ## A238173.P8161902070116795339

`record[root(A238180(n+1), A125806(n))]`
-/

namespace A238173.P8161902070116795339
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238180 (n + 1) : ℝ) ^ (1 / (A125806 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238173.P8161902070116795339

/-! ## A238173.P7336801303533236906

`record[root(A238180(n+1), A132731(n))]`
-/

namespace A238173.P7336801303533236906
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238180 (n + 1) : ℝ) ^ (1 / (A132731 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238173.P7336801303533236906

/-!
# A238174: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the minimum of every 2X2 subblock equal.

The programs for A238174, there is no canonical definition to state claims against.
-/

/-! ## A238174.P3124027572006436700

`A238180(∑[n+1]+2)`
-/

namespace A238174.P3124027572006436700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238174.P3124027572006436700

/-! ## A238174.P14763887849715951039

`record[A010054(n)*A238180(n+2)]`
-/

namespace A238174.P14763887849715951039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238180 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238174.P14763887849715951039

/-! ## A238174.P11548541339763702568

`record[gcd(A002262(n), A238180(n+2))]`
-/

namespace A238174.P11548541339763702568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A238180 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238174.P11548541339763702568

/-! ## A238174.P14147041031675230057

`A238180(A000096(n)+3)%A238175(n+1)`
-/

namespace A238174.P14147041031675230057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238180 (A000096 n + 3).toNat) (A238175 (n + 1))

end

end A238174.P14147041031675230057

/-! ## A238174.P7780709011484056425

`record[A238180(abs(A201163(n)))]`
-/

namespace A238174.P7780709011484056425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238174.P7780709011484056425

/-!
# A238175: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the minimum of every 2X2 subblock equal.

The programs for A238175, there is no canonical definition to state claims against.
-/

/-! ## A238175.P16018157257964500780

`A238180(∑[n+2]+4)`
-/

namespace A238175.P16018157257964500780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238175.P16018157257964500780

/-! ## A238175.P552453818909361783

`or(1, A238180(A167614(n+1)))`
-/

namespace A238175.P552453818909361783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238180 (A167614 (n + 1)).toNat)

end

end A238175.P552453818909361783

/-! ## A238175.P11860837040247509423

`A238180(A167614(n+1))+A025469(n)`
-/

namespace A238175.P11860837040247509423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (A167614 (n + 1)).toNat + A025469 n

end

end A238175.P11860837040247509423

/-! ## A238175.P7811111560475456779

`A238180(A167614(n+1))+A185284(n)`
-/

namespace A238175.P7811111560475456779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (A167614 (n + 1)).toNat + A185284 n

end

end A238175.P7811111560475456779

/-! ## A238175.P10562432691453026124

`lcm(A033999(n), A238180(A167614(n+1)))`
-/

namespace A238175.P10562432691453026124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A238180 (A167614 (n + 1)).toNat)

end

end A238175.P10562432691453026124

/-!
# A238176: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the minimum of every 2X2 subblock equal.

The programs for A238176, there is no canonical definition to state claims against.
-/

/-! ## A238176.P11464409706536160769

`A238180(A374004(n+1))`
-/

namespace A238176.P11464409706536160769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (A374004 (n + 1)).toNat

end

end A238176.P11464409706536160769

/-! ## A238176.P5233812190592666635

`A238180(A052905(n)+9)`
-/

namespace A238176.P5233812190592666635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (A052905 n + 9).toNat

end

end A238176.P5233812190592666635

/-! ## A238176.P1114003958285116572

`A238180(A167614(n+2)+1)`
-/

namespace A238176.P1114003958285116572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (A167614 (n + 2) + 1).toNat

end

end A238176.P1114003958285116572

/-! ## A238176.P3205069832497772670

`A238180(Δ[A023545(n+1)-n²])`
-/

namespace A238176.P3205069832497772670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (f1 (n + 1) - f1 n).toNat

end

end A238176.P3205069832497772670

/-! ## A238176.P109638028591696135

`A238180(A141214(n+1))`
-/

namespace A238176.P109638028591696135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (A141214 (n + 1)).toNat

end

end A238176.P109638028591696135

/-!
# A238177: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the minimum of every 2X2 subblock equal.

The programs for A238177, there is no canonical definition to state claims against.
-/

/-! ## A238177.P5967407830310648409

`A238180(A374005(n+1))`
-/

namespace A238177.P5967407830310648409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (A374005 (n + 1)).toNat

end

end A238177.P5967407830310648409

/-! ## A238177.P14538096682911006070

`A238180(Δ[A023545(n+1)])`
-/

namespace A238177.P14538096682911006070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (f1 (n + 1) - f1 n).toNat

end

end A238177.P14538096682911006070

/-! ## A238177.P10221191932451285358

`A238180(A052905(n+2)+1)`
-/

namespace A238177.P10221191932451285358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (A052905 (n + 2) + 1).toNat

end

end A238177.P10221191932451285358

/-!
# A238178: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the minimum of every 2X2 subblock equal.

The programs for A238178, there is no canonical definition to state claims against.
-/

/-! ## A238178.P9099385499496353814

`A238180(A374007(n+1))`
-/

namespace A238178.P9099385499496353814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (A374007 (n + 1)).toNat

end

end A238178.P9099385499496353814

/-! ## A238178.P6063568557323903389

`A238180(eq[7, A131818(n+1)])`
-/

namespace A238178.P6063568557323903389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238178.P6063568557323903389

/-! ## A238178.P28115091119511589

`A238180(A052905(n+3))`
-/

namespace A238178.P28115091119511589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (A052905 (n + 3)).toNat

end

end A238178.P28115091119511589

/-! ## A238178.P17024869035144879259

`A238180(eq[5, A193592(n)])`
-/

namespace A238178.P17024869035144879259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238178.P17024869035144879259

/-! ## A238178.P1011807573563810602

`A238180(Δ[A023545(n+2)]-1)`
-/

namespace A238178.P1011807573563810602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238180 (f1 (n + 1) - f1 n - 1).toNat

end

end A238178.P1011807573563810602

/-!
# A238184: Sum of the squares of numbers of nonconsecutive chess tableaux over all partitions of n.

The programs for A238184, there is no canonical definition to state claims against.
-/

/-! ## A238184.P4952668127903246316

`A307824(A000672(n))`
-/

namespace A238184.P4952668127903246316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307824 (A000672 n).toNat

end

end A238184.P4952668127903246316

/-! ## A238184.P5769492291948076711

`A326536(floor(sqrt(A126757(n+1))))`
-/

namespace A238184.P5769492291948076711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326536 (Int.sqrt (A126757 (n + 1))).toNat

end

end A238184.P5769492291948076711

/-! ## A238184.P2858695606802532534

`ceil(sqrt(A084251(A084251(n)))/2)`
-/

namespace A238184.P2858695606802532534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A084251 (A084251 n).toNat : ℝ) / 2⌉

end

end A238184.P2858695606802532534

/-! ## A238184.P13284524369886939250

`A003056(A333150(A003056(A373305(n))))`
-/

namespace A238184.P13284524369886939250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A333150 (A003056 (A373305 n).toNat).toNat).toNat

end

end A238184.P13284524369886939250

/-! ## A238184.P3183524274148285714

`A364843(A002990(n))`
-/

namespace A238184.P3183524274148285714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364843 (A002990 n).toNat

end

end A238184.P3183524274148285714

/-!
# A238185: Primes p such that prime(prime(p^2)) + 2 is also prime.

The programs for A238185, there is no canonical definition to state claims against.
-/

/-! ## A238185.P3870916915100825360

`A164952(A257851(n)+A000330(n))`
-/

namespace A238185.P3870916915100825360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164952 (A257851 n + A000330 n).toNat

end

end A238185.P3870916915100825360

/-!
# A238186: Primes with odd Hamming weight that as polynomials over GF(2) are reducible.

The programs for A238186, there is no canonical definition to state claims against.
-/

/-! ## A238186.P9596685210984859625

`∩[A091209(n+1), A176620(n+1)]`
-/

namespace A238186.P9596685210984859625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238186.P9596685210984859625

/-! ## A238186.P11490881950544627173

`∩[A027697(n+1), A091209(n+1)]`
-/

namespace A238186.P11490881950544627173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238186.P11490881950544627173

/-! ## A238186.P7800457900097680402

`p?[A246157(n+1)]`
-/

namespace A238186.P7800457900097680402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238186.P7800457900097680402

/-! ## A238186.P1104397656585288586

`filter[A027697(n+1), A091247(#)]`
-/

namespace A238186.P1104397656585288586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A238186.P1104397656585288586

/-! ## A238186.P17216034747051665706

`filter[A176620(n+1), A091247(#)]`
-/

namespace A238186.P17216034747051665706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A238186.P17216034747051665706

/-! ## A238186.P15112899678134217056

`filter[A091209(n+1), A228495(#)]`
-/

namespace A238186.P15112899678134217056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A238186.P15112899678134217056

/-! ## A238186.P16191777149420088118

`filter[A091209(n+1), A295297(#)]`
-/

namespace A238186.P16191777149420088118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A238186.P16191777149420088118

/-! ## A238186.P11223429614186549876

`filter[A091209(n+1), A361018(#)]`
-/

namespace A238186.P11223429614186549876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A238186.P11223429614186549876

/-! ## A238186.P5917445341702340194

`∩[A000040(n+1), A246157(n+1)]`
-/

namespace A238186.P5917445341702340194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238186.P5917445341702340194

/-! ## A238186.P12264541484065397435

`∩[A004139(n+1), A246157(n+1)]`
-/

namespace A238186.P12264541484065397435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238186.P12264541484065397435

/-! ## A238186.P1842019759581697368

`∩[A006005(n+1), A246157(n+1)]`
-/

namespace A238186.P1842019759581697368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238186.P1842019759581697368

/-! ## A238186.P17431726786148473221

`∩[A008578(n+1), A246157(n+1)]`
-/

namespace A238186.P17431726786148473221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238186.P17431726786148473221

/-! ## A238186.P6829237912493570318

`∩[A027697(n+1), A246157(n+1)]`
-/

namespace A238186.P6829237912493570318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238186.P6829237912493570318

/-! ## A238186.P6527817530344743645

`∩[A027697(n+1), A260427(n+1)]`
-/

namespace A238186.P6527817530344743645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238186.P6527817530344743645

/-! ## A238186.P555989899754918028

`∩[A045319(n+1), A246157(n+1)]`
-/

namespace A238186.P555989899754918028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238186.P555989899754918028

/-! ## A238186.P16125317939462311050

`∩[A045344(n+1), A246157(n+1)]`
-/

namespace A238186.P16125317939462311050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238186.P16125317939462311050

/-! ## A238186.P11542350468691271757

`∩[A046022(n+1), A246157(n+1)]`
-/

namespace A238186.P11542350468691271757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238186.P11542350468691271757

/-! ## A238186.P478112583497579193

`∩[A051948(n+1), A246157(n+1)]`
-/

namespace A238186.P478112583497579193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238186.P478112583497579193

/-! ## A238186.P8099951347628527104

`∩[A053577(n+1), A246157(n+1)]`
-/

namespace A238186.P8099951347628527104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238186.P8099951347628527104

/-! ## A238186.P11162113597163052758

`∩[A053813(n+1), A246157(n+1)]`
-/

namespace A238186.P11162113597163052758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238186.P11162113597163052758

/-!
# A238187: Gaussian norm of 1+(1+i)^n.

The programs for A238187, the canonical program `A238187.P12208281190577049950` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238187 has offset 0).

The definition of A238187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238187.P1326374261166083348

`A146559(n+1)+a(n-1)+2^(n-1)` with `a(0)=4`
-/

namespace A238187.P1326374261166083348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (A146559 (n + 1) : ℚ) + (a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A238187.P1326374261166083348

namespace A238187

/-- `A146559(n+1)+a(n-1)+2^(n-1)` -/
def P1326374261166083348.Spec : Prop :=
  ∀ n, P1326374261166083348.a n = (A238187 n : ℚ)

end A238187

/-! ## A238187.P12208281190577049950

`A133209(n)+A077860(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A238187

/-- `A133209(n)+A077860(n)` -/
def P12208281190577049950.Spec : Prop :=
  ∀ n, P12208281190577049950.a n = A238187 n

theorem P12208281190577049950.correct : P12208281190577049950.Spec := by
  intro n
  simp only [A238187]

end A238187

/-! ## A238187.P3031928341813486080

`A133209(n)+∑[A099087(n)]`
-/

namespace A238187.P3031928341813486080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133209 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238187.P3031928341813486080

namespace A238187

/-- `A133209(n)+∑[A099087(n)]` -/
def P3031928341813486080.Spec : Prop :=
  ∀ n, P3031928341813486080.a n = A238187 n

end A238187

/-! ## A238187.P9021300069255352743

`A099087(n+1)+A000051(n)`
-/

namespace A238187.P9021300069255352743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (n + 1) + A000051 n

end

end A238187.P9021300069255352743

namespace A238187

/-- `A099087(n+1)+A000051(n)` -/
def P9021300069255352743.Spec : Prop :=
  ∀ n, P9021300069255352743.a n = A238187 n

end A238187

/-! ## A238187.P2248088255900488664

`A009545(n+2)+A000051(n)`
-/

namespace A238187.P2248088255900488664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 2) + A000051 n

end

end A238187.P2248088255900488664

namespace A238187

/-- `A009545(n+2)+A000051(n)` -/
def P2248088255900488664.Spec : Prop :=
  ∀ n, P2248088255900488664.a n = A238187 n

end A238187

/-! ## A238187.P17569010711740007742

`A099087(n+1)+A000225(n)+2`
-/

namespace A238187.P17569010711740007742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (n + 1) + (A000225 n + 2)

end

end A238187.P17569010711740007742

namespace A238187

/-- `A099087(n+1)+A000225(n)+2` -/
def P17569010711740007742.Spec : Prop :=
  ∀ n, P17569010711740007742.a n = A238187 n

end A238187

/-! ## A238187.P17803752366063069258

`A094373(n+1)+A009545(n+2)`
-/

namespace A238187.P17803752366063069258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (n + 1) + A009545 (n + 2)

end

end A238187.P17803752366063069258

namespace A238187

/-- `A094373(n+1)+A009545(n+2)` -/
def P17803752366063069258.Spec : Prop :=
  ∀ n, P17803752366063069258.a n = A238187 n

end A238187

/-! ## A238187.P11087333293711394621

`A016116(2*n)+A099087(n+1)+1`
-/

namespace A238187.P11087333293711394621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) + (A099087 (n + 1) + 1)

end

end A238187.P11087333293711394621

namespace A238187

/-- `A016116(2*n)+A099087(n+1)+1` -/
def P11087333293711394621.Spec : Prop :=
  ∀ n, P11087333293711394621.a n = A238187 n

end A238187

/-! ## A238187.P13149114266424395833

`A077957(2*n)+A099087(n+1)+1`
-/

namespace A238187.P13149114266424395833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n) + (A099087 (n + 1) + 1)

end

end A238187.P13149114266424395833

namespace A238187

/-- `A077957(2*n)+A099087(n+1)+1` -/
def P13149114266424395833.Spec : Prop :=
  ∀ n, P13149114266424395833.a n = A238187 n

end A238187

/-! ## A238187.P17516185600168713686

`A138231(2*(n+2))+A000079(n)+1`
-/

namespace A238187.P17516185600168713686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (2 * (n + 2)) + (A000079 n + 1)

end

end A238187.P17516185600168713686

namespace A238187

/-- `A138231(2*(n+2))+A000079(n)+1` -/
def P17516185600168713686.Spec : Prop :=
  ∀ n, P17516185600168713686.a n = A238187 n

end A238187

/-! ## A238187.P11594925585601142574

`A146559(n+1)+A011782(n)+a(n-1)` with `a(0)=4`
-/

namespace A238187.P11594925585601142574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A146559 (n + 1) + (A011782 n + a (n - 1))

end

end A238187.P11594925585601142574

namespace A238187

/-- `A146559(n+1)+A011782(n)+a(n-1)` -/
def P11594925585601142574.Spec : Prop :=
  ∀ n, P11594925585601142574.a n = A238187 n

end A238187

/-! ## A238187.P13628924927416010158

`A146559(n+1)+A131577(n)+a(n-1)` with `a(0)=4`
-/

namespace A238187.P13628924927416010158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A146559 (n + 1) + (A131577 n + a (n - 1))

end

end A238187.P13628924927416010158

namespace A238187

/-- `A146559(n+1)+A131577(n)+a(n-1)` -/
def P13628924927416010158.Spec : Prop :=
  ∀ n, P13628924927416010158.a n = A238187 n

end A238187

/-! ## A238187.P5810015418947325565

`A019425(A019425(n))+4*A038503(n)`
-/

namespace A238187.P5810015418947325565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A019425 n).toNat + 4 * A038503 n

end

end A238187.P5810015418947325565

namespace A238187

/-- `A019425(A019425(n))+4*A038503(n)` -/
def P5810015418947325565.Spec : Prop :=
  ∀ n, P5810015418947325565.a n = A238187 n

end A238187

/-! ## A238187.P17657407530354980260

`A077950(n+1)+A077950(n)+A000051(n)`
-/

namespace A238187.P17657407530354980260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077950 (n + 1) + (A077950 n + A000051 n)

end

end A238187.P17657407530354980260

namespace A238187

/-- `A077950(n+1)+A077950(n)+A000051(n)` -/
def P17657407530354980260.Spec : Prop :=
  ∀ n, P17657407530354980260.a n = A238187 n

end A238187

/-! ## A238187.P5942254201193266885

`A077860(n+1)+A000051(n)-A077860(n)`
-/

namespace A238187.P5942254201193266885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077860 (n + 1) + (A000051 n - A077860 n)

end

end A238187.P5942254201193266885

namespace A238187

/-- `A077860(n+1)+A000051(n)-A077860(n)` -/
def P5942254201193266885.Spec : Prop :=
  ∀ n, P5942254201193266885.a n = A238187 n

end A238187

/-! ## A238187.P1148801067052102014

`A140407(2*n+1)+A009545(n+2)`
-/

namespace A238187.P1148801067052102014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 (2 * n + 1) + A009545 (n + 2)

end

end A238187.P1148801067052102014

namespace A238187

/-- `A140407(2*n+1)+A009545(n+2)` -/
def P1148801067052102014.Spec : Prop :=
  ∀ n, P1148801067052102014.a n = A238187 n

end A238187

/-! ## A238187.P12866698123546518564

`A164094(n)-A396151(n)`
-/

namespace A238187.P12866698123546518564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164094 n - A396151 n

end

end A238187.P12866698123546518564

namespace A238187

/-- `A164094(n)-A396151(n)` -/
def P12866698123546518564.Spec : Prop :=
  ∀ n, P12866698123546518564.a n = A238187 n

end A238187

/-!
# A238189: Number T(n,k) of equivalence classes of ways of placing k 2 X 2 tiles in an n X 4 rectangle under all symmetry operations of the rectangle; irregular triangle T(n,k), n>=2, 0<=k<=n-n%2, read by rows.

The programs for A238189, there is no canonical definition to state claims against.
-/

/-! ## A238189.P3222824919223985613

`A292630(A051052(n))+A171871(n+1)`
-/

namespace A238189.P3222824919223985613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292630 (A051052 n).toNat + A171871 (n + 1)

end

end A238189.P3222824919223985613

/-!
# A238190: Number T(n,k) of equivalence classes of ways of placing k 3 X 3 tiles in an n X 4 rectangle under all symmetry operations of the rectangle; irregular triangle T(n,k), n>=3, 0<=k<=floor(n/3), read by rows.

The programs for A238190, there is no canonical definition to state claims against.
-/

/-! ## A238190.P3935813196262334265

`A054071(A231473(n+3)%A055161(n))`
-/

namespace A238190.P3935813196262334265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (Int.tmod (A231473 (n + 3)) (A055161 n)).toNat

end

end A238190.P3935813196262334265

/-! ## A238190.P12721564766962115829

`A054071(A231473(n+3))%A217349(3*n+5)`
-/

namespace A238190.P12721564766962115829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054071 (A231473 (n + 3)).toNat) (A217349 (3 * n + 5))

end

end A238190.P12721564766962115829

/-! ## A238190.P10699044648416394206

`A067539(A344391(n)^A101443(n))`
-/

namespace A238190.P10699044648416394206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067539 (SequenceMachineLib.roundAway ((A344391 n : ℚ) ^ (A101443 n : ℤ))).toNat

end

end A238190.P10699044648416394206

/-! ## A238190.P2676296549030409484

`A156253(A344391(n))%A078538(n+1)`
-/

namespace A238190.P2676296549030409484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156253 (A344391 n).toNat) (A078538 (n + 1))

end

end A238190.P2676296549030409484

/-! ## A238190.P14948348262908212808

`A067539(A344391(n)%A290697(n+6))`
-/

namespace A238190.P14948348262908212808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067539 (Int.tmod (A344391 n) (A290697 (n + 6))).toNat

end

end A238190.P14948348262908212808

/-!
# A238191: Digital root of the number of partitions of n.

The programs for A238191, there is no canonical definition to state claims against.
-/

/-! ## A238191.P17205094975440673193

`A010888(A000041(n))`
-/

namespace A238191.P17205094975440673193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A000041 n).toNat

end

end A238191.P17205094975440673193

/-! ## A238191.P18189209261919950319

`dr(A004088(n))`
-/

namespace A238191.P18189209261919950319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004088 n)

end

end A238191.P18189209261919950319

/-! ## A238191.P14309248601755881189

`dr(A004089(n))`
-/

namespace A238191.P14309248601755881189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004089 n)

end

end A238191.P14309248601755881189

/-! ## A238191.P15649303611672003572

`dr(∑[A002865(n)])`
-/

namespace A238191.P15649303611672003572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238191.P15649303611672003572

/-! ## A238191.P9017096148050734428

`dr(A000065(n)+1)`
-/

namespace A238191.P9017096148050734428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000065 n + 1)

end

end A238191.P9017096148050734428

/-! ## A238191.P9565167431668934792

`dr(∑[A085811(n+3)])`
-/

namespace A238191.P9565167431668934792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238191.P9565167431668934792

/-! ## A238191.P11729920761011653981

`dr(A035363(2*n))`
-/

namespace A238191.P11729920761011653981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A035363 (2 * n))

end

end A238191.P11729920761011653981

/-! ## A238191.P15028665815421830236

`dr(A119620(2*n))`
-/

namespace A238191.P15028665815421830236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A119620 (2 * n))

end

end A238191.P15028665815421830236

/-! ## A238191.P10071351963398038625

`dr(sqrt(A001255(n)))`
-/

namespace A238191.P10071351963398038625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.sqrt (A001255 n : ℝ)))

end

end A238191.P10071351963398038625

/-! ## A238191.P479720232546211082

`dr(A100824(2*n))`
-/

namespace A238191.P479720232546211082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A100824 (2 * n))

end

end A238191.P479720232546211082

/-! ## A238191.P17204991082100575579

`dr(A054225(∑[n]))`
-/

namespace A238191.P17204991082100575579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A054225 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A238191.P17204991082100575579

/-! ## A238191.P8624939298338534930

`dr(A055375(∑[n]))`
-/

namespace A238191.P8624939298338534930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A055375 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A238191.P8624939298338534930

/-! ## A238191.P1472817706136682010

`dr(A079025(∑[n]))`
-/

namespace A238191.P1472817706136682010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A079025 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A238191.P1472817706136682010

/-! ## A238191.P2215815505359373788

`dr(A284592(∑[n]))`
-/

namespace A238191.P2215815505359373788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A284592 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A238191.P2215815505359373788

/-! ## A238191.P4674819253397608363

`dr(A322210(∑[n]))`
-/

namespace A238191.P4674819253397608363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A322210 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A238191.P4674819253397608363

/-! ## A238191.P15846971637175419578

`dr(A365004(∑[n]))`
-/

namespace A238191.P15846971637175419578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A365004 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A238191.P15846971637175419578

/-! ## A238191.P9413515243021086270

`dr(A103923(∑[n]))`
-/

namespace A238191.P9413515243021086270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A103923 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A238191.P9413515243021086270

/-! ## A238191.P10733989078059876083

`dr(A152538(∑[n]))`
-/

namespace A238191.P10733989078059876083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A152538 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A238191.P10733989078059876083

/-! ## A238191.P14318432483410389370

`dr(A183568(∑[n]))`
-/

namespace A238191.P14318432483410389370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A183568 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A238191.P14318432483410389370

/-! ## A238191.P3353766731908588997

`dr(A194543(∑[n]))`
-/

namespace A238191.P3353766731908588997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A194543 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A238191.P3353766731908588997

/-!
# A238192: In the Collatz (3x+1) iteration of n, the last odd number before 1, or 0 if there is no such number.

The programs for A238192, there is no canonical definition to state claims against.
-/

/-! ## A238192.P907773006453479164

`A237660(2*(n+1))`
-/

namespace A238192.P907773006453479164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237660 (2 * (n + 1))

end

end A238192.P907773006453479164

/-! ## A238192.P1473514742547141763

`A306577(n+1)-A036987(n)`
-/

namespace A238192.P1473514742547141763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306577 (n + 1) - A036987 n

end

end A238192.P1473514742547141763

/-! ## A238192.P6702366294643482889

`A043545(n)*A306577(n+1)`
-/

namespace A238192.P6702366294643482889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n * A306577 (n + 1)

end

end A238192.P6702366294643482889

/-! ## A238192.P6086714640314922747

`A306577(n+1)-char[A000225(n)]`
-/

namespace A238192.P6086714640314922747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306577 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A238192.P6086714640314922747

/-! ## A238192.P2476495703190418184

`A306577(n+1)%A002173(n+1)`
-/

namespace A238192.P2476495703190418184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306577 (n + 1)) (A002173 (n + 1))

end

end A238192.P2476495703190418184

/-! ## A238192.P13490970427233984097

`A237660(A103517(n))%A155212(n)`
-/

namespace A238192.P13490970427233984097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237660 (A103517 n).toNat) (A155212 n)

end

end A238192.P13490970427233984097

/-! ## A238192.P7234203170649652874

`gcd(A237660(n+1), A237660(A103517(n)))`
-/

namespace A238192.P7234203170649652874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A237660 (n + 1)) (A237660 (A103517 n).toNat)

end

end A238192.P7234203170649652874

/-! ## A238192.P16437108488066085968

`A306577(n+1)-A000007(A306577(n+1)-1)`
-/

namespace A238192.P16437108488066085968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306577 (n + 1) - A000007 (A306577 (n + 1) - 1).toNat

end

end A238192.P16437108488066085968

/-! ## A238192.P15158339882124437636

`lcm(A094754(A306577(n+1)+1), A306577(n+1))`
-/

namespace A238192.P15158339882124437636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094754 (A306577 (n + 1) + 1).toNat) (A306577 (n + 1))

end

end A238192.P15158339882124437636

/-! ## A238192.P12769207452622636877

`A306577(n+1)%A101623(n)`
-/

namespace A238192.P12769207452622636877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306577 (n + 1)) (A101623 n)

end

end A238192.P12769207452622636877

/-! ## A238192.P4272674685890033874

`A306577(n+1)-A008683(A306577(n+1)²)`
-/

namespace A238192.P4272674685890033874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306577 (n + 1) - A008683 (A306577 (n + 1) ^ 2).toNat

end

end A238192.P4272674685890033874

/-! ## A238192.P333116971974625297

`A094754(A306577(n+1)²)*A306577(n+1)`
-/

namespace A238192.P333116971974625297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094754 (A306577 (n + 1) ^ 2).toNat * A306577 (n + 1)

end

end A238192.P333116971974625297

/-!
# A238193: Position of first occurrence of (4^n - 1)/3 in A238192.

The programs for A238193, there is no canonical definition to state claims against.
-/

/-! ## A238193.P4186308444678716949

`A054646(n+2)`
-/

namespace A238193.P4186308444678716949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054646 (n + 2)

end

end A238193.P4186308444678716949

/-! ## A238193.P15726627032708605725

`record[A010120(or(2, n))]`
-/

namespace A238193.P15726627032708605725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010120 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238193.P15726627032708605725

/-! ## A238193.P1638198157890462817

`record[A010120(xor(2, n))]`
-/

namespace A238193.P1638198157890462817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010120 (Nat.xor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238193.P1638198157890462817

/-! ## A238193.P15665499320728804764

`A010120(2*(n+2))`
-/

namespace A238193.P15665499320728804764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010120 (2 * (n + 2))

end

end A238193.P15665499320728804764

/-!
# A238195: Triangle of the discriminant of the polynomials x^n - x^m - 1, where 0 < m < n.

The programs for A238195, there is no canonical definition to state claims against.
-/

/-! ## A238195.P1993563833511084761

`A238196(∑[2*n]%comp[∑[n]]+1)`
-/

namespace A238195.P1993563833511084761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238196 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

end

end A238195.P1993563833511084761

/-! ## A238195.P17528143505682371616

`A238196(A038722(n+1))`
-/

namespace A238195.P17528143505682371616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238196 (A038722 (n + 1)).toNat

end

end A238195.P17528143505682371616

/-! ## A238195.P5059042266305210790

`A238196(A061579(n)+1)`
-/

namespace A238195.P5059042266305210790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238196 (A061579 n + 1).toNat

end

end A238195.P5059042266305210790

/-! ## A238195.P17124031963744625627

`A238196(A114327(n)+1+n)`
-/

namespace A238195.P17124031963744625627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238196 (A114327 n + 1 + (n : ℤ)).toNat

end

end A238195.P17124031963744625627

/-! ## A238195.P13008561486051602749

`A238196(A093995(n+1)-n)`
-/

namespace A238195.P13008561486051602749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238196 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A238195.P13008561486051602749

/-! ## A238195.P14746776951823538189

`A238196(A002024(n+1)²-n)`
-/

namespace A238195.P14746776951823538189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238196 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A238195.P14746776951823538189

/-!
# A238196: Triangle of the discriminant of the polynomials x^n + x^m - 1, where 0 < m < n.

The programs for A238196, there is no canonical definition to state claims against.
-/

/-! ## A238196.P11517543962137562758

`A238195(∑[char[∑[n]]]²+1-n)`
-/

namespace A238196.P11517543962137562758
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238195 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 - n)

end

end A238196.P11517543962137562758

/-!
# A238199: Sorted absolute value of discriminant of the polynomials x^n +- x^m +- 1, where 0 < m < n.

The programs for A238199, there is no canonical definition to state claims against.
-/

/-! ## A238199.P14641103065142251469

`A302389(A001576(n)-1)+1`
-/

namespace A238199.P14641103065142251469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302389 (A001576 n - 1).toNat + 1

end

end A238199.P14641103065142251469

