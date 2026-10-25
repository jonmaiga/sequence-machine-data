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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A117600: Padovan numbers for which the multiplicative digital root is also a Padovan number.

The programs for A117600, there is no canonical definition to state claims against.
-/

/-! ## A117600.P4325148406562050665

`∩[A191932(n+1), A117598(n)]`
-/

namespace A117600.P4325148406562050665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117598 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117600.P4325148406562050665

/-! ## A117600.P17444983026973975444

`A117599(A029731(n+1))`
-/

namespace A117600.P17444983026973975444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117599 (A029731 (n + 1)).toNat

end

end A117600.P17444983026973975444

/-! ## A117600.P13478106229737613420

`A117599(A029967(n+1))`
-/

namespace A117600.P13478106229737613420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117599 (A029967 (n + 1)).toNat

end

end A117600.P13478106229737613420

/-! ## A117600.P13558089669940770806

`A117599(A029968(n+1))`
-/

namespace A117600.P13558089669940770806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117599 (A029968 (n + 1)).toNat

end

end A117600.P13558089669940770806

/-! ## A117600.P8538676381980054472

`A117599(A029969(n+1))`
-/

namespace A117600.P8538676381980054472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117599 (A029969 (n + 1)).toNat

end

end A117600.P8538676381980054472

/-!
# A117601: Padovan numbers which are divisible by the sum of their digits.

The programs for A117601, there is no canonical definition to state claims against.
-/

/-! ## A117601.P6211000798687200500

`∩[A005349(n+1), A117600(n+1)]`
-/

namespace A117601.P6211000798687200500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117601.P6211000798687200500

/-! ## A117601.P9366480532118613748

`∩[A005349(n+1), A164001(n+1)]`
-/

namespace A117601.P9366480532118613748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117601.P9366480532118613748

/-! ## A117601.P16297815114374950081

`record[A360074(∑[A000931(n)])]`
-/

namespace A117601.P16297815114374950081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117601.P16297815114374950081

/-! ## A117601.P16184233425328536505

`record[A360074(record[A000931(n)])]`
-/

namespace A117601.P16184233425328536505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117601.P16184233425328536505

/-! ## A117601.P15035765749146230840

`record[A360074(record[A078027(n)])]`
-/

namespace A117601.P15035765749146230840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117601.P15035765749146230840

/-!
# A117602: Padovan numbers which can be divided by their digital root.

The programs for A117602, there is no canonical definition to state claims against.
-/

/-! ## A117602.P16691247939302102473

`∩[A064807(n+1), A164001(n+1)]`
-/

namespace A117602.P16691247939302102473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117602.P16691247939302102473

/-! ## A117602.P3810331662794728696

`∩[A085824(n+1), A117599(n)]`
-/

namespace A117602.P3810331662794728696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117599 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117602.P3810331662794728696

/-! ## A117602.P3457979422390373816

`A117599(A043317(n+1))`
-/

namespace A117602.P3457979422390373816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117599 (A043317 (n + 1)).toNat

end

end A117602.P3457979422390373816

/-! ## A117602.P4274760892768371644

`A117599(A044914(n+1))`
-/

namespace A117602.P4274760892768371644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117599 (A044914 (n + 1)).toNat

end

end A117602.P4274760892768371644

/-! ## A117602.P10501149432763771934

`A117599(A055648(n+1))`
-/

namespace A117602.P10501149432763771934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117599 (A055648 (n + 1)).toNat

end

end A117602.P10501149432763771934

/-!
# A117603: Padovan numbers which can be divided by the product of their digits.

The programs for A117603, there is no canonical definition to state claims against.
-/

/-! ## A117603.P5032573246552607803

`A117604(comp[9*n])`
-/

namespace A117603.P5032573246552607803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117604 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117603.P5032573246552607803

/-! ## A117603.P13614500397424429215

`record[A117604(n+1)%((n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1)))]`
-/

namespace A117603.P13614500397424429215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117604 (n + 1)) ((n + 1 : ℤ) * (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117603.P13614500397424429215

/-! ## A117603.P12029823095806364313

`A164001(∑[A290669(n)])`
-/

namespace A117603.P12029823095806364313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117603.P12029823095806364313

/-! ## A117603.P13562895774663353253

`A117602(A032887(n+1))`
-/

namespace A117603.P13562895774663353253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117602 (A032887 (n + 1)).toNat

end

end A117603.P13562895774663353253

/-! ## A117603.P9219461840565909489

`A117602(A032943(n+1))`
-/

namespace A117603.P9219461840565909489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117602 (A032943 (n + 1)).toNat

end

end A117603.P9219461840565909489

/-!
# A117604: Padovan numbers which can be divided by their multiplicative digital root.

The programs for A117604, there is no canonical definition to state claims against.
-/

/-! ## A117604.P7591953206045651233

`∩[A064700(n+1), A117602(n+1)]`
-/

namespace A117604.P7591953206045651233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117604.P7591953206045651233

/-! ## A117604.P11539352754015252427

`∩[A064700(n+1), A164001(n+1)]`
-/

namespace A117604.P11539352754015252427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117604.P11539352754015252427

/-! ## A117604.P14169367616705122858

`∩[A117602(n+1), A132033(n+1)]`
-/

namespace A117604.P14169367616705122858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117604.P14169367616705122858

/-! ## A117604.P15739272508485300783

`A117603(n+1)-A117600(A290669(n))`
-/

namespace A117604.P15739272508485300783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117603 (n + 1) - A117600 (A290669 n).toNat

end

end A117604.P15739272508485300783

/-!
# A117606: a(n) = ones digit minus tens digit of the square of a(n-1), with a(0) = 2.

The programs for A117606, the canonical program `A117606.P10939584138889998169` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117606 has offset 0).

The definition of A117606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117606.P10939584138889998169

`a(n-4)` with `a(0)=2, a(1)=4, a(2)=5, a(3)=3, a(4)=9, a(5)=-7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117606

/-- `a(n-4)` -/
def P10939584138889998169.Spec : Prop :=
  ∀ n, P10939584138889998169.a n = A117606 n

theorem P10939584138889998169.correct : P10939584138889998169.Spec := by
  intro n
  simp only [A117606]

end A117606

/-!
# A117608: Let p be an element of A110028. Let L(p) be the sorted list of digits of p and let LL be the set of all L(p) with duplicates removed and ordered lexicographically. Then a(n) is the first element of A110028 such that L(a(n))=LL(n).

The programs for A117608, there is no canonical definition to state claims against.
-/

/-! ## A117608.P14732633353491296756

`p?[∑{p}[A062088(n+5)², #]*A279636(n)]`
-/

namespace A117608.P14732633353491296756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062088 (n + 5) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, p : ℕ) : ℤ) * A279636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117608.P14732633353491296756

/-! ## A117608.P18416694129002073327

`p?[∑{p}[A062088(n+5)², #]*A323767(n)]`
-/

namespace A117608.P18416694129002073327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062088 (n + 5) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, p : ℕ) : ℤ) * A323767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117608.P18416694129002073327

/-! ## A117608.P18330064110211954220

`p?[∑{p}[A062088(n+5)², #]*A144328(n+1)]`
-/

namespace A117608.P18330064110211954220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062088 (n + 5) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, p : ℕ) : ℤ) * A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117608.P18330064110211954220

/-!
# A117609: Number of lattice points inside the ball x^2 + y^2 + z^2 <= n.

The programs for A117609, there is no canonical definition to state claims against.
-/

/-! ## A117609.P16040936142131780221

`∑[A005875(n)]`
-/

namespace A117609.P16040936142131780221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117609.P16040936142131780221

/-! ## A117609.P768941348889821958

`∑[abs(A213384(n))]`
-/

namespace A117609.P768941348889821958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213384 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117609.P768941348889821958

/-! ## A117609.P11491029941094783105

`∑[sqrt(A138202(n))]`
-/

namespace A117609.P11491029941094783105
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138202 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117609.P11491029941094783105

/-! ## A117609.P7398641982311317623

`∑[A084101(n)*A246631(n)]`
-/

namespace A117609.P7398641982311317623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 n * A246631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117609.P7398641982311317623

/-! ## A117609.P4453651934429931055

`∑[gcd(A000038(n), A213384(n))]`
-/

namespace A117609.P4453651934429931055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A213384 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117609.P4453651934429931055

/-! ## A117609.P9489848611936394315

`∑[lcm(A087960(n), A213384(n))]`
-/

namespace A117609.P9489848611936394315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A213384 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117609.P9489848611936394315

/-! ## A117609.P17193593313406790459

`∑[A014455(2*n)]`
-/

namespace A117609.P17193593313406790459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117609.P17193593313406790459

/-! ## A117609.P3212616378323550492

`∑[A004015(2*n)]`
-/

namespace A117609.P3212616378323550492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117609.P3212616378323550492

/-! ## A117609.P8185569057408932090

`A004015(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A117609.P8185569057408932090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004015 (n + n) + a (n - 1)

end

end A117609.P8185569057408932090

/-! ## A117609.P11493893219003920360

`∑[A004013(4*n)]`
-/

namespace A117609.P11493893219003920360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117609.P11493893219003920360

/-! ## A117609.P7345506617401996366

`∑[A213384(4*n)]`
-/

namespace A117609.P7345506617401996366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117609.P7345506617401996366

/-! ## A117609.P5957289109544118462

`∑[A004013(A008574(n))]+1`
-/

namespace A117609.P5957289109544118462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A117609.P5957289109544118462

/-! ## A117609.P2040970337599611257

`∑[A169783(4*n)]`
-/

namespace A117609.P2040970337599611257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117609.P2040970337599611257

/-! ## A117609.P12535086677885003755

`∑[A212885(4*n)]`
-/

namespace A117609.P12535086677885003755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212885 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117609.P12535086677885003755

/-! ## A117609.P593935168768541683

`∑[A246631(4*n)]`
-/

namespace A117609.P593935168768541683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117609.P593935168768541683

/-! ## A117609.P7284995086304280604

`∑[A329290(4*n)]`
-/

namespace A117609.P7284995086304280604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329290 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117609.P7284995086304280604

/-! ## A117609.P11182926433996025072

`A014455(8*n)+a(n-1)` with `a(0)=1`
-/

namespace A117609.P11182926433996025072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014455 (8 * n) + a (n - 1)

end

end A117609.P11182926433996025072

/-! ## A117609.P16688005238051393747

`A014457(8*n)+a(n-1)` with `a(0)=1`
-/

namespace A117609.P16688005238051393747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014457 (8 * n) + a (n - 1)

end

end A117609.P16688005238051393747

/-! ## A117609.P6861734565831634134

`A083703(8*n)+a(n-1)` with `a(0)=1`
-/

namespace A117609.P6861734565831634134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083703 (8 * n) + a (n - 1)

end

end A117609.P6861734565831634134

/-! ## A117609.P9446613787850566157

`∑[A319078(4*n)]`
-/

namespace A117609.P9446613787850566157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319078 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117609.P9446613787850566157

/-!
# A117611: Legendre-binomial transform of 10^n for p=3.

The programs for A117611, there is no canonical definition to state claims against.
-/

/-! ## A117611.P11186922446950376311

`11*A026741(a(n-1))` with `a(0)=1, a(1)=11, a(2)=91`
-/

namespace A117611.P11186922446950376311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11, 91] fun n a =>
  11 * A026741 (a (n - 1)).toNat

end

end A117611.P11186922446950376311

/-!
# A117613: The number of 3D configurations of a labeled size 2*n "wurfel". A wurfel consists of a series of cubes held together on a looped string such that the string makes a right angle inside each cube. Ignoring the labels would make a wurfel a special kind of polycube in which the cubes can be cyclically ordered at consecutive right angles (equivalently, avoiding 3 consecutive collinear cubes).

The programs for A117613, there is no canonical definition to state claims against.
-/

/-! ## A117613.P6668948500502841931

`A038554(comp[2*n+3]^(n-floor(sqrt(n))))`
-/

namespace A117613.P6668948500502841931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ ((n : ℤ) - (Nat.sqrt n : ℤ) : ℤ))).toNat

end

end A117613.P6668948500502841931

/-! ## A117613.P17712088793503722505

`A007305(A005046(n)-1)`
-/

namespace A117613.P17712088793503722505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A005046 n - 1).toNat

end

end A117613.P17712088793503722505

/-!
# A117614: a(0)=1, a(n)=4a(n-1)+2 for n odd, a(n)=4a(n-1) for n even.

The programs for A117614, the canonical program `A117614.P15256417530090188546` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117614 has offset 0).

The definition of A117614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117614.P15256417530090188546

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=6, a(2)=24`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117614

/-- `4*a(n-1)+a(n-2)-4*a(n-3)` -/
def P15256417530090188546.Spec : Prop :=
  ∀ n, P15256417530090188546.a n = A117614 n

theorem P15256417530090188546.correct : P15256417530090188546.Spec := by
  intro n
  simp only [A117614]

end A117614

/-! ## A117614.P1111402294603880554

`ogf((1+2x-x^2)/(1-4x-x^2+4x^3))`
-/

namespace A117614.P1111402294603880554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -4, -1, 4] n

end

end A117614.P1111402294603880554

namespace A117614

/-- `ogf((1+2x-x^2)/(1-4x-x^2+4x^3))` -/
def P1111402294603880554.Spec : Prop :=
  ∀ n, P1111402294603880554.a n = A117614 n

end A117614

/-! ## A117614.P5658253205929162615

`∑[4^n]+round(4^n/5)`
-/

namespace A117614.P5658253205929162615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 5)

end

end A117614.P5658253205929162615

namespace A117614

/-- `∑[4^n]+round(4^n/5)` -/
def P5658253205929162615.Spec : Prop :=
  ∀ n, P5658253205929162615.a n = A117614 n

end A117614

/-! ## A117614.P16339859458830904194

`or(4^n, floor(8*4^n/15))`
-/

namespace A117614.P16339859458830904194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ n : ℤ) ⌊8 * ((4 ^ n : ℚ) / 15)⌋

end

end A117614.P16339859458830904194

namespace A117614

/-- `or(4^n, floor(8*4^n/15))` -/
def P16339859458830904194.Spec : Prop :=
  ∀ n, P16339859458830904194.a n = A117614 n

end A117614

/-! ## A117614.P2777535751470820445

`xor(4^n, floor(8*4^n/15))`
-/

namespace A117614.P2777535751470820445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 ^ n : ℤ) ⌊8 * ((4 ^ n : ℚ) / 15)⌋

end

end A117614.P2777535751470820445

namespace A117614

/-- `xor(4^n, floor(8*4^n/15))` -/
def P2777535751470820445.Spec : Prop :=
  ∀ n, P2777535751470820445.a n = A117614 n

end A117614

/-! ## A117614.P503649961731505004

`2*(n%2+2*a(n-1))` with `a(0)=1`
-/

namespace A117614.P503649961731505004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (n % 2 + 2 * a (n - 1))

end

end A117614.P503649961731505004

namespace A117614

/-- `2*(n%2+2*a(n-1))` -/
def P503649961731505004.Spec : Prop :=
  ∀ n, (P503649961731505004.a n : ℤ) = A117614 n

end A117614

/-! ## A117614.P10568469745107155722

`2*(and(1, n)+2*a(n-1))` with `a(0)=1`
-/

namespace A117614.P10568469745107155722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (Nat.land 1 n + 2 * a (n - 1))

end

end A117614.P10568469745107155722

namespace A117614

/-- `2*(and(1, n)+2*a(n-1))` -/
def P10568469745107155722.Spec : Prop :=
  ∀ n, (P10568469745107155722.a n : ℤ) = A117614 n

end A117614

/-! ## A117614.P18328273559696928459

`2*(2*(a(n-1)+1)-gcd(2, n))` with `a(0)=1`
-/

namespace A117614.P18328273559696928459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * (a (n - 1) + 1) - (Nat.gcd 2 n : ℤ))

end

end A117614.P18328273559696928459

namespace A117614

/-- `2*(2*(a(n-1)+1)-gcd(2, n))` -/
def P18328273559696928459.Spec : Prop :=
  ∀ n, P18328273559696928459.a n = A117614 n

end A117614

/-! ## A117614.P8275911031300967922

`2*(2*(a(n-1)-floor(n/2))+n)` with `a(0)=1`
-/

namespace A117614.P8275911031300967922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * (a (n - 1) - ⌊(n : ℚ) / 2⌋) + (n : ℤ))

end

end A117614.P8275911031300967922

namespace A117614

/-- `2*(2*(a(n-1)-floor(n/2))+n)` -/
def P8275911031300967922.Spec : Prop :=
  ∀ n, P8275911031300967922.a n = A117614 n

end A117614

/-! ## A117614.P9279664802936695037

`2*(n-2*floor(n/2-a(n-1)))` with `a(0)=1`
-/

namespace A117614.P9279664802936695037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) - 2 * ⌊(n : ℚ) / 2 - (a (n - 1) : ℚ)⌋)

end

end A117614.P9279664802936695037

namespace A117614

/-- `2*(n-2*floor(n/2-a(n-1)))` -/
def P9279664802936695037.Spec : Prop :=
  ∀ n, P9279664802936695037.a n = A117614 n

end A117614

/-! ## A117614.P8994564430904334661

`and(A020989(n), A118171(n))`
-/

namespace A117614.P8994564430904334661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020989 n) (A118171 n)

end

end A117614.P8994564430904334661

namespace A117614

/-- `and(A020989(n), A118171(n))` -/
def P8994564430904334661.Spec : Prop :=
  ∀ n, P8994564430904334661.a n = A117614 n

end A117614

/-! ## A117614.P653911237627048698

`and(A020989(n), A037576(n+1))`
-/

namespace A117614.P653911237627048698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020989 n) (A037576 (n + 1))

end

end A117614.P653911237627048698

namespace A117614

/-- `and(A020989(n), A037576(n+1))` -/
def P653911237627048698.Spec : Prop :=
  ∀ n, P653911237627048698.a n = A117614 n

end A117614

/-! ## A117614.P8561628957644230190

`and(A020989(n), A037688(n+1))`
-/

namespace A117614.P8561628957644230190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020989 n) (A037688 (n + 1))

end

end A117614.P8561628957644230190

namespace A117614

/-- `and(A020989(n), A037688(n+1))` -/
def P8561628957644230190.Spec : Prop :=
  ∀ n, P8561628957644230190.a n = A117614 n

end A117614

/-! ## A117614.P17081412896468918146

`and(A020989(n), A037702(n+1))`
-/

namespace A117614.P17081412896468918146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020989 n) (A037702 (n + 1))

end

end A117614.P17081412896468918146

namespace A117614

/-- `and(A020989(n), A037702(n+1))` -/
def P17081412896468918146.Spec : Prop :=
  ∀ n, P17081412896468918146.a n = A117614 n

end A117614

/-! ## A117614.P3489834468685226888

`and(A151754(2*n+1), A151754(2*(n+1)))`
-/

namespace A117614.P3489834468685226888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151754 (2 * n + 1)) (A151754 (2 * (n + 1)))

end

end A117614.P3489834468685226888

namespace A117614

/-- `and(A151754(2*n+1), A151754(2*(n+1)))` -/
def P3489834468685226888.Spec : Prop :=
  ∀ n, P3489834468685226888.a n = A117614 n

end A117614

/-! ## A117614.P11700507876474058529

`and(A265381(2*n)-A115851(2*n), A265381(2*n+1))`
-/

namespace A117614.P11700507876474058529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265381 (2 * n) - A115851 (2 * n)) (A265381 (2 * n + 1))

end

end A117614.P11700507876474058529

namespace A117614

/-- `and(A265381(2*n)-A115851(2*n), A265381(2*n+1))` -/
def P11700507876474058529.Spec : Prop :=
  ∀ n, P11700507876474058529.a n = A117614 n

end A117614

/-! ## A117614.P10975176981637094513

`A102651(2*n)/4`
-/

namespace A117614.P10975176981637094513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102651 (2 * n) : ℚ) / 4

end

end A117614.P10975176981637094513

namespace A117614

/-- `A102651(2*n)/4` -/
def P10975176981637094513.Spec : Prop :=
  ∀ n, P10975176981637094513.a n = (A117614 n : ℚ)

end A117614

/-! ## A117614.P12429746810258377696

`floor(A072201(n+1)/10)`
-/

namespace A117614.P12429746810258377696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072201 (n + 1) : ℚ) / 10⌋

end

end A117614.P12429746810258377696

namespace A117614

/-- `floor(A072201(n+1)/10)` -/
def P12429746810258377696.Spec : Prop :=
  ∀ n, P12429746810258377696.a n = A117614 n

end A117614

/-! ## A117614.P15666736460018725704

`A156760(n)%A037583(n+1)`
-/

namespace A117614.P15666736460018725704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156760 n) (A037583 (n + 1))

end

end A117614.P15666736460018725704

namespace A117614

/-- `A156760(n)%A037583(n+1)` -/
def P15666736460018725704.Spec : Prop :=
  ∀ n, P15666736460018725704.a n = A117614 n

end A117614

/-!
# A117615: a(0)=0, a(1)=1, a(n)=4a(n-1)+2 for n =3,5,7,..., a(n)=4a(n-1) for n =2,4,6,....

The programs for A117615, the canonical program `A117615.P18160343566974203068` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117615 has offset 0).

The definition of A117615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117615.P18160343566974203068

`3*a(n-1)+4*a(n-2)+2` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117615

/-- `3*a(n-1)+4*a(n-2)+2` -/
def P18160343566974203068.Spec : Prop :=
  ∀ n, (P18160343566974203068.a n : ℤ) = A117615 n

theorem P18160343566974203068.correct : P18160343566974203068.Spec := by
  intro n
  simp only [A117615]

end A117615

/-! ## A117615.P2739950105100618531

`ogf((x+x^3)/(1-4x-x^2+4x^3))`
-/

namespace A117615.P2739950105100618531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1] [1, -4, -1, 4] n

end

end A117615.P2739950105100618531

namespace A117615

/-- `ogf((x+x^3)/(1-4x-x^2+4x^3))` -/
def P2739950105100618531.Spec : Prop :=
  ∀ n, P2739950105100618531.a n = A117615 n

end A117615

/-! ## A117615.P6836487180107090077

`xor(4*a(n-1), Δ[or(1, n)])` with `a(0)=0, a(1)=1`
-/

