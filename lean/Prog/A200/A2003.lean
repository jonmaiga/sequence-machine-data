import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C002
import Seq.B003.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A200309: Expansion of e.g.f.: 1/(cos(x) - x).

The programs for A200309, there is no canonical definition to state claims against.
-/

/-! ## A200309.P14193884919936043119

`A191005(n+1)/(n+1)`
-/

namespace A200309.P14193884919936043119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191005 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A200309.P14193884919936043119

/-! ## A200309.P14147999621345407217

`A191911(a(n-1)+1)-n` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A200309.P14147999621345407217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A191911 (a (n - 1) + 1).toNat - (n : ℤ)

end

end A200309.P14147999621345407217

/-!
# A200310: a(n) = n-1 for n <= 4, otherwise if n is even then a(n) = a(n-5)+2^(n/2), and if n is odd then a(n) = a(n-1)+2^((n-3)/2).

The programs for A200310, the canonical program `A200310.P6631044154597172478` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200310 has offset 1).

The definition of A200310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200310.P6631044154597172478

`floor((29+5*(-1)^(n+1))*2^((2*(n+1)-7-(-1)^(n+1))/4)/7)-1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A200310

/-- `floor((29+5*(-1)^(n+1))*2^((2*(n+1)-7-(-1)^(n+1))/4)/7)-1` -/
def P6631044154597172478.Spec : Prop :=
  ∀ n, P6631044154597172478.a n = A200310 (n + 1)

theorem P6631044154597172478.correct : P6631044154597172478.Spec := by
  intro n
  simp only [A200310, Nat.add_sub_cancel]

end A200310

/-! ## A200310.P15227365676242880610

`∑[abs(Δ[A003143(n)])]`
-/

namespace A200310.P15227365676242880610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200310.P15227365676242880610

namespace A200310

/-- `∑[abs(Δ[A003143(n)])]` -/
def P15227365676242880610.Spec : Prop :=
  ∀ n, P15227365676242880610.a n = A200310 (n + 1)

end A200310

/-! ## A200310.P12460402494264790543

`record[Δ[A003143(A049084(n+1))]]`
-/

namespace A200310.P12460402494264790543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003143 (A049084 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200310.P12460402494264790543

namespace A200310

/-- `record[Δ[A003143(A049084(n+1))]]` -/
def P12460402494264790543.Spec : Prop :=
  ∀ n, P12460402494264790543.a n = A200310 (n + 1)

end A200310

/-! ## A200310.P7719501060317515685

`∑[Δ[A003143(n)]*A054977(n)]`
-/

namespace A200310.P7719501060317515685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200310.P7719501060317515685

namespace A200310

/-- `∑[Δ[A003143(n)]*A054977(n)]` -/
def P7719501060317515685.Spec : Prop :=
  ∀ n, P7719501060317515685.a n = A200310 (n + 1)

end A200310

/-! ## A200310.P16572524597980821286

`record[A003143(n)-(1-A159075(n))]`
-/

namespace A200310.P16572524597980821286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003143 n - (1 - A159075 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200310.P16572524597980821286

namespace A200310

/-- `record[A003143(n)-(1-A159075(n))]` -/
def P16572524597980821286.Spec : Prop :=
  ∀ n, P16572524597980821286.a n = A200310 (n + 1)

end A200310

/-! ## A200310.P9036251780983309708

`∑[A003143(ϕ²-(ϕ-n))-A003143(n)]`
-/

namespace A200310.P9036251780983309708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003143 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - A003143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200310.P9036251780983309708

namespace A200310

/-- `∑[A003143(ϕ²-(ϕ-n))-A003143(n)]` -/
def P9036251780983309708.Spec : Prop :=
  ∀ n, P9036251780983309708.a n = A200310 (n + 1)

end A200310

/-! ## A200310.P9450423045255233497

`∑[Δ[A003143(n)]%A238375(n)]`
-/

namespace A200310.P9450423045255233497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A238375 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200310.P9450423045255233497

namespace A200310

/-- `∑[Δ[A003143(n)]%A238375(n)]` -/
def P9450423045255233497.Spec : Prop :=
  ∀ n, P9450423045255233497.a n = A200310 (n + 1)

end A200310

/-!
# A200311: Number of comparisons needed for optimal merging of 2 elements with n elements.

The programs for A200311, there is no canonical definition to state claims against.
-/

/-! ## A200311.P600426039764669540

`floor(log2(∑[e*n+4]))`
-/

namespace A200311.P600426039764669540
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (n : ℝ) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A200311.P600426039764669540

/-! ## A200311.P17701440264167376918

`a(floor(n/atan(sqrt(42))))+1` with `a(0)=2`
-/

namespace A200311.P17701440264167376918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ⌊(n : ℝ) / Real.arctan (Real.sqrt (42 : ℝ))⌋.toNat + 1

end

end A200311.P17701440264167376918

/-! ## A200311.P12111345089656241887

`ceil(log2(∑[∑[3-(n%3)²]]))`
-/

namespace A200311.P12111345089656241887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((n % 3) ^ 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A200311.P12111345089656241887

/-! ## A200311.P16256239013114159671

`a(floor(n/abs(2-γ)))+1` with `a(0)=2`
-/

namespace A200311.P16256239013114159671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ⌊(n : ℝ) / |2 - Real.eulerMascheroniConstant|⌋.toNat + 1

end

end A200311.P16256239013114159671

/-! ## A200311.P13289266629161166633

`floor(log2(∪[2*(n+1)², (n+1)²]))+2`
-/

namespace A200311.P13289266629161166633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n) + 2

end

end A200311.P13289266629161166633

/-! ## A200311.P530017727685996988

`ceil(log2(A064609(n+2)))`
-/

namespace A200311.P530017727685996988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A064609 (n + 2) : ℝ)⌉

end

end A200311.P530017727685996988

/-! ## A200311.P8971508667123275486

`ceil(log2(A088827(n+2)))`
-/

namespace A200311.P8971508667123275486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A088827 (n + 2) : ℝ)⌉

end

end A200311.P8971508667123275486

/-! ## A200311.P986977767639481932

`ceil(log2(A143978(n+2)))`
-/

namespace A200311.P986977767639481932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A143978 (n + 2) : ℝ)⌉

end

end A200311.P986977767639481932

/-! ## A200311.P4350779090086067692

`ceil(log2(∑[A006530(n+1)+n]+3))`
-/

namespace A200311.P4350779090086067692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℤ) : ℝ)⌉

end

end A200311.P4350779090086067692

/-! ## A200311.P17275394448680955046

`A029837(A025735(n+1))`
-/

namespace A200311.P17275394448680955046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A025735 (n + 1)).toNat

end

end A200311.P17275394448680955046

/-!
# A200312: a(n) = A000108(n)*A006130(n), where A000108 is the Catalan numbers and A006130(n) = A006130(n-1) + 3*A006130(n-2).

The programs for A200312, the canonical program `A200312.P4261502179475721494` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200312 has offset 0).

The definition of A200312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)*A006130(n)` (program `A200312.P4261502179475721494`, by `A200312.P4261502179475721494.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200312.P4261502179475721494

`A000108(n)*A006130(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A200312

/-- `A000108(n)*A006130(n)` -/
def P4261502179475721494.Spec : Prop :=
  ∀ n, P4261502179475721494.a n = A200312 n

theorem P4261502179475721494.correct : P4261502179475721494.Spec := by
  intro n
  simp only [A200312]

end A200312

/-! ## A200312.P18427420647237718225

`A000108(n)*∑[A052533(n)]`
-/

namespace A200312.P18427420647237718225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200312.P18427420647237718225

namespace A200312

/-- `A000108(n)*∑[A052533(n)]` -/
def P18427420647237718225.Spec : Prop :=
  ∀ n, P18427420647237718225.a n = A200312 n

end A200312

/-! ## A200312.P16159007470903322232

`A006130(n)*A057977(2*n)`
-/

namespace A200312.P16159007470903322232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n * A057977 (2 * n)

end

end A200312.P16159007470903322232

namespace A200312

/-- `A006130(n)*A057977(2*n)` -/
def P16159007470903322232.Spec : Prop :=
  ∀ n, P16159007470903322232.a n = A200312 n

end A200312

/-! ## A200312.P4503743682026460026

`A006130(n)*A059346(A000096(n))`
-/

namespace A200312.P4503743682026460026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n * A059346 (A000096 n).toNat

end

end A200312.P4503743682026460026

namespace A200312

/-- `A006130(n)*A059346(A000096(n))` -/
def P4503743682026460026.Spec : Prop :=
  ∀ n, P4503743682026460026.a n = A200312 n

end A200312

/-! ## A200312.P254641999179016196

`A006130(n)/A001045(n+1)*A200375(n)`
-/

namespace A200312.P254641999179016196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006130 n : ℚ) / (A001045 (n + 1) : ℚ) * (A200375 n : ℚ)

end

end A200312.P254641999179016196

namespace A200312

/-- `A006130(n)/A001045(n+1)*A200375(n)` -/
def P254641999179016196.Spec : Prop :=
  ∀ n, P254641999179016196.a n = (A200312 n : ℚ)

end A200312

/-! ## A200312.P10792883271729690970

`A006130(n)/A000129(n+1)*A098616(n)`
-/

namespace A200312.P10792883271729690970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006130 n : ℚ) / (A000129 (n + 1) : ℚ) * (A098616 n : ℚ)

