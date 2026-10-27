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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
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
# A356100: a(n) = Sum_{k=1..n} (k - 1)^n * floor(n/k).

The programs for A356100, there is no canonical definition to state claims against.
-/

/-! ## A356100.P2049748545420202096

`A319194(n+1)-A332469(n+1)`
-/

namespace A356100.P2049748545420202096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319194 (n + 1) - A332469 (n + 1)

end

end A356100.P2049748545420202096

/-! ## A356100.P16228577591305822946

`A319194(n+1)-A344725(∑[4*n]+1)`
-/

namespace A356100.P16228577591305822946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319194 (n + 1) - A344725 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A356100.P16228577591305822946

/-! ## A356100.P10276212703315925718

`A319194(n+1)%A344725(A001844(n))`
-/

namespace A356100.P10276212703315925718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319194 (n + 1)) (A344725 (A001844 n).toNat)

end

end A356100.P10276212703315925718

/-! ## A356100.P8711916373398705811

`A319194(n+1)-record[A003982(n)*A344725(n+1)]`
-/

namespace A356100.P8711916373398705811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A344725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319194 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356100.P8711916373398705811

/-! ## A356100.P5336412539942229505

`A319194(n+1)-(A344725(A001844(n))+A025444(n))`
-/

namespace A356100.P5336412539942229505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319194 (n + 1) - (A344725 (A001844 n).toNat + A025444 n)

end

end A356100.P5336412539942229505

/-!
# A356101: Intersection of A000201 and A022839.

The programs for A356101, the canonical program `A356101.P17416352554625615836` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356101 has offset 1).

The definition of A356101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5855 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356101.P17416352554625615836

`filter[A108598(n+1), A096270(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356101

/-- `filter[A108598(n+1), A096270(#)]` -/
def P17416352554625615836.Spec : Prop :=
  ∀ n, P17416352554625615836.a n = A356101 (n + 1)

theorem P17416352554625615836.correct : P17416352554625615836.Spec := by
  intro n
  simp only [A356101, Nat.add_sub_cancel]

end A356101

/-! ## A356101.P9430433249719010577

`∩[A108598(n+1), A066096(n)]`
-/

namespace A356101.P9430433249719010577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356101.P9430433249719010577

namespace A356101

/-- `∩[A108598(n+1), A066096(n)]` -/
def P9430433249719010577.Spec : Prop :=
  ∀ n, (P9430433249719010577.a n : ℤ) = A356101 (n + 1)

end A356101

/-! ## A356101.P10507356839655757655

`∩[A000201(n+1), A108598(n+1)]`
-/

namespace A356101.P10507356839655757655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356101.P10507356839655757655

namespace A356101

/-- `∩[A000201(n+1), A108598(n+1)]` -/
def P10507356839655757655.Spec : Prop :=
  ∀ n, (P10507356839655757655.a n : ℤ) = A356101 (n + 1)

end A356101

/-! ## A356101.P7354505573613844068

`∩[A108598(n+1), A060143(n)+n]`
-/

namespace A356101.P7354505573613844068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356101.P7354505573613844068

namespace A356101

/-- `∩[A108598(n+1), A060143(n)+n]` -/
def P7354505573613844068.Spec : Prop :=
  ∀ n, (P7354505573613844068.a n : ℤ) = A356101 (n + 1)

end A356101

/-! ## A356101.P12679046632666341578

`filter[A108598(n+1), A114986(#)]`
-/

namespace A356101.P12679046632666341578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114986 (f1 j).toNat = 1) n)

end

end A356101.P12679046632666341578

namespace A356101

/-- `filter[A108598(n+1), A114986(#)]` -/
def P12679046632666341578.Spec : Prop :=
  ∀ n, P12679046632666341578.a n = A356101 (n + 1)

end A356101

/-! ## A356101.P1401266841688093814

`∩[A108598(n+1), A060143(A004957(n))]`
-/

namespace A356101.P1401266841688093814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A004957 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356101.P1401266841688093814

namespace A356101

/-- `∩[A108598(n+1), A060143(A004957(n))]` -/
def P1401266841688093814.Spec : Prop :=
  ∀ n, (P1401266841688093814.a n : ℤ) = A356101 (n + 1)

end A356101

/-! ## A356101.P6686029993899018622

`∩[A108598(n+1), A060143(A026352(n))]`
-/

namespace A356101.P6686029993899018622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A026352 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356101.P6686029993899018622

namespace A356101

/-- `∩[A108598(n+1), A060143(A026352(n))]` -/
def P6686029993899018622.Spec : Prop :=
  ∀ n, (P6686029993899018622.a n : ℤ) = A356101 (n + 1)

end A356101

/-! ## A356101.P2190868599659082179

`lt[A284749(2*(n+1)), tan(A096270(n))]`
-/

namespace A356101.P2190868599659082179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (2 * (n + 1))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A096270 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A356101.P2190868599659082179

namespace A356101

/-- `lt[A284749(2*(n+1)), tan(A096270(n))]` -/
def P2190868599659082179.Spec : Prop :=
  ∀ n, (P2190868599659082179.a n : ℤ) = A356101 (n + 1)

end A356101

/-!
# A356102: Intersection of A001950 and A022839.

The programs for A356102, the canonical program `A356102.P2897082102380948719` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356102 has offset 1).

The definition of A356102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3416 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356102.P2897082102380948719

`∩[A001950(n+1), A022839(n+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356102

/-- `∩[A001950(n+1), A022839(n+1)]` -/
def P2897082102380948719.Spec : Prop :=
  ∀ n, (P2897082102380948719.a n : ℤ) = A356102 (n + 1)

theorem P2897082102380948719.correct : P2897082102380948719.Spec := by
  intro n
  simp only [A356102, Nat.add_sub_cancel]

end A356102

/-! ## A356102.P9046173738926886693

`filter[A001950(n+1), A285685(#)]`
-/

namespace A356102.P9046173738926886693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285685 (f1 j).toNat = 1) n)

end

end A356102.P9046173738926886693

namespace A356102

/-- `filter[A001950(n+1), A285685(#)]` -/
def P9046173738926886693.Spec : Prop :=
  ∀ n, P9046173738926886693.a n = A356102 (n + 1)

end A356102

/-! ## A356102.P12583196696075976409

`filter[A307295(2*n), A285685(#)]`
-/

namespace A356102.P12583196696075976409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285685 (f1 j).toNat = 1) n)

end

end A356102.P12583196696075976409

namespace A356102

/-- `filter[A307295(2*n), A285685(#)]` -/
def P12583196696075976409.Spec : Prop :=
  ∀ n, P12583196696075976409.a n = A356102 (n + 1)

end A356102

/-! ## A356102.P4607708147734890940

`filter[A054084(2*n+1), A285685(#)]`
-/

namespace A356102.P4607708147734890940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285685 (f1 j).toNat = 1) n)

end

end A356102.P4607708147734890940

namespace A356102

/-- `filter[A054084(2*n+1), A285685(#)]` -/
def P4607708147734890940.Spec : Prop :=
  ∀ n, P4607708147734890940.a n = A356102 (n + 1)

end A356102

/-! ## A356102.P14569589012787724726

`filter[A072061(2*(n+1)), A285685(#)]`
-/

namespace A356102.P14569589012787724726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072061 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285685 (f1 j).toNat = 1) n)

end

end A356102.P14569589012787724726

namespace A356102

/-- `filter[A072061(2*(n+1)), A285685(#)]` -/
def P14569589012787724726.Spec : Prop :=
  ∀ n, P14569589012787724726.a n = A356102 (n + 1)

end A356102

/-! ## A356102.P14057568229224453908

`filter[A187485(2*(n+1)), A285685(#)]`
-/

namespace A356102.P14057568229224453908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285685 (f1 j).toNat = 1) n)

end

end A356102.P14057568229224453908

namespace A356102

/-- `filter[A187485(2*(n+1)), A285685(#)]` -/
def P14057568229224453908.Spec : Prop :=
  ∀ n, P14057568229224453908.a n = A356102 (n + 1)

end A356102

/-! ## A356102.P2579676435916191058

`filter[A188222(2*(n+1)), A285685(#)]`
-/

namespace A356102.P2579676435916191058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285685 (f1 j).toNat = 1) n)

end

end A356102.P2579676435916191058

namespace A356102

/-- `filter[A188222(2*(n+1)), A285685(#)]` -/
def P2579676435916191058.Spec : Prop :=
  ∀ n, P2579676435916191058.a n = A356102 (n + 1)

end A356102

/-!
# A356103: Intersection of A001950 and A108598.

The programs for A356103, the canonical program `A356103.P879455615759908010` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356103 has offset 1).

The definition of A356103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356103.P879455615759908010

`∩[A108598(n+1), floor(n*ϕ²)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356103

/-- `∩[A108598(n+1), floor(n*ϕ²)]` -/
def P879455615759908010.Spec : Prop :=
  ∀ n, (P879455615759908010.a n : ℤ) = A356103 (n + 1)

theorem P879455615759908010.correct : P879455615759908010.Spec := by
  intro n
  simp only [A356103, Nat.add_sub_cancel]

end A356103

/-! ## A356103.P9268154457182264825

`∩[floor(ϕ²*(n+1)%(n+2)), round(A054770(n+1)/2)]`
-/

namespace A356103.P9268154457182264825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ 2 * (((n + 1) % (n + 2) : ℕ) : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A054770 (n + 1) : ℚ) / 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356103.P9268154457182264825

namespace A356103

/-- `∩[floor(ϕ²*(n+1)%(n+2)), round(A054770(n+1)/2)]` -/
def P9268154457182264825.Spec : Prop :=
  ∀ n, (P9268154457182264825.a n : ℤ) = A356103 (n + 1)

end A356103

/-! ## A356103.P17179377483406883898

`∩[A001950(n+1), A108598(n+1)]`
-/

namespace A356103.P17179377483406883898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356103.P17179377483406883898

namespace A356103

/-- `∩[A001950(n+1), A108598(n+1)]` -/
def P17179377483406883898.Spec : Prop :=
  ∀ n, (P17179377483406883898.a n : ℤ) = A356103 (n + 1)

end A356103

/-! ## A356103.P12793666178960532721

`∩[A000201(A000201(n+1))+1, A108598(n+1)]`
-/

namespace A356103.P12793666178960532721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A000201 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356103.P12793666178960532721

namespace A356103

/-- `∩[A000201(A000201(n+1))+1, A108598(n+1)]` -/
def P12793666178960532721.Spec : Prop :=
  ∀ n, (P12793666178960532721.a n : ℤ) = A356103 (n + 1)

end A356103

/-! ## A356103.P17366705938456355714

`lt[char[A022839(n+1)], A188432(n+1)]`
-/

namespace A356103.P17366705938456355714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A356103.P17366705938456355714

namespace A356103

/-- `lt[char[A022839(n+1)], A188432(n+1)]` -/
def P17366705938456355714.Spec : Prop :=
  ∀ n, (P17366705938456355714.a n : ℤ) = A356103 (n + 1)

end A356103

/-!
# A356104: a(n) = A000201(A022839(n)).

The programs for A356104, the canonical program `A356104.P2001331991859084414` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356104 has offset 1).

The definition of A356104 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000201(A022839(n+1))` (program `A356104.P2001331991859084414`, by `A356104.P2001331991859084414.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356104.P2001331991859084414

`A000201(A022839(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356104

/-- `A000201(A022839(n+1))` -/
def P2001331991859084414.Spec : Prop :=
  ∀ n, P2001331991859084414.a n = A356104 (n + 1)

theorem P2001331991859084414.correct : P2001331991859084414.Spec := by
  intro n
  simp only [A356104, Nat.add_sub_cancel]

end A356104

/-! ## A356104.P16260885678484036617

`floor(ϕ*floor((n+1)*sqrt(5)))`
-/

namespace A356104.P16260885678484036617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋ : ℝ)⌋

end

end A356104.P16260885678484036617

namespace A356104

/-- `floor(ϕ*floor((n+1)*sqrt(5)))` -/
def P16260885678484036617.Spec : Prop :=
  ∀ n, P16260885678484036617.a n = A356104 (n + 1)

end A356104

/-! ## A356104.P14845466236475265908

`A356106(n+1)-A022839(n+1)`
-/

namespace A356104.P14845466236475265908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356106 (n + 1) - A022839 (n + 1)

end

end A356104.P14845466236475265908

namespace A356104

/-- `A356106(n+1)-A022839(n+1)` -/
def P14845466236475265908.Spec : Prop :=
  ∀ n, P14845466236475265908.a n = A356104 (n + 1)

end A356104

/-! ## A356104.P16628215582460479915

`A356106(n+1)-A194151(2*(n+1))`
-/

namespace A356104.P16628215582460479915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356106 (n + 1) - A194151 (2 * (n + 1))

end

end A356104.P16628215582460479915

namespace A356104

/-- `A356106(n+1)-A194151(2*(n+1))` -/
def P16628215582460479915.Spec : Prop :=
  ∀ n, P16628215582460479915.a n = A356104 (n + 1)

end A356104

/-! ## A356104.P13461381173446497080

`A000201(floor((n+1)*sqrt(5)))`
-/

namespace A356104.P13461381173446497080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋.toNat

end

end A356104.P13461381173446497080

namespace A356104

/-- `A000201(floor((n+1)*sqrt(5)))` -/
def P13461381173446497080.Spec : Prop :=
  ∀ n, P13461381173446497080.a n = A356104 (n + 1)

end A356104

/-! ## A356104.P16532338615909126853

`A066096(floor((n+1)*sqrt(5)))`
-/

namespace A356104.P16532338615909126853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋.toNat

end

end A356104.P16532338615909126853

namespace A356104

/-- `A066096(floor((n+1)*sqrt(5)))` -/
def P16532338615909126853.Spec : Prop :=
  ∀ n, P16532338615909126853.a n = A356104 (n + 1)

end A356104

/-! ## A356104.P5780073984332405236

`A022342(floor((n+1)*sqrt(5)))+1`
-/

namespace A356104.P5780073984332405236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋.toNat + 1

end

end A356104.P5780073984332405236

namespace A356104

/-- `A022342(floor((n+1)*sqrt(5)))+1` -/
def P5780073984332405236.Spec : Prop :=
  ∀ n, P5780073984332405236.a n = A356104 (n + 1)

theorem P5780073984332405236.correct : P5780073984332405236.Spec := by
  intro n
  simp only [A356104, Nat.add_sub_cancel, A356104.P5780073984332405236.a, A356104.P2001331991859084414.a, A000201, A000201.P2935798382643029248.a, A022342, A022342.P1190268710273068250.a, A022839, A022839.P1029373569643495419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A356104

/-! ## A356104.P14986561662515760884

`A004956(floor((n+1)*sqrt(5)))-1`
-/

namespace A356104.P14986561662515760884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋.toNat - 1

end

end A356104.P14986561662515760884

namespace A356104

/-- `A004956(floor((n+1)*sqrt(5)))-1` -/
def P14986561662515760884.Spec : Prop :=
  ∀ n, P14986561662515760884.a n = A356104 (n + 1)

end A356104

/-! ## A356104.P5709676383505822996

`A026351(floor((n+1)*sqrt(5)))-1`
-/

namespace A356104.P5709676383505822996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋.toNat - 1

end

end A356104.P5709676383505822996

namespace A356104

/-- `A026351(floor((n+1)*sqrt(5)))-1` -/
def P5709676383505822996.Spec : Prop :=
  ∀ n, P5709676383505822996.a n = A356104 (n + 1)

end A356104

/-! ## A356104.P551899463426375208

`record[A000201(A026262(n+1))]`
-/

namespace A356104.P551899463426375208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A026262 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356104.P551899463426375208

namespace A356104

/-- `record[A000201(A026262(n+1))]` -/
def P551899463426375208.Spec : Prop :=
  ∀ n, P551899463426375208.a n = A356104 (n + 1)

end A356104

/-! ## A356104.P17344660707057567846

`A283233(A194151(2*(n+1)))/2`
-/

namespace A356104.P17344660707057567846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283233 (A194151 (2 * (n + 1))).toNat : ℚ) / 2

end

end A356104.P17344660707057567846

namespace A356104

/-- `A283233(A194151(2*(n+1)))/2` -/
def P17344660707057567846.Spec : Prop :=
  ∀ n, P17344660707057567846.a n = (A356104 (n + 1) : ℚ)

end A356104

/-! ## A356104.P1833205452582998613

`A005206(A003622(A001961(n+1)+n+1))`
-/

namespace A356104.P1833205452582998613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003622 (A001961 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A356104.P1833205452582998613

namespace A356104

/-- `A005206(A003622(A001961(n+1)+n+1))` -/
def P1833205452582998613.Spec : Prop :=
  ∀ n, P1833205452582998613.a n = A356104 (n + 1)

end A356104

/-! ## A356104.P156308551882500334

`A120613(A368649(n+1))`
-/

namespace A356104.P156308551882500334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 (A368649 (n + 1)).toNat

end

end A356104.P156308551882500334

namespace A356104

/-- `A120613(A368649(n+1))` -/
def P156308551882500334.Spec : Prop :=
  ∀ n, P156308551882500334.a n = A356104 (n + 1)

end A356104

/-! ## A356104.P6487634469943080199

`A002251(A356106(n+1))`
-/

namespace A356104.P6487634469943080199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A356106 (n + 1)).toNat

end

end A356104.P6487634469943080199

namespace A356104

/-- `A002251(A356106(n+1))` -/
def P6487634469943080199.Spec : Prop :=
  ∀ n, P6487634469943080199.a n = A356104 (n + 1)

end A356104

/-! ## A356104.P18322750507852036860

`A002251(A001950(A001961(n+1)+n+1))`
-/

namespace A356104.P18322750507852036860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A001950 (A001961 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A356104.P18322750507852036860

namespace A356104

/-- `A002251(A001950(A001961(n+1)+n+1))` -/
def P18322750507852036860.Spec : Prop :=
  ∀ n, P18322750507852036860.a n = A356104 (n + 1)

end A356104

/-!
# A356105: a(n) = A000201(A108598(n)).

The programs for A356105, the canonical program `A356105.P7334979751495331095` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356105 has offset 1).

The definition of A356105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356105.P7334979751495331095

`A000201(A108598(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356105

/-- `A000201(A108598(n+1))` -/
def P7334979751495331095.Spec : Prop :=
  ∀ n, P7334979751495331095.a n = A356105 (n + 1)

theorem P7334979751495331095.correct : P7334979751495331095.Spec := by
  intro n
  simp only [A356105, Nat.add_sub_cancel]

end A356105

/-! ## A356105.P3444592785226361304

`floor(ϕ*comp[floor(n*sqrt(5))])`
-/

namespace A356105.P3444592785226361304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ)⌋

end

end A356105.P3444592785226361304

namespace A356105

/-- `floor(ϕ*comp[floor(n*sqrt(5))])` -/
def P3444592785226361304.Spec : Prop :=
  ∀ n, P3444592785226361304.a n = A356105 (n + 1)

end A356105

/-! ## A356105.P18381269375079983403

`A356107(n+1)-A108598(n+1)`
-/

namespace A356105.P18381269375079983403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356107 (n + 1) - A108598 (n + 1)

end

end A356105.P18381269375079983403

namespace A356105

/-- `A356107(n+1)-A108598(n+1)` -/
def P18381269375079983403.Spec : Prop :=
  ∀ n, P18381269375079983403.a n = A356105 (n + 1)

end A356105

/-! ## A356105.P12399773426941286693

`A000201(comp[floor(n*sqrt(5))])`
-/

namespace A356105.P12399773426941286693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356105.P12399773426941286693

namespace A356105

/-- `A000201(comp[floor(n*sqrt(5))])` -/
def P12399773426941286693.Spec : Prop :=
  ∀ n, P12399773426941286693.a n = A356105 (n + 1)

end A356105

/-! ## A356105.P4168546565929950115

`A022342(comp[floor(n*sqrt(5))])+1`
-/

namespace A356105.P4168546565929950115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A356105.P4168546565929950115

namespace A356105

/-- `A022342(comp[floor(n*sqrt(5))])+1` -/
def P4168546565929950115.Spec : Prop :=
  ∀ n, P4168546565929950115.a n = A356105 (n + 1)

end A356105

/-! ## A356105.P8709062263875717053

`A004956(comp[floor(n*sqrt(5))])-1`
-/

namespace A356105.P8709062263875717053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A356105.P8709062263875717053

namespace A356105

/-- `A004956(comp[floor(n*sqrt(5))])-1` -/
def P8709062263875717053.Spec : Prop :=
  ∀ n, P8709062263875717053.a n = A356105 (n + 1)

end A356105

/-! ## A356105.P3928310971383488757

`A283233(comp[floor(n*sqrt(5))])/2`
-/

namespace A356105.P3928310971383488757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283233 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2

end

end A356105.P3928310971383488757

namespace A356105

/-- `A283233(comp[floor(n*sqrt(5))])/2` -/
def P3928310971383488757.Spec : Prop :=
  ∀ n, P3928310971383488757.a n = (A356105 (n + 1) : ℚ)

end A356105

/-! ## A356105.P18414302499519753267

`A066096(∑[3-Δ[A195122(n)]])`
-/

namespace A356105.P18414302499519753267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356105.P18414302499519753267

namespace A356105

/-- `A066096(∑[3-Δ[A195122(n)]])` -/
def P18414302499519753267.Spec : Prop :=
  ∀ n, P18414302499519753267.a n = A356105 (n + 1)

end A356105

/-! ## A356105.P8568011631752348871

`A066096(floor(A003231(n+1)/2))`
-/

namespace A356105.P8568011631752348871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 ⌊(A003231 (n + 1) : ℚ) / 2⌋.toNat

end

end A356105.P8568011631752348871

namespace A356105

/-- `A066096(floor(A003231(n+1)/2))` -/
def P8568011631752348871.Spec : Prop :=
  ∀ n, P8568011631752348871.a n = A356105 (n + 1)

end A356105

/-! ## A356105.P15776938578743875718

`A066096(comp[A066096(2*n)-n])`
-/

namespace A356105.P15776938578743875718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (2 * n) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356105.P15776938578743875718

namespace A356105

/-- `A066096(comp[A066096(2*n)-n])` -/
def P15776938578743875718.Spec : Prop :=
  ∀ n, P15776938578743875718.a n = A356105 (n + 1)

end A356105

/-! ## A356105.P11253497189224160781

`A066096(A026262(floor((n+1)*sqrt(5))))`
-/

namespace A356105.P11253497189224160781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A026262 ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋.toNat).toNat

end

end A356105.P11253497189224160781

namespace A356105

/-- `A066096(A026262(floor((n+1)*sqrt(5))))` -/
def P11253497189224160781.Spec : Prop :=
  ∀ n, P11253497189224160781.a n = A356105 (n + 1)

end A356105

/-! ## A356105.P862265906393040073

`A342297(A356107(n+1))`
-/

namespace A356105.P862265906393040073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342297 (A356107 (n + 1)).toNat

end

end A356105.P862265906393040073

namespace A356105

/-- `A342297(A356107(n+1))` -/
def P862265906393040073.Spec : Prop :=
  ∀ n, P862265906393040073.a n = A356105 (n + 1)

end A356105

/-! ## A356105.P9170547960302729288

`A287775(A054770(n+1))-A054770(n+1)`
-/

namespace A356105.P9170547960302729288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287775 (A054770 (n + 1)).toNat - A054770 (n + 1)

end

end A356105.P9170547960302729288

namespace A356105

/-- `A287775(A054770(n+1))-A054770(n+1)` -/
def P9170547960302729288.Spec : Prop :=
  ∀ n, P9170547960302729288.a n = A356105 (n + 1)

end A356105

/-! ## A356105.P3266796597066672147

`A287775(A287775(2*n+1))-A287775(2*n+1)`
-/

namespace A356105.P3266796597066672147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287775 (A287775 (2 * n + 1)).toNat - A287775 (2 * n + 1)

end

end A356105.P3266796597066672147

namespace A356105

/-- `A287775(A287775(2*n+1))-A287775(2*n+1)` -/
def P3266796597066672147.Spec : Prop :=
  ∀ n, P3266796597066672147.a n = A356105 (n + 1)

end A356105

/-!
# A356106: a(n) = A001950(A022839(n)).

The programs for A356106, the canonical program `A356106.P5529735893034461739` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356106 has offset 1).

The definition of A356106 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001950(A022839(n+1))` (program `A356106.P5529735893034461739`, by `A356106.P5529735893034461739.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356106.P5529735893034461739

`A001950(A022839(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356106

/-- `A001950(A022839(n+1))` -/
def P5529735893034461739.Spec : Prop :=
  ∀ n, P5529735893034461739.a n = A356106 (n + 1)

theorem P5529735893034461739.correct : P5529735893034461739.Spec := by
  intro n
  simp only [A356106, Nat.add_sub_cancel]

end A356106

/-! ## A356106.P4491827956210955722

`ceil(ϕ*floor(ϕ*floor((n+1)*sqrt(5))))`
-/

namespace A356106.P4491827956210955722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (⌊Real.goldenRatio * (⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋ : ℝ)⌋ : ℝ)⌉

end

end A356106.P4491827956210955722

namespace A356106

/-- `ceil(ϕ*floor(ϕ*floor((n+1)*sqrt(5))))` -/
def P4491827956210955722.Spec : Prop :=
  ∀ n, P4491827956210955722.a n = A356106 (n + 1)

end A356106

/-! ## A356106.P4290678719134062635

`A356104(n+1)+floor((n+1)*sqrt(5))`
-/

namespace A356106.P4290678719134062635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356104 (n + 1) + ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋

end

end A356106.P4290678719134062635

namespace A356106

/-- `A356104(n+1)+floor((n+1)*sqrt(5))` -/
def P4290678719134062635.Spec : Prop :=
  ∀ n, P4290678719134062635.a n = A356106 (n + 1)

end A356106

/-! ## A356106.P4742464240817739

`A003622(floor((n+1)*sqrt(5)))+1`
-/

namespace A356106.P4742464240817739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋.toNat + 1

end

end A356106.P4742464240817739

namespace A356106

/-- `A003622(floor((n+1)*sqrt(5)))+1` -/
def P4742464240817739.Spec : Prop :=
  ∀ n, P4742464240817739.a n = A356106 (n + 1)

end A356106

/-! ## A356106.P5782535084674159986

`A001950(floor((n+1)*sqrt(5)))`
-/

namespace A356106.P5782535084674159986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋.toNat

end

end A356106.P5782535084674159986

namespace A356106

/-- `A001950(floor((n+1)*sqrt(5)))` -/
def P5782535084674159986.Spec : Prop :=
  ∀ n, P5782535084674159986.a n = A356106 (n + 1)

end A356106

/-! ## A356106.P5686835733160084281

`A004957(floor((n+1)*sqrt(5)))-1`
-/

namespace A356106.P5686835733160084281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋.toNat - 1

end

end A356106.P5686835733160084281

namespace A356106

/-- `A004957(floor((n+1)*sqrt(5)))-1` -/
def P5686835733160084281.Spec : Prop :=
  ∀ n, P5686835733160084281.a n = A356106 (n + 1)

end A356106

/-! ## A356106.P7788404954662310351

`A026352(floor((n+1)*sqrt(5)))-1`
-/

namespace A356106.P7788404954662310351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋.toNat - 1

end

end A356106.P7788404954662310351

namespace A356106

/-- `A026352(floor((n+1)*sqrt(5)))-1` -/
def P7788404954662310351.Spec : Prop :=
  ∀ n, P7788404954662310351.a n = A356106 (n + 1)

end A356106

/-! ## A356106.P6472486662084767486

`A054770(A022839(n+1))-A190511(n+1)`
-/

namespace A356106.P6472486662084767486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054770 (A022839 (n + 1)).toNat - A190511 (n + 1)

end

end A356106.P6472486662084767486

namespace A356106

/-- `A054770(A022839(n+1))-A190511(n+1)` -/
def P6472486662084767486.Spec : Prop :=
  ∀ n, P6472486662084767486.a n = A356106 (n + 1)

end A356106

/-! ## A356106.P12223873305405786624

`record[A026262(n+1)+A000201(A026262(n+1))]`
-/

namespace A356106.P12223873305405786624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026262 (n + 1) + A000201 (A026262 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356106.P12223873305405786624

namespace A356106

/-- `record[A026262(n+1)+A000201(A026262(n+1))]` -/
def P12223873305405786624.Spec : Prop :=
  ∀ n, P12223873305405786624.a n = A356106 (n + 1)

end A356106

/-! ## A356106.P11695752582929072611

`A000201(floor(ϕ*floor((n+1)*sqrt(5))))+1`
-/

namespace A356106.P11695752582929072611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 ⌊Real.goldenRatio * (⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋ : ℝ)⌋.toNat + 1

end

end A356106.P11695752582929072611

namespace A356106

/-- `A000201(floor(ϕ*floor((n+1)*sqrt(5))))+1` -/
def P11695752582929072611.Spec : Prop :=
  ∀ n, P11695752582929072611.a n = A356106 (n + 1)

end A356106

/-! ## A356106.P10202485758653338411

`A002251(A356104(n+1))`
-/

namespace A356106.P10202485758653338411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A356104 (n + 1)).toNat

end

end A356106.P10202485758653338411

namespace A356106

/-- `A002251(A356104(n+1))` -/
def P10202485758653338411.Spec : Prop :=
  ∀ n, P10202485758653338411.a n = A356106 (n + 1)

end A356106

/-! ## A356106.P7531372120818154083

`A187485(2*floor((n+1)*sqrt(5)))`
-/

namespace A356106.P7531372120818154083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (2 * ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋).toNat

end

end A356106.P7531372120818154083

namespace A356106

/-- `A187485(2*floor((n+1)*sqrt(5)))` -/
def P7531372120818154083.Spec : Prop :=
  ∀ n, P7531372120818154083.a n = A356106 (n + 1)

end A356106

/-!
# A356107: a(n) = A001950(A108598(n)).

The programs for A356107, the canonical program `A356107.P133630603064443981` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356107 has offset 1).

The definition of A356107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356107.P133630603064443981

`A001950(A108598(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356107

/-- `A001950(A108598(n+1))` -/
def P133630603064443981.Spec : Prop :=
  ∀ n, P133630603064443981.a n = A356107 (n + 1)

theorem P133630603064443981.correct : P133630603064443981.Spec := by
  intro n
  simp only [A356107, Nat.add_sub_cancel]

end A356107

/-! ## A356107.P10689942278773897146

`ceil(ϕ*A356105(n+1))`
-/

namespace A356107.P10689942278773897146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A356105 (n + 1) : ℝ)⌉

end

end A356107.P10689942278773897146

namespace A356107

/-- `ceil(ϕ*A356105(n+1))` -/
def P10689942278773897146.Spec : Prop :=
  ∀ n, P10689942278773897146.a n = A356107 (n + 1)

end A356107

/-! ## A356107.P17013869288420489488

`A003622(comp[floor(n*sqrt(5))])+1`
-/

namespace A356107.P17013869288420489488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A356107.P17013869288420489488

namespace A356107

/-- `A003622(comp[floor(n*sqrt(5))])+1` -/
def P17013869288420489488.Spec : Prop :=
  ∀ n, P17013869288420489488.a n = A356107 (n + 1)

end A356107

/-! ## A356107.P10155029696573621776

`A356105(n+1)+A108598(n+1)`
-/

namespace A356107.P10155029696573621776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356105 (n + 1) + A108598 (n + 1)

end

end A356107.P10155029696573621776

namespace A356107

/-- `A356105(n+1)+A108598(n+1)` -/
def P10155029696573621776.Spec : Prop :=
  ∀ n, P10155029696573621776.a n = A356107 (n + 1)

end A356107

/-! ## A356107.P16118288192054181123

`A001950(comp[floor(n*sqrt(5))])`
-/

namespace A356107.P16118288192054181123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356107.P16118288192054181123

namespace A356107

/-- `A001950(comp[floor(n*sqrt(5))])` -/
def P16118288192054181123.Spec : Prop :=
  ∀ n, P16118288192054181123.a n = A356107 (n + 1)

end A356107

/-! ## A356107.P6911548108471049062

`A002251(A356105(n+1))`
-/

namespace A356107.P6911548108471049062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A356105 (n + 1)).toNat

end

end A356107.P6911548108471049062

namespace A356107

/-- `A002251(A356105(n+1))` -/
def P6911548108471049062.Spec : Prop :=
  ∀ n, P6911548108471049062.a n = A356107 (n + 1)

end A356107

/-! ## A356107.P15080964568453251569

`A188222(2*comp[floor(n*sqrt(5))])`
-/

namespace A356107.P15080964568453251569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356107.P15080964568453251569

namespace A356107

/-- `A188222(2*comp[floor(n*sqrt(5))])` -/
def P15080964568453251569.Spec : Prop :=
  ∀ n, P15080964568453251569.a n = A356107 (n + 1)

end A356107

/-! ## A356107.P5201458271739001927

`A187485(2*A108598(n+1))`
-/

namespace A356107.P5201458271739001927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (2 * A108598 (n + 1)).toNat

end

end A356107.P5201458271739001927

namespace A356107

/-- `A187485(2*A108598(n+1))` -/
def P5201458271739001927.Spec : Prop :=
  ∀ n, P5201458271739001927.a n = A356107 (n + 1)

end A356107

/-! ## A356107.P5909046079532939721

`A187485(and(-2, A003231(n+1)))`
-/

namespace A356107.P5909046079532939721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (Int.land (-2) (A003231 (n + 1))).toNat

end

end A356107.P5909046079532939721

namespace A356107

/-- `A187485(and(-2, A003231(n+1)))` -/
def P5909046079532939721.Spec : Prop :=
  ∀ n, P5909046079532939721.a n = A356107 (n + 1)

end A356107

/-!
# A356108: Numbers == 2 (mod 6) that cannot be written as p^2 + q where p and q are primes.

The programs for A356108, there is no canonical definition to state claims against.
-/

/-! ## A356108.P2324339695476777199

`filter[A306394(n+1), A097325(#)]`
-/

namespace A356108.P2324339695476777199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A356108.P2324339695476777199

/-! ## A356108.P17010730778189031297

`filter[A306394(n+1), A120325(#)]`
-/

namespace A356108.P17010730778189031297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A356108.P17010730778189031297

/-! ## A356108.P4288690367837883714

`filter[A306394(n+2), A356173(#)]`
-/

namespace A356108.P4288690367837883714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306394 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A356108.P4288690367837883714

/-! ## A356108.P6150229550578670326

`filter[A306394(n+2), A360128(#)]`
-/

namespace A356108.P6150229550578670326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306394 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A356108.P6150229550578670326

/-!
# A356111: The number of 1+1+1-free ordered posets of [n].

The programs for A356111, there is no canonical definition to state claims against.
-/

/-! ## A356111.P5060360666953637012

`A028310(A088929(n))`
-/

namespace A356111.P5060360666953637012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A088929 n).toNat

end

end A356111.P5060360666953637012

/-! ## A356111.P12729173179298460500

`A088929(A004880(n+1))`
-/

namespace A356111.P12729173179298460500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088929 (A004880 (n + 1)).toNat

end

end A356111.P12729173179298460500

/-! ## A356111.P15949737799901361476

`A004525(2*A088929(n))`
-/

namespace A356111.P15949737799901361476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A088929 n).toNat

end

end A356111.P15949737799901361476

/-! ## A356111.P11675244523787992119

`A030451(2*A088929(n))`
-/

namespace A356111.P11675244523787992119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (2 * A088929 n).toNat

end

end A356111.P11675244523787992119

/-!
# A356113: Triangle read by rows. T(n, k) = A355776(n, k) + A355777(n, k). Refining A174159, the Euler minus Narayana/Catalan triangle.

The programs for A356113, there is no canonical definition to state claims against.
-/

/-! ## A356113.P13264598407488262965

`A355777(n)+A355776(n)`
-/

namespace A356113.P13264598407488262965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355777 n + A355776 n

end

end A356113.P13264598407488262965

/-! ## A356113.P14741159235539078762

`A134264(n+1)+2*A355776(n)`
-/

namespace A356113.P14741159235539078762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134264 (n + 1) + 2 * A355776 n

end

end A356113.P14741159235539078762

/-! ## A356113.P5401611468120209130

`2*A355777(n)-A134264(n+1)`
-/

namespace A356113.P5401611468120209130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A355777 n - A134264 (n + 1)

end

end A356113.P5401611468120209130

/-! ## A356113.P12153326289436851099

`A134264(n+1)+A005843(A355776(n))`
-/

namespace A356113.P12153326289436851099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134264 (n + 1) + A005843 (A355776 n).toNat

end

end A356113.P12153326289436851099

/-! ## A356113.P13147968235036849908

`A005843(A355777(n))-A134264(n+1)`
-/

namespace A356113.P13147968235036849908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A355777 n).toNat - A134264 (n + 1)

end

end A356113.P13147968235036849908

/-!
# A356114: Number of irreducible permutations of n with partition type [2, 1, 1, ..., 1] (with '1' taken n - 2 times).

The programs for A356114, the canonical program `A356114.P5942441668982816521` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356114 has offset 0).

The definition of A356114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356114.P5942441668982816521

`2*a(n-1)+1+n` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356114

/-- `2*a(n-1)+1+n` -/
def P5942441668982816521.Spec : Prop :=
  ∀ n, (P5942441668982816521.a n : ℤ) = A356114 n

theorem P5942441668982816521.correct : P5942441668982816521.Spec := by
  intro n
  simp only [A356114]

end A356114

/-! ## A356114.P8290857323433954202

`a(n-1)+1+a(n-1)+n` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A356114.P8290857323433954202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + n)

end

end A356114.P8290857323433954202

namespace A356114

/-- `a(n-1)+1+a(n-1)+n` -/
def P8290857323433954202.Spec : Prop :=
  ∀ n, (P8290857323433954202.a n : ℤ) = A356114 n

theorem P8290857323433954202.correct : P8290857323433954202.Spec := by
  intro n
  simp only [A356114, Nat.add_sub_cancel, A356114.P8290857323433954202.a, A356114.P5942441668982816521.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A356114

/-! ## A356114.P17718988966637915895

`A130103(n)-A046698(n)`
-/

namespace A356114.P17718988966637915895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130103 n - A046698 n

end

end A356114.P17718988966637915895

namespace A356114

/-- `A130103(n)-A046698(n)` -/
def P17718988966637915895.Spec : Prop :=
  ∀ n, P17718988966637915895.a n = A356114 n

end A356114

/-! ## A356114.P18019270841701471053

`A296965(n)-A326178(n)`
-/

namespace A356114.P18019270841701471053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296965 n - A326178 n

end

end A356114.P18019270841701471053

namespace A356114

/-- `A296965(n)-A326178(n)` -/
def P18019270841701471053.Spec : Prop :=
  ∀ n, P18019270841701471053.a n = A356114 n

end A356114

/-! ## A356114.P10378246750484432903

`(A036563(n)-n)%A036563(n)`
-/

namespace A356114.P10378246750484432903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036563 n - (n : ℤ)) (A036563 n)

end

end A356114.P10378246750484432903

namespace A356114

/-- `(A036563(n)-n)%A036563(n)` -/
def P10378246750484432903.Spec : Prop :=
  ∀ n, P10378246750484432903.a n = A356114 n

end A356114

/-! ## A356114.P17116699048212855909

`A186752(n+1)+A014846(n+1)`
-/

namespace A356114.P17116699048212855909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186752 (n + 1) + A014846 (n + 1)

end

end A356114.P17116699048212855909

namespace A356114

/-- `A186752(n+1)+A014846(n+1)` -/
def P17116699048212855909.Spec : Prop :=
  ∀ n, P17116699048212855909.a n = A356114 n

end A356114

/-! ## A356114.P13060770899099776375

`A143096(n+1)-A257542(n+1)`
-/

namespace A356114.P13060770899099776375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143096 (n + 1) - A257542 (n + 1)

end

end A356114.P13060770899099776375

namespace A356114

/-- `A143096(n+1)-A257542(n+1)` -/
def P13060770899099776375.Spec : Prop :=
  ∀ n, P13060770899099776375.a n = A356114 n

end A356114

/-! ## A356114.P12212274895289176041

`A342352(n+1)+A342352(n)-A324172(n+1)`
-/

namespace A356114.P12212274895289176041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342352 (n + 1) + (A342352 n - A324172 (n + 1))

end

end A356114.P12212274895289176041

namespace A356114

/-- `A342352(n+1)+A342352(n)-A324172(n+1)` -/
def P12212274895289176041.Spec : Prop :=
  ∀ n, P12212274895289176041.a n = A356114 n

end A356114

/-! ## A356114.P15772785837970397757

`A058968(n+3)%A267880(n)`
-/

namespace A356114.P15772785837970397757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058968 (n + 3)) (A267880 n)

