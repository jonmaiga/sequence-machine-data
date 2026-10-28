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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
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
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
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
# A361700: Constant term in the expansion of (1 + x^4 + y^4 + 1/(x*y))^n.

The programs for A361700, the canonical program `A361700.P1192853685672794685` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361700 has offset 0).

The definition of A361700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361700.P1192853685672794685

`∑{#}[floor(n/6), C(2*#, #)*C(6*#, 2*#)*C(n, 6*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361700

/-- `∑{#}[floor(n/6), C(2*#, #)*C(6*#, 2*#)*C(n, 6*#)]` -/
def P1192853685672794685.Spec : Prop :=
  ∀ n, (P1192853685672794685.a n : ℤ) = A361700 n

theorem P1192853685672794685.correct : P1192853685672794685.Spec := by
  intro n
  simp only [A361700]

end A361700

/-! ## A361700.P6723168027260764301

`A110963(A361658(n))`
-/

namespace A361700.P6723168027260764301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (A361658 n).toNat

end

end A361700.P6723168027260764301

namespace A361700

/-- `A110963(A361658(n))` -/
def P6723168027260764301.Spec : Prop :=
  ∀ n, P6723168027260764301.a n = A361700 n

end A361700

/-! ## A361700.P15182475549717214550

`A000265(A293588(n)+3)`
-/

namespace A361700.P15182475549717214550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A293588 n + 3).toNat

end

end A361700.P15182475549717214550

namespace A361700

/-- `A000265(A293588(n)+3)` -/
def P15182475549717214550.Spec : Prop :=
  ∀ n, P15182475549717214550.a n = A361700 n

end A361700

/-! ## A361700.P7708213520628546454

`A000265(A361658(n)+3)`
-/

namespace A361700.P7708213520628546454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A361658 n + 3).toNat

end

end A361700.P7708213520628546454

namespace A361700

/-- `A000265(A361658(n)+3)` -/
def P7708213520628546454.Spec : Prop :=
  ∀ n, P7708213520628546454.a n = A361700 n

end A361700

/-! ## A361700.P12216687074976504742

`A000265(xor(5, A361658(n)))`
-/

namespace A361700.P12216687074976504742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor 5 (A361658 n)).toNat

end

end A361700.P12216687074976504742

namespace A361700

/-- `A000265(xor(5, A361658(n)))` -/
def P12216687074976504742.Spec : Prop :=
  ∀ n, P12216687074976504742.a n = A361700 n

end A361700

/-!
# A361701: Constant term in the expansion of (1 + x^4 + y^4 + z^4 + 1/(x*y*z))^n.

The programs for A361701, the canonical program `A361701.P13160009043448031411` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361701 has offset 0).

The definition of A361701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361701.P13160009043448031411

`∑{#}[floor(n/7), (3*#)!/#!^3*C(7*#, 3*#)*C(n, 7*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361701

/-- `∑{#}[floor(n/7), (3*#)!/#!^3*C(7*#, 3*#)*C(n, 7*#)]` -/
def P13160009043448031411.Spec : Prop :=
  ∀ n, P13160009043448031411.a n = (A361701 n : ℚ)

end A361701

/-! ## A361701.P3882684402791092359

`A016777(70*C(n, 7))`
-/

namespace A361701.P3882684402791092359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (70 * Nat.choose n 7)

end

end A361701.P3882684402791092359

namespace A361701

/-- `A016777(70*C(n, 7))` -/
def P3882684402791092359.Spec : Prop :=
  ∀ n, P3882684402791092359.a n = A361701 n

end A361701

/-! ## A361701.P273991732867807276

`A110963(A361675(n))`
-/

namespace A361701.P273991732867807276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (A361675 n).toNat

end

end A361701.P273991732867807276

namespace A361701

/-- `A110963(A361675(n))` -/
def P273991732867807276.Spec : Prop :=
  ∀ n, P273991732867807276.a n = A361701 n

end A361701

/-! ## A361701.P91486991632098870

`A000265(A361675(n)+3)`
-/

namespace A361701.P91486991632098870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A361675 n + 3).toNat

end

end A361701.P91486991632098870

namespace A361701

/-- `A000265(A361675(n)+3)` -/
def P91486991632098870.Spec : Prop :=
  ∀ n, P91486991632098870.a n = A361701 n

end A361701

/-! ## A361701.P14225722526003784747

`A302034(A361675(n)+3)`
-/

namespace A361701.P14225722526003784747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (A361675 n + 3).toNat

end

end A361701.P14225722526003784747

namespace A361701

/-- `A302034(A361675(n)+3)` -/
def P14225722526003784747.Spec : Prop :=
  ∀ n, P14225722526003784747.a n = A361701 n

end A361701

/-!
# A361702: Lexicographically earliest sequence of positive numbers on a square spiral such that no four equal numbers lie on the circumference of a circle.

The programs for A361702, there is no canonical definition to state claims against.
-/

/-! ## A361702.P8058581652321081783

`A001221(A345192(n)+A339093(2*(n+1)))`
-/

namespace A361702.P8058581652321081783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A345192 n + A339093 (2 * (n + 1))).toNat

end

end A361702.P8058581652321081783

/-! ## A361702.P15643967658274360302

`A043536(or(A078812(n), A180188(2*n+1)))`
-/

namespace A361702.P15643967658274360302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (Int.lor (A078812 n) (A180188 (2 * n + 1))).toNat

end

end A361702.P15643967658274360302

/-! ## A361702.P5150302547986270525

`A001221(A121685(3*(n+1))+A038086(n+1))`
-/

namespace A361702.P5150302547986270525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A121685 (3 * (n + 1)) + A038086 (n + 1)).toNat

end

end A361702.P5150302547986270525

/-! ## A361702.P8699694806055494062

`A001221(A342441(n+1)+A034386(n))`
-/

namespace A361702.P8699694806055494062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A342441 (n + 1) + A034386 n).toNat

end

end A361702.P8699694806055494062

/-! ## A361702.P18246487361469171104

`A087436(A324753(3*n)+A324697(n+1))`
-/

namespace A361702.P18246487361469171104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A324753 (3 * n) + A324697 (n + 1)).toNat

end

end A361702.P18246487361469171104

/-!
# A361703: Constant term in the expansion of (1 + w + x + y + z + 1/(w*x*y*z))^n.

The programs for A361703, the canonical program `A361703.P2632379831308275225` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361703 has offset 0).

The definition of A361703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361703.P2632379831308275225

`∑{#}[floor(n/5), (4*#)!/#!^4*C(5*#, 4*#)*C(n, 5*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361703

/-- `∑{#}[floor(n/5), (4*#)!/#!^4*C(5*#, 4*#)*C(n, 5*#)]` -/
def P2632379831308275225.Spec : Prop :=
  ∀ n, P2632379831308275225.a n = (A361703 n : ℚ)

end A361703

/-! ## A361703.P7422563848860153997

`∑{#}[floor(n/5), (5*#)!/#!^5*C(n, 5*#)]`
-/

namespace A361703.P7422563848860153997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.factorial (5 * k) : ℚ) / (Nat.factorial k ^ 5 : ℚ) * (Nat.choose n (5 * k) : ℚ)

end

end A361703.P7422563848860153997

namespace A361703

/-- `∑{#}[floor(n/5), (5*#)!/#!^5*C(n, 5*#)]` -/
def P7422563848860153997.Spec : Prop :=
  ∀ n, P7422563848860153997.a n = (A361703 n : ℚ)

end A361703

/-! ## A361703.P12920263395366663481

`A005408(5*12*C(n, 5))`
-/

namespace A361703.P12920263395366663481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (5 * (12 * Nat.choose n 5))

end

end A361703.P12920263395366663481

namespace A361703

/-- `A005408(5*12*C(n, 5))` -/
def P12920263395366663481.Spec : Prop :=
  ∀ n, P12920263395366663481.a n = A361703 n

end A361703

/-! ## A361703.P2870814673503601568

`A267881(5*12*C(n, 5))`
-/

namespace A361703.P2870814673503601568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267881 (5 * (12 * Nat.choose n 5))

end

end A361703.P2870814673503601568

namespace A361703

/-- `A267881(5*12*C(n, 5))` -/
def P2870814673503601568.Spec : Prop :=
  ∀ n, P2870814673503601568.a n = A361703 n

end A361703

/-! ## A361703.P6181725437021411152

`A047412(75*C(n, 5)+2)`
-/

namespace A361703.P6181725437021411152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047412 (75 * Nat.choose n 5 + 2)

end

end A361703.P6181725437021411152

namespace A361703

/-- `A047412(75*C(n, 5)+2)` -/
def P6181725437021411152.Spec : Prop :=
  ∀ n, P6181725437021411152.a n = A361703 n

end A361703

/-!
# A361704: Constant term in the expansion of (1 + w^2 + x^2 + y^2 + z^2 + 1/(w*x*y*z))^n.

The programs for A361704, the canonical program `A361704.P1142300544721172673` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361704 has offset 0).

The definition of A361704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361704.P1142300544721172673

`∑{#}[floor(n/6), (4*#)!/#!^4*C(6*#, 4*#)*C(n, 6*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361704

/-- `∑{#}[floor(n/6), (4*#)!/#!^4*C(6*#, 4*#)*C(n, 6*#)]` -/
def P1142300544721172673.Spec : Prop :=
  ∀ n, P1142300544721172673.a n = (A361704 n : ℚ)

end A361704

/-! ## A361704.P7742725682486360995

`A053625(n)/A183018(A117791(n))+1`
-/

namespace A361704.P7742725682486360995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053625 n : ℚ) / (A183018 (A117791 n).toNat : ℚ) + 1

end

end A361704.P7742725682486360995

namespace A361704

/-- `A053625(n)/A183018(A117791(n))+1` -/
def P7742725682486360995.Spec : Prop :=
  ∀ n, P7742725682486360995.a n = (A361704 n : ℚ)

end A361704

/-! ## A361704.P13168395813554672709

`A017077(9*5*C(n, 6))`
-/

namespace A361704.P13168395813554672709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (9 * (5 * Nat.choose n 6))

end

end A361704.P13168395813554672709

namespace A361704

/-- `A017077(9*5*C(n, 6))` -/
def P13168395813554672709.Spec : Prop :=
  ∀ n, P13168395813554672709.a n = A361704 n

end A361704

/-! ## A361704.P17754588038600280443

`A017533(A361700(n)-1)`
-/

namespace A361704.P17754588038600280443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A361700 n - 1).toNat

end

end A361704.P17754588038600280443

namespace A361704

/-- `A017533(A361700(n)-1)` -/
def P17754588038600280443.Spec : Prop :=
  ∀ n, P17754588038600280443.a n = A361704 n

end A361704

/-! ## A361704.P6999953348227941487

`A017173(8*A000910(n))`
-/

namespace A361704.P6999953348227941487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (8 * A000910 n).toNat

end

end A361704.P6999953348227941487

namespace A361704

/-- `A017173(8*A000910(n))` -/
def P6999953348227941487.Spec : Prop :=
  ∀ n, P6999953348227941487.a n = A361704 n

end A361704

/-!
# A361705: Constant term in the expansion of (1 + w^4 + x^4 + y^4 + z^4 + 1/(w*x*y*z))^n.

The programs for A361705, the canonical program `A361705.P7987662850074138727` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361705 has offset 0).

The definition of A361705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361705.P7987662850074138727

`∑{#}[floor(n/8), (4*#)!/#!^4*C(8*#, 4*#)*C(n, 8*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361705

/-- `∑{#}[floor(n/8), (4*#)!/#!^4*C(8*#, 4*#)*C(n, 8*#)]` -/
def P7987662850074138727.Spec : Prop :=
  ∀ n, P7987662850074138727.a n = (A361705 n : ℚ)

end A361705

/-! ## A361705.P6261609397639074954

`A103214(5*A088625(n))`
-/

namespace A361705.P6261609397639074954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (5 * A088625 n).toNat

end

end A361705.P6261609397639074954

namespace A361705

/-- `A103214(5*A088625(n))` -/
def P6261609397639074954.Spec : Prop :=
  ∀ n, P6261609397639074954.a n = A361705 n

end A361705

/-! ## A361705.P18378589523824866055

`A302788(A061140(n)+2)`
-/

namespace A361705.P18378589523824866055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302788 (A061140 n + 2).toNat

end

end A361705.P18378589523824866055

namespace A361705

/-- `A302788(A061140(n)+2)` -/
def P18378589523824866055.Spec : Prop :=
  ∀ n, P18378589523824866055.a n = A361705 n

end A361705

/-! ## A361705.P15686304829287366154

`A356151(A061140(n)+3)`
-/

namespace A361705.P15686304829287366154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356151 (A061140 n + 3).toNat

end

end A361705.P15686304829287366154

namespace A361705

/-- `A356151(A061140(n)+3)` -/
def P15686304829287366154.Spec : Prop :=
  ∀ n, P15686304829287366154.a n = A361705 n

end A361705

/-! ## A361705.P5548987248455501863

`A361637(n)-A001969(A361657(n))`
-/

namespace A361705.P5548987248455501863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361637 n - A001969 (A361657 n).toNat

end

end A361705.P5548987248455501863

namespace A361705

/-- `A361637(n)-A001969(A361657(n))` -/
def P5548987248455501863.Spec : Prop :=
  ∀ n, P5548987248455501863.a n = A361705 n

end A361705

/-!
# A361706: Inverse Moebius transform applied twice to primes.

The programs for A361706, the canonical program `A361706.P7914681069526304893` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361706 has offset 1).

The definition of A361706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361706.P7914681069526304893

