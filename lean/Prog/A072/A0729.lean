import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A072900: Discriminant of quadratic field Q(sqrt(prime(n))) where prime(n) is the n-th prime.

The programs for A072900, the canonical program `A072900.P5597978472427041412` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072900 has offset 1).

The definition of A072900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072900.P5597978472427041412

`(3*floor(A000040(n+1)%4/2)+1)*A000040(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072900

/-- `(3*floor(A000040(n+1)%4/2)+1)*A000040(n+1)` -/
def P5597978472427041412.Spec : Prop :=
  ∀ n, P5597978472427041412.a n = A072900 (n + 1)

theorem P5597978472427041412.correct : P5597978472427041412.Spec := by
  intro n
  simp only [A072900, Nat.add_sub_cancel]

end A072900

/-! ## A072900.P3103012960400658300

`A033198(A112929(n+1))`
-/

namespace A072900.P3103012960400658300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033198 (A112929 (n + 1)).toNat

end

end A072900.P3103012960400658300

namespace A072900

/-- `A033198(A112929(n+1))` -/
def P3103012960400658300.Spec : Prop :=
  ∀ n, P3103012960400658300.a n = A072900 (n + 1)

end A072900

/-! ## A072900.P667283851551289347

`filter[A033198(n+1), A358769(#)]`
-/

namespace A072900.P667283851551289347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A072900.P667283851551289347

namespace A072900

/-- `filter[A033198(n+1), A358769(#)]` -/
def P667283851551289347.Spec : Prop :=
  ∀ n, P667283851551289347.a n = A072900 (n + 1)

end A072900

/-! ## A072900.P4824825440225510621

`filter[A033198(n+1), A091862(#)]`
-/

namespace A072900.P4824825440225510621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A072900.P4824825440225510621

namespace A072900

/-- `filter[A033198(n+1), A091862(#)]` -/
def P4824825440225510621.Spec : Prop :=
  ∀ n, P4824825440225510621.a n = A072900 (n + 1)

end A072900

/-! ## A072900.P16879873883117222462

`A037449(Δ[A007504(n)])`
-/

namespace A072900.P16879873883117222462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (f1 (n + 1) - f1 n).toNat

end

end A072900.P16879873883117222462

namespace A072900

/-- `A037449(Δ[A007504(n)])` -/
def P16879873883117222462.Spec : Prop :=
  ∀ n, P16879873883117222462.a n = A072900 (n + 1)

end A072900

/-! ## A072900.P15730924475842544825

`A037449(A000040(n+1))`
-/

namespace A072900.P15730924475842544825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A000040 (n + 1)).toNat

end

end A072900.P15730924475842544825

namespace A072900

/-- `A037449(A000040(n+1))` -/
def P15730924475842544825.Spec : Prop :=
  ∀ n, P15730924475842544825.a n = A072900 (n + 1)

end A072900

/-! ## A072900.P1503550955329222799

`A037449(A008578(n+2))`
-/

namespace A072900.P1503550955329222799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A008578 (n + 2)).toNat

end

end A072900.P1503550955329222799

namespace A072900

/-- `A037449(A008578(n+2))` -/
def P1503550955329222799.Spec : Prop :=
  ∀ n, P1503550955329222799.a n = A072900 (n + 1)

end A072900

/-! ## A072900.P11365928195924936892

`A037449(A182986(n+2))`
-/

namespace A072900.P11365928195924936892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A182986 (n + 2)).toNat

end

end A072900.P11365928195924936892

namespace A072900

/-- `A037449(A182986(n+2))` -/
def P11365928195924936892.Spec : Prop :=
  ∀ n, P11365928195924936892.a n = A072900 (n + 1)

end A072900

/-! ## A072900.P2258303290505868728

`A037449(A067747(2*n+1))`
-/

namespace A072900.P2258303290505868728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A067747 (2 * n + 1)).toNat

end

end A072900.P2258303290505868728

namespace A072900

/-- `A037449(A067747(2*n+1))` -/
def P2258303290505868728.Spec : Prop :=
  ∀ n, P2258303290505868728.a n = A072900 (n + 1)

end A072900

/-! ## A072900.P7824708316859690727

`A037449(A127118(n+1)/A018252(n+1))`
-/

namespace A072900.P7824708316859690727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (SequenceMachineLib.roundAway ((A127118 (n + 1) : ℚ) / (A018252 (n + 1) : ℚ))).toNat

end

end A072900.P7824708316859690727

namespace A072900

/-- `A037449(A127118(n+1)/A018252(n+1))` -/
def P7824708316859690727.Spec : Prop :=
  ∀ n, P7824708316859690727.a n = A072900 (n + 1)

end A072900

/-! ## A072900.P9331201088362074238

`A037449(4*p?[round(8*n/7)])`
-/

namespace A072900.P9331201088362074238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A072900.P9331201088362074238

namespace A072900

/-- `A037449(4*p?[round(8*n/7)])` -/
def P9331201088362074238.Spec : Prop :=
  ∀ n, P9331201088362074238.a n = A072900 (n + 1)

end A072900

/-! ## A072900.P18431194966569809383

`A037449(A001749(n+1))`
-/

namespace A072900.P18431194966569809383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A001749 (n + 1)).toNat

end

end A072900.P18431194966569809383

namespace A072900

/-- `A037449(A001749(n+1))` -/
def P18431194966569809383.Spec : Prop :=
  ∀ n, P18431194966569809383.a n = A072900 (n + 1)

end A072900

/-! ## A072900.P16500602499031893733

`A037449(A037449(A067747(n+1+n)))`
-/

namespace A072900.P16500602499031893733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A037449 (A067747 (n + 1 + n)).toNat).toNat

end

end A072900.P16500602499031893733

namespace A072900

/-- `A037449(A037449(A067747(n+1+n)))` -/
def P16500602499031893733.Spec : Prop :=
  ∀ n, P16500602499031893733.a n = A072900 (n + 1)

end A072900

/-!
# A072901: Composite numbers n such that the discriminant of the quadratic field Q(sqrt(n)) equals 4n.

The programs for A072901, the canonical program `A072901.P7101582238389632081` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072901 has offset 1).

The definition of A072901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6974 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072901.P9739608166644300778

`filter[A042964(n+1), A354819(#)]`
-/

namespace A072901.P9739608166644300778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A072901.P9739608166644300778

namespace A072901

/-- `filter[A042964(n+1), A354819(#)]` -/
def P9739608166644300778.Spec : Prop :=
  ∀ n, P9739608166644300778.a n = A072901 (n + 1)

end A072901

/-! ## A072901.P7101582238389632081