end

end A200312.P10792883271729690970

namespace A200312

/-- `A006130(n)/A000129(n+1)*A098616(n)` -/
def P10792883271729690970.Spec : Prop :=
  ∀ n, P10792883271729690970.a n = (A200312 n : ℚ)

end A200312

/-! ## A200312.P6980012755511179350

`A006130(n)*A104978(A000217(n))`
-/

namespace A200312.P6980012755511179350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n * A104978 (A000217 n).toNat

end

end A200312.P6980012755511179350

namespace A200312

/-- `A006130(n)*A104978(A000217(n))` -/
def P6980012755511179350.Spec : Prop :=
  ∀ n, P6980012755511179350.a n = A200312 n

end A200312

/-!
# A200313: E.g.f. satisfies: A(x) = exp(x^3*A(x)^3/3!).

The programs for A200313, the canonical program `A200313.P17009517533463118070` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200313 has offset 0).

The definition of A200313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200313.P17009517533463118070

`(3*n+1)^(n-1)*(3*n)!/(6^n*n!)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A200313

/-- `(3*n+1)^(n-1)*(3*n)!/(6^n*n!)` -/
def P17009517533463118070.Spec : Prop :=
  ∀ n, P17009517533463118070.a n = (A200313 n : ℚ)

end A200313

/-! ## A200313.P9795256541281098142

`A287890(n)/A000244(n)`
-/

namespace A200313.P9795256541281098142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287890 n : ℚ) / (A000244 n : ℚ)

end

end A200313.P9795256541281098142

namespace A200313

/-- `A287890(n)/A000244(n)` -/
def P9795256541281098142.Spec : Prop :=
  ∀ n, P9795256541281098142.a n = (A200313 n : ℚ)

end A200313

/-! ## A200313.P3819854369610621027

`A216729(n)/n!`
-/

namespace A200313.P3819854369610621027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216729 n : ℚ) / (Nat.factorial n : ℚ)

end

end A200313.P3819854369610621027

namespace A200313

/-- `A216729(n)/n!` -/
def P3819854369610621027.Spec : Prop :=
  ∀ n, P3819854369610621027.a n = (A200313 n : ℚ)

end A200313

/-! ## A200313.P7947286836819000253

`A216729(n)/A000142(n)`
-/

namespace A200313.P7947286836819000253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216729 n : ℚ) / (A000142 n : ℚ)

end

end A200313.P7947286836819000253

namespace A200313

/-- `A216729(n)/A000142(n)` -/
def P7947286836819000253.Spec : Prop :=
  ∀ n, P7947286836819000253.a n = (A200313 n : ℚ)

end A200313

/-! ## A200313.P10108911654949102640

`A287890(n)/record[A165824(n+1)]`
-/

namespace A200313.P10108911654949102640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287890 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A200313.P10108911654949102640

namespace A200313

/-- `A287890(n)/record[A165824(n+1)]` -/
def P10108911654949102640.Spec : Prop :=
  ∀ n, P10108911654949102640.a n = (A200313 n : ℚ)

end A200313

/-!
# A200316: Number of permutations of [1..n] that can be drawn on a circle.

The programs for A200316, the canonical program `A200316.P8428093091446701407` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200316 has offset 1).

The definition of A200316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200316.P8428093091446701407

`∑[A006012(n)-A004275(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A200316

/-- `∑[A006012(n)-A004275(n)]` -/
def P8428093091446701407.Spec : Prop :=
  ∀ n, P8428093091446701407.a n = A200316 (n + 1)

theorem P8428093091446701407.correct : P8428093091446701407.Spec := by
  intro n
  simp only [A200316, Nat.add_sub_cancel]

end A200316

/-! ## A200316.P18023796321389520486

`∑[A006012(n)-record[A029578(n)]]`
-/

namespace A200316.P18023796321389520486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200316.P18023796321389520486

namespace A200316

/-- `∑[A006012(n)-record[A029578(n)]]` -/
def P18023796321389520486.Spec : Prop :=
  ∀ n, P18023796321389520486.a n = A200316 (n + 1)

end A200316

/-! ## A200316.P791820088470074324

`∑[A006012(n)-record[A186421(n)]]`
-/

namespace A200316.P791820088470074324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200316.P791820088470074324

namespace A200316

/-- `∑[A006012(n)-record[A186421(n)]]` -/
def P791820088470074324.Spec : Prop :=
  ∀ n, P791820088470074324.a n = A200316 (n + 1)

end A200316

/-! ## A200316.P2340544246850483407

`∑[A056236(n)/2-A004275(n)]`
-/

namespace A200316.P2340544246850483407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056236 n : ℚ) / 2 - (A004275 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200316.P2340544246850483407

namespace A200316

/-- `∑[A056236(n)/2-A004275(n)]` -/
def P2340544246850483407.Spec : Prop :=
  ∀ n, P2340544246850483407.a n = (A200316 (n + 1) : ℚ)

end A200316

/-! ## A200316.P2261186756295327757

`∑[A006012(n)-record[A056944(n)]]`
-/

namespace A200316.P2261186756295327757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056944 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200316.P2261186756295327757

namespace A200316

/-- `∑[A006012(n)-record[A056944(n)]]` -/
def P2261186756295327757.Spec : Prop :=
  ∀ n, P2261186756295327757.a n = A200316 (n + 1)

end A200316

/-!
# A200317: E.g.f. satisfies: A(x) = 1+x - cos(A(x)).

The programs for A200317, there is no canonical definition to state claims against.
-/

/-! ## A200317.P9763146183078637965

`A143134(n+1)/2^n`
-/

namespace A200317.P9763146183078637965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143134 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A200317.P9763146183078637965

/-! ## A200317.P1556627074785427524

`abs(A143134(n+1)/A120617(n))`
-/

namespace A200317.P1556627074785427524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143134 (n + 1) : ℚ) / (A120617 n : ℚ)|

end

end A200317.P1556627074785427524

/-! ## A200317.P246275278664644366

`abs(A143134(n+1)/A122803(n))`
-/

namespace A200317.P246275278664644366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143134 (n + 1) : ℚ) / (A122803 n : ℚ)|

