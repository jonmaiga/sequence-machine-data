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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A368804: Irregular triangle read by rows: T(n,k) is the k-th balanced binary word of length 2*n, where words within a row are in lexicographical order (with leading zeros removed and interpreted as decimal numbers).

The programs for A368804, the canonical program `A368804.P4492888258836152047` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368804 has offset 1).

The definition of A368804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368804.P4492888258836152047

`A007088(A362030(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A368804

/-- `A007088(A362030(n+1))` -/
def P4492888258836152047.Spec : Prop :=
  ∀ n, P4492888258836152047.a n = A368804 (n + 1)

theorem P4492888258836152047.correct : P4492888258836152047.Spec := by
  intro n
  simp only [A368804, Nat.add_sub_cancel]

end A368804

/-! ## A368804.P775270492067441010

`A214488(n+1)-A214218(n+1)`
-/

namespace A368804.P775270492067441010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) - A214218 (n + 1)

end

end A368804.P775270492067441010

namespace A368804

/-- `A214488(n+1)-A214218(n+1)` -/
def P775270492067441010.Spec : Prop :=
  ∀ n, P775270492067441010.a n = A368804 (n + 1)

end A368804

/-! ## A368804.P17353169765793899604

`A214521(n+1)-A214488(n+1)`
-/

namespace A368804.P17353169765793899604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) - A214488 (n + 1)

end

end A368804.P17353169765793899604

namespace A368804

/-- `A214521(n+1)-A214488(n+1)` -/
def P17353169765793899604.Spec : Prop :=
  ∀ n, P17353169765793899604.a n = A368804 (n + 1)

end A368804

/-! ## A368804.P12141727319446007632

`A214522(n+1)-A214521(n+1)`
-/

namespace A368804.P12141727319446007632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) - A214521 (n + 1)

end

end A368804.P12141727319446007632

namespace A368804

/-- `A214522(n+1)-A214521(n+1)` -/
def P12141727319446007632.Spec : Prop :=
  ∀ n, P12141727319446007632.a n = A368804 (n + 1)

end A368804

/-! ## A368804.P3154506627943498209

`A214524(n+1)-A214522(n+1)`
-/

namespace A368804.P3154506627943498209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214524 (n + 1) - A214522 (n + 1)

end

end A368804.P3154506627943498209

namespace A368804

/-- `A214524(n+1)-A214522(n+1)` -/
def P3154506627943498209.Spec : Prop :=
  ∀ n, P3154506627943498209.a n = A368804 (n + 1)

end A368804

/-! ## A368804.P1688653420040182847

`A214530(n+1)-A214524(n+1)`
-/

namespace A368804.P1688653420040182847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214530 (n + 1) - A214524 (n + 1)

end

end A368804.P1688653420040182847

namespace A368804

/-- `A214530(n+1)-A214524(n+1)` -/
def P1688653420040182847.Spec : Prop :=
  ∀ n, P1688653420040182847.a n = A368804 (n + 1)

end A368804

/-! ## A368804.P13224684498718384457

`A214531(n+1)-A214530(n+1)`
-/

namespace A368804.P13224684498718384457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214531 (n + 1) - A214530 (n + 1)

end

end A368804.P13224684498718384457

namespace A368804

/-- `A214531(n+1)-A214530(n+1)` -/
def P13224684498718384457.Spec : Prop :=
  ∀ n, P13224684498718384457.a n = A368804 (n + 1)

end A368804

/-! ## A368804.P1937804382235309417

`A214532(n+1)-A214531(n+1)`
-/

namespace A368804.P1937804382235309417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214532 (n + 1) - A214531 (n + 1)

end

end A368804.P1937804382235309417

namespace A368804

/-- `A214532(n+1)-A214531(n+1)` -/
def P1937804382235309417.Spec : Prop :=
  ∀ n, P1937804382235309417.a n = A368804 (n + 1)

end A368804

/-! ## A368804.P15407039201649148929

`(A214531(n+1)-A214524(n+1))/2`
-/

namespace A368804.P15407039201649148929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214531 (n + 1) - A214524 (n + 1) : ℚ) / 2

end

end A368804.P15407039201649148929

namespace A368804

/-- `(A214531(n+1)-A214524(n+1))/2` -/
def P15407039201649148929.Spec : Prop :=
  ∀ n, P15407039201649148929.a n = (A368804 (n + 1) : ℚ)

end A368804

/-! ## A368804.P7845876860505600354

`A032917(A258410(n+1))-A007931(A258410(n+1))`
-/

namespace A368804.P7845876860505600354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (A258410 (n + 1)).toNat - A007931 (A258410 (n + 1)).toNat

end

end A368804.P7845876860505600354

namespace A368804

/-- `A032917(A258410(n+1))-A007931(A258410(n+1))` -/
def P7845876860505600354.Spec : Prop :=
  ∀ n, P7845876860505600354.a n = A368804 (n + 1)

end A368804

/-! ## A368804.P7791779631154044388

`A032822(A031448(n+2)-1)-A032917(A258410(n+1))`
-/

namespace A368804.P7791779631154044388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (A031448 (n + 2) - 1).toNat - A032917 (A258410 (n + 1)).toNat

end

end A368804.P7791779631154044388

namespace A368804

/-- `A032822(A031448(n+2)-1)-A032917(A258410(n+1))` -/
def P7791779631154044388.Spec : Prop :=
  ∀ n, P7791779631154044388.a n = A368804 (n + 1)

end A368804

/-!
# A368805: Primes whose digits are prime in both base 9 and base 10.

The programs for A368805, there is no canonical definition to state claims against.
-/

/-! ## A368805.P9412255785086744701

`∩[A276141(n+1), A130514(n)]`
-/

namespace A368805.P9412255785086744701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130514 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368805.P9412255785086744701

/-! ## A368805.P6312278026917938066

`∩[A362678(n+1), A243497(n)]`
-/

namespace A368805.P6312278026917938066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368805.P6312278026917938066

/-! ## A368805.P15013970697430537050

`∩[A032978(n+1), A362678(n+1)]`
-/

namespace A368805.P15013970697430537050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368805.P15013970697430537050

/-!
# A368806: 

The programs for A368806, there is no canonical definition to state claims against.
-/

/-! ## A368806.P1250921356887572376

`n!^∑[n+1]`
-/

namespace A368806.P1250921356887572376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368806.P1250921356887572376

/-! ## A368806.P13655730503694712373

`A000142(n)^∑[n+1]`
-/

namespace A368806.P13655730503694712373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368806.P13655730503694712373

/-!
# A368809: Number of 4 X n binary arrays with a path of adjacent 1's from top row to bottom row using only left, right, and downward steps.

The programs for A368809, there is no canonical definition to state claims against.
-/

/-! ## A368809.P5421288832805944457

`A369892(A000124(n+3)+3)`
-/

namespace A368809.P5421288832805944457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369892 (A000124 (n + 3) + 3).toNat

end

end A368809.P5421288832805944457

/-!
# A368810: a(n) = numerator of Sum_{i=1..n} Sum_{j=1..n} (1/i + 1/j).

The programs for A368810, the canonical program `A368810.P15557103798044834844` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368810 has offset 1).

The definition of A368810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368810.P15557103798044834844

`A096617(n+1)*A297382(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A368810

/-- `A096617(n+1)*A297382(n+1)` -/
def P15557103798044834844.Spec : Prop :=
  ∀ n, P15557103798044834844.a n = A368810 (n + 1)

theorem P15557103798044834844.correct : P15557103798044834844.Spec := by
  intro n
  simp only [A368810, Nat.add_sub_cancel]

end A368810

/-! ## A368810.P12332257669323280874

`A014963(2*(n+1))*A096617(n+1)`
-/

namespace A368810.P12332257669323280874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1)) * A096617 (n + 1)

end

end A368810.P12332257669323280874

namespace A368810

/-- `A014963(2*(n+1))*A096617(n+1)` -/
def P12332257669323280874.Spec : Prop :=
  ∀ n, P12332257669323280874.a n = A368810 (n + 1)

end A368810

/-! ## A368810.P4962033111137236129

`A000034(A048896(n))*A096617(n+1)`
-/

namespace A368810.P4962033111137236129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A048896 n).toNat * A096617 (n + 1)

end

end A368810.P4962033111137236129

namespace A368810

/-- `A000034(A048896(n))*A096617(n+1)` -/
def P4962033111137236129.Spec : Prop :=
  ∀ n, P4962033111137236129.a n = A368810 (n + 1)

end A368810

/-! ## A368810.P12099463124101359425

`A000034(A034448(n+1))*A096617(n+1)`
-/

namespace A368810.P12099463124101359425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A034448 (n + 1)).toNat * A096617 (n + 1)

end

end A368810.P12099463124101359425

namespace A368810

/-- `A000034(A034448(n+1))*A096617(n+1)` -/
def P12099463124101359425.Spec : Prop :=
  ∀ n, P12099463124101359425.a n = A368810 (n + 1)

end A368810

/-! ## A368810.P3982433673340003816

`A160047(2*(n+1))+A160046(2*(n+1))`
-/

namespace A368810.P3982433673340003816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160047 (2 * (n + 1)) + A160046 (2 * (n + 1))

end

end A368810.P3982433673340003816

namespace A368810

/-- `A160047(2*(n+1))+A160046(2*(n+1))` -/
def P3982433673340003816.Spec : Prop :=
  ∀ n, P3982433673340003816.a n = A368810 (n + 1)

end A368810

/-!
# A368812: Numbers m such that Sum_{k=0..m-1} exp(2*Pi*i*k^5/m) != 0.

The programs for A368812, there is no canonical definition to state claims against.
-/

/-! ## A368812.P15759463420070659747

`filter[A325662(n+1), A100810(#)]`
-/

namespace A368812.P15759463420070659747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100810 (f1 j).toNat = 1) n)

end

end A368812.P15759463420070659747

/-! ## A368812.P4325025595564332472

`eq[A286852(n), A289110(n+1)]`
-/

namespace A368812.P4325025595564332472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289110 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368812.P4325025595564332472

/-! ## A368812.P17076301347561562593

`A353834(n+1)-A296657(A000990(n))`
-/

namespace A368812.P17076301347561562593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353834 (n + 1) - A296657 (A000990 n).toNat

end

end A368812.P17076301347561562593

/-! ## A368812.P5488693145380218353

`A353834(n+1)-A353814(A299044(n))`
-/

namespace A368812.P5488693145380218353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353834 (n + 1) - A353814 (A299044 n).toNat

end

end A368812.P5488693145380218353

/-! ## A368812.P2726215835455196631

`A353834(n+1)+A030213(A030226(n+1))`
-/

namespace A368812.P2726215835455196631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353834 (n + 1) + A030213 (A030226 (n + 1)).toNat

end

end A368812.P2726215835455196631

/-!
# A368813: Number of regions in a regular 2n-gon when all vertices are connected by straight lines except for the n lines joining diametrically opposite vertices.

The programs for A368813, there is no canonical definition to state claims against.
-/

/-! ## A368813.P9538272284655506087

`record[A146558(n+1)-A114584(n)]`
-/

namespace A368813.P9538272284655506087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146558 (n + 1) - A114584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368813.P9538272284655506087

/-!
# A368814: Number of vertices in a regular 2n-gon when all vertices are connect by straight lines except for the n lines joining diametrically opposite vertices.

The programs for A368814, there is no canonical definition to state claims against.
-/

/-! ## A368814.P8263798384764032888

`A064553(A000040(2*n+1)*A178325(n))`
-/

namespace A368814.P8263798384764032888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A000040 (2 * n + 1) * A178325 n).toNat

end

end A368814.P8263798384764032888

/-! ## A368814.P7429839044379113050

`A084228(A006125(n))*A328617(2*(n+1))`
-/

namespace A368814.P7429839044379113050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084228 (A006125 n).toNat * A328617 (2 * (n + 1))

end

end A368814.P7429839044379113050

/-!
# A368817: Sum of the refactorable numbers less than n that do not divide n.

The programs for A368817, there is no canonical definition to state claims against.
-/

/-! ## A368817.P14983781891502281939

`A209291(n+1)-A335182(n+1)`
-/

namespace A368817.P14983781891502281939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209291 (n + 1) - A335182 (n + 1)

end

end A368817.P14983781891502281939

/-! ## A368817.P3845687283676793758

`A209291(n+1)-∑{d}[n+1, #*A336040(#)]`
-/

namespace A368817.P3845687283676793758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209291 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A336040 d

end

end A368817.P3845687283676793758

/-! ## A368817.P4746528336219040418

`A209291(n+1)+A349659(n+1)-A000203(n+1)`
-/

namespace A368817.P4746528336219040418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209291 (n + 1) + (A349659 (n + 1) - A000203 (n + 1))

end

end A368817.P4746528336219040418

/-! ## A368817.P1399763112996046779

`A209291(n+1)+A349658(n+1)-A349322(n+1)`
-/

namespace A368817.P1399763112996046779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209291 (n + 1) + (A349658 (n + 1) - A349322 (n + 1))

end

end A368817.P1399763112996046779

/-! ## A368817.P12498408490955181334

`A209291(n+1)-(A074400(n+1)/2-A349659(n+1))`
-/

namespace A368817.P12498408490955181334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209291 (n + 1) : ℚ) - ((A074400 (n + 1) : ℚ) / 2 - (A349659 (n + 1) : ℚ))

end

end A368817.P12498408490955181334

/-! ## A368817.P6718790448166403002

`A209291(n+1)-(A127057(A000124(n))-A349659(n+1))`
-/

namespace A368817.P6718790448166403002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209291 (n + 1) - (A127057 (A000124 n).toNat - A349659 (n + 1))

end

end A368817.P6718790448166403002

/-!
# A368818: Number of balanced numbers less than n that do not divide n.

The programs for A368818, the canonical program `A368818.P4834602760063289431` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368818 has offset 1).

The definition of A368818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368818.P1544960682128188355

`A351115(n+1)-A351112(n+1)`
-/

namespace A368818.P1544960682128188355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351115 (n + 1) - A351112 (n + 1)

end

end A368818.P1544960682128188355

namespace A368818

/-- `A351115(n+1)-A351112(n+1)` -/
def P1544960682128188355.Spec : Prop :=
  ∀ n, P1544960682128188355.a n = A368818 (n + 1)

end A368818

/-! ## A368818.P16408555706448934174

`∑[A351114(n+1)]-A351112(n+1)`
-/