`∩[A000469(n+1), A042964(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A072901

/-- `∩[A000469(n+1), A042964(n+1)]` -/
def P7101582238389632081.Spec : Prop :=
  ∀ n, (P7101582238389632081.a n : ℤ) = A072901 (n + 1)

theorem P7101582238389632081.correct : P7101582238389632081.Spec := by
  intro n
  simp only [A072901, Nat.add_sub_cancel]

end A072901

/-! ## A072901.P4513129375129657733

`∩[A042964(n+1), A120944(n+1)]`
-/

namespace A072901.P4513129375129657733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072901.P4513129375129657733

namespace A072901

/-- `∩[A042964(n+1), A120944(n+1)]` -/
def P4513129375129657733.Spec : Prop :=
  ∀ n, (P4513129375129657733.a n : ℤ) = A072901 (n + 1)

end A072901

/-! ## A072901.P6574778707989026207

`filter[A053438(n+1), A354819(#)]`
-/

namespace A072901.P6574778707989026207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A072901.P6574778707989026207

namespace A072901

/-- `filter[A053438(n+1), A354819(#)]` -/
def P6574778707989026207.Spec : Prop :=
  ∀ n, P6574778707989026207.a n = A072901 (n + 1)

end A072901

/-! ## A072901.P15427974810925251561

`∩[A120944(n+1), A053438(n)]`
-/

namespace A072901.P15427974810925251561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072901.P15427974810925251561

namespace A072901

/-- `∩[A120944(n+1), A053438(n)]` -/
def P15427974810925251561.Spec : Prop :=
  ∀ n, (P15427974810925251561.a n : ℤ) = A072901 (n + 1)

end A072901

/-! ## A072901.P4115615443682455778

`filter[A047518(n+1), A354819(#)]`
-/

namespace A072901.P4115615443682455778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A072901.P4115615443682455778

namespace A072901

/-- `filter[A047518(n+1), A354819(#)]` -/
def P4115615443682455778.Spec : Prop :=
  ∀ n, P4115615443682455778.a n = A072901 (n + 1)

end A072901

/-! ## A072901.P11315176654529047968

`filter[A047560(n+2), A354819(#)]`
-/

namespace A072901.P11315176654529047968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047560 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A072901.P11315176654529047968

namespace A072901

/-- `filter[A047560(n+2), A354819(#)]` -/
def P11315176654529047968.Spec : Prop :=
  ∀ n, P11315176654529047968.a n = A072901 (n + 1)

end A072901

/-! ## A072901.P6668889907598089649

`∩[A000469(n+1), A047518(n+1)]`
-/

namespace A072901.P6668889907598089649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072901.P6668889907598089649

namespace A072901

/-- `∩[A000469(n+1), A047518(n+1)]` -/
def P6668889907598089649.Spec : Prop :=
  ∀ n, (P6668889907598089649.a n : ℤ) = A072901 (n + 1)

end A072901

/-! ## A072901.P713942688267709811

`∩[A000469(n+1), A047560(n+1)]`
-/

namespace A072901.P713942688267709811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072901.P713942688267709811

namespace A072901

/-- `∩[A000469(n+1), A047560(n+1)]` -/
def P713942688267709811.Spec : Prop :=
  ∀ n, (P713942688267709811.a n : ℤ) = A072901 (n + 1)

end A072901

/-! ## A072901.P4841904307583103791

`∩[A047518(n+1), A120944(n+1)]`
-/

namespace A072901.P4841904307583103791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072901.P4841904307583103791

namespace A072901

/-- `∩[A047518(n+1), A120944(n+1)]` -/
def P4841904307583103791.Spec : Prop :=
  ∀ n, (P4841904307583103791.a n : ℤ) = A072901 (n + 1)

end A072901

/-! ## A072901.P8428095927823799130

`filter[A085397(n+1), A354353(#)]`
-/

namespace A072901.P8428095927823799130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A072901.P8428095927823799130

namespace A072901

/-- `filter[A085397(n+1), A354353(#)]` -/
def P8428095927823799130.Spec : Prop :=
  ∀ n, P8428095927823799130.a n = A072901 (n + 1)

end A072901

/-! ## A072901.P16710973896708569429

`filter[A085397(n+1), A354819(#)]`
-/

namespace A072901.P16710973896708569429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A072901.P16710973896708569429

namespace A072901

/-- `filter[A085397(n+1), A354819(#)]` -/
def P16710973896708569429.Spec : Prop :=
  ∀ n, P16710973896708569429.a n = A072901 (n + 1)

end A072901

/-! ## A072901.P10059879613772934610

`∩[A000469(n+1), A085397(n+1)]`
-/

namespace A072901.P10059879613772934610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072901.P10059879613772934610

namespace A072901

/-- `∩[A000469(n+1), A085397(n+1)]` -/
def P10059879613772934610.Spec : Prop :=
  ∀ n, (P10059879613772934610.a n : ℤ) = A072901 (n + 1)

end A072901

/-! ## A072901.P10332210864669086223

`filter[A029597(n+2), A354819(#)]`
-/

namespace A072901.P10332210864669086223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029597 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A072901.P10332210864669086223

namespace A072901

/-- `filter[A029597(n+2), A354819(#)]` -/
def P10332210864669086223.Spec : Prop :=
  ∀ n, P10332210864669086223.a n = A072901 (n + 1)

end A072901

/-! ## A072901.P17705238327533663801

`∩[A000469(n+1), A029597(n+1)]`
-/

namespace A072901.P17705238327533663801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072901.P17705238327533663801

namespace A072901

/-- `∩[A000469(n+1), A029597(n+1)]` -/
def P17705238327533663801.Spec : Prop :=
  ∀ n, (P17705238327533663801.a n : ℤ) = A072901 (n + 1)

end A072901

/-! ## A072901.P7191704341368651980

`∩[A029597(n+1), A120944(n+1)]`
-/

namespace A072901.P7191704341368651980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072901.P7191704341368651980

namespace A072901

/-- `∩[A029597(n+1), A120944(n+1)]` -/
def P7191704341368651980.Spec : Prop :=
  ∀ n, (P7191704341368651980.a n : ℤ) = A072901 (n + 1)

end A072901

/-! ## A072901.P12246369322369871867

`filter[A004772(n+2), A354819(#)]`
-/

namespace A072901.P12246369322369871867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A072901.P12246369322369871867

namespace A072901

/-- `filter[A004772(n+2), A354819(#)]` -/
def P12246369322369871867.Spec : Prop :=
  ∀ n, P12246369322369871867.a n = A072901 (n + 1)

end A072901

/-! ## A072901.P11483897272643210970

`filter[A319371(n+2), A354819(#)]`
-/

namespace A072901.P11483897272643210970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319371 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A072901.P11483897272643210970

namespace A072901

/-- `filter[A319371(n+2), A354819(#)]` -/
def P11483897272643210970.Spec : Prop :=
  ∀ n, P11483897272643210970.a n = A072901 (n + 1)

end A072901

/-! ## A072901.P15156024064921415105

`∩[A000469(n+1), A004772(n+1)]`
-/

namespace A072901.P15156024064921415105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072901.P15156024064921415105

namespace A072901

/-- `∩[A000469(n+1), A004772(n+1)]` -/
def P15156024064921415105.Spec : Prop :=
  ∀ n, (P15156024064921415105.a n : ℤ) = A072901 (n + 1)

end A072901

/-! ## A072901.P5538342741785604464

`∩[A004772(n+1), A120944(n+1)]`
-/

namespace A072901.P5538342741785604464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072901.P5538342741785604464

namespace A072901

/-- `∩[A004772(n+1), A120944(n+1)]` -/
def P5538342741785604464.Spec : Prop :=
  ∀ n, (P5538342741785604464.a n : ℤ) = A072901 (n + 1)

end A072901

/-!
# A072902: Nonprime numbers m such that the discriminant of the quadratic field Q(sqrt(m)) equals m.

The programs for A072902, the canonical program `A072902.P12422950838438587847` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072902 has offset 1).

The definition of A072902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072902.P12422950838438587847

`filter[A003658(n+1), A005171(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A072902

/-- `filter[A003658(n+1), A005171(#)]` -/
def P12422950838438587847.Spec : Prop :=
  ∀ n, P12422950838438587847.a n = A072902 (n + 1)

theorem P12422950838438587847.correct : P12422950838438587847.Spec := by
  intro n
  simp only [A072902, Nat.add_sub_cancel]

end A072902

/-! ## A072902.P12460006820528793595

`filter[A003658(n+1), A354108(#)]`
-/

namespace A072902.P12460006820528793595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A072902.P12460006820528793595

namespace A072902

/-- `filter[A003658(n+1), A354108(#)]` -/
def P12460006820528793595.Spec : Prop :=
  ∀ n, P12460006820528793595.a n = A072902 (n + 1)

end A072902

/-! ## A072902.P14257024425373771575

`filter[A264828(n+1), A290098(#)]`
-/

namespace A072902.P14257024425373771575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A072902.P14257024425373771575

namespace A072902

/-- `filter[A264828(n+1), A290098(#)]` -/
def P14257024425373771575.Spec : Prop :=
  ∀ n, P14257024425373771575.a n = A072902 (n + 1)

end A072902

/-! ## A072902.P18067975356793502654

`∩[A003658(n+1), A264828(n+1)]`
-/

namespace A072902.P18067975356793502654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072902.P18067975356793502654

namespace A072902

/-- `∩[A003658(n+1), A264828(n+1)]` -/
def P18067975356793502654.Spec : Prop :=
  ∀ n, (P18067975356793502654.a n : ℤ) = A072902 (n + 1)

end A072902

/-! ## A072902.P4323602390035228649

`filter[A018252(n+1), A290098(#)]`
-/

namespace A072902.P4323602390035228649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A072902.P4323602390035228649

namespace A072902

/-- `filter[A018252(n+1), A290098(#)]` -/
def P4323602390035228649.Spec : Prop :=
  ∀ n, P4323602390035228649.a n = A072902 (n + 1)

end A072902

/-! ## A072902.P6630328798671741585

`filter[A141468(n+2), A290098(#)]`
-/

namespace A072902.P6630328798671741585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A072902.P6630328798671741585

namespace A072902

/-- `filter[A141468(n+2), A290098(#)]` -/
def P6630328798671741585.Spec : Prop :=
  ∀ n, P6630328798671741585.a n = A072902 (n + 1)

end A072902

/-! ## A072902.P407569205789826593

`∩[A003658(n+1), A018252(n+1)]`
-/

namespace A072902.P407569205789826593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072902.P407569205789826593

namespace A072902

/-- `∩[A003658(n+1), A018252(n+1)]` -/
def P407569205789826593.Spec : Prop :=
  ∀ n, (P407569205789826593.a n : ℤ) = A072902 (n + 1)

end A072902

/-! ## A072902.P17760108113219094777

`∩[A003658(n+1), A141468(n+1)]`
-/

namespace A072902.P17760108113219094777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072902.P17760108113219094777

namespace A072902

/-- `∩[A003658(n+1), A141468(n+1)]` -/
def P17760108113219094777.Spec : Prop :=
  ∀ n, (P17760108113219094777.a n : ℤ) = A072902 (n + 1)

end A072902

/-! ## A072902.P9631858594467697370

`filter[A222307(2*n+1), A290098(#)]`
-/

namespace A072902.P9631858594467697370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A072902.P9631858594467697370

namespace A072902

/-- `filter[A222307(2*n+1), A290098(#)]` -/
def P9631858594467697370.Spec : Prop :=
  ∀ n, P9631858594467697370.a n = A072902 (n + 1)

end A072902

/-! ## A072902.P10403974915527003654

`filter[A180634(n+1), A290098(#)]`
-/

namespace A072902.P10403974915527003654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A072902.P10403974915527003654

namespace A072902

/-- `filter[A180634(n+1), A290098(#)]` -/
def P10403974915527003654.Spec : Prop :=
  ∀ n, P10403974915527003654.a n = A072902 (n + 1)

end A072902

/-! ## A072902.P5312362482823629785

`∩[A003658(n+1), A180634(n+1)]`
-/

namespace A072902.P5312362482823629785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072902.P5312362482823629785

namespace A072902

/-- `∩[A003658(n+1), A180634(n+1)]` -/
def P5312362482823629785.Spec : Prop :=
  ∀ n, (P5312362482823629785.a n : ℤ) = A072902 (n + 1)

end A072902

/-! ## A072902.P15944105083338829799

`filter[A231879(n+1), A290098(#)]`
-/

namespace A072902.P15944105083338829799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A072902.P15944105083338829799

namespace A072902

/-- `filter[A231879(n+1), A290098(#)]` -/
def P15944105083338829799.Spec : Prop :=
  ∀ n, P15944105083338829799.a n = A072902 (n + 1)

end A072902

/-! ## A072902.P1713066663394119297

`∩[A003658(n+1), A231879(n+1)]`
-/

namespace A072902.P1713066663394119297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072902.P1713066663394119297

namespace A072902

/-- `∩[A003658(n+1), A231879(n+1)]` -/
def P1713066663394119297.Spec : Prop :=
  ∀ n, (P1713066663394119297.a n : ℤ) = A072902 (n + 1)

end A072902

/-! ## A072902.P11812978049537489049

`filter[A139118(n+1), A290098(#)]`
-/

namespace A072902.P11812978049537489049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A072902.P11812978049537489049

namespace A072902

/-- `filter[A139118(n+1), A290098(#)]` -/
def P11812978049537489049.Spec : Prop :=
  ∀ n, P11812978049537489049.a n = A072902 (n + 1)

end A072902

/-! ## A072902.P9253332874372267059

`∩[A003658(n+1), A139118(n+1)]`
-/

namespace A072902.P9253332874372267059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072902.P9253332874372267059

namespace A072902

/-- `∩[A003658(n+1), A139118(n+1)]` -/
def P9253332874372267059.Spec : Prop :=
  ∀ n, (P9253332874372267059.a n : ℤ) = A072902 (n + 1)

end A072902

/-! ## A072902.P6269622769210869004

`filter[A056653(n+1), A290098(#)]`
-/

namespace A072902.P6269622769210869004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A072902.P6269622769210869004

namespace A072902

/-- `filter[A056653(n+1), A290098(#)]` -/
def P6269622769210869004.Spec : Prop :=
  ∀ n, P6269622769210869004.a n = A072902 (n + 1)

end A072902

/-! ## A072902.P13693166775831778216

`∩[A003658(n+1), A056653(n+1)]`
-/

namespace A072902.P13693166775831778216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072902.P13693166775831778216

namespace A072902

/-- `∩[A003658(n+1), A056653(n+1)]` -/
def P13693166775831778216.Spec : Prop :=
  ∀ n, (P13693166775831778216.a n : ℤ) = A072902 (n + 1)

end A072902

/-! ## A072902.P14410448673442980023

`filter[A065090(n+1), A290098(#)]`
-/

namespace A072902.P14410448673442980023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A072902.P14410448673442980023

namespace A072902

/-- `filter[A065090(n+1), A290098(#)]` -/
def P14410448673442980023.Spec : Prop :=
  ∀ n, P14410448673442980023.a n = A072902 (n + 1)

end A072902

/-! ## A072902.P16712236743545037120

`∩[A003658(n+1), A065090(n+1)]`
-/

namespace A072902.P16712236743545037120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072902.P16712236743545037120

namespace A072902

/-- `∩[A003658(n+1), A065090(n+1)]` -/
def P16712236743545037120.Spec : Prop :=
  ∀ n, (P16712236743545037120.a n : ℤ) = A072902 (n + 1)

end A072902

/-! ## A072902.P12610671667213542249

`filter[A171581(n+1), A290098(#)]`
-/

namespace A072902.P12610671667213542249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A072902.P12610671667213542249

namespace A072902

/-- `filter[A171581(n+1), A290098(#)]` -/
def P12610671667213542249.Spec : Prop :=
  ∀ n, P12610671667213542249.a n = A072902 (n + 1)

end A072902

/-!
# A072903: Numbers m such that the discriminant of the quadratic field Q(sqrt(m)) < m.

The programs for A072903, the canonical program `A072903.P14263052383570687834` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072903 has offset 1).

The definition of A072903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072903.P17737264548737241614

`∪[A072904(n+1), (n+2)²]`
-/

namespace A072903.P17737264548737241614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072904 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A072903.P17737264548737241614

namespace A072903

/-- `∪[A072904(n+1), (n+2)²]` -/
def P17737264548737241614.Spec : Prop :=
  ∀ n, (P17737264548737241614.a n : ℤ) = A072903 (n + 1)

end A072903

/-! ## A072903.P14263052383570687834

`∪[A119413(n+1), A335437(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A072903

/-- `∪[A119413(n+1), A335437(n+1)]` -/
def P14263052383570687834.Spec : Prop :=
  ∀ n, (P14263052383570687834.a n : ℤ) = A072903 (n + 1)

theorem P14263052383570687834.correct : P14263052383570687834.Spec := by
  intro n
  simp only [A072903, Nat.add_sub_cancel]

end A072903

/-! ## A072903.P11758406700004554274

`eq[2*A008683(n+1), A290098(n+1)]+1`
-/

namespace A072903.P11758406700004554274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072903.P11758406700004554274

namespace A072903

/-- `eq[2*A008683(n+1), A290098(n+1)]+1` -/
def P11758406700004554274.Spec : Prop :=
  ∀ n, (P11758406700004554274.a n : ℤ) = A072903 (n + 1)

end A072903

/-! ## A072903.P1272887632132821451

`lt[A037449(n+1), n]+1`
-/

namespace A072903.P1272887632132821451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072903.P1272887632132821451

namespace A072903

/-- `lt[A037449(n+1), n]+1` -/
def P1272887632132821451.Spec : Prop :=
  ∀ n, (P1272887632132821451.a n : ℤ) = A072903 (n + 1)

end A072903

/-! ## A072903.P9414517256561575323

`lt[A037449(A028310(n)), n]`
-/

namespace A072903.P9414517256561575323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072903.P9414517256561575323

namespace A072903

/-- `lt[A037449(A028310(n)), n]` -/
def P9414517256561575323.Spec : Prop :=
  ∀ n, (P9414517256561575323.a n : ℤ) = A072903 (n + 1)

end A072903

/-! ## A072903.P7726415586533850178

`A020725(lt[A037449(n+1), n])`
-/

namespace A072903.P7726415586533850178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A072903.P7726415586533850178

namespace A072903

/-- `A020725(lt[A037449(n+1), n])` -/
def P7726415586533850178.Spec : Prop :=
  ∀ n, P7726415586533850178.a n = A072903 (n + 1)

end A072903

/-! ## A072903.P589428273337490942

`A065475(lt[A037449(n+1), n])`
-/

namespace A072903.P589428273337490942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A072903.P589428273337490942

namespace A072903

/-- `A065475(lt[A037449(n+1), n])` -/
def P589428273337490942.Spec : Prop :=
  ∀ n, P589428273337490942.a n = A072903 (n + 1)

end A072903

/-! ## A072903.P6858086954363437417

`lt[A037449(A008574(n)), n]`
-/

namespace A072903.P6858086954363437417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A008574 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072903.P6858086954363437417

namespace A072903

/-- `lt[A037449(A008574(n)), n]` -/
def P6858086954363437417.Spec : Prop :=
  ∀ n, (P6858086954363437417.a n : ℤ) = A072903 (n + 1)

end A072903

/-! ## A072903.P16480860127861075844

`lt[A037449(A233583(n+1)), n]`
-/

namespace A072903.P16480860127861075844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072903.P16480860127861075844

namespace A072903

/-- `lt[A037449(A233583(n+1)), n]` -/
def P16480860127861075844.Spec : Prop :=
  ∀ n, (P16480860127861075844.a n : ℤ) = A072903 (n + 1)

end A072903

/-!
# A072904: Nonsquares m such that the discriminant of the quadratic field Q(sqrt(m)) < m.

The programs for A072904, the canonical program `A072904.P2738740859369155927` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072904 has offset 1).

The definition of A072904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9816 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072904.P2738740859369155927

`filter[A072903(n+1), A049240(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A072904

/-- `filter[A072903(n+1), A049240(#)]` -/
def P2738740859369155927.Spec : Prop :=
  ∀ n, P2738740859369155927.a n = A072904 (n + 1)

theorem P2738740859369155927.correct : P2738740859369155927.Spec := by
  intro n
  simp only [A072904, Nat.add_sub_cancel]

end A072904

/-! ## A072904.P9373049594865570730

`∩[A051144(n+1), A072903(n+1)]`
-/

namespace A072904.P9373049594865570730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072904.P9373049594865570730

namespace A072904

/-- `∩[A051144(n+1), A072903(n+1)]` -/
def P9373049594865570730.Spec : Prop :=
  ∀ n, (P9373049594865570730.a n : ℤ) = A072904 (n + 1)

end A072904

/-! ## A072904.P1177216763448221188

`∩[A072903(n+1), A089229(n+1)]`
-/

namespace A072904.P1177216763448221188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072904.P1177216763448221188

namespace A072904

/-- `∩[A072903(n+1), A089229(n+1)]` -/
def P1177216763448221188.Spec : Prop :=
  ∀ n, (P1177216763448221188.a n : ℤ) = A072904 (n + 1)

end A072904

/-! ## A072904.P2609328273851058040

`∩[A000037(n+1), A072903(n+1)]`
-/

namespace A072904.P2609328273851058040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072904.P2609328273851058040

namespace A072904

/-- `∩[A000037(n+1), A072903(n+1)]` -/
def P2609328273851058040.Spec : Prop :=
  ∀ n, (P2609328273851058040.a n : ℤ) = A072904 (n + 1)

end A072904

/-! ## A072904.P1364367613947189857

`∩[A072903(n+1), A164514(n+1)]`
-/

namespace A072904.P1364367613947189857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072904.P1364367613947189857

namespace A072904

/-- `∩[A072903(n+1), A164514(n+1)]` -/
def P1364367613947189857.Spec : Prop :=
  ∀ n, (P1364367613947189857.a n : ℤ) = A072904 (n + 1)

end A072904

/-! ## A072904.P1848189126531463089

`filter[A072903(n+1), A267594(#)]`
-/

namespace A072904.P1848189126531463089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A072904.P1848189126531463089

namespace A072904

/-- `filter[A072903(n+1), A267594(#)]` -/
def P1848189126531463089.Spec : Prop :=
  ∀ n, P1848189126531463089.a n = A072904 (n + 1)

end A072904

/-! ## A072904.P4914538366677579114

`filter[A072903(n+1), A267635(#)]`
-/

namespace A072904.P4914538366677579114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A072904.P4914538366677579114

namespace A072904

/-- `filter[A072903(n+1), A267635(#)]` -/
def P4914538366677579114.Spec : Prop :=
  ∀ n, P4914538366677579114.a n = A072904 (n + 1)

end A072904

/-! ## A072904.P14198383978459866877

`∩[lt[A037449(n+1), n]+1, A051144(n+1)]`
-/

namespace A072904.P14198383978459866877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A072904.P14198383978459866877

namespace A072904

/-- `∩[lt[A037449(n+1), n]+1, A051144(n+1)]` -/
def P14198383978459866877.Spec : Prop :=
  ∀ n, (P14198383978459866877.a n : ℤ) = A072904 (n + 1)

end A072904

/-!
# A072905: a(n) is the least k > n such that k*n is a square.

The programs for A072905, the canonical program `A072905.P2770806912493137566` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072905 has offset 1).

The definition of A072905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072905.P2770806912493137566

`A007913(n+1)*(A000188(n+1)+1)²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072905

/-- `A007913(n+1)*(A000188(n+1)+1)²` -/
def P2770806912493137566.Spec : Prop :=
  ∀ n, P2770806912493137566.a n = A072905 (n + 1)

theorem P2770806912493137566.correct : P2770806912493137566.Spec := by
  intro n
  simp only [A072905, Nat.add_sub_cancel]

end A072905

/-! ## A072905.P988946621733343303

`n+1+A067722(n+1)`
-/

namespace A072905.P988946621733343303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A067722 (n + 1)

end

end A072905.P988946621733343303

namespace A072905

/-- `n+1+A067722(n+1)` -/
def P988946621733343303.Spec : Prop :=
  ∀ n, P988946621733343303.a n = A072905 (n + 1)

end A072905

/-! ## A072905.P18149161955423413767

`A254732(n+1)²/(n+1)`
-/

namespace A072905.P18149161955423413767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254732 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A072905.P18149161955423413767

namespace A072905

/-- `A254732(n+1)²/(n+1)` -/
def P18149161955423413767.Spec : Prop :=
  ∀ n, P18149161955423413767.a n = (A072905 (n + 1) : ℚ)

end A072905

/-! ## A072905.P8520653824804265746

`(A019554(n+1)+n+1)²/(n+1)`
-/

namespace A072905.P8520653824804265746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A019554 (n + 1) + (n + 1 : ℤ)) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A072905.P8520653824804265746

namespace A072905

/-- `(A019554(n+1)+n+1)²/(n+1)` -/
def P8520653824804265746.Spec : Prop :=
  ∀ n, P8520653824804265746.a n = (A072905 (n + 1) : ℚ)

end A072905

/-! ## A072905.P6033008646778260026

`A255167(n+1)+A006255(n+1)`
-/

namespace A072905.P6033008646778260026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255167 (n + 1) + A006255 (n + 1)

end

end A072905.P6033008646778260026

namespace A072905

/-- `A255167(n+1)+A006255(n+1)` -/
def P6033008646778260026.Spec : Prop :=
  ∀ n, P6033008646778260026.a n = A072905 (n + 1)

end A072905

/-! ## A072905.P3924865201408026383

`A020725(A000188(n+1))²*A007913(n+1)`
-/

namespace A072905.P3924865201408026383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A000188 (n + 1)).toNat ^ 2 * A007913 (n + 1)

end

end A072905.P3924865201408026383

namespace A072905

/-- `A020725(A000188(n+1))²*A007913(n+1)` -/
def P3924865201408026383.Spec : Prop :=
  ∀ n, P3924865201408026383.a n = A072905 (n + 1)

end A072905

/-! ## A072905.P2808307512235691105

`A000290(A000188(n+1)+1)*A007913(n+1)`
-/

namespace A072905.P2808307512235691105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000188 (n + 1) + 1).toNat * A007913 (n + 1)

end

end A072905.P2808307512235691105

namespace A072905

/-- `A000290(A000188(n+1)+1)*A007913(n+1)` -/
def P2808307512235691105.Spec : Prop :=
  ∀ n, P2808307512235691105.a n = A072905 (n + 1)

end A072905

/-! ## A072905.P1637937741665841998

`A007913(n+1)+A254732(n+1)+A019554(n+1)`
-/

namespace A072905.P1637937741665841998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) + (A254732 (n + 1) + A019554 (n + 1))

end

end A072905.P1637937741665841998

namespace A072905

/-- `A007913(n+1)+A254732(n+1)+A019554(n+1)` -/
def P1637937741665841998.Spec : Prop :=
  ∀ n, P1637937741665841998.a n = A072905 (n + 1)

end A072905

/-! ## A072905.P8916457081711137044

`A254732(n+1)+A254732(n+1)/A000188(n+1)`
-/

namespace A072905.P8916457081711137044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254732 (n + 1) : ℚ) + (A254732 (n + 1) : ℚ) / (A000188 (n + 1) : ℚ)

end

end A072905.P8916457081711137044

namespace A072905

/-- `A254732(n+1)+A254732(n+1)/A000188(n+1)` -/
def P8916457081711137044.Spec : Prop :=
  ∀ n, P8916457081711137044.a n = (A072905 (n + 1) : ℚ)

end A072905

/-! ## A072905.P2091055555783419488

`A379705(2*(n+1))/2`
-/

namespace A072905.P2091055555783419488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379705 (2 * (n + 1)) : ℚ) / 2

end

end A072905.P2091055555783419488

namespace A072905

/-- `A379705(2*(n+1))/2` -/
def P2091055555783419488.Spec : Prop :=
  ∀ n, P2091055555783419488.a n = (A072905 (n + 1) : ℚ)

end A072905

/-! ## A072905.P725640002319080296

`A038389(2*(n+1))+A038388(2*(n+1))`
-/

namespace A072905.P725640002319080296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038389 (2 * (n + 1)) + A038388 (2 * (n + 1))

end

end A072905.P725640002319080296

namespace A072905

/-- `A038389(2*(n+1))+A038388(2*(n+1))` -/
def P725640002319080296.Spec : Prop :=
  ∀ n, P725640002319080296.a n = A072905 (n + 1)

end A072905

/-! ## A072905.P13842664955694738246

`A000290(A019554(n+1)+A007913(n+1))/A007913(n+1)`
-/

namespace A072905.P13842664955694738246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A019554 (n + 1) + A007913 (n + 1)).toNat : ℚ) / (A007913 (n + 1) : ℚ)

end

end A072905.P13842664955694738246

namespace A072905

/-- `A000290(A019554(n+1)+A007913(n+1))/A007913(n+1)` -/
def P13842664955694738246.Spec : Prop :=
  ∀ n, P13842664955694738246.a n = (A072905 (n + 1) : ℚ)

end A072905

/-! ## A072905.P11299127558677927784

`A193800(2*(n+1))+n+1`
-/

namespace A072905.P11299127558677927784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193800 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A072905.P11299127558677927784

namespace A072905

/-- `A193800(2*(n+1))+n+1` -/
def P11299127558677927784.Spec : Prop :=
  ∀ n, P11299127558677927784.a n = A072905 (n + 1)

end A072905

/-!
# A072906: Least k >= 1 such that floor(n/k) is squarefree.

The programs for A072906, there is no canonical definition to state claims against.
-/

/-! ## A072906.P12967322348098772098

`A087990(A084558(n+3)^floor(n/∏{p}[n+1, #]))`
-/

namespace A072906.P12967322348098772098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (SequenceMachineLib.roundAway ((A084558 (n + 3) : ℚ) ^ (⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋ : ℤ))).toNat

end

end A072906.P12967322348098772098

/-! ## A072906.P3522989956099212933

`A037968(A008477(n+1)^A037968(n+1))`
-/

namespace A072906.P3522989956099212933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037968 (SequenceMachineLib.roundAway ((A008477 (n + 1) : ℚ) ^ (A037968 (n + 1) : ℤ))).toNat

end

end A072906.P3522989956099212933

/-! ## A072906.P4508604540324892110

`A043562((∏{e}[n+1, #]-1)*lcm(6, (n+1)^3)/6)`
-/

namespace A072906.P4508604540324892110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (SequenceMachineLib.roundAway ((((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1 : ℚ) * ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6))).toNat

end

end A072906.P4508604540324892110

/-! ## A072906.P13617998963735381796

`A239062(n+1)%A239074(3*n+1)²`
-/

namespace A072906.P13617998963735381796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239062 (n + 1)) (A239074 (3 * n + 1) ^ 2)

end

end A072906.P13617998963735381796

/-! ## A072906.P6016547151848631057

`A154402(A268904(n+1)+char[∏{p}[n, #]-1])`
-/

namespace A072906.P6016547151848631057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (A268904 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A072906.P6016547151848631057

/-!
# A072909: Least k>0 such that n+k is squarefree.

The programs for A072909, the canonical program `A072909.P8939717782048846895` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072909 has offset 1).

The definition of A072909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072909.P965356858816433063

`A081221(n+2)+1`
-/

namespace A072909.P965356858816433063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081221 (n + 2) + 1

end

end A072909.P965356858816433063

namespace A072909

/-- `A081221(n+2)+1` -/
def P965356858816433063.Spec : Prop :=
  ∀ n, P965356858816433063.a n = A072909 (n + 1)

end A072909

/-! ## A072909.P7749369971962315456

`∑[A378087(n+1)]-n`
-/

namespace A072909.P7749369971962315456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A072909.P7749369971962315456

namespace A072909

/-- `∑[A378087(n+1)]-n` -/
def P7749369971962315456.Spec : Prop :=
  ∀ n, P7749369971962315456.a n = A072909 (n + 1)

end A072909

/-! ## A072909.P5756144828044662499

`A005117(A107079(n+2))-(n+1)`
-/

namespace A072909.P5756144828044662499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A107079 (n + 2)).toNat - (n + 1 : ℤ)

end

end A072909.P5756144828044662499

namespace A072909

/-- `A005117(A107079(n+2))-(n+1)` -/
def P5756144828044662499.Spec : Prop :=
  ∀ n, P5756144828044662499.a n = A072909 (n + 1)

end A072909

/-! ## A072909.P13938735841211449255

`A144338(A013928(n+2))-(n+1)`
-/

namespace A072909.P13938735841211449255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (A013928 (n + 2)).toNat - (n + 1 : ℤ)

end

end A072909.P13938735841211449255

namespace A072909

/-- `A144338(A013928(n+2))-(n+1)` -/
def P13938735841211449255.Spec : Prop :=
  ∀ n, P13938735841211449255.a n = A072909 (n + 1)

end A072909

/-! ## A072909.P8939717782048846895

`A067535(A070321(n+1)+1)-(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A072909

/-- `A067535(A070321(n+1)+1)-(n+1)` -/
def P8939717782048846895.Spec : Prop :=
  ∀ n, P8939717782048846895.a n = A072909 (n + 1)

theorem P8939717782048846895.correct : P8939717782048846895.Spec := by
  intro n
  simp only [A072909, Nat.add_sub_cancel]

end A072909

/-! ## A072909.P14594952616377201175

`A067535(n+2)-(n+1)`
-/

namespace A072909.P14594952616377201175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (n + 2) - (n + 1 : ℤ)

end

end A072909.P14594952616377201175

namespace A072909

/-- `A067535(n+2)-(n+1)` -/
def P14594952616377201175.Spec : Prop :=
  ∀ n, P14594952616377201175.a n = A072909 (n + 1)

end A072909

/-! ## A072909.P17956724441738162559

`A001633(A067535(n+2)-n)`
-/

namespace A072909.P17956724441738162559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001633 (A067535 (n + 2) - (n : ℤ)).toNat

end

end A072909.P17956724441738162559

namespace A072909

/-- `A001633(A067535(n+2)-n)` -/
def P17956724441738162559.Spec : Prop :=
  ∀ n, P17956724441738162559.a n = A072909 (n + 1)

end A072909

/-! ## A072909.P11949369086290210181

`A002113(A067535(n+2)-n)`
-/

namespace A072909.P11949369086290210181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A067535 (n + 2) - (n : ℤ)).toNat

end

end A072909.P11949369086290210181

namespace A072909

/-- `A002113(A067535(n+2)-n)` -/
def P11949369086290210181.Spec : Prop :=
  ∀ n, P11949369086290210181.a n = A072909 (n + 1)

end A072909

/-! ## A072909.P5543974352299762647

`A004859(A067535(n+2)-n)`
-/

namespace A072909.P5543974352299762647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (A067535 (n + 2) - (n : ℤ)).toNat

end

end A072909.P5543974352299762647

namespace A072909

/-- `A004859(A067535(n+2)-n)` -/
def P5543974352299762647.Spec : Prop :=
  ∀ n, P5543974352299762647.a n = A072909 (n + 1)

end A072909

/-! ## A072909.P18189725084567451354

`A004869(A067535(n+2)-n)`
-/

namespace A072909.P18189725084567451354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004869 (A067535 (n + 2) - (n : ℤ)).toNat

end

end A072909.P18189725084567451354

namespace A072909

/-- `A004869(A067535(n+2)-n)` -/
def P18189725084567451354.Spec : Prop :=
  ∀ n, P18189725084567451354.a n = A072909 (n + 1)

end A072909

/-! ## A072909.P12729362688484612274

`A004894(A067535(n+2)-n)`
-/

namespace A072909.P12729362688484612274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004894 (A067535 (n + 2) - (n : ℤ)).toNat

end

end A072909.P12729362688484612274

namespace A072909

/-- `A004894(A067535(n+2)-n)` -/
def P12729362688484612274.Spec : Prop :=
  ∀ n, P12729362688484612274.a n = A072909 (n + 1)

end A072909

/-! ## A072909.P12272997869696461661

`A004896(A067535(n+2)-n)`
-/

namespace A072909.P12272997869696461661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (A067535 (n + 2) - (n : ℤ)).toNat

end

end A072909.P12272997869696461661

namespace A072909

/-- `A004896(A067535(n+2)-n)` -/
def P12272997869696461661.Spec : Prop :=
  ∀ n, P12272997869696461661.a n = A072909 (n + 1)

end A072909

/-! ## A072909.P16656480636238816519

`A004913(A067535(n+2)-n)`
-/

namespace A072909.P16656480636238816519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (A067535 (n + 2) - (n : ℤ)).toNat

end

end A072909.P16656480636238816519

namespace A072909

/-- `A004913(A067535(n+2)-n)` -/
def P16656480636238816519.Spec : Prop :=
  ∀ n, P16656480636238816519.a n = A072909 (n + 1)

end A072909

/-! ## A072909.P9566710783749124205

`A048856(A067535(n+2)-n)`
-/

namespace A072909.P9566710783749124205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048856 (A067535 (n + 2) - (n : ℤ)).toNat

end

end A072909.P9566710783749124205

namespace A072909

/-- `A048856(A067535(n+2)-n)` -/
def P9566710783749124205.Spec : Prop :=
  ∀ n, P9566710783749124205.a n = A072909 (n + 1)

end A072909

/-!
# A072910: a(n) = sigma(A023883(n)) / tau(A023883(n)).

The programs for A072910, the canonical program `A072910.P14948569435881856669` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072910 has offset 1).

The definition of A072910 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023883, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072910.P14948569435881856669

`A000203(A023883(n+1))/A000005(A023883(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A072910

/-- `A000203(A023883(n+1))/A000005(A023883(n+1))` -/
def P14948569435881856669.Spec : Prop :=
  ∀ n, P14948569435881856669.a n = (A072910 (n + 1) : ℚ)

end A072910

/-! ## A072910.P14603752282820593002

`A057020(A023883(n+1))`
-/

namespace A072910.P14603752282820593002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (A023883 (n + 1)).toNat

end

end A072910.P14603752282820593002

namespace A072910

/-- `A057020(A023883(n+1))` -/
def P14603752282820593002.Spec : Prop :=
  ∀ n, P14603752282820593002.a n = A072910 (n + 1)

end A072910

/-! ## A072910.P11970007905799561349

`A057022(A023883(2*n+1-n))`
-/

namespace A072910.P11970007905799561349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057022 (A023883 (2 * n + 1 - n)).toNat

end

end A072910.P11970007905799561349

namespace A072910

/-- `A057022(A023883(2*n+1-n))` -/
def P11970007905799561349.Spec : Prop :=
  ∀ n, P11970007905799561349.a n = A072910 (n + 1)

end A072910

/-! ## A072910.P11307041913393702658

`A102187(A069928(A023883(n+1)))%A049642(n+1)`
-/

namespace A072910.P11307041913393702658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102187 (A069928 (A023883 (n + 1)).toNat).toNat) (A049642 (n + 1))

end

end A072910.P11307041913393702658

namespace A072910

/-- `A102187(A069928(A023883(n+1)))%A049642(n+1)` -/
def P11307041913393702658.Spec : Prop :=
  ∀ n, P11307041913393702658.a n = A072910 (n + 1)

end A072910

/-! ## A072910.P3999913814261105771

`A102187(A069928(A023883(n+1))%A000203(2*(n+1)))`
-/

namespace A072910.P3999913814261105771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102187 (Int.tmod (A069928 (A023883 (n + 1)).toNat) (A000203 (2 * (n + 1)))).toNat

end

end A072910.P3999913814261105771

namespace A072910

/-- `A102187(A069928(A023883(n+1))%A000203(2*(n+1)))` -/
def P3999913814261105771.Spec : Prop :=
  ∀ n, P3999913814261105771.a n = A072910 (n + 1)

end A072910

/-! ## A072910.P17872328405917343816

`A102187(A069928(A023883(n+1)%A001599(2*(n+1))))`
-/

namespace A072910.P17872328405917343816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102187 (A069928 (Int.tmod (A023883 (n + 1)) (A001599 (2 * (n + 1)))).toNat).toNat

end

end A072910.P17872328405917343816

namespace A072910

/-- `A102187(A069928(A023883(n+1)%A001599(2*(n+1))))` -/
def P17872328405917343816.Spec : Prop :=
  ∀ n, P17872328405917343816.a n = A072910 (n + 1)

end A072910

/-!
# A072911: Number of "phi-divisors" of n.

The programs for A072911, the canonical program `A072911.P17054128587681888485` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072911 has offset 1).

The definition of A072911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072911.P17054128587681888485

`∏{e}[n+1, A000010(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072911

/-- `∏{e}[n+1, A000010(#)]` -/
def P17054128587681888485.Spec : Prop :=
  ∀ n, P17054128587681888485.a n = A072911 (n + 1)

theorem P17054128587681888485.correct : P17054128587681888485.Spec := by
  intro n
  simp only [A072911, Nat.add_sub_cancel]

end A072911

/-! ## A072911.P11587349714872110439

`∏{e}[n+1, A109606(#)+1]`
-/

namespace A072911.P11587349714872110439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A109606 (Nat.factorization (f1 n) p) + 1)

end

end A072911.P11587349714872110439

namespace A072911

/-- `∏{e}[n+1, A109606(#)+1]` -/
def P11587349714872110439.Spec : Prop :=
  ∀ n, P11587349714872110439.a n = A072911 (n + 1)

theorem P11587349714872110439.correct : P11587349714872110439.Spec := by
  intro n
  simp only [A072911, Nat.add_sub_cancel, A072911.P11587349714872110439.f1, A072911.P11587349714872110439.a, A072911.P17054128587681888485.f1, A072911.P17054128587681888485.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072911

/-! ## A072911.P12560080760818739583

`∏{e}[n+1, A039649(#)-1]`
-/

namespace A072911.P12560080760818739583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A039649 (Nat.factorization (f1 n) p) - 1)

end

end A072911.P12560080760818739583

namespace A072911

/-- `∏{e}[n+1, A039649(#)-1]` -/
def P12560080760818739583.Spec : Prop :=
  ∀ n, P12560080760818739583.a n = A072911 (n + 1)

theorem P12560080760818739583.correct : P12560080760818739583.Spec := by
  intro n
  simp only [A072911, Nat.add_sub_cancel, A072911.P12560080760818739583.f1, A072911.P12560080760818739583.a, A072911.P17054128587681888485.f1, A072911.P17054128587681888485.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072911

/-! ## A072911.P15938099911950647886

`∏{p}[n+1, A000010(val(n+1, #))]`
-/

namespace A072911.P15938099911950647886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000010 (SequenceMachineLib.valuation (n + 1) p)

end

end A072911.P15938099911950647886

namespace A072911

/-- `∏{p}[n+1, A000010(val(n+1, #))]` -/
def P15938099911950647886.Spec : Prop :=
  ∀ n, P15938099911950647886.a n = A072911 (n + 1)

end A072911

/-! ## A072911.P2957281784250530757

`A003958(A061389(n+1))`
-/

namespace A072911.P2957281784250530757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A061389 (n + 1)).toNat

end

end A072911.P2957281784250530757

namespace A072911

/-- `A003958(A061389(n+1))` -/
def P2957281784250530757.Spec : Prop :=
  ∀ n, P2957281784250530757.a n = A072911 (n + 1)

end A072911

/-! ## A072911.P11786411422601402755

`A046951(2*A006241(A003557(n+1)))`
-/

namespace A072911.P11786411422601402755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (2 * A006241 (A003557 (n + 1)).toNat).toNat

end

end A072911.P11786411422601402755

namespace A072911

/-- `A046951(2*A006241(A003557(n+1)))` -/
def P11786411422601402755.Spec : Prop :=
  ∀ n, P11786411422601402755.a n = A072911 (n + 1)

end A072911

/-! ## A072911.P16400521400431285101

`A049419(A321167(n+1)^A321167(n+1))`
-/

namespace A072911.P16400521400431285101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (SequenceMachineLib.roundAway ((A321167 (n + 1) : ℚ) ^ (A321167 (n + 1) : ℤ))).toNat

end

end A072911.P16400521400431285101

namespace A072911

/-- `A049419(A321167(n+1)^A321167(n+1))` -/
def P16400521400431285101.Spec : Prop :=
  ∀ n, P16400521400431285101.a n = A072911 (n + 1)

end A072911

/-! ## A072911.P8555026509508390384

`A321167(A321167(n+1)^A061389(n+1))`
-/

namespace A072911.P8555026509508390384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321167 (SequenceMachineLib.roundAway ((A321167 (n + 1) : ℚ) ^ (A061389 (n + 1) : ℤ))).toNat

end

end A072911.P8555026509508390384

namespace A072911

/-- `A321167(A321167(n+1)^A061389(n+1))` -/
def P8555026509508390384.Spec : Prop :=
  ∀ n, P8555026509508390384.a n = A072911 (n + 1)

end A072911

/-! ## A072911.P16194287178528625640

`A325989(n+1)+A295884(n+1)`
-/

namespace A072911.P16194287178528625640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325989 (n + 1) + A295884 (n + 1)

end

end A072911.P16194287178528625640

namespace A072911

/-- `A325989(n+1)+A295884(n+1)` -/
def P16194287178528625640.Spec : Prop :=
  ∀ n, P16194287178528625640.a n = A072911 (n + 1)

end A072911

/-! ## A072911.P10477742020921405725

`A380397(n+1)+A325989(n+1)`
-/

namespace A072911.P10477742020921405725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380397 (n + 1) + A325989 (n + 1)

end

end A072911.P10477742020921405725

namespace A072911

/-- `A380397(n+1)+A325989(n+1)` -/
def P10477742020921405725.Spec : Prop :=
  ∀ n, P10477742020921405725.a n = A072911 (n + 1)

end A072911

/-!
# A072912: Number of Fibonacci numbers F(k) <= 10^n which end in 0.

The programs for A072912, there is no canonical definition to state claims against.
-/

/-! ## A072912.P9658681691175504914

`ceil(A072354(n+1)/15)`
-/

namespace A072912.P9658681691175504914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A072354 (n + 1) : ℚ) / 15⌉

end

end A072912.P9658681691175504914

/-! ## A072912.P4489204186561501022

`ceil(A330095(n+1)/5)`
-/

namespace A072912.P4489204186561501022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330095 (n + 1) : ℚ) / 5⌉

end

end A072912.P4489204186561501022

/-! ## A072912.P5024552006344281266

`A285524(n+7)-A001222(A164952(n+1))`
-/

namespace A072912.P5024552006344281266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285524 (n + 7) - A001222 (A164952 (n + 1)).toNat

end

end A072912.P5024552006344281266

/-! ## A072912.P11516762967482818503

`A070939(A056170(n+1)+A005709(n+3))`
-/

namespace A072912.P11516762967482818503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A056170 (n + 1) + A005709 (n + 3)).toNat

end

end A072912.P11516762967482818503

/-! ## A072912.P9268342790483176772

`A209899(A054406(n+1))+1`
-/

namespace A072912.P9268342790483176772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209899 (A054406 (n + 1)).toNat + 1

end

end A072912.P9268342790483176772

/-!
# A072913: Numerators of (1/4!)*(H(n,1)^4+6*H(n,1)^2*H(n,2)+8*H(n,1)*H(n,3)+3*H(n,2)^2+6*H(n,4)), where H(n,m) = Sum_{i=1..n} 1/i^m are generalized harmonic numbers.

The programs for A072913, there is no canonical definition to state claims against.
-/

/-! ## A072913.P17360518739934203186

`A257894(A167499(n+3))`
-/

namespace A072913.P17360518739934203186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257894 (A167499 (n + 3)).toNat

end

end A072913.P17360518739934203186

/-! ## A072913.P2941874886037038319

`A257894(A155212(n)+13)`
-/

namespace A072913.P2941874886037038319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257894 (A155212 n + 13).toNat

end

end A072913.P2941874886037038319

/-!
# A072916: Number of m such that floor(prime(m)/m) = n.

The programs for A072916, there is no canonical definition to state claims against.
-/

/-! ## A072916.P13192006748494090848

`A359496(A085158(2*n+1))+A131066(n)`
-/

namespace A072916.P13192006748494090848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359496 (A085158 (2 * n + 1)).toNat + A131066 n

end

end A072916.P13192006748494090848

/-!
# A072917: a(n) = p(n) - phi(n), where p(n) is the least prime greater than phi(n).

The programs for A072917, the canonical program `A072917.P88394405705983197` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072917 has offset 1).

The definition of A072917 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A013632, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072917.P88394405705983197

`A013632(A000010(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072917

/-- `A013632(A000010(n+1))` -/
def P88394405705983197.Spec : Prop :=
  ∀ n, P88394405705983197.a n = A072917 (n + 1)

theorem P88394405705983197.correct : P88394405705983197.Spec := by
  intro n
  simp only [A072917, Nat.add_sub_cancel]

end A072917

/-! ## A072917.P17980581025096393253

`A013632(Δ[A002088(n)])`
-/

namespace A072917.P17980581025096393253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (f1 (n + 1) - f1 n).toNat

end

end A072917.P17980581025096393253

namespace A072917

/-- `A013632(Δ[A002088(n)])` -/
def P17980581025096393253.Spec : Prop :=
  ∀ n, P17980581025096393253.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P12121418194243700762

`A007920(A039649(n+1))+1`
-/

namespace A072917.P12121418194243700762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A039649 (n + 1)).toNat + 1

end

end A072917.P12121418194243700762

namespace A072917

/-- `A007920(A039649(n+1))+1` -/
def P12121418194243700762.Spec : Prop :=
  ∀ n, P12121418194243700762.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P9549039339233628066

`A013632(A109606(n+1)+1)`
-/

namespace A072917.P9549039339233628066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A109606 (n + 1) + 1).toNat

end

end A072917.P9549039339233628066

namespace A072917

/-- `A013632(A109606(n+1)+1)` -/
def P9549039339233628066.Spec : Prop :=
  ∀ n, P9549039339233628066.a n = A072917 (n + 1)

theorem P9549039339233628066.correct : P9549039339233628066.Spec := by
  intro n
  simp only [A072917, Nat.add_sub_cancel, A072917.P9549039339233628066.a, A072917.P88394405705983197.a, A000010, A000010.P4673923239450215316.a, A013632, A013632.P6559946879985956067.a, A109606, A109606.P2415810041766612210.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072917

/-! ## A072917.P14857995602332690702

`A013632(A039649(n+1)-1)`
-/

namespace A072917.P14857995602332690702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A039649 (n + 1) - 1).toNat

end

end A072917.P14857995602332690702

namespace A072917

/-- `A013632(A039649(n+1)-1)` -/
def P14857995602332690702.Spec : Prop :=
  ∀ n, P14857995602332690702.a n = A072917 (n + 1)

theorem P14857995602332690702.correct : P14857995602332690702.Spec := by
  intro n
  simp only [A072917, Nat.add_sub_cancel, A072917.P14857995602332690702.a, A072917.P88394405705983197.a, A000010, A000010.P4673923239450215316.a, A013632, A013632.P6559946879985956067.a, A039649, A039649.P16717312505280968063.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072917

/-! ## A072917.P16233527435818166551

`or(1, A007920(A252502(n+1)))`
-/

namespace A072917.P16233527435818166551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007920 (A252502 (n + 1)).toNat)

end

end A072917.P16233527435818166551

namespace A072917

/-- `or(1, A007920(A252502(n+1)))` -/
def P16233527435818166551.Spec : Prop :=
  ∀ n, P16233527435818166551.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P9362286307506000909

`A007920(A000010(n+1)+1)+1`
-/

namespace A072917.P9362286307506000909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A000010 (n + 1) + 1).toNat + 1

end

end A072917.P9362286307506000909

namespace A072917

/-- `A007920(A000010(n+1)+1)+1` -/
def P9362286307506000909.Spec : Prop :=
  ∀ n, P9362286307506000909.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P10337831302052551967

`A151800(A078773(n+1))-A000010(n+1)`
-/

namespace A072917.P10337831302052551967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A078773 (n + 1)).toNat - A000010 (n + 1)

end

end A072917.P10337831302052551967

namespace A072917

/-- `A151800(A078773(n+1))-A000010(n+1)` -/
def P10337831302052551967.Spec : Prop :=
  ∀ n, P10337831302052551967.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P4435485899342784399

`A007918(A000010(n+1)+1)-A000010(n+1)`
-/

namespace A072917.P4435485899342784399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000010 (n + 1) + 1).toNat - A000010 (n + 1)

end

end A072917.P4435485899342784399

namespace A072917

/-- `A007918(A000010(n+1)+1)-A000010(n+1)` -/
def P4435485899342784399.Spec : Prop :=
  ∀ n, P4435485899342784399.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P4438613293635933609

`A151800(1-A051953(n+1)+n)-Δ[A005728(n)]`
-/

namespace A072917.P4438613293635933609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (1 - A051953 (n + 1) + (n : ℤ)).toNat - (f1 (n + 1) - f1 n)

end

end A072917.P4438613293635933609

namespace A072917

/-- `A151800(1-A051953(n+1)+n)-Δ[A005728(n)]` -/
def P4438613293635933609.Spec : Prop :=
  ∀ n, P4438613293635933609.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P14508363479431516489

`A151800(A000010(n+1)%(n+1))-A000010(n+1)`
-/

namespace A072917.P14508363479431516489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.tmod (A000010 (n + 1)) (n + 1 : ℤ)).toNat - A000010 (n + 1)

end

end A072917.P14508363479431516489

namespace A072917

/-- `A151800(A000010(n+1)%(n+1))-A000010(n+1)` -/
def P14508363479431516489.Spec : Prop :=
  ∀ n, P14508363479431516489.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P15661373956946445238

`A151800(n-A219428(n+1))-(n-A219428(n+1))`
-/

namespace A072917.P15661373956946445238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n : ℤ) - A219428 (n + 1)).toNat - ((n : ℤ) - A219428 (n + 1))

end

end A072917.P15661373956946445238

namespace A072917

/-- `A151800(n-A219428(n+1))-(n-A219428(n+1))` -/
def P15661373956946445238.Spec : Prop :=
  ∀ n, P15661373956946445238.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P4347391708360591332

`A151800(1-A051953(n+1)+n)-round(A002246(n+1)/4)`
-/

namespace A072917.P4347391708360591332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (1 - A051953 (n + 1) + (n : ℤ)).toNat - SequenceMachineLib.roundAway ((A002246 (n + 1) : ℚ) / 4)

end

end A072917.P4347391708360591332

namespace A072917

/-- `A151800(1-A051953(n+1)+n)-round(A002246(n+1)/4)` -/
def P4347391708360591332.Spec : Prop :=
  ∀ n, P4347391708360591332.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P11997637834684670608

`A151800(1-A051953(n+1)+n)-(A005728(n+1)-A005728(n))`
-/

namespace A072917.P11997637834684670608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (1 - A051953 (n + 1) + (n : ℤ)).toNat - (A005728 (n + 1) - A005728 n)

end

end A072917.P11997637834684670608

namespace A072917

/-- `A151800(1-A051953(n+1)+n)-(A005728(n+1)-A005728(n))` -/
def P11997637834684670608.Spec : Prop :=
  ∀ n, P11997637834684670608.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P14211899610465224466

`A151800(A003968(n+1)-A348971(n+1))-(1-A051953(n+1)+n)`
-/

namespace A072917.P14211899610465224466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A003968 (n + 1) - A348971 (n + 1)).toNat - (1 - A051953 (n + 1) + (n : ℤ))

end

end A072917.P14211899610465224466

namespace A072917

/-- `A151800(A003968(n+1)-A348971(n+1))-(1-A051953(n+1)+n)` -/
def P14211899610465224466.Spec : Prop :=
  ∀ n, P14211899610465224466.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P3712099030193663848

`A151800(1-A051953(n+1)+n)-A353643(n+1)*A353644(n+1)`
-/

namespace A072917.P3712099030193663848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (1 - A051953 (n + 1) + (n : ℤ)).toNat - A353643 (n + 1) * A353644 (n + 1)

end

end A072917.P3712099030193663848

namespace A072917

/-- `A151800(1-A051953(n+1)+n)-A353643(n+1)*A353644(n+1)` -/
def P3712099030193663848.Spec : Prop :=
  ∀ n, P3712099030193663848.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P6789221211936697371

`A013632(A384710(n+1))`
-/

namespace A072917.P6789221211936697371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A384710 (n + 1)).toNat

end

end A072917.P6789221211936697371

namespace A072917

/-- `A013632(A384710(n+1))` -/
def P6789221211936697371.Spec : Prop :=
  ∀ n, P6789221211936697371.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P7772794006838265155

`A151800(1-A051953(n+1)+n)-(A049633(n)-A049632(n))`
-/

namespace A072917.P7772794006838265155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (1 - A051953 (n + 1) + (n : ℤ)).toNat - (A049633 n - A049632 n)

end

end A072917.P7772794006838265155

namespace A072917

/-- `A151800(1-A051953(n+1)+n)-(A049633(n)-A049632(n))` -/
def P7772794006838265155.Spec : Prop :=
  ∀ n, P7772794006838265155.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P12220890882368232473

`A159477(A000010(n+1)+1)-A000010(n+1)`
-/

namespace A072917.P12220890882368232473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A000010 (n + 1) + 1).toNat - A000010 (n + 1)

end

end A072917.P12220890882368232473

namespace A072917

/-- `A159477(A000010(n+1)+1)-A000010(n+1)` -/
def P12220890882368232473.Spec : Prop :=
  ∀ n, P12220890882368232473.a n = A072917 (n + 1)

end A072917

/-! ## A072917.P385419732504920295

`A151800(1-A051953(n+1)+n)-Δ[A206297(n+1)/2]`
-/

namespace A072917.P385419732504920295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206297 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 (1 - A051953 (n + 1) + (n : ℤ)).toNat : ℚ) - (f1 (n + 1) - f1 n)

end

end A072917.P385419732504920295

namespace A072917

/-- `A151800(1-A051953(n+1)+n)-Δ[A206297(n+1)/2]` -/
def P385419732504920295.Spec : Prop :=
  ∀ n, P385419732504920295.a n = (A072917 (n + 1) : ℚ)

end A072917

/-!
# A072918: a(n) = p(n) - sigma(n), where p(n) is the least prime greater than sigma(n).

The programs for A072918, the canonical program `A072918.P13812427544987107066` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072918 has offset 1).

The definition of A072918 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072918.P13812427544987107066

`A013632(A000203(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072918

/-- `A013632(A000203(n+1))` -/
def P13812427544987107066.Spec : Prop :=
  ∀ n, P13812427544987107066.a n = A072918 (n + 1)

theorem P13812427544987107066.correct : P13812427544987107066.Spec := by
  intro n
  simp only [A072918, Nat.add_sub_cancel]

end A072918

/-! ## A072918.P15258710178694798740

`A074495(n+1)-Δ[A160664(n)]`
-/

namespace A072918.P15258710178694798740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074495 (n + 1) - (f1 (n + 1) - f1 n)

end

end A072918.P15258710178694798740

namespace A072918

/-- `A074495(n+1)-Δ[A160664(n)]` -/
def P15258710178694798740.Spec : Prop :=
  ∀ n, P15258710178694798740.a n = A072918 (n + 1)

end A072918

/-! ## A072918.P3448600792330077337

`A074495(n+1)-A000203(n+1)`
-/

namespace A072918.P3448600792330077337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074495 (n + 1) - A000203 (n + 1)

end

end A072918.P3448600792330077337

namespace A072918

/-- `A074495(n+1)-A000203(n+1)` -/
def P3448600792330077337.Spec : Prop :=
  ∀ n, P3448600792330077337.a n = A072918 (n + 1)

end A072918

/-! ## A072918.P2731437011336252153

`A074495(n+1)-abs(A143348(n+1))`
-/

namespace A072918.P2731437011336252153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074495 (n + 1) - |A143348 (n + 1)|

end

end A072918.P2731437011336252153

namespace A072918

/-- `A074495(n+1)-abs(A143348(n+1))` -/
def P2731437011336252153.Spec : Prop :=
  ∀ n, P2731437011336252153.a n = A072918 (n + 1)

end A072918

/-! ## A072918.P11285314460198791343

`A074495(n+1)-∑[A340793(n+1)]`
-/

namespace A072918.P11285314460198791343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074495 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072918.P11285314460198791343

namespace A072918

/-- `A074495(n+1)-∑[A340793(n+1)]` -/
def P11285314460198791343.Spec : Prop :=
  ∀ n, P11285314460198791343.a n = A072918 (n + 1)

end A072918

/-! ## A072918.P11641633224663089220

`A074495(n+1)-(A039653(n+1)+1)`
-/

namespace A072918.P11641633224663089220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074495 (n + 1) - (A039653 (n + 1) + 1)

end

end A072918.P11641633224663089220

namespace A072918

/-- `A074495(n+1)-(A039653(n+1)+1)` -/
def P11641633224663089220.Spec : Prop :=
  ∀ n, P11641633224663089220.a n = A072918 (n + 1)

end A072918

/-! ## A072918.P2174136725716086791

`A074495(n+1)+1-A088580(n+1)`
-/

namespace A072918.P2174136725716086791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074495 (n + 1) + (1 - A088580 (n + 1))

end

end A072918.P2174136725716086791

namespace A072918

/-- `A074495(n+1)+1-A088580(n+1)` -/
def P2174136725716086791.Spec : Prop :=
  ∀ n, P2174136725716086791.a n = A072918 (n + 1)

end A072918

/-! ## A072918.P13148927534335202669

`A074495(n+1)-A319528(n+1)/8`
-/

namespace A072918.P13148927534335202669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074495 (n + 1) : ℚ) - (A319528 (n + 1) : ℚ) / 8

end

end A072918.P13148927534335202669

namespace A072918

/-- `A074495(n+1)-A319528(n+1)/8` -/
def P13148927534335202669.Spec : Prop :=
  ∀ n, P13148927534335202669.a n = (A072918 (n + 1) : ℚ)

end A072918

/-! ## A072918.P16652689008664426589

`A151800(∑{d}[n+1, #])-A000203(n+1)`
-/

namespace A072918.P16652689008664426589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ d ∈ Nat.divisors (f1 n), d) - A000203 (n + 1)

end

end A072918.P16652689008664426589

namespace A072918

/-- `A151800(∑{d}[n+1, #])-A000203(n+1)` -/
def P16652689008664426589.Spec : Prop :=
  ∀ n, P16652689008664426589.a n = A072918 (n + 1)

end A072918

/-! ## A072918.P13259746841247288784

`A151800(A245092(2*n+1))-A000203(n+1)`
-/

namespace A072918.P13259746841247288784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A245092 (2 * n + 1)).toNat - A000203 (n + 1)

end

end A072918.P13259746841247288784

namespace A072918

/-- `A151800(A245092(2*n+1))-A000203(n+1)` -/
def P13259746841247288784.Spec : Prop :=
  ∀ n, P13259746841247288784.a n = A072918 (n + 1)

end A072918

/-! ## A072918.P7662132638671436441

`A151800(A074400(n+1)/2)-A074400(n+1)/2`
-/

namespace A072918.P7662132638671436441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat : ℚ) - (A074400 (n + 1) : ℚ) / 2