end

end A200317.P246275278664644366

/-! ## A200317.P2919827578513163339

`floor(A143134(n+1)/A000079(n))`
-/

namespace A200317.P2919827578513163339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143134 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A200317.P2919827578513163339

/-! ## A200317.P9665516192505607768

`gcd(A143134(n+1)/A000079(n), A151933(n))`
-/

namespace A200317.P9665516192505607768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A143134 (n + 1) : ℚ) / (A000079 n : ℚ))) (A151933 n)

end

end A200317.P9665516192505607768

/-! ## A200317.P13940530106892447347

`char[A204478(n+1)]+A143134(n+1)/A000079(n)`
-/

namespace A200317.P13940530106892447347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204478 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (A143134 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A200317.P13940530106892447347

/-! ## A200317.P2904075387171167290

`A143134(n+1)/A000079(n)*A014963(10*(n+1))`
-/

namespace A200317.P2904075387171167290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143134 (n + 1) : ℚ) / (A000079 n : ℚ) * (A014963 (10 * (n + 1)) : ℚ)

end

end A200317.P2904075387171167290

/-!
# A200318: E.g.f. satisfies: A(x) = x-1 + cosh(A(x)).

The programs for A200318, there is no canonical definition to state claims against.
-/

/-! ## A200318.P229235772237451496

`A143136(n+1)/2^n`
-/

namespace A200318.P229235772237451496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143136 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A200318.P229235772237451496

/-! ## A200318.P6524645361241582422

`abs(A143136(n+1)/A120617(n))`
-/

namespace A200318.P6524645361241582422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143136 (n + 1) : ℚ) / (A120617 n : ℚ)|

end

end A200318.P6524645361241582422

/-! ## A200318.P5603603744429168559

`abs(A143136(n+1)/A122803(n))`
-/

namespace A200318.P5603603744429168559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143136 (n + 1) : ℚ) / (A122803 n : ℚ)|

end

end A200318.P5603603744429168559

/-! ## A200318.P15950195226094333274

`floor(A143136(n+1)/A000079(n))`
-/

namespace A200318.P15950195226094333274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143136 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A200318.P15950195226094333274

/-! ## A200318.P12012200294546947600

`A143136(n+1)/A000079(n)*A007318(C(2, n))`
-/

namespace A200318.P12012200294546947600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143136 (n + 1) : ℚ) / (A000079 n : ℚ) * (A007318 (Nat.choose 2 n) : ℚ)

end

end A200318.P12012200294546947600

/-! ## A200318.P7233332121319172809

`char[A134075(n+1)]+A143136(n+1)/A000079(n)`
-/

namespace A200318.P7233332121319172809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134075 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (A143136 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A200318.P7233332121319172809

/-! ## A200318.P302485557490030420

`A143136(n+1)/A143134(n+1)*A200317(n+1)`
-/

namespace A200318.P302485557490030420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143136 (n + 1) : ℚ) / (A143134 (n + 1) : ℚ) * (A200317 (n + 1) : ℚ)

end

end A200318.P302485557490030420

/-!
# A200319: E.g.f. satisfies: A(x) = x-1 + exp(A(x)^2).

The programs for A200319, there is no canonical definition to state claims against.
-/

/-! ## A200319.P1473515230768794202

`(n+1)*A392788(n)`
-/

namespace A200319.P1473515230768794202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A392788 n

end

end A200319.P1473515230768794202

/-! ## A200319.P2050556485250804657

`A215363(n+1)+A184955(A000124(n))`
-/

namespace A200319.P2050556485250804657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215363 (n + 1) + A184955 (A000124 n).toNat

end

end A200319.P2050556485250804657

/-!
# A200320: E.g.f. satisfies: A(x) = x-1 + exp(A(x)^2/2).

The programs for A200320, there is no canonical definition to state claims against.
-/

/-! ## A200320.P3871828207752582182

`A129329(n)+A008619(A305407(n))`
-/

namespace A200320.P3871828207752582182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129329 n + A008619 (A305407 n).toNat

end

end A200320.P3871828207752582182

/-! ## A200320.P524575942305928699

`A003051(A000142(n)*A002061(n))`
-/

namespace A200320.P524575942305928699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003051 (A000142 n * A002061 n).toNat

end

end A200320.P524575942305928699

/-!
# A200321: Irregular triangle T(n,k) where row n contains the maximal nodes in the graph of XOR connected primes of interval [2^n+1,2^(n+1)-1], n>=4.

The programs for A200321, there is no canonical definition to state claims against.
-/

/-! ## A200321.P18126163522077825565

`A000040(A291171(3*n+2)+A061395(2*n+5))`
-/

namespace A200321.P18126163522077825565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A291171 (3 * n + 2) + A061395 (2 * n + 5)).toNat

end

end A200321.P18126163522077825565

/-!
# A200322: Related to numbers written in base 2 (see below for definition).

The programs for A200322, there is no canonical definition to state claims against.
-/

/-! ## A200322.P11346332812216201081

`A059942(2*A035327(n)+n)`
-/

namespace A200322.P11346332812216201081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059942 (2 * A035327 n + (n : ℤ)).toNat

end

end A200322.P11346332812216201081

/-! ## A200322.P15505663049505625248

`A059942(A035327(n)+n+n)`
-/

namespace A200322.P15505663049505625248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059942 (A035327 n + (n : ℤ) + (n : ℤ)).toNat

end

end A200322.P15505663049505625248

/-! ## A200322.P4460473957344618082

`A059942(A035327(n)+A003817(n))`
-/

namespace A200322.P4460473957344618082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059942 (A035327 n + A003817 n).toNat

end

end A200322.P4460473957344618082

/-! ## A200322.P11573072239676540556

`A059942(A035327(n)+A004277(n))`
-/

namespace A200322.P11573072239676540556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059942 (A035327 n + A004277 n).toNat

end

end A200322.P11573072239676540556

/-! ## A200322.P11118112353464245874

`A059942(A035327(n)+A005843(n))`
-/

namespace A200322.P11118112353464245874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059942 (A035327 n + A005843 n).toNat

end

end A200322.P11118112353464245874

/-! ## A200322.P323039687823322585

`A059942(A008486(n)-A006257(n))`
-/