end

end A356114.P15772785837970397757

namespace A356114

/-- `A058968(n+3)%A267880(n)` -/
def P15772785837970397757.Spec : Prop :=
  ∀ n, P15772785837970397757.a n = A356114 n

end A356114

/-! ## A356114.P5308156681028689822

`A289652(n)-A004303(n+1)`
-/

namespace A356114.P5308156681028689822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289652 n - A004303 (n + 1)

end

end A356114.P5308156681028689822

namespace A356114

/-- `A289652(n)-A004303(n+1)` -/
def P5308156681028689822.Spec : Prop :=
  ∀ n, P5308156681028689822.a n = A356114 n

end A356114

/-! ## A356114.P15020395797171110669

`round(sqrt((n+2-2^n)²+1))-1`
-/

namespace A356114.P15020395797171110669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((n + 2 : ℤ) - (2 ^ n : ℤ)) ^ 2 + 1 : ℝ)) - 1

end

end A356114.P15020395797171110669

namespace A356114

/-- `round(sqrt((n+2-2^n)²+1))-1` -/
def P15020395797171110669.Spec : Prop :=
  ∀ n, P15020395797171110669.a n = A356114 n

end A356114

/-!
# A356115: Triangle read by rows. The reduced triangle of the partition triangle of reducible permutations with weakly decreasing Lehmer code (A356266). T(n, k) for n >= 1 and 0 <= k < n.

The programs for A356115, there is no canonical definition to state claims against.
-/

/-! ## A356115.P2005019831165199651

`A332502(A344499(n))`
-/

namespace A356115.P2005019831165199651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332502 (A344499 n).toNat

end

end A356115.P2005019831165199651

/-! ## A356115.P14516864053579245030

`dr(A238741(A238750(n)²))`
-/

namespace A356115.P14516864053579245030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A238741 (A238750 n ^ 2).toNat)

end

end A356115.P14516864053579245030

/-! ## A356115.P13153827764923252972

`∑{d}[A090238(n), A267181(#)]`
-/

namespace A356115.P13153827764923252972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A267181 d

end

end A356115.P13153827764923252972

/-! ## A356115.P12022789456425350467

`A001222(∏{d}[A085771(n)+1, #])`
-/

namespace A356115.P12022789456425350467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A356115.P12022789456425350467

/-! ## A356115.P6469930562497449184

`A085771(n)-A356264(A085771(n))`
-/

namespace A356115.P6469930562497449184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 n - A356264 (A085771 n).toNat

end

end A356115.P6469930562497449184

/-!
# A356116: Triangle read by row. The reduced triangle of the partition_triangle A355776.

The programs for A356116, there is no canonical definition to state claims against.
-/

/-! ## A356116.P8034042458128158131

`A176487(n)-A132789(n+1)`
-/

namespace A356116.P8034042458128158131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176487 n - A132789 (n + 1)

end

end A356116.P8034042458128158131

/-! ## A356116.P2687628057622572940

`A008292(n+1)-A001263(n+1)`
-/

namespace A356116.P2687628057622572940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) - A001263 (n + 1)

end

end A356116.P2687628057622572940

/-! ## A356116.P14796936645679748381

`A174159(n+1)-A008292(n+1)`
-/

namespace A356116.P14796936645679748381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174159 (n + 1) - A008292 (n + 1)

end

end A356116.P14796936645679748381

/-! ## A356116.P6697603072802927362

`(A176200(n)-A132787(n+1))/2`
-/

namespace A356116.P6697603072802927362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176200 n - A132787 (n + 1) : ℚ) / 2

end

end A356116.P6697603072802927362

/-! ## A356116.P1257732910963248546

`A008292(n+1)-A090181(comp[∑[n]])`
-/

namespace A356116.P1257732910963248546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) - A090181 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A356116.P1257732910963248546

/-! ## A356116.P14314221214344132913

`A123125(comp[∑[n]])-A001263(n+1)`
-/

namespace A356116.P14314221214344132913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A001263 (n + 1)

end

end A356116.P14314221214344132913

/-! ## A356116.P8361793228771553517

`A008292(n+1)-sqrt(A174158(n+1))`
-/

namespace A356116.P8361793228771553517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℝ) - Real.sqrt (A174158 (n + 1) : ℝ)

end

end A356116.P8361793228771553517

/-! ## A356116.P12569745296098762080

`ceil(A176200(n)/2)-A001263(n+1)`
-/

namespace A356116.P12569745296098762080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176200 n : ℚ) / 2⌉ - A001263 (n + 1)

end

end A356116.P12569745296098762080

/-! ## A356116.P10114193316037169897

`A173018(comp[∑[n-1]])-A001263(n+1)`
-/

namespace A356116.P10114193316037169897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - A001263 (n + 1)

end

end A356116.P10114193316037169897

/-! ## A356116.P7546003806759089177

`2*A141689(n+1)-1-A132789(n+1)`
-/

namespace A356116.P7546003806759089177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141689 (n + 1) - 1 - A132789 (n + 1)

end

end A356116.P7546003806759089177

/-!
# A356118: Row sums of A174159.

The programs for A356118, there is no canonical definition to state claims against.
-/

/-! ## A356118.P14364675471139724445

`2*n!-A000108(n)`
-/

namespace A356118.P14364675471139724445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial n : ℤ) - A000108 n

end

end A356118.P14364675471139724445

/-! ## A356118.P10938249461886131420

`2*n!-abs(A168491(n))`
-/

namespace A356118.P10938249461886131420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial n : ℤ) - |A168491 n|

end

end A356118.P10938249461886131420

/-! ## A356118.P11881584193544963804

`2*n!-Δ[A155587(n)]`
-/

namespace A356118.P11881584193544963804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial n : ℤ) - (f1 (n + 1) - f1 n)

end

end A356118.P11881584193544963804

/-! ## A356118.P612121976147121283

`2*n!-(A120304(n)+2)`
-/

namespace A356118.P612121976147121283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial n : ℤ) - (A120304 n + 2)

end

end A356118.P612121976147121283

/-! ## A356118.P11377919586792537544

`2*n!-A028303(2*n)`
-/

namespace A356118.P11377919586792537544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial n : ℤ) - A028303 (2 * n)

end

end A356118.P11377919586792537544

/-! ## A356118.P4744626712483819228

`A000142(n)+A000142(n)-A000108(n)`
-/

namespace A356118.P4744626712483819228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A000142 n - A000108 n)

end

end A356118.P4744626712483819228

/-!
# A356120: Irregular triangle read by rows: the n-th row lists the values 0..2^n-1 representing all subsets of a set of n elements. When its elements are linearly ordered, the subsets are lexicographically ordered.

The programs for A356120, there is no canonical definition to state claims against.
-/

/-! ## A356120.P7666918187479276351

`A341915(A035327(n)%A000765(n))`
-/

namespace A356120.P7666918187479276351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (Int.tmod (A035327 n) (A000765 n)).toNat

end

end A356120.P7666918187479276351

/-! ## A356120.P14350238793538888325

`A038554(n)-A014017(A123176(2*(n+2)))`
-/

namespace A356120.P14350238793538888325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 n - A014017 (A123176 (2 * (n + 2))).toNat

end

end A356120.P14350238793538888325

/-! ## A356120.P13226915666258905318

`A057164(A038554(n))%A236021(3*n+1)`
-/

namespace A356120.P13226915666258905318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057164 (A038554 n).toNat) (A236021 (3 * n + 1))

end

end A356120.P13226915666258905318

/-! ## A356120.P9482278552140572948

`A033999(A033484(n))*A333776(A038554(n))`
-/

namespace A356120.P9482278552140572948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A033484 n).toNat * A333776 (A038554 n).toNat

end

end A356120.P9482278552140572948

/-!
# A356121: Matula-Goebel number of the rooted binary tree with Colijn-Plazzotta number n.

The programs for A356121, there is no canonical definition to state claims against.
-/

/-! ## A356121.P10834508819489402553

`record[A127302(A082857(n))]`
-/

namespace A356121.P10834508819489402553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127302 (A082857 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356121.P10834508819489402553

/-! ## A356121.P5472242510950762343

`∩[A029953(n+1), A298126(n+1)]`
-/

namespace A356121.P5472242510950762343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356121.P5472242510950762343

/-! ## A356121.P660691877698164720

`A127302(A003242(n)*A084558(n))`
-/

namespace A356121.P660691877698164720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127302 (A003242 n * A084558 n).toNat

end

end A356121.P660691877698164720

/-!
# A356122: Number of Lucas divisors of the n-th Lucas number.

The programs for A356122, the canonical program `A356122.P4438334120915066052` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356122 has offset 0).

The definition of A356122 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304092, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356122.P4438334120915066052

`A304092(A000032(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A356122

/-- `A304092(A000032(n))` -/
def P4438334120915066052.Spec : Prop :=
  ∀ n, P4438334120915066052.a n = A356122 n

theorem P4438334120915066052.correct : P4438334120915066052.Spec := by
  intro n
  simp only [A356122]

end A356122

/-! ## A356122.P3094462601897767512

`A304092(Δ[round(ϕ^((n+1)%(n+1)²))])`
-/

namespace A356122.P3094462601897767512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n + 1) % (n + 1) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (f1 (n + 1) - f1 n).toNat

end

end A356122.P3094462601897767512

namespace A356122

/-- `A304092(Δ[round(ϕ^((n+1)%(n+1)²))])` -/
def P3094462601897767512.Spec : Prop :=
  ∀ n, P3094462601897767512.a n = A356122 n

end A356122

/-! ## A356122.P6079809664308406203

`∑{d}[2*a(n-1)-a(n-3), A102460(#)]` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A356122.P6079809664308406203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A102460 d

end

end A356122.P6079809664308406203

namespace A356122

/-- `∑{d}[2*a(n-1)-a(n-3), A102460(#)]` -/
def P6079809664308406203.Spec : Prop :=
  ∀ n, P6079809664308406203.a n = A356122 n

end A356122

/-! ## A356122.P12082153977315508364

`A304092(n-∑[a(n-1)-(1-a(n-2))])` with `a(0)=-2, a(1)=2`
-/

namespace A356122.P12082153977315508364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356122.P12082153977315508364

namespace A356122

/-- `A304092(n-∑[a(n-1)-(1-a(n-2))])` -/
def P12082153977315508364.Spec : Prop :=
  ∀ n, P12082153977315508364.a n = A356122 n

end A356122

/-! ## A356122.P5470402592343724393

`A304092(sqrt(A001254(n)))`
-/

namespace A356122.P5470402592343724393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (SequenceMachineLib.roundAway (Real.sqrt (A001254 n : ℝ))).toNat

end

end A356122.P5470402592343724393

namespace A356122

/-- `A304092(sqrt(A001254(n)))` -/
def P5470402592343724393.Spec : Prop :=
  ∀ n, P5470402592343724393.a n = A356122 n

end A356122

/-!
# A356123: Least Lucas number with n Lucas divisors.

The programs for A356123, there is no canonical definition to state claims against.
-/

/-! ## A356123.P8421526535973073787

`A000032(A356666(n+1))`
-/

namespace A356123.P8421526535973073787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A356666 (n + 1)).toNat

end

end A356123.P8421526535973073787

/-! ## A356123.P7778343365730457156

`A329723(A356666(n+1)+2)`
-/

namespace A356123.P7778343365730457156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (A356666 (n + 1) + 2).toNat

end

end A356123.P7778343365730457156

/-! ## A356123.P4409880937503190423

`A127218(2*A356666(n+1))`
-/

namespace A356123.P4409880937503190423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * A356666 (n + 1)).toNat

end

end A356123.P4409880937503190423

/-! ## A356123.P18359130264963258584

`A303427(2*A356666(n+1))`
-/

namespace A356123.P18359130264963258584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * A356666 (n + 1)).toNat

end

end A356123.P18359130264963258584

/-! ## A356123.P16157987029740260368

`A014217(A356666(n+1))+A000035(n)`
-/

namespace A356123.P16157987029740260368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (A356666 (n + 1)).toNat + A000035 n

end

end A356123.P16157987029740260368

/-!
# A356124: Square array T(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=1..n} j^k * binomial(floor(n/j)+1,2).

The programs for A356124, there is no canonical definition to state claims against.
-/

/-! ## A356124.P3200794177020999175

`A356045(n+1)+A305079(A156888(n))`
-/

namespace A356124.P3200794177020999175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356045 (n + 1) + A305079 (A156888 n).toNat

end

end A356124.P3200794177020999175

/-!
# A356125: a(n) = Sum_{k=1..n} k * sigma_2(k).

The programs for A356125, the canonical program `A356125.P464327500295868740` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356125 has offset 1).

The definition of A356125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356125.P464327500295868740

`∑[∑{d}[n+1, (n+1)*#²]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356125

/-- `∑[∑{d}[n+1, (n+1)*#²]]` -/
def P464327500295868740.Spec : Prop :=
  ∀ n, (P464327500295868740.a n : ℤ) = A356125 (n + 1)

theorem P464327500295868740.correct : P464327500295868740.Spec := by
  intro n
  simp only [A356125, Nat.add_sub_cancel]

end A356125

/-! ## A356125.P328188584847665385

`∑[A328259(n+1)]`
-/

namespace A356125.P328188584847665385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356125.P328188584847665385

namespace A356125

/-- `∑[A328259(n+1)]` -/
def P328188584847665385.Spec : Prop :=
  ∀ n, P328188584847665385.a n = A356125 (n + 1)

end A356125

/-! ## A356125.P8076431138784872516

`∑[(n+1)*A001157(n+1)]`
-/

namespace A356125.P8076431138784872516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356125.P8076431138784872516

namespace A356125

/-- `∑[(n+1)*A001157(n+1)]` -/
def P8076431138784872516.Spec : Prop :=
  ∀ n, P8076431138784872516.a n = A356125 (n + 1)

end A356125

/-! ## A356125.P1640980399667937314

`∑[A386745(n+1)/(n+1)]`
-/

namespace A356125.P1640980399667937314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386745 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356125.P1640980399667937314

namespace A356125

/-- `∑[A386745(n+1)/(n+1)]` -/
def P1640980399667937314.Spec : Prop :=
  ∀ n, P1640980399667937314.a n = (A356125 (n + 1) : ℚ)

end A356125

/-! ## A356125.P2625721821007933380

`∑[(n+1)*(A067558(n+1)+(n+1)²)]`
-/

namespace A356125.P2625721821007933380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A067558 (n + 1) + ((n + 1) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356125.P2625721821007933380

namespace A356125

/-- `∑[(n+1)*(A067558(n+1)+(n+1)²)]` -/
def P2625721821007933380.Spec : Prop :=
  ∀ n, P2625721821007933380.a n = A356125 (n + 1)

end A356125

/-! ## A356125.P9595155415688270178

`∑[(n+1)*(A000203(n+1)²-A066293(n+1))]`
-/

namespace A356125.P9595155415688270178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000203 (n + 1) ^ 2 - A066293 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356125.P9595155415688270178

namespace A356125

/-- `∑[(n+1)*(A000203(n+1)²-A066293(n+1))]` -/
def P9595155415688270178.Spec : Prop :=
  ∀ n, P9595155415688270178.a n = A356125 (n + 1)

end A356125

/-! ## A356125.P7682582344548031137

`∑[(n+1)*(2*A007437(n+1)-A000203(n+1))]`
-/

namespace A356125.P7682582344548031137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 * A007437 (n + 1) - A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356125.P7682582344548031137

namespace A356125

/-- `∑[(n+1)*(2*A007437(n+1)-A000203(n+1))]` -/
def P7682582344548031137.Spec : Prop :=
  ∀ n, P7682582344548031137.a n = A356125 (n + 1)

end A356125

/-! ## A356125.P4954406279550384964

`∑[A386746(n+1)/(n+1)²]`
-/

namespace A356125.P4954406279550384964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386746 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356125.P4954406279550384964

namespace A356125

/-- `∑[A386746(n+1)/(n+1)²]` -/
def P4954406279550384964.Spec : Prop :=
  ∀ n, P4954406279550384964.a n = (A356125 (n + 1) : ℚ)

end A356125

/-! ## A356125.P5524437208437043358

`∑[(n+1)*A035316((n+1)²)]`
-/

namespace A356125.P5524437208437043358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035316 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356125.P5524437208437043358

namespace A356125

/-- `∑[(n+1)*A035316((n+1)²)]` -/
def P5524437208437043358.Spec : Prop :=
  ∀ n, P5524437208437043358.a n = A356125 (n + 1)

end A356125

/-! ## A356125.P6689631617380211628

`∑[(n+1)*A076752((n+1)²)]`
-/

namespace A356125.P6689631617380211628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076752 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356125.P6689631617380211628

namespace A356125

/-- `∑[(n+1)*A076752((n+1)²)]` -/
def P6689631617380211628.Spec : Prop :=
  ∀ n, P6689631617380211628.a n = A356125 (n + 1)

end A356125

/-! ## A356125.P2684880885590931925

`∑[(n+1)*A365172((n+1)²)]`
-/

namespace A356125.P2684880885590931925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A365172 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356125.P2684880885590931925

namespace A356125

/-- `∑[(n+1)*A365172((n+1)²)]` -/
def P2684880885590931925.Spec : Prop :=
  ∀ n, P2684880885590931925.a n = A356125 (n + 1)

end A356125

/-! ## A356125.P17361029684754698116

`∑[(n+1)*A367989((n+1)²)]`
-/

namespace A356125.P17361029684754698116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A367989 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356125.P17361029684754698116

namespace A356125

/-- `∑[(n+1)*A367989((n+1)²)]` -/
def P17361029684754698116.Spec : Prop :=
  ∀ n, P17361029684754698116.a n = A356125 (n + 1)

end A356125

/-! ## A356125.P4382951260250562306

`∑[A351600((n+1)²)/(n+1)]`
-/

namespace A356125.P4382951260250562306
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351600 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356125.P4382951260250562306

namespace A356125

/-- `∑[A351600((n+1)²)/(n+1)]` -/
def P4382951260250562306.Spec : Prop :=
  ∀ n, P4382951260250562306.a n = (A356125 (n + 1) : ℚ)

end A356125

/-!
# A356126: a(n) = Sum_{k=1..n} k * sigma_3(k).

The programs for A356126, the canonical program `A356126.P6179440808181595431` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356126 has offset 1).

The definition of A356126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356126.P6179440808181595431

`∑[∑{d}[n+1, (n+1)*#^3]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356126

/-- `∑[∑{d}[n+1, (n+1)*#^3]]` -/
def P6179440808181595431.Spec : Prop :=
  ∀ n, (P6179440808181595431.a n : ℤ) = A356126 (n + 1)

theorem P6179440808181595431.correct : P6179440808181595431.Spec := by
  intro n
  simp only [A356126, Nat.add_sub_cancel]

end A356126

/-! ## A356126.P8244244396421315615

`∑[(n+1)*A001158(n+1)]`
-/

namespace A356126.P8244244396421315615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356126.P8244244396421315615

namespace A356126

/-- `∑[(n+1)*A001158(n+1)]` -/
def P8244244396421315615.Spec : Prop :=
  ∀ n, P8244244396421315615.a n = A356126 (n + 1)

end A356126

/-! ## A356126.P9005589981264599727

`∑[A281372(n+1)]`
-/

namespace A356126.P9005589981264599727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356126.P9005589981264599727

namespace A356126

/-- `∑[A281372(n+1)]` -/
def P9005589981264599727.Spec : Prop :=
  ∀ n, P9005589981264599727.a n = A356126 (n + 1)

theorem P9005589981264599727.correct : P9005589981264599727.Spec := by
  intro n
  simp only [A356126, Nat.add_sub_cancel, A356126.P9005589981264599727.f1, A356126.P9005589981264599727.a, A356126.P6179440808181595431.f2, A356126.P6179440808181595431.f1, A356126.P6179440808181595431.a, A281372, A281372.P10157463848326326059.f1, A281372.P10157463848326326059.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356126

/-! ## A356126.P12535168498918404258

`∑[A282099(n+1)/(n+1)]`
-/

namespace A356126.P12535168498918404258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282099 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356126.P12535168498918404258

namespace A356126

/-- `∑[A282099(n+1)/(n+1)]` -/
def P12535168498918404258.Spec : Prop :=
  ∀ n, P12535168498918404258.a n = (A356126 (n + 1) : ℚ)

end A356126

/-! ## A356126.P15681678938929471460

`∑[A282213(n+1)/(n+1)²]`
-/

namespace A356126.P15681678938929471460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282213 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356126.P15681678938929471460

namespace A356126

/-- `∑[A282213(n+1)/(n+1)²]` -/
def P15681678938929471460.Spec : Prop :=
  ∀ n, P15681678938929471460.a n = (A356126 (n + 1) : ℚ)

end A356126

/-! ## A356126.P13113385529803179530

`∑[(n+1)*(A092345(n+1)-A000203(n+1))]`
-/

namespace A356126.P13113385529803179530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A092345 (n + 1) - A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356126.P13113385529803179530

namespace A356126

/-- `∑[(n+1)*(A092345(n+1)-A000203(n+1))]` -/
def P13113385529803179530.Spec : Prop :=
  ∀ n, P13113385529803179530.a n = A356126 (n + 1)

end A356126

/-! ## A356126.P13183088160866351768

`∑[(n+1)*A361794((n+1)²)]`
-/

namespace A356126.P13183088160866351768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A361794 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356126.P13183088160866351768

namespace A356126

/-- `∑[(n+1)*A361794((n+1)²)]` -/
def P13183088160866351768.Spec : Prop :=
  ∀ n, P13183088160866351768.a n = A356126 (n + 1)

end A356126

/-!
# A356127: a(n) = Sum_{k=1..n} k^k * binomial(floor(n/k)+1,2).

The programs for A356127, there is no canonical definition to state claims against.
-/

/-! ## A356127.P18373985152563116650

`∑[∑{d}[n+1, #^(#-1)]*(n+1)]`
-/

namespace A356127.P18373985152563116650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), (d : ℚ) ^ ((d : ℤ) - 1 : ℤ)) * (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356127.P18373985152563116650

/-! ## A356127.P3673365371340805802

`∑[floor(∑{d}[n+1, #^#/#])*(n+1)]`
-/

namespace A356127.P3673365371340805802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f2 n), (d ^ d : ℚ) / (d : ℚ)⌋ * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356127.P3673365371340805802

/-! ## A356127.P7184048896975915570

`∑[∑{d}[n+1, A342423(#)]]`
-/

namespace A356127.P7184048896975915570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A342423 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356127.P7184048896975915570

/-! ## A356127.P8776789490350253075

`∑[(n+1)*A262843(n+1)]`
-/

namespace A356127.P8776789490350253075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A262843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356127.P8776789490350253075

/-!
# A356128: a(n) = Sum_{k=1..n} k * sigma_n(k).

The programs for A356128, there is no canonical definition to state claims against.
-/

/-! ## A356128.P14594343914293546534

`A356124(∑[4*(n+1)])`
-/

namespace A356128.P14594343914293546534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356124 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356128.P14594343914293546534

/-!
# A356129: a(n) = Sum_{k=1..n} k * sigma_{n-1}(k).

The programs for A356129, there is no canonical definition to state claims against.
-/

/-! ## A356129.P5199910426594839367

`A356131(n+1)+A350109(n+1)`
-/

namespace A356129.P5199910426594839367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356131 (n + 1) + A350109 (n + 1)

end

end A356129.P5199910426594839367

/-! ## A356129.P2303656676862474296

`A356124(2*(n+1)²)`
-/

namespace A356129.P2303656676862474296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356124 (2 * (n + 1) ^ 2)

end

end A356129.P2303656676862474296

/-! ## A356129.P8494864497816895312

`A356131(n+1)+A350106((n+1)²+n²)`
-/

namespace A356129.P8494864497816895312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356131 (n + 1) + A350106 ((n + 1) ^ 2 + n ^ 2)

end

end A356129.P8494864497816895312

/-! ## A356129.P13925155203850351528

`A356131(n+1)+A350106(A001844(n))+A025444(n)`
-/

namespace A356129.P13925155203850351528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356131 (n + 1) + (A350106 (A001844 n).toNat + A025444 n)

end

end A356129.P13925155203850351528

/-! ## A356129.P2613817142074861228

`A356131(n+1)+A350106(A001844(n))^A178334(n)`
-/

namespace A356129.P2613817142074861228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356131 (n + 1) : ℚ) + (A350106 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A356129.P2613817142074861228

/-!
# A356130: a(n) = Sum_{k=1..n} sigma_{n-1}(k).

The programs for A356130, there is no canonical definition to state claims against.
-/

/-! ## A356130.P6093473143169820432

`A319649(∑[4*n]+1)`
-/

namespace A356130.P6093473143169820432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319649 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A356130.P6093473143169820432

/-! ## A356130.P17100665925983189677

`gcd(floor(1/(n+1)), A319649(n²+(n+1)²))`
-/

namespace A356130.P17100665925983189677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A319649 (n ^ 2 + (n + 1) ^ 2))

end

end A356130.P17100665925983189677

/-! ## A356130.P4009902256519435836

`record[A003982(n)*A319649(n+1)]`
-/

namespace A356130.P4009902256519435836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A319649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356130.P4009902256519435836

/-!
# A356131: a(n) = Sum_{k=1..n} (k - 1)^n * binomial(floor(n/k)+1,2).

The programs for A356131, there is no canonical definition to state claims against.
-/

/-! ## A356131.P11999668709833024907

`A356129(n+1)-A350109(n+1)`
-/

namespace A356131.P11999668709833024907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356129 (n + 1) - A350109 (n + 1)

end

end A356131.P11999668709833024907

/-! ## A356131.P11921557290286664673

`A356129(n+1)-A350106((n+1)²+n²)`
-/

namespace A356131.P11921557290286664673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356129 (n + 1) - A350106 ((n + 1) ^ 2 + n ^ 2)

end

end A356131.P11921557290286664673

/-! ## A356131.P10316653101751379059

`A356129(n+1)%A350106(A001844(n))`
-/

namespace A356131.P10316653101751379059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356129 (n + 1)) (A350106 (A001844 n).toNat)

end

end A356131.P10316653101751379059

/-! ## A356131.P15712584653562277966

`A356129(n+1)-(A350106(A001844(n))+A025444(n))`
-/

namespace A356131.P15712584653562277966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356129 (n + 1) - (A350106 (A001844 n).toNat + A025444 n)

end

end A356131.P15712584653562277966

/-! ## A356131.P13030286337774946514

`A356129(n+1)-A350106(A001844(n))^A178334(n)`
-/

namespace A356131.P13030286337774946514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356129 (n + 1) : ℚ) - (A350106 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A356131.P13030286337774946514

/-!
# A356132: Least integer with n pentagonal divisors.

The programs for A356132, there is no canonical definition to state claims against.
-/

/-! ## A356132.P6708414020849740845

`A356179(C(A044826(n+1), n))`
-/

namespace A356132.P6708414020849740845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356179 (Nat.choose (A044826 (n + 1)).toNat n)

end

end A356132.P6708414020849740845

/-! ## A356132.P18029535839087297755

`A003963(2^n)*A356179(n+1)`
-/

namespace A356132.P18029535839087297755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 ^ n) * A356179 (n + 1)

