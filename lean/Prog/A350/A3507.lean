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
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
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
# A350700: a(n) is the number of 1's minus the number of 0's in A004685(n).

The programs for A350700, the canonical program `A350700.P12913165554531738281` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350700 has offset 0).

The definition of A350700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350700.P12913165554531738281

`Δ[A214923(abs(1-n))]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A350700

/-- `Δ[A214923(abs(1-n))]` -/
def P12913165554531738281.Spec : Prop :=
  ∀ n, P12913165554531738281.a n = A350700 n

theorem P12913165554531738281.correct : P12913165554531738281.Spec := by
  intro n
  simp only [A350700]

end A350700

/-! ## A350700.P4670633377497362113

`A011373(n)-A059016(n)`
-/

namespace A350700.P4670633377497362113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 n - A059016 n

end

end A350700.P4670633377497362113

namespace A350700

/-- `A011373(n)-A059016(n)` -/
def P4670633377497362113.Spec : Prop :=
  ∀ n, P4670633377497362113.a n = A350700 n

end A350700

/-! ## A350700.P4259427445721119466

`2*A011373(n)-A020909(A028310(n))`
-/

namespace A350700.P4259427445721119466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011373 n - A020909 (A028310 n).toNat

end

end A350700.P4259427445721119466

namespace A350700

/-- `2*A011373(n)-A020909(A028310(n))` -/
def P4259427445721119466.Spec : Prop :=
  ∀ n, P4259427445721119466.a n = A350700 n

end A350700

/-! ## A350700.P7644179978097760829

`∑{digits}[A004685(n), A056220(#)]`
-/

namespace A350700.P7644179978097760829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A056220 x).sum

end

end A350700.P7644179978097760829

namespace A350700

/-- `∑{digits}[A004685(n), A056220(#)]` -/
def P7644179978097760829.Spec : Prop :=
  ∀ n, P7644179978097760829.a n = A350700 n

end A350700

/-! ## A350700.P4854803498343957946

`∑{digits}[A004685(n), A004718(2-#)]`
-/

namespace A350700.P4854803498343957946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004718 (2 - x)).sum

end

end A350700.P4854803498343957946

namespace A350700

/-- `∑{digits}[A004685(n), A004718(2-#)]` -/
def P4854803498343957946.Spec : Prop :=
  ∀ n, P4854803498343957946.a n = A350700 n

end A350700

/-! ## A350700.P8954263131331269465

`∑{digits}[A004685(n), #]-A059016(n)`
-/

namespace A350700.P8954263131331269465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A059016 n

end

end A350700.P8954263131331269465

namespace A350700

/-- `∑{digits}[A004685(n), #]-A059016(n)` -/
def P8954263131331269465.Spec : Prop :=
  ∀ n, P8954263131331269465.a n = A350700 n

end A350700

/-!
# A350704: Composite numbers that have no Sophie Germain prime factors.

The programs for A350704, the canonical program `A350704.P136889457551582597` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350704 has offset 1).

The definition of A350704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4746 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350704.P136889457551582597

`filter[A156543(n+1), A066247(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A350704

/-- `filter[A156543(n+1), A066247(#)]` -/
def P136889457551582597.Spec : Prop :=
  ∀ n, P136889457551582597.a n = A350704 (n + 1)

theorem P136889457551582597.correct : P136889457551582597.Spec := by
  intro n
  simp only [A350704, Nat.add_sub_cancel]

end A350704

/-! ## A350704.P3101516440261744630

`filter[A156543(n+1), A202238(#)]`
-/

namespace A350704.P3101516440261744630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A350704.P3101516440261744630

namespace A350704

/-- `filter[A156543(n+1), A202238(#)]` -/
def P3101516440261744630.Spec : Prop :=
  ∀ n, P3101516440261744630.a n = A350704 (n + 1)

end A350704

/-! ## A350704.P17447373369720896190

`filter[A156543(n+1), A323162(#)]`
-/

namespace A350704.P17447373369720896190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A350704.P17447373369720896190

namespace A350704

/-- `filter[A156543(n+1), A323162(#)]` -/
def P17447373369720896190.Spec : Prop :=
  ∀ n, P17447373369720896190.a n = A350704 (n + 1)

end A350704

/-! ## A350704.P3588109546683474094

`filter[A156543(n+2), A005171(#)]`
-/

namespace A350704.P3588109546683474094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A350704.P3588109546683474094

namespace A350704

/-- `filter[A156543(n+2), A005171(#)]` -/
def P3588109546683474094.Spec : Prop :=
  ∀ n, P3588109546683474094.a n = A350704 (n + 1)

end A350704

/-! ## A350704.P10656389729241812180

`filter[A156543(n+2), A292438(#)]`
-/

namespace A350704.P10656389729241812180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A350704.P10656389729241812180

namespace A350704

/-- `filter[A156543(n+2), A292438(#)]` -/
def P10656389729241812180.Spec : Prop :=
  ∀ n, P10656389729241812180.a n = A350704 (n + 1)

end A350704

/-! ## A350704.P10958215668366097947

`∩[A038510(n+1), A156543(n+1)]`
-/

namespace A350704.P10958215668366097947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350704.P10958215668366097947

namespace A350704

/-- `∩[A038510(n+1), A156543(n+1)]` -/
def P10958215668366097947.Spec : Prop :=
  ∀ n, (P10958215668366097947.a n : ℤ) = A350704 (n + 1)

end A350704

/-! ## A350704.P12752569893413287773

`∩[A156543(n+1), A158725(n+1)]`
-/

namespace A350704.P12752569893413287773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350704.P12752569893413287773

namespace A350704

/-- `∩[A156543(n+1), A158725(n+1)]` -/
def P12752569893413287773.Spec : Prop :=
  ∀ n, (P12752569893413287773.a n : ℤ) = A350704 (n + 1)

end A350704

/-! ## A350704.P16040388173439995294

`∩[A038509(n+1), A156543(n+1)]`
-/

namespace A350704.P16040388173439995294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350704.P16040388173439995294

namespace A350704

/-- `∩[A038509(n+1), A156543(n+1)]` -/
def P16040388173439995294.Spec : Prop :=
  ∀ n, (P16040388173439995294.a n : ℤ) = A350704 (n + 1)

end A350704

/-! ## A350704.P17619538038724833232

`∩[A156543(n+1), A390467(n+1)]`
-/

namespace A350704.P17619538038724833232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350704.P17619538038724833232

namespace A350704

/-- `∩[A156543(n+1), A390467(n+1)]` -/
def P17619538038724833232.Spec : Prop :=
  ∀ n, (P17619538038724833232.a n : ℤ) = A350704 (n + 1)

end A350704

/-! ## A350704.P2027009860593830321

`∩[A069063(n+1), A156543(n+1)]`
-/

namespace A350704.P2027009860593830321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350704.P2027009860593830321

namespace A350704

/-- `∩[A069063(n+1), A156543(n+1)]` -/
def P2027009860593830321.Spec : Prop :=
  ∀ n, (P2027009860593830321.a n : ℤ) = A350704 (n + 1)

end A350704

/-! ## A350704.P6959501494860488411

`∩[A053795(n+1), A156543(n+1)]`
-/

namespace A350704.P6959501494860488411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350704.P6959501494860488411

namespace A350704

/-- `∩[A053795(n+1), A156543(n+1)]` -/
def P6959501494860488411.Spec : Prop :=
  ∀ n, (P6959501494860488411.a n : ℤ) = A350704 (n + 1)

end A350704

/-! ## A350704.P17335701955446421531

`∩[A067887(n+1), A156543(n+1)]`
-/

namespace A350704.P17335701955446421531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350704.P17335701955446421531

namespace A350704

/-- `∩[A067887(n+1), A156543(n+1)]` -/
def P17335701955446421531.Spec : Prop :=
  ∀ n, (P17335701955446421531.a n : ℤ) = A350704 (n + 1)

end A350704

/-! ## A350704.P15280925032316357257

`∩[A156543(n+1), A333039(n+1)]`
-/

namespace A350704.P15280925032316357257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350704.P15280925032316357257

namespace A350704

/-- `∩[A156543(n+1), A333039(n+1)]` -/
def P15280925032316357257.Spec : Prop :=
  ∀ n, (P15280925032316357257.a n : ℤ) = A350704 (n + 1)

end A350704

/-! ## A350704.P3179094543896486396

`∩[A071904(n+1), A156543(n+1)]`
-/

namespace A350704.P3179094543896486396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350704.P3179094543896486396

namespace A350704

/-- `∩[A071904(n+1), A156543(n+1)]` -/
def P3179094543896486396.Spec : Prop :=
  ∀ n, (P3179094543896486396.a n : ℤ) = A350704 (n + 1)

end A350704

/-! ## A350704.P3185185799263138662

`∩[A156543(n+1), A270574(n+1)]`
-/

namespace A350704.P3185185799263138662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350704.P3185185799263138662

namespace A350704

/-- `∩[A156543(n+1), A270574(n+1)]` -/
def P3185185799263138662.Spec : Prop :=
  ∀ n, (P3185185799263138662.a n : ℤ) = A350704 (n + 1)

end A350704

/-! ## A350704.P12573673276225073721

`∩[A078505(n+1), A156543(n+1)]`
-/

namespace A350704.P12573673276225073721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350704.P12573673276225073721

namespace A350704

/-- `∩[A078505(n+1), A156543(n+1)]` -/
def P12573673276225073721.Spec : Prop :=
  ∀ n, (P12573673276225073721.a n : ℤ) = A350704 (n + 1)

end A350704

/-! ## A350704.P16028146543995688079

`∩[A083247(n+1), A156543(n+1)]`
-/

namespace A350704.P16028146543995688079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350704.P16028146543995688079

namespace A350704

/-- `∩[A083247(n+1), A156543(n+1)]` -/
def P16028146543995688079.Spec : Prop :=
  ∀ n, (P16028146543995688079.a n : ℤ) = A350704 (n + 1)

end A350704

/-! ## A350704.P15385405650180951027

`∩[A039769(n+1), A156543(n+1)]`
-/

namespace A350704.P15385405650180951027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350704.P15385405650180951027

namespace A350704

/-- `∩[A039769(n+1), A156543(n+1)]` -/
def P15385405650180951027.Spec : Prop :=
  ∀ n, (P15385405650180951027.a n : ℤ) = A350704 (n + 1)

end A350704

/-! ## A350704.P6457721867198303983

`∩[A156543(n+1), A181780(n+1)]`
-/

namespace A350704.P6457721867198303983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350704.P6457721867198303983

namespace A350704

/-- `∩[A156543(n+1), A181780(n+1)]` -/
def P6457721867198303983.Spec : Prop :=
  ∀ n, (P6457721867198303983.a n : ℤ) = A350704 (n + 1)

end A350704

/-! ## A350704.P16605122120317049218

`∩[A134334(n+1), A156543(n+1)]`
-/

namespace A350704.P16605122120317049218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350704.P16605122120317049218

namespace A350704

/-- `∩[A134334(n+1), A156543(n+1)]` -/
def P16605122120317049218.Spec : Prop :=
  ∀ n, (P16605122120317049218.a n : ℤ) = A350704 (n + 1)

end A350704

/-!
# A350705: Composite numbers that have no Sophie Germain prime and no "safe prime" factors.

The programs for A350705, there is no canonical definition to state claims against.
-/

/-! ## A350705.P5784398782560806982

`∩[A350704(n+1), A350706(n+1)]`
-/

namespace A350705.P5784398782560806982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350705.P5784398782560806982

/-! ## A350705.P18364221271045367830

`∩[A156543(n+1), A350706(n+1)]`
-/

namespace A350705.P18364221271045367830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350705.P18364221271045367830

/-!
# A350706: Composite numbers that have no "safe prime" factors.

The programs for A350706, there is no canonical definition to state claims against.
-/

/-! ## A350706.P2389637073791735350

`A316866(A094555(n))+A083854(n+4)`
-/

namespace A350706.P2389637073791735350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A094555 n).toNat + A083854 (n + 4)

end

end A350706.P2389637073791735350

/-! ## A350706.P5851859376410674837

`A344030(n+1)-A056594(A344043(n+1))`
-/

namespace A350706.P5851859376410674837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344030 (n + 1) - A056594 (A344043 (n + 1)).toNat

end

end A350706.P5851859376410674837

/-!
# A350707: Numbers m such that all prime factors of m^2+1 are Fibonacci numbers.

The programs for A350707, there is no canonical definition to state claims against.
-/

/-! ## A350707.P11869569092981654165

`lt[A072039(3*n+2), 8]`
-/

namespace A350707.P11869569092981654165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072039 (3 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350707.P11869569092981654165

/-! ## A350707.P8645118189005895238

`eq[A081417(n), A355198(n)]`
-/

namespace A350707.P8645118189005895238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355198 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350707.P8645118189005895238

/-! ## A350707.P6027600478579562647

`∑[A055396(A335571(n+1))]`
-/

namespace A350707.P6027600478579562647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A335571 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350707.P6027600478579562647

/-! ## A350707.P3736166477056871013

`record[A020951(A046563(n+1))]`
-/

namespace A350707.P3736166477056871013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A046563 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350707.P3736166477056871013

/-! ## A350707.P10500117285639198601

`record[A020951(A046564(n+1))]`
-/

namespace A350707.P10500117285639198601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A046564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350707.P10500117285639198601

/-!
# A350708: A variant of Van Eck's sequence where we start with the value 0, and then alternatively add values to the right and to the left; the sequence lists the values as they are added.

The programs for A350708, there is no canonical definition to state claims against.
-/

/-! ## A350708.P1349799538281272558

`A018015(n)%A147848(A319079(n))`
-/

namespace A350708.P1349799538281272558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018015 n) (A147848 (A319079 n).toNat)

end

end A350708.P1349799538281272558

/-! ## A350708.P3956529246612664449

`A124762(A384681(n)+A170943(n+1))`
-/

namespace A350708.P3956529246612664449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A384681 n + A170943 (n + 1)).toNat

