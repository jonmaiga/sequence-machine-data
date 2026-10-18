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
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B003.C000
import Seq.B003.C002
import Seq.B006.C000
import Seq.B010.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A024200: a(0) = 1, a(1) = 0, a(n+1) = 2*a(n) + (2*n-1)^2*a(n-1).

The programs for A024200, there is no canonical definition to state claims against.
-/

/-! ## A024200.P6689467663934534579

`lcm(2, ∏[1-2*n])-A072371(n)`
-/

namespace A024200.P6689467663934534579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ) - A072371 n

end

end A024200.P6689467663934534579

/-! ## A024200.P553708679055170911

`(2*n-1)*a(n-1)-A330797(n)` with `a(0)=1`
-/

namespace A024200.P553708679055170911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) - A330797 n

end

end A024200.P553708679055170911

/-! ## A024200.P8542261799646860167

`A001147(n)-A024199(n)`
-/

namespace A024200.P8542261799646860167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n - A024199 n

end

end A024200.P8542261799646860167

/-! ## A024200.P949026441006954776

`A001497(∑[n])-A024199(n)`
-/

namespace A024200.P949026441006954776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 (∑ j ∈ Finset.range (n + 1), f1 j) - A024199 n

end

end A024200.P949026441006954776

/-! ## A024200.P886520163769072313

`A028338(∑[n])-A024199(n)`
-/

namespace A024200.P886520163769072313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (∑ j ∈ Finset.range (n + 1), f1 j) - A024199 n

end

end A024200.P886520163769072313

/-! ## A024200.P7447112999574443977

`A053979(∑[n])-A024199(n)`
-/

namespace A024200.P7447112999574443977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053979 (∑ j ∈ Finset.range (n + 1), f1 j) - A024199 n

end

end A024200.P7447112999574443977

/-! ## A024200.P7561900673878488498

`2*A001147(n)-A072371(n)`
-/

namespace A024200.P7561900673878488498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001147 n - A072371 n

end

end A024200.P7561900673878488498

/-! ## A024200.P11115375068069768975

`A055634(2*n)-A024199(n)`
-/

namespace A024200.P11115375068069768975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 (2 * n) - A024199 n

end

end A024200.P11115375068069768975

/-! ## A024200.P12934862830660775836

`a(n-1)*A004273(n)-A330797(n)` with `a(0)=1`
-/

namespace A024200.P12934862830660775836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A004273 n - A330797 n

end

end A024200.P12934862830660775836

/-! ## A024200.P4142137529423756909

`a(n-1)*record[A006257(n)]-A330797(n)` with `a(0)=1`
-/

namespace A024200.P4142137529423756909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A330797 n

end

end A024200.P4142137529423756909

/-!
# A024201: [ (2nd elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+1 odd positive integers}.

The programs for A024201, the canonical program `A024201.P11711791166494112596` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024201 has offset 1).

The definition of A024201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024201.P11711791166494112596

`((n+1)²+n-1)/2-floor((n+1)/6)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024201

/-- `((n+1)²+n-1)/2-floor((n+1)/6)` -/
def P11711791166494112596.Spec : Prop :=
  ∀ n, P11711791166494112596.a n = (A024201 (n + 1) : ℚ)

end A024201

/-! ## A024201.P16747347015142300059

`round(A000096(n)-(n-1)/6)`
-/

namespace A024201.P16747347015142300059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000096 n : ℚ) - ((n : ℤ) - 1 : ℚ) / 6)

end

end A024201.P16747347015142300059

namespace A024201

/-- `round(A000096(n)-(n-1)/6)` -/
def P16747347015142300059.Spec : Prop :=
  ∀ n, P16747347015142300059.a n = A024201 (n + 1)

end A024201

/-! ## A024201.P5445936564116899286

`round(A036464(n+2)/(n+1)²)`
-/

namespace A024201.P5445936564116899286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036464 (n + 2) : ℚ) / ((n + 1) ^ 2 : ℚ))

end

end A024201.P5445936564116899286

namespace A024201

/-- `round(A036464(n+2)/(n+1)²)` -/
def P5445936564116899286.Spec : Prop :=
  ∀ n, P5445936564116899286.a n = A024201 (n + 1)

end A024201

/-!
# A024202: a(n) = [ (3rd elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+2 odd positive integers}.

The programs for A024202, the canonical program `A024202.P17469665859940868904` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024202 has offset 1).

The definition of A024202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024202.P17469665859940868904

`floor(A024197(n+1)/(n+3)²)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024202

/-- `floor(A024197(n+1)/(n+3)²)` -/
def P17469665859940868904.Spec : Prop :=
  ∀ n, P17469665859940868904.a n = A024202 (n + 1)

theorem P17469665859940868904.correct : P17469665859940868904.Spec := by
  intro n
  simp only [A024202, Nat.add_sub_cancel]

end A024202

/-! ## A024202.P4826321232026495360

`∑[∑[gcd(3, 1-n)+(n+2)*2*n]]`
-/

namespace A024202.P4826321232026495360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (1 - (n : ℤ)) + (n + 2) * (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024202.P4826321232026495360

namespace A024202

/-- `∑[∑[gcd(3, 1-n)+(n+2)*2*n]]` -/
def P4826321232026495360.Spec : Prop :=
  ∀ n, (P4826321232026495360.a n : ℤ) = A024202 (n + 1)

end A024202

/-! ## A024202.P5826329243396211683

`floor(A268458(n+1)/6)`
-/

namespace A024202.P5826329243396211683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268458 (n + 1) : ℚ) / 6⌋

end

end A024202.P5826329243396211683

namespace A024202

/-- `floor(A268458(n+1)/6)` -/
def P5826329243396211683.Spec : Prop :=
  ∀ n, P5826329243396211683.a n = A024202 (n + 1)

end A024202

/-! ## A024202.P5801798065884396455

`floor(A269468(n+1)/6)`
-/

namespace A024202.P5801798065884396455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269468 (n + 1) : ℚ) / 6⌋

end

end A024202.P5801798065884396455

namespace A024202

/-- `floor(A269468(n+1)/6)` -/
def P5801798065884396455.Spec : Prop :=
  ∀ n, P5801798065884396455.a n = A024202 (n + 1)

end A024202

/-! ## A024202.P16010052851221450870

`∑[A006331(n+1)-A008611(n)]`
-/

namespace A024202.P16010052851221450870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (n + 1) - A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024202.P16010052851221450870

namespace A024202

/-- `∑[A006331(n+1)-A008611(n)]` -/
def P16010052851221450870.Spec : Prop :=
  ∀ n, P16010052851221450870.a n = A024202 (n + 1)

end A024202

/-! ## A024202.P5265030979812226194

`A008911(n+2)-∑[A008611(n)]`
-/

namespace A024202.P5265030979812226194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024202.P5265030979812226194

namespace A024202

/-- `A008911(n+2)-∑[A008611(n)]` -/
def P5265030979812226194.Spec : Prop :=
  ∀ n, P5265030979812226194.a n = A024202 (n + 1)

end A024202

/-! ## A024202.P1983562399249015604

`∑[∑[A001105(n+1)]-A008611(n)]`
-/

namespace A024202.P1983562399249015604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024202.P1983562399249015604

namespace A024202

/-- `∑[∑[A001105(n+1)]-A008611(n)]` -/
def P1983562399249015604.Spec : Prop :=
  ∀ n, P1983562399249015604.a n = A024202 (n + 1)

end A024202

/-! ## A024202.P838459874626412252

`∑[A005993(2*n+1)-A008611(n)]`
-/

namespace A024202.P838459874626412252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 (2 * n + 1) - A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024202.P838459874626412252

namespace A024202

/-- `∑[A005993(2*n+1)-A008611(n)]` -/
def P838459874626412252.Spec : Prop :=
  ∀ n, P838459874626412252.a n = A024202 (n + 1)

end A024202

/-! ## A024202.P16298602430486494784

`∑[∑[A005843((n+1)²)]-A008611(n)]`
-/

namespace A024202.P16298602430486494784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024202.P16298602430486494784

namespace A024202

/-- `∑[∑[A005843((n+1)²)]-A008611(n)]` -/
def P16298602430486494784.Spec : Prop :=
  ∀ n, P16298602430486494784.a n = A024202 (n + 1)

end A024202

/-!
# A024203: [ (4th elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+3 odd positive integers}.

The programs for A024203, the canonical program `A024203.P5902371013324500065` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024203 has offset 1).

The definition of A024203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024203.P5902371013324500065

`floor(A024198(n+1)/(n+4)²)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024203

/-- `floor(A024198(n+1)/(n+4)²)` -/
def P5902371013324500065.Spec : Prop :=
  ∀ n, P5902371013324500065.a n = A024203 (n + 1)

theorem P5902371013324500065.correct : P5902371013324500065.Spec := by
  intro n
  simp only [A024203, Nat.add_sub_cancel]

end A024203

/-!
# A024204: [ (3rd elementary symmetric function of S(n))/(2nd elementary symmetric function of S(n)) ], where S(n) = {first n+2 odd positive integers}.

The programs for A024204, the canonical program `A024204.P8673248577777599144` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024204 has offset 1).

The definition of A024204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024204.P8673248577777599144

`floor(((n+1)^3+2*(n+1)²)/(3*(n+1)+2))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024204

/-- `floor(((n+1)^3+2*(n+1)²)/(3*(n+1)+2))` -/
def P8673248577777599144.Spec : Prop :=
  ∀ n, P8673248577777599144.a n = A024204 (n + 1)

theorem P8673248577777599144.correct : P8673248577777599144.Spec := by
  intro n
  simp only [A024204, Nat.add_sub_cancel]

end A024204

/-! ## A024204.P727343603689339413

`A004526(A024388(n+1)-(n+2))`
-/

namespace A024204.P727343603689339413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A024388 (n + 1) - (n + 2 : ℤ)).toNat

end

end A024204.P727343603689339413

namespace A024204

/-- `A004526(A024388(n+1)-(n+2))` -/
def P727343603689339413.Spec : Prop :=
  ∀ n, P727343603689339413.a n = A024204 (n + 1)

end A024204

/-! ## A024204.P13898047808115392231

`A123108(A024388(n+1)-(n+2))`
-/

namespace A024204.P13898047808115392231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A024388 (n + 1) - (n + 2 : ℤ)).toNat

end

end A024204.P13898047808115392231

namespace A024204

/-- `A123108(A024388(n+1)-(n+2))` -/
def P13898047808115392231.Spec : Prop :=
  ∀ n, P13898047808115392231.a n = A024204 (n + 1)

end A024204

/-! ## A024204.P17404970681753651332

`A110654(A024388(n+1)-(n+3))`
-/

namespace A024204.P17404970681753651332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A024388 (n + 1) - (n + 3 : ℤ)).toNat

end

end A024204.P17404970681753651332

namespace A024204

/-- `A110654(A024388(n+1)-(n+3))` -/
def P17404970681753651332.Spec : Prop :=
  ∀ n, P17404970681753651332.a n = A024204 (n + 1)

end A024204

/-! ## A024204.P13254572186805902104

`A002264(A164004(n)+A002264(n+4))`
-/

namespace A024204.P13254572186805902104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A164004 n + A002264 (n + 4)).toNat

end

end A024204.P13254572186805902104

namespace A024204

/-- `A002264(A164004(n)+A002264(n+4))` -/
def P13254572186805902104.Spec : Prop :=
  ∀ n, P13254572186805902104.a n = A024204 (n + 1)

end A024204

/-! ## A024204.P18434971011230867405

`A002264(A347535(n+1)+A042965(n+1))`
-/

namespace A024204.P18434971011230867405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A347535 (n + 1) + A042965 (n + 1)).toNat

end

end A024204.P18434971011230867405

namespace A024204

/-- `A002264(A347535(n+1)+A042965(n+1))` -/
def P18434971011230867405.Spec : Prop :=
  ∀ n, P18434971011230867405.a n = A024204 (n + 1)

end A024204

/-! ## A024204.P12588866684899029845

`A002264(A028387(n)+A002264(A348776(n+1)))`
-/

namespace A024204.P12588866684899029845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A028387 n + A002264 (A348776 (n + 1)).toNat).toNat

end

end A024204.P12588866684899029845

namespace A024204

/-- `A002264(A028387(n)+A002264(A348776(n+1)))` -/
def P12588866684899029845.Spec : Prop :=
  ∀ n, P12588866684899029845.a n = A024204 (n + 1)

end A024204

/-!
# A024205: [ (4th elementary symmetric function of S(n))/(2nd elementary symmetric function of S(n)) ], where S(n) = {first n+3 odd positive integers}.

The programs for A024205, the canonical program `A024205.P3824833347384216472` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024205 has offset 1).

The definition of A024205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024205.P3824833347384216472