end

end A072918.P7662132638671436441

namespace A072918

/-- `A151800(A074400(n+1)/2)-A074400(n+1)/2` -/
def P7662132638671436441.Spec : Prop :=
  ∀ n, P7662132638671436441.a n = (A072918 (n + 1) : ℚ)

end A072918

/-! ## A072918.P4174281265926737000

`A151800(A000203(n+1))-(A155085(n+1)-(n+1))`
-/

namespace A072918.P4174281265926737000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000203 (n + 1)).toNat - (A155085 (n + 1) - (n + 1 : ℤ))

end

end A072918.P4174281265926737000

namespace A072918

/-- `A151800(A000203(n+1))-(A155085(n+1)-(n+1))` -/
def P4174281265926737000.Spec : Prop :=
  ∀ n, P4174281265926737000.a n = A072918 (n + 1)

end A072918

/-! ## A072918.P16688522435886408082

`A151800(A000203(n+1))-A064987(n+1)/(n+1)`
-/

namespace A072918.P16688522435886408082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 (A000203 (n + 1)).toNat : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A072918.P16688522435886408082

namespace A072918

/-- `A151800(A000203(n+1))-A064987(n+1)/(n+1)` -/
def P16688522435886408082.Spec : Prop :=
  ∀ n, P16688522435886408082.a n = (A072918 (n + 1) : ℚ)

end A072918

/-! ## A072918.P12471050060426013298

`A151800(A155085(n+1)-(n+1))-A245092(2*n+1)`
-/

namespace A072918.P12471050060426013298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A155085 (n + 1) - (n + 1 : ℤ)).toNat - A245092 (2 * n + 1)

end

end A072918.P12471050060426013298

namespace A072918

/-- `A151800(A155085(n+1)-(n+1))-A245092(2*n+1)` -/
def P12471050060426013298.Spec : Prop :=
  ∀ n, P12471050060426013298.a n = A072918 (n + 1)

end A072918

/-! ## A072918.P9258640743283389452

`A151800(A064987(n+1)/(n+1))-(A155085(n+1)-(n+1))`
-/

namespace A072918.P9258640743283389452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat - (A155085 (n + 1) - (n + 1 : ℤ))

end

end A072918.P9258640743283389452

namespace A072918

/-- `A151800(A064987(n+1)/(n+1))-(A155085(n+1)-(n+1))` -/
def P9258640743283389452.Spec : Prop :=
  ∀ n, P9258640743283389452.a n = A072918 (n + 1)

end A072918

/-! ## A072918.P15531562346343754421

`A013632(∑{d}[n+1, #])`
-/

namespace A072918.P15531562346343754421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A072918.P15531562346343754421

namespace A072918

/-- `A013632(∑{d}[n+1, #])` -/
def P15531562346343754421.Spec : Prop :=
  ∀ n, P15531562346343754421.a n = A072918 (n + 1)

end A072918

/-! ## A072918.P17208722886071517103

`A013632(A088580(n+1)-1)`
-/

namespace A072918.P17208722886071517103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A088580 (n + 1) - 1).toNat