end

end A350708.P3956529246612664449

/-! ## A350708.P8915886047053531152

`A056979(A033430(n+1)-A174709(n))`
-/

namespace A350708.P8915886047053531152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056979 (A033430 (n + 1) - A174709 n).toNat

end

end A350708.P8915886047053531152

/-! ## A350708.P18331902249512960450

`A313663(A078010(n))%A087225(n+1)`
-/

namespace A350708.P18331902249512960450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A313663 (A078010 n).toNat) (A087225 (n + 1))

end

end A350708.P18331902249512960450

/-! ## A350708.P15020047108486853618

`A279210(A280461(n+1))`
-/

namespace A350708.P15020047108486853618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279210 (A280461 (n + 1)).toNat

end

end A350708.P15020047108486853618

/-!
# A350711: The number of different values taken by the determinant of a square n X n matrix whose elements are 1 or i = sqrt(-1).

The programs for A350711, there is no canonical definition to state claims against.
-/

/-! ## A350711.P7076147577198506745

`A217482(n)+A217304(n)`
-/

namespace A350711.P7076147577198506745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217482 n + A217304 n

end

end A350711.P7076147577198506745

/-! ## A350711.P3036009745255762237

`A154437(xor(n, A187044(n)))`
-/

namespace A350711.P3036009745255762237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154437 (Int.xor (n : ℤ) (A187044 n)).toNat

end

end A350711.P3036009745255762237

/-! ## A350711.P15839538018239878140

`A261329(n)+A245727(n+1)`
-/

namespace A350711.P15839538018239878140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261329 n + A245727 (n + 1)

end

end A350711.P15839538018239878140

/-!
# A350712: a(n) is the smallest hexagonal number for which the symmetric representation of sigma(n) has width 2*n, n >= 0, at the diagonal.

The programs for A350712, there is no canonical definition to state claims against.
-/

/-! ## A350712.P11051275510106132894

`record[C(A046523(A113995(n)), 2)]`
-/

namespace A350712.P11051275510106132894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046523 (A113995 n).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350712.P11051275510106132894

/-!
# A350713: Maximum smallest prime required to generate all Goldbach partitions to 10^n.

The programs for A350713, there is no canonical definition to state claims against.
-/

/-! ## A350713.P8408740592137102600

`A264030(A195041(n+1))`
-/

namespace A350713.P8408740592137102600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264030 (A195041 (n + 1)).toNat

end

end A350713.P8408740592137102600

/-!
# A350714: Least positive integer m such that m^12*n = x^4 + y^3 + z^2 for some nonnegative integers x,y,z.

The programs for A350714, there is no canonical definition to state claims against.
-/

/-! ## A350714.P17423853898147186686

`gcd(A118048(n), A381625(n))`
-/

namespace A350714.P17423853898147186686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118048 n) (A381625 n)

end

end A350714.P17423853898147186686

/-! ## A350714.P16760235124265298886

`gcd(A001876(A067619(3*n+1)), A320911(n+1))`
-/

namespace A350714.P16760235124265298886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001876 (A067619 (3 * n + 1)).toNat) (A320911 (n + 1))

end

end A350714.P16760235124265298886

/-! ## A350714.P8286383882120822425

`∏{e}[A359609(A237434(n+1)), #]`
-/

namespace A350714.P8286383882120822425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359609 (A237434 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A350714.P8286383882120822425

/-!
# A350715: 2-tone chromatic number of a wheel graph with n vertices.

The programs for A350715, there is no canonical definition to state claims against.
-/

/-! ## A350715.P8932154120944600998

`A351120(n+3)+2`
-/

namespace A350715.P8932154120944600998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351120 (n + 3) + 2

end

end A350715.P8932154120944600998

/-! ## A350715.P16620300524423407563

`A381563(n+5)-1`
-/

namespace A350715.P16620300524423407563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381563 (n + 5) - 1

end

end A350715.P16620300524423407563

/-!
# A350716: a(n) is the minimum number of vertices of degree 3 over all 3-collapsible graphs with n vertices.

The programs for A350716, the canonical program `A350716.P2280599244012614968` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350716 has offset 4).

The definition of A350716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350716.P5878733504255022173

`∑[char[∑[5-a(n-1)]]]+4` with `a(0)=7, a(1)=2`
-/

namespace A350716.P5878733504255022173
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [7, 2] fun n f3 =>
  5 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A350716.P5878733504255022173

namespace A350716

/-- `∑[char[∑[5-a(n-1)]]]+4` -/
def P5878733504255022173.Spec : Prop :=
  ∀ n, (P5878733504255022173.a n : ℤ) = A350716 (n + 4)

end A350716

/-! ## A350716.P2306982174569963412

`comp[A047355(n+3)]+4-n`
-/

namespace A350716.P2306982174569963412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047355 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (4 - (n : ℤ))

end

end A350716.P2306982174569963412

namespace A350716

/-- `comp[A047355(n+3)]+4-n` -/
def P2306982174569963412.Spec : Prop :=
  ∀ n, P2306982174569963412.a n = A350716 (n + 4)

end A350716

/-! ## A350716.P2280599244012614968

`A289207(Δ[A011858(n)])+4`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A350716

/-- `A289207(Δ[A011858(n)])+4` -/
def P2280599244012614968.Spec : Prop :=
  ∀ n, P2280599244012614968.a n = A350716 (n + 4)

theorem P2280599244012614968.correct : P2280599244012614968.Spec := by
  intro n
  simp only [A350716, Nat.add_sub_cancel]

end A350716

/-! ## A350716.P4072301124247938399

`round(sqrt((A057354(n+1)-1)²+1))+3`
-/

namespace A350716.P4072301124247938399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A057354 (n + 1) - 1) ^ 2 + 1 : ℝ)) + 3

end

end A350716.P4072301124247938399

namespace A350716

/-- `round(sqrt((A057354(n+1)-1)²+1))+3` -/
def P4072301124247938399.Spec : Prop :=
  ∀ n, P4072301124247938399.a n = A350716 (n + 4)

end A350716

/-! ## A350716.P18049037299038945798

`A289207(A057354(n+1))+4`
-/

namespace A350716.P18049037299038945798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A057354 (n + 1)).toNat + 4

end

end A350716.P18049037299038945798

namespace A350716

/-- `A289207(A057354(n+1))+4` -/
def P18049037299038945798.Spec : Prop :=
  ∀ n, P18049037299038945798.a n = A350716 (n + 4)

end A350716

/-! ## A350716.P7793501769471547383

`A233583(round(2*n/5)+1)+2`
-/

namespace A350716.P7793501769471547383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 5)) + 1).toNat + 2

end

end A350716.P7793501769471547383

namespace A350716

/-- `A233583(round(2*n/5)+1)+2` -/
def P7793501769471547383.Spec : Prop :=
  ∀ n, P7793501769471547383.a n = A350716 (n + 4)

end A350716

/-!
# A350717: a(n) = 4*a(n-1) - n - 1, for n > 0, a(0) = 1.

The programs for A350717, the canonical program `A350717.P1731005143687178255` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350717 has offset 0).

The definition of A350717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350717.P1731005143687178255

`a(n-1)+A007583(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A350717

/-- `a(n-1)+A007583(n-1)` -/
def P1731005143687178255.Spec : Prop :=
  ∀ n, P1731005143687178255.a n = A350717 n

theorem P1731005143687178255.correct : P1731005143687178255.Spec := by
  intro n
  simp only [A350717]

end A350717

/-! ## A350717.P17853123044808363523

`2*a(n-1)+A014825(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A350717.P17853123044808363523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + A014825 (n - 1)

end

end A350717.P17853123044808363523

namespace A350717

/-- `2*a(n-1)+A014825(n-1)` -/
def P17853123044808363523.Spec : Prop :=
  ∀ n, P17853123044808363523.a n = A350717 n

end A350717

/-! ## A350717.P214565042998068798

`6*a(n-1)-9*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A350717.P214565042998068798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2) + 4 * a (n - 3)

end

end A350717.P214565042998068798

namespace A350717

/-- `6*a(n-1)-9*a(n-2)+4*a(n-3)` -/
def P214565042998068798.Spec : Prop :=
  ∀ n, P214565042998068798.a n = A350717 n

end A350717

/-! ## A350717.P17786230076294298513

`(2^(2*n+1)+3*n+7)/9`
-/

namespace A350717.P17786230076294298513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * n + 1) + 3 * n + 7 : ℚ) / 9

end

end A350717.P17786230076294298513

namespace A350717

/-- `(2^(2*n+1)+3*n+7)/9` -/
def P17786230076294298513.Spec : Prop :=
  ∀ n, P17786230076294298513.a n = (A350717 n : ℚ)

end A350717

/-! ## A350717.P9398840134156790064

`∑[ogf((1-4x+2x^2)/(1-5x+4x^2))]`
-/

namespace A350717.P9398840134156790064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 2] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350717.P9398840134156790064

namespace A350717

/-- `∑[ogf((1-4x+2x^2)/(1-5x+4x^2))]` -/
def P9398840134156790064.Spec : Prop :=
  ∀ n, P9398840134156790064.a n = A350717 n

end A350717

/-! ## A350717.P979782043922983178

`ogf((1-4x+2x^2)/(1-6x+9x^2-4x^3))`
-/

namespace A350717.P979782043922983178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 2] [1, -6, 9, -4] n

end

end A350717.P979782043922983178

namespace A350717

/-- `ogf((1-4x+2x^2)/(1-6x+9x^2-4x^3))` -/
def P979782043922983178.Spec : Prop :=
  ∀ n, P979782043922983178.a n = A350717 n

end A350717

/-! ## A350717.P4129915806314687725

`∑[4*a(n-1)-1]` with `a(0)=1, a(1)=1`
-/

namespace A350717.P4129915806314687725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  4 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350717.P4129915806314687725

namespace A350717

/-- `∑[4*a(n-1)-1]` -/
def P4129915806314687725.Spec : Prop :=
  ∀ n, P4129915806314687725.a n = A350717 n

end A350717

/-! ## A350717.P6991026342560022900

`∑[lcm(4, a(n-1))-1]` with `a(0)=1, a(1)=1`
-/

namespace A350717.P6991026342560022900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Int.lcm 4 (f1 (n - 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350717.P6991026342560022900

namespace A350717

/-- `∑[lcm(4, a(n-1))-1]` -/
def P6991026342560022900.Spec : Prop :=
  ∀ n, P6991026342560022900.a n = A350717 n

end A350717

/-! ## A350717.P18021651656755470874

`4*a(n-1)-(n+1)` with `a(0)=1`
-/

namespace A350717.P18021651656755470874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - (n + 1 : ℤ)

end

end A350717.P18021651656755470874

namespace A350717

/-- `4*a(n-1)-(n+1)` -/
def P18021651656755470874.Spec : Prop :=
  ∀ n, P18021651656755470874.a n = A350717 n

end A350717

/-! ## A350717.P15756012997911569402

`4*a(n-1)-1-n` with `a(0)=1`
-/

namespace A350717.P15756012997911569402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - 1 - (n : ℤ)

end

end A350717.P15756012997911569402

namespace A350717

/-- `4*a(n-1)-1-n` -/
def P15756012997911569402.Spec : Prop :=
  ∀ n, P15756012997911569402.a n = A350717 n

end A350717

/-! ## A350717.P8397440263923291375

`a(n-1)/(1/2)²-(n+1)` with `a(0)=1`
-/

namespace A350717.P8397440263923291375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - (n + 1 : ℚ)

end

end A350717.P8397440263923291375

namespace A350717

/-- `a(n-1)/(1/2)²-(n+1)` -/
def P8397440263923291375.Spec : Prop :=
  ∀ n, P8397440263923291375.a n = (A350717 n : ℚ)

end A350717

/-! ## A350717.P16307990468572858275

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-(n+1)` with `a(0)=1`
-/

namespace A350717.P16307990468572858275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - (n + 1 : ℤ))))

end

end A350717.P16307990468572858275

