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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C037
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A161900: Number of reduced words of length n in the Weyl group B_22.

The programs for A161900, there is no canonical definition to state claims against.
-/

/-! ## A161900.P5238458041631180276

`∑[∑[A161880(n)-A161875(A161868(n+1))]]`
-/

namespace A161900.P5238458041631180276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161880 n - A161875 (A161868 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161900.P5238458041631180276

/-!
# A161901: Array read by rows in which row n lists the divisors of n, but if n is a square then the square root of n appears twice.

The programs for A161901, there is no canonical definition to state claims against.
-/

/-! ## A161901.P9061027324028485224

`A027750(∑[A292438(A282629(n))])`
-/

namespace A161901.P9061027324028485224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A282629 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161901.P9061027324028485224

/-! ## A161901.P14378035111762939845

`A027750(∑[A267813(A231997(n+1))])`
-/

namespace A161901.P14378035111762939845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267813 (A231997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161901.P14378035111762939845

/-! ## A161901.P8410086037973900402

`A027750(∑[A267621(A128166(n+1))])`
-/

namespace A161901.P8410086037973900402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267621 (A128166 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161901.P8410086037973900402

/-! ## A161901.P11040201722090826257

`A027750(∑[A265186(A068947(n+1))])`
-/

namespace A161901.P11040201722090826257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265186 (A068947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161901.P11040201722090826257

/-! ## A161901.P15805405876429338278

`A003976(A078898(n+1)+A078898(A000043(n+4)))`
-/

namespace A161901.P15805405876429338278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003976 (A078898 (n + 1) + A078898 (A000043 (n + 4)).toNat).toNat

end

end A161901.P15805405876429338278

/-!
# A161902: Non-palindromic squares whose digit reversal gives a square (possibly with fewer digits).

The programs for A161902, there is no canonical definition to state claims against.
-/

/-! ## A161902.P3463691257002095506

`∩[A070760(n+1), n²]`
-/

namespace A161902.P3463691257002095506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A161902.P3463691257002095506

/-! ## A161902.P14133019542333588282

`∩[A061457(n+1), A070760(n+1)]`
-/

namespace A161902.P14133019542333588282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161902.P14133019542333588282

/-! ## A161902.P10876268617560166681

`∩[A115690(n+1), A070760(n+1)]`
-/

namespace A161902.P10876268617560166681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161902.P10876268617560166681

/-! ## A161902.P7931276246435426914

`∩[A065807(n+1), A070760(n+1)]`
-/

namespace A161902.P7931276246435426914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161902.P7931276246435426914

/-! ## A161902.P7899690456479530356

`∩[A061457(n+1), A319388(n+1)]`
-/

namespace A161902.P7899690456479530356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161902.P7899690456479530356

/-! ## A161902.P9262759193859493961

`∩[A000290(n), A070760(n+1)]`
-/

namespace A161902.P9262759193859493961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161902.P9262759193859493961

/-! ## A161902.P16987721696122984040

`∩[A034793(n+1), A070760(n+1)]`
-/

namespace A161902.P16987721696122984040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161902.P16987721696122984040

/-! ## A161902.P1352214088410272023

`∩[A115689(n+1), A319388(n+1)]`
-/

namespace A161902.P1352214088410272023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161902.P1352214088410272023

/-! ## A161902.P2589212174516818425

`∩[A319388(n+1), A356417(n+1)]`
-/

namespace A161902.P2589212174516818425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161902.P2589212174516818425

/-! ## A161902.P10997107085131203949

`∩[A306273(n+1), A319388(n+1)]`
-/

namespace A161902.P10997107085131203949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161902.P10997107085131203949

/-!
# A161903: Convert n into a sequence of binary digits, apply one step of the rule 110 cellular automaton, and interpret the results as a binary integer.

The programs for A161903, the canonical program `A161903.P8124025879965449240` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161903 has offset 0).

The definition of A161903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161903.P13010192131535900567

`A057889(A269174(A057889(n)))`
-/

namespace A161903.P13010192131535900567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A269174 (A057889 n).toNat).toNat

end

end A161903.P13010192131535900567

namespace A161903

/-- `A057889(A269174(A057889(n)))` -/
def P13010192131535900567.Spec : Prop :=
  ∀ n, P13010192131535900567.a n = A161903 n

end A161903

/-! ## A161903.P8124025879965449240

`or(and(n, floor(-(n/2))), xor(n, 2*n))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161903

/-- `or(and(n, floor(-(n/2))), xor(n, 2*n))` -/
def P8124025879965449240.Spec : Prop :=
  ∀ n, P8124025879965449240.a n = A161903 n

theorem P8124025879965449240.correct : P8124025879965449240.Spec := by
  intro n
  simp only [A161903]

end A161903

/-! ## A161903.P6935519952213637245

`or(n, 2*n)-A213370(and(n, floor(n/2)))`
-/

namespace A161903.P6935519952213637245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * n) : ℤ) - A213370 (Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A161903.P6935519952213637245

namespace A161903

/-- `or(n, 2*n)-A213370(and(n, floor(n/2)))` -/
def P6935519952213637245.Spec : Prop :=
  ∀ n, P6935519952213637245.a n = A161903 n

end A161903

/-! ## A161903.P6266673310667347314

`or(xor(n, 2*n), A003188(and(2*n, -n)))`
-/

namespace A161903.P6266673310667347314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.xor n (2 * n) : ℤ) (A003188 (Int.land (2 * n : ℤ) (-(n : ℤ))).toNat)

end

end A161903.P6266673310667347314

namespace A161903

/-- `or(xor(n, 2*n), A003188(and(2*n, -n)))` -/
def P6266673310667347314.Spec : Prop :=
  ∀ n, P6266673310667347314.a n = A161903 n

end A161903

/-! ## A161903.P13342256370593513765

`or(A048724(n), A292272(n))`
-/

namespace A161903.P13342256370593513765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048724 n) (A292272 n)

end

end A161903.P13342256370593513765

namespace A161903

/-- `or(A048724(n), A292272(n))` -/
def P13342256370593513765.Spec : Prop :=
  ∀ n, P13342256370593513765.a n = A161903 n

end A161903

/-! ## A161903.P5146604838395465112

`(A269174(n)+A163617(n))/2`
-/

namespace A161903.P5146604838395465112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269174 n + A163617 n : ℚ) / 2

end

end A161903.P5146604838395465112

namespace A161903

/-- `(A269174(n)+A163617(n))/2` -/
def P5146604838395465112.Spec : Prop :=
  ∀ n, P5146604838395465112.a n = (A161903 n : ℚ)

end A161903

/-! ## A161903.P2973316153594363526

`or(A003188(2*n), A292272(n))`
-/

namespace A161903.P2973316153594363526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003188 (2 * n)) (A292272 n)

end

end A161903.P2973316153594363526

namespace A161903

/-- `or(A003188(2*n), A292272(n))` -/
def P2973316153594363526.Spec : Prop :=
  ∀ n, P2973316153594363526.a n = A161903 n

end A161903

/-! ## A161903.P11064765983534372300

`or(n-A048735(n), A048724(n))`
-/

namespace A161903.P11064765983534372300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - A048735 n) (A048724 n)

end

end A161903.P11064765983534372300

namespace A161903

/-- `or(n-A048735(n), A048724(n))` -/
def P11064765983534372300.Spec : Prop :=
  ∀ n, P11064765983534372300.a n = A161903 n

end A161903

/-! ## A161903.P4287205689422383676

`or(and(n, A003188(n)), A003188(2*n))`
-/

namespace A161903.P4287205689422383676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land (n : ℤ) (A003188 n)) (A003188 (2 * n))

end

end A161903.P4287205689422383676

namespace A161903

/-- `or(and(n, A003188(n)), A003188(2*n))` -/
def P4287205689422383676.Spec : Prop :=
  ∀ n, P4287205689422383676.a n = A161903 n

end A161903

/-! ## A161903.P2303410525734425172

`or(A048724(and(n, 2*n)/2), A048724(n))`
-/

namespace A161903.P2303410525734425172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048724 (SequenceMachineLib.roundAway ((Nat.land n (2 * n) : ℚ) / 2)).toNat) (A048724 n)

end

end A161903.P2303410525734425172

namespace A161903

/-- `or(A048724(and(n, 2*n)/2), A048724(n))` -/
def P2303410525734425172.Spec : Prop :=
  ∀ n, P2303410525734425172.a n = A161903 n

end A161903

/-! ## A161903.P14684157789513683838

`A213064(A048735(n))+A048724(n)`
-/

namespace A161903.P14684157789513683838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 (A048735 n).toNat + A048724 n

end

end A161903.P14684157789513683838

namespace A161903

/-- `A213064(A048735(n))+A048724(n)` -/
def P14684157789513683838.Spec : Prop :=
  ∀ n, P14684157789513683838.a n = A161903 n

end A161903

/-! ## A161903.P6343766680271594303

`A292272(A213370(n))+A048724(n)`
-/

namespace A161903.P6343766680271594303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (A213370 n).toNat + A048724 n

end

end A161903.P6343766680271594303

namespace A161903

/-- `A292272(A213370(n))+A048724(n)` -/
def P6343766680271594303.Spec : Prop :=
  ∀ n, P6343766680271594303.a n = A161903 n

end A161903

/-! ## A161903.P15304425959434191608

`A163617(n)-A213370(A048735(n))`
-/

namespace A161903.P15304425959434191608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 n - A213370 (A048735 n).toNat

end

end A161903.P15304425959434191608

namespace A161903

/-- `A163617(n)-A213370(A048735(n))` -/
def P15304425959434191608.Spec : Prop :=
  ∀ n, P15304425959434191608.a n = A161903 n

end A161903

/-! ## A161903.P9544972378726472770

`A213064(A048735(n))+A003188(2*n)`
-/

namespace A161903.P9544972378726472770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 (A048735 n).toNat + A003188 (2 * n)

end

end A161903.P9544972378726472770

namespace A161903

/-- `A213064(A048735(n))+A003188(2*n)` -/
def P9544972378726472770.Spec : Prop :=
  ∀ n, P9544972378726472770.a n = A161903 n

end A161903

/-! ## A161903.P13682746707609291114

`A163617(n)-A213370(A213370(n)/2)`
-/

namespace A161903.P13682746707609291114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 n - A213370 (SequenceMachineLib.roundAway ((A213370 n : ℚ) / 2)).toNat

end

end A161903.P13682746707609291114

namespace A161903

/-- `A163617(n)-A213370(A213370(n)/2)` -/
def P13682746707609291114.Spec : Prop :=
  ∀ n, P13682746707609291114.a n = A161903 n

end A161903

/-! ## A161903.P8106986577211727528

`or(A003188(A048728(n)/2), A048724(n))`
-/

namespace A161903.P8106986577211727528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003188 (SequenceMachineLib.roundAway ((A048728 n : ℚ) / 2)).toNat) (A048724 n)

end

end A161903.P8106986577211727528

namespace A161903

/-- `or(A003188(A048728(n)/2), A048724(n))` -/
def P8106986577211727528.Spec : Prop :=
  ∀ n, P8106986577211727528.a n = A161903 n

end A161903

/-! ## A161903.P7213754746777017174

`or(A048726(n), A048726(A048735(n)))/2`
-/

namespace A161903.P7213754746777017174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (A048726 n) (A048726 (A048735 n).toNat) : ℚ) / 2

end

end A161903.P7213754746777017174

namespace A161903

/-- `or(A048726(n), A048726(A048735(n)))/2` -/
def P7213754746777017174.Spec : Prop :=
  ∀ n, P7213754746777017174.a n = (A161903 n : ℚ)

end A161903

/-! ## A161903.P16484825629333211150

`or(xor(n, 2*n), A006370(and(2*n, -n)))`
-/

namespace A161903.P16484825629333211150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.xor n (2 * n) : ℤ) (A006370 (Int.land (2 * n : ℤ) (-(n : ℤ))).toNat)

end

end A161903.P16484825629333211150

namespace A161903

/-- `or(xor(n, 2*n), A006370(and(2*n, -n)))` -/
def P16484825629333211150.Spec : Prop :=
  ∀ n, P16484825629333211150.a n = A161903 n

end A161903

/-! ## A161903.P15730403878850598294

`or(xor(n, 2*n), A165351(and(2*n, -n)))`
-/

namespace A161903.P15730403878850598294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.xor n (2 * n) : ℤ) (A165351 (Int.land (2 * n : ℤ) (-(n : ℤ))).toNat)

end

end A161903.P15730403878850598294

namespace A161903

/-- `or(xor(n, 2*n), A165351(and(2*n, -n)))` -/
def P15730403878850598294.Spec : Prop :=
  ∀ n, P15730403878850598294.a n = A161903 n

end A161903

/-! ## A161903.P18066538756727403047

`A292272(A048735(2*n))+A048724(n)`
-/

namespace A161903.P18066538756727403047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (A048735 (2 * n)).toNat + A048724 n

end

end A161903.P18066538756727403047

namespace A161903

/-- `A292272(A048735(2*n))+A048724(n)` -/
def P18066538756727403047.Spec : Prop :=
  ∀ n, P18066538756727403047.a n = A161903 n

end A161903

/-!
# A161904: Array read by rows in which row n list the divisors of n, but if n is a square then the square root of n appears repeated. Also, the divisors appear as pairs (a,b), where a <= b, such that a*b = n.

The programs for A161904, there is no canonical definition to state claims against.
-/

/-! ## A161904.P4350600992099250111

`A162247(A295885(n+1)%A119097(n+2))`
-/

namespace A161904.P4350600992099250111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162247 (Int.tmod (A295885 (n + 1)) (A119097 (n + 2))).toNat

end

end A161904.P4350600992099250111

/-! ## A161904.P7758415186605366721

`A019555(A126759(n)^A225721(n+1))`
-/

namespace A161904.P7758415186605366721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (SequenceMachineLib.roundAway ((A126759 n : ℚ) ^ (A225721 (n + 1) : ℤ))).toNat

end

end A161904.P7758415186605366721

/-! ## A161904.P2555925107141213542

`gcd(A000027(A246277(n+1)!), A126759(n))`
-/

namespace A161904.P2555925107141213542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (Nat.factorial (A246277 (n + 1)).toNat)) (A126759 n)

end

end A161904.P2555925107141213542

/-! ## A161904.P10964580496248073522

`gcd(A126759(n), A131984(A007956(n+1)))`
-/

namespace A161904.P10964580496248073522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126759 n) (A131984 (A007956 (n + 1)).toNat)

end

end A161904.P10964580496248073522

/-! ## A161904.P408532253021878520

`A076277(n+1)+A000001(A214676(n+1))`
-/

namespace A161904.P408532253021878520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076277 (n + 1) + A000001 (A214676 (n + 1)).toNat

end

end A161904.P408532253021878520

/-!
# A161905: a(n) = 13*a(n-1) - 65*a(n-2) + 156*a(n-3) - 182*a(n-4) + 91*a(n-5) - 13*a(n-6), with a(1)..a(6) as shown.

The programs for A161905, there is no canonical definition to state claims against.
-/

/-! ## A161905.P4236049130420597381

`A104268(n+1)+floor(sqrt(A322073(3*n+2)))`
-/

namespace A161905.P4236049130420597381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104268 (n + 1) + Int.sqrt (A322073 (3 * n + 2))

end

end A161905.P4236049130420597381

/-! ## A161905.P11364410571218492421

`A037918(A095939(n)+A080513(n))`
-/

namespace A161905.P11364410571218492421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (A095939 n + A080513 n).toNat

end

end A161905.P11364410571218492421

/-!
# A161906: Triangle read by rows in which row n lists the divisors of n that are <= sqrt(n).

The programs for A161906, there is no canonical definition to state claims against.
-/

/-! ## A161906.P8025473490551838671

`round(A266977(n)/A340791(n+1))`
-/

namespace A161906.P8025473490551838671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A266977 n : ℚ) / (A340791 (n + 1) : ℚ))

end

end A161906.P8025473490551838671

/-! ## A161906.P3097486676483547789

`ceil(A099802(n+1)/A340791(n+1))`
-/

namespace A161906.P3097486676483547789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099802 (n + 1) : ℚ) / (A340791 (n + 1) : ℚ)⌉

end

end A161906.P3097486676483547789

/-! ## A161906.P13823650718924302626

`round(A092038(n+1)/A340791(n+1))`
-/

namespace A161906.P13823650718924302626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A092038 (n + 1) : ℚ) / (A340791 (n + 1) : ℚ))

end

end A161906.P13823650718924302626

/-! ## A161906.P5613955324041443043

`round(A156250(n+1)/A340791(n+1))`
-/

namespace A161906.P5613955324041443043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A156250 (n + 1) : ℚ) / (A340791 (n + 1) : ℚ))

end

end A161906.P5613955324041443043

/-! ## A161906.P8736003501365996036

`A065033(round((n+2)/A340791(n+1)))`
-/

namespace A161906.P8736003501365996036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A340791 (n + 1) : ℚ))).toNat

end

end A161906.P8736003501365996036

/-! ## A161906.P14355047401653735561

`∑[char[A211275(n+1)]]/A340791(n+1)`
-/

namespace A161906.P14355047401653735561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211275 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A340791 (n + 1) : ℚ)

end

end A161906.P14355047401653735561

/-! ## A161906.P12726931622111514980

`floor(A061017(2*n+1)/A340791(n+1))`
-/

namespace A161906.P12726931622111514980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061017 (2 * n + 1) : ℚ) / (A340791 (n + 1) : ℚ)⌋

end

end A161906.P12726931622111514980

/-! ## A161906.P2803657820972287522

`ceil(A000720(2*(n+1))/A340791(n+1))`
-/

namespace A161906.P2803657820972287522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000720 (2 * (n + 1)) : ℚ) / (A340791 (n + 1) : ℚ)⌉

end

end A161906.P2803657820972287522

/-! ## A161906.P18314212141109493442

`(∑[char[A094820(n+1)]]+1)/A340791(n+1)`
-/

namespace A161906.P18314212141109493442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / (A340791 (n + 1) : ℚ)

end

end A161906.P18314212141109493442

/-! ## A161906.P8192246692441040458

`A161908(n+1)*A319135(n+1)/A340791(n+1)`
-/

namespace A161906.P8192246692441040458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161908 (n + 1) * A319135 (n + 1) : ℚ) / (A340791 (n + 1) : ℚ)

end

end A161906.P8192246692441040458

/-!
# A161907: Primes of the form n^3+n+91.

The programs for A161907, there is no canonical definition to state claims against.
-/

/-! ## A161907.P427998091454405206

`A034262(A133160(n+1))+91`
-/

namespace A161907.P427998091454405206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 (A133160 (n + 1)).toNat + 91

end

end A161907.P427998091454405206

/-! ## A161907.P14485461605275261927

`p?[n^3+n+91]`
-/

namespace A161907.P14485461605275261927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + (n + 91)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A161907.P14485461605275261927

/-! ## A161907.P5707910101012265522

`or(1, p?[A034262(n)+91])`
-/

namespace A161907.P5707910101012265522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n + 91

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A161907.P5707910101012265522

/-! ## A161907.P980715283393550485

`A007318(∑[n])*p?[A034262(n)+91]`
-/

namespace A161907.P980715283393550485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n + 91

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A161907.P980715283393550485

/-! ## A161907.P1695841695278368807

`p?[A034262(n)+91]/A007318(C(2, n))`
-/

namespace A161907.P1695841695278368807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n + 91

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A161907.P1695841695278368807

/-!
# A161908: Array read by rows in which row n lists the divisors of n that are >= sqrt(n).

The programs for A161908, there is no canonical definition to state claims against.
-/

/-! ## A161908.P17624373273331986988

`A368312(n+1)+A319135(n+1)`
-/

namespace A161908.P17624373273331986988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368312 (n + 1) + A319135 (n + 1)

end

end A161908.P17624373273331986988

/-! ## A161908.P4371458127433055173

`A335572(n+1)-A319135(n+1)`
-/

namespace A161908.P4371458127433055173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335572 (n + 1) - A319135 (n + 1)

end

end A161908.P4371458127433055173

/-! ## A161908.P17222153211794410279

`∑[round(acot(A161906(n+1)))]/A319135(n+1)`
-/

namespace A161908.P17222153211794410279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A161906 (n + 1) : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A319135 (n + 1) : ℚ)

end

end A161908.P17222153211794410279

/-! ## A161908.P16322707745864310523

`(∑[char[A094820(n+1)]]+1)/A319135(n+1)`
-/

namespace A161908.P16322707745864310523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / (A319135 (n + 1) : ℚ)

end

end A161908.P16322707745864310523

/-! ## A161908.P6584029581705394577

`A061017(∑[A055027(n+1)])/A319135(n+1)`
-/

namespace A161908.P6584029581705394577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061017 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A319135 (n + 1) : ℚ)

end

end A161908.P6584029581705394577

/-! ## A161908.P6246265004936844845

`∑[A016394(A161906(n+1))]/A319135(n+1)`
-/

namespace A161908.P6246265004936844845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016394 (A161906 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A319135 (n + 1) : ℚ)

end

end A161908.P6246265004936844845

/-! ## A161908.P5102189114578379130

`∑[A077618(A161906(n+1)²)]/A319135(n+1)`
-/

namespace A161908.P5102189114578379130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (A161906 (n + 1) ^ 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A319135 (n + 1) : ℚ)

end

end A161908.P5102189114578379130

/-! ## A161908.P13760022651793366632

`∑[∑{d}[A161906(n+1), A008683(#)]]/A319135(n+1)`
-/

namespace A161908.P13760022651793366632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A008683 d

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A319135 (n + 1) : ℚ)

end

end A161908.P13760022651793366632

/-! ## A161908.P971355148014750871

`∑[A000010(A161906(n+1)²)%2]/A319135(n+1)`
-/

namespace A161908.P971355148014750871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A161906 (n + 1) ^ 2).toNat) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A319135 (n + 1) : ℚ)

end

end A161908.P971355148014750871

/-!
# A161909: Inverse binomial transform of A181586.

The programs for A161909, the canonical program `A161909.P10245088550154768326` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161909 has offset 0).

The definition of A161909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161909.P14488919994084831297

`∑[ogf(x^2/(1+4x+6x^2+4x^3))]`
-/

namespace A161909.P14488919994084831297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, 4, 6, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161909.P14488919994084831297

namespace A161909

/-- `∑[ogf(x^2/(1+4x+6x^2+4x^3))]` -/
def P14488919994084831297.Spec : Prop :=
  ∀ n, P14488919994084831297.a n = A161909 n

end A161909

/-! ## A161909.P7819093705282195871

`ogf(x^2/(1+3x+2x^2-2x^3-4x^4))`
-/

namespace A161909.P7819093705282195871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, 3, 2, -2, -4] n

end

end A161909.P7819093705282195871

namespace A161909

/-- `ogf(x^2/(1+3x+2x^2-2x^3-4x^4))` -/
def P7819093705282195871.Spec : Prop :=
  ∀ n, P7819093705282195871.a n = A161909 n

end A161909

/-! ## A161909.P10245088550154768326

`∑[(-1)^n*A000749(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A161909

/-- `∑[(-1)^n*A000749(n+1)]` -/
def P10245088550154768326.Spec : Prop :=
  ∀ n, P10245088550154768326.a n = A161909 n

theorem P10245088550154768326.correct : P10245088550154768326.Spec := by
  intro n
  simp only [A161909]

end A161909

/-! ## A161909.P11898119503062573658

`(A077925(n)-A077973(n))/2`
-/

namespace A161909.P11898119503062573658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077925 n - A077973 n : ℚ) / 2

end

end A161909.P11898119503062573658

namespace A161909

/-- `(A077925(n)-A077973(n))/2` -/
def P11898119503062573658.Spec : Prop :=
  ∀ n, P11898119503062573658.a n = (A161909 n : ℚ)

end A161909

/-! ## A161909.P5792956063383422955

`∑[∑[A038505(n)]*A033999(n)]`
-/

namespace A161909.P5792956063383422955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161909.P5792956063383422955

namespace A161909

/-- `∑[∑[A038505(n)]*A033999(n)]` -/
def P5792956063383422955.Spec : Prop :=
  ∀ n, P5792956063383422955.a n = A161909 n

end A161909

/-! ## A161909.P12991877331701503305

`∑[A000749(n+1)*A033999(n)]`
-/

namespace A161909.P12991877331701503305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161909.P12991877331701503305

namespace A161909

/-- `∑[A000749(n+1)*A033999(n)]` -/
def P12991877331701503305.Spec : Prop :=
  ∀ n, P12991877331701503305.a n = A161909 n

end A161909

/-! ## A161909.P17171449693207291742

`∑[A307047(A046691(A028310(n)))]`
-/

namespace A161909.P17171449693207291742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307047 (A046691 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161909.P17171449693207291742

namespace A161909

/-- `∑[A307047(A046691(A028310(n)))]` -/
def P17171449693207291742.Spec : Prop :=
  ∀ n, P17171449693207291742.a n = A161909 n

end A161909

/-!
# A161910: Y-toothpick sequence starting at the corner of an infinite hexagon from which protrudes a half toothpick with an angle = Pi/6.

The programs for A161910, there is no canonical definition to state claims against.
-/

/-! ## A161910.P2020445272134577772

`(A160120(n+1)-1)/3`
-/

namespace A161910.P2020445272134577772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160120 (n + 1) - 1 : ℚ) / 3

end

end A161910.P2020445272134577772

/-! ## A161910.P16424180607719334584

`2*A161832(n)-n`
-/

namespace A161910.P16424180607719334584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161832 n - (n : ℤ)

end

end A161910.P16424180607719334584

/-! ## A161910.P6300852455282532094

`floor(Δ[A162778(n)/3])`
-/

namespace A161910.P6300852455282532094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162778 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A161910.P6300852455282532094

/-! ## A161910.P1059499171327158062

`∑[Δ[A161830(n)]-1]`
-/

namespace A161910.P1059499171327158062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161830 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161910.P1059499171327158062

/-! ## A161910.P2061772244160994453

`floor(A160120(n+1)/3)`
-/

namespace A161910.P2061772244160994453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160120 (n + 1) : ℚ) / 3⌋

end

end A161910.P2061772244160994453

/-!
# A161911: a(n) is the n-th difference between consecutive primes minus the number of divisors of n.

The programs for A161911, the canonical program `A161911.P18164703308584755265` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161911 has offset 1).

The definition of A161911 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161911.P18164703308584755265

`A001223(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161911

/-- `A001223(n+1)-A000005(n+1)` -/
def P18164703308584755265.Spec : Prop :=
  ∀ n, P18164703308584755265.a n = A161911 (n + 1)

theorem P18164703308584755265.correct : P18164703308584755265.Spec := by
  intro n
  simp only [A161911, Nat.add_sub_cancel]

end A161911

/-! ## A161911.P10830688064251086174

`Δ[A001749(n+1)/4]-(∑{d}[n+1, C(2, #)!]-1)`
-/

namespace A161911.P10830688064251086174
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (((∑ d ∈ Nat.divisors (f2 n), Nat.factorial (Nat.choose 2 d) : ℕ) : ℤ) - 1 : ℚ)

end

end A161911.P10830688064251086174

namespace A161911

/-- `Δ[A001749(n+1)/4]-(∑{d}[n+1, C(2, #)!]-1)` -/
def P10830688064251086174.Spec : Prop :=
  ∀ n, P10830688064251086174.a n = (A161911 (n + 1) : ℚ)

end A161911

/-! ## A161911.P10758721922456629309

`A001223(n+1)-Δ[A006218(n)]`
-/

namespace A161911.P10758721922456629309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - (f1 (n + 1) - f1 n)

end

end A161911.P10758721922456629309

namespace A161911

/-- `A001223(n+1)-Δ[A006218(n)]` -/
def P10758721922456629309.Spec : Prop :=
  ∀ n, P10758721922456629309.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P4329865552929326212

`A001223(n+1)-Δ[A054519(n)]`
-/

namespace A161911.P4329865552929326212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - (f1 (n + 1) - f1 n)

end

end A161911.P4329865552929326212

namespace A161911

/-- `A001223(n+1)-Δ[A054519(n)]` -/
def P4329865552929326212.Spec : Prop :=
  ∀ n, P4329865552929326212.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P17603041714597905677

`A123128(n+1)-A062249(n+1)`
-/

namespace A161911.P17603041714597905677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123128 (n + 1) - A062249 (n + 1)

end

end A161911.P17603041714597905677

namespace A161911

/-- `A123128(n+1)-A062249(n+1)` -/
def P17603041714597905677.Spec : Prop :=
  ∀ n, P17603041714597905677.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P14905243887608892440

`A062968(n+1)-A147965(n+1)`
-/

namespace A161911.P14905243887608892440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - A147965 (n + 1)

end

end A161911.P14905243887608892440

namespace A161911

/-- `A062968(n+1)-A147965(n+1)` -/
def P14905243887608892440.Spec : Prop :=
  ∀ n, P14905243887608892440.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P11231758285233808999

`A152992(n+1)-A064677(n+1)`
-/

namespace A161911.P11231758285233808999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152992 (n + 1) - A064677 (n + 1)

end

end A161911.P11231758285233808999

namespace A161911

/-- `A152992(n+1)-A064677(n+1)` -/
def P11231758285233808999.Spec : Prop :=
  ∀ n, P11231758285233808999.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P10259532719943743232

`A147966(n+1)-A158907(n+1)`
-/

namespace A161911.P10259532719943743232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147966 (n + 1) - A158907 (n + 1)

end

end A161911.P10259532719943743232

namespace A161911

/-- `A147966(n+1)-A158907(n+1)` -/
def P10259532719943743232.Spec : Prop :=
  ∀ n, P10259532719943743232.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P18309941106673203537

`A046933(n+1)+1-A000005(n+1)`
-/

namespace A161911.P18309941106673203537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) + (1 - A000005 (n + 1))

end

end A161911.P18309941106673203537

namespace A161911

/-- `A046933(n+1)+1-A000005(n+1)` -/
def P18309941106673203537.Spec : Prop :=
  ∀ n, P18309941106673203537.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P14586148825148946600

`A001223(n+1)+1-A334954(n+1)`
-/

namespace A161911.P14586148825148946600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (1 - A334954 (n + 1))