`floor(A024198(n+1)/A024196(n+3))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024205

/-- `floor(A024198(n+1)/A024196(n+3))` -/
def P3824833347384216472.Spec : Prop :=
  ∀ n, P3824833347384216472.a n = A024205 (n + 1)

theorem P3824833347384216472.correct : P3824833347384216472.Spec := by
  intro n
  simp only [A024205, Nat.add_sub_cancel]

end A024205

/-! ## A024205.P3164352980192501357

`∑[∑[A102705(A314754(n))]]`
-/

namespace A024205.P3164352980192501357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A314754 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024205.P3164352980192501357

namespace A024205

/-- `∑[∑[A102705(A314754(n))]]` -/
def P3164352980192501357.Spec : Prop :=
  ∀ n, P3164352980192501357.a n = A024205 (n + 1)

end A024205

/-!
# A024206: Expansion of x^2*(1+x-x^2)/((1-x^2)*(1-x)^2).

The programs for A024206, the canonical program `A024206.P13826433172157804129` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024206 has offset 1).

The definition of A024206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2-x^3)/(1-2x+2x^3-x^4))` (program `A024206.P13826433172157804129`, by `A024206.P13826433172157804129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024206.P11607082297576477870

`floor(n*(n+4)/4)`
-/

namespace A024206.P11607082297576477870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((n + 4 : ℚ) / 4)⌋

end

end A024206.P11607082297576477870

namespace A024206

/-- `floor(n*(n+4)/4)` -/
def P11607082297576477870.Spec : Prop :=
  ∀ n, P11607082297576477870.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P13826433172157804129

`ogf((x+x^2-x^3)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024206

/-- `ogf((x+x^2-x^3)/(1-2x+2x^3-x^4))` -/
def P13826433172157804129.Spec : Prop :=
  ∀ n, P13826433172157804129.a n = A024206 (n + 1)

theorem P13826433172157804129.correct : P13826433172157804129.Spec := by
  intro n
  simp only [A024206, Nat.add_sub_cancel]

end A024206

/-! ## A024206.P17827600346741932781

`a(n-1)+ceil(sqrt(a(n-1)))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A024206.P17827600346741932781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 1) + ⌈Real.sqrt (a (n - 1) : ℝ)⌉

end

end A024206.P17827600346741932781

namespace A024206

/-- `a(n-1)+ceil(sqrt(a(n-1)))` -/
def P17827600346741932781.Spec : Prop :=
  ∀ n, P17827600346741932781.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P2771944601219018316

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A024206.P2771944601219018316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 5] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A024206.P2771944601219018316

namespace A024206

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P2771944601219018316.Spec : Prop :=
  ∀ n, P2771944601219018316.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P13208049190734351731

`A002620(n)+n`
-/

namespace A024206.P13208049190734351731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (n : ℤ)

end

end A024206.P13208049190734351731

namespace A024206

/-- `A002620(n)+n` -/
def P13208049190734351731.Spec : Prop :=
  ∀ n, P13208049190734351731.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P9438499106325932452

`∑[ceil(sinh(log(n+1)))]`
-/

namespace A024206.P9438499106325932452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (n + 1 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024206.P9438499106325932452

namespace A024206

/-- `∑[ceil(sinh(log(n+1)))]` -/
def P9438499106325932452.Spec : Prop :=
  ∀ n, P9438499106325932452.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P3213198253461017150

`∑[ceil(∑[n]*acot(n))]`
-/

namespace A024206.P3213198253461017150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ) * SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024206.P3213198253461017150

namespace A024206

/-- `∑[ceil(∑[n]*acot(n))]` -/
def P3213198253461017150.Spec : Prop :=
  ∀ n, P3213198253461017150.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P4135079293888189505

`∑[∑[log2(gcd(2, n))]]-1`
-/

namespace A024206.P4135079293888189505
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A024206.P4135079293888189505

namespace A024206

/-- `∑[∑[log2(gcd(2, n))]]-1` -/
def P4135079293888189505.Spec : Prop :=
  ∀ n, P4135079293888189505.a n = (A024206 (n + 1) : ℝ)

end A024206

/-! ## A024206.P16870819929718776888

`∑[ceil(cot(2/(n+1)))]`
-/

namespace A024206.P16870819929718776888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 / (n + 1 : ℚ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024206.P16870819929718776888

namespace A024206

/-- `∑[ceil(cot(2/(n+1)))]` -/
def P16870819929718776888.Spec : Prop :=
  ∀ n, P16870819929718776888.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P10307695258765146341

`∑[∑[char[lcm(2, n)]]]-1`
-/

namespace A024206.P10307695258765146341
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A024206.P10307695258765146341

namespace A024206

/-- `∑[∑[char[lcm(2, n)]]]-1` -/
def P10307695258765146341.Spec : Prop :=
  ∀ n, P10307695258765146341.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P14388658747710233303

`record[floor((n/2)²-n)]`
-/

namespace A024206.P14388658747710233303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2 - (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024206.P14388658747710233303

namespace A024206

/-- `record[floor((n/2)²-n)]` -/
def P14388658747710233303.Spec : Prop :=
  ∀ n, P14388658747710233303.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P11089944893994843738

`round(record[(n/2)²-n])`
-/

namespace A024206.P11089944893994843738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ 2 - (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A024206.P11089944893994843738

namespace A024206

/-- `round(record[(n/2)²-n])` -/
def P11089944893994843738.Spec : Prop :=
  ∀ n, P11089944893994843738.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P6333534131268333496

`∑[round((atan(n)+n)/2)]`
-/

namespace A024206.P6333534131268333496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.arctan (n : ℝ) + (n : ℝ)) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024206.P6333534131268333496

namespace A024206

/-- `∑[round((atan(n)+n)/2)]` -/
def P6333534131268333496.Spec : Prop :=
  ∀ n, P6333534131268333496.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P9836229824616868643

`∑[ceil(n/(2-acot(n)))]`
-/

namespace A024206.P9836229824616868643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / (2 - SequenceMachineLib.acot (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024206.P9836229824616868643

namespace A024206

/-- `∑[ceil(n/(2-acot(n)))]` -/
def P9836229824616868643.Spec : Prop :=
  ∀ n, P9836229824616868643.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P4017124246565062573

`round(∑[∑[cos(n)²]])-1`
-/

namespace A024206.P4017124246565062573
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A024206.P4017124246565062573

namespace A024206

/-- `round(∑[∑[cos(n)²]])-1` -/
def P4017124246565062573.Spec : Prop :=
  ∀ n, P4017124246565062573.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P3992090246469605186

`∑[∑[(n+1)%2]]-1`
-/

namespace A024206.P3992090246469605186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A024206.P3992090246469605186

namespace A024206

/-- `∑[∑[(n+1)%2]]-1` -/
def P3992090246469605186.Spec : Prop :=
  ∀ n, P3992090246469605186.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P16157351415731767232

`∑[∑[1-n%2]]-1`
-/

namespace A024206.P16157351415731767232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A024206.P16157351415731767232

namespace A024206

/-- `∑[∑[1-n%2]]-1` -/
def P16157351415731767232.Spec : Prop :=
  ∀ n, P16157351415731767232.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P2400807111194538335

`∑[ceil(or(1, n)/2)]-1`
-/

namespace A024206.P2400807111194538335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A024206.P2400807111194538335

namespace A024206

/-- `∑[ceil(or(1, n)/2)]-1` -/
def P2400807111194538335.Spec : Prop :=
  ∀ n, P2400807111194538335.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P12009781500947737768

`∑[∑[and(1, n+1)]]-1`
-/

namespace A024206.P12009781500947737768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A024206.P12009781500947737768

namespace A024206

/-- `∑[∑[and(1, n+1)]]-1` -/
def P12009781500947737768.Spec : Prop :=
  ∀ n, P12009781500947737768.a n = A024206 (n + 1)

end A024206

/-! ## A024206.P4767552763683534821

`∑[∑[1-and(1, n)]]-1`
-/

namespace A024206.P4767552763683534821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A024206.P4767552763683534821

namespace A024206

/-- `∑[∑[1-and(1, n)]]-1` -/
def P4767552763683534821.Spec : Prop :=
  ∀ n, P4767552763683534821.a n = A024206 (n + 1)

end A024206

/-!
# A024207: Number of terms in n-th derivative of a function composed with itself 7 times.

The programs for A024207, there is no canonical definition to state claims against.
-/

/-! ## A024207.P304025999208360494

`A050301(∑[abs(1-n)])`
-/

namespace A024207.P304025999208360494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050301 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024207.P304025999208360494

/-! ## A024207.P5290039437458614650

`A022818(A055999(n+3))`
-/

namespace A024207.P5290039437458614650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A055999 (n + 3)).toNat

end

end A024207.P5290039437458614650

/-! ## A024207.P15521404868837113400

`A022818(Δ[A023551(n+1)])`
-/

namespace A024207.P15521404868837113400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (f1 (n + 1) - f1 n).toNat

end

end A024207.P15521404868837113400

/-! ## A024207.P4376476858655098650

`A022818(A155212(n+2)+2)`
-/

namespace A024207.P4376476858655098650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A155212 (n + 2) + 2).toNat

end

end A024207.P4376476858655098650

/-! ## A024207.P4111264783831204694

`A022818(A000217(n+6)-6)`
-/

namespace A024207.P4111264783831204694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A000217 (n + 6) - 6).toNat

end

end A024207.P4111264783831204694

/-! ## A024207.P15544570237352878090

`A022818(Δ[A023545(n+2)]-2)`
-/

namespace A024207.P15544570237352878090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (f1 (n + 1) - f1 n - 2).toNat

end

end A024207.P15544570237352878090

/-! ## A024207.P7412973982625187484

`A022818(Δ[Δ[A022815(n+2)-n²]]+1)`
-/

namespace A024207.P7412973982625187484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 2) - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (f1 (n + 1) - f1 n + 1).toNat

end

end A024207.P7412973982625187484

/-! ## A024207.P1352576164494155848

`A022818(A007401(Δ[A023545(n+1)]))`
-/

namespace A024207.P1352576164494155848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A007401 (f1 (n + 1) - f1 n).toNat).toNat

end

end A024207.P1352576164494155848

/-! ## A024207.P12452575288225539876

`A022818(A167499(n+1)+A004767(n+1))`
-/

namespace A024207.P12452575288225539876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A167499 (n + 1) + A004767 (n + 1)).toNat

end

end A024207.P12452575288225539876

/-!
# A024208: Number of terms in n-th derivative of a function composed with itself 8 times.

The programs for A024208, there is no canonical definition to state claims against.
-/

/-! ## A024208.P14120240804337894089

`A050302(∑[abs(1-n)])`
-/

namespace A024208.P14120240804337894089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050302 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024208.P14120240804337894089

/-! ## A024208.P16811161550563074256

`A022818(A052905(n+4)-2)`
-/

namespace A024208.P16811161550563074256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A052905 (n + 4) - 2).toNat

end

end A024208.P16811161550563074256

/-! ## A024208.P1542976745826798166

`A022818(A034856(n+6)-5)`
-/

namespace A024208.P1542976745826798166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A034856 (n + 6) - 5).toNat

end

end A024208.P1542976745826798166

/-! ## A024208.P13361906714267742606

`A022818(A000217(n+7)-7)`
-/

namespace A024208.P13361906714267742606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A000217 (n + 7) - 7).toNat

end

end A024208.P13361906714267742606

/-! ## A024208.P10522288493666531656

`A022818(Δ[A023551(n+2)]-1)`
-/

namespace A024208.P10522288493666531656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (f1 (n + 1) - f1 n - 1).toNat

end

end A024208.P10522288493666531656

/-! ## A024208.P13227488058102434359

`A022818(A005408(n+2)+A000124(n+5))`
-/

namespace A024208.P13227488058102434359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A005408 (n + 2) + A000124 (n + 5)).toNat

end

end A024208.P13227488058102434359

/-!
# A024209: Number of terms in n-th derivative of a function composed with itself 9 times.

The programs for A024209, there is no canonical definition to state claims against.
-/

/-! ## A024209.P5976835650873445191

`A050303(∑[abs(1-n)])`
-/

namespace A024209.P5976835650873445191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050303 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024209.P5976835650873445191

/-! ## A024209.P9989063064886916443

`A022818(A155212(n+4))`
-/

namespace A024209.P9989063064886916443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A155212 (n + 4)).toNat

end

end A024209.P9989063064886916443

/-! ## A024209.P15012296604996308040

`A022818(A034856(n+7)-6)`
-/

namespace A024209.P15012296604996308040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A034856 (n + 7) - 6).toNat

end

end A024209.P15012296604996308040

/-! ## A024209.P9996274249868942732

`A022818(A000217(n+8)-8)`
-/

namespace A024209.P9996274249868942732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A000217 (n + 8) - 8).toNat

end

end A024209.P9996274249868942732

/-! ## A024209.P7629000935681742120

`A022818(A161680(n+9)-8)`
-/

namespace A024209.P7629000935681742120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A161680 (n + 9) - 8).toNat

end

end A024209.P7629000935681742120

/-!
# A024210: Number of terms in n-th derivative of a function composed with itself 10 times.

The programs for A024210, there is no canonical definition to state claims against.
-/

/-! ## A024210.P14512186409840912741

`A050304(∑[abs(1-n)])`
-/

namespace A024210.P14512186409840912741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050304 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024210.P14512186409840912741

/-! ## A024210.P17558596820439969240

`A022818(A055999(n+6)-3)`
-/

namespace A024210.P17558596820439969240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A055999 (n + 6) - 3).toNat

end

end A024210.P17558596820439969240

/-! ## A024210.P695652384649190874

`A022818(A055998(n+7)-6)`
-/

namespace A024210.P695652384649190874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A055998 (n + 7) - 6).toNat

end

end A024210.P695652384649190874

/-! ## A024210.P17267865179169893167

`A022818(A000217(n+9)-9)`
-/

namespace A024210.P17267865179169893167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A000217 (n + 9) - 9).toNat

end

end A024210.P17267865179169893167

/-! ## A024210.P9938642569166037893

`A022818(A005408(n+3)+A000124(n+7))`
-/

namespace A024210.P9938642569166037893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A005408 (n + 3) + A000124 (n + 7)).toNat

end

end A024210.P9938642569166037893

/-!
# A024211: Theta series of laminated lattice LAMBDA_25 with minimal norm 4.

The programs for A024211, there is no canonical definition to state claims against.
-/

/-! ## A024211.P121452556151829584

`and(A345657(n), A345675(A167499(n)))`
-/

namespace A024211.P121452556151829584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A345657 n) (A345675 (A167499 n).toNat)

end

end A024211.P121452556151829584

/-!
# A024212: 2nd elementary symmetric function of first n+1 positive integers congruent to 1 mod 3.

The programs for A024212, the canonical program `A024212.P3998511955025409494` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024212 has offset 1).

The definition of A024212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024212.P3998511955025409494

`(n+1)*(n+2)*(9*(n+1)²+9*(n+1)-2)/8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024212

/-- `(n+1)*(n+2)*(9*(n+1)²+9*(n+1)-2)/8` -/
def P3998511955025409494.Spec : Prop :=
  ∀ n, P3998511955025409494.a n = (A024212 (n + 1) : ℚ)

end A024212

/-! ## A024212.P12022298562075579013

`∑[C(3*n+4, 3)]`
-/

namespace A024212.P12022298562075579013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 4) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024212.P12022298562075579013

namespace A024212

/-- `∑[C(3*n+4, 3)]` -/
def P12022298562075579013.Spec : Prop :=
  ∀ n, (P12022298562075579013.a n : ℤ) = A024212 (n + 1)

end A024212

/-! ## A024212.P4823693786940561719

`C(∑[n+1], 2)+lcm(n+1, n+2)²`
-/

namespace A024212.P4823693786940561719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + Nat.lcm (n + 1) (n + 2) ^ 2

end

end A024212.P4823693786940561719

namespace A024212

/-- `C(∑[n+1], 2)+lcm(n+1, n+2)²` -/
def P4823693786940561719.Spec : Prop :=
  ∀ n, (P4823693786940561719.a n : ℤ) = A024212 (n + 1)

end A024212

/-! ## A024212.P3128119700137763684

`A024391(n+1)-A085788(n+1)`
-/

namespace A024212.P3128119700137763684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024391 (n + 1) - A085788 (n + 1)

end

end A024212.P3128119700137763684

namespace A024212

/-- `A024391(n+1)-A085788(n+1)` -/
def P3128119700137763684.Spec : Prop :=
  ∀ n, P3128119700137763684.a n = A024212 (n + 1)

end A024212

/-! ## A024212.P6073104029233108652

`A004188(n+1)+A116689(n+1)+A005449(n+1)`
-/

namespace A024212.P6073104029233108652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 (n + 1) + (A116689 (n + 1) + A005449 (n + 1))

end

end A024212.P6073104029233108652

namespace A024212

/-- `A004188(n+1)+A116689(n+1)+A005449(n+1)` -/
def P6073104029233108652.Spec : Prop :=
  ∀ n, P6073104029233108652.a n = A024212 (n + 1)

end A024212

/-! ## A024212.P4349316100288837424

`A064038(n+2)*A177049(n+1)-A000217(n+1)`
-/

namespace A024212.P4349316100288837424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (n + 2) * A177049 (n + 1) - A000217 (n + 1)

end

end A024212.P4349316100288837424

namespace A024212

/-- `A064038(n+2)*A177049(n+1)-A000217(n+1)` -/
def P4349316100288837424.Spec : Prop :=
  ∀ n, P4349316100288837424.a n = A024212 (n + 1)

end A024212

/-! ## A024212.P8323209382344133973

`A216172(3*n+4)`
-/

namespace A024212.P8323209382344133973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216172 (3 * n + 4)

end

end A024212.P8323209382344133973

namespace A024212

/-- `A216172(3*n+4)` -/
def P8323209382344133973.Spec : Prop :=
  ∀ n, P8323209382344133973.a n = A024212 (n + 1)

end A024212

/-! ## A024212.P17391144301710776646

`A115264(6*n+3)`
-/

namespace A024212.P17391144301710776646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115264 (6 * n + 3)

end

end A024212.P17391144301710776646

namespace A024212

/-- `A115264(6*n+3)` -/
def P17391144301710776646.Spec : Prop :=
  ∀ n, P17391144301710776646.a n = A024212 (n + 1)

end A024212

/-! ## A024212.P6575991113723404946

`A210631(Δ[3*(n+2)²])`
-/

namespace A024212.P6575991113723404946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210631 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A024212.P6575991113723404946

namespace A024212

/-- `A210631(Δ[3*(n+2)²])` -/
def P6575991113723404946.Spec : Prop :=
  ∀ n, P6575991113723404946.a n = A024212 (n + 1)

end A024212

/-! ## A024212.P8764420353305936614

`A067589(n+2)*A154293(n+2)-A000217(n+1)`
-/

namespace A024212.P8764420353305936614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067589 (n + 2) * A154293 (n + 2) - A000217 (n + 1)

end

end A024212.P8764420353305936614

namespace A024212

/-- `A067589(n+2)*A154293(n+2)-A000217(n+1)` -/
def P8764420353305936614.Spec : Prop :=
  ∀ n, P8764420353305936614.a n = A024212 (n + 1)

end A024212

/-! ## A024212.P5278104662017979720

`A004188(n+1)+A000217(A005449(n+1))`
-/

namespace A024212.P5278104662017979720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 (n + 1) + A000217 (A005449 (n + 1)).toNat

end

end A024212.P5278104662017979720

namespace A024212

/-- `A004188(n+1)+A000217(A005449(n+1))` -/
def P5278104662017979720.Spec : Prop :=
  ∀ n, P5278104662017979720.a n = A024212 (n + 1)

end A024212

/-! ## A024212.P2773028628576198179

`A022266(∑[n+1])`
-/

namespace A024212.P2773028628576198179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024212.P2773028628576198179

namespace A024212

/-- `A022266(∑[n+1])` -/
def P2773028628576198179.Spec : Prop :=
  ∀ n, P2773028628576198179.a n = A024212 (n + 1)

end A024212

/-! ## A024212.P18093235403322679300

`A276819(∑[n+1])-1`
-/

namespace A024212.P18093235403322679300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276819 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A024212.P18093235403322679300

namespace A024212

/-- `A276819(∑[n+1])-1` -/
def P18093235403322679300.Spec : Prop :=
  ∀ n, P18093235403322679300.a n = A024212 (n + 1)

end A024212

/-! ## A024212.P6113235674632956335

`A154516(∑[n+1])/2`
-/

namespace A024212.P6113235674632956335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154516 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A024212.P6113235674632956335

namespace A024212

/-- `A154516(∑[n+1])/2` -/
def P6113235674632956335.Spec : Prop :=
  ∀ n, P6113235674632956335.a n = (A024212 (n + 1) : ℚ)

end A024212

/-! ## A024212.P18145248817373729691

`A268351(∑[n+1])/3`
-/

namespace A024212.P18145248817373729691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268351 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A024212.P18145248817373729691

namespace A024212

/-- `A268351(∑[n+1])/3` -/
def P18145248817373729691.Spec : Prop :=
  ∀ n, P18145248817373729691.a n = (A024212 (n + 1) : ℚ)

end A024212

/-! ## A024212.P9570906677437592627

`A178574(∑[n+1])/4`
-/

namespace A024212.P9570906677437592627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178574 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A024212.P9570906677437592627

namespace A024212

/-- `A178574(∑[n+1])/4` -/
def P9570906677437592627.Spec : Prop :=
  ∀ n, P9570906677437592627.a n = (A024212 (n + 1) : ℚ)

end A024212

/-! ## A024212.P9902247552763553581

`A006137(A000217(n+1))-A000124(n+1)`
-/

namespace A024212.P9902247552763553581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006137 (A000217 (n + 1)).toNat - A000124 (n + 1)

end

end A024212.P9902247552763553581

namespace A024212

/-- `A006137(A000217(n+1))-A000124(n+1)` -/
def P9902247552763553581.Spec : Prop :=
  ∀ n, P9902247552763553581.a n = A024212 (n + 1)

end A024212

/-! ## A024212.P3586720405021361973

`A000217(A045943(n+1))-A002378(n+1)`
-/

namespace A024212.P3586720405021361973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A045943 (n + 1)).toNat - A002378 (n + 1)