namespace A350717

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-(n+1)` -/
def P16307990468572858275.Spec : Prop :=
  ∀ n, P16307990468572858275.a n = A350717 n

end A350717

/-! ## A350717.P14166470291594532137

`a(n-1)-(1-(a(n-1)-(n-a(n-1)-a(n-1))))` with `a(0)=1`
-/

namespace A350717.P14166470291594532137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (1 - (a (n - 1) - ((n : ℤ) - a (n - 1) - a (n - 1))))

end

end A350717.P14166470291594532137

namespace A350717

/-- `a(n-1)-(1-(a(n-1)-(n-a(n-1)-a(n-1))))` -/
def P14166470291594532137.Spec : Prop :=
  ∀ n, P14166470291594532137.a n = A350717 n

end A350717

/-! ## A350717.P13155106844221756692

`A210985(n)-n`
-/

namespace A350717.P13155106844221756692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210985 n - (n : ℤ)

end

end A350717.P13155106844221756692

namespace A350717

/-- `A210985(n)-n` -/
def P13155106844221756692.Spec : Prop :=
  ∀ n, P13155106844221756692.a n = A350717 n

end A350717

/-! ## A350717.P5799596581537543979

`∑[A039301(n)]-n`
-/

namespace A350717.P5799596581537543979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A350717.P5799596581537543979

namespace A350717

/-- `∑[A039301(n)]-n` -/
def P5799596581537543979.Spec : Prop :=
  ∀ n, P5799596581537543979.a n = A350717 n

end A350717

/-! ## A350717.P13228318339042273042

`A113954(2*n)+n`
-/

namespace A350717.P13228318339042273042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113954 (2 * n) + (n : ℤ)

end

end A350717.P13228318339042273042

namespace A350717

/-- `A113954(2*n)+n` -/
def P13228318339042273042.Spec : Prop :=
  ∀ n, P13228318339042273042.a n = A350717 n

end A350717

/-! ## A350717.P3794212175154229534

`∑[record[A084247(n)]]-n`
-/

namespace A350717.P3794212175154229534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A350717.P3794212175154229534

namespace A350717

/-- `∑[record[A084247(n)]]-n` -/
def P3794212175154229534.Spec : Prop :=
  ∀ n, P3794212175154229534.a n = A350717 n

end A350717

/-! ## A350717.P7130216649966027800

`∑[A328284(2*(n+1))]`
-/

namespace A350717.P7130216649966027800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350717.P7130216649966027800

namespace A350717

/-- `∑[A328284(2*(n+1))]` -/
def P7130216649966027800.Spec : Prop :=
  ∀ n, P7130216649966027800.a n = A350717 n

end A350717

/-! ## A350717.P5847864317151612446

`∑[A023105(2*n)]-n`
-/

namespace A350717.P5847864317151612446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A350717.P5847864317151612446

namespace A350717

/-- `∑[A023105(2*n)]-n` -/
def P5847864317151612446.Spec : Prop :=
  ∀ n, P5847864317151612446.a n = A350717 n

end A350717

/-! ## A350717.P3964786187365711714

`∑[A378105(2*n)]-n`
-/

namespace A350717.P3964786187365711714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378105 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A350717.P3964786187365711714

namespace A350717

/-- `∑[A378105(2*n)]-n` -/
def P3964786187365711714.Spec : Prop :=
  ∀ n, P3964786187365711714.a n = A350717 n

end A350717

/-!
# A350718: Number of regions in a regular n-gon with all diagonals drawn whose edges all have a different number of facing edges.

The programs for A350718, there is no canonical definition to state claims against.
-/

/-! ## A350718.P11997154617042117716

`(∑[n]+n)*A340998(n²)`
-/

namespace A350718.P11997154617042117716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) * A340998 (n ^ 2 + 140)

end

end A350718.P11997154617042117716

/-! ## A350718.P2883446882827524890

`lcm(A000096(n), A340998(n²))`
-/

namespace A350718.P2883446882827524890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000096 n) (A340998 (n ^ 2 + 140))

end

end A350718.P2883446882827524890

/-! ## A350718.P1220907538010182884

`A326540(∏{p}[A075222(n+1), #])`
-/

namespace A350718.P1220907538010182884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A350718.P1220907538010182884

/-! ## A350718.P16732936194109398704

`lcm(2, A344973(A144512(2*n+3)))`
-/

namespace A350718.P16732936194109398704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A344973 (A144512 (2 * n + 3)).toNat)

end

end A350718.P16732936194109398704

/-! ## A350718.P8301688619325774664

`lcm(floor(n/2), A266537(A000040(2*n+3)))`
-/

namespace A350718.P8301688619325774664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(n : ℚ) / 2⌋ (A266537 (A000040 (2 * n + 3)).toNat)

end

end A350718.P8301688619325774664

/-!
# A350723: Integer defect of n: a(n) = A005245(n) - A349983(n).

The programs for A350723, there is no canonical definition to state claims against.
-/

/-! ## A350723.P15309349985105157635

`A005245(n+1)-A349983(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350723.P15309349985105157635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (n + 1) - A349983 (n + 1)

end

end A350723.P15309349985105157635

/-! ## A350723.P6490529446265822915

`ceil(A213923(n+1)/2)-A349983(n+1)`
-/

namespace A350723.P6490529446265822915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A213923 (n + 1) : ℚ) / 2⌉ - A349983 (n + 1)

end

end A350723.P6490529446265822915

/-! ## A350723.P476139215594112330

`A000463(A213923(n+1))-A349983(n+1)`
-/

namespace A350723.P476139215594112330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A213923 (n + 1)).toNat - A349983 (n + 1)

end

end A350723.P476139215594112330

/-! ## A350723.P8828501861842701219

`A010874(A005245(n+1)%A349983(n+1))`
-/

namespace A350723.P8828501861842701219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (Int.tmod (A005245 (n + 1)) (A349983 (n + 1))).toNat

end

end A350723.P8828501861842701219

/-! ## A350723.P1665923656182183128

`A004526(A213923(n+1)+1)-A349983(n+1)`
-/

namespace A350723.P1665923656182183128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A213923 (n + 1) + 1).toNat - A349983 (n + 1)

end

end A350723.P1665923656182183128

/-! ## A350723.P13702931088668796538

`A008619(A213923(n+1)-1)-A349983(n+1)`
-/

namespace A350723.P13702931088668796538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A213923 (n + 1) - 1).toNat - A349983 (n + 1)

end

end A350723.P13702931088668796538

/-!
# A350724: Hypotenuses for which there exists a unique integer-sided triangle and where the other two sides of this triangle are also hypotenuses for which there exists a unique integer-sided triangle.

The programs for A350724, there is no canonical definition to state claims against.
-/

/-! ## A350724.P17548227863204250121

`∩[A113626(n+1), A354379(n+1)]`
-/

namespace A350724.P17548227863204250121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350724.P17548227863204250121

/-!
# A350725: a(n) = Sum_{k=0..n} k! * k^(n-k) * Stirling1(n,k).

The programs for A350725, there is no canonical definition to state claims against.
-/

/-! ## A350725.P4794860961327826385

`A305205(∑{d}[n+1, #]²%A183239(n))`
-/

namespace A350725.P4794860961327826385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305205 (Int.tmod (((∑ d ∈ Nat.divisors (f1 n), d) ^ 2 : ℕ) : ℤ) (A183239 n)).toNat

end

end A350725.P4794860961327826385

/-! ## A350725.P10336205788245372656

`A346246(A062496(n)*A068980(n))`
-/

namespace A350725.P10336205788245372656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346246 (A062496 n * A068980 n).toNat

end

end A350725.P10336205788245372656

/-!
# A350727: a(n) = (A350632(n) - 1) / 4.

The programs for A350727, there is no canonical definition to state claims against.
-/

/-! ## A350727.P14109693643649750368

`(A350632(n+1)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350727.P14109693643649750368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350632 (n + 1) - 1 : ℚ) / 4

end

end A350727.P14109693643649750368

/-! ## A350727.P9755817388391187779

`∑[floor(A350633(n+1)/4)]`
-/

namespace A350727.P9755817388391187779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350633 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350727.P9755817388391187779

/-! ## A350727.P16959134367365405474

`∑[A350633(ceil(n/sin(8)))/4]`
-/

namespace A350727.P16959134367365405474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350633 ⌈(n : ℝ) / Real.sin (8 : ℝ)⌉.toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350727.P16959134367365405474

/-! ## A350727.P14400262591639110768

`A002265(∑[A350633(n+1)])`
-/

namespace A350727.P14400262591639110768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350727.P14400262591639110768

/-! ## A350727.P3707630119262138228

`A025480(∑[A350633(n+1)])`
-/

namespace A350727.P3707630119262138228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350727.P3707630119262138228

/-! ## A350727.P17361203552086311

`A059169(∑[A350633(n+1)])`
-/

namespace A350727.P17361203552086311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350727.P17361203552086311

/-! ## A350727.P9213327116375359363

`∑[A350728(n+2)]-A350728(n+2)`
-/

namespace A350727.P9213327116375359363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350728 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A350728 (n + 2)

end

end A350727.P9213327116375359363

/-! ## A350727.P7987836063383807490

`∑[A350633(n+1)/4*ceil(n/A000041(n))]`
-/

namespace A350727.P7987836063383807490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350633 (n + 1) : ℚ) / 4 * (⌈(n : ℚ) / (A000041 n : ℚ)⌉ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350727.P7987836063383807490

/-! ## A350727.P7498771410290940636

`∑[A350633(n+1)/4*A000040(n+1)%2]`
-/

namespace A350727.P7498771410290940636
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350633 (n + 1) : ℚ) / 4 * (Int.tmod (A000040 (n + 1)) 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350727.P7498771410290940636

/-!
# A350728: a(n) = A350633(n)/4.

The programs for A350728, there is no canonical definition to state claims against.
-/

/-! ## A350728.P6665163354281152778

`A350633(n+2)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350728.P6665163354281152778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350633 (n + 2) : ℚ) / 4

end

end A350728.P6665163354281152778

/-! ## A350728.P5640872618367923417

`A002265(A350633(n+2))`
-/

namespace A350728.P5640872618367923417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A350633 (n + 2)).toNat

end

end A350728.P5640872618367923417

/-! ## A350728.P13193683799504953047

`A008624(A350633(n+2)+1)`
-/

namespace A350728.P13193683799504953047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A350633 (n + 2) + 1).toNat

end

end A350728.P13193683799504953047

/-! ## A350728.P5478453163978614835

`A025480(A350633(n+2)+1)`
-/

namespace A350728.P5478453163978614835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A350633 (n + 2) + 1).toNat

end

end A350728.P5478453163978614835

/-! ## A350728.P17340550989329172440

`A008621(A350633(n+2)-1)`
-/

namespace A350728.P17340550989329172440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A350633 (n + 2) - 1).toNat

end

end A350728.P17340550989329172440

/-! ## A350728.P11433626656726772190

`A106617(4*A350633(n+2))`
-/

namespace A350728.P11433626656726772190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (4 * A350633 (n + 2)).toNat

end

end A350728.P11433626656726772190

/-! ## A350728.P7150299868891141296

`Δ[A350727(n+1)]`
-/

namespace A350728.P7150299868891141296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350728.P7150299868891141296

/-! ## A350728.P15840187389858261673

`A350727(n+2)-A350727(n+1)`
-/

namespace A350728.P15840187389858261673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350727 (n + 2) - A350727 (n + 1)

end

end A350728.P15840187389858261673

/-!
# A350729: Array read by antidiagonals: T(m,n) is the number of (undirected) Hamiltonian paths in the m X n king graph.

The programs for A350729, there is no canonical definition to state claims against.
-/

/-! ## A350729.P11898007993182264313

`A243071(2*A173117(n)!)`
-/

namespace A350729.P11898007993182264313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (2 * Nat.factorial (A173117 n).toNat)

end

end A350729.P11898007993182264313

/-! ## A350729.P9996717653323846758

`A228731(A060187(n+1)²+1)`
-/

namespace A350729.P9996717653323846758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A060187 (n + 1) ^ 2 + 1).toNat

end

end A350729.P9996717653323846758

/-! ## A350729.P8154877847982805105

`A141729(A157221(n))*A174376(n)`
-/

namespace A350729.P8154877847982805105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141729 (A157221 n).toNat * A174376 n

end

end A350729.P8154877847982805105

/-! ## A350729.P17721801089944333182

`A339760(A007318(n)^A093555(n+1))`
-/

namespace A350729.P17721801089944333182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339760 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A093555 (n + 1) : ℤ))).toNat

end

end A350729.P17721801089944333182

/-! ## A350729.P8992898500046732696

`filter[A221916(2*n), A256434(#)]`
-/

namespace A350729.P8992898500046732696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221916 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A256434 (f1 j).toNat = 1) n)

end

end A350729.P8992898500046732696

/-!
# A350730: Number of strongly connected oriented graphs on n labeled nodes.

The programs for A350730, there is no canonical definition to state claims against.
-/

/-! ## A350730.P16460753070571773501

`A025910(∑{d}[n+1, #^(n+1)])+char[∑[n-1]]`
-/

namespace A350730.P16460753070571773501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025910 (∑ d ∈ Nat.divisors (f1 n), d ^ (n + 1)) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A350730.P16460753070571773501

/-!
# A350731: Triangle read by rows: T(n,k) is the number of strongly connected oriented graphs on n labeled nodes with k arcs, n >= 1, k=0..n*(n-1)/2.

