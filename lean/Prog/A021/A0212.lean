import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C029
import Seq.B001.C000
import Seq.Opaque.C001
import Seq.Opaque.C012
import Seq.Opaque.C020

/-!
# A021202: Expansion of 1/((1-x)(1-2x)(1-6x)(1-10x)).

The programs for A021202, the canonical program `A021202.P12794142064880947507` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021202 has offset 0).

The definition of A021202 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-19x+110x^2-212x^3+120x^4))` (program `A021202.P12794142064880947507`, by `A021202.P12794142064880947507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021202.P12794142064880947507

`ogf(1/(1-19x+110x^2-212x^3+120x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021202

/-- `ogf(1/(1-19x+110x^2-212x^3+120x^4))` -/
def P12794142064880947507.Spec : Prop :=
  ∀ n, P12794142064880947507.a n = A021202 n

theorem P12794142064880947507.correct : P12794142064880947507.Spec := by
  intro n
  simp only [A021202]

end A021202

/-! ## A021202.P152564552045686604

`∑[A016307(n)]`
-/

namespace A021202.P152564552045686604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021202.P152564552045686604

namespace A021202

/-- `∑[A016307(n)]` -/
def P152564552045686604.Spec : Prop :=
  ∀ n, P152564552045686604.a n = A021202 n

end A021202

/-! ## A021202.P17209065486188424918

`∑[2^n*A016209(n)]`
-/

namespace A021202.P17209065486188424918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021202.P17209065486188424918

namespace A021202

/-- `∑[2^n*A016209(n)]` -/
def P17209065486188424918.Spec : Prop :=
  ∀ n, P17209065486188424918.a n = A021202 n

end A021202

/-! ## A021202.P12745986005952720168

`A016246(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021202.P12745986005952720168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016246 n + 2 * a (n - 1)

end

end A021202.P12745986005952720168

namespace A021202

/-- `A016246(n)+2*a(n-1)` -/
def P12745986005952720168.Spec : Prop :=
  ∀ n, P12745986005952720168.a n = A021202 n

end A021202

/-! ## A021202.P15800289767895982838

`A016205(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A021202.P15800289767895982838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016205 n + 6 * a (n - 1)

end

end A021202.P15800289767895982838

namespace A021202

/-- `A016205(n)+6*a(n-1)` -/
def P15800289767895982838.Spec : Prop :=
  ∀ n, P15800289767895982838.a n = A021202 n

end A021202

/-! ## A021202.P14443473737537970809

`∑[2^n*∑[A005059(n+1)]]`
-/

namespace A021202.P14443473737537970809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021202.P14443473737537970809

namespace A021202

/-- `∑[2^n*∑[A005059(n+1)]]` -/
def P14443473737537970809.Spec : Prop :=
  ∀ n, P14443473737537970809.a n = A021202 n

end A021202

/-! ## A021202.P1180340504015226889

`a(n-1)+A016200(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A021202.P1180340504015226889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016200 n + 9 * a (n - 1))

end

end A021202.P1180340504015226889

namespace A021202

/-- `a(n-1)+A016200(n)+9*a(n-1)` -/
def P1180340504015226889.Spec : Prop :=
  ∀ n, P1180340504015226889.a n = A021202 n

end A021202

/-! ## A021202.P3895368804155627451

`(A021268(n)+A021184(n))/2`
-/

namespace A021202.P3895368804155627451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021268 n + A021184 n : ℚ) / 2

end

end A021202.P3895368804155627451

namespace A021202

/-- `(A021268(n)+A021184(n))/2` -/
def P3895368804155627451.Spec : Prop :=
  ∀ n, P3895368804155627451.a n = (A021202 n : ℚ)

end A021202

/-! ## A021202.P11066500241357609752

`∑[∑[A005059(n+1)]*A011782(n+1)]`
-/

namespace A021202.P11066500241357609752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021202.P11066500241357609752

namespace A021202

/-- `∑[∑[A005059(n+1)]*A011782(n+1)]` -/
def P11066500241357609752.Spec : Prop :=
  ∀ n, P11066500241357609752.a n = A021202 n

end A021202

/-!
# A021203: Decimal expansion of 1/199.

The programs for A021203, there is no canonical definition to state claims against.
-/

/-! ## A021203.P10534406958009843116

`A021999(n+3)`
-/

namespace A021203.P10534406958009843116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021999 (n + 3)

end

end A021203.P10534406958009843116

/-!
# A021204: Expansion of 1/((1-x)(1-2x)(1-6x)(1-11x)).

The programs for A021204, the canonical program `A021204.P9941965411782220331` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021204 has offset 0).

The definition of A021204 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-20x+119x^2-232x^3+132x^4))` (program `A021204.P9941965411782220331`, by `A021204.P9941965411782220331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021204.P9941965411782220331

`ogf(1/(1-20x+119x^2-232x^3+132x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021204

/-- `ogf(1/(1-20x+119x^2-232x^3+132x^4))` -/
def P9941965411782220331.Spec : Prop :=
  ∀ n, P9941965411782220331.a n = A021204 n

theorem P9941965411782220331.correct : P9941965411782220331.Spec := by
  intro n
  simp only [A021204]

end A021204

/-! ## A021204.P17498099115027273037

`(2*11^(n+3)-9*6^(n+3)+25*2^(n+3)-18)/900`
-/

namespace A021204.P17498099115027273037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 11 ^ (n + 3) : ℤ) - (9 * 6 ^ (n + 3) : ℤ) + (25 * 2 ^ (n + 3) : ℤ) - 18 : ℚ) / 900

end

end A021204.P17498099115027273037

namespace A021204

/-- `(2*11^(n+3)-9*6^(n+3)+25*2^(n+3)-18)/900` -/
def P17498099115027273037.Spec : Prop :=
  ∀ n, P17498099115027273037.a n = (A021204 n : ℚ)

end A021204

/-! ## A021204.P13068072550573538800

`∑[A016308(n)]`
-/

namespace A021204.P13068072550573538800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021204.P13068072550573538800

namespace A021204

/-- `∑[A016308(n)]` -/
def P13068072550573538800.Spec : Prop :=
  ∀ n, P13068072550573538800.a n = A021204 n

end A021204

/-! ## A021204.P4594944673600198534

`A016247(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021204.P4594944673600198534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016247 n + 2 * a (n - 1)

end

end A021204.P4594944673600198534

namespace A021204

/-- `A016247(n)+2*a(n-1)` -/
def P4594944673600198534.Spec : Prop :=
  ∀ n, P4594944673600198534.a n = A021204 n

end A021204

/-! ## A021204.P15210388768446150759

`2*A016308(n)-A016247(n)`
-/

namespace A021204.P15210388768446150759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016308 n - A016247 n

end

end A021204.P15210388768446150759

namespace A021204

/-- `2*A016308(n)-A016247(n)` -/
def P15210388768446150759.Spec : Prop :=
  ∀ n, P15210388768446150759.a n = A021204 n

end A021204

/-! ## A021204.P17975417608460453345

`A021174(n)+A023952(n)-A021244(n)`
-/

namespace A021204.P17975417608460453345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021174 n + (A023952 n - A021244 n)

end

end A021204.P17975417608460453345

namespace A021204

/-- `A021174(n)+A023952(n)-A021244(n)` -/
def P17975417608460453345.Spec : Prop :=
  ∀ n, P17975417608460453345.a n = A021204 n

end A021204

/-! ## A021204.P13423264072918814559

`A016308(n+1)-A016247(n+1)`
-/

namespace A021204.P13423264072918814559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016308 (n + 1) - A016247 (n + 1)

end

end A021204.P13423264072918814559

namespace A021204

/-- `A016308(n+1)-A016247(n+1)` -/
def P13423264072918814559.Spec : Prop :=
  ∀ n, P13423264072918814559.a n = A021204 n

end A021204

/-! ## A021204.P10097959291447052525

`2*A016308(n)-A166973(A167614(n+1))`
-/

namespace A021204.P10097959291447052525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016308 n - A166973 (A167614 (n + 1)).toNat

end

end A021204.P10097959291447052525

namespace A021204

/-- `2*A016308(n)-A166973(A167614(n+1))` -/
def P10097959291447052525.Spec : Prop :=
  ∀ n, P10097959291447052525.a n = A021204 n

end A021204

/-! ## A021204.P16203262441803296763

`A016308(n+1)-A166973(A167614(n+2))`
-/

namespace A021204.P16203262441803296763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016308 (n + 1) - A166973 (A167614 (n + 2)).toNat

end

end A021204.P16203262441803296763

namespace A021204

/-- `A016308(n+1)-A166973(A167614(n+2))` -/
def P16203262441803296763.Spec : Prop :=
  ∀ n, P16203262441803296763.a n = A021204 n

end A021204

/-!
# A021206: Decimal expansion of 1/202.

The programs for A021206, the canonical program `A021206.P8821313853681412204` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021206 has offset 0).

The definition of A021206 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021206.anchor (n : ℕ) : A021206 n = ((10 ^ (n + 1) / 202 % 10 : ℕ) : ℤ)` in `Proof.A021.A021206`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021206.P8821313853681412204

`a(n-4)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=9, a(4)=5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021206