end

end A024212.P3586720405021361973

namespace A024212

/-- `A000217(A045943(n+1))-A002378(n+1)` -/
def P3586720405021361973.Spec : Prop :=
  ∀ n, P3586720405021361973.a n = A024212 (n + 1)

end A024212

/-! ## A024212.P16467780550235770635

`A027468(A000217(n+1))-A028895(n+1)`
-/

namespace A024212.P16467780550235770635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 (A000217 (n + 1)).toNat - A028895 (n + 1)

end

end A024212.P16467780550235770635

namespace A024212

/-- `A027468(A000217(n+1))-A028895(n+1)` -/
def P16467780550235770635.Spec : Prop :=
  ∀ n, P16467780550235770635.a n = A024212 (n + 1)

end A024212

/-! ## A024212.P14136872011737892736

`A000217(A143208(n+3))+A000217(n+1)`
-/

namespace A024212.P14136872011737892736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A143208 (n + 3)).toNat + A000217 (n + 1)

end

end A024212.P14136872011737892736

namespace A024212

/-- `A000217(A143208(n+3))+A000217(n+1)` -/
def P14136872011737892736.Spec : Prop :=
  ∀ n, P14136872011737892736.a n = A024212 (n + 1)

end A024212

/-!
# A024213: a(n) = 3rd elementary symmetric function of first n+2 positive integers congruent to 1 mod 3.

The programs for A024213, the canonical program `A024213.P18353043983050152673` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024213 has offset 1).

The definition of A024213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024213.P18353043983050152673

`(n+1)*(n+2)*(n+3)*(3*(n+1)+5)*(9*(n+1)²+21*(n+1)-2)/48`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024213

/-- `(n+1)*(n+2)*(n+3)*(3*(n+1)+5)*(9*(n+1)²+21*(n+1)-2)/48` -/
def P18353043983050152673.Spec : Prop :=
  ∀ n, P18353043983050152673.a n = (A024213 (n + 1) : ℚ)

end A024213

/-! ## A024213.P17331240726895281623

`∑[(3*n+7)*∑[C(3*n+4, 3)]]`
-/

namespace A024213.P17331240726895281623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 4) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 7) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024213.P17331240726895281623

namespace A024213

/-- `∑[(3*n+7)*∑[C(3*n+4, 3)]]` -/
def P17331240726895281623.Spec : Prop :=
  ∀ n, (P17331240726895281623.a n : ℤ) = A024213 (n + 1)

end A024213

/-! ## A024213.P15758888096914703150

`∑[A024212(n+1)*A112414(n)]`
-/

namespace A024213.P15758888096914703150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024212 (n + 1) * A112414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024213.P15758888096914703150

namespace A024213

/-- `∑[A024212(n+1)*A112414(n)]` -/
def P15758888096914703150.Spec : Prop :=
  ∀ n, P15758888096914703150.a n = A024213 (n + 1)

end A024213

/-! ## A024213.P9044958953960533428

`∑[∑[A228887(n+1)]*A112414(n)]`
-/

namespace A024213.P9044958953960533428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228887 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A112414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024213.P9044958953960533428

namespace A024213

/-- `∑[∑[A228887(n+1)]*A112414(n)]` -/
def P9044958953960533428.Spec : Prop :=
  ∀ n, P9044958953960533428.a n = A024213 (n + 1)

end A024213

/-! ## A024213.P6829467967448365547

`∑[(A016789(n)+5)*A024212(n+1)]`
-/

namespace A024213.P6829467967448365547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016789 n + 5) * A024212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024213.P6829467967448365547

namespace A024213

/-- `∑[(A016789(n)+5)*A024212(n+1)]` -/
def P6829467967448365547.Spec : Prop :=
  ∀ n, P6829467967448365547.a n = A024213 (n + 1)

end A024213

/-! ## A024213.P11596567195662796048

`∑[A016777(n+2)*A024212(n+1)]`
-/

namespace A024213.P11596567195662796048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 2) * A024212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024213.P11596567195662796048

namespace A024213

/-- `∑[A016777(n+2)*A024212(n+1)]` -/
def P11596567195662796048.Spec : Prop :=
  ∀ n, P11596567195662796048.a n = A024213 (n + 1)

end A024213

/-! ## A024213.P13801614655843154061

`A286718(∑[n+3]+n+3)`
-/

namespace A024213.P13801614655843154061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286718 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A024213.P13801614655843154061

namespace A024213

/-- `A286718(∑[n+3]+n+3)` -/
def P13801614655843154061.Spec : Prop :=
  ∀ n, P13801614655843154061.a n = A024213 (n + 1)

end A024213

/-!
# A024214: a(n) = 4th elementary symmetric function of first n+3 positive integers congruent to 1 mod 3.

The programs for A024214, the canonical program `A024214.P16151933790795133523` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024214 has offset 1).

The definition of A024214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024214.P16151933790795133523

`∑[A024213(n+1)*A112414(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024214

/-- `∑[A024213(n+1)*A112414(n+1)]` -/
def P16151933790795133523.Spec : Prop :=
  ∀ n, P16151933790795133523.a n = A024214 (n + 1)

theorem P16151933790795133523.correct : P16151933790795133523.Spec := by
  intro n
  simp only [A024214, Nat.add_sub_cancel]

end A024214

/-! ## A024214.P15919361794357735915

`∑[A016777(n+3)*A024213(n+1)]`
-/

namespace A024214.P15919361794357735915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 3) * A024213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024214.P15919361794357735915

namespace A024214

/-- `∑[A016777(n+3)*A024213(n+1)]` -/
def P15919361794357735915.Spec : Prop :=
  ∀ n, P15919361794357735915.a n = A024214 (n + 1)

end A024214

/-! ## A024214.P13840736097806375130

`A286718(A052905(n+2))`
-/

namespace A024214.P13840736097806375130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286718 (A052905 (n + 2)).toNat

end

end A024214.P13840736097806375130

namespace A024214

/-- `A286718(A052905(n+2))` -/
def P13840736097806375130.Spec : Prop :=
  ∀ n, P13840736097806375130.a n = A024214 (n + 1)

end A024214

/-! ## A024214.P14074345562647730321

`A286718(eq[4, A025581(n)])`
-/

namespace A024214.P14074345562647730321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024214.P14074345562647730321

namespace A024214

/-- `A286718(eq[4, A025581(n)])` -/
def P14074345562647730321.Spec : Prop :=
  ∀ n, P14074345562647730321.a n = A024214 (n + 1)

end A024214

/-! ## A024214.P4491494537860784936

`A286718(eq[9, A099375(n)])`
-/

namespace A024214.P4491494537860784936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024214.P4491494537860784936

namespace A024214

/-- `A286718(eq[9, A099375(n)])` -/
def P4491494537860784936.Spec : Prop :=
  ∀ n, P4491494537860784936.a n = A024214 (n + 1)

end A024214

/-! ## A024214.P102009682007238811

`A286718(eq[16, A130321(n)])`
-/

namespace A024214.P102009682007238811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024214.P102009682007238811

namespace A024214

/-- `A286718(eq[16, A130321(n)])` -/
def P102009682007238811.Spec : Prop :=
  ∀ n, P102009682007238811.a n = A024214 (n + 1)

end A024214

/-! ## A024214.P18034967357412723320

`A286718(eq[5, A004736(n+1)])`
-/

namespace A024214.P18034967357412723320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024214.P18034967357412723320

namespace A024214

/-- `A286718(eq[5, A004736(n+1)])` -/
def P18034967357412723320.Spec : Prop :=
  ∀ n, P18034967357412723320.a n = A024214 (n + 1)

end A024214

/-!
# A024215: Sum of squares of first n positive integers congruent to 1 mod 3.

The programs for A024215, the canonical program `A024215.P12875170046904144403` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024215 has offset 1).

The definition of A024215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024215.P12875170046904144403

`(n+1)*(6*(n+1)²-3*(n+1)-1)/2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024215

/-- `(n+1)*(6*(n+1)²-3*(n+1)-1)/2` -/
def P12875170046904144403.Spec : Prop :=
  ∀ n, P12875170046904144403.a n = (A024215 (n + 1) : ℚ)

end A024215

/-! ## A024215.P16320312643189511683

`(3*n+1)²+a(n-1)` with `a(0)=1`
-/

namespace A024215.P16320312643189511683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n + 1) ^ 2 + a (n - 1)

end

end A024215.P16320312643189511683

namespace A024215

/-- `(3*n+1)²+a(n-1)` -/
def P16320312643189511683.Spec : Prop :=
  ∀ n, (P16320312643189511683.a n : ℤ) = A024215 (n + 1)

end A024215

/-! ## A024215.P15738373195099923047

`a(n-1)+(Δ[n²]+n)²` with `a(0)=1`
-/

namespace A024215.P15738373195099923047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)) ^ 2

end

end A024215.P15738373195099923047

namespace A024215

/-- `a(n-1)+(Δ[n²]+n)²` -/
def P15738373195099923047.Spec : Prop :=
  ∀ n, P15738373195099923047.a n = A024215 (n + 1)

end A024215

/-! ## A024215.P1843027230023473574

