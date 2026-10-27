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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
# A027600: Number of partitions of 4^n-1 into n-th powers.

The programs for A027600, there is no canonical definition to state claims against.
-/

/-! ## A027600.P5976366902267915860

`A027609(n+1)-1`
-/

namespace A027600.P5976366902267915860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027609 (n + 1) - 1

end

end A027600.P5976366902267915860

/-! ## A027600.P4631883869656965699

`A027601(n+1)-2`
-/

namespace A027600.P4631883869656965699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027601 (n + 1) - 2

end

end A027600.P4631883869656965699

/-! ## A027600.P5704813392407405776

`record[A027601(A143182(n))-2]`
-/

namespace A027600.P5704813392407405776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027601 (A143182 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027600.P5704813392407405776

/-! ## A027600.P10781188284580699878

`A057428(n+1)+A027609(n+1)`
-/

namespace A027600.P10781188284580699878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A027609 (n + 1)

end

end A027600.P10781188284580699878

/-! ## A027600.P13670646745565972536

`A153881(n+2)+A027609(n+1)`
-/

namespace A027600.P13670646745565972536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A027609 (n + 1)

end

end A027600.P13670646745565972536

/-!
# A027601: Number of partitions of 4^n into n-th powers.

The programs for A027601, there is no canonical definition to state claims against.
-/

/-! ## A027601.P10333771152909692656

`A027609(n+1)+1`
-/

namespace A027601.P10333771152909692656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027609 (n + 1) + 1

end

end A027601.P10333771152909692656

/-! ## A027601.P2997181211843006817

`A027600(n+1)+2`
-/

namespace A027601.P2997181211843006817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027600 (n + 1) + 2

end

end A027601.P2997181211843006817

/-! ## A027601.P3850162407974214343

`A259799(A167499(n+3))`
-/

namespace A027601.P3850162407974214343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (A167499 (n + 3)).toNat

end

end A027601.P3850162407974214343

/-! ## A027601.P8415455831202231584

`A259799(A155212(n)+13)`
-/

namespace A027601.P8415455831202231584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (A155212 n + 13).toNat

end

end A027601.P8415455831202231584

/-! ## A027601.P12766057345119835565

`A259799(A056000(n)+15)`
-/

namespace A027601.P12766057345119835565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (A056000 n + 15).toNat

end

end A027601.P12766057345119835565

/-!
# A027602: a(n) = n^3 + (n+1)^3 + (n+2)^3.

The programs for A027602, the canonical program `A027602.P2679377937091624113` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027602 has offset 0).

The definition of A027602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+(n+1)^3+(n+2)^3` (program `A027602.P2679377937091624113`, by `A027602.P2679377937091624113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027602.P2679377937091624113

`n^3+(n+1)^3+(n+2)^3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027602

/-- `n^3+(n+1)^3+(n+2)^3` -/
def P2679377937091624113.Spec : Prop :=
  ∀ n, (P2679377937091624113.a n : ℤ) = A027602 n

theorem P2679377937091624113.correct : P2679377937091624113.Spec := by
  intro n
  simp only [A027602]

end A027602

/-! ## A027602.P17278311595305645758

`9*∑[cot(abs(Δ[acot(n)]))]`
-/

namespace A027602.P17278311595305645758
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot |f2 (n + 1) - f2 n|

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027602.P17278311595305645758

namespace A027602

/-- `9*∑[cot(abs(Δ[acot(n)]))]` -/
def P17278311595305645758.Spec : Prop :=
  ∀ n, P17278311595305645758.a n = (A027602 n : ℝ)

end A027602

/-! ## A027602.P7285470894743570419

`3*(n+1)*or(2, (n+1)²)`
-/

namespace A027602.P7285470894743570419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1) * Nat.lor 2 ((n + 1) ^ 2))

end

end A027602.P7285470894743570419

namespace A027602

/-- `3*(n+1)*or(2, (n+1)²)` -/
def P7285470894743570419.Spec : Prop :=
  ∀ n, (P7285470894743570419.a n : ℤ) = A027602 n

end A027602

/-! ## A027602.P4305079512886505960

`3*(n+1)*xor(2, (n+1)²)`
-/

namespace A027602.P4305079512886505960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1) * Nat.xor 2 ((n + 1) ^ 2))

end

end A027602.P4305079512886505960

namespace A027602

/-- `3*(n+1)*xor(2, (n+1)²)` -/
def P4305079512886505960.Spec : Prop :=
  ∀ n, (P4305079512886505960.a n : ℤ) = A027602 n

end A027602

/-! ## A027602.P13532496279959402067

`9*∑[a(n-1)+2*n]` with `a(0)=1`
-/

namespace A027602.P13532496279959402067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027602.P13532496279959402067

namespace A027602

/-- `9*∑[a(n-1)+2*n]` -/
def P13532496279959402067.Spec : Prop :=
  ∀ n, (P13532496279959402067.a n : ℤ) = A027602 n

end A027602

/-! ## A027602.P874188009960910563

`9*∑[∑[ogf((1+x^2)/(1-2x+x^2))]]`
-/

namespace A027602.P874188009960910563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027602.P874188009960910563

namespace A027602

/-- `9*∑[∑[ogf((1+x^2)/(1-2x+x^2))]]` -/
def P874188009960910563.Spec : Prop :=
  ∀ n, P874188009960910563.a n = A027602 n

end A027602

/-! ## A027602.P5487928207464806877

`(2*n+n+3)*or(2, ∑[2*n+1])`
-/

namespace A027602.P5487928207464806877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + (n + 3)) * Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027602.P5487928207464806877

namespace A027602

/-- `(2*n+n+3)*or(2, ∑[2*n+1])` -/
def P5487928207464806877.Spec : Prop :=
  ∀ n, (P5487928207464806877.a n : ℤ) = A027602 n

end A027602

/-! ## A027602.P13830875931050597208

`(2*n+n+3)*xor(2, ∑[2*n+1])`
-/

namespace A027602.P13830875931050597208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + (n + 3)) * Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027602.P13830875931050597208

namespace A027602

/-- `(2*n+n+3)*xor(2, ∑[2*n+1])` -/
def P13830875931050597208.Spec : Prop :=
  ∀ n, (P13830875931050597208.a n : ℤ) = A027602 n

end A027602

/-! ## A027602.P2515452810211597792

`(2*n+n+3)*(lcm(n, n+1)+n+3)`
-/

namespace A027602.P2515452810211597792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + (n + 3)) * (Nat.lcm n (n + 1) + (n + 3))

end

end A027602.P2515452810211597792

namespace A027602

/-- `(2*n+n+3)*(lcm(n, n+1)+n+3)` -/
def P2515452810211597792.Spec : Prop :=
  ∀ n, (P2515452810211597792.a n : ℤ) = A027602 n

end A027602

/-! ## A027602.P10612048561653314535

`9*A167875(n)`
-/

namespace A027602.P10612048561653314535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A167875 n

end

end A027602.P10612048561653314535

namespace A027602

/-- `9*A167875(n)` -/
def P10612048561653314535.Spec : Prop :=
  ∀ n, P10612048561653314535.a n = A027602 n

end A027602

/-! ## A027602.P12181032985992325486

`3*A054602(n+1)`
-/

namespace A027602.P12181032985992325486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A054602 (n + 1)

end

end A027602.P12181032985992325486

namespace A027602

/-- `3*A054602(n+1)` -/
def P12181032985992325486.Spec : Prop :=
  ∀ n, P12181032985992325486.a n = A027602 n

theorem P12181032985992325486.correct : P12181032985992325486.Spec := by
  intro n
  simp only [A027602, Nat.add_sub_cancel, A027602.P12181032985992325486.a, A027602.P2679377937091624113.a, A054602, A054602.P284734914928046851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027602

/-! ## A027602.P5004361159751106542

`3*(A094792(n)+1)`
-/

namespace A027602.P5004361159751106542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A094792 n + 1)

end

end A027602.P5004361159751106542

namespace A027602

/-- `3*(A094792(n)+1)` -/
def P5004361159751106542.Spec : Prop :=
  ∀ n, P5004361159751106542.a n = A027602 n

theorem P5004361159751106542.correct : P5004361159751106542.Spec := by
  intro n
  simp only [A027602, Nat.add_sub_cancel, A027602.P5004361159751106542.a, A027602.P2679377937091624113.a, A094792, A094792.P13284551861407983223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027602

/-! ## A027602.P17009362740905800822

`9*(A064999(n)+n)`
-/

namespace A027602.P17009362740905800822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A064999 n + (n : ℤ))

end

end A027602.P17009362740905800822

namespace A027602

/-- `9*(A064999(n)+n)` -/
def P17009362740905800822.Spec : Prop :=
  ∀ n, P17009362740905800822.a n = A027602 n

end A027602

/-! ## A027602.P17718134100699658700

`3*sqrt(A325173(n+1))`
-/

namespace A027602.P17718134100699658700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (A325173 (n + 1) : ℝ)

end

end A027602.P17718134100699658700

namespace A027602

/-- `3*sqrt(A325173(n+1))` -/
def P17718134100699658700.Spec : Prop :=
  ∀ n, P17718134100699658700.a n = (A027602 n : ℝ)

end A027602

/-! ## A027602.P8572965296440452609

`3/4*A292022(n+1)`
-/

namespace A027602.P8572965296440452609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A292022 (n + 1) : ℚ)

end

end A027602.P8572965296440452609

namespace A027602

/-- `3/4*A292022(n+1)` -/
def P8572965296440452609.Spec : Prop :=
  ∀ n, P8572965296440452609.a n = (A027602 n : ℚ)

theorem P8572965296440452609.correct : P8572965296440452609.Spec := by
  intro n
  simp only [A027602, Nat.add_sub_cancel, A027602.P8572965296440452609.a, A027602.P2679377937091624113.a, A292022, A292022.P2362487258136494988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027602

/-! ## A027602.P602550827216683450

`(n+1)*(A106648(n)+1)`
-/

namespace A027602.P602550827216683450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A106648 n + 1)

end

end A027602.P602550827216683450

namespace A027602

/-- `(n+1)*(A106648(n)+1)` -/
def P602550827216683450.Spec : Prop :=
  ∀ n, P602550827216683450.a n = A027602 n

theorem P602550827216683450.correct : P602550827216683450.Spec := by
  intro n
  simp only [A027602, Nat.add_sub_cancel, A027602.P602550827216683450.a, A027602.P2679377937091624113.a, A106648, A106648.P11564833047502599682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027602

/-! ## A027602.P2132723120223501635

`3*(A034262(n+1)+n+1)`
-/

namespace A027602.P2132723120223501635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A034262 (n + 1) + (n + 1 : ℤ))

end

end A027602.P2132723120223501635

namespace A027602

/-- `3*(A034262(n+1)+n+1)` -/
def P2132723120223501635.Spec : Prop :=
  ∀ n, P2132723120223501635.a n = A027602 n

theorem P2132723120223501635.correct : P2132723120223501635.Spec := by
  intro n
  simp only [A027602, Nat.add_sub_cancel, A027602.P2132723120223501635.a, A027602.P2679377937091624113.a, A034262, A034262.P1986901683698587680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027602

/-! ## A027602.P12372059743136946070

`3*(A079908(n+1)-(n+1))`
-/

namespace A027602.P12372059743136946070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A079908 (n + 1) - (n + 1 : ℤ))

end

end A027602.P12372059743136946070

namespace A027602

/-- `3*(A079908(n+1)-(n+1))` -/
def P12372059743136946070.Spec : Prop :=
  ∀ n, P12372059743136946070.a n = A027602 n

end A027602

/-! ## A027602.P14335311078431010919

`9*A006527(n+1)`
-/

namespace A027602.P14335311078431010919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A006527 (n + 1)

end

end A027602.P14335311078431010919

namespace A027602

/-- `9*A006527(n+1)` -/
def P14335311078431010919.Spec : Prop :=
  ∀ n, P14335311078431010919.a n = A027602 n

end A027602

/-! ## A027602.P5368293075404131159

`A008585(n+1)*A059100(n+1)`
-/

namespace A027602.P5368293075404131159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1) * A059100 (n + 1)

end

end A027602.P5368293075404131159

namespace A027602

/-- `A008585(n+1)*A059100(n+1)` -/
def P5368293075404131159.Spec : Prop :=
  ∀ n, P5368293075404131159.a n = A027602 n

theorem P5368293075404131159.correct : P5368293075404131159.Spec := by
  intro n
  simp only [A027602, Nat.add_sub_cancel, A027602.P5368293075404131159.a, A027602.P2679377937091624113.a, A008585, A008585.P13732812384316341435.a, A059100, A059100.P4969484960020007252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027602

/-!
# A027603: a(n) = n^3 + (n+1)^3 + (n+2)^3 + (n+3)^3.

The programs for A027603, the canonical program `A027603.P5188916353772243150` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027603 has offset 0).

The definition of A027603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+(n+1)^3+(n+2)^3+(n+3)^3` (program `A027603.P5188916353772243150`, by `A027603.P5188916353772243150.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027603.P14428741637681007839

`4*n^3+18*n²+42*n+36`
-/

namespace A027603.P14428741637681007839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 3 + 18 * n ^ 2 + 42 * n + 36

end

end A027603.P14428741637681007839

namespace A027603

/-- `4*n^3+18*n²+42*n+36` -/
def P14428741637681007839.Spec : Prop :=
  ∀ n, (P14428741637681007839.a n : ℤ) = A027603 n

theorem P14428741637681007839.correct : P14428741637681007839.Spec := by
  intro n
  simp only [A027603, Nat.add_sub_cancel, A027603.P14428741637681007839.a, A027603.P5188916353772243150.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027603

/-! ## A027603.P5188916353772243150

`n^3+(n+1)^3+(n+2)^3+(n+3)^3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027603

/-- `n^3+(n+1)^3+(n+2)^3+(n+3)^3` -/
def P5188916353772243150.Spec : Prop :=
  ∀ n, (P5188916353772243150.a n : ℤ) = A027603 n

theorem P5188916353772243150.correct : P5188916353772243150.Spec := by
  intro n
  simp only [A027603]

end A027603

/-! ## A027603.P29729443942333542

`4*A173965(n+2)`
-/

namespace A027603.P29729443942333542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A173965 (n + 2)

end

end A027603.P29729443942333542

namespace A027603

/-- `4*A173965(n+2)` -/
def P29729443942333542.Spec : Prop :=
  ∀ n, P29729443942333542.a n = A027603 n

end A027603

/-! ## A027603.P15827097838390165765

`A027689(n+1)*A016825(n+1)`
-/

namespace A027603.P15827097838390165765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (n + 1) * A016825 (n + 1)

end

end A027603.P15827097838390165765

namespace A027603

/-- `A027689(n+1)*A016825(n+1)` -/
def P15827097838390165765.Spec : Prop :=
  ∀ n, P15827097838390165765.a n = A027603 n

theorem P15827097838390165765.correct : P15827097838390165765.Spec := by
  intro n
  simp only [A027603, Nat.add_sub_cancel, A027603.P15827097838390165765.a, A027603.P5188916353772243150.a, A016825, A016825.P4712696052905976233.a, A027689, A027689.P1842390006618827741.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027603

/-! ## A027603.P14422329316339282602

`(A000217(n+1)+2)*(8*n+12)`
-/

namespace A027603.P14422329316339282602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) + 2) * (8 * n + 12 : ℤ)

end

end A027603.P14422329316339282602

namespace A027603

/-- `(A000217(n+1)+2)*(8*n+12)` -/
def P14422329316339282602.Spec : Prop :=
  ∀ n, P14422329316339282602.a n = A027603 n

theorem P14422329316339282602.correct : P14422329316339282602.Spec := by
  intro n
  simp only [A027603, Nat.add_sub_cancel, A027603.P14422329316339282602.a, A027603.P5188916353772243150.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027603

/-! ## A027603.P15404250682999012772

`(8*n+12)*A133263(n+1)`
-/

namespace A027603.P15404250682999012772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 12 : ℤ) * A133263 (n + 1)

end

end A027603.P15404250682999012772

namespace A027603

/-- `(8*n+12)*A133263(n+1)` -/
def P15404250682999012772.Spec : Prop :=
  ∀ n, P15404250682999012772.a n = A027603 n

end A027603

/-! ## A027603.P2531511396447295313

`(A005563(n+1)-(n-3))*(4*n+6)`
-/

namespace A027603.P2531511396447295313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005563 (n + 1) - ((n : ℤ) - 3)) * (4 * n + 6 : ℤ)

end

end A027603.P2531511396447295313

namespace A027603

/-- `(A005563(n+1)-(n-3))*(4*n+6)` -/
def P2531511396447295313.Spec : Prop :=
  ∀ n, P2531511396447295313.a n = A027603 n

theorem P2531511396447295313.correct : P2531511396447295313.Spec := by
  intro n
  simp only [A027603, Nat.add_sub_cancel, A027603.P2531511396447295313.a, A027603.P5188916353772243150.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027603

/-! ## A027603.P12492172655275520833

`(A028387(n+1)-A046691(n+1))*A017113(n+1)`
-/

namespace A027603.P12492172655275520833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028387 (n + 1) - A046691 (n + 1)) * A017113 (n + 1)

end

end A027603.P12492172655275520833

namespace A027603

/-- `(A028387(n+1)-A046691(n+1))*A017113(n+1)` -/
def P12492172655275520833.Spec : Prop :=
  ∀ n, P12492172655275520833.a n = A027603 n

theorem P12492172655275520833.correct : P12492172655275520833.Spec := by
  intro n
  simp only [A027603, Nat.add_sub_cancel, A027603.P12492172655275520833.a, A027603.P5188916353772243150.a, A017113, A017113.P3624354701485579327.a, A028387, A028387.P5954590561330899546.a, A046691, A046691.P4440521238781218067.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027603

/-! ## A027603.P5117374330118499215

`A089071(n+3)*(8*n+12)`
-/

namespace A027603.P5117374330118499215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (n + 3) * (8 * n + 12 : ℤ)

end

end A027603.P5117374330118499215

namespace A027603

/-- `A089071(n+3)*(8*n+12)` -/
def P5117374330118499215.Spec : Prop :=
  ∀ n, P5117374330118499215.a n = A027603 n

end A027603

/-! ## A027603.P14843336162264445003

`Δ[A034111((n+1)²)]`
-/

namespace A027603.P14843336162264445003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034111 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027603.P14843336162264445003

namespace A027603

/-- `Δ[A034111((n+1)²)]` -/
def P14843336162264445003.Spec : Prop :=
  ∀ n, P14843336162264445003.a n = A027603 n

end A027603

/-!
# A027604: a(n) = n^3 + (n+1)^3 + (n+2)^3 + (n+3)^3 + (n+4)^3.

The programs for A027604, the canonical program `A027604.P17635356302932696174` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027604 has offset 0).

The definition of A027604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+(n+1)^3+(n+2)^3+(n+3)^3+(n+4)^3` (program `A027604.P17635356302932696174`, by `A027604.P17635356302932696174.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027604.P8797757284165465225

`5*((n+6)*n+18)*n+100`
-/

namespace A027604.P8797757284165465225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * ((n + 6) * n + 18) * n + 100

end

end A027604.P8797757284165465225

namespace A027604

/-- `5*((n+6)*n+18)*n+100` -/
def P8797757284165465225.Spec : Prop :=
  ∀ n, (P8797757284165465225.a n : ℤ) = A027604 n

theorem P8797757284165465225.correct : P8797757284165465225.Spec := by
  intro n
  simp only [A027604, Nat.add_sub_cancel, A027604.P8797757284165465225.a, A027604.P17635356302932696174.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027604

/-! ## A027604.P17635356302932696174

`n^3+(n+1)^3+(n+2)^3+(n+3)^3+(n+4)^3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027604

/-- `n^3+(n+1)^3+(n+2)^3+(n+3)^3+(n+4)^3` -/
def P17635356302932696174.Spec : Prop :=
  ∀ n, (P17635356302932696174.a n : ℤ) = A027604 n

theorem P17635356302932696174.correct : P17635356302932696174.Spec := by
  intro n
  simp only [A027604]

end A027604

/-! ## A027604.P9156239841194680222

`A008587(n+2)*A114949(n+2)`
-/

namespace A027604.P9156239841194680222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (n + 2) * A114949 (n + 2)

end

end A027604.P9156239841194680222

namespace A027604

/-- `A008587(n+2)*A114949(n+2)` -/
def P9156239841194680222.Spec : Prop :=
  ∀ n, P9156239841194680222.a n = A027604 n

theorem P9156239841194680222.correct : P9156239841194680222.Spec := by
  intro n
  simp only [A027604, Nat.add_sub_cancel, A027604.P9156239841194680222.a, A027604.P17635356302932696174.a, A008587, A008587.P15238079008432610842.a, A114949, A114949.P2861877640951518410.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027604

/-! ## A027604.P7600034117705968693

`(n+2)*(A027578(n)+20)`
-/

namespace A027604.P7600034117705968693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A027578 n + 20)

end

end A027604.P7600034117705968693

namespace A027604

/-- `(n+2)*(A027578(n)+20)` -/
def P7600034117705968693.Spec : Prop :=
  ∀ n, P7600034117705968693.a n = A027604 n

theorem P7600034117705968693.correct : P7600034117705968693.Spec := by
  intro n
  simp only [A027604, Nat.add_sub_cancel, A027604.P7600034117705968693.a, A027604.P17635356302932696174.a, A027578, A027578.P828493611519042118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027604

/-! ## A027604.P3794863853958708909

`A008706(n+2)*A114949(n+2)`
-/

namespace A027604.P3794863853958708909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (n + 2) * A114949 (n + 2)

end

end A027604.P3794863853958708909

namespace A027604

/-- `A008706(n+2)*A114949(n+2)` -/
def P3794863853958708909.Spec : Prop :=
  ∀ n, P3794863853958708909.a n = A027604 n

end A027604

/-! ## A027604.P12173390323065366874

`Δ[A067724(∑[n+1]+2)]`
-/

namespace A027604.P12173390323065366874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067724 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027604.P12173390323065366874

namespace A027604

/-- `Δ[A067724(∑[n+1]+2)]` -/
def P12173390323065366874.Spec : Prop :=
  ∀ n, P12173390323065366874.a n = A027604 n

end A027604

/-! ## A027604.P13971211750729640553

`Δ[A162316(C(n+2, 2)+1)]`
-/

namespace A027604.P13971211750729640553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162316 (Nat.choose (n + 2) 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027604.P13971211750729640553

namespace A027604

/-- `Δ[A162316(C(n+2, 2)+1)]` -/
def P13971211750729640553.Spec : Prop :=
  ∀ n, P13971211750729640553.a n = A027604 n

theorem P13971211750729640553.correct : P13971211750729640553.Spec := by
  intro n
  simp only [A027604, Nat.add_sub_cancel, A027604.P13971211750729640553.f1, A027604.P13971211750729640553.a, A027604.P17635356302932696174.a, A162316, A162316.P13193295874970152137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027604

/-! ## A027604.P8425310650689577528

`Δ[A134593(C(n+2, 2)+2)]`
-/

namespace A027604.P8425310650689577528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134593 (Nat.choose (n + 2) 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027604.P8425310650689577528

namespace A027604

/-- `Δ[A134593(C(n+2, 2)+2)]` -/
def P8425310650689577528.Spec : Prop :=
  ∀ n, P8425310650689577528.a n = A027604 n

theorem P8425310650689577528.correct : P8425310650689577528.Spec := by
  intro n
  simp only [A027604, Nat.add_sub_cancel, A027604.P8425310650689577528.f1, A027604.P8425310650689577528.a, A027604.P17635356302932696174.a, A134593, A134593.P12712515493315309902.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027604

/-! ## A027604.P6008958426584024166

`Δ[A027578(A000124(n+1))]`
-/

namespace A027604.P6008958426584024166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027578 (A000124 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027604.P6008958426584024166

namespace A027604

/-- `Δ[A027578(A000124(n+1))]` -/
def P6008958426584024166.Spec : Prop :=
  ∀ n, P6008958426584024166.a n = A027604 n

end A027604

/-! ## A027604.P9071489736885032247

`Δ[5*A028566(A000096(n))]`
-/

namespace A027604.P9071489736885032247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A028566 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027604.P9071489736885032247

namespace A027604

/-- `Δ[5*A028566(A000096(n))]` -/
def P9071489736885032247.Spec : Prop :=
  ∀ n, P9071489736885032247.a n = A027604 n

end A027604

/-!
# A027608: Expansion of 1/((1-x)*(1-2*x)^4).

The programs for A027608, the canonical program `A027608.P891278293252095819` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027608 has offset 0).

The definition of A027608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-9x+32x^2-56x^3+48x^4-16x^5))` (program `A027608.P891278293252095819`, by `A027608.P891278293252095819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027608.P17551729949365337472

`n/3*(n²+3*n+8)*2^n+1`
-/

namespace A027608.P17551729949365337472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (n ^ 2 + 3 * n + 8 : ℚ) * (2 ^ n : ℚ) + 1

end

end A027608.P17551729949365337472

namespace A027608

/-- `n/3*(n²+3*n+8)*2^n+1` -/
def P17551729949365337472.Spec : Prop :=
  ∀ n, P17551729949365337472.a n = (A027608 n : ℚ)

end A027608

/-! ## A027608.P891278293252095819

`ogf(1/(1-9x+32x^2-56x^3+48x^4-16x^5))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027608

/-- `ogf(1/(1-9x+32x^2-56x^3+48x^4-16x^5))` -/
def P891278293252095819.Spec : Prop :=
  ∀ n, P891278293252095819.a n = A027608 n

theorem P891278293252095819.correct : P891278293252095819.Spec := by
  intro n
  simp only [A027608]

end A027608

/-! ## A027608.P11823951643524465748

`∑[2^n*C(n+3, 3)]`
-/

namespace A027608.P11823951643524465748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.choose (n + 3) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027608.P11823951643524465748

namespace A027608

/-- `∑[2^n*C(n+3, 3)]` -/
def P11823951643524465748.Spec : Prop :=
  ∀ n, (P11823951643524465748.a n : ℤ) = A027608 n

end A027608

/-! ## A027608.P963161348136591937

`∑[∑[A001794(n)]]`
-/

namespace A027608.P963161348136591937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001794 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027608.P963161348136591937

namespace A027608

/-- `∑[∑[A001794(n)]]` -/
def P963161348136591937.Spec : Prop :=
  ∀ n, P963161348136591937.a n = A027608 n

end A027608

/-! ## A027608.P8256220194515540233

`∑[A001789(n+3)]`
-/

namespace A027608.P8256220194515540233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001789 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027608.P8256220194515540233

namespace A027608

/-- `∑[A001789(n+3)]` -/
def P8256220194515540233.Spec : Prop :=
  ∀ n, P8256220194515540233.a n = A027608 n

end A027608

/-! ## A027608.P17890833260951574942

`∑[∑[n+1]*A001792(n+1)]/3`
-/

namespace A027608.P17890833260951574942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A001792 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A027608.P17890833260951574942

namespace A027608

/-- `∑[∑[n+1]*A001792(n+1)]/3` -/
def P17890833260951574942.Spec : Prop :=
  ∀ n, P17890833260951574942.a n = (A027608 n : ℚ)

end A027608

/-! ## A027608.P7535792368466728516

`∑[∑[∑[2*(n+1)]]*A000079(n)]/2`
-/

namespace A027608.P7535792368466728516
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A027608.P7535792368466728516

namespace A027608

/-- `∑[∑[∑[2*(n+1)]]*A000079(n)]/2` -/
def P7535792368466728516.Spec : Prop :=
  ∀ n, P7535792368466728516.a n = (A027608 n : ℚ)

end A027608

/-! ## A027608.P15835542361061898060

`∑[A290026(n+3)]/4`
-/

namespace A027608.P15835542361061898060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290026 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A027608.P15835542361061898060

namespace A027608

/-- `∑[A290026(n+3)]/4` -/
def P15835542361061898060.Spec : Prop :=
  ∀ n, P15835542361061898060.a n = (A027608 n : ℚ)

end A027608

/-! ## A027608.P10815415883162648394

`∑[2*(n+3)*a(n-1)/n]` with `a(0)=1`
-/

namespace A027608.P10815415883162648394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * ((n + 3 : ℚ) * f1 (n - 1) / (n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027608.P10815415883162648394

namespace A027608

/-- `∑[2*(n+3)*a(n-1)/n]` -/
def P10815415883162648394.Spec : Prop :=
  ∀ n, P10815415883162648394.a n = (A027608 n : ℚ)

end A027608

/-! ## A027608.P5759364102494936480

`A193845(A167614(n+2))`
-/

namespace A027608.P5759364102494936480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 (A167614 (n + 2)).toNat

end

end A027608.P5759364102494936480

namespace A027608

/-- `A193845(A167614(n+2))` -/
def P5759364102494936480.Spec : Prop :=
  ∀ n, P5759364102494936480.a n = A027608 n

end A027608

/-! ## A027608.P12888398024458651614

`A193845(eq[3, A002262(n)])`
-/

namespace A027608.P12888398024458651614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027608.P12888398024458651614

namespace A027608

/-- `A193845(eq[3, A002262(n)])` -/
def P12888398024458651614.Spec : Prop :=
  ∀ n, P12888398024458651614.a n = A027608 n

end A027608

/-! ## A027608.P5568245799103015418

`A193844(∑[n+4]+2)`
-/

namespace A027608.P5568245799103015418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A027608.P5568245799103015418

namespace A027608

/-- `A193844(∑[n+4]+2)` -/
def P5568245799103015418.Spec : Prop :=
  ∀ n, P5568245799103015418.a n = A027608 n

end A027608

/-! ## A027608.P16782456982113300382

`A193816(∑[n+3]+n+3)`
-/

namespace A027608.P16782456982113300382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193816 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A027608.P16782456982113300382

namespace A027608

/-- `A193816(∑[n+3]+n+3)` -/
def P16782456982113300382.Spec : Prop :=
  ∀ n, P16782456982113300382.a n = A027608 n

end A027608

/-!
# A027609: Least non-partition into positive n-th powers.

The programs for A027609, there is no canonical definition to state claims against.
-/

/-! ## A027609.P10694823272756742514

`A027601(n+1)-1`
-/

namespace A027609.P10694823272756742514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027601 (n + 1) - 1

end

end A027609.P10694823272756742514

/-! ## A027609.P5166090272664530157

`record[A027601(A143182(n))-1]`
-/

namespace A027609.P5166090272664530157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027601 (A143182 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027609.P5166090272664530157

/-! ## A027609.P17924262284936402496

`A057428(n+1)+A027601(n+1)`
-/

namespace A027609.P17924262284936402496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A027601 (n + 1)

end

end A027609.P17924262284936402496

/-! ## A027609.P1682458318372673140

`A134824(n+2)+A027601(n+1)`
-/

namespace A027609.P1682458318372673140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A027601 (n + 1)

end

end A027609.P1682458318372673140

/-! ## A027609.P1006762998765582504

`A153881(n+2)+A027601(n+1)`
-/

namespace A027609.P1006762998765582504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A027601 (n + 1)

end

end A027609.P1006762998765582504

/-!
# A027610: The number of Apollonian networks (planar 3-trees) with n+3 vertices.

The programs for A027610, there is no canonical definition to state claims against.
-/

/-! ## A027610.P7571911437479575607

`A371350(n+1)+A371351(n+1)`
-/

namespace A027610.P7571911437479575607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371350 (n + 1) + A371351 (n + 1)

end

end A027610.P7571911437479575607

/-! ## A027610.P7786959937988189608

`A007173(n+1)-A371350(n+1)`
-/

namespace A027610.P7786959937988189608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007173 (n + 1) - A371350 (n + 1)

end

end A027610.P7786959937988189608

/-! ## A027610.P11188272392085195431

`(A007173(n+1)+A371351(n+1))/2`
-/

namespace A027610.P11188272392085195431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007173 (n + 1) + A371351 (n + 1) : ℚ) / 2

end

end A027610.P11188272392085195431

/-! ## A027610.P7738249309417497316

`A289440(A371351(n+1)+A007173(n+1))`
-/

namespace A027610.P7738249309417497316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A371351 (n + 1) + A007173 (n + 1)).toNat

end

end A027610.P7738249309417497316

/-!
# A027611: Denominator of n * n-th harmonic number.

The programs for A027611, the canonical program `A027611.P15639940923571817069` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027611 has offset 1).

The definition of A027611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027611.P5074658420541538598

`A043529(n)*A096620(n)`
-/

namespace A027611.P5074658420541538598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n * A096620 n

end

end A027611.P5074658420541538598

namespace A027611

/-- `A043529(n)*A096620(n)` -/
def P5074658420541538598.Spec : Prop :=
  ∀ n, P5074658420541538598.a n = A027611 (n + 1)

end A027611

/-! ## A027611.P14643191304802831419

`lcm(A082908(n), A096620(n))`
-/

namespace A027611.P14643191304802831419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082908 n) (A096620 n)

end

end A027611.P14643191304802831419

namespace A027611

/-- `lcm(A082908(n), A096620(n))` -/
def P14643191304802831419.Spec : Prop :=
  ∀ n, (P14643191304802831419.a n : ℤ) = A027611 (n + 1)

end A027611

/-! ## A027611.P4657461234796576560

`A014963(A048896(n))*A096620(n)`
-/

namespace A027611.P4657461234796576560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A048896 n).toNat * A096620 n

end

end A027611.P4657461234796576560

namespace A027611

/-- `A014963(A048896(n))*A096620(n)` -/
def P4657461234796576560.Spec : Prop :=
  ∀ n, P4657461234796576560.a n = A027611 (n + 1)

end A027611

/-! ## A027611.P124166677159340292

`A020639(A092505(n+1))*A096620(n)`
-/

namespace A027611.P124166677159340292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A092505 (n + 1)).toNat * A096620 n

end

end A027611.P124166677159340292

namespace A027611

/-- `A020639(A092505(n+1))*A096620(n)` -/
def P124166677159340292.Spec : Prop :=
  ∀ n, P124166677159340292.a n = A027611 (n + 1)

end A027611

/-! ## A027611.P6544187634893193378

`A092505(A092505(n+1)+1)*A096620(n)`
-/

namespace A027611.P6544187634893193378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092505 (A092505 (n + 1) + 1).toNat * A096620 n

end

end A027611.P6544187634893193378

namespace A027611

/-- `A092505(A092505(n+1)+1)*A096620(n)` -/
def P6544187634893193378.Spec : Prop :=
  ∀ n, P6544187634893193378.a n = A027611 (n + 1)

end A027611

/-! ## A027611.P15639940923571817069

`lcm(n+1, A002805(n+1))/(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027611

/-- `lcm(n+1, A002805(n+1))/(n+1)` -/
def P15639940923571817069.Spec : Prop :=
  ∀ n, P15639940923571817069.a n = (A027611 (n + 1) : ℚ)

end A027611

/-! ## A027611.P7808602253225752358

`A002805(n+1)/(n+1)*A120263(n+1)`
-/

namespace A027611.P7808602253225752358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) / (n + 1 : ℚ) * (A120263 (n + 1) : ℚ)

end

end A027611.P7808602253225752358

namespace A027611

/-- `A002805(n+1)/(n+1)*A120263(n+1)` -/
def P7808602253225752358.Spec : Prop :=
  ∀ n, P7808602253225752358.a n = (A027611 (n + 1) : ℚ)

end A027611

/-! ## A027611.P3912472110389555897

`A002805(n+1)/gcd(A000027(n+1), A002805(n+1))`
-/

namespace A027611.P3912472110389555897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A002805 (n + 1)) : ℚ)

end

end A027611.P3912472110389555897

namespace A027611

/-- `A002805(n+1)/gcd(A000027(n+1), A002805(n+1))` -/
def P3912472110389555897.Spec : Prop :=
  ∀ n, P3912472110389555897.a n = (A027611 (n + 1) : ℚ)

end A027611

/-! ## A027611.P10760044041934418246

`A002944(n+1)/gcd(A002944(n+1), A025529(n+1))`
-/

namespace A027611.P10760044041934418246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (Int.gcd (A002944 (n + 1)) (A025529 (n + 1)) : ℚ)

end

end A027611.P10760044041934418246

namespace A027611

/-- `A002944(n+1)/gcd(A002944(n+1), A025529(n+1))` -/
def P10760044041934418246.Spec : Prop :=
  ∀ n, P10760044041934418246.a n = (A027611 (n + 1) : ℚ)

end A027611

/-! ## A027611.P14035784131678354521

`A213999(∑[n+2]-2)`
-/

namespace A027611.P14035784131678354521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213999 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A027611.P14035784131678354521

namespace A027611

/-- `A213999(∑[n+2]-2)` -/
def P14035784131678354521.Spec : Prop :=
  ∀ n, P14035784131678354521.a n = A027611 (n + 1)

end A027611

/-!
# A027612: Numerator of 1/n + 2/(n-1) + 3/(n-2) + ... + (n-1)/2 + n.

The programs for A027612, the canonical program `A027612.P6155522806255221843` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027612 has offset 1).

The definition of A027612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027612.P3598794254265051080

`A064169(n+2)*A120263(n+2)`
-/

namespace A027612.P3598794254265051080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064169 (n + 2) * A120263 (n + 2)

end

end A027612.P3598794254265051080

namespace A027612

/-- `A064169(n+2)*A120263(n+2)` -/
def P3598794254265051080.Spec : Prop :=
  ∀ n, P3598794254265051080.a n = A027612 (n + 1)

end A027612

/-! ## A027612.P9015530409490340718

`(A001008(n+2)-A002805(n+2))*A120263(n+2)`
-/

namespace A027612.P9015530409490340718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 2) - A002805 (n + 2)) * A120263 (n + 2)

end

end A027612.P9015530409490340718

namespace A027612

/-- `(A001008(n+2)-A002805(n+2))*A120263(n+2)` -/
def P9015530409490340718.Spec : Prop :=
  ∀ n, P9015530409490340718.a n = A027612 (n + 1)

end A027612

/-! ## A027612.P5285064209734716358

`A096617(n+2)-A002805(n+2)*A120263(n+2)`
-/

namespace A027612.P5285064209734716358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096617 (n + 2) - A002805 (n + 2) * A120263 (n + 2)

end

end A027612.P5285064209734716358

namespace A027612

/-- `A096617(n+2)-A002805(n+2)*A120263(n+2)` -/
def P5285064209734716358.Spec : Prop :=
  ∀ n, P5285064209734716358.a n = A027612 (n + 1)

end A027612

/-! ## A027612.P11966620952541817135

`A064169(n+2)/A001008(n+2)*A096617(n+2)`
-/

namespace A027612.P11966620952541817135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064169 (n + 2) : ℚ) / (A001008 (n + 2) : ℚ) * (A096617 (n + 2) : ℚ)

end

end A027612.P11966620952541817135

namespace A027612

/-- `A064169(n+2)/A001008(n+2)*A096617(n+2)` -/
def P11966620952541817135.Spec : Prop :=
  ∀ n, P11966620952541817135.a n = (A027612 (n + 1) : ℚ)

end A027612

/-! ## A027612.P17997722481317517021

`A027457(n+2)/A110566(n+2)*A120263(n+2)`
-/

namespace A027612.P17997722481317517021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027457 (n + 2) : ℚ) / (A110566 (n + 2) : ℚ) * (A120263 (n + 2) : ℚ)

end

end A027612.P17997722481317517021

namespace A027612

/-- `A027457(n+2)/A110566(n+2)*A120263(n+2)` -/
def P17997722481317517021.Spec : Prop :=
  ∀ n, P17997722481317517021.a n = (A027612 (n + 1) : ℚ)

end A027612

/-! ## A027612.P3428337950041239821

`A096617(n+2)-lcm(A000265(n+2), A002805(n+2))`
-/

namespace A027612.P3428337950041239821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096617 (n + 2) - (Int.lcm (A000265 (n + 2)) (A002805 (n + 2)) : ℤ)

end

end A027612.P3428337950041239821

namespace A027612

/-- `A096617(n+2)-lcm(A000265(n+2), A002805(n+2))` -/
def P3428337950041239821.Spec : Prop :=
  ∀ n, P3428337950041239821.a n = A027612 (n + 1)

end A027612

/-! ## A027612.P6155522806255221843

`A081530(n+1)/gcd(A003418(n), A081530(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027612

/-- `A081530(n+1)/gcd(A003418(n), A081530(n+1))` -/
def P6155522806255221843.Spec : Prop :=
  ∀ n, P6155522806255221843.a n = (A027612 (n + 1) : ℚ)

end A027612

/-! ## A027612.P2785629065851272176

`A081530(n+1)/A003418(n+1)*A027611(n+2)`
-/

namespace A027612.P2785629065851272176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081530 (n + 1) : ℚ) / (A003418 (n + 1) : ℚ) * (A027611 (n + 2) : ℚ)

end

end A027612.P2785629065851272176

namespace A027612

/-- `A081530(n+1)/A003418(n+1)*A027611(n+2)` -/
def P2785629065851272176.Spec : Prop :=
  ∀ n, P2785629065851272176.a n = (A027612 (n + 1) : ℚ)

end A027612

/-! ## A027612.P16478175417405365894

`A043529(n+1)/2*A160048(n+2)`
-/

namespace A027612.P16478175417405365894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043529 (n + 1) : ℚ) / 2 * (A160048 (n + 2) : ℚ)