end

end A356132.P18029535839087297755

/-! ## A356132.P15955352739293911775

`A040577(2^n)*A356179(n+1)`
-/

namespace A356132.P15955352739293911775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040577 (2 ^ n) * A356179 (n + 1)

end

end A356132.P15955352739293911775

/-! ## A356132.P9447296254063291237

`A113446(2^n)*A356179(n+1)`
-/

namespace A356132.P9447296254063291237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (2 ^ n) * A356179 (n + 1)

end

end A356132.P9447296254063291237

/-! ## A356132.P13217029645666471668

`A356179((n+1)*A271714(2^n))`
-/

namespace A356132.P13217029645666471668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356179 ((n + 1 : ℤ) * A271714 (2 ^ n)).toNat

end

end A356132.P13217029645666471668

/-!
# A356133: Complement of A026430.

The programs for A356133, the canonical program `A356133.P5129533171813419768` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356133 has offset 1).

The definition of A356133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356133.P5129533171813419768

`3*(n+1)-A001285(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A356133

/-- `3*(n+1)-A001285(n)` -/
def P5129533171813419768.Spec : Prop :=
  ∀ n, P5129533171813419768.a n = A356133 (n + 1)

theorem P5129533171813419768.correct : P5129533171813419768.Spec := by
  intro n
  simp only [A356133, Nat.add_sub_cancel]

end A356133

/-! ## A356133.P5072955103764744729

`3*(n+1)-1-A000120(n)%2`
-/

namespace A356133.P5072955103764744729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - 1 - Int.tmod (A000120 n) 2

end

end A356133.P5072955103764744729

namespace A356133

/-- `3*(n+1)-1-A000120(n)%2` -/
def P5072955103764744729.Spec : Prop :=
  ∀ n, P5072955103764744729.a n = A356133 (n + 1)

end A356133

/-! ## A356133.P11950180121219217512

`comp[xor(n, 2*n)]+1+n`
-/

namespace A356133.P11950180121219217512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 + n

end

end A356133.P11950180121219217512

namespace A356133

/-- `comp[xor(n, 2*n)]+1+n` -/
def P11950180121219217512.Spec : Prop :=
  ∀ n, (P11950180121219217512.a n : ℤ) = A356133 (n + 1)

end A356133

/-! ## A356133.P13497829488589933361

`comp[xor(n, 2*n)]-xor(n, -1)`
-/

namespace A356133.P13497829488589933361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - Int.xor (n : ℤ) (-1)

end

end A356133.P13497829488589933361

namespace A356133

/-- `comp[xor(n, 2*n)]-xor(n, -1)` -/
def P13497829488589933361.Spec : Prop :=
  ∀ n, P13497829488589933361.a n = A356133 (n + 1)

end A356133

/-! ## A356133.P7470566973076227399

`3*n+char[xor(n, 2*n)]+1`
-/

namespace A356133.P7470566973076227399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A356133.P7470566973076227399

namespace A356133

/-- `3*n+char[xor(n, 2*n)]+1` -/
def P7470566973076227399.Spec : Prop :=
  ∀ n, (P7470566973076227399.a n : ℤ) = A356133 (n + 1)

end A356133

/-! ## A356133.P5017957794062958865

`eq[0, 1-a(and(n, n-1))]+n+1` with `a(0)=1`
-/

namespace A356133.P5017957794062958865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 1)

end

end A356133.P5017957794062958865

namespace A356133

/-- `eq[0, 1-a(and(n, n-1))]+n+1` -/
def P5017957794062958865.Spec : Prop :=
  ∀ n, (P5017957794062958865.a n : ℤ) = A356133 (n + 1)

end A356133

/-! ## A356133.P8726749456980583442

`A285953(n+1)-1`
-/

namespace A356133.P8726749456980583442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (n + 1) - 1

end

end A356133.P8726749456980583442

namespace A356133

/-- `A285953(n+1)-1` -/
def P8726749456980583442.Spec : Prop :=
  ∀ n, P8726749456980583442.a n = A356133 (n + 1)

end A356133

/-! ## A356133.P3990686304621824033

`A181155(n+1)+n`
-/

namespace A356133.P3990686304621824033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1) + (n : ℤ)

end

end A356133.P3990686304621824033

namespace A356133

/-- `A181155(n+1)+n` -/
def P3990686304621824033.Spec : Prop :=
  ∀ n, P3990686304621824033.a n = A356133 (n + 1)

end A356133

/-! ## A356133.P2481730606341985137

`n+1+A000069(n+1)`
-/

namespace A356133.P2481730606341985137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000069 (n + 1)

end

end A356133.P2481730606341985137

namespace A356133

/-- `n+1+A000069(n+1)` -/
def P2481730606341985137.Spec : Prop :=
  ∀ n, P2481730606341985137.a n = A356133 (n + 1)

end A356133

/-! ## A356133.P15829782733816045550

`A354384(n)+a(n-1)` with `a(0)=2`
-/

namespace A356133.P15829782733816045550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A354384 n + a (n - 1)

end

end A356133.P15829782733816045550

namespace A356133

/-- `A354384(n)+a(n-1)` -/
def P15829782733816045550.Spec : Prop :=
  ∀ n, P15829782733816045550.a n = A356133 (n + 1)

end A356133

/-! ## A356133.P8693633005628391312

`A161560(n+1)+2*(n+1)`
-/

namespace A356133.P8693633005628391312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161560 (n + 1) + (2 * (n + 1) : ℤ)

end

end A356133.P8693633005628391312

namespace A356133

/-- `A161560(n+1)+2*(n+1)` -/
def P8693633005628391312.Spec : Prop :=
  ∀ n, P8693633005628391312.a n = A356133 (n + 1)

end A356133

/-! ## A356133.P11377995998347875098

`A128309(n+1)/2+n+1`
-/

namespace A356133.P11377995998347875098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128309 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A356133.P11377995998347875098

namespace A356133

/-- `A128309(n+1)/2+n+1` -/
def P11377995998347875098.Spec : Prop :=
  ∀ n, P11377995998347875098.a n = (A356133 (n + 1) : ℚ)

end A356133

/-! ## A356133.P9879137895797882275

`A016777(n)+A010059(n)`
-/

namespace A356133.P9879137895797882275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A010059 n

end

end A356133.P9879137895797882275

namespace A356133

/-- `A016777(n)+A010059(n)` -/
def P9879137895797882275.Spec : Prop :=
  ∀ n, P9879137895797882275.a n = A356133 (n + 1)

theorem P9879137895797882275.correct : P9879137895797882275.Spec := by
  intro n
  simp only [A356133, Nat.add_sub_cancel, A356133.P9879137895797882275.a, A356133.P5129533171813419768.a, A001285, A001285.P11616636227895161122.a, A010059, A010059.P6338678923093357896.a, A016777, A016777.P9931792138852554157.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356133

/-! ## A356133.P9715571395842715168

`A016789(n)-A010060(n)`
-/

namespace A356133.P9715571395842715168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A010060 n

end

end A356133.P9715571395842715168

namespace A356133

/-- `A016789(n)-A010060(n)` -/
def P9715571395842715168.Spec : Prop :=
  ∀ n, P9715571395842715168.a n = A356133 (n + 1)

theorem P9715571395842715168.correct : P9715571395842715168.Spec := by
  intro n
  simp only [A356133, Nat.add_sub_cancel, A356133.P9715571395842715168.a, A356133.P5129533171813419768.a, A001285, A001285.P11616636227895161122.a, A010060, A010060.P3080921269106500717.a, A016789, A016789.P8277564872725303677.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356133

/-! ## A356133.P1775229918722638549

`A016873(n)-A001969(n+1)`
-/

namespace A356133.P1775229918722638549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - A001969 (n + 1)

end

end A356133.P1775229918722638549

namespace A356133

/-- `A016873(n)-A001969(n+1)` -/
def P1775229918722638549.Spec : Prop :=
  ∀ n, P1775229918722638549.a n = A356133 (n + 1)

theorem P1775229918722638549.correct : P1775229918722638549.Spec := by
  intro n
  simp only [A356133, Nat.add_sub_cancel, A356133.P1775229918722638549.a, A356133.P5129533171813419768.a, A001285, A001285.P11616636227895161122.a, A001969, A001969.P9139304774861292784.a, A016873, A016873.P366335242068170250.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356133

/-! ## A356133.P218107782927313125

`A010059(n)+A016789(n)-1`
-/

namespace A356133.P218107782927313125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n + (A016789 n - 1)

end

end A356133.P218107782927313125

namespace A356133

/-- `A010059(n)+A016789(n)-1` -/
def P218107782927313125.Spec : Prop :=
  ∀ n, P218107782927313125.a n = A356133 (n + 1)

theorem P218107782927313125.correct : P218107782927313125.Spec := by
  intro n
  simp only [A356133, Nat.add_sub_cancel, A356133.P218107782927313125.a, A356133.P5129533171813419768.a, A001285, A001285.P11616636227895161122.a, A010059, A010059.P6338678923093357896.a, A016789, A016789.P8277564872725303677.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356133

/-! ## A356133.P8085197608116964515

`A016885(n)-A026147(n+1)`
-/

namespace A356133.P8085197608116964515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - A026147 (n + 1)

end

end A356133.P8085197608116964515

namespace A356133

/-- `A016885(n)-A026147(n+1)` -/
def P8085197608116964515.Spec : Prop :=
  ∀ n, P8085197608116964515.a n = A356133 (n + 1)

theorem P8085197608116964515.correct : P8085197608116964515.Spec := by
  intro n
  simp only [A356133, Nat.add_sub_cancel, A356133.P8085197608116964515.a, A356133.P5129533171813419768.a, A001285, A001285.P11616636227895161122.a, A016885, A016885.P12442016633976001399.a, A026147, A026147.P16575442085374687038.a, A001969, A001969.P9139304774861292784.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356133

/-! ## A356133.P4380487340817141467

`A016825(n)-A093505(n+1)`
-/

namespace A356133.P4380487340817141467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A093505 (n + 1)

end

end A356133.P4380487340817141467

namespace A356133

/-- `A016825(n)-A093505(n+1)` -/
def P4380487340817141467.Spec : Prop :=
  ∀ n, P4380487340817141467.a n = A356133 (n + 1)

end A356133

/-! ## A356133.P12552252318701188345

`A016897(n)-A140592(n+1)`
-/

namespace A356133.P12552252318701188345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A140592 (n + 1)

end

end A356133.P12552252318701188345

namespace A356133

/-- `A016897(n)-A140592(n+1)` -/
def P12552252318701188345.Spec : Prop :=
  ∀ n, P12552252318701188345.a n = A356133 (n + 1)

theorem P12552252318701188345.correct : P12552252318701188345.Spec := by
  intro n
  simp only [A356133, Nat.add_sub_cancel, A356133.P12552252318701188345.a, A356133.P5129533171813419768.a, A001285, A001285.P11616636227895161122.a, A016897, A016897.P9287350145607759688.a, A140592, A140592.P9802847602468291615.a, A001969, A001969.P9139304774861292784.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356133

/-!
# A356134: Triangular array giving total number of legal Go positions on an n X k board.

The programs for A356134, there is no canonical definition to state claims against.
-/

/-! ## A356134.P18283493874879928467

`A013606(A000602(n)*A055099(n))`
-/

namespace A356134.P18283493874879928467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013606 (A000602 n * A055099 n).toNat

end

end A356134.P18283493874879928467

/-!
# A356135: Semiprimes k such that k is congruent to 6 modulo k's index in the sequence of semiprimes.

The programs for A356135, there is no canonical definition to state claims against.
-/

/-! ## A356135.P7312018848478827331

`A001358(A106131(n+1))`
-/

namespace A356135.P7312018848478827331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A106131 (n + 1)).toNat

end

end A356135.P7312018848478827331

/-!
# A356137: Positive integers m such that the fractional part of the geometric mean of the sequence s(m) does not exceed the fractional part of the arithmetic mean of s(m), where s(m) is the sequence 1 + 1/1, 2 + 1/2, ..., m + 1/m.

The programs for A356137, there is no canonical definition to state claims against.
-/

/-! ## A356137.P8078631454794414507

`A120835(A233762(n+1))`
-/

namespace A356137.P8078631454794414507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (A233762 (n + 1)).toNat

end

end A356137.P8078631454794414507

/-! ## A356137.P8488380255836630914

`eq[A010815(n+3), A281084(A064194(n+1))]`
-/

namespace A356137.P8488380255836630914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281084 (A064194 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356137.P8488380255836630914

/-!
# A356138: a(n) = A137803(A001951(n)).

The programs for A356138, the canonical program `A356138.P8008051555666440382` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356138 has offset 1).

The definition of A356138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A137803(A001951(n+1))` (program `A356138.P8008051555666440382`, by `A356138.P8008051555666440382.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356138.P8008051555666440382

`A137803(A001951(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356138

/-- `A137803(A001951(n+1))` -/
def P8008051555666440382.Spec : Prop :=
  ∀ n, P8008051555666440382.a n = A356138 (n + 1)

theorem P8008051555666440382.correct : P8008051555666440382.Spec := by
  intro n
  simp only [A356138, Nat.add_sub_cancel]

end A356138

/-! ## A356138.P16638053360602867708

`A137803(floor((n+1)*sqrt(2)))`
-/

namespace A356138.P16638053360602867708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat

end

end A356138.P16638053360602867708

namespace A356138

/-- `A137803(floor((n+1)*sqrt(2)))` -/
def P16638053360602867708.Spec : Prop :=
  ∀ n, P16638053360602867708.a n = A356138 (n + 1)

end A356138

/-! ## A356138.P14181727968275898590

`record[A137803(n+1)%A026250(n+1)]`
-/

namespace A356138.P14181727968275898590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137803 (n + 1)) (A026250 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356138.P14181727968275898590

namespace A356138

/-- `record[A137803(n+1)%A026250(n+1)]` -/
def P14181727968275898590.Spec : Prop :=
  ∀ n, P14181727968275898590.a n = A356138 (n + 1)

end A356138

/-! ## A356138.P13868685848125636839

`∩[A137803(n+1), comp[A356140(n+1)]]`
-/

namespace A356138.P13868685848125636839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356140 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A356138.P13868685848125636839

namespace A356138

/-- `∩[A137803(n+1), comp[A356140(n+1)]]` -/
def P13868685848125636839.Spec : Prop :=
  ∀ n, (P13868685848125636839.a n : ℤ) = A356138 (n + 1)

end A356138

/-! ## A356138.P15981084566276681231

`record[floor((A001951(2*(n+1))+1+n)/2)%A026250(n+1)]`
-/

namespace A356138.P15981084566276681231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A001951 (2 * (n + 1)) + 1 + (n : ℤ) : ℚ) / 2⌋ (A026250 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356138.P15981084566276681231

namespace A356138

/-- `record[floor((A001951(2*(n+1))+1+n)/2)%A026250(n+1)]` -/
def P15981084566276681231.Spec : Prop :=
  ∀ n, P15981084566276681231.a n = A356138 (n + 1)

end A356138

/-! ## A356138.P17018318456510893926

`A137805(A356139(n+1))`
-/

namespace A356138.P17018318456510893926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (A356139 (n + 1)).toNat

end

end A356138.P17018318456510893926

namespace A356138

/-- `A137805(A356139(n+1))` -/
def P17018318456510893926.Spec : Prop :=
  ∀ n, P17018318456510893926.a n = A356138 (n + 1)

end A356138

/-! ## A356138.P6356695335322833853

`A137805(A137804(ceil((n+1)*sqrt(2))-1))`
-/

namespace A356138.P6356695335322833853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (A137804 (⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉ - 1).toNat).toNat

end

end A356138.P6356695335322833853

namespace A356138

/-- `A137805(A137804(ceil((n+1)*sqrt(2))-1))` -/
def P6356695335322833853.Spec : Prop :=
  ∀ n, P6356695335322833853.a n = A356138 (n + 1)

end A356138

/-!
# A356139: a(n) = A137804(A001951(n)).

The programs for A356139, the canonical program `A356139.P5837492225789361080` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356139 has offset 1).

The definition of A356139 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A137804(A001951(n+1))` (program `A356139.P5837492225789361080`, by `A356139.P5837492225789361080.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356139.P5837492225789361080

`A137804(A001951(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356139

/-- `A137804(A001951(n+1))` -/
def P5837492225789361080.Spec : Prop :=
  ∀ n, P5837492225789361080.a n = A356139 (n + 1)

theorem P5837492225789361080.correct : P5837492225789361080.Spec := by
  intro n
  simp only [A356139, Nat.add_sub_cancel]

end A356139

/-! ## A356139.P13038283035757476717

`A137804(ceil((n+1)*sqrt(2))-1)`
-/

namespace A356139.P13038283035757476717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉ - 1).toNat

end

end A356139.P13038283035757476717

namespace A356139

/-- `A137804(ceil((n+1)*sqrt(2))-1)` -/
def P13038283035757476717.Spec : Prop :=
  ∀ n, P13038283035757476717.a n = A356139 (n + 1)

end A356139

/-! ## A356139.P7031099466500646373

`record[A137804(n+1)%A026250(n+1)]`
-/

namespace A356139.P7031099466500646373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137804 (n + 1)) (A026250 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356139.P7031099466500646373

namespace A356139

/-- `record[A137804(n+1)%A026250(n+1)]` -/
def P7031099466500646373.Spec : Prop :=
  ∀ n, P7031099466500646373.a n = A356139 (n + 1)

end A356139

/-! ## A356139.P5065042638727679115

`∩[A137804(n+1), comp[A356141(n+1)]]`
-/

namespace A356139.P5065042638727679115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356141 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A356139.P5065042638727679115

namespace A356139

/-- `∩[A137804(n+1), comp[A356141(n+1)]]` -/
def P5065042638727679115.Spec : Prop :=
  ∀ n, (P5065042638727679115.a n : ℤ) = A356139 (n + 1)

end A356139

/-! ## A356139.P17411009943612961743

`A137805(A356138(n+1))`
-/

namespace A356139.P17411009943612961743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (A356138 (n + 1)).toNat

end

end A356139.P17411009943612961743

namespace A356139

/-- `A137805(A356138(n+1))` -/
def P17411009943612961743.Spec : Prop :=
  ∀ n, P17411009943612961743.a n = A356139 (n + 1)

end A356139

/-! ## A356139.P13822987832559524859

`A137805(A137803(ceil((n+1)*sqrt(2))-1))`
-/

namespace A356139.P13822987832559524859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (A137803 (⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉ - 1).toNat).toNat

end

end A356139.P13822987832559524859

namespace A356139

/-- `A137805(A137803(ceil((n+1)*sqrt(2))-1))` -/
def P13822987832559524859.Spec : Prop :=
  ∀ n, P13822987832559524859.a n = A356139 (n + 1)

end A356139

/-!
# A356140: a(n) = A137803(A001952(n)).

The programs for A356140, the canonical program `A356140.P13762675216489246348` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356140 has offset 1).

The definition of A356140 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A137803(A001952(n+1))` (program `A356140.P13762675216489246348`, by `A356140.P13762675216489246348.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356140.P13762675216489246348

`A137803(A001952(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356140

/-- `A137803(A001952(n+1))` -/
def P13762675216489246348.Spec : Prop :=
  ∀ n, P13762675216489246348.a n = A356140 (n + 1)

theorem P13762675216489246348.correct : P13762675216489246348.Spec := by
  intro n
  simp only [A356140, Nat.add_sub_cancel]

end A356140

/-! ## A356140.P7886712482314620105

`A137803(comp[floor(n*sqrt(2))])`
-/

namespace A356140.P7886712482314620105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356140.P7886712482314620105

namespace A356140

/-- `A137803(comp[floor(n*sqrt(2))])` -/
def P7886712482314620105.Spec : Prop :=
  ∀ n, P7886712482314620105.a n = A356140 (n + 1)

end A356140

/-! ## A356140.P17843550089533797984

`record[A137803(A026250(n+1))]`
-/

namespace A356140.P17843550089533797984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (A026250 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356140.P17843550089533797984

namespace A356140

/-- `record[A137803(A026250(n+1))]` -/
def P17843550089533797984.Spec : Prop :=
  ∀ n, P17843550089533797984.a n = A356140 (n + 1)

end A356140

/-! ## A356140.P12602823945101681675

`and(-1, A137803(A080754(n+1)+n))`
-/

namespace A356140.P12602823945101681675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A137803 (A080754 (n + 1) + (n : ℤ)).toNat)

end

end A356140.P12602823945101681675

namespace A356140

/-- `and(-1, A137803(A080754(n+1)+n))` -/
def P12602823945101681675.Spec : Prop :=
  ∀ n, P12602823945101681675.a n = A356140 (n + 1)

end A356140

/-! ## A356140.P10518550444532968830

`and(-1, A137803(A286923(n+1)-n))`
-/

namespace A356140.P10518550444532968830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A137803 (A286923 (n + 1) - (n : ℤ)).toNat)

end

end A356140.P10518550444532968830

namespace A356140

/-- `and(-1, A137803(A286923(n+1)-n))` -/
def P10518550444532968830.Spec : Prop :=
  ∀ n, P10518550444532968830.a n = A356140 (n + 1)

end A356140

/-! ## A356140.P14832361594095094259

`and(-1, A137803(ceil(A286690(n+1)/2)))`
-/

namespace A356140.P14832361594095094259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A137803 ⌈(A286690 (n + 1) : ℚ) / 2⌉.toNat)

end

end A356140.P14832361594095094259

namespace A356140

/-- `and(-1, A137803(ceil(A286690(n+1)/2)))` -/
def P14832361594095094259.Spec : Prop :=
  ∀ n, P14832361594095094259.a n = A356140 (n + 1)

end A356140

/-! ## A356140.P9953169883740158691

`abs(A137803(A003151(n+1)+n+1)-n)+n`
-/

namespace A356140.P9953169883740158691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137803 (A003151 (n + 1) + (n + 1 : ℤ)).toNat - (n : ℤ)| + (n : ℤ)

end

end A356140.P9953169883740158691

namespace A356140

/-- `abs(A137803(A003151(n+1)+n+1)-n)+n` -/
def P9953169883740158691.Spec : Prop :=
  ∀ n, P9953169883740158691.a n = A356140 (n + 1)

end A356140

/-! ## A356140.P8381001730832710703

`A137805(A356141(n+1))`
-/

namespace A356140.P8381001730832710703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (A356141 (n + 1)).toNat

end

end A356140.P8381001730832710703

namespace A356140

/-- `A137805(A356141(n+1))` -/
def P8381001730832710703.Spec : Prop :=
  ∀ n, P8381001730832710703.a n = A356140 (n + 1)

end A356140

/-! ## A356140.P8078898019396006501

`A137805(A137804(A003151(n+1)+n+1))`
-/

namespace A356140.P8078898019396006501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (A137804 (A003151 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A356140.P8078898019396006501

namespace A356140

/-- `A137805(A137804(A003151(n+1)+n+1))` -/
def P8078898019396006501.Spec : Prop :=
  ∀ n, P8078898019396006501.a n = A356140 (n + 1)

end A356140

/-!
# A356141: a(n) = A137804(A001952(n)).

The programs for A356141, the canonical program `A356141.P12207590279275732256` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356141 has offset 1).

The definition of A356141 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A137804(A001952(n+1))` (program `A356141.P12207590279275732256`, by `A356141.P12207590279275732256.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356141.P12207590279275732256

`A137804(A001952(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356141

/-- `A137804(A001952(n+1))` -/
def P12207590279275732256.Spec : Prop :=
  ∀ n, P12207590279275732256.a n = A356141 (n + 1)

theorem P12207590279275732256.correct : P12207590279275732256.Spec := by
  intro n
  simp only [A356141, Nat.add_sub_cancel]

end A356141

/-! ## A356141.P11837359194420613503

`A137804(comp[floor(n*sqrt(2))])`
-/

namespace A356141.P11837359194420613503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356141.P11837359194420613503

namespace A356141

/-- `A137804(comp[floor(n*sqrt(2))])` -/
def P11837359194420613503.Spec : Prop :=
  ∀ n, P11837359194420613503.a n = A356141 (n + 1)

end A356141

/-! ## A356141.P18067663038067950611

`record[A137804(A026250(n+1))]`
-/

namespace A356141.P18067663038067950611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (A026250 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356141.P18067663038067950611

namespace A356141

/-- `record[A137804(A026250(n+1))]` -/
def P18067663038067950611.Spec : Prop :=
  ∀ n, P18067663038067950611.a n = A356141 (n + 1)

end A356141

/-! ## A356141.P15982707239521808035

`A292641(A184922(n+1)+1)-∑[A276864(n+1)]`
-/

namespace A356141.P15982707239521808035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292641 (A184922 (n + 1) + 1).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356141.P15982707239521808035

namespace A356141

/-- `A292641(A184922(n+1)+1)-∑[A276864(n+1)]` -/
def P15982707239521808035.Spec : Prop :=
  ∀ n, P15982707239521808035.a n = A356141 (n + 1)

end A356141

/-! ## A356141.P439100043063524820

`A137805(A356140(n+1))`
-/

namespace A356141.P439100043063524820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (A356140 (n + 1)).toNat

end

end A356141.P439100043063524820

namespace A356141

/-- `A137805(A356140(n+1))` -/
def P439100043063524820.Spec : Prop :=
  ∀ n, P439100043063524820.a n = A356141 (n + 1)

end A356141

/-! ## A356141.P10939792408956001544

`A137805(A137803(A003151(n+1)+n+1))`
-/

namespace A356141.P10939792408956001544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (A137803 (A003151 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A356141.P10939792408956001544

namespace A356141

/-- `A137805(A137803(A003151(n+1)+n+1))` -/
def P10939792408956001544.Spec : Prop :=
  ∀ n, P10939792408956001544.a n = A356141 (n + 1)

end A356141

/-! ## A356141.P2182668834180667769

`A286323(A286927(n+1))-A286927(n+1)/2`
-/

namespace A356141.P2182668834180667769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286323 (A286927 (n + 1)).toNat : ℚ) - (A286927 (n + 1) : ℚ) / 2

end

end A356141.P2182668834180667769

namespace A356141

/-- `A286323(A286927(n+1))-A286927(n+1)/2` -/
def P2182668834180667769.Spec : Prop :=
  ∀ n, P2182668834180667769.a n = (A356141 (n + 1) : ℚ)

end A356141

/-!
# A356147: Lower twin primes whose sum of digits is a lower twin prime.

The programs for A356147, there is no canonical definition to state claims against.
-/

/-! ## A356147.P4457732337245152245

`∩[A084424(n+1), A167921(n+1)]`
-/

namespace A356147.P4457732337245152245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356147.P4457732337245152245

/-! ## A356147.P3625598250263907944

`∩[A119450(n+1), A167921(n+1)]`
-/

namespace A356147.P3625598250263907944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356147.P3625598250263907944

/-! ## A356147.P4896071219991875254

`∩[A156756(n+1), A167921(n+1)]`
-/

namespace A356147.P4896071219991875254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356147.P4896071219991875254

/-! ## A356147.P5470194493742397787

`filter[A078864(n+1), A179081(#)]`
-/

namespace A356147.P5470194493742397787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j).toNat = 1) n)

end

end A356147.P5470194493742397787

/-!
# A356148: a(n) is the number of positive integers whose binary expansion appears as a substring in the binary expansion of n or its complement.

The programs for A356148, there is no canonical definition to state claims against.
-/

/-! ## A356148.P7186793934920748260

`Δ[eq[1, A356149(n+1)]]`
-/

namespace A356148.P7186793934920748260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356149 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A356148.P7186793934920748260

/-!
# A356149: Irregular table T(n, k), n > 0, k = 1..A356148(n), read by rows; the n-th row contains, in ascending order, the distinct positive integers whose binary expansion appears as a substring in the binary expansion of n or its complement.

The programs for A356149, there is no canonical definition to state claims against.
-/

/-! ## A356149.P14012986482346779108

`A057555(A152955(n+1)%A328691(n+1))`
-/

namespace A356149.P14012986482346779108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (Int.tmod (A152955 (n + 1)) (A328691 (n + 1))).toNat

end

end A356149.P14012986482346779108

/-! ## A356149.P4584352359733576509

`A057555(A056911(n+1)%A093483(n+3))`
-/

namespace A356149.P4584352359733576509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (Int.tmod (A056911 (n + 1)) (A093483 (n + 3))).toNat

end

end A356149.P4584352359733576509

/-! ## A356149.P5511282025182835580

`A002260(lt[A326937(n+1), A134839(3*n+1)])`
-/

namespace A356149.P5511282025182835580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134839 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356149.P5511282025182835580

/-! ## A356149.P11860212250863992624

`A002260(lt[A203647(n+1), A333528(3*n+2)])`
-/

namespace A356149.P11860212250863992624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333528 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356149.P11860212250863992624

/-! ## A356149.P1878799059711378554

`A002260(lt[A261771(n), A115409(n+1)])`
-/

namespace A356149.P1878799059711378554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261771 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356149.P1878799059711378554

/-!
# A356151: Greatest common divisor of n and the smallest positive k such that n divides k*A276086(k), where A276086 is primorial base exp-function.

The programs for A356151, there is no canonical definition to state claims against.
-/

/-! ## A356151.P2807476733806430994

`(n+1)/A356152(n+1)`
-/

namespace A356151.P2807476733806430994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A356152 (n + 1) : ℚ)

end

end A356151.P2807476733806430994

/-! ## A356151.P12740728056845756558

`gcd(n+1, A355944(n+1))`
-/

namespace A356151.P12740728056845756558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A355944 (n + 1))

end

end A356151.P12740728056845756558

/-! ## A356151.P11622736671534535020

`A355944(n+1)/A356153(n+1)`
-/

namespace A356151.P11622736671534535020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355944 (n + 1) : ℚ) / (A356153 (n + 1) : ℚ)