end

end A072918.P17208722886071517103

namespace A072918

/-- `A013632(A088580(n+1)-1)` -/
def P17208722886071517103.Spec : Prop :=
  ∀ n, P17208722886071517103.a n = A072918 (n + 1)

theorem P17208722886071517103.correct : P17208722886071517103.Spec := by
  intro n
  simp only [A072918, Nat.add_sub_cancel, A072918.P17208722886071517103.a, A072918.P13812427544987107066.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A013632, A013632.P6559946879985956067.a, A088580, A088580.P3089093194242277422.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072918

/-! ## A072918.P2258923354497704603

`A013632(A245092(2*n+1))`
-/

namespace A072918.P2258923354497704603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A245092 (2 * n + 1)).toNat

end

end A072918.P2258923354497704603

namespace A072918

/-- `A013632(A245092(2*n+1))` -/
def P2258923354497704603.Spec : Prop :=
  ∀ n, P2258923354497704603.a n = A072918 (n + 1)

end A072918

/-! ## A072918.P15723375142600463897

`A007920(A000203(n+1)+1)+1`
-/

namespace A072918.P15723375142600463897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A000203 (n + 1) + 1).toNat + 1

end

end A072918.P15723375142600463897

namespace A072918

/-- `A007920(A000203(n+1)+1)+1` -/
def P15723375142600463897.Spec : Prop :=
  ∀ n, P15723375142600463897.a n = A072918 (n + 1)

end A072918

/-! ## A072918.P10058947045557208412

`A013632(A001065(n+1)+1+n)`
-/

namespace A072918.P10058947045557208412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A072918.P10058947045557208412

namespace A072918

/-- `A013632(A001065(n+1)+1+n)` -/
def P10058947045557208412.Spec : Prop :=
  ∀ n, P10058947045557208412.a n = A072918 (n + 1)

theorem P10058947045557208412.correct : P10058947045557208412.Spec := by
  intro n
  simp only [A072918, Nat.add_sub_cancel, A072918.P10058947045557208412.a, A072918.P13812427544987107066.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A013632, A013632.P6559946879985956067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072918

/-!
# A072919: a(n) = p(n) - binomial(2n,n), where p(n) is the least prime greater than binomial(2n,n).

The programs for A072919, there is no canonical definition to state claims against.
-/

/-! ## A072919.P555238261321912792

`A359292(n+1)-A000984(n+1)`
-/

namespace A072919.P555238261321912792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359292 (n + 1) - A000984 (n + 1)

end

end A072919.P555238261321912792

/-! ## A072919.P1928990152183512785

`A359292(n+1)-A056040(2*(n+1))`
-/

namespace A072919.P1928990152183512785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359292 (n + 1) - A056040 (2 * (n + 1))

end

end A072919.P1928990152183512785

/-!
# A072920: a(n) = Sum_{k=1..n} A034693(k).

The programs for A072920, there is no canonical definition to state claims against.
-/

/-! ## A072920.P5156759263553320269

`∑[A034693(n+1)]`
-/

namespace A072920.P5156759263553320269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072920.P5156759263553320269

/-! ## A072920.P4208868504352756049

`∑[ceil(A034694(n+1)/(n+2))]`
-/

namespace A072920.P4208868504352756049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034694 (n + 1) : ℚ) / (n + 2 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072920.P4208868504352756049

/-! ## A072920.P2153905560666229789

`A034693(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A072920.P2153905560666229789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034693 (n + 1) + a (A023443 n).toNat

end

end A072920.P2153905560666229789

/-! ## A072920.P18356790213226842683

`∑[round(A034694(n+1)/A020725(n+1))]`
-/

namespace A072920.P18356790213226842683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A034694 (n + 1) : ℚ) / (A020725 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072920.P18356790213226842683

/-! ## A072920.P2145968876676991611

`∑[(A034694(n+1)-1)/A000027(n+1)]`
-/

namespace A072920.P2145968876676991611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034694 (n + 1) - 1 : ℚ) / (A000027 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072920.P2145968876676991611

/-! ## A072920.P1429731974326929320

`a(n-1)-(A000007(n)-A034693(n+1))` with `a(0)=1`
-/

namespace A072920.P1429731974326929320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - A034693 (n + 1))

end

end A072920.P1429731974326929320

/-! ## A072920.P6001586893648166847

`a(n-1)+A034693(n+1)/ceil(2/A000040(n+1))` with `a(0)=1`
-/

namespace A072920.P6001586893648166847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A034693 (n + 1) : ℚ) / (⌈2 / (A000040 (n + 1) : ℚ)⌉ : ℚ)

end

end A072920.P6001586893648166847

/-! ## A072920.P2749264984534136003

`∑[A000010(A034694(n+1))/A000027(n+1)]`
-/

namespace A072920.P2749264984534136003
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A034694 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072920.P2749264984534136003

/-! ## A072920.P10009296107540421704

`a(n-1)+A014963(C(n+2, 2))*A034693(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A072920.P10009296107540421704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A014963 (Nat.choose (n + 2) 2) * A034693 (n + 1)

end

end A072920.P10009296107540421704

/-! ## A072920.P3437822062569582411

`∑[A087377(∑[n]+1)]`
-/

namespace A072920.P3437822062569582411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087377 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072920.P3437822062569582411

/-! ## A072920.P15696445023403447806

`∑[A087377(A000124(n))%15]`
-/

namespace A072920.P15696445023403447806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087377 (A000124 n).toNat) 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072920.P15696445023403447806

/-!
# A072921: a(1)=1; a(n) = a(n-1) + [sum of all decimal digits present so far in the sequence].

The programs for A072921, there is no canonical definition to state claims against.
-/

/-! ## A072921.P16865528045962550259

`a(n-1)+A062028(a(n-1))-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A072921.P16865528045962550259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A062028 (a (n - 1)).toNat - a (n - 2))

end

end A072921.P16865528045962550259

/-! ## A072921.P11106589394642190146

`A084618(a(n-1)+1)+n²` with `a(0)=1`
-/

namespace A072921.P11106589394642190146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084618 (a (n - 1) + 1).toNat + (n ^ 2 : ℤ)

end

end A072921.P11106589394642190146

/-! ## A072921.P15274445736998708573

`A103128(A006858(n)+2)`
-/

namespace A072921.P15274445736998708573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A006858 n + 2).toNat

end

end A072921.P15274445736998708573

/-! ## A072921.P11686798372316777737

`A003056(A006858(n)+2*n+1)`
-/

namespace A072921.P11686798372316777737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A006858 n + (2 * n + 1 : ℤ)).toNat

end

end A072921.P11686798372316777737

/-!
# A072923: Number of primes of the form floor( (1+1/k)^n ), 1<=k<=n.

The programs for A072923, there is no canonical definition to state claims against.
-/

/-! ## A072923.P4904298309894964361

`A263087(A213302(n+2))+A056239(n+1)`
-/

namespace A072923.P4904298309894964361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 (A213302 (n + 2)).toNat + A056239 (n + 1)

end

end A072923.P4904298309894964361

/-!
# A072926: a(n) = Sum_{k=1..n} A051699(k).

The programs for A072926, the canonical program `A072926.P14793020734232672939` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072926 has offset 1).

The definition of A072926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072926.P14793020734232672939

`∑[A051699(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A072926

/-- `∑[A051699(n+1)]` -/
def P14793020734232672939.Spec : Prop :=
  ∀ n, P14793020734232672939.a n = A072926 (n + 1)

theorem P14793020734232672939.correct : P14793020734232672939.Spec := by
  intro n
  simp only [A072926, Nat.add_sub_cancel]

end A072926

/-! ## A072926.P9381718072392935135

`∑[A334208(n+1)]+1`
-/

namespace A072926.P9381718072392935135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072926.P9381718072392935135

namespace A072926

/-- `∑[A334208(n+1)]+1` -/
def P9381718072392935135.Spec : Prop :=
  ∀ n, P9381718072392935135.a n = A072926 (n + 1)

end A072926

/-! ## A072926.P303376829812492302

`∑[abs(Δ[A342371(n)]-1-n)]`
-/

namespace A072926.P303376829812492302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342371 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n - 1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072926.P303376829812492302

namespace A072926

/-- `∑[abs(Δ[A342371(n)]-1-n)]` -/
def P303376829812492302.Spec : Prop :=
  ∀ n, P303376829812492302.a n = A072926 (n + 1)

end A072926

/-! ## A072926.P12520835199354939989

`∑[abs(n+1-A051697(n+1))]`
-/

namespace A072926.P12520835199354939989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A051697 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072926.P12520835199354939989

namespace A072926

/-- `∑[abs(n+1-A051697(n+1))]` -/
def P12520835199354939989.Spec : Prop :=
  ∀ n, P12520835199354939989.a n = A072926 (n + 1)

theorem P12520835199354939989.correct : P12520835199354939989.Spec := by
  intro n
  simp only [A072926, Nat.add_sub_cancel, A072926.P12520835199354939989.f1, A072926.P12520835199354939989.a, A072926.P14793020734232672939.f1, A072926.P14793020734232672939.a, A051697, A051697.P15169074483493563510.a, A051699, A051699.P8117944160580014048.a, A076272, A076272.P7601863913326616952.a, A006530, A006530.P13372528560459906635.a, A076271, A076271.P4265232286092406100.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072926

/-! ## A072926.P15827309381702096915

`A028310(∑[A051699(-xor(n, -1))])`
-/

namespace A072926.P15827309381702096915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072926.P15827309381702096915

namespace A072926

/-- `A028310(∑[A051699(-xor(n, -1))])` -/
def P15827309381702096915.Spec : Prop :=
  ∀ n, P15827309381702096915.a n = A072926 (n + 1)

end A072926

/-! ## A072926.P12218715895139781828

`A051699(A233583(n+1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A072926.P12218715895139781828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051699 (A233583 (n + 1) + 1).toNat + a (n - 1)

end

end A072926.P12218715895139781828

namespace A072926

/-- `A051699(A233583(n+1)+1)+a(n-1)` -/
def P12218715895139781828.Spec : Prop :=
  ∀ n, P12218715895139781828.a n = A072926 (n + 1)

end A072926

/-!
# A072927: a(n) = minimum value of abs(n-phi(x)), x>0.

The programs for A072927, there is no canonical definition to state claims against.
-/

/-! ## A072927.P1535516361876690573

`A007814(gcd(A005893(n), A049283(n+1)))`
-/

namespace A072927.P1535516361876690573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.gcd (A005893 n) (A049283 (n + 1)))

end

end A072927.P1535516361876690573

/-! ## A072927.P17871732143857680502

`round(3^(n%2)/A309586(A322310(n+1)))`
-/

namespace A072927.P17871732143857680502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ (n % 2) : ℚ) / (A309586 (A322310 (n + 1)).toNat : ℚ))

end

end A072927.P17871732143857680502

/-! ## A072927.P15594414350258472886

`gcd(2, n+1)*and(1, A076868(A014197(n+1)))`
-/

namespace A072927.P15594414350258472886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * Int.land 1 (A076868 (A014197 (n + 1)).toNat)

end

end A072927.P15594414350258472886

/-! ## A072927.P13941846374664617834

`val(A005901(n), A309586(A322310(n+1)))`
-/

namespace A072927.P13941846374664617834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005901 n).toNat (A309586 (A322310 (n + 1)).toNat).toNat

end

end A072927.P13941846374664617834

/-! ## A072927.P17413673003107931743

`C(A000034(n), A312585(A215240(n+1)))`
-/

namespace A072927.P17413673003107931743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000034 n).toNat (A312585 (A215240 (n + 1)).toNat).toNat

end

end A072927.P17413673003107931743

/-! ## A072927.P14263788208005501169

`A007814(or(A005893(n), A049283(n+1)))`
-/

namespace A072927.P14263788208005501169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (A005893 n) (A049283 (n + 1))).toNat

end

end A072927.P14263788208005501169

/-! ## A072927.P11268406531214121383

`A007814(or(A005893(n), A264739(n+1)))`
-/

namespace A072927.P11268406531214121383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (A005893 n) (A264739 (n + 1))).toNat

end

end A072927.P11268406531214121383

/-! ## A072927.P4201941785590862644

`A007814(or(A005893(n), A323169(n+1)))`
-/

namespace A072927.P4201941785590862644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (A005893 n) (A323169 (n + 1))).toNat

end

end A072927.P4201941785590862644

/-! ## A072927.P3840619498180962031

`A000034(n)*A036987(A057635(n+1)²)`
-/

namespace A072927.P3840619498180962031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A036987 (A057635 (n + 1) ^ 2).toNat

end

end A072927.P3840619498180962031

/-!
# A072928: Let p_0(m) = the m-th prime number, p_[i+1](m) = p_i(p_i(m)); then a(n) = p_n(1).

The programs for A072928, there is no canonical definition to state claims against.
-/

/-! ## A072928.P13568251058187304795

`A007097(2^n)`
-/

namespace A072928.P13568251058187304795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 (2 ^ n)

end

end A072928.P13568251058187304795

/-!
# A072929: a(n) = Sum_{d dividing n} binomial(2d,d).

The programs for A072929, the canonical program `A072929.P14615629184669553561` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072929 has offset 1).

The definition of A072929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072929.P3917692970874669064

`2*A382503(n+1)`
-/

namespace A072929.P3917692970874669064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A382503 (n + 1)

end

end A072929.P3917692970874669064

namespace A072929

/-- `2*A382503(n+1)` -/
def P3917692970874669064.Spec : Prop :=
  ∀ n, P3917692970874669064.a n = A072929 (n + 1)

end A072929

/-! ## A072929.P14615629184669553561

`∑{d}[n+1, A000984(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072929

/-- `∑{d}[n+1, A000984(#)]` -/
def P14615629184669553561.Spec : Prop :=
  ∀ n, P14615629184669553561.a n = A072929 (n + 1)

theorem P14615629184669553561.correct : P14615629184669553561.Spec := by
  intro n
  simp only [A072929, Nat.add_sub_cancel]

end A072929

/-! ## A072929.P8725318501091065251

`∑{d}[n+1, A001405(#+#)]`
-/

namespace A072929.P8725318501091065251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001405 (d + d)

end

end A072929.P8725318501091065251

namespace A072929

/-- `∑{d}[n+1, A001405(#+#)]` -/
def P8725318501091065251.Spec : Prop :=
  ∀ n, P8725318501091065251.a n = A072929 (n + 1)

end A072929

/-! ## A072929.P5570980700857426737

`∑{d}[n+1, A045992(#)+#]`
-/

namespace A072929.P5570980700857426737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A045992 d + (d : ℤ))

end

end A072929.P5570980700857426737

namespace A072929

/-- `∑{d}[n+1, A045992(#)+#]` -/
def P5570980700857426737.Spec : Prop :=
  ∀ n, P5570980700857426737.a n = A072929 (n + 1)

theorem P5570980700857426737.correct : P5570980700857426737.Spec := by
  intro n
  simp only [A072929, Nat.add_sub_cancel, A072929.P5570980700857426737.f1, A072929.P5570980700857426737.a, A072929.P14615629184669553561.f1, A072929.P14615629184669553561.a, A000984, A000984.P7946844122574426130.a, A045992, A045992.P603582236385676472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072929

/-! ## A072929.P3112493301245501308

`∑{d}[n+1, (#+1)*A000108(#)]`
-/

namespace A072929.P3112493301245501308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d + 1 : ℤ) * A000108 d

end

end A072929.P3112493301245501308

namespace A072929

/-- `∑{d}[n+1, (#+1)*A000108(#)]` -/
def P3112493301245501308.Spec : Prop :=
  ∀ n, P3112493301245501308.a n = A072929 (n + 1)

end A072929

/-! ## A072929.P2625372243881473488

`∑{d}[n+1, A001791(#)+A000108(#)]`
-/

namespace A072929.P2625372243881473488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A001791 d + A000108 d)

end

end A072929.P2625372243881473488

namespace A072929

/-- `∑{d}[n+1, A001791(#)+A000108(#)]` -/
def P2625372243881473488.Spec : Prop :=
  ∀ n, P2625372243881473488.a n = A072929 (n + 1)

end A072929

/-! ## A072929.P15256751929162805457

`∑{d}[n+1, C(2*#, #)]`
-/

namespace A072929.P15256751929162805457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (2 * d) d

end

end A072929.P15256751929162805457

namespace A072929

/-- `∑{d}[n+1, C(2*#, #)]` -/
def P15256751929162805457.Spec : Prop :=
  ∀ n, (P15256751929162805457.a n : ℤ) = A072929 (n + 1)

theorem P15256751929162805457.correct : P15256751929162805457.Spec := by
  intro n
  simp only [A072929, Nat.add_sub_cancel, A072929.P15256751929162805457.f1, A072929.P15256751929162805457.a, A072929.P14615629184669553561.f1, A072929.P14615629184669553561.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072929

/-! ## A072929.P15854312174840121988

`A055894(∑[4*(n+1)])`
-/

namespace A072929.P15854312174840121988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055894 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072929.P15854312174840121988

namespace A072929

/-- `A055894(∑[4*(n+1)])` -/
def P15854312174840121988.Spec : Prop :=
  ∀ n, P15854312174840121988.a n = A072929 (n + 1)

end A072929

/-!
# A072930: a(1)=1, a(2)=10, a(n) = floor(a(n-1)/phi) + floor(a(n-2)/phi) where phi is the golden ratio (1+sqrt(5))/2 (if a(2) < 10 a(k) converges to an integer value).

The programs for A072930, the canonical program `A072930.P7819351760610272067` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072930 has offset 1).

The definition of A072930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1605 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072930.P7819351760610272067

`floor(a(n-1)/ϕ)+floor(a(n-2)/ϕ)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072930

/-- `floor(a(n-1)/ϕ)+floor(a(n-2)/ϕ)` -/
def P7819351760610272067.Spec : Prop :=
  ∀ n, P7819351760610272067.a n = A072930 (n + 1)

theorem P7819351760610272067.correct : P7819351760610272067.Spec := by
  intro n
  simp only [A072930, Nat.add_sub_cancel]

end A072930

/-!
# A072931: Number of ways to write n as a sum of 2 semiprimes.

The programs for A072931, there is no canonical definition to state claims against.
-/

/-! ## A072931.P11188737287148237476

`ceil(A199331(A028310(n))/2)`
-/

namespace A072931.P11188737287148237476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199331 (A028310 n).toNat : ℚ) / 2⌉

end

end A072931.P11188737287148237476

/-! ## A072931.P9109728409433295719

`A302301(n)+char[A075818(n+1)]`
-/

namespace A072931.P9109728409433295719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072931.P9109728409433295719

/-! ## A072931.P11157661921301990595

`A199331(A028310(n))-A302301(n)`
-/

namespace A072931.P11157661921301990595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199331 (A028310 n).toNat - A302301 n

end

end A072931.P11157661921301990595

/-! ## A072931.P1529840952027572856

`abs(A001057(A199331(A233583(n+1))))`
-/

namespace A072931.P1529840952027572856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A199331 (A233583 (n + 1)).toNat).toNat|

end

end A072931.P1529840952027572856

/-! ## A072931.P2176530517061739395

`A199331(A233583(n+1))-A302301(n)`
-/

namespace A072931.P2176530517061739395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199331 (A233583 (n + 1)).toNat - A302301 n

end

end A072931.P2176530517061739395

/-!
# A072932: a(n) is the least k such that floor( (1+1/k)^n ) = floor( (1+1/n)^k ).

The programs for A072932, the canonical program `A072932.P17066602439083659988` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072932 has offset 1).

The definition of A072932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072932.P17066602439083659988

`ceil(1/(root(3, n+1)-1))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072932

/-- `ceil(1/(root(3, n+1)-1))` -/
def P17066602439083659988.Spec : Prop :=
  ∀ n, P17066602439083659988.a n = A072932 (n + 1)

theorem P17066602439083659988.correct : P17066602439083659988.Spec := by
  intro n
  simp only [A072932, Nat.add_sub_cancel]

end A072932

/-! ## A072932.P3908763029975416639

`round(acot(A017089(n))+(n+1)/log(3))`
-/

namespace A072932.P3908763029975416639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A017089 n : ℝ) + (n + 1 : ℝ) / Real.log (3 : ℝ))

end

end A072932.P3908763029975416639

namespace A072932

/-- `round(acot(A017089(n))+(n+1)/log(3))` -/
def P3908763029975416639.Spec : Prop :=
  ∀ n, P3908763029975416639.a n = A072932 (n + 1)

end A072932

/-! ## A072932.P9783655280934753133

`round(acot(A017569(n))+(n+1)/log(3))`
-/

namespace A072932.P9783655280934753133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A017569 n : ℝ) + (n + 1 : ℝ) / Real.log (3 : ℝ))

end

end A072932.P9783655280934753133

namespace A072932

/-- `round(acot(A017569(n))+(n+1)/log(3))` -/
def P9783655280934753133.Spec : Prop :=
  ∀ n, P9783655280934753133.a n = A072932 (n + 1)

end A072932

/-! ## A072932.P18074487362381377577

`A002024(A054071((n+1)²))`
-/

namespace A072932.P18074487362381377577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A054071 ((n + 1) ^ 2)).toNat

end

end A072932.P18074487362381377577

namespace A072932

/-- `A002024(A054071((n+1)²))` -/
def P18074487362381377577.Spec : Prop :=
  ∀ n, P18074487362381377577.a n = A072932 (n + 1)

end A072932

/-! ## A072932.P17158193513554646951

`A351846(A398202(n+1))`
-/

namespace A072932.P17158193513554646951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A398202 (n + 1)).toNat

end

end A072932.P17158193513554646951

namespace A072932

/-- `A351846(A398202(n+1))` -/
def P17158193513554646951.Spec : Prop :=
  ∀ n, P17158193513554646951.a n = A072932 (n + 1)

end A072932

/-!
# A072934: Length of longest non-crossing walk along vertices of n-dimensional hypercubes.

The programs for A072934, there is no canonical definition to state claims against.
-/

/-! ## A072934.P2249125120340729564

`lt[C(11*and(n, 3*n+5), 2), n]`
-/

namespace A072934.P2249125120340729564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (11 * Nat.land n (3 * n + 5)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072934.P2249125120340729564

/-! ## A072934.P4415497352343175673

`∑[record[abs(A356784(3*n+2)-n)]+1]`
-/

namespace A072934.P4415497352343175673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A356784 (3 * n + 2) - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072934.P4415497352343175673

/-! ## A072934.P8006588678321417600

`A042965(A089889(n+2))`
-/

namespace A072934.P8006588678321417600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A089889 (n + 2)).toNat

end

end A072934.P8006588678321417600

/-! ## A072934.P16269566926257414976

`∑[A006369(∑[A084637(n)])]`
-/

namespace A072934.P16269566926257414976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084637 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072934.P16269566926257414976

/-!
# A072936: 

The programs for A072936, there is no canonical definition to state claims against.
-/

/-! ## A072936.P12513624503748947113

`∪[A007352(n+1), A014663(n+1)]`
-/

namespace A072936.P12513624503748947113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072936.P12513624503748947113

/-! ## A072936.P7860087658758218199

`p?[A036259(n+1)+A000007(n)]`
-/

namespace A072936.P7860087658758218199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072936.P7860087658758218199

/-! ## A072936.P14125574941098228924

`p?[gcd(2, A004273(n))*A036259(n+1)]`
-/

namespace A072936.P14125574941098228924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A004273 n) : ℤ) * A036259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072936.P14125574941098228924

/-! ## A072936.P17226818302032216939

`p?[A070478(A036263(n+1)²)+A036259(n+1)]`
-/

namespace A072936.P17226818302032216939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070478 (A036263 (n + 1) ^ 2).toNat + A036259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072936.P17226818302032216939

/-! ## A072936.P12157261850385207996

`p?[A001511(A000010(n+2)+1)*A036259(n+1)]`
-/

namespace A072936.P12157261850385207996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000010 (n + 2) + 1).toNat * A036259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072936.P12157261850385207996

/-! ## A072936.P4971453820065819070

`A000040(lt[A240657(n+1), 1]+1)`
-/

namespace A072936.P4971453820065819070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240657 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A072936.P4971453820065819070

/-! ## A072936.P14785432244170556368

`record[A006530(2*A036259(n+1))]`
-/