end

end A027612.P16478175417405365894

namespace A027612

/-- `A043529(n+1)/2*A160048(n+2)` -/
def P16478175417405365894.Spec : Prop :=
  ∀ n, P16478175417405365894.a n = (A027612 (n + 1) : ℚ)

end A027612

/-! ## A027612.P6920610800833189441

`A213998(∑[n+3])`
-/

namespace A027612.P6920610800833189441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027612.P6920610800833189441

namespace A027612

/-- `A213998(∑[n+3])` -/
def P6920610800833189441.Spec : Prop :=
  ∀ n, P6920610800833189441.a n = A027612 (n + 1)

end A027612

/-! ## A027612.P2866215007481758115

`or(1, A213998(A055998(n+1)))`
-/

namespace A027612.P2866215007481758115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A213998 (A055998 (n + 1)).toNat)

end

end A027612.P2866215007481758115

namespace A027612

/-- `or(1, A213998(A055998(n+1)))` -/
def P2866215007481758115.Spec : Prop :=
  ∀ n, P2866215007481758115.a n = A027612 (n + 1)

end A027612

/-!
# A027614: Related to Clebsch-Gordan formulas.

The programs for A027614, there is no canonical definition to state claims against.
-/

/-! ## A027614.P6927028879869175382

`(-1)^n*A179320(n+1)/2`
-/

namespace A027614.P6927028879869175382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A179320 (n + 1) : ℚ) / 2

end

end A027614.P6927028879869175382

/-! ## A027614.P4407901211353580064

`A179320(n+1)/A179330(n+1)*A179331(n+1)`
-/

namespace A027614.P4407901211353580064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179320 (n + 1) : ℚ) / (A179330 (n + 1) : ℚ) * (A179331 (n + 1) : ℚ)

end

end A027614.P4407901211353580064

/-! ## A027614.P8907864252780119205

`A004526(abs(A179320(n+1)))`
-/

namespace A027614.P8907864252780119205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 |A179320 (n + 1)|.toNat

end

end A027614.P8907864252780119205

/-!
# A027615: Number of 1's when n is written in base -2.

The programs for A027615, the canonical program `A027615.P4354181638066238725` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027615 has offset 0).

The definition of A027615 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005351, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A027615.P10418321420734434642

`3*A072894(n+1)-2*n-3`
-/

namespace A027615.P10418321420734434642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A072894 (n + 1) - (2 * n : ℤ) - 3

end

end A027615.P10418321420734434642

namespace A027615

/-- `3*A072894(n+1)-2*n-3` -/
def P10418321420734434642.Spec : Prop :=
  ∀ n, P10418321420734434642.a n = A027615 n

end A027615

/-! ## A027615.P4354181638066238725

`A000120(A005351(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027615

/-- `A000120(A005351(n))` -/
def P4354181638066238725.Spec : Prop :=
  ∀ n, P4354181638066238725.a n = A027615 n

theorem P4354181638066238725.correct : P4354181638066238725.Spec := by
  intro n
  simp only [A027615]

end A027615

/-! ## A027615.P5697377872553659180

`∑{digits}[A039724(n), #]`
-/

namespace A027615.P5697377872553659180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A027615.P5697377872553659180

namespace A027615

/-- `∑{digits}[A039724(n), #]` -/
def P5697377872553659180.Spec : Prop :=
  ∀ n, (P5697377872553659180.a n : ℤ) = A027615 n

end A027615

/-! ## A027615.P10809742957222557802

`A048881(2*A005351(n))`
-/

namespace A027615.P10809742957222557802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A005351 n).toNat

end

end A027615.P10809742957222557802

namespace A027615

/-- `A048881(2*A005351(n))` -/
def P10809742957222557802.Spec : Prop :=
  ∀ n, P10809742957222557802.a n = A027615 n

end A027615

/-! ## A027615.P18081257608602237004

`A048881(A005351(n)+A005351(n))`
-/

namespace A027615.P18081257608602237004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A005351 n + A005351 n).toNat

end

end A027615.P18081257608602237004

namespace A027615

/-- `A048881(A005351(n)+A005351(n))` -/
def P18081257608602237004.Spec : Prop :=
  ∀ n, P18081257608602237004.a n = A027615 n

end A027615

/-! ## A027615.P3336063152494923919

`A000120(A053754(A338249(2*n)+1))`
-/

namespace A027615.P3336063152494923919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A053754 (A338249 (2 * n) + 1).toNat).toNat

end

end A027615.P3336063152494923919

namespace A027615

/-- `A000120(A053754(A338249(2*n)+1))` -/
def P3336063152494923919.Spec : Prop :=
  ∀ n, P3336063152494923919.a n = A027615 n

end A027615

/-!
# A027616: Number of permutations of n elements containing a 2-cycle.

The programs for A027616, there is no canonical definition to state claims against.
-/

/-! ## A027616.P5779731304293061219

`A000166(n)+A002467(n)-A000266(n)`
-/

namespace A027616.P5779731304293061219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n + (A002467 n - A000266 n)

end

end A027616.P5779731304293061219

/-! ## A027616.P5766412044577993241

`A000138(n)+A029571(n)-A000266(n)`
-/

namespace A027616.P5766412044577993241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000138 n + (A029571 n - A000266 n)

end

end A027616.P5766412044577993241

/-! ## A027616.P18237778445918429804

`n!-A000266(n)`
-/

namespace A027616.P18237778445918429804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A000266 n

end

end A027616.P18237778445918429804

/-! ## A027616.P4344692562131761883

`n!-A122974(∑[n-1]+3)`
-/

namespace A027616.P4344692562131761883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A122974 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A027616.P4344692562131761883

/-! ## A027616.P6647532868068293017

`A000142(n)-∏[(n-2)/a(n-2)+n-1]` with `a(0)=1, a(1)=1`
-/

namespace A027616.P6647532868068293017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((n : ℤ) - 2 : ℚ) / f1 (n - 2) + ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027616.P6647532868068293017

/-! ## A027616.P11557598507705471465

`A000142(n)-A000266(n)`
-/

namespace A027616.P11557598507705471465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000266 n

end

end A027616.P11557598507705471465

/-! ## A027616.P16557053199208099132

`abs(A133942(n))-A000266(n)`
-/

namespace A027616.P16557053199208099132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n| - A000266 n

end

end A027616.P16557053199208099132

/-! ## A027616.P1402175567140431168

`Δ[A003422(n)]-A000266(n)`
-/

namespace A027616.P1402175567140431168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000266 n

end

end A027616.P1402175567140431168

/-!
# A027617: Number of permutations of n elements containing a 3-cycle.

The programs for A027617, there is no canonical definition to state claims against.
-/

/-! ## A027617.P14573164274905430201

`n*a(n-1)-(n-2)*(n-1)*a(n-3)+(n-3)*(n-2)*(n-1)*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A027617.P14573164274905430201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 2] fun n a =>
  (n : ℤ) * a (n - 1) - ((n : ℤ) - 2) * (((n : ℤ) - 1) * a (n - 3)) + ((n : ℤ) - 3) * (((n : ℤ) - 2) * (((n : ℤ) - 1) * a (n - 4)))

end

end A027617.P14573164274905430201

/-! ## A027617.P4642186719839632269

`A000266(n)+A027616(n)-A000090(n)`
-/

namespace A027617.P4642186719839632269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000266 n + (A027616 n - A000090 n)

end

end A027617.P4642186719839632269

/-! ## A027617.P10688545953250906639

`n!-A000090(n)`
-/

namespace A027617.P10688545953250906639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A000090 n

end

end A027617.P10688545953250906639

/-! ## A027617.P9499237942786194405

`A000142(n)-A000090(n)`
-/

namespace A027617.P9499237942786194405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000090 n

end

end A027617.P9499237942786194405

/-! ## A027617.P15914441957195721180

`Δ[A003422(n)]-A000090(n)`
-/

namespace A027617.P15914441957195721180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000090 n

end

end A027617.P15914441957195721180

/-! ## A027617.P10824690209591500644

`∏[A007318(∑[n]+1)]-A000090(n)`
-/

namespace A027617.P10824690209591500644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000090 n

end

end A027617.P10824690209591500644

/-! ## A027617.P11714726230185621489

`∏[val(A000040(n+1), 2)+n]-A000090(n)`
-/

namespace A027617.P11714726230185621489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000090 n

end

end A027617.P11714726230185621489

/-!
# A027618: c(i,j) is cost of evaluation of edit distance of two strings with lengths i and j, when you use recursion (every call has a unit cost, other computations are free); sequence gives c(n,n).

The programs for A027618, the canonical program `A027618.P2693083672505022831` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027618 has offset 0).

The definition of A027618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027618.P2693083672505022831

`3*A047665(n)+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027618

/-- `3*A047665(n)+1` -/
def P2693083672505022831.Spec : Prop :=
  ∀ n, P2693083672505022831.a n = A027618 n

theorem P2693083672505022831.correct : P2693083672505022831.Spec := by
  intro n
  simp only [A027618]

end A027618

/-! ## A027618.P16992748199563021546

`3*A226994(n)-2`
-/

namespace A027618.P16992748199563021546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A226994 n - 2

end

end A027618.P16992748199563021546

namespace A027618

/-- `3*A226994(n)-2` -/
def P16992748199563021546.Spec : Prop :=
  ∀ n, P16992748199563021546.a n = A027618 n

theorem P16992748199563021546.correct : P16992748199563021546.Spec := by
  intro n
  simp only [A027618, Nat.add_sub_cancel, A027618.P16992748199563021546.a, A027618.P2693083672505022831.a, A047665, A047665.P11812153229518684916.a, A226994, A226994.P17259098154566869969.a, A001850, A001850.P8225243896153059034.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027618

/-! ## A027618.P8124308730725318561

`∑[3*A002002(n)]+1`
-/

namespace A027618.P8124308730725318561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A027618.P8124308730725318561

namespace A027618

/-- `∑[3*A002002(n)]+1` -/
def P8124308730725318561.Spec : Prop :=
  ∀ n, P8124308730725318561.a n = A027618 n

end A027618

/-! ## A027618.P6156600883151432511

`A047665(n)+A001850(n)`
-/

namespace A027618.P6156600883151432511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 n + A001850 n

end

end A027618.P6156600883151432511

namespace A027618

/-- `A047665(n)+A001850(n)` -/
def P6156600883151432511.Spec : Prop :=
  ∀ n, P6156600883151432511.a n = A027618 n

end A027618

/-! ## A027618.P14696296830428623727

`A001850(n)+∑[A002002(n)]`
-/

namespace A027618.P14696296830428623727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027618.P14696296830428623727

namespace A027618

/-- `A001850(n)+∑[A002002(n)]` -/
def P14696296830428623727.Spec : Prop :=
  ∀ n, P14696296830428623727.a n = A027618 n

end A027618

/-! ## A027618.P7288603624245475207

`∑[A110170(n)+A002002(n)]`
-/

namespace A027618.P7288603624245475207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n + A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027618.P7288603624245475207

namespace A027618

/-- `∑[A110170(n)+A002002(n)]` -/
def P7288603624245475207.Spec : Prop :=
  ∀ n, P7288603624245475207.a n = A027618 n

end A027618

/-! ## A027618.P2460027182477916110

`A047665(n)+∑[A110170(n)]`
-/

namespace A027618.P2460027182477916110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027618.P2460027182477916110

namespace A027618

/-- `A047665(n)+∑[A110170(n)]` -/
def P2460027182477916110.Spec : Prop :=
  ∀ n, P2460027182477916110.a n = A027618 n

end A027618

/-! ## A027618.P1094117489960656475

`A001850(n)+A226994(n)-1`
-/

namespace A027618.P1094117489960656475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n + (A226994 n - 1)

end

end A027618.P1094117489960656475

namespace A027618

/-- `A001850(n)+A226994(n)-1` -/
def P1094117489960656475.Spec : Prop :=
  ∀ n, P1094117489960656475.a n = A027618 n

end A027618

/-! ## A027618.P4298795201597626716

`A047665(n)+A026003(A005843(n))`
-/

namespace A027618.P4298795201597626716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 n + A026003 (A005843 n).toNat

end

end A027618.P4298795201597626716

namespace A027618

/-- `A047665(n)+A026003(A005843(n))` -/
def P4298795201597626716.Spec : Prop :=
  ∀ n, P4298795201597626716.a n = A027618 n

end A027618

/-! ## A027618.P6424086848701099570

`A047665(n)+A226994(n)+A047665(n)`
-/

namespace A027618.P6424086848701099570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 n + (A226994 n + A047665 n)

end

end A027618.P6424086848701099570

namespace A027618

/-- `A047665(n)+A226994(n)+A047665(n)` -/
def P6424086848701099570.Spec : Prop :=
  ∀ n, P6424086848701099570.a n = A027618 n

theorem P6424086848701099570.correct : P6424086848701099570.Spec := by
  intro n
  simp only [A027618, Nat.add_sub_cancel, A027618.P6424086848701099570.a, A027618.P2693083672505022831.a, A047665, A047665.P11812153229518684916.a, A226994, A226994.P17259098154566869969.a, A001850, A001850.P8225243896153059034.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027618

/-! ## A027618.P18054063928432213682

`A047665(n)+A047665(n)+∑[A002002(n)]+1`
-/

namespace A027618.P18054063928432213682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 n + (A047665 n + (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A027618.P18054063928432213682

namespace A027618

/-- `A047665(n)+A047665(n)+∑[A002002(n)]+1` -/
def P18054063928432213682.Spec : Prop :=
  ∀ n, P18054063928432213682.a n = A027618 n

end A027618

/-! ## A027618.P2710166900731607829

`A104550(n+1)+A006318(n)-A226994(n)`
-/

namespace A027618.P2710166900731607829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104550 (n + 1) + (A006318 n - A226994 n)

end

end A027618.P2710166900731607829

namespace A027618

/-- `A104550(n+1)+A006318(n)-A226994(n)` -/
def P2710166900731607829.Spec : Prop :=
  ∀ n, P2710166900731607829.a n = A027618 n

end A027618

/-! ## A027618.P3553958399412445294

`A297192(∑[n]+n)+A047665(n)`
-/

namespace A027618.P3553958399412445294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297192 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A047665 n

end

end A027618.P3553958399412445294

namespace A027618

/-- `A297192(∑[n]+n)+A047665(n)` -/
def P3553958399412445294.Spec : Prop :=
  ∀ n, P3553958399412445294.a n = A027618 n

end A027618

/-! ## A027618.P15691021517226105734

`A297192(∑[n]+n)+∑[A002002(n)]`
-/

namespace A027618.P15691021517226105734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297192 (∑ j ∈ Finset.range (n + 1), f1 j + n) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A027618.P15691021517226105734

namespace A027618

/-- `A297192(∑[n]+n)+∑[A002002(n)]` -/
def P15691021517226105734.Spec : Prop :=
  ∀ n, P15691021517226105734.a n = A027618 n

end A027618

/-! ## A027618.P5585613310112323751

`A297191(A002378(n))+A047665(n)`
-/

namespace A027618.P5585613310112323751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 (A002378 n).toNat + A047665 n

end

end A027618.P5585613310112323751

namespace A027618

/-- `A297191(A002378(n))+A047665(n)` -/
def P5585613310112323751.Spec : Prop :=
  ∀ n, P5585613310112323751.a n = A027618 n

end A027618

/-!
# A027619: Numbers k such that Hofstadter Q-sequence Q(k) (A005185) satisfies Q(k) = k/2.

The programs for A027619, there is no canonical definition to state claims against.
-/

/-! ## A027619.P4705903195244637638

`A076267(n+2)`
-/

namespace A027619.P4705903195244637638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076267 (n + 2)

end

end A027619.P4705903195244637638

/-! ## A027619.P5425683738534157140

`record[A076267(abs(n-A000038(n)))]`
-/

namespace A027619.P5425683738534157140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076267 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027619.P5425683738534157140

/-! ## A027619.P11612889892458880599

`record[A076267(A014682(A004277(n)))]`
-/

namespace A027619.P11612889892458880599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076267 (A014682 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027619.P11612889892458880599

/-! ## A027619.P15612779762309664089

`record[A076267(A026233(A020705(n)))]`
-/

namespace A027619.P15612779762309664089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076267 (A026233 (A020705 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027619.P15612779762309664089

/-! ## A027619.P9317864118098256075

`record[A076267(A000267(A029579(n)))]`
-/

namespace A027619.P9317864118098256075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076267 (A000267 (A029579 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027619.P9317864118098256075

/-!
# A027620: a(n) = n + (n+1)^2 + (n+2)^3.

The programs for A027620, the canonical program `A027620.P6451220114165535432` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027620 has offset 0).

The definition of A027620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+(n+1)²+(n+2)^3` (program `A027620.P6451220114165535432`, by `A027620.P6451220114165535432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027620.P13041977439459356936

`(n+1)*(n+3)²`
-/

namespace A027620.P13041977439459356936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 3) ^ 2

end

end A027620.P13041977439459356936

namespace A027620

/-- `(n+1)*(n+3)²` -/
def P13041977439459356936.Spec : Prop :=
  ∀ n, (P13041977439459356936.a n : ℤ) = A027620 n

theorem P13041977439459356936.correct : P13041977439459356936.Spec := by
  intro n
  simp only [A027620, Nat.add_sub_cancel, A027620.P13041977439459356936.a, A027620.P6451220114165535432.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027620

/-! ## A027620.P6451220114165535432

`n+(n+1)²+(n+2)^3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027620

/-- `n+(n+1)²+(n+2)^3` -/
def P6451220114165535432.Spec : Prop :=
  ∀ n, (P6451220114165535432.a n : ℤ) = A027620 n

theorem P6451220114165535432.correct : P6451220114165535432.Spec := by
  intro n
  simp only [A027620]

end A027620

/-! ## A027620.P16351676832713470949

`∑[∑[a(n-1)+6]]` with `a(0)=9, a(1)=14`
-/

namespace A027620.P16351676832713470949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [9, 14] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027620.P16351676832713470949

namespace A027620

/-- `∑[∑[a(n-1)+6]]` -/
def P16351676832713470949.Spec : Prop :=
  ∀ n, (P16351676832713470949.a n : ℤ) = A027620 n

end A027620

/-! ## A027620.P5275126043381754579

`floor((n+1)/acot((n+3)²))`
-/

namespace A027620.P5275126043381754579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot ((n + 3) ^ 2 : ℝ)⌋

end

end A027620.P5275126043381754579

namespace A027620

/-- `floor((n+1)/acot((n+3)²))` -/
def P5275126043381754579.Spec : Prop :=
  ∀ n, P5275126043381754579.a n = A027620 n

end A027620

/-! ## A027620.P326788358229908394

`round((n+1)/acot((n+3)²))`
-/

namespace A027620.P326788358229908394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot ((n + 3) ^ 2 : ℝ))

end

end A027620.P326788358229908394

namespace A027620

/-- `round((n+1)/acot((n+3)²))` -/
def P326788358229908394.Spec : Prop :=
  ∀ n, P326788358229908394.a n = A027620 n

end A027620

/-! ## A027620.P6129433467215796449

`(n+1)/tan(acot((n+3)²))`
-/

namespace A027620.P6129433467215796449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.tan (SequenceMachineLib.acot ((n + 3) ^ 2 : ℝ))

end

end A027620.P6129433467215796449

namespace A027620

/-- `(n+1)/tan(acot((n+3)²))` -/
def P6129433467215796449.Spec : Prop :=
  ∀ n, P6129433467215796449.a n = (A027620 n : ℝ)

end A027620

/-! ## A027620.P10633337886113831431

`(n+1)/cot(atan(n+3))²`
-/

namespace A027620.P10633337886113831431
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.cot (Real.arctan (n + 3 : ℝ)) ^ 2

end

end A027620.P10633337886113831431

namespace A027620

/-- `(n+1)/cot(atan(n+3))²` -/
def P10633337886113831431.Spec : Prop :=
  ∀ n, P10633337886113831431.a n = (A027620 n : ℝ)

end A027620

/-! ## A027620.P14456802743615631335

`C(n+1, n)/(1/(n+3))²`
-/

namespace A027620.P14456802743615631335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) n : ℚ) / (1 / (n + 3 : ℚ)) ^ 2

end

end A027620.P14456802743615631335

namespace A027620

/-- `C(n+1, n)/(1/(n+3))²` -/
def P14456802743615631335.Spec : Prop :=
  ∀ n, P14456802743615631335.a n = (A027620 n : ℚ)

theorem P14456802743615631335.correct : P14456802743615631335.Spec := by
  intro n
  simp only [A027620, Nat.add_sub_cancel, A027620.P14456802743615631335.a, A027620.P6451220114165535432.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A027620

/-! ## A027620.P12113716354455895795

`record[(1-(2-n)²)²]/(n+1)`
-/

namespace A027620.P12113716354455895795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A027620.P12113716354455895795

namespace A027620

/-- `record[(1-(2-n)²)²]/(n+1)` -/
def P12113716354455895795.Spec : Prop :=
  ∀ n, P12113716354455895795.a n = (A027620 n : ℚ)

end A027620

/-! ## A027620.P14480978310691097628

`record[(abs(3-n)-2)*(3-n)²]`
-/

namespace A027620.P14480978310691097628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|3 - (n : ℤ)| - 2) * (3 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027620.P14480978310691097628

namespace A027620

/-- `record[(abs(3-n)-2)*(3-n)²]` -/
def P14480978310691097628.Spec : Prop :=
  ∀ n, P14480978310691097628.a n = A027620 n

end A027620

/-! ## A027620.P16747748824416023105

`abs((n+3)*record[(n-3)*(n-1)])`
-/

namespace A027620.P16747748824416023105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 3 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A027620.P16747748824416023105

namespace A027620

/-- `abs((n+3)*record[(n-3)*(n-1)])` -/
def P16747748824416023105.Spec : Prop :=
  ∀ n, P16747748824416023105.a n = A027620 n

end A027620

/-! ## A027620.P12305919222638977487

`∑[Δ[(n+3)*lcm(n, n+1)]+1]`
-/

namespace A027620.P12305919222638977487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.lcm n (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027620.P12305919222638977487

namespace A027620

/-- `∑[Δ[(n+3)*lcm(n, n+1)]+1]` -/
def P12305919222638977487.Spec : Prop :=
  ∀ n, P12305919222638977487.a n = A027620 n

end A027620

/-! ## A027620.P15043121156878090035

`(n+1)*(n+3)/cot(atan(n+3))`
-/

namespace A027620.P15043121156878090035
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 3) : ℝ) / Real.cot (Real.arctan (n + 3 : ℝ))

end

end A027620.P15043121156878090035

namespace A027620

/-- `(n+1)*(n+3)/cot(atan(n+3))` -/
def P15043121156878090035.Spec : Prop :=
  ∀ n, P15043121156878090035.a n = (A027620 n : ℝ)

end A027620

/-! ## A027620.P10063389443040593304

`(n+1)/(n+3)^-gcd(2, 2*n)`
-/

namespace A027620.P10063389443040593304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (n + 3 : ℚ) ^ (-(Nat.gcd 2 (2 * n) : ℤ) : ℤ)

end

end A027620.P10063389443040593304

namespace A027620

/-- `(n+1)/(n+3)^-gcd(2, 2*n)` -/
def P10063389443040593304.Spec : Prop :=
  ∀ n, P10063389443040593304.a n = (A027620 n : ℚ)

theorem P10063389443040593304.correct : P10063389443040593304.Spec := by
  intro n
  simp only [A027620, Nat.add_sub_cancel, A027620.P10063389443040593304.a, A027620.P6451220114165535432.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A027620

/-! ## A027620.P3395102116076130772

`(n+1)/C(n+3, n+2)^-2`
-/

namespace A027620.P3395102116076130772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.choose (n + 3) (n + 2) : ℚ) ^ (-2 : ℤ)

end

end A027620.P3395102116076130772

namespace A027620

/-- `(n+1)/C(n+3, n+2)^-2` -/
def P3395102116076130772.Spec : Prop :=
  ∀ n, P3395102116076130772.a n = (A027620 n : ℚ)

theorem P3395102116076130772.correct : P3395102116076130772.Spec := by
  intro n
  simp only [A027620, Nat.add_sub_cancel, A027620.P3395102116076130772.a, A027620.P6451220114165535432.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A027620

/-! ## A027620.P14824051119037334778

`(n+1)/(n+3)^or(2*n, -2)`
-/

namespace A027620.P14824051119037334778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (n + 3 : ℚ) ^ (Int.lor (2 * n : ℤ) (-2) : ℤ)

end

end A027620.P14824051119037334778

namespace A027620

/-- `(n+1)/(n+3)^or(2*n, -2)` -/
def P14824051119037334778.Spec : Prop :=
  ∀ n, P14824051119037334778.a n = (A027620 n : ℚ)

end A027620

/-! ## A027620.P10072034818341662730

`(n+1)/(gcd(n, n+1)/(n+3))²`
-/

namespace A027620.P10072034818341662730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((Nat.gcd n (n + 1) : ℚ) / (n + 3 : ℚ)) ^ 2

end

end A027620.P10072034818341662730

namespace A027620

/-- `(n+1)/(gcd(n, n+1)/(n+3))²` -/
def P10072034818341662730.Spec : Prop :=
  ∀ n, P10072034818341662730.a n = (A027620 n : ℚ)

theorem P10072034818341662730.correct : P10072034818341662730.Spec := by
  intro n
  simp only [A027620, Nat.add_sub_cancel, A027620.P10072034818341662730.a, A027620.P6451220114165535432.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A027620

/-! ## A027620.P14553979623077575356

`-((n-1-2*n)*record[(n-3)²])`
-/

namespace A027620.P14553979623077575356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1 - (2 * n : ℤ)) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A027620.P14553979623077575356

namespace A027620

/-- `-((n-1-2*n)*record[(n-3)²])` -/
def P14553979623077575356.Spec : Prop :=
  ∀ n, P14553979623077575356.a n = A027620 n

end A027620

/-! ## A027620.P9485134379751523752

`Δ[a(n-1)+(n+2)*n*(n+2)]` with `a(0)=0`
-/

namespace A027620.P9485134379751523752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (n + 2) * (n * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A027620.P9485134379751523752

namespace A027620

/-- `Δ[a(n-1)+(n+2)*n*(n+2)]` -/
def P9485134379751523752.Spec : Prop :=
  ∀ n, P9485134379751523752.a n = A027620 n

end A027620

/-! ## A027620.P18080388271919464240

`∑[Δ[(2*n+1)*C(n+2, 2)]+n+1]`
-/

namespace A027620.P18080388271919464240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.choose (n + 2) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027620.P18080388271919464240

namespace A027620

/-- `∑[Δ[(2*n+1)*C(n+2, 2)]+n+1]` -/
def P18080388271919464240.Spec : Prop :=
  ∀ n, P18080388271919464240.a n = A027620 n

end A027620

/-!
# A027621: a(n) = n + (n+1)^2 + (n+2)^3 + (n+3)^4.

The programs for A027621, the canonical program `A027621.P7206209497497844437` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027621 has offset 0).

The definition of A027621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+(n+1)²+(n+2)^3+(n+3)^4` (program `A027621.P7206209497497844437`, by `A027621.P7206209497497844437.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027621.P4558583486024972691

`(n+3)²*(n²+7*n+10)`
-/

namespace A027621.P4558583486024972691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2 * (n ^ 2 + 7 * n + 10)

end

end A027621.P4558583486024972691

namespace A027621

/-- `(n+3)²*(n²+7*n+10)` -/
def P4558583486024972691.Spec : Prop :=
  ∀ n, (P4558583486024972691.a n : ℤ) = A027621 n

theorem P4558583486024972691.correct : P4558583486024972691.Spec := by
  intro n
  simp only [A027621, Nat.add_sub_cancel, A027621.P4558583486024972691.a, A027621.P7206209497497844437.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027621

/-! ## A027621.P7206209497497844437

`n+(n+1)²+(n+2)^3+(n+3)^4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027621

/-- `n+(n+1)²+(n+2)^3+(n+3)^4` -/
def P7206209497497844437.Spec : Prop :=
  ∀ n, (P7206209497497844437.a n : ℤ) = A027621 n

theorem P7206209497497844437.correct : P7206209497497844437.Spec := by
  intro n
  simp only [A027621]

end A027621

/-! ## A027621.P974428713975578063

`∏{d}[A189657(A001223(n+1)), A000005(#)+n+1]`
-/

namespace A027621.P974428713975578063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189657 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (A000005 d + (n + 1 : ℤ))

end

end A027621.P974428713975578063

namespace A027621

/-- `∏{d}[A189657(A001223(n+1)), A000005(#)+n+1]` -/
def P974428713975578063.Spec : Prop :=
  ∀ n, P974428713975578063.a n = A027621 n

end A027621

/-! ## A027621.P5140749120312794024

`A263135(A250141(n+2))`
-/

namespace A027621.P5140749120312794024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263135 (A250141 (n + 2)).toNat

end

end A027621.P5140749120312794024

namespace A027621

/-- `A263135(A250141(n+2))` -/
def P5140749120312794024.Spec : Prop :=
  ∀ n, P5140749120312794024.a n = A027621 n

end A027621

/-!
# A027622: a(n) = n + (n+1)^2 + (n+2)^3 + (n+3)^4 + (n+4)^5.

The programs for A027622, the canonical program `A027622.P14168221498897382064` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027622 has offset 0).

The definition of A027622 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+(n+1)²+(n+2)^3+(n+3)^4+(n+4)^5` (program `A027622.P14168221498897382064`, by `A027622.P14168221498897382064.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027622.P14168221498897382064

`n+(n+1)²+(n+2)^3+(n+3)^4+(n+4)^5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027622

/-- `n+(n+1)²+(n+2)^3+(n+3)^4+(n+4)^5` -/
def P14168221498897382064.Spec : Prop :=
  ∀ n, (P14168221498897382064.a n : ℤ) = A027622 n

theorem P14168221498897382064.correct : P14168221498897382064.Spec := by
  intro n
  simp only [A027622]

end A027622

/-! ## A027622.P7783959344815834676

`Δ[∑[A061224(n)+n]-n]`
-/

namespace A027622.P7783959344815834676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061224 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027622.P7783959344815834676

namespace A027622

/-- `Δ[∑[A061224(n)+n]-n]` -/
def P7783959344815834676.Spec : Prop :=
  ∀ n, P7783959344815834676.a n = A027622 n

end A027622

/-! ## A027622.P8391510380431497384

`abs(A001057(2*n)-A061224(n+1))`
-/

namespace A027622.P8391510380431497384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (2 * n) - A061224 (n + 1)|

end

end A027622.P8391510380431497384

namespace A027622

/-- `abs(A001057(2*n)-A061224(n+1))` -/
def P8391510380431497384.Spec : Prop :=
  ∀ n, P8391510380431497384.a n = A027622 n

end A027622

/-! ## A027622.P13363668517750369029

`record[A061224(A003602(n+1))+A025480(n)]`
-/

namespace A027622.P13363668517750369029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061224 (A003602 (n + 1)).toNat + A025480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027622.P13363668517750369029

namespace A027622

/-- `record[A061224(A003602(n+1))+A025480(n)]` -/
def P13363668517750369029.Spec : Prop :=
  ∀ n, P13363668517750369029.a n = A027622 n

end A027622

/-! ## A027622.P4795850162183490669

`A000027(A061224(n+1)+n)`
-/

namespace A027622.P4795850162183490669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A061224 (n + 1) + (n : ℤ)).toNat

end

end A027622.P4795850162183490669

namespace A027622

/-- `A000027(A061224(n+1)+n)` -/
def P4795850162183490669.Spec : Prop :=
  ∀ n, P4795850162183490669.a n = A027622 n

end A027622

/-!
# A027623: a(0) = 1; for n > 0, a(n) = number of rings with n elements.

The programs for A027623, there is no canonical definition to state claims against.
-/

/-! ## A027623.P173711073547913145

`A037234(floor(acot(n)+n))`
-/

namespace A027623.P173711073547913145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A027623.P173711073547913145

/-! ## A027623.P4334969338381640721

`A037234(n^floor(atan(n)))`
-/

namespace A027623.P4334969338381640721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A027623.P4334969338381640721

/-! ## A027623.P4490482753398217631

`gcd(floor(acot(n)), A037234(n))`
-/

namespace A027623.P4490482753398217631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A037234 n)

end

end A027623.P4490482753398217631

/-! ## A027623.P199180785578819947

`A037234(or(n, floor(acot(n))))`
-/

namespace A027623.P199180785578819947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A027623.P199180785578819947

/-! ## A027623.P2464659878846016718

`A037234(xor(n, floor(acot(n))))`
-/

namespace A027623.P2464659878846016718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A027623.P2464659878846016718

/-!
# A027624: Number of independent vertex sets in the n-hypercube graph Q_n.

The programs for A027624, there is no canonical definition to state claims against.
-/

/-! ## A027624.P18286924953159766958

`A323369(a(n-1)²+n-2)` with `a(0)=2`
-/

namespace A027624.P18286924953159766958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A323369 (a (n - 1) ^ 2 + ((n : ℤ) - 2)).toNat

end

end A027624.P18286924953159766958

/-!
# A027625: Numerator of n*(n+5)/((n+2)*(n+3)).

The programs for A027625, the canonical program `A027625.P12188279484027697014` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027625 has offset 0).

The definition of A027625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027625.P14648051275988483789

`lcm(3, 2-∑[n+2])/3`
-/

namespace A027625.P14648051275988483789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℚ) / 3

end

end A027625.P14648051275988483789

namespace A027625

/-- `lcm(3, 2-∑[n+2])/3` -/
def P14648051275988483789.Spec : Prop :=
  ∀ n, P14648051275988483789.a n = (A027625 n : ℚ)

end A027625

/-! ## A027625.P3859515927993424408

`(∑[n+2]-2)/gcd(3, C(n, 2))`
-/

namespace A027625.P3859515927993424408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) / (Nat.gcd 3 (Nat.choose n 2) : ℚ)

end

end A027625.P3859515927993424408

namespace A027625

/-- `(∑[n+2]-2)/gcd(3, C(n, 2))` -/
def P3859515927993424408.Spec : Prop :=
  ∀ n, P3859515927993424408.a n = (A027625 n : ℚ)

end A027625

/-! ## A027625.P12188279484027697014

`gcd(∑[n+2]-2, ∑[∑[n]+n])`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027625

/-- `gcd(∑[n+2]-2, ∑[∑[n]+n])` -/
def P12188279484027697014.Spec : Prop :=
  ∀ n, (P12188279484027697014.a n : ℤ) = A027625 n

theorem P12188279484027697014.correct : P12188279484027697014.Spec := by
  intro n
  simp only [A027625]

end A027625

/-! ## A027625.P13808565226877288062

`A055998(n)/A144437(n+1)`
-/

namespace A027625.P13808565226877288062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055998 n : ℚ) / (A144437 (n + 1) : ℚ)

end

end A027625.P13808565226877288062

namespace A027625

/-- `A055998(n)/A144437(n+1)` -/
def P13808565226877288062.Spec : Prop :=
  ∀ n, P13808565226877288062.a n = (A027625 n : ℚ)

end A027625

/-! ## A027625.P4239689231720330544

`A052472(n+3)/A306368(n)`
-/

namespace A027625.P4239689231720330544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052472 (n + 3) : ℚ) / (A306368 n : ℚ)

end

end A027625.P4239689231720330544

namespace A027625

/-- `A052472(n+3)/A306368(n)` -/
def P4239689231720330544.Spec : Prop :=
  ∀ n, P4239689231720330544.a n = (A027625 n : ℚ)

end A027625

/-! ## A027625.P16395192147382801867

`(A000096(n)+n)/A144437(n+1)`
-/

namespace A027625.P16395192147382801867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 n + (n : ℤ) : ℚ) / (A144437 (n + 1) : ℚ)

end

end A027625.P16395192147382801867

namespace A027625

/-- `(A000096(n)+n)/A144437(n+1)` -/
def P16395192147382801867.Spec : Prop :=
  ∀ n, P16395192147382801867.a n = (A027625 n : ℚ)

end A027625

/-! ## A027625.P12539176634945718644

`A027626(n)-A109007(A026741(n+1))`
-/

namespace A027625.P12539176634945718644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 n - A109007 (A026741 (n + 1)).toNat

end

end A027625.P12539176634945718644

namespace A027625

/-- `A027626(n)-A109007(A026741(n+1))` -/
def P12539176634945718644.Spec : Prop :=
  ∀ n, P12539176634945718644.a n = A027625 n

end A027625

/-! ## A027625.P5522019074477144110

`A027626(n)-A109007(n+1)`
-/

namespace A027625.P5522019074477144110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 n - A109007 (n + 1)

end

end A027625.P5522019074477144110

namespace A027625

/-- `A027626(n)-A109007(n+1)` -/
def P5522019074477144110.Spec : Prop :=
  ∀ n, P5522019074477144110.a n = A027625 n

end A027625

/-! ## A027625.P3280983276256971863

`A234041(n+1)-A109007(n+1)`
-/

namespace A027625.P3280983276256971863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234041 (n + 1) - A109007 (n + 1)

end

end A027625.P3280983276256971863

namespace A027625

/-- `A234041(n+1)-A109007(n+1)` -/
def P3280983276256971863.Spec : Prop :=
  ∀ n, P3280983276256971863.a n = A027625 n

end A027625

/-! ## A027625.P17839110659177482858

`(A000096(n)+n)/A169609(n+1)`
-/

namespace A027625.P17839110659177482858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 n + (n : ℤ) : ℚ) / (A169609 (n + 1) : ℚ)

end

end A027625.P17839110659177482858

namespace A027625

/-- `(A000096(n)+n)/A169609(n+1)` -/
def P17839110659177482858.Spec : Prop :=
  ∀ n, P17839110659177482858.a n = (A027625 n : ℚ)

end A027625

/-! ## A027625.P13373585222496895865

`A225126(A183861(n+1))`
-/

namespace A027625.P13373585222496895865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225126 (A183861 (n + 1)).toNat

end

end A027625.P13373585222496895865

namespace A027625

/-- `A225126(A183861(n+1))` -/
def P13373585222496895865.Spec : Prop :=
  ∀ n, P13373585222496895865.a n = A027625 n

end A027625

/-! ## A027625.P2894192791889975166

`A051176(∑[n+2]-2)`
-/

namespace A027625.P2894192791889975166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A027625.P2894192791889975166

namespace A027625

/-- `A051176(∑[n+2]-2)` -/
def P2894192791889975166.Spec : Prop :=
  ∀ n, P2894192791889975166.a n = A027625 n

end A027625

/-! ## A027625.P14666255416336299641

`A106610(A140673(n))`
-/

namespace A027625.P14666255416336299641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A140673 n).toNat

end

end A027625.P14666255416336299641

namespace A027625

/-- `A106610(A140673(n))` -/
def P14666255416336299641.Spec : Prop :=
  ∀ n, P14666255416336299641.a n = A027625 n

end A027625

/-!
# A027626: Denominator of n*(n+5)/((n+2)*(n+3)).

The programs for A027626, the canonical program `A027626.P7355239402640781180` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027626 has offset 0).

The definition of A027626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027626.P7355239402640781180

`C(n+3, 2)*gcd(n+4, 3)/3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027626

/-- `C(n+3, 2)*gcd(n+4, 3)/3` -/
def P7355239402640781180.Spec : Prop :=
  ∀ n, P7355239402640781180.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P16203990764464028158

`(n+2)*(n+3)*(5-2*A061347(n+1))/18`
-/

namespace A027626.P16203990764464028158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) * (n + 3) : ℤ) * (5 - 2 * A061347 (n + 1)) : ℚ) / 18

end

end A027626.P16203990764464028158

namespace A027626

/-- `(n+2)*(n+3)*(5-2*A061347(n+1))/18` -/
def P16203990764464028158.Spec : Prop :=
  ∀ n, P16203990764464028158.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P2016639773153129791

`A234041(n+1)`
-/

namespace A027626.P2016639773153129791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234041 (n + 1)

end

end A027626.P2016639773153129791

namespace A027626

/-- `A234041(n+1)` -/
def P2016639773153129791.Spec : Prop :=
  ∀ n, P2016639773153129791.a n = A027626 n

end A027626

/-! ## A027626.P7930357176854030068

`lcm(3, C(n+3, 2))/3`
-/

namespace A027626.P7930357176854030068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (Nat.choose (n + 3) 2) : ℚ) / 3

end

end A027626.P7930357176854030068

namespace A027626

/-- `lcm(3, C(n+3, 2))/3` -/
def P7930357176854030068.Spec : Prop :=
  ∀ n, P7930357176854030068.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P3009507721296914198

`lcm(6, (n+2)*(n+3))/6`
-/

namespace A027626.P3009507721296914198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 ((n + 2) * (n + 3)) : ℚ) / 6

end

end A027626.P3009507721296914198

namespace A027626

/-- `lcm(6, (n+2)*(n+3))/6` -/
def P3009507721296914198.Spec : Prop :=
  ∀ n, P3009507721296914198.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P17065269863266141038

`gcd(C(n+3, 2), C(n+3, 3))`
-/

namespace A027626.P17065269863266141038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (n + 3) 2) (Nat.choose (n + 3) 3)

end

end A027626.P17065269863266141038

namespace A027626

/-- `gcd(C(n+3, 2), C(n+3, 3))` -/
def P17065269863266141038.Spec : Prop :=
  ∀ n, (P17065269863266141038.a n : ℤ) = A027626 n

end A027626

/-! ## A027626.P10321377818225463288

`gcd(∑[n+2]+1, ∑[∑[n+1]])`
-/

namespace A027626.P10321377818225463288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A027626.P10321377818225463288

namespace A027626

/-- `gcd(∑[n+2]+1, ∑[∑[n+1]])` -/
def P10321377818225463288.Spec : Prop :=
  ∀ n, (P10321377818225463288.a n : ℤ) = A027626 n

end A027626

/-! ## A027626.P5355465948725958444

`A118392(n+1)/A014695(n)`
-/

namespace A027626.P5355465948725958444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118392 (n + 1) : ℚ) / (A014695 n : ℚ)

end

end A027626.P5355465948725958444

namespace A027626

/-- `A118392(n+1)/A014695(n)` -/
def P5355465948725958444.Spec : Prop :=
  ∀ n, P5355465948725958444.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P16167950842252142327

`∑[A006414(n)]/A067047(n+1)`
-/

namespace A027626.P16167950842252142327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A067047 (n + 1) : ℚ)

