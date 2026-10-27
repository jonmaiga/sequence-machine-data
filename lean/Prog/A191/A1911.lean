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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A191101: Number of regions in a complete but borderless regular polygon.

The programs for A191101, there is no canonical definition to state claims against.
-/

/-! ## A191101.P314299382109462115

`A007678(n+5)-(n+5)`
-/

namespace A191101.P314299382109462115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007678 (n + 5) - (n + 5 : ℤ)

end

end A191101.P314299382109462115

/-! ## A191101.P8207082886076502770

`A301748(n+5)-(n+6)`
-/

namespace A191101.P8207082886076502770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301748 (n + 5) - (n + 6 : ℤ)

end

end A191101.P8207082886076502770

/-! ## A191101.P7250103992526616848

`∑[Δ[A006533(n+4)]-2]`
-/

namespace A191101.P7250103992526616848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006533 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191101.P7250103992526616848

/-! ## A191101.P11056714593910236012

`abs(A007678(n+5)+A001478(n+5))`
-/

namespace A191101.P11056714593910236012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007678 (n + 5) + A001478 (n + 5)|

end

end A191101.P11056714593910236012

/-!
# A191103: Positions of 0 in A190893.

The programs for A191103, the canonical program `A191103.P12099556813805402838` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191103 has offset 1).

The definition of A191103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191103.P12099556813805402838

`eq[0, A190893(n+1)]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A191103

/-- `eq[0, A190893(n+1)]+1` -/
def P12099556813805402838.Spec : Prop :=
  ∀ n, (P12099556813805402838.a n : ℤ) = A191103 (n + 1)

theorem P12099556813805402838.correct : P12099556813805402838.Spec := by
  intro n
  simp only [A191103, Nat.add_sub_cancel]

end A191103

/-! ## A191103.P17409044547629578224

`eq[0, A190893(A028310(n))]`
-/

namespace A191103.P17409044547629578224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191103.P17409044547629578224

namespace A191103

/-- `eq[0, A190893(A028310(n))]` -/
def P17409044547629578224.Spec : Prop :=
  ∀ n, (P17409044547629578224.a n : ℤ) = A191103 (n + 1)

end A191103

/-! ## A191103.P13307400203656688537

`A020725(eq[0, A190893(n+1)])`
-/

namespace A191103.P13307400203656688537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191103.P13307400203656688537

namespace A191103

/-- `A020725(eq[0, A190893(n+1)])` -/
def P13307400203656688537.Spec : Prop :=
  ∀ n, P13307400203656688537.a n = A191103 (n + 1)

end A191103

/-! ## A191103.P11214194118409151983

`eq[0, A190893(A000038(n)+n)]`
-/

namespace A191103.P11214194118409151983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191103.P11214194118409151983

namespace A191103

/-- `eq[0, A190893(A000038(n)+n)]` -/
def P11214194118409151983.Spec : Prop :=
  ∀ n, (P11214194118409151983.a n : ℤ) = A191103 (n + 1)

end A191103

/-! ## A191103.P12435791076697913856

`eq[0, A190893(xor(n, A000038(n)))]`
-/

namespace A191103.P12435791076697913856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191103.P12435791076697913856

namespace A191103

/-- `eq[0, A190893(xor(n, A000038(n)))]` -/
def P12435791076697913856.Spec : Prop :=
  ∀ n, (P12435791076697913856.a n : ℤ) = A191103 (n + 1)

end A191103

/-! ## A191103.P5192017854523414001

`∩[A190847(n+1), A247987(n+1)]`
-/

namespace A191103.P5192017854523414001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191103.P5192017854523414001

namespace A191103

/-- `∩[A190847(n+1), A247987(n+1)]` -/
def P5192017854523414001.Spec : Prop :=
  ∀ n, (P5192017854523414001.a n : ℤ) = A191103 (n + 1)

end A191103

/-! ## A191103.P1631342109284228847

`eq[0, A190893(A233583(n+1))]`
-/

namespace A191103.P1631342109284228847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191103.P1631342109284228847

namespace A191103

/-- `eq[0, A190893(A233583(n+1))]` -/
def P1631342109284228847.Spec : Prop :=
  ∀ n, (P1631342109284228847.a n : ℤ) = A191103 (n + 1)

end A191103

/-!
# A191104: Positions of 1 in A190893.

The programs for A191104, the canonical program `A191104.P2192319559702728483` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191104 has offset 1).

The definition of A191104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191104.P2192319559702728483

`eq[1, A190893(n+1)]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A191104

/-- `eq[1, A190893(n+1)]+1` -/
def P2192319559702728483.Spec : Prop :=
  ∀ n, (P2192319559702728483.a n : ℤ) = A191104 (n + 1)

theorem P2192319559702728483.correct : P2192319559702728483.Spec := by
  intro n
  simp only [A191104, Nat.add_sub_cancel]

end A191104

/-! ## A191104.P3282151701592211641

`eq[1, A190893(A028310(n))]`
-/

namespace A191104.P3282151701592211641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191104.P3282151701592211641

namespace A191104

/-- `eq[1, A190893(A028310(n))]` -/
def P3282151701592211641.Spec : Prop :=
  ∀ n, (P3282151701592211641.a n : ℤ) = A191104 (n + 1)

end A191104

/-! ## A191104.P4909538332995662816

`A020725(eq[1, A190893(n+1)])`
-/

namespace A191104.P4909538332995662816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191104.P4909538332995662816

namespace A191104

/-- `A020725(eq[1, A190893(n+1)])` -/
def P4909538332995662816.Spec : Prop :=
  ∀ n, P4909538332995662816.a n = A191104 (n + 1)

end A191104

/-! ## A191104.P14350037910736412759

`eq[1, A190893(A000007(n)+n)]`
-/

namespace A191104.P14350037910736412759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191104.P14350037910736412759

namespace A191104

/-- `eq[1, A190893(A000007(n)+n)]` -/
def P14350037910736412759.Spec : Prop :=
  ∀ n, (P14350037910736412759.a n : ℤ) = A191104 (n + 1)

end A191104

/-! ## A191104.P8263834929045459844

`eq[1, A092942(A195124(A008588(n)))]`
-/

namespace A191104.P8263834929045459844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (A195124 (A008588 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191104.P8263834929045459844

namespace A191104

/-- `eq[1, A092942(A195124(A008588(n)))]` -/
def P8263834929045459844.Spec : Prop :=
  ∀ n, (P8263834929045459844.a n : ℤ) = A191104 (n + 1)

end A191104

/-! ## A191104.P6991456306450109543

`A098019(n+1)+1`
-/

namespace A191104.P6991456306450109543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098019 (n + 1) + 1

end

end A191104.P6991456306450109543

namespace A191104

/-- `A098019(n+1)+1` -/
def P6991456306450109543.Spec : Prop :=
  ∀ n, P6991456306450109543.a n = A191104 (n + 1)

end A191104

/-! ## A191104.P12962293000523728570

`A020725(A098019(n+1))`
-/

namespace A191104.P12962293000523728570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A098019 (n + 1)).toNat

end

end A191104.P12962293000523728570

namespace A191104

/-- `A020725(A098019(n+1))` -/
def P12962293000523728570.Spec : Prop :=
  ∀ n, P12962293000523728570.a n = A191104 (n + 1)

end A191104

/-!
# A191105: Positions of 2 in A190893.

The programs for A191105, the canonical program `A191105.P5073806058281641988` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191105 has offset 1).

The definition of A191105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191105.P5073806058281641988

`lt[1, A190893(n+1)]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A191105

/-- `lt[1, A190893(n+1)]+1` -/
def P5073806058281641988.Spec : Prop :=
  ∀ n, (P5073806058281641988.a n : ℤ) = A191105 (n + 1)

theorem P5073806058281641988.correct : P5073806058281641988.Spec := by
  intro n
  simp only [A191105, Nat.add_sub_cancel]

end A191105

/-! ## A191105.P12937380712077626834

`eq[2, A190893(A000038(n)+n)]`
-/

namespace A191105.P12937380712077626834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191105.P12937380712077626834

namespace A191105

/-- `eq[2, A190893(A000038(n)+n)]` -/
def P12937380712077626834.Spec : Prop :=
  ∀ n, (P12937380712077626834.a n : ℤ) = A191105 (n + 1)

end A191105

/-! ## A191105.P12291373309656124547

`eq[2, A190893(xor(n, A000038(n)))]`
-/

namespace A191105.P12291373309656124547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191105.P12291373309656124547

namespace A191105

/-- `eq[2, A190893(xor(n, A000038(n)))]` -/
def P12291373309656124547.Spec : Prop :=
  ∀ n, (P12291373309656124547.a n : ℤ) = A191105 (n + 1)

end A191105

/-! ## A191105.P7508762726593647582

`A028310(eq[2, A190893(n+1)]+1)`
-/

namespace A191105.P7508762726593647582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A191105.P7508762726593647582

namespace A191105

/-- `A028310(eq[2, A190893(n+1)]+1)` -/
def P7508762726593647582.Spec : Prop :=
  ∀ n, P7508762726593647582.a n = A191105 (n + 1)

end A191105

/-! ## A191105.P14892035348457662315

`eq[A168185(3*n+2)+1, A190893(n+1)]+1`
-/

namespace A191105.P14892035348457662315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 (3 * n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191105.P14892035348457662315

namespace A191105

/-- `eq[A168185(3*n+2)+1, A190893(n+1)]+1` -/
def P14892035348457662315.Spec : Prop :=
  ∀ n, (P14892035348457662315.a n : ℤ) = A191105 (n + 1)

end A191105

/-! ## A191105.P6100392476635009705

`eq[2*n*A190893(A028310(n)), A008574(n)]`
-/

namespace A191105.P6100392476635009705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A190893 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191105.P6100392476635009705

namespace A191105

/-- `eq[2*n*A190893(A028310(n)), A008574(n)]` -/
def P6100392476635009705.Spec : Prop :=
  ∀ n, (P6100392476635009705.a n : ℤ) = A191105 (n + 1)

end A191105

/-! ## A191105.P2195782795180592586

`eq[A165471(n²), A087088(A210062(n))]`
-/

namespace A191105.P2195782795180592586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (A210062 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191105.P2195782795180592586

namespace A191105

/-- `eq[A165471(n²), A087088(A210062(n))]` -/
def P2195782795180592586.Spec : Prop :=
  ∀ n, (P2195782795180592586.a n : ℤ) = A191105 (n + 1)

end A191105

/-!
# A191106: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-2 and 3x are in a.

The programs for A191106, the canonical program `A191106.P14318960782642290276` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191106 has offset 1).

The definition of A191106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191106.P2466659774696992890

`A005823(n+1)+1`
-/

namespace A191106.P2466659774696992890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1) + 1

end

end A191106.P2466659774696992890

namespace A191106

/-- `A005823(n+1)+1` -/
def P2466659774696992890.Spec : Prop :=
  ∀ n, P2466659774696992890.a n = A191106 (n + 1)

end A191106

/-! ## A191106.P14318960782642290276

`2*A005836(n+1)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A191106

/-- `2*A005836(n+1)+1` -/
def P14318960782642290276.Spec : Prop :=
  ∀ n, P14318960782642290276.a n = A191106 (n + 1)

theorem P14318960782642290276.correct : P14318960782642290276.Spec := by
  intro n
  simp only [A191106, Nat.add_sub_cancel]

end A191106

/-! ## A191106.P17205229419832790400

`(A191108(n+1)+1)/2`
-/

namespace A191106.P17205229419832790400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191108 (n + 1) + 1 : ℚ) / 2

end

end A191106.P17205229419832790400

namespace A191106

/-- `(A191108(n+1)+1)/2` -/
def P17205229419832790400.Spec : Prop :=
  ∀ n, P17205229419832790400.a n = (A191106 (n + 1) : ℚ)

theorem P17205229419832790400.correct : P17205229419832790400.Spec := by
  intro n
  simp only [A191106, Nat.add_sub_cancel, A191106.P17205229419832790400.a, A191106.P14318960782642290276.a, A005836, A005836.P12367569128854000442.a, A191108, A191108.P16458009110707439268.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191106

/-! ## A191106.P6275563159631272946

`∑[and(n, -n)^log2(3)+1]`
-/

namespace A191106.P6275563159631272946
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ)) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191106.P6275563159631272946

namespace A191106

/-- `∑[and(n, -n)^log2(3)+1]` -/
def P6275563159631272946.Spec : Prop :=
  ∀ n, P6275563159631272946.a n = (A191106 (n + 1) : ℝ)

end A191106

/-! ## A191106.P9704796212062657171

`∑[and(n, -n)^log2(3)]-xor(n, -1)`
-/

namespace A191106.P9704796212062657171
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Int.xor (n : ℤ) (-1) : ℝ)

end

end A191106.P9704796212062657171

namespace A191106

/-- `∑[and(n, -n)^log2(3)]-xor(n, -1)` -/
def P9704796212062657171.Spec : Prop :=
  ∀ n, P9704796212062657171.a n = (A191106 (n + 1) : ℝ)

end A191106

/-! ## A191106.P2359190403217778984

`∑[3*a(floor(n/2))-a(n-1)]` with `a(0)=1`
-/

namespace A191106.P2359190403217778984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191106.P2359190403217778984

namespace A191106

/-- `∑[3*a(floor(n/2))-a(n-1)]` -/
def P2359190403217778984.Spec : Prop :=
  ∀ n, P2359190403217778984.a n = A191106 (n + 1)

end A191106

/-! ## A191106.P14622793369595005117

`or(1, 2*a(n-1)+1-a(and(n, n-1)))` with `a(0)=1`
-/

namespace A191106.P14622793369595005117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (2 * a (n - 1) + (1 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat))

end

end A191106.P14622793369595005117

namespace A191106

/-- `or(1, 2*a(n-1)+1-a(and(n, n-1)))` -/
def P14622793369595005117.Spec : Prop :=
  ∀ n, P14622793369595005117.a n = A191106 (n + 1)

end A191106

/-! ## A191106.P10415396057088474186

`xor(1, 2*a(n-1)+1-a(and(n, n-1)))` with `a(0)=1`
-/

namespace A191106.P10415396057088474186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (2 * a (n - 1) + (1 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat))

end

end A191106.P10415396057088474186

namespace A191106

/-- `xor(1, 2*a(n-1)+1-a(and(n, n-1)))` -/
def P10415396057088474186.Spec : Prop :=
  ∀ n, P10415396057088474186.a n = A191106 (n + 1)

end A191106

/-! ## A191106.P5306922416981571689

`a(n-1-and(n, n-1))+a(n-1)+1` with `a(0)=1`
-/

namespace A191106.P5306922416981571689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - 1 - Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + a (n - 1) + 1

end

end A191106.P5306922416981571689

namespace A191106

/-- `a(n-1-and(n, n-1))+a(n-1)+1` -/
def P5306922416981571689.Spec : Prop :=
  ∀ n, (P5306922416981571689.a n : ℤ) = A191106 (n + 1)

end A191106

/-! ## A191106.P7245067415570329138

`∑[A061393(n)]`
-/

namespace A191106.P7245067415570329138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191106.P7245067415570329138

namespace A191106

/-- `∑[A061393(n)]` -/
def P7245067415570329138.Spec : Prop :=
  ∀ n, P7245067415570329138.a n = A191106 (n + 1)

end A191106

/-! ## A191106.P3360034557771119640

`or(1, A055247(n+1))`
-/

namespace A191106.P3360034557771119640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055247 (n + 1))

end

end A191106.P3360034557771119640

namespace A191106

/-- `or(1, A055247(n+1))` -/
def P3360034557771119640.Spec : Prop :=
  ∀ n, P3360034557771119640.a n = A191106 (n + 1)

end A191106

/-! ## A191106.P18228262323486216314

`A091311(n)+1+n`
-/

namespace A191106.P18228262323486216314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091311 n + 1 + (n : ℤ)

end

end A191106.P18228262323486216314

namespace A191106

/-- `A091311(n)+1+n` -/
def P18228262323486216314.Spec : Prop :=
  ∀ n, P18228262323486216314.a n = A191106 (n + 1)

theorem P18228262323486216314.correct : P18228262323486216314.Spec := by
  intro n
  simp only [A191106, Nat.add_sub_cancel, A191106.P18228262323486216314.a, A191106.P14318960782642290276.a, A005836, A005836.P12367569128854000442.a, A091311, A091311.P3576469723642197269.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191106

/-! ## A191106.P432260806684068307

`ceil(A191108(n+1)/2)`
-/

namespace A191106.P432260806684068307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191108 (n + 1) : ℚ) / 2⌉

end

end A191106.P432260806684068307

namespace A191106

/-- `ceil(A191108(n+1)/2)` -/
def P432260806684068307.Spec : Prop :=
  ∀ n, P432260806684068307.a n = A191106 (n + 1)

end A191106

/-! ## A191106.P12130010926254569865

`2*A003278(n+1)-1`
-/

namespace A191106.P12130010926254569865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003278 (n + 1) - 1

end

end A191106.P12130010926254569865

namespace A191106

/-- `2*A003278(n+1)-1` -/
def P12130010926254569865.Spec : Prop :=
  ∀ n, P12130010926254569865.a n = A191106 (n + 1)

end A191106

/-! ## A191106.P13172823658923226100

`(A190640(n+1)+1)/3`
-/

namespace A191106.P13172823658923226100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190640 (n + 1) + 1 : ℚ) / 3

end

end A191106.P13172823658923226100

namespace A191106

/-- `(A190640(n+1)+1)/3` -/
def P13172823658923226100.Spec : Prop :=
  ∀ n, P13172823658923226100.a n = (A191106 (n + 1) : ℚ)

end A191106

/-! ## A191106.P4793690466848294263

`2*A033159(n+1)-3`
-/

namespace A191106.P4793690466848294263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033159 (n + 1) - 3

end

end A191106.P4793690466848294263

namespace A191106

/-- `2*A033159(n+1)-3` -/
def P4793690466848294263.Spec : Prop :=
  ∀ n, P4793690466848294263.a n = A191106 (n + 1)

end A191106

/-! ## A191106.P11616015101482112644

`(A055246(n+1)+2)/3`
-/

namespace A191106.P11616015101482112644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055246 (n + 1) + 2 : ℚ) / 3

end

end A191106.P11616015101482112644

namespace A191106

/-- `(A055246(n+1)+2)/3` -/
def P11616015101482112644.Spec : Prop :=
  ∀ n, P11616015101482112644.a n = (A191106 (n + 1) : ℚ)

theorem P11616015101482112644.correct : P11616015101482112644.Spec := by
  intro n
  simp only [A191106, Nat.add_sub_cancel, A191106.P11616015101482112644.a, A191106.P14318960782642290276.a, A005836, A005836.P12367569128854000442.a, A055246, A055246.P17023893520990019210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191106

/-! ## A191106.P11885574072621424548

`2*A033162(n+1)-5`
-/

namespace A191106.P11885574072621424548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033162 (n + 1) - 5

end

end A191106.P11885574072621424548

namespace A191106

/-- `2*A033162(n+1)-5` -/
def P11885574072621424548.Spec : Prop :=
  ∀ n, P11885574072621424548.a n = A191106 (n + 1)

theorem P11885574072621424548.correct : P11885574072621424548.Spec := by
  intro n
  simp only [A191106, Nat.add_sub_cancel, A191106.P11885574072621424548.a, A191106.P14318960782642290276.a, A005836, A005836.P12367569128854000442.a, A033162, A033162.P7238810650914516972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191106

/-! ## A191106.P5913357819718266155

`a(n-1)+2*A236313(n)` with `a(0)=1`
-/

namespace A191106.P5913357819718266155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A236313 n

end

end A191106.P5913357819718266155

namespace A191106

/-- `a(n-1)+2*A236313(n)` -/
def P5913357819718266155.Spec : Prop :=
  ∀ n, P5913357819718266155.a n = A191106 (n + 1)

end A191106

/-! ## A191106.P8917481360212598935

`A055247(n+1)+A000035(n)`
-/

namespace A191106.P8917481360212598935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (n + 1) + A000035 n

end

end A191106.P8917481360212598935

namespace A191106

/-- `A055247(n+1)+A000035(n)` -/
def P8917481360212598935.Spec : Prop :=
  ∀ n, P8917481360212598935.a n = A191106 (n + 1)

end A191106

/-!
# A191107: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-2 and 3x+1 are in a.

The programs for A191107, the canonical program `A191107.P18216975096704636460` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191107 has offset 1).

The definition of A191107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191107.P18216975096704636460

`∑[3*a(∑[n]%n)-3]-1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191107

/-- `∑[3*a(∑[n]%n)-3]-1` -/
def P18216975096704636460.Spec : Prop :=
  ∀ n, P18216975096704636460.a n = A191107 (n + 1)

theorem P18216975096704636460.correct : P18216975096704636460.Spec := by
  intro n
  simp only [A191107, Nat.add_sub_cancel]

end A191107

/-! ## A191107.P118970122900489432

`3*(a(floor(n/2))+n%2)-2` with `a(0)=1`
-/

namespace A191107.P118970122900489432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)) - 2

end

end A191107.P118970122900489432

namespace A191107

/-- `3*(a(floor(n/2))+n%2)-2` -/
def P118970122900489432.Spec : Prop :=
  ∀ n, P118970122900489432.a n = A191107 (n + 1)

end A191107

/-! ## A191107.P2238663802225279452

`∑[3*a(floor(n/2))-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A191107.P2238663802225279452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191107.P2238663802225279452

namespace A191107

/-- `∑[3*a(floor(n/2))-a(n-1)]` -/
def P2238663802225279452.Spec : Prop :=
  ∀ n, P2238663802225279452.a n = A191107 (n + 1)

end A191107

/-! ## A191107.P13142524432087154179

`3*(a(floor(n/2))+gcd(2, n+1))-5` with `a(0)=1`
-/

namespace A191107.P13142524432087154179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a ⌊(n : ℚ) / 2⌋.toNat + (Nat.gcd 2 (n + 1) : ℤ)) - 5

end

end A191107.P13142524432087154179

namespace A191107

/-- `3*(a(floor(n/2))+gcd(2, n+1))-5` -/
def P13142524432087154179.Spec : Prop :=
  ∀ n, P13142524432087154179.a n = A191107 (n + 1)

end A191107

/-! ## A191107.P9378156300379147245

`3*(∑[and(n, -n)^log2(3)]+n)/2+1`
-/

namespace A191107.P9378156300379147245
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2) + 1

end

end A191107.P9378156300379147245

namespace A191107

/-- `3*(∑[and(n, -n)^log2(3)]+n)/2+1` -/
def P9378156300379147245.Spec : Prop :=
  ∀ n, P9378156300379147245.a n = (A191107 (n + 1) : ℝ)

end A191107

/-! ## A191107.P11589354559016346313

`a(n-1-and(n, n-1))+a(n-1)+2` with `a(0)=1`
-/

namespace A191107.P11589354559016346313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - 1 - Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + a (n - 1) + 2

end

end A191107.P11589354559016346313

namespace A191107

/-- `a(n-1-and(n, n-1))+a(n-1)+2` -/
def P11589354559016346313.Spec : Prop :=
  ∀ n, (P11589354559016346313.a n : ℤ) = A191107 (n + 1)

end A191107

/-! ## A191107.P10544141301966068003

`A081601(n+1)+1`
-/

namespace A191107.P10544141301966068003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (n + 1) + 1

end

end A191107.P10544141301966068003

namespace A191107

/-- `A081601(n+1)+1` -/
def P10544141301966068003.Spec : Prop :=
  ∀ n, P10544141301966068003.a n = A191107 (n + 1)

end A191107

/-! ## A191107.P15157299271476844441

`A356426(n+1)-1`
-/

namespace A191107.P15157299271476844441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356426 (n + 1) - 1

end

end A191107.P15157299271476844441

namespace A191107

/-- `A356426(n+1)-1` -/
def P15157299271476844441.Spec : Prop :=
  ∀ n, P15157299271476844441.a n = A191107 (n + 1)

end A191107

/-! ## A191107.P11677418368905403157

`A190640(n+1)/2`
-/

namespace A191107.P11677418368905403157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190640 (n + 1) : ℚ) / 2

end

end A191107.P11677418368905403157

namespace A191107

/-- `A190640(n+1)/2` -/
def P11677418368905403157.Spec : Prop :=
  ∀ n, P11677418368905403157.a n = (A191107 (n + 1) : ℚ)

end A191107

/-! ## A191107.P1250632110141298696

`(A062548(n)+2)/4`
-/

namespace A191107.P1250632110141298696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062548 n + 2 : ℚ) / 4

end

end A191107.P1250632110141298696

namespace A191107

/-- `(A062548(n)+2)/4` -/
def P1250632110141298696.Spec : Prop :=
  ∀ n, P1250632110141298696.a n = (A191107 (n + 1) : ℚ)

end A191107

/-! ## A191107.P16509918974022589565

`3*A005836(n+1)+1`
-/

namespace A191107.P16509918974022589565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005836 (n + 1) + 1

end

end A191107.P16509918974022589565

namespace A191107

/-- `3*A005836(n+1)+1` -/
def P16509918974022589565.Spec : Prop :=
  ∀ n, P16509918974022589565.a n = A191107 (n + 1)

end A191107

/-! ## A191107.P6251322268231878401

`(A055246(n+1)+1)/2`
-/

namespace A191107.P6251322268231878401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055246 (n + 1) + 1 : ℚ) / 2

end

end A191107.P6251322268231878401

namespace A191107

/-- `(A055246(n+1)+1)/2` -/
def P6251322268231878401.Spec : Prop :=
  ∀ n, P6251322268231878401.a n = (A191107 (n + 1) : ℚ)

end A191107

/-! ## A191107.P11818129179152407985

`3*A003278(n+1)-2`
-/

namespace A191107.P11818129179152407985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003278 (n + 1) - 2

end

end A191107.P11818129179152407985

namespace A191107

/-- `3*A003278(n+1)-2` -/
def P11818129179152407985.Spec : Prop :=
  ∀ n, P11818129179152407985.a n = A191107 (n + 1)

end A191107

/-! ## A191107.P15027667530850292728

`(A265100(n+1)-2)/3`
-/

namespace A191107.P15027667530850292728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265100 (n + 1) - 2 : ℚ) / 3

end

end A191107.P15027667530850292728

namespace A191107

/-- `(A265100(n+1)-2)/3` -/
def P15027667530850292728.Spec : Prop :=
  ∀ n, P15027667530850292728.a n = (A191107 (n + 1) : ℚ)

end A191107

/-! ## A191107.P5189231122087094029

`A074938(n)+A010060(n)`
-/

namespace A191107.P5189231122087094029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n + A010060 n

end

end A191107.P5189231122087094029

namespace A191107

/-- `A074938(n)+A010060(n)` -/
def P5189231122087094029.Spec : Prop :=
  ∀ n, P5189231122087094029.a n = A191107 (n + 1)

end A191107

/-! ## A191107.P1629507402069722322

`A074939(n)+A010059(n)`
-/

namespace A191107.P1629507402069722322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 n + A010059 n

end

end A191107.P1629507402069722322

namespace A191107

/-- `A074939(n)+A010059(n)` -/
def P1629507402069722322.Spec : Prop :=
  ∀ n, P1629507402069722322.a n = A191107 (n + 1)

end A191107

/-! ## A191107.P2669939343477424408

`A005823(n+1)+A003278(n+1)`
-/

namespace A191107.P2669939343477424408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1) + A003278 (n + 1)

end

end A191107.P2669939343477424408

namespace A191107

/-- `A005823(n+1)+A003278(n+1)` -/
def P2669939343477424408.Spec : Prop :=
  ∀ n, P2669939343477424408.a n = A191107 (n + 1)

end A191107

/-! ## A191107.P17163310958858667173

`A191106(n+1)+A005836(n+1)`
-/

namespace A191107.P17163310958858667173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 (n + 1) + A005836 (n + 1)

end

end A191107.P17163310958858667173

namespace A191107

/-- `A191106(n+1)+A005836(n+1)` -/
def P17163310958858667173.Spec : Prop :=
  ∀ n, P17163310958858667173.a n = A191107 (n + 1)

end A191107

/-! ## A191107.P14611623527765726656

`A186776(n+1)+A055247(n+1)`
-/

namespace A191107.P14611623527765726656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (n + 1) + A055247 (n + 1)

end

end A191107.P14611623527765726656

namespace A191107

/-- `A186776(n+1)+A055247(n+1)` -/
def P14611623527765726656.Spec : Prop :=
  ∀ n, P14611623527765726656.a n = A191107 (n + 1)

end A191107

/-! ## A191107.P17329743746205484640

`A191108(n+1)-A005836(n+1)`
-/

namespace A191107.P17329743746205484640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191108 (n + 1) - A005836 (n + 1)

end

end A191107.P17329743746205484640

namespace A191107

/-- `A191108(n+1)-A005836(n+1)` -/
def P17329743746205484640.Spec : Prop :=
  ∀ n, P17329743746205484640.a n = A191107 (n + 1)

end A191107

/-!
# A191108: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-2 and 3x+2 are in a.

The programs for A191108, the canonical program `A191108.P16458009110707439268` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191108 has offset 1).

The definition of A191108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191108.P16398427579991821919

`2*A005823(n+1)+1`
-/

namespace A191108.P16398427579991821919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005823 (n + 1) + 1

end

end A191108.P16398427579991821919

namespace A191108

/-- `2*A005823(n+1)+1` -/
def P16398427579991821919.Spec : Prop :=
  ∀ n, P16398427579991821919.a n = A191108 (n + 1)

theorem P16398427579991821919.correct : P16398427579991821919.Spec := by
  intro n
  simp only [A191108, Nat.add_sub_cancel, A191108.P16398427579991821919.a, A191108.P16458009110707439268.a, A005823, A005823.P15253501149959078210.a, A191106, A191106.P14318960782642290276.a, A005836, A005836.P12367569128854000442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191108

/-! ## A191108.P16458009110707439268

`2*A191106(n+1)-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A191108

/-- `2*A191106(n+1)-1` -/
def P16458009110707439268.Spec : Prop :=
  ∀ n, P16458009110707439268.a n = A191108 (n + 1)

theorem P16458009110707439268.correct : P16458009110707439268.Spec := by
  intro n
  simp only [A191108, Nat.add_sub_cancel]

end A191108

/-! ## A191108.P13256360125261077605

`4*A005836(n+1)+1`
-/

namespace A191108.P13256360125261077605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005836 (n + 1) + 1

end

end A191108.P13256360125261077605

namespace A191108

/-- `4*A005836(n+1)+1` -/
def P13256360125261077605.Spec : Prop :=
  ∀ n, P13256360125261077605.a n = A191108 (n + 1)

theorem P13256360125261077605.correct : P13256360125261077605.Spec := by
  intro n
  simp only [A191108, Nat.add_sub_cancel, A191108.P13256360125261077605.a, A191108.P16458009110707439268.a, A005836, A005836.P12367569128854000442.a, A191106, A191106.P14318960782642290276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191108

/-! ## A191108.P6509939545494979257

`(A055247(2*(n+1)-1)+A055247(2*(n+1)))/3`
-/

namespace A191108.P6509939545494979257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055247 (2 * (n + 1) - 1) + A055247 (2 * (n + 1)) : ℚ) / 3

end

end A191108.P6509939545494979257

namespace A191108

/-- `(A055247(2*(n+1)-1)+A055247(2*(n+1)))/3` -/
def P6509939545494979257.Spec : Prop :=
  ∀ n, P6509939545494979257.a n = (A191108 (n + 1) : ℚ)

end A191108

/-! ## A191108.P8645586918821976076

`A306556(2*(n+1))*2-1`
-/

namespace A191108.P8645586918821976076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306556 (2 * (n + 1)) * 2 - 1

end

end A191108.P8645586918821976076

namespace A191108

/-- `A306556(2*(n+1))*2-1` -/
def P8645586918821976076.Spec : Prop :=
  ∀ n, P8645586918821976076.a n = A191108 (n + 1)

end A191108

/-! ## A191108.P14311039428120343780

`2*(∑[and(n, -n)^log2(3)]+n)+1`
-/

namespace A191108.P14311039428120343780
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) + 1

end

end A191108.P14311039428120343780

namespace A191108

/-- `2*(∑[and(n, -n)^log2(3)]+n)+1` -/
def P14311039428120343780.Spec : Prop :=
  ∀ n, P14311039428120343780.a n = (A191108 (n + 1) : ℝ)

end A191108

/-! ## A191108.P2511741646878170109

`∑[3*a(floor(n/2))-a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A191108.P2511741646878170109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191108.P2511741646878170109

namespace A191108

/-- `∑[3*a(floor(n/2))-a(n-1)]` -/
def P2511741646878170109.Spec : Prop :=
  ∀ n, P2511741646878170109.a n = A191108 (n + 1)

end A191108

/-! ## A191108.P12439476200034029089

`a(n-1-and(n, n-1))+a(n-1)+3` with `a(0)=1`
-/

namespace A191108.P12439476200034029089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - 1 - Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + a (n - 1) + 3

end

end A191108.P12439476200034029089

namespace A191108

/-- `a(n-1-and(n, n-1))+a(n-1)+3` -/
def P12439476200034029089.Spec : Prop :=
  ∀ n, (P12439476200034029089.a n : ℤ) = A191108 (n + 1)

end A191108

/-! ## A191108.P8915051157385268483

`(A062548(n)+1)/3`
-/

namespace A191108.P8915051157385268483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062548 n + 1 : ℚ) / 3

end

end A191108.P8915051157385268483

namespace A191108

/-- `(A062548(n)+1)/3` -/
def P8915051157385268483.Spec : Prop :=
  ∀ n, P8915051157385268483.a n = (A191108 (n + 1) : ℚ)

end A191108

/-! ## A191108.P9489828273028324716

`∑[2*A061393(n)]-1`
-/

namespace A191108.P9489828273028324716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A191108.P9489828273028324716

namespace A191108

/-- `∑[2*A061393(n)]-1` -/
def P9489828273028324716.Spec : Prop :=
  ∀ n, P9489828273028324716.a n = A191108 (n + 1)

end A191108

/-! ## A191108.P14975509361816791347

`4*A003278(n+1)-3`
-/

namespace A191108.P14975509361816791347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003278 (n + 1) - 3

end

end A191108.P14975509361816791347

namespace A191108

/-- `4*A003278(n+1)-3` -/
def P14975509361816791347.Spec : Prop :=
  ∀ n, P14975509361816791347.a n = A191108 (n + 1)

end A191108

/-! ## A191108.P3608824324512260733

`4*(A033162(n+1)-3)+1`
-/

namespace A191108.P3608824324512260733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A033162 (n + 1) - 3) + 1

end

end A191108.P3608824324512260733

namespace A191108

/-- `4*(A033162(n+1)-3)+1` -/
def P3608824324512260733.Spec : Prop :=
  ∀ n, P3608824324512260733.a n = A191108 (n + 1)

theorem P3608824324512260733.correct : P3608824324512260733.Spec := by
  intro n
  simp only [A191108, Nat.add_sub_cancel, A191108.P3608824324512260733.a, A191108.P16458009110707439268.a, A033162, A033162.P7238810650914516972.a, A191106, A191106.P14318960782642290276.a, A005836, A005836.P12367569128854000442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191108

/-! ## A191108.P513717665595692047

`(2*A055246(n+1)+1)/3`
-/

namespace A191108.P513717665595692047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A055246 (n + 1) + 1 : ℚ) / 3

end

end A191108.P513717665595692047

namespace A191108

/-- `(2*A055246(n+1)+1)/3` -/
def P513717665595692047.Spec : Prop :=
  ∀ n, P513717665595692047.a n = (A191108 (n + 1) : ℚ)