The programs for A350731, there is no canonical definition to state claims against.
-/

/-! ## A350731.P2203883617751251407

`A025907(n)*A350764(A000009(n))`
-/

namespace A350731.P2203883617751251407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 n * A350764 (A000009 n).toNat

end

end A350731.P2203883617751251407

/-! ## A350731.P17034104060864183119

`A122164(A025907(n)*A320052(n))`
-/

namespace A350731.P17034104060864183119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 (A025907 n * A320052 n).toNat

end

end A350731.P17034104060864183119

/-! ## A350731.P9437871101242273049

`A350750(n+1)*A350764(A000009(n))`
-/

namespace A350731.P9437871101242273049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350750 (n + 1) * A350764 (A000009 n).toNat

end

end A350731.P9437871101242273049

/-! ## A350731.P18053581173354281172

`A122164(A320052(n)*A350750(n+1))`
-/

namespace A350731.P18053581173354281172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 (A320052 n * A350750 (n + 1)).toNat

end

end A350731.P18053581173354281172

/-! ## A350731.P14381036900997858750

`A025907(n)*A350764(A350770(n+3))`
-/

namespace A350731.P14381036900997858750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 n * A350764 (A350770 (n + 3)).toNat

end

end A350731.P14381036900997858750

/-!
# A350732: Triangle read by rows: T(n,k) is the number of weakly connected oriented graphs on n labeled nodes with k arcs, n >= 0, k=0..n*(n-1)/2.

The programs for A350732, there is no canonical definition to state claims against.
-/

/-! ## A350732.P9784202896795614572

`A000005(A058699(n))*A062734(n+1)`
-/

namespace A350732.P9784202896795614572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A058699 n).toNat * A062734 (n + 1)

end

end A350732.P9784202896795614572

/-! ## A350732.P5258974044912555556

`A037445(A102407(n))*A062734(n+1)`
-/

namespace A350732.P5258974044912555556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A102407 n).toNat * A062734 (n + 1)

end

end A350732.P5258974044912555556

/-! ## A350732.P12288027734743076660

`A110657(lcm(A011782(n), A062734(n+1)))`
-/

namespace A350732.P12288027734743076660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (Int.lcm (A011782 n) (A062734 (n + 1)))

end

end A350732.P12288027734743076660

/-! ## A350732.P7451446077541704402

`A139251(C(A350909(n+1), A007318(n)))`
-/

namespace A350732.P7451446077541704402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (Nat.choose (A350909 (n + 1)).toNat (A007318 n).toNat)

end

end A350732.P7451446077541704402

/-! ## A350732.P17902118701785055094

`A139251(C(A350909(n+1), A271705(n)))`
-/

namespace A350732.P17902118701785055094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (Nat.choose (A350909 (n + 1)).toNat (A271705 n).toNat)

end

end A350732.P17902118701785055094

/-!
# A350734: Triangle read by rows: T(n,k) is the number of weakly connected oriented graphs on n unlabeled nodes with k arcs, n >= 1, k = 0..n*(n-1)/2.

The programs for A350734, there is no canonical definition to state claims against.
-/

/-! ## A350734.P16105617518607481841

`A131849(A350487(n+1))`
-/

namespace A350734.P16105617518607481841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131849 (A350487 (n + 1)).toNat

end

end A350734.P16105617518607481841

/-!
# A350736: Lesser twin primes p such that 4*p is the sum of two consecutive primes.

The programs for A350736, the canonical program `A350736.P3793382937171720709` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350736 has offset 1).

The definition of A350736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350736.P16786439383663737614

`∩[A001359(n+1), A118134(n+1)]`
-/

namespace A350736.P16786439383663737614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P16786439383663737614

namespace A350736

