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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.B011.C001
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
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
# A081400: a(n) = d(n) - bigomega(n) - A005361(n).

The programs for A081400, the canonical program `A081400.P8046056568042130816` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081400 has offset 1).

The definition of A081400 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001222, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081400.P8046056568042130816

`A000005(n+1)-A001222(n+1)-A005361(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A081400

/-- `A000005(n+1)-A001222(n+1)-A005361(n+1)` -/
def P8046056568042130816.Spec : Prop :=
  ∀ n, P8046056568042130816.a n = A081400 (n + 1)

theorem P8046056568042130816.correct : P8046056568042130816.Spec := by
  intro n
  simp only [A081400, Nat.add_sub_cancel]

end A081400

/-! ## A081400.P305268470882128214

`A081707(n+1)-A005361(n+1)`
-/

namespace A081400.P305268470882128214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (n + 1) - A005361 (n + 1)

end

end A081400.P305268470882128214

namespace A081400

/-- `A081707(n+1)-A005361(n+1)` -/
def P305268470882128214.Spec : Prop :=
  ∀ n, P305268470882128214.a n = A081400 (n + 1)

end A081400

/-! ## A081400.P6979999940311395999

`A183093(n+1)-A001222(n+1)`
-/

namespace A081400.P6979999940311395999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183093 (n + 1) - A001222 (n + 1)

end

end A081400.P6979999940311395999

namespace A081400

/-- `A183093(n+1)-A001222(n+1)` -/
def P6979999940311395999.Spec : Prop :=
  ∀ n, P6979999940311395999.a n = A081400 (n + 1)

end A081400

/-! ## A081400.P4860576362697629791

`A183095(n+1)-A073093(n+1)`
-/

namespace A081400.P4860576362697629791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183095 (n + 1) - A073093 (n + 1)

end

end A081400.P4860576362697629791

namespace A081400

/-- `A183095(n+1)-A073093(n+1)` -/
def P4860576362697629791.Spec : Prop :=
  ∀ n, P4860576362697629791.a n = A081400 (n + 1)

end A081400

/-! ## A081400.P2418192770711760367

`A183095(n+1)-(A001222(n+1)+1)`
-/

namespace A081400.P2418192770711760367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183095 (n + 1) - (A001222 (n + 1) + 1)

end

end A081400.P2418192770711760367

namespace A081400

/-- `A183095(n+1)-(A001222(n+1)+1)` -/
def P2418192770711760367.Spec : Prop :=
  ∀ n, P2418192770711760367.a n = A081400 (n + 1)

end A081400

/-! ## A081400.P12262048630371061179

`A081707(n+1)-(A183094(n+1)+1)`
-/

namespace A081400.P12262048630371061179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (n + 1) - (A183094 (n + 1) + 1)

end

end A081400.P12262048630371061179

namespace A081400

/-- `A081707(n+1)-(A183094(n+1)+1)` -/
def P12262048630371061179.Spec : Prop :=
  ∀ n, P12262048630371061179.a n = A081400 (n + 1)

end A081400

/-! ## A081400.P16737389569944786851

`A000005(n+1)-(A001222(n+1)+A000005(A003557(n+1)))`
-/

namespace A081400.P16737389569944786851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A001222 (n + 1) + A000005 (A003557 (n + 1)).toNat)

end

end A081400.P16737389569944786851

namespace A081400

/-- `A000005(n+1)-(A001222(n+1)+A000005(A003557(n+1)))` -/
def P16737389569944786851.Spec : Prop :=
  ∀ n, P16737389569944786851.a n = A081400 (n + 1)

end A081400

/-! ## A081400.P15341544387981068387

`A007814(A293524(n+1))-A001222(n+1)`
-/

namespace A081400.P15341544387981068387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A293524 (n + 1)).toNat - A001222 (n + 1)

end

end A081400.P15341544387981068387

namespace A081400

/-- `A007814(A293524(n+1))-A001222(n+1)` -/
def P15341544387981068387.Spec : Prop :=
  ∀ n, P15341544387981068387.a n = A081400 (n + 1)

end A081400

/-!
# A081401: Pseudologarithm (A056239) of n!: a(n) = A056239(A000142(n)).

The programs for A081401, the canonical program `A081401.P11485002183399407458` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081401 has offset 1).

The definition of A081401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081401.P11485002183399407458

`∑[A056239(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A081401

/-- `∑[A056239(n+1)]` -/
def P11485002183399407458.Spec : Prop :=
  ∀ n, P11485002183399407458.a n = A081401 (n + 1)

theorem P11485002183399407458.correct : P11485002183399407458.Spec := by
  intro n
  simp only [A081401, Nat.add_sub_cancel]

end A081401

/-! ## A081401.P4505348369371797721

`∑[A316436(2*(n+1))-1]`
-/

namespace A081401.P4505348369371797721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081401.P4505348369371797721

namespace A081401

/-- `∑[A316436(2*(n+1))-1]` -/
def P4505348369371797721.Spec : Prop :=
  ∀ n, P4505348369371797721.a n = A081401 (n + 1)

end A081401

/-! ## A081401.P7781983828356328605

`∑[1-A178503(n+1)+n]`
-/

namespace A081401.P7781983828356328605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178503 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081401.P7781983828356328605

namespace A081401

/-- `∑[1-A178503(n+1)+n]` -/
def P7781983828356328605.Spec : Prop :=
  ∀ n, P7781983828356328605.a n = A081401 (n + 1)

end A081401

/-! ## A081401.P10210795661752188495

`∑[A380345(n+1)-(n+1)]`
-/

namespace A081401.P10210795661752188495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380345 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081401.P10210795661752188495

namespace A081401

/-- `∑[A380345(n+1)-(n+1)]` -/
def P10210795661752188495.Spec : Prop :=
  ∀ n, P10210795661752188495.a n = A081401 (n + 1)

end A081401

/-! ## A081401.P10487938946988540591

`∑[Δ[n²]-n-A178503(Δ[n²]-n)]`
-/

namespace A081401.P10487938946988540591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ) - A178503 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081401.P10487938946988540591

namespace A081401

/-- `∑[Δ[n²]-n-A178503(Δ[n²]-n)]` -/
def P10487938946988540591.Spec : Prop :=
  ∀ n, P10487938946988540591.a n = A081401 (n + 1)

end A081401

/-! ## A081401.P16929867135881213593

`∑[A304739(A064664(n+1))]`
-/

namespace A081401.P16929867135881213593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304739 (A064664 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081401.P16929867135881213593

namespace A081401

/-- `∑[A304739(A064664(n+1))]` -/
def P16929867135881213593.Spec : Prop :=
  ∀ n, P16929867135881213593.a n = A081401 (n + 1)

end A081401

/-! ## A081401.P11354290911541547042

`A056239(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A081401.P11354290911541547042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056239 (n + 1) + a (A023443 n).toNat

end

end A081401.P11354290911541547042

namespace A081401

/-- `A056239(n+1)+a(A023443(n))` -/
def P11354290911541547042.Spec : Prop :=
  ∀ n, P11354290911541547042.a n = A081401 (n + 1)

end A081401

/-! ## A081401.P14737313648933751455

`∑[A318995(n+1)+Δ[A022559(n)]]`
-/

namespace A081401.P14737313648933751455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081401.P14737313648933751455

namespace A081401

/-- `∑[A318995(n+1)+Δ[A022559(n)]]` -/
def P14737313648933751455.Spec : Prop :=
  ∀ n, P14737313648933751455.a n = A081401 (n + 1)

end A081401

/-! ## A081401.P4179641693617755483

`∑[A318995(n+1)+A001222(n+1)]`
-/

namespace A081401.P4179641693617755483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081401.P4179641693617755483

namespace A081401

/-- `∑[A318995(n+1)+A001222(n+1)]` -/
def P4179641693617755483.Spec : Prop :=
  ∀ n, P4179641693617755483.a n = A081401 (n + 1)

end A081401

/-! ## A081401.P12651924481104687717

`A022559(n+1)+∑[A318995(n+1)]`
-/

namespace A081401.P12651924481104687717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081401.P12651924481104687717

namespace A081401

/-- `A022559(n+1)+∑[A318995(n+1)]` -/
def P12651924481104687717.Spec : Prop :=
  ∀ n, P12651924481104687717.a n = A081401 (n + 1)

end A081401

/-! ## A081401.P11735361462525028402

`∑[A325166(n+1)+A297113(n+1)]`
-/

namespace A081401.P11735361462525028402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (n + 1) + A297113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081401.P11735361462525028402

namespace A081401

/-- `∑[A325166(n+1)+A297113(n+1)]` -/
def P11735361462525028402.Spec : Prop :=
  ∀ n, P11735361462525028402.a n = A081401 (n + 1)

end A081401

/-! ## A081401.P10432695522626855001

`∑[A339896(n+1)+A339894(n+1)]`
-/

namespace A081401.P10432695522626855001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339896 (n + 1) + A339894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081401.P10432695522626855001

namespace A081401

/-- `∑[A339896(n+1)+A339894(n+1)]` -/
def P10432695522626855001.Spec : Prop :=
  ∀ n, P10432695522626855001.a n = A081401 (n + 1)

end A081401

/-! ## A081401.P17287363426554752418

`∑[A318994(n+1)-A001222(n+1)]`
-/

namespace A081401.P17287363426554752418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (n + 1) - A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081401.P17287363426554752418

namespace A081401

/-- `∑[A318994(n+1)-A001222(n+1)]` -/
def P17287363426554752418.Spec : Prop :=
  ∀ n, P17287363426554752418.a n = A081401 (n + 1)

end A081401

/-! ## A081401.P15671551543076758079

`∑[A000005(n+1)-A325794(n+1)]`
-/

namespace A081401.P15671551543076758079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A325794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081401.P15671551543076758079

namespace A081401

/-- `∑[A000005(n+1)-A325794(n+1)]` -/
def P15671551543076758079.Spec : Prop :=
  ∀ n, P15671551543076758079.a n = A081401 (n + 1)

end A081401

/-! ## A081401.P15201585815563594986

`∑[log2(A248692(n+1))]`
-/

namespace A081401.P15201585815563594986
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A248692 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081401.P15201585815563594986

namespace A081401

/-- `∑[log2(A248692(n+1))]` -/
def P15201585815563594986.Spec : Prop :=
  ∀ n, P15201585815563594986.a n = (A081401 (n + 1) : ℝ)

end A081401

/-! ## A081401.P10562668634767646466

`∑[A318995(A003961(n+1))]`
-/

namespace A081401.P10562668634767646466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A003961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081401.P10562668634767646466

namespace A081401

/-- `∑[A318995(A003961(n+1))]` -/
def P10562668634767646466.Spec : Prop :=
  ∀ n, P10562668634767646466.a n = A081401 (n + 1)

end A081401

/-! ## A081401.P9276650312556725015

`∑[A318995(A045965(n+1))]`
-/

namespace A081401.P9276650312556725015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A045965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081401.P9276650312556725015

namespace A081401

/-- `∑[A318995(A045965(n+1))]` -/
def P9276650312556725015.Spec : Prop :=
  ∀ n, P9276650312556725015.a n = A081401 (n + 1)

end A081401

/-!
# A081402: a(n) = A008475(n!).

The programs for A081402, the canonical program `A081402.P14396317658812618271` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081402 has offset 1).

The definition of A081402 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081402.P14396317658812618271

`A008475((n+1)!)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A081402

/-- `A008475((n+1)!)` -/
def P14396317658812618271.Spec : Prop :=
  ∀ n, P14396317658812618271.a n = A081402 (n + 1)

theorem P14396317658812618271.correct : P14396317658812618271.Spec := by
  intro n
  simp only [A081402, Nat.add_sub_cancel]

end A081402

/-!
# A081403: a(n) = A008475(n^2).

The programs for A081403, the canonical program `A081403.P13912223232092124024` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081403 has offset 1).

The definition of A081403 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081403.P13912223232092124024

`A008475((n+1)²)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A081403

/-- `A008475((n+1)²)` -/
def P13912223232092124024.Spec : Prop :=
  ∀ n, P13912223232092124024.a n = A081403 (n + 1)

theorem P13912223232092124024.correct : P13912223232092124024.Spec := by
  intro n
  simp only [A081403, Nat.add_sub_cancel]

end A081403

/-! ## A081403.P15386893673157044170

`∑{p}[n+1, (#^val(n+1, #))²]`
-/

namespace A081403.P15386893673157044170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p ^ SequenceMachineLib.valuation (n + 1) p) ^ 2

end

end A081403.P15386893673157044170

namespace A081403

/-- `∑{p}[n+1, (#^val(n+1, #))²]` -/
def P15386893673157044170.Spec : Prop :=
  ∀ n, (P15386893673157044170.a n : ℤ) = A081403 (n + 1)

end A081403

/-! ## A081403.P5713063197601828112

`∑{p}[n+1, A000290(#^val(n+1, #))]`
-/

namespace A081403.P5713063197601828112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000290 (p ^ SequenceMachineLib.valuation (n + 1) p)

end

end A081403.P5713063197601828112

namespace A081403

/-- `∑{p}[n+1, A000290(#^val(n+1, #))]` -/
def P5713063197601828112.Spec : Prop :=
  ∀ n, P5713063197601828112.a n = A081403 (n + 1)

end A081403

/-! ## A081403.P15607114496490518230

`(n+1)²-A086664((n+1)²)`
-/

namespace A081403.P15607114496490518230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A086664 ((n + 1) ^ 2)

end

end A081403.P15607114496490518230

namespace A081403

/-- `(n+1)²-A086664((n+1)²)` -/
def P15607114496490518230.Spec : Prop :=
  ∀ n, P15607114496490518230.a n = A081403 (n + 1)

end A081403

/-! ## A081403.P1496701203845238221

`A008475((n+1)^2)%A033286(A003485(n))`
-/

namespace A081403.P1496701203845238221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008475 ((n + 1) ^ 2)) (A033286 (A003485 n).toNat)

end

end A081403.P1496701203845238221

namespace A081403

/-- `A008475((n+1)^2)%A033286(A003485(n))` -/
def P1496701203845238221.Spec : Prop :=
  ∀ n, P1496701203845238221.a n = A081403 (n + 1)

end A081403

/-! ## A081403.P7454014549978224473

`A286875((n+1)²)`
-/

namespace A081403.P7454014549978224473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286875 ((n + 1) ^ 2)

end

end A081403.P7454014549978224473

namespace A081403

/-- `A286875((n+1)²)` -/
def P7454014549978224473.Spec : Prop :=
  ∀ n, P7454014549978224473.a n = A081403 (n + 1)

end A081403

/-! ## A081403.P13662544203403362094

`∑{d}[(n+1)², A092509(#)]`
-/

namespace A081403.P13662544203403362094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092509 d

end

end A081403.P13662544203403362094

namespace A081403

/-- `∑{d}[(n+1)², A092509(#)]` -/
def P13662544203403362094.Spec : Prop :=
  ∀ n, P13662544203403362094.a n = A081403 (n + 1)

end A081403

/-! ## A081403.P16230728354566287297

`A340901((n+1)²)`
-/

namespace A081403.P16230728354566287297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340901 ((n + 1) ^ 2)

end

end A081403.P16230728354566287297

namespace A081403

/-- `A340901((n+1)²)` -/
def P16230728354566287297.Spec : Prop :=
  ∀ n, P16230728354566287297.a n = A081403 (n + 1)

end A081403

/-! ## A081403.P9336866585414997833

`A159077((n+1)²)-1`
-/

namespace A081403.P9336866585414997833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 ((n + 1) ^ 2) - 1

end

end A081403.P9336866585414997833

namespace A081403

/-- `A159077((n+1)²)-1` -/
def P9336866585414997833.Spec : Prop :=
  ∀ n, P9336866585414997833.a n = A081403 (n + 1)

end A081403

/-! ## A081403.P6245684140927765073

`abs(A340901(∑[2*n+1]))`
-/

namespace A081403.P6245684140927765073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A340901 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A081403.P6245684140927765073

namespace A081403

/-- `abs(A340901(∑[2*n+1]))` -/
def P6245684140927765073.Spec : Prop :=
  ∀ n, P6245684140927765073.a n = A081403 (n + 1)

end A081403

/-! ## A081403.P8010424795798737518

`A023443(A159077((n+1)²))`
-/

namespace A081403.P8010424795798737518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A159077 ((n + 1) ^ 2)).toNat

end

end A081403.P8010424795798737518

namespace A081403

/-- `A023443(A159077((n+1)²))` -/
def P8010424795798737518.Spec : Prop :=
  ∀ n, P8010424795798737518.a n = A081403 (n + 1)

end A081403

/-! ## A081403.P3674003543870569893

`A087156(A222416((n+1)²))`
-/

namespace A081403.P3674003543870569893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A222416 ((n + 1) ^ 2)).toNat

end

end A081403.P3674003543870569893

namespace A081403

/-- `A087156(A222416((n+1)²))` -/
def P3674003543870569893.Spec : Prop :=
  ∀ n, P3674003543870569893.a n = A081403 (n + 1)

end A081403

/-!
# A081404: a(n) = A008475(prime(n)-1).

The programs for A081404, the canonical program `A081404.P4452157079477573813` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081404 has offset 1).

The definition of A081404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081404.P4452157079477573813

`A008475(A006093(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A081404

/-- `A008475(A006093(n+1))` -/
def P4452157079477573813.Spec : Prop :=
  ∀ n, P4452157079477573813.a n = A081404 (n + 1)

theorem P4452157079477573813.correct : P4452157079477573813.Spec := by
  intro n
  simp only [A081404, Nat.add_sub_cancel]

end A081404

/-! ## A081404.P5887185960127579917

`A008475(Δ[A007504(n)]-1)`
-/

namespace A081404.P5887185960127579917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (n + 1) - f1 n - 1).toNat

end

end A081404.P5887185960127579917

namespace A081404

/-- `A008475(Δ[A007504(n)]-1)` -/
def P5887185960127579917.Spec : Prop :=
  ∀ n, P5887185960127579917.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P11292128706792546450

`A008475(record[A000010(n+1)])`
-/

namespace A081404.P11292128706792546450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081404.P11292128706792546450

namespace A081404

/-- `A008475(record[A000010(n+1)])` -/
def P11292128706792546450.Spec : Prop :=
  ∀ n, P11292128706792546450.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P10094437108952897681

`A008475(record[A192133(n+1)])`
-/

namespace A081404.P10094437108952897681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081404.P10094437108952897681

namespace A081404

/-- `A008475(record[A192133(n+1)])` -/
def P10094437108952897681.Spec : Prop :=
  ∀ n, P10094437108952897681.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P14378300857986280865

`A008475(A040976(n+1)+1)`
-/

namespace A081404.P14378300857986280865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A040976 (n + 1) + 1).toNat

end

end A081404.P14378300857986280865

namespace A081404

/-- `A008475(A040976(n+1)+1)` -/
def P14378300857986280865.Spec : Prop :=
  ∀ n, P14378300857986280865.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P10870804344122223082

`A008475(A000040(n+1)-1)`
-/

namespace A081404.P10870804344122223082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A000040 (n + 1) - 1).toNat

end

end A081404.P10870804344122223082

namespace A081404

/-- `A008475(A000040(n+1)-1)` -/
def P10870804344122223082.Spec : Prop :=
  ∀ n, P10870804344122223082.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P14864320107770553899

`A008475(A052147(n+1)-3)`
-/

namespace A081404.P14864320107770553899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A052147 (n + 1) - 3).toNat

end

end A081404.P14864320107770553899

namespace A081404

/-- `A008475(A052147(n+1)-3)` -/
def P14864320107770553899.Spec : Prop :=
  ∀ n, P14864320107770553899.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P15014872650728913457

`A008475(A014689(n+1)+n)`
-/

namespace A081404.P15014872650728913457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A014689 (n + 1) + (n : ℤ)).toNat

end

end A081404.P15014872650728913457

namespace A081404

/-- `A008475(A014689(n+1)+n)` -/
def P15014872650728913457.Spec : Prop :=
  ∀ n, P15014872650728913457.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P1119729422076510902

`A008475(record[A006530(n+2)-1])`
-/

namespace A081404.P1119729422076510902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081404.P1119729422076510902

namespace A081404

/-- `A008475(record[A006530(n+2)-1])` -/
def P1119729422076510902.Spec : Prop :=
  ∀ n, P1119729422076510902.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P2597980985760468182

`A008475(record[A008472(n+2)-1])`
-/

namespace A081404.P2597980985760468182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081404.P2597980985760468182

namespace A081404

/-- `A008475(record[A008472(n+2)-1])` -/
def P2597980985760468182.Spec : Prop :=
  ∀ n, P2597980985760468182.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P4657555541842953310

`A008475(eq[1, A001222(n+1)])`
-/

namespace A081404.P4657555541842953310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081404.P4657555541842953310

namespace A081404

/-- `A008475(eq[1, A001222(n+1)])` -/
def P4657555541842953310.Spec : Prop :=
  ∀ n, P4657555541842953310.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P6505728327207968678

`A008475(eq[2, A000005(n+1)])`
-/

namespace A081404.P6505728327207968678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081404.P6505728327207968678

namespace A081404

/-- `A008475(eq[2, A000005(n+1)])` -/
def P6505728327207968678.Spec : Prop :=
  ∀ n, P6505728327207968678.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P11836664248852378453

`A008475(lt[n, A008472(n+1)])`
-/

namespace A081404.P11836664248852378453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A081404.P11836664248852378453

namespace A081404

/-- `A008475(lt[n, A008472(n+1)])` -/
def P11836664248852378453.Spec : Prop :=
  ∀ n, P11836664248852378453.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P18080613825817669731

`A008475(eq[1, A001222(3*n-(n-2))-1])`
-/

namespace A081404.P18080613825817669731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081404.P18080613825817669731

namespace A081404

/-- `A008475(eq[1, A001222(3*n-(n-2))-1])` -/
def P18080613825817669731.Spec : Prop :=
  ∀ n, P18080613825817669731.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P3546136247336119989

`A008475(record[p?[A008475(n+1)]-1])`
-/

namespace A081404.P3546136247336119989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081404.P3546136247336119989

namespace A081404

/-- `A008475(record[p?[A008475(n+1)]-1])` -/
def P3546136247336119989.Spec : Prop :=
  ∀ n, P3546136247336119989.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P4900310663307170971

`A008475(record[A225679(n+1)])`
-/

namespace A081404.P4900310663307170971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081404.P4900310663307170971

namespace A081404

/-- `A008475(record[A225679(n+1)])` -/
def P4900310663307170971.Spec : Prop :=
  ∀ n, P4900310663307170971.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P8313646714120439576

`A008475(lt[n, ∑{p}[n+1, #]])`
-/

namespace A081404.P8313646714120439576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A081404.P8313646714120439576

namespace A081404

/-- `A008475(lt[n, ∑{p}[n+1, #]])` -/
def P8313646714120439576.Spec : Prop :=
  ∀ n, P8313646714120439576.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P14774843951594057021

`A008475(record[A067240(n+2)])`
-/

namespace A081404.P14774843951594057021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067240 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081404.P14774843951594057021

namespace A081404

/-- `A008475(record[A067240(n+2)])` -/
def P14774843951594057021.Spec : Prop :=
  ∀ n, P14774843951594057021.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P1688954869866462818

`A008475(eq[1, A008476(n+1)])`
-/

namespace A081404.P1688954869866462818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081404.P1688954869866462818

namespace A081404

/-- `A008475(eq[1, A008476(n+1)])` -/
def P1688954869866462818.Spec : Prop :=
  ∀ n, P1688954869866462818.a n = A081404 (n + 1)

end A081404

/-! ## A081404.P17038290757712884330

`A008475(eq[1, A032741(n+1)])`
-/

namespace A081404.P17038290757712884330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081404.P17038290757712884330

namespace A081404

/-- `A008475(eq[1, A032741(n+1)])` -/
def P17038290757712884330.Spec : Prop :=
  ∀ n, P17038290757712884330.a n = A081404 (n + 1)

end A081404

/-!
# A081405: a(n) = (n+1)*a(n-2) with a(0) = a(1) = 1.

The programs for A081405, the canonical program `A081405.P13397297965954631712` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081405 has offset 0).

The definition of A081405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*a(n-2)` (program `A081405.P13397297965954631712`, by `A081405.P13397297965954631712.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081405.P13397297965954631712

`(n+1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081405

/-- `(n+1)*a(n-2)` -/
def P13397297965954631712.Spec : Prop :=
  ∀ n, (P13397297965954631712.a n : ℤ) = A081405 n

theorem P13397297965954631712.correct : P13397297965954631712.Spec := by
  intro n
  simp only [A081405]

end A081405

/-! ## A081405.P5708545922971003254

`∏[(n+1)/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A081405.P5708545922971003254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n + 1 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081405.P5708545922971003254

namespace A081405

/-- `∏[(n+1)/a(n-1)]` -/
def P5708545922971003254.Spec : Prop :=
  ∀ n, P5708545922971003254.a n = (A081405 n : ℚ)

end A081405

/-! ## A081405.P1918497018503306723

`-(xor(n, -1)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A081405.P1918497018503306723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  -(Int.xor (n : ℤ) (-1) * a (n - 2))

end

end A081405.P1918497018503306723

namespace A081405

/-- `-(xor(n, -1)*a(n-2))` -/
def P1918497018503306723.Spec : Prop :=
  ∀ n, P1918497018503306723.a n = A081405 n

end A081405

/-! ## A081405.P5852620372066379152

`Δ[abs(∑[n*a(n-2)])]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A081405.P5852620372066379152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  n * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081405.P5852620372066379152

namespace A081405

/-- `Δ[abs(∑[n*a(n-2)])]` -/
def P5852620372066379152.Spec : Prop :=
  ∀ n, P5852620372066379152.a n = A081405 n

end A081405

/-! ## A081405.P16477040182516127081

`Δ[floor(∑[n*a(n-2)])]` with `a(0)=1, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A081405.P16477040182516127081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  n * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081405.P16477040182516127081

namespace A081405

/-- `Δ[floor(∑[n*a(n-2)])]` -/
def P16477040182516127081.Spec : Prop :=
  ∀ n, P16477040182516127081.a n = A081405 n

end A081405

/-! ## A081405.P555581159689146296

`Δ[ceil(∑[n*a(n-2)])]` with `a(0)=1, a(1)=1, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A081405.P555581159689146296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  n * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081405.P555581159689146296

namespace A081405

/-- `Δ[ceil(∑[n*a(n-2)])]` -/
def P555581159689146296.Spec : Prop :=
  ∀ n, P555581159689146296.a n = A081405 n

end A081405

/-! ## A081405.P9060910625904030291

`Δ[round(∑[n*a(n-2)])]` with `a(0)=1, a(1)=1, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A081405.P9060910625904030291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  n * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081405.P9060910625904030291

namespace A081405

/-- `Δ[round(∑[n*a(n-2)])]` -/
def P9060910625904030291.Spec : Prop :=
  ∀ n, P9060910625904030291.a n = A081405 n

end A081405

/-! ## A081405.P4842861602059349736

`a(n-2)/(n+1)^(-1)` with `a(0)=1, a(1)=1`
-/

namespace A081405.P4842861602059349736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A081405.P4842861602059349736

namespace A081405

/-- `a(n-2)/(n+1)^(-1)` -/
def P4842861602059349736.Spec : Prop :=
  ∀ n, P4842861602059349736.a n = (A081405 n : ℚ)

end A081405

/-! ## A081405.P15456729662363377248

`2*a(n-2)/n*∑[n]` with `a(0)=1, a(1)=1`
-/

namespace A081405.P15456729662363377248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 2) / (n : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A081405.P15456729662363377248

namespace A081405

/-- `2*a(n-2)/n*∑[n]` -/
def P15456729662363377248.Spec : Prop :=
  ∀ n, P15456729662363377248.a n = (A081405 n : ℚ)

end A081405

/-! ## A081405.P4979205570680981138

`abs((2*n-(n-1))*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A081405.P4979205570680981138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |((2 * n : ℤ) - ((n : ℤ) - 1)) * a (n - 2)|

end

end A081405.P4979205570680981138

namespace A081405

/-- `abs((2*n-(n-1))*a(n-2))` -/
def P4979205570680981138.Spec : Prop :=
  ∀ n, P4979205570680981138.a n = A081405 n

end A081405

/-! ## A081405.P11920837451126751878

`-((n-1-2*n)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A081405.P11920837451126751878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  -(((n : ℤ) - 1 - (2 * n : ℤ)) * a (n - 2))

end

end A081405.P11920837451126751878

namespace A081405

/-- `-((n-1-2*n)*a(n-2))` -/
def P11920837451126751878.Spec : Prop :=
  ∀ n, P11920837451126751878.a n = A081405 n

end A081405

/-! ## A081405.P10729774414487400546

`floor((2*n-(n-1))*a(n-2))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A081405.P10729774414487400546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((2 * n : ℤ) - ((n : ℤ) - 1)) * a (n - 2)

end

end A081405.P10729774414487400546

namespace A081405

/-- `floor((2*n-(n-1))*a(n-2))` -/
def P10729774414487400546.Spec : Prop :=
  ∀ n, P10729774414487400546.a n = A081405 n

end A081405

/-! ## A081405.P5645625746213420439

`ceil((2*n-(n-1))*a(n-2))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A081405.P5645625746213420439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((2 * n : ℤ) - ((n : ℤ) - 1)) * a (n - 2)

end

end A081405.P5645625746213420439

namespace A081405

/-- `ceil((2*n-(n-1))*a(n-2))` -/
def P5645625746213420439.Spec : Prop :=
  ∀ n, P5645625746213420439.a n = A081405 n

end A081405

/-! ## A081405.P2136846147166178344

`round((2*n-(n-1))*a(n-2))` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A081405.P2136846147166178344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((2 * n : ℤ) - ((n : ℤ) - 1)) * a (n - 2)

end

end A081405.P2136846147166178344

namespace A081405

/-- `round((2*n-(n-1))*a(n-2))` -/
def P2136846147166178344.Spec : Prop :=
  ∀ n, P2136846147166178344.a n = A081405 n

end A081405

/-! ## A081405.P12740762768553856506

`n²*a(n-4)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A081405.P12740762768553856506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4] fun n a =>
  (n ^ 2 : ℤ) * a (n - 4) - a (n - 4)

end

end A081405.P12740762768553856506

namespace A081405

/-- `n²*a(n-4)-a(n-4)` -/
def P12740762768553856506.Spec : Prop :=
  ∀ n, P12740762768553856506.a n = A081405 n

end A081405

/-! ## A081405.P8262435882211752970

`2*a(n-2)-(1-n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A081405.P8262435882211752970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 2) - (1 - (n : ℤ)) * a (n - 2)

end

end A081405.P8262435882211752970

namespace A081405

/-- `2*a(n-2)-(1-n)*a(n-2)` -/
def P8262435882211752970.Spec : Prop :=
  ∀ n, P8262435882211752970.a n = A081405 n

end A081405

/-! ## A081405.P3046619269939593489

`lcm(2, A006882(n+1))/2`
-/

namespace A081405.P3046619269939593489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A006882 (n + 1)) : ℚ) / 2

end

end A081405.P3046619269939593489

namespace A081405

/-- `lcm(2, A006882(n+1))/2` -/
def P3046619269939593489.Spec : Prop :=
  ∀ n, P3046619269939593489.a n = (A081405 n : ℚ)

end A081405

/-! ## A081405.P192088443758972365

`A006882(n+1)/A040001(n+1)`
-/

namespace A081405.P192088443758972365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (n + 1) : ℚ) / (A040001 (n + 1) : ℚ)

end

end A081405.P192088443758972365

namespace A081405

/-- `A006882(n+1)/A040001(n+1)` -/
def P192088443758972365.Spec : Prop :=
  ∀ n, P192088443758972365.a n = (A081405 n : ℚ)

end A081405

/-! ## A081405.P17285661860861045986

`A006882(n+1)/A176895(2*n)`
-/

namespace A081405.P17285661860861045986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (n + 1) : ℚ) / (A176895 (2 * n) : ℚ)

end

end A081405.P17285661860861045986

namespace A081405

/-- `A006882(n+1)/A176895(2*n)` -/
def P17285661860861045986.Spec : Prop :=
  ∀ n, P17285661860861045986.a n = (A081405 n : ℚ)

end A081405

/-! ## A081405.P16376283027728541168

`Δ[∑[n*a(n-2)]/2]` with `a(0)=1, a(1)=2`
-/

namespace A081405.P16376283027728541168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  n * f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081405.P16376283027728541168

namespace A081405

/-- `Δ[∑[n*a(n-2)]/2]` -/
def P16376283027728541168.Spec : Prop :=
  ∀ n, P16376283027728541168.a n = (A081405 n : ℚ)

end A081405

/-!
# A081406: a(n) = (n+1)*a(n-3) for n > 2, a(0) = a(1) = a(2) = 1.

The programs for A081406, the canonical program `A081406.P8301150640108261415` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081406 has offset 0).

The definition of A081406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*a(n-3)` (program `A081406.P8301150640108261415`, by `A081406.P8301150640108261415.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081406.P8301150640108261415

`(n+1)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081406

/-- `(n+1)*a(n-3)` -/
def P8301150640108261415.Spec : Prop :=
  ∀ n, (P8301150640108261415.a n : ℤ) = A081406 n

theorem P8301150640108261415.correct : P8301150640108261415.Spec := by
  intro n
  simp only [A081406]

end A081406

/-! ## A081406.P4080589958964268369

`a(n-3)/(n+1)^(-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A081406.P4080589958964268369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A081406.P4080589958964268369

namespace A081406

/-- `a(n-3)/(n+1)^(-1)` -/
def P4080589958964268369.Spec : Prop :=
  ∀ n, P4080589958964268369.a n = (A081406 n : ℚ)

end A081406

/-! ## A081406.P10742098915510680289

`a(n-3)/n*∑[2*n]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A081406.P10742098915510680289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) / (n : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A081406.P10742098915510680289

namespace A081406

/-- `a(n-3)/n*∑[2*n]` -/
def P10742098915510680289.Spec : Prop :=
  ∀ n, P10742098915510680289.a n = (A081406 n : ℚ)

end A081406

/-! ## A081406.P5300226944132749786

`floor((2*n-(n-1))*a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A081406.P5300226944132749786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ((2 * n : ℤ) - ((n : ℤ) - 1)) * a (n - 3)

end

end A081406.P5300226944132749786

namespace A081406

/-- `floor((2*n-(n-1))*a(n-3))` -/
def P5300226944132749786.Spec : Prop :=
  ∀ n, P5300226944132749786.a n = A081406 n

end A081406

/-! ## A081406.P18216877347928407050

`a(n-3)*A065475(n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A081406.P18216877347928407050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) * A065475 n

end

end A081406.P18216877347928407050

namespace A081406

/-- `a(n-3)*A065475(n)` -/
def P18216877347928407050.Spec : Prop :=
  ∀ n, P18216877347928407050.a n = A081406 n

end A081406

/-! ## A081406.P14223848050708369145

`a(n-3)*A326178(n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A081406.P14223848050708369145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) * A326178 n

end

end A081406.P14223848050708369145

namespace A081406

/-- `a(n-3)*A326178(n)` -/
def P14223848050708369145.Spec : Prop :=
  ∀ n, P14223848050708369145.a n = A081406 n

end A081406

/-! ## A081406.P2973302953580250174

`a(n-3)*A008619(2*n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A081406.P2973302953580250174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) * A008619 (2 * n)

end

end A081406.P2973302953580250174

namespace A081406

/-- `a(n-3)*A008619(2*n)` -/
def P2973302953580250174.Spec : Prop :=
  ∀ n, P2973302953580250174.a n = A081406 n

end A081406

/-! ## A081406.P4431993624346378635

`a(n-3)*A052938(2*n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A081406.P4431993624346378635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) * A052938 (2 * n)

end

end A081406.P4431993624346378635

namespace A081406

/-- `a(n-3)*A052938(2*n)` -/
def P4431993624346378635.Spec : Prop :=
  ∀ n, P4431993624346378635.a n = A081406 n

end A081406

/-! ## A081406.P17992504598659226868

`a(n-3)*A328399(2*n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A081406.P17992504598659226868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) * A328399 (2 * n)

end

end A081406.P17992504598659226868

namespace A081406

/-- `a(n-3)*A328399(2*n)` -/
def P17992504598659226868.Spec : Prop :=
  ∀ n, P17992504598659226868.a n = A081406 n

end A081406

/-! ## A081406.P1565549495565315447

`a(n-3)*A003602(A267872(n))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A081406.P1565549495565315447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) * A003602 (A267872 n).toNat

end

end A081406.P1565549495565315447

namespace A081406

/-- `a(n-3)*A003602(A267872(n))` -/
def P1565549495565315447.Spec : Prop :=
  ∀ n, P1565549495565315447.a n = A081406 n

end A081406

/-!
# A081407: 4th-order non-linear ("factorial") recursion: a(0) = a(1) = a(2) = a(3) = 1, a(n) = (n+1)*a(n-4).

The programs for A081407, the canonical program `A081407.P17384716629112879808` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081407 has offset 0).

The definition of A081407 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*a(n-4)` (program `A081407.P17384716629112879808`, by `A081407.P17384716629112879808.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081407.P17384716629112879808

`(n+1)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081407

/-- `(n+1)*a(n-4)` -/
def P17384716629112879808.Spec : Prop :=
  ∀ n, (P17384716629112879808.a n : ℤ) = A081407 n

theorem P17384716629112879808.correct : P17384716629112879808.Spec := by
  intro n
  simp only [A081407]

end A081407

/-! ## A081407.P16953631884360392891

`a(n-4)/(n+1)^(-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A081407.P16953631884360392891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 4) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A081407.P16953631884360392891

namespace A081407

/-- `a(n-4)/(n+1)^(-1)` -/
def P16953631884360392891.Spec : Prop :=
  ∀ n, P16953631884360392891.a n = (A081407 n : ℚ)

end A081407

/-! ## A081407.P7907594923756455248

`A007662(n+1)/(and(3, n)+1)`
-/

namespace A081407.P7907594923756455248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007662 (n + 1) : ℚ) / (Nat.land 3 n + 1 : ℚ)

end

end A081407.P7907594923756455248

namespace A081407

/-- `A007662(n+1)/(and(3, n)+1)` -/
def P7907594923756455248.Spec : Prop :=
  ∀ n, P7907594923756455248.a n = (A081407 n : ℚ)

end A081407

/-! ## A081407.P4737599759458306220

`a(n-4)*A110514(2*n)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A081407.P4737599759458306220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 4) * A110514 (2 * n)

end

end A081407.P4737599759458306220

namespace A081407

/-- `a(n-4)*A110514(2*n)` -/
def P4737599759458306220.Spec : Prop :=
  ∀ n, P4737599759458306220.a n = A081407 n

end A081407

/-! ## A081407.P7809329539764429241

`A007662(n+1)/A010883(n)`
-/

namespace A081407.P7809329539764429241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007662 (n + 1) : ℚ) / (A010883 n : ℚ)

end

end A081407.P7809329539764429241

namespace A081407

/-- `A007662(n+1)/A010883(n)` -/
def P7809329539764429241.Spec : Prop :=
  ∀ n, P7809329539764429241.a n = (A081407 n : ℚ)

end A081407

/-! ## A081407.P6722863468938776202

`a(n-4)*A008619(A005408(n))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A081407.P6722863468938776202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 4) * A008619 (A005408 n).toNat

end

end A081407.P6722863468938776202

namespace A081407

/-- `a(n-4)*A008619(A005408(n))` -/
def P6722863468938776202.Spec : Prop :=
  ∀ n, P6722863468938776202.a n = A081407 n

end A081407

/-!
# A081408: a(n) = (n+1)*a(n-5), with a(0) = a(1) = a(2) = a(3) = a(4) = 1.

The programs for A081408, the canonical program `A081408.P2543833483517334392` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081408 has offset 0).

The definition of A081408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*a(n-5)` (program `A081408.P2543833483517334392`, by `A081408.P2543833483517334392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081408.P2543833483517334392

`(n+1)*a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081408

/-- `(n+1)*a(n-5)` -/
def P2543833483517334392.Spec : Prop :=
  ∀ n, (P2543833483517334392.a n : ℤ) = A081408 n

theorem P2543833483517334392.correct : P2543833483517334392.Spec := by
  intro n
  simp only [A081408]

end A081408

/-! ## A081408.P4309201004901763068

`(n+1)/a(n-5)^(-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A081408.P4309201004901763068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  (n + 1 : ℚ) / a (n - 5) ^ (-1 : ℤ)

end

end A081408.P4309201004901763068

namespace A081408

/-- `(n+1)/a(n-5)^(-1)` -/
def P4309201004901763068.Spec : Prop :=
  ∀ n, P4309201004901763068.a n = (A081408 n : ℚ)

end A081408

/-! ## A081408.P1883802532687803410

`a(n-5)*A008619(2*n)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A081408.P1883802532687803410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  a (n - 5) * A008619 (2 * n)

end

end A081408.P1883802532687803410

namespace A081408

/-- `a(n-5)*A008619(2*n)` -/
def P1883802532687803410.Spec : Prop :=
  ∀ n, P1883802532687803410.a n = A081408 n

end A081408

/-! ## A081408.P17394929720995719448

`A085157(n+1)/A338863(A043372(n+1))`
-/

namespace A081408.P17394929720995719448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085157 (n + 1) : ℚ) / (A338863 (A043372 (n + 1)).toNat : ℚ)

end

end A081408.P17394929720995719448

namespace A081408

/-- `A085157(n+1)/A338863(A043372(n+1))` -/
def P17394929720995719448.Spec : Prop :=
  ∀ n, P17394929720995719448.a n = (A081408 n : ℚ)

end A081408

/-! ## A081408.P12050467802354443834

`C(A000523(A090031(n)), n)`
-/

namespace A081408.P12050467802354443834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000523 (A090031 n).toNat).toNat n

end

end A081408.P12050467802354443834

namespace A081408

/-- `C(A000523(A090031(n)), n)` -/
def P12050467802354443834.Spec : Prop :=
  ∀ n, (P12050467802354443834.a n : ℤ) = A081408 n

end A081408

/-!
# A081409: 

The programs for A081409, there is no canonical definition to state claims against.
-/

/-! ## A081409.P13776021772513910749

`C((n+1)!, ∏[A014963(n+1)])`
-/

namespace A081409.P13776021772513910749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (n + 1)) (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A081409.P13776021772513910749

/-!
# A081410: a(n) = a(n-1) + a(n-2) + n (mod 3), with a(1)=a(2)=1.

The programs for A081410, the canonical program `A081410.P17220486230743511354` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081410 has offset 1).

The definition of A081410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081410.P6400090388228077351

`a(n-1)+a(n-2)+(n+1)%3` with `a(0)=1, a(1)=1`
-/

namespace A081410.P6400090388228077351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) + (n + 1) % 3