namespace A072936.P14785432244170556368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A036259 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072936.P14785432244170556368

/-! ## A072936.P6438230141332302795

`A000040(eq[2, A000040(A240663(n+1)+1)]+1)`
-/

namespace A072936.P6438230141332302795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A240663 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A072936.P6438230141332302795

/-! ## A072936.P1625167423951931007

`p?[A014661(n+1)]`
-/

namespace A072936.P1625167423951931007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072936.P1625167423951931007

/-! ## A072936.P16623752990327836829

`record[A020639(A014661(n+2))]`
-/

namespace A072936.P16623752990327836829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014661 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072936.P16623752990327836829

/-! ## A072936.P9979377217542630388

`∩[A000040(n+1), A014661(n+1)]`
-/

namespace A072936.P9979377217542630388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072936.P9979377217542630388

/-! ## A072936.P15069417195947553505

`∩[A008578(n+1), A014661(n+1)]`
-/

namespace A072936.P15069417195947553505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072936.P15069417195947553505

/-! ## A072936.P2742621672701885205

`∩[A014661(n+1), A033946(n+1)]`
-/

namespace A072936.P2742621672701885205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072936.P2742621672701885205

/-! ## A072936.P18013946618790174411

`∩[A014661(n+1), A038873(n+1)]`
-/

namespace A072936.P18013946618790174411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072936.P18013946618790174411

/-! ## A072936.P1319991692391516159

`∩[A014661(n+1), A040098(n+1)]`
-/

namespace A072936.P1319991692391516159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072936.P1319991692391516159

/-! ## A072936.P1417288939208737052

`∩[A014661(n+1), A045315(n+1)]`
-/

namespace A072936.P1417288939208737052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072936.P1417288939208737052

/-! ## A072936.P14939879771801916403

`∩[A014661(n+1), A045319(n+1)]`
-/

namespace A072936.P14939879771801916403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072936.P14939879771801916403

/-! ## A072936.P11254815853088911164

`∩[A014661(n+1), A045323(n+1)]`
-/

namespace A072936.P11254815853088911164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072936.P11254815853088911164

/-! ## A072936.P6724004004435099810

`∩[A014661(n+1), A045344(n+1)]`
-/

namespace A072936.P6724004004435099810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072936.P6724004004435099810

/-! ## A072936.P2836580358022429150

`∩[A014661(n+1), A045352(n+1)]`
-/

namespace A072936.P2836580358022429150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072936.P2836580358022429150

/-!
# A072937: Least k such that prime(n) appears in factorization of k! + 1.

The programs for A072937, there is no canonical definition to state claims against.
-/

/-! ## A072937.P3645255004001392868

`A073944(n+2)`
-/

namespace A072937.P3645255004001392868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073944 (n + 2)

end

end A072937.P3645255004001392868

/-! ## A072937.P5660191499733043150

`A221861(p?[2*n+1])`
-/

namespace A072937.P5660191499733043150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221861 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A072937.P5660191499733043150

/-! ## A072937.P12369965765945533431

`A221861(A065091(n+1))`
-/

namespace A072937.P12369965765945533431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221861 (A065091 (n + 1)).toNat

end

end A072937.P12369965765945533431

/-! ## A072937.P1453417093129705177

`A221861(A000040(n+2))`
-/

namespace A072937.P1453417093129705177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221861 (A000040 (n + 2)).toNat

end

end A072937.P1453417093129705177

/-! ## A072937.P1225011431872054850

`A221861(A006005(n+2))`
-/

namespace A072937.P1225011431872054850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221861 (A006005 (n + 2)).toNat

end

end A072937.P1225011431872054850

/-! ## A072937.P14960180828614842373

`A221861(Δ[A007504(n+1)])`
-/

namespace A072937.P14960180828614842373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221861 (f1 (n + 1) - f1 n).toNat

end

end A072937.P14960180828614842373

/-! ## A072937.P10259780076580150927

`A221861(record[A006530(n+3)])`
-/

namespace A072937.P10259780076580150927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221861 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072937.P10259780076580150927

/-! ## A072937.P9079572521440898095

`A221861(A383578(n+2))`
-/

namespace A072937.P9079572521440898095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221861 (A383578 (n + 2)).toNat

end

end A072937.P9079572521440898095

/-! ## A072937.P15883400321928319914

`A221861(A160656(n+2))`
-/

namespace A072937.P15883400321928319914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221861 (A160656 (n + 2)).toNat

end

end A072937.P15883400321928319914

/-!
# A072938: Highly composite numbers that are half of the next highly composite number.

The programs for A072938, there is no canonical definition to state claims against.
-/

/-! ## A072938.P5299455990455387594

`∏[∏{p}[n+1, #]]`
-/

namespace A072938.P5299455990455387594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072938.P5299455990455387594

/-! ## A072938.P1513956743732087244

`∏[dr(gcd(n+1, 210))]`
-/

namespace A072938.P1513956743732087244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.gcd (n + 1) 210 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072938.P1513956743732087244

/-! ## A072938.P14540177983580943026

`exp(∑[∑{p}[n+1, log(#)]])`
-/

namespace A072938.P14540177983580943026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Real.log (p : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072938.P14540177983580943026

/-!
# A072939: Define a sequence c depending on n as follows: c(1)=1 and c(2)=n; c(k+2) = (c(k+1) + c(k))/2 if c(k+1) and c(k) have the same parity; otherwise c(k+2) = abs(c(k+1) - 2*c(k)); sequence gives values of n such that lim_{k->oo} c(k) = infinity.

The programs for A072939, the canonical program `A072939.P3298129372781019083` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072939 has offset 1).

The definition of A072939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072939.P3298129372781019083

`eq[3, and(n, 2-n)%6]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072939

/-- `eq[3, and(n, 2-n)%6]` -/
def P3298129372781019083.Spec : Prop :=
  ∀ n, (P3298129372781019083.a n : ℤ) = A072939 (n + 1)

theorem P3298129372781019083.correct : P3298129372781019083.Spec := by
  intro n
  simp only [A072939, Nat.add_sub_cancel]

end A072939

/-! ## A072939.P1254442247638440194

`eq[3, xor(n, n-3)%6]`
-/

namespace A072939.P1254442247638440194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 3)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072939.P1254442247638440194

namespace A072939

/-- `eq[3, xor(n, n-3)%6]` -/
def P1254442247638440194.Spec : Prop :=
  ∀ n, (P1254442247638440194.a n : ℤ) = A072939 (n + 1)

end A072939

/-! ## A072939.P15565147903326959467

`comp[n*and(n, -n)]+1`
-/

namespace A072939.P15565147903326959467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A072939.P15565147903326959467

namespace A072939

/-- `comp[n*and(n, -n)]+1` -/
def P15565147903326959467.Spec : Prop :=
  ∀ n, (P15565147903326959467.a n : ℤ) = A072939 (n + 1)

end A072939

/-! ## A072939.P9314057518556283199

`or(1, comp[n*and(n, -n)])`
-/

namespace A072939.P9314057518556283199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A072939.P9314057518556283199

namespace A072939

/-- `or(1, comp[n*and(n, -n)])` -/
def P9314057518556283199.Spec : Prop :=
  ∀ n, (P9314057518556283199.a n : ℤ) = A072939 (n + 1)

end A072939

/-! ## A072939.P15110402647881783359

`comp[xor(1, n*and(n, -n))]`
-/

namespace A072939.P15110402647881783359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * Int.land (n : ℤ) (-(n : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A072939.P15110402647881783359

namespace A072939

/-- `comp[xor(1, n*and(n, -n))]` -/
def P15110402647881783359.Spec : Prop :=
  ∀ n, (P15110402647881783359.a n : ℤ) = A072939 (n + 1)

end A072939

/-! ## A072939.P9254474014218369084

`comp[or(n, val(n+2, 2))]+3`
-/

namespace A072939.P9254474014218369084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3

end

end A072939.P9254474014218369084

namespace A072939

/-- `comp[or(n, val(n+2, 2))]+3` -/
def P9254474014218369084.Spec : Prop :=
  ∀ n, (P9254474014218369084.a n : ℤ) = A072939 (n + 1)

end A072939

/-! ## A072939.P7105898402632698450

`eq[2, and(n, -n)%3]+1`
-/

namespace A072939.P7105898402632698450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072939.P7105898402632698450

namespace A072939

/-- `eq[2, and(n, -n)%3]+1` -/
def P7105898402632698450.Spec : Prop :=
  ∀ n, (P7105898402632698450.a n : ℤ) = A072939 (n + 1)

end A072939

/-! ## A072939.P5475210960028685231

`lt[0, val(n+1, 2)%2]+2`
-/

namespace A072939.P5475210960028685231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A072939.P5475210960028685231

namespace A072939

/-- `lt[0, val(n+1, 2)%2]+2` -/
def P5475210960028685231.Spec : Prop :=
  ∀ n, (P5475210960028685231.a n : ℤ) = A072939 (n + 1)

end A072939

/-! ## A072939.P7461955957698761823

`A036554(n+1)+1`
-/

namespace A072939.P7461955957698761823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) + 1

end

end A072939.P7461955957698761823

namespace A072939

/-- `A036554(n+1)+1` -/
def P7461955957698761823.Spec : Prop :=
  ∀ n, P7461955957698761823.a n = A072939 (n + 1)

theorem P7461955957698761823.correct : P7461955957698761823.Spec := by
  intro n
  simp only [A072939, Nat.add_sub_cancel, A072939.P7461955957698761823.a, A072939.P3298129372781019083.f1, A072939.P3298129372781019083.f2, A072939.P3298129372781019083.a, A036554, A036554.P8175060370953883075.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072939

/-! ## A072939.P16682572524166058213

`A079523(n+1)+2`
-/

namespace A072939.P16682572524166058213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1) + 2

end

end A072939.P16682572524166058213

namespace A072939

/-- `A079523(n+1)+2` -/
def P16682572524166058213.Spec : Prop :=
  ∀ n, P16682572524166058213.a n = A072939 (n + 1)

end A072939

/-! ## A072939.P13675795370602117357

`A162648(n+1)+3`
-/

namespace A072939.P13675795370602117357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1) + 3

end

end A072939.P13675795370602117357

namespace A072939

/-- `A162648(n+1)+3` -/
def P13675795370602117357.Spec : Prop :=
  ∀ n, P13675795370602117357.a n = A072939 (n + 1)

end A072939

/-! ## A072939.P11478728797830844431

`A284390(n+1)+n`
-/

namespace A072939.P11478728797830844431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284390 (n + 1) + (n : ℤ)

end

end A072939.P11478728797830844431

namespace A072939

/-- `A284390(n+1)+n` -/
def P11478728797830844431.Spec : Prop :=
  ∀ n, P11478728797830844431.a n = A072939 (n + 1)

end A072939

/-! ## A072939.P17795790082008342316

`A003157(n+1)-n`
-/

namespace A072939.P17795790082008342316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (n + 1) - (n : ℤ)

end

end A072939.P17795790082008342316

namespace A072939

/-- `A003157(n+1)-n` -/
def P17795790082008342316.Spec : Prop :=
  ∀ n, P17795790082008342316.a n = A072939 (n + 1)

theorem P17795790082008342316.correct : P17795790082008342316.Spec := by
  intro n
  simp only [A072939, Nat.add_sub_cancel, A072939.P17795790082008342316.a, A072939.P3298129372781019083.f1, A072939.P3298129372781019083.f2, A072939.P3298129372781019083.a, A003157, A003157.P4569272790691930079.a, A036554, A036554.P8175060370953883075.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072939

/-! ## A072939.P17898851937460715307

`2*A003159(n+1)+1`
-/

namespace A072939.P17898851937460715307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003159 (n + 1) + 1

end

end A072939.P17898851937460715307

namespace A072939

/-- `2*A003159(n+1)+1` -/
def P17898851937460715307.Spec : Prop :=
  ∀ n, P17898851937460715307.a n = A072939 (n + 1)

end A072939

/-! ## A072939.P9043810092196366971

`A108269(n+1)/2+1`
-/

namespace A072939.P9043810092196366971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108269 (n + 1) : ℚ) / 2 + 1

end

end A072939.P9043810092196366971

namespace A072939

/-- `A108269(n+1)/2+1` -/
def P9043810092196366971.Spec : Prop :=
  ∀ n, P9043810092196366971.a n = (A072939 (n + 1) : ℚ)

theorem P9043810092196366971.correct : P9043810092196366971.Spec := by
  intro n
  simp only [A072939, Nat.add_sub_cancel, A072939.P9043810092196366971.a, A072939.P3298129372781019083.f1, A072939.P3298129372781019083.f2, A072939.P3298129372781019083.a, A108269, A108269.P11596501751048516182.a, A036554, A036554.P8175060370953883075.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072939

/-! ## A072939.P16668769215575298939

`(A249034(n+1)+1)/2`
-/

namespace A072939.P16668769215575298939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249034 (n + 1) + 1 : ℚ) / 2

end

end A072939.P16668769215575298939

namespace A072939

/-- `(A249034(n+1)+1)/2` -/
def P16668769215575298939.Spec : Prop :=
  ∀ n, P16668769215575298939.a n = (A072939 (n + 1) : ℚ)

end A072939

/-! ## A072939.P5740172748554279070

`2*A121539(n+1)+3`
-/

namespace A072939.P5740172748554279070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121539 (n + 1) + 3

end

end A072939.P5740172748554279070

namespace A072939

/-- `2*A121539(n+1)+3` -/
def P5740172748554279070.Spec : Prop :=
  ∀ n, P5740172748554279070.a n = A072939 (n + 1)

end A072939

/-! ## A072939.P16757966492079297815

`(A131323(n+1)+3)/2`
-/

namespace A072939.P16757966492079297815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131323 (n + 1) + 3 : ℚ) / 2

end

end A072939.P16757966492079297815

namespace A072939

/-- `(A131323(n+1)+3)/2` -/
def P16757966492079297815.Spec : Prop :=
  ∀ n, P16757966492079297815.a n = (A072939 (n + 1) : ℚ)

end A072939

/-! ## A072939.P17518601699883790218

`(A225822(n+1)+5)/4`
-/

namespace A072939.P17518601699883790218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225822 (n + 1) + 5 : ℚ) / 4

end

end A072939.P17518601699883790218

namespace A072939

/-- `(A225822(n+1)+5)/4` -/
def P17518601699883790218.Spec : Prop :=
  ∀ n, P17518601699883790218.a n = (A072939 (n + 1) : ℚ)

end A072939

/-!
# A072940: Integers which have more than one coprime factorization into nonprime powers which sum to the same number.

The programs for A072940, there is no canonical definition to state claims against.
-/

/-! ## A072940.P16123512344694487195

`A074969(eq[A000700(2*(n+1)), A067330(n)])`
-/

namespace A072940.P16123512344694487195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074969 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A072940.P16123512344694487195

/-!
# A072941: Least multiple of n having no prime gaps.

The programs for A072941, there is no canonical definition to state claims against.
-/

/-! ## A072941.P16269710084815511485

`(n+1)*A137795(n+1)`
-/

namespace A072941.P16269710084815511485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A137795 (n + 1)

end

end A072941.P16269710084815511485

/-! ## A072941.P8243936650860620006

`lcm(Δ[A001057(n)], A137795(n+1))`
-/

namespace A072941.P8243936650860620006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A137795 (n + 1))

end

end A072941.P8243936650860620006

/-! ## A072941.P12730144145323712894

`(n+1)*A073483(A322590(n+1))`
-/

namespace A072941.P12730144145323712894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A073483 (A322590 (n + 1)).toNat

end

end A072941.P12730144145323712894

/-! ## A072941.P1388856667815444317

`(n+1)*A073483(A285329(n+1)+1)`
-/

namespace A072941.P1388856667815444317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A073483 (A285329 (n + 1) + 1).toNat

end

end A072941.P1388856667815444317

/-! ## A072941.P12112853319082986977

`lcm(A028310(n+1), A073483(A285329(n+1)+1))`
-/

namespace A072941.P12112853319082986977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (n + 1)) (A073483 (A285329 (n + 1) + 1).toNat)

end

end A072941.P12112853319082986977

/-!
# A072943: Least nonnegative integer k such that n + k^3 is prime, or -1 if no such k exists.

The programs for A072943, there is no canonical definition to state claims against.
-/

/-! ## A072943.P15540544356110132890

`or(A007920(n+1), A240352(A228875(n+1)))`
-/

namespace A072943.P15540544356110132890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007920 (n + 1)) (A240352 (A228875 (n + 1)).toNat)

end

end A072943.P15540544356110132890

/-! ## A072943.P14595536533859608485

`A013632(n)-gcd(5, A000005(A293280(n+1)))`
-/

namespace A072943.P14595536533859608485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n - (Int.gcd 5 (A000005 (A293280 (n + 1)).toNat) : ℤ)

end

end A072943.P14595536533859608485

/-! ## A072943.P3827321008556810699

`A013632(n)-A095771(A154266(A337346(n+1)))`
-/

namespace A072943.P3827321008556810699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n - A095771 (A154266 (A337346 (n + 1)).toNat).toNat

end

end A072943.P3827321008556810699

/-! ## A072943.P1733734843362843259

`A013632(n)-A326691(A005898(n))`
-/

namespace A072943.P1733734843362843259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n - A326691 (A005898 n).toNat

end

end A072943.P1733734843362843259

/-! ## A072943.P2527290320616589468

`A124754(A112798(3*n+5)+A000975(n))`
-/

namespace A072943.P2527290320616589468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A112798 (3 * n + 5) + A000975 n).toNat

end

end A072943.P2527290320616589468

/-!
# A072944: a(1)=2, a(n+1) = 2*a(n) - phi(a(n)) where phi is the Euler totient function A000010.

The programs for A072944, the canonical program `A072944.P12092559157165245569` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072944 has offset 1).

The definition of A072944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072944.P12092559157165245569

`4*a(n-3)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=6, a(4)=10`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072944

/-- `4*a(n-3)` -/
def P12092559157165245569.Spec : Prop :=
  ∀ n, (P12092559157165245569.a n : ℤ) = A072944 (n + 1)

theorem P12092559157165245569.correct : P12092559157165245569.Spec := by
  intro n
  simp only [A072944, Nat.add_sub_cancel]

end A072944

/-! ## A072944.P3955541968564428186

`and(a(n-1)-a(n-2)-a(n-2), xor(1, a(n-1)+a(n-2)))` with `a(0)=2, a(1)=3`
-/

namespace A072944.P3955541968564428186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  Int.land (a (n - 1) - a (n - 2) - a (n - 2)) (Int.xor 1 (a (n - 1) + a (n - 2)))

end

end A072944.P3955541968564428186

namespace A072944

/-- `and(a(n-1)-a(n-2)-a(n-2), xor(1, a(n-1)+a(n-2)))` -/
def P3955541968564428186.Spec : Prop :=
  ∀ n, P3955541968564428186.a n = A072944 (n + 1)

end A072944

/-! ## A072944.P1018614999197841360

`A029747(A004271(n+2))`
-/

namespace A072944.P1018614999197841360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A004271 (n + 2)).toNat

end

end A072944.P1018614999197841360

namespace A072944

/-- `A029747(A004271(n+2))` -/
def P1018614999197841360.Spec : Prop :=
  ∀ n, P1018614999197841360.a n = A072944 (n + 1)

end A072944

/-! ## A072944.P7219619226288334652

`A029747(A004278(n+2))`
-/

namespace A072944.P7219619226288334652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A004278 (n + 2)).toNat

end

end A072944.P7219619226288334652

namespace A072944

/-- `A029747(A004278(n+2))` -/
def P7219619226288334652.Spec : Prop :=
  ∀ n, P7219619226288334652.a n = A072944 (n + 1)

end A072944

/-! ## A072944.P17910436232667665491

`A029747(record[A254048(n)+2])`
-/

namespace A072944.P17910436232667665491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072944.P17910436232667665491

namespace A072944

/-- `A029747(record[A254048(n)+2])` -/
def P17910436232667665491.Spec : Prop :=
  ∀ n, P17910436232667665491.a n = A072944 (n + 1)

end A072944

/-! ## A072944.P12129329531351776885

`A029747(A004274(n+1)+1)`
-/

namespace A072944.P12129329531351776885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A004274 (n + 1) + 1).toNat

end

end A072944.P12129329531351776885

namespace A072944

/-- `A029747(A004274(n+1)+1)` -/
def P12129329531351776885.Spec : Prop :=
  ∀ n, P12129329531351776885.a n = A072944 (n + 1)

end A072944

/-! ## A072944.P5880048257830413546

`A029747(A004280(n+1)+1)`
-/

namespace A072944.P5880048257830413546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A004280 (n + 1) + 1).toNat

end

end A072944.P5880048257830413546

namespace A072944

/-- `A029747(A004280(n+1)+1)` -/
def P5880048257830413546.Spec : Prop :=
  ∀ n, P5880048257830413546.a n = A072944 (n + 1)

end A072944

/-! ## A072944.P15768195193096067437

`A029747(eq[A057427(n), A057979(n)])`
-/

namespace A072944.P15768195193096067437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A072944.P15768195193096067437

namespace A072944

/-- `A029747(eq[A057427(n), A057979(n)])` -/
def P15768195193096067437.Spec : Prop :=
  ∀ n, P15768195193096067437.a n = A072944 (n + 1)

end A072944

/-! ## A072944.P8854075121479785209

`A029747(record[A001511(n+1)+A000265(n+1)])`
-/

namespace A072944.P8854075121479785209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072944.P8854075121479785209

namespace A072944

/-- `A029747(record[A001511(n+1)+A000265(n+1)])` -/
def P8854075121479785209.Spec : Prop :=
  ∀ n, P8854075121479785209.a n = A072944 (n + 1)

end A072944

/-! ## A072944.P13627628171929928188

`ogf((2+3x+4x^2-2x^3-2x^4)/(1-4x^3))`
-/

namespace A072944.P13627628171929928188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 4, -2, -2] [1, 0, 0, -4] n

end

end A072944.P13627628171929928188

namespace A072944

/-- `ogf((2+3x+4x^2-2x^3-2x^4)/(1-4x^3))` -/
def P13627628171929928188.Spec : Prop :=
  ∀ n, P13627628171929928188.a n = A072944 (n + 1)

end A072944

/-! ## A072944.P17405834881528680789

`ceil(A029747(Δ[(n+1)*(n+1)])/2)`
-/

namespace A072944.P17405834881528680789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A029747 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌉

end

end A072944.P17405834881528680789

namespace A072944

/-- `ceil(A029747(Δ[(n+1)*(n+1)])/2)` -/
def P17405834881528680789.Spec : Prop :=
  ∀ n, P17405834881528680789.a n = A072944 (n + 1)

end A072944

/-! ## A072944.P4579951234067139938

`A029747(lt[n²-∑[(-2)^n], A038221(n)]+2)`
-/

namespace A072944.P4579951234067139938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 2)

end

end A072944.P4579951234067139938

namespace A072944

/-- `A029747(lt[n²-∑[(-2)^n], A038221(n)]+2)` -/
def P4579951234067139938.Spec : Prop :=
  ∀ n, P4579951234067139938.a n = A072944 (n + 1)

end A072944

/-!
# A072946: Coefficient of the highest power of q in the expansion of nu(0)=1, nu(1)=b and for n>=2, nu(n)=b*nu(n-1)+lambda*(n-1)_q*nu(n-2) with (b,lambda)=(2,2), where (n)_q=(1+q+...+q^(n-1)) and q is a root of unity.

The programs for A072946, the canonical program `A072946.P7290817772402110908` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072946 has offset 0).

The definition of A072946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072946.P5008411836977411716

`ogf((1+2x+4x^2)/(1-2x^2))`
-/

namespace A072946.P5008411836977411716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4] [1, 0, -2] n

end

end A072946.P5008411836977411716

namespace A072946

/-- `ogf((1+2x+4x^2)/(1-2x^2))` -/
def P5008411836977411716.Spec : Prop :=
  ∀ n, P5008411836977411716.a n = A072946 n

end A072946

/-! ## A072946.P7290817772402110908

`2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072946

/-- `2*a(n-2)` -/
def P7290817772402110908.Spec : Prop :=
  ∀ n, (P7290817772402110908.a n : ℤ) = A072946 n

theorem P7290817772402110908.correct : P7290817772402110908.Spec := by
  intro n
  simp only [A072946]