/-- `∩[A001359(n+1), A118134(n+1)]` -/
def P16786439383663737614.Spec : Prop :=
  ∀ n, (P16786439383663737614.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P5801706878807327715

`∩[A054799(n+1), A118134(n+1)]`
-/

namespace A350736.P5801706878807327715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P5801706878807327715

namespace A350736

/-- `∩[A054799(n+1), A118134(n+1)]` -/
def P5801706878807327715.Spec : Prop :=
  ∀ n, (P5801706878807327715.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P549987801472133321

`∩[A063700(n+1), A118134(n+1)]`
-/

namespace A350736.P549987801472133321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P549987801472133321

namespace A350736

/-- `∩[A063700(n+1), A118134(n+1)]` -/
def P549987801472133321.Spec : Prop :=
  ∀ n, (P549987801472133321.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P7966866722971925434

`∩[A118134(n+1), A181747(n+1)]`
-/

namespace A350736.P7966866722971925434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P7966866722971925434

namespace A350736

/-- `∩[A118134(n+1), A181747(n+1)]` -/
def P7966866722971925434.Spec : Prop :=
  ∀ n, (P7966866722971925434.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P14597968223075414256

`∩[A063693(n+1), A118134(n+1)]`
-/

namespace A350736.P14597968223075414256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P14597968223075414256

namespace A350736

/-- `∩[A063693(n+1), A118134(n+1)]` -/
def P14597968223075414256.Spec : Prop :=
  ∀ n, (P14597968223075414256.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P3793382937171720709

`∩[A001359(n+1), A382509(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A350736

/-- `∩[A001359(n+1), A382509(n+1)]` -/
def P3793382937171720709.Spec : Prop :=
  ∀ n, (P3793382937171720709.a n : ℤ) = A350736 (n + 1)

theorem P3793382937171720709.correct : P3793382937171720709.Spec := by
  intro n
  simp only [A350736, Nat.add_sub_cancel]

end A350736

/-! ## A350736.P17173726715166092440

`∩[A118134(n+1), A280255(n+1)]`
-/

namespace A350736.P17173726715166092440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P17173726715166092440

namespace A350736

/-- `∩[A118134(n+1), A280255(n+1)]` -/
def P17173726715166092440.Spec : Prop :=
  ∀ n, (P17173726715166092440.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P17717164286227682336

`∩[A054799(n+1), A382509(n+1)]`
-/

namespace A350736.P17717164286227682336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P17717164286227682336

namespace A350736

/-- `∩[A054799(n+1), A382509(n+1)]` -/
def P17717164286227682336.Spec : Prop :=
  ∀ n, (P17717164286227682336.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P15376430097469542553

`∩[A063693(n+1), A382509(n+1)]`
-/

namespace A350736.P15376430097469542553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P15376430097469542553

namespace A350736

/-- `∩[A063693(n+1), A382509(n+1)]` -/
def P15376430097469542553.Spec : Prop :=
  ∀ n, (P15376430097469542553.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P863569707053143148

`∩[A063700(n+1), A382509(n+1)]`
-/

namespace A350736.P863569707053143148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P863569707053143148

namespace A350736

/-- `∩[A063700(n+1), A382509(n+1)]` -/
def P863569707053143148.Spec : Prop :=
  ∀ n, (P863569707053143148.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P8159690211495375439

`∩[A124588(n+1), A382509(n+1)]`
-/

namespace A350736.P8159690211495375439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P8159690211495375439

namespace A350736

/-- `∩[A124588(n+1), A382509(n+1)]` -/
def P8159690211495375439.Spec : Prop :=
  ∀ n, (P8159690211495375439.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P13102342119737711477

`∩[A181747(n+1), A382509(n+1)]`
-/

namespace A350736.P13102342119737711477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P13102342119737711477

namespace A350736

/-- `∩[A181747(n+1), A382509(n+1)]` -/
def P13102342119737711477.Spec : Prop :=
  ∀ n, (P13102342119737711477.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P10596851750498538057

`∩[A238528(n+1), A382509(n+1)]`
-/

namespace A350736.P10596851750498538057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P10596851750498538057

namespace A350736

/-- `∩[A238528(n+1), A382509(n+1)]` -/
def P10596851750498538057.Spec : Prop :=
  ∀ n, (P10596851750498538057.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P7982903368640064162

`∩[A280255(n+1), A382509(n+1)]`
-/

namespace A350736.P7982903368640064162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P7982903368640064162

namespace A350736

/-- `∩[A280255(n+1), A382509(n+1)]` -/
def P7982903368640064162.Spec : Prop :=
  ∀ n, (P7982903368640064162.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P10318242264723210583

`∩[A378983(n+1), A382509(n+1)]`
-/

namespace A350736.P10318242264723210583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P10318242264723210583

namespace A350736

/-- `∩[A378983(n+1), A382509(n+1)]` -/
def P10318242264723210583.Spec : Prop :=
  ∀ n, (P10318242264723210583.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P14654982429167624593

`∩[A382509(n+1), A394509(n+1)]`
-/

namespace A350736.P14654982429167624593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P14654982429167624593

namespace A350736

/-- `∩[A382509(n+1), A394509(n+1)]` -/
def P14654982429167624593.Spec : Prop :=
  ∀ n, (P14654982429167624593.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P15310368799898434363

`∩[A073534(n+1), A382509(n+1)]`
-/

namespace A350736.P15310368799898434363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P15310368799898434363

namespace A350736

/-- `∩[A073534(n+1), A382509(n+1)]` -/
def P15310368799898434363.Spec : Prop :=
  ∀ n, (P15310368799898434363.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P13581794151889339990

`∩[A118134(n+1), A280590(n+1)]`
-/

namespace A350736.P13581794151889339990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P13581794151889339990

namespace A350736

/-- `∩[A118134(n+1), A280590(n+1)]` -/
def P13581794151889339990.Spec : Prop :=
  ∀ n, (P13581794151889339990.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P6490423700644105093

`∩[A001838(n+1), A118134(n+1)]`
-/

namespace A350736.P6490423700644105093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P6490423700644105093

namespace A350736

/-- `∩[A001838(n+1), A118134(n+1)]` -/
def P6490423700644105093.Spec : Prop :=
  ∀ n, (P6490423700644105093.a n : ℤ) = A350736 (n + 1)

end A350736

/-! ## A350736.P2839187676970115998

`∩[A118134(n+1), A274212(n+1)]`
-/

namespace A350736.P2839187676970115998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350736.P2839187676970115998

namespace A350736

/-- `∩[A118134(n+1), A274212(n+1)]` -/
def P2839187676970115998.Spec : Prop :=
  ∀ n, (P2839187676970115998.a n : ℤ) = A350736 (n + 1)

end A350736

/-!
# A350739: Number of polykagomes with n cells, distinguishing mirror images.

The programs for A350739, there is no canonical definition to state claims against.
-/

/-! ## A350739.P16268687353868640699

`A175612(A000108(n))-(n+4)`
-/

namespace A350739.P16268687353868640699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175612 (A000108 n).toNat - (n + 4 : ℤ)

end

end A350739.P16268687353868640699

/-! ## A350739.P4854497443134936634

`A340019(A000108(n))+A008290(n)`
-/

namespace A350739.P4854497443134936634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340019 (A000108 n).toNat + A008290 n

end

end A350739.P4854497443134936634

/-!
# A350741: Records in A095258.

The programs for A350741, there is no canonical definition to state claims against.
-/

/-! ## A350741.P8890017489253958420

`record[A095258(n+1)]`
-/

namespace A350741.P8890017489253958420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350741.P8890017489253958420

/-! ## A350741.P13563206214641878043

`record[A350928(n+1)/A350929(n+1)]`
-/

namespace A350741.P13563206214641878043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350928 (n + 1) : ℚ) / (A350929 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350741.P13563206214641878043

/-! ## A350741.P243366848905111054

`record[A350928(n+1)/(A308751(n+1)+1)]`
-/

namespace A350741.P243366848905111054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350928 (n + 1) : ℚ) / (A308751 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350741.P243366848905111054

/-! ## A350741.P3733712398235251419

`record[A000007(n)+Δ[A350928(A028310(n))]]`
-/

namespace A350741.P3733712398235251419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350928 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350741.P3733712398235251419

/-! ## A350741.P9492646690628393455

`record[floor(A350928(A028310(n))/A308751(n+1))]`
-/

namespace A350741.P9492646690628393455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350928 (A028310 n).toNat : ℚ) / (A308751 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350741.P9492646690628393455

/-!
# A350743: Number of numbers k, 1 <= k <= n, such that k | sigma_k(n).

The programs for A350743, there is no canonical definition to state claims against.
-/

/-! ## A350743.P15307517546473496960

`A066099(Δ[A378980(2*n+3)])`
-/

namespace A350743.P15307517546473496960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378980 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (f1 (n + 1) - f1 n).toNat

end

end A350743.P15307517546473496960

/-! ## A350743.P7640765439275735306

`A001222(or(∑{d}[n+1, #], A065596(n+1)))`
-/

namespace A350743.P7640765439275735306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A065596 (n + 1))).toNat

end

end A350743.P7640765439275735306

/-! ## A350743.P2496142848052851147

`gcd(A060768(A265068(n)), A359634(n))`
-/

namespace A350743.P2496142848052851147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060768 (A265068 n).toNat) (A359634 n)

end

end A350743.P2496142848052851147

/-! ## A350743.P3987319853526110440

`A217956(n+1)+A098457(A061978(n+1))`
-/

namespace A350743.P3987319853526110440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217956 (n + 1) + A098457 (A061978 (n + 1)).toNat

end

end A350743.P3987319853526110440

/-! ## A350743.P8202081811170011271

`A358134(A019565(n+2))-A334196(n+1)`
-/

namespace A350743.P8202081811170011271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358134 (A019565 (n + 2)).toNat - A334196 (n + 1)

end

end A350743.P8202081811170011271

/-!
# A350744: Numbers m such that A061078(m)/A061077(m) = 4/5.

The programs for A350744, the canonical program `A350744.P11447582772980610095` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350744 has offset 1).

The definition of A350744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350744.P6856486786920986480

`eq[1, A070561(2*n)]`
-/

namespace A350744.P6856486786920986480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070561 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350744.P6856486786920986480

namespace A350744

/-- `eq[1, A070561(2*n)]` -/
def P6856486786920986480.Spec : Prop :=
  ∀ n, (P6856486786920986480.a n : ℤ) = A350744 (n + 1)

end A350744

/-! ## A350744.P12549402885242699453

`eq[2, A070560(2*n)]`
-/

namespace A350744.P12549402885242699453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070560 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350744.P12549402885242699453

namespace A350744

/-- `eq[2, A070560(2*n)]` -/
def P12549402885242699453.Spec : Prop :=
  ∀ n, (P12549402885242699453.a n : ℤ) = A350744 (n + 1)

end A350744

/-! ## A350744.P9965566087541166775

`lt[A098736(2*n), n]`
-/

namespace A350744.P9965566087541166775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350744.P9965566087541166775

namespace A350744

/-- `lt[A098736(2*n), n]` -/
def P9965566087541166775.Spec : Prop :=
  ∀ n, (P9965566087541166775.a n : ℤ) = A350744 (n + 1)

end A350744

/-! ## A350744.P10057533362429643296

`lt[A321243(2*n), n]`
-/

namespace A350744.P10057533362429643296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350744.P10057533362429643296

namespace A350744

/-- `lt[A321243(2*n), n]` -/
def P10057533362429643296.Spec : Prop :=
  ∀ n, (P10057533362429643296.a n : ℤ) = A350744 (n + 1)

end A350744

/-! ## A350744.P13042950386917880716

`comp[n*A168046(2*n)]`
-/

namespace A350744.P13042950386917880716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168046 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A350744.P13042950386917880716

namespace A350744

/-- `comp[n*A168046(2*n)]` -/
def P13042950386917880716.Spec : Prop :=
  ∀ n, (P13042950386917880716.a n : ℤ) = A350744 (n + 1)

end A350744

/-! ## A350744.P11573801045624412492

`lt[A100817(2*n)², n]`
-/

namespace A350744.P11573801045624412492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100817 (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350744.P11573801045624412492

namespace A350744

/-- `lt[A100817(2*n)², n]` -/
def P11573801045624412492.Spec : Prop :=
  ∀ n, (P11573801045624412492.a n : ℤ) = A350744 (n + 1)

end A350744

/-! ## A350744.P15755778828515428711

`lt[A007954(2*n), atan(n)]`
-/

namespace A350744.P15755778828515428711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (2 * n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A350744.P15755778828515428711

namespace A350744

/-- `lt[A007954(2*n), atan(n)]` -/
def P15755778828515428711.Spec : Prop :=
  ∀ n, (P15755778828515428711.a n : ℤ) = A350744 (n + 1)

end A350744

/-! ## A350744.P4609947071288211492

`lt[acot(n), A067898(2*n)]`
-/

namespace A350744.P4609947071288211492
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A350744.P4609947071288211492

namespace A350744

/-- `lt[acot(n), A067898(2*n)]` -/
def P4609947071288211492.Spec : Prop :=
  ∀ n, (P4609947071288211492.a n : ℤ) = A350744 (n + 1)

end A350744

/-! ## A350744.P11447582772980610095

`lt[1, n*A055641(2*n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A350744

/-- `lt[1, n*A055641(2*n)]` -/
def P11447582772980610095.Spec : Prop :=
  ∀ n, (P11447582772980610095.a n : ℤ) = A350744 (n + 1)

theorem P11447582772980610095.correct : P11447582772980610095.Spec := by
  intro n
  simp only [A350744, Nat.add_sub_cancel]

end A350744

/-! ## A350744.P1091516761223580621

`eq[2*n, A386253(2*n)]`
-/

namespace A350744.P1091516761223580621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386253 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350744.P1091516761223580621

namespace A350744

/-- `eq[2*n, A386253(2*n)]` -/
def P1091516761223580621.Spec : Prop :=
  ∀ n, (P1091516761223580621.a n : ℤ) = A350744 (n + 1)

end A350744

/-!
# A350745: Triangle read by rows: T(n,k) is the number of labeled loop-threshold graphs on vertex set [n] with k loops, for n >= 0 and 0 <= k <= n.

The programs for A350745, there is no canonical definition to state claims against.
-/

/-! ## A350745.P4882138289600218405

`A007318(n)*A099594(n)`
-/

namespace A350745.P4882138289600218405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A099594 n

end

end A350745.P4882138289600218405

/-! ## A350745.P2966425270109034199

`abs(A099594(n)*A108086(n))`
-/

namespace A350745.P2966425270109034199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099594 n * A108086 n|

end

end A350745.P2966425270109034199

/-! ## A350745.P4919998783768623925

`abs(A099594(n)*A117440(n))`
-/

namespace A350745.P4919998783768623925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099594 n * A117440 n|

end

end A350745.P4919998783768623925

/-! ## A350745.P1689348980153969639

`abs(A099594(n)*A130595(n))`
-/

namespace A350745.P1689348980153969639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099594 n * A130595 n|

end

end A350745.P1689348980153969639

/-! ## A350745.P12793377252175430762

`sqrt(A008459(n))*A099594(n)`
-/

namespace A350745.P12793377252175430762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A099594 n : ℝ)

end

end A350745.P12793377252175430762

/-! ## A350745.P10404950107438073986

`Δ[A102363(n)]*A099594(n)`
-/

namespace A350745.P10404950107438073986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A099594 n

end

end A350745.P10404950107438073986

/-! ## A350745.P1194325540801767024

`(A014473(n)+1)*A099594(n)`
-/

namespace A350745.P1194325540801767024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A099594 n

end

end A350745.P1194325540801767024

/-! ## A350745.P17355572486800379584

`(A299904(n)+1)*A007318(n)`
-/

namespace A350745.P17355572486800379584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A299904 n + 1) * A007318 n

end

end A350745.P17355572486800379584

/-! ## A350745.P9766053864328983869

`(2-(A007318(C(2, n))-A299904(n)))*A007318(n)`
-/

namespace A350745.P9766053864328983869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (A007318 (Nat.choose 2 n) - A299904 n)) * A007318 n

end

end A350745.P9766053864328983869

/-! ## A350745.P13627711133988996632

`(2-(A007318(and(1, -n))-A299904(n)))*A007318(n)`
-/

namespace A350745.P13627711133988996632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (A007318 (Int.land 1 (-(n : ℤ))).toNat - A299904 n)) * A007318 n

end

end A350745.P13627711133988996632

/-!
# A350748: Smallest number not already in the sequence that is a divisor of A002182(n).

The programs for A350748, there is no canonical definition to state claims against.
-/

/-! ## A350748.P12938945434450174838

`A357910(lt[A357920(n), A357908(3*n+2)])`
-/

namespace A350748.P12938945434450174838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357908 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357910 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350748.P12938945434450174838

/-!
# A350749: Triangle read by rows: T(n,k) is the number of oriented graphs on n labeled nodes with k arcs, n >= 0, k = 0..n*(n-1)/2.

The programs for A350749, there is no canonical definition to state claims against.
-/

/-! ## A350749.P3802206433544651937

`A122841(A321653(n))+A081064(n)`
-/

namespace A350749.P3802206433544651937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A321653 n).toNat + A081064 n

end

end A350749.P3802206433544651937

/-! ## A350749.P529332379977961668

`A081064(n)+A051765(A058711(n+1))`
-/

namespace A350749.P529332379977961668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081064 n + A051765 (A058711 (n + 1)).toNat

end

end A350749.P529332379977961668

/-! ## A350749.P9083279420792422758

`A081064(n)+A000122(A257503(2*n+5))`
-/

namespace A350749.P9083279420792422758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081064 n + A000122 (A257503 (2 * n + 5)).toNat

end

end A350749.P9083279420792422758

/-! ## A350749.P71195515640445544

`A064989(A256504(n)!)+A007290(∑{e}[n+1, #])`
-/

namespace A350749.P71195515640445544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Nat.factorial (A256504 n).toNat) + A007290 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A350749.P71195515640445544

/-! ## A350749.P767155230960835486

`A225641(A066739(n)+5)+A007290(∑{e}[n+1, #])`
-/

namespace A350749.P767155230960835486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225641 (A066739 n + 5).toNat + A007290 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A350749.P767155230960835486

/-!
# A350751: Number of unlabeled strongly connected oriented graphs with n arcs.

The programs for A350751, there is no canonical definition to state claims against.
-/

/-! ## A350751.P14995653863469110553

`A283875(n)+A008651(A192634(n))`
-/

namespace A350751.P14995653863469110553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283875 n + A008651 (A192634 n).toNat

end

end A350751.P14995653863469110553

/-! ## A350751.P4593825556250238913

`A241091(xor(A128227(n), A309399(n)))`
-/

namespace A350751.P4593825556250238913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 (Int.xor (A128227 n) (A309399 n)).toNat

end

end A350751.P4593825556250238913

/-! ## A350751.P17662419813014116432

`A008618(xor(A005940(n+3), A344489(n)))`
-/

namespace A350751.P17662419813014116432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.xor (A005940 (n + 3)) (A344489 n)).toNat

end

end A350751.P17662419813014116432

/-! ## A350751.P10874122249387662111

`A350752(A241091(n))+A008651(A192634(n))`
-/

namespace A350751.P10874122249387662111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350752 (A241091 n).toNat + A008651 (A192634 n).toNat

end

end A350751.P10874122249387662111

/-!
# A350753: Triangle read by rows: T(n,k) is the number of unlabeled strongly connected digraphs with n arcs and k vertices, n >= 0, k = 1..n+1.

The programs for A350753, there is no canonical definition to state claims against.
-/

/-! ## A350753.P10063076334878298755

`A007895(A321609(n)*A343097(n))`
-/

namespace A350753.P10063076334878298755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A321609 n * A343097 n).toNat

end

end A350753.P10063076334878298755

/-! ## A350753.P1287513216592548616

`A091006(n+1)*A165014(A343097(n))`
-/

namespace A350753.P1287513216592548616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091006 (n + 1) * A165014 (A343097 n).toNat

end

end A350753.P1287513216592548616

/-! ## A350753.P13045789675288301451

`A091006(n+1)*A165014(A347618(n))`
-/

namespace A350753.P13045789675288301451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091006 (n + 1) * A165014 (A347618 n).toNat

end

end A350753.P13045789675288301451

/-! ## A350753.P17430661124168384809

`and(A047887(n+1), A108947(A194794(n+1)))`
-/

namespace A350753.P17430661124168384809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047887 (n + 1)) (A108947 (A194794 (n + 1)).toNat)

end

end A350753.P17430661124168384809

/-! ## A350753.P10565650556014314091

`A339070(n+1)+A082859(A347618(n))`
-/

namespace A350753.P10565650556014314091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339070 (n + 1) + A082859 (A347618 n).toNat

end

end A350753.P10565650556014314091

/-!
# A350754: Number of semi-strong digraphs on n unlabeled nodes.

The programs for A350754, there is no canonical definition to state claims against.
-/

/-! ## A350754.P2435049319541469587

`A028310(A054954(n+1)+A004396(n))`
-/

namespace A350754.P2435049319541469587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A054954 (n + 1) + A004396 n).toNat

end

end A350754.P2435049319541469587

/-! ## A350754.P6127072480157671432

`A028310(A054954(n+1)+A005206(n))`
-/

namespace A350754.P6127072480157671432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A054954 (n + 1) + A005206 n).toNat

end

end A350754.P6127072480157671432

/-!
# A350756: Integers whose number of divisors that are triangular numbers sets a new record.

The programs for A350756, there is no canonical definition to state claims against.
-/

/-! ## A350756.P8919673075746774916

`A195307(n+2)/2`
-/

namespace A350756.P8919673075746774916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195307 (n + 2) : ℚ) / 2

end

end A350756.P8919673075746774916

/-! ## A350756.P10648565647711448543

`record[A195307(A065033(n))/A141056(n)]`
-/

namespace A350756.P10648565647711448543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195307 (A065033 n).toNat : ℚ) / (A141056 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350756.P10648565647711448543

/-! ## A350756.P1397619325437837243

`∩[A328450(n+1), A265719(n+2)]/2`
-/

namespace A350756.P1397619325437837243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265719 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A350756.P1397619325437837243

/-! ## A350756.P14432321144752404323

`A014682(A195307(n+2))`
-/

namespace A350756.P14432321144752404323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A195307 (n + 2)).toNat

end

end A350756.P14432321144752404323

/-! ## A350756.P7155775955955374957

`∑[A038572(Δ[A195307(n+1)])]`
-/