theorem P513717665595692047.correct : P513717665595692047.Spec := by
  intro n
  simp only [A191108, Nat.add_sub_cancel, A191108.P513717665595692047.a, A191108.P16458009110707439268.a, A055246, A055246.P17023893520990019210.a, A191106, A191106.P14318960782642290276.a, A005836, A005836.P12367569128854000442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191108

/-! ## A191108.P14490926923215030702

`A081601(n+1)+A003278(n+1)`
-/

namespace A191108.P14490926923215030702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (n + 1) + A003278 (n + 1)

end

end A191108.P14490926923215030702

namespace A191108

/-- `A081601(n+1)+A003278(n+1)` -/
def P14490926923215030702.Spec : Prop :=
  ∀ n, P14490926923215030702.a n = A191108 (n + 1)

end A191108

/-! ## A191108.P17297740320157710228

`A191106(n+1)+A005823(n+1)`
-/

namespace A191108.P17297740320157710228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 (n + 1) + A005823 (n + 1)

end

end A191108.P17297740320157710228

namespace A191108

/-- `A191106(n+1)+A005823(n+1)` -/
def P17297740320157710228.Spec : Prop :=
  ∀ n, P17297740320157710228.a n = A191108 (n + 1)

theorem P17297740320157710228.correct : P17297740320157710228.Spec := by
  intro n
  simp only [A191108, Nat.add_sub_cancel, A191108.P17297740320157710228.a, A191108.P16458009110707439268.a, A005823, A005823.P15253501149959078210.a, A191106, A191106.P14318960782642290276.a, A005836, A005836.P12367569128854000442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191108

/-! ## A191108.P10373887789500324389

`A191107(n+1)+A005836(n+1)`
-/

namespace A191108.P10373887789500324389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 1) + A005836 (n + 1)

end

end A191108.P10373887789500324389

namespace A191108

/-- `A191107(n+1)+A005836(n+1)` -/
def P10373887789500324389.Spec : Prop :=
  ∀ n, P10373887789500324389.a n = A191108 (n + 1)

end A191108

/-! ## A191108.P12623209602646667661

`A055246(n+1)-A005823(n+1)`
-/

namespace A191108.P12623209602646667661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055246 (n + 1) - A005823 (n + 1)

end

end A191108.P12623209602646667661

namespace A191108

/-- `A055246(n+1)-A005823(n+1)` -/
def P12623209602646667661.Spec : Prop :=
  ∀ n, P12623209602646667661.a n = A191108 (n + 1)

theorem P12623209602646667661.correct : P12623209602646667661.Spec := by
  intro n
  simp only [A191108, Nat.add_sub_cancel, A191108.P12623209602646667661.a, A191108.P16458009110707439268.a, A005823, A005823.P15253501149959078210.a, A055246, A055246.P17023893520990019210.a, A191106, A191106.P14318960782642290276.a, A005836, A005836.P12367569128854000442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191108

/-! ## A191108.P3332632999439983491

`A190640(n+1)-A191106(n+1)`
-/

namespace A191108.P3332632999439983491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190640 (n + 1) - A191106 (n + 1)

end

end A191108.P3332632999439983491

namespace A191108

/-- `A190640(n+1)-A191106(n+1)` -/
def P3332632999439983491.Spec : Prop :=
  ∀ n, P3332632999439983491.a n = A191108 (n + 1)

end A191108

/-! ## A191108.P91996010331278012

`A003278(n+1)+A191107(n+1)-1`
-/

namespace A191108.P91996010331278012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + (A191107 (n + 1) - 1)

end

end A191108.P91996010331278012

namespace A191108

/-- `A003278(n+1)+A191107(n+1)-1` -/
def P91996010331278012.Spec : Prop :=
  ∀ n, P91996010331278012.a n = A191108 (n + 1)

end A191108

/-! ## A191108.P12869230388330989655

`A190640(n+1)-(A005823(n+1)+1)`
-/

namespace A191108.P12869230388330989655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190640 (n + 1) - (A005823 (n + 1) + 1)

end

end A191108.P12869230388330989655

namespace A191108

/-- `A190640(n+1)-(A005823(n+1)+1)` -/
def P12869230388330989655.Spec : Prop :=
  ∀ n, P12869230388330989655.a n = A191108 (n + 1)

end A191108

/-!
# A191109: a(1)=1, and if x is a term then 3x-1 and 3x+2 are terms too.

The programs for A191109, the canonical program `A191109.P9425849435113623338` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191109 has offset 1).

The definition of A191109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191109.P9425849435113623338

`∑[3*a(∑[n]%n)-3]-1` with `a(0)=2, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191109

/-- `∑[3*a(∑[n]%n)-3]-1` -/
def P9425849435113623338.Spec : Prop :=
  ∀ n, P9425849435113623338.a n = A191109 (n + 1)

theorem P9425849435113623338.correct : P9425849435113623338.Spec := by
  intro n
  simp only [A191109, Nat.add_sub_cancel]

end A191109

/-! ## A191109.P2104990324314870958

`3*(a(floor(n/2))+a(n%2))-4` with `a(0)=1, a(1)=2`
-/

namespace A191109.P2104990324314870958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (a ⌊(n : ℚ) / 2⌋.toNat + a (n % 2)) - 4

end

end A191109.P2104990324314870958

namespace A191109

/-- `3*(a(floor(n/2))+a(n%2))-4` -/
def P2104990324314870958.Spec : Prop :=
  ∀ n, P2104990324314870958.a n = A191109 (n + 1)

end A191109

/-! ## A191109.P7909357333868773532

`3*(a(floor(n/2))+gcd(2, n+1))-4` with `a(0)=1, a(1)=2`
-/

namespace A191109.P7909357333868773532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (a ⌊(n : ℚ) / 2⌋.toNat + (Nat.gcd 2 (n + 1) : ℤ)) - 4

end

end A191109.P7909357333868773532

namespace A191109

/-- `3*(a(floor(n/2))+gcd(2, n+1))-4` -/
def P7909357333868773532.Spec : Prop :=
  ∀ n, P7909357333868773532.a n = A191109 (n + 1)

end A191109

/-! ## A191109.P6934121930006521192

`3*(a(floor(n/2))+(1-(-1)^n)/2)-1` with `a(0)=1, a(1)=2`
-/

namespace A191109.P6934121930006521192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n : ℚ) / 2) - 1

end

end A191109.P6934121930006521192

namespace A191109

/-- `3*(a(floor(n/2))+(1-(-1)^n)/2)-1` -/
def P6934121930006521192.Spec : Prop :=
  ∀ n, P6934121930006521192.a n = (A191109 (n + 1) : ℚ)

end A191109

/-! ## A191109.P5609724425177979057

`A032924(comp[2*(n+1)]+1)`
-/

namespace A191109.P5609724425177979057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A191109.P5609724425177979057

namespace A191109

/-- `A032924(comp[2*(n+1)]+1)` -/
def P5609724425177979057.Spec : Prop :=
  ∀ n, P5609724425177979057.a n = A191109 (n + 1)

end A191109

/-! ## A191109.P9783786789789693469

`record[A032924(n+1)^(n%2)]`
-/

namespace A191109.P9783786789789693469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191109.P9783786789789693469

namespace A191109

/-- `record[A032924(n+1)^(n%2)]` -/
def P9783786789789693469.Spec : Prop :=
  ∀ n, P9783786789789693469.a n = A191109 (n + 1)

end A191109

/-! ## A191109.P5260213454516332859

`A153775(A004277(n))`
-/

namespace A191109.P5260213454516332859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (A004277 n).toNat

end

end A191109.P5260213454516332859

namespace A191109

/-- `A153775(A004277(n))` -/
def P5260213454516332859.Spec : Prop :=
  ∀ n, P5260213454516332859.a n = A191109 (n + 1)

end A191109

/-! ## A191109.P3911710879063810464

`A153775(A004273(n)+1)`
-/

namespace A191109.P3911710879063810464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (A004273 n + 1).toNat

end

end A191109.P3911710879063810464

namespace A191109

/-- `A153775(A004273(n)+1)` -/
def P3911710879063810464.Spec : Prop :=
  ∀ n, P3911710879063810464.a n = A191109 (n + 1)

end A191109

/-! ## A191109.P3022079204442963336

`∩[A032924(n+1), A153775(n+1)]`
-/

namespace A191109.P3022079204442963336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191109.P3022079204442963336

namespace A191109

/-- `∩[A032924(n+1), A153775(n+1)]` -/
def P3022079204442963336.Spec : Prop :=
  ∀ n, (P3022079204442963336.a n : ℤ) = A191109 (n + 1)

end A191109

/-! ## A191109.P16530737192122694578

`A032924(A004277(n))%A002383(n+1)`
-/

namespace A191109.P16530737192122694578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032924 (A004277 n).toNat) (A002383 (n + 1))

end

end A191109.P16530737192122694578

namespace A191109

/-- `A032924(A004277(n))%A002383(n+1)` -/
def P16530737192122694578.Spec : Prop :=
  ∀ n, P16530737192122694578.a n = A191109 (n + 1)

end A191109

/-! ## A191109.P17642178292035274902

`A153775(A065190(2*n+1))`
-/

namespace A191109.P17642178292035274902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (A065190 (2 * n + 1)).toNat

end

end A191109.P17642178292035274902

namespace A191109

/-- `A153775(A065190(2*n+1))` -/
def P17642178292035274902.Spec : Prop :=
  ∀ n, P17642178292035274902.a n = A191109 (n + 1)

end A191109

/-! ## A191109.P9677694343435809026

`record[A153775(n+2)-A135517(n+1)²]`
-/

namespace A191109.P9677694343435809026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (n + 2) - A135517 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191109.P9677694343435809026

namespace A191109

/-- `record[A153775(n+2)-A135517(n+1)²]` -/
def P9677694343435809026.Spec : Prop :=
  ∀ n, P9677694343435809026.a n = A191109 (n + 1)

end A191109

/-! ## A191109.P5378406772289254492

`A153775(eq[1, A153775(n+2)-A153775(n+1)]+1)`
-/

namespace A191109.P5378406772289254492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (n + 2) - A153775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A191109.P5378406772289254492

namespace A191109

/-- `A153775(eq[1, A153775(n+2)-A153775(n+1)]+1)` -/
def P5378406772289254492.Spec : Prop :=
  ∀ n, P5378406772289254492.a n = A191109 (n + 1)

end A191109

/-! ## A191109.P17451545124557736733

`record[A153775(n+1)/A135517(3*n+1)]`
-/

namespace A191109.P17451545124557736733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153775 (n + 1) : ℚ) / (A135517 (3 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191109.P17451545124557736733

namespace A191109

/-- `record[A153775(n+1)/A135517(3*n+1)]` -/
def P17451545124557736733.Spec : Prop :=
  ∀ n, P17451545124557736733.a n = (A191109 (n + 1) : ℚ)

end A191109

/-! ## A191109.P4171141244742675820

`∩[A026179(n+1), A032924(n+1)]`
-/

namespace A191109.P4171141244742675820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191109.P4171141244742675820

namespace A191109

/-- `∩[A026179(n+1), A032924(n+1)]` -/
def P4171141244742675820.Spec : Prop :=
  ∀ n, (P4171141244742675820.a n : ℤ) = A191109 (n + 1)

end A191109

/-! ## A191109.P1338940614425011139

`∩[A026138(n+1), A153775(n+1)]`
-/

namespace A191109.P1338940614425011139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191109.P1338940614425011139

namespace A191109

/-- `∩[A026138(n+1), A153775(n+1)]` -/
def P1338940614425011139.Spec : Prop :=
  ∀ n, (P1338940614425011139.a n : ℤ) = A191109 (n + 1)

end A191109

/-! ## A191109.P11938922001648771541

`∩[A047268(n+1), A153775(n+1)]`
-/

namespace A191109.P11938922001648771541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191109.P11938922001648771541

namespace A191109

/-- `∩[A047268(n+1), A153775(n+1)]` -/
def P11938922001648771541.Spec : Prop :=
  ∀ n, (P11938922001648771541.a n : ℤ) = A191109 (n + 1)

end A191109

/-! ## A191109.P2043216795381459954

`∩[A028841(n+1), A032924(n+1)]`
-/

namespace A191109.P2043216795381459954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191109.P2043216795381459954

namespace A191109

/-- `∩[A028841(n+1), A032924(n+1)]` -/
def P2043216795381459954.Spec : Prop :=
  ∀ n, (P2043216795381459954.a n : ℤ) = A191109 (n + 1)

end A191109

/-! ## A191109.P3999592049835859306

`∩[A153775(n+1), A286803(n+1)]`
-/

namespace A191109.P3999592049835859306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191109.P3999592049835859306

namespace A191109

/-- `∩[A153775(n+1), A286803(n+1)]` -/
def P3999592049835859306.Spec : Prop :=
  ∀ n, (P3999592049835859306.a n : ℤ) = A191109 (n + 1)

end A191109

/-! ## A191109.P15327876241977038921

`record[A132141(n+1)-A117966(n)]`
-/

namespace A191109.P15327876241977038921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (n + 1) - A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191109.P15327876241977038921

namespace A191109

/-- `record[A132141(n+1)-A117966(n)]` -/
def P15327876241977038921.Spec : Prop :=
  ∀ n, P15327876241977038921.a n = A191109 (n + 1)

end A191109

/-!
# A191110: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x and 3x+2 are in a.

The programs for A191110, the canonical program `A191110.P14908163695247419265` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191110 has offset 1).

The definition of A191110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191110.P14908163695247419265

`2*A153775(n+1)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A191110

/-- `2*A153775(n+1)-1` -/
def P14908163695247419265.Spec : Prop :=
  ∀ n, P14908163695247419265.a n = A191110 (n + 1)

theorem P14908163695247419265.correct : P14908163695247419265.Spec := by
  intro n
  simp only [A191110, Nat.add_sub_cancel]

end A191110

/-! ## A191110.P17310799052028122337

`A132140(n+1)-A083904(n+1)`
-/

namespace A191110.P17310799052028122337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132140 (n + 1) - A083904 (n + 1)

end

end A191110.P17310799052028122337

namespace A191110

/-- `A132140(n+1)-A083904(n+1)` -/
def P17310799052028122337.Spec : Prop :=
  ∀ n, P17310799052028122337.a n = A191110 (n + 1)

end A191110

/-! ## A191110.P5033758176915675072

`A191109(n+2)-A153775(n+1)`
-/

namespace A191110.P5033758176915675072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191109 (n + 2) - A153775 (n + 1)

end

end A191110.P5033758176915675072

namespace A191110

/-- `A191109(n+2)-A153775(n+1)` -/
def P5033758176915675072.Spec : Prop :=
  ∀ n, P5033758176915675072.a n = A191110 (n + 1)

end A191110

/-! ## A191110.P10217770653895688392

`A005836(A062050(n+1))+A005836(n+2)`
-/

namespace A191110.P10217770653895688392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A062050 (n + 1)).toNat + A005836 (n + 2)

end

end A191110.P10217770653895688392

namespace A191110

/-- `A005836(A062050(n+1))+A005836(n+2)` -/
def P10217770653895688392.Spec : Prop :=
  ∀ n, P10217770653895688392.a n = A191110 (n + 1)

end A191110

/-! ## A191110.P5682401185868514299

`A005836(n+2)+A005836(A053645(n+1)+1)`
-/

namespace A191110.P5682401185868514299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2) + A005836 (A053645 (n + 1) + 1).toNat

end

end A191110.P5682401185868514299

namespace A191110

/-- `A005836(n+2)+A005836(A053645(n+1)+1)` -/
def P5682401185868514299.Spec : Prop :=
  ∀ n, P5682401185868514299.a n = A191110 (n + 1)

end A191110

/-! ## A191110.P8758266736129704456

`A132140(n+1)+A147991(n+1)-A005836(n+2)`
-/

namespace A191110.P8758266736129704456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132140 (n + 1) + (A147991 (n + 1) - A005836 (n + 2))

end

end A191110.P8758266736129704456

namespace A191110

/-- `A132140(n+1)+A147991(n+1)-A005836(n+2)` -/
def P8758266736129704456.Spec : Prop :=
  ∀ n, P8758266736129704456.a n = A191110 (n + 1)

end A191110

/-! ## A191110.P11863143297478864897

`record[gcd(6*n+3, A026223(n+1))]`
-/

namespace A191110.P11863143297478864897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (6 * n + 3 : ℤ) (A026223 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191110.P11863143297478864897

namespace A191110

/-- `record[gcd(6*n+3, A026223(n+1))]` -/
def P11863143297478864897.Spec : Prop :=
  ∀ n, (P11863143297478864897.a n : ℤ) = A191110 (n + 1)

end A191110

/-! ## A191110.P12762151779223381884

`2*record[(n+1)/a(A077267(n))]-1` with `a(0)=1`
-/

namespace A191110.P12762151779223381884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℚ) / f1 (A077267 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A191110.P12762151779223381884

namespace A191110

/-- `2*record[(n+1)/a(A077267(n))]-1` -/
def P12762151779223381884.Spec : Prop :=
  ∀ n, P12762151779223381884.a n = (A191110 (n + 1) : ℚ)

end A191110

/-! ## A191110.P14172071125059942339

`A004273(A153775(n+1))`
-/

namespace A191110.P14172071125059942339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A153775 (n + 1)).toNat

end

end A191110.P14172071125059942339

namespace A191110

/-- `A004273(A153775(n+1))` -/
def P14172071125059942339.Spec : Prop :=
  ∀ n, P14172071125059942339.a n = A191110 (n + 1)

end A191110

/-! ## A191110.P7867696715625720918

`record[A004488(A157671(n+1))]`
-/

namespace A191110.P7867696715625720918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A157671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191110.P7867696715625720918

namespace A191110

/-- `record[A004488(A157671(n+1))]` -/
def P7867696715625720918.Spec : Prop :=
  ∀ n, P7867696715625720918.a n = A191110 (n + 1)

end A191110

/-! ## A191110.P17726674753809187356

`2*eq[A058281(n), A134024(n)]-1`
-/

namespace A191110.P17726674753809187356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A191110.P17726674753809187356

namespace A191110

/-- `2*eq[A058281(n), A134024(n)]-1` -/
def P17726674753809187356.Spec : Prop :=
  ∀ n, P17726674753809187356.a n = A191110 (n + 1)

end A191110

/-! ## A191110.P6911846618388825227

`A132141(A137951(n)+1)`
-/

namespace A191110.P6911846618388825227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (A137951 n + 1).toNat

end

end A191110.P6911846618388825227

namespace A191110

/-- `A132141(A137951(n)+1)` -/
def P6911846618388825227.Spec : Prop :=
  ∀ n, P6911846618388825227.a n = A191110 (n + 1)

end A191110

/-! ## A191110.P549602165720470758

`A132141(A147991(n+1))`
-/

namespace A191110.P549602165720470758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (A147991 (n + 1)).toNat

end

end A191110.P549602165720470758

namespace A191110

/-- `A132141(A147991(n+1))` -/
def P549602165720470758.Spec : Prop :=
  ∀ n, P549602165720470758.a n = A191110 (n + 1)

end A191110

/-! ## A191110.P15287218171250121035

`∩[A023692(n+1), A132141(n+1)]`
-/

namespace A191110.P15287218171250121035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191110.P15287218171250121035

namespace A191110

/-- `∩[A023692(n+1), A132141(n+1)]` -/
def P15287218171250121035.Spec : Prop :=
  ∀ n, (P15287218171250121035.a n : ℤ) = A191110 (n + 1)

end A191110

/-! ## A191110.P4450057437274627132

`A321464(A191106(n+1))`
-/

namespace A191110.P4450057437274627132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (A191106 (n + 1)).toNat

end

end A191110.P4450057437274627132

namespace A191110

/-- `A321464(A191106(n+1))` -/
def P4450057437274627132.Spec : Prop :=
  ∀ n, P4450057437274627132.a n = A191110 (n + 1)

end A191110

/-! ## A191110.P89939443359632085

`A259566(n+1)-A360415(A005836(n+1))`
-/

namespace A191110.P89939443359632085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259566 (n + 1) - A360415 (A005836 (n + 1)).toNat

end

end A191110.P89939443359632085

namespace A191110

/-- `A259566(n+1)-A360415(A005836(n+1))` -/
def P89939443359632085.Spec : Prop :=
  ∀ n, P89939443359632085.a n = A191110 (n + 1)

end A191110

/-! ## A191110.P4745917889064151780

`A308364(A191106(n+1)-A147991(n+1))+A147991(n+1)`
-/

namespace A191110.P4745917889064151780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 (A191106 (n + 1) - A147991 (n + 1)).toNat + A147991 (n + 1)

end

end A191110.P4745917889064151780

namespace A191110

/-- `A308364(A191106(n+1)-A147991(n+1))+A147991(n+1)` -/
def P4745917889064151780.Spec : Prop :=
  ∀ n, P4745917889064151780.a n = A191110 (n + 1)

end A191110

/-! ## A191110.P14547186227574096315

`A365459(A005823(n+2))`
-/

namespace A191110.P14547186227574096315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365459 (A005823 (n + 2)).toNat

end

end A191110.P14547186227574096315

namespace A191110

/-- `A365459(A005823(n+2))` -/
def P14547186227574096315.Spec : Prop :=
  ∀ n, P14547186227574096315.a n = A191110 (n + 1)

end A191110

/-! ## A191110.P11067541927370751275

`A117967(A274601(A005836(n+2)))`
-/

namespace A191110.P11067541927370751275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (A274601 (A005836 (n + 2)).toNat).toNat

end

end A191110.P11067541927370751275

namespace A191110

/-- `A117967(A274601(A005836(n+2)))` -/
def P11067541927370751275.Spec : Prop :=
  ∀ n, P11067541927370751275.a n = A191110 (n + 1)

end A191110

/-! ## A191110.P11951359822019562185

`A002517(a(n-1)+1)` with `a(0)=1`
-/

namespace A191110.P11951359822019562185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002517 (a (n - 1) + 1).toNat

end

end A191110.P11951359822019562185

namespace A191110

/-- `A002517(a(n-1)+1)` -/
def P11951359822019562185.Spec : Prop :=
  ∀ n, P11951359822019562185.a n = A191110 (n + 1)

end A191110

/-!
# A191112: First occurrence of the n-th odd prime in A190911.

The programs for A191112, there is no canonical definition to state claims against.
-/

/-! ## A191112.P9869932361858385675

`A167865(∑[∏[n+3]])`
-/

namespace A191112.P9869932361858385675
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191112.P9869932361858385675

/-!
# A191113: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-2 and 4x-2 are in a.

The programs for A191113, there is no canonical definition to state claims against.
-/

/-! ## A191113.P2785926626811442863

`ceil(A191114(n+1)/2)`
-/

namespace A191113.P2785926626811442863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191114 (n + 1) : ℚ) / 2⌉

end

end A191113.P2785926626811442863

/-! ## A191113.P3567954515107100995

`ceil(A191115(n+1)/3)`
-/

namespace A191113.P3567954515107100995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191115 (n + 1) : ℚ) / 3⌉

end

end A191113.P3567954515107100995

/-! ## A191113.P14100546892650886823

`(A191116(n+1)+3)/4`
-/

namespace A191113.P14100546892650886823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191116 (n + 1) + 3 : ℚ) / 4

end

end A191113.P14100546892650886823

/-! ## A191113.P1436192365660867571

`(A191117(n+1)+4)/5`
-/

namespace A191113.P1436192365660867571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191117 (n + 1) + 4 : ℚ) / 5

end

end A191113.P1436192365660867571

/-! ## A191113.P14484964730904455378

`((A191118(n+1)+1)/2+2)/3`
-/

namespace A191113.P14484964730904455378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A191118 (n + 1) + 1 : ℚ) / 2 + 2) / 3

end

end A191113.P14484964730904455378

/-! ## A191113.P2703615458873009028

`A191115(n+1)+1-A191114(n+1)`
-/

namespace A191113.P2703615458873009028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191115 (n + 1) + (1 - A191114 (n + 1))

end

end A191113.P2703615458873009028

/-! ## A191113.P6231713748065794641

`A191116(n+1)+1-A191115(n+1)`
-/

namespace A191113.P6231713748065794641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191116 (n + 1) + (1 - A191115 (n + 1))

end

end A191113.P6231713748065794641

/-! ## A191113.P9984125619168671118

`A191117(n+1)+1-A191116(n+1)`
-/

namespace A191113.P9984125619168671118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191117 (n + 1) + (1 - A191116 (n + 1))

end

end A191113.P9984125619168671118

/-! ## A191113.P231633496728309899

`A191118(n+1)+1-A191117(n+1)`
-/

namespace A191113.P231633496728309899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191118 (n + 1) + (1 - A191117 (n + 1))

end

end A191113.P231633496728309899

/-! ## A191113.P9595635626087903451

`2*A191115(n+1)-A191117(n+1)`
-/

namespace A191113.P9595635626087903451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191115 (n + 1) - A191117 (n + 1)

end

end A191113.P9595635626087903451

/-! ## A191113.P3146983162684508079

`A000463(A191114(n+1))`
-/

namespace A191113.P3146983162684508079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191114 (n + 1)).toNat

end

end A191113.P3146983162684508079

/-! ## A191113.P7390034398379740039

`A025480(A191114(n+1)+1)`
-/

namespace A191113.P7390034398379740039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A191114 (n + 1) + 1).toNat

end

end A191113.P7390034398379740039

/-! ## A191113.P8192299284680494905

`A001651(A191114(n+1)+1)-A191114(n+1)`
-/

namespace A191113.P8192299284680494905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A191114 (n + 1) + 1).toNat - A191114 (n + 1)

end

end A191113.P8192299284680494905

/-! ## A191113.P14003745257427967078

`A008620(A191115(n+1))`
-/

namespace A191113.P14003745257427967078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A191115 (n + 1)).toNat

end

end A191113.P14003745257427967078

/-! ## A191113.P5790313351772766257

`A008620((A191118(n+1)+1)/2)`
-/

namespace A191113.P5790313351772766257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (SequenceMachineLib.roundAway ((A191118 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A191113.P5790313351772766257

/-! ## A191113.P16074569145786637948

`A004396(A191115(n+1)+2)/2`
-/

namespace A191113.P16074569145786637948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004396 (A191115 (n + 1) + 2).toNat : ℚ) / 2

end

end A191113.P16074569145786637948

/-! ## A191113.P17230710931914374123

`A004773(A191115(n+1)+1)-A191115(n+1)`
-/

namespace A191113.P17230710931914374123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A191115 (n + 1) + 1).toNat - A191115 (n + 1)

end

end A191113.P17230710931914374123

/-! ## A191113.P7921250024842659501

`A191115(n+1)-A004396(A191115(n+1)-1)`
-/

namespace A191113.P7921250024842659501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191115 (n + 1) - A004396 (A191115 (n + 1) - 1).toNat

end

end A191113.P7921250024842659501

/-! ## A191113.P15571680531862783415

`A008621(A191116(n+1))`
-/

namespace A191113.P15571680531862783415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A191116 (n + 1)).toNat

end

end A191113.P15571680531862783415

/-! ## A191113.P7919871553650306142

`A008621(2*A191114(n+1))`
-/

namespace A191113.P7919871553650306142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A191114 (n + 1)).toNat

end

end A191113.P7919871553650306142

/-!
# A191114: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-2 and 4x-1 are in a.

The programs for A191114, there is no canonical definition to state claims against.
-/

/-! ## A191114.P3848520806298286745

`ceil(A191116(n+1)/2)`
-/

namespace A191114.P3848520806298286745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191116 (n + 1) : ℚ) / 2⌉

end

end A191114.P3848520806298286745

/-! ## A191114.P10116391235325019796

`ceil(A191118(n+1)/3)`
-/

namespace A191114.P10116391235325019796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191118 (n + 1) : ℚ) / 3⌉

end

end A191114.P10116391235325019796

/-! ## A191114.P751449941674267268

`2*A191113(n+1)-1`
-/

namespace A191114.P751449941674267268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191113 (n + 1) - 1

end

end A191114.P751449941674267268

/-! ## A191114.P15889423318239468588

`A191115(n+1)+1-A191113(n+1)`
-/

namespace A191114.P15889423318239468588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191115 (n + 1) + (1 - A191113 (n + 1))

end

end A191114.P15889423318239468588

/-! ## A191114.P9593153447360045839

`A191117(n+1)+1-A191115(n+1)`
-/

namespace A191114.P9593153447360045839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191117 (n + 1) + (1 - A191115 (n + 1))

end

end A191114.P9593153447360045839

/-! ## A191114.P18053413836322515004

`A191118(n+1)+1-A191116(n+1)`
-/

namespace A191114.P18053413836322515004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191118 (n + 1) + (1 - A191116 (n + 1))

end

end A191114.P18053413836322515004

/-! ## A191114.P13830326571710900742

`2*A191115(n+1)-A191116(n+1)`
-/

namespace A191114.P13830326571710900742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191115 (n + 1) - A191116 (n + 1)

end

end A191114.P13830326571710900742

/-! ## A191114.P5351436412775296476

`A191113(n+1)+A191117(n+1)-A191116(n+1)`
-/

namespace A191114.P5351436412775296476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191113 (n + 1) + (A191117 (n + 1) - A191116 (n + 1))

end

end A191114.P5351436412775296476

/-! ## A191114.P1437736173587579012

`A191113(n+1)+A191118(n+1)-A191117(n+1)`
-/

namespace A191114.P1437736173587579012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191113 (n + 1) + (A191118 (n + 1) - A191117 (n + 1))

end

end A191114.P1437736173587579012

/-! ## A191114.P15560528942423128836

`∩[A191151(n+1), A191166(n+1)]`
-/

namespace A191114.P15560528942423128836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191114.P15560528942423128836

/-! ## A191114.P10267429156282309124

`A004273(A191113(n+1))`
-/

namespace A191114.P10267429156282309124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191113 (n + 1)).toNat

end

end A191114.P10267429156282309124

/-! ## A191114.P17157683182871038622

`A014681(2*A191113(n+1))`
-/

namespace A191114.P17157683182871038622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A191113 (n + 1)).toNat

end

end A191114.P17157683182871038622

/-! ## A191114.P13685581747624990632

`A004396(A191115(n+1))`
-/

namespace A191114.P13685581747624990632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A191115 (n + 1)).toNat

end

end A191114.P13685581747624990632

/-! ## A191114.P17736906017592765604

`A004396((A191118(n+1)+1)/2)`
-/

namespace A191114.P17736906017592765604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.roundAway ((A191118 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A191114.P17736906017592765604

/-! ## A191114.P16116286863302765182

`A004773(A191115(n+1)+1)/2`
-/

namespace A191114.P16116286863302765182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004773 (A191115 (n + 1) + 1).toNat : ℚ) / 2

end

end A191114.P16116286863302765182

/-! ## A191114.P2368705062065849152

`A032793(A191115(n+1)+1)-A191115(n+1)`
-/

namespace A191114.P2368705062065849152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (A191115 (n + 1) + 1).toNat - A191115 (n + 1)

end

end A191114.P2368705062065849152

/-! ## A191114.P1314217082918065879

`A000463(A191116(n+1))`
-/

namespace A191114.P1314217082918065879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191116 (n + 1)).toNat

end

end A191114.P1314217082918065879

/-! ## A191114.P6387172959726294727

`A025480(A191116(n+1)+1)`
-/

namespace A191114.P6387172959726294727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A191116 (n + 1) + 1).toNat

end

end A191114.P6387172959726294727

/-! ## A191114.P3678389786269809730

`A001651(A191116(n+1)+1)-A191116(n+1)`
-/

namespace A191114.P3678389786269809730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A191116 (n + 1) + 1).toNat - A191116 (n + 1)

end

end A191114.P3678389786269809730

/-!
# A191115: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-2 and 4x are in a.

The programs for A191115, there is no canonical definition to state claims against.
-/

/-! ## A191115.P1953986400047906129

`ceil(A191118(n+1)/2)`
-/

namespace A191115.P1953986400047906129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191118 (n + 1) : ℚ) / 2⌉

end

end A191115.P1953986400047906129

/-! ## A191115.P2568379035494698579

`3*A191113(n+1)-2`
-/

namespace A191115.P2568379035494698579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191113 (n + 1) - 2

end

end A191115.P2568379035494698579

/-! ## A191115.P6244932651482374321

`3*(A191114(n+1)+1)/2-2`
-/

namespace A191115.P6244932651482374321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A191114 (n + 1) + 1 : ℚ) / 2) - 2

end

end A191115.P6244932651482374321

/-! ## A191115.P1254962423683780724

`A191113(n+1)+A191114(n+1)-1`
-/

namespace A191115.P1254962423683780724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191113 (n + 1) + (A191114 (n + 1) - 1)

end

end A191115.P1254962423683780724

/-! ## A191115.P13626074975847459795

`A191116(n+1)+1-A191113(n+1)`
-/

namespace A191115.P13626074975847459795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191116 (n + 1) + (1 - A191113 (n + 1))

end

end A191115.P13626074975847459795

/-! ## A191115.P14765113599221080733

`A191117(n+1)+1-A191114(n+1)`
-/

namespace A191115.P14765113599221080733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191117 (n + 1) + (1 - A191114 (n + 1))

end

end A191115.P14765113599221080733

/-! ## A191115.P15755160526670520165

`2*A191116(n+1)-A191117(n+1)`
-/

namespace A191115.P15755160526670520165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191116 (n + 1) - A191117 (n + 1)

end

end A191115.P15755160526670520165

/-! ## A191115.P16504427524740124801

`(A191116(n+1)+A191114(n+1))/2`
-/

namespace A191115.P16504427524740124801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191116 (n + 1) + A191114 (n + 1) : ℚ) / 2

end

end A191115.P16504427524740124801

/-! ## A191115.P12761979075236446601

`(A191117(n+1)+A191113(n+1))/2`
-/

namespace A191115.P12761979075236446601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191117 (n + 1) + A191113 (n + 1) : ℚ) / 2

end

end A191115.P12761979075236446601

/-! ## A191115.P12844210564074345416

`A191116(n+1)+A191117(n+1)-A191118(n+1)`
-/

namespace A191115.P12844210564074345416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191116 (n + 1) + (A191117 (n + 1) - A191118 (n + 1))

end

end A191115.P12844210564074345416

/-! ## A191115.P5858853058452690980

`∩[A191149(n+1), A191154(n+1)]`
-/

namespace A191115.P5858853058452690980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191115.P5858853058452690980

/-! ## A191115.P16625710273303097137

`A001651(A191114(n+1))`
-/

namespace A191115.P16625710273303097137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A191114 (n + 1)).toNat

end

end A191115.P16625710273303097137

/-! ## A191115.P13279842071304826567

`A047237(2*A191113(n+1))`
-/

namespace A191115.P13279842071304826567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (2 * A191113 (n + 1)).toNat

end

end A191115.P13279842071304826567

/-! ## A191115.P14383995302508855292

`A074306(A191114(n+1)-1)+1`
-/

namespace A191115.P14383995302508855292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (A191114 (n + 1) - 1).toNat + 1

end

end A191115.P14383995302508855292

/-! ## A191115.P5869177128527182494

`A001651((A191116(n+1)+1)/2)`
-/

namespace A191115.P5869177128527182494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (SequenceMachineLib.roundAway ((A191116 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A191115.P5869177128527182494

/-! ## A191115.P3624566516470772819

`A191114(n+1)+A025480(A191114(n+1)-1)`
-/

namespace A191115.P3624566516470772819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191114 (n + 1) + A025480 (A191114 (n + 1) - 1).toNat

end

end A191115.P3624566516470772819

/-! ## A191115.P6707283713219342951

`A026178(A191113(n+1)+A191113(n+1)-1)`
-/

namespace A191115.P6707283713219342951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026178 (A191113 (n + 1) + (A191113 (n + 1) - 1)).toNat

end

end A191115.P6707283713219342951

/-! ## A191115.P13929035161665508677

`A006368(A191116(n+1))`
-/

namespace A191115.P13929035161665508677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A191116 (n + 1)).toNat

end

end A191115.P13929035161665508677

/-! ## A191115.P9722598003250473123

`A187321(2*A191114(n+1))`
-/

namespace A191115.P9722598003250473123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 (2 * A191114 (n + 1)).toNat

end

end A191115.P9722598003250473123

/-! ## A191115.P3092834413579593662

`A074306(2*A191114(n+1)+1)`
-/

namespace A191115.P3092834413579593662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (2 * A191114 (n + 1) + 1).toNat

end

end A191115.P3092834413579593662

/-!
# A191116: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-2 and 4x+1 are in a.

The programs for A191116, there is no canonical definition to state claims against.
-/

/-! ## A191116.P14453054610106475742

`2*A191114(n+1)-1`
-/

namespace A191116.P14453054610106475742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191114 (n + 1) - 1

end

end A191116.P14453054610106475742

/-! ## A191116.P4609750089344568375

`4*A191113(n+1)-3`
-/

namespace A191116.P4609750089344568375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A191113 (n + 1) - 3

end

end A191116.P4609750089344568375

/-! ## A191116.P4431704873163422179

`A191113(n+1)+A191115(n+1)-1`
-/

namespace A191116.P4431704873163422179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191113 (n + 1) + (A191115 (n + 1) - 1)

end

end A191116.P4431704873163422179

/-! ## A191116.P6985493237327938638

`A191117(n+1)+1-A191113(n+1)`
-/

namespace A191116.P6985493237327938638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191117 (n + 1) + (1 - A191113 (n + 1))

end

end A191116.P6985493237327938638

/-! ## A191116.P11449148106040418032

`A191118(n+1)+1-A191114(n+1)`
-/

namespace A191116.P11449148106040418032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191118 (n + 1) + (1 - A191114 (n + 1))

end

end A191116.P11449148106040418032

/-! ## A191116.P18039323353734996960

`2*A191117(n+1)-A191118(n+1)`
-/

namespace A191116.P18039323353734996960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191117 (n + 1) - A191118 (n + 1)

end

end A191116.P18039323353734996960

/-! ## A191116.P10112765723495767435

`(A191117(n+1)+A191115(n+1))/2`
-/

namespace A191116.P10112765723495767435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191117 (n + 1) + A191115 (n + 1) : ℚ) / 2

end

end A191116.P10112765723495767435

/-! ## A191116.P17783948567256803374

`A191114(n+1)+A191117(n+1)-A191115(n+1)`
-/

namespace A191116.P17783948567256803374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191114 (n + 1) + (A191117 (n + 1) - A191115 (n + 1))

end

end A191116.P17783948567256803374

/-! ## A191116.P13644227500261087790

`A191115(n+1)+A191118(n+1)-A191117(n+1)`
-/

namespace A191116.P13644227500261087790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191115 (n + 1) + (A191118 (n + 1) - A191117 (n + 1))

end

end A191116.P13644227500261087790

/-! ## A191116.P11218650616824877928

`∩[A191155(n+1), A191182(n+1)]`
-/

namespace A191116.P11218650616824877928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191116.P11218650616824877928

/-! ## A191116.P10782643214549929176

`A004767(A191113(n+1))-6`
-/

namespace A191116.P10782643214549929176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A191113 (n + 1)).toNat - 6