`floor(a(n-1)+(n+1+n+n)²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A024215.P1843027230023473574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 + n + n) ^ 2

end

end A024215.P1843027230023473574

namespace A024215

/-- `floor(a(n-1)+(n+1+n+n)²)` -/
def P1843027230023473574.Spec : Prop :=
  ∀ n, (P1843027230023473574.a n : ℤ) = A024215 (n + 1)

end A024215

/-! ## A024215.P12487482986136060446

`∑[2*n]+lcm(2*n+1, ∑[3*n+1])`
-/

namespace A024215.P12487482986136060446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A024215.P12487482986136060446

namespace A024215

/-- `∑[2*n]+lcm(2*n+1, ∑[3*n+1])` -/
def P12487482986136060446.Spec : Prop :=
  ∀ n, (P12487482986136060446.a n : ℤ) = A024215 (n + 1)

end A024215

/-! ## A024215.P15718955808396133448

`floor(∑[sqrt(A016780(n))])`
-/

namespace A024215.P15718955808396133448
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016780 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A024215.P15718955808396133448

namespace A024215

/-- `floor(∑[sqrt(A016780(n))])` -/
def P15718955808396133448.Spec : Prop :=
  ∀ n, P15718955808396133448.a n = A024215 (n + 1)

end A024215

/-! ## A024215.P11585501860495438344

`A213826(n+1)/2`
-/

namespace A024215.P11585501860495438344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213826 (n + 1) : ℚ) / 2

end

end A024215.P11585501860495438344

namespace A024215

/-- `A213826(n+1)/2` -/
def P11585501860495438344.Spec : Prop :=
  ∀ n, P11585501860495438344.a n = (A024215 (n + 1) : ℚ)

end A024215

/-! ## A024215.P1334667480610223977

`A100176(n+1)+∑[n]`
-/

namespace A024215.P1334667480610223977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100176 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A024215.P1334667480610223977

namespace A024215

/-- `A100176(n+1)+∑[n]` -/
def P1334667480610223977.Spec : Prop :=
  ∀ n, P1334667480610223977.a n = A024215 (n + 1)

end A024215

/-! ## A024215.P8240144138661097461

`A045943(n)+A005915(n)`
-/

namespace A024215.P8240144138661097461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n + A005915 n

end

end A024215.P8240144138661097461

namespace A024215

/-- `A045943(n)+A005915(n)` -/
def P8240144138661097461.Spec : Prop :=
  ∀ n, P8240144138661097461.a n = A024215 (n + 1)

end A024215

/-! ## A024215.P12324392224376254068

`A080860(n)+A005945(n)`
-/

namespace A024215.P12324392224376254068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080860 n + A005945 n

end

end A024215.P12324392224376254068

namespace A024215

/-- `A080860(n)+A005945(n)` -/
def P12324392224376254068.Spec : Prop :=
  ∀ n, P12324392224376254068.a n = A024215 (n + 1)

end A024215

/-! ## A024215.P13857635369104922086

`A081437(n)+A051895(n)`
-/

namespace A024215.P13857635369104922086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081437 n + A051895 n

end

end A024215.P13857635369104922086

namespace A024215

/-- `A081437(n)+A051895(n)` -/
def P13857635369104922086.Spec : Prop :=
  ∀ n, P13857635369104922086.a n = A024215 (n + 1)

end A024215

/-! ## A024215.P16341948886384822842

`A081438(n)+A055112(n)`
-/

namespace A024215.P16341948886384822842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081438 n + A055112 n

end

end A024215.P16341948886384822842

namespace A024215

/-- `A081438(n)+A055112(n)` -/
def P16341948886384822842.Spec : Prop :=
  ∀ n, P16341948886384822842.a n = A024215 (n + 1)

end A024215

/-! ## A024215.P3789169446349830883

`A115519(n)+A033570(n)`
-/

namespace A024215.P3789169446349830883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115519 n + A033570 n

end

end A024215.P3789169446349830883

namespace A024215

/-- `A115519(n)+A033570(n)` -/
def P3789169446349830883.Spec : Prop :=
  ∀ n, P3789169446349830883.a n = A024215 (n + 1)

end A024215

/-! ## A024215.P12339721530387942014

`A163833(n)+A016777(n)`
-/

namespace A024215.P12339721530387942014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163833 n + A016777 n

end

end A024215.P12339721530387942014

namespace A024215

/-- `A163833(n)+A016777(n)` -/
def P12339721530387942014.Spec : Prop :=
  ∀ n, P12339721530387942014.a n = A024215 (n + 1)

end A024215

/-! ## A024215.P11646444019779148585

`A163815(n)+A081436(n)`
-/

namespace A024215.P11646444019779148585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163815 n + A081436 n

end

end A024215.P11646444019779148585

namespace A024215

/-- `A163815(n)+A081436(n)` -/
def P11646444019779148585.Spec : Prop :=
  ∀ n, P11646444019779148585.a n = A024215 (n + 1)

end A024215

/-! ## A024215.P15770439909824477929

`A211013(n)+A130884(n)`
-/

namespace A024215.P15770439909824477929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211013 n + A130884 n

end

end A024215.P15770439909824477929

namespace A024215

/-- `A211013(n)+A130884(n)` -/
def P15770439909824477929.Spec : Prop :=
  ∀ n, P15770439909824477929.a n = A024215 (n + 1)

end A024215

/-! ## A024215.P13902925330152129674

`A016755(n)-A045950(n)`
-/

namespace A024215.P13902925330152129674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n - A045950 n

end

end A024215.P13902925330152129674

namespace A024215

/-- `A016755(n)-A045950(n)` -/
def P13902925330152129674.Spec : Prop :=
  ∀ n, P13902925330152129674.a n = A024215 (n + 1)

end A024215

/-! ## A024215.P698811308977225072

`A103532(n)-A059270(n)`
-/

namespace A024215.P698811308977225072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103532 n - A059270 n

end

end A024215.P698811308977225072

namespace A024215

/-- `A103532(n)-A059270(n)` -/
def P698811308977225072.Spec : Prop :=
  ∀ n, P698811308977225072.a n = A024215 (n + 1)

end A024215

/-! ## A024215.P3427248486874681207

`A063491(n+1)+A045944(n)`
-/

namespace A024215.P3427248486874681207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063491 (n + 1) + A045944 n

end

end A024215.P3427248486874681207

namespace A024215

/-- `A063491(n+1)+A045944(n)` -/
def P3427248486874681207.Spec : Prop :=
  ∀ n, P3427248486874681207.a n = A024215 (n + 1)

end A024215

/-! ## A024215.P8967855212091146539

`A134481(n)+A100183(n+1)`
-/

namespace A024215.P8967855212091146539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n + A100183 (n + 1)

end

end A024215.P8967855212091146539

namespace A024215

/-- `A134481(n)+A100183(n+1)` -/
def P8967855212091146539.Spec : Prop :=
  ∀ n, P8967855212091146539.a n = A024215 (n + 1)

end A024215

/-!
# A024216: a(n) = n-th elementary symmetric function of the first n+1 positive integers congruent to 1 mod 3.

The programs for A024216, there is no canonical definition to state claims against.
-/

/-! ## A024216.P16581544164251557942

`A286718(∑[n+1]+1)`
-/

namespace A024216.P16581544164251557942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286718 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A024216.P16581544164251557942

/-! ## A024216.P7046150774680508677

`record[A286718(eq[1, A048993(n)])]`
-/

namespace A024216.P7046150774680508677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286718 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024216.P7046150774680508677

/-! ## A024216.P14555245482463065721

`record[A286718(n%A154537(n))]`
-/

namespace A024216.P14555245482463065721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286718 (Int.tmod (n : ℤ) (A154537 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024216.P14555245482463065721

/-! ## A024216.P6309987970645893755

`record[A286718(and(n, A282629(n)))]`
-/

namespace A024216.P6309987970645893755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286718 (Int.land (n : ℤ) (A282629 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024216.P6309987970645893755

/-! ## A024216.P9244185104196513372

`record[and(-A048993(n), A286718(n))]`
-/

namespace A024216.P9244185104196513372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A048993 n) (A286718 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024216.P9244185104196513372

/-! ## A024216.P7307212288633171649

`record[gcd(A127013(n+1), A286718(n))]`
-/

namespace A024216.P7307212288633171649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127013 (n + 1)) (A286718 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024216.P7307212288633171649

/-! ## A024216.P6868311052221002102

`record[gcd(A143395(n), A286718(n+1))]`
-/

namespace A024216.P6868311052221002102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143395 n) (A286718 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024216.P6868311052221002102

/-!
# A024217: a(n) = ( Product {k = 1..n} 3*k - 2 ) * ( Sum {k = 1..n} (-1)^(k+1)/(3*k - 2) ).

The programs for A024217, there is no canonical definition to state claims against.
-/

/-! ## A024217.P7894277017130484219

`A011754(A076729(n))-∏{p}[n+1, C(#%n, #)]`
-/

namespace A024217.P7894277017130484219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011754 (A076729 n).toNat - ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p : ℕ) : ℤ)

end

end A024217.P7894277017130484219

/-!
# A024219: a(n) = floor( (2nd elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ), where S(n) = {first n+1 positive integers congruent to 1 mod 3}.

The programs for A024219, the canonical program `A024219.P15965996705384375026` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024219 has offset 1).

The definition of A024219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024219.P15965996705384375026

`floor((n+1)*(9*(n+1)²+9*(n+1)-2)/(4*(3*(n+1)+2)))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024219

/-- `floor((n+1)*(9*(n+1)²+9*(n+1)-2)/(4*(3*(n+1)+2)))` -/
def P15965996705384375026.Spec : Prop :=
  ∀ n, P15965996705384375026.a n = A024219 (n + 1)

theorem P15965996705384375026.correct : P15965996705384375026.Spec := by
  intro n
  simp only [A024219, Nat.add_sub_cancel]

end A024219

/-! ## A024219.P9615428243948393239

`∑[comp[∑[2*n%3]]]-1`
-/

namespace A024219.P9615428243948393239
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A024219.P9615428243948393239

namespace A024219

/-- `∑[comp[∑[2*n%3]]]-1` -/
def P9615428243948393239.Spec : Prop :=
  ∀ n, P9615428243948393239.a n = A024219 (n + 1)

end A024219

/-! ## A024219.P17699149416473045846

`∑[∪[2*n, 3*n]]+n`
-/

namespace A024219.P17699149416473045846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A024219.P17699149416473045846

namespace A024219

/-- `∑[∪[2*n, 3*n]]+n` -/
def P17699149416473045846.Spec : Prop :=
  ∀ n, (P17699149416473045846.a n : ℤ) = A024219 (n + 1)

end A024219

/-! ## A024219.P12081719646045680816

`∑[a(n-4)+6]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5, a(4)=7`
-/

namespace A024219.P12081719646045680816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 5, 7] fun n f1 =>
  f1 (n - 4) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024219.P12081719646045680816

namespace A024219

/-- `∑[a(n-4)+6]` -/
def P12081719646045680816.Spec : Prop :=
  ∀ n, (P12081719646045680816.a n : ℤ) = A024219 (n + 1)

end A024219

/-! ## A024219.P4446302468589247671

`∑[∑[3-a(n-2)]]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1`
-/

namespace A024219.P4446302468589247671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1, 1] fun n f2 =>
  3 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024219.P4446302468589247671

namespace A024219

/-- `∑[∑[3-a(n-2)]]` -/
def P4446302468589247671.Spec : Prop :=
  ∀ n, P4446302468589247671.a n = A024219 (n + 1)

end A024219

/-! ## A024219.P13329305942584023506

`ceil(C(3*n, 2)/6)+2*n`
-/

namespace A024219.P13329305942584023506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (3 * n) 2 : ℚ) / 6⌉ + (2 * n : ℤ)

end

end A024219.P13329305942584023506

namespace A024219

/-- `ceil(C(3*n, 2)/6)+2*n` -/
def P13329305942584023506.Spec : Prop :=
  ∀ n, P13329305942584023506.a n = A024219 (n + 1)

end A024219

/-! ## A024219.P16940804996911159555

`∑[ogf((1+x+x^3)/(1-2x+2x^2-2x^3+x^4))]-1`
-/

namespace A024219.P16940804996911159555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 1] [1, -2, 2, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A024219.P16940804996911159555

namespace A024219

/-- `∑[ogf((1+x+x^3)/(1-2x+2x^2-2x^3+x^4))]-1` -/
def P16940804996911159555.Spec : Prop :=
  ∀ n, P16940804996911159555.a n = A024219 (n + 1)

end A024219

/-! ## A024219.P6621203312226513614

`∪[2*n+1, 2*n+1+n]+a(n-1)` with `a(0)=0`
-/

namespace A024219.P6621203312226513614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n + a (n - 1)

end

end A024219.P6621203312226513614

namespace A024219

/-- `∪[2*n+1, 2*n+1+n]+a(n-1)` -/
def P6621203312226513614.Spec : Prop :=
  ∀ n, (P6621203312226513614.a n : ℤ) = A024219 (n + 1)

end A024219

/-! ## A024219.P3009327118638473339

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=7, a(3)=12, a(4)=19`
-/

namespace A024219.P3009327118638473339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 7, 12, 19] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A024219.P3009327118638473339

namespace A024219

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P3009327118638473339.Spec : Prop :=
  ∀ n, P3009327118638473339.a n = A024219 (n + 1)

end A024219

/-! ## A024219.P12737173627146527143

`ceil(A140090(n)/2)`
-/

namespace A024219.P12737173627146527143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140090 n : ℚ) / 2⌉

end

end A024219.P12737173627146527143

namespace A024219

/-- `ceil(A140090(n)/2)` -/
def P12737173627146527143.Spec : Prop :=
  ∀ n, P12737173627146527143.a n = A024219 (n + 1)

end A024219

/-! ## A024219.P10846588145779353412

`A340648(n)+2*n`
-/

namespace A024219.P10846588145779353412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340648 n + (2 * n : ℤ)

end

end A024219.P10846588145779353412

namespace A024219

/-- `A340648(n)+2*n` -/
def P10846588145779353412.Spec : Prop :=
  ∀ n, P10846588145779353412.a n = A024219 (n + 1)

end A024219

/-! ## A024219.P5658358063486804867

`∑[A047251(n+1)]-1`
-/

namespace A024219.P5658358063486804867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A024219.P5658358063486804867

namespace A024219

/-- `∑[A047251(n+1)]-1` -/
def P5658358063486804867.Spec : Prop :=
  ∀ n, P5658358063486804867.a n = A024219 (n + 1)

end A024219

/-! ## A024219.P3762603077796339167

`round((A140091(n)-n)/2)`
-/

namespace A024219.P3762603077796339167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A140091 n - (n : ℤ) : ℚ) / 2)

end

end A024219.P3762603077796339167

namespace A024219

/-- `round((A140091(n)-n)/2)` -/
def P3762603077796339167.Spec : Prop :=
  ∀ n, P3762603077796339167.a n = A024219 (n + 1)

end A024219

/-! ## A024219.P6580985174432530249

`∑[A047229(n+1)]+n`
-/

namespace A024219.P6580985174432530249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A024219.P6580985174432530249

namespace A024219

/-- `∑[A047229(n+1)]+n` -/
def P6580985174432530249.Spec : Prop :=
  ∀ n, P6580985174432530249.a n = A024219 (n + 1)

end A024219

/-! ## A024219.P1861105806312169599

`∑[A004525(n)+n]+n`
-/

namespace A024219.P1861105806312169599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A024219.P1861105806312169599

namespace A024219

/-- `∑[A004525(n)+n]+n` -/
def P1861105806312169599.Spec : Prop :=
  ∀ n, P1861105806312169599.a n = A024219 (n + 1)

end A024219

/-! ## A024219.P11264852163198470093

`∑[comp[A007310(n+1)]]+n`
-/

namespace A024219.P11264852163198470093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A024219.P11264852163198470093

namespace A024219

/-- `∑[comp[A007310(n+1)]]+n` -/
def P11264852163198470093.Spec : Prop :=
  ∀ n, (P11264852163198470093.a n : ℤ) = A024219 (n + 1)

end A024219

/-! ## A024219.P4827130759145877638

`∑[lt[A020639(n+5), 4]]-1`
-/

namespace A024219.P4827130759145877638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 5)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A024219.P4827130759145877638

namespace A024219

/-- `∑[lt[A020639(n+5), 4]]-1` -/
def P4827130759145877638.Spec : Prop :=
  ∀ n, P4827130759145877638.a n = A024219 (n + 1)

end A024219

/-! ## A024219.P10377674734860679173

`round((A115067(n+1)+n)/2)`
-/

namespace A024219.P10377674734860679173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A115067 (n + 1) + (n : ℤ) : ℚ) / 2)

end

end A024219.P10377674734860679173

namespace A024219

/-- `round((A115067(n+1)+n)/2)` -/
def P10377674734860679173.Spec : Prop :=
  ∀ n, P10377674734860679173.a n = A024219 (n + 1)

end A024219

/-! ## A024219.P2343792431565292603

`∑[A157932(n+1)/2]+n`
-/

namespace A024219.P2343792431565292603
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157932 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A024219.P2343792431565292603

namespace A024219

/-- `∑[A157932(n+1)/2]+n` -/
def P2343792431565292603.Spec : Prop :=
  ∀ n, P2343792431565292603.a n = (A024219 (n + 1) : ℚ)

end A024219

/-!
# A024220: a(n) = [ (3rd elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+2 positive integers congruent to 1 mod 3}.

The programs for A024220, the canonical program `A024220.P7609330145407247552` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024220 has offset 1).

The definition of A024220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024220.P7609330145407247552