end

end A161911.P14586148825148946600

namespace A161911

/-- `A001223(n+1)+1-A334954(n+1)` -/
def P14586148825148946600.Spec : Prop :=
  ∀ n, P14586148825148946600.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P1463134886126403180

`A001223(n+1)-A062011(n+1)/2`
-/

namespace A161911.P1463134886126403180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) - (A062011 (n + 1) : ℚ) / 2

end

end A161911.P1463134886126403180

namespace A161911

/-- `A001223(n+1)-A062011(n+1)/2` -/
def P1463134886126403180.Spec : Prop :=
  ∀ n, P1463134886126403180.a n = (A161911 (n + 1) : ℚ)

end A161911

/-! ## A161911.P12244895276143304254

`A001223(n+1)+A006218(n)-A006218(n+1)`
-/

namespace A161911.P12244895276143304254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A006218 n - A006218 (n + 1))

end

end A161911.P12244895276143304254

namespace A161911

/-- `A001223(n+1)+A006218(n)-A006218(n+1)` -/
def P12244895276143304254.Spec : Prop :=
  ∀ n, P12244895276143304254.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P1928818229316581290

`A065091(n+1)-(A000040(n+1)+A000005(n+1))`
-/

namespace A161911.P1928818229316581290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - (A000040 (n + 1) + A000005 (n + 1))

end

end A161911.P1928818229316581290

namespace A161911

/-- `A065091(n+1)-(A000040(n+1)+A000005(n+1))` -/
def P1928818229316581290.Spec : Prop :=
  ∀ n, P1928818229316581290.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P16513881401220674995

`Δ[A161912(n)]`
-/

namespace A161911.P16513881401220674995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161911.P16513881401220674995

namespace A161911

/-- `Δ[A161912(n)]` -/
def P16513881401220674995.Spec : Prop :=
  ∀ n, P16513881401220674995.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P1218156576416725898

`A161912(n+1)-A161912(n)`
-/

namespace A161911.P1218156576416725898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161912 (n + 1) - A161912 n

end

end A161911.P1218156576416725898

namespace A161911

/-- `A161912(n+1)-A161912(n)` -/
def P1218156576416725898.Spec : Prop :=
  ∀ n, P1218156576416725898.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P16071023571567401341

`Δ[Δ[A007504(n)]-A006218(n)]`
-/

namespace A161911.P16071023571567401341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161911.P16071023571567401341

namespace A161911

/-- `Δ[Δ[A007504(n)]-A006218(n)]` -/
def P16071023571567401341.Spec : Prop :=
  ∀ n, P16071023571567401341.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P798736978562140867

`Δ[Δ[A007504(n)]-A054519(n)]`
-/

namespace A161911.P798736978562140867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161911.P798736978562140867

namespace A161911

/-- `Δ[Δ[A007504(n)]-A054519(n)]` -/
def P798736978562140867.Spec : Prop :=
  ∀ n, P798736978562140867.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P4667877801226517043

`Δ[A000040(n+1)-A006218(n)]`
-/

namespace A161911.P4667877801226517043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161911.P4667877801226517043

namespace A161911

/-- `Δ[A000040(n+1)-A006218(n)]` -/
def P4667877801226517043.Spec : Prop :=
  ∀ n, P4667877801226517043.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P25901232441704515

`Δ[A006093(n+1)-A006218(n)]`
-/

namespace A161911.P25901232441704515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161911.P25901232441704515

namespace A161911

/-- `Δ[A006093(n+1)-A006218(n)]` -/
def P25901232441704515.Spec : Prop :=
  ∀ n, P25901232441704515.a n = A161911 (n + 1)

end A161911

/-! ## A161911.P3661647539674910741

`Δ[A000040(n+1)-A054519(n)]`
-/

namespace A161911.P3661647539674910741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161911.P3661647539674910741

namespace A161911

/-- `Δ[A000040(n+1)-A054519(n)]` -/
def P3661647539674910741.Spec : Prop :=
  ∀ n, P3661647539674910741.a n = A161911 (n + 1)

end A161911

/-!
# A161912: a(n) = A040976(n+1) - A006218(n).

The programs for A161912, the canonical program `A161912.P2457371058280528067` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161912 has offset 0).

The definition of A161912 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, A040976, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161912.P2457371058280528067

`A040976(n+1)-A006218(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161912

/-- `A040976(n+1)-A006218(n)` -/
def P2457371058280528067.Spec : Prop :=
  ∀ n, P2457371058280528067.a n = A161912 n

theorem P2457371058280528067.correct : P2457371058280528067.Spec := by
  intro n
  simp only [A161912]

end A161912

/-! ## A161912.P15004507274609937676

`A161911(n)+a(n-1)` with `a(0)=0`
-/

namespace A161912.P15004507274609937676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161911 n + a (n - 1)

end

end A161912.P15004507274609937676

namespace A161912

/-- `A161911(n)+a(n-1)` -/
def P15004507274609937676.Spec : Prop :=
  ∀ n, P15004507274609937676.a n = A161912 n

end A161912

/-! ## A161912.P8927604409099963345

`∑[A161911(A028310(n))]`
-/

namespace A161912.P8927604409099963345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161911 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161912.P8927604409099963345

namespace A161912

/-- `∑[A161911(A028310(n))]` -/
def P8927604409099963345.Spec : Prop :=
  ∀ n, P8927604409099963345.a n = A161912 n

end A161912

/-! ## A161912.P7350793317861816591

`A162197(n)+A061358(n)`
-/

namespace A161912.P7350793317861816591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162197 n + A061358 n

end

end A161912.P7350793317861816591

namespace A161912

/-- `A162197(n)+A061358(n)` -/
def P7350793317861816591.Spec : Prop :=
  ∀ n, P7350793317861816591.a n = A161912 n

end A161912

/-! ## A161912.P13228108509915767001

`A006093(n+1)-A054519(n)`
-/

namespace A161912.P13228108509915767001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A054519 n

end

end A161912.P13228108509915767001

namespace A161912

/-- `A006093(n+1)-A054519(n)` -/
def P13228108509915767001.Spec : Prop :=
  ∀ n, P13228108509915767001.a n = A161912 n

end A161912

/-! ## A161912.P10144783572703398800

`A039915(n+1)%A054519(n)`
-/

namespace A161912.P10144783572703398800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039915 (n + 1)) (A054519 n)

end

end A161912.P10144783572703398800

namespace A161912

/-- `A039915(n+1)%A054519(n)` -/
def P10144783572703398800.Spec : Prop :=
  ∀ n, P10144783572703398800.a n = A161912 n

end A161912

/-! ## A161912.P17301223906513445717

`Δ[A007504(n)]-(A054519(n)+1)`
-/

namespace A161912.P17301223906513445717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A054519 n + 1)

end

end A161912.P17301223906513445717

namespace A161912

/-- `Δ[A007504(n)]-(A054519(n)+1)` -/
def P17301223906513445717.Spec : Prop :=
  ∀ n, P17301223906513445717.a n = A161912 n

end A161912

/-! ## A161912.P6623196576647071475

`A006093(n+1)-(A006218(n)+1)`
-/

namespace A161912.P6623196576647071475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (A006218 n + 1)

end

end A161912.P6623196576647071475

namespace A161912

/-- `A006093(n+1)-(A006218(n)+1)` -/
def P6623196576647071475.Spec : Prop :=
  ∀ n, P6623196576647071475.a n = A161912 n

end A161912

/-! ## A161912.P4612487316205584494

`A000040(n+1)-(A054519(n)+1)`
-/

namespace A161912.P4612487316205584494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A054519 n + 1)

end

end A161912.P4612487316205584494

namespace A161912

/-- `A000040(n+1)-(A054519(n)+1)` -/
def P4612487316205584494.Spec : Prop :=
  ∀ n, P4612487316205584494.a n = A161912 n

end A161912

/-! ## A161912.P1668281096028537036

`A040976(n+1)+1-A054519(n)`
-/

namespace A161912.P1668281096028537036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (1 - A054519 n)

end

end A161912.P1668281096028537036

namespace A161912

/-- `A040976(n+1)+1-A054519(n)` -/
def P1668281096028537036.Spec : Prop :=
  ∀ n, P1668281096028537036.a n = A161912 n

end A161912

/-! ## A161912.P1293473629830676530

`A000040(n+1)-(A006218(n)+2)`
-/

namespace A161912.P1293473629830676530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A006218 n + 2)

end

end A161912.P1293473629830676530

namespace A161912

/-- `A000040(n+1)-(A006218(n)+2)` -/
def P1293473629830676530.Spec : Prop :=
  ∀ n, P1293473629830676530.a n = A161912 n

end A161912

/-! ## A161912.P17940976324543499509

`∑[A161911(n+1)]-A161911(n+1)`
-/

namespace A161912.P17940976324543499509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A161911 (n + 1)

end

end A161912.P17940976324543499509

namespace A161912

/-- `∑[A161911(n+1)]-A161911(n+1)` -/
def P17940976324543499509.Spec : Prop :=
  ∀ n, P17940976324543499509.a n = A161912 n

end A161912

/-! ## A161912.P445950495431805820

`A000040(n+1)%∑[A000005(C(2, n)+n)]`
-/

namespace A161912.P445950495431805820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161912.P445950495431805820

namespace A161912

/-- `A000040(n+1)%∑[A000005(C(2, n)+n)]` -/
def P445950495431805820.Spec : Prop :=
  ∀ n, P445950495431805820.a n = A161912 n

end A161912

/-! ## A161912.P11677791173808044403

`A000040(n+1)-∑[A000005(abs(1-n)+1)]`
-/

namespace A161912.P11677791173808044403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161912.P11677791173808044403

namespace A161912

/-- `A000040(n+1)-∑[A000005(abs(1-n)+1)]` -/
def P11677791173808044403.Spec : Prop :=
  ∀ n, P11677791173808044403.a n = A161912 n

end A161912

/-! ## A161912.P13431600646721950731

`A006218(n+1)+A052511(n+1)-A054519(n)`
-/

namespace A161912.P13431600646721950731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + (A052511 (n + 1) - A054519 n)

end

end A161912.P13431600646721950731

namespace A161912

/-- `A006218(n+1)+A052511(n+1)-A054519(n)` -/
def P13431600646721950731.Spec : Prop :=
  ∀ n, P13431600646721950731.a n = A161912 n

end A161912

/-! ## A161912.P8463122534241860189

`A000005(n+1)+A040976(n+1)-∑[A000005(n+1)]`
-/

namespace A161912.P8463122534241860189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A040976 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161912.P8463122534241860189

namespace A161912

/-- `A000005(n+1)+A040976(n+1)-∑[A000005(n+1)]` -/
def P8463122534241860189.Spec : Prop :=
  ∀ n, P8463122534241860189.a n = A161912 n

end A161912

/-! ## A161912.P12835705742521507176

`record[A000010(n+1)]-∑[∏{e}[n, #+1]]`
-/

namespace A161912.P12835705742521507176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A161912.P12835705742521507176

namespace A161912

/-- `record[A000010(n+1)]-∑[∏{e}[n, #+1]]` -/
def P12835705742521507176.Spec : Prop :=
  ∀ n, P12835705742521507176.a n = A161912 n

end A161912

/-! ## A161912.P13843687810461383217

`record[A000010(n+2)]%∑[∏{e}[n, #+1]]`
-/

namespace A161912.P13843687810461383217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A161912.P13843687810461383217

namespace A161912

/-- `record[A000010(n+2)]%∑[∏{e}[n, #+1]]` -/
def P13843687810461383217.Spec : Prop :=
  ∀ n, P13843687810461383217.a n = A161912 n

end A161912

/-! ## A161912.P2733088753423014624

`record[A000010(n+1)]-A054519(n)`
-/

namespace A161912.P2733088753423014624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A054519 n

end

end A161912.P2733088753423014624

namespace A161912

/-- `record[A000010(n+1)]-A054519(n)` -/
def P2733088753423014624.Spec : Prop :=
  ∀ n, P2733088753423014624.a n = A161912 n

end A161912

/-! ## A161912.P17234708866136553348

`A000010(A000040(n+1))-A054519(n)`
-/

namespace A161912.P17234708866136553348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000040 (n + 1)).toNat - A054519 n

end

end A161912.P17234708866136553348

namespace A161912

/-- `A000010(A000040(n+1))-A054519(n)` -/
def P17234708866136553348.Spec : Prop :=
  ∀ n, P17234708866136553348.a n = A161912 n

end A161912

/-!
# A161913: Numbers k such that A001223(k) <> A000005(k).

The programs for A161913, the canonical program `A161913.P5348750324054830820` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161913 has offset 1).

The definition of A161913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161913.P5348750324054830820

`comp[A068526(n+1)-1]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161913

/-- `comp[A068526(n+1)-1]+1` -/
def P5348750324054830820.Spec : Prop :=
  ∀ n, (P5348750324054830820.a n : ℤ) = A161913 (n + 1)

theorem P5348750324054830820.correct : P5348750324054830820.Spec := by
  intro n
  simp only [A161913, Nat.add_sub_cancel]

end A161913

/-! ## A161913.P15947767958621063555

`∪[A162188(n+1), A162189(n+1)]`
-/

namespace A161913.P15947767958621063555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161913.P15947767958621063555

namespace A161913

/-- `∪[A162188(n+1), A162189(n+1)]` -/
def P15947767958621063555.Spec : Prop :=
  ∀ n, (P15947767958621063555.a n : ℤ) = A161913 (n + 1)

end A161913

/-! ## A161913.P9693418539827902374

`eq[char[A068526(n+1)], A000007(n)]`
-/

namespace A161913.P9693418539827902374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A161913.P9693418539827902374

namespace A161913

/-- `eq[char[A068526(n+1)], A000007(n)]` -/
def P9693418539827902374.Spec : Prop :=
  ∀ n, (P9693418539827902374.a n : ℤ) = A161913 (n + 1)

end A161913

/-! ## A161913.P15590560115784777172

`eq[char[A068526(n+1)], A000038(n)]`
-/

namespace A161913.P15590560115784777172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A161913.P15590560115784777172

namespace A161913

/-- `eq[char[A068526(n+1)], A000038(n)]` -/
def P15590560115784777172.Spec : Prop :=
  ∀ n, (P15590560115784777172.a n : ℤ) = A161913 (n + 1)

end A161913

/-! ## A161913.P7992734001973173545

`eq[A113679(n)+2, char[A068526(n+1)]]`
-/

namespace A161913.P7992734001973173545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A161913.P7992734001973173545

namespace A161913

/-- `eq[A113679(n)+2, char[A068526(n+1)]]` -/
def P7992734001973173545.Spec : Prop :=
  ∀ n, (P7992734001973173545.a n : ℤ) = A161913 (n + 1)

end A161913

/-! ## A161913.P15686641538106059621

`eq[n, A028310(n)-char[A068526(n+1)]]`
-/

namespace A161913.P15686641538106059621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161913.P15686641538106059621

namespace A161913

/-- `eq[n, A028310(n)-char[A068526(n+1)]]` -/
def P15686641538106059621.Spec : Prop :=
  ∀ n, (P15686641538106059621.a n : ℤ) = A161913 (n + 1)

end A161913

/-! ## A161913.P4539215643884673171

`eq[char[A068526(n+1)], A151933(n)]`
-/

namespace A161913.P4539215643884673171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A161913.P4539215643884673171

namespace A161913

/-- `eq[char[A068526(n+1)], A151933(n)]` -/
def P4539215643884673171.Spec : Prop :=
  ∀ n, (P4539215643884673171.a n : ℤ) = A161913 (n + 1)

end A161913

/-!
# A161914: Gaps between the nontrivial zeros of Riemann zeta function, rounded to nearest integers, with a(1)=14.

The programs for A161914, there is no canonical definition to state claims against.
-/

/-! ## A161914.P9577071504515904012

`A162774(n+1)-Δ[A162781(C(2, n)+n)]`
-/

namespace A161914.P9577071504515904012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162774 (n + 1) - (f1 (n + 1) - f1 n)

end

end A161914.P9577071504515904012

/-! ## A161914.P8981057843757907759

`A162774(n+1)-Δ[A162781(abs(1-n)+1)]`
-/

namespace A161914.P8981057843757907759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162774 (n + 1) - (f1 (n + 1) - f1 n)

end

end A161914.P8981057843757907759

/-! ## A161914.P15086152322449363586

`A162774(n+1)-Δ[A162781(A028310(n))]%4`
-/

namespace A161914.P15086152322449363586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162774 (n + 1) - Int.tmod (f1 (n + 1) - f1 n) 4

end

end A161914.P15086152322449363586

/-! ## A161914.P8124513949082057704

`(A162774(n+1)-Δ[A162781(A233583(n+1))])%15`
-/

namespace A161914.P8124513949082057704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162774 (n + 1) - (f1 (n + 1) - f1 n)) 15

end

end A161914.P8124513949082057704

/-! ## A161914.P10067239183992672190

`(A162774(n+1)-Δ[A162781(A065033(2*n))])%15`
-/

namespace A161914.P10067239183992672190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162774 (n + 1) - (f1 (n + 1) - f1 n)) 15

end

end A161914.P10067239183992672190

/-! ## A161914.P8701387976166868732

`(A162774(n+1)-Δ[A162781(A000007(n)+n)])%15`
-/

namespace A161914.P8701387976166868732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162774 (n + 1) - (f1 (n + 1) - f1 n)) 15

end

end A161914.P8701387976166868732

/-! ## A161914.P11406230563331499363

`A162774(n+1)+A162781(A028310(n))-A162781(n+1)`
-/

namespace A161914.P11406230563331499363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162774 (n + 1) + (A162781 (A028310 n).toNat - A162781 (n + 1))

end

end A161914.P11406230563331499363

/-! ## A161914.P12056750840120890047

`A162774(n+1)+A162781(A233583(n+1))-A162781(n+1)`
-/

namespace A161914.P12056750840120890047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162774 (n + 1) + (A162781 (A233583 (n + 1)).toNat - A162781 (n + 1))

end

end A161914.P12056750840120890047

/-! ## A161914.P12479057697400276342

`A162774(n+1)-A162782(n+1)`
-/

namespace A161914.P12479057697400276342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162774 (n + 1) - A162782 (n + 1)

end

end A161914.P12479057697400276342

/-! ## A161914.P316814590356707399

`Δ[A000040(n+1)%2*A162780(A000038(n)+n)]`
-/

namespace A161914.P316814590356707399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A162780 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161914.P316814590356707399

/-!
# A161915: Digital root of Ramanujan primes (A104272).

The programs for A161915, there is no canonical definition to state claims against.
-/

/-! ## A161915.P13978101279345142266

`dr(A104272(n+1))`
-/

namespace A161915.P13978101279345142266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A104272 (n + 1))

end

end A161915.P13978101279345142266

/-! ## A161915.P13018233357083564712

`A104272(Δ[n²]-n)%9`
-/

namespace A161915.P13018233357083564712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104272 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) 9

end

end A161915.P13018233357083564712

/-! ## A161915.P1545958614728287309

`dr(A182873(n)+a(n-1))` with `a(0)=2`
-/

namespace A161915.P1545958614728287309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.digitalRoot (A182873 n + (a (n - 1) : ℤ))

end

end A161915.P1545958614728287309

/-! ## A161915.P16614056232000607082

`dr(p?[A104272(4/2-(1-n))])`
-/

namespace A161915.P16614056232000607082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 - (1 - (n : ℤ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A161915.P16614056232000607082

/-! ## A161915.P11310559740823892732

`dr(A034694(A084139(n)))`
-/

namespace A161915.P11310559740823892732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A034694 (A084139 n).toNat)

end

end A161915.P11310559740823892732

/-! ## A161915.P15585636763449132416

`A038194(A179196(n+1))`
-/

namespace A161915.P15585636763449132416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (A179196 (n + 1)).toNat

end

end A161915.P15585636763449132416

/-! ## A161915.P8138329415194674257

`dr(A047268(A084139(n)+1))`
-/

namespace A161915.P8138329415194674257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A047268 (A084139 n + 1).toNat)

end

end A161915.P8138329415194674257

/-! ## A161915.P3059196657674194746

`dr(A064989(A168425(n+1)))`
-/

namespace A161915.P3059196657674194746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A064989 (A168425 (n + 1)).toNat)

end

end A161915.P3059196657674194746

/-! ## A161915.P15641914837857602597

`A010888(A104272(n+1)+9)`
-/

namespace A161915.P15641914837857602597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A104272 (n + 1) + 9).toNat

end

end A161915.P15641914837857602597

/-! ## A161915.P3156712294853509795

`dr(A233739(n+1)+A000040(2*(n+1)))`
-/

namespace A161915.P3156712294853509795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A233739 (n + 1) + A000040 (2 * (n + 1)))

end

end A161915.P3156712294853509795

/-! ## A161915.P16901450792085085368

`A014963(A233739(n+1)+A000040(2*(n+1)))%9`
-/

namespace A161915.P16901450792085085368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A233739 (n + 1) + A000040 (2 * (n + 1))).toNat) 9

end

end A161915.P16901450792085085368

/-! ## A161915.P17814937572881066213

`dr(A380277(∑[n+1]))`
-/

namespace A161915.P17814937572881066213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A380277 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A161915.P17814937572881066213

/-!
# A161916: The smallest k > 0 such that A010060(n+k)=A010060(n).

The programs for A161916, the canonical program `A161916.P11803186910963593220` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161916 has offset 0).

The definition of A161916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161916.P11803186910963593220

`dr(or(38, Δ[val(n+1, 2)]))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161916

/-- `dr(or(38, Δ[val(n+1, 2)]))` -/
def P11803186910963593220.Spec : Prop :=
  ∀ n, (P11803186910963593220.a n : ℤ) = A161916 n

theorem P11803186910963593220.correct : P11803186910963593220.Spec := by
  intro n
  simp only [A161916]

end A161916

/-! ## A161916.P16509866728161754708

`Δ[val(n+1, 2)%2]+2`
-/

namespace A161916.P16509866728161754708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2

end

end A161916.P16509866728161754708

namespace A161916

/-- `Δ[val(n+1, 2)%2]+2` -/
def P16509866728161754708.Spec : Prop :=
  ∀ n, P16509866728161754708.a n = A161916 n

end A161916

/-! ## A161916.P15475529820150483186

`2-Δ[gcd(2, val(n+1, 2))]`
-/

namespace A161916.P15475529820150483186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A161916.P15475529820150483186

namespace A161916

/-- `2-Δ[gcd(2, val(n+1, 2))]` -/
def P15475529820150483186.Spec : Prop :=
  ∀ n, P15475529820150483186.a n = A161916 n

end A161916

/-! ## A161916.P16210860949664940065

`Δ[and(1, val(n+1, 2))]+2`
-/

namespace A161916.P16210860949664940065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2

end

end A161916.P16210860949664940065

namespace A161916

/-- `Δ[and(1, val(n+1, 2))]+2` -/
def P16210860949664940065.Spec : Prop :=
  ∀ n, P16210860949664940065.a n = A161916 n

end A161916

/-! ## A161916.P2433426213673238808

`Δ[or(6, val(n+1, 2))]+2`
-/

namespace A161916.P2433426213673238808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2

end

end A161916.P2433426213673238808

namespace A161916

/-- `Δ[or(6, val(n+1, 2))]+2` -/
def P2433426213673238808.Spec : Prop :=
  ∀ n, P2433426213673238808.a n = A161916 n

end A161916

/-! ## A161916.P15770392898120728087

`2-Δ[xor(n, n+1)%3]`
-/

namespace A161916.P15770392898120728087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A161916.P15770392898120728087

namespace A161916

/-- `2-Δ[xor(n, n+1)%3]` -/
def P15770392898120728087.Spec : Prop :=
  ∀ n, P15770392898120728087.a n = A161916 n

end A161916

/-! ## A161916.P17786015923728976545

`Δ[and(n, -(n+2))%3]+2`
-/

namespace A161916.P17786015923728976545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n + 2 : ℤ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A161916.P17786015923728976545

namespace A161916

/-- `Δ[and(n, -(n+2))%3]+2` -/
def P17786015923728976545.Spec : Prop :=
  ∀ n, P17786015923728976545.a n = A161916 n

end A161916

/-! ## A161916.P12043804459299636884

`Δ[(n-and(n, n+1))%3]+2`
-/