end

end A027626.P16167950842252142327

namespace A027626

/-- `∑[A006414(n)]/A067047(n+1)` -/
def P16167950842252142327.Spec : Prop :=
  ∀ n, P16167950842252142327.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P1569192314395899119

`A067046(n+1)/A060789(n+1)`
-/

namespace A027626.P1569192314395899119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067046 (n + 1) : ℚ) / (A060789 (n + 1) : ℚ)

end

end A027626.P1569192314395899119

namespace A027626

/-- `A067046(n+1)/A060789(n+1)` -/
def P1569192314395899119.Spec : Prop :=
  ∀ n, P1569192314395899119.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P17230301547636283479

`A000217(n+2)/A144437(n+1)`
-/

namespace A027626.P17230301547636283479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 2) : ℚ) / (A144437 (n + 1) : ℚ)

end

end A027626.P17230301547636283479

namespace A027626

/-- `A000217(n+2)/A144437(n+1)` -/
def P17230301547636283479.Spec : Prop :=
  ∀ n, P17230301547636283479.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P17284980025422891505

`(A055998(n)+3)/A144437(n+1)`
-/

namespace A027626.P17284980025422891505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055998 n + 3 : ℚ) / (A144437 (n + 1) : ℚ)

end

end A027626.P17284980025422891505

namespace A027626

/-- `(A055998(n)+3)/A144437(n+1)` -/
def P17284980025422891505.Spec : Prop :=
  ∀ n, P17284980025422891505.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P14927067580985184781

`A006542(n+4)/A067047(n+1)`
-/

namespace A027626.P14927067580985184781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006542 (n + 4) : ℚ) / (A067047 (n + 1) : ℚ)

end

end A027626.P14927067580985184781

namespace A027626

/-- `A006542(n+4)/A067047(n+1)` -/
def P14927067580985184781.Spec : Prop :=
  ∀ n, P14927067580985184781.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P11675766322727397356

`(A000096(n+1)+1)/A144437(n+1)`
-/

namespace A027626.P11675766322727397356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (n + 1) + 1 : ℚ) / (A144437 (n + 1) : ℚ)

end

end A027626.P11675766322727397356

namespace A027626

/-- `(A000096(n+1)+1)/A144437(n+1)` -/
def P11675766322727397356.Spec : Prop :=
  ∀ n, P11675766322727397356.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P1452505707470616980

`A253145(n+1)/A144437(n+1)`
-/

namespace A027626.P1452505707470616980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253145 (n + 1) : ℚ) / (A144437 (n + 1) : ℚ)

end

end A027626.P1452505707470616980

namespace A027626

/-- `A253145(n+1)/A144437(n+1)` -/
def P1452505707470616980.Spec : Prop :=
  ∀ n, P1452505707470616980.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P8772403737844440874

`A253145(n+1)/A169609(n+1)`
-/

namespace A027626.P8772403737844440874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253145 (n + 1) : ℚ) / (A169609 (n + 1) : ℚ)

end

end A027626.P8772403737844440874

namespace A027626

/-- `A253145(n+1)/A169609(n+1)` -/
def P8772403737844440874.Spec : Prop :=
  ∀ n, P8772403737844440874.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P8757908992941962270

`A000217(n+2)/A169609(n+1)`
-/

namespace A027626.P8757908992941962270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 2) : ℚ) / (A169609 (n + 1) : ℚ)

end

end A027626.P8757908992941962270

namespace A027626

/-- `A000217(n+2)/A169609(n+1)` -/
def P8757908992941962270.Spec : Prop :=
  ∀ n, P8757908992941962270.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P4932227399678908292

`A145064(n+1)/2*A145064(n)`
-/

namespace A027626.P4932227399678908292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145064 (n + 1) : ℚ) / 2 * (A145064 n : ℚ)

end

end A027626.P4932227399678908292

namespace A027626

/-- `A145064(n+1)/2*A145064(n)` -/
def P4932227399678908292.Spec : Prop :=
  ∀ n, P4932227399678908292.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P10409256798638843042

`(A000096(n+1)+1)/A169609(n+1)`
-/

namespace A027626.P10409256798638843042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (n + 1) + 1 : ℚ) / (A169609 (n + 1) : ℚ)

end

end A027626.P10409256798638843042

namespace A027626

/-- `(A000096(n+1)+1)/A169609(n+1)` -/
def P10409256798638843042.Spec : Prop :=
  ∀ n, P10409256798638843042.a n = (A027626 n : ℚ)

end A027626

/-! ## A027626.P15021440892708393075

`A060789(n+2)*A060789(n+3)`
-/

namespace A027626.P15021440892708393075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (n + 2) * A060789 (n + 3)

end

end A027626.P15021440892708393075

namespace A027626

/-- `A060789(n+2)*A060789(n+3)` -/
def P15021440892708393075.Spec : Prop :=
  ∀ n, P15021440892708393075.a n = A027626 n

end A027626

/-!
# A027628: Expansion of Molien series for 5-dimensional group G_3 acting on Jacobi polynomials of ternary self-dual codes.

The programs for A027628, the canonical program `A027628.P17227619108845540267` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027628 has offset 0).

The definition of A027628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027628.P17227619108845540267

`(2+13*n+33*n²+72*n^3+72*n^4)/2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027628

/-- `(2+13*n+33*n²+72*n^3+72*n^4)/2` -/
def P17227619108845540267.Spec : Prop :=
  ∀ n, P17227619108845540267.a n = (A027628 n : ℚ)

end A027628

/-! ## A027628.P10108360863893040196

`(∑[12*n-3]+4)²-C(9*n, 2)/9`
-/

namespace A027628.P10108360863893040196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j + 4) ^ 2 : ℤ) : ℚ) - (Nat.choose (9 * n) 2 : ℚ) / 9

end

end A027628.P10108360863893040196

namespace A027628

/-- `(∑[12*n-3]+4)²-C(9*n, 2)/9` -/
def P10108360863893040196.Spec : Prop :=
  ∀ n, P10108360863893040196.a n = (A027628 n : ℚ)

end A027628

/-! ## A027628.P8375417464910479800

`A292018(n+1)+(n*(6*n+3))²`
-/

namespace A027628.P8375417464910479800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292018 (n + 1) + ((n * (6 * n + 3)) ^ 2 : ℤ)

end

end A027628.P8375417464910479800

namespace A027628

/-- `A292018(n+1)+(n*(6*n+3))²` -/
def P8375417464910479800.Spec : Prop :=
  ∀ n, P8375417464910479800.a n = A027628 n

end A027628

/-! ## A027628.P10530848229738880785

`A085473(n)²-A022266(n)`
-/

namespace A027628.P10530848229738880785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085473 n ^ 2 - A022266 n

end

end A027628.P10530848229738880785

namespace A027628

/-- `A085473(n)²-A022266(n)` -/
def P10530848229738880785.Spec : Prop :=
  ∀ n, P10530848229738880785.a n = A027628 n

end A027628

/-! ## A027628.P297701039312649864

`A005448(2*n+1)²-A022266(n)`
-/

namespace A027628.P297701039312649864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (2 * n + 1) ^ 2 - A022266 n

end

end A027628.P297701039312649864

namespace A027628

/-- `A005448(2*n+1)²-A022266(n)` -/
def P297701039312649864.Spec : Prop :=
  ∀ n, P297701039312649864.a n = A027628 n

end A027628

/-! ## A027628.P13602218006147879274

`A140090(n)+A082040(A014105(n))`
-/

namespace A027628.P13602218006147879274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140090 n + A082040 (A014105 n).toNat

end

end A027628.P13602218006147879274

namespace A027628

/-- `A140090(n)+A082040(A014105(n))` -/
def P13602218006147879274.Spec : Prop :=
  ∀ n, P13602218006147879274.a n = A027628 n

end A027628

/-! ## A027628.P9934805625892094602

`A214660(A084849(n))-A022271(n)`
-/

namespace A027628.P9934805625892094602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214660 (A084849 n).toNat - A022271 n

end

end A027628.P9934805625892094602

namespace A027628

/-- `A214660(A084849(n))-A022271(n)` -/
def P9934805625892094602.Spec : Prop :=
  ∀ n, P9934805625892094602.a n = A027628 n

end A027628

/-! ## A027628.P14442770851581308347

`A016777(A014105(n))²-A022266(n)`
-/

namespace A027628.P14442770851581308347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A014105 n).toNat ^ 2 - A022266 n

end

end A027628.P14442770851581308347

namespace A027628

/-- `A016777(A014105(n))²-A022266(n)` -/
def P14442770851581308347.Spec : Prop :=
  ∀ n, P14442770851581308347.a n = A027628 n

end A027628

/-! ## A027628.P2543444331715782805

`A102214(A002943(n))-A022266(n)`
-/

namespace A027628.P2543444331715782805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102214 (A002943 n).toNat - A022266 n

end

end A027628.P2543444331715782805

namespace A027628

/-- `A102214(A002943(n))-A022266(n)` -/
def P2543444331715782805.Spec : Prop :=
  ∀ n, P2543444331715782805.a n = A027628 n

end A027628

/-!
# A027629: Molien series for complex 8-dimensional group N_3 of order 2^(2.3+2), a central extension of an extraspecial 2-group.

The programs for A027629, there is no canonical definition to state claims against.
-/

/-! ## A027629.P12449379643481959945

`A014095(2*n)`
-/

namespace A027629.P12449379643481959945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014095 (2 * n)

end

end A027629.P12449379643481959945

/-! ## A027629.P10777529198758278778

`record[A014095(A014681(n))]`
-/

namespace A027629.P10777529198758278778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014095 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027629.P10777529198758278778

/-! ## A027629.P8255667445435652926

`record[A014095(A029578(n))]`
-/

namespace A027629.P8255667445435652926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014095 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027629.P8255667445435652926

/-! ## A027629.P11877760213619786222

`record[A014095(A230641(n))]`
-/

namespace A027629.P11877760213619786222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014095 (A230641 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027629.P11877760213619786222

/-! ## A027629.P6709323548572993588

`record[A014095(n)/A010685(n)]`
-/

namespace A027629.P6709323548572993588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014095 n : ℚ) / (A010685 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027629.P6709323548572993588

/-! ## A027629.P15064879534491809267

`record[A014095(n)/A010689(n)]`
-/

namespace A027629.P15064879534491809267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014095 n : ℚ) / (A010689 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027629.P15064879534491809267

/-! ## A027629.P15020837245797392710

`record[A014095(n)/A037227(n+1)]`
-/

namespace A027629.P15020837245797392710
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014095 n : ℚ) / (A037227 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027629.P15020837245797392710

/-! ## A027629.P18402542611861343349

`record[gcd(A014095(n), A146076(n+1))]`
-/

namespace A027629.P18402542611861343349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014095 n) (A146076 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027629.P18402542611861343349

/-!
# A027630: Molien series for Gamma_3(2).

The programs for A027630, there is no canonical definition to state claims against.
-/

/-! ## A027630.P14303895137541454813

`A028310(A027629(n)-floor(n/4))`
-/

namespace A027630.P14303895137541454813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A027629 n - ⌊(n : ℚ) / 4⌋).toNat

end

end A027630.P14303895137541454813

/-!
# A027633: Molien series for full 8 X 8 Siegel modular group H_3 of order 371589120.

The programs for A027633, there is no canonical definition to state claims against.
-/

/-! ## A027633.P14684507705592951072

`A091726(n)-A185284(A000931(n))`
-/

namespace A027633.P14684507705592951072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091726 n - A185284 (A000931 n).toNat

end

end A027633.P14684507705592951072

/-! ## A027633.P10463611090226722233

`A091726(n)-A185284(A001301(n))`
-/

namespace A027633.P10463611090226722233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091726 n - A185284 (A001301 n).toNat

end

end A027633.P10463611090226722233

/-! ## A027633.P14903555482481133933

`A091726(n)-A185284(A004273(n))`
-/

namespace A027633.P14903555482481133933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091726 n - A185284 (A004273 n).toNat

end

end A027633.P14903555482481133933

/-! ## A027633.P498684195572947675

`A091726(n)-A185284(A214673(n))`
-/

namespace A027633.P498684195572947675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091726 n - A185284 (A214673 n).toNat

end

end A027633.P498684195572947675

/-! ## A027633.P12436579441812503455

`A178798(A188002(n+1))+A091726(n)`
-/

namespace A027633.P12436579441812503455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A188002 (n + 1)).toNat + A091726 n

end

end A027633.P12436579441812503455

/-!
# A027634: Poincaré (or Molien) series for ring of Siegel modular forms of genus 3 (associated with full modular group Gamma_3).

The programs for A027634, there is no canonical definition to state claims against.
-/

/-! ## A027634.P4319605686787648764

`A352095(n)+A029143(n)`
-/

namespace A027634.P4319605686787648764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352095 n + A029143 n

end

end A027634.P4319605686787648764

/-! ## A027634.P2271182323484838222

`A352095(n)+A027640(2*n)`
-/

namespace A027634.P2271182323484838222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352095 n + A027640 (2 * n)

end

end A027634.P2271182323484838222

/-! ## A027634.P995427135063856032

`A352095(n)+A029270(2*n)`
-/

namespace A027634.P995427135063856032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352095 n + A029270 (2 * n)

end

end A027634.P995427135063856032

/-! ## A027634.P15513006009908134611

`A352095(n)+A029331(2*n)`
-/

namespace A027634.P15513006009908134611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352095 n + A029331 (2 * n)

end

end A027634.P15513006009908134611

/-! ## A027634.P16066932407708448742

`A352095(n)+A029386(2*n+1)+A029386(2*n)`
-/

namespace A027634.P16066932407708448742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352095 n + (A029386 (2 * n + 1) + A029386 (2 * n))

end

end A027634.P16066932407708448742

/-! ## A027634.P2427077606966793021

`A352095(n)+A029331(A005843(n))%A062965(n+1)`
-/

namespace A027634.P2427077606966793021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352095 n + Int.tmod (A029331 (A005843 n).toNat) (A062965 (n + 1))

end

end A027634.P2427077606966793021

/-!
# A027635: Expansion of (1-x^8)*(1+x^5)/(1-x^2)^5.

The programs for A027635, the canonical program `A027635.P7185973166495053040` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027635 has offset 0).

The definition of A027635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^5-x^8-x^13)/(1-5x^2+10x^4-10x^6+5x^8-x^10))` (program `A027635.P7185973166495053040`, by `A027635.P7185973166495053040.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027635.P7185973166495053040

`ogf((1+x^5-x^8-x^13)/(1-5x^2+10x^4-10x^6+5x^8-x^10))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027635

/-- `ogf((1+x^5-x^8-x^13)/(1-5x^2+10x^4-10x^6+5x^8-x^10))` -/
def P7185973166495053040.Spec : Prop :=
  ∀ n, P7185973166495053040.a n = A027635 n

theorem P7185973166495053040.correct : P7185973166495053040.Spec := by
  intro n
  simp only [A027635]

end A027635

/-!
# A027636: Expansion of (1+x^19)/((1-x^2)*(1-x^4)^2*(1-x^6)).

The programs for A027636, there is no canonical definition to state claims against.
-/

/-! ## A027636.P12231984183002872618

`A029034(n)*A133872(A263228(n))`
-/

namespace A027636.P12231984183002872618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029034 n * A133872 (A263228 n).toNat

end

end A027636.P12231984183002872618

/-! ## A027636.P12300696434422195848

`A000035(A293817(n))*A029034(n)`
-/

namespace A027636.P12300696434422195848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A293817 n).toNat * A029034 n

end

end A027636.P12300696434422195848

/-! ## A027636.P7231037886316663961

`A029034(n)*A035263(Δ[A000051(n)])`
-/

namespace A027636.P7231037886316663961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029034 n * A035263 (f1 (n + 1) - f1 n).toNat

end

end A027636.P7231037886316663961

/-! ## A027636.P7204929362263471613

`A029034(n)*A035263(A000051(n)-1)`
-/

namespace A027636.P7204929362263471613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029034 n * A035263 (A000051 n - 1).toNat

end

end A027636.P7204929362263471613

/-! ## A027636.P981610103759787373

`A029034(n)*A059841(A214899(n))`
-/

namespace A027636.P981610103759787373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029034 n * A059841 (A214899 n).toNat

end

end A027636.P981610103759787373

/-!
# A027637: a(n) = Product_{i=1..n} (4^i - 1).

The programs for A027637, there is no canonical definition to state claims against.
-/

/-! ## A027637.P4761707322157566533

`∏[lcm(2, 4^n)-1]`
-/

namespace A027637.P4761707322157566533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (4 ^ n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027637.P4761707322157566533

/-! ## A027637.P3615521439707934096

`∏[or(1, 4^n-1)]`
-/

namespace A027637.P3615521439707934096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((4 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027637.P3615521439707934096

/-! ## A027637.P6260687016730385753

`∏[-or(1, -4^n)]`
-/

namespace A027637.P6260687016730385753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(4 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027637.P6260687016730385753

/-! ## A027637.P9784133860749255953

`∏[4*a(n-1)+3]` with `a(0)=1, a(1)=3`
-/

namespace A027637.P9784133860749255953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027637.P9784133860749255953

/-! ## A027637.P13492531593499037136

`(4^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A027637.P13492531593499037136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((4 ^ n : ℤ) - 1) * a (n - 1)

end

end A027637.P13492531593499037136

/-!
# A027638: Order of 2^n X 2^n unitary group H_n acting on Siegel modular forms.

The programs for A027638, there is no canonical definition to state claims against.
-/

/-! ## A027638.P14217328714204915815

`A003956(n)/2`
-/

namespace A027638.P14217328714204915815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003956 n : ℚ) / 2

end

end A027638.P14217328714204915815

/-! ## A027638.P1282653621737132140

`4*C(4^n, 2)*a(n-1)` with `a(0)=4`
-/

namespace A027638.P1282653621737132140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  4 * (Nat.choose (4 ^ n) 2 * a (n - 1))

end

end A027638.P1282653621737132140

/-! ## A027638.P66504090157367474

`2*A090770(n)`
-/

namespace A027638.P66504090157367474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090770 n

end

end A027638.P66504090157367474

/-! ## A027638.P1967067488081353625

`∏[A032087(2*n+1)]`
-/

namespace A027638.P1967067488081353625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032087 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027638.P1967067488081353625

/-! ## A027638.P857579711957524632

`2*A003053(2*(n+1))`
-/

namespace A027638.P857579711957524632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003053 (2 * (n + 1))

end

end A027638.P857579711957524632

/-!
# A027639: Order of unitary 2^n X 2^n group H_{n,4} acting on Siegel modular forms.

The programs for A027639, there is no canonical definition to state claims against.
-/

/-! ## A027639.P12891230108030971052

`8*a(n-1)*A016152(n)` with `a(0)=4`
-/

namespace A027639.P12891230108030971052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  8 * a (n - 1) * A016152 n

end

end A027639.P12891230108030971052

/-! ## A027639.P11888809599867761080

`(a(n-1)+a(n-1))*A059409(n)` with `a(0)=4`
-/

namespace A027639.P11888809599867761080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (a (n - 1) + a (n - 1)) * A059409 n

end

end A027639.P11888809599867761080

/-! ## A027639.P14986986068132445386

`(A005329(n)+A005329(n))*A002416(n+1)`
-/

namespace A027639.P14986986068132445386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005329 n + A005329 n) * A002416 (n + 1)

end

end A027639.P14986986068132445386

/-! ## A027639.P14679832921410875479

`(A006125(n+1)+A006125(n+1))*A028368(n+1)`
-/

namespace A027639.P14679832921410875479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006125 (n + 1) + A006125 (n + 1)) * A028368 (n + 1)

end

end A027639.P14679832921410875479

/-! ## A027639.P11896586640569359089

`A027638(n)/A028362(n+1)`
-/

namespace A027639.P11896586640569359089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027638 n : ℚ) / (A028362 (n + 1) : ℚ)

end

end A027639.P11896586640569359089

/-!
# A027640: Poincaré series [or Poincare series] for ring of modular forms of genus 2.

The programs for A027640, there is no canonical definition to state claims against.
-/

/-! ## A027640.P15609465462764949575

`lcm(A029270(n), A073097(A131575(n)))`
-/

namespace A027640.P15609465462764949575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029270 n) (A073097 (A131575 n).toNat)

end

end A027640.P15609465462764949575

/-! ## A027640.P12558168249755566810

`and(A029331(n), A073097(A131575(n)))`
-/

namespace A027640.P12558168249755566810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029331 n) (A073097 (A131575 n).toNat)

end

end A027640.P12558168249755566810

/-! ## A027640.P11565687015086462018

`A007814(gcd(2, n)^A029270(n))`
-/

namespace A027640.P11565687015086462018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((Nat.gcd 2 n : ℚ) ^ (A029270 n : ℤ))).toNat

end

end A027640.P11565687015086462018

/-! ## A027640.P4649530025455678146

`A008683(A072345(n))*A029270(n)`
-/

namespace A027640.P4649530025455678146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A072345 n).toNat * A029270 n

end

end A027640.P4649530025455678146

/-! ## A027640.P9271357315948775403

`A008683(A072345(n))*A029331(n)`
-/

namespace A027640.P9271357315948775403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A072345 n).toNat * A029331 n

end

end A027640.P9271357315948775403

/-!
# A027641: Numerator of Bernoulli number B_n.

The programs for A027641, there is no canonical definition to state claims against.
-/

/-! ## A027641.P14880389731309031713

`A176327(n)-char[1]`
-/

namespace A027641.P14880389731309031713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A027641.P14880389731309031713

/-! ## A027641.P11516673628178547524

`or(-char[1], A164555(n))`
-/

namespace A027641.P11516673628178547524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A164555 n)

end

end A027641.P11516673628178547524

/-! ## A027641.P16742041561415086372

`(-1)^n*A164555(round(sqrt(n²+1)))`
-/

namespace A027641.P16742041561415086372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A164555 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A027641.P16742041561415086372

/-! ## A027641.P9970285532119206509

`A164555(n)/A033999(n)`
-/

namespace A027641.P9970285532119206509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164555 n : ℚ) / (A033999 n : ℚ)

end

end A027641.P9970285532119206509

/-! ## A027641.P17465066272707385415

`or(A159075(n), A176327(n))`
-/

namespace A027641.P17465066272707385415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A159075 n) (A176327 n)

end

end A027641.P17465066272707385415

/-! ## A027641.P12780686567905219173

`A164555(n*A141044(n)²)`
-/

namespace A027641.P12780686567905219173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 ((n : ℤ) * A141044 n ^ 2).toNat

end

end A027641.P12780686567905219173

/-! ## A027641.P1414912798812814974

`A176327(n*A141044(n)²)`
-/

namespace A027641.P1414912798812814974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 ((n : ℤ) * A141044 n ^ 2).toNat

end

end A027641.P1414912798812814974

/-! ## A027641.P8632244100809276440

`A164555(n)*A309873(n+1)`
-/

namespace A027641.P8632244100809276440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n * A309873 (n + 1)

end

end A027641.P8632244100809276440

/-! ## A027641.P11365566202678184145

`A050925(n)/A159353(n+1)`
-/

namespace A027641.P11365566202678184145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050925 n : ℚ) / (A159353 (n + 1) : ℚ)

end

end A027641.P11365566202678184145

/-! ## A027641.P10549594481533523891

`A164555(n)-2*A063524(n)`
-/

namespace A027641.P10549594481533523891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n - 2 * A063524 n

end

end A027641.P10549594481533523891

/-! ## A027641.P2958252020187554425

`2*A176327(n)-A164555(n)`
-/

namespace A027641.P2958252020187554425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176327 n - A164555 n

end

end A027641.P2958252020187554425

/-! ## A027641.P1687084923269239510

`A164555(n)-2*A178333(n)`
-/

namespace A027641.P1687084923269239510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n - 2 * A178333 n

end

end A027641.P1687084923269239510

/-! ## A027641.P5161685477167005201

`A164555(n)*A168516(A006519(n+1))`
-/

namespace A027641.P5161685477167005201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n * A168516 (A006519 (n + 1)).toNat

end

end A027641.P5161685477167005201

/-! ## A027641.P13447746785319685134

`A164555(n)*A197870(A253145(n+1))`
-/

namespace A027641.P13447746785319685134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n * A197870 (A253145 (n + 1)).toNat

end

end A027641.P13447746785319685134

/-! ## A027641.P13135251710010037497

`A176289(n)+A176327(n)-A027642(n)`
-/

namespace A027641.P13135251710010037497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 n + (A176327 n - A027642 n)

end

end A027641.P13135251710010037497

/-! ## A027641.P5019141656240502235

`A120080(n)+A176327(n)-A120086(n)`
-/

namespace A027641.P5019141656240502235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120080 n + (A176327 n - A120086 n)

end

end A027641.P5019141656240502235

/-! ## A027641.P12281817547068639057

`A176591(n)+A176327(n)-A141056(n)`
-/

namespace A027641.P12281817547068639057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 n + (A176327 n - A141056 n)

end

end A027641.P12281817547068639057

/-! ## A027641.P732850064067065894

`A164555(n*A141044(n)*A141044(n))`
-/

namespace A027641.P732850064067065894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 ((n : ℤ) * A141044 n * A141044 n).toNat

end

end A027641.P732850064067065894

/-! ## A027641.P9484004273444762848

`A176327(n*A141044(n)*A141044(n))`
-/

namespace A027641.P9484004273444762848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 ((n : ℤ) * A141044 n * A141044 n).toNat

end

end A027641.P9484004273444762848

/-! ## A027641.P17665959510523579611

`A164555(n)+A120086(n)*A176327(n+1)`
-/

namespace A027641.P17665959510523579611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n + A120086 n * A176327 (n + 1)

end

end A027641.P17665959510523579611

/-!
# A027642: Denominator of Bernoulli number B_n.

The programs for A027642, the canonical program `A027642.P11573445315954727429` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027642 has offset 0).

The definition of A027642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027642.P11573445315954727429

`A141056(n*A266591(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A027642

/-- `A141056(n*A266591(n))` -/
def P11573445315954727429.Spec : Prop :=
  ∀ n, P11573445315954727429.a n = A027642 n

theorem P11573445315954727429.correct : P11573445315954727429.Spec := by
  intro n
  simp only [A027642]

end A027642

/-! ## A027642.P12673801916703443452

`xor(A010674(n), A176591(n))`
-/

namespace A027642.P12673801916703443452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 n) (A176591 n)

end

end A027642.P12673801916703443452

namespace A027642

/-- `xor(A010674(n), A176591(n))` -/
def P12673801916703443452.Spec : Prop :=
  ∀ n, P12673801916703443452.a n = A027642 n

end A027642

/-! ## A027642.P18440413526142402742

`A141056(n)+A266591(n)-1`
-/

namespace A027642.P18440413526142402742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n + (A266591 n - 1)

end

end A027642.P18440413526142402742

namespace A027642

/-- `A141056(n)+A266591(n)-1` -/
def P18440413526142402742.Spec : Prop :=
  ∀ n, P18440413526142402742.a n = A027642 n

end A027642

/-! ## A027642.P7262245983904729962

`A050932(n)*A326584(n+1)`
-/

namespace A027642.P7262245983904729962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 n * A326584 (n + 1)

end

end A027642.P7262245983904729962

namespace A027642

/-- `A050932(n)*A326584(n+1)` -/
def P7262245983904729962.Spec : Prop :=
  ∀ n, P7262245983904729962.a n = A027642 n

end A027642

/-! ## A027642.P16036629299985890189

`(A141056(n)+A106458(n))/2`
-/

namespace A027642.P16036629299985890189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n + A106458 n : ℚ) / 2

end

end A027642.P16036629299985890189

namespace A027642

/-- `(A141056(n)+A106458(n))/2` -/
def P16036629299985890189.Spec : Prop :=
  ∀ n, P16036629299985890189.a n = (A027642 n : ℚ)

end A027642

/-! ## A027642.P12749529897238958986

`A326579(n+1)/A326478(n+1)`
-/

namespace A027642.P12749529897238958986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326579 (n + 1) : ℚ) / (A326478 (n + 1) : ℚ)

end

end A027642.P12749529897238958986

namespace A027642

/-- `A326579(n+1)/A326478(n+1)` -/
def P12749529897238958986.Spec : Prop :=
  ∀ n, P12749529897238958986.a n = (A027642 n : ℚ)

end A027642

/-! ## A027642.P18318835830642813277

`A141056(n)/gcd(2, A072994(n+1))`
-/

namespace A027642.P18318835830642813277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (Int.gcd 2 (A072994 (n + 1)) : ℚ)

end

end A027642.P18318835830642813277

namespace A027642

/-- `A141056(n)/gcd(2, A072994(n+1))` -/
def P18318835830642813277.Spec : Prop :=
  ∀ n, P18318835830642813277.a n = (A027642 n : ℚ)

end A027642

/-! ## A027642.P4403136175110217713

`A141056(n)/A014963(A135517(n))`
-/

namespace A027642.P4403136175110217713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (A014963 (A135517 n).toNat : ℚ)

end

end A027642.P4403136175110217713

namespace A027642

/-- `A141056(n)/A014963(A135517(n))` -/
def P4403136175110217713.Spec : Prop :=
  ∀ n, P4403136175110217713.a n = (A027642 n : ℚ)

end A027642

/-! ## A027642.P15667901313394143603

`A089026(n+1)*A166123(n+1)*A050932(n)`
-/

namespace A027642.P15667901313394143603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) * A166123 (n + 1) * A050932 n

end

end A027642.P15667901313394143603

namespace A027642

/-- `A089026(n+1)*A166123(n+1)*A050932(n)` -/
def P15667901313394143603.Spec : Prop :=
  ∀ n, P15667901313394143603.a n = A027642 n

end A027642

/-! ## A027642.P137780779253002698

`A144845(n)/A286515(n)`
-/

namespace A027642.P137780779253002698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A286515 n : ℚ)

end

end A027642.P137780779253002698

namespace A027642

/-- `A144845(n)/A286515(n)` -/
def P137780779253002698.Spec : Prop :=
  ∀ n, P137780779253002698.a n = (A027642 n : ℚ)

end A027642

/-! ## A027642.P3194368860611275475

`sqrt(A172282(n))`
-/

namespace A027642.P3194368860611275475
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A172282 n : ℝ)

end

end A027642.P3194368860611275475

namespace A027642

/-- `sqrt(A172282(n))` -/
def P3194368860611275475.Spec : Prop :=
  ∀ n, P3194368860611275475.a n = (A027642 n : ℝ)

end A027642

/-! ## A027642.P9685934034220357559

`A176289(n)+char[1]`
-/

namespace A027642.P9685934034220357559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A027642.P9685934034220357559

namespace A027642

/-- `A176289(n)+char[1]` -/
def P9685934034220357559.Spec : Prop :=
  ∀ n, P9685934034220357559.a n = A027642 n

end A027642

/-! ## A027642.P7491505778446632494

`A176289(n)*A373565(n)`
-/

namespace A027642.P7491505778446632494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 n * A373565 n

end

end A027642.P7491505778446632494

namespace A027642

/-- `A176289(n)*A373565(n)` -/
def P7491505778446632494.Spec : Prop :=
  ∀ n, P7491505778446632494.a n = A027642 n

end A027642

/-! ## A027642.P10850503729858095069

`gcd(A002445(n), A172282(n))`
-/

namespace A027642.P10850503729858095069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002445 n) (A172282 n)

end

end A027642.P10850503729858095069

namespace A027642

/-- `gcd(A002445(n), A172282(n))` -/
def P10850503729858095069.Spec : Prop :=
  ∀ n, (P10850503729858095069.a n : ℤ) = A027642 n

end A027642

/-! ## A027642.P16259437446201198988

`lcm(A166333(n), A176289(n))`
-/

namespace A027642.P16259437446201198988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166333 n) (A176289 n)

end

