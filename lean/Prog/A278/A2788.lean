import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
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

/-!
# A278800: G.f.: Sum_{k>0} x^prime(k)/(1-x)^k.

The programs for A278800, there is no canonical definition to state claims against.
-/

/-! ## A278800.P11965550560063747182

`∑[A143619(2*(n+1))%A143591(3*n+1)]`
-/

namespace A278800.P11965550560063747182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143619 (2 * (n + 1))) (A143591 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278800.P11965550560063747182

/-! ## A278800.P6156017796342376845

`∑[ceil(A034333(n)/7)]`
-/

namespace A278800.P6156017796342376845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034333 n : ℚ) / 7⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278800.P6156017796342376845

/-! ## A278800.P13613291993615733020

`A329758(n+1)-A074265(A059449(n))`
-/

namespace A278800.P13613291993615733020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329758 (n + 1) - A074265 (A059449 n).toNat

end

end A278800.P13613291993615733020

/-! ## A278800.P14682748630363942628

`A000196(A135364(n)+n)-A109626(A337271(n))`
-/

namespace A278800.P14682748630363942628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A135364 n + (n : ℤ)).toNat - A109626 (A337271 n).toNat

end

end A278800.P14682748630363942628

/-! ## A278800.P3896159515690042589

`A329758(n+1)-A074265(A018799(2^n)+A000007(n))`
-/

namespace A278800.P3896159515690042589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329758 (n + 1) - A074265 (A018799 (2 ^ n) + A000007 n).toNat

end

end A278800.P3896159515690042589

/-!
# A278801: G.f.: Sum_{k>0} x^prime(k)/(1-x^k).

The programs for A278801, there is no canonical definition to state claims against.
-/

/-! ## A278801.P332416536941003036

`∑{e}[A347084(A005578(n)), #]`
-/

namespace A278801.P332416536941003036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347084 (A005578 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A278801.P332416536941003036

/-! ## A278801.P7796756581907979272

`A001222(A000225(n+1))-A031233(n+1)`
-/

namespace A278801.P7796756581907979272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000225 (n + 1)).toNat - A031233 (n + 1)

end

end A278801.P7796756581907979272

/-! ## A278801.P8659401052310358528

`A000005(n+1)-A022300(A248686(2*n+3))`
-/

namespace A278801.P8659401052310358528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A022300 (A248686 (2 * n + 3)).toNat

end

end A278801.P8659401052310358528

/-! ## A278801.P14889374214332642233

`A000005(n+1)-A333254(A005915(n))`
-/

namespace A278801.P14889374214332642233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A333254 (A005915 n).toNat

end

end A278801.P14889374214332642233

/-! ## A278801.P2766567750465113012

`A000005(n+1)-A006338(A001153(n+1))`
-/

namespace A278801.P2766567750465113012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A006338 (A001153 (n + 1)).toNat

end

end A278801.P2766567750465113012

/-!
# A278802: Number of nX3 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order.

The programs for A278802, there is no canonical definition to state claims against.
-/

/-! ## A278802.P6224250555368312178

`A278807(∑[n+2]+4)`
-/

namespace A278802.P6224250555368312178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278802.P6224250555368312178

/-! ## A278802.P18409138318456963208

`A278807(A167614(n+1))%A017047(n)`
-/

namespace A278802.P18409138318456963208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278807 (A167614 (n + 1)).toNat) (A017047 n)

end

end A278802.P18409138318456963208

/-! ## A278802.P9080573905920251714

`or(A000038(n), A278807(A167614(n+1)))`
-/

namespace A278802.P9080573905920251714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A278807 (A167614 (n + 1)).toNat)

end

end A278802.P9080573905920251714

/-! ## A278802.P9673406059643072044

`or(A005926(n), A278807(A167614(n+1)))`
-/

namespace A278802.P9673406059643072044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005926 n) (A278807 (A167614 (n + 1)).toNat)

end

end A278802.P9673406059643072044

/-! ## A278802.P8936166200681108708

`or(A178333(n), A278807(A167614(n+1)))`
-/

namespace A278802.P8936166200681108708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178333 n) (A278807 (A167614 (n + 1)).toNat)

end

end A278802.P8936166200681108708

/-!
# A278803: Number of n X 4 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order.

The programs for A278803, there is no canonical definition to state claims against.
-/

/-! ## A278803.P15219302984555652133

`A278807(A052905(n)+9)`
-/

namespace A278803.P15219302984555652133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (A052905 n + 9).toNat

end

end A278803.P15219302984555652133

/-! ## A278803.P7371243875338347590

`A278807(A055999(n)+10)`
-/

namespace A278803.P7371243875338347590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (A055999 n + 10).toNat

end

end A278803.P7371243875338347590

/-! ## A278803.P2566447955875311376

`A278807(A167614(n+2)+1)`
-/

namespace A278803.P2566447955875311376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (A167614 (n + 2) + 1).toNat

end

end A278803.P2566447955875311376

/-! ## A278803.P14307394059240169366

`A278807(A000217(n+3)+4)`
-/

namespace A278803.P14307394059240169366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (A000217 (n + 3) + 4).toNat

end

end A278803.P14307394059240169366

/-! ## A278803.P4884165055640638368

`A278807(eq[5, A131818(n+1)])`
-/

namespace A278803.P4884165055640638368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278803.P4884165055640638368

/-!
# A278804: Number of n X 5 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order.

The programs for A278804, there is no canonical definition to state claims against.
-/

/-! ## A278804.P17444605165748747049

`A278807(A155212(n)+13)`
-/

namespace A278804.P17444605165748747049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (A155212 n + 13).toNat

end

end A278804.P17444605165748747049

/-! ## A278804.P9035143134252715298

`A278807(A056000(n)+15)`
-/

namespace A278804.P9035143134252715298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (A056000 n + 15).toNat

end

end A278804.P9035143134252715298

/-! ## A278804.P12073480615829671888

`A278807(eq[7, A066657(n)])`
-/

namespace A278804.P12073480615829671888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278804.P12073480615829671888

/-! ## A278804.P17026121635668184731

`A278807(eq[6, A131818(n+1)])`
-/

namespace A278804.P17026121635668184731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278804.P17026121635668184731

/-! ## A278804.P14265949287345386892

`A278807(Δ[A264443(n)])`
-/

namespace A278804.P14265949287345386892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (f1 (n + 1) - f1 n).toNat

end

end A278804.P14265949287345386892

/-!
# A278805: Number of nX6 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order.

The programs for A278805, there is no canonical definition to state claims against.
-/

/-! ## A278805.P10188683729721325638

`A278807(∑[n+5]+16)`
-/

namespace A278805.P10188683729721325638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A278805.P10188683729721325638

/-! ## A278805.P12589037563400466149

`A278807(A052905(n+3))+A003982(3*n+2)`
-/

namespace A278805.P12589037563400466149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (A052905 (n + 3)).toNat + A003982 (3 * n + 2)

end

end A278805.P12589037563400466149

/-!
# A278806: Number of n X 7 0..2 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order.

The programs for A278806, there is no canonical definition to state claims against.
-/

/-! ## A278806.P18423533489281637067

`A278807(eq[8, A131818(n+1)])`
-/

namespace A278806.P18423533489281637067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278806.P18423533489281637067

/-! ## A278806.P68424270392147244

`A278807(A374008(n+1))`
-/

namespace A278806.P68424270392147244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (A374008 (n + 1)).toNat

end

end A278806.P68424270392147244

/-! ## A278806.P18007630100514814152

`A278807(eq[4, A219347(n)])`
-/

namespace A278806.P18007630100514814152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278806.P18007630100514814152

/-! ## A278806.P757740829332200535

`A278807(eq[6, A193592(n)])`
-/

namespace A278806.P757740829332200535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278806.P757740829332200535

/-! ## A278806.P9170005391154254234

`A278807(eq[6, A243060(n+1)])`
-/

namespace A278806.P9170005391154254234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278806.P9170005391154254234

/-!
# A278814: a(n) = ceiling(sqrt(3n+1)).

The programs for A278814, the canonical program `A278814.P1879609440494676631` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278814 has offset 0).

The definition of A278814 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(3*n+1))` (program `A278814.P1879609440494676631`, by `A278814.P1879609440494676631.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278814.P1879609440494676631