end

end A191116.P10782643214549929176

/-! ## A191116.P15016936289596302867

`A004273(A191114(n+1))`
-/

namespace A191116.P15016936289596302867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191114 (n + 1)).toNat

end

end A191116.P15016936289596302867

/-! ## A191116.P16308958989206723724

`A004273(A191113(n+1)+A191113(n+1)-1)`
-/

namespace A191116.P16308958989206723724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191113 (n + 1) + (A191113 (n + 1) - 1)).toNat

end

end A191116.P16308958989206723724

/-! ## A191116.P7689312587969533111

`A004773(A191115(n+1))`
-/

namespace A191116.P7689312587969533111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A191115 (n + 1)).toNat

end

end A191116.P7689312587969533111

/-! ## A191116.P3504247100909345946

`A191115(n+1)+A002264(A191115(n+1)+1)`
-/

namespace A191116.P3504247100909345946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191115 (n + 1) + A002264 (A191115 (n + 1) + 1).toNat

end

end A191116.P3504247100909345946

/-! ## A191116.P8057203343334033917

`A191114(n+1)+A004524(2*A191114(n+1))`
-/

namespace A191116.P8057203343334033917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191114 (n + 1) + A004524 (2 * A191114 (n + 1)).toNat

end

end A191116.P8057203343334033917

/-!
# A191117: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-2 and 4x+2 are in a.

The programs for A191117, there is no canonical definition to state claims against.
-/

/-! ## A191117.P8790986316297008752

`5*A191113(n+1)-4`
-/

namespace A191117.P8790986316297008752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A191113 (n + 1) - 4

end

end A191117.P8790986316297008752

/-! ## A191117.P7563963597818581441

`5*(A191114(n+1)+1)/2-4`
-/

namespace A191117.P7563963597818581441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((A191114 (n + 1) + 1 : ℚ) / 2) - 4

end

end A191117.P7563963597818581441

/-! ## A191117.P15938718383588186065

`A191113(n+1)+A191116(n+1)-1`
-/

namespace A191117.P15938718383588186065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191113 (n + 1) + (A191116 (n + 1) - 1)

end

end A191117.P15938718383588186065

/-! ## A191117.P6308834404544355550

`A191114(n+1)+A191115(n+1)-1`
-/

namespace A191117.P6308834404544355550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191114 (n + 1) + (A191115 (n + 1) - 1)

end

end A191117.P6308834404544355550

/-! ## A191117.P5866027303783371588

`A191118(n+1)+1-A191113(n+1)`
-/

namespace A191117.P5866027303783371588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191118 (n + 1) + (1 - A191113 (n + 1))

end

end A191117.P5866027303783371588

/-! ## A191117.P5304988565098629042

`2*A191116(n+1)-A191115(n+1)`
-/

namespace A191117.P5304988565098629042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191116 (n + 1) - A191115 (n + 1)

end

end A191117.P5304988565098629042

/-! ## A191117.P10773414273028906278

`(A191118(n+1)+A191116(n+1))/2`
-/

namespace A191117.P10773414273028906278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191118 (n + 1) + A191116 (n + 1) : ℚ) / 2

end

end A191117.P10773414273028906278

/-! ## A191117.P12208151000036280432

`A191115(n+1)+A191115(n+1)-A191113(n+1)`
-/

namespace A191117.P12208151000036280432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191115 (n + 1) + (A191115 (n + 1) - A191113 (n + 1))

end

end A191117.P12208151000036280432

/-! ## A191117.P8142454806446384016

`A191115(n+1)+A191118(n+1)-A191116(n+1)`
-/

namespace A191117.P8142454806446384016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191115 (n + 1) + (A191118 (n + 1) - A191116 (n + 1))

end

end A191117.P8142454806446384016

/-! ## A191117.P9400042224553313293

`A047209(A191114(n+1))`
-/

namespace A191117.P9400042224553313293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (A191114 (n + 1)).toNat

end

end A191117.P9400042224553313293

/-! ## A191117.P10186850524026467956

`A191114(n+1)+A074306(A191114(n+1)-1)`
-/

namespace A191117.P10186850524026467956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191114 (n + 1) + A074306 (A191114 (n + 1) - 1).toNat

end

end A191117.P10186850524026467956

/-! ## A191117.P10812451613330720161

`A032793(A191115(n+1))`
-/

namespace A191117.P10812451613330720161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (A191115 (n + 1)).toNat

end

end A191117.P10812451613330720161

/-! ## A191117.P16112896957545200739

`A191115(n+1)+A004396(A191115(n+1)-1)`
-/

namespace A191117.P16112896957545200739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191115 (n + 1) + A004396 (A191115 (n + 1) - 1).toNat

end

end A191117.P16112896957545200739

/-! ## A191117.P1663949373570179010

`A001068(A191116(n+1))`
-/

namespace A191117.P1663949373570179010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A191116 (n + 1)).toNat

end

end A191117.P1663949373570179010

/-!
# A191118: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-2 and 4x+3 are in a.

The programs for A191118, there is no canonical definition to state claims against.
-/

/-! ## A191118.P13735925086983338850

`2*A191115(n+1)-1`
-/

namespace A191118.P13735925086983338850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191115 (n + 1) - 1

end

end A191118.P13735925086983338850

/-! ## A191118.P3563936618251539265

`3*A191114(n+1)-2`
-/

namespace A191118.P3563936618251539265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191114 (n + 1) - 2

end

end A191118.P3563936618251539265

/-! ## A191118.P13729775134285167218

`2*(3*A191113(n+1)-2)-1`
-/

namespace A191118.P13729775134285167218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A191113 (n + 1) - 2) - 1

end

end A191118.P13729775134285167218

/-! ## A191118.P9280781675590875029

`A191113(n+1)+A191117(n+1)-1`
-/

namespace A191118.P9280781675590875029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191113 (n + 1) + (A191117 (n + 1) - 1)

end

end A191118.P9280781675590875029

/-! ## A191118.P855827545427806748

`A191114(n+1)+A191116(n+1)-1`
-/

namespace A191118.P855827545427806748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191114 (n + 1) + (A191116 (n + 1) - 1)

end

end A191118.P855827545427806748

/-! ## A191118.P964479774847917258

`2*A191117(n+1)-A191116(n+1)`
-/

namespace A191118.P964479774847917258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191117 (n + 1) - A191116 (n + 1)

end

end A191118.P964479774847917258

/-! ## A191118.P17244029035144165446

`A191115(n+1)+A191116(n+1)-A191113(n+1)`
-/

namespace A191118.P17244029035144165446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191115 (n + 1) + (A191116 (n + 1) - A191113 (n + 1))

end

end A191118.P17244029035144165446

/-! ## A191118.P4433201488534392687

`A191115(n+1)+A191117(n+1)-A191114(n+1)`
-/

namespace A191118.P4433201488534392687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191115 (n + 1) + (A191117 (n + 1) - A191114 (n + 1))

end

end A191118.P4433201488534392687

/-! ## A191118.P13008266614323019801

`A191116(n+1)+A191117(n+1)-A191115(n+1)`
-/

namespace A191118.P13008266614323019801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191116 (n + 1) + (A191117 (n + 1) - A191115 (n + 1))

end

end A191118.P13008266614323019801

/-! ## A191118.P11939449814501043113

`∩[A191121(n+1), A191138(n+1)]`
-/

namespace A191118.P11939449814501043113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191118.P11939449814501043113

/-! ## A191118.P3157820470719978991

`∩[A191114(n+1), A191200(n+1)]`
-/

namespace A191118.P3157820470719978991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191118.P3157820470719978991

/-! ## A191118.P14495913764715046560

`∩[A191151(n+1), A191200(n+1)]`
-/

namespace A191118.P14495913764715046560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191118.P14495913764715046560

/-! ## A191118.P5166007654600969811

`∩[A191121(n+1)-1, A191151(n+1)]`
-/

namespace A191118.P5166007654600969811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191121 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191118.P5166007654600969811

/-! ## A191118.P4145558165762943347

`∩[A191138(n+1), A191167(n+1)]`
-/

namespace A191118.P4145558165762943347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191118.P4145558165762943347

/-! ## A191118.P9416794986341786492

`A007310(A191114(n+1))`
-/

namespace A191118.P9416794986341786492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A191114 (n + 1)).toNat

end

end A191118.P9416794986341786492

/-! ## A191118.P11644882972626374637

`A191114(n+1)+A042948(A191114(n+1)-1)`
-/

namespace A191118.P11644882972626374637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191114 (n + 1) + A042948 (A191114 (n + 1) - 1).toNat

end

end A191118.P11644882972626374637

/-! ## A191118.P14607005743092770734

`A004273(A191115(n+1))`
-/

namespace A191118.P14607005743092770734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191115 (n + 1)).toNat

end

end A191118.P14607005743092770734

/-! ## A191118.P13099049220826414044

`A001651(A191116(n+1))`
-/

namespace A191118.P13099049220826414044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A191116 (n + 1)).toNat

end

end A191118.P13099049220826414044

/-! ## A191118.P9740253893560538442

`A006368(A191116(n+1)-1)+1`
-/

namespace A191118.P9740253893560538442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A191116 (n + 1) - 1).toNat + 1

end

end A191118.P9740253893560538442

/-! ## A191118.P849884470941367596

`A001651(A191114(n+1)+A191114(n+1)-1)`
-/

namespace A191118.P849884470941367596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A191114 (n + 1) + (A191114 (n + 1) - 1)).toNat

end

end A191118.P849884470941367596

/-!
# A191119: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-1 and 4x-3 are in a.

The programs for A191119, there is no canonical definition to state claims against.
-/

/-! ## A191119.P15423252753150934300

`ceil(A191126(n+1)/2)`
-/

namespace A191119.P15423252753150934300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191126 (n + 1) : ℚ) / 2⌉

end

end A191119.P15423252753150934300

/-! ## A191119.P9992138803294170960

`ceil(A191132(n+1)/3)`
-/

namespace A191119.P9992138803294170960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191132 (n + 1) : ℚ) / 3⌉

end

end A191119.P9992138803294170960

/-! ## A191119.P9635340663415155386

`(A191139(n+1)+3)/4`
-/

namespace A191119.P9635340663415155386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191139 (n + 1) + 3 : ℚ) / 4

end

end A191119.P9635340663415155386

/-! ## A191119.P7489162759335586198

`(round(A191132(n+1)/3)+1)%A016937(n)`
-/

namespace A191119.P7489162759335586198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A191132 (n + 1) : ℚ) / 3) + 1) (A016937 n)

end

end A191119.P7489162759335586198

/-! ## A191119.P4122557292042514123

`A191135(n)+a(A154269(A004758(n)))` with `a(0)=1`
-/

namespace A191119.P4122557292042514123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A191135 n + a (A154269 (A004758 n).toNat).toNat

end

end A191119.P4122557292042514123

/-! ## A191119.P10684141506639126990

`∩[A191120(n+1), A191163(n+1)]`
-/

namespace A191119.P10684141506639126990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191119.P10684141506639126990

/-! ## A191119.P16397633303589983181

`∩[A191163(n+1), A191229(n+1)]`
-/

namespace A191119.P16397633303589983181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191119.P16397633303589983181

/-! ## A191119.P14024192130591000189

`∩[A191163(n+1), A191165(n+1)]`
-/

namespace A191119.P14024192130591000189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191119.P14024192130591000189

/-! ## A191119.P7538871543432621370

`A014963(A236928(n))+floor(A191132(n+1)/3)`
-/

namespace A191119.P7538871543432621370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A236928 n).toNat + ⌊(A191132 (n + 1) : ℚ) / 3⌋

end

end A191119.P7538871543432621370

/-! ## A191119.P16994090382604197617

`∩[A190803(n+1), A191163(n+1)]`
-/

namespace A191119.P16994090382604197617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191119.P16994090382604197617

/-! ## A191119.P13857754902661331165

`∩[A190841(n+1), A191163(n+1)]`
-/

namespace A191119.P13857754902661331165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191119.P13857754902661331165

/-! ## A191119.P11325107749119129393

`A014682(A191126(n+1)+1)`
-/

namespace A191119.P11325107749119129393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191126 (n + 1) + 1).toNat

end

end A191119.P11325107749119129393

/-! ## A191119.P8656552746727657909

`A038572(A191126(n+1)-1)+1`
-/

namespace A191119.P8656552746727657909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A191126 (n + 1) - 1).toNat + 1

end

end A191119.P8656552746727657909

/-! ## A191119.P7488903756933131032

`A038572(A191126(n+1)+1)`
-/

namespace A191119.P7488903756933131032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A191126 (n + 1) + 1).toNat

end

end A191119.P7488903756933131032

/-!
# A191120: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-1 and 4x-2 are in a.

The programs for A191120, there is no canonical definition to state claims against.
-/

/-! ## A191120.P12928737191479069751

`ceil(A191128(n+1)/2)`
-/

namespace A191120.P12928737191479069751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191128 (n + 1) : ℚ) / 2⌉

end

end A191120.P12928737191479069751

/-! ## A191120.P3607552654252538322

`ceil(A191135(n+1)/3)`
-/

namespace A191120.P3607552654252538322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191135 (n + 1) : ℚ) / 3⌉

end

end A191120.P3607552654252538322

/-! ## A191120.P8140404449840517573

`(A191143(n+1)+3)/4`
-/

namespace A191120.P8140404449840517573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191143 (n + 1) + 3 : ℚ) / 4

end

end A191120.P8140404449840517573

/-! ## A191120.P15668741549781821833

`A191143(n+1)+1-A191135(n+1)`
-/

namespace A191120.P15668741549781821833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191143 (n + 1) + (1 - A191135 (n + 1))

end

end A191120.P15668741549781821833

/-! ## A191120.P1694094160465204126

`(A191119(n+2)+1)/3`
-/

namespace A191120.P1694094160465204126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191119 (n + 2) + 1 : ℚ) / 3

end

end A191120.P1694094160465204126

/-! ## A191120.P18194179052202911480

`(A191126(n+2)/3+1)/2`
-/

namespace A191120.P18194179052202911480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A191126 (n + 2) : ℚ) / 3 + 1) / 2

end

end A191120.P18194179052202911480

/-! ## A191120.P4363014619478216070

`ceil(floor(A191132(n+2)/3)/3)`
-/

namespace A191120.P4363014619478216070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(A191132 (n + 2) : ℚ) / 3⌋ : ℚ) / 3⌉

end

end A191120.P4363014619478216070

/-! ## A191120.P1309023551047941927

`A191119(n+2)-A191128(n+1)`
-/

namespace A191120.P1309023551047941927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191119 (n + 2) - A191128 (n + 1)

end

end A191120.P1309023551047941927

/-! ## A191120.P3865048528929309017

`∩[A191165(n+1), A191229(n+1)]`
-/

namespace A191120.P3865048528929309017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191120.P3865048528929309017

/-! ## A191120.P488768446512352136

`∩[A191165(n+1), A191179(n+1)]`
-/

namespace A191120.P488768446512352136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191120.P488768446512352136

/-! ## A191120.P1862907896370271910

`A000463(A191128(n+1))`
-/

namespace A191120.P1862907896370271910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191128 (n + 1)).toNat

end

end A191120.P1862907896370271910

/-! ## A191120.P12565378257715689902

`A025480(A191128(n+1)+1)`
-/

namespace A191120.P12565378257715689902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A191128 (n + 1) + 1).toNat

end

end A191120.P12565378257715689902

/-! ## A191120.P4042983363835313739

`A032742(A191128(n+1)+1)`
-/

namespace A191120.P4042983363835313739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191128 (n + 1) + 1).toNat

end

end A191120.P4042983363835313739

/-! ## A191120.P12331428739512211178

`A078898(A191128(n+1)+1)`
-/

namespace A191120.P12331428739512211178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A191128 (n + 1) + 1).toNat

end

end A191120.P12331428739512211178

/-! ## A191120.P16679738731920472548

`A001651(A191128(n+1)+1)-A191128(n+1)`
-/

namespace A191120.P16679738731920472548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A191128 (n + 1) + 1).toNat - A191128 (n + 1)

end

end A191120.P16679738731920472548

/-! ## A191120.P18125905642521033417

`A008620(A191135(n+1))`
-/

namespace A191120.P18125905642521033417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A191135 (n + 1)).toNat

end

end A191120.P18125905642521033417

/-! ## A191120.P4970669232859412947

`A191135(n+1)-A004396(A191135(n+1)-1)`
-/

namespace A191120.P4970669232859412947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191135 (n + 1) - A004396 (A191135 (n + 1) - 1).toNat

end

end A191120.P4970669232859412947

/-! ## A191120.P7083198682396988779

`A008611(A191119(n+2))`
-/

namespace A191120.P7083198682396988779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A191119 (n + 2)).toNat

end

end A191120.P7083198682396988779

/-! ## A191120.P2660420318458437999

`A004396(A191135(n+1)+2)/2`
-/

namespace A191120.P2660420318458437999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004396 (A191135 (n + 1) + 2).toNat : ℚ) / 2

end

end A191120.P2660420318458437999

/-! ## A191120.P1748524960560552629

`A004773(A191135(n+1)+1)-A191135(n+1)`
-/

namespace A191120.P1748524960560552629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A191135 (n + 1) + 1).toNat - A191135 (n + 1)

end

end A191120.P1748524960560552629

/-!
# A191121: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-1 and 4x-1 are in a.

The programs for A191121, there is no canonical definition to state claims against.
-/

/-! ## A191121.P14770794844334079617

`ceil(A191129(n+1)/2)`
-/

namespace A191121.P14770794844334079617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191129 (n + 1) : ℚ) / 2⌉

end

end A191121.P14770794844334079617

/-! ## A191121.P4626860059153101924

`ceil(A191138(n+1)/3)`
-/

namespace A191121.P4626860059153101924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191138 (n + 1) : ℚ) / 3⌉

end

end A191121.P4626860059153101924

/-! ## A191121.P13632016101853623608

`A191113(n+2)/2`
-/

namespace A191121.P13632016101853623608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191113 (n + 2) : ℚ) / 2

end

end A191121.P13632016101853623608

/-! ## A191121.P10755830117956609218

`(A191117(n+2)/2+2)/5`
-/

namespace A191121.P10755830117956609218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A191117 (n + 2) : ℚ) / 2 + 2) / 5

end

end A191121.P10755830117956609218

/-! ## A191121.P17883821042888157189

`A191114(n+2)-A191115(n+2)/2`
-/

namespace A191121.P17883821042888157189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191114 (n + 2) : ℚ) - (A191115 (n + 2) : ℚ) / 2

end

end A191121.P17883821042888157189

/-! ## A191121.P17131175599145761571

`A191115(n+2)-(A191138(n+1)+A191113(n+2))`
-/

namespace A191121.P17131175599145761571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191115 (n + 2) - (A191138 (n + 1) + A191113 (n + 2))

end

end A191121.P17131175599145761571

/-! ## A191121.P17546750555538467290

`A191116(n+2)-(A191138(n+1)+A191114(n+2))`
-/

namespace A191121.P17546750555538467290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191116 (n + 2) - (A191138 (n + 1) + A191114 (n + 2))

end

end A191121.P17546750555538467290

/-! ## A191121.P7444053996797911484

`A000463(A191129(n+1))`
-/

namespace A191121.P7444053996797911484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191129 (n + 1)).toNat

end

end A191121.P7444053996797911484

/-! ## A191121.P16365359787186873497

`A001281(A191113(n+2))`
-/

namespace A191121.P16365359787186873497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A191113 (n + 2)).toNat

end

end A191121.P16365359787186873497

/-! ## A191121.P13125201237923286008

`A004525(A191129(n+1)+1)`
-/

namespace A191121.P13125201237923286008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A191129 (n + 1) + 1).toNat

end

end A191121.P13125201237923286008

/-! ## A191121.P2273865438726445646

`A025480(A191129(n+1)+1)`
-/

namespace A191121.P2273865438726445646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A191129 (n + 1) + 1).toNat

end

end A191121.P2273865438726445646

/-! ## A191121.P12054776494864210745

`A032742(A191129(n+1)+1)`
-/

namespace A191121.P12054776494864210745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191129 (n + 1) + 1).toNat

end

end A191121.P12054776494864210745

/-! ## A191121.P7393490966103701633

`A078898(A191129(n+1)+1)`
-/

namespace A191121.P7393490966103701633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A191129 (n + 1) + 1).toNat

end

end A191121.P7393490966103701633

/-! ## A191121.P14453804153145885451

`A004524(A191129(n+1)+2)`
-/

namespace A191121.P14453804153145885451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A191129 (n + 1) + 2).toNat

end

end A191121.P14453804153145885451

/-! ## A191121.P2608794846041509207

`A003602(A191113(n+2)-1)`
-/

namespace A191121.P2608794846041509207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A191113 (n + 2) - 1).toNat

end

end A191121.P2608794846041509207

/-! ## A191121.P11321880518754222130

`A130747(A191113(n+2)-1)`
-/

namespace A191121.P11321880518754222130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (A191113 (n + 2) - 1).toNat

end

end A191121.P11321880518754222130

/-! ## A191121.P13024364095904653401

`A001651(A191129(n+1)+1)-A191129(n+1)`
-/

namespace A191121.P13024364095904653401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A191129 (n + 1) + 1).toNat - A191129 (n + 1)

end

end A191121.P13024364095904653401

/-! ## A191121.P5064737769517926455

`A008620(A191138(n+1))`
-/

namespace A191121.P5064737769517926455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A191138 (n + 1)).toNat

end

end A191121.P5064737769517926455

/-! ## A191121.P2536670130632399982

`A008620(A191115(n+2)/2)`
-/

namespace A191121.P2536670130632399982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (SequenceMachineLib.roundAway ((A191115 (n + 2) : ℚ) / 2)).toNat

end

end A191121.P2536670130632399982

/-! ## A191121.P2205517299325138018

`A004396(A191138(n+1)+2)/2`
-/

namespace A191121.P2205517299325138018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004396 (A191138 (n + 1) + 2).toNat : ℚ) / 2

end

end A191121.P2205517299325138018

/-!
# A191122: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-1 and 4x are in a.

The programs for A191122, there is no canonical definition to state claims against.
-/

/-! ## A191122.P16230395541161273698

`ceil(A191131(n+1)/2)`
-/

namespace A191122.P16230395541161273698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191131 (n + 1) : ℚ) / 2⌉

end

end A191122.P16230395541161273698

/-! ## A191122.P11499650554344400121

`∩[A191169(n+1), A191174(n+1)]`
-/

namespace A191122.P11499650554344400121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191122.P11499650554344400121

/-! ## A191122.P12930133581392256767

`(A191131(A289439(2*(n+1)))+1)/2`
-/

namespace A191122.P12930133581392256767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191131 (A289439 (2 * (n + 1))).toNat + 1 : ℚ) / 2

end

end A191122.P12930133581392256767

/-! ## A191122.P726117583966357201

`A273943(A191131(n+1)+1)`
-/

namespace A191122.P726117583966357201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A191131 (n + 1) + 1).toNat

end

end A191122.P726117583966357201

/-! ## A191122.P13755962781935897433

`A014682(A191131(n+1)+1)`
-/

namespace A191122.P13755962781935897433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191131 (n + 1) + 1).toNat

end

end A191122.P13755962781935897433

/-! ## A191122.P8473420274053922754

`A326139(A191131(n+1)+1)`
-/

namespace A191122.P8473420274053922754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A191131 (n + 1) + 1).toNat

end

end A191122.P8473420274053922754

/-! ## A191122.P6701204853090201250

`A332893(A191131(n+1)+1)`
-/

namespace A191122.P6701204853090201250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A191131 (n + 1) + 1).toNat

end

end A191122.P6701204853090201250

/-! ## A191122.P16789918770982072587

`A175126(A191131(n+1)+1)`
-/

namespace A191122.P16789918770982072587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A191131 (n + 1) + 1).toNat

end

end A191122.P16789918770982072587

/-! ## A191122.P12275259389144528103

`A000463(A191131(n+1))`
-/

namespace A191122.P12275259389144528103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191131 (n + 1)).toNat

end

end A191122.P12275259389144528103

/-! ## A191122.P16814417051445002457

`A004525(A191131(n+1)+1)`
-/

namespace A191122.P16814417051445002457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A191131 (n + 1) + 1).toNat

end

end A191122.P16814417051445002457

/-! ## A191122.P5710793256358766628

`A029578(A191131(n+1)+1)`
-/

namespace A191122.P5710793256358766628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A191131 (n + 1) + 1).toNat

end

end A191122.P5710793256358766628

/-! ## A191122.P9657863183333162968

`A032742(A191131(n+1)+1)`
-/

namespace A191122.P9657863183333162968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191131 (n + 1) + 1).toNat

end

end A191122.P9657863183333162968

/-! ## A191122.P10508822526705689203

`A078898(A191131(n+1)+1)`
-/

namespace A191122.P10508822526705689203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A191131 (n + 1) + 1).toNat

end

end A191122.P10508822526705689203

/-! ## A191122.P14868342887463378876

`A289439(A191131(n+1)+1)`
-/

namespace A191122.P14868342887463378876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (A191131 (n + 1) + 1).toNat

end

end A191122.P14868342887463378876

/-! ## A191122.P13698806081875174073

`A008619(A191131(n+1)-1)`
-/

namespace A191122.P13698806081875174073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A191131 (n + 1) - 1).toNat

end

end A191122.P13698806081875174073

/-! ## A191122.P14954464124708515852

`A008619(or(1, A191131(n+1)))`
-/

namespace A191122.P14954464124708515852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor 1 (A191131 (n + 1))).toNat

end

end A191122.P14954464124708515852

/-! ## A191122.P12332691159627007595

`A008619(xor(1, A191131(n+1)))`
-/

namespace A191122.P12332691159627007595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor 1 (A191131 (n + 1))).toNat

end

end A191122.P12332691159627007595

/-! ## A191122.P17894731795770021185

`A008619(A191131(n+1)%A110288(n))`
-/

namespace A191122.P17894731795770021185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A191131 (n + 1)) (A110288 n)).toNat

end

end A191122.P17894731795770021185

/-! ## A191122.P17225993634396828404

`A001055(A303824(n))*A008619(A191131(n+1))`
-/

namespace A191122.P17225993634396828404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A303824 n).toNat * A008619 (A191131 (n + 1)).toNat

end

end A191122.P17225993634396828404

/-! ## A191122.P10281994198816692172

`A008619(A191131(n+1))%A022282(A008619(n))`
-/

namespace A191122.P10281994198816692172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A191131 (n + 1)).toNat) (A022282 (A008619 n).toNat)

end

end A191122.P10281994198816692172

/-!
# A191123: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-1 and 4x+1 are in a.

The programs for A191123, there is no canonical definition to state claims against.
-/

/-! ## A191123.P115964709330154488

`∩[A191170(n+1), A191171(n+1)]`
-/

namespace A191123.P115964709330154488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191123.P115964709330154488

/-! ## A191123.P3300571928809386972

`A191170(A343609(n)+A187829(n+1))`
-/

namespace A191123.P3300571928809386972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191170 (A343609 n + A187829 (n + 1)).toNat

end

end A191123.P3300571928809386972

/-! ## A191123.P3491962442517486505

`∩[A135130(n+1), A191170(n+1)]`
-/

namespace A191123.P3491962442517486505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191123.P3491962442517486505

/-! ## A191123.P15013878543046095520

`∩[A166155(n+1), A191170(n+1)]`
-/

namespace A191123.P15013878543046095520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191123.P15013878543046095520

/-! ## A191123.P6991800383963544235

`∩[A191170(n+1), A236510(n+1)]`
-/

namespace A191123.P6991800383963544235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191123.P6991800383963544235

/-!
# A191124: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-1 and 4x+2 are in a.

The programs for A191124, there is no canonical definition to state claims against.
-/

/-! ## A191124.P13256331793422145648

`filter[A191172(n+1), A289748(#)]`
-/

namespace A191124.P13256331793422145648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289748 (f1 j).toNat = 1) n)

end

end A191124.P13256331793422145648

/-! ## A191124.P13998051672605316584

`A191172(lt[A259874(3*n+5), A061043(n+5)])`
-/

namespace A191124.P13998051672605316584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259874 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061043 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191172 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191124.P13998051672605316584

/-! ## A191124.P17261809647174375585

`∩[A191172(n+1), A257500(n+1)]`
-/

namespace A191124.P17261809647174375585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191124.P17261809647174375585

/-!
# A191125: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-1 and 4x+3 are in a.

The programs for A191125, there is no canonical definition to state claims against.
-/

/-! ## A191125.P9461318628803577423

`∩[A191175(n+1), A328369(n+1)]`
-/

namespace A191125.P9461318628803577423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191125.P9461318628803577423

/-! ## A191125.P17104452903807313617

`∩[A191175(n+1), A347243(n+1)]`
-/

namespace A191125.P17104452903807313617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191125.P17104452903807313617

/-! ## A191125.P13713974286590666222

`∩[A167662(n+1), A191175(n+1)]`
-/

namespace A191125.P13713974286590666222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191125.P13713974286590666222

/-! ## A191125.P12988908290874271520

`∩[A191175(n+1), A325389(n+1)]`
-/

namespace A191125.P12988908290874271520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191125.P12988908290874271520

/-! ## A191125.P9726835988276534552

`∩[A191175(n+1), A328335(n+1)]`
-/

namespace A191125.P9726835988276534552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191125.P9726835988276534552

/-!
# A191126: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x and 4x-3 are in a.

The programs for A191126, there is no canonical definition to state claims against.
-/

/-! ## A191126.P7081796500252302083

`ceil(A191139(n+1)/2)`
-/

namespace A191126.P7081796500252302083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191139 (n + 1) : ℚ) / 2⌉

end

end A191126.P7081796500252302083

/-! ## A191126.P12309561416331022732

`2*A191119(n+1)-1`
-/

namespace A191126.P12309561416331022732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191119 (n + 1) - 1

end

end A191126.P12309561416331022732

/-! ## A191126.P10499842895121898825

`ceil(2/3*A191132(n+1))`
-/

namespace A191126.P10499842895121898825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (A191132 (n + 1) : ℚ)⌉

end

end A191126.P10499842895121898825

/-! ## A191126.P4207132783342585845

`A191132(n+1)+1-A191119(n+1)`
-/

namespace A191126.P4207132783342585845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191132 (n + 1) + (1 - A191119 (n + 1))

end

end A191126.P4207132783342585845

/-! ## A191126.P15233468823575058188

`A191119(lcm(n+1, A006530(n+1)))+A191119(n+1)-1`
-/

namespace A191126.P15233468823575058188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191119 (Int.lcm (n + 1 : ℤ) (A006530 (n + 1))) + (A191119 (n + 1) - 1)

end

end A191126.P15233468823575058188

/-! ## A191126.P6864555713674477128

`∩[A191128(n+1), A191177(n+1)]`
-/

namespace A191126.P6864555713674477128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191126.P6864555713674477128

/-! ## A191126.P6652141688884819474

`∩[A191177(n+1), A191180(n+1)]`
-/

namespace A191126.P6652141688884819474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191126.P6652141688884819474

/-! ## A191126.P11090812636934425109

`∩[A191177(n+1), A191181(n+1)]`
-/

namespace A191126.P11090812636934425109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191126.P11090812636934425109

/-! ## A191126.P5572996810008273562

`A191119(n+1)+A191119(n+1)-A080339(A000040(n+1))`
-/

namespace A191126.P5572996810008273562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191119 (n + 1) + (A191119 (n + 1) - A080339 (A000040 (n + 1)).toNat)

end

end A191126.P5572996810008273562

/-! ## A191126.P9075352876988444440

`∩[A190804(n+1), A191177(n+1)]`
-/

namespace A191126.P9075352876988444440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191126.P9075352876988444440

/-! ## A191126.P9037928584040961378

`∩[A190803(n+1), A191177(n+1)]`
-/

namespace A191126.P9037928584040961378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191126.P9037928584040961378

/-! ## A191126.P15693771974024756158

`∩[A190842(n+1), A191177(n+1)]`
-/

namespace A191126.P15693771974024756158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191126.P15693771974024756158

/-! ## A191126.P9529040500610094655

`A000265(A191139(n+1)+1)`
-/

namespace A191126.P9529040500610094655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A191139 (n + 1) + 1).toNat

end

end A191126.P9529040500610094655

/-! ## A191126.P9187840177619577879

`A014682(A191139(n+1)+1)`
-/

namespace A191126.P9187840177619577879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191139 (n + 1) + 1).toNat

end

end A191126.P9187840177619577879

/-! ## A191126.P16780381144882625483

`A004273(A191119(n+1))`
-/

namespace A191126.P16780381144882625483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191119 (n + 1)).toNat

end

end A191126.P16780381144882625483

/-! ## A191126.P12706059201644751991

`A080029(A191119(n+1))-A080339(A000040(n+1)+1)`
-/

namespace A191126.P12706059201644751991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080029 (A191119 (n + 1)).toNat - A080339 (A000040 (n + 1) + 1).toNat

end

end A191126.P12706059201644751991

/-! ## A191126.P5823840402452534062

`A080029(A191119(n+1))-A080339((n+1)²)`
-/

namespace A191126.P5823840402452534062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080029 (A191119 (n + 1)).toNat - A080339 ((n + 1) ^ 2)

end

end A191126.P5823840402452534062

/-!
# A191127: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x and 4x-2 are in a.

The programs for A191127, there is no canonical definition to state claims against.
-/

/-! ## A191127.P10508013303374799807

`ceil(A191141(n+1)/2)`
-/

namespace A191127.P10508013303374799807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191141 (n + 1) : ℚ) / 2⌉

end

end A191127.P10508013303374799807

/-! ## A191127.P17636205428490420141

`(A191141(n+1)+1)/A020639(2*(n+1))`
-/

namespace A191127.P17636205428490420141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191141 (n + 1) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A191127.P17636205428490420141

/-! ## A191127.P7782721352335854885

`A014682(A191141(n+1)+1)`
-/

namespace A191127.P7782721352335854885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191141 (n + 1) + 1).toNat

end

end A191127.P7782721352335854885

/-! ## A191127.P16860343034642871036

`A302043(A191141(n+1)+1)`
-/

namespace A191127.P16860343034642871036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A191141 (n + 1) + 1).toNat

end

end A191127.P16860343034642871036

/-! ## A191127.P4431460051581500129

`A328399(A191141(n+1)-1)`
-/

namespace A191127.P4431460051581500129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A191141 (n + 1) - 1).toNat

end

end A191127.P4431460051581500129

/-! ## A191127.P5907516275457731068

`A246425(A191141(n+1))`
-/

namespace A191127.P5907516275457731068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A191141 (n + 1)).toNat

end

end A191127.P5907516275457731068

/-! ## A191127.P3355234287095497641

`A038572(A191141(n+1)+1)`
-/

namespace A191127.P3355234287095497641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A191141 (n + 1) + 1).toNat

end

end A191127.P3355234287095497641

/-! ## A191127.P7562834230774656030

`A249122(A191141(n+1)+2)`
-/

namespace A191127.P7562834230774656030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A191141 (n + 1) + 2).toNat

end

end A191127.P7562834230774656030

/-! ## A191127.P4262628194825932912

`A004525(A191141(n+1)+1)`
-/

namespace A191127.P4262628194825932912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A191141 (n + 1) + 1).toNat

end

end A191127.P4262628194825932912

/-! ## A191127.P10906048977055504550

`A026741(A191141(n+1)+1)`
-/

namespace A191127.P10906048977055504550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A191141 (n + 1) + 1).toNat

end

end A191127.P10906048977055504550

/-! ## A191127.P12385660722462683324

`A110654(A191141(n+1)+1)`
-/

namespace A191127.P12385660722462683324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A191141 (n + 1) + 1).toNat

end

end A191127.P12385660722462683324

/-! ## A191127.P9423761404286097184

`A008619(A191141(n+1)-1)`
-/

namespace A191127.P9423761404286097184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A191141 (n + 1) - 1).toNat

end

end A191127.P9423761404286097184

/-! ## A191127.P11071735591112026259

`A029579(A191141(n+1)-1)`
-/

namespace A191127.P11071735591112026259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A191141 (n + 1) - 1).toNat

end

end A191127.P11071735591112026259

/-! ## A191127.P3260724092750993308

`A003602(or(1, A191141(n+1)))`
-/