`floor(A024213(n+1)/A000326(n+3))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024220

/-- `floor(A024213(n+1)/A000326(n+3))` -/
def P7609330145407247552.Spec : Prop :=
  ∀ n, P7609330145407247552.a n = A024220 (n + 1)

theorem P7609330145407247552.correct : P7609330145407247552.Spec := by
  intro n
  simp only [A024220, Nat.add_sub_cancel]

end A024220

/-! ## A024220.P6213896171313819869

`∑[A085789(n+1)]-A007980(n)`
-/

namespace A024220.P6213896171313819869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007980 n

end

end A024220.P6213896171313819869

namespace A024220

/-- `∑[A085789(n+1)]-A007980(n)` -/
def P6213896171313819869.Spec : Prop :=
  ∀ n, P6213896171313819869.a n = A024220 (n + 1)

end A024220

/-! ## A024220.P10514141669746510385

`A024399(n+1)-A027480(n+1)`
-/

namespace A024220.P10514141669746510385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024399 (n + 1) - A027480 (n + 1)

end

end A024220.P10514141669746510385

namespace A024220

/-- `A024399(n+1)-A027480(n+1)` -/
def P10514141669746510385.Spec : Prop :=
  ∀ n, P10514141669746510385.a n = A024220 (n + 1)

end A024220

/-! ## A024220.P5000482103893764550

`∑[A085789(n+1)]-A001399(2*n)`
-/

namespace A024220.P5000482103893764550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001399 (2 * n)

end

end A024220.P5000482103893764550

namespace A024220

/-- `∑[A085789(n+1)]-A001399(2*n)` -/
def P5000482103893764550.Spec : Prop :=
  ∀ n, P5000482103893764550.a n = A024220 (n + 1)

end A024220

/-! ## A024220.P13912646670895818000

`∑[A014125(A016777(n))]-A007980(n)`
-/

namespace A024220.P13912646670895818000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007980 n

end

end A024220.P13912646670895818000

namespace A024220

/-- `∑[A014125(A016777(n))]-A007980(n)` -/
def P13912646670895818000.Spec : Prop :=
  ∀ n, P13912646670895818000.a n = A024220 (n + 1)

end A024220

/-! ## A024220.P16756156945544953246

`∑[A014125(A016777(n))-A004396(n+1)]`
-/

namespace A024220.P16756156945544953246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 (A016777 n).toNat - A004396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024220.P16756156945544953246

namespace A024220

/-- `∑[A014125(A016777(n))-A004396(n+1)]` -/
def P16756156945544953246.Spec : Prop :=
  ∀ n, P16756156945544953246.a n = A024220 (n + 1)

end A024220

/-! ## A024220.P12380991918510499486

`A024399(n+1)-Δ[A000124(A000096(n))]`
-/

namespace A024220.P12380991918510499486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024399 (n + 1) - (f1 (n + 1) - f1 n)

end

end A024220.P12380991918510499486

namespace A024220

/-- `A024399(n+1)-Δ[A000124(A000096(n))]` -/
def P12380991918510499486.Spec : Prop :=
  ∀ n, P12380991918510499486.a n = A024220 (n + 1)

end A024220

/-!
# A024221: [ (4th elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+3 positive integers congruent to 1 mod 3}.

The programs for A024221, the canonical program `A024221.P8985371235332592130` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024221 has offset 1).

The definition of A024221 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024214, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024221.P8985371235332592130

`floor(A024214(n+1)/A000326(n+4))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024221

/-- `floor(A024214(n+1)/A000326(n+4))` -/
def P8985371235332592130.Spec : Prop :=
  ∀ n, P8985371235332592130.a n = A024221 (n + 1)

theorem P8985371235332592130.correct : P8985371235332592130.Spec := by
  intro n
  simp only [A024221, Nat.add_sub_cancel]

end A024221

/-!
# A024222: Number of shuffles (perfect faro shuffles with cut) required to return a deck of size n to its original order.

The programs for A024222, there is no canonical definition to state claims against.
-/

/-! ## A024222.P14740934576970780452

`A007733(or(1, n))%(n+1)`
-/

namespace A024222.P14740934576970780452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007733 (Nat.lor 1 n)) (n + 1 : ℤ)

end

end A024222.P14740934576970780452

/-! ## A024222.P13923624466020818501

`A002326(floor(n/2))%(n+1)`
-/

namespace A024222.P13923624466020818501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002326 ⌊(n : ℚ) / 2⌋.toNat) (n + 1 : ℤ)

end

end A024222.P13923624466020818501

/-! ## A024222.P7513879719912882088

`A007733(A109613(n))%(n+1)`
-/

namespace A024222.P7513879719912882088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007733 (A109613 n).toNat) (n + 1 : ℤ)

end

end A024222.P7513879719912882088

/-! ## A024222.P13604351390545312558

`A002326(floor(n/2))-A000007(n)`
-/

namespace A024222.P13604351390545312558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 ⌊(n : ℚ) / 2⌋.toNat - A000007 n

end

end A024222.P13604351390545312558

/-! ## A024222.P1572849551369986675

`A007733(n-A000035(n)+1)%(n+1)`
-/

namespace A024222.P1572849551369986675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007733 ((n : ℤ) - A000035 n + 1).toNat) (n + 1 : ℤ)

end

end A024222.P1572849551369986675

/-! ## A024222.P18235143617416301783

`A002326(A004526(n))*A057427(n)`
-/

namespace A024222.P18235143617416301783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A004526 n).toNat * A057427 n

end

end A024222.P18235143617416301783

/-! ## A024222.P7550773611116723391

`A054703(A109613(n))%A013974(n)`
-/

namespace A024222.P7550773611116723391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054703 (A109613 n).toNat) (A013974 n)

end

end A024222.P7550773611116723391

/-! ## A024222.P6188993378536613004

`and(A002326(A004526(n)), A003817(n))`
-/

namespace A024222.P6188993378536613004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002326 (A004526 n).toNat) (A003817 n)

end

end A024222.P6188993378536613004

/-! ## A024222.P3843998993483106154

`xor(A000007(n), A002326(A004526(n)))`
-/

namespace A024222.P3843998993483106154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A002326 (A004526 n).toNat)

end

end A024222.P3843998993483106154

/-! ## A024222.P15877416662185916569

`A007733(or(1, n))-A070536(A020639(n+1))`
-/

namespace A024222.P15877416662185916569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (Nat.lor 1 n) - A070536 (A020639 (n + 1)).toNat

end

end A024222.P15877416662185916569

/-! ## A024222.P14560117228396242886

`A007733(A109613(n))-A070536(A020639(n+1))`
-/

namespace A024222.P14560117228396242886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A109613 n).toNat - A070536 (A020639 (n + 1)).toNat

end

end A024222.P14560117228396242886

/-! ## A024222.P4068421164886851024

`A007733(A000035(n+1)+n)%(n+1)`
-/

namespace A024222.P4068421164886851024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007733 (A000035 (n + 1) + (n : ℤ)).toNat) (n + 1 : ℤ)

end

end A024222.P4068421164886851024

/-! ## A024222.P4533053928077700560

`A007733(2*or(1, n))%Δ[n²]`
-/

namespace A024222.P4533053928077700560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007733 (2 * Nat.lor 1 n)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A024222.P4533053928077700560

/-!
# A024223: [ (4th elementary symmetric function of S(n))/(2nd elementary symmetric function of S(n)) ], where S(n) = {first n+3 positive integers congruent to 1 mod 3}.

The programs for A024223, the canonical program `A024223.P3771646496982917147` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024223 has offset 1).

The definition of A024223 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024214, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024223.P3771646496982917147

`floor(A024214(n+1)/A024212(n+3))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024223

/-- `floor(A024214(n+1)/A024212(n+3))` -/
def P3771646496982917147.Spec : Prop :=
  ∀ n, P3771646496982917147.a n = A024223 (n + 1)

theorem P3771646496982917147.correct : P3771646496982917147.Spec := by
  intro n
  simp only [A024223, Nat.add_sub_cancel]

end A024223

/-!
# A024224: a(n) = floor((4th elementary symmetric function of S(n))/(3rd elementary symmetric function of S(n))), where S(n) = {first n+3 positive integers congruent to 1 mod 3}.

The programs for A024224, the canonical program `A024224.P15076638133758685557` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024224 has offset 1).

The definition of A024224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024224.P15076638133758685557

`floor((3*(n+1)²+5*(n+1)-6)/8)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A024224

/-- `floor((3*(n+1)²+5*(n+1)-6)/8)` -/
def P15076638133758685557.Spec : Prop :=
  ∀ n, P15076638133758685557.a n = A024224 (n + 1)

theorem P15076638133758685557.correct : P15076638133758685557.Spec := by
  intro n
  simp only [A024224, Nat.add_sub_cancel]

end A024224

/-! ## A024224.P9142277540579407685

`floor(∑[a(n-1)+3]/4)+n` with `a(0)=1, a(1)=3`
-/

namespace A024224.P9142277540579407685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋ + (n : ℤ)

end

end A024224.P9142277540579407685

namespace A024224

/-- `floor(∑[a(n-1)+3]/4)+n` -/
def P9142277540579407685.Spec : Prop :=
  ∀ n, P9142277540579407685.a n = A024224 (n + 1)

end A024224

/-! ## A024224.P14376405917574167364

`floor(∑[A008486(n)/4])+n`
-/

namespace A024224.P14376405917574167364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + (n : ℤ)

end

end A024224.P14376405917574167364

namespace A024224

/-- `floor(∑[A008486(n)/4])+n` -/
def P14376405917574167364.Spec : Prop :=
  ∀ n, P14376405917574167364.a n = A024224 (n + 1)

end A024224

/-! ## A024224.P633683360048706756

`ceil((A046691(n)+∑[n]/2)/2)`
-/

namespace A024224.P633683360048706756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A046691 n : ℚ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2) / 2⌉

end

end A024224.P633683360048706756

namespace A024224

/-- `ceil((A046691(n)+∑[n]/2)/2)` -/
def P633683360048706756.Spec : Prop :=
  ∀ n, P633683360048706756.a n = A024224 (n + 1)

end A024224

/-! ## A024224.P8751769344872685908

`floor(∑[A047229(n+1)+2]/2)-1`
-/

namespace A024224.P8751769344872685908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋ - 1

end

end A024224.P8751769344872685908

namespace A024224

/-- `floor(∑[A047229(n+1)+2]/2)-1` -/
def P8751769344872685908.Spec : Prop :=
  ∀ n, P8751769344872685908.a n = A024224 (n + 1)

end A024224

/-! ## A024224.P6451951947074060903

`∑[A004525(A004525(n)+n)]+n`
-/

namespace A024224.P6451951947074060903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A024224.P6451951947074060903

namespace A024224

/-- `∑[A004525(A004525(n)+n)]+n` -/
def P6451951947074060903.Spec : Prop :=
  ∀ n, P6451951947074060903.a n = A024224 (n + 1)

end A024224

/-! ## A024224.P2387912756274780416

`round(A055999(4*n+2-n)/12)-1`
-/

namespace A024224.P2387912756274780416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055999 ((4 * n : ℤ) + (2 - (n : ℤ))).toNat : ℚ) / 12) - 1

end

end A024224.P2387912756274780416

namespace A024224

/-- `round(A055999(4*n+2-n)/12)-1` -/
def P2387912756274780416.Spec : Prop :=
  ∀ n, P2387912756274780416.a n = A024224 (n + 1)

end A024224

/-! ## A024224.P3786956719871716087

`A066530(∑[n])+n-1`
-/

namespace A024224.P3786956719871716087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066530 (∑ j ∈ Finset.range (n + 1), f1 j) + ((n : ℤ) - 1)

end

end A024224.P3786956719871716087

namespace A024224

/-- `A066530(∑[n])+n-1` -/
def P3786956719871716087.Spec : Prop :=
  ∀ n, P3786956719871716087.a n = A024224 (n + 1)

end A024224

/-! ## A024224.P17424289145242415339

`record[A038722(n+1)-A008621(n+2)]`
-/

namespace A024224.P17424289145242415339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) - A008621 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024224.P17424289145242415339

namespace A024224

/-- `record[A038722(n+1)-A008621(n+2)]` -/
def P17424289145242415339.Spec : Prop :=
  ∀ n, P17424289145242415339.a n = A024224 (n + 1)

end A024224

/-! ## A024224.P14433186142958510982

`A055998(n)-A002265(A155212(n))`
-/

namespace A024224.P14433186142958510982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n - A002265 (A155212 n).toNat

end

end A024224.P14433186142958510982

namespace A024224

/-- `A055998(n)-A002265(A155212(n))` -/
def P14433186142958510982.Spec : Prop :=
  ∀ n, P14433186142958510982.a n = A024224 (n + 1)

end A024224

/-! ## A024224.P12010732887512985919

`A004526(A007494(A000217(n)))+n`
-/

namespace A024224.P12010732887512985919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007494 (A000217 n).toNat).toNat + (n : ℤ)

end

end A024224.P12010732887512985919

namespace A024224

/-- `A004526(A007494(A000217(n)))+n` -/
def P12010732887512985919.Spec : Prop :=
  ∀ n, P12010732887512985919.a n = A024224 (n + 1)

end A024224

/-! ## A024224.P11917724351066995261

`A140106(∑[comp[a(n-2)+6]])` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A024224.P11917724351066995261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  f2 (n - 2) + 6

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024224.P11917724351066995261

namespace A024224

/-- `A140106(∑[comp[a(n-2)+6]])` -/
def P11917724351066995261.Spec : Prop :=
  ∀ n, P11917724351066995261.a n = A024224 (n + 1)

end A024224

/-! ## A024224.P16071129696425480514

`A004526(A231559(n+2))-1`
-/

namespace A024224.P16071129696425480514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A231559 (n + 2)).toNat - 1

end

end A024224.P16071129696425480514

namespace A024224

/-- `A004526(A231559(n+2))-1` -/
def P16071129696425480514.Spec : Prop :=
  ∀ n, P16071129696425480514.a n = A024224 (n + 1)

end A024224

/-! ## A024224.P14625097865968003397

`A057360(n²+1+n)+n`
-/

namespace A024224.P14625097865968003397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (n ^ 2 + 1 + n) + (n : ℤ)

end

end A024224.P14625097865968003397

namespace A024224

/-- `A057360(n²+1+n)+n` -/
def P14625097865968003397.Spec : Prop :=
  ∀ n, P14625097865968003397.a n = A024224 (n + 1)

end A024224

/-!
# A024225: Expansion of tan(sin(x))*x/2.

The programs for A024225, there is no canonical definition to state claims against.
-/

/-! ## A024225.P4334021381298894120

`A009667(n)/2`
-/

namespace A024225.P4334021381298894120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009667 n : ℚ) / 2

end

end A024225.P4334021381298894120

/-! ## A024225.P14179857184500218803

`n*A003705(abs(1-n))`
-/

namespace A024225.P14179857184500218803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003705 |1 - (n : ℤ)|.toNat

end

end A024225.P14179857184500218803

/-!
# A024226: Expansion of sin(tan(x))*x/2.

The programs for A024226, there is no canonical definition to state claims against.
-/

/-! ## A024226.P13662592632871396670

`A009508(n)/2`
-/

namespace A024226.P13662592632871396670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009508 n : ℚ) / 2

end

end A024226.P13662592632871396670

/-! ## A024226.P2146491786012321191

`n*A003706(abs(1-n))`
-/

namespace A024226.P2146491786012321191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003706 |1 - (n : ℤ)|.toNat

end

end A024226.P2146491786012321191

/-!
# A024227: Expansion of sinh(x)*sin(sin(x))/2.

The programs for A024227, there is no canonical definition to state claims against.
-/

/-! ## A024227.P1402562476897964528

`A009626(n)/2`
-/

namespace A024227.P1402562476897964528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009626 n : ℚ) / 2

end

end A024227.P1402562476897964528

/-! ## A024227.P3977627416465054797

`A009477(2*n)/2`
-/

namespace A024227.P3977627416465054797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009477 (2 * n) : ℚ) / 2

end

end A024227.P3977627416465054797

/-! ## A024227.P16014504762379965805

`floor(A009477(A004277(n))/2)`
-/