namespace A117615.P6836487180107090077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor (4 * a (n - 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A117615.P6836487180107090077

namespace A117615

/-- `xor(4*a(n-1), Δ[or(1, n)])` -/
def P6836487180107090077.Spec : Prop :=
  ∀ n, P6836487180107090077.a n = A117615 n

end A117615

/-! ## A117615.P12146486475431523160

`2*(n%2+2*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A117615.P12146486475431523160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (n % 2 + 2 * a (n - 1))

end

end A117615.P12146486475431523160

namespace A117615

/-- `2*(n%2+2*a(n-1))` -/
def P12146486475431523160.Spec : Prop :=
  ∀ n, (P12146486475431523160.a n : ℤ) = A117615 n

end A117615

/-! ## A117615.P14693201421516275424

`2*(and(1, n)+2*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A117615.P14693201421516275424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (Nat.land 1 n + 2 * a (n - 1))

end

end A117615.P14693201421516275424

namespace A117615

/-- `2*(and(1, n)+2*a(n-1))` -/
def P14693201421516275424.Spec : Prop :=
  ∀ n, (P14693201421516275424.a n : ℤ) = A117615 n

end A117615

/-! ## A117615.P2773727414389192413

`2*or(2*a(n-1), and(1, n))` with `a(0)=0, a(1)=1`
-/

namespace A117615.P2773727414389192413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * Nat.lor (2 * a (n - 1)) (Nat.land 1 n)

end

end A117615.P2773727414389192413

namespace A117615

/-- `2*or(2*a(n-1), and(1, n))` -/
def P2773727414389192413.Spec : Prop :=
  ∀ n, (P2773727414389192413.a n : ℤ) = A117615 n

end A117615

/-! ## A117615.P2708603411562659604

`2*xor(2*a(n-1), and(1, n))` with `a(0)=0, a(1)=1`
-/

namespace A117615.P2708603411562659604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * Nat.xor (2 * a (n - 1)) (Nat.land 1 n)

end

end A117615.P2708603411562659604

namespace A117615

/-- `2*xor(2*a(n-1), and(1, n))` -/
def P2708603411562659604.Spec : Prop :=
  ∀ n, (P2708603411562659604.a n : ℤ) = A117615 n

end A117615

/-! ## A117615.P12557478469104234629

`A102865(n)-A123166(n)`
-/

namespace A117615.P12557478469104234629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102865 n - A123166 n

end

end A117615.P12557478469104234629

namespace A117615

/-- `A102865(n)-A123166(n)` -/
def P12557478469104234629.Spec : Prop :=
  ∀ n, P12557478469104234629.a n = A117615 n

end A117615

/-! ## A117615.P13221935004837880955

`A117614(n)-A003947(n)`
-/

namespace A117615.P13221935004837880955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117614 n - A003947 n

end

end A117615.P13221935004837880955

namespace A117615

/-- `A117614(n)-A003947(n)` -/
def P13221935004837880955.Spec : Prop :=
  ∀ n, P13221935004837880955.a n = A117615 n

end A117615

/-!
# A117616: a(0)=0, a(n)=4a(n-1)+2 for n odd, a(n)=4a(n-1) for n even.

The programs for A117616, the canonical program `A117616.P2459962589629549018` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117616 has offset 0).

The definition of A117616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117616.P2459962589629549018

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=0, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117616

/-- `4*a(n-1)+a(n-2)-4*a(n-3)` -/
def P2459962589629549018.Spec : Prop :=
  ∀ n, P2459962589629549018.a n = A117616 n

theorem P2459962589629549018.correct : P2459962589629549018.Spec := by
  intro n
  simp only [A117616]

end A117616

/-! ## A117616.P10294654313339379109

`floor(8*4^n/15)`
-/

namespace A117616.P10294654313339379109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * ((4 ^ n : ℚ) / 15)⌋

end

end A117616.P10294654313339379109

namespace A117616

/-- `floor(8*4^n/15)` -/
def P10294654313339379109.Spec : Prop :=
  ∀ n, P10294654313339379109.a n = A117616 n

end A117616

/-! ## A117616.P15598604740409716580

`ogf(2x/(1-4x-x^2+4x^3))`
-/

namespace A117616.P15598604740409716580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -4, -1, 4] n

end

end A117616.P15598604740409716580

namespace A117616

/-- `ogf(2x/(1-4x-x^2+4x^3))` -/
def P15598604740409716580.Spec : Prop :=
  ∀ n, P15598604740409716580.a n = A117616 n

end A117616

/-! ## A117616.P4404650730656006415

`∑[lcm(2, round(4^n/5))]`
-/

namespace A117616.P4404650730656006415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117616.P4404650730656006415

namespace A117616

/-- `∑[lcm(2, round(4^n/5))]` -/
def P4404650730656006415.Spec : Prop :=
  ∀ n, (P4404650730656006415.a n : ℤ) = A117616 n

end A117616

/-! ## A117616.P2364882631777804059

`xor(1, ceil(8*4^n/15))`
-/

namespace A117616.P2364882631777804059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈8 * ((4 ^ n : ℚ) / 15)⌉

end

end A117616.P2364882631777804059

namespace A117616

/-- `xor(1, ceil(8*4^n/15))` -/
def P2364882631777804059.Spec : Prop :=
  ∀ n, P2364882631777804059.a n = A117616 n

end A117616

/-! ## A117616.P14530957933544081431

`a(n-2)+4^n/2` with `a(0)=0, a(1)=2`
-/

namespace A117616.P14530957933544081431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + (4 ^ n : ℚ) / 2

end

end A117616.P14530957933544081431

namespace A117616

/-- `a(n-2)+4^n/2` -/
def P14530957933544081431.Spec : Prop :=
  ∀ n, P14530957933544081431.a n = (A117616 n : ℚ)

end A117616

/-! ## A117616.P1716802938397548535

`∑[4^n/2-a(n-1)]` with `a(0)=0`
-/

namespace A117616.P1716802938397548535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (4 ^ n : ℚ) / 2 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117616.P1716802938397548535

namespace A117616

/-- `∑[4^n/2-a(n-1)]` -/
def P1716802938397548535.Spec : Prop :=
  ∀ n, P1716802938397548535.a n = (A117616 n : ℚ)

end A117616

/-! ## A117616.P11441491662708470294

`2*(n%2+2*a(n-1))` with `a(0)=0`
-/

namespace A117616.P11441491662708470294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * (n % 2 + 2 * a (n - 1))

end

end A117616.P11441491662708470294

namespace A117616

/-- `2*(n%2+2*a(n-1))` -/
def P11441491662708470294.Spec : Prop :=
  ∀ n, (P11441491662708470294.a n : ℤ) = A117616 n

end A117616

/-! ## A117616.P15637736511102075791

`2*and(1, n)+4*a(n-1)` with `a(0)=0`
-/

namespace A117616.P15637736511102075791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * Nat.land 1 n + 4 * a (n - 1)

end

end A117616.P15637736511102075791

namespace A117616

/-- `2*and(1, n)+4*a(n-1)` -/
def P15637736511102075791.Spec : Prop :=
  ∀ n, (P15637736511102075791.a n : ℤ) = A117616 n

end A117616

/-! ## A117616.P15151993838282734678

`or(4*a(n-1), a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A117616.P15151993838282734678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  Nat.lor (4 * a (n - 1)) (a (n - 2))

end

end A117616.P15151993838282734678

namespace A117616

/-- `or(4*a(n-1), a(n-2))` -/
def P15151993838282734678.Spec : Prop :=
  ∀ n, (P15151993838282734678.a n : ℤ) = A117616 n

end A117616

/-! ## A117616.P14806681828257955685

`∑[4*a(n-1)]-a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A117616.P14806681828257955685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A117616.P14806681828257955685

namespace A117616

/-- `∑[4*a(n-1)]-a(n-1)` -/
def P14806681828257955685.Spec : Prop :=
  ∀ n, P14806681828257955685.a n = A117616 n

end A117616

/-! ## A117616.P15531186044664461029

`record[4*a(n-2)]+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A117616.P15531186044664461029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 2)

end

end A117616.P15531186044664461029

namespace A117616

/-- `record[4*a(n-2)]+a(n-2)` -/
def P15531186044664461029.Spec : Prop :=
  ∀ n, (P15531186044664461029.a n : ℤ) = A117616 n

end A117616

/-! ## A117616.P16662027641714127784

`2*(2*(a(n-1)+1)-gcd(2, n))` with `a(0)=0`
-/

namespace A117616.P16662027641714127784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (2 * (a (n - 1) + 1) - (Nat.gcd 2 n : ℤ))

end

end A117616.P16662027641714127784

namespace A117616

/-- `2*(2*(a(n-1)+1)-gcd(2, n))` -/
def P16662027641714127784.Spec : Prop :=
  ∀ n, P16662027641714127784.a n = A117616 n

end A117616

/-! ## A117616.P9330793653565013052

`2-(a(n-1)%4-4*a(n-1))` with `a(0)=0`
-/

namespace A117616.P9330793653565013052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (Int.tmod (a (n - 1)) 4 - 4 * a (n - 1))

end

end A117616.P9330793653565013052

namespace A117616

/-- `2-(a(n-1)%4-4*a(n-1))` -/
def P9330793653565013052.Spec : Prop :=
  ∀ n, P9330793653565013052.a n = A117616 n

end A117616

/-! ## A117616.P12461531245641822215

`3*a(n-1)+4*a(n-2)+2` with `a(0)=0, a(1)=2`
-/

namespace A117616.P12461531245641822215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  3 * a (n - 1) + (4 * a (n - 2) + 2)

end

end A117616.P12461531245641822215

namespace A117616

/-- `3*a(n-1)+4*a(n-2)+2` -/
def P12461531245641822215.Spec : Prop :=
  ∀ n, (P12461531245641822215.a n : ℤ) = A117616 n

end A117616

/-! ## A117616.P3532659919315682620

`A102865(n)-1`
-/

namespace A117616.P3532659919315682620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102865 n - 1

end

end A117616.P3532659919315682620

namespace A117616

/-- `A102865(n)-1` -/
def P3532659919315682620.Spec : Prop :=
  ∀ n, P3532659919315682620.a n = A117616 n

end A117616

/-! ## A117616.P8141197205935569070

`∑[2*A015521(n)]`
-/

namespace A117616.P8141197205935569070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117616.P8141197205935569070

namespace A117616

/-- `∑[2*A015521(n)]` -/
def P8141197205935569070.Spec : Prop :=
  ∀ n, P8141197205935569070.a n = A117616 n

end A117616

/-! ## A117616.P1181695478356083483

`Δ[2*A097138(n)]`
-/

namespace A117616.P1181695478356083483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117616.P1181695478356083483

namespace A117616

/-- `Δ[2*A097138(n)]` -/
def P1181695478356083483.Spec : Prop :=
  ∀ n, P1181695478356083483.a n = A117616 n

end A117616

/-! ## A117616.P7206523189236310618

`A139800(2*n+3)`
-/

namespace A117616.P7206523189236310618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 (2 * n + 3)

end

end A117616.P7206523189236310618

namespace A117616

/-- `A139800(2*n+3)` -/
def P7206523189236310618.Spec : Prop :=
  ∀ n, P7206523189236310618.a n = A117616 n

end A117616

/-! ## A117616.P11416431439041838965

`A181586(2*n+3)`
-/

namespace A117616.P11416431439041838965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 (2 * n + 3)

end

end A117616.P11416431439041838965

namespace A117616

/-- `A181586(2*n+3)` -/
def P11416431439041838965.Spec : Prop :=
  ∀ n, P11416431439041838965.a n = A117616 n

end A117616

/-!
# A117617: a(n) = 5*a(n-1) + 3 with a(0) = 1.

The programs for A117617, the canonical program `A117617.P1329004677090282316` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117617 has offset 0).

The definition of A117617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+3` (program `A117617.P1329004677090282316`, by `A117617.P1329004677090282316.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117617.P1329004677090282316

`5*a(n-1)+3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117617

/-- `5*a(n-1)+3` -/
def P1329004677090282316.Spec : Prop :=
  ∀ n, (P1329004677090282316.a n : ℤ) = A117617 n

theorem P1329004677090282316.correct : P1329004677090282316.Spec := by
  intro n
  simp only [A117617]

end A117617

/-! ## A117617.P17292795942084836505

`ogf((1+2x)/(1-6x+5x^2))`
-/

namespace A117617.P17292795942084836505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -6, 5] n

end

end A117617.P17292795942084836505

namespace A117617

/-- `ogf((1+2x)/(1-6x+5x^2))` -/
def P17292795942084836505.Spec : Prop :=
  ∀ n, P17292795942084836505.a n = A117617 n

end A117617

/-! ## A117617.P7099692785742293834

`floor(7/4*5^n)`
-/

namespace A117617.P7099692785742293834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) / 4 * (5 ^ n : ℚ)⌋

end

end A117617.P7099692785742293834

namespace A117617

/-- `floor(7/4*5^n)` -/
def P7099692785742293834.Spec : Prop :=
  ∀ n, P7099692785742293834.a n = A117617 n

end A117617

/-! ## A117617.P17299807545707904313

`lcm(5, a(n-1))+3` with `a(0)=1`
-/

namespace A117617.P17299807545707904313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 5 (a (n - 1)) + 3

end

end A117617.P17299807545707904313

namespace A117617

/-- `lcm(5, a(n-1))+3` -/
def P17299807545707904313.Spec : Prop :=
  ∀ n, (P17299807545707904313.a n : ℤ) = A117617 n

end A117617

/-! ## A117617.P9447295454943692447

`∑[5*a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A117617.P9447295454943692447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117617.P9447295454943692447

namespace A117617

/-- `∑[5*a(n-1)]` -/
def P9447295454943692447.Spec : Prop :=
  ∀ n, (P9447295454943692447.a n : ℤ) = A117617 n

end A117617

/-! ## A117617.P9586793245966031201

`8-5*(1-a(n-1))` with `a(0)=1`
-/

namespace A117617.P9586793245966031201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 - 5 * (1 - a (n - 1))

end

end A117617.P9586793245966031201

namespace A117617

/-- `8-5*(1-a(n-1))` -/
def P9586793245966031201.Spec : Prop :=
  ∀ n, P9586793245966031201.a n = A117617 n

end A117617

/-! ## A117617.P4856554831851082774

`a(n-1)/(1-4/5)+3` with `a(0)=1`
-/

namespace A117617.P4856554831851082774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) + 3

end

end A117617.P4856554831851082774

namespace A117617

/-- `a(n-1)/(1-4/5)+3` -/
def P4856554831851082774.Spec : Prop :=
  ∀ n, P4856554831851082774.a n = (A117617 n : ℚ)

end A117617

/-! ## A117617.P15269581257076123927

`3-a(n-1)/(4/5-1)` with `a(0)=1`
-/

namespace A117617.P15269581257076123927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 - a (n - 1) / ((4 : ℚ) / 5 - 1)

end

end A117617.P15269581257076123927

namespace A117617

/-- `3-a(n-1)/(4/5-1)` -/
def P15269581257076123927.Spec : Prop :=
  ∀ n, P15269581257076123927.a n = (A117617 n : ℚ)

end A117617

/-! ## A117617.P16187813844995453025

`A199308(n)-1`
-/

namespace A117617.P16187813844995453025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199308 n - 1

end

end A117617.P16187813844995453025

namespace A117617

/-- `A199308(n)-1` -/
def P16187813844995453025.Spec : Prop :=
  ∀ n, P16187813844995453025.a n = A117617 n

end A117617

/-! ## A117617.P14277119135310621824

`A026384(2*n)`
-/

namespace A117617.P14277119135310621824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026384 (2 * n)

end

end A117617.P14277119135310621824

namespace A117617

/-- `A026384(2*n)` -/
def P14277119135310621824.Spec : Prop :=
  ∀ n, P14277119135310621824.a n = A117617 n

end A117617

/-! ## A117617.P4586148061232688586

`∑[record[A396584(n)]]`
-/

namespace A117617.P4586148061232688586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396584 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117617.P4586148061232688586

namespace A117617

/-- `∑[record[A396584(n)]]` -/
def P4586148061232688586.Spec : Prop :=
  ∀ n, P4586148061232688586.a n = A117617 n

end A117617

/-! ## A117617.P6937730539327787064

`(A198766(n)-1)/2`
-/

namespace A117617.P6937730539327787064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198766 n - 1 : ℚ) / 2

end

end A117617.P6937730539327787064

namespace A117617

/-- `(A198766(n)-1)/2` -/
def P6937730539327787064.Spec : Prop :=
  ∀ n, P6937730539327787064.a n = (A117617 n : ℚ)

end A117617

/-! ## A117617.P674942766379010830

`A199309(n)/2-1`
-/

namespace A117617.P674942766379010830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199309 n : ℚ) / 2 - 1

end

end A117617.P674942766379010830

namespace A117617

/-- `A199309(n)/2-1` -/
def P674942766379010830.Spec : Prop :=
  ∀ n, P674942766379010830.a n = (A117617 n : ℚ)

end A117617

/-! ## A117617.P13524862126885578061

`A057651(n)+A003463(n)`
-/

namespace A117617.P13524862126885578061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + A003463 n

end

end A117617.P13524862126885578061

namespace A117617

/-- `A057651(n)+A003463(n)` -/
def P13524862126885578061.Spec : Prop :=
  ∀ n, P13524862126885578061.a n = A117617 n

end A117617

/-! ## A117617.P16317785765464954815

`A020729(n)-(A003463(n)+1)`
-/

namespace A117617.P16317785765464954815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n - (A003463 n + 1)

end

end A117617.P16317785765464954815

namespace A117617

/-- `A020729(n)-(A003463(n)+1)` -/
def P16317785765464954815.Spec : Prop :=
  ∀ n, P16317785765464954815.a n = A117617 n

end A117617

/-! ## A117617.P4403348383909020663

`A238366(2*n)+A003463(n)`
-/

namespace A117617.P4403348383909020663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238366 (2 * n) + A003463 n

end

end A117617.P4403348383909020663

namespace A117617

/-- `A238366(2*n)+A003463(n)` -/
def P4403348383909020663.Spec : Prop :=
  ∀ n, P4403348383909020663.a n = A117617 n

end A117617

/-! ## A117617.P10898713380374800430

`2*A000351(n)-A047850(n)`
-/

namespace A117617.P10898713380374800430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000351 n - A047850 n

end

end A117617.P10898713380374800430

namespace A117617

/-- `2*A000351(n)-A047850(n)` -/
def P10898713380374800430.Spec : Prop :=
  ∀ n, P10898713380374800430.a n = A117617 n

end A117617

/-! ## A117617.P5302405224839012859

`(A081655(n)+A057651(n))/2`
-/

namespace A117617.P5302405224839012859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081655 n + A057651 n : ℚ) / 2

end

end A117617.P5302405224839012859

namespace A117617

/-- `(A081655(n)+A057651(n))/2` -/
def P5302405224839012859.Spec : Prop :=
  ∀ n, P5302405224839012859.a n = (A117617 n : ℚ)

end A117617

/-! ## A117617.P8304765043394132823

`A121177(n+1)+∑[A000351(n)]`
-/

namespace A117617.P8304765043394132823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117617.P8304765043394132823

namespace A117617

/-- `A121177(n+1)+∑[A000351(n)]` -/
def P8304765043394132823.Spec : Prop :=
  ∀ n, P8304765043394132823.a n = A117617 n

end A117617

/-! ## A117617.P15128807152811565123

`Δ[A034478(n)]-(A003463(n)+1)`
-/

namespace A117617.P15128807152811565123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A003463 n + 1)

end

end A117617.P15128807152811565123

namespace A117617

/-- `Δ[A034478(n)]-(A003463(n)+1)` -/
def P15128807152811565123.Spec : Prop :=
  ∀ n, P15128807152811565123.a n = A117617 n

end A117617

/-!
# A117618: Least number with complexity height of n, under integer complexity A005245.

The programs for A117618, there is no canonical definition to state claims against.
-/

/-! ## A117618.P17169940930906491958

`a(n-1)` with `a(0)=1, a(1)=6, a(2)=7, a(3)=10, a(4)=22, a(5)=683`
-/

namespace A117618.P17169940930906491958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 7, 10, 22, 683] fun n a =>
  a (n - 1)

end

end A117618.P17169940930906491958

/-!
# A117619: a(n) = n^2 + 7.

The programs for A117619, the canonical program `A117619.P10032462743252771968` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117619 has offset 0).

The definition of A117619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+7` (program `A117619.P10032462743252771968`, by `A117619.P10032462743252771968.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117619.P10032462743252771968

`n²+7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117619

/-- `n²+7` -/
def P10032462743252771968.Spec : Prop :=
  ∀ n, (P10032462743252771968.a n : ℤ) = A117619 n

theorem P10032462743252771968.correct : P10032462743252771968.Spec := by
  intro n
  simp only [A117619]

end A117619

/-!
# A117621: Number of double-perfect partitions of n.

The programs for A117621, there is no canonical definition to state claims against.
-/

/-! ## A117621.P13086479167040235942

`A074206(n)-A074206(A142150(A142150(n)))`
-/

namespace A117621.P13086479167040235942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n - A074206 (A142150 (A142150 n).toNat).toNat

end

end A117621.P13086479167040235942

/-! ## A117621.P5449904725531565601

`A074206(n)-A035263(A052957(n))`
-/

namespace A117621.P5449904725531565601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n - A035263 (A052957 n).toNat

end

end A117621.P5449904725531565601

/-! ## A117621.P9777103208741603610

`A074206(n)-A144198(A061393(n))`
-/

namespace A117621.P9777103208741603610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n - A144198 (A061393 n).toNat

end

end A117621.P9777103208741603610

/-! ## A117621.P11415986976412553805

`A275728(A074206(n)^A141020(n))`
-/

namespace A117621.P11415986976412553805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275728 (SequenceMachineLib.roundAway ((A074206 n : ℚ) ^ (A141020 n : ℤ))).toNat

end

end A117621.P11415986976412553805

/-! ## A117621.P14966414182961216056

`A074206(n)-A266243(ceil(2^(n-1)))`
-/

namespace A117621.P14966414182961216056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n - A266243 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A117621.P14966414182961216056

/-!
# A117622: Minesweeper sequence: a(n) is the first nonprime number, k, not occurring previously in the sequence nor the absolute value of its first forward difference among the first differences and a(1)=1.

The programs for A117622, there is no canonical definition to state claims against.
-/

/-! ## A117622.P6619474285916494134

`A117623(n)+a(n-1)` with `a(0)=1`
-/

namespace A117622.P6619474285916494134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117623 n + a (n - 1)

end

end A117622.P6619474285916494134

/-! ## A117622.P11419731486399264802

`∑[A117623(abs(1-n)+1)]-1`
-/

namespace A117622.P11419731486399264802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117623 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A117622.P11419731486399264802

/-! ## A117622.P9518868301879625843

`A117623(n)-a(n-1)*A057428(n)` with `a(0)=1`
-/

namespace A117622.P9518868301879625843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117623 n - a (n - 1) * A057428 n

end

end A117622.P9518868301879625843

/-! ## A117622.P8795503887984907911

`∑[A117623(n+1)]+1-A117623(n+1)`
-/

namespace A117622.P8795503887984907911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A117623 (n + 1)

end

end A117622.P8795503887984907911

/-!
# A117623: Values of k associated with A117622.

The programs for A117623, there is no canonical definition to state claims against.
-/

/-! ## A117623.P6317845317429787570

`Δ[A117622(n+1)]`
-/

namespace A117623.P6317845317429787570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117623.P6317845317429787570

/-! ## A117623.P6725978151779560272

`A117622(n+2)-A117622(n+1)`
-/

namespace A117623.P6725978151779560272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117622 (n + 2) - A117622 (n + 1)

end

end A117623.P6725978151779560272

/-!
# A117625: Maximum number of regions defined by n zigzag-lines in the plane when a zigzag-line is defined as consisting of two parallel infinite half-lines joined by a straight line segment.

The programs for A117625, the canonical program `A117625.P7256583027357498290` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117625 has offset 0).

The definition of A117625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117625.P7256583027357498290