end

end A081410.P6400090388228077351

namespace A081410

/-- `a(n-1)+a(n-2)+(n+1)%3` -/
def P6400090388228077351.Spec : Prop :=
  ∀ n, (P6400090388228077351.a n : ℤ) = A081410 (n + 1)

end A081410

/-! ## A081410.P17220486230743511354

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081410

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P17220486230743511354.Spec : Prop :=
  ∀ n, P17220486230743511354.a n = A081410 (n + 1)

theorem P17220486230743511354.correct : P17220486230743511354.Spec := by
  intro n
  simp only [A081410, Nat.add_sub_cancel]

end A081410

/-! ## A081410.P4786311371594965667

`a(n-1)-((2-n)%3-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A081410.P4786311371594965667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (Int.tmod (2 - (n : ℤ)) 3 - a (n - 2))

end

end A081410.P4786311371594965667

namespace A081410

/-- `a(n-1)-((2-n)%3-a(n-2))` -/
def P4786311371594965667.Spec : Prop :=
  ∀ n, P4786311371594965667.a n = A081410 (n + 1)

end A081410

/-! ## A081410.P395467837269626655

`A010872(n+1)+a(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A081410.P395467837269626655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A010872 (n + 1) + (a (n - 2) + a (n - 1))

end

end A081410.P395467837269626655

namespace A081410

/-- `A010872(n+1)+a(n-2)+a(n-1)` -/
def P395467837269626655.Spec : Prop :=
  ∀ n, P395467837269626655.a n = A081410 (n + 1)

end A081410

/-! ## A081410.P603135799433817301

`A173495(n)+2*A201864(n+1)`
-/

namespace A081410.P603135799433817301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173495 n + 2 * A201864 (n + 1)

end

end A081410.P603135799433817301

namespace A081410

/-- `A173495(n)+2*A201864(n+1)` -/
def P603135799433817301.Spec : Prop :=
  ∀ n, P603135799433817301.a n = A081410 (n + 1)

end A081410

/-! ## A081410.P8759487062382473815

`A245968(n)+or(1, A000071(n+1))`
-/

namespace A081410.P8759487062382473815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 n + Int.lor 1 (A000071 (n + 1))

end

end A081410.P8759487062382473815

namespace A081410

/-- `A245968(n)+or(1, A000071(n+1))` -/
def P8759487062382473815.Spec : Prop :=
  ∀ n, P8759487062382473815.a n = A081410 (n + 1)

end A081410

/-! ## A081410.P15589427318574370594

`Δ[A004695(n+1)]+A000032(n)-1`
-/

namespace A081410.P15589427318574370594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A000032 n - 1)

end

end A081410.P15589427318574370594

namespace A081410

/-- `Δ[A004695(n+1)]+A000032(n)-1` -/
def P15589427318574370594.Spec : Prop :=
  ∀ n, P15589427318574370594.a n = A081410 (n + 1)

end A081410

/-! ## A081410.P8790701326317654916

`A000071(n+2)+A000032(n)-A093040(n+1)`
-/

namespace A081410.P8790701326317654916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A000032 n - A093040 (n + 1))

end

end A081410.P8790701326317654916

namespace A081410

/-- `A000071(n+2)+A000032(n)-A093040(n+1)` -/
def P8790701326317654916.Spec : Prop :=
  ∀ n, P8790701326317654916.a n = A081410 (n + 1)

end A081410

/-! ## A081410.P8033042148584425241

`A027976(n)+A102283(n)-A000045(n)`
-/

namespace A081410.P8033042148584425241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027976 n + (A102283 n - A000045 n)

end

end A081410.P8033042148584425241

namespace A081410

/-- `A027976(n)+A102283(n)-A000045(n)` -/
def P8033042148584425241.Spec : Prop :=
  ∀ n, P8033042148584425241.a n = A081410 (n + 1)

end A081410

/-! ## A081410.P13246072749913891771

`A142584(n+1)-A355325(n)`
-/

namespace A081410.P13246072749913891771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142584 (n + 1) - A355325 n

end

end A081410.P13246072749913891771

namespace A081410

/-- `A142584(n+1)-A355325(n)` -/
def P13246072749913891771.Spec : Prop :=
  ∀ n, P13246072749913891771.a n = A081410 (n + 1)

end A081410

/-! ## A081410.P213505442222266754

`A142584(n+1)+A004695(n)-A000032(n+1)`
-/

namespace A081410.P213505442222266754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142584 (n + 1) + (A004695 n - A000032 (n + 1))

end

end A081410.P213505442222266754

namespace A081410

/-- `A142584(n+1)+A004695(n)-A000032(n+1)` -/
def P213505442222266754.Spec : Prop :=
  ∀ n, P213505442222266754.a n = A081410 (n + 1)

end A081410

/-!
# A081411: Partial product of prime gaps: a(n) = a(n-1)*(prime(n+1) - prime(n)).

The programs for A081411, the canonical program `A081411.P12036286908170214050` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081411 has offset 1).

The definition of A081411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081411.P5477563629469465354

`∏[Δ[p?[comp[n²]]]]`
-/

namespace A081411.P5477563629469465354
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P5477563629469465354

namespace A081411

/-- `∏[Δ[p?[comp[n²]]]]` -/
def P5477563629469465354.Spec : Prop :=
  ∀ n, P5477563629469465354.a n = A081411 (n + 1)

end A081411

/-! ## A081411.P12036286908170214050

`∏[Δ[record[∑{p}[n+2, #]]]]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081411

/-- `∏[Δ[record[∑{p}[n+2, #]]]]` -/
def P12036286908170214050.Spec : Prop :=
  ∀ n, P12036286908170214050.a n = A081411 (n + 1)

theorem P12036286908170214050.correct : P12036286908170214050.Spec := by
  intro n
  simp only [A081411, Nat.add_sub_cancel]

end A081411

/-! ## A081411.P16416826055524290427

`∏[A001223(n+1)]`
-/

namespace A081411.P16416826055524290427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P16416826055524290427

namespace A081411

/-- `∏[A001223(n+1)]` -/
def P16416826055524290427.Spec : Prop :=
  ∀ n, P16416826055524290427.a n = A081411 (n + 1)

end A081411

/-! ## A081411.P2193953007009922116

`∏[A075526(n+1)]`
-/

namespace A081411.P2193953007009922116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P2193953007009922116

namespace A081411

/-- `∏[A075526(n+1)]` -/
def P2193953007009922116.Spec : Prop :=
  ∀ n, P2193953007009922116.a n = A081411 (n + 1)

end A081411

/-! ## A081411.P16355095227073663870

`∏[A054541(n+2)]`
-/

namespace A081411.P16355095227073663870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P16355095227073663870

namespace A081411

/-- `∏[A054541(n+2)]` -/
def P16355095227073663870.Spec : Prop :=
  ∀ n, P16355095227073663870.a n = A081411 (n + 1)

end A081411

/-! ## A081411.P18201517060523870022

`∏[A125266(n+2)]`
-/

namespace A081411.P18201517060523870022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P18201517060523870022

namespace A081411

/-- `∏[A125266(n+2)]` -/
def P18201517060523870022.Spec : Prop :=
  ∀ n, P18201517060523870022.a n = A081411 (n + 1)

end A081411

/-! ## A081411.P4938075511112969467

`A070323(n+2)/2`
-/

namespace A081411.P4938075511112969467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070323 (n + 2) : ℚ) / 2

end

end A081411.P4938075511112969467

namespace A081411

/-- `A070323(n+2)/2` -/
def P4938075511112969467.Spec : Prop :=
  ∀ n, P4938075511112969467.a n = (A081411 (n + 1) : ℚ)

end A081411

/-! ## A081411.P2913596254430549267

`A154279(2*n+5)`
-/

namespace A081411.P2913596254430549267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154279 (2 * n + 5)

end

end A081411.P2913596254430549267

namespace A081411

/-- `A154279(2*n+5)` -/
def P2913596254430549267.Spec : Prop :=
  ∀ n, P2913596254430549267.a n = A081411 (n + 1)

end A081411

/-! ## A081411.P7060235626308617249

`∏[sqrt(A076821(n+1))]`
-/

namespace A081411.P7060235626308617249
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076821 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P7060235626308617249

namespace A081411

/-- `∏[sqrt(A076821(n+1))]` -/
def P7060235626308617249.Spec : Prop :=
  ∀ n, P7060235626308617249.a n = (A081411 (n + 1) : ℝ)

end A081411

/-! ## A081411.P12313813239019373080

`∏[log2(A218075(n+1))]`
-/

namespace A081411.P12313813239019373080
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P12313813239019373080

namespace A081411

/-- `∏[log2(A218075(n+1))]` -/
def P12313813239019373080.Spec : Prop :=
  ∀ n, P12313813239019373080.a n = (A081411 (n + 1) : ℝ)

end A081411

/-! ## A081411.P15428818384499813528

`∏[Δ[A000040(n+1)]]`
-/

namespace A081411.P15428818384499813528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P15428818384499813528

namespace A081411

/-- `∏[Δ[A000040(n+1)]]` -/
def P15428818384499813528.Spec : Prop :=
  ∀ n, P15428818384499813528.a n = A081411 (n + 1)

end A081411

/-! ## A081411.P18163793440006250942

`∏[Δ[A006093(n+1)]]`
-/

namespace A081411.P18163793440006250942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P18163793440006250942

namespace A081411

/-- `∏[Δ[A006093(n+1)]]` -/
def P18163793440006250942.Spec : Prop :=
  ∀ n, P18163793440006250942.a n = A081411 (n + 1)

end A081411

/-! ## A081411.P7947421097415887203

`∏[Δ[A008864(n+1)]]`
-/

namespace A081411.P7947421097415887203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P7947421097415887203

namespace A081411

/-- `∏[Δ[A008864(n+1)]]` -/
def P7947421097415887203.Spec : Prop :=
  ∀ n, P7947421097415887203.a n = A081411 (n + 1)

end A081411

/-! ## A081411.P2392961674152322574

`∏[Δ[A028815(n+1)]]`
-/

namespace A081411.P2392961674152322574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P2392961674152322574

namespace A081411

/-- `∏[Δ[A028815(n+1)]]` -/
def P2392961674152322574.Spec : Prop :=
  ∀ n, P2392961674152322574.a n = A081411 (n + 1)

end A081411

/-! ## A081411.P6218314435860743357

`∏[Δ[A040976(n+1)]]`
-/

namespace A081411.P6218314435860743357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P6218314435860743357

namespace A081411

/-- `∏[Δ[A040976(n+1)]]` -/
def P6218314435860743357.Spec : Prop :=
  ∀ n, P6218314435860743357.a n = A081411 (n + 1)

end A081411

/-! ## A081411.P3067838630231926782

`∏[Δ[A052147(n+1)]]`
-/

namespace A081411.P3067838630231926782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P3067838630231926782

namespace A081411

/-- `∏[Δ[A052147(n+1)]]` -/
def P3067838630231926782.Spec : Prop :=
  ∀ n, P3067838630231926782.a n = A081411 (n + 1)

end A081411

/-! ## A081411.P13307148931315965029

`∏[Δ[A008578(n+2)]]`
-/

namespace A081411.P13307148931315965029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P13307148931315965029

namespace A081411

/-- `∏[Δ[A008578(n+2)]]` -/
def P13307148931315965029.Spec : Prop :=
  ∀ n, P13307148931315965029.a n = A081411 (n + 1)

end A081411

/-! ## A081411.P4101449049188922464

`∏[Δ[A182986(n+2)]]`
-/

namespace A081411.P4101449049188922464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P4101449049188922464

namespace A081411

/-- `∏[Δ[A182986(n+2)]]` -/
def P4101449049188922464.Spec : Prop :=
  ∀ n, P4101449049188922464.a n = A081411 (n + 1)

end A081411

/-! ## A081411.P15290058866111307691

`∏[Δ[A299763(n+2)]]`
-/

namespace A081411.P15290058866111307691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081411.P15290058866111307691

namespace A081411

/-- `∏[Δ[A299763(n+2)]]` -/
def P15290058866111307691.Spec : Prop :=
  ∀ n, P15290058866111307691.a n = A081411 (n + 1)

end A081411

/-!
# A081412: Largest prime divisors of differences between consecutive primes.

The programs for A081412, the canonical program `A081412.P7707128000905813888` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081412 has offset 2).

The definition of A081412 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081412.P7707128000905813888

`A006530(A001223(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A081412

/-- `A006530(A001223(n+2))` -/
def P7707128000905813888.Spec : Prop :=
  ∀ n, P7707128000905813888.a n = A081412 (n + 2)

theorem P7707128000905813888.correct : P7707128000905813888.Spec := by
  intro n
  simp only [A081412, Nat.add_sub_cancel]

end A081412

/-! ## A081412.P13261735645954331142

`A006530(Δ[A001749(n+2)])`
-/

namespace A081412.P13261735645954331142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A081412.P13261735645954331142

namespace A081412

/-- `A006530(Δ[A001749(n+2)])` -/
def P13261735645954331142.Spec : Prop :=
  ∀ n, P13261735645954331142.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P4964891201455788048

`A006530(Δ[A055670(n+2)])`
-/

namespace A081412.P4964891201455788048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A081412.P4964891201455788048

namespace A081412

/-- `A006530(Δ[A055670(n+2)])` -/
def P4964891201455788048.Spec : Prop :=
  ∀ n, P4964891201455788048.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P15497776000059518095

`A006530(2*A028334(n+2))`
-/

namespace A081412.P15497776000059518095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A028334 (n + 2)).toNat

end

end A081412.P15497776000059518095

namespace A081412

/-- `A006530(2*A028334(n+2))` -/
def P15497776000059518095.Spec : Prop :=
  ∀ n, P15497776000059518095.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P174742437346148297

`A006530(lcm(2, A028334(n+2)))`
-/

namespace A081412.P174742437346148297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A028334 (n + 2)))

end

end A081412.P174742437346148297

namespace A081412

/-- `A006530(lcm(2, A028334(n+2)))` -/
def P174742437346148297.Spec : Prop :=
  ∀ n, P174742437346148297.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P16102198003787078424

`A078834(A052126(A001223(n+2)²))`
-/

namespace A081412.P16102198003787078424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078834 (A052126 (A001223 (n + 2) ^ 2).toNat).toNat

end

end A081412.P16102198003787078424

namespace A081412

/-- `A078834(A052126(A001223(n+2)²))` -/
def P16102198003787078424.Spec : Prop :=
  ∀ n, P16102198003787078424.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P1582064306582055731

`A006530(Δ[p?[2*n+1]])`
-/

namespace A081412.P1582064306582055731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081412.P1582064306582055731

namespace A081412

/-- `A006530(Δ[p?[2*n+1]])` -/
def P1582064306582055731.Spec : Prop :=
  ∀ n, P1582064306582055731.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P7077007606742059650

`A111089(Δ[p?[2*n+1]])`
-/

namespace A081412.P7077007606742059650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081412.P7077007606742059650

namespace A081412

/-- `A111089(Δ[p?[2*n+1]])` -/
def P7077007606742059650.Spec : Prop :=
  ∀ n, P7077007606742059650.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P1994637771710204078

`A006530(A076821(n+2))`
-/

namespace A081412.P1994637771710204078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076821 (n + 2)).toNat

end

end A081412.P1994637771710204078

namespace A081412

/-- `A006530(A076821(n+2))` -/
def P1994637771710204078.Spec : Prop :=
  ∀ n, P1994637771710204078.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P16763993013517388330

`A006530(log2(A218075(n+2)))`
-/

namespace A081412.P16763993013517388330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.logb 2 (A218075 (n + 2) : ℝ))).toNat

end

end A081412.P16763993013517388330

namespace A081412

/-- `A006530(log2(A218075(n+2)))` -/
def P16763993013517388330.Spec : Prop :=
  ∀ n, P16763993013517388330.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P8931746038814342792

`A006530(Δ[A048974(n+1)])`
-/

namespace A081412.P8931746038814342792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A081412.P8931746038814342792

namespace A081412

/-- `A006530(Δ[A048974(n+1)])` -/
def P8931746038814342792.Spec : Prop :=
  ∀ n, P8931746038814342792.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P13581043895338784049

`A006530(Δ[A065091(n+1)])`
-/

namespace A081412.P13581043895338784049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A081412.P13581043895338784049

namespace A081412

/-- `A006530(Δ[A065091(n+1)])` -/
def P13581043895338784049.Spec : Prop :=
  ∀ n, P13581043895338784049.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P17965562983699263134

`A006530(Δ[A074741(n+1)])`
-/

namespace A081412.P17965562983699263134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A081412.P17965562983699263134

namespace A081412

/-- `A006530(Δ[A074741(n+1)])` -/
def P17965562983699263134.Spec : Prop :=
  ∀ n, P17965562983699263134.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P15748965826041446703

`A006530(Δ[A118538(n+1)])`
-/

namespace A081412.P15748965826041446703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A081412.P15748965826041446703

namespace A081412

/-- `A006530(Δ[A118538(n+1)])` -/
def P15748965826041446703.Spec : Prop :=
  ∀ n, P15748965826041446703.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P18198182836643007740

`A006530(Δ[A154115(n+1)])`
-/

namespace A081412.P18198182836643007740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A081412.P18198182836643007740

namespace A081412

/-- `A006530(Δ[A154115(n+1)])` -/
def P18198182836643007740.Spec : Prop :=
  ∀ n, P18198182836643007740.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P10312812900257072453

`A006530(A046933(n+2)+1)`
-/

namespace A081412.P10312812900257072453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046933 (n + 2) + 1).toNat

end

end A081412.P10312812900257072453

namespace A081412

/-- `A006530(A046933(n+2)+1)` -/
def P10312812900257072453.Spec : Prop :=
  ∀ n, P10312812900257072453.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P12719492226358236600

`A006530(Δ[Δ[A007504(n+1)]])`
-/

namespace A081412.P12719492226358236600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A081412.P12719492226358236600

namespace A081412

/-- `A006530(Δ[Δ[A007504(n+1)]])` -/
def P12719492226358236600.Spec : Prop :=
  ∀ n, P12719492226358236600.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P12871525772623893222

`A006530(A075526(n+2))`
-/

namespace A081412.P12871525772623893222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A075526 (n + 2)).toNat

end

end A081412.P12871525772623893222

namespace A081412

/-- `A006530(A075526(n+2))` -/
def P12871525772623893222.Spec : Prop :=
  ∀ n, P12871525772623893222.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P4109506289956604853

`A006530(A054541(n+3))`
-/

namespace A081412.P4109506289956604853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A054541 (n + 3)).toNat

end

end A081412.P4109506289956604853

namespace A081412

/-- `A006530(A054541(n+3))` -/
def P4109506289956604853.Spec : Prop :=
  ∀ n, P4109506289956604853.a n = A081412 (n + 2)

end A081412

/-! ## A081412.P6096263729963039148

`A006530(A125266(n+3))`
-/

namespace A081412.P6096263729963039148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A125266 (n + 3)).toNat

end

end A081412.P6096263729963039148

namespace A081412

/-- `A006530(A125266(n+3))` -/
def P6096263729963039148.Spec : Prop :=
  ∀ n, P6096263729963039148.a n = A081412 (n + 2)

end A081412

/-!
# A081413: a(n) is the smallest prime p such that the largest prime divisor of the difference nextprime(p) - p equals the n-th prime, prime(n).

The programs for A081413, there is no canonical definition to state claims against.
-/

/-! ## A081413.P348361231093720590

`A080082(n+1)+floor((4*n-2)/a(n-1))` with `a(0)=3`
-/

namespace A081413.P348361231093720590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A080082 (n + 1) + ⌊((4 * n : ℤ) - 2 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A081413.P348361231093720590

/-! ## A081413.P8174144050662138658

`A000230(A006005(n+1))`
-/

namespace A081413.P8174144050662138658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A006005 (n + 1)).toNat

end

end A081413.P8174144050662138658

/-! ## A081413.P12412511433784441668

`A000230(A176997(n+1))`
-/

namespace A081413.P12412511433784441668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A176997 (n + 1)).toNat

end

end A081413.P12412511433784441668

/-! ## A081413.P1005839153668827858

`A000230(A075643(n+2))`
-/

namespace A081413.P1005839153668827858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A075643 (n + 2)).toNat

end

end A081413.P1005839153668827858

/-! ## A081413.P12911959345702572448

`A000230(record[A090585(n+1)])`
-/

namespace A081413.P12911959345702572448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081413.P12911959345702572448

/-!
# A081414: Largest prime divisor of prime(2^n+1) - prime(2^n).

The programs for A081414, the canonical program `A081414.P15070070258934076791` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081414 has offset 0).

The definition of A081414 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A074325, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081414.P15070070258934076791

`A006530(A074325(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A081414

/-- `A006530(A074325(n))` -/
def P15070070258934076791.Spec : Prop :=
  ∀ n, P15070070258934076791.a n = A081414 n

theorem P15070070258934076791.correct : P15070070258934076791.Spec := by
  intro n
  simp only [A081414]

end A081414

/-! ## A081414.P15423464244711431736

`A006530(A051439(n)-A033844(n))`
-/

namespace A081414.P15423464244711431736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051439 n - A033844 n).toNat

end

end A081414.P15423464244711431736

namespace A081414

/-- `A006530(A051439(n)-A033844(n))` -/
def P15423464244711431736.Spec : Prop :=
  ∀ n, P15423464244711431736.a n = A081414 n

end A081414

/-! ## A081414.P11750959306761425127

`A217581(A074325(n)²)`
-/

namespace A081414.P11750959306761425127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A074325 n ^ 2).toNat

end

end A081414.P11750959306761425127

namespace A081414

/-- `A217581(A074325(n)²)` -/
def P11750959306761425127.Spec : Prop :=
  ∀ n, P11750959306761425127.a n = A081414 n

end A081414

/-! ## A081414.P1678989526042016291

`A217581(A074325(n)^2)`
-/

namespace A081414.P1678989526042016291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A074325 n ^ 2).toNat

end

end A081414.P1678989526042016291

namespace A081414

/-- `A217581(A074325(n)^2)` -/
def P1678989526042016291.Spec : Prop :=
  ∀ n, P1678989526042016291.a n = A081414 n

end A081414

/-! ## A081414.P3544867585585085534

`A217581((A033844(n)-A051439(n))²)`
-/

namespace A081414.P3544867585585085534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 ((A033844 n - A051439 n) ^ 2).toNat

end

end A081414.P3544867585585085534

namespace A081414

/-- `A217581((A033844(n)-A051439(n))²)` -/
def P3544867585585085534.Spec : Prop :=
  ∀ n, P3544867585585085534.a n = A081414 n

end A081414

/-! ## A081414.P8545379088107205950

`A217581((A051439(n)-A033844(n))^2)`
-/

namespace A081414.P8545379088107205950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 ((A051439 n - A033844 n) ^ 2).toNat

end

end A081414.P8545379088107205950

namespace A081414

/-- `A217581((A051439(n)-A033844(n))^2)` -/
def P8545379088107205950.Spec : Prop :=
  ∀ n, P8545379088107205950.a n = A081414 n

end A081414

/-! ## A081414.P5197938104339509366

`A217581((A051439(n)-A033844(n))*A074325(n))`
-/

namespace A081414.P5197938104339509366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 ((A051439 n - A033844 n) * A074325 n).toNat

end

end A081414.P5197938104339509366

namespace A081414

/-- `A217581((A051439(n)-A033844(n))*A074325(n))` -/
def P5197938104339509366.Spec : Prop :=
  ∀ n, P5197938104339509366.a n = A081414 n

end A081414

/-!
# A081417: A000720 applied to Pascal-triangle: primepi(C(n,j)), j,0..n and n=0,1,2,...

The programs for A081417, the canonical program `A081417.P14714034201535228560` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081417 has offset 0).

The definition of A081417 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081417.P14714034201535228560