`∑{d}[n+1, A000005((n+1)/#)*A000040(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A361706

/-- `∑{d}[n+1, A000005((n+1)/#)*A000040(#)]` -/
def P7914681069526304893.Spec : Prop :=
  ∀ n, P7914681069526304893.a n = A361706 (n + 1)

theorem P7914681069526304893.correct : P7914681069526304893.Spec := by
  intro n
  simp only [A361706, Nat.add_sub_cancel]

end A361706

/-! ## A361706.P5557153493187756588

`∑{d}[n+1, A007445(#)]`
-/

namespace A361706.P5557153493187756588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007445 d

end

end A361706.P5557153493187756588

namespace A361706

/-- `∑{d}[n+1, A007445(#)]` -/
def P5557153493187756588.Spec : Prop :=
  ∀ n, P5557153493187756588.a n = A361706 (n + 1)

end A361706

/-! ## A361706.P8772115741146651192

`∑{d}[n+1, A007425(#)*A007444((n+1)/#)]`
-/

namespace A361706.P8772115741146651192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A007444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361706.P8772115741146651192

namespace A361706

/-- `∑{d}[n+1, A007425(#)*A007444((n+1)/#)]` -/
def P8772115741146651192.Spec : Prop :=
  ∀ n, P8772115741146651192.a n = A361706 (n + 1)

end A361706

/-! ## A361706.P5456538344920017241

`∑{d}[n+1, A000203(#)*A130030((n+1)/#)]`
-/

namespace A361706.P5456538344920017241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A130030 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361706.P5456538344920017241

namespace A361706

/-- `∑{d}[n+1, A000203(#)*A130030((n+1)/#)]` -/
def P5456538344920017241.Spec : Prop :=
  ∀ n, P5456538344920017241.a n = A361706 (n + 1)

end A361706

/-!
# A361707: Moebius transform applied twice to primes.

The programs for A361707, the canonical program `A361707.P17100749265866235102` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361707 has offset 1).

The definition of A361707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361707.P17100749265866235102

`∑{d}[n+1, A007427((n+1)/#)*A000040(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A361707

/-- `∑{d}[n+1, A007427((n+1)/#)*A000040(#)]` -/
def P17100749265866235102.Spec : Prop :=
  ∀ n, P17100749265866235102.a n = A361707 (n + 1)

theorem P17100749265866235102.correct : P17100749265866235102.Spec := by
  intro n
  simp only [A361707, Nat.add_sub_cancel]

end A361707

/-! ## A361707.P9767409311621019285

`∑{d}[n+1, A007428(#)*A007445((n+1)/#)]`
-/

namespace A361707.P9767409311621019285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A007445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361707.P9767409311621019285

namespace A361707

/-- `∑{d}[n+1, A007428(#)*A007445((n+1)/#)]` -/
def P9767409311621019285.Spec : Prop :=
  ∀ n, P9767409311621019285.a n = A361707 (n + 1)

end A361707

/-! ## A361707.P848083382964056947

`∑{d}[n+1, A007444(#)*A008683((n+1)/#)]`
-/

namespace A361707.P848083382964056947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007444 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361707.P848083382964056947

namespace A361707

/-- `∑{d}[n+1, A007444(#)*A008683((n+1)/#)]` -/
def P848083382964056947.Spec : Prop :=
  ∀ n, P848083382964056947.a n = A361707 (n + 1)

end A361707

/-! ## A361707.P2329899709918632664

`∑{d}[n+1, A007432(#)*A130030((n+1)/#)]`
-/

namespace A361707.P2329899709918632664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A130030 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361707.P2329899709918632664

namespace A361707

/-- `∑{d}[n+1, A007432(#)*A130030((n+1)/#)]` -/
def P2329899709918632664.Spec : Prop :=
  ∀ n, P2329899709918632664.a n = A361707 (n + 1)

end A361707

/-! ## A361707.P14941630419960277474

`∑{d}[n+1, A046692(#)*A130029((n+1)/#)]`
-/

namespace A361707.P14941630419960277474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A130029 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361707.P14941630419960277474

namespace A361707

/-- `∑{d}[n+1, A046692(#)*A130029((n+1)/#)]` -/
def P14941630419960277474.Spec : Prop :=
  ∀ n, P14941630419960277474.a n = A361707 (n + 1)

end A361707

/-! ## A361707.P11989928938906969060

`∑{d}[n+1, A247343(#)*A361706((n+1)/#)]`
-/

namespace A361707.P11989928938906969060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247343 d * A361706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361707.P11989928938906969060

namespace A361707

/-- `∑{d}[n+1, A247343(#)*A361706((n+1)/#)]` -/
def P11989928938906969060.Spec : Prop :=
  ∀ n, P11989928938906969060.a n = A361707 (n + 1)

end A361707

/-!
# A361708: Inverse Moebius transform of nonprimes.

The programs for A361708, the canonical program `A361708.P9997575083813706434` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361708 has offset 1).

The definition of A361708 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361708.P9997575083813706434

`∑{d}[n+1, A018252(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A361708

/-- `∑{d}[n+1, A018252(#)]` -/
def P9997575083813706434.Spec : Prop :=
  ∀ n, P9997575083813706434.a n = A361708 (n + 1)

theorem P9997575083813706434.correct : P9997575083813706434.Spec := by
  intro n
  simp only [A361708, Nat.add_sub_cancel]

end A361708

/-! ## A361708.P135085861873910315

`∑{d}[n+1, A141468(#+1)]`
-/

namespace A361708.P135085861873910315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A141468 (d + 1)

end

end A361708.P135085861873910315

namespace A361708

/-- `∑{d}[n+1, A141468(#+1)]` -/
def P135085861873910315.Spec : Prop :=
  ∀ n, P135085861873910315.a n = A361708 (n + 1)

end A361708

/-! ## A361708.P6990066104090436615

`∑{d}[n+1, A000005(#)*A361709((n+1)/#)]`
-/

namespace A361708.P6990066104090436615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A361709 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361708.P6990066104090436615

namespace A361708

/-- `∑{d}[n+1, A000005(#)*A361709((n+1)/#)]` -/
def P6990066104090436615.Spec : Prop :=
  ∀ n, P6990066104090436615.a n = A361708 (n + 1)

end A361708

/-!
# A361709: Moebius transform of nonprimes.

The programs for A361709, the canonical program `A361709.P16638819795417408261` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361709 has offset 1).

The definition of A361709 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361709.P16638819795417408261

`∑{d}[n+1, A008683((n+1)/#)*A018252(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A361709

/-- `∑{d}[n+1, A008683((n+1)/#)*A018252(#)]` -/
def P16638819795417408261.Spec : Prop :=
  ∀ n, P16638819795417408261.a n = A361709 (n + 1)

theorem P16638819795417408261.correct : P16638819795417408261.Spec := by
  intro n
  simp only [A361709, Nat.add_sub_cancel]

end A361709

/-! ## A361709.P5681278177641899572

`∑{d}[n+1, A007427(#)*A361708((n+1)/#)]`
-/

namespace A361709.P5681278177641899572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A361708 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361709.P5681278177641899572

namespace A361709

/-- `∑{d}[n+1, A007427(#)*A361708((n+1)/#)]` -/
def P5681278177641899572.Spec : Prop :=
  ∀ n, P5681278177641899572.a n = A361709 (n + 1)

end A361709

/-!
# A361710: a(n) = Sum_{k = 0..n-1} (-1)^k*binomial(n,k)*binomial(n-1,k)^2.

The programs for A361710, the canonical program `A361710.P225539652463955476` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361710 has offset 0).

The definition of A361710 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, (-1)^#*C(n, #)*C(n-1, #)²]` (program `A361710.P225539652463955476`, by `A361710.P225539652463955476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361710.P225539652463955476

`∑{#}[n-1, (-1)^#*C(n, #)*C(n-1, #)²]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361710

/-- `∑{#}[n-1, (-1)^#*C(n, #)*C(n-1, #)²]` -/
def P225539652463955476.Spec : Prop :=
  ∀ n, P225539652463955476.a n = A361710 n

theorem P225539652463955476.correct : P225539652463955476.Spec := by
  intro n
  simp only [A361710]

end A361710

/-! ## A361710.P13572215641378854178

`∑{#}[n-1, (-1)^#*C(n, #)*C(n+#-1, #)*C(2*n-#-1, n)]`
-/

namespace A361710.P13572215641378854178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose n k : ℤ) * (Nat.choose ((n + k : ℤ) - 1).toNat k : ℤ) * (Nat.choose ((2 * n : ℤ) - (k : ℤ) - 1).toNat n : ℤ)

end

end A361710.P13572215641378854178

namespace A361710

/-- `∑{#}[n-1, (-1)^#*C(n, #)*C(n+#-1, #)*C(2*n-#-1, n)]` -/
def P13572215641378854178.Spec : Prop :=
  ∀ n, P13572215641378854178.a n = A361710 n

end A361710

/-! ## A361710.P11434912766751713883

`A361716(n)/A176040(n)`
-/

namespace A361710.P11434912766751713883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361716 n : ℚ) / (A176040 n : ℚ)

end

end A361710.P11434912766751713883

namespace A361710

/-- `A361716(n)/A176040(n)` -/
def P11434912766751713883.Spec : Prop :=
  ∀ n, P11434912766751713883.a n = (A361710 n : ℚ)

end A361710

/-! ## A361710.P5206879640729841018

`A361716(n)/A153284(n+1)`
-/

namespace A361710.P5206879640729841018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361716 n : ℚ) / (A153284 (n + 1) : ℚ)

end

end A361710.P5206879640729841018

namespace A361710

/-- `A361716(n)/A153284(n+1)` -/
def P5206879640729841018.Spec : Prop :=
  ∀ n, P5206879640729841018.a n = (A361710 n : ℚ)

end A361710

/-! ## A361710.P11159418739076286656

`A361716(n)/(A004442(n+2)-n)`
-/

namespace A361710.P11159418739076286656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361716 n : ℚ) / (A004442 (n + 2) - (n : ℤ) : ℚ)

end

end A361710.P11159418739076286656

namespace A361710

/-- `A361716(n)/(A004442(n+2)-n)` -/
def P11159418739076286656.Spec : Prop :=
  ∀ n, P11159418739076286656.a n = (A361710 n : ℚ)

end A361710

/-!
# A361711: a(1) = 1 and a(n) = Sum_{k = 0..n-2} (-1)^k * binomial(n,k)^2 * binomial(n-2,k) for n >= 2.

The programs for A361711, there is no canonical definition to state claims against.
-/

/-! ## A361711.P7402824363912520974

`A368724(A225250(n+2))`
-/

namespace A361711.P7402824363912520974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368724 (A225250 (n + 2)).toNat

end

end A361711.P7402824363912520974

/-!
# A361712: a(n) = Sum_{k = 0..n-1} binomial(n,k)^2*binomial(n+k,k)*binomial(n+k-1,k).

The programs for A361712, the canonical program `A361712.P17332472918624384194` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361712 has offset 0).

The definition of A361712 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, C(n, #)²*C(n+#, #)*C(n+#-1, #)]` (program `A361712.P17332472918624384194`, by `A361712.P17332472918624384194.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361712.P17332472918624384194

`∑{#}[n-1, C(n, #)²*C(n+#, #)*C(n+#-1, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361712

/-- `∑{#}[n-1, C(n, #)²*C(n+#, #)*C(n+#-1, #)]` -/
def P17332472918624384194.Spec : Prop :=
  ∀ n, (P17332472918624384194.a n : ℤ) = A361712 n

theorem P17332472918624384194.correct : P17332472918624384194.Spec := by
  intro n
  simp only [A361712]

end A361712

/-! ## A361712.P16297273392762944911

`A361878(n)-A361877(n)`
-/

namespace A361712.P16297273392762944911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361878 n - A361877 n

end

end A361712.P16297273392762944911

namespace A361712

/-- `A361878(n)-A361877(n)` -/
def P16297273392762944911.Spec : Prop :=
  ∀ n, P16297273392762944911.a n = A361712 n

end A361712

/-!
# A361713: a(n) = Sum_{k = 0..n-1} binomial(n,k)^2 * binomial(n+k-1,k)^2.

The programs for A361713, the canonical program `A361713.P6614040251314909477` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361713 has offset 0).

The definition of A361713 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, C(n, #)²*C(n+#-1, #)²]` (program `A361713.P6614040251314909477`, by `A361713.P6614040251314909477.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361713.P6614040251314909477

`∑{#}[n-1, C(n, #)²*C(n+#-1, #)²]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361713

/-- `∑{#}[n-1, C(n, #)²*C(n+#-1, #)²]` -/
def P6614040251314909477.Spec : Prop :=
  ∀ n, (P6614040251314909477.a n : ℤ) = A361713 n

theorem P6614040251314909477.correct : P6614040251314909477.Spec := by
  intro n
  simp only [A361713]

end A361713

/-! ## A361713.P13137592356597127565

`A177316(n)-A060150(n)`
-/

namespace A361713.P13137592356597127565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177316 n - A060150 n

end

end A361713.P13137592356597127565

namespace A361713

/-- `A177316(n)-A060150(n)` -/
def P13137592356597127565.Spec : Prop :=
  ∀ n, P13137592356597127565.a n = A361713 n

end A361713

/-! ## A361713.P7050204550964204869

`A331562(eq[4, A002262(n)])-A060150(n)`
-/

namespace A361713.P7050204550964204869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A060150 n

end

end A361713.P7050204550964204869

namespace A361713

/-- `A331562(eq[4, A002262(n)])-A060150(n)` -/
def P7050204550964204869.Spec : Prop :=
  ∀ n, P7050204550964204869.a n = A361713 n

end A361713

/-! ## A361713.P6492862263866227661

`A331562(A133263(n+4)+2)-A060150(n)`
-/

namespace A361713.P6492862263866227661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A133263 (n + 4) + 2).toNat - A060150 n

end

end A361713.P6492862263866227661

namespace A361713

/-- `A331562(A133263(n+4)+2)-A060150(n)` -/
def P6492862263866227661.Spec : Prop :=
  ∀ n, P6492862263866227661.a n = A361713 n

end A361713

/-! ## A361713.P15963526649626433575

`A331562(A000124(n+4)+3)-A060150(n)`
-/

namespace A361713.P15963526649626433575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A000124 (n + 4) + 3).toNat - A060150 n

end

end A361713.P15963526649626433575

namespace A361713

/-- `A331562(A000124(n+4)+3)-A060150(n)` -/
def P15963526649626433575.Spec : Prop :=
  ∀ n, P15963526649626433575.a n = A361713 n

end A361713

/-!
# A361714: a(n) = Sum_{k = 0..n-1} (-1)^(n+k+1)*binomial(n,k)*binomial(n+k-1,k)^2.

The programs for A361714, the canonical program `A361714.P16544920905813079767` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361714 has offset 0).

The definition of A361714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, (-1)^(n+#+1)*C(n, #)*C(n+#-1, #)²]` (program `A361714.P16544920905813079767`, by `A361714.P16544920905813079767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361714.P16544920905813079767

`∑{#}[n-1, (-1)^(n+#+1)*C(n, #)*C(n+#-1, #)²]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361714

/-- `∑{#}[n-1, (-1)^(n+#+1)*C(n, #)*C(n+#-1, #)²]` -/
def P16544920905813079767.Spec : Prop :=
  ∀ n, P16544920905813079767.a n = A361714 n

theorem P16544920905813079767.correct : P16544920905813079767.Spec := by
  intro n
  simp only [A361714]

end A361714

/-! ## A361714.P8226969889211917005

`A002620(A000984(n))-A352654(n)`
-/

namespace A361714.P8226969889211917005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A000984 n).toNat - A352654 n

end

end A361714.P8226969889211917005

namespace A361714

/-- `A002620(A000984(n))-A352654(n)` -/
def P8226969889211917005.Spec : Prop :=
  ∀ n, P8226969889211917005.a n = A361714 n

end A361714

/-!
# A361715: a(n) = Sum_{k = 0..n-1} binomial(n,k)^2*binomial(n+k-1,k).

The programs for A361715, the canonical program `A361715.P15810438517018548649` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361715 has offset 0).