namespace A161916.P12043804459299636884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - (Nat.land n (n + 1) : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A161916.P12043804459299636884

namespace A161916

/-- `Δ[(n-and(n, n+1))%3]+2` -/
def P12043804459299636884.Spec : Prop :=
  ∀ n, P12043804459299636884.a n = A161916 n

end A161916

/-! ## A161916.P11948900243326645312

`Δ[or(2*n, log2(and(n+1, -(n+1))))]`
-/

namespace A161916.P11948900243326645312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (SequenceMachineLib.roundAway (Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161916.P11948900243326645312

namespace A161916

/-- `Δ[or(2*n, log2(and(n+1, -(n+1))))]` -/
def P11948900243326645312.Spec : Prop :=
  ∀ n, P11948900243326645312.a n = A161916 n

end A161916

/-! ## A161916.P3317333921920091992

`Δ[A096268(n)]+2`
-/

namespace A161916.P3317333921920091992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A161916.P3317333921920091992

namespace A161916

/-- `Δ[A096268(n)]+2` -/
def P3317333921920091992.Spec : Prop :=
  ∀ n, P3317333921920091992.a n = A161916 n

end A161916

/-! ## A161916.P12615379481951414488

`3-A091297(n+1)`
-/

namespace A161916.P12615379481951414488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A091297 (n + 1)

end

end A161916.P12615379481951414488

namespace A161916

/-- `3-A091297(n+1)` -/
def P12615379481951414488.Spec : Prop :=
  ∀ n, P12615379481951414488.a n = A161916 n

end A161916

/-! ## A161916.P3409681107206992053

`A249032(n+1)-3`
-/

namespace A161916.P3409681107206992053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249032 (n + 1) - 3

end

end A161916.P3409681107206992053

namespace A161916

/-- `A249032(n+1)-3` -/
def P3409681107206992053.Spec : Prop :=
  ∀ n, P3409681107206992053.a n = A161916 n

end A161916

/-! ## A161916.P11727328252694300212

`abs(Δ[A029884(2*n)])`
-/

namespace A161916.P11727328252694300212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029884 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A161916.P11727328252694300212

namespace A161916

/-- `abs(Δ[A029884(2*n)])` -/
def P11727328252694300212.Spec : Prop :=
  ∀ n, P11727328252694300212.a n = A161916 n

end A161916

/-! ## A161916.P741682023142888081

`Δ[Δ[A123087(n)]]+2`
-/

namespace A161916.P741682023142888081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A161916.P741682023142888081

namespace A161916

/-- `Δ[Δ[A123087(n)]]+2` -/
def P741682023142888081.Spec : Prop :=
  ∀ n, P741682023142888081.a n = A161916 n

end A161916

/-! ## A161916.P13824040285717989624

`Δ[Δ[A197911(n)]]+2`
-/

namespace A161916.P13824040285717989624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A161916.P13824040285717989624

namespace A161916

/-- `Δ[Δ[A197911(n)]]+2` -/
def P13824040285717989624.Spec : Prop :=
  ∀ n, P13824040285717989624.a n = A161916 n

end A161916

/-! ## A161916.P13468401929595612551

`2-Δ[Δ[A050292(n)]]`
-/

namespace A161916.P13468401929595612551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A161916.P13468401929595612551

namespace A161916

/-- `2-Δ[Δ[A050292(n)]]` -/
def P13468401929595612551.Spec : Prop :=
  ∀ n, P13468401929595612551.a n = A161916 n

end A161916

/-!
# A161918: Numbers n such that the sum of the divisors minus the sum of the prime factors (counted with multiplicity) is equal to n+1.

The programs for A161918, the canonical program `A161918.P17534431257680054511` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161918 has offset 1).

The definition of A161918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9990 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161918.P5192052916750380430

`eq[A033273(n+1), A051709(n+1)]+1`
-/

namespace A161918.P5192052916750380430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A161918.P5192052916750380430

namespace A161918

/-- `eq[A033273(n+1), A051709(n+1)]+1` -/
def P5192052916750380430.Spec : Prop :=
  ∀ n, (P5192052916750380430.a n : ℤ) = A161918 (n + 1)

end A161918

/-! ## A161918.P12902331872837339669

`eq[A001222(n+2), A051709(n+2)]+2`
-/

namespace A161918.P12902331872837339669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A161918.P12902331872837339669

namespace A161918

/-- `eq[A001222(n+2), A051709(n+2)]+2` -/
def P12902331872837339669.Spec : Prop :=
  ∀ n, (P12902331872837339669.a n : ℤ) = A161918 (n + 1)

end A161918

/-! ## A161918.P17534431257680054511

`filter[A030513(n+1), A353627(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A161918

/-- `filter[A030513(n+1), A353627(#)]` -/
def P17534431257680054511.Spec : Prop :=
  ∀ n, P17534431257680054511.a n = A161918 (n + 1)

theorem P17534431257680054511.correct : P17534431257680054511.Spec := by
  intro n
  simp only [A161918, Nat.add_sub_cancel]

end A161918

/-! ## A161918.P16029954426203778824

`filter[A030513(n+1), A353628(#)]`
-/

namespace A161918.P16029954426203778824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A161918.P16029954426203778824

namespace A161918

/-- `filter[A030513(n+1), A353628(#)]` -/
def P16029954426203778824.Spec : Prop :=
  ∀ n, P16029954426203778824.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P1318103093943575048

`filter[A030513(n+1), A359824(#)]`
-/

namespace A161918.P1318103093943575048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A161918.P1318103093943575048

namespace A161918

/-- `filter[A030513(n+1), A359824(#)]` -/
def P1318103093943575048.Spec : Prop :=
  ∀ n, P1318103093943575048.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P14357885232303976120

`filter[A030513(n+1), A374128(#)]`
-/

namespace A161918.P14357885232303976120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A161918.P14357885232303976120

namespace A161918

/-- `filter[A030513(n+1), A374128(#)]` -/
def P14357885232303976120.Spec : Prop :=
  ∀ n, P14357885232303976120.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P15242361812275208039

`filter[A007422(n+1), A374128(#)]`
-/

namespace A161918.P15242361812275208039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A161918.P15242361812275208039

namespace A161918

/-- `filter[A007422(n+1), A374128(#)]` -/
def P15242361812275208039.Spec : Prop :=
  ∀ n, P15242361812275208039.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P15368534119861284090

`filter[A007422(n+2), A353627(#)]`
-/

namespace A161918.P15368534119861284090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A161918.P15368534119861284090

namespace A161918

/-- `filter[A007422(n+2), A353627(#)]` -/
def P15368534119861284090.Spec : Prop :=
  ∀ n, P15368534119861284090.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P15552451237740177633

`filter[A007422(n+2), A353628(#)]`
-/

namespace A161918.P15552451237740177633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A161918.P15552451237740177633

namespace A161918

/-- `filter[A007422(n+2), A353628(#)]` -/
def P15552451237740177633.Spec : Prop :=
  ∀ n, P15552451237740177633.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P1207591516378948744

`filter[A007422(n+2), A359824(#)]`
-/

namespace A161918.P1207591516378948744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A161918.P1207591516378948744

namespace A161918

/-- `filter[A007422(n+2), A359824(#)]` -/
def P1207591516378948744.Spec : Prop :=
  ∀ n, P1207591516378948744.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P11700776900984438541

`filter[A332269(n+1), A374128(#)]`
-/

namespace A161918.P11700776900984438541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A161918.P11700776900984438541

namespace A161918

/-- `filter[A332269(n+1), A374128(#)]` -/
def P11700776900984438541.Spec : Prop :=
  ∀ n, P11700776900984438541.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P10010782894387160247

`filter[A323644(n+2), A353627(#)]`
-/

namespace A161918.P10010782894387160247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A161918.P10010782894387160247

namespace A161918

/-- `filter[A323644(n+2), A353627(#)]` -/
def P10010782894387160247.Spec : Prop :=
  ∀ n, P10010782894387160247.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P8179022718668332175

`filter[A323644(n+2), A353628(#)]`
-/

namespace A161918.P8179022718668332175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A161918.P8179022718668332175

namespace A161918

/-- `filter[A323644(n+2), A353628(#)]` -/
def P8179022718668332175.Spec : Prop :=
  ∀ n, P8179022718668332175.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P10102097816325861008

`filter[A323644(n+2), A374128(#)]`
-/

namespace A161918.P10102097816325861008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A161918.P10102097816325861008

namespace A161918

/-- `filter[A323644(n+2), A374128(#)]` -/
def P10102097816325861008.Spec : Prop :=
  ∀ n, P10102097816325861008.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P2098837946779379779

`filter[A346041(n+2), A374128(#)]`
-/

namespace A161918.P2098837946779379779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A161918.P2098837946779379779

namespace A161918

/-- `filter[A346041(n+2), A374128(#)]` -/
def P2098837946779379779.Spec : Prop :=
  ∀ n, P2098837946779379779.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P9625162180508266924

`filter[A077135(n+1), A181183(#)]`
-/

namespace A161918.P9625162180508266924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A161918.P9625162180508266924

namespace A161918

/-- `filter[A077135(n+1), A181183(#)]` -/
def P9625162180508266924.Spec : Prop :=
  ∀ n, P9625162180508266924.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P5974353087542934154

`filter[A077135(n+1), A262684(#)]`
-/

namespace A161918.P5974353087542934154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A161918.P5974353087542934154

namespace A161918

/-- `filter[A077135(n+1), A262684(#)]` -/
def P5974353087542934154.Spec : Prop :=
  ∀ n, P5974353087542934154.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P9565343636551668973

`filter[A077135(n+1), A295316(#)]`
-/

namespace A161918.P9565343636551668973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A161918.P9565343636551668973

namespace A161918

/-- `filter[A077135(n+1), A295316(#)]` -/
def P9565343636551668973.Spec : Prop :=
  ∀ n, P9565343636551668973.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P6833661996669056558

`filter[A077135(n+1), A353788(#)]`
-/

namespace A161918.P6833661996669056558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A161918.P6833661996669056558

namespace A161918

/-- `filter[A077135(n+1), A353788(#)]` -/
def P6833661996669056558.Spec : Prop :=
  ∀ n, P6833661996669056558.a n = A161918 (n + 1)

end A161918

/-! ## A161918.P15038862952467557536

`filter[A077135(n+1), A354927(#)]`
-/

namespace A161918.P15038862952467557536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A161918.P15038862952467557536

namespace A161918

/-- `filter[A077135(n+1), A354927(#)]` -/
def P15038862952467557536.Spec : Prop :=
  ∀ n, P15038862952467557536.a n = A161918 (n + 1)

end A161918

/-!
# A161919: Permutation of natural numbers: concatenation of subsequences A161924(A000070(k-1)..A026905(k)), k >= 1, each sorted into ascending order.

The programs for A161919, there is no canonical definition to state claims against.
-/

/-! ## A161919.P938235644441297251

`A267111(∑[A340085(n+1)-A199767(2*n+1)²%3])`
-/

namespace A161919.P938235644441297251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340085 (n + 1) - Int.tmod (A199767 (2 * n + 1) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267111 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161919.P938235644441297251

/-! ## A161919.P11031924499998924132

`A215366(n+1)-A008836(A229308(3*(n+1)))`
-/

namespace A161919.P11031924499998924132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (n + 1) - A008836 (A229308 (3 * (n + 1))).toNat

end

end A161919.P11031924499998924132

/-!
# A161920: a(n) = A161511(A004760(n)).

The programs for A161920, there is no canonical definition to state claims against.
-/

/-! ## A161920.P3141821821181232690

`ceil(log2(n+1))+A055941(n)+1`
-/

namespace A161920.P3141821821181232690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉ + (A055941 n + 1)

end

end A161920.P3141821821181232690

/-! ## A161920.P2590802603950498560

`A161511(2^ceil(log2(n+1))+n)`
-/

namespace A161920.P2590802603950498560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + (n : ℚ))).toNat

end

end A161920.P2590802603950498560

/-! ## A161920.P11397422533051666474

`floor(log2(Δ[n²]*A329369(n)+2))`
-/

namespace A161920.P11397422533051666474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A329369 n + 2).toNat

end

end A161920.P11397422533051666474

/-! ## A161920.P11924637648319522272

`A196048(p?[A209636(n)])`
-/

namespace A161920.P11924637648319522272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A161920.P11924637648319522272

/-! ## A161920.P17128161419009030436

`A243503(2*A253565(n))`
-/

namespace A161920.P17128161419009030436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (2 * A253565 n).toNat

end

end A161920.P17128161419009030436

/-! ## A161920.P6779586697876089473

`A070941(n)+A055941(n)`
-/

namespace A161920.P6779586697876089473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n + A055941 n

end

end A161920.P6779586697876089473

/-! ## A161920.P12849905389201295323

`A055941(A206332(2*n+1))`
-/

namespace A161920.P12849905389201295323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A206332 (2 * n + 1)).toNat

end

end A161920.P12849905389201295323

/-! ## A161920.P12679410914138304407

`A055941(2*A004760(n+2))`
-/

namespace A161920.P12679410914138304407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (2 * A004760 (n + 2)).toNat

end

end A161920.P12679410914138304407

/-! ## A161920.P6347367011971464272

`A161511(n)+A008687(n+1)`
-/

namespace A161920.P6347367011971464272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 n + A008687 (n + 1)

end

end A161920.P6347367011971464272

/-! ## A161920.P4850042932102271761

`A359043(n)+1-A359495(n)`
-/

namespace A161920.P4850042932102271761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359043 n + (1 - A359495 n)

end

end A161920.P4850042932102271761

/-!
# A161921: The bisection A053445(2n+1).

The programs for A161921, there is no canonical definition to state claims against.
-/

/-! ## A161921.P1850449244070434818

`A053445(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161921.P1850449244070434818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 (2 * n + 1)

end

end A161921.P1850449244070434818

/-! ## A161921.P8066576789730175170

`Δ[A194795(Δ[n²])]`
-/

namespace A161921.P8066576789730175170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194795 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161921.P8066576789730175170

/-! ## A161921.P11950420546561690630

`Δ[Δ[A270143(2*n)]]`
-/

namespace A161921.P11950420546561690630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270143 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161921.P11950420546561690630

/-! ## A161921.P6401302186047233044

`A182747(n+1)-A182746(n+1)`
-/

namespace A161921.P6401302186047233044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182747 (n + 1) - A182746 (n + 1)

end

end A161921.P6401302186047233044

/-! ## A161921.P3331990904636388687

`A182747(n+1)-A002865(2*(n+1))`
-/

namespace A161921.P3331990904636388687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182747 (n + 1) - A002865 (2 * (n + 1))

end

end A161921.P3331990904636388687

/-! ## A161921.P17393600609572492350

`A002865(2*n+3)-A182746(n+1)`
-/

namespace A161921.P17393600609572492350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 3) - A182746 (n + 1)

end

end A161921.P17393600609572492350

/-! ## A161921.P6925295529379054358

`A119907(2*n+1)-A119907(2*n)`
-/

namespace A161921.P6925295529379054358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119907 (2 * n + 1) - A119907 (2 * n)

end

end A161921.P6925295529379054358

/-! ## A161921.P3643109828740879821

`Δ[A087787(2*n+1)-A087787(2*n)]`
-/

namespace A161921.P3643109828740879821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 (2 * n + 1) - A087787 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161921.P3643109828740879821

/-! ## A161921.P11419356936772960994

`A000041(2*n+1)-A117989(2*(n+1))`
-/

namespace A161921.P11419356936772960994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) - A117989 (2 * (n + 1))

end

end A161921.P11419356936772960994

/-! ## A161921.P16350008388233407375

`A002865(2*n+3)-A002865(2*(n+1))`
-/

namespace A161921.P16350008388233407375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 3) - A002865 (2 * (n + 1))

end

end A161921.P16350008388233407375

/-! ## A161921.P12307576887724704480

`A083751(2*n+3)-A083751(2*(n+1))`
-/

namespace A161921.P12307576887724704480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (2 * n + 3) - A083751 (2 * (n + 1))

end

end A161921.P12307576887724704480

/-! ## A161921.P7340006063992665631

`A187219(2*n+3)-A187219(2*(n+1))`
-/

namespace A161921.P7340006063992665631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (2 * n + 3) - A187219 (2 * (n + 1))

end

end A161921.P7340006063992665631

/-! ## A161921.P10881493378397387450

`A000041(2*n+1)%A117989(2*n+2)`
-/

namespace A161921.P10881493378397387450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (2 * n + 1)) (A117989 (2 * n + 2))

end

end A161921.P10881493378397387450

/-! ## A161921.P13406065043768350423

`A000070(2*n+1)-(A117989(2*(n+1))+A000070(2*n))`
-/

namespace A161921.P13406065043768350423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (2 * n + 1) - (A117989 (2 * (n + 1)) + A000070 (2 * n))

end

end A161921.P13406065043768350423

/-! ## A161921.P390749366882501330

`∑[A160643(n+1)]`
-/

namespace A161921.P390749366882501330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161921.P390749366882501330

/-! ## A161921.P7047483038982539737

`A160644(n+1)+A072380(2*n)`
-/

namespace A161921.P7047483038982539737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160644 (n + 1) + A072380 (2 * n)

end

end A161921.P7047483038982539737

/-! ## A161921.P8547338157249829462

`Δ[A240690(2*(n+1))-A240690(2*n+1)]`
-/

namespace A161921.P8547338157249829462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240690 (2 * (n + 1)) - A240690 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161921.P8547338157249829462

/-! ## A161921.P8350998553073062729

`A000041(2*n+1)-(A238589(2*(n+1))+A096373(2*(n+1)))`
-/

namespace A161921.P8350998553073062729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) - (A238589 (2 * (n + 1)) + A096373 (2 * (n + 1)))

end

end A161921.P8350998553073062729

/-!
# A161922: Table with the mapped A125106(p) in row n where p runs through the partitions counted by A160644(n).

The programs for A161922, there is no canonical definition to state claims against.
-/

/-! ## A161922.P2048852110150432971

`record[A140760(A077168(n))]`
-/

namespace A161922.P2048852110150432971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140760 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161922.P2048852110150432971

/-! ## A161922.P17016737052246586381

`A140760(∑[A069777(n)!])`
-/

namespace A161922.P17016737052246586381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A069777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140760 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161922.P17016737052246586381

/-! ## A161922.P13323873189094980348

`A140760(∑[A229892(n)!])`
-/

namespace A161922.P13323873189094980348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A229892 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140760 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161922.P13323873189094980348

/-! ## A161922.P5709180357108651030

`record[A140760(A094528(n+1))]`
-/

namespace A161922.P5709180357108651030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140760 (A094528 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161922.P5709180357108651030

/-! ## A161922.P6598040739116415173

`record[A140760(A086673(n+4))]`
-/

namespace A161922.P6598040739116415173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140760 (A086673 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161922.P6598040739116415173

/-!
# A161923: Numbers n with property that each number corresponds to one of the partitions described in sequence A160643 and counted in A161921.

The programs for A161923, there is no canonical definition to state claims against.
-/

/-! ## A161923.P8385279000284480465

`eq[18, A327194(A161151(n+1))]`
-/

namespace A161923.P8385279000284480465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327194 (A161151 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161923.P8385279000284480465

/-! ## A161923.P1839232857266478968

`eq[A280560(n+2), A373198(A255445(n+2))]`
-/

namespace A161923.P1839232857266478968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373198 (A255445 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161923.P1839232857266478968

/-!
# A161924: Permutation of natural numbers: sequence A126441 without zeros.

The programs for A161924, there is no canonical definition to state claims against.
-/

/-! ## A161924.P16109386073561358102

`A126441(lt[0, A126441(n)])`
-/

namespace A161924.P16109386073561358102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161924.P16109386073561358102

/-! ## A161924.P12840563711215929617

`A059894(A171429(n+1))`
-/

namespace A161924.P12840563711215929617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A171429 (n + 1)).toNat

end

end A161924.P12840563711215929617

/-! ## A161924.P2406490146386705421

`A126441(A166274(n+1))`
-/

namespace A161924.P2406490146386705421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 (A166274 (n + 1)).toNat

end

end A161924.P2406490146386705421

/-! ## A161924.P5204365791128138271

`A126441(comp[A166275(n+1)]%A166262(n+1))`
-/

namespace A161924.P5204365791128138271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166275 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A166262 (n + 1))).toNat

end

end A161924.P5204365791128138271

/-! ## A161924.P7190574101327471145

`A126441(comp[A166275(n+1)])%A166275(2*n+1)`
-/

namespace A161924.P7190574101327471145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166275 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126441 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A166275 (2 * n + 1))

end

end A161924.P7190574101327471145

/-!
# A161925: Numbers n such that largest prime factor of n is also largest prime factor of n-th composite number.

The programs for A161925, there is no canonical definition to state claims against.
-/

/-! ## A161925.P6715260606176528913

`A305800(A161990(n+1))-2`
-/

namespace A161925.P6715260606176528913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A161990 (n + 1)).toNat - 2

end

end A161925.P6715260606176528913

/-! ## A161925.P421624872767305255

`eq[A006530(n+1), A052369(n+1)]+1`
-/

namespace A161925.P421624872767305255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A161925.P421624872767305255

/-! ## A161925.P4331041585799155205

`A065475(eq[A006530(n+1), A052369(n+1)])`
-/

namespace A161925.P4331041585799155205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A161925.P4331041585799155205

/-! ## A161925.P479599384007877264

`eq[A034699(A007947(n+1)), A052369(n+1)]+1`
-/

namespace A161925.P479599384007877264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A007947 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A161925.P479599384007877264

/-! ## A161925.P4803788627140506467

`A026238(A161990(n+1))`
-/

namespace A161925.P4803788627140506467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A161990 (n + 1)).toNat

end

end A161925.P4803788627140506467

/-!
# A161928: Prime numbers that are not the absolute difference between a cube and a square.

The programs for A161928, there is no canonical definition to state claims against.
-/

/-! ## A161928.P6313722732909337019

`p?[A110223(n+1)]`
-/

namespace A161928.P6313722732909337019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161928.P6313722732909337019

/-! ## A161928.P1469689236485160560

`p?[record[A110223(A126759(n))]]`
-/

namespace A161928.P1469689236485160560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110223 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161928.P1469689236485160560

/-! ## A161928.P15576607663675421293

`p?[record[A110223(A133310(n))]]`
-/

namespace A161928.P15576607663675421293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110223 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161928.P15576607663675421293

/-! ## A161928.P1183381428740958176

`p?[record[A110223(A246694(n))]]`
-/

namespace A161928.P1183381428740958176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110223 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161928.P1183381428740958176

/-! ## A161928.P12092621707933131818

`record[A006530(A110223(n+4))]`
-/

namespace A161928.P12092621707933131818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A110223 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161928.P12092621707933131818

/-! ## A161928.P1460721059127044213

`filter[A110223(n+1), A010051(#)]`
-/

namespace A161928.P1460721059127044213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A161928.P1460721059127044213

/-! ## A161928.P3930468419035971187

`filter[A110223(n+1), A080339(#)]`
-/

namespace A161928.P3930468419035971187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A161928.P3930468419035971187

/-! ## A161928.P4989637362092301945

`filter[A110223(n+1), A080545(#)]`
-/

namespace A161928.P4989637362092301945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A161928.P4989637362092301945

/-! ## A161928.P3225649844248955245

`filter[A110223(n+1), A171387(#)]`
-/

namespace A161928.P3225649844248955245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A161928.P3225649844248955245

/-! ## A161928.P15779137097044225361

`filter[A110223(n+1), A174275(#)]`
-/

namespace A161928.P15779137097044225361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A161928.P15779137097044225361

/-!
# A161929: Prime numbers that are the absolute difference between a cube and a square.

The programs for A161929, there is no canonical definition to state claims against.
-/

/-! ## A161929.P9652361033590724621

`A000040(A188301(n+1)%A192242(n+1))`
-/

namespace A161929.P9652361033590724621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A188301 (n + 1)) (A192242 (n + 1))).toNat

end

end A161929.P9652361033590724621

/-! ## A161929.P18336899855583120165

`A000040(A188301(n+1))%A262620(2*n+3)`
-/

namespace A161929.P18336899855583120165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A188301 (n + 1)).toNat) (A262620 (2 * n + 3))

end

end A161929.P18336899855583120165

/-! ## A161929.P17151590296603837491

`record[A051698(A151991(n+1)-(n-2))]`
-/

namespace A161929.P17151590296603837491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A151991 (n + 1) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161929.P17151590296603837491

/-! ## A161929.P10881464049773692117

`A008578(lt[A330917(n+1), A137760(2*n+1)])`
-/

namespace A161929.P10881464049773692117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137760 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161929.P10881464049773692117

/-! ## A161929.P321828434485845033

`A000040(lt[A085478(2*n), A341626(2*(n+2))]+1)`
-/

namespace A161929.P321828434485845033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341626 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A161929.P321828434485845033

/-!
# A161930: Number of reduced words of length n in the Weyl group B_23.

The programs for A161930, there is no canonical definition to state claims against.
-/

/-! ## A161930.P6304718576068382588

`A162365(n)+A011737(A171882(n))`
-/

namespace A161930.P6304718576068382588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162365 n + A011737 (A171882 n).toNat

end

end A161930.P6304718576068382588

/-!
# A161931: Number of reduced words of length n in the Weyl group B_24.

The programs for A161931, there is no canonical definition to state claims against.
-/

/-! ## A161931.P11237334695307850551

`A162366(n)+A011737(A005135(n+1))`
-/

namespace A161931.P11237334695307850551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162366 n + A011737 (A005135 (n + 1)).toNat

end

end A161931.P11237334695307850551

/-!
# A161932: Number of reduced words of length n in the Weyl group B_25.

The programs for A161932, there is no canonical definition to state claims against.
-/

/-! ## A161932.P11848987125324859710

`A162367(n)+A011737(A005135(n))`
-/

namespace A161932.P11848987125324859710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162367 n + A011737 (A005135 n).toNat

end

end A161932.P11848987125324859710

/-!
# A161933: Number of reduced words of length n in the Weyl group B_26.

The programs for A161933, there is no canonical definition to state claims against.
-/

/-! ## A161933.P11314147513980662666

`A357849(A185037(n))+A162368(n)`
-/

namespace A161933.P11314147513980662666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357849 (A185037 n).toNat + A162368 n

end

end A161933.P11314147513980662666

/-!
# A161935: 28-gonal numbers: a(n) = n*(13*n - 12).

The programs for A161935, the canonical program `A161935.P14335868775891492350` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161935 has offset 0).

The definition of A161935 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(13*n-12)` (program `A161935.P14335868775891492350`, by `A161935.P14335868775891492350.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161935.P14335868775891492350

`n*(13*n-12)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161935

/-- `n*(13*n-12)` -/
def P14335868775891492350.Spec : Prop :=
  ∀ n, P14335868775891492350.a n = A161935 n

theorem P14335868775891492350.correct : P14335868775891492350.Spec := by
  intro n
  simp only [A161935]

end A161935

/-! ## A161935.P1736641141599378095

`26*C(n, 2)+n`
-/

namespace A161935.P1736641141599378095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26 * Nat.choose n 2 + n

end

end A161935.P1736641141599378095

namespace A161935

/-- `26*C(n, 2)+n` -/
def P1736641141599378095.Spec : Prop :=
  ∀ n, (P1736641141599378095.a n : ℤ) = A161935 n

end A161935

/-! ## A161935.P8688598347207120199

`∑[a(n-1)+26]` with `a(0)=0, a(1)=1`
-/

namespace A161935.P8688598347207120199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 26

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161935.P8688598347207120199

namespace A161935

/-- `∑[a(n-1)+26]` -/
def P8688598347207120199.Spec : Prop :=
  ∀ n, (P8688598347207120199.a n : ℤ) = A161935 n

end A161935

/-! ## A161935.P11140656371598196824

`∑[25*(2*n)%(n+1)+n]`
-/

namespace A161935.P11140656371598196824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * (2 * n % (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161935.P11140656371598196824

namespace A161935

/-- `∑[25*(2*n)%(n+1)+n]` -/
def P11140656371598196824.Spec : Prop :=
  ∀ n, (P11140656371598196824.a n : ℤ) = A161935 n

end A161935

/-! ## A161935.P6002876329279311371

`A064200(n)+n²`
-/

namespace A161935.P6002876329279311371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + (n ^ 2 : ℤ)

end

end A161935.P6002876329279311371

namespace A161935

/-- `A064200(n)+n²` -/
def P6002876329279311371.Spec : Prop :=
  ∀ n, P6002876329279311371.a n = A161935 n

end A161935

/-! ## A161935.P799396033645480137

`2*A051867(n)-n`
-/

namespace A161935.P799396033645480137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051867 n - (n : ℤ)

end

end A161935.P799396033645480137

namespace A161935

/-- `2*A051867(n)-n` -/
def P799396033645480137.Spec : Prop :=
  ∀ n, P799396033645480137.a n = A161935 n

end A161935

/-! ## A161935.P13861710605234057179

`A195021(n)-(n²+n)`
-/

namespace A161935.P13861710605234057179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195021 n - (n ^ 2 + n : ℤ)

end

end A161935.P13861710605234057179

namespace A161935

/-- `A195021(n)-(n²+n)` -/
def P13861710605234057179.Spec : Prop :=
  ∀ n, P13861710605234057179.a n = A161935 n

end A161935

/-! ## A161935.P6106237039096814891

`A254474(n)+n-n²`
-/

namespace A161935.P6106237039096814891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254474 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A161935.P6106237039096814891

namespace A161935

/-- `A254474(n)+n-n²` -/
def P6106237039096814891.Spec : Prop :=
  ∀ n, P6106237039096814891.a n = A161935 n

end A161935

/-! ## A161935.P16137123890677912540

`n²+A255185(n)-n`
-/

namespace A161935.P16137123890677912540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A255185 n - (n : ℤ))

end

end A161935.P16137123890677912540

namespace A161935

/-- `n²+A255185(n)-n` -/
def P16137123890677912540.Spec : Prop :=
  ∀ n, P16137123890677912540.a n = A161935 n

end A161935

/-! ## A161935.P9690121159662707955

`A153783(n)-(∑[n]+n)`
-/

namespace A161935.P9690121159662707955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153783 n - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A161935.P9690121159662707955

namespace A161935

/-- `A153783(n)-(∑[n]+n)` -/
def P9690121159662707955.Spec : Prop :=
  ∀ n, P9690121159662707955.a n = A161935 n

end A161935

/-! ## A161935.P14463975011978487789

`∑[n]+A255186(n)-n`
-/

namespace A161935.P14463975011978487789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A255186 n - (n : ℤ))

end

end A161935.P14463975011978487789

namespace A161935

/-- `∑[n]+A255186(n)-n` -/
def P14463975011978487789.Spec : Prop :=
  ∀ n, P14463975011978487789.a n = A161935 n

end A161935

/-! ## A161935.P12333477766275049084

`A255187(n)+n-∑[n]`
-/

namespace A161935.P12333477766275049084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255187 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A161935.P12333477766275049084

namespace A161935

/-- `A255187(n)+n-∑[n]` -/
def P12333477766275049084.Spec : Prop :=
  ∀ n, P12333477766275049084.a n = A161935 n

end A161935

/-! ## A161935.P9560858268940274529

`A152997(n)+A014107(n)`
-/

namespace A161935.P9560858268940274529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152997 n + A014107 n

end

end A161935.P9560858268940274529

namespace A161935

/-- `A152997(n)+A014107(n)` -/
def P9560858268940274529.Spec : Prop :=
  ∀ n, P9560858268940274529.a n = A161935 n

end A161935

/-! ## A161935.P3446876774796539105

`A263231(n)+A056121(n)`
-/

namespace A161935.P3446876774796539105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263231 n + A056121 n

end

end A161935.P3446876774796539105

namespace A161935

/-- `A263231(n)+A056121(n)` -/
def P3446876774796539105.Spec : Prop :=
  ∀ n, P3446876774796539105.a n = A161935 n

end A161935

/-! ## A161935.P3615940680277741757

`A255186(n)+A161680(n)`
-/

namespace A161935.P3615940680277741757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255186 n + A161680 n

end

end A161935.P3615940680277741757

namespace A161935

/-- `A255186(n)+A161680(n)` -/
def P3615940680277741757.Spec : Prop :=
  ∀ n, P3615940680277741757.a n = A161935 n

end A161935

/-! ## A161935.P5860807669296515543

`A326725(n)+A226491(n)`
-/

namespace A161935.P5860807669296515543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A226491 n

end

end A161935.P5860807669296515543

namespace A161935

/-- `A326725(n)+A226491(n)` -/
def P5860807669296515543.Spec : Prop :=
  ∀ n, P5860807669296515543.a n = A161935 n

end A161935

/-! ## A161935.P10760246804795780428

`A028994(n)-A067725(n)`
-/

namespace A161935.P10760246804795780428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n - A067725 n

end

end A161935.P10760246804795780428

namespace A161935

/-- `A028994(n)-A067725(n)` -/
def P10760246804795780428.Spec : Prop :=
  ∀ n, P10760246804795780428.a n = A161935 n

end A161935

/-! ## A161935.P5601878122210442208

`A153448(n)-A001105(n)`
-/

namespace A161935.P5601878122210442208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153448 n - A001105 n

end

end A161935.P5601878122210442208

namespace A161935

/-- `A153448(n)-A001105(n)` -/
def P5601878122210442208.Spec : Prop :=
  ∀ n, P5601878122210442208.a n = A161935 n

end A161935

/-! ## A161935.P10761742803289087023

`A022284(n)-A132754(n)`
-/

namespace A161935.P10761742803289087023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022284 n - A132754 n

end

end A161935.P10761742803289087023

namespace A161935

/-- `A022284(n)-A132754(n)` -/
def P10761742803289087023.Spec : Prop :=
  ∀ n, P10761742803289087023.a n = A161935 n

end A161935

/-! ## A161935.P11330850439076769708

`A022285(n)-A132755(n)`
-/

namespace A161935.P11330850439076769708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022285 n - A132755 n

end

end A161935.P11330850439076769708

namespace A161935

/-- `A022285(n)-A132755(n)` -/
def P11330850439076769708.Spec : Prop :=
  ∀ n, P11330850439076769708.a n = A161935 n

end A161935

/-!
# A161936: The number of direct isometries that are derangements of the (n-1)-dimensional facets of an n-cube.

The programs for A161936, there is no canonical definition to state claims against.
-/

/-! ## A161936.P7710195841399684650

`xor(1, A161937(n+1))`
-/

namespace A161936.P7710195841399684650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161937 (n + 1))

end

end A161936.P7710195841399684650

/-! ## A161936.P5728335999822114581

`Δ[round(∑[A000354(n)/2])]`
-/

namespace A161936.P5728335999822114581
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000354 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161936.P5728335999822114581

/-! ## A161936.P18056594208922461211

`record[A342381(n)-A342381(n+1)]`
-/

namespace A161936.P18056594208922461211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342381 n - A342381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161936.P18056594208922461211

/-! ## A161936.P12278114299144856803

`A000354(n+1)-A161937(n+1)`
-/

namespace A161936.P12278114299144856803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000354 (n + 1) - A161937 (n + 1)

end

end A161936.P12278114299144856803

/-! ## A161936.P3137839785194373824

`A342381(∑[n+1]+1)-A033999(n)`
-/

namespace A161936.P3137839785194373824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342381 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A033999 n

end

end A161936.P3137839785194373824

/-! ## A161936.P6033210458594527079

`(A033999(n+1)+A000354(n+1))/2`
-/

namespace A161936.P6033210458594527079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) + A000354 (n + 1) : ℚ) / 2

end

end A161936.P6033210458594527079

/-! ## A161936.P5584609110918222057

`A000354(n+1)-(n+1)*A000354(n)`
-/

namespace A161936.P5584609110918222057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000354 (n + 1) - (n + 1 : ℤ) * A000354 n

end

end A161936.P5584609110918222057

/-!
# A161937: The number of indirect isometries that are derangements of the (n-1)-dimensional facets of an n-cube.

The programs for A161937, there is no canonical definition to state claims against.
-/

/-! ## A161937.P1584799221102366101

`(n+1)*((-1)^n+2*a(n-1))` with `a(0)=1`
-/

namespace A161937.P1584799221102366101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * ((-1) ^ n + 2 * a (n - 1))

end

end A161937.P1584799221102366101

/-! ## A161937.P7154613116811001128

`(n+1)*(a(n-1)+xor(1, a(n-1)))` with `a(0)=1`
-/

namespace A161937.P7154613116811001128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * (a (n - 1) + Nat.xor 1 (a (n - 1)))

end

end A161937.P7154613116811001128

/-! ## A161937.P10403141381224671439

`lcm(n+1, a(n-1)+xor(1, a(n-1)))` with `a(0)=1`
-/

namespace A161937.P10403141381224671439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (n + 1) (a (n - 1) + Nat.xor 1 (a (n - 1)))

end

end A161937.P10403141381224671439

/-! ## A161937.P12855610499894445113

`(n+1)*(1-2*(n%2-a(n-1)))` with `a(0)=1`
-/

namespace A161937.P12855610499894445113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * (1 - 2 * (((n % 2 : ℕ) : ℤ) - a (n - 1)))

end

end A161937.P12855610499894445113

/-! ## A161937.P10374241648599811730

`xor(1, A161936(n+1))`
-/

namespace A161937.P10374241648599811730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161936 (n + 1))

end

end A161937.P10374241648599811730

/-! ## A161937.P17725281118173505104

`(n+1)*A000354(n)`
-/

namespace A161937.P17725281118173505104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000354 n

end

end A161937.P17725281118173505104

/-! ## A161937.P2156325924036590601

`A342381(∑[n+1]+1)`
-/

namespace A161937.P2156325924036590601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342381 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A161937.P2156325924036590601

/-! ## A161937.P1586516038489357742

`(n+1)*A334578(2*n)`
-/

namespace A161937.P1586516038489357742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A334578 (2 * n)

end

end A161937.P1586516038489357742

/-! ## A161937.P16260981459461184915

`(A000354(n+1)-A033999(n+1))/2`
-/

namespace A161937.P16260981459461184915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000354 (n + 1) - A033999 (n + 1) : ℚ) / 2

end

end A161937.P16260981459461184915

/-!
# A161938: a(n) = ((3+sqrt(2))*(2+sqrt(2))^n + (3-sqrt(2))*(2-sqrt(2))^n)/2.

The programs for A161938, the canonical program `A161938.P6161511071247587815` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161938 has offset 0).

The definition of A161938 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161938.P6161511071247587815

`4*a(n-1)-2*a(n-2)` with `a(0)=3, a(1)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161938