end

end A356151.P11622736671534535020

/-! ## A356151.P9196577855474543407

`gcd(A000027(n+1), A355945(n+1))`
-/

namespace A356151.P9196577855474543407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A355945 (n + 1))

end

end A356151.P9196577855474543407

/-! ## A356151.P3108101282249803441

`(1-A355945(n+1)+n)/A356153(n+1)`
-/

namespace A356151.P3108101282249803441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A355945 (n + 1) + (n : ℤ) : ℚ) / (A356153 (n + 1) : ℚ)

end

end A356151.P3108101282249803441

/-! ## A356151.P8766191854227901205

`(A024000(A355945(n+1))+n)/A356153(n+1)`
-/

namespace A356151.P8766191854227901205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024000 (A355945 (n + 1)).toNat + (n : ℤ) : ℚ) / (A356153 (n + 1) : ℚ)

end

end A356151.P8766191854227901205

/-! ## A356151.P1740111157182831356

`A004736(A355945(n+1)+∑[n]+1)/A356153(n+1)`
-/

namespace A356151.P1740111157182831356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (A355945 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat : ℚ) / (A356153 (n + 1) : ℚ)

end

end A356151.P1740111157182831356

/-!
# A356152: Numerator of n / the smallest positive k such that n divides k*A276086(k), where A276086 is primorial base exp-function.

The programs for A356152, there is no canonical definition to state claims against.
-/

/-! ## A356152.P10148080483802192072

`(n+1)/A356151(n+1)`
-/

namespace A356152.P10148080483802192072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A356151 (n + 1) : ℚ)

end

end A356152.P10148080483802192072

/-! ## A356152.P18118319993408174910

`(n+1)/gcd(n+1, A355944(n+1))`
-/

namespace A356152.P18118319993408174910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A355944 (n + 1)) : ℚ)

end

end A356152.P18118319993408174910

/-! ## A356152.P1229760527378535120

`(n+1)/A355944(n+1)*A356153(n+1)`
-/

namespace A356152.P1229760527378535120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A355944 (n + 1) : ℚ) * (A356153 (n + 1) : ℚ)

end

end A356152.P1229760527378535120

/-! ## A356152.P9595583149665962082

`(n+1)/floor((1-A355945(n+1)+n)/A356153(n+1))`
-/

namespace A356152.P9595583149665962082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌊(1 - A355945 (n + 1) + (n : ℤ) : ℚ) / (A356153 (n + 1) : ℚ)⌋ : ℚ)

end

end A356152.P9595583149665962082

/-! ## A356152.P8333540566474900109

`(n+1)/A000027(A355944(n+1)/A356153(n+1))`
-/

namespace A356152.P8333540566474900109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000027 (SequenceMachineLib.roundAway ((A355944 (n + 1) : ℚ) / (A356153 (n + 1) : ℚ))).toNat : ℚ)

end

end A356152.P8333540566474900109

/-!
# A356153: Denominator of n / the smallest positive k such that n divides k*A276086(k), where A276086 is primorial base exp-function.

The programs for A356153, there is no canonical definition to state claims against.
-/

/-! ## A356153.P2471444255437318520

`A355944(n+1)/A356151(n+1)`
-/

namespace A356153.P2471444255437318520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355944 (n + 1) : ℚ) / (A356151 (n + 1) : ℚ)

end

end A356153.P2471444255437318520

/-! ## A356153.P13047824206641664713

`(1-A355945(n+1)+n)/A356151(n+1)`
-/

namespace A356153.P13047824206641664713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A355945 (n + 1) + (n : ℤ) : ℚ) / (A356151 (n + 1) : ℚ)

end

end A356153.P13047824206641664713

/-! ## A356153.P11388187168737767157

`A355944(n+1)/floor((n+1)/A356152(n+1))`
-/

namespace A356153.P11388187168737767157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355944 (n + 1) : ℚ) / (⌊(n + 1 : ℚ) / (A356152 (n + 1) : ℚ)⌋ : ℚ)

end

end A356153.P11388187168737767157

/-! ## A356153.P14874381175619878758

`(A024000(A355945(n+1))+n)/A356151(n+1)`
-/

namespace A356153.P14874381175619878758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024000 (A355945 (n + 1)).toNat + (n : ℤ) : ℚ) / (A356151 (n + 1) : ℚ)

end

end A356153.P14874381175619878758

/-! ## A356153.P6436889557010728542

`A355944(n+1)/gcd(A355944(n+1), A355945(n+1))`
-/

namespace A356153.P6436889557010728542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355944 (n + 1) : ℚ) / (Int.gcd (A355944 (n + 1)) (A355945 (n + 1)) : ℚ)

end

end A356153.P6436889557010728542

/-! ## A356153.P6383564418636803561

`A004736(A355945(n+1)+∑[n]+1)/A356151(n+1)`
-/

namespace A356153.P6383564418636803561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (A355945 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat : ℚ) / (A356151 (n + 1) : ℚ)

end

end A356153.P6383564418636803561

/-!
# A356155: The pi-based arithmetic derivative applied to prime shift array: Square array A(n,k) = A258851(A246278(n,k)), read by falling antidiagonals.

The programs for A356155, there is no canonical definition to state claims against.
-/

/-! ## A356155.P10905126796993927613

`A258851(A246278(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356155.P10905126796993927613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A246278 (n + 2)).toNat

end

end A356155.P10905126796993927613

/-! ## A356155.P4658905846190468315

`A258851(A246275(n+1)+1)`
-/

namespace A356155.P4658905846190468315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A246275 (n + 1) + 1).toNat

end

end A356155.P4658905846190468315

/-! ## A356155.P2379087454598795180

`A258851(A122111(A253561(n+2)))`
-/

namespace A356155.P2379087454598795180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A122111 (A253561 (n + 2)).toNat).toNat

end

end A356155.P2379087454598795180

/-!
# A356156: The nearest common ancestor of n and gcd(n, sigma(n)) in the Doudna tree (A005940).

The programs for A356156, there is no canonical definition to state claims against.
-/

/-! ## A356156.P17631145608651788912

`gcd(A001615(A270613(n+1)), A126795(n+1))`
-/

namespace A356156.P17631145608651788912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001615 (A270613 (n + 1)).toNat) (A126795 (n + 1))

end

end A356156.P17631145608651788912

/-! ## A356156.P2276393653996877269

`gcd(A034448(A270613(n+1)), A323160(n+1))`
-/

namespace A356156.P2276393653996877269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034448 (A270613 (n + 1)).toNat) (A323160 (n + 1))

end

end A356156.P2276393653996877269

/-! ## A356156.P10847541110500895296

`gcd(A064992(A270613(n+1)), A323166(n+1))`
-/

namespace A356156.P10847541110500895296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064992 (A270613 (n + 1)).toNat) (A323166 (n + 1))

end

end A356156.P10847541110500895296

/-! ## A356156.P13092904390286014750

`gcd(A324046(n+1), A335318(A324121(n+1)))`
-/

namespace A356156.P13092904390286014750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324046 (n + 1)) (A335318 (A324121 (n + 1)).toNat)

end

end A356156.P13092904390286014750

/-! ## A356156.P3082064798379770923

`gcd(A074383(n), A323160(n+1))`
-/

namespace A356156.P3082064798379770923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074383 n) (A323160 (n + 1))

end

end A356156.P3082064798379770923

/-!
# A356157: The nearest common ancestor of sigma(n) and gcd(n, sigma(n)) in the Doudna tree (A005940).

The programs for A356157, there is no canonical definition to state claims against.
-/

/-! ## A356157.P14667827129297161966

`gcd(A009194(n+1), A065770(A008292(n+1)))`
-/

namespace A356157.P14667827129297161966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009194 (n + 1)) (A065770 (A008292 (n + 1)).toNat)

end

end A356157.P14667827129297161966

/-! ## A356157.P10301428256537116553

`gcd(A083482(A034965(3*n+1)), A325633(n+1))`
-/

namespace A356157.P10301428256537116553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083482 (A034965 (3 * n + 1)).toNat) (A325633 (n + 1))

end

end A356157.P10301428256537116553

/-! ## A356157.P16480396321989779496

`gcd(A009194(n+1), A342501(n+1))`
-/

namespace A356157.P16480396321989779496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009194 (n + 1)) (A342501 (n + 1))

end

end A356157.P16480396321989779496

/-! ## A356157.P16378514710531500920

`gcd(A187793(n+1), A349294(n+1))`
-/

namespace A356157.P16378514710531500920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187793 (n + 1)) (A349294 (n + 1))

end

end A356157.P16378514710531500920

/-! ## A356157.P14593863682870989450

`gcd(A009194(n+1), A034683(A000041(n)))`
-/

namespace A356157.P14593863682870989450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009194 (n + 1)) (A034683 (A000041 n).toNat)

end

end A356157.P14593863682870989450

/-!
# A356158: a(n) = gcd(n, A347879(n)).

The programs for A356158, there is no canonical definition to state claims against.
-/

/-! ## A356158.P1381520305820642150

`gcd(n+1, A347879(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356158.P1381520305820642150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A347879 (n + 1))

end

end A356158.P1381520305820642150

/-! ## A356158.P10654760107548663627

`gcd(∏{p}[n+1, #], A036326(A027907(n)))`
-/

namespace A356158.P10654760107548663627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A036326 (A027907 n).toNat)

end

end A356158.P10654760107548663627

/-! ## A356158.P2077278503304972973

`gcd(A000027(n+1), A098194(A316530(2*n+2)))`
-/

namespace A356158.P2077278503304972973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A098194 (A316530 (2 * n + 2)).toNat)

end

end A356158.P2077278503304972973

/-! ## A356158.P13335007459690834254

`gcd(A000005(A231227(3*n+5)), A062953(n+1))`
-/

namespace A356158.P13335007459690834254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A231227 (3 * n + 5)).toNat) (A062953 (n + 1))

end

end A356158.P13335007459690834254

/-! ## A356158.P16674184730094627532

`gcd(A132033(n+1), A331963(A003506(n+1)))`
-/

namespace A356158.P16674184730094627532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132033 (n + 1)) (A331963 (A003506 (n + 1)).toNat)

end

end A356158.P16674184730094627532

/-!
# A356159: Sum of the prime indices of the smallest number that has the same prime signature as n.

The programs for A356159, the canonical program `A356159.P17667965768721708085` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356159 has offset 1).

The definition of A356159 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A056239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356159.P17667965768721708085

`A056239(A046523(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A356159

/-- `A056239(A046523(n+1))` -/
def P17667965768721708085.Spec : Prop :=
  ∀ n, P17667965768721708085.a n = A356159 (n + 1)

theorem P17667965768721708085.correct : P17667965768721708085.Spec := by
  intro n
  simp only [A356159, Nat.add_sub_cancel]

end A356159

/-! ## A356159.P12377244140501347863

`A079167(A089247(n+1))`
-/

namespace A356159.P12377244140501347863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079167 (A089247 (n + 1)).toNat

end

end A356159.P12377244140501347863

namespace A356159

/-- `A079167(A089247(n+1))` -/
def P12377244140501347863.Spec : Prop :=
  ∀ n, P12377244140501347863.a n = A356159 (n + 1)

end A356159

/-! ## A356159.P4713978979192998389

`A318283(A181819(n+1))`
-/

namespace A356159.P4713978979192998389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (A181819 (n + 1)).toNat

end

end A356159.P4713978979192998389

namespace A356159

/-- `A318283(A181819(n+1))` -/
def P4713978979192998389.Spec : Prop :=
  ∀ n, P4713978979192998389.a n = A356159 (n + 1)

end A356159

/-! ## A356159.P15288386290255621189

`A056239(n+1)-A355930(n+1)`
-/

namespace A356159.P15288386290255621189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A355930 (n + 1)

end

end A356159.P15288386290255621189

namespace A356159

/-- `A056239(n+1)-A355930(n+1)` -/
def P15288386290255621189.Spec : Prop :=
  ∀ n, P15288386290255621189.a n = A356159 (n + 1)

theorem P15288386290255621189.correct : P15288386290255621189.Spec := by
  intro n
  simp only [A356159, Nat.add_sub_cancel, A356159.P15288386290255621189.a, A356159.P17667965768721708085.a, A046523, A046523.P3407874444772092792.a, A056239, A056239.P11316688788989965672.a, A355930, A355930.P13161575751402351718.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A008578, A008578.P3639467937083264764.a, A048896, A048896.P6461019053085857547.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A048881, A048881.P16567064232951496228.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A158611, A158611.P9275629407611603775.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A356159

/-! ## A356159.P1325733767335784819

`A316436(2*(n+1))-1-A355930(n+1)`
-/

namespace A356159.P1325733767335784819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - 1 - A355930 (n + 1)

end

end A356159.P1325733767335784819

namespace A356159

/-- `A316436(2*(n+1))-1-A355930(n+1)` -/
def P1325733767335784819.Spec : Prop :=
  ∀ n, P1325733767335784819.a n = A356159 (n + 1)

end A356159

/-! ## A356159.P506898303023582314

`1-A178503(n+1)+n-A355930(n+1)`
-/

namespace A356159.P506898303023582314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178503 (n + 1) + (n : ℤ) - A355930 (n + 1)

end

end A356159.P506898303023582314

namespace A356159

/-- `1-A178503(n+1)+n-A355930(n+1)` -/
def P506898303023582314.Spec : Prop :=
  ∀ n, P506898303023582314.a n = A356159 (n + 1)

theorem P506898303023582314.correct : P506898303023582314.Spec := by
  intro n
  simp only [A356159, Nat.add_sub_cancel, A356159.P506898303023582314.a, A356159.P17667965768721708085.a, A046523, A046523.P3407874444772092792.a, A056239, A056239.P11316688788989965672.a, A178503, A178503.P4821530667985743072.a, A355930, A355930.P13161575751402351718.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A008578, A008578.P3639467937083264764.a, A048896, A048896.P6461019053085857547.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A048881, A048881.P16567064232951496228.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A158611, A158611.P9275629407611603775.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A356159

/-! ## A356159.P8403684330687530623

`A318995(n+1)+Δ[A022559(n)]-A355930(n+1)`
-/

namespace A356159.P8403684330687530623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + (f1 (n + 1) - f1 n) - A355930 (n + 1)

end

end A356159.P8403684330687530623

namespace A356159

/-- `A318995(n+1)+Δ[A022559(n)]-A355930(n+1)` -/
def P8403684330687530623.Spec : Prop :=
  ∀ n, P8403684330687530623.a n = A356159 (n + 1)

theorem P8403684330687530623.correct : P8403684330687530623.Spec := by
  intro n
  simp only [A356159, Nat.add_sub_cancel, A356159.P8403684330687530623.f1, A356159.P8403684330687530623.a, A356159.P17667965768721708085.a, A022559, A022559.P10554250414511796107.a, A046523, A046523.P3407874444772092792.a, A056239, A056239.P11316688788989965672.a, A318995, A318995.P1948814167447618937.f1, A318995.P1948814167447618937.a, A355930, A355930.P13161575751402351718.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A008578, A008578.P3639467937083264764.a, A048896, A048896.P6461019053085857547.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A048881, A048881.P16567064232951496228.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A158611, A158611.P9275629407611603775.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A356159

/-! ## A356159.P66504566003425254

`A318994(n+1)-(A355930(n+1)+A001222(n+1))`
-/

namespace A356159.P66504566003425254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (n + 1) - (A355930 (n + 1) + A001222 (n + 1))

end

end A356159.P66504566003425254

namespace A356159

/-- `A318994(n+1)-(A355930(n+1)+A001222(n+1))` -/
def P66504566003425254.Spec : Prop :=
  ∀ n, P66504566003425254.a n = A356159 (n + 1)

end A356159

/-! ## A356159.P16851701864999917941

`A079167(A359600(n+1))`
-/

namespace A356159.P16851701864999917941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079167 (A359600 (n + 1)).toNat

end

end A356159.P16851701864999917941

namespace A356159

/-- `A079167(A359600(n+1))` -/
def P16851701864999917941.Spec : Prop :=
  ∀ n, P16851701864999917941.a n = A356159 (n + 1)

end A356159

/-! ## A356159.P6597571605195558394

`A346698(A278254(n+1))`
-/

namespace A356159.P6597571605195558394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A278254 (n + 1)).toNat

end

end A356159.P6597571605195558394

namespace A356159

/-- `A346698(A278254(n+1))` -/
def P6597571605195558394.Spec : Prop :=
  ∀ n, P6597571605195558394.a n = A356159 (n + 1)

end A356159

/-! ## A356159.P15536909566179985257

`A196047(A238745(n+1)²)/2`
-/

namespace A356159.P15536909566179985257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196047 (A238745 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A356159.P15536909566179985257

namespace A356159

/-- `A196047(A238745(n+1)²)/2` -/
def P15536909566179985257.Spec : Prop :=
  ∀ n, P15536909566179985257.a n = (A356159 (n + 1) : ℚ)

end A356159

/-!
# A356160: Numbers k such that the smallest positive k such that n divides k*A276086(k) is equal to n, where A276086 is primorial base exp-function.

The programs for A356160, there is no canonical definition to state claims against.
-/

/-! ## A356160.P10091134285456175540

`record[A356151(n+1)]`
-/

namespace A356160.P10091134285456175540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356160.P10091134285456175540

/-! ## A356160.P6057481167369532259

`record[C(A355944(n+1), n)]`
-/

namespace A356160.P6057481167369532259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A355944 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356160.P6057481167369532259

/-! ## A356160.P17277805161407186448

`eq[0, A355945(n+1)]+1`
-/

namespace A356160.P17277805161407186448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355945 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356160.P17277805161407186448

/-! ## A356160.P15606980534135065233

`eq[1, A356152(n+1)]+1`
-/

namespace A356160.P15606980534135065233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356160.P15606980534135065233

/-! ## A356160.P4335377173220190926

`lt[0, A356161(n+1)]+1`
-/

namespace A356160.P4335377173220190926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356161 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A356160.P4335377173220190926

/-! ## A356160.P17434406722146285692

`record[A355944(A355944(n+1))]`
-/

namespace A356160.P17434406722146285692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355944 (A355944 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356160.P17434406722146285692

/-! ## A356160.P14806161917470217146

`eq[n, A355944(A233583(n+1))]`
-/

namespace A356160.P14806161917470217146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355944 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356160.P14806161917470217146

/-!
# A356161: a(n) = 1 if the smallest positive k such that n divides k*A276086(k) is equal to n, otherwise 0, where A276086 is primorial base exp-function.

The programs for A356161, there is no canonical definition to state claims against.
-/

/-! ## A356161.P4286243277022374633

`floor(acot(A355945(n+1)))`
-/

namespace A356161.P4286243277022374633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A355945 (n + 1) : ℝ)⌋

end

end A356161.P4286243277022374633

/-! ## A356161.P15743064010814849999

`round(acot(A356152(n+1)))`
-/

namespace A356161.P15743064010814849999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A356152 (n + 1) : ℝ))

end

end A356161.P15743064010814849999

/-! ## A356161.P11196630973350144783

`char[lt[n, A355944(n+1)]]`
-/

namespace A356161.P11196630973350144783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355944 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A356161.P11196630973350144783

/-! ## A356161.P14568877253121252568

`char[lt[n, A356151(n+1)]]`
-/

namespace A356161.P14568877253121252568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356151 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A356161.P14568877253121252568

/-! ## A356161.P4365578677229485928

`A000007(A355945(n+1))`
-/

namespace A356161.P4365578677229485928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A355945 (n + 1)).toNat

end

end A356161.P4365578677229485928

/-! ## A356161.P12748289113192483181

`A356120(C(2, A356152(n+1)))`
-/

namespace A356161.P12748289113192483181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356120 (Nat.choose 2 (A356152 (n + 1)).toNat)

end

end A356161.P12748289113192483181

/-! ## A356161.P5689137058349782904

`∑{d}[A356152(n+1), A008683(#)]`
-/

namespace A356161.P5689137058349782904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A356161.P5689137058349782904

/-! ## A356161.P18143323664573835801

`∏{d}[A355945(n+1), A001221(#)]`
-/

namespace A356161.P18143323664573835801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A356161.P18143323664573835801

/-! ## A356161.P6032825764509677628

`∏{d}[A355945(n+1), A001222(#)]`
-/

namespace A356161.P6032825764509677628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A356161.P6032825764509677628

/-! ## A356161.P2482835416528059756

`∏{d}[A355945(n+1), A355945(#)]`
-/

namespace A356161.P2482835416528059756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A355945 d

end

end A356161.P2482835416528059756

/-! ## A356161.P15318568898403367748

`∏{p}[A356152(n+1), A356174(#)]`
-/

namespace A356161.P15318568898403367748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A356174 p

end

end A356161.P15318568898403367748

/-! ## A356161.P5703923273988801640

`round(A356151(n+1)/A005408(n))`
-/

namespace A356161.P5703923273988801640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A356151 (n + 1) : ℚ) / (A005408 n : ℚ))

end

end A356161.P5703923273988801640

/-! ## A356161.P13833541781538843070

`C(A356153(n+1), A356152(n+1))`
-/

namespace A356161.P13833541781538843070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A356153 (n + 1)).toNat (A356152 (n + 1)).toNat

end

end A356161.P13833541781538843070

/-! ## A356161.P9082102680584388720

`C(A356125(A356151(n+1)), A356125(n+1))`
-/

namespace A356161.P9082102680584388720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A356125 (A356151 (n + 1)).toNat).toNat (A356125 (n + 1)).toNat

end

end A356161.P9082102680584388720

/-! ## A356161.P13742188911769750461

`C(A356126(A356151(n+1)), A356126(n+1))`
-/

namespace A356161.P13742188911769750461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A356126 (A356151 (n + 1)).toNat).toNat (A356126 (n + 1)).toNat

end

end A356161.P13742188911769750461

/-! ## A356161.P12550174032733942456

`C(A356147(A356151(n+1)), A356147(n+1))`
-/

namespace A356161.P12550174032733942456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A356147 (A356151 (n + 1)).toNat).toNat (A356147 (n + 1)).toNat

end

end A356161.P12550174032733942456

/-! ## A356161.P15587789819747902525

`C(A001222(A356152(n+1)+1), A356152(n+1))`
-/

namespace A356161.P15587789819747902525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A356152 (n + 1) + 1).toNat).toNat (A356152 (n + 1)).toNat

end

end A356161.P15587789819747902525

/-! ## A356161.P3590790019830243612

`C(A356147(n+1), A356147(n+1)*A356152(n+1))`
-/

namespace A356161.P3590790019830243612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A356147 (n + 1)).toNat (A356147 (n + 1) * A356152 (n + 1)).toNat

end

end A356161.P3590790019830243612

/-! ## A356161.P8405586486015939324

`A356152(n+1)^-A356125(n+5)`
-/

namespace A356161.P8405586486015939324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356152 (n + 1) : ℚ) ^ (-A356125 (n + 5) : ℤ)

end

end A356161.P8405586486015939324

/-! ## A356161.P11462635061539406063

`A008683(A356152(n+1)²)`
-/

namespace A356161.P11462635061539406063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A356152 (n + 1) ^ 2).toNat

end

end A356161.P11462635061539406063

/-!
# A356162: a(n) = 1 if n and A276086(n) are coprime, otherwise 0, where A276086 is primorial base exp-function.

The programs for A356162, there is no canonical definition to state claims against.
-/

/-! ## A356162.P4363022102731403559

`C(2, A356302(n))`
-/

namespace A356162.P4363022102731403559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A356302 n).toNat

end

end A356162.P4363022102731403559

/-! ## A356162.P12679252350348268070

`C(A351250(n), n)`
-/

namespace A356162.P12679252350348268070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A351250 n).toNat n

end

end A356162.P12679252350348268070

/-! ## A356162.P3694955900764028546

`C(A351253(n), n)`
-/

namespace A356162.P3694955900764028546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A351253 n).toNat n

end

end A356162.P3694955900764028546

/-! ## A356162.P4750364230970181274

`C(n, A356309(n))`
-/

namespace A356162.P4750364230970181274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A356309 n).toNat

end

end A356162.P4750364230970181274

/-! ## A356162.P12757521230435759342

`floor(acot(A351254(n)))`
-/

namespace A356162.P12757521230435759342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A351254 n : ℝ)⌋

end

end A356162.P12757521230435759342

/-! ## A356162.P9386164936699638598

`round(acot(A324198(n)))`
-/

namespace A356162.P9386164936699638598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A324198 n : ℝ))

end

end A356162.P9386164936699638598

/-! ## A356162.P3426099327352061465

`floor(1/A327168(n))`
-/

namespace A356162.P3426099327352061465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A327168 n : ℚ)⌋

end

end A356162.P3426099327352061465

/-! ## A356162.P16908408002305059040

`char[A324583(n+1)]`
-/

namespace A356162.P16908408002305059040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A356162.P16908408002305059040

/-! ## A356162.P4766889321497742662

`floor(1/gcd(n, A324895(n)))`
-/

namespace A356162.P4766889321497742662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Int.gcd (n : ℤ) (A324895 n) : ℚ)⌋

end

end A356162.P4766889321497742662

/-! ## A356162.P11743326850746147496

`A000007(A351254(n))`
-/

namespace A356162.P11743326850746147496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A351254 n).toNat

end

end A356162.P11743326850746147496

/-! ## A356162.P7454610005956676655

`A000007(A356303(n))`
-/

namespace A356162.P7454610005956676655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A356303 n).toNat

end

end A356162.P7454610005956676655

/-! ## A356162.P12544770234026586465

`A322585(A324198(n))`
-/

namespace A356162.P12544770234026586465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (A324198 n).toNat

end

end A356162.P12544770234026586465

/-! ## A356162.P13383792015468356135

`A000045(C(2, A324198(n)))`
-/

namespace A356162.P13383792015468356135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A324198 n).toNat)

end

end A356162.P13383792015468356135

/-! ## A356162.P18067045480149443153

`A003415(C(2, A324198(n)))`
-/

namespace A356162.P18067045480149443153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Nat.choose 2 (A324198 n).toNat)

end

end A356162.P18067045480149443153

/-! ## A356162.P9272694155862308393

`∑{d}[A324198(n), A008683(#)]`
-/

namespace A356162.P9272694155862308393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A356162.P9272694155862308393

/-! ## A356162.P3102362765786893693

`∏{p}[A324198(n), A324179(#)]`
-/

namespace A356162.P3102362765786893693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A324179 p

end

end A356162.P3102362765786893693

/-! ## A356162.P18141705373708912850

`∏{p}[A324198(n), A324180(#)]`
-/

namespace A356162.P18141705373708912850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A324180 p

end

end A356162.P18141705373708912850

/-! ## A356162.P1197619857091227199

`∏{e}[A327168(n), A305509(#)]`
-/

namespace A356162.P1197619857091227199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A305509 (Nat.factorization (f1 n).natAbs p)

end

end A356162.P1197619857091227199

/-! ## A356162.P4104991453289525882

`A054977(A324198(n)-1)-1`
-/

namespace A356162.P4104991453289525882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A324198 n - 1).toNat - 1

end

end A356162.P4104991453289525882

/-! ## A356162.P14586977489413286564