The definition of A361715 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, C(n, #)²*C(n+#-1, #)]` (program `A361715.P15810438517018548649`, by `A361715.P15810438517018548649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361715.P15810438517018548649

`∑{#}[n-1, C(n, #)²*C(n+#-1, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361715

/-- `∑{#}[n-1, C(n, #)²*C(n+#-1, #)]` -/
def P15810438517018548649.Spec : Prop :=
  ∀ n, (P15810438517018548649.a n : ℤ) = A361715 n

theorem P15810438517018548649.correct : P15810438517018548649.Spec := by
  intro n
  simp only [A361715]

end A361715

/-! ## A361715.P2471794130398929179

`A103882(n)-A088218(n)`
-/

namespace A361715.P2471794130398929179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103882 n - A088218 n

end

end A361715.P2471794130398929179

namespace A361715

/-- `A103882(n)-A088218(n)` -/
def P2471794130398929179.Spec : Prop :=
  ∀ n, P2471794130398929179.a n = A361715 n

end A361715

/-! ## A361715.P5976501961700043695

`A103882(n)-A034871(n²)`
-/

namespace A361715.P5976501961700043695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103882 n - A034871 (n ^ 2)

end

end A361715.P5976501961700043695

namespace A361715

/-- `A103882(n)-A034871(n²)` -/
def P5976501961700043695.Spec : Prop :=
  ∀ n, P5976501961700043695.a n = A361715 n

end A361715

/-! ## A361715.P8258795084311276045

`A331562(A167614(n+1)+n+3)-A088218(n)`
-/

namespace A361715.P8258795084311276045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A167614 (n + 1) + (n + 3 : ℤ)).toNat - A088218 n

end

end A361715.P8258795084311276045

namespace A361715

/-- `A331562(A167614(n+1)+n+3)-A088218(n)` -/
def P8258795084311276045.Spec : Prop :=
  ∀ n, P8258795084311276045.a n = A361715 n

end A361715

/-!
# A361716: a(n) = Sum_{k = 0..n-1} (-1)^k*binomial(n,k)^2*binomial(n-1,k).

The programs for A361716, the canonical program `A361716.P7967439116202108052` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361716 has offset 0).

The definition of A361716 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, (-1)^#*C(n, #)²*C(n-1, #)]` (program `A361716.P7967439116202108052`, by `A361716.P7967439116202108052.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361716.P7967439116202108052

`∑{#}[n-1, (-1)^#*C(n, #)²*C(n-1, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361716

/-- `∑{#}[n-1, (-1)^#*C(n, #)²*C(n-1, #)]` -/
def P7967439116202108052.Spec : Prop :=
  ∀ n, P7967439116202108052.a n = A361716 n

theorem P7967439116202108052.correct : P7967439116202108052.Spec := by
  intro n
  simp only [A361716]

end A361716

/-! ## A361716.P16222722272599629855

`∑{#}[n-1, (-1)^#*C(n, #)*C(n+#, n)*C(2*n-#-1, n)]`
-/

namespace A361716.P16222722272599629855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose n k : ℤ) * (Nat.choose (n + k) n : ℤ) * (Nat.choose ((2 * n : ℤ) - (k : ℤ) - 1).toNat n : ℤ)

end

end A361716.P16222722272599629855

namespace A361716

/-- `∑{#}[n-1, (-1)^#*C(n, #)*C(n+#, n)*C(2*n-#-1, n)]` -/
def P16222722272599629855.Spec : Prop :=
  ∀ n, P16222722272599629855.a n = A361716 n

end A361716

/-! ## A361716.P18231234932896146813

`A176040(n)*A361710(n)`
-/

namespace A361716.P18231234932896146813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n * A361710 n

end

end A361716.P18231234932896146813

namespace A361716

/-- `A176040(n)*A361710(n)` -/
def P18231234932896146813.Spec : Prop :=
  ∀ n, P18231234932896146813.a n = A361716 n

end A361716

/-! ## A361716.P11270938923982539854

`Δ[A014601(n)]*A361710(n)`
-/

namespace A361716.P11270938923982539854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A361710 n

end

end A361716.P11270938923982539854

namespace A361716

/-- `Δ[A014601(n)]*A361710(n)` -/
def P11270938923982539854.Spec : Prop :=
  ∀ n, P11270938923982539854.a n = A361716 n

end A361716

/-! ## A361716.P4577782620350305655

`A153284(n+1)*A361710(n)`
-/

namespace A361716.P4577782620350305655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (n + 1) * A361710 n

end

end A361716.P4577782620350305655

namespace A361716

/-- `A153284(n+1)*A361710(n)` -/
def P4577782620350305655.Spec : Prop :=
  ∀ n, P4577782620350305655.a n = A361716 n

end A361716

/-! ## A361716.P3078200971469632298

`A010883(2*(n+1))*A361710(n)`
-/

namespace A361716.P3078200971469632298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (2 * (n + 1)) * A361710 n

end

end A361716.P3078200971469632298

namespace A361716

/-- `A010883(2*(n+1))*A361710(n)` -/
def P3078200971469632298.Spec : Prop :=
  ∀ n, P3078200971469632298.a n = A361716 n

end A361716

/-! ## A361716.P8202681682234639423

`A000203(A055396(3*(n+1)))*A361710(n)`
-/

namespace A361716.P8202681682234639423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A055396 (3 * (n + 1))).toNat * A361710 n

end

end A361716.P8202681682234639423

namespace A361716

/-- `A000203(A055396(3*(n+1)))*A361710(n)` -/
def P8202681682234639423.Spec : Prop :=
  ∀ n, P8202681682234639423.a n = A361716 n

end A361716

/-!
# A361717: a(n) = Sum_{k = 0..n-1} binomial(n-1,k)^2*binomial(n+k,k).

The programs for A361717, the canonical program `A361717.P3036640549639652883` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361717 has offset 0).

The definition of A361717 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, C(n-1, #)²*C(n+#, #)]` (program `A361717.P3036640549639652883`, by `A361717.P3036640549639652883.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361717.P3036640549639652883

`∑{#}[n-1, C(n-1, #)²*C(n+#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361717

/-- `∑{#}[n-1, C(n-1, #)²*C(n+#, #)]` -/
def P3036640549639652883.Spec : Prop :=
  ∀ n, (P3036640549639652883.a n : ℤ) = A361717 n

theorem P3036640549639652883.correct : P3036640549639652883.Spec := by
  intro n
  simp only [A361717]

end A361717

/-! ## A361717.P18089511992784138594

`lcm(n, A337192(n²))`
-/

namespace A361717.P18089511992784138594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A337192 (n ^ 2))

end

end A361717.P18089511992784138594

namespace A361717

/-- `lcm(n, A337192(n²))` -/
def P18089511992784138594.Spec : Prop :=
  ∀ n, (P18089511992784138594.a n : ℤ) = A361717 n

end A361717

/-! ## A361717.P17307738648128860582

`A337192(n²)%A081902(n)`
-/

namespace A361717.P17307738648128860582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337192 (n ^ 2)) (A081902 n)

end

end A361717.P17307738648128860582

namespace A361717

/-- `A337192(n²)%A081902(n)` -/
def P17307738648128860582.Spec : Prop :=
  ∀ n, P17307738648128860582.a n = A361717 n

end A361717

/-! ## A361717.P14944142724148125698

`lcm(A337192(A000290(n)), A337223(n))`
-/

namespace A361717.P14944142724148125698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A337192 (A000290 n).toNat) (A337223 n)

end

end A361717.P14944142724148125698

namespace A361717

/-- `lcm(A337192(A000290(n)), A337223(n))` -/
def P14944142724148125698.Spec : Prop :=
  ∀ n, (P14944142724148125698.a n : ℤ) = A361717 n

end A361717

/-!
# A361718: Triangular array read by rows. T(n,k) is the number of labeled directed acyclic graphs on [n] with exactly k nodes of indegree 0.

The programs for A361718, there is no canonical definition to state claims against.
-/

/-! ## A361718.P1096253580950926621

`A007318(n)*A368602(n)`
-/

namespace A361718.P1096253580950926621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A368602 n

end

end A361718.P1096253580950926621

/-! ## A361718.P18346915084253573751

`A091918(n)*A368602(n)`
-/

namespace A361718.P18346915084253573751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A368602 n

end

end A361718.P18346915084253573751

/-! ## A361718.P7691780383923434881

`A132749(n)*A368602(n)`
-/

namespace A361718.P7691780383923434881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A368602 n

end

end A361718.P7691780383923434881

/-! ## A361718.P10712851241410803258

`A135227(n)*A368602(n)`
-/

namespace A361718.P10712851241410803258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A368602 n

end

end A361718.P10712851241410803258

/-! ## A361718.P6730252425223452816

`A183154(n)*A368602(n)`
-/

namespace A361718.P6730252425223452816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183154 n * A368602 n

end

end A361718.P6730252425223452816

/-!
# A361719: a(n) = Sum_{k = 1..n} (-1)^(n+k) * k^3 * binomial(n,k)^2.

The programs for A361719, the canonical program `A361719.P6616242398425236407` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361719 has offset 0).

The definition of A361719 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, (-1)^(n+#+1)*(#+1)^3*C(n, #+1)²]` (program `A361719.P6616242398425236407`, by `A361719.P6616242398425236407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361719.P18318126294792668189

`(-1)^((n-1)*(n+2)/2)*n*floor((n+1)/2)²*A001405(n)`
-/

namespace A361719.P18318126294792668189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-1 : ℝ) ^ ((((n : ℤ) - 1) * (n + 2 : ℤ) : ℚ) / 2 : ℝ) * (n : ℝ) * (⌊(n + 1 : ℚ) / 2⌋ ^ 2 : ℝ) * (A001405 n : ℝ)

end

end A361719.P18318126294792668189

namespace A361719

/-- `(-1)^((n-1)*(n+2)/2)*n*floor((n+1)/2)²*A001405(n)` -/
def P18318126294792668189.Spec : Prop :=
  ∀ n, P18318126294792668189.a n = (A361719 n : ℝ)

end A361719

/-! ## A361719.P8433022031928304562

`(-1)^((n-1)*(n+2)/2)*n*floor((n+1)/2)²*C(n, floor(n/2))`
-/

namespace A361719.P8433022031928304562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-1 : ℝ) ^ ((((n : ℤ) - 1) * (n + 2 : ℤ) : ℚ) / 2 : ℝ) * (n : ℝ) * (⌊(n + 1 : ℚ) / 2⌋ ^ 2 : ℝ) * (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℝ)

end

end A361719.P8433022031928304562

namespace A361719

/-- `(-1)^((n-1)*(n+2)/2)*n*floor((n+1)/2)²*C(n, floor(n/2))` -/
def P8433022031928304562.Spec : Prop :=
  ∀ n, P8433022031928304562.a n = (A361719 n : ℝ)

end A361719

/-! ## A361719.P6616242398425236407

`∑{#}[n-1, (-1)^(n+#+1)*(#+1)^3*C(n, #+1)²]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361719

/-- `∑{#}[n-1, (-1)^(n+#+1)*(#+1)^3*C(n, #+1)²]` -/
def P6616242398425236407.Spec : Prop :=
  ∀ n, P6616242398425236407.a n = A361719 n

theorem P6616242398425236407.correct : P6616242398425236407.Spec := by
  intro n
  simp only [A361719]

end A361719

/-! ## A361719.P1621893453900705206

`n²*A103283(A007590(n))`
-/

namespace A361719.P1621893453900705206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A103283 (A007590 n).toNat

end

end A361719.P1621893453900705206

namespace A361719

/-- `n²*A103283(A007590(n))` -/
def P1621893453900705206.Spec : Prop :=
  ∀ n, P1621893453900705206.a n = A361719 n

end A361719

/-!
# A361720: Number of nonisomorphic right involutory Płonka magmas with n elements.

The programs for A361720, there is no canonical definition to state claims against.
-/

/-! ## A361720.P14709177520042040189

`A342498(A191531(n))`
-/

namespace A361720.P14709177520042040189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342498 (A191531 n).toNat

end

end A361720.P14709177520042040189

/-! ## A361720.P16611932355351104649

`A267301(A259803(n+1))`
-/

namespace A361720.P16611932355351104649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267301 (A259803 (n + 1)).toNat

end

end A361720.P16611932355351104649

/-! ## A361720.P4694276587033654629

`A342498(A002843(n+1)-A342516(n))`
-/

namespace A361720.P4694276587033654629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342498 (A002843 (n + 1) - A342516 n).toNat

end

end A361720.P4694276587033654629

/-!
# A361721: a(n) = number of isogeny classes of p-divisible groups of abelian varieties of dimension n over an algebraically closed field of characteristic p (for any fixed prime p).

The programs for A361721, there is no canonical definition to state claims against.
-/

/-! ## A361721.P9157078869933080969

`∑[A056556(A128720(n))]`
-/

namespace A361721.P9157078869933080969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A128720 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361721.P9157078869933080969

/-! ## A361721.P8533212062281479138

`∑[A056556(A212421(n))]`
-/

namespace A361721.P8533212062281479138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A212421 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361721.P8533212062281479138

/-! ## A361721.P16506471257989651888

`A333148(n)%A333134(n+1)+1`
-/

namespace A361721.P16506471257989651888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333148 n) (A333134 (n + 1)) + 1

end

end A361721.P16506471257989651888

/-! ## A361721.P14493119458857863623

`A002024(A005183(n)+A000332(n))`
-/

namespace A361721.P14493119458857863623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A005183 n + A000332 n).toNat

end

end A361721.P14493119458857863623

/-! ## A361721.P166495956317026297

`A003056(A307067(n+3)+A001787(n))`
-/

namespace A361721.P166495956317026297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A307067 (n + 3) + A001787 n).toNat

end

end A361721.P166495956317026297

/-!
# A361725: a(n) is the largest of two middle prime factors of n if the number of prime divisors counted with multiplicity (A001222(n)) is even, otherwise is the middle prime factor of n.

The programs for A361725, there is no canonical definition to state claims against.
-/

/-! ## A361725.P4914384033237834549

`2*A361632(n+2)/A361633(n+2)-A079879(n+2)`
-/

namespace A361725.P4914384033237834549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A361632 (n + 2) : ℚ) / (A361633 (n + 2) : ℚ) - (A079879 (n + 2) : ℚ)

end

end A361725.P4914384033237834549

/-! ## A361725.P2871485820580071632

`A079879(A117818(n+2))`
-/

namespace A361725.P2871485820580071632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (A117818 (n + 2)).toNat

end

end A361725.P2871485820580071632

/-! ## A361725.P9406572483232126418

`A020639(A347044(n+2))`
-/

namespace A361725.P9406572483232126418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A347044 (n + 2)).toNat

end

end A361725.P9406572483232126418

/-! ## A361725.P248443214242016378

`A020639((n+2)/A361200(n+2))`
-/

namespace A361725.P248443214242016378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A361200 (n + 2) : ℚ))).toNat

end

end A361725.P248443214242016378

/-! ## A361725.P4150533109026948818

`A020639(A361201(2*(n+2)))`
-/

namespace A361725.P4150533109026948818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A361201 (2 * (n + 2))).toNat

end

end A361725.P4150533109026948818

/-! ## A361725.P16733745931171282121

`A079879(A070935(n+2))`
-/

namespace A361725.P16733745931171282121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (A070935 (n + 2)).toNat

end

end A361725.P16733745931171282121

/-! ## A361725.P15589421344780160243

`A079879((n+2)*A032742(n+2))`
-/

namespace A361725.P15589421344780160243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 ((n + 2 : ℤ) * A032742 (n + 2)).toNat

end

end A361725.P15589421344780160243

/-! ## A361725.P12997027565330575034

`A079879((n+2)*A079880(n+2))`
-/

namespace A361725.P12997027565330575034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 ((n + 2 : ℤ) * A079880 (n + 2)).toNat

end

end A361725.P12997027565330575034

/-! ## A361725.P11727130539501517072

`A079879(A119416(n+2))`
-/