namespace A191127.P3260724092750993308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.lor 1 (A191141 (n + 1))).toNat

end

end A191127.P3260724092750993308

/-! ## A191127.P1498621539449564441

`A008619(or(1, A191141(n+1)))`
-/

namespace A191127.P1498621539449564441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor 1 (A191141 (n + 1))).toNat

end

end A191127.P1498621539449564441

/-! ## A191127.P10398799091588834907

`A130747(or(1, A191141(n+1)))`
-/

namespace A191127.P10398799091588834907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (Int.lor 1 (A191141 (n + 1))).toNat

end

end A191127.P10398799091588834907

/-! ## A191127.P14069315036708129755

`A159481(or(1, A191141(n+1)))`
-/

namespace A191127.P14069315036708129755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (Int.lor 1 (A191141 (n + 1))).toNat

end

end A191127.P14069315036708129755

/-! ## A191127.P10395155699755034143

`A008619(xor(1, A191141(n+1)))`
-/

namespace A191127.P10395155699755034143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor 1 (A191141 (n + 1))).toNat

end

end A191127.P10395155699755034143

/-! ## A191127.P8247748646411847468

`A000463(A191141(n+1)+2)-1`
-/

namespace A191127.P8247748646411847468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191141 (n + 1) + 2).toNat - 1

end

end A191127.P8247748646411847468

/-! ## A191127.P6353086137444310333

`A003602(A191141(n+1)+2)-1`
-/

namespace A191127.P6353086137444310333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A191141 (n + 1) + 2).toNat - 1

end

end A191127.P6353086137444310333

/-!
# A191128: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x and 4x-1 are in a.

The programs for A191128, there is no canonical definition to state claims against.
-/

/-! ## A191128.P7469303437203354935

`ceil(A191143(n+1)/2)`
-/

namespace A191128.P7469303437203354935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191143 (n + 1) : ℚ) / 2⌉

end

end A191128.P7469303437203354935

/-! ## A191128.P8837116681142485166

`2*A191120(n+1)-1`
-/

namespace A191128.P8837116681142485166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191120 (n + 1) - 1

end

end A191128.P8837116681142485166

/-! ## A191128.P6334384788005982729

`(2*A191135(n+1)+1)/3`
-/

namespace A191128.P6334384788005982729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A191135 (n + 1) + 1 : ℚ) / 3

end

end A191128.P6334384788005982729

/-! ## A191128.P8953981086116863557

`2*A191135(n+1)-A191143(n+1)`
-/

namespace A191128.P8953981086116863557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191135 (n + 1) - A191143 (n + 1)

end

end A191128.P8953981086116863557

/-! ## A191128.P14575645146751997878

`A191126(n+2)/3`
-/

namespace A191128.P14575645146751997878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191126 (n + 2) : ℚ) / 3

end

end A191128.P14575645146751997878

/-! ## A191128.P12409005390963528335

`A191119(n+2)-A191120(n+1)`
-/

namespace A191128.P12409005390963528335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191119 (n + 2) - A191120 (n + 1)

end

end A191128.P12409005390963528335

/-! ## A191128.P18029050822913474118

`∩[A191180(n+1), A191181(n+1)]`
-/

namespace A191128.P18029050822913474118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191128.P18029050822913474118

/-! ## A191128.P13393916315970813199

`∩[A191181(n+1), A191207(n+1)]`
-/

namespace A191128.P13393916315970813199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191128.P13393916315970813199

/-! ## A191128.P11969135182966929506

`(∑[A004773(Δ[A191119(n+1)])]+1)/2`
-/

namespace A191128.P11969135182966929506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191119 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A191128.P11969135182966929506

/-! ## A191128.P4440829274137140120

`A004273(A191120(n+1))`
-/

namespace A191128.P4440829274137140120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191120 (n + 1)).toNat

end

end A191128.P4440829274137140120

/-! ## A191128.P16936941544773586666

`A023443(2*A191120(n+1))`
-/

namespace A191128.P16936941544773586666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A191120 (n + 1)).toNat

end

end A191128.P16936941544773586666

/-! ## A191128.P16115369989029303568

`A004396(A191135(n+1))`
-/

namespace A191128.P16115369989029303568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A191135 (n + 1)).toNat

end

end A191128.P16115369989029303568

/-! ## A191128.P2015945880100291767

`A004396(A191119(n+2)-1)`
-/

namespace A191128.P2015945880100291767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A191119 (n + 2) - 1).toNat

end

end A191128.P2015945880100291767

/-! ## A191128.P6205665948125540893

`A004396(A191119(n+2))`
-/

namespace A191128.P6205665948125540893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A191119 (n + 2)).toNat

end

end A191128.P6205665948125540893

/-! ## A191128.P13382697863752587624

`A004773(A191135(n+1)+1)/2`
-/

namespace A191128.P13382697863752587624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004773 (A191135 (n + 1) + 1).toNat : ℚ) / 2

end

end A191128.P13382697863752587624

/-! ## A191128.P1635661218819261568

`Δ[∑[A004773(A191119(n+1))]/2]`
-/

namespace A191128.P1635661218819261568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A191119 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191128.P1635661218819261568

/-!
# A191129: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x and 4x+1 are in a.

The programs for A191129, there is no canonical definition to state claims against.
-/

/-! ## A191129.P18204939033838442103

`2*A191121(n+1)-1`
-/

namespace A191129.P18204939033838442103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191121 (n + 1) - 1

end

end A191129.P18204939033838442103

/-! ## A191129.P8528040817469095428

`(A191138(n+1)+A191121(n+1))/2`
-/

namespace A191129.P8528040817469095428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191138 (n + 1) + A191121 (n + 1) : ℚ) / 2

end

end A191129.P8528040817469095428

/-! ## A191129.P118219760882803584

`A191121(A000027(n+1))+A191121(n+1)-1`
-/

namespace A191129.P118219760882803584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191121 (A000027 (n + 1)).toNat + (A191121 (n + 1) - 1)

end

end A191129.P118219760882803584

/-! ## A191129.P14101300425135330955

`A191113(n+2)-1`
-/

namespace A191129.P14101300425135330955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191113 (n + 2) - 1

end

end A191129.P14101300425135330955

/-! ## A191129.P7413927611873131530

`∑[abs(Δ[A191113(n+1)])]`
-/

namespace A191129.P7413927611873131530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191129.P7413927611873131530

/-! ## A191129.P14551585637400261313

`(A191114(n+2)-1)/2`
-/

namespace A191129.P14551585637400261313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191114 (n + 2) - 1 : ℚ) / 2

end

end A191129.P14551585637400261313

/-! ## A191129.P8191509163541955565

`(A191115(n+2)-1)/3`
-/

namespace A191129.P8191509163541955565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191115 (n + 2) - 1 : ℚ) / 3

end

end A191129.P8191509163541955565

/-! ## A191129.P16779517440032240036

`A191115(n+2)-A191114(n+2)`
-/

namespace A191129.P16779517440032240036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191115 (n + 2) - A191114 (n + 2)

end

end A191129.P16779517440032240036

/-! ## A191129.P11861144561148803696

`A191116(n+2)-A191115(n+2)`
-/

namespace A191129.P11861144561148803696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191116 (n + 2) - A191115 (n + 2)

end

end A191129.P11861144561148803696

/-! ## A191129.P3429644225514993276

`A191117(n+2)-A191116(n+2)`
-/

namespace A191129.P3429644225514993276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191117 (n + 2) - A191116 (n + 2)

end

end A191129.P3429644225514993276

/-! ## A191129.P14141273903683241841

`A191118(n+2)-A191117(n+2)`
-/

namespace A191129.P14141273903683241841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191118 (n + 2) - A191117 (n + 2)

end

end A191129.P14141273903683241841

/-! ## A191129.P7932118942893318474

`A191114(n+2)%A191113(n+2)`
-/

namespace A191129.P7932118942893318474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191114 (n + 2)) (A191113 (n + 2))

end

end A191129.P7932118942893318474

/-! ## A191129.P1919954266479071307

`(A191118(n+2)-A191116(n+2))/2`
-/

namespace A191129.P1919954266479071307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191118 (n + 2) - A191116 (n + 2) : ℚ) / 2

end

end A191129.P1919954266479071307

/-! ## A191129.P15785168816621984284

`A191114(n+2)-(A191121(n+1)+A191121(n+1))`
-/

namespace A191129.P15785168816621984284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191114 (n + 2) - (A191121 (n + 1) + A191121 (n + 1))

end

end A191129.P15785168816621984284

/-! ## A191129.P4933421866563523598

`A008683(A106904(n+1))+2*A191121(n+1)`
-/

namespace A191129.P4933421866563523598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A106904 (n + 1)).toNat + 2 * A191121 (n + 1)

end

end A191129.P4933421866563523598

/-! ## A191129.P14133729339511856873

`A004273(A191121(n+1))`
-/

namespace A191129.P14133729339511856873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191121 (n + 1)).toNat

end

end A191129.P14133729339511856873

/-! ## A191129.P12056722195813727581

`A004273(A191113(n+2)/2)`
-/

namespace A191129.P12056722195813727581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A191113 (n + 2) : ℚ) / 2)).toNat

end

end A191129.P12056722195813727581

/-! ## A191129.P16950845075794487807

`A014681(A191113(n+2))`
-/

namespace A191129.P16950845075794487807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A191113 (n + 2)).toNat

end

end A191129.P16950845075794487807

/-! ## A191129.P9145018128027151448

`A023443(2*A191121(n+1))`
-/

namespace A191129.P9145018128027151448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A191121 (n + 1)).toNat

end

end A191129.P9145018128027151448

/-! ## A191129.P10617121400819952870

`A004396(A191138(n+1))`
-/

namespace A191129.P10617121400819952870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A191138 (n + 1)).toNat

end

end A191129.P10617121400819952870

/-!
# A191130: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x and 4x+2 are in a.

The programs for A191130, there is no canonical definition to state claims against.
-/

/-! ## A191130.P3219137554885223934

`∩[A191184(n+1), A191185(n+1)]`
-/

namespace A191130.P3219137554885223934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191130.P3219137554885223934

/-! ## A191130.P14336824849565251158

`A191184(n+2)-A209229(A119327(2*n))`
-/

namespace A191130.P14336824849565251158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191184 (n + 2) - A209229 (A119327 (2 * n)).toNat

end

end A191130.P14336824849565251158

/-! ## A191130.P12794936575061414977

`A191184(A065475(n+1))%A358019(n+1)`
-/

namespace A191130.P12794936575061414977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191184 (A065475 (n + 1)).toNat) (A358019 (n + 1))

end

end A191130.P12794936575061414977

/-! ## A191130.P431916463022741020

`A191184(n+2)-A240465(A082672(n+1))`
-/

namespace A191130.P431916463022741020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191184 (n + 2) - A240465 (A082672 (n + 1)).toNat

end

end A191130.P431916463022741020

/-! ## A191130.P17400632829361644819

`A191184(n+2)-A010051(A007283(n))`
-/

namespace A191130.P17400632829361644819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191184 (n + 2) - A010051 (A007283 n).toNat

end

end A191130.P17400632829361644819

/-!
# A191131: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x and 4x+3 are in a.

The programs for A191131, there is no canonical definition to state claims against.
-/

/-! ## A191131.P15626537753351011329

`2*A191122(n+1)-1`
-/

namespace A191131.P15626537753351011329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191122 (n + 1) - 1

end

end A191131.P15626537753351011329

/-! ## A191131.P4062642800646789088

`A057428(A032742(n+1))+2*A191122(n+1)`
-/

namespace A191131.P4062642800646789088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A032742 (n + 1)).toNat + 2 * A191122 (n + 1)

end

end A191131.P4062642800646789088

/-! ## A191131.P13332448555630750860

`A000265(A191122(n+1)+A191122(n+1)-1)`
-/

namespace A191131.P13332448555630750860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A191122 (n + 1) + (A191122 (n + 1) - 1)).toNat

end

end A191131.P13332448555630750860

/-! ## A191131.P17283760970817519074

`A004273(A191122(n+1))`
-/

namespace A191131.P17283760970817519074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191122 (n + 1)).toNat

end

end A191131.P17283760970817519074

/-! ## A191131.P6290962766290446536

`A005408(A191122(n+1)-1)`
-/

namespace A191131.P6290962766290446536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A191122 (n + 1) - 1).toNat

end

end A191131.P6290962766290446536

/-! ## A191131.P14560898244980778654

`A346468(2*A191122(n+1))`
-/

namespace A191131.P14560898244980778654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (2 * A191122 (n + 1)).toNat

end

end A191131.P14560898244980778654

/-! ## A191131.P12300078277908912013

`A005843(A191122(n+1)-1)+1`
-/

namespace A191131.P12300078277908912013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A191122 (n + 1) - 1).toNat + 1

end

end A191131.P12300078277908912013

/-! ## A191131.P6754866300476875954

`A284776(A191122(n+1)%A001124(n+1))`
-/

namespace A191131.P6754866300476875954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284776 (Int.tmod (A191122 (n + 1)) (A001124 (n + 1))).toNat

end

end A191131.P6754866300476875954

/-! ## A191131.P3312596995952352510

`A014681(2*A191122(n+1))`
-/

namespace A191131.P3312596995952352510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A191122 (n + 1)).toNat

end

end A191131.P3312596995952352510

/-!
# A191132: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x+1 and 4x-3 are in a.

The programs for A191132, there is no canonical definition to state claims against.
-/

/-! ## A191132.P462689210977058381

`3*A191119(n+1)-2`
-/

namespace A191132.P462689210977058381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191119 (n + 1) - 2

end

end A191132.P462689210977058381

/-! ## A191132.P3510283815757053979

`(3*A191126(n+1)-1)/2`
-/

namespace A191132.P3510283815757053979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A191126 (n + 1) - 1 : ℚ) / 2

end

end A191132.P3510283815757053979

/-! ## A191132.P16898143484580478958

`A191119(n+1)+A191126(n+1)-1`
-/

namespace A191132.P16898143484580478958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191119 (n + 1) + (A191126 (n + 1) - 1)

end

end A191132.P16898143484580478958

/-! ## A191132.P17939080978731959719

`A191139(n+1)+1-A191119(n+1)`
-/

namespace A191132.P17939080978731959719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191139 (n + 1) + (1 - A191119 (n + 1))

end

end A191132.P17939080978731959719

/-! ## A191132.P16341362731350560844

`∩[A191135(n+1), A191189(n+1)]`
-/

namespace A191132.P16341362731350560844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191132.P16341362731350560844

/-! ## A191132.P17878178776906837733

`∩[A191189(n+1), A191195(n+1)]`
-/

namespace A191132.P17878178776906837733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191132.P17878178776906837733

/-! ## A191132.P6061326019110583846

`∩[A191136(n+1), A191189(n+1)]`
-/

namespace A191132.P6061326019110583846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191132.P6061326019110583846

/-! ## A191132.P16974981352636638362

`∩[A191189(n+1), A191196(n+1)]`
-/

namespace A191132.P16974981352636638362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191132.P16974981352636638362

/-! ## A191132.P13637788210302156718

`∩[A191135(n+1), A191165(n+1)]`
-/

namespace A191132.P13637788210302156718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191132.P13637788210302156718

/-! ## A191132.P1483809992540324428

`∩[A191165(n+1), A191195(n+1)]`
-/

namespace A191132.P1483809992540324428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191132.P1483809992540324428

/-! ## A191132.P11116668643666282430

`∩[A191189(n+1), A191197(n+1)]`
-/

namespace A191132.P11116668643666282430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191132.P11116668643666282430

/-! ## A191132.P3813667341079510

`∩[A191163(n+1)-1, A191165(n+1)]`
-/

namespace A191132.P3813667341079510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191132.P3813667341079510

/-! ## A191132.P2408806131054540265

`∩[A190805(n+1), A191189(n+1)]`
-/

namespace A191132.P2408806131054540265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191132.P2408806131054540265

/-! ## A191132.P7350967093278650117

`∩[A190845(n+1), A191189(n+1)]`
-/

namespace A191132.P7350967093278650117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191132.P7350967093278650117

/-! ## A191132.P294476397270121900

`A014682(A191126(n+1))-1`
-/

namespace A191132.P294476397270121900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191126 (n + 1)).toNat - 1

end

end A191132.P294476397270121900

/-! ## A191132.P8601128037053707569

`A014682(A191139(n+1))/2`
-/

namespace A191132.P8601128037053707569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014682 (A191139 (n + 1)).toNat : ℚ) / 2

end

end A191132.P8601128037053707569

/-! ## A191132.P16847659848609534308

`A016777(A191119(n+1)-1)`
-/

namespace A191132.P16847659848609534308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A191119 (n + 1) - 1).toNat

end

end A191132.P16847659848609534308

/-! ## A191132.P6106300196544237797

`A191126(n+1)+A038572(A191126(n+1)-1)`
-/

namespace A191132.P6106300196544237797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191126 (n + 1) + A038572 (A191126 (n + 1) - 1).toNat

end

end A191132.P6106300196544237797

/-! ## A191132.P14557819970970982688

`A028837(A191119(n+1))`
-/

namespace A191132.P14557819970970982688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (A191119 (n + 1)).toNat

end

end A191132.P14557819970970982688

/-!
# A191133: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x+1 and 4x-2 are in a.

The programs for A191133, there is no canonical definition to state claims against.
-/

/-! ## A191133.P2765119883960379760

`∩[A191190(n+1), A191191(n+1)]`
-/

namespace A191133.P2765119883960379760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191133.P2765119883960379760

/-! ## A191133.P8087571481800544587

`A191190(A160543(n+1))+A025465(A014376(n))`
-/

namespace A191133.P8087571481800544587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191190 (A160543 (n + 1)).toNat + A025465 (A014376 n).toNat

end

end A191133.P8087571481800544587

/-! ## A191133.P18153641964274963168

`A191190(A160543(n+1))%A238090(A017986(n))`
-/

namespace A191133.P18153641964274963168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191190 (A160543 (n + 1)).toNat) (A238090 (A017986 n).toNat)

end

end A191133.P18153641964274963168

/-! ## A191133.P12319314772516335593

`A006519(A225507(n+1))*A191190(A160543(n+1))`
-/

namespace A191133.P12319314772516335593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A225507 (n + 1)).toNat * A191190 (A160543 (n + 1)).toNat

end

end A191133.P12319314772516335593

/-!
# A191134: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x+1 and 4x-1 are in a.

The programs for A191134, there is no canonical definition to state claims against.
-/

/-! ## A191134.P8194399397968110634

`∩[A191192(n+1), A191193(n+1)]`
-/

namespace A191134.P8194399397968110634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191134.P8194399397968110634

/-! ## A191134.P5746434660689658390

`∩[A191192(n+1), A325118(n+1)]`
-/

namespace A191134.P5746434660689658390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191134.P5746434660689658390

/-! ## A191134.P16181485120041892308

`∩[A191192(n+1), A323733(n+1)]`
-/

namespace A191134.P16181485120041892308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191134.P16181485120041892308

/-! ## A191134.P11154937387041997710

`eq[A173894(n), A254436(n+1)]`
-/

namespace A191134.P11154937387041997710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191134.P11154937387041997710

/-! ## A191134.P999878348551332499

`∩[A191192(n+1), A261466(n+1)]`
-/

namespace A191134.P999878348551332499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191134.P999878348551332499

/-!
# A191135: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x+1 and 4x are in a.

The programs for A191135, there is no canonical definition to state claims against.
-/

/-! ## A191135.P10801098445443736175

`3*A191120(n+1)-2`
-/

namespace A191135.P10801098445443736175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191120 (n + 1) - 2

end

end A191135.P10801098445443736175

/-! ## A191135.P14261842957317612615

`3*(A191128(n+1)+1)/2-2`
-/

namespace A191135.P14261842957317612615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A191128 (n + 1) + 1 : ℚ) / 2) - 2

end

end A191135.P14261842957317612615

/-! ## A191135.P15266735681114287759

`A191143(n+1)+1-A191120(n+1)`
-/

namespace A191135.P15266735681114287759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191143 (n + 1) + (1 - A191120 (n + 1))

end

end A191135.P15266735681114287759

/-! ## A191135.P11113001345663131518

`A191119(n+2)-1`
-/

namespace A191135.P11113001345663131518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191119 (n + 2) - 1

end

end A191135.P11113001345663131518

/-! ## A191135.P119349152098973798

`floor(A191132(n+2)/3)`
-/

namespace A191135.P119349152098973798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191132 (n + 2) : ℚ) / 3⌋

end

end A191135.P119349152098973798

/-! ## A191135.P11655431963022119156

`(A191126(n+2)-1)/2`
-/

namespace A191135.P11655431963022119156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191126 (n + 2) - 1 : ℚ) / 2

end

end A191135.P11655431963022119156

/-! ## A191135.P1691266051482893983

`∑[Δ[A191126(n+1)]/2]`
-/

namespace A191135.P1691266051482893983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191126 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191135.P1691266051482893983

/-! ## A191135.P14655955824593573693

`∑[abs(Δ[A191132(n+1)/3])]`
-/

namespace A191135.P14655955824593573693
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191132 (n + 1) : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191135.P14655955824593573693

/-! ## A191135.P9741582175188499655

`∩[A191136(n+1), A191195(n+1)]`
-/

namespace A191135.P9741582175188499655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191135.P9741582175188499655

/-! ## A191135.P14974474217714599037

`∩[A191136(n+1), A191163(n+1)-1]`
-/

namespace A191135.P14974474217714599037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191135.P14974474217714599037

/-! ## A191135.P16687999181616339008

`∩[A191120(n+2), A191163(n+2)]-1`
-/

namespace A191135.P16687999181616339008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191120 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A191135.P16687999181616339008

/-! ## A191135.P5355987246463806967

`∩[A191195(n+1), A191196(n+1)]`
-/

namespace A191135.P5355987246463806967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191135.P5355987246463806967

/-! ## A191135.P619169369378731866

`∩[A191163(n+2), A191229(n+2)]-1`
-/

namespace A191135.P619169369378731866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A191135.P619169369378731866

/-! ## A191135.P5416678324270682119

`∩[A191195(n+1), A191197(n+1)]`
-/

namespace A191135.P5416678324270682119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191135.P5416678324270682119

/-! ## A191135.P347687157432535137

`∩[A191165(n+1)-1, A191195(n+1)]`
-/

namespace A191135.P347687157432535137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191135.P347687157432535137

/-! ## A191135.P16154521233001013086

`∩[A191163(n+2), A191165(n+2)]-1`
-/

namespace A191135.P16154521233001013086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A191135.P16154521233001013086

/-! ## A191135.P8842098602473097992

`∑[A000027(Δ[A191132(n+1)/3])]`
-/

namespace A191135.P8842098602473097992
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191132 (n + 1) : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191135.P8842098602473097992

/-! ## A191135.P15213424956165123806

`∩[A190808(n+1), A191195(n+1)]`
-/

namespace A191135.P15213424956165123806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191135.P15213424956165123806

/-! ## A191135.P10058139172109840549

`∩[A190803(n+2), A191163(n+2)]-1`
-/

namespace A191135.P10058139172109840549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190803 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A191135.P10058139172109840549

/-! ## A191135.P15582472699556233125

`∩[A190851(n+1), A191195(n+1)]`
-/

namespace A191135.P15582472699556233125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191135.P15582472699556233125

/-!
# A191136: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x+1 and 4x+1 are in a.

The programs for A191136, there is no canonical definition to state claims against.
-/

/-! ## A191136.P12012760274136361966

`∪[A191135(n+1), A191143(n+1)]`
-/

namespace A191136.P12012760274136361966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191136.P12012760274136361966

/-! ## A191136.P15011246605052196652

`A191120(n+2)-1`
-/

namespace A191136.P15011246605052196652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191120 (n + 2) - 1

end

end A191136.P15011246605052196652

/-! ## A191136.P12991242965329628170

`round(A191143(n+2)/4)`
-/

namespace A191136.P12991242965329628170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A191143 (n + 2) : ℚ) / 4)

end

end A191136.P12991242965329628170

/-! ## A191136.P531112900990696166

`(A191128(n+2)-1)/2`
-/

namespace A191136.P531112900990696166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191128 (n + 2) - 1 : ℚ) / 2

end

end A191136.P531112900990696166

/-! ## A191136.P15647579867179548924

`(A191135(n+2)-1)/3`
-/

namespace A191136.P15647579867179548924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191135 (n + 2) - 1 : ℚ) / 3

end

end A191136.P15647579867179548924

/-! ## A191136.P13741148770912599453

`∑[Δ[A191128(n+1)]/2]`
-/

namespace A191136.P13741148770912599453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191128 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191136.P13741148770912599453

/-! ## A191136.P14811692753454588649

`∑[Δ[A191135(n+1)]/3]`
-/

namespace A191136.P14811692753454588649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191135 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191136.P14811692753454588649

/-! ## A191136.P6095818113366092601

`A191143(n+2)-A191135(n+2)`
-/

namespace A191136.P6095818113366092601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191143 (n + 2) - A191135 (n + 2)

end

end A191136.P6095818113366092601

/-! ## A191136.P2930950620600802023

`(A191119(n+3)-2)/3`
-/

namespace A191136.P2930950620600802023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191119 (n + 3) - 2 : ℚ) / 3

end

end A191136.P2930950620600802023

/-! ## A191136.P16259672022402635995

`∩[A191196(n+1), A191197(n+1)]`
-/

namespace A191136.P16259672022402635995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191136.P16259672022402635995

/-! ## A191136.P7047738989996287479

`∩[A191165(n+2), A191229(n+2)]-1`
-/

namespace A191136.P7047738989996287479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A191136.P7047738989996287479

/-! ## A191136.P1925135747127203577

`∩[A191165(n+2), A191179(n+2)]-1`
-/

namespace A191136.P1925135747127203577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191179 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A191136.P1925135747127203577

/-! ## A191136.P14877486942441648054

`∑[A025480(Δ[A191128(n+1)])]`
-/

namespace A191136.P14877486942441648054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191128 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191136.P14877486942441648054

/-! ## A191136.P11169294693583577441

`A023443(A191120(n+2))`
-/

namespace A191136.P11169294693583577441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A191120 (n + 2)).toNat

end

end A191136.P11169294693583577441

/-! ## A191136.P14308880769615915899

`A004524(A191128(n+2))`
-/

namespace A191136.P14308880769615915899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A191128 (n + 2)).toNat

end

end A191136.P14308880769615915899

/-! ## A191136.P14949970521841272734

`A025480(A191128(n+2)-1)`
-/

namespace A191136.P14949970521841272734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A191128 (n + 2) - 1).toNat

end

end A191136.P14949970521841272734

/-! ## A191136.P5630475911151540389

`A032742(A191128(n+2)-1)`
-/

namespace A191136.P5630475911151540389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191128 (n + 2) - 1).toNat

end

end A191136.P5630475911151540389

/-! ## A191136.P1996040309547501925

`A078898(A191128(n+2)-1)`
-/

namespace A191136.P1996040309547501925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A191128 (n + 2) - 1).toNat

end

end A191136.P1996040309547501925

/-! ## A191136.P7260120146582885347

`A002264(A191135(n+2))`
-/

namespace A191136.P7260120146582885347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A191135 (n + 2)).toNat

end

end A191136.P7260120146582885347

/-!
# A191137: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x+1 and 4x+2 are in a.

The programs for A191137, there is no canonical definition to state claims against.
-/

/-! ## A191137.P15226490144643469811

`∩[A191198(n+1), A191200(n+1)]`
-/

namespace A191137.P15226490144643469811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191137.P15226490144643469811

/-! ## A191137.P17692574320545298665

`∩[A191121(n+1)-1, A191198(n+1)]`
-/

namespace A191137.P17692574320545298665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191121 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191137.P17692574320545298665

/-! ## A191137.P6017798949950467834

`∩[A191168(n+1)-1, A191198(n+1)]`
-/

namespace A191137.P6017798949950467834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191168 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191137.P6017798949950467834

/-! ## A191137.P7045635261676899673

`∩[A002264(A191199(2*(n+1))), A191199(n+1)]`
-/

namespace A191137.P7045635261676899673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A191199 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191137.P7045635261676899673

/-! ## A191137.P7744361300518231873

`filter[A191199(n+1), A133011(#)]`
-/

namespace A191137.P7744361300518231873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133011 (f1 j).toNat = 1) n)

end

end A191137.P7744361300518231873

/-!
# A191138: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x+1 and 4x+3 are in a.

The programs for A191138, there is no canonical definition to state claims against.
-/

/-! ## A191138.P3786311234624559907

`3*A191121(n+1)-2`
-/

namespace A191138.P3786311234624559907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191121 (n + 1) - 2

end

end A191138.P3786311234624559907

/-! ## A191138.P5679603609728413464

`A191129(n+1)+floor(A191129(n+1)/2)`
-/

namespace A191138.P5679603609728413464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191129 (n + 1) + ⌊(A191129 (n + 1) : ℚ) / 2⌋

end

end A191138.P5679603609728413464

/-! ## A191138.P811061917729267168

`A191115(n+2)/2-1`
-/

namespace A191138.P811061917729267168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191115 (n + 2) : ℚ) / 2 - 1

end

end A191138.P811061917729267168

/-! ## A191138.P10221545441552985844

`3*A191113(n+2)/2-2`
-/

namespace A191138.P10221545441552985844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A191113 (n + 2) : ℚ) / 2) - 2

end

end A191138.P10221545441552985844

/-! ## A191138.P11442876469343659954

`A191113(n+2)+A191121(n+1)-2`
-/

namespace A191138.P11442876469343659954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191113 (n + 2) + (A191121 (n + 1) - 2)

end

end A191138.P11442876469343659954

/-! ## A191138.P9241025966073576770

`A191117(n+2)/2-A191113(n+2)`
-/

namespace A191138.P9241025966073576770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191117 (n + 2) : ℚ) / 2 - (A191113 (n + 2) : ℚ)

end

end A191138.P9241025966073576770

/-! ## A191138.P12881784857441233683

`A191116(n+2)-(A191121(n+1)+A191114(n+2))`
-/

namespace A191138.P12881784857441233683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191116 (n + 2) - (A191121 (n + 1) + A191114 (n + 2))

end

end A191138.P12881784857441233683

/-! ## A191138.P12657828868870273936

`A001651(A191129(n+1))`
-/

namespace A191138.P12657828868870273936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A191129 (n + 1)).toNat

end

end A191138.P12657828868870273936

/-! ## A191138.P13978319292381582882

`A047237(A191113(n+2))`
-/

namespace A191138.P13978319292381582882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (A191113 (n + 2)).toNat

end

end A191138.P13978319292381582882

/-! ## A191138.P14395187078622853945

`A026178(A191113(n+2)-1)`
-/

namespace A191138.P14395187078622853945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026178 (A191113 (n + 2) - 1).toNat

end

end A191138.P14395187078622853945

/-! ## A191138.P1666783744756645243

`A191129(n+1)+A004525(A191129(n+1)-1)`
-/

namespace A191138.P1666783744756645243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191129 (n + 1) + A004525 (A191129 (n + 1) - 1).toNat

end

end A191138.P1666783744756645243

/-! ## A191138.P11645656278559417720

`A191129(n+1)+A025480(A191129(n+1)-1)`
-/

namespace A191138.P11645656278559417720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191129 (n + 1) + A025480 (A191129 (n + 1) - 1).toNat

end

end A191138.P11645656278559417720

/-! ## A191138.P1250721868022627333

`A191129(n+1)+A078898(A191129(n+1)-1)`
-/

namespace A191138.P1250721868022627333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191129 (n + 1) + A078898 (A191129 (n + 1) - 1).toNat

end

end A191138.P1250721868022627333

/-! ## A191138.P16370114825701223825

`A123684(A191121(n+1)+A191121(n+1)-1)`
-/

namespace A191138.P16370114825701223825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (A191121 (n + 1) + (A191121 (n + 1) - 1)).toNat

end

end A191138.P16370114825701223825

/-! ## A191138.P978842272044684361

`A074306(A191114(n+2))`
-/

namespace A191138.P978842272044684361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (A191114 (n + 2)).toNat

end

end A191138.P978842272044684361

/-! ## A191138.P9006355058907839941

`A046667(A191115(n+2))`
-/

namespace A191138.P9006355058907839941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A191115 (n + 2)).toNat

end

end A191138.P9006355058907839941

/-! ## A191138.P2621064277407168713

`A025480(A191115(n+2)-2)`
-/

namespace A191138.P2621064277407168713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A191115 (n + 2) - 2).toNat

end

end A191138.P2621064277407168713

/-! ## A191138.P14503067169861696038

`A004524(A191129(n+1)+2*A191129(n+1))`
-/

namespace A191138.P14503067169861696038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A191129 (n + 1) + 2 * A191129 (n + 1)).toNat

end

end A191138.P14503067169861696038

/-! ## A191138.P8111069485562360268

`A057360(A191116(n+2))`
-/

namespace A191138.P8111069485562360268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A191116 (n + 2)).toNat

end

end A191138.P8111069485562360268

/-!
# A191139: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x+2 and 4x-3 are in a.

The programs for A191139, there is no canonical definition to state claims against.
-/

/-! ## A191139.P14799464398182082660

`2*A191126(n+1)-1`
-/

namespace A191139.P14799464398182082660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191126 (n + 1) - 1

end

end A191139.P14799464398182082660

/-! ## A191139.P13433426864559688950

`4*A191119(n+1)-3`
-/

namespace A191139.P13433426864559688950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A191119 (n + 1) - 3

end

end A191139.P13433426864559688950

/-! ## A191139.P6017087560825553272

`A191119(n+1)+A191132(n+1)-1`
-/

namespace A191139.P6017087560825553272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191119 (n + 1) + (A191132 (n + 1) - 1)

end

end A191139.P6017087560825553272

/-! ## A191139.P1825819567768615651

`∑{d}[A000040(n+1), A191126(n+1)-A001221(#)]`
-/

namespace A191139.P1825819567768615651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A191126 (n + 1) - A001221 d)

end

end A191139.P1825819567768615651

/-! ## A191139.P15427669552828598262

`∩[A191119(n+1), A191143(n+1)]`
-/

namespace A191139.P15427669552828598262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191139.P15427669552828598262

/-! ## A191139.P3865316885709764427

`∩[A191119(n+1), A191210(n+1)]`
-/

namespace A191139.P3865316885709764427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191139.P3865316885709764427

/-! ## A191139.P7305448256393035106

`∩[A191143(n+1), A191163(n+1)]`
-/

namespace A191139.P7305448256393035106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191139.P7305448256393035106

/-! ## A191139.P3005508805617533320

`∩[A191163(n+1), A191210(n+1)]`
-/

namespace A191139.P3005508805617533320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191139.P3005508805617533320

/-! ## A191139.P1085903202309288058

`∩[A191119(n+1), A191136(n+1)]`
-/

namespace A191139.P1085903202309288058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191139.P1085903202309288058

/-! ## A191139.P10707253426569106046

`∩[A191120(n+1), A191136(n+1)]`
-/

namespace A191139.P10707253426569106046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191139.P10707253426569106046

/-! ## A191139.P13754557030879586571

`∩[A191120(n+1), A191143(n+1)]`
-/

namespace A191139.P13754557030879586571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191139.P13754557030879586571

/-! ## A191139.P1477357937916341268

`∩[A191136(n+1), A191163(n+1)]`
-/

namespace A191139.P1477357937916341268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191139.P1477357937916341268

/-! ## A191139.P5817321657702210224

`∩[A191120(n+1), A191210(n+1)]`
-/

namespace A191139.P5817321657702210224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191139.P5817321657702210224

/-! ## A191139.P10367046304682341104

`A191120(eq[1, A191120(n+2)-A191120(n+1)]+1)`
-/

namespace A191139.P10367046304682341104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191120 (n + 2) - A191120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A191139.P10367046304682341104

/-! ## A191139.P8905064467376550123

`∩[A191119(n+1), A191196(n+1)]`
-/

namespace A191139.P8905064467376550123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191139.P8905064467376550123

/-! ## A191139.P15907767088827055695

`∩[A191120(n+1), A191196(n+1)]`
-/

namespace A191139.P15907767088827055695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191139.P15907767088827055695

/-! ## A191139.P16774225526853914751

`∩[A191136(n+1), A191229(n+1)]`
-/

namespace A191139.P16774225526853914751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191139.P16774225526853914751

/-! ## A191139.P9884639415345808488

`∩[A191143(n+1), A191229(n+1)]`
-/

namespace A191139.P9884639415345808488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191139.P9884639415345808488

/-! ## A191139.P18194181111731226009

`∩[A191196(n+1), A191229(n+1)]`
-/

namespace A191139.P18194181111731226009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191139.P18194181111731226009

/-! ## A191139.P5932429945136739457

`∩[A191210(n+1), A191229(n+1)]`
-/

namespace A191139.P5932429945136739457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191139.P5932429945136739457

/-!
# A191140: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x+2 and 4x-2 are in a.

The programs for A191140, there is no canonical definition to state claims against.
-/

/-! ## A191140.P7317600702605902627

`∩[A114886(n+1), A191204(n+1)]`
-/