`ceil(sqrt(3*n+1))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278814

/-- `ceil(sqrt(3*n+1))` -/
def P1879609440494676631.Spec : Prop :=
  ∀ n, P1879609440494676631.a n = A278814 n

theorem P1879609440494676631.correct : P1879609440494676631.Spec := by
  intro n
  simp only [A278814]

end A278814

/-! ## A278814.P5220212312775020605

`abs(xor(floor(sqrt(3*n)), -1))`
-/

namespace A278814.P5220212312775020605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (Nat.sqrt (3 * n) : ℤ) (-1)|

end

end A278814.P5220212312775020605

namespace A278814

/-- `abs(xor(floor(sqrt(3*n)), -1))` -/
def P5220212312775020605.Spec : Prop :=
  ∀ n, P5220212312775020605.a n = A278814 n

end A278814

/-! ## A278814.P5097516412089866384

`-xor(floor(sqrt(3*n)), -1)`
-/

namespace A278814.P5097516412089866384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (Nat.sqrt (3 * n) : ℤ) (-1)

end

end A278814.P5097516412089866384

namespace A278814

/-- `-xor(floor(sqrt(3*n)), -1)` -/
def P5097516412089866384.Spec : Prop :=
  ∀ n, P5097516412089866384.a n = A278814 n

end A278814

/-! ## A278814.P12918536470665129180

`A202304(n)+1`
-/

namespace A278814.P12918536470665129180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 n + 1

end

end A278814.P12918536470665129180

namespace A278814

/-- `A202304(n)+1` -/
def P12918536470665129180.Spec : Prop :=
  ∀ n, P12918536470665129180.a n = A278814 n

end A278814

/-! ## A278814.P18331348283547512815

`∑[char[A008810(n)]]`
-/

namespace A278814.P18331348283547512815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278814.P18331348283547512815

namespace A278814

/-- `∑[char[A008810(n)]]` -/
def P18331348283547512815.Spec : Prop :=
  ∀ n, (P18331348283547512815.a n : ℤ) = A278814 n

end A278814

/-! ## A278814.P17158148431231379360

`A183855(n+1)-n`
-/

namespace A278814.P17158148431231379360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183855 (n + 1) - (n : ℤ)

end

end A278814.P17158148431231379360

namespace A278814

/-- `A183855(n+1)-n` -/
def P17158148431231379360.Spec : Prop :=
  ∀ n, P17158148431231379360.a n = A278814 n

end A278814

/-! ## A278814.P12569902215736040715

`A390945(n+1)-A089801(n)`
-/

namespace A278814.P12569902215736040715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390945 (n + 1) - A089801 n

end

end A278814.P12569902215736040715

namespace A278814

/-- `A390945(n+1)-A089801(n)` -/
def P12569902215736040715.Spec : Prop :=
  ∀ n, P12569902215736040715.a n = A278814 n

end A278814

/-! ## A278814.P12945857055652304903

`A101776(A047269(n+1))`
-/

namespace A278814.P12945857055652304903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A047269 (n + 1)).toNat

end

end A278814.P12945857055652304903

namespace A278814

/-- `A101776(A047269(n+1))` -/
def P12945857055652304903.Spec : Prop :=
  ∀ n, P12945857055652304903.a n = A278814 n

end A278814

/-! ## A278814.P12812422422321318566

`A101776(A047273(n+1))`
-/

namespace A278814.P12812422422321318566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A047273 (n + 1)).toNat

end

end A278814.P12812422422321318566

namespace A278814

/-- `A101776(A047273(n+1))` -/
def P12812422422321318566.Spec : Prop :=
  ∀ n, P12812422422321318566.a n = A278814 n

end A278814

/-! ## A278814.P621345078536563054

`A101776(A047260(n+1))`
-/

namespace A278814.P621345078536563054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A047260 (n + 1)).toNat

end

end A278814.P621345078536563054

namespace A278814

/-- `A101776(A047260(n+1))` -/
def P621345078536563054.Spec : Prop :=
  ∀ n, P621345078536563054.a n = A278814 n

end A278814

/-! ## A278814.P5853562704247390467

`A000196(3*n)+1`
-/

namespace A278814.P5853562704247390467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (3 * n) + 1

end

end A278814.P5853562704247390467

namespace A278814

/-- `A000196(3*n)+1` -/
def P5853562704247390467.Spec : Prop :=
  ∀ n, P5853562704247390467.a n = A278814 n

end A278814

/-! ## A278814.P9928715647886298787

`A003059(3*n+1)`
-/

namespace A278814.P9928715647886298787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (3 * n + 1)

end

end A278814.P9928715647886298787

namespace A278814

/-- `A003059(3*n+1)` -/
def P9928715647886298787.Spec : Prop :=
  ∀ n, P9928715647886298787.a n = A278814 n

end A278814

/-! ## A278814.P1983741315683861965

`A008619(A000267(3*n))`
-/

namespace A278814.P1983741315683861965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000267 (3 * n)).toNat

end

end A278814.P1983741315683861965

namespace A278814

/-- `A008619(A000267(3*n))` -/
def P1983741315683861965.Spec : Prop :=
  ∀ n, P1983741315683861965.a n = A278814 n

end A278814

/-! ## A278814.P18295243777910385216

`A004526(A307136(2*n+1+n))`
-/

namespace A278814.P18295243777910385216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A307136 (2 * n + 1 + n)).toNat

end

end A278814.P18295243777910385216

namespace A278814

/-- `A004526(A307136(2*n+1+n))` -/
def P18295243777910385216.Spec : Prop :=
  ∀ n, P18295243777910385216.a n = A278814 n

end A278814

/-! ## A278814.P13209956107299779172

`A135034(3*n+1)`
-/

namespace A278814.P13209956107299779172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (3 * n + 1)

end

end A278814.P13209956107299779172

namespace A278814

/-- `A135034(3*n+1)` -/
def P13209956107299779172.Spec : Prop :=
  ∀ n, P13209956107299779172.a n = A278814 n

end A278814

/-! ## A278814.P14464375523895010074

`A000194(A000037(2*n+1+n))`
-/

namespace A278814.P14464375523895010074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000037 (2 * n + 1 + n)).toNat

end

end A278814.P14464375523895010074

namespace A278814

/-- `A000194(A000037(2*n+1+n))` -/
def P14464375523895010074.Spec : Prop :=
  ∀ n, P14464375523895010074.a n = A278814 n

end A278814

/-! ## A278814.P12392206279413242076

`A000194(A028392(2*n+1+n))`
-/

namespace A278814.P12392206279413242076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A028392 (2 * n + 1 + n)).toNat

end

end A278814.P12392206279413242076

namespace A278814

/-- `A000194(A028392(2*n+1+n))` -/
def P12392206279413242076.Spec : Prop :=
  ∀ n, P12392206279413242076.a n = A278814 n

end A278814

/-! ## A278814.P379803796063197579

`A000194(A078358(2*n+1+n))`
-/

namespace A278814.P379803796063197579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A078358 (2 * n + 1 + n)).toNat

end

end A278814.P379803796063197579

namespace A278814

/-- `A000194(A078358(2*n+1+n))` -/
def P379803796063197579.Spec : Prop :=
  ∀ n, P379803796063197579.a n = A278814 n

end A278814

/-! ## A278814.P14346058609809667553

`A000194(A135668(2*n+1+n))`
-/

namespace A278814.P14346058609809667553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A135668 (2 * n + 1 + n)).toNat

end

end A278814.P14346058609809667553

namespace A278814

/-- `A000194(A135668(2*n+1+n))` -/
def P14346058609809667553.Spec : Prop :=
  ∀ n, P14346058609809667553.a n = A278814 n

end A278814

/-! ## A278814.P14811398717705182824

`A000037(A000037(3*n+1))-A000037(3*n+1)`
-/

namespace A278814.P14811398717705182824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A000037 (3 * n + 1)).toNat - A000037 (3 * n + 1)

end

end A278814.P14811398717705182824

namespace A278814

/-- `A000037(A000037(3*n+1))-A000037(3*n+1)` -/
def P14811398717705182824.Spec : Prop :=
  ∀ n, P14811398717705182824.a n = A278814 n

end A278814

/-!
# A278815: Number of tilings of a 2 X n grid with monomers, dimers, and trimers.

The programs for A278815, the canonical program `A278815.P6990429207825913130` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278815 has offset 0).

The definition of A278815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278815.P6990429207825913130

`3*a(n-1)+2*a(n-2)+5*a(n-3)-2*a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=29, a(4)=109, a(5)=416`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278815

/-- `3*a(n-1)+2*a(n-2)+5*a(n-3)-2*a(n-4)-a(n-6)` -/
def P6990429207825913130.Spec : Prop :=
  ∀ n, P6990429207825913130.a n = A278815 n

theorem P6990429207825913130.correct : P6990429207825913130.Spec := by
  intro n
  simp only [A278815]

end A278815

/-! ## A278815.P5737455650404747184

`A001044(a(n-1))` with `a(0)=1, a(1)=2, a(2)=7, a(3)=29, a(4)=109, a(5)=416`
-/

namespace A278815.P5737455650404747184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7, 29, 109, 416] fun n a =>
  A001044 (a (n - 1)).toNat

end

end A278815.P5737455650404747184

namespace A278815

/-- `A001044(a(n-1))` -/
def P5737455650404747184.Spec : Prop :=
  ∀ n, P5737455650404747184.a n = A278815 n

end A278815

/-!
# A278816: Numbers that can be produced from their own digits by applying one or more of the eight operations {+, -, *, /, sqrt(), ^, !, concat11()}, with no operation used more than once, where "concat11()" means the operation of concatenating two single digits.

The programs for A278816, there is no canonical definition to state claims against.
-/

/-! ## A278816.P14229215000868690937

`7*floor(atan(sqrt(n)))+n`
-/

namespace A278816.P14229215000868690937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ⌊Real.arctan (Real.sqrt (n : ℝ))⌋ + (n : ℤ)

end

end A278816.P14229215000868690937

/-!
# A278818: a(n) is the least k > n such that k + n is square.

The programs for A278818, the canonical program `A278818.P9346971327644386809` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278818 has offset 0).

The definition of A278818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278818.P9346971327644386809

`ceil(sqrt(2*n+1))²-n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278818

/-- `ceil(sqrt(2*n+1))²-n` -/
def P9346971327644386809.Spec : Prop :=
  ∀ n, P9346971327644386809.a n = A278818 n

theorem P9346971327644386809.correct : P9346971327644386809.Spec := by
  intro n
  simp only [A278818]

end A278818

/-! ## A278818.P9050680115606642417

`abs(A000290(floor(sqrt(2*n))+1)-n)`
-/

namespace A278818.P9050680115606642417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 (Nat.sqrt (2 * n) + 1) - (n : ℤ)|

end

end A278818.P9050680115606642417

namespace A278818

/-- `abs(A000290(floor(sqrt(2*n))+1)-n)` -/
def P9050680115606642417.Spec : Prop :=
  ∀ n, P9050680115606642417.a n = A278818 n

end A278818

/-! ## A278818.P2888784474163287174

`A000027(A348596(n)+1+n)`
-/

namespace A278818.P2888784474163287174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A348596 n + 1 + (n : ℤ)).toNat

end

end A278818.P2888784474163287174

namespace A278818

/-- `A000027(A348596(n)+1+n)` -/
def P2888784474163287174.Spec : Prop :=
  ∀ n, P2888784474163287174.a n = A278818 n

end A278818

/-! ## A278818.P14564138541096767327

`A028310(A101776(n)²-n)`
-/

namespace A278818.P14564138541096767327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A101776 n ^ 2 - (n : ℤ)).toNat

end

end A278818.P14564138541096767327

namespace A278818