end A072946

/-! ## A072946.P11418364994765980123

`∏[2/a(n-1)]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A072946.P11418364994765980123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072946.P11418364994765980123

namespace A072946

/-- `∏[2/a(n-1)]` -/
def P11418364994765980123.Spec : Prop :=
  ∀ n, P11418364994765980123.a n = (A072946 n : ℚ)

end A072946

/-! ## A072946.P16508465512608772072

`a(n-2)/sqrt(1/4)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A072946.P16508465512608772072
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A072946.P16508465512608772072

namespace A072946

/-- `a(n-2)/sqrt(1/4)` -/
def P16508465512608772072.Spec : Prop :=
  ∀ n, P16508465512608772072.a n = (A072946 n : ℝ)

end A072946

/-! ## A072946.P6510435212285131564

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A072946.P6510435212285131564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 2) + a (n - 2)

end

end A072946.P6510435212285131564

namespace A072946

/-- `a(n-2)+a(n-2)` -/
def P6510435212285131564.Spec : Prop :=
  ∀ n, (P6510435212285131564.a n : ℤ) = A072946 n

theorem P6510435212285131564.correct : P6510435212285131564.Spec := by
  intro n
  simp only [A072946, Nat.add_sub_cancel, A072946.P6510435212285131564.a, A072946.P7290817772402110908.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A072946

/-! ## A072946.P583406122602229411

`abs(Δ[abs(2-A143095(n))])`
-/

namespace A072946.P583406122602229411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A143095 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A072946.P583406122602229411

namespace A072946

/-- `abs(Δ[abs(2-A143095(n))])` -/
def P583406122602229411.Spec : Prop :=
  ∀ n, P583406122602229411.a n = A072946 n

end A072946

/-! ## A072946.P1540329227961130393

`A074323(n)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A072946.P1540329227961130393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  A074323 n + a (n - 2)

end

end A072946.P1540329227961130393

namespace A072946

/-- `A074323(n)+a(n-2)` -/
def P1540329227961130393.Spec : Prop :=
  ∀ n, P1540329227961130393.a n = A072946 n

end A072946

/-! ## A072946.P15509732113016900284

`A164073(n)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A072946.P15509732113016900284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  A164073 n + a (n - 2)

end

end A072946.P15509732113016900284

namespace A072946

/-- `A164073(n)+a(n-2)` -/
def P15509732113016900284.Spec : Prop :=
  ∀ n, P15509732113016900284.a n = A072946 n

end A072946

/-! ## A072946.P7254748197519129463

`A137206(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A072946.P7254748197519129463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A137206 (n + 1) + a (n - 1)

end

end A072946.P7254748197519129463

namespace A072946

/-- `A137206(n+1)+a(n-1)` -/
def P7254748197519129463.Spec : Prop :=
  ∀ n, P7254748197519129463.a n = A072946 n

end A072946

/-! ## A072946.P7749704639630383649

`A074323(A065475(n+1))`
-/

namespace A072946.P7749704639630383649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A065475 (n + 1)).toNat

end

end A072946.P7749704639630383649

namespace A072946

/-- `A074323(A065475(n+1))` -/
def P7749704639630383649.Spec : Prop :=
  ∀ n, P7749704639630383649.a n = A072946 n

end A072946

/-! ## A072946.P17255912821230902320

`A074323(A114637(n+1))`
-/

namespace A072946.P17255912821230902320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A114637 (n + 1)).toNat

end

end A072946.P17255912821230902320

namespace A072946

/-- `A074323(A114637(n+1))` -/
def P17255912821230902320.Spec : Prop :=
  ∀ n, P17255912821230902320.a n = A072946 n

end A072946

/-! ## A072946.P6489278378741703666

`A074323(A181440(n+2))`
-/

namespace A072946.P6489278378741703666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A181440 (n + 2)).toNat

end

end A072946.P6489278378741703666

namespace A072946

/-- `A074323(A181440(n+2))` -/
def P6489278378741703666.Spec : Prop :=
  ∀ n, P6489278378741703666.a n = A072946 n

end A072946

/-! ## A072946.P14075256582957613120

`A074323(A184985(n+2))`
-/

namespace A072946.P14075256582957613120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A184985 (n + 2)).toNat

end

end A072946.P14075256582957613120

namespace A072946

/-- `A074323(A184985(n+2))` -/
def P14075256582957613120.Spec : Prop :=
  ∀ n, P14075256582957613120.a n = A072946 n

end A072946

/-! ## A072946.P14996139010306073080

`lcm(A060546(n), A074323(n))`
-/

namespace A072946.P14996139010306073080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060546 n) (A074323 n)

end

end A072946.P14996139010306073080

namespace A072946

/-- `lcm(A060546(n), A074323(n))` -/
def P14996139010306073080.Spec : Prop :=
  ∀ n, (P14996139010306073080.a n : ℤ) = A072946 n

end A072946

/-! ## A072946.P5842808461819841929

`xor(A063759(n), A131572(n))`
-/

namespace A072946.P5842808461819841929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063759 n) (A131572 n)

end

end A072946.P5842808461819841929

namespace A072946

/-- `xor(A063759(n), A131572(n))` -/
def P5842808461819841929.Spec : Prop :=
  ∀ n, P5842808461819841929.a n = A072946 n

end A072946

/-! ## A072946.P16738254570551973076

`A074323(A036453(n+1)+n)`
-/

namespace A072946.P16738254570551973076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A036453 (n + 1) + (n : ℤ)).toNat

end

end A072946.P16738254570551973076

namespace A072946

/-- `A074323(A036453(n+1)+n)` -/
def P16738254570551973076.Spec : Prop :=
  ∀ n, P16738254570551973076.a n = A072946 n

end A072946

/-! ## A072946.P1171555178012500914

`A162255(n+1)-A000038(n)`
-/

namespace A072946.P1171555178012500914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162255 (n + 1) - A000038 n

end

end A072946.P1171555178012500914

namespace A072946

/-- `A162255(n+1)-A000038(n)` -/
def P1171555178012500914.Spec : Prop :=
  ∀ n, P1171555178012500914.a n = A072946 n

end A072946

/-! ## A072946.P3569633628967427927

`A029744(n+1)*A040001(n)`
-/

namespace A072946.P3569633628967427927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) * A040001 n

end

end A072946.P3569633628967427927

namespace A072946

/-- `A029744(n+1)*A040001(n)` -/
def P3569633628967427927.Spec : Prop :=
  ∀ n, P3569633628967427927.a n = A072946 n

end A072946

/-!
# A072948: Number of permutations p of {1,2,3,...,2n} such that Sum_{k=1..2n} abs(k-p(k)) = 2n.

The programs for A072948, there is no canonical definition to state claims against.
-/

/-! ## A072948.P15566262019967108336

`A357329(∑[2*n]+(1-n)²+n)`
-/

namespace A072948.P15566262019967108336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357329 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((1 - (n : ℤ)) ^ 2 + (n : ℤ))).toNat

end

end A072948.P15566262019967108336

/-! ## A072948.P17808940769826790881

`A057944(A069271(n))+A000073(n)`
-/

namespace A072948.P17808940769826790881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A069271 n).toNat + A000073 n

end

end A072948.P17808940769826790881

/-!
# A072949: Number of permutations p of {1,2,3,...,n} such that Sum_{k=1..n} abs(k-p(k)) = 2n.

The programs for A072949, there is no canonical definition to state claims against.
-/

/-! ## A072949.P15979576661023037120

`A332033(A213389(n))`
-/

namespace A072949.P15979576661023037120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332033 (A213389 n).toNat

end

end A072949.P15979576661023037120

/-! ## A072949.P15131645635998907512

`A309262(A002865(n²))`
-/

namespace A072949.P15131645635998907512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309262 (A002865 (n ^ 2)).toNat

end

end A072949.P15131645635998907512

/-! ## A072949.P16666840221257670870

`A332033(n*A058360(2*(n+1)))`
-/

namespace A072949.P16666840221257670870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332033 ((n : ℤ) * A058360 (2 * (n + 1))).toNat

end

end A072949.P16666840221257670870

/-!
# A072950: Number of permutations p of (1,2,3,...,n) such that at least one value of abs(k-p(k)) is prime.

The programs for A072950, there is no canonical definition to state claims against.
-/

/-! ## A072950.P13681301657708899297

`A349553(A148473(n))`
-/

namespace A072950.P13681301657708899297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349553 (A148473 n).toNat

end

end A072950.P13681301657708899297

/-! ## A072950.P14403435658140484468

`∑{p}[A139711(A137967(n)), #]`
-/

namespace A072950.P14403435658140484468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139711 (A137967 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A072950.P14403435658140484468

/-!
# A072951: a(n) = Sum_{k=1..n} binomial(k, n mod k).

The programs for A072951, there is no canonical definition to state claims against.
-/

/-! ## A072951.P11923043865880819555

`A214259(n+1)+A000005(n+1)`
-/

namespace A072951.P11923043865880819555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214259 (n + 1) + A000005 (n + 1)

end

end A072951.P11923043865880819555

/-! ## A072951.P1792333715585590277

`A054519(n+1)-(A054519(n)-A214259(n+1))`
-/

namespace A072951.P1792333715585590277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 1) - (A054519 n - A214259 (n + 1))

end

end A072951.P1792333715585590277

/-! ## A072951.P4474600672853732929

`A214259(n+1)+A214258(∑[n]+1)`
-/

namespace A072951.P4474600672853732929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214259 (n + 1) + A214258 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A072951.P4474600672853732929

/-! ## A072951.P5245303063845333511

`A214257(∑[n+3]+1)`
-/

namespace A072951.P5245303063845333511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214257 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A072951.P5245303063845333511

/-! ## A072951.P67718170258549537

`record[A214257(n)/A214249(n+1)]`
-/

namespace A072951.P67718170258549537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214257 n : ℚ) / (A214249 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072951.P67718170258549537

/-!
# A072954: Numbers n without letters a, i, l or t.

The programs for A072954, there is no canonical definition to state claims against.
-/

/-! ## A072954.P15915545164014487394

`∑[A265541(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3, a(4)=93`
-/

namespace A072954.P15915545164014487394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 3, 93] fun n f1 =>
  A265541 (f1 (n - 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072954.P15915545164014487394

/-! ## A072954.P5616825457953109128

`A001633(∑[A035179(C(n+3, 3)²)])`
-/

namespace A072954.P5616825457953109128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035179 (Nat.choose (n + 3) 3 ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001633 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072954.P5616825457953109128

/-!
# A072955: Suburban numbers: without b, r, s or u.

The programs for A072955, there is no canonical definition to state claims against.
-/

/-! ## A072955.P4081840087379483525

`∩[A008539(n+1), A072957(n+1)]`
-/

namespace A072955.P4081840087379483525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072955.P4081840087379483525

/-!
# A072956: Turban numbers: without letters r, t, or u.

The programs for A072956, there is no canonical definition to state claims against.
-/

/-! ## A072956.P10471713034792872462

`∩[A008523(n+1), A072957(n+1)]`
-/

namespace A072956.P10471713034792872462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072956.P10471713034792872462

/-!
# A072957: Urban numbers: without 'r' or 'u'.

The programs for A072957, there is no canonical definition to state claims against.
-/

/-! ## A072957.P7083693207356284539

`eq[A118759(n+1), A222234(n+1)]+1`
-/

namespace A072957.P7083693207356284539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072957.P7083693207356284539

/-! ## A072957.P15618807689267426242

`eq[A222234(n+1), A292579(n+1)]+1`
-/

namespace A072957.P15618807689267426242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072957.P15618807689267426242

/-! ## A072957.P9721077383031592930

`record[A222235(n+1)%A190819(3*n+5)]`
-/

namespace A072957.P9721077383031592930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222235 (n + 1)) (A190819 (3 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072957.P9721077383031592930

/-! ## A072957.P18132357502386554116

`record[A222235(A029931(n)+1)]`
-/

namespace A072957.P18132357502386554116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A029931 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072957.P18132357502386554116

/-! ## A072957.P12037342271539387048

`record[A222235(n+1)%A101756(n+3)]`
-/

namespace A072957.P12037342271539387048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222235 (n + 1)) (A101756 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072957.P12037342271539387048

/-!
# A072960: Numbers using only the curved digits 0, 3, 6, 8 and 9.

The programs for A072960, the canonical program `A072960.P17418805968643026231` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072960 has offset 1).

The definition of A072960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072960.P17418805968643026231

`eq[1, ∏{digits}[n, A025852(#)]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072960

/-- `eq[1, ∏{digits}[n, A025852(#)]]` -/
def P17418805968643026231.Spec : Prop :=
  ∀ n, (P17418805968643026231.a n : ℤ) = A072960 (n + 1)

theorem P17418805968643026231.correct : P17418805968643026231.Spec := by
  intro n
  simp only [A072960, Nat.add_sub_cancel]

end A072960

/-! ## A072960.P18374807313521727596

`A222220(A054047(n))`
-/

namespace A072960.P18374807313521727596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A054047 n).toNat

end

end A072960.P18374807313521727596

namespace A072960

/-- `A222220(A054047(n))` -/
def P18374807313521727596.Spec : Prop :=
  ∀ n, P18374807313521727596.a n = A072960 (n + 1)

end A072960

/-! ## A072960.P6096154888769919993

`A222234(A001744(n+1))`
-/

namespace A072960.P6096154888769919993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A001744 (n + 1)).toNat

end

end A072960.P6096154888769919993

namespace A072960

/-- `A222234(A001744(n+1))` -/
def P6096154888769919993.Spec : Prop :=
  ∀ n, P6096154888769919993.a n = A072960 (n + 1)

end A072960

/-! ## A072960.P4963300095322589353

`record[A004176(A137386(n+1))]`
-/

namespace A072960.P4963300095322589353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (A137386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072960.P4963300095322589353

namespace A072960

/-- `record[A004176(A137386(n+1))]` -/
def P4963300095322589353.Spec : Prop :=
  ∀ n, P4963300095322589353.a n = A072960 (n + 1)

end A072960

/-! ## A072960.P1457957467045764816

`record[A176407(A137386(n+2))]`
-/

namespace A072960.P1457957467045764816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 (A137386 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072960.P1457957467045764816

namespace A072960

/-- `record[A176407(A137386(n+2))]` -/
def P1457957467045764816.Spec : Prop :=
  ∀ n, P1457957467045764816.a n = A072960 (n + 1)

end A072960

/-! ## A072960.P17138544271360608382

`∩[A028374(n+1), A137386(n+1)]`
-/

namespace A072960.P17138544271360608382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072960.P17138544271360608382

namespace A072960

/-- `∩[A028374(n+1), A137386(n+1)]` -/
def P17138544271360608382.Spec : Prop :=
  ∀ n, (P17138544271360608382.a n : ℤ) = A072960 (n + 1)

end A072960

/-! ## A072960.P13534482061210125951

`∩[A039120(n+1), A137386(n+1)]`
-/

namespace A072960.P13534482061210125951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072960.P13534482061210125951

namespace A072960

/-- `∩[A039120(n+1), A137386(n+1)]` -/
def P13534482061210125951.Spec : Prop :=
  ∀ n, (P13534482061210125951.a n : ℤ) = A072960 (n + 1)

end A072960

/-! ## A072960.P11194109369517825605

`∩[A039122(n+1), A137386(n+1)]`
-/

namespace A072960.P11194109369517825605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072960.P11194109369517825605

namespace A072960

/-- `∩[A039122(n+1), A137386(n+1)]` -/
def P11194109369517825605.Spec : Prop :=
  ∀ n, (P11194109369517825605.a n : ℤ) = A072960 (n + 1)

end A072960

/-! ## A072960.P13564188375157134589

`∩[A039123(n+1), A137386(n+1)]`
-/

namespace A072960.P13564188375157134589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072960.P13564188375157134589

namespace A072960

/-- `∩[A039123(n+1), A137386(n+1)]` -/
def P13564188375157134589.Spec : Prop :=
  ∀ n, (P13564188375157134589.a n : ℤ) = A072960 (n + 1)

end A072960

/-! ## A072960.P10519100372420272769

`∩[A039125(n+1), A137386(n+1)]`
-/

namespace A072960.P10519100372420272769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072960.P10519100372420272769

namespace A072960

/-- `∩[A039125(n+1), A137386(n+1)]` -/
def P10519100372420272769.Spec : Prop :=
  ∀ n, (P10519100372420272769.a n : ℤ) = A072960 (n + 1)

end A072960

/-! ## A072960.P12982448406060200266

`∩[A052383(n+1), A137386(n+1)]`
-/

namespace A072960.P12982448406060200266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072960.P12982448406060200266

namespace A072960

/-- `∩[A052383(n+1), A137386(n+1)]` -/
def P12982448406060200266.Spec : Prop :=
  ∀ n, (P12982448406060200266.a n : ℤ) = A072960 (n + 1)

end A072960

/-! ## A072960.P12945871126502466476

`record[A222220(A137386(n+1)%A000124(n))]`
-/

namespace A072960.P12945871126502466476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (Int.tmod (A137386 (n + 1)) (A000124 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072960.P12945871126502466476

namespace A072960

/-- `record[A222220(A137386(n+1)%A000124(n))]` -/
def P12945871126502466476.Spec : Prop :=
  ∀ n, P12945871126502466476.a n = A072960 (n + 1)

end A072960

/-! ## A072960.P1151445838770917638

`record[A222220(A137386(n+1))]%A003215(n)`
-/

namespace A072960.P1151445838770917638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A137386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A003215 n)

end

end A072960.P1151445838770917638

namespace A072960

/-- `record[A222220(A137386(n+1))]%A003215(n)` -/
def P1151445838770917638.Spec : Prop :=
  ∀ n, P1151445838770917638.a n = A072960 (n + 1)

end A072960

/-! ## A072960.P9933573166057173414

`record[A222220(A137386(n+1))%A005894(n)]`
-/

namespace A072960.P9933573166057173414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222220 (A137386 (n + 1)).toNat) (A005894 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072960.P9933573166057173414

namespace A072960

/-- `record[A222220(A137386(n+1))%A005894(n)]` -/
def P9933573166057173414.Spec : Prop :=
  ∀ n, P9933573166057173414.a n = A072960 (n + 1)

end A072960

/-! ## A072960.P13151463479438605568

`A000007(n+2)+record[A222220(A137386(n+1))]`
-/

namespace A072960.P13151463479438605568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A137386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072960.P13151463479438605568

namespace A072960

/-- `A000007(n+2)+record[A222220(A137386(n+1))]` -/
def P13151463479438605568.Spec : Prop :=
  ∀ n, P13151463479438605568.a n = A072960 (n + 1)

end A072960

/-! ## A072960.P8392617123373084794

`record[A222228(2*n)-A222228(n)]`
-/

namespace A072960.P8392617123373084794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (2 * n) - A222228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072960.P8392617123373084794

namespace A072960

/-- `record[A222228(2*n)-A222228(n)]` -/
def P8392617123373084794.Spec : Prop :=
  ∀ n, P8392617123373084794.a n = A072960 (n + 1)

end A072960

/-! ## A072960.P8898678447467530956

`∩[A028374(n+1), A073417(n+1)]`
-/

namespace A072960.P8898678447467530956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072960.P8898678447467530956

namespace A072960

/-- `∩[A028374(n+1), A073417(n+1)]` -/
def P8898678447467530956.Spec : Prop :=
  ∀ n, (P8898678447467530956.a n : ℤ) = A072960 (n + 1)

end A072960

/-!
# A072961: Numbers using only the digits 2 and 5, that are both curved and straight.

The programs for A072961, there is no canonical definition to state claims against.
-/

/-! ## A072961.P17428859093345202739

`A032917(n+1)+A007931(n+1)`
-/

namespace A072961.P17428859093345202739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + A007931 (n + 1)

end

end A072961.P17428859093345202739

/-! ## A072961.P10150096412060847962

`A256077(n+1)+A032822(n+1)`
-/

namespace A072961.P10150096412060847962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (n + 1) + A032822 (n + 1)

end

end A072961.P10150096412060847962

/-! ## A072961.P11824306511505042787

`A143967(n+1)-A007931(n+1)`
-/

namespace A072961.P11824306511505042787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1) - A007931 (n + 1)

end

end A072961.P11824306511505042787

/-! ## A072961.P6488606747794521441

`A284382(n+1)-A032834(n+1)`
-/

namespace A072961.P6488606747794521441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) - A032834 (n + 1)

end

end A072961.P6488606747794521441

/-! ## A072961.P7978151725839176573

`A284964(n+1)-A032822(n+1)`
-/

namespace A072961.P7978151725839176573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284964 (n + 1) - A032822 (n + 1)

end

end A072961.P7978151725839176573

/-! ## A072961.P431528654994496970

`A284972(n+1)-A032810(n+1)`
-/

namespace A072961.P431528654994496970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284972 (n + 1) - A032810 (n + 1)

end

end A072961.P431528654994496970

/-! ## A072961.P10798615149825735402

`A284963(n+1)-A032917(n+1)`
-/

namespace A072961.P10798615149825735402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1) - A032917 (n + 1)

end

end A072961.P10798615149825735402

/-! ## A072961.P6065878620259248502

`A284633(n+1)-A256077(n+1)`
-/

namespace A072961.P6065878620259248502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284633 (n + 1) - A256077 (n + 1)

end

end A072961.P6065878620259248502

/-! ## A072961.P2022519142749880229

`A284973(n+1)-A284920(n+1)`
-/

namespace A072961.P2022519142749880229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1) - A284920 (n + 1)

end

end A072961.P2022519142749880229

/-! ## A072961.P4567208069842649390

`(A143967(n+1)+A032917(n+1))/2`
-/

namespace A072961.P4567208069842649390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143967 (n + 1) + A032917 (n + 1) : ℚ) / 2

end

end A072961.P4567208069842649390

/-! ## A072961.P8877797554285525392

`A007931(n+1)+A284632(n+1)/2`
-/

namespace A072961.P8877797554285525392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007931 (n + 1) : ℚ) + (A284632 (n + 1) : ℚ) / 2

end

end A072961.P8877797554285525392

/-! ## A072961.P1275787619962640169

`(A284963(n+1)+A007931(n+1))/2`
-/

namespace A072961.P1275787619962640169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284963 (n + 1) + A007931 (n + 1) : ℚ) / 2

end

end A072961.P1275787619962640169

/-! ## A072961.P9002584293270248786

`A284973(n+1)-2*A007931(n+1)`
-/

namespace A072961.P9002584293270248786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1) - 2 * A007931 (n + 1)

end

end A072961.P9002584293270248786

/-! ## A072961.P1183457739705569746

`2*A284920(n+1)-A032810(n+1)`
-/

namespace A072961.P1183457739705569746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284920 (n + 1) - A032810 (n + 1)

end

end A072961.P1183457739705569746

/-! ## A072961.P3466127829393376600

`(A284921(n+1)+A032810(n+1))/2`
-/

namespace A072961.P3466127829393376600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284921 (n + 1) + A032810 (n + 1) : ℚ) / 2

end

end A072961.P3466127829393376600

/-! ## A072961.P8238081600202026371

`A032917(n+1)+A284920(n+1)/2`
-/

namespace A072961.P8238081600202026371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032917 (n + 1) : ℚ) + (A284920 (n + 1) : ℚ) / 2

end

end A072961.P8238081600202026371

/-! ## A072961.P15688871103965978826

`2*A143967(n+1)-A284973(n+1)`
-/

namespace A072961.P15688871103965978826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143967 (n + 1) - A284973 (n + 1)

end

end A072961.P15688871103965978826

/-! ## A072961.P13266986534742856773

`2*A284379(n+1)-A256290(n+1)`
-/

namespace A072961.P13266986534742856773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284379 (n + 1) - A256290 (n + 1)

end

end A072961.P13266986534742856773

/-! ## A072961.P2235792183615233858

`2*A284634(n+1)-A256292(n+1)`
-/

namespace A072961.P2235792183615233858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284634 (n + 1) - A256292 (n + 1)

end

end A072961.P2235792183615233858

/-! ## A072961.P10487593539179522491

`A256077(n+1)+A284922(n+1)/2`
-/

namespace A072961.P10487593539179522491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256077 (n + 1) : ℚ) + (A284922 (n + 1) : ℚ) / 2

end

end A072961.P10487593539179522491