namespace A191140.P7317600702605902627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191140.P7317600702605902627

/-! ## A191140.P5913326852464575942

`∩[A191204(n+1), A333638(n+1)]`
-/

namespace A191140.P5913326852464575942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191140.P5913326852464575942

/-!
# A191141: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x+2 and 4x-1 are in a.

The programs for A191141, there is no canonical definition to state claims against.
-/

/-! ## A191141.P11153972108564725890

`2*A191127(n+1)-1`
-/

namespace A191141.P11153972108564725890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191127 (n + 1) - 1

end

end A191141.P11153972108564725890

/-! ## A191141.P6965362772619142475

`A008683(A151800(n))+2*A191127(n+1)`
-/

namespace A191141.P6965362772619142475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A151800 n).toNat + 2 * A191127 (n + 1)

end

end A191141.P6965362772619142475

/-! ## A191141.P8131316780796500909

`A008683(A007510(n+1))+2*A191127(n+1)`
-/

namespace A191141.P8131316780796500909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007510 (n + 1)).toNat + 2 * A191127 (n + 1)

end

end A191141.P8131316780796500909

/-! ## A191141.P12193649857715920129

`A008683(A077800(n+1))+2*A191127(n+1)`
-/

namespace A191141.P12193649857715920129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A077800 (n + 1)).toNat + 2 * A191127 (n + 1)

end

end A191141.P12193649857715920129

/-! ## A191141.P18415751857910240835

`A008836(p?[A004273(n)])+2*A191127(n+1)`
-/

namespace A191141.P18415751857910240835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 2 * A191127 (n + 1)

end

end A191141.P18415751857910240835

/-! ## A191141.P17801127544865305636

`A008683(A001359(n+1))+2*A191127(n+1)`
-/

namespace A191141.P17801127544865305636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat + 2 * A191127 (n + 1)

end

end A191141.P17801127544865305636

/-! ## A191141.P460907863855462754

`A008683(A268518(n+1))+2*A191127(n+1)`
-/

namespace A191141.P460907863855462754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A268518 (n + 1)).toNat + 2 * A191127 (n + 1)

end

end A191141.P460907863855462754

/-! ## A191141.P4066435060705538703

`A004273(A191127(n+1))`
-/

namespace A191141.P4066435060705538703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191127 (n + 1)).toNat

end

end A191141.P4066435060705538703

/-! ## A191141.P8262271619309864550

`A005408(A191127(n+1)-1)`
-/

namespace A191141.P8262271619309864550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A191127 (n + 1) - 1).toNat

end

end A191141.P8262271619309864550

/-! ## A191141.P5322927258389361969

`A005843(A191127(n+1))-A001222(A151800(n))`
-/

namespace A191141.P5322927258389361969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A191127 (n + 1)).toNat - A001222 (A151800 n).toNat

end

end A191141.P5322927258389361969

/-! ## A191141.P2113337249317831864

`A014681(2*A191127(n+1))`
-/

namespace A191141.P2113337249317831864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A191127 (n + 1)).toNat

end

end A191141.P2113337249317831864

/-! ## A191141.P3315662896034709941

`A249738(4*A191127(n+1))`
-/

namespace A191141.P3315662896034709941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (4 * A191127 (n + 1)).toNat

end

end A191141.P3315662896034709941

/-!
# A191143: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x+2 and 4x+1 are in a.

The programs for A191143, there is no canonical definition to state claims against.
-/

/-! ## A191143.P3694212250347933311

`2*A191128(n+1)-1`
-/

namespace A191143.P3694212250347933311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191128 (n + 1) - 1

end

end A191143.P3694212250347933311

/-! ## A191143.P530708953211954582

`4*A191120(n+1)-3`
-/

namespace A191143.P530708953211954582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A191120 (n + 1) - 3

end

end A191143.P530708953211954582

/-! ## A191143.P5656870907912789570

`(A191139(n+2)-2)/3`
-/

namespace A191143.P5656870907912789570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191139 (n + 2) - 2 : ℚ) / 3

end

end A191143.P5656870907912789570

/-! ## A191143.P3165766222479188037

`2*A191126(n+2)/3-1`
-/

namespace A191143.P3165766222479188037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A191126 (n + 2) : ℚ) / 3) - 1

end

end A191143.P3165766222479188037

/-! ## A191143.P12509974876487210672

`∩[A191136(n+1), A191210(n+1)]`
-/

namespace A191143.P12509974876487210672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191143.P12509974876487210672

/-! ## A191143.P6038827686056912359

`∩[A191120(n+1)-1, A191210(n+1)]`
-/

namespace A191143.P6038827686056912359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191120 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191143.P6038827686056912359

/-! ## A191143.P3514314396219976003

`∩[A191196(n+1), A191210(n+1)]`
-/

namespace A191143.P3514314396219976003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191143.P3514314396219976003

/-! ## A191143.P3279038613655217711

`∩[A191210(n+1), A191229(n+1)-1]`
-/

namespace A191143.P3279038613655217711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191143.P3279038613655217711

/-! ## A191143.P2538337951514509459

`∩[A191197(n+1), A191210(n+1)]`
-/

namespace A191143.P2538337951514509459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191143.P2538337951514509459

/-! ## A191143.P13613678130387051326

`∑[A004773(Δ[A191119(n+1)])]`
-/

namespace A191143.P13613678130387051326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191119 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191143.P13613678130387051326

/-! ## A191143.P17074850065328600940

`or(1, A019425(A191128(n+1)))`
-/

namespace A191143.P17074850065328600940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A019425 (A191128 (n + 1)).toNat)

end

end A191143.P17074850065328600940

/-! ## A191143.P13614074694199200259

`A019425(A191128(n+1))+A019425(A019425(n))`
-/

namespace A191143.P13614074694199200259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A191128 (n + 1)).toNat + A019425 (A019425 n).toNat

end

end A191143.P13614074694199200259

/-! ## A191143.P17878962646417685737

`A058281(A191135(n+1))`
-/

namespace A191143.P17878962646417685737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A191135 (n + 1)).toNat

end

end A191143.P17878962646417685737

/-! ## A191143.P12837628275238715227

`A004273(A191128(n+1))`
-/

namespace A191143.P12837628275238715227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191128 (n + 1)).toNat

end

end A191143.P12837628275238715227

/-! ## A191143.P155846944523937002

`A004273(A191120(n+1)+A191120(n+1)-1)`
-/

namespace A191143.P155846944523937002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191120 (n + 1) + (A191120 (n + 1) - 1)).toNat

end

end A191143.P155846944523937002

/-! ## A191143.P12796448630915541582

`A004773(A191119(n+2)-1)`
-/

namespace A191143.P12796448630915541582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A191119 (n + 2) - 1).toNat

end

end A191143.P12796448630915541582

/-! ## A191143.P487366821592433341

`A191135(n+1)+A002264(A191135(n+1)-1)`
-/

namespace A191143.P487366821592433341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191135 (n + 1) + A002264 (A191135 (n + 1) - 1).toNat

end

end A191143.P487366821592433341

/-! ## A191143.P10126284234313205391

`A042965(A191119(n+2))`
-/

namespace A191143.P10126284234313205391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A191119 (n + 2)).toNat

end

end A191143.P10126284234313205391

/-! ## A191143.P150079171361288768

`A004773(A191135(n+1)+1)-1`
-/

namespace A191143.P150079171361288768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A191135 (n + 1) + 1).toNat - 1

end

end A191143.P150079171361288768

/-!
# A191144: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x+2 and 4x+2 are in a.

The programs for A191144, there is no canonical definition to state claims against.
-/

/-! ## A191144.P6263344314363980742

`∩[A191208(n+1), A191212(n+1)]`
-/

namespace A191144.P6263344314363980742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191144.P6263344314363980742

/-! ## A191144.P4178501947142151918

`∩[A191208(n+1), A191213(n+1)]`
-/

namespace A191144.P4178501947142151918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191144.P4178501947142151918

/-! ## A191144.P10251052005567565303

`∩[A191213(n+1), A331914(n+1)]`
-/

namespace A191144.P10251052005567565303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191144.P10251052005567565303

/-! ## A191144.P2920638101259756003

`∩[A191212(n+1), A352826(n+1)]`
-/

namespace A191144.P2920638101259756003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191144.P2920638101259756003

/-! ## A191144.P7653002788424981782

`∩[A191213(n+1), A352826(n+1)]`
-/

namespace A191144.P7653002788424981782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191144.P7653002788424981782

/-!
# A191145: Increasing sequence S generated by these rules: a(1)=1, and if x is in S then both 3x+2 and 4x+3 are in S.

The programs for A191145, there is no canonical definition to state claims against.
-/

/-! ## A191145.P6330648052925891320

`2*A025613(n+1)-1`
-/

namespace A191145.P6330648052925891320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025613 (n + 1) - 1

end

end A191145.P6330648052925891320

/-! ## A191145.P7931296073310534207

`A228104(n+1)/3-1`
-/

namespace A191145.P7931296073310534207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228104 (n + 1) : ℚ) / 3 - 1

end

end A191145.P7931296073310534207

/-! ## A191145.P5629460354930188424

`A025613(n+1)+A025613(n+1)-A237442(A276380(n+1))`
-/

namespace A191145.P5629460354930188424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025613 (n + 1) + (A025613 (n + 1) - A237442 (A276380 (n + 1)).toNat)

end

end A191145.P5629460354930188424

/-! ## A191145.P3782972195552530585

`A025613(n+1)+A025613(n+1)-A000040(A336751(n+1))%2`
-/

namespace A191145.P3782972195552530585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025613 (n + 1) + (A025613 (n + 1) - Int.tmod (A000040 (A336751 (n + 1)).toNat) 2)

end

end A191145.P3782972195552530585

/-! ## A191145.P10726582608849400486

`A057428(n+1)+2*A025613(n+1)`
-/

namespace A191145.P10726582608849400486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + 2 * A025613 (n + 1)

end

end A191145.P10726582608849400486

/-! ## A191145.P1759249736309113

`A008683(A045344(n+1))+2*A025613(n+1)`
-/

namespace A191145.P1759249736309113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A045344 (n + 1)).toNat + 2 * A025613 (n + 1)

end

end A191145.P1759249736309113

/-! ## A191145.P17905694931628068754

`A328384(p?[A103221(n)])+2*A025613(n+1)`
-/

namespace A191145.P17905694931628068754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 2 * A025613 (n + 1)

end

end A191145.P17905694931628068754

/-! ## A191145.P3929226103270463300

`A025613(n+1)+A025613(n+1)-A032741(A000040(n+1))`
-/

namespace A191145.P3929226103270463300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025613 (n + 1) + (A025613 (n + 1) - A032741 (A000040 (n + 1)).toNat)

end

end A191145.P3929226103270463300

/-! ## A191145.P6159965849848518566

`A069353(A183987(n+1))`
-/

namespace A191145.P6159965849848518566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (A183987 (n + 1)).toNat

end

end A191145.P6159965849848518566

/-! ## A191145.P7901115599053925749

`A190812(A183988(n+1))`
-/

namespace A191145.P7901115599053925749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190812 (A183988 (n + 1)).toNat

end

end A191145.P7901115599053925749

/-!
# A191146: Integers in (2+A191113)/3; contains A191113 as a proper subsequence.

The programs for A191146, there is no canonical definition to state claims against.
-/

/-! ## A191146.P675307151428769495

`ceil(A191151(n+1)/2)`
-/

namespace A191146.P675307151428769495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191151 (n + 1) : ℚ) / 2⌉

end

end A191146.P675307151428769495

/-! ## A191146.P14501609378521823403

`(A191155(n+1)+3)/4`
-/

namespace A191146.P14501609378521823403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191155 (n + 1) + 3 : ℚ) / 4

end

end A191146.P14501609378521823403

/-! ## A191146.P7962978174958305257

`(A191157(n+1)+4)/5`
-/

namespace A191146.P7962978174958305257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191157 (n + 1) + 4 : ℚ) / 5

end

end A191146.P7962978174958305257

/-! ## A191146.P11441670335942105516

`A191157(n+1)+1-A191155(n+1)`
-/

namespace A191146.P11441670335942105516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191157 (n + 1) + (1 - A191155 (n + 1))

end

end A191146.P11441670335942105516

/-! ## A191146.P3195646676698450794

`A020639(A004277(n))*A191166(A028310(n))`
-/

namespace A191146.P3195646676698450794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A191166 (A028310 n).toNat

end

end A191146.P3195646676698450794

/-! ## A191146.P16570907075221818237

`A020639(A008574(n))*A191166(A028310(n))`
-/

namespace A191146.P16570907075221818237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A191166 (A028310 n).toNat

end

end A191146.P16570907075221818237

/-! ## A191146.P16505948053511182227

`A020639(A001223(n+1))*A191166(A028310(n))`
-/

namespace A191146.P16505948053511182227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001223 (n + 1)).toNat * A191166 (A028310 n).toNat

end

end A191146.P16505948053511182227

/-! ## A191146.P44714046920060396

`(A191151(n+1)+A000007(n+2)+1)/2`
-/

namespace A191146.P44714046920060396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191151 (n + 1) + (A000007 (n + 2) + 1) : ℚ) / 2

end

end A191146.P44714046920060396

/-! ## A191146.P8885410264183998644

`A249122(A191151(n+1)+2)`
-/

namespace A191146.P8885410264183998644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A191151 (n + 1) + 2).toNat

end

end A191146.P8885410264183998644

/-! ## A191146.P5745910852320624938

`A245092(A191151(n+1)+1)/2`
-/

namespace A191146.P5745910852320624938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (A191151 (n + 1) + 1).toNat : ℚ) / 2

end

end A191146.P5745910852320624938

/-! ## A191146.P13130268846239013103

`A000463(A191151(n+1))`
-/

namespace A191146.P13130268846239013103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191151 (n + 1)).toNat

end

end A191146.P13130268846239013103

/-! ## A191146.P16914250866938819882

`A260739(A191151(n+1)+1)`
-/

namespace A191146.P16914250866938819882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A191151 (n + 1) + 1).toNat

end

end A191146.P16914250866938819882

/-! ## A191146.P17405905157575385585

`A153733(A191151(n+1)+1)/2`
-/

namespace A191146.P17405905157575385585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153733 (A191151 (n + 1) + 1).toNat : ℚ) / 2

end

end A191146.P17405905157575385585

/-! ## A191146.P13509718156980624261

`A004277(A191151(n+1)+3)/4-1`
-/

namespace A191146.P13509718156980624261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A191151 (n + 1) + 3).toNat : ℚ) / 4 - 1

end

end A191146.P13509718156980624261

/-! ## A191146.P1422359590162890491

`record[round(A092092(A191113(n+1))/2)]`
-/

namespace A191146.P1422359590162890491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A092092 (A191113 (n + 1)).toNat : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191146.P1422359590162890491

/-! ## A191146.P11539931072280785049

`A003602(record[A092092(A191113(n+1))])`
-/

namespace A191146.P11539931072280785049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A191113 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191146.P11539931072280785049

/-! ## A191146.P11821065626837373468

`A008621(A191155(n+1))`
-/

namespace A191146.P11821065626837373468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A191155 (n + 1)).toNat

end

end A191146.P11821065626837373468

/-! ## A191146.P10280181479190730233

`A008621(2*A191151(n+1))`
-/

namespace A191146.P10280181479190730233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A191151 (n + 1)).toNat

end

end A191146.P10280181479190730233

/-! ## A191146.P9705339788156248508

`A008621(A191151(n+1)+A191151(n+1)+1)`
-/

namespace A191146.P9705339788156248508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A191151 (n + 1) + (A191151 (n + 1) + 1)).toNat

end

end A191146.P9705339788156248508

/-!
# A191148: Number of n-cell fixed line-convex polycubes in 3 dimensions.

The programs for A191148, there is no canonical definition to state claims against.
-/

/-! ## A191148.P13718198112311501585

`A055256(3*A084159(n))`
-/

namespace A191148.P13718198112311501585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055256 (3 * A084159 n).toNat

end

end A191148.P13718198112311501585

/-!
# A191149: Integers in (2+A191113)/4; contains A191113 as a proper subsequence.

The programs for A191149, there is no canonical definition to state claims against.
-/

/-! ## A191149.P3213589984555008232

`(A191154(n+1)+2)/3`
-/

namespace A191149.P3213589984555008232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191154 (n + 1) + 2 : ℚ) / 3

end

end A191149.P3213589984555008232

/-! ## A191149.P15918455110429012145

`(A191158(n+1)+4)/5`
-/

namespace A191149.P15918455110429012145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191158 (n + 1) + 4 : ℚ) / 5

end

end A191149.P15918455110429012145

/-! ## A191149.P9873942591931251249

`2*A191154(n+1)-A191158(n+1)`
-/

namespace A191149.P9873942591931251249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191154 (n + 1) - A191158 (n + 1)

end

end A191149.P9873942591931251249

/-! ## A191149.P3138720250563378221

`record[A249122(A191121(n+1))+1]`
-/

namespace A191149.P3138720250563378221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A191121 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191149.P3138720250563378221

/-! ## A191149.P2625840567410063858

`record[A249122(A191166(n+1))+1]`
-/

namespace A191149.P2625840567410063858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A191166 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191149.P2625840567410063858

/-! ## A191149.P3751422501355310213

`record[A025480(A191121(n+1)+1)]`
-/

namespace A191149.P3751422501355310213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A191121 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191149.P3751422501355310213

/-! ## A191149.P6974049369607834182

`A008620(A191154(n+1))`
-/

namespace A191149.P6974049369607834182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A191154 (n + 1)).toNat

end

end A191149.P6974049369607834182

/-! ## A191149.P11111931083304444647

`record[A003602(A191113(n+1))]`
-/

namespace A191149.P11111931083304444647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A191113 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191149.P11111931083304444647

/-! ## A191149.P8189931847736914875

`record[A025480(A191129(n+1))+1]`
-/

namespace A191149.P8189931847736914875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A191129 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191149.P8189931847736914875

/-! ## A191149.P4998748010744897160

`A058207(A191158(n+1))`
-/

namespace A191149.P4998748010744897160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (A191158 (n + 1)).toNat

end

end A191149.P4998748010744897160

/-!
# A191150: Hypersigma(n), definition 1: sum of the divisors of n plus the recursive sum of the divisors of the restricted divisors.

The programs for A191150, there is no canonical definition to state claims against.
-/

/-! ## A191150.P7198400816468532756

`A191161(n+1)+A000007(n)-A002033(n)`
-/

namespace A191150.P7198400816468532756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191161 (n + 1) + (A000007 n - A002033 n)

end

end A191150.P7198400816468532756

/-! ## A191150.P12872301624258042533

`A191161(n+1)-A002033(n)%A000124(n)`
-/

namespace A191150.P12872301624258042533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191161 (n + 1) - Int.tmod (A002033 n) (A000124 n)

end

end A191150.P12872301624258042533

/-! ## A191150.P18218727849789595370

`A191161(n+1)+A002033(n)-A067824(n+1)`
-/

namespace A191150.P18218727849789595370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191161 (n + 1) + (A002033 n - A067824 (n + 1))

end

end A191150.P18218727849789595370

/-! ## A191150.P8631663588335379534

`A074206(n+1)+A191161(n+1)-A067824(n+1)`
-/

namespace A191150.P8631663588335379534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) + (A191161 (n + 1) - A067824 (n + 1))

end

end A191150.P8631663588335379534

/-! ## A191150.P8720869997933541598

`A191161(n+1)-A025480(A067824(n+1))`
-/

namespace A191150.P8720869997933541598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191161 (n + 1) - A025480 (A067824 (n + 1)).toNat

end

end A191150.P8720869997933541598

/-! ## A191150.P12248997723284052046

`A191161(n+1)-A008624(A253249(n+1))`
-/

namespace A191150.P12248997723284052046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191161 (n + 1) - A008624 (A253249 (n + 1)).toNat

end

end A191150.P12248997723284052046

/-! ## A191150.P12891942628887198489

`A191161(n+1)-A345182(A045965(n+1))`
-/

namespace A191150.P12891942628887198489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191161 (n + 1) - A345182 (A045965 (n + 1)).toNat

end

end A191150.P12891942628887198489

/-!
# A191151: Integers in (2+A191114)/3; contains A191114 as a proper subsequence.

The programs for A191151, there is no canonical definition to state claims against.
-/

/-! ## A191151.P11242313842097187725

`ceil(A191155(n+1)/2)`
-/

namespace A191151.P11242313842097187725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191155 (n + 1) : ℚ) / 2⌉

end

end A191151.P11242313842097187725

/-! ## A191151.P7253066342764862384

`2*A191146(n+1)-1`
-/

namespace A191151.P7253066342764862384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191146 (n + 1) - 1

end

end A191151.P7253066342764862384

/-! ## A191151.P4863487499963115403

`A191146(A000027(n+1))+A191146(n+1)-1`
-/

namespace A191151.P4863487499963115403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191146 (A000027 (n + 1)).toNat + (A191146 (n + 1) - 1)

end

end A191151.P4863487499963115403

/-! ## A191151.P12347033294322380387

`A000265((A191155(n+1)+1)/2)`
-/

namespace A191151.P12347033294322380387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A191155 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A191151.P12347033294322380387

/-! ## A191151.P2475636877919735973

`A000265(A191155(n+1)+1)`
-/

namespace A191151.P2475636877919735973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A191155 (n + 1) + 1).toNat

end

end A191151.P2475636877919735973

/-! ## A191151.P10583963834054026591

`A016825(A191146(n+1)-1)/2`
-/

namespace A191151.P10583963834054026591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A191146 (n + 1) - 1).toNat : ℚ) / 2

end

end A191151.P10583963834054026591

/-! ## A191151.P5926659320567984245

`A004273(A191146(n+1))`
-/

namespace A191151.P5926659320567984245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191146 (n + 1)).toNat

end

end A191151.P5926659320567984245

/-! ## A191151.P4746563441877754852

`A005408(A191146(n+1)-1)`
-/

namespace A191151.P4746563441877754852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A191146 (n + 1) - 1).toNat

end

end A191151.P4746563441877754852

/-! ## A191151.P14634275065246896803

`A014681(2*A191146(n+1))`
-/

namespace A191151.P14634275065246896803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A191146 (n + 1)).toNat

end

end A191151.P14634275065246896803

/-! ## A191151.P9908190585889350815

`record[A092092(A191113(n+1))]`
-/

namespace A191151.P9908190585889350815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A191113 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191151.P9908190585889350815

/-! ## A191151.P11870479756536620725

`A000463(A191155(n+1))`
-/

namespace A191151.P11870479756536620725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191155 (n + 1)).toNat

end

end A191151.P11870479756536620725

/-! ## A191151.P11261944805086211626

`A004525(A191155(n+1)+1)`
-/

namespace A191151.P11261944805086211626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A191155 (n + 1) + 1).toNat

end

end A191151.P11261944805086211626

/-! ## A191151.P18050900546921703708

`A008619(A191155(n+1)-1)`
-/

namespace A191151.P18050900546921703708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A191155 (n + 1) - 1).toNat

end

end A191151.P18050900546921703708

/-! ## A191151.P16481567901918826656

`A008619(xor(1, A191155(n+1)))`
-/

namespace A191151.P16481567901918826656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor 1 (A191155 (n + 1))).toNat

end

end A191151.P16481567901918826656

/-! ## A191151.P16126243741008401758

`A068962(A191157(n+1))`
-/

namespace A191151.P16126243741008401758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A191157 (n + 1)).toNat

end

end A191151.P16126243741008401758

/-! ## A191151.P10901656155349373546

`A249122(2*A191157(n+1))+1`
-/

namespace A191151.P10901656155349373546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (2 * A191157 (n + 1)).toNat + 1

end

end A191151.P10901656155349373546

/-!
# A191152: [4n*e]-2[2n*e], where [ ]=floor.

The programs for A191152, the canonical program `A191152.P2758246107437601276` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191152 has offset 1).

The definition of A191152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191152.P2758246107437601276

`floor(4*(n+1)*e)-2*floor(2*(n+1)*e)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191152

/-- `floor(4*(n+1)*e)-2*floor(2*(n+1)*e)` -/
def P2758246107437601276.Spec : Prop :=
  ∀ n, P2758246107437601276.a n = A191152 (n + 1)

theorem P2758246107437601276.correct : P2758246107437601276.Spec := by
  intro n
  simp only [A191152, Nat.add_sub_cancel]

end A191152

/-! ## A191152.P16777330126483815598

`floor(4*e*(n+1))%2`
-/

namespace A191152.P16777330126483815598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊4 * (Real.exp 1 * (n + 1 : ℝ))⌋ 2

end

end A191152.P16777330126483815598

namespace A191152

/-- `floor(4*e*(n+1))%2` -/
def P16777330126483815598.Spec : Prop :=
  ∀ n, P16777330126483815598.a n = A191152 (n + 1)

end A191152

/-! ## A191152.P12028436127427370302

`A190843(2*(n+1))`
-/

namespace A191152.P12028436127427370302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190843 (2 * (n + 1))

end

end A191152.P12028436127427370302

namespace A191152

/-- `A190843(2*(n+1))` -/
def P12028436127427370302.Spec : Prop :=
  ∀ n, P12028436127427370302.a n = A191152 (n + 1)

end A191152

/-! ## A191152.P14684175895522971279

`round(acot(A024573(2*(n+1))))`
-/

namespace A191152.P14684175895522971279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A024573 (2 * (n + 1)) : ℝ))

end

end A191152.P14684175895522971279

namespace A191152

/-- `round(acot(A024573(2*(n+1))))` -/
def P14684175895522971279.Spec : Prop :=
  ∀ n, P14684175895522971279.a n = A191152 (n + 1)

end A191152

/-! ## A191152.P14059130850324841944

`A171386(A024573(2*(n+1))+2)`
-/

namespace A191152.P14059130850324841944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171386 (A024573 (2 * (n + 1)) + 2).toNat

end

end A191152.P14059130850324841944

namespace A191152

/-- `A171386(A024573(2*(n+1))+2)` -/
def P14059130850324841944.Spec : Prop :=
  ∀ n, P14059130850324841944.a n = A191152 (n + 1)

end A191152

/-! ## A191152.P7870790624266923629

`C(A024573(n+1), A257509(A024573(2*(n+1))))`
-/

namespace A191152.P7870790624266923629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A024573 (n + 1)).toNat (A257509 (A024573 (2 * (n + 1))).toNat).toNat

end

end A191152.P7870790624266923629

namespace A191152

/-- `C(A024573(n+1), A257509(A024573(2*(n+1))))` -/
def P7870790624266923629.Spec : Prop :=
  ∀ n, (P7870790624266923629.a n : ℤ) = A191152 (n + 1)

end A191152

/-! ## A191152.P4540875250707474145

`C(A049419(A005117(n+1)), A024573(2*n+2))`
-/

namespace A191152.P4540875250707474145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049419 (A005117 (n + 1)).toNat).toNat (A024573 (2 * n + 2)).toNat

end

end A191152.P4540875250707474145

namespace A191152

/-- `C(A049419(A005117(n+1)), A024573(2*n+2))` -/
def P4540875250707474145.Spec : Prop :=
  ∀ n, (P4540875250707474145.a n : ℤ) = A191152 (n + 1)

end A191152

/-! ## A191152.P10051468353515444484

`A372544(4*(n+1))`
-/

namespace A191152.P10051468353515444484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372544 (4 * (n + 1))

end

end A191152.P10051468353515444484

namespace A191152

/-- `A372544(4*(n+1))` -/
def P10051468353515444484.Spec : Prop :=
  ∀ n, P10051468353515444484.a n = A191152 (n + 1)

end A191152

/-! ## A191152.P18100225977205015716

`and(1, A000572(A005843(2*(n+1))))`
-/

namespace A191152.P18100225977205015716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000572 (A005843 (2 * (n + 1))).toNat)

end

end A191152.P18100225977205015716

namespace A191152

/-- `and(1, A000572(A005843(2*(n+1))))` -/
def P18100225977205015716.Spec : Prop :=
  ∀ n, P18100225977205015716.a n = A191152 (n + 1)

end A191152

/-! ## A191152.P4563090133599873742

`C(A049419(A000040(n+1)), A024573(2*n+2))`
-/

namespace A191152.P4563090133599873742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049419 (A000040 (n + 1)).toNat).toNat (A024573 (2 * n + 2)).toNat

end

end A191152.P4563090133599873742

namespace A191152

/-- `C(A049419(A000040(n+1)), A024573(2*n+2))` -/
def P4563090133599873742.Spec : Prop :=
  ∀ n, (P4563090133599873742.a n : ℤ) = A191152 (n + 1)

end A191152

/-!
# A191153: a(n) = floor(2*n*Pi) - 2*floor(n*Pi).

The programs for A191153, the canonical program `A191153.P5889735851470176385` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191153 has offset 1).

The definition of A191153 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*(n+1)*π)-2*floor((n+1)*π)` (program `A191153.P5889735851470176385`, by `A191153.P5889735851470176385.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191153.P5889735851470176385

`floor(2*(n+1)*π)-2*floor((n+1)*π)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191153

/-- `floor(2*(n+1)*π)-2*floor((n+1)*π)` -/
def P5889735851470176385.Spec : Prop :=
  ∀ n, P5889735851470176385.a n = A191153 (n + 1)

theorem P5889735851470176385.correct : P5889735851470176385.Spec := by
  intro n
  simp only [A191153, Nat.add_sub_cancel]

end A191153

/-!
# A191154: Integers in (A191115)/4; contains A191115 as a proper subsequence.

The programs for A191154, there is no canonical definition to state claims against.
-/

/-! ## A191154.P5240945825809954278

`3*A191149(n+1)-2`
-/

namespace A191154.P5240945825809954278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191149 (n + 1) - 2

end

end A191154.P5240945825809954278

/-! ## A191154.P3457300186398898202

`(A191158(n+1)+A191149(n+1))/2`
-/

namespace A191154.P3457300186398898202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191158 (n + 1) + A191149 (n + 1) : ℚ) / 2

end

end A191154.P3457300186398898202

/-! ## A191154.P2337502736852015658

`A007427(A205715(n+1))+3*A191149(n+1)`
-/

namespace A191154.P2337502736852015658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A205715 (n + 1)).toNat + 3 * A191149 (n + 1)

end

end A191154.P2337502736852015658

/-! ## A191154.P2388703910497993618

`A191149(n+1)+A014682(A191158(n+1)-A191149(n+1))`
-/

namespace A191154.P2388703910497993618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191149 (n + 1) + A014682 (A191158 (n + 1) - A191149 (n + 1)).toNat

end

end A191154.P2388703910497993618

/-! ## A191154.P11961061101264932330

`A014682(A191158(n+1)+A191149(n+1))`
-/

namespace A191154.P11961061101264932330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191158 (n + 1) + A191149 (n + 1)).toNat

end

end A191154.P11961061101264932330

/-! ## A191154.P13215183543081296912

`A016777(A191149(n+1)-1)`
-/

namespace A191154.P13215183543081296912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A191149 (n + 1) - 1).toNat

end

end A191154.P13215183543081296912

/-! ## A191154.P10570302073880716702

`A033627(A191149(n+1)+char[A052938(n)])`
-/

namespace A191154.P10570302073880716702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A191149 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A191154.P10570302073880716702

/-! ## A191154.P14628263286048012600

`A191149(n+1)+A005843(A191149(n+1)-1)`
-/

namespace A191154.P14628263286048012600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191149 (n + 1) + A005843 (A191149 (n + 1) - 1).toNat

end

end A191154.P14628263286048012600

/-! ## A191154.P9724822284247758328

`record[A123684(A191121(n+1))]`
-/

namespace A191154.P9724822284247758328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (A191121 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191154.P9724822284247758328

/-! ## A191154.P14929961768636978438

`A023444(3*A191149(n+1))`
-/

namespace A191154.P14929961768636978438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (3 * A191149 (n + 1)).toNat

end

end A191154.P14929961768636978438

/-! ## A191154.P6356833347680371146

`A113655(3*A191149(n+1))`
-/

namespace A191154.P6356833347680371146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (3 * A191149 (n + 1)).toNat

end

end A191154.P6356833347680371146

/-! ## A191154.P14927389880333286137

`record[A249122(A191121(n+2)+1)]`
-/

namespace A191154.P14927389880333286137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A191121 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191154.P14927389880333286137

/-! ## A191154.P10686674887023052269

`record[A249122(3*A191166(n+1))]`
-/

namespace A191154.P10686674887023052269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (3 * A191166 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191154.P10686674887023052269

/-! ## A191154.P10449480310024300392

`A166871(A191158(n+1))`
-/

namespace A191154.P10449480310024300392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166871 (A191158 (n + 1)).toNat

end

end A191154.P10449480310024300392

/-! ## A191154.P6324421813661105046

`record[A001057(A191138(n+1))]`
-/

namespace A191154.P6324421813661105046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A191138 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191154.P6324421813661105046

/-! ## A191154.P17042045941215697011

`record[A025480(A191121(n+2))]`
-/

namespace A191154.P17042045941215697011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A191121 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191154.P17042045941215697011

/-! ## A191154.P14205493515562535539

`record[A032742(A191113(n+2)/2)]`
-/

namespace A191154.P14205493515562535539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((A191113 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191154.P14205493515562535539

/-!
# A191155: Integers in (2+A191116)/3; contains A191116 as a proper subsequence.

The programs for A191155, there is no canonical definition to state claims against.
-/

/-! ## A191155.P16778725638124193446

`2*A191151(n+1)-1`
-/

namespace A191155.P16778725638124193446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191151 (n + 1) - 1

end

end A191155.P16778725638124193446

/-! ## A191155.P10981126699376554773

`4*A191146(n+1)-3`
-/

namespace A191155.P10981126699376554773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A191146 (n + 1) - 3

end

end A191155.P10981126699376554773

/-! ## A191155.P13160199375632494185

`A105812(2*(n+1))+2*A191151(n+1)`
-/

namespace A191155.P13160199375632494185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * (n + 1)) + 2 * A191151 (n + 1)

end

end A191155.P13160199375632494185

/-! ## A191155.P13186363495816920127

`A008683(A007520(n+1))+2*A191151(n+1)`
-/

namespace A191155.P13186363495816920127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007520 (n + 1)).toNat + 2 * A191151 (n + 1)

end

end A191155.P13186363495816920127

/-! ## A191155.P12041829101683667316

`A008683(A005385(n+1))+2*A191151(n+1)`
-/

namespace A191155.P12041829101683667316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005385 (n + 1)).toNat + 2 * A191151 (n + 1)

end

end A191155.P12041829101683667316

/-! ## A191155.P4839229738253204402

`A016825(A191146(n+1))-5`
-/

namespace A191155.P4839229738253204402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A191146 (n + 1)).toNat - 5

end

end A191155.P4839229738253204402

/-! ## A191155.P1818010317719560278

`or(1, A019425(A191151(n+1)))`
-/

namespace A191155.P1818010317719560278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A019425 (A191151 (n + 1)).toNat)

end

end A191155.P1818010317719560278

/-! ## A191155.P12083317764617365674

`or(1, A008574(A191146(n+1)-1))`
-/

namespace A191155.P12083317764617365674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008574 (A191146 (n + 1) - 1).toNat)

end

end A191155.P12083317764617365674

/-! ## A191155.P1757568050638741266

`A191157(n+1)-A249122(A191151(n+1))`
-/

namespace A191155.P1757568050638741266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191157 (n + 1) - A249122 (A191151 (n + 1)).toNat

end

end A191155.P1757568050638741266

/-! ## A191155.P313083706978148830

`A245092(A191151(n+1)-1)+A191151(n+1)`
-/

namespace A191155.P313083706978148830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A191151 (n + 1) - 1).toNat + A191151 (n + 1)

end

end A191155.P313083706978148830

/-! ## A191155.P4452708687394533021

`A019425(A191151(n+1))+A019425(A019425(n))`
-/

namespace A191155.P4452708687394533021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A191151 (n + 1)).toNat + A019425 (A019425 n).toNat

end

end A191155.P4452708687394533021

/-! ## A191155.P11705334331723217328

`A004273(A191151(n+1))`
-/

namespace A191155.P11705334331723217328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191151 (n + 1)).toNat

end

end A191155.P11705334331723217328

/-! ## A191155.P14388254322938322108

`A005408(A191151(n+1)-1)`
-/

namespace A191155.P14388254322938322108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A191151 (n + 1) - 1).toNat

end

end A191155.P14388254322938322108

/-! ## A191155.P2161780967013242828

`A026491(A191151(n+1)-1)`
-/

namespace A191155.P2161780967013242828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A191151 (n + 1) - 1).toNat

end

end A191155.P2161780967013242828

/-! ## A191155.P14661329764822797619

`A092486(2*A191151(n+1))`
-/

namespace A191155.P14661329764822797619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (2 * A191151 (n + 1)).toNat

end

end A191155.P14661329764822797619

/-! ## A191155.P12668529131138358016

`A005843(A191151(n+1)-1)+1`
-/

namespace A191155.P12668529131138358016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A191151 (n + 1) - 1).toNat + 1