`A000720(A007318(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A081417

/-- `A000720(A007318(n))` -/
def P14714034201535228560.Spec : Prop :=
  ∀ n, P14714034201535228560.a n = A081417 n

theorem P14714034201535228560.correct : P14714034201535228560.Spec := by
  intro n
  simp only [A081417]

end A081417

/-! ## A081417.P14295687905684732440

`A000720(C(∑[char[∑[n+1]]], n-C(∑[char[∑[n]]], 2)))`
-/

namespace A081417.P14295687905684732440
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat)

end

end A081417.P14295687905684732440

namespace A081417

/-- `A000720(C(∑[char[∑[n+1]]], n-C(∑[char[∑[n]]], 2)))` -/
def P14295687905684732440.Spec : Prop :=
  ∀ n, P14295687905684732440.a n = A081417 n

end A081417

/-! ## A081417.P12669520886685295499

`A000720(abs(A108086(n)))`
-/

namespace A081417.P12669520886685295499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 |A108086 n|.toNat

end

end A081417.P12669520886685295499

namespace A081417

/-- `A000720(abs(A108086(n)))` -/
def P12669520886685295499.Spec : Prop :=
  ∀ n, P12669520886685295499.a n = A081417 n

end A081417

/-! ## A081417.P1573557145917442413

`A000720(abs(A117440(n)))`
-/

namespace A081417.P1573557145917442413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 |A117440 n|.toNat

end

end A081417.P1573557145917442413

namespace A081417

/-- `A000720(abs(A117440(n)))` -/
def P1573557145917442413.Spec : Prop :=
  ∀ n, P1573557145917442413.a n = A081417 n

end A081417

/-! ## A081417.P11256548456715176487

`A000720(abs(A130595(n)))`
-/

namespace A081417.P11256548456715176487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 |A130595 n|.toNat

end

end A081417.P11256548456715176487

namespace A081417

/-- `A000720(abs(A130595(n)))` -/
def P11256548456715176487.Spec : Prop :=
  ∀ n, P11256548456715176487.a n = A081417 n

end A081417

/-! ## A081417.P9638815039569447730

`A000720(sqrt(A008459(n)))`
-/

namespace A081417.P9638815039569447730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))).toNat

end

end A081417.P9638815039569447730

namespace A081417

/-- `A000720(sqrt(A008459(n)))` -/
def P9638815039569447730.Spec : Prop :=
  ∀ n, P9638815039569447730.a n = A081417 n

end A081417

/-! ## A081417.P11933622804478105058

`A000720(Δ[A102363(n)])`
-/

namespace A081417.P11933622804478105058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A081417.P11933622804478105058

namespace A081417

/-- `A000720(Δ[A102363(n)])` -/
def P11933622804478105058.Spec : Prop :=
  ∀ n, P11933622804478105058.a n = A081417 n

end A081417

/-! ## A081417.P4807181357422611125

`A000720(A014473(n)+1)`
-/

namespace A081417.P4807181357422611125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A014473 n + 1).toNat

end

end A081417.P4807181357422611125

namespace A081417

/-- `A000720(A014473(n)+1)` -/
def P4807181357422611125.Spec : Prop :=
  ∀ n, P4807181357422611125.a n = A081417 n

end A081417

/-! ## A081417.P9288987258858312871

`A000720(A028326(n)/2)`
-/

namespace A081417.P9288987258858312871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A081417.P9288987258858312871

namespace A081417

/-- `A000720(A028326(n)/2)` -/
def P9288987258858312871.Spec : Prop :=
  ∀ n, P9288987258858312871.a n = A081417 n

end A081417

/-! ## A081417.P12615935843906291687

`A000720(root(A008459(n), 2))`
-/

namespace A081417.P12615935843906291687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A008459 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A081417.P12615935843906291687

namespace A081417

/-- `A000720(root(A008459(n), 2))` -/
def P12615935843906291687.Spec : Prop :=
  ∀ n, P12615935843906291687.a n = A081417 n

end A081417

/-! ## A081417.P14767501247109538012

`A000720(ceil(A124927(n)/2))`
-/

namespace A081417.P14767501247109538012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌈(A124927 n : ℚ) / 2⌉.toNat

end

end A081417.P14767501247109538012

namespace A081417

/-- `A000720(ceil(A124927(n)/2))` -/
def P14767501247109538012.Spec : Prop :=
  ∀ n, P14767501247109538012.a n = A081417 n

end A081417

/-! ## A081417.P15503112582827308323

`A000720(ceil(A134059(n)/3))`
-/

namespace A081417.P15503112582827308323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌈(A134059 n : ℚ) / 3⌉.toNat

end

end A081417.P15503112582827308323

namespace A081417

/-- `A000720(ceil(A134059(n)/3))` -/
def P15503112582827308323.Spec : Prop :=
  ∀ n, P15503112582827308323.a n = A081417 n

end A081417

/-! ## A081417.P10025738953130867848

`A000720((A109128(n)+1)/2)`
-/

namespace A081417.P10025738953130867848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A109128 n + 1 : ℚ) / 2)).toNat

end

end A081417.P10025738953130867848

namespace A081417

/-- `A000720((A109128(n)+1)/2)` -/
def P10025738953130867848.Spec : Prop :=
  ∀ n, P10025738953130867848.a n = A081417 n

end A081417

/-! ## A081417.P5524026024715232464

`A000720(A008459(n)^(1/2))`
-/

namespace A081417.P5524026024715232464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A008459 n : ℝ) ^ ((1 : ℚ) / 2 : ℝ))).toNat

end

end A081417.P5524026024715232464

namespace A081417

/-- `A000720(A008459(n)^(1/2))` -/
def P5524026024715232464.Spec : Prop :=
  ∀ n, P5524026024715232464.a n = A081417 n

end A081417

/-! ## A081417.P5512675167647037666

`A000720(A285118(n)+A285116(n))`
-/

namespace A081417.P5512675167647037666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A285118 n + A285116 n).toNat

end

end A081417.P5512675167647037666

namespace A081417

/-- `A000720(A285118(n)+A285116(n))` -/
def P5512675167647037666.Spec : Prop :=
  ∀ n, P5512675167647037666.a n = A081417 n

end A081417

/-! ## A081417.P18239428274835312320

`A000720(A028276(n)-A028263(n))`
-/

namespace A081417.P18239428274835312320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028276 n - A028263 n).toNat

end

end A081417.P18239428274835312320

namespace A081417

/-- `A000720(A028276(n)-A028263(n))` -/
def P18239428274835312320.Spec : Prop :=
  ∀ n, P18239428274835312320.a n = A081417 n

end A081417

/-! ## A081417.P8141107183013762159

`A000720(A097805(n+1)+A097805(n))`
-/

namespace A081417.P8141107183013762159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A097805 (n + 1) + A097805 n).toNat

end

end A081417.P8141107183013762159

namespace A081417

/-- `A000720(A097805(n+1)+A097805(n))` -/
def P8141107183013762159.Spec : Prop :=
  ∀ n, P8141107183013762159.a n = A081417 n

end A081417

/-! ## A081417.P12711111398188199864

`A000720(A102363(n+1)-A102363(n))`
-/

namespace A081417.P12711111398188199864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A102363 (n + 1) - A102363 n).toNat

end

end A081417.P12711111398188199864

namespace A081417

/-- `A000720(A102363(n+1)-A102363(n))` -/
def P12711111398188199864.Spec : Prop :=
  ∀ n, P12711111398188199864.a n = A081417 n

end A081417

/-! ## A081417.P13858964531728043209

`A000720(A028276(n)%(A028263(n)+1)+1)`
-/

namespace A081417.P13858964531728043209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.tmod (A028276 n) (A028263 n + 1) + 1).toNat

end

end A081417.P13858964531728043209

namespace A081417

/-- `A000720(A028276(n)%(A028263(n)+1)+1)` -/
def P13858964531728043209.Spec : Prop :=
  ∀ n, P13858964531728043209.a n = A081417 n

end A081417

/-! ## A081417.P10516630861873635629

`A230980(A206735(n))`
-/

namespace A081417.P10516630861873635629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A206735 n).toNat

end

end A081417.P10516630861873635629

namespace A081417

/-- `A230980(A206735(n))` -/
def P10516630861873635629.Spec : Prop :=
  ∀ n, P10516630861873635629.a n = A081417 n

end A081417

/-!
# A081419: Largest value held in any register at the end of a halting computation by an n-instruction register Minsky machine.

The programs for A081419, there is no canonical definition to state claims against.
-/

/-! ## A081419.P16005210374466891550

`∑[A161089(A171682(n+1)+1)]+n`
-/

namespace A081419.P16005210374466891550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161089 (A171682 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A081419.P16005210374466891550

/-!
# A081421: a(n) = (3^(2*n) + 5^(2*n)) / 2.

The programs for A081421, the canonical program `A081421.P13841566044842905241` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081421 has offset 0).

The definition of A081421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081421.P13841566044842905241

`(3^(2*n)+5^(2*n))/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081421

/-- `(3^(2*n)+5^(2*n))/2` -/
def P13841566044842905241.Spec : Prop :=
  ∀ n, P13841566044842905241.a n = (A081421 n : ℚ)

end A081421

/-! ## A081421.P12151790813443564481

`record[((3^n+5^n)/2)^val((3^n+5^n)/2+1, 2)]`
-/

namespace A081421.P12151790813443564481
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n + 5 ^ n : ℚ) / 2) ^ SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((3 ^ n + 5 ^ n : ℚ) / 2 + 1)).toNat 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081421.P12151790813443564481

namespace A081421

/-- `record[((3^n+5^n)/2)^val((3^n+5^n)/2+1, 2)]` -/
def P12151790813443564481.Spec : Prop :=
  ∀ n, P12151790813443564481.a n = (A081421 n : ℚ)

end A081421

/-! ## A081421.P9294787095332463019

`A081186(2*n)`
-/

namespace A081421.P9294787095332463019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 (2 * n)

end

end A081421.P9294787095332463019

namespace A081421

/-- `A081186(2*n)` -/
def P9294787095332463019.Spec : Prop :=
  ∀ n, P9294787095332463019.a n = A081421 n

end A081421

/-! ## A081421.P2386398117079135653

`A120612(2*n)`
-/

namespace A081421.P2386398117079135653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120612 (2 * n)

end

end A081421.P2386398117079135653

namespace A081421

/-- `A120612(2*n)` -/
def P2386398117079135653.Spec : Prop :=
  ∀ n, P2386398117079135653.a n = A081421 n

end A081421

/-! ## A081421.P5276921830449490032

`A005059(2*n)+A000244(n)²`
-/

namespace A081421.P5276921830449490032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 (2 * n) + A000244 n ^ 2

end

end A081421.P5276921830449490032

namespace A081421

/-- `A005059(2*n)+A000244(n)²` -/
def P5276921830449490032.Spec : Prop :=
  ∀ n, P5276921830449490032.a n = A081421 n

end A081421

/-! ## A081421.P1897705056200038422

`A005059(2*n)+A000244(2*n)`
-/

namespace A081421.P1897705056200038422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 (2 * n) + A000244 (2 * n)

end

end A081421.P1897705056200038422

namespace A081421

/-- `A005059(2*n)+A000244(2*n)` -/
def P1897705056200038422.Spec : Prop :=
  ∀ n, P1897705056200038422.a n = A081421 n

end A081421

/-! ## A081421.P5855382616381933629

`A233211(n+1)-A233106(2*n+1)`
-/

namespace A081421.P5855382616381933629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233211 (n + 1) - A233106 (2 * n + 1)

end

end A081421.P5855382616381933629

namespace A081421

/-- `A233211(n+1)-A233106(2*n+1)` -/
def P5855382616381933629.Spec : Prop :=
  ∀ n, P5855382616381933629.a n = A081421 n

end A081421

/-! ## A081421.P14619134969282001012

`A079773(2*n+1)-A079773(2*n)`
-/

namespace A081421.P14619134969282001012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079773 (2 * n + 1) - A079773 (2 * n)

end

end A081421.P14619134969282001012

namespace A081421

/-- `A079773(2*n+1)-A079773(2*n)` -/
def P14619134969282001012.Spec : Prop :=
  ∀ n, P14619134969282001012.a n = A081421 n

end A081421

/-! ## A081421.P1284438556379923797

`A233106(2*(n+1))-A233106(2*n+1)`
-/

namespace A081421.P1284438556379923797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233106 (2 * (n + 1)) - A233106 (2 * n + 1)

end

end A081421.P1284438556379923797

namespace A081421

/-- `A233106(2*(n+1))-A233106(2*n+1)` -/
def P1284438556379923797.Spec : Prop :=
  ∀ n, P1284438556379923797.a n = A081421 n

end A081421

/-!
# A081422: Triangle read by rows in which row n consists of the first n+1 n-gonal numbers.

The programs for A081422, the canonical program `A081422.P3770972195643103475` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081422 has offset 0).

The definition of A081422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081422.P3770972195643103475

`A244911(A245300(n))-A143844(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A081422

/-- `A244911(A245300(n))-A143844(n)` -/
def P3770972195643103475.Spec : Prop :=
  ∀ n, P3770972195643103475.a n = A081422 n

theorem P3770972195643103475.correct : P3770972195643103475.Spec := by
  intro n
  simp only [A081422]

end A081422

/-! ## A081422.P10400590494739494363

`A244911(A245300(n))-A002262(n)²`
-/

namespace A081422.P10400590494739494363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244911 (A245300 n).toNat - A002262 n ^ 2

end

end A081422.P10400590494739494363

namespace A081422

/-- `A244911(A245300(n))-A002262(n)²` -/
def P10400590494739494363.Spec : Prop :=
  ∀ n, P10400590494739494363.a n = A081422 n

end A081422

/-! ## A081422.P4149196280917595822

`A317302(A245300(n))+A159798(n+1)`
-/

namespace A081422.P4149196280917595822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317302 (A245300 n).toNat + A159798 (n + 1)

end

end A081422.P4149196280917595822

namespace A081422

/-- `A317302(A245300(n))+A159798(n+1)` -/
def P4149196280917595822.Spec : Prop :=
  ∀ n, P4149196280917595822.a n = A081422 n

end A081422

/-! ## A081422.P14686187801895644163

`A100324(n)+A123731(A244490(n))-A244490(n)`
-/

namespace A081422.P14686187801895644163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100324 n + (A123731 (A244490 n).toNat - A244490 n)

end

end A081422.P14686187801895644163

namespace A081422

/-- `A100324(n)+A123731(A244490(n))-A244490(n)` -/
def P14686187801895644163.Spec : Prop :=
  ∀ n, P14686187801895644163.a n = A081422 n

end A081422

/-!
# A081423: Subdiagonal of array of n-gonal numbers A081422.

The programs for A081423, the canonical program `A081423.P5759251061618357040` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081423 has offset 0).

The definition of A081423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081423.P5759251061618357040

`(2*n^3+n²+n+2)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081423

/-- `(2*n^3+n²+n+2)/2` -/
def P5759251061618357040.Spec : Prop :=
  ∀ n, P5759251061618357040.a n = (A081423 n : ℚ)

end A081423