/-- `a(n-4)` -/
def P8821313853681412204.Spec : Prop :=
  ∀ n, (P8821313853681412204.a n : ℤ) = A021206 n

theorem P8821313853681412204.correct : P8821313853681412204.Spec := by
  intro n
  simp only [A021206]

end A021206

/-!
# A021207: Decimal expansion of 1/203.

The programs for A021207, there is no canonical definition to state claims against.
-/

/-! ## A021207.P1176037374910225766

`A021816(3*((n+1)/3+7))`
-/

namespace A021207.P1176037374910225766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021816 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / 3 + 7))).toNat

end

end A021207.P1176037374910225766

/-!
# A021209: Decimal expansion of 1/205.

The programs for A021209, the canonical program `A021209.P8978965685577933964` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021209 has offset 0).

The definition of A021209 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021209.anchor (n : ℕ) : A021209 n = ((10 ^ (n + 1) / 205 % 10 : ℕ) : ℤ)` in `Proof.A021.A021209`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021209.P8978965685577933964

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=8, a(4)=7, a(5)=8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021209

/-- `a(n-5)` -/
def P8978965685577933964.Spec : Prop :=
  ∀ n, (P8978965685577933964.a n : ℤ) = A021209 n

theorem P8978965685577933964.correct : P8978965685577933964.Spec := by
  intro n
  simp only [A021209]

end A021209

/-!
# A021212: Decimal expansion of 1/208.

The programs for A021212, the canonical program `A021212.P13284253031566712027` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021212 has offset 0).

The definition of A021212 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021212.anchor (n : ℕ) : A021212 n = ((10 ^ (n + 1) / 208 % 10 : ℕ) : ℤ)` in `Proof.A021.A021212`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021212.P13284253031566712027

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=8, a(4)=0, a(5)=7, a(6)=6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021212

/-- `9-a(n-3)` -/
def P13284253031566712027.Spec : Prop :=
  ∀ n, P13284253031566712027.a n = A021212 n

theorem P13284253031566712027.correct : P13284253031566712027.Spec := by
  intro n
  simp only [A021212]

end A021212

/-!
# A021213: Decimal expansion of 1/209.

The programs for A021213, the canonical program `A021213.P6185107031889423764` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021213 has offset 0).