`n*(9*n-7)/2+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117625

/-- `n*(9*n-7)/2+1` -/
def P7256583027357498290.Spec : Prop :=
  ∀ n, P7256583027357498290.a n = (A117625 n : ℚ)

end A117625

/-! ## A117625.P4799548719910175666

`∑[a(n-1)+9]` with `a(0)=1, a(1)=1`
-/

namespace A117625.P4799548719910175666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117625.P4799548719910175666

namespace A117625

/-- `∑[a(n-1)+9]` -/
def P4799548719910175666.Spec : Prop :=
  ∀ n, (P4799548719910175666.a n : ℤ) = A117625 n

end A117625

/-! ## A117625.P8787674513710351768

`∑[ogf((1-x+9x^2)/(1-2x+x^2))]`
-/

namespace A117625.P8787674513710351768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117625.P8787674513710351768

namespace A117625

/-- `∑[ogf((1-x+9x^2)/(1-2x+x^2))]` -/
def P8787674513710351768.Spec : Prop :=
  ∀ n, P8787674513710351768.a n = A117625 n

end A117625

/-! ## A117625.P2321397568513359613

`ogf((1-x+9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A117625.P2321397568513359613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 9] [1, -3, 3, -1] n

end

end A117625.P2321397568513359613

namespace A117625

/-- `ogf((1-x+9x^2)/(1-3x+3x^2-x^3))` -/
def P2321397568513359613.Spec : Prop :=
  ∀ n, P2321397568513359613.a n = A117625 n

end A117625

/-! ## A117625.P8145141432185799079

`abs(2*n-1-C(3*n, 2))`
-/

namespace A117625.P8145141432185799079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 1 - (Nat.choose (3 * n) 2 : ℤ)|

end

end A117625.P8145141432185799079

namespace A117625

/-- `abs(2*n-1-C(3*n, 2))` -/
def P8145141432185799079.Spec : Prop :=
  ∀ n, P8145141432185799079.a n = A117625 n

end A117625

/-! ## A117625.P10170815008041495495

`∑[9*(2*n)%(n+1)+1]`
-/

namespace A117625.P10170815008041495495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (2 * n % (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117625.P10170815008041495495

namespace A117625

/-- `∑[9*(2*n)%(n+1)+1]` -/
def P10170815008041495495.Spec : Prop :=
  ∀ n, (P10170815008041495495.a n : ℤ) = A117625 n

end A117625

/-! ## A117625.P18185125578999314141

`(A154254(n)+n)/2`
-/

namespace A117625.P18185125578999314141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154254 n + (n : ℤ) : ℚ) / 2

end

end A117625.P18185125578999314141

namespace A117625

/-- `(A154254(n)+n)/2` -/
def P18185125578999314141.Spec : Prop :=
  ∀ n, P18185125578999314141.a n = (A117625 n : ℚ)

end A117625

/-! ## A117625.P4177851100642322006

`∑[A181390(n+1)+n]`
-/

namespace A117625.P4177851100642322006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181390 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117625.P4177851100642322006

namespace A117625

/-- `∑[A181390(n+1)+n]` -/
def P4177851100642322006.Spec : Prop :=
  ∀ n, P4177851100642322006.a n = A117625 n

end A117625

/-! ## A117625.P12081427385357298485

`A112973(A027379(n))`
-/

namespace A117625.P12081427385357298485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112973 (A027379 n).toNat

end

end A117625.P12081427385357298485

namespace A117625

/-- `A112973(A027379(n))` -/
def P12081427385357298485.Spec : Prop :=
  ∀ n, P12081427385357298485.a n = A117625 n

end A117625

/-! ## A117625.P17442512607268935206

`A112973(A055998(n))`
-/

namespace A117625.P17442512607268935206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112973 (A055998 n).toNat

end

end A117625.P17442512607268935206

namespace A117625

/-- `A112973(A055998(n))` -/
def P17442512607268935206.Spec : Prop :=
  ∀ n, P17442512607268935206.a n = A117625 n

end A117625

/-! ## A117625.P13094438707562534454

`A112973(A000217(n)+2*n)`
-/

namespace A117625.P13094438707562534454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112973 (A000217 n + (2 * n : ℤ)).toNat

end

end A117625.P13094438707562534454

namespace A117625

/-- `A112973(A000217(n)+2*n)` -/
def P13094438707562534454.Spec : Prop :=
  ∀ n, P13094438707562534454.a n = A117625 n

end A117625

/-!
# A117627: Let f(n) = minimum of average number of comparisons needed for any sorting method for n elements and let g(n) = n!*f(n). Sequence gives a lower bound on g(n).

The programs for A117627, there is no canonical definition to state claims against.
-/

/-! ## A117627.P2272679062204532046

`A003314((n+1)!)`
-/

namespace A117627.P2272679062204532046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003314 (Nat.factorial (n + 1))

end

end A117627.P2272679062204532046

/-! ## A117627.P8258668624986191072

`A003314(∏[n+1])`
-/

namespace A117627.P8258668624986191072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003314 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A117627.P8258668624986191072

/-! ## A117627.P16671429832396374276

`record[A003314(ceil(xor(1, n)/2)!)]`
-/

namespace A117627.P16671429832396374276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003314 (Nat.factorial ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117627.P16671429832396374276

/-!
# A117628: Let f(n) = average number of comparisons needed for sorting n elements using merge insertion. Sequence gives n!*f(n).

The programs for A117628, there is no canonical definition to state claims against.
-/

/-! ## A117628.P6660995749303366650

`A117627(n+1)+A184955(3*n)²`
-/

namespace A117628.P6660995749303366650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117627 (n + 1) + A184955 (3 * n) ^ 2

end

end A117628.P6660995749303366650

/-! ## A117628.P11956594796377396081

`A085787(n)*A160158(A000085(n))`
-/

namespace A117628.P11956594796377396081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n * A160158 (A000085 n).toNat

end

end A117628.P11956594796377396081

/-!
# A117630: Complement of A056576.

The programs for A117630, the canonical program `A117630.P12923137934398612656` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117630 has offset 1).

The definition of A117630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117630.P14504937064628150955

`floor((n+1)*log(3)/log(3/2))`
-/

namespace A117630.P14504937064628150955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.log (3 : ℝ) / Real.log ((3 : ℚ) / 2 : ℝ)⌋

end

end A117630.P14504937064628150955

namespace A117630

/-- `floor((n+1)*log(3)/log(3/2))` -/
def P14504937064628150955.Spec : Prop :=
  ∀ n, P14504937064628150955.a n = A117630 (n + 1)

end A117630

/-! ## A117630.P9817203724357998732

`A054414(n+1)-1`
-/

namespace A117630.P9817203724357998732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 (n + 1) - 1

end

end A117630.P9817203724357998732

namespace A117630

/-- `A054414(n+1)-1` -/
def P9817203724357998732.Spec : Prop :=
  ∀ n, P9817203724357998732.a n = A117630 (n + 1)

end A117630

/-! ## A117630.P12923137934398612656

`2*(n+1)+A368131(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A117630

/-- `2*(n+1)+A368131(n+1)` -/
def P12923137934398612656.Spec : Prop :=
  ∀ n, P12923137934398612656.a n = A117630 (n + 1)

theorem P12923137934398612656.correct : P12923137934398612656.Spec := by
  intro n
  simp only [A117630, Nat.add_sub_cancel]

end A117630

/-! ## A117630.P14683448289403789158

`A325913(n+1)+1+n`
-/

namespace A117630.P14683448289403789158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325913 (n + 1) + 1 + (n : ℤ)

end

end A117630.P14683448289403789158

namespace A117630

/-- `A325913(n+1)+1+n` -/
def P14683448289403789158.Spec : Prop :=
  ∀ n, P14683448289403789158.a n = A117630 (n + 1)

end A117630

/-! ## A117630.P3510470485746335968

`A020914(A325913(n+1))`
-/

namespace A117630.P3510470485746335968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (A325913 (n + 1)).toNat

end

end A117630.P3510470485746335968

namespace A117630

/-- `A020914(A325913(n+1))` -/
def P3510470485746335968.Spec : Prop :=
  ∀ n, P3510470485746335968.a n = A117630 (n + 1)

end A117630

/-! ## A117630.P16721323585058653793

`Δ[∑[A054414(n)]-n]`
-/

namespace A117630.P16721323585058653793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117630.P16721323585058653793

namespace A117630

/-- `Δ[∑[A054414(n)]-n]` -/
def P16721323585058653793.Spec : Prop :=
  ∀ n, P16721323585058653793.a n = A117630 (n + 1)

end A117630

/-! ## A117630.P18268219769763524747

`∑[A004180(Δ[A054414(n)])]`
-/

namespace A117630.P18268219769763524747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117630.P18268219769763524747

namespace A117630

/-- `∑[A004180(Δ[A054414(n)])]` -/
def P18268219769763524747.Spec : Prop :=
  ∀ n, P18268219769763524747.a n = A117630 (n + 1)

end A117630

/-! ## A117630.P18040141656508120000

`A057428(n+1)+A054414(n+1)`
-/

namespace A117630.P18040141656508120000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A054414 (n + 1)

end

end A117630.P18040141656508120000

namespace A117630

/-- `A057428(n+1)+A054414(n+1)` -/
def P18040141656508120000.Spec : Prop :=
  ∀ n, P18040141656508120000.a n = A117630 (n + 1)

end A117630

/-! ## A117630.P5502564974718995730

`A020914(A368131(n+1)+n+1)`
-/

namespace A117630.P5502564974718995730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (A368131 (n + 1) + (n + 1 : ℤ)).toNat

end

end A117630.P5502564974718995730

namespace A117630

/-- `A020914(A368131(n+1)+n+1)` -/
def P5502564974718995730.Spec : Prop :=
  ∀ n, P5502564974718995730.a n = A117630 (n + 1)

end A117630

/-! ## A117630.P16774204689043930406

`A153881(n+2)+A054414(n+1)`
-/

namespace A117630.P16774204689043930406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A054414 (n + 1)

end

end A117630.P16774204689043930406

namespace A117630

/-- `A153881(n+2)+A054414(n+1)` -/
def P16774204689043930406.Spec : Prop :=
  ∀ n, P16774204689043930406.a n = A117630 (n + 1)

end A117630

/-! ## A117630.P15650792382844663198

`A185050(n)-1+n`
-/

namespace A117630.P15650792382844663198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185050 n - 1 + (n : ℤ)

end

end A117630.P15650792382844663198

namespace A117630

/-- `A185050(n)-1+n` -/
def P15650792382844663198.Spec : Prop :=
  ∀ n, P15650792382844663198.a n = A117630 (n + 1)

end A117630

/-! ## A117630.P18396062751266072485

`A185050(n)+A023443(n)`
-/

namespace A117630.P18396062751266072485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185050 n + A023443 n

end

end A117630.P18396062751266072485

namespace A117630

/-- `A185050(n)+A023443(n)` -/
def P18396062751266072485.Spec : Prop :=
  ∀ n, P18396062751266072485.a n = A117630 (n + 1)

end A117630

/-! ## A117630.P2228386845327572944

`A185050(n)-A024000(n)`
-/

namespace A117630.P2228386845327572944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185050 n - A024000 n

end

end A117630.P2228386845327572944

namespace A117630

/-- `A185050(n)-A024000(n)` -/
def P2228386845327572944.Spec : Prop :=
  ∀ n, P2228386845327572944.a n = A117630 (n + 1)

end A117630

/-! ## A117630.P10153964668612173149

`A023444(n)+A185050(n)+1`
-/

namespace A117630.P10153964668612173149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 n + (A185050 n + 1)

end

end A117630.P10153964668612173149

namespace A117630

/-- `A023444(n)+A185050(n)+1` -/
def P10153964668612173149.Spec : Prop :=
  ∀ n, P10153964668612173149.a n = A117630 (n + 1)

end A117630

/-! ## A117630.P2133542634249270236

`comp[A056576(n)]`
-/

namespace A117630.P2133542634249270236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A117630.P2133542634249270236

namespace A117630

/-- `comp[A056576(n)]` -/
def P2133542634249270236.Spec : Prop :=
  ∀ n, (P2133542634249270236.a n : ℤ) = A117630 (n + 1)

end A117630

/-! ## A117630.P11326354165559210774

`∩[A020914(n), A056576(n)-1]`
-/

namespace A117630.P11326354165559210774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117630.P11326354165559210774

namespace A117630

/-- `∩[A020914(n), A056576(n)-1]` -/
def P11326354165559210774.Spec : Prop :=
  ∀ n, (P11326354165559210774.a n : ℤ) = A117630 (n + 1)

end A117630

/-! ## A117630.P13655252365506221634

`A020725(A325913(n+1)+n)`
-/

namespace A117630.P13655252365506221634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A325913 (n + 1) + (n : ℤ)).toNat

end

end A117630.P13655252365506221634

namespace A117630

/-- `A020725(A325913(n+1)+n)` -/
def P13655252365506221634.Spec : Prop :=
  ∀ n, P13655252365506221634.a n = A117630 (n + 1)

end A117630

/-! ## A117630.P9926563224573804695

`filter[n+1, A387214(#)]`
-/

namespace A117630.P9926563224573804695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A387214 (f1 j) = 1) n)

end

end A117630.P9926563224573804695

namespace A117630

/-- `filter[n+1, A387214(#)]` -/
def P9926563224573804695.Spec : Prop :=
  ∀ n, (P9926563224573804695.a n : ℤ) = A117630 (n + 1)

end A117630

/-! ## A117630.P1282027732017142512

`lt[n*A022924(n), n]`
-/

namespace A117630.P1282027732017142512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A022924 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A117630.P1282027732017142512

namespace A117630

/-- `lt[n*A022924(n), n]` -/
def P1282027732017142512.Spec : Prop :=
  ∀ n, (P1282027732017142512.a n : ℤ) = A117630 (n + 1)

end A117630

/-!
# A117632: Number of 1's required to build n using {+,T} and parentheses, where T(i) = i*(i+1)/2.

The programs for A117632, there is no canonical definition to state claims against.
-/

/-! ## A117632.P15469982734516362774

`A340458(n+1)-A230093(A017913(n))`
-/

namespace A117632.P15469982734516362774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340458 (n + 1) - A230093 (A017913 n).toNat

end

end A117632.P15469982734516362774

/-! ## A117632.P14897216519694619122

`A130790(A300267(n+1)+A061496(n+1))`
-/

namespace A117632.P14897216519694619122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130790 (A300267 (n + 1) + A061496 (n + 1)).toNat

end

end A117632.P14897216519694619122

/-! ## A117632.P7826265124992558337

`A276150(lt[A329631(3*n+1), A242641(2*(n+2))])`
-/

namespace A117632.P7826265124992558337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329631 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117632.P7826265124992558337

/-! ## A117632.P8687038282051435412

`A007895(A294415(n)+7)`
-/

namespace A117632.P8687038282051435412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A294415 n + 7).toNat

end

end A117632.P8687038282051435412

/-! ## A117632.P4692730546238741586

`∑{e}[A130831(A100484(n+1)), #]`
-/

namespace A117632.P4692730546238741586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130831 (A100484 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A117632.P4692730546238741586

/-!
# A117633: Number of self-avoiding walks of n steps on a Manhattan square lattice.

The programs for A117633, there is no canonical definition to state claims against.
-/

/-! ## A117633.P13496438546569670631

`A000122(n²)*A006744(A028310(n))`
-/

namespace A117633.P13496438546569670631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A006744 (A028310 n).toNat

end

end A117633.P13496438546569670631

/-! ## A117633.P4851478000173841363

`gcd(2, A000010(n+2))*A006744(A028310(n))`
-/

namespace A117633.P4851478000173841363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000010 (n + 2)) : ℤ) * A006744 (A028310 n).toNat

end

end A117633.P4851478000173841363

/-! ## A117633.P13277688983360867750

`A014963(A001316(n))*A006744(A028310(n))`
-/

namespace A117633.P13277688983360867750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A006744 (A028310 n).toNat

end

end A117633.P13277688983360867750

/-! ## A117633.P4095821439423277514

`A006744(A028310(n))*A014963(A029930(n))`
-/

namespace A117633.P4095821439423277514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006744 (A028310 n).toNat * A014963 (A029930 n).toNat

end

end A117633.P4095821439423277514

/-!
# A117634: a(0)=0. a(n) = a(n-1) + 1 + (number of positive integers which are <= n and are missing from {a(0),a(1),a(2),...a(n-1)}).

The programs for A117634, there is no canonical definition to state claims against.
-/

/-! ## A117634.P9296420242378206697

`∑[n+3]-2-∑[round(sqrt(3*n+1))]`
-/

namespace A117634.P9296420242378206697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (3 * n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A117634.P9296420242378206697

/-! ## A117634.P5212992677580344675

`∑[(4*(n+1))%A000037(3*n+1)]`
-/

namespace A117634.P5212992677580344675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * (n + 1) : ℤ) (A000037 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117634.P5212992677580344675

/-! ## A117634.P10356815134516771546

`∑[3%comp[∑[n]]+n-A000194(3*n+1)]`
-/

namespace A117634.P10356815134516771546
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n : ℕ) : ℤ) - A000194 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117634.P10356815134516771546

/-! ## A117634.P15664053618846712275

`(∑[4*(n+1)]-2)%∑[A164514(3*n+2)]`
-/

namespace A117634.P15664053618846712275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A117634.P15664053618846712275

/-!
# A117635: Royal elements sequence from A018226 plus closed next shell at 168: H,B,Cl,Mn,Ag,Au,X(Unknown).

The programs for A117635, there is no canonical definition to state claims against.
-/

/-! ## A117635.P5907258909734099561

`A333177(A330401(n+1)+A105770(n))`
-/

namespace A117635.P5907258909734099561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333177 (A330401 (n + 1) + A105770 n).toNat

end

end A117635.P5907258909734099561

/-!
# A117638: Numbers k for which the digital root of phi(k) divides k.

The programs for A117638, there is no canonical definition to state claims against.
-/

/-! ## A117638.P2592930090182987032

`A324760(n+1)-A083889(A028909(n))`
-/

namespace A117638.P2592930090182987032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324760 (n + 1) - A083889 (A028909 n).toNat

end

end A117638.P2592930090182987032

/-! ## A117638.P10592900829778361542

`A324761(n+1)-A083889(A028909(n))`
-/

namespace A117638.P10592900829778361542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324761 (n + 1) - A083889 (A028909 n).toNat

end

end A117638.P10592900829778361542

/-!
# A117639: Complete primes: prime numbers such that every permutation of its digits is prime and all the digits are primes.

The programs for A117639, there is no canonical definition to state claims against.
-/

/-! ## A117639.P17920617418892426177

`A160748(A008725(n))`
-/

namespace A117639.P17920617418892426177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160748 (A008725 n).toNat

end

end A117639.P17920617418892426177

/-! ## A117639.P10360565155401878512

`A160748(∑[A072405(n)])`
-/

namespace A117639.P10360565155401878512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160748 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117639.P10360565155401878512

/-! ## A117639.P12993279842260146466

`A160748(A031876(n+1))`
-/

namespace A117639.P12993279842260146466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160748 (A031876 (n + 1)).toNat

end

end A117639.P12993279842260146466

/-! ## A117639.P7125244330860695095

`A160748(A032957(n+1))`
-/

namespace A117639.P7125244330860695095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160748 (A032957 (n + 1)).toNat

end

end A117639.P7125244330860695095

/-! ## A117639.P2160356276974554928

`A160748(A033059(n+1))`
-/

namespace A117639.P2160356276974554928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160748 (A033059 (n + 1)).toNat

end

end A117639.P2160356276974554928

/-!
# A117640: Concatenation of first n numbers in base 4.

The programs for A117640, there is no canonical definition to state claims against.
-/

/-! ## A117640.P18213587608606169910

`A007090(A048436(n+1))`
-/

namespace A117640.P18213587608606169910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A048436 (n + 1)).toNat

end

end A117640.P18213587608606169910

/-!
# A117641: Number of 3-Motzkin paths of length n with no level steps at height 0.

The programs for A117641, there is no canonical definition to state claims against.
-/

/-! ## A117641.P1225180736091139130

`ceil(A128723(n)/2)`
-/

namespace A117641.P1225180736091139130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A128723 n : ℚ) / 2⌉

end

end A117641.P1225180736091139130

/-! ## A117641.P11938126757363757777

`A128723(n)/ratio[A011782(n)]`
-/

namespace A117641.P11938126757363757777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128723 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A117641.P11938126757363757777

/-! ## A117641.P16350583607885555230

`A128723(n)/A036453(n+1)`
-/

namespace A117641.P16350583607885555230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128723 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A117641.P16350583607885555230

/-! ## A117641.P11697812527520804906

`A128723(n)/A104435(n+1)`
-/

namespace A117641.P11697812527520804906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128723 n : ℚ) / (A104435 (n + 1) : ℚ)

end

end A117641.P11697812527520804906

/-! ## A117641.P10827641287529023151

`A128723(n)/A006530(A001316(n))`
-/

namespace A117641.P10827641287529023151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128723 n : ℚ) / (A006530 (A001316 n).toNat : ℚ)

end

end A117641.P10827641287529023151

/-! ## A117641.P5879761339524171940

`A128723(n)/A020639(A286580(n))`
-/

namespace A117641.P5879761339524171940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128723 n : ℚ) / (A020639 (A286580 n).toNat : ℚ)

end

end A117641.P5879761339524171940

/-! ## A117641.P10471591132938926133

`A128723(n)/A292563(A292563(n)-1)`
-/

namespace A117641.P10471591132938926133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128723 n : ℚ) / (A292563 (A292563 n - 1).toNat : ℚ)

end

end A117641.P10471591132938926133

/-! ## A117641.P4132152475235838633

`A126970(A131179(n))`
-/

namespace A117641.P4132152475235838633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126970 (A131179 n).toNat

end

end A117641.P4132152475235838633

/-! ## A117641.P13455314122919092411

`A126970(∑[n])`
-/

namespace A117641.P13455314122919092411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126970 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117641.P13455314122919092411

/-! ## A117641.P13333391947298760921

`A171224(∑[n])`
-/

namespace A117641.P13333391947298760921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171224 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117641.P13333391947298760921

/-! ## A117641.P12578836510396424701

`A089026(A000217(n+1))*A126970(A000217(n))`
-/

namespace A117641.P12578836510396424701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A000217 (n + 1)).toNat * A126970 (A000217 n).toNat

end

end A117641.P12578836510396424701

/-!
# A117642: a(n) = 3*n^3.

The programs for A117642, the canonical program `A117642.P2206942344561243653` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117642 has offset 0).

The definition of A117642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n^3` (program `A117642.P2206942344561243653`, by `A117642.P2206942344561243653.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117642.P2206942344561243653

`3*n^3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117642

/-- `3*n^3` -/
def P2206942344561243653.Spec : Prop :=
  ∀ n, (P2206942344561243653.a n : ℤ) = A117642 n

theorem P2206942344561243653.correct : P2206942344561243653.Spec := by
  intro n
  simp only [A117642]

end A117642

/-!
# A117643: a(n) = n*(a(n-1)-1) starting with a(0)=3.

The programs for A117643, the canonical program `A117643.P16628253581229121577` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117643 has offset 0).

The definition of A117643 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)-1)` (program `A117643.P16628253581229121577`, by `A117643.P16628253581229121577.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117643.P16628253581229121577

`n*(a(n-1)-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117643

/-- `n*(a(n-1)-1)` -/
def P16628253581229121577.Spec : Prop :=
  ∀ n, P16628253581229121577.a n = A117643 n

theorem P16628253581229121577.correct : P16628253581229121577.Spec := by
  intro n
  simp only [A117643]

end A117643

/-! ## A117643.P8117245226940307679

`lcm(n, a(n-1))-n` with `a(0)=3, a(1)=2, a(2)=2`
-/

namespace A117643.P8117245226940307679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 2] fun n a =>
  (Int.lcm (n : ℤ) (a (n - 1)) : ℤ) - (n : ℤ)

end

end A117643.P8117245226940307679

namespace A117643

/-- `lcm(n, a(n-1))-n` -/
def P8117245226940307679.Spec : Prop :=
  ∀ n, P8117245226940307679.a n = A117643 n

end A117643

/-! ## A117643.P5107022230976060569

`(a(n-1)-1)/tan(acot(n))` with `a(0)=3`
-/

namespace A117643.P5107022230976060569
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A117643.P5107022230976060569

namespace A117643

/-- `(a(n-1)-1)/tan(acot(n))` -/
def P5107022230976060569.Spec : Prop :=
  ∀ n, P5107022230976060569.a n = (A117643 n : ℝ)

end A117643

/-! ## A117643.P1135562306403369734

`(a(n-1)-1)/cot(atan(n))` with `a(0)=3`
-/

namespace A117643.P1135562306403369734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) - 1) / Real.cot (Real.arctan (n : ℝ))

end

end A117643.P1135562306403369734

namespace A117643

/-- `(a(n-1)-1)/cot(atan(n))` -/
def P1135562306403369734.Spec : Prop :=
  ∀ n, P1135562306403369734.a n = (A117643 n : ℝ)

end A117643

/-! ## A117643.P7959692174982854970

`(a(n-1)-1)/n^(-1)` with `a(0)=3`
-/

namespace A117643.P7959692174982854970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A117643.P7959692174982854970

namespace A117643

/-- `(a(n-1)-1)/n^(-1)` -/
def P7959692174982854970.Spec : Prop :=
  ∀ n, P7959692174982854970.a n = (A117643 n : ℚ)

end A117643

/-! ## A117643.P9485809074228808187

`(1-a(n-1))/(1-(n+1)/n)` with `a(0)=3`
-/

namespace A117643.P9485809074228808187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (1 - a (n - 1)) / (1 - (n + 1 : ℚ) / (n : ℚ))

end

end A117643.P9485809074228808187

namespace A117643

/-- `(1-a(n-1))/(1-(n+1)/n)` -/
def P9485809074228808187.Spec : Prop :=
  ∀ n, P9485809074228808187.a n = (A117643 n : ℚ)

end A117643

/-! ## A117643.P13418543089781847510

`(A101634(n+1)-n)/2`
-/

namespace A117643.P13418543089781847510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101634 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A117643.P13418543089781847510

namespace A117643

/-- `(A101634(n+1)-n)/2` -/
def P13418543089781847510.Spec : Prop :=
  ∀ n, P13418543089781847510.a n = (A117643 n : ℚ)

end A117643

/-! ## A117643.P17992333605805177350

`3*A000142(n)-A007526(n)`
-/

namespace A117643.P17992333605805177350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000142 n - A007526 n

end

end A117643.P17992333605805177350

namespace A117643

/-- `3*A000142(n)-A007526(n)` -/
def P17992333605805177350.Spec : Prop :=
  ∀ n, P17992333605805177350.a n = A117643 n

end A117643

/-! ## A117643.P15238665250733898458

`A019464(2*n)-2*A082459(2*n)`
-/

namespace A117643.P15238665250733898458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 (2 * n) - 2 * A082459 (2 * n)

end

end A117643.P15238665250733898458

namespace A117643

/-- `A019464(2*n)-2*A082459(2*n)` -/
def P15238665250733898458.Spec : Prop :=
  ∀ n, P15238665250733898458.a n = A117643 n

end A117643

/-! ## A117643.P15837595641397527037

`A019466(2*n)-(A019461(2*n)+n)`
-/

namespace A117643.P15837595641397527037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019466 (2 * n) - (A019461 (2 * n) + (n : ℤ))

end

end A117643.P15837595641397527037

namespace A117643

/-- `A019466(2*n)-(A019461(2*n)+n)` -/
def P15837595641397527037.Spec : Prop :=
  ∀ n, P15837595641397527037.a n = A117643 n

end A117643

/-!
# A117644: Number of distinct pairs a < b with nonzero decimal digits such that a + b = 10^n.

The programs for A117644, the canonical program `A117644.P9230241296569858554` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117644 has offset 1).

The definition of A117644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117644.P9230241296569858554

`9*a(n-1)-8*a(n-2)` with `a(0)=4, a(1)=45, a(2)=369`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117644

/-- `9*a(n-1)-8*a(n-2)` -/
def P9230241296569858554.Spec : Prop :=
  ∀ n, P9230241296569858554.a n = A117644 (n + 1)

theorem P9230241296569858554.correct : P9230241296569858554.Spec := by
  intro n
  simp only [A117644, Nat.add_sub_cancel]

end A117644

/-! ## A117644.P4727931789344174309

`ogf((4+9x-4x^2)/(1-9x+8x^2))`
-/

namespace A117644.P4727931789344174309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 9, -4] [1, -9, 8] n

end

end A117644.P4727931789344174309

namespace A117644

/-- `ogf((4+9x-4x^2)/(1-9x+8x^2))` -/
def P4727931789344174309.Spec : Prop :=
  ∀ n, P4727931789344174309.a n = A117644 (n + 1)

end A117644

/-! ## A117644.P3618896194980377540

`8*a(n-1)+9` with `a(0)=4, a(1)=45`
-/

namespace A117644.P3618896194980377540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 45] fun n a =>
  8 * a (n - 1) + 9

end

end A117644.P3618896194980377540

namespace A117644

/-- `8*a(n-1)+9` -/
def P3618896194980377540.Spec : Prop :=
  ∀ n, (P3618896194980377540.a n : ℤ) = A117644 (n + 1)

end A117644

/-! ## A117644.P9701317416072017485

`Δ[record[(n%3)^n]]+∑[2*8^n]-1`
-/

namespace A117644.P9701317416072017485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 3) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 8 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1)

end

end A117644.P9701317416072017485

namespace A117644

/-- `Δ[record[(n%3)^n]]+∑[2*8^n]-1` -/
def P9701317416072017485.Spec : Prop :=
  ∀ n, P9701317416072017485.a n = A117644 (n + 1)

end A117644

/-! ## A117644.P14458901341592994082