`A175663(2-A351253(n)+n)`
-/

namespace A356162.P14586977489413286564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175663 (2 - A351253 n + (n : ℤ)).toNat

end

end A356162.P14586977489413286564

/-!
# A356163: a(n) = 1 if sum of prime factors of n (taken with multiplicity) is even, otherwise 0.

The programs for A356163, the canonical program `A356163.P17031963498667529361` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356163 has offset 1).

The definition of A356163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356163.P11247198850576972008

`(1+A359154(n+1))/2`
-/

namespace A356163.P11247198850576972008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A359154 (n + 1) : ℚ) / 2

end

end A356163.P11247198850576972008

namespace A356163

/-- `(1+A359154(n+1))/2` -/
def P11247198850576972008.Spec : Prop :=
  ∀ n, P11247198850576972008.a n = (A356163 (n + 1) : ℚ)

end A356163

/-! ## A356163.P17031963498667529361

`A059841(A001414(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356163

/-- `A059841(A001414(n+1))` -/
def P17031963498667529361.Spec : Prop :=
  ∀ n, P17031963498667529361.a n = A356163 (n + 1)

theorem P17031963498667529361.correct : P17031963498667529361.Spec := by
  intro n
  simp only [A356163, Nat.add_sub_cancel]

end A356163

/-! ## A356163.P4263538275635485071

`A065043(A000265(n+1))`
-/

namespace A356163.P4263538275635485071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (A000265 (n + 1)).toNat

end

end A356163.P4263538275635485071

namespace A356163

/-- `A065043(A000265(n+1))` -/
def P4263538275635485071.Spec : Prop :=
  ∀ n, P4263538275635485071.a n = A356163 (n + 1)

end A356163

/-! ## A356163.P5579893515696419809

`(∑{p}[n+1, #*val(n+1, #)]+1)%2`
-/

namespace A356163.P5579893515696419809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1) % 2

end

end A356163.P5579893515696419809

namespace A356163

/-- `(∑{p}[n+1, #*val(n+1, #)]+1)%2` -/
def P5579893515696419809.Spec : Prop :=
  ∀ n, (P5579893515696419809.a n : ℤ) = A356163 (n + 1)

end A356163

/-! ## A356163.P15700673180615173632

`and(1, ∑{p}[n+1, #*val(n+1, #)]+1)`
-/

namespace A356163.P15700673180615173632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1)

end

end A356163.P15700673180615173632

namespace A356163

/-- `and(1, ∑{p}[n+1, #*val(n+1, #)]+1)` -/
def P15700673180615173632.Spec : Prop :=
  ∀ n, (P15700673180615173632.a n : ℤ) = A356163 (n + 1)

end A356163

/-! ## A356163.P17637579870236514826

`A373374(4*(n+1))`
-/

namespace A356163.P17637579870236514826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373374 (4 * (n + 1))

end

end A356163.P17637579870236514826

namespace A356163

/-- `A373374(4*(n+1))` -/
def P17637579870236514826.Spec : Prop :=
  ∀ n, P17637579870236514826.a n = A356163 (n + 1)

end A356163

/-! ## A356163.P8697338059086146243

`A023888(n+1)%2`
-/

namespace A356163.P8697338059086146243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023888 (n + 1)) 2

end

end A356163.P8697338059086146243

namespace A356163

/-- `A023888(n+1)%2` -/
def P8697338059086146243.Spec : Prop :=
  ∀ n, P8697338059086146243.a n = A356163 (n + 1)

end A356163

/-! ## A356163.P18356967370032592793

`A036288(n+1)%2`
-/

namespace A356163.P18356967370032592793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036288 (n + 1)) 2

end

end A356163.P18356967370032592793

namespace A356163

/-- `A036288(n+1)%2` -/
def P18356967370032592793.Spec : Prop :=
  ∀ n, P18356967370032592793.a n = A356163 (n + 1)

end A356163

/-! ## A356163.P18423521310954100549

`A332993(n+1)%2`
-/

namespace A356163.P18423521310954100549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332993 (n + 1)) 2

end

end A356163.P18423521310954100549

namespace A356163

/-- `A332993(n+1)%2` -/
def P18423521310954100549.Spec : Prop :=
  ∀ n, P18423521310954100549.a n = A356163 (n + 1)

end A356163

/-! ## A356163.P4733127925865127975

`A348977(n+1)%2`
-/

namespace A356163.P4733127925865127975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348977 (n + 1)) 2

end

end A356163.P4733127925865127975

namespace A356163

/-- `A348977(n+1)%2` -/
def P4733127925865127975.Spec : Prop :=
  ∀ n, P4733127925865127975.a n = A356163 (n + 1)

end A356163

/-! ## A356163.P15745655847635731060

`A367502(n+1)%2`
-/

namespace A356163.P15745655847635731060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367502 (n + 1)) 2

end

end A356163.P15745655847635731060

namespace A356163

/-- `A367502(n+1)%2` -/
def P15745655847635731060.Spec : Prop :=
  ∀ n, P15745655847635731060.a n = A356163 (n + 1)

end A356163

/-! ## A356163.P9020319888169692315

`gcd(2, Δ[A025281(n)])-1`
-/

namespace A356163.P9020319888169692315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (f1 (n + 1) - f1 n) : ℤ) - 1

end

end A356163.P9020319888169692315

namespace A356163

/-- `gcd(2, Δ[A025281(n)])-1` -/
def P9020319888169692315.Spec : Prop :=
  ∀ n, P9020319888169692315.a n = A356163 (n + 1)

end A356163

/-! ## A356163.P12127362961108484588

`val(A074373(n+1)+2, 2)`
-/

namespace A356163.P12127362961108484588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074373 (n + 1) + 2).toNat 2

end

end A356163.P12127362961108484588

namespace A356163

/-- `val(A074373(n+1)+2, 2)` -/
def P12127362961108484588.Spec : Prop :=
  ∀ n, (P12127362961108484588.a n : ℤ) = A356163 (n + 1)

end A356163

/-! ## A356163.P3670001517778007462

`and(1, A071321(n+1)+1)`
-/

namespace A356163.P3670001517778007462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A071321 (n + 1) + 1)

end

end A356163.P3670001517778007462

namespace A356163

/-- `and(1, A071321(n+1)+1)` -/
def P3670001517778007462.Spec : Prop :=
  ∀ n, P3670001517778007462.a n = A356163 (n + 1)

end A356163

/-! ## A356163.P4307121792614853563

`and(1, A087436(n+1)+1)`
-/

namespace A356163.P4307121792614853563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A087436 (n + 1) + 1)

end

end A356163.P4307121792614853563

namespace A356163

/-- `and(1, A087436(n+1)+1)` -/
def P4307121792614853563.Spec : Prop :=
  ∀ n, P4307121792614853563.a n = A356163 (n + 1)

end A356163

/-! ## A356163.P14708687114032345106

`and(1, A224787(n+1)+1)`
-/

namespace A356163.P14708687114032345106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A224787 (n + 1) + 1)

end

end A356163.P14708687114032345106

namespace A356163

/-- `and(1, A224787(n+1)+1)` -/
def P14708687114032345106.Spec : Prop :=
  ∀ n, P14708687114032345106.a n = A356163 (n + 1)

end A356163

/-! ## A356163.P11408575003883444310

`and(1, A075254(n+1)+n)`
-/

namespace A356163.P11408575003883444310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A075254 (n + 1) + (n : ℤ))

end

end A356163.P11408575003883444310

namespace A356163

/-- `and(1, A075254(n+1)+n)` -/
def P11408575003883444310.Spec : Prop :=
  ∀ n, P11408575003883444310.a n = A356163 (n + 1)

end A356163

/-! ## A356163.P12576356071931308763

`and(1, A075255(n+1)+n)`
-/

namespace A356163.P12576356071931308763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A075255 (n + 1) + (n : ℤ))

end

end A356163.P12576356071931308763

namespace A356163

/-- `and(1, A075255(n+1)+n)` -/
def P12576356071931308763.Spec : Prop :=
  ∀ n, P12576356071931308763.a n = A356163 (n + 1)

end A356163

/-! ## A356163.P9631288538352454726

`and(1, A359768(n+1)+n)`
-/

namespace A356163.P9631288538352454726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359768 (n + 1) + (n : ℤ))

end

end A356163.P9631288538352454726

namespace A356163

/-- `and(1, A359768(n+1)+n)` -/
def P9631288538352454726.Spec : Prop :=
  ∀ n, P9631288538352454726.a n = A356163 (n + 1)

end A356163

/-! ## A356163.P2395722361343341068

`val(A023889(n+1)²+2, 2)`
-/

namespace A356163.P2395722361343341068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A023889 (n + 1) ^ 2 + 2).toNat 2

end

end A356163.P2395722361343341068

namespace A356163

/-- `val(A023889(n+1)²+2, 2)` -/
def P2395722361343341068.Spec : Prop :=
  ∀ n, (P2395722361343341068.a n : ℤ) = A356163 (n + 1)

end A356163

/-!
# A356164: a(n) is the smallest positive k such that n divides k*A003961(k), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A356164, there is no canonical definition to state claims against.
-/

/-! ## A356164.P5185562383740246061

`n+1-A356165(n+1)`
-/

namespace A356164.P5185562383740246061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A356165 (n + 1)

end

end A356164.P5185562383740246061

/-! ## A356164.P8877086525616540679

`A024000(A356165(n+1))+n`
-/

namespace A356164.P8877086525616540679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A356165 (n + 1)).toNat + (n : ℤ)

end

end A356164.P8877086525616540679

/-! ## A356164.P16066244083778922762

`lcm(A006519(n+1), A079707(A356168(n+1)))`
-/

namespace A356164.P16066244083778922762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A079707 (A356168 (n + 1)).toNat)

end

end A356164.P16066244083778922762

/-! ## A356164.P3995642260602553748

`lcm(A079707(1-A356169(n+1)+n), A356166(n+1))`
-/

namespace A356164.P3995642260602553748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A079707 (1 - A356169 (n + 1) + (n : ℤ)).toNat) (A356166 (n + 1))

end

end A356164.P3995642260602553748

/-!
# A356165: a(n) = n minus the smallest positive k such that n divides k*A003961(k), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A356165, there is no canonical definition to state claims against.
-/

/-! ## A356165.P14722722302770895634

`n+1-A356164(n+1)`
-/

namespace A356165.P14722722302770895634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A356164 (n + 1)

end

end A356165.P14722722302770895634

/-! ## A356165.P18038763862630479103

`A024000(A356164(n+1))+n`
-/

namespace A356165.P18038763862630479103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A356164 (n + 1)).toNat + (n : ℤ)

end

end A356165.P18038763862630479103

/-! ## A356165.P18062447087976022287

`A001489(A356164(n+1))+A000027(n+1)`
-/

namespace A356165.P18062447087976022287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A356164 (n + 1)).toNat + A000027 (n + 1)

end

end A356165.P18062447087976022287

/-! ## A356165.P17335299597401905599

`A328399(2*n)+A001489(A356164(n+1))`
-/

namespace A356165.P17335299597401905599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * n) + A001489 (A356164 (n + 1)).toNat

end

end A356165.P17335299597401905599

/-! ## A356165.P4166085817323334853

`and(1, A211386(n))+A001489(A356164(n+1))+n`
-/

namespace A356165.P4166085817323334853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A211386 n) + (A001489 (A356164 (n + 1)).toNat + (n : ℤ))

end

end A356165.P4166085817323334853

/-!
# A356166: Greatest common divisor of n and the smallest positive k such that n divides k*A003961(k), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A356166, there is no canonical definition to state claims against.
-/

/-! ## A356166.P10496467890867398759

`gcd(n+1, A356164(n+1))`
-/

namespace A356166.P10496467890867398759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A356164 (n + 1))

end

end A356166.P10496467890867398759

/-! ## A356166.P4895000441975189094

`gcd(n+1, A356165(A103517(n)))`
-/

namespace A356166.P4895000441975189094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A356165 (A103517 n).toNat)

end

end A356166.P4895000441975189094

/-! ## A356166.P9904347558855307155

`gcd(A000027(n+1), A356165(n+1))`
-/

namespace A356166.P9904347558855307155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A356165 (n + 1))

end

end A356166.P9904347558855307155

/-! ## A356166.P18190231285692073064

`gcd(2*A356165(n+1), A061019(n+1))`
-/

namespace A356166.P18190231285692073064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A356165 (n + 1)) (A061019 (n + 1))

end

end A356166.P18190231285692073064

/-! ## A356166.P10743587631383628946

`gcd(1-A356165(n+1)+n, A131738(n))`
-/

namespace A356166.P10743587631383628946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A356165 (n + 1) + (n : ℤ)) (A131738 n)

end

end A356166.P10743587631383628946

/-! ## A356166.P2766615698596964045

`gcd(A005843(n+1), A356165(2*(n+1)))/2`
-/

namespace A356166.P2766615698596964045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A005843 (n + 1)) (A356165 (2 * (n + 1))) : ℚ) / 2

end

end A356166.P2766615698596964045

/-! ## A356166.P2031554859502721523

`A006519(A191002(n+1)/A330749(n+1))*A330749(n+1)`
-/

namespace A356166.P2031554859502721523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (SequenceMachineLib.roundAway ((A191002 (n + 1) : ℚ) / (A330749 (n + 1) : ℚ))).toNat * A330749 (n + 1)

end

end A356166.P2031554859502721523

/-!
# A356167: Greatest common divisor of A003961(n) and the smallest positive k such that n divides k*A003961(k), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A356167, there is no canonical definition to state claims against.
-/

/-! ## A356167.P4137794334083922936

`gcd(A003961(n+1), A356164(n+1))`
-/

namespace A356167.P4137794334083922936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1)) (A356164 (n + 1))

end

end A356167.P4137794334083922936

/-! ## A356167.P1128829097276450078

`gcd(A336853(n+1)+1+n, 1-A356165(n+1)+n)`
-/

namespace A356167.P1128829097276450078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A336853 (n + 1) + 1 + (n : ℤ)) (1 - A356165 (n + 1) + (n : ℤ))

end

end A356167.P1128829097276450078

/-! ## A356167.P18313145959142277939

`gcd(A000265(A356164(n+1)), A283980(n+1))`
-/

namespace A356167.P18313145959142277939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (A356164 (n + 1)).toNat) (A283980 (n + 1))

end

end A356167.P18313145959142277939

/-! ## A356167.P2888268416699431151

`gcd(A336853(n+1)+1+n, A356164(A103517(n)))`
-/

namespace A356167.P2888268416699431151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A336853 (n + 1) + 1 + (n : ℤ)) (A356164 (A103517 n).toNat)

end

end A356167.P2888268416699431151

/-! ## A356167.P4746856706931001536

`gcd(A297166(2*(n+1)), A356164(2*(n+1)))`
-/

namespace A356167.P4746856706931001536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A297166 (2 * (n + 1))) (A356164 (2 * (n + 1)))

end

end A356167.P4746856706931001536

/-! ## A356167.P12871353521815946551

`gcd(A141566(n+1), A250479(n+1))`
-/

namespace A356167.P12871353521815946551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141566 (n + 1)) (A250479 (n + 1))

end

end A356167.P12871353521815946551

/-!
# A356168: Greatest common divisor of n and A003961(A356164(n)), where A356164(n) is the smallest positive k such that n divides k*A003961(k), and A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A356168, there is no canonical definition to state claims against.
-/

/-! ## A356168.P817507625262608821

`n+1-A356169(n+1)`
-/

namespace A356168.P817507625262608821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A356169 (n + 1)

end

end A356168.P817507625262608821

/-! ## A356168.P15137736538643660198

`gcd(A030640(n), A356169(n+1))`
-/

namespace A356168.P15137736538643660198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030640 n) (A356169 (n + 1))

end

end A356168.P15137736538643660198

/-! ## A356168.P11362143844367734127

`gcd(n+1, A003961(A356164(n+1)))`
-/

namespace A356168.P11362143844367734127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003961 (A356164 (n + 1)).toNat)

end

end A356168.P11362143844367734127

/-! ## A356168.P8185881161118099632

`gcd(A003961(A356164(n+1)), A131738(n))`
-/

namespace A356168.P8185881161118099632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (A356164 (n + 1)).toNat) (A131738 n)

end

end A356168.P8185881161118099632

/-! ## A356168.P11544435370623148841

`gcd(A045965(A356164(n+1)), A103517(n))`
-/

namespace A356168.P11544435370623148841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045965 (A356164 (n + 1)).toNat) (A103517 n)

end

end A356168.P11544435370623148841

/-! ## A356168.P17174560180567600958

`gcd(A000265(n+1), A283980(A356164(n+1)))`
-/

namespace A356168.P17174560180567600958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (n + 1)) (A283980 (A356164 (n + 1)).toNat)

end

end A356168.P17174560180567600958

/-! ## A356168.P9448504285950134516

`A356166(A003961((n+1)*A356164(n+1)))`
-/

namespace A356168.P9448504285950134516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356166 (A003961 ((n + 1 : ℤ) * A356164 (n + 1)).toNat).toNat

end

end A356168.P9448504285950134516

/-!
# A356169: a(n) = n - gcd(n, A003961(A356164(n))), where A356164(n) is the smallest positive k such that n divides k*A003961(k), and A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A356169, there is no canonical definition to state claims against.
-/

/-! ## A356169.P17999037809405794615

`n+1-A356168(n+1)`
-/

namespace A356169.P17999037809405794615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A356168 (n + 1)

end

end A356169.P17999037809405794615

/-! ## A356169.P1791166477904722352

`n+1-gcd(n+1, A003961(A356164(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356169.P1791166477904722352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.gcd (n + 1 : ℤ) (A003961 (A356164 (n + 1)).toNat) : ℤ)

end

end A356169.P1791166477904722352

/-! ## A356169.P4699216505178929979

`A024000(A356168(n+1))+n`
-/

namespace A356169.P4699216505178929979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A356168 (n + 1)).toNat + (n : ℤ)

end

end A356169.P4699216505178929979

/-! ## A356169.P16090463382351299166

`(n*A356168(n+1))%A103517(n)`
-/

namespace A356169.P16090463382351299166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A356168 (n + 1)) (A103517 n)

end

end A356169.P16090463382351299166

/-! ## A356169.P1989525495426398020

`A001057(2*A356168(n+1))+n+1`
-/

namespace A356169.P1989525495426398020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A356168 (n + 1)).toNat + (n + 1 : ℤ)

end

end A356169.P1989525495426398020

/-!
# A356170: a(n) = 1 if A001222(n) == 2*A007814(n), and otherwise 0, where A001222 is bigomega (number of prime factors with multiplicity) and A007814 is the 2-adic valuation of n.

The programs for A356170, the canonical program `A356170.P16524579588849066302` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356170 has offset 1).

The definition of A356170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356170.P6377671859995749253

`char[A072978(n+1)-1]`
-/

namespace A356170.P6377671859995749253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072978 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A356170.P6377671859995749253

namespace A356170

/-- `char[A072978(n+1)-1]` -/
def P6377671859995749253.Spec : Prop :=
  ∀ n, (P6377671859995749253.a n : ℤ) = A356170 (n + 1)

end A356170

/-! ## A356170.P16524579588849066302

`char[A123667(2*n+1)-1]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A356170

/-- `char[A123667(2*n+1)-1]` -/
def P16524579588849066302.Spec : Prop :=
  ∀ n, (P16524579588849066302.a n : ℤ) = A356170 (n + 1)

theorem P16524579588849066302.correct : P16524579588849066302.Spec := by
  intro n
  simp only [A356170, Nat.add_sub_cancel]

end A356170

/-! ## A356170.P11347722267061853652

`char[eq[A007814(n+1), A087436(n+1)]]`
-/

namespace A356170.P11347722267061853652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A356170.P11347722267061853652

namespace A356170

/-- `char[eq[A007814(n+1), A087436(n+1)]]` -/
def P11347722267061853652.Spec : Prop :=
  ∀ n, (P11347722267061853652.a n : ℤ) = A356170 (n + 1)

end A356170

/-! ## A356170.P13151770115960634961

`A101605(A307266(n+1))`
-/

namespace A356170.P13151770115960634961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A307266 (n + 1)).toNat

end

end A356170.P13151770115960634961

namespace A356170

/-- `A101605(A307266(n+1))` -/
def P13151770115960634961.Spec : Prop :=
  ∀ n, P13151770115960634961.a n = A356170 (n + 1)

end A356170

/-! ## A356170.P13188648410868372025

`A353370(A318885(n+1))`
-/

namespace A356170.P13188648410868372025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353370 (A318885 (n + 1)).toNat

end

end A356170.P13188648410868372025

namespace A356170

/-- `A353370(A318885(n+1))` -/
def P13188648410868372025.Spec : Prop :=
  ∀ n, P13188648410868372025.a n = A356170 (n + 1)

end A356170

/-! ## A356170.P5759022340618208895

`A353370(A290641(n+1))`
-/

namespace A356170.P5759022340618208895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353370 (A290641 (n + 1)).toNat

end

end A356170.P5759022340618208895

namespace A356170

/-- `A353370(A290641(n+1))` -/
def P5759022340618208895.Spec : Prop :=
  ∀ n, P5759022340618208895.a n = A356170 (n + 1)

end A356170

/-! ## A356170.P4549478365326844689

`A353370(A064988(n+1))`
-/

namespace A356170.P4549478365326844689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353370 (A064988 (n + 1)).toNat

end

end A356170.P4549478365326844689

namespace A356170

/-- `A353370(A064988(n+1))` -/
def P4549478365326844689.Spec : Prop :=
  ∀ n, P4549478365326844689.a n = A356170 (n + 1)

end A356170

/-! ## A356170.P6591217345790665855

`A266611(A360459(n+1))`
-/

namespace A356170.P6591217345790665855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266611 (A360459 (n + 1)).toNat

end

end A356170.P6591217345790665855

namespace A356170

/-- `A266611(A360459(n+1))` -/
def P6591217345790665855.Spec : Prop :=
  ∀ n, P6591217345790665855.a n = A356170 (n + 1)

end A356170

/-! ## A356170.P10093033267539169727

`and(A187595(n+1), A320656(n+1))`
-/

namespace A356170.P10093033267539169727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187595 (n + 1)) (A320656 (n + 1))

end

end A356170.P10093033267539169727

namespace A356170

/-- `and(A187595(n+1), A320656(n+1))` -/
def P10093033267539169727.Spec : Prop :=
  ∀ n, P10093033267539169727.a n = A356170 (n + 1)

end A356170

/-!
# A356171: Odd numbers that are not divisible by two consecutive prime numbers.

The programs for A356171, the canonical program `A356171.P7814798244112618989` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356171 has offset 1).

The definition of A356171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356171.P15879721318718443783

`record[A356168(n+1)]`
-/

namespace A356171.P15879721318718443783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356171.P15879721318718443783

namespace A356171

/-- `record[A356168(n+1)]` -/
def P15879721318718443783.Spec : Prop :=
  ∀ n, P15879721318718443783.a n = A356171 (n + 1)

end A356171

/-! ## A356171.P15453502049818144875

`eq[1, A356166(n+1)]+1`
-/

namespace A356171.P15453502049818144875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356171.P15453502049818144875

namespace A356171

/-- `eq[1, A356166(n+1)]+1` -/
def P15453502049818144875.Spec : Prop :=
  ∀ n, (P15453502049818144875.a n : ℤ) = A356171 (n + 1)

end A356171

/-! ## A356171.P18126440073129049580

`eq[1, A356172(n+1)]+1`
-/

namespace A356171.P18126440073129049580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356171.P18126440073129049580

namespace A356171

/-- `eq[1, A356172(n+1)]+1` -/
def P18126440073129049580.Spec : Prop :=
  ∀ n, (P18126440073129049580.a n : ℤ) = A356171 (n + 1)

end A356171

/-! ## A356171.P16080428381289350114

`record[1-A356169(n+1)+n]`
-/

namespace A356171.P16080428381289350114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A356169 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356171.P16080428381289350114

namespace A356171

/-- `record[1-A356169(n+1)+n]` -/
def P16080428381289350114.Spec : Prop :=
  ∀ n, P16080428381289350114.a n = A356171 (n + 1)

end A356171

/-! ## A356171.P7814798244112618989