namespace A361725.P11727130539501517072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (A119416 (n + 2)).toNat

end

end A361725.P11727130539501517072

/-! ## A361725.P4532393072120183114

`A079879(A129598(n+2))`
-/

namespace A361725.P4532393072120183114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (A129598 (n + 2)).toNat

end

end A361725.P4532393072120183114

/-!
# A361726: Diagonal of rational function 1/(1 - (1 + x*y) * (x^2 + y^2)).

The programs for A361726, the canonical program `A361726.P7357493661536954939` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361726 has offset 0).

The definition of A361726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361726.P7357493661536954939

`∑{#}[floor(n/2), C(2*#, #)*C(2*#, n-2*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361726

/-- `∑{#}[floor(n/2), C(2*#, #)*C(2*#, n-2*#)]` -/
def P7357493661536954939.Spec : Prop :=
  ∀ n, (P7357493661536954939.a n : ℤ) = A361726 n

theorem P7357493661536954939.correct : P7357493661536954939.Spec := by
  intro n
  simp only [A361726]

end A361726

/-! ## A361726.P11429554563416435947

`A102881(n)-a(n-1)` with `a(0)=1`
-/

namespace A361726.P11429554563416435947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102881 n - a (n - 1)

end

end A361726.P11429554563416435947

namespace A361726

/-- `A102881(n)-a(n-1)` -/
def P11429554563416435947.Spec : Prop :=
  ∀ n, P11429554563416435947.a n = A361726 n

end A361726

/-! ## A361726.P13650761987572266647

`A199530(A000217(n))-a(n-1)` with `a(0)=1`
-/

namespace A361726.P13650761987572266647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A199530 (A000217 n).toNat - a (n - 1)

end

end A361726.P13650761987572266647

namespace A361726

/-- `A199530(A000217(n))-a(n-1)` -/
def P13650761987572266647.Spec : Prop :=
  ∀ n, P13650761987572266647.a n = A361726 n

end A361726

/-! ## A361726.P7417870521489162036

`Δ[A131883(A008346(2*n))]`
-/

namespace A361726.P7417870521489162036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A008346 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A361726.P7417870521489162036

namespace A361726

/-- `Δ[A131883(A008346(2*n))]` -/
def P7417870521489162036.Spec : Prop :=
  ∀ n, P7417870521489162036.a n = A361726 n

end A361726

/-!
# A361727: Diagonal of rational function 1/(1 - (1 + x*y) * (x^3 + y^3)).

The programs for A361727, the canonical program `A361727.P752128357045814871` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361727 has offset 0).

The definition of A361727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361727.P752128357045814871

`∑{#}[floor(n/3), C(2*#, #)*C(2*#, n-3*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361727

/-- `∑{#}[floor(n/3), C(2*#, #)*C(2*#, n-3*#)]` -/
def P752128357045814871.Spec : Prop :=
  ∀ n, (P752128357045814871.a n : ℤ) = A361727 n

theorem P752128357045814871.correct : P752128357045814871.Spec := by
  intro n
  simp only [A361727]

end A361727

/-! ## A361727.P7413095910105948786

`A007953(A325617(n))*A029245(n)`
-/

namespace A361727.P7413095910105948786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A325617 n).toNat * A029245 n

end

end A361727.P7413095910105948786

namespace A361727

/-- `A007953(A325617(n))*A029245(n)` -/
def P7413095910105948786.Spec : Prop :=
  ∀ n, P7413095910105948786.a n = A361727 n

end A361727

/-! ## A361727.P1293608379674545122

`A020639(A081294(n))*A366591(n)`
-/

namespace A361727.P1293608379674545122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A081294 n).toNat * A366591 n

end

end A361727.P1293608379674545122

namespace A361727

/-- `A020639(A081294(n))*A366591(n)` -/
def P1293608379674545122.Spec : Prop :=
  ∀ n, P1293608379674545122.a n = A361727 n

end A361727

/-! ## A361727.P10991581586012431452

`A020639(A123620(n))*A366591(n)`
-/

namespace A361727.P10991581586012431452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A123620 n).toNat * A366591 n

end

end A361727.P10991581586012431452

namespace A361727

/-- `A020639(A123620(n))*A366591(n)` -/
def P10991581586012431452.Spec : Prop :=
  ∀ n, P10991581586012431452.a n = A361727 n

end A361727

/-! ## A361727.P6095695684919396293

`A020639(A180142(n))*A366591(n)`
-/

namespace A361727.P6095695684919396293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A180142 n).toNat * A366591 n

end

end A361727.P6095695684919396293

namespace A361727

/-- `A020639(A180142(n))*A366591(n)` -/
def P6095695684919396293.Spec : Prop :=
  ∀ n, P6095695684919396293.a n = A361727 n

end A361727

/-!
# A361728: Diagonal of rational function 1/(1 - (1 + x*y*z) * (x + y + z)).

The programs for A361728, the canonical program `A361728.P14507150999408614430` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361728 has offset 0).

The definition of A361728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361728.P14507150999408614430

`∑{#}[n, (3*#)!/#!^3*C(3*#, n-#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361728

/-- `∑{#}[n, (3*#)!/#!^3*C(3*#, n-#)]` -/
def P14507150999408614430.Spec : Prop :=
  ∀ n, P14507150999408614430.a n = (A361728 n : ℚ)

end A361728

/-!
# A361729: Diagonal of rational function 1/(1 - (1 + x*y*z) * (x^2 + y^2 + z^2)).

The programs for A361729, the canonical program `A361729.P5714784781315018620` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361729 has offset 0).

The definition of A361729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361729.P5714784781315018620

`∑{#}[floor(n/2), (3*#)!/#!^3*C(3*#, n-2*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361729

/-- `∑{#}[floor(n/2), (3*#)!/#!^3*C(3*#, n-2*#)]` -/
def P5714784781315018620.Spec : Prop :=
  ∀ n, P5714784781315018620.a n = (A361729 n : ℚ)

end A361729

/-!
# A361730: Diagonal of rational function 1/(1 - (1 + x*y*z) * (x^3 + y^3 + z^3)).

The programs for A361730, the canonical program `A361730.P2499299858394622997` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361730 has offset 0).

The definition of A361730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361730.P2499299858394622997

`∑{#}[floor(n/3), (3*#)!/#!^3*C(3*#, n-3*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361730

/-- `∑{#}[floor(n/3), (3*#)!/#!^3*C(3*#, n-3*#)]` -/
def P2499299858394622997.Spec : Prop :=
  ∀ n, P2499299858394622997.a n = (A361730 n : ℚ)

end A361730

/-!
# A361732: a(n) = [x^n] (x^5 + 5*x^4 + 4*x^3 - 3*x + 1)/(x^2 + 2*x - 1)^2.

The programs for A361732, the canonical program `A361732.P6038445032929173089` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361732 has offset 0).

The definition of A361732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361732.P6038445032929173089

`(n*(n-1)*a(n-2)+2*n*(n-2)*a(n-1))/((n-2)*(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361732

/-- `(n*(n-1)*a(n-2)+2*n*(n-2)*a(n-1))/((n-2)*(n-1))` -/
def P6038445032929173089.Spec : Prop :=
  ∀ n, P6038445032929173089.a n = (A361732 n : ℚ)

end A361732

/-! ## A361732.P5742484600775792502

`A176981(n)+record[A093969(n)]`
-/

namespace A361732.P5742484600775792502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361732.P5742484600775792502

namespace A361732

/-- `A176981(n)+record[A093969(n)]` -/
def P5742484600775792502.Spec : Prop :=
  ∀ n, P5742484600775792502.a n = A361732 n

end A361732

/-! ## A361732.P3950792317004663438

`A176981(n)+record[n*(A002203(n+1)-A221173(n+1))]`
-/

namespace A361732.P3950792317004663438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002203 (n + 1) - A221173 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361732.P3950792317004663438

namespace A361732

/-- `A176981(n)+record[n*(A002203(n+1)-A221173(n+1))]` -/
def P3950792317004663438.Spec : Prop :=
  ∀ n, P3950792317004663438.a n = A361732 n

end A361732

/-! ## A361732.P7711598174724470487

`abs(Δ[A361758(abs(1-n))])`
-/

namespace A361732.P7711598174724470487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361758 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A361732.P7711598174724470487

namespace A361732

/-- `abs(Δ[A361758(abs(1-n))])` -/
def P7711598174724470487.Spec : Prop :=
  ∀ n, P7711598174724470487.a n = A361732 n

end A361732

/-! ## A361732.P17633054237601025629

`A367211(∑[abs(char[2]-1+n)])`
-/

namespace A361732.P17633054237601025629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 1 + (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367211 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361732.P17633054237601025629

namespace A361732

/-- `A367211(∑[abs(char[2]-1+n)])` -/
def P17633054237601025629.Spec : Prop :=
  ∀ n, P17633054237601025629.a n = A361732 n

end A361732

/-!
# A361733: Length of the Collatz (3x + 1) trajectory from k = 10^n - 1 to a term less than k, or -1 if the trajectory never goes below k.

The programs for A361733, there is no canonical definition to state claims against.
-/

/-! ## A361733.P5383179048872363756

`A000010(A014227(n+3))+char[2^n]`
-/

namespace A361733.P5383179048872363756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014227 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A361733.P5383179048872363756

/-!
# A361734: Semi-Padovan sequence: a(2*n) = a(n) and a(2*n+1) = a(2*n-1) + a(2*n-2), with a(0) = 1 and a(1) = 0.

The programs for A361734, there is no canonical definition to state claims against.
-/

/-! ## A361734.P4820255546914909589

`A249576(A365393(n)%A301750(2*(n+2)))`
-/

namespace A361734.P4820255546914909589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (Int.tmod (A365393 n) (A301750 (2 * (n + 2)))).toNat

end

end A361734.P4820255546914909589

/-! ## A361734.P13629694124749978343

`A087897(gcd(n, ∑[n])%A062572(n+1))`
-/

namespace A361734.P13629694124749978343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (Int.tmod (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) (A062572 (n + 1))).toNat

end

end A361734.P13629694124749978343

/-! ## A361734.P7139321564888843167

`A087897(lcm(16, n)/16*A292375(2^n))`
-/

namespace A361734.P7139321564888843167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16 * (A292375 (2 ^ n) : ℚ))).toNat

end

end A361734.P7139321564888843167

/-! ## A361734.P3352840130656292982

`A062756(A000931(n)^A000120(n))`
-/

namespace A361734.P3352840130656292982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.roundAway ((A000931 n : ℚ) ^ (A000120 n : ℤ))).toNat

end

end A361734.P3352840130656292982

/-! ## A361734.P11895942831641243527

`A065363(A000931(n)^A000120(n))`
-/

namespace A361734.P11895942831641243527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (SequenceMachineLib.roundAway ((A000931 n : ℚ) ^ (A000120 n : ℤ))).toNat

end

end A361734.P11895942831641243527

/-!
# A361735: Modified semi-Padovan sequence: a(2*n) = a(n) and a(2*n+1) = a(2*n-1) + a(2*n-2), with a(0) = 0 and a(1) = 1.

The programs for A361735, there is no canonical definition to state claims against.
-/

/-! ## A361735.P4474167023964422892

`A053251((lcm(16, n)/16)%A137625(n+1))`
-/

namespace A361735.P4474167023964422892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053251 (Int.tmod (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16)) (A137625 (n + 1))).toNat

end

end A361735.P4474167023964422892

/-! ## A361735.P2040458338201660003

`A053251(A106609(n)%A365508(n+1))`
-/

namespace A361735.P2040458338201660003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053251 (Int.tmod (A106609 n) (A365508 (n + 1))).toNat

end

end A361735.P2040458338201660003

/-! ## A361735.P6438301852070164632

`A303838(A164292(n+1)+A018433(n+1))`
-/

namespace A361735.P6438301852070164632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (A164292 (n + 1) + A018433 (n + 1)).toNat

end

end A361735.P6438301852070164632

/-! ## A361735.P2962185501281009792

`A264620(A179865(n+1)-(A278539(n+1)-(n%2)^n))`
-/

namespace A361735.P2962185501281009792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264620 (A179865 (n + 1) - (A278539 (n + 1) - (((n % 2) ^ n : ℕ) : ℤ))).toNat

end

end A361735.P2962185501281009792

/-! ## A361735.P17312479254306501552

`A264620(A179865(n+1)-(A278529(n+1)+(A028310(n)+1)%2))`
-/

namespace A361735.P17312479254306501552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264620 (A179865 (n + 1) - (A278529 (n + 1) + Int.tmod (A028310 n + 1) 2)).toNat

end

end A361735.P17312479254306501552

/-!
# A361737: Diagonal of rational function 1/(1 - (x + y + z + x^2*y*z)).

The programs for A361737, the canonical program `A361737.P15128243051370378525` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361737 has offset 0).

The definition of A361737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361737.P15128243051370378525

`∑{#}[n, (3*#)!/#!^3*C(#, n-#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361737

/-- `∑{#}[n, (3*#)!/#!^3*C(#, n-#)]` -/
def P15128243051370378525.Spec : Prop :=
  ∀ n, P15128243051370378525.a n = (A361737 n : ℚ)

end A361737

/-!
# A361738: Diagonal of rational function 1/(1 - (x^2 + y^2 + z^2 + x^3*y*z)).

The programs for A361738, the canonical program `A361738.P3815909349162888797` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361738 has offset 0).

The definition of A361738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361738.P3815909349162888797

`∑{#}[floor(n/2), (3*#)!/#!^3*C(#, n-2*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361738

/-- `∑{#}[floor(n/2), (3*#)!/#!^3*C(#, n-2*#)]` -/
def P3815909349162888797.Spec : Prop :=
  ∀ n, P3815909349162888797.a n = (A361738 n : ℚ)

end A361738

/-! ## A361738.P14151056988444023441

`A182886(A261145(n+2))`
-/

namespace A361738.P14151056988444023441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182886 (A261145 (n + 2)).toNat

end

end A361738.P14151056988444023441

namespace A361738

/-- `A182886(A261145(n+2))` -/
def P14151056988444023441.Spec : Prop :=
  ∀ n, P14151056988444023441.a n = A361738 n

end A361738

/-!
# A361739: Diagonal of rational function 1/(1 - (x^3 + y^3 + z^3 + x^4*y*z)).

The programs for A361739, the canonical program `A361739.P17770670076620834168` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361739 has offset 0).

The definition of A361739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361739.P17770670076620834168

`∑{#}[floor(n/3), (3*#)!/#!^3*C(#, n-3*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361739

/-- `∑{#}[floor(n/3), (3*#)!/#!^3*C(#, n-3*#)]` -/
def P17770670076620834168.Spec : Prop :=
  ∀ n, P17770670076620834168.a n = (A361739 n : ℚ)

end A361739

/-!
# A361741: Starting positions of digit triples in the decimal expansion of Pi where the sum of the first 2 equals the third.

The programs for A361741, there is no canonical definition to state claims against.
-/

/-! ## A361741.P15143000945284204742

`eq[A076790(2*n+3), A110883(A028310(n))]`
-/

namespace A361741.P15143000945284204742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110883 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361741.P15143000945284204742

/-! ## A361741.P7824024361556969958

`eq[A010879(A065253(n+1)), A095916(n+2)]+1`
-/

namespace A361741.P7824024361556969958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065253 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095916 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A361741.P7824024361556969958

/-!
# A361743: Central circular Delannoy numbers: a(n) is the number of Delannoy loops on an n X n toroidal grid.

The programs for A361743, the canonical program `A361743.P17164138405407850184` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361743 has offset 0).