/-- `A028310(A101776(n)²-n)` -/
def P14564138541096767327.Spec : Prop :=
  ∀ n, P14564138541096767327.a n = A278818 n

end A278818

/-! ## A278818.P16316444703873522108

`abs(A048761(2*n+1)-n)`
-/

namespace A278818.P16316444703873522108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048761 (2 * n + 1) - (n : ℤ)|

end

end A278818.P16316444703873522108

namespace A278818

/-- `abs(A048761(2*n+1)-n)` -/
def P16316444703873522108.Spec : Prop :=
  ∀ n, P16316444703873522108.a n = A278818 n

end A278818

/-! ## A278818.P10735601798286009194

`(A080883(2*n)+n)%(4*(n+1))`
-/

namespace A278818.P10735601798286009194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080883 (2 * n) + (n : ℤ)) (4 * (n + 1) : ℤ)

end

end A278818.P10735601798286009194

namespace A278818

/-- `(A080883(2*n)+n)%(4*(n+1))` -/
def P10735601798286009194.Spec : Prop :=
  ∀ n, P10735601798286009194.a n = A278818 n

end A278818

/-! ## A278818.P17700301925117334744

`A028310(A080883(2*n)+n)`
-/

namespace A278818.P17700301925117334744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A080883 (2 * n) + (n : ℤ)).toNat

end

end A278818.P17700301925117334744

namespace A278818

/-- `A028310(A080883(2*n)+n)` -/
def P17700301925117334744.Spec : Prop :=
  ∀ n, P17700301925117334744.a n = A278818 n

end A278818

/-! ## A278818.P14826435575879128758

`(A080883(2*n)+n)*A056594(4*(n+1))`
-/

namespace A278818.P14826435575879128758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080883 (2 * n) + (n : ℤ)) * A056594 (4 * (n + 1))

end

end A278818.P14826435575879128758

namespace A278818

/-- `(A080883(2*n)+n)*A056594(4*(n+1))` -/
def P14826435575879128758.Spec : Prop :=
  ∀ n, P14826435575879128758.a n = A278818 n

end A278818

/-! ## A278818.P17432473806321879133

`A118759(A080883(2*n)+n)`
-/

namespace A278818.P17432473806321879133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A080883 (2 * n) + (n : ℤ)).toNat

end

end A278818.P17432473806321879133

namespace A278818

/-- `A118759(A080883(2*n)+n)` -/
def P17432473806321879133.Spec : Prop :=
  ∀ n, P17432473806321879133.a n = A278818 n

end A278818

/-! ## A278818.P9608206258382390478

`A004737(A002378(A080883(2*n)+n))`
-/

namespace A278818.P9608206258382390478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A002378 (A080883 (2 * n) + (n : ℤ)).toNat).toNat

end

end A278818.P9608206258382390478

namespace A278818

/-- `A004737(A002378(A080883(2*n)+n))` -/
def P9608206258382390478.Spec : Prop :=
  ∀ n, P9608206258382390478.a n = A278818 n

end A278818

/-!
# A278819: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 94", based on the 5-celled von Neumann neighborhood.

The programs for A278819, there is no canonical definition to state claims against.
-/

/-! ## A278819.P16275261494186925464

`A007088(A278821(n))`
-/

namespace A278819.P16275261494186925464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278821 n).toNat

end

end A278819.P16275261494186925464

/-! ## A278819.P1936321404651183161

`A185544(2*A278821(n))`
-/

namespace A278819.P1936321404651183161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278821 n).toNat

end

end A278819.P1936321404651183161

/-! ## A278819.P17015798236820493616

`A185544(A278821(n)+A278821(n))`
-/

namespace A278819.P17015798236820493616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A278821 n + A278821 n).toNat

end

end A278819.P17015798236820493616

/-!
# A278820: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 94", based on the 5-celled von Neumann neighborhood.

The programs for A278820, there is no canonical definition to state claims against.
-/

/-! ## A278820.P15529790311612737663

`A007088(A278822(n))`
-/

namespace A278820.P15529790311612737663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278822 n).toNat

end

end A278820.P15529790311612737663

/-! ## A278820.P12351519856054026162

`A185544(2*A278822(n))`
-/

namespace A278820.P12351519856054026162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278822 n).toNat

end

end A278820.P12351519856054026162

/-! ## A278820.P17953825838454016799

`A185544(lcm(2, A278822(n)))`
-/

namespace A278820.P17953825838454016799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A278822 n))

end

end A278820.P17953825838454016799

/-! ## A278820.P5574669061176396293

`A185544(A278822(n)+A278822(n))`
-/

namespace A278820.P5574669061176396293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A278822 n + A278822 n).toNat

end

end A278820.P5574669061176396293

/-! ## A278820.P14465589373410819757

`A305989(A278821(n)/A060594(n+1))`
-/

namespace A278820.P14465589373410819757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A278821 n : ℚ) / (A060594 (n + 1) : ℚ))).toNat

end

end A278820.P14465589373410819757

/-!
# A278822: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 94", based on the 5-celled von Neumann neighborhood.

The programs for A278822, there is no canonical definition to state claims against.
-/

/-! ## A278822.P13531131028026953126

`A325401(A278821(n)/A060594(n+1))`
-/

namespace A278822.P13531131028026953126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A278821 n : ℚ) / (A060594 (n + 1) : ℚ))).toNat

end

end A278822.P13531131028026953126

/-! ## A278822.P9502072411133638379

`A325401(A278821(n)/A026517(n))`
-/

namespace A278822.P9502072411133638379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A278821 n : ℚ) / (A026517 n : ℚ))).toNat

end

end A278822.P9502072411133638379

/-! ## A278822.P6485067697908197082

`A325401(A278821(n)/A055642(n))`
-/

namespace A278822.P6485067697908197082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A278821 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A278822.P6485067697908197082

/-! ## A278822.P15064856218975050793

`A030101(A278821(n)/A060594(n+1))`
-/

namespace A278822.P15064856218975050793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A278821 n : ℚ) / (A060594 (n + 1) : ℚ))).toNat

end

end A278822.P15064856218975050793

/-! ## A278822.P5202458750168979967

`A325401(A278821(n)/A112050(n+1))`
-/

namespace A278822.P5202458750168979967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A278821 n : ℚ) / (A112050 (n + 1) : ℚ))).toNat

end

end A278822.P5202458750168979967

/-!
# A278823: 4-Portolan numbers: number of regions formed by n-secting the angles of a square.

The programs for A278823, there is no canonical definition to state claims against.
-/

/-! ## A278823.P3101680824007993317

`A335527(n+1)+1-A335526(n+1)`
-/

namespace A278823.P3101680824007993317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335527 (n + 1) + (1 - A335526 (n + 1))

end

end A278823.P3101680824007993317

/-! ## A278823.P15385341710973539022

`A335527(n+1)+A024000(A335526(n+1))`
-/

namespace A278823.P15385341710973539022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335527 (n + 1) + A024000 (A335526 (n + 1)).toNat

end

end A278823.P15385341710973539022

/-!
# A278827: Queen's moves in chess: possible difference between origin and destination square when the squares are numbered sequentially, row by row.

The programs for A278827, there is no canonical definition to state claims against.
-/

/-! ## A278827.P15089670489664967751

`∪[A278825(n+1), A278826(n+1)]`
-/

namespace A278827.P15089670489664967751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A278827.P15089670489664967751

/-!
# A278831: Minimal number of possible moves at the n-th ply of a chess game, excluding positions where no move is possible.

The programs for A278831, there is no canonical definition to state claims against.
-/

/-! ## A278831.P6672425752847181297

`a(n-1)` with `a(0)=20, a(1)=20, a(2)=19, a(3)=1`
-/

namespace A278831.P6672425752847181297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20, 20, 19, 1] fun n a =>
  a (n - 1)

end

end A278831.P6672425752847181297

/-!
# A278834: Record values of A004090(n) - n, where A004090 is the sum of digits of the Fibonacci numbers A000045.

The programs for A278834, there is no canonical definition to state claims against.
-/

/-! ## A278834.P9784389333270958415

`record[-A280185(n)]`
-/

namespace A278834.P9784389333270958415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A280185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278834.P9784389333270958415

/-! ## A278834.P15045268199247618645

`record[A004090(n)-n]`
-/

namespace A278834.P15045268199247618645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278834.P15045268199247618645

/-! ## A278834.P10590405821046405659

`abs(A280185(A278833(n+1)))`
-/

namespace A278834.P10590405821046405659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280185 (A278833 (n + 1)).toNat|

end

end A278834.P10590405821046405659

/-! ## A278834.P13725524360183361259

`record[A001489(n)+n-A280185(n)]`
-/

namespace A278834.P13725524360183361259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ((n : ℤ) - A280185 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278834.P13725524360183361259

/-! ## A278834.P11807485475720604015

`lcm(A029133(n), A280185(A278833(n+1)))`
-/

namespace A278834.P11807485475720604015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029133 n) (A280185 (A278833 (n + 1)).toNat)

end

end A278834.P11807485475720604015

/-!
# A278835: Prime factors (counting multiplicity) of 10^10^10^10^2 - 1.

The programs for A278835, there is no canonical definition to state claims against.
-/

/-! ## A278835.P16212043373426683376

`p?[A007947(n+1)*A067007(n+1)]`
-/

namespace A278835.P16212043373426683376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A067007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278835.P16212043373426683376

/-! ## A278835.P15879767330994710683

`p?[A019555(n+1)*A067007(n+1)]`
-/

namespace A278835.P15879767330994710683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1) * A067007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278835.P15879767330994710683

/-! ## A278835.P16661552922006644043

`p?[A067007(n+1)*A175781(n+1)]`
-/

namespace A278835.P16661552922006644043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067007 (n + 1) * A175781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278835.P16661552922006644043

/-! ## A278835.P98459006024864594

`p?[A067007(n+1)*A182816(n+1)]`
-/

namespace A278835.P98459006024864594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067007 (n + 1) * A182816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278835.P98459006024864594

/-! ## A278835.P11871407318819114842