namespace A368818.P16408555706448934174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A351112 (n + 1)

end

end A368818.P16408555706448934174

namespace A368818

/-- `∑[A351114(n+1)]-A351112(n+1)` -/
def P16408555706448934174.Spec : Prop :=
  ∀ n, P16408555706448934174.a n = A368818 (n + 1)

end A368818

/-! ## A368818.P4834602760063289431

`A351115(n+1)-∑{d}[n+1, A351114(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A368818

/-- `A351115(n+1)-∑{d}[n+1, A351114(#)]` -/
def P4834602760063289431.Spec : Prop :=
  ∀ n, P4834602760063289431.a n = A368818 (n + 1)

theorem P4834602760063289431.correct : P4834602760063289431.Spec := by
  intro n
  simp only [A368818, Nat.add_sub_cancel]

end A368818

/-!
# A368819: Sum of the balanced numbers less than n that do not divide n.

The programs for A368819, the canonical program `A368819.P7430176587899777853` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368819 has offset 1).

The definition of A368819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368819.P7430176587899777853

`A351116(n+1)-A351113(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A368819

/-- `A351116(n+1)-A351113(n+1)` -/
def P7430176587899777853.Spec : Prop :=
  ∀ n, P7430176587899777853.a n = A368819 (n + 1)

theorem P7430176587899777853.correct : P7430176587899777853.Spec := by
  intro n
  simp only [A368819, Nat.add_sub_cancel]

end A368819

/-!
# A368820: Sum of the squares less than n that do not divide n.

The programs for A368820, the canonical program `A368820.P17874303189853155943` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368820 has offset 1).

The definition of A368820 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368820.P17874303189853155943

`A000330(A000196(n+1))-A035316(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A368820

/-- `A000330(A000196(n+1))-A035316(n+1)` -/
def P17874303189853155943.Spec : Prop :=
  ∀ n, P17874303189853155943.a n = A368820 (n + 1)

theorem P17874303189853155943.correct : P17874303189853155943.Spec := by
  intro n
  simp only [A368820, Nat.add_sub_cancel]

end A368820

/-!
# A368823: a(1) = 1; for n > 1, a(n) = A055231(a(n-1) * n), where A055231(k) is the powerfree part of k.

The programs for A368823, the canonical program `A368823.P14810735027844929690` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368823 has offset 1).

The definition of A368823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368823.P14810735027844929690

`A055231(a(n-1)*(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A368823

/-- `A055231(a(n-1)*(n+1))` -/
def P14810735027844929690.Spec : Prop :=
  ∀ n, P14810735027844929690.a n = A368823 (n + 1)

theorem P14810735027844929690.correct : P14810735027844929690.Spec := by
  intro n
  simp only [A368823, Nat.add_sub_cancel]

end A368823

/-! ## A368823.P17626058565943816906

`A055231((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A368823.P17626058565943816906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055231 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A368823.P17626058565943816906

namespace A368823

/-- `A055231((n+1)*a(n-1))` -/
def P17626058565943816906.Spec : Prop :=
  ∀ n, P17626058565943816906.a n = A368823 (n + 1)

end A368823

/-! ## A368823.P706865560089070715

`A007913(A007948((n+1)*a(n-1)))` with `a(0)=1`
-/

namespace A368823.P706865560089070715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007913 (A007948 ((n + 1 : ℤ) * a (n - 1)).toNat).toNat

end

end A368823.P706865560089070715

namespace A368823

/-- `A007913(A007948((n+1)*a(n-1)))` -/
def P706865560089070715.Spec : Prop :=
  ∀ n, P706865560089070715.a n = A368823 (n + 1)

end A368823

/-! ## A368823.P2177252612359791511

`A007913(lcm(A055204(n+1), A060546(n)))`
-/

namespace A368823.P2177252612359791511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Int.lcm (A055204 (n + 1)) (A060546 n))

end

end A368823.P2177252612359791511

namespace A368823

/-- `A007913(lcm(A055204(n+1), A060546(n)))` -/
def P2177252612359791511.Spec : Prop :=
  ∀ n, P2177252612359791511.a n = A368823 (n + 1)

end A368823

/-! ## A368823.P77631125898209039

`A304328((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A368823.P77631125898209039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304328 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A368823.P77631125898209039

namespace A368823

/-- `A304328((n+1)*a(n-1))` -/
def P77631125898209039.Spec : Prop :=
  ∀ n, P77631125898209039.a n = A368823 (n + 1)

end A368823

/-!
# A368825: a(1) = 1; for n > 1, a(n) = A055231(a(n-1) + n), where A055231(k) is the powerfree part of k.

The programs for A368825, the canonical program `A368825.P9757480026182637684` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368825 has offset 1).

The definition of A368825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368825.P9757480026182637684

`A055231(a(n-1)+n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A368825

/-- `A055231(a(n-1)+n+1)` -/
def P9757480026182637684.Spec : Prop :=
  ∀ n, P9757480026182637684.a n = A368825 (n + 1)

theorem P9757480026182637684.correct : P9757480026182637684.Spec := by
  intro n
  simp only [A368825, Nat.add_sub_cancel]

end A368825

/-! ## A368825.P11219809577865894658

`A329376((a(n-1)+n+1)²)` with `a(0)=1`
-/

namespace A368825.P11219809577865894658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A329376 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A368825.P11219809577865894658

namespace A368825

/-- `A329376((a(n-1)+n+1)²)` -/
def P11219809577865894658.Spec : Prop :=
  ∀ n, P11219809577865894658.a n = A368825 (n + 1)

end A368825

/-! ## A368825.P5402389051619509608

`A360541((a(n-1)+n+1)²)` with `a(0)=1`
-/

namespace A368825.P5402389051619509608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A360541 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A368825.P5402389051619509608

namespace A368825

/-- `A360541((a(n-1)+n+1)²)` -/
def P5402389051619509608.Spec : Prop :=
  ∀ n, P5402389051619509608.a n = A368825 (n + 1)

end A368825

/-!
# A368826: Square array T(n,k) = 3*2^k - n read by ascending antidiagonals.

The programs for A368826, the canonical program `A368826.P11931121506697925634` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368826 has offset 0).

The definition of A368826 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^col(n)-(row(n)-col(n))` (program `A368826.P11931121506697925634`, by `A368826.P11931121506697925634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368826.P11931121506697925634

`3*2^col(n)-(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368826

/-- `3*2^col(n)-(row(n)-col(n))` -/
def P11931121506697925634.Spec : Prop :=
  ∀ n, P11931121506697925634.a n = A368826 n

theorem P11931121506697925634.correct : P11931121506697925634.Spec := by
  intro n
  simp only [A368826]

end A368826

/-! ## A368826.P10775619645456021893

`3*A059268(n)-A025581(n)`
-/

namespace A368826.P10775619645456021893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059268 n - A025581 n

end

end A368826.P10775619645456021893

namespace A368826

/-- `3*A059268(n)-A025581(n)` -/
def P10775619645456021893.Spec : Prop :=
  ∀ n, P10775619645456021893.a n = A368826 n

end A368826

/-! ## A368826.P6137761206224047904

`A007283(A002262(n))-A025581(n)`
-/

namespace A368826.P6137761206224047904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (A002262 n).toNat - A025581 n

end

end A368826.P6137761206224047904

namespace A368826

/-- `A007283(A002262(n))-A025581(n)` -/
def P6137761206224047904.Spec : Prop :=
  ∀ n, P6137761206224047904.a n = A368826 n

end A368826

/-! ## A368826.P5438201040461213776

`A008486(A059268(n))-A025581(n)`
-/

namespace A368826.P5438201040461213776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A059268 n).toNat - A025581 n

end

end A368826.P5438201040461213776

namespace A368826

/-- `A008486(A059268(n))-A025581(n)` -/
def P5438201040461213776.Spec : Prop :=
  ∀ n, P5438201040461213776.a n = A368826 n

end A368826

/-! ## A368826.P9284821562469981919

`A016777(A059268(n))-A004736(n+1)`
-/

namespace A368826.P9284821562469981919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A059268 n).toNat - A004736 (n + 1)

end

end A368826.P9284821562469981919

namespace A368826

/-- `A016777(A059268(n))-A004736(n+1)` -/
def P9284821562469981919.Spec : Prop :=
  ∀ n, P9284821562469981919.a n = A368826 n

end A368826

/-! ## A368826.P1357212001152278910

`A181565(log2(A059268(n)))-A004736(n+1)`
-/

namespace A368826.P1357212001152278910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat - A004736 (n + 1)

end

end A368826.P1357212001152278910

namespace A368826

/-- `A181565(log2(A059268(n)))-A004736(n+1)` -/
def P1357212001152278910.Spec : Prop :=
  ∀ n, P1357212001152278910.a n = A368826 n

end A368826

/-!
# A368827: Indices k where A368825(k) = 1.

The programs for A368827, the canonical program `A368827.P6800860820109245478` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368827 has offset 1).

The definition of A368827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368827.P6800860820109245478

`eq[1, A368825(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A368827

/-- `eq[1, A368825(n+1)]+1` -/
def P6800860820109245478.Spec : Prop :=
  ∀ n, (P6800860820109245478.a n : ℤ) = A368827 (n + 1)

theorem P6800860820109245478.correct : P6800860820109245478.Spec := by
  intro n
  simp only [A368827, Nat.add_sub_cancel]

end A368827

/-! ## A368827.P1485661566495308976

`eq[1, A055231(a(n-1)+n)]` with `a(0)=0`
-/

namespace A368827.P1485661566495308976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A055231 (f2 (n - 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A368827.P1485661566495308976

namespace A368827

/-- `eq[1, A055231(a(n-1)+n)]` -/
def P1485661566495308976.Spec : Prop :=
  ∀ n, (P1485661566495308976.a n : ℤ) = A368827 (n + 1)

end A368827

/-!
# A368830: Number of square unlabeled endofunctions from n points to themselves.

The programs for A368830, there is no canonical definition to state claims against.
-/

/-! ## A368830.P6016670066521344931

`A107686(A299271(n))`
-/

namespace A368830.P6016670066521344931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107686 (A299271 n).toNat

end

end A368830.P6016670066521344931

/-! ## A368830.P8169941989452984379

`A107686(A110334(n+1))`
-/

namespace A368830.P8169941989452984379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107686 (A110334 (n + 1)).toNat

end

end A368830.P8169941989452984379

/-! ## A368830.P13269080589947678336

`A107686(A368461(n+2))`
-/

namespace A368830.P13269080589947678336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107686 (A368461 (n + 2)).toNat

end

end A368830.P13269080589947678336

/-!
# A368832: Integers not of one of the 5 forms p^k, p*q^k, 2*p*q^k, p*q*r or 2*p*q*r with p, q, r distinct primes and k>=0.

The programs for A368832, there is no canonical definition to state claims against.
-/

/-! ## A368832.P3461113157203152269

`filter[A359831(n+1), A379958(#)]`
-/

namespace A368832.P3461113157203152269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A368832.P3461113157203152269

/-! ## A368832.P9687955101196946545

`∩[A320632(n+1), A359831(n+1)]`
-/

namespace A368832.P9687955101196946545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368832.P9687955101196946545

/-! ## A368832.P14318476998394725841

`filter[A350353(n+1), A319710(#)]`
-/

namespace A368832.P14318476998394725841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A368832.P14318476998394725841

/-! ## A368832.P5385929446849111373

`filter[A350353(n+1), A341996(#)]`
-/

namespace A368832.P5385929446849111373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A368832.P5385929446849111373

/-! ## A368832.P1685681534514358059

`filter[A350353(n+1), A353494(#)]`
-/

namespace A368832.P1685681534514358059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A368832.P1685681534514358059

/-!
# A368833: Numbers whose prime indices are not 1, prime, or semiprime.

The programs for A368833, there is no canonical definition to state claims against.
-/

/-! ## A368833.P519927008243676679

`lt[3, A074206(A061395(n+1))]+1`
-/

namespace A368833.P519927008243676679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A061395 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A368833.P519927008243676679

/-! ## A368833.P2769096241830590118

`lt[2, A001222(A061395(3*(n+1)))]+1`
-/

namespace A368833.P2769096241830590118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061395 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A368833.P2769096241830590118

/-! ## A368833.P12679661872269483122

`lt[2, A340691(n+1)]+1`
-/

namespace A368833.P12679661872269483122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340691 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A368833.P12679661872269483122

/-! ## A368833.P12781230340234669681

`lt[2, A340691(A028310(n))]`
-/

namespace A368833.P12781230340234669681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340691 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A368833.P12781230340234669681

/-! ## A368833.P17686488734073065039

`A153152(lt[2, A340691(n+1)])`
-/

namespace A368833.P17686488734073065039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A368833.P17686488734073065039

/-!
# A368834: Number of unlabeled simple graphs covering n vertices such that it is possible to choose a different vertex from each edge (choosable).

The programs for A368834, there is no canonical definition to state claims against.
-/

/-! ## A368834.P5219735545867509433

`A002494(n)-A369202(n)`
-/

namespace A368834.P5219735545867509433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n - A369202 n

end

end A368834.P5219735545867509433

/-! ## A368834.P17176811224848213887

`A217653(∑[n])-A369202(n)`
-/

namespace A368834.P17176811224848213887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217653 (∑ j ∈ Finset.range (n + 1), f1 j) - A369202 n

end

end A368834.P17176811224848213887

/-! ## A368834.P6763713338077490366

`A324693(A028310(n))+A261919(n)-A369202(n)`
-/

namespace A368834.P6763713338077490366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324693 (A028310 n).toNat + A261919 n - A369202 n

end

end A368834.P6763713338077490366

/-! ## A368834.P390779020453980639

`A327075(n)+A001349(n)%A000088(n)-A369202(n)`
-/

namespace A368834.P390779020453980639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327075 n + Int.tmod (A001349 n) (A000088 n) - A369202 n

end

end A368834.P390779020453980639

/-! ## A368834.P10695934101810624202

`A273873(n+1)-A362611(A000667(n))`
-/

namespace A368834.P10695934101810624202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273873 (n + 1) - A362611 (A000667 n).toNat

end

end A368834.P10695934101810624202

/-!
# A368835: Number of unlabeled n-edge loop-graphs with at most n vertices such that it is not possible to choose a different vertex from each edge.

The programs for A368835, there is no canonical definition to state claims against.
-/

/-! ## A368835.P14309175755090924057

`A368598(n)-A368984(n)`
-/

namespace A368835.P14309175755090924057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368598 n - A368984 n

end

end A368835.P14309175755090924057

/-! ## A368835.P18005208731200145883

`xor(A323922(n+1), A323927(A323938(n+2)))`
-/

namespace A368835.P18005208731200145883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A323922 (n + 1)) (A323927 (A323938 (n + 2)).toNat)

end

end A368835.P18005208731200145883

/-!
# A368837: a(n) = n! * (n+2)! * Sum_{k=0..n} 1/(k! * (k+2)!).

The programs for A368837, the canonical program `A368837.P3908343408486025885` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368837 has offset 0).

The definition of A368837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368837.P3908343408486025885

`n*(n+2)*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368837

/-- `n*(n+2)*a(n-1)+1` -/
def P3908343408486025885.Spec : Prop :=
  ∀ n, (P3908343408486025885.a n : ℤ) = A368837 n

theorem P3908343408486025885.correct : P3908343408486025885.Spec := by
  intro n
  simp only [A368837]

end A368837

/-! ## A368837.P15756536144542161796

`lcm((n+1)², a(n-1))+1-a(n-1)` with `a(0)=1`
-/

namespace A368837.P15756536144542161796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) (a (n - 1)) : ℤ) + (1 - a (n - 1))

end

end A368837.P15756536144542161796

namespace A368837

/-- `lcm((n+1)², a(n-1))+1-a(n-1)` -/
def P15756536144542161796.Spec : Prop :=
  ∀ n, P15756536144542161796.a n = A368837 n

end A368837

/-! ## A368837.P8102727801500906721

`n*a(xor(-1, -n))*A220466(2*n+3)+1` with `a(0)=1`
-/

namespace A368837.P8102727801500906721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (Int.xor (-1) (-(n : ℤ))).toNat * A220466 (2 * n + 3) + 1

end

end A368837.P8102727801500906721

namespace A368837

/-- `n*a(xor(-1, -n))*A220466(2*n+3)+1` -/
def P8102727801500906721.Spec : Prop :=
  ∀ n, P8102727801500906721.a n = A368837 n

end A368837

/-! ## A368837.P8788783720322305734

`A099597(A001844(n+1))`
-/

namespace A368837.P8788783720322305734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099597 (A001844 (n + 1)).toNat

end

end A368837.P8788783720322305734

namespace A368837

/-- `A099597(A001844(n+1))` -/
def P8788783720322305734.Spec : Prop :=
  ∀ n, P8788783720322305734.a n = A368837 n

end A368837

/-! ## A368837.P11150666956337661979

`A099597(A099776(n+1))`
-/

namespace A368837.P11150666956337661979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099597 (A099776 (n + 1)).toNat

end

end A368837.P11150666956337661979

namespace A368837

/-- `A099597(A099776(n+1))` -/
def P11150666956337661979.Spec : Prop :=
  ∀ n, P11150666956337661979.a n = A368837 n

end A368837

/-!
# A368838: a(n) = n! * (n+3)! * Sum_{k=0..n} 1/(k! * (k+3)!).

The programs for A368838, the canonical program `A368838.P6846876981184412970` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368838 has offset 0).

The definition of A368838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368838.P6846876981184412970

`n*(n+3)*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368838

/-- `n*(n+3)*a(n-1)+1` -/
def P6846876981184412970.Spec : Prop :=
  ∀ n, (P6846876981184412970.a n : ℤ) = A368838 n

theorem P6846876981184412970.correct : P6846876981184412970.Spec := by
  intro n
  simp only [A368838]

end A368838

/-! ## A368838.P10158335973980023236

`a(n-1)*A028552(n)+1` with `a(0)=1`
-/

namespace A368838.P10158335973980023236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A028552 n + 1

end

end A368838.P10158335973980023236

namespace A368838

/-- `a(n-1)*A028552(n)+1` -/
def P10158335973980023236.Spec : Prop :=
  ∀ n, P10158335973980023236.a n = A368838 n

end A368838

/-! ## A368838.P1098905779087770314

`A099597(A054000(n+2))`
-/

namespace A368838.P1098905779087770314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099597 (A054000 (n + 2)).toNat

end

end A368838.P1098905779087770314

namespace A368838

/-- `A099597(A054000(n+2))` -/
def P1098905779087770314.Spec : Prop :=
  ∀ n, P1098905779087770314.a n = A368838 n

end A368838

/-! ## A368838.P5103345359968829330

`A099597(A058331(n+2))`
-/

namespace A368838.P5103345359968829330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099597 (A058331 (n + 2)).toNat

end

end A368838.P5103345359968829330

namespace A368838

/-- `A099597(A058331(n+2))` -/
def P5103345359968829330.Spec : Prop :=
  ∀ n, P5103345359968829330.a n = A368838 n

end A368838

/-!
# A368839: a(n) = n! * (n+1)! * (n+2)! * Sum_{k=0..n} 1/(k! * (k+1)! * (k+2)!).

The programs for A368839, the canonical program `A368839.P4025413217853109976` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368839 has offset 0).

The definition of A368839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368839.P4025413217853109976

`n*(n+1)*(n+2)*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368839

/-- `n*(n+1)*(n+2)*a(n-1)+1` -/
def P4025413217853109976.Spec : Prop :=
  ∀ n, (P4025413217853109976.a n : ℤ) = A368839 n

theorem P4025413217853109976.correct : P4025413217853109976.Spec := by
  intro n
  simp only [A368839]

end A368839

/-! ## A368839.P9098196275471656892

`6*a(n-1)*∑[∑[n]]+1` with `a(0)=1`
-/

namespace A368839.P9098196275471656892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * (a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A368839.P9098196275471656892

namespace A368839

/-- `6*a(n-1)*∑[∑[n]]+1` -/
def P9098196275471656892.Spec : Prop :=
  ∀ n, (P9098196275471656892.a n : ℤ) = A368839 n

end A368839

/-! ## A368839.P7091922683429868756

`6*a(n-1)*A000292(n)+1` with `a(0)=1`
-/

namespace A368839.P7091922683429868756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) * A000292 n + 1

end

end A368839.P7091922683429868756

namespace A368839

/-- `6*a(n-1)*A000292(n)+1` -/
def P7091922683429868756.Spec : Prop :=
  ∀ n, P7091922683429868756.a n = A368839 n

end A368839

/-! ## A368839.P17468566901152496508

`n*a(n-1)*A002378(n+1)+1` with `a(0)=1`
-/

namespace A368839.P17468566901152496508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) * A002378 (n + 1) + 1

end

end A368839.P17468566901152496508

namespace A368839

/-- `n*a(n-1)*A002378(n+1)+1` -/
def P17468566901152496508.Spec : Prop :=
  ∀ n, P17468566901152496508.a n = A368839 n

end A368839

/-!
# A368840: a(n) = n! * (n+1)! * (n+2)! * Sum_{k=0..n} 1/(6^(n-k) * k! * (k+1)! * (k+2)!).

The programs for A368840, the canonical program `A368840.P13397673731770245600` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368840 has offset 0).

The definition of A368840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368840.P13397673731770245600

`C(n+2, 3)*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368840

/-- `C(n+2, 3)*a(n-1)+1` -/
def P13397673731770245600.Spec : Prop :=
  ∀ n, (P13397673731770245600.a n : ℤ) = A368840 n

theorem P13397673731770245600.correct : P13397673731770245600.Spec := by
  intro n
  simp only [A368840]

end A368840

/-! ## A368840.P11937575803110749550

`a(n-1)*∑[∑[n]]+1` with `a(0)=1`
-/

namespace A368840.P11937575803110749550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A368840.P11937575803110749550

namespace A368840

/-- `a(n-1)*∑[∑[n]]+1` -/
def P11937575803110749550.Spec : Prop :=
  ∀ n, (P11937575803110749550.a n : ℤ) = A368840 n

end A368840

/-! ## A368840.P6243102176726844587

`lcm(n+1, n*(n+2))/6*a(n-1)+1` with `a(0)=1`
-/

namespace A368840.P6243102176726844587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.lcm (n + 1) (n * (n + 2)) : ℚ) / 6 * a (n - 1) + 1

end

end A368840.P6243102176726844587

namespace A368840

/-- `lcm(n+1, n*(n+2))/6*a(n-1)+1` -/
def P6243102176726844587.Spec : Prop :=
  ∀ n, P6243102176726844587.a n = (A368840 n : ℚ)

end A368840

/-! ## A368840.P8015931458240891286

`(A000330(n)+A000217(n))/2*a(n-1)+1` with `a(0)=1`
-/

namespace A368840.P8015931458240891286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A000330 n + A000217 n : ℚ) / 2 * a (n - 1) + 1

end

end A368840.P8015931458240891286

namespace A368840

/-- `(A000330(n)+A000217(n))/2*a(n-1)+1` -/
def P8015931458240891286.Spec : Prop :=
  ∀ n, P8015931458240891286.a n = (A368840 n : ℚ)

end A368840

/-! ## A368840.P15716672502290856571

`(A000332(n+3)-A000332(n+2))*a(n-1)+1` with `a(0)=1`
-/

namespace A368840.P15716672502290856571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000332 (n + 3) - A000332 (n + 2)) * a (n - 1) + 1