/-! ## A081423.P8384326219480850175

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=1`
-/

namespace A081423.P8384326219480850175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081423.P8384326219480850175

namespace A081423

/-- `∑[∑[a(n-1)+6]]` -/
def P8384326219480850175.Spec : Prop :=
  ∀ n, (P8384326219480850175.a n : ℤ) = A081423 n

end A081423

/-! ## A081423.P4171203099770176744

`∑[∑[ogf((1-x+6x^2)/(1-2x+x^2))]]`
-/

namespace A081423.P4171203099770176744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 6] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081423.P4171203099770176744

namespace A081423

/-- `∑[∑[ogf((1-x+6x^2)/(1-2x+x^2))]]` -/
def P4171203099770176744.Spec : Prop :=
  ∀ n, P4171203099770176744.a n = A081423 n

end A081423

/-! ## A081423.P5137213410004520967

`ogf((1-x+6x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A081423.P5137213410004520967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 6] [1, -4, 6, -4, 1] n

end

end A081423.P5137213410004520967

namespace A081423

/-- `ogf((1-x+6x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P5137213410004520967.Spec : Prop :=
  ∀ n, P5137213410004520967.a n = A081423 n

end A081423

/-! ## A081423.P16637665904951694405

`∑[6-∑[a(n-1)-6]]` with `a(0)=5`
-/

namespace A081423.P16637665904951694405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081423.P16637665904951694405

namespace A081423

/-- `∑[6-∑[a(n-1)-6]]` -/
def P16637665904951694405.Spec : Prop :=
  ∀ n, P16637665904951694405.a n = A081423 n

end A081423

/-! ## A081423.P9234661679737082503

`∑[3*lcm(n, n-1)+n+1]`
-/

namespace A081423.P9234661679737082503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Int.lcm (n : ℤ) ((n : ℤ) - 1) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081423.P9234661679737082503

namespace A081423

/-- `∑[3*lcm(n, n-1)+n+1]` -/
def P9234661679737082503.Spec : Prop :=
  ∀ n, (P9234661679737082503.a n : ℤ) = A081423 n

end A081423

/-! ## A081423.P14418478158905722652

`∑[or(2, (2*n)²)-(n+1)²]`
-/

namespace A081423.P14418478158905722652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 ((2 * n) ^ 2) : ℤ) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081423.P14418478158905722652

namespace A081423

/-- `∑[or(2, (2*n)²)-(n+1)²]` -/
def P14418478158905722652.Spec : Prop :=
  ∀ n, P14418478158905722652.a n = A081423 n

end A081423

/-! ## A081423.P365477711947198566

`∑[xor(2, (2*n)²)-(n+1)²]`
-/

namespace A081423.P365477711947198566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 ((2 * n) ^ 2) : ℤ) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081423.P365477711947198566

namespace A081423

/-- `∑[xor(2, (2*n)²)-(n+1)²]` -/
def P365477711947198566.Spec : Prop :=
  ∀ n, P365477711947198566.a n = A081423 n

end A081423

/-! ## A081423.P895683022095571268

`(C(2*n, 2)/2+1)*(n+1)`
-/

namespace A081423.P895683022095571268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) 2 : ℚ) / 2 + 1) * (n + 1 : ℚ)

end

end A081423.P895683022095571268

namespace A081423

/-- `(C(2*n, 2)/2+1)*(n+1)` -/
def P895683022095571268.Spec : Prop :=
  ∀ n, P895683022095571268.a n = (A081423 n : ℚ)

end A081423

/-! ## A081423.P14885299085141356763

`∑[C(2*n, 2)+(1-n)²+n]`
-/

namespace A081423.P14885299085141356763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 : ℤ) + ((1 - (n : ℤ)) ^ 2 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081423.P14885299085141356763

namespace A081423

/-- `∑[C(2*n, 2)+(1-n)²+n]` -/
def P14885299085141356763.Spec : Prop :=
  ∀ n, P14885299085141356763.a n = A081423 n

end A081423

/-! ## A081423.P18378756912276716735

`∑[record[(n-1)²]+(n-2)*2*n]`
-/

namespace A081423.P18378756912276716735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + ((n : ℤ) - 2) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081423.P18378756912276716735

namespace A081423

/-- `∑[record[(n-1)²]+(n-2)*2*n]` -/
def P18378756912276716735.Spec : Prop :=
  ∀ n, P18378756912276716735.a n = A081423 n

end A081423

/-! ## A081423.P16890983885004344587

`∑[(n-1)²+2*n*gcd(n, 2*n)]`
-/

namespace A081423.P16890983885004344587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2 + (2 * n * Nat.gcd n (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081423.P16890983885004344587

namespace A081423

/-- `∑[(n-1)²+2*n*gcd(n, 2*n)]` -/
def P16890983885004344587.Spec : Prop :=
  ∀ n, P16890983885004344587.a n = A081423 n

end A081423

/-! ## A081423.P18302654840817956045

`∑[(1-n)²+n*and(2*n+1, 2*n)]`
-/

namespace A081423.P18302654840817956045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (n * Nat.land (2 * n + 1) (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081423.P18302654840817956045

namespace A081423

/-- `∑[(1-n)²+n*and(2*n+1, 2*n)]` -/
def P18302654840817956045.Spec : Prop :=
  ∀ n, P18302654840817956045.a n = A081423 n

end A081423

/-! ## A081423.P3107460272798840819

`∑[A056105(n)]`
-/

namespace A081423.P3107460272798840819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081423.P3107460272798840819

namespace A081423

/-- `∑[A056105(n)]` -/
def P3107460272798840819.Spec : Prop :=
  ∀ n, P3107460272798840819.a n = A081423 n

end A081423

/-! ## A081423.P18054787199777345855

`∑[A000567(n)+1]`
-/

namespace A081423.P18054787199777345855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081423.P18054787199777345855

namespace A081423

/-- `∑[A000567(n)+1]` -/
def P18054787199777345855.Spec : Prop :=
  ∀ n, P18054787199777345855.a n = A081423 n

end A081423

/-! ## A081423.P16382173466119566819

`∑[A271740(n)-1]`
-/

namespace A081423.P16382173466119566819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271740 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081423.P16382173466119566819

namespace A081423

/-- `∑[A271740(n)-1]` -/
def P16382173466119566819.Spec : Prop :=
  ∀ n, P16382173466119566819.a n = A081423 n

end A081423

/-! ## A081423.P14908424198316910304

`∑[A047915(n)-5]`
-/

namespace A081423.P14908424198316910304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047915 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081423.P14908424198316910304

namespace A081423

/-- `∑[A047915(n)-5]` -/
def P14908424198316910304.Spec : Prop :=
  ∀ n, P14908424198316910304.a n = A081423 n

end A081423

/-! ## A081423.P11369799814989993980

`A053698(n)-∑[n]`
-/

namespace A081423.P11369799814989993980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081423.P11369799814989993980

namespace A081423

/-- `A053698(n)-∑[n]` -/
def P11369799814989993980.Spec : Prop :=
  ∀ n, P11369799814989993980.a n = A081423 n

end A081423

/-! ## A081423.P15193100006950055802

`∑[A056106(n)-n]`
-/

namespace A081423.P15193100006950055802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081423.P15193100006950055802

namespace A081423

/-- `∑[A056106(n)-n]` -/
def P15193100006950055802.Spec : Prop :=
  ∀ n, P15193100006950055802.a n = A081423 n

end A081423

/-!
# A081424: Class 5- primes (for definition see A005109).

The programs for A081424, there is no canonical definition to state claims against.
-/

/-! ## A081424.P4614489855236786978

`A045319(eq[5, A126805(n+1)])`
-/

namespace A081424.P4614489855236786978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081424.P4614489855236786978

/-! ## A081424.P17595696051065819459

`A045344(eq[5, A126805(n+1)])`
-/

namespace A081424.P17595696051065819459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081424.P17595696051065819459

/-! ## A081424.P10224407162876508329

`A065091(eq[5, A126805(n+1)])`
-/

namespace A081424.P10224407162876508329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081424.P10224407162876508329

/-! ## A081424.P15384151076382425313

`A000040(eq[5, A126805(n+1)]+1)`
-/

namespace A081424.P15384151076382425313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081424.P15384151076382425313

/-! ## A081424.P3038065359070045120

`A008864(eq[5, A126805(n+1)]+1)-1`
-/

namespace A081424.P3038065359070045120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A081424.P3038065359070045120

/-!
# A081425: Class 6- primes (for definition see A005109).

The programs for A081425, there is no canonical definition to state claims against.
-/

/-! ## A081425.P5590591543528208441

`A045319(eq[6, A126805(n+1)])`
-/

namespace A081425.P5590591543528208441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081425.P5590591543528208441

/-! ## A081425.P4769341258320197355

`A045344(eq[6, A126805(n+1)])`
-/

namespace A081425.P4769341258320197355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081425.P4769341258320197355

/-! ## A081425.P18241705966700090461

`A065091(eq[6, A126805(n+1)])`
-/

namespace A081425.P18241705966700090461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081425.P18241705966700090461

/-!
# A081431: RevBinary(RevDecimal(n)), where RevBinary(m) is the binary reversal of m (A030101) and RevDecimal(m) is the decimal reversal of m (A004086).

The programs for A081431, there is no canonical definition to state claims against.
-/

/-! ## A081431.P17861947709186111534

`A030101(A004086(n))`
-/

namespace A081431.P17861947709186111534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A004086 n).toNat

end

end A081431.P17861947709186111534

/-! ## A081431.P173863164617515141

`A030101(n-A056965(n))`
-/

namespace A081431.P173863164617515141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 ((n : ℤ) - A056965 n).toNat

end

end A081431.P173863164617515141

/-! ## A081431.P16821080481993135171

`A030101(A056964(n)-n)`
-/

namespace A081431.P16821080481993135171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A056964 n - (n : ℤ)).toNat

end

end A081431.P16821080481993135171

/-! ## A081431.P9699231546016362762

`A030101(A340479(n)-A007953(n))`
-/

namespace A081431.P9699231546016362762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A340479 n - A007953 n).toNat

end

end A081431.P9699231546016362762

/-! ## A081431.P5734320928859733944

`A004086(A081432(A004086(A057163(A057163(n)))))`
-/

namespace A081431.P5734320928859733944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A081432 (A004086 (A057163 (A057163 n).toNat).toNat).toNat).toNat

end

end A081431.P5734320928859733944

/-! ## A081431.P13121257200097808528

`A004086(A081432(A004086(A057889(A057889(n)))))`
-/

namespace A081431.P13121257200097808528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A081432 (A004086 (A057889 (A057889 n).toNat).toNat).toNat).toNat

end

end A081431.P13121257200097808528

/-! ## A081431.P5728354788473137312

`A325401(2*A004086(n))`
-/

namespace A081431.P5728354788473137312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A004086 n).toNat

end

end A081431.P5728354788473137312

/-! ## A081431.P2325072669553324035

`A325401(A004086(n)+A004086(n))`
-/

namespace A081431.P2325072669553324035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A004086 n + A004086 n).toNat

end

end A081431.P2325072669553324035

/-! ## A081431.P11659018835359563016

`A004086(A081432(A004086(A160638(A160638(n)))))`
-/

namespace A081431.P11659018835359563016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A081432 (A004086 (A160638 (A160638 n).toNat).toNat).toNat).toNat

end

end A081431.P11659018835359563016

/-!
# A081432: RevDecimal(RevBinary(n)), where RevDecimal(m) is the decimal reversal of m (A004086) and RevBinary(m) is the binary reversal of m (A030101).

The programs for A081432, there is no canonical definition to state claims against.
-/

/-! ## A081432.P7410450038691669671

`A004086(A030101(n))`
-/

namespace A081432.P7410450038691669671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A030101 n).toNat

end

end A081432.P7410450038691669671

/-! ## A081432.P16343642645016748951

`A004086(n-A055945(n))`
-/

namespace A081432.P16343642645016748951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((n : ℤ) - A055945 n).toNat

end

end A081432.P16343642645016748951

/-! ## A081432.P17418082030928357335

`A004086(A055944(n)-n)`
-/

namespace A081432.P17418082030928357335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A055944 n - (n : ℤ)).toNat

end

end A081432.P17418082030928357335

/-! ## A081432.P12975415605565169370

`A004086(A325401(2*n))`
-/

namespace A081432.P12975415605565169370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A325401 (2 * n)).toNat

end

end A081432.P12975415605565169370

/-! ## A081432.P3246755926103109940

`A030101(2*n)-A056965(A030101(n))`
-/

namespace A081432.P3246755926103109940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * n) - A056965 (A030101 n).toNat

end

end A081432.P3246755926103109940

/-!
# A081433: Numbers n such that RevBinary(RevDecimal(n))=RevDecimal(RevBinary(n)), where RevDecimal(n) is the decimal reversal of n (A004086) and RevBinary(n) is the binary reversal of n (A030101).

The programs for A081433, there is no canonical definition to state claims against.
-/

/-! ## A081433.P526017024780194081

`eq[A081431(n), A081432(n)]`
-/

namespace A081433.P526017024780194081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081433.P526017024780194081

/-! ## A081433.P4138396195669083488

`eq[A030101(A004086(n)), A081432(n)]`
-/

namespace A081433.P4138396195669083488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081433.P4138396195669083488

/-! ## A081433.P6487904343041631827

`eq[A004086(A030101(n)), A081431(n)]`
-/

namespace A081433.P6487904343041631827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A030101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081433.P6487904343041631827

/-! ## A081433.P15415496932397842859

`eq[n, A081432(A004086(n))+A055945(n)]`
-/

namespace A081433.P15415496932397842859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081432 (A004086 n).toNat + A055945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081433.P15415496932397842859

/-! ## A081433.P6437793386887269234

`eq[A004086(A325401(2*n)), A081431(n)]`
-/

namespace A081433.P6437793386887269234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A325401 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081433.P6437793386887269234

/-!
# A081434: Numbers such that RevBinary() = RevDecimal(), where RevDecimal(n) is the decimal reversal of n (A004086) and RevBinary(n) is the binary reversal of n (A030101).

The programs for A081434, there is no canonical definition to state claims against.
-/

/-! ## A081434.P3813764716954345820

`∪[A007632(n+1), A176630(n+1)]`
-/

namespace A081434.P3813764716954345820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081434.P3813764716954345820

/-! ## A081434.P5454950172802040455

`eq[n, A055945(n)+A004086(n)]`
-/

namespace A081434.P5454950172802040455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n + A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081434.P5454950172802040455

/-! ## A081434.P14765766318179579528

`eq[n, A004086(n-A055945(n))]`
-/

namespace A081434.P14765766318179579528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((n : ℤ) - A055945 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081434.P14765766318179579528

/-! ## A081434.P3959389853403814093

`eq[n, A081432(n)]`
-/

namespace A081434.P3959389853403814093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081434.P3959389853403814093

/-! ## A081434.P9493622294699769226

`eq[n, A004086(A030101(n))]`
-/

namespace A081434.P9493622294699769226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081434.P9493622294699769226

/-!
# A081435: Diagonal in array of n-gonal numbers A081422.

The programs for A081435, the canonical program `A081435.P14563769749445299116` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081435 has offset 0).

The definition of A081435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081435.P14563769749445299116

`(n^3+(n+1)^3-1)/2+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081435

/-- `(n^3+(n+1)^3-1)/2+1` -/
def P14563769749445299116.Spec : Prop :=
  ∀ n, P14563769749445299116.a n = (A081435 n : ℚ)

end A081435

/-! ## A081435.P1039531932303248382

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=3`
-/

namespace A081435.P1039531932303248382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081435.P1039531932303248382

namespace A081435

/-- `∑[∑[a(n-1)+6]]` -/
def P1039531932303248382.Spec : Prop :=
  ∀ n, (P1039531932303248382.a n : ℤ) = A081435 n

end A081435

/-! ## A081435.P14791923611306940226

`ceil(cosh(log(2*n+1))^3)`
-/

namespace A081435.P14791923611306940226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (2 * n + 1 : ℝ)) ^ 3⌉

end

end A081435.P14791923611306940226

namespace A081435

/-- `ceil(cosh(log(2*n+1))^3)` -/
def P14791923611306940226.Spec : Prop :=
  ∀ n, P14791923611306940226.a n = A081435 n

end A081435

/-! ## A081435.P5442121028152333670

`round(cosh(log(2*n+1))^3)`
-/

namespace A081435.P5442121028152333670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (2 * n + 1 : ℝ)) ^ 3)

end

end A081435.P5442121028152333670

namespace A081435

/-- `round(cosh(log(2*n+1))^3)` -/
def P5442121028152333670.Spec : Prop :=
  ∀ n, P5442121028152333670.a n = A081435 n

end A081435

/-! ## A081435.P13059864695582646529

`∑[∑[ogf((1+x+4x^2)/(1-2x+x^2))]]`
-/

namespace A081435.P13059864695582646529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081435.P13059864695582646529

namespace A081435

/-- `∑[∑[ogf((1+x+4x^2)/(1-2x+x^2))]]` -/
def P13059864695582646529.Spec : Prop :=
  ∀ n, P13059864695582646529.a n = A081435 n

end A081435

/-! ## A081435.P16277872772927343387

`ogf((1+x+4x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A081435.P16277872772927343387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 4] [1, -4, 6, -4, 1] n

end

end A081435.P16277872772927343387

namespace A081435

/-- `ogf((1+x+4x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P16277872772927343387.Spec : Prop :=
  ∀ n, P16277872772927343387.a n = A081435 n

end A081435

/-! ## A081435.P9328485089354512784

`∑[4-∑[a(n-1)-6]]` with `a(0)=3`
-/

namespace A081435.P9328485089354512784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081435.P9328485089354512784

namespace A081435

/-- `∑[4-∑[a(n-1)-6]]` -/
def P9328485089354512784.Spec : Prop :=
  ∀ n, P9328485089354512784.a n = A081435 n

end A081435

/-! ## A081435.P10887176869732061950

`(C(2*n+1, 2)/2+1)*(n+1)`
-/

namespace A081435.P10887176869732061950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n + 1) 2 : ℚ) / 2 + 1) * (n + 1 : ℚ)

end

end A081435.P10887176869732061950

namespace A081435

/-- `(C(2*n+1, 2)/2+1)*(n+1)` -/
def P10887176869732061950.Spec : Prop :=
  ∀ n, P10887176869732061950.a n = (A081435 n : ℚ)

end A081435

/-! ## A081435.P6293996658386367723

`(n+1)*(lcm(n, 2*n+1)/2+1)`
-/

namespace A081435.P6293996658386367723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.lcm n (2 * n + 1) : ℚ) / 2 + 1)

end

end A081435.P6293996658386367723

namespace A081435

/-- `(n+1)*(lcm(n, 2*n+1)/2+1)` -/
def P6293996658386367723.Spec : Prop :=
  ∀ n, P6293996658386367723.a n = (A081435 n : ℚ)

end A081435

/-! ## A081435.P10501984031118824049

`∑[A056107(n)]`
-/

namespace A081435.P10501984031118824049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081435.P10501984031118824049

namespace A081435

/-- `∑[A056107(n)]` -/
def P10501984031118824049.Spec : Prop :=
  ∀ n, P10501984031118824049.a n = A081435 n

end A081435

/-! ## A081435.P4163871921697202875

`∑[A033428(n)+1]`
-/

namespace A081435.P4163871921697202875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081435.P4163871921697202875

namespace A081435

/-- `∑[A033428(n)+1]` -/
def P4163871921697202875.Spec : Prop :=
  ∀ n, P4163871921697202875.a n = A081435 n

end A081435

/-! ## A081435.P16993066170430137236

`Δ[A054603(n)/4]`
-/

namespace A081435.P16993066170430137236
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054603 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081435.P16993066170430137236

namespace A081435

/-- `Δ[A054603(n)/4]` -/
def P16993066170430137236.Spec : Prop :=
  ∀ n, P16993066170430137236.a n = (A081435 n : ℚ)

end A081435

/-! ## A081435.P6390531330172772677

`∑[A056106(n)+n]`
-/

namespace A081435.P6390531330172772677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081435.P6390531330172772677

namespace A081435

/-- `∑[A056106(n)+n]` -/
def P6390531330172772677.Spec : Prop :=
  ∀ n, P6390531330172772677.a n = A081435 n

end A081435

/-! ## A081435.P3229438417564965302

`∑[A056108(n)-n]`
-/

namespace A081435.P3229438417564965302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081435.P3229438417564965302

namespace A081435

/-- `∑[A056108(n)-n]` -/
def P3229438417564965302.Spec : Prop :=
  ∀ n, P3229438417564965302.a n = A081435 n

end A081435

/-! ## A081435.P10745425287881445575

`(A005898(n)+1)/2`
-/

namespace A081435.P10745425287881445575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005898 n + 1 : ℚ) / 2

end

end A081435.P10745425287881445575

namespace A081435

/-- `(A005898(n)+1)/2` -/
def P10745425287881445575.Spec : Prop :=
  ∀ n, P10745425287881445575.a n = (A081435 n : ℚ)

end A081435

/-! ## A081435.P10784999550883339004

`∑[A058331(n)+n²]`
-/

namespace A081435.P10784999550883339004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081435.P10784999550883339004

namespace A081435

/-- `∑[A058331(n)+n²]` -/
def P10784999550883339004.Spec : Prop :=
  ∀ n, P10784999550883339004.a n = A081435 n

end A081435

/-! ## A081435.P10083325677260477279

`A076459(n+1)%A250352(n+1)`
-/

namespace A081435.P10083325677260477279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076459 (n + 1)) (A250352 (n + 1))

end

end A081435.P10083325677260477279

namespace A081435

/-- `A076459(n+1)%A250352(n+1)` -/
def P10083325677260477279.Spec : Prop :=
  ∀ n, P10083325677260477279.a n = A081435 n

end A081435

/-! ## A081435.P10874872375704584795

`Δ[(C(n, 2)+1)*∑[n]]`
-/

namespace A081435.P10874872375704584795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081435.P10874872375704584795

namespace A081435

/-- `Δ[(C(n, 2)+1)*∑[n]]` -/
def P10874872375704584795.Spec : Prop :=
  ∀ n, P10874872375704584795.a n = A081435 n

end A081435

/-! ## A081435.P1795036716394873058

`Δ[A006528(n)]`
-/

namespace A081435.P1795036716394873058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081435.P1795036716394873058

namespace A081435

/-- `Δ[A006528(n)]` -/
def P1795036716394873058.Spec : Prop :=
  ∀ n, P1795036716394873058.a n = A081435 n

end A081435

/-! ## A081435.P15956453813088277702

`∑[A084684(2*n)]`
-/

namespace A081435.P15956453813088277702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084684 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081435.P15956453813088277702

namespace A081435

/-- `∑[A084684(2*n)]` -/
def P15956453813088277702.Spec : Prop :=
  ∀ n, P15956453813088277702.a n = A081435 n

end A081435

/-!
# A081436: Fifth subdiagonal in array of n-gonal numbers A081422.

The programs for A081436, the canonical program `A081436.P6729107207867649434` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081436 has offset 0).

The definition of A081436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081436.P6729107207867649434

`(n+1)*(2*(n+1)²-n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081436

/-- `(n+1)*(2*(n+1)²-n)/2` -/
def P6729107207867649434.Spec : Prop :=
  ∀ n, P6729107207867649434.a n = (A081436 n : ℚ)

end A081436

/-! ## A081436.P12626124216353915002

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=5`
-/

namespace A081436.P12626124216353915002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081436.P12626124216353915002

namespace A081436

/-- `∑[∑[a(n-1)+6]]` -/
def P12626124216353915002.Spec : Prop :=
  ∀ n, (P12626124216353915002.a n : ℤ) = A081436 n

end A081436

/-! ## A081436.P6688599584560717400

`C(n+1, n)^3-∑[n]`
-/

namespace A081436.P6688599584560717400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) n ^ 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081436.P6688599584560717400

namespace A081436

/-- `C(n+1, n)^3-∑[n]` -/
def P6688599584560717400.Spec : Prop :=
  ∀ n, P6688599584560717400.a n = A081436 n

end A081436

/-! ## A081436.P9879409092054204963

`Δ[C(n+1, 2)²]-∑[n]`
-/

namespace A081436.P9879409092054204963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A081436.P9879409092054204963

namespace A081436

/-- `Δ[C(n+1, 2)²]-∑[n]` -/
def P9879409092054204963.Spec : Prop :=
  ∀ n, P9879409092054204963.a n = A081436 n

end A081436

/-! ## A081436.P892644628053710125

`(n+1)^acos(cos(3))-∑[n]`
-/

namespace A081436.P892644628053710125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (Real.arccos (Real.cos (3 : ℝ))) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)

end

end A081436.P892644628053710125

namespace A081436

/-- `(n+1)^acos(cos(3))-∑[n]` -/
def P892644628053710125.Spec : Prop :=
  ∀ n, P892644628053710125.a n = (A081436 n : ℝ)

end A081436

/-! ## A081436.P4122935900041957129

`∑[round(3/acot(n)²)]+n²`
-/

namespace A081436.P4122935900041957129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (n : ℝ) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A081436.P4122935900041957129

namespace A081436

/-- `∑[round(3/acot(n)²)]+n²` -/
def P4122935900041957129.Spec : Prop :=
  ∀ n, P4122935900041957129.a n = A081436 n

end A081436

/-! ## A081436.P1616491343614402733

`∑[∑[ogf((1+3x+2x^2)/(1-2x+x^2))]]`
-/

namespace A081436.P1616491343614402733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081436.P1616491343614402733

namespace A081436

/-- `∑[∑[ogf((1+3x+2x^2)/(1-2x+x^2))]]` -/
def P1616491343614402733.Spec : Prop :=
  ∀ n, P1616491343614402733.a n = A081436 n

end A081436

/-! ## A081436.P1555871886531156265

`ogf((1+3x+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A081436.P1555871886531156265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -4, 6, -4, 1] n

end

end A081436.P1555871886531156265

namespace A081436

/-- `ogf((1+3x+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P1555871886531156265.Spec : Prop :=
  ∀ n, P1555871886531156265.a n = A081436 n

end A081436

/-! ## A081436.P10257995809000783093

`(n+1)^3-C(n+1, 2)`
-/

namespace A081436.P10257995809000783093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

end

end A081436.P10257995809000783093

namespace A081436

/-- `(n+1)^3-C(n+1, 2)` -/
def P10257995809000783093.Spec : Prop :=
  ∀ n, P10257995809000783093.a n = A081436 n

end A081436

/-! ## A081436.P5566750181499055797

`∑[2-∑[a(n-1)-6]]` with `a(0)=1`
-/

namespace A081436.P5566750181499055797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081436.P5566750181499055797

namespace A081436

/-- `∑[2-∑[a(n-1)-6]]` -/
def P5566750181499055797.Spec : Prop :=
  ∀ n, P5566750181499055797.a n = A081436 n

end A081436

/-! ## A081436.P11556998469461117040

`∑[n+1]+lcm(n, (n+1)²)`
-/

namespace A081436.P11556998469461117040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm n ((n + 1) ^ 2)

end

end A081436.P11556998469461117040

namespace A081436

/-- `∑[n+1]+lcm(n, (n+1)²)` -/
def P11556998469461117040.Spec : Prop :=
  ∀ n, (P11556998469461117040.a n : ℤ) = A081436 n

end A081436

/-! ## A081436.P8718376541465766396

`∑[n]+floor((n+1)/Δ[atan(n)])`
-/

namespace A081436.P8718376541465766396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n + 1 : ℝ) / (f2 (n + 1) - f2 n)⌋

end

end A081436.P8718376541465766396

namespace A081436

/-- `∑[n]+floor((n+1)/Δ[atan(n)])` -/
def P8718376541465766396.Spec : Prop :=
  ∀ n, P8718376541465766396.a n = A081436 n

end A081436

/-! ## A081436.P11624906606990113985

`C(n+2, 2)+n*(n+1)²`
-/

namespace A081436.P11624906606990113985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 + n * (n + 1) ^ 2

end

end A081436.P11624906606990113985

namespace A081436

/-- `C(n+2, 2)+n*(n+1)²` -/
def P11624906606990113985.Spec : Prop :=
  ∀ n, (P11624906606990113985.a n : ℤ) = A081436 n

end A081436

/-! ## A081436.P4760995622533691338

`(n+1)^3-∑[n%(n+1)]`
-/

namespace A081436.P4760995622533691338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081436.P4760995622533691338

namespace A081436

/-- `(n+1)^3-∑[n%(n+1)]` -/
def P4760995622533691338.Spec : Prop :=
  ∀ n, P4760995622533691338.a n = A081436 n

end A081436

/-! ## A081436.P12019514093407066177

`(n+1)^3-∑[gcd(n, 2*n)]`
-/

namespace A081436.P12019514093407066177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081436.P12019514093407066177

namespace A081436

/-- `(n+1)^3-∑[gcd(n, 2*n)]` -/
def P12019514093407066177.Spec : Prop :=
  ∀ n, P12019514093407066177.a n = A081436 n

end A081436

/-! ## A081436.P11147852324429325211

`∑[n+1]+n*record[(n-1)²]`
-/

namespace A081436.P11147852324429325211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A081436.P11147852324429325211

namespace A081436

/-- `∑[n+1]+n*record[(n-1)²]` -/
def P11147852324429325211.Spec : Prop :=
  ∀ n, P11147852324429325211.a n = A081436 n

end A081436

/-! ## A081436.P18260345130951028241

`2*n*C(n+2, 2)-∑[n-1]`
-/

namespace A081436.P18260345130951028241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * Nat.choose (n + 2) 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081436.P18260345130951028241

namespace A081436

/-- `2*n*C(n+2, 2)-∑[n-1]` -/
def P18260345130951028241.Spec : Prop :=
  ∀ n, P18260345130951028241.a n = A081436 n

end A081436

/-! ## A081436.P4474102118593373209

`lcm(n+1, n*(n+2))-∑[n-1]`
-/

namespace A081436.P4474102118593373209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n * (n + 2)) : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081436.P4474102118593373209

namespace A081436

/-- `lcm(n+1, n*(n+2))-∑[n-1]` -/
def P4474102118593373209.Spec : Prop :=
  ∀ n, P4474102118593373209.a n = A081436 n

end A081436

/-! ## A081436.P12116393207265347623

`2*n²+(n+1)²+a(n-1)` with `a(0)=1`
-/

namespace A081436.P12116393207265347623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n ^ 2 + ((n + 1) ^ 2 + a (n - 1))

end

end A081436.P12116393207265347623

namespace A081436

/-- `2*n²+(n+1)²+a(n-1)` -/
def P12116393207265347623.Spec : Prop :=
  ∀ n, (P12116393207265347623.a n : ℤ) = A081436 n

end A081436

/-! ## A081436.P11417942254587196201

`∑[n+1]+(n+1)*∑[lcm(2, 2*n)]`
-/

namespace A081436.P11417942254587196201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A081436.P11417942254587196201

namespace A081436

/-- `∑[n+1]+(n+1)*∑[lcm(2, 2*n)]` -/
def P11417942254587196201.Spec : Prop :=
  ∀ n, (P11417942254587196201.a n : ℤ) = A081436 n

end A081436

/-!
# A081437: Diagonal in array of n-gonal numbers A081422.

The programs for A081437, the canonical program `A081437.P14818767288704405254` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081437 has offset 0).

The definition of A081437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081437.P14818767288704405254

`(n+1)^3+n*(n+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081437

/-- `(n+1)^3+n*(n+1)` -/
def P14818767288704405254.Spec : Prop :=
  ∀ n, (P14818767288704405254.a n : ℤ) = A081437 n

theorem P14818767288704405254.correct : P14818767288704405254.Spec := by
  intro n
  simp only [A081437]

end A081437

/-! ## A081437.P17094111451468174850

`A085490(n+1)`
-/

namespace A081437.P17094111451468174850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 (n + 1)

end

end A081437.P17094111451468174850

namespace A081437

/-- `A085490(n+1)` -/
def P17094111451468174850.Spec : Prop :=
  ∀ n, P17094111451468174850.a n = A081437 n

end A081437

/-! ## A081437.P17884191652968745424

`∑[∑[xor(1, 6*n)]+n]`
-/

namespace A081437.P17884191652968745424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081437.P17884191652968745424

namespace A081437

/-- `∑[∑[xor(1, 6*n)]+n]` -/
def P17884191652968745424.Spec : Prop :=
  ∀ n, (P17884191652968745424.a n : ℤ) = A081437 n

end A081437

/-! ## A081437.P11823503546970721437

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=8`
-/

namespace A081437.P11823503546970721437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081437.P11823503546970721437

namespace A081437

/-- `∑[∑[a(n-1)+6]]` -/
def P11823503546970721437.Spec : Prop :=
  ∀ n, (P11823503546970721437.a n : ℤ) = A081437 n

end A081437

/-! ## A081437.P9403080094319579722

`lcm(n+1, (n+1)²+n)`
-/

namespace A081437.P9403080094319579722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((n + 1) ^ 2 + n)

end

end A081437.P9403080094319579722

namespace A081437

/-- `lcm(n+1, (n+1)²+n)` -/
def P9403080094319579722.Spec : Prop :=
  ∀ n, (P9403080094319579722.a n : ℤ) = A081437 n

end A081437

/-! ## A081437.P14008596145931437397

`record[n*n*(n-2)+1]`
-/

namespace A081437.P14008596145931437397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * ((n : ℤ) - 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081437.P14008596145931437397

namespace A081437

/-- `record[n*n*(n-2)+1]` -/
def P14008596145931437397.Spec : Prop :=
  ∀ n, P14008596145931437397.a n = A081437 n

end A081437

/-! ## A081437.P14365255708676775757

`∑[∑[ogf((1+6x-x^2)/(1-2x+x^2))]]`
-/

namespace A081437.P14365255708676775757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081437.P14365255708676775757

namespace A081437

/-- `∑[∑[ogf((1+6x-x^2)/(1-2x+x^2))]]` -/
def P14365255708676775757.Spec : Prop :=
  ∀ n, P14365255708676775757.a n = A081437 n

end A081437

/-! ## A081437.P5455119153703245530

`ogf((1+6x-x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A081437.P5455119153703245530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -1] [1, -4, 6, -4, 1] n

end

end A081437.P5455119153703245530

namespace A081437

/-- `ogf((1+6x-x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P5455119153703245530.Spec : Prop :=
  ∀ n, P5455119153703245530.a n = A081437 n

end A081437

/-! ## A081437.P1760127051502511988

`(n+1)*or(1, n*(n+3))`
-/

namespace A081437.P1760127051502511988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.lor 1 (n * (n + 3))

end

end A081437.P1760127051502511988

namespace A081437

/-- `(n+1)*or(1, n*(n+3))` -/
def P1760127051502511988.Spec : Prop :=
  ∀ n, (P1760127051502511988.a n : ℤ) = A081437 n

end A081437

/-! ## A081437.P16652894669674535732

`(n+1)*xor(1, n*(n+3))`
-/

namespace A081437.P16652894669674535732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor 1 (n * (n + 3))

end

end A081437.P16652894669674535732

namespace A081437

/-- `(n+1)*xor(1, n*(n+3))` -/
def P16652894669674535732.Spec : Prop :=
  ∀ n, (P16652894669674535732.a n : ℤ) = A081437 n

end A081437

/-! ## A081437.P8046474904064168969

`∑[Δ[n²]²-lcm(n, n-1)]`
-/

namespace A081437.P8046474904064168969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 - (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081437.P8046474904064168969

namespace A081437

/-- `∑[Δ[n²]²-lcm(n, n-1)]` -/
def P8046474904064168969.Spec : Prop :=
  ∀ n, P8046474904064168969.a n = A081437 n

end A081437

/-! ## A081437.P14002202615361760631

`floor((n+1)/acot((n+1)²+n))`
-/

namespace A081437.P14002202615361760631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot ((n + 1) ^ 2 + n : ℝ)⌋

end

end A081437.P14002202615361760631

namespace A081437

/-- `floor((n+1)/acot((n+1)²+n))` -/
def P14002202615361760631.Spec : Prop :=
  ∀ n, P14002202615361760631.a n = A081437 n

end A081437

/-! ## A081437.P4852400940705437326

`round((n+1)/acot((n+1)²+n))`
-/

namespace A081437.P4852400940705437326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot ((n + 1) ^ 2 + n : ℝ))

end

end A081437.P4852400940705437326

namespace A081437

/-- `round((n+1)/acot((n+1)²+n))` -/
def P4852400940705437326.Spec : Prop :=
  ∀ n, P4852400940705437326.a n = A081437 n

end A081437

/-! ## A081437.P18111749567324914231

`(n+1)/tan(acot((n+1)²+n))`
-/

namespace A081437.P18111749567324914231
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.tan (SequenceMachineLib.acot ((n + 1) ^ 2 + n : ℝ))

end

end A081437.P18111749567324914231

namespace A081437

/-- `(n+1)/tan(acot((n+1)²+n))` -/
def P18111749567324914231.Spec : Prop :=
  ∀ n, P18111749567324914231.a n = (A081437 n : ℝ)

end A081437

/-! ## A081437.P10659560633712772217

`((n+1)²+n)/cot(atan(n+1))`
-/

namespace A081437.P10659560633712772217
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A081437.P10659560633712772217

namespace A081437

/-- `((n+1)²+n)/cot(atan(n+1))` -/
def P10659560633712772217.Spec : Prop :=
  ∀ n, P10659560633712772217.a n = (A081437 n : ℝ)

end A081437

/-! ## A081437.P12623263033595222800

`(n+1)*(2*C(n+2, 2)-1)`
-/

namespace A081437.P12623263033595222800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((2 * Nat.choose (n + 2) 2 : ℤ) - 1)

end

end A081437.P12623263033595222800

namespace A081437

/-- `(n+1)*(2*C(n+2, 2)-1)` -/
def P12623263033595222800.Spec : Prop :=
  ∀ n, P12623263033595222800.a n = A081437 n

end A081437

/-! ## A081437.P2660805031278163869

`(lcm(2, n*(n+3))+1)*(n+1)`
-/

namespace A081437.P2660805031278163869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n * (n + 3)) + 1) * (n + 1)

end

end A081437.P2660805031278163869

namespace A081437

/-- `(lcm(2, n*(n+3))+1)*(n+1)` -/
def P2660805031278163869.Spec : Prop :=
  ∀ n, (P2660805031278163869.a n : ℤ) = A081437 n

end A081437

/-! ## A081437.P16237104830837848349

`(n*(n+3)+1)*C(n+1, n)`
-/

namespace A081437.P16237104830837848349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n + 3) + 1) * Nat.choose (n + 1) n

end

end A081437.P16237104830837848349

namespace A081437

/-- `(n*(n+3)+1)*C(n+1, n)` -/
def P16237104830837848349.Spec : Prop :=
  ∀ n, (P16237104830837848349.a n : ℤ) = A081437 n

theorem P16237104830837848349.correct : P16237104830837848349.Spec := by
  intro n
  simp only [A081437, Nat.add_sub_cancel, A081437.P16237104830837848349.a, A081437.P14818767288704405254.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A081437

/-! ## A081437.P1570735068406751991

`(n+1)*∑[(n+1)*ceil(atan(n+1))]`
-/

namespace A081437.P1570735068406751991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081437.P1570735068406751991

namespace A081437

/-- `(n+1)*∑[(n+1)*ceil(atan(n+1))]` -/
def P1570735068406751991.Spec : Prop :=
  ∀ n, P1570735068406751991.a n = A081437 n

end A081437

/-! ## A081437.P3338751237362010376

`(n+1)*((n+3)*gcd(n, 2*n)+1)`
-/

namespace A081437.P3338751237362010376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 3) * Nat.gcd n (2 * n) + 1)

end

end A081437.P3338751237362010376

namespace A081437

/-- `(n+1)*((n+3)*gcd(n, 2*n)+1)` -/
def P3338751237362010376.Spec : Prop :=
  ∀ n, (P3338751237362010376.a n : ℤ) = A081437 n

theorem P3338751237362010376.correct : P3338751237362010376.Spec := by
  intro n
  simp only [A081437, Nat.add_sub_cancel, A081437.P3338751237362010376.a, A081437.P14818767288704405254.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A081437

/-!
# A081438: Diagonal in array of n-gonal numbers A081422.

The programs for A081438, the canonical program `A081438.P14288616538319154294` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081438 has offset 0).

The definition of A081438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081438.P14288616538319154294

`(n+1)*(2*n²+7*n+2)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081438

/-- `(n+1)*(2*n²+7*n+2)/2` -/
def P14288616538319154294.Spec : Prop :=
  ∀ n, P14288616538319154294.a n = (A081438 n : ℚ)

end A081438

/-! ## A081438.P13727834722948718261

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=9`
-/

namespace A081438.P13727834722948718261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081438.P13727834722948718261

namespace A081438

/-- `∑[∑[a(n-1)+6]]` -/
def P13727834722948718261.Spec : Prop :=
  ∀ n, (P13727834722948718261.a n : ℤ) = A081438 n

end A081438

/-! ## A081438.P9410163236809617807

`∑[n-1]+lcm(n+2, (n+1)²)`
-/

namespace A081438.P9410163236809617807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.lcm (n + 2) ((n + 1) ^ 2) : ℤ)

end

end A081438.P9410163236809617807

namespace A081438

/-- `∑[n-1]+lcm(n+2, (n+1)²)` -/
def P9410163236809617807.Spec : Prop :=
  ∀ n, P9410163236809617807.a n = A081438 n

end A081438

/-! ## A081438.P9806472533013011246

`3*(n+1)²+a(n-1)-2` with `a(0)=1`
-/

namespace A081438.P9806472533013011246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * (n + 1) ^ 2 : ℤ) + (a (n - 1) - 2)

end

end A081438.P9806472533013011246

namespace A081438

/-- `3*(n+1)²+a(n-1)-2` -/
def P9806472533013011246.Spec : Prop :=
  ∀ n, P9806472533013011246.a n = A081438 n

end A081438

/-! ## A081438.P4964642741071295318

`C(n+2, 2)+(n+3)*∑[2*n]`
-/

namespace A081438.P4964642741071295318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 + (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081438.P4964642741071295318

namespace A081438

/-- `C(n+2, 2)+(n+3)*∑[2*n]` -/
def P4964642741071295318.Spec : Prop :=
  ∀ n, (P4964642741071295318.a n : ℤ) = A081438 n

end A081438

/-! ## A081438.P8274609597367004468

`∑[n+1]+(n+3)*lcm(n, n+1)`
-/

namespace A081438.P8274609597367004468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3) * Nat.lcm n (n + 1)

end

end A081438.P8274609597367004468

namespace A081438

/-- `∑[n+1]+(n+3)*lcm(n, n+1)` -/
def P8274609597367004468.Spec : Prop :=
  ∀ n, (P8274609597367004468.a n : ℤ) = A081438 n

end A081438

/-! ## A081438.P11093591746546966947

`C(n+1, 2)*(2*n+7)+n+1`
-/

namespace A081438.P11093591746546966947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 * (2 * n + 7) + (n + 1)

end

end A081438.P11093591746546966947

namespace A081438

/-- `C(n+1, 2)*(2*n+7)+n+1` -/
def P11093591746546966947.Spec : Prop :=
  ∀ n, (P11093591746546966947.a n : ℤ) = A081438 n

end A081438

/-! ## A081438.P11617863982248248071

`a(n-1)+3/(n+1)^(-2)-2` with `a(0)=1`
-/

namespace A081438.P11617863982248248071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (3 / (n + 1 : ℚ) ^ (-2 : ℤ) - 2)

end

end A081438.P11617863982248248071

namespace A081438

/-- `a(n-1)+3/(n+1)^(-2)-2` -/
def P11617863982248248071.Spec : Prop :=
  ∀ n, P11617863982248248071.a n = (A081438 n : ℚ)

end A081438

/-! ## A081438.P14909943088437954147

`a(n-1)+(n+1)*3*(n+1)-2` with `a(0)=1`
-/

namespace A081438.P14909943088437954147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n + 1) * (3 * (n + 1)) : ℤ) - 2

end

end A081438.P14909943088437954147

namespace A081438

/-- `a(n-1)+(n+1)*3*(n+1)-2` -/
def P14909943088437954147.Spec : Prop :=
  ∀ n, P14909943088437954147.a n = A081438 n

end A081438

/-! ## A081438.P7872207665876976022

`∑[n+1]+(n+3)*∑[and(2*n+1, 2*n)]`
-/

namespace A081438.P7872207665876976022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A081438.P7872207665876976022

namespace A081438

/-- `∑[n+1]+(n+3)*∑[and(2*n+1, 2*n)]` -/
def P7872207665876976022.Spec : Prop :=
  ∀ n, (P7872207665876976022.a n : ℤ) = A081438 n

end A081438

/-! ## A081438.P12388409696851489971

`∑[A067725(n)+1]`
-/

namespace A081438.P12388409696851489971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081438.P12388409696851489971

namespace A081438

/-- `∑[A067725(n)+1]` -/
def P12388409696851489971.Spec : Prop :=
  ∀ n, P12388409696851489971.a n = A081438 n

end A081438

/-! ## A081438.P6090263624143016111

`∑[A100536(n+1)]`
-/

namespace A081438.P6090263624143016111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081438.P6090263624143016111

namespace A081438

/-- `∑[A100536(n+1)]` -/
def P6090263624143016111.Spec : Prop :=
  ∀ n, P6090263624143016111.a n = A081438 n

end A081438

/-! ## A081438.P3499494781137052578

`A081437(n)+∑[n]`
-/

namespace A081438.P3499494781137052578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081437 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081438.P3499494781137052578

namespace A081438

/-- `A081437(n)+∑[n]` -/
def P3499494781137052578.Spec : Prop :=
  ∀ n, P3499494781137052578.a n = A081438 n

end A081438

/-! ## A081438.P15994552403340779488

`A303609(n)/2+1`
-/

namespace A081438.P15994552403340779488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303609 n : ℚ) / 2 + 1

end

end A081438.P15994552403340779488

namespace A081438

/-- `A303609(n)/2+1` -/
def P15994552403340779488.Spec : Prop :=
  ∀ n, P15994552403340779488.a n = (A081438 n : ℚ)

end A081438

/-! ## A081438.P15198788436710709204

`∑[A059993(n)+n²]`
-/

namespace A081438.P15198788436710709204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081438.P15198788436710709204

namespace A081438

/-- `∑[A059993(n)+n²]` -/
def P15198788436710709204.Spec : Prop :=
  ∀ n, P15198788436710709204.a n = A081438 n

end A081438

/-! ## A081438.P773188312051989852

`∑[A082108(n)-n²]`
-/

namespace A081438.P773188312051989852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082108 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081438.P773188312051989852

namespace A081438

/-- `∑[A082108(n)-n²]` -/
def P773188312051989852.Spec : Prop :=
  ∀ n, P773188312051989852.a n = A081438 n

end A081438

/-! ## A081438.P8605426110558615541

`∑[A080663(n+1)-1]`
-/

namespace A081438.P8605426110558615541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080663 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081438.P8605426110558615541

namespace A081438

/-- `∑[A080663(n+1)-1]` -/
def P8605426110558615541.Spec : Prop :=
  ∀ n, P8605426110558615541.a n = A081438 n

end A081438

/-! ## A081438.P4096762495564290682

`∑[A033428(n+1)-2]`
-/

namespace A081438.P4096762495564290682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081438.P4096762495564290682

namespace A081438

/-- `∑[A033428(n+1)-2]` -/
def P4096762495564290682.Spec : Prop :=
  ∀ n, P4096762495564290682.a n = A081438 n

end A081438

/-! ## A081438.P11754832872244195238

`∑[A144390(n+1)+n]`
-/

namespace A081438.P11754832872244195238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144390 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081438.P11754832872244195238

namespace A081438

/-- `∑[A144390(n+1)+n]` -/
def P11754832872244195238.Spec : Prop :=
  ∀ n, P11754832872244195238.a n = A081438 n

end A081438

/-! ## A081438.P12146035119416931400

`A317637(n)+∑[n+1]`
-/

namespace A081438.P12146035119416931400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317637 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081438.P12146035119416931400

namespace A081438

/-- `A317637(n)+∑[n+1]` -/
def P12146035119416931400.Spec : Prop :=
  ∀ n, P12146035119416931400.a n = A081438 n

end A081438

/-!
# A081439: Expansion of exp(2*x)*cosh(x/sqrt(1 - x^2)).

The programs for A081439, there is no canonical definition to state claims against.
-/

/-! ## A081439.P14506126233878154935

`3*A319161(a(n-1))-1` with `a(0)=1`
-/

namespace A081439.P14506126233878154935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A319161 (a (n - 1)).toNat - 1

end

end A081439.P14506126233878154935

/-! ## A081439.P12544829831719186147

`∑[3*A203076(a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A081439.P12544829831719186147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * A203076 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081439.P12544829831719186147

/-!
# A081440: Expansion of e.g.f.: exp(x)*cosh(x/sqrt(1 - x^2)).

The programs for A081440, there is no canonical definition to state claims against.
-/

/-! ## A081440.P7544412634958071740

`A008619(A050946(n)*A326154(n+2))`
-/

namespace A081440.P7544412634958071740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A050946 n * A326154 (n + 2)).toNat

end

end A081440.P7544412634958071740

/-! ## A081440.P5233747749971915960

`A008619(lcm(A050946(n), A326154(n+2)))`
-/

namespace A081440.P5233747749971915960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lcm (A050946 n) (A326154 (n + 2)))

end

end A081440.P5233747749971915960

/-! ## A081440.P17123923826453565554

`A109168(or(n, A353774(n)))`
-/

namespace A081440.P17123923826453565554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (Int.lor (n : ℤ) (A353774 n)).toNat

end

end A081440.P17123923826453565554

/-!
# A081441: a(n) = (2*n^3 - n^2 - n + 2)/2.

The programs for A081441, the canonical program `A081441.P9575560521250186220` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081441 has offset 0).

The definition of A081441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081441.P9575560521250186220

`(2*n^3-n²-n+2)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081441

/-- `(2*n^3-n²-n+2)/2` -/
def P9575560521250186220.Spec : Prop :=
  ∀ n, P9575560521250186220.a n = (A081441 n : ℚ)

end A081441

/-! ## A081441.P7953197244828339862

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=-1`
-/

namespace A081441.P7953197244828339862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081441.P7953197244828339862

namespace A081441

/-- `∑[∑[a(n-1)+6]]` -/
def P7953197244828339862.Spec : Prop :=
  ∀ n, P7953197244828339862.a n = A081441 n

end A081441

/-! ## A081441.P332637862038752101

`∑[∑[ogf((1-3x+8x^2)/(1-2x+x^2))]]`
-/

namespace A081441.P332637862038752101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 8] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081441.P332637862038752101

namespace A081441

/-- `∑[∑[ogf((1-3x+8x^2)/(1-2x+x^2))]]` -/
def P332637862038752101.Spec : Prop :=
  ∀ n, P332637862038752101.a n = A081441 n

end A081441

/-! ## A081441.P4072573743383822263

`∑[8-∑[a(n-1)-6]]` with `a(0)=7`
-/

namespace A081441.P4072573743383822263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  f2 (n - 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081441.P4072573743383822263

namespace A081441

/-- `∑[8-∑[a(n-1)-6]]` -/
def P4072573743383822263.Spec : Prop :=
  ∀ n, P4072573743383822263.a n = A081441 n

end A081441

/-! ## A081441.P4057261038238261616

`∑[3*lcm(n, n-1)-(n-1)]`
-/

namespace A081441.P4057261038238261616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081441.P4057261038238261616

namespace A081441

/-- `∑[3*lcm(n, n-1)-(n-1)]` -/
def P4057261038238261616.Spec : Prop :=
  ∀ n, P4057261038238261616.a n = A081441 n

end A081441

/-! ## A081441.P3589076104178144774

`∑[C(2*n, 2)+(1-n)²-n]`
-/

namespace A081441.P3589076104178144774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 : ℤ) + ((1 - (n : ℤ)) ^ 2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081441.P3589076104178144774

namespace A081441

/-- `∑[C(2*n, 2)+(1-n)²-n]` -/
def P3589076104178144774.Spec : Prop :=
  ∀ n, P3589076104178144774.a n = A081441 n

end A081441

/-! ## A081441.P773108886915133175

`∑[(1-n)²-(n-C(2*n, 2))]`
-/

namespace A081441.P773108886915133175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - ((n : ℤ) - (Nat.choose (2 * n) 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081441.P773108886915133175

namespace A081441

/-- `∑[(1-n)²-(n-C(2*n, 2))]` -/
def P773108886915133175.Spec : Prop :=
  ∀ n, P773108886915133175.a n = A081441 n

end A081441

/-! ## A081441.P16130710364186214185

`∑[(or(1, 2*n)+n-2)*(n-1)]`
-/

namespace A081441.P16130710364186214185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (2 * n) : ℤ) + ((n : ℤ) - 2)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081441.P16130710364186214185

namespace A081441

/-- `∑[(or(1, 2*n)+n-2)*(n-1)]` -/
def P16130710364186214185.Spec : Prop :=
  ∀ n, P16130710364186214185.a n = A081441 n

end A081441

/-! ## A081441.P14767297133787196462

`∑[(xor(1, 2*n)+n-2)*(n-1)]`
-/

namespace A081441.P14767297133787196462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (2 * n) : ℤ) + ((n : ℤ) - 2)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081441.P14767297133787196462

namespace A081441

/-- `∑[(xor(1, 2*n)+n-2)*(n-1)]` -/
def P14767297133787196462.Spec : Prop :=
  ∀ n, P14767297133787196462.a n = A081441 n

end A081441

/-! ## A081441.P10287640450119999520

`∑[record[(n-1)²]+(n-3)*2*n]`
-/

namespace A081441.P10287640450119999520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + ((n : ℤ) - 3) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081441.P10287640450119999520

namespace A081441

/-- `∑[record[(n-1)²]+(n-3)*2*n]` -/
def P10287640450119999520.Spec : Prop :=
  ∀ n, P10287640450119999520.a n = A081441 n

end A081441

/-! ## A081441.P13606473197209375235

`∑[(Δ[C(2*n, 2)]-(n+2))*(n-1)]`
-/

namespace A081441.P13606473197209375235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n + 2 : ℤ)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081441.P13606473197209375235

namespace A081441

/-- `∑[(Δ[C(2*n, 2)]-(n+2))*(n-1)]` -/
def P13606473197209375235.Spec : Prop :=
  ∀ n, P13606473197209375235.a n = A081441 n

end A081441

/-! ## A081441.P4724004604957175904

`(2*n+1)*(C(n, 2)+1/(2*n+1))`
-/

namespace A081441.P4724004604957175904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * ((Nat.choose n 2 : ℚ) + 1 / (2 * n + 1 : ℚ))

end

end A081441.P4724004604957175904

namespace A081441

/-- `(2*n+1)*(C(n, 2)+1/(2*n+1))` -/
def P4724004604957175904.Spec : Prop :=
  ∀ n, P4724004604957175904.a n = (A081441 n : ℚ)

end A081441

/-! ## A081441.P7803989697833122912

`a(n-1)+(2*n+n-1)*(n-1)` with `a(0)=1`
-/

namespace A081441.P7803989697833122912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((2 * n : ℤ) + ((n : ℤ) - 1)) * ((n : ℤ) - 1)

end

end A081441.P7803989697833122912

namespace A081441

/-- `a(n-1)+(2*n+n-1)*(n-1)` -/
def P7803989697833122912.Spec : Prop :=
  ∀ n, P7803989697833122912.a n = A081441 n

end A081441

/-! ## A081441.P7834760206350532549

`∑[(C(2*n+1, 2*n)+n-2)*(n-1)]`
-/

namespace A081441.P7834760206350532549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n + 1) (2 * n) : ℤ) + ((n : ℤ) - 2)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081441.P7834760206350532549

namespace A081441

/-- `∑[(C(2*n+1, 2*n)+n-2)*(n-1)]` -/
def P7834760206350532549.Spec : Prop :=
  ∀ n, P7834760206350532549.a n = A081441 n

end A081441

/-! ## A081441.P337384777236114163

`∑[(and(2*n+1, 2*n)+n-1)*(n-1)]`
-/

namespace A081441.P337384777236114163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land (2 * n + 1) (2 * n) : ℤ) + ((n : ℤ) - 1)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081441.P337384777236114163

namespace A081441

/-- `∑[(and(2*n+1, 2*n)+n-1)*(n-1)]` -/
def P337384777236114163.Spec : Prop :=
  ∀ n, P337384777236114163.a n = A081441 n

end A081441

/-! ## A081441.P8630299693239812641

`A160378(n)+1`
-/

namespace A081441.P8630299693239812641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + 1

end

end A081441.P8630299693239812641

namespace A081441

/-- `A160378(n)+1` -/
def P8630299693239812641.Spec : Prop :=
  ∀ n, P8630299693239812641.a n = A081441 n

end A081441

/-! ## A081441.P12380490978061798692

`A152618(n)+∑[n]`
-/

namespace A081441.P12380490978061798692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152618 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081441.P12380490978061798692

namespace A081441

/-- `A152618(n)+∑[n]` -/
def P12380490978061798692.Spec : Prop :=
  ∀ n, P12380490978061798692.a n = A081441 n

end A081441

/-! ## A081441.P16418828295819896500

`∑[A242658(n)-(n+1)]`
-/

namespace A081441.P16418828295819896500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242658 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081441.P16418828295819896500

namespace A081441

/-- `∑[A242658(n)-(n+1)]` -/
def P16418828295819896500.Spec : Prop :=
  ∀ n, P16418828295819896500.a n = A081441 n

end A081441

/-! ## A081441.P11640788246784572062

`∑[A056105(n)-2*n]`
-/

namespace A081441.P11640788246784572062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081441.P11640788246784572062

namespace A081441

/-- `∑[A056105(n)-2*n]` -/
def P11640788246784572062.Spec : Prop :=
  ∀ n, P11640788246784572062.a n = A081441 n

end A081441

/-!
# A081442: Expansion of e.g.f.: cosh(x/sqrt(1-x^2)) (even powers).

The programs for A081442, there is no canonical definition to state claims against.
-/

/-! ## A081442.P17534257281252127866

`abs(A012023(n))`
-/

namespace A081442.P17534257281252127866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A012023 n|

end

end A081442.P17534257281252127866

/-! ## A081442.P17043862713121758243

`A012150(2*n)`
-/

namespace A081442.P17043862713121758243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012150 (2 * n)

end

end A081442.P17043862713121758243

/-! ## A081442.P2251648172357335685

`A012023(n)*A033999(n)`
-/

namespace A081442.P2251648172357335685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012023 n * A033999 n

end

end A081442.P2251648172357335685

/-! ## A081442.P17546050443381311762

`lcm(∑[A002448(n)], A012023(n))`
-/

namespace A081442.P17546050443381311762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A012023 n)