`eq[(-1)^n, A330749(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A356171

/-- `eq[(-1)^n, A330749(n+1)]+1` -/
def P7814798244112618989.Spec : Prop :=
  ∀ n, (P7814798244112618989.a n : ℤ) = A356171 (n + 1)

theorem P7814798244112618989.correct : P7814798244112618989.Spec := by
  intro n
  simp only [A356171, Nat.add_sub_cancel]

end A356171

/-! ## A356171.P15122633633730854931

`eq[n, A356168(lcm(2, xor(n, -2))/2)]`
-/

namespace A356171.P15122633633730854931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356168 (SequenceMachineLib.roundAway ((Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356171.P15122633633730854931

namespace A356171

/-- `eq[n, A356168(lcm(2, xor(n, -2))/2)]` -/
def P15122633633730854931.Spec : Prop :=
  ∀ n, (P15122633633730854931.a n : ℤ) = A356171 (n + 1)

end A356171

/-! ## A356171.P4340292906423283449

`record[(2*n+1)/A330749(2*n+1)]`
-/

namespace A356171.P4340292906423283449
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A330749 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356171.P4340292906423283449

namespace A356171

/-- `record[(2*n+1)/A330749(2*n+1)]` -/
def P4340292906423283449.Spec : Prop :=
  ∀ n, P4340292906423283449.a n = (A356171 (n + 1) : ℚ)

end A356171

/-! ## A356171.P16167443145458445969

`record[A356169(2*(n+1))*A356172(n+1)]`
-/

namespace A356171.P16167443145458445969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356169 (2 * (n + 1)) * A356172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356171.P16167443145458445969

namespace A356171

/-- `record[A356169(2*(n+1))*A356172(n+1)]` -/
def P16167443145458445969.Spec : Prop :=
  ∀ n, P16167443145458445969.a n = A356171 (n + 1)

end A356171

/-! ## A356171.P6250134263903768860

`record[A348990(2*n+1)]`
-/

namespace A356171.P6250134263903768860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348990 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356171.P6250134263903768860

namespace A356171

/-- `record[A348990(2*n+1)]` -/
def P6250134263903768860.Spec : Prop :=
  ∀ n, P6250134263903768860.a n = A356171 (n + 1)

end A356171

/-! ## A356171.P14856635985292599310

`filter[A004273(n+1), A356172(#)]`
-/

namespace A356171.P14856635985292599310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A356171.P14856635985292599310

namespace A356171

/-- `filter[A004273(n+1), A356172(#)]` -/
def P14856635985292599310.Spec : Prop :=
  ∀ n, P14856635985292599310.a n = A356171 (n + 1)

end A356171

/-! ## A356171.P4470316387554198708

`filter[A004273(n+1), A356173(#)]`
-/

namespace A356171.P4470316387554198708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A356171.P4470316387554198708

namespace A356171

/-- `filter[A004273(n+1), A356173(#)]` -/
def P4470316387554198708.Spec : Prop :=
  ∀ n, P4470316387554198708.a n = A356171 (n + 1)

end A356171

/-! ## A356171.P1495448122659722668

`filter[A004280(n+1), A356172(#)]`
-/

namespace A356171.P1495448122659722668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A356171.P1495448122659722668

namespace A356171

/-- `filter[A004280(n+1), A356172(#)]` -/
def P1495448122659722668.Spec : Prop :=
  ∀ n, P1495448122659722668.a n = A356171 (n + 1)

end A356171

/-! ## A356171.P17543294644404147456

`filter[A060747(n+1), A356172(#)]`
-/

namespace A356171.P17543294644404147456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A356171.P17543294644404147456

namespace A356171

/-- `filter[A060747(n+1), A356172(#)]` -/
def P17543294644404147456.Spec : Prop :=
  ∀ n, P17543294644404147456.a n = A356171 (n + 1)

end A356171

/-! ## A356171.P13016504937586673530

`filter[A060747(n+1), A356173(#)]`
-/

namespace A356171.P13016504937586673530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A356171.P13016504937586673530

namespace A356171

/-- `filter[A060747(n+1), A356173(#)]` -/
def P13016504937586673530.Spec : Prop :=
  ∀ n, P13016504937586673530.a n = A356171 (n + 1)

end A356171

/-! ## A356171.P4988682850573287889

`filter[A004281(n), A356172(#)]`
-/

namespace A356171.P4988682850573287889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A356171.P4988682850573287889

namespace A356171

/-- `filter[A004281(n), A356172(#)]` -/
def P4988682850573287889.Spec : Prop :=
  ∀ n, P4988682850573287889.a n = A356171 (n + 1)

end A356171

/-! ## A356171.P3608564528715324162

`filter[A004274(n+1), A356172(#)]`
-/

namespace A356171.P3608564528715324162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A356171.P3608564528715324162

namespace A356171

/-- `filter[A004274(n+1), A356172(#)]` -/
def P3608564528715324162.Spec : Prop :=
  ∀ n, P3608564528715324162.a n = A356171 (n + 1)

end A356171

/-! ## A356171.P1459551729657428301

`filter[A004276(n+1), A356172(#)]`
-/

namespace A356171.P1459551729657428301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A356171.P1459551729657428301

namespace A356171

/-- `filter[A004276(n+1), A356172(#)]` -/
def P1459551729657428301.Spec : Prop :=
  ∀ n, P1459551729657428301.a n = A356171 (n + 1)

end A356171

/-! ## A356171.P7030883822353727824

`filter[A053460(n+1), A356172(#)]`
-/

namespace A356171.P7030883822353727824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A356171.P7030883822353727824

namespace A356171

/-- `filter[A053460(n+1), A356172(#)]` -/
def P7030883822353727824.Spec : Prop :=
  ∀ n, P7030883822353727824.a n = A356171 (n + 1)

end A356171

/-!
# A356172: a(n) = 1 if n is odd and not divisible by two consecutive prime numbers, otherwise 0.

The programs for A356172, the canonical program `A356172.P9558553611360781644` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356172 has offset 1).

The definition of A356172 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356173, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356172.P9558553611360781644

`A000035(n+1)*A356173(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A356172

/-- `A000035(n+1)*A356173(n+1)` -/
def P9558553611360781644.Spec : Prop :=
  ∀ n, P9558553611360781644.a n = A356172 (n + 1)

theorem P9558553611360781644.correct : P9558553611360781644.Spec := by
  intro n
  simp only [A356172, Nat.add_sub_cancel]

end A356172

/-! ## A356172.P2252125896683498568

`floor(acot(A356169(n+1)))`
-/

namespace A356172.P2252125896683498568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A356169 (n + 1) : ℝ)⌋

end

end A356172.P2252125896683498568

namespace A356172

/-- `floor(acot(A356169(n+1)))` -/
def P2252125896683498568.Spec : Prop :=
  ∀ n, P2252125896683498568.a n = A356172 (n + 1)

end A356172

/-! ## A356172.P4073147421731700744

`round(acot(A356166(n+1)))`
-/

namespace A356172.P4073147421731700744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A356166 (n + 1) : ℝ))

end

end A356172.P4073147421731700744

namespace A356172

/-- `round(acot(A356166(n+1)))` -/
def P4073147421731700744.Spec : Prop :=
  ∀ n, P4073147421731700744.a n = A356172 (n + 1)

end A356172

/-! ## A356172.P14535632436545949521

`char[A356171(n+1)-1]`
-/

namespace A356172.P14535632436545949521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356171 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A356172.P14535632436545949521

namespace A356172

/-- `char[A356171(n+1)-1]` -/
def P14535632436545949521.Spec : Prop :=
  ∀ n, (P14535632436545949521.a n : ℤ) = A356172 (n + 1)

end A356172

/-! ## A356172.P13173563878411992777

`char[lt[n, A356168(n+1)]]`
-/

namespace A356172.P13173563878411992777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356168 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A356172.P13173563878411992777

namespace A356172

/-- `char[lt[n, A356168(n+1)]]` -/
def P13173563878411992777.Spec : Prop :=
  ∀ n, (P13173563878411992777.a n : ℤ) = A356172 (n + 1)

end A356172

/-! ## A356172.P16058876105804367102

`and(n+1, A356173(n+1))`
-/

namespace A356172.P16058876105804367102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A356173 (n + 1))

end

end A356172.P16058876105804367102

namespace A356172

/-- `and(n+1, A356173(n+1))` -/
def P16058876105804367102.Spec : Prop :=
  ∀ n, P16058876105804367102.a n = A356172 (n + 1)

end A356172

/-! ## A356172.P11610059154921463936

`round(1/A356166(2*(n+1)))`
-/

namespace A356172.P11610059154921463936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A356166 (2 * (n + 1)) : ℚ))

end

end A356172.P11610059154921463936

namespace A356172

/-- `round(1/A356166(2*(n+1)))` -/
def P11610059154921463936.Spec : Prop :=
  ∀ n, P11610059154921463936.a n = A356172 (n + 1)

end A356172

/-! ## A356172.P8263230470685908120

`A356173(A165998(n))`
-/

namespace A356172.P8263230470685908120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356173 (A165998 n).toNat

end

end A356172.P8263230470685908120

namespace A356172

/-- `A356173(A165998(n))` -/
def P8263230470685908120.Spec : Prop :=
  ∀ n, P8263230470685908120.a n = A356172 (n + 1)

end A356172

/-! ## A356172.P4242882490002406355

`A000007(A356169(n+1))`
-/

namespace A356172.P4242882490002406355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A356169 (n + 1)).toNat

end

end A356172.P4242882490002406355

namespace A356172

/-- `A000007(A356169(n+1))` -/
def P4242882490002406355.Spec : Prop :=
  ∀ n, P4242882490002406355.a n = A356172 (n + 1)

end A356172

/-! ## A356172.P18176490100146192392

`A128882(C(2, A356166(n+1)))`
-/

namespace A356172.P18176490100146192392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 (Nat.choose 2 (A356166 (n + 1)).toNat)

end

end A356172.P18176490100146192392

namespace A356172

/-- `A128882(C(2, A356166(n+1)))` -/
def P18176490100146192392.Spec : Prop :=
  ∀ n, P18176490100146192392.a n = A356172 (n + 1)

end A356172

/-! ## A356172.P7683921241684276546

`A356120(C(2, A356166(n+1)))`
-/

namespace A356172.P7683921241684276546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356120 (Nat.choose 2 (A356166 (n + 1)).toNat)

end

end A356172.P7683921241684276546

namespace A356172

/-- `A356120(C(2, A356166(n+1)))` -/
def P7683921241684276546.Spec : Prop :=
  ∀ n, P7683921241684276546.a n = A356172 (n + 1)

end A356172

/-! ## A356172.P4232536041305941350

`A059841(n)*A356173(n+1)`
-/

namespace A356172.P4232536041305941350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A356173 (n + 1)

end

end A356172.P4232536041305941350

namespace A356172

/-- `A059841(n)*A356173(n+1)` -/
def P4232536041305941350.Spec : Prop :=
  ∀ n, P4232536041305941350.a n = A356172 (n + 1)

end A356172

/-! ## A356172.P4491322655183615302

`∑{d}[A356166(n+1), A008683(#)]`
-/

namespace A356172.P4491322655183615302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A356172.P4491322655183615302

namespace A356172

/-- `∑{d}[A356166(n+1), A008683(#)]` -/
def P4491322655183615302.Spec : Prop :=
  ∀ n, P4491322655183615302.a n = A356172 (n + 1)

end A356172

/-! ## A356172.P5860701686478545394

`∏{d}[A356169(n+1), A001221(#)]`
-/

namespace A356172.P5860701686478545394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A356172.P5860701686478545394

namespace A356172

/-- `∏{d}[A356169(n+1), A001221(#)]` -/
def P5860701686478545394.Spec : Prop :=
  ∀ n, P5860701686478545394.a n = A356172 (n + 1)

end A356172

/-! ## A356172.P4164242151109773847

`∏{d}[A356169(n+1), A001222(#)]`
-/

namespace A356172.P4164242151109773847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A356172.P4164242151109773847

namespace A356172

/-- `∏{d}[A356169(n+1), A001222(#)]` -/
def P4164242151109773847.Spec : Prop :=
  ∀ n, P4164242151109773847.a n = A356172 (n + 1)

end A356172

/-! ## A356172.P14905782109189410577

`∏{d}[A356169(n+1), A356169(#)]`
-/

namespace A356172.P14905782109189410577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A356169 d

end

end A356172.P14905782109189410577

namespace A356172

/-- `∏{d}[A356169(n+1), A356169(#)]` -/
def P14905782109189410577.Spec : Prop :=
  ∀ n, P14905782109189410577.a n = A356172 (n + 1)

end A356172

/-! ## A356172.P2203742405025633203

`A260390(n+1)*A356173(n+1)`
-/

namespace A356172.P2203742405025633203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260390 (n + 1) * A356173 (n + 1)

end

end A356172.P2203742405025633203

namespace A356172

/-- `A260390(n+1)*A356173(n+1)` -/
def P2203742405025633203.Spec : Prop :=
  ∀ n, P2203742405025633203.a n = A356172 (n + 1)

end A356172

/-! ## A356172.P9797718175283283703

`C(A001222(n+1), 2*A356169(n+1))`
-/

namespace A356172.P9797718175283283703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat (2 * A356169 (n + 1)).toNat

end

end A356172.P9797718175283283703

namespace A356172

/-- `C(A001222(n+1), 2*A356169(n+1))` -/
def P9797718175283283703.Spec : Prop :=
  ∀ n, (P9797718175283283703.a n : ℤ) = A356172 (n + 1)

end A356172

/-! ## A356172.P3061432698265821671

`(A262693(2*n+1)/2)^A356169(n+1)`
-/

namespace A356172.P3061432698265821671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A262693 (2 * n + 1) : ℚ) / 2) ^ (A356169 (n + 1) : ℤ)

end

end A356172.P3061432698265821671

namespace A356172

/-- `(A262693(2*n+1)/2)^A356169(n+1)` -/
def P3061432698265821671.Spec : Prop :=
  ∀ n, P3061432698265821671.a n = (A356172 (n + 1) : ℚ)

end A356172

/-! ## A356172.P17209065553387034363

`C(A001222(A356122(n)), A356169(n+1))`
-/

namespace A356172.P17209065553387034363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A356122 n).toNat).toNat (A356169 (n + 1)).toNat

end

end A356172.P17209065553387034363

namespace A356172

/-- `C(A001222(A356122(n)), A356169(n+1))` -/
def P17209065553387034363.Spec : Prop :=
  ∀ n, (P17209065553387034363.a n : ℤ) = A356172 (n + 1)

end A356172

/-!
# A356173: a(n) = 1 if n is not divisible by two consecutive prime numbers, otherwise 0.

The programs for A356173, the canonical program `A356173.P8720124054726278930` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356173 has offset 1).

The definition of A356173 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296210, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356173.P8720124054726278930

`1-A296210(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A356173

/-- `1-A296210(n+1)` -/
def P8720124054726278930.Spec : Prop :=
  ∀ n, P8720124054726278930.a n = A356173 (n + 1)

theorem P8720124054726278930.correct : P8720124054726278930.Spec := by
  intro n
  simp only [A356173, Nat.add_sub_cancel]

end A356173

/-! ## A356173.P13248983760512485813

`floor(1/A322361(n+1))`
-/

namespace A356173.P13248983760512485813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A322361 (n + 1) : ℚ)⌋

end

end A356173.P13248983760512485813

namespace A356173

/-- `floor(1/A322361(n+1))` -/
def P13248983760512485813.Spec : Prop :=
  ∀ n, P13248983760512485813.a n = A356173 (n + 1)

end A356173

/-! ## A356173.P18063503658171884256

`floor(1/A330749(n+1))`
-/

namespace A356173.P18063503658171884256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A330749 (n + 1) : ℚ)⌋

end

end A356173.P18063503658171884256

namespace A356173

/-- `floor(1/A330749(n+1))` -/
def P18063503658171884256.Spec : Prop :=
  ∀ n, P18063503658171884256.a n = A356173 (n + 1)

end A356173

/-! ## A356173.P5759185351157036714

`char[A319630(n+1)-1]`
-/

namespace A356173.P5759185351157036714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A356173.P5759185351157036714

namespace A356173

/-- `char[A319630(n+1)-1]` -/
def P5759185351157036714.Spec : Prop :=
  ∀ n, (P5759185351157036714.a n : ℤ) = A356173 (n + 1)

end A356173

/-! ## A356173.P4583422802766472928

`char[lt[A300820(n+1), 2]]`
-/

namespace A356173.P4583422802766472928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A356173.P4583422802766472928

namespace A356173

/-- `char[lt[A300820(n+1), 2]]` -/
def P4583422802766472928.Spec : Prop :=
  ∀ n, (P4583422802766472928.a n : ℤ) = A356173 (n + 1)

end A356173

/-! ## A356173.P17446287829501449647

`char[lt[n, A319626(n+1)]]`
-/

namespace A356173.P17446287829501449647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A356173.P17446287829501449647

namespace A356173

/-- `char[lt[n, A319626(n+1)]]` -/
def P17446287829501449647.Spec : Prop :=
  ∀ n, (P17446287829501449647.a n : ℤ) = A356173 (n + 1)

end A356173

/-! ## A356173.P13552706417735749470

`char[lt[n, A348990(n+1)]]`
-/

namespace A356173.P13552706417735749470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348990 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A356173.P13552706417735749470

namespace A356173

/-- `char[lt[n, A348990(n+1)]]` -/
def P13552706417735749470.Spec : Prop :=
  ∀ n, (P13552706417735749470.a n : ℤ) = A356173 (n + 1)

end A356173

/-! ## A356173.P8233531106767155842

`C(A287170(n+1), ∑{p}[n+1, gcd(n, #)])`
-/

namespace A356173.P8233531106767155842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287170 (n + 1)).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)

end

end A356173.P8233531106767155842

namespace A356173

/-- `C(A287170(n+1), ∑{p}[n+1, gcd(n, #)])` -/
def P8233531106767155842.Spec : Prop :=
  ∀ n, (P8233531106767155842.a n : ℤ) = A356173 (n + 1)

end A356173

/-! ## A356173.P15542118647262624456

`A060576(A297173(n+1))`
-/

namespace A356173.P15542118647262624456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A297173 (n + 1)).toNat

end

end A356173.P15542118647262624456

namespace A356173

/-- `A060576(A297173(n+1))` -/
def P15542118647262624456.Spec : Prop :=
  ∀ n, P15542118647262624456.a n = A356173 (n + 1)

end A356173

/-! ## A356173.P684027002938528424

`A049283(A322361(n+1))`
-/

namespace A356173.P684027002938528424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A322361 (n + 1)).toNat

end

end A356173.P684027002938528424

namespace A356173

/-- `A049283(A322361(n+1))` -/
def P684027002938528424.Spec : Prop :=
  ∀ n, P684027002938528424.a n = A356173 (n + 1)

end A356173

/-! ## A356173.P18239659470476786578

`A356172(A328915(n+1))`
-/

namespace A356173.P18239659470476786578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356172 (A328915 (n + 1)).toNat

end

end A356173.P18239659470476786578

namespace A356173

/-- `A356172(A328915(n+1))` -/
def P18239659470476786578.Spec : Prop :=
  ∀ n, P18239659470476786578.a n = A356173 (n + 1)

end A356173

/-! ## A356173.P16439031044730017809

`A049084(A322361(n+1)+1)`
-/

namespace A356173.P16439031044730017809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A322361 (n + 1) + 1).toNat

end

end A356173.P16439031044730017809

namespace A356173

/-- `A049084(A322361(n+1)+1)` -/
def P16439031044730017809.Spec : Prop :=
  ∀ n, P16439031044730017809.a n = A356173 (n + 1)

end A356173

/-! ## A356173.P9510661408901899788

`A080339(A322361(n+1)+1)`
-/

namespace A356173.P9510661408901899788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A322361 (n + 1) + 1).toNat

end

end A356173.P9510661408901899788

namespace A356173

/-- `A080339(A322361(n+1)+1)` -/
def P9510661408901899788.Spec : Prop :=
  ∀ n, P9510661408901899788.a n = A356173 (n + 1)

end A356173

/-! ## A356173.P14524706296611961248

`A000007(A330749(n+1)-1)`
-/

namespace A356173.P14524706296611961248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A330749 (n + 1) - 1).toNat

end

end A356173.P14524706296611961248

namespace A356173

/-- `A000007(A330749(n+1)-1)` -/
def P14524706296611961248.Spec : Prop :=
  ∀ n, P14524706296611961248.a n = A356173 (n + 1)

end A356173

/-! ## A356173.P4463326192231889645

`A000007(n*A296210(n+1))`
-/

namespace A356173.P4463326192231889645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A296210 (n + 1)).toNat

end

end A356173.P4463326192231889645

namespace A356173

/-- `A000007(n*A296210(n+1))` -/
def P4463326192231889645.Spec : Prop :=
  ∀ n, P4463326192231889645.a n = A356173 (n + 1)

end A356173

/-! ## A356173.P11867497107602947555

`1-∑{d}[A297173(n+1), A008683(#)]`
-/

namespace A356173.P11867497107602947555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A356173.P11867497107602947555

namespace A356173

/-- `1-∑{d}[A297173(n+1), A008683(#)]` -/
def P11867497107602947555.Spec : Prop :=
  ∀ n, P11867497107602947555.a n = A356173 (n + 1)

end A356173

/-! ## A356173.P12988093732608935830

`∏{e}[A322361(n+1), 1-A322361(#)]`
-/

namespace A356173.P12988093732608935830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - A322361 (Nat.factorization (f1 n).natAbs p))

end

end A356173.P12988093732608935830

namespace A356173

/-- `∏{e}[A322361(n+1), 1-A322361(#)]` -/
def P12988093732608935830.Spec : Prop :=
  ∀ n, P12988093732608935830.a n = A356173 (n + 1)

end A356173

/-! ## A356173.P11794872645367284231

`∏{d}[n*A296210(n+1), A001222(#)]`
-/

namespace A356173.P11794872645367284231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A296210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A356173.P11794872645367284231

namespace A356173

/-- `∏{d}[n*A296210(n+1), A001222(#)]` -/
def P11794872645367284231.Spec : Prop :=
  ∀ n, P11794872645367284231.a n = A356173 (n + 1)

end A356173

/-! ## A356173.P9919763009010541512

`∑{d}[n+1, A008683(#)*A166469((n+1)/#)]`
-/

namespace A356173.P9919763009010541512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A166469 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A356173.P9919763009010541512

namespace A356173

/-- `∑{d}[n+1, A008683(#)*A166469((n+1)/#)]` -/
def P9919763009010541512.Spec : Prop :=
  ∀ n, P9919763009010541512.a n = A356173 (n + 1)

end A356173

/-! ## A356173.P7637761069199366800

`((((A000010(A330749(n+1)+1)+1)%2)²+1)%2)²`
-/

namespace A356173.P7637761069199366800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000010 (A330749 (n + 1) + 1).toNat + 1) 2 ^ 2 + 1) 2 ^ 2

end

end A356173.P7637761069199366800

namespace A356173

/-- `((((A000010(A330749(n+1)+1)+1)%2)²+1)%2)²` -/
def P7637761069199366800.Spec : Prop :=
  ∀ n, P7637761069199366800.a n = A356173 (n + 1)

end A356173

/-!
# A356174: Replace all prime factors p of n with n/p, then take the integer logarithm (A001414).

The programs for A356174, the canonical program `A356174.P7265055002219223617` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356174 has offset 1).

The definition of A356174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356174.P7265055002219223617

`A001414(A072195(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356174

/-- `A001414(A072195(n+1))` -/
def P7265055002219223617.Spec : Prop :=
  ∀ n, P7265055002219223617.a n = A356174 (n + 1)

theorem P7265055002219223617.correct : P7265055002219223617.Spec := by
  intro n
  simp only [A356174, Nat.add_sub_cancel]

end A356174

/-! ## A356174.P16924090868264049340

`A001414((n+1)^(A001222(n+1)-1))`
-/

namespace A356174.P16924090868264049340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A001222 (n + 1) - 1 : ℤ))).toNat

end

end A356174.P16924090868264049340

namespace A356174

/-- `A001414((n+1)^(A001222(n+1)-1))` -/
def P16924090868264049340.Spec : Prop :=
  ∀ n, P16924090868264049340.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P11401628344492264104

`(∑{e}[n+1, #]-1)*∑{p}[n+1, #*val(n+1, #)]`
-/

namespace A356174.P11401628344492264104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1) * ((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A356174.P11401628344492264104

namespace A356174

/-- `(∑{e}[n+1, #]-1)*∑{p}[n+1, #*val(n+1, #)]` -/
def P11401628344492264104.Spec : Prop :=
  ∀ n, P11401628344492264104.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P9811286412992791603

`∑{p}[n+1, #*val(n+1, #)]*A252736(n+1)`
-/

namespace A356174.P9811286412992791603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) * A252736 (n + 1)

end

end A356174.P9811286412992791603

namespace A356174

/-- `∑{p}[n+1, #*val(n+1, #)]*A252736(n+1)` -/
def P9811286412992791603.Spec : Prop :=
  ∀ n, P9811286412992791603.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P6295383669526679506

`∑{p}[n+1, #*val(n+1, #)]*A023443(∑{e}[n+1, #])`
-/

namespace A356174.P6295383669526679506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) * A023443 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A356174.P6295383669526679506

namespace A356174

/-- `∑{p}[n+1, #*val(n+1, #)]*A023443(∑{e}[n+1, #])` -/
def P6295383669526679506.Spec : Prop :=
  ∀ n, P6295383669526679506.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P17975935312093021985

`Δ[A025281(n)]*A252736(n+1)`
-/

namespace A356174.P17975935312093021985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A252736 (n + 1)

end

end A356174.P17975935312093021985

namespace A356174

/-- `Δ[A025281(n)]*A252736(n+1)` -/
def P17975935312093021985.Spec : Prop :=
  ∀ n, P17975935312093021985.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P10946046271271845804

`A349824(n+1)-A001414(n+1)`
-/

namespace A356174.P10946046271271845804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349824 (n + 1) - A001414 (n + 1)

end

end A356174.P10946046271271845804

namespace A356174

/-- `A349824(n+1)-A001414(n+1)` -/
def P10946046271271845804.Spec : Prop :=
  ∀ n, P10946046271271845804.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P2376512967985033957

`A001414(n+1)*A252736(n+1)`
-/

namespace A356174.P2376512967985033957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) * A252736 (n + 1)

end

end A356174.P2376512967985033957

namespace A356174

/-- `A001414(n+1)*A252736(n+1)` -/
def P2376512967985033957.Spec : Prop :=
  ∀ n, P2376512967985033957.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P5345957154369829088

`A252736(n+1)*A352167(n+1)`
-/

namespace A356174.P5345957154369829088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1) * A352167 (n + 1)

end

end A356174.P5345957154369829088

namespace A356174

/-- `A252736(n+1)*A352167(n+1)` -/
def P5345957154369829088.Spec : Prop :=
  ∀ n, P5345957154369829088.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P11313081915332557480

`(A001222(n+1)-1)*A001414(n+1)`
-/

namespace A356174.P11313081915332557480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - 1) * A001414 (n + 1)

end

end A356174.P11313081915332557480

namespace A356174

/-- `(A001222(n+1)-1)*A001414(n+1)` -/
def P11313081915332557480.Spec : Prop :=
  ∀ n, P11313081915332557480.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P17422800725627096612

`(A086436(n+1)-1)*A001414(n+1)`
-/

namespace A356174.P17422800725627096612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086436 (n + 1) - 1) * A001414 (n + 1)

end

end A356174.P17422800725627096612

namespace A356174

/-- `(A086436(n+1)-1)*A001414(n+1)` -/
def P17422800725627096612.Spec : Prop :=
  ∀ n, P17422800725627096612.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P6715746378644373360

`(A001222(n+1)-1)*A352167(n+1)`
-/

namespace A356174.P6715746378644373360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - 1) * A352167 (n + 1)

end

end A356174.P6715746378644373360

namespace A356174

/-- `(A001222(n+1)-1)*A352167(n+1)` -/
def P6715746378644373360.Spec : Prop :=
  ∀ n, P6715746378644373360.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P7560638250061172823

`(A144494(n+1)-1)*A352167(n+1)`
-/

namespace A356174.P7560638250061172823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144494 (n + 1) - 1) * A352167 (n + 1)

end

end A356174.P7560638250061172823

namespace A356174

/-- `(A144494(n+1)-1)*A352167(n+1)` -/
def P7560638250061172823.Spec : Prop :=
  ∀ n, P7560638250061172823.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P10188325694917322896

`A001222(A032742(n+1))*∑{p}[n+1, #*val(n+1, #)]`
-/

namespace A356174.P10188325694917322896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032742 (n + 1)).toNat * ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A356174.P10188325694917322896

namespace A356174

/-- `A001222(A032742(n+1))*∑{p}[n+1, #*val(n+1, #)]` -/
def P10188325694917322896.Spec : Prop :=
  ∀ n, P10188325694917322896.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P6620947200061872422

`A001222(A052126(n+1))*∑{p}[n+1, #*val(n+1, #)]`
-/

namespace A356174.P6620947200061872422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052126 (n + 1)).toNat * ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A356174.P6620947200061872422

namespace A356174

/-- `A001222(A052126(n+1))*∑{p}[n+1, #*val(n+1, #)]` -/
def P6620947200061872422.Spec : Prop :=
  ∀ n, P6620947200061872422.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P7161775323816695608

`A349824(n+1)+A025281(n)-A025281(n+1)`
-/

namespace A356174.P7161775323816695608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349824 (n + 1) + (A025281 n - A025281 (n + 1))

end

end A356174.P7161775323816695608

namespace A356174

/-- `A349824(n+1)+A025281(n)-A025281(n+1)` -/
def P7161775323816695608.Spec : Prop :=
  ∀ n, P7161775323816695608.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P17806596072255344424

`A078771(n+1)+A349824(n+1)-A008475(n+1)`
-/

namespace A356174.P17806596072255344424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n + 1) + (A349824 (n + 1) - A008475 (n + 1))

end

end A356174.P17806596072255344424

namespace A356174

/-- `A078771(n+1)+A349824(n+1)-A008475(n+1)` -/
def P17806596072255344424.Spec : Prop :=
  ∀ n, P17806596072255344424.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P16031869678066126593

`A349824(n+1)-(A352167(n+1)+A061397(n+1))`
-/

namespace A356174.P16031869678066126593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349824 (n + 1) - (A352167 (n + 1) + A061397 (n + 1))

end

end A356174.P16031869678066126593

namespace A356174

/-- `A349824(n+1)-(A352167(n+1)+A061397(n+1))` -/
def P16031869678066126593.Spec : Prop :=
  ∀ n, P16031869678066126593.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P9828670171162298354

`(A275314(n+1)+A252736(n+1))*A252736(n+1)`
-/

namespace A356174.P9828670171162298354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A275314 (n + 1) + A252736 (n + 1)) * A252736 (n + 1)

end

end A356174.P9828670171162298354

namespace A356174

/-- `(A275314(n+1)+A252736(n+1))*A252736(n+1)` -/
def P9828670171162298354.Spec : Prop :=
  ∀ n, P9828670171162298354.a n = A356174 (n + 1)

end A356174

/-! ## A356174.P15823134875654513192

`(A001414(n+1)-A275314(n+1))*A001414(n+1)`
-/

namespace A356174.P15823134875654513192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 1) - A275314 (n + 1)) * A001414 (n + 1)

end

end A356174.P15823134875654513192

namespace A356174

/-- `(A001414(n+1)-A275314(n+1))*A001414(n+1)` -/
def P15823134875654513192.Spec : Prop :=
  ∀ n, P15823134875654513192.a n = A356174 (n + 1)

end A356174

/-!
# A356175: Numbers k such that k^2 + {1,3,7,13,163} are prime.

The programs for A356175, there is no canonical definition to state claims against.
-/

/-! ## A356175.P12007384369075723724

`A356109(A035003(n))`
-/

namespace A356175.P12007384369075723724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356109 (A035003 n).toNat

end

end A356175.P12007384369075723724

/-!
# A356176: Numbers that can be written as the product of three divisors greater than 1 such that the number in binary is contained in the string concatenation of the divisors in binary.

The programs for A356176, there is no canonical definition to state claims against.
-/

/-! ## A356176.P9976126555931781647

`∩[A237883(n+1), A386417(n+1)]`
-/

namespace A356176.P9976126555931781647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356176.P9976126555931781647

/-!
# A356177: Palindromes in A333369.

The programs for A356177, there is no canonical definition to state claims against.
-/

/-! ## A356177.P13724352189607869722

`∩[A002113(n+1), A333369(n+1)]`
-/

namespace A356177.P13724352189607869722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356177.P13724352189607869722

/-! ## A356177.P2776101551614111074

`∩[A110751(n+1), A333369(n+1)]`
-/

namespace A356177.P2776101551614111074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356177.P2776101551614111074

/-! ## A356177.P9312273974566640131

`filter[A333369(n+1), A136522(#)]`
-/

namespace A356177.P9312273974566640131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A356177.P9312273974566640131

/-! ## A356177.P5458355903321964544

`floor(A167154(n+1)/9)`
-/

namespace A356177.P5458355903321964544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167154 (n + 1) : ℚ) / 9⌋

end

end A356177.P5458355903321964544

/-! ## A356177.P5908653691885320323

`A010785(∑{e}[2*4^n, #])`
-/

namespace A356177.P5908653691885320323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A356177.P5908653691885320323

/-!
# A356178: Numbers k such that both Sum_{i=1..k} i*prime(i) and Sum_{i=1..k} (k+1-i)*prime(i) are prime.

The programs for A356178, there is no canonical definition to state claims against.
-/

/-! ## A356178.P4872162260832971873

`∩[A114257(n+1), A122381(n+1)]`
-/

namespace A356178.P4872162260832971873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356178.P4872162260832971873

/-!
# A356179: Positions of records in A279497, i.e., integers whose number of pentagonal divisors sets a new record.

The programs for A356179, there is no canonical definition to state claims against.
-/

/-! ## A356179.P9340910298272465448

`A356132(lt[A283477(n), A341396(n)])`
-/

namespace A356179.P9340910298272465448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283477 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356132 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356179.P9340910298272465448

/-! ## A356179.P12615127569926084608

`A356132(A061773(n+1))%A337077(2*n+3)`
-/

namespace A356179.P12615127569926084608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356132 (A061773 (n + 1)).toNat) (A337077 (2 * n + 3))

end

end A356179.P12615127569926084608

/-! ## A356179.P12638308572960858574

`A356132(A043718(n+1))`
-/

namespace A356179.P12638308572960858574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356132 (A043718 (n + 1)).toNat

end

end A356179.P12638308572960858574

/-! ## A356179.P8155231743705384493

`A356132(A044826(n+1))`
-/

namespace A356179.P8155231743705384493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356132 (A044826 (n + 1)).toNat

end

end A356179.P8155231743705384493

/-! ## A356179.P11338481591968998007

`A356132(A044964(n+1))`
-/

namespace A356179.P11338481591968998007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356132 (A044964 (n + 1)).toNat

end

end A356179.P11338481591968998007

/-!
# A356180: a(n) = A022838(A001951(n)).

The programs for A356180, the canonical program `A356180.P8319334063317487091` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356180 has offset 1).

The definition of A356180 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A022838(A001951(n+1))` (program `A356180.P8319334063317487091`, by `A356180.P8319334063317487091.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356180.P8319334063317487091