end

end A368840.P15716672502290856571

namespace A368840

/-- `(A000332(n+3)-A000332(n+2))*a(n-1)+1` -/
def P15716672502290856571.Spec : Prop :=
  ∀ n, P15716672502290856571.a n = A368840 n

end A368840

/-!
# A368841: Nonnegative integers whose binary expansions (without leading zeros) have no three equally spaced equal digits.

The programs for A368841, there is no canonical definition to state claims against.
-/

/-! ## A368841.P10605292789700793413

`eq[0, A368842(n)]`
-/

namespace A368841.P10605292789700793413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A368841.P10605292789700793413

/-! ## A368841.P14031825069126301963

`lt[A368857(n), 3]`
-/

namespace A368841.P14031825069126301963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368857 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A368841.P14031825069126301963

/-! ## A368841.P11790062290469208912

`eq[A046698(n), A368857(n)]`
-/

namespace A368841.P11790062290469208912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368857 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368841.P11790062290469208912

/-! ## A368841.P794354252613860142

`lt[A368842(n), A033999(n)²]`
-/

namespace A368841.P794354252613860142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368841.P794354252613860142

/-! ## A368841.P4412906503169479961

`lt[A046698(n)*A368842(n), 1]`
-/

namespace A368841.P4412906503169479961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 n * A368842 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A368841.P4412906503169479961

/-!
# A368842: a(n) gives the number of triples of equally spaced equal digits in the binary expansion of n (without leading zeros).

The programs for A368842, there is no canonical definition to state claims against.
-/

/-! ## A368842.P9274972090143930058

`A368843(n)+A368844(n)`
-/

namespace A368842.P9274972090143930058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368843 n + A368844 n

end

end A368842.P9274972090143930058

/-! ## A368842.P11765170082029991136

`A368843(A035327(n))+A368843(n)`
-/

namespace A368842.P11765170082029991136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368843 (A035327 n).toNat + A368843 n

end

end A368842.P11765170082029991136

/-! ## A368842.P12223471834229219819

`A368843(A080079(n+1))+A368843(n)`
-/

namespace A368842.P12223471834229219819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368843 (A080079 (n + 1)).toNat + A368843 n

end

end A368842.P12223471834229219819

/-! ## A368842.P7718027450321597134

`A368843(A036044(n)/A046698(3*n+1))+A368843(n)`
-/

namespace A368842.P7718027450321597134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368843 (SequenceMachineLib.roundAway ((A036044 n : ℚ) / (A046698 (3 * n + 1) : ℚ))).toNat + A368843 n

end

end A368842.P7718027450321597134

/-! ## A368842.P1781312266173490687

`A368843(A036044(n))+A368843(n)`
-/

namespace A368842.P1781312266173490687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368843 (A036044 n).toNat + A368843 n

end

end A368842.P1781312266173490687

/-!
# A368843: a(n) gives the number of triples of equally spaced 1's in the binary expansion of n.

The programs for A368843, there is no canonical definition to state claims against.
-/

/-! ## A368843.P2390156246974629076

`A368842(n)-A368844(n)`
-/

namespace A368843.P2390156246974629076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368842 n - A368844 n

end

end A368843.P2390156246974629076

/-! ## A368843.P9076078055225304772

`A368844(A354182(n+1)-A368844(2*n+1))`
-/

namespace A368843.P9076078055225304772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368844 (A354182 (n + 1) - A368844 (2 * n + 1)).toNat

end

end A368843.P9076078055225304772

/-! ## A368843.P306287700214647194

`A384493(n+1)%A140194(n)`
-/

namespace A368843.P306287700214647194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384493 (n + 1)) (A140194 n)

end

end A368843.P306287700214647194

/-! ## A368843.P11200065126331661690

`A120937(n)%A140194(n)`
-/

namespace A368843.P11200065126331661690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120937 n) (A140194 n)

end

end A368843.P11200065126331661690

/-! ## A368843.P15328863082318379354

`A133490(n)%A140194(n)`
-/

namespace A368843.P15328863082318379354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133490 n) (A140194 n)

end

end A368843.P15328863082318379354

/-!
# A368844: a(n) gives the number of triples of equally spaced 0's in the binary expansion of n (without leading zeros).

The programs for A368844, there is no canonical definition to state claims against.
-/

/-! ## A368844.P16574697032107629344

`A368843(A035327(n))`
-/

namespace A368844.P16574697032107629344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368843 (A035327 n).toNat

end

end A368844.P16574697032107629344

/-! ## A368844.P8483632542930243642

`A368843(A080079(n+1))`
-/

namespace A368844.P8483632542930243642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368843 (A080079 (n + 1)).toNat

end

end A368844.P8483632542930243642

/-! ## A368844.P1323691136790167681

`A368843(n-A006257(n))`
-/

namespace A368844.P1323691136790167681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368843 ((n : ℤ) - A006257 n).toNat

end

end A368844.P1323691136790167681

/-! ## A368844.P7538384543649654608

`A368842(n)-A368843(n)`
-/

namespace A368844.P7538384543649654608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368842 n - A368843 n

end

end A368844.P7538384543649654608

/-! ## A368844.P16242345331387463797

`A368843(A036044(n)/A046698(3*n+1))`
-/

namespace A368844.P16242345331387463797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368843 (SequenceMachineLib.roundAway ((A036044 n : ℚ) / (A046698 (3 * n + 1) : ℚ))).toNat

end