end

end A191155.P12668529131138358016

/-! ## A191155.P12583008690358805189

`A004273(A191146(n+1)+A191146(n+1)-1)`
-/

namespace A191155.P12583008690358805189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191146 (n + 1) + (A191146 (n + 1) - 1)).toNat

end

end A191155.P12583008690358805189

/-! ## A191155.P16174706981592475055

`A191151(n+1)+A153733(A191151(n+1)-1)`
-/

namespace A191155.P16174706981592475055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191151 (n + 1) + A153733 (A191151 (n + 1) - 1).toNat

end

end A191155.P16174706981592475055

/-! ## A191155.P13909139148864581127

`A005408(A191146(n+1)+A191146(n+1)-2)`
-/

namespace A191155.P13909139148864581127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A191146 (n + 1) + (A191146 (n + 1) - 2)).toNat

end

end A191155.P13909139148864581127

/-! ## A191155.P16821835179772282341

`A008683(A005385(n+1))+A005843(A191151(n+1))`
-/

namespace A191155.P16821835179772282341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005385 (n + 1)).toNat + A005843 (A191151 (n + 1)).toNat

end

end A191155.P16821835179772282341

/-!
# A191156: a(n) = [6*n*Pi] - 2*[3*n*Pi], where [ ]=floor.

The programs for A191156, the canonical program `A191156.P3153681205222552865` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191156 has offset 1).

The definition of A191156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191156.P3153681205222552865

`floor(6*(n+1)*π)-2*floor(3*(n+1)*π)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191156

/-- `floor(6*(n+1)*π)-2*floor(3*(n+1)*π)` -/
def P3153681205222552865.Spec : Prop :=
  ∀ n, P3153681205222552865.a n = A191156 (n + 1)

theorem P3153681205222552865.correct : P3153681205222552865.Spec := by
  intro n
  simp only [A191156, Nat.add_sub_cancel]

end A191156

/-! ## A191156.P1031481666879102488

`floor(6*π*(n+1))%2`
-/

namespace A191156.P1031481666879102488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊6 * (Real.pi * (n + 1 : ℝ))⌋ 2

end

end A191156.P1031481666879102488

namespace A191156

/-- `floor(6*π*(n+1))%2` -/
def P1031481666879102488.Spec : Prop :=
  ∀ n, P1031481666879102488.a n = A191156 (n + 1)

end A191156

/-! ## A191156.P8481394818647594057

`and(1, floor(6*π*(n+1)))`
-/

namespace A191156.P8481394818647594057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊6 * (Real.pi * (n + 1 : ℝ))⌋

end

end A191156.P8481394818647594057

namespace A191156

/-- `and(1, floor(6*π*(n+1)))` -/
def P8481394818647594057.Spec : Prop :=
  ∀ n, P8481394818647594057.a n = A191156 (n + 1)

end A191156

/-! ## A191156.P5287515454987938062

`char[A191176(n+1)-1]`
-/

namespace A191156.P5287515454987938062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191176 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A191156.P5287515454987938062

namespace A191156

/-- `char[A191176(n+1)-1]` -/
def P5287515454987938062.Spec : Prop :=
  ∀ n, (P5287515454987938062.a n : ℤ) = A191156 (n + 1)

end A191156

/-! ## A191156.P4268367349822997631

`A191153(3*(n+1))`
-/

namespace A191156.P4268367349822997631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191153 (3 * (n + 1))

end

end A191156.P4268367349822997631

namespace A191156

/-- `A191153(3*(n+1))` -/
def P4268367349822997631.Spec : Prop :=
  ∀ n, P4268367349822997631.a n = A191156 (n + 1)

end A191156

/-! ## A191156.P15791161918915921118

`floor(1/A024584(3*(n+1)))`
-/

namespace A191156.P15791161918915921118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A024584 (3 * (n + 1)) : ℚ)⌋

end

end A191156.P15791161918915921118

namespace A191156

/-- `floor(1/A024584(3*(n+1)))` -/
def P15791161918915921118.Spec : Prop :=
  ∀ n, P15791161918915921118.a n = A191156 (n + 1)

end A191156

/-! ## A191156.P7237057112224521197

`A000007(A024584(3*(n+1))-1)`
-/

namespace A191156.P7237057112224521197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A024584 (3 * (n + 1)) - 1).toNat

end

end A191156.P7237057112224521197

namespace A191156

/-- `A000007(A024584(3*(n+1))-1)` -/
def P7237057112224521197.Spec : Prop :=
  ∀ n, P7237057112224521197.a n = A191156 (n + 1)

end A191156

/-! ## A191156.P186261015368546891

`A000007(xor(1, A024584(3*(n+1))))`
-/

namespace A191156.P186261015368546891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 1 (A024584 (3 * (n + 1)))).toNat

end

end A191156.P186261015368546891

namespace A191156

/-- `A000007(xor(1, A024584(3*(n+1))))` -/
def P186261015368546891.Spec : Prop :=
  ∀ n, P186261015368546891.a n = A191156 (n + 1)

end A191156

/-! ## A191156.P9984322127997637634

`A115788(6*(n+1))`
-/

namespace A191156.P9984322127997637634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115788 (6 * (n + 1))

end

end A191156.P9984322127997637634

namespace A191156

/-- `A115788(6*(n+1))` -/
def P9984322127997637634.Spec : Prop :=
  ∀ n, P9984322127997637634.a n = A191156 (n + 1)

end A191156

/-! ## A191156.P17542860774158310927

`A000035(A187320(5*(n+1)+n+1))`
-/

namespace A191156.P17542860774158310927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A187320 (5 * (n + 1) + (n + 1))).toNat

end

end A191156.P17542860774158310927

namespace A191156

/-- `A000035(A187320(5*(n+1)+n+1))` -/
def P17542860774158310927.Spec : Prop :=
  ∀ n, P17542860774158310927.a n = A191156 (n + 1)

end A191156

/-!
# A191157: Integers in (2+A191117)/3; contains A191117 as a proper subsequence.

The programs for A191157, there is no canonical definition to state claims against.
-/

/-! ## A191157.P1197270528560721573

`5*A191146(n+1)-4`
-/

namespace A191157.P1197270528560721573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A191146 (n + 1) - 4

end

end A191157.P1197270528560721573

/-! ## A191157.P1549986402697907316

`5*(A191151(n+1)+1)/2-4`
-/

namespace A191157.P1549986402697907316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((A191151 (n + 1) + 1 : ℚ) / 2) - 4

end

end A191157.P1549986402697907316

/-! ## A191157.P6624299235122321807

`A191146(n+1)+A191155(n+1)-1`
-/

namespace A191157.P6624299235122321807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191146 (n + 1) + (A191155 (n + 1) - 1)

end

end A191157.P6624299235122321807

/-! ## A191157.P3112474173925155611

`A016861(A191146(n+1)-1)`
-/

namespace A191157.P3112474173925155611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A191146 (n + 1) - 1).toNat

end

end A191157.P3112474173925155611

/-! ## A191157.P13968173415431572280

`A016861((A191155(n+1)-1)/4)`
-/

namespace A191157.P13968173415431572280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (SequenceMachineLib.roundAway ((A191155 (n + 1) - 1 : ℚ) / 4)).toNat

end

end A191157.P13968173415431572280

/-! ## A191157.P10091807616807233927

`A047209(A191151(n+1))`
-/

namespace A191157.P10091807616807233927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (A191151 (n + 1)).toNat

end

end A191157.P10091807616807233927

/-! ## A191157.P18179103650005718304

`A008851(A191151(n+1)+1)`
-/

namespace A191157.P18179103650005718304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (A191151 (n + 1) + 1).toNat

end

end A191157.P18179103650005718304

/-! ## A191157.P5253013659616962443

`A008851(2*A191146(n+1))`
-/

namespace A191157.P5253013659616962443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (2 * A191146 (n + 1)).toNat

end

end A191157.P5253013659616962443

/-! ## A191157.P15640660115266570131

`A303764(A191155(n+1))`
-/

namespace A191157.P15640660115266570131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303764 (A191155 (n + 1)).toNat

end

end A191157.P15640660115266570131

/-! ## A191157.P14628458574242544202

`A001068(A191155(n+1)+1)-1`
-/

namespace A191157.P14628458574242544202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A191155 (n + 1) + 1).toNat - 1

end

end A191157.P14628458574242544202

/-! ## A191157.P15000314992256782037

`A191155(n+1)+A002265(A191155(n+1)+1)`
-/

namespace A191157.P15000314992256782037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191155 (n + 1) + A002265 (A191155 (n + 1) + 1).toNat

end

end A191157.P15000314992256782037

/-!
# A191158: Integers in (-2+A191117)/4; contains A191117 as a proper subsequence.

The programs for A191158, there is no canonical definition to state claims against.
-/

/-! ## A191158.P17756416603647800695

`5*A191149(n+1)-4`
-/

namespace A191158.P17756416603647800695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A191149 (n + 1) - 4

end

end A191158.P17756416603647800695

/-! ## A191158.P16157809219605992882

`floor(5*A191154(n+1)/3)`
-/

namespace A191158.P16157809219605992882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * A191154 (n + 1) : ℚ) / 3⌋

end

end A191158.P16157809219605992882

/-! ## A191158.P15924335718074726933

`A191154(n+1)+A191154(n+1)-A191149(n+1)`
-/

namespace A191158.P15924335718074726933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191154 (n + 1) + (A191154 (n + 1) - A191149 (n + 1))

end

end A191158.P15924335718074726933

/-! ## A191158.P18053384885068377705

`A016861(A191149(n+1)-1)`
-/

namespace A191158.P18053384885068377705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A191149 (n + 1) - 1).toNat

end

end A191158.P18053384885068377705

/-! ## A191158.P15976249903513604708

`A016861(floor(A191154(n+1)/3))`
-/

namespace A191158.P15976249903513604708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 ⌊(A191154 (n + 1) : ℚ) / 3⌋.toNat

end

end A191158.P15976249903513604708

/-! ## A191158.P8622519930971020843

`A191154(n+1)+A005843(A191149(n+1)-1)`
-/

namespace A191158.P8622519930971020843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191154 (n + 1) + A005843 (A191149 (n + 1) - 1).toNat

end

end A191158.P8622519930971020843

/-! ## A191158.P12430601055299331726

`A008851(2*A191149(n+1))`
-/

namespace A191158.P12430601055299331726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (2 * A191149 (n + 1)).toNat

end

end A191158.P12430601055299331726

/-! ## A191158.P14282866166944084232

`A032793(A191154(n+1))`
-/

namespace A191158.P14282866166944084232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (A191154 (n + 1)).toNat

end

end A191158.P14282866166944084232

/-! ## A191158.P3729986448501839571

`A008854(A191154(n+1)+1)`
-/

namespace A191158.P3729986448501839571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (A191154 (n + 1) + 1).toNat

end

end A191158.P3729986448501839571

/-! ## A191158.P8292764937839413595

`A005843(A191154(n+1))-A191149(n+1)`
-/

namespace A191158.P8292764937839413595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A191154 (n + 1)).toNat - A191149 (n + 1)

end

end A191158.P8292764937839413595

/-! ## A191158.P10990550462899911916

`A191154(n+1)+A002264(2*A191154(n+1))`
-/

namespace A191158.P10990550462899911916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191154 (n + 1) + A002264 (2 * A191154 (n + 1)).toNat

end

end A191158.P10990550462899911916

/-!
# A191159: Positions of 0 in A191153; complement of A191164.

The programs for A191159, the canonical program `A191159.P7698972769714765764` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191159 has offset 1).

The definition of A191159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191159.P7698972769714765764

`lt[0, tan(n*π^2)]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191159

/-- `lt[0, tan(n*π^2)]` -/
def P7698972769714765764.Spec : Prop :=
  ∀ n, (P7698972769714765764.a n : ℤ) = A191159 (n + 1)

theorem P7698972769714765764.correct : P7698972769714765764.Spec := by
  intro n
  simp only [A191159, Nat.add_sub_cancel]

end A191159

/-! ## A191159.P124949473526069526

`record[or(n+1, -A191153(n+1))]`
-/

namespace A191159.P124949473526069526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-A191153 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191159.P124949473526069526

namespace A191159

/-- `record[or(n+1, -A191153(n+1))]` -/
def P124949473526069526.Spec : Prop :=
  ∀ n, P124949473526069526.a n = A191159 (n + 1)

end A191159

/-! ## A191159.P8501238003628985904

`lt[2, A020639(A004082(n+1))]`
-/

namespace A191159.P8501238003628985904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004082 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191159.P8501238003628985904

namespace A191159

/-- `lt[2, A020639(A004082(n+1))]` -/
def P8501238003628985904.Spec : Prop :=
  ∀ n, (P8501238003628985904.a n : ℤ) = A191159 (n + 1)

end A191159

/-! ## A191159.P5394268941319183539

`eq[1, A019429(A187320(2*n))]`
-/

namespace A191159.P5394268941319183539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A187320 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191159.P5394268941319183539

namespace A191159

/-- `eq[1, A019429(A187320(2*n))]` -/
def P5394268941319183539.Spec : Prop :=
  ∀ n, (P5394268941319183539.a n : ℤ) = A191159 (n + 1)

end A191159

/-! ## A191159.P10018051018127075637

`eq[1, A019425(A063459(2*n))]`
-/

namespace A191159.P10018051018127075637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A063459 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191159.P10018051018127075637

namespace A191159

/-- `eq[1, A019425(A063459(2*n))]` -/
def P10018051018127075637.Spec : Prop :=
  ∀ n, (P10018051018127075637.a n : ℤ) = A191159 (n + 1)

end A191159

/-! ## A191159.P706988018117791640

`eq[1, A019426(A022844(2*n))]`
-/

namespace A191159.P706988018117791640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A022844 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191159.P706988018117791640

namespace A191159

/-- `eq[1, A019426(A022844(2*n))]` -/
def P706988018117791640.Spec : Prop :=
  ∀ n, (P706988018117791640.a n : ℤ) = A191159 (n + 1)

end A191159

/-! ## A191159.P2323701836285942066

`eq[1, A019431(A022844(A005843(n)))]`
-/

namespace A191159.P2323701836285942066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (A022844 (A005843 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191159.P2323701836285942066

namespace A191159

/-- `eq[1, A019431(A022844(A005843(n)))]` -/
def P2323701836285942066.Spec : Prop :=
  ∀ n, (P2323701836285942066.a n : ℤ) = A191159 (n + 1)

end A191159

/-! ## A191159.P17963788060460330869

`lt[A195125(2*n), A195140(A195125(2*n))]`
-/

namespace A191159.P17963788060460330869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195125 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (A195125 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191159.P17963788060460330869

namespace A191159

/-- `lt[A195125(2*n), A195140(A195125(2*n))]` -/
def P17963788060460330869.Spec : Prop :=
  ∀ n, (P17963788060460330869.a n : ℤ) = A191159 (n + 1)

end A191159

/-! ## A191159.P3465169465313158660

`eq[A000007(n), A007814(A004082(n+1))]`
-/

namespace A191159.P3465169465313158660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A004082 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191159.P3465169465313158660

namespace A191159

/-- `eq[A000007(n), A007814(A004082(n+1))]` -/
def P3465169465313158660.Spec : Prop :=
  ∀ n, (P3465169465313158660.a n : ℤ) = A191159 (n + 1)

end A191159

/-! ## A191159.P14623318520464423602

`eq[A000038(n), A183063(A004082(n+1))]`
-/

namespace A191159.P14623318520464423602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A004082 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191159.P14623318520464423602

namespace A191159

/-- `eq[A000038(n), A183063(A004082(n+1))]` -/
def P14623318520464423602.Spec : Prop :=
  ∀ n, (P14623318520464423602.a n : ℤ) = A191159 (n + 1)

end A191159

/-!
# A191160: Positions of 0 in A191156; complement of A191176.

The programs for A191160, the canonical program `A191160.P14677003389119562581` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191160 has offset 1).

The definition of A191160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191160.P14677003389119562581

`comp[floor(6*π*(n+1))%2*(n+1)]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191160

/-- `comp[floor(6*π*(n+1))%2*(n+1)]` -/
def P14677003389119562581.Spec : Prop :=
  ∀ n, (P14677003389119562581.a n : ℤ) = A191160 (n + 1)

theorem P14677003389119562581.correct : P14677003389119562581.Spec := by
  intro n
  simp only [A191160, Nat.add_sub_cancel]

end A191160

/-! ## A191160.P16051016357718368803

`lt[1, A024584(3*(n+1))]+1`
-/

namespace A191160.P16051016357718368803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191160.P16051016357718368803

namespace A191160

/-- `lt[1, A024584(3*(n+1))]+1` -/
def P16051016357718368803.Spec : Prop :=
  ∀ n, (P16051016357718368803.a n : ℤ) = A191160 (n + 1)

end A191160

/-! ## A191160.P3106917731267408537

`eq[A106226(A063724(n+1)), A285680(n+1)]`
-/

namespace A191160.P3106917731267408537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106226 (A063724 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191160.P3106917731267408537

namespace A191160

/-- `eq[A106226(A063724(n+1)), A285680(n+1)]` -/
def P3106917731267408537.Spec : Prop :=
  ∀ n, (P3106917731267408537.a n : ℤ) = A191160 (n + 1)

end A191160

/-! ## A191160.P420155463070486280

`lt[A266216(A053417(3*n+4)), 1]`
-/

namespace A191160.P420155463070486280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266216 (A053417 (3 * n + 4)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A191160.P420155463070486280

namespace A191160

/-- `lt[A266216(A053417(3*n+4)), 1]` -/
def P420155463070486280.Spec : Prop :=
  ∀ n, (P420155463070486280.a n : ℤ) = A191160 (n + 1)

end A191160

/-! ## A191160.P17907798087237127137

`lt[A002962(n+1), A078037(2*n+3)]`
-/

namespace A191160.P17907798087237127137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078037 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191160.P17907798087237127137

namespace A191160

/-- `lt[A002962(n+1), A078037(2*n+3)]` -/
def P17907798087237127137.Spec : Prop :=
  ∀ n, (P17907798087237127137.a n : ℤ) = A191160 (n + 1)

end A191160

/-!
# A191161: Hypersigma(n), definition 2: sum of the divisors of n plus the recursive sum of the divisors of the proper divisors.

The programs for A191161, there is no canonical definition to state claims against.
-/

/-! ## A191161.P1330562842025791208

`2*A255242(n+1)+n+1`
-/

namespace A191161.P1330562842025791208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255242 (n + 1) + (n + 1 : ℤ)

end

end A191161.P1330562842025791208

/-! ## A191161.P18113638604046811845

`2*A330575(n+1)-(n+1)`
-/

namespace A191161.P18113638604046811845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330575 (n + 1) - (n + 1 : ℤ)

end

end A191161.P18113638604046811845

/-! ## A191161.P2078960800599036918

`A330575(n+1)+A255242(n+1)`
-/

namespace A191161.P2078960800599036918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330575 (n + 1) + A255242 (n + 1)

end

end A191161.P2078960800599036918

/-! ## A191161.P4740362461449022016

`∑{d}[n+1, A330575(#)]`
-/

namespace A191161.P4740362461449022016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A330575 d

end

end A191161.P4740362461449022016

/-! ## A191161.P4014859157435296593

`∑{d}[n+1, #*A067824((n+1)/#)]`
-/

namespace A191161.P4014859157435296593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A067824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191161.P4014859157435296593

/-! ## A191161.P1541725856401430837

`A001478(n+1)+2*A330575(n+1)`
-/

namespace A191161.P1541725856401430837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + 2 * A330575 (n + 1)

end

end A191161.P1541725856401430837

/-! ## A191161.P11058772764551229120

`∑{d}[n+1, A000203(#)*A074206((n+1)/#)]`
-/

namespace A191161.P11058772764551229120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A074206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191161.P11058772764551229120

/-! ## A191161.P6662444037548694751

`∑{d}[n+1, A007429(#)*A174725((n+1)/#)]`
-/

namespace A191161.P6662444037548694751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191161.P6662444037548694751

/-! ## A191161.P12128006114757402619

`∑{d}[n+1, A000010(#)*A253249((n+1)/#)]`
-/

namespace A191161.P12128006114757402619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A253249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191161.P12128006114757402619

/-! ## A191161.P8015616903463551081

`∑{d}[n+1, A038040(#)*A323912((n+1)/#)]`
-/

namespace A191161.P8015616903463551081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A323912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191161.P8015616903463551081

/-! ## A191161.P17575789810349101197

`∑{d}[n+1, A060640(#)*A323910((n+1)/#)]`
-/

namespace A191161.P17575789810349101197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A323910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191161.P17575789810349101197

/-! ## A191161.P17696613351155090129

`∑{d}[n+1, A034761(#)*A378432((n+1)/#)]`
-/

namespace A191161.P17696613351155090129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A378432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191161.P17696613351155090129

/-! ## A191161.P11862820091195358429

`∑{d}[n+1, A378646(#)*A378648((n+1)/#)]`
-/

namespace A191161.P11862820091195358429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378646 d * A378648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191161.P11862820091195358429

/-! ## A191161.P14185647683116752765

`∑{d}[n+1, A000203(#)*A002033((n+1)/#-1)]`
-/

namespace A191161.P14185647683116752765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A002033 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A191161.P14185647683116752765

/-!
# A191162: a(n) = [4*n*Pi] - 2*[2*n*Pi], where [ ]=floor.

The programs for A191162, the canonical program `A191162.P1661960699188099287` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191162 has offset 1).

The definition of A191162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191162.P1661960699188099287

`floor(4*(n+1)*π)-2*floor(2*(n+1)*π)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191162

/-- `floor(4*(n+1)*π)-2*floor(2*(n+1)*π)` -/
def P1661960699188099287.Spec : Prop :=
  ∀ n, P1661960699188099287.a n = A191162 (n + 1)

theorem P1661960699188099287.correct : P1661960699188099287.Spec := by
  intro n
  simp only [A191162, Nat.add_sub_cancel]

end A191162

/-! ## A191162.P16328281530494361427

`floor(4*π*(n+1))%2`
-/

namespace A191162.P16328281530494361427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊4 * (Real.pi * (n + 1 : ℝ))⌋ 2

end

end A191162.P16328281530494361427

namespace A191162

/-- `floor(4*π*(n+1))%2` -/
def P16328281530494361427.Spec : Prop :=
  ∀ n, P16328281530494361427.a n = A191162 (n + 1)

end A191162

/-! ## A191162.P2640818610723174504

`and(1, floor(4*π*(n+1)))`
-/

namespace A191162.P2640818610723174504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊4 * (Real.pi * (n + 1 : ℝ))⌋

end

end A191162.P2640818610723174504

namespace A191162

/-- `and(1, floor(4*π*(n+1)))` -/
def P2640818610723174504.Spec : Prop :=
  ∀ n, P2640818610723174504.a n = A191162 (n + 1)

end A191162

/-! ## A191162.P7676150887057094906

`char[A191215(n+1)-1]`
-/

namespace A191162.P7676150887057094906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191215 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A191162.P7676150887057094906

namespace A191162

/-- `char[A191215(n+1)-1]` -/
def P7676150887057094906.Spec : Prop :=
  ∀ n, (P7676150887057094906.a n : ℤ) = A191162 (n + 1)

end A191162

/-! ## A191162.P16838137405733931993

`A191153(2*(n+1))`
-/

namespace A191162.P16838137405733931993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191153 (2 * (n + 1))

end

end A191162.P16838137405733931993

namespace A191162

/-- `A191153(2*(n+1))` -/
def P16838137405733931993.Spec : Prop :=
  ∀ n, P16838137405733931993.a n = A191162 (n + 1)

end A191162

/-! ## A191162.P8631712050552942724

`round(acot(A024584(2*(n+1))))`
-/

namespace A191162.P8631712050552942724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A024584 (2 * (n + 1)) : ℝ))

end

end A191162.P8631712050552942724

namespace A191162

/-- `round(acot(A024584(2*(n+1))))` -/
def P8631712050552942724.Spec : Prop :=
  ∀ n, P8631712050552942724.a n = A191162 (n + 1)

end A191162

/-! ## A191162.P11573674319480886148

`A008683(A024584(2*(n+1))²)`
-/

namespace A191162.P11573674319480886148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A024584 (2 * (n + 1)) ^ 2).toNat

end

end A191162.P11573674319480886148

namespace A191162

/-- `A008683(A024584(2*(n+1))²)` -/
def P11573674319480886148.Spec : Prop :=
  ∀ n, P11573674319480886148.a n = A191162 (n + 1)

end A191162

/-! ## A191162.P13951810214769212575

`A000007(A024584(2*(n+1))-1)`
-/

namespace A191162.P13951810214769212575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A024584 (2 * (n + 1)) - 1).toNat

end

end A191162.P13951810214769212575

namespace A191162

/-- `A000007(A024584(2*(n+1))-1)` -/
def P13951810214769212575.Spec : Prop :=
  ∀ n, P13951810214769212575.a n = A191162 (n + 1)

end A191162

/-! ## A191162.P208982193789972281

`A000007(xor(1, A024584(2*(n+1))))`
-/

namespace A191162.P208982193789972281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 1 (A024584 (2 * (n + 1)))).toNat

end

end A191162.P208982193789972281

namespace A191162

/-- `A000007(xor(1, A024584(2*(n+1))))` -/
def P208982193789972281.Spec : Prop :=
  ∀ n, P208982193789972281.a n = A191162 (n + 1)

end A191162

/-! ## A191162.P16659839034479866161

`∑{d}[A024584(2*(n+1)), A008683(#)]`
-/

namespace A191162.P16659839034479866161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A191162.P16659839034479866161

namespace A191162

/-- `∑{d}[A024584(2*(n+1)), A008683(#)]` -/
def P16659839034479866161.Spec : Prop :=
  ∀ n, P16659839034479866161.a n = A191162 (n + 1)

end A191162

/-! ## A191162.P6870180122575343616

`A115788(4*(n+1))`
-/

namespace A191162.P6870180122575343616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115788 (4 * (n + 1))

end

end A191162.P6870180122575343616

namespace A191162

/-- `A115788(4*(n+1))` -/
def P6870180122575343616.Spec : Prop :=
  ∀ n, P6870180122575343616.a n = A191162 (n + 1)

end A191162

/-! ## A191162.P7263013294552888512

`(A187320(4*(n+1))%2)²`
-/

namespace A191162.P7263013294552888512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187320 (4 * (n + 1))) 2 ^ 2

end

end A191162.P7263013294552888512

namespace A191162

/-- `(A187320(4*(n+1))%2)²` -/
def P7263013294552888512.Spec : Prop :=
  ∀ n, P7263013294552888512.a n = A191162 (n + 1)

end A191162

/-! ## A191162.P6708783916503571616

`A000035(A187320(4*(n+1)))`
-/

namespace A191162.P6708783916503571616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A187320 (4 * (n + 1))).toNat

end

end A191162.P6708783916503571616

namespace A191162

/-- `A000035(A187320(4*(n+1)))` -/
def P6708783916503571616.Spec : Prop :=
  ∀ n, P6708783916503571616.a n = A191162 (n + 1)

end A191162

/-!
# A191163: Integers in (3+A191119)/4; contains A191119 as a proper subsequence.

The programs for A191163, there is no canonical definition to state claims against.
-/

/-! ## A191163.P5725850381956400912

`ceil(A191177(n+1)/2)`
-/

namespace A191163.P5725850381956400912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191177 (n + 1) : ℚ) / 2⌉

end

end A191163.P5725850381956400912

/-! ## A191163.P6642387062357074938

`ceil(A191189(n+1)/3)`
-/

namespace A191163.P6642387062357074938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191189 (n + 1) : ℚ) / 3⌉

end

end A191163.P6642387062357074938

/-! ## A191163.P10614211471851113113

`A191189(n+1)+1-A191177(n+1)`
-/

namespace A191163.P10614211471851113113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191189 (n + 1) + (1 - A191177 (n + 1))

end

end A191163.P10614211471851113113

/-! ## A191163.P5998580969075703445

`A191195(n)+a(A329747(A134743(n)))` with `a(0)=1`
-/

namespace A191163.P5998580969075703445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A191195 n + a (A329747 (A134743 n).toNat).toNat

end

end A191163.P5998580969075703445

/-! ## A191163.P1633190265289875225

`A191195(A028310(n))+n/A028310(n)`
-/

namespace A191163.P1633190265289875225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191195 (A028310 n).toNat : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A191163.P1633190265289875225

/-! ## A191163.P15036957563969644233

`A014682(A191177(n+1)+1)`
-/

namespace A191163.P15036957563969644233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191177 (n + 1) + 1).toNat

end

end A191163.P15036957563969644233

/-! ## A191163.P587652984110939298

`ceil(record[A014682(A191120(n+1))]/6)`
-/

namespace A191163.P587652984110939298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191120 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 6⌉

end

end A191163.P587652984110939298

/-! ## A191163.P4275119545590206323

`(record[A103391(A191135(n+1))]+1)/2`
-/

namespace A191163.P4275119545590206323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A191135 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 2

end

end A191163.P4275119545590206323

/-! ## A191163.P11000648044040970430

`A175126(A191177(n+1)+1)`
-/

namespace A191163.P11000648044040970430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A191177 (n + 1) + 1).toNat

end

end A191163.P11000648044040970430

/-! ## A191163.P8674978358906073114

`A000463(A191177(n+1))`
-/

namespace A191163.P8674978358906073114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191177 (n + 1)).toNat

end

end A191163.P8674978358906073114

/-! ## A191163.P1072734712359640438

`A008619(record[A103391(A191135(n+1))])`
-/

namespace A191163.P1072734712359640438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A191135 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191163.P1072734712359640438

/-! ## A191163.P9087920255210160590

`A001651(A191177(n+1)+1)-A191177(n+1)`
-/

namespace A191163.P9087920255210160590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A191177 (n + 1) + 1).toNat - A191177 (n + 1)

end

end A191163.P9087920255210160590

/-!
# A191164: Positions of 1 in A191153; complement of A191159.

The programs for A191164, the canonical program `A191164.P5172148282899626234` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191164 has offset 1).

The definition of A191164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191164.P5172148282899626234