end

end A081442.P17546050443381311762

/-! ## A081442.P11604365974294470235

`∑[A002448(n²)]*A012023(n)`
-/

namespace A081442.P11604365974294470235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A012023 n

end

end A081442.P11604365974294470235

/-!
# A081443: Binomial transform of expansion of cosh(sinh(x)).

The programs for A081443, there is no canonical definition to state claims against.
-/

/-! ## A081443.P16026076240465514112

`abs(A009152(n))`
-/

namespace A081443.P16026076240465514112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009152 n|

end

end A081443.P16026076240465514112

/-! ## A081443.P7930569696122581796

`A009152(n)*A033999(n)`
-/

namespace A081443.P7930569696122581796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009152 n * A033999 n

end

end A081443.P7930569696122581796

/-! ## A081443.P2775047513451489569

`gcd(A000038(n), A009152(n))`
-/

namespace A081443.P2775047513451489569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A009152 n)

end

end A081443.P2775047513451489569

/-! ## A081443.P6530696415410181022

`lcm(A009152(n), A016116(n))`
-/

namespace A081443.P6530696415410181022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009152 n) (A016116 n)

end

end A081443.P6530696415410181022

/-! ## A081443.P9227786469662993644

`(1-A010673(n))*A009152(n)`
-/

namespace A081443.P9227786469662993644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A009152 n

end

end A081443.P9227786469662993644

/-!
# A081444: Second binomial transform of expansion of cosh(sinh(x)).

The programs for A081444, there is no canonical definition to state claims against.
-/

/-! ## A081444.P970679843915857195

`A004526(A188144(n)+2^n)`
-/

namespace A081444.P970679843915857195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A188144 n + (2 ^ n : ℤ)).toNat

end

end A081444.P970679843915857195

/-! ## A081444.P15589877457192509249

`A038572(A188144(n)+2^n)`
-/

namespace A081444.P15589877457192509249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A188144 n + (2 ^ n : ℤ)).toNat

end

end A081444.P15589877457192509249

/-! ## A081444.P10356130534572031104

`A142150(A188144(n)+2^n)`
-/

namespace A081444.P10356130534572031104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A188144 n + (2 ^ n : ℤ)).toNat

end

end A081444.P10356130534572031104

/-! ## A081444.P6202080743003961022

`A028242(A188144(n)+A000051(n))`
-/

namespace A081444.P6202080743003961022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A188144 n + A000051 n).toNat

end

end A081444.P6202080743003961022

/-!
# A081445: Smallest squares such that partial sums of the sequence plus 11 are primes.

The programs for A081445, there is no canonical definition to state claims against.
-/

/-! ## A081445.P8577583371074314780

`(6*A081446(n+1))²`
-/

namespace A081445.P8577583371074314780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * A081446 (n + 1)) ^ 2

end

end A081445.P8577583371074314780

/-! ## A081445.P13057439612674695861

`A016910(A081446(n+1))`
-/

namespace A081445.P13057439612674695861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 (A081446 (n + 1)).toNat

end

end A081445.P13057439612674695861

/-! ## A081445.P3021275818673713758

`A249807(n+5)`
-/

namespace A081445.P3021275818673713758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 (n + 5)

end

end A081445.P3021275818673713758

/-! ## A081445.P1911652977114096090

`Δ[A073609(n+3)]`
-/

namespace A081445.P1911652977114096090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073609 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081445.P1911652977114096090

/-! ## A081445.P3668899989268675006

`A073609(n+4)-A073609(n+3)`
-/

namespace A081445.P3668899989268675006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073609 (n + 4) - A073609 (n + 3)

end

end A081445.P3668899989268675006

/-! ## A081445.P2873851000918329105

`filter[A249807(n), A117567(#)]`
-/

namespace A081445.P2873851000918329105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A117567 (f1 j).toNat = 1) n)

end

end A081445.P2873851000918329105

/-! ## A081445.P13551424829893419325

`filter[A249807(n), A014306(#)]`
-/

namespace A081445.P13551424829893419325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A081445.P13551424829893419325

/-! ## A081445.P13664089804810905252

`filter[A249807(n), A065202(#)]`
-/

namespace A081445.P13664089804810905252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A081445.P13664089804810905252

/-! ## A081445.P11529631605034157061

`filter[A249807(n), A079979(#)]`
-/

namespace A081445.P11529631605034157061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A081445.P11529631605034157061

/-! ## A081445.P5654345953355643647

`filter[A249807(n), A202238(#)]`
-/

namespace A081445.P5654345953355643647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A081445.P5654345953355643647

/-! ## A081445.P6332534666259125712

`filter[A249807(n), A005614(#)]`
-/

namespace A081445.P6332534666259125712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005614 (f1 j).toNat = 1) n)

end

end A081445.P6332534666259125712

/-! ## A081445.P13732923249985601600

`filter[A249807(n), A189820(#)]`
-/

namespace A081445.P13732923249985601600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189820 (f1 j).toNat = 1) n)

end

end A081445.P13732923249985601600

/-! ## A081445.P11728017375083099809

`filter[A249807(n), A079978(#)]`
-/

namespace A081445.P11728017375083099809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A081445.P11728017375083099809

/-! ## A081445.P14436788302239651764

`filter[A249807(n), A095792(#)]`
-/

namespace A081445.P14436788302239651764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095792 (f1 j).toNat = 1) n)

end

end A081445.P14436788302239651764

/-! ## A081445.P10792579620357599821

`filter[A249807(n), A143731(#)]`
-/

namespace A081445.P10792579620357599821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A081445.P10792579620357599821

/-! ## A081445.P2853705644447674209

`filter[A249807(n), A144101(#)]`
-/

namespace A081445.P2853705644447674209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A081445.P2853705644447674209

/-! ## A081445.P10238990292745478633

`filter[A249807(n), A166946(#)]`
-/

namespace A081445.P10238990292745478633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166946 (f1 j).toNat = 1) n)

end

end A081445.P10238990292745478633

/-! ## A081445.P2674648486218974704

`filter[A249807(n), A189640(#)]`
-/

namespace A081445.P2674648486218974704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189640 (f1 j).toNat = 1) n)

end

end A081445.P2674648486218974704

/-! ## A081445.P13012526271400469820

`filter[A249807(n), A189706(#)]`
-/

namespace A081445.P13012526271400469820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189706 (f1 j).toNat = 1) n)

end

end A081445.P13012526271400469820

/-! ## A081445.P10571389455497835007

`filter[A249807(n), A204418(#)]`
-/

namespace A081445.P10571389455497835007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204418 (f1 j).toNat = 1) n)

end

end A081445.P10571389455497835007

/-!
# A081446: a(n) = sqrt( A081445(n) )/6.

The programs for A081446, there is no canonical definition to state claims against.
-/

/-! ## A081446.P15147388839218000066

`sqrt(A081445(n+1))/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081446.P15147388839218000066
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A081445 (n + 1) : ℝ) / 6

end

end A081446.P15147388839218000066

/-! ## A081446.P7572550305605906013

`A008615(sqrt(A081445(n+1)))`
-/

namespace A081446.P7572550305605906013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.roundAway (Real.sqrt (A081445 (n + 1) : ℝ))).toNat

end

end A081446.P7572550305605906013

/-! ## A081446.P11013850497070646691

`A060789(sqrt(A081445(n+1)))`
-/

namespace A081446.P11013850497070646691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (SequenceMachineLib.roundAway (Real.sqrt (A081445 (n + 1) : ℝ))).toNat

end

end A081446.P11013850497070646691

/-! ## A081446.P7233492481678234966

`A112689(sqrt(A081445(n+1)))`
-/

namespace A081446.P7233492481678234966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (SequenceMachineLib.roundAway (Real.sqrt (A081445 (n + 1) : ℝ))).toNat

end

end A081446.P7233492481678234966

/-! ## A081446.P16375731871933178404

`A008615(root(A081445(n+1), 2))`
-/

namespace A081446.P16375731871933178404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.roundAway ((A081445 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A081446.P16375731871933178404

/-! ## A081446.P337572237909585308

`A000196(A081445(n+1)/36)`
-/

namespace A081446.P337572237909585308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A081445 (n + 1) : ℚ) / 36)).toNat

end

end A081446.P337572237909585308

/-! ## A081446.P5750511995000276108

`A008612(sqrt(A081445(n+1))+1)`
-/

namespace A081446.P5750511995000276108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (SequenceMachineLib.roundAway (Real.sqrt (A081445 (n + 1) : ℝ) + 1)).toNat

end

end A081446.P5750511995000276108

/-! ## A081446.P3533844934090438051

`A028242(A008611(sqrt(A081445(n+1))))`
-/

namespace A081446.P3533844934090438051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A008611 (SequenceMachineLib.roundAway (Real.sqrt (A081445 (n + 1) : ℝ))).toNat).toNat

end

end A081446.P3533844934090438051

/-! ## A081446.P16153054647775886601

`sqrt(A249807(n+5))/6`
-/

namespace A081446.P16153054647775886601
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A249807 (n + 5) : ℝ) / 6

end

end A081446.P16153054647775886601

/-! ## A081446.P10921221721578108155

`sqrt(Δ[A073609(n+3)])/6`
-/

namespace A081446.P10921221721578108155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073609 (n + 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (n + 1) - f1 n : ℝ) / 6

end

end A081446.P10921221721578108155

/-! ## A081446.P14171543298079923210

`A000188(A081445(n+1)/6)`
-/

namespace A081446.P14171543298079923210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A081445 (n + 1) : ℚ) / 6)).toNat

end

end A081446.P14171543298079923210

/-! ## A081446.P4903693165936666731

`A000194(Δ[A073609(n+3)])/6`
-/

namespace A081446.P4903693165936666731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073609 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000194 (f1 (n + 1) - f1 n).toNat : ℚ) / 6

end

end A081446.P4903693165936666731

/-!
# A081447: Smallest squares such that partial sums of the sequence plus 5 are primes.

The programs for A081447, there is no canonical definition to state claims against.
-/

/-! ## A081447.P6290671130146137725

`(6*A081448(n+1))²`
-/

namespace A081447.P6290671130146137725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * A081448 (n + 1)) ^ 2

end

end A081447.P6290671130146137725

/-! ## A081447.P7594722465543928440

`A016910(A081448(n+1))`
-/

namespace A081447.P7594722465543928440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 (A081448 (n + 1)).toNat

end

end A081447.P7594722465543928440

/-! ## A081447.P10667369802344870157

`A016742(3*A081448(n+1))`
-/

namespace A081447.P10667369802344870157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (3 * A081448 (n + 1)).toNat

end

end A081447.P10667369802344870157

/-! ## A081447.P17838420631959342785

`A299257(4*A081448(n+1))`
-/

namespace A081447.P17838420631959342785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299257 (4 * A081448 (n + 1)).toNat

end

end A081447.P17838420631959342785

/-! ## A081447.P17237582814580600389

`A000290(6*A081448(n+1))`
-/

namespace A081447.P17237582814580600389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (6 * A081448 (n + 1)).toNat

end

end A081447.P17237582814580600389

/-! ## A081447.P5642096382821502025

`3*A000212(6*A081448(n+1))`
-/

namespace A081447.P5642096382821502025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000212 (6 * A081448 (n + 1)).toNat

end

end A081447.P5642096382821502025

/-! ## A081447.P5296330054178495267

`Δ[A246760(n+1)]`
-/

namespace A081447.P5296330054178495267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081447.P5296330054178495267

/-! ## A081447.P7252783500328126449

`abs(Δ[A246760(-xor(n, -1))])`
-/

namespace A081447.P7252783500328126449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246760 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A081447.P7252783500328126449

/-! ## A081447.P8417015745535007128

`A246760(n+2)-A246760(n+1)`
-/

namespace A081447.P8417015745535007128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246760 (n + 2) - A246760 (n + 1)

end

end A081447.P8417015745535007128

/-! ## A081447.P1880722923711844790

`Δ[A000203(A246760(ϕ²-(ϕ-n)))]`
-/

namespace A081447.P1880722923711844790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A246760 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081447.P1880722923711844790

/-!
# A081448: a(n) = sqrt( A081447(n) )/6.

The programs for A081448, there is no canonical definition to state claims against.
-/

/-! ## A081448.P17509989693888411649

`sqrt(A081447(n+1))/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081448.P17509989693888411649
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A081447 (n + 1) : ℝ) / 6

end

end A081448.P17509989693888411649

/-! ## A081448.P16664073526679096171

`sqrt(Δ[A246760(n+1)])/6`
-/

namespace A081448.P16664073526679096171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246760 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (n + 1) - f1 n : ℝ) / 6

end

end A081448.P16664073526679096171

/-! ## A081448.P15506148026128551037

`sqrt(abs(Δ[A246760(-xor(n, -1))]))/6`
-/

namespace A081448.P15506148026128551037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246760 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (|f1 (n + 1) - f1 n| : ℝ) / 6

end

end A081448.P15506148026128551037

/-! ## A081448.P8111873173803461299

`A008615(sqrt(Δ[A246760(n+1)]))`
-/

namespace A081448.P8111873173803461299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A081448.P8111873173803461299

/-! ## A081448.P8975617234066599351

`A060789(sqrt(Δ[A246760(n+1)]))`
-/

namespace A081448.P8975617234066599351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A081448.P8975617234066599351

/-! ## A081448.P9604703443290073039

`A112689(sqrt(Δ[A246760(n+1)]))`
-/

namespace A081448.P9604703443290073039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A081448.P9604703443290073039

/-! ## A081448.P10557824851351246999

`A152467(sqrt(Δ[A246760(n+1)]))`
-/

namespace A081448.P10557824851351246999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A081448.P10557824851351246999

/-! ## A081448.P13245437621573138898

`A000188(Δ[A246760(n+1)]/6)`
-/

namespace A081448.P13245437621573138898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / 6)).toNat

end

end A081448.P13245437621573138898

/-! ## A081448.P16971532367598101417

`A000196(Δ[A246760(n+1)/36])`
-/

namespace A081448.P16971532367598101417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246760 (n + 1) : ℚ) / 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A081448.P16971532367598101417

/-! ## A081448.P2827369574241214816

`A008612(sqrt(Δ[A246760(n+1)])+1)`
-/

namespace A081448.P2827369574241214816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ) + 1)).toNat

end

end A081448.P2827369574241214816

/-! ## A081448.P10266443465724661684

`sqrt(A246760(n+2)-A246760(n+1))/6`
-/

namespace A081448.P10266443465724661684
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A246760 (n + 2) - A246760 (n + 1) : ℝ) / 6

end

end A081448.P10266443465724661684

/-!
# A081449: Smallest squares such that partial sums of the sequence plus 17 are primes.

The programs for A081449, there is no canonical definition to state claims against.
-/

/-! ## A081449.P2847318453024487323

`(6*A081450(n+1))²`
-/

namespace A081449.P2847318453024487323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * A081450 (n + 1)) ^ 2

end

end A081449.P2847318453024487323

/-! ## A081449.P15268211461032362131

`A016910(A081450(n+1))`
-/

namespace A081449.P15268211461032362131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 (A081450 (n + 1)).toNat

end

end A081449.P15268211461032362131

/-! ## A081449.P14131370042649856486

`A016766(2*A081450(n+1))`
-/

namespace A081449.P14131370042649856486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 (2 * A081450 (n + 1)).toNat

end

end A081449.P14131370042649856486

/-! ## A081449.P5066115867613915146

`A016742(3*A081450(n+1))`
-/

namespace A081449.P5066115867613915146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (3 * A081450 (n + 1)).toNat

end

end A081449.P5066115867613915146

/-! ## A081449.P13137737699139747582

`A299257(4*A081450(n+1))`
-/

namespace A081449.P13137737699139747582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299257 (4 * A081450 (n + 1)).toNat

end

end A081449.P13137737699139747582

/-! ## A081449.P2048819363830649131

`A000290(6*A081450(n+1))`
-/

namespace A081449.P2048819363830649131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (6 * A081450 (n + 1)).toNat

end

end A081449.P2048819363830649131

/-! ## A081449.P16994366305689891181

`A000463(12*A081450(n+1))`
-/

namespace A081449.P16994366305689891181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (12 * A081450 (n + 1)).toNat

end

end A081449.P16994366305689891181

/-! ## A081449.P6615218723113410561

`A002620(12*A081450(n+1))`
-/

namespace A081449.P6615218723113410561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (12 * A081450 (n + 1)).toNat

end

end A081449.P6615218723113410561

/-! ## A081449.P9947788873129693154

`(6*A081450(n+1))^A020639(2*(n+1))`
-/

namespace A081449.P9947788873129693154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * A081450 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A081449.P9947788873129693154

/-!
# A081450: a(n) = sqrt(A081449(n))/6.

The programs for A081450, there is no canonical definition to state claims against.
-/

/-! ## A081450.P8176575007176104095

`sqrt(A081449(n+1))/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081450.P8176575007176104095
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A081449 (n + 1) : ℝ) / 6

end

end A081450.P8176575007176104095

/-! ## A081450.P14193247364685720383

`A008615(sqrt(A081449(n+1)))`
-/

namespace A081450.P14193247364685720383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.roundAway (Real.sqrt (A081449 (n + 1) : ℝ))).toNat

end

end A081450.P14193247364685720383

/-! ## A081450.P8950168123569252261

`A060789(sqrt(A081449(n+1)))`
-/

namespace A081450.P8950168123569252261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (SequenceMachineLib.roundAway (Real.sqrt (A081449 (n + 1) : ℝ))).toNat

end

end A081450.P8950168123569252261

/-! ## A081450.P1681811358088916487

`A112689(sqrt(A081449(n+1)))`
-/

namespace A081450.P1681811358088916487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (SequenceMachineLib.roundAway (Real.sqrt (A081449 (n + 1) : ℝ))).toNat

end

end A081450.P1681811358088916487

/-! ## A081450.P10313312224076797747

`A000196(A081449(n+1)/36)`
-/

namespace A081450.P10313312224076797747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A081449 (n + 1) : ℚ) / 36)).toNat

end

end A081450.P10313312224076797747

/-! ## A081450.P5828871696704381116

`root(A081449(n+1)/36, A020639(2*(n+1)))`
-/

namespace A081450.P5828871696704381116
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A081449 (n + 1) : ℚ) / 36 : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A081450.P5828871696704381116

/-! ## A081450.P13779298118512323117

`A002262(A081449(n+1)/18)`
-/

namespace A081450.P13779298118512323117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.roundAway ((A081449 (n + 1) : ℚ) / 18)).toNat

end

end A081450.P13779298118512323117

/-! ## A081450.P189459603491407879

`A050873(A081449(n+1)/18)`
-/

namespace A081450.P189459603491407879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (SequenceMachineLib.roundAway ((A081449 (n + 1) : ℚ) / 18)).toNat

end

end A081450.P189459603491407879

/-! ## A081450.P4267162119432533205

`A002024(A081449(n+1)/18)/2`
-/

namespace A081450.P4267162119432533205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (SequenceMachineLib.roundAway ((A081449 (n + 1) : ℚ) / 18)).toNat : ℚ) / 2

end

end A081450.P4267162119432533205

/-! ## A081450.P5351029176228457300

`A000188(A081449(n+1)/6)`
-/

namespace A081450.P5351029176228457300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A081449 (n + 1) : ℚ) / 6)).toNat

end

end A081450.P5351029176228457300

/-!
# A081454: Triangle read by rows in which the n-th row contains n distinct numbers whose product is a square, which is minimal over all choices for n distinct numbers.

The programs for A081454, there is no canonical definition to state claims against.
-/

/-! ## A081454.P11451132229925306608

`A212737(A212737(n+1)^A194968(n+1))`
-/

namespace A081454.P11451132229925306608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (SequenceMachineLib.roundAway ((A212737 (n + 1) : ℚ) ^ (A194968 (n + 1) : ℤ))).toNat

end

end A081454.P11451132229925306608

/-! ## A081454.P1854217301140354931

`A345158(A194540(n+1)+8)`
-/

namespace A081454.P1854217301140354931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345158 (A194540 (n + 1) + 8).toNat

end

end A081454.P1854217301140354931

/-! ## A081454.P17684501831448021499

`gcd(A007283(n), A297149(A193633(n)))`
-/

namespace A081454.P17684501831448021499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007283 n) (A297149 (A193633 n).toNat)

end

end A081454.P17684501831448021499

/-! ## A081454.P18431953631627240181

`A004738(A081532(n+1)^A171172(n+1))`
-/

namespace A081454.P18431953631627240181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (SequenceMachineLib.roundAway ((A081532 (n + 1) : ℚ) ^ (A171172 (n + 1) : ℤ))).toNat

end

end A081454.P18431953631627240181

/-!
# A081455: Final entry of n-th row of triangle in A081454.

The programs for A081455, there is no canonical definition to state claims against.
-/

/-! ## A081455.P14826007974883770960

`A081454(∑[n+1])`
-/

namespace A081455.P14826007974883770960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081454 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081455.P14826007974883770960

/-! ## A081455.P6886026677704030529

`A081454(A000217(n+1))%A064910(n)`
-/

namespace A081455.P6886026677704030529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081454 (A000217 (n + 1)).toNat) (A064910 n)

end

end A081455.P6886026677704030529

/-! ## A081455.P7606964159597403229

`A081454(A000217(n+1))*A266227(n+1)`
-/

namespace A081455.P7606964159597403229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081454 (A000217 (n + 1)).toNat * A266227 (n + 1)

end

end A081455.P7606964159597403229

/-! ## A081455.P8022218803149564039

`A081454(A000217(n+1))+A000035(2*n)`
-/

namespace A081455.P8022218803149564039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081454 (A000217 (n + 1)).toNat + A000035 (2 * n)

end

end A081455.P8022218803149564039

/-! ## A081455.P8676721516286051407

`A081454(A000217(n+1))+char[A046306(n+1)]`
-/

namespace A081455.P8676721516286051407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081454 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A081455.P8676721516286051407

/-! ## A081455.P12622311679263503829

`A081454(A000217(n+1))+char[A034184(n+3)]`
-/

namespace A081455.P12622311679263503829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034184 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081454 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A081455.P12622311679263503829

/-! ## A081455.P6464864736030928075

`A081454(A000217(n+1))+char[A054490(3*n+4)]`
-/

namespace A081455.P6464864736030928075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081454 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A081455.P6464864736030928075

/-! ## A081455.P2880431790517108476

`A243822(A001316(n))+A081454(A000217(n+1))`
-/

namespace A081455.P2880431790517108476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (A001316 n).toNat + A081454 (A000217 (n + 1)).toNat

end

end A081455.P2880431790517108476

/-!
# A081456: Product of entries in n-th row of triangle in A081454.

The programs for A081456, there is no canonical definition to state claims against.
-/

/-! ## A081456.P1954999258983251398

`A081457(n+1)²`
-/

namespace A081456.P1954999258983251398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081457 (n + 1) ^ 2

end

end A081456.P1954999258983251398

/-! ## A081456.P12241024603814631116

`A081457(n+1)^A000005(A151800(n))`
-/

namespace A081456.P12241024603814631116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081457 (n + 1) : ℚ) ^ (A000005 (A151800 n).toNat : ℤ)

end

end A081456.P12241024603814631116

/-! ## A081456.P7676732538138102676

`A081457(n+1)^A000005(A023204(n+1))`
-/

namespace A081456.P7676732538138102676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081457 (n + 1) : ℚ) ^ (A000005 (A023204 (n + 1)).toNat : ℤ)

end

end A081456.P7676732538138102676

/-! ## A081456.P9042840988984694632

`A081457(n+1)^A000005(A065091(n+1))`
-/

namespace A081456.P9042840988984694632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081457 (n + 1) : ℚ) ^ (A000005 (A065091 (n + 1)).toNat : ℤ)

end

end A081456.P9042840988984694632

/-! ## A081456.P7893424124043390070

`A081457(n+1)^A020639(Δ[A000040(n+1)])`
-/

namespace A081456.P7893424124043390070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081457 (n + 1) : ℚ) ^ (A020639 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A081456.P7893424124043390070

/-!
# A081457: a(n) = A081456(n)^(1/2).

The programs for A081457, there is no canonical definition to state claims against.
-/

/-! ## A081457.P7762799955685680324

`A081456(n+1)^(1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081457.P7762799955685680324
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A081456 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A081457.P7762799955685680324

/-! ## A081457.P1291488343978009899

`sqrt(A081456(n+1))`
-/

namespace A081457.P1291488343978009899
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A081456 (n + 1) : ℝ)

end

end A081457.P1291488343978009899

/-! ## A081457.P16012950211287795909

`root(A081456(n+1), A000122(n²))`
-/

namespace A081457.P16012950211287795909
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A081456 (n + 1) : ℝ) ^ (1 / (A000122 (n ^ 2) : ℝ))

end

end A081457.P16012950211287795909

/-! ## A081457.P3314664545030324015

`root(A081456(n+1), A178334(n)+1)`
-/

namespace A081457.P3314664545030324015
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A081456 (n + 1) : ℝ) ^ (1 / (A178334 n + 1 : ℝ))

end

end A081457.P3314664545030324015

/-! ## A081457.P11126386387809401579

`root(A081456(n+1), A034444(A034444(n+1)))`
-/

namespace A081457.P11126386387809401579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A081456 (n + 1) : ℝ) ^ (1 / (A034444 (A034444 (n + 1)).toNat : ℝ))

end

end A081457.P11126386387809401579

/-!
# A081459: Consider the mapping f(r) = (1/2)*(r + N/r) from rationals to rationals where N = 5. Starting with r = 2 and applying the mapping to each new (reduced) rational number gives 2, 9/4, 161/72, 51841/23184, ..., tending to N^(1/2). Sequence gives values of the numerators.

The programs for A081459, there is no canonical definition to state claims against.
-/

/-! ## A081459.P591206123141667969

`a(n-1)²+5*A081460(n)²` with `a(0)=2`
-/

namespace A081459.P591206123141667969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) ^ 2 + 5 * A081460 n ^ 2

end

end A081459.P591206123141667969

/-! ## A081459.P10654594859471810044

`2*a(n-1)²-1` with `a(0)=2, a(1)=9`
-/

namespace A081459.P10654594859471810044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  2 * a (n - 1) ^ 2 - 1

end

end A081459.P10654594859471810044

/-! ## A081459.P900638329563860148

`lcm(2, a(n-1)²)-1` with `a(0)=2, a(1)=9`
-/

namespace A081459.P900638329563860148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  (Int.lcm 2 (a (n - 1) ^ 2) : ℤ) - 1

end

end A081459.P900638329563860148

/-! ## A081459.P17083556219608583780

`xor(1, a(n-1)²)+a(n-1)²` with `a(0)=2`
-/

namespace A081459.P17083556219608583780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 1 (a (n - 1) ^ 2) + a (n - 1) ^ 2

end

end A081459.P17083556219608583780

/-!
# A081460: Consider the mapping f(r) = (1/2)*(r + N/r) from rationals to rationals where N = 5. Starting with a = 2 and applying the mapping to each new (reduced) rational number gives 2, 9/4, 161/72, 51841/23184, ..., tending to N^(1/2). Sequence gives values of the denominators.

The programs for A081460, there is no canonical definition to state claims against.
-/

/-! ## A081460.P17409365911122288961

`2*a(n-1)*A081459(n)` with `a(0)=1`
-/

namespace A081460.P17409365911122288961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * A081459 n

end

end A081460.P17409365911122288961

/-! ## A081460.P18045211125803542015

`A079613(n)/2`
-/

namespace A081460.P18045211125803542015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079613 n : ℚ) / 2

end

end A081460.P18045211125803542015

/-! ## A081460.P10333014637724632675

`A001076(2^n)`
-/

namespace A081460.P10333014637724632675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (2 ^ n)

end

end A081460.P10333014637724632675

/-! ## A081460.P7135645214538076153

`A000045(3*2^n)/2`
-/

namespace A081460.P7135645214538076153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (3 * 2 ^ n) : ℚ) / 2

end

end A081460.P7135645214538076153

/-!
# A081464: Numbers k such that the fractional part of (3/2)^k decreases monotonically to zero.

The programs for A081464, there is no canonical definition to state claims against.
-/

/-! ## A081464.P14527719712987447112

`A335736(A156096(n))+A124538(n)`
-/

namespace A081464.P14527719712987447112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335736 (A156096 n).toNat + A124538 n

end

end A081464.P14527719712987447112

/-! ## A081464.P6394376457426523158

`A267122(xor(A051118(n), A270613(n+1)))`
-/

namespace A081464.P6394376457426523158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267122 (Int.xor (A051118 n) (A270613 (n + 1))).toNat

end

end A081464.P6394376457426523158

/-!
# A081467: a(n) = smallest (n+k) such that n divides the sum (n+1)+ (n+2) + ... (n+k) = k*n + k*(k+1)/2.

The programs for A081467, there is no canonical definition to state claims against.
-/

/-! ## A081467.P7085127994421906308

`n+1+A011772(n+1)`
-/

namespace A081467.P7085127994421906308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A011772 (n + 1)

end

end A081467.P7085127994421906308

/-! ## A081467.P16033931909375385293

`A321366(n+1)+n`
-/

namespace A081467.P16033931909375385293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (n + 1) + (n : ℤ)

end

end A081467.P16033931909375385293

/-! ## A081467.P18284366818003694361

`2*(n+1)-A344763(n+1)`
-/

namespace A081467.P18284366818003694361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A344763 (n + 1)

end

end A081467.P18284366818003694361

/-! ## A081467.P2365736626728884792

`A000120(n+1)+A005187(n+1)-A344763(n+1)`
-/

namespace A081467.P2365736626728884792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A005187 (n + 1) - A344763 (n + 1))

end

end A081467.P2365736626728884792

/-! ## A081467.P3190117703014585425

`A344005(2*(n+1))+1+n`
-/

namespace A081467.P3190117703014585425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (2 * (n + 1)) + 1 + (n : ℤ)

end

end A081467.P3190117703014585425

/-! ## A081467.P4973829535732146918

`A344005(n+2+n)+n+1`
-/

namespace A081467.P4973829535732146918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 2 + n) + (n + 1 : ℤ)

end

end A081467.P4973829535732146918

/-! ## A081467.P15024988465026415485

`ceil(sqrt(A345988(2*(n+1)))+n)`
-/

namespace A081467.P15024988465026415485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A345988 (2 * (n + 1)) : ℝ) + (n : ℝ)⌉

end

end A081467.P15024988465026415485

/-! ## A081467.P196746284264117870

`3*(n+1)-A182665(2*(n+1))`
-/

namespace A081467.P196746284264117870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A182665 (2 * (n + 1))

end

end A081467.P196746284264117870

/-! ## A081467.P7658484886806969306

`A020725(A011772(n+1)+n)`
-/

namespace A081467.P7658484886806969306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A011772 (n + 1) + (n : ℤ)).toNat

end

end A081467.P7658484886806969306

/-! ## A081467.P5574168137322044172

`A002024(A066561(n+1))+n+1`
-/

namespace A081467.P5574168137322044172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A066561 (n + 1)).toNat + (n + 1 : ℤ)

end

end A081467.P5574168137322044172

/-! ## A081467.P7741835940755624652

`A383972((n+1)²)+n+1`
-/

namespace A081467.P7741835940755624652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383972 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A081467.P7741835940755624652

/-!
# A081468: a(n) is the smallest multiple of n of the type k*n + k*(k+1)/2, i.e., the smallest sum (n+1) to (n+k) which is divisible by n.

The programs for A081468, there is no canonical definition to state claims against.
-/

/-! ## A081468.P3000785811584246897

`(n+1)*A081469(n+1)`
-/

namespace A081468.P3000785811584246897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A081469 (n + 1)

end

end A081468.P3000785811584246897

/-! ## A081468.P4460008606613919604

`(n+1)*(A379676(n)-1)`
-/

namespace A081468.P4460008606613919604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A379676 n - 1)

end

end A081468.P4460008606613919604

/-! ## A081468.P18302467095776892492

`A066561(n+1)+(n+1)*A011772(n+1)`
-/

namespace A081468.P18302467095776892492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066561 (n + 1) + (n + 1 : ℤ) * A011772 (n + 1)

end

end A081468.P18302467095776892492

/-! ## A081468.P3658548763878796197

`A000217(A011772(n+1)+n+1)-∑[n+1]`
-/

namespace A081468.P3658548763878796197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A011772 (n + 1) + (n + 1 : ℤ)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081468.P3658548763878796197

/-! ## A081468.P8908382737310983590

`A000217(A081467(n+1))-A000217(n+1)`
-/

namespace A081468.P8908382737310983590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A081467 (n + 1)).toNat - A000217 (n + 1)

end

end A081468.P8908382737310983590

/-! ## A081468.P4792401340764404835

`A000096(A011772(n+1))+n*A011772(n+1)`
-/

namespace A081468.P4792401340764404835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A011772 (n + 1)).toNat + (n : ℤ) * A011772 (n + 1)

end

end A081468.P4792401340764404835

/-! ## A081468.P7376898069092979085