namespace A200322.P323039687823322585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059942 (A008486 n - A006257 n).toNat

end

end A200322.P323039687823322585

/-!
# A200323: For each composite m = A002808(n), a(n) is the smallest number k for which the equation x^m + (x+k)^m = (x+k+1)^m (mod m) has no solution, where x = 0..m-1.

The programs for A200323, there is no canonical definition to state claims against.
-/

/-! ## A200323.P4881271565770162039

`xor(3, A322452(A098346(n)))`
-/

namespace A200323.P4881271565770162039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A322452 (A098346 n).toNat)

end

end A200323.P4881271565770162039

/-!
# A200324: a(n) = floor(10*(sqrt(prime(n+1)) - sqrt(prime(n)))).

The programs for A200324, the canonical program `A200324.P2863043177810328631` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200324 has offset 1).

The definition of A200324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(10*(sqrt(A000040(n+2))-sqrt(A000040(n+1))))` (program `A200324.P2863043177810328631`, by `A200324.P2863043177810328631.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200324.P2863043177810328631

`floor(10*(sqrt(A000040(n+2))-sqrt(A000040(n+1))))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A200324

/-- `floor(10*(sqrt(A000040(n+2))-sqrt(A000040(n+1))))` -/
def P2863043177810328631.Spec : Prop :=
  ∀ n, P2863043177810328631.a n = A200324 (n + 1)

theorem P2863043177810328631.correct : P2863043177810328631.Spec := by
  intro n
  simp only [A200324, Nat.add_sub_cancel]

end A200324

/-! ## A200324.P8782164808885053195

`floor(5*Δ[sqrt(A001749(n+1))])`
-/

namespace A200324.P8782164808885053195
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001749 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (f1 (n + 1) - f1 n)⌋

end

end A200324.P8782164808885053195

namespace A200324

/-- `floor(5*Δ[sqrt(A001749(n+1))])` -/
def P8782164808885053195.Spec : Prop :=
  ∀ n, P8782164808885053195.a n = A200324 (n + 1)

end A200324

/-! ## A200324.P5079529550623351079

`floor(Δ[10*sqrt(A000040(n+1))])`
-/

namespace A200324.P5079529550623351079
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  10 * Real.sqrt (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A200324.P5079529550623351079

namespace A200324

/-- `floor(Δ[10*sqrt(A000040(n+1))])` -/
def P5079529550623351079.Spec : Prop :=
  ∀ n, P5079529550623351079.a n = A200324 (n + 1)

theorem P5079529550623351079.correct : P5079529550623351079.Spec := by
  intro n
  simp only [A200324, Nat.add_sub_cancel, A200324.P5079529550623351079.f1, A200324.P5079529550623351079.a, A200324.P2863043177810328631.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A200324

/-! ## A200324.P617216187161267469

`floor(Δ[sqrt(20*A001750(n+1))])`
-/

namespace A200324.P617216187161267469
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (20 * A001750 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A200324.P617216187161267469

namespace A200324

/-- `floor(Δ[sqrt(20*A001750(n+1))])` -/
def P617216187161267469.Spec : Prop :=
  ∀ n, P617216187161267469.a n = A200324 (n + 1)

end A200324

/-! ## A200324.P10969722022743274981

`floor(10*Δ[sqrt(A008578(n+2))])`
-/

namespace A200324.P10969722022743274981
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008578 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 * (f1 (n + 1) - f1 n)⌋

end

end A200324.P10969722022743274981

namespace A200324

/-- `floor(10*Δ[sqrt(A008578(n+2))])` -/
def P10969722022743274981.Spec : Prop :=
  ∀ n, P10969722022743274981.a n = A200324 (n + 1)

end A200324

/-!
# A200325: Number of 0..4 arrays x(0..n+2) of n+3 elements with zero n-1st differences.

The programs for A200325, there is no canonical definition to state claims against.
-/

/-! ## A200325.P13978370844849607643

`A200329(∑[n+4]+3)`
-/

namespace A200325.P13978370844849607643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A200325.P13978370844849607643

/-! ## A200325.P8696364174209318032

`or(1, A200329(Δ[A006416(n+2)]))`
-/

namespace A200325.P8696364174209318032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200329 (f1 (n + 1) - f1 n).toNat)

end

end A200325.P8696364174209318032

/-! ## A200325.P2379104478226327519

`A200329(Δ[A006416(n+2)])%A000040(n+1)²`
-/

namespace A200325.P2379104478226327519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200329 (f1 (n + 1) - f1 n).toNat) (A000040 (n + 1) ^ 2)

end

end A200325.P2379104478226327519

/-!
# A200326: Number of 0..5 arrays x(0..n+2) of n+3 elements with zero n-1st differences.

The programs for A200326, there is no canonical definition to state claims against.
-/

/-! ## A200326.P503372305836491794

`A200329(∑[n+5]+6)`
-/

namespace A200326.P503372305836491794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A200326.P503372305836491794

/-!
# A200327: Number of 0..6 arrays x(0..n+2) of n+3 elements with zero n-1st differences.

The programs for A200327, there is no canonical definition to state claims against.
-/

/-! ## A200327.P8934281113320619211

`A200329(A052905(n+3))`
-/

namespace A200327.P8934281113320619211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A052905 (n + 3)).toNat

end

end A200327.P8934281113320619211

/-! ## A200327.P2855193876459377292

`A200329(A056119(n)+16)`
-/

namespace A200327.P2855193876459377292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A056119 n + 16).toNat

end

end A200327.P2855193876459377292

/-! ## A200327.P12129322505747202789

`A200329(eq[3, A219347(n)])`
-/

namespace A200327.P12129322505747202789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200327.P12129322505747202789

/-! ## A200327.P7076319500384732969

`A200329(eq[5, A193592(n)])`
-/

namespace A200327.P7076319500384732969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200327.P7076319500384732969

/-! ## A200327.P16787254451383585744

`A200329(eq[8, A258709(n)])`
-/

namespace A200327.P16787254451383585744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200327.P16787254451383585744

/-!
# A200328: Number of 0..7 arrays x(0..n+2) of n+3 elements with zero n-1st differences.

The programs for A200328, there is no canonical definition to state claims against.
-/

/-! ## A200328.P16600173498537507139

`A200329(A055999(n+4))`
-/

namespace A200328.P16600173498537507139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A055999 (n + 4)).toNat

end

end A200328.P16600173498537507139

/-! ## A200328.P13934262891019058253

`A200329(eq[4, A219347(n)])`
-/

namespace A200328.P13934262891019058253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200328.P13934262891019058253

/-! ## A200328.P13661248010013486326

`A200329(eq[6, A193592(n)])`
-/

namespace A200328.P13661248010013486326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200328.P13661248010013486326

/-! ## A200328.P5462959842309166809

`A200329(Δ[A023551(n+2)])`
-/

namespace A200328.P5462959842309166809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (f1 (n + 1) - f1 n).toNat

end

end A200328.P5462959842309166809

/-! ## A200328.P11741533453003910137

`A200329(A155212(n+3)+2)`
-/

namespace A200328.P11741533453003910137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A155212 (n + 3) + 2).toNat

end

end A200328.P11741533453003910137

/-!
# A200329: T(n,k)=Number of 0..k arrays x(0..n+2) of n+3 elements with zero n-1st differences.

The programs for A200329, there is no canonical definition to state claims against.
-/

/-! ## A200329.P9745108152315108139

`A352661(A225630(n))+A200370(n+1)`
-/

namespace A200329.P9745108152315108139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352661 (A225630 n).toNat + A200370 (n + 1)

end

end A200329.P9745108152315108139

/-! ## A200329.P5392572446528297861

`A352661(A225630(n))+A200443(n+1)`
-/

namespace A200329.P5392572446528297861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352661 (A225630 n).toNat + A200443 (n + 1)

end

end A200329.P5392572446528297861

/-! ## A200329.P8426408665250483092

`A200370(n+1)+A014083(A189111(n+1))`
-/

namespace A200329.P8426408665250483092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1) + A014083 (A189111 (n + 1)).toNat

end

end A200329.P8426408665250483092

/-! ## A200329.P13189726300318322553

`A200443(n+1)+A014083(A189111(n+1))`
-/

namespace A200329.P13189726300318322553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (n + 1) + A014083 (A189111 (n + 1)).toNat

end

end A200329.P13189726300318322553

/-! ## A200329.P4460212141981261113

`A200370(n+1)+A178798(A055080(n+1))`
-/

namespace A200329.P4460212141981261113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1) + A178798 (A055080 (n + 1)).toNat

end

end A200329.P4460212141981261113

/-!
# A200330: Number of 0..n arrays x(0..6) of 7 elements with zero 3rd differences.

The programs for A200330, there is no canonical definition to state claims against.
-/

/-! ## A200330.P15207343141690665164

`A200329(∑[n+3]+7)`
-/

namespace A200330.P15207343141690665164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200330.P15207343141690665164

/-! ## A200330.P8064471945402429786

`or(char[1], A200329(A000124(n+3)+3))`
-/

namespace A200330.P8064471945402429786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A200329 (A000124 (n + 3) + 3).toNat)

end

end A200330.P8064471945402429786

/-! ## A200330.P3908010259539814800

`or(char[1], A200329(A000217(n+3)+4))`
-/

namespace A200330.P3908010259539814800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A200329 (A000217 (n + 3) + 4).toNat)

end

end A200330.P3908010259539814800

/-! ## A200330.P2085803609529914522

`A200329(A055999(n)+10)+and(2, n²)`
-/

namespace A200330.P2085803609529914522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A055999 n + 10).toNat + (Nat.land 2 (n ^ 2) : ℤ)

end

end A200330.P2085803609529914522

/-! ## A200330.P14206133964733740202

`A007318(C(n, 2))*A200329(A000124(n+3)+3)`
-/

namespace A200330.P14206133964733740202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A200329 (A000124 (n + 3) + 3).toNat

end

end A200330.P14206133964733740202

/-!
# A200331: Number of 0..n arrays x(0..7) of 8 elements with zero 4th differences.

The programs for A200331, there is no canonical definition to state claims against.
-/

/-! ## A200331.P1464058867686677467

`A200329(A167499(n+3))`
-/

namespace A200331.P1464058867686677467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A167499 (n + 3)).toNat

end

end A200331.P1464058867686677467

/-! ## A200331.P5932548526447895730

`A200329(A077169(n+5))`
-/

namespace A200331.P5932548526447895730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A077169 (n + 5)).toNat

end

end A200331.P5932548526447895730

/-! ## A200331.P17898104116178652966

`A200329(A155212(n)+13)`
-/

namespace A200331.P17898104116178652966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A155212 n + 13).toNat

end

end A200331.P17898104116178652966

/-! ## A200331.P11836317764607602433

`A200329(A056000(n)+15)`
-/

namespace A200331.P11836317764607602433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A056000 n + 15).toNat

end

end A200331.P11836317764607602433

/-! ## A200331.P15805971480110528160

`A200329(A167614(n+3)+2)`
-/

namespace A200331.P15805971480110528160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A167614 (n + 3) + 2).toNat

end

end A200331.P15805971480110528160

/-!
# A200332: Number of 0..n arrays x(0..8) of 9 elements with zero 5th differences.

The programs for A200332, there is no canonical definition to state claims against.
-/

/-! ## A200332.P10106867191773743281

`A200329(C(n+7, 2)-n)`
-/

namespace A200332.P10106867191773743281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (Nat.choose (n + 7) 2 - n)

end

end A200332.P10106867191773743281

/-! ## A200332.P5576393996443459868

`A200329(A166136(n+4))`
-/

namespace A200332.P5576393996443459868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A166136 (n + 4)).toNat

end

end A200332.P5576393996443459868

/-! ## A200332.P14805986559028514585

`A200329(A056115(n)+21)`
-/

namespace A200332.P14805986559028514585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A056115 n + 21).toNat

end

end A200332.P14805986559028514585

/-! ## A200332.P6994602792811046771

`A200329(A167499(n+4)+1)`
-/

namespace A200332.P6994602792811046771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A167499 (n + 4) + 1).toNat

end

end A200332.P6994602792811046771

/-! ## A200332.P17697226411748510513

`A200329(A167614(n+4)+3)`
-/

namespace A200332.P17697226411748510513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A167614 (n + 4) + 3).toNat

end

end A200332.P17697226411748510513

/-!
# A200333: Number of 0..n arrays x(0..9) of 10 elements with zero 6th differences.

The programs for A200333, there is no canonical definition to state claims against.
-/

/-! ## A200333.P2825783636587411833

`A200329(A167487(n+5))`
-/

namespace A200333.P2825783636587411833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A167487 (n + 5)).toNat

end

end A200333.P2825783636587411833

/-! ## A200333.P14608717139449363239

`A200329(A056119(n)+28)`
-/

namespace A200333.P14608717139449363239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A056119 n + 28).toNat

end

end A200333.P14608717139449363239

/-! ## A200333.P13709342581016747592

`A200329(A077169(n+7)+2)`
-/

namespace A200333.P13709342581016747592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A077169 (n + 7) + 2).toNat

end

end A200333.P13709342581016747592

/-! ## A200333.P10539090562479561607

`A200329(A167614(n+5)+4)`
-/

namespace A200333.P10539090562479561607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A167614 (n + 5) + 4).toNat

end

end A200333.P10539090562479561607

/-! ## A200333.P17086307793040023431

`A200329(A133263(n+6)+5)`
-/

namespace A200333.P17086307793040023431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (A133263 (n + 6) + 5).toNat

end

end A200333.P17086307793040023431

/-!
# A200337: a(n+1) = Sum_{k=0..n, n XOR k <= n} a(k)*a(n XOR k) for n>=0 with a(0)=1.

The programs for A200337, there is no canonical definition to state claims against.
-/

/-! ## A200337.P6401047783178478292

`A187448(A239552(n+1))`
-/

namespace A200337.P6401047783178478292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187448 (A239552 (n + 1)).toNat

end

end A200337.P6401047783178478292

/-! ## A200337.P964783558923903225

`A062177(n)*A218799(A000292(n))`
-/

namespace A200337.P964783558923903225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062177 n * A218799 (A000292 n).toNat

end

end A200337.P964783558923903225

/-! ## A200337.P12073970919043428954

`A000010(A338729(n))*A134478(n)`
-/

namespace A200337.P12073970919043428954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A338729 n).toNat * A134478 n

end

end A200337.P12073970919043428954

/-! ## A200337.P16782488669730602257

`A062177(n)*A371178(A165655(n))`
-/

namespace A200337.P16782488669730602257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062177 n * A371178 (A165655 n).toNat

end

end A200337.P16782488669730602257

/-!
# A200370: T(n,k)=Number of 0..k arrays x(0..n+4) of n+5 elements with zero n-1st differences.

The programs for A200370, there is no canonical definition to state claims against.
-/

/-! ## A200370.P10389879702382115144

`A004736(floor(acot(10*n*(10*n)^n)+n))`
-/

namespace A200370.P10389879702382115144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 ⌊SequenceMachineLib.acot (10 * n * (10 * n) ^ n : ℝ) + (n : ℝ)⌋.toNat

end

end A200370.P10389879702382115144

/-! ## A200370.P7078901866943612775

`(C(comp[∑[n]]-n, 2)-n)%A061315(n+1)+1`
-/

namespace A200370.P7078901866943612775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) (A061315 (n + 1)) + 1

end

end A200370.P7078901866943612775

/-! ## A200370.P4865956450960620038

`A060764(A182944(n+1))`
-/

namespace A200370.P4865956450960620038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (A182944 (n + 1)).toNat

end

end A200370.P4865956450960620038

/-! ## A200370.P15524607016686508645

`A004736(C(A353837(n), ∑[22*n]+1)+n)`
-/

namespace A200370.P15524607016686508645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Nat.choose (A353837 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j + 1) + n)

end

end A200370.P15524607016686508645

/-! ## A200370.P1882870173489213884

`A004736(C(A302025(n+1), A302025(2*n+1))+n)`
-/

namespace A200370.P1882870173489213884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Nat.choose (A302025 (n + 1)).toNat (A302025 (2 * n + 1)).toNat + n)

end

end A200370.P1882870173489213884

/-!
# A200371: Number of 0..n arrays x(0..8) of 9 elements with zero 3rd differences.

The programs for A200371, there is no canonical definition to state claims against.
-/

/-! ## A200371.P2740732512837460517

`A200370(∑[n+3]+7)`
-/

namespace A200371.P2740732512837460517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200371.P2740732512837460517

/-! ## A200371.P1278892156193217136

`record[A200370(A133263(n)+2)]`
-/

namespace A200371.P1278892156193217136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (A133263 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200371.P1278892156193217136

/-! ## A200371.P938542575028071703

`record[A200370(A238531(n)+2)]`
-/

namespace A200371.P938542575028071703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (A238531 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200371.P938542575028071703

/-! ## A200371.P17279860413462180614

`record[A200370(A022856(n+1)+2)]`
-/

namespace A200371.P17279860413462180614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (A022856 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200371.P17279860413462180614

/-! ## A200371.P14091464951572297473

`A200370(A055999(n)+10)+char[21]`
-/

namespace A200371.P14091464951572297473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200371.P14091464951572297473

/-!
# A200372: Number of 0..n arrays x(0..9) of 10 elements with zero 4th differences.

The programs for A200372, there is no canonical definition to state claims against.
-/

/-! ## A200372.P10404009612544053270

`A200370(∑[n+4]+11)`
-/

namespace A200372.P10404009612544053270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A200372.P10404009612544053270

/-! ## A200372.P12475241151305598805

`record[A200370(A167499(char[1]+n))]`
-/

namespace A200372.P12475241151305598805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (A167499 ((if ∃ j, f2 j = n then 1 else 0) + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200372.P12475241151305598805

/-! ## A200372.P3709531861172031244

`and(-1, A200370(A167499(n+3)))`
-/

namespace A200372.P3709531861172031244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A200370 (A167499 (n + 3)).toNat)

end

end A200372.P3709531861172031244

/-! ## A200372.P8999379095540299796

`A200370(A056000(n)+15)+char[47]`
-/

namespace A200372.P8999379095540299796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200372.P8999379095540299796

/-! ## A200372.P5617555103634894514

`A200370(A167499(n+3))%A166136(n+1)`
-/

namespace A200372.P5617555103634894514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200370 (A167499 (n + 3)).toNat) (A166136 (n + 1))

end

end A200372.P5617555103634894514

/-!
# A200373: Number of 0..n arrays x(0..10) of 11 elements with zero 5th differences.

The programs for A200373, there is no canonical definition to state claims against.
-/

/-! ## A200373.P1584771566641426682

`A200370(∑[n+5]+16)`
-/

namespace A200373.P1584771566641426682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A200373.P1584771566641426682

/-! ## A200373.P17301956085435053180

`or(char[1], A200370(A167499(n+4)+1))`
-/

namespace A200373.P17301956085435053180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A200370 (A167499 (n + 4) + 1).toNat)

end

end A200373.P17301956085435053180

/-! ## A200373.P67085890544328650

`A200370(A133263(n+5)+4)+char[23]`
-/

namespace A200373.P67085890544328650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (A133263 (n + 5) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200373.P67085890544328650

/-! ## A200373.P14909222067775614847

`A200370(A166136(n+4))+A178798(n)`
-/

namespace A200373.P14909222067775614847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (A166136 (n + 4)).toNat + A178798 n

end

end A200373.P14909222067775614847

/-!
# A200374: Number of 0..n arrays x(0..11) of 12 elements with zero 6th differences.

The programs for A200374, there is no canonical definition to state claims against.
-/

/-! ## A200374.P6281104040104005503

`A200370(A167487(n+5))`
-/

namespace A200374.P6281104040104005503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (A167487 (n + 5)).toNat

end

end A200374.P6281104040104005503

/-! ## A200374.P1984576523252588865

`A200370(A302537(n)+27)`
-/

namespace A200374.P1984576523252588865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (A302537 n + 27).toNat

end

end A200374.P1984576523252588865

/-! ## A200374.P17676885489585990003

`A200370(A056119(n)+28)`
-/

namespace A200374.P17676885489585990003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (A056119 n + 28).toNat

end

end A200374.P17676885489585990003

/-! ## A200374.P10676169131646720950

`A200370(eq[11, A066657(n)])`
-/

namespace A200374.P10676169131646720950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200374.P10676169131646720950

/-! ## A200374.P339112836242914676

`A200370(A166136(n+5)+1)`
-/

namespace A200374.P339112836242914676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (A166136 (n + 5) + 1).toNat

end

end A200374.P339112836242914676

/-!
# A200375: Product of Catalan and Jacobsthal numbers: a(n) = A000108(n)*A001045(n+1).

The programs for A200375, the canonical program `A200375.P9225317840720584011` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200375 has offset 0).

The definition of A200375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)*A001045(n+1)` (program `A200375.P9225317840720584011`, by `A200375.P9225317840720584011.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200375.P9317418400623616165

`C(2*n, n)/(n+1)*(2^(n+1)+(-1)^n)/3`
-/

namespace A200375.P9317418400623616165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * ((2 ^ (n + 1) : ℤ) + (-1) ^ n : ℚ) / 3

end

end A200375.P9317418400623616165

namespace A200375

/-- `C(2*n, n)/(n+1)*(2^(n+1)+(-1)^n)/3` -/
def P9317418400623616165.Spec : Prop :=
  ∀ n, P9317418400623616165.a n = (A200375 n : ℚ)

end A200375

/-! ## A200375.P9225317840720584011

`A000108(n)*A001045(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A200375

/-- `A000108(n)*A001045(n+1)` -/
def P9225317840720584011.Spec : Prop :=
  ∀ n, P9225317840720584011.a n = A200375 n

theorem P9225317840720584011.correct : P9225317840720584011.Spec := by
  intro n
  simp only [A200375]

end A200375

/-! ## A200375.P9797952336531211818

`C(2*n, n)/(n+1)*2^n-(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A200375.P9797952336531211818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (2 ^ n : ℚ) - (4 - 6 / (n + 1 : ℚ)) * a (n - 1)

end

end A200375.P9797952336531211818

namespace A200375

/-- `C(2*n, n)/(n+1)*2^n-(4-6/(n+1))*a(n-1)` -/
def P9797952336531211818.Spec : Prop :=
  ∀ n, P9797952336531211818.a n = (A200375 n : ℚ)

end A200375

/-! ## A200375.P9009653227005200322

`(A120304(n)+2)*abs(∑[(-2)^n])`
-/

namespace A200375.P9009653227005200322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2) * |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A200375.P9009653227005200322

namespace A200375

/-- `(A120304(n)+2)*abs(∑[(-2)^n])` -/
def P9009653227005200322.Spec : Prop :=
  ∀ n, P9009653227005200322.a n = A200375 n

end A200375

/-! ## A200375.P4982136130812637522

`A090192(2*n+1)*∑[(-2)^n]`
-/

namespace A200375.P4982136130812637522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200375.P4982136130812637522

namespace A200375

/-- `A090192(2*n+1)*∑[(-2)^n]` -/
def P4982136130812637522.Spec : Prop :=
  ∀ n, P4982136130812637522.a n = A200375 n

end A200375

/-! ## A200375.P264199396211297222

`A077925(n)*A168491(n)`
-/

namespace A200375.P264199396211297222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n * A168491 n

end

end A200375.P264199396211297222

namespace A200375

/-- `A077925(n)*A168491(n)` -/
def P264199396211297222.Spec : Prop :=
  ∀ n, P264199396211297222.a n = A200375 n

end A200375

/-! ## A200375.P8193066155004074444

`abs(A000108(n)*A077925(n))`
-/

namespace A200375.P8193066155004074444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000108 n * A077925 n|

end

end A200375.P8193066155004074444

namespace A200375

/-- `abs(A000108(n)*A077925(n))` -/
def P8193066155004074444.Spec : Prop :=
  ∀ n, P8193066155004074444.a n = A200375 n

end A200375

/-! ## A200375.P1552579713787906818

`A000108(n)*∑[A078008(n)]`
-/

namespace A200375.P1552579713787906818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200375.P1552579713787906818

namespace A200375

/-- `A000108(n)*∑[A078008(n)]` -/
def P1552579713787906818.Spec : Prop :=
  ∀ n, P1552579713787906818.a n = A200375 n

end A200375

/-! ## A200375.P5723598574610327393

`∑[A122803(n)]*A168491(n)`
-/

namespace A200375.P5723598574610327393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A168491 n

end

end A200375.P5723598574610327393

namespace A200375

/-- `∑[A122803(n)]*A168491(n)` -/
def P5723598574610327393.Spec : Prop :=
  ∀ n, P5723598574610327393.a n = A200375 n

end A200375

/-! ## A200375.P9681722038320709287

`A000108(n)*Δ[A000975(n)]`
-/

namespace A200375.P9681722038320709287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A200375.P9681722038320709287

namespace A200375

/-- `A000108(n)*Δ[A000975(n)]` -/
def P9681722038320709287.Spec : Prop :=
  ∀ n, P9681722038320709287.a n = A200375 n

end A200375

/-! ## A200375.P1158066810888909973

`A000108(n)*A152046(n+1)`
-/

namespace A200375.P1158066810888909973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A152046 (n + 1)

end

end A200375.P1158066810888909973

namespace A200375

/-- `A000108(n)*A152046(n+1)` -/
def P1158066810888909973.Spec : Prop :=
  ∀ n, P1158066810888909973.a n = A200375 n

end A200375

/-! ## A200375.P3558036160731057851

`A000108(n)*A167167(n+1)`
-/

namespace A200375.P3558036160731057851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A167167 (n + 1)

end

end A200375.P3558036160731057851

namespace A200375

/-- `A000108(n)*A167167(n+1)` -/
def P3558036160731057851.Spec : Prop :=
  ∀ n, P3558036160731057851.a n = A200375 n

end A200375

/-! ## A200375.P11494384171948421539

`A000108(n)*A135318(2*n)`
-/

namespace A200375.P11494384171948421539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A135318 (2 * n)

end

end A200375.P11494384171948421539

namespace A200375

/-- `A000108(n)*A135318(2*n)` -/
def P11494384171948421539.Spec : Prop :=
  ∀ n, P11494384171948421539.a n = A200375 n

end A200375

/-! ## A200375.P9123613762867350837

`∑[1/A122803(n)]*A151374(n)`
-/

namespace A200375.P9123613762867350837
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A122803 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A151374 n : ℚ)

end

end A200375.P9123613762867350837

namespace A200375

/-- `∑[1/A122803(n)]*A151374(n)` -/
def P9123613762867350837.Spec : Prop :=
  ∀ n, P9123613762867350837.a n = (A200375 n : ℚ)

end A200375

/-! ## A200375.P2053185587093510772

`A001045(n+1)*A120588(n+1)`
-/

namespace A200375.P2053185587093510772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A120588 (n + 1)

end

end A200375.P2053185587093510772

namespace A200375

/-- `A001045(n+1)*A120588(n+1)` -/
def P2053185587093510772.Spec : Prop :=
  ∀ n, P2053185587093510772.a n = A200375 n

end A200375

/-! ## A200375.P518472015320335307

`A001045(n+1)*A028304(2*n)`
-/

namespace A200375.P518472015320335307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A028304 (2 * n)

end

end A200375.P518472015320335307

namespace A200375

/-- `A001045(n+1)*A028304(2*n)` -/
def P518472015320335307.Spec : Prop :=
  ∀ n, P518472015320335307.a n = A200375 n

end A200375

/-! ## A200375.P1340873551264752285

`A000108(n)*A112031(2*n+1)`
-/

namespace A200375.P1340873551264752285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A112031 (2 * n + 1)

end

end A200375.P1340873551264752285

namespace A200375

/-- `A000108(n)*A112031(2*n+1)` -/
def P1340873551264752285.Spec : Prop :=
  ∀ n, P1340873551264752285.a n = A200375 n

end A200375

/-! ## A200375.P4836994025359088849

`A000108(n)*A112387(2*n+1)`
-/

namespace A200375.P4836994025359088849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A112387 (2 * n + 1)

end

end A200375.P4836994025359088849

namespace A200375

/-- `A000108(n)*A112387(2*n+1)` -/
def P4836994025359088849.Spec : Prop :=
  ∀ n, P4836994025359088849.a n = A200375 n

end A200375

/-! ## A200375.P17319361316426941482

`A000108(n)*A112447(2*n+1)`
-/

namespace A200375.P17319361316426941482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A112447 (2 * n + 1)

end

end A200375.P17319361316426941482

namespace A200375

/-- `A000108(n)*A112447(2*n+1)` -/
def P17319361316426941482.Spec : Prop :=
  ∀ n, P17319361316426941482.a n = A200375 n

end A200375

/-! ## A200375.P11928939309582893290

`(2*A005578(n)-1)*A000108(n)`
-/

namespace A200375.P11928939309582893290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A005578 n - 1) * A000108 n

end

end A200375.P11928939309582893290

namespace A200375

/-- `(2*A005578(n)-1)*A000108(n)` -/
def P11928939309582893290.Spec : Prop :=
  ∀ n, P11928939309582893290.a n = A200375 n

end A200375

/-!
# A200376: G.f.: 1/sqrt(1-10*x^2 + x^4/(1-8*x^2)) + x/(1-9*x^2).

The programs for A200376, there is no canonical definition to state claims against.
-/

/-! ## A200376.P10537290154116097762

`A373509(2*(n+1))`
-/

namespace A200376.P10537290154116097762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373509 (2 * (n + 1))

end

end A200376.P10537290154116097762

/-! ## A200376.P15177065664110668007

`A373509(A005843(n+1))%A046649(n+2)`
-/

namespace A200376.P15177065664110668007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373509 (A005843 (n + 1)).toNat) (A046649 (n + 2))

end

end A200376.P15177065664110668007

/-! ## A200376.P12355378120444445791

`A277604(∑[n+3])`
-/

namespace A200376.P12355378120444445791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277604 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200376.P12355378120444445791

/-! ## A200376.P11481499187998826921

`or(1, A277604(A141214(n)))`
-/

namespace A200376.P11481499187998826921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A277604 (A141214 n).toNat)

end

end A200376.P11481499187998826921

/-! ## A200376.P5024760790734167423

`or(1, A277604(A055998(n+1)))`
-/

namespace A200376.P5024760790734167423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A277604 (A055998 (n + 1)).toNat)

end

end A200376.P5024760790734167423

/-!
# A200377: G.f.: A(x) = exp( Sum_{n>=1} (Sum_{k=0..2*n} A027907(n,k)^2 * x^k / A(x)^k) * x^n/n ).

The programs for A200377, there is no canonical definition to state claims against.
-/

/-! ## A200377.P11479992049034962737

`A194327(or(A014398(n), A025177(n)))`
-/

namespace A200377.P11479992049034962737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194327 (Int.lor (A014398 n) (A025177 n)).toNat

end

end A200377.P11479992049034962737

/-! ## A200377.P12387073102019745157

`A194327(or(A014398(n), A027907(n)))`
-/

namespace A200377.P12387073102019745157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194327 (Int.lor (A014398 n) (A027907 n)).toNat

end

end A200377.P12387073102019745157

/-! ## A200377.P8835841488516345719

`A194327(or(A014398(n), A109393(n)))`
-/

namespace A200377.P8835841488516345719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194327 (Int.lor (A014398 n) (A109393 n)).toNat

end

end A200377.P8835841488516345719

/-! ## A200377.P13145023598515622747

`A194327(A014398(n)+1-A027907(n))`
-/

namespace A200377.P13145023598515622747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194327 (A014398 n + (1 - A027907 n)).toNat

end

end A200377.P13145023598515622747

/-! ## A200377.P9985055209050169118

`A194327(A014398(n)+1-A109393(n))`
-/

namespace A200377.P9985055209050169118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194327 (A014398 n + (1 - A109393 n)).toNat

end

end A200377.P9985055209050169118

/-!
# A200378: G.f. satisfies: A(x) = H(x*A(x)) where H(x) = A(x/H(x)) is the theta series of planar hexagonal lattice A_2 (A004016).

The programs for A200378, there is no canonical definition to state claims against.
-/

/-! ## A200378.P4286361222625901980

`Δ[A117451(A355353(n))]`
-/

namespace A200378.P4286361222625901980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117451 (A355353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200378.P4286361222625901980

/-!
# A200379: Second row of array defined in A056230.

The programs for A200379, there is no canonical definition to state claims against.
-/

/-! ## A200379.P17360854051937386080

`Δ[A057153(n+1)]`
-/

namespace A200379.P17360854051937386080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200379.P17360854051937386080

/-! ## A200379.P5648793869139480753

`A057153(n+2)-A057153(n+1)`
-/

namespace A200379.P5648793869139480753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057153 (n + 2) - A057153 (n + 1)

end

end A200379.P5648793869139480753

/-! ## A200379.P15223443377313878463

`A056230(∑[n+2])`
-/

namespace A200379.P15223443377313878463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056230 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200379.P15223443377313878463

/-! ## A200379.P11764172412625137465

`Δ[A056230(C(n+2, 2))]`
-/

namespace A200379.P11764172412625137465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056230 (Nat.choose (n + 2) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200379.P11764172412625137465

/-! ## A200379.P13870455821087830024

`Δ[A056230(Δ[A000292(n)])]`
-/

namespace A200379.P13870455821087830024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056230 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200379.P13870455821087830024

/-! ## A200379.P13858203361170337348

`Δ[A056230(A000096(n)+1)]`
-/

namespace A200379.P13858203361170337348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056230 (A000096 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200379.P13858203361170337348

/-! ## A200379.P14007361655249548686

`Δ[record[A056230(n+1)/A056242(n+2)]]`
-/

namespace A200379.P14007361655249548686
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056230 (n + 1) : ℚ) / (A056242 (n + 2) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200379.P14007361655249548686

/-!
# A200380: Expansion of e.g.f. exp(x+x^2-1/6*x^3).

The programs for A200380, there is no canonical definition to state claims against.
-/

/-! ## A200380.P12523265098741293816

`A106466(A007426(∏[or(1, n)]))`
-/

namespace A200380.P12523265098741293816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (A007426 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A200380.P12523265098741293816

/-! ## A200380.P10748585231131501803

`A008619(A136859(n+1)^A047726(n+3))`
-/

namespace A200380.P10748585231131501803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A136859 (n + 1) : ℚ) ^ (A047726 (n + 3) : ℤ))).toNat

end

end A200380.P10748585231131501803

/-!
# A200381: Products of Lucas numbers.

The programs for A200381, there is no canonical definition to state claims against.
-/

/-! ## A200381.P13751862784083171131

`eq[char[A200995(n+1)], A000007(n)]`
-/

namespace A200381.P13751862784083171131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200995 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A200381.P13751862784083171131

/-! ## A200381.P6126806506540044981

`eq[char[A200995(n+1)], A000038(n)]`
-/

namespace A200381.P6126806506540044981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200995 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A200381.P6126806506540044981

/-! ## A200381.P16374454206554977732

`eq[char[A200995(n+1)], A263013(n+2)]`
-/

namespace A200381.P16374454206554977732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200995 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A200381.P16374454206554977732

/-! ## A200381.P2241113915683215974

`lt[0, A308263(n+1)]+1`
-/

namespace A200381.P2241113915683215974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A200381.P2241113915683215974

/-! ## A200381.P9779763190890138683

`lt[A000007(n), A308263(A028310(n))]`
-/

namespace A200381.P9779763190890138683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308263 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A200381.P9779763190890138683