The definition of A361743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361743.P17164138405407850184

`A028310(n)*A123164(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A361743

/-- `A028310(n)*A123164(n)` -/
def P17164138405407850184.Spec : Prop :=
  ∀ n, P17164138405407850184.a n = A361743 n

theorem P17164138405407850184.correct : P17164138405407850184.Spec := by
  intro n
  simp only [A361743]

end A361743

/-! ## A361743.P15930436047547611520

`sqrt(A253909(n))*A123164(n)`
-/

namespace A361743.P15930436047547611520
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A253909 n : ℝ) * (A123164 n : ℝ)

end

end A361743.P15930436047547611520

namespace A361743

/-- `sqrt(A253909(n))*A123164(n)` -/
def P15930436047547611520.Spec : Prop :=
  ∀ n, P15930436047547611520.a n = (A361743 n : ℝ)

end A361743

/-! ## A361743.P2439207153963891571

`A000007(n)+n*A002003(n)`
-/

namespace A361743.P2439207153963891571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A002003 n

end

end A361743.P2439207153963891571

namespace A361743

/-- `A000007(n)+n*A002003(n)` -/
def P2439207153963891571.Spec : Prop :=
  ∀ n, P2439207153963891571.a n = A361743 n

end A361743

/-! ## A361743.P15511280852004499772

`A000007(n)+n*A123164(n)`
-/

namespace A361743.P15511280852004499772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A123164 n

end

end A361743.P15511280852004499772

namespace A361743

/-- `A000007(n)+n*A123164(n)` -/
def P15511280852004499772.Spec : Prop :=
  ∀ n, P15511280852004499772.a n = A361743 n

end A361743

/-! ## A361743.P16319702834507673867

`ceil(A241023(n)/2)*A028310(n)`
-/

namespace A361743.P16319702834507673867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A241023 n : ℚ) / 2⌉ * A028310 n

end

end A361743.P16319702834507673867

namespace A361743

/-- `ceil(A241023(n)/2)*A028310(n)` -/
def P16319702834507673867.Spec : Prop :=
  ∀ n, P16319702834507673867.a n = A361743 n

end A361743

/-! ## A361743.P16536860672373488592

`sqrt(A253909(n))*ceil(A241023(n)/2)`
-/

namespace A361743.P16536860672373488592
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A253909 n : ℝ) * (⌈(A241023 n : ℚ) / 2⌉ : ℝ)

end

end A361743.P16536860672373488592

namespace A361743

/-- `sqrt(A253909(n))*ceil(A241023(n)/2)` -/
def P16536860672373488592.Spec : Prop :=
  ∀ n, P16536860672373488592.a n = (A361743 n : ℝ)

end A361743

/-! ## A361743.P8533191492179220131

`A007318(A000124(n))*A123164(n)`
-/

namespace A361743.P8533191492179220131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A123164 n

end

end A361743.P8533191492179220131

namespace A361743

/-- `A007318(A000124(n))*A123164(n)` -/
def P8533191492179220131.Spec : Prop :=
  ∀ n, P8533191492179220131.a n = A361743 n

end A361743

/-! ## A361743.P17830134487461776050

`round(1/acot(n))*A055587(A046092(n))`
-/

namespace A361743.P17830134487461776050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) * A055587 (A046092 n).toNat

end

end A361743.P17830134487461776050

namespace A361743

/-- `round(1/acot(n))*A055587(A046092(n))` -/
def P17830134487461776050.Spec : Prop :=
  ∀ n, P17830134487461776050.a n = A361743 n

end A361743

/-!
# A361745: Square array of circular Delannoy numbers A(i,j) (i >= 0, j >= 0) read by antidiagonals.

The programs for A361745, there is no canonical definition to state claims against.
-/

/-! ## A361745.P15342643364799998316

`A105360(A099597(n))`
-/

namespace A361745.P15342643364799998316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105360 (A099597 n).toNat

end

end A361745.P15342643364799998316

/-! ## A361745.P11269222753270594277

`A002202(A114202(n)%A160172(2*(n+2)))`
-/

namespace A361745.P11269222753270594277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (Int.tmod (A114202 n) (A160172 (2 * (n + 2)))).toNat

end

end A361745.P11269222753270594277

/-! ## A361745.P13747655017183246108

`A323608(A081578(n))`
-/

namespace A361745.P13747655017183246108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323608 (A081578 n).toNat

end

end A361745.P13747655017183246108

/-! ## A361745.P10201157525553423034

`A001223(A144443(n+1))*A224697(n)`
-/

namespace A361745.P10201157525553423034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A144443 (n + 1)).toNat * A224697 n

end

end A361745.P10201157525553423034

/-! ## A361745.P14891667224879863785

`A151999(A026692(n+1))%A134322(3*n+4)`
-/

namespace A361745.P14891667224879863785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151999 (A026692 (n + 1)).toNat) (A134322 (3 * n + 4))

end

end A361745.P14891667224879863785

/-!
# A361749: a(n) is the number of n X n matrices with nonnegative integer entries, row sums 1,2,...,n and column sums 1,2,...,n.

The programs for A361749, there is no canonical definition to state claims against.
-/

/-! ## A361749.P2403974118463491472

`A372655(∏[n!])`
-/

namespace A361749.P2403974118463491472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372655 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A361749.P2403974118463491472

/-!
# A361751: a(n) is the number of decimal digits in A098129(n) and A300517(n).

The programs for A361751, the canonical program `A361751.P11517520314261934016` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361751 has offset 1).

The definition of A361751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361751.P11517520314261934016

`∑[∑{digits}[n+1, xor(#, xor(#, n+1))]]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361751

/-- `∑[∑{digits}[n+1, xor(#, xor(#, n+1))]]` -/
def P11517520314261934016.Spec : Prop :=
  ∀ n, (P11517520314261934016.a n : ℤ) = A361751 (n + 1)

theorem P11517520314261934016.correct : P11517520314261934016.Spec := by
  intro n
  simp only [A361751, Nat.add_sub_cancel]

end A361751

/-! ## A361751.P6057180094773021609

`∑[(n+1)*∑{digits}[n+1, (#%2)!]]`
-/

namespace A361751.P6057180094773021609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361751.P6057180094773021609

namespace A361751

/-- `∑[(n+1)*∑{digits}[n+1, (#%2)!]]` -/
def P6057180094773021609.Spec : Prop :=
  ∀ n, (P6057180094773021609.a n : ℤ) = A361751 (n + 1)

end A361751

/-! ## A361751.P1405801248889241583

`∑[∑{digits}[n+1, gcd(n+1, #*(n+1))]]`
-/

namespace A361751.P1405801248889241583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.gcd (n + 1) (x * (n + 1))).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361751.P1405801248889241583

namespace A361751

/-- `∑[∑{digits}[n+1, gcd(n+1, #*(n+1))]]` -/
def P1405801248889241583.Spec : Prop :=
  ∀ n, (P1405801248889241583.a n : ℤ) = A361751 (n + 1)

theorem P1405801248889241583.correct : P1405801248889241583.Spec := by
  intro n
  simp only [A361751, Nat.add_sub_cancel, A361751.P1405801248889241583.f2, A361751.P1405801248889241583.f1, A361751.P1405801248889241583.a, A361751.P11517520314261934016.f2, A361751.P11517520314261934016.f1, A361751.P11517520314261934016.a, SequenceMachineLib.memo_apply]
  try simp

end A361751

/-! ## A361751.P12364962511711161480

`∑[A110803(n+1)]`
-/

namespace A361751.P12364962511711161480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361751.P12364962511711161480

namespace A361751

/-- `∑[A110803(n+1)]` -/
def P12364962511711161480.Spec : Prop :=
  ∀ n, P12364962511711161480.a n = A361751 (n + 1)

end A361751

/-! ## A361751.P17436226885794893705

`∑[(n+1)*A055642(n+1)]`
-/

namespace A361751.P17436226885794893705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361751.P17436226885794893705

namespace A361751

/-- `∑[(n+1)*A055642(n+1)]` -/
def P17436226885794893705.Spec : Prop :=
  ∀ n, P17436226885794893705.a n = A361751 (n + 1)

end A361751

/-! ## A361751.P968024070839385122

`∑[A004218(n+2)*(n+1)]`
-/

namespace A361751.P968024070839385122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 2) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361751.P968024070839385122

namespace A361751

/-- `∑[A004218(n+2)*(n+1)]` -/
def P968024070839385122.Spec : Prop :=
  ∀ n, P968024070839385122.a n = A361751 (n + 1)

end A361751

/-!
# A361752: a(n) = Sum_{k=0..floor(n/2)} binomial(2*(n-2*k),k) * binomial(2*(n-2*k),n-2*k).

The programs for A361752, the canonical program `A361752.P3233358636939616592` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361752 has offset 0).