`lt[tan(n*π^2), 0]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191164

/-- `lt[tan(n*π^2), 0]` -/
def P5172148282899626234.Spec : Prop :=
  ∀ n, (P5172148282899626234.a n : ℤ) = A191164 (n + 1)

theorem P5172148282899626234.correct : P5172148282899626234.Spec := by
  intro n
  simp only [A191164, Nat.add_sub_cancel]

end A191164

/-! ## A191164.P5365939668952765049

`comp[A191159(n+1)-1]+1`
-/

namespace A191164.P5365939668952765049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191159 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A191164.P5365939668952765049

namespace A191164

/-- `comp[A191159(n+1)-1]+1` -/
def P5365939668952765049.Spec : Prop :=
  ∀ n, (P5365939668952765049.a n : ℤ) = A191164 (n + 1)

end A191164

/-! ## A191164.P15949183034759547479

`eq[2, A020639(A004082(n+1))]`
-/

namespace A191164.P15949183034759547479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004082 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191164.P15949183034759547479

namespace A191164

/-- `eq[2, A020639(A004082(n+1))]` -/
def P15949183034759547479.Spec : Prop :=
  ∀ n, (P15949183034759547479.a n : ℤ) = A191164 (n + 1)

end A191164

/-! ## A191164.P5595393768482487915

`eq[2, A004082(n+1)/A004084(n+1)]`
-/

namespace A191164.P5595393768482487915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004082 (n + 1) : ℚ) / (A004084 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A191164.P5595393768482487915

namespace A191164

/-- `eq[2, A004082(n+1)/A004084(n+1)]` -/
def P5595393768482487915.Spec : Prop :=
  ∀ n, (P5595393768482487915.a n : ℤ) = A191164 (n + 1)

end A191164

/-! ## A191164.P14226487459748697746

`eq[2, A328579(A038130(n))]`
-/

namespace A191164.P14226487459748697746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (A038130 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191164.P14226487459748697746

namespace A191164

/-- `eq[2, A328579(A038130(n))]` -/
def P14226487459748697746.Spec : Prop :=
  ∀ n, (P14226487459748697746.a n : ℤ) = A191164 (n + 1)

end A191164

/-! ## A191164.P4012145587434294974

`eq[1, A024584(A065033(A004273(n)))]`
-/

namespace A191164.P4012145587434294974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (A065033 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191164.P4012145587434294974

namespace A191164

/-- `eq[1, A024584(A065033(A004273(n)))]` -/
def P4012145587434294974.Spec : Prop :=
  ∀ n, (P4012145587434294974.a n : ℤ) = A191164 (n + 1)

end A191164

/-! ## A191164.P13105504315430569835

`eq[1, A024584(A065033(2*n))]`
-/

namespace A191164.P13105504315430569835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191164.P13105504315430569835

namespace A191164

/-- `eq[1, A024584(A065033(2*n))]` -/
def P13105504315430569835.Spec : Prop :=
  ∀ n, (P13105504315430569835.a n : ℤ) = A191164 (n + 1)

end A191164

/-! ## A191164.P18215114275330908128

`eq[2, A020639(A004084(2*n+1))]`
-/

namespace A191164.P18215114275330908128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004084 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191164.P18215114275330908128

namespace A191164

/-- `eq[2, A020639(A004084(2*n+1))]` -/
def P18215114275330908128.Spec : Prop :=
  ∀ n, (P18215114275330908128.a n : ℤ) = A191164 (n + 1)

end A191164

/-! ## A191164.P9068044364154809105

`eq[2, A141310(A063459(2*n))]`
-/

namespace A191164.P9068044364154809105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A063459 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191164.P9068044364154809105

namespace A191164

/-- `eq[2, A141310(A063459(2*n))]` -/
def P9068044364154809105.Spec : Prop :=
  ∀ n, (P9068044364154809105.a n : ℤ) = A191164 (n + 1)

end A191164

/-! ## A191164.P4864005347261524296

`eq[1, A019426(A121381(2*n))]`
-/

namespace A191164.P4864005347261524296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A121381 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191164.P4864005347261524296

namespace A191164

/-- `eq[1, A019426(A121381(2*n))]` -/
def P4864005347261524296.Spec : Prop :=
  ∀ n, (P4864005347261524296.a n : ℤ) = A191164 (n + 1)

end A191164

/-! ## A191164.P5603189398958999744

`lt[A195140(A195125(2*n)), 5*n]`
-/

namespace A191164.P5603189398958999744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (A195125 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A191164.P5603189398958999744

namespace A191164

/-- `lt[A195140(A195125(2*n)), 5*n]` -/
def P5603189398958999744.Spec : Prop :=
  ∀ n, (P5603189398958999744.a n : ℤ) = A191164 (n + 1)

end A191164

/-! ## A191164.P7456296497393588563

`lt[A195140(A195125(n)), A195140(n)]/2`
-/

namespace A191164.P7456296497393588563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (A195125 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2

end

end A191164.P7456296497393588563

namespace A191164

/-- `lt[A195140(A195125(n)), A195140(n)]/2` -/
def P7456296497393588563.Spec : Prop :=
  ∀ n, P7456296497393588563.a n = (A191164 (n + 1) : ℚ)

end A191164

/-! ## A191164.P15119643393540010949

`eq[1, A080940(A004082(n+1)+1)]`
-/

namespace A191164.P15119643393540010949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (A004082 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191164.P15119643393540010949

namespace A191164

/-- `eq[1, A080940(A004082(n+1)+1)]` -/
def P15119643393540010949.Spec : Prop :=
  ∀ n, (P15119643393540010949.a n : ℤ) = A191164 (n + 1)

end A191164

/-! ## A191164.P7829402336877435365

`eq[1, A135561(A004082(n+1)+1)]`
-/

namespace A191164.P7829402336877435365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135561 (A004082 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191164.P7829402336877435365

namespace A191164

/-- `eq[1, A135561(A004082(n+1)+1)]` -/
def P7829402336877435365.Spec : Prop :=
  ∀ n, (P7829402336877435365.a n : ℤ) = A191164 (n + 1)

end A191164

/-! ## A191164.P2997941864478513153

`eq[A004084(n+1), A064680(A004082(n+1))]`
-/

namespace A191164.P2997941864478513153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A004082 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191164.P2997941864478513153

namespace A191164

/-- `eq[A004084(n+1), A064680(A004082(n+1))]` -/
def P2997941864478513153.Spec : Prop :=
  ∀ n, (P2997941864478513153.a n : ℤ) = A191164 (n + 1)

end A191164

/-! ## A191164.P16248385100266151063

`eq[A000038(n), A183063(A004082(n+1)+1)]`
-/

namespace A191164.P16248385100266151063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A004082 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191164.P16248385100266151063

namespace A191164

/-- `eq[A000038(n), A183063(A004082(n+1)+1)]` -/
def P16248385100266151063.Spec : Prop :=
  ∀ n, (P16248385100266151063.a n : ℤ) = A191164 (n + 1)

end A191164

/-! ## A191164.P5632239435891243834

`eq[1, A024584(A233583(n+1))]`
-/

namespace A191164.P5632239435891243834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191164.P5632239435891243834

namespace A191164

/-- `eq[1, A024584(A233583(n+1))]` -/
def P5632239435891243834.Spec : Prop :=
  ∀ n, (P5632239435891243834.a n : ℤ) = A191164 (n + 1)

end A191164

/-!
# A191165: Integers in (2+A191120)/4; contains A191120 as a proper subsequence.

The programs for A191165, there is no canonical definition to state claims against.
-/

/-! ## A191165.P13088187349199695210

`ceil(A191181(n+1)/2)`
-/

namespace A191165.P13088187349199695210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191181 (n + 1) : ℚ) / 2⌉

end

end A191165.P13088187349199695210

/-! ## A191165.P17946195393756469800

`ceil(A191195(n+1)/3)`
-/

namespace A191165.P17946195393756469800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191195 (n + 1) : ℚ) / 3⌉

end

end A191165.P17946195393756469800

/-! ## A191165.P2466995654246713093

`∪[A191120(n+1), A191189(n+1)]`
-/

namespace A191165.P2466995654246713093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191165.P2466995654246713093

/-! ## A191165.P15640558839341262801

`A191195(n+1)+1-A191181(n+1)`
-/

namespace A191165.P15640558839341262801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191195 (n + 1) + (1 - A191181 (n + 1))

end

end A191165.P15640558839341262801

/-! ## A191165.P17330358283389757015

`A191197(A028310(n))+A057427(n)`
-/

namespace A191165.P17330358283389757015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191197 (A028310 n).toNat + A057427 n

end

end A191165.P17330358283389757015

/-! ## A191165.P6577546786211512353

`ceil(A191163(n+2)/3)`
-/

namespace A191165.P6577546786211512353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191163 (n + 2) : ℚ) / 3⌉

end

end A191165.P6577546786211512353

/-! ## A191165.P7866984775649102561

`ceil(A191177(n+2)/6)`
-/

namespace A191165.P7866984775649102561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191177 (n + 2) : ℚ) / 6⌉

end

end A191165.P7866984775649102561

/-! ## A191165.P9577660599624020955

`A175126(A191181(n+1)+1)`
-/

namespace A191165.P9577660599624020955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A191181 (n + 1) + 1).toNat

end

end A191165.P9577660599624020955

/-! ## A191165.P15290930432752608132

`A000463(A191181(n+1))`
-/

namespace A191165.P15290930432752608132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191181 (n + 1)).toNat

end

end A191165.P15290930432752608132

/-! ## A191165.P17407171655896630699

`record[A003602(ceil(A191136(n+1)/2))]`
-/

namespace A191165.P17407171655896630699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 ⌈(A191136 (n + 1) : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191165.P17407171655896630699

/-! ## A191165.P2920427929019413148

`A001651(A191181(n+1)+1)-A191181(n+1)`
-/

namespace A191165.P2920427929019413148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A191181 (n + 1) + 1).toNat - A191181 (n + 1)

end

end A191165.P2920427929019413148

/-! ## A191165.P7063692926873428391

`A008620(A191195(n+1))`
-/

namespace A191165.P7063692926873428391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A191195 (n + 1)).toNat

end

end A191165.P7063692926873428391

/-! ## A191165.P16024549723949318849

`A191195(n+1)-A004396(A191195(n+1)-1)`
-/

namespace A191165.P16024549723949318849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191195 (n + 1) - A004396 (A191195 (n + 1) - 1).toNat

end

end A191165.P16024549723949318849

/-! ## A191165.P18399978518015425884

`A008611(A191163(n+2))`
-/

namespace A191165.P18399978518015425884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A191163 (n + 2)).toNat

end

end A191165.P18399978518015425884

/-! ## A191165.P17145516700510996107

`A004396(A191195(n+1)+2)/2`
-/

namespace A191165.P17145516700510996107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004396 (A191195 (n + 1) + 2).toNat : ℚ) / 2

end

end A191165.P17145516700510996107

/-! ## A191165.P13684151022453119082

`A003602(record[A003602(A191136(n+1))])`
-/

namespace A191165.P13684151022453119082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A191136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191165.P13684151022453119082

/-! ## A191165.P11380968281544503958

`record[A008619(A025480(A191120(n+1)))]`
-/

namespace A191165.P11380968281544503958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025480 (A191120 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191165.P11380968281544503958

/-! ## A191165.P2206474155228931256

`A110657(record[A000265(A191136(n+1))])`
-/

namespace A191165.P2206474155228931256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A191136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191165.P2206474155228931256

/-! ## A191165.P3387994083370636118

`A110654(record[A028234(A191120(n+1))])`
-/

namespace A191165.P3387994083370636118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A191120 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191165.P3387994083370636118

/-! ## A191165.P13131211422510575083

`floor(A191181(n+1)/2*A074609(n)%2)+1`
-/

namespace A191165.P13131211422510575083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191181 (n + 1) : ℚ) / 2 * (Int.tmod (A074609 n) 2 : ℚ)⌋ + 1

end

end A191165.P13131211422510575083

/-!
# A191166: Integers in (1+A191121)/3; contains A191121 as a proper subsequence.

The programs for A191166, there is no canonical definition to state claims against.
-/

/-! ## A191166.P12683663219609844414

`ceil(A191182(n+1)/2)`
-/

namespace A191166.P12683663219609844414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191182 (n + 1) : ℚ) / 2⌉

end

end A191166.P12683663219609844414

/-! ## A191166.P7649480258752124793

`A191146(n+2)/2`
-/

namespace A191166.P7649480258752124793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191146 (n + 2) : ℚ) / 2

end

end A191166.P7649480258752124793

/-! ## A191166.P6044631740110742675

`round(A191155(n+2)/8)`
-/

namespace A191166.P6044631740110742675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A191155 (n + 2) : ℚ) / 8)

end

end A191166.P6044631740110742675

/-! ## A191166.P17586012667492126670

`Δ[∑[A191151(n+1)+1]/4]`
-/

namespace A191166.P17586012667492126670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191151 (n + 1) + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191166.P17586012667492126670

/-! ## A191166.P3882014187689924147

`∑[A032742(Δ[A191146(n+1)])]`
-/

namespace A191166.P3882014187689924147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191146 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191166.P3882014187689924147

/-! ## A191166.P2160528230581281528

`A000463(A191182(n+1))`
-/

namespace A191166.P2160528230581281528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191182 (n + 1)).toNat

end

end A191166.P2160528230581281528

/-! ## A191166.P10488892565757124509

`A001281(A191146(n+2))`
-/

namespace A191166.P10488892565757124509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A191146 (n + 2)).toNat

end

end A191166.P10488892565757124509

/-! ## A191166.P540150258097039478

`A001281(A191182(n+1)+1)`
-/

namespace A191166.P540150258097039478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A191182 (n + 1) + 1).toNat

end

end A191166.P540150258097039478

/-! ## A191166.P6594468443245200456

`A004526(A191182(n+1)+1)`
-/

namespace A191166.P6594468443245200456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A191182 (n + 1) + 1).toNat

end

end A191166.P6594468443245200456

/-! ## A191166.P12529912603897567024

`A008619(record[A006083(A191129(n+1))])`
-/

namespace A191166.P12529912603897567024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A191129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191166.P12529912603897567024

/-! ## A191166.P12473433198702335183

`A008621(A191151(n+2))`
-/

namespace A191166.P12473433198702335183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A191151 (n + 2)).toNat

end

end A191166.P12473433198702335183

/-! ## A191166.P3308389068717688132

`record[A078898(A191129(n+1))]`
-/

namespace A191166.P3308389068717688132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A191129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191166.P3308389068717688132

/-! ## A191166.P4752700499427794203

`A000463(record[A032742(A191129(n+1))])`
-/

namespace A191166.P4752700499427794203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191166.P4752700499427794203

/-! ## A191166.P13165874733336180557

`record[A032742(A008620(A191113(n+1)))]`
-/

namespace A191166.P13165874733336180557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A008620 (A191113 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191166.P13165874733336180557

/-! ## A191166.P10607526228938320206

`A110656(A191155(n+2))`
-/

namespace A191166.P10607526228938320206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A191155 (n + 2)).toNat

end

end A191166.P10607526228938320206

/-! ## A191166.P8081699302391257205

`A008616(A191157(n+2))`
-/

namespace A191166.P8081699302391257205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A191157 (n + 2)).toNat

end

end A191166.P8081699302391257205

/-!
# A191167: Integers in (1+A191121)/4; contains A191121 as a proper subsequence.

The programs for A191167, there is no canonical definition to state claims against.
-/

/-! ## A191167.P6441112824266094366

`(A191201(n+1)+2)/3`
-/

namespace A191167.P6441112824266094366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191201 (n + 1) + 2 : ℚ) / 3

end

end A191167.P6441112824266094366

/-! ## A191167.P10353350742339725858

`record[A330755(A191200(n+1))]`
-/

namespace A191167.P10353350742339725858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330755 (A191200 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191167.P10353350742339725858

/-! ## A191167.P1063434849578034801

`record[A032742(A191149(n+1))]`
-/

namespace A191167.P1063434849578034801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191149 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191167.P1063434849578034801

/-! ## A191167.P12607288103900939942

`record[A078898(A191149(n+2))]`
-/

namespace A191167.P12607288103900939942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A191149 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191167.P12607288103900939942

/-! ## A191167.P15441597996993680945

`ceil(record[A319556(A191183(n+1))]/3)`
-/

namespace A191167.P15441597996993680945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319556 (A191183 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3⌉

end

end A191167.P15441597996993680945

/-! ## A191167.P11071269367982390551

`A008620(A191201(n+1))`
-/

namespace A191167.P11071269367982390551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A191201 (n + 1)).toNat

end

end A191167.P11071269367982390551

/-! ## A191167.P8894701831011843707

`A130747(2*A191201(n+1))`
-/

namespace A191167.P8894701831011843707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (2 * A191201 (n + 1)).toNat

end

end A191167.P8894701831011843707

/-! ## A191167.P4537066752144049783

`record[A032742(A003602(A191113(n+1)))]`
-/

namespace A191167.P4537066752144049783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A003602 (A191113 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191167.P4537066752144049783

/-! ## A191167.P16220152520920822677

`record[A008619(A025480(A191114(n+1)))]`
-/

namespace A191167.P16220152520920822677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025480 (A191114 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191167.P16220152520920822677

/-! ## A191167.P12894468641910900547

`record[A004525(A130747(A191115(n+1)))]`
-/

namespace A191167.P12894468641910900547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A130747 (A191115 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191167.P12894468641910900547

/-!
# A191168: Integers in (1+A191122)/3; contains A191122 as a proper subsequence.

The programs for A191168, there is no canonical definition to state claims against.
-/

/-! ## A191168.P16126274189130217375

`ceil(A191186(n+1)/2)`
-/

namespace A191168.P16126274189130217375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191186 (n + 1) : ℚ) / 2⌉

end

end A191168.P16126274189130217375

/-! ## A191168.P2997169466239997122

`A305425(A191186(n+1)+1)`
-/

namespace A191168.P2997169466239997122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (A191186 (n + 1) + 1).toNat

end

end A191168.P2997169466239997122

/-! ## A191168.P17922524974267300374

`A000463(A191186(n+1))`
-/

namespace A191168.P17922524974267300374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191186 (n + 1)).toNat

end

end A191168.P17922524974267300374

/-! ## A191168.P14474866375906640262

`A078898(A191186(n+1)+1)`
-/

namespace A191168.P14474866375906640262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A191186 (n + 1) + 1).toNat

end

end A191168.P14474866375906640262

/-! ## A191168.P16783071933469313263

`A174221(A191186(n+1)+1)`
-/

namespace A191168.P16783071933469313263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (A191186 (n + 1) + 1).toNat

end

end A191168.P16783071933469313263

/-! ## A191168.P17193255737726485620

`A004524(A191186(n+1)+2)`
-/

namespace A191168.P17193255737726485620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A191186 (n + 1) + 2).toNat

end

end A191168.P17193255737726485620

/-! ## A191168.P3042482363205829694

`A057979(A191186(n+1)+2)`
-/

namespace A191168.P3042482363205829694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A191186 (n + 1) + 2).toNat

end

end A191168.P3042482363205829694

/-! ## A191168.P673430934730185041

`A001057(A191186(n+1)%p?[9*n+2])`
-/

namespace A191168.P673430934730185041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.tmod (A191186 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)).toNat

end

end A191168.P673430934730185041

/-! ## A191168.P8502085494450415847

`A001057(A191186(n+1)%A103145(n))`
-/

namespace A191168.P8502085494450415847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.tmod (A191186 (n + 1)) (A103145 n)).toNat

end

end A191168.P8502085494450415847

/-! ## A191168.P16153975365379214085

`record[A078898(A191131(n+1))]`
-/

namespace A191168.P16153975365379214085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A191131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191168.P16153975365379214085

/-! ## A191168.P4711002372868439067

`A151898(3*A191186(n+1))`
-/

namespace A191168.P4711002372868439067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (3 * A191186 (n + 1)).toNat

end

end A191168.P4711002372868439067

/-! ## A191168.P15990106362457271293

`A001057(record[A032742(A191131(n+1))])`
-/

namespace A191168.P15990106362457271293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191168.P15990106362457271293

/-! ## A191168.P12564833959737172810

`A008619(record[A032742(A191131(n+1))])`
-/

namespace A191168.P12564833959737172810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191168.P12564833959737172810

/-! ## A191168.P15405826863514440635

`record[A078898(A004273(A191122(n+1)))]`
-/

namespace A191168.P15405826863514440635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A004273 (A191122 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191168.P15405826863514440635

/-!
# A191169: Integers in (A191122)/4; contains A191122 as a proper subsequence.

The programs for A191169, there is no canonical definition to state claims against.
-/

/-! ## A191169.P14433062499836298653

`record[ceil(A000265(A191187(n+1))/2)]`
-/

namespace A191169.P14433062499836298653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000265 (A191187 (n + 1)).toNat : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191169.P14433062499836298653

/-! ## A191169.P14741367353763180491

`record[A117358(A191131(n+1)+1)]`
-/

namespace A191169.P14741367353763180491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A191131 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191169.P14741367353763180491

/-! ## A191169.P2835173718747322186

`record[A117358(A191186(n+1)+1)]`
-/

namespace A191169.P2835173718747322186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A191186 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191169.P2835173718747322186

/-! ## A191169.P11550248550381233548

`record[A117358(2*A191122(n+1))]`
-/

namespace A191169.P11550248550381233548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A191122 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191169.P11550248550381233548

/-! ## A191169.P13559701537714090111

`record[A001057(A191187(n+1))]`
-/

namespace A191169.P13559701537714090111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A191187 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191169.P13559701537714090111

/-! ## A191169.P4108336338232555430

`A008619(record[A000265(A191187(n+1))])`
-/

namespace A191169.P4108336338232555430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A191187 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191169.P4108336338232555430

/-! ## A191169.P17487831623626289520

`record[A054576(A191122(n+1))]`
-/

namespace A191169.P17487831623626289520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A191122 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191169.P17487831623626289520

/-!
# A191170: Integers in (1+A191123)/3; contains A191123 as a proper subsequence.

The programs for A191170, there is no canonical definition to state claims against.
-/

/-! ## A191170.P4662093597828722110

`record[A078898(A004273(A191171(n+1)))]`
-/

namespace A191170.P4662093597828722110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A004273 (A191171 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191170.P4662093597828722110

/-!
# A191171: Integers in (-1+A191123)/4; contains A191123 as a proper subsequence.

The programs for A191171, there is no canonical definition to state claims against.
-/

/-! ## A191171.P16839803836744761166

`record[A057979(A018837(A191170(n+1)))]`
-/

namespace A191171.P16839803836744761166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A018837 (A191170 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191171.P16839803836744761166

/-! ## A191171.P15163639126132987564

`record[A184304(n+1)-A007321(n+1)]`
-/

namespace A191171.P15163639126132987564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184304 (n + 1) - A007321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191171.P15163639126132987564

/-!
# A191173: Integers in (-2+A191124)/4; contains A191124 as a proper subsequence.

The programs for A191173, there is no canonical definition to state claims against.
-/

/-! ## A191173.P312935646698145428

`record[A028242(A025480(A191172(n+1)))]`
-/

namespace A191173.P312935646698145428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A025480 (A191172 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191173.P312935646698145428

/-! ## A191173.P840455783229463925

`eq[A029359(n), A187329(A029336(n))]`
-/

namespace A191173.P840455783229463925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187329 (A029336 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191173.P840455783229463925

/-!
# A191174: Integers in (1+A191125)/3; contains A191125 as a proper subsequence.

The programs for A191174, there is no canonical definition to state claims against.
-/

/-! ## A191174.P3012385756705545249

`A038128(n)+∑[A043562(A034826(n))]`
-/

namespace A191174.P3012385756705545249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A034826 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038128 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191174.P3012385756705545249

/-! ## A191174.P14771567960045499790

`A074279(A082380(n)²)`
-/

namespace A191174.P14771567960045499790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A082380 n ^ 2).toNat

end

end A191174.P14771567960045499790

/-! ## A191174.P37391250798967866

`∑[A134024(A090845(n)²)]`
-/

namespace A191174.P37391250798967866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 (A090845 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191174.P37391250798967866

/-! ## A191174.P13763579347222380015

`∑[A001222(A342537(n+1)+2)]`
-/

namespace A191174.P13763579347222380015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A342537 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191174.P13763579347222380015

/-! ## A191174.P4083785220359459356

`record[gcd(A026819(n+1), A224651(n+1))]`
-/

namespace A191174.P4083785220359459356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026819 (n + 1)) (A224651 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191174.P4083785220359459356

/-!
# A191176: Positions of 1 in A191156; complement of A191160.

The programs for A191176, the canonical program `A191176.P12289831564144930162` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191176 has offset 1).

The definition of A191176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191176.P12289831564144930162

`eq[1, A191156(n+1)]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A191176

/-- `eq[1, A191156(n+1)]+1` -/
def P12289831564144930162.Spec : Prop :=
  ∀ n, (P12289831564144930162.a n : ℤ) = A191176 (n + 1)

theorem P12289831564144930162.correct : P12289831564144930162.Spec := by
  intro n
  simp only [A191176, Nat.add_sub_cancel]

end A191176

/-! ## A191176.P11564658592830926734

`eq[char[A191160(n+1)], A000007(n)]`
-/

namespace A191176.P11564658592830926734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191160 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A191176.P11564658592830926734

namespace A191176

/-- `eq[char[A191160(n+1)], A000007(n)]` -/
def P11564658592830926734.Spec : Prop :=
  ∀ n, (P11564658592830926734.a n : ℤ) = A191176 (n + 1)

end A191176

/-! ## A191176.P16804628492641201206

`eq[1, A024584(3*(n+1))]+1`
-/

namespace A191176.P16804628492641201206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191176.P16804628492641201206

namespace A191176

/-- `eq[1, A024584(3*(n+1))]+1` -/
def P16804628492641201206.Spec : Prop :=
  ∀ n, (P16804628492641201206.a n : ℤ) = A191176 (n + 1)

end A191176

/-! ## A191176.P1482006746085085189

`eq[1, A024584(A008486(n))]`
-/

namespace A191176.P1482006746085085189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191176.P1482006746085085189

namespace A191176

/-- `eq[1, A024584(A008486(n))]` -/
def P1482006746085085189.Spec : Prop :=
  ∀ n, (P1482006746085085189.a n : ℤ) = A191176 (n + 1)

end A191176

/-! ## A191176.P18152479511545867235

`eq[1, A024584(A008574(n)-n)]`
-/

namespace A191176.P18152479511545867235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (A008574 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191176.P18152479511545867235

namespace A191176

/-- `eq[1, A024584(A008574(n)-n)]` -/
def P18152479511545867235.Spec : Prop :=
  ∀ n, (P18152479511545867235.a n : ℤ) = A191176 (n + 1)

end A191176

/-!
# A191177: Integers in (3+A191126)/4; contains A191126 as a proper subsequence.

The programs for A191177, there is no canonical definition to state claims against.
-/

/-! ## A191177.P3245904018990102475

`2*A191163(n+1)-1`
-/

namespace A191177.P3245904018990102475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191163 (n + 1) - 1

end

end A191177.P3245904018990102475

/-! ## A191177.P8485440574885229210

`2*(A191189(n+1)+2)/3-1`
-/

namespace A191177.P8485440574885229210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A191189 (n + 1) + 2 : ℚ) / 3) - 1

end

end A191177.P8485440574885229210

/-! ## A191177.P14812371847495397345

`A033999(or(1, n))+2*A191163(n+1)`
-/

namespace A191177.P14812371847495397345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Nat.lor 1 n) + 2 * A191163 (n + 1)

end

end A191177.P14812371847495397345

/-! ## A191177.P6604515526532204355

`A191163(A000027(n+1))+A191163(n+1)-1`
-/

namespace A191177.P6604515526532204355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (A000027 (n + 1)).toNat + (A191163 (n + 1) - 1)

end

end A191177.P6604515526532204355

/-! ## A191177.P6560732397278566993

`A033999(2*n+1)+2*A191163(n+1)`
-/

namespace A191177.P6560732397278566993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + 2 * A191163 (n + 1)

end

end A191177.P6560732397278566993

/-! ## A191177.P10302959360892677836

`A135694(A002476(n+1))+2*A191163(n+1)`
-/

namespace A191177.P10302959360892677836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135694 (A002476 (n + 1)).toNat + 2 * A191163 (n + 1)

end

end A191177.P10302959360892677836

/-! ## A191177.P7274087639022442659

`round(record[A014682(A191120(n+1))]/3)`
-/

namespace A191177.P7274087639022442659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191120 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3)

end

end A191177.P7274087639022442659

/-! ## A191177.P11995474162928153231

`record[A103391(A191135(n+1))]`
-/

namespace A191177.P11995474162928153231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A191135 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191177.P11995474162928153231

/-! ## A191177.P7351571560978139870

`A005408(A191163(n+1)-1)`
-/

namespace A191177.P7351571560978139870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A191163 (n + 1) - 1).toNat

end

end A191177.P7351571560978139870

/-! ## A191177.P14409528234123718720

`A004273(A191163(n+1))`
-/

namespace A191177.P14409528234123718720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191163 (n + 1)).toNat

end

end A191177.P14409528234123718720

/-! ## A191177.P13590463608058589363

`A004483(2*A191163(n+1))`
-/

namespace A191177.P13590463608058589363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (2 * A191163 (n + 1)).toNat

end

end A191177.P13590463608058589363

/-!
# A191178: Integers in (A191127)/3.

The programs for A191178, there is no canonical definition to state claims against.
-/

/-! ## A191178.P3419462296038055164

`ceil(A191206(n+1)/2)`
-/

namespace A191178.P3419462296038055164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191206 (n + 1) : ℚ) / 2⌉

end

end A191178.P3419462296038055164

/-! ## A191178.P16943039593942158664

`(A191206(n+1)+1)/A020639(2*(n+1))`
-/

namespace A191178.P16943039593942158664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191206 (n + 1) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A191178.P16943039593942158664

/-! ## A191178.P14659918429187164448

`A000041(C(2, n+2))*round(A191206(n+1)/2)`
-/

namespace A191178.P14659918429187164448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * SequenceMachineLib.roundAway ((A191206 (n + 1) : ℚ) / 2)

end

end A191178.P14659918429187164448

/-! ## A191178.P3043451863927587051

`round(A191206(n+1)/A228367(2*n+1))`
-/

namespace A191178.P3043451863927587051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A191206 (n + 1) : ℚ) / (A228367 (2 * n + 1) : ℚ))

end

end A191178.P3043451863927587051

/-! ## A191178.P10064058427627763967

`(A191206(n+1)+1)/A000005(record[A014963(n+2)])`
-/

namespace A191178.P10064058427627763967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191206 (n + 1) + 1 : ℚ) / (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A191178.P10064058427627763967

/-! ## A191178.P16133471924550176031

`A014682(A191206(n+1)+1)`
-/

namespace A191178.P16133471924550176031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191206 (n + 1) + 1).toNat

end

end A191178.P16133471924550176031

/-! ## A191178.P16808837476824231512

`A328399(A191206(n+1)-1)`
-/

namespace A191178.P16808837476824231512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A191206 (n + 1) - 1).toNat

end

end A191178.P16808837476824231512

/-! ## A191178.P6340038961800461210

`A000217(A191206(n+1)+1)%(A191206(n+1)+1)`
-/

namespace A191178.P6340038961800461210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A191206 (n + 1) + 1).toNat) (A191206 (n + 1) + 1)

end

end A191178.P6340038961800461210

/-! ## A191178.P5103735807126236739

`A175126(A191206(n+1)+1)`
-/

namespace A191178.P5103735807126236739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A191206 (n + 1) + 1).toNat

end

end A191178.P5103735807126236739

/-! ## A191178.P6386677962369679844

`A278537(A191206(n+1)+1)`
-/

namespace A191178.P6386677962369679844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A191206 (n + 1) + 1).toNat

end

end A191178.P6386677962369679844

/-! ## A191178.P17295729245358013851

`A000463(A191206(n+1))`
-/

namespace A191178.P17295729245358013851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191206 (n + 1)).toNat

end

end A191178.P17295729245358013851

/-! ## A191178.P16097359270029766441

`A004525(A191206(n+1)+1)`
-/

namespace A191178.P16097359270029766441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A191206 (n + 1) + 1).toNat

end

end A191178.P16097359270029766441

/-! ## A191178.P13246223160877365291

`A025480(A191206(n+1)+1)`
-/

namespace A191178.P13246223160877365291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A191206 (n + 1) + 1).toNat

end

end A191178.P13246223160877365291

/-! ## A191178.P4787905104866411262

`A032742(A191206(n+1)+1)`
-/

namespace A191178.P4787905104866411262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191206 (n + 1) + 1).toNat

end

end A191178.P4787905104866411262

/-! ## A191178.P6394361786268506499

`A008619(A191206(n+1)-1)`
-/

namespace A191178.P6394361786268506499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A191206 (n + 1) - 1).toNat

end

end A191178.P6394361786268506499

/-! ## A191178.P11389797341290932451

`A001057(or(1, A191206(n+1)))`
-/

namespace A191178.P11389797341290932451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor 1 (A191206 (n + 1))).toNat

end

end A191178.P11389797341290932451

/-! ## A191178.P12832756716961158918

`A008619(or(1, A191206(n+1)))`
-/

namespace A191178.P12832756716961158918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor 1 (A191206 (n + 1))).toNat

end

end A191178.P12832756716961158918

/-! ## A191178.P6460000244426386580

`A008619(xor(1, A191206(n+1)))`
-/

namespace A191178.P6460000244426386580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor 1 (A191206 (n + 1))).toNat

end

end A191178.P6460000244426386580

/-! ## A191178.P10721923727757552766

`record[A108738(A191127(n+1))]`
-/

namespace A191178.P10721923727757552766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (A191127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191178.P10721923727757552766

/-!
# A191179: Integers in (2+A191127)/4; contains A191127 as a proper subsequence.

The programs for A191179, there is no canonical definition to state claims against.
-/

/-! ## A191179.P3257768840699741853

`ceil(A191207(n+1)/2)`
-/

namespace A191179.P3257768840699741853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191207 (n + 1) : ℚ) / 2⌉

end

end A191179.P3257768840699741853

/-! ## A191179.P1484874195937505488

`A160322(2*(n+2))/2+A191207(n+1)/2`
-/

namespace A191179.P1484874195937505488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160322 (2 * (n + 2)) : ℚ) / 2 + (A191207 (n + 1) : ℚ) / 2

end

end A191179.P1484874195937505488

/-! ## A191179.P6204081144401866903

`A020639(2*(n+1))/4+A191207(n+1)/2`
-/

namespace A191179.P6204081144401866903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * (n + 1)) : ℚ) / 4 + (A191207 (n + 1) : ℚ) / 2

end

end A191179.P6204081144401866903

/-! ## A191179.P10758069585276726449

`A014682(A191207(n+1)+1)`
-/

namespace A191179.P10758069585276726449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191207 (n + 1) + 1).toNat

end

end A191179.P10758069585276726449

/-! ## A191179.P10770422216361625208

`A000463(A191207(n+1))`
-/

namespace A191179.P10770422216361625208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191207 (n + 1)).toNat

end

end A191179.P10770422216361625208

/-! ## A191179.P4023463995785352838

`A004525(A191207(n+1)+1)`
-/

namespace A191179.P4023463995785352838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A191207 (n + 1) + 1).toNat

end

end A191179.P4023463995785352838

/-! ## A191179.P15546704656043240976

`A065033(A191207(n+1)+1)`
-/

namespace A191179.P15546704656043240976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A191207 (n + 1) + 1).toNat

end

end A191179.P15546704656043240976

/-! ## A191179.P13695970784714512454

`A057979(A191207(n+1)+2)`
-/

namespace A191179.P13695970784714512454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A191207 (n + 1) + 2).toNat

end

end A191179.P13695970784714512454

/-! ## A191179.P2689966198728166356

`A065423(A191207(n+1)+3)`
-/

namespace A191179.P2689966198728166356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A191207 (n + 1) + 3).toNat

end

end A191179.P2689966198728166356

/-! ## A191179.P11776252768368681320

`A001057(A191207(n+1)%p?[9*n+2])`
-/

namespace A191179.P11776252768368681320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.tmod (A191207 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)).toNat

end

end A191179.P11776252768368681320

/-! ## A191179.P9364843679062541626

`A001057(A191207(n+1)%A103145(n))`
-/

namespace A191179.P9364843679062541626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.tmod (A191207 (n + 1)) (A103145 n)).toNat

end

end A191179.P9364843679062541626

/-! ## A191179.P6876591714951711692

`A063041(A191207(n+1)+1)%A033203(n+1)`
-/

namespace A191179.P6876591714951711692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063041 (A191207 (n + 1) + 1).toNat) (A033203 (n + 1))

end

end A191179.P6876591714951711692

/-! ## A191179.P2587080777971729696

`record[ceil(A028234(A191127(n+1))/2)]`
-/

namespace A191179.P2587080777971729696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028234 (A191127 (n + 1)).toNat : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191179.P2587080777971729696

/-! ## A191179.P13041729888785482458

`A000463(record[A032742(A191127(n+1))])`
-/

namespace A191179.P13041729888785482458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191179.P13041729888785482458

/-! ## A191179.P17059824616875343556

`A003602(record[A032742(A191127(n+1))])`
-/

namespace A191179.P17059824616875343556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191179.P17059824616875343556

/-! ## A191179.P12358541503280706569

`A008619(record[A028234(A191127(n+1))])`
-/

namespace A191179.P12358541503280706569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A191127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191179.P12358541503280706569

/-! ## A191179.P12845080353068738987

`A008619(record[A032742(A191127(n+1))])`
-/

namespace A191179.P12845080353068738987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191179.P12845080353068738987

/-! ## A191179.P16312422559504140452

`A001057(record[A078898(A191127(n+1))])`
-/

namespace A191179.P16312422559504140452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A191127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191179.P16312422559504140452

/-! ## A191179.P15633933060437828154

`A003602(record[A078898(A191127(n+1))])`
-/

namespace A191179.P15633933060437828154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A191127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191179.P15633933060437828154

/-! ## A191179.P7625572007131773319

`A008619(record[A078898(A191127(n+1))])`
-/

namespace A191179.P7625572007131773319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A191127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191179.P7625572007131773319

/-!
# A191180: Integers in (A191128)/3; contains A191128 as a proper subsequence.

The programs for A191180, there is no canonical definition to state claims against.
-/

/-! ## A191180.P18388796546666175146

`ceil(A191210(n+1)/2)`
-/

namespace A191180.P18388796546666175146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191210 (n + 1) : ℚ) / 2⌉

end

end A191180.P18388796546666175146

/-! ## A191180.P5786815445249033585

`2*A191229(n+1)-1`
-/

namespace A191180.P5786815445249033585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191229 (n + 1) - 1

end

end A191180.P5786815445249033585

/-! ## A191180.P4691296719824235031

`A191229(A000027(n+1))+A191229(n+1)-1`
-/

namespace A191180.P4691296719824235031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (A000027 (n + 1)).toNat + (A191229 (n + 1) - 1)

end

end A191180.P4691296719824235031

/-! ## A191180.P6974496404233472743

`A191229(n+1)+A191229(n+1)-A008836(n+1)²`
-/

namespace A191180.P6974496404233472743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (n + 1) + (A191229 (n + 1) - A008836 (n + 1) ^ 2)

end

end A191180.P6974496404233472743

/-! ## A191180.P5437293113456993451

`floor((A300075(3*n+4)+A191210(n+1))/2)`
-/

namespace A191180.P5437293113456993451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A300075 (3 * n + 4) + A191210 (n + 1) : ℚ) / 2⌋

end

end A191180.P5437293113456993451

/-! ## A191180.P2864769856432076977

`A008683(A023202(n+1))+2*A191229(n+1)`
-/

namespace A191180.P2864769856432076977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A023202 (n + 1)).toNat + 2 * A191229 (n + 1)

end

end A191180.P2864769856432076977

/-! ## A191180.P8569940182550754619

`A008836(record[A006530(n+2)])+2*A191229(n+1)`
-/

namespace A191180.P8569940182550754619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2 * A191229 (n + 1)

end

end A191180.P8569940182550754619

/-! ## A191180.P10978324689909216633

`A000265(A191210(n+1)+1)`
-/

namespace A191180.P10978324689909216633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A191210 (n + 1) + 1).toNat

end

end A191180.P10978324689909216633

/-! ## A191180.P16137260801219178926

`A014682(A191210(n+1)+1)`
-/

namespace A191180.P16137260801219178926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191210 (n + 1) + 1).toNat

end

end A191180.P16137260801219178926

/-! ## A191180.P4949620722855469487

`A005408(A191229(n+1)-1)`
-/

namespace A191180.P4949620722855469487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A191229 (n + 1) - 1).toNat

end

end A191180.P4949620722855469487

/-! ## A191180.P11048081837342992476

`A005843(A191229(n+1)-1)+1`
-/

namespace A191180.P11048081837342992476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A191229 (n + 1) - 1).toNat + 1

end

end A191180.P11048081837342992476

/-! ## A191180.P9347010496850982495

`A004273(A191229(n+1))`
-/

namespace A191180.P9347010496850982495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191229 (n + 1)).toNat

end

end A191180.P9347010496850982495

/-! ## A191180.P9696927322824895636

`A014681(2*A191229(n+1))`
-/

namespace A191180.P9696927322824895636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A191229 (n + 1)).toNat

end

end A191180.P9696927322824895636

/-! ## A191180.P2998055146674941774

`A023443(2*A191229(n+1))`
-/

namespace A191180.P2998055146674941774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A191229 (n + 1)).toNat

end

end A191180.P2998055146674941774

/-! ## A191180.P13964552325301364119

`A000463(A191210(n+1))`
-/

namespace A191180.P13964552325301364119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191210 (n + 1)).toNat

end

end A191180.P13964552325301364119

/-!
# A191181: Integers in (1+A191128)/4; contains A191128 as a proper subsequence.

The programs for A191181, there is no canonical definition to state claims against.
-/

/-! ## A191181.P14960322785631651435

`2*A191165(n+1)-1`
-/

namespace A191181.P14960322785631651435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191165 (n + 1) - 1

end

end A191181.P14960322785631651435

/-! ## A191181.P427870218405655755

`A191195(n+1)+1-A191165(n+1)`
-/

namespace A191181.P427870218405655755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191195 (n + 1) + (1 - A191165 (n + 1))

end

end A191181.P427870218405655755

/-! ## A191181.P7203596953644630182

`A191165(A000027(n+1))+A191165(n+1)-1`
-/

namespace A191181.P7203596953644630182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (A000027 (n + 1)).toNat + (A191165 (n + 1) - 1)

end

end A191181.P7203596953644630182

/-! ## A191181.P4907737119836797125

`A191177(n+2)/3`
-/

namespace A191181.P4907737119836797125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191177 (n + 2) : ℚ) / 3

end

end A191181.P4907737119836797125

/-! ## A191181.P16534198558587468692

`A191163(n+2)-A191165(n+1)`
-/

namespace A191181.P16534198558587468692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 2) - A191165 (n + 1)

end

end A191181.P16534198558587468692

/-! ## A191181.P8385494600903016573

`A005408(A191165(n+1)-1)`
-/

namespace A191181.P8385494600903016573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A191165 (n + 1) - 1).toNat

end

end A191181.P8385494600903016573

/-! ## A191181.P9313698834364310136

`A004273(A191165(n+1))`
-/

namespace A191181.P9313698834364310136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191165 (n + 1)).toNat

end

end A191181.P9313698834364310136

/-! ## A191181.P15701441436344176776

`A346468(2*A191165(n+1))`
-/

namespace A191181.P15701441436344176776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (2 * A191165 (n + 1)).toNat

end

end A191181.P15701441436344176776

/-! ## A191181.P14869994322852380965

`A023443(2*A191165(n+1))`
-/