end A368844.P16242345331387463797

/-! ## A368844.P16441728071846790606

`A368843(A036044(n))`
-/

namespace A368844.P16441728071846790606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368843 (A036044 n).toNat

end

end A368844.P16441728071846790606

/-!
# A368847: Triangle read by rows: T(n, k) = numerator(M(n, k)) where M is the inverse matrix of A368846.

The programs for A368847, there is no canonical definition to state claims against.
-/

/-! ## A368847.P12936304032333968617

`A326029(A390158(n+1))`
-/

namespace A368847.P12936304032333968617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326029 (A390158 (n + 1)).toNat

end

end A368847.P12936304032333968617

/-! ## A368847.P6899104001570113172

`and(A068723(n), A238414(n+1))`
-/

namespace A368847.P6899104001570113172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068723 n) (A238414 (n + 1))

end

end A368847.P6899104001570113172

/-! ## A368847.P11468724086129344120

`and(A096636(n), A238414(n+1))`
-/

namespace A368847.P11468724086129344120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096636 n) (A238414 (n + 1))

end

end A368847.P11468724086129344120

/-! ## A368847.P15603332792706802500

`and(A096638(n), A238414(n+1))`
-/

namespace A368847.P15603332792706802500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096638 n) (A238414 (n + 1))

end

end A368847.P15603332792706802500

/-! ## A368847.P1909268775863768026

`and(A112567(n), A238414(n+1))`
-/

namespace A368847.P1909268775863768026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112567 n) (A238414 (n + 1))

end

end A368847.P1909268775863768026

/-!
# A368848: Triangle read by rows: T(n, k) = denominator(M(n, k)) where M is the inverse matrix of A368846.

The programs for A368848, there is no canonical definition to state claims against.
-/

/-! ## A368848.P12852896543166887908

`A008480(xor(floor((n+π)²), A335921(n)))`
-/

namespace A368848.P12852896543166887908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (Int.xor ⌊((n : ℝ) + Real.pi) ^ 2⌋ (A335921 n)).toNat

end

end A368848.P12852896543166887908

/-! ## A368848.P13803100572590589857

`A046523(C(A308951(n), A122890(n)))`
-/

namespace A368848.P13803100572590589857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Nat.choose (A308951 n).toNat (A122890 n).toNat)

end

end A368848.P13803100572590589857

/-! ## A368848.P1127131736896088115

`A104695(A104735(n+1))^A137252(n)`
-/

namespace A368848.P1127131736896088115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104695 (A104735 (n + 1)).toNat : ℚ) ^ (A137252 n : ℤ)

end

end A368848.P1127131736896088115

/-! ## A368848.P15288804465149386354

`A349442(A102145(n+1)^A227188(n))`
-/

namespace A368848.P15288804465149386354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349442 (SequenceMachineLib.roundAway ((A102145 (n + 1) : ℚ) ^ (A227188 n : ℤ))).toNat

end

end A368848.P15288804465149386354

/-! ## A368848.P12140141345966138022

`A090748(C(A377468(n+1), A054923(n)))`
-/

namespace A368848.P12140141345966138022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (Nat.choose (A377468 (n + 1)).toNat (A054923 n).toNat)

end

end A368848.P12140141345966138022

/-!
# A368849: Triangle read by rows: T(n, k) = binomial(n, k - 1)*(k - 1)^(k - 1)*(n - k)*(n - k + 1)^(n - k).

The programs for A368849, there is no canonical definition to state claims against.
-/

/-! ## A368849.P13513945547803772948

`2*A368982(n)`
-/

namespace A368849.P13513945547803772948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A368982 n

end

end A368849.P13513945547803772948

/-! ## A368849.P14617258220465533110

`∑[char[∑[n+1]]]*A369016(n)`
-/

namespace A368849.P14617258220465533110
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A369016 n

end

end A368849.P14617258220465533110

/-! ## A368849.P13577845946874906349

`A369018(n)-A369019(n)`
-/

namespace A368849.P13577845946874906349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369018 n - A369019 n

end

end A368849.P13577845946874906349

/-! ## A368849.P8356469688522560139

`2*(A369072(n)-A369025(n))`
-/

namespace A368849.P8356469688522560139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A369072 n - A369025 n)

end

end A368849.P8356469688522560139

/-! ## A368849.P5298287822589932163

`A368982(A028310(n))+A368982(n)`
-/

namespace A368849.P5298287822589932163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368982 (A028310 n).toNat + A368982 n

end

end A368849.P5298287822589932163

/-!
# A368850: Primes that are equal to the sum of the first k proper prime powers for some k.

The programs for A368850, there is no canonical definition to state claims against.
-/

/-! ## A368850.P13326696974165654834

`p?[∑[A134612(n+1)]]`
-/

namespace A368850.P13326696974165654834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A368850.P13326696974165654834

/-! ## A368850.P7559511970662044234

`p?[∑[A025475(n+2)]]`
-/

namespace A368850.P7559511970662044234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A368850.P7559511970662044234

/-!
# A368852: a(n) = (n!)^3 * Sum_{k=0..n} (-1)^k/(k!)^3.

The programs for A368852, the canonical program `A368852.P16476521664862754591` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368852 has offset 0).

The definition of A368852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368852.P16476521664862754591

`n^3*a(n-1)+(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368852

/-- `n^3*a(n-1)+(-1)^n` -/
def P16476521664862754591.Spec : Prop :=
  ∀ n, P16476521664862754591.a n = A368852 n

theorem P16476521664862754591.correct : P16476521664862754591.Spec := by
  intro n
  simp only [A368852]

end A368852

/-! ## A368852.P12152797597934011009

`xor(1, n^3*a(n-1))` with `a(0)=1`
-/

namespace A368852.P12152797597934011009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (n ^ 3 * a (n - 1))

end

end A368852.P12152797597934011009

namespace A368852

/-- `xor(1, n^3*a(n-1))` -/
def P12152797597934011009.Spec : Prop :=
  ∀ n, (P12152797597934011009.a n : ℤ) = A368852 n

end A368852

/-! ## A368852.P2530522830995517112

`xor(1, n*a(n-1)*n²)` with `a(0)=1`
-/

namespace A368852.P2530522830995517112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (n * a (n - 1) * n ^ 2)

end

end A368852.P2530522830995517112

namespace A368852

/-- `xor(1, n*a(n-1)*n²)` -/
def P2530522830995517112.Spec : Prop :=
  ∀ n, (P2530522830995517112.a n : ℤ) = A368852 n

end A368852

/-! ## A368852.P1990313199341770969

`xor(1, n*n*n*a(n-1))` with `a(0)=1`
-/

namespace A368852.P1990313199341770969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (n * (n * (n * a (n - 1))))

end

end A368852.P1990313199341770969

namespace A368852

/-- `xor(1, n*n*n*a(n-1))` -/
def P1990313199341770969.Spec : Prop :=
  ∀ n, (P1990313199341770969.a n : ℤ) = A368852 n

end A368852

/-! ## A368852.P17847213010232688632

`xor(1, n*n*abs(n*a((2*n)%(n+1))))` with `a(0)=1`
-/

namespace A368852.P17847213010232688632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (n * (n * (n * a (2 * n % (n + 1)))))

end

end A368852.P17847213010232688632

namespace A368852

/-- `xor(1, n*n*abs(n*a((2*n)%(n+1))))` -/
def P17847213010232688632.Spec : Prop :=
  ∀ n, (P17847213010232688632.a n : ℤ) = A368852 n

end A368852

/-!
# A368853: a(n) = n! * (n+1)! * Sum_{k=0..n} (-1)^k/(k! * (k+1)!).

The programs for A368853, the canonical program `A368853.P5173390054251686768` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368853 has offset 0).

The definition of A368853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368853.P5173390054251686768

`n*(n+1)*a(n-1)+(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368853

/-- `n*(n+1)*a(n-1)+(-1)^n` -/
def P5173390054251686768.Spec : Prop :=
  ∀ n, P5173390054251686768.a n = A368853 n

theorem P5173390054251686768.correct : P5173390054251686768.Spec := by
  intro n
  simp only [A368853]

end A368853

/-! ## A368853.P17747540301139931927

`(-1)^n+(n²+n)*a(n-1)` with `a(0)=1`
-/

namespace A368853.P17747540301139931927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n + (n ^ 2 + n : ℤ) * a (n - 1)

end

end A368853.P17747540301139931927

namespace A368853

/-- `(-1)^n+(n²+n)*a(n-1)` -/
def P17747540301139931927.Spec : Prop :=
  ∀ n, P17747540301139931927.a n = A368853 n

theorem P17747540301139931927.correct : P17747540301139931927.Spec := by
  intro n
  simp only [A368853, Nat.add_sub_cancel, A368853.P17747540301139931927.a, A368853.P5173390054251686768.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368853

/-! ## A368853.P4768723441456337377

`xor(1, n*a(n-1))+a(n-1)/n^(-2)` with `a(0)=1, a(1)=1`
-/

namespace A368853.P4768723441456337377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway ((n : ℚ) * a (n - 1))) : ℚ) + a (n - 1) / (n : ℚ) ^ (-2 : ℤ)

end

end A368853.P4768723441456337377

namespace A368853

/-- `xor(1, n*a(n-1))+a(n-1)/n^(-2)` -/
def P4768723441456337377.Spec : Prop :=
  ∀ n, P4768723441456337377.a n = (A368853 n : ℚ)

end A368853

/-! ## A368853.P1489111909610030857

`A033999(n)+lcm(n²+n, a(n-1))` with `a(0)=1`
-/

namespace A368853.P1489111909610030857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033999 n + (Int.lcm (n ^ 2 + n : ℤ) (a (n - 1)) : ℤ)

end

end A368853.P1489111909610030857

namespace A368853

/-- `A033999(n)+lcm(n²+n, a(n-1))` -/
def P1489111909610030857.Spec : Prop :=
  ∀ n, P1489111909610030857.a n = A368853 n

end A368853

/-!
# A368854: a(n) = n! * (n+1)! * (n+2)! * Sum_{k=0..n} (-1)^k/(k! * (k+1)! * (k+2)!).

The programs for A368854, the canonical program `A368854.P14947056475170390351` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368854 has offset 0).

The definition of A368854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368854.P14947056475170390351

`n*(n+1)*(n+2)*a(n-1)+(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368854

/-- `n*(n+1)*(n+2)*a(n-1)+(-1)^n` -/
def P14947056475170390351.Spec : Prop :=
  ∀ n, P14947056475170390351.a n = A368854 n

theorem P14947056475170390351.correct : P14947056475170390351.Spec := by
  intro n
  simp only [A368854]

end A368854

/-!
# A368855: Index of the first occurrence of n in A076982.

The programs for A368855, there is no canonical definition to state claims against.
-/

/-! ## A368855.P8757838033733068577

`(sqrt(8*A076983(n+1)+1)-1)/2`
-/

namespace A368855.P8757838033733068577
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (8 * A076983 (n + 1) + 1 : ℝ) - 1) / 2

end

end A368855.P8757838033733068577

/-! ## A368855.P7907600602563163295

`floor(sqrt(2*A076983(n+1)))`
-/

namespace A368855.P7907600602563163295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A076983 (n + 1))

end

end A368855.P7907600602563163295

/-! ## A368855.P17469346060081777611

`A080098(A076983(n+1))`
-/

namespace A368855.P17469346060081777611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A076983 (n + 1)).toNat

end

end A368855.P17469346060081777611

/-! ## A368855.P14191183353806309810

`A338643(A076983(n+1)+1)`
-/

namespace A368855.P14191183353806309810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338643 (A076983 (n + 1) + 1).toNat

end

end A368855.P14191183353806309810

/-! ## A368855.P18061342735605120180

`A048720(A076983(n+1)+1)+1`
-/

namespace A368855.P18061342735605120180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (A076983 (n + 1) + 1).toNat + 1

end

end A368855.P18061342735605120180

/-!
# A368859: Number of beta-stable isotopes of the n-th element.

The programs for A368859, there is no canonical definition to state claims against.
-/

/-! ## A368859.P12946816682736714122

`A139438(or(62, floor(2^(n-1))))`
-/

namespace A368859.P12946816682736714122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139438 (Int.lor 62 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋).toNat

end

end A368859.P12946816682736714122

/-! ## A368859.P10489118478330982269

`A035263(A229072(n+1))+A000034(n)`
-/

namespace A368859.P10489118478330982269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A229072 (n + 1)).toNat + A000034 n

end

end A368859.P10489118478330982269

/-! ## A368859.P15321303150467770510

`A380560(2*n+5)+A010060(A000225(n))`
-/

namespace A368859.P15321303150467770510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380560 (2 * n + 5) + A010060 (A000225 n).toNat

end

end A368859.P15321303150467770510

/-! ## A368859.P4956735185358658160

`A001221(A334556(2*n+5)-A336485(2*n+3))`
-/

namespace A368859.P4956735185358658160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A334556 (2 * n + 5) - A336485 (2 * n + 3)).toNat

end

end A368859.P4956735185358658160

/-! ## A368859.P12664079705525921673

`A036582(lcm(n, A358154(n+1)))`
-/

namespace A368859.P12664079705525921673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036582 (Int.lcm (n : ℤ) (A358154 (n + 1)))

end

end A368859.P12664079705525921673

/-!
# A368860: Number of beta-stable isotones of neutron number n.

The programs for A368860, there is no canonical definition to state claims against.
-/

/-! ## A368860.P5445440106957536117

`A237591(gcd(10^n-9^n+1, A096347(n+2)))`
-/

namespace A368860.P5445440106957536117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (Int.gcd ((10 ^ n : ℤ) - (9 ^ n : ℤ) + 1) (A096347 (n + 2)))

end

end A368860.P5445440106957536117

/-! ## A368860.P13372105107089820019

`gcd(A000010(3*n+1), A001221(A049940(n+1)))`
-/

namespace A368860.P13372105107089820019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (3 * n + 1)) (A001221 (A049940 (n + 1)).toNat)

end

end A368860.P13372105107089820019

/-! ## A368860.P1751141303834569347

`A115573(A000069(3*n+5)-1)`
-/

namespace A368860.P1751141303834569347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115573 (A000069 (3 * n + 5) - 1).toNat

end

end A368860.P1751141303834569347

/-! ## A368860.P8937598865075563677

`A156352(A270643(n+1)*A324695(n+1))`
-/

namespace A368860.P8937598865075563677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156352 (A270643 (n + 1) * A324695 (n + 1)).toNat

end

end A368860.P8937598865075563677

/-! ## A368860.P10726983161365440197

`A307610(xor(A193824(2*(n+2)), A300982(3*n+2)))`
-/

namespace A368860.P10726983161365440197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307610 (Int.xor (A193824 (2 * (n + 2))) (A300982 (3 * n + 2))).toNat

end

end A368860.P10726983161365440197

/-!
# A368861: Even mass numbers with only one beta-stable isobar.

The programs for A368861, there is no canonical definition to state claims against.
-/

/-! ## A368861.P14442958772415140735

`A005843(lt[A089505(n+1), 3^n])`
-/

namespace A368861.P14442958772415140735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089505 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A368861.P14442958772415140735

/-! ## A368861.P1061835282980250932

`∑[A045818(Δ[A236912(n+2)])]`
-/

namespace A368861.P1061835282980250932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236912 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045818 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368861.P1061835282980250932

/-! ## A368861.P11436509867098976584

`lt[A156667(A005044(n)), A275638(n)]`
-/

namespace A368861.P11436509867098976584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156667 (A005044 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275638 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368861.P11436509867098976584

/-! ## A368861.P9776673239746315556

`lt[A000041(n), A003598(A003602(n+1))]`
-/

namespace A368861.P9776673239746315556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003598 (A003602 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368861.P9776673239746315556

/-! ## A368861.P13198481025622413792

`lt[A236915(n+12), A035363(A081605(n+1))]`
-/

namespace A368861.P13198481025622413792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236915 (n + 12)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A081605 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368861.P13198481025622413792

/-!
# A368867: Number of labeled mappings from n points to themselves with unique square root (endofunctions).

The programs for A368867, there is no canonical definition to state claims against.
-/

/-! ## A368867.P3612382800436195916

`∑[A240729(A372474(n)+1)]-n²`
-/

namespace A368867.P3612382800436195916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240729 (A372474 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A368867.P3612382800436195916

/-! ## A368867.P8615269506716113509

`A079878(A006125(n)/∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A368867.P8615269506716113509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079878 (SequenceMachineLib.roundAway ((A006125 n : ℚ) / (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ))).toNat

end

end A368867.P8615269506716113509

/-!
# A368869: Number of partitions of n into prime parts not greater than sqrt(n).

The programs for A368869, there is no canonical definition to state claims against.
-/

/-! ## A368869.P8728256347739434075

`A369219(n)%A002407(A088956(n+4))`
-/

namespace A368869.P8728256347739434075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369219 n) (A002407 (A088956 (n + 4)).toNat)