`(A344006(2*(n+1))+A011772(n+1))*(n+1)`
-/

namespace A081468.P7376898069092979085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344006 (2 * (n + 1)) + A011772 (n + 1)) * (n + 1 : ℤ)

end

end A081468.P7376898069092979085

/-! ## A081468.P17673221488038683767

`A000096(A011772(n+1)+n)-A000096(n)`
-/

namespace A081468.P17673221488038683767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A011772 (n + 1) + (n : ℤ)).toNat - A000096 n

end

end A081468.P17673221488038683767

/-!
# A081469: a(n) = A081468(n)/n.

The programs for A081469, there is no canonical definition to state claims against.
-/

/-! ## A081469.P691230889673674396

`A081468(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081469.P691230889673674396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081468 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A081469.P691230889673674396

/-! ## A081469.P8902622388260539000

`A379676(n)-1`
-/

namespace A081469.P8902622388260539000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379676 n - 1

end

end A081469.P8902622388260539000

/-! ## A081469.P3694751923388251733

`A061782(n+1)+A011772(n+1)`
-/

namespace A081469.P3694751923388251733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061782 (n + 1) + A011772 (n + 1)

end

end A081469.P3694751923388251733

/-! ## A081469.P9450928911895480413

`(4*A081468(n+1))%A004767(n)`
-/

namespace A081469.P9450928911895480413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A081468 (n + 1)) (A004767 n)

end

end A081469.P9450928911895480413

/-! ## A081469.P5471204183232232512

`A061782(n+1)+A321366(n+1)-1`
-/

namespace A081469.P5471204183232232512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061782 (n + 1) + (A321366 (n + 1) - 1)

end

end A081469.P5471204183232232512

/-! ## A081469.P18154639490253456875

`A344006(2*(n+1))+A011772(n+1)`
-/

namespace A081469.P18154639490253456875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (2 * (n + 1)) + A011772 (n + 1)

end

end A081469.P18154639490253456875

/-! ## A081469.P133021138938839995

`A344005(2*(n+1))+A061782(n+1)`
-/

namespace A081469.P133021138938839995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (2 * (n + 1)) + A061782 (n + 1)

end

end A081469.P133021138938839995

/-! ## A081469.P1017437321427334091

`A344006(2*(n+1))+A344005(2*(n+1))`
-/

namespace A081469.P1017437321427334091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (2 * (n + 1)) + A344005 (2 * (n + 1))

end

end A081469.P1017437321427334091

/-! ## A081469.P17942342451095320180

`A023443(A379676(n))`
-/

namespace A081469.P17942342451095320180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A379676 n).toNat

end

end A081469.P17942342451095320180

/-! ## A081469.P10225423996119853580

`A289207(A379676(n)+1)`
-/

namespace A081469.P10225423996119853580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A379676 n + 1).toNat

end

end A081469.P10225423996119853580

/-! ## A081469.P7522829609585916114

`A134478((n+2)*A061782(n+1))`
-/

namespace A081469.P7522829609585916114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 ((n + 2 : ℤ) * A061782 (n + 1)).toNat

end

end A081469.P7522829609585916114

/-!
# A081470: Smallest product (n+1)(n+2)...(n+k) which is a multiple of n, where n+k is given by A061243.

The programs for A081470, there is no canonical definition to state claims against.
-/

/-! ## A081470.P13086649626925305852

`(n+1)*A081471(n+1)`
-/

namespace A081470.P13086649626925305852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A081471 (n + 1)

end

end A081470.P13086649626925305852

/-! ## A081470.P7527474345803907171

`A061243(n+1)!/record[A098361(n)]`
-/

namespace A081470.P7527474345803907171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A061243 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A081470.P7527474345803907171

/-! ## A081470.P16420352528314419120

`A000142(A061243(n+1))/Δ[A007489(n)]`
-/

namespace A081470.P16420352528314419120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A061243 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A081470.P16420352528314419120

/-! ## A081470.P8013130546590989635

`A000142(A061243(n+1))/A000142(n+1)`
-/

namespace A081470.P8013130546590989635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A061243 (n + 1)).toNat : ℚ) / (A000142 (n + 1) : ℚ)

end

end A081470.P8013130546590989635

/-! ## A081470.P6462887137973457555

`A061243(n+1)!/A077168(n)!`
-/

namespace A081470.P6462887137973457555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A061243 (n + 1)).toNat : ℚ) / (Nat.factorial (A077168 n).toNat : ℚ)

end

end A081470.P6462887137973457555

/-!
# A081471: a(n) = A081470(n)/n.

The programs for A081471, there is no canonical definition to state claims against.
-/

/-! ## A081471.P5243566146616953850

`A081470(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081471.P5243566146616953850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081470 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A081471.P5243566146616953850

/-! ## A081471.P7707804270004374088

`floor(A061243(n+1)!/record[A098361(n)])/(n+1)`
-/

namespace A081471.P7707804270004374088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Nat.factorial (A061243 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋ : ℚ) / (n + 1 : ℚ)

end

end A081471.P7707804270004374088

/-! ## A081471.P2721916657890373009

`A000142(A061243(n+1))/((n+1)*Δ[A007489(n)])`
-/

namespace A081471.P2721916657890373009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A061243 (n + 1)).toNat : ℚ) / ((n + 1 : ℤ) * (f1 (n + 1) - f1 n) : ℚ)

end

end A081471.P2721916657890373009

/-! ## A081471.P13037819062787384393

`ceil(A061243(n+1)!/A077168(n)!)/(n+1)`
-/

namespace A081471.P13037819062787384393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(Nat.factorial (A061243 (n + 1)).toNat : ℚ) / (Nat.factorial (A077168 n).toNat : ℚ)⌉ : ℚ) / (n + 1 : ℚ)

end

end A081471.P13037819062787384393

/-! ## A081471.P624773316973934735

`floor(A061243(n+1)!/A077168(n)!)/A077168(n)`
-/

namespace A081471.P624773316973934735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Nat.factorial (A061243 (n + 1)).toNat : ℚ) / (Nat.factorial (A077168 n).toNat : ℚ)⌋ : ℚ) / (A077168 n : ℚ)

end

end A081471.P624773316973934735

/-!
# A081472: a(n) = the smallest (n+k) such that the LCM of numbers from (n+1) to (n+k) is a multiple of n.

The programs for A081472, there is no canonical definition to state claims against.
-/

/-! ## A081472.P6561311183422484768

`n+1+A034699(n+1)`
-/

namespace A081472.P6561311183422484768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A034699 (n + 1)

end

end A081472.P6561311183422484768

/-! ## A081472.P10657600737838824412

`2*(n+1)-A081805(n+1)`
-/

namespace A081472.P10657600737838824412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A081805 (n + 1)

end

end A081472.P10657600737838824412

/-! ## A081472.P9262879712213214071

`(n+1)/A284600(n+1)+n+1`
-/

namespace A081472.P9262879712213214071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A284600 (n + 1) : ℚ) + (n + 1 : ℚ)

end

end A081472.P9262879712213214071

/-! ## A081472.P14873825193690732911

`A020725(A034699(n+1)+n)`
-/

namespace A081472.P14873825193690732911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A034699 (n + 1) + (n : ℤ)).toNat

end

end A081472.P14873825193690732911

/-! ## A081472.P6816971445431784314

`A061243(n+1)+A057110(n+1)`
-/

namespace A081472.P6816971445431784314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 (n + 1) + A057110 (n + 1)

end

end A081472.P6816971445431784314

/-! ## A081472.P18125802367382249429

`A210208(A210241(n+1))+1+n`
-/

namespace A081472.P18125802367382249429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (A210241 (n + 1)).toNat + 1 + (n : ℤ)

end

end A081472.P18125802367382249429

/-! ## A081472.P17289230048951528141

`A020725(n+1)-A081805(n+1)+n`
-/

namespace A081472.P17289230048951528141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) - A081805 (n + 1) + (n : ℤ)

end

end A081472.P17289230048951528141

/-! ## A081472.P10517413324999688053

`A016777(n)-A081805(n+1)-(n-1)`
-/

namespace A081472.P10517413324999688053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A081805 (n + 1) - ((n : ℤ) - 1)

end

end A081472.P10517413324999688053

/-! ## A081472.P15103677666329880009

`A028233(n-A081805(n+1)+1)+n+1`
-/

namespace A081472.P15103677666329880009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 ((n : ℤ) - A081805 (n + 1) + 1).toNat + (n + 1 : ℤ)

end

end A081472.P15103677666329880009

/-! ## A081472.P174786039735613545

`A088387(n+1)^A088388(n+1)+1+n`
-/

namespace A081472.P174786039735613545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088387 (n + 1) : ℚ) ^ (A088388 (n + 1) : ℤ) + 1 + (n : ℚ)

end

end A081472.P174786039735613545

/-! ## A081472.P3629312346514403626

`A000027(A000027(n+1)+A000027(n+1)-A081805(n+1))`
-/

namespace A081472.P3629312346514403626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000027 (n + 1) + (A000027 (n + 1) - A081805 (n + 1))).toNat

end

end A081472.P3629312346514403626

/-! ## A081472.P3211294183367413356

`sqrt(A274006((n+1)²))+1+n`
-/

namespace A081472.P3211294183367413356
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A274006 ((n + 1) ^ 2) : ℝ) + 1 + (n : ℝ)

end

end A081472.P3211294183367413356

/-!
# A081473: Smallest positive even number not the permanent of a real singular (0,1)-matrix of order n.

The programs for A081473, there is no canonical definition to state claims against.
-/

/-! ## A081473.P437183531470410548

`A134930(A350495(n))`
-/

namespace A081473.P437183531470410548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134930 (A350495 n).toNat

end

end A081473.P437183531470410548

/-! ## A081473.P2283423808441704032

`∑[A147819(∑[A000166(n)])]`
-/

namespace A081473.P2283423808441704032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147819 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081473.P2283423808441704032

/-!
# A081474: Number of distinct lines through the origin in n-dimensional cube of side length n.

The programs for A081474, there is no canonical definition to state claims against.
-/

/-! ## A081474.P6350441651320264563

`A090030(∑[4*n])`
-/

namespace A081474.P6350441651320264563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081474.P6350441651320264563

/-! ## A081474.P8428253004116385356

`record[A090030((n+1)*(2*n-(-1)^n+5)/4)]`
-/

namespace A081474.P8428253004116385356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (((2 * n : ℤ) - (-1) ^ n + 5 : ℚ) / 4))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081474.P8428253004116385356

/-!
# A081475: Consider the mapping f(x/y) = (x+y)/(2xy) where x/y is a reduced fraction. Beginning with x_0 = 1 and y_0 = 2, repeated application of this mapping produces a sequence of fractions x_n/y_n; a(n) is the n-th numerator.

The programs for A081475, the canonical program `A081475.P4364562264525575636` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081475 has offset 0).

The definition of A081475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081475.P4364562264525575636

`a(n-1)+2*a(n-2)*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081475

/-- `a(n-1)+2*a(n-2)*(a(n-1)-a(n-2))` -/
def P4364562264525575636.Spec : Prop :=
  ∀ n, P4364562264525575636.a n = A081475 n

theorem P4364562264525575636.correct : P4364562264525575636.Spec := by
  intro n
  simp only [A081475]

end A081475

/-! ## A081475.P549773832629904023

`a(n-1)+A081476(n-1)` with `a(0)=1`
-/

namespace A081475.P549773832629904023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A081476 (n - 1)

end

end A081475.P549773832629904023

namespace A081475

/-- `a(n-1)+A081476(n-1)` -/
def P549773832629904023.Spec : Prop :=
  ∀ n, P549773832629904023.a n = A081475 n

end A081475

/-! ## A081475.P600000265433097320

`a(n-1)-2*(a(n-2)-a(n-1))*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A081475.P600000265433097320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - 2 * (a (n - 2) - a (n - 1)) * a (n - 2)

end

end A081475.P600000265433097320

namespace A081475

/-- `a(n-1)-2*(a(n-2)-a(n-1))*a(n-2)` -/
def P600000265433097320.Spec : Prop :=
  ∀ n, P600000265433097320.a n = A081475 n

theorem P600000265433097320.correct : P600000265433097320.Spec := by
  intro n
  simp only [A081475, Nat.add_sub_cancel, A081475.P600000265433097320.a, A081475.P4364562264525575636.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A081475

/-! ## A081475.P9145444649542850495

`∑[A081476(n)]+1-A081476(n)`
-/

namespace A081475.P9145444649542850495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A081476 n)

end

end A081475.P9145444649542850495

namespace A081475

/-- `∑[A081476(n)]+1-A081476(n)` -/
def P9145444649542850495.Spec : Prop :=
  ∀ n, P9145444649542850495.a n = A081475 n

end A081475

/-! ## A081475.P13556280357768858749

`ratio[A081476(n)]/2`
-/

namespace A081475.P13556280357768858749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081476 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) / 2

end

end A081475.P13556280357768858749

namespace A081475

/-- `ratio[A081476(n)]/2` -/
def P13556280357768858749.Spec : Prop :=
  ∀ n, P13556280357768858749.a n = (A081475 n : ℚ)

end A081475

/-!
# A081476: Consider the mapping f(x/y) = (x+y)/(2xy) where x/y is a reduced fraction. Beginning with x_0 = 1 and y_0 = 2, repeated application of this mapping produces a sequence of fractions x_n/y_n; a(n) is the n-th denominator.

The programs for A081476, the canonical program `A081476.P5809263402786271640` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081476 has offset 0).

The definition of A081476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081476.P5809263402786271640

`2*A081475(n-1)*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081476

/-- `2*A081475(n-1)*a(n-1)` -/
def P5809263402786271640.Spec : Prop :=
  ∀ n, P5809263402786271640.a n = A081476 n

theorem P5809263402786271640.correct : P5809263402786271640.Spec := by
  intro n
  simp only [A081476]

end A081476

/-! ## A081476.P13741864001348853469

`2*a(n-1)*a(n-2)+a(n-1)²/a(n-2)` with `a(0)=2, a(1)=4`
-/

namespace A081476.P13741864001348853469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 * a (n - 1) * a (n - 2) + a (n - 1) ^ 2 / a (n - 2)

end

end A081476.P13741864001348853469

namespace A081476

/-- `2*a(n-1)*a(n-2)+a(n-1)²/a(n-2)` -/
def P13741864001348853469.Spec : Prop :=
  ∀ n, P13741864001348853469.a n = (A081476 n : ℚ)

end A081476

/-! ## A081476.P9929578679289671735

`(a(n-1)/a(n-2)+2*a(n-2))*a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A081476.P9929578679289671735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  (a (n - 1) / a (n - 2) + 2 * a (n - 2)) * a (n - 1)

end

end A081476.P9929578679289671735

namespace A081476

/-- `(a(n-1)/a(n-2)+2*a(n-2))*a(n-1)` -/
def P9929578679289671735.Spec : Prop :=
  ∀ n, P9929578679289671735.a n = (A081476 n : ℚ)

end A081476

/-! ## A081476.P3043004916467688287

`Δ[A081475(n)]`
-/

namespace A081476.P3043004916467688287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081476.P3043004916467688287

namespace A081476

/-- `Δ[A081475(n)]` -/
def P3043004916467688287.Spec : Prop :=
  ∀ n, P3043004916467688287.a n = A081476 n

end A081476

/-! ## A081476.P11775466903807868104

`A081475(n+1)-A081475(n)`
-/

namespace A081476.P11775466903807868104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081475 (n + 1) - A081475 n

end

end A081476.P11775466903807868104

namespace A081476

/-- `A081475(n+1)-A081475(n)` -/
def P11775466903807868104.Spec : Prop :=
  ∀ n, P11775466903807868104.a n = A081476 n

end A081476

/-!
# A081477: Complement of A086377.

The programs for A081477, the canonical program `A081477.P392372473796327645` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081477 has offset 1).

The definition of A081477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081477.P5947015080984069602

`round((n+1)/(2-sqrt(2)))`
-/

namespace A081477.P5947015080984069602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / (2 - Real.sqrt (2 : ℝ)))

end

end A081477.P5947015080984069602

namespace A081477

/-- `round((n+1)/(2-sqrt(2)))` -/
def P5947015080984069602.Spec : Prop :=
  ∀ n, P5947015080984069602.a n = A081477 (n + 1)

end A081477

/-! ## A081477.P392372473796327645

`∑[A104521(n)+1]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081477

/-- `∑[A104521(n)+1]` -/
def P392372473796327645.Spec : Prop :=
  ∀ n, P392372473796327645.a n = A081477 (n + 1)

theorem P392372473796327645.correct : P392372473796327645.Spec := by
  intro n
  simp only [A081477, Nat.add_sub_cancel]

end A081477

/-! ## A081477.P7163804416651456880

`∑[2-A324772(n)]`
-/

namespace A081477.P7163804416651456880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A324772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081477.P7163804416651456880

namespace A081477

/-- `∑[2-A324772(n)]` -/
def P7163804416651456880.Spec : Prop :=
  ∀ n, P7163804416651456880.a n = A081477 (n + 1)

end A081477

/-! ## A081477.P6646233247083583870

`∑[3-A106035(n)]`
-/

namespace A081477.P6646233247083583870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A106035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081477.P6646233247083583870

namespace A081477

/-- `∑[3-A106035(n)]` -/
def P6646233247083583870.Spec : Prop :=
  ∀ n, P6646233247083583870.a n = A081477 (n + 1)

end A081477

/-! ## A081477.P9308450949764066127

`∑[Δ[A049473(n)]+1]`
-/

namespace A081477.P9308450949764066127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081477.P9308450949764066127

namespace A081477

/-- `∑[Δ[A049473(n)]+1]` -/
def P9308450949764066127.Spec : Prop :=
  ∀ n, P9308450949764066127.a n = A081477 (n + 1)

end A081477

/-! ## A081477.P12889647384719961185

`∑[char[A001953(n)]+1]`
-/

namespace A081477.P12889647384719961185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081477.P12889647384719961185

namespace A081477

/-- `∑[char[A001953(n)]+1]` -/
def P12889647384719961185.Spec : Prop :=
  ∀ n, (P12889647384719961185.a n : ℤ) = A081477 (n + 1)

end A081477

/-! ## A081477.P14315705274513866897

`ceil(A001952(n+1)/2)`
-/

namespace A081477.P14315705274513866897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001952 (n + 1) : ℚ) / 2⌉

end

end A081477.P14315705274513866897

namespace A081477

/-- `ceil(A001952(n+1)/2)` -/
def P14315705274513866897.Spec : Prop :=
  ∀ n, P14315705274513866897.a n = A081477 (n + 1)

end A081477

/-! ## A081477.P16939770001443822937

`A049473(n+1)+1+n`
-/

namespace A081477.P16939770001443822937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (n + 1) + 1 + (n : ℤ)

end

end A081477.P16939770001443822937

namespace A081477

/-- `A049473(n+1)+1+n` -/
def P16939770001443822937.Spec : Prop :=
  ∀ n, P16939770001443822937.a n = A081477 (n + 1)

end A081477

/-! ## A081477.P1111527786888550668

`A258703(n+1)+2+n`
-/

namespace A081477.P1111527786888550668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258703 (n + 1) + 2 + (n : ℤ)

end

end A081477.P1111527786888550668

namespace A081477

/-- `A258703(n+1)+2+n` -/
def P1111527786888550668.Spec : Prop :=
  ∀ n, P1111527786888550668.a n = A081477 (n + 1)

end A081477

/-! ## A081477.P370421539841337948

`floor(A080754(n+1)/sqrt(2))`
-/

namespace A081477.P370421539841337948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080754 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A081477.P370421539841337948

namespace A081477

/-- `floor(A080754(n+1)/sqrt(2))` -/
def P370421539841337948.Spec : Prop :=
  ∀ n, P370421539841337948.a n = A081477 (n + 1)

end A081477

/-! ## A081477.P12218196945016065040

`floor(A184922(n+1)/2)+1`
-/

namespace A081477.P12218196945016065040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184922 (n + 1) : ℚ) / 2⌋ + 1

end

end A081477.P12218196945016065040

namespace A081477

/-- `floor(A184922(n+1)/2)+1` -/
def P12218196945016065040.Spec : Prop :=
  ∀ n, P12218196945016065040.a n = A081477 (n + 1)

end A081477

/-! ## A081477.P17264126382672050705

`comp[A086377(n+1)-1]+1`
-/

namespace A081477.P17264126382672050705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A081477.P17264126382672050705

namespace A081477

/-- `comp[A086377(n+1)-1]+1` -/
def P17264126382672050705.Spec : Prop :=
  ∀ n, (P17264126382672050705.a n : ℤ) = A081477 (n + 1)

end A081477

/-! ## A081477.P10201087420962153052

`floor((A187338(n+1)-n)/2)`
-/

namespace A081477.P10201087420962153052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187338 (n + 1) - (n : ℤ) : ℚ) / 2⌋

end

end A081477.P10201087420962153052

namespace A081477

/-- `floor((A187338(n+1)-n)/2)` -/
def P10201087420962153052.Spec : Prop :=
  ∀ n, P10201087420962153052.a n = A081477 (n + 1)

end A081477

/-! ## A081477.P9848112254666837

`∑[2-char[A003152(2*n+1)]]`
-/

namespace A081477.P9848112254666837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081477.P9848112254666837

namespace A081477

/-- `∑[2-char[A003152(2*n+1)]]` -/
def P9848112254666837.Spec : Prop :=
  ∀ n, P9848112254666837.a n = A081477 (n + 1)

end A081477

/-! ## A081477.P7196358981136877822

`comp[floor(n*sqrt(2))]-A003152(n+1)`
-/

namespace A081477.P7196358981136877822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A003152 (n + 1)

end

end A081477.P7196358981136877822

namespace A081477

/-- `comp[floor(n*sqrt(2))]-A003152(n+1)` -/
def P7196358981136877822.Spec : Prop :=
  ∀ n, P7196358981136877822.a n = A081477 (n + 1)

end A081477

/-! ## A081477.P16541466498407259984

`A189573(n+1)+A104521(n)`
-/

namespace A081477.P16541466498407259984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (n + 1) + A104521 n

end

end A081477.P16541466498407259984

namespace A081477

/-- `A189573(n+1)+A104521(n)` -/
def P16541466498407259984.Spec : Prop :=
  ∀ n, P16541466498407259984.a n = A081477 (n + 1)

end A081477

/-! ## A081477.P10802115500053754921

`A194920(n+1)+A001951(n+1)`
-/

namespace A081477.P10802115500053754921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (n + 1) + A001951 (n + 1)

end

end A081477.P10802115500053754921

namespace A081477

/-- `A194920(n+1)+A001951(n+1)` -/
def P10802115500053754921.Spec : Prop :=
  ∀ n, P10802115500053754921.a n = A081477 (n + 1)

end A081477

/-!
# A081478: Consider the mapping f(a/b) = (a - b)/(ab). Taking a = 2 and b = 1 to start with and carrying out this mapping repeatedly on each new (reduced) rational number gives the following sequence 2/1,1/2,-1/2,-3/ -2,-1/6,... Sequence contains the denominators.

The programs for A081478, there is no canonical definition to state claims against.
-/

/-! ## A081478.P3541211519820350466

`a(n-2)+a(n-2)²*(-1)^n` with `a(0)=1, a(1)=2`
-/

namespace A081478.P3541211519820350466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 2) ^ 2 * (-1) ^ n

end

end A081478.P3541211519820350466

/-! ## A081478.P10334830659885479357

`a(n-2)+a(n-2)²/(-1)^n` with `a(0)=1, a(1)=2`
-/

namespace A081478.P10334830659885479357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 2) ^ 2 / ((-1) ^ n : ℚ)

end

end A081478.P10334830659885479357

/-! ## A081478.P10543605140029178498

`((n+1)%2*a(n-1))²-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A081478.P10543605140029178498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((((n + 1) % 2 : ℕ) : ℤ) * a (n - 1)) ^ 2 - a (n - 1)

end

end A081478.P10543605140029178498

/-! ## A081478.P10878835038234335765

`((a(n-1)+1)%a(n-1)-2)*a(n-1)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A081478.P10878835038234335765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  (Int.tmod (a (n - 1) + 1) (a (n - 1)) - 2) * a (n - 1)

end

end A081478.P10878835038234335765

/-! ## A081478.P2330688367004186335

`(a(n-1)/a(n-2)-a(n-2))*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A081478.P2330688367004186335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) / a (n - 2) - a (n - 2)) * a (n - 1)

end

end A081478.P2330688367004186335

/-!
# A081480: Consider the mapping f(a/b) = (a^2 +b^2)/(a+b). Taking a =1, b = 2 to start with and carrying out this mapping repeatedly on each new (reduced) rational number gives the following sequence 1/2,5/3,17/4,305/21,... Sequence contains the denominators.

The programs for A081480, there is no canonical definition to state claims against.
-/

/-! ## A081480.P11539261404448251948

`A348667(round(cosh(n)))`
-/

namespace A081480.P11539261404448251948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348667 (SequenceMachineLib.roundAway (Real.cosh (n : ℝ))).toNat

end

end A081480.P11539261404448251948

/-!
# A081483: Consider the mapping f(a/b) = (a^2 + b)/(a^2 - b). Taking a =2, b = 1 to start with and carrying out this mapping repeatedly on each new (reduced) rational number gives the following sequence 2/1,5/3,14/11,207/185,... Sequence contains the numerator.

The programs for A081483, there is no canonical definition to state claims against.
-/

/-! ## A081483.P8384033437970199738

`A081484(n+1)+A004777(A081480(n+1))`
-/

namespace A081483.P8384033437970199738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081484 (n + 1) + A004777 (A081480 (n + 1)).toNat

end

end A081483.P8384033437970199738

/-!
# A081484: Consider the mapping f(a/b) = (a^2 + b)/(a^2 - b). Taking a =2, b = 1 to start with and carrying out this mapping repeatedly on each new (reduced) rational number gives the following sequence 2/1,5/3,14/11,207/185,... Sequence contains the denominators.

The programs for A081484, there is no canonical definition to state claims against.
-/

/-! ## A081484.P17542102500030264425

`A081483(n+1)-A004777(A081480(n+1))`
-/

namespace A081484.P17542102500030264425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081483 (n + 1) - A004777 (A081480 (n + 1)).toNat

end

end A081484.P17542102500030264425

/-!
# A081486: Diagonal of triangle in A081485.

The programs for A081486, there is no canonical definition to state claims against.
-/

/-! ## A081486.P2548532585663527575

`A081485(∑[n+1])`
-/

namespace A081486.P2548532585663527575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081485 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081486.P2548532585663527575

/-! ## A081486.P14144348637672942961

`or(1, A081485(∑[-xor(n, -1)]))`
-/

namespace A081486.P14144348637672942961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081485 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A081486.P14144348637672942961

/-! ## A081486.P11601441201979355312

`or(1, A081485(A000217(n+1)))`
-/

namespace A081486.P11601441201979355312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081485 (A000217 (n + 1)).toNat)

end

end A081486.P11601441201979355312

/-! ## A081486.P5421532845280706959

`A000027(A081485(∑[-xor(n, -1)]))`
-/

namespace A081486.P5421532845280706959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A081485 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A081486.P5421532845280706959

/-! ## A081486.P13429890282265680883

`A014963(A081485(∑[Δ[n²]-n]))`
-/

namespace A081486.P13429890282265680883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A081485 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A081486.P13429890282265680883

/-! ## A081486.P17179521920046690418

`A004526(2*A081485(∑[Δ[n²]-n]))`
-/

namespace A081486.P17179521920046690418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A081485 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A081486.P17179521920046690418

/-! ## A081486.P5217116018392130410

`A000010(((-1)^n)²)*A081485(∑[Δ[n²]-n])`
-/

namespace A081486.P5217116018392130410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((-1) ^ n) ^ 2).toNat * A081485 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A081486.P5217116018392130410

/-! ## A081486.P13368998708574628717

`∑{d}[A081485(A000217(n+1)), A000010(#)]`
-/

namespace A081486.P13368998708574628717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081485 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A081486.P13368998708574628717

/-! ## A081486.P5977440535463614075

`∏{d}[A081485(A000217(n+1)), A020639(#)]`
-/

namespace A081486.P5977440535463614075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081485 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 d

end

end A081486.P5977440535463614075

/-! ## A081486.P11367569768849224922

`A081485(A000217(n+1))%(A000217(n+5)+6)`
-/

namespace A081486.P11367569768849224922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081485 (A000217 (n + 1)).toNat) (A000217 (n + 5) + 6)

end

end A081486.P11367569768849224922

/-!
# A081487: Sum of n-th row of triangle in A081485.

The programs for A081487, there is no canonical definition to state claims against.
-/

/-! ## A081487.P10080508145421754314

`(n+1)*A081488(n+1)`
-/

namespace A081487.P10080508145421754314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A081488 (n + 1)

end

end A081487.P10080508145421754314

/-! ## A081487.P7228320760957959230

`A103517(n)*A286574(A034999(n))`
-/

namespace A081487.P7228320760957959230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A286574 (A034999 n).toNat

end

end A081487.P7228320760957959230

/-! ## A081487.P6780207565067706795

`A007895(A130463(n))*A324705(n+1)`
-/

namespace A081487.P6780207565067706795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A130463 n).toNat * A324705 (n + 1)

end

end A081487.P6780207565067706795

/-! ## A081487.P95329596794299920

`A344547(A094457(n+2)*A225737(n+1))`
-/

namespace A081487.P95329596794299920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344547 (A094457 (n + 2) * A225737 (n + 1)).toNat

end

end A081487.P95329596794299920

/-! ## A081487.P9952434330814090112

`A344547(A004526(2*(n+2))*A094457(n+2))`
-/

namespace A081487.P9952434330814090112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344547 (A004526 (2 * (n + 2)) * A094457 (n + 2)).toNat

end

end A081487.P9952434330814090112

/-!
# A081488: (Sum of n-th row of triangle in A081485)/n.

The programs for A081488, there is no canonical definition to state claims against.
-/

/-! ## A081488.P8649063891465701932

`A081487(n+1)/(n+1)`
-/

namespace A081488.P8649063891465701932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081487 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A081488.P8649063891465701932

/-! ## A081488.P11236274575278955985

`(n+1)^A033999(or(1, n))*A081487(n+1)`
-/

namespace A081488.P11236274575278955985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A033999 (Nat.lor 1 n) : ℤ) * (A081487 (n + 1) : ℚ)

end

end A081488.P11236274575278955985

/-!
# A081489: a(n) = n*(2*n^2 -3*n +7)/6 = C(n, 1) + C(n, 2) + 2*C(n, 3).

The programs for A081489, the canonical program `A081489.P7362555526480766211` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081489 has offset 1).

The definition of A081489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+1, 1)+C(n+1, 2)+2*C(n+1, 3)` (program `A081489.P7362555526480766211`, by `A081489.P7362555526480766211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081489.P7362555526480766211

`C(n+1, 1)+C(n+1, 2)+2*C(n+1, 3)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081489

/-- `C(n+1, 1)+C(n+1, 2)+2*C(n+1, 3)` -/
def P7362555526480766211.Spec : Prop :=
  ∀ n, (P7362555526480766211.a n : ℤ) = A081489 (n + 1)

theorem P7362555526480766211.correct : P7362555526480766211.Spec := by
  intro n
  simp only [A081489, Nat.add_sub_cancel]

end A081489

/-! ## A081489.P8565989162386025295

`(n+1)*(2*(n+1)²-3*(n+1)+7)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081489.P8565989162386025295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((2 * (n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 7) : ℚ) / 6

end

end A081489.P8565989162386025295

namespace A081489

/-- `(n+1)*(2*(n+1)²-3*(n+1)+7)/6` -/
def P8565989162386025295.Spec : Prop :=
  ∀ n, P8565989162386025295.a n = (A081489 (n + 1) : ℚ)

end A081489

/-! ## A081489.P4820854773113134188

`-∑[xor(-1, n²)]`
-/

namespace A081489.P4820854773113134188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081489.P4820854773113134188

namespace A081489

/-- `-∑[xor(-1, n²)]` -/
def P4820854773113134188.Spec : Prop :=
  ∀ n, P4820854773113134188.a n = A081489 (n + 1)

end A081489

/-! ## A081489.P10113049929006998457

`∑[n²]-xor(n, -1)`
-/

namespace A081489.P10113049929006998457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.xor (n : ℤ) (-1)

end

end A081489.P10113049929006998457

namespace A081489

/-- `∑[n²]-xor(n, -1)` -/
def P10113049929006998457.Spec : Prop :=
  ∀ n, P10113049929006998457.a n = A081489 (n + 1)

end A081489

/-! ## A081489.P4332426207259765475

`abs(∑[1-or(2, n²)])`
-/

namespace A081489.P4332426207259765475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.lor 2 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A081489.P4332426207259765475

namespace A081489

/-- `abs(∑[1-or(2, n²)])` -/
def P4332426207259765475.Spec : Prop :=
  ∀ n, P4332426207259765475.a n = A081489 (n + 1)

end A081489

/-! ## A081489.P1161092781169116696

`-∑[1-or(2, n²)]`
-/

namespace A081489.P1161092781169116696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.lor 2 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081489.P1161092781169116696

namespace A081489

/-- `-∑[1-or(2, n²)]` -/
def P1161092781169116696.Spec : Prop :=
  ∀ n, P1161092781169116696.a n = A081489 (n + 1)

end A081489

/-! ## A081489.P6481927787026357708

`∑[ceil(n/acot(n))]+1`
-/

namespace A081489.P6481927787026357708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A081489.P6481927787026357708

namespace A081489

/-- `∑[ceil(n/acot(n))]+1` -/
def P6481927787026357708.Spec : Prop :=
  ∀ n, P6481927787026357708.a n = A081489 (n + 1)

end A081489

/-! ## A081489.P6330764834070563261

`∑[n^ceil(atan(n))]+n`
-/

namespace A081489.P6330764834070563261
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A081489.P6330764834070563261

namespace A081489

/-- `∑[n^ceil(atan(n))]+n` -/
def P6330764834070563261.Spec : Prop :=
  ∀ n, P6330764834070563261.a n = (A081489 (n + 1) : ℚ)

end A081489

/-! ## A081489.P17878619035130726302

`a(n-1)+n²+1` with `a(0)=1`
-/

namespace A081489.P17878619035130726302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n ^ 2 + 1)

end

end A081489.P17878619035130726302

namespace A081489

/-- `a(n-1)+n²+1` -/
def P17878619035130726302.Spec : Prop :=
  ∀ n, (P17878619035130726302.a n : ℤ) = A081489 (n + 1)

end A081489

/-! ## A081489.P1163635421206104163

`∑[n^(2%(n+1))]+n`
-/