`A233328(n)+Δ[A092811(n)]`
-/

namespace A117644.P14458901341592994082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233328 n + (f1 (n + 1) - f1 n)

end

end A117644.P14458901341592994082

namespace A117644

/-- `A233328(n)+Δ[A092811(n)]` -/
def P14458901341592994082.Spec : Prop :=
  ∀ n, P14458901341592994082.a n = A117644 (n + 1)

end A117644

/-! ## A117644.P7798094084907642874

`A226308(3*n+1)+Δ[A092811(n)]`
-/

namespace A117644.P7798094084907642874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226308 (3 * n + 1) + (f1 (n + 1) - f1 n)

end

end A117644.P7798094084907642874

namespace A117644

/-- `A226308(3*n+1)+Δ[A092811(n)]` -/
def P7798094084907642874.Spec : Prop :=
  ∀ n, P7798094084907642874.a n = A117644 (n + 1)

end A117644

/-! ## A117644.P17171399337776591803

`Δ[A092811(n)]+∑[A151821(2*n+1+n)]`
-/

namespace A117644.P17171399337776591803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A117644.P17171399337776591803

namespace A117644

/-- `Δ[A092811(n)]+∑[A151821(2*n+1+n)]` -/
def P17171399337776591803.Spec : Prop :=
  ∀ n, P17171399337776591803.a n = A117644 (n + 1)

end A117644

/-! ## A117644.P9122334336244808213

`Δ[A092811(n)]+∑[A036453(n+1)^(3*n+1)]`
-/

namespace A117644.P9122334336244808213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) ^ (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A117644.P9122334336244808213

namespace A117644

/-- `Δ[A092811(n)]+∑[A036453(n+1)^(3*n+1)]` -/
def P9122334336244808213.Spec : Prop :=
  ∀ n, P9122334336244808213.a n = A117644 (n + 1)

end A117644

/-! ## A117644.P5753961448652066146

`Δ[A092811(n)]+∑[A174296(2*n)^(2*n+1+n)]`
-/

namespace A117644.P5753961448652066146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 (2 * n) ^ (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A117644.P5753961448652066146

namespace A117644

/-- `Δ[A092811(n)]+∑[A174296(2*n)^(2*n+1+n)]` -/
def P5753961448652066146.Spec : Prop :=
  ∀ n, P5753961448652066146.a n = A117644 (n + 1)

end A117644

/-! ## A117644.P6121140342275025617

`A238276(n)+A052996(A016777(n))`
-/

namespace A117644.P6121140342275025617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238276 n + A052996 (A016777 n).toNat

end

end A117644.P6121140342275025617

namespace A117644

/-- `A238276(n)+A052996(A016777(n))` -/
def P6121140342275025617.Spec : Prop :=
  ∀ n, P6121140342275025617.a n = A117644 (n + 1)

end A117644

/-! ## A117644.P5656251586634948167

`A052996(A016777(n))+∑[A003951(n)]`
-/

namespace A117644.P5656251586634948167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 (A016777 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117644.P5656251586634948167

namespace A117644

/-- `A052996(A016777(n))+∑[A003951(n)]` -/
def P5656251586634948167.Spec : Prop :=
  ∀ n, P5656251586634948167.a n = A117644 (n + 1)

end A117644

/-! ## A117644.P13472536390165081103

`A233328(n)+Δ[A011782(A008585(n))]`
-/

namespace A117644.P13472536390165081103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A008585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233328 n + (f1 (n + 1) - f1 n)

end

end A117644.P13472536390165081103

namespace A117644

/-- `A233328(n)+Δ[A011782(A008585(n))]` -/
def P13472536390165081103.Spec : Prop :=
  ∀ n, P13472536390165081103.a n = A117644 (n + 1)

end A117644

/-!
# A117645: a(n) = abs(floor(f(n))), where f(n) = (248/125)*f(n-1) - f(n-2), with f(0) = 120, and f(1) = 125.

The programs for A117645, there is no canonical definition to state claims against.
-/

/-! ## A117645.P1851452510464540062

`A216589(A073521(n+1))-A293328(n)`
-/

namespace A117645.P1851452510464540062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216589 (A073521 (n + 1)).toNat - A293328 n

end

end A117645.P1851452510464540062

/-!
# A117646: Triples of three consecutive primes (p,q,r) with equal gaps: q-p = r-q.

The programs for A117646, there is no canonical definition to state claims against.
-/

/-! ## A117646.P14143939404386252950

`p?[∑[A292613(A056926(n))]]`
-/

namespace A117646.P14143939404386252950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292613 (A056926 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117646.P14143939404386252950

/-! ## A117646.P14801774133501653628

`A000040(eq[A094918(n+1), A100247(n)])`
-/

namespace A117646.P14801774133501653628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117646.P14801774133501653628

/-!
# A117647: a(2n) = A014445(n), a(2n+1) = A015448(n+1).

The programs for A117647, the canonical program `A117647.P15779758486782283817` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117647 has offset 0).

The definition of A117647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117647.P15779758486782283817

`A059973(n+2)-A059973(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A117647

/-- `A059973(n+2)-A059973(n+1)` -/
def P15779758486782283817.Spec : Prop :=
  ∀ n, P15779758486782283817.a n = A117647 n

theorem P15779758486782283817.correct : P15779758486782283817.Spec := by
  intro n
  simp only [A117647]

end A117647

/-! ## A117647.P1824976290913096730

`ogf((x+2x^2+x^3)/(1-4x^2-x^4))`
-/

namespace A117647.P1824976290913096730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 1] [1, 0, -4, 0, -1] n

end

end A117647.P1824976290913096730

namespace A117647

/-- `ogf((x+2x^2+x^3)/(1-4x^2-x^4))` -/
def P1824976290913096730.Spec : Prop :=
  ∀ n, P1824976290913096730.a n = A117647 n

end A117647

/-! ## A117647.P11352763029701706050

`a(n-4)+4*a(n-2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A117647.P11352763029701706050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 5] fun n a =>
  a (n - 4) + 4 * a (n - 2)

end

end A117647.P11352763029701706050

namespace A117647

/-- `a(n-4)+4*a(n-2)` -/
def P11352763029701706050.Spec : Prop :=
  ∀ n, (P11352763029701706050.a n : ℤ) = A117647 n

end A117647

/-! ## A117647.P5438257244946391531

`A103609(3*n+1)`
-/

namespace A117647.P5438257244946391531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (3 * n + 1)

end

end A117647.P5438257244946391531

namespace A117647

/-- `A103609(3*n+1)` -/
def P5438257244946391531.Spec : Prop :=
  ∀ n, P5438257244946391531.a n = A117647 n

end A117647

/-! ## A117647.P15163386557614160440

`A000045(ceil(3*n/2))`
-/

namespace A117647.P15163386557614160440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈3 * ((n : ℚ) / 2)⌉.toNat

end

end A117647.P15163386557614160440

namespace A117647

/-- `A000045(ceil(3*n/2))` -/
def P15163386557614160440.Spec : Prop :=
  ∀ n, P15163386557614160440.a n = A117647 n

end A117647

/-! ## A117647.P11918970272543032408

`A212804(comp[3*n+1]+1)`
-/

namespace A117647.P11918970272543032408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A117647.P11918970272543032408

namespace A117647

/-- `A212804(comp[3*n+1]+1)` -/
def P11918970272543032408.Spec : Prop :=
  ∀ n, P11918970272543032408.a n = A117647 n

end A117647

/-! ## A117647.P10919319683921366934

`A001611(comp[3*n+1])-1`
-/

namespace A117647.P10919319683921366934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A117647.P10919319683921366934

namespace A117647

/-- `A001611(comp[3*n+1])-1` -/
def P10919319683921366934.Spec : Prop :=
  ∀ n, P10919319683921366934.a n = A117647 n

end A117647

/-! ## A117647.P10507378933849666462

`record[A000045((n+1)%3+n-1)]`
-/

namespace A117647.P10507378933849666462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((((n + 1) % 3 : ℕ) : ℤ) + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117647.P10507378933849666462

namespace A117647

/-- `record[A000045((n+1)%3+n-1)]` -/
def P10507378933849666462.Spec : Prop :=
  ∀ n, P10507378933849666462.a n = A117647 n

end A117647

/-! ## A117647.P3547957267703421458

`record[A000045(floor((gcd(3, 1-n)+n)/2))]`
-/

namespace A117647.P3547957267703421458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(Int.gcd 3 (1 - (n : ℤ)) + n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117647.P3547957267703421458

namespace A117647

/-- `record[A000045(floor((gcd(3, 1-n)+n)/2))]` -/
def P3547957267703421458.Spec : Prop :=
  ∀ n, P3547957267703421458.a n = A117647 n

end A117647

/-! ## A117647.P7701868621003439842

`record[A000045(A064429(n))]`
-/

namespace A117647.P7701868621003439842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A064429 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117647.P7701868621003439842

namespace A117647

/-- `record[A000045(A064429(n))]` -/
def P7701868621003439842.Spec : Prop :=
  ∀ n, P7701868621003439842.a n = A117647 n

end A117647

/-! ## A117647.P604033718469559260

`record[A000045(A131739(n))]`
-/

namespace A117647.P604033718469559260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A131739 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117647.P604033718469559260

namespace A117647

/-- `record[A000045(A131739(n))]` -/
def P604033718469559260.Spec : Prop :=
  ∀ n, P604033718469559260.a n = A117647 n

end A117647

/-! ## A117647.P5958888610265850340

`record[A000045(A137719(n))]`
-/

namespace A117647.P5958888610265850340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A137719 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117647.P5958888610265850340

namespace A117647

/-- `record[A000045(A137719(n))]` -/
def P5958888610265850340.Spec : Prop :=
  ∀ n, P5958888610265850340.a n = A117647 n

end A117647

/-! ## A117647.P3376076219543334045

`A247049(A056020(n+1))`
-/

namespace A117647.P3376076219543334045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A056020 (n + 1)).toNat

end

end A117647.P3376076219543334045

namespace A117647

/-- `A247049(A056020(n+1))` -/
def P3376076219543334045.Spec : Prop :=
  ∀ n, P3376076219543334045.a n = A117647 n

end A117647

/-! ## A117647.P11988711233360649219

`A247309(A214068(n+1))`
-/

namespace A117647.P11988711233360649219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (A214068 (n + 1)).toNat

end

end A117647.P11988711233360649219

namespace A117647

/-- `A247309(A214068(n+1))` -/
def P11988711233360649219.Spec : Prop :=
  ∀ n, P11988711233360649219.a n = A117647 n

end A117647

/-! ## A117647.P15916915425599336760

`record[A000045(A215090(2*n))]`
-/

namespace A117647.P15916915425599336760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A215090 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117647.P15916915425599336760

namespace A117647

/-- `record[A000045(A215090(2*n))]` -/
def P15916915425599336760.Spec : Prop :=
  ∀ n, P15916915425599336760.a n = A117647 n

end A117647

/-! ## A117647.P15706045210103561116

`record[A000045(n)/A058281(n)]`
-/

namespace A117647.P15706045210103561116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (A058281 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117647.P15706045210103561116

namespace A117647

/-- `record[A000045(n)/A058281(n)]` -/
def P15706045210103561116.Spec : Prop :=
  ∀ n, P15706045210103561116.a n = (A117647 n : ℚ)

end A117647

/-! ## A117647.P900250100705237806

`record[A000045(A080782(n+1)-1)]`
-/

namespace A117647.P900250100705237806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A080782 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117647.P900250100705237806

namespace A117647

/-- `record[A000045(A080782(n+1)-1)]` -/
def P900250100705237806.Spec : Prop :=
  ∀ n, P900250100705237806.a n = A117647 n

end A117647

/-! ## A117647.P1120099192904659022

`record[A000045(A286577(n+1)-1)]`
-/

namespace A117647.P1120099192904659022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A286577 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117647.P1120099192904659022

namespace A117647

/-- `record[A000045(A286577(n+1)-1)]` -/
def P1120099192904659022.Spec : Prop :=
  ∀ n, P1120099192904659022.a n = A117647 n

end A117647

/-!
# A117648: Let f(0) = 2, f(1) = 3, and f(n) = (4/3)*f(n-1) - f(n-2) for n >= 2, a(n) = abs(floor(f(n))).

The programs for A117648, there is no canonical definition to state claims against.
-/

/-! ## A117648.P13608755952234409280

`A284387(n+1)+A080887(A060424(n+1))`
-/

namespace A117648.P13608755952234409280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284387 (n + 1) + A080887 (A060424 (n + 1)).toNat

end

end A117648.P13608755952234409280

/-! ## A117648.P17313040499262343678

`A004549(A268652(2*n)+A136737(n+2))`
-/

namespace A117648.P17313040499262343678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004549 (A268652 (2 * n) + A136737 (n + 2)).toNat

end

end A117648.P17313040499262343678

/-! ## A117648.P16112145167950799281

`A010873(A067027(2*n+5)-A217476(n))`
-/

namespace A117648.P16112145167950799281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A067027 (2 * n + 5) - A217476 n).toNat

end

end A117648.P16112145167950799281

/-! ## A117648.P8694114589219279919

`A287571(lcm(A008943(n+1), A287565(n+1)))`
-/

namespace A117648.P8694114589219279919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287571 (Int.lcm (A008943 (n + 1)) (A287565 (n + 1)))

end

end A117648.P8694114589219279919

/-! ## A117648.P3930234069512990410

`A010684(A306852(n+4))-A062172(2*(n+2))`
-/

namespace A117648.P3930234069512990410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A306852 (n + 4)).toNat - A062172 (2 * (n + 2))

end

end A117648.P3930234069512990410

/-!
# A117649: A Verhulst/ Pearl's equation type simulation of a sigmoid population sequence using a base A000045 model ( the populations are not smooth curves but integers).

The programs for A117649, there is no canonical definition to state claims against.
-/

/-! ## A117649.P294113098551244307

`(∑[floor((n²-n)/9)]+1)%A163145(∑[n])`
-/

namespace A117649.P294113098551244307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 9⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) (A163145 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A117649.P294113098551244307

/-! ## A117649.P15901165578861854819

`(A173653(n)+1)%A173669(n+1)`
-/

namespace A117649.P15901165578861854819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173653 n + 1) (A173669 (n + 1))

end

end A117649.P15901165578861854819

/-! ## A117649.P7071932467221060753

`A173653(n)+A066247(A014480(n))`
-/

namespace A117649.P7071932467221060753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173653 n + A066247 (A014480 n).toNat

end

end A117649.P7071932467221060753

/-! ## A117649.P57590863164022810

`A173653(n)+A066247(A173622(n+2))`
-/

namespace A117649.P57590863164022810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173653 n + A066247 (A173622 (n + 2)).toNat

end

end A117649.P57590863164022810

/-! ## A117649.P2179466856353123413

`A173653(n)+A066247(A332647(n+3))`
-/

namespace A117649.P2179466856353123413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173653 n + A066247 (A332647 (n + 3)).toNat

end

end A117649.P2179466856353123413

/-!
# A117650: Heptagonal numbers for which the sum of the digits is also a heptagonal number.

The programs for A117650, there is no canonical definition to state claims against.
-/

/-! ## A117650.P12726313795111818267

`A000566(lt[A225725(3*n+4), A272577(n+4)])`
-/

namespace A117650.P12726313795111818267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225725 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272577 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117650.P12726313795111818267

/-! ## A117650.P16014093296788373098

`A000566(lt[A057145(2*(n+2)), A350385(3*(n+1))])`
-/

namespace A117650.P16014093296788373098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350385 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117650.P16014093296788373098

/-!
# A117651: A002415 and A052472 interlaced.

The programs for A117651, there is no canonical definition to state claims against.
-/

/-! ## A117651.P1214050523807152874

`A045931(n+3)*A307297(A074028(n+3))`
-/

namespace A117651.P1214050523807152874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045931 (n + 3) * A307297 (A074028 (n + 3)).toNat

end

end A117651.P1214050523807152874

/-!
# A117652: a(n) = floor(n*(n+2)*(n+4)*(n-6)/192).

The programs for A117652, the canonical program `A117652.P6116965544223602487` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117652 has offset 0).

The definition of A117652 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n+2)*(n+4)*(n-6)/192)` (program `A117652.P6116965544223602487`, by `A117652.P6116965544223602487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117652.P6116965544223602487

`floor(n*(n+2)*(n+4)*(n-6)/192)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117652

/-- `floor(n*(n+2)*(n+4)*(n-6)/192)` -/
def P6116965544223602487.Spec : Prop :=
  ∀ n, P6116965544223602487.a n = A117652 n

theorem P6116965544223602487.correct : P6116965544223602487.Spec := by
  intro n
  simp only [A117652]

end A117652

/-!
# A117654: Coefficients in an asymptotic expansion for mean distance from origin of a point uniformly distributed over the n-dimensional unit cube [0,1]^n (denominators).

The programs for A117654, there is no canonical definition to state claims against.
-/

/-! ## A117654.P7022014305221068695

`A007661(A156243(n+1))*A286734(n)`
-/

namespace A117654.P7022014305221068695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 (A156243 (n + 1)).toNat * A286734 n

end

end A117654.P7022014305221068695

/-!
# A117655: a(n) = floor(f(n)), where f(n) = (5 - 4.37/(f(n-1) + f(n-2))^(1/3))^3, f(0) = 0, and f(1) = 1.

The programs for A117655, there is no canonical definition to state claims against.
-/

/-! ## A117655.P7898162894871998937

`A344839(A247354(n)²)`
-/

namespace A117655.P7898162894871998937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344839 (A247354 n ^ 2).toNat

end

end A117655.P7898162894871998937

/-!
# A117656: Number of solutions to x^(k+2)=x^2 mod n for some k>=1.

The programs for A117656, the canonical program `A117656.P11004913678404553061` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117656 has offset 1).

The definition of A117656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117656.P910453848811791083

`∏{p}[n+1, #^val(n+1, #²)]*A055653((n+1)/∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A117656.P910453848811791083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) * A055653 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat

end

end A117656.P910453848811791083

namespace A117656

/-- `∏{p}[n+1, #^val(n+1, #²)]*A055653((n+1)/∏{p}[n+1, #^val(n+1, #²)])` -/
def P910453848811791083.Spec : Prop :=
  ∀ n, P910453848811791083.a n = A117656 (n + 1)

end A117656

/-! ## A117656.P16955484793676943168

`A000188(n+1)*A055653(A019554(n+1))`
-/

namespace A117656.P16955484793676943168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A055653 (A019554 (n + 1)).toNat

end

end A117656.P16955484793676943168

namespace A117656

/-- `A000188(n+1)*A055653(A019554(n+1))` -/
def P16955484793676943168.Spec : Prop :=
  ∀ n, P16955484793676943168.a n = A117656 (n + 1)

end A117656

/-! ## A117656.P11004913678404553061

`A055653(A019554(n+1))*A337101(2*(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A117656

/-- `A055653(A019554(n+1))*A337101(2*(n+1))` -/
def P11004913678404553061.Spec : Prop :=
  ∀ n, P11004913678404553061.a n = A117656 (n + 1)

theorem P11004913678404553061.correct : P11004913678404553061.Spec := by
  intro n
  simp only [A117656, Nat.add_sub_cancel]

end A117656

/-! ## A117656.P10890348414629470552

`A019554(A003557(n+1))*A055653(A019554(n+1))`
-/

namespace A117656.P10890348414629470552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A003557 (n + 1)).toNat * A055653 (A019554 (n + 1)).toNat

end

end A117656.P10890348414629470552

namespace A117656

/-- `A019554(A003557(n+1))*A055653(A019554(n+1))` -/
def P10890348414629470552.Spec : Prop :=
  ∀ n, P10890348414629470552.a n = A117656 (n + 1)

end A117656

/-! ## A117656.P3839220330077244299

`A019554(A008833(n+1))*A055653(A019554(n+1))`
-/

namespace A117656.P3839220330077244299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A008833 (n + 1)).toNat * A055653 (A019554 (n + 1)).toNat

end

end A117656.P3839220330077244299

namespace A117656

/-- `A019554(A008833(n+1))*A055653(A019554(n+1))` -/
def P3839220330077244299.Spec : Prop :=
  ∀ n, P3839220330077244299.a n = A117656 (n + 1)

end A117656

/-!
# A117657: Number of solutions to x^(k+3)=x^3 mod n for some k>=1.

The programs for A117657, the canonical program `A117657.P1042648279683353267` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117657 has offset 1).

The definition of A117657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117657.P1042648279683353267

`A000189(n+1)*A055653(A019555(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A117657

/-- `A000189(n+1)*A055653(A019555(n+1))` -/
def P1042648279683353267.Spec : Prop :=
  ∀ n, P1042648279683353267.a n = A117657 (n + 1)

theorem P1042648279683353267.correct : P1042648279683353267.Spec := by
  intro n
  simp only [A117657, Nat.add_sub_cancel]

end A117657

/-! ## A117657.P15909195321868987632

`∑{digits}[A196788(A008835(n+1)), (n+1)/#]`
-/

namespace A117657.P15909195321868987632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196788 (A008835 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (n + 1 : ℚ) / (x : ℚ)).sum

end

end A117657.P15909195321868987632

namespace A117657

/-- `∑{digits}[A196788(A008835(n+1)), (n+1)/#]` -/
def P15909195321868987632.Spec : Prop :=
  ∀ n, P15909195321868987632.a n = (A117657 (n + 1) : ℚ)

end A117657

/-! ## A117657.P8546542711973410235

`(A008574(n)-A312894(n))%A008835(n+1)!+n+1`
-/

namespace A117657.P8546542711973410235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 n - A312894 n) (Nat.factorial (A008835 (n + 1)).toNat : ℤ) + (n + 1 : ℤ)

end

end A117657.P8546542711973410235

namespace A117657

/-- `(A008574(n)-A312894(n))%A008835(n+1)!+n+1` -/
def P8546542711973410235.Spec : Prop :=
  ∀ n, P8546542711973410235.a n = A117657 (n + 1)

end A117657

/-! ## A117657.P15718586255886745803

`n+1-A253088(n)%A008835(n+1)`
-/

namespace A117657.P15718586255886745803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A253088 n) (A008835 (n + 1))

end

end A117657.P15718586255886745803

namespace A117657

/-- `n+1-A253088(n)%A008835(n+1)` -/
def P15718586255886745803.Spec : Prop :=
  ∀ n, P15718586255886745803.a n = A117657 (n + 1)

end A117657

/-! ## A117657.P679897368409645731

`n+1-A326681(∏{e}[n+1, #!])`
-/

namespace A117657.P679897368409645731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A326681 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p))

end

end A117657.P679897368409645731

namespace A117657

/-- `n+1-A326681(∏{e}[n+1, #!])` -/
def P679897368409645731.Spec : Prop :=
  ∀ n, P679897368409645731.a n = A117657 (n + 1)

end A117657

/-!
# A117658: Number of solutions to x^(k+1) = x^k mod n for some k >= 1.

The programs for A117658, the canonical program `A117658.P10121944413526807387` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117658 has offset 1).

The definition of A117658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117658.P10679506906933799079

`∑{d}[n+1, A000010(A003557(#))]`
-/

namespace A117658.P10679506906933799079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (A003557 d).toNat

end

end A117658.P10679506906933799079

namespace A117658

/-- `∑{d}[n+1, A000010(A003557(#))]` -/
def P10679506906933799079.Spec : Prop :=
  ∀ n, P10679506906933799079.a n = A117658 (n + 1)

end A117658

/-! ## A117658.P10103999258661317004

`∑{d}[n+1, A000010(#/A007947(#))]`
-/

namespace A117658.P10103999258661317004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((d : ℚ) / (A007947 d : ℚ))).toNat

end

end A117658.P10103999258661317004

namespace A117658

/-- `∑{d}[n+1, A000010(#/A007947(#))]` -/
def P10103999258661317004.Spec : Prop :=
  ∀ n, P10103999258661317004.a n = A117658 (n + 1)

end A117658

/-! ## A117658.P10121944413526807387

`A034448(A003557(n+1))*A056671(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A117658

/-- `A034448(A003557(n+1))*A056671(n+1)` -/
def P10121944413526807387.Spec : Prop :=
  ∀ n, P10121944413526807387.a n = A117658 (n + 1)

theorem P10121944413526807387.correct : P10121944413526807387.Spec := by
  intro n
  simp only [A117658, Nat.add_sub_cancel]

end A117658

/-! ## A117658.P10015787931571299170

`∑{d}[n+1, A000010(A000010(#)/A173557(#))]`
-/

namespace A117658.P10015787931571299170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((A000010 d : ℚ) / (A173557 d : ℚ))).toNat

end

end A117658.P10015787931571299170

namespace A117658

/-- `∑{d}[n+1, A000010(A000010(#)/A173557(#))]` -/
def P10015787931571299170.Spec : Prop :=
  ∀ n, P10015787931571299170.a n = A117658 (n + 1)

end A117658

/-! ## A117658.P894470924971701969

`2^A056169(n+1)*A034448(A003557(n+1))`
-/

namespace A117658.P894470924971701969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056169 (n + 1) : ℤ) * (A034448 (A003557 (n + 1)).toNat : ℚ)

end

end A117658.P894470924971701969

namespace A117658

/-- `2^A056169(n+1)*A034448(A003557(n+1))` -/
def P894470924971701969.Spec : Prop :=
  ∀ n, P894470924971701969.a n = (A117658 (n + 1) : ℚ)

end A117658

/-! ## A117658.P11476154316745726661

`A006519(A181819(n+1))*A034448(A003557(n+1))`
-/

namespace A117658.P11476154316745726661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A181819 (n + 1)).toNat * A034448 (A003557 (n + 1)).toNat