namespace A350756.P7155775955955374957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195307 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350756.P7155775955955374957

/-!
# A350757: a(1)=1; for n>1, a(n) is the smallest number k > a(n-1) such that a(n-1) + k is not a square.

The programs for A350757, the canonical program `A350757.P4246092907226777426` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350757 has offset 1).

The definition of A350757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350757.P3211110210931341835

`comp[∑[char[1]+4*n]]`
-/

namespace A350757.P3211110210931341835
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A350757.P3211110210931341835

namespace A350757

/-- `comp[∑[char[1]+4*n]]` -/
def P3211110210931341835.Spec : Prop :=
  ∀ n, (P3211110210931341835.a n : ℤ) = A350757 (n + 1)

end A350757

/-! ## A350757.P79276833246280295

`comp[4*C(n+2, 2)]+1`
-/

namespace A350757.P79276833246280295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A350757.P79276833246280295

namespace A350757

/-- `comp[4*C(n+2, 2)]+1` -/
def P79276833246280295.Spec : Prop :=
  ∀ n, (P79276833246280295.a n : ℤ) = A350757 (n + 1)

end A350757

/-! ## A350757.P7673177275227208251

`comp[∑[record[xor(3, n)+1]]]+1`
-/

namespace A350757.P7673177275227208251
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A350757.P7673177275227208251

namespace A350757

/-- `comp[∑[record[xor(3, n)+1]]]+1` -/
def P7673177275227208251.Spec : Prop :=
  ∀ n, (P7673177275227208251.a n : ℤ) = A350757 (n + 1)

end A350757

/-! ## A350757.P12901597447057508611

`comp[∑[record[gcd(4, n)+n]]]+1`
-/

namespace A350757.P12901597447057508611
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A350757.P12901597447057508611

namespace A350757

/-- `comp[∑[record[gcd(4, n)+n]]]+1` -/
def P12901597447057508611.Spec : Prop :=
  ∀ n, (P12901597447057508611.a n : ℤ) = A350757 (n + 1)

end A350757

/-! ## A350757.P3863035988648805984

`∪[comp[∑[4*n]], ∑[n]]+1`
-/

namespace A350757.P3863035988648805984
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = x) n + 1

end

end A350757.P3863035988648805984

namespace A350757

/-- `∪[comp[∑[4*n]], ∑[n]]+1` -/
def P3863035988648805984.Spec : Prop :=
  ∀ n, (P3863035988648805984.a n : ℤ) = A350757 (n + 1)

end A350757

/-! ## A350757.P9842814019795661803

`comp[∑[or(1, 4*n)+3]]+1`
-/

namespace A350757.P9842814019795661803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * n) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A350757.P9842814019795661803

namespace A350757

/-- `comp[∑[or(1, 4*n)+3]]+1` -/
def P9842814019795661803.Spec : Prop :=
  ∀ n, (P9842814019795661803.a n : ℤ) = A350757 (n + 1)

end A350757

/-! ## A350757.P4246092907226777426

`A000194(A080352(n))+n+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A350757

/-- `A000194(A080352(n))+n+1` -/
def P4246092907226777426.Spec : Prop :=
  ∀ n, P4246092907226777426.a n = A350757 (n + 1)

theorem P4246092907226777426.correct : P4246092907226777426.Spec := by
  intro n
  simp only [A350757, Nat.add_sub_cancel]

end A350757

/-!
# A350758: Sum of all (j+1)-th products of (n-2j) successive primes for j=0..floor(n/2).

The programs for A350758, there is no canonical definition to state claims against.
-/

/-! ## A350758.P10419954916530983628

`A117120(A001247(n))+n`
-/

namespace A350758.P10419954916530983628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (A001247 n).toNat + (n : ℤ)

end

end A350758.P10419954916530983628

/-! ## A350758.P18058057266327043736

`A330558(A001147(n))+A002110(n)`
-/

namespace A350758.P18058057266327043736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330558 (A001147 n).toNat + A002110 n

end

end A350758.P18058057266327043736

/-!
# A350766: Reversed sum of the two previous terms, with a(1) = 1 and a(2) = 11.

The programs for A350766, there is no canonical definition to state claims against.
-/

/-! ## A350766.P13404002102572934041

`A004086(a(n-1)+a(n-2))` with `a(0)=1, a(1)=11`
-/

namespace A350766.P13404002102572934041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A004086 (a (n - 1) + a (n - 2)).toNat

end

end A350766.P13404002102572934041

/-! ## A350766.P16458188292118010662

`A004086(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=11`

`floor` is left out, it is the identity on integers.
-/

namespace A350766.P16458188292118010662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A004086 (a (n - 1) - (-a (n - 2))).toNat

end

end A350766.P16458188292118010662

/-! ## A350766.P12702946157012223665

`A004086(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=11`

`ceil` is left out, it is the identity on integers.
-/

namespace A350766.P12702946157012223665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A004086 (a (n - 1) - (-a (n - 2))).toNat

end

end A350766.P12702946157012223665

/-! ## A350766.P17761447482358061161

`A004086(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=11`

`round` is left out, it is the identity on integers.
-/

namespace A350766.P17761447482358061161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A004086 (a (n - 1) - (-a (n - 2))).toNat

end

end A350766.P17761447482358061161

/-! ## A350766.P2997469656696424449

`A004086(a(n-1)-(char[1]-a(n-2)))` with `a(0)=1, a(1)=11`
-/

namespace A350766.P2997469656696424449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A004086 (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))).toNat

end

end A350766.P2997469656696424449

/-!
# A350768: a(1)=1. Thereafter, if a(n) is a term that has appeared exactly k times prior to and including itself then a(n+1) is the number of terms prior to and including a(n) which have appeared exactly k times.

The programs for A350768, there is no canonical definition to state claims against.
-/

/-! ## A350768.P16701600497194532648

`A001222(A221783(n+1)+A014973(2*(n+1)))`
-/

namespace A350768.P16701600497194532648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A221783 (n + 1) + A014973 (2 * (n + 1))).toNat

end

end A350768.P16701600497194532648

/-! ## A350768.P12163373463971992540

`A235122(A260670(n+1))`
-/

namespace A350768.P12163373463971992540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235122 (A260670 (n + 1)).toNat

end

end A350768.P12163373463971992540

/-! ## A350768.P7682844670123999772

`∏{e}[A189885(A048573(n)), #]`
-/

namespace A350768.P7682844670123999772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189885 (A048573 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A350768.P7682844670123999772

/-! ## A350768.P15816723189039794299

`A292835(n)+A001221(A212422(n))`
-/

namespace A350768.P15816723189039794299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292835 n + A001221 (A212422 n).toNat

end

end A350768.P15816723189039794299

/-! ## A350768.P9890671259514525924

`A206487(A269810(2*n)-A179016(n))`
-/

namespace A350768.P9890671259514525924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206487 (A269810 (2 * n) - A179016 n).toNat

end

end A350768.P9890671259514525924

/-!
# A350770: Triangle read by rows: T(n, k) = 2^(n-k-1) + 2^k - 2, 0 <= k <= n-1.

The programs for A350770, the canonical program `A350770.P10071145900335405838` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350770 has offset 1).

The definition of A350770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350770.P10071145900335405838

`A131816(n)-1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A350770

/-- `A131816(n)-1` -/
def P10071145900335405838.Spec : Prop :=
  ∀ n, P10071145900335405838.a n = A350770 (n + 1)

theorem P10071145900335405838.correct : P10071145900335405838.Spec := by
  intro n
  simp only [A350770, Nat.add_sub_cancel]

end A350770

/-! ## A350770.P16341791732683914929

`A271709(n)-2`
-/

namespace A350770.P16341791732683914929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n - 2

end

end A350770.P16341791732683914929

namespace A350770

/-- `A271709(n)-2` -/
def P16341791732683914929.Spec : Prop :=
  ∀ n, P16341791732683914929.a n = A350770 (n + 1)

end A350770

/-! ## A350770.P15013530910415099760

`(A250742(n+1)-6)/4`
-/

namespace A350770.P15013530910415099760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250742 (n + 1) - 6 : ℚ) / 4

end

end A350770.P15013530910415099760

namespace A350770

/-- `(A250742(n+1)-6)/4` -/
def P15013530910415099760.Spec : Prop :=
  ∀ n, P15013530910415099760.a n = (A350770 (n + 1) : ℚ)

end A350770

/-! ## A350770.P6406748666070052100

`floor((A250742(n-log2(1/2))-6)/4)`
-/

namespace A350770.P6406748666070052100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A250742 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - 6 : ℚ) / 4⌋

end

end A350770.P6406748666070052100

namespace A350770

/-- `floor((A250742(n-log2(1/2))-6)/4)` -/
def P6406748666070052100.Spec : Prop :=
  ∀ n, P6406748666070052100.a n = A350770 (n + 1)

end A350770

/-! ## A350770.P10132487401771961991

`2^∑[char[∑[n]]]/2+A176224(n)-2`
-/

namespace A350770.P10132487401771961991
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2 + (A176224 n - 2 : ℚ)

end

end A350770.P10132487401771961991

namespace A350770

/-- `2^∑[char[∑[n]]]/2+A176224(n)-2` -/
def P10132487401771961991.Spec : Prop :=
  ∀ n, P10132487401771961991.a n = (A350770 (n + 1) : ℚ)

end A350770

/-! ## A350770.P8195425352004718087

`A059268(n)+A130321(n)-2`
-/

namespace A350770.P8195425352004718087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (A130321 n - 2)

end

end A350770.P8195425352004718087

namespace A350770

/-- `A059268(n)+A130321(n)-2` -/
def P8195425352004718087.Spec : Prop :=
  ∀ n, P8195425352004718087.a n = A350770 (n + 1)

end A350770

/-! ## A350770.P2079095796923112938

`A051601(n)+A156862(n)-2`
-/

namespace A350770.P2079095796923112938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n + (A156862 n - 2)

end

end A350770.P2079095796923112938

namespace A350770

/-- `A051601(n)+A156862(n)-2` -/
def P2079095796923112938.Spec : Prop :=
  ∀ n, P2079095796923112938.a n = A350770 (n + 1)

end A350770

/-! ## A350770.P16872539177794975331

`A097807(n)+A131953(n)-2`
-/

namespace A350770.P16872539177794975331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n + (A131953 n - 2)

end

end A350770.P16872539177794975331

namespace A350770

/-- `A097807(n)+A131953(n)-2` -/
def P16872539177794975331.Spec : Prop :=
  ∀ n, P16872539177794975331.a n = A350770 (n + 1)

end A350770

/-! ## A350770.P4626114788118201881

`A350771(n+1)/A007318(n)`
-/

namespace A350770.P4626114788118201881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350771 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A350770.P4626114788118201881

namespace A350770

/-- `A350771(n+1)/A007318(n)` -/
def P4626114788118201881.Spec : Prop :=
  ∀ n, P4626114788118201881.a n = (A350770 (n + 1) : ℚ)

end A350770

/-! ## A350770.P9224704883707190303

`A154690(n)/A007318(n)-2`
-/

namespace A350770.P9224704883707190303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154690 n : ℚ) / (A007318 n : ℚ) - 2

end

end A350770.P9224704883707190303

namespace A350770

/-- `A154690(n)/A007318(n)-2` -/
def P9224704883707190303.Spec : Prop :=
  ∀ n, P9224704883707190303.a n = (A350770 (n + 1) : ℚ)

end A350770

/-! ## A350770.P13427761774684773785

`A154913(n)/A154843(n)-2`
-/

namespace A350770.P13427761774684773785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154913 n : ℚ) / (A154843 n : ℚ) - 2

end

end A350770.P13427761774684773785

namespace A350770

/-- `A154913(n)/A154843(n)-2` -/
def P13427761774684773785.Spec : Prop :=
  ∀ n, P13427761774684773785.a n = (A350770 (n + 1) : ℚ)

end A350770

/-! ## A350770.P13711682663309206329

`A154915(n)/A154844(n)-2`
-/

namespace A350770.P13711682663309206329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154915 n : ℚ) / (A154844 n : ℚ) - 2

end

end A350770.P13711682663309206329

namespace A350770

/-- `A154915(n)/A154844(n)-2` -/
def P13711682663309206329.Spec : Prop :=
  ∀ n, P13711682663309206329.a n = (A350770 (n + 1) : ℚ)

end A350770

/-! ## A350770.P15675348444049959888

`A250742(n+1)%A271709(n)`
-/

namespace A350770.P15675348444049959888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250742 (n + 1)) (A271709 n)

end

end A350770.P15675348444049959888

namespace A350770

/-- `A250742(n+1)%A271709(n)` -/
def P15675348444049959888.Spec : Prop :=
  ∀ n, P15675348444049959888.a n = A350770 (n + 1)

end A350770

/-! ## A350770.P18360305539025163213

`xor(A143086(n), A271710(n))-1`
-/

namespace A350770.P18360305539025163213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A143086 n) (A271710 n) - 1

end

end A350770.P18360305539025163213

namespace A350770

/-- `xor(A143086(n), A271710(n))-1` -/
def P18360305539025163213.Spec : Prop :=
  ∀ n, P18360305539025163213.a n = A350770 (n + 1)

end A350770

/-! ## A350770.P12857866498809715192

`A099628(n+1)-(A089633(n)+2)`
-/

namespace A350770.P12857866498809715192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1) - (A089633 n + 2)

end

end A350770.P12857866498809715192

namespace A350770

/-- `A099628(n+1)-(A089633(n)+2)` -/
def P12857866498809715192.Spec : Prop :=
  ∀ n, P12857866498809715192.a n = A350770 (n + 1)

end A350770

/-! ## A350770.P11413704174031139105

`A264802(n+1)-(A173787(n)+2)`
-/

namespace A350770.P11413704174031139105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264802 (n + 1) - (A173787 n + 2)

end

end A350770.P11413704174031139105

namespace A350770

/-- `A264802(n+1)-(A173787(n)+2)` -/
def P11413704174031139105.Spec : Prop :=
  ∀ n, P11413704174031139105.a n = A350770 (n + 1)

end A350770

/-! ## A350770.P3776249168005893543

`A048675(A098350(n+1))-2`
-/

namespace A350770.P3776249168005893543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A098350 (n + 1)).toNat - 2

end

end A350770.P3776249168005893543

namespace A350770

/-- `A048675(A098350(n+1))-2` -/
def P3776249168005893543.Spec : Prop :=
  ∀ n, P3776249168005893543.a n = A350770 (n + 1)

end A350770

/-! ## A350770.P2332722663915307083

`A023443(A131816(n))`
-/

namespace A350770.P2332722663915307083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A131816 n).toNat

end

end A350770.P2332722663915307083

namespace A350770

/-- `A023443(A131816(n))` -/
def P2332722663915307083.Spec : Prop :=
  ∀ n, P2332722663915307083.a n = A350770 (n + 1)

end A350770

/-! ## A350770.P11555849280051126636

`A023444(A271709(n))`
-/

namespace A350770.P11555849280051126636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A271709 n).toNat

end

end A350770.P11555849280051126636

namespace A350770

/-- `A023444(A271709(n))` -/
def P11555849280051126636.Spec : Prop :=
  ∀ n, P11555849280051126636.a n = A350770 (n + 1)

end A350770

/-! ## A350770.P15338944185436544405

`A023444(A131816(n)+1)`
-/

namespace A350770.P15338944185436544405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A131816 n + 1).toNat

end

end A350770.P15338944185436544405

namespace A350770

/-- `A023444(A131816(n)+1)` -/
def P15338944185436544405.Spec : Prop :=
  ∀ n, P15338944185436544405.a n = A350770 (n + 1)

end A350770

/-!
# A350771: Triangle read by rows: T(n, k) = (2^(n-k-1) + 2^k - 2)*binomial(n-1, k), 0 <= k <= n-1.

The programs for A350771, the canonical program `A350771.P14615375243004568037` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350771 has offset 1).

The definition of A350771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350771.P14615375243004568037

`A154690(n)-A028326(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A350771

/-- `A154690(n)-A028326(n)` -/
def P14615375243004568037.Spec : Prop :=
  ∀ n, P14615375243004568037.a n = A350771 (n + 1)

theorem P14615375243004568037.correct : P14615375243004568037.Spec := by
  intro n
  simp only [A350771, Nat.add_sub_cancel]

end A350771

/-! ## A350771.P8963621338102274846

`A007318(n)*A350770(n+1)`
-/

namespace A350771.P8963621338102274846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A350770 (n + 1)

end

end A350771.P8963621338102274846

namespace A350771

/-- `A007318(n)*A350770(n+1)` -/
def P8963621338102274846.Spec : Prop :=
  ∀ n, P8963621338102274846.a n = A350771 (n + 1)

end A350771

/-! ## A350771.P8797276144277719499

`(A131816(n)-1)*A007318(n)`
-/

namespace A350771.P8797276144277719499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131816 n - 1) * A007318 n

end

end A350771.P8797276144277719499

namespace A350771

/-- `(A131816(n)-1)*A007318(n)` -/
def P8797276144277719499.Spec : Prop :=
  ∀ n, P8797276144277719499.a n = A350771 (n + 1)

end A350771

/-! ## A350771.P1741728294882655302

`A154690(n)-2*A007318(n)`
-/

namespace A350771.P1741728294882655302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154690 n - 2 * A007318 n

end

end A350771.P1741728294882655302

namespace A350771

/-- `A154690(n)-2*A007318(n)` -/
def P1741728294882655302.Spec : Prop :=
  ∀ n, P1741728294882655302.a n = A350771 (n + 1)

end A350771

/-! ## A350771.P2766815080147147639

`(A271709(n)-2)*A007318(n)`
-/

namespace A350771.P2766815080147147639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271709 n - 2) * A007318 n

end

end A350771.P2766815080147147639

namespace A350771

/-- `(A271709(n)-2)*A007318(n)` -/
def P2766815080147147639.Spec : Prop :=
  ∀ n, P2766815080147147639.a n = A350771 (n + 1)

end A350771

/-! ## A350771.P5209950532330781370

`abs(A108086(n)*A350770(n+1))`
-/

namespace A350771.P5209950532330781370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A350770 (n + 1)|

end

end A350771.P5209950532330781370

namespace A350771

/-- `abs(A108086(n)*A350770(n+1))` -/
def P5209950532330781370.Spec : Prop :=
  ∀ n, P5209950532330781370.a n = A350771 (n + 1)

end A350771

/-! ## A350771.P12059820913332438448

`abs(A130595(n)*A350770(n+1))`
-/

namespace A350771.P12059820913332438448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A350770 (n + 1)|

end

end A350771.P12059820913332438448

namespace A350771

/-- `abs(A130595(n)*A350770(n+1))` -/
def P12059820913332438448.Spec : Prop :=
  ∀ n, P12059820913332438448.a n = A350771 (n + 1)

end A350771

/-! ## A350771.P11679590446484998416

`abs((2-A271709(n))*A108086(n))`
-/

namespace A350771.P11679590446484998416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - A271709 n) * A108086 n|

end

end A350771.P11679590446484998416

namespace A350771

/-- `abs((2-A271709(n))*A108086(n))` -/
def P11679590446484998416.Spec : Prop :=
  ∀ n, P11679590446484998416.a n = A350771 (n + 1)

end A350771

/-! ## A350771.P11052043605321540751

`abs((2-A271709(n))*A117440(n))`
-/

namespace A350771.P11052043605321540751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - A271709 n) * A117440 n|

end

end A350771.P11052043605321540751

namespace A350771

/-- `abs((2-A271709(n))*A117440(n))` -/
def P11052043605321540751.Spec : Prop :=
  ∀ n, P11052043605321540751.a n = A350771 (n + 1)

end A350771

/-! ## A350771.P4794303254224824561

`abs((2-A271709(n))*A130595(n))`
-/

namespace A350771.P4794303254224824561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - A271709 n) * A130595 n|