end A027642.P16259437446201198988

namespace A027642

/-- `lcm(A166333(n), A176289(n))` -/
def P16259437446201198988.Spec : Prop :=
  ∀ n, (P16259437446201198988.a n : ℤ) = A027642 n

end A027642

/-! ## A027642.P768604789285623593

`(A063524(n)+1)*A176289(n)`
-/

namespace A027642.P768604789285623593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) * A176289 n

end

end A027642.P768604789285623593

namespace A027642

/-- `(A063524(n)+1)*A176289(n)` -/
def P768604789285623593.Spec : Prop :=
  ∀ n, P768604789285623593.a n = A027642 n

end A027642

/-! ## A027642.P6330369592572031322

`A141056(n)+A176289(n)-A176591(n)`
-/

namespace A027642.P6330369592572031322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n + (A176289 n - A176591 n)

end

end A027642.P6330369592572031322

namespace A027642

/-- `A141056(n)+A176289(n)-A176591(n)` -/
def P6330369592572031322.Spec : Prop :=
  ∀ n, P6330369592572031322.a n = A027642 n

end A027642

/-! ## A027642.P4871690141372589363

`A089026(n+1)*A166120(n+1)`
-/

namespace A027642.P4871690141372589363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) * A166120 (n + 1)

end

end A027642.P4871690141372589363

namespace A027642

/-- `A089026(n+1)*A166120(n+1)` -/
def P4871690141372589363.Spec : Prop :=
  ∀ n, P4871690141372589363.a n = A027642 n

end A027642

/-! ## A027642.P1832013185565253763

`(A166260(n+1)+1)*A166120(n+1)`
-/

namespace A027642.P1832013185565253763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166260 (n + 1) + 1) * A166120 (n + 1)

end

end A027642.P1832013185565253763

namespace A027642

/-- `(A166260(n+1)+1)*A166120(n+1)` -/
def P1832013185565253763.Spec : Prop :=
  ∀ n, P1832013185565253763.a n = A027642 n

end A027642

/-! ## A027642.P14470054698967285367

`gcd(A141056(n), A164869(n))`
-/

namespace A027642.P14470054698967285367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141056 n) (A164869 n)

end

end A027642.P14470054698967285367

namespace A027642

/-- `gcd(A141056(n), A164869(n))` -/
def P14470054698967285367.Spec : Prop :=
  ∀ n, (P14470054698967285367.a n : ℤ) = A027642 n

end A027642

/-!
# A027644: Denominators of poly-Bernoulli numbers B_n^(k) with k=2.

The programs for A027644, there is no canonical definition to state claims against.
-/

/-! ## A027644.P3738705389815213287

`A280488(∏{digits}[A336805(n), #])`
-/

namespace A027644.P3738705389815213287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280488 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A027644.P3738705389815213287

/-!
# A027645: Numerators of poly-Bernoulli numbers B_n^(k) with k=3.

The programs for A027645, there is no canonical definition to state claims against.
-/

/-! ## A027645.P15170472122819147889

`A326973(n)+A326938(A000961(3*n+4))`
-/

namespace A027645.P15170472122819147889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326973 n + A326938 (A000961 (3 * n + 4)).toNat

end

end A027645.P15170472122819147889

/-!
# A027646: Denominators of poly-Bernoulli numbers B_n^(k) with k=3.

The programs for A027646, there is no canonical definition to state claims against.
-/

/-! ## A027646.P16389416909650824651

`A064549(A219247(n))`
-/

namespace A027646.P16389416909650824651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A219247 n).toNat

end

end A027646.P16389416909650824651

/-! ## A027646.P4858035285839882413

`A224096(n)/A060383(n!)`
-/

namespace A027646.P4858035285839882413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224096 n : ℚ) / (A060383 (Nat.factorial n) : ℚ)

end

end A027646.P4858035285839882413

/-!
# A027648: Denominators of poly-Bernoulli numbers B_n^(k) with k=4.

The programs for A027648, there is no canonical definition to state claims against.
-/

/-! ## A027648.P8061969339220099664

`A224105(n)/A088569(A088582(n))`
-/

namespace A027648.P8061969339220099664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224105 n : ℚ) / (A088569 (A088582 n).toNat : ℚ)

end

end A027648.P8061969339220099664

/-! ## A027648.P16358206136604304968

`A224105(n)/A064372(A192462(n))`
-/

namespace A027648.P16358206136604304968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224105 n : ℚ) / (A064372 (A192462 n).toNat : ℚ)

end

end A027648.P16358206136604304968

/-!
# A027649: a(n) = 2*(3^n) - 2^n.

The programs for A027649, the canonical program `A027649.P2434933350896167885` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027649 has offset 0).

The definition of A027649 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^n-2^n` (program `A027649.P2434933350896167885`, by `A027649.P2434933350896167885.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027649.P2434933350896167885

`2*3^n-2^n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027649

/-- `2*3^n-2^n` -/
def P2434933350896167885.Spec : Prop :=
  ∀ n, P2434933350896167885.a n = A027649 n

theorem P2434933350896167885.correct : P2434933350896167885.Spec := by
  intro n
  simp only [A027649]

end A027649

/-! ## A027649.P14194102375356375439

`A166060(n+1)/6`
-/

namespace A027649.P14194102375356375439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166060 (n + 1) : ℚ) / 6

end

end A027649.P14194102375356375439

namespace A027649

/-- `A166060(n+1)/6` -/
def P14194102375356375439.Spec : Prop :=
  ∀ n, P14194102375356375439.a n = (A027649 n : ℚ)

theorem P14194102375356375439.correct : P14194102375356375439.Spec := by
  intro n
  simp only [A027649, Nat.add_sub_cancel, A027649.P14194102375356375439.a, A027649.P2434933350896167885.a, A166060, A166060.P1727466123413902011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027649

/-! ## A027649.P6203414398050888757

`ogf((1-x)/(1-5x+6x^2))`
-/

namespace A027649.P6203414398050888757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -5, 6] n

end

end A027649.P6203414398050888757

namespace A027649

/-- `ogf((1-x)/(1-5x+6x^2))` -/
def P6203414398050888757.Spec : Prop :=
  ∀ n, P6203414398050888757.a n = A027649 n

end A027649

/-! ## A027649.P15420961276230477212

`floor(5*(a(n-1)-a(n-2))-a(n-2))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A027649.P15420961276230477212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  5 * (a (n - 1) - a (n - 2)) - a (n - 2)

end

end A027649.P15420961276230477212

namespace A027649

/-- `floor(5*(a(n-1)-a(n-2))-a(n-2))` -/
def P15420961276230477212.Spec : Prop :=
  ∀ n, P15420961276230477212.a n = A027649 n

theorem P15420961276230477212.correct : P15420961276230477212.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A027649, Nat.add_sub_cancel, A027649.P15420961276230477212.a, A027649.P2434933350896167885.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A027649, Nat.add_sub_cancel, A027649.P15420961276230477212.a, A027649.P2434933350896167885.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A027649

/-! ## A027649.P175895299312856262

`∑[A053581(n)]`
-/

namespace A027649.P175895299312856262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027649.P175895299312856262

namespace A027649

/-- `∑[A053581(n)]` -/
def P175895299312856262.Spec : Prop :=
  ∀ n, P175895299312856262.a n = A027649 n

end A027649

/-! ## A027649.P9810173741956530317

`Δ[A001047(n)]`
-/

namespace A027649.P9810173741956530317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027649.P9810173741956530317

namespace A027649

/-- `Δ[A001047(n)]` -/
def P9810173741956530317.Spec : Prop :=
  ∀ n, P9810173741956530317.a n = A027649 n

theorem P9810173741956530317.correct : P9810173741956530317.Spec := by
  intro n
  simp only [A027649, Nat.add_sub_cancel, A027649.P9810173741956530317.f1, A027649.P9810173741956530317.a, A027649.P2434933350896167885.a, A001047, A001047.P13659031121335709313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027649

/-! ## A027649.P13007529277849389465

`Δ[A083323(n)]`
-/

namespace A027649.P13007529277849389465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027649.P13007529277849389465

namespace A027649

/-- `Δ[A083323(n)]` -/
def P13007529277849389465.Spec : Prop :=
  ∀ n, P13007529277849389465.a n = A027649 n

theorem P13007529277849389465.correct : P13007529277849389465.Spec := by
  intro n
  simp only [A027649, Nat.add_sub_cancel, A027649.P13007529277849389465.f1, A027649.P13007529277849389465.a, A027649.P2434933350896167885.a, A083323, A083323.P7131212959900331336.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027649

/-! ## A027649.P8785294719451597667

`A095698(Δ[n²])`
-/

namespace A027649.P8785294719451597667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095698 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A027649.P8785294719451597667

namespace A027649

/-- `A095698(Δ[n²])` -/
def P8785294719451597667.Spec : Prop :=
  ∀ n, P8785294719451597667.a n = A027649 n

end A027649

/-! ## A027649.P7150368133506871163

`Δ[Δ[A134063(n)]]`
-/

namespace A027649.P7150368133506871163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027649.P7150368133506871163

namespace A027649

/-- `Δ[Δ[A134063(n)]]` -/
def P7150368133506871163.Spec : Prop :=
  ∀ n, P7150368133506871163.a n = A027649 n

end A027649

/-! ## A027649.P16041517529044512572

`(A135914(n)+1)/2`
-/

namespace A027649.P16041517529044512572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135914 n + 1 : ℚ) / 2

end

end A027649.P16041517529044512572

namespace A027649

/-- `(A135914(n)+1)/2` -/
def P16041517529044512572.Spec : Prop :=
  ∀ n, P16041517529044512572.a n = (A027649 n : ℚ)

theorem P16041517529044512572.correct : P16041517529044512572.Spec := by
  intro n
  simp only [A027649, Nat.add_sub_cancel, A027649.P16041517529044512572.a, A027649.P2434933350896167885.a, A135914, A135914.P12331733538673637656.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027649

/-! ## A027649.P6637903663483324678

`Δ[Δ[A000392(n+1)]]`
-/

namespace A027649.P6637903663483324678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027649.P6637903663483324678

namespace A027649

/-- `Δ[Δ[A000392(n+1)]]` -/
def P6637903663483324678.Spec : Prop :=
  ∀ n, P6637903663483324678.a n = A027649 n

end A027649

/-! ## A027649.P14180000950396436527

`Δ[A304973(2*n+1)]`
-/

namespace A027649.P14180000950396436527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027649.P14180000950396436527

namespace A027649

/-- `Δ[A304973(2*n+1)]` -/
def P14180000950396436527.Spec : Prop :=
  ∀ n, P14180000950396436527.a n = A027649 n

end A027649

/-! ## A027649.P7224194791949097648

`Δ[Δ[A056509(2*n+1)]]`
-/

namespace A027649.P7224194791949097648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056509 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027649.P7224194791949097648

namespace A027649

/-- `Δ[Δ[A056509(2*n+1)]]` -/
def P7224194791949097648.Spec : Prop :=
  ∀ n, P7224194791949097648.a n = A027649 n

end A027649

/-! ## A027649.P15677483234467030254

`Δ[A002783(n)/2]`
-/

namespace A027649.P15677483234467030254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002783 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027649.P15677483234467030254

namespace A027649

/-- `Δ[A002783(n)/2]` -/
def P15677483234467030254.Spec : Prop :=
  ∀ n, P15677483234467030254.a n = (A027649 n : ℚ)

theorem P15677483234467030254.correct : P15677483234467030254.Spec := by
  intro n
  simp only [A027649, Nat.add_sub_cancel, A027649.P15677483234467030254.f1, A027649.P15677483234467030254.a, A027649.P2434933350896167885.a, A002783, A002783.P13135652513880479999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027649

/-! ## A027649.P17163146423972200035

`Δ[A056182(n)/2]`
-/

namespace A027649.P17163146423972200035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056182 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027649.P17163146423972200035

namespace A027649

/-- `Δ[A056182(n)/2]` -/
def P17163146423972200035.Spec : Prop :=
  ∀ n, P17163146423972200035.a n = (A027649 n : ℚ)

theorem P17163146423972200035.correct : P17163146423972200035.Spec := by
  intro n
  simp only [A027649, Nat.add_sub_cancel, A027649.P17163146423972200035.f1, A027649.P17163146423972200035.a, A027649.P2434933350896167885.a, A056182, A056182.P12278696812602532658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027649

/-! ## A027649.P8346888386924380711

`Δ[A210448(n)/3]`
-/

namespace A027649.P8346888386924380711
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210448 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027649.P8346888386924380711

namespace A027649

/-- `Δ[A210448(n)/3]` -/
def P8346888386924380711.Spec : Prop :=
  ∀ n, P8346888386924380711.a n = (A027649 n : ℚ)

theorem P8346888386924380711.correct : P8346888386924380711.Spec := by
  intro n
  simp only [A027649, Nat.add_sub_cancel, A027649.P8346888386924380711.f1, A027649.P8346888386924380711.a, A027649.P2434933350896167885.a, A210448, A210448.P2221736625944417874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027649

/-! ## A027649.P14544262901729045152

`Δ[A145563(n)/4]`
-/

namespace A027649.P14544262901729045152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145563 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027649.P14544262901729045152

namespace A027649

/-- `Δ[A145563(n)/4]` -/
def P14544262901729045152.Spec : Prop :=
  ∀ n, P14544262901729045152.a n = (A027649 n : ℚ)

theorem P14544262901729045152.correct : P14544262901729045152.Spec := by
  intro n
  simp only [A027649, Nat.add_sub_cancel, A027649.P14544262901729045152.f1, A027649.P14544262901729045152.a, A027649.P2434933350896167885.a, A145563, A145563.P10240226980197790091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027649

/-! ## A027649.P11198007745041486431

`Δ[A169650(n+1)/4]`
-/

namespace A027649.P11198007745041486431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169650 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027649.P11198007745041486431

namespace A027649

/-- `Δ[A169650(n+1)/4]` -/
def P11198007745041486431.Spec : Prop :=
  ∀ n, P11198007745041486431.a n = (A027649 n : ℚ)

end A027649

/-! ## A027649.P6841931005208846655

`A304168(n+1)%A008776(n)`
-/

namespace A027649.P6841931005208846655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304168 (n + 1)) (A008776 n)

end

end A027649.P6841931005208846655

namespace A027649

/-- `A304168(n+1)%A008776(n)` -/
def P6841931005208846655.Spec : Prop :=
  ∀ n, P6841931005208846655.a n = A027649 n

end A027649

/-! ## A027649.P10075286993336983006

`Δ[A344215(n+1)/(n+1)]`
-/

namespace A027649.P10075286993336983006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344215 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027649.P10075286993336983006

namespace A027649

/-- `Δ[A344215(n+1)/(n+1)]` -/
def P10075286993336983006.Spec : Prop :=
  ∀ n, P10075286993336983006.a n = (A027649 n : ℚ)

end A027649

/-!
# A027650: Poly-Bernoulli numbers B_n^(k) with k=-3.

The programs for A027650, the canonical program `A027650.P18314882017031302540` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027650 has offset 0).

The definition of A027650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027650.P18314882017031302540

`2^n-6*3^n+6*4^n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027650

/-- `2^n-6*3^n+6*4^n` -/
def P18314882017031302540.Spec : Prop :=
  ∀ n, P18314882017031302540.a n = A027650 n

theorem P18314882017031302540.correct : P18314882017031302540.Spec := by
  intro n
  simp only [A027650]

end A027650

/-! ## A027650.P4585218168839615795

`∑[A291002(n)-A291010(n)]`
-/

namespace A027650.P4585218168839615795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291002 n - A291010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027650.P4585218168839615795

namespace A027650

/-- `∑[A291002(n)-A291010(n)]` -/
def P4585218168839615795.Spec : Prop :=
  ∀ n, P4585218168839615795.a n = A027650 n

end A027650

/-! ## A027650.P14066105927478231170

`∑[A291010(n)-A291009(n)]`
-/

namespace A027650.P14066105927478231170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291010 n - A291009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027650.P14066105927478231170

namespace A027650

/-- `∑[A291010(n)-A291009(n)]` -/
def P14066105927478231170.Spec : Prop :=
  ∀ n, P14066105927478231170.a n = A027650 n

end A027650

/-! ## A027650.P14847258641032043025

`Δ[A085350(n)-A027649(n)]`
-/

namespace A027650.P14847258641032043025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085350 n - A027649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027650.P14847258641032043025

namespace A027650

/-- `Δ[A085350(n)-A027649(n)]` -/
def P14847258641032043025.Spec : Prop :=
  ∀ n, P14847258641032043025.a n = A027650 n

theorem P14847258641032043025.correct : P14847258641032043025.Spec := by
  intro n
  simp only [A027650, Nat.add_sub_cancel, A027650.P14847258641032043025.f1, A027650.P14847258641032043025.a, A027650.P18314882017031302540.a, A027649, A027649.P2434933350896167885.a, A085350, A085350.P14273173048243709078.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027650

/-! ## A027650.P6107420637120391392

`Δ[A004171(n)-A304167(n+1)]`
-/

namespace A027650.P6107420637120391392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - A304167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027650.P6107420637120391392

namespace A027650

/-- `Δ[A004171(n)-A304167(n+1)]` -/
def P6107420637120391392.Spec : Prop :=
  ∀ n, P6107420637120391392.a n = A027650 n

end A027650

/-! ## A027650.P17120626521028137751

`Δ[A028244(n+1)+A000225(n)²]`
-/

namespace A027650.P17120626521028137751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028244 (n + 1) + A000225 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027650.P17120626521028137751

namespace A027650

/-- `Δ[A028244(n+1)+A000225(n)²]` -/
def P17120626521028137751.Spec : Prop :=
  ∀ n, P17120626521028137751.a n = A027650 n

end A027650

/-! ## A027650.P3047429919804914464

`Δ[Δ[A032263(n+1)+A006095(n)]]`
-/

namespace A027650.P3047429919804914464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032263 (n + 1) + A006095 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027650.P3047429919804914464

namespace A027650

/-- `Δ[Δ[A032263(n+1)+A006095(n)]]` -/
def P3047429919804914464.Spec : Prop :=
  ∀ n, P3047429919804914464.a n = A027650 n

end A027650

/-! ## A027650.P15651167531388443801

`Δ[A006516(n)+Δ[A032263(n+1)]]`
-/

namespace A027650.P15651167531388443801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032263 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027650.P15651167531388443801

namespace A027650

/-- `Δ[A006516(n)+Δ[A032263(n+1)]]` -/
def P15651167531388443801.Spec : Prop :=
  ∀ n, P15651167531388443801.a n = A027650 n

end A027650

/-! ## A027650.P644727758157683320

`Δ[A006516(n+1)-A001047(n+1)]`
-/

namespace A027650.P644727758157683320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1) - A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027650.P644727758157683320

namespace A027650

/-- `Δ[A006516(n+1)-A001047(n+1)]` -/
def P644727758157683320.Spec : Prop :=
  ∀ n, P644727758157683320.a n = A027650 n

end A027650

/-! ## A027650.P1621425418675413906

`Δ[A007582(n+1)-A000244(n+1)]`
-/

namespace A027650.P1621425418675413906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (n + 1) - A000244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027650.P1621425418675413906

namespace A027650

/-- `Δ[A007582(n+1)-A000244(n+1)]` -/
def P1621425418675413906.Spec : Prop :=
  ∀ n, P1621425418675413906.a n = A027650 n

end A027650

/-! ## A027650.P2607401218389815431

`Δ[A167762(2*n+1)-A001047(n)]`
-/

namespace A027650.P2607401218389815431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 (2 * n + 1) - A001047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027650.P2607401218389815431

namespace A027650

/-- `Δ[A167762(2*n+1)-A001047(n)]` -/
def P2607401218389815431.Spec : Prop :=
  ∀ n, P2607401218389815431.a n = A027650 n

end A027650

/-! ## A027650.P8915933781711889045

`Δ[Δ[A007581(n+1)]-A000244(n+1)]`
-/

namespace A027650.P8915933781711889045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027650.P8915933781711889045

namespace A027650

/-- `Δ[Δ[A007581(n+1)]-A000244(n+1)]` -/
def P8915933781711889045.Spec : Prop :=
  ∀ n, P8915933781711889045.a n = A027650 n

end A027650

/-! ## A027650.P8764990681608174880

`Δ[Δ[A007581(n+1)-A003462(n+1)]]`
-/

namespace A027650.P8764990681608174880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 (n + 1) - A003462 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027650.P8764990681608174880

namespace A027650

/-- `Δ[Δ[A007581(n+1)-A003462(n+1)]]` -/
def P8764990681608174880.Spec : Prop :=
  ∀ n, P8764990681608174880.a n = A027650 n

end A027650

/-! ## A027650.P2345469349270635210

`Δ[A007582(n+1)-Δ[A003462(n+1)]]`
-/

namespace A027650.P2345469349270635210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027650.P2345469349270635210

namespace A027650

/-- `Δ[A007582(n+1)-Δ[A003462(n+1)]]` -/
def P2345469349270635210.Spec : Prop :=
  ∀ n, P2345469349270635210.a n = A027650 n

end A027650

/-! ## A027650.P18440175464336296753

`Δ[Δ[A007581(n+1)-A007051(n+1)]]`
-/

namespace A027650.P18440175464336296753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 (n + 1) - A007051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027650.P18440175464336296753

namespace A027650

/-- `Δ[Δ[A007581(n+1)-A007051(n+1)]]` -/
def P18440175464336296753.Spec : Prop :=
  ∀ n, P18440175464336296753.a n = A027650 n

end A027650

/-! ## A027650.P11873319552177009191

`Δ[A007582(n+1)-Δ[A007051(n+1)]]`
-/

namespace A027650.P11873319552177009191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027650.P11873319552177009191

namespace A027650

/-- `Δ[A007582(n+1)-Δ[A007051(n+1)]]` -/
def P11873319552177009191.Spec : Prop :=
  ∀ n, P11873319552177009191.a n = A027650 n

end A027650

/-! ## A027650.P1779382321241696708

`Δ[A002250(n)+A024036(n)-A001047(n)]`
-/

namespace A027650.P1779382321241696708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002250 n + (A024036 n - A001047 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027650.P1779382321241696708

namespace A027650

/-- `Δ[A002250(n)+A024036(n)-A001047(n)]` -/
def P1779382321241696708.Spec : Prop :=
  ∀ n, P1779382321241696708.a n = A027650 n

theorem P1779382321241696708.correct : P1779382321241696708.Spec := by
  intro n
  simp only [A027650, Nat.add_sub_cancel, A027650.P1779382321241696708.f1, A027650.P1779382321241696708.a, A027650.P18314882017031302540.a, A001047, A001047.P13659031121335709313.a, A002250, A002250.P15900526212734195691.a, A024036, A024036.P9245189437657330470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027650

/-! ## A027650.P18202999223399769713

`∑[A027649(n)/A000302(n)]*A000302(n)`
-/

namespace A027650.P18202999223399769713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027649 n : ℚ) / (A000302 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000302 n : ℚ)

end

end A027650.P18202999223399769713

namespace A027650

/-- `∑[A027649(n)/A000302(n)]*A000302(n)` -/
def P18202999223399769713.Spec : Prop :=
  ∀ n, P18202999223399769713.a n = (A027650 n : ℚ)

end A027650

/-! ## A027650.P8807004455395948340

`∑[A255463(n)/A000079(n)]*A000079(n)`
-/

namespace A027650.P8807004455395948340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255463 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A027650.P8807004455395948340

namespace A027650

/-- `∑[A255463(n)/A000079(n)]*A000079(n)` -/
def P8807004455395948340.Spec : Prop :=
  ∀ n, P8807004455395948340.a n = (A027650 n : ℚ)

end A027650

/-! ## A027650.P6118474696141735027

`∑[A255463(n)/A007283(n)]*A007283(n)`
-/

namespace A027650.P6118474696141735027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255463 n : ℚ) / (A007283 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A007283 n : ℚ)

end

end A027650.P6118474696141735027

namespace A027650

/-- `∑[A255463(n)/A007283(n)]*A007283(n)` -/
def P6118474696141735027.Spec : Prop :=
  ∀ n, P6118474696141735027.a n = (A027650 n : ℚ)

end A027650

/-!
# A027651: Poly-Bernoulli numbers B_n^(k) with k=-4.

The programs for A027651, the canonical program `A027651.P8499432226660582693` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027651 has offset 0).

The definition of A027651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027651.P8499432226660582693

`24*5^n-36*4^n+14*3^n-2^n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027651

/-- `24*5^n-36*4^n+14*3^n-2^n` -/
def P8499432226660582693.Spec : Prop :=
  ∀ n, P8499432226660582693.a n = A027651 n

theorem P8499432226660582693.correct : P8499432226660582693.Spec := by
  intro n
  simp only [A027651]

end A027651

/-! ## A027651.P4679136561877743669

`A099594(A155212(n)+12)`
-/

namespace A027651.P4679136561877743669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A155212 n + 12).toNat

end

end A027651.P4679136561877743669

namespace A027651

/-- `A099594(A155212(n)+12)` -/
def P4679136561877743669.Spec : Prop :=
  ∀ n, P4679136561877743669.a n = A027651 n

end A027651

/-! ## A027651.P10650241965866245025

`A099594(eq[4, A002262(n)])`
-/

namespace A027651.P10650241965866245025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027651.P10650241965866245025

namespace A027651

/-- `A099594(eq[4, A002262(n)])` -/
def P10650241965866245025.Spec : Prop :=
  ∀ n, P10650241965866245025.a n = A027651 n

end A027651

/-! ## A027651.P4883069290731401802

`A099594(A167614(n+3)+1)`
-/

namespace A027651.P4883069290731401802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A167614 (n + 3) + 1).toNat

end

end A027651.P4883069290731401802

namespace A027651

/-- `A099594(A167614(n+3)+1)` -/
def P4883069290731401802.Spec : Prop :=
  ∀ n, P4883069290731401802.a n = A027651 n

end A027651

/-! ## A027651.P4131304831599810420

`A099594(A000217(n+4)+4)`
-/

namespace A027651.P4131304831599810420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A000217 (n + 4) + 4).toNat

end

end A027651.P4131304831599810420

namespace A027651

/-- `A099594(A000217(n+4)+4)` -/
def P4131304831599810420.Spec : Prop :=
  ∀ n, P4131304831599810420.a n = A027651 n

end A027651

/-! ## A027651.P13581219337465573536

`A099594(A027379(n+2)+7)`
-/

namespace A027651.P13581219337465573536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A027379 (n + 2) + 7).toNat

end

end A027651.P13581219337465573536

namespace A027651

/-- `A099594(A027379(n+2)+7)` -/
def P13581219337465573536.Spec : Prop :=
  ∀ n, P13581219337465573536.a n = A027651 n

end A027651

/-! ## A027651.P4080058013895166325

`A099594(A052905(n+1)+9)`
-/

namespace A027651.P4080058013895166325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A052905 (n + 1) + 9).toNat

end

end A027651.P4080058013895166325

namespace A027651

/-- `A099594(A052905(n+1)+9)` -/
def P4080058013895166325.Spec : Prop :=
  ∀ n, P4080058013895166325.a n = A027651 n

end A027651

/-! ## A027651.P3849198015846730618

`A099594(A055999(n+1)+10)`
-/

namespace A027651.P3849198015846730618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A055999 (n + 1) + 10).toNat

end

end A027651.P3849198015846730618

namespace A027651

/-- `A099594(A055999(n+1)+10)` -/
def P3849198015846730618.Spec : Prop :=
  ∀ n, P3849198015846730618.a n = A027651 n

end A027651

/-! ## A027651.P14680586219089920732

`A099594(eq[2, A144328(n+1)-2])`
-/

namespace A027651.P14680586219089920732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027651.P14680586219089920732

namespace A027651

/-- `A099594(eq[2, A144328(n+1)-2])` -/
def P14680586219089920732.Spec : Prop :=
  ∀ n, P14680586219089920732.a n = A027651 n

end A027651

/-! ## A027651.P18313946430464226710

`A099594(eq[2, A144328(n+1)/2])`
-/

namespace A027651.P18313946430464226710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A027651.P18313946430464226710

namespace A027651

/-- `A099594(eq[2, A144328(n+1)/2])` -/
def P18313946430464226710.Spec : Prop :=
  ∀ n, P18313946430464226710.a n = A027651 n

end A027651

/-!
# A027652: Values of Zagier's function J_1.

The programs for A027652, there is no canonical definition to state claims against.
-/

/-! ## A027652.P9724066588028076465

`A027653(∑[A133872(n)])*A133872(n)`
-/

namespace A027652.P9724066588028076465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027653 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A133872 n

end

end A027652.P9724066588028076465

/-! ## A027652.P6808069515589029494

`A027653(A110654(n)+1)*A133872(n)`
-/

namespace A027652.P6808069515589029494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027653 (A110654 n + 1).toNat * A133872 n

end

end A027652.P6808069515589029494

/-! ## A027652.P8638997844689873617

`A000035(A008619(n))*A027653(A110654(n)+1)`
-/

namespace A027652.P8638997844689873617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008619 n).toNat * A027653 (A110654 n + 1).toNat

end

end A027652.P8638997844689873617

/-! ## A027652.P17415192970223851553

`A000035(A000124(n)-n)*A027653(A110654(n)+1)`
-/

namespace A027652.P17415192970223851553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000124 n - (n : ℤ)).toNat * A027653 (A110654 n + 1).toNat

end

end A027652.P17415192970223851553

/-! ## A027652.P6066509827513092281

`A000035(∑[n+1])*A027653(A110654(n)+1)`
-/

namespace A027652.P6066509827513092281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f1 j) * A027653 (A110654 n + 1).toNat

end

end A027652.P6066509827513092281

/-!
# A027654: Zagier's function -J_1(4*n-1).

The programs for A027654, there is no canonical definition to state claims against.
-/

/-! ## A027654.P10610371690062654371

`record[-A027653(n+1)]`
-/

namespace A027654.P10610371690062654371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A027653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027654.P10610371690062654371

/-! ## A027654.P17659206000465083156

`abs(A027653(2*n+1))`
-/

namespace A027654.P17659206000465083156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027653 (2 * n + 1)|

end

end A027654.P17659206000465083156

/-! ## A027654.P2424867713339660813

`A000035(2*n)-A027653(2*n+1)`
-/

namespace A027654.P2424867713339660813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A027653 (2 * n + 1)

end

end A027654.P2424867713339660813

/-! ## A027654.P17067491188597482327

`A110654(2*n)-(A027653(2*n+1)+n)`
-/

namespace A027654.P17067491188597482327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * n) - (A027653 (2 * n + 1) + (n : ℤ))

end

end A027654.P17067491188597482327

/-! ## A027654.P11551465931873274853

`(n-A008619(2*n))*A027653(2*n+1)`
-/

namespace A027654.P11551465931873274853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A008619 (2 * n)) * A027653 (2 * n + 1)

end

end A027654.P11551465931873274853

/-! ## A027654.P4306063302545182290

`A133872(2*n+1)-(A133872(2*n)+A027653(2*n+1))`
-/

namespace A027654.P4306063302545182290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (2 * n + 1) - (A133872 (2 * n) + A027653 (2 * n + 1))

end

end A027654.P4306063302545182290

/-!
# A027655: Zagier's function J_1(4*n).

The programs for A027655, there is no canonical definition to state claims against.
-/

/-! ## A027655.P3548986949217548169

`record[A027653(n+2)]`
-/

namespace A027655.P3548986949217548169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027655.P3548986949217548169

/-! ## A027655.P8149453363337931534

`A027653(2*(n+1))`
-/

namespace A027655.P8149453363337931534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027653 (2 * (n + 1))

end

end A027655.P8149453363337931534

/-!
# A027656: Expansion of 1/(1-x^2)^2 (included only for completeness - the policy is always to omit the zeros from such sequences).

The programs for A027656, the canonical program `A027656.P3303400326036793752` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027656 has offset 0).

The definition of A027656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027656.P11998496071496553489

`(n+2)*(n+1)%2/2`
-/

namespace A027656.P11998496071496553489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) * ((n + 1) % 2) : ℕ) : ℚ) / 2

end

end A027656.P11998496071496553489

namespace A027656

/-- `(n+2)*(n+1)%2/2` -/
def P11998496071496553489.Spec : Prop :=
  ∀ n, P11998496071496553489.a n = (A027656 n : ℚ)

end A027656

/-! ## A027656.P11295678545867272663

`(n+2)*(1+(-1)^n)/4`
-/

namespace A027656.P11295678545867272663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * (1 + (-1) ^ n) : ℚ) / 4

end

end A027656.P11295678545867272663

namespace A027656

/-- `(n+2)*(1+(-1)^n)/4` -/
def P11295678545867272663.Spec : Prop :=
  ∀ n, P11295678545867272663.a n = (A027656 n : ℚ)

end A027656

/-! ## A027656.P3303400326036793752

`A008619(n)*A059841(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027656

/-- `A008619(n)*A059841(n)` -/
def P3303400326036793752.Spec : Prop :=
  ∀ n, P3303400326036793752.a n = A027656 n

theorem P3303400326036793752.correct : P3303400326036793752.Spec := by
  intro n
  simp only [A027656]

end A027656

/-! ## A027656.P14938538208528318307

`∑[n+1]%(n+2)`
-/

namespace A027656.P14938538208528318307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2)

end

end A027656.P14938538208528318307

namespace A027656

/-- `∑[n+1]%(n+2)` -/
def P14938538208528318307.Spec : Prop :=
  ∀ n, (P14938538208528318307.a n : ℤ) = A027656 n

end A027656

/-! ## A027656.P12371199107901137895

`ceil(C(xor(1, n), n)/2)`
-/

namespace A027656.P12371199107901137895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (Nat.xor 1 n) n : ℚ) / 2⌉

end

end A027656.P12371199107901137895

namespace A027656

/-- `ceil(C(xor(1, n), n)/2)` -/
def P12371199107901137895.Spec : Prop :=
  ∀ n, P12371199107901137895.a n = A027656 n

end A027656

/-! ## A027656.P2689061180072714613

`round(C(xor(1, n), n)/2)`
-/

namespace A027656.P2689061180072714613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (Nat.xor 1 n) n : ℚ) / 2)

end

end A027656.P2689061180072714613

namespace A027656

/-- `round(C(xor(1, n), n)/2)` -/
def P2689061180072714613.Spec : Prop :=
  ∀ n, P2689061180072714613.a n = A027656 n

end A027656

/-! ## A027656.P4888912005713617427

`or(1, n)-gcd(n, ∑[n])`
-/

namespace A027656.P4888912005713617427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A027656.P4888912005713617427

namespace A027656

/-- `or(1, n)-gcd(n, ∑[n])` -/
def P4888912005713617427.Spec : Prop :=
  ∀ n, P4888912005713617427.a n = A027656 n

end A027656

/-! ## A027656.P17489785294691020279

`∑[∑[xor(n, (-1)^n)]]`
-/

namespace A027656.P17489785294691020279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((-1) ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027656.P17489785294691020279

namespace A027656

/-- `∑[∑[xor(n, (-1)^n)]]` -/
def P17489785294691020279.Spec : Prop :=
  ∀ n, P17489785294691020279.a n = A027656 n

end A027656

/-! ## A027656.P8559883321047389700

`∑[∑[ogf(1/(1+2x+x^2))]]`
-/

namespace A027656.P8559883321047389700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027656.P8559883321047389700

namespace A027656

/-- `∑[∑[ogf(1/(1+2x+x^2))]]` -/
def P8559883321047389700.Spec : Prop :=
  ∀ n, P8559883321047389700.a n = A027656 n

end A027656

/-! ## A027656.P1150240278162036570

`ogf(1/(1-2x^2+x^4))`
-/

namespace A027656.P1150240278162036570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -2, 0, 1] n

end

end A027656.P1150240278162036570

namespace A027656

/-- `ogf(1/(1-2x^2+x^4))` -/
def P1150240278162036570.Spec : Prop :=
  ∀ n, P1150240278162036570.a n = A027656 n

end A027656

/-! ## A027656.P8212002439837797268

`or(1, n)-lcm(2, n)/2`
-/

namespace A027656.P8212002439837797268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℚ) - (Nat.lcm 2 n : ℚ) / 2

end

end A027656.P8212002439837797268

namespace A027656

/-- `or(1, n)-lcm(2, n)/2` -/
def P8212002439837797268.Spec : Prop :=
  ∀ n, P8212002439837797268.a n = (A027656 n : ℚ)

end A027656

/-! ## A027656.P5674204885032092751

`Δ[or(1, n+1)²/8]`
-/

namespace A027656.P5674204885032092751
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) ^ 2 : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027656.P5674204885032092751

namespace A027656

/-- `Δ[or(1, n+1)²/8]` -/
def P5674204885032092751.Spec : Prop :=
  ∀ n, P5674204885032092751.a n = (A027656 n : ℚ)

end A027656

/-! ## A027656.P7518863493209570

`Δ[C(floor((n+3)/2), 2)]`
-/

namespace A027656.P7518863493209570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n + 3 : ℚ) / 2⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A027656.P7518863493209570

namespace A027656

/-- `Δ[C(floor((n+3)/2), 2)]` -/
def P7518863493209570.Spec : Prop :=
  ∀ n, P7518863493209570.a n = A027656 n

end A027656

/-! ## A027656.P14321397431056625162

`floor(gcd(n+2, and(1, n))/2)`
-/

namespace A027656.P14321397431056625162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd (n + 2) (Nat.land 1 n) : ℚ) / 2⌋

end

end A027656.P14321397431056625162

namespace A027656

/-- `floor(gcd(n+2, and(1, n))/2)` -/
def P14321397431056625162.Spec : Prop :=
  ∀ n, P14321397431056625162.a n = A027656 n

end A027656

/-! ## A027656.P8241659971108237393

`∑{p}[or(n, -2), (n+2)/#]`
-/

namespace A027656.P8241659971108237393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (n + 2 : ℚ) / (p : ℚ)

end

end A027656.P8241659971108237393

namespace A027656

/-- `∑{p}[or(n, -2), (n+2)/#]` -/
def P8241659971108237393.Spec : Prop :=
  ∀ n, P8241659971108237393.a n = (A027656 n : ℚ)

end A027656

/-! ## A027656.P2968047828907269618

`ceil(cosh(log(n))-a(n-1))` with `a(0)=1`
-/

namespace A027656.P2968047828907269618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.cosh (Real.log (n : ℝ)) - (a (n - 1) : ℝ)⌉

end

end A027656.P2968047828907269618

namespace A027656

/-- `ceil(cosh(log(n))-a(n-1))` -/
def P2968047828907269618.Spec : Prop :=
  ∀ n, P2968047828907269618.a n = A027656 n

end A027656

/-! ## A027656.P15562603141979172957

`(n/2+1)*and(1, n+1)`
-/

namespace A027656.P15562603141979172957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (Nat.land 1 (n + 1) : ℚ)

end

end A027656.P15562603141979172957

namespace A027656

/-- `(n/2+1)*and(1, n+1)` -/
def P15562603141979172957.Spec : Prop :=
  ∀ n, P15562603141979172957.a n = (A027656 n : ℚ)

end A027656

/-! ## A027656.P7852909509277514884

`a(and(1, n))+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A027656.P7852909509277514884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (Nat.land 1 n) + a (n - 2)

end

end A027656.P7852909509277514884

namespace A027656

/-- `a(and(1, n))+a(n-2)` -/
def P7852909509277514884.Spec : Prop :=
  ∀ n, (P7852909509277514884.a n : ℤ) = A027656 n

end A027656

/-! ## A027656.P1599241368145968908

`char[2*n]+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A027656.P1599241368145968908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 2)