The definition of A361752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(2*(n-2*#), #)*C(2*(n-2*#), n-2*#)]` (program `A361752.P3233358636939616592`, by `A361752.P3233358636939616592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361752.P3233358636939616592

`∑{#}[floor(n/2), C(2*(n-2*#), #)*C(2*(n-2*#), n-2*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361752

/-- `∑{#}[floor(n/2), C(2*(n-2*#), #)*C(2*(n-2*#), n-2*#)]` -/
def P3233358636939616592.Spec : Prop :=
  ∀ n, (P3233358636939616592.a n : ℤ) = A361752 n

theorem P3233358636939616592.correct : P3233358636939616592.Spec := by
  intro n
  simp only [A361752]

end A361752

/-! ## A361752.P9755472096985061800

`A261585(A037758(n+1))`
-/

namespace A361752.P9755472096985061800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A037758 (n + 1)).toNat

end

end A361752.P9755472096985061800

namespace A361752

/-- `A261585(A037758(n+1))` -/
def P9755472096985061800.Spec : Prop :=
  ∀ n, P9755472096985061800.a n = A361752 n

end A361752

/-!
# A361753: a(n) = Sum_{k=0..floor(n/3)} binomial(2*(n-3*k),k) * binomial(2*(n-3*k),n-3*k).

The programs for A361753, the canonical program `A361753.P18198373611156548217` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361753 has offset 0).

The definition of A361753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(2*(n-3*#), #)*C(2*(n-3*#), n-3*#)]` (program `A361753.P18198373611156548217`, by `A361753.P18198373611156548217.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361753.P18198373611156548217

`∑{#}[floor(n/3), C(2*(n-3*#), #)*C(2*(n-3*#), n-3*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361753

/-- `∑{#}[floor(n/3), C(2*(n-3*#), #)*C(2*(n-3*#), n-3*#)]` -/
def P18198373611156548217.Spec : Prop :=
  ∀ n, (P18198373611156548217.a n : ℤ) = A361753 n

theorem P18198373611156548217.correct : P18198373611156548217.Spec := by
  intro n
  simp only [A361753]

end A361753

/-! ## A361753.P569400988386309829

`A374599(n)+A086008(A360151(n))`
-/

namespace A361753.P569400988386309829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374599 n + A086008 (A360151 n).toNat

end

end A361753.P569400988386309829

namespace A361753

/-- `A374599(n)+A086008(A360151(n))` -/
def P569400988386309829.Spec : Prop :=
  ∀ n, P569400988386309829.a n = A361753 n

end A361753

/-! ## A361753.P3856848677711835648

`A374599(n)+A124762(A078164(n+1))`
-/

namespace A361753.P3856848677711835648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374599 n + A124762 (A078164 (n + 1)).toNat

end

end A361753.P3856848677711835648

namespace A361753

/-- `A374599(n)+A124762(A078164(n+1))` -/
def P3856848677711835648.Spec : Prop :=
  ∀ n, P3856848677711835648.a n = A361753 n

end A361753

/-! ## A361753.P10262235476217798852

`A374599(n)+A307598(A075223(n+1))`
-/

namespace A361753.P10262235476217798852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374599 n + A307598 (A075223 (n + 1)).toNat

end

end A361753.P10262235476217798852

namespace A361753

/-- `A374599(n)+A307598(A075223(n+1))` -/
def P10262235476217798852.Spec : Prop :=
  ∀ n, P10262235476217798852.a n = A361753 n

end A361753

/-!
# A361755: Irregular triangle T(n, k), n >= 0, k = 1..2^A007895(n), read by rows; the n-th row lists the numbers k such that the Fibonacci numbers that appear in the Zeckendorf representation of k also appear in that of n.

The programs for A361755, there is no canonical definition to state claims against.
-/

/-! ## A361755.P13463675573486214308

`A362755(n)%A055778(A248489(n+1))`
-/

namespace A361755.P13463675573486214308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362755 n) (A055778 (A248489 (n + 1)).toNat)

end

end A361755.P13463675573486214308

/-! ## A361755.P13952786695095585833

`A362755(A122284(∑[n]))`
-/

namespace A361755.P13952786695095585833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362755 (A122284 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A361755.P13952786695095585833

/-! ## A361755.P7935824013233220334

`A362755(A000523(2^n))`
-/

namespace A361755.P7935824013233220334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362755 (A000523 (2 ^ n)).toNat

end

end A361755.P7935824013233220334

/-! ## A361755.P16116346294156045622

`A362755(A032741(2^n))`
-/

namespace A361755.P16116346294156045622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362755 (A032741 (2 ^ n)).toNat

end

end A361755.P16116346294156045622

/-! ## A361755.P16203484864436240076

`A362755(n)+A030109(2^n)`
-/

namespace A361755.P16203484864436240076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362755 n + A030109 (2 ^ n)

end

end A361755.P16203484864436240076

/-!
# A361756: Irregular triangle T(n, k), n >= 0, k = 1..A361757(n), read by rows; the n-th row lists the numbers k such that the Fibonacci numbers that appear in the dual Zeckendorf representation of k also appear in that of n.

The programs for A361756, there is no canonical definition to state claims against.
-/

/-! ## A361756.P11737560726387292080

`A022995(n)%A355735(A270613(n+1))`
-/

namespace A361756.P11737560726387292080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022995 n) (A355735 (A270613 (n + 1)).toNat)

end

end A361756.P11737560726387292080

/-! ## A361756.P13225291639636770348

`A002262(lt[A002113(n+1), A291794(n+1)])`
-/

namespace A361756.P13225291639636770348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A361756.P13225291639636770348

/-! ## A361756.P10112616793126011740

`A336820(lt[A026798(n), A319841(3*n+2)])`
-/

namespace A361756.P10112616793126011740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319841 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A361756.P10112616793126011740

/-! ## A361756.P9381559517825813739

`A295989(lt[A007674(n+1), A084499(2*(n+2))])`
-/

namespace A361756.P9381559517825813739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084499 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295989 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A361756.P9381559517825813739

/-!
# A361757: a(n) is the number of terms in the n-th row of A361756.

The programs for A361757, there is no canonical definition to state claims against.
-/

/-! ## A361757.P2585410122277462671

`Δ[eq[0, A361756(n)]]`
-/

namespace A361757.P2585410122277462671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361756 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A361757.P2585410122277462671

/-! ## A361757.P2357674320051297427

`Δ[lt[A361756(n), A040001(2*n+3)]]`
-/

namespace A361757.P2357674320051297427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361756 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A361757.P2357674320051297427

/-!
# A361758: a(n) = [x^n] (x^5 + 5*x^4 + 4*x^3 - 3*x + 1)/((1 - x)*(x^2 + 2*x - 1)^2).

The programs for A361758, the canonical program `A361758.P16608428032083257517` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361758 has offset 0).

The definition of A361758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361758.P16608428032083257517

`∑[A361732(n)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A361758

/-- `∑[A361732(n)]` -/
def P16608428032083257517.Spec : Prop :=
  ∀ n, P16608428032083257517.a n = A361758 n

theorem P16608428032083257517.correct : P16608428032083257517.Spec := by
  intro n
  simp only [A361758]

end A361758

/-! ## A361758.P5207893682220606781

`∑[A176981(n)+record[A093969(n)]]`
-/

namespace A361758.P5207893682220606781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093969 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 n + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361758.P5207893682220606781

namespace A361758

/-- `∑[A176981(n)+record[A093969(n)]]` -/
def P5207893682220606781.Spec : Prop :=
  ∀ n, P5207893682220606781.a n = A361758 n

end A361758

/-! ## A361758.P17164190899114106811

`(A006645(n)+1)*A040001(2*n)`
-/

namespace A361758.P17164190899114106811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006645 n + 1) * A040001 (2 * n)

end

end A361758.P17164190899114106811

namespace A361758

/-- `(A006645(n)+1)*A040001(2*n)` -/
def P17164190899114106811.Spec : Prop :=
  ∀ n, P17164190899114106811.a n = A361758 n

end A361758

/-!
# A361760: a(n) = Product_{i=prime(n)..prime(n+1)-1} i.

The programs for A361760, there is no canonical definition to state claims against.
-/

/-! ## A361760.P2724643918178383863

`A000040(n+1)*A061214(n+1)`
-/

namespace A361760.P2724643918178383863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A061214 (n + 1)

end

end A361760.P2724643918178383863

/-! ## A361760.P11571355512926701824

`A117481(A006093(n+2))`
-/

namespace A361760.P11571355512926701824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (A006093 (n + 2)).toNat

end

end A361760.P11571355512926701824

/-! ## A361760.P8364820926728809202

`A117481(A039915(n+2))`
-/

namespace A361760.P8364820926728809202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (A039915 (n + 2)).toNat

end

end A361760.P8364820926728809202

/-! ## A361760.P11639176367981379152

`A117481(record[A000010(n+3)])`
-/

namespace A361760.P11639176367981379152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361760.P11639176367981379152

/-! ## A361760.P11882157656662835646

`A117481(A065091(n+1)-1)`
-/

namespace A361760.P11882157656662835646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (A065091 (n + 1) - 1).toNat

end

end A361760.P11882157656662835646

/-! ## A361760.P16426073690176130724

`A117481(A000040(n+2)-1)`
-/

namespace A361760.P16426073690176130724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (A000040 (n + 2) - 1).toNat

end

end A361760.P16426073690176130724

/-! ## A361760.P7116450956853159179

`A117481(A006005(n+2)-1)`
-/

namespace A361760.P7116450956853159179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (A006005 (n + 2) - 1).toNat

end

end A361760.P7116450956853159179

/-! ## A361760.P10456959862597718542

`A117481(A008864(n+2)-2)`
-/

namespace A361760.P10456959862597718542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (A008864 (n + 2) - 2).toNat

end

end A361760.P10456959862597718542

/-! ## A361760.P4100467663708395415

`A361761(n+1)/A000040(n+2)`
-/

namespace A361760.P4100467663708395415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361761 (n + 1) : ℚ) / (A000040 (n + 2) : ℚ)

end

end A361760.P4100467663708395415

/-! ## A361760.P4379850494568250077

`A061214(n+1)*A109763(2*n+1)`
-/

namespace A361760.P4379850494568250077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061214 (n + 1) * A109763 (2 * n + 1)

end

end A361760.P4379850494568250077

/-! ## A361760.P7232333653940247119

`A061214(n+1)*A109921(2*(n+1))`
-/

namespace A361760.P7232333653940247119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061214 (n + 1) * A109921 (2 * (n + 1))

end

end A361760.P7232333653940247119

/-! ## A361760.P5545716286482704167

`A061214(n+1)/A072472(n+1)*A361761(n+1)`
-/

namespace A361760.P5545716286482704167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061214 (n + 1) : ℚ) / (A072472 (n + 1) : ℚ) * (A361761 (n + 1) : ℚ)

end

end A361760.P5545716286482704167

/-! ## A361760.P4391060355396146166

`A000040(n+1)*A072472(n+1)/A000040(n+2)`
-/

namespace A361760.P4391060355396146166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * A072472 (n + 1) : ℚ) / (A000040 (n + 2) : ℚ)

end

end A361760.P4391060355396146166

/-! ## A361760.P9839419821591298030

`A361761(n+1)/A361761(n+2)*A072472(n+2)`
-/

namespace A361760.P9839419821591298030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361761 (n + 1) : ℚ) / (A361761 (n + 2) : ℚ) * (A072472 (n + 2) : ℚ)

end

end A361760.P9839419821591298030

/-!
# A361761: a(n) = Product_{i=prime(n)..prime(n+1)} i.

The programs for A361761, there is no canonical definition to state claims against.
-/

/-! ## A361761.P7731919579724070524

`A006094(n+1)*A061214(n+1)`
-/

namespace A361761.P7731919579724070524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A061214 (n + 1)

end

end A361761.P7731919579724070524

/-! ## A361761.P10936687533667011159

`A117481(p?[2*n+1])`
-/

namespace A361761.P10936687533667011159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A361761.P10936687533667011159

/-! ## A361761.P15230148996635402167

`A117481(A065091(n+1))`
-/

namespace A361761.P15230148996635402167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (A065091 (n + 1)).toNat

end

end A361761.P15230148996635402167

/-! ## A361761.P13088034524236119910

`A117481(A000040(n+2))`
-/

namespace A361761.P13088034524236119910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (A000040 (n + 2)).toNat

end

end A361761.P13088034524236119910

/-! ## A361761.P2714657144057236277

`A117481(A006005(n+2))`
-/

namespace A361761.P2714657144057236277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (A006005 (n + 2)).toNat

end

end A361761.P2714657144057236277

/-! ## A361761.P16881489195349414293

`A117481(record[A006530(n+3)])`
-/

namespace A361761.P16881489195349414293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361761.P16881489195349414293

/-! ## A361761.P18034588912561669526

`A117481(record[A020639(n+3)])`
-/

namespace A361761.P18034588912561669526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361761.P18034588912561669526

/-! ## A361761.P7824025616618912909

`A117481(A006093(n+2)+1)`
-/

namespace A361761.P7824025616618912909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (A006093 (n + 2) + 1).toNat

end

end A361761.P7824025616618912909

/-! ## A361761.P12559359022702120614

`A117481(A039915(n+2)+1)`
-/

namespace A361761.P12559359022702120614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (A039915 (n + 2) + 1).toNat

end

end A361761.P12559359022702120614

/-! ## A361761.P7746533307610471485

`A117481(A008864(n+2)-1)`
-/

namespace A361761.P7746533307610471485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117481 (A008864 (n + 2) - 1).toNat

end

end A361761.P7746533307610471485

/-! ## A361761.P10525886804423562052

`A000040(n+1)*A072472(n+1)`
-/

namespace A361761.P10525886804423562052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A072472 (n + 1)

end

end A361761.P10525886804423562052

/-! ## A361761.P9019042118377155408

`A000040(n+2)*A361760(n+1)`
-/

namespace A361761.P9019042118377155408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A361760 (n + 1)

end

end A361761.P9019042118377155408

/-! ## A361761.P12676759362374315408

`lcm(A058077(n+1), A361760(n+1))`
-/

namespace A361761.P12676759362374315408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A058077 (n + 1)) (A361760 (n + 1))

end

end A361761.P12676759362374315408

/-! ## A361761.P9086364063290316714

`A072472(n+1)*A109763(2*n+1)`
-/

namespace A361761.P9086364063290316714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072472 (n + 1) * A109763 (2 * n + 1)

end

end A361761.P9086364063290316714

/-! ## A361761.P16224423312718002711

`A072472(n+1)*A109921(2*(n+1))`
-/

namespace A361761.P16224423312718002711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072472 (n + 1) * A109921 (2 * (n + 1))

end

end A361761.P16224423312718002711

/-! ## A361761.P14064895717837015227

`A000040(n+1)*A061214(n+1)*A000040(n+2)`
-/

namespace A361761.P14064895717837015227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A061214 (n + 1) * A000040 (n + 2)

end

end A361761.P14064895717837015227

/-! ## A361761.P8982239071415175663

`A072472(n+1)/A061214(n+1)*A361760(n+1)`
-/

namespace A361761.P8982239071415175663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072472 (n + 1) : ℚ) / (A061214 (n + 1) : ℚ) * (A361760 (n + 1) : ℚ)

end

end A361761.P8982239071415175663

/-! ## A361761.P1024923126699643471

`A361760(n+1)/A061214(n+2)*A361760(n+2)`
-/

namespace A361761.P1024923126699643471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361760 (n + 1) : ℚ) / (A061214 (n + 2) : ℚ) * (A361760 (n + 2) : ℚ)

end

end A361761.P1024923126699643471

/-!
# A361762: Expansion of g.f. A(x) satisfying A(x)^3 = A( x^3/(1 - 3*x)^3 ) / (1 - 3*x).

The programs for A361762, there is no canonical definition to state claims against.
-/

/-! ## A361762.P2150126888275069106

`A005317(n)-Δ[A153452(A000244(n))]`
-/

namespace A361762.P2150126888275069106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A000244 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 n - (f1 (n + 1) - f1 n)

end

end A361762.P2150126888275069106

/-! ## A361762.P12228403183665005999

`A122005(A148482(n))`
-/

namespace A361762.P12228403183665005999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122005 (A148482 n).toNat

end

end A361762.P12228403183665005999

/-! ## A361762.P14970795619687616492

`A157271(A148944(n))`
-/

namespace A361762.P14970795619687616492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148944 n).toNat

end

end A361762.P14970795619687616492

/-!
# A361763: Expansion of g.f. A(x) satisfying A(x)^3 = A( x^3/(1 - 3*x)^3 ).

The programs for A361763, there is no canonical definition to state claims against.
-/

/-! ## A361763.P17573379937096028642

`A081914(n)+A055641(A349965(n))`
-/

namespace A361763.P17573379937096028642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081914 n + A055641 (A349965 n).toNat

end

end A361763.P17573379937096028642

/-! ## A361763.P10219130881125124200

`A120985(n)-A046660(A376388(n))`
-/

namespace A361763.P10219130881125124200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120985 n - A046660 (A376388 n).toNat

end

end A361763.P10219130881125124200

/-! ## A361763.P12237082646617518388

`A120985(n)-A288216(A192945(n))`
-/

namespace A361763.P12237082646617518388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120985 n - A288216 (A192945 n).toNat

end

end A361763.P12237082646617518388

/-!
# A361764: Expansion of g.f. A(x) satisfying A(x)^5 = A( x^5/(1 - 5*x)^5 ) / (1 - 5*x).

The programs for A361764, there is no canonical definition to state claims against.
-/

/-! ## A361764.P4240067733877669107

`A127632(n)+A008618(A112959(n+1))`
-/

namespace A361764.P4240067733877669107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127632 n + A008618 (A112959 (n + 1)).toNat

end

end A361764.P4240067733877669107

/-! ## A361764.P10242377012771280907

`A285901(A036727(n+1))`
-/

namespace A361764.P10242377012771280907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285901 (A036727 (n + 1)).toNat

end

end A361764.P10242377012771280907

/-! ## A361764.P16150837924602262418

`A127632(n)+A055641(A007347(n))`
-/

namespace A361764.P16150837924602262418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127632 n + A055641 (A007347 n).toNat

end

end A361764.P16150837924602262418

/-!
# A361765: Expansion of g.f. A(x) satisfying A(x)^5 = A( x^5/(1 - 5*x)^5 ).

The programs for A361765, there is no canonical definition to state claims against.
-/

/-! ## A361765.P13672658757107420538

`A098490(A000566(n))+A000351(n)`
-/

namespace A361765.P13672658757107420538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098490 (A000566 n).toNat + A000351 n

end

end A361765.P13672658757107420538

/-! ## A361765.P13138561286352517567

`A359897(A326248(n))+A000351(n)`
-/

namespace A361765.P13138561286352517567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359897 (A326248 n).toNat + A000351 n

end

end A361765.P13138561286352517567

/-!
# A361766: Expansion of g.f. A(x) satisfying 0 = Sum_{n=-oo..+oo} x^n * (1 - x^n/A(-x))^(n+2).

The programs for A361766, there is no canonical definition to state claims against.
-/

/-! ## A361766.P11037184734654905005

`A046108(xor(A001372(n), A101979(3*n)))`
-/

namespace A361766.P11037184734654905005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (Int.xor (A001372 n) (A101979 (3 * n))).toNat

end

end A361766.P11037184734654905005

/-! ## A361766.P14444664692809884479

`A105223(A001582(n))`
-/

namespace A361766.P14444664692809884479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A001582 n).toNat

end

end A361766.P14444664692809884479

/-! ## A361766.P14253312786540402320

`A105223(A346317(n+2))`
-/

namespace A361766.P14253312786540402320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A346317 (n + 2)).toNat

end

end A361766.P14253312786540402320

/-! ## A361766.P15451150035675662762

`A003056(A150272(n)-n)`
-/

namespace A361766.P15451150035675662762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A150272 n - (n : ℤ)).toNat

end

end A361766.P15451150035675662762

/-!
# A361767: Expansion of e.g.f. A(x) = 1/F(oo,x) where F(oo,x) is the limit of the process F(n,x) = (F(n-1,x)^n - x^n)^(1/n) for n > 0, starting with F(0,x) = 1.

The programs for A361767, there is no canonical definition to state claims against.
-/

/-! ## A361767.P6300073678829194984

`A054353(A003278(n!))`
-/

namespace A361767.P6300073678829194984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (A003278 (Nat.factorial n)).toNat

end

end A361767.P6300073678829194984

/-! ## A361767.P15877848767575110432

`A007843(ceil(A113662(n)/4))-1`
-/

namespace A361767.P15877848767575110432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 ⌈(A113662 n : ℚ) / 4⌉.toNat - 1

end

end A361767.P15877848767575110432

/-!
# A361768: Expansion of o.g.f. A(x) = 1/F(oo,x) where F(oo,x) is the limit of the process F(n,x) = (F(n-1,x)^n - n^2*x^n)^(1/n) for n > 0, starting with F(0,x) = 1.

The programs for A361768, there is no canonical definition to state claims against.
-/

/-! ## A361768.P9799094948792797847

`A127757(A150868(n))`
-/

namespace A361768.P9799094948792797847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A150868 n).toNat

end

end A361768.P9799094948792797847

/-! ## A361768.P6343099133225953978

`A247833(A049154(n))`
-/

namespace A361768.P6343099133225953978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247833 (A049154 n).toNat

end

end A361768.P6343099133225953978

/-! ## A361768.P13096713218448667417

`A248148(A344191(n))`
-/

namespace A361768.P13096713218448667417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248148 (A344191 n).toNat

end

end A361768.P13096713218448667417

/-!
# A361769: Expansion of g.f. A(x) = 1/F(oo,x) where F(oo,x) is the limit of the process F(n,x) = (F(n-1,x)^(2^n) - 4^n*x^n)^(1/2^n) for n > 0, starting with F(0,x) = 1.

The programs for A361769, there is no canonical definition to state claims against.
-/

/-! ## A361769.P1948978324635454507

`ceil(A321253(2*n+1)/3)`
-/

namespace A361769.P1948978324635454507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321253 (2 * n + 1) : ℚ) / 3⌉

end

end A361769.P1948978324635454507

/-!
# A361770: Expansion of g.f. A(x) satisfying A(x) = Sum_{n=-oo..+oo} (-1)^n * x^n * (A(x)^2 + x^(n-1))^(n+1).

The programs for A361770, there is no canonical definition to state claims against.
-/

/-! ## A361770.P2478106733039849160

`A321255(A055113(n))+A121873(n+1)`
-/

namespace A361770.P2478106733039849160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321255 (A055113 n).toNat + A121873 (n + 1)

end

end A361770.P2478106733039849160

/-!
# A361772: Expansion of g.f. A(x) satisfying 1 = Sum_{n=-oo..+oo} x^n * (2*A(x) - (-x)^n)^(2*n-1).

The programs for A361772, there is no canonical definition to state claims against.
-/

/-! ## A361772.P15280044966524775212

`A006160(2*(n+1)^n)`
-/

namespace A361772.P15280044966524775212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006160 (2 * (n + 1) ^ n)

end

end A361772.P15280044966524775212

/-!
# A361773: Expansion of g.f. A(x) satisfying 1 = Sum_{n=-oo..+oo} x^n * (2*A(x) - (-x)^n)^(3*n-1).

The programs for A361773, there is no canonical definition to state claims against.
-/

/-! ## A361773.P9448109915160923678

`A284488(A084947(n)-A273724(n+1))`
-/

namespace A361773.P9448109915160923678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284488 (A084947 n - A273724 (n + 1)).toNat

end

end A361773.P9448109915160923678

/-!
# A361775: Expansion of g.f. A(x) satisfying x = Sum_{n=-oo..+oo} (-1)^n * x^n * A(x)^n * (A(x)^n + x^n)^n.

The programs for A361775, there is no canonical definition to state claims against.
-/

/-! ## A361775.P119146688513118121

`A248566(A151488(n))`
-/

namespace A361775.P119146688513118121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248566 (A151488 n).toNat

end

end A361775.P119146688513118121

/-! ## A361775.P12175585117462644846

`A134679(2*A005191(n))`
-/

namespace A361775.P12175585117462644846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134679 (2 * A005191 n).toNat

end

end A361775.P12175585117462644846

/-!
# A361776: Expansion of g.f. A(x) satisfying x*A(x) = Sum_{n=-oo..+oo} (-1)^n * x^n * A(x)^n * (A(x)^n + x^n)^n.

The programs for A361776, there is no canonical definition to state claims against.
-/

/-! ## A361776.P13929046155931638767

`∑[A057358(A226751(n))]+1`
-/

namespace A361776.P13929046155931638767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (A226751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A361776.P13929046155931638767

/-! ## A361776.P5047410980382254863

`A034887(A182584(2*n)-n)`
-/

namespace A361776.P5047410980382254863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A182584 (2 * n) - (n : ℤ)).toNat

end

end A361776.P5047410980382254863

/-!
# A361777: Expansion of e.g.f. A(x) satisfying A(x) = exp( x * A(x)^x ).

The programs for A361777, there is no canonical definition to state claims against.
-/

/-! ## A361777.P4065559220353194859

`A056419(n+1)+A050985(A088009(n))`
-/

namespace A361777.P4065559220353194859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056419 (n + 1) + A050985 (A088009 n).toNat

end

end A361777.P4065559220353194859

/-! ## A361777.P3512502098474262525

`A032742(A001221(n+1)*A245138(n)+1)`
-/

namespace A361777.P3512502098474262525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A001221 (n + 1) * A245138 n + 1).toNat

end

end A361777.P3512502098474262525

/-! ## A361777.P16922516711888706766

`A065330(A163100(2*(n+1))*A245138(n)+1)`
-/

namespace A361777.P16922516711888706766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A163100 (2 * (n + 1)) * A245138 n + 1).toNat

end

end A361777.P16922516711888706766

/-!
# A361778: Expansion of g.f. A(x) satisfying 1 = Sum_{n=-oo..+oo} x^n * ((-x)^(n-1) - 2*A(x))^n.

The programs for A361778, there is no canonical definition to state claims against.
-/

/-! ## A361778.P1989628229185315724

`A003074(A151116(n+1))`
-/

namespace A361778.P1989628229185315724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (A151116 (n + 1)).toNat

end

end A361778.P1989628229185315724

/-! ## A361778.P7977877393116810839

`A105515(A014448(n+1)+1)`
-/

namespace A361778.P7977877393116810839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105515 (A014448 (n + 1) + 1).toNat

end

end A361778.P7977877393116810839

/-!
# A361779: Expansion of g.f. A(x) satisfying 1/x = Sum_{n=-oo..+oo} x^n * (x^(2*n) - (-1)^n*A(x))^(n+1).

The programs for A361779, there is no canonical definition to state claims against.
-/

/-! ## A361779.P9402697331560332749

`A002024(or(1, A300442(2*n)))`
-/

namespace A361779.P9402697331560332749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor 1 (A300442 (2 * n))).toNat

end

end A361779.P9402697331560332749

/-! ## A361779.P13811062252109112819

`A189203(A001764(n))+A027826(n)`
-/

namespace A361779.P13811062252109112819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189203 (A001764 n).toNat + A027826 n

end

end A361779.P13811062252109112819

/-! ## A361779.P16846462844502932847

`A257104(n)+A010059(A177475(n))`
-/

namespace A361779.P16846462844502932847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257104 n + A010059 (A177475 n).toNat

end

end A361779.P16846462844502932847

/-! ## A361779.P16142755098973471100

`A364389(A000142(n))+A093637(n)`
-/

namespace A361779.P16142755098973471100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364389 (A000142 n).toNat + A093637 n

end

end A361779.P16142755098973471100

/-!
# A361780: Numbers that have digits consisting only of line segments {1, 4, 7} or curved digits {0, 3, 6, 8, 9}.

The programs for A361780, there is no canonical definition to state claims against.
-/

/-! ## A361780.P7397477186051455179

`eq[n, A222229(n)]`
-/

namespace A361780.P7397477186051455179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361780.P7397477186051455179

/-! ## A361780.P6077702341474277944

`record[A004180(A004177(n))]`
-/

namespace A361780.P6077702341474277944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (A004177 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361780.P6077702341474277944

/-! ## A361780.P1197498480452586378

`record[A004180(A004721(n))]`
-/

namespace A361780.P1197498480452586378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (A004721 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361780.P1197498480452586378

/-! ## A361780.P7251469979028549455

`record[A004177(A004724(n))]`
-/

namespace A361780.P7251469979028549455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (A004724 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361780.P7251469979028549455

/-! ## A361780.P15396237840269512314

`record[A004177(A222245(n))]`
-/

namespace A361780.P15396237840269512314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (A222245 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361780.P15396237840269512314

/-! ## A361780.P959535197441254230

`record[A222245(A035044(n))]`
-/

namespace A361780.P959535197441254230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A035044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361780.P959535197441254230

/-! ## A361780.P16252862302078813916

`eq[n, A004177(A004180(n))]`
-/

namespace A361780.P16252862302078813916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (A004180 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361780.P16252862302078813916

/-! ## A361780.P17997027108196657744

`A035043(eq[n, A222222(n)])`
-/

namespace A361780.P17997027108196657744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361780.P17997027108196657744

/-! ## A361780.P9670679425300552691

`A035044(eq[n, A222235(n)])`
-/

namespace A361780.P9670679425300552691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361780.P9670679425300552691

/-! ## A361780.P12952681963423586904

`A222240(eq[n, A222228(n)])`
-/

namespace A361780.P12952681963423586904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361780.P12952681963423586904

/-!
# A361781: A(n,k) is the n-th term of the k-th inverse binomial transform of the Bell numbers (A000110); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A361781, there is no canonical definition to state claims against.
-/

/-! ## A361781.P15848339869799087577

`A292977(n)-A331327(A166350(n+1))`
-/

namespace A361781.P15848339869799087577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292977 n - A331327 (A166350 (n + 1)).toNat

end

end A361781.P15848339869799087577

/-! ## A361781.P16406595166257846263

`A292977(n)-A025469(A172225(n+1))`
-/

namespace A361781.P16406595166257846263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292977 n - A025469 (A172225 (n + 1)).toNat

end

end A361781.P16406595166257846263

/-!
# A361784: Harmonic means the bi-unitary divisors of the bi-unitary harmonic numbers (A286325).

The programs for A361784, there is no canonical definition to state claims against.
-/

/-! ## A361784.P2666072321412874011

`A361782(A286325(n+1))`
-/

namespace A361784.P2666072321412874011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361782 (A286325 (n + 1)).toNat

end

end A361784.P2666072321412874011

/-! ## A361784.P7151551146506853594

`A319416(A000079(n)*A303335(n+3))`
-/

namespace A361784.P7151551146506853594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (A000079 n * A303335 (n + 3)).toNat

end

end A361784.P7151551146506853594

/-! ## A361784.P910870781291907686

`A179390(A241736(n+3)-A121692(n+1))`
-/

namespace A361784.P910870781291907686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179390 (A241736 (n + 3) - A121692 (n + 1)).toNat

end

end A361784.P910870781291907686

/-!
# A361786: Bi-unitary arithmetic numbers: numbers for which the arithmetic mean of the bi-unitary divisors is an integer.

The programs for A361786, there is no canonical definition to state claims against.
-/

/-! ## A361786.P10018146742885546589

`lt[A233970(n), A050450(3*(n+1))]+1`
-/

namespace A361786.P10018146742885546589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050450 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A361786.P10018146742885546589

/-! ## A361786.P12567690441419657158

`lt[A072071(2*n), A262816(A291709(n))]`
-/

namespace A361786.P12567690441419657158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072071 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262816 (A291709 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361786.P12567690441419657158

/-!
# A361787: Bi-unitary arithmetic numbers k whose mean bi-unitary divisor is a bi-unitary divisor of k.

The programs for A361787, there is no canonical definition to state claims against.
-/

/-! ## A361787.P3444226603060174489

`∩[A080389(n+1), A286325(n+1)]`
-/

namespace A361787.P3444226603060174489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361787.P3444226603060174489

/-! ## A361787.P2150663814407087799

`A286325(lt[A036236(n), A177510(3*n+1)])`
-/

namespace A361787.P2150663814407087799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036236 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177510 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286325 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A361787.P2150663814407087799

/-! ## A361787.P7480706928348738259

`∩[A061383(n), A286325(n+1)]`
-/

namespace A361787.P7480706928348738259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361787.P7480706928348738259

/-!
# A361788: Number of divisors of n that are totient values (A002202).

The programs for A361788, there is no canonical definition to state claims against.
-/

/-! ## A361788.P4432587282306050900

`∑{d}[n+1, A264739(#)]`
-/

namespace A361788.P4432587282306050900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A264739 d

end

end A361788.P4432587282306050900

/-! ## A361788.P17951598715586715050

`∑{d}[n+1, A049283(#)%2]`
-/

namespace A361788.P17951598715586715050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A049283 d) 2

end

end A361788.P17951598715586715050

/-! ## A361788.P14410273088873570915

`A071626(A151933(3*n)+A070633(n+1))`
-/

namespace A361788.P14410273088873570915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A151933 (3 * n) + A070633 (n + 1)).toNat

end

end A361788.P14410273088873570915

/-! ## A361788.P6299683498753533973

`A003056(A070633(n+1)%A188384(n+1))`
-/

namespace A361788.P6299683498753533973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A070633 (n + 1)) (A188384 (n + 1))).toNat