end

end A350771.P4794303254224824561

namespace A350771

/-- `abs((2-A271709(n))*A130595(n))` -/
def P4794303254224824561.Spec : Prop :=
  ∀ n, P4794303254224824561.a n = A350771 (n + 1)

end A350771

/-!
# A350772: Triangle read by rows: T(n,k) is the number of n-element unlabeled series-parallel posets with k connected components.

The programs for A350772, there is no canonical definition to state claims against.
-/

/-! ## A350772.P6611452212979812341

`A088847(A350783(n+1))`
-/

namespace A350772.P6611452212979812341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088847 (A350783 (n + 1)).toNat

end

end A350772.P6611452212979812341

/-! ## A350772.P18296019155003486757

`A322741(A144351(n+1))`
-/

namespace A350772.P18296019155003486757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322741 (A144351 (n + 1)).toNat

end

end A350772.P18296019155003486757

/-! ## A350772.P9673274537843132495

`A369856(A201922(n+1))`
-/

namespace A350772.P9673274537843132495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369856 (A201922 (n + 1)).toNat

end

end A350772.P9673274537843132495

/-! ## A350772.P1472042269845410204

`A111660(2*A350783(n+1))`
-/

namespace A350772.P1472042269845410204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A350783 (n + 1)).toNat

end

end A350772.P1472042269845410204

/-! ## A350772.P11391235376623401516

`A111660(3*A201922(n+1))`
-/

namespace A350772.P11391235376623401516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (3 * A201922 (n + 1)).toNat

end

end A350772.P11391235376623401516

/-!
# A350776: Nonnegative integers whose balanced ternary expansion has no two consecutive nonzero digits.

The programs for A350776, there is no canonical definition to state claims against.
-/

/-! ## A350776.P470597151186002500

`eq[0, A350775(n)]`
-/

namespace A350776.P470597151186002500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350775 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350776.P470597151186002500

/-! ## A350776.P9808008965644665190

`eq[2*n, A333780(n)]/2`
-/

namespace A350776.P9808008965644665190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333780 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A350776.P9808008965644665190

/-! ## A350776.P4841331498937660549

`A265344((∑[and(n, -n)^log2(3)]+n)/2)`
-/

namespace A350776.P4841331498937660549
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2)).toNat

end

end A350776.P4841331498937660549

/-! ## A350776.P2004580554838225734

`A265344(record[A060372(n)])`
-/

namespace A350776.P2004580554838225734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A350776.P2004580554838225734

/-! ## A350776.P2441606522609762996

`A265344(record[A117966(n)])`
-/

namespace A350776.P2441606522609762996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A350776.P2441606522609762996

/-! ## A350776.P8130584287233590063

`A265344(record[A167877(n)])`
-/

namespace A350776.P8130584287233590063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A350776.P8130584287233590063

/-! ## A350776.P2555934249075957260

`A265344(record[A244042(n)])`
-/

namespace A350776.P2555934249075957260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A350776.P2555934249075957260

/-! ## A350776.P13419711855207251219

`A265344(record[A338241(n)])`
-/

namespace A350776.P13419711855207251219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A350776.P13419711855207251219

/-! ## A350776.P6277209746949874831

`A265344(A005836(n+1))`
-/

namespace A350776.P6277209746949874831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (A005836 (n + 1)).toNat

end

end A350776.P6277209746949874831

/-! ## A350776.P10992329935189117727

`A265344(eq[n, A060372(n)])`
-/

namespace A350776.P10992329935189117727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350776.P10992329935189117727

/-!
# A350777: Numbers k where phi(k) divides k - 3.

The programs for A350777, there is no canonical definition to state claims against.
-/

/-! ## A350777.P6359203950776846728

`lt[(n-2)%A000010(n+1), 1]+1`
-/

namespace A350777.P6359203950776846728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 2) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A350777.P6359203950776846728

/-!
# A350778: Numerators of fractions n/prime(n) sorted in decreasing order.

The programs for A350778, there is no canonical definition to state claims against.
-/

/-! ## A350778.P12880327656454741628

`A350882(n)+a(n-1)` with `a(0)=2`
-/

namespace A350778.P12880327656454741628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A350882 n + a (n - 1)

end

end A350778.P12880327656454741628

/-! ## A350778.P8250412332796691898

`∑[A350882(A028310(n))]+1`
-/

namespace A350778.P8250412332796691898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350882 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A350778.P8250412332796691898

/-! ## A350778.P7703232383849599994

`∑[A350882(n+1)]+2-A350882(n+1)`
-/

namespace A350778.P7703232383849599994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A350882 (n + 1))

end

end A350778.P7703232383849599994

/-! ## A350778.P6195014473582337023

`∑[A054977(n)*A350882(A028310(n))]`
-/

namespace A350778.P6195014473582337023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A350882 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350778.P6195014473582337023

/-! ## A350778.P11293952492266323020

`∑[A000038(n)!*A350882(A028310(n))]`
-/

namespace A350778.P11293952492266323020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A350882 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350778.P11293952492266323020

/-!
# A350779: Indices where Iccanobif numbers of the form A014258 decrease, i.e., numbers k such that A014258(k) < A014258(k-1).

The programs for A350779, there is no canonical definition to state claims against.
-/

/-! ## A350779.P18244264794225498938

`lt[A014258(n+1), A014258(n)]+1`
-/

namespace A350779.P18244264794225498938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014258 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A350779.P18244264794225498938

/-!
# A350780: Numbers that are the number of divisors of p^2 - 1 for some prime p.

The programs for A350780, there is no canonical definition to state claims against.
-/

/-! ## A350780.P16885219490723159391

`A103288(n+3)-A000038(A251706(n+2))`
-/

namespace A350780.P16885219490723159391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 3) - A000038 (A251706 (n + 2)).toNat

end

end A350780.P16885219490723159391

/-! ## A350780.P15326752386604829986

`A005153(n+3)-A000122(A002843(n))`
-/

namespace A350780.P15326752386604829986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 3) - A000122 (A002843 n).toNat

end

end A350780.P15326752386604829986

/-! ## A350780.P17345264125583847455

`A093891(lt[A093930(2*(n+2)), A093925(2*n+3)])`
-/

namespace A350780.P17345264125583847455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093930 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093925 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350780.P17345264125583847455

/-! ## A350780.P15915041715629306650

`eq[A070436(A375128(2*(n+1))), A214052(3*(n+1))]`
-/