end

end A117658.P11476154316745726661

namespace A117658

/-- `A006519(A181819(n+1))*A034448(A003557(n+1))` -/
def P11476154316745726661.Spec : Prop :=
  ∀ n, P11476154316745726661.a n = A117658 (n + 1)

end A117658

/-! ## A117658.P11280789243041885770

`A305461(A102631(n+1))`
-/

namespace A117658.P11280789243041885770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A102631 (n + 1)).toNat

end

end A117658.P11280789243041885770

namespace A117658

/-- `A305461(A102631(n+1))` -/
def P11280789243041885770.Spec : Prop :=
  ∀ n, P11280789243041885770.a n = A117658 (n + 1)

end A117658

/-! ## A117658.P4548417068333968002

`∑{d}[n+1, A000010(A322352(#²)/#)]`
-/

namespace A117658.P4548417068333968002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((A322352 (d ^ 2) : ℚ) / (d : ℚ))).toNat

end

end A117658.P4548417068333968002

namespace A117658

/-- `∑{d}[n+1, A000010(A322352(#²)/#)]` -/
def P4548417068333968002.Spec : Prop :=
  ∀ n, P4548417068333968002.a n = A117658 (n + 1)

end A117658

/-!
# A117659: Number of solutions to x^(k+2)=x^k mod n for some k>=1.

The programs for A117659, there is no canonical definition to state claims against.
-/

/-! ## A117659.P16724787667458812240

`or(A062756(A033688(n)), A092089(n+1))`
-/

namespace A117659.P16724787667458812240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062756 (A033688 n).toNat) (A092089 (n + 1))

end

end A117659.P16724787667458812240

/-! ## A117659.P7549580061447342326

`or(A010894(A265227(n+1)), A092089(n+1))`
-/

namespace A117659.P7549580061447342326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A265227 (n + 1)).toNat + 21)) (A092089 (n + 1))

end

end A117659.P7549580061447342326

/-! ## A117659.P11275088496591515554

`A092089(n+1)+A092037(A092074(3*n+4))`
-/

namespace A117659.P11275088496591515554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092089 (n + 1) + A092037 (A092074 (3 * n + 4)).toNat

end

end A117659.P11275088496591515554

/-! ## A117659.P3443793220938190518

`A092089(n+1)+A010894(A265227(n+1)+A010894(n))`
-/

namespace A117659.P3443793220938190518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092089 (n + 1) + A010894 ((A265227 (n + 1) + A010894 (n + 21)).toNat + 21)

end

end A117659.P3443793220938190518

/-!
# A117660: Number of solutions to x^(k+3)=x^k mod n for some k>=1.

The programs for A117660, there is no canonical definition to state claims against.
-/

/-! ## A117660.P4974702803455531919

`A001826(A134059(n)*A342615(n+1))`
-/

namespace A117660.P4974702803455531919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (A134059 n * A342615 (n + 1)).toNat

end

end A117660.P4974702803455531919

/-! ## A117660.P13193005144237772887

`A181819(n+1)*A332278(A135880(n))`
-/

namespace A117660.P13193005144237772887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1) * A332278 (A135880 n).toNat

end

end A117660.P13193005144237772887

/-! ## A117660.P233481788601649236

`A246144(A135880(n))*A318469(n+1)`
-/

namespace A117660.P233481788601649236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246144 (A135880 n).toNat * A318469 (n + 1)

end

end A117660.P233481788601649236

/-! ## A117660.P15269694903256442911

`A181819(lcm(A187829(n+1), A341694(n+1)))`
-/

namespace A117660.P15269694903256442911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (Int.lcm (A187829 (n + 1)) (A341694 (n + 1)))

end

end A117660.P15269694903256442911

/-! ## A117660.P17872334632586356377

`A077462(A120426(n+1))*A322794(A286610(n+1))`
-/

namespace A117660.P17872334632586356377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A120426 (n + 1)).toNat * A322794 (A286610 (n + 1)).toNat

end

end A117660.P17872334632586356377

/-!
# A117662: a(n) = n*(n-1)*(n-2)*(n+3)/12.

The programs for A117662, the canonical program `A117662.P736767780201089082` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117662 has offset 0).

The definition of A117662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(n-2)*(n+3)/12` (program `A117662.P13555948427929297024`, by `A117662.P13555948427929297024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117662.P13555948427929297024

`n*(n-1)*(n-2)*(n+3)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117662.P13555948427929297024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * (n + 3 : ℤ) : ℚ) / 12

end

end A117662.P13555948427929297024

namespace A117662

/-- `n*(n-1)*(n-2)*(n+3)/12` -/
def P13555948427929297024.Spec : Prop :=
  ∀ n, P13555948427929297024.a n = (A117662 n : ℚ)

theorem P13555948427929297024.correct : P13555948427929297024.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A117662, Nat.add_sub_cancel, A117662.P13555948427929297024.a, A117662.P736767780201089082.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A117662, Nat.add_sub_cancel, A117662.P13555948427929297024.a, A117662.P736767780201089082.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A117662

/-! ## A117662.P736767780201089082

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3, a(4)=14`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117662

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P736767780201089082.Spec : Prop :=
  ∀ n, P736767780201089082.a n = A117662 n

theorem P736767780201089082.correct : P736767780201089082.Spec := by
  intro n
  simp only [A117662]

end A117662

/-! ## A117662.P17803341036439728619

`(n+3)/2*C(n, 3)`
-/

namespace A117662.P17803341036439728619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 2 * (Nat.choose n 3 : ℚ)

end

end A117662.P17803341036439728619

namespace A117662

/-- `(n+3)/2*C(n, 3)` -/
def P17803341036439728619.Spec : Prop :=
  ∀ n, P17803341036439728619.a n = (A117662 n : ℚ)

end A117662

/-! ## A117662.P6374306580508763838

`C(C(n, 2), 2)-C(n, 4)`
-/

namespace A117662.P6374306580508763838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose n 2) 2 : ℤ) - (Nat.choose n 4 : ℤ)

end

end A117662.P6374306580508763838

namespace A117662

/-- `C(C(n, 2), 2)-C(n, 4)` -/
def P6374306580508763838.Spec : Prop :=
  ∀ n, P6374306580508763838.a n = A117662 n

end A117662

/-! ## A117662.P1324441531888682015

`3*C(n, 3)+2*C(n, 4)`
-/

namespace A117662.P1324441531888682015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 3 + 2 * Nat.choose n 4

end

end A117662.P1324441531888682015

namespace A117662

/-- `3*C(n, 3)+2*C(n, 4)` -/
def P1324441531888682015.Spec : Prop :=
  ∀ n, (P1324441531888682015.a n : ℤ) = A117662 n

end A117662

/-! ## A117662.P5566505853133694336

`∑[∑[∑[a(n-1)+2]]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3`
-/

namespace A117662.P5566505853133694336
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 3] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117662.P5566505853133694336

namespace A117662

/-- `∑[∑[∑[a(n-1)+2]]]` -/
def P5566505853133694336.Spec : Prop :=
  ∀ n, (P5566505853133694336.a n : ℤ) = A117662 n

end A117662

/-! ## A117662.P15136335551639840063

`∑[a(n-1)-n*(2-n)]` with `a(0)=0, a(1)=0`
-/

namespace A117662.P15136335551639840063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) - (n : ℤ) * (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117662.P15136335551639840063

namespace A117662

/-- `∑[a(n-1)-n*(2-n)]` -/
def P15136335551639840063.Spec : Prop :=
  ∀ n, P15136335551639840063.a n = A117662 n

end A117662

/-! ## A117662.P6503019518178261978

`∑[(1-n)²-(1-a(n-1))]` with `a(0)=0, a(1)=0`
-/

namespace A117662.P6503019518178261978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (1 - (n : ℤ)) ^ 2 - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117662.P6503019518178261978

namespace A117662

/-- `∑[(1-n)²-(1-a(n-1))]` -/
def P6503019518178261978.Spec : Prop :=
  ∀ n, P6503019518178261978.a n = A117662 n

end A117662

/-! ## A117662.P16010752600447225009

`∑[A051925(abs(1-n))]`
-/

namespace A117662.P16010752600447225009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117662.P16010752600447225009

namespace A117662

/-- `∑[A051925(abs(1-n))]` -/
def P16010752600447225009.Spec : Prop :=
  ∀ n, P16010752600447225009.a n = A117662 n

end A117662

/-! ## A117662.P7065389824108893344

`∑[∑[n*A289207(n)]]`
-/

namespace A117662.P7065389824108893344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A289207 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117662.P7065389824108893344

namespace A117662

/-- `∑[∑[n*A289207(n)]]` -/
def P7065389824108893344.Spec : Prop :=
  ∀ n, P7065389824108893344.a n = A117662 n

end A117662

/-! ## A117662.P14238540954804480988

`∑[n+1]-A080260(n)`
-/

namespace A117662.P14238540954804480988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A080260 n

end

end A117662.P14238540954804480988

namespace A117662

/-- `∑[n+1]-A080260(n)` -/
def P14238540954804480988.Spec : Prop :=
  ∀ n, P14238540954804480988.a n = A117662 n

end A117662

/-! ## A117662.P2518834722888444836

`∑[∑[A132411(n)]-n²]`
-/

namespace A117662.P2518834722888444836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117662.P2518834722888444836

namespace A117662

/-- `∑[∑[A132411(n)]-n²]` -/
def P2518834722888444836.Spec : Prop :=
  ∀ n, P2518834722888444836.a n = A117662 n

end A117662

/-! ## A117662.P1958915991519481993

`A006008(n)-A000326(n)`
-/

namespace A117662.P1958915991519481993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 n - A000326 n

end

end A117662.P1958915991519481993

namespace A117662

/-- `A006008(n)-A000326(n)` -/
def P1958915991519481993.Spec : Prop :=
  ∀ n, P1958915991519481993.a n = A117662 n

end A117662

/-! ## A117662.P16124962412934029898

`A050534(n)-A000332(n)`
-/

namespace A117662.P16124962412934029898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n - A000332 n

end

end A117662.P16124962412934029898

namespace A117662

/-- `A050534(n)-A000332(n)` -/
def P16124962412934029898.Spec : Prop :=
  ∀ n, P16124962412934029898.a n = A117662 n

end A117662

/-! ## A117662.P8446885282480756545

`A002415(n)-A161680(n)`
-/

namespace A117662.P8446885282480756545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n - A161680 n

end

end A117662.P8446885282480756545

namespace A117662

/-- `A002415(n)-A161680(n)` -/
def P8446885282480756545.Spec : Prop :=
  ∀ n, P8446885282480756545.a n = A117662 n

end A117662

/-! ## A117662.P11920038420434779527

`A027441(n)-A139594(n)`
-/

namespace A117662.P11920038420434779527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 n - A139594 n

end

end A117662.P11920038420434779527

namespace A117662

/-- `A027441(n)-A139594(n)` -/
def P11920038420434779527.Spec : Prop :=
  ∀ n, P11920038420434779527.a n = A117662 n

end A117662

/-! ## A117662.P17403367540079009132

`A136395(n)-A084849(n)`
-/

namespace A117662.P17403367540079009132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136395 n - A084849 n

end

end A117662.P17403367540079009132

namespace A117662

/-- `A136395(n)-A084849(n)` -/
def P17403367540079009132.Spec : Prop :=
  ∀ n, P17403367540079009132.a n = A117662 n

end A117662

/-! ## A117662.P3518858523219352460

`A136396(n)-A104249(n)`
-/

namespace A117662.P3518858523219352460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136396 n - A104249 n

end

end A117662.P3518858523219352460

namespace A117662

/-- `A136396(n)-A104249(n)` -/
def P3518858523219352460.Spec : Prop :=
  ∀ n, P3518858523219352460.a n = A117662 n

end A117662

/-! ## A117662.P18273720280494726794

`A257055(n)-A006008(n)`
-/

namespace A117662.P18273720280494726794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257055 n - A006008 n

end

end A117662.P18273720280494726794

namespace A117662

/-- `A257055(n)-A006008(n)` -/
def P18273720280494726794.Spec : Prop :=
  ∀ n, P18273720280494726794.a n = A117662 n

end A117662

/-! ## A117662.P1433958262690921469

`A212501(n)-A090809(n)`
-/

namespace A117662.P1433958262690921469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212501 n - A090809 n

end

end A117662.P1433958262690921469

namespace A117662

/-- `A212501(n)-A090809(n)` -/
def P1433958262690921469.Spec : Prop :=
  ∀ n, P1433958262690921469.a n = A117662 n

end A117662

/-!
# A117663: Heptagonal numbers for which the digital root is also a heptagonal number.

The programs for A117663, there is no canonical definition to state claims against.
-/

/-! ## A117663.P5213767254129417014

`A000566(lt[A230293(n+1), 3])`
-/

namespace A117663.P5213767254129417014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230293 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A117663.P5213767254129417014

/-! ## A117663.P10667731334991808418

`A000566(lt[A145605(n+1), 8])`
-/

namespace A117663.P10667731334991808418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145605 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A117663.P10667731334991808418

/-! ## A117663.P1884799668629677108

`A000566(eq[A132272(n), A326036(n)])`
-/

namespace A117663.P1884799668629677108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132272 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117663.P1884799668629677108

/-!
# A117664: Denominator of the sum of all elements in the n X n Hilbert matrix M(i,j) = 1/(i+j-1), where i,j = 1..n.

The programs for A117664, there is no canonical definition to state claims against.
-/

/-! ## A117664.P10101067325952497914

`A334721(2*(n+1))`
-/

namespace A117664.P10101067325952497914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334721 (2 * (n + 1))

end

end A117664.P10101067325952497914

/-! ## A117664.P7954712283409449616

`A296519(n+1)/2`
-/

namespace A117664.P7954712283409449616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296519 (n + 1) : ℚ) / 2

end

end A117664.P7954712283409449616

/-! ## A117664.P14720809040275732850

`A334724(2*(n+1))/2`
-/

namespace A117664.P14720809040275732850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334724 (2 * (n + 1)) : ℚ) / 2

end

end A117664.P14720809040275732850

/-! ## A117664.P596168393828013607

`gcd(A091342(n+1), A111876(n))`
-/

namespace A117664.P596168393828013607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091342 (n + 1)) (A111876 n)

end

end A117664.P596168393828013607

/-! ## A117664.P2479890352247639422

`A091342(n+1)%A296519(n+1)`
-/

namespace A117664.P2479890352247639422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091342 (n + 1)) (A296519 (n + 1))

end

end A117664.P2479890352247639422

/-!
# A117665: n times the n-th n-gonal number.

The programs for A117665, the canonical program `A117665.P7222544039251111304` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117665 has offset 0).

The definition of A117665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117665.P12117438241953572319

`n*(n+1)*(n²-3*n+4)/2`
-/

namespace A117665.P12117438241953572319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((n ^ 2 : ℤ) - (3 * n : ℤ) + 4) : ℚ) / 2

end

end A117665.P12117438241953572319

namespace A117665

/-- `n*(n+1)*(n²-3*n+4)/2` -/
def P12117438241953572319.Spec : Prop :=
  ∀ n, P12117438241953572319.a n = (A117665 n : ℚ)

theorem P12117438241953572319.correct : P12117438241953572319.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A117665, Nat.add_sub_cancel, A117665.P12117438241953572319.a, A117665.P7222544039251111304.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A117665, Nat.add_sub_cancel, A117665.P12117438241953572319.a, A117665.P7222544039251111304.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A117665

/-! ## A117665.P7222544039251111304

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=24, a(4)=80`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117665

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P7222544039251111304.Spec : Prop :=
  ∀ n, P7222544039251111304.a n = A117665 n

theorem P7222544039251111304.correct : P7222544039251111304.Spec := by
  intro n
  simp only [A117665]

end A117665

/-! ## A117665.P9906970198799078628

`2*A327319(n+1)`
-/

namespace A117665.P9906970198799078628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327319 (n + 1)

end

end A117665.P9906970198799078628

namespace A117665

/-- `2*A327319(n+1)` -/
def P9906970198799078628.Spec : Prop :=
  ∀ n, P9906970198799078628.a n = A117665 n

end A117665

/-! ## A117665.P7941989750801235071

`2*(C(n, 2)²+n)`
-/

namespace A117665.P7941989750801235071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose n 2 ^ 2 + n)

end

end A117665.P7941989750801235071

namespace A117665

/-- `2*(C(n, 2)²+n)` -/
def P7941989750801235071.Spec : Prop :=
  ∀ n, (P7941989750801235071.a n : ℤ) = A117665 n

end A117665

/-! ## A117665.P11518276842107040412

`∑[∑[∑[a(n-1)+12]]]` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A117665.P11518276842107040412
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f3 =>
  f3 (n - 1) + 12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117665.P11518276842107040412

namespace A117665

/-- `∑[∑[∑[a(n-1)+12]]]` -/
def P11518276842107040412.Spec : Prop :=
  ∀ n, (P11518276842107040412.a n : ℤ) = A117665 n

end A117665

/-! ## A117665.P16830796381363840141

`∑[lcm((n-1)^3+1, 2*n)]`
-/

namespace A117665.P16830796381363840141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n : ℤ) - 1) ^ 3 + 1) (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117665.P16830796381363840141

namespace A117665

/-- `∑[lcm((n-1)^3+1, 2*n)]` -/
def P16830796381363840141.Spec : Prop :=
  ∀ n, (P16830796381363840141.a n : ℤ) = A117665 n

end A117665

/-! ## A117665.P5895510871300816157

`lcm(n, n-1)²/2+2*n`
-/

namespace A117665.P5895510871300816157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) ((n : ℤ) - 1) ^ 2 : ℚ) / 2 + (2 * n : ℚ)

end

end A117665.P5895510871300816157

namespace A117665

/-- `lcm(n, n-1)²/2+2*n` -/
def P5895510871300816157.Spec : Prop :=
  ∀ n, P5895510871300816157.a n = (A117665 n : ℚ)

end A117665

/-! ## A117665.P10960812258747425636

`2*n+(n-1)*n*C(n, 2)`
-/

namespace A117665.P10960812258747425636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((n : ℤ) - 1) * (n * Nat.choose n 2 : ℤ)

end

end A117665.P10960812258747425636

namespace A117665

/-- `2*n+(n-1)*n*C(n, 2)` -/
def P10960812258747425636.Spec : Prop :=
  ∀ n, P10960812258747425636.a n = A117665 n

end A117665

/-! ## A117665.P3792451272825370751

`lcm(2, ((1-n)²-(n-3))*∑[n])`
-/

namespace A117665.P3792451272825370751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((1 - (n : ℤ)) ^ 2 - ((n : ℤ) - 3)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A117665.P3792451272825370751

namespace A117665

/-- `lcm(2, ((1-n)²-(n-3))*∑[n])` -/
def P3792451272825370751.Spec : Prop :=
  ∀ n, (P3792451272825370751.a n : ℤ) = A117665 n

end A117665

/-! ## A117665.P13639900776645127310

`C(n², 2)-2*n*∑[n-1]`
-/

namespace A117665.P13639900776645127310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℤ) - (2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117665.P13639900776645127310

namespace A117665

/-- `C(n², 2)-2*n*∑[n-1]` -/
def P13639900776645127310.Spec : Prop :=
  ∀ n, P13639900776645127310.a n = A117665 n

end A117665

/-! ## A117665.P3287363136870955228

`∑[2*n*or(1, (n-1)*(n-2))]`
-/

namespace A117665.P3287363136870955228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * Int.lor 1 (((n : ℤ) - 1) * ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117665.P3287363136870955228

namespace A117665

/-- `∑[2*n*or(1, (n-1)*(n-2))]` -/
def P3287363136870955228.Spec : Prop :=
  ∀ n, P3287363136870955228.a n = A117665 n

end A117665

/-! ## A117665.P12291717789220104203

`∑[2*n*xor(1, (n-1)*(n-2))]`
-/

namespace A117665.P12291717789220104203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * Int.xor 1 (((n : ℤ) - 1) * ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117665.P12291717789220104203

namespace A117665

/-- `∑[2*n*xor(1, (n-1)*(n-2))]` -/
def P12291717789220104203.Spec : Prop :=
  ∀ n, P12291717789220104203.a n = A117665 n

end A117665

/-! ## A117665.P9244088148140715210

`a(n-1)+((1-n)²-(n-2))*2*n` with `a(0)=0`
-/

namespace A117665.P9244088148140715210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((1 - (n : ℤ)) ^ 2 - ((n : ℤ) - 2)) * (2 * n : ℤ)

end

end A117665.P9244088148140715210

namespace A117665

/-- `a(n-1)+((1-n)²-(n-2))*2*n` -/
def P9244088148140715210.Spec : Prop :=
  ∀ n, P9244088148140715210.a n = A117665 n

end A117665

/-! ## A117665.P14284747203915197310

`(n+1)*A060354(n)`
-/

namespace A117665.P14284747203915197310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060354 n

end

end A117665.P14284747203915197310

namespace A117665

/-- `(n+1)*A060354(n)` -/
def P14284747203915197310.Spec : Prop :=
  ∀ n, P14284747203915197310.a n = A117665 n

end A117665

/-! ## A117665.P18268141277113624353

`∑[2*(A007531(n)+n)]`
-/

namespace A117665.P18268141277113624353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007531 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117665.P18268141277113624353

namespace A117665

/-- `∑[2*(A007531(n)+n)]` -/
def P18268141277113624353.Spec : Prop :=
  ∀ n, P18268141277113624353.a n = A117665 n

end A117665

/-! ## A117665.P4643123103586178989

`∑[A280058(n)+2*n]`
-/

namespace A117665.P4643123103586178989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280058 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117665.P4643123103586178989

namespace A117665

/-- `∑[A280058(n)+2*n]` -/
def P4643123103586178989.Spec : Prop :=
  ∀ n, P4643123103586178989.a n = A117665 n

end A117665

/-! ## A117665.P10404031582885026990

`∑[2*(A242659(n)-n)]`
-/

namespace A117665.P10404031582885026990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A242659 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117665.P10404031582885026990

namespace A117665

/-- `∑[2*(A242659(n)-n)]` -/
def P10404031582885026990.Spec : Prop :=
  ∀ n, P10404031582885026990.a n = A117665 n

end A117665

/-! ## A117665.P5415992079091077664

`(n+1)*(A158498(n+1)-1)`
-/

namespace A117665.P5415992079091077664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158498 (n + 1) - 1)

end

end A117665.P5415992079091077664

namespace A117665

/-- `(n+1)*(A158498(n+1)-1)` -/
def P5415992079091077664.Spec : Prop :=
  ∀ n, P5415992079091077664.a n = A117665 n

end A117665

/-! ## A117665.P13906837016351108863

`A242983(n)+A000326(n)`
-/

namespace A117665.P13906837016351108863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242983 n + A000326 n

end

end A117665.P13906837016351108863

namespace A117665

/-- `A242983(n)+A000326(n)` -/
def P13906837016351108863.Spec : Prop :=
  ∀ n, P13906837016351108863.a n = A117665 n

end A117665

/-!
# A117666: Expansion of (1-3*x+x^2)*(1-x-x^2)/((1+x+x^2)*(1-x+x^2)*(1-x)^2).

The programs for A117666, the canonical program `A117666.P7209015567131199641` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117666 has offset 0).

The definition of A117666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+3x^2+2x^3-x^4)/(1-2x+2x^2-2x^3+2x^4-2x^5+x^6))` (program `A117666.P7209015567131199641`, by `A117666.P7209015567131199641.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117666.P7209015567131199641

`ogf((1-4x+3x^2+2x^3-x^4)/(1-2x+2x^2-2x^3+2x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117666

/-- `ogf((1-4x+3x^2+2x^3-x^4)/(1-2x+2x^2-2x^3+2x^4-2x^5+x^6))` -/
def P7209015567131199641.Spec : Prop :=
  ∀ n, P7209015567131199641.a n = A117666 n

theorem P7209015567131199641.correct : P7209015567131199641.Spec := by
  intro n
  simp only [A117666]

end A117666

/-! ## A117666.P1469087365385502739

`A101675(n)+A101676(n)-A101677(n)`
-/

namespace A117666.P1469087365385502739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 n + (A101676 n - A101677 n)

end

end A117666.P1469087365385502739

namespace A117666

/-- `A101675(n)+A101676(n)-A101677(n)` -/
def P1469087365385502739.Spec : Prop :=
  ∀ n, P1469087365385502739.a n = A117666 n

end A117666

/-! ## A117666.P16072939404678472384

`A109265(n+1)+A063942(n)`
-/

namespace A117666.P16072939404678472384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109265 (n + 1) + A063942 n

end

end A117666.P16072939404678472384

namespace A117666

/-- `A109265(n+1)+A063942(n)` -/
def P16072939404678472384.Spec : Prop :=
  ∀ n, P16072939404678472384.a n = A117666 n

end A117666

/-! ## A117666.P17141924035350478669

`A101675(n)-∑[∑[A101675(n+5)]]`
-/

namespace A117666.P17141924035350478669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117666.P17141924035350478669

namespace A117666

/-- `A101675(n)-∑[∑[A101675(n+5)]]` -/
def P17141924035350478669.Spec : Prop :=
  ∀ n, P17141924035350478669.a n = A117666 n

end A117666

/-! ## A117666.P16576422347699965342

`A008611(2*n)+A109265(n+1)-A008611(n+1)`
-/

namespace A117666.P16576422347699965342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * n) + (A109265 (n + 1) - A008611 (n + 1))

end

end A117666.P16576422347699965342

namespace A117666

/-- `A008611(2*n)+A109265(n+1)-A008611(n+1)` -/
def P16576422347699965342.Spec : Prop :=
  ∀ n, P16576422347699965342.a n = A117666 n

end A117666

/-! ## A117666.P13202579777345448807

`∑[A009001(A028920(A017329(n)))]`
-/

namespace A117666.P13202579777345448807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A028920 (A017329 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117666.P13202579777345448807

namespace A117666

/-- `∑[A009001(A028920(A017329(n)))]` -/
def P13202579777345448807.Spec : Prop :=
  ∀ n, P13202579777345448807.a n = A117666 n

end A117666

/-!
# A117667: a(n) = n^n - n^(n-1) - n^(n-2) - n^(n-3) - ... - n^3 - n^2 - n.

The programs for A117667, there is no canonical definition to state claims against.
-/

/-! ## A117667.P3444260206552653409

`A191690(A323608(2*n+1))+1`
-/

namespace A117667.P3444260206552653409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191690 (A323608 (2 * n + 1)).toNat + 1

end

end A117667.P3444260206552653409

/-!
# A117668: a(n) is the n-th prime number if n is prime; a(n) is the n-th nonprime number otherwise.

The programs for A117668, there is no canonical definition to state claims against.
-/

/-! ## A117668.P3378169264262710025

`A073846(C(2, ∑{e}[n+1, #])!+n+n)`
-/

namespace A117668.P3378169264262710025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) + n + n)

end

end A117668.P3378169264262710025

/-! ## A117668.P332124447156868872

`A073846(C(C(2, ∑{e}[n+1, #]), 2)+2*n+1)`
-/

namespace A117668.P332124447156868872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 2 + (2 * n + 1))