end

end A361788.P6299683498753533973

/-! ## A361788.P4676184907795767317

`A183063(n+1)+A102609(A342799(n+1))`
-/

namespace A361788.P4676184907795767317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A102609 (A342799 (n + 1)).toNat

end

end A361788.P4676184907795767317

/-!
# A361789: A(n, k) is the sum of the distinct terms in the dual Zeckendorf representations of n or of k; square array A(n, k) read by antidiagonals, n, k >= 0.

The programs for A361789, there is no canonical definition to state claims against.
-/

/-! ## A361789.P3075818572873228584

`∑[char[∑[n+1]]]-A356969(n)`
-/

namespace A361789.P3075818572873228584
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A356969 n

end

end A361789.P3075818572873228584

/-! ## A361789.P1631276936564338759

`A025581(A356969(n)+A057944(n))`
-/

namespace A361789.P1631276936564338759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A356969 n + A057944 n).toNat

end

end A361789.P1631276936564338759

/-! ## A361789.P14993144659652713948

`A003986(n)-A102037(A084938(n))`
-/

namespace A361789.P14993144659652713948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n - A102037 (A084938 n).toNat

end

end A361789.P14993144659652713948

/-! ## A361789.P6137565619699062567

`A003986(n)-A285963(A359742(n))`
-/

namespace A361789.P6137565619699062567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n - A285963 (A359742 n).toNat

end

end A361789.P6137565619699062567

/-! ## A361789.P8564901179925840204

`A080885(A080861(n+4))+A003984(n)`
-/

namespace A361789.P8564901179925840204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080885 (A080861 (n + 4)).toNat + A003984 n

end

end A361789.P8564901179925840204

/-!
# A361793: Sum of the squares d^2 of the divisors d satisfying d^3|n.

The programs for A361793, the canonical program `A361793.P4175961423082726989` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361793 has offset 1).

The definition of A361793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361793.P9657109759625996717

`∑{d}[A053150(n+1), #²]`
-/

namespace A361793.P9657109759625996717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A361793.P9657109759625996717

namespace A361793

/-- `∑{d}[A053150(n+1), #²]` -/
def P9657109759625996717.Spec : Prop :=
  ∀ n, (P9657109759625996717.a n : ℤ) = A361793 (n + 1)

end A361793

/-! ## A361793.P4175961423082726989