/-- `4*a(n-1)-2*a(n-2)` -/
def P6161511071247587815.Spec : Prop :=
  ∀ n, P6161511071247587815.a n = A161938 n

theorem P6161511071247587815.correct : P6161511071247587815.Spec := by
  intro n
  simp only [A161938]

end A161938

/-! ## A161938.P3707733850244420965

`ogf((3-4x)/(1-4x+2x^2))`
-/

namespace A161938.P3707733850244420965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -4, 2] n

end

end A161938.P3707733850244420965

namespace A161938

/-- `ogf((3-4x)/(1-4x+2x^2))` -/
def P3707733850244420965.Spec : Prop :=
  ∀ n, P3707733850244420965.a n = A161938 n

end A161938

/-! ## A161938.P11534900651833630185

`∑[ceil((sqrt(2)+2)*a(n-1))]` with `a(0)=3, a(1)=5`
-/

namespace A161938.P11534900651833630185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  ⌈(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161938.P11534900651833630185

namespace A161938

/-- `∑[ceil((sqrt(2)+2)*a(n-1))]` -/
def P11534900651833630185.Spec : Prop :=
  ∀ n, P11534900651833630185.a n = A161938 n

end A161938

/-! ## A161938.P12028703434613771274

`((3+sqrt(2))*(2+sqrt(2))^n+(3-sqrt(2))*(2-sqrt(2))^n)/2`
-/

namespace A161938.P12028703434613771274
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (2 : ℝ)) * (2 + Real.sqrt (2 : ℝ)) ^ n + (3 - Real.sqrt (2 : ℝ)) * (2 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A161938.P12028703434613771274

namespace A161938

/-- `((3+sqrt(2))*(2+sqrt(2))^n+(3-sqrt(2))*(2-sqrt(2))^n)/2` -/
def P12028703434613771274.Spec : Prop :=
  ∀ n, P12028703434613771274.a n = (A161938 n : ℝ)

end A161938

/-! ## A161938.P5240680927208257635

`∑[A111567(n)]+2`
-/

namespace A161938.P5240680927208257635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A161938.P5240680927208257635

namespace A161938

/-- `∑[A111567(n)]+2` -/
def P5240680927208257635.Spec : Prop :=
  ∀ n, P5240680927208257635.a n = A161938 n

end A161938

/-! ## A161938.P1566181556607792518

`A056236(n)+A007070(n)`
-/

namespace A161938.P1566181556607792518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 n + A007070 n

end

end A161938.P1566181556607792518

namespace A161938

/-- `A056236(n)+A007070(n)` -/
def P1566181556607792518.Spec : Prop :=
  ∀ n, P1566181556607792518.a n = A161938 n

end A161938

/-! ## A161938.P13847195284784500671

`A106731(n)+A048580(n)`
-/

namespace A161938.P13847195284784500671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106731 n + A048580 n

end

end A161938.P13847195284784500671

namespace A161938

/-- `A106731(n)+A048580(n)` -/
def P13847195284784500671.Spec : Prop :=
  ∀ n, P13847195284784500671.a n = A161938 n

end A161938

/-! ## A161938.P2889229440289962333

`A161941(n)+A007052(n)`
-/

namespace A161938.P2889229440289962333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161941 n + A007052 n

end

end A161938.P2889229440289962333

namespace A161938

/-- `A161941(n)+A007052(n)` -/
def P2889229440289962333.Spec : Prop :=
  ∀ n, P2889229440289962333.a n = A161938 n

end A161938

/-! ## A161938.P8757658077621649795

`A162269(n)-A056236(n)`
-/

namespace A161938.P8757658077621649795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162269 n - A056236 n

end

end A161938.P8757658077621649795

namespace A161938

/-- `A162269(n)-A056236(n)` -/
def P8757658077621649795.Spec : Prop :=
  ∀ n, P8757658077621649795.a n = A161938 n

end A161938

/-! ## A161938.P17487315409921298443

`A056236(n)+∑[A007052(n)]`
-/

namespace A161938.P17487315409921298443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161938.P17487315409921298443

namespace A161938

/-- `A056236(n)+∑[A007052(n)]` -/
def P17487315409921298443.Spec : Prop :=
  ∀ n, P17487315409921298443.a n = A161938 n

end A161938

/-! ## A161938.P2818701160409661581

`A161941(n)+∑[A003480(n)]`
-/

namespace A161938.P2818701160409661581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161941 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161938.P2818701160409661581

namespace A161938

/-- `A161941(n)+∑[A003480(n)]` -/
def P2818701160409661581.Spec : Prop :=
  ∀ n, P2818701160409661581.a n = A161938 n

end A161938

/-! ## A161938.P467699649136164003

`A006012(n+1)+A006012(n)`
-/

namespace A161938.P467699649136164003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 1) + A006012 n

end

end A161938.P467699649136164003

namespace A161938

/-- `A006012(n+1)+A006012(n)` -/
def P467699649136164003.Spec : Prop :=
  ∀ n, P467699649136164003.a n = A161938 n

end A161938

/-! ## A161938.P12913395068360911104

`A106731(n)+A007052(n+1)`
-/

namespace A161938.P12913395068360911104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106731 n + A007052 (n + 1)

end

end A161938.P12913395068360911104

namespace A161938

/-- `A106731(n)+A007052(n+1)` -/
def P12913395068360911104.Spec : Prop :=
  ∀ n, P12913395068360911104.a n = A161938 n

end A161938

/-! ## A161938.P4777178984613224299

`A048580(n)-A060995(n+1)`
-/

namespace A161938.P4777178984613224299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048580 n - A060995 (n + 1)

end

end A161938.P4777178984613224299

namespace A161938

/-- `A048580(n)-A060995(n+1)` -/
def P4777178984613224299.Spec : Prop :=
  ∀ n, P4777178984613224299.a n = A161938 n

end A161938

/-! ## A161938.P18440311632275003801

`A007070(n+1)-A111566(n)`
-/

namespace A161938.P18440311632275003801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (n + 1) - A111566 n

end

end A161938.P18440311632275003801

namespace A161938

/-- `A007070(n+1)-A111566(n)` -/
def P18440311632275003801.Spec : Prop :=
  ∀ n, P18440311632275003801.a n = A161938 n

end A161938

/-! ## A161938.P5858675141579159587

`A204089(n+2)-A111566(n)`
-/

namespace A161938.P5858675141579159587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 (n + 2) - A111566 n

end

end A161938.P5858675141579159587

namespace A161938

/-- `A204089(n+2)-A111566(n)` -/
def P5858675141579159587.Spec : Prop :=
  ∀ n, P5858675141579159587.a n = A161938 n

end A161938

/-! ## A161938.P7046118596214539360

`A068912(2*n)+A056236(n)`
-/

namespace A161938.P7046118596214539360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068912 (2 * n) + A056236 n

end

end A161938.P7046118596214539360

namespace A161938

/-- `A068912(2*n)+A056236(n)` -/
def P7046118596214539360.Spec : Prop :=
  ∀ n, P7046118596214539360.a n = A161938 n

end A161938

/-! ## A161938.P14039865488755040791

`A161941(n)+A062113(2*n)`
-/

namespace A161938.P14039865488755040791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161941 n + A062113 (2 * n)

end

end A161938.P14039865488755040791

namespace A161938

/-- `A161941(n)+A062113(2*n)` -/
def P14039865488755040791.Spec : Prop :=
  ∀ n, P14039865488755040791.a n = A161938 n

end A161938

/-! ## A161938.P12679954285489033312

`A007070(n)+A265185(n)/2`
-/

namespace A161938.P12679954285489033312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007070 n : ℚ) + (A265185 n : ℚ) / 2

end

end A161938.P12679954285489033312

namespace A161938

/-- `A007070(n)+A265185(n)/2` -/
def P12679954285489033312.Spec : Prop :=
  ∀ n, P12679954285489033312.a n = (A161938 n : ℚ)

end A161938

/-! ## A161938.P12598072210207291151

`∑[A204089(n)+A007070(n)]+1`
-/

namespace A161938.P12598072210207291151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 n + A007070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A161938.P12598072210207291151

namespace A161938

/-- `∑[A204089(n)+A007070(n)]+1` -/
def P12598072210207291151.Spec : Prop :=
  ∀ n, P12598072210207291151.a n = A161938 n

end A161938

/-!
# A161939: a(n) = ((3+sqrt(2))*(4+sqrt(2))^n + (3-sqrt(2))*(4-sqrt(2))^n)/2.

The programs for A161939, the canonical program `A161939.P10956973469760090824` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161939 has offset 0).

The definition of A161939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161939.P10956973469760090824

`8*a(n-1)-14*a(n-2)` with `a(0)=3, a(1)=14`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161939

/-- `8*a(n-1)-14*a(n-2)` -/
def P10956973469760090824.Spec : Prop :=
  ∀ n, P10956973469760090824.a n = A161939 n

theorem P10956973469760090824.correct : P10956973469760090824.Spec := by
  intro n
  simp only [A161939]

end A161939

/-! ## A161939.P16582391969190951041

`((3+sqrt(2))*(4+sqrt(2))^n+(3-sqrt(2))*(4-sqrt(2))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161939.P16582391969190951041
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (2 : ℝ)) * (4 + Real.sqrt (2 : ℝ)) ^ n + (3 - Real.sqrt (2 : ℝ)) * (4 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A161939.P16582391969190951041

namespace A161939

/-- `((3+sqrt(2))*(4+sqrt(2))^n+(3-sqrt(2))*(4-sqrt(2))^n)/2` -/
def P16582391969190951041.Spec : Prop :=
  ∀ n, P16582391969190951041.a n = (A161939 n : ℝ)

end A161939

/-! ## A161939.P176280090068584165

`ogf((3-10x)/(1-8x+14x^2))`
-/

namespace A161939.P176280090068584165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10] [1, -8, 14] n

end

end A161939.P176280090068584165

namespace A161939

/-- `ogf((3-10x)/(1-8x+14x^2))` -/
def P176280090068584165.Spec : Prop :=
  ∀ n, P176280090068584165.a n = A161939 n

end A161939

/-! ## A161939.P9503781338643424188

`Δ[A083879(n)]`
-/

namespace A161939.P9503781338643424188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161939.P9503781338643424188

namespace A161939

/-- `Δ[A083879(n)]` -/
def P9503781338643424188.Spec : Prop :=
  ∀ n, P9503781338643424188.a n = A161939 n

end A161939

/-! ## A161939.P8220732411540947125

`Δ[A161731(n)-A081180(n)]`
-/

namespace A161939.P8220732411540947125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161731 n - A081180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161939.P8220732411540947125

namespace A161939

/-- `Δ[A161731(n)-A081180(n)]` -/
def P8220732411540947125.Spec : Prop :=
  ∀ n, P8220732411540947125.a n = A161939 n

end A161939

/-! ## A161939.P1847135469032738052

`Δ[A161731(n)]-A164072(n)`
-/

namespace A161939.P1847135469032738052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A164072 n

end

end A161939.P1847135469032738052

namespace A161939

/-- `Δ[A161731(n)]-A164072(n)` -/
def P1847135469032738052.Spec : Prop :=
  ∀ n, P1847135469032738052.a n = A161939 n

end A161939

/-! ## A161939.P1181010113787731987

`A083879(n+1)-A083879(n)`
-/

namespace A161939.P1181010113787731987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083879 (n + 1) - A083879 n

end

end A161939.P1181010113787731987

namespace A161939

/-- `A083879(n+1)-A083879(n)` -/
def P1181010113787731987.Spec : Prop :=
  ∀ n, P1181010113787731987.a n = A161939 n

end A161939

/-! ## A161939.P2314418773710066676

`A083879(n)+2*A161731(n)`
-/

namespace A161939.P2314418773710066676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083879 n + 2 * A161731 n

end

end A161939.P2314418773710066676

namespace A161939

/-- `A083879(n)+2*A161731(n)` -/
def P2314418773710066676.Spec : Prop :=
  ∀ n, P2314418773710066676.a n = A161939 n

end A161939

/-! ## A161939.P10415032584955308064

`A163604(n)-2*A081180(n)`
-/

namespace A161939.P10415032584955308064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163604 n - 2 * A081180 n

end

end A161939.P10415032584955308064

namespace A161939

/-- `A163604(n)-2*A081180(n)` -/
def P10415032584955308064.Spec : Prop :=
  ∀ n, P10415032584955308064.a n = A161939 n

end A161939

/-! ## A161939.P8343400235604398999

`4*A161731(n)-A163350(n)`
-/

namespace A161939.P8343400235604398999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A161731 n - A163350 n

end

end A161939.P8343400235604398999

namespace A161939

/-- `4*A161731(n)-A163350(n)` -/
def P8343400235604398999.Spec : Prop :=
  ∀ n, P8343400235604398999.a n = A161939 n

end A161939

/-! ## A161939.P1825557032917769565

`A164535(n)-6*A081180(n)`
-/

namespace A161939.P1825557032917769565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164535 n - 6 * A081180 n

end

end A161939.P1825557032917769565

namespace A161939

/-- `A164535(n)-6*A081180(n)` -/
def P1825557032917769565.Spec : Prop :=
  ∀ n, P1825557032917769565.a n = A161939 n

end A161939

/-! ## A161939.P13944369957769071270

`record[A083879(A007599(n))]-A083879(n)`
-/

namespace A161939.P13944369957769071270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083879 (A007599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A083879 n

end

end A161939.P13944369957769071270

namespace A161939

/-- `record[A083879(A007599(n))]-A083879(n)` -/
def P13944369957769071270.Spec : Prop :=
  ∀ n, P13944369957769071270.a n = A161939 n

end A161939

/-! ## A161939.P1429146832042193628

`Δ[A164537(n)]%A164537(n)`
-/

namespace A161939.P1429146832042193628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A164537 n)

end

end A161939.P1429146832042193628

namespace A161939

/-- `Δ[A164537(n)]%A164537(n)` -/
def P1429146832042193628.Spec : Prop :=
  ∀ n, P1429146832042193628.a n = A161939 n

end A161939

/-! ## A161939.P4734636905158882817

`Δ[A164034(n)-Δ[A081180(n)]]`
-/

namespace A161939.P4734636905158882817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081180 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164034 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161939.P4734636905158882817

namespace A161939

/-- `Δ[A164034(n)-Δ[A081180(n)]]` -/
def P4734636905158882817.Spec : Prop :=
  ∀ n, P4734636905158882817.a n = A161939 n

end A161939

/-!
# A161940: a(n) = ((3+sqrt(2))*(5+sqrt(2))^n + (3-sqrt(2))*(5-sqrt(2))^n)/2.

The programs for A161940, the canonical program `A161940.P16933620252695616613` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161940 has offset 0).

The definition of A161940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161940.P16933620252695616613

`10*a(n-1)-23*a(n-2)` with `a(0)=3, a(1)=17`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161940

/-- `10*a(n-1)-23*a(n-2)` -/
def P16933620252695616613.Spec : Prop :=
  ∀ n, P16933620252695616613.a n = A161940 n

theorem P16933620252695616613.correct : P16933620252695616613.Spec := by
  intro n
  simp only [A161940]

end A161940

/-! ## A161940.P15914616565863971770

`((3+sqrt(2))*(5+sqrt(2))^n+(3-sqrt(2))*(5-sqrt(2))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161940.P15914616565863971770
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (2 : ℝ)) * (5 + Real.sqrt (2 : ℝ)) ^ n + (3 - Real.sqrt (2 : ℝ)) * (5 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A161940.P15914616565863971770

namespace A161940

/-- `((3+sqrt(2))*(5+sqrt(2))^n+(3-sqrt(2))*(5-sqrt(2))^n)/2` -/
def P15914616565863971770.Spec : Prop :=
  ∀ n, P15914616565863971770.a n = (A161940 n : ℝ)

end A161940

/-! ## A161940.P3450058011629544628

`ogf((3-13x)/(1-10x+23x^2))`
-/

namespace A161940.P3450058011629544628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -13] [1, -10, 23] n

end

end A161940.P3450058011629544628

namespace A161940

/-- `ogf((3-13x)/(1-10x+23x^2))` -/
def P3450058011629544628.Spec : Prop :=
  ∀ n, P3450058011629544628.a n = A161940 n

end A161940

/-! ## A161940.P9600454028501672071

`A161947(n)+A161734(n)`
-/

namespace A161940.P9600454028501672071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161947 n + A161734 n

end

end A161940.P9600454028501672071

namespace A161940

/-- `A161947(n)+A161734(n)` -/
def P9600454028501672071.Spec : Prop :=
  ∀ n, P9600454028501672071.a n = A161940 n

end A161940

/-! ## A161940.P16818249158798476643

`Δ[A083880(n)]-A083880(n)`
-/

namespace A161940.P16818249158798476643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083880 n

end

end A161940.P16818249158798476643

namespace A161940

/-- `Δ[A083880(n)]-A083880(n)` -/
def P16818249158798476643.Spec : Prop :=
  ∀ n, P16818249158798476643.a n = A161940 n

end A161940

/-! ## A161940.P17305511776720350904

`A163605(n)-2*A081182(n)`
-/

namespace A161940.P17305511776720350904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163605 n - 2 * A081182 n

end

end A161940.P17305511776720350904

namespace A161940

/-- `A163605(n)-2*A081182(n)` -/
def P17305511776720350904.Spec : Prop :=
  ∀ n, P17305511776720350904.a n = A161940 n

end A161940

/-! ## A161940.P7063296047264849282

`2*A164035(n)-A163349(n)`
-/

namespace A161940.P7063296047264849282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164035 n - A163349 n

end

end A161940.P7063296047264849282

namespace A161940

/-- `2*A164035(n)-A163349(n)` -/
def P7063296047264849282.Spec : Prop :=
  ∀ n, P7063296047264849282.a n = A161940 n

end A161940

/-! ## A161940.P9023487773737712776

`3*A161734(n)-A081182(n)`
-/

namespace A161940.P9023487773737712776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A161734 n - A081182 n

end

end A161940.P9023487773737712776

namespace A161940

/-- `3*A161734(n)-A081182(n)` -/
def P9023487773737712776.Spec : Prop :=
  ∀ n, P9023487773737712776.a n = A161940 n

end A161940

/-! ## A161940.P17777548499228292616

`4*A161734(n)-A163346(n)`
-/

namespace A161940.P17777548499228292616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A161734 n - A163346 n

end

end A161940.P17777548499228292616

namespace A161940

/-- `4*A161734(n)-A163346(n)` -/
def P17777548499228292616.Spec : Prop :=
  ∀ n, P17777548499228292616.a n = A161940 n

end A161940

/-! ## A161940.P3285521217853662454

`5*A161734(n)-A164035(n)`
-/

namespace A161940.P3285521217853662454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A161734 n - A164035 n

end

end A161940.P3285521217853662454

namespace A161940

/-- `5*A161734(n)-A164035(n)` -/
def P3285521217853662454.Spec : Prop :=
  ∀ n, P3285521217853662454.a n = A161940 n

end A161940

/-! ## A161940.P16196321205673940963

`A164536(n)-6*A081182(n)`
-/

namespace A161940.P16196321205673940963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164536 n - 6 * A081182 n

end

end A161940.P16196321205673940963

namespace A161940

/-- `A164536(n)-6*A081182(n)` -/
def P16196321205673940963.Spec : Prop :=
  ∀ n, P16196321205673940963.a n = A161940 n

end A161940

/-! ## A161940.P7249044039873928022

`A083880(n+1)-2*A083880(n)`
-/

namespace A161940.P7249044039873928022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083880 (n + 1) - 2 * A083880 n

end

end A161940.P7249044039873928022

namespace A161940

/-- `A083880(n+1)-2*A083880(n)` -/
def P7249044039873928022.Spec : Prop :=
  ∀ n, P7249044039873928022.a n = A161940 n

end A161940

/-! ## A161940.P5513363770054283776

`Δ[A164538(n)]%A164538(n)`
-/

namespace A161940.P5513363770054283776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A164538 n)

end

end A161940.P5513363770054283776

namespace A161940

/-- `Δ[A164538(n)]%A164538(n)` -/
def P5513363770054283776.Spec : Prop :=
  ∀ n, P5513363770054283776.a n = A161940 n

end A161940

/-!
# A161941: a(n) = ((4+sqrt(2))*(2+sqrt(2))^n + (4-sqrt(2))*(2-sqrt(2))^n)/4.

The programs for A161941, the canonical program `A161941.P13477428835857928440` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161941 has offset 0).

The definition of A161941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161941.P13477428835857928440

`4*a(n-1)-2*a(n-2)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161941

/-- `4*a(n-1)-2*a(n-2)` -/
def P13477428835857928440.Spec : Prop :=
  ∀ n, P13477428835857928440.a n = A161941 n

theorem P13477428835857928440.correct : P13477428835857928440.Spec := by
  intro n
  simp only [A161941]

end A161941

/-! ## A161941.P7237417929695889483

`ogf((2-3x)/(1-4x+2x^2))`
-/

namespace A161941.P7237417929695889483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -4, 2] n

end

end A161941.P7237417929695889483

namespace A161941

/-- `ogf((2-3x)/(1-4x+2x^2))` -/
def P7237417929695889483.Spec : Prop :=
  ∀ n, P7237417929695889483.a n = A161941 n

end A161941

/-! ## A161941.P9009865552181430189

`∑[ceil((sqrt(2)+2)*a(n-1))]` with `a(0)=2, a(1)=3`
-/

namespace A161941.P9009865552181430189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  ⌈(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161941.P9009865552181430189

namespace A161941

/-- `∑[ceil((sqrt(2)+2)*a(n-1))]` -/
def P9009865552181430189.Spec : Prop :=
  ∀ n, P9009865552181430189.a n = A161941 n

end A161941

/-! ## A161941.P6798790650783613750

`A001882(Δ[n²])`
-/

namespace A161941.P6798790650783613750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001882 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A161941.P6798790650783613750

namespace A161941

/-- `A001882(Δ[n²])` -/
def P6798790650783613750.Spec : Prop :=
  ∀ n, P6798790650783613750.a n = A161941 n

end A161941

/-! ## A161941.P8412690572607876024

`or(char[1], A001882(2*n+1))`
-/

namespace A161941.P8412690572607876024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001882 (2 * n + 1))

end

end A161941.P8412690572607876024

namespace A161941

/-- `or(char[1], A001882(2*n+1))` -/
def P8412690572607876024.Spec : Prop :=
  ∀ n, P8412690572607876024.a n = A161941 n

end A161941

/-! ## A161941.P4482710026084724118

`A001882(2*n)+a(n-1)` with `a(0)=2`
-/

namespace A161941.P4482710026084724118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001882 (2 * n) + a (n - 1)

end

end A161941.P4482710026084724118

namespace A161941

/-- `A001882(2*n)+a(n-1)` -/
def P4482710026084724118.Spec : Prop :=
  ∀ n, P4482710026084724118.a n = A161941 n

end A161941

/-! ## A161941.P17329151375202875138

`A007052(n)+A006012(n)`
-/

namespace A161941.P17329151375202875138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n + A006012 n

end

end A161941.P17329151375202875138

namespace A161941

/-- `A007052(n)+A006012(n)` -/
def P17329151375202875138.Spec : Prop :=
  ∀ n, P17329151375202875138.a n = A161941 n

end A161941

/-! ## A161941.P18181688550629170822

`A030436(2*n)+A007052(n)`
-/

namespace A161941.P18181688550629170822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (2 * n) + A007052 n

end

end A161941.P18181688550629170822

namespace A161941

/-- `A030436(2*n)+A007052(n)` -/
def P18181688550629170822.Spec : Prop :=
  ∀ n, P18181688550629170822.a n = A161941 n

end A161941

/-! ## A161941.P17917959600359631708

`A062113(2*n)+A006012(n)`
-/

namespace A161941.P17917959600359631708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (2 * n) + A006012 n

end

end A161941.P17917959600359631708

namespace A161941

/-- `A062113(2*n)+A006012(n)` -/
def P17917959600359631708.Spec : Prop :=
  ∀ n, P17917959600359631708.a n = A161941 n

end A161941

/-! ## A161941.P8627536519174483497

`A007052(n)+A056236(n)/2`
-/

namespace A161941.P8627536519174483497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007052 n : ℚ) + (A056236 n : ℚ) / 2

end

end A161941.P8627536519174483497

namespace A161941

/-- `A007052(n)+A056236(n)/2` -/
def P8627536519174483497.Spec : Prop :=
  ∀ n, P8627536519174483497.a n = (A161941 n : ℚ)

end A161941

/-! ## A161941.P7271055756313555276

`A056236(n)-A106731(n)/2`
-/

namespace A161941.P7271055756313555276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056236 n : ℚ) - (A106731 n : ℚ) / 2

end

end A161941.P7271055756313555276

namespace A161941

/-- `A056236(n)-A106731(n)/2` -/
def P7271055756313555276.Spec : Prop :=
  ∀ n, P7271055756313555276.a n = (A161941 n : ℚ)

end A161941

/-! ## A161941.P2604639477255414908

`A030436(2*n+1)+A006012(n)`
-/

namespace A161941.P2604639477255414908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (2 * n + 1) + A006012 n

end

end A161941.P2604639477255414908

namespace A161941

/-- `A030436(2*n+1)+A006012(n)` -/
def P2604639477255414908.Spec : Prop :=
  ∀ n, P2604639477255414908.a n = A161941 n

end A161941

/-! ## A161941.P17569687563018855367

`A062112(2*n+1)+A007052(n)`
-/

namespace A161941.P17569687563018855367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * n + 1) + A007052 n

end

end A161941.P17569687563018855367

namespace A161941

/-- `A062112(2*n+1)+A007052(n)` -/
def P17569687563018855367.Spec : Prop :=
  ∀ n, P17569687563018855367.a n = A161941 n

end A161941

/-! ## A161941.P13398544301904313131

`A121720(2*(n+1))+A006012(n)`
-/

namespace A161941.P13398544301904313131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 (2 * (n + 1)) + A006012 n

end

end A161941.P13398544301904313131

namespace A161941

/-- `A121720(2*(n+1))+A006012(n)` -/
def P13398544301904313131.Spec : Prop :=
  ∀ n, P13398544301904313131.a n = A161941 n

end A161941

/-! ## A161941.P5818643767475227322

`A006012(n+1)-A062112(2*n)`
-/

namespace A161941.P5818643767475227322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 1) - A062112 (2 * n)

end

end A161941.P5818643767475227322

namespace A161941

/-- `A006012(n+1)-A062112(2*n)` -/
def P5818643767475227322.Spec : Prop :=
  ∀ n, P5818643767475227322.a n = A161941 n

end A161941

/-! ## A161941.P8184285690629624301

`A056236(n)+A060995(n+1)/2`
-/

namespace A161941.P8184285690629624301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056236 n : ℚ) + (A060995 (n + 1) : ℚ) / 2

end

end A161941.P8184285690629624301

namespace A161941

/-- `A056236(n)+A060995(n+1)/2` -/
def P8184285690629624301.Spec : Prop :=
  ∀ n, P8184285690629624301.a n = (A161941 n : ℚ)

end A161941

/-! ## A161941.P4600981002235492424

`A030436(2*n)+Δ[A062112(2*n)]`
-/

namespace A161941.P4600981002235492424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (2 * n) + (f1 (n + 1) - f1 n)

end

end A161941.P4600981002235492424

namespace A161941

/-- `A030436(2*n)+Δ[A062112(2*n)]` -/
def P4600981002235492424.Spec : Prop :=
  ∀ n, P4600981002235492424.a n = A161941 n

end A161941

/-! ## A161941.P14651577559814805932

`A030436(2*n+1)+A030436(2*n)`
-/

namespace A161941.P14651577559814805932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (2 * n + 1) + A030436 (2 * n)

end

end A161941.P14651577559814805932

namespace A161941

/-- `A030436(2*n+1)+A030436(2*n)` -/
def P14651577559814805932.Spec : Prop :=
  ∀ n, P14651577559814805932.a n = A161941 n

end A161941

/-! ## A161941.P11275207257043042869

`A062113(2*n)+A062112(2*n+1)`
-/

namespace A161941.P11275207257043042869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (2 * n) + A062112 (2 * n + 1)

end

end A161941.P11275207257043042869

namespace A161941

/-- `A062113(2*n)+A062112(2*n+1)` -/
def P11275207257043042869.Spec : Prop :=
  ∀ n, P11275207257043042869.a n = A161941 n

end A161941

/-! ## A161941.P6193983502888793574

`A062112(2*n+3)-A062112(2*n)`
-/

namespace A161941.P6193983502888793574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * n + 3) - A062112 (2 * n)

end

end A161941.P6193983502888793574

namespace A161941

/-- `A062112(2*n+3)-A062112(2*n)` -/
def P6193983502888793574.Spec : Prop :=
  ∀ n, P6193983502888793574.a n = A161941 n

end A161941

/-!
# A161942: Odd part of sum of divisors of n.

The programs for A161942, the canonical program `A161942.P13275340347351870099` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161942 has offset 1).

The definition of A161942 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337194, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161942.P13275340347351870099

`A337194(n+1)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A161942