end

end A117668.P332124447156868872

/-! ## A117668.P8351142905179146926

`A073846(2*(n+1)-C(n, ∑{p}[n+1, C(#, n)]))`
-/

namespace A117668.P8351142905179146926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * (n + 1) - Nat.choose n (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n))

end

end A117668.P8351142905179146926

/-! ## A117668.P6371822468441296938

`A073846(∑{p}[n+1, floor(#/(n+1))]+n+1+n)`
-/

namespace A117668.P6371822468441296938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋ + (n + 1 : ℤ) + (n : ℤ)).toNat

end

end A117668.P6371822468441296938

/-! ## A117668.P15122990500188002544

`A073846(A014683(n+1)+n)`
-/

namespace A117668.P15122990500188002544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A014683 (n + 1) + (n : ℤ)).toNat

end

end A117668.P15122990500188002544

/-! ## A117668.P14722466727842623215

`A073846(Δ[A230980(n)+n²])`
-/

namespace A117668.P14722466727842623215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (f1 (n + 1) - f1 n).toNat

end

end A117668.P14722466727842623215

/-! ## A117668.P12567795157888399585

`A073846(A010051(n+1)+Δ[n²])`
-/

namespace A117668.P12567795157888399585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A010051 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A117668.P12567795157888399585

/-! ## A117668.P14031777971514342045

`A073846(2*(n+1)-A005171(n+1))`
-/

namespace A117668.P14031777971514342045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 ((2 * (n + 1) : ℤ) - A005171 (n + 1)).toNat

end

end A117668.P14031777971514342045

/-! ## A117668.P487483137075311614

`A073846(A016789(n)-A014684(n+1))`
-/

namespace A117668.P487483137075311614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A016789 n - A014684 (n + 1)).toNat

end

end A117668.P487483137075311614

/-! ## A117668.P15281258834184868886

`A073846(A103517(n)-A066247(n+1))`
-/

namespace A117668.P15281258834184868886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A103517 n - A066247 (n + 1)).toNat

end

end A117668.P15281258834184868886

/-!
# A117669: The n-th n-gonal number divisible by n.

The programs for A117669, there is no canonical definition to state claims against.
-/

/-! ## A117669.P11046567436541230907

`(n+1)*A050687(A005183(n))`
-/

namespace A117669.P11046567436541230907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A050687 (A005183 n).toNat

end

end A117669.P11046567436541230907

/-!
# A117670: Triangle read by rows: partial sums of the Pascal triangle minus 1.

The programs for A117670, the canonical program `A117670.P8467400439163998987` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117670 has offset 1).

The definition of A117670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117670.P8467400439163998987

`A074909(n+1)+A054143(n)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A117670

/-- `A074909(n+1)+A054143(n)-1` -/
def P8467400439163998987.Spec : Prop :=
  ∀ n, P8467400439163998987.a n = A117670 (n + 1)

theorem P8467400439163998987.correct : P8467400439163998987.Spec := by
  intro n
  simp only [A117670, Nat.add_sub_cancel]

end A117670

/-! ## A117670.P15397636454021829030

`A074909(n+1)+a(n-1)%A193842(n)` with `a(0)=1`
-/

namespace A117670.P15397636454021829030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074909 (n + 1) + Int.tmod (a (n - 1)) (A193842 n)

end

end A117670.P15397636454021829030

namespace A117670

/-- `A074909(n+1)+a(n-1)%A193842(n)` -/
def P15397636454021829030.Spec : Prop :=
  ∀ n, P15397636454021829030.a n = A117670 (n + 1)

end A117670

/-! ## A117670.P3504618178688672066

`A008949(comp[∑[n]])-1`
-/

namespace A117670.P3504618178688672066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A117670.P3504618178688672066

namespace A117670

/-- `A008949(comp[∑[n]])-1` -/
def P3504618178688672066.Spec : Prop :=
  ∀ n, P3504618178688672066.a n = A117670 (n + 1)

end A117670

/-! ## A117670.P17861071089285027815

`A057428(n+1)+A008949(comp[∑[n]])`
-/

namespace A117670.P17861071089285027815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A008949 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117670.P17861071089285027815

namespace A117670

/-- `A057428(n+1)+A008949(comp[∑[n]])` -/
def P17861071089285027815.Spec : Prop :=
  ∀ n, P17861071089285027815.a n = A117670 (n + 1)

end A117670

/-! ## A117670.P3316555116096915322

`A055248(A099375(n)+n)-1`
-/

namespace A117670.P3316555116096915322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A099375 n + (n : ℤ)).toNat - 1

end

end A117670.P3316555116096915322

namespace A117670

/-- `A055248(A099375(n)+n)-1` -/
def P3316555116096915322.Spec : Prop :=
  ∀ n, P3316555116096915322.a n = A117670 (n + 1)

end A117670

/-! ## A117670.P13513870236117338388

`A131251(A245300(n))`
-/

namespace A117670.P13513870236117338388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131251 (A245300 n).toNat

end

end A117670.P13513870236117338388

namespace A117670

/-- `A131251(A245300(n))` -/
def P13513870236117338388.Spec : Prop :=
  ∀ n, P13513870236117338388.a n = A117670 (n + 1)

end A117670

/-! ## A117670.P10114021029001261717

`A360302(A164874(n+1))`
-/

namespace A117670.P10114021029001261717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360302 (A164874 (n + 1)).toNat

end

end A117670.P10114021029001261717

namespace A117670

/-- `A360302(A164874(n+1))` -/
def P10114021029001261717.Spec : Prop :=
  ∀ n, P10114021029001261717.a n = A117670 (n + 1)

end A117670

/-! ## A117670.P13506677649909637131

`A360302(A030130(n+2))`
-/

namespace A117670.P13506677649909637131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360302 (A030130 (n + 2)).toNat

end

end A117670.P13506677649909637131

namespace A117670

/-- `A360302(A030130(n+2))` -/
def P13506677649909637131.Spec : Prop :=
  ∀ n, P13506677649909637131.a n = A117670 (n + 1)

end A117670

/-!
# A117671: a(n) = binomial(3*n+1, n+1).

The programs for A117671, the canonical program `A117671.P17677371260328026152` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117671 has offset 0).

The definition of A117671 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*n+1, n+1)` (program `A117671.P17677371260328026152`, by `A117671.P17677371260328026152.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117671.P17677371260328026152

`C(3*n+1, n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117671

/-- `C(3*n+1, n+1)` -/
def P17677371260328026152.Spec : Prop :=
  ∀ n, (P17677371260328026152.a n : ℤ) = A117671 n

theorem P17677371260328026152.correct : P17677371260328026152.Spec := by
  intro n
  simp only [A117671]

end A117671

/-! ## A117671.P860725926744981913

`A081181(2*n)`
-/

namespace A117671.P860725926744981913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081181 (2 * n)

end

end A117671.P860725926744981913

namespace A117671

/-- `A081181(2*n)` -/
def P860725926744981913.Spec : Prop :=
  ∀ n, P860725926744981913.a n = A117671 n

end A117671

/-! ## A117671.P15227926874519756180

`A099576(2*n)`
-/

namespace A117671.P15227926874519756180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099576 (2 * n)

end

end A117671.P15227926874519756180

namespace A117671

/-- `A099576(2*n)` -/
def P15227926874519756180.Spec : Prop :=
  ∀ n, P15227926874519756180.a n = A117671 n

end A117671

/-! ## A117671.P3031053349856735310

`Δ[n²]*A006013(n)`
-/

namespace A117671.P3031053349856735310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A006013 n

end

end A117671.P3031053349856735310

namespace A117671

/-- `Δ[n²]*A006013(n)` -/
def P3031053349856735310.Spec : Prop :=
  ∀ n, P3031053349856735310.a n = A117671 n

end A117671

/-! ## A117671.P15523623654561752280

`Δ[n²]*A047749(Δ[n²])`
-/

namespace A117671.P15523623654561752280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A047749 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A117671.P15523623654561752280

namespace A117671

/-- `Δ[n²]*A047749(Δ[n²])` -/
def P15523623654561752280.Spec : Prop :=
  ∀ n, P15523623654561752280.a n = A117671 n

end A117671

/-! ## A117671.P5944837789833546633

`record[(n+1)*A134565(n+1)]`
-/

namespace A117671.P5944837789833546633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A134565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117671.P5944837789833546633

namespace A117671

/-- `record[(n+1)*A134565(n+1)]` -/
def P5944837789833546633.Spec : Prop :=
  ∀ n, P5944837789833546633.a n = A117671 n

end A117671

/-! ## A117671.P7389590757252945590

`(2*n+1)*A134565(Δ[n²])`
-/

namespace A117671.P7389590757252945590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A134565 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A117671.P7389590757252945590

namespace A117671

/-- `(2*n+1)*A134565(Δ[n²])` -/
def P7389590757252945590.Spec : Prop :=
  ∀ n, P7389590757252945590.a n = A117671 n

end A117671

/-! ## A117671.P7631219135586439222

`(2*n+1)*A091665(∑[n]+1)`
-/

namespace A117671.P7631219135586439222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A091665 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A117671.P7631219135586439222

namespace A117671

/-- `(2*n+1)*A091665(∑[n]+1)` -/
def P7631219135586439222.Spec : Prop :=
  ∀ n, P7631219135586439222.a n = A117671 n

end A117671

/-! ## A117671.P3544278154215165499

`A108079(n)+A001791(n)`
-/

namespace A117671.P3544278154215165499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108079 n + A001791 n

end

end A117671.P3544278154215165499

namespace A117671

/-- `A108079(n)+A001791(n)` -/
def P3544278154215165499.Spec : Prop :=
  ∀ n, P3544278154215165499.a n = A117671 n

theorem P3544278154215165499.correct : P3544278154215165499.Spec := by
  intro n
  simp only [A117671, Nat.add_sub_cancel, A117671.P3544278154215165499.a, A117671.P17677371260328026152.a, A001791, A001791.P9713013280951293137.a, A108079, A108079.P2571972727151902477.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A117671

/-! ## A117671.P2648594936054126717

`∩[A081181(n), A099576(n)]`
-/

namespace A117671.P2648594936054126717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099576 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117671.P2648594936054126717

namespace A117671

/-- `∩[A081181(n), A099576(n)]` -/
def P2648594936054126717.Spec : Prop :=
  ∀ n, (P2648594936054126717.a n : ℤ) = A117671 n

end A117671

/-! ## A117671.P6066232503100987514

`record[lcm(A056594(n), A081181(n))]`
-/

namespace A117671.P6066232503100987514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A081181 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117671.P6066232503100987514

namespace A117671

/-- `record[lcm(A056594(n), A081181(n))]` -/
def P6066232503100987514.Spec : Prop :=
  ∀ n, (P6066232503100987514.a n : ℤ) = A117671 n

end A117671

/-! ## A117671.P13417562570091678095

`A165817(n+1)-A045721(n)`
-/

namespace A117671.P13417562570091678095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 (n + 1) - A045721 n

end

end A117671.P13417562570091678095

namespace A117671

/-- `A165817(n+1)-A045721(n)` -/
def P13417562570091678095.Spec : Prop :=
  ∀ n, P13417562570091678095.a n = A117671 n

end A117671

/-! ## A117671.P413947937355683233

`2*A045721(n)-A006013(n)`
-/

namespace A117671.P413947937355683233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045721 n - A006013 n

end

end A117671.P413947937355683233

namespace A117671

/-- `2*A045721(n)-A006013(n)` -/
def P413947937355683233.Spec : Prop :=
  ∀ n, P413947937355683233.a n = A117671 n

end A117671

/-! ## A117671.P6822759817929570517

`A006013(n)/2*A016825(n)`
-/

namespace A117671.P6822759817929570517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006013 n : ℚ) / 2 * (A016825 n : ℚ)

end

end A117671.P6822759817929570517

namespace A117671

/-- `A006013(n)/2*A016825(n)` -/
def P6822759817929570517.Spec : Prop :=
  ∀ n, P6822759817929570517.a n = (A117671 n : ℚ)

end A117671

/-! ## A117671.P13520526978234954962

`A081204(2*n+1)-A045721(n)`
-/

namespace A117671.P13520526978234954962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081204 (2 * n + 1) - A045721 n

end

end A117671.P13520526978234954962

namespace A117671

/-- `A081204(2*n+1)-A045721(n)` -/
def P13520526978234954962.Spec : Prop :=
  ∀ n, P13520526978234954962.a n = A117671 n

end A117671

/-! ## A117671.P13050399353448566796

`A165817(n+1)-A099578(2*n)`
-/

namespace A117671.P13050399353448566796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 (n + 1) - A099578 (2 * n)

end

end A117671.P13050399353448566796

namespace A117671

/-- `A165817(n+1)-A099578(2*n)` -/
def P13050399353448566796.Spec : Prop :=
  ∀ n, P13050399353448566796.a n = A117671 n

end A117671

/-! ## A117671.P1097225607688010273

`A165817(n+1)-A065942(2*n+1)`
-/

namespace A117671.P1097225607688010273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 (n + 1) - A065942 (2 * n + 1)

end

end A117671.P1097225607688010273

namespace A117671

/-- `A165817(n+1)-A065942(2*n+1)` -/
def P1097225607688010273.Spec : Prop :=
  ∀ n, P1097225607688010273.a n = A117671 n

end A117671

/-! ## A117671.P14402811929109275604

`A081204(2*n+1)-A065942(2*n+1)`
-/

namespace A117671.P14402811929109275604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081204 (2 * n + 1) - A065942 (2 * n + 1)

end

end A117671.P14402811929109275604

namespace A117671

/-- `A081204(2*n+1)-A065942(2*n+1)` -/
def P14402811929109275604.Spec : Prop :=
  ∀ n, P14402811929109275604.a n = A117671 n

end A117671

/-! ## A117671.P2005688994345607502

`A006013(n)*A123108(A016825(n))`
-/

namespace A117671.P2005688994345607502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n * A123108 (A016825 n).toNat

end

end A117671.P2005688994345607502

namespace A117671

/-- `A006013(n)*A123108(A016825(n))` -/
def P2005688994345607502.Spec : Prop :=
  ∀ n, P2005688994345607502.a n = A117671 n

end A117671

/-!
# A117672: Numbers k such that |cos(k)*cos(k+2)| < (cos(k+1))^2.

The programs for A117672, the canonical program `A117672.P12049870902550279100` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117672 has offset 1).

The definition of A117672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117672.P12049870902550279100

`lt[2, exp(cos(sin(n+1)))]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117672

/-- `lt[2, exp(cos(sin(n+1)))]` -/
def P12049870902550279100.Spec : Prop :=
  ∀ n, (P12049870902550279100.a n : ℤ) = A117672 (n + 1)

theorem P12049870902550279100.correct : P12049870902550279100.Spec := by
  intro n
  simp only [A117672, Nat.add_sub_cancel]

end A117672

/-! ## A117672.P13840569282047123437

`lt[log(2), cos(sin(n+1))]`
-/

namespace A117672.P13840569282047123437
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (2 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.sin (n + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117672.P13840569282047123437

namespace A117672

/-- `lt[log(2), cos(sin(n+1))]` -/
def P13840569282047123437.Spec : Prop :=
  ∀ n, (P13840569282047123437.a n : ℤ) = A117672 (n + 1)

end A117672

/-! ## A117672.P18160672500547399593

`comp[A026314(n+1)]`
-/

namespace A117672.P18160672500547399593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A117672.P18160672500547399593

namespace A117672

/-- `comp[A026314(n+1)]` -/
def P18160672500547399593.Spec : Prop :=
  ∀ n, (P18160672500547399593.a n : ℤ) = A117672 (n + 1)

end A117672

/-! ## A117672.P12303632171855587232

`lt[A105665(n+1), A324705(n+1)]`
-/

namespace A117672.P12303632171855587232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324705 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117672.P12303632171855587232

namespace A117672

/-- `lt[A105665(n+1), A324705(n+1)]` -/
def P12303632171855587232.Spec : Prop :=
  ∀ n, (P12303632171855587232.a n : ℤ) = A117672 (n + 1)

end A117672

/-! ## A117672.P14586219412898237502

`eq[A011736(n), A290976(n)]`
-/

namespace A117672.P14586219412898237502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011736 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117672.P14586219412898237502

namespace A117672

/-- `eq[A011736(n), A290976(n)]` -/
def P14586219412898237502.Spec : Prop :=
  ∀ n, (P14586219412898237502.a n : ℤ) = A117672 (n + 1)

end A117672

/-!
# A117673: a(n) is the least k such that k*2*prime(n) + 1 is prime.

The programs for A117673, there is no canonical definition to state claims against.
-/

/-! ## A117673.P17510094371564223782

`ceil(A035096(n+1)/2)`
-/

namespace A117673.P17510094371564223782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035096 (n + 1) : ℚ) / 2⌉

end

end A117673.P17510094371564223782

/-! ## A117673.P14507945835069182986

`A004525(A035096(n+1))`
-/

namespace A117673.P14507945835069182986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A035096 (n + 1)).toNat

end

end A117673.P14507945835069182986

/-! ## A117673.P350871340243851312

`A004526(A035096(n+1)+1)`
-/

namespace A117673.P350871340243851312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A035096 (n + 1) + 1).toNat

end

end A117673.P350871340243851312

/-! ## A117673.P7858369546050763658

`A008619(A035096(n+1)-1)`
-/

namespace A117673.P7858369546050763658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A035096 (n + 1) - 1).toNat

end

end A117673.P7858369546050763658

/-! ## A117673.P10346864681083410951

`A060819(2*A035096(n+1))`
-/

namespace A117673.P10346864681083410951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A035096 (n + 1)).toNat

end

end A117673.P10346864681083410951

/-! ## A117673.P7962588318068478225

`A035096(A028310(n)+1)/2`
-/

namespace A117673.P7962588318068478225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035096 (A028310 n + 1).toNat : ℚ) / 2

end

end A117673.P7962588318068478225

/-! ## A117673.P15131192200908823794

`A110654(lcm(2, A035096(n+1)))`
-/

namespace A117673.P15131192200908823794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.lcm 2 (A035096 (n + 1)))

end

end A117673.P15131192200908823794

/-! ## A117673.P9703630487997880625

`(A035096(n+1)+A000007(n))/2`
-/

namespace A117673.P9703630487997880625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035096 (n + 1) + A000007 n : ℚ) / 2

end

end A117673.P9703630487997880625

/-! ## A117673.P12367301889222285683

`A035096(n+1)/A105560(A105560(n+1))`
-/

namespace A117673.P12367301889222285683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035096 (n + 1) : ℚ) / (A105560 (A105560 (n + 1)).toNat : ℚ)

end

end A117673.P12367301889222285683

/-! ## A117673.P10398596764117222626

`A032742(A035096(n+1)²)/A035096(n+1)`
-/

namespace A117673.P10398596764117222626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (A035096 (n + 1) ^ 2).toNat : ℚ) / (A035096 (n + 1) : ℚ)

end

end A117673.P10398596764117222626

/-! ## A117673.P581180595021880764

`A110654(A035096(n+1)²)/A035096(n+1)`
-/

namespace A117673.P581180595021880764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110654 (A035096 (n + 1) ^ 2).toNat : ℚ) / (A035096 (n + 1) : ℚ)

end

end A117673.P581180595021880764

/-! ## A117673.P17572567505819938887

`A032742(2*A035096(n+1)-A035096(n+1))`
-/

namespace A117673.P17572567505819938887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * A035096 (n + 1) - A035096 (n + 1)).toNat

end

end A117673.P17572567505819938887

/-! ## A117673.P2738766380860508743

`A035096(n+1)/A000005(A008578(n+1))`
-/

namespace A117673.P2738766380860508743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035096 (n + 1) : ℚ) / (A000005 (A008578 (n + 1)).toNat : ℚ)

end

end A117673.P2738766380860508743

/-! ## A117673.P290175090166781372

`ceil(A034693(p?[comp[n²]])/2)`
-/

namespace A117673.P290175090166781372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034693 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2⌉

end

end A117673.P290175090166781372

/-! ## A117673.P128929051833867428

`A016014(Δ[A007504(n)])`
-/

namespace A117673.P128929051833867428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (f1 (n + 1) - f1 n).toNat

end

end A117673.P128929051833867428

/-! ## A117673.P9617574140767722593

`A016014(A000040(n+1))`
-/

namespace A117673.P9617574140767722593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A000040 (n + 1)).toNat

end

end A117673.P9617574140767722593

/-! ## A117673.P5666053122715461324

`A016014(A006005(n+1))`
-/

namespace A117673.P5666053122715461324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A006005 (n + 1)).toNat

end

end A117673.P5666053122715461324

/-! ## A117673.P11397646305069121536

`A034693(A100484(n+1))`
-/

namespace A117673.P11397646305069121536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A100484 (n + 1)).toNat

end

end A117673.P11397646305069121536

/-! ## A117673.P10078868827618374188

`A016014(A161847(n+1))`
-/

namespace A117673.P10078868827618374188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A161847 (n + 1)).toNat

end

end A117673.P10078868827618374188

/-!
# A117674: Prime numbers whose sum of digits is a triangular number.

The programs for A117674, the canonical program `A117674.P10937197086857291007` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117674 has offset 1).

The definition of A117674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117674.P10937197086857291007

`p?[A187744(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A117674

/-- `p?[A187744(n+1)]` -/
def P10937197086857291007.Spec : Prop :=
  ∀ n, P10937197086857291007.a n = A117674 (n + 1)

theorem P10937197086857291007.correct : P10937197086857291007.Spec := by
  intro n
  simp only [A117674, Nat.add_sub_cancel]

end A117674

/-! ## A117674.P17445564633688100936

`record[A020639(A187744(n+3))]`
-/

namespace A117674.P17445564633688100936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A187744 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117674.P17445564633688100936

namespace A117674

/-- `record[A020639(A187744(n+3))]` -/
def P17445564633688100936.Spec : Prop :=
  ∀ n, P17445564633688100936.a n = A117674 (n + 1)

end A117674

/-! ## A117674.P15784276927476171210

`filter[A187744(n+2), A010051(#)]`
-/

namespace A117674.P15784276927476171210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A117674.P15784276927476171210

namespace A117674

/-- `filter[A187744(n+2), A010051(#)]` -/
def P15784276927476171210.Spec : Prop :=
  ∀ n, P15784276927476171210.a n = A117674 (n + 1)

end A117674

/-! ## A117674.P9024830421116574624

`∩[A000040(n+1), A187744(n+1)]`
-/

namespace A117674.P9024830421116574624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117674.P9024830421116574624

namespace A117674

/-- `∩[A000040(n+1), A187744(n+1)]` -/
def P9024830421116574624.Spec : Prop :=
  ∀ n, (P9024830421116574624.a n : ℤ) = A117674 (n + 1)

end A117674

/-! ## A117674.P11661441183375220959

`∩[A004139(n+1), A187744(n+1)]`
-/

namespace A117674.P11661441183375220959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117674.P11661441183375220959

namespace A117674

/-- `∩[A004139(n+1), A187744(n+1)]` -/
def P11661441183375220959.Spec : Prop :=
  ∀ n, (P11661441183375220959.a n : ℤ) = A117674 (n + 1)

end A117674

/-! ## A117674.P11036622628501958603

`∩[A007645(n+1), A187744(n+1)]`
-/

namespace A117674.P11036622628501958603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117674.P11036622628501958603

namespace A117674

/-- `∩[A007645(n+1), A187744(n+1)]` -/
def P11036622628501958603.Spec : Prop :=
  ∀ n, (P11036622628501958603.a n : ℤ) = A117674 (n + 1)

end A117674

/-! ## A117674.P5967600313465227584

`∩[A040116(n+1), A187744(n+1)]`
-/

namespace A117674.P5967600313465227584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117674.P5967600313465227584

namespace A117674

/-- `∩[A040116(n+1), A187744(n+1)]` -/
def P5967600313465227584.Spec : Prop :=
  ∀ n, (P5967600313465227584.a n : ℤ) = A117674 (n + 1)

end A117674

/-! ## A117674.P12033628531553031235

`∩[A045319(n+1), A187744(n+1)]`
-/

namespace A117674.P12033628531553031235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117674.P12033628531553031235

namespace A117674

/-- `∩[A045319(n+1), A187744(n+1)]` -/
def P12033628531553031235.Spec : Prop :=
  ∀ n, (P12033628531553031235.a n : ℤ) = A117674 (n + 1)

end A117674

/-! ## A117674.P14144493461691535661

`∩[A045331(n+1), A187744(n+1)]`
-/

namespace A117674.P14144493461691535661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117674.P14144493461691535661

namespace A117674

/-- `∩[A045331(n+1), A187744(n+1)]` -/
def P14144493461691535661.Spec : Prop :=
  ∀ n, (P14144493461691535661.a n : ℤ) = A117674 (n + 1)

end A117674

/-! ## A117674.P11213927928898202107

`∩[A058501(n+1), A187744(n+1)]`
-/

namespace A117674.P11213927928898202107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117674.P11213927928898202107

namespace A117674

/-- `∩[A058501(n+1), A187744(n+1)]` -/
def P11213927928898202107.Spec : Prop :=
  ∀ n, (P11213927928898202107.a n : ℤ) = A117674 (n + 1)

end A117674

/-! ## A117674.P10349131177198438966

`∩[A059456(n+1), A187744(n+1)]`
-/

namespace A117674.P10349131177198438966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117674.P10349131177198438966

namespace A117674

/-- `∩[A059456(n+1), A187744(n+1)]` -/
def P10349131177198438966.Spec : Prop :=
  ∀ n, (P10349131177198438966.a n : ℤ) = A117674 (n + 1)

end A117674

/-! ## A117674.P3522743298977984792

`∩[A065091(n+1), A187744(n+1)]`
-/

namespace A117674.P3522743298977984792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117674.P3522743298977984792

namespace A117674

/-- `∩[A065091(n+1), A187744(n+1)]` -/
def P3522743298977984792.Spec : Prop :=
  ∀ n, (P3522743298977984792.a n : ℤ) = A117674 (n + 1)

end A117674

/-! ## A117674.P4834259053140935715

`∩[A065396(n+1), A187744(n+1)]`
-/

namespace A117674.P4834259053140935715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117674.P4834259053140935715

namespace A117674

/-- `∩[A065396(n+1), A187744(n+1)]` -/
def P4834259053140935715.Spec : Prop :=
  ∀ n, (P4834259053140935715.a n : ℤ) = A117674 (n + 1)

end A117674

/-! ## A117674.P5572086361419427882

`∩[A079131(n+1), A187744(n+1)]`
-/

namespace A117674.P5572086361419427882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117674.P5572086361419427882

namespace A117674

/-- `∩[A079131(n+1), A187744(n+1)]` -/
def P5572086361419427882.Spec : Prop :=
  ∀ n, (P5572086361419427882.a n : ℤ) = A117674 (n + 1)

end A117674

/-! ## A117674.P15519306884835630230

`∩[A187744(n+1), A189710(n+1)]`
-/

namespace A117674.P15519306884835630230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117674.P15519306884835630230

namespace A117674

/-- `∩[A187744(n+1), A189710(n+1)]` -/
def P15519306884835630230.Spec : Prop :=
  ∀ n, (P15519306884835630230.a n : ℤ) = A117674 (n + 1)

end A117674

/-! ## A117674.P17147289347422249288

`∩[A187744(n+1), A216285(n+1)]`
-/

namespace A117674.P17147289347422249288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117674.P17147289347422249288

namespace A117674

/-- `∩[A187744(n+1), A216285(n+1)]` -/
def P17147289347422249288.Spec : Prop :=
  ∀ n, (P17147289347422249288.a n : ℤ) = A117674 (n + 1)

end A117674

/-! ## A117674.P13754454263864295254

`∩[A187744(n+1), A328232(n+1)]`
-/

namespace A117674.P13754454263864295254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117674.P13754454263864295254

namespace A117674

/-- `∩[A187744(n+1), A328232(n+1)]` -/
def P13754454263864295254.Spec : Prop :=
  ∀ n, (P13754454263864295254.a n : ℤ) = A117674 (n + 1)

end A117674

/-! ## A117674.P17836655240198625804

`p?[A130321(A004092(n))+2*n]`
-/

namespace A117674.P17836655240198625804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A004092 n).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117674.P17836655240198625804

namespace A117674

/-- `p?[A130321(A004092(n))+2*n]` -/
def P17836655240198625804.Spec : Prop :=
  ∀ n, P17836655240198625804.a n = A117674 (n + 1)

end A117674

/-!
# A117675: Numbers k such that prime(k) + prime(k+1) + prime(k+2) is prime and also there is a j such that prime(j) + prime(j+1) + prime(j+2) = prime(k).

The programs for A117675, there is no canonical definition to state claims against.
-/

/-! ## A117675.P15871806060559946291

`∩[A000720(A034962(n+1)), A072225(n+1)]`
-/

namespace A117675.P15871806060559946291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A034962 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117675.P15871806060559946291

/-! ## A117675.P3306970345032552058

`A000720(∩[A034961(n+1), A073681(n+1)])`
-/

namespace A117675.P3306970345032552058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A117675.P3306970345032552058

/-! ## A117675.P1147575668144279614

`A000720(∩[A034962(n+1), A073681(n+1)])`
-/

namespace A117675.P1147575668144279614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A117675.P1147575668144279614

/-! ## A117675.P610255375973042913

`A003963(∩[A034961(n+1), A073681(n+1)])`
-/

namespace A117675.P610255375973042913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A117675.P610255375973042913

/-! ## A117675.P15147780670840038601

`A003963(∩[A034962(n+1), A073681(n+1)])`
-/

namespace A117675.P15147780670840038601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A117675.P15147780670840038601

/-!
# A117676: Squares for which the digital root is also a square.

The programs for A117676, the canonical program `A117676.P2600702969936227066` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117676 has offset 0).

The definition of A117676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117676.P15023374096329233798

`comp[a(n-2)+9]²` with `a(0)=4, a(1)=5`
-/

namespace A117676.P15023374096329233798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  f1 (n - 2) + 9

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A117676.P15023374096329233798

namespace A117676

/-- `comp[a(n-2)+9]²` -/
def P15023374096329233798.Spec : Prop :=
  ∀ n, (P15023374096329233798.a n : ℤ) = A117676 n

end A117676

/-! ## A117676.P2423259755501951701

`comp[abs(a(n-1)-9*n)]²` with `a(0)=4`
-/

namespace A117676.P2423259755501951701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  |f1 (n - 1) - (9 * n : ℤ)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A117676.P2423259755501951701

namespace A117676

/-- `comp[abs(a(n-1)-9*n)]²` -/
def P2423259755501951701.Spec : Prop :=
  ∀ n, (P2423259755501951701.a n : ℤ) = A117676 n

end A117676

/-! ## A117676.P16777659744850857774

`lt[2*n, (n+1)^dr((2*n)²)]²`
-/

namespace A117676.P16777659744850857774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ SequenceMachineLib.digitalRoot ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A117676.P16777659744850857774

namespace A117676

/-- `lt[2*n, (n+1)^dr((2*n)²)]²` -/
def P16777659744850857774.Spec : Prop :=
  ∀ n, (P16777659744850857774.a n : ℤ) = A117676 n

end A117676

/-! ## A117676.P2600702969936227066

`A060464(n+1)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A117676

/-- `A060464(n+1)²` -/
def P2600702969936227066.Spec : Prop :=
  ∀ n, P2600702969936227066.a n = A117676 n

theorem P2600702969936227066.correct : P2600702969936227066.Spec := by
  intro n
  simp only [A117676]

end A117676

/-! ## A117676.P17403907534039091210

`comp[∑[A040019(n)]]²`
-/

namespace A117676.P17403907534039091210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A117676.P17403907534039091210

namespace A117676

/-- `comp[∑[A040019(n)]]²` -/
def P17403907534039091210.Spec : Prop :=
  ∀ n, (P17403907534039091210.a n : ℤ) = A117676 n

end A117676

/-! ## A117676.P5130355458106967289

`comp[A156638(n+1)]²`
-/

namespace A117676.P5130355458106967289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A117676.P5130355458106967289

namespace A117676

/-- `comp[A156638(n+1)]²` -/
def P5130355458106967289.Spec : Prop :=
  ∀ n, (P5130355458106967289.a n : ℤ) = A117676 n

end A117676

/-! ## A117676.P8435211844573489431

`(A005843(round(n/7))+n)²`
-/

namespace A117676.P8435211844573489431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.roundAway ((n : ℚ) / 7)).toNat + (n : ℤ)) ^ 2

end

end A117676.P8435211844573489431

namespace A117676

/-- `(A005843(round(n/7))+n)²` -/
def P8435211844573489431.Spec : Prop :=
  ∀ n, P8435211844573489431.a n = A117676 n

end A117676

/-! ## A117676.P17861975015031208462

`comp[A168373(n+1)+n]²`
-/

namespace A117676.P17861975015031208462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168373 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A117676.P17861975015031208462

namespace A117676

/-- `comp[A168373(n+1)+n]²` -/
def P17861975015031208462.Spec : Prop :=
  ∀ n, (P17861975015031208462.a n : ℤ) = A117676 n

end A117676

/-! ## A117676.P10963047153603000895

`comp[A106387(n+1)-n]²`
-/

namespace A117676.P10963047153603000895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106387 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A117676.P10963047153603000895

namespace A117676

/-- `comp[A106387(n+1)-n]²` -/
def P10963047153603000895.Spec : Prop :=
  ∀ n, (P10963047153603000895.a n : ℤ) = A117676 n

end A117676

/-! ## A117676.P1796803628754164343

`(2*A047588(n+1)-n)²`
-/

namespace A117676.P1796803628754164343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A047588 (n + 1) - (n : ℤ)) ^ 2

end

end A117676.P1796803628754164343

namespace A117676

/-- `(2*A047588(n+1)-n)²` -/
def P1796803628754164343.Spec : Prop :=
  ∀ n, P1796803628754164343.a n = A117676 n

end A117676

/-! ## A117676.P4157480038991182585

`A060464(n+1)*A060464(A005408(n)-n)`
-/

namespace A117676.P4157480038991182585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (n + 1) * A060464 (A005408 n - (n : ℤ)).toNat

end

end A117676.P4157480038991182585

namespace A117676

/-- `A060464(n+1)*A060464(A005408(n)-n)` -/
def P4157480038991182585.Spec : Prop :=
  ∀ n, P4157480038991182585.a n = A117676 n

end A117676

/-! ## A117676.P18210639778786318024

`(A060464(n+1)+A000007(n))*A060464(n+1)`
-/

namespace A117676.P18210639778786318024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060464 (n + 1) + A000007 n) * A060464 (n + 1)

end

end A117676.P18210639778786318024

namespace A117676

/-- `(A060464(n+1)+A000007(n))*A060464(n+1)` -/
def P18210639778786318024.Spec : Prop :=
  ∀ n, P18210639778786318024.a n = A117676 n

end A117676

/-! ## A117676.P2111431038951570267

`(3-A272574(n+3))²`
-/

namespace A117676.P2111431038951570267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A272574 (n + 3)) ^ 2

end

end A117676.P2111431038951570267

namespace A117676

/-- `(3-A272574(n+3))²` -/
def P2111431038951570267.Spec : Prop :=
  ∀ n, P2111431038951570267.a n = A117676 n

end A117676

/-! ## A117676.P13826725727898066052

`(Δ[A008814(n+2)]+n-1)²`
-/

namespace A117676.P13826725727898066052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008814 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + ((n : ℤ) - 1)) ^ 2

end

end A117676.P13826725727898066052

namespace A117676

/-- `(Δ[A008814(n+2)]+n-1)²` -/
def P13826725727898066052.Spec : Prop :=
  ∀ n, P13826725727898066052.a n = A117676 n

end A117676

/-! ## A117676.P447835477310969209

`A000290(2*A060464(n+1)-A060464(n+1))`
-/

namespace A117676.P447835477310969209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A060464 (n + 1) - A060464 (n + 1)).toNat

end

end A117676.P447835477310969209

namespace A117676

/-- `A000290(2*A060464(n+1)-A060464(n+1))` -/
def P447835477310969209.Spec : Prop :=
  ∀ n, P447835477310969209.a n = A117676 n

end A117676

/-! ## A117676.P633756844829243913

`lt[A061039(n+3), A145909(n+4)]²`
-/

namespace A117676.P633756844829243913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145909 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A117676.P633756844829243913

namespace A117676

/-- `lt[A061039(n+3), A145909(n+4)]²` -/
def P633756844829243913.Spec : Prop :=
  ∀ n, (P633756844829243913.a n : ℤ) = A117676 n

end A117676

/-! ## A117676.P14245822683097025497

`(A194511(2*(n+1))+n)²`
-/

namespace A117676.P14245822683097025497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A194511 (2 * (n + 1)) + (n : ℤ)) ^ 2

end

end A117676.P14245822683097025497

namespace A117676

/-- `(A194511(2*(n+1))+n)²` -/
def P14245822683097025497.Spec : Prop :=
  ∀ n, P14245822683097025497.a n = A117676 n

end A117676

/-! ## A117676.P10062368679315448856

`A000290(A272574(2*n)-A272574(n))`
-/

namespace A117676.P10062368679315448856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A272574 (2 * n) - A272574 n).toNat

end

end A117676.P10062368679315448856

namespace A117676

/-- `A000290(A272574(2*n)-A272574(n))` -/
def P10062368679315448856.Spec : Prop :=
  ∀ n, P10062368679315448856.a n = A117676 n

end A117676

/-! ## A117676.P5327370232685356579

`(A312245(n)-A313975(n))²`
-/

namespace A117676.P5327370232685356579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A312245 n - A313975 n) ^ 2

end

end A117676.P5327370232685356579

namespace A117676

/-- `(A312245(n)-A313975(n))²` -/
def P5327370232685356579.Spec : Prop :=
  ∀ n, P5327370232685356579.a n = A117676 n

end A117676

/-!
# A117677: a(n) = number of divisors of n^2 (excluding 1 and n^2).

The programs for A117677, the canonical program `A117677.P11119658557963893335` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117677 has offset 1).

The definition of A117677 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070824, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117677.P11119658557963893335

`A070824((n+1)²)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A117677

/-- `A070824((n+1)²)` -/
def P11119658557963893335.Spec : Prop :=
  ∀ n, P11119658557963893335.a n = A117677 (n + 1)

theorem P11119658557963893335.correct : P11119658557963893335.Spec := by
  intro n
  simp only [A117677, Nat.add_sub_cancel]

end A117677

/-! ## A117677.P11217706257340108233

`(A048691(n+1)-2)%∑[n+1]`
-/

namespace A117677.P11217706257340108233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048691 (n + 1) - 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A117677.P11217706257340108233

namespace A117677

/-- `(A048691(n+1)-2)%∑[n+1]` -/
def P11217706257340108233.Spec : Prop :=
  ∀ n, P11217706257340108233.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P10518683117533574334

`A004273(A063647(n+1))`
-/

namespace A117677.P10518683117533574334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A063647 (n + 1)).toNat