/-!
# A072963: In prime factorization of n replace all single (i.e., non-twin) primes with 1.

The programs for A072963, there is no canonical definition to state claims against.
-/

/-! ## A072963.P13538991155913779498

`gcd(∏[A062505(n+1)], A030640(n))`
-/

namespace A072963.P13538991155913779498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A030640 n)

end

end A072963.P13538991155913779498

/-! ## A072963.P15309603150532071176

`gcd((n+1)/2^val(n+1, 2), A000122(A073543(n+4)))`
-/

namespace A072963.P15309603150532071176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A000122 (A073543 (n + 4)).toNat)

end

end A072963.P15309603150532071176

/-! ## A072963.P1813508398612631657

`((n+1)/2^val(n+1, 2))%A004520(A378530(n+1))`
-/

namespace A072963.P1813508398612631657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A004520 (A378530 (n + 1)).toNat)

end

end A072963.P1813508398612631657

/-! ## A072963.P5348904105440749052

`((n+1)/2^val(n+1, 2))^A333330(A114525(3*n+1))`
-/

namespace A072963.P5348904105440749052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) ^ (A333330 (A114525 (3 * n + 1)).toNat : ℤ)

end

end A072963.P5348904105440749052

/-! ## A072963.P12864790713654545413

`A000265(n+1)%A056206(A001359(2*n+1))`
-/

namespace A072963.P12864790713654545413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) (A056206 (A001359 (2 * n + 1)).toNat)

end

end A072963.P12864790713654545413

/-!
# A072964: Number of partitions of n-th triangular number n(n+1)/2 (A000217(n)) into triangular parts.

The programs for A072964, there is no canonical definition to state claims against.
-/

/-! ## A072964.P6170927634556369632

`A007294(n*(n+1)/2)`
-/

namespace A072964.P6170927634556369632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (SequenceMachineLib.roundAway ((n * (n + 1) : ℚ) / 2)).toNat

end

end A072964.P6170927634556369632

/-! ## A072964.P14340040885345534589

`A007294(∑[n])%A001333(n+2)`
-/

namespace A072964.P14340040885345534589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007294 (∑ j ∈ Finset.range (n + 1), f1 j)) (A001333 (n + 2))

end

end A072964.P14340040885345534589

/-! ## A072964.P8052140245972732934

`A077958(3*n+2)+A007294(C(n+1, 2))`
-/

namespace A072964.P8052140245972732934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 (3 * n + 2) + A007294 (Nat.choose (n + 1) 2)

end

end A072964.P8052140245972732934

/-! ## A072964.P18099906226608267545

`A007294(C(n+1, 2))*A078688(3*n+2)`
-/

namespace A072964.P18099906226608267545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (Nat.choose (n + 1) 2) * A078688 (3 * n + 2)

end

end A072964.P18099906226608267545

/-! ## A072964.P16801928325278283551

`A007294(A000217(n))%A041298(n)`
-/

namespace A072964.P16801928325278283551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007294 (A000217 n).toNat) (A041298 n)

end

end A072964.P16801928325278283551

/-! ## A072964.P5889270635277233570

`A007294(A000217(n))+A000035(2*(n+1))`
-/

namespace A072964.P5889270635277233570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A000217 n).toNat + A000035 (2 * (n + 1))

end

end A072964.P5889270635277233570

/-! ## A072964.P10120991549647252771

`A007294(A000217(n))*A033630(2*n+1)`
-/

namespace A072964.P10120991549647252771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A000217 n).toNat * A033630 (2 * n + 1)

end

end A072964.P10120991549647252771

/-! ## A072964.P7406687575152092812

`A183063(2*n+3)+A007294(A000217(n))`
-/

namespace A072964.P7406687575152092812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * n + 3) + A007294 (A000217 n).toNat

end

end A072964.P7406687575152092812

/-!
# A072965: In prime factorization of n replace all matching twin prime pairs with 1, where (3,5)-matches are replaced before (5,7).

The programs for A072965, there is no canonical definition to state claims against.
-/

/-! ## A072965.P13541667258782476760

`gcd(n+1, A336104(A348747(n+1)))`
-/

namespace A072965.P13541667258782476760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A336104 (A348747 (n + 1)).toNat)

end

end A072965.P13541667258782476760

/-! ## A072965.P390780244458409465

`gcd(A000027(n+1), A098841(A077099(n+1)))`
-/

namespace A072965.P390780244458409465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A098841 (A077099 (n + 1)).toNat)

end

end A072965.P390780244458409465

/-! ## A072965.P8147081927050869995

`gcd(A001057(2*n+1), A030216(A001844(2*n+3)))`
-/

namespace A072965.P8147081927050869995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001057 (2 * n + 1)) (A030216 (A001844 (2 * n + 3)).toNat)

end

end A072965.P8147081927050869995

/-! ## A072965.P9279422838984770989

`(n+1)%A231923(A000027(2*n+5))`
-/

namespace A072965.P9279422838984770989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A231923 (A000027 (2 * n + 5)).toNat)

end

end A072965.P9279422838984770989

/-!
# A072966: Numbers which are not the sum of two semiprimes.

The programs for A072966, there is no canonical definition to state claims against.
-/

/-! ## A072966.P3895690022019335117

`eq[0, A072931(n)]`
-/

namespace A072966.P3895690022019335117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072966.P3895690022019335117

/-! ## A072966.P11833289108802028924

`lt[A072931(char[1]+n), 1]`
-/

namespace A072966.P11833289108802028924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 ((if ∃ j, f2 j = n then 1 else 0) + n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A072966.P11833289108802028924

/-! ## A072966.P16198110356661639012

`lt[n, ∑{p}[A050480(n+1), #]]`
-/

namespace A072966.P16198110356661639012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050480 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072966.P16198110356661639012

/-! ## A072966.P10076036176176630742

`eq[0, A199331(round(acot(n)+n))]`
-/

namespace A072966.P10076036176176630742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199331 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072966.P10076036176176630742

/-! ## A072966.P5401377547835778709

`eq[0, A241658(abs(1-n)+1)]`
-/

namespace A072966.P5401377547835778709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241658 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072966.P5401377547835778709

/-!
# A072967: Least k>n such that the last digit of k^k is the same as the last digit of n^n.

The programs for A072967, there is no canonical definition to state claims against.
-/

/-! ## A072967.P6633804724160415852

`n+1+A072968(n+1)`
-/

namespace A072967.P6633804724160415852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A072968 (n + 1)

end

end A072967.P6633804724160415852

/-! ## A072967.P1751703455390787585

`A020725(A072968(n+1)+n)`
-/

namespace A072967.P1751703455390787585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A072968 (n + 1) + (n : ℤ)).toNat

end

end A072967.P1751703455390787585

/-! ## A072967.P7722109860530990687

`A065475(A072968(n+1)+n)`
-/

namespace A072967.P7722109860530990687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A072968 (n + 1) + (n : ℤ)).toNat

end

end A072967.P7722109860530990687

/-! ## A072967.P16250834139341079879

`A114637(A072968(n+1)+n)`
-/

namespace A072967.P16250834139341079879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (A072968 (n + 1) + (n : ℤ)).toNat

end

end A072967.P16250834139341079879

/-! ## A072967.P12155428949795244018

`A326178(A072968(n+1)+n)`
-/

namespace A072967.P12155428949795244018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A072968 (n + 1) + (n : ℤ)).toNat

end

end A072967.P12155428949795244018

/-!
# A072968: Least k>0 such that the last digit of (n+k)^(n+k) is the same as the last digit of n^n.

The programs for A072968, there is no canonical definition to state claims against.
-/

/-! ## A072968.P5840964338911006579

`A072967(n+1)-(n+1)`
-/

namespace A072968.P5840964338911006579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072967 (n + 1) - (n + 1 : ℤ)

end

end A072968.P5840964338911006579

/-!
# A072973: Denominator of b(n) = (50*n-6)/(binomial(3n,n)*2^n).

The programs for A072973, there is no canonical definition to state claims against.
-/

/-! ## A072973.P14560500990205093677

`A143950(A008000(n)+n)`
-/

namespace A072973.P14560500990205093677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143950 (A008000 n + (n : ℤ)).toNat

end

end A072973.P14560500990205093677

/-!
# A072974: Numbers n such that (50n-6) divides C(3n,n)*2^n.

The programs for A072974, there is no canonical definition to state claims against.
-/

/-! ## A072974.P8976645412273403586

`eq[1, A072972(n)]`
-/

namespace A072974.P8976645412273403586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072972 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072974.P8976645412273403586

/-! ## A072974.P16804665146224940402

`lt[A072972(n+1), 2]+1`
-/

namespace A072974.P16804665146224940402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072972 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072974.P16804665146224940402

/-! ## A072974.P4781953611905288143

`lt[A072972(A028310(n)), 2]`
-/

namespace A072974.P4781953611905288143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072972 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072974.P4781953611905288143

/-!
# A072975: a(n) = 2^n*binomial(3*n,n)*(3*n+1).

The programs for A072975, the canonical program `A072975.P15010766844986400936` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072975 has offset 0).

The definition of A072975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*C(3*n, n)*(3*n+1)` (program `A072975.P15010766844986400936`, by `A072975.P15010766844986400936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072975.P15010766844986400936

`2^n*C(3*n, n)*(3*n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072975

/-- `2^n*C(3*n, n)*(3*n+1)` -/
def P15010766844986400936.Spec : Prop :=
  ∀ n, (P15010766844986400936.a n : ℤ) = A072975 n

theorem P15010766844986400936.correct : P15010766844986400936.Spec := by
  intro n
  simp only [A072975]

end A072975

/-! ## A072975.P3591358039163714310

`2^n*A090816(n)`
-/

namespace A072975.P3591358039163714310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A090816 n

end

end A072975.P3591358039163714310

namespace A072975

/-- `2^n*A090816(n)` -/
def P3591358039163714310.Spec : Prop :=
  ∀ n, P3591358039163714310.a n = A072975 n

theorem P3591358039163714310.correct : P3591358039163714310.Spec := by
  intro n
  simp only [A072975, Nat.add_sub_cancel, A072975.P3591358039163714310.a, A072975.P15010766844986400936.a, A090816, A090816.P4122459984160275442.a, A005809, A005809.P15087077436016713419.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072975

/-! ## A072975.P9612923262789039374

`(3*n+1)*A228484(n)`
-/

namespace A072975.P9612923262789039374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A228484 n

end

end A072975.P9612923262789039374

namespace A072975

/-- `(3*n+1)*A228484(n)` -/
def P9612923262789039374.Spec : Prop :=
  ∀ n, P9612923262789039374.a n = A072975 n

theorem P9612923262789039374.correct : P9612923262789039374.Spec := by
  intro n
  simp only [A072975, Nat.add_sub_cancel, A072975.P9612923262789039374.a, A072975.P15010766844986400936.a, A228484, A228484.P202728195289297954.a, A005809, A005809.P15087077436016713419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072975

/-! ## A072975.P7020063832424080996

`abs(A090816(n)*A122803(n))`
-/

namespace A072975.P7020063832424080996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090816 n * A122803 n|

end

end A072975.P7020063832424080996

namespace A072975

/-- `abs(A090816(n)*A122803(n))` -/
def P7020063832424080996.Spec : Prop :=
  ∀ n, P7020063832424080996.a n = A072975 n

end A072975

/-! ## A072975.P12699650443270806038

`A001787(n+1)*A117671(n)`
-/

namespace A072975.P12699650443270806038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) * A117671 n

end

end A072975.P12699650443270806038

namespace A072975

/-- `A001787(n+1)*A117671(n)` -/
def P12699650443270806038.Spec : Prop :=
  ∀ n, P12699650443270806038.a n = A072975 n

end A072975

/-! ## A072975.P9399052097622973578

`(n+1)*A000079(n)*A117671(n)`
-/

namespace A072975.P9399052097622973578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000079 n * A117671 n)

end

end A072975.P9399052097622973578

namespace A072975

/-- `(n+1)*A000079(n)*A117671(n)` -/
def P9399052097622973578.Spec : Prop :=
  ∀ n, P9399052097622973578.a n = A072975 n

end A072975

/-! ## A072975.P9175593956455185107

`2^n*Δ[n²]*A065942(A005408(n))`
-/

namespace A072975.P9175593956455185107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A065942 (A005408 n).toNat

end

end A072975.P9175593956455185107

namespace A072975

/-- `2^n*Δ[n²]*A065942(A005408(n))` -/
def P9175593956455185107.Spec : Prop :=
  ∀ n, P9175593956455185107.a n = A072975 n

end A072975

/-!
# A072976: a(n) = 2^n*binomial(3*n,n)*(3*n+2).

The programs for A072976, the canonical program `A072976.P7789673296379587403` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072976 has offset 0).

The definition of A072976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*C(3*n, n)*(3*n+2)` (program `A072976.P7789673296379587403`, by `A072976.P7789673296379587403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072976.P7789673296379587403

`2^n*C(3*n, n)*(3*n+2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072976

/-- `2^n*C(3*n, n)*(3*n+2)` -/
def P7789673296379587403.Spec : Prop :=
  ∀ n, (P7789673296379587403.a n : ℤ) = A072976 n

theorem P7789673296379587403.correct : P7789673296379587403.Spec := by
  intro n
  simp only [A072976]

end A072976

/-! ## A072976.P18223031129708475956

`(2*n+n+2)*A228484(n)`
-/

namespace A072976.P18223031129708475956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + (n + 2) : ℤ) * A228484 n

end

end A072976.P18223031129708475956

namespace A072976

/-- `(2*n+n+2)*A228484(n)` -/
def P18223031129708475956.Spec : Prop :=
  ∀ n, P18223031129708475956.a n = A072976 n

theorem P18223031129708475956.correct : P18223031129708475956.Spec := by
  intro n
  simp only [A072976, Nat.add_sub_cancel, A072976.P18223031129708475956.a, A072976.P7789673296379587403.a, A228484, A228484.P202728195289297954.a, A005809, A005809.P15087077436016713419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072976

/-! ## A072976.P9406994617866528867

`A228484(n)+A072975(n)`
-/

namespace A072976.P9406994617866528867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228484 n + A072975 n

end

end A072976.P9406994617866528867

namespace A072976

/-- `A228484(n)+A072975(n)` -/
def P9406994617866528867.Spec : Prop :=
  ∀ n, P9406994617866528867.a n = A072976 n

theorem P9406994617866528867.correct : P9406994617866528867.Spec := by
  intro n
  simp only [A072976, Nat.add_sub_cancel, A072976.P9406994617866528867.a, A072976.P7789673296379587403.a, A072975, A072975.P15010766844986400936.a, A228484, A228484.P202728195289297954.a, A005809, A005809.P15087077436016713419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072976

/-! ## A072976.P2469038220465579036

`A228484(n)*A254667(A016789(n))`
-/

namespace A072976.P2469038220465579036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228484 n * A254667 (A016789 n).toNat

end

end A072976.P2469038220465579036

namespace A072976

/-- `A228484(n)*A254667(A016789(n))` -/
def P2469038220465579036.Spec : Prop :=
  ∀ n, P2469038220465579036.a n = A072976 n

end A072976

/-! ## A072976.P6252977716664651349

`(A008585(n)+2)*A051033(3*n)*A000079(n)`
-/

namespace A072976.P6252977716664651349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008585 n + 2) * A051033 (3 * n) * A000079 n

end

end A072976.P6252977716664651349

namespace A072976

/-- `(A008585(n)+2)*A051033(3*n)*A000079(n)` -/
def P6252977716664651349.Spec : Prop :=
  ∀ n, P6252977716664651349.a n = A072976 n

end A072976

/-!
# A072977: Increasing partial quotients of w = 2*cos(Pi/7).

The programs for A072977, there is no canonical definition to state claims against.
-/

/-! ## A072977.P9090057107567810591

`record[A039921(n)]`
-/

namespace A072977.P9090057107567810591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072977.P9090057107567810591

/-!
# A072978: Numbers of the form m * 2^bigomega(m), where m>1 is odd and bigomega(m) = A001222(m), the number of prime factors of m.

The programs for A072978, the canonical program `A072978.P7446069945173957888` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072978 has offset 1).

The definition of A072978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072978.P7446069945173957888

`filter[A123666(n+1), A356170(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A072978

/-- `filter[A123666(n+1), A356170(#)]` -/
def P7446069945173957888.Spec : Prop :=
  ∀ n, P7446069945173957888.a n = A072978 (n + 1)

theorem P7446069945173957888.correct : P7446069945173957888.Spec := by
  intro n
  simp only [A072978, Nat.add_sub_cancel]

end A072978

/-! ## A072978.P16696484514663228955

`eq[1, A356170(n+1)]+1`
-/

namespace A072978.P16696484514663228955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072978.P16696484514663228955

namespace A072978

/-- `eq[1, A356170(n+1)]+1` -/
def P16696484514663228955.Spec : Prop :=
  ∀ n, (P16696484514663228955.a n : ℤ) = A072978 (n + 1)

end A072978

/-! ## A072978.P18400158874631265630

`eq[val(n+1, 2), A087436(n+1)]+1`
-/

namespace A072978.P18400158874631265630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072978.P18400158874631265630

namespace A072978

/-- `eq[val(n+1, 2), A087436(n+1)]+1` -/
def P18400158874631265630.Spec : Prop :=
  ∀ n, (P18400158874631265630.a n : ℤ) = A072978 (n + 1)

end A072978

/-! ## A072978.P2233189434035239484

`eq[val((n+1)², 2), A001222(n+1)]+1`
-/

namespace A072978.P2233189434035239484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 2) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072978.P2233189434035239484

namespace A072978

/-- `eq[val((n+1)², 2), A001222(n+1)]+1` -/
def P2233189434035239484.Spec : Prop :=
  ∀ n, (P2233189434035239484.a n : ℤ) = A072978 (n + 1)

end A072978

/-! ## A072978.P8256499925796466292

`filter[A320911(n+1), A356170(#)]`
-/

namespace A072978.P8256499925796466292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A072978.P8256499925796466292

namespace A072978

/-- `filter[A320911(n+1), A356170(#)]` -/
def P8256499925796466292.Spec : Prop :=
  ∀ n, P8256499925796466292.a n = A072978 (n + 1)

end A072978

/-! ## A072978.P3790450855381299178

`∩[A123666(n+1), A320911(n+1)]`
-/

namespace A072978.P3790450855381299178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072978.P3790450855381299178

namespace A072978

/-- `∩[A123666(n+1), A320911(n+1)]` -/
def P3790450855381299178.Spec : Prop :=
  ∀ n, (P3790450855381299178.a n : ℤ) = A072978 (n + 1)

end A072978

/-! ## A072978.P8554938103346413622

`filter[A360015(n+1), A356170(#)]`
-/

namespace A072978.P8554938103346413622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A072978.P8554938103346413622

namespace A072978

/-- `filter[A360015(n+1), A356170(#)]` -/
def P8554938103346413622.Spec : Prop :=
  ∀ n, P8554938103346413622.a n = A072978 (n + 1)

end A072978

/-! ## A072978.P12758415869623159560

`filter[A028260(n+1), A356170(#)]`
-/

namespace A072978.P12758415869623159560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A072978.P12758415869623159560

namespace A072978

/-- `filter[A028260(n+1), A356170(#)]` -/
def P12758415869623159560.Spec : Prop :=
  ∀ n, P12758415869623159560.a n = A072978 (n + 1)

end A072978

/-! ## A072978.P10863942489465959198

`filter[A004277(n), A356170(#)]`
-/

namespace A072978.P10863942489465959198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A072978.P10863942489465959198

namespace A072978

/-- `filter[A004277(n), A356170(#)]` -/
def P10863942489465959198.Spec : Prop :=
  ∀ n, P10863942489465959198.a n = A072978 (n + 1)

end A072978

/-! ## A072978.P10597348799224619252

`filter[A004279(n), A356170(#)]`
-/

namespace A072978.P10597348799224619252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A072978.P10597348799224619252

namespace A072978

/-- `filter[A004279(n), A356170(#)]` -/
def P10597348799224619252.Spec : Prop :=
  ∀ n, P10597348799224619252.a n = A072978 (n + 1)

end A072978

/-! ## A072978.P17414460504502365456

`filter[A103517(n), A356170(#)]`
-/

namespace A072978.P17414460504502365456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A072978.P17414460504502365456

namespace A072978

/-- `filter[A103517(n), A356170(#)]` -/
def P17414460504502365456.Spec : Prop :=
  ∀ n, P17414460504502365456.a n = A072978 (n + 1)

end A072978

/-! ## A072978.P17834067082661663757

`filter[A004271(n+1), A356170(#)]`
-/

namespace A072978.P17834067082661663757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A072978.P17834067082661663757

namespace A072978

/-- `filter[A004271(n+1), A356170(#)]` -/
def P17834067082661663757.Spec : Prop :=
  ∀ n, P17834067082661663757.a n = A072978 (n + 1)

end A072978

/-! ## A072978.P74407905930585643

`filter[A004272(n+1), A356170(#)]`
-/

namespace A072978.P74407905930585643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A072978.P74407905930585643

namespace A072978

/-- `filter[A004272(n+1), A356170(#)]` -/
def P74407905930585643.Spec : Prop :=
  ∀ n, P74407905930585643.a n = A072978 (n + 1)

end A072978

/-! ## A072978.P42762587535832053

`filter[A004275(n+1), A356170(#)]`
-/

namespace A072978.P42762587535832053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A072978.P42762587535832053

namespace A072978

/-- `filter[A004275(n+1), A356170(#)]` -/
def P42762587535832053.Spec : Prop :=
  ∀ n, P42762587535832053.a n = A072978 (n + 1)

end A072978

/-! ## A072978.P18032815767090971321

`filter[A004278(n+1), A356170(#)]`
-/

namespace A072978.P18032815767090971321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A072978.P18032815767090971321

namespace A072978

/-- `filter[A004278(n+1), A356170(#)]` -/
def P18032815767090971321.Spec : Prop :=
  ∀ n, P18032815767090971321.a n = A072978 (n + 1)

end A072978

/-! ## A072978.P6484490554811578451

`filter[A092535(n+1), A356170(#)]`
-/

namespace A072978.P6484490554811578451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A072978.P6484490554811578451

namespace A072978

/-- `filter[A092535(n+1), A356170(#)]` -/
def P6484490554811578451.Spec : Prop :=
  ∀ n, P6484490554811578451.a n = A072978 (n + 1)

end A072978

/-! ## A072978.P14201401431768453565

`filter[A300576(n+1), A356170(#)]`
-/

namespace A072978.P14201401431768453565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A072978.P14201401431768453565

namespace A072978

/-- `filter[A300576(n+1), A356170(#)]` -/
def P14201401431768453565.Spec : Prop :=
  ∀ n, P14201401431768453565.a n = A072978 (n + 1)

end A072978

/-! ## A072978.P6638480208669380978

`filter[A316571(n+1), A356170(#)]`
-/

namespace A072978.P6638480208669380978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A072978.P6638480208669380978

namespace A072978

/-- `filter[A316571(n+1), A356170(#)]` -/
def P6638480208669380978.Spec : Prop :=
  ∀ n, P6638480208669380978.a n = A072978 (n + 1)

end A072978

/-!
# A072979: a(n) = Sum_{k=1..n-1} gcd(k,n)*a(k), a(1) = 1.

The programs for A072979, there is no canonical definition to state claims against.
-/

/-! ## A072979.P11018781092957608677

`A094600(n)-A072966(A147387(n+1))`
-/

namespace A072979.P11018781092957608677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094600 n - A072966 (A147387 (n + 1)).toNat

end

end A072979.P11018781092957608677

/-!
# A072980: Numerator of b(n) = Sum_{k'<=n} 1/k', where k' denotes the squarefree numbers.

The programs for A072980, there is no canonical definition to state claims against.
-/

/-! ## A072980.P15799693279169558635

`A354417(A013928(n+2))`
-/

namespace A072980.P15799693279169558635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354417 (A013928 (n + 2)).toNat

end

end A072980.P15799693279169558635

/-! ## A072980.P2475480241041827245

`A354417(∑[char[∏{p}[n, #]-1]])`
-/

namespace A072980.P2475480241041827245
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354417 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072980.P2475480241041827245

/-! ## A072980.P5859546069605838694

`A354417(∑[char[A005117(n+1)-1]])`
-/

namespace A072980.P5859546069605838694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354417 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072980.P5859546069605838694

/-!
# A072981: Partial quotients of the limit of a continued fraction (A071851).

The programs for A072981, there is no canonical definition to state claims against.
-/

/-! ## A072981.P11349111138576150393

`A006530(A074473(n+1)^A232195(n+1))`
-/

namespace A072981.P11349111138576150393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A074473 (n + 1) : ℚ) ^ (A232195 (n + 1) : ℤ))).toNat