namespace A350780.P15915041715629306650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070436 (A375128 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214052 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350780.P15915041715629306650

/-! ## A350780.P3081282260440912011

`lt[A342462(n), A086425(A033630(3*n))]`
-/

namespace A350780.P3081282260440912011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086425 (A033630 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350780.P3081282260440912011

/-!
# A350782: a(n) is the number of pairs of primes (p,q), p < q, such that (p + q)/2 = n!.

The programs for A350782, there is no canonical definition to state claims against.
-/

/-! ## A350782.P17469437455933357608

`A002375((n+3)!)`
-/

namespace A350782.P17469437455933357608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (Nat.factorial (n + 3))

end

end A350782.P17469437455933357608

/-! ## A350782.P5829565291818461713

`A061357((n+3)!)`
-/

namespace A350782.P5829565291818461713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (Nat.factorial (n + 3))

end

end A350782.P5829565291818461713

/-!
# A350783: Triangle read by rows: T(n,k) is the number of n-element unlabeled N-free posets with k connected components.

The programs for A350783, there is no canonical definition to state claims against.
-/

/-! ## A350783.P15641314076262276020

`A211317(A158815(n))`
-/

namespace A350783.P15641314076262276020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211317 (A158815 n).toNat

end

end A350783.P15641314076262276020

/-! ## A350783.P10041631649716850098

`A259899(A121416(n))`
-/

namespace A350783.P10041631649716850098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A121416 n).toNat

end

end A350783.P10041631649716850098

/-! ## A350783.P5612901890635104574

`A004438(A350772(n+1))`
-/

namespace A350783.P5612901890635104574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (A350772 (n + 1)).toNat

end

end A350783.P5612901890635104574

/-! ## A350783.P16773508812061236894

`A156246(A201922(n+1))`
-/

namespace A350783.P16773508812061236894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156246 (A201922 (n + 1)).toNat

end

end A350783.P16773508812061236894

/-! ## A350783.P11494186125821253135

`A232779(A144351(n+1))`
-/

namespace A350783.P11494186125821253135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232779 (A144351 (n + 1)).toNat

end

end A350783.P11494186125821253135

/-!
# A350784: Number of Gray code sequences of length 2*n where numbers are between 0 and 2*n-1.

The programs for A350784, there is no canonical definition to state claims against.
-/

/-! ## A350784.P6524905676889903687

`(A057427(n)+1)*A236602(n+1)`
-/

namespace A350784.P6524905676889903687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A236602 (n + 1)

end

end A350784.P6524905676889903687

/-! ## A350784.P3017119996875880886

`2*A236602(n+1)-A000007(n)`
-/

namespace A350784.P3017119996875880886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236602 (n + 1) - A000007 n

end

end A350784.P3017119996875880886

/-! ## A350784.P6203832255489051226

`gcd(2, A000010(n+2))*A236602(n+1)`
-/

namespace A350784.P6203832255489051226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000010 (n + 2)) : ℤ) * A236602 (n + 1)

end

end A350784.P6203832255489051226

/-!
# A350785: Triangle read by rows: T(n,k) is the number of (unlabeled) connected graphs with n nodes such that k is the maximum number that can be reached when the stepping stone puzzle of A337663 is played on the graph, 1 <= k <= n.

The programs for A350785, there is no canonical definition to state claims against.
-/

/-! ## A350785.P10196126688457620776

`A000005(A104880(n))%A000040(A104878(n))`
-/

namespace A350785.P10196126688457620776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A104880 n).toNat) (A000040 (A104878 n).toNat)

end

end A350785.P10196126688457620776

/-!
# A350786: a(n) is the number of divisors of A061799(n).

The programs for A350786, there is no canonical definition to state claims against.
-/

/-! ## A350786.P10877924918885656898

`A000005(A061799(n+1))`
-/

namespace A350786.P10877924918885656898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061799 (n + 1)).toNat

end

end A350786.P10877924918885656898

/-! ## A350786.P2392245914117072579

`A002183(∑[char[A002183(n+1)]]+1)`
-/

namespace A350786.P2392245914117072579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A350786.P2392245914117072579

/-! ## A350786.P564305483574721161

`A002183(comp[A002183(n+1)+n]-n+1)`
-/

namespace A350786.P564305483574721161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1).toNat

end

end A350786.P564305483574721161

/-! ## A350786.P2067975739855323775

`A320111(2*A061799(n+1))`
-/

namespace A350786.P2067975739855323775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A061799 (n + 1)).toNat

end

end A350786.P2067975739855323775

/-! ## A350786.P14831683183593749016

`∑{d}[A061799(n+1), A057427(#)]`
-/

namespace A350786.P14831683183593749016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A350786.P14831683183593749016

/-!
# A350787: Convolution of A001654 and A007598.

The programs for A350787, the canonical program `A350787.P8196929193251878278` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350787 has offset 0).

The definition of A350787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350787.P8196929193251878278

`4*a(n-1)-10*a(n-3)+4*a(n-5)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=12, a(5)=38`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A350787

/-- `4*a(n-1)-10*a(n-3)+4*a(n-5)-a(n-6)` -/
def P8196929193251878278.Spec : Prop :=
  ∀ n, P8196929193251878278.a n = A350787 n

theorem P8196929193251878278.correct : P8196929193251878278.Spec := by
  intro n
  simp only [A350787]

end A350787

/-! ## A350787.P15447953694011022695

`abs(A001629(n)*A236191(n))-a(n-1)` with `a(0)=0`
-/

namespace A350787.P15447953694011022695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |A001629 n * A236191 n| - a (n - 1)

end

end A350787.P15447953694011022695

namespace A350787

/-- `abs(A001629(n)*A236191(n))-a(n-1)` -/
def P15447953694011022695.Spec : Prop :=
  ∀ n, P15447953694011022695.a n = A350787 n

end A350787

/-! ## A350787.P151309790353290271

`Δ[A238419(floor(n-atan(n)))]`
-/

namespace A350787.P151309790353290271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238419 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350787.P151309790353290271

namespace A350787

/-- `Δ[A238419(floor(n-atan(n)))]` -/
def P151309790353290271.Spec : Prop :=
  ∀ n, P151309790353290271.a n = A350787 n

end A350787

/-! ## A350787.P16911962793517375118

`Δ[A238419(A289207(n))]`
-/

namespace A350787.P16911962793517375118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238419 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350787.P16911962793517375118

namespace A350787

/-- `Δ[A238419(A289207(n))]` -/
def P16911962793517375118.Spec : Prop :=
  ∀ n, P16911962793517375118.a n = A350787 n

end A350787

/-! ## A350787.P9908621035706307309

`Δ[A238419(A028310(abs(1-n))-1)]`
-/

namespace A350787.P9908621035706307309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238419 (A028310 |1 - (n : ℤ)|.toNat - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350787.P9908621035706307309

namespace A350787

/-- `Δ[A238419(A028310(abs(1-n))-1)]` -/
def P9908621035706307309.Spec : Prop :=
  ∀ n, P9908621035706307309.a n = A350787 n

end A350787

/-!
# A350789: Triangle read by rows: T(n,k) is the number of unlabeled weakly connected digraphs with n arcs and k vertices, k = 1..n+1.

The programs for A350789, there is no canonical definition to state claims against.
-/

/-! ## A350789.P13598172436444603359

`and(A165342(A018004(n)), A243163(n))`
-/

namespace A350789.P13598172436444603359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165342 (A018004 n).toNat) (A243163 n)

end

end A350789.P13598172436444603359

/-! ## A350789.P507168200323002010

`and(A034968(A269957(n)), A135313(n))`
-/

namespace A350789.P507168200323002010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034968 (A269957 n).toNat) (A135313 n)

end

end A350789.P507168200323002010

/-! ## A350789.P10582211409656223121

`and(A005811(A073364(n+1)), A291452(n))`
-/

namespace A350789.P10582211409656223121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005811 (A073364 (n + 1)).toNat) (A291452 n)

end

end A350789.P10582211409656223121

/-! ## A350789.P2039011652604879082

`and(A056992(A000009(3*n+1)), A289925(2*n))`
-/

namespace A350789.P2039011652604879082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056992 (A000009 (3 * n + 1)).toNat) (A289925 (2 * n))

end

end A350789.P2039011652604879082

/-! ## A350789.P12595099481486925730

`A361357(n)+A044941(A004251(n))`
-/

namespace A350789.P12595099481486925730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361357 n + A044941 (A004251 n).toNat

end

end A350789.P12595099481486925730

/-!
# A350790: Number of digraphs on n labeled nodes with a global source and sink.

The programs for A350790, there is no canonical definition to state claims against.
-/

/-! ## A350790.P14402491978060762866

`A266755(A298422(n+1)+A020554(n+1))`
-/

namespace A350790.P14402491978060762866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (A298422 (n + 1) + A020554 (n + 1)).toNat

end

end A350790.P14402491978060762866

/-!
# A350792: Number of digraphs on n labeled nodes with a global source (or sink).

The programs for A350792, there is no canonical definition to state claims against.
-/

/-! ## A350792.P2047116625451052310

`2^C(n, 2)*A177777(n+1)`
-/

namespace A350792.P2047116625451052310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) * A177777 (n + 1)

end

end A350792.P2047116625451052310

/-! ## A350792.P993441324113880867

`A006125(n)*A053549(n+1)`
-/

namespace A350792.P993441324113880867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n * A053549 (n + 1)

end

end A350792.P993441324113880867

/-! ## A350792.P10380048894193099634

`A006125(n)*A177777(n+1)`
-/

namespace A350792.P10380048894193099634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n * A177777 (n + 1)

end

end A350792.P10380048894193099634

/-! ## A350792.P4065559248312118626

`∏[A011782(n)]*A177777(n+1)`
-/

namespace A350792.P4065559248312118626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A177777 (n + 1)

end

end A350792.P4065559248312118626

/-! ## A350792.P18425540076513113928

`A001187(n+1)*A123903(n+1)`
-/

namespace A350792.P18425540076513113928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 (n + 1) * A123903 (n + 1)

end

end A350792.P18425540076513113928

/-!
# A350794: Number of digraphs on n unlabeled nodes with a global source and sink.

The programs for A350794, there is no canonical definition to state claims against.
-/

/-! ## A350794.P14015969254457571681

`A258037(∏[n!])`
-/

namespace A350794.P14015969254457571681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258037 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A350794.P14015969254457571681

/-!
# A350796: Number of unlabeled digraphs with n arcs and a global source and sink.

The programs for A350796, there is no canonical definition to state claims against.
-/

/-! ## A350796.P7455361661438437452

`A065712(A111459(n))+A005034(n)`
-/

namespace A350796.P7455361661438437452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 (A111459 n).toNat + A005034 n

end

end A350796.P7455361661438437452

/-! ## A350796.P14751100945433397565

`A001250(n)-A024327(A085633(n+1))`
-/

namespace A350796.P14751100945433397565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 n - A024327 (A085633 (n + 1)).toNat

end

end A350796.P14751100945433397565

/-! ## A350796.P15854000605759066994

`A001250(n)-A353592(A232466(n+1))`
-/

namespace A350796.P15854000605759066994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 n - A353592 (A232466 (n + 1)).toNat

end

end A350796.P15854000605759066994

/-!
# A350798: Number of unlabeled digraphs with n arcs and a global source (or sink).

The programs for A350798, there is no canonical definition to state claims against.
-/

/-! ## A350798.P10846506663581618530

`A153150(A063659(n!))`
-/

namespace A350798.P10846506663581618530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153150 (A063659 (Nat.factorial n)).toNat

end

end A350798.P10846506663581618530

/-! ## A350798.P11811687471806275135

`A264749(A213674(n+1)²)`
-/

namespace A350798.P11811687471806275135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A213674 (n + 1) ^ 2).toNat

end

end A350798.P11811687471806275135

/-! ## A350798.P12341124208180531034

`A110656(∑[∑[A189243(n+1)]])`
-/

namespace A350798.P12341124208180531034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189243 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350798.P12341124208180531034

/-!
# A350799: The number of decimal places of Pi that are computed correctly when using Machin's formula with n terms of the Taylor series.

The programs for A350799, there is no canonical definition to state claims against.
-/

/-! ## A350799.P7922862561108725254

`∑[gcd(2, A008619(A056366(n+1)))]`
-/

namespace A350799.P7922862561108725254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A008619 (A056366 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350799.P7922862561108725254

/-! ## A350799.P15056420602466833649

`∑[A057212(A076329(3*n+1))+1]`
-/

namespace A350799.P15056420602466833649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (A076329 (3 * n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350799.P15056420602466833649

/-! ## A350799.P7743017445716679880

`∑[A102523(A162578(n+1))]`
-/

namespace A350799.P7743017445716679880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102523 (A162578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350799.P7743017445716679880

/-! ## A350799.P6890659972267966291

`∑[A175077(A298849(n+1))]`
-/

namespace A350799.P6890659972267966291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175077 (A298849 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350799.P6890659972267966291

/-! ## A350799.P2782380936366376858

`∑[A289242(A288219(n))+1]`
-/

namespace A350799.P2782380936366376858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289242 (A288219 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350799.P2782380936366376858