`p?[A067007(n+1)*A182938(n+1)]`
-/

namespace A278835.P11871407318819114842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067007 (n + 1) * A182938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278835.P11871407318819114842

/-!
# A278837: Primes p such that the ring of algebraic integers of Q(sqrt(p)) does not have unique factorization.

The programs for A278837, there is no canonical definition to state claims against.
-/

/-! ## A278837.P372087925809636297

`p?[A146209(n+1)]`
-/

namespace A278837.P372087925809636297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278837.P372087925809636297

/-! ## A278837.P13715120653111731005

`record[p?[A146209(A291769(n))]]`
-/

namespace A278837.P13715120653111731005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278837.P13715120653111731005

/-! ## A278837.P16430300510524708253

`record[p?[A146209(A323889(n))]]`
-/

namespace A278837.P16430300510524708253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278837.P16430300510524708253

/-! ## A278837.P928106918122804214

`record[p?[A146209(A324347(n))]]`
-/

namespace A278837.P928106918122804214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278837.P928106918122804214

/-! ## A278837.P9213949061042273068

`∩[A146209(n+1), A061345(n)]`
-/

namespace A278837.P9213949061042273068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278837.P9213949061042273068

/-! ## A278837.P15167702934564236395

`∩[A000040(n+1), A146209(n+1)]`
-/

namespace A278837.P15167702934564236395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278837.P15167702934564236395

/-! ## A278837.P12617409073194837153

`∩[A000430(n+1), A146209(n+1)]`
-/

namespace A278837.P12617409073194837153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278837.P12617409073194837153

/-! ## A278837.P4929524861299256485

`∩[A000961(n+1), A146209(n+1)]`
-/

namespace A278837.P4929524861299256485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278837.P4929524861299256485

/-! ## A278837.P13213193506708605944

`∩[A004139(n+1), A146209(n+1)]`
-/

namespace A278837.P13213193506708605944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278837.P13213193506708605944

/-! ## A278837.P3388604771666032947

`∩[A005180(n+1), A146209(n+1)]`
-/

namespace A278837.P3388604771666032947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278837.P3388604771666032947

/-!
# A278841: a(n) = permanent M_n where M_n is the n X n matrix m(i,j) = A000009(i+j).

The programs for A278841, there is no canonical definition to state claims against.
-/

/-! ## A278841.P16371921818197541526

`A047569(A191301(n)+1)`
-/

namespace A278841.P16371921818197541526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047569 (A191301 n + 1).toNat

end

end A278841.P16371921818197541526

/-!
# A278843: a(n) = permanent M_n where M_n is the n X n matrix m(i,j) = Catalan(i+j).

The programs for A278843, there is no canonical definition to state claims against.
-/

/-! ## A278843.P8276736825478346327

`A368026(A133263(n+2))`
-/

namespace A278843.P8276736825478346327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368026 (A133263 (n + 2)).toNat

end

end A278843.P8276736825478346327

/-!
# A278846: Number of unimodular 2 X 2 matrices having entries in {0,1,...,n} with no entry repeated.

The programs for A278846, there is no canonical definition to state claims against.
-/

/-! ## A278846.P3304185986634013917

`8*A275018(n)`
-/

namespace A278846.P3304185986634013917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A275018 n

end

end A278846.P3304185986634013917

/-! ## A278846.P7900695940709175104

`A008590(A275018(n))`
-/

namespace A278846.P7900695940709175104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A275018 n).toNat

end

end A278846.P7900695940709175104

/-! ## A278846.P6907885977680611663

`A017077(A275018(gcd(n, C(2, n))))-1`
-/

namespace A278846.P6907885977680611663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A275018 (Nat.gcd n (Nat.choose 2 n))).toNat - 1

end

end A278846.P6907885977680611663

/-! ## A278846.P8328317446118485896

`A017077(A275018(round(acot(n)+n)))-1`
-/

namespace A278846.P8328317446118485896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A275018 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat - 1

end

end A278846.P8328317446118485896

/-! ## A278846.P6165527501642992549

`A017077(A275018(abs(1-n)+1))-1`
-/

namespace A278846.P6165527501642992549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A275018 (|1 - (n : ℤ)| + 1).toNat).toNat - 1

end

end A278846.P6165527501642992549

/-! ## A278846.P12761169223594413139

`or(A000035(n), A017077(A275018(n)))-1`
-/

namespace A278846.P12761169223594413139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A017077 (A275018 n).toNat) - 1

end

end A278846.P12761169223594413139

/-! ## A278846.P8542753768050047631

`(A017077(A275018(n))-1)%A000041(n+7)`
-/

namespace A278846.P8542753768050047631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017077 (A275018 n).toNat - 1) (A000041 (n + 7))

end

end A278846.P8542753768050047631

/-!
# A278848: Number of n X n 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278848, there is no canonical definition to state claims against.
-/

/-! ## A278848.P3124723979485486180

`A278855(∑[4*n]+1)`
-/

namespace A278848.P3124723979485486180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278848.P3124723979485486180

/-! ## A278848.P2010202739124813333

`lcm(2, A278855(A001844(n)))`
-/

namespace A278848.P2010202739124813333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A278855 (A001844 n).toNat)

end

end A278848.P2010202739124813333

/-! ## A278848.P6760996575493524620

`A065648(n)*A278855(A001844(n))`
-/

namespace A278848.P6760996575493524620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n * A278855 (A001844 n).toNat

end

end A278848.P6760996575493524620

/-! ## A278848.P15876598284059221190

`and(A057428(n), A278855(A001844(n)))`
-/

namespace A278848.P15876598284059221190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A278855 (A001844 n).toNat)

end

end A278848.P15876598284059221190

/-! ## A278848.P15940986168845568466

`A278855(A001844(n))+A008683(8*(4*n+2))`
-/

namespace A278848.P15940986168845568466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (A001844 n).toNat + A008683 (8 * (4 * n + 2))

end

end A278848.P15940986168845568466

/-!
# A278849: Number of nX2 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278849, there is no canonical definition to state claims against.
-/

/-! ## A278849.P17252282477367152547

`A278855(∑[n+1]+2)`
-/

namespace A278849.P17252282477367152547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278849.P17252282477367152547

/-! ## A278849.P5539691872033150224

`or(char[2], A278855(A000096(n)+3))`
-/

namespace A278849.P5539691872033150224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A278855 (A000096 n + 3).toNat)

end

end A278849.P5539691872033150224

/-! ## A278849.P5292451084750628320

`A014963(4*n+6)*A278855(A000096(n)+3)`
-/

namespace A278849.P5292451084750628320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A278855 (A000096 n + 3).toNat

end

end A278849.P5292451084750628320

/-! ## A278849.P7083234239501667023

`A001222(A008578(n+1))*A278855(A000096(n)+3)`
-/

namespace A278849.P7083234239501667023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat * A278855 (A000096 n + 3).toNat

end

end A278849.P7083234239501667023

/-!
# A278850: Number of nX3 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278850, there is no canonical definition to state claims against.
-/

/-! ## A278850.P10924100616300557415

`A278855(∑[n+2]+4)`
-/

namespace A278850.P10924100616300557415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278850.P10924100616300557415

/-! ## A278850.P5116102206291602191

`A278855(A167614(n+1))+A011744(n)`
-/

namespace A278850.P5116102206291602191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (A167614 (n + 1)).toNat + A011744 n

end

end A278850.P5116102206291602191

/-! ## A278850.P10415820174069884466

`A278855(A167614(n+1))+A025469(n)`
-/

namespace A278850.P10415820174069884466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (A167614 (n + 1)).toNat + A025469 n

end

end A278850.P10415820174069884466

/-! ## A278850.P14773176326333549194

`A278855(A167614(n+1))+A178798(n)`
-/

namespace A278850.P14773176326333549194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (A167614 (n + 1)).toNat + A178798 n

end

end A278850.P14773176326333549194

/-! ## A278850.P11823658429226758211

`A158388(n)*A278855(A167614(n+1))`
-/

namespace A278850.P11823658429226758211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A278855 (A167614 (n + 1)).toNat

end

end A278850.P11823658429226758211

/-!
# A278851: Number of nX4 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278851, there is no canonical definition to state claims against.
-/

/-! ## A278851.P7232059659862247796

`A278855(A374004(n+1))`
-/

namespace A278851.P7232059659862247796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (A374004 (n + 1)).toNat

end

end A278851.P7232059659862247796

/-! ## A278851.P8438774479130094944

`A278855(A141214(n)+7)`
-/

namespace A278851.P8438774479130094944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (A141214 n + 7).toNat

end

end A278851.P8438774479130094944

/-! ## A278851.P8388039623959695833

`A278855(A052905(n)+9)`
-/

namespace A278851.P8388039623959695833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (A052905 n + 9).toNat

end

end A278851.P8388039623959695833

/-! ## A278851.P6471393342823149535

`A278855(A167614(n+2)+1)`
-/

namespace A278851.P6471393342823149535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (A167614 (n + 2) + 1).toNat

end

end A278851.P6471393342823149535

/-! ## A278851.P12564902510771208747

`A278855(A056000(n)+7)`
-/

namespace A278851.P12564902510771208747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (A056000 n + 7).toNat

end

end A278851.P12564902510771208747

/-!
# A278852: Number of nX5 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278852, there is no canonical definition to state claims against.
-/

/-! ## A278852.P17281307076976323839

`A278855(∑[n+4]+11)`
-/

namespace A278852.P17281307076976323839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A278852.P17281307076976323839

/-! ## A278852.P7481109248319137822

`A372064(n+1)+A278855(A167499(n+3))`
-/

namespace A278852.P7481109248319137822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372064 (n + 1) + A278855 (A167499 (n + 3)).toNat

end

end A278852.P7481109248319137822

/-! ## A278852.P11716154055767002004

`A278855(A000217(n+4)+5)+A121262(2*n+3)`
-/

namespace A278852.P11716154055767002004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (A000217 (n + 4) + 5).toNat + A121262 (2 * n + 3)

end

end A278852.P11716154055767002004