`A022838(A001951(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356180

/-- `A022838(A001951(n+1))` -/
def P8319334063317487091.Spec : Prop :=
  ∀ n, P8319334063317487091.a n = A356180 (n + 1)

theorem P8319334063317487091.correct : P8319334063317487091.Spec := by
  intro n
  simp only [A356180, Nat.add_sub_cancel]

end A356180

/-! ## A356180.P8124320098339938247

`floor(sqrt(3*floor((n+1)*sqrt(2))²))`
-/

namespace A356180.P8124320098339938247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (3 * ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ 2)

end

end A356180.P8124320098339938247

namespace A356180

/-- `floor(sqrt(3*floor((n+1)*sqrt(2))²))` -/
def P8124320098339938247.Spec : Prop :=
  ∀ n, P8124320098339938247.a n = A356180 (n + 1)

end A356180

/-! ## A356180.P13607754105258327826

`record[floor((n+1)*sqrt(3))*A080764(n)]`
-/

namespace A356180.P13607754105258327826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋ * A080764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356180.P13607754105258327826

namespace A356180

/-- `record[floor((n+1)*sqrt(3))*A080764(n)]` -/
def P13607754105258327826.Spec : Prop :=
  ∀ n, P13607754105258327826.a n = A356180 (n + 1)

end A356180

/-! ## A356180.P17659151989059346491

`A022838(ceil((n+1)*sqrt(2))-1)`
-/

namespace A356180.P17659151989059346491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉ - 1).toNat

end

end A356180.P17659151989059346491

namespace A356180

/-- `A022838(ceil((n+1)*sqrt(2))-1)` -/
def P17659151989059346491.Spec : Prop :=
  ∀ n, P17659151989059346491.a n = A356180 (n + 1)

end A356180

/-! ## A356180.P7567485290416721669

`record[floor((n+1)*sqrt(3))*A188295(n+2)]`
-/

namespace A356180.P7567485290416721669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋ * A188295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356180.P7567485290416721669

namespace A356180

/-- `record[floor((n+1)*sqrt(3))*A188295(n+2)]` -/
def P7567485290416721669.Spec : Prop :=
  ∀ n, P7567485290416721669.a n = A356180 (n + 1)

end A356180

/-! ## A356180.P12206348376282755464

`A198081(A087057(n+1)-1)-1`
-/

namespace A356180.P12206348376282755464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (A087057 (n + 1) - 1).toNat - 1

end

end A356180.P12206348376282755464

namespace A356180

/-- `A198081(A087057(n+1)-1)-1` -/
def P12206348376282755464.Spec : Prop :=
  ∀ n, P12206348376282755464.a n = A356180 (n + 1)

end A356180

/-! ## A356180.P17548655660958015919

`A171970(A286909(n+1))`
-/

namespace A356180.P17548655660958015919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (A286909 (n + 1)).toNat

end

end A356180.P17548655660958015919

namespace A356180

/-- `A171970(A286909(n+1))` -/
def P17548655660958015919.Spec : Prop :=
  ∀ n, P17548655660958015919.a n = A356180 (n + 1)

end A356180

/-! ## A356180.P5259154046580587852

`A171970(2*A001951(n+1))`
-/

namespace A356180.P5259154046580587852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (2 * A001951 (n + 1)).toNat

end

end A356180.P5259154046580587852

namespace A356180

/-- `A171970(2*A001951(n+1))` -/
def P5259154046580587852.Spec : Prop :=
  ∀ n, P5259154046580587852.a n = A356180 (n + 1)

end A356180

/-! ## A356180.P3292628553807052954

`A172475(2*A001951(n+1))`
-/

namespace A356180.P3292628553807052954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (2 * A001951 (n + 1)).toNat

end

end A356180.P3292628553807052954

namespace A356180

/-- `A172475(2*A001951(n+1))` -/
def P3292628553807052954.Spec : Prop :=
  ∀ n, P3292628553807052954.a n = A356180 (n + 1)

end A356180

/-! ## A356180.P8469509911934431692

`A026255(A356181(n+1))`
-/

namespace A356180.P8469509911934431692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (A356181 (n + 1)).toNat

end

end A356180.P8469509911934431692

namespace A356180

/-- `A026255(A356181(n+1))` -/
def P8469509911934431692.Spec : Prop :=
  ∀ n, P8469509911934431692.a n = A356180 (n + 1)

end A356180

/-!
# A356181: a(n) = A054406(A001951(n)).

The programs for A356181, the canonical program `A356181.P7498048710755409494` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356181 has offset 1).

The definition of A356181 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A054406(A001951(n+1))` (program `A356181.P7498048710755409494`, by `A356181.P7498048710755409494.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356181.P7498048710755409494

`A054406(A001951(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356181

/-- `A054406(A001951(n+1))` -/
def P7498048710755409494.Spec : Prop :=
  ∀ n, P7498048710755409494.a n = A356181 (n + 1)

theorem P7498048710755409494.correct : P7498048710755409494.Spec := by
  intro n
  simp only [A356181, Nat.add_sub_cancel]

end A356181

/-! ## A356181.P14076830578178931814

`A054406(ceil((n+1)*sqrt(2))-1)`
-/

namespace A356181.P14076830578178931814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉ - 1).toNat

end

end A356181.P14076830578178931814

namespace A356181

/-- `A054406(ceil((n+1)*sqrt(2))-1)` -/
def P14076830578178931814.Spec : Prop :=
  ∀ n, P14076830578178931814.a n = A356181 (n + 1)

end A356181

/-! ## A356181.P10406966497409016216

`record[A054406(n+1)*A080764(n)]`
-/

namespace A356181.P10406966497409016216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1) * A080764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356181.P10406966497409016216

namespace A356181

/-- `record[A054406(n+1)*A080764(n)]` -/
def P10406966497409016216.Spec : Prop :=
  ∀ n, P10406966497409016216.a n = A356181 (n + 1)

end A356181

/-! ## A356181.P11104150774495476787

`record[A054406(n+1)*A188295(n+2)]`
-/

namespace A356181.P11104150774495476787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1) * A188295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356181.P11104150774495476787

namespace A356181

/-- `record[A054406(n+1)*A188295(n+2)]` -/
def P11104150774495476787.Spec : Prop :=
  ∀ n, P11104150774495476787.a n = A356181 (n + 1)

end A356181

/-! ## A356181.P7727280797173913261

`record[A054406(n+1)%A026250(n+1)]`
-/

namespace A356181.P7727280797173913261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054406 (n + 1)) (A026250 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356181.P7727280797173913261

namespace A356181

/-- `record[A054406(n+1)%A026250(n+1)]` -/
def P7727280797173913261.Spec : Prop :=
  ∀ n, P7727280797173913261.a n = A356181 (n + 1)

end A356181

/-! ## A356181.P5663072633183120614

`record[(A188070(n+1)+n)*A188295(n+2)]`
-/

namespace A356181.P5663072633183120614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A188070 (n + 1) + (n : ℤ)) * A188295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356181.P5663072633183120614

namespace A356181

/-- `record[(A188070(n+1)+n)*A188295(n+2)]` -/
def P5663072633183120614.Spec : Prop :=
  ∀ n, P5663072633183120614.a n = A356181 (n + 1)

end A356181

/-! ## A356181.P12979846265390280098

`record[floor(A182778(n+1)/2)*A188295(n+2)]`
-/

namespace A356181.P12979846265390280098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182778 (n + 1) : ℚ) / 2⌋ * A188295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356181.P12979846265390280098

namespace A356181

/-- `record[floor(A182778(n+1)/2)*A188295(n+2)]` -/
def P12979846265390280098.Spec : Prop :=
  ∀ n, P12979846265390280098.a n = A356181 (n + 1)

end A356181

/-! ## A356181.P8469882077666139728

`record[(A003511(n+1)+1+n)*A188295(n+2)]`
-/

namespace A356181.P8469882077666139728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003511 (n + 1) + 1 + (n : ℤ)) * A188295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356181.P8469882077666139728

namespace A356181

/-- `record[(A003511(n+1)+1+n)*A188295(n+2)]` -/
def P8469882077666139728.Spec : Prop :=
  ∀ n, P8469882077666139728.a n = A356181 (n + 1)

end A356181

/-! ## A356181.P15661883439389211838

`A026255(A356180(n+1))`
-/

namespace A356181.P15661883439389211838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (A356180 (n + 1)).toNat

end

end A356181.P15661883439389211838

namespace A356181

/-- `A026255(A356180(n+1))` -/
def P15661883439389211838.Spec : Prop :=
  ∀ n, P15661883439389211838.a n = A356181 (n + 1)

end A356181

/-! ## A356181.P4257770935271094263

`∩[A054406(n+1), comp[A356183(n+1)]]`
-/

namespace A356181.P4257770935271094263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356183 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A356181.P4257770935271094263

namespace A356181

/-- `∩[A054406(n+1), comp[A356183(n+1)]]` -/
def P4257770935271094263.Spec : Prop :=
  ∀ n, (P4257770935271094263.a n : ℤ) = A356181 (n + 1)

end A356181

/-!
# A356182: a(n) = A022838(A001952(n)).

The programs for A356182, the canonical program `A356182.P5050694856933886770` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356182 has offset 1).

The definition of A356182 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A022838(A001952(n+1))` (program `A356182.P5050694856933886770`, by `A356182.P5050694856933886770.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356182.P5050694856933886770

`A022838(A001952(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356182

/-- `A022838(A001952(n+1))` -/
def P5050694856933886770.Spec : Prop :=
  ∀ n, P5050694856933886770.a n = A356182 (n + 1)

theorem P5050694856933886770.correct : P5050694856933886770.Spec := by
  intro n
  simp only [A356182, Nat.add_sub_cancel]

end A356182

/-! ## A356182.P12735094304775148696

`floor(((A140868(n+1)-n)/2+1+n)*sqrt(3))`
-/

namespace A356182.P12735094304775148696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A140868 (n + 1) - (n : ℤ) : ℚ) / 2 + 1 + (n : ℚ) : ℝ) * Real.sqrt (3 : ℝ)⌋

end

end A356182.P12735094304775148696

namespace A356182

/-- `floor(((A140868(n+1)-n)/2+1+n)*sqrt(3))` -/
def P12735094304775148696.Spec : Prop :=
  ∀ n, P12735094304775148696.a n = A356182 (n + 1)

end A356182

/-! ## A356182.P16442428279434792058

`A022838(comp[floor(n*sqrt(2))])`
-/

namespace A356182.P16442428279434792058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356182.P16442428279434792058

namespace A356182

/-- `A022838(comp[floor(n*sqrt(2))])` -/
def P16442428279434792058.Spec : Prop :=
  ∀ n, P16442428279434792058.a n = A356182 (n + 1)

end A356182

/-! ## A356182.P13990274302784819872

`A198081(comp[floor(n*sqrt(2))])-1`
-/

namespace A356182.P13990274302784819872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A356182.P13990274302784819872

namespace A356182

/-- `A198081(comp[floor(n*sqrt(2))])-1` -/
def P13990274302784819872.Spec : Prop :=
  ∀ n, P13990274302784819872.a n = A356182 (n + 1)

end A356182

/-! ## A356182.P13686136612120991308

`record[A022838(A026250(n+1))]`
-/

namespace A356182.P13686136612120991308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (A026250 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356182.P13686136612120991308

namespace A356182

/-- `record[A022838(A026250(n+1))]` -/
def P13686136612120991308.Spec : Prop :=
  ∀ n, P13686136612120991308.a n = A356182 (n + 1)

end A356182

/-! ## A356182.P1626344140638387406

`A171970(A286927(n+1))`
-/

namespace A356182.P1626344140638387406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (A286927 (n + 1)).toNat

end

end A356182.P1626344140638387406

namespace A356182

/-- `A171970(A286927(n+1))` -/
def P1626344140638387406.Spec : Prop :=
  ∀ n, P1626344140638387406.a n = A356182 (n + 1)

end A356182

/-! ## A356182.P13229998398084542716

`A171970(2*A001952(n+1))`
-/

namespace A356182.P13229998398084542716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (2 * A001952 (n + 1)).toNat

end

end A356182.P13229998398084542716

namespace A356182

/-- `A171970(2*A001952(n+1))` -/
def P13229998398084542716.Spec : Prop :=
  ∀ n, P13229998398084542716.a n = A356182 (n + 1)

end A356182

/-! ## A356182.P18288017224395471061

`A171970(2*A003152(2*(n+1)))`
-/

namespace A356182.P18288017224395471061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (2 * A003152 (2 * (n + 1))).toNat

end

end A356182.P18288017224395471061

namespace A356182

/-- `A171970(2*A003152(2*(n+1)))` -/
def P18288017224395471061.Spec : Prop :=
  ∀ n, P18288017224395471061.a n = A356182 (n + 1)

end A356182

/-! ## A356182.P6427771710082934225

`A172475(2*A003152(2*(n+1)))`
-/

namespace A356182.P6427771710082934225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (2 * A003152 (2 * (n + 1))).toNat

end

end A356182.P6427771710082934225

namespace A356182

/-- `A172475(2*A003152(2*(n+1)))` -/
def P6427771710082934225.Spec : Prop :=
  ∀ n, P6427771710082934225.a n = A356182 (n + 1)

end A356182

/-! ## A356182.P9261441524490085727

`A003511(A286927(n+1))-A001952(n+1)`
-/

namespace A356182.P9261441524490085727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (A286927 (n + 1)).toNat - A001952 (n + 1)

end

end A356182.P9261441524490085727

namespace A356182

/-- `A003511(A286927(n+1))-A001952(n+1)` -/
def P9261441524490085727.Spec : Prop :=
  ∀ n, P9261441524490085727.a n = A356182 (n + 1)

end A356182

/-! ## A356182.P6034733426512521889

`A026255(A356183(n+1))`
-/

namespace A356182.P6034733426512521889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (A356183 (n + 1)).toNat

end

end A356182.P6034733426512521889

namespace A356182

/-- `A026255(A356183(n+1))` -/
def P6034733426512521889.Spec : Prop :=
  ∀ n, P6034733426512521889.a n = A356182 (n + 1)

end A356182

/-! ## A356182.P14251864544826984247

`A097337(3*comp[floor(n*sqrt(2))])`
-/

namespace A356182.P14251864544826984247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356182.P14251864544826984247

namespace A356182

/-- `A097337(3*comp[floor(n*sqrt(2))])` -/
def P14251864544826984247.Spec : Prop :=
  ∀ n, P14251864544826984247.a n = A356182 (n + 1)

end A356182

/-!
# A356183: a(n) = A054406(A001952(n)).

The programs for A356183, the canonical program `A356183.P13957365186230803089` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356183 has offset 1).

The definition of A356183 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A054406(A001952(n+1))` (program `A356183.P13957365186230803089`, by `A356183.P13957365186230803089.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356183.P13957365186230803089

`A054406(A001952(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356183

/-- `A054406(A001952(n+1))` -/
def P13957365186230803089.Spec : Prop :=
  ∀ n, P13957365186230803089.a n = A356183 (n + 1)

theorem P13957365186230803089.correct : P13957365186230803089.Spec := by
  intro n
  simp only [A356183, Nat.add_sub_cancel]

end A356183

/-! ## A356183.P11897472837849372792

`A054406(comp[floor(n*sqrt(2))])`
-/

namespace A356183.P11897472837849372792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356183.P11897472837849372792

namespace A356183

/-- `A054406(comp[floor(n*sqrt(2))])` -/
def P11897472837849372792.Spec : Prop :=
  ∀ n, P11897472837849372792.a n = A356183 (n + 1)

end A356183

/-! ## A356183.P16833968067974611955

`record[A054406(A026250(n+1))]`
-/

namespace A356183.P16833968067974611955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (A026250 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356183.P16833968067974611955

namespace A356183

/-- `record[A054406(A026250(n+1))]` -/
def P16833968067974611955.Spec : Prop :=
  ∀ n, P16833968067974611955.a n = A356183 (n + 1)

end A356183

/-! ## A356183.P5172500564117746065

`A003511(A001952(n+1))+A184922(n+1)+1`
-/

namespace A356183.P5172500564117746065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (A001952 (n + 1)).toNat + (A184922 (n + 1) + 1)

end

end A356183.P5172500564117746065

namespace A356183

/-- `A003511(A001952(n+1))+A184922(n+1)+1` -/
def P5172500564117746065.Spec : Prop :=
  ∀ n, P5172500564117746065.a n = A356183 (n + 1)

end A356183

/-! ## A356183.P16959652773865924647

`A003511(A001952(n+1))+A286927(n+1)/2`
-/

namespace A356183.P16959652773865924647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003511 (A001952 (n + 1)).toNat : ℚ) + (A286927 (n + 1) : ℚ) / 2

end

end A356183.P16959652773865924647

namespace A356183

/-- `A003511(A001952(n+1))+A286927(n+1)/2` -/
def P16959652773865924647.Spec : Prop :=
  ∀ n, P16959652773865924647.a n = (A356183 (n + 1) : ℚ)

end A356183

/-! ## A356183.P7981034268176618819

`A026255(A356182(n+1))`
-/

namespace A356183.P7981034268176618819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (A356182 (n + 1)).toNat

end

end A356183.P7981034268176618819

namespace A356183

/-- `A026255(A356182(n+1))` -/
def P7981034268176618819.Spec : Prop :=
  ∀ n, P7981034268176618819.a n = A356183 (n + 1)

end A356183

/-!
# A356184: Triangle read by rows: n-th row gives the indices of the n repunits that divide A340549(n).

The programs for A356184, there is no canonical definition to state claims against.
-/

/-! ## A356184.P16196388001006812165

`A178692(A210545(n+1))+A002260(n+1)`
-/

namespace A356184.P16196388001006812165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178692 (A210545 (n + 1)).toNat + A002260 (n + 1)

end

end A356184.P16196388001006812165

/-! ## A356184.P13423916417204676233

`A118914(A005471(n+1))+A002262(n)`
-/

namespace A356184.P13423916417204676233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (A005471 (n + 1)).toNat + A002262 n

end

end A356184.P13423916417204676233

/-! ## A356184.P2676308949350176542

`gcd(A008587(A113025(n)), A081454(n+1))`
-/

namespace A356184.P2676308949350176542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008587 (A113025 n).toNat) (A081454 (n + 1))

end

end A356184.P2676308949350176542

/-! ## A356184.P3588577253528319937

`A220517(or(A010060(n+2), A209760(n+1)))`
-/

namespace A356184.P3588577253528319937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (Int.lor (A010060 (n + 2)) (A209760 (n + 1))).toNat

end

end A356184.P3588577253528319937

/-! ## A356184.P1322689552597263290

`A110730(A314162(n+1))`
-/

namespace A356184.P1322689552597263290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110730 (A314162 (n + 1)).toNat

end

end A356184.P1322689552597263290

/-!
# A356185: The difference between number of even and number of odd Grassmannian permutations of size n.

The programs for A356185, the canonical program `A356185.P3601416745304588631` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356185 has offset 0).

The definition of A356185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356185.P3601416745304588631

`2^ceil(n/2)-n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356185

/-- `2^ceil(n/2)-n` -/
def P3601416745304588631.Spec : Prop :=
  ∀ n, P3601416745304588631.a n = (A356185 n : ℚ)

end A356185

/-! ## A356185.P17220562614140702014

`abs(∏[n%2+1]-n)`
-/

namespace A356185.P17220562614140702014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)|

end

end A356185.P17220562614140702014

namespace A356185

/-- `abs(∏[n%2+1]-n)` -/
def P17220562614140702014.Spec : Prop :=
  ∀ n, P17220562614140702014.a n = A356185 n

end A356185

/-! ## A356185.P7643005329769669952

`abs(∏[gcd(2, n+1)]-n)`
-/

namespace A356185.P7643005329769669952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)|

end

end A356185.P7643005329769669952

namespace A356185

/-- `abs(∏[gcd(2, n+1)]-n)` -/
def P7643005329769669952.Spec : Prop :=
  ∀ n, P7643005329769669952.a n = A356185 n

end A356185

/-! ## A356185.P924971752670124719

`abs(∏[and(1, n)+1]-n)`
-/

namespace A356185.P924971752670124719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)|

end

end A356185.P924971752670124719

namespace A356185

/-- `abs(∏[and(1, n)+1]-n)` -/
def P924971752670124719.Spec : Prop :=
  ∀ n, P924971752670124719.a n = A356185 n

end A356185

/-! ## A356185.P4512776315447115756

`floor(2*(a(n-2)-2)+n)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A356185.P4512776315447115756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 2) - 2) + (n : ℤ)

end

end A356185.P4512776315447115756

namespace A356185

/-- `floor(2*(a(n-2)-2)+n)` -/
def P4512776315447115756.Spec : Prop :=
  ∀ n, P4512776315447115756.a n = A356185 n

end A356185

/-! ## A356185.P13594939216774288849

`floor(n-2*(2-a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A356185.P13594939216774288849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - 2 * (2 - a (n - 2))

end

end A356185.P13594939216774288849

namespace A356185

/-- `floor(n-2*(2-a(n-2)))` -/
def P13594939216774288849.Spec : Prop :=
  ∀ n, P13594939216774288849.a n = A356185 n

end A356185

/-! ## A356185.P17304084168404994817

`floor(2^∑[1-a(n-1)]-n)` with `a(0)=0`
-/

namespace A356185.P17304084168404994817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) - (n : ℚ)⌋

end

end A356185.P17304084168404994817

namespace A356185

/-- `floor(2^∑[1-a(n-1)]-n)` -/
def P17304084168404994817.Spec : Prop :=
  ∀ n, P17304084168404994817.a n = A356185 n

end A356185

/-! ## A356185.P3071095319320388561

`2*(a(n-2)+n/2-2)` with `a(0)=1, a(1)=1`
-/

namespace A356185.P3071095319320388561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 2) + ((n : ℚ) / 2 - 2))

end

end A356185.P3071095319320388561

namespace A356185

/-- `2*(a(n-2)+n/2-2)` -/
def P3071095319320388561.Spec : Prop :=
  ∀ n, P3071095319320388561.a n = (A356185 n : ℚ)

end A356185

/-! ## A356185.P9066011704252889460

`floor(a(n-2)-4+a(n-2)+n)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A356185.P9066011704252889460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - 4 + (a (n - 2) + (n : ℤ))

end

end A356185.P9066011704252889460

namespace A356185

/-- `floor(a(n-2)-4+a(n-2)+n)` -/
def P9066011704252889460.Spec : Prop :=
  ∀ n, P9066011704252889460.a n = A356185 n

end A356185

/-! ## A356185.P6711322984637436613

`floor(a(n-2)-(4-a(n-2)-n))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A356185.P6711322984637436613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - (4 - a (n - 2) - (n : ℤ))

end

end A356185.P6711322984637436613

namespace A356185

/-- `floor(a(n-2)-(4-a(n-2)-n))` -/
def P6711322984637436613.Spec : Prop :=
  ∀ n, P6711322984637436613.a n = A356185 n

end A356185

/-! ## A356185.P12511573987692070856

`ogf((-1+x+3x^2-4x^3)/(-1+2x+x^2-4x^3+2x^4))`
-/

namespace A356185.P12511573987692070856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -3, 4] [1, -2, -1, 4, -2] n

end

end A356185.P12511573987692070856

namespace A356185

/-- `ogf((-1+x+3x^2-4x^3)/(-1+2x+x^2-4x^3+2x^4))` -/
def P12511573987692070856.Spec : Prop :=
  ∀ n, P12511573987692070856.a n = A356185 n

end A356185

/-! ## A356185.P12319598121981713435

`xor(A000325(n), A233411(n))`
-/

namespace A356185.P12319598121981713435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000325 n) (A233411 n)

end

end A356185.P12319598121981713435

namespace A356185

/-- `xor(A000325(n), A233411(n))` -/
def P12319598121981713435.Spec : Prop :=
  ∀ n, P12319598121981713435.a n = A356185 n

end A356185

/-! ## A356185.P7252511443717883745

`A114960(n+1)%A051032(n+1)`
-/

namespace A356185.P7252511443717883745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114960 (n + 1)) (A051032 (n + 1))

end

end A356185.P7252511443717883745

namespace A356185

/-- `A114960(n+1)%A051032(n+1)` -/
def P7252511443717883745.Spec : Prop :=
  ∀ n, P7252511443717883745.a n = A356185 n

end A356185

/-!
# A356186: Number of labeled trees on [2n] with a bicentroid.

The programs for A356186, there is no canonical definition to state claims against.
-/

/-! ## A356186.P5098577267777019908

`A152917(n)²*A088218(n)`
-/

namespace A356186.P5098577267777019908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152917 n ^ 2 * A088218 n

end

end A356186.P5098577267777019908

/-! ## A356186.P15692415799201989401

`(n*A000272(n))²*A088218(n)`
-/

namespace A356186.P15692415799201989401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000272 n) ^ 2 * A088218 n

end

end A356186.P15692415799201989401

/-! ## A356186.P12852428166636990205

`A161552(A004277(n²))`
-/

namespace A356186.P12852428166636990205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161552 (A004277 (n ^ 2)).toNat

end

end A356186.P12852428166636990205

/-! ## A356186.P9767886780820601440

`A161552(abs(2-A005893(n)))`
-/

namespace A356186.P9767886780820601440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161552 |2 - A005893 n|.toNat

end

end A356186.P9767886780820601440

/-! ## A356186.P11255852461306385429

`record[A161552(A082155(n+1))]`
-/

namespace A356186.P11255852461306385429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161552 (A082155 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356186.P11255852461306385429

/-!
# A356189: Optimal link functions for repeat avoidance in double elimination tournaments.

The programs for A356189, there is no canonical definition to state claims against.
-/

/-! ## A356189.P3788483686766773798

`and(A107353(A000142(n)), A279474(n))`
-/

namespace A356189.P3788483686766773798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107353 (A000142 n).toNat) (A279474 n)

end

end A356189.P3788483686766773798

/-!
# A356191: a(n) is the smallest exponentially odd number that is divisible by n.

The programs for A356191, the canonical program `A356191.P16753681922814889908` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356191 has offset 1).

The definition of A356191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356191.P8280555911033502244

`(n+1)*A336643(n+1)`
-/

namespace A356191.P8280555911033502244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A336643 (n + 1)

end

end A356191.P8280555911033502244

namespace A356191

/-- `(n+1)*A336643(n+1)` -/
def P8280555911033502244.Spec : Prop :=
  ∀ n, P8280555911033502244.a n = A356191 (n + 1)

end A356191

/-! ## A356191.P12576338476970529916

`(n+1)²/A350390(n+1)`
-/

namespace A356191.P12576338476970529916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A350390 (n + 1) : ℚ)

end

end A356191.P12576338476970529916

namespace A356191

/-- `(n+1)²/A350390(n+1)` -/
def P12576338476970529916.Spec : Prop :=
  ∀ n, P12576338476970529916.a n = (A356191 (n + 1) : ℚ)

end A356191

/-! ## A356191.P16753681922814889908

`A064549(n+1)/A007913(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356191

/-- `A064549(n+1)/A007913(n+1)` -/
def P16753681922814889908.Spec : Prop :=
  ∀ n, P16753681922814889908.a n = (A356191 (n + 1) : ℚ)

end A356191

/-! ## A356191.P12559393767589836516

`∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #]`
-/

namespace A356191.P12559393767589836516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 * (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A356191.P12559393767589836516

namespace A356191

/-- `∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #]` -/
def P12559393767589836516.Spec : Prop :=
  ∀ n, (P12559393767589836516.a n : ℤ) = A356191 (n + 1)

end A356191

/-! ## A356191.P3431223501640757343

`lcm(n+1, A011264(n+1))`
-/

namespace A356191.P3431223501640757343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A011264 (n + 1))

end

end A356191.P3431223501640757343

namespace A356191

/-- `lcm(n+1, A011264(n+1))` -/
def P3431223501640757343.Spec : Prop :=
  ∀ n, (P3431223501640757343.a n : ℤ) = A356191 (n + 1)

end A356191

/-! ## A356191.P2505129893237128965

`Δ[A211422(n)/8]²*∏{p}[n+1, #]`
-/

namespace A356191.P2505129893237128965
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211422 n : ℚ) / 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A356191.P2505129893237128965

namespace A356191

/-- `Δ[A211422(n)/8]²*∏{p}[n+1, #]` -/
def P2505129893237128965.Spec : Prop :=
  ∀ n, P2505129893237128965.a n = (A356191 (n + 1) : ℚ)

end A356191

/-! ## A356191.P1111207022001402242

`A337101(2*(n+1))²*∏{p}[n+1, #]`
-/

namespace A356191.P1111207022001402242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1)) ^ 2 * ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A356191.P1111207022001402242

namespace A356191

/-- `A337101(2*(n+1))²*∏{p}[n+1, #]` -/
def P1111207022001402242.Spec : Prop :=
  ∀ n, P1111207022001402242.a n = A356191 (n + 1)

end A356191

/-! ## A356191.P17490500240118746526

`∏{p}[n+1, #^val(n+1, #²)]²*A007947(n+1)`
-/

namespace A356191.P17490500240118746526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℤ) * A007947 (n + 1)

end

end A356191.P17490500240118746526

namespace A356191

/-- `∏{p}[n+1, #^val(n+1, #²)]²*A007947(n+1)` -/
def P17490500240118746526.Spec : Prop :=
  ∀ n, P17490500240118746526.a n = A356191 (n + 1)

end A356191

/-! ## A356191.P9757872230850689651

`A102631(A355261(n+1))`
-/

namespace A356191.P9757872230850689651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (A355261 (n + 1)).toNat

end

end A356191.P9757872230850689651

namespace A356191

/-- `A102631(A355261(n+1))` -/
def P9757872230850689651.Spec : Prop :=
  ∀ n, P9757872230850689651.a n = A356191 (n + 1)

end A356191

/-! ## A356191.P6904964842273122362

`(n+1)*A007913(A003557(n+1))`
-/

namespace A356191.P6904964842273122362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007913 (A003557 (n + 1)).toNat

end

end A356191.P6904964842273122362

namespace A356191

/-- `(n+1)*A007913(A003557(n+1))` -/
def P6904964842273122362.Spec : Prop :=
  ∀ n, P6904964842273122362.a n = A356191 (n + 1)

end A356191

/-! ## A356191.P451354968908611351

`A007947(n+1)*A008833(n+1)`
-/

namespace A356191.P451354968908611351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A008833 (n + 1)

end

end A356191.P451354968908611351

namespace A356191

/-- `A007947(n+1)*A008833(n+1)` -/
def P451354968908611351.Spec : Prop :=
  ∀ n, P451354968908611351.a n = A356191 (n + 1)

end A356191

/-! ## A356191.P11715579310704483937

`A007913(n+1)*A011264(n+1)`
-/

namespace A356191.P11715579310704483937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A011264 (n + 1)

end

end A356191.P11715579310704483937

namespace A356191

/-- `A007913(n+1)*A011264(n+1)` -/
def P11715579310704483937.Spec : Prop :=
  ∀ n, P11715579310704483937.a n = A356191 (n + 1)

end A356191

/-! ## A356191.P6826805832077282841

`A003557(n+1)*A066990(n+1)`
-/

namespace A356191.P6826805832077282841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A066990 (n + 1)

end

end A356191.P6826805832077282841

namespace A356191

/-- `A003557(n+1)*A066990(n+1)` -/
def P6826805832077282841.Spec : Prop :=
  ∀ n, P6826805832077282841.a n = A356191 (n + 1)

end A356191

/-! ## A356191.P3923206520511378371

`A000188(n+1)*A355261(n+1)`
-/

namespace A356191.P3923206520511378371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A355261 (n + 1)

end

end A356191.P3923206520511378371

namespace A356191

/-- `A000188(n+1)*A355261(n+1)` -/
def P3923206520511378371.Spec : Prop :=
  ∀ n, P3923206520511378371.a n = A356191 (n + 1)

end A356191

/-! ## A356191.P6928270404806632887

`(n+1)*A071773(A350388(n+1))`
-/

namespace A356191.P6928270404806632887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071773 (A350388 (n + 1)).toNat

end

end A356191.P6928270404806632887

namespace A356191

/-- `(n+1)*A071773(A350388(n+1))` -/
def P6928270404806632887.Spec : Prop :=
  ∀ n, P6928270404806632887.a n = A356191 (n + 1)

end A356191

/-! ## A356191.P15168131641073877668

`A355038(n+1)/A053143(n+1)`
-/

namespace A356191.P15168131641073877668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355038 (n + 1) : ℚ) / (A053143 (n + 1) : ℚ)

end

end A356191.P15168131641073877668

namespace A356191

/-- `A355038(n+1)/A053143(n+1)` -/
def P15168131641073877668.Spec : Prop :=
  ∀ n, P15168131641073877668.a n = (A356191 (n + 1) : ℚ)

end A356191

/-! ## A356191.P10255565482509350282

`gcd(A054496(n+1), A356192(n+1))`
-/

namespace A356191.P10255565482509350282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054496 (n + 1)) (A356192 (n + 1))

end

end A356191.P10255565482509350282

namespace A356191

/-- `gcd(A054496(n+1), A356192(n+1))` -/
def P10255565482509350282.Spec : Prop :=
  ∀ n, (P10255565482509350282.a n : ℤ) = A356191 (n + 1)

end A356191

/-! ## A356191.P8466081443316154793

`abs(A008833(n+1)*A062953(n+1))`
-/

namespace A356191.P8466081443316154793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008833 (n + 1) * A062953 (n + 1)|

end

end A356191.P8466081443316154793

namespace A356191

/-- `abs(A008833(n+1)*A062953(n+1))` -/
def P8466081443316154793.Spec : Prop :=
  ∀ n, P8466081443316154793.a n = A356191 (n + 1)

end A356191

/-! ## A356191.P6508881644440606433

`A000188(n+1)²*A007947(n+1)`
-/

namespace A356191.P6508881644440606433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) ^ 2 * A007947 (n + 1)

end

end A356191.P6508881644440606433

namespace A356191