end

end A368869.P8728256347739434075

/-! ## A368869.P15229938026852675718

`A326702(and(A369221(n), A385779(n+1)))`
-/

namespace A368869.P15229938026852675718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (Int.land (A369221 n) (A385779 (n + 1))).toNat

end

end A368869.P15229938026852675718

/-!
# A368870: Number of partitions of n into nonprime parts not greater than sqrt(n).

The programs for A368870, there is no canonical definition to state claims against.
-/

/-! ## A368870.P18317461374281589621

`A368331(A111575(n))`
-/

namespace A368870.P18317461374281589621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368331 (A111575 n).toNat

end

end A368870.P18317461374281589621

/-! ## A368870.P7361795841976526862

`A369340(n)%A002764(n)`
-/

namespace A368870.P7361795841976526862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369340 n) (A002764 n)

end

end A368870.P7361795841976526862

/-! ## A368870.P3510978071130663804

`A369340(n%A369345(n))`
-/

namespace A368870.P3510978071130663804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369340 (Int.tmod (n : ℤ) (A369345 n)).toNat

end

end A368870.P3510978071130663804

/-! ## A368870.P6171175030405619706

`and(A359082(n+1), A369340(n))`
-/

namespace A368870.P6171175030405619706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359082 (n + 1)) (A369340 n)

end

end A368870.P6171175030405619706

/-! ## A368870.P6147928842098064152

`and(A145038(n+1), A369340(n))`
-/

namespace A368870.P6147928842098064152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145038 (n + 1)) (A369340 n)

end

end A368870.P6147928842098064152

/-!
# A368871: Number of compositions (ordered partitions) of n into odd parts not greater than sqrt(n).

The programs for A368871, there is no canonical definition to state claims against.
-/

/-! ## A368871.P3584678091098505876

`A369341(A351831(n+1))`
-/

namespace A368871.P3584678091098505876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369341 (A351831 (n + 1)).toNat

end

end A368871.P3584678091098505876

/-! ## A368871.P5176956784375951903

`A000930(n%A316474(n+1))`
-/

namespace A368871.P5176956784375951903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (Int.tmod (n : ℤ) (A316474 (n + 1))).toNat

end

end A368871.P5176956784375951903

/-! ## A368871.P2855739878676938252

`A000930(n)^A328457(A268199(n))`
-/

namespace A368871.P2855739878676938252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000930 n : ℚ) ^ (A328457 (A268199 n).toNat : ℤ)

end

end A368871.P2855739878676938252

/-! ## A368871.P1854079305580213570

`A369341(n)%A279611(A369331(n+1))`
-/

namespace A368871.P1854079305580213570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369341 n) (A279611 (A369331 (n + 1)).toNat)

end

end A368871.P1854079305580213570

/-! ## A368871.P7882604616745608026

`A154470(A369341(n))`
-/

namespace A368871.P7882604616745608026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A369341 n).toNat

end

end A368871.P7882604616745608026

/-!
# A368872: Number of compositions (ordered partitions) of n into prime parts not greater than sqrt(n).

The programs for A368872, there is no canonical definition to state claims against.
-/

/-! ## A368872.P14826744138920370528

`and(A359082(A368870(2*(n+1))), A369221(n))`
-/

namespace A368872.P14826744138920370528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359082 (A368870 (2 * (n + 1))).toNat) (A369221 n)

end

end A368872.P14826744138920370528

/-! ## A368872.P4566181138383764558

`A369221(A055645(n))`
-/

namespace A368872.P4566181138383764558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369221 (A055645 n).toNat

end

end A368872.P4566181138383764558

/-! ## A368872.P12916852519205914807

`A072088(A369221(n))`
-/

namespace A368872.P12916852519205914807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A369221 n).toNat

end

end A368872.P12916852519205914807

/-! ## A368872.P15179542492787709360

`A369221(A341709(n))`
-/

namespace A368872.P15179542492787709360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369221 (A341709 n).toNat

end

end A368872.P15179542492787709360

/-! ## A368872.P6059082017652807501

`A369221(A262545(n+1))`
-/

namespace A368872.P6059082017652807501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369221 (A262545 (n + 1)).toNat

end

end A368872.P6059082017652807501

/-!
# A368873: Number of compositions (ordered partitions) of n into nonprime parts not greater than sqrt(n).

The programs for A368873, there is no canonical definition to state claims against.
-/

/-! ## A368873.P1575711598296752097

`A369342(n)%A002764(n)`
-/

namespace A368873.P1575711598296752097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369342 n) (A002764 n)

end

end A368873.P1575711598296752097

/-! ## A368873.P13188925405508343957

`A369342(n%A369345(n))`
-/

namespace A368873.P13188925405508343957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369342 (Int.tmod (n : ℤ) (A369345 n)).toNat

end

end A368873.P13188925405508343957

/-! ## A368873.P15896016138438268367

`and(A359082(n+1), A369342(n))`
-/

namespace A368873.P15896016138438268367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359082 (n + 1)) (A369342 n)

end

end A368873.P15896016138438268367

/-! ## A368873.P14216046118385861440

`A369342(A369339(n))*A369342(n)`
-/

namespace A368873.P14216046118385861440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369342 (A369339 n).toNat * A369342 n

end

end A368873.P14216046118385861440

/-! ## A368873.P7272631602911464550

`A369342(n)^A369342(A131919(n))`
-/

namespace A368873.P7272631602911464550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369342 n : ℚ) ^ (A369342 (A131919 n).toNat : ℤ)

end

end A368873.P7272631602911464550

/-!
# A368874: a(n) is the number of points with integer coordinates located strictly between the parabolas y = n - x^2 and y = x^2 - n.

The programs for A368874, there is no canonical definition to state claims against.
-/

/-! ## A368874.P8670363159282614497

`2*∑[∑[char[∪[n²+1, n²]]]]-1`
-/

namespace A368874.P8670363159282614497
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f4 j = x) ∨ ∃ j, f5 j = x) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1

end

end A368874.P8670363159282614497

/-! ## A368874.P5506624489768733468

`A004273(∑[∑[A266298(n)]])`
-/

namespace A368874.P5506624489768733468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A368874.P5506624489768733468

/-! ## A368874.P12313685301095636749

`A005408(A327672(n)+A022554(n))`
-/

namespace A368874.P12313685301095636749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A327672 n + A022554 n).toNat

end

end A368874.P12313685301095636749

/-!
# A368875: a(n) = 24*(3*n + 1)!/(n!*((n + 2)!)^2).

The programs for A368875, the canonical program `A368875.P17371927441848330167` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368875 has offset 0).

The definition of A368875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368875.P17371927441848330167