namespace A024227.P16014504762379965805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009477 (A004277 n).toNat : ℚ) / 2⌋

end

end A024227.P16014504762379965805

/-! ## A024227.P3418375130598582339

`(A009477(A004277(n))-A000007(n))/2`
-/

namespace A024227.P3418375130598582339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009477 (A004277 n).toNat - A000007 n : ℚ) / 2

end

end A024227.P3418375130598582339

/-!
# A024228: Expansion of tanh(x)*tan(sin(x))/2.

The programs for A024228, there is no canonical definition to state claims against.
-/

/-! ## A024228.P3947062787351653851

`A009835(n)/2`
-/

namespace A024228.P3947062787351653851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009835 n : ℚ) / 2

end

end A024228.P3947062787351653851

/-!
# A024229: Expansion of e.g.f.: tanh(x)*sin(tan(x))/2 (even part).

The programs for A024229, there is no canonical definition to state claims against.
-/

/-! ## A024229.P18086555128596642314

`A009834(n)/2`
-/

namespace A024229.P18086555128596642314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009834 n : ℚ) / 2

end

end A024229.P18086555128596642314

/-! ## A024229.P3517897941523488396

`A009738(2*n)/(2*A033999(n+1))`
-/

namespace A024229.P3517897941523488396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009738 (2 * n) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A024229.P3517897941523488396

/-!
# A024230: Expansion of e.g.f. sin(x)*sin(sinh(x))/2 (even powers only).

The programs for A024230, there is no canonical definition to state claims against.
-/

/-! ## A024230.P14850523130575333067

`A009547(n)/2`
-/

namespace A024230.P14850523130575333067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009547 n : ℚ) / 2

end

end A024230.P14850523130575333067

/-! ## A024230.P7933039087822741839

`A009590(2*n)/(2*A033999(n+1))`
-/

namespace A024230.P7933039087822741839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009590 (2 * n) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A024230.P7933039087822741839

/-! ## A024230.P1390584337042846046

`A087960((n+1)²)/2*A009590(2*n)`
-/

namespace A024230.P1390584337042846046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087960 ((n + 1) ^ 2) : ℚ) / 2 * (A009590 (2 * n) : ℚ)

end

end A024230.P1390584337042846046

/-! ## A024230.P13225663246653367833

`floor(A009590(2*n)/A087960(A103517(n)))/2`
-/

namespace A024230.P13225663246653367833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A009590 (2 * n) : ℚ) / (A087960 (A103517 n).toNat : ℚ)⌋ : ℚ) / 2

end

end A024230.P13225663246653367833

/-! ## A024230.P1188824111172523314

`A009590(A005843(n))*A087960(A103517(n))/2`
-/

namespace A024230.P1188824111172523314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009590 (A005843 n).toNat * A087960 (A103517 n).toNat : ℚ) / 2

end

end A024230.P1188824111172523314

/-!
# A024231: Expansion of tanh(tan(x))*sin(x)/2.

The programs for A024231, there is no canonical definition to state claims against.
-/

/-! ## A024231.P15742363194540345900

`A009716(2*n)/(2*A033999(n+1))`
-/

namespace A024231.P15742363194540345900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009716 (2 * n) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A024231.P15742363194540345900

/-! ## A024231.P12285157965639698429

`A009811(n)/2`
-/

namespace A024231.P12285157965639698429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009811 n : ℚ) / 2

end

end A024231.P12285157965639698429

/-!
# A024232: Expansion of sinh(sin(x))*sin(x)/2.

The programs for A024232, there is no canonical definition to state claims against.
-/

/-! ## A024232.P17324563563783255535

`A009591(n)/2`
-/

namespace A024232.P17324563563783255535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009591 n : ℚ) / 2

end

end A024232.P17324563563783255535

/-! ## A024232.P6257469363448123124

`A009541(2*n)/2`
-/

namespace A024232.P6257469363448123124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009541 (2 * n) : ℚ) / 2

end

end A024232.P6257469363448123124

/-! ## A024232.P9811485121760398888

`(A009541(A004277(n))-A000035(A004277(n)))/2`
-/

namespace A024232.P9811485121760398888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009541 (A004277 n).toNat - A000035 (A004277 n).toNat : ℚ) / 2

end

end A024232.P9811485121760398888

/-!
# A024233: Expansion of tan(tanh(x))*sin(x)/2.

The programs for A024233, there is no canonical definition to state claims against.
-/

/-! ## A024233.P18317475973266751347

`A009717(n)/2`
-/

namespace A024233.P18317475973266751347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009717 n : ℚ) / 2

end

end A024233.P18317475973266751347

/-! ## A024233.P1298653706562878093

`A009810(2*n)/(2*A033999(n+1))`
-/

namespace A024233.P1298653706562878093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009810 (2 * n) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A024233.P1298653706562878093

/-!
# A024234: Expansion of sin(tan(x)*sin(x))/2.

The programs for A024234, there is no canonical definition to state claims against.
-/

/-! ## A024234.P4129125800349620103

`A009513(n)/2`
-/

namespace A024234.P4129125800349620103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009513 n : ℚ) / 2

end

end A024234.P4129125800349620103

/-!
# A024235: Expansion of e.g.f. tan(x)*sin(x)/2 (even powers only).

The programs for A024235, there is no canonical definition to state claims against.
-/

/-! ## A024235.P9451266622654363453

`record[A009567(n)]`
-/

namespace A024235.P9451266622654363453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024235.P9451266622654363453

/-! ## A024235.P16445752581326368123

`A009744(n)/2`
-/

namespace A024235.P16445752581326368123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009744 n : ℚ) / 2

end

end A024235.P16445752581326368123

/-! ## A024235.P17405972817407404373

`xor(1, A012007(n))`
-/

namespace A024235.P17405972817407404373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A012007 n)

end

end A024235.P17405972817407404373

/-! ## A024235.P6676149095201415178

`abs(floor(A028296(n)/2))`
-/

namespace A024235.P6676149095201415178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A028296 n : ℚ) / 2⌋|

end

end A024235.P6676149095201415178

/-! ## A024235.P14557508990147738574

`abs(A009832(2*n)/2)`
-/

namespace A024235.P14557508990147738574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A009832 (2 * n) : ℚ) / 2|

end

end A024235.P14557508990147738574

/-!
# A024236: Expansion of log(1+tan(x)*x)/2.

The programs for A024236, there is no canonical definition to state claims against.
-/

/-! ## A024236.P3120629159296507144

`A009379(n)/2`
-/

namespace A024236.P3120629159296507144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009379 n : ℚ) / 2

end

end A024236.P3120629159296507144

/-!
# A024237: Expansion of sin(sin(x)*x)/2.

The programs for A024237, there is no canonical definition to state claims against.
-/

/-! ## A024237.P9608575086843388925

`A009484(n)/2`
-/

namespace A024237.P9608575086843388925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009484 n : ℚ) / 2

end

end A024237.P9608575086843388925

/-!
# A024238: Expansion of sinh(sin(x)*x)/2.

The programs for A024238, there is no canonical definition to state claims against.
-/

/-! ## A024238.P15961689907197214066

`A009595(n)/2`
-/

namespace A024238.P15961689907197214066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009595 n : ℚ) / 2

end

end A024238.P15961689907197214066

/-!
# A024239: Expansion of tanh(tan(x)*sin(x))/2.

The programs for A024239, there is no canonical definition to state claims against.
-/

/-! ## A024239.P18241831389734110246

`A009815(n)/2`
-/

namespace A024239.P18241831389734110246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009815 n : ℚ) / 2

end

end A024239.P18241831389734110246

/-! ## A024239.P11300663511972162397

`2^A033999(or(1, n))*A009815(n)`
-/

namespace A024239.P11300663511972162397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A033999 (Nat.lor 1 n) : ℤ) * (A009815 n : ℚ)

end

end A024239.P11300663511972162397

/-!
# A024240: Expansion of sinh(tan(x)*sin(x))/2.

The programs for A024240, there is no canonical definition to state claims against.
-/

/-! ## A024240.P2982626254753085826

`A009609(n)/2`
-/

namespace A024240.P2982626254753085826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009609 n : ℚ) / 2

end

end A024240.P2982626254753085826

/-! ## A024240.P14599702385504084935

`(A009250(n)-A009164(n))/2`
-/

namespace A024240.P14599702385504084935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009250 n - A009164 n : ℚ) / 2

end

end A024240.P14599702385504084935

/-!
# A024241: E.g.f. tan(x)*sin(tanh(x))/2 (even powers only).

The programs for A024241, there is no canonical definition to state claims against.
-/

/-! ## A024241.P13560520593211842267

`A009743(n)/2`
-/

namespace A024241.P13560520593211842267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009743 n : ℚ) / 2

end

end A024241.P13560520593211842267

/-! ## A024241.P16242400842742987430

`A009830(2*n)/(2*A033999(n+1))`
-/

namespace A024241.P16242400842742987430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009830 (2 * n) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A024241.P16242400842742987430

/-!
# A024242: Expansion of tanh(sin(x))*tan(x)/2.

The programs for A024242, there is no canonical definition to state claims against.
-/

/-! ## A024242.P6264605859623199116

`A009796(n)/2`
-/

namespace A024242.P6264605859623199116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009796 n : ℚ) / 2

end

end A024242.P6264605859623199116

/-!
# A024243: Expansion of tanh(sin(x)*x)/2.

The programs for A024243, there is no canonical definition to state claims against.
-/

/-! ## A024243.P17780688900171928043

`A009800(n)/2`
-/

namespace A024243.P17780688900171928043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009800 n : ℚ) / 2

end

end A024243.P17780688900171928043

/-!
# A024244: Expansion of tan(sin(x)*x)/2.

The programs for A024244, there is no canonical definition to state claims against.
-/

/-! ## A024244.P8818770194521616565

`A009673(n)/2`
-/

namespace A024244.P8818770194521616565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009673 n : ℚ) / 2

end

end A024244.P8818770194521616565

/-!
# A024245: Expansion of tan(tan(x)*sin(x))/2.

The programs for A024245, there is no canonical definition to state claims against.
-/

/-! ## A024245.P11626284777634073963

`A009705(n)/2`
-/

namespace A024245.P11626284777634073963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009705 n : ℚ) / 2

end

end A024245.P11626284777634073963

/-!
# A024246: Expansion of tan(sin(x))*sinh(x)/2.

The programs for A024246, there is no canonical definition to state claims against.
-/

/-! ## A024246.P5839753993788742420

`A009664(2*n)/2`
-/

namespace A024246.P5839753993788742420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009664 (2 * n) : ℚ) / 2

end

end A024246.P5839753993788742420

/-! ## A024246.P4555948151099952775

`round(A009664(A005843(n))/2)`
-/

namespace A024246.P4555948151099952775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A009664 (A005843 n).toNat : ℚ) / 2)

end

end A024246.P4555948151099952775

/-! ## A024246.P15409799966423386269

`A009666(n)/2`
-/

namespace A024246.P15409799966423386269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009666 n : ℚ) / 2

end

end A024246.P15409799966423386269

/-! ## A024246.P13422324794431046203

`A009664(A005843(n))%A009668(n)/2`
-/

namespace A024246.P13422324794431046203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A009664 (A005843 n).toNat) (A009668 n) : ℚ) / 2

end

end A024246.P13422324794431046203

/-! ## A024246.P16872481838445981035

`(A009664(A005843(n))+A000038(A000230(n)))/2`
-/

namespace A024246.P16872481838445981035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009664 (A005843 n).toNat + A000038 (A000230 n).toNat : ℚ) / 2

end

end A024246.P16872481838445981035

/-!
# A024247: Expansion of e.g.f. sinh(x)*sin(tan(x))/2, even powers only.

The programs for A024247, there is no canonical definition to state claims against.
-/

/-! ## A024247.P17894399833702696919

`A009627(n)/2`
-/

namespace A024247.P17894399833702696919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009627 n : ℚ) / 2

end

end A024247.P17894399833702696919

/-! ## A024247.P15903986478824266807

`A009507(2*n)/2`
-/

namespace A024247.P15903986478824266807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009507 (2 * n) : ℚ) / 2

end

end A024247.P15903986478824266807

/-! ## A024247.P9741955324057874593

`A009507(A005843(n))%A009506(n)/2`
-/

namespace A024247.P9741955324057874593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A009507 (A005843 n).toNat) (A009506 n) : ℚ) / 2

end

end A024247.P9741955324057874593

/-!
# A024248: Expansion of sin(tan(x)*x)/2.

The programs for A024248, there is no canonical definition to state claims against.
-/

/-! ## A024248.P395915105928280421

`A009515(n)/2`
-/

namespace A024248.P395915105928280421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009515 n : ℚ) / 2

end

end A024248.P395915105928280421

/-!
# A024249: Expansion of tanh(tan(x))*tan(x)/2.

The programs for A024249, there is no canonical definition to state claims against.
-/

/-! ## A024249.P8727008304025126292

`A009812(n)/2`
-/

namespace A024249.P8727008304025126292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009812 n : ℚ) / 2

end

end A024249.P8727008304025126292

/-! ## A024249.P9782610804797976864

`(A133707(n+1)+1)^-1*A009812(n)`
-/

namespace A024249.P9782610804797976864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133707 (n + 1) + 1 : ℚ) ^ (-1 : ℤ) * (A009812 n : ℚ)

end

end A024249.P9782610804797976864

/-!
# A024250: Expansion of tan(x)*sin(sinh(x))/2.

The programs for A024250, there is no canonical definition to state claims against.
-/

/-! ## A024250.P13054159571806209538

`A009741(n)/2`
-/

namespace A024250.P13054159571806209538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009741 n : ℚ) / 2

end

end A024250.P13054159571806209538

/-! ## A024250.P14275987296418000765

`abs(A009828(2*n)/2)`
-/

namespace A024250.P14275987296418000765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A009828 (2 * n) : ℚ) / 2|

end

end A024250.P14275987296418000765

/-! ## A024250.P15301534621728103387

`lcm(2, A009828(A005843(n)))/2`
-/

namespace A024250.P15301534621728103387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A009828 (A005843 n).toNat) : ℚ) / 2

end

end A024250.P15301534621728103387

/-! ## A024250.P8210531253597353727

`record[lcm(A009828(n), A056594(n))/2]`
-/

namespace A024250.P8210531253597353727
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A009828 n) (A056594 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024250.P8210531253597353727

/-! ## A024250.P15262132768565215759

`A009828(2*n)/(2*A033999(n+1))`
-/

namespace A024250.P15262132768565215759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009828 (2 * n) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A024250.P15262132768565215759

/-!
# A024251: Expansion of tan(x)*sinh(sin(x))/2.

The programs for A024251, there is no canonical definition to state claims against.
-/

/-! ## A024251.P17834318215587495809

`A009745(n)/2`
-/

namespace A024251.P17834318215587495809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009745 n : ℚ) / 2

end

end A024251.P17834318215587495809

/-! ## A024251.P8389717363734819953

`A009735(2*n)/2`
-/

namespace A024251.P8389717363734819953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009735 (2 * n) : ℚ) / 2

end

end A024251.P8389717363734819953

/-! ## A024251.P2804018081027521430

`floor(A009735(A005843(n))/2)`
-/

namespace A024251.P2804018081027521430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009735 (A005843 n).toNat : ℚ) / 2⌋

end

end A024251.P2804018081027521430

/-! ## A024251.P12826920593945236240

`record[A009735(A237420(n))/2]`
-/