end

end A027656.P1599241368145968908

namespace A027656

/-- `char[2*n]+a(n-2)` -/
def P1599241368145968908.Spec : Prop :=
  ∀ n, (P1599241368145968908.a n : ℤ) = A027656 n

end A027656

/-! ## A027656.P263445217081617489

`abs(C(n+2, 2)%-(n+2))`
-/

namespace A027656.P263445217081617489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (Nat.choose (n + 2) 2 : ℤ) (-(n + 2 : ℤ))|

end

end A027656.P263445217081617489

namespace A027656

/-- `abs(C(n+2, 2)%-(n+2))` -/
def P263445217081617489.Spec : Prop :=
  ∀ n, P263445217081617489.a n = A027656 n

end A027656

/-!
# A027657: Expansion of (1+4*x)/(1-34*x+x^2).

The programs for A027657, the canonical program `A027657.P17254269103439298431` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027657 has offset 0).

The definition of A027657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x)/(1-34x+x^2))` (program `A027657.P17254269103439298431`, by `A027657.P17254269103439298431.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027657.P17254269103439298431

`ogf((1+4x)/(1-34x+x^2))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027657

/-- `ogf((1+4x)/(1-34x+x^2))` -/
def P17254269103439298431.Spec : Prop :=
  ∀ n, P17254269103439298431.a n = A027657 n

theorem P17254269103439298431.correct : P17254269103439298431.Spec := by
  intro n
  simp only [A027657]

end A027657

/-! ## A027657.P17836131318359914109

`34*a(n-1)-a(n-2)` with `a(0)=1, a(1)=38`
-/

namespace A027657.P17836131318359914109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 38] fun n a =>
  34 * a (n - 1) - a (n - 2)

end

end A027657.P17836131318359914109

namespace A027657

/-- `34*a(n-1)-a(n-2)` -/
def P17836131318359914109.Spec : Prop :=
  ∀ n, P17836131318359914109.a n = A027657 n

end A027657

/-! ## A027657.P11646754167641406521

`A077413(2*n)/2`
-/

namespace A027657.P11646754167641406521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077413 (2 * n) : ℚ) / 2

end

end A027657.P11646754167641406521

namespace A027657

/-- `A077413(2*n)/2` -/
def P11646754167641406521.Spec : Prop :=
  ∀ n, P11646754167641406521.a n = (A027657 n : ℚ)

end A027657

/-! ## A027657.P10923908510774274157

`A077241(A016813(n))/2`
-/

namespace A027657.P10923908510774274157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077241 (A016813 n).toNat : ℚ) / 2

end

end A027657.P10923908510774274157

namespace A027657

/-- `A077241(A016813(n))/2` -/
def P10923908510774274157.Spec : Prop :=
  ∀ n, P10923908510774274157.a n = (A027657 n : ℚ)

end A027657

/-! ## A027657.P13120315605420309912

`A202299(n+1)+A029547(n)`
-/

namespace A027657.P13120315605420309912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202299 (n + 1) + A029547 n

end

end A027657.P13120315605420309912

namespace A027657

/-- `A202299(n+1)+A029547(n)` -/
def P13120315605420309912.Spec : Prop :=
  ∀ n, P13120315605420309912.a n = A027657 n

end A027657

/-! ## A027657.P7731763914118928146

`A001109(n)*A077239(n)+1`
-/

namespace A027657.P7731763914118928146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n * A077239 n + 1

end

end A027657.P7731763914118928146

namespace A027657

/-- `A001109(n)*A077239(n)+1` -/
def P7731763914118928146.Spec : Prop :=
  ∀ n, P7731763914118928146.a n = A027657 n

end A027657

/-! ## A027657.P9948932745386636722

`A001541(n)*A077413(n)-1`
-/

namespace A027657.P9948932745386636722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n * A077413 n - 1

end

end A027657.P9948932745386636722

namespace A027657

/-- `A001541(n)*A077413(n)-1` -/
def P9948932745386636722.Spec : Prop :=
  ∀ n, P9948932745386636722.a n = A027657 n

end A027657

/-! ## A027657.P14823914796481301065

`A053142(2*n+1)-A001542(n)²`
-/

namespace A027657.P14823914796481301065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053142 (2 * n + 1) - A001542 n ^ 2

end

end A027657.P14823914796481301065

namespace A027657

/-- `A053142(2*n+1)-A001542(n)²` -/
def P14823914796481301065.Spec : Prop :=
  ∀ n, P14823914796481301065.a n = A027657 n

end A027657

/-! ## A027657.P1433612793748274362

`A253826(n+1)+2*A220185(n+1)`
-/

namespace A027657.P1433612793748274362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253826 (n + 1) + 2 * A220185 (n + 1)

end

end A027657.P1433612793748274362

namespace A027657

/-- `A253826(n+1)+2*A220185(n+1)` -/
def P1433612793748274362.Spec : Prop :=
  ∀ n, P1433612793748274362.a n = A027657 n

end A027657

/-! ## A027657.P5187695448076601826

`(A054489(2*n)+A001541(2*n))/2`
-/

namespace A027657.P5187695448076601826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054489 (2 * n) + A001541 (2 * n) : ℚ) / 2

end

end A027657.P5187695448076601826

namespace A027657

/-- `(A054489(2*n)+A001541(2*n))/2` -/
def P5187695448076601826.Spec : Prop :=
  ∀ n, P5187695448076601826.a n = (A027657 n : ℚ)

end A027657

/-!
# A027658: a(n) = binomial(n+2, 2) + binomial(n+4, 5).

The programs for A027658, the canonical program `A027658.P16571681554114037236` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027658 has offset 0).

The definition of A027658 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+2, 2)+C(n+4, 5)` (program `A027658.P16571681554114037236`, by `A027658.P16571681554114037236.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027658.P16571681554114037236

`C(n+2, 2)+C(n+4, 5)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027658

/-- `C(n+2, 2)+C(n+4, 5)` -/
def P16571681554114037236.Spec : Prop :=
  ∀ n, (P16571681554114037236.a n : ℤ) = A027658 n

theorem P16571681554114037236.correct : P16571681554114037236.Spec := by
  intro n
  simp only [A027658]

end A027658

/-! ## A027658.P12179574380281327331

`(n+1)*(n+2)*(60+12*n+7*n²+n^3)/120`
-/

namespace A027658.P12179574380281327331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (60 + 12 * n + 7 * n ^ 2 + n ^ 3) : ℚ) / 120

end

end A027658.P12179574380281327331

namespace A027658

/-- `(n+1)*(n+2)*(60+12*n+7*n²+n^3)/120` -/
def P12179574380281327331.Spec : Prop :=
  ∀ n, P12179574380281327331.a n = (A027658 n : ℚ)

theorem P12179574380281327331.correct : P12179574380281327331.Spec := by
  intro n
  simp only [A027658, Nat.add_sub_cancel, A027658.P12179574380281327331.a, A027658.P16571681554114037236.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027658

/-! ## A027658.P16353783664541934100

`A000217(n+1)+A000389(n+4)`
-/

namespace A027658.P16353783664541934100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000389 (n + 4)

end

end A027658.P16353783664541934100

namespace A027658

/-- `A000217(n+1)+A000389(n+4)` -/
def P16353783664541934100.Spec : Prop :=
  ∀ n, P16353783664541934100.a n = A027658 n

theorem P16353783664541934100.correct : P16353783664541934100.Spec := by
  intro n
  simp only [A027658, Nat.add_sub_cancel, A027658.P16353783664541934100.a, A027658.P16571681554114037236.a, A000217, A000217.P10269402890581615239.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027658

/-! ## A027658.P9486245660578161830

`∑[C(n+3, 4)+1+n]`
-/

namespace A027658.P9486245660578161830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 4 + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027658.P9486245660578161830

namespace A027658

/-- `∑[C(n+3, 4)+1+n]` -/
def P9486245660578161830.Spec : Prop :=
  ∀ n, (P9486245660578161830.a n : ℤ) = A027658 n

end A027658

/-! ## A027658.P4541304727736234173

`∑[∑[a(n-2)+n²]]` with `a(0)=1, a(1)=2`
-/

namespace A027658.P4541304727736234173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027658.P4541304727736234173

namespace A027658

/-- `∑[∑[a(n-2)+n²]]` -/
def P4541304727736234173.Spec : Prop :=
  ∀ n, (P4541304727736234173.a n : ℤ) = A027658 n

end A027658

/-! ## A027658.P8709111719105497606

`∑[∑[1-∑[a(n-1)-n]]]` with `a(0)=0`
-/

namespace A027658.P8709111719105497606
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 (n - 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027658.P8709111719105497606

namespace A027658

/-- `∑[∑[1-∑[a(n-1)-n]]]` -/
def P8709111719105497606.Spec : Prop :=
  ∀ n, P8709111719105497606.a n = A027658 n

end A027658

/-! ## A027658.P6954135566028892890

`∑[A145126(n)+n]`
-/

namespace A027658.P6954135566028892890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027658.P6954135566028892890

namespace A027658

/-- `∑[A145126(n)+n]` -/
def P6954135566028892890.Spec : Prop :=
  ∀ n, P6954135566028892890.a n = A027658 n

end A027658

/-! ## A027658.P3567382646392317600

`A145127(n)+∑[n]`
-/

namespace A027658.P3567382646392317600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145127 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A027658.P3567382646392317600

namespace A027658

/-- `A145127(n)+∑[n]` -/
def P3567382646392317600.Spec : Prop :=
  ∀ n, P3567382646392317600.a n = A027658 n

end A027658

/-! ## A027658.P7042470295733667331

`A089830(n)+A004006(n)`
-/

namespace A027658.P7042470295733667331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089830 n + A004006 n

end

end A027658.P7042470295733667331

namespace A027658

/-- `A089830(n)+A004006(n)` -/
def P7042470295733667331.Spec : Prop :=
  ∀ n, P7042470295733667331.a n = A027658 n

end A027658

/-! ## A027658.P7308357131873865287

`A323228(n)+A000096(n)`
-/

namespace A027658.P7308357131873865287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323228 n + A000096 n

end

end A027658.P7308357131873865287

namespace A027658

/-- `A323228(n)+A000096(n)` -/
def P7308357131873865287.Spec : Prop :=
  ∀ n, P7308357131873865287.a n = A027658 n

theorem P7308357131873865287.correct : P7308357131873865287.Spec := by
  intro n
  simp only [A027658, Nat.add_sub_cancel, A027658.P7308357131873865287.a, A027658.P16571681554114037236.a, A000096, A000096.P6925830517264718723.a, A323228, A323228.P5825280664412522790.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027658

/-! ## A027658.P3389449331429681040

`A027659(n)-A005701(n)`
-/

namespace A027658.P3389449331429681040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027659 n - A005701 n

end

end A027658.P3389449331429681040

namespace A027658

/-- `A027659(n)-A005701(n)` -/
def P3389449331429681040.Spec : Prop :=
  ∀ n, P3389449331429681040.a n = A027658 n

end A027658

/-! ## A027658.P7055778739692194249

`A257199(n+1)-A000292(n)`
-/

namespace A027658.P7055778739692194249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257199 (n + 1) - A000292 n

end

end A027658.P7055778739692194249

namespace A027658

/-- `A257199(n+1)-A000292(n)` -/
def P7055778739692194249.Spec : Prop :=
  ∀ n, P7055778739692194249.a n = A027658 n

theorem P7055778739692194249.correct : P7055778739692194249.Spec := by
  intro n
  simp only [A027658, Nat.add_sub_cancel, A027658.P7055778739692194249.a, A027658.P16571681554114037236.a, A000292, A000292.P18322089543142633594.a, A257199, A257199.P10199747995127377042.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027658

/-! ## A027658.P12274957767106049764

`A051745(n+1)-A086274(n+1)`
-/

namespace A027658.P12274957767106049764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051745 (n + 1) - A086274 (n + 1)

end

end A027658.P12274957767106049764

namespace A027658

/-- `A051745(n+1)-A086274(n+1)` -/
def P12274957767106049764.Spec : Prop :=
  ∀ n, P12274957767106049764.a n = A027658 n

end A027658

/-! ## A027658.P2505107454805185682

`A051747(n+1)-A005712(n+2)`
-/

namespace A027658.P2505107454805185682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051747 (n + 1) - A005712 (n + 2)

end

end A027658.P2505107454805185682

namespace A027658

/-- `A051747(n+1)-A005712(n+2)` -/
def P2505107454805185682.Spec : Prop :=
  ∀ n, P2505107454805185682.a n = A027658 n

end A027658

/-! ## A027658.P7190503539445767657

`A000217(n+1)+A027800(n)-A034263(n)`
-/

namespace A027658.P7190503539445767657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A027800 n - A034263 n)

end

end A027658.P7190503539445767657

namespace A027658

/-- `A000217(n+1)+A027800(n)-A034263(n)` -/
def P7190503539445767657.Spec : Prop :=
  ∀ n, P7190503539445767657.a n = A027658 n

theorem P7190503539445767657.correct : P7190503539445767657.Spec := by
  intro n
  simp only [A027658, Nat.add_sub_cancel, A027658.P7190503539445767657.a, A027658.P16571681554114037236.a, A000217, A000217.P10269402890581615239.a, A027800, A027800.P6346572312768476247.a, A034263, A034263.P5868129197671622568.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027658

/-! ## A027658.P10275792645352751851

`∑[A101338(n+1)-1]`
-/

namespace A027658.P10275792645352751851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027658.P10275792645352751851

namespace A027658

/-- `∑[A101338(n+1)-1]` -/
def P10275792645352751851.Spec : Prop :=
  ∀ n, P10275792645352751851.a n = A027658 n

end A027658

/-! ## A027658.P15593146082391451319

`∑[A318054(n+1)-(n+1)²]`
-/

namespace A027658.P15593146082391451319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318054 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027658.P15593146082391451319

namespace A027658

/-- `∑[A318054(n+1)-(n+1)²]` -/
def P15593146082391451319.Spec : Prop :=
  ∀ n, P15593146082391451319.a n = A027658 n

end A027658

/-! ## A027658.P15540693853714961781

`A000124(n+1)+A323228(n)-2`
-/

namespace A027658.P15540693853714961781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) + (A323228 n - 2)

end

end A027658.P15540693853714961781

namespace A027658

/-- `A000124(n+1)+A323228(n)-2` -/
def P15540693853714961781.Spec : Prop :=
  ∀ n, P15540693853714961781.a n = A027658 n

end A027658

/-! ## A027658.P6075599984896853664

`A027928(n+4)-(A004006(n+1)+1)`
-/

namespace A027658.P6075599984896853664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027928 (n + 4) - (A004006 (n + 1) + 1)

end

end A027658.P6075599984896853664

namespace A027658

/-- `A027928(n+4)-(A004006(n+1)+1)` -/
def P6075599984896853664.Spec : Prop :=
  ∀ n, P6075599984896853664.a n = A027658 n

end A027658

/-! ## A027658.P5630699268715801028

`A179257(n+2)-1`
-/

namespace A027658.P5630699268715801028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179257 (n + 2) - 1

end

end A027658.P5630699268715801028

namespace A027658

/-- `A179257(n+2)-1` -/
def P5630699268715801028.Spec : Prop :=
  ∀ n, P5630699268715801028.a n = A027658 n

theorem P5630699268715801028.correct : P5630699268715801028.Spec := by
  intro n
  simp only [A027658, Nat.add_sub_cancel, A027658.P5630699268715801028.a, A027658.P16571681554114037236.a, A179257, A179257.P17271621334755294567.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027658

/-!
# A027659: a(n) = binomial(n+2,2) + binomial(n+3,3) + binomial(n+4,4) + binomial(n+5,5).

The programs for A027659, the canonical program `A027659.P8446224191872039570` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027659 has offset 0).

The definition of A027659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+2, 2)+C(n+3, 3)+C(n+4, 4)+C(n+5, 5)` (program `A027659.P8446224191872039570`, by `A027659.P8446224191872039570.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027659.P3529848801729786072

`C(n+6, 5)-(n+2)`
-/

namespace A027659.P3529848801729786072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 5 : ℤ) - (n + 2 : ℤ)

end

end A027659.P3529848801729786072

namespace A027659

/-- `C(n+6, 5)-(n+2)` -/
def P3529848801729786072.Spec : Prop :=
  ∀ n, P3529848801729786072.a n = A027659 n

theorem P3529848801729786072.correct : P3529848801729786072.Spec := by
  intro n
  simp only [A027659, Nat.add_sub_cancel, A027659.P3529848801729786072.a, A027659.P8446224191872039570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027659

/-! ## A027659.P8032163342598692268

`(n+8)*(n+2)*(n+1)*(n²+9*n+30)/120`
-/

namespace A027659.P8032163342598692268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 8) * (n + 2) * (n + 1) * (n ^ 2 + 9 * n + 30) : ℚ) / 120

end

end A027659.P8032163342598692268

namespace A027659

/-- `(n+8)*(n+2)*(n+1)*(n²+9*n+30)/120` -/
def P8032163342598692268.Spec : Prop :=
  ∀ n, P8032163342598692268.a n = (A027659 n : ℚ)

theorem P8032163342598692268.correct : P8032163342598692268.Spec := by
  intro n
  simp only [A027659, Nat.add_sub_cancel, A027659.P8032163342598692268.a, A027659.P8446224191872039570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027659

/-! ## A027659.P8446224191872039570

`C(n+2, 2)+C(n+3, 3)+C(n+4, 4)+C(n+5, 5)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027659

/-- `C(n+2, 2)+C(n+3, 3)+C(n+4, 4)+C(n+5, 5)` -/
def P8446224191872039570.Spec : Prop :=
  ∀ n, (P8446224191872039570.a n : ℤ) = A027659 n

theorem P8446224191872039570.correct : P8446224191872039570.Spec := by
  intro n
  simp only [A027659]

end A027659

/-! ## A027659.P11205194384691845018

`∑[∑[C(n+4, 3)]]`
-/

namespace A027659.P11205194384691845018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027659.P11205194384691845018

namespace A027659

/-- `∑[∑[C(n+4, 3)]]` -/
def P11205194384691845018.Spec : Prop :=
  ∀ n, (P11205194384691845018.a n : ℤ) = A027659 n

end A027659

/-! ## A027659.P483052217710858231

`record[C(n, 5)+4-n]`
-/

namespace A027659.P483052217710858231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 5 : ℤ) + (4 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027659.P483052217710858231

namespace A027659

/-- `record[C(n, 5)+4-n]` -/
def P483052217710858231.Spec : Prop :=
  ∀ n, P483052217710858231.a n = A027659 n

end A027659

/-! ## A027659.P8504564008308551699

`record[4-(n-C(n, 5))]`
-/

namespace A027659.P8504564008308551699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((n : ℤ) - (Nat.choose n 5 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027659.P8504564008308551699

namespace A027659

/-- `record[4-(n-C(n, 5))]` -/
def P8504564008308551699.Spec : Prop :=
  ∀ n, P8504564008308551699.a n = A027659 n

end A027659

/-! ## A027659.P2124610666418560449

`(5/(n+1)+1)*a(n-1)+4` with `a(0)=4`
-/

namespace A027659.P2124610666418560449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (5 / (n + 1 : ℚ) + 1) * a (n - 1) + 4

end

end A027659.P2124610666418560449

namespace A027659

/-- `(5/(n+1)+1)*a(n-1)+4` -/
def P2124610666418560449.Spec : Prop :=
  ∀ n, P2124610666418560449.a n = (A027659 n : ℚ)

end A027659

/-! ## A027659.P5871047565426487912

`∑[A063258(n)]`
-/

namespace A027659.P5871047565426487912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027659.P5871047565426487912

namespace A027659

/-- `∑[A063258(n)]` -/
def P5871047565426487912.Spec : Prop :=
  ∀ n, P5871047565426487912.a n = A027659 n

end A027659

/-! ## A027659.P12360854938284220439

`A062988(n)-(n+1)`
-/

namespace A027659.P12360854938284220439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 n - (n + 1 : ℤ)

end

end A027659.P12360854938284220439

namespace A027659

/-- `A062988(n)-(n+1)` -/
def P12360854938284220439.Spec : Prop :=
  ∀ n, P12360854938284220439.a n = A027659 n

theorem P12360854938284220439.correct : P12360854938284220439.Spec := by
  intro n
  simp only [A027659, Nat.add_sub_cancel, A027659.P12360854938284220439.a, A027659.P8446224191872039570.a, A062988, A062988.P10319984421922645529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027659

/-! ## A027659.P5963353936179239310

`A166808(n+1)-n`
-/

namespace A027659.P5963353936179239310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166808 (n + 1) - (n : ℤ)

end

end A027659.P5963353936179239310

namespace A027659

/-- `A166808(n+1)-n` -/
def P5963353936179239310.Spec : Prop :=
  ∀ n, P5963353936179239310.a n = A027659 n

theorem P5963353936179239310.correct : P5963353936179239310.Spec := by
  intro n
  simp only [A027659, Nat.add_sub_cancel, A027659.P5963353936179239310.a, A027659.P8446224191872039570.a, A166808, A166808.P9614524992927031431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027659

/-! ## A027659.P3869571739153366325

`∑[A166805(n+1)+1]`
-/

namespace A027659.P3869571739153366325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166805 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027659.P3869571739153366325

namespace A027659

/-- `∑[A166805(n+1)+1]` -/
def P3869571739153366325.Spec : Prop :=
  ∀ n, P3869571739153366325.a n = A027659 n

end A027659

/-! ## A027659.P1384874568995760369

`∑[A005718(n)+n+1]`
-/

namespace A027659.P1384874568995760369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027659.P1384874568995760369

namespace A027659

/-- `∑[A005718(n)+n+1]` -/
def P1384874568995760369.Spec : Prop :=
  ∀ n, P1384874568995760369.a n = A027659 n

end A027659

/-! ## A027659.P9471539737293843457

`A005719(n+2)+(n+1)*(n+2)`
-/

namespace A027659.P9471539737293843457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005719 (n + 2) + ((n + 1) * (n + 2) : ℤ)

end

end A027659.P9471539737293843457

namespace A027659

/-- `A005719(n+2)+(n+1)*(n+2)` -/
def P9471539737293843457.Spec : Prop :=
  ∀ n, P9471539737293843457.a n = A027659 n

theorem P9471539737293843457.correct : P9471539737293843457.Spec := by
  intro n
  simp only [A027659, Nat.add_sub_cancel, A027659.P9471539737293843457.a, A027659.P8446224191872039570.a, A005719, A005719.P13471366835109475850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027659

/-! ## A027659.P4443714627077018626

`A027658(n)+A005701(n)`
-/

namespace A027659.P4443714627077018626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027658 n + A005701 n

end

end A027659.P4443714627077018626

namespace A027659

/-- `A027658(n)+A005701(n)` -/
def P4443714627077018626.Spec : Prop :=
  ∀ n, P4443714627077018626.a n = A027659 n

end A027659

/-! ## A027659.P5766231525239726425

`A096943(n)-A290312(n)`
-/

namespace A027659.P5766231525239726425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096943 n - A290312 n

end

end A027659.P5766231525239726425

namespace A027659

/-- `A096943(n)-A290312(n)` -/
def P5766231525239726425.Spec : Prop :=
  ∀ n, P5766231525239726425.a n = A027659 n

end A027659

/-! ## A027659.P8091221132992605977

`A005583(n+1)+Δ[A005582(n)]`
-/

namespace A027659.P8091221132992605977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 1) + (f1 (n + 1) - f1 n)

end

end A027659.P8091221132992605977

namespace A027659

/-- `A005583(n+1)+Δ[A005582(n)]` -/
def P8091221132992605977.Spec : Prop :=
  ∀ n, P8091221132992605977.a n = A027659 n

end A027659

/-! ## A027659.P14795579441909547099

`A051746(n+1)+A005582(n+1)`
-/

namespace A027659.P14795579441909547099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051746 (n + 1) + A005582 (n + 1)

end

end A027659.P14795579441909547099

namespace A027659

/-- `A051746(n+1)+A005582(n+1)` -/
def P14795579441909547099.Spec : Prop :=
  ∀ n, P14795579441909547099.a n = A027659 n

end A027659

/-! ## A027659.P11486885276973819611

`A051747(n+1)+A051744(n+1)`
-/

namespace A027659.P11486885276973819611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051747 (n + 1) + A051744 (n + 1)

end

end A027659.P11486885276973819611

namespace A027659

/-- `A051747(n+1)+A051744(n+1)` -/
def P11486885276973819611.Spec : Prop :=
  ∀ n, P11486885276973819611.a n = A027659 n

end A027659

/-! ## A027659.P9625152410281360998

`A005583(n+1)+A005586(n)+2`
-/

namespace A027659.P9625152410281360998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 1) + (A005586 n + 2)

end

end A027659.P9625152410281360998

namespace A027659

/-- `A005583(n+1)+A005586(n)+2` -/
def P9625152410281360998.Spec : Prop :=
  ∀ n, P9625152410281360998.a n = A027659 n

end A027659

/-! ## A027659.P15225312766050257809

`A051936(n+4)+A007993(n+1)`
-/

namespace A027659.P15225312766050257809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051936 (n + 4) + A007993 (n + 1)

end

end A027659.P15225312766050257809

namespace A027659

/-- `A051936(n+4)+A007993(n+1)` -/
def P15225312766050257809.Spec : Prop :=
  ∀ n, P15225312766050257809.a n = A027659 n

end A027659

/-!
# A027660: a(n) = C(n+2, 2) + C(n+2, 3) + C(n+2, 4) + C(n+2, 5).

The programs for A027660, the canonical program `A027660.P12826670209015444589` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027660 has offset 0).

The definition of A027660 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+2, 2)+C(n+2, 3)+C(n+2, 4)+C(n+2, 5)` (program `A027660.P12826670209015444589`, by `A027660.P12826670209015444589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027660.P1957927986903108831

`C(n+3, 5)+C(n+3, 3)`
-/

namespace A027660.P1957927986903108831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 5 + Nat.choose (n + 3) 3

end

end A027660.P1957927986903108831

namespace A027660

/-- `C(n+3, 5)+C(n+3, 3)` -/
def P1957927986903108831.Spec : Prop :=
  ∀ n, (P1957927986903108831.a n : ℤ) = A027660 n

theorem P1957927986903108831.correct : P1957927986903108831.Spec := by
  intro n
  simp only [A027660, Nat.add_sub_cancel, A027660.P1957927986903108831.a, A027660.P12826670209015444589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027660

/-! ## A027660.P78900989316663191

`(n+3)*(n+2)*(n+1)*(n²-n+20)/120`
-/

namespace A027660.P78900989316663191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3) * (n + 2) * (n + 1) : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ) + 20) : ℚ) / 120

end

end A027660.P78900989316663191

namespace A027660

/-- `(n+3)*(n+2)*(n+1)*(n²-n+20)/120` -/
def P78900989316663191.Spec : Prop :=
  ∀ n, P78900989316663191.a n = (A027660 n : ℚ)

theorem P78900989316663191.correct : P78900989316663191.Spec := by
  intro n
  simp only [A027660, Nat.add_sub_cancel, A027660.P78900989316663191.a, A027660.P12826670209015444589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027660

/-! ## A027660.P12826670209015444589

`C(n+2, 2)+C(n+2, 3)+C(n+2, 4)+C(n+2, 5)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027660

/-- `C(n+2, 2)+C(n+2, 3)+C(n+2, 4)+C(n+2, 5)` -/
def P12826670209015444589.Spec : Prop :=
  ∀ n, (P12826670209015444589.a n : ℤ) = A027660 n

theorem P12826670209015444589.correct : P12826670209015444589.Spec := by
  intro n
  simp only [A027660]

end A027660

/-! ## A027660.P17055933211785570024

`A000389(n+5)-2*A000332(n+3)`
-/

namespace A027660.P17055933211785570024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5) - 2 * A000332 (n + 3)

end

end A027660.P17055933211785570024

namespace A027660

/-- `A000389(n+5)-2*A000332(n+3)` -/
def P17055933211785570024.Spec : Prop :=
  ∀ n, P17055933211785570024.a n = A027660 n

theorem P17055933211785570024.correct : P17055933211785570024.Spec := by
  intro n
  simp only [A027660, Nat.add_sub_cancel, A027660.P17055933211785570024.a, A027660.P12826670209015444589.a, A000332, A000332.P5946310388023661265.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027660

/-! ## A027660.P16796068018257986973

`∑[∑[∑[C(n, 2)+1]]]`
-/

namespace A027660.P16796068018257986973
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027660.P16796068018257986973

namespace A027660

/-- `∑[∑[∑[C(n, 2)+1]]]` -/
def P16796068018257986973.Spec : Prop :=
  ∀ n, (P16796068018257986973.a n : ℤ) = A027660 n

end A027660

/-! ## A027660.P6560928433629977244

`floor(∑[∑[∑[n-(1-a(n-1))]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A027660.P6560928433629977244
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  (n : ℤ) - (1 - f3 (n - 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027660.P6560928433629977244

namespace A027660

/-- `floor(∑[∑[∑[n-(1-a(n-1))]]])` -/
def P6560928433629977244.Spec : Prop :=
  ∀ n, P6560928433629977244.a n = A027660 n

end A027660

/-! ## A027660.P1623400875326567689

`∑[∑[a(n-1)+n-1]]+a(n-1)` with `a(0)=1`
-/

namespace A027660.P1623400875326567689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A027660.P1623400875326567689

namespace A027660

/-- `∑[∑[a(n-1)+n-1]]+a(n-1)` -/
def P1623400875326567689.Spec : Prop :=
  ∀ n, P1623400875326567689.a n = A027660 n

end A027660

/-! ## A027660.P17998136567176900916

`∑[∑[A000125(n)]]`
-/

namespace A027660.P17998136567176900916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027660.P17998136567176900916

namespace A027660

/-- `∑[∑[A000125(n)]]` -/
def P17998136567176900916.Spec : Prop :=
  ∀ n, P17998136567176900916.a n = A027660 n

end A027660

/-! ## A027660.P7619573715751084068

`A027928(n+3)+∑[n]`
-/

namespace A027660.P7619573715751084068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027928 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A027660.P7619573715751084068

namespace A027660

/-- `A027928(n+3)+∑[n]` -/
def P7619573715751084068.Spec : Prop :=
  ∀ n, P7619573715751084068.a n = A027660 n

end A027660

/-! ## A027660.P5621169673788308837

`abs(∑[∑[A283551(n)+2]])`
-/

namespace A027660.P5621169673788308837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283551 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A027660.P5621169673788308837

namespace A027660

/-- `abs(∑[∑[A283551(n)+2]])` -/
def P5621169673788308837.Spec : Prop :=
  ∀ n, P5621169673788308837.a n = A027660 n

end A027660

/-! ## A027660.P1362232224641214777

`∑[n+1]+∑[∑[A004006(n)]]`
-/

namespace A027660.P1362232224641214777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A027660.P1362232224641214777

namespace A027660

/-- `∑[n+1]+∑[∑[A004006(n)]]` -/
def P1362232224641214777.Spec : Prop :=
  ∀ n, P1362232224641214777.a n = A027660 n

end A027660

/-! ## A027660.P4142441822650297439

`A027927(n+2)+a(n-1)+n` with `a(0)=1`
-/

namespace A027660.P4142441822650297439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027927 (n + 2) + (a (n - 1) + (n : ℤ))

end

end A027660.P4142441822650297439

namespace A027660

/-- `A027927(n+2)+a(n-1)+n` -/
def P4142441822650297439.Spec : Prop :=
  ∀ n, P4142441822650297439.a n = A027660 n

end A027660

/-! ## A027660.P9823373476698642229

`A136396(n)+A057703(n)`
-/

namespace A027660.P9823373476698642229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136396 n + A057703 n

end

end A027660.P9823373476698642229

namespace A027660

/-- `A136396(n)+A057703(n)` -/
def P9823373476698642229.Spec : Prop :=
  ∀ n, P9823373476698642229.a n = A027660 n

end A027660

/-! ## A027660.P14342249180260957150

`A086755(n)-A056118(n)`
-/

namespace A027660.P14342249180260957150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086755 n - A056118 n

end

end A027660.P14342249180260957150

namespace A027660

/-- `A086755(n)-A056118(n)` -/
def P14342249180260957150.Spec : Prop :=
  ∀ n, P14342249180260957150.a n = A027660 n

theorem P14342249180260957150.correct : P14342249180260957150.Spec := by
  intro n
  simp only [A027660, Nat.add_sub_cancel, A027660.P14342249180260957150.a, A027660.P12826670209015444589.a, A056118, A056118.P6591570600101730027.a, A086755, A086755.P1666242869235654198.a, A024166, A024166.P6072422221111961718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027660

/-! ## A027660.P3945288017402084411

`A271663(n)-A174002(n)`
-/

namespace A027660.P3945288017402084411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271663 n - A174002 n

end

end A027660.P3945288017402084411

namespace A027660

/-- `A271663(n)-A174002(n)` -/
def P3945288017402084411.Spec : Prop :=
  ∀ n, P3945288017402084411.a n = A027660 n

end A027660

/-! ## A027660.P1676067135381741958

`A161701(n)+∑[A033547(n)]`
-/

namespace A027660.P1676067135381741958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027660.P1676067135381741958

namespace A027660

/-- `A161701(n)+∑[A033547(n)]` -/
def P1676067135381741958.Spec : Prop :=
  ∀ n, P1676067135381741958.a n = A027660 n

end A027660

/-! ## A027660.P2900255936449221597

`A005719(n+2)-A290312(n)`
-/

namespace A027660.P2900255936449221597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005719 (n + 2) - A290312 n

end

end A027660.P2900255936449221597

namespace A027660

/-- `A005719(n+2)-A290312(n)` -/
def P2900255936449221597.Spec : Prop :=
  ∀ n, P2900255936449221597.a n = A027660 n

end A027660

/-! ## A027660.P14289587903316943962

`A353232(n+1)+A116699(n+1)`
-/

namespace A027660.P14289587903316943962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353232 (n + 1) + A116699 (n + 1)

end

end A027660.P14289587903316943962

namespace A027660

/-- `A353232(n+1)+A116699(n+1)` -/
def P14289587903316943962.Spec : Prop :=
  ∀ n, P14289587903316943962.a n = A027660 n

end A027660

/-! ## A027660.P132262441997424607

`2*A033455(n+1)-A051877(n)`
-/

namespace A027660.P132262441997424607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033455 (n + 1) - A051877 n

end

end A027660.P132262441997424607

namespace A027660

/-- `2*A033455(n+1)-A051877(n)` -/
def P132262441997424607.Spec : Prop :=
  ∀ n, P132262441997424607.a n = A027660 n

end A027660

/-! ## A027660.P17267634636434986597

`∑[A055795(n+2)]`
-/

namespace A027660.P17267634636434986597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055795 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027660.P17267634636434986597

namespace A027660

/-- `∑[A055795(n+2)]` -/
def P17267634636434986597.Spec : Prop :=
  ∀ n, P17267634636434986597.a n = A027660 n

end A027660

/-!
# A027661: Fractional part of decimal expansion of sqrt(n) to 3 places.

The programs for A027661, the canonical program `A027661.P13066452525437774033` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027661 has offset 1).

The definition of A027661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027661.P13066452525437774033

`A027662(n+1)%A027662(A000045(gcd(n, n+2)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027661

/-- `A027662(n+1)%A027662(A000045(gcd(n, n+2)))` -/
def P13066452525437774033.Spec : Prop :=
  ∀ n, P13066452525437774033.a n = A027661 (n + 1)

theorem P13066452525437774033.correct : P13066452525437774033.Spec := by
  intro n
  simp only [A027661, Nat.add_sub_cancel]

end A027661

/-! ## A027661.P15510973548634841203

`A217657(round(sqrt((n+1)*root(10, 1/6))))`
-/

namespace A027661.P15510973548634841203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℝ) * (10 : ℝ) ^ (1 / ((1 : ℚ) / 6 : ℝ))))).toNat

end

end A027661.P15510973548634841203

namespace A027661

/-- `A217657(round(sqrt((n+1)*root(10, 1/6))))` -/
def P15510973548634841203.Spec : Prop :=
  ∀ n, P15510973548634841203.a n = A027661 (n + 1)

end A027661

/-! ## A027661.P3083713756647215467

`A217657(A033461(n))+A217657(A027662(n+1))`
-/

namespace A027661.P3083713756647215467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A033461 n).toNat + A217657 (A027662 (n + 1)).toNat

end

end A027661.P3083713756647215467

namespace A027661

/-- `A217657(A033461(n))+A217657(A027662(n+1))` -/
def P3083713756647215467.Spec : Prop :=
  ∀ n, P3083713756647215467.a n = A027661 (n + 1)

end A027661

/-! ## A027661.P16860846136771409535

`A217657(A001222(n+1))+A217657(A027662(n+1))`
-/

namespace A027661.P16860846136771409535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A001222 (n + 1)).toNat + A217657 (A027662 (n + 1)).toNat

end

end A027661.P16860846136771409535

namespace A027661

/-- `A217657(A001222(n+1))+A217657(A027662(n+1))` -/
def P16860846136771409535.Spec : Prop :=
  ∀ n, P16860846136771409535.a n = A027661 (n + 1)

end A027661

/-! ## A027661.P15813920033782582454

`A217657(A037860(n+1))+A217657(A027662(n+1))`
-/

namespace A027661.P15813920033782582454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A037860 (n + 1)).toNat + A217657 (A027662 (n + 1)).toNat