/-!
# A278853: Number of nX6 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278853, there is no canonical definition to state claims against.
-/

/-! ## A278853.P2887970602699965117

`A278855(A374007(n+1))`
-/

namespace A278853.P2887970602699965117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (A374007 (n + 1)).toNat

end

end A278853.P2887970602699965117

/-! ## A278853.P2324712290549840266

`A278855(A056115(n)+21)`
-/

namespace A278853.P2324712290549840266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (A056115 n + 21).toNat

end

end A278853.P2324712290549840266

/-! ## A278853.P12242838530886587540

`A278855(A052905(n+3))`
-/

namespace A278853.P12242838530886587540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (A052905 (n + 3)).toNat

end

end A278853.P12242838530886587540

/-! ## A278853.P15071869899419942556

`A278855(eq[3, A219347(n)])`
-/

namespace A278853.P15071869899419942556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278853.P15071869899419942556

/-! ## A278853.P3943768692280304890

`A278855(eq[5, A193592(n)])`
-/

namespace A278853.P3943768692280304890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278853.P3943768692280304890

/-!
# A278854: Number of nX7 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278854, there is no canonical definition to state claims against.
-/

/-! ## A278854.P15778181573356584271

`A278855(A374008(n+1))`
-/

namespace A278854.P15778181573356584271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (A374008 (n + 1)).toNat

end

end A278854.P15778181573356584271

/-! ## A278854.P2576745063815004021

`A278855(eq[11, A066657(n)])`
-/

namespace A278854.P2576745063815004021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278854.P2576745063815004021

/-! ## A278854.P14056305548330971658

`A278855(eq[8, A131818(n+1)])`
-/

namespace A278854.P14056305548330971658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278854.P14056305548330971658

/-! ## A278854.P9093972003610198213

`A278855(eq[4, A219347(n)])`
-/

namespace A278854.P9093972003610198213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278854.P9093972003610198213

/-! ## A278854.P5510848302889066675

`A278855(eq[6, A193592(n)])`
-/

namespace A278854.P5510848302889066675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278854.P5510848302889066675

/-!
# A278855: T(n,k)=Number of nXk 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278855, there is no canonical definition to state claims against.
-/

/-! ## A278855.P4033489955701325468

`A264200(2*(n+1))%A053282(A301922(n+1))`
-/

namespace A278855.P4033489955701325468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264200 (2 * (n + 1))) (A053282 (A301922 (n + 1)).toNat)

end

end A278855.P4033489955701325468

/-! ## A278855.P11759349708890239245

`A268657(3*n+4)%A180736(A000700(n+4))`
-/

namespace A278855.P11759349708890239245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268657 (3 * n + 4)) (A180736 (A000700 (n + 4)).toNat)

end

end A278855.P11759349708890239245

/-!
# A278857: a(n) = permanent M_n where M_n is the n X n matrix m(i,j) = (i-j)^2.

The programs for A278857, there is no canonical definition to state claims against.
-/

/-! ## A278857.P5377532007962786654

`A395593(a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A278857.P5377532007962786654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A395593 (a (n - 1)).toNat

end

end A278857.P5377532007962786654

/-!
# A278859: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 105", based on the 5-celled von Neumann neighborhood.

The programs for A278859, there is no canonical definition to state claims against.
-/

/-! ## A278859.P1513587703893722774

`A281412(n)^lcm(n, -1%∏{e}[n, #])!`
-/

namespace A278859.P1513587703893722774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281412 n ^ Nat.factorial (Int.lcm (n : ℤ) (Int.tmod (-1) ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)))

end

end A278859.P1513587703893722774

/-! ## A278859.P3224601207958846535

`A281412(A004891(n+1))`
-/

namespace A278859.P3224601207958846535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281412 (A004891 (n + 1)).toNat

end

end A278859.P3224601207958846535

/-! ## A278859.P3653210575153413508

`A281412(A004902(n+1))`
-/

namespace A278859.P3653210575153413508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281412 (A004902 (n + 1)).toNat

end

end A278859.P3653210575153413508

/-! ## A278859.P9462513953656724193

`A281412(A004913(n+1))`
-/

namespace A278859.P9462513953656724193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281412 (A004913 (n + 1)).toNat

end

end A278859.P9462513953656724193

/-!
# A278863: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 105", based on the 5-celled von Neumann neighborhood.

The programs for A278863, there is no canonical definition to state claims against.
-/

/-! ## A278863.P16612874324417403964

`A281413(n)^Δ[2^ceil(log2(n+1))]!`
-/

namespace A278863.P16612874324417403964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281413 n ^ Nat.factorial (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A278863.P16612874324417403964

/-! ## A278863.P9459777784983231768

`A281413(A004890(n+1))`
-/

namespace A278863.P9459777784983231768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281413 (A004890 (n + 1)).toNat

end

end A278863.P9459777784983231768

/-! ## A278863.P14640000604249014976

`A281413(A004901(n+1))`
-/

namespace A278863.P14640000604249014976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281413 (A004901 (n + 1)).toNat

end

end A278863.P14640000604249014976

/-!
# A278864: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 97", based on the 5-celled von Neumann neighborhood.

The programs for A278864, there is no canonical definition to state claims against.
-/

/-! ## A278864.P843430943740501351

`A007088(A278866(n))`
-/

namespace A278864.P843430943740501351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278866 n).toNat

end

end A278864.P843430943740501351

/-! ## A278864.P17784696393596335296

`A007088(A281287(n))`
-/

namespace A278864.P17784696393596335296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281287 n).toNat

end

end A278864.P17784696393596335296

/-!
# A278865: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 97", based on the 5-celled von Neumann neighborhood.

The programs for A278865, there is no canonical definition to state claims against.
-/

/-! ## A278865.P9428436986762324919

`A007088(A278867(n))`
-/

namespace A278865.P9428436986762324919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278867 n).toNat

end

end A278865.P9428436986762324919

/-! ## A278865.P8156889564721270076

`A007088(A281288(n))`
-/

namespace A278865.P8156889564721270076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281288 n).toNat

end

end A278865.P8156889564721270076

/-!
# A278866: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 97", based on the 5-celled von Neumann neighborhood.

The programs for A278866, there is no canonical definition to state claims against.
-/

/-! ## A278866.P9467896421627662248

`filter[A281287(n), A105234(#)]`
-/

namespace A278866.P9467896421627662248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A278866.P9467896421627662248

/-! ## A278866.P9095665080683737338

`filter[A281287(n), A152822(#)]`
-/

namespace A278866.P9095665080683737338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A278866.P9095665080683737338

/-! ## A278866.P16493698301692408695

`filter[A281287(n), A374045(#)]`
-/

namespace A278866.P16493698301692408695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A278866.P16493698301692408695

/-! ## A278866.P2711742823992092139

`∑{d}[A281287(n), A000010(#)]`
-/

namespace A278866.P2711742823992092139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A278866.P2711742823992092139

/-! ## A278866.P7274406150318612350

`A281287(n*A015161(n)!)`
-/

namespace A278866.P7274406150318612350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281287 (n * Nat.factorial (A015161 n).toNat)

end

end A278866.P7274406150318612350

/-!
# A278867: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 97", based on the 5-celled von Neumann neighborhood.

The programs for A278867, there is no canonical definition to state claims against.
-/

/-! ## A278867.P2482440297587146942

`A015161(n)!*A281288(n)`
-/

namespace A278867.P2482440297587146942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A015161 n).toNat : ℤ) * A281288 n

end

end A278867.P2482440297587146942

/-! ## A278867.P5613508742350128145

`A281288(n*(A015161(n)+1))`
-/

namespace A278867.P5613508742350128145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281288 ((n : ℤ) * (A015161 n + 1)).toNat

end

end A278867.P5613508742350128145

/-! ## A278867.P8138716519928068244

`A281288(n)%A004062(n+1)`
-/

namespace A278867.P8138716519928068244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281288 n) (A004062 (n + 1))

end

end A278867.P8138716519928068244

/-! ## A278867.P3263786424730537577

`A281288(n)+A079204(A079213(n))`
-/

namespace A278867.P3263786424730537577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281288 n + A079204 (A079213 n).toNat

end

end A278867.P3263786424730537577

/-! ## A278867.P4668411058925157371

`A316864(A007088(n))+A281288(n)`
-/

namespace A278867.P4668411058925157371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007088 n).toNat + A281288 n

end

end A278867.P4668411058925157371

/-!
# A278869: Sophie Germain primes p such that p+6 and p-6 are primes.

The programs for A278869, there is no canonical definition to state claims against.
-/

/-! ## A278869.P4509037339992768434

`∩[A005384(n+1), A006489(n+1)]`
-/

namespace A278869.P4509037339992768434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278869.P4509037339992768434

/-! ## A278869.P6307260162591764073

`∩[A006489(n+1), A348511(n+1)]`
-/

namespace A278869.P6307260162591764073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278869.P6307260162591764073

/-! ## A278869.P2983817288351215667

`∩[A006489(n+1), A364926(n+1)]`
-/

namespace A278869.P2983817288351215667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278869.P2983817288351215667

/-! ## A278869.P14497450706912435370

`∩[A006489(n+1), A246857(n+1)]`
-/

namespace A278869.P14497450706912435370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278869.P14497450706912435370

/-! ## A278869.P12558287530910343149

`∩[A005384(n+1), A087681(n+1)]`
-/

namespace A278869.P12558287530910343149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278869.P12558287530910343149

/-! ## A278869.P16091622749333623303

`∩[A087681(n+1), A348511(n+1)]`
-/

namespace A278869.P16091622749333623303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278869.P16091622749333623303

/-! ## A278869.P8857062478201430664

`∩[A087681(n+1), A364926(n+1)]`
-/

namespace A278869.P8857062478201430664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278869.P8857062478201430664

/-! ## A278869.P3718235237190988857

`∩[A006489(n+1), A215751(n+1)]`
-/

namespace A278869.P3718235237190988857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278869.P3718235237190988857

/-! ## A278869.P12113173829211958218