namespace A081489.P1163635421206104163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (2 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A081489.P1163635421206104163

namespace A081489

/-- `∑[n^(2%(n+1))]+n` -/
def P1163635421206104163.Spec : Prop :=
  ∀ n, (P1163635421206104163.a n : ℤ) = A081489 (n + 1)

end A081489

/-! ## A081489.P14304208694484831354

`∑[or(1, ∑[2*n])]-∑[n]`
-/

namespace A081489.P14304208694484831354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A081489.P14304208694484831354

namespace A081489

/-- `∑[or(1, ∑[2*n])]-∑[n]` -/
def P14304208694484831354.Spec : Prop :=
  ∀ n, P14304208694484831354.a n = A081489 (n + 1)

end A081489

/-! ## A081489.P7619787459081102128

`∑[xor(1, ∑[2*n])]-∑[n]`
-/

namespace A081489.P7619787459081102128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A081489.P7619787459081102128

namespace A081489

/-- `∑[xor(1, ∑[2*n])]-∑[n]` -/
def P7619787459081102128.Spec : Prop :=
  ∀ n, P7619787459081102128.a n = A081489 (n + 1)

end A081489

/-! ## A081489.P11460193833885846406

`∑[n^acos(cos(2))]+n+1`
-/

namespace A081489.P11460193833885846406
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (Real.arccos (Real.cos (2 : ℝ)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℝ)

end

end A081489.P11460193833885846406

namespace A081489

/-- `∑[n^acos(cos(2))]+n+1` -/
def P11460193833885846406.Spec : Prop :=
  ∀ n, P11460193833885846406.a n = (A081489 (n + 1) : ℝ)

end A081489

/-! ## A081489.P4935378966552335126

`∑[floor(n/acot(n))]+n+1`
-/

namespace A081489.P4935378966552335126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A081489.P4935378966552335126

namespace A081489

/-- `∑[floor(n/acot(n))]+n+1` -/
def P4935378966552335126.Spec : Prop :=
  ∀ n, P4935378966552335126.a n = A081489 (n + 1)

end A081489

/-! ## A081489.P4760844775783307554

`∑[round(n/acot(n))]+n+1`
-/

namespace A081489.P4760844775783307554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A081489.P4760844775783307554

namespace A081489

/-- `∑[round(n/acot(n))]+n+1` -/
def P4760844775783307554.Spec : Prop :=
  ∀ n, P4760844775783307554.a n = A081489 (n + 1)

end A081489

/-! ## A081489.P5176470355510384205

`∑[∑[ogf((1-x+2x^2)/(1-2x+x^2))]]`
-/

namespace A081489.P5176470355510384205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081489.P5176470355510384205

namespace A081489

/-- `∑[∑[ogf((1-x+2x^2)/(1-2x+x^2))]]` -/
def P5176470355510384205.Spec : Prop :=
  ∀ n, P5176470355510384205.a n = A081489 (n + 1)

end A081489

/-! ## A081489.P5967464125949603019

`ogf((1-x+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A081489.P5967464125949603019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, -4, 6, -4, 1] n

end

end A081489.P5967464125949603019

namespace A081489

/-- `ogf((1-x+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P5967464125949603019.Spec : Prop :=
  ∀ n, P5967464125949603019.a n = A081489 (n + 1)

end A081489

/-! ## A081489.P6231078545402137961

`abs(∑[∑[a(n-1)+2]])` with `a(0)=1, a(1)=1`
-/

namespace A081489.P6231078545402137961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081489.P6231078545402137961

namespace A081489

/-- `abs(∑[∑[a(n-1)+2]])` -/
def P6231078545402137961.Spec : Prop :=
  ∀ n, (P6231078545402137961.a n : ℤ) = A081489 (n + 1)

end A081489

/-! ## A081489.P14933063672990917486

`floor(∑[∑[a(n-1)+2]])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A081489.P14933063672990917486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081489.P14933063672990917486

namespace A081489

/-- `floor(∑[∑[a(n-1)+2]])` -/
def P14933063672990917486.Spec : Prop :=
  ∀ n, (P14933063672990917486.a n : ℤ) = A081489 (n + 1)

end A081489

/-! ## A081489.P4539240316460308953

`ceil(∑[∑[a(n-1)+2]])` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A081489.P4539240316460308953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081489.P4539240316460308953

namespace A081489

/-- `ceil(∑[∑[a(n-1)+2]])` -/
def P4539240316460308953.Spec : Prop :=
  ∀ n, (P4539240316460308953.a n : ℤ) = A081489 (n + 1)

end A081489

/-!
# A081490: Leading term of n-th row of A081491.

The programs for A081490, the canonical program `A081490.P11668450467010834476` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081490 has offset 1).

The definition of A081490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081490.P11668450467010834476

`(n-1)²+a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081490

/-- `(n-1)²+a(n-1)+1` -/
def P11668450467010834476.Spec : Prop :=
  ∀ n, P11668450467010834476.a n = A081490 (n + 1)

theorem P11668450467010834476.correct : P11668450467010834476.Spec := by
  intro n
  simp only [A081490, Nat.add_sub_cancel]

end A081490

/-! ## A081490.P16356227891011978794

`(n+1)*(2*(n+1)²-9*(n+1)+19)/6-1`
-/

namespace A081490.P16356227891011978794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((2 * (n + 1) ^ 2 : ℤ) - (9 * (n + 1) : ℤ) + 19) : ℚ) / 6 - 1

end

end A081490.P16356227891011978794

namespace A081490

/-- `(n+1)*(2*(n+1)²-9*(n+1)+19)/6-1` -/
def P16356227891011978794.Spec : Prop :=
  ∀ n, P16356227891011978794.a n = (A081490 (n + 1) : ℚ)

theorem P16356227891011978794.correct : P16356227891011978794.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A081490, Nat.add_sub_cancel, A081490.P16356227891011978794.a, A081490.P11668450467010834476.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A081490, Nat.add_sub_cancel, A081490.P16356227891011978794.a, A081490.P11668450467010834476.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081490

/-! ## A081490.P3037452750797124879

`∑[∑[a(n-1)+2]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A081490.P3037452750797124879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081490.P3037452750797124879

namespace A081490

/-- `∑[∑[a(n-1)+2]]` -/
def P3037452750797124879.Spec : Prop :=
  ∀ n, (P3037452750797124879.a n : ℤ) = A081490 (n + 1)

end A081490

/-! ## A081490.P17393154750876059449

`floor(C(2*n, 3)/4+n+1)`
-/

namespace A081490.P17393154750876059449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n) 3 : ℚ) / 4 + (n + 1 : ℚ)⌋

end

end A081490.P17393154750876059449

namespace A081490

/-- `floor(C(2*n, 3)/4+n+1)` -/
def P17393154750876059449.Spec : Prop :=
  ∀ n, P17393154750876059449.a n = A081490 (n + 1)

end A081490

/-! ## A081490.P1913469637910815972

`ceil(C(2*n, 3)/4+n+1)`
-/

namespace A081490.P1913469637910815972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n) 3 : ℚ) / 4 + (n + 1 : ℚ)⌉

end

end A081490.P1913469637910815972

namespace A081490

/-- `ceil(C(2*n, 3)/4+n+1)` -/
def P1913469637910815972.Spec : Prop :=
  ∀ n, P1913469637910815972.a n = A081490 (n + 1)

end A081490

/-! ## A081490.P11862870575975357729

`round(C(2*n, 3)/4+n+1)`
-/

namespace A081490.P11862870575975357729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n) 3 : ℚ) / 4 + (n + 1 : ℚ))

end

end A081490.P11862870575975357729

namespace A081490

/-- `round(C(2*n, 3)/4+n+1)` -/
def P11862870575975357729.Spec : Prop :=
  ∀ n, P11862870575975357729.a n = A081490 (n + 1)

end A081490

/-! ## A081490.P13137780969693689122

`∑[2*n-(3-a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A081490.P13137780969693689122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (2 * n : ℤ) - (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081490.P13137780969693689122

namespace A081490

/-- `∑[2*n-(3-a(n-1))]` -/
def P13137780969693689122.Spec : Prop :=
  ∀ n, P13137780969693689122.a n = A081490 (n + 1)

end A081490

/-! ## A081490.P10199556254801051549

`∑[a(n-1)-(3-n-n)]` with `a(0)=1, a(1)=1`
-/

namespace A081490.P10199556254801051549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - (3 - (n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081490.P10199556254801051549

namespace A081490

/-- `∑[a(n-1)-(3-n-n)]` -/
def P10199556254801051549.Spec : Prop :=
  ∀ n, P10199556254801051549.a n = A081490 (n + 1)

end A081490

/-! ## A081490.P966576440451632007

`∑[1-(C(n, 2*n)-(n-1)²)]`
-/

namespace A081490.P966576440451632007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.choose n (2 * n) : ℤ) - ((n : ℤ) - 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081490.P966576440451632007

namespace A081490

/-- `∑[1-(C(n, 2*n)-(n-1)²)]` -/
def P966576440451632007.Spec : Prop :=
  ∀ n, P966576440451632007.a n = A081490 (n + 1)

end A081490

/-! ## A081490.P15481140189483210243

`∑[ceil(abs(sin(n)))+n*(n-2)+1]`
-/

namespace A081490.P15481140189483210243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (n : ℝ)|⌉ + (n : ℤ) * ((n : ℤ) - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081490.P15481140189483210243

namespace A081490

/-- `∑[ceil(abs(sin(n)))+n*(n-2)+1]` -/
def P15481140189483210243.Spec : Prop :=
  ∀ n, P15481140189483210243.a n = A081490 (n + 1)

end A081490

/-! ## A081490.P3336187411319981505

`∑[(n-1)*(n-1)%(n+1)+1]`
-/

namespace A081490.P3336187411319981505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081490.P3336187411319981505

namespace A081490

/-- `∑[(n-1)*(n-1)%(n+1)+1]` -/
def P3336187411319981505.Spec : Prop :=
  ∀ n, P3336187411319981505.a n = A081490 (n + 1)

end A081490

/-! ## A081490.P7605273635204959984

`floor(a(n-1)+n*(n-2)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A081490.P7605273635204959984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) * ((n : ℤ) - 2) + 2)

end

end A081490.P7605273635204959984

namespace A081490

/-- `floor(a(n-1)+n*(n-2)+2)` -/
def P7605273635204959984.Spec : Prop :=
  ∀ n, P7605273635204959984.a n = A081490 (n + 1)

end A081490

/-! ## A081490.P8956627240634014018

`n*((a(n-1)+2)/n-2+n)` with `a(0)=1`
-/

namespace A081490.P8956627240634014018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((a (n - 1) + 2) / (n : ℚ) - 2 + (n : ℚ))

end

end A081490.P8956627240634014018

namespace A081490

/-- `n*((a(n-1)+2)/n-2+n)` -/
def P8956627240634014018.Spec : Prop :=
  ∀ n, P8956627240634014018.a n = (A081490 (n + 1) : ℚ)

end A081490

/-! ## A081490.P1675225056697236988

`floor(2-(n-n²-a(n-1))-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A081490.P1675225056697236988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ((n : ℤ) - (n ^ 2 : ℤ) - a (n - 1)) - (n : ℤ)

end

end A081490.P1675225056697236988

namespace A081490

/-- `floor(2-(n-n²-a(n-1))-n)` -/
def P1675225056697236988.Spec : Prop :=
  ∀ n, P1675225056697236988.a n = A081490 (n + 1)

theorem P1675225056697236988.correct : P1675225056697236988.Spec := by
  intro n
  simp only [A081490, Nat.add_sub_cancel, A081490.P1675225056697236988.a, A081490.P11668450467010834476.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A081490

/-! ## A081490.P3772036912935666732

`∑[A386480(n)-n]`
-/

namespace A081490.P3772036912935666732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386480 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081490.P3772036912935666732

namespace A081490

/-- `∑[A386480(n)-n]` -/
def P3772036912935666732.Spec : Prop :=
  ∀ n, P3772036912935666732.a n = A081490 (n + 1)

end A081490

/-! ## A081490.P7287215578766995951

`(A321124(n)+3)/4`
-/

namespace A081490.P7287215578766995951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321124 n + 3 : ℚ) / 4

end

end A081490.P7287215578766995951

namespace A081490

/-- `(A321124(n)+3)/4` -/
def P7287215578766995951.Spec : Prop :=
  ∀ n, P7287215578766995951.a n = (A081490 (n + 1) : ℚ)

end A081490

/-! ## A081490.P1871468482131716178

`∑[A102762(n+1)-1]`
-/

namespace A081490.P1871468482131716178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102762 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081490.P1871468482131716178

namespace A081490

/-- `∑[A102762(n+1)-1]` -/
def P1871468482131716178.Spec : Prop :=
  ∀ n, P1871468482131716178.a n = A081490 (n + 1)

end A081490

/-! ## A081490.P3457222790734546245

`∑[A099570(n+1)²+1]`
-/

namespace A081490.P3457222790734546245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099570 (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081490.P3457222790734546245

namespace A081490

/-- `∑[A099570(n+1)²+1]` -/
def P3457222790734546245.Spec : Prop :=
  ∀ n, P3457222790734546245.a n = A081490 (n + 1)

end A081490

/-! ## A081490.P15976642584411264051

`A055417(2*n)/(2*n+1)`
-/

namespace A081490.P15976642584411264051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055417 (2 * n) : ℚ) / (2 * n + 1 : ℚ)

end

end A081490.P15976642584411264051

namespace A081490

/-- `A055417(2*n)/(2*n+1)` -/
def P15976642584411264051.Spec : Prop :=
  ∀ n, P15976642584411264051.a n = (A081490 (n + 1) : ℚ)

end A081490

/-! ## A081490.P10717902102772300638

`A075349(A089071(n+1))`
-/

namespace A081490.P10717902102772300638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075349 (A089071 (n + 1)).toNat

end

end A081490.P10717902102772300638

namespace A081490

/-- `A075349(A089071(n+1))` -/
def P10717902102772300638.Spec : Prop :=
  ∀ n, P10717902102772300638.a n = A081490 (n + 1)

end A081490

/-!
# A081491: Triangle read by rows in which the n-th row contains n terms of an arithmetic progression with a common difference of (n-1) and the first term of (n+1)-th row is 1 more than the last term of the n-th row.

The programs for A081491, the canonical program `A081491.P4466690981492895004` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081491 has offset 1).

The definition of A081491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081491.P17800959796446697130

`∑[∑[char[∑[n]]]]-eq[0, floor(2*sqrt(n))%2]`
-/

namespace A081491.P17800959796446697130
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.nth (fun j => (f5 j : ℤ) = f6 j) n : ℤ)

end

end A081491.P17800959796446697130

namespace A081491

/-- `∑[∑[char[∑[n]]]]-eq[0, floor(2*sqrt(n))%2]` -/
def P17800959796446697130.Spec : Prop :=
  ∀ n, P17800959796446697130.a n = A081491 (n + 1)

end A081491

/-! ## A081491.P9442767897747438983

`∑[gcd(∑[char[∑[n+1]]], Δ[round(sqrt(2*n))²])]`
-/

namespace A081491.P9442767897747438983
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (f5 (n + 1) - f5 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081491.P9442767897747438983

namespace A081491

/-- `∑[gcd(∑[char[∑[n+1]]], Δ[round(sqrt(2*n))²])]` -/
def P9442767897747438983.Spec : Prop :=
  ∀ n, (P9442767897747438983.a n : ℤ) = A081491 (n + 1)

end A081491

/-! ## A081491.P5749279951259217052

`∑[∑[char[∑[n]]]]-A063656(n)`
-/

namespace A081491.P5749279951259217052
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A063656 n

end

end A081491.P5749279951259217052

namespace A081491

/-- `∑[∑[char[∑[n]]]]-A063656(n)` -/
def P5749279951259217052.Spec : Prop :=
  ∀ n, P5749279951259217052.a n = A081491 (n + 1)

end A081491

/-! ## A081491.P15621300586543606492

`∑[n%(A271439(n)+1)+1]`
-/

namespace A081491.P15621300586543606492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A271439 n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081491.P15621300586543606492

namespace A081491

/-- `∑[n%(A271439(n)+1)+1]` -/
def P15621300586543606492.Spec : Prop :=
  ∀ n, P15621300586543606492.a n = A081491 (n + 1)

end A081491

/-! ## A081491.P5828091365332853411

`∑[A003056(n)^(1-char[∑[n]])]`
-/

namespace A081491.P5828091365332853411
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) ^ (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081491.P5828091365332853411

namespace A081491

/-- `∑[A003056(n)^(1-char[∑[n]])]` -/
def P5828091365332853411.Spec : Prop :=
  ∀ n, P5828091365332853411.a n = (A081491 (n + 1) : ℚ)

end A081491

/-! ## A081491.P17863366125373594197

`∪[A075349(n+1), A081489(n+1)]`
-/

namespace A081491.P17863366125373594197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081491.P17863366125373594197

namespace A081491

/-- `∪[A075349(n+1), A081489(n+1)]` -/
def P17863366125373594197.Spec : Prop :=
  ∀ n, (P17863366125373594197.a n : ℤ) = A081491 (n + 1)

end A081491

/-! ## A081491.P15441701708391231742

`∑[A007318(A144257(n+1)+n-1)]`
-/

namespace A081491.P15441701708391231742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A144257 (n + 1) + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081491.P15441701708391231742

namespace A081491

/-- `∑[A007318(A144257(n+1)+n-1)]` -/
def P15441701708391231742.Spec : Prop :=
  ∀ n, P15441701708391231742.a n = A081491 (n + 1)

end A081491

/-! ## A081491.P4466690981492895004

`A002024(n+1)+A006463(n+1)-A057944(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081491

/-- `A002024(n+1)+A006463(n+1)-A057944(n)` -/
def P4466690981492895004.Spec : Prop :=
  ∀ n, P4466690981492895004.a n = A081491 (n + 1)

theorem P4466690981492895004.correct : P4466690981492895004.Spec := by
  intro n
  simp only [A081491, Nat.add_sub_cancel]

end A081491

/-! ## A081491.P6224548680266361702

`lt[A321878(n), 2]+1`
-/

namespace A081491.P6224548680266361702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A081491.P6224548680266361702

namespace A081491

/-- `lt[A321878(n), 2]+1` -/
def P6224548680266361702.Spec : Prop :=
  ∀ n, (P6224548680266361702.a n : ℤ) = A081491 (n + 1)

end A081491

/-! ## A081491.P1942929452405970413

`lt[A291929(n), 2]+1`
-/

namespace A081491.P1942929452405970413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291929 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A081491.P1942929452405970413

namespace A081491

/-- `lt[A291929(n), 2]+1` -/
def P1942929452405970413.Spec : Prop :=
  ∀ n, (P1942929452405970413.a n : ℤ) = A081491 (n + 1)

end A081491

/-!
# A081492: Sum of terms in n-th row of A081491.

The programs for A081492, the canonical program `A081492.P1141545400167790969` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081492 has offset 1).

The definition of A081492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081492.P1141545400167790969

`(n+1)*(2*n^3+7*(n+1)-1)/6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081492

/-- `(n+1)*(2*n^3+7*(n+1)-1)/6` -/
def P1141545400167790969.Spec : Prop :=
  ∀ n, P1141545400167790969.a n = (A081492 (n + 1) : ℚ)

end A081492

/-! ## A081492.P5859748992676697493

`∑[C(2*n, 3)+(n+1)²]`
-/

namespace A081492.P5859748992676697493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 + (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081492.P5859748992676697493

namespace A081492

/-- `∑[C(2*n, 3)+(n+1)²]` -/
def P5859748992676697493.Spec : Prop :=
  ∀ n, (P5859748992676697493.a n : ℤ) = A081492 (n + 1)

end A081492

/-! ## A081492.P18412356716397034391

`∑[∑[∑[a(n-1)+8]]]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A081492.P18412356716397034391
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n f3 =>
  f3 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081492.P18412356716397034391

namespace A081492

/-- `∑[∑[∑[a(n-1)+8]]]` -/
def P18412356716397034391.Spec : Prop :=
  ∀ n, (P18412356716397034391.a n : ℤ) = A081492 (n + 1)

end A081492

/-! ## A081492.P13407271631595099373

`∑[C(2*n, 3)+n*(n+2)+1]`
-/

namespace A081492.P13407271631595099373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 + n * (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081492.P13407271631595099373

namespace A081492

/-- `∑[C(2*n, 3)+n*(n+2)+1]` -/
def P13407271631595099373.Spec : Prop :=
  ∀ n, (P13407271631595099373.a n : ℤ) = A081492 (n + 1)

end A081492

/-! ## A081492.P1313840235828705478

`∑[A161712(n)+n²]`
-/

namespace A081492.P1313840235828705478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161712 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081492.P1313840235828705478

namespace A081492

/-- `∑[A161712(n)+n²]` -/
def P1313840235828705478.Spec : Prop :=
  ∀ n, P1313840235828705478.a n = A081492 (n + 1)

end A081492

/-! ## A081492.P6640402935048061586

`A071238(n)+(n+1)²`
-/

namespace A081492.P6640402935048061586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n + ((n + 1) ^ 2 : ℤ)

end

end A081492.P6640402935048061586

namespace A081492

/-- `A071238(n)+(n+1)²` -/
def P6640402935048061586.Spec : Prop :=
  ∀ n, P6640402935048061586.a n = A081492 (n + 1)

end A081492

/-! ## A081492.P16274424397919350462

`A307621(n+1)-n²`
-/

namespace A081492.P16274424397919350462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307621 (n + 1) - (n ^ 2 : ℤ)

end

end A081492.P16274424397919350462

namespace A081492

/-- `A307621(n+1)-n²` -/
def P16274424397919350462.Spec : Prop :=
  ∀ n, P16274424397919350462.a n = A081492 (n + 1)

end A081492

/-! ## A081492.P8595294089840218429

`A112742(n)+∑[(n+1)²]`
-/

namespace A081492.P8595294089840218429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112742 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081492.P8595294089840218429

namespace A081492

/-- `A112742(n)+∑[(n+1)²]` -/
def P8595294089840218429.Spec : Prop :=
  ∀ n, P8595294089840218429.a n = A081492 (n + 1)

end A081492

/-! ## A081492.P5035756852211152242

`A378023(n+1)-(n²+n)`
-/

namespace A081492.P5035756852211152242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378023 (n + 1) - (n ^ 2 + n : ℤ)

end

end A081492.P5035756852211152242

namespace A081492

/-- `A378023(n+1)-(n²+n)` -/
def P5035756852211152242.Spec : Prop :=
  ∀ n, P5035756852211152242.a n = A081492 (n + 1)

end A081492

/-! ## A081492.P7499000530802584717

`∑[A100178(n+1)-(2*n)²]`
-/

namespace A081492.P7499000530802584717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100178 (n + 1) - ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081492.P7499000530802584717

namespace A081492

/-- `∑[A100178(n+1)-(2*n)²]` -/
def P7499000530802584717.Spec : Prop :=
  ∀ n, P7499000530802584717.a n = A081492 (n + 1)

end A081492

/-! ## A081492.P4199550045575559532

`A071245(n)+A005894(n)`
-/

namespace A081492.P4199550045575559532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071245 n + A005894 n

end

end A081492.P4199550045575559532

namespace A081492

/-- `A071245(n)+A005894(n)` -/
def P4199550045575559532.Spec : Prop :=
  ∀ n, P4199550045575559532.a n = A081492 (n + 1)

end A081492

/-! ## A081492.P6276282690953040048

`A330700(n)+A001844(n)`
-/

namespace A081492.P6276282690953040048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330700 n + A001844 n

end

end A081492.P6276282690953040048

namespace A081492

/-- `A330700(n)+A001844(n)` -/
def P6276282690953040048.Spec : Prop :=
  ∀ n, P6276282690953040048.a n = A081492 (n + 1)

end A081492

/-! ## A081492.P10388140920063346320

`A014820(n)-A059270(n)`
-/

namespace A081492.P10388140920063346320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n - A059270 n

end

end A081492.P10388140920063346320

namespace A081492

/-- `A014820(n)-A059270(n)` -/
def P10388140920063346320.Spec : Prop :=
  ∀ n, P10388140920063346320.a n = A081492 (n + 1)

end A081492

/-! ## A081492.P4464850108294886425

`A051797(n)-A254407(n)`
-/

namespace A081492.P4464850108294886425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051797 n - A254407 n

end

end A081492.P4464850108294886425

namespace A081492

/-- `A051797(n)-A254407(n)` -/
def P4464850108294886425.Spec : Prop :=
  ∀ n, P4464850108294886425.a n = A081492 (n + 1)

end A081492

/-! ## A081492.P11595057940934822560

`A329523(n+1)+A006484(n)`
-/

namespace A081492.P11595057940934822560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329523 (n + 1) + A006484 n

end

end A081492.P11595057940934822560

namespace A081492

/-- `A329523(n+1)+A006484(n)` -/
def P11595057940934822560.Spec : Prop :=
  ∀ n, P11595057940934822560.a n = A081492 (n + 1)

end A081492

/-! ## A081492.P4164820873382201702

`A100189(n+1)-A071238(n)`
-/

namespace A081492.P4164820873382201702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100189 (n + 1) - A071238 n

end

end A081492.P4164820873382201702

namespace A081492

/-- `A100189(n+1)-A071238(n)` -/
def P4164820873382201702.Spec : Prop :=
  ∀ n, P4164820873382201702.a n = A081492 (n + 1)

end A081492

/-! ## A081492.P3169993450951733151

`A066804(n+1)-A255211(n)`
-/

namespace A081492.P3169993450951733151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066804 (n + 1) - A255211 n

end

end A081492.P3169993450951733151

namespace A081492

/-- `A066804(n+1)-A255211(n)` -/
def P3169993450951733151.Spec : Prop :=
  ∀ n, P3169993450951733151.a n = A081492 (n + 1)

end A081492

/-! ## A081492.P16831254264595011342

`A178073(n+1)-A331987(n)`
-/

namespace A081492.P16831254264595011342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178073 (n + 1) - A331987 n

end

end A081492.P16831254264595011342

namespace A081492

/-- `A178073(n+1)-A331987(n)` -/
def P16831254264595011342.Spec : Prop :=
  ∀ n, P16831254264595011342.a n = A081492 (n + 1)

end A081492

/-! ## A081492.P1946316198101989349

`∑[∑[A004277(n)²]-A000567(n)]`
-/

namespace A081492.P1946316198101989349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081492.P1946316198101989349

namespace A081492

/-- `∑[∑[A004277(n)²]-A000567(n)]` -/
def P1946316198101989349.Spec : Prop :=
  ∀ n, P1946316198101989349.a n = A081492 (n + 1)

end A081492

/-! ## A081492.P5039631285960950875

`A006324(n+1)-A144945(n+1)`
-/

namespace A081492.P5039631285960950875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (n + 1) - A144945 (n + 1)

end

end A081492.P5039631285960950875

namespace A081492

/-- `A006324(n+1)-A144945(n+1)` -/
def P5039631285960950875.Spec : Prop :=
  ∀ n, P5039631285960950875.a n = A081492 (n + 1)

end A081492

/-!
# A081493: Triangle T(n,k) read by rows in which the n-th row begins with T(n,1) = n and contains n terms of an arithmetic progression with a common difference of (n-1).

The programs for A081493, the canonical program `A081493.P16441661050706052862` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081493 has offset 1).

The definition of A081493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081493.P13740143082756035102

`A079904(n)+∑[char[∑[n]]]`
-/

namespace A081493.P13740143082756035102
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081493.P13740143082756035102

namespace A081493

/-- `A079904(n)+∑[char[∑[n]]]` -/
def P13740143082756035102.Spec : Prop :=
  ∀ n, P13740143082756035102.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P16443986343135345725

`A144204(n+1)+comp[∑[n]]-n`
-/

namespace A081493.P16443986343135345725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144204 (n + 1) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A081493.P16443986343135345725

namespace A081493

/-- `A144204(n+1)+comp[∑[n]]-n` -/
def P16443986343135345725.Spec : Prop :=
  ∀ n, P16443986343135345725.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P4228446632441253955

`A076110(n+1)+∑[char[∑[n+1]]]`
-/

namespace A081493.P4228446632441253955
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081493.P4228446632441253955

namespace A081493

/-- `A076110(n+1)+∑[char[∑[n+1]]]` -/
def P4228446632441253955.Spec : Prop :=
  ∀ n, P4228446632441253955.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P6987350427129607055

`∑[char[∑[n+1]]]*A002260(n+1)+1`
-/

namespace A081493.P6987350427129607055
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002260 (n + 1) + 1

end

end A081493.P6987350427129607055

namespace A081493

/-- `∑[char[∑[n+1]]]*A002260(n+1)+1` -/
def P6987350427129607055.Spec : Prop :=
  ∀ n, P6987350427129607055.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P14693689548511383545

`A309559(n)+A112367(n)`
-/

namespace A081493.P14693689548511383545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n + A112367 n

end

end A081493.P14693689548511383545

namespace A081493

/-- `A309559(n)+A112367(n)` -/
def P14693689548511383545.Spec : Prop :=
  ∀ n, P14693689548511383545.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P15855774458304489288

`A105020(n)-A059036(n)`
-/

namespace A081493.P15855774458304489288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n - A059036 n

end

end A081493.P15855774458304489288

namespace A081493

/-- `A105020(n)-A059036(n)` -/
def P15855774458304489288.Spec : Prop :=
  ∀ n, P15855774458304489288.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P16441661050706052862

`A003056(n)+A079904(n)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A081493

/-- `A003056(n)+A079904(n)+1` -/
def P16441661050706052862.Spec : Prop :=
  ∀ n, P16441661050706052862.a n = A081493 (n + 1)

theorem P16441661050706052862.correct : P16441661050706052862.Spec := by
  intro n
  simp only [A081493, Nat.add_sub_cancel]

end A081493

/-! ## A081493.P10824105480836522053

`A143844(n)+A003991(n+1)`
-/

namespace A081493.P10824105480836522053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A003991 (n + 1)

end

end A081493.P10824105480836522053

namespace A081493

/-- `A143844(n)+A003991(n+1)` -/
def P10824105480836522053.Spec : Prop :=
  ∀ n, P10824105480836522053.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P15490268957906937146

`A159797(n)+A002260(n+1)`
-/

namespace A081493.P15490268957906937146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n + A002260 (n + 1)

end

end A081493.P15490268957906937146

namespace A081493

/-- `A159797(n)+A002260(n+1)` -/
def P15490268957906937146.Spec : Prop :=
  ∀ n, P15490268957906937146.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P11509402735185981826

`A162609(n+1)+A051162(n)`
-/

namespace A081493.P11509402735185981826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (n + 1) + A051162 n

end

end A081493.P11509402735185981826

namespace A081493

/-- `A162609(n+1)+A051162(n)` -/
def P11509402735185981826.Spec : Prop :=
  ∀ n, P11509402735185981826.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P17758800128886087398

`A075362(n+1)-A002262(n)`
-/

namespace A081493.P17758800128886087398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A002262 n

end

end A081493.P17758800128886087398

namespace A081493

/-- `A075362(n+1)-A002262(n)` -/
def P17758800128886087398.Spec : Prop :=
  ∀ n, P17758800128886087398.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P9053827024121770479

`A162610(n+1)-A003056(n)`
-/

namespace A081493.P9053827024121770479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162610 (n + 1) - A003056 n

end

end A081493.P9053827024121770479

namespace A081493

/-- `A162610(n+1)-A003056(n)` -/
def P9053827024121770479.Spec : Prop :=
  ∀ n, P9053827024121770479.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P6167537530732607834

`A215630(n+1)-A055630(n)`
-/

namespace A081493.P6167537530732607834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (n + 1) - A055630 n

end

end A081493.P6167537530732607834

namespace A081493

/-- `A215630(n+1)-A055630(n)` -/
def P6167537530732607834.Spec : Prop :=
  ∀ n, P6167537530732607834.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P12511992978795729861

`A003991(n+1)+A002262(n)²`
-/

namespace A081493.P12511992978795729861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + A002262 n ^ 2

end

end A081493.P12511992978795729861

namespace A081493

/-- `A003991(n+1)+A002262(n)²` -/
def P12511992978795729861.Spec : Prop :=
  ∀ n, P12511992978795729861.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P866293311475306195

`A002262(n)²+A059036(n)+1`
-/

namespace A081493.P866293311475306195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + (A059036 n + 1)

end

end A081493.P866293311475306195

namespace A081493

/-- `A002262(n)²+A059036(n)+1` -/
def P866293311475306195.Spec : Prop :=
  ∀ n, P866293311475306195.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P12054135819266457485

`A002260(n+1)*A003056(n)+1`
-/

namespace A081493.P12054135819266457485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A003056 n + 1

end

end A081493.P12054135819266457485

namespace A081493

/-- `A002260(n+1)*A003056(n)+1` -/
def P12054135819266457485.Spec : Prop :=
  ∀ n, P12054135819266457485.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P15756811328756551045

`A003057(n+2)+A079904(n)-1`
-/

namespace A081493.P15756811328756551045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) + (A079904 n - 1)

end

end A081493.P15756811328756551045

namespace A081493

/-- `A003057(n+2)+A079904(n)-1` -/
def P15756811328756551045.Spec : Prop :=
  ∀ n, P15756811328756551045.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P17432790058474811028

`A075362(n+1)+A057944(n)-n`
-/

namespace A081493.P17432790058474811028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + (A057944 n - (n : ℤ))

end

end A081493.P17432790058474811028

namespace A081493

/-- `A075362(n+1)+A057944(n)-n` -/
def P17432790058474811028.Spec : Prop :=
  ∀ n, P17432790058474811028.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P11654922926753661276

`A075362(n+1)+1-A002260(n+1)`
-/

namespace A081493.P11654922926753661276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + (1 - A002260 (n + 1))

end

end A081493.P11654922926753661276

namespace A081493

/-- `A075362(n+1)+1-A002260(n+1)` -/
def P11654922926753661276.Spec : Prop :=
  ∀ n, P11654922926753661276.a n = A081493 (n + 1)

end A081493

/-! ## A081493.P2974486089779678253

`A128136(n+1)+A002260(n+2)-A002260(n+1)`
-/

namespace A081493.P2974486089779678253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128136 (n + 1) + (A002260 (n + 2) - A002260 (n + 1))

end

end A081493.P2974486089779678253

namespace A081493

/-- `A128136(n+1)+A002260(n+2)-A002260(n+1)` -/
def P2974486089779678253.Spec : Prop :=
  ∀ n, P2974486089779678253.a n = A081493 (n + 1)

end A081493

/-!
# A081494: Start with Pascal's triangle; form a triangle by sliding down n steps from top on both sides and including the horizontal row, deleting the inner numbers; a(n) = sum of entries on perimeter of triangle.

The programs for A081494, the canonical program `A081494.P6250384484940254011` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081494 has offset 1).

The definition of A081494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081494.P6250384484940254011

`or(abs(1-2*n), 2^n)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081494

/-- `or(abs(1-2*n), 2^n)` -/
def P6250384484940254011.Spec : Prop :=
  ∀ n, P6250384484940254011.a n = A081494 (n + 1)

theorem P6250384484940254011.correct : P6250384484940254011.Spec := by
  intro n
  simp only [A081494, Nat.add_sub_cancel]

end A081494

/-! ## A081494.P979894592928533665

`2*n-or(1, -2^n)`
-/

namespace A081494.P979894592928533665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.lor 1 (-(2 ^ n : ℤ))

end

end A081494.P979894592928533665

namespace A081494

/-- `2*n-or(1, -2^n)` -/
def P979894592928533665.Spec : Prop :=
  ∀ n, P979894592928533665.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P4335515899732232371

`comp[2*(n+1)]+2^n`
-/

namespace A081494.P4335515899732232371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 ^ n

end

end A081494.P4335515899732232371

namespace A081494

/-- `comp[2*(n+1)]+2^n` -/
def P4335515899732232371.Spec : Prop :=
  ∀ n, (P4335515899732232371.a n : ℤ) = A081494 (n + 1)

end A081494

/-! ## A081494.P624687193935742810

`abs(or(n-1, 2^n)+n)`
-/

namespace A081494.P624687193935742810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor ((n : ℤ) - 1) (2 ^ n : ℤ) + (n : ℤ)|

end

end A081494.P624687193935742810

namespace A081494

/-- `abs(or(n-1, 2^n)+n)` -/
def P624687193935742810.Spec : Prop :=
  ∀ n, P624687193935742810.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P526928306037479638

`∑[∑[ogf((-1+x+2x^3)/(-1+2x))]]`
-/

namespace A081494.P526928306037479638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -2] [1, -2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081494.P526928306037479638

namespace A081494

/-- `∑[∑[ogf((-1+x+2x^3)/(-1+2x))]]` -/
def P526928306037479638.Spec : Prop :=
  ∀ n, P526928306037479638.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P16751327060247517429

`ogf((-1+x+2x^3)/(-1+4x-5x^2+2x^3))`
-/

namespace A081494.P16751327060247517429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -2] [1, -4, 5, -2] n

end

end A081494.P16751327060247517429

namespace A081494

/-- `ogf((-1+x+2x^3)/(-1+4x-5x^2+2x^3))` -/
def P16751327060247517429.Spec : Prop :=
  ∀ n, P16751327060247517429.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P9287307507804400556

`∑[2*(a(n-1)-1)]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A081494.P9287307507804400556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  2 * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081494.P9287307507804400556

namespace A081494

/-- `∑[2*(a(n-1)-1)]` -/
def P9287307507804400556.Spec : Prop :=
  ∀ n, P9287307507804400556.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P13414620364246263560

`∑[a(n-1)+a(n-1)-2]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A081494.P13414620364246263560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081494.P13414620364246263560

namespace A081494

/-- `∑[a(n-1)+a(n-1)-2]` -/
def P13414620364246263560.Spec : Prop :=
  ∀ n, P13414620364246263560.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P3228398285941070790

`∑[a(n-1)-(2-a(n-1))]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A081494.P3228398285941070790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081494.P3228398285941070790

namespace A081494

/-- `∑[a(n-1)-(2-a(n-1))]` -/
def P3228398285941070790.Spec : Prop :=
  ∀ n, P3228398285941070790.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P9236823327710992545

`∑[A127904(n)+1]`
-/

namespace A081494.P9236823327710992545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081494.P9236823327710992545

namespace A081494

/-- `∑[A127904(n)+1]` -/
def P9236823327710992545.Spec : Prop :=
  ∀ n, P9236823327710992545.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P8330925004220505574

`record[A072345(n)+n]`
-/

namespace A081494.P8330925004220505574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081494.P8330925004220505574

namespace A081494

/-- `record[A072345(n)+n]` -/
def P8330925004220505574.Spec : Prop :=
  ∀ n, P8330925004220505574.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P2695070941741205441

`record[A082392(n+1)+n]`
-/

namespace A081494.P2695070941741205441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082392 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081494.P2695070941741205441

namespace A081494

/-- `record[A082392(n+1)+n]` -/
def P2695070941741205441.Spec : Prop :=
  ∀ n, P2695070941741205441.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P5920361205917453820

`record[A112387(n+1)+n]`
-/

namespace A081494.P5920361205917453820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081494.P5920361205917453820

namespace A081494

/-- `record[A112387(n+1)+n]` -/
def P5920361205917453820.Spec : Prop :=
  ∀ n, P5920361205917453820.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P3070478581023027652

`xor(A000079(n), A004273(n))`
-/

namespace A081494.P3070478581023027652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A004273 n)

end

end A081494.P3070478581023027652

namespace A081494

/-- `xor(A000079(n), A004273(n))` -/
def P3070478581023027652.Spec : Prop :=
  ∀ n, P3070478581023027652.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P16689783442871128122

`xor(A000007(n), A061761(n))`
-/

namespace A081494.P16689783442871128122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A061761 n)

end

end A081494.P16689783442871128122

namespace A081494

/-- `xor(A000007(n), A061761(n))` -/
def P16689783442871128122.Spec : Prop :=
  ∀ n, P16689783442871128122.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P8274279309177729374

`xor(A163985(n), A240951(n+1))`
-/

namespace A081494.P8274279309177729374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A163985 n) (A240951 (n + 1))

end

end A081494.P8274279309177729374

namespace A081494

/-- `xor(A163985(n), A240951(n+1))` -/
def P8274279309177729374.Spec : Prop :=
  ∀ n, P8274279309177729374.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P10868536961600189841

`record[∑[A052552(n)]/A052552(n)]`
-/

namespace A081494.P10868536961600189841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A052552 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081494.P10868536961600189841

namespace A081494

/-- `record[∑[A052552(n)]/A052552(n)]` -/
def P10868536961600189841.Spec : Prop :=
  ∀ n, P10868536961600189841.a n = (A081494 (n + 1) : ℚ)

end A081494

/-! ## A081494.P3176082554464595281

`Δ[or((1-n)², 2^n)]`
-/

namespace A081494.P3176082554464595281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((1 - (n : ℤ)) ^ 2) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081494.P3176082554464595281

namespace A081494

/-- `Δ[or((1-n)², 2^n)]` -/
def P3176082554464595281.Spec : Prop :=
  ∀ n, P3176082554464595281.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P16434223939081872365

`xor(A000225(n), A132732(n))`
-/

namespace A081494.P16434223939081872365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A132732 n)

end

end A081494.P16434223939081872365

namespace A081494

/-- `xor(A000225(n), A132732(n))` -/
def P16434223939081872365.Spec : Prop :=
  ∀ n, P16434223939081872365.a n = A081494 (n + 1)

end A081494

/-! ## A081494.P16076541590877864770

`Δ[Δ[A324172(n)]+n²]`
-/

namespace A081494.P16076541590877864770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324172 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081494.P16076541590877864770

namespace A081494

/-- `Δ[Δ[A324172(n)]+n²]` -/
def P16076541590877864770.Spec : Prop :=
  ∀ n, P16076541590877864770.a n = A081494 (n + 1)

end A081494

/-!
# A081495: Start with Pascal's triangle; form a rhombus by sliding down n steps from top on both sides then sliding down inwards to complete the rhombus and then deleting the inner numbers; a(n) = sum of entries on perimeter of rhombus.

The programs for A081495, the canonical program `A081495.P18059496137314334868` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081495 has offset 1).

The definition of A081495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081495.P10821619976005023552

`comp[2*(n+1)]+Δ[(4-2/n)*a(n-1)]` with `a(0)=1`
-/

namespace A081495.P10821619976005023552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (4 - 2 / (n : ℚ)) * f2 (n - 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) + (f2 (n + 1) - f2 n)

end

end A081495.P10821619976005023552

namespace A081495

/-- `comp[2*(n+1)]+Δ[(4-2/n)*a(n-1)]` -/
def P10821619976005023552.Spec : Prop :=
  ∀ n, P10821619976005023552.a n = (A081495 (n + 1) : ℚ)

end A081495

/-! ## A081495.P11269134772004732492

`Δ[A244174(n)+(1-n)²]`
-/

namespace A081495.P11269134772004732492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244174 n + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081495.P11269134772004732492

namespace A081495

/-- `Δ[A244174(n)+(1-n)²]` -/
def P11269134772004732492.Spec : Prop :=
  ∀ n, P11269134772004732492.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P16618773469420335746

`comp[2*(n+1)]+Δ[A000984(n)]`
-/

namespace A081495.P16618773469420335746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (f2 (n + 1) - f2 n)

end

end A081495.P16618773469420335746

namespace A081495

/-- `comp[2*(n+1)]+Δ[A000984(n)]` -/
def P16618773469420335746.Spec : Prop :=
  ∀ n, P16618773469420335746.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P17477418282632439800

`comp[2*(n+1)]+Δ[A063886(2*n)]`
-/

namespace A081495.P17477418282632439800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (f2 (n + 1) - f2 n)

end

end A081495.P17477418282632439800

namespace A081495

/-- `comp[2*(n+1)]+Δ[A063886(2*n)]` -/
def P17477418282632439800.Spec : Prop :=
  ∀ n, P17477418282632439800.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P10203754293713780104

`comp[2*(n+1)]+Δ[A081668(2*n)]`
-/

namespace A081495.P10203754293713780104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (f2 (n + 1) - f2 n)

end

end A081495.P10203754293713780104

namespace A081495

/-- `comp[2*(n+1)]+Δ[A081668(2*n)]` -/
def P10203754293713780104.Spec : Prop :=
  ∀ n, P10203754293713780104.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P18059496137314334868

`A004277(n)+Δ[A045992(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081495

/-- `A004277(n)+Δ[A045992(n)]` -/
def P18059496137314334868.Spec : Prop :=
  ∀ n, P18059496137314334868.a n = A081495 (n + 1)

theorem P18059496137314334868.correct : P18059496137314334868.Spec := by
  intro n
  simp only [A081495, Nat.add_sub_cancel]

end A081495

/-! ## A081495.P8162936635095890392

`record[A337499(A014681(n))+n]`
-/

namespace A081495.P8162936635095890392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337499 (A014681 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081495.P8162936635095890392

namespace A081495

/-- `record[A337499(A014681(n))+n]` -/
def P8162936635095890392.Spec : Prop :=
  ∀ n, P8162936635095890392.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P5879312366467866767

`A051924(n+1)+A004273(n)`
-/

namespace A081495.P5879312366467866767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1) + A004273 n

end

end A081495.P5879312366467866767

namespace A081495

/-- `A051924(n+1)+A004273(n)` -/
def P5879312366467866767.Spec : Prop :=
  ∀ n, P5879312366467866767.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P8681308417824194459

`A026010(2*n)+A004273(n)`
-/

namespace A081495.P8681308417824194459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (2 * n) + A004273 n

end

end A081495.P8681308417824194459

namespace A081495

/-- `A026010(2*n)+A004273(n)` -/
def P8681308417824194459.Spec : Prop :=
  ∀ n, P8681308417824194459.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P8445478954479000180

`A337499(2*n)+A004273(n)`
-/

namespace A081495.P8445478954479000180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337499 (2 * n) + A004273 n

end

end A081495.P8445478954479000180

namespace A081495

/-- `A337499(2*n)+A004273(n)` -/
def P8445478954479000180.Spec : Prop :=
  ∀ n, P8445478954479000180.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P5671317878231866565

`Δ[A000984(n)]+A004277(n)-1`
-/

namespace A081495.P5671317878231866565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A004277 n - 1)

end

end A081495.P5671317878231866565

namespace A081495

/-- `Δ[A000984(n)]+A004277(n)-1` -/
def P5671317878231866565.Spec : Prop :=
  ∀ n, P5671317878231866565.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P10120643682562502806

`A004273(n)+Δ[A126869(2*n)]`
-/

namespace A081495.P10120643682562502806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (f1 (n + 1) - f1 n)

end

end A081495.P10120643682562502806

namespace A081495

/-- `A004273(n)+Δ[A126869(2*n)]` -/
def P10120643682562502806.Spec : Prop :=
  ∀ n, P10120643682562502806.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P15009623546796882805

`A026010(2*n)+record[A006257(n)]`
-/

namespace A081495.P15009623546796882805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (2 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081495.P15009623546796882805

namespace A081495

/-- `A026010(2*n)+record[A006257(n)]` -/
def P15009623546796882805.Spec : Prop :=
  ∀ n, P15009623546796882805.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P7830258221194081192

`A337499(2*n)+A014681(2*n)`
-/

namespace A081495.P7830258221194081192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337499 (2 * n) + A014681 (2 * n)

end

end A081495.P7830258221194081192

namespace A081495

/-- `A337499(2*n)+A014681(2*n)` -/
def P7830258221194081192.Spec : Prop :=
  ∀ n, P7830258221194081192.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P4861990774888455106

`A014681(2*n)+Δ[A001405(2*n)]`
-/

namespace A081495.P4861990774888455106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * n) + (f1 (n + 1) - f1 n)

end

end A081495.P4861990774888455106

namespace A081495

/-- `A014681(2*n)+Δ[A001405(2*n)]` -/
def P4861990774888455106.Spec : Prop :=
  ∀ n, P4861990774888455106.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P5706233408800685178

`record[A051924(A171181(n+1)+1)+n]`
-/

namespace A081495.P5706233408800685178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (A171181 (n + 1) + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081495.P5706233408800685178

namespace A081495

/-- `record[A051924(A171181(n+1)+1)+n]` -/
def P5706233408800685178.Spec : Prop :=
  ∀ n, P5706233408800685178.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P14749626493936887359

`Δ[A001405(2*n)+A289207(n+1)²]`
-/

namespace A081495.P14749626493936887359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) + A289207 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081495.P14749626493936887359

namespace A081495

/-- `Δ[A001405(2*n)+A289207(n+1)²]` -/
def P14749626493936887359.Spec : Prop :=
  ∀ n, P14749626493936887359.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P11777505899434130546

`A289207(2*n+1)+Δ[A001405(2*n)]`
-/

namespace A081495.P11777505899434130546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A081495.P11777505899434130546

namespace A081495

/-- `A289207(2*n+1)+Δ[A001405(2*n)]` -/
def P11777505899434130546.Spec : Prop :=
  ∀ n, P11777505899434130546.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P6670020140442999993

`A233583(2*(n+1))+A026010(2*n)-2`
-/

namespace A081495.P6670020140442999993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (2 * (n + 1)) + (A026010 (2 * n) - 2)

end

end A081495.P6670020140442999993

namespace A081495

/-- `A233583(2*(n+1))+A026010(2*n)-2` -/
def P6670020140442999993.Spec : Prop :=
  ∀ n, P6670020140442999993.a n = A081495 (n + 1)

end A081495

/-! ## A081495.P13700685565753638862

`Δ[A210736(2*n+1)+A140106(2*n+1)²]`
-/

namespace A081495.P13700685565753638862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n + 1) + A140106 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081495.P13700685565753638862

namespace A081495

/-- `Δ[A210736(2*n+1)+A140106(2*n+1)²]` -/
def P13700685565753638862.Spec : Prop :=
  ∀ n, P13700685565753638862.a n = A081495 (n + 1)

end A081495

/-!
# A081496: Start with Pascal's triangle; a(n) is the sum of the numbers on the periphery of the n-th central rhombus containing exactly 4 numbers.

The programs for A081496, the canonical program `A081496.P9591231661126913528` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081496 has offset 1).

The definition of A081496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081496.P9591231661126913528

`(9*(n+1)-4)*C(2*n, n)/(n+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081496

/-- `(9*(n+1)-4)*C(2*n, n)/(n+1)` -/
def P9591231661126913528.Spec : Prop :=
  ∀ n, P9591231661126913528.a n = (A081496 (n + 1) : ℚ)

end A081496

/-! ## A081496.P15132134117608989616

`A027171(n)+4`
-/

namespace A081496.P15132134117608989616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027171 n + 4

end

end A081496.P15132134117608989616

namespace A081496

/-- `A027171(n)+4` -/
def P15132134117608989616.Spec : Prop :=
  ∀ n, P15132134117608989616.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P15446775805233618942

`A027177(2*n)+4`
-/

namespace A081496.P15446775805233618942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027177 (2 * n) + 4

end

end A081496.P15446775805233618942

namespace A081496

/-- `A027177(2*n)+4` -/
def P15446775805233618942.Spec : Prop :=
  ∀ n, P15446775805233618942.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P3382583373871044231

`(9*n+5)*A000108(n)`
-/

namespace A081496.P3382583373871044231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 5 : ℤ) * A000108 n

end

end A081496.P3382583373871044231

namespace A081496

/-- `(9*n+5)*A000108(n)` -/
def P3382583373871044231.Spec : Prop :=
  ∀ n, P3382583373871044231.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P16229220245116015450

`A240530(n)+A051945(n)`
-/

namespace A081496.P16229220245116015450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240530 n + A051945 n

end

end A081496.P16229220245116015450

namespace A081496

/-- `A240530(n)+A051945(n)` -/
def P16229220245116015450.Spec : Prop :=
  ∀ n, P16229220245116015450.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P17200534148359220611

`A000108(n)*A017221(n)`
-/

namespace A081496.P17200534148359220611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A017221 n

end

end A081496.P17200534148359220611

namespace A081496

/-- `A000108(n)*A017221(n)` -/
def P17200534148359220611.Spec : Prop :=
  ∀ n, P17200534148359220611.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P8913312303263804202

`A000108(n)*Δ[A006137(n)]`
-/

namespace A081496.P8913312303263804202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A081496.P8913312303263804202

namespace A081496

/-- `A000108(n)*Δ[A006137(n)]` -/
def P8913312303263804202.Spec : Prop :=
  ∀ n, P8913312303263804202.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P5836072081436765576

`A000108(n)*Δ[A022267(n)]`
-/

namespace A081496.P5836072081436765576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A081496.P5836072081436765576

namespace A081496

/-- `A000108(n)*Δ[A022267(n)]` -/
def P5836072081436765576.Spec : Prop :=
  ∀ n, P5836072081436765576.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P2329669125421555895

`A028329(n+1)+A000984(n)`
-/

namespace A081496.P2329669125421555895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 (n + 1) + A000984 n

end

end A081496.P2329669125421555895

namespace A081496

/-- `A028329(n+1)+A000984(n)` -/
def P2329669125421555895.Spec : Prop :=
  ∀ n, P2329669125421555895.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P821093076909226939

`A051960(n)+A003409(n+1)`
-/

namespace A081496.P821093076909226939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051960 n + A003409 (n + 1)

end

end A081496.P821093076909226939

namespace A081496

/-- `A051960(n)+A003409(n+1)` -/
def P821093076909226939.Spec : Prop :=
  ∀ n, P821093076909226939.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P9599061063266811033

`A051960(n)+A029651(n+1)`
-/

namespace A081496.P9599061063266811033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051960 n + A029651 (n + 1)

end

end A081496.P9599061063266811033

namespace A081496

/-- `A051960(n)+A029651(n+1)` -/
def P9599061063266811033.Spec : Prop :=
  ∀ n, P9599061063266811033.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P17254115342291888150

`A100320(n+1)+A000984(n)`
-/

namespace A081496.P17254115342291888150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100320 (n + 1) + A000984 n

end

end A081496.P17254115342291888150

namespace A081496

/-- `A100320(n+1)+A000984(n)` -/
def P17254115342291888150.Spec : Prop :=
  ∀ n, P17254115342291888150.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P2196199366726507014

`A029609(n+1)-A001791(n)`
-/

namespace A081496.P2196199366726507014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029609 (n + 1) - A001791 n

end

end A081496.P2196199366726507014

namespace A081496

/-- `A029609(n+1)-A001791(n)` -/
def P2196199366726507014.Spec : Prop :=
  ∀ n, P2196199366726507014.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P16316053627434147385

`2*A053368(n)-A276666(n)`
-/

namespace A081496.P16316053627434147385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053368 n - A276666 n

end

end A081496.P16316053627434147385

namespace A081496

/-- `2*A053368(n)-A276666(n)` -/
def P16316053627434147385.Spec : Prop :=
  ∀ n, P16316053627434147385.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P3024507612708908256

`A028270(n+1)+A000984(n+1)`
-/

namespace A081496.P3024507612708908256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028270 (n + 1) + A000984 (n + 1)

end

end A081496.P3024507612708908256

namespace A081496

/-- `A028270(n+1)+A000984(n+1)` -/
def P3024507612708908256.Spec : Prop :=
  ∀ n, P3024507612708908256.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P5601405397686767710

`A051924(n+1)+A028283(n+1)`
-/

namespace A081496.P5601405397686767710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1) + A028283 (n + 1)

end

end A081496.P5601405397686767710

namespace A081496

/-- `A051924(n+1)+A028283(n+1)` -/
def P5601405397686767710.Spec : Prop :=
  ∀ n, P5601405397686767710.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P4072757736740432853

`2*A000984(n+1)+A000984(n)`
-/

namespace A081496.P4072757736740432853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 (n + 1) + A000984 n

end

end A081496.P4072757736740432853

namespace A081496

/-- `2*A000984(n+1)+A000984(n)` -/
def P4072757736740432853.Spec : Prop :=
  ∀ n, P4072757736740432853.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P15490299736377923660

`A028329(n+1)+A001405(2*n)`
-/

namespace A081496.P15490299736377923660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 (n + 1) + A001405 (2 * n)

end

end A081496.P15490299736377923660

namespace A081496

/-- `A028329(n+1)+A001405(2*n)` -/
def P15490299736377923660.Spec : Prop :=
  ∀ n, P15490299736377923660.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P4958212625968468687

`A063886(2*n)+A028329(n+1)`
-/

namespace A081496.P4958212625968468687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) + A028329 (n + 1)

end

end A081496.P4958212625968468687

namespace A081496

/-- `A063886(2*n)+A028329(n+1)` -/
def P4958212625968468687.Spec : Prop :=
  ∀ n, P4958212625968468687.a n = A081496 (n + 1)

end A081496

/-! ## A081496.P10992401663985379644

`A100320(n+1)+A001405(2*n)`
-/

namespace A081496.P10992401663985379644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100320 (n + 1) + A001405 (2 * n)

end

end A081496.P10992401663985379644

namespace A081496

/-- `A100320(n+1)+A001405(2*n)` -/
def P10992401663985379644.Spec : Prop :=
  ∀ n, P10992401663985379644.a n = A081496 (n + 1)

end A081496

/-!
# A081498: Consider the triangle in which the n-th row starts with n, contains n terms and the difference of successive terms is 1,2,3,... up to n-1. Sequence gives row sums.

The programs for A081498, the canonical program `A081498.P14799648526773244683` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081498 has offset 1).