end

end A072981.P11349111138576150393

/-! ## A072981.P13281715849210266118

`A020639(gcd(A026775(2*n), A093184(n+2)))`
-/

namespace A072981.P13281715849210266118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A026775 (2 * n)) (A093184 (n + 2)))

end

end A072981.P13281715849210266118

/-! ## A072981.P1648922108381789002

`A237593(A297022(n+1)+A003022(2*(n+3)))`
-/

namespace A072981.P1648922108381789002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A297022 (n + 1) + A003022 (2 * (n + 3))).toNat

end

end A072981.P1648922108381789002

/-! ## A072981.P7235169579793013419

`gcd(A013679(3*n+1), A292058(A270831(2*(n+2))))`
-/

namespace A072981.P7235169579793013419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013679 (3 * n + 1)) (A292058 (A270831 (2 * (n + 2))).toNat)

end

end A072981.P7235169579793013419

/-!
# A072982: Primes p for which the period of 1/p is a power of 2.

The programs for A072982, there is no canonical definition to state claims against.
-/

/-! ## A072982.P8146958440351994796

`p?[A173394(n+1)]`
-/

namespace A072982.P8146958440351994796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072982.P8146958440351994796

/-! ## A072982.P9558910990635337450

`p?[record[A173394(A028920(n))]]`
-/

namespace A072982.P9558910990635337450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173394 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072982.P9558910990635337450

/-! ## A072982.P7472564992783277128

`record[p?[A173394(A052938(n))]]`
-/

namespace A072982.P7472564992783277128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173394 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072982.P7472564992783277128

/-! ## A072982.P15357456030383361677

`record[A006530(A173394(n+2))]`
-/

namespace A072982.P15357456030383361677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A173394 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072982.P15357456030383361677

/-! ## A072982.P11864368529515991344

`record[A020639(A173394(n+3))]`
-/

namespace A072982.P11864368529515991344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A173394 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072982.P11864368529515991344

/-!
# A072983: Denominator of b(n) = Sum_{k'<=n} 1/k', where k' denotes the squarefree numbers.

The programs for A072983, there is no canonical definition to state claims against.
-/

/-! ## A072983.P1687656724377125929

`A354418(A013928(n+2))`
-/

namespace A072983.P1687656724377125929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354418 (A013928 (n + 2)).toNat

end

end A072983.P1687656724377125929

/-! ## A072983.P2411755745512966911

`A354418(∑[char[∏{p}[n, #]-1]])`
-/

namespace A072983.P2411755745512966911
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354418 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072983.P2411755745512966911

/-! ## A072983.P11238876637342907935

`A354418(∑[A008966(n+1)])`
-/

namespace A072983.P11238876637342907935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354418 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072983.P11238876637342907935

/-! ## A072983.P11981979812530794439

`A354418(∑[A008683(n+1)²])`
-/

namespace A072983.P11981979812530794439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354418 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072983.P11981979812530794439

/-! ## A072983.P13741211154038459867

`A007913(lcm(A085087(n+1), A130086(n+1)))`
-/

namespace A072983.P13741211154038459867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Int.lcm (A085087 (n + 1)) (A130086 (n + 1)))

end

end A072983.P13741211154038459867

/-!
# A072984: Least k such that prime(n) appears in the factorization of A001008(k) (the numerator of the k-th harmonic number).

The programs for A072984, there is no canonical definition to state claims against.
-/

/-! ## A072984.P14353719307635551735

`A110545(p?[2*n+1])`
-/

namespace A072984.P14353719307635551735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A072984.P14353719307635551735

/-! ## A072984.P10002644006874748434

`A110545(A045344(n+1))`
-/

namespace A072984.P10002644006874748434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A045344 (n + 1)).toNat

end

end A072984.P10002644006874748434

/-! ## A072984.P3548096476017702595

`A110545(A065091(n+1))`
-/

namespace A072984.P3548096476017702595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A065091 (n + 1)).toNat

end

end A072984.P3548096476017702595

/-! ## A072984.P1225007889277381450

`A110545(A000040(n+2))`
-/

namespace A072984.P1225007889277381450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A000040 (n + 2)).toNat

end

end A072984.P1225007889277381450

/-! ## A072984.P3834900623231516173

`A110545(A006005(n+2))`
-/

namespace A072984.P3834900623231516173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A006005 (n + 2)).toNat

end

end A072984.P3834900623231516173

/-! ## A072984.P16468514832506353407

`A110545(A008578(n+3))`
-/

namespace A072984.P16468514832506353407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A008578 (n + 3)).toNat

end

end A072984.P16468514832506353407

/-! ## A072984.P8021570254023645013

`A110545(record[A090368(n+2)])`
-/

namespace A072984.P8021570254023645013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072984.P8021570254023645013

/-! ## A072984.P11034072967870723161

`A110545(record[A006530(n+3)])`
-/

namespace A072984.P11034072967870723161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072984.P11034072967870723161

/-! ## A072984.P4685519859533892667

`A110545(record[A014963(n+3)])`
-/

namespace A072984.P4685519859533892667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072984.P4685519859533892667

/-! ## A072984.P4990425781478065712

`A110545(record[A020639(n+3)])`
-/

namespace A072984.P4990425781478065712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072984.P4990425781478065712

/-! ## A072984.P6880030246587805261

`A110545(A383578(n+2))`
-/

namespace A072984.P6880030246587805261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A383578 (n + 2)).toNat

end

end A072984.P6880030246587805261

/-!
# A072985: Coefficient of the highest power of q in the expansion of nu(0)=1, nu(1)=b and for n >= 2, nu(n) = b*nu(n-1) + lambda*(n-1)_q*nu(n-2) with (b,lambda)=(2,3), where (n)_q = (1+q+...+q^(n-1)) and q is a root of unity.

The programs for A072985, the canonical program `A072985.P7864829895749116584` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072985 has offset 0).

The definition of A072985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072985.P7864829895749116584

`3*a(n-2)` with `a(0)=1, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072985

/-- `3*a(n-2)` -/
def P7864829895749116584.Spec : Prop :=
  ∀ n, (P7864829895749116584.a n : ℤ) = A072985 n

theorem P7864829895749116584.correct : P7864829895749116584.Spec := by
  intro n
  simp only [A072985]

end A072985

/-! ## A072985.P6688961705167716201

`ogf((1+2x+4x^2)/(1-3x^2))`
-/

namespace A072985.P6688961705167716201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4] [1, 0, -3] n

end

end A072985.P6688961705167716201

namespace A072985

/-- `ogf((1+2x+4x^2)/(1-3x^2))` -/
def P6688961705167716201.Spec : Prop :=
  ∀ n, P6688961705167716201.a n = A072985 n

end A072985

/-! ## A072985.P4974932012147054470

`a(n-2)/sqrt(1/9)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A072985.P4974932012147054470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A072985.P4974932012147054470

namespace A072985

/-- `a(n-2)/sqrt(1/9)` -/
def P4974932012147054470.Spec : Prop :=
  ∀ n, P4974932012147054470.a n = (A072985 n : ℝ)

end A072985

/-! ## A072985.P16972934259170770386

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A072985.P16972934259170770386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A072985.P16972934259170770386

namespace A072985

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P16972934259170770386.Spec : Prop :=
  ∀ n, (P16972934259170770386.a n : ℤ) = A072985 n

theorem P16972934259170770386.correct : P16972934259170770386.Spec := by
  intro n
  simp only [A072985, Nat.add_sub_cancel, A072985.P16972934259170770386.a, A072985.P7864829895749116584.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A072985

/-! ## A072985.P8606358509590118852

`A182522(n+1)+Δ[lcm(2, A182522(n))]`
-/

namespace A072985.P8606358509590118852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A182522 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A072985.P8606358509590118852

namespace A072985

/-- `A182522(n+1)+Δ[lcm(2, A182522(n))]` -/
def P8606358509590118852.Spec : Prop :=
  ∀ n, P8606358509590118852.a n = A072985 n

end A072985

/-! ## A072985.P14009079479009599060

`A068911(n)+A038754(n)%A068911(n)`
-/

namespace A072985.P14009079479009599060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 n + Int.tmod (A038754 n) (A068911 n)

end

end A072985.P14009079479009599060

namespace A072985

/-- `A068911(n)+A038754(n)%A068911(n)` -/
def P14009079479009599060.Spec : Prop :=
  ∀ n, P14009079479009599060.a n = A072985 n

end A072985

/-!
# A072986: Least k such that Product_{i=1..k} (prime(i) + 1) >= n*Product_{i=1..k} prime(i).

The programs for A072986, there is no canonical definition to state claims against.
-/

/-! ## A072986.P5358041732524266604

`A000720(A072997(n+1))`
-/

namespace A072986.P5358041732524266604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A072997 (n + 1)).toNat

end

end A072986.P5358041732524266604

/-! ## A072986.P5204699974517417453

`∑{d}[A072997(n+1), A061395(#)]`
-/

namespace A072986.P5204699974517417453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A072986.P5204699974517417453

/-!
# A072987: FIBMOD numbers: a(1) = a(2) = 1, a(n) = a(n-1) mod (n-1) + a(n-2) mod (n-2).

The programs for A072987, the canonical program `A072987.P13022113808715439755` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072987 has offset 1).

The definition of A072987 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)%n+a(n-2)%(n-1)` (program `A072987.P13022113808715439755`, by `A072987.P13022113808715439755.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072987.P13022113808715439755

`a(n-1)%n+a(n-2)%(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072987

/-- `a(n-1)%n+a(n-2)%(n-1)` -/
def P13022113808715439755.Spec : Prop :=
  ∀ n, P13022113808715439755.a n = A072987 (n + 1)

theorem P13022113808715439755.correct : P13022113808715439755.Spec := by
  intro n
  simp only [A072987, Nat.add_sub_cancel]

end A072987

/-!
# A072988: Coefficient of the highest power of q in the expansion of nu(0)=1, nu(1)=b and for n>=2, nu(n)=b*nu(n-1)+lambda*(n-1)_q*nu(n-2) with (b,lambda)=(3,1), where (n)_q=(1+q+...+q^(n-1)) and q is a root of unity.

The programs for A072988, the canonical program `A072988.P15078400438761797208` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072988 has offset 0).

The definition of A072988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072988.P15078400438761797208

`a(n-2)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072988

/-- `a(n-2)` -/
def P15078400438761797208.Spec : Prop :=
  ∀ n, (P15078400438761797208.a n : ℤ) = A072988 n

theorem P15078400438761797208.correct : P15078400438761797208.Spec := by
  intro n
  simp only [A072988]

end A072988

/-!
# A072989: Numbers m>0 such that the number of solutions to x^m==1 (mod m), 1<=x<=m, is not equal to gcd(m, phi(m)).

The programs for A072989, the canonical program `A072989.P6622915283749842125` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072989 has offset 1).

The definition of A072989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4081 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072989.P6622915283749842125

`lt[A009195(n+1), A072994(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A072989

/-- `lt[A009195(n+1), A072994(n+1)]+1` -/
def P6622915283749842125.Spec : Prop :=
  ∀ n, (P6622915283749842125.a n : ℤ) = A072989 (n + 1)

theorem P6622915283749842125.correct : P6622915283749842125.Spec := by
  intro n
  simp only [A072989, Nat.add_sub_cancel]

end A072989

/-! ## A072989.P17140209944211084298

`A153152(lt[A009195(n+1), A072994(n+1)])`
-/

namespace A072989.P17140209944211084298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A072989.P17140209944211084298

namespace A072989

/-- `A153152(lt[A009195(n+1), A072994(n+1)])` -/
def P17140209944211084298.Spec : Prop :=
  ∀ n, P17140209944211084298.a n = A072989 (n + 1)

end A072989

/-! ## A072989.P234255875378938816

`A153152(lt[(n+1)/A109395(n+1), A072994(n+1)])`
-/

namespace A072989.P234255875378938816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A109395 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A072989.P234255875378938816

namespace A072989

/-- `A153152(lt[(n+1)/A109395(n+1), A072994(n+1)])` -/
def P234255875378938816.Spec : Prop :=
  ∀ n, P234255875378938816.a n = A072989 (n + 1)

end A072989

/-! ## A072989.P16166200763948674534

`A153152(lt[(n+1)²/A050399(n+1), A072994(n+1)])`
-/

namespace A072989.P16166200763948674534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A050399 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A072989.P16166200763948674534

namespace A072989

/-- `A153152(lt[(n+1)²/A050399(n+1), A072994(n+1)])` -/
def P16166200763948674534.Spec : Prop :=
  ∀ n, P16166200763948674534.a n = A072989 (n + 1)

end A072989

/-! ## A072989.P2755306398856041665

`A153152(lt[(n+1)/(n+1-A331176(n+1)), A072994(n+1)])`
-/

namespace A072989.P2755306398856041665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A331176 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A072989.P2755306398856041665

namespace A072989

/-- `A153152(lt[(n+1)/(n+1-A331176(n+1)), A072994(n+1)])` -/
def P2755306398856041665.Spec : Prop :=
  ∀ n, P2755306398856041665.a n = A072989 (n + 1)

end A072989

/-!
# A072994: Number of solutions to x^n==1 (mod n), 1<=x<=n.

The programs for A072994, the canonical program `A072994.P17924656576761691658` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072994 has offset 1).

The definition of A072994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072994.P7305804438542222725

`gcd(A000188(A127473(n+1)), A205959(n+1))`
-/

namespace A072994.P7305804438542222725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000188 (A127473 (n + 1)).toNat) (A205959 (n + 1))

end

end A072994.P7305804438542222725

namespace A072994

/-- `gcd(A000188(A127473(n+1)), A205959(n+1))` -/
def P7305804438542222725.Spec : Prop :=
  ∀ n, (P7305804438542222725.a n : ℤ) = A072994 (n + 1)

end A072994

/-! ## A072994.P17924656576761691658

`gcd(∏{p}[n+1, (n+1)/#], A003557((n+1)*∏{p}[n+1, #-1]))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072994

/-- `gcd(∏{p}[n+1, (n+1)/#], A003557((n+1)*∏{p}[n+1, #-1]))` -/
def P17924656576761691658.Spec : Prop :=
  ∀ n, (P17924656576761691658.a n : ℤ) = A072994 (n + 1)

theorem P17924656576761691658.correct : P17924656576761691658.Spec := by
  intro n
  simp only [A072994, Nat.add_sub_cancel]

end A072994

/-! ## A072994.P9514526708849045274

`gcd(A062955(n+1), A205959(A129598(n+1)))`
-/

namespace A072994.P9514526708849045274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062955 (n + 1)) (A205959 (A129598 (n + 1)).toNat)

end

end A072994.P9514526708849045274

namespace A072994

/-- `gcd(A062955(n+1), A205959(A129598(n+1)))` -/
def P9514526708849045274.Spec : Prop :=
  ∀ n, (P9514526708849045274.a n : ℤ) = A072994 (n + 1)

end A072994

/-! ## A072994.P14800545994045593338

`gcd(A160595(n+1), A205959(A050399(n+1)))`
-/

namespace A072994.P14800545994045593338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160595 (n + 1)) (A205959 (A050399 (n + 1)).toNat)

end

end A072994.P14800545994045593338

namespace A072994

/-- `gcd(A160595(n+1), A205959(A050399(n+1)))` -/
def P14800545994045593338.Spec : Prop :=
  ∀ n, (P14800545994045593338.a n : ℤ) = A072994 (n + 1)

end A072994

/-! ## A072994.P15342257433464421339

`gcd(A000010(n+1), A050399(A205959(n+1)))`
-/

namespace A072994.P15342257433464421339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A050399 (A205959 (n + 1)).toNat)

end

end A072994.P15342257433464421339

namespace A072994

/-- `gcd(A000010(n+1), A050399(A205959(n+1)))` -/
def P15342257433464421339.Spec : Prop :=
  ∀ n, (P15342257433464421339.a n : ℤ) = A072994 (n + 1)

end A072994

/-! ## A072994.P10682675633129579134

`gcd(A054535(A001844(n)), A205959(n+1))`
-/

namespace A072994.P10682675633129579134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054535 (A001844 n).toNat) (A205959 (n + 1))

end

end A072994.P10682675633129579134

namespace A072994

/-- `gcd(A054535(A001844(n)), A205959(n+1))` -/
def P10682675633129579134.Spec : Prop :=
  ∀ n, (P10682675633129579134.a n : ℤ) = A072994 (n + 1)

end A072994

/-! ## A072994.P2525120532165105777

`A354057((n+1)²+n²)`
-/

namespace A072994.P2525120532165105777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354057 ((n + 1) ^ 2 + n ^ 2)

end

end A072994.P2525120532165105777

namespace A072994

/-- `A354057((n+1)²+n²)` -/
def P2525120532165105777.Spec : Prop :=
  ∀ n, P2525120532165105777.a n = A072994 (n + 1)

end A072994

/-!
# A072995: Least k > 0 such that the number of solutions to x^k == 1 (mod k) 1 <= x <= k is equal to n, or 0 if no such k exists.

The programs for A072995, there is no canonical definition to state claims against.
-/

/-! ## A072995.P10811480149740121969

`A057110(A121334(n))+A050399(n+1)`
-/

namespace A072995.P10811480149740121969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057110 (A121334 n).toNat + A050399 (n + 1)

end

end A072995.P10811480149740121969

/-! ## A072995.P13256081252645331910

`or(A010894(A001399(n)), A050399(n+1))`
-/

namespace A072995.P13256081252645331910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A001399 n).toNat + 21)) (A050399 (n + 1))

end

end A072995.P13256081252645331910

/-! ## A072995.P7492143849709179652

`A057110(A121334(n))+(n+1)*A109395(n+1)`
-/

namespace A072995.P7492143849709179652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057110 (A121334 n).toNat + (n + 1 : ℤ) * A109395 (n + 1)

end

end A072995.P7492143849709179652

/-! ## A072995.P6303869649119467000

`A057110(A121334(n))+lcm(n+1, A275823((n+1)²))`
-/

namespace A072995.P6303869649119467000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057110 (A121334 n).toNat + (Int.lcm (n + 1 : ℤ) (A275823 ((n + 1) ^ 2)) : ℤ)

end

end A072995.P6303869649119467000

/-! ## A072995.P17306612031627038832

`A057110(A121334(n))+(n+1)²/gcd(n+1, A000010(n+1))`
-/

namespace A072995.P17306612031627038832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057110 (A121334 n).toNat : ℚ) + ((n + 1) ^ 2 : ℚ) / (Int.gcd (n + 1 : ℤ) (A000010 (n + 1)) : ℚ)

end

end A072995.P17306612031627038832

/-!
# A072996: Coefficient of the highest power of q in the expansion of nu(0)=1, nu(1)=b and for n>=2, nu(n)=b*nu(n-1)+lambda*(n-1)_q*nu(n-2) with (b,lambda)=(2,1), where (n)_q=(1+q+...+q^(n-1)) and q is a root of unity.

The programs for A072996, the canonical program `A072996.P16098820043258521179` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072996 has offset 0).

The definition of A072996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072996.P16098820043258521179

`a(n-2)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072996

/-- `a(n-2)` -/
def P16098820043258521179.Spec : Prop :=
  ∀ n, (P16098820043258521179.a n : ℤ) = A072996 n

theorem P16098820043258521179.correct : P16098820043258521179.Spec := by
  intro n
  simp only [A072996]

end A072996

/-!
# A072997: Smallest prime p such that Product_{primes q <= p} q+1 >= n*Product_{primes q <= p} q.

The programs for A072997, there is no canonical definition to state claims against.
-/

/-! ## A072997.P2572408021833083983

`A000040(A072986(n+1))`
-/

namespace A072997.P2572408021833083983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072986 (n + 1)).toNat

end

end A072997.P2572408021833083983

/-! ## A072997.P5547564197626210192

`A008578(A072986(n+1)+1)`
-/

namespace A072997.P5547564197626210192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A072986 (n + 1) + 1).toNat

end

end A072997.P5547564197626210192

/-! ## A072997.P4887450193877418602

`A182986(A072986(n+1)+1)`
-/

namespace A072997.P4887450193877418602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A072986 (n + 1) + 1).toNat

end

end A072997.P4887450193877418602

/-! ## A072997.P16545317471582389710

`A158611(A072986(n+1)+2)`
-/

namespace A072997.P16545317471582389710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A072986 (n + 1) + 2).toNat

end

end A072997.P16545317471582389710

/-! ## A072997.P5683411881840491527

`∑{d}[A072986(n+1), A007444(#)]`
-/

namespace A072997.P5683411881840491527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A072997.P5683411881840491527

/-!
# A072998: To get a(n), write n in balanced ternary notation (using only digits -1, 0, 1, -1), then change -1's to 0's, 0's to 1's, and 1's to 2's.

The programs for A072998, the canonical program `A072998.P10455100346834806727` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072998 has offset 0).

The definition of A072998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072998.P5302112594462666117

`A256303(A117967(n))`
-/

namespace A072998.P5302112594462666117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256303 (A117967 n).toNat

end

end A072998.P5302112594462666117

namespace A072998

/-- `A256303(A117967(n))` -/
def P5302112594462666117.Spec : Prop :=
  ∀ n, P5302112594462666117.a n = A072998 n

end A072998

/-! ## A072998.P10455100346834806727

`A007089(lt[A117966(n), A002483(n)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072998

/-- `A007089(lt[A117966(n), A002483(n)])` -/
def P10455100346834806727.Spec : Prop :=
  ∀ n, P10455100346834806727.a n = A072998 n

theorem P10455100346834806727.correct : P10455100346834806727.Spec := by
  intro n
  simp only [A072998]

end A072998

/-! ## A072998.P5226867990376828877

`A256303(A117966(2*n)+A004488(n))`
-/

namespace A072998.P5226867990376828877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256303 (A117966 (2 * n) + A004488 n).toNat

end

end A072998.P5226867990376828877

namespace A072998

/-- `A256303(A117966(2*n)+A004488(n))` -/
def P5226867990376828877.Spec : Prop :=
  ∀ n, P5226867990376828877.a n = A072998 n

end A072998

/-! ## A072998.P2180906430788992759

`A048379(A007089(2*n))-A007089(n)`
-/

namespace A072998.P2180906430788992759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A007089 (2 * n)).toNat - A007089 n

end

end A072998.P2180906430788992759

namespace A072998

/-- `A048379(A007089(2*n))-A007089(n)` -/
def P2180906430788992759.Spec : Prop :=
  ∀ n, P2180906430788992759.a n = A072998 n

end A072998

/-! ## A072998.P18231043634020030300

`A007089(lt[A117966(3*n+1), A144544(3*n+4)])`
-/

namespace A072998.P18231043634020030300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144544 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A072998.P18231043634020030300

namespace A072998

/-- `A007089(lt[A117966(3*n+1), A144544(3*n+4)])` -/
def P18231043634020030300.Spec : Prop :=
  ∀ n, P18231043634020030300.a n = A072998 n

end A072998

/-!
# A072999: a(n+1) is the smallest prime > a(n) such that a(n+1) == a(n-1) (mod a(n)).

The programs for A072999, there is no canonical definition to state claims against.
-/

/-! ## A072999.P15174167310345532215

`A175093(n+2)`
-/

namespace A072999.P15174167310345532215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175093 (n + 2)

end

end A072999.P15174167310345532215

/-! ## A072999.P17717980945261822500

`p?[A120761(n+1)]`
-/

namespace A072999.P17717980945261822500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072999.P17717980945261822500

/-! ## A072999.P11798730626945857999

`p?[A175093(A005496(n))]`
-/

namespace A072999.P11798730626945857999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175093 (A005496 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072999.P11798730626945857999

/-! ## A072999.P8792025346283478867

`p?[A175093(A028310(n))]`
-/

namespace A072999.P8792025346283478867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175093 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072999.P8792025346283478867