`∩[A006489(n+1), A259973(n+1)]`
-/

namespace A278869.P12113173829211958218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278869.P12113173829211958218

/-! ## A278869.P12537732464438543523

`∩[A006489(n+1), A163778(n+1)]`
-/

namespace A278869.P12537732464438543523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278869.P12537732464438543523

/-!
# A278870: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 99", based on the 5-celled von Neumann neighborhood.

The programs for A278870, there is no canonical definition to state claims against.
-/

/-! ## A278870.P16838159680158324224

`A007088(A278872(n))`
-/

namespace A278870.P16838159680158324224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278872 n).toNat

end

end A278870.P16838159680158324224

/-! ## A278870.P8071990668308047306

`A185544(2*A278872(n))`
-/

namespace A278870.P8071990668308047306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278872 n).toNat

end

end A278870.P8071990668308047306

/-! ## A278870.P3384448322057779638

`∏{e}[7^n, A278898(#)]`
-/

namespace A278870.P3384448322057779638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A278898 (Nat.factorization (f1 n) p)

end

end A278870.P3384448322057779638

/-! ## A278870.P6889942682608476116

`A278898(A073789(n))`
-/

namespace A278870.P6889942682608476116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278898 (A073789 n).toNat

end

end A278870.P6889942682608476116

/-!
# A278871: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 99", based on the 5-celled von Neumann neighborhood.

The programs for A278871, there is no canonical definition to state claims against.
-/

/-! ## A278871.P17689100489846884137

`A007088(A278873(n))`
-/

namespace A278871.P17689100489846884137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278873 n).toNat

end

end A278871.P17689100489846884137

/-! ## A278871.P1958970133914265664

`A185544(2*A278873(n))`
-/

namespace A278871.P1958970133914265664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278873 n).toNat

end

end A278871.P1958970133914265664

/-! ## A278871.P4179903483397441846

`A278899(A073789(n))`
-/

namespace A278871.P4179903483397441846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278899 (A073789 n).toNat

end

end A278871.P4179903483397441846

/-! ## A278871.P4383777739263289781

`A278899(A004902(n+1))`
-/

namespace A278871.P4383777739263289781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278899 (A004902 (n + 1)).toNat

end

end A278871.P4383777739263289781

/-!
# A278872: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 99", based on the 5-celled von Neumann neighborhood.

The programs for A278872, there is no canonical definition to state claims against.
-/

/-! ## A278872.P13074179882212145278

`∏{e}[7^n, A278900(#)]`
-/

namespace A278872.P13074179882212145278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A278900 (Nat.factorization (f1 n) p)

end

end A278872.P13074179882212145278

/-! ## A278872.P7182909006188701440

`A278900(A002034(n!))`
-/

namespace A278872.P7182909006188701440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278900 (A002034 (Nat.factorial n)).toNat

end

end A278872.P7182909006188701440

/-! ## A278872.P7583693133941390895

`A278900(A004891(n+1))`
-/

namespace A278872.P7583693133941390895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278900 (A004891 (n + 1)).toNat

end

end A278872.P7583693133941390895

/-! ## A278872.P13065607138060277410

`A278900(A004902(n+1))`
-/

namespace A278872.P13065607138060277410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278900 (A004902 (n + 1)).toNat

end

end A278872.P13065607138060277410

/-!
# A278873: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 99", based on the 5-celled von Neumann neighborhood.

The programs for A278873, there is no canonical definition to state claims against.
-/

/-! ## A278873.P2007304216411875307

`A278901(A004891(n+1))`
-/

namespace A278873.P2007304216411875307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278901 (A004891 (n + 1)).toNat

end

end A278873.P2007304216411875307

/-! ## A278873.P7714287445955480032

`A278901(A004902(n+1))`
-/

namespace A278873.P7714287445955480032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278901 (A004902 (n + 1)).toNat

end

end A278873.P7714287445955480032

/-! ## A278873.P12179350196153467490

`A278901(A004913(n+1))`
-/

namespace A278873.P12179350196153467490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278901 (A004913 (n + 1)).toNat

end

end A278873.P12179350196153467490

/-! ## A278873.P7610995230573239802

`A278901(A032551(n+1))`
-/

namespace A278873.P7610995230573239802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278901 (A032551 (n + 1)).toNat

end

end A278873.P7610995230573239802

/-!
# A278874: Number of tilings of a 2 X n rectangle using pentominoes of any shape and monominoes.

The programs for A278874, there is no canonical definition to state claims against.
-/

/-! ## A278874.P5524035448008853414

`A278657(∑[n+3])`
-/

namespace A278874.P5524035448008853414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278874.P5524035448008853414

/-! ## A278874.P981422394025343923

`and(-1, A278657(A141214(n)))`
-/

namespace A278874.P981422394025343923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A278657 (A141214 n).toNat)

end

end A278874.P981422394025343923

/-! ## A278874.P4589322626020800080

`lcm(1-and(2, n), A278657(A027379(n+1)))`
-/

namespace A278874.P4589322626020800080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A278657 (A027379 (n + 1)).toNat)

end

end A278874.P4589322626020800080

/-!
# A278875: Number of tilings of a 3 X n rectangle using pentominoes of any shape and monominoes.

The programs for A278875, there is no canonical definition to state claims against.
-/

/-! ## A278875.P15225529860927356362

`A278657(∑[n+4]+2)`
-/

namespace A278875.P15225529860927356362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278875.P15225529860927356362

/-! ## A278875.P4942685290234245183

`A014722(n)*A278657(A167614(n+2))`
-/

namespace A278875.P4942685290234245183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014722 n * A278657 (A167614 (n + 2)).toNat

end

end A278875.P4942685290234245183

/-!
# A278876: Number of tilings of a 4 X n rectangle using pentominoes of any shape and monominoes.

The programs for A278876, there is no canonical definition to state claims against.
-/

/-! ## A278876.P16959902621935600936

`A278657(∑[n+5]+5)`
-/

namespace A278876.P16959902621935600936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A278876.P16959902621935600936

/-! ## A278876.P15002528253167573730

`and(-1, A278657(A052905(n+2)))`
-/

namespace A278876.P15002528253167573730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A278657 (A052905 (n + 2)).toNat)

end

end A278876.P15002528253167573730

/-! ## A278876.P3588546899211315672

`A278657(A052905(n+2))+A025439(n)`
-/

namespace A278876.P3588546899211315672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (A052905 (n + 2)).toNat + A025439 n

end

end A278876.P3588546899211315672

/-!
# A278877: Number of tilings of a 6 X n rectangle using pentominoes of any shape and monominoes.

The programs for A278877, there is no canonical definition to state claims against.
-/

/-! ## A278877.P1460476249017009005

`A278657(A166136(n+5))`
-/

namespace A278877.P1460476249017009005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (A166136 (n + 5)).toNat

end

end A278877.P1460476249017009005

/-! ## A278877.P742472976592147790

`A278657(A056121(n)+21)`
-/

namespace A278877.P742472976592147790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (A056121 n + 21).toNat

end

end A278877.P742472976592147790

/-! ## A278877.P7621905552962290649

`A278657(A302537(n)+26)`
-/

namespace A278877.P7621905552962290649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (A302537 n + 26).toNat

end

end A278877.P7621905552962290649

/-! ## A278877.P5430918643852962099

`A278657(A056119(n)+27)`
-/

namespace A278877.P5430918643852962099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (A056119 n + 27).toNat

end

end A278877.P5430918643852962099

/-! ## A278877.P10210578427899844093

`A278657(eq[6, A002262(n)])`
-/

namespace A278877.P10210578427899844093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278877.P10210578427899844093

/-!
# A278878: Number of tilings of a 7 X n rectangle using pentominoes of any shape and monominoes.

The programs for A278878, there is no canonical definition to state claims against.
-/

/-! ## A278878.P3126366588359235772

`A278657(A155212(n+4))`
-/

namespace A278878.P3126366588359235772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (A155212 (n + 4)).toNat

end

end A278878.P3126366588359235772

/-! ## A278878.P14756216181906288339

`A278657(eq[7, A002262(n)])`
-/

namespace A278878.P14756216181906288339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278878.P14756216181906288339

/-! ## A278878.P11986691117347703260

`A278657(eq[7, A025581(n)])`
-/

namespace A278878.P11986691117347703260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278878.P11986691117347703260

/-! ## A278878.P14922375509079285546

`A278657(eq[7, A133233(n)])`
-/

namespace A278878.P14922375509079285546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278878.P14922375509079285546

/-! ## A278878.P16541566927503476392

`A278657(eq[7, A191532(n)])`
-/

namespace A278878.P16541566927503476392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278878.P16541566927503476392

/-!
# A278879: a(n) = Sum_{k=0..n-1} (k+1)*binomial(n,k) * a(k) for n > 0 with a(0) = 1.

The programs for A278879, there is no canonical definition to state claims against.
-/

/-! ## A278879.P2570443472695322745

`A109812(A249592(n))`
-/

namespace A278879.P2570443472695322745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109812 (A249592 n).toNat

end

end A278879.P2570443472695322745

/-!
# A278880: Triangle where g.f. S = S(x,m) satisfies: S = x/(G(-S^2)*G(-m*S^2)) such that G(x) = 1 + x*G(x)^2 is the g.f. of the Catalan numbers (A000108), as read by rows of coefficients T(n,k) of x^(2*n-1)*m^k in S(x,m) for n>=1, k=0..n-1.

The programs for A278880, there is no canonical definition to state claims against.
-/

/-! ## A278880.P14389128087676973100

`A269394(A181143(n))`
-/

namespace A278880.P14389128087676973100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A181143 n).toNat

end

end A278880.P14389128087676973100

/-! ## A278880.P14964223756952350785

`A118170(A181143(n)-A174116(n))`
-/

namespace A278880.P14964223756952350785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118170 (A181143 n - A174116 n).toNat

end

end A278880.P14964223756952350785

/-! ## A278880.P13697719944298498367

`A111910(n)-A185644(A008292(n+1))`
-/