`24*(3*n+1)!/(n!*(n+2)!²)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368875

/-- `24*(3*n+1)!/(n!*(n+2)!²)` -/
def P17371927441848330167.Spec : Prop :=
  ∀ n, P17371927441848330167.a n = (A368875 n : ℚ)

end A368875

/-!
# A368877: a(n) = f^k(n) where f(n) = A014682(n), the Collatz map, and k = A070939(n), the length of n in base 2.

The programs for A368877, there is no canonical definition to state claims against.
-/

/-! ## A368877.P10931453572181826672

`A014682(A216851(n+1))`
-/

namespace A368877.P10931453572181826672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A216851 (n + 1)).toNat

end

end A368877.P10931453572181826672

/-!
# A368878: a(n) is the least k such that A368877^k(n) < n or -1 if no such k exists.

The programs for A368878, there is no canonical definition to state claims against.
-/

/-! ## A368878.P4061052115473200176

`A375735(A347453(n+1)+A344604(n))`
-/

namespace A368878.P4061052115473200176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375735 (A347453 (n + 1) + A344604 n).toNat

end

end A368878.P4061052115473200176

/-! ## A368878.P7706650806306188946

`gcd(A122197(A070022(3*n+4)), A289506(n+1))`
-/

namespace A368878.P7706650806306188946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122197 (A070022 (3 * n + 4)).toNat) (A289506 (n + 1))

end

end A368878.P7706650806306188946

/-! ## A368878.P10115445728574076362

`A036583(A045784(n+2)-A036580(2*n+3))`
-/

namespace A368878.P10115445728574076362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036583 (A045784 (n + 2) - A036580 (2 * n + 3)).toNat

end

end A368878.P10115445728574076362

/-! ## A368878.P16569794485874134047

`A064892(A188674(2*n+3)+A064891(2*n+3))`
-/

namespace A368878.P16569794485874134047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064892 (A188674 (2 * n + 3) + A064891 (2 * n + 3)).toNat

end

end A368878.P16569794485874134047

/-!
# A368879: Primes that are in A070196.

The programs for A368879, there is no canonical definition to state claims against.
-/

/-! ## A368879.P17174685262347351042

`record[A020639(A070196(n+1)²)]`
-/

namespace A368879.P17174685262347351042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A070196 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368879.P17174685262347351042

/-!
# A368880: Primes in A024528.

The programs for A368880, there is no canonical definition to state claims against.
-/

/-! ## A368880.P10736651277362718749

`A024528(A125707(n+1))`
-/

namespace A368880.P10736651277362718749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024528 (A125707 (n + 1)).toNat

end

end A368880.P10736651277362718749

/-!
# A368881: a(n) = binomial(n+3, 4) + binomial(n+1, 3) + 1.

The programs for A368881, the canonical program `A368881.P15366897681764231190` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368881 has offset 0).

The definition of A368881 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 4)+C(n+1, 3)+1` (program `A368881.P15366897681764231190`, by `A368881.P15366897681764231190.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368881.P15366897681764231190

`C(n+3, 4)+C(n+1, 3)+1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368881

/-- `C(n+3, 4)+C(n+1, 3)+1` -/
def P15366897681764231190.Spec : Prop :=
  ∀ n, (P15366897681764231190.a n : ℤ) = A368881 n

theorem P15366897681764231190.correct : P15366897681764231190.Spec := by
  intro n
  simp only [A368881]

end A368881

/-! ## A368881.P3836848849000135073

`ogf((1-3x+7x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A368881.P3836848849000135073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 7, -5, 1] [1, -5, 10, -10, 5, -1] n

end

end A368881.P3836848849000135073

namespace A368881

/-- `ogf((1-3x+7x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P3836848849000135073.Spec : Prop :=
  ∀ n, P3836848849000135073.a n = A368881 n

end A368881

/-! ## A368881.P2889757314215568805

`1/24*(n^4+10*n^3+11*n²+2*n+24)`
-/

namespace A368881.P2889757314215568805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * (n ^ 4 + 10 * n ^ 3 + 11 * n ^ 2 + 2 * n + 24 : ℚ)

end

end A368881.P2889757314215568805

namespace A368881

/-- `1/24*(n^4+10*n^3+11*n²+2*n+24)` -/
def P2889757314215568805.Spec : Prop :=
  ∀ n, P2889757314215568805.a n = (A368881 n : ℚ)

theorem P2889757314215568805.correct : P2889757314215568805.Spec := by
  intro n
  simp only [A368881, Nat.add_sub_cancel, A368881.P2889757314215568805.a, A368881.P15366897681764231190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A368881

/-! ## A368881.P13579901831782477639

`∑[C(n+3, 3)]-n*(n+2)`
-/

namespace A368881.P13579901831782477639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n * (n + 2) : ℤ)

end

end A368881.P13579901831782477639

namespace A368881

/-- `∑[C(n+3, 3)]-n*(n+2)` -/
def P13579901831782477639.Spec : Prop :=
  ∀ n, P13579901831782477639.a n = A368881 n

end A368881

/-! ## A368881.P8854224101952977335

`∑[∑[a(n-1)+n+1]]+1` with `a(0)=0, a(1)=1`
-/

namespace A368881.P8854224101952977335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A368881.P8854224101952977335

namespace A368881

/-- `∑[∑[a(n-1)+n+1]]+1` -/
def P8854224101952977335.Spec : Prop :=
  ∀ n, (P8854224101952977335.a n : ℤ) = A368881 n

end A368881

/-! ## A368881.P6620819945051115129

`n+1+3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A368881.P6620819945051115129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  (n + 1 : ℤ) + 3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A368881.P6620819945051115129

namespace A368881

/-- `n+1+3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P6620819945051115129.Spec : Prop :=
  ∀ n, P6620819945051115129.a n = A368881 n

end A368881

/-! ## A368881.P14031758455539772315

`∑[A121968(n+1)]-n`
-/

namespace A368881.P14031758455539772315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A368881.P14031758455539772315

namespace A368881

/-- `∑[A121968(n+1)]-n` -/
def P14031758455539772315.Spec : Prop :=
  ∀ n, P14031758455539772315.a n = A368881 n

end A368881

/-! ## A368881.P12010095709894350933

`A363256(n)-(n²+n)`
-/

namespace A368881.P12010095709894350933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363256 n - (n ^ 2 + n : ℤ)

end

end A368881.P12010095709894350933

namespace A368881

/-- `A363256(n)-(n²+n)` -/
def P12010095709894350933.Spec : Prop :=
  ∀ n, P12010095709894350933.a n = A368881 n

end A368881

/-! ## A368881.P2521309540251483295

`A323847(n+1)+1+n`
-/

namespace A368881.P2521309540251483295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323847 (n + 1) + 1 + (n : ℤ)

end

end A368881.P2521309540251483295

namespace A368881

/-- `A323847(n+1)+1+n` -/
def P2521309540251483295.Spec : Prop :=
  ∀ n, P2521309540251483295.a n = A368881 n

theorem P2521309540251483295.correct : P2521309540251483295.Spec := by
  intro n
  simp only [A368881, Nat.add_sub_cancel, A368881.P2521309540251483295.a, A368881.P15366897681764231190.a, A323847, A323847.P17379173831627455529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A368881

/-! ## A368881.P3896994880252533468

`A027966(n+2)-2*n`
-/

namespace A368881.P3896994880252533468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027966 (n + 2) - (2 * n : ℤ)

end

end A368881.P3896994880252533468

namespace A368881

/-- `A027966(n+2)-2*n` -/
def P3896994880252533468.Spec : Prop :=
  ∀ n, P3896994880252533468.a n = A368881 n

end A368881

/-! ## A368881.P9625353176404830812

`A058923(n)+A002412(n)`
-/

namespace A368881.P9625353176404830812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058923 n + A002412 n

end

end A368881.P9625353176404830812

namespace A368881

/-- `A058923(n)+A002412(n)` -/
def P9625353176404830812.Spec : Prop :=
  ∀ n, P9625353176404830812.a n = A368881 n

end A368881

/-! ## A368881.P15273772635368661731

`A101338(n)+A051925(n)`
-/

namespace A368881.P15273772635368661731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 n + A051925 n

end

end A368881.P15273772635368661731

namespace A368881

/-- `A101338(n)+A051925(n)` -/
def P15273772635368661731.Spec : Prop :=
  ∀ n, P15273772635368661731.a n = A368881 n

end A368881

/-! ## A368881.P5080023398686423089

`A154323(n)-A212415(n)`
-/

namespace A368881.P5080023398686423089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n - A212415 n

end

end A368881.P5080023398686423089

namespace A368881

/-- `A154323(n)-A212415(n)` -/
def P5080023398686423089.Spec : Prop :=
  ∀ n, P5080023398686423089.a n = A368881 n

end A368881

/-! ## A368881.P16753637803706037154

`∑[A008778(A004273(n)-n)]`
-/

namespace A368881.P16753637803706037154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368881.P16753637803706037154

namespace A368881

/-- `∑[A008778(A004273(n)-n)]` -/
def P16753637803706037154.Spec : Prop :=
  ∀ n, P16753637803706037154.a n = A368881 n

end A368881

/-! ## A368881.P6487485501586840674

`A116699(n+1)+A005581(n)`
-/

namespace A368881.P6487485501586840674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116699 (n + 1) + A005581 n

end

end A368881.P6487485501586840674

namespace A368881

/-- `A116699(n+1)+A005581(n)` -/
def P6487485501586840674.Spec : Prop :=
  ∀ n, P6487485501586840674.a n = A368881 n

end A368881

/-! ## A368881.P7651656891270373417

`A135503(n)+A000127(n+1)`
-/

namespace A368881.P7651656891270373417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A000127 (n + 1)

end

end A368881.P7651656891270373417

namespace A368881

/-- `A135503(n)+A000127(n+1)` -/
def P7651656891270373417.Spec : Prop :=
  ∀ n, P7651656891270373417.a n = A368881 n

end A368881

/-! ## A368881.P10221524814591203909

`A158842(n)+A055795(n+1)`
-/

namespace A368881.P10221524814591203909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158842 n + A055795 (n + 1)

end

end A368881.P10221524814591203909

namespace A368881

/-- `A158842(n)+A055795(n+1)` -/
def P10221524814591203909.Spec : Prop :=
  ∀ n, P10221524814591203909.a n = A368881 n

end A368881

/-! ## A368881.P8128768680371060079

`A051743(n+1)-A028387(n)`
-/

namespace A368881.P8128768680371060079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051743 (n + 1) - A028387 n

end

end A368881.P8128768680371060079

namespace A368881

/-- `A051743(n+1)-A028387(n)` -/
def P8128768680371060079.Spec : Prop :=
  ∀ n, P8128768680371060079.a n = A368881 n

end A368881

/-! ## A368881.P14169499370221457736

`A086274(n+1)-A000096(n)`
-/

namespace A368881.P14169499370221457736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086274 (n + 1) - A000096 n

end

end A368881.P14169499370221457736

namespace A368881

/-- `A086274(n+1)-A000096(n)` -/
def P14169499370221457736.Spec : Prop :=
  ∀ n, P14169499370221457736.a n = A368881 n

end A368881

/-! ## A368881.P7184105327507844597

`A228741(n+1)%A154286(n)`
-/

namespace A368881.P7184105327507844597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228741 (n + 1)) (A154286 n)

end

end A368881.P7184105327507844597

namespace A368881

/-- `A228741(n+1)%A154286(n)` -/
def P7184105327507844597.Spec : Prop :=
  ∀ n, P7184105327507844597.a n = A368881 n

end A368881

/-!
# A368883: The number of infinitary divisors of n that are cubefree.

The programs for A368883, the canonical program `A368883.P5151374445955228630` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368883 has offset 1).

The definition of A368883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368883.P5151374445955228630

`A061389(A053165(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A368883

/-- `A061389(A053165(n+1))` -/
def P5151374445955228630.Spec : Prop :=
  ∀ n, P5151374445955228630.a n = A368883 (n + 1)

theorem P5151374445955228630.correct : P5151374445955228630.Spec := by
  intro n
  simp only [A368883, Nat.add_sub_cancel]

end A368883

/-! ## A368883.P8984992919946526669

`∏{e}[A053165(n+1), A000121(#)]`
-/

namespace A368883.P8984992919946526669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000121 (Nat.factorization (f1 n).natAbs p)

end

end A368883.P8984992919946526669

namespace A368883

/-- `∏{e}[A053165(n+1), A000121(#)]` -/
def P8984992919946526669.Spec : Prop :=
  ∀ n, P8984992919946526669.a n = A368883 (n + 1)

end A368883

/-! ## A368883.P1845078099846504324

`∏{e}[A053165(n+1), A093736(#)]`
-/

namespace A368883.P1845078099846504324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A093736 (Nat.factorization (f1 n).natAbs p)

end

end A368883.P1845078099846504324

namespace A368883

/-- `∏{e}[A053165(n+1), A093736(#)]` -/
def P1845078099846504324.Spec : Prop :=
  ∀ n, P1845078099846504324.a n = A368883 (n + 1)

end A368883

/-! ## A368883.P13558412894014630074

`∏{e}[A053165(n+1), A334968(#)]`
-/

namespace A368883.P13558412894014630074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A334968 (Nat.factorization (f1 n).natAbs p)

end

end A368883.P13558412894014630074

namespace A368883

/-- `∏{e}[A053165(n+1), A334968(#)]` -/
def P13558412894014630074.Spec : Prop :=
  ∀ n, P13558412894014630074.a n = A368883 (n + 1)

end A368883

/-! ## A368883.P6543161394907007961

`∏{e}[A053165(n+1), A335458(#)]`
-/

namespace A368883.P6543161394907007961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A335458 (Nat.factorization (f1 n).natAbs p)

end

end A368883.P6543161394907007961

namespace A368883

/-- `∏{e}[A053165(n+1), A335458(#)]` -/
def P6543161394907007961.Spec : Prop :=
  ∀ n, P6543161394907007961.a n = A368883 (n + 1)

end A368883

/-!
# A368884: The largest unitary divisor of n that is the square of a squarefree number (A062503).

The programs for A368884, the canonical program `A368884.P4906600944682773301` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368884 has offset 1).

The definition of A368884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368884.P16858453433636746251

`(n+1)/A368886(n+1)`
-/

namespace A368884.P16858453433636746251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368886 (n + 1) : ℚ)

end

end A368884.P16858453433636746251

namespace A368884

/-- `(n+1)/A368886(n+1)` -/
def P16858453433636746251.Spec : Prop :=
  ∀ n, P16858453433636746251.a n = (A368884 (n + 1) : ℚ)

end A368884

/-! ## A368884.P16951187611771106854

`A329376(n+1)²`
-/

namespace A368884.P16951187611771106854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329376 (n + 1) ^ 2

end

end A368884.P16951187611771106854

namespace A368884

/-- `A329376(n+1)²` -/
def P16951187611771106854.Spec : Prop :=
  ∀ n, P16951187611771106854.a n = A368884 (n + 1)

end A368884

/-! ## A368884.P4079679747786477406

`((n+1)/A366765(n+1))²`
-/

namespace A368884.P4079679747786477406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A366765 (n + 1) : ℚ)) ^ 2

end

end A368884.P4079679747786477406

namespace A368884

/-- `((n+1)/A366765(n+1))²` -/
def P4079679747786477406.Spec : Prop :=
  ∀ n, P4079679747786477406.a n = (A368884 (n + 1) : ℚ)

end A368884

/-! ## A368884.P12365507163750433149

`A056623(A058035(n+1))`
-/

namespace A368884.P12365507163750433149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056623 (A058035 (n + 1)).toNat

end

end A368884.P12365507163750433149

namespace A368884

/-- `A056623(A058035(n+1))` -/
def P12365507163750433149.Spec : Prop :=
  ∀ n, P12365507163750433149.a n = A368884 (n + 1)

end A368884

/-! ## A368884.P9197134373505504199

`A008833(A360539(n+1))`
-/

namespace A368884.P9197134373505504199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A360539 (n + 1)).toNat

end

end A368884.P9197134373505504199

namespace A368884

/-- `A008833(A360539(n+1))` -/
def P9197134373505504199.Spec : Prop :=
  ∀ n, P9197134373505504199.a n = A368884 (n + 1)

end A368884

/-! ## A368884.P63300049108785068

`A008833(A368171(n+1))`
-/

namespace A368884.P63300049108785068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A368171 (n + 1)).toNat

end

end A368884.P63300049108785068

namespace A368884

/-- `A008833(A368171(n+1))` -/
def P63300049108785068.Spec : Prop :=
  ∀ n, P63300049108785068.a n = A368884 (n + 1)

end A368884

/-! ## A368884.P4906600944682773301