end

end A117677.P10518683117533574334

namespace A117677

/-- `A004273(A063647(n+1))` -/
def P10518683117533574334.Spec : Prop :=
  ∀ n, P10518683117533574334.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P1029006034672963241

`A063198(A146564(n+1))`
-/

namespace A117677.P1029006034672963241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (A146564 (n + 1)).toNat

end

end A117677.P1029006034672963241

namespace A117677

/-- `A063198(A146564(n+1))` -/
def P1029006034672963241.Spec : Prop :=
  ∀ n, P1029006034672963241.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P14440298315464021127

`A289207(A048691(n+1))`
-/

namespace A117677.P14440298315464021127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A048691 (n + 1)).toNat

end

end A117677.P14440298315464021127

namespace A117677

/-- `A289207(A048691(n+1))` -/
def P14440298315464021127.Spec : Prop :=
  ∀ n, P14440298315464021127.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P11106940281571415114

`A004273(A018892(n+1)-1)`
-/

namespace A117677.P11106940281571415114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A018892 (n + 1) - 1).toNat

end

end A117677.P11106940281571415114

namespace A117677

/-- `A004273(A018892(n+1)-1)` -/
def P11106940281571415114.Spec : Prop :=
  ∀ n, P11106940281571415114.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P16340644994481557096

`A004273(A046079(2*(n+1)))`
-/

namespace A117677.P16340644994481557096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A046079 (2 * (n + 1))).toNat

end

end A117677.P16340644994481557096

namespace A117677

/-- `A004273(A046079(2*(n+1)))` -/
def P16340644994481557096.Spec : Prop :=
  ∀ n, P16340644994481557096.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P6953576870433695112

`A070824(n+1)+A055205(n+1)`
-/

namespace A117677.P6953576870433695112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) + A055205 (n + 1)

end

end A117677.P6953576870433695112

namespace A117677

/-- `A070824(n+1)+A055205(n+1)` -/
def P6953576870433695112.Spec : Prop :=
  ∀ n, P6953576870433695112.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P4713056445854873145

`A048691(n+1)-(A057427(n)+1)`
-/

namespace A117677.P4713056445854873145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) - (A057427 n + 1)

end

end A117677.P4713056445854873145

namespace A117677

/-- `A048691(n+1)-(A057427(n)+1)` -/
def P4713056445854873145.Spec : Prop :=
  ∀ n, P4713056445854873145.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P9690396428779481108

`A048691(n+1)+1-A157532(n+1)`
-/

namespace A117677.P9690396428779481108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) + (1 - A157532 (n + 1))

end

end A117677.P9690396428779481108

namespace A117677

/-- `A048691(n+1)+1-A157532(n+1)` -/
def P9690396428779481108.Spec : Prop :=
  ∀ n, P9690396428779481108.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P10653835365682684054

`2*A046079(2*(n+1))-A057427(n)`
-/

namespace A117677.P10653835365682684054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046079 (2 * (n + 1)) - A057427 n

end

end A117677.P10653835365682684054

namespace A117677

/-- `2*A046079(2*(n+1))-A057427(n)` -/
def P10653835365682684054.Spec : Prop :=
  ∀ n, P10653835365682684054.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P6127940628948312036

`A048691(n+1)-A034444(A001316(n))`
-/

namespace A117677.P6127940628948312036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) - A034444 (A001316 n).toNat

end

end A117677.P6127940628948312036

namespace A117677

/-- `A048691(n+1)-A034444(A001316(n))` -/
def P6127940628948312036.Spec : Prop :=
  ∀ n, P6127940628948312036.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P13651437272274229945

`A048691(n+1)-A034444(A034444(n+1))`
-/

namespace A117677.P13651437272274229945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) - A034444 (A034444 (n + 1)).toNat

end

end A117677.P13651437272274229945

namespace A117677

/-- `A048691(n+1)-A034444(A034444(n+1))` -/
def P13651437272274229945.Spec : Prop :=
  ∀ n, P13651437272274229945.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P11050428599615508727

`A008966(A035116(n+1))+A048691(n+1)-2`
-/

namespace A117677.P11050428599615508727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A035116 (n + 1)).toNat + (A048691 (n + 1) - 2)

end

end A117677.P11050428599615508727

namespace A117677

/-- `A008966(A035116(n+1))+A048691(n+1)-2` -/
def P11050428599615508727.Spec : Prop :=
  ∀ n, P11050428599615508727.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P2419038147243439772

`A048691(n+1)+A070824(n+1)-A000005(n+1)`
-/

namespace A117677.P2419038147243439772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) + (A070824 (n + 1) - A000005 (n + 1))

end

end A117677.P2419038147243439772

namespace A117677

/-- `A048691(n+1)+A070824(n+1)-A000005(n+1)` -/
def P2419038147243439772.Spec : Prop :=
  ∀ n, P2419038147243439772.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P6859761262757013512

`A048691(n+1)+A144943(n+1)-A048785(n+1)`
-/

namespace A117677.P6859761262757013512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) + (A144943 (n + 1) - A048785 (n + 1))

end

end A117677.P6859761262757013512

namespace A117677

/-- `A048691(n+1)+A144943(n+1)-A048785(n+1)` -/
def P6859761262757013512.Spec : Prop :=
  ∀ n, P6859761262757013512.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P2827649171167160249

`A000005(A046523(n+1)²)-A046523(A020639(n+1))`
-/

namespace A117677.P2827649171167160249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A046523 (n + 1) ^ 2).toNat - A046523 (A020639 (n + 1)).toNat

end

end A117677.P2827649171167160249

namespace A117677

/-- `A000005(A046523(n+1)²)-A046523(A020639(n+1))` -/
def P2827649171167160249.Spec : Prop :=
  ∀ n, P2827649171167160249.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P8650213380304646512

`(A000005((n+1)²)-2)%(n+1)²`
-/

namespace A117677.P8650213380304646512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 ((n + 1) ^ 2) - 2) ((n + 1) ^ 2 : ℤ)

end

end A117677.P8650213380304646512

namespace A117677

/-- `(A000005((n+1)²)-2)%(n+1)²` -/
def P8650213380304646512.Spec : Prop :=
  ∀ n, P8650213380304646512.a n = A117677 (n + 1)

end A117677

/-! ## A117677.P13674472780868627485

`A008966((n+1)²)+A048691(n+1)-2`
-/

namespace A117677.P13674472780868627485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 ((n + 1) ^ 2) + (A048691 (n + 1) - 2)

end

end A117677.P13674472780868627485

namespace A117677

/-- `A008966((n+1)²)+A048691(n+1)-2` -/
def P13674472780868627485.Spec : Prop :=
  ∀ n, P13674472780868627485.a n = A117677 (n + 1)

end A117677

/-!
# A117678: Squares for which the multiplicative digital root is also a square.

The programs for A117678, there is no canonical definition to state claims against.
-/

/-! ## A117678.P2001810115796303302

`eq[floor(floor(n/4)+1-n/5), A025876(n)]²`
-/

namespace A117678.P2001810115796303302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 4⌋ + 1 : ℚ) - (n : ℚ) / 5⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025876 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A117678.P2001810115796303302

/-! ## A117678.P13595885078199713664

`record[A128115(∑[∑{e}[n+1, #]+1])²]`
-/

namespace A117678.P13595885078199713664
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128115 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117678.P13595885078199713664

/-! ## A117678.P7826627842023288631

`A128115(p?[∑[∑{e}[n+1, #]+1]])²`
-/

namespace A117678.P7826627842023288631
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128115 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ^ 2

end

end A117678.P7826627842023288631

/-! ## A117678.P8828398227244039493

`eq[1, A008683(A236582(n))]²`
-/

namespace A117678.P8828398227244039493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A236582 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A117678.P8828398227244039493

/-! ## A117678.P6332651283663174330

`∑[gcd(n, A324923(A000667(n)))]²`
-/

namespace A117678.P6332651283663174330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A324923 (A000667 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A117678.P6332651283663174330

/-!
# A117679: Records in A117677.

The programs for A117679, there is no canonical definition to state claims against.
-/

/-! ## A117679.P667086606401008314

`A047242(A126097(n+1))`
-/

namespace A117679.P667086606401008314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (A126097 (n + 1)).toNat

end

end A117679.P667086606401008314

/-! ## A117679.P7917734527287951836

`A004273(A126097(n+1)-1)`
-/

namespace A117679.P7917734527287951836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A126097 (n + 1) - 1).toNat

end

end A117679.P7917734527287951836

/-! ## A117679.P13641403031332493998

`A004273(A004273(A126097(n+1))%A126097(n+1))`
-/

namespace A117679.P13641403031332493998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.tmod (A004273 (A126097 (n + 1)).toNat) (A126097 (n + 1))).toNat

end

end A117679.P13641403031332493998

/-!
# A117680: Squares for which the sum of the digits, the product of the digits, the digital root and the multiplicative digital root are all squares.

The programs for A117680, there is no canonical definition to state claims against.
-/

/-! ## A117680.P7553888715857160602

`A339999((floor(ϕ*(n+1))-1)^A339890(n+1))`
-/

namespace A117680.P7553888715857160602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339999 (SequenceMachineLib.roundAway ((⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1 : ℚ) ^ (A339890 (n + 1) : ℤ))).toNat

end

end A117680.P7553888715857160602

/-! ## A117680.P5811879600112060904

`A339999(A001912(n+1)%A051447(n+2))`
-/

namespace A117680.P5811879600112060904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339999 (Int.tmod (A001912 (n + 1)) (A051447 (n + 2))).toNat

end

end A117680.P5811879600112060904

/-!
# A117681: a(n) = floor(exp(n^2)).

The programs for A117681, the canonical program `A117681.P8305746652768125255` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117681 has offset 1).

The definition of A117681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp((n+1)²))` (program `A117681.P8305746652768125255`, by `A117681.P8305746652768125255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117681.P8305746652768125255