end

end A027661.P15813920033782582454

namespace A027661

/-- `A217657(A037860(n+1))+A217657(A027662(n+1))` -/
def P15813920033782582454.Spec : Prop :=
  ∀ n, P15813920033782582454.a n = A027661 (n + 1)

end A027661

/-! ## A027661.P10112763666822767797

`A217657(A236831(n+1))+A217657(A027662(n+1))`
-/

namespace A027661.P10112763666822767797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A236831 (n + 1)).toNat + A217657 (A027662 (n + 1)).toNat

end

end A027661.P10112763666822767797

namespace A027661

/-- `A217657(A236831(n+1))+A217657(A027662(n+1))` -/
def P10112763666822767797.Spec : Prop :=
  ∀ n, P10112763666822767797.a n = A027661 (n + 1)

end A027661

/-!
# A027662: a(n)/1000 gives sqrt(n) to 3 places after the decimal point.

The programs for A027662, the canonical program `A027662.P1379489649696345682` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027662 has offset 1).

The definition of A027662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027662.P1379489649696345682

`floor(1000*sqrt(n+1)+1/2)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027662

/-- `floor(1000*sqrt(n+1)+1/2)` -/
def P1379489649696345682.Spec : Prop :=
  ∀ n, P1379489649696345682.a n = A027662 (n + 1)

theorem P1379489649696345682.correct : P1379489649696345682.Spec := by
  intro n
  simp only [A027662, Nat.add_sub_cancel]

end A027662

/-! ## A027662.P2184121658532704304

`A033425(A033433(n+1)^A146474(n+1))`
-/

namespace A027662.P2184121658532704304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033425 (SequenceMachineLib.roundAway ((A033433 (n + 1) : ℚ) ^ (A146474 (n + 1) : ℤ))).toNat

end

end A027662.P2184121658532704304

namespace A027662

/-- `A033425(A033433(n+1)^A146474(n+1))` -/
def P2184121658532704304.Spec : Prop :=
  ∀ n, P2184121658532704304.a n = A027662 (n + 1)

end A027662

/-! ## A027662.P12177354582705484300

`A033425(C(A033433(n+1), A146474(n+1)))`
-/

namespace A027662.P12177354582705484300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033425 (Nat.choose (A033433 (n + 1)).toNat (A146474 (n + 1)).toNat)

end

end A027662.P12177354582705484300

namespace A027662

/-- `A033425(C(A033433(n+1), A146474(n+1)))` -/
def P12177354582705484300.Spec : Prop :=
  ∀ n, P12177354582705484300.a n = A027662 (n + 1)

end A027662

/-! ## A027662.P11145228608293214005

`A033425(A146474(n+1)²*A033433(n+1))`
-/

namespace A027662.P11145228608293214005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033425 (A146474 (n + 1) ^ 2 * A033433 (n + 1)).toNat

end

end A027662.P11145228608293214005

namespace A027662

/-- `A033425(A146474(n+1)²*A033433(n+1))` -/
def P11145228608293214005.Spec : Prop :=
  ∀ n, P11145228608293214005.a n = A027662 (n + 1)

end A027662

/-! ## A027662.P17393515403282013947

`A033425(A033433(n+1)*A146474(n+1)*A146474(n+1))`
-/

namespace A027662.P17393515403282013947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033425 (A033433 (n + 1) * A146474 (n + 1) * A146474 (n + 1)).toNat

end

end A027662.P17393515403282013947

namespace A027662

/-- `A033425(A033433(n+1)*A146474(n+1)*A146474(n+1))` -/
def P17393515403282013947.Spec : Prop :=
  ∀ n, P17393515403282013947.a n = A027662 (n + 1)

end A027662

/-!
# A027663: a(n)/100000 gives sqrt(n) to 5 places after the decimal point.

The programs for A027663, the canonical program `A027663.P15955060651168956011` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027663 has offset 1).

The definition of A027663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027663.P15955060651168956011

`round((10*root(n+1, 10))^5)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027663

/-- `round((10*root(n+1, 10))^5)` -/
def P15955060651168956011.Spec : Prop :=
  ∀ n, P15955060651168956011.a n = A027663 (n + 1)

theorem P15955060651168956011.correct : P15955060651168956011.Spec := by
  intro n
  simp only [A027663, Nat.add_sub_cancel]

end A027663

/-!
# A027670: Number of different bracelets with 6 beads of at most n colors, allowing turning over.

The programs for A027670, the canonical program `A027670.P12260575868628881828` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027670 has offset 0).

The definition of A027670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027670.P12260575868628881828

`n*(n+1)*(n^4-n^3+4*n²+2)/12`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027670

/-- `n*(n+1)*(n^4-n^3+4*n²+2)/12` -/
def P12260575868628881828.Spec : Prop :=
  ∀ n, P12260575868628881828.a n = (A027670 n : ℚ)

end A027670

/-! ## A027670.P14442584859186080013

`A000330(n)+A046023(n)-n²`
-/

namespace A027670.P14442584859186080013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + (A046023 n - (n ^ 2 : ℤ))

end

end A027670.P14442584859186080013

namespace A027670

/-- `A000330(n)+A046023(n)-n²` -/
def P14442584859186080013.Spec : Prop :=
  ∀ n, P14442584859186080013.a n = A027670 n

end A027670

/-! ## A027670.P15229235917510273453

`A000330(n)+(n²+4)*A002415(n)`
-/

namespace A027670.P15229235917510273453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + (n ^ 2 + 4 : ℤ) * A002415 n

end

end A027670.P15229235917510273453

namespace A027670

/-- `A000330(n)+(n²+4)*A002415(n)` -/
def P15229235917510273453.Spec : Prop :=
  ∀ n, P15229235917510273453.a n = A027670 n

end A027670

/-! ## A027670.P4855732855405478228

`A005900(n)+A046023(n)-A000330(n)`
-/

namespace A027670.P4855732855405478228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n + (A046023 n - A000330 n)

end

end A027670.P4855732855405478228

namespace A027670

/-- `A005900(n)+A046023(n)-A000330(n)` -/
def P4855732855405478228.Spec : Prop :=
  ∀ n, P4855732855405478228.a n = A027670 n

end A027670

/-! ## A027670.P9377105497177700600

`A000332(n+2)-(A000332(n)-A046023(n))`
-/

namespace A027670.P9377105497177700600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 2) - (A000332 n - A046023 n)

end

end A027670.P9377105497177700600

namespace A027670

/-- `A000332(n+2)-(A000332(n)-A046023(n))` -/
def P9377105497177700600.Spec : Prop :=
  ∀ n, P9377105497177700600.a n = A027670 n

end A027670

/-! ## A027670.P12070362830318451686

`A006331(A000217(n))-A000217(n)*A006003(n)`
-/

namespace A027670.P12070362830318451686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (A000217 n).toNat - A000217 n * A006003 n

end

end A027670.P12070362830318451686

namespace A027670

/-- `A006331(A000217(n))-A000217(n)*A006003(n)` -/
def P12070362830318451686.Spec : Prop :=
  ∀ n, P12070362830318451686.a n = A027670 n

end A027670

/-!
# A027671: Number of necklaces with n beads of 3 colors, allowing turning over.

The programs for A027671, there is no canonical definition to state claims against.
-/

/-! ## A027671.P13276603594589775331

`A278639(n)+A182751(n+1)`
-/

namespace A027671.P13276603594589775331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278639 n + A182751 (n + 1)

end

end A027671.P13276603594589775331

/-! ## A027671.P1716277735910208084

`A001867(n)-A278639(n)`
-/

namespace A027671.P1716277735910208084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 n - A278639 n

end

end A027671.P1716277735910208084

/-! ## A027671.P811433896661114766

`(A182751(n+1)+A001867(n))/2`
-/

namespace A027671.P811433896661114766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182751 (n + 1) + A001867 n : ℚ) / 2

end

end A027671.P811433896661114766

/-! ## A027671.P15678587813515565914

`A051137(∑[n+2]+3)`
-/

namespace A027671.P15678587813515565914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051137 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A027671.P15678587813515565914

/-! ## A027671.P9524006413632183792

`record[A051137(n+2)/A051129(n+1)]`
-/

namespace A027671.P9524006413632183792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051137 (n + 2) : ℚ) / (A051129 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027671.P9524006413632183792

/-!
# A027674: Numerical distance between m-th and (m+n)-th spheres in loxodromic sequence of spheres in which each 5 consecutive spheres are in mutual contact.

The programs for A027674, the canonical program `A027674.P14607552039919879899` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027674 has offset 0).

The definition of A027674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027674.P14607552039919879899

`a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)` with `a(0)=-1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027674

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)` -/
def P14607552039919879899.Spec : Prop :=
  ∀ n, P14607552039919879899.a n = A027674 n

theorem P14607552039919879899.correct : P14607552039919879899.Spec := by
  intro n
  simp only [A027674]

end A027674

/-! ## A027674.P8304047353051933783

`A045626(n)-A100048(n)`
-/

namespace A027674.P8304047353051933783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045626 n - A100048 n

end

end A027674.P8304047353051933783

namespace A027674

/-- `A045626(n)-A100048(n)` -/
def P8304047353051933783.Spec : Prop :=
  ∀ n, P8304047353051933783.a n = A027674 n

end A027674

/-! ## A027674.P2030520215664567169

`A045626(n)+A112575(A289207(n))-A112575(n)`
-/

namespace A027674.P2030520215664567169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045626 n + (A112575 (A289207 n).toNat - A112575 n)

end

end A027674.P2030520215664567169

namespace A027674

/-- `A045626(n)+A112575(A289207(n))-A112575(n)` -/
def P2030520215664567169.Spec : Prop :=
  ∀ n, P2030520215664567169.a n = A027674 n

end A027674

/-! ## A027674.P5218314597140877180

`A045626(n)+A118870(n)-A183324(n+1)`
-/

namespace A027674.P5218314597140877180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045626 n + (A118870 n - A183324 (n + 1))

end

end A027674.P5218314597140877180

namespace A027674

/-- `A045626(n)+A118870(n)-A183324(n+1)` -/
def P5218314597140877180.Spec : Prop :=
  ∀ n, P5218314597140877180.a n = A027674 n

end A027674

/-! ## A027674.P8902074382077408522

`A045626(n)-(A288380(n)-1-A118870(n))`
-/

namespace A027674.P8902074382077408522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045626 n - (A288380 n - 1 - A118870 n)

end

end A027674.P8902074382077408522

namespace A027674

/-- `A045626(n)-(A288380(n)-1-A118870(n))` -/
def P8902074382077408522.Spec : Prop :=
  ∀ n, P8902074382077408522.a n = A027674 n

end A027674

/-! ## A027674.P5557711364458466475

`A045626(n)-A183324(1-(n-2*n))%A118870(n)`
-/

namespace A027674.P5557711364458466475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045626 n - Int.tmod (A183324 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat) (A118870 n)

end

end A027674.P5557711364458466475

namespace A027674

/-- `A045626(n)-A183324(1-(n-2*n))%A118870(n)` -/
def P5557711364458466475.Spec : Prop :=
  ∀ n, P5557711364458466475.a n = A027674 n

end A027674

/-! ## A027674.P3764413737561053949

`Δ[A118870(n)-A321048(n+2)]`
-/

namespace A027674.P3764413737561053949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 n - A321048 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027674.P3764413737561053949

namespace A027674

/-- `Δ[A118870(n)-A321048(n+2)]` -/
def P3764413737561053949.Spec : Prop :=
  ∀ n, P3764413737561053949.a n = A027674 n

end A027674

/-!
# A027675: When squared gives number composed of digits {1,4,9}.

The programs for A027675, there is no canonical definition to state claims against.
-/

/-! ## A027675.P5657975728584033782

`sqrt(A006716(n+1))`
-/

namespace A027675.P5657975728584033782
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006716 (n + 1) : ℝ)

end

end A027675.P5657975728584033782

/-! ## A027675.P10326227252847609003

`root(A006716(n+1), A111972(n+6))`
-/

namespace A027675.P10326227252847609003
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006716 (n + 1) : ℝ) ^ (1 / (A111972 (n + 6) : ℝ))

end

end A027675.P10326227252847609003

/-! ## A027675.P4573076026962520424

`root(A006716(n+1), p?[A246600(n+1)])`
-/

namespace A027675.P4573076026962520424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246600 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006716 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A027675.P4573076026962520424

/-! ## A027675.P10431517408106173050

`root(A006716(n+1), A001316(A001316(n)))`
-/

namespace A027675.P10431517408106173050
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006716 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A027675.P10431517408106173050

/-!
# A027676: Squares composed of digits {1,4,6}.

The programs for A027676, there is no canonical definition to state claims against.
-/

/-! ## A027676.P16587367378635680539

`A027677(n+1)²`
-/

namespace A027676.P16587367378635680539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027677 (n + 1) ^ 2

end

end A027676.P16587367378635680539

/-! ## A027676.P9525084307127885270

`A027677(n+1)^p?[A316826(n)]`
-/

namespace A027676.P9525084307127885270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027677 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A027676.P9525084307127885270

/-! ## A027676.P9426514010110344231

`A027677(n+1)^A002262(∑[n+1]+2)`
-/

namespace A027676.P9426514010110344231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027677 (n + 1) : ℚ) ^ (A002262 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℤ)

end

end A027676.P9426514010110344231

/-! ## A027676.P6994427371892663585

`A027677(n+1)^A000034(A147562(n))`
-/

namespace A027676.P6994427371892663585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027677 (n + 1) : ℚ) ^ (A000034 (A147562 n).toNat : ℤ)

end

end A027676.P6994427371892663585

/-! ## A027676.P5614794871955646475

`A027677(n+1)^A000034(A160552(n))`
-/

namespace A027676.P5614794871955646475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027677 (n + 1) : ℚ) ^ (A000034 (A160552 n).toNat : ℤ)

end

end A027676.P5614794871955646475

/-!
# A027677: When squared gives number composed of digits {1,4,6}.

The programs for A027677, there is no canonical definition to state claims against.
-/

/-! ## A027677.P6788288620740918607

`sqrt(A027676(n+1))`
-/

namespace A027677.P6788288620740918607
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A027676 (n + 1) : ℝ)

end

end A027677.P6788288620740918607

/-! ## A027677.P14385697216853700729

`root(A027676(n+1), p?[A316826(n)])`
-/

namespace A027677.P14385697216853700729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A027676 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A027677.P14385697216853700729

/-! ## A027677.P12294910372312727340

`root(A027676(n+1), lcm(2, A000034(n)))`
-/

namespace A027677.P12294910372312727340
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A027676 (n + 1) : ℝ) ^ (1 / (Int.lcm 2 (A000034 n) : ℝ))

end

end A027677.P12294910372312727340

/-! ## A027677.P7954113272441769044

`root(A027676(n+1), A000034(2*n+1))`
-/

namespace A027677.P7954113272441769044
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A027676 (n + 1) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A027677.P7954113272441769044

/-!
# A027678: Squares composed of digits {2,4,8}.

The programs for A027678, there is no canonical definition to state claims against.
-/

/-! ## A027678.P5483425834693215785

`∩[A030098(n+1), A272884(n+1)]`
-/

namespace A027678.P5483425834693215785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027678.P5483425834693215785

/-!
# A027684: Number of letters in n (in "dotted" Hebrew).

The programs for A027684, there is no canonical definition to state claims against.
-/

/-! ## A027684.P6155051647592061068

`A298199(n)-char[A017305(n)]`
-/

namespace A027684.P6155051647592061068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298199 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A027684.P6155051647592061068

/-! ## A027684.P11401516493153992659

`A298199(n)+char[A017305(n)]*A033999(n)`
-/

namespace A027684.P11401516493153992659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298199 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A033999 n

end

end A027684.P11401516493153992659

/-! ## A027684.P4973994101047444822

`A298199(n)-A055672(A074352(n))`
-/

namespace A027684.P4973994101047444822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298199 n - A055672 (A074352 n).toNat

end

end A027684.P4973994101047444822

/-! ## A027684.P13873523532228112265

`A322976(A200463(n+1))+A322976(n+1)`
-/

namespace A027684.P13873523532228112265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322976 (A200463 (n + 1)).toNat + A322976 (n + 1)

end

end A027684.P13873523532228112265

/-!
# A027687: 4-perfect (quadruply-perfect or sous-triple) numbers: sum of divisors of n is 4n.

The programs for A027687, there is no canonical definition to state claims against.
-/

/-! ## A027687.P10404564510359980401

`∩[A166069(n+1), A336702(n+1)]`
-/

namespace A027687.P10404564510359980401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027687.P10404564510359980401

/-! ## A027687.P17006989867259463204

`A325637(lt[9, A325677(3*n+5)])`
-/

namespace A027687.P17006989867259463204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325677 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A027687.P17006989867259463204

/-! ## A027687.P4072079651354112636

`∩[A069070(n+1), A117349(n+1)]`
-/

namespace A027687.P4072079651354112636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027687.P4072079651354112636

/-! ## A027687.P15652502904920648814

`∩[A069070(n+1), A117350(n+1)]`
-/

namespace A027687.P15652502904920648814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027687.P15652502904920648814

/-!
# A027688: a(n) = n^2 + n + 3.

The programs for A027688, the canonical program `A027688.P8661981911705810589` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027688 has offset 0).

The definition of A027688 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+3` (program `A027688.P8661981911705810589`, by `A027688.P8661981911705810589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027688.P8661981911705810589