The definition of A021213 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021213.anchor (n : ℕ) : A021213 n = ((10 ^ (n + 1) / 209 % 10 : ℕ) : ℤ)` in `Proof.A021.A021213`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021213.P16634620167480416595

`ogf((4x^2+3x^3+x^4-4x^5+2x^6+2x^7+x^9)/(1-x+x^9-x^10))`
-/

namespace A021213.P16634620167480416595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 4, 3, 1, -4, 2, 2, 0, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] n

end

end A021213.P16634620167480416595

namespace A021213

/-- `ogf((4x^2+3x^3+x^4-4x^5+2x^6+2x^7+x^9)/(1-x+x^9-x^10))` -/
def P16634620167480416595.Spec : Prop :=
  ∀ n, P16634620167480416595.a n = A021213 n

end A021213

/-! ## A021213.P6185107031889423764

`a(n-1)-a(n-9)+a(n-10)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=7, a(4)=8, a(5)=4, a(6)=6, a(7)=8, a(8)=8, a(9)=9`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021213

/-- `a(n-1)-a(n-9)+a(n-10)` -/
def P6185107031889423764.Spec : Prop :=
  ∀ n, P6185107031889423764.a n = A021213 n

theorem P6185107031889423764.correct : P6185107031889423764.Spec := by
  intro n
  simp only [A021213]

end A021213

/-!
# A021214: Expansion of 1/((1-x)*(1-2x)*(1-6x)*(1-12x)).

The programs for A021214, the canonical program `A021214.P6466897203467107416` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021214 has offset 0).

The definition of A021214 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-21x+128x^2-252x^3+144x^4))` (program `A021214.P6466897203467107416`, by `A021214.P6466897203467107416.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021214.P6466897203467107416

`ogf(1/(1-21x+128x^2-252x^3+144x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021214

/-- `ogf(1/(1-21x+128x^2-252x^3+144x^4))` -/
def P6466897203467107416.Spec : Prop :=
  ∀ n, P6466897203467107416.a n = A021214 n

theorem P6466897203467107416.correct : P6466897203467107416.Spec := by
  intro n
  simp only [A021214]

end A021214

/-! ## A021214.P8113896404623015846

`∑[2^n*∑[3^n*∑[2^n]]]`
-/

namespace A021214.P8113896404623015846
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021214.P8113896404623015846

namespace A021214

/-- `∑[2^n*∑[3^n*∑[2^n]]]` -/
def P8113896404623015846.Spec : Prop :=
  ∀ n, (P8113896404623015846.a n : ℤ) = A021214 n

end A021214

/-! ## A021214.P12194133458564123939

`A016200(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A021214.P12194133458564123939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016200 n + 12 * a (n - 1)

end

end A021214.P12194133458564123939

namespace A021214

/-- `A016200(n)+12*a(n-1)` -/
def P12194133458564123939.Spec : Prop :=
  ∀ n, P12194133458564123939.a n = A021214 n

end A021214

/-! ## A021214.P11391725585234421103

`a(n-1)+A016248(n)+a(n-1)` with `a(0)=1`
-/

namespace A021214.P11391725585234421103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016248 n + a (n - 1))

end

end A021214.P11391725585234421103

namespace A021214

/-- `a(n-1)+A016248(n)+a(n-1)` -/
def P11391725585234421103.Spec : Prop :=
  ∀ n, P11391725585234421103.a n = A021214 n

end A021214

/-! ## A021214.P15787046560377731000

`(A021304(n)+A021194(n))/2`
-/

namespace A021214.P15787046560377731000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021304 n + A021194 n : ℚ) / 2

end

end A021214.P15787046560377731000

namespace A021214

/-- `(A021304(n)+A021194(n))/2` -/
def P15787046560377731000.Spec : Prop :=
  ∀ n, P15787046560377731000.a n = (A021214 n : ℚ)

end A021214

/-!
# A021220: Decimal expansion of 1/216.

The programs for A021220, the canonical program `A021220.P14186456312612816662` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021220 has offset 0).

The definition of A021220 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021220.anchor (n : ℕ) : A021220 n = ((10 ^ (n + 1) / 216 % 10 : ℕ) : ℤ)` in `Proof.A021.A021220`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021220.P12649225317384107288

`ogf((4x^2+6x^3+2x^4+5x^5)/(1-x^3))`
-/

namespace A021220.P12649225317384107288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 4, 6, 2, 5] [1, 0, 0, -1] n

end

end A021220.P12649225317384107288

namespace A021220

/-- `ogf((4x^2+6x^3+2x^4+5x^5)/(1-x^3))` -/
def P12649225317384107288.Spec : Prop :=
  ∀ n, P12649225317384107288.a n = A021220 n

end A021220

/-! ## A021220.P14186456312612816662

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=6, a(4)=2, a(5)=9`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021220

/-- `a(n-3)` -/
def P14186456312612816662.Spec : Prop :=
  ∀ n, (P14186456312612816662.a n : ℤ) = A021220 n

theorem P14186456312612816662.correct : P14186456312612816662.Spec := by
  intro n
  simp only [A021220]

end A021220

/-!
# A021222: Decimal expansion of 1/218.

The programs for A021222, there is no canonical definition to state claims against.
-/

/-! ## A021222.P5203679539054297125

`A021113(A000007(n)+15+n)`
-/

namespace A021222.P5203679539054297125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021113 (A000007 n + 15 + (n : ℤ)).toNat

end

end A021222.P5203679539054297125

/-!
# A021223: Decimal expansion of 1/219.

The programs for A021223, the canonical program `A021223.P10492951438531805924` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021223 has offset 0).

The definition of A021223 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021223.anchor (n : ℕ) : A021223 n = ((10 ^ (n + 1) / 219 % 10 : ℕ) : ℤ)` in `Proof.A021.A021223`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021223.P10492951438531805924

`6-a(n-4)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021223

/-- `6-a(n-4)` -/
def P10492951438531805924.Spec : Prop :=
  ∀ n, P10492951438531805924.a n = A021223 n

theorem P10492951438531805924.correct : P10492951438531805924.Spec := by
  intro n
  simp only [A021223]

end A021223

/-!
# A021224: Expansion of 1/((1-x)*(1-2*x)*(1-7*x)*(1-8*x)).

The programs for A021224, the canonical program `A021224.P759418163543006549` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021224 has offset 0).

The definition of A021224 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-18x+103x^2-198x^3+112x^4))` (program `A021224.P759418163543006549`, by `A021224.P759418163543006549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021224.P759418163543006549

`ogf(1/(1-18x+103x^2-198x^3+112x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021224

/-- `ogf(1/(1-18x+103x^2-198x^3+112x^4))` -/
def P759418163543006549.Spec : Prop :=
  ∀ n, P759418163543006549.a n = A021224 n

theorem P759418163543006549.correct : P759418163543006549.Spec := by
  intro n
  simp only [A021224]

end A021224

/-! ## A021224.P12365229876356953142

`(5*8^(n+3)-7^(n+4)+7*2^(n+3)-5)/210`
-/

namespace A021224.P12365229876356953142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 8 ^ (n + 3) : ℤ) - (7 ^ (n + 4) : ℤ) + (7 * 2 ^ (n + 3) : ℤ) - 5 : ℚ) / 210

end

end A021224.P12365229876356953142

namespace A021224

/-- `(5*8^(n+3)-7^(n+4)+7*2^(n+3)-5)/210` -/
def P12365229876356953142.Spec : Prop :=
  ∀ n, P12365229876356953142.a n = (A021224 n : ℚ)

end A021224

/-! ## A021224.P14189767688848841602

`∑[A016311(n)]`
-/

namespace A021224.P14189767688848841602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021224.P14189767688848841602

namespace A021224

/-- `∑[A016311(n)]` -/
def P14189767688848841602.Spec : Prop :=
  ∀ n, P14189767688848841602.a n = A021224 n

end A021224

/-! ## A021224.P5788212012862625851

`a(n-1)+A016249(n)+a(n-1)` with `a(0)=1`
-/

namespace A021224.P5788212012862625851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016249 n + a (n - 1))

end

end A021224.P5788212012862625851

namespace A021224

/-- `a(n-1)+A016249(n)+a(n-1)` -/
def P5788212012862625851.Spec : Prop :=
  ∀ n, P5788212012862625851.a n = A021224 n

end A021224

/-! ## A021224.P4294601761743584056

`2*A021184(n)-A021174(n)`
-/

namespace A021224.P4294601761743584056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021184 n - A021174 n

end

end A021224.P4294601761743584056

namespace A021224

/-- `2*A021184(n)-A021174(n)` -/
def P4294601761743584056.Spec : Prop :=
  ∀ n, P4294601761743584056.a n = A021224 n

end A021224

/-! ## A021224.P6071337060614874310

`∑[(A019928(n)+A016296(n))/2]`
-/

namespace A021224.P6071337060614874310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019928 n + A016296 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021224.P6071337060614874310

namespace A021224

/-- `∑[(A019928(n)+A016296(n))/2]` -/
def P6071337060614874310.Spec : Prop :=
  ∀ n, P6071337060614874310.a n = (A021224 n : ℚ)

end A021224

/-! ## A021224.P8303795938005391461

`A016203(n+1)-A016201(n+1)`
-/

namespace A021224.P8303795938005391461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016203 (n + 1) - A016201 (n + 1)

end

end A021224.P8303795938005391461

namespace A021224

/-- `A016203(n+1)-A016201(n+1)` -/
def P8303795938005391461.Spec : Prop :=
  ∀ n, P8303795938005391461.a n = A021224 n

end A021224

/-! ## A021224.P14076337185350295926

`∑[A016131(n+1)-A016130(n+1)]`
-/

namespace A021224.P14076337185350295926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016131 (n + 1) - A016130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021224.P14076337185350295926

namespace A021224

/-- `∑[A016131(n+1)-A016130(n+1)]` -/
def P14076337185350295926.Spec : Prop :=
  ∀ n, P14076337185350295926.a n = A021224 n

end A021224

/-! ## A021224.P14846221021740044282

`2*A021229(n)-A021264(n)`
-/

namespace A021224.P14846221021740044282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021229 n - A021264 n

end

end A021224.P14846221021740044282

namespace A021224

/-- `2*A021229(n)-A021264(n)` -/
def P14846221021740044282.Spec : Prop :=
  ∀ n, P14846221021740044282.a n = A021224 n

end A021224

/-!
# A021226: Decimal expansion of 1/222.

The programs for A021226, the canonical program `A021226.P4698695677424960277` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021226 has offset 0).

The definition of A021226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021226.P4698695677424960277

`floor(dr(n^3)/ϕ)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021226

/-- `floor(dr(n^3)/ϕ)` -/
def P4698695677424960277.Spec : Prop :=
  ∀ n, P4698695677424960277.a n = A021226 n

theorem P4698695677424960277.correct : P4698695677424960277.Spec := by
  intro n
  simp only [A021226]

end A021226

/-!
# A021229: Expansion of 1/((1-x)(1-2x)(1-7x)(1-9x)).

The programs for A021229, the canonical program `A021229.P11328576648863332156` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021229 has offset 0).

The definition of A021229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-19x+113x^2-221x^3+126x^4))` (program `A021229.P11328576648863332156`, by `A021229.P11328576648863332156.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021229.P11328576648863332156

`ogf(1/(1-19x+113x^2-221x^3+126x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021229

/-- `ogf(1/(1-19x+113x^2-221x^3+126x^4))` -/
def P11328576648863332156.Spec : Prop :=
  ∀ n, P11328576648863332156.a n = A021229 n

theorem P11328576648863332156.correct : P11328576648863332156.Spec := by
  intro n
  simp only [A021229]

end A021229

/-! ## A021229.P9183453658711614328

`∑[A016312(n)]`
-/

namespace A021229.P9183453658711614328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021229.P9183453658711614328

namespace A021229

/-- `∑[A016312(n)]` -/
def P9183453658711614328.Spec : Prop :=
  ∀ n, P9183453658711614328.a n = A021229 n

end A021229

/-! ## A021229.P10478918199703824646

`A016250(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021229.P10478918199703824646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016250 n + 2 * a (n - 1)

end

end A021229.P10478918199703824646

namespace A021229

/-- `A016250(n)+2*a(n-1)` -/
def P10478918199703824646.Spec : Prop :=
  ∀ n, P10478918199703824646.a n = A021229 n

end A021229

/-! ## A021229.P7415036046315623384

`∑[A016130(n)+9*a(n-1)]` with `a(0)=1`
-/

namespace A021229.P7415036046315623384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A016130 n + 9 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021229.P7415036046315623384

namespace A021229

/-- `∑[A016130(n)+9*a(n-1)]` -/
def P7415036046315623384.Spec : Prop :=
  ∀ n, P7415036046315623384.a n = A021229 n

end A021229

/-! ## A021229.P7016092639853688070

`A016201(n)+10*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A021229.P7016092639853688070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016201 n + 10 * a (n - 1) - a (n - 1)

end

end A021229.P7016092639853688070

namespace A021229

/-- `A016201(n)+10*a(n-1)-a(n-1)` -/
def P7016092639853688070.Spec : Prop :=
  ∀ n, P7016092639853688070.a n = A021229 n

end A021229

/-! ## A021229.P17107250439826820167

`2*A021134(n)-A021124(n)`
-/

namespace A021229.P17107250439826820167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021134 n - A021124 n

end

end A021229.P17107250439826820167

namespace A021229

/-- `2*A021134(n)-A021124(n)` -/
def P17107250439826820167.Spec : Prop :=
  ∀ n, P17107250439826820167.a n = A021229 n

end A021229

/-! ## A021229.P15011537045473944940

`(A021264(n)+A021224(n))/2`
-/

namespace A021229.P15011537045473944940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021264 n + A021224 n : ℚ) / 2

end

end A021229.P15011537045473944940

namespace A021229

/-- `(A021264(n)+A021224(n))/2` -/
def P15011537045473944940.Spec : Prop :=
  ∀ n, P15011537045473944940.a n = (A021229 n : ℚ)

end A021229

/-! ## A021229.P8688773169067935584

`∑[(A016316(n)+A016311(n))/2]`
-/

namespace A021229.P8688773169067935584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016316 n + A016311 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021229.P8688773169067935584

namespace A021229

/-- `∑[(A016316(n)+A016311(n))/2]` -/
def P8688773169067935584.Spec : Prop :=
  ∀ n, P8688773169067935584.a n = (A021229 n : ℚ)

end A021229

/-! ## A021229.P12432920532850460169

`2*A021244(n)-A021294(n)`
-/

namespace A021229.P12432920532850460169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021244 n - A021294 n

end

end A021229.P12432920532850460169

namespace A021229

/-- `2*A021244(n)-A021294(n)` -/
def P12432920532850460169.Spec : Prop :=
  ∀ n, P12432920532850460169.a n = A021229 n

end A021229

/-!
# A021234: Expansion of 1/((1-x)(1-2x)(1-7x)(1-10x)).

The programs for A021234, the canonical program `A021234.P15410938248954583349` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021234 has offset 0).

The definition of A021234 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-20x+123x^2-244x^3+140x^4))` (program `A021234.P15410938248954583349`, by `A021234.P15410938248954583349.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021234.P15410938248954583349