The definition of A081498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081498.P14799648526773244683

`(n+1)*(1+6*(n+1)-(n+1)²)/6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081498

/-- `(n+1)*(1+6*(n+1)-(n+1)²)/6` -/
def P14799648526773244683.Spec : Prop :=
  ∀ n, P14799648526773244683.a n = (A081498 (n + 1) : ℚ)

end A081498

/-! ## A081498.P9424625378407792624

`Δ[n²]-C(n, 3)`
-/

namespace A081498.P9424625378407792624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.choose n 3 : ℤ)

end

end A081498.P9424625378407792624

namespace A081498

/-- `Δ[n²]-C(n, 3)` -/
def P9424625378407792624.Spec : Prop :=
  ∀ n, P9424625378407792624.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P10769151458366173570

`2*n+1-C(n, 3)`
-/

namespace A081498.P10769151458366173570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - (Nat.choose n 3 : ℤ))

end

end A081498.P10769151458366173570

namespace A081498

/-- `2*n+1-C(n, 3)` -/
def P10769151458366173570.Spec : Prop :=
  ∀ n, P10769151458366173570.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P4709873282780054651

`1-(C(n, 3)-2*n)`
-/

namespace A081498.P4709873282780054651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.choose n 3 : ℤ) - (2 * n : ℤ))

end

end A081498.P4709873282780054651

namespace A081498

/-- `1-(C(n, 3)-2*n)` -/
def P4709873282780054651.Spec : Prop :=
  ∀ n, P4709873282780054651.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P15554905451857407943

`1-C(n, 3)+n+n`
-/

namespace A081498.P15554905451857407943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose n 3 : ℤ) + (n : ℤ) + (n : ℤ)

end

end A081498.P15554905451857407943

namespace A081498

/-- `1-C(n, 3)+n+n` -/
def P15554905451857407943.Spec : Prop :=
  ∀ n, P15554905451857407943.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P3031146421795247724

`∑[ogf((-1+x+x^2)/(-1+3x-3x^2+x^3))]`
-/

namespace A081498.P3031146421795247724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -3, 3, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081498.P3031146421795247724

namespace A081498

/-- `∑[ogf((-1+x+x^2)/(-1+3x-3x^2+x^3))]` -/
def P3031146421795247724.Spec : Prop :=
  ∀ n, P3031146421795247724.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P13150057931603437198

`ogf((1-x-x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A081498.P13150057931603437198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -4, 6, -4, 1] n

end

end A081498.P13150057931603437198

namespace A081498

/-- `ogf((1-x-x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P13150057931603437198.Spec : Prop :=
  ∀ n, P13150057931603437198.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P12194677093128130130

`Δ[-C(n, 4)]+2*n+1`
-/

namespace A081498.P12194677093128130130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 * n + 1 : ℤ)

end

end A081498.P12194677093128130130

namespace A081498

/-- `Δ[-C(n, 4)]+2*n+1` -/
def P12194677093128130130.Spec : Prop :=
  ∀ n, P12194677093128130130.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P1124360331994901555

`a(n-2)+n*(4-n)` with `a(0)=1, a(1)=3`
-/

namespace A081498.P1124360331994901555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (n : ℤ) * (4 - (n : ℤ))

end

end A081498.P1124360331994901555

namespace A081498

/-- `a(n-2)+n*(4-n)` -/
def P1124360331994901555.Spec : Prop :=
  ∀ n, P1124360331994901555.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P2532295089064102482

`a(n-2)-(2-n)²+4` with `a(0)=1, a(1)=3`
-/

namespace A081498.P2532295089064102482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - (2 - (n : ℤ)) ^ 2 + 4

end

end A081498.P2532295089064102482

namespace A081498

/-- `a(n-2)-(2-n)²+4` -/
def P2532295089064102482.Spec : Prop :=
  ∀ n, P2532295089064102482.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P6065382755110340917

`4-((2-n)²-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A081498.P6065382755110340917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 - ((2 - (n : ℤ)) ^ 2 - a (n - 2))

end

end A081498.P6065382755110340917

namespace A081498

/-- `4-((2-n)²-a(n-2))` -/
def P6065382755110340917.Spec : Prop :=
  ∀ n, P6065382755110340917.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P16502971733946141409

`floor(a(n-2)-n*(n-4))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A081498.P16502971733946141409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - (n : ℤ) * ((n : ℤ) - 4)

end

end A081498.P16502971733946141409

namespace A081498

/-- `floor(a(n-2)-n*(n-4))` -/
def P16502971733946141409.Spec : Prop :=
  ∀ n, P16502971733946141409.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P11279063719579712139

`2-floor(C(n-1, 2)-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A081498.P11279063719579712139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ((Nat.choose ((n : ℤ) - 1).toNat 2 : ℤ) - a (n - 1))

end

end A081498.P11279063719579712139

namespace A081498

/-- `2-floor(C(n-1, 2)-a(n-1))` -/
def P11279063719579712139.Spec : Prop :=
  ∀ n, P11279063719579712139.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P14034789699982382514

`n*(4-(n-a(n-2)/n))` with `a(0)=1, a(1)=3`
-/

namespace A081498.P14034789699982382514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n : ℚ) * (4 - ((n : ℚ) - a (n - 2) / (n : ℚ)))

end

end A081498.P14034789699982382514

namespace A081498

/-- `n*(4-(n-a(n-2)/n))` -/
def P14034789699982382514.Spec : Prop :=
  ∀ n, P14034789699982382514.a n = (A081498 (n + 1) : ℚ)

end A081498

/-! ## A081498.P9850233708124246535

`2*a(n-1)-(n-(2-a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A081498.P9850233708124246535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) - ((n : ℤ) - (2 - a (n - 2)))

end

end A081498.P9850233708124246535

namespace A081498

/-- `2*a(n-1)-(n-(2-a(n-2)))` -/
def P9850233708124246535.Spec : Prop :=
  ∀ n, P9850233708124246535.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P15534670863658455069

`2-a(n-2)+a(n-1)+a(n-1)-n` with `a(0)=1, a(1)=3`
-/

namespace A081498.P15534670863658455069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - a (n - 2) + (a (n - 1) + (a (n - 1) - (n : ℤ)))

end

end A081498.P15534670863658455069

namespace A081498

/-- `2-a(n-2)+a(n-1)+a(n-1)-n` -/
def P15534670863658455069.Spec : Prop :=
  ∀ n, P15534670863658455069.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P2726474863614162919

`2-(a(n-2)-(a(n-1)-(n-a(n-1))))` with `a(0)=1, a(1)=3`
-/

namespace A081498.P2726474863614162919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - (a (n - 2) - (a (n - 1) - ((n : ℤ) - a (n - 1))))

end

end A081498.P2726474863614162919

namespace A081498

/-- `2-(a(n-2)-(a(n-1)-(n-a(n-1))))` -/
def P2726474863614162919.Spec : Prop :=
  ∀ n, P2726474863614162919.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P10819091255725114797

`∑[A080956(n)+n]`
-/

namespace A081498.P10819091255725114797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081498.P10819091255725114797

namespace A081498

/-- `∑[A080956(n)+n]` -/
def P10819091255725114797.Spec : Prop :=
  ∀ n, P10819091255725114797.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P4032970944081666937

`(n+1)²-A000292(n)`
-/

namespace A081498.P4032970944081666937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000292 n

end

end A081498.P4032970944081666937

namespace A081498

/-- `(n+1)²-A000292(n)` -/
def P4032970944081666937.Spec : Prop :=
  ∀ n, P4032970944081666937.a n = A081498 (n + 1)

end A081498

/-! ## A081498.P7067856345786227088

`A254749(n+1)+∑[n]`
-/

namespace A081498.P7067856345786227088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254749 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081498.P7067856345786227088

namespace A081498

/-- `A254749(n+1)+∑[n]` -/
def P7067856345786227088.Spec : Prop :=
  ∀ n, P7067856345786227088.a n = A081498 (n + 1)

end A081498

/-!
# A081499: Sum at 45 degrees to horizontal in triangle of A081498.

The programs for A081499, the canonical program `A081499.P169542479627345222` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081499 has offset 1).

The definition of A081499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081499.P169542479627345222

`∑[a(n-2)+2-gcd(n, a(n-1))]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081499

/-- `∑[a(n-2)+2-gcd(n, a(n-1))]` -/
def P169542479627345222.Spec : Prop :=
  ∀ n, P169542479627345222.a n = A081499 (n + 1)

theorem P169542479627345222.correct : P169542479627345222.Spec := by
  intro n
  simp only [A081499, Nat.add_sub_cancel]

end A081499

/-! ## A081499.P13006508226153325907

`∑[n+1-A160791(n)]`
-/

namespace A081499.P13006508226153325907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A160791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081499.P13006508226153325907

namespace A081499

/-- `∑[n+1-A160791(n)]` -/
def P13006508226153325907.Spec : Prop :=
  ∀ n, P13006508226153325907.a n = A081499 (n + 1)

end A081499

/-! ## A081499.P13593433016138676398

`∑[n+1]-A160790(n)`
-/

namespace A081499.P13593433016138676398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A160790 n

end

end A081499.P13593433016138676398

namespace A081499

/-- `∑[n+1]-A160790(n)` -/
def P13593433016138676398.Spec : Prop :=
  ∀ n, P13593433016138676398.a n = A081499 (n + 1)

end A081499

/-! ## A081499.P4977173889782482107

`A000292(n+1)-(A160790(n)+A000292(n))`
-/

namespace A081499.P4977173889782482107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - (A160790 n + A000292 n)

end

end A081499.P4977173889782482107

namespace A081499

/-- `A000292(n+1)-(A160790(n)+A000292(n))` -/
def P4977173889782482107.Spec : Prop :=
  ∀ n, P4977173889782482107.a n = A081499 (n + 1)

end A081499

/-! ## A081499.P10719898596850842844

`A093353(n+1)-A058187(n)`
-/

namespace A081499.P10719898596850842844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 (n + 1) - A058187 n

end

end A081499.P10719898596850842844

namespace A081499

/-- `A093353(n+1)-A058187(n)` -/
def P10719898596850842844.Spec : Prop :=
  ∀ n, P10719898596850842844.a n = A081499 (n + 1)

end A081499

/-! ## A081499.P1804936476816626870

`A006918(n+1)-A028724(n+2)`
-/

namespace A081499.P1804936476816626870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (n + 1) - A028724 (n + 2)

end

end A081499.P1804936476816626870

namespace A081499

/-- `A006918(n+1)-A028724(n+2)` -/
def P1804936476816626870.Spec : Prop :=
  ∀ n, P1804936476816626870.a n = A081499 (n + 1)

end A081499

/-! ## A081499.P8637689377276257103

`A001318(n+1)+A008805(n)-A058187(n)`
-/

namespace A081499.P8637689377276257103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 1) + (A008805 n - A058187 n)

end

end A081499.P8637689377276257103

namespace A081499

/-- `A001318(n+1)+A008805(n)-A058187(n)` -/
def P8637689377276257103.Spec : Prop :=
  ∀ n, P8637689377276257103.a n = A081499 (n + 1)

end A081499

/-! ## A081499.P13980669178079297212

`A000217(n+1)+A160791(n+1)-A160790(n+1)`
-/

namespace A081499.P13980669178079297212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A160791 (n + 1) - A160790 (n + 1))

end

end A081499.P13980669178079297212

namespace A081499

/-- `A000217(n+1)+A160791(n+1)-A160790(n+1)` -/
def P13980669178079297212.Spec : Prop :=
  ∀ n, P13980669178079297212.a n = A081499 (n + 1)

end A081499

/-! ## A081499.P8726714276905049636

`A117142(2*n+1)-A111138(A117142(n+2))`
-/

namespace A081499.P8726714276905049636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117142 (2 * n + 1) - A111138 (A117142 (n + 2)).toNat

end

end A081499.P8726714276905049636

namespace A081499

/-- `A117142(2*n+1)-A111138(A117142(n+2))` -/
def P8726714276905049636.Spec : Prop :=
  ∀ n, P8726714276905049636.a n = A081499 (n + 1)

end A081499