`n²+n+3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027688

/-- `n²+n+3` -/
def P8661981911705810589.Spec : Prop :=
  ∀ n, (P8661981911705810589.a n : ℤ) = A027688 n

theorem P8661981911705810589.correct : P8661981911705810589.Spec := by
  intro n
  simp only [A027688]

end A027688

/-! ## A027688.P4498725235188896207

`ceil(cot(Δ[acot(acot(n))]))`
-/

namespace A027688.P4498725235188896207
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (f1 (n + 1) - f1 n)⌉

end

end A027688.P4498725235188896207

namespace A027688

/-- `ceil(cot(Δ[acot(acot(n))]))` -/
def P4498725235188896207.Spec : Prop :=
  ∀ n, P4498725235188896207.a n = A027688 n

end A027688

/-! ## A027688.P13506187473084385687

`ceil(2/acot(∑[n]+1))`
-/

namespace A027688.P13506187473084385687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ)⌉

end

end A027688.P13506187473084385687

namespace A027688

/-- `ceil(2/acot(∑[n]+1))` -/
def P13506187473084385687.Spec : Prop :=
  ∀ n, P13506187473084385687.a n = A027688 n

end A027688

/-! ## A027688.P15003835685335498538

`abs(xor(-3, n²)-n)`
-/

namespace A027688.P15003835685335498538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-3) (n ^ 2 : ℤ) - (n : ℤ)|

end

end A027688.P15003835685335498538

namespace A027688

/-- `abs(xor(-3, n²)-n)` -/
def P15003835685335498538.Spec : Prop :=
  ∀ n, P15003835685335498538.a n = A027688 n

end A027688

/-! ## A027688.P4318988488212688731

`ceil(n-(tan(2)-n²))`
-/

namespace A027688.P4318988488212688731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - (Real.tan (2 : ℝ) - (n ^ 2 : ℝ))⌉

end

end A027688.P4318988488212688731

namespace A027688

/-- `ceil(n-(tan(2)-n²))` -/
def P4318988488212688731.Spec : Prop :=
  ∀ n, P4318988488212688731.a n = A027688 n

end A027688

/-! ## A027688.P11953487053470888472

`∑[a(n-1)+2]` with `a(0)=3, a(1)=2`
-/

namespace A027688.P11953487053470888472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027688.P11953487053470888472

namespace A027688

/-- `∑[a(n-1)+2]` -/
def P11953487053470888472.Spec : Prop :=
  ∀ n, (P11953487053470888472.a n : ℤ) = A027688 n

end A027688

/-! ## A027688.P12603501410627748209

`floor(n/acot(n)+n+3)`
-/

namespace A027688.P12603501410627748209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (n : ℝ) + (n + 3 : ℝ)⌋

end

end A027688.P12603501410627748209

namespace A027688

/-- `floor(n/acot(n)+n+3)` -/
def P12603501410627748209.Spec : Prop :=
  ∀ n, P12603501410627748209.a n = A027688 n

end A027688

/-! ## A027688.P17874186967577355472

`round(n/acot(n)+n+3)`
-/

namespace A027688.P17874186967577355472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (n : ℝ) + (n + 3 : ℝ))

end

end A027688.P17874186967577355472

namespace A027688

/-- `round(n/acot(n)+n+3)` -/
def P17874186967577355472.Spec : Prop :=
  ∀ n, P17874186967577355472.a n = A027688 n

end A027688

/-! ## A027688.P18325637643000575329

`∑[ogf((3-4x+3x^2)/(1-2x+x^2))]`
-/

namespace A027688.P18325637643000575329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027688.P18325637643000575329

namespace A027688

/-- `∑[ogf((3-4x+3x^2)/(1-2x+x^2))]` -/
def P18325637643000575329.Spec : Prop :=
  ∀ n, P18325637643000575329.a n = A027688 n

end A027688

/-! ## A027688.P17323441403565560595

`ogf((3-4x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A027688.P17323441403565560595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, 3] [1, -3, 3, -1] n

end

end A027688.P17323441403565560595

namespace A027688

/-- `ogf((3-4x+3x^2)/(1-3x+3x^2-x^3))` -/
def P17323441403565560595.Spec : Prop :=
  ∀ n, P17323441403565560595.a n = A027688 n

end A027688

/-! ## A027688.P18093613136707971725

`abs(a(n-1)+2*n)` with `a(0)=3`
-/

namespace A027688.P18093613136707971725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 2 * n

end

end A027688.P18093613136707971725

namespace A027688

/-- `abs(a(n-1)+2*n)` -/
def P18093613136707971725.Spec : Prop :=
  ∀ n, (P18093613136707971725.a n : ℤ) = A027688 n

theorem P18093613136707971725.correct : P18093613136707971725.Spec := by
  intro n
  induction n with
  | zero => simp [A027688, A027688.P18093613136707971725.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027688, Nat.add_sub_cancel, A027688.P18093613136707971725.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027688

/-! ## A027688.P11860426496762045474

`floor(2*(C(n+1, 2)+ϕ))`
-/

namespace A027688.P11860426496762045474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((Nat.choose (n + 1) 2 : ℝ) + Real.goldenRatio)⌋

end

end A027688.P11860426496762045474

namespace A027688

/-- `floor(2*(C(n+1, 2)+ϕ))` -/
def P11860426496762045474.Spec : Prop :=
  ∀ n, P11860426496762045474.a n = A027688 n

end A027688

/-! ## A027688.P14976831982120767225

`round(2*(C(n+1, 2)+ϕ))`
-/

namespace A027688.P14976831982120767225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((Nat.choose (n + 1) 2 : ℝ) + Real.goldenRatio))

end

end A027688.P14976831982120767225

namespace A027688

/-- `round(2*(C(n+1, 2)+ϕ))` -/
def P14976831982120767225.Spec : Prop :=
  ∀ n, P14976831982120767225.a n = A027688 n

end A027688

/-! ## A027688.P12235318834808970177

`floor(a(n-1)+2*n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A027688.P12235318834808970177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 2 * n

end

end A027688.P12235318834808970177

namespace A027688

/-- `floor(a(n-1)+2*n)` -/
def P12235318834808970177.Spec : Prop :=
  ∀ n, (P12235318834808970177.a n : ℤ) = A027688 n

theorem P12235318834808970177.correct : P12235318834808970177.Spec := by
  intro n
  induction n with
  | zero => simp [A027688, A027688.P12235318834808970177.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027688, Nat.add_sub_cancel, A027688.P12235318834808970177.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027688

/-! ## A027688.P8984183062363029193

`ceil(a(n-1)+2*n)` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A027688.P8984183062363029193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 2 * n

end

end A027688.P8984183062363029193

namespace A027688

/-- `ceil(a(n-1)+2*n)` -/
def P8984183062363029193.Spec : Prop :=
  ∀ n, (P8984183062363029193.a n : ℤ) = A027688 n

theorem P8984183062363029193.correct : P8984183062363029193.Spec := by
  intro n
  induction n with
  | zero => simp [A027688, A027688.P8984183062363029193.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027688, Nat.add_sub_cancel, A027688.P8984183062363029193.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027688

/-! ## A027688.P4155076667534788644

`round(a(n-1)+2*n)` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A027688.P4155076667534788644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 2 * n

end

end A027688.P4155076667534788644

namespace A027688

/-- `round(a(n-1)+2*n)` -/
def P4155076667534788644.Spec : Prop :=
  ∀ n, (P4155076667534788644.a n : ℤ) = A027688 n

theorem P4155076667534788644.correct : P4155076667534788644.Spec := by
  intro n
  induction n with
  | zero => simp [A027688, A027688.P4155076667534788644.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027688, Nat.add_sub_cancel, A027688.P4155076667534788644.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027688

/-! ## A027688.P7330548637630388822

`abs(a(n-1)+n+n)` with `a(0)=3`
-/

namespace A027688.P7330548637630388822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + n + n

end

end A027688.P7330548637630388822

namespace A027688

/-- `abs(a(n-1)+n+n)` -/
def P7330548637630388822.Spec : Prop :=
  ∀ n, (P7330548637630388822.a n : ℤ) = A027688 n

theorem P7330548637630388822.correct : P7330548637630388822.Spec := by
  intro n
  induction n with
  | zero => simp [A027688, A027688.P7330548637630388822.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027688, Nat.add_sub_cancel, A027688.P7330548637630388822.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027688

/-! ## A027688.P15815772038166874768

`floor(a(n-1)+n+n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A027688.P15815772038166874768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + n + n

end

end A027688.P15815772038166874768

namespace A027688

/-- `floor(a(n-1)+n+n)` -/
def P15815772038166874768.Spec : Prop :=
  ∀ n, (P15815772038166874768.a n : ℤ) = A027688 n

theorem P15815772038166874768.correct : P15815772038166874768.Spec := by
  intro n
  induction n with
  | zero => simp [A027688, A027688.P15815772038166874768.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027688, Nat.add_sub_cancel, A027688.P15815772038166874768.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027688

/-! ## A027688.P13788976252430265129

`ceil(a(n-1)+n+n)` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A027688.P13788976252430265129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + n + n

end

end A027688.P13788976252430265129

namespace A027688

/-- `ceil(a(n-1)+n+n)` -/
def P13788976252430265129.Spec : Prop :=
  ∀ n, (P13788976252430265129.a n : ℤ) = A027688 n

theorem P13788976252430265129.correct : P13788976252430265129.Spec := by
  intro n
  induction n with
  | zero => simp [A027688, A027688.P13788976252430265129.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027688, Nat.add_sub_cancel, A027688.P13788976252430265129.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027688

/-! ## A027688.P13289614763639663942

`round(a(n-1)+n+n)` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A027688.P13289614763639663942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + n + n

end

end A027688.P13289614763639663942

namespace A027688

/-- `round(a(n-1)+n+n)` -/
def P13289614763639663942.Spec : Prop :=
  ∀ n, (P13289614763639663942.a n : ℤ) = A027688 n

theorem P13289614763639663942.correct : P13289614763639663942.Spec := by
  intro n
  induction n with
  | zero => simp [A027688, A027688.P13289614763639663942.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027688, Nat.add_sub_cancel, A027688.P13289614763639663942.a, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027688

/-!
# A027689: a(n) = n^2 + n + 4.

The programs for A027689, the canonical program `A027689.P1842390006618827741` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027689 has offset 0).

The definition of A027689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+4` (program `A027689.P1842390006618827741`, by `A027689.P1842390006618827741.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027689.P1842390006618827741

`n²+n+4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027689

/-- `n²+n+4` -/
def P1842390006618827741.Spec : Prop :=
  ∀ n, (P1842390006618827741.a n : ℤ) = A027689 n

theorem P1842390006618827741.correct : P1842390006618827741.Spec := by
  intro n
  simp only [A027689]

end A027689

/-! ## A027689.P1257641833959968128

`2*A152948(n+2)`
-/

namespace A027689.P1257641833959968128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152948 (n + 2)

end

end A027689.P1257641833959968128

namespace A027689

/-- `2*A152948(n+2)` -/
def P1257641833959968128.Spec : Prop :=
  ∀ n, P1257641833959968128.a n = A027689 n

theorem P1257641833959968128.correct : P1257641833959968128.Spec := by
  intro n
  simp only [A027689, Nat.add_sub_cancel, A027689.P1257641833959968128.a, A027689.P1842390006618827741.a, A152948, A152948.P6305161244529730027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027689

/-! ## A027689.P6133932080491042651

`floor(2*(∑[n]-tan(2)))`
-/

namespace A027689.P6133932080491042651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.tan (2 : ℝ))⌋

end

end A027689.P6133932080491042651

namespace A027689

/-- `floor(2*(∑[n]-tan(2)))` -/
def P6133932080491042651.Spec : Prop :=
  ∀ n, P6133932080491042651.a n = A027689 n

end A027689

/-! ## A027689.P13270435320050066691

`round(2*(∑[n]-tan(2)))`
-/

namespace A027689.P13270435320050066691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.tan (2 : ℝ)))

end

end A027689.P13270435320050066691

namespace A027689

/-- `round(2*(∑[n]-tan(2)))` -/
def P13270435320050066691.Spec : Prop :=
  ∀ n, P13270435320050066691.a n = A027689 n

end A027689

/-! ## A027689.P2441678743851297513

`floor(2/acot(∑[n]+2))`
-/

namespace A027689.P2441678743851297513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℝ)⌋

end

end A027689.P2441678743851297513

namespace A027689

/-- `floor(2/acot(∑[n]+2))` -/
def P2441678743851297513.Spec : Prop :=
  ∀ n, P2441678743851297513.a n = A027689 n

end A027689

/-! ## A027689.P468430842693553764

`round(2/acot(∑[n]+2))`
-/

namespace A027689.P468430842693553764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℝ))

end

end A027689.P468430842693553764

namespace A027689

/-- `round(2/acot(∑[n]+2))` -/
def P468430842693553764.Spec : Prop :=
  ∀ n, P468430842693553764.a n = A027689 n

end A027689

/-! ## A027689.P9809433420416591721

`2/tan(acot(∑[n]+2))`
-/

namespace A027689.P9809433420416591721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.tan (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℝ))

end

end A027689.P9809433420416591721

namespace A027689

/-- `2/tan(acot(∑[n]+2))` -/
def P9809433420416591721.Spec : Prop :=
  ∀ n, P9809433420416591721.a n = (A027689 n : ℝ)

end A027689

/-! ## A027689.P8957493667753691397

`(∑[n]+2)/cot(atan(2))`
-/

namespace A027689.P8957493667753691397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A027689.P8957493667753691397

namespace A027689

/-- `(∑[n]+2)/cot(atan(2))` -/
def P8957493667753691397.Spec : Prop :=
  ∀ n, P8957493667753691397.a n = (A027689 n : ℝ)

end A027689

/-! ## A027689.P10997670321579186057

`∑[a(n-1)+2]` with `a(0)=4, a(1)=2`
-/

namespace A027689.P10997670321579186057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027689.P10997670321579186057

namespace A027689

/-- `∑[a(n-1)+2]` -/
def P10997670321579186057.Spec : Prop :=
  ∀ n, (P10997670321579186057.a n : ℤ) = A027689 n

end A027689

/-! ## A027689.P10482702804981881185

`xor(1, n*(n+1)+5)`
-/

namespace A027689.P10482702804981881185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (n + 1) + 5)

end

end A027689.P10482702804981881185

namespace A027689

/-- `xor(1, n*(n+1)+5)` -/
def P10482702804981881185.Spec : Prop :=
  ∀ n, (P10482702804981881185.a n : ℤ) = A027689 n

end A027689

/-! ## A027689.P1561472155565746693

`∑[ogf((4-6x+4x^2)/(1-2x+x^2))]`
-/

namespace A027689.P1561472155565746693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027689.P1561472155565746693

namespace A027689

/-- `∑[ogf((4-6x+4x^2)/(1-2x+x^2))]` -/
def P1561472155565746693.Spec : Prop :=
  ∀ n, P1561472155565746693.a n = A027689 n

end A027689

/-! ## A027689.P15923484269509387343

`ogf((4-6x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A027689.P15923484269509387343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, 4] [1, -3, 3, -1] n

end

end A027689.P15923484269509387343

namespace A027689

/-- `ogf((4-6x+4x^2)/(1-3x+3x^2-x^3))` -/
def P15923484269509387343.Spec : Prop :=
  ∀ n, P15923484269509387343.a n = A027689 n

end A027689

/-! ## A027689.P3694762898936022390

`floor(a(n-1)-n/(1/2-1))` with `a(0)=4`
-/

namespace A027689.P3694762898936022390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊(a (n - 1) : ℚ) - (n : ℚ) / ((1 : ℚ) / 2 - 1)⌋

end

end A027689.P3694762898936022390

namespace A027689

/-- `floor(a(n-1)-n/(1/2-1))` -/
def P3694762898936022390.Spec : Prop :=
  ∀ n, P3694762898936022390.a n = A027689 n

end A027689

/-! ## A027689.P17485819293604584593

`2*(A000124(n)+1)`
-/

namespace A027689.P17485819293604584593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000124 n + 1)

end

end A027689.P17485819293604584593

namespace A027689

/-- `2*(A000124(n)+1)` -/
def P17485819293604584593.Spec : Prop :=
  ∀ n, P17485819293604584593.a n = A027689 n

end A027689

/-! ## A027689.P12591260592659068409

`2*(A000217(n)+2)`
-/

namespace A027689.P12591260592659068409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000217 n + 2)

end

end A027689.P12591260592659068409

namespace A027689

/-- `2*(A000217(n)+2)` -/
def P12591260592659068409.Spec : Prop :=
  ∀ n, P12591260592659068409.a n = A027689 n

theorem P12591260592659068409.correct : P12591260592659068409.Spec := by
  intro n
  simp only [A027689, Nat.add_sub_cancel, A027689.P12591260592659068409.a, A027689.P1842390006618827741.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027689

/-! ## A027689.P15632784259539314542

`(A294774(n)+3)/2`
-/

namespace A027689.P15632784259539314542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294774 n + 3 : ℚ) / 2

end

end A027689.P15632784259539314542

namespace A027689

/-- `(A294774(n)+3)/2` -/
def P15632784259539314542.Spec : Prop :=
  ∀ n, P15632784259539314542.a n = (A027689 n : ℚ)

theorem P15632784259539314542.correct : P15632784259539314542.Spec := by
  intro n
  simp only [A027689, Nat.add_sub_cancel, A027689.P15632784259539314542.a, A027689.P1842390006618827741.a, A294774, A294774.P17686075408868116839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027689

/-! ## A027689.P2895127112051683130

`(A378569(n)+5)/3`
-/

namespace A027689.P2895127112051683130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378569 n + 5 : ℚ) / 3

end

end A027689.P2895127112051683130

namespace A027689

/-- `(A378569(n)+5)/3` -/
def P2895127112051683130.Spec : Prop :=
  ∀ n, P2895127112051683130.a n = (A027689 n : ℚ)

theorem P2895127112051683130.correct : P2895127112051683130.Spec := by
  intro n
  simp only [A027689, Nat.add_sub_cancel, A027689.P2895127112051683130.a, A027689.P1842390006618827741.a, A378569, A378569.P3280406852489029443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027689

/-! ## A027689.P3752713209356673605

`2*(A152950(n+1)-1)`
-/

namespace A027689.P3752713209356673605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A152950 (n + 1) - 1)

end

end A027689.P3752713209356673605

namespace A027689

/-- `2*(A152950(n+1)-1)` -/
def P3752713209356673605.Spec : Prop :=
  ∀ n, P3752713209356673605.a n = A027689 n

end A027689

/-! ## A027689.P3813430809139571968

`2*(A145018(n+1)-2)`
-/

namespace A027689.P3813430809139571968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A145018 (n + 1) - 2)

end

end A027689.P3813430809139571968

namespace A027689

/-- `2*(A145018(n+1)-2)` -/
def P3813430809139571968.Spec : Prop :=
  ∀ n, P3813430809139571968.a n = A027689 n

end A027689

/-! ## A027689.P7641076287099479070

`(A242412(n+1)+1)/4`
-/

namespace A027689.P7641076287099479070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242412 (n + 1) + 1 : ℚ) / 4

end

end A027689.P7641076287099479070

namespace A027689

/-- `(A242412(n+1)+1)/4` -/
def P7641076287099479070.Spec : Prop :=
  ∀ n, P7641076287099479070.a n = (A027689 n : ℚ)

theorem P7641076287099479070.correct : P7641076287099479070.Spec := by
  intro n
  simp only [A027689, Nat.add_sub_cancel, A027689.P7641076287099479070.a, A027689.P1842390006618827741.a, A242412, A242412.P6089961274454358066.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027689

/-!
# A027690: a(n) = n^2 + n + 5.

The programs for A027690, the canonical program `A027690.P540562146888327245` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027690 has offset 0).

The definition of A027690 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+5` (program `A027690.P540562146888327245`, by `A027690.P540562146888327245.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027690.P540562146888327245

`n²+n+5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027690

/-- `n²+n+5` -/
def P540562146888327245.Spec : Prop :=
  ∀ n, (P540562146888327245.a n : ℤ) = A027690 n

theorem P540562146888327245.correct : P540562146888327245.Spec := by
  intro n
  simp only [A027690]

end A027690

/-! ## A027690.P18285719182825385513

`ceil(2*(∑[n]-tan(2)))`
-/

namespace A027690.P18285719182825385513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.tan (2 : ℝ))⌉

end

end A027690.P18285719182825385513

namespace A027690

/-- `ceil(2*(∑[n]-tan(2)))` -/
def P18285719182825385513.Spec : Prop :=
  ∀ n, P18285719182825385513.a n = A027690 n

end A027690

/-! ## A027690.P12773695735629351129

`ceil(2/acot(∑[n]+2))`
-/

namespace A027690.P12773695735629351129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℝ)⌉

end

end A027690.P12773695735629351129

namespace A027690

/-- `ceil(2/acot(∑[n]+2))` -/
def P12773695735629351129.Spec : Prop :=
  ∀ n, P12773695735629351129.a n = A027690 n

end A027690

/-! ## A027690.P2710655001351350910

`∑[a(n-1)+2]` with `a(0)=5, a(1)=2`
-/

namespace A027690.P2710655001351350910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027690.P2710655001351350910

namespace A027690

/-- `∑[a(n-1)+2]` -/
def P2710655001351350910.Spec : Prop :=
  ∀ n, (P2710655001351350910.a n : ℤ) = A027690 n

end A027690

/-! ## A027690.P18087647624154958291

`∑[ogf((5-8x+5x^2)/(1-2x+x^2))]`
-/

namespace A027690.P18087647624154958291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -8, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027690.P18087647624154958291

namespace A027690

/-- `∑[ogf((5-8x+5x^2)/(1-2x+x^2))]` -/
def P18087647624154958291.Spec : Prop :=
  ∀ n, P18087647624154958291.a n = A027690 n

end A027690

/-! ## A027690.P2693349462089025780

`ogf((5-8x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A027690.P2693349462089025780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -8, 5] [1, -3, 3, -1] n

end

end A027690.P2693349462089025780

namespace A027690

/-- `ogf((5-8x+5x^2)/(1-3x+3x^2-x^3))` -/
def P2693349462089025780.Spec : Prop :=
  ∀ n, P2693349462089025780.a n = A027690 n

end A027690

/-! ## A027690.P10940735811254596162

`abs(a(n-1)+2*n)` with `a(0)=5`
-/

namespace A027690.P10940735811254596162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 2 * n

end

end A027690.P10940735811254596162

namespace A027690

/-- `abs(a(n-1)+2*n)` -/
def P10940735811254596162.Spec : Prop :=
  ∀ n, (P10940735811254596162.a n : ℤ) = A027690 n

theorem P10940735811254596162.correct : P10940735811254596162.Spec := by
  intro n
  induction n with
  | zero => simp [A027690, A027690.P10940735811254596162.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027690, Nat.add_sub_cancel, A027690.P10940735811254596162.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027690

/-! ## A027690.P5768862508068478563

`floor(a(n-1)+2*n)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A027690.P5768862508068478563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 2 * n

end

end A027690.P5768862508068478563

namespace A027690

/-- `floor(a(n-1)+2*n)` -/
def P5768862508068478563.Spec : Prop :=
  ∀ n, (P5768862508068478563.a n : ℤ) = A027690 n

theorem P5768862508068478563.correct : P5768862508068478563.Spec := by
  intro n
  induction n with
  | zero => simp [A027690, A027690.P5768862508068478563.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027690, Nat.add_sub_cancel, A027690.P5768862508068478563.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027690

/-! ## A027690.P14825492291414940479

`ceil(a(n-1)+2*n)` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A027690.P14825492291414940479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 2 * n

end

end A027690.P14825492291414940479

namespace A027690

/-- `ceil(a(n-1)+2*n)` -/
def P14825492291414940479.Spec : Prop :=
  ∀ n, (P14825492291414940479.a n : ℤ) = A027690 n

theorem P14825492291414940479.correct : P14825492291414940479.Spec := by
  intro n
  induction n with
  | zero => simp [A027690, A027690.P14825492291414940479.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027690, Nat.add_sub_cancel, A027690.P14825492291414940479.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027690

/-! ## A027690.P8946866053930772222

`round(a(n-1)+2*n)` with `a(0)=5`

`round` is left out, it is the identity on integers.
-/

namespace A027690.P8946866053930772222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 2 * n

end

end A027690.P8946866053930772222

namespace A027690

/-- `round(a(n-1)+2*n)` -/
def P8946866053930772222.Spec : Prop :=
  ∀ n, (P8946866053930772222.a n : ℤ) = A027690 n

theorem P8946866053930772222.correct : P8946866053930772222.Spec := by
  intro n
  induction n with
  | zero => simp [A027690, A027690.P8946866053930772222.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027690, Nat.add_sub_cancel, A027690.P8946866053930772222.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027690

/-! ## A027690.P12096577331205710933

`abs(a(n-1)+n+n)` with `a(0)=5`
-/

namespace A027690.P12096577331205710933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + n + n

end

end A027690.P12096577331205710933

namespace A027690

/-- `abs(a(n-1)+n+n)` -/
def P12096577331205710933.Spec : Prop :=
  ∀ n, (P12096577331205710933.a n : ℤ) = A027690 n

theorem P12096577331205710933.correct : P12096577331205710933.Spec := by
  intro n
  induction n with
  | zero => simp [A027690, A027690.P12096577331205710933.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027690, Nat.add_sub_cancel, A027690.P12096577331205710933.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027690

/-! ## A027690.P9825318689452742037

`floor(a(n-1)+n+n)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A027690.P9825318689452742037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + n + n

end

end A027690.P9825318689452742037

namespace A027690

/-- `floor(a(n-1)+n+n)` -/
def P9825318689452742037.Spec : Prop :=
  ∀ n, (P9825318689452742037.a n : ℤ) = A027690 n

theorem P9825318689452742037.correct : P9825318689452742037.Spec := by
  intro n
  induction n with
  | zero => simp [A027690, A027690.P9825318689452742037.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027690, Nat.add_sub_cancel, A027690.P9825318689452742037.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027690

/-! ## A027690.P11343238202001414390

`ceil(a(n-1)+n+n)` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A027690.P11343238202001414390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + n + n

end

end A027690.P11343238202001414390

namespace A027690

/-- `ceil(a(n-1)+n+n)` -/
def P11343238202001414390.Spec : Prop :=
  ∀ n, (P11343238202001414390.a n : ℤ) = A027690 n

theorem P11343238202001414390.correct : P11343238202001414390.Spec := by
  intro n
  induction n with
  | zero => simp [A027690, A027690.P11343238202001414390.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027690, Nat.add_sub_cancel, A027690.P11343238202001414390.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027690

/-! ## A027690.P17893331274522796656

`round(a(n-1)+n+n)` with `a(0)=5`

`round` is left out, it is the identity on integers.
-/

namespace A027690.P17893331274522796656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + n + n

end

end A027690.P17893331274522796656

namespace A027690

/-- `round(a(n-1)+n+n)` -/
def P17893331274522796656.Spec : Prop :=
  ∀ n, (P17893331274522796656.a n : ℤ) = A027690 n

theorem P17893331274522796656.correct : P17893331274522796656.Spec := by
  intro n
  induction n with
  | zero => simp [A027690, A027690.P17893331274522796656.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027690, Nat.add_sub_cancel, A027690.P17893331274522796656.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027690

/-! ## A027690.P8740643989744854070

`abs(4-(n-record[(n-1)²]))`
-/

namespace A027690.P8740643989744854070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - ((n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))|

end

end A027690.P8740643989744854070

namespace A027690

/-- `abs(4-(n-record[(n-1)²]))` -/
def P8740643989744854070.Spec : Prop :=
  ∀ n, P8740643989744854070.a n = A027690 n

end A027690

/-! ## A027690.P4613815248818003697

`2*(a(n-1)/2+n)` with `a(0)=5`
-/

namespace A027690.P4613815248818003697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  2 * (a (n - 1) / 2 + (n : ℚ))

end

end A027690.P4613815248818003697

namespace A027690

/-- `2*(a(n-1)/2+n)` -/
def P4613815248818003697.Spec : Prop :=
  ∀ n, P4613815248818003697.a n = (A027690 n : ℚ)

theorem P4613815248818003697.correct : P4613815248818003697.Spec := by
  intro n
  induction n with
  | zero => simp [A027690, A027690.P4613815248818003697.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027690, Nat.add_sub_cancel, A027690.P4613815248818003697.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027690

/-! ## A027690.P9373858213644262386

`floor(3*n-(n-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A027690.P9373858213644262386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (3 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A027690.P9373858213644262386

namespace A027690

/-- `floor(3*n-(n-a(n-1)))` -/
def P9373858213644262386.Spec : Prop :=
  ∀ n, P9373858213644262386.a n = A027690 n

theorem P9373858213644262386.correct : P9373858213644262386.Spec := by
  intro n
  induction n with
  | zero => simp [A027690, A027690.P9373858213644262386.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027690, Nat.add_sub_cancel, A027690.P9373858213644262386.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027690

/-! ## A027690.P17122832698126422954

`∑[4-(4/2-a(n-1))]` with `a(0)=5, a(1)=2`
-/

namespace A027690.P17122832698126422954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  4 - ((4 : ℚ) / 2 - f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027690.P17122832698126422954

namespace A027690

/-- `∑[4-(4/2-a(n-1))]` -/
def P17122832698126422954.Spec : Prop :=
  ∀ n, P17122832698126422954.a n = (A027690 n : ℚ)

end A027690

/-! ## A027690.P18368712458209411285

`∑[2*(2-(n-a(n-1)))]` with `a(0)=5, a(1)=2`
-/

namespace A027690.P18368712458209411285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  2 * (2 - ((n : ℤ) - f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027690.P18368712458209411285

namespace A027690

/-- `∑[2*(2-(n-a(n-1)))]` -/
def P18368712458209411285.Spec : Prop :=
  ∀ n, P18368712458209411285.a n = A027690 n

end A027690

/-! ## A027690.P8432447249103863105

`3*(n-(n-a(n-1))/3)` with `a(0)=5`
-/

namespace A027690.P8432447249103863105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  3 * ((n : ℚ) - ((n : ℚ) - a (n - 1)) / 3)

end

end A027690.P8432447249103863105

namespace A027690

/-- `3*(n-(n-a(n-1))/3)` -/
def P8432447249103863105.Spec : Prop :=
  ∀ n, P8432447249103863105.a n = (A027690 n : ℚ)

theorem P8432447249103863105.correct : P8432447249103863105.Spec := by
  intro n
  induction n with
  | zero => simp [A027690, A027690.P8432447249103863105.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027690, Nat.add_sub_cancel, A027690.P8432447249103863105.a, A027690.P540562146888327245.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027690

/-!
# A027691: a(n) = n^2 + n + 6.

The programs for A027691, the canonical program `A027691.P12851822428690852864` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027691 has offset 0).

The definition of A027691 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+6` (program `A027691.P12851822428690852864`, by `A027691.P12851822428690852864.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027691.P12851822428690852864

`n²+n+6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027691

/-- `n²+n+6` -/
def P12851822428690852864.Spec : Prop :=
  ∀ n, (P12851822428690852864.a n : ℤ) = A027691 n

theorem P12851822428690852864.correct : P12851822428690852864.Spec := by
  intro n
  simp only [A027691]

end A027691

/-! ## A027691.P16978414377157200899

`2*A152950(n+1)`
-/

namespace A027691.P16978414377157200899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152950 (n + 1)

end

end A027691.P16978414377157200899

namespace A027691

/-- `2*A152950(n+1)` -/
def P16978414377157200899.Spec : Prop :=
  ∀ n, P16978414377157200899.a n = A027691 n

end A027691

/-! ## A027691.P15522639755830201366

`floor(2/acot(∑[n]+3))`
-/

namespace A027691.P15522639755830201366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℝ)⌋

end

end A027691.P15522639755830201366

namespace A027691

/-- `floor(2/acot(∑[n]+3))` -/
def P15522639755830201366.Spec : Prop :=
  ∀ n, P15522639755830201366.a n = A027691 n

end A027691

/-! ## A027691.P1379981975672184546

`round(2/acot(∑[n]+3))`
-/

namespace A027691.P1379981975672184546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℝ))

end

end A027691.P1379981975672184546

namespace A027691

/-- `round(2/acot(∑[n]+3))` -/
def P1379981975672184546.Spec : Prop :=
  ∀ n, P1379981975672184546.a n = A027691 n

end A027691

/-! ## A027691.P9021668166779885789

`2/tan(acot(∑[n]+3))`
-/

namespace A027691.P9021668166779885789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.tan (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℝ))

end

end A027691.P9021668166779885789

namespace A027691

/-- `2/tan(acot(∑[n]+3))` -/
def P9021668166779885789.Spec : Prop :=
  ∀ n, P9021668166779885789.a n = (A027691 n : ℝ)

end A027691

/-! ## A027691.P749670165294406576

`(∑[n]+3)/cot(atan(2))`
-/

namespace A027691.P749670165294406576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A027691.P749670165294406576

namespace A027691

/-- `(∑[n]+3)/cot(atan(2))` -/
def P749670165294406576.Spec : Prop :=
  ∀ n, P749670165294406576.a n = (A027691 n : ℝ)

end A027691

/-! ## A027691.P4855903948686280481

`∑[a(n-1)+2]` with `a(0)=6, a(1)=2`
-/

namespace A027691.P4855903948686280481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027691.P4855903948686280481

namespace A027691

/-- `∑[a(n-1)+2]` -/
def P4855903948686280481.Spec : Prop :=
  ∀ n, (P4855903948686280481.a n : ℤ) = A027691 n

end A027691

/-! ## A027691.P1879933593586830257

`∑[ogf((6-10x+6x^2)/(1-2x+x^2))]`
-/

namespace A027691.P1879933593586830257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -10, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027691.P1879933593586830257

namespace A027691

/-- `∑[ogf((6-10x+6x^2)/(1-2x+x^2))]` -/
def P1879933593586830257.Spec : Prop :=
  ∀ n, P1879933593586830257.a n = A027691 n

end A027691

/-! ## A027691.P16494899904469105344

`ogf((6-10x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A027691.P16494899904469105344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -10, 6] [1, -3, 3, -1] n

end

end A027691.P16494899904469105344

namespace A027691

/-- `ogf((6-10x+6x^2)/(1-3x+3x^2-x^3))` -/
def P16494899904469105344.Spec : Prop :=
  ∀ n, P16494899904469105344.a n = A027691 n

end A027691

/-! ## A027691.P739785390446530626

`xor(1, A027692(n))`
-/

namespace A027691.P739785390446530626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A027692 n)

end

end A027691.P739785390446530626

namespace A027691

/-- `xor(1, A027692(n))` -/
def P739785390446530626.Spec : Prop :=
  ∀ n, P739785390446530626.a n = A027691 n

end A027691

/-! ## A027691.P8383363878080980258

`2*(A000124(n)+2)`
-/

namespace A027691.P8383363878080980258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000124 n + 2)

end

end A027691.P8383363878080980258

namespace A027691

/-- `2*(A000124(n)+2)` -/
def P8383363878080980258.Spec : Prop :=
  ∀ n, P8383363878080980258.a n = A027691 n

end A027691

/-! ## A027691.P1891951072859285870

`2*(A000217(n)+3)`
-/

namespace A027691.P1891951072859285870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000217 n + 3)

end

end A027691.P1891951072859285870

namespace A027691

/-- `2*(A000217(n)+3)` -/
def P1891951072859285870.Spec : Prop :=
  ∀ n, P1891951072859285870.a n = A027691 n

theorem P1891951072859285870.correct : P1891951072859285870.Spec := by
  intro n
  simp only [A027691, Nat.add_sub_cancel, A027691.P1891951072859285870.a, A027691.P12851822428690852864.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027691

/-! ## A027691.P48089886785898526

`2*(A145018(n+1)-1)`
-/

namespace A027691.P48089886785898526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A145018 (n + 1) - 1)

end

end A027691.P48089886785898526

namespace A027691

/-- `2*(A145018(n+1)-1)` -/
def P48089886785898526.Spec : Prop :=
  ∀ n, P48089886785898526.a n = A027691 n

end A027691

/-! ## A027691.P9743523210367991192

`(A259555(n+1)-5)/2`
-/

namespace A027691.P9743523210367991192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259555 (n + 1) - 5 : ℚ) / 2

end

end A027691.P9743523210367991192

namespace A027691

/-- `(A259555(n+1)-5)/2` -/
def P9743523210367991192.Spec : Prop :=
  ∀ n, P9743523210367991192.a n = (A027691 n : ℚ)

theorem P9743523210367991192.correct : P9743523210367991192.Spec := by
  intro n
  simp only [A027691, Nat.add_sub_cancel, A027691.P9743523210367991192.a, A027691.P12851822428690852864.a, A259555, A259555.P7816943564928333054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027691

/-! ## A027691.P16383876703081034203

`(A259054(n+1)+5)/4`
-/

namespace A027691.P16383876703081034203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259054 (n + 1) + 5 : ℚ) / 4

end

end A027691.P16383876703081034203

namespace A027691

/-- `(A259054(n+1)+5)/4` -/
def P16383876703081034203.Spec : Prop :=
  ∀ n, P16383876703081034203.a n = (A027691 n : ℚ)

theorem P16383876703081034203.correct : P16383876703081034203.Spec := by
  intro n
  simp only [A027691, Nat.add_sub_cancel, A027691.P16383876703081034203.a, A027691.P12851822428690852864.a, A259054, A259054.P1873933039071315874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027691

/-! ## A027691.P11596000581147445058

`2*(A152948(n+1)+n+1)`
-/

namespace A027691.P11596000581147445058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A152948 (n + 1) + (n + 1 : ℤ))

end

end A027691.P11596000581147445058

namespace A027691

/-- `2*(A152948(n+1)+n+1)` -/
def P11596000581147445058.Spec : Prop :=
  ∀ n, P11596000581147445058.a n = A027691 n

theorem P11596000581147445058.correct : P11596000581147445058.Spec := by
  intro n
  simp only [A027691, Nat.add_sub_cancel, A027691.P11596000581147445058.a, A027691.P12851822428690852864.a, A152948, A152948.P6305161244529730027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027691

/-! ## A027691.P6195866019077883058

`A259555(n+1)%A048058(n)`
-/

namespace A027691.P6195866019077883058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259555 (n + 1)) (A048058 n)

end

end A027691.P6195866019077883058

namespace A027691

/-- `A259555(n+1)%A048058(n)` -/
def P6195866019077883058.Spec : Prop :=
  ∀ n, P6195866019077883058.a n = A027691 n

end A027691

/-! ## A027691.P10397516743816238929

`A157923(n+1)%A157914(n+1)`
-/

namespace A027691.P10397516743816238929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157923 (n + 1)) (A157914 (n + 1))

end

end A027691.P10397516743816238929

namespace A027691

/-- `A157923(n+1)%A157914(n+1)` -/
def P10397516743816238929.Spec : Prop :=
  ∀ n, P10397516743816238929.a n = A027691 n

end A027691

/-! ## A027691.P9978957647130381953

`A157960(n+1)%A158491(n+1)`
-/

namespace A027691.P9978957647130381953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157960 (n + 1)) (A158491 (n + 1))

end

end A027691.P9978957647130381953

namespace A027691

/-- `A157960(n+1)%A158491(n+1)` -/
def P9978957647130381953.Spec : Prop :=
  ∀ n, P9978957647130381953.a n = A027691 n

end A027691

/-! ## A027691.P10943448542849571847

`A157998(n+1)%A158554(n+1)`
-/

namespace A027691.P10943448542849571847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157998 (n + 1)) (A158554 (n + 1))

end

end A027691.P10943448542849571847

namespace A027691

/-- `A157998(n+1)%A158554(n+1)` -/
def P10943448542849571847.Spec : Prop :=
  ∀ n, P10943448542849571847.a n = A027691 n

end A027691

/-!
# A027692: a(n) = n^2 + n + 7.

The programs for A027692, the canonical program `A027692.P12934424659793957535` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027692 has offset 0).

The definition of A027692 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+7` (program `A027692.P12934424659793957535`, by `A027692.P12934424659793957535.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027692.P12934424659793957535

`n²+n+7`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027692

/-- `n²+n+7` -/
def P12934424659793957535.Spec : Prop :=
  ∀ n, (P12934424659793957535.a n : ℤ) = A027692 n

theorem P12934424659793957535.correct : P12934424659793957535.Spec := by
  intro n
  simp only [A027692]

end A027692

/-! ## A027692.P16304177060994699188

`ceil(2/acot(∑[n]+3))`
-/

namespace A027692.P16304177060994699188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℝ)⌉

end

end A027692.P16304177060994699188

namespace A027692

/-- `ceil(2/acot(∑[n]+3))` -/
def P16304177060994699188.Spec : Prop :=
  ∀ n, P16304177060994699188.a n = A027692 n

end A027692

/-! ## A027692.P9358628546322652077

`floor(n-(cot(3)-n²))`
-/

namespace A027692.P9358628546322652077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - (Real.cot (3 : ℝ) - (n ^ 2 : ℝ))⌋

end

end A027692.P9358628546322652077

namespace A027692

/-- `floor(n-(cot(3)-n²))` -/
def P9358628546322652077.Spec : Prop :=
  ∀ n, P9358628546322652077.a n = A027692 n

end A027692

/-! ## A027692.P14893309409406382583

`round(n-(cot(3)-n²))`
-/

namespace A027692.P14893309409406382583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) - (Real.cot (3 : ℝ) - (n ^ 2 : ℝ)))

end

end A027692.P14893309409406382583

namespace A027692

/-- `round(n-(cot(3)-n²))` -/
def P14893309409406382583.Spec : Prop :=
  ∀ n, P14893309409406382583.a n = A027692 n

end A027692

/-! ## A027692.P11662553503280479235

`∑[a(n-1)+2]` with `a(0)=7, a(1)=2`
-/

namespace A027692.P11662553503280479235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027692.P11662553503280479235

namespace A027692

/-- `∑[a(n-1)+2]` -/
def P11662553503280479235.Spec : Prop :=
  ∀ n, (P11662553503280479235.a n : ℤ) = A027692 n

end A027692

/-! ## A027692.P16373902232783748785

`or(1, n*(n+1)+6)`
-/

namespace A027692.P16373902232783748785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (n + 1) + 6)

end

end A027692.P16373902232783748785

namespace A027692

/-- `or(1, n*(n+1)+6)` -/
def P16373902232783748785.Spec : Prop :=
  ∀ n, (P16373902232783748785.a n : ℤ) = A027692 n

end A027692

/-! ## A027692.P17103721958419620713

`xor(1, n*(n+1)+6)`
-/

namespace A027692.P17103721958419620713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (n + 1) + 6)

end

end A027692.P17103721958419620713

namespace A027692

/-- `xor(1, n*(n+1)+6)` -/
def P17103721958419620713.Spec : Prop :=
  ∀ n, (P17103721958419620713.a n : ℤ) = A027692 n

end A027692

/-! ## A027692.P11483913440711726642

`abs(a(n-1)+2*n)` with `a(0)=7`
-/

namespace A027692.P11483913440711726642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 2 * n

end

end A027692.P11483913440711726642

namespace A027692

/-- `abs(a(n-1)+2*n)` -/
def P11483913440711726642.Spec : Prop :=
  ∀ n, (P11483913440711726642.a n : ℤ) = A027692 n

theorem P11483913440711726642.correct : P11483913440711726642.Spec := by
  intro n
  induction n with
  | zero => simp [A027692, A027692.P11483913440711726642.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027692, Nat.add_sub_cancel, A027692.P11483913440711726642.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027692

/-! ## A027692.P2519253497096121489

`floor(a(n-1)+2*n)` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A027692.P2519253497096121489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 2 * n

end

end A027692.P2519253497096121489

namespace A027692

/-- `floor(a(n-1)+2*n)` -/
def P2519253497096121489.Spec : Prop :=
  ∀ n, (P2519253497096121489.a n : ℤ) = A027692 n

theorem P2519253497096121489.correct : P2519253497096121489.Spec := by
  intro n
  induction n with
  | zero => simp [A027692, A027692.P2519253497096121489.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027692, Nat.add_sub_cancel, A027692.P2519253497096121489.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027692

/-! ## A027692.P14301157521751807616

`ceil(a(n-1)+2*n)` with `a(0)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A027692.P14301157521751807616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 2 * n

end

end A027692.P14301157521751807616

namespace A027692

/-- `ceil(a(n-1)+2*n)` -/
def P14301157521751807616.Spec : Prop :=
  ∀ n, (P14301157521751807616.a n : ℤ) = A027692 n

theorem P14301157521751807616.correct : P14301157521751807616.Spec := by
  intro n
  induction n with
  | zero => simp [A027692, A027692.P14301157521751807616.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027692, Nat.add_sub_cancel, A027692.P14301157521751807616.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027692

/-! ## A027692.P4866921371816973303

`round(a(n-1)+2*n)` with `a(0)=7`

`round` is left out, it is the identity on integers.
-/

namespace A027692.P4866921371816973303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 2 * n

end

end A027692.P4866921371816973303

namespace A027692

/-- `round(a(n-1)+2*n)` -/
def P4866921371816973303.Spec : Prop :=
  ∀ n, (P4866921371816973303.a n : ℤ) = A027692 n

theorem P4866921371816973303.correct : P4866921371816973303.Spec := by
  intro n
  induction n with
  | zero => simp [A027692, A027692.P4866921371816973303.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027692, Nat.add_sub_cancel, A027692.P4866921371816973303.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027692

/-! ## A027692.P6356834840426267416

`abs(a(n-1)+n+n)` with `a(0)=7`
-/

namespace A027692.P6356834840426267416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + n + n

end

end A027692.P6356834840426267416

namespace A027692

/-- `abs(a(n-1)+n+n)` -/
def P6356834840426267416.Spec : Prop :=
  ∀ n, (P6356834840426267416.a n : ℤ) = A027692 n

theorem P6356834840426267416.correct : P6356834840426267416.Spec := by
  intro n
  induction n with
  | zero => simp [A027692, A027692.P6356834840426267416.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027692, Nat.add_sub_cancel, A027692.P6356834840426267416.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027692

/-! ## A027692.P6473664857541248403

`floor(a(n-1)+n+n)` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A027692.P6473664857541248403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + n + n

end

end A027692.P6473664857541248403

namespace A027692

/-- `floor(a(n-1)+n+n)` -/
def P6473664857541248403.Spec : Prop :=
  ∀ n, (P6473664857541248403.a n : ℤ) = A027692 n

theorem P6473664857541248403.correct : P6473664857541248403.Spec := by
  intro n
  induction n with
  | zero => simp [A027692, A027692.P6473664857541248403.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027692, Nat.add_sub_cancel, A027692.P6473664857541248403.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027692

/-! ## A027692.P2924787371327156118

`ceil(a(n-1)+n+n)` with `a(0)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A027692.P2924787371327156118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + n + n

end

end A027692.P2924787371327156118

namespace A027692

/-- `ceil(a(n-1)+n+n)` -/
def P2924787371327156118.Spec : Prop :=
  ∀ n, (P2924787371327156118.a n : ℤ) = A027692 n

theorem P2924787371327156118.correct : P2924787371327156118.Spec := by
  intro n
  induction n with
  | zero => simp [A027692, A027692.P2924787371327156118.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027692, Nat.add_sub_cancel, A027692.P2924787371327156118.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027692

/-! ## A027692.P4828511168957211530

`round(a(n-1)+n+n)` with `a(0)=7`

`round` is left out, it is the identity on integers.
-/

namespace A027692.P4828511168957211530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + n + n

end

end A027692.P4828511168957211530

namespace A027692

/-- `round(a(n-1)+n+n)` -/
def P4828511168957211530.Spec : Prop :=
  ∀ n, (P4828511168957211530.a n : ℤ) = A027692 n

theorem P4828511168957211530.correct : P4828511168957211530.Spec := by
  intro n
  induction n with
  | zero => simp [A027692, A027692.P4828511168957211530.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027692, Nat.add_sub_cancel, A027692.P4828511168957211530.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027692

/-! ## A027692.P18264123860118086596

`2*(a(n-1)/2+n)` with `a(0)=7`
-/

namespace A027692.P18264123860118086596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  2 * (a (n - 1) / 2 + (n : ℚ))

end

end A027692.P18264123860118086596

namespace A027692

/-- `2*(a(n-1)/2+n)` -/
def P18264123860118086596.Spec : Prop :=
  ∀ n, P18264123860118086596.a n = (A027692 n : ℚ)

theorem P18264123860118086596.correct : P18264123860118086596.Spec := by
  intro n
  induction n with
  | zero => simp [A027692, A027692.P18264123860118086596.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027692, Nat.add_sub_cancel, A027692.P18264123860118086596.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027692

/-! ## A027692.P14533930261121788923

`floor(3*n-(n-a(n-1)))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A027692.P14533930261121788923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  (3 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A027692.P14533930261121788923

namespace A027692

/-- `floor(3*n-(n-a(n-1)))` -/
def P14533930261121788923.Spec : Prop :=
  ∀ n, P14533930261121788923.a n = A027692 n

theorem P14533930261121788923.correct : P14533930261121788923.Spec := by
  intro n
  induction n with
  | zero => simp [A027692, A027692.P14533930261121788923.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027692, Nat.add_sub_cancel, A027692.P14533930261121788923.a, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027692

/-! ## A027692.P9727032825942387022

`abs(2*n-(lcm(n+1, n+2)+5))`
-/

namespace A027692.P9727032825942387022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (Nat.lcm (n + 1) (n + 2) + 5 : ℤ)|

end

end A027692.P9727032825942387022

namespace A027692

/-- `abs(2*n-(lcm(n+1, n+2)+5))` -/
def P9727032825942387022.Spec : Prop :=
  ∀ n, P9727032825942387022.a n = A027692 n

end A027692

/-! ## A027692.P9069061657841394854

`∑[2*a(n-1)-a(n-2)]` with `a(0)=7, a(1)=2, a(2)=4`
-/

namespace A027692.P9069061657841394854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 2, 4] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027692.P9069061657841394854

namespace A027692

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P9069061657841394854.Spec : Prop :=
  ∀ n, P9069061657841394854.a n = A027692 n

end A027692

/-! ## A027692.P7750004448372489566

`(A259555(n+1)-3)/2`
-/

namespace A027692.P7750004448372489566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259555 (n + 1) - 3 : ℚ) / 2

end

end A027692.P7750004448372489566

namespace A027692

/-- `(A259555(n+1)-3)/2` -/
def P7750004448372489566.Spec : Prop :=
  ∀ n, P7750004448372489566.a n = (A027692 n : ℚ)

theorem P7750004448372489566.correct : P7750004448372489566.Spec := by
  intro n
  simp only [A027692, Nat.add_sub_cancel, A027692.P7750004448372489566.a, A027692.P12934424659793957535.a, A259555, A259555.P7816943564928333054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027692

/-!
# A027693: a(n) = n^2 + n + 8.

The programs for A027693, the canonical program `A027693.P13120036568527638263` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027693 has offset 0).

The definition of A027693 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+8` (program `A027693.P13120036568527638263`, by `A027693.P13120036568527638263.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027693.P13120036568527638263

`n²+n+8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027693

/-- `n²+n+8` -/
def P13120036568527638263.Spec : Prop :=
  ∀ n, (P13120036568527638263.a n : ℤ) = A027693 n

theorem P13120036568527638263.correct : P13120036568527638263.Spec := by
  intro n
  simp only [A027693]

end A027693

/-! ## A027693.P17294248405488845296

`2*A145018(n+1)`
-/

namespace A027693.P17294248405488845296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145018 (n + 1)

end

end A027693.P17294248405488845296

namespace A027693

/-- `2*A145018(n+1)` -/
def P17294248405488845296.Spec : Prop :=
  ∀ n, P17294248405488845296.a n = A027693 n

end A027693

/-! ## A027693.P10719666950940164973

`ceil(n-(cot(3)-n²))`
-/

namespace A027693.P10719666950940164973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - (Real.cot (3 : ℝ) - (n ^ 2 : ℝ))⌉

end

end A027693.P10719666950940164973

namespace A027693

/-- `ceil(n-(cot(3)-n²))` -/
def P10719666950940164973.Spec : Prop :=
  ∀ n, P10719666950940164973.a n = A027693 n

end A027693

/-! ## A027693.P305000502389935774

`∑[a(n-1)+2]` with `a(0)=8, a(1)=2`
-/

namespace A027693.P305000502389935774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027693.P305000502389935774

namespace A027693

/-- `∑[a(n-1)+2]` -/
def P305000502389935774.Spec : Prop :=
  ∀ n, (P305000502389935774.a n : ℤ) = A027693 n

end A027693

/-! ## A027693.P7787468360401000463

`floor(a(n-1)+n+n)` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A027693.P7787468360401000463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + n + n

end

end A027693.P7787468360401000463

namespace A027693

/-- `floor(a(n-1)+n+n)` -/
def P7787468360401000463.Spec : Prop :=
  ∀ n, (P7787468360401000463.a n : ℤ) = A027693 n

theorem P7787468360401000463.correct : P7787468360401000463.Spec := by
  intro n
  induction n with
  | zero => simp [A027693, A027693.P7787468360401000463.a, A027693.P13120036568527638263.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027693, Nat.add_sub_cancel, A027693.P7787468360401000463.a, A027693.P13120036568527638263.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027693

/-! ## A027693.P17380122083415275545

`xor(1, A027694(n))`
-/

namespace A027693.P17380122083415275545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A027694 n)

end

end A027693.P17380122083415275545

namespace A027693

/-- `xor(1, A027694(n))` -/
def P17380122083415275545.Spec : Prop :=
  ∀ n, P17380122083415275545.a n = A027693 n

end A027693

/-! ## A027693.P9944411790589828471

`2*(A000124(n)+3)`
-/

namespace A027693.P9944411790589828471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000124 n + 3)

end

end A027693.P9944411790589828471

namespace A027693

/-- `2*(A000124(n)+3)` -/
def P9944411790589828471.Spec : Prop :=
  ∀ n, P9944411790589828471.a n = A027693 n

end A027693

/-! ## A027693.P13110943334095261570

`2*(A000217(n)+4)`
-/

namespace A027693.P13110943334095261570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000217 n + 4)

end

end A027693.P13110943334095261570

namespace A027693

/-- `2*(A000217(n)+4)` -/
def P13110943334095261570.Spec : Prop :=
  ∀ n, P13110943334095261570.a n = A027693 n

theorem P13110943334095261570.correct : P13110943334095261570.Spec := by
  intro n
  simp only [A027693, Nat.add_sub_cancel, A027693.P13110943334095261570.a, A027693.P13120036568527638263.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027693

/-! ## A027693.P3365678180200274351

`2*(A152950(n+1)+1)`
-/

namespace A027693.P3365678180200274351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A152950 (n + 1) + 1)

end

end A027693.P3365678180200274351

namespace A027693

/-- `2*(A152950(n+1)+1)` -/
def P3365678180200274351.Spec : Prop :=
  ∀ n, P3365678180200274351.a n = A027693 n

end A027693

/-! ## A027693.P12283720248606739756

`(A259555(n+1)-1)/2`
-/

namespace A027693.P12283720248606739756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259555 (n + 1) - 1 : ℚ) / 2

end

end A027693.P12283720248606739756

namespace A027693

/-- `(A259555(n+1)-1)/2` -/
def P12283720248606739756.Spec : Prop :=
  ∀ n, P12283720248606739756.a n = (A027693 n : ℚ)

theorem P12283720248606739756.correct : P12283720248606739756.Spec := by
  intro n
  simp only [A027693, Nat.add_sub_cancel, A027693.P12283720248606739756.a, A027693.P13120036568527638263.a, A259555, A259555.P7816943564928333054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027693

/-! ## A027693.P2495351355196282490

`2*(A152949(n+1)+n+1)`
-/

namespace A027693.P2495351355196282490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A152949 (n + 1) + (n + 1 : ℤ))

end

end A027693.P2495351355196282490

namespace A027693

/-- `2*(A152949(n+1)+n+1)` -/
def P2495351355196282490.Spec : Prop :=
  ∀ n, P2495351355196282490.a n = A027693 n

theorem P2495351355196282490.correct : P2495351355196282490.Spec := by
  intro n
  simp only [A027693, Nat.add_sub_cancel, A027693.P2495351355196282490.a, A027693.P13120036568527638263.a, A152949, A152949.P6392678402352572629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027693

/-! ## A027693.P14122309649953495758

`A259555(n+1)%A027694(n)`
-/

namespace A027693.P14122309649953495758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259555 (n + 1)) (A027694 n)

end

end A027693.P14122309649953495758

namespace A027693

/-- `A259555(n+1)%A027694(n)` -/
def P14122309649953495758.Spec : Prop :=
  ∀ n, P14122309649953495758.a n = A027693 n

end A027693

/-! ## A027693.P15055896851095904083

`A156813(n+1)%A158554(n+1)`
-/

namespace A027693.P15055896851095904083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156813 (n + 1)) (A158554 (n + 1))

end

end A027693.P15055896851095904083

namespace A027693

/-- `A156813(n+1)%A158554(n+1)` -/
def P15055896851095904083.Spec : Prop :=
  ∀ n, P15055896851095904083.a n = A027693 n

end A027693

/-! ## A027693.P17514830633290145909

`A157953(n+1)%A158447(n+1)`
-/

namespace A027693.P17514830633290145909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157953 (n + 1)) (A158447 (n + 1))

end

end A027693.P17514830633290145909

namespace A027693

/-- `A157953(n+1)%A158447(n+1)` -/
def P17514830633290145909.Spec : Prop :=
  ∀ n, P17514830633290145909.a n = A027693 n

end A027693

/-! ## A027693.P15777462711535359562

`A020744(∑[n])`
-/

namespace A027693.P15777462711535359562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027693.P15777462711535359562

namespace A027693

/-- `A020744(∑[n])` -/
def P15777462711535359562.Spec : Prop :=
  ∀ n, P15777462711535359562.a n = A027693 n

end A027693

/-! ## A027693.P2539620193134548094

`A020739(∑[n]+1)`
-/

namespace A027693.P2539620193134548094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027693.P2539620193134548094

namespace A027693

/-- `A020739(∑[n]+1)` -/
def P2539620193134548094.Spec : Prop :=
  ∀ n, P2539620193134548094.a n = A027693 n

end A027693

/-! ## A027693.P7702842153011004616

`A103517(∑[n]+3)`
-/

namespace A027693.P7702842153011004616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A027693.P7702842153011004616

namespace A027693

/-- `A103517(∑[n]+3)` -/
def P7702842153011004616.Spec : Prop :=
  ∀ n, P7702842153011004616.a n = A027693 n

end A027693

/-! ## A027693.P18005465546219394452

`A004277(∑[n]+4)`
-/

namespace A027693.P18005465546219394452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A027693.P18005465546219394452

namespace A027693

/-- `A004277(∑[n]+4)` -/
def P18005465546219394452.Spec : Prop :=
  ∀ n, P18005465546219394452.a n = A027693 n

end A027693

/-! ## A027693.P4010441568663994363

`A005843(∑[n]+4)`
-/

namespace A027693.P4010441568663994363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A027693.P4010441568663994363

namespace A027693

/-- `A005843(∑[n]+4)` -/
def P4010441568663994363.Spec : Prop :=
  ∀ n, P4010441568663994363.a n = A027693 n

end A027693

/-!
# A027694: a(n) = n^2 + n + 9.

The programs for A027694, the canonical program `A027694.P2269874103153134715` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027694 has offset 0).

The definition of A027694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+9` (program `A027694.P2269874103153134715`, by `A027694.P2269874103153134715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027694.P2269874103153134715

`n²+n+9`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027694

/-- `n²+n+9` -/
def P2269874103153134715.Spec : Prop :=
  ∀ n, (P2269874103153134715.a n : ℤ) = A027694 n

theorem P2269874103153134715.correct : P2269874103153134715.Spec := by
  intro n
  simp only [A027694]

end A027694

/-! ## A027694.P11486268691873245145

`∑[a(n-1)+2]` with `a(0)=9, a(1)=2`
-/

namespace A027694.P11486268691873245145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027694.P11486268691873245145

namespace A027694

/-- `∑[a(n-1)+2]` -/
def P11486268691873245145.Spec : Prop :=
  ∀ n, (P11486268691873245145.a n : ℤ) = A027694 n

end A027694

/-! ## A027694.P13201248114668326507

`or(1, n*(n+1)+8)`
-/

namespace A027694.P13201248114668326507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (n + 1) + 8)

end

end A027694.P13201248114668326507

namespace A027694

/-- `or(1, n*(n+1)+8)` -/
def P13201248114668326507.Spec : Prop :=
  ∀ n, (P13201248114668326507.a n : ℤ) = A027694 n

end A027694

/-! ## A027694.P13387963965231204168

`xor(1, n*(n+1)+8)`
-/

namespace A027694.P13387963965231204168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (n + 1) + 8)

end

end A027694.P13387963965231204168

namespace A027694

/-- `xor(1, n*(n+1)+8)` -/
def P13387963965231204168.Spec : Prop :=
  ∀ n, (P13387963965231204168.a n : ℤ) = A027694 n

end A027694

/-! ## A027694.P15010169358004052797

`abs(2*n+a(n-1))` with `a(0)=9`
-/

namespace A027694.P15010169358004052797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  2 * n + a (n - 1)

end

end A027694.P15010169358004052797

namespace A027694

/-- `abs(2*n+a(n-1))` -/
def P15010169358004052797.Spec : Prop :=
  ∀ n, (P15010169358004052797.a n : ℤ) = A027694 n

theorem P15010169358004052797.correct : P15010169358004052797.Spec := by
  intro n
  induction n with
  | zero => simp [A027694, A027694.P15010169358004052797.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027694, Nat.add_sub_cancel, A027694.P15010169358004052797.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027694

/-! ## A027694.P10608277855588284429

`floor(a(n-1)+2*n)` with `a(0)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A027694.P10608277855588284429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + 2 * n

end

end A027694.P10608277855588284429

namespace A027694

/-- `floor(a(n-1)+2*n)` -/
def P10608277855588284429.Spec : Prop :=
  ∀ n, (P10608277855588284429.a n : ℤ) = A027694 n

theorem P10608277855588284429.correct : P10608277855588284429.Spec := by
  intro n
  induction n with
  | zero => simp [A027694, A027694.P10608277855588284429.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027694, Nat.add_sub_cancel, A027694.P10608277855588284429.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027694

/-! ## A027694.P2340814802962103911

`ceil(2*n+a(n-1))` with `a(0)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A027694.P2340814802962103911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  2 * n + a (n - 1)

end

end A027694.P2340814802962103911

namespace A027694

/-- `ceil(2*n+a(n-1))` -/
def P2340814802962103911.Spec : Prop :=
  ∀ n, (P2340814802962103911.a n : ℤ) = A027694 n

theorem P2340814802962103911.correct : P2340814802962103911.Spec := by
  intro n
  induction n with
  | zero => simp [A027694, A027694.P2340814802962103911.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027694, Nat.add_sub_cancel, A027694.P2340814802962103911.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027694

/-! ## A027694.P4302458565224287877

`round(2*n+a(n-1))` with `a(0)=9`

`round` is left out, it is the identity on integers.
-/

namespace A027694.P4302458565224287877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  2 * n + a (n - 1)

end

end A027694.P4302458565224287877

namespace A027694

/-- `round(2*n+a(n-1))` -/
def P4302458565224287877.Spec : Prop :=
  ∀ n, (P4302458565224287877.a n : ℤ) = A027694 n

theorem P4302458565224287877.correct : P4302458565224287877.Spec := by
  intro n
  induction n with
  | zero => simp [A027694, A027694.P4302458565224287877.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027694, Nat.add_sub_cancel, A027694.P4302458565224287877.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027694

/-! ## A027694.P4628461719395463259

`abs(a(n-1)+n+n)` with `a(0)=9`
-/

namespace A027694.P4628461719395463259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + n + n

end

end A027694.P4628461719395463259

namespace A027694

/-- `abs(a(n-1)+n+n)` -/
def P4628461719395463259.Spec : Prop :=
  ∀ n, (P4628461719395463259.a n : ℤ) = A027694 n

theorem P4628461719395463259.correct : P4628461719395463259.Spec := by
  intro n
  induction n with
  | zero => simp [A027694, A027694.P4628461719395463259.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027694, Nat.add_sub_cancel, A027694.P4628461719395463259.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027694

/-! ## A027694.P4228685940022907830

`floor(a(n-1)+n+n)` with `a(0)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A027694.P4228685940022907830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + n + n

end

end A027694.P4228685940022907830

namespace A027694

/-- `floor(a(n-1)+n+n)` -/
def P4228685940022907830.Spec : Prop :=
  ∀ n, (P4228685940022907830.a n : ℤ) = A027694 n

theorem P4228685940022907830.correct : P4228685940022907830.Spec := by
  intro n
  induction n with
  | zero => simp [A027694, A027694.P4228685940022907830.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027694, Nat.add_sub_cancel, A027694.P4228685940022907830.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027694

/-! ## A027694.P17664131110640434378

`ceil(a(n-1)+n+n)` with `a(0)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A027694.P17664131110640434378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + n + n

end

end A027694.P17664131110640434378

namespace A027694

/-- `ceil(a(n-1)+n+n)` -/
def P17664131110640434378.Spec : Prop :=
  ∀ n, (P17664131110640434378.a n : ℤ) = A027694 n

theorem P17664131110640434378.correct : P17664131110640434378.Spec := by
  intro n
  induction n with
  | zero => simp [A027694, A027694.P17664131110640434378.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027694, Nat.add_sub_cancel, A027694.P17664131110640434378.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027694

/-! ## A027694.P10112928664773841319

`round(a(n-1)+n+n)` with `a(0)=9`

`round` is left out, it is the identity on integers.
-/

namespace A027694.P10112928664773841319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + n + n

end

end A027694.P10112928664773841319

namespace A027694

/-- `round(a(n-1)+n+n)` -/
def P10112928664773841319.Spec : Prop :=
  ∀ n, (P10112928664773841319.a n : ℤ) = A027694 n

theorem P10112928664773841319.correct : P10112928664773841319.Spec := by
  intro n
  induction n with
  | zero => simp [A027694, A027694.P10112928664773841319.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027694, Nat.add_sub_cancel, A027694.P10112928664773841319.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027694

/-! ## A027694.P10293779759053723972

`2*(a(n-1)/2+n)` with `a(0)=9`
-/

namespace A027694.P10293779759053723972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [9] fun n a =>
  2 * (a (n - 1) / 2 + (n : ℚ))

end

end A027694.P10293779759053723972

namespace A027694

/-- `2*(a(n-1)/2+n)` -/
def P10293779759053723972.Spec : Prop :=
  ∀ n, P10293779759053723972.a n = (A027694 n : ℚ)

theorem P10293779759053723972.correct : P10293779759053723972.Spec := by
  intro n
  induction n with
  | zero => simp [A027694, A027694.P10293779759053723972.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027694, Nat.add_sub_cancel, A027694.P10293779759053723972.a, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027694

/-! ## A027694.P7956558911480652019

`∑[gcd(2*n, (3-n)²*C(n, n²))]`
-/

namespace A027694.P7956558911480652019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) ((3 - (n : ℤ)) ^ 2 * (Nat.choose n (n ^ 2) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027694.P7956558911480652019

namespace A027694

/-- `∑[gcd(2*n, (3-n)²*C(n, n²))]` -/
def P7956558911480652019.Spec : Prop :=
  ∀ n, (P7956558911480652019.a n : ℤ) = A027694 n

end A027694

/-! ## A027694.P682839870417125113

`3*(∑[ogf(2x/(1-2x+x^2))]/3+3)`
-/

namespace A027694.P682839870417125113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2, 1] n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3 + 3)

end

end A027694.P682839870417125113

namespace A027694

/-- `3*(∑[ogf(2x/(1-2x+x^2))]/3+3)` -/
def P682839870417125113.Spec : Prop :=
  ∀ n, P682839870417125113.a n = (A027694 n : ℚ)

end A027694

/-! ## A027694.P2516213368865105473

`abs(C(2*n+1, 2)-(n+3)*(n-3))`
-/

namespace A027694.P2516213368865105473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (2 * n + 1) 2 : ℤ) - (n + 3 : ℤ) * ((n : ℤ) - 3)|

end

end A027694.P2516213368865105473

namespace A027694

/-- `abs(C(2*n+1, 2)-(n+3)*(n-3))` -/
def P2516213368865105473.Spec : Prop :=
  ∀ n, P2516213368865105473.a n = A027694 n

end A027694

/-! ## A027694.P13609616723963217485

`abs((n+3)*(n-3)-lcm(n, 2*n+1))`
-/

namespace A027694.P13609616723963217485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 3 : ℤ) * ((n : ℤ) - 3) - (Nat.lcm n (2 * n + 1) : ℤ)|

end

end A027694.P13609616723963217485

namespace A027694

/-- `abs((n+3)*(n-3)-lcm(n, 2*n+1))` -/
def P13609616723963217485.Spec : Prop :=
  ∀ n, P13609616723963217485.a n = A027694 n

end A027694

/-! ## A027694.P3323414745875391624

`(A259555(n+1)+1)/2`
-/

namespace A027694.P3323414745875391624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259555 (n + 1) + 1 : ℚ) / 2

end

end A027694.P3323414745875391624

namespace A027694

/-- `(A259555(n+1)+1)/2` -/
def P3323414745875391624.Spec : Prop :=
  ∀ n, P3323414745875391624.a n = (A027694 n : ℚ)

theorem P3323414745875391624.correct : P3323414745875391624.Spec := by
  intro n
  simp only [A027694, Nat.add_sub_cancel, A027694.P3323414745875391624.a, A027694.P2269874103153134715.a, A259555, A259555.P7816943564928333054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027694

/-! ## A027694.P14140790426180523661

`A020742(∑[n]+1)`
-/

namespace A027694.P14140790426180523661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027694.P14140790426180523661

namespace A027694

/-- `A020742(∑[n]+1)` -/
def P14140790426180523661.Spec : Prop :=
  ∀ n, P14140790426180523661.a n = A027694 n

end A027694

/-!
# A027695: Number of primitive polynomials of degree n over GF(4).

The programs for A027695, the canonical program `A027695.P1855430691776300506` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027695 has offset 0).

The definition of A027695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027695.P1855430691776300506

`A011260(A028310(n))*A053285(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A027695

/-- `A011260(A028310(n))*A053285(n)` -/
def P1855430691776300506.Spec : Prop :=
  ∀ n, P1855430691776300506.a n = A027695 n

theorem P1855430691776300506.correct : P1855430691776300506.Spec := by
  intro n
  simp only [A027695]

end A027695

/-! ## A027695.P11126141577651607155

`A011260(A004277(n))*A036453(n+1)`
-/

namespace A027695.P11126141577651607155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A004277 n).toNat * A036453 (n + 1)

end

end A027695.P11126141577651607155

namespace A027695

/-- `A011260(A004277(n))*A036453(n+1)` -/
def P11126141577651607155.Spec : Prop :=
  ∀ n, P11126141577651607155.a n = A027695 n

end A027695

/-! ## A027695.P5387479857733926409

`A011260(A233583(n+1))*A053285(n)`
-/

namespace A027695.P5387479857733926409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A233583 (n + 1)).toNat * A053285 n

end

end A027695.P5387479857733926409

namespace A027695

/-- `A011260(A233583(n+1))*A053285(n)` -/
def P5387479857733926409.Spec : Prop :=
  ∀ n, P5387479857733926409.a n = A027695 n

end A027695

/-! ## A027695.P4622242860765513728

`(2-A000007(n))*A011260(A004277(n))`
-/

namespace A027695.P4622242860765513728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A011260 (A004277 n).toNat

end

end A027695.P4622242860765513728

namespace A027695

/-- `(2-A000007(n))*A011260(A004277(n))` -/
def P4622242860765513728.Spec : Prop :=
  ∀ n, P4622242860765513728.a n = A027695 n

end A027695

/-! ## A027695.P3015249714637463869

`A020639(A008258(n))*A027742(A028310(n))`
-/

namespace A027695.P3015249714637463869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008258 n).toNat * A027742 (A028310 n).toNat

end

end A027695.P3015249714637463869

namespace A027695

/-- `A020639(A008258(n))*A027742(A028310(n))` -/
def P3015249714637463869.Spec : Prop :=
  ∀ n, P3015249714637463869.a n = A027695 n

end A027695

/-! ## A027695.P11795527112834806804

`A020639(A315854(n))*A011260(A004277(n))`
-/

namespace A027695.P11795527112834806804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A315854 n).toNat * A011260 (A004277 n).toNat

end

end A027695.P11795527112834806804

namespace A027695

/-- `A020639(A315854(n))*A011260(A004277(n))` -/
def P11795527112834806804.Spec : Prop :=
  ∀ n, P11795527112834806804.a n = A027695 n

end A027695

/-! ## A027695.P15645519060935229335

`A061142(A006530(n+1))*A027742(A028310(n))`
-/

namespace A027695.P15645519060935229335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A006530 (n + 1)).toNat * A027742 (A028310 n).toNat

end

end A027695.P15645519060935229335

namespace A027695

/-- `A061142(A006530(n+1))*A027742(A028310(n))` -/
def P15645519060935229335.Spec : Prop :=
  ∀ n, P15645519060935229335.a n = A027695 n

end A027695

/-! ## A027695.P13446213864532251234

`A020639(A072473(n+1))*A027742(A028310(n))`
-/

namespace A027695.P13446213864532251234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A072473 (n + 1)).toNat * A027742 (A028310 n).toNat

end

end A027695.P13446213864532251234

namespace A027695

/-- `A020639(A072473(n+1))*A027742(A028310(n))` -/
def P13446213864532251234.Spec : Prop :=
  ∀ n, P13446213864532251234.a n = A027695 n

end A027695

/-! ## A027695.P4843915246612117278

`A196441(A020639(n+1))*A027742(A028310(n))`
-/

namespace A027695.P4843915246612117278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196441 (A020639 (n + 1)).toNat * A027742 (A028310 n).toNat

end

end A027695.P4843915246612117278

namespace A027695

/-- `A196441(A020639(n+1))*A027742(A028310(n))` -/
def P4843915246612117278.Spec : Prop :=
  ∀ n, P4843915246612117278.a n = A027695 n

end A027695

/-! ## A027695.P9316358983617082878

`A053287(A004277(n))/A028310(n)`
-/

namespace A027695.P9316358983617082878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (A004277 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A027695.P9316358983617082878

namespace A027695

/-- `A053287(A004277(n))/A028310(n)` -/
def P9316358983617082878.Spec : Prop :=
  ∀ n, P9316358983617082878.a n = (A027695 n : ℚ)

end A027695

/-! ## A027695.P9801643507329444478

`A053287(A028310(2*n))/A028310(n)`
-/

namespace A027695.P9801643507329444478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (A028310 (2 * n)).toNat : ℚ) / (A028310 n : ℚ)

end

end A027695.P9801643507329444478

namespace A027695

/-- `A053287(A028310(2*n))/A028310(n)` -/
def P9801643507329444478.Spec : Prop :=
  ∀ n, P9801643507329444478.a n = (A027695 n : ℚ)

end A027695

/-! ## A027695.P17639415535991914505

`A053287(A028310(n)+n)/A028310(n)`
-/

namespace A027695.P17639415535991914505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (A028310 n + (n : ℤ)).toNat : ℚ) / (A028310 n : ℚ)

end

end A027695.P17639415535991914505

namespace A027695

/-- `A053287(A028310(n)+n)/A028310(n)` -/
def P17639415535991914505.Spec : Prop :=
  ∀ n, P17639415535991914505.a n = (A027695 n : ℚ)

end A027695

/-! ## A027695.P10417764213045759650

`A053287(A008486(n)-n)/A028310(n)`
-/

namespace A027695.P10417764213045759650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (A008486 n - (n : ℤ)).toNat : ℚ) / (A028310 n : ℚ)

end

end A027695.P10417764213045759650

namespace A027695

/-- `A053287(A008486(n)-n)/A028310(n)` -/
def P10417764213045759650.Spec : Prop :=
  ∀ n, P10417764213045759650.a n = (A027695 n : ℚ)

end A027695

/-!
# A027697: Odious primes: primes with odd number of 1's in binary expansion.

The programs for A027697, the canonical program `A027697.P9273385272130382931` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027697 has offset 1).

The definition of A027697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027697.P8971640768606976312

`∪[A027705(n+1), A027707(n)]`
-/

namespace A027697.P8971640768606976312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027707 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027697.P8971640768606976312

namespace A027697

/-- `∪[A027705(n+1), A027707(n)]` -/
def P8971640768606976312.Spec : Prop :=
  ∀ n, (P8971640768606976312.a n : ℤ) = A027697 (n + 1)

end A027697

/-! ## A027697.P9273385272130382931

`A000040(A027698(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A027697

/-- `A000040(A027698(n+1))` -/
def P9273385272130382931.Spec : Prop :=
  ∀ n, P9273385272130382931.a n = A027697 (n + 1)

theorem P9273385272130382931.correct : P9273385272130382931.Spec := by
  intro n
  simp only [A027697, Nat.add_sub_cancel]

end A027697

/-! ## A027697.P10872481226534937752

`record[p?[A268669(n+1)]]`
-/

namespace A027697.P10872481226534937752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027697.P10872481226534937752

namespace A027697

/-- `record[p?[A268669(n+1)]]` -/
def P10872481226534937752.Spec : Prop :=
  ∀ n, P10872481226534937752.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P2595572022468850885

`filter[A000040(n+1), A361018(#)]`
-/

namespace A027697.P2595572022468850885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P2595572022468850885

namespace A027697

/-- `filter[A000040(n+1), A361018(#)]` -/
def P2595572022468850885.Spec : Prop :=
  ∀ n, P2595572022468850885.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P417777792773365590

`filter[A045319(n+1), A361018(#)]`
-/

namespace A027697.P417777792773365590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P417777792773365590

namespace A027697

/-- `filter[A045319(n+1), A361018(#)]` -/
def P417777792773365590.Spec : Prop :=
  ∀ n, P417777792773365590.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P14598555986691159506

`filter[A045344(n+1), A361018(#)]`
-/

namespace A027697.P14598555986691159506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P14598555986691159506

namespace A027697

/-- `filter[A045344(n+1), A361018(#)]` -/
def P14598555986691159506.Spec : Prop :=
  ∀ n, P14598555986691159506.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P6418845835555724925

`filter[A053813(n+1), A361018(#)]`
-/

namespace A027697.P6418845835555724925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P6418845835555724925

namespace A027697

/-- `filter[A053813(n+1), A361018(#)]` -/
def P6418845835555724925.Spec : Prop :=
  ∀ n, P6418845835555724925.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P5036342917292887189

`filter[A066191(n+1), A361018(#)]`
-/

namespace A027697.P5036342917292887189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P5036342917292887189

namespace A027697

/-- `filter[A066191(n+1), A361018(#)]` -/
def P5036342917292887189.Spec : Prop :=
  ∀ n, P5036342917292887189.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P5315294048933723806

`filter[A116974(n+1), A361018(#)]`
-/

namespace A027697.P5315294048933723806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P5315294048933723806

namespace A027697

/-- `filter[A116974(n+1), A361018(#)]` -/
def P5315294048933723806.Spec : Prop :=
  ∀ n, P5315294048933723806.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P6437793154190149418

`filter[A175787(n+1), A361018(#)]`
-/

namespace A027697.P6437793154190149418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P6437793154190149418

namespace A027697

/-- `filter[A175787(n+1), A361018(#)]` -/
def P6437793154190149418.Spec : Prop :=
  ∀ n, P6437793154190149418.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P13235725133546340390

`filter[A251595(n+1), A361018(#)]`
-/

namespace A027697.P13235725133546340390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P13235725133546340390

namespace A027697

/-- `filter[A251595(n+1), A361018(#)]` -/
def P13235725133546340390.Spec : Prop :=
  ∀ n, P13235725133546340390.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P7486419727008513111

`filter[A301987(n+1), A361018(#)]`
-/

namespace A027697.P7486419727008513111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P7486419727008513111

namespace A027697

/-- `filter[A301987(n+1), A361018(#)]` -/
def P7486419727008513111.Spec : Prop :=
  ∀ n, P7486419727008513111.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P15063175898677323594

`filter[A033946(n+2), A361018(#)]`
-/

namespace A027697.P15063175898677323594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P15063175898677323594

namespace A027697

/-- `filter[A033946(n+2), A361018(#)]` -/
def P15063175898677323594.Spec : Prop :=
  ∀ n, P15063175898677323594.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P12703748575619032654

`filter[A046022(n+2), A361018(#)]`
-/

namespace A027697.P12703748575619032654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P12703748575619032654

namespace A027697

/-- `filter[A046022(n+2), A361018(#)]` -/
def P12703748575619032654.Spec : Prop :=
  ∀ n, P12703748575619032654.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P7492743943872204312

`filter[A062972(n+2), A361018(#)]`
-/

namespace A027697.P7492743943872204312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P7492743943872204312

namespace A027697

/-- `filter[A062972(n+2), A361018(#)]` -/
def P7492743943872204312.Spec : Prop :=
  ∀ n, P7492743943872204312.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P4002069933625074934

`filter[A066050(n+2), A361018(#)]`
-/

namespace A027697.P4002069933625074934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P4002069933625074934

namespace A027697

/-- `filter[A066050(n+2), A361018(#)]` -/
def P4002069933625074934.Spec : Prop :=
  ∀ n, P4002069933625074934.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P13928423136769209018

`filter[A067126(n+2), A361018(#)]`
-/

namespace A027697.P13928423136769209018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P13928423136769209018

namespace A027697

/-- `filter[A067126(n+2), A361018(#)]` -/
def P13928423136769209018.Spec : Prop :=
  ∀ n, P13928423136769209018.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P8680717291177011546

`filter[A067133(n+2), A361018(#)]`
-/

namespace A027697.P8680717291177011546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P8680717291177011546

namespace A027697

/-- `filter[A067133(n+2), A361018(#)]` -/
def P8680717291177011546.Spec : Prop :=
  ∀ n, P8680717291177011546.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P3664382480620879859

`filter[A174090(n+2), A361018(#)]`
-/

namespace A027697.P3664382480620879859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P3664382480620879859

namespace A027697

/-- `filter[A174090(n+2), A361018(#)]` -/
def P3664382480620879859.Spec : Prop :=
  ∀ n, P3664382480620879859.a n = A027697 (n + 1)

end A027697

/-! ## A027697.P8934702080030408207

`filter[A283599(n+2), A361018(#)]`
-/

namespace A027697.P8934702080030408207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A027697.P8934702080030408207

namespace A027697

/-- `filter[A283599(n+2), A361018(#)]` -/
def P8934702080030408207.Spec : Prop :=
  ∀ n, P8934702080030408207.a n = A027697 (n + 1)

end A027697

/-!
# A027698: Numbers k such that the k-th prime has an odd number of 1's in its binary expansion.

The programs for A027698, the canonical program `A027698.P6769785550994187236` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027698 has offset 1).

The definition of A027698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027698.P13018543332754373497

`comp[A027700(n+1)-1]+1`
-/

namespace A027698.P13018543332754373497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027700 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A027698.P13018543332754373497

namespace A027698

/-- `comp[A027700(n+1)-1]+1` -/
def P13018543332754373497.Spec : Prop :=
  ∀ n, (P13018543332754373497.a n : ℤ) = A027698 (n + 1)

end A027698

/-! ## A027698.P1127670432818979900

`∪[A027706(n+1), A027708(n)]`
-/

namespace A027698.P1127670432818979900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027708 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027698.P1127670432818979900

namespace A027698

/-- `∪[A027706(n+1), A027708(n)]` -/
def P1127670432818979900.Spec : Prop :=
  ∀ n, (P1127670432818979900.a n : ℤ) = A027698 (n + 1)

end A027698

/-! ## A027698.P6769785550994187236

`eq[1, A200246(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027698

/-- `eq[1, A200246(n+1)]+1` -/
def P6769785550994187236.Spec : Prop :=
  ∀ n, (P6769785550994187236.a n : ℤ) = A027698 (n + 1)

theorem P6769785550994187236.correct : P6769785550994187236.Spec := by
  intro n
  simp only [A027698, Nat.add_sub_cancel]

end A027698

/-! ## A027698.P15694041890483492043

`lt[A200244(n+1), 1]+1`
-/

namespace A027698.P15694041890483492043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200244 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A027698.P15694041890483492043

namespace A027698

/-- `lt[A200244(n+1), 1]+1` -/
def P15694041890483492043.Spec : Prop :=
  ∀ n, (P15694041890483492043.a n : ℤ) = A027698 (n + 1)

end A027698

/-! ## A027698.P17303435059594559645

`lt[gcd(2, A014499(n+1)), 2]+1`
-/

namespace A027698.P17303435059594559645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A014499 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A027698.P17303435059594559645

namespace A027698

/-- `lt[gcd(2, A014499(n+1)), 2]+1` -/
def P17303435059594559645.Spec : Prop :=
  ∀ n, (P17303435059594559645.a n : ℤ) = A027698 (n + 1)

end A027698

/-! ## A027698.P16174661667419152026

`lt[A140721(A014499(n+1)), 1]+1`
-/

namespace A027698.P16174661667419152026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140721 (A014499 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A027698.P16174661667419152026

namespace A027698

/-- `lt[A140721(A014499(n+1)), 1]+1` -/
def P16174661667419152026.Spec : Prop :=
  ∀ n, (P16174661667419152026.a n : ℤ) = A027698 (n + 1)

end A027698

/-! ## A027698.P9635570797952332304

`A000720(A027697(n+1))`
-/

namespace A027698.P9635570797952332304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A027697 (n + 1)).toNat

end

end A027698.P9635570797952332304

namespace A027698

/-- `A000720(A027697(n+1))` -/
def P9635570797952332304.Spec : Prop :=
  ∀ n, P9635570797952332304.a n = A027698 (n + 1)

end A027698

/-! ## A027698.P920558522453856949

`lt[1, A180938(A000040(n+1))]+1`
-/

namespace A027698.P920558522453856949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180938 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A027698.P920558522453856949

namespace A027698

/-- `lt[1, A180938(A000040(n+1))]+1` -/
def P920558522453856949.Spec : Prop :=
  ∀ n, (P920558522453856949.a n : ℤ) = A027698 (n + 1)

end A027698

/-! ## A027698.P9994742340314081358

`lt[1, A008578(n+1)*A010060(A008578(n+1))]`
-/

namespace A027698.P9994742340314081358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A010060 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A027698.P9994742340314081358

namespace A027698

/-- `lt[1, A008578(n+1)*A010060(A008578(n+1))]` -/
def P9994742340314081358.Spec : Prop :=
  ∀ n, (P9994742340314081358.a n : ℤ) = A027698 (n + 1)

end A027698

/-! ## A027698.P6717737080830206818

`A156061(p?[comp[xor(n, 2*n)]])`
-/

namespace A027698.P6717737080830206818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A027698.P6717737080830206818

namespace A027698

/-- `A156061(p?[comp[xor(n, 2*n)]])` -/
def P6717737080830206818.Spec : Prop :=
  ∀ n, P6717737080830206818.a n = A027698 (n + 1)

end A027698

/-! ## A027698.P4176277607946392798

`A056239(p?[n*and(1, A000120(n))])`
-/

namespace A027698.P4176277607946392798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A000120 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027698.P4176277607946392798

namespace A027698

/-- `A056239(p?[n*and(1, A000120(n))])` -/
def P4176277607946392798.Spec : Prop :=
  ∀ n, P4176277607946392798.a n = A027698 (n + 1)

end A027698

/-! ## A027698.P10905228954744582075

`lt[1, A268727(p?[A207790(n+1)])]+1`
-/

namespace A027698.P10905228954744582075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268727 (f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A027698.P10905228954744582075

namespace A027698

/-- `lt[1, A268727(p?[A207790(n+1)])]+1` -/
def P10905228954744582075.Spec : Prop :=
  ∀ n, (P10905228954744582075.a n : ℤ) = A027698 (n + 1)

end A027698

/-! ## A027698.P6655867148345715684

`lt[A292118(p?[A089026(n+1)]), 2]+1`
-/

namespace A027698.P6655867148345715684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292118 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A027698.P6655867148345715684

namespace A027698

/-- `lt[A292118(p?[A089026(n+1)]), 2]+1` -/
def P6655867148345715684.Spec : Prop :=
  ∀ n, (P6655867148345715684.a n : ℤ) = A027698 (n + 1)

end A027698

/-! ## A027698.P15082676672622673411

`lt[1, A268727(A006093(n+1)+1)]+1`
-/

namespace A027698.P15082676672622673411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268727 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A027698.P15082676672622673411

namespace A027698

/-- `lt[1, A268727(A006093(n+1)+1)]+1` -/
def P15082676672622673411.Spec : Prop :=
  ∀ n, (P15082676672622673411.a n : ℤ) = A027698 (n + 1)

end A027698

/-! ## A027698.P12744876312408422997

`A049084(A027697(2*(n+1)-(n+1)))`
-/

namespace A027698.P12744876312408422997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A027697 (2 * (n + 1) - (n + 1))).toNat

end

end A027698.P12744876312408422997

namespace A027698

/-- `A049084(A027697(2*(n+1)-(n+1)))` -/
def P12744876312408422997.Spec : Prop :=
  ∀ n, P12744876312408422997.a n = A027698 (n + 1)

end A027698

/-! ## A027698.P1501101273563425728

`A000720(p?[A213714(2*n+1)])`
-/

namespace A027698.P1501101273563425728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A027698.P1501101273563425728

namespace A027698

/-- `A000720(p?[A213714(2*n+1)])` -/
def P1501101273563425728.Spec : Prop :=
  ∀ n, P1501101273563425728.a n = A027698 (n + 1)

end A027698

/-!
# A027699: Evil primes: primes with even number of 1's in their binary expansion.

The programs for A027699, the canonical program `A027699.P13565929154440483330` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027699 has offset 1).

The definition of A027699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027699.P10027123401429658368

`p?[A385126(n+1)]`
-/

namespace A027699.P10027123401429658368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A027699.P10027123401429658368

namespace A027699

/-- `p?[A385126(n+1)]` -/
def P10027123401429658368.Spec : Prop :=
  ∀ n, P10027123401429658368.a n = A027699 (n + 1)

end A027699

/-! ## A027699.P13565929154440483330

`p?[A093688(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A027699

/-- `p?[A093688(n+1)]` -/
def P13565929154440483330.Spec : Prop :=
  ∀ n, P13565929154440483330.a n = A027699 (n + 1)

theorem P13565929154440483330.correct : P13565929154440483330.Spec := by
  intro n
  simp only [A027699, Nat.add_sub_cancel]

end A027699

/-! ## A027699.P11413161569217470426

`p?[A384427(n+1)]`
-/

namespace A027699.P11413161569217470426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A027699.P11413161569217470426

namespace A027699

/-- `p?[A384427(n+1)]` -/
def P11413161569217470426.Spec : Prop :=
  ∀ n, P11413161569217470426.a n = A027699 (n + 1)

end A027699

/-! ## A027699.P4483560781964842845

`A000040(A027700(n+1))`
-/

namespace A027699.P4483560781964842845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A027700 (n + 1)).toNat

end

end A027699.P4483560781964842845

namespace A027699

/-- `A000040(A027700(n+1))` -/
def P4483560781964842845.Spec : Prop :=
  ∀ n, P4483560781964842845.a n = A027699 (n + 1)

end A027699

/-! ## A027699.P7864066114850019869

`∩[A000040(n+1), A093688(n+1)]`
-/

namespace A027699.P7864066114850019869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027699.P7864066114850019869

namespace A027699

/-- `∩[A000040(n+1), A093688(n+1)]` -/
def P7864066114850019869.Spec : Prop :=
  ∀ n, (P7864066114850019869.a n : ℤ) = A027699 (n + 1)

end A027699

/-! ## A027699.P12056964691291370689

`∩[A093515(n+1), A093688(n+1)]`
-/

namespace A027699.P12056964691291370689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027699.P12056964691291370689

namespace A027699

/-- `∩[A093515(n+1), A093688(n+1)]` -/
def P12056964691291370689.Spec : Prop :=
  ∀ n, (P12056964691291370689.a n : ℤ) = A027699 (n + 1)

end A027699

/-! ## A027699.P15360763701110944741

`A008578(A027700(n+1)+1)`
-/

namespace A027699.P15360763701110944741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A027700 (n + 1) + 1).toNat

end

end A027699.P15360763701110944741

namespace A027699

/-- `A008578(A027700(n+1)+1)` -/
def P15360763701110944741.Spec : Prop :=
  ∀ n, P15360763701110944741.a n = A027699 (n + 1)

end A027699

/-! ## A027699.P18230840168511385982

`∩[A051948(n+1), A093688(n+1)]`
-/

namespace A027699.P18230840168511385982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027699.P18230840168511385982

namespace A027699

/-- `∩[A051948(n+1), A093688(n+1)]` -/
def P18230840168511385982.Spec : Prop :=
  ∀ n, (P18230840168511385982.a n : ℤ) = A027699 (n + 1)

end A027699

/-! ## A027699.P2292199244636381929

`∩[A053577(n+1), A093688(n+1)]`
-/

namespace A027699.P2292199244636381929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027699.P2292199244636381929

namespace A027699

/-- `∩[A053577(n+1), A093688(n+1)]` -/
def P2292199244636381929.Spec : Prop :=
  ∀ n, (P2292199244636381929.a n : ℤ) = A027699 (n + 1)

end A027699

/-! ## A027699.P7941191379630746282

`∩[A385126(n+1), A260442(n)]`
-/

namespace A027699.P7941191379630746282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027699.P7941191379630746282

namespace A027699

/-- `∩[A385126(n+1), A260442(n)]` -/
def P7941191379630746282.Spec : Prop :=
  ∀ n, (P7941191379630746282.a n : ℤ) = A027699 (n + 1)

end A027699

/-! ## A027699.P12827493009165095988

`record[A006530(A093688(n+2))]`
-/

namespace A027699.P12827493009165095988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A093688 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027699.P12827493009165095988

namespace A027699

/-- `record[A006530(A093688(n+2))]` -/
def P12827493009165095988.Spec : Prop :=
  ∀ n, P12827493009165095988.a n = A027699 (n + 1)

end A027699

/-! ## A027699.P209863641591914272

`filter[A093688(n+1), A010051(#)]`
-/

namespace A027699.P209863641591914272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A027699.P209863641591914272

namespace A027699

/-- `filter[A093688(n+1), A010051(#)]` -/
def P209863641591914272.Spec : Prop :=
  ∀ n, P209863641591914272.a n = A027699 (n + 1)

end A027699

/-! ## A027699.P5214939956949153570

`filter[A385126(n+1), A008966(#)]`
-/

namespace A027699.P5214939956949153570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A027699.P5214939956949153570

namespace A027699

/-- `filter[A385126(n+1), A008966(#)]` -/
def P5214939956949153570.Spec : Prop :=
  ∀ n, P5214939956949153570.a n = A027699 (n + 1)

end A027699

/-! ## A027699.P4771124092805522889

`filter[A384427(n+1), A010051(#)]`
-/

namespace A027699.P4771124092805522889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A027699.P4771124092805522889

namespace A027699

/-- `filter[A384427(n+1), A010051(#)]` -/
def P4771124092805522889.Spec : Prop :=
  ∀ n, P4771124092805522889.a n = A027699 (n + 1)

end A027699

/-! ## A027699.P8499719921525207745

`filter[A385126(n+1), A010051(#)]`
-/

namespace A027699.P8499719921525207745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A027699.P8499719921525207745

namespace A027699

/-- `filter[A385126(n+1), A010051(#)]` -/
def P8499719921525207745.Spec : Prop :=
  ∀ n, P8499719921525207745.a n = A027699 (n + 1)

end A027699

/-! ## A027699.P12358181110392245334

`filter[A093688(n+1), A379969(#)]`
-/

namespace A027699.P12358181110392245334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A027699.P12358181110392245334

namespace A027699

/-- `filter[A093688(n+1), A379969(#)]` -/
def P12358181110392245334.Spec : Prop :=
  ∀ n, P12358181110392245334.a n = A027699 (n + 1)

end A027699

/-! ## A027699.P482515845448982436

`filter[A384427(n+1), A358751(#)]`
-/

namespace A027699.P482515845448982436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A027699.P482515845448982436

namespace A027699

/-- `filter[A384427(n+1), A358751(#)]` -/
def P482515845448982436.Spec : Prop :=
  ∀ n, P482515845448982436.a n = A027699 (n + 1)

end A027699

/-! ## A027699.P4950508205377606758

`filter[A384427(n+1), A358771(#)]`
-/

namespace A027699.P4950508205377606758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A027699.P4950508205377606758

namespace A027699

/-- `filter[A384427(n+1), A358771(#)]` -/
def P4950508205377606758.Spec : Prop :=
  ∀ n, P4950508205377606758.a n = A027699 (n + 1)

end A027699

/-! ## A027699.P3354478684272698013

`filter[A093688(n+2), A365716(#)]`
-/

namespace A027699.P3354478684272698013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A027699.P3354478684272698013

namespace A027699

/-- `filter[A093688(n+2), A365716(#)]` -/
def P3354478684272698013.Spec : Prop :=
  ∀ n, P3354478684272698013.a n = A027699 (n + 1)

end A027699

/-! ## A027699.P16376843988821246506

`∩[A005117(n+1), A385126(n+1)]`
-/

namespace A027699.P16376843988821246506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027699.P16376843988821246506

namespace A027699

/-- `∩[A005117(n+1), A385126(n+1)]` -/
def P16376843988821246506.Spec : Prop :=
  ∀ n, (P16376843988821246506.a n : ℤ) = A027699 (n + 1)

end A027699