/-- `A337194(n+1)-1` -/
def P13275340347351870099.Spec : Prop :=
  ∀ n, P13275340347351870099.a n = A161942 (n + 1)

theorem P13275340347351870099.correct : P13275340347351870099.Spec := by
  intro n
  simp only [A161942, Nat.add_sub_cancel]

end A161942

/-! ## A161942.P15197226473693561929

`A000265(A000203(n+1))`
-/

namespace A161942.P15197226473693561929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000203 (n + 1)).toNat

end

end A161942.P15197226473693561929

namespace A161942

/-- `A000265(A000203(n+1))` -/
def P15197226473693561929.Spec : Prop :=
  ∀ n, P15197226473693561929.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P14968104953811042366

`A000265(∑{d}[n+1, #])`
-/

namespace A161942.P14968104953811042366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A161942.P14968104953811042366

namespace A161942

/-- `A000265(∑{d}[n+1, #])` -/
def P14968104953811042366.Spec : Prop :=
  ∀ n, P14968104953811042366.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P9250229711331561946

`A000265(Δ[A160664(n)])`
-/

namespace A161942.P9250229711331561946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n).toNat

end

end A161942.P9250229711331561946

namespace A161942

/-- `A000265(Δ[A160664(n)])` -/
def P9250229711331561946.Spec : Prop :=
  ∀ n, P9250229711331561946.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P6364913883119362958

`A000265(A074400(n+1))`
-/

namespace A161942.P6364913883119362958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A074400 (n + 1)).toNat

end

end A161942.P6364913883119362958

namespace A161942

/-- `A000265(A074400(n+1))` -/
def P6364913883119362958.Spec : Prop :=
  ∀ n, P6364913883119362958.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P13422409144560661554

`A000265(sqrt(A072861(n+1)))`
-/

namespace A161942.P13422409144560661554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A161942.P13422409144560661554

namespace A161942

/-- `A000265(sqrt(A072861(n+1)))` -/
def P13422409144560661554.Spec : Prop :=
  ∀ n, P13422409144560661554.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P15744050532220041672

`A000265(A002659(n+1)+1)`
-/

namespace A161942.P15744050532220041672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002659 (n + 1) + 1).toNat

end

end A161942.P15744050532220041672

namespace A161942

/-- `A000265(A002659(n+1)+1)` -/
def P15744050532220041672.Spec : Prop :=
  ∀ n, P15744050532220041672.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P11535885985910923053

`A000265(A039653(n+1)+1)`
-/

namespace A161942.P11535885985910923053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A039653 (n + 1) + 1).toNat

end

end A161942.P11535885985910923053

namespace A161942

/-- `A000265(A039653(n+1)+1)` -/
def P11535885985910923053.Spec : Prop :=
  ∀ n, P11535885985910923053.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P14977727310643757455

`A000265(A088580(n+1)-1)`
-/

namespace A161942.P14977727310643757455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A088580 (n + 1) - 1).toNat

end

end A161942.P14977727310643757455

namespace A161942

/-- `A000265(A088580(n+1)-1)` -/
def P14977727310643757455.Spec : Prop :=
  ∀ n, P14977727310643757455.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P9415874919546113829

`A171435(2*A000203(n+1))`
-/

namespace A161942.P9415874919546113829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A000203 (n + 1)).toNat

end

end A161942.P9415874919546113829

namespace A161942

/-- `A171435(2*A000203(n+1))` -/
def P9415874919546113829.Spec : Prop :=
  ∀ n, P9415874919546113829.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P7150080592818257243

`A000265(A245092(2*n+1))`
-/

namespace A161942.P7150080592818257243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A245092 (2 * n + 1)).toNat

end

end A161942.P7150080592818257243

namespace A161942

/-- `A000265(A245092(2*n+1))` -/
def P7150080592818257243.Spec : Prop :=
  ∀ n, P7150080592818257243.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P7844129398307568661

`A000265(A239050(n+1)/2)`
-/

namespace A161942.P7844129398307568661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2)).toNat

end

end A161942.P7844129398307568661

namespace A161942

/-- `A000265(A239050(n+1)/2)` -/
def P7844129398307568661.Spec : Prop :=
  ∀ n, P7844129398307568661.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P4658634366220776008

`A000265(A001065(n+1)+1+n)`
-/

namespace A161942.P4658634366220776008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A161942.P4658634366220776008

namespace A161942

/-- `A000265(A001065(n+1)+1+n)` -/
def P4658634366220776008.Spec : Prop :=
  ∀ n, P4658634366220776008.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P4448509369745070888

`A000265(A048050(n+1)+n+2)`
-/

namespace A161942.P4448509369745070888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A048050 (n + 1) + (n + 2 : ℤ)).toNat

end

end A161942.P4448509369745070888

namespace A161942

/-- `A000265(A048050(n+1)+n+2)` -/
def P4448509369745070888.Spec : Prop :=
  ∀ n, P4448509369745070888.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P5911774053472988834

`A342671(n+1)*A348992(n+1)`
-/

namespace A161942.P5911774053472988834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (n + 1) * A348992 (n + 1)

end

end A161942.P5911774053472988834

namespace A161942

/-- `A342671(n+1)*A348992(n+1)` -/
def P5911774053472988834.Spec : Prop :=
  ∀ n, P5911774053472988834.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P12868453567441132703

`A336457(n+1)*A379473(n+1)`
-/

namespace A161942.P12868453567441132703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336457 (n + 1) * A379473 (n + 1)

end

end A161942.P12868453567441132703

namespace A161942

/-- `A336457(n+1)*A379473(n+1)` -/
def P12868453567441132703.Spec : Prop :=
  ∀ n, P12868453567441132703.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P8565048445464575561

`A000265(A064987(n+1)/(n+1))`
-/

namespace A161942.P8565048445464575561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A161942.P8565048445464575561

namespace A161942

/-- `A000265(A064987(n+1)/(n+1))` -/
def P8565048445464575561.Spec : Prop :=
  ∀ n, P8565048445464575561.a n = A161942 (n + 1)

end A161942

/-! ## A161942.P3957185390994571468

`A000203(n+1)/A082903(n+1)`
-/

namespace A161942.P3957185390994571468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A082903 (n + 1) : ℚ)

end

end A161942.P3957185390994571468

namespace A161942

/-- `A000203(n+1)/A082903(n+1)` -/
def P3957185390994571468.Spec : Prop :=
  ∀ n, P3957185390994571468.a n = (A161942 (n + 1) : ℚ)

end A161942

/-! ## A161942.P4987308923493895059

`lcm(A348992(n+1), A351544(n+1))`
-/

namespace A161942.P4987308923493895059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A348992 (n + 1)) (A351544 (n + 1))

end

end A161942.P4987308923493895059

namespace A161942

/-- `lcm(A348992(n+1), A351544(n+1))` -/
def P4987308923493895059.Spec : Prop :=
  ∀ n, (P4987308923493895059.a n : ℤ) = A161942 (n + 1)

end A161942

/-! ## A161942.P12734395564273283823

`A000265(A048146(n+1)+A034448(n+1))`
-/

namespace A161942.P12734395564273283823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A048146 (n + 1) + A034448 (n + 1)).toNat

end

end A161942.P12734395564273283823

namespace A161942

/-- `A000265(A048146(n+1)+A034448(n+1))` -/
def P12734395564273283823.Spec : Prop :=
  ∀ n, P12734395564273283823.a n = A161942 (n + 1)

end A161942

/-!
# A161943: Number of different equations that can be made by summing numbers from 1 to n and using every number not more than once.

The programs for A161943, there is no canonical definition to state claims against.
-/

/-! ## A161943.P14861907998873815212

`∑[Δ[A007576(n)]/2]`
-/

namespace A161943.P14861907998873815212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007576 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161943.P14861907998873815212

/-! ## A161943.P10617682168428728274

`floor(A007576(n+1)/2)`
-/

namespace A161943.P10617682168428728274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007576 (n + 1) : ℚ) / 2⌋

end

end A161943.P10617682168428728274

/-! ## A161943.P15382426586349127282

`ceil(A007576(n+1)/2%A029945(n+1))-1`
-/

namespace A161943.P15382426586349127282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007576 (n + 1) : ℚ) / (Int.tmod 2 (A029945 (n + 1)) : ℚ)⌉ - 1

end

end A161943.P15382426586349127282

/-! ## A161943.P7934725811534640254

`(A007576(n+1)-A049886(Δ[A003605(n)]))/2`
-/

namespace A161943.P7934725811534640254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007576 (n + 1) - A049886 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A161943.P7934725811534640254

/-! ## A161943.P514996481507946859

`A007576(n+1)/2-A000005(A027701(n+1))/4`
-/

namespace A161943.P514996481507946859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007576 (n + 1) : ℚ) / 2 - (A000005 (A027701 (n + 1)).toNat : ℚ) / 4

end

end A161943.P514996481507946859

/-!
# A161944: a(n) = ((4+sqrt(2))*(3+sqrt(2))^n + (4-sqrt(2))*(3-sqrt(2))^n)/4.

The programs for A161944, the canonical program `A161944.P3131211168790516510` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161944 has offset 0).

The definition of A161944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161944.P3131211168790516510

`6*a(n-1)-7*a(n-2)` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161944

/-- `6*a(n-1)-7*a(n-2)` -/
def P3131211168790516510.Spec : Prop :=
  ∀ n, P3131211168790516510.a n = A161944 n

theorem P3131211168790516510.correct : P3131211168790516510.Spec := by
  intro n
  simp only [A161944]

end A161944

/-! ## A161944.P2501771887666919676

`((4+sqrt(2))*(3+sqrt(2))^n+(4-sqrt(2))*(3-sqrt(2))^n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161944.P2501771887666919676
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (2 : ℝ)) * (3 + Real.sqrt (2 : ℝ)) ^ n + (4 - Real.sqrt (2 : ℝ)) * (3 - Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A161944.P2501771887666919676

namespace A161944

/-- `((4+sqrt(2))*(3+sqrt(2))^n+(4-sqrt(2))*(3-sqrt(2))^n)/4` -/
def P2501771887666919676.Spec : Prop :=
  ∀ n, P2501771887666919676.a n = (A161944 n : ℝ)

end A161944

/-! ## A161944.P7609218375049877630

`ogf((2-5x)/(1-6x+7x^2))`
-/

namespace A161944.P7609218375049877630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -6, 7] n

end

end A161944.P7609218375049877630

namespace A161944

/-- `ogf((2-5x)/(1-6x+7x^2))` -/
def P7609218375049877630.Spec : Prop :=
  ∀ n, P7609218375049877630.a n = A161944 n

end A161944

/-! ## A161944.P15774684343699079605

`A086351(n)+A083878(n)`
-/

namespace A161944.P15774684343699079605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086351 n + A083878 n

end

end A161944.P15774684343699079605

namespace A161944

/-- `A086351(n)+A083878(n)` -/
def P15774684343699079605.Spec : Prop :=
  ∀ n, P15774684343699079605.a n = A161944 n

end A161944

/-! ## A161944.P2536794000915118574

`A163606(n)-∑[A102285(n)]`
-/

namespace A161944.P2536794000915118574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163606 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161944.P2536794000915118574

namespace A161944

/-- `A163606(n)-∑[A102285(n)]` -/
def P2536794000915118574.Spec : Prop :=
  ∀ n, P2536794000915118574.a n = A161944 n

end A161944

/-! ## A161944.P11254531071531494527

`Δ[A083878(n)]-A081179(n)`
-/

namespace A161944.P11254531071531494527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A081179 n

end

end A161944.P11254531071531494527

namespace A161944

/-- `Δ[A083878(n)]-A081179(n)` -/
def P11254531071531494527.Spec : Prop :=
  ∀ n, P11254531071531494527.a n = A161944 n

end A161944

/-! ## A161944.P9488612918846313191

`A034999(n+1)-A081179(n)`
-/

namespace A161944.P9488612918846313191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034999 (n + 1) - A081179 n

end

end A161944.P9488612918846313191

namespace A161944

/-- `A034999(n+1)-A081179(n)` -/
def P9488612918846313191.Spec : Prop :=
  ∀ n, P9488612918846313191.a n = A161944 n

end A161944

/-! ## A161944.P12555823842848021253

`A163606(n)-A081179(n+1)`
-/

namespace A161944.P12555823842848021253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163606 n - A081179 (n + 1)

end

end A161944.P12555823842848021253

namespace A161944

/-- `A163606(n)-A081179(n+1)` -/
def P12555823842848021253.Spec : Prop :=
  ∀ n, P12555823842848021253.a n = A161944 n

end A161944

/-! ## A161944.P17263149239774599816

`2*A086351(n)-A081179(n)`
-/

namespace A161944.P17263149239774599816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086351 n - A081179 n

end

end A161944.P17263149239774599816

namespace A161944

/-- `2*A086351(n)-A081179(n)` -/
def P17263149239774599816.Spec : Prop :=
  ∀ n, P17263149239774599816.a n = A161944 n

end A161944

/-! ## A161944.P2901401074137954286

`A164033(n)-2*A081179(n)`
-/

namespace A161944.P2901401074137954286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164033 n - 2 * A081179 n

end

end A161944.P2901401074137954286

namespace A161944

/-- `A164033(n)-2*A081179(n)` -/
def P2901401074137954286.Spec : Prop :=
  ∀ n, P2901401074137954286.a n = A161944 n

end A161944

/-! ## A161944.P3939980401870119640

`A086351(n+1)-2*A102285(n)`
-/

namespace A161944.P3939980401870119640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086351 (n + 1) - 2 * A102285 n

end

end A161944.P3939980401870119640

namespace A161944

/-- `A086351(n+1)-2*A102285(n)` -/
def P3939980401870119640.Spec : Prop :=
  ∀ n, P3939980401870119640.a n = A161944 n

end A161944

/-! ## A161944.P6550047033643265598

`A163606(n)-A081179(n)-A102285(n)`
-/

namespace A161944.P6550047033643265598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163606 n - A081179 n - A102285 n

end

end A161944.P6550047033643265598

namespace A161944

/-- `A163606(n)-A081179(n)-A102285(n)` -/
def P6550047033643265598.Spec : Prop :=
  ∀ n, P6550047033643265598.a n = A161944 n

end A161944

/-! ## A161944.P2303408209565500883

`A000129(n+1)+A084155(n+1)+A084155(n)`
-/

namespace A161944.P2303408209565500883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A084155 (n + 1) + A084155 n)

end

end A161944.P2303408209565500883

namespace A161944

/-- `A000129(n+1)+A084155(n+1)+A084155(n)` -/
def P2303408209565500883.Spec : Prop :=
  ∀ n, P2303408209565500883.a n = A161944 n

end A161944

/-! ## A161944.P2450106824595270094

`A086351(n+1)-(A086351(n)+A081179(n+1))`
-/

namespace A161944.P2450106824595270094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086351 (n + 1) - (A086351 n + A081179 (n + 1))

end

end A161944.P2450106824595270094

namespace A161944

/-- `A086351(n+1)-(A086351(n)+A081179(n+1))` -/
def P2450106824595270094.Spec : Prop :=
  ∀ n, P2450106824595270094.a n = A161944 n

end A161944

/-! ## A161944.P12851886887137235734

`∑[A164037(n)]+2-A164037(n)`
-/

namespace A161944.P12851886887137235734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A164037 n)

end

end A161944.P12851886887137235734

namespace A161944

/-- `∑[A164037(n)]+2-A164037(n)` -/
def P12851886887137235734.Spec : Prop :=
  ∀ n, P12851886887137235734.a n = A161944 n

end A161944

/-! ## A161944.P2977507044843236842

`Δ[A162270(n)/2-A102285(n)]`
-/

namespace A161944.P2977507044843236842
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162270 n : ℚ) / 2 - (A102285 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161944.P2977507044843236842

namespace A161944

/-- `Δ[A162270(n)/2-A102285(n)]` -/
def P2977507044843236842.Spec : Prop :=
  ∀ n, P2977507044843236842.a n = (A161944 n : ℚ)

end A161944

/-! ## A161944.P13433926020080734775

`Δ[A163348(n)/2]-A163348(n)`
-/

namespace A161944.P13433926020080734775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163348 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A163348 n : ℚ)

end

end A161944.P13433926020080734775

namespace A161944

/-- `Δ[A163348(n)/2]-A163348(n)` -/
def P13433926020080734775.Spec : Prop :=
  ∀ n, P13433926020080734775.a n = (A161944 n : ℚ)

end A161944

/-! ## A161944.P14580965772233113466

`A164033(n+3)%Δ[A164033(n)]`
-/

namespace A161944.P14580965772233113466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164033 (n + 3)) (f1 (n + 1) - f1 n)

end

end A161944.P14580965772233113466

namespace A161944

/-- `A164033(n+3)%Δ[A164033(n)]` -/
def P14580965772233113466.Spec : Prop :=
  ∀ n, P14580965772233113466.a n = A161944 n

end A161944

/-!
# A161945: Numbers k such that the three consecutive odd numbers {k,k+2,k+4} are all composite.

The programs for A161945, the canonical program `A161945.P6716022411705922474` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161945 has offset 1).

The definition of A161945 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099019, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161945.P6716022411705922474

`A099019(n+1)-2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161945

/-- `A099019(n+1)-2` -/
def P6716022411705922474.Spec : Prop :=
  ∀ n, P6716022411705922474.a n = A161945 (n + 1)

theorem P6716022411705922474.correct : P6716022411705922474.Spec := by
  intro n
  simp only [A161945, Nat.add_sub_cancel]

end A161945

/-! ## A161945.P13332172835531721992

`A129822(3*n+1)`
-/

namespace A161945.P13332172835531721992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129822 (3 * n + 1)

end

end A161945.P13332172835531721992

namespace A161945

/-- `A129822(3*n+1)` -/
def P13332172835531721992.Spec : Prop :=
  ∀ n, P13332172835531721992.a n = A161945 (n + 1)

end A161945

/-! ## A161945.P12864051092008803043

`record[A129822(n+1)/dr((n²+8)²)]`
-/

namespace A161945.P12864051092008803043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129822 (n + 1) : ℚ) / (SequenceMachineLib.digitalRoot ((n ^ 2 + 8) ^ 2 : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161945.P12864051092008803043

namespace A161945

/-- `record[A129822(n+1)/dr((n²+8)²)]` -/
def P12864051092008803043.Spec : Prop :=
  ∀ n, P12864051092008803043.a n = (A161945 (n + 1) : ℚ)

end A161945

/-! ## A161945.P3248552616037163228

`A129822(A008486(n+1))-4`
-/

namespace A161945.P3248552616037163228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129822 (A008486 (n + 1)).toNat - 4

end

end A161945.P3248552616037163228

namespace A161945

/-- `A129822(A008486(n+1))-4` -/
def P3248552616037163228.Spec : Prop :=
  ∀ n, P3248552616037163228.a n = A161945 (n + 1)

end A161945

/-! ## A161945.P5280554665739584570

`lt[4, A007920(n^(n%2))]`
-/

namespace A161945.P5280554665739584570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161945.P5280554665739584570

namespace A161945

/-- `lt[4, A007920(n^(n%2))]` -/
def P5280554665739584570.Spec : Prop :=
  ∀ n, (P5280554665739584570.a n : ℤ) = A161945 (n + 1)

end A161945

/-! ## A161945.P561924697883026639

`lt[9, A266222(A007920(n))]`
-/

namespace A161945.P561924697883026639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 (A007920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161945.P561924697883026639

namespace A161945

/-- `lt[9, A266222(A007920(n))]` -/
def P561924697883026639.Spec : Prop :=
  ∀ n, (P561924697883026639.a n : ℤ) = A161945 (n + 1)

end A161945

/-! ## A161945.P5427254603274285442

`A023444(A099019(n+1))`
-/

namespace A161945.P5427254603274285442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A099019 (n + 1)).toNat

end

end A161945.P5427254603274285442

namespace A161945

/-- `A023444(A099019(n+1))` -/
def P5427254603274285442.Spec : Prop :=
  ∀ n, P5427254603274285442.a n = A161945 (n + 1)

end A161945

/-! ## A161945.P18039665111506961794

`A023447(A099019(n+1)+3)`
-/

namespace A161945.P18039665111506961794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A099019 (n + 1) + 3).toNat

end

end A161945.P18039665111506961794

namespace A161945

/-- `A023447(A099019(n+1)+3)` -/
def P18039665111506961794.Spec : Prop :=
  ∀ n, P18039665111506961794.a n = A161945 (n + 1)

end A161945

/-! ## A161945.P17041527376414369999

`A283555(n+1)-7`
-/

namespace A161945.P17041527376414369999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283555 (n + 1) - 7

end

end A161945.P17041527376414369999

namespace A161945

/-- `A283555(n+1)-7` -/
def P17041527376414369999.Spec : Prop :=
  ∀ n, P17041527376414369999.a n = A161945 (n + 1)

end A161945

/-! ## A161945.P16073036109446632420

`A023449(A283555(n+1))`
-/

namespace A161945.P16073036109446632420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023449 (A283555 (n + 1)).toNat

end

end A161945.P16073036109446632420

namespace A161945

/-- `A023449(A283555(n+1))` -/
def P16073036109446632420.Spec : Prop :=
  ∀ n, P16073036109446632420.a n = A161945 (n + 1)

end A161945

/-!
# A161946: Odd part of sum of unitary divisors of n.

The programs for A161946, the canonical program `A161946.P965283892318521115` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161946 has offset 1).

The definition of A161946 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161946.P965283892318521115

`A000265(A034448(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A161946

/-- `A000265(A034448(n+1))` -/
def P965283892318521115.Spec : Prop :=
  ∀ n, P965283892318521115.a n = A161946 (n + 1)

theorem P965283892318521115.correct : P965283892318521115.Spec := by
  intro n
  simp only [A161946, Nat.add_sub_cancel]

end A161946

/-! ## A161946.P8208368509137822786

`∏{p}[n+1, A000265(#^val(n+1, #)+1)]`
-/

namespace A161946.P8208368509137822786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000265 (p ^ SequenceMachineLib.valuation (n + 1) p + 1)

end

end A161946.P8208368509137822786

namespace A161946

/-- `∏{p}[n+1, A000265(#^val(n+1, #)+1)]` -/
def P8208368509137822786.Spec : Prop :=
  ∀ n, P8208368509137822786.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P4272479825964014082

`A171435(2*A034448(n+1))`
-/

namespace A161946.P4272479825964014082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A034448 (n + 1)).toNat

end

end A161946.P4272479825964014082

namespace A161946

/-- `A171435(2*A034448(n+1))` -/
def P4272479825964014082.Spec : Prop :=
  ∀ n, P4272479825964014082.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P11753730044539971121

`A000265(A034460(n+1)+1+n)`
-/

namespace A161946.P11753730044539971121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A034460 (n + 1) + 1 + (n : ℤ)).toNat

end

end A161946.P11753730044539971121

namespace A161946

/-- `A000265(A034460(n+1)+1+n)` -/
def P11753730044539971121.Spec : Prop :=
  ∀ n, P11753730044539971121.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P1439625724725365830

`A000265(A063919(n+1)+n+1)`
-/

namespace A161946.P1439625724725365830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A063919 (n + 1) + (n + 1 : ℤ)).toNat

end

end A161946.P1439625724725365830

namespace A161946

/-- `A000265(A063919(n+1)+n+1)` -/
def P1439625724725365830.Spec : Prop :=
  ∀ n, P1439625724725365830.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P16073686571463776498

`A000265(A064971(n+1)/(n+1))`
-/

namespace A161946.P16073686571463776498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A064971 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A161946.P16073686571463776498

namespace A161946

/-- `A000265(A064971(n+1)/(n+1))` -/
def P16073686571463776498.Spec : Prop :=
  ∀ n, P16073686571463776498.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P10462014201435597566

`A000265(A129468(n+1)+2*(n+1))`
-/

namespace A161946.P10462014201435597566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A129468 (n + 1) + (2 * (n + 1) : ℤ)).toNat

end

end A161946.P10462014201435597566

namespace A161946

/-- `A000265(A129468(n+1)+2*(n+1))` -/
def P10462014201435597566.Spec : Prop :=
  ∀ n, P10462014201435597566.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P10063604766098280016

`A000265(∑{d}[n+1, #]-A048146(n+1))`
-/

namespace A161946.P10063604766098280016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A048146 (n + 1)).toNat

end

end A161946.P10063604766098280016

namespace A161946

/-- `A000265(∑{d}[n+1, #]-A048146(n+1))` -/
def P10063604766098280016.Spec : Prop :=
  ∀ n, P10063604766098280016.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P12441688809516225194

`A000265(A000203(n+1)-A048146(n+1))`
-/

namespace A161946.P12441688809516225194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000203 (n + 1) - A048146 (n + 1)).toNat

end

end A161946.P12441688809516225194

namespace A161946

/-- `A000265(A000203(n+1)-A048146(n+1))` -/
def P12441688809516225194.Spec : Prop :=
  ∀ n, P12441688809516225194.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P4895070282830784871

`A000265(A088580(n+1)-(A048146(n+1)+1))`
-/

namespace A161946.P4895070282830784871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A088580 (n + 1) - (A048146 (n + 1) + 1)).toNat

end

end A161946.P4895070282830784871

namespace A161946

/-- `A000265(A088580(n+1)-(A048146(n+1)+1))` -/
def P4895070282830784871.Spec : Prop :=
  ∀ n, P4895070282830784871.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P7927314689856074999

`A000265(A245092(2*n+1)-A048146(n+1))`
-/

namespace A161946.P7927314689856074999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A245092 (2 * n + 1) - A048146 (n + 1)).toNat

end

end A161946.P7927314689856074999

namespace A161946

/-- `A000265(A245092(2*n+1)-A048146(n+1))` -/
def P7927314689856074999.Spec : Prop :=
  ∀ n, P7927314689856074999.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P5689546386854613626

`A000265(A001065(n+1)+1+n-A048146(n+1))`
-/

namespace A161946.P5689546386854613626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001065 (n + 1) + 1 + (n : ℤ) - A048146 (n + 1)).toNat

end

end A161946.P5689546386854613626

namespace A161946

/-- `A000265(A001065(n+1)+1+n-A048146(n+1))` -/
def P5689546386854613626.Spec : Prop :=
  ∀ n, P5689546386854613626.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P14649942458957009643

`A000265(A324121(n+1)+A324122(n+1)-A048146(n+1))`
-/

namespace A161946.P14649942458957009643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A324121 (n + 1) + (A324122 (n + 1) - A048146 (n + 1))).toNat

end

end A161946.P14649942458957009643

namespace A161946

/-- `A000265(A324121(n+1)+A324122(n+1)-A048146(n+1))` -/
def P14649942458957009643.Spec : Prop :=
  ∀ n, P14649942458957009643.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P739917559816505701

`A000265(A325971(n+1)+A325972(n+1)-A048146(n+1))`
-/

namespace A161946.P739917559816505701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A325971 (n + 1) + (A325972 (n + 1) - A048146 (n + 1))).toNat

end

end A161946.P739917559816505701

namespace A161946

/-- `A000265(A325971(n+1)+A325972(n+1)-A048146(n+1))` -/
def P739917559816505701.Spec : Prop :=
  ∀ n, P739917559816505701.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P4697764020244037285

`A000265(A325973(n+1)+A325974(n+1)-A048146(n+1))`
-/

namespace A161946.P4697764020244037285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A325973 (n + 1) + (A325974 (n + 1) - A048146 (n + 1))).toNat

end

end A161946.P4697764020244037285

namespace A161946

/-- `A000265(A325973(n+1)+A325974(n+1)-A048146(n+1))` -/
def P4697764020244037285.Spec : Prop :=
  ∀ n, P4697764020244037285.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P11783709055514245747

`A153733(A034448(n+1)-1)+1`
-/

namespace A161946.P11783709055514245747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A034448 (n + 1) - 1).toNat + 1

end

end A161946.P11783709055514245747

namespace A161946

/-- `A153733(A034448(n+1)-1)+1` -/
def P11783709055514245747.Spec : Prop :=
  ∀ n, P11783709055514245747.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P14026359136559268380

`A034448(n+1)/A006519(A107749(n+1))`
-/

namespace A161946.P14026359136559268380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A006519 (A107749 (n + 1)).toNat : ℚ)

end

end A161946.P14026359136559268380

namespace A161946

/-- `A034448(n+1)/A006519(A107749(n+1))` -/
def P14026359136559268380.Spec : Prop :=
  ∀ n, P14026359136559268380.a n = (A161946 (n + 1) : ℚ)

end A161946

/-! ## A161946.P12854224234664200599

`A000265(A343569(n+1))`
-/

namespace A161946.P12854224234664200599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A343569 (n + 1)).toNat

end