namespace A278880.P13697719944298498367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111910 n - A185644 (A008292 (n + 1)).toNat

end

end A278880.P13697719944298498367

/-!
# A278881: Triangle where g.f. C = C(x,m) and related series S = S(x,m) and D = D(x,m) satisfy S = x*C*D, C = 1 + x*S*D, and D = 1 + m*x*S*C, as read by rows of coefficients T(n,k) of x^(2*n)*m^k in C(x,m) for n>=0, k=0..n.

The programs for A278881, there is no canonical definition to state claims against.
-/

/-! ## A278881.P10046810267509861602

`A278882(A061579(n))`
-/

namespace A278881.P10046810267509861602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278882 (A061579 n).toNat

end

end A278881.P10046810267509861602

/-! ## A278881.P15038795939202576061

`A278882(A114327(n)+n)`
-/

namespace A278881.P15038795939202576061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278882 (A114327 n + (n : ℤ)).toNat

end

end A278881.P15038795939202576061

/-! ## A278881.P5016336603347775107

`A278882(A038722(n+1)-1)`
-/

namespace A278881.P5016336603347775107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278882 (A038722 (n + 1) - 1).toNat

end

end A278881.P5016336603347775107

/-! ## A278881.P10054860425912356984

`A278882(A093995(n+1)-(n+1))`
-/

namespace A278881.P10054860425912356984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278882 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A278881.P10054860425912356984

/-! ## A278881.P1608596711571822195

`A278882(A002378(n)%A014132(n+1))`
-/

namespace A278881.P1608596711571822195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278882 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A278881.P1608596711571822195

/-! ## A278881.P8463272210546332124

`A278882((∑[A103516(n)]-n)%(2*n+1))`
-/

namespace A278881.P8463272210546332124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278882 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) (2 * n + 1 : ℤ)).toNat

end

end A278881.P8463272210546332124

/-!
# A278882: Triangle where g.f. D = D(x,m) and related series S = S(x,m) and C = C(x,m) satisfy S = x*C*D, C = 1 + x*S*D, and D = 1 + m*x*S*C, as read by rows of coefficients T(n,k) of x^(2*n)*m^k in C(x,m) for n>=1, k=0..n.

The programs for A278882, there is no canonical definition to state claims against.
-/

/-! ## A278882.P13376510120682662632

`A278881(∑[char[∑[n]]]²-(n+1))`
-/

namespace A278882.P13376510120682662632
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278881 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A278882.P13376510120682662632

/-! ## A278882.P15693741695121186354

`lcm(A020985(n), A278881(A061579(n)))`
-/

namespace A278882.P15693741695121186354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A278881 (A061579 n).toNat)

end

end A278882.P15693741695121186354

/-! ## A278882.P13211724735321715951

`A278881(A061579(n))+A000007(n+3)`
-/

namespace A278882.P13211724735321715951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278881 (A061579 n).toNat + A000007 (n + 3)

end

end A278882.P13211724735321715951

/-! ## A278882.P7663030328555544259

`A278881(A061579(n))+and(1, A285663(2*(n+1)))`
-/

namespace A278882.P7663030328555544259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278881 (A061579 n).toNat + Int.land 1 (A285663 (2 * (n + 1)))

end

end A278882.P7663030328555544259

/-! ## A278882.P16698409335783895566

`A000034(A016825(n))*A278881(A061579(n))`
-/

namespace A278882.P16698409335783895566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A016825 n).toNat * A278881 (A061579 n).toNat

end

end A278882.P16698409335783895566

/-! ## A278882.P953876650140655590

`A278881(A057944(n))*A278881(A061579(n))`
-/

namespace A278882.P953876650140655590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278881 (A057944 n).toNat * A278881 (A061579 n).toNat

end

end A278882.P953876650140655590

/-! ## A278882.P15262434582348977394

`A278881(A061579(n))%A000032(n)`
-/

namespace A278882.P15262434582348977394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278881 (A061579 n).toNat) (A000032 n)

end

end A278882.P15262434582348977394

/-! ## A278882.P15185502519619292403

`∑{d}[A278881(A061579(n)), A000010(#)]`
-/

namespace A278882.P15185502519619292403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278881 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A278882.P15185502519619292403

/-!
# A278883: a(n) = (4*n+1) * ( binomial(3*n,n)/(2*n+1) )^2.

The programs for A278883, the canonical program `A278883.P7096978145139040325` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278883 has offset 0).

The definition of A278883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278883.P7096978145139040325

`(4*n+1)*(C(3*n, n)/(2*n+1))²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278883

/-- `(4*n+1)*(C(3*n, n)/(2*n+1))²` -/
def P7096978145139040325.Spec : Prop :=
  ∀ n, P7096978145139040325.a n = (A278883 n : ℚ)

end A278883

/-! ## A278883.P10704008533526068226

`A001764(n)²*(4*n+1)`
-/

namespace A278883.P10704008533526068226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n ^ 2 * (4 * n + 1 : ℤ)

end

end A278883.P10704008533526068226

namespace A278883

/-- `A001764(n)²*(4*n+1)` -/
def P10704008533526068226.Spec : Prop :=
  ∀ n, P10704008533526068226.a n = A278883 n

end A278883

/-! ## A278883.P15175228282898902992

`A047749(2*n)²*(4*n+1)`
-/

namespace A278883.P15175228282898902992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n) ^ 2 * (4 * n + 1 : ℤ)

end

end A278883.P15175228282898902992

namespace A278883

/-- `A047749(2*n)²*(4*n+1)` -/
def P15175228282898902992.Spec : Prop :=
  ∀ n, P15175228282898902992.a n = A278883 n

end A278883

/-! ## A278883.P17201361702509379798

`A001764(n)*A052227(n)`
-/

namespace A278883.P17201361702509379798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A052227 n

end

end A278883.P17201361702509379798

namespace A278883

/-- `A001764(n)*A052227(n)` -/
def P17201361702509379798.Spec : Prop :=
  ∀ n, P17201361702509379798.a n = A278883 n

end A278883

/-! ## A278883.P3644049931798484244

`(A004767(n)-2)*A001764(n)²`
-/

namespace A278883.P3644049931798484244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004767 n - 2) * A001764 n ^ 2

end

end A278883.P3644049931798484244

namespace A278883

/-- `(A004767(n)-2)*A001764(n)²` -/
def P3644049931798484244.Spec : Prop :=
  ∀ n, P3644049931798484244.a n = A278883 n

end A278883

/-! ## A278883.P2473824700193760825

`(A016777(n)+n)*A001764(n)²`
-/

namespace A278883.P2473824700193760825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n + (n : ℤ)) * A001764 n ^ 2

end

end A278883.P2473824700193760825

namespace A278883

/-- `(A016777(n)+n)*A001764(n)²` -/
def P2473824700193760825.Spec : Prop :=
  ∀ n, P2473824700193760825.a n = A278883 n

end A278883

/-! ## A278883.P3409044091985111592

`A001764(n)*A182584(2*n+1)`
-/

namespace A278883.P3409044091985111592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A182584 (2 * n + 1)

end

end A278883.P3409044091985111592

namespace A278883

/-- `A001764(n)*A182584(2*n+1)` -/
def P3409044091985111592.Spec : Prop :=
  ∀ n, P3409044091985111592.a n = A278883 n

end A278883

/-! ## A278883.P10622029631853046000

`A001764(n)*A001764(n)*A016813(n)`
-/

namespace A278883.P10622029631853046000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A001764 n * A016813 n

end

end A278883.P10622029631853046000

namespace A278883

/-- `A001764(n)*A001764(n)*A016813(n)` -/
def P10622029631853046000.Spec : Prop :=
  ∀ n, P10622029631853046000.a n = A278883 n

end A278883

/-! ## A278883.P5564222318540136360

`A052227(n)/A016813(n)*A052227(n)`
-/

namespace A278883.P5564222318540136360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052227 n : ℚ) / (A016813 n : ℚ) * (A052227 n : ℚ)

end

end A278883.P5564222318540136360

namespace A278883

/-- `A052227(n)/A016813(n)*A052227(n)` -/
def P5564222318540136360.Spec : Prop :=
  ∀ n, P5564222318540136360.a n = (A278883 n : ℚ)

end A278883

/-! ## A278883.P5810268834549608752

`A052227(n)/A005809(n)*A188681(n)`
-/

namespace A278883.P5810268834549608752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052227 n : ℚ) / (A005809 n : ℚ) * (A188681 n : ℚ)

end

end A278883.P5810268834549608752

namespace A278883

/-- `A052227(n)/A005809(n)*A188681(n)` -/
def P5810268834549608752.Spec : Prop :=
  ∀ n, P5810268834549608752.a n = (A278883 n : ℚ)

end A278883

/-!
# A278884: a(n) = binomial(3*n-1,n) * binomial(3*n,n)/(2*n+1).

The programs for A278884, there is no canonical definition to state claims against.
-/

/-! ## A278884.P13717357471952402491

`C(abs(1-3*n), n)*A001764(n)`
-/

namespace A278884.P13717357471952402491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose |1 - (3 * n : ℤ)|.toNat n : ℤ) * A001764 n

end

end A278884.P13717357471952402491

/-! ## A278884.P10554121139153570068

`A001764(n)*A165817(n)`
-/

namespace A278884.P10554121139153570068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A165817 n

end

end A278884.P10554121139153570068

/-! ## A278884.P10575288076812310872

`A047749(2*n)*A165817(n)`
-/

namespace A278884.P10575288076812310872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n) * A165817 n

end

end A278884.P10575288076812310872

/-! ## A278884.P2126110489693997393

`record[C(A014682(n), n)]*A001764(n)`
-/

namespace A278884.P2126110489693997393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014682 n).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) * A001764 n

end

end A278884.P2126110489693997393

/-! ## A278884.P4565687530663827871

`record[C(A173732(n), n)]*A001764(n)`
-/

namespace A278884.P4565687530663827871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A173732 n).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) * A001764 n

end

end A278884.P4565687530663827871

/-! ## A278884.P7937580304478980333

`record[C(n, A342369(n))]*A001764(n)`
-/

namespace A278884.P7937580304478980333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A342369 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) * A001764 n

end

end A278884.P7937580304478980333

/-! ## A278884.P17119639817985887817

`∑{d}[n+1, A251662(#)]*A165817(n)`
-/

namespace A278884.P17119639817985887817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A251662 d) * A165817 n

end

end A278884.P17119639817985887817

/-! ## A278884.P16267278702130089232

`record[C(n+1, A146535(n+1))]*A001764(n)`
-/

namespace A278884.P16267278702130089232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A146535 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) * A001764 n