namespace A191181.P14869994322852380965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A191165 (n + 1)).toNat

end

end A191181.P14869994322852380965

/-! ## A191181.P8892710097438888653

`A094759(A191165(n+1)+A191165(n+1)-1)`
-/

namespace A191181.P8892710097438888653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094759 (A191165 (n + 1) + (A191165 (n + 1) - 1)).toNat

end

end A191181.P8892710097438888653

/-! ## A191181.P12325064228458680894

`A004396(A191195(n+1))`
-/

namespace A191181.P12325064228458680894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A191195 (n + 1)).toNat

end

end A191181.P12325064228458680894

/-! ## A191181.P7662179196170739357

`A004396(A191163(n+2)-1)`
-/

namespace A191181.P7662179196170739357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A191163 (n + 2) - 1).toNat

end

end A191181.P7662179196170739357

/-! ## A191181.P13125088797343283459

`A004396(A191163(n+2))`
-/

namespace A191181.P13125088797343283459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A191163 (n + 2)).toNat

end

end A191181.P13125088797343283459

/-! ## A191181.P11452181395237658671

`A191195(n+1)-A002264(A191195(n+1)+1)`
-/

namespace A191181.P11452181395237658671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191195 (n + 1) - A002264 (A191195 (n + 1) + 1).toNat

end

end A191181.P11452181395237658671

/-! ## A191181.P8413530325308868797

`record[A003602(A191136(n+1))]`
-/

namespace A191181.P8413530325308868797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A191136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191181.P8413530325308868797

/-! ## A191181.P6966374799579986344

`record[A028234(A191120(n+1))]`
-/

namespace A191181.P6966374799579986344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A191120 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191181.P6966374799579986344

/-! ## A191181.P521297647507506797

`record[A025480(A191120(n+2))]`
-/

namespace A191181.P521297647507506797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A191120 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191181.P521297647507506797

/-! ## A191181.P8894869155793959796

`A002264(A191177(n+2))`
-/

namespace A191181.P8894869155793959796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A191177 (n + 2)).toNat

end

end A191181.P8894869155793959796

/-! ## A191181.P10298861641759493899

`A008620(2*A191195(n+1))`
-/

namespace A191181.P10298861641759493899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * A191195 (n + 1)).toNat

end

end A191181.P10298861641759493899

/-! ## A191181.P13889733138970216755

`A008611(2*A191163(n+2))`
-/

namespace A191181.P13889733138970216755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * A191163 (n + 2)).toNat

end

end A191181.P13889733138970216755

/-!
# A191182: Integers in (A191129)/3; contains A191129 as a proper subsequence.

The programs for A191182, there is no canonical definition to state claims against.
-/

/-! ## A191182.P4250613096278546481

`2*A191166(n+1)-1`
-/

namespace A191182.P4250613096278546481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191166 (n + 1) - 1

end

end A191182.P4250613096278546481

/-! ## A191182.P6946556398166670064

`A191146(n+2)-1`
-/

namespace A191182.P6946556398166670064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191146 (n + 2) - 1

end

end A191182.P6946556398166670064

/-! ## A191182.P2157657557158895669

`floor(A191151(n+2)/2)`
-/

namespace A191182.P2157657557158895669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191151 (n + 2) : ℚ) / 2⌋

end

end A191182.P2157657557158895669

/-! ## A191182.P14543117876885901842

`∑[abs(Δ[A191146(n+1)])]`
-/

namespace A191182.P14543117876885901842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191146 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191182.P14543117876885901842

/-! ## A191182.P3525175114861094702

`∑[Δ[A191151(n+1)]/2]`
-/

namespace A191182.P3525175114861094702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191151 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191182.P3525175114861094702

/-! ## A191182.P870572287176908247

`∑[A000027(Δ[A191146(n+1)])]`
-/

namespace A191182.P870572287176908247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191146 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191182.P870572287176908247

/-! ## A191182.P9123188699517554319

`A191157(n+2)-A191155(n+2)`
-/

namespace A191182.P9123188699517554319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191157 (n + 2) - A191155 (n + 2)

end

end A191182.P9123188699517554319

/-! ## A191182.P11038654263995923548

`∑[A032742(Δ[2*A191146(n+1)])]`
-/

namespace A191182.P11038654263995923548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191146 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191182.P11038654263995923548

/-! ## A191182.P656514250580823370

`A000265(A191155(n+2)-1)`
-/

namespace A191182.P656514250580823370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A191155 (n + 2) - 1).toNat

end

end A191182.P656514250580823370

/-! ## A191182.P5522104759978457555

`A004273(A191166(n+1))`
-/

namespace A191182.P5522104759978457555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191166 (n + 1)).toNat

end

end A191182.P5522104759978457555

/-! ## A191182.P16010444375491830869

`A005408(A191166(n+1)-1)`
-/

namespace A191182.P16010444375491830869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A191166 (n + 1) - 1).toNat

end

end A191182.P16010444375491830869

/-! ## A191182.P1420678126744306037

`A004273(A191146(n+2)/2)`
-/

namespace A191182.P1420678126744306037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A191146 (n + 2) : ℚ) / 2)).toNat

end

end A191182.P1420678126744306037

/-! ## A191182.P14874706985481392646

`A014681(A191146(n+2))`
-/

namespace A191182.P14874706985481392646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A191146 (n + 2)).toNat

end

end A191182.P14874706985481392646

/-! ## A191182.P13984396228684888326

`A249122(A191151(n+2))`
-/

namespace A191182.P13984396228684888326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A191151 (n + 2)).toNat

end

end A191182.P13984396228684888326

/-! ## A191182.P9874208593592935420

`A028310(A191166(n+1)+A191166(n+1)-1)`
-/

namespace A191182.P9874208593592935420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A191166 (n + 1) + (A191166 (n + 1) - 1)).toNat

end

end A191182.P9874208593592935420

/-! ## A191182.P17867080970623907303

`record[A006083(A191129(n+1))]`
-/

namespace A191182.P17867080970623907303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A191129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191182.P17867080970623907303

/-! ## A191182.P9304472931728689274

`A260739(A191151(n+2)-1)`
-/

namespace A191182.P9304472931728689274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A191151 (n + 2) - 1).toNat

end

end A191182.P9304472931728689274

/-! ## A191182.P15093745012555567882

`A249122(A191157(n+2)+2)`
-/

namespace A191182.P15093745012555567882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A191157 (n + 2) + 2).toNat

end

end A191182.P15093745012555567882

/-! ## A191182.P11041521229622265523

`record[A032742(A191129(n+2))]`
-/

namespace A191182.P11041521229622265523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191129 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191182.P11041521229622265523

/-! ## A191182.P11472028018854180596

`record[A032742(A191113(n+2)-1)]`
-/

namespace A191182.P11472028018854180596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191113 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191182.P11472028018854180596

/-!
# A191183: Integers in (-1+A191129)/4; contains A191129 as a proper subsequence.

The programs for A191183, there is no canonical definition to state claims against.
-/

/-! ## A191183.P11671735812837287644

`A191149(n+2)-1`
-/

namespace A191183.P11671735812837287644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191149 (n + 2) - 1

end

end A191183.P11671735812837287644

/-! ## A191183.P6045146237084993837

`∑[abs(Δ[A191149(n+1)])]`
-/

namespace A191183.P6045146237084993837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191149 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191183.P6045146237084993837

/-! ## A191183.P18319838636962450697

`(A191154(n+2)-1)/3`
-/

namespace A191183.P18319838636962450697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191154 (n + 2) - 1 : ℚ) / 3

end

end A191183.P18319838636962450697

/-! ## A191183.P15500559065628431330

`∑[A000027(Δ[A191149(n+1)])]`
-/

namespace A191183.P15500559065628431330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191149 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191183.P15500559065628431330

/-! ## A191183.P14232802961775074457

`∑[Δ[A191149(n+1)]%A000124(n+6)]`
-/

namespace A191183.P14232802961775074457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191149 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000124 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191183.P14232802961775074457

/-! ## A191183.P6688558303106774449

`A023443(A191149(n+2))`
-/

namespace A191183.P6688558303106774449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A191149 (n + 2)).toNat

end

end A191183.P6688558303106774449

/-! ## A191183.P12602751320351982372

`record[A249122(A191121(n+3))]`
-/

namespace A191183.P12602751320351982372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A191121 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191183.P12602751320351982372

/-! ## A191183.P6279325208430456023

`A023444(A191149(n+2)+1)`
-/

namespace A191183.P6279325208430456023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A191149 (n + 2) + 1).toNat

end

end A191183.P6279325208430456023

/-! ## A191183.P5401595987243202252

`A002264(A191154(n+2))`
-/

namespace A191183.P5401595987243202252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A191154 (n + 2)).toNat

end

end A191183.P5401595987243202252

/-! ## A191183.P15167236574292416406

`record[A025480(A191129(n+3))]`
-/

namespace A191183.P15167236574292416406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A191129 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191183.P15167236574292416406

/-! ## A191183.P13313107062992442641

`A002266(A191158(n+2))`
-/

namespace A191183.P13313107062992442641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A191158 (n + 2)).toNat

end

end A191183.P13313107062992442641

/-! ## A191183.P645487796214934840

`A058207(A191158(n+2)-1)`
-/

namespace A191183.P645487796214934840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (A191158 (n + 2) - 1).toNat

end

end A191183.P645487796214934840

/-!
# A191184: Integers in (A191130)/3; contains A191130 as a proper subsequence.

The programs for A191184, there is no canonical definition to state claims against.
-/

/-! ## A191184.P1875949232425937452

`record[A032742(A004396(A191185(n+1)))]`
-/

namespace A191184.P1875949232425937452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A004396 (A191185 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191184.P1875949232425937452

/-! ## A191184.P4670462556489910972

`record[A319728(2*(n+1))%A001969(n+4)]`
-/

namespace A191184.P4670462556489910972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319728 (2 * (n + 1))) (A001969 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191184.P4670462556489910972

/-!
# A191185: Integers in (-2+A191130)/4; contains A191130 as a proper subsequence.

The programs for A191185, there is no canonical definition to state claims against.
-/

/-! ## A191185.P15834919979912820426

`record[A028242(A142150(A191130(n+1)))]`
-/

namespace A191185.P15834919979912820426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A142150 (A191130 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191185.P15834919979912820426

/-! ## A191185.P11568420921451927534

`lt[A022167(n), A144463(2*n+3)]-1`
-/

namespace A191185.P11568420921451927534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144463 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A191185.P11568420921451927534

/-! ## A191185.P16058800218084149271

`lt[A266588(n), A290255(A167585(n+1))]`
-/

namespace A191185.P16058800218084149271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (A167585 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191185.P16058800218084149271

/-! ## A191185.P7429848389066749642

`lt[A162420(A162424(n+1)), A162424(2*n+5)]`
-/

namespace A191185.P7429848389066749642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162420 (A162424 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162424 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191185.P7429848389066749642

/-! ## A191185.P5088347248349683054

`lt[A173917(n), A144463(2*n+3)]-1`
-/

namespace A191185.P5088347248349683054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144463 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A191185.P5088347248349683054

/-!
# A191186: Integers in (A191131)/3; contains A191131 as a proper subsequence.

The programs for A191186, there is no canonical definition to state claims against.
-/

/-! ## A191186.P3756251326020726626

`2*A191168(n+1)-1`
-/

namespace A191186.P3756251326020726626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191168 (n + 1) - 1

end

end A191186.P3756251326020726626

/-! ## A191186.P10534301720696934117

`A008683(A002476(n+1))+2*A191168(n+1)`
-/

namespace A191186.P10534301720696934117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002476 (n + 1)).toNat + 2 * A191168 (n + 1)

end

end A191186.P10534301720696934117

/-! ## A191186.P11960706611239026330

`A008683(A045386(n+1))+2*A191168(n+1)`
-/

namespace A191186.P11960706611239026330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A045386 (n + 1)).toNat + 2 * A191168 (n + 1)

end

end A191186.P11960706611239026330

/-! ## A191186.P11241959094290812980

`A008683(A001097(n+1))+2*A191168(n+1)`
-/

namespace A191186.P11241959094290812980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001097 (n + 1)).toNat + 2 * A191168 (n + 1)

end

end A191186.P11241959094290812980

/-! ## A191186.P12159506472602228522

`A008683(A142793(n+1))+2*A191168(n+1)`
-/

namespace A191186.P12159506472602228522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A142793 (n + 1)).toNat + 2 * A191168 (n + 1)

end

end A191186.P12159506472602228522

/-! ## A191186.P7993309630438911172

`A004273(A191168(n+1))`
-/

namespace A191186.P7993309630438911172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191168 (n + 1)).toNat

end

end A191186.P7993309630438911172

/-! ## A191186.P826063017029135717

`A005408(A191168(n+1)-1)`
-/

namespace A191186.P826063017029135717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A191168 (n + 1) - 1).toNat

end

end A191186.P826063017029135717

/-! ## A191186.P18426047407698091459

`A005843(A191168(n+1)-1)+1`
-/

namespace A191186.P18426047407698091459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A191168 (n + 1) - 1).toNat + 1

end

end A191186.P18426047407698091459

/-! ## A191186.P18194137461841902849

`A267458(2*A191168(n+1))`
-/

namespace A191186.P18194137461841902849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (2 * A191168 (n + 1)).toNat

end

end A191186.P18194137461841902849

/-! ## A191186.P16605872198247748493

`A267458(A191168(n+1)+A191168(n+1)+1)`
-/

namespace A191186.P16605872198247748493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A191168 (n + 1) + (A191168 (n + 1) + 1)).toNat

end

end A191186.P16605872198247748493

/-! ## A191186.P17277960365582832325

`record[A032742(A191131(n+1))]`
-/

namespace A191186.P17277960365582832325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191186.P17277960365582832325

/-!
# A191187: Integers in (-3+A191131)/4; contains A191131 as a proper subsequence.

The programs for A191187, there is no canonical definition to state claims against.
-/

/-! ## A191187.P11128009980551637075

`record[A057979(A191122(n+1)-1)]`
-/

namespace A191187.P11128009980551637075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A191122 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191187.P11128009980551637075

/-! ## A191187.P1562926385654773412

`record[A057979(A191168(n+1)-1)]`
-/

namespace A191187.P1562926385654773412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A191168 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191187.P1562926385654773412

/-! ## A191187.P9434351679806057174

`record[A032742(A191122(n+3))-1]`
-/

namespace A191187.P9434351679806057174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191122 (n + 3)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191187.P9434351679806057174

/-! ## A191187.P16151646993951932957

`record[A057428(n)+A032742(A191122(n+1))]`
-/

namespace A191187.P16151646993951932957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A032742 (A191122 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191187.P16151646993951932957

/-! ## A191187.P360797253263428671

`record[gcd(A306567(n+1), A306571(3*(n+1)))]`
-/

namespace A191187.P360797253263428671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A306567 (n + 1)) (A306571 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191187.P360797253263428671

/-!
# A191188: a(n) = floor(8*n*Pi) - 2*floor(4*n*Pi).

The programs for A191188, the canonical program `A191188.P1888990739352895910` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191188 has offset 1).

The definition of A191188 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(8*(n+1)*π)-2*floor(4*(n+1)*π)` (program `A191188.P1888990739352895910`, by `A191188.P1888990739352895910.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191188.P1888990739352895910

`floor(8*(n+1)*π)-2*floor(4*(n+1)*π)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191188

/-- `floor(8*(n+1)*π)-2*floor(4*(n+1)*π)` -/
def P1888990739352895910.Spec : Prop :=
  ∀ n, P1888990739352895910.a n = A191188 (n + 1)

theorem P1888990739352895910.correct : P1888990739352895910.Spec := by
  intro n
  simp only [A191188, Nat.add_sub_cancel]

end A191188

/-! ## A191188.P18349917258606366683

`floor(8*π*(n+1))%2`
-/

namespace A191188.P18349917258606366683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊8 * (Real.pi * (n + 1 : ℝ))⌋ 2

end

end A191188.P18349917258606366683

namespace A191188

/-- `floor(8*π*(n+1))%2` -/
def P18349917258606366683.Spec : Prop :=
  ∀ n, P18349917258606366683.a n = A191188 (n + 1)

end A191188

/-! ## A191188.P2761219345033674962

`and(1, floor(8*π*(n+1)))`
-/

namespace A191188.P2761219345033674962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊8 * (Real.pi * (n + 1 : ℝ))⌋

end

end A191188.P2761219345033674962

namespace A191188

/-- `and(1, floor(8*π*(n+1)))` -/
def P2761219345033674962.Spec : Prop :=
  ∀ n, P2761219345033674962.a n = A191188 (n + 1)

end A191188

/-! ## A191188.P9265500484172130410

`char[A191202(n+1)-1]`
-/

namespace A191188.P9265500484172130410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191202 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A191188.P9265500484172130410

namespace A191188

/-- `char[A191202(n+1)-1]` -/
def P9265500484172130410.Spec : Prop :=
  ∀ n, (P9265500484172130410.a n : ℤ) = A191188 (n + 1)

end A191188

/-! ## A191188.P3416311952299249116

`A191162(2*(n+1))`
-/

namespace A191188.P3416311952299249116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191162 (2 * (n + 1))

end

end A191188.P3416311952299249116

namespace A191188

/-- `A191162(2*(n+1))` -/
def P3416311952299249116.Spec : Prop :=
  ∀ n, P3416311952299249116.a n = A191188 (n + 1)

end A191188

/-! ## A191188.P852964221753796003

`A191153(4*(n+1))`
-/

namespace A191188.P852964221753796003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191153 (4 * (n + 1))

end

end A191188.P852964221753796003

namespace A191188

/-- `A191153(4*(n+1))` -/
def P852964221753796003.Spec : Prop :=
  ∀ n, P852964221753796003.a n = A191188 (n + 1)

end A191188

/-! ## A191188.P12472347342735002418

`floor(1/A024584(4*(n+1)))`
-/

namespace A191188.P12472347342735002418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A024584 (4 * (n + 1)) : ℚ)⌋

end

end A191188.P12472347342735002418

namespace A191188

/-- `floor(1/A024584(4*(n+1)))` -/
def P12472347342735002418.Spec : Prop :=
  ∀ n, P12472347342735002418.a n = A191188 (n + 1)

end A191188

/-! ## A191188.P10968738135734453410

`A115788(8*(n+1))`
-/

namespace A191188.P10968738135734453410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115788 (8 * (n + 1))

end

end A191188.P10968738135734453410

namespace A191188

/-- `A115788(8*(n+1))` -/
def P10968738135734453410.Spec : Prop :=
  ∀ n, P10968738135734453410.a n = A191188 (n + 1)

end A191188

/-! ## A191188.P1090646995027754214

`A204545(A140229(n+1))`
-/

namespace A191188.P1090646995027754214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204545 (A140229 (n + 1)).toNat

end

end A191188.P1090646995027754214

namespace A191188

/-- `A204545(A140229(n+1))` -/
def P1090646995027754214.Spec : Prop :=
  ∀ n, P1090646995027754214.a n = A191188 (n + 1)

end A191188

/-! ## A191188.P16606849868336820725

`ceil(cos(ratio[n^n]))`
-/

namespace A191188.P16606849868336820725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)⌉

end

end A191188.P16606849868336820725

namespace A191188

/-- `ceil(cos(ratio[n^n]))` -/
def P16606849868336820725.Spec : Prop :=
  ∀ n, P16606849868336820725.a n = A191188 (n + 1)

end A191188

/-!
# A191189: Integers in (3+A191132)/4; contains A191132 as a proper subsequence.

The programs for A191189, there is no canonical definition to state claims against.
-/

/-! ## A191189.P3632048345680819002

`3*A191163(n+1)-2`
-/

namespace A191189.P3632048345680819002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191163 (n + 1) - 2

end

end A191189.P3632048345680819002

/-! ## A191189.P2054369647706536411

`3*(A191177(n+1)+1)/2-2`
-/

namespace A191189.P2054369647706536411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A191177 (n + 1) + 1 : ℚ) / 2) - 2

end

end A191189.P2054369647706536411

/-! ## A191189.P1335479065617801216

`A191163(n+1)+A191177(n+1)-1`
-/

namespace A191189.P1335479065617801216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 1) + (A191177 (n + 1) - 1)

end

end A191189.P1335479065617801216

/-! ## A191189.P910869261881697601

`A014682(A191177(n+1))-1`
-/

namespace A191189.P910869261881697601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191177 (n + 1)).toNat - 1

end

end A191189.P910869261881697601

/-! ## A191189.P13533017923668104463

`record[A014682(A191120(n+1))/2]`
-/

namespace A191189.P13533017923668104463
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014682 (A191120 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191189.P13533017923668104463

/-! ## A191189.P4082994797937487723

`A016777(A191163(n+1)-1)`
-/

namespace A191189.P4082994797937487723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A191163 (n + 1) - 1).toNat

end

end A191189.P4082994797937487723

/-! ## A191189.P3098249768332352247

`A028837(A191163(n+1))`
-/

namespace A191189.P3098249768332352247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (A191163 (n + 1)).toNat

end

end A191189.P3098249768332352247

/-! ## A191189.P5684314377834142313

`A191177(n+1)+A175126(A191177(n+1)-1)`
-/

namespace A191189.P5684314377834142313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191177 (n + 1) + A175126 (A191177 (n + 1) - 1).toNat

end

end A191189.P5684314377834142313

/-! ## A191189.P9576356040614860737

`A001651(A191177(n+1))`
-/

namespace A191189.P9576356040614860737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A191177 (n + 1)).toNat

end

end A191189.P9576356040614860737

/-! ## A191189.P7252609930811622731

`A244477(3*A191163(n+1))`
-/

namespace A191189.P7252609930811622731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (3 * A191163 (n + 1)).toNat

end

end A191189.P7252609930811622731

/-!
# A191191: Integers in (2+A191133)/4; contains A191133 as a proper subsequence.

The programs for A191191, there is no canonical definition to state claims against.
-/

/-! ## A191191.P5562160163496469446

`record[A330755(A191133(n+1))]`
-/

namespace A191191.P5562160163496469446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330755 (A191133 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191191.P5562160163496469446

/-! ## A191191.P1496339570812317383

`record[A330755(A191190(n+1))]`
-/

namespace A191191.P1496339570812317383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330755 (A191190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191191.P1496339570812317383

/-!
# A191192: Integers in (-1+A191134)/3; contains A191134 as a proper subsequence.

The programs for A191192, there is no canonical definition to state claims against.
-/

/-! ## A191192.P5873091549242762912

`eq[A151660(n), A248625(A145569(n))]`
-/

namespace A191192.P5873091549242762912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248625 (A145569 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191192.P5873091549242762912

/-! ## A191192.P6693283411042527905

`∑[gcd(A166963(2*n), A242791(n+5))]`
-/

namespace A191192.P6693283411042527905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166963 (2 * n)) (A242791 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191192.P6693283411042527905

/-! ## A191192.P15266799630006391020

`lt[A006995(3*(n+1)), A022957(A089861(2*n+3))]`
-/

namespace A191192.P15266799630006391020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022957 (A089861 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191192.P15266799630006391020

/-!
# A191194: Positions of 0 in A191188; complement of A191202.

The programs for A191194, the canonical program `A191194.P9228674649673219148` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191194 has offset 1).

The definition of A191194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191194.P9228674649673219148

`eq[char[A191202(n+1)], A010051(3*(n+1))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A191194

/-- `eq[char[A191202(n+1)], A010051(3*(n+1))]` -/
def P9228674649673219148.Spec : Prop :=
  ∀ n, (P9228674649673219148.a n : ℤ) = A191194 (n + 1)

theorem P9228674649673219148.correct : P9228674649673219148.Spec := by
  intro n
  simp only [A191194, Nat.add_sub_cancel]

end A191194

/-! ## A191194.P3592580144759872189

`record[A289441(A191214(n+2))]`
-/

namespace A191194.P3592580144759872189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (A191214 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191194.P3592580144759872189

namespace A191194

/-- `record[A289441(A191214(n+2))]` -/
def P3592580144759872189.Spec : Prop :=
  ∀ n, P3592580144759872189.a n = A191194 (n + 1)

end A191194

/-! ## A191194.P2691671735759788201

`∑[A217983(A204990(n+1)+1)]`
-/

namespace A191194.P2691671735759788201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217983 (A204990 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191194.P2691671735759788201

namespace A191194

/-- `∑[A217983(A204990(n+1)+1)]` -/
def P2691671735759788201.Spec : Prop :=
  ∀ n, P2691671735759788201.a n = A191194 (n + 1)

end A191194

/-! ## A191194.P10222373888447075273

`∑[A260686(A204990(n+1)+1)]`
-/

namespace A191194.P10222373888447075273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260686 (A204990 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191194.P10222373888447075273

namespace A191194

/-- `∑[A260686(A204990(n+1)+1)]` -/
def P10222373888447075273.Spec : Prop :=
  ∀ n, P10222373888447075273.a n = A191194 (n + 1)

end A191194

/-! ## A191194.P3257751013789515896

`∑[A341969(A007092(2*n+1))+1]`
-/

namespace A191194.P3257751013789515896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341969 (A007092 (2 * n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191194.P3257751013789515896

namespace A191194

/-- `∑[A341969(A007092(2*n+1))+1]` -/
def P3257751013789515896.Spec : Prop :=
  ∀ n, P3257751013789515896.a n = A191194 (n + 1)

end A191194

/-!
# A191195: Integers in (A191135)/4; contains A191135 as a proper subsequence.

The programs for A191195, there is no canonical definition to state claims against.
-/

/-! ## A191195.P3100205548340254715

`3*A191165(n+1)-2`
-/

namespace A191195.P3100205548340254715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191165 (n + 1) - 2

end

end A191195.P3100205548340254715

/-! ## A191195.P9266090635918769952

`3*(A191181(n+1)+1)/2-2`
-/

namespace A191195.P9266090635918769952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A191181 (n + 1) + 1 : ℚ) / 2) - 2

end

end A191195.P9266090635918769952

/-! ## A191195.P5389804296624623746

`A191163(n+2)-1`
-/

namespace A191195.P5389804296624623746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 2) - 1

end

end A191195.P5389804296624623746

/-! ## A191195.P274643864831267559

`floor(A191177(n+2)/2)`
-/

namespace A191195.P274643864831267559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191177 (n + 2) : ℚ) / 2⌋

end

end A191195.P274643864831267559

/-! ## A191195.P17674070770432995246

`∑[abs(Δ[A191163(n+1)])]`
-/

namespace A191195.P17674070770432995246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191195.P17674070770432995246

/-! ## A191195.P6620727324613203361

`(A191189(n+2)-1)/3`
-/

namespace A191195.P6620727324613203361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191189 (n + 2) - 1 : ℚ) / 3

end

end A191195.P6620727324613203361

/-! ## A191195.P15273876620599970359

`A191189(n+2)-A191177(n+2)`
-/

namespace A191195.P15273876620599970359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191189 (n + 2) - A191177 (n + 2)

end

end A191195.P15273876620599970359

/-! ## A191195.P3866756217364856242

`∑[A000027(Δ[A191163(n+1)])]`
-/

namespace A191195.P3866756217364856242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191163 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191195.P3866756217364856242

/-! ## A191195.P5070524890163531664

`A033999(2*n+1)+A033999(2*n)*A191163(n+2)`
-/

namespace A191195.P5070524890163531664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A033999 (2 * n) * A191163 (n + 2)

end

end A191195.P5070524890163531664

/-! ## A191195.P16006008028918457253

`A014682(A191177(n+2)-1)`
-/

namespace A191195.P16006008028918457253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191177 (n + 2) - 1).toNat

end

end A191195.P16006008028918457253

/-! ## A191195.P3813600036097871746

`A016777(A191165(n+1)-1)`
-/

namespace A191195.P3813600036097871746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A191165 (n + 1) - 1).toNat

end

end A191195.P3813600036097871746

/-! ## A191195.P1452149169230061282

`A191181(n+1)+A175126(A191181(n+1)-1)`
-/

namespace A191195.P1452149169230061282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191181 (n + 1) + A175126 (A191181 (n + 1) - 1).toNat

end

end A191195.P1452149169230061282

/-! ## A191195.P4067081261186756229

`A001651(A191181(n+1))`
-/

namespace A191195.P4067081261186756229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A191181 (n + 1)).toNat

end

end A191195.P4067081261186756229

/-! ## A191195.P14107528828200912995

`A004483(A191163(n+2))`
-/

namespace A191195.P14107528828200912995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A191163 (n + 2)).toNat

end

end A191195.P14107528828200912995

/-! ## A191195.P17346547020546295778

`A244477(A191163(n+2)+1)`
-/

namespace A191195.P17346547020546295778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (A191163 (n + 2) + 1).toNat

end

end A191195.P17346547020546295778

/-! ## A191195.P5090365710107431227

`A175126(A191177(n+2))`
-/

namespace A191195.P5090365710107431227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A191177 (n + 2)).toNat

end

end A191195.P5090365710107431227

/-! ## A191195.P6133629793252065383

`A175126(A191181(n+1)+2*A191181(n+1))`
-/

namespace A191195.P6133629793252065383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A191181 (n + 1) + 2 * A191181 (n + 1)).toNat

end

end A191195.P6133629793252065383

/-! ## A191195.P7878394513995510525

`A000463(A191177(n+2)-2)`
-/

namespace A191195.P7878394513995510525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191177 (n + 2) - 2).toNat

end

end A191195.P7878394513995510525

/-! ## A191195.P873354579014869371

`A004524(A191181(n+1)+2*A191181(n+1))`
-/

namespace A191195.P873354579014869371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A191181 (n + 1) + 2 * A191181 (n + 1)).toNat

end

end A191195.P873354579014869371

/-!
# A191196: Integers in (-1+A191136)/3; contains A191136 as a proper subsequence.

The programs for A191196, there is no canonical definition to state claims against.
-/

/-! ## A191196.P18110873532150603141

`A191229(n+2)-1`
-/

namespace A191196.P18110873532150603141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (n + 2) - 1

end

end A191196.P18110873532150603141

/-! ## A191196.P373660394519356973

`floor(A191210(n+2)/4)`
-/

namespace A191196.P373660394519356973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191210 (n + 2) : ℚ) / 4⌋

end

end A191196.P373660394519356973

/-! ## A191196.P7111670209750816989

`∑[abs(Δ[A191229(n+1)])]`
-/

namespace A191196.P7111670209750816989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191196.P7111670209750816989

/-! ## A191196.P17868506297498449963

`(A191180(n+2)-1)/2`
-/

namespace A191196.P17868506297498449963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191180 (n + 2) - 1 : ℚ) / 2

end

end A191196.P17868506297498449963

/-! ## A191196.P16197161662635197585

`∑[Δ[A191180(n+1)]/2]`
-/

namespace A191196.P16197161662635197585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191180 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191196.P16197161662635197585

/-! ## A191196.P15436496683291150736

`∑[A000027(Δ[A191229(n+1)])]`
-/

namespace A191196.P15436496683291150736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191196.P15436496683291150736

/-! ## A191196.P12979712842013419810

`A014682(A191180(n+2)-1)`
-/

namespace A191196.P12979712842013419810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191180 (n + 2) - 1).toNat

end

end A191196.P12979712842013419810

/-! ## A191196.P3699938327248393646

`∑[A004526(Δ[A191180(n+1)])]`
-/

namespace A191196.P3699938327248393646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191180 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191196.P3699938327248393646

/-! ## A191196.P6374363815240726078

`∑[A029578(Δ[A191180(n+1)])]`
-/

namespace A191196.P6374363815240726078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191180 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191196.P6374363815240726078

/-! ## A191196.P6227840294486073291

`∑[A002265(Δ[A191210(n+1)])]`
-/

namespace A191196.P6227840294486073291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191210 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191196.P6227840294486073291

/-! ## A191196.P14777942583666030664

`A023443(A191229(n+2))`
-/

namespace A191196.P14777942583666030664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A191229 (n + 2)).toNat

end

end A191196.P14777942583666030664

/-! ## A191196.P5773727682689523901

`A175126(A191180(n+2)-1)`
-/

namespace A191196.P5773727682689523901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A191180 (n + 2) - 1).toNat

end

end A191196.P5773727682689523901

/-! ## A191196.P18306264366280217630

`A004524(A191180(n+2))`
-/

namespace A191196.P18306264366280217630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A191180 (n + 2)).toNat

end

end A191196.P18306264366280217630

/-! ## A191196.P9982310221075819630

`A029578(A191180(n+2)-1)`
-/

namespace A191196.P9982310221075819630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A191180 (n + 2) - 1).toNat

end

end A191196.P9982310221075819630

/-! ## A191196.P2621344563976650402

`A000463(A191180(n+2)-2)`
-/

namespace A191196.P2621344563976650402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191180 (n + 2) - 2).toNat

end

end A191196.P2621344563976650402

/-! ## A191196.P17177080219512832338

`A008621(A191210(n+2)-2)`
-/

namespace A191196.P17177080219512832338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A191210 (n + 2) - 2).toNat

end

end A191196.P17177080219512832338

/-! ## A191196.P14082394978891847584

`A002265(A191210(n+2))`
-/

namespace A191196.P14082394978891847584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A191210 (n + 2)).toNat

end

end A191196.P14082394978891847584

/-! ## A191196.P17311951752933080453

`A002265(2*A191180(n+2))`
-/

namespace A191196.P17311951752933080453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A191180 (n + 2)).toNat

end

end A191196.P17311951752933080453

/-!
# A191197: Integers in (-1+A191136)/4; contains A191136 as a proper subsequence.

The programs for A191197, there is no canonical definition to state claims against.
-/

/-! ## A191197.P859604679810433922

`∪[A191120(n+2), A191189(n+2)]-1`
-/

namespace A191197.P859604679810433922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191120 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191189 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A191197.P859604679810433922

/-! ## A191197.P9761634283131234786

`A191165(n+2)-1`
-/

namespace A191197.P9761634283131234786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (n + 2) - 1

end

end A191197.P9761634283131234786

/-! ## A191197.P8510957247327673416

`floor(A191181(n+2)/2)`
-/

namespace A191197.P8510957247327673416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191181 (n + 2) : ℚ) / 2⌋

end

end A191197.P8510957247327673416

/-! ## A191197.P8985462697728501393

`∑[abs(Δ[A191165(n+1)])]`
-/

namespace A191197.P8985462697728501393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191197.P8985462697728501393

/-! ## A191197.P15719345080587856114

`(A191195(n+2)-1)/3`
-/

namespace A191197.P15719345080587856114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191195 (n + 2) - 1 : ℚ) / 3

end

end A191197.P15719345080587856114

/-! ## A191197.P15978447575520375755

`∑[Δ[A191181(n+1)]/2]`
-/

namespace A191197.P15978447575520375755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191181 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191197.P15978447575520375755

/-! ## A191197.P4555342764755536515

`∑[A000027(Δ[A191165(n+1)])]`
-/

namespace A191197.P4555342764755536515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191197.P4555342764755536515

/-! ## A191197.P4830590516370470208

`A191195(n+2)-A191181(n+2)`
-/

namespace A191197.P4830590516370470208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191195 (n + 2) - A191181 (n + 2)

end

end A191197.P4830590516370470208

/-! ## A191197.P14938517288226604146

`∑[Δ[A191165(n+1)]%A000217(n+9)]`
-/

namespace A191197.P14938517288226604146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000217 (n + 9))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191197.P14938517288226604146

/-! ## A191197.P6922072842919309649

`(A191163(n+3)-2)/3`
-/

namespace A191197.P6922072842919309649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191163 (n + 3) - 2 : ℚ) / 3

end

end A191197.P6922072842919309649

/-! ## A191197.P9247473218432375158

`∑[A094759(Δ[A191165(n+1)])]`
-/

namespace A191197.P9247473218432375158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191165 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094759 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191197.P9247473218432375158

/-! ## A191197.P17424818572019693028

`A023443(A191165(n+2))`
-/

namespace A191197.P17424818572019693028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A191165 (n + 2)).toNat

end

end A191197.P17424818572019693028

/-! ## A191197.P7690485336965429400

`A175126(A191181(n+2)-1)`
-/

namespace A191197.P7690485336965429400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A191181 (n + 2) - 1).toNat

end

end A191197.P7690485336965429400

/-! ## A191197.P16527840407365575909

`A004524(A191181(n+2))`
-/

namespace A191197.P16527840407365575909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A191181 (n + 2)).toNat

end

end A191197.P16527840407365575909

/-! ## A191197.P14887142943043403757

`A000463(A191181(n+2)-2)`
-/

namespace A191197.P14887142943043403757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191181 (n + 2) - 2).toNat

end

end A191197.P14887142943043403757

/-! ## A191197.P12622543215107951118

`A002264(A191195(n+2))`
-/

namespace A191197.P12622543215107951118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A191195 (n + 2)).toNat

end

end A191197.P12622543215107951118

/-! ## A191197.P6195681239239306946

`A008620(A191195(n+2)-2)`
-/

namespace A191197.P6195681239239306946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A191195 (n + 2) - 2).toNat

end

end A191197.P6195681239239306946