end A161946.P12854224234664200599

namespace A161946

/-- `A000265(A343569(n+1))` -/
def P12854224234664200599.Spec : Prop :=
  ∀ n, P12854224234664200599.a n = A161946 (n + 1)

end A161946

/-! ## A161946.P15940701165145736101

`lcm(A000079(n), A034448(n+1))/A000079(n)`
-/

namespace A161946.P15940701165145736101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A034448 (n + 1)) : ℚ) / (A000079 n : ℚ)

end

end A161946.P15940701165145736101

namespace A161946

/-- `lcm(A000079(n), A034448(n+1))/A000079(n)` -/
def P15940701165145736101.Spec : Prop :=
  ∀ n, P15940701165145736101.a n = (A161946 (n + 1) : ℚ)

end A161946

/-! ## A161946.P9149534114643963134

`A034448(n+1)/gcd(A131577(n)², A034448(n+1))`
-/

namespace A161946.P9149534114643963134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (Int.gcd (A131577 n ^ 2) (A034448 (n + 1)) : ℚ)

end

end A161946.P9149534114643963134

namespace A161946

/-- `A034448(n+1)/gcd(A131577(n)², A034448(n+1))` -/
def P9149534114643963134.Spec : Prop :=
  ∀ n, P9149534114643963134.a n = (A161946 (n + 1) : ℚ)

end A161946

/-!
# A161947: a(n) = ((4+sqrt(2))*(5+sqrt(2))^n + (4-sqrt(2))*(5-sqrt(2))^n)/4.

The programs for A161947, the canonical program `A161947.P2424963393875316085` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161947 has offset 0).

The definition of A161947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161947.P2424963393875316085

`10*a(n-1)-23*a(n-2)` with `a(0)=2, a(1)=11`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161947

/-- `10*a(n-1)-23*a(n-2)` -/
def P2424963393875316085.Spec : Prop :=
  ∀ n, P2424963393875316085.a n = A161947 n

theorem P2424963393875316085.correct : P2424963393875316085.Spec := by
  intro n
  simp only [A161947]

end A161947

/-! ## A161947.P8728578672225633516

`((4+sqrt(2))*(5+sqrt(2))^n+(4-sqrt(2))*(5-sqrt(2))^n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161947.P8728578672225633516
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (2 : ℝ)) * (5 + Real.sqrt (2 : ℝ)) ^ n + (4 - Real.sqrt (2 : ℝ)) * (5 - Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A161947.P8728578672225633516

namespace A161947

/-- `((4+sqrt(2))*(5+sqrt(2))^n+(4-sqrt(2))*(5-sqrt(2))^n)/4` -/
def P8728578672225633516.Spec : Prop :=
  ∀ n, P8728578672225633516.a n = (A161947 n : ℝ)

end A161947

/-! ## A161947.P14135787409250961256

`ogf((2-9x)/(1-10x+23x^2))`
-/

namespace A161947.P14135787409250961256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -9] [1, -10, 23] n

end

end A161947.P14135787409250961256

namespace A161947

/-- `ogf((2-9x)/(1-10x+23x^2))` -/
def P14135787409250961256.Spec : Prop :=
  ∀ n, P14135787409250961256.a n = A161947 n

end A161947

/-! ## A161947.P2317540279472286132

`Δ[A083880(n)/2]`
-/

namespace A161947.P2317540279472286132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083880 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161947.P2317540279472286132

namespace A161947

/-- `Δ[A083880(n)/2]` -/
def P2317540279472286132.Spec : Prop :=
  ∀ n, P2317540279472286132.a n = (A161947 n : ℚ)

end A161947

/-! ## A161947.P7710228199254396319

`A163605(n)-A164031(n)`
-/

namespace A161947.P7710228199254396319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163605 n - A164031 n

end

end A161947.P7710228199254396319

namespace A161947

/-- `A163605(n)-A164031(n)` -/
def P7710228199254396319.Spec : Prop :=
  ∀ n, P7710228199254396319.a n = A161947 n

end A161947

/-! ## A161947.P3353566305593978971

`2*A161734(n)-A081182(n)`
-/

namespace A161947.P3353566305593978971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161734 n - A081182 n

end

end A161947.P3353566305593978971

namespace A161947

/-- `2*A161734(n)-A081182(n)` -/
def P3353566305593978971.Spec : Prop :=
  ∀ n, P3353566305593978971.a n = A161947 n

end A161947

/-! ## A161947.P12697240737627994914

`A164035(n)-2*A081182(n)`
-/

namespace A161947.P12697240737627994914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164035 n - 2 * A081182 n

end

end A161947.P12697240737627994914

namespace A161947

/-- `A164035(n)-2*A081182(n)` -/
def P12697240737627994914.Spec : Prop :=
  ∀ n, P12697240737627994914.a n = A161947 n

end A161947

/-! ## A161947.P16898452964011238014

`3*A161734(n)-A163346(n)`
-/

namespace A161947.P16898452964011238014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A161734 n - A163346 n

end

end A161947.P16898452964011238014

namespace A161947

/-- `3*A161734(n)-A163346(n)` -/
def P16898452964011238014.Spec : Prop :=
  ∀ n, P16898452964011238014.a n = A161947 n

end A161947

/-! ## A161947.P4364571690519482240

`4*A161734(n)-A164035(n)`
-/

namespace A161947.P4364571690519482240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A161734 n - A164035 n

end

end A161947.P4364571690519482240

namespace A161947

/-- `4*A161734(n)-A164035(n)` -/
def P4364571690519482240.Spec : Prop :=
  ∀ n, P4364571690519482240.a n = A161947 n

end A161947

/-! ## A161947.P10665437512795421127

`5*A161734(n)-A163605(n)`
-/

namespace A161947.P10665437512795421127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A161734 n - A163605 n

end

end A161947.P10665437512795421127

namespace A161947

/-- `5*A161734(n)-A163605(n)` -/
def P10665437512795421127.Spec : Prop :=
  ∀ n, P10665437512795421127.a n = A161947 n

end A161947

/-! ## A161947.P1183636012577468306

`Δ[A163346(n)/2-A081182(n)]`
-/

namespace A161947.P1183636012577468306
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163346 n : ℚ) / 2 - (A081182 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161947.P1183636012577468306

namespace A161947

/-- `Δ[A163346(n)/2-A081182(n)]` -/
def P1183636012577468306.Spec : Prop :=
  ∀ n, P1183636012577468306.a n = (A161947 n : ℚ)

end A161947

/-! ## A161947.P8942647919219818563

`Δ[A163346(n)/2]-A163349(n)`
-/

namespace A161947.P8942647919219818563
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163346 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A163349 n : ℚ)

end

end A161947.P8942647919219818563

namespace A161947

/-- `Δ[A163346(n)/2]-A163349(n)` -/
def P8942647919219818563.Spec : Prop :=
  ∀ n, P8942647919219818563.a n = (A161947 n : ℚ)

end A161947

/-! ## A161947.P7991866798727686249

`Δ[A164038(n)/2-A164035(n)]`
-/

namespace A161947.P7991866798727686249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164038 n : ℚ) / 2 - (A164035 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161947.P7991866798727686249

namespace A161947

/-- `Δ[A164038(n)/2-A164035(n)]` -/
def P7991866798727686249.Spec : Prop :=
  ∀ n, P7991866798727686249.a n = (A161947 n : ℚ)

end A161947

/-! ## A161947.P6240397200928633461

`A164031(n+1)%(A164035(n)+A081182(n+1))`
-/

namespace A161947.P6240397200928633461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164031 (n + 1)) (A164035 n + A081182 (n + 1))

end

end A161947.P6240397200928633461

namespace A161947

/-- `A164031(n+1)%(A164035(n)+A081182(n+1))` -/
def P6240397200928633461.Spec : Prop :=
  ∀ n, P6240397200928633461.a n = A161947 n

end A161947

/-!
# A161948: Base-11 Armstrong or narcissistic numbers (written in base 10).

The programs for A161948, there is no canonical definition to state claims against.
-/

/-! ## A161948.P16919540809207978607

`∑[A121828(A210713(n)!)]`
-/

namespace A161948.P16919540809207978607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121828 (Nat.factorial (A210713 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161948.P16919540809207978607

/-! ## A161948.P10407069280542514908

`∑[A342516(A147454(n+1))]`
-/

namespace A161948.P10407069280542514908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342516 (A147454 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161948.P10407069280542514908

/-! ## A161948.P9227761800167305519

`A194186(∑[A294138(n)])+n+1`
-/

namespace A161948.P9227761800167305519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194186 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n + 1 : ℤ)

end

end A161948.P9227761800167305519

/-! ## A161948.P17476451323002770517

`record[A351870(n+1)%A007535(n+2)]`
-/

namespace A161948.P17476451323002770517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351870 (n + 1)) (A007535 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161948.P17476451323002770517

/-! ## A161948.P1851469258855224688

`A102493(n+1)+A094525(A000217(n))`
-/

namespace A161948.P1851469258855224688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102493 (n + 1) + A094525 (A000217 n).toNat

end

end A161948.P1851469258855224688

/-!
# A161949: Base-12 Armstrong or narcissistic numbers (written in base 10).

The programs for A161949, there is no canonical definition to state claims against.
-/

/-! ## A161949.P8259824867321550973

`∑[A337547(∑[A326627(n)])]`
-/

namespace A161949.P8259824867321550973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326627 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337547 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161949.P8259824867321550973

/-! ## A161949.P18383338513434851840

`∑[A268444(∑[A034560(3*n+1)])]`
-/

namespace A161949.P18383338513434851840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034560 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161949.P18383338513434851840

/-! ## A161949.P6139496853879562089

`∑[A224839(A068045(n)^A122458(n))]`
-/

namespace A161949.P6139496853879562089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224839 (SequenceMachineLib.roundAway ((A068045 n : ℚ) ^ (A122458 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161949.P6139496853879562089

/-! ## A161949.P16549760283403621007

`∑[A224839(A068045(n)^A001511(n+1))]`
-/

namespace A161949.P16549760283403621007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224839 (SequenceMachineLib.roundAway ((A068045 n : ℚ) ^ (A001511 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161949.P16549760283403621007

/-!
# A161950: Base-13 Armstrong or narcissistic numbers (written in base 10).

The programs for A161950, there is no canonical definition to state claims against.
-/

/-! ## A161950.P12285222938186624835

`A004896(n+2)%(A240177(A187829(n+1))+A213518(n+1))`
-/

namespace A161950.P12285222938186624835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004896 (n + 2)) (A240177 (A187829 (n + 1)).toNat + A213518 (n + 1))

end

end A161950.P12285222938186624835

/-! ## A161950.P16502844342166849146

`∑[A317968(A326594(n))]`
-/

namespace A161950.P16502844342166849146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317968 (A326594 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161950.P16502844342166849146

/-! ## A161950.P6723657565484689715

`A322058(A033886(n))+n`
-/

namespace A161950.P6723657565484689715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322058 (A033886 n).toNat + (n : ℤ)

end

end A161950.P6723657565484689715

/-! ## A161950.P16453182072649841260

`∑[A066060(A029110(n)!)]`
-/

namespace A161950.P16453182072649841260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (Nat.factorial (A029110 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161950.P16453182072649841260

/-! ## A161950.P4175865664618664758

`lt[A003114(n), A358373(A127301(n))]`
-/

namespace A161950.P4175865664618664758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358373 (A127301 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161950.P4175865664618664758

/-!
# A161951: Base-14 Armstrong or narcissistic numbers (written in base 10).

The programs for A161951, there is no canonical definition to state claims against.
-/

/-! ## A161951.P663943346485401054

`A256968(C(n, 12))+n+1`
-/

namespace A161951.P663943346485401054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256968 (Nat.choose n 12) + (n + 1 : ℤ)

end

end A161951.P663943346485401054

/-! ## A161951.P15568724568807686726

`A000041(C(2^∑{digits}[n, #%C(n, #)], n+2))+n`
-/

namespace A161951.P15568724568807686726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum) (n + 2)) + (n : ℤ)

end

end A161951.P15568724568807686726

/-! ## A161951.P3750898097820854102

`A213621(A185344(n))+n`
-/

namespace A161951.P3750898097820854102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213621 (A185344 n).toNat + (n : ℤ)

end

end A161951.P3750898097820854102

/-! ## A161951.P492387814333109861

`A124530(A343346(n))+n`
-/

namespace A161951.P492387814333109861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124530 (A343346 n).toNat + (n : ℤ)

end

end A161951.P492387814333109861

/-! ## A161951.P9442157013740949211

`A008545(A089455(n+1))+n`
-/

namespace A161951.P9442157013740949211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008545 (A089455 (n + 1)).toNat + (n : ℤ)

end

end A161951.P9442157013740949211

/-!
# A161952: Base-15 Armstrong or narcissistic numbers (written in base 10).

The programs for A161952, there is no canonical definition to state claims against.
-/

/-! ## A161952.P3094092482163712782

`A099392(n+1)^A185284(A056827(n))+n`
-/

namespace A161952.P3094092482163712782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099392 (n + 1) : ℚ) ^ (A185284 (A056827 n).toNat : ℤ) + (n : ℚ)

end

end A161952.P3094092482163712782

/-! ## A161952.P10102166557231029907

`A007590(n)*A185294(A039071(n+1))+n+1`
-/

namespace A161952.P10102166557231029907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n * A185294 (A039071 (n + 1)).toNat + (n + 1 : ℤ)

end

end A161952.P10102166557231029907

/-! ## A161952.P7924668639999441262

`(7*n+1)^A172543(n+1)+n`
-/

namespace A161952.P7924668639999441262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * n + 1 : ℚ) ^ (A172543 (n + 1) : ℤ) + (n : ℚ)

end

end A161952.P7924668639999441262

/-! ## A161952.P9236481099138981721

`gcd(∑[or(1, n)]-n, A253134(2*n+3))+n`
-/

namespace A161952.P9236481099138981721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) (A253134 (2 * n + 3)) + n

end

end A161952.P9236481099138981721

/-! ## A161952.P17328881821124785400

`A099803(A229230(A160923(n)))+n`
-/

namespace A161952.P17328881821124785400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099803 (A229230 (A160923 n).toNat).toNat + (n : ℤ)

end

end A161952.P17328881821124785400

/-!
# A161953: Base-16 Armstrong or narcissistic numbers (written in base 10).

The programs for A161953, there is no canonical definition to state claims against.
-/

/-! ## A161953.P2431905065839734383

`A291688(A184955(n))+n`
-/

namespace A161953.P2431905065839734383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291688 (A184955 n).toNat + (n : ℤ)

end

end A161953.P2431905065839734383

/-! ## A161953.P9633356190430135053

`A276752(A205295(n))+n`
-/

namespace A161953.P9633356190430135053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276752 (A205295 n).toNat + (n : ℤ)

end

end A161953.P9633356190430135053

/-! ## A161953.P11598284697734354211

`record[gcd(A007723(n), A113678(n))]`
-/

namespace A161953.P11598284697734354211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007723 n) (A113678 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161953.P11598284697734354211

/-! ## A161953.P283757014630928043

`A205321(A205295(n)!)+1+n`
-/

namespace A161953.P283757014630928043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205321 (Nat.factorial (A205295 n).toNat) + 1 + (n : ℤ)

end

end A161953.P283757014630928043

/-!
# A161954: Number of reduced words of length n in the Weyl group B_27.

The programs for A161954, there is no canonical definition to state claims against.
-/

/-! ## A161954.P13196055011021775234

`A185284(A326687(n+3))+A162369(n)`
-/

namespace A161954.P13196055011021775234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A326687 (n + 3)).toNat + A162369 n

end

end A161954.P13196055011021775234

/-!
# A161955: TITO2(n): The operation A161594 in binary, digit-reversals carried out in base 2.

The programs for A161955, there is no canonical definition to state claims against.
-/

/-! ## A161955.P5474332085272729031

`A030101(A162742(n+1))`
-/

namespace A161955.P5474332085272729031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A162742 (n + 1)).toNat

end

end A161955.P5474332085272729031

/-! ## A161955.P918685408671426230

`A057889(A235027(n+1)/A006519(n+1))`
-/

namespace A161955.P918685408671426230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (SequenceMachineLib.roundAway ((A235027 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A161955.P918685408671426230

/-! ## A161955.P12597484016552730300

`A030101(A235027(n+1))`
-/

namespace A161955.P12597484016552730300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A235027 (n + 1)).toNat

end

end A161955.P12597484016552730300

/-! ## A161955.P5447249012367217231

`A165789(A162742(n+1)%A075818(n+1))`
-/

namespace A161955.P5447249012367217231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165789 (Int.tmod (A162742 (n + 1)) (A075818 (n + 1))).toNat

end

end A161955.P5447249012367217231

/-! ## A161955.P7418680881144334547

`A165789(A162742(n+1))%A084967(n+1)`
-/

namespace A161955.P7418680881144334547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165789 (A162742 (n + 1)).toNat) (A084967 (n + 1))

end

end A161955.P7418680881144334547

/-! ## A161955.P2682626039384345438

`A165789(lcm(A162742(n+1), A209615(n+1)))`
-/

namespace A161955.P2682626039384345438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165789 (Int.lcm (A162742 (n + 1)) (A209615 (n + 1)))

end

end A161955.P2682626039384345438

/-! ## A161955.P11818761829825002501

`A325401(2*A162742(n+1))`
-/

namespace A161955.P11818761829825002501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A162742 (n + 1)).toNat

end

end A161955.P11818761829825002501

/-! ## A161955.P3785110442558779962

`A325401(A235027(2*(n+1)))`
-/

namespace A161955.P3785110442558779962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A235027 (2 * (n + 1))).toNat

end

end A161955.P3785110442558779962

/-! ## A161955.P17108870297158203842

`A325401(A162742(n+1)+A162742(n+1))`
-/

namespace A161955.P17108870297158203842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A162742 (n + 1) + A162742 (n + 1)).toNat

end

end A161955.P17108870297158203842

/-! ## A161955.P10598766036627779141

`A325401(A235027(n+1)+A235027(n+1))`
-/

namespace A161955.P10598766036627779141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A235027 (n + 1) + A235027 (n + 1)).toNat

end

end A161955.P10598766036627779141

/-!
# A161956: Number of reduced words of length n in the Weyl group B_28.

The programs for A161956, there is no canonical definition to state claims against.
-/

/-! ## A161956.P1877753892796847488

`A185284(A008507(n+1)+5)+A162370(n)`
-/

namespace A161956.P1877753892796847488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A008507 (n + 1) + 5).toNat + A162370 n

end

end A161956.P1877753892796847488

/-!
# A161957: Fixed points of A161955.

The programs for A161957, there is no canonical definition to state claims against.
-/

/-! ## A161957.P3570934367435757612

`eq[n, A161955(or(1, n))]`
-/

namespace A161957.P3570934367435757612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161955 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161957.P3570934367435757612

/-! ## A161957.P6768673047212997116

`eq[n, A161955(round(acot(n)+n))]`
-/

namespace A161957.P6768673047212997116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161955 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161957.P6768673047212997116

/-! ## A161957.P7810418149322978976

`record[gcd(n+1, A161955(n+1))]`
-/

namespace A161957.P7810418149322978976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A161955 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161957.P7810418149322978976

/-! ## A161957.P11826793860382591612

`eq[n, A161955(round(sqrt(n²+1)))]`
-/

namespace A161957.P11826793860382591612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161955 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161957.P11826793860382591612

/-! ## A161957.P5031156019173286562

`record[A161955(2*(n+1))%(n+2)]`
-/

namespace A161957.P5031156019173286562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161955 (2 * (n + 1))) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161957.P5031156019173286562

/-! ## A161957.P1698702587127972468

`eq[xor(1, n)+1, A057889(A235027(n))]`
-/

namespace A161957.P1698702587127972468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A235027 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161957.P1698702587127972468

/-!
# A161958: a(n) = smallest composite number which is the sum of n consecutive composite numbers.

The programs for A161958, there is no canonical definition to state claims against.
-/

/-! ## A161958.P3072191792924398950

`A122865(A280754(n+5))+A073621(n+1)`
-/

namespace A161958.P3072191792924398950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (A280754 (n + 5)).toNat + A073621 (n + 1)

end

end A161958.P3072191792924398950

/-!
# A161962: Odd numbers k such that phi(k) < phi(k+1).

The programs for A161962, there is no canonical definition to state claims against.
-/

/-! ## A161962.P17300618654213108358

`2*A001836(n+1)-1`
-/

namespace A161962.P17300618654213108358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001836 (n + 1) - 1

end

end A161962.P17300618654213108358

/-! ## A161962.P12985377610628613800

`A001836(n+1)+A001836(n+1)-A276283(n)%2`
-/

namespace A161962.P12985377610628613800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001836 (n + 1) + (A001836 (n + 1) - Int.tmod (A276283 n) 2)

end

end A161962.P12985377610628613800

/-! ## A161962.P14835838343940090366

`record[A000265(A078776(n+1)-1)]`
-/

namespace A161962.P14835838343940090366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A078776 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161962.P14835838343940090366

/-! ## A161962.P4764543892552125040

`A001836(n+1)+A001836(n+1)-A231813(A096787(n+1))`
-/

namespace A161962.P4764543892552125040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001836 (n + 1) + (A001836 (n + 1) - A231813 (A096787 (n + 1)).toNat)

end

end A161962.P4764543892552125040

/-! ## A161962.P10685887058823854344

`A000217(A001836(n+1))-A000217(A001836(n+1)-2)`
-/

namespace A161962.P10685887058823854344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001836 (n + 1)).toNat - A000217 (A001836 (n + 1) - 2).toNat

end

end A161962.P10685887058823854344

/-! ## A161962.P3610388391980687094

`A004273(A001836(n+1))`
-/

namespace A161962.P3610388391980687094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A001836 (n + 1)).toNat

end

end A161962.P3610388391980687094

/-! ## A161962.P4081028065005284196

`A005408(A001836(n+1)-1)`
-/

namespace A161962.P4081028065005284196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A001836 (n + 1) - 1).toNat

end

end A161962.P4081028065005284196

/-! ## A161962.P3686462964243692939

`A005843(A001836(n+1)-1)+1`
-/

namespace A161962.P3686462964243692939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A001836 (n + 1) - 1).toNat + 1

end

end A161962.P3686462964243692939

/-!
# A161963: Even numbers n for which phi(n) > phi(n+1).

The programs for A161963, there is no canonical definition to state claims against.
-/

/-! ## A161963.P1165848753600626702

`2*A001837(n+1)`
-/

namespace A161963.P1165848753600626702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001837 (n + 1)

end

end A161963.P1165848753600626702

/-! ## A161963.P3126453205584821677

`A001837(A000027(n+1))+A001837(n+1)`
-/

namespace A161963.P3126453205584821677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001837 (A000027 (n + 1)).toNat + A001837 (n + 1)

end

end A161963.P3126453205584821677

/-! ## A161963.P14761429984309397808

`A001837(n+1)+A001837((n+1)%A001837(n+1))`
-/

namespace A161963.P14761429984309397808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001837 (n + 1) + A001837 (Int.tmod (n + 1 : ℤ) (A001837 (n + 1))).toNat

end

end A161963.P14761429984309397808

/-! ## A161963.P17279498200285528471

`A001837(n+1)+A001837(n+1)/A001222(A045319(n+1))`
-/

namespace A161963.P17279498200285528471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001837 (n + 1) : ℚ) + (A001837 (n + 1) : ℚ) / (A001222 (A045319 (n + 1)).toNat : ℚ)

end

end A161963.P17279498200285528471

/-! ## A161963.P13029301595776296531

`∑{d}[A001837(n+1), A000010(#)+A000010(#)]`
-/

namespace A161963.P13029301595776296531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 d + A000010 d)

end

end A161963.P13029301595776296531

/-! ## A161963.P15386441043366038295

`record[A000265(A328056(n+1))+1]`
-/

namespace A161963.P15386441043366038295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A328056 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161963.P15386441043366038295

/-! ## A161963.P11950790917329097201

`A004277(A001837(n+1))`
-/

namespace A161963.P11950790917329097201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001837 (n + 1)).toNat

end

end A161963.P11950790917329097201

/-!
# A161964: Prime(n) raised to the nonprime(n)-th power.

The programs for A161964, the canonical program `A161964.P4214855072703663802` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161964 has offset 1).

The definition of A161964 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161964.P4214855072703663802