namespace A024251.P12826920593945236240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009735 (A237420 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024251.P12826920593945236240

/-! ## A024251.P14631231125949267981

`record[A009735(n)/A033999(n)]/2`
-/

namespace A024251.P14631231125949267981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009735 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2

end

end A024251.P14631231125949267981

/-!
# A024252: Expansion of tan(x)*tan(tanh(x))/2.

The programs for A024252, there is no canonical definition to state claims against.
-/

/-! ## A024252.P14840750438568992601

`A009751(n)/2`
-/

namespace A024252.P14840750438568992601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009751 n : ℚ) / 2

end

end A024252.P14840750438568992601

/-! ## A024252.P18072842918581222102

`A014682(A009751(n))`
-/

namespace A024252.P18072842918581222102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A009751 n).toNat

end

end A024252.P18072842918581222102

/-!
# A024253: Expansion of sin(sin(x))*x/2.

The programs for A024253, there is no canonical definition to state claims against.
-/

/-! ## A024253.P15723679110107710797

`n*A003712(abs(1-n))`
-/

namespace A024253.P15723679110107710797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003712 |1 - (n : ℤ)|.toNat

end

end A024253.P15723679110107710797

/-! ## A024253.P16515057750226050154

`A009478(n)/2`
-/

namespace A024253.P16515057750226050154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009478 n : ℚ) / 2

end

end A024253.P16515057750226050154

/-! ## A024253.P12037365684315462729

`A009224(2*n)/(2*A033999(n+1))`
-/

namespace A024253.P12037365684315462729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009224 (2 * n) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A024253.P12037365684315462729

/-!
# A024254: Expansion of sin(sin(x)^2)/2.

The programs for A024254, there is no canonical definition to state claims against.
-/

/-! ## A024254.P6632872422741717677

`A009486(n)/2`
-/

namespace A024254.P6632872422741717677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009486 n : ℚ) / 2

end

end A024254.P6632872422741717677

/-!
# A024255: a(0)=0, a(n) = n*E(2n-1) for n >= 1, where E(n) = A000111(n) are the Euler (or up-down) numbers.

The programs for A024255, there is no canonical definition to state claims against.
-/

/-! ## A024255.P5839878174912936727

`A009752(n)/2`
-/

namespace A024255.P5839878174912936727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009752 n : ℚ) / 2

end

end A024255.P5839878174912936727

/-! ## A024255.P1080281618053104735

`A117414(∑[n]+1)`
-/

namespace A024255.P1080281618053104735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117414 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A024255.P1080281618053104735

/-! ## A024255.P871046942724250735

`record[A117414(n+1)]`
-/

namespace A024255.P871046942724250735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024255.P871046942724250735

/-! ## A024255.P12985607432869990782

`n*record[A350972(n)]`
-/

namespace A024255.P12985607432869990782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024255.P12985607432869990782

/-! ## A024255.P15395711915449087706

`n/2*A012509(n)`
-/

namespace A024255.P15395711915449087706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A012509 n : ℚ)

end

end A024255.P15395711915449087706

/-!
# A024256: Expansion of log(1+sinh(x)*x)/2.

The programs for A024256, there is no canonical definition to state claims against.
-/

/-! ## A024256.P15501938563305523046

`A009360(n)/2`
-/

namespace A024256.P15501938563305523046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009360 n : ℚ) / 2

end

end A024256.P15501938563305523046

/-!
# A024257: Expansion of tanh(tan(x)*x)/2.

The programs for A024257, there is no canonical definition to state claims against.
-/

/-! ## A024257.P14179609594973334769

`A009817(n)/2`
-/

namespace A024257.P14179609594973334769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009817 n : ℚ) / 2

end

end A024257.P14179609594973334769

/-!
# A024258: Expansion of sinh(sin(x)^2)/2.

The programs for A024258, there is no canonical definition to state claims against.
-/

/-! ## A024258.P3677783960352048310

`A009596(n)/2`
-/

namespace A024258.P3677783960352048310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009596 n : ℚ) / 2

end

end A024258.P3677783960352048310

/-! ## A024258.P3491356603861080684

`(A009217(n)-A009150(n))/2`
-/

namespace A024258.P3491356603861080684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009217 n - A009150 n : ℚ) / 2

end

end A024258.P3491356603861080684

/-!
# A024259: Expansion of sinh(tan(x))*sin(x)/2.

The programs for A024259, there is no canonical definition to state claims against.
-/

/-! ## A024259.P7525735662353786839

`A009606(n)/2`
-/

namespace A024259.P7525735662353786839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009606 n : ℚ) / 2

end

end A024259.P7525735662353786839

/-! ## A024259.P11329663105925719848

`A009543(2*n)/2`
-/

namespace A024259.P11329663105925719848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009543 (2 * n) : ℚ) / 2

end

end A024259.P11329663105925719848

/-! ## A024259.P4039683508001093168

`abs(A009524(2*n)/2)`
-/

namespace A024259.P4039683508001093168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A009524 (2 * n) : ℚ) / 2|

end

end A024259.P4039683508001093168

/-! ## A024259.P12916386773191110511

`floor(A009543(A005843(n))/2)`
-/

namespace A024259.P12916386773191110511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009543 (A005843 n).toNat : ℚ) / 2⌋

end

end A024259.P12916386773191110511

/-! ## A024259.P17414151197883775363

`(A009160(n)-A009604(n))/2`
-/

namespace A024259.P17414151197883775363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009160 n - A009604 n : ℚ) / 2

end

end A024259.P17414151197883775363

/-!
# A024260: Expansion of tan(sinh(x))*sin(x)/2.

The programs for A024260, there is no canonical definition to state claims against.
-/

/-! ## A024260.P5959846266422075672

`A009682(n)/2`
-/

namespace A024260.P5959846266422075672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009682 n : ℚ) / 2

end

end A024260.P5959846266422075672

/-! ## A024260.P7837409391289764812

`abs(A009794(2*n)/2)`
-/

namespace A024260.P7837409391289764812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A009794 (2 * n) : ℚ) / 2|

end

end A024260.P7837409391289764812

/-! ## A024260.P17989234217539237102

`abs(A009794(A005843(n)))/2`
-/

namespace A024260.P17989234217539237102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A009794 (A005843 n).toNat| : ℚ) / 2

end

end A024260.P17989234217539237102

/-! ## A024260.P59501155079073881

`gcd(A000038(n+1), A009794(2*n))/2`
-/

namespace A024260.P59501155079073881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 (n + 1)) (A009794 (2 * n)) : ℚ) / 2

end

end A024260.P59501155079073881

/-!
# A024261: Expansion of log(1+tan(x)*sin(x))/2.

The programs for A024261, there is no canonical definition to state claims against.
-/

/-! ## A024261.P8591962776277934991

`A009377(n)/2`
-/

namespace A024261.P8591962776277934991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009377 n : ℚ) / 2

end

end A024261.P8591962776277934991

/-!
# A024262: Expansion of tanh(sin(x)^2)/2.

The programs for A024262, there is no canonical definition to state claims against.
-/

/-! ## A024262.P10950928705812268650

`A009801(n)/2`
-/

namespace A024262.P10950928705812268650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009801 n : ℚ) / 2

end

end A024262.P10950928705812268650

/-!
# A024263: Expansion of sinh(tan(x)*x)/2.

The programs for A024263, there is no canonical definition to state claims against.
-/

/-! ## A024263.P2906071951919101709

`A009611(n)/2`
-/

namespace A024263.P2906071951919101709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009611 n : ℚ) / 2

end

end A024263.P2906071951919101709

/-! ## A024263.P18415493248856130461

`(A009252(n)-A009166(n))/2`
-/

namespace A024263.P18415493248856130461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009252 n - A009166 n : ℚ) / 2

end

end A024263.P18415493248856130461

/-!
# A024264: Expansion of tan(sin(x)^2)/2.

The programs for A024264, there is no canonical definition to state claims against.
-/

/-! ## A024264.P13502977414539896644

`A009675(n)/2`
-/

namespace A024264.P13502977414539896644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009675 n : ℚ) / 2

end

end A024264.P13502977414539896644

/-!
# A024265: Expansion of tan(tan(x) * x)/2.

The programs for A024265, there is no canonical definition to state claims against.
-/

/-! ## A024265.P8740894979163388868

`A009707(n)/2`
-/

namespace A024265.P8740894979163388868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009707 n : ℚ) / 2

end

end A024265.P8740894979163388868

/-!
# A024266: Expansion of tanh(x)*tan(tan(x))/2.

The programs for A024266, there is no canonical definition to state claims against.
-/

/-! ## A024266.P5118815638095799392

`A009836(n)/2`
-/

namespace A024266.P5118815638095799392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009836 n : ℚ) / 2

end

end A024266.P5118815638095799392

/-!
# A024267: Expansion of sin(tan(x)*sinh(x))/2.

The programs for A024267, there is no canonical definition to state claims against.
-/

/-! ## A024267.P6466036155909396328

`A009514(n)/2`
-/

namespace A024267.P6466036155909396328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009514 n : ℚ) / 2

end

end A024267.P6466036155909396328

/-!
# A024268: Expansion of tanh(tan(x)*sinh(x))/2.

The programs for A024268, there is no canonical definition to state claims against.
-/

/-! ## A024268.P11896630949087760857

`A009816(n)/2`
-/

namespace A024268.P11896630949087760857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009816 n : ℚ) / 2

end

end A024268.P11896630949087760857

/-!
# A024269: Expansion of tan(x)*sin(tan(x))/2.

The programs for A024269, there is no canonical definition to state claims against.
-/

/-! ## A024269.P13029708219553230520

`A009742(n)/2`
-/

namespace A024269.P13029708219553230520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009742 n : ℚ) / 2

end

end A024269.P13029708219553230520

/-! ## A024269.P12814522547719957481

`2^A008683(A038888(n+1))*A009742(n)`
-/

namespace A024269.P12814522547719957481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A038888 (n + 1)).toNat : ℤ) * (A009742 n : ℚ)

end

end A024269.P12814522547719957481

/-! ## A024269.P10828166382990359826

`A009831(2*n)/(2*A033999(n+1))`
-/

namespace A024269.P10828166382990359826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009831 (2 * n) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A024269.P10828166382990359826

/-!
# A024270: Expansion of sin(x)*sin(sin(x))/2.

The programs for A024270, there is no canonical definition to state claims against.
-/

/-! ## A024270.P3576114039022600797

`A009546(n)/2`
-/

namespace A024270.P3576114039022600797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009546 n : ℚ) / 2

end

end A024270.P3576114039022600797

/-! ## A024270.P14862225619701633151

`A009598(2*n)*A062157(n)/2`
-/

namespace A024270.P14862225619701633151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009598 (2 * n) * A062157 n : ℚ) / 2

end

end A024270.P14862225619701633151

/-! ## A024270.P17386797640325147400

`A009598(A005843(n))/2*A062157(n)`
-/

namespace A024270.P17386797640325147400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009598 (A005843 n).toNat : ℚ) / 2 * (A062157 n : ℚ)

end

end A024270.P17386797640325147400

/-!
# A024271: E.g.f. tan(x)*tan(sin(x))/2, even powers only.

The programs for A024271, there is no canonical definition to state claims against.
-/

/-! ## A024271.P7403066465308860613

`A009748(n)/2`
-/

namespace A024271.P7403066465308860613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009748 n : ℚ) / 2

end

end A024271.P7403066465308860613

/-! ## A024271.P6875891316028458312

`A014682(A009748(n))`
-/

namespace A024271.P6875891316028458312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A009748 n).toNat

end

end A024271.P6875891316028458312

/-!
# A024272: E.g.f. tan(x)*sinh(x)/2 (even powers only).

The programs for A024272, there is no canonical definition to state claims against.
-/

/-! ## A024272.P16932440623323546729

`A009747(n)/2`
-/

namespace A024272.P16932440623323546729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009747 n : ℚ) / 2

end

end A024272.P16932440623323546729

/-! ## A024272.P9617405897551637191

`A009739(2*n)/2`
-/

namespace A024272.P9617405897551637191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009739 (2 * n) : ℚ) / 2

end

end A024272.P9617405897551637191

/-! ## A024272.P2235506480461159558

`A062161(2*n)/2`
-/

namespace A024272.P2235506480461159558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062161 (2 * n) : ℚ) / 2

end

end A024272.P2235506480461159558

/-! ## A024272.P7524177566175948288

`record[A062161(n)/A280193(n)]`
-/

namespace A024272.P7524177566175948288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062161 n : ℚ) / (A280193 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024272.P7524177566175948288

/-! ## A024272.P9844431022331634059

`record[A062161(n)/A280560(n)]`
-/

namespace A024272.P9844431022331634059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062161 n : ℚ) / (A280560 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024272.P9844431022331634059

/-!
# A024273: Expansion of sin(tanh(x))*x/2.

The programs for A024273, there is no canonical definition to state claims against.
-/

/-! ## A024273.P10979989098798633367

`A009525(n)/2`
-/

namespace A024273.P10979989098798633367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009525 n : ℚ) / 2

end

end A024273.P10979989098798633367

/-! ## A024273.P4772585156464993507

`n*A003717(abs(1-n))`
-/

namespace A024273.P4772585156464993507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003717 |1 - (n : ℤ)|.toNat

end

end A024273.P4772585156464993507

/-!
# A024274: Expansion of e.g.f. tan(sinh(x))*x/2 (even powers only).

The programs for A024274, there is no canonical definition to state claims against.
-/

/-! ## A024274.P15178699734044957834

`A009683(n)/2`
-/

namespace A024274.P15178699734044957834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009683 n : ℚ) / 2

end

end A024274.P15178699734044957834

/-! ## A024274.P6144790114397401261

`n*A003716(abs(1-n))`
-/

namespace A024274.P6144790114397401261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003716 |1 - (n : ℤ)|.toNat

end

end A024274.P6144790114397401261

/-!
# A024275: E.g.f: log(1+sinh(x)*sin(x))/2 (even powers only).

The programs for A024275, there is no canonical definition to state claims against.
-/

/-! ## A024275.P15929305293774168814

`A009359(n)/2`
-/

namespace A024275.P15929305293774168814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009359 n : ℚ) / 2

end

end A024275.P15929305293774168814

/-!
# A024276: Expansion of sinh(tan(x)*sinh(x))/2.

The programs for A024276, there is no canonical definition to state claims against.
-/

/-! ## A024276.P9846526466545611625

`A009610(n)/2`
-/

namespace A024276.P9846526466545611625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009610 n : ℚ) / 2

end

end A024276.P9846526466545611625

/-! ## A024276.P16200164909650130469

`(A009251(n)-A009165(n))/2`
-/

namespace A024276.P16200164909650130469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009251 n - A009165 n : ℚ) / 2

end

end A024276.P16200164909650130469

/-!
# A024277: E.g.f.: log(1+tanh(x)*tan(x))/2 (even powers only).

The programs for A024277, there is no canonical definition to state claims against.
-/

/-! ## A024277.P7328937379709739275

`A009398(n)/2`
-/

namespace A024277.P7328937379709739275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009398 n : ℚ) / 2

end

end A024277.P7328937379709739275

/-!
# A024278: Expansion of e.g.f.: tan(tan(x))*sin(x)/2.

The programs for A024278, there is no canonical definition to state claims against.
-/

/-! ## A024278.P3202323207274909979

`A009698(n)/2`
-/

namespace A024278.P3202323207274909979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009698 n : ℚ) / 2

end

end A024278.P3202323207274909979

/-! ## A024278.P14117140161222381711

`abs(A009821(2*n)/2)`
-/

namespace A024278.P14117140161222381711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A009821 (2 * n) : ℚ) / 2|

end

end A024278.P14117140161222381711

/-! ## A024278.P1437625721341477780