`A360539(A057521(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A368884

/-- `A360539(A057521(n+1))` -/
def P4906600944682773301.Spec : Prop :=
  ∀ n, P4906600944682773301.a n = A368884 (n + 1)

theorem P4906600944682773301.correct : P4906600944682773301.Spec := by
  intro n
  simp only [A368884, Nat.add_sub_cancel]

end A368884

/-! ## A368884.P12090505694659427226

`A056623(A385007(n+1))`
-/

namespace A368884.P12090505694659427226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056623 (A385007 (n + 1)).toNat

end

end A368884.P12090505694659427226

namespace A368884

/-- `A056623(A385007(n+1))` -/
def P12090505694659427226.Spec : Prop :=
  ∀ n, P12090505694659427226.a n = A368884 (n + 1)

end A368884

/-! ## A368884.P7761155518160794548

`A335324(A367168(n+1))`
-/

namespace A368884.P7761155518160794548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335324 (A367168 (n + 1)).toNat

end

end A368884.P7761155518160794548

namespace A368884

/-- `A335324(A367168(n+1))` -/
def P7761155518160794548.Spec : Prop :=
  ∀ n, P7761155518160794548.a n = A368884 (n + 1)

end A368884

/-! ## A368884.P5879318259009741929

`A385007(A350388(n+1))`
-/

namespace A368884.P5879318259009741929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385007 (A350388 (n + 1)).toNat

end

end A368884.P5879318259009741929

namespace A368884

/-- `A385007(A350388(n+1))` -/
def P5879318259009741929.Spec : Prop :=
  ∀ n, P5879318259009741929.a n = A368884 (n + 1)

end A368884

/-! ## A368884.P9312022714651781718

`A055231(A000189(n+1))²`
-/

namespace A368884.P9312022714651781718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A000189 (n + 1)).toNat ^ 2

end

end A368884.P9312022714651781718

namespace A368884

/-- `A055231(A000189(n+1))²` -/
def P9312022714651781718.Spec : Prop :=
  ∀ n, P9312022714651781718.a n = A368884 (n + 1)

end A368884

/-! ## A368884.P15227832934900456905

`A055231(A000190(n+1))²`
-/

namespace A368884.P15227832934900456905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A000190 (n + 1)).toNat ^ 2

end

end A368884.P15227832934900456905

namespace A368884

/-- `A055231(A000190(n+1))²` -/
def P15227832934900456905.Spec : Prop :=
  ∀ n, P15227832934900456905.a n = A368884 (n + 1)

end A368884

/-! ## A368884.P1239195519172379740

`A055231(A003557(n+1))²`
-/

namespace A368884.P1239195519172379740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A003557 (n + 1)).toNat ^ 2

end

end A368884.P1239195519172379740

namespace A368884

/-- `A055231(A003557(n+1))²` -/
def P1239195519172379740.Spec : Prop :=
  ∀ n, P1239195519172379740.a n = A368884 (n + 1)

end A368884

/-! ## A368884.P1184868442618474128

`A071974(A366994(n+1))²`
-/

namespace A368884.P1184868442618474128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A366994 (n + 1)).toNat ^ 2

end

end A368884.P1184868442618474128

namespace A368884

/-- `A071974(A366994(n+1))²` -/
def P1184868442618474128.Spec : Prop :=
  ∀ n, P1184868442618474128.a n = A368884 (n + 1)

end A368884

/-! ## A368884.P9253410675291751785

`A055231(A336551(n+1)+1)²`
-/

namespace A368884.P9253410675291751785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A336551 (n + 1) + 1).toNat ^ 2

end

end A368884.P9253410675291751785

namespace A368884

/-- `A055231(A336551(n+1)+1)²` -/
def P9253410675291751785.Spec : Prop :=
  ∀ n, P9253410675291751785.a n = A368884 (n + 1)

end A368884

/-! ## A368884.P12981673677041981615

`A336643(lcm(2, A360539(n+1)))²`
-/

namespace A368884.P12981673677041981615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (Int.lcm 2 (A360539 (n + 1))) ^ 2

end

end A368884.P12981673677041981615

namespace A368884

/-- `A336643(lcm(2, A360539(n+1)))²` -/
def P12981673677041981615.Spec : Prop :=
  ∀ n, P12981673677041981615.a n = A368884 (n + 1)

end A368884

/-! ## A368884.P18421898526735806176

`A360539(n+1)/A055231(n+1)`
-/

namespace A368884.P18421898526735806176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360539 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ)

end

end A368884.P18421898526735806176

namespace A368884

/-- `A360539(n+1)/A055231(n+1)` -/
def P18421898526735806176.Spec : Prop :=
  ∀ n, P18421898526735806176.a n = (A368884 (n + 1) : ℚ)

end A368884

/-! ## A368884.P6940693895205991780

`A057521(n+1)/A360540(n+1)`
-/

namespace A368884.P6940693895205991780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) : ℚ) / (A360540 (n + 1) : ℚ)

end

end A368884.P6940693895205991780

namespace A368884

/-- `A057521(n+1)/A360540(n+1)` -/
def P6940693895205991780.Spec : Prop :=
  ∀ n, P6940693895205991780.a n = (A368884 (n + 1) : ℚ)

end A368884

/-! ## A368884.P4814192165344635553

`gcd(A011264(n+1), A360539(n+1))`
-/

namespace A368884.P4814192165344635553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011264 (n + 1)) (A360539 (n + 1))

end

end A368884.P4814192165344635553

namespace A368884

/-- `gcd(A011264(n+1), A360539(n+1))` -/
def P4814192165344635553.Spec : Prop :=
  ∀ n, (P4814192165344635553.a n : ℤ) = A368884 (n + 1)

end A368884

/-! ## A368884.P6116384715562777013

`A057521(n+1)/A057521(A366765(n+1))`
-/

namespace A368884.P6116384715562777013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) : ℚ) / (A057521 (A366765 (n + 1)).toNat : ℚ)

end

end A368884.P6116384715562777013

namespace A368884

/-- `A057521(n+1)/A057521(A366765(n+1))` -/
def P6116384715562777013.Spec : Prop :=
  ∀ n, P6116384715562777013.a n = (A368884 (n + 1) : ℚ)

end A368884

/-!
# A368885: The number of unitary divisors of n that are squares of a squarefree number (A062503).

The programs for A368885, the canonical program `A368885.P670731835496544227` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368885 has offset 1).

The definition of A368885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368885.P670731835496544227

`∏{e}[n+1, C(2, C(2, #))]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368885

/-- `∏{e}[n+1, C(2, C(2, #))]` -/
def P670731835496544227.Spec : Prop :=
  ∀ n, (P670731835496544227.a n : ℤ) = A368885 (n + 1)

theorem P670731835496544227.correct : P670731835496544227.Spec := by
  intro n
  simp only [A368885, Nat.add_sub_cancel]

end A368885

/-! ## A368885.P6666182274777743157

`∏{e}[n+1, (#!%3)!]`
-/

namespace A368885.P6666182274777743157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorial (Nat.factorization (f1 n) p) % 3)

end

end A368885.P6666182274777743157

namespace A368885

/-- `∏{e}[n+1, (#!%3)!]` -/
def P6666182274777743157.Spec : Prop :=
  ∀ n, (P6666182274777743157.a n : ℤ) = A368885 (n + 1)

end A368885

/-! ## A368885.P9297324171446093369

`∏{e}[n+1, #^floor(2/#)]`
-/

namespace A368885.P9297324171446093369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) ^ (⌊2 / (Nat.factorization (f1 n) p : ℚ)⌋ : ℤ)

end

end A368885.P9297324171446093369

namespace A368885

/-- `∏{e}[n+1, #^floor(2/#)]` -/
def P9297324171446093369.Spec : Prop :=
  ∀ n, P9297324171446093369.a n = (A368885 (n + 1) : ℚ)

end A368885

/-! ## A368885.P9576161107082554670

`2^A369427(n+1)`
-/

namespace A368885.P9576161107082554670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A369427 (n + 1) : ℤ)

end

end A368885.P9576161107082554670

namespace A368885

/-- `2^A369427(n+1)` -/
def P9576161107082554670.Spec : Prop :=
  ∀ n, P9576161107082554670.a n = (A368885 (n + 1) : ℚ)

end A368885

/-! ## A368885.P12998950002097269767

`gcd(8, A295879(n+1))`
-/

namespace A368885.P12998950002097269767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A295879 (n + 1))

end

end A368885.P12998950002097269767

namespace A368885

/-- `gcd(8, A295879(n+1))` -/
def P12998950002097269767.Spec : Prop :=
  ∀ n, (P12998950002097269767.a n : ℤ) = A368885 (n + 1)

end A368885

/-! ## A368885.P9757819480491951830

`A056671(A000189(n+1))`
-/

namespace A368885.P9757819480491951830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A000189 (n + 1)).toNat

end

end A368885.P9757819480491951830

namespace A368885

/-- `A056671(A000189(n+1))` -/
def P9757819480491951830.Spec : Prop :=
  ∀ n, P9757819480491951830.a n = A368885 (n + 1)

end A368885

/-! ## A368885.P3510063980634531687

`A056671(A000190(n+1))`
-/

namespace A368885.P3510063980634531687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A000190 (n + 1)).toNat

end

end A368885.P3510063980634531687

namespace A368885

/-- `A056671(A000190(n+1))` -/
def P3510063980634531687.Spec : Prop :=
  ∀ n, P3510063980634531687.a n = A368885 (n + 1)

end A368885

/-! ## A368885.P14792621169040924410

`A056671(A003557(n+1))`
-/

namespace A368885.P14792621169040924410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A003557 (n + 1)).toNat

end

end A368885.P14792621169040924410

namespace A368885

/-- `A056671(A003557(n+1))` -/
def P14792621169040924410.Spec : Prop :=
  ∀ n, P14792621169040924410.a n = A368885 (n + 1)

end A368885

/-! ## A368885.P704272302332173846

`A056624(A058035(n+1))`
-/

namespace A368885.P704272302332173846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (A058035 (n + 1)).toNat

end

end A368885.P704272302332173846

namespace A368885

/-- `A056624(A058035(n+1))` -/
def P704272302332173846.Spec : Prop :=
  ∀ n, P704272302332173846.a n = A368885 (n + 1)

end A368885

/-! ## A368885.P6924858096988407828

`A002487(A252505(n+1))`
-/

namespace A368885.P6924858096988407828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A252505 (n + 1)).toNat

end

end A368885.P6924858096988407828

namespace A368885

/-- `A002487(A252505(n+1))` -/
def P6924858096988407828.Spec : Prop :=
  ∀ n, P6924858096988407828.a n = A368885 (n + 1)

end A368885

/-! ## A368885.P17688745017824263998

`A034444(A368884(n+1))`
-/

namespace A368885.P17688745017824263998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A368884 (n + 1)).toNat

end

end A368885.P17688745017824263998

namespace A368885

/-- `A034444(A368884(n+1))` -/
def P17688745017824263998.Spec : Prop :=
  ∀ n, P17688745017824263998.a n = A368885 (n + 1)

end A368885

/-! ## A368885.P3954055166726417689

`A365498(A057521(n+1))`
-/

namespace A368885.P3954055166726417689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (A057521 (n + 1)).toNat

end

end A368885.P3954055166726417689

namespace A368885

/-- `A365498(A057521(n+1))` -/
def P3954055166726417689.Spec : Prop :=
  ∀ n, P3954055166726417689.a n = A368885 (n + 1)

end A368885

/-! ## A368885.P15088916562694916864

`A181819(A329376(n+1))`
-/

namespace A368885.P15088916562694916864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A329376 (n + 1)).toNat

end

end A368885.P15088916562694916864

namespace A368885

/-- `A181819(A329376(n+1))` -/
def P15088916562694916864.Spec : Prop :=
  ∀ n, P15088916562694916864.a n = A368885 (n + 1)

end A368885

/-! ## A368885.P4307280992426877723

`A370077(A360539(n+1))`
-/

namespace A368885.P4307280992426877723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370077 (A360539 (n + 1)).toNat

end

end A368885.P4307280992426877723

namespace A368885

/-- `A370077(A360539(n+1))` -/
def P4307280992426877723.Spec : Prop :=
  ∀ n, P4307280992426877723.a n = A368885 (n + 1)

end A368885

/-! ## A368885.P15888327531108096765

`gcd(A001316(n), A368105(n+1))`
-/

namespace A368885.P15888327531108096765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001316 n) (A368105 (n + 1))

end

end A368885.P15888327531108096765

namespace A368885

/-- `gcd(A001316(n), A368105(n+1))` -/
def P15888327531108096765.Spec : Prop :=
  ∀ n, (P15888327531108096765.a n : ℤ) = A368885 (n + 1)

end A368885

/-! ## A368885.P2496919187623065355

`∑{d}[A329376(n+1), A329376(#)]`
-/

namespace A368885.P2496919187623065355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329376 d

end

end A368885.P2496919187623065355

namespace A368885

/-- `∑{d}[A329376(n+1), A329376(#)]` -/
def P2496919187623065355.Spec : Prop :=
  ∀ n, P2496919187623065355.a n = A368885 (n + 1)

end A368885

/-! ## A368885.P11332654283036468098

`gcd(A335901(n+1), A383292(n+1))`
-/

namespace A368885.P11332654283036468098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A335901 (n + 1)) (A383292 (n + 1))

end

end A368885.P11332654283036468098

namespace A368885

/-- `gcd(A335901(n+1), A383292(n+1))` -/
def P11332654283036468098.Spec : Prop :=
  ∀ n, (P11332654283036468098.a n : ℤ) = A368885 (n + 1)

end A368885

/-! ## A368885.P18270527740068432739

`gcd(A181662(n), A383292(n+1))`
-/

namespace A368885.P18270527740068432739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181662 n) (A383292 (n + 1))

end

end A368885.P18270527740068432739

namespace A368885

/-- `gcd(A181662(n), A383292(n+1))` -/
def P18270527740068432739.Spec : Prop :=
  ∀ n, (P18270527740068432739.a n : ℤ) = A368885 (n + 1)

end A368885

/-! ## A368885.P7603958125780362034

`gcd(A368105(n+1)+A300451(n), A300451(n))`
-/

namespace A368885.P7603958125780362034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A368105 (n + 1) + A300451 n) (A300451 n)

end

end A368885.P7603958125780362034

namespace A368885

/-- `gcd(A368105(n+1)+A300451(n), A300451(n))` -/
def P7603958125780362034.Spec : Prop :=
  ∀ n, (P7603958125780362034.a n : ℤ) = A368885 (n + 1)

end A368885

/-! ## A368885.P17258175910162883816

`and(A239716(n+1)*A295879(n+1), A295879(n+1))`
-/

namespace A368885.P17258175910162883816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A239716 (n + 1) * A295879 (n + 1)) (A295879 (n + 1))

end

end A368885.P17258175910162883816

namespace A368885

/-- `and(A239716(n+1)*A295879(n+1), A295879(n+1))` -/
def P17258175910162883816.Spec : Prop :=
  ∀ n, P17258175910162883816.a n = A368885 (n + 1)

end A368885

/-!
# A368886: The largest unitary divisor of n without an exponent 2 in its prime factorization (A337050).

The programs for A368886, the canonical program `A368886.P14991200523902703916` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368886 has offset 1).

The definition of A368886 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368884, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368886.P14991200523902703916