end

end A278884.P16267278702130089232

/-! ## A278884.P8239197652772816160

`A001764(n)*A081204(A004273(n))`
-/

namespace A278884.P8239197652772816160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A081204 (A004273 n).toNat

end

end A278884.P8239197652772816160

/-! ## A278884.P12156462191253612248

`A116637(A004277(n))/2*A165817(n)`
-/

namespace A278884.P12156462191253612248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 (A004277 n).toNat : ℚ) / 2 * (A165817 n : ℚ)

end

end A278884.P12156462191253612248

/-!
# A278888: Central terms of triangle A278885: a(n) = A278885(n,n+1) = -A278885(n,n) for n>=1.

The programs for A278888, there is no canonical definition to state claims against.
-/

/-! ## A278888.P8054752302123556503

`A278885((n+1)²+1)`
-/

namespace A278888.P8054752302123556503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278885 ((n + 1) ^ 2 + 1)

end

end A278888.P8054752302123556503

/-! ## A278888.P17743262961691607521

`A278885(A002522(n+1))+A000007(3*(n+1))`
-/

namespace A278888.P17743262961691607521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278885 (A002522 (n + 1)).toNat + A000007 (3 * (n + 1))

end

end A278888.P17743262961691607521

/-!
# A278889: Central terms of triangles A278886 and A278887: a(n) = A278886(n,n) = A278887(n,n+1) for n>=0.

The programs for A278889, there is no canonical definition to state claims against.
-/

/-! ## A278889.P4324161474210346706

`A278886(∑[2*n])`
-/

namespace A278889.P4324161474210346706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278886 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278889.P4324161474210346706

/-! ## A278889.P1019626484511754145

`A033999(n)*A278887(A002378(n))`
-/

namespace A278889.P1019626484511754145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A278887 (A002378 n).toNat

end

end A278889.P1019626484511754145

/-! ## A278889.P132871574022366692

`A278886(A002378(n))%A001348(n+1)`
-/

namespace A278889.P132871574022366692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278886 (A002378 n).toNat) (A001348 (n + 1))

end

end A278889.P132871574022366692

/-! ## A278889.P598475790966019602

`A278886(A002620(2*n+1))+A000035(2*n)`
-/

namespace A278889.P598475790966019602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278886 (A002620 (2 * n + 1)).toNat + A000035 (2 * n)

end

end A278889.P598475790966019602

/-! ## A278889.P10731314048424672035

`A261959(A000217(n))*A278886(A002620(2*n+1))`
-/

namespace A278889.P10731314048424672035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (A000217 n).toNat * A278886 (A002620 (2 * n + 1)).toNat

end

end A278889.P10731314048424672035

/-!
# A278890: Number of nX2 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278890, there is no canonical definition to state claims against.
-/

/-! ## A278890.P15985053693275593101

`A278896(∑[n+1]+2)`
-/

namespace A278890.P15985053693275593101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278896 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278890.P15985053693275593101

/-! ## A278890.P11278629781178459090

`A278896(A101881(2*n+1))%A171461(n)`
-/

namespace A278890.P11278629781178459090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278896 (A101881 (2 * n + 1)).toNat) (A171461 n)

end

end A278890.P11278629781178459090

/-! ## A278890.P13713905984450000800

`A278896(A101881(2*n+1))+A036859(n+1)`
-/

namespace A278890.P13713905984450000800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278896 (A101881 (2 * n + 1)).toNat + A036859 (n + 1)

end

end A278890.P13713905984450000800

/-! ## A278890.P12616313352918379409

`A349343(2*(n+1))+A278896(A101881(2*n+1))`
-/

namespace A278890.P12616313352918379409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349343 (2 * (n + 1)) + A278896 (A101881 (2 * n + 1)).toNat

end

end A278890.P12616313352918379409

/-!
# A278891: Number of nX3 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278891, there is no canonical definition to state claims against.
-/

/-! ## A278891.P4078152262366093505

`A278896(∑[n+2]+4)`
-/

namespace A278891.P4078152262366093505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278896 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278891.P4078152262366093505

/-! ## A278891.P6169639921371835513

`A278896(A167614(n+1))+A025469(n)`
-/

namespace A278891.P6169639921371835513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278896 (A167614 (n + 1)).toNat + A025469 n

end

end A278891.P6169639921371835513

/-! ## A278891.P15596941039501183509

`A057427(n)*A278896(A167614(n+1))`
-/

namespace A278891.P15596941039501183509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A278896 (A167614 (n + 1)).toNat

end

end A278891.P15596941039501183509

/-! ## A278891.P65727601518075866

`lcm(A040001(n), A278896(A167614(n+1)))`
-/

namespace A278891.P65727601518075866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A278896 (A167614 (n + 1)).toNat)

end

end A278891.P65727601518075866

/-! ## A278891.P15448696027679538159

`A278896(A167614(n+1))%A278892(n+1)`
-/

namespace A278891.P15448696027679538159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278896 (A167614 (n + 1)).toNat) (A278892 (n + 1))

end

end A278891.P15448696027679538159

/-!
# A278892: Number of n X 4 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278892, there is no canonical definition to state claims against.
-/

/-! ## A278892.P16667535586639626759

`A278896(A167614(n+2)+1)`
-/

namespace A278892.P16667535586639626759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278896 (A167614 (n + 2) + 1).toNat

end

end A278892.P16667535586639626759

/-! ## A278892.P17454991020240448563

`A278896(eq[1, A193592(n)-2])`
-/

namespace A278892.P17454991020240448563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278892.P17454991020240448563

/-!
# A278893: Number of nX5 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278893, there is no canonical definition to state claims against.
-/

/-! ## A278893.P14340782135651317789

`A278896(A374005(n+1))`
-/

namespace A278893.P14340782135651317789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278896 (A374005 (n + 1)).toNat

end

end A278893.P14340782135651317789

/-! ## A278893.P2107139864831363406

`A278896(eq[4, A193592(n)])`
-/

namespace A278893.P2107139864831363406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278893.P2107139864831363406

/-! ## A278893.P17202438788647879739

`A278896(eq[5, A200370(n+1)])`
-/

namespace A278893.P17202438788647879739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278893.P17202438788647879739

/-!
# A278894: 

The programs for A278894, there is no canonical definition to state claims against.
-/

/-! ## A278894.P11703214142610591775

`A278896(A055999(n+3)+A000041(floor(1/(n+1))))`
-/

namespace A278894.P11703214142610591775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278896 (A055999 (n + 3) + A000041 ⌊1 / (n + 1 : ℚ)⌋.toNat).toNat

end

end A278894.P11703214142610591775

/-!
# A278895: 

The programs for A278895, there is no canonical definition to state claims against.
-/

/-! ## A278895.P5915753003268270366

`A278896(eq[6, A193592(n)])`
-/

namespace A278895.P5915753003268270366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278895.P5915753003268270366

/-! ## A278895.P441719828469215323

`A278896(Δ[A026054(n+4)])`
-/

namespace A278895.P441719828469215323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278896 (f1 (n + 1) - f1 n).toNat

end

end A278895.P441719828469215323

/-!
# A278896: T(n,k)=Number of nXk 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly three mistakes.

The programs for A278896, there is no canonical definition to state claims against.
-/

/-! ## A278896.P352746529111995062

`A229163(floor(n/3)*ceil(n/3)+1)`
-/

namespace A278896.P352746529111995062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229163 (⌊(n : ℚ) / 3⌋ * ⌈(n : ℚ) / 3⌉ + 1).toNat

end

end A278896.P352746529111995062

/-! ## A278896.P10620040624275405848

`A373074(A160589(n))`
-/

namespace A278896.P10620040624275405848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373074 (A160589 n).toNat

end

end A278896.P10620040624275405848

/-! ## A278896.P12049745958376766016

`A373074(A240533(n))`
-/

namespace A278896.P12049745958376766016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373074 (A240533 n).toNat

end

end A278896.P12049745958376766016

/-! ## A278896.P5326494338799092404

`A217215(A302242(n!))`
-/

namespace A278896.P5326494338799092404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217215 (A302242 (Nat.factorial n)).toNat

end

end A278896.P5326494338799092404

/-! ## A278896.P14321472348841390315

`A072654(A322099(n+2))`
-/

namespace A278896.P14321472348841390315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072654 (A322099 (n + 2)).toNat

end

end A278896.P14321472348841390315

/-!
# A278898: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 107", based on the 5-celled von Neumann neighborhood.

The programs for A278898, there is no canonical definition to state claims against.
-/

/-! ## A278898.P6333483859386728344

`A007088(A278900(n))`
-/

namespace A278898.P6333483859386728344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278900 n).toNat

end

end A278898.P6333483859386728344

/-! ## A278898.P14428255699051568789

`A185544(2*A278900(n))`
-/

namespace A278898.P14428255699051568789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278900 n).toNat

end

end A278898.P14428255699051568789

/-!
# A278899: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 107", based on the 5-celled von Neumann neighborhood.

The programs for A278899, there is no canonical definition to state claims against.
-/

/-! ## A278899.P8492571007892439925

`A007088(A278901(n))`
-/

namespace A278899.P8492571007892439925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278901 n).toNat

end

end A278899.P8492571007892439925

/-! ## A278899.P8614444019992862135

`A185544(2*A278901(n))`
-/

namespace A278899.P8614444019992862135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278901 n).toNat

end

end A278899.P8614444019992862135