`floor(exp((n+1)²))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117681

/-- `floor(exp((n+1)²))` -/
def P8305746652768125255.Spec : Prop :=
  ∀ n, P8305746652768125255.a n = A117681 (n + 1)

theorem P8305746652768125255.correct : P8305746652768125255.Spec := by
  intro n
  simp only [A117681, Nat.add_sub_cancel]

end A117681

/-! ## A117681.P8982809892490763002

`A000149((n+1)²)`
-/

namespace A117681.P8982809892490763002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 ((n + 1) ^ 2)

end

end A117681.P8982809892490763002

namespace A117681

/-- `A000149((n+1)²)` -/
def P8982809892490763002.Spec : Prop :=
  ∀ n, P8982809892490763002.a n = A117681 (n + 1)

theorem P8982809892490763002.correct : P8982809892490763002.Spec := by
  intro n
  simp only [A117681, Nat.add_sub_cancel, A117681.P8982809892490763002.a, A117681.P8305746652768125255.a, A000149, A000149.P348263657615241890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117681

/-! ## A117681.P10326116240976239117

`record[A000149((n-1)²)]`
-/

namespace A117681.P10326116240976239117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 (((n : ℤ) - 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117681.P10326116240976239117

namespace A117681

/-- `record[A000149((n-1)²)]` -/
def P10326116240976239117.Spec : Prop :=
  ∀ n, P10326116240976239117.a n = A117681 (n + 1)

end A117681

/-! ## A117681.P3400706490508409

`record[floor(exp(A137734(n)²))]`
-/

namespace A117681.P3400706490508409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A137734 n ^ 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117681.P3400706490508409

namespace A117681

/-- `record[floor(exp(A137734(n)²))]` -/
def P3400706490508409.Spec : Prop :=
  ∀ n, P3400706490508409.a n = A117681 (n + 1)

end A117681

/-! ## A117681.P10315595567797643266

`A001671((n+1)²)-1`
-/

namespace A117681.P10315595567797643266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001671 ((n + 1) ^ 2) - 1

end

end A117681.P10315595567797643266

namespace A117681

/-- `A001671((n+1)²)-1` -/
def P10315595567797643266.Spec : Prop :=
  ∀ n, P10315595567797643266.a n = A117681 (n + 1)

theorem P10315595567797643266.correct : P10315595567797643266.Spec := by
  intro n
  simp only [A117681, Nat.add_sub_cancel, A117681.P10315595567797643266.a, A117681.P8305746652768125255.a, A001671, A001671.P524176182924743815.a, A000149, A000149.P348263657615241890.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117681

/-!
# A117682: Prime numbers for which the product of the digits is a triangular number.

The programs for A117682, the canonical program `A117682.P12609232638035276645` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117682 has offset 1).

The definition of A117682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117682.P12609232638035276645

`p?[n*A010054(A007954(n))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A117682

/-- `p?[n*A010054(A007954(n))]` -/
def P12609232638035276645.Spec : Prop :=
  ∀ n, P12609232638035276645.a n = A117682 (n + 1)

theorem P12609232638035276645.correct : P12609232638035276645.Spec := by
  intro n
  simp only [A117682, Nat.add_sub_cancel]

end A117682

/-! ## A117682.P1112450169500548691

`eq[A003415(n), A010054(A007954(n))]`
-/

namespace A117682.P1112450169500548691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117682.P1112450169500548691

namespace A117682

/-- `eq[A003415(n), A010054(A007954(n))]` -/
def P1112450169500548691.Spec : Prop :=
  ∀ n, (P1112450169500548691.a n : ℤ) = A117682 (n + 1)

end A117682

/-! ## A117682.P17890214415667174992

`eq[A010054(A007954(n)), A032741(n)]`
-/

namespace A117682.P17890214415667174992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117682.P17890214415667174992

namespace A117682

/-- `eq[A010054(A007954(n)), A032741(n)]` -/
def P17890214415667174992.Spec : Prop :=
  ∀ n, (P17890214415667174992.a n : ℤ) = A117682 (n + 1)

end A117682

/-! ## A117682.P5919565896656535728

`eq[A035214(A007954(n)), A073855(n)]`
-/

namespace A117682.P5919565896656535728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117682.P5919565896656535728

namespace A117682

/-- `eq[A035214(A007954(n)), A073855(n)]` -/
def P5919565896656535728.Spec : Prop :=
  ∀ n, (P5919565896656535728.a n : ℤ) = A117682 (n + 1)

end A117682

/-! ## A117682.P1013738971768343054

`p?[xor(n, 2-A336574(A007954(n+1)))]`
-/

namespace A117682.P1013738971768343054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (2 - A336574 (A007954 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117682.P1013738971768343054

namespace A117682

/-- `p?[xor(n, 2-A336574(A007954(n+1)))]` -/
def P1013738971768343054.Spec : Prop :=
  ∀ n, P1013738971768343054.a n = A117682 (n + 1)

end A117682

/-!
# A117683: Triangle T(n,k) = A049614(n)/(A049614(k)*A049614(n-k)), read by rows.

The programs for A117683, there is no canonical definition to state claims against.
-/

/-! ## A117683.P13933923152508683888

`A172985(comp[∑[n]])`
-/

namespace A117683.P13933923152508683888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172985 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117683.P13933923152508683888

/-! ## A117683.P7665987602569562658

`or(char[1], A172985(A014132(n+1)))`
-/

namespace A117683.P7665987602569562658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A172985 (A014132 (n + 1)).toNat)

end

end A117683.P7665987602569562658

/-! ## A117683.P1117537313510629325

`gcd(A000038(n), A172985(A014132(n+1)))`
-/

namespace A117683.P1117537313510629325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A172985 (A014132 (n + 1)).toNat)

end

end A117683.P1117537313510629325

/-! ## A117683.P10869195119848984765

`A007318(C(2, n))*A172985(A014132(n+1))`
-/

namespace A117683.P10869195119848984765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A172985 (A014132 (n + 1)).toNat

end

end A117683.P10869195119848984765

/-! ## A117683.P6655063218245116231

`A172985(A014132(n+1))+A001222(gcd(n, n+1))`
-/

namespace A117683.P6655063218245116231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172985 (A014132 (n + 1)).toNat + A001222 (Nat.gcd n (n + 1))

end

end A117683.P6655063218245116231

/-! ## A117683.P7629899257410573197

`A000045(ceil(2/(n+1)))*A172985(A014132(n+1))`
-/

namespace A117683.P7629899257410573197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈2 / (n + 1 : ℚ)⌉.toNat * A172985 (A014132 (n + 1)).toNat

end

end A117683.P7629899257410573197

/-! ## A117683.P4167289292362637210

`A172985(A014132(n+1))^A001221(A001316(n))`
-/

namespace A117683.P4167289292362637210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172985 (A014132 (n + 1)).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A117683.P4167289292362637210

/-! ## A117683.P4471876409758205963

`∑{d}[A172985(A014132(n+1)), A000010(#)]`
-/

namespace A117683.P4471876409758205963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172985 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A117683.P4471876409758205963

/-!
# A117685: Squares for which the sum of the digits are cubes.

The programs for A117685, there is no canonical definition to state claims against.
-/

/-! ## A117685.P674534518494262851

`record[n²*A010057(A007953(n²))]`
-/

namespace A117685.P674534518494262851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A010057 (A007953 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117685.P674534518494262851

/-!
# A117686: Squares for which the product of the digits are cubes.

The programs for A117686, there is no canonical definition to state claims against.
-/

/-! ## A117686.P16539425853760588773

`lt[A097990(n), 22]²`
-/

namespace A117686.P16539425853760588773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097990 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A117686.P16539425853760588773

/-! ## A117686.P5007382012172517507

`lt[A097991(n), 22]²`
-/

namespace A117686.P5007382012172517507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097991 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A117686.P5007382012172517507

/-!
# A117687: Squares for which both the sum of the digits and the product of the digits are cubes.

The programs for A117687, there is no canonical definition to state claims against.
-/

/-! ## A117687.P14386607753425446895

`∩[A117685(n), A117686(n)]`
-/

namespace A117687.P14386607753425446895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117686 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117687.P14386607753425446895

/-! ## A117687.P3119579987445786749

`∩[A117685(n), A321881(n+1)]`
-/

namespace A117687.P3119579987445786749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117687.P3119579987445786749

/-!
# A117688: Cubes for which the sum of the digits is a square.

The programs for A117688, there is no canonical definition to state claims against.
-/

/-! ## A117688.P4305250304552519824

`A094543(A001465(n+1))`
-/

namespace A117688.P4305250304552519824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094543 (A001465 (n + 1)).toNat

end

end A117688.P4305250304552519824

/-! ## A117688.P2012789726550420810

`A129363(A014333(n))^3`
-/

namespace A117688.P2012789726550420810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (A014333 n).toNat ^ 3

end

end A117688.P2012789726550420810

/-!
# A117689: Cubes for which the product of the digits is a square.

The programs for A117689, there is no canonical definition to state claims against.
-/

/-! ## A117689.P8691782233434019374

`A118880(A075830(Δ[n²]))`
-/

namespace A117689.P8691782233434019374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (A075830 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A117689.P8691782233434019374

/-! ## A117689.P2016647018522501949

`A236325(A156560(n+1))^3`
-/

namespace A117689.P2016647018522501949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236325 (A156560 (n + 1)).toNat ^ 3

end

end A117689.P2016647018522501949

/-!
# A117690: Cubes for which both the sum of the digits and the product of the digits are squares.

The programs for A117690, there is no canonical definition to state claims against.
-/

/-! ## A117690.P3228436960276502472

`∩[A117688(n), A117689(n)]`
-/

namespace A117690.P3228436960276502472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117689 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117690.P3228436960276502472

/-!
# A117691: Expansion of (4+3*x+3*x^2+2*x^3-x^5-x^6-x^7)/(1-x^4)^2.

The programs for A117691, the canonical program `A117691.P11555171582361647871` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117691 has offset 0).

The definition of A117691 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4+3x+3x^2+2x^3-x^5-x^6-x^7)/(1-2x^4+x^8))` (program `A117691.P11555171582361647871`, by `A117691.P11555171582361647871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117691.P12142848503568915765

`2*a(n-4)-a(n-8)` with `a(0)=4, a(1)=3, a(2)=3, a(3)=2, a(4)=8, a(5)=5, a(6)=5, a(7)=3`
-/

namespace A117691.P12142848503568915765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 3, 2, 8, 5, 5, 3] fun n a =>
  2 * a (n - 4) - a (n - 8)

end

end A117691.P12142848503568915765

namespace A117691

/-- `2*a(n-4)-a(n-8)` -/
def P12142848503568915765.Spec : Prop :=
  ∀ n, P12142848503568915765.a n = A117691 n

end A117691

/-! ## A117691.P11555171582361647871

`ogf((4+3x+3x^2+2x^3-x^5-x^6-x^7)/(1-2x^4+x^8))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117691

/-- `ogf((4+3x+3x^2+2x^3-x^5-x^6-x^7)/(1-2x^4+x^8))` -/
def P11555171582361647871.Spec : Prop :=
  ∀ n, P11555171582361647871.a n = A117691 n

theorem P11555171582361647871.correct : P11555171582361647871.Spec := by
  intro n
  simp only [A117691]

end A117691

/-! ## A117691.P14732601047033003131

`A055523(n+3)/A022998(A008619(n))`
-/

namespace A117691.P14732601047033003131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055523 (n + 3) : ℚ) / (A022998 (A008619 n).toNat : ℚ)

end

end A117691.P14732601047033003131

namespace A117691

/-- `A055523(n+3)/A022998(A008619(n))` -/
def P14732601047033003131.Spec : Prop :=
  ∀ n, P14732601047033003131.a n = (A117691 n : ℚ)

end A117691

/-! ## A117691.P11012619482468746663

`(A026741(n+3)+1)/A130658(n)`
-/

namespace A117691.P11012619482468746663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 3) + 1 : ℚ) / (A130658 n : ℚ)

end

end A117691.P11012619482468746663

namespace A117691

/-- `(A026741(n+3)+1)/A130658(n)` -/
def P11012619482468746663.Spec : Prop :=
  ∀ n, P11012619482468746663.a n = (A117691 n : ℚ)

end A117691

/-! ## A117691.P16765295357674648525

`A029578(n+5)/A000034(A004526(n))`
-/

namespace A117691.P16765295357674648525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029578 (n + 5) : ℚ) / (A000034 (A004526 n).toNat : ℚ)

end

end A117691.P16765295357674648525

namespace A117691

/-- `A029578(n+5)/A000034(A004526(n))` -/
def P16765295357674648525.Spec : Prop :=
  ∀ n, P16765295357674648525.a n = (A117691 n : ℚ)

end A117691

/-! ## A117691.P17986192618228387248

`A008217(n+8)-A059169(n+4)²`
-/

namespace A117691.P17986192618228387248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (n + 8) - A059169 (n + 4) ^ 2

end

end A117691.P17986192618228387248

namespace A117691

/-- `A008217(n+8)-A059169(n+4)²` -/
def P17986192618228387248.Spec : Prop :=
  ∀ n, P17986192618228387248.a n = A117691 n

end A117691

/-! ## A117691.P8575117669136205157

`ceil(A064038(n+6)/A026741(n+8))`
-/

namespace A117691.P8575117669136205157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064038 (n + 6) : ℚ) / (A026741 (n + 8) : ℚ)⌉

end

end A117691.P8575117669136205157

namespace A117691

/-- `ceil(A064038(n+6)/A026741(n+8))` -/
def P8575117669136205157.Spec : Prop :=
  ∀ n, P8575117669136205157.a n = A117691 n

end A117691

/-! ## A117691.P13980502068817705619

`A029578(n+5)/A000034(A014682(n))`
-/

namespace A117691.P13980502068817705619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029578 (n + 5) : ℚ) / (A000034 (A014682 n).toNat : ℚ)

end

end A117691.P13980502068817705619

namespace A117691

/-- `A029578(n+5)/A000034(A014682(n))` -/
def P13980502068817705619.Spec : Prop :=
  ∀ n, P13980502068817705619.a n = (A117691 n : ℚ)

end A117691

/-! ## A117691.P5363652994329251031

`A008619(A033931(n+1)/A257942(n))`
-/

namespace A117691.P5363652994329251031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A033931 (n + 1) : ℚ) / (A257942 n : ℚ))).toNat

end

end A117691.P5363652994329251031

namespace A117691

/-- `A008619(A033931(n+1)/A257942(n))` -/
def P5363652994329251031.Spec : Prop :=
  ∀ n, P5363652994329251031.a n = A117691 n

end A117691

/-! ## A117691.P2414149607762575272

`A026741(A168273(n+5)/A176895(n))`
-/

namespace A117691.P2414149607762575272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A168273 (n + 5) : ℚ) / (A176895 n : ℚ))).toNat

end

end A117691.P2414149607762575272

namespace A117691

/-- `A026741(A168273(n+5)/A176895(n))` -/
def P2414149607762575272.Spec : Prop :=
  ∀ n, P2414149607762575272.a n = A117691 n

end A117691

/-! ## A117691.P4655410358677671499

`A176743(A109043(n+3))/A130658(n)`
-/

namespace A117691.P4655410358677671499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176743 (A109043 (n + 3)).toNat : ℚ) / (A130658 n : ℚ)

end

end A117691.P4655410358677671499

namespace A117691

/-- `A176743(A109043(n+3))/A130658(n)` -/
def P4655410358677671499.Spec : Prop :=
  ∀ n, P4655410358677671499.a n = (A117691 n : ℚ)

end A117691

/-! ## A117691.P5906925817022169201

`A029578(n+5)/A000034(A161680(n))`
-/

namespace A117691.P5906925817022169201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029578 (n + 5) : ℚ) / (A000034 (A161680 n).toNat : ℚ)

end

end A117691.P5906925817022169201

namespace A117691

/-- `A029578(n+5)/A000034(A161680(n))` -/
def P5906925817022169201.Spec : Prop :=
  ∀ n, P5906925817022169201.a n = (A117691 n : ℚ)

end A117691

/-! ## A117691.P14517728568140045166

`A029578(n+5)/A000034(A316966(n))`
-/

namespace A117691.P14517728568140045166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029578 (n + 5) : ℚ) / (A000034 (A316966 n).toNat : ℚ)

end

end A117691.P14517728568140045166

namespace A117691

/-- `A029578(n+5)/A000034(A316966(n))` -/
def P14517728568140045166.Spec : Prop :=
  ∀ n, P14517728568140045166.a n = (A117691 n : ℚ)

end A117691

/-! ## A117691.P3064353994264415992

`A029578(n+5)/A000034(A000096(n))`
-/

namespace A117691.P3064353994264415992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029578 (n + 5) : ℚ) / (A000034 (A000096 n).toNat : ℚ)

end

end A117691.P3064353994264415992

namespace A117691

/-- `A029578(n+5)/A000034(A000096(n))` -/
def P3064353994264415992.Spec : Prop :=
  ∀ n, P3064353994264415992.a n = (A117691 n : ℚ)

end A117691

/-!
# A117693: Row sums of A117692.

The programs for A117693, there is no canonical definition to state claims against.
-/

/-! ## A117693.P9588665339095472990

`A003963(A119029(n+3)+n)`
-/

namespace A117693.P9588665339095472990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A119029 (n + 3) + (n : ℤ)).toNat

end

end A117693.P9588665339095472990

/-!
# A117694: a(n) = (n^n + n)/2.

The programs for A117694, the canonical program `A117694.P7215586320511301454` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117694 has offset 1).

The definition of A117694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117694.P7215586320511301454

`(n+1+(n+1)^(n+1))/2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117694

/-- `(n+1+(n+1)^(n+1))/2` -/
def P7215586320511301454.Spec : Prop :=
  ∀ n, P7215586320511301454.a n = (A117694 (n + 1) : ℚ)

end A117694

/-! ## A117694.P3255132284431477337

`((n+1)^(n+1)+n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117694.P3255132284431477337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) + (n + 1) : ℚ) / 2

end

end A117694.P3255132284431477337

namespace A117694

/-- `((n+1)^(n+1)+n+1)/2` -/
def P3255132284431477337.Spec : Prop :=
  ∀ n, P3255132284431477337.a n = (A117694 (n + 1) : ℚ)

end A117694

/-! ## A117694.P14544895060296152264

`A108396(∑[n+2]-1)`
-/

namespace A117694.P14544895060296152264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108396 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A117694.P14544895060296152264

namespace A117694

/-- `A108396(∑[n+2]-1)` -/
def P14544895060296152264.Spec : Prop :=
  ∀ n, P14544895060296152264.a n = A117694 (n + 1)

end A117694

/-! ## A117694.P10947985256476975857

`(n+1)/2*A124923(n+1)`
-/

namespace A117694.P10947985256476975857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A124923 (n + 1) : ℚ)

end

end A117694.P10947985256476975857

namespace A117694

/-- `(n+1)/2*A124923(n+1)` -/
def P10947985256476975857.Spec : Prop :=
  ∀ n, P10947985256476975857.a n = (A117694 (n + 1) : ℚ)

end A117694

/-! ## A117694.P3758090659303177826

`A214698(n+1)+A000217(n+1)`
-/

namespace A117694.P3758090659303177826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214698 (n + 1) + A000217 (n + 1)

end

end A117694.P3758090659303177826

namespace A117694

/-- `A214698(n+1)+A000217(n+1)` -/
def P3758090659303177826.Spec : Prop :=
  ∀ n, P3758090659303177826.a n = A117694 (n + 1)

end A117694

/-!
# A117695: a(n) is the number of pairs of distinct positive integers not containing a digit 0 giving a sum equal to n.

The programs for A117695, there is no canonical definition to state claims against.
-/

/-! ## A117695.P328797393612013571

`A290255(A138471(n)+A016116(n))`
-/

namespace A117695.P328797393612013571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (A138471 n + A016116 n).toNat

end

end A117695.P328797393612013571

/-! ## A117695.P7828061671494444441

`A032741(A131572(n))-A138471(n)`
-/

namespace A117695.P7828061671494444441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A131572 n).toNat - A138471 n

end

end A117695.P7828061671494444441

/-! ## A117695.P7359068557555973437

`A290255(or(A016116(n), A138471(n)))`
-/

namespace A117695.P7359068557555973437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (Int.lor (A016116 n) (A138471 n)).toNat

end

end A117695.P7359068557555973437

/-! ## A117695.P1492853034119933733

`A290255(xor(A016116(n), A138471(n)))`
-/

namespace A117695.P1492853034119933733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (Int.xor (A016116 n) (A138471 n)).toNat

end

end A117695.P1492853034119933733

/-!
# A117696: Primes in sequence a(1)=2, a(n+1)=2^a(n)-3^(n-1).

The programs for A117696, there is no canonical definition to state claims against.
-/

/-! ## A117696.P352499255336178080

`record[2^a(floor(n/3))-n]` with `a(0)=2`
-/

namespace A117696.P352499255336178080
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  (2 : ℝ) ^ (f1 ⌊(n : ℚ) / 3⌋.toNat) - (n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117696.P352499255336178080

/-!
# A117697: Palindromic primes in base 2 (written in base 2).

The programs for A117697, there is no canonical definition to state claims against.
-/

/-! ## A117697.P1963084549082432603

`A007088(A016041(n+1))`
-/

namespace A117697.P1963084549082432603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A016041 (n + 1)).toNat

end

end A117697.P1963084549082432603

/-! ## A117697.P11304741684841796309

`∩[A004676(n+1), A057148(n+1)]`
-/

namespace A117697.P11304741684841796309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117697.P11304741684841796309

/-! ## A117697.P5526837726994716825

`∩[A004676(n+1), A241096(n+1)]`
-/

namespace A117697.P5526837726994716825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117697.P5526837726994716825

/-! ## A117697.P15383724266827498150

`A007088(p?[A006995(n+1)])`
-/

namespace A117697.P15383724266827498150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A117697.P15383724266827498150

/-! ## A117697.P622010726759694380

`A007088(p?[A162749(n+1)])`
-/

namespace A117697.P622010726759694380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A117697.P622010726759694380

/-! ## A117697.P7697200606138536654

`A007088(p?[A163410(n+1)])`
-/

namespace A117697.P7697200606138536654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A117697.P7697200606138536654

/-! ## A117697.P12816247256967831547

`A007088(p?[A329419(n+1)])`
-/

namespace A117697.P12816247256967831547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A117697.P12816247256967831547

/-! ## A117697.P17628848039916300728

`A007088(p?[A044918(n+3)])`
-/

namespace A117697.P17628848039916300728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A117697.P17628848039916300728

/-! ## A117697.P18446035346125250971

`∩[A004676(n+1), A006072(n+1)]`
-/

namespace A117697.P18446035346125250971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117697.P18446035346125250971

/-! ## A117697.P5465095576745757381

`∩[A004676(n+1), A118594(n+1)]`
-/

namespace A117697.P5465095576745757381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117697.P5465095576745757381

/-!
# A117698: Palindromic primes in base 3 (written in base 3).

The programs for A117698, there is no canonical definition to state claims against.
-/

/-! ## A117698.P13794428912779060250

`∩[A001363(n+1), A118594(n+1)]`
-/

namespace A117698.P13794428912779060250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117698.P13794428912779060250

/-! ## A117698.P3528225578449443748

`∩[A001363(n+1), A118595(n+1)]`
-/

namespace A117698.P3528225578449443748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117698.P3528225578449443748

/-! ## A117698.P2649453533356334617

`∩[A001363(n+1), A018846(n+1)]`
-/

namespace A117698.P2649453533356334617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117698.P2649453533356334617

/-! ## A117698.P8576126067628816883

`∩[A118594(n+1), A231278(n+1)]`
-/

namespace A117698.P8576126067628816883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117698.P8576126067628816883

/-! ## A117698.P8074541254418673036

`∩[A118595(n+1), A231278(n+1)]`
-/

namespace A117698.P8074541254418673036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117698.P8074541254418673036

/-!
# A117699: Palindromic primes in base 4 (written in base 4).

The programs for A117699, there is no canonical definition to state claims against.
-/

/-! ## A117699.P1955122253920186417

`∩[A004678(n+1), A083136(n+1)]`
-/

namespace A117699.P1955122253920186417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117699.P1955122253920186417

/-! ## A117699.P11403799219792457994

`∩[A004678(n+1), A083160(n+1)]`
-/

namespace A117699.P11403799219792457994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117699.P11403799219792457994

/-! ## A117699.P8691011745551332217

`∩[A004678(n+1), A118595(n+1)]`
-/

namespace A117699.P8691011745551332217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117699.P8691011745551332217

/-! ## A117699.P1188283234707791507

`∩[A004678(n+1), A118596(n+1)]`
-/

namespace A117699.P1188283234707791507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117699.P1188283234707791507

/-! ## A117699.P18371898187813545617

`∩[A004678(n+1), A118597(n+1)]`
-/

namespace A117699.P18371898187813545617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117699.P18371898187813545617

/-! ## A117699.P16543775520191489383

`∩[A004678(n+1), A118598(n+1)]`
-/

namespace A117699.P16543775520191489383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117699.P16543775520191489383

/-! ## A117699.P4184736416909779485

`∩[A004678(n+1), A118599(n+1)]`
-/

namespace A117699.P4184736416909779485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117699.P4184736416909779485

/-! ## A117699.P9147077632927082020

`∩[A004678(n+1), A365374(n+1)]`
-/

namespace A117699.P9147077632927082020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117699.P9147077632927082020