`A000040(n+1)^A141468(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161964

/-- `A000040(n+1)^A141468(n+1)` -/
def P4214855072703663802.Spec : Prop :=
  ∀ n, P4214855072703663802.a n = (A161964 (n + 1) : ℚ)

end A161964

/-! ## A161964.P1916780411894445176

`p?[n-(-1)^n]^comp[p?[xor(1, n)]]`
-/

namespace A161964.P1916780411894445176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A161964.P1916780411894445176

namespace A161964

/-- `p?[n-(-1)^n]^comp[p?[xor(1, n)]]` -/
def P1916780411894445176.Spec : Prop :=
  ∀ n, P1916780411894445176.a n = A161964 (n + 1)

end A161964

/-! ## A161964.P11039647710066848012

`p?[xor(1, n)+1]^comp[p?[n%3+n]]`
-/

namespace A161964.P11039647710066848012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A161964.P11039647710066848012

namespace A161964

/-- `p?[xor(1, n)+1]^comp[p?[n%3+n]]` -/
def P11039647710066848012.Spec : Prop :=
  ∀ n, (P11039647710066848012.a n : ℤ) = A161964 (n + 1)

end A161964

/-! ## A161964.P5894812263911680771

`p?[n-(-1)^n]^comp[p?[n-(-1)^n]]`
-/

namespace A161964.P5894812263911680771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A161964.P5894812263911680771

namespace A161964

/-- `p?[n-(-1)^n]^comp[p?[n-(-1)^n]]` -/
def P5894812263911680771.Spec : Prop :=
  ∀ n, P5894812263911680771.a n = A161964 (n + 1)

end A161964

/-! ## A161964.P1300096037351774862

`(A006093(n+1)+1)^comp[p?[xor(1, n)]]`
-/

namespace A161964.P1300096037351774862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A161964.P1300096037351774862

namespace A161964

/-- `(A006093(n+1)+1)^comp[p?[xor(1, n)]]` -/
def P1300096037351774862.Spec : Prop :=
  ∀ n, P1300096037351774862.a n = A161964 (n + 1)

end A161964

/-!
# A161966: Primes in A161849 in order of appearance.

The programs for A161966, there is no canonical definition to state claims against.
-/

/-! ## A161966.P5838704644377921539

`p?[A069859(n+1)]`
-/

namespace A161966.P5838704644377921539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161966.P5838704644377921539

/-! ## A161966.P4506862689127038927

`A069859(A154369(n+1))`
-/

namespace A161966.P4506862689127038927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A154369 (n + 1)).toNat

end

end A161966.P4506862689127038927

/-! ## A161966.P17409451178361705105

`p?[A006530(n+1)%A020639(n+1)]`
-/

namespace A161966.P17409451178361705105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 1)) (A020639 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161966.P17409451178361705105

/-! ## A161966.P11019864248598061883

`p?[A161849(n+1)]`
-/

namespace A161966.P11019864248598061883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161966.P11019864248598061883

/-! ## A161966.P17870206501508630802

`p?[A052369(n+1)%A056608(n+1)]`
-/

namespace A161966.P17870206501508630802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052369 (n + 1)) (A056608 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161966.P17870206501508630802

/-! ## A161966.P12613981651207062629

`p?[A101257(A088835(n+1))]`
-/

namespace A161966.P12613981651207062629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101257 (A088835 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161966.P12613981651207062629

/-! ## A161966.P13710755572862247740

`p?[A046665(n+1)%A020639(n+1)]`
-/

namespace A161966.P13710755572862247740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046665 (n + 1)) (A020639 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161966.P13710755572862247740

/-! ## A161966.P7507120443476864841

`p?[A070229(n+1)%A020639(n+1)]`
-/

namespace A161966.P7507120443476864841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070229 (n + 1)) (A020639 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161966.P7507120443476864841

/-! ## A161966.P8539542116587003051

`p?[A074320(n+1)%A020639(n+1)]`
-/

namespace A161966.P8539542116587003051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074320 (n + 1)) (A020639 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161966.P8539542116587003051

/-! ## A161966.P3878908600495546748

`p?[A085392(n+1)%A020639(n+1)]`
-/

namespace A161966.P3878908600495546748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085392 (n + 1)) (A020639 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161966.P3878908600495546748

/-! ## A161966.P3374689502622579808

`p?[((n+1)/A052126(n+1))%A020639(n+1)]`
-/

namespace A161966.P3374689502622579808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))) (A020639 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161966.P3374689502622579808

/-! ## A161966.P1651013298782213836

`p?[(A253560(n+1)/(n+1))%A020639(n+1)]`
-/

namespace A161966.P1651013298782213836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A253560 (n + 1) : ℚ) / (n + 1 : ℚ))) (A020639 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161966.P1651013298782213836

/-! ## A161966.P7385307514843411426

`p?[(A051664(n+1)-A070536(n+1))%A020639(n+1)]`
-/

namespace A161966.P7385307514843411426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051664 (n + 1) - A070536 (n + 1)) (A020639 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161966.P7385307514843411426

/-!
# A161967: E.g.f. satisfies: A(x) = exp( x*exp( x*A'(x)/A(x) ) ), where A'(x)/A(x) = d/dx log(A(x)).

The programs for A161967, there is no canonical definition to state claims against.
-/

/-! ## A161967.P15923178008624778333

`A372654(n^ceil((n/2)²))`
-/

namespace A161967.P15923178008624778333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372654 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈((n : ℚ) / 2) ^ 2⌉ : ℤ))).toNat

end

end A161967.P15923178008624778333

/-!
# A161968: E.g.f. L(x) satisfies: L(x) = x*exp(x*d/dx L(x)), where L(x) is the logarithm of e.g.f. of A161967.

The programs for A161968, there is no canonical definition to state claims against.
-/

/-! ## A161968.P8271880005094836929

`(n+1)*A156326(n)`
-/

namespace A161968.P8271880005094836929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A156326 n

end

end A161968.P8271880005094836929

/-! ## A161968.P13641271659740167832

`A156326(n)*A331590(A000124(n))`
-/

namespace A161968.P13641271659740167832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156326 n * A331590 (A000124 n).toNat

end

end A161968.P13641271659740167832

/-! ## A161968.P11805193274312281434

`A156326(n)*A308500(A000096(n))`
-/

namespace A161968.P11805193274312281434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156326 n * A308500 (A000096 n).toNat

end

end A161968.P11805193274312281434

/-! ## A161968.P18136422938486564114

`A156326(n)*A280700(A007283(n))`
-/

namespace A161968.P18136422938486564114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156326 n * A280700 (A007283 n).toNat

end

end A161968.P18136422938486564114

/-! ## A161968.P7461252343053839736

`A156326(n)*A177888(A000217(n))`
-/

namespace A161968.P7461252343053839736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156326 n * A177888 (A000217 n).toNat

end

end A161968.P7461252343053839736

/-!
# A161969: Expansion of f(q)^8 in powers of q where f() is a Ramanujan theta function.

The programs for A161969, there is no canonical definition to state claims against.
-/

/-! ## A161969.P14983117953498962933

`(-1)^n*A000731(n)`
-/

namespace A161969.P14983117953498962933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000731 n

end

end A161969.P14983117953498962933

/-! ## A161969.P5086041534390861460

`A000731(n)*A033999(n)`
-/

namespace A161969.P5086041534390861460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000731 n * A033999 n

end

end A161969.P5086041534390861460

/-! ## A161969.P5787729126688411701

`A000731(n)*A062157(n+1)`
-/

namespace A161969.P5787729126688411701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000731 n * A062157 (n + 1)

end

end A161969.P5787729126688411701

/-! ## A161969.P7157598209174143965

`A000731(n)*A309873(n+1)`
-/

namespace A161969.P7157598209174143965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000731 n * A309873 (n + 1)

end

end A161969.P7157598209174143965

/-! ## A161969.P14440354747195652281

`A000731(n)*A000735(n)/A209676(n)`
-/

namespace A161969.P14440354747195652281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000731 n * A000735 n : ℚ) / (A209676 n : ℚ)

end

end A161969.P14440354747195652281

/-! ## A161969.P3300350745377321910

`A000731(n)*A280328(n)/A280384(n)`
-/

namespace A161969.P3300350745377321910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000731 n * A280328 n : ℚ) / (A280384 n : ℚ)

end

end A161969.P3300350745377321910

/-! ## A161969.P1524452459255195391

`A000731(n)/A033999(n+2)`
-/

namespace A161969.P1524452459255195391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000731 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A161969.P1524452459255195391

/-! ## A161969.P7975743145825118695

`A153729(n)/(2*and(1, n)+1)`
-/

namespace A161969.P7975743145825118695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153729 n : ℚ) / (2 * Nat.land 1 n + 1 : ℚ)

end

end A161969.P7975743145825118695

/-! ## A161969.P14328102645208616441

`A153729(n)/A010684(n)`
-/

namespace A161969.P14328102645208616441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153729 n : ℚ) / (A010684 n : ℚ)

end

end A161969.P14328102645208616441

/-! ## A161969.P2900840928601749141

`A153729(n)/A053381(n)`
-/

namespace A161969.P2900840928601749141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153729 n : ℚ) / (A053381 n : ℚ)

end

end A161969.P2900840928601749141

/-! ## A161969.P8987787771475172678

`A153729(n)/A056753(n)`
-/

namespace A161969.P8987787771475172678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153729 n : ℚ) / (A056753 n : ℚ)

end

end A161969.P8987787771475172678

/-! ## A161969.P14101860103517036462

`A153729(n)/Δ[A042948(n)]`
-/

namespace A161969.P14101860103517036462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153729 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A161969.P14101860103517036462

/-! ## A161969.P7298142606995594491

`A153729(n)/A037227(n+1)`
-/

namespace A161969.P7298142606995594491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153729 n : ℚ) / (A037227 (n + 1) : ℚ)

end

end A161969.P7298142606995594491

/-! ## A161969.P14589677314279984357

`A153729(n)/A038712(n+1)`
-/

namespace A161969.P14589677314279984357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153729 n : ℚ) / (A038712 (n + 1) : ℚ)

end

end A161969.P14589677314279984357

/-! ## A161969.P12692976277133097383

`A153729(n)/A090740(n+1)`
-/

namespace A161969.P12692976277133097383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153729 n : ℚ) / (A090740 (n + 1) : ℚ)

end

end A161969.P12692976277133097383

/-! ## A161969.P3061213384623393655

`A153729(n)/A094603(n+1)`
-/

namespace A161969.P3061213384623393655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153729 n : ℚ) / (A094603 (n + 1) : ℚ)

end

end A161969.P3061213384623393655

/-! ## A161969.P204719596530114004

`A153729(n)/A112132(n+1)`
-/

namespace A161969.P204719596530114004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153729 n : ℚ) / (A112132 (n + 1) : ℚ)

end

end A161969.P204719596530114004

/-! ## A161969.P17167473037230951412

`A153729(n)/A115364(n+1)`
-/

namespace A161969.P17167473037230951412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153729 n : ℚ) / (A115364 (n + 1) : ℚ)

end

end A161969.P17167473037230951412

/-! ## A161969.P6469346613575021562

`A153729(n)/A233267(n+1)`
-/

namespace A161969.P6469346613575021562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153729 n : ℚ) / (A233267 (n + 1) : ℚ)

end

end A161969.P6469346613575021562

/-! ## A161969.P14322582860581826511

`A153729(n)/A233269(n+1)`
-/

namespace A161969.P14322582860581826511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153729 n : ℚ) / (A233269 (n + 1) : ℚ)

end

end A161969.P14322582860581826511

/-!
# A161971: E.g.f. satisfies: A(x) = exp( x*exp( x*A'(x) ) ), where A'(x) = d/dx A(x).

The programs for A161971, there is no canonical definition to state claims against.
-/

/-! ## A161971.P8241036701398244271

`A231729(9*C(n, 2)+n+2)`
-/

namespace A161971.P8241036701398244271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231729 (9 * Nat.choose n 2 + n + 2)

end

end A161971.P8241036701398244271

/-!
# A161973: Primes in A136251 in order of appearance.

The programs for A161973, there is no canonical definition to state claims against.
-/

/-! ## A161973.P12723219722298536437

`p?[A136251(n+1)]`
-/

namespace A161973.P12723219722298536437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161973.P12723219722298536437

/-! ## A161973.P14267839921170608996

`p?[A070635(p?[xor(1, n)])]`
-/

namespace A161973.P14267839921170608996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161973.P14267839921170608996

/-! ## A161973.P3060173845333286227

`p?[A070635(p?[2*n+1])]`
-/

namespace A161973.P3060173845333286227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161973.P3060173845333286227

/-! ## A161973.P12304853183121121132

`p?[A070635(A128059(n))]`
-/

namespace A161973.P12304853183121121132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A128059 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161973.P12304853183121121132

/-! ## A161973.P4688751386118994275

`p?[A070635(A000040(n+1))]`
-/

namespace A161973.P4688751386118994275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161973.P4688751386118994275

/-! ## A161973.P16059324641725937234

`p?[A070635(A000430(n+1))]`
-/

namespace A161973.P16059324641725937234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A000430 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161973.P16059324641725937234

/-! ## A161973.P9537145214915777673

`filter[A136251(n+1), A257000(#)]`
-/

namespace A161973.P9537145214915777673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A161973.P9537145214915777673

/-! ## A161973.P10448681152875793775

`p?[A070635(record[A000010(n+1)+1])]`
-/

namespace A161973.P10448681152875793775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161973.P10448681152875793775

/-! ## A161973.P15843709437792448477

`p?[A070635(eq[2, A000005(n+2)]+2)]`
-/

namespace A161973.P15843709437792448477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161973.P15843709437792448477

/-! ## A161973.P7593668246464284631

`p?[A000040(n+1)%A007605(n+1)]`
-/

namespace A161973.P7593668246464284631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A007605 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161973.P7593668246464284631

/-!
# A161974: a(n) = number of equalities of the form A010060(n+k) = A010060(n), k=1,2,3.

The programs for A161974, the canonical program `A161974.P13248388077157749203` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161974 has offset 0).

The definition of A161974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161974.P13248388077157749203

`(xor(n, n+3)%3)!`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161974

/-- `(xor(n, n+3)%3)!` -/
def P13248388077157749203.Spec : Prop :=
  ∀ n, (P13248388077157749203.a n : ℤ) = A161974 n

theorem P13248388077157749203.correct : P13248388077157749203.Spec := by
  intro n
  simp only [A161974]

end A161974

/-! ## A161974.P444242659365558919

`val((n+1)*(n+3), 2)%2+1`
-/

namespace A161974.P444242659365558919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) * (n + 3)) 2 % 2 + 1

end

end A161974.P444242659365558919

namespace A161974

/-- `val((n+1)*(n+3), 2)%2+1` -/
def P444242659365558919.Spec : Prop :=
  ∀ n, (P444242659365558919.a n : ℤ) = A161974 n

end A161974

/-! ## A161974.P9774761869346220316

`Δ[or(n+2, -(n+1))]²%3+1`
-/

namespace A161974.P9774761869346220316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 2 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) 3 + 1

end

end A161974.P9774761869346220316

namespace A161974

/-- `Δ[or(n+2, -(n+1))]²%3+1` -/
def P9774761869346220316.Spec : Prop :=
  ∀ n, P9774761869346220316.a n = A161974 n

end A161974

/-! ## A161974.P15375814280824188328

`gcd(2, A095922(n))`
-/

namespace A161974.P15375814280824188328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A095922 n)

end

end A161974.P15375814280824188328

namespace A161974

/-- `gcd(2, A095922(n))` -/
def P15375814280824188328.Spec : Prop :=
  ∀ n, (P15375814280824188328.a n : ℤ) = A161974 n

end A161974

/-! ## A161974.P1616217395075781822

`gcd(4, A068310(n+2))`
-/

namespace A161974.P1616217395075781822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A068310 (n + 2))

end

end A161974.P1616217395075781822

namespace A161974

/-- `gcd(4, A068310(n+2))` -/
def P1616217395075781822.Spec : Prop :=
  ∀ n, (P1616217395075781822.a n : ℤ) = A161974 n

end A161974

/-! ## A161974.P8739501501861435815

`A030392(xor(n, n+3))`
-/

namespace A161974.P8739501501861435815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030392 (Nat.xor n (n + 3))

end

end A161974.P8739501501861435815

namespace A161974

/-- `A030392(xor(n, n+3))` -/
def P8739501501861435815.Spec : Prop :=
  ∀ n, P8739501501861435815.a n = A161974 n

end A161974

/-! ## A161974.P12639173488267000207

`A096285(xor(n, n+3))`
-/

namespace A161974.P12639173488267000207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096285 (Nat.xor n (n + 3))

end

end A161974.P12639173488267000207

namespace A161974

/-- `A096285(xor(n, n+3))` -/
def P12639173488267000207.Spec : Prop :=
  ∀ n, P12639173488267000207.a n = A161974 n

end A161974

/-! ## A161974.P1391901844809889277

`A100428(xor(n, n+3))`
-/

namespace A161974.P1391901844809889277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (Nat.xor n (n + 3))

end

end A161974.P1391901844809889277

namespace A161974

/-- `A100428(xor(n, n+3))` -/
def P1391901844809889277.Spec : Prop :=
  ∀ n, P1391901844809889277.a n = A161974 n

end A161974

/-! ## A161974.P17703544407565283558

`A101608(xor(n, n+3))`
-/

namespace A161974.P17703544407565283558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101608 (Nat.xor n (n + 3))

end

end A161974.P17703544407565283558

namespace A161974

/-- `A101608(xor(n, n+3))` -/
def P17703544407565283558.Spec : Prop :=
  ∀ n, P17703544407565283558.a n = A161974 n

end A161974

/-! ## A161974.P10534706329020982372

`A101825(xor(n, n+3))`
-/

namespace A161974.P10534706329020982372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (Nat.xor n (n + 3))

end

end A161974.P10534706329020982372

namespace A161974

/-- `A101825(xor(n, n+3))` -/
def P10534706329020982372.Spec : Prop :=
  ∀ n, P10534706329020982372.a n = A161974 n

end A161974

/-! ## A161974.P16078574637674119151

`A107751(xor(n, n+3))`
-/

namespace A161974.P16078574637674119151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107751 (Nat.xor n (n + 3))

end

end A161974.P16078574637674119151

namespace A161974

/-- `A107751(xor(n, n+3))` -/
def P16078574637674119151.Spec : Prop :=
  ∀ n, P16078574637674119151.a n = A161974 n

end A161974

/-! ## A161974.P7863954237562043792

`A139434(xor(n, n+3))`
-/

namespace A161974.P7863954237562043792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139434 (Nat.xor n (n + 3))

end

end A161974.P7863954237562043792

namespace A161974

/-- `A139434(xor(n, n+3))` -/
def P7863954237562043792.Spec : Prop :=
  ∀ n, P7863954237562043792.a n = A161974 n

end A161974

/-! ## A161974.P6760184617423214669

`A177702(xor(n, n+3))`
-/

namespace A161974.P6760184617423214669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 (Nat.xor n (n + 3))

end

end A161974.P6760184617423214669

namespace A161974

/-- `A177702(xor(n, n+3))` -/
def P6760184617423214669.Spec : Prop :=
  ∀ n, P6760184617423214669.a n = A161974 n

end A161974

/-! ## A161974.P4171723577230696269

`A245477(xor(n, n+3))`
-/

namespace A161974.P4171723577230696269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 (Nat.xor n (n + 3))

end

end A161974.P4171723577230696269

namespace A161974

/-- `A245477(xor(n, n+3))` -/
def P4171723577230696269.Spec : Prop :=
  ∀ n, P4171723577230696269.a n = A161974 n

end A161974

/-! ## A161974.P16696939586138449003

`Δ[A039963(n)]²+1`
-/

namespace A161974.P16696939586138449003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A161974.P16696939586138449003

namespace A161974

/-- `Δ[A039963(n)]²+1` -/
def P16696939586138449003.Spec : Prop :=
  ∀ n, P16696939586138449003.a n = A161974 n

end A161974

/-! ## A161974.P9194575265670743051

`A056832(A183041(n))`
-/

namespace A161974.P9194575265670743051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A183041 n).toNat

end

end A161974.P9194575265670743051

namespace A161974

/-- `A056832(A183041(n))` -/
def P9194575265670743051.Spec : Prop :=
  ∀ n, P9194575265670743051.a n = A161974 n

end A161974

/-! ## A161974.P12978383755914665120

`A085006(A265429(n))`
-/

namespace A161974.P12978383755914665120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085006 (A265429 n).toNat

end

end A161974.P12978383755914665120

namespace A161974

/-- `A085006(A265429(n))` -/
def P12978383755914665120.Spec : Prop :=
  ∀ n, P12978383755914665120.a n = A161974 n

end A161974

/-! ## A161974.P4643355109729228340

`A101662(A266723(n))`
-/

namespace A161974.P4643355109729228340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101662 (A266723 n).toNat

end

end A161974.P4643355109729228340

namespace A161974

/-- `A101662(A266723(n))` -/
def P4643355109729228340.Spec : Prop :=
  ∀ n, P4643355109729228340.a n = A161974 n

end A161974

/-! ## A161974.P14952140492300134466

`A056832(A018837(n+1))`
-/

namespace A161974.P14952140492300134466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A018837 (n + 1)).toNat

end

end A161974.P14952140492300134466

namespace A161974

/-- `A056832(A018837(n+1))` -/
def P14952140492300134466.Spec : Prop :=
  ∀ n, P14952140492300134466.a n = A161974 n

end A161974

/-! ## A161974.P6138469677065750269

`A056832(A083219(n+1))`
-/

namespace A161974.P6138469677065750269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A083219 (n + 1)).toNat

end

end A161974.P6138469677065750269

namespace A161974

/-- `A056832(A083219(n+1))` -/
def P6138469677065750269.Spec : Prop :=
  ∀ n, P6138469677065750269.a n = A161974 n

end A161974

/-!
# A161975: Sum_{x=sum of prime factors of n-th composite..n-th composite} x.

The programs for A161975, the canonical program `A161975.P15136247777327515862` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161975 has offset 1).

The definition of A161975 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A046343, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161975.P15136247777327515862

`A000217(A002808(n+1))-A000217(A046343(n+1)-1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161975

/-- `A000217(A002808(n+1))-A000217(A046343(n+1)-1)` -/
def P15136247777327515862.Spec : Prop :=
  ∀ n, P15136247777327515862.a n = A161975 (n + 1)

theorem P15136247777327515862.correct : P15136247777327515862.Spec := by
  intro n
  simp only [A161975, Nat.add_sub_cancel]

end A161975

/-!
# A161979: a(1)=1. a(n) = the smallest integer > a(n-1) containing {the string made by reversing the order of the binary digits of n, and removing leading 0's} as a substring when a(n) is written in binary.

The programs for A161979, there is no canonical definition to state claims against.
-/

/-! ## A161979.P1717942152256424434

`∑[A035931(A081668(n))]`
-/

namespace A161979.P1717942152256424434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035931 (A081668 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161979.P1717942152256424434

/-! ## A161979.P4170483278807945291

`eq[A151701(n), A387043(n+1)]`
-/

namespace A161979.P4170483278807945291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151701 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387043 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161979.P4170483278807945291

/-! ## A161979.P17845109445628993106

`∑[∏{d}[A325166(A078898(n)!), #]]`
-/

namespace A161979.P17845109445628993106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (Nat.factorial (A078898 n).toNat)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161979.P17845109445628993106

/-! ## A161979.P15491995195096552914

`∑[A035931(A000984(A025480(n)))]`
-/

namespace A161979.P15491995195096552914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035931 (A000984 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161979.P15491995195096552914

/-! ## A161979.P14755534171065123660

`∑[A035931(A028310(A126869(n)))]`
-/

namespace A161979.P14755534171065123660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035931 (A028310 (A126869 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161979.P14755534171065123660

/-!
# A161980: a(n) = the smallest positive multiple of n containing {the string made by reversing the order of the binary digits of n, and removing leading 0's} as a substring when a(n) is written in binary.

The programs for A161980, there is no canonical definition to state claims against.
-/

/-! ## A161980.P17917361632195894063

`lcm(n+1, A165790(A000265(n+1)))`
-/

namespace A161980.P17917361632195894063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A165790 (A000265 (n + 1)).toNat)

end

end A161980.P17917361632195894063

/-! ## A161980.P16440722002887924172

`A006519(n+1)*A165790(A000265(n+1))`
-/

namespace A161980.P16440722002887924172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A165790 (A000265 (n + 1)).toNat

end

end A161980.P16440722002887924172

/-! ## A161980.P6130063545808382922

`A118824(2*(n+1))*A165790(A000265(n+1))`
-/

namespace A161980.P6130063545808382922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (2 * (n + 1)) * A165790 (A000265 (n + 1)).toNat

end

end A161980.P6130063545808382922

/-! ## A161980.P4084338149804192521

`(n+1)*A049586(A130755(n))`
-/

namespace A161980.P4084338149804192521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A049586 (A130755 n).toNat

end

end A161980.P4084338149804192521

/-! ## A161980.P7737073656366123197

`(n+1)*A322356(A167305(n+3))`
-/

namespace A161980.P7737073656366123197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A322356 (A167305 (n + 3)).toNat

end

end A161980.P7737073656366123197

/-!
# A161981: A006128(n) mod n.

The programs for A161981, there is no canonical definition to state claims against.
-/

/-! ## A161981.P709944606542412488

`A006128(n+1)%(n+1)`
-/

namespace A161981.P709944606542412488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006128 (n + 1)) (n + 1 : ℤ)

end

end A161981.P709944606542412488

/-! ## A161981.P5397691279753990361

`A225596(n+1)%(n+1)`
-/

namespace A161981.P5397691279753990361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225596 (n + 1)) (n + 1 : ℤ)

end

end A161981.P5397691279753990361

/-! ## A161981.P422032892205711294

`∑[A138137(n+1)]%(n+1)`
-/

namespace A161981.P422032892205711294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A161981.P422032892205711294

/-! ## A161981.P12393970898127552534

`(A211978(n+1)/2)%(n+1)`
-/

namespace A161981.P12393970898127552534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A211978 (n + 1) : ℚ) / 2)) (n + 1 : ℤ)

end

end A161981.P12393970898127552534

/-! ## A161981.P16102268150817064949

`Δ[A284870(n)]%(n+1)`
-/

namespace A161981.P16102268150817064949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A161981.P16102268150817064949

/-! ## A161981.P5742146759813298704

`Δ[A124920(n+1)]%(n+1)`
-/

namespace A161981.P5742146759813298704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A161981.P5742146759813298704

/-! ## A161981.P7194012503698787798

`(n*A196087(n+1))%(n+1)`
-/

namespace A161981.P7194012503698787798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A196087 (n + 1)) (n + 1 : ℤ)

end

end A161981.P7194012503698787798

/-! ## A161981.P4144312491999793596

`A181187(∑[n]+1)%(n+1)`
-/

namespace A161981.P4144312491999793596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181187 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (n + 1 : ℤ)

end

end A161981.P4144312491999793596

/-! ## A161981.P3091952960053959164

`A210485(∑[n+2])%(n+1)`
-/

namespace A161981.P3091952960053959164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210485 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A161981.P3091952960053959164

/-!
# A161982: Numbers with base-16 digits only from the set {6,8,9,12=C}.

The programs for A161982, there is no canonical definition to state claims against.
-/

/-! ## A161982.P4966867940850360367

`A051345(n+1)+A010710(A290340(n+1))`
-/

namespace A161982.P4966867940850360367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051345 (n + 1) + A010710 (A290340 (n + 1)).toNat

end

end A161982.P4966867940850360367

/-!
# A161983: Irregular triangle read by rows: the group of 2n + 1 integers starting at A014105(n).

The programs for A161983, the canonical program `A161983.P7486085872780093251` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161983 has offset 0).

The definition of A161983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161983.P7486085872780093251

`n+floor(sqrt(n))*(floor(sqrt(n))+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161983

/-- `n+floor(sqrt(n))*(floor(sqrt(n))+1)` -/
def P7486085872780093251.Spec : Prop :=
  ∀ n, (P7486085872780093251.a n : ℤ) = A161983 n

theorem P7486085872780093251.correct : P7486085872780093251.Spec := by
  intro n
  simp only [A161983]

end A161983

/-! ## A161983.P15417882713524677595

`record[lcm(2, round(sqrt(2*n)))+n]`
-/

namespace A161983.P15417882713524677595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161983.P15417882713524677595

namespace A161983

/-- `record[lcm(2, round(sqrt(2*n)))+n]` -/
def P15417882713524677595.Spec : Prop :=
  ∀ n, (P15417882713524677595.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P12567089034222095629

`lt[0, round(sqrt(2*(n+1)))%2]`
-/

namespace A161983.P12567089034222095629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161983.P12567089034222095629

namespace A161983

/-- `lt[0, round(sqrt(2*(n+1)))%2]` -/
def P12567089034222095629.Spec : Prop :=
  ∀ n, (P12567089034222095629.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P14970004616563034476

`eq[1, round(sqrt(2*n+1))%2]`
-/

namespace A161983.P14970004616563034476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161983.P14970004616563034476

namespace A161983

/-- `eq[1, round(sqrt(2*n+1))%2]` -/
def P14970004616563034476.Spec : Prop :=
  ∀ n, (P14970004616563034476.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P10704550499884549313

`eq[1, gcd(2, round(sqrt(2*(n+1))))]`
-/

namespace A161983.P10704550499884549313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161983.P10704550499884549313

namespace A161983

/-- `eq[1, gcd(2, round(sqrt(2*(n+1))))]` -/
def P10704550499884549313.Spec : Prop :=
  ∀ n, (P10704550499884549313.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P7634174613373163547

`eq[0, val(round(sqrt(2*(n+1))), 2)]`
-/

namespace A161983.P7634174613373163547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161983.P7634174613373163547

namespace A161983

/-- `eq[0, val(round(sqrt(2*(n+1))), 2)]` -/
def P7634174613373163547.Spec : Prop :=
  ∀ n, (P7634174613373163547.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P2001076730432830499

`lt[val(round(sqrt(2*(n+1))), 2), 1]`
-/

namespace A161983.P2001076730432830499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161983.P2001076730432830499

namespace A161983

/-- `lt[val(round(sqrt(2*(n+1))), 2), 1]` -/
def P2001076730432830499.Spec : Prop :=
  ∀ n, (P2001076730432830499.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P7822222637475677444

`eq[1, and(1, round(sqrt(2*(n+1))))]`
-/

namespace A161983.P7822222637475677444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161983.P7822222637475677444

namespace A161983

/-- `eq[1, and(1, round(sqrt(2*(n+1))))]` -/
def P7822222637475677444.Spec : Prop :=
  ∀ n, (P7822222637475677444.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P15475248505801682194

`comp[A162917(n+1)]`
-/

namespace A161983.P15475248505801682194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161983.P15475248505801682194

namespace A161983

/-- `comp[A162917(n+1)]` -/
def P15475248505801682194.Spec : Prop :=
  ∀ n, (P15475248505801682194.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P15191855474801936030

`∪[A292565(n+1), A292564(n)]`
-/

namespace A161983.P15191855474801936030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292564 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161983.P15191855474801936030

namespace A161983

/-- `∪[A292565(n+1), A292564(n)]` -/
def P15191855474801936030.Spec : Prop :=
  ∀ n, (P15191855474801936030.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P515304822213342408

`eq[0, A057212(n+1)]`
-/

namespace A161983.P515304822213342408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161983.P515304822213342408

namespace A161983

/-- `eq[0, A057212(n+1)]` -/
def P515304822213342408.Spec : Prop :=
  ∀ n, (P515304822213342408.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P1493230996793191287

`eq[0, A122760(n+1)]`
-/

namespace A161983.P1493230996793191287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122760 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161983.P1493230996793191287

namespace A161983

/-- `eq[0, A122760(n+1)]` -/
def P1493230996793191287.Spec : Prop :=
  ∀ n, (P1493230996793191287.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P17629978906337506766

`eq[1, A057211(n+1)]`
-/

namespace A161983.P17629978906337506766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161983.P17629978906337506766

namespace A161983

/-- `eq[1, A057211(n+1)]` -/
def P17629978906337506766.Spec : Prop :=
  ∀ n, (P17629978906337506766.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P12572745341872675466

`eq[1, A201208(n+1)]`
-/

namespace A161983.P12572745341872675466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201208 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161983.P12572745341872675466

namespace A161983

/-- `eq[1, A201208(n+1)]` -/
def P12572745341872675466.Spec : Prop :=
  ∀ n, (P12572745341872675466.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P17824272583328545705

`eq[n+1, A056011(n+1)]`
-/

namespace A161983.P17824272583328545705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161983.P17824272583328545705

namespace A161983

/-- `eq[n+1, A056011(n+1)]` -/
def P17824272583328545705.Spec : Prop :=
  ∀ n, (P17824272583328545705.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P9541269753542610743

`eq[A051162(n), A060511(n)]`
-/

namespace A161983.P9541269753542610743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161983.P9541269753542610743

namespace A161983

/-- `eq[A051162(n), A060511(n)]` -/
def P9541269753542610743.Spec : Prop :=
  ∀ n, (P9541269753542610743.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P9819558773873931248

`eq[A000007(n), A123254(n)]`
-/

namespace A161983.P9819558773873931248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161983.P9819558773873931248

namespace A161983

/-- `eq[A000007(n), A123254(n)]` -/
def P9819558773873931248.Spec : Prop :=
  ∀ n, (P9819558773873931248.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P8864816329137349371

`eq[A089798(n), A123254(n)]`
-/

namespace A161983.P8864816329137349371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161983.P8864816329137349371

namespace A161983

/-- `eq[A089798(n), A123254(n)]` -/
def P8864816329137349371.Spec : Prop :=
  ∀ n, (P8864816329137349371.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P9616121937821217129

`eq[A124037(n), A126126(n)]`
-/

namespace A161983.P9616121937821217129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161983.P9616121937821217129

namespace A161983

/-- `eq[A124037(n), A126126(n)]` -/
def P9616121937821217129.Spec : Prop :=
  ∀ n, (P9616121937821217129.a n : ℤ) = A161983 n

end A161983

/-! ## A161983.P13423743306012449793

`eq[A123970(n), A129818(n)]`
-/

namespace A161983.P13423743306012449793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123970 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129818 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161983.P13423743306012449793

namespace A161983

/-- `eq[A123970(n), A129818(n)]` -/
def P13423743306012449793.Spec : Prop :=
  ∀ n, (P13423743306012449793.a n : ℤ) = A161983 n

end A161983

/-!
# A161984: Table read by rows: the number n followed by the odd numbers from n(n-1)+1 to (n-1)(n+2)+1.

The programs for A161984, the canonical program `A161984.P11462578962919127866` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161984 has offset 0).

The definition of A161984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161984.P11462578962919127866

`2*A271439(n)-A167407(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161984

/-- `2*A271439(n)-A167407(n)` -/
def P11462578962919127866.Spec : Prop :=
  ∀ n, P11462578962919127866.a n = A161984 n

theorem P11462578962919127866.correct : P11462578962919127866.Spec := by
  intro n
  simp only [A161984]

end A161984

/-! ## A161984.P318796613352907478

`A005408(A271439(n))-A155124(n)`
-/

namespace A161984.P318796613352907478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A271439 n).toNat - A155124 n

end

end A161984.P318796613352907478

namespace A161984

/-- `A005408(A271439(n))-A155124(n)` -/
def P318796613352907478.Spec : Prop :=
  ∀ n, P318796613352907478.a n = A161984 n

end A161984

/-! ## A161984.P6717570467141178970

`A005843(A271439(n))-A167407(n)`
-/

namespace A161984.P6717570467141178970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A271439 n).toNat - A167407 n

end

end A161984.P6717570467141178970

namespace A161984

/-- `A005843(A271439(n))-A167407(n)` -/
def P6717570467141178970.Spec : Prop :=
  ∀ n, P6717570467141178970.a n = A161984 n

end A161984