`ogf(1/(1-20x+123x^2-244x^3+140x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021234

/-- `ogf(1/(1-20x+123x^2-244x^3+140x^4))` -/
def P15410938248954583349.Spec : Prop :=
  ∀ n, P15410938248954583349.a n = A021234 n

theorem P15410938248954583349.correct : P15410938248954583349.Spec := by
  intro n
  simp only [A021234]

end A021234

/-! ## A021234.P14094936273991565514

`∑[A016313(n)]`
-/

namespace A021234.P14094936273991565514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021234.P14094936273991565514

namespace A021234

/-- `∑[A016313(n)]` -/
def P14094936273991565514.Spec : Prop :=
  ∀ n, P14094936273991565514.a n = A021234 n

end A021234

/-! ## A021234.P8262232302074990963

`A016252(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021234.P8262232302074990963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016252 n + 2 * a (n - 1)

end

end A021234.P8262232302074990963

namespace A021234

/-- `A016252(n)+2*a(n-1)` -/
def P8262232302074990963.Spec : Prop :=
  ∀ n, P8262232302074990963.a n = A021234 n

end A021234

/-! ## A021234.P7198204778135279654

`A016205(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A021234.P7198204778135279654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016205 n + 7 * a (n - 1)

end

end A021234.P7198204778135279654

namespace A021234

/-- `A016205(n)+7*a(n-1)` -/
def P7198204778135279654.Spec : Prop :=
  ∀ n, P7198204778135279654.a n = A021234 n

end A021234

/-! ## A021234.P8115967646526103008

`A016201(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A021234.P8115967646526103008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016201 n + 10 * a (n - 1)

end

end A021234.P8115967646526103008

namespace A021234

/-- `A016201(n)+10*a(n-1)` -/
def P8115967646526103008.Spec : Prop :=
  ∀ n, P8115967646526103008.a n = A021234 n

end A021234

/-! ## A021234.P7873373373200397300

`2*A021092(n)-A021079(n)`
-/

namespace A021234.P7873373373200397300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021092 n - A021079 n

end

end A021234.P7873373373200397300

namespace A021234

/-- `2*A021092(n)-A021079(n)` -/
def P7873373373200397300.Spec : Prop :=
  ∀ n, P7873373373200397300.a n = A021234 n

end A021234

/-! ## A021234.P2290616294701271014

`A021076(n)+A021829(n)-A021079(n)`
-/

namespace A021234.P2290616294701271014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021076 n + (A021829 n - A021079 n)

end

end A021234.P2290616294701271014

namespace A021234

/-- `A021076(n)+A021829(n)-A021079(n)` -/
def P2290616294701271014.Spec : Prop :=
  ∀ n, P2290616294701271014.a n = A021234 n

end A021234

/-! ## A021234.P515314872334534469

`A021804(n)+A021829(n)-A025965(n)`
-/

namespace A021234.P515314872334534469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021804 n + (A021829 n - A025965 n)

end

end A021234.P515314872334534469

namespace A021234

/-- `A021804(n)+A021829(n)-A025965(n)` -/
def P515314872334534469.Spec : Prop :=
  ∀ n, P515314872334534469.a n = A021234 n

end A021234

/-! ## A021234.P15659961429172093794

`A021202(n)+A026391(n)-A023951(n)`
-/

namespace A021234.P15659961429172093794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021202 n + (A026391 n - A023951 n)

end

end A021234.P15659961429172093794

namespace A021234

/-- `A021202(n)+A026391(n)-A023951(n)` -/
def P15659961429172093794.Spec : Prop :=
  ∀ n, P15659961429172093794.a n = A021234 n

end A021234

/-!
# A021235: Decimal expansion of 1/231.

The programs for A021235, the canonical program `A021235.P7070959272675345141` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021235 has offset 0).

The definition of A021235 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021235.anchor (n : ℕ) : A021235 n = ((10 ^ (n + 1) / 231 % 10 : ℕ) : ℤ)` in `Proof.A021.A021235`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021235.P7070959272675345141

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=3, a(4)=2, a(5)=9`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021235

/-- `a(n-6)` -/
def P7070959272675345141.Spec : Prop :=
  ∀ n, (P7070959272675345141.a n : ℤ) = A021235 n

theorem P7070959272675345141.correct : P7070959272675345141.Spec := by
  intro n
  simp only [A021235]

end A021235

/-!
# A021238: Decimal expansion of 1/234.

The programs for A021238, the canonical program `A021238.P15571844163201125529` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021238 has offset 0).

The definition of A021238 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021238.anchor (n : ℕ) : A021238 n = ((10 ^ (n + 1) / 234 % 10 : ℕ) : ℤ)` in `Proof.A021.A021238`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021238.P15571844163201125529

`7-a(n-3)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021238

/-- `7-a(n-3)` -/
def P15571844163201125529.Spec : Prop :=
  ∀ n, P15571844163201125529.a n = A021238 n

theorem P15571844163201125529.correct : P15571844163201125529.Spec := by
  intro n
  simp only [A021238]

end A021238

/-!
# A021243: Decimal expansion of 1/239.

The programs for A021243, the canonical program `A021243.P5332679809730404171` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021243 has offset 0).

The definition of A021243 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021243.anchor (n : ℕ) : A021243 n = ((10 ^ (n + 1) / 239 % 10 : ℕ) : ℤ)` in `Proof.A021.A021243`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021243.P5332679809730404171

`a(n-7)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=1, a(4)=8, a(5)=4, a(6)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021243

/-- `a(n-7)` -/
def P5332679809730404171.Spec : Prop :=
  ∀ n, (P5332679809730404171.a n : ℤ) = A021243 n

theorem P5332679809730404171.correct : P5332679809730404171.Spec := by
  intro n
  simp only [A021243]

end A021243

/-!
# A021244: Expansion of 1/((1-x)*(1-2*x)*(1-7*x)*(1-11*x)).

The programs for A021244, the canonical program `A021244.P14968163150115551335` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021244 has offset 0).

The definition of A021244 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-21x+133x^2-267x^3+154x^4))` (program `A021244.P14968163150115551335`, by `A021244.P14968163150115551335.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021244.P14968163150115551335

`ogf(1/(1-21x+133x^2-267x^3+154x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021244

/-- `ogf(1/(1-21x+133x^2-267x^3+154x^4))` -/
def P14968163150115551335.Spec : Prop :=
  ∀ n, P14968163150115551335.a n = A021244 n

theorem P14968163150115551335.correct : P14968163150115551335.Spec := by
  intro n
  simp only [A021244]

end A021244

/-! ## A021244.P18440990483470382662

`(11^(n+3)-3*7^(n+3)+8*2^(n+3)-6)/360`
-/

namespace A021244.P18440990483470382662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (3 * 7 ^ (n + 3) : ℤ) + (8 * 2 ^ (n + 3) : ℤ) - 6 : ℚ) / 360

end

end A021244.P18440990483470382662

namespace A021244

/-- `(11^(n+3)-3*7^(n+3)+8*2^(n+3)-6)/360` -/
def P18440990483470382662.Spec : Prop :=
  ∀ n, P18440990483470382662.a n = (A021244 n : ℚ)

end A021244

/-! ## A021244.P6010379581531146220

`∑[A016314(n)]`
-/

namespace A021244.P6010379581531146220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021244.P6010379581531146220

namespace A021244

/-- `∑[A016314(n)]` -/
def P6010379581531146220.Spec : Prop :=
  ∀ n, P6010379581531146220.a n = A021244 n

end A021244

/-! ## A021244.P15214279465724571481

`A016254(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021244.P15214279465724571481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016254 n + 2 * a (n - 1)

end

end A021244.P15214279465724571481

namespace A021244

/-- `A016254(n)+2*a(n-1)` -/
def P15214279465724571481.Spec : Prop :=
  ∀ n, P15214279465724571481.a n = A021244 n

end A021244

/-! ## A021244.P4596141498400177361

`A016201(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A021244.P4596141498400177361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016201 n + 11 * a (n - 1)

end

end A021244.P4596141498400177361

namespace A021244

/-- `A016201(n)+11*a(n-1)` -/
def P4596141498400177361.Spec : Prop :=
  ∀ n, P4596141498400177361.a n = A021244 n

end A021244

/-! ## A021244.P18210573834640543166

`2*A021054(n)-A021034(n)`
-/

namespace A021244.P18210573834640543166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021054 n - A021034 n

end

end A021244.P18210573834640543166

namespace A021244

/-- `2*A021054(n)-A021034(n)` -/
def P18210573834640543166.Spec : Prop :=
  ∀ n, P18210573834640543166.a n = A021244 n

end A021244

/-! ## A021244.P15171665496716663979

`A021124(n)+A025995(n)-A021154(n)`
-/

namespace A021244.P15171665496716663979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021124 n + (A025995 n - A021154 n)

end

end A021244.P15171665496716663979

namespace A021244

/-- `A021124(n)+A025995(n)-A021154(n)` -/
def P15171665496716663979.Spec : Prop :=
  ∀ n, P15171665496716663979.a n = A021244 n

end A021244

/-! ## A021244.P10331328438740392839

`A021394(n)+A028041(n)-A025946(n)`
-/

namespace A021244.P10331328438740392839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021394 n + (A028041 n - A025946 n)

end

end A021244.P10331328438740392839

namespace A021244

/-- `A021394(n)+A028041(n)-A025946(n)` -/
def P10331328438740392839.Spec : Prop :=
  ∀ n, P10331328438740392839.a n = A021244 n

end A021244

/-!
# A021249: Decimal expansion of 1/245.

The programs for A021249, there is no canonical definition to state claims against.
-/

/-! ## A021249.P7849249770924489950

`A021053(A004273(n)+2-n)`
-/

namespace A021249.P7849249770924489950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021053 (A004273 n + (2 - (n : ℤ))).toNat

end

end A021249.P7849249770924489950

/-!
# A021250: Decimal expansion of 1/246.

The programs for A021250, the canonical program `A021250.P17973929838284874588` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021250 has offset 0).

The definition of A021250 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021250.anchor (n : ℕ) : A021250 n = ((10 ^ (n + 1) / 246 % 10 : ℕ) : ℤ)` in `Proof.A021.A021250`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021250.P17973929838284874588

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=0, a(4)=6, a(5)=5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021250

/-- `a(n-5)` -/
def P17973929838284874588.Spec : Prop :=
  ∀ n, (P17973929838284874588.a n : ℤ) = A021250 n

theorem P17973929838284874588.correct : P17973929838284874588.Spec := by
  intro n
  simp only [A021250]

end A021250

/-!
# A021254: Expansion of g.f. 1/((1-x)*(1-2*x)*(1-7*x)*(1-12*x)).

The programs for A021254, the canonical program `A021254.P10160061760933465685` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021254 has offset 0).