/-- `A000188(n+1)²*A007947(n+1)` -/
def P6508881644440606433.Spec : Prop :=
  ∀ n, P6508881644440606433.a n = A356191 (n + 1)

end A356191

/-! ## A356191.P2903388484228609218

`A355261(n+1)²/A007947(n+1)`
-/

namespace A356191.P2903388484228609218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355261 (n + 1) ^ 2 : ℚ) / (A007947 (n + 1) : ℚ)

end

end A356191.P2903388484228609218

namespace A356191

/-- `A355261(n+1)²/A007947(n+1)` -/
def P2903388484228609218.Spec : Prop :=
  ∀ n, P2903388484228609218.a n = (A356191 (n + 1) : ℚ)

end A356191

/-!
# A356192: a(n) is the smallest cubefull exponentially odd number (A335988) that is divisible by n.

The programs for A356192, the canonical program `A356192.P16940193218147991984` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356192 has offset 1).

The definition of A356192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356192.P13274736950238569619

`(n+1)*A365298(n+1)`
-/

namespace A356192.P13274736950238569619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A365298 (n + 1)

end

end A356192.P13274736950238569619

namespace A356192

/-- `(n+1)*A365298(n+1)` -/
def P13274736950238569619.Spec : Prop :=
  ∀ n, P13274736950238569619.a n = A356192 (n + 1)

end A356192

/-! ## A356192.P6958187830763876227

`lcm(A011264(n+1), A356193(n+1))`
-/

namespace A356192.P6958187830763876227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011264 (n + 1)) (A356193 (n + 1))

end

end A356192.P6958187830763876227

namespace A356192

/-- `lcm(A011264(n+1), A356193(n+1))` -/
def P6958187830763876227.Spec : Prop :=
  ∀ n, (P6958187830763876227.a n : ℤ) = A356192 (n + 1)

end A356192

/-! ## A356192.P4777709084292004866

`lcm(A056551(n+1), A356191(n+1))`
-/

namespace A356192.P4777709084292004866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056551 (n + 1)) (A356191 (n + 1))

end

end A356192.P4777709084292004866

namespace A356192

/-- `lcm(A056551(n+1), A356191(n+1))` -/
def P4777709084292004866.Spec : Prop :=
  ∀ n, (P4777709084292004866.a n : ℤ) = A356192 (n + 1)

end A356192

/-! ## A356192.P16940193218147991984

`A055231(n+1)²*A356191(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A356192

/-- `A055231(n+1)²*A356191(n+1)` -/
def P16940193218147991984.Spec : Prop :=
  ∀ n, P16940193218147991984.a n = A356192 (n + 1)

theorem P16940193218147991984.correct : P16940193218147991984.Spec := by
  intro n
  simp only [A356192, Nat.add_sub_cancel]

end A356192

/-! ## A356192.P1693228002686910644

`A007913(A062379(n+1))*A356193(n+1)`
-/

namespace A356192.P1693228002686910644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A062379 (n + 1)).toNat * A356193 (n + 1)

end

end A356192.P1693228002686910644

namespace A356192

/-- `A007913(A062379(n+1))*A356193(n+1)` -/
def P1693228002686910644.Spec : Prop :=
  ∀ n, P1693228002686910644.a n = A356192 (n + 1)

end A356192

/-! ## A356192.P5513764261835753771

`A350389(A353897(n+1))²*A356191(n+1)`
-/

namespace A356192.P5513764261835753771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A353897 (n + 1)).toNat ^ 2 * A356191 (n + 1)

end

end A356192.P5513764261835753771

namespace A356192

/-- `A350389(A353897(n+1))²*A356191(n+1)` -/
def P5513764261835753771.Spec : Prop :=
  ∀ n, P5513764261835753771.a n = A356192 (n + 1)

end A356192

/-! ## A356192.P17458882625749521034

`A011262(n+1)*A056192(n+1)/A062378(n+1)`
-/

namespace A356192.P17458882625749521034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011262 (n + 1) * A056192 (n + 1) : ℚ) / (A062378 (n + 1) : ℚ)

end

end A356192.P17458882625749521034

namespace A356192

/-- `A011262(n+1)*A056192(n+1)/A062378(n+1)` -/
def P17458882625749521034.Spec : Prop :=
  ∀ n, P17458882625749521034.a n = (A356192 (n + 1) : ℚ)

end A356192

/-! ## A356192.P9672728701490368416

`A197863(n+1)²/(A003557(n+1)*A007913(n+1))`
-/

namespace A356192.P9672728701490368416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) ^ 2 : ℚ) / (A003557 (n + 1) * A007913 (n + 1) : ℚ)

end

end A356192.P9672728701490368416

namespace A356192

/-- `A197863(n+1)²/(A003557(n+1)*A007913(n+1))` -/
def P9672728701490368416.Spec : Prop :=
  ∀ n, P9672728701490368416.a n = (A356192 (n + 1) : ℚ)

end A356192

/-! ## A356192.P16045172649231225365

`A197863(n+1)²/(A019554(n+1)*A295657(n+1))`
-/

namespace A356192.P16045172649231225365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) ^ 2 : ℚ) / (A019554 (n + 1) * A295657 (n + 1) : ℚ)

end

end A356192.P16045172649231225365

namespace A356192

/-- `A197863(n+1)²/(A019554(n+1)*A295657(n+1))` -/
def P16045172649231225365.Spec : Prop :=
  ∀ n, P16045172649231225365.a n = (A356192 (n + 1) : ℚ)

end A356192

/-! ## A356192.P8881091924758332782

`A197863(n+1)²/(sqrt(A055491(n+1))*A003557(n+1))`
-/

namespace A356192.P8881091924758332782
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) ^ 2 : ℝ) / (Real.sqrt (A055491 (n + 1) : ℝ) * (A003557 (n + 1) : ℝ))

end

end A356192.P8881091924758332782

namespace A356192

/-- `A197863(n+1)²/(sqrt(A055491(n+1))*A003557(n+1))` -/
def P8881091924758332782.Spec : Prop :=
  ∀ n, P8881091924758332782.a n = (A356192 (n + 1) : ℝ)

end A356192

/-! ## A356192.P10314762582266979923

`A007913(A356194(n+1))²*A356191(n+1)`
-/

namespace A356192.P10314762582266979923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A356194 (n + 1)).toNat ^ 2 * A356191 (n + 1)

end

end A356192.P10314762582266979923

namespace A356192

/-- `A007913(A356194(n+1))²*A356191(n+1)` -/
def P10314762582266979923.Spec : Prop :=
  ∀ n, P10314762582266979923.a n = A356192 (n + 1)

end A356192

/-! ## A356192.P30643682321131248

`A356193(A356191(n+1))`
-/

namespace A356192.P30643682321131248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356193 (A356191 (n + 1)).toNat

end

end A356192.P30643682321131248

namespace A356192

/-- `A356193(A356191(n+1))` -/
def P30643682321131248.Spec : Prop :=
  ∀ n, P30643682321131248.a n = A356192 (n + 1)

end A356192

/-! ## A356192.P10883143890039124988

`A356193((n+1)*A336643(n+1))`
-/

namespace A356192.P10883143890039124988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356193 ((n + 1 : ℤ) * A336643 (n + 1)).toNat

end

end A356192.P10883143890039124988

namespace A356192

/-- `A356193((n+1)*A336643(n+1))` -/
def P10883143890039124988.Spec : Prop :=
  ∀ n, P10883143890039124988.a n = A356192 (n + 1)

end A356192

/-! ## A356192.P15644843456672372612

`A356193((A057918(n+1)+1)²*∏{p}[n+1, #])`
-/

namespace A356192.P15644843456672372612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356193 ((A057918 (n + 1) + 1) ^ 2 * ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)).toNat

end

end A356192.P15644843456672372612

namespace A356192

/-- `A356193((A057918(n+1)+1)²*∏{p}[n+1, #])` -/
def P15644843456672372612.Spec : Prop :=
  ∀ n, P15644843456672372612.a n = A356192 (n + 1)

end A356192

/-! ## A356192.P16777466993433184653

`A356193(abs(A008833(n+1)*A062953(n+1)))`
-/

namespace A356192.P16777466993433184653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356193 |A008833 (n + 1) * A062953 (n + 1)|.toNat

end

end A356192.P16777466993433184653

namespace A356192

/-- `A356193(abs(A008833(n+1)*A062953(n+1)))` -/
def P16777466993433184653.Spec : Prop :=
  ∀ n, P16777466993433184653.a n = A356192 (n + 1)

end A356192

/-! ## A356192.P15175823266039020875

`A356193(A355038(n+1)/A019554(n+1)²)`
-/

namespace A356192.P15175823266039020875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356193 (SequenceMachineLib.roundAway ((A355038 (n + 1) : ℚ) / (A019554 (n + 1) ^ 2 : ℚ))).toNat

end

end A356192.P15175823266039020875

namespace A356192

/-- `A356193(A355038(n+1)/A019554(n+1)²)` -/
def P15175823266039020875.Spec : Prop :=
  ∀ n, P15175823266039020875.a n = A356192 (n + 1)

end A356192

/-! ## A356192.P15200614355300517886

`A356193(A355038(n+1)/∑{d}[n+1, A346612(#)]²)`
-/

namespace A356192.P15200614355300517886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356193 (SequenceMachineLib.roundAway ((A355038 (n + 1) : ℚ) / (((∑ d ∈ Nat.divisors (f1 n), A346612 d) ^ 2 : ℤ) : ℚ))).toNat

end

end A356192.P15200614355300517886

namespace A356192

/-- `A356193(A355038(n+1)/∑{d}[n+1, A346612(#)]²)` -/
def P15200614355300517886.Spec : Prop :=
  ∀ n, P15200614355300517886.a n = A356192 (n + 1)

end A356192

/-! ## A356192.P8384981847397876602

`A356193(A355038(n+1)/(1-A254732(n+1)+n)²)`
-/

namespace A356192.P8384981847397876602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356193 (SequenceMachineLib.roundAway ((A355038 (n + 1) : ℚ) / ((1 - A254732 (n + 1) + (n : ℤ)) ^ 2 : ℚ))).toNat

end

end A356192.P8384981847397876602

namespace A356192

/-- `A356193(A355038(n+1)/(1-A254732(n+1)+n)²)` -/
def P8384981847397876602.Spec : Prop :=
  ∀ n, P8384981847397876602.a n = A356192 (n + 1)

end A356192

/-! ## A356192.P10870595892900297776

`A356193(A064549(n+1)/(A000203(n+1)-A326126(n+1)))`
-/

namespace A356192.P10870595892900297776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356193 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (A000203 (n + 1) - A326126 (n + 1) : ℚ))).toNat

end

end A356192.P10870595892900297776

namespace A356192

/-- `A356193(A064549(n+1)/(A000203(n+1)-A326126(n+1)))` -/
def P10870595892900297776.Spec : Prop :=
  ∀ n, P10870595892900297776.a n = A356192 (n + 1)

end A356192

/-! ## A356192.P4584331358011226508

`A356191(A197863(n+1))`
-/

namespace A356192.P4584331358011226508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (A197863 (n + 1)).toNat

end

end A356192.P4584331358011226508

namespace A356192

/-- `A356191(A197863(n+1))` -/
def P4584331358011226508.Spec : Prop :=
  ∀ n, P4584331358011226508.a n = A356192 (n + 1)

end A356192

/-!
# A356193: a(n) is the smallest cubefull number (A036966) that is a multiple of n.

The programs for A356193, the canonical program `A356193.P9054821740689838028` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356193 has offset 1).

The definition of A356193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356193.P12868997876541076272

`(n+1)*A360541(n+1)`
-/

namespace A356193.P12868997876541076272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A360541 (n + 1)

end

end A356193.P12868997876541076272

namespace A356193

/-- `(n+1)*A360541(n+1)` -/
def P12868997876541076272.Spec : Prop :=
  ∀ n, P12868997876541076272.a n = A356193 (n + 1)

end A356193

/-! ## A356193.P9054821740689838028

`lcm(n+1, ∏{p}[n+1, #^3])`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356193

/-- `lcm(n+1, ∏{p}[n+1, #^3])` -/
def P9054821740689838028.Spec : Prop :=
  ∀ n, (P9054821740689838028.a n : ℤ) = A356193 (n + 1)

theorem P9054821740689838028.correct : P9054821740689838028.Spec := by
  intro n
  simp only [A356193, Nat.add_sub_cancel]

end A356193

/-! ## A356193.P4075081334838796137

`lcm(n+1, A056551(n+1))`
-/

namespace A356193.P4075081334838796137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A056551 (n + 1))

end

end A356193.P4075081334838796137

namespace A356193

/-- `lcm(n+1, A056551(n+1))` -/
def P4075081334838796137.Spec : Prop :=
  ∀ n, (P4075081334838796137.a n : ℤ) = A356193 (n + 1)

end A356193

/-! ## A356193.P974634672164828766

`A361266(n+1)/A058035(n+1)`
-/

namespace A356193.P974634672164828766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361266 (n + 1) : ℚ) / (A058035 (n + 1) : ℚ)

end

end A356193.P974634672164828766

namespace A356193

/-- `A361266(n+1)/A058035(n+1)` -/
def P974634672164828766.Spec : Prop :=
  ∀ n, P974634672164828766.a n = (A356193 (n + 1) : ℚ)

end A356193

/-! ## A356193.P8064649697469234378

`lcm(xor(n, -1), A000578(A007947(n+1)))`
-/

namespace A356193.P8064649697469234378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.xor (n : ℤ) (-1)) (A000578 (A007947 (n + 1)).toNat)

end

end A356193.P8064649697469234378

namespace A356193

/-- `lcm(xor(n, -1), A000578(A007947(n+1)))` -/
def P8064649697469234378.Spec : Prop :=
  ∀ n, (P8064649697469234378.a n : ℤ) = A356193 (n + 1)

end A356193

/-! ## A356193.P5561191415262945663

`lcm(A028310(n+1), A355038(∏{p}[n+1, #]))`
-/

namespace A356193.P5561191415262945663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (n + 1)) (A355038 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A356193.P5561191415262945663

namespace A356193

/-- `lcm(A028310(n+1), A355038(∏{p}[n+1, #]))` -/
def P5561191415262945663.Spec : Prop :=
  ∀ n, (P5561191415262945663.a n : ℤ) = A356193 (n + 1)

end A356193

/-! ## A356193.P16781530997677649904

`A356192(n+1)/A007913(A062379(n+1))`
-/

namespace A356193.P16781530997677649904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356192 (n + 1) : ℚ) / (A007913 (A062379 (n + 1)).toNat : ℚ)

end

end A356193.P16781530997677649904

namespace A356193

/-- `A356192(n+1)/A007913(A062379(n+1))` -/
def P16781530997677649904.Spec : Prop :=
  ∀ n, P16781530997677649904.a n = (A356193 (n + 1) : ℚ)

end A356193

/-! ## A356193.P3351551504716451738

`lcm(A053149(A056552(n+1)), A057521(n+1))`
-/

namespace A356193.P3351551504716451738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053149 (A056552 (n + 1)).toNat) (A057521 (n + 1))

end

end A356193.P3351551504716451738

namespace A356193

/-- `lcm(A053149(A056552(n+1)), A057521(n+1))` -/
def P3351551504716451738.Spec : Prop :=
  ∀ n, (P3351551504716451738.a n : ℤ) = A356193 (n + 1)

end A356193

/-! ## A356193.P6172242793587160094

`A055231(A350390(n+1))²*A366765(n+1)`
-/

namespace A356193.P6172242793587160094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A350390 (n + 1)).toNat ^ 2 * A366765 (n + 1)

end

end A356193.P6172242793587160094

namespace A356193

/-- `A055231(A350390(n+1))²*A366765(n+1)` -/
def P6172242793587160094.Spec : Prop :=
  ∀ n, P6172242793587160094.a n = A356193 (n + 1)

end A356193

/-! ## A356193.P2522239375970159521

`A197863(n+1)/A329376(n+1)*A360539(n+1)`
-/

namespace A356193.P2522239375970159521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) : ℚ) / (A329376 (n + 1) : ℚ) * (A360539 (n + 1) : ℚ)

end

end A356193.P2522239375970159521

namespace A356193

/-- `A197863(n+1)/A329376(n+1)*A360539(n+1)` -/
def P2522239375970159521.Spec : Prop :=
  ∀ n, P2522239375970159521.a n = (A356193 (n + 1) : ℚ)

end A356193

/-! ## A356193.P346900836345039326

`A197863(n+1)/A390755(n+1)*A390756(n+1)`
-/

namespace A356193.P346900836345039326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) : ℚ) / (A390755 (n + 1) : ℚ) * (A390756 (n + 1) : ℚ)

end

end A356193.P346900836345039326

namespace A356193

/-- `A197863(n+1)/A390755(n+1)*A390756(n+1)` -/
def P346900836345039326.Spec : Prop :=
  ∀ n, P346900836345039326.a n = (A356193 (n + 1) : ℚ)

end A356193

/-! ## A356193.P1639977044418782473

`lcm(A007947(n+1)²*A007947(n+1), A000027(n+1))`
-/

namespace A356193.P1639977044418782473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (n + 1) ^ 2 * A007947 (n + 1)) (A000027 (n + 1))

end

end A356193.P1639977044418782473

namespace A356193

/-- `lcm(A007947(n+1)²*A007947(n+1), A000027(n+1))` -/
def P1639977044418782473.Spec : Prop :=
  ∀ n, (P1639977044418782473.a n : ℤ) = A356193 (n + 1)

end A356193

/-! ## A356193.P11599516148653700873

`A197863(A019554(n+1))/A019554(n+1)*A197863(n+1)`
-/

namespace A356193.P11599516148653700873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (A019554 (n + 1)).toNat : ℚ) / (A019554 (n + 1) : ℚ) * (A197863 (n + 1) : ℚ)

end

end A356193.P11599516148653700873

namespace A356193

/-- `A197863(A019554(n+1))/A019554(n+1)*A197863(n+1)` -/
def P11599516148653700873.Spec : Prop :=
  ∀ n, P11599516148653700873.a n = (A356193 (n + 1) : ℚ)

end A356193

/-! ## A356193.P17224451333390961778

`A019555(n+1)*A197863(A197863(n+1)/A019555(n+1))`
-/

namespace A356193.P17224451333390961778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1) * A197863 (SequenceMachineLib.roundAway ((A197863 (n + 1) : ℚ) / (A019555 (n + 1) : ℚ))).toNat

end

end A356193.P17224451333390961778

namespace A356193

/-- `A019555(n+1)*A197863(A197863(n+1)/A019555(n+1))` -/
def P17224451333390961778.Spec : Prop :=
  ∀ n, P17224451333390961778.a n = A356193 (n + 1)

end A356193

/-! ## A356193.P135000261010567397

`lcm(A056551(n+1), A126352(n))`
-/

namespace A356193.P135000261010567397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056551 (n + 1)) (A126352 n)

end

end A356193.P135000261010567397

namespace A356193

/-- `lcm(A056551(n+1), A126352(n))` -/
def P135000261010567397.Spec : Prop :=
  ∀ n, (P135000261010567397.a n : ℤ) = A356193 (n + 1)

end A356193

/-! ## A356193.P1081732773062889759

`A064549(lcm((n+1)/∏{p}[n+1, #], ∏{p}[n+1, #²]))`
-/

namespace A356193.P1081732773062889759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) ((∏ p ∈ Nat.primeFactors (f2 n), p ^ 2 : ℕ) : ℤ))

end

end A356193.P1081732773062889759

namespace A356193

/-- `A064549(lcm((n+1)/∏{p}[n+1, #], ∏{p}[n+1, #²]))` -/
def P1081732773062889759.Spec : Prop :=
  ∀ n, P1081732773062889759.a n = A356193 (n + 1)

end A356193

/-! ## A356193.P17865620851169537940

`(n+1)*A360539(A011262(n+1))`
-/

namespace A356193.P17865620851169537940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A360539 (A011262 (n + 1)).toNat

end

end A356193.P17865620851169537940

namespace A356193

/-- `(n+1)*A360539(A011262(n+1))` -/
def P17865620851169537940.Spec : Prop :=
  ∀ n, P17865620851169537940.a n = A356193 (n + 1)

end A356193

/-! ## A356193.P17275513052072005286

`(n+1)*A360539(A159253(n+1))`
-/

namespace A356193.P17275513052072005286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A360539 (A159253 (n + 1)).toNat

end

end A356193.P17275513052072005286

namespace A356193

/-- `(n+1)*A360539(A159253(n+1))` -/
def P17275513052072005286.Spec : Prop :=
  ∀ n, P17275513052072005286.a n = A356193 (n + 1)

end A356193

/-! ## A356193.P10238898512223032569

`A064549(lcm(A003557(n+1), A078615(n+1)))`
-/

namespace A356193.P10238898512223032569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (Int.lcm (A003557 (n + 1)) (A078615 (n + 1)))

end

end A356193.P10238898512223032569

namespace A356193

/-- `A064549(lcm(A003557(n+1), A078615(n+1)))` -/
def P10238898512223032569.Spec : Prop :=
  ∀ n, P10238898512223032569.a n = A356193 (n + 1)

end A356193

/-! ## A356193.P12108937888139634114

`A019554(A159253(n+1))*A159253(A019554(n+1))`
-/

namespace A356193.P12108937888139634114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A159253 (n + 1)).toNat * A159253 (A019554 (n + 1)).toNat

end

end A356193.P12108937888139634114

namespace A356193

/-- `A019554(A159253(n+1))*A159253(A019554(n+1))` -/
def P12108937888139634114.Spec : Prop :=
  ∀ n, P12108937888139634114.a n = A356193 (n + 1)

end A356193

/-!
# A356194: a(n) is the smallest multiple of n whose prime factorization exponents are all powers of 2.

The programs for A356194, there is no canonical definition to state claims against.
-/

/-! ## A356194.P5370859471869160283

`(n+1)*A365297(n+1)`
-/

namespace A356194.P5370859471869160283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A365297 (n + 1)

end

end A356194.P5370859471869160283

/-! ## A356194.P16202584699138926967

`A353897(n+1)*A353897(A368540(n+1))`
-/

namespace A356194.P16202584699138926967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (n + 1) * A353897 (A368540 (n + 1)).toNat

end

end A356194.P16202584699138926967

/-! ## A356194.P8689567649437894856

`A270436(gcd(A053167(n+1), A270436(n+1)))`
-/

namespace A356194.P8689567649437894856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270436 (Int.gcd (A053167 (n + 1)) (A270436 (n + 1)))

end

end A356194.P8689567649437894856

/-! ## A356194.P7222218113668190878

`A353897((n+1)*A062378(n+1))`
-/

namespace A356194.P7222218113668190878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 ((n + 1 : ℤ) * A062378 (n + 1)).toNat

end

end A356194.P7222218113668190878

/-! ## A356194.P4011778243167035653

`A353897((n+1)*A073753(n+1))`
-/

namespace A356194.P4011778243167035653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 ((n + 1 : ℤ) * A073753 (n + 1)).toNat

end

end A356194.P4011778243167035653

/-! ## A356194.P4169319004441831915

`A353897(A003557(n+1)*A353897(n+1))`
-/

namespace A356194.P4169319004441831915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (A003557 (n + 1) * A353897 (n + 1)).toNat

end

end A356194.P4169319004441831915

/-! ## A356194.P11895795855522369617

`A353897((A336551(n+1)+1)*A353897(n+1))`
-/

namespace A356194.P11895795855522369617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 ((A336551 (n + 1) + 1) * A353897 (n + 1)).toNat

end

end A356194.P11895795855522369617

/-! ## A356194.P12981443445464996845

`A353897(A102631(n+1)/(n+1)*A353897(n+1))`
-/

namespace A356194.P12981443445464996845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (SequenceMachineLib.roundAway ((A102631 (n + 1) : ℚ) / (n + 1 : ℚ) * (A353897 (n + 1) : ℚ))).toNat

end

end A356194.P12981443445464996845

/-! ## A356194.P3024504792958570680

`A353897(A102631(n+1))`
-/

namespace A356194.P3024504792958570680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (A102631 (n + 1)).toNat

end

end A356194.P3024504792958570680

/-! ## A356194.P12145609084319306126

`A353897((n+1)*A003557(n+1))`
-/

namespace A356194.P12145609084319306126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 ((n + 1 : ℤ) * A003557 (n + 1)).toNat

end

end A356194.P12145609084319306126

/-! ## A356194.P7267746087780031412

`A353897(A353897(n+1)*A366906(n+1))`
-/

namespace A356194.P7267746087780031412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (A353897 (n + 1) * A366906 (n + 1)).toNat

end

end A356194.P7267746087780031412

/-! ## A356194.P7024934133506132033

`A353897(A353897(n+1)*A368170(n+1))`
-/

namespace A356194.P7024934133506132033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (A353897 (n + 1) * A368170 (n + 1)).toNat

end

end A356194.P7024934133506132033

/-! ## A356194.P2920973382503053536

`(A270419(A030291(n+1))+n)*A270419(n+1)`
-/

namespace A356194.P2920973382503053536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A270419 (A030291 (n + 1)).toNat + (n : ℤ)) * A270419 (n + 1)

end

end A356194.P2920973382503053536

/-! ## A356194.P3716074559774705274

`A353897((n+1)*A008834(n+1))`
-/

namespace A356194.P3716074559774705274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 ((n + 1 : ℤ) * A008834 (n + 1)).toNat

end

end A356194.P3716074559774705274

/-! ## A356194.P13150172425091281588

`A353897((n+1)*A366906(n+1))`
-/

namespace A356194.P13150172425091281588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 ((n + 1 : ℤ) * A366906 (n + 1)).toNat

end

end A356194.P13150172425091281588

/-! ## A356194.P1193862103245359309

`A353897((n+1)*A367513(n+1))`
-/

namespace A356194.P1193862103245359309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 ((n + 1 : ℤ) * A367513 (n + 1)).toNat

end

end A356194.P1193862103245359309

/-! ## A356194.P13071289570749923304

`A353897((n+1)*A368170(n+1))`
-/

namespace A356194.P13071289570749923304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 ((n + 1 : ℤ) * A368170 (n + 1)).toNat

end

end A356194.P13071289570749923304

/-! ## A356194.P17744543744367478125

`A353897((n+1)*A368540(n+1))`
-/

namespace A356194.P17744543744367478125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 ((n + 1 : ℤ) * A368540 (n + 1)).toNat

end

end A356194.P17744543744367478125

/-! ## A356194.P14393976618957085829

`A353897((n+1)*A053149(A053150(n+1)))`
-/

namespace A356194.P14393976618957085829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 ((n + 1 : ℤ) * A053149 (A053150 (n + 1)).toNat).toNat

end

end A356194.P14393976618957085829

/-! ## A356194.P8772353055673650311

`A353897((n+1)*A056551(A053150(n+1)))`
-/

namespace A356194.P8772353055673650311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 ((n + 1 : ℤ) * A056551 (A053150 (n + 1)).toNat).toNat

end

end A356194.P8772353055673650311

/-!
# A356195: The binary expansion of a(n) is obtained by applying the totalistic cellular automaton with rule 2*n to the binary expansion of n.

The programs for A356195, there is no canonical definition to state claims against.
-/

/-! ## A356195.P11742427850851533970

`A334667(n)+A334667(n)-A334667(2*n)`
-/

namespace A356195.P11742427850851533970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334667 n + (A334667 n - A334667 (2 * n))

end

end A356195.P11742427850851533970

/-!
# A356196: Consider pairs of consecutive primes {p,q} such that p, q, q-p and q+p all with distinct digits. Sequence gives lesser primes p.

The programs for A356196, there is no canonical definition to state claims against.
-/

/-! ## A356196.P4592647750076613826

`A000040(lt[A346419(3*(n+1)), A018805(n+1)])`
-/

namespace A356196.P4592647750076613826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346419 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356196.P4592647750076613826

/-! ## A356196.P12750469064731600422

`A000040(lt[A346419(3*(n+1)), A216780(n+1)])`
-/

namespace A356196.P12750469064731600422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346419 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356196.P12750469064731600422

/-! ## A356196.P5513997726332595683

`A000040(lt[A358580(3*n+4), A120966(n+1)])`
-/

namespace A356196.P5513997726332595683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358580 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356196.P5513997726332595683

/-! ## A356196.P17438000382426113847

`A069675(lt[A358580(3*n+4), A120966(n+1)])`
-/

namespace A356196.P17438000382426113847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358580 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069675 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356196.P17438000382426113847

/-! ## A356196.P7883588248596832669

`A000040(∑[A172184(3*(n+1))+1])`
-/

namespace A356196.P7883588248596832669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172184 (3 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356196.P7883588248596832669

/-!
# A356197: Number of Baxter 3-permutations of length n.

The programs for A356197, there is no canonical definition to state claims against.
-/

/-! ## A356197.P7517762610334052182

`A202101(A082582(n)+A001147(n))`
-/

namespace A356197.P7517762610334052182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202101 (A082582 n + A001147 n).toNat

end

end A356197.P7517762610334052182

/-! ## A356197.P16067642763081373773

`A355916(A134088(n))+A229619(n+1)`
-/

namespace A356197.P16067642763081373773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355916 (A134088 n).toNat + A229619 (n + 1)

end

end A356197.P16067642763081373773

/-!
# A356198: Number of edge covers in the n-book graph.

The programs for A356198, the canonical program `A356198.P1407243383371829152` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356198 has offset 1).

The definition of A356198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356198.P1407243383371829152

`2*5^(n+1)-2^(n+2)-1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356198

/-- `2*5^(n+1)-2^(n+2)-1` -/
def P1407243383371829152.Spec : Prop :=
  ∀ n, P1407243383371829152.a n = A356198 (n + 1)

theorem P1407243383371829152.correct : P1407243383371829152.Spec := by
  intro n
  simp only [A356198, Nat.add_sub_cancel]

end A356198

/-! ## A356198.P7054738473269423190

`∑[ogf((5+x-10x^2)/(1-7x+10x^2))]`
-/

namespace A356198.P7054738473269423190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 1, -10] [1, -7, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356198.P7054738473269423190

namespace A356198

/-- `∑[ogf((5+x-10x^2)/(1-7x+10x^2))]` -/
def P7054738473269423190.Spec : Prop :=
  ∀ n, P7054738473269423190.a n = A356198 (n + 1)

end A356198

/-! ## A356198.P9415338803149613602

`(A248338(n+1)-A000079(n))/A000079(n)`
-/

namespace A356198.P9415338803149613602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248338 (n + 1) - A000079 n : ℚ) / (A000079 n : ℚ)

end

end A356198.P9415338803149613602

namespace A356198

/-- `(A248338(n+1)-A000079(n))/A000079(n)` -/
def P9415338803149613602.Spec : Prop :=
  ∀ n, P9415338803149613602.a n = (A356198 (n + 1) : ℚ)

end A356198

/-!
# A356199: a(n) = Sum_{k=0..n} (n*k+1)^(k-1) * Stirling2(n,k).

The programs for A356199, there is no canonical definition to state claims against.
-/

/-! ## A356199.P9998486237362960638

`A099247(A001519(∑[n]))`
-/

namespace A356199.P9998486237362960638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099247 (A001519 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A356199.P9998486237362960638