/-! ## A161984.P967726304249517163

`A004524(A198954(n))+A004273(A271439(n))`
-/

namespace A161984.P967726304249517163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A198954 n).toNat + A004273 (A271439 n).toNat

end

end A161984.P967726304249517163

namespace A161984

/-- `A004524(A198954(n))+A004273(A271439(n))` -/
def P967726304249517163.Spec : Prop :=
  ∀ n, P967726304249517163.a n = A161984 n

end A161984

/-! ## A161984.P3955099022412433708

`A005408(A271439(n))+-A155124(n)%A000040(n+1)`
-/

namespace A161984.P3955099022412433708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A271439 n).toNat + Int.tmod (-A155124 n) (A000040 (n + 1))

end

end A161984.P3955099022412433708

namespace A161984

/-- `A005408(A271439(n))+-A155124(n)%A000040(n+1)` -/
def P3955099022412433708.Spec : Prop :=
  ∀ n, P3955099022412433708.a n = A161984 n

end A161984

/-!
# A161986: a(n) = k+r where k is composite(n) and r is (largest prime divisor of k) mod (smallest prime divisor of k).

The programs for A161986, there is no canonical definition to state claims against.
-/

/-! ## A161986.P15396447902893180551

`A161849(n+1)+Δ[A053767(n)]`
-/

namespace A161986.P15396447902893180551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161849 (n + 1) + (f1 (n + 1) - f1 n)

end

end A161986.P15396447902893180551

/-! ## A161986.P13058707550692988577

`A161849(n+1)+A002808(n+1)`
-/

namespace A161986.P13058707550692988577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161849 (n + 1) + A002808 (n + 1)

end

end A161986.P13058707550692988577

/-! ## A161986.P14634772162581915889

`A161849(n+1)+A018252(n+2)`
-/

namespace A161986.P14634772162581915889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161849 (n + 1) + A018252 (n + 2)

end

end A161986.P14634772162581915889

/-! ## A161986.P6098746465044889620

`A161849(n+1)+A056608(n+1)*A160180(n+1)`
-/

namespace A161986.P6098746465044889620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161849 (n + 1) + A056608 (n + 1) * A160180 (n + 1)

end

end A161986.P6098746465044889620

/-! ## A161986.P10265232472448364475

`A002808(n+1)+A052369(n+1)%A056608(n+1)`
-/

namespace A161986.P10265232472448364475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + Int.tmod (A052369 (n + 1)) (A056608 (n + 1))

end

end A161986.P10265232472448364475

/-! ## A161986.P12613475750597726481

`A069859(A065090(n+3))+A065090(n+3)`
-/

namespace A161986.P12613475750597726481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A065090 (n + 3)).toNat + A065090 (n + 3)

end

end A161986.P12613475750597726481

/-! ## A161986.P4235054125422334359

`A002808(n+1)+A111426(n+1)%A056608(n+1)`
-/

namespace A161986.P4235054125422334359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + Int.tmod (A111426 (n + 1)) (A056608 (n + 1))

end

end A161986.P4235054125422334359

/-!
# A161989: Numbers having more than 2 or fewer than 2 ones in their binary representation.

The programs for A161989, the canonical program `A161989.P17124297221809156559` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161989 has offset 1).

The definition of A161989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161989.P8641252049526096950

`comp[eq[3, a(and(n, n-1))+1]]` with `a(0)=1`
-/

namespace A161989.P8641252049526096950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A161989.P8641252049526096950

namespace A161989

/-- `comp[eq[3, a(and(n, n-1))+1]]` -/
def P8641252049526096950.Spec : Prop :=
  ∀ n, (P8641252049526096950.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P2939842609175649962

`comp[A018900(n+1)]`
-/

namespace A161989.P2939842609175649962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161989.P2939842609175649962

namespace A161989

/-- `comp[A018900(n+1)]` -/
def P2939842609175649962.Spec : Prop :=
  ∀ n, (P2939842609175649962.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P10416102386958234186

`comp[A048639(n+1)]`
-/

namespace A161989.P10416102386958234186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161989.P10416102386958234186

namespace A161989

/-- `comp[A048639(n+1)]` -/
def P10416102386958234186.Spec : Prop :=
  ∀ n, (P10416102386958234186.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P3686598830856681493

`comp[eq[2, A050315(n)]]`
-/

namespace A161989.P3686598830856681493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A161989.P3686598830856681493

namespace A161989

/-- `comp[eq[2, A050315(n)]]` -/
def P3686598830856681493.Spec : Prop :=
  ∀ n, (P3686598830856681493.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P4212071454519816728

`comp[eq[4, A001316(n)]]`
-/

namespace A161989.P4212071454519816728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A161989.P4212071454519816728

namespace A161989

/-- `comp[eq[4, A001316(n)]]` -/
def P4212071454519816728.Spec : Prop :=
  ∀ n, (P4212071454519816728.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P6989787940417318350

`comp[A239303(2*(n+1))]`
-/

namespace A161989.P6989787940417318350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239303 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161989.P6989787940417318350

namespace A161989

/-- `comp[A239303(2*(n+1))]` -/
def P6989787940417318350.Spec : Prop :=
  ∀ n, (P6989787940417318350.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P8386148893050406362

`comp[A173786(A007401(n+1))]`
-/

namespace A161989.P8386148893050406362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 (A007401 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161989.P8386148893050406362

namespace A161989

/-- `comp[A173786(A007401(n+1))]` -/
def P8386148893050406362.Spec : Prop :=
  ∀ n, (P8386148893050406362.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P5894283683049161797

`eq[1, A284391(A001316(n)+5)]`
-/

namespace A161989.P5894283683049161797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284391 (A001316 n + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161989.P5894283683049161797

namespace A161989

/-- `eq[1, A284391(A001316(n)+5)]` -/
def P5894283683049161797.Spec : Prop :=
  ∀ n, (P5894283683049161797.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P17124297221809156559

`eq[4, A001316(A001316(n)+4)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161989

/-- `eq[4, A001316(A001316(n)+4)]` -/
def P17124297221809156559.Spec : Prop :=
  ∀ n, (P17124297221809156559.a n : ℤ) = A161989 (n + 1)

theorem P17124297221809156559.correct : P17124297221809156559.Spec := by
  intro n
  simp only [A161989, Nat.add_sub_cancel]

end A161989

/-! ## A161989.P8043042592863018871

`∪[A084345(n+1), A075930(n)]`
-/

namespace A161989.P8043042592863018871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075930 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161989.P8043042592863018871

namespace A161989

/-- `∪[A084345(n+1), A075930(n)]` -/
def P8043042592863018871.Spec : Prop :=
  ∀ n, (P8043042592863018871.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P11134796315799114082

`∪[A072823(n+1), A114398(n)]`
-/

namespace A161989.P11134796315799114082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114398 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161989.P11134796315799114082

namespace A161989

/-- `∪[A072823(n+1), A114398(n)]` -/
def P11134796315799114082.Spec : Prop :=
  ∀ n, (P11134796315799114082.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P10691619935685772465

`∪[A072823(n+1), A131577(n)]`
-/

namespace A161989.P10691619935685772465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161989.P10691619935685772465

namespace A161989

/-- `∪[A072823(n+1), A131577(n)]` -/
def P10691619935685772465.Spec : Prop :=
  ∀ n, (P10691619935685772465.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P15707655305166472141

`∪[A072823(n+1), A155559(n)]`
-/

namespace A161989.P15707655305166472141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161989.P15707655305166472141

namespace A161989

/-- `∪[A072823(n+1), A155559(n)]` -/
def P15707655305166472141.Spec : Prop :=
  ∀ n, (P15707655305166472141.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P9610115247344973567

`∪[A072823(n+1), A260488(n)]`
-/

namespace A161989.P9610115247344973567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260488 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161989.P9610115247344973567

namespace A161989

/-- `∪[A072823(n+1), A260488(n)]` -/
def P9610115247344973567.Spec : Prop :=
  ∀ n, (P9610115247344973567.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P3776471392068292912

`∪[A000069(n+1), A084345(n+1)]`
-/

namespace A161989.P3776471392068292912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161989.P3776471392068292912

namespace A161989

/-- `∪[A000069(n+1), A084345(n+1)]` -/
def P3776471392068292912.Spec : Prop :=
  ∀ n, (P3776471392068292912.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P11683899173902143127

`∪[A018826(n+1), A072823(n+1)]`
-/

namespace A161989.P11683899173902143127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161989.P11683899173902143127

namespace A161989

/-- `∪[A018826(n+1), A072823(n+1)]` -/
def P11683899173902143127.Spec : Prop :=
  ∀ n, (P11683899173902143127.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P10971571925543113169

`∪[A062846(n+1), A072823(n+1)]`
-/

namespace A161989.P10971571925543113169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161989.P10971571925543113169

namespace A161989

/-- `∪[A062846(n+1), A072823(n+1)]` -/
def P10971571925543113169.Spec : Prop :=
  ∀ n, (P10971571925543113169.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P6630739258491241556

`∪[A072823(n+1), A084345(n+1)]`
-/

namespace A161989.P6630739258491241556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161989.P6630739258491241556

namespace A161989

/-- `∪[A072823(n+1), A084345(n+1)]` -/
def P6630739258491241556.Spec : Prop :=
  ∀ n, (P6630739258491241556.a n : ℤ) = A161989 (n + 1)

end A161989

/-! ## A161989.P7188490805498946898

`∪[A072823(n+1), A084561(n+1)]`
-/

namespace A161989.P7188490805498946898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161989.P7188490805498946898

namespace A161989

/-- `∪[A072823(n+1), A084561(n+1)]` -/
def P7188490805498946898.Spec : Prop :=
  ∀ n, (P7188490805498946898.a n : ℤ) = A161989 (n + 1)

end A161989

/-!
# A161990: Composites which have the same largest prime factor as their index.

The programs for A161990, there is no canonical definition to state claims against.
-/

/-! ## A161990.P3754319191453702856

`A002808(A161925(n+1))`
-/

namespace A161990.P3754319191453702856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A161925 (n + 1)).toNat

end

end A161990.P3754319191453702856

/-! ## A161990.P9520297941360825374

`A018252(A161925(n+1)+1)`
-/

namespace A161990.P9520297941360825374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A161925 (n + 1) + 1).toNat

end

end A161990.P9520297941360825374

/-! ## A161990.P12330747040903800476

`A141468(A161925(n+1)+2)`
-/

namespace A161990.P12330747040903800476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A161925 (n + 1) + 2).toNat

end

end A161990.P12330747040903800476

/-! ## A161990.P15886438154267327578

`A065090(A161925(n+1)+2)`
-/

namespace A161990.P15886438154267327578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A161925 (n + 1) + 2).toNat

end

end A161990.P15886438154267327578

/-! ## A161990.P3393009946119264782

`A056653(lcm(A033999(n), A161925(n+1)))`
-/

namespace A161990.P3393009946119264782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (Int.lcm (A033999 n) (A161925 (n + 1)))

end

end A161990.P3393009946119264782

/-! ## A161990.P11174910567986634269

`A056653(abs(A033999(n)*A161925(n+1)))`
-/

namespace A161990.P11174910567986634269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 |A033999 n * A161925 (n + 1)|.toNat

end

end A161990.P11174910567986634269

/-! ## A161990.P534319341944449050

`A056653(A161925(n+1)^abs(A033999(n)))`
-/

namespace A161990.P534319341944449050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (SequenceMachineLib.roundAway ((A161925 (n + 1) : ℚ) ^ (|A033999 n| : ℤ))).toNat

end

end A161990.P534319341944449050

/-! ## A161990.P11856847900077179569

`A056653(A033999(4*n)*A161925(n+1))`
-/

namespace A161990.P11856847900077179569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (A033999 (4 * n) * A161925 (n + 1)).toNat

end

end A161990.P11856847900077179569

/-! ## A161990.P18322673248222163808

`A067747(2*A161925(n+1))`
-/

namespace A161990.P18322673248222163808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * A161925 (n + 1)).toNat

end

end A161990.P18322673248222163808

/-! ## A161990.P16202496528449979362

`A067747(A161925(n+1)+A161925(n+1))`
-/

namespace A161990.P16202496528449979362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A161925 (n + 1) + A161925 (n + 1)).toNat

end

end A161990.P16202496528449979362

/-!
# A161992: Numbers which squared are a sum of 3 distinct nonzero squares.

The programs for A161992, the canonical program `A161992.P10031527527583126831` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161992 has offset 1).

The definition of A161992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161992.P10031527527583126831

`lt[5*and(n, -n), n]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161992

/-- `lt[5*and(n, -n), n]` -/
def P10031527527583126831.Spec : Prop :=
  ∀ n, (P10031527527583126831.a n : ℤ) = A161992 (n + 1)

theorem P10031527527583126831.correct : P10031527527583126831.Spec := by
  intro n
  simp only [A161992, Nat.add_sub_cancel]

end A161992

/-! ## A161992.P8106644856254046788

`lt[and(n, -n), n/5]`
-/

namespace A161992.P8106644856254046788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A161992.P8106644856254046788

namespace A161992

/-- `lt[and(n, -n), n/5]` -/
def P8106644856254046788.Spec : Prop :=
  ∀ n, (P8106644856254046788.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P3182758950654894580

`comp[2*a(n-3)]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A161992.P3182758950654894580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 5] fun n f1 =>
  2 * f1 (n - 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A161992.P3182758950654894580

namespace A161992

/-- `comp[2*a(n-3)]` -/
def P3182758950654894580.Spec : Prop :=
  ∀ n, (P3182758950654894580.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P9501795995742425600

`lt[3, (n-2)/xor(n, n-1)]`
-/

namespace A161992.P9501795995742425600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (Int.xor (n : ℤ) ((n : ℤ) - 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A161992.P9501795995742425600

namespace A161992

/-- `lt[3, (n-2)/xor(n, n-1)]` -/
def P9501795995742425600.Spec : Prop :=
  ∀ n, (P9501795995742425600.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P1195628932650223160

`lt[3*xor(n, n-1), n-3]`
-/

namespace A161992.P1195628932650223160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.xor (n : ℤ) ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161992.P1195628932650223160

namespace A161992

/-- `lt[3*xor(n, n-1), n-3]` -/
def P1195628932650223160.Spec : Prop :=
  ∀ n, (P1195628932650223160.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P16379840244794399235

`lt[3, A306286(n)]`
-/

namespace A161992.P16379840244794399235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161992.P16379840244794399235

namespace A161992

/-- `lt[3, A306286(n)]` -/
def P16379840244794399235.Spec : Prop :=
  ∀ n, (P16379840244794399235.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P12470290911982462690

`lt[4, A264596(n)]`
-/

namespace A161992.P12470290911982462690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161992.P12470290911982462690

namespace A161992

/-- `lt[4, A264596(n)]` -/
def P12470290911982462690.Spec : Prop :=
  ∀ n, (P12470290911982462690.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P1939426344845241475

`lt[4, A286378(n)]`
-/

namespace A161992.P1939426344845241475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161992.P1939426344845241475

namespace A161992

/-- `lt[4, A286378(n)]` -/
def P1939426344845241475.Spec : Prop :=
  ∀ n, (P1939426344845241475.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P5203209115599856739

`lt[4, A323889(n)]`
-/

namespace A161992.P5203209115599856739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161992.P5203209115599856739

namespace A161992

/-- `lt[4, A323889(n)]` -/
def P5203209115599856739.Spec : Prop :=
  ∀ n, (P5203209115599856739.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P5457242152771812963

`lt[2, A103391(n+1)-2]`
-/

namespace A161992.P5457242152771812963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161992.P5457242152771812963

namespace A161992

/-- `lt[2, A103391(n+1)-2]` -/
def P5457242152771812963.Spec : Prop :=
  ∀ n, (P5457242152771812963.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P1362726693346519112

`comp[A029747(n+1)-1]+1`
-/

namespace A161992.P1362726693346519112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A161992.P1362726693346519112

namespace A161992

/-- `comp[A029747(n+1)-1]+1` -/
def P1362726693346519112.Spec : Prop :=
  ∀ n, (P1362726693346519112.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P15240640573622352858

`eq[5, 5%A000265(n+1)]+1`
-/

namespace A161992.P15240640573622352858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A000265 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A161992.P15240640573622352858

namespace A161992

/-- `eq[5, 5%A000265(n+1)]+1` -/
def P15240640573622352858.Spec : Prop :=
  ∀ n, (P15240640573622352858.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P10665108076760283872

`∪[A004169(n+1), A341329(n+1)]`
-/

namespace A161992.P10665108076760283872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161992.P10665108076760283872

namespace A161992

/-- `∪[A004169(n+1), A341329(n+1)]` -/
def P10665108076760283872.Spec : Prop :=
  ∀ n, (P10665108076760283872.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P1305309718122886919

`∪[A093642(n+1), A279622(n+1)]`
-/

namespace A161992.P1305309718122886919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161992.P1305309718122886919

namespace A161992

/-- `∪[A093642(n+1), A279622(n+1)]` -/
def P1305309718122886919.Spec : Prop :=
  ∀ n, (P1305309718122886919.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P17405183600807968131

`∪[A105441(n+1), A279622(n+1)]`
-/

namespace A161992.P17405183600807968131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161992.P17405183600807968131

namespace A161992

/-- `∪[A105441(n+1), A279622(n+1)]` -/
def P17405183600807968131.Spec : Prop :=
  ∀ n, (P17405183600807968131.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P9181137551138778147

`∪[A105441(n+1), A364562(n+1)]`
-/

namespace A161992.P9181137551138778147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161992.P9181137551138778147

namespace A161992

/-- `∪[A105441(n+1), A364562(n+1)]` -/
def P9181137551138778147.Spec : Prop :=
  ∀ n, (P9181137551138778147.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P4529704833023538131

`∪[A279622(n+1), A364566(n+1)]`
-/

namespace A161992.P4529704833023538131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161992.P4529704833023538131

namespace A161992

/-- `∪[A279622(n+1), A364566(n+1)]` -/
def P4529704833023538131.Spec : Prop :=
  ∀ n, (P4529704833023538131.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P14913997408419066228

`∪[A364562(n+1), A364566(n+1)]`
-/

namespace A161992.P14913997408419066228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161992.P14913997408419066228

namespace A161992

/-- `∪[A364562(n+1), A364566(n+1)]` -/
def P14913997408419066228.Spec : Prop :=
  ∀ n, (P14913997408419066228.a n : ℤ) = A161992 (n + 1)

end A161992

/-! ## A161992.P18229440455535947756

`∩[A005767(n+1), A116451(n)]`
-/

namespace A161992.P18229440455535947756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161992.P18229440455535947756

namespace A161992

/-- `∩[A005767(n+1), A116451(n)]` -/
def P18229440455535947756.Spec : Prop :=
  ∀ n, (P18229440455535947756.a n : ℤ) = A161992 (n + 1)

end A161992

/-!
# A161993: A006005 (shifted) convolved with all of its regularly "aerated" variants.

The programs for A161993, there is no canonical definition to state claims against.
-/

/-! ## A161993.P15454181696022830753

`or(A097098(A000079(n)), A153732(n))`
-/

namespace A161993.P15454181696022830753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097098 (A000079 n).toNat) (A153732 n)

end

end A161993.P15454181696022830753

/-! ## A161993.P8664321750431829095

`A239956(3*n)+A003056(A083100(n))`
-/

namespace A161993.P8664321750431829095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239956 (3 * n) + A003056 (A083100 n).toNat

end

end A161993.P8664321750431829095

/-! ## A161993.P5747944206899385142

`A360631(n+1)-A044942(A241881(3*(n+1)))`
-/

namespace A161993.P5747944206899385142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360631 (n + 1) - A044942 (A241881 (3 * (n + 1))).toNat

end

end A161993.P5747944206899385142

/-!
# A161994: Composites with an even remainder if divided by the sum of their prime factors.

The programs for A161994, there is no canonical definition to state claims against.
-/

/-! ## A161994.P12422812606397570365

`lt[A269719(n+1), A003415(n)²²]`
-/

namespace A161994.P12422812606397570365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003415 n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161994.P12422812606397570365

/-! ## A161994.P17267499762929245236

`lt[A007953(A168235(n+1)), A003415(n)]`
-/

namespace A161994.P17267499762929245236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A168235 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161994.P17267499762929245236

/-! ## A161994.P13053354876957382040

`lt[A020738(A202979(n+1)), A000001(n)]`
-/

namespace A161994.P13053354876957382040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020738 (A202979 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161994.P13053354876957382040

/-! ## A161994.P4715086905948682885

`lt[A193432(A000292(n+2)), A140185(n)]`
-/

namespace A161994.P4715086905948682885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (A000292 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161994.P4715086905948682885

/-! ## A161994.P9265957458648263667

`lt[A338484(3*n+1), A000001(n)]`
-/

namespace A161994.P9265957458648263667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338484 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161994.P9265957458648263667

/-!
# A161996: A (negated) characteristic function of twin composite odd numbers.

The programs for A161996, the canonical program `A161996.P3418427153135750794` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161996 has offset 1).

The definition of A161996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161996.P13792741781698357098

`char[A024699(n+1)-1]`
-/

namespace A161996.P13792741781698357098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024699 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A161996.P13792741781698357098

namespace A161996

/-- `char[A024699(n+1)-1]` -/
def P13792741781698357098.Spec : Prop :=
  ∀ n, (P13792741781698357098.a n : ℤ) = A161996 (n + 1)

end A161996

/-! ## A161996.P5817381312603358713

`char[floor(A238526(n+1)/6)]`
-/

namespace A161996.P5817381312603358713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A238526 (n + 1) : ℚ) / 6⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A161996.P5817381312603358713

namespace A161996

/-- `char[floor(A238526(n+1)/6)]` -/
def P5817381312603358713.Spec : Prop :=
  ∀ n, (P5817381312603358713.a n : ℤ) = A161996 (n + 1)

end A161996

/-! ## A161996.P2902922955742992203

`char[comp[A060461(n+1)-1]]`
-/

namespace A161996.P2902922955742992203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A161996.P2902922955742992203

namespace A161996

/-- `char[comp[A060461(n+1)-1]]` -/
def P2902922955742992203.Spec : Prop :=
  ∀ n, (P2902922955742992203.a n : ℤ) = A161996 (n + 1)

end A161996

/-! ## A161996.P9380634385005080490

`char[floor((A000040(n+1)-2)/6)]`
-/

namespace A161996.P9380634385005080490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) - 2 : ℚ) / 6⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A161996.P9380634385005080490

namespace A161996

/-- `char[floor((A000040(n+1)-2)/6)]` -/
def P9380634385005080490.Spec : Prop :=
  ∀ n, (P9380634385005080490.a n : ℤ) = A161996 (n + 1)

end A161996

/-! ## A161996.P3418427153135750794

`A000045(Δ[A100637(2*n)])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161996

/-- `A000045(Δ[A100637(2*n)])` -/
def P3418427153135750794.Spec : Prop :=
  ∀ n, P3418427153135750794.a n = A161996 (n + 1)

theorem P3418427153135750794.correct : P3418427153135750794.Spec := by
  intro n
  simp only [A161996, Nat.add_sub_cancel]

end A161996

/-! ## A161996.P1138163025519785015

`A000196(Δ[A100637(2*n)])`
-/

namespace A161996.P1138163025519785015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat

end

end A161996.P1138163025519785015

namespace A161996

/-- `A000196(Δ[A100637(2*n)])` -/
def P1138163025519785015.Spec : Prop :=
  ∀ n, P1138163025519785015.a n = A161996 (n + 1)

end A161996

/-! ## A161996.P13146326492287931426

`A075743(A075743(2*(n+1))+2*n+1)`
-/

namespace A161996.P13146326492287931426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A075743 (2 * (n + 1)) + (2 * n : ℤ) + 1).toNat

end

end A161996.P13146326492287931426

namespace A161996

/-- `A075743(A075743(2*(n+1))+2*n+1)` -/
def P13146326492287931426.Spec : Prop :=
  ∀ n, P13146326492287931426.a n = A161996 (n + 1)

end A161996

/-! ## A161996.P11267082762037102845

`gcd(A156706(2*n+1), A156706(2*(n+1)))`
-/

namespace A161996.P11267082762037102845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156706 (2 * n + 1)) (A156706 (2 * (n + 1)))

end

end A161996.P11267082762037102845

namespace A161996

/-- `gcd(A156706(2*n+1), A156706(2*(n+1)))` -/
def P11267082762037102845.Spec : Prop :=
  ∀ n, (P11267082762037102845.a n : ℤ) = A161996 (n + 1)

end A161996

/-! ## A161996.P12708756786845468679

`A075743(A005843(n+1)-A075743(2*n+1))`
-/

namespace A161996.P12708756786845468679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A005843 (n + 1) - A075743 (2 * n + 1)).toNat

end

end A161996.P12708756786845468679

namespace A161996

/-- `A075743(A005843(n+1)-A075743(2*n+1))` -/
def P12708756786845468679.Spec : Prop :=
  ∀ n, P12708756786845468679.a n = A161996 (n + 1)

end A161996

/-! ## A161996.P15215027286287037288

`char[floor((A006530(n+1)-2)/6)]`
-/

namespace A161996.P15215027286287037288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006530 (n + 1) - 2 : ℚ) / 6⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A161996.P15215027286287037288

namespace A161996

/-- `char[floor((A006530(n+1)-2)/6)]` -/
def P15215027286287037288.Spec : Prop :=
  ∀ n, (P15215027286287037288.a n : ℤ) = A161996 (n + 1)

end A161996

/-! ## A161996.P2377959283078244163

`char[floor(n/3)*A010051(2*n+3)]`
-/

namespace A161996.P2377959283078244163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ * A010051 (2 * n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A161996.P2377959283078244163

namespace A161996

/-- `char[floor(n/3)*A010051(2*n+3)]` -/
def P2377959283078244163.Spec : Prop :=
  ∀ n, (P2377959283078244163.a n : ℤ) = A161996 (n + 1)

end A161996

/-! ## A161996.P1747805010048618570

`char[floor((n+1)/A305801(2*n+1))-1]`
-/

namespace A161996.P1747805010048618570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A305801 (2 * n + 1) : ℚ)⌋ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A161996.P1747805010048618570

namespace A161996

/-- `char[floor((n+1)/A305801(2*n+1))-1]` -/
def P1747805010048618570.Spec : Prop :=
  ∀ n, (P1747805010048618570.a n : ℤ) = A161996 (n + 1)

end A161996

/-! ## A161996.P965174863022544804

`floor(atan(Δ[A118749(2*n+1)]))`
-/

namespace A161996.P965174863022544804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118749 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (f1 (n + 1) - f1 n : ℝ)⌋

end

end A161996.P965174863022544804

namespace A161996

/-- `floor(atan(Δ[A118749(2*n+1)]))` -/
def P965174863022544804.Spec : Prop :=
  ∀ n, P965174863022544804.a n = A161996 (n + 1)

end A161996

/-! ## A161996.P15692805582769397318

`A064911(A002373(3*n+5)+1)`
-/

namespace A161996.P15692805582769397318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A002373 (3 * n + 5) + 1).toNat

end

end A161996.P15692805582769397318

namespace A161996

/-- `A064911(A002373(3*n+5)+1)` -/
def P15692805582769397318.Spec : Prop :=
  ∀ n, P15692805582769397318.a n = A161996 (n + 1)

end A161996

/-! ## A161996.P8325462557552942801

`∑{e}[Δ[A099802(3*n+2)]+1, #]`
-/

namespace A161996.P8325462557552942801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A161996.P8325462557552942801

namespace A161996

/-- `∑{e}[Δ[A099802(3*n+2)]+1, #]` -/
def P8325462557552942801.Spec : Prop :=
  ∀ n, (P8325462557552942801.a n : ℤ) = A161996 (n + 1)

end A161996

/-! ## A161996.P9418843350294546355

`char[A241165(p?[2*n+1])]`
-/

namespace A161996.P9418843350294546355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241165 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A161996.P9418843350294546355

namespace A161996

/-- `char[A241165(p?[2*n+1])]` -/
def P9418843350294546355.Spec : Prop :=
  ∀ n, (P9418843350294546355.a n : ℤ) = A161996 (n + 1)

end A161996

/-! ## A161996.P1676326297073962973

`A300056(A145194(A172155(n+1)))`
-/

namespace A161996.P1676326297073962973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300056 (A145194 (A172155 (n + 1)).toNat).toNat

end

end A161996.P1676326297073962973

namespace A161996

/-- `A300056(A145194(A172155(n+1)))` -/
def P1676326297073962973.Spec : Prop :=
  ∀ n, P1676326297073962973.a n = A161996 (n + 1)

end A161996

/-! ## A161996.P16971185840312633554

`A359816(A145194(A172155(n+1))²)`
-/

namespace A161996.P16971185840312633554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359816 (A145194 (A172155 (n + 1)).toNat ^ 2).toNat

end

end A161996.P16971185840312633554

namespace A161996

/-- `A359816(A145194(A172155(n+1))²)` -/
def P16971185840312633554.Spec : Prop :=
  ∀ n, P16971185840312633554.a n = A161996 (n + 1)

end A161996

/-!
# A161999: For n even a(n) = a(n-1) + 10*a(n-2), for n odd a(n) = a(n-3) + 10 a(n-2); with a(1) = 0, a(2) = 1.

The programs for A161999, the canonical program `A161999.P832693226404572067` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161999 has offset 1).

The definition of A161999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161999.P832693226404572067

`20*a(n-2)-99*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161999

/-- `20*a(n-2)-99*a(n-4)` -/
def P832693226404572067.Spec : Prop :=
  ∀ n, P832693226404572067.a n = A161999 (n + 1)

theorem P832693226404572067.correct : P832693226404572067.Spec := by
  intro n
  simp only [A161999, Nat.add_sub_cancel]

end A161999

/-! ## A161999.P15245969782631723261

`A335372(A105867(n))`
-/

namespace A161999.P15245969782631723261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335372 (A105867 n).toNat

end

end A161999.P15245969782631723261

namespace A161999

/-- `A335372(A105867(n))` -/
def P15245969782631723261.Spec : Prop :=
  ∀ n, P15245969782631723261.a n = A161999 (n + 1)

end A161999