`(n+1)/A368884(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A368886

/-- `(n+1)/A368884(n+1)` -/
def P14991200523902703916.Spec : Prop :=
  ∀ n, P14991200523902703916.a n = (A368886 (n + 1) : ℚ)

end A368886

/-! ## A368886.P2091224575155942402

`(n+1)/A329376(n+1)²`
-/

namespace A368886.P2091224575155942402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A329376 (n + 1) ^ 2 : ℚ)

end

end A368886.P2091224575155942402

namespace A368886

/-- `(n+1)/A329376(n+1)²` -/
def P2091224575155942402.Spec : Prop :=
  ∀ n, P2091224575155942402.a n = (A368886 (n + 1) : ℚ)

end A368886

/-! ## A368886.P14482444126524260479

`A366765(n+1)²/(n+1)`
-/

namespace A368886.P14482444126524260479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366765 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A368886.P14482444126524260479

namespace A368886

/-- `A366765(n+1)²/(n+1)` -/
def P14482444126524260479.Spec : Prop :=
  ∀ n, P14482444126524260479.a n = (A368886 (n + 1) : ℚ)

end A368886

/-! ## A368886.P15374104918850722181

`gcd(n+1, A390371(n+1)²)`
-/

namespace A368886.P15374104918850722181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A390371 (n + 1) ^ 2)

end

end A368886.P15374104918850722181

namespace A368886

/-- `gcd(n+1, A390371(n+1)²)` -/
def P15374104918850722181.Spec : Prop :=
  ∀ n, (P15374104918850722181.a n : ℤ) = A368886 (n + 1)

end A368886

/-! ## A368886.P10424826236635444615

`A055231(n+1)*A360540(n+1)`
-/

namespace A368886.P10424826236635444615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A360540 (n + 1)

end

end A368886.P10424826236635444615

namespace A368886

/-- `A055231(n+1)*A360540(n+1)` -/
def P10424826236635444615.Spec : Prop :=
  ∀ n, P10424826236635444615.a n = A368886 (n + 1)

end A368886

/-! ## A368886.P4667868856497658925

`(n+1)/A360539(A057521(n+1))`
-/

namespace A368886.P4667868856497658925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A360539 (A057521 (n + 1)).toNat : ℚ)

end

end A368886.P4667868856497658925

namespace A368886

/-- `(n+1)/A360539(A057521(n+1))` -/
def P4667868856497658925.Spec : Prop :=
  ∀ n, P4667868856497658925.a n = (A368886 (n + 1) : ℚ)

end A368886

/-! ## A368886.P7697012768971563647

`A197863(n+1)/A360539(n+1)`
-/

namespace A368886.P7697012768971563647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) : ℚ) / (A360539 (n + 1) : ℚ)

end

end A368886.P7697012768971563647

namespace A368886

/-- `A197863(n+1)/A360539(n+1)` -/
def P7697012768971563647.Spec : Prop :=
  ∀ n, P7697012768971563647.a n = (A368886 (n + 1) : ℚ)

end A368886

/-! ## A368886.P16798548323424311095

`(n+1)/A385007(A350388(n+1))`
-/

namespace A368886.P16798548323424311095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A385007 (A350388 (n + 1)).toNat : ℚ)

end

end A368886.P16798548323424311095

namespace A368886

/-- `(n+1)/A385007(A350388(n+1))` -/
def P16798548323424311095.Spec : Prop :=
  ∀ n, P16798548323424311095.a n = (A368886 (n + 1) : ℚ)

end A368886

/-! ## A368886.P13961509459338219783

`lcm(A007913(n+1), A360540(n+1))`
-/

namespace A368886.P13961509459338219783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (n + 1)) (A360540 (n + 1))

end

end A368886.P13961509459338219783

namespace A368886

/-- `lcm(A007913(n+1), A360540(n+1))` -/
def P13961509459338219783.Spec : Prop :=
  ∀ n, (P13961509459338219783.a n : ℤ) = A368886 (n + 1)

end A368886

/-! ## A368886.P5441386233463806986

`A007913(n+1)*A008833(A366765(n+1))`
-/

namespace A368886.P5441386233463806986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A008833 (A366765 (n + 1)).toNat

end

end A368886.P5441386233463806986

namespace A368886

/-- `A007913(n+1)*A008833(A366765(n+1))` -/
def P5441386233463806986.Spec : Prop :=
  ∀ n, P5441386233463806986.a n = A368886 (n + 1)

end A368886

/-! ## A368886.P7036006123846938365

`A055231(n+1)*A057521(A366765(n+1))`
-/

namespace A368886.P7036006123846938365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A057521 (A366765 (n + 1)).toNat

end

end A368886.P7036006123846938365

namespace A368886

/-- `A055231(n+1)*A057521(A366765(n+1))` -/
def P7036006123846938365.Spec : Prop :=
  ∀ n, P7036006123846938365.a n = A368886 (n + 1)

end A368886

/-! ## A368886.P3863326084318329015

`(n+1)/A360541(A329376(A356194(n+1)))`
-/

namespace A368886.P3863326084318329015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A360541 (A329376 (A356194 (n + 1)).toNat).toNat : ℚ)

end

end A368886.P3863326084318329015

namespace A368886

/-- `(n+1)/A360541(A329376(A356194(n+1)))` -/
def P3863326084318329015.Spec : Prop :=
  ∀ n, P3863326084318329015.a n = (A368886 (n + 1) : ℚ)

end A368886

/-! ## A368886.P13303225733546707650

`A197863(n+1)/A360541(A360541(n+1))`
-/

namespace A368886.P13303225733546707650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) : ℚ) / (A360541 (A360541 (n + 1)).toNat : ℚ)

end

end A368886.P13303225733546707650

namespace A368886

/-- `A197863(n+1)/A360541(A360541(n+1))` -/
def P13303225733546707650.Spec : Prop :=
  ∀ n, P13303225733546707650.a n = (A368886 (n + 1) : ℚ)

end A368886

/-!
# A368887: a(n) is the atomic number of the nuclide with the lowest energy among the isobars of mass number n.

The programs for A368887, there is no canonical definition to state claims against.
-/

/-! ## A368887.P7028492706256216455

`1-A370457(n+1)+n`
-/

namespace A368887.P7028492706256216455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A370457 (n + 1) + (n : ℤ)

end

end A368887.P7028492706256216455

/-! ## A368887.P16441607859858670197

`A000120(or(A037027(n+1), A078477(n+3)))`
-/

namespace A368887.P16441607859858670197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (A037027 (n + 1)) (A078477 (n + 3))).toNat

end

end A368887.P16441607859858670197

/-! ## A368887.P11165966341027238449

`A057354(A160755(2*n+3)-A057354(2*n+1))`
-/

namespace A368887.P11165966341027238449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A160755 (2 * n + 3) - A057354 (2 * n + 1)).toNat

end

end A368887.P11165966341027238449

/-! ## A368887.P4452935165452823613

`ceil(A239218(3*n+2)/6)`
-/

namespace A368887.P4452935165452823613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A239218 (3 * n + 2) : ℚ) / 6⌉

end

end A368887.P4452935165452823613

/-! ## A368887.P6975486357039794678

`A235402(A191121(n+2))`
-/

namespace A368887.P6975486357039794678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235402 (A191121 (n + 2)).toNat

end

end A368887.P6975486357039794678

/-!
# A368888: a(n) = Sum_{k=0..floor(n/2)} n^(2*k) * binomial(n-k,k).

The programs for A368888, the canonical program `A368888.P12360955392703161928` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368888 has offset 0).

The definition of A368888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), n^(2*#)*C(n-#, #)]` (program `A368888.P12360955392703161928`, by `A368888.P12360955392703161928.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368888.P12360955392703161928

`∑{#}[floor(n/2), n^(2*#)*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368888

/-- `∑{#}[floor(n/2), n^(2*#)*C(n-#, #)]` -/
def P12360955392703161928.Spec : Prop :=
  ∀ n, (P12360955392703161928.a n : ℤ) = A368888 n

theorem P12360955392703161928.correct : P12360955392703161928.Spec := by
  intro n
  simp only [A368888]

end A368888

/-! ## A368888.P16398794544100471096

`A193376(A242983(n+1))`
-/

namespace A368888.P16398794544100471096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193376 (A242983 (n + 1)).toNat

end

end A368888.P16398794544100471096

namespace A368888

/-- `A193376(A242983(n+1))` -/
def P16398794544100471096.Spec : Prop :=
  ∀ n, P16398794544100471096.a n = A368888 n

end A368888

/-!
# A368889: a(n) = Sum_{k=0..floor(n/2)} n^(3*k) * binomial(n-k,k).

The programs for A368889, the canonical program `A368889.P5636709946717877934` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368889 has offset 0).

The definition of A368889 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), n^(3*#)*C(n-#, #)]` (program `A368889.P5636709946717877934`, by `A368889.P5636709946717877934.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368889.P5636709946717877934

`∑{#}[floor(n/2), n^(3*#)*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368889

/-- `∑{#}[floor(n/2), n^(3*#)*C(n-#, #)]` -/
def P5636709946717877934.Spec : Prop :=
  ∀ n, (P5636709946717877934.a n : ℤ) = A368889 n

theorem P5636709946717877934.correct : P5636709946717877934.Spec := by
  intro n
  simp only [A368889]

end A368889

/-!
# A368890: a(n) = Sum_{k=0..floor(n/2)} n^(3*(n-2*k)) * binomial(n-k,k).

The programs for A368890, the canonical program `A368890.P17615804964900038523` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368890 has offset 0).

The definition of A368890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368890.P17615804964900038523

`∑{#}[floor(n/2), n^(3*(n-2*#))*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368890

/-- `∑{#}[floor(n/2), n^(3*(n-2*#))*C(n-#, #)]` -/
def P17615804964900038523.Spec : Prop :=
  ∀ n, P17615804964900038523.a n = (A368890 n : ℚ)

end A368890

/-!
# A368891: a(n) = Sum_{k=0..floor(n/3)} n^k * binomial(n-2*k,k).

The programs for A368891, the canonical program `A368891.P9080761696673068121` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368891 has offset 0).

The definition of A368891 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), n^#*C(n-2*#, #)]` (program `A368891.P9080761696673068121`, by `A368891.P9080761696673068121.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368891.P9080761696673068121

`∑{#}[floor(n/3), n^#*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368891

/-- `∑{#}[floor(n/3), n^#*C(n-2*#, #)]` -/
def P9080761696673068121.Spec : Prop :=
  ∀ n, (P9080761696673068121.a n : ℤ) = A368891 n

theorem P9080761696673068121.correct : P9080761696673068121.Spec := by
  intro n
  simp only [A368891]

end A368891

/-!
# A368892: a(n) = Sum_{k=0..floor(n/3)} n^(n-3*k) * binomial(n-2*k,k).

The programs for A368892, the canonical program `A368892.P4677208709111269914` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368892 has offset 0).

The definition of A368892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368892.P4677208709111269914

`∑{#}[floor(n/3), n^(n-3*#)*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368892

/-- `∑{#}[floor(n/3), n^(n-3*#)*C(n-2*#, #)]` -/
def P4677208709111269914.Spec : Prop :=
  ∀ n, P4677208709111269914.a n = (A368892 n : ℚ)

end A368892

/-! ## A368892.P8864857498849457631

`A047412(A302585(n)+1)`
-/

namespace A368892.P8864857498849457631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047412 (A302585 n + 1).toNat

end

end A368892.P8864857498849457631

namespace A368892

/-- `A047412(A302585(n)+1)` -/
def P8864857498849457631.Spec : Prop :=
  ∀ n, P8864857498849457631.a n = A368892 n

end A368892

/-!
# A368893: a(n) = Sum_{k=0..floor(n/3)} n^(n-2*k) * binomial(n-2*k,k).

The programs for A368893, the canonical program `A368893.P4570143975070780405` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368893 has offset 0).

The definition of A368893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368893.P4570143975070780405

`∑{#}[floor(n/3), n^(n-2*#)*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368893

/-- `∑{#}[floor(n/3), n^(n-2*#)*C(n-2*#, #)]` -/
def P4570143975070780405.Spec : Prop :=
  ∀ n, P4570143975070780405.a n = (A368893 n : ℚ)

end A368893

/-!
# A368894: a(n) = Sum_{k=0..floor(n/2)} (-n)^k * binomial(n-k,k).

The programs for A368894, the canonical program `A368894.P1354559398597035802` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368894 has offset 0).

The definition of A368894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), (-n)^#*C(n-#, #)]` (program `A368894.P1354559398597035802`, by `A368894.P1354559398597035802.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368894.P1354559398597035802

`∑{#}[floor(n/2), (-n)^#*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368894

/-- `∑{#}[floor(n/2), (-n)^#*C(n-#, #)]` -/
def P1354559398597035802.Spec : Prop :=
  ∀ n, P1354559398597035802.a n = A368894 n

theorem P1354559398597035802.correct : P1354559398597035802.Spec := by
  intro n
  simp only [A368894]

end A368894

/-!
# A368895: a(n) = Sum_{k=0..floor(n/3)} (-n)^k * binomial(n-2*k,k).

The programs for A368895, the canonical program `A368895.P10890316254938930063` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368895 has offset 0).

The definition of A368895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), (-n)^#*C(n-2*#, #)]` (program `A368895.P10890316254938930063`, by `A368895.P10890316254938930063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368895.P10890316254938930063

`∑{#}[floor(n/3), (-n)^#*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368895

/-- `∑{#}[floor(n/3), (-n)^#*C(n-2*#, #)]` -/
def P10890316254938930063.Spec : Prop :=
  ∀ n, P10890316254938930063.a n = A368895 n

theorem P10890316254938930063.correct : P10890316254938930063.Spec := by
  intro n
  simp only [A368895]

end A368895

/-!
# A368896: Lower matching number of the n X n knight graph.

The programs for A368896, there is no canonical definition to state claims against.
-/

/-! ## A368896.P7053684680526951503

`ogf((3x^2+x^3+3x^4+3x^5+6x^6+4x^7+5x^8+6x^9)/(1-x))`
-/

namespace A368896.P7053684680526951503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 1, 3, 3, 6, 4, 5, 6] [1, -1] n

end

end A368896.P7053684680526951503

/-! ## A368896.P13386058714876172764

`A025852(A211482(n))`
-/

namespace A368896.P13386058714876172764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025852 (A211482 n).toNat

end

end A368896.P13386058714876172764

/-! ## A368896.P10572057174577400173

`A029259(A313644(n))`
-/

namespace A368896.P10572057174577400173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029259 (A313644 n).toNat

end

end A368896.P10572057174577400173

/-! ## A368896.P8218824221381667972

`A094913(n)-A079686(n)`
-/

namespace A368896.P8218824221381667972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094913 n - A079686 n

end

end A368896.P8218824221381667972

/-! ## A368896.P6890483142409008936

`A281333(n)-A051023(n)`
-/

namespace A368896.P6890483142409008936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281333 n - A051023 n

end

end A368896.P6890483142409008936

/-!
# A368898: a(n) = Sum_{k=0..floor(n/4)} n^k * binomial(n-3*k,k).

The programs for A368898, the canonical program `A368898.P1748299948378075063` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368898 has offset 0).

The definition of A368898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), n^#*C(n-3*#, #)]` (program `A368898.P1748299948378075063`, by `A368898.P1748299948378075063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368898.P1748299948378075063

`∑{#}[floor(n/4), n^#*C(n-3*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368898

/-- `∑{#}[floor(n/4), n^#*C(n-3*#, #)]` -/
def P1748299948378075063.Spec : Prop :=
  ∀ n, (P1748299948378075063.a n : ℤ) = A368898 n

theorem P1748299948378075063.correct : P1748299948378075063.Spec := by
  intro n
  simp only [A368898]

end A368898

/-! ## A368898.P16238566183704396690

`A231566(A352795(n))`
-/

namespace A368898.P16238566183704396690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231566 (A352795 n).toNat

end

end A368898.P16238566183704396690

namespace A368898

/-- `A231566(A352795(n))` -/
def P16238566183704396690.Spec : Prop :=
  ∀ n, P16238566183704396690.a n = A368898 n

end A368898

/-! ## A368898.P3936919320066704964

`A322832(A361637(n))`
-/

namespace A368898.P3936919320066704964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (A361637 n).toNat

end

end A368898.P3936919320066704964

namespace A368898

/-- `A322832(A361637(n))` -/
def P3936919320066704964.Spec : Prop :=
  ∀ n, P3936919320066704964.a n = A368898 n

end A368898