`A035316(A000189(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A361793

/-- `A035316(A000189(n+1))` -/
def P4175961423082726989.Spec : Prop :=
  ∀ n, P4175961423082726989.a n = A361793 (n + 1)

theorem P4175961423082726989.correct : P4175961423082726989.Spec := by
  intro n
  simp only [A361793, Nat.add_sub_cancel]

end A361793

/-! ## A361793.P11882473732946874331

`A001157(A053150(n+1))`
-/

namespace A361793.P11882473732946874331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A053150 (n + 1)).toNat

end

end A361793.P11882473732946874331

namespace A361793

/-- `A001157(A053150(n+1))` -/
def P11882473732946874331.Spec : Prop :=
  ∀ n, P11882473732946874331.a n = A361793 (n + 1)

end A361793

/-! ## A361793.P11789528801455866561

`A076752(A053150(n+1)²)`
-/

namespace A361793.P11789528801455866561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 (A053150 (n + 1) ^ 2).toNat

end

end A361793.P11789528801455866561

namespace A361793

/-- `A076752(A053150(n+1)²)` -/
def P11789528801455866561.Spec : Prop :=
  ∀ n, P11789528801455866561.a n = A361793 (n + 1)

end A361793

/-! ## A361793.P5873526342778552005

`A076752(A053150(n+1)*A053150(n+1))`
-/

namespace A361793.P5873526342778552005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 (A053150 (n + 1) * A053150 (n + 1)).toNat

end

end A361793.P5873526342778552005

namespace A361793

/-- `A076752(A053150(n+1)*A053150(n+1))` -/
def P5873526342778552005.Spec : Prop :=
  ∀ n, P5873526342778552005.a n = A361793 (n + 1)

end A361793

/-! ## A361793.P17138842369939293128

`A001157(A355263(n+1)/A007947(n+1))`
-/

namespace A361793.P17138842369939293128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (SequenceMachineLib.roundAway ((A355263 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A361793.P17138842369939293128

namespace A361793

/-- `A001157(A355263(n+1)/A007947(n+1))` -/
def P17138842369939293128.Spec : Prop :=
  ∀ n, P17138842369939293128.a n = A361793 (n + 1)

end A361793

/-! ## A361793.P6219595172957422050

`A128112(A113061(n+1)+1)+1`
-/

namespace A361793.P6219595172957422050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128112 (A113061 (n + 1) + 1).toNat + 1

end

end A361793.P6219595172957422050

namespace A361793

/-- `A128112(A113061(n+1)+1)+1` -/
def P6219595172957422050.Spec : Prop :=
  ∀ n, P6219595172957422050.a n = A361793 (n + 1)

end A361793

/-! ## A361793.P7665473612149545480

`A066400(A053150(n+1)^7)`
-/

namespace A361793.P7665473612149545480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066400 (A053150 (n + 1) ^ 7).toNat

end

end A361793.P7665473612149545480

namespace A361793

/-- `A066400(A053150(n+1)^7)` -/
def P7665473612149545480.Spec : Prop :=
  ∀ n, P7665473612149545480.a n = A361793 (n + 1)

end A361793

/-!
# A361794: Sum of the cubes d^3 of the divisors d satisfying d^2|n.

The programs for A361794, the canonical program `A361794.P451113387851091999` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361794 has offset 1).

The definition of A361794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361794.P451113387851091999

`∑{d}[n+1, #*A037213(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A361794

/-- `∑{d}[n+1, #*A037213(#)]` -/
def P451113387851091999.Spec : Prop :=
  ∀ n, P451113387851091999.a n = A361794 (n + 1)

theorem P451113387851091999.correct : P451113387851091999.Spec := by
  intro n
  simp only [A361794, Nat.add_sub_cancel]

end A361794

/-! ## A361794.P5068110453147573475

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], A000578(#)]`
-/

namespace A361794.P5068110453147573475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 d

end

end A361794.P5068110453147573475

namespace A361794

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], A000578(#)]` -/
def P5068110453147573475.Spec : Prop :=
  ∀ n, P5068110453147573475.a n = A361794 (n + 1)

end A361794

/-! ## A361794.P16972199802533177428

`A001158(A000188(n+1))`
-/

namespace A361794.P16972199802533177428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A000188 (n + 1)).toNat

end

end A361794.P16972199802533177428

namespace A361794

/-- `A001158(A000188(n+1))` -/
def P16972199802533177428.Spec : Prop :=
  ∀ n, P16972199802533177428.a n = A361794 (n + 1)

end A361794

/-! ## A361794.P698461582229399238

`∑{d}[A000188(n+1), A000578(#)]`
-/

namespace A361794.P698461582229399238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000578 d

end

end A361794.P698461582229399238

namespace A361794

/-- `∑{d}[A000188(n+1), A000578(#)]` -/
def P698461582229399238.Spec : Prop :=
  ∀ n, P698461582229399238.a n = A361794 (n + 1)

end A361794

/-! ## A361794.P341528418021423968

`∑{d}[sqrt(A008833(n+1)), A000578(#)]`
-/

namespace A361794.P341528418021423968
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000578 d

end

end A361794.P341528418021423968

namespace A361794

/-- `∑{d}[sqrt(A008833(n+1)), A000578(#)]` -/
def P341528418021423968.Spec : Prop :=
  ∀ n, P341528418021423968.a n = A361794 (n + 1)

end A361794

/-! ## A361794.P14207638482486456297

`∑{d}[n+1, A063453(#)*A351601((n+1)/#)]`
-/

namespace A361794.P14207638482486456297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063453 d * A351601 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361794.P14207638482486456297

namespace A361794

/-- `∑{d}[n+1, A063453(#)*A351601((n+1)/#)]` -/
def P14207638482486456297.Spec : Prop :=
  ∀ n, P14207638482486456297.a n = A361794 (n + 1)

end A361794

/-! ## A361794.P928488679234382534

`∑{d}[n+1, A061020(#)*A355264((n+1)/#)]`
-/

namespace A361794.P928488679234382534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A355264 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361794.P928488679234382534

namespace A361794

/-- `∑{d}[n+1, A061020(#)*A355264((n+1)/#)]` -/
def P928488679234382534.Spec : Prop :=
  ∀ n, P928488679234382534.a n = A361794 (n + 1)

end A361794

/-! ## A361794.P11498763645594965369

`A113061(A355264(n+1))`
-/

namespace A361794.P11498763645594965369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (A355264 (n + 1)).toNat

end

end A361794.P11498763645594965369

namespace A361794

/-- `A113061(A355264(n+1))` -/
def P11498763645594965369.Spec : Prop :=
  ∀ n, P11498763645594965369.a n = A361794 (n + 1)

end A361794

/-!
# A361795: a(n) is the area of the largest rectangle with integer sides that can be drawn inside a circle of diameter n.

The programs for A361795, the canonical program `A361795.P2253438124639216480` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361795 has offset 0).

The definition of A361795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361795.P2253438124639216480

`A049472(n)*A049473(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A361795

/-- `A049472(n)*A049473(n)` -/
def P2253438124639216480.Spec : Prop :=
  ∀ n, P2253438124639216480.a n = A361795 n

theorem P2253438124639216480.correct : P2253438124639216480.Spec := by
  intro n
  simp only [A361795]

end A361795

/-! ## A361795.P8742390305059197108

`floor((floor(n*sqrt(2))/2)²)`
-/

namespace A361795.P8742390305059197108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ : ℚ) / 2) ^ 2⌋

end

end A361795.P8742390305059197108

namespace A361795

/-- `floor((floor(n*sqrt(2))/2)²)` -/
def P8742390305059197108.Spec : Prop :=
  ∀ n, P8742390305059197108.a n = A361795 n

end A361795

/-! ## A361795.P5698938901489910152

`(A049474(n)-1)*A049473(n)`
-/

namespace A361795.P5698938901489910152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049474 n - 1) * A049473 n

end

end A361795.P5698938901489910152

namespace A361795

/-- `(A049474(n)-1)*A049473(n)` -/
def P5698938901489910152.Spec : Prop :=
  ∀ n, P5698938901489910152.a n = A361795 n

end A361795

/-! ## A361795.P15872787132962125354

`(A001951(n)-A049472(n))*A049472(n)`
-/

namespace A361795.P15872787132962125354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001951 n - A049472 n) * A049472 n

end

end A361795.P15872787132962125354

namespace A361795

/-- `(A001951(n)-A049472(n))*A049472(n)` -/
def P15872787132962125354.Spec : Prop :=
  ∀ n, P15872787132962125354.a n = A361795 n

end A361795

/-! ## A361795.P8190066564480469075

`(A001951(n)-A049473(n))*A049473(n)`
-/

namespace A361795.P8190066564480469075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001951 n - A049473 n) * A049473 n

end

end A361795.P8190066564480469075

namespace A361795

/-- `(A001951(n)-A049473(n))*A049473(n)` -/
def P8190066564480469075.Spec : Prop :=
  ∀ n, P8190066564480469075.a n = A361795 n

end A361795

/-! ## A361795.P17272434578014572575

`(A324772(n)+A258703(n+1))*A049472(n)`
-/

namespace A361795.P17272434578014572575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A324772 n + A258703 (n + 1)) * A049472 n

end

end A361795.P17272434578014572575

namespace A361795

/-- `(A324772(n)+A258703(n+1))*A049472(n)` -/
def P17272434578014572575.Spec : Prop :=
  ∀ n, P17272434578014572575.a n = A361795 n

end A361795

/-! ## A361795.P10187442533393127779

`(A001951(n)-A258703(n+1))*A258703(n+1)`
-/

namespace A361795.P10187442533393127779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001951 n - A258703 (n + 1)) * A258703 (n + 1)

end

end A361795.P10187442533393127779

namespace A361795

/-- `(A001951(n)-A258703(n+1))*A258703(n+1)` -/
def P10187442533393127779.Spec : Prop :=
  ∀ n, P10187442533393127779.a n = A361795 n

end A361795

/-! ## A361795.P9309392473426412757

`A002620(floor(n*sqrt(2)))`
-/

namespace A361795.P9309392473426412757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat

end

end A361795.P9309392473426412757

namespace A361795

/-- `A002620(floor(n*sqrt(2)))` -/
def P9309392473426412757.Spec : Prop :=
  ∀ n, P9309392473426412757.a n = A361795 n

end A361795

/-! ## A361795.P1906600197723444759

`A007590(A049472(2*n))/2`
-/

namespace A361795.P1906600197723444759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 (A049472 (2 * n)).toNat : ℚ) / 2

end

end A361795.P1906600197723444759

namespace A361795

/-- `A007590(A049472(2*n))/2` -/
def P1906600197723444759.Spec : Prop :=
  ∀ n, P1906600197723444759.a n = (A361795 n : ℚ)

end A361795

/-! ## A361795.P14583032953711549426

`A008130(A091087(n))`
-/

namespace A361795.P14583032953711549426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (A091087 n).toNat

end

end A361795.P14583032953711549426

namespace A361795

/-- `A008130(A091087(n))` -/
def P14583032953711549426.Spec : Prop :=
  ∀ n, P14583032953711549426.a n = A361795 n

end A361795

/-!
# A361797: Even numbers k which have fewer divisors than both neighboring odd numbers, i.e., tau(k) < min{tau(k-1), tau(k+1)}.

The programs for A361797, there is no canonical definition to state claims against.
-/

/-! ## A361797.P7276179135225944555

`filter[A075026(n), A323170(#)]`
-/

namespace A361797.P7276179135225944555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A361797.P7276179135225944555

/-! ## A361797.P5044544224096847988

`filter[A075025(n+1), A120325(#)]`
-/

namespace A361797.P5044544224096847988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A361797.P5044544224096847988

/-! ## A361797.P10994517931763562952

`filter[A075025(n+1), A323170(#)]`
-/

namespace A361797.P10994517931763562952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A361797.P10994517931763562952

/-! ## A361797.P13977096628804851130

`filter[A075025(n+1), A353525(#)]`
-/

namespace A361797.P13977096628804851130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A361797.P13977096628804851130

/-! ## A361797.P16511954362428041063

`filter[A075026(n), A059841(#)]`
-/

namespace A361797.P16511954362428041063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A361797.P16511954362428041063

/-! ## A361797.P6194791956544064403

`filter[A075026(n), A135528(#)]`
-/

namespace A361797.P6194791956544064403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A361797.P6194791956544064403

/-! ## A361797.P10719750582065921777

`filter[A075026(n), A260393(#)]`
-/

namespace A361797.P10719750582065921777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260393 (f1 j).toNat = 1) n)

end

end A361797.P10719750582065921777

/-! ## A361797.P7912817617692747224

`filter[A075026(n), A266591(#)]`
-/

namespace A361797.P7912817617692747224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A361797.P7912817617692747224

/-! ## A361797.P11481301872213963035

`filter[A075026(n), A267043(#)]`
-/

namespace A361797.P11481301872213963035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A361797.P11481301872213963035

/-! ## A361797.P13047783107330209565

`filter[A075025(n+1), A059841(#)]`
-/

namespace A361797.P13047783107330209565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A361797.P13047783107330209565

/-! ## A361797.P1921071937082936795

`filter[A075025(n+1), A135528(#)]`
-/

namespace A361797.P1921071937082936795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A361797.P1921071937082936795

/-! ## A361797.P5625084351319533133

`filter[A075025(n+1), A260393(#)]`
-/

namespace A361797.P5625084351319533133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260393 (f1 j).toNat = 1) n)

end

end A361797.P5625084351319533133

/-! ## A361797.P2120168568802054913

`filter[A075025(n+1), A266591(#)]`
-/

namespace A361797.P2120168568802054913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A361797.P2120168568802054913

/-! ## A361797.P16965472341932324280

`filter[A075025(n+1), A267043(#)]`
-/

namespace A361797.P16965472341932324280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A361797.P16965472341932324280

/-!
# A361798: Distinct sums of contiguous subsequences in A362040.

The programs for A361798, there is no canonical definition to state claims against.
-/

/-! ## A361798.P15924742346063691746

`lt[n, A263998(A332599(2*n+5))]`
-/

namespace A361798.P15924742346063691746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263998 (A332599 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A361798.P15924742346063691746

/-! ## A361798.P9650896008871464820

`lt[A003963(n+1), dr(A109282(2*(n+2)))]`
-/

namespace A361798.P9650896008871464820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A109282 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A361798.P9650896008871464820

/-! ## A361798.P17192306499278303252

`eq[char[A005117(n+5)], A161049(2*(n+2))]`
-/

namespace A361798.P17192306499278303252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161049 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A361798.P17192306499278303252

/-! ## A361798.P12618813350848971041

`lt[A293255(A082037(n)), A165416(n+1)]`
-/

namespace A361798.P12618813350848971041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293255 (A082037 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361798.P12618813350848971041

/-! ## A361798.P7460393822348584588

`lt[A325324(A284465(n)), A306555(n+1)]`
-/

namespace A361798.P7460393822348584588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325324 (A284465 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361798.P7460393822348584588

/-!
# A361799: Numbers which cannot be expressed as i^2 + j*k with i >= j >= k >= 0.

The programs for A361799, there is no canonical definition to state claims against.
-/

/-! ## A361799.P9960615371165866104

`eq[A263850(n), A395030(n)]`
-/

namespace A361799.P9960615371165866104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263850 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361799.P9960615371165866104

/-! ## A361799.P1014337326226735284

`eq[A330315(n), A395030(n)]`
-/

namespace A361799.P1014337326226735284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330315 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361799.P1014337326226735284

/-! ## A361799.P4550639310753838731

`eq[A330574(n), A395030(n)]`
-/

namespace A361799.P4550639310753838731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361799.P4550639310753838731

/-! ## A361799.P4495903881994165181

`eq[A078332(n+1), A395030(n)]`
-/

namespace A361799.P4495903881994165181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361799.P4495903881994165181

/-! ## A361799.P14965280780762119401

`eq[A156387(n), A395030(n)]`
-/

namespace A361799.P14965280780762119401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156387 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361799.P14965280780762119401