The definition of A021254 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-22x+143x^2-290x^3+168x^4))` (program `A021254.P10160061760933465685`, by `A021254.P10160061760933465685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021254.P10160061760933465685

`ogf(1/(1-22x+143x^2-290x^3+168x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021254

/-- `ogf(1/(1-22x+143x^2-290x^3+168x^4))` -/
def P10160061760933465685.Spec : Prop :=
  ∀ n, P10160061760933465685.a n = A021254 n

theorem P10160061760933465685.correct : P10160061760933465685.Spec := by
  intro n
  simp only [A021254]

end A021254

/-! ## A021254.P14280648268289494219

`∑[19*a(n-1)-84*a(n-2)+2^n]` with `a(0)=1, a(1)=21`
-/

namespace A021254.P14280648268289494219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n f1 =>
  19 * f1 (n - 1) - 84 * f1 (n - 2) + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021254.P14280648268289494219

namespace A021254

/-- `∑[19*a(n-1)-84*a(n-2)+2^n]` -/
def P14280648268289494219.Spec : Prop :=
  ∀ n, P14280648268289494219.a n = A021254 n

end A021254

/-! ## A021254.P15629197180207959887

`∑[A016315(n)]`
-/

namespace A021254.P15629197180207959887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021254.P15629197180207959887

namespace A021254

/-- `∑[A016315(n)]` -/
def P15629197180207959887.Spec : Prop :=
  ∀ n, P15629197180207959887.a n = A021254 n

end A021254

/-! ## A021254.P5307568158710992516

`A016255(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021254.P5307568158710992516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016255 n + 2 * a (n - 1)

end

end A021254.P5307568158710992516

namespace A021254

/-- `A016255(n)+2*a(n-1)` -/
def P5307568158710992516.Spec : Prop :=
  ∀ n, P5307568158710992516.a n = A021254 n

end A021254

/-! ## A021254.P11982719570450183900

`A016207(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A021254.P11982719570450183900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016207 n + 7 * a (n - 1)

end

end A021254.P11982719570450183900

namespace A021254

/-- `A016207(n)+7*a(n-1)` -/
def P11982719570450183900.Spec : Prop :=
  ∀ n, P11982719570450183900.a n = A021254 n

end A021254

/-! ## A021254.P12427125614149388116

`A016201(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A021254.P12427125614149388116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016201 n + 12 * a (n - 1)

end

end A021254.P12427125614149388116

namespace A021254

/-- `A016201(n)+12*a(n-1)` -/
def P12427125614149388116.Spec : Prop :=
  ∀ n, P12427125614149388116.a n = A021254 n

end A021254

/-! ## A021254.P15178422217679797009

`A016315(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A021254.P15178422217679797009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016315 n + a (A028310 n - 1).toNat

end

end A021254.P15178422217679797009

namespace A021254

/-- `A016315(n)+a(A028310(n)-1)` -/
def P15178422217679797009.Spec : Prop :=
  ∀ n, P15178422217679797009.a n = A021254 n

end A021254

/-! ## A021254.P8740283108599955096

`∑[(A026543(n)+A016304(n))/2]`
-/

namespace A021254.P8740283108599955096
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026543 n + A016304 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021254.P8740283108599955096

namespace A021254

/-- `∑[(A026543(n)+A016304(n))/2]` -/
def P8740283108599955096.Spec : Prop :=
  ∀ n, P8740283108599955096.a n = (A021254 n : ℚ)

end A021254

/-! ## A021254.P13950811225022993393

`A021174(n)+A026543(n)-A021214(n)`
-/

namespace A021254.P13950811225022993393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021174 n + (A026543 n - A021214 n)

end

end A021254.P13950811225022993393

namespace A021254

/-- `A021174(n)+A026543(n)-A021214(n)` -/
def P13950811225022993393.Spec : Prop :=
  ∀ n, P13950811225022993393.a n = A021254 n

end A021254

/-! ## A021254.P1110671107399927301

`A021279(n)+A028008(n)-∑[A028008(n)]`
-/

namespace A021254.P1110671107399927301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021279 n + (A028008 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A021254.P1110671107399927301

namespace A021254

/-- `A021279(n)+A028008(n)-∑[A028008(n)]` -/
def P1110671107399927301.Spec : Prop :=
  ∀ n, P1110671107399927301.a n = A021254 n

end A021254

/-!
# A021256: Decimal expansion of 1/252.

The programs for A021256, the canonical program `A021256.P11215221401829278741` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021256 has offset 0).

The definition of A021256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021256.P11215221401829278741

`(A020806(n)+A016825(n))%A016813(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021256

/-- `(A020806(n)+A016825(n))%A016813(n)` -/
def P11215221401829278741.Spec : Prop :=
  ∀ n, P11215221401829278741.a n = A021256 n

theorem P11215221401829278741.correct : P11215221401829278741.Spec := by
  intro n
  simp only [A021256]

end A021256

/-!
# A021260: Decimal expansion of 1/256.

The programs for A021260, there is no canonical definition to state claims against.
-/

/-! ## A021260.P12326496192471297638

`A215633(A215633(A333138(n+1))+n+1)`
-/

namespace A021260.P12326496192471297638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215633 ((A215633 ((A333138 (n + 1)).toNat + 1) + (n + 1 : ℤ)).toNat + 1)

end

end A021260.P12326496192471297638

/-!
# A021263: Decimal expansion of 1/259.

The programs for A021263, the canonical program `A021263.P11236674023048408060` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021263 has offset 0).

The definition of A021263 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021263.anchor (n : ℕ) : A021263 n = ((10 ^ (n + 1) / 259 % 10 : ℕ) : ℤ)` in `Proof.A021.A021263`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021263.P11236674023048408060

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=8, a(4)=6, a(5)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021263

/-- `a(n-6)` -/
def P11236674023048408060.Spec : Prop :=
  ∀ n, (P11236674023048408060.a n : ℤ) = A021263 n

theorem P11236674023048408060.correct : P11236674023048408060.Spec := by
  intro n
  simp only [A021263]

end A021263

/-!
# A021264: Expansion of 1/((1-x)(1-2x)(1-8x)(1-9x)).

The programs for A021264, the canonical program `A021264.P9366244983471317747` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021264 has offset 0).

The definition of A021264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-20x+125x^2-250x^3+144x^4))` (program `A021264.P9366244983471317747`, by `A021264.P9366244983471317747.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021264.P9366244983471317747

`ogf(1/(1-20x+125x^2-250x^3+144x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021264

/-- `ogf(1/(1-20x+125x^2-250x^3+144x^4))` -/
def P9366244983471317747.Spec : Prop :=
  ∀ n, P9366244983471317747.a n = A021264 n

theorem P9366244983471317747.correct : P9366244983471317747.Spec := by
  intro n
  simp only [A021264]

end A021264

/-! ## A021264.P14888156326320306814

`(3*9^(n+3)-4*8^(n+3)+2^(n+5)-3)/168`
-/

namespace A021264.P14888156326320306814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 9 ^ (n + 3) : ℤ) - (4 * 8 ^ (n + 3) : ℤ) + (2 ^ (n + 5) : ℤ) - 3 : ℚ) / 168

end

end A021264.P14888156326320306814

namespace A021264

/-- `(3*9^(n+3)-4*8^(n+3)+2^(n+5)-3)/168` -/
def P14888156326320306814.Spec : Prop :=
  ∀ n, P14888156326320306814.a n = (A021264 n : ℚ)

end A021264

/-! ## A021264.P17565233827970961797

`∑[A016316(n)]`
-/

namespace A021264.P17565233827970961797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021264.P17565233827970961797

namespace A021264

/-- `∑[A016316(n)]` -/
def P17565233827970961797.Spec : Prop :=
  ∀ n, P17565233827970961797.a n = A021264 n

end A021264

/-! ## A021264.P10930488740702833639

`A016256(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021264.P10930488740702833639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016256 n + 2 * a (n - 1)

end

end A021264.P10930488740702833639

namespace A021264

/-- `A016256(n)+2*a(n-1)` -/
def P10930488740702833639.Spec : Prop :=
  ∀ n, P10930488740702833639.a n = A021264 n

end A021264

/-! ## A021264.P8553548955989285733

`2*A021229(n)-A021224(n)`
-/

namespace A021264.P8553548955989285733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021229 n - A021224 n

end

end A021264.P8553548955989285733

namespace A021264

/-- `2*A021229(n)-A021224(n)` -/
def P8553548955989285733.Spec : Prop :=
  ∀ n, P8553548955989285733.a n = A021264 n

end A021264

/-! ## A021264.P4714931880234430853

`A016204(n+1)-A016203(n+1)`
-/

namespace A021264.P4714931880234430853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016204 (n + 1) - A016203 (n + 1)

end

end A021264.P4714931880234430853

namespace A021264

/-- `A016204(n+1)-A016203(n+1)` -/
def P4714931880234430853.Spec : Prop :=
  ∀ n, P4714931880234430853.a n = A021264 n

end A021264

/-! ## A021264.P879437637926150997

`∑[A016133(n+1)-A016131(n+1)]`
-/

namespace A021264.P879437637926150997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016133 (n + 1) - A016131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021264.P879437637926150997

namespace A021264

/-- `∑[A016133(n+1)-A016131(n+1)]` -/
def P879437637926150997.Spec : Prop :=
  ∀ n, P879437637926150997.a n = A021264 n

end A021264

/-! ## A021264.P5604675404766094558

`2*A021268(n)-A021284(n)`
-/

namespace A021264.P5604675404766094558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021268 n - A021284 n

end

end A021264.P5604675404766094558

namespace A021264

/-- `2*A021268(n)-A021284(n)` -/
def P5604675404766094558.Spec : Prop :=
  ∀ n, P5604675404766094558.a n = A021264 n

end A021264

/-!
# A021268: Expansion of 1/((1-x)(1-2x)(1-8x)(1-10x)).

The programs for A021268, the canonical program `A021268.P2729354166550572141` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021268 has offset 0).

The definition of A021268 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-21x+136x^2-276x^3+160x^4))` (program `A021268.P2729354166550572141`, by `A021268.P2729354166550572141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021268.P2729354166550572141

`ogf(1/(1-21x+136x^2-276x^3+160x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021268

/-- `ogf(1/(1-21x+136x^2-276x^3+160x^4))` -/
def P2729354166550572141.Spec : Prop :=
  ∀ n, P2729354166550572141.a n = A021268 n

theorem P2729354166550572141.correct : P2729354166550572141.Spec := by
  intro n
  simp only [A021268]

end A021268

/-! ## A021268.P10720709010355044782

`∑[2^n*∑[5^(n+1)-4^(n+1)]]`
-/

namespace A021268.P10720709010355044782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021268.P10720709010355044782

namespace A021268

/-- `∑[2^n*∑[5^(n+1)-4^(n+1)]]` -/
def P10720709010355044782.Spec : Prop :=
  ∀ n, P10720709010355044782.a n = A021268 n

end A021268

/-! ## A021268.P10175760157288516332

`A016203(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A021268.P10175760157288516332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016203 n + 10 * a (n - 1)

end

end A021268.P10175760157288516332

namespace A021268

/-- `A016203(n)+10*a(n-1)` -/
def P10175760157288516332.Spec : Prop :=
  ∀ n, P10175760157288516332.a n = A021268 n

end A021268

/-! ## A021268.P15943857392757289774

`a(n-1)+A016257(n)+a(n-1)` with `a(0)=1`
-/

namespace A021268.P15943857392757289774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016257 n + a (n - 1))

end

end A021268.P15943857392757289774

namespace A021268

/-- `a(n-1)+A016257(n)+a(n-1)` -/
def P15943857392757289774.Spec : Prop :=
  ∀ n, P15943857392757289774.a n = A021268 n

end A021268

/-! ## A021268.P18228924415908043056

`2*A021202(n)-A021184(n)`
-/

namespace A021268.P18228924415908043056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021202 n - A021184 n

end

end A021268.P18228924415908043056

namespace A021268

/-- `2*A021202(n)-A021184(n)` -/
def P18228924415908043056.Spec : Prop :=
  ∀ n, P18228924415908043056.a n = A021268 n

end A021268

/-! ## A021268.P9471376720995219596

`a(n-1)+A000079(n)*A016218(n)` with `a(0)=1`
-/

namespace A021268.P9471376720995219596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000079 n * A016218 n

end

end A021268.P9471376720995219596

namespace A021268

/-- `a(n-1)+A000079(n)*A016218(n)` -/
def P9471376720995219596.Spec : Prop :=
  ∀ n, P9471376720995219596.a n = A021268 n

end A021268

/-! ## A021268.P13325285442844934654

`(A021284(n)+A021264(n))/2`
-/

namespace A021268.P13325285442844934654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021284 n + A021264 n : ℚ) / 2

end

end A021268.P13325285442844934654

namespace A021268

/-- `(A021284(n)+A021264(n))/2` -/
def P13325285442844934654.Spec : Prop :=
  ∀ n, P13325285442844934654.a n = (A021268 n : ℚ)

end A021268

/-!
# A021269: Decimal expansion of 1/265.

The programs for A021269, the canonical program `A021269.P3737158085322512315` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021269 has offset 0).

The definition of A021269 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021269.anchor (n : ℕ) : A021269 n = ((10 ^ (n + 1) / 265 % 10 : ℕ) : ℤ)` in `Proof.A021.A021269`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021269.P3737158085322512315

`ogf((3x^2+7x^3+7x^4+3x^5+5x^6+8x^7+4x^8+9x^9+5x^11+6x^12+6x^13)/(1-x^13))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021269

/-- `ogf((3x^2+7x^3+7x^4+3x^5+5x^6+8x^7+4x^8+9x^9+5x^11+6x^12+6x^13)/(1-x^13))` -/
def P3737158085322512315.Spec : Prop :=
  ∀ n, P3737158085322512315.a n = A021269 n

theorem P3737158085322512315.correct : P3737158085322512315.Spec := by
  intro n
  simp only [A021269]

end A021269

/-!
# A021270: Decimal expansion of 1/266.

The programs for A021270, the canonical program `A021270.P17359872750321190541` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021270 has offset 0).

The definition of A021270 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021270.anchor (n : ℕ) : A021270 n = ((10 ^ (n + 1) / 266 % 10 : ℕ) : ℤ)` in `Proof.A021.A021270`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021270.P17359872750321190541

`ogf((3x^2+4x^3-2x^4+4x^5-6x^6+6x^7-x^8-4x^9+5x^10)/(1-x+x^9-x^10))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021270

/-- `ogf((3x^2+4x^3-2x^4+4x^5-6x^6+6x^7-x^8-4x^9+5x^10)/(1-x+x^9-x^10))` -/
def P17359872750321190541.Spec : Prop :=
  ∀ n, P17359872750321190541.a n = A021270 n

theorem P17359872750321190541.correct : P17359872750321190541.Spec := by
  intro n
  simp only [A021270]

end A021270

/-!
# A021274: Expansion of g.f. 1/((1 - x)*(1 - 2*x)*(1 - 8*x)*(1 - 11*x)).

The programs for A021274, the canonical program `A021274.P5183250278270804037` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021274 has offset 0).

The definition of A021274 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-22x+147x^2-302x^3+176x^4))` (program `A021274.P5183250278270804037`, by `A021274.P5183250278270804037.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021274.P5183250278270804037

`ogf(1/(1-22x+147x^2-302x^3+176x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021274

/-- `ogf(1/(1-22x+147x^2-302x^3+176x^4))` -/
def P5183250278270804037.Spec : Prop :=
  ∀ n, P5183250278270804037.a n = A021274 n

theorem P5183250278270804037.correct : P5183250278270804037.Spec := by
  intro n
  simp only [A021274]

end A021274

/-! ## A021274.P18168553501887021879

`∑[8^n+11*a(n-1)]+2*a(n-1)` with `a(0)=1`
-/

namespace A021274.P18168553501887021879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  8 ^ n + 11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A021274.P18168553501887021879

namespace A021274

/-- `∑[8^n+11*a(n-1)]+2*a(n-1)` -/
def P18168553501887021879.Spec : Prop :=
  ∀ n, (P18168553501887021879.a n : ℤ) = A021274 n

end A021274

/-! ## A021274.P9176406081662840492

`∑[A016318(n)]`
-/

namespace A021274.P9176406081662840492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021274.P9176406081662840492

namespace A021274

/-- `∑[A016318(n)]` -/
def P9176406081662840492.Spec : Prop :=
  ∀ n, P9176406081662840492.a n = A021274 n

end A021274

/-! ## A021274.P13324619720850914677

`A016259(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021274.P13324619720850914677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016259 n + 2 * a (n - 1)

end

end A021274.P13324619720850914677

namespace A021274

/-- `A016259(n)+2*a(n-1)` -/
def P13324619720850914677.Spec : Prop :=
  ∀ n, P13324619720850914677.a n = A021274 n

end A021274

/-! ## A021274.P15905769200966336796

`A016203(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A021274.P15905769200966336796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016203 n + 11 * a (n - 1)

end

end A021274.P15905769200966336796

namespace A021274

/-- `A016203(n)+11*a(n-1)` -/
def P15905769200966336796.Spec : Prop :=
  ∀ n, P15905769200966336796.a n = A021274 n

end A021274

/-! ## A021274.P17069290600451188953

`2*A021154(n)-A021129(n)`
-/

namespace A021274.P17069290600451188953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021154 n - A021129 n

end

end A021274.P17069290600451188953

namespace A021274

/-- `2*A021154(n)-A021129(n)` -/
def P17069290600451188953.Spec : Prop :=
  ∀ n, P17069290600451188953.a n = A021274 n

end A021274

/-! ## A021274.P13917790231435224961

`(A022628(n)+A021154(n))/2`
-/

namespace A021274.P13917790231435224961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022628 n + A021154 n : ℚ) / 2

end

end A021274.P13917790231435224961

namespace A021274

/-- `(A022628(n)+A021154(n))/2` -/
def P13917790231435224961.Spec : Prop :=
  ∀ n, P13917790231435224961.a n = (A021274 n : ℚ)

end A021274

/-! ## A021274.P16252433220522391443

`∑[2*A016301(n)-A016297(n)]`
-/

namespace A021274.P16252433220522391443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016301 n - A016297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021274.P16252433220522391443

namespace A021274

/-- `∑[2*A016301(n)-A016297(n)]` -/
def P16252433220522391443.Spec : Prop :=
  ∀ n, P16252433220522391443.a n = A021274 n

end A021274

/-! ## A021274.P3819442836551458378

`2*A021154(n)-∑[A016297(n)]`
-/

namespace A021274.P3819442836551458378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021154 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021274.P3819442836551458378

namespace A021274

/-- `2*A021154(n)-∑[A016297(n)]` -/
def P3819442836551458378.Spec : Prop :=
  ∀ n, P3819442836551458378.a n = A021274 n

end A021274

/-!
# A021275: Decimal expansion of 1/271.

The programs for A021275, the canonical program `A021275.P14660464025190811463` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021275 has offset 0).

The definition of A021275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021275.P14660464025190811463

`3*round(log((n%5)!))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021275

/-- `3*round(log((n%5)!))` -/
def P14660464025190811463.Spec : Prop :=
  ∀ n, P14660464025190811463.a n = A021275 n

theorem P14660464025190811463.correct : P14660464025190811463.Spec := by
  intro n
  simp only [A021275]

end A021275

/-!
# A021276: Decimal expansion of 1/272.

The programs for A021276, the canonical program `A021276.P7473866945350936603` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021276 has offset 0).

The definition of A021276 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021276.anchor (n : ℕ) : A021276 n = ((10 ^ (n + 1) / 272 % 10 : ℕ) : ℤ)` in `Proof.A021.A021276`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021276.P7473866945350936603

`ogf((3x^2+3x^3+x^4-x^5-2x^6+3x^7-7x^8+5x^9+6x^10+3x^11-5x^12)/(1-x+x^8-x^9))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021276

/-- `ogf((3x^2+3x^3+x^4-x^5-2x^6+3x^7-7x^8+5x^9+6x^10+3x^11-5x^12)/(1-x+x^8-x^9))` -/
def P7473866945350936603.Spec : Prop :=
  ∀ n, P7473866945350936603.a n = A021276 n

theorem P7473866945350936603.correct : P7473866945350936603.Spec := by
  intro n
  simp only [A021276]

end A021276

/-!
# A021277: Decimal expansion of 1/273.

The programs for A021277, the canonical program `A021277.P6406895166936848788` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021277 has offset 0).

The definition of A021277 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021277.anchor (n : ℕ) : A021277 n = ((10 ^ (n + 1) / 273 % 10 : ℕ) : ℤ)` in `Proof.A021.A021277`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021277.P6737630005917955789

`ogf(3x^2/(1-2x+2x^2-x^3))`
-/

namespace A021277.P6737630005917955789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3] [1, -2, 2, -1] n

end

end A021277.P6737630005917955789

namespace A021277

/-- `ogf(3x^2/(1-2x+2x^2-x^3))` -/
def P6737630005917955789.Spec : Prop :=
  ∀ n, P6737630005917955789.a n = A021277 n

end A021277

/-! ## A021277.P6406895166936848788

`6-a(n-3)` with `a(0)=0, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021277

/-- `6-a(n-3)` -/
def P6406895166936848788.Spec : Prop :=
  ∀ n, P6406895166936848788.a n = A021277 n

theorem P6406895166936848788.correct : P6406895166936848788.Spec := by
  intro n
  simp only [A021277]

end A021277

/-!
# A021278: Decimal expansion of 1/274.

The programs for A021278, the canonical program `A021278.P10937160811863035457` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021278 has offset 0).

The definition of A021278 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021278.anchor (n : ℕ) : A021278 n = ((10 ^ (n + 1) / 274 % 10 : ℕ) : ℤ)` in `Proof.A021.A021278`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021278.P10937160811863035457

`9-a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=6, a(4)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021278

/-- `9-a(n-4)` -/
def P10937160811863035457.Spec : Prop :=
  ∀ n, P10937160811863035457.a n = A021278 n

theorem P10937160811863035457.correct : P10937160811863035457.Spec := by
  intro n
  simp only [A021278]

end A021278

/-!
# A021279: Expansion of 1/((1-x)(1-2x)(1-8x)(1-12x)).

The programs for A021279, the canonical program `A021279.P147926018533270593` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021279 has offset 0).

The definition of A021279 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-23x+158x^2-328x^3+192x^4))` (program `A021279.P147926018533270593`, by `A021279.P147926018533270593.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021279.P147926018533270593

`ogf(1/(1-23x+158x^2-328x^3+192x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021279

/-- `ogf(1/(1-23x+158x^2-328x^3+192x^4))` -/
def P147926018533270593.Spec : Prop :=
  ∀ n, P147926018533270593.a n = A021279 n

theorem P147926018533270593.correct : P147926018533270593.Spec := by
  intro n
  simp only [A021279]

end A021279

/-! ## A021279.P14714528873762638816

`∑[A016320(n)]`
-/

namespace A021279.P14714528873762638816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021279.P14714528873762638816

namespace A021279

/-- `∑[A016320(n)]` -/
def P14714528873762638816.Spec : Prop :=
  ∀ n, P14714528873762638816.a n = A021279 n

end A021279

/-! ## A021279.P6227982713596901313

`∑[2^n*A016222(n)]`
-/

namespace A021279.P6227982713596901313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021279.P6227982713596901313

namespace A021279

/-- `∑[2^n*A016222(n)]` -/
def P6227982713596901313.Spec : Prop :=
  ∀ n, P6227982713596901313.a n = A021279 n

end A021279

/-! ## A021279.P10164834223193694056

`A016203(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A021279.P10164834223193694056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016203 n + 12 * a (n - 1)

end

end A021279.P10164834223193694056

namespace A021279

/-- `A016203(n)+12*a(n-1)` -/
def P10164834223193694056.Spec : Prop :=
  ∀ n, P10164834223193694056.a n = A021279 n

end A021279

/-! ## A021279.P10694893797957789347

`a(n-1)+A016260(n)+a(n-1)` with `a(0)=1`
-/

namespace A021279.P10694893797957789347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016260 n + a (n - 1))

end

end A021279.P10694893797957789347

namespace A021279

/-- `a(n-1)+A016260(n)+a(n-1)` -/
def P10694893797957789347.Spec : Prop :=
  ∀ n, P10694893797957789347.a n = A021279 n

end A021279

/-! ## A021279.P12883709484625729553

`∑[∑[A016149(n)]*A000079(n)]`
-/

namespace A021279.P12883709484625729553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016149 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021279.P12883709484625729553

namespace A021279

/-- `∑[∑[A016149(n)]*A000079(n)]` -/
def P12883709484625729553.Spec : Prop :=
  ∀ n, P12883709484625729553.a n = A021279 n

end A021279

/-! ## A021279.P1384839530972819608

`∑[A016222(n)*A017912(2*n)]`
-/

namespace A021279.P1384839530972819608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016222 n * A017912 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021279.P1384839530972819608

namespace A021279

/-- `∑[A016222(n)*A017912(2*n)]` -/
def P1384839530972819608.Spec : Prop :=
  ∀ n, P1384839530972819608.a n = A021279 n

end A021279

/-! ## A021279.P12611597932280741699

`(A021324(n)+A021268(n))/2`
-/

namespace A021279.P12611597932280741699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021324 n + A021268 n : ℚ) / 2

end

end A021279.P12611597932280741699

namespace A021279

/-- `(A021324(n)+A021268(n))/2` -/
def P12611597932280741699.Spec : Prop :=
  ∀ n, P12611597932280741699.a n = (A021279 n : ℚ)

end A021279

/-!
# A021284: Expansion of 1/((1-x)(1-2x)(1-9x)(1-10x)).

The programs for A021284, the canonical program `A021284.P3579301319372053362` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021284 has offset 0).

The definition of A021284 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-22x+149x^2-308x^3+180x^4))` (program `A021284.P3579301319372053362`, by `A021284.P3579301319372053362.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021284.P3579301319372053362

`ogf(1/(1-22x+149x^2-308x^3+180x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021284

/-- `ogf(1/(1-22x+149x^2-308x^3+180x^4))` -/
def P3579301319372053362.Spec : Prop :=
  ∀ n, P3579301319372053362.a n = A021284 n

theorem P3579301319372053362.correct : P3579301319372053362.Spec := by
  intro n
  simp only [A021284]

end A021284

/-! ## A021284.P3492496486647517625

`(7*10^(n+3)-9^(n+4)+9*2^(n+3)-7)/504`
-/

namespace A021284.P3492496486647517625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 10 ^ (n + 3) : ℤ) - (9 ^ (n + 4) : ℤ) + (9 * 2 ^ (n + 3) : ℤ) - 7 : ℚ) / 504

end

end A021284.P3492496486647517625

namespace A021284

/-- `(7*10^(n+3)-9^(n+4)+9*2^(n+3)-7)/504` -/
def P3492496486647517625.Spec : Prop :=
  ∀ n, P3492496486647517625.a n = (A021284 n : ℚ)

end A021284

/-! ## A021284.P10712046475885439129

`∑[A016321(n)]`
-/

namespace A021284.P10712046475885439129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021284.P10712046475885439129

namespace A021284

/-- `∑[A016321(n)]` -/
def P10712046475885439129.Spec : Prop :=
  ∀ n, P10712046475885439129.a n = A021284 n

end A021284

/-! ## A021284.P17000162444708422704

`a(n-1)+A016261(n)+a(n-1)` with `a(0)=1`
-/

namespace A021284.P17000162444708422704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016261 n + a (n - 1))

end

end A021284.P17000162444708422704

namespace A021284

/-- `a(n-1)+A016261(n)+a(n-1)` -/
def P17000162444708422704.Spec : Prop :=
  ∀ n, P17000162444708422704.a n = A021284 n

end A021284

/-! ## A021284.P2512028263351086786

`2*A021268(n)-A021264(n)`
-/

namespace A021284.P2512028263351086786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021268 n - A021264 n

end

end A021284.P2512028263351086786

namespace A021284

/-- `2*A021268(n)-A021264(n)` -/
def P2512028263351086786.Spec : Prop :=
  ∀ n, P2512028263351086786.a n = A021284 n

end A021284

/-! ## A021284.P17995305096177257175

`A016205(n+1)-A016204(n+1)`
-/

namespace A021284.P17995305096177257175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016205 (n + 1) - A016204 (n + 1)

end

end A021284.P17995305096177257175

namespace A021284

/-- `A016205(n+1)-A016204(n+1)` -/
def P17995305096177257175.Spec : Prop :=
  ∀ n, P17995305096177257175.a n = A021284 n

end A021284

/-! ## A021284.P8270304046408284267

`∑[A016134(n+1)-A016133(n+1)]`
-/

namespace A021284.P8270304046408284267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016134 (n + 1) - A016133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021284.P8270304046408284267

namespace A021284

/-- `∑[A016134(n+1)-A016133(n+1)]` -/
def P8270304046408284267.Spec : Prop :=
  ∀ n, P8270304046408284267.a n = A021284 n

end A021284

/-! ## A021284.P1703404345311277717

`2*A021294(n)-A021314(n)`
-/

namespace A021284.P1703404345311277717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021294 n - A021314 n

end

end A021284.P1703404345311277717

namespace A021284

/-- `2*A021294(n)-A021314(n)` -/
def P1703404345311277717.Spec : Prop :=
  ∀ n, P1703404345311277717.a n = A021284 n

end A021284

/-!
# A021290: Decimal expansion of 1/286.

The programs for A021290, the canonical program `A021290.P12873060722367472338` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021290 has offset 0).

The definition of A021290 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021290.anchor (n : ℕ) : A021290 n = ((10 ^ (n + 1) / 286 % 10 : ℕ) : ℤ)` in `Proof.A021.A021290`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021290.P12873060722367472338

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021290

/-- `9-a(n-3)` -/
def P12873060722367472338.Spec : Prop :=
  ∀ n, P12873060722367472338.a n = A021290 n

theorem P12873060722367472338.correct : P12873060722367472338.Spec := by
  intro n
  simp only [A021290]

end A021290

/-!
# A021292: Decimal expansion of 1/288.

The programs for A021292, the canonical program `A021292.P12123990556941466293` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021292 has offset 0).

The definition of A021292 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021292.anchor (n : ℕ) : A021292 n = ((10 ^ (n + 1) / 288 % 10 : ℕ) : ℤ)` in `Proof.A021.A021292`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021292.P16849447950964306262

`ogf((3x^2+x^3+3x^4-5x^5)/(1-x))`
-/

namespace A021292.P16849447950964306262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 1, 3, -5] [1, -1] n

end

end A021292.P16849447950964306262

namespace A021292

/-- `ogf((3x^2+x^3+3x^4-5x^5)/(1-x))` -/
def P16849447950964306262.Spec : Prop :=
  ∀ n, P16849447950964306262.a n = A021292 n

end A021292

/-! ## A021292.P12123990556941466293

`a(n-1)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=4, a(4)=7, a(5)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021292

/-- `a(n-1)` -/
def P12123990556941466293.Spec : Prop :=
  ∀ n, (P12123990556941466293.a n : ℤ) = A021292 n

theorem P12123990556941466293.correct : P12123990556941466293.Spec := by
  intro n
  simp only [A021292]

end A021292

/-!
# A021294: Expansion of 1/((1-x)(1-2x)(1-9x)(1-11x)).

The programs for A021294, the canonical program `A021294.P11565409429936747982` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021294 has offset 0).

The definition of A021294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-23x+161x^2-337x^3+198x^4))` (program `A021294.P11565409429936747982`, by `A021294.P11565409429936747982.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021294.P11565409429936747982

`ogf(1/(1-23x+161x^2-337x^3+198x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021294

/-- `ogf(1/(1-23x+161x^2-337x^3+198x^4))` -/
def P11565409429936747982.Spec : Prop :=
  ∀ n, P11565409429936747982.a n = A021294 n

theorem P11565409429936747982.correct : P11565409429936747982.Spec := by
  intro n
  simp only [A021294]

end A021294

/-! ## A021294.P11260274637937964389

`∑[A016322(n)]`
-/

namespace A021294.P11260274637937964389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021294.P11260274637937964389

namespace A021294

/-- `∑[A016322(n)]` -/
def P11260274637937964389.Spec : Prop :=
  ∀ n, P11260274637937964389.a n = A021294 n

end A021294

/-! ## A021294.P5971319525360021230

`A016262(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021294.P5971319525360021230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016262 n + 2 * a (n - 1)

end

end A021294.P5971319525360021230

namespace A021294

/-- `A016262(n)+2*a(n-1)` -/
def P5971319525360021230.Spec : Prop :=
  ∀ n, P5971319525360021230.a n = A021294 n

end A021294

/-! ## A021294.P14340015684678367131

`2*A021244(n)-A021229(n)`
-/

namespace A021294.P14340015684678367131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021244 n - A021229 n

end

end A021294.P14340015684678367131

namespace A021294

/-- `2*A021244(n)-A021229(n)` -/
def P14340015684678367131.Spec : Prop :=
  ∀ n, P14340015684678367131.a n = A021294 n

end A021294

/-! ## A021294.P3435802505547080625

`(A021314(n)+A021284(n))/2`
-/

namespace A021294.P3435802505547080625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021314 n + A021284 n : ℚ) / 2

end

end A021294.P3435802505547080625

namespace A021294

/-- `(A021314(n)+A021284(n))/2` -/
def P3435802505547080625.Spec : Prop :=
  ∀ n, P3435802505547080625.a n = (A021294 n : ℚ)

end A021294

/-! ## A021294.P2445720451516518932

`(A026028(n)+A021154(n))/2`
-/

namespace A021294.P2445720451516518932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026028 n + A021154 n : ℚ) / 2

end

end A021294.P2445720451516518932

namespace A021294

/-- `(A026028(n)+A021154(n))/2` -/
def P2445720451516518932.Spec : Prop :=
  ∀ n, P2445720451516518932.a n = (A021294 n : ℚ)

end A021294

/-! ## A021294.P17209118884855403671

`∑[(A016325(n)+A016321(n))/2]`
-/

namespace A021294.P17209118884855403671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016325 n + A016321 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021294.P17209118884855403671

namespace A021294

/-- `∑[(A016325(n)+A016321(n))/2]` -/
def P17209118884855403671.Spec : Prop :=
  ∀ n, P17209118884855403671.a n = (A021294 n : ℚ)

end A021294

/-!
# A021296: Decimal expansion of 1/292.

The programs for A021296, the canonical program `A021296.P17815933618706449` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021296 has offset 0).

The definition of A021296 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021296.anchor (n : ℕ) : A021296 n = ((10 ^ (n + 1) / 292 % 10 : ℕ) : ℤ)` in `Proof.A021.A021296`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021296.P3750490419923226463

`ogf((3x^2+x^3-2x^4+2x^5+5x^6)/(1-x+x^4-x^5))`
-/

namespace A021296.P3750490419923226463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 1, -2, 2, 5] [1, -1, 0, 0, 1, -1] n

end

end A021296.P3750490419923226463

namespace A021296

/-- `ogf((3x^2+x^3-2x^4+2x^5+5x^6)/(1-x+x^4-x^5))` -/
def P3750490419923226463.Spec : Prop :=
  ∀ n, P3750490419923226463.a n = A021296 n

end A021296

/-! ## A021296.P17815933618706449

`a(n-1)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=4, a(4)=2, a(5)=4, a(6)=6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A021296

/-- `a(n-1)-a(n-4)+a(n-5)` -/
def P17815933618706449.Spec : Prop :=
  ∀ n, P17815933618706449.a n = A021296 n

theorem P17815933618706449.correct : P17815933618706449.Spec := by
  intro n
  simp only [A021296]

end A021296