`abs(A009821(A005843(n)))/2`
-/

namespace A024278.P1437625721341477780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A009821 (A005843 n).toNat| : ℚ) / 2

end

end A024278.P1437625721341477780

/-! ## A024278.P5460117435666937004

`lcm(A009821(2*n), A033999(n))/2`
-/

namespace A024278.P5460117435666937004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A009821 (2 * n)) (A033999 n) : ℚ) / 2

end

end A024278.P5460117435666937004

/-! ## A024278.P11073315199502603354

`A009821(2*n)*A033999(n+1)/2`
-/

namespace A024278.P11073315199502603354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009821 (2 * n) * A033999 (n + 1) : ℚ) / 2

end

end A024278.P11073315199502603354

/-!
# A024279: Expansion of tan(tan(x)*sinh(x))/2.

The programs for A024279, there is no canonical definition to state claims against.
-/

/-! ## A024279.P11773571545441241136

`A009706(n)/2`
-/

namespace A024279.P11773571545441241136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009706 n : ℚ) / 2

end

end A024279.P11773571545441241136

/-!
# A024280: Expansion of tanh(tan(x)^2)/2.

The programs for A024280, there is no canonical definition to state claims against.
-/

/-! ## A024280.P15949380301151175544

`A009819(n)/2`
-/

namespace A024280.P15949380301151175544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009819 n : ℚ) / 2

end

end A024280.P15949380301151175544

/-! ## A024280.P8869230768759269280

`2^A008683(A125256(n+2))*A009819(n)`
-/

namespace A024280.P8869230768759269280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A125256 (n + 2)).toNat : ℤ) * (A009819 n : ℚ)

end

end A024280.P8869230768759269280

/-!
# A024281: Expansion of sin(tan(x)^2)/2.

The programs for A024281, there is no canonical definition to state claims against.
-/

/-! ## A024281.P396454767937237009

`A009518(n)/2`
-/

namespace A024281.P396454767937237009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009518 n : ℚ) / 2

end

end A024281.P396454767937237009

/-! ## A024281.P4952026572927879329

`2^A342026(A056957(n+1))*A009518(n)`
-/

namespace A024281.P4952026572927879329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A342026 (A056957 (n + 1)).toNat : ℤ) * (A009518 n : ℚ)

end

end A024281.P4952026572927879329

/-!
# A024282: Expansion of e.g.f. tanh(x)*sin(sin(x))/2, even powers only.

The programs for A024282, there is no canonical definition to state claims against.
-/

/-! ## A024282.P5696792686318243517

`A009833(n)/2`
-/

namespace A024282.P5696792686318243517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009833 n : ℚ) / 2

end

end A024282.P5696792686318243517

/-! ## A024282.P5005984842600114600

`A009736(2*n)/(2*A033999(n+1))`
-/

namespace A024282.P5005984842600114600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009736 (2 * n) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A024282.P5005984842600114600

/-! ## A024282.P11978743660953351600

`2^n/2*A237581(n)`
-/

namespace A024282.P11978743660953351600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 2 * (A237581 n : ℚ)

end

end A024282.P11978743660953351600

/-! ## A024282.P7867554351282188188

`floor(A000032(C(3, n²))^(n-1)*A237581(n))`
-/

namespace A024282.P7867554351282188188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 (Nat.choose 3 (n ^ 2)) : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A237581 n : ℚ)⌋

end

end A024282.P7867554351282188188

/-! ## A024282.P5091699316470549467

`A237581(n)*A260739(A000079(n))`
-/

namespace A024282.P5091699316470549467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237581 n * A260739 (A000079 n).toNat

end

end A024282.P5091699316470549467

/-!
# A024283: E.g.f. (1/2) * tan(x)^2 (even powers only).

The programs for A024283, there is no canonical definition to state claims against.
-/

/-! ## A024283.P17402417066066855881

`A009764(n)/2`
-/

namespace A024283.P17402417066066855881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009764 n : ℚ) / 2

end

end A024283.P17402417066066855881

/-! ## A024283.P12369561106094674955

`record[-A009567(n)]`
-/

namespace A024283.P12369561106094674955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A009567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024283.P12369561106094674955

/-! ## A024283.P18105887529458678673

`abs(A009567(2*n))`
-/

namespace A024283.P18105887529458678673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009567 (2 * n)|

end

end A024283.P18105887529458678673

/-! ## A024283.P1568535973810472405

`record[A009123(n+1)]`
-/

namespace A024283.P1568535973810472405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024283.P1568535973810472405

/-! ## A024283.P14209966096448721955

`record[floor(A009006(n)/2)]`
-/

namespace A024283.P14209966096448721955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009006 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024283.P14209966096448721955

/-!
# A024284: Expansion of sin(x)*sin(tanh(x))/2.

The programs for A024284, there is no canonical definition to state claims against.
-/

/-! ## A024284.P1206678159477237257

`A009549(n)/2`
-/

namespace A024284.P1206678159477237257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009549 n : ℚ) / 2

end

end A024284.P1206678159477237257

/-! ## A024284.P4422338292832521886

`A009605(2*n)*A062157(n)/2`
-/

namespace A024284.P4422338292832521886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009605 (2 * n) * A062157 n : ℚ) / 2

end

end A024284.P4422338292832521886

/-! ## A024284.P2817607448643993540

`A009605(2*n)/(2*A033999(n+1))`
-/

namespace A024284.P2817607448643993540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009605 (2 * n) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A024284.P2817607448643993540

/-! ## A024284.P15096934713200659011

`A009605(A005843(n))/2*A062157(n)`
-/

namespace A024284.P15096934713200659011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009605 (A005843 n).toNat : ℚ) / 2 * (A062157 n : ℚ)

end

end A024284.P15096934713200659011

/-!
# A024285: Expansion of tanh(sin(x))*sin(x)/2.

The programs for A024285, there is no canonical definition to state claims against.
-/

/-! ## A024285.P11827812244659061799

`A009795(n)/2`
-/

namespace A024285.P11827812244659061799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009795 n : ℚ) / 2

end

end A024285.P11827812244659061799

/-!
# A024286: Expansion of e.g.f. log(1+sin(x)*x)/2 (even coefficients).

The programs for A024286, there is no canonical definition to state claims against.
-/

/-! ## A024286.P2101490125300429380

`A009341(n)/2`
-/

namespace A024286.P2101490125300429380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009341 n : ℚ) / 2

end

end A024286.P2101490125300429380

/-!
# A024287: Expansion of sinh(tan(x)^2)/2.

The programs for A024287, there is no canonical definition to state claims against.
-/

/-! ## A024287.P14657516789865448511

`A009613(n)/2`
-/

namespace A024287.P14657516789865448511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009613 n : ℚ) / 2

end

end A024287.P14657516789865448511

/-! ## A024287.P17490664953827678868

`(A009256(n)-A009168(n))/2`
-/

namespace A024287.P17490664953827678868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009256 n - A009168 n : ℚ) / 2

end

end A024287.P17490664953827678868

/-! ## A024287.P7443387539238387593

`2^A008683(A007918(n))*A009613(n)`
-/

namespace A024287.P7443387539238387593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A007918 n).toNat : ℤ) * (A009613 n : ℚ)

end

end A024287.P7443387539238387593

/-!
# A024288: Expansion of log(1+tanh(x)*sinh(x))/2.

The programs for A024288, there is no canonical definition to state claims against.
-/

/-! ## A024288.P6795378570011248077

`A009397(n)/2`
-/

namespace A024288.P6795378570011248077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009397 n : ℚ) / 2

end

end A024288.P6795378570011248077

/-!
# A024289: Expansion of e.g.f. of tan(tan(x))*x/2 (even powers only).

The programs for A024289, there is no canonical definition to state claims against.
-/

/-! ## A024289.P16648061713737306147

`A009700(n)/2`
-/

namespace A024289.P16648061713737306147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009700 n : ℚ) / 2

end

end A024289.P16648061713737306147

/-! ## A024289.P11965410946595140760

`n*A003718(abs(1-n))`
-/

namespace A024289.P11965410946595140760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003718 |1 - (n : ℤ)|.toNat

end

end A024289.P11965410946595140760

/-! ## A024289.P12079383603213245230

`2^A008683(A151800(n))*A009700(n)`
-/

namespace A024289.P12079383603213245230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A151800 n).toNat : ℤ) * (A009700 n : ℚ)

end

end A024289.P12079383603213245230

/-!
# A024290: Expansion of tan(tan(x)^2)/2.

The programs for A024290, there is no canonical definition to state claims against.
-/

/-! ## A024290.P2920749706076334738

`A009710(n)/2`
-/

namespace A024290.P2920749706076334738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009710 n : ℚ) / 2

end

end A024290.P2920749706076334738

/-!
# A024291: Expansion of tan(x)*sinh(tan(x))/2.

The programs for A024291, there is no canonical definition to state claims against.
-/

/-! ## A024291.P8740495661349479106

`A009746(n)/2`
-/

namespace A024291.P8740495661349479106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009746 n : ℚ) / 2

end

end A024291.P8740495661349479106

/-! ## A024291.P11872327908796367302

`A009737(2*n)/2`
-/

namespace A024291.P11872327908796367302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009737 (2 * n) : ℚ) / 2

end

end A024291.P11872327908796367302

/-! ## A024291.P11378246660423208331

`record[A009737(A237420(n))/2]`
-/

namespace A024291.P11378246660423208331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009737 (A237420 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024291.P11378246660423208331

/-! ## A024291.P16328101326020130076

`record[A009737(n)/A280560(n)]`
-/

namespace A024291.P16328101326020130076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009737 n : ℚ) / (A280560 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024291.P16328101326020130076

/-! ## A024291.P17575978437620623664

`and(A009737(A004277(n)), A057428(n))/2`
-/

namespace A024291.P17575978437620623664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A009737 (A004277 n).toNat) (A057428 n) : ℚ) / 2

end

end A024291.P17575978437620623664

/-!
# A024292: Expansion of tan(x)*tan(sinh(x))/2.

The programs for A024292, there is no canonical definition to state claims against.
-/

/-! ## A024292.P13859334438076760914

`A009749(n)/2`
-/

namespace A024292.P13859334438076760914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009749 n : ℚ) / 2

end

end A024292.P13859334438076760914

/-!
# A024293: Expansion of e.g.f. log(1 + sin(x)^2)/2 (even-indexed coefficients).

The programs for A024293, there is no canonical definition to state claims against.
-/

/-! ## A024293.P3459646321391975576

`A009344(n)/2`
-/

namespace A024293.P3459646321391975576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009344 n : ℚ) / 2

end

end A024293.P3459646321391975576

/-! ## A024293.P16750547781746091506

`A003704(2*n)*A033999(n)`
-/

namespace A024293.P16750547781746091506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003704 (2 * n) * A033999 n

end

end A024293.P16750547781746091506

/-! ## A024293.P2749031265157596520

`-A003704(2*n)*A062157(n)`
-/

namespace A024293.P2749031265157596520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A003704 (2 * n) * A062157 n)

end

end A024293.P2749031265157596520

/-! ## A024293.P11559793552939195472

`A003704(A005843(n))/(-1)^n`
-/

namespace A024293.P11559793552939195472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003704 (A005843 n).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A024293.P11559793552939195472

/-! ## A024293.P2503423357667876624

`A003704(2*n)*A062157(n+1)`
-/

namespace A024293.P2503423357667876624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003704 (2 * n) * A062157 (n + 1)

end

end A024293.P2503423357667876624

/-!
# A024294: Expansion of tan(tan(x))*sinh(x)/2.

The programs for A024294, there is no canonical definition to state claims against.
-/

/-! ## A024294.P2248477136917335144

`A009699(n)/2`
-/

namespace A024294.P2248477136917335144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009699 n : ℚ) / 2

end

end A024294.P2248477136917335144

/-! ## A024294.P557715105859503773

`A009697(2*n)/2`
-/

namespace A024294.P557715105859503773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009697 (2 * n) : ℚ) / 2

end

end A024294.P557715105859503773

/-! ## A024294.P5084103566424741255

`floor(A009697(A005843(n))/2)`
-/

namespace A024294.P5084103566424741255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009697 (A005843 n).toNat : ℚ) / 2⌋

end

end A024294.P5084103566424741255

/-! ## A024294.P2016073342514651227

`record[A009697(n)/A280560(n)]`
-/

namespace A024294.P2016073342514651227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009697 n : ℚ) / (A280560 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024294.P2016073342514651227

/-! ## A024294.P17461454262733035979

`(A009697(A005843(n))/2)^A000038(n)!`
-/

namespace A024294.P17461454262733035979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A009697 (A005843 n).toNat : ℚ) / 2) ^ Nat.factorial (A000038 n).toNat

end

end A024294.P17461454262733035979

/-!
# A024295: Expansion of log(1+tanh(x)*x)/2.

The programs for A024295, there is no canonical definition to state claims against.
-/

/-! ## A024295.P2844807906910922207

`A009399(n)/2`
-/

namespace A024295.P2844807906910922207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009399 n : ℚ) / 2

end

end A024295.P2844807906910922207

/-!
# A024296: E.g.f.: log(1+tan(x)*sinh(x))/2 (even powers only).

The programs for A024296, there is no canonical definition to state claims against.
-/

/-! ## A024296.P8222502663287185084

`A009378(n)/2`
-/

namespace A024296.P8222502663287185084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009378 n : ℚ) / 2

end

end A024296.P8222502663287185084

/-! ## A024296.P2747866654772883472

`2^A008683(A046389(n+1))*A009378(n)`
-/

namespace A024296.P2747866654772883472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A046389 (n + 1)).toNat : ℤ) * (A009378 n : ℚ)

end

end A024296.P2747866654772883472

/-!
# A024297: Expansion of e.g.f. tan(x)*tan(tan(x))/2 (even powers only).

The programs for A024297, there is no canonical definition to state claims against.
-/

/-! ## A024297.P4592558859837986291

`A009750(n)/2`
-/

namespace A024297.P4592558859837986291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009750 n : ℚ) / 2

end

end A024297.P4592558859837986291

/-!
# A024298: Expansion of log(1+tanh(x)*sin(x))/2.

The programs for A024298, there is no canonical definition to state claims against.
-/

/-! ## A024298.P17984057966988982007

`A009396(n)/2`
-/

namespace A024298.P17984057966988982007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009396 n : ℚ) / 2

end

end A024298.P17984057966988982007

/-!
# A024299: a(n) = (2*n)! [x^(2*n)] log(1 + tanh(x)^2)/2.

The programs for A024299, there is no canonical definition to state claims against.
-/

/-! ## A024299.P10225530437283300003

`A009403(n)/2`
-/

namespace A024299.P10225530437283300003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009403 n : ℚ) / 2

end

end A024299.P10225530437283300003

/-! ## A024299.P10632373047305740317

`A003707(2*n)*A033999(n)`
-/

namespace A024299.P10632373047305740317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003707 (2 * n) * A033999 n

end

end A024299.P10632373047305740317

/-! ## A024299.P784060630535356158

`(1-A010673(n))*A003707(2*n)`
-/

namespace A024299.P784060630535356158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A003707 (2 * n)

end

end A024299.P784060630535356158

/-! ## A024299.P11411949724434651163

`A003707(A005843(n))/A033999(n)`
-/

namespace A024299.P11411949724434651163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003707 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A024299.P11411949724434651163

/-! ## A024299.P10666140991398895487

`A003707(2*n)*A013595(A001511(2*(n+2)))`
-/

namespace A024299.P10666140991398895487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003707 (2 * n) * A013595 (A001511 (2 * (n + 2))).toNat

end

end A024299.P10666140991398895487

