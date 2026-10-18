import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A010800: 

The programs for A010800, there is no canonical definition to state claims against.
-/

/-! ## A010800.P12775862784593837283

`36*A105939(n)*a(n-1)` with `a(0)=1`
-/

namespace A010800.P12775862784593837283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  36 * A105939 n * a (n - 1)

end

end A010800.P12775862784593837283

/-! ## A010800.P7236478797327631569

`A009963(A167614(n+5)+3)`
-/

namespace A010800.P7236478797327631569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 (A167614 (n + 5) + 3).toNat

end

end A010800.P7236478797327631569

/-! ## A010800.P13981857492984783651

`A009963(eq[7, A002260(n+1)])`
-/

namespace A010800.P13981857492984783651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010800.P13981857492984783651

/-! ## A010800.P13505432858373482776

`A009963(A055999(n+4)-1)`
-/

namespace A010800.P13505432858373482776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 (A055999 (n + 4) - 1).toNat

end

end A010800.P13505432858373482776

/-! ## A010800.P11052635334914546690

`A009963(A056000(n+2)+10+n)`
-/

namespace A010800.P11052635334914546690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 (A056000 (n + 2) + 10 + (n : ℤ)).toNat

end

end A010800.P11052635334914546690

/-!
# A010801: 13th powers: a(n) = n^13.

The programs for A010801, the canonical program `A010801.P15153866690216922804` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010801 has offset 0).

The definition of A010801 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^13` (program `A010801.P15153866690216922804`, by `A010801.P15153866690216922804.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010801.P15153866690216922804

`n^13`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010801

/-- `n^13` -/
def P15153866690216922804.Spec : Prop :=
  ∀ n, (P15153866690216922804.a n : ℤ) = A010801 n

theorem P15153866690216922804.correct : P15153866690216922804.Spec := by
  intro n
  simp only [A010801]

end A010801

/-!
# A010802: 14th powers: a(n) = n^14.

The programs for A010802, the canonical program `A010802.P3830132087023680263` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010802 has offset 0).

The definition of A010802 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^14` (program `A010802.P3830132087023680263`, by `A010802.P3830132087023680263.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010802.P3830132087023680263

`n^14`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010802

/-- `n^14` -/
def P3830132087023680263.Spec : Prop :=
  ∀ n, (P3830132087023680263.a n : ℤ) = A010802 n

theorem P3830132087023680263.correct : P3830132087023680263.Spec := by
  intro n
  simp only [A010802]

end A010802

/-!
# A010803: 15th powers: a(n) = n^15.

The programs for A010803, the canonical program `A010803.P6276443509735505048` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010803 has offset 0).

The definition of A010803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^15` (program `A010803.P6276443509735505048`, by `A010803.P6276443509735505048.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010803.P6276443509735505048

`n^15`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010803

/-- `n^15` -/
def P6276443509735505048.Spec : Prop :=
  ∀ n, (P6276443509735505048.a n : ℤ) = A010803 n

theorem P6276443509735505048.correct : P6276443509735505048.Spec := by
  intro n
  simp only [A010803]

end A010803

/-!
# A010804: 16th powers: a(n) = n^16.

The programs for A010804, the canonical program `A010804.P7269340145917316383` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010804 has offset 0).

The definition of A010804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^16` (program `A010804.P7269340145917316383`, by `A010804.P7269340145917316383.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010804.P7269340145917316383

`n^16`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010804

/-- `n^16` -/
def P7269340145917316383.Spec : Prop :=
  ∀ n, (P7269340145917316383.a n : ℤ) = A010804 n

theorem P7269340145917316383.correct : P7269340145917316383.Spec := by
  intro n
  simp only [A010804]

end A010804

/-!
# A010805: 17th powers: a(n) = n^17.

The programs for A010805, the canonical program `A010805.P7645891408696802339` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010805 has offset 0).

The definition of A010805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^17` (program `A010805.P7645891408696802339`, by `A010805.P7645891408696802339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010805.P7645891408696802339

`n^17`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010805

/-- `n^17` -/
def P7645891408696802339.Spec : Prop :=
  ∀ n, (P7645891408696802339.a n : ℤ) = A010805 n

theorem P7645891408696802339.correct : P7645891408696802339.Spec := by
  intro n
  simp only [A010805]

end A010805

/-!
# A010806: 18th powers: a(n) = n^18.

The programs for A010806, the canonical program `A010806.P14867464415691871590` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010806 has offset 0).

The definition of A010806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^18` (program `A010806.P14867464415691871590`, by `A010806.P14867464415691871590.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010806.P14867464415691871590

`n^18`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010806

/-- `n^18` -/
def P14867464415691871590.Spec : Prop :=
  ∀ n, (P14867464415691871590.a n : ℤ) = A010806 n

theorem P14867464415691871590.correct : P14867464415691871590.Spec := by
  intro n
  simp only [A010806]

end A010806

/-!
# A010807: 19th powers: a(n) = n^19.

The programs for A010807, the canonical program `A010807.P6981619165352655558` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010807 has offset 0).

The definition of A010807 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^19` (program `A010807.P6981619165352655558`, by `A010807.P6981619165352655558.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010807.P6981619165352655558

`n^19`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010807

/-- `n^19` -/
def P6981619165352655558.Spec : Prop :=
  ∀ n, (P6981619165352655558.a n : ℤ) = A010807 n

theorem P6981619165352655558.correct : P6981619165352655558.Spec := by
  intro n
  simp only [A010807]

end A010807

/-!
# A010808: 20th powers: a(n) = n^20.

The programs for A010808, the canonical program `A010808.P9616354819411368820` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010808 has offset 0).

The definition of A010808 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^20` (program `A010808.P9616354819411368820`, by `A010808.P9616354819411368820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010808.P9616354819411368820

`n^20`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010808

/-- `n^20` -/
def P9616354819411368820.Spec : Prop :=
  ∀ n, (P9616354819411368820.a n : ℤ) = A010808 n

theorem P9616354819411368820.correct : P9616354819411368820.Spec := by
  intro n
  simp only [A010808]

end A010808

/-!
# A010809: 21st powers: a(n) = n^21.

The programs for A010809, the canonical program `A010809.P5246626234270927538` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010809 has offset 0).

The definition of A010809 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^21` (program `A010809.P5246626234270927538`, by `A010809.P5246626234270927538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010809.P5246626234270927538

`n^21`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010809

/-- `n^21` -/
def P5246626234270927538.Spec : Prop :=
  ∀ n, (P5246626234270927538.a n : ℤ) = A010809 n

theorem P5246626234270927538.correct : P5246626234270927538.Spec := by
  intro n
  simp only [A010809]

end A010809

/-!
# A010810: 22nd powers: a(n) = n^22.

The programs for A010810, the canonical program `A010810.P16375100348597893095` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010810 has offset 0).

The definition of A010810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^22` (program `A010810.P16375100348597893095`, by `A010810.P16375100348597893095.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010810.P16375100348597893095

`n^22`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010810

/-- `n^22` -/
def P16375100348597893095.Spec : Prop :=
  ∀ n, (P16375100348597893095.a n : ℤ) = A010810 n

theorem P16375100348597893095.correct : P16375100348597893095.Spec := by
  intro n
  simp only [A010810]

end A010810

/-!
# A010811: 23rd powers: a(n) = n^23.

The programs for A010811, the canonical program `A010811.P15657071310592219410` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010811 has offset 0).

The definition of A010811 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^23` (program `A010811.P15657071310592219410`, by `A010811.P15657071310592219410.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010811.P15657071310592219410

`n^23`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010811

/-- `n^23` -/
def P15657071310592219410.Spec : Prop :=
  ∀ n, (P15657071310592219410.a n : ℤ) = A010811 n

theorem P15657071310592219410.correct : P15657071310592219410.Spec := by
  intro n
  simp only [A010811]

end A010811

/-!
# A010812: 24th powers: a(n) = n^24.

The programs for A010812, the canonical program `A010812.P17419313109747188187` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010812 has offset 0).

The definition of A010812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^24` (program `A010812.P17419313109747188187`, by `A010812.P17419313109747188187.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010812.P17419313109747188187

`n^24`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010812

/-- `n^24` -/
def P17419313109747188187.Spec : Prop :=
  ∀ n, (P17419313109747188187.a n : ℤ) = A010812 n

theorem P17419313109747188187.correct : P17419313109747188187.Spec := by
  intro n
  simp only [A010812]

end A010812

/-!
# A010813: 25th powers: a(n) = n^25.

The programs for A010813, the canonical program `A010813.P153075783190794037` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010813 has offset 0).

The definition of A010813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^25` (program `A010813.P153075783190794037`, by `A010813.P153075783190794037.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010813.P153075783190794037

`n^25`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010813

/-- `n^25` -/
def P153075783190794037.Spec : Prop :=
  ∀ n, (P153075783190794037.a n : ℤ) = A010813 n

theorem P153075783190794037.correct : P153075783190794037.Spec := by
  intro n
  simp only [A010813]

end A010813

/-!
# A010814: Perimeters of integer-sided right triangles.

The programs for A010814, there is no canonical definition to state claims against.
-/

/-! ## A010814.P3703888843836942397

`A136000(n+1)+1`
-/

namespace A010814.P3703888843836942397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1) + 1

end

end A010814.P3703888843836942397

/-! ## A010814.P16281545768420605045

`2*A005279(n+1)`
-/

namespace A010814.P16281545768420605045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005279 (n + 1)

end

end A010814.P16281545768420605045

/-! ## A010814.P10027991507527013481

`2*(lt[1, A270417(n+1)+1]+1)`
-/

namespace A010814.P10027991507527013481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A010814.P10027991507527013481

/-! ## A010814.P11278256821393311627

`2*eq[1, A010892(a(A270417(n)))]` with `a(0)=2`
-/

namespace A010814.P11278256821393311627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A010892 (f2 (A270417 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010814.P11278256821393311627

/-! ## A010814.P12781874564972906031

`∪[A009129(n+1), A098714(n+1)]`
-/

namespace A010814.P12781874564972906031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A010814.P12781874564972906031

/-! ## A010814.P17607831714604400025

`A005279(A000027(n+1))+A005279(n+1)`
-/

namespace A010814.P17607831714604400025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (A000027 (n + 1)).toNat + A005279 (n + 1)

end

end A010814.P17607831714604400025

/-! ## A010814.P15152487811071384855

`A074591(A005279(n+1)+A005279(n+1))`
-/

namespace A010814.P15152487811071384855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (A005279 (n + 1) + A005279 (n + 1)).toNat

end

end A010814.P15152487811071384855

/-! ## A010814.P9885776502406102247

`A005279(n+1)+A005279((n+1)%A005279(n+1))`
-/

namespace A010814.P9885776502406102247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1) + A005279 (Int.tmod (n + 1 : ℤ) (A005279 (n + 1))).toNat

end

end A010814.P9885776502406102247

/-! ## A010814.P1522168802066977435

`A005279(n+1)+A005279(n+1)/A019425(A343501(n+1))`
-/

namespace A010814.P1522168802066977435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005279 (n + 1) : ℚ) + (A005279 (n + 1) : ℚ) / (A019425 (A343501 (n + 1)).toNat : ℚ)

end

end A010814.P1522168802066977435

/-! ## A010814.P3313079517280887218

`A005818(A005279(n+1)-2)+1`
-/

namespace A010814.P3313079517280887218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A005279 (n + 1) - 2).toNat + 1

end

end A010814.P3313079517280887218

/-! ## A010814.P6846689258906143564

`A005408(A005279(n+1)-1)+1`
-/

namespace A010814.P6846689258906143564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005279 (n + 1) - 1).toNat + 1

end

end A010814.P6846689258906143564

/-! ## A010814.P12732549833666112465

`A144396(A005279(n+1)-1)+1`
-/

namespace A010814.P12732549833666112465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A005279 (n + 1) - 1).toNat + 1

end

end A010814.P12732549833666112465

/-! ## A010814.P11271153439198177718

`A020735(A005279(n+1)-1)-1`
-/

namespace A010814.P11271153439198177718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (A005279 (n + 1) - 1).toNat - 1

end

end A010814.P11271153439198177718

/-! ## A010814.P18275251673978925872

`A004277(A005279(n+1))`
-/

namespace A010814.P18275251673978925872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005279 (n + 1)).toNat

end

end A010814.P18275251673978925872

/-! ## A010814.P6586043741562720438

`2*lt[1, A250068(A028310(n))]`
-/

namespace A010814.P6586043741562720438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A010814.P6586043741562720438

/-! ## A010814.P15767770327797974471

`A130773(A005279(n+1)-1)+1`
-/

namespace A010814.P15767770327797974471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A005279 (n + 1) - 1).toNat + 1

end

end A010814.P15767770327797974471

/-! ## A010814.P16964845635457957274

`A062545(A005279(n+1)-1)-1`
-/

namespace A010814.P16964845635457957274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A005279 (n + 1) - 1).toNat - 1

end

end A010814.P16964845635457957274

/-! ## A010814.P5971902968225550103

`A004280(A005279(n+1)+1)+1`
-/

namespace A010814.P5971902968225550103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A005279 (n + 1) + 1).toNat + 1

end

end A010814.P5971902968225550103

/-! ## A010814.P6217888640271676035

`A004273(A005279(n+1)+1)-1`
-/

namespace A010814.P6217888640271676035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A005279 (n + 1) + 1).toNat - 1

end

end A010814.P6217888640271676035

/-! ## A010814.P1495280521379523909

`A004274(A005279(n+1)+1)+1`
-/

namespace A010814.P1495280521379523909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A005279 (n + 1) + 1).toNat + 1

end

end A010814.P1495280521379523909

/-!
# A010815: From Euler's Pentagonal Theorem: coefficient of q^n in Product_{m>=1} (1 - q^m).

The programs for A010815, the canonical program `A010815.P5219802530418017542` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010815 has offset 0).

The definition of A010815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010815.P4359935421055945289

`(-1)^n*A121373(n)`
-/

namespace A010815.P4359935421055945289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121373 n

end

end A010815.P4359935421055945289

namespace A010815

/-- `(-1)^n*A121373(n)` -/
def P4359935421055945289.Spec : Prop :=
  ∀ n, P4359935421055945289.a n = A010815 n

end A010815

/-! ## A010815.P17530884504710521052

`A067661(n)-A067659(n)`
-/

namespace A010815.P17530884504710521052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - A067659 n

end

end A010815.P17530884504710521052

namespace A010815

/-- `A067661(n)-A067659(n)` -/
def P17530884504710521052.Spec : Prop :=
  ∀ n, P17530884504710521052.a n = A010815 n

end A010815

/-! ## A010815.P6527864015057216471

`A274719(2*n)`
-/

namespace A010815.P6527864015057216471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (2 * n)

end

end A010815.P6527864015057216471

namespace A010815

/-- `A274719(2*n)` -/
def P6527864015057216471.Spec : Prop :=
  ∀ n, P6527864015057216471.a n = A010815 n

end A010815

/-! ## A010815.P5219802530418017542

`Δ[A078616(abs(1-n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A010815

/-- `Δ[A078616(abs(1-n))]` -/
def P5219802530418017542.Spec : Prop :=
  ∀ n, P5219802530418017542.a n = A010815 n

theorem P5219802530418017542.correct : P5219802530418017542.Spec := by
  intro n
  simp only [A010815]

end A010815

/-! ## A010815.P4454172684979030976

`floor(acot(n)-A257628(n))`
-/

namespace A010815.P4454172684979030976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A257628 n : ℝ)⌋

end

end A010815.P4454172684979030976

namespace A010815

/-- `floor(acot(n)-A257628(n))` -/
def P4454172684979030976.Spec : Prop :=
  ∀ n, P4454172684979030976.a n = A010815 n

end A010815

/-! ## A010815.P225251665931919409

`A000007(n)-A257628(n)`
-/

namespace A010815.P225251665931919409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A257628 n

end

end A010815.P225251665931919409

namespace A010815

/-- `A000007(n)-A257628(n)` -/
def P225251665931919409.Spec : Prop :=
  ∀ n, P225251665931919409.a n = A010815 n

end A010815

/-! ## A010815.P17399032251853597649

`A121373(n)*A133985(n)`
-/

namespace A010815.P17399032251853597649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n * A133985 n

end

end A010815.P17399032251853597649

namespace A010815

/-- `A121373(n)*A133985(n)` -/
def P17399032251853597649.Spec : Prop :=
  ∀ n, P17399032251853597649.a n = A010815 n

end A010815

/-! ## A010815.P7735538046586232958

`A057077(n)*A206958(n)`
-/

namespace A010815.P7735538046586232958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A206958 n

end

end A010815.P7735538046586232958

namespace A010815

/-- `A057077(n)*A206958(n)` -/
def P7735538046586232958.Spec : Prop :=
  ∀ n, P7735538046586232958.a n = A010815 n

end A010815

/-! ## A010815.P2580229069347153344

`A054977(n)-(A257628(n)+1)`
-/

namespace A010815.P2580229069347153344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - (A257628 n + 1)

end

end A010815.P2580229069347153344

namespace A010815

/-- `A054977(n)-(A257628(n)+1)` -/
def P2580229069347153344.Spec : Prop :=
  ∀ n, P2580229069347153344.a n = A010815 n

end A010815

/-! ## A010815.P10800484209011715115

`2*A067661(n)-A000009(n)`
-/

namespace A010815.P10800484209011715115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067661 n - A000009 n

end

end A010815.P10800484209011715115

namespace A010815

/-- `2*A067661(n)-A000009(n)` -/
def P10800484209011715115.Spec : Prop :=
  ∀ n, P10800484209011715115.a n = A010815 n

end A010815

/-! ## A010815.P7432033515596129988

`A036987(2*n)-A257628(n)`
-/

namespace A010815.P7432033515596129988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) - A257628 n

end

end A010815.P7432033515596129988

namespace A010815

/-- `A036987(2*n)-A257628(n)` -/
def P7432033515596129988.Spec : Prop :=
  ∀ n, P7432033515596129988.a n = A010815 n

end A010815

/-! ## A010815.P3979618280536393664

`2*A186741(n)-A121373(n)²`
-/

namespace A010815.P3979618280536393664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186741 n - A121373 n ^ 2

end

end A010815.P3979618280536393664

namespace A010815

/-- `2*A186741(n)-A121373(n)²` -/
def P3979618280536393664.Spec : Prop :=
  ∀ n, P3979618280536393664.a n = A010815 n

end A010815

/-! ## A010815.P15972743079726481874

`2*A186741(n)-A133985(n)²`
-/

namespace A010815.P15972743079726481874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186741 n - A133985 n ^ 2

end

end A010815.P15972743079726481874

namespace A010815

/-- `2*A186741(n)-A133985(n)²` -/
def P15972743079726481874.Spec : Prop :=
  ∀ n, P15972743079726481874.a n = A010815 n

end A010815

/-! ## A010815.P5180965595235697007

`A010054(A010054(n)+n)-A257628(n)`
-/

namespace A010815.P5180965595235697007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A010054 n + (n : ℤ)).toNat - A257628 n

end

end A010815.P5180965595235697007

namespace A010815

/-- `A010054(A010054(n)+n)-A257628(n)` -/
def P5180965595235697007.Spec : Prop :=
  ∀ n, P5180965595235697007.a n = A010815 n

end A010815

/-! ## A010815.P399610727782482251

`A121373(n)*A206958(n)*A206959(n)`
-/

namespace A010815.P399610727782482251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n * A206958 n * A206959 n

end

end A010815.P399610727782482251

namespace A010815

/-- `A121373(n)*A206958(n)*A206959(n)` -/
def P399610727782482251.Spec : Prop :=
  ∀ n, P399610727782482251.a n = A010815 n

end A010815

/-! ## A010815.P5331722762325682152

`A121373(n)*A128770(n)/A261988(n)`
-/

namespace A010815.P5331722762325682152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121373 n * A128770 n : ℚ) / (A261988 n : ℚ)

end

end A010815.P5331722762325682152

namespace A010815

/-- `A121373(n)*A128770(n)/A261988(n)` -/
def P5331722762325682152.Spec : Prop :=
  ∀ n, P5331722762325682152.a n = (A010815 n : ℚ)

end A010815

/-! ## A010815.P517418049246243134

`A121373(n)*A209615(2*n+1)`
-/

namespace A010815.P517418049246243134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n * A209615 (2 * n + 1)

end

end A010815.P517418049246243134

namespace A010815

/-- `A121373(n)*A209615(2*n+1)` -/
def P517418049246243134.Spec : Prop :=
  ∀ n, P517418049246243134.a n = A010815 n

end A010815

/-! ## A010815.P14591091580414485624

`Δ[A238208(n)-A238215(n)]`
-/

namespace A010815.P14591091580414485624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238208 n - A238215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010815.P14591091580414485624

namespace A010815

/-- `Δ[A238208(n)-A238215(n)]` -/
def P14591091580414485624.Spec : Prop :=
  ∀ n, P14591091580414485624.a n = A010815 n

end A010815

/-! ## A010815.P7558772313169791379

`A204843(A103214(n))`
-/

namespace A010815.P7558772313169791379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (A103214 n).toNat

end

end A010815.P7558772313169791379

namespace A010815

/-- `A204843(A103214(n))` -/
def P7558772313169791379.Spec : Prop :=
  ∀ n, P7558772313169791379.a n = A010815 n

end A010815

/-! ## A010815.P9379538987008365857

`A134756(n)%2`
-/

namespace A010815.P9379538987008365857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134756 n) 2

end

end A010815.P9379538987008365857

namespace A010815

/-- `A134756(n)%2` -/
def P9379538987008365857.Spec : Prop :=
  ∀ n, P9379538987008365857.a n = A010815 n

end A010815

/-!
# A010816: Expansion of Product_{k>=1} (1 - x^k)^3.

The programs for A010816, the canonical program `A010816.P9990213171636561186` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010816 has offset 0).

The definition of A010816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010816.P2776479369271233250

`Δ[A274094(n)]`
-/

namespace A010816.P2776479369271233250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010816.P2776479369271233250

namespace A010816

/-- `Δ[A274094(n)]` -/
def P2776479369271233250.Spec : Prop :=
  ∀ n, P2776479369271233250.a n = A010816 n

end A010816

/-! ## A010816.P4215448876930263319

`Δ[-A274093(n)]`
-/

namespace A010816.P4215448876930263319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A274093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010816.P4215448876930263319

namespace A010816

/-- `Δ[-A274093(n)]` -/
def P4215448876930263319.Spec : Prop :=
  ∀ n, P4215448876930263319.a n = A010816 n

end A010816

/-! ## A010816.P7940017026017728595

`Δ[A181983(round(sqrt(2*n)))]`
-/

namespace A010816.P7940017026017728595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010816.P7940017026017728595

namespace A010816

/-- `Δ[A181983(round(sqrt(2*n)))]` -/
def P7940017026017728595.Spec : Prop :=
  ∀ n, P7940017026017728595.a n = A010816 n

end A010816

/-! ## A010816.P14429749994429493567

`Δ[-A038608(round(sqrt(2*n)))]`
-/

namespace A010816.P14429749994429493567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A038608 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010816.P14429749994429493567

namespace A010816

/-- `Δ[-A038608(round(sqrt(2*n)))]` -/
def P14429749994429493567.Spec : Prop :=
  ∀ n, P14429749994429493567.a n = A010816 n

end A010816

/-! ## A010816.P8599721786469147298

`(2*(C(comp[∑[n]]-n, 2)-n)-1)*A197870(n)`
-/

namespace A010816.P8599721786469147298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1) * A197870 n

end

end A010816.P8599721786469147298

namespace A010816

/-- `(2*(C(comp[∑[n]]-n, 2)-n)-1)*A197870(n)` -/
def P8599721786469147298.Spec : Prop :=
  ∀ n, P8599721786469147298.a n = A010816 n

end A010816

/-! ## A010816.P9990213171636561186

`A374157(A198954(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A010816

/-- `A374157(A198954(n))` -/
def P9990213171636561186.Spec : Prop :=
  ∀ n, P9990213171636561186.a n = A010816 n

theorem P9990213171636561186.correct : P9990213171636561186.Spec := by
  intro n
  simp only [A010816]

end A010816

/-! ## A010816.P65022614745754257

`A033999(n)*A133089(n)`
-/

namespace A010816.P65022614745754257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A133089 n

end

end A010816.P65022614745754257

namespace A010816

/-- `A033999(n)*A133089(n)` -/
def P65022614745754257.Spec : Prop :=
  ∀ n, P65022614745754257.a n = A010816 n

end A010816

/-! ## A010816.P17618243655611206164

`A027170(n)*A197870(n)`
-/

namespace A010816.P17618243655611206164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 n * A197870 n

end

end A010816.P17618243655611206164

namespace A010816

/-- `A027170(n)*A197870(n)` -/
def P17618243655611206164.Spec : Prop :=
  ∀ n, P17618243655611206164.a n = A010816 n

end A010816

/-! ## A010816.P16630272543633205150

`A029620(n)*A197870(n)`
-/

namespace A010816.P16630272543633205150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029620 n * A197870 n

end

end A010816.P16630272543633205150

namespace A010816

/-- `A029620(n)*A197870(n)` -/
def P16630272543633205150.Spec : Prop :=
  ∀ n, P16630272543633205150.a n = A010816 n

end A010816

/-! ## A010816.P12402985067382810098

`A106459(n)*A133089(n)`
-/

namespace A010816.P12402985067382810098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 n * A133089 n

end

end A010816.P12402985067382810098

namespace A010816

/-- `A106459(n)*A133089(n)` -/
def P12402985067382810098.Spec : Prop :=
  ∀ n, P12402985067382810098.a n = A010816 n

end A010816

/-! ## A010816.P17498287705680250389

`A108086(n)*A133089(n)`
-/

namespace A010816.P17498287705680250389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n * A133089 n

end

end A010816.P17498287705680250389

namespace A010816

/-- `A108086(n)*A133089(n)` -/
def P17498287705680250389.Spec : Prop :=
  ∀ n, P17498287705680250389.a n = A010816 n

end A010816

/-! ## A010816.P10935944718769567163

`A130777(n)*A133089(n)`
-/

namespace A010816.P10935944718769567163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130777 n * A133089 n

end

end A010816.P10935944718769567163

namespace A010816

/-- `A130777(n)*A133089(n)` -/
def P10935944718769567163.Spec : Prop :=
  ∀ n, P10935944718769567163.a n = A010816 n

end A010816

/-! ## A010816.P348785103965073220

`A066170(n)*A198954(n)`
-/

namespace A010816.P348785103965073220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066170 n * A198954 n

end

end A010816.P348785103965073220

namespace A010816

/-- `A066170(n)*A198954(n)` -/
def P348785103965073220.Spec : Prop :=
  ∀ n, P348785103965073220.a n = A010816 n

end A010816

/-! ## A010816.P2346098025761491942

`A076756(n)*A198954(n)`
-/

namespace A010816.P2346098025761491942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 n * A198954 n

end

end A010816.P2346098025761491942

namespace A010816

/-- `A076756(n)*A198954(n)` -/
def P2346098025761491942.Spec : Prop :=
  ∀ n, P2346098025761491942.a n = A010816 n

end A010816

/-! ## A010816.P4542153481277222015

`A091698(n)*A198954(n)`
-/

namespace A010816.P4542153481277222015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091698 n * A198954 n

end

end A010816.P4542153481277222015

namespace A010816

/-- `A091698(n)*A198954(n)` -/
def P4542153481277222015.Spec : Prop :=
  ∀ n, P4542153481277222015.a n = A010816 n

end A010816

/-! ## A010816.P385443201763182563

`A097807(n)*A198954(n)`
-/

namespace A010816.P385443201763182563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A198954 n

end

end A010816.P385443201763182563

namespace A010816

/-- `A097807(n)*A198954(n)` -/
def P385443201763182563.Spec : Prop :=
  ∀ n, P385443201763182563.a n = A010816 n

end A010816

/-! ## A010816.P18107383076988825305

`A099375(n)*A197870(n)`
-/

namespace A010816.P18107383076988825305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n * A197870 n

end

end A010816.P18107383076988825305

namespace A010816

/-- `A099375(n)*A197870(n)` -/
def P18107383076988825305.Spec : Prop :=
  ∀ n, P18107383076988825305.a n = A010816 n

end A010816

/-! ## A010816.P7020455809615687763

`A103327(n)*A197870(n)`
-/

namespace A010816.P7020455809615687763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103327 n * A197870 n

end

end A010816.P7020455809615687763

namespace A010816

/-- `A103327(n)*A197870(n)` -/
def P7020455809615687763.Spec : Prop :=
  ∀ n, P7020455809615687763.a n = A010816 n

end A010816

/-! ## A010816.P17138633764655365986

`A104734(n)*A197870(n)`
-/

namespace A010816.P17138633764655365986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104734 n * A197870 n

end

end A010816.P17138633764655365986

namespace A010816

/-- `A104734(n)*A197870(n)` -/
def P17138633764655365986.Spec : Prop :=
  ∀ n, P17138633764655365986.a n = A010816 n

end A010816

/-! ## A010816.P4264328037048161939

`A105020(n)*A197870(n)`
-/

namespace A010816.P4264328037048161939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n * A197870 n

end

end A010816.P4264328037048161939

namespace A010816

/-- `A105020(n)*A197870(n)` -/
def P4264328037048161939.Spec : Prop :=
  ∀ n, P4264328037048161939.a n = A010816 n

end A010816

/-!
# A010817: Expansion of Product_{k>=1} (1 - x^k)^9.

The programs for A010817, there is no canonical definition to state claims against.
-/

/-! ## A010817.P10777561940460143062

`A286354(A056000(n+6))`
-/

namespace A010817.P10777561940460143062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A056000 (n + 6)).toNat

end

end A010817.P10777561940460143062

/-! ## A010817.P2556168541870212122

`A286354(Δ[A111144(n+1)])`
-/

namespace A010817.P2556168541870212122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (f1 (n + 1) - f1 n).toNat

end

end A010817.P2556168541870212122

/-! ## A010817.P16596322136256423386

`A286354(A052905(n+7)-5)`
-/

namespace A010817.P16596322136256423386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A052905 (n + 7) - 5).toNat

end

end A010817.P16596322136256423386

/-! ## A010817.P6470006358176891208

`A286354(A000217(n+10)-10)`
-/

namespace A010817.P6470006358176891208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000217 (n + 10) - 10).toNat

end

end A010817.P6470006358176891208

/-! ## A010817.P13904776634649771773

`A286354(A000124(n+9)-(1-n))`
-/

namespace A010817.P13904776634649771773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000124 (n + 9) - (1 - (n : ℤ))).toNat

end

end A010817.P13904776634649771773

/-! ## A010817.P6905209028744076328

`A286354(A055999(n+6)+n+6)`
-/

namespace A010817.P6905209028744076328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A055999 (n + 6) + (n + 6 : ℤ)).toNat

end

end A010817.P6905209028744076328

/-! ## A010817.P12660357537548889584

`A286354(A167614(n+8)-(3-n))`
-/

namespace A010817.P12660357537548889584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A167614 (n + 8) - (3 - (n : ℤ))).toNat

end

end A010817.P12660357537548889584

/-! ## A010817.P7825300952519308754

`A050312((n+1)²+n²)`
-/

namespace A010817.P7825300952519308754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050312 ((n + 1) ^ 2 + n ^ 2)

end

end A010817.P7825300952519308754

/-!
# A010818: Expansion of Product (1 - x^k)^10 in powers of x.

The programs for A010818, there is no canonical definition to state claims against.
-/

/-! ## A010818.P15515687118838392489

`A234565(3*n+1)/48`
-/

namespace A010818.P15515687118838392489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234565 (3 * n + 1) : ℚ) / 48

end

end A010818.P15515687118838392489

/-! ## A010818.P10830515557752275802

`A286354(A000217(n+11)-11)`
-/

namespace A010818.P10830515557752275802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000217 (n + 11) - 11).toNat

end

end A010818.P10830515557752275802

/-! ## A010818.P16117551496307774941

`A286354(A055999(n+7)+n+6)`
-/

namespace A010818.P16117551496307774941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A055999 (n + 7) + (n + 6 : ℤ)).toNat

end

end A010818.P16117551496307774941

/-! ## A010818.P10347852925057809452

`A286354(A167614(n+9)-(3-n))`
-/

namespace A010818.P10347852925057809452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A167614 (n + 9) - (3 - (n : ℤ))).toNat

end

end A010818.P10347852925057809452

/-! ## A010818.P13830616812307296010

`A286354(A000096(n+8)+2*n+11)`
-/

namespace A010818.P13830616812307296010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000096 (n + 8) + (2 * n + 11 : ℤ)).toNat

end

end A010818.P13830616812307296010

/-! ## A010818.P17148487293504074913

`A050313((n+1)²+n²)`
-/

namespace A010818.P17148487293504074913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050313 ((n + 1) ^ 2 + n ^ 2)

end

end A010818.P17148487293504074913

/-!
# A010819: Expansion of Product_{k>=1} (1 - x^k)^11.

The programs for A010819, there is no canonical definition to state claims against.
-/

/-! ## A010819.P12491790586551117587

`A286354(A000217(n+12)-12)`
-/

namespace A010819.P12491790586551117587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000217 (n + 12) - 12).toNat

end

end A010819.P12491790586551117587

/-! ## A010819.P8576068929260408842

`A286354(eq[12, A004736(n+1)])`
-/

namespace A010819.P8576068929260408842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010819.P8576068929260408842

/-! ## A010819.P1350723405948803905

`A286354(A052905(n+8)+n+5)`
-/

namespace A010819.P1350723405948803905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A052905 (n + 8) + (n + 5 : ℤ)).toNat

end

end A010819.P1350723405948803905

/-! ## A010819.P4948383758628470525

`A286354(A055999(n+8)+n+6)`
-/

namespace A010819.P4948383758628470525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A055999 (n + 8) + (n + 6 : ℤ)).toNat

end

end A010819.P4948383758628470525

/-! ## A010819.P5555346717633528668

`A286354(A167614(n+10)-(3-n))`
-/

namespace A010819.P5555346717633528668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A167614 (n + 10) - (3 - (n : ℤ))).toNat

end

end A010819.P5555346717633528668

/-!
# A010820: Expansion of Product_{k>=1} (1 - x^k)^13.

The programs for A010820, there is no canonical definition to state claims against.
-/

/-! ## A010820.P13055585391000538144

`A286354(eq[13, A025581(n)])`
-/

namespace A010820.P13055585391000538144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010820.P13055585391000538144

/-! ## A010820.P14664553475829234901

`A286354(eq[14, A004736(n+1)])`
-/

namespace A010820.P14664553475829234901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010820.P14664553475829234901

/-! ## A010820.P14245065068600380585

`A286354(A000217(n+13)+n)`
-/

namespace A010820.P14245065068600380585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000217 (n + 13) + (n : ℤ)).toNat

end

end A010820.P14245065068600380585

/-! ## A010820.P5744420715779636934

`A286354(A167614(n+12)-(3-n))`
-/

namespace A010820.P5744420715779636934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A167614 (n + 12) - (3 - (n : ℤ))).toNat

end

end A010820.P5744420715779636934

/-! ## A010820.P13961279997172244220

`A286354(A046691(n+8)+A008574(n+10))`
-/

namespace A010820.P13961279997172244220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A046691 (n + 8) + A008574 (n + 10)).toNat

end

end A010820.P13961279997172244220

/-!
# A010821: Expansion of Product_{k>=1} (1 - x^k)^14.

The programs for A010821, there is no canonical definition to state claims against.
-/

/-! ## A010821.P1125874437568133526

`A286354(A056115(n+10))`
-/

namespace A010821.P1125874437568133526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A056115 (n + 10)).toNat

end

end A010821.P1125874437568133526

/-! ## A010821.P3526770987890165187

`A286354(eq[15, A004736(n+1)])`
-/

namespace A010821.P3526770987890165187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010821.P3526770987890165187

/-! ## A010821.P15746203718666081078

`A286354(A000217(n+14)+n)`
-/

namespace A010821.P15746203718666081078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000217 (n + 14) + (n : ℤ)).toNat

end

end A010821.P15746203718666081078

/-! ## A010821.P4113245553968094144

`A286354(A046691(n+12)+n+4)`
-/

namespace A010821.P4113245553968094144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A046691 (n + 12) + (n + 4 : ℤ)).toNat

end

end A010821.P4113245553968094144

/-! ## A010821.P16088534287281384321

`A286354(A167614(n+13)-(3-n))`
-/

namespace A010821.P16088534287281384321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A167614 (n + 13) - (3 - (n : ℤ))).toNat

end

end A010821.P16088534287281384321

/-!
# A010822: Expansion of Product_{k>=1} (1 - x^k)^15.

The programs for A010822, there is no canonical definition to state claims against.
-/

/-! ## A010822.P13406896721975256950

`A286354(eq[15, A025581(n)])`
-/

namespace A010822.P13406896721975256950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010822.P13406896721975256950

/-! ## A010822.P14153432496534612568

`A286354(eq[16, A193739(n)])`
-/

namespace A010822.P14153432496534612568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010822.P14153432496534612568

/-! ## A010822.P15046537153157567806

`A286354(eq[16, A004736(n+1)])`
-/

namespace A010822.P15046537153157567806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010822.P15046537153157567806

/-! ## A010822.P14720138920903967184

`A286354(A000217(n+15)+n)`
-/

namespace A010822.P14720138920903967184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000217 (n + 15) + (n : ℤ)).toNat

end

end A010822.P14720138920903967184

/-! ## A010822.P2018972949209896684

`A286354(A167614(n+14)-(3-n))`
-/

namespace A010822.P2018972949209896684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A167614 (n + 14) - (3 - (n : ℤ))).toNat

end

end A010822.P2018972949209896684

/-!
# A010823: Expansion of Product_{k>=1} (1 - x^k)^17.

The programs for A010823, there is no canonical definition to state claims against.
-/

/-! ## A010823.P13787229175245485902

`A286354(eq[17, A025581(n)])`
-/

namespace A010823.P13787229175245485902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010823.P13787229175245485902

/-! ## A010823.P1501548698016288016

`A286354(eq[18, A193739(n)])`
-/

namespace A010823.P1501548698016288016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010823.P1501548698016288016

/-! ## A010823.P18104227823571213046

`A286354(eq[35, A099375(n)])`
-/

namespace A010823.P18104227823571213046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010823.P18104227823571213046

/-! ## A010823.P6130514831213511315

`A286354(eq[18, A004736(n+1)])`
-/

namespace A010823.P6130514831213511315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010823.P6130514831213511315

/-! ## A010823.P15736483290651571614

`A286354(A167614(n+16)-(3-n))`
-/

namespace A010823.P15736483290651571614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A167614 (n + 16) - (3 - (n : ℤ))).toNat

end

end A010823.P15736483290651571614

/-!
# A010824: Expansion of Product_{k>=1} (1 - x^k)^18.

The programs for A010824, there is no canonical definition to state claims against.
-/

/-! ## A010824.P14656164214034212018

`A286354(eq[18, A025581(n)])`
-/

namespace A010824.P14656164214034212018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010824.P14656164214034212018

/-! ## A010824.P7308527821568027998

`A286354(A004768(n+12)+A000217(n+11))`
-/

namespace A010824.P7308527821568027998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A004768 (n + 12) + A000217 (n + 11)).toNat

end

end A010824.P7308527821568027998

/-!
# A010825: Expansion of Product_{k>=1} (1 - x^k)^19.

The programs for A010825, there is no canonical definition to state claims against.
-/

/-! ## A010825.P12241960350056932862

`A286354(eq[19, A025581(n)])`
-/

namespace A010825.P12241960350056932862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010825.P12241960350056932862

/-! ## A010825.P14905698776272796164

`A286354(A000217(n+19)+n)`
-/

namespace A010825.P14905698776272796164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000217 (n + 19) + (n : ℤ)).toNat

end

end A010825.P14905698776272796164

/-! ## A010825.P15676851091875130744

`A286354(A167614(n+16)+A016777(n+11))`
-/

namespace A010825.P15676851091875130744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A167614 (n + 16) + A016777 (n + 11)).toNat

end

end A010825.P15676851091875130744

/-!
# A010826: Expansion of Product_{k>=1} (1 - x^k)^20.

The programs for A010826, there is no canonical definition to state claims against.
-/

/-! ## A010826.P14318886070259531919

`A286354(eq[20, A025581(n)])`
-/

namespace A010826.P14318886070259531919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010826.P14318886070259531919

/-! ## A010826.P12845180224592600075

`A286354(eq[21, A004736(n+1)])`
-/

namespace A010826.P12845180224592600075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010826.P12845180224592600075

/-!
# A010829: Expansion of Product_{k>=1} (1 - x^k)^23.

The programs for A010829, there is no canonical definition to state claims against.
-/

/-! ## A010829.P10598793943188177877

`A286354(eq[23, A025581(n)])`
-/

namespace A010829.P10598793943188177877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010829.P10598793943188177877

/-!
# A010836: Expansion of Product_{k>=1} (1-x^k)^31.

The programs for A010836, there is no canonical definition to state claims against.
-/

/-! ## A010836.P8453514350879159787

`A286354(eq[32, A004736(n+1)])`
-/

namespace A010836.P8453514350879159787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010836.P8453514350879159787

/-!
# A010838: Expansion of Product_{k>=1} (1-x^k)^44.

The programs for A010838, there is no canonical definition to state claims against.
-/

/-! ## A010838.P9605762824421145273

`A286354(eq[44, A025581(n)])`
-/

namespace A010838.P9605762824421145273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010838.P9605762824421145273

/-!
# A010842: Expansion of e.g.f.: exp(2*x)/(1-x).

The programs for A010842, the canonical program `A010842.P16138916249886609915` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010842 has offset 0).

The definition of A010842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010842.P16138916249886609915

`n*a(n-1)+2^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010842

/-- `n*a(n-1)+2^n` -/
def P16138916249886609915.Spec : Prop :=
  ∀ n, (P16138916249886609915.a n : ℤ) = A010842 n

theorem P16138916249886609915.correct : P16138916249886609915.Spec := by
  intro n
  simp only [A010842]

end A010842

/-! ## A010842.P13072036200892553847

`A066534(n)+2^n`
-/

namespace A010842.P13072036200892553847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066534 n + (2 ^ n : ℤ)

end

end A010842.P13072036200892553847

namespace A010842

/-- `A066534(n)+2^n` -/
def P13072036200892553847.Spec : Prop :=
  ∀ n, P13072036200892553847.a n = A010842 n

end A010842

/-! ## A010842.P7009837072081487281

`2^n+a(n-1)/cot(atan(n))` with `a(0)=1`
-/

namespace A010842.P7009837072081487281
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℝ) + a (n - 1) / Real.cot (Real.arctan (n : ℝ))

end

end A010842.P7009837072081487281

namespace A010842

/-- `2^n+a(n-1)/cot(atan(n))` -/
def P7009837072081487281.Spec : Prop :=
  ∀ n, P7009837072081487281.a n = (A010842 n : ℝ)

end A010842

/-! ## A010842.P13453899166648230259

`2^n+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A010842.P13453899166648230259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A010842.P13453899166648230259

namespace A010842

/-- `2^n+a(n-1)/n^(-1)` -/
def P13453899166648230259.Spec : Prop :=
  ∀ n, P13453899166648230259.a n = (A010842 n : ℚ)

end A010842

/-! ## A010842.P2463316370713028016

`floor(n*a(floor(n²/(n+1))))+2^n` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A010842.P2463316370713028016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat + 2 ^ n

end

end A010842.P2463316370713028016

namespace A010842

/-- `floor(n*a(floor(n²/(n+1))))+2^n` -/
def P2463316370713028016.Spec : Prop :=
  ∀ n, (P2463316370713028016.a n : ℤ) = A010842 n

end A010842

/-! ## A010842.P9878142749202659938

`Δ[A295518(n)]`
-/

namespace A010842.P9878142749202659938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010842.P9878142749202659938

namespace A010842

/-- `Δ[A295518(n)]` -/
def P9878142749202659938.Spec : Prop :=
  ∀ n, P9878142749202659938.a n = A010842 n

end A010842

/-! ## A010842.P10699805606528492584

`A195254(n+1)/2`
-/

namespace A010842.P10699805606528492584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195254 (n + 1) : ℚ) / 2

end

end A010842.P10699805606528492584

namespace A010842

/-- `A195254(n+1)/2` -/
def P10699805606528492584.Spec : Prop :=
  ∀ n, P10699805606528492584.a n = (A010842 n : ℚ)

end A010842

/-! ## A010842.P8684905815704433572

`A080955(∑[n+3])`
-/

namespace A010842.P8684905815704433572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A010842.P8684905815704433572

namespace A010842

/-- `A080955(∑[n+3])` -/
def P8684905815704433572.Spec : Prop :=
  ∀ n, P8684905815704433572.a n = A010842 n

end A010842

/-! ## A010842.P11670461801686489446

`A066534(n+1)/(n+1)`
-/

namespace A010842.P11670461801686489446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066534 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A010842.P11670461801686489446

namespace A010842

/-- `A066534(n+1)/(n+1)` -/
def P11670461801686489446.Spec : Prop :=
  ∀ n, P11670461801686489446.a n = (A010842 n : ℚ)

end A010842

/-!
# A010843: Incomplete Gamma Function at -3.

The programs for A010843, there is no canonical definition to state claims against.
-/

/-! ## A010843.P3829202508502328936

`(-3)^n+n*a(n-1)` with `a(0)=1`
-/

namespace A010843.P3829202508502328936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-3) ^ n + (n : ℤ) * a (n - 1)

end

end A010843.P3829202508502328936

/-! ## A010843.P299271824963091031

`(-3)^n+a(n-1)/tan(acot(n))` with `a(0)=1`
-/

namespace A010843.P299271824963091031
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((-3) ^ n : ℝ) + a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A010843.P299271824963091031

/-! ## A010843.P16248315684963903343

`A053486(n)-6*A296661(n)`
-/

namespace A010843.P16248315684963903343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053486 n - 6 * A296661 n

end

end A010843.P16248315684963903343

/-! ## A010843.P18373843768492261553

`A292977(∑[n+4]+2)`
-/

namespace A010843.P18373843768492261553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292977 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A010843.P18373843768492261553

/-!
# A010844: a(n) = 2*n*a(n-1) + 1 with a(0) = 1.

The programs for A010844, the canonical program `A010844.P15729706929330865865` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010844 has offset 0).

The definition of A010844 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*a(n-1)+1` (program `A010844.P15729706929330865865`, by `A010844.P15729706929330865865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010844.P15729706929330865865

`2*n*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010844

/-- `2*n*a(n-1)+1` -/
def P15729706929330865865.Spec : Prop :=
  ∀ n, (P15729706929330865865.a n : ℤ) = A010844 n

theorem P15729706929330865865.correct : P15729706929330865865.Spec := by
  intro n
  simp only [A010844]

end A010844

/-! ## A010844.P11523741140779653243

`floor(n!*e^(1/2)*2^n)`
-/

namespace A010844.P11523741140779653243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℝ) * Real.exp 1 ^ ((1 : ℚ) / 2 : ℝ) * (2 ^ n : ℝ)⌋

end

end A010844.P11523741140779653243

namespace A010844

/-- `floor(n!*e^(1/2)*2^n)` -/
def P11523741140779653243.Spec : Prop :=
  ∀ n, P11523741140779653243.a n = A010844 n

end A010844

/-! ## A010844.P1760524970712308472

`A056541(n)+A000165(n)`
-/

namespace A010844.P1760524970712308472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056541 n + A000165 n

end

end A010844.P1760524970712308472

namespace A010844

/-- `A056541(n)+A000165(n)` -/
def P1760524970712308472.Spec : Prop :=
  ∀ n, P1760524970712308472.a n = A010844 n

end A010844

/-! ## A010844.P4122610114258810874

`or(1, 2*n*a(n-1))` with `a(0)=1`
-/

namespace A010844.P4122610114258810874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (2 * (n * a (n - 1)))

end

end A010844.P4122610114258810874

namespace A010844

/-- `or(1, 2*n*a(n-1))` -/
def P4122610114258810874.Spec : Prop :=
  ∀ n, (P4122610114258810874.a n : ℤ) = A010844 n

end A010844

/-! ## A010844.P12139844045851446052

`xor(1, 2*n*a(n-1))` with `a(0)=1`
-/

namespace A010844.P12139844045851446052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (2 * (n * a (n - 1)))

end

end A010844.P12139844045851446052

namespace A010844

/-- `xor(1, 2*n*a(n-1))` -/
def P12139844045851446052.Spec : Prop :=
  ∀ n, (P12139844045851446052.a n : ℤ) = A010844 n

end A010844

/-! ## A010844.P4510623964620348558

`floor(exp(1/2)*n!*2^n)`
-/

namespace A010844.P4510623964620348558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((1 : ℚ) / 2 : ℝ) * (Nat.factorial n : ℝ) * (2 ^ n : ℝ)⌋

end

end A010844.P4510623964620348558

namespace A010844

/-- `floor(exp(1/2)*n!*2^n)` -/
def P4510623964620348558.Spec : Prop :=
  ∀ n, P4510623964620348558.a n = A010844 n

end A010844

/-! ## A010844.P12427854721656552890

`3-2*(1-n*a(n-1))` with `a(0)=1`
-/

namespace A010844.P12427854721656552890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - 2 * (1 - (n : ℤ) * a (n - 1))

end

end A010844.P12427854721656552890

namespace A010844

/-- `3-2*(1-n*a(n-1))` -/
def P12427854721656552890.Spec : Prop :=
  ∀ n, P12427854721656552890.a n = A010844 n

end A010844

/-! ## A010844.P17905522477149041888

`2*n*a(xor(-1, -n))+1` with `a(0)=1`
-/

namespace A010844.P17905522477149041888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n * a (Int.xor (-1) (-(n : ℤ))).toNat + 1

end

end A010844.P17905522477149041888

namespace A010844

/-- `2*n*a(xor(-1, -n))+1` -/
def P17905522477149041888.Spec : Prop :=
  ∀ n, (P17905522477149041888.a n : ℤ) = A010844 n

end A010844

/-! ## A010844.P11564845590551330919

`Δ[A353546(n)]`
-/

namespace A010844.P11564845590551330919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010844.P11564845590551330919

namespace A010844

/-- `Δ[A353546(n)]` -/
def P11564845590551330919.Spec : Prop :=
  ∀ n, P11564845590551330919.a n = A010844 n

end A010844

/-! ## A010844.P8538981421202532077

`A161380(∑[n]+n)`
-/

namespace A010844.P8538981421202532077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161380 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A010844.P8538981421202532077

namespace A010844

/-- `A161380(∑[n]+n)` -/
def P8538981421202532077.Spec : Prop :=
  ∀ n, P8538981421202532077.a n = A010844 n

end A010844

/-!
# A010845: a(n) = 3*n*a(n-1) + 1, a(0) = 1.

The programs for A010845, the canonical program `A010845.P7092670936146421156` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010845 has offset 0).

The definition of A010845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*a(n-1)+1` (program `A010845.P7092670936146421156`, by `A010845.P7092670936146421156.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010845.P7092670936146421156

`3*n*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010845

/-- `3*n*a(n-1)+1` -/
def P7092670936146421156.Spec : Prop :=
  ∀ n, (P7092670936146421156.a n : ℤ) = A010845 n

theorem P7092670936146421156.correct : P7092670936146421156.Spec := by
  intro n
  simp only [A010845]

end A010845

/-! ## A010845.P4274235619517227305

`floor(n!*e^(1/3)*3^n)`
-/

namespace A010845.P4274235619517227305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℝ) * Real.exp 1 ^ ((1 : ℚ) / 3 : ℝ) * (3 ^ n : ℝ)⌋

end

end A010845.P4274235619517227305

namespace A010845

/-- `floor(n!*e^(1/3)*3^n)` -/
def P4274235619517227305.Spec : Prop :=
  ∀ n, P4274235619517227305.a n = A010845 n

end A010845

/-! ## A010845.P11587246038597273302

`4-3*(1-n*a(n-1))` with `a(0)=1`
-/

namespace A010845.P11587246038597273302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - 3 * (1 - (n : ℤ) * a (n - 1))

end

end A010845.P11587246038597273302

namespace A010845

/-- `4-3*(1-n*a(n-1))` -/
def P11587246038597273302.Spec : Prop :=
  ∀ n, P11587246038597273302.a n = A010845 n

end A010845

/-! ## A010845.P18257617453062598380

`3*floor(n*a(floor(n²/(n+1))))+1` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A010845.P18257617453062598380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * (n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat) + 1

end

end A010845.P18257617453062598380

namespace A010845

/-- `3*floor(n*a(floor(n²/(n+1))))+1` -/
def P18257617453062598380.Spec : Prop :=
  ∀ n, (P18257617453062598380.a n : ℤ) = A010845 n

end A010845

/-! ## A010845.P7048000726520589393

`Δ[A353547(n)]`
-/

namespace A010845.P7048000726520589393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010845.P7048000726520589393

namespace A010845

/-- `Δ[A353547(n)]` -/
def P7048000726520589393.Spec : Prop :=
  ∀ n, P7048000726520589393.a n = A010845 n

end A010845

/-! ## A010845.P11994481761160233463

`a(n-1)*A008486(n)+1` with `a(0)=1`
-/

namespace A010845.P11994481761160233463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008486 n + 1

end

end A010845.P11994481761160233463

namespace A010845

/-- `a(n-1)*A008486(n)+1` -/
def P11994481761160233463.Spec : Prop :=
  ∀ n, P11994481761160233463.a n = A010845 n

end A010845

/-! ## A010845.P9959370772314313466

`a(n-1)*A008585(n)+1` with `a(0)=1`
-/

namespace A010845.P9959370772314313466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008585 n + 1

end

end A010845.P9959370772314313466

namespace A010845

/-- `a(n-1)*A008585(n)+1` -/
def P9959370772314313466.Spec : Prop :=
  ∀ n, P9959370772314313466.a n = A010845 n

end A010845

/-! ## A010845.P17080221298474913638

`A353547(n+1)-A353547(n)`
-/

namespace A010845.P17080221298474913638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353547 (n + 1) - A353547 n

end

end A010845.P17080221298474913638

namespace A010845

/-- `A353547(n+1)-A353547(n)` -/
def P17080221298474913638.Spec : Prop :=
  ∀ n, P17080221298474913638.a n = A010845 n

end A010845

/-!
# A010846: Number of numbers <= n whose set of prime factors is a subset of the set of prime factors of n.

The programs for A010846, there is no canonical definition to state claims against.
-/

/-! ## A010846.P13706390019501998913

`1-A010847(n+1)+n`
-/

namespace A010846.P13706390019501998913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010847 (n + 1) + (n : ℤ)

end

end A010846.P13706390019501998913

/-! ## A010846.P10273444340403003689

`A243822(n+1)+Δ[A054519(n)]`
-/

namespace A010846.P10273444340403003689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) + (f1 (n + 1) - f1 n)

end

end A010846.P10273444340403003689

/-! ## A010846.P17286289593031819557

`A243822(n+1)+A000005(n+1)`
-/

namespace A010846.P17286289593031819557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) + A000005 (n + 1)

end

end A010846.P17286289593031819557

/-! ## A010846.P6063710713750721494

`A299990(n+1)+A062011(n+1)`
-/

namespace A010846.P6063710713750721494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1) + A062011 (n + 1)

end

end A010846.P6063710713750721494

/-! ## A010846.P17522790895555119478

`A365788(n+1)+A008479(n+1)`
-/

namespace A010846.P17522790895555119478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365788 (n + 1) + A008479 (n + 1)

end

end A010846.P17522790895555119478

/-! ## A010846.P6411494192198436659

`A373738(n+1)+A372192(n+1)`
-/

namespace A010846.P6411494192198436659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373738 (n + 1) + A372192 (n + 1)

end

end A010846.P6411494192198436659

/-! ## A010846.P16747278635850485701

`A381800(n+1)-A381804(n+1)`
-/

namespace A010846.P16747278635850485701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381800 (n + 1) - A381804 (n + 1)

end

end A010846.P16747278635850485701

/-! ## A010846.P6694057802215604492

`A299990(n+1)+2*A000005(n+1)`
-/

namespace A010846.P6694057802215604492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1) + 2 * A000005 (n + 1)

end

end A010846.P6694057802215604492

/-! ## A010846.P14273966173499476173

`2*A243822(n+1)-A299990(n+1)`
-/

namespace A010846.P14273966173499476173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A243822 (n + 1) - A299990 (n + 1)

end

end A010846.P14273966173499476173

/-! ## A010846.P11178515514519599434

`A008479(n+1)+A375011(n+1)+A372192(n+1)`
-/

namespace A010846.P11178515514519599434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (n + 1) + (A375011 (n + 1) + A372192 (n + 1))

end

end A010846.P11178515514519599434

/-! ## A010846.P17988188960156622599

`A000005(n+1)+A045763(n+1)-A243823(n+1)`
-/

namespace A010846.P17988188960156622599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A045763 (n + 1) - A243823 (n + 1))

end

end A010846.P17988188960156622599

/-! ## A010846.P7318893004364780944

`A376567(n+1)+A376846(n+1)-A376847(n+1)`
-/

namespace A010846.P7318893004364780944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376567 (n + 1) + (A376846 (n + 1) - A376847 (n + 1))

end

end A010846.P7318893004364780944

/-! ## A010846.P5235082840606897952

`Δ[eq[1, A162306(n+1)]]`
-/

namespace A010846.P5235082840606897952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A010846.P5235082840606897952

/-! ## A010846.P18406440037815844716

`Δ[eq[1, A275280(n+1)]]`
-/

namespace A010846.P18406440037815844716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275280 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A010846.P18406440037815844716

/-! ## A010846.P6315095512619744056

`Δ[lt[A280269(n+1), 1]]`
-/

namespace A010846.P6315095512619744056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280269 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A010846.P6315095512619744056

/-! ## A010846.P1239482726380627898

`A008479(A064549(n+1))`
-/

namespace A010846.P1239482726380627898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A064549 (n + 1)).toNat

end

end A010846.P1239482726380627898

/-! ## A010846.P2037908803074322530

`A008479((n+1)*A007947(n+1))`
-/

namespace A010846.P2037908803074322530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A010846.P2037908803074322530

/-! ## A010846.P13397887177172040691

`A008479((n+1)*A304776(A062759(n+1)))`
-/

namespace A010846.P13397887177172040691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 ((n + 1 : ℤ) * A304776 (A062759 (n + 1)).toNat).toNat

end

end A010846.P13397887177172040691

/-!
# A010847: Number of numbers <= n with a prime factor that does not divide n.

The programs for A010847, there is no canonical definition to state claims against.
-/

/-! ## A010847.P7704435999083110322

`n+1-A010846(n+1)`
-/

namespace A010847.P7704435999083110322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A010846 (n + 1)

end

end A010847.P7704435999083110322

/-! ## A010847.P10107141285359989353

`A243823(n+1)+A109606(n+1)`
-/

namespace A010847.P10107141285359989353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1) + A109606 (n + 1)

end

end A010847.P10107141285359989353

/-! ## A010847.P3180635358203286853

`A381804(n+1)+A381802(n+1)`
-/

namespace A010847.P3180635358203286853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381804 (n + 1) + A381802 (n + 1)

end

end A010847.P3180635358203286853

/-! ## A010847.P7174909856068283262

`A049820(n+1)-A243822(n+1)`
-/

namespace A010847.P7174909856068283262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A243822 (n + 1)

end

end A010847.P7174909856068283262

/-! ## A010847.P16809641186274387768

`A000010(n+1)+A243823(n+1)-1`
-/

namespace A010847.P16809641186274387768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A243823 (n + 1) - 1)

end

end A010847.P16809641186274387768

/-! ## A010847.P12063955181347627039

`1-(A243822(n+1)+A000005(n+1))+n`
-/

namespace A010847.P12063955181347627039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A243822 (n + 1) + A000005 (n + 1)) + (n : ℤ)

end

end A010847.P12063955181347627039

/-! ## A010847.P3462232726223168825

`A010848(n+1)+A360543(n+1)-A365788(n+1)`
-/

namespace A010847.P3462232726223168825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (n + 1) + (A360543 (n + 1) - A365788 (n + 1))

end

end A010847.P3462232726223168825

/-! ## A010847.P7369211651276584125

`n+1-Δ[eq[1, A162306(n+1)]]`
-/

namespace A010847.P7369211651276584125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A010847.P7369211651276584125

/-! ## A010847.P4627119058813467578

`A360543(A064549(n+1))`
-/

namespace A010847.P4627119058813467578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360543 (A064549 (n + 1)).toNat

end

end A010847.P4627119058813467578

/-! ## A010847.P3744670460180797628

`A360543((n+1)*A007947(n+1))`
-/

namespace A010847.P3744670460180797628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360543 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A010847.P3744670460180797628

/-!
# A010848: Number of numbers k <= n such that at least one prime factor of n is not a prime factor of k.

The programs for A010848, the canonical program `A010848.P2527659660694357650` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010848 has offset 1).

The definition of A010848 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A010848.P2527659660694357650

`n+1-A003557(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A010848

/-- `n+1-A003557(n+1)` -/
def P2527659660694357650.Spec : Prop :=
  ∀ n, P2527659660694357650.a n = A010848 (n + 1)

theorem P2527659660694357650.correct : P2527659660694357650.Spec := by
  intro n
  simp only [A010848, Nat.add_sub_cancel]

end A010848

/-! ## A010848.P4188546673702462540

`n-floor(n/∏{p}[n+1, #])`
-/

namespace A010848.P4188546673702462540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋

end

end A010848.P4188546673702462540

namespace A010848

/-- `n-floor(n/∏{p}[n+1, #])` -/
def P4188546673702462540.Spec : Prop :=
  ∀ n, P4188546673702462540.a n = A010848 (n + 1)

end A010848

/-! ## A010848.P18333267479636962584

`ceil(n-n/∏{p}[n+1, #])`
-/

namespace A010848.P18333267479636962584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌉

end

end A010848.P18333267479636962584

namespace A010848

/-- `ceil(n-n/∏{p}[n+1, #])` -/
def P18333267479636962584.Spec : Prop :=
  ∀ n, P18333267479636962584.a n = A010848 (n + 1)

end A010848

/-! ## A010848.P14909102970626089310

`n+1-(n+1)/∏{p}[n+1, #]`
-/

namespace A010848.P14909102970626089310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)

end

end A010848.P14909102970626089310

namespace A010848

/-- `n+1-(n+1)/∏{p}[n+1, #]` -/
def P14909102970626089310.Spec : Prop :=
  ∀ n, P14909102970626089310.a n = (A010848 (n + 1) : ℚ)

end A010848

/-! ## A010848.P7853753359909924730

`n-A336551(n+1)`
-/

namespace A010848.P7853753359909924730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A336551 (n + 1)

end

end A010848.P7853753359909924730

namespace A010848

/-- `n-A336551(n+1)` -/
def P7853753359909924730.Spec : Prop :=
  ∀ n, P7853753359909924730.a n = A010848 (n + 1)

end A010848

/-! ## A010848.P11393904177033719545

`∑{d}[n+1, A300718(#)]`
-/

namespace A010848.P11393904177033719545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300718 d

end

end A010848.P11393904177033719545

namespace A010848

/-- `∑{d}[n+1, A300718(#)]` -/
def P11393904177033719545.Spec : Prop :=
  ∀ n, P11393904177033719545.a n = A010848 (n + 1)

end A010848

/-! ## A010848.P213481418245435788

`n-floor(n/A007947(n+1))`
-/

namespace A010848.P213481418245435788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A007947 (n + 1) : ℚ)⌋

end

end A010848.P213481418245435788

namespace A010848

/-- `n-floor(n/A007947(n+1))` -/
def P213481418245435788.Spec : Prop :=
  ∀ n, P213481418245435788.a n = A010848 (n + 1)

end A010848

/-! ## A010848.P289403046562736443

`n+1-A102631(n+1)/(n+1)`
-/

namespace A010848.P289403046562736443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A102631 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A010848.P289403046562736443

namespace A010848

/-- `n+1-A102631(n+1)/(n+1)` -/
def P289403046562736443.Spec : Prop :=
  ∀ n, P289403046562736443.a n = (A010848 (n + 1) : ℚ)

end A010848

/-! ## A010848.P2969165143513125372

`n+1-gcd(n+1, A069359(n+1))`
-/

namespace A010848.P2969165143513125372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.gcd (n + 1 : ℤ) (A069359 (n + 1)) : ℤ)

end

end A010848.P2969165143513125372

namespace A010848

/-- `n+1-gcd(n+1, A069359(n+1))` -/
def P2969165143513125372.Spec : Prop :=
  ∀ n, P2969165143513125372.a n = A010848 (n + 1)

end A010848

/-! ## A010848.P7575909382862323277

`n-A065423(A357689(n+1))`
-/

namespace A010848.P7575909382862323277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A065423 (A357689 (n + 1)).toNat

end

end A010848.P7575909382862323277

namespace A010848

/-- `n-A065423(A357689(n+1))` -/
def P7575909382862323277.Spec : Prop :=
  ∀ n, P7575909382862323277.a n = A010848 (n + 1)

end A010848

/-! ## A010848.P14103915645023004986

`A326188(n+1)+A033879(n+1)`
-/

namespace A010848.P14103915645023004986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326188 (n + 1) + A033879 (n + 1)

end

end A010848.P14103915645023004986

namespace A010848

/-- `A326188(n+1)+A033879(n+1)` -/
def P14103915645023004986.Spec : Prop :=
  ∀ n, P14103915645023004986.a n = A010848 (n + 1)

end A010848

/-! ## A010848.P14028466711066770612

`A300720(n+1)+A300718(n+1)`
-/

namespace A010848.P14028466711066770612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300720 (n + 1) + A300718 (n + 1)

end

end A010848.P14028466711066770612

namespace A010848

/-- `A300720(n+1)+A300718(n+1)` -/
def P14028466711066770612.Spec : Prop :=
  ∀ n, P14028466711066770612.a n = A010848 (n + 1)

end A010848

/-! ## A010848.P5102905997414200127

`A073353(n+1)-A076332(n+1)`
-/

namespace A010848.P5102905997414200127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1) - A076332 (n + 1)

end

end A010848.P5102905997414200127

namespace A010848

/-- `A073353(n+1)-A076332(n+1)` -/
def P5102905997414200127.Spec : Prop :=
  ∀ n, P5102905997414200127.a n = A010848 (n + 1)

end A010848

/-! ## A010848.P8986286129777026459

`1-A052126(A217434(n+1))+n`
-/

namespace A010848.P8986286129777026459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A052126 (A217434 (n + 1)).toNat + (n : ℤ)

end

end A010848.P8986286129777026459

namespace A010848

/-- `1-A052126(A217434(n+1))+n` -/
def P8986286129777026459.Spec : Prop :=
  ∀ n, P8986286129777026459.a n = A010848 (n + 1)

end A010848

/-! ## A010848.P4986088819413292789

`A326187(n+1)-A001065(n+1)`
-/

namespace A010848.P4986088819413292789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326187 (n + 1) - A001065 (n + 1)

end

end A010848.P4986088819413292789

namespace A010848

/-- `A326187(n+1)-A001065(n+1)` -/
def P4986088819413292789.Spec : Prop :=
  ∀ n, P4986088819413292789.a n = A010848 (n + 1)

end A010848

/-! ## A010848.P13788967503735606477

`A003557(n+1)*A075423(n+1)`
-/

namespace A010848.P13788967503735606477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A075423 (n + 1)

end

end A010848.P13788967503735606477

namespace A010848

/-- `A003557(n+1)*A075423(n+1)` -/
def P13788967503735606477.Spec : Prop :=
  ∀ n, P13788967503735606477.a n = A010848 (n + 1)

end A010848

/-! ## A010848.P8395884521979150062

`n-A066503(n+1)/A007947(n+1)`
-/

namespace A010848.P8395884521979150062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A066503 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A010848.P8395884521979150062

namespace A010848

/-- `n-A066503(n+1)/A007947(n+1)` -/
def P8395884521979150062.Spec : Prop :=
  ∀ n, P8395884521979150062.a n = (A010848 (n + 1) : ℚ)

end A010848

/-! ## A010848.P14764235762441534521

`n-A319341(n+1)/A173557(n+1)`
-/

namespace A010848.P14764235762441534521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A319341 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A010848.P14764235762441534521

namespace A010848

/-- `n-A319341(n+1)/A173557(n+1)` -/
def P14764235762441534521.Spec : Prop :=
  ∀ n, P14764235762441534521.a n = (A010848 (n + 1) : ℚ)

end A010848

/-! ## A010848.P8558415755664756023

`n-A336644(n+1)/A336643(n+1)`
-/

namespace A010848.P8558415755664756023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A336644 (n + 1) : ℚ) / (A336643 (n + 1) : ℚ)

end

end A010848.P8558415755664756023

namespace A010848

/-- `n-A336644(n+1)/A336643(n+1)` -/
def P8558415755664756023.Spec : Prop :=
  ∀ n, P8558415755664756023.a n = (A010848 (n + 1) : ℚ)

end A010848

/-! ## A010848.P10005582396747704804

`A000010(n+1)+A300720(n+1)-A300717(n+1)`
-/

namespace A010848.P10005582396747704804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A300720 (n + 1) - A300717 (n + 1))

end

end A010848.P10005582396747704804

namespace A010848

/-- `A000010(n+1)+A300720(n+1)-A300717(n+1)` -/
def P10005582396747704804.Spec : Prop :=
  ∀ n, P10005582396747704804.a n = A010848 (n + 1)

end A010848

/-!
# A010849: Let S(x,y) = number of lattice paths from (0,0) to (x,y) that use the step set { (0,1), (1,0), (2,0), (3,0), ....} and never pass below y = x. Sequence gives S(n-3,n).

The programs for A010849, the canonical program `A010849.P8260382940907642524` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010849 has offset 0).

The definition of A010849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010849.P14816348406942771042

`A011117(∑[n+4]+2)`
-/

namespace A010849.P14816348406942771042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A010849.P14816348406942771042

namespace A010849

/-- `A011117(∑[n+4]+2)` -/
def P14816348406942771042.Spec : Prop :=
  ∀ n, P14816348406942771042.a n = A010849 n

end A010849

/-! ## A010849.P8260382940907642524

`Δ[Δ[A010683(n)/4]]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A010849

/-- `Δ[Δ[A010683(n)/4]]` -/
def P8260382940907642524.Spec : Prop :=
  ∀ n, P8260382940907642524.a n = (A010849 n : ℚ)

end A010849

/-! ## A010849.P4902499961218869050

`A091370(A167499(n+1))`
-/

namespace A010849.P4902499961218869050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091370 (A167499 (n + 1)).toNat

end

end A010849.P4902499961218869050

namespace A010849

/-- `A091370(A167499(n+1))` -/
def P4902499961218869050.Spec : Prop :=
  ∀ n, P4902499961218869050.a n = A010849 n

end A010849

/-! ## A010849.P14100357554551705745

`A104219(A167614(n+2))`
-/

namespace A010849.P14100357554551705745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A167614 (n + 2)).toNat

end

end A010849.P14100357554551705745

namespace A010849

/-- `A104219(A167614(n+2))` -/
def P14100357554551705745.Spec : Prop :=
  ∀ n, P14100357554551705745.a n = A010849 n

end A010849

/-! ## A010849.P9868762237147385213

`A104219(A152950(n+4))`
-/

namespace A010849.P9868762237147385213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A152950 (n + 4)).toNat

end

end A010849.P9868762237147385213

namespace A010849

/-- `A104219(A152950(n+4))` -/
def P9868762237147385213.Spec : Prop :=
  ∀ n, P9868762237147385213.a n = A010849 n

end A010849

/-! ## A010849.P15863465365142185521

`A104219(A052905(n)+8)`
-/

namespace A010849.P15863465365142185521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A052905 n + 8).toNat

end

end A010849.P15863465365142185521

namespace A010849

/-- `A104219(A052905(n)+8)` -/
def P15863465365142185521.Spec : Prop :=
  ∀ n, P15863465365142185521.a n = A010849 n

end A010849

/-! ## A010849.P6447193937821431655

`A104219(eq[3, A002262(n)])`
-/

namespace A010849.P6447193937821431655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010849.P6447193937821431655

namespace A010849

/-- `A104219(eq[3, A002262(n)])` -/
def P6447193937821431655.Spec : Prop :=
  ∀ n, P6447193937821431655.a n = A010849 n

end A010849

/-! ## A010849.P406094837540660929

`A091370(A166136(n+1)-1)`
-/

namespace A010849.P406094837540660929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091370 (A166136 (n + 1) - 1).toNat

end

end A010849.P406094837540660929

namespace A010849

/-- `A091370(A166136(n+1)-1)` -/
def P406094837540660929.Spec : Prop :=
  ∀ n, P406094837540660929.a n = A010849 n

end A010849

/-! ## A010849.P17881831999487968617

`A104219(A166136(n+2)-3)`
-/

namespace A010849.P17881831999487968617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A166136 (n + 2) - 3).toNat

end

end A010849.P17881831999487968617

namespace A010849

/-- `A104219(A166136(n+2)-3)` -/
def P17881831999487968617.Spec : Prop :=
  ∀ n, P17881831999487968617.a n = A010849 n

end A010849

/-! ## A010849.P11111253654254105002

`A104219(eq[2, A002260(n+1)-2])`
-/

namespace A010849.P11111253654254105002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010849.P11111253654254105002

namespace A010849

/-- `A104219(eq[2, A002260(n+1)-2])` -/
def P11111253654254105002.Spec : Prop :=
  ∀ n, P11111253654254105002.a n = A010849 n

end A010849

/-! ## A010849.P15712611946408851764

`A104219(eq[2, A002260(n+1)/2])`
-/

namespace A010849.P15712611946408851764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A010849.P15712611946408851764

namespace A010849

/-- `A104219(eq[2, A002260(n+1)/2])` -/
def P15712611946408851764.Spec : Prop :=
  ∀ n, P15712611946408851764.a n = A010849 n

end A010849

/-!
# A010850: Constant sequence: a(n) = 11.

The programs for A010850, the canonical program `A010850.P7590781142339011127` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010850 has offset 0).

The definition of A010850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010850.P7590781142339011127

`11`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010850

/-- `11` -/
def P7590781142339011127.Spec : Prop :=
  ∀ n, (P7590781142339011127.a n : ℤ) = A010850 n

theorem P7590781142339011127.correct : P7590781142339011127.Spec := by
  intro n
  simp only [A010850]

end A010850

/-!
# A010851: Constant sequence: a(n) = 12.

The programs for A010851, the canonical program `A010851.P16911479096933541116` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010851 has offset 0).

The definition of A010851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010851.P16911479096933541116

`12`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010851

/-- `12` -/
def P16911479096933541116.Spec : Prop :=
  ∀ n, (P16911479096933541116.a n : ℤ) = A010851 n

theorem P16911479096933541116.correct : P16911479096933541116.Spec := by
  intro n
  simp only [A010851]

end A010851

/-!
# A010852: Constant sequence: a(n) = 13.

The programs for A010852, the canonical program `A010852.P9478985010094264671` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010852 has offset 0).

The definition of A010852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010852.P9478985010094264671

`13`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010852

/-- `13` -/
def P9478985010094264671.Spec : Prop :=
  ∀ n, (P9478985010094264671.a n : ℤ) = A010852 n

theorem P9478985010094264671.correct : P9478985010094264671.Spec := by
  intro n
  simp only [A010852]

end A010852

/-!
# A010853: Constant sequence: a(n) = 14.

The programs for A010853, the canonical program `A010853.P5553455663036499068` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010853 has offset 0).

The definition of A010853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010853.P5553455663036499068

`14`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010853

/-- `14` -/
def P5553455663036499068.Spec : Prop :=
  ∀ n, (P5553455663036499068.a n : ℤ) = A010853 n

theorem P5553455663036499068.correct : P5553455663036499068.Spec := by
  intro n
  simp only [A010853]

end A010853

/-!
# A010854: Constant sequence: a(n) = 15.

The programs for A010854, the canonical program `A010854.P10489593981035625203` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010854 has offset 0).

The definition of A010854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010854.P10489593981035625203

`15`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010854

/-- `15` -/
def P10489593981035625203.Spec : Prop :=
  ∀ n, (P10489593981035625203.a n : ℤ) = A010854 n

theorem P10489593981035625203.correct : P10489593981035625203.Spec := by
  intro n
  simp only [A010854]

end A010854

/-!
# A010855: Constant sequence: a(n) = 16.

The programs for A010855, the canonical program `A010855.P14891600134398643137` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010855 has offset 0).

The definition of A010855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010855.P14891600134398643137

`16`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010855

/-- `16` -/
def P14891600134398643137.Spec : Prop :=
  ∀ n, (P14891600134398643137.a n : ℤ) = A010855 n

theorem P14891600134398643137.correct : P14891600134398643137.Spec := by
  intro n
  simp only [A010855]

end A010855

/-!
# A010856: Constant sequence: a(n) = 17.

The programs for A010856, the canonical program `A010856.P18189818830812651098` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010856 has offset 0).

The definition of A010856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010856.P18189818830812651098

`A152179(3*n)+A152179(3*n+1)+A152179(3*n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010856

/-- `A152179(3*n)+A152179(3*n+1)+A152179(3*n+2)` -/
def P18189818830812651098.Spec : Prop :=
  ∀ n, P18189818830812651098.a n = A010856 n

theorem P18189818830812651098.correct : P18189818830812651098.Spec := by
  intro n
  simp only [A010856]

end A010856

/-!
# A010857: Constant sequence: a(n) = 18.

The programs for A010857, the canonical program `A010857.P17845160359476819011` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010857 has offset 0).

The definition of A010857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010857.P17845160359476819011

`18`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010857

/-- `18` -/
def P17845160359476819011.Spec : Prop :=
  ∀ n, (P17845160359476819011.a n : ℤ) = A010857 n

theorem P17845160359476819011.correct : P17845160359476819011.Spec := by
  intro n
  simp only [A010857]

end A010857

/-!
# A010858: Constant sequence: a(n) = 19.

The programs for A010858, the canonical program `A010858.P10017582273979282909` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010858 has offset 0).

The definition of A010858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010858.P10017582273979282909

`19`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010858

/-- `19` -/
def P10017582273979282909.Spec : Prop :=
  ∀ n, (P10017582273979282909.a n : ℤ) = A010858 n

theorem P10017582273979282909.correct : P10017582273979282909.Spec := by
  intro n
  simp only [A010858]

end A010858

/-!
# A010859: Constant sequence: a(n) = 20.

The programs for A010859, the canonical program `A010859.P7622576608205694823` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010859 has offset 0).

The definition of A010859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010859.P7622576608205694823

`20`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010859

/-- `20` -/
def P7622576608205694823.Spec : Prop :=
  ∀ n, (P7622576608205694823.a n : ℤ) = A010859 n

theorem P7622576608205694823.correct : P7622576608205694823.Spec := by
  intro n
  simp only [A010859]

end A010859

/-!
# A010860: Constant sequence: a(n) = 21.

The programs for A010860, the canonical program `A010860.P2291233977842068164` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010860 has offset 0).

The definition of A010860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010860.P2291233977842068164

`21`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010860

/-- `21` -/
def P2291233977842068164.Spec : Prop :=
  ∀ n, (P2291233977842068164.a n : ℤ) = A010860 n

theorem P2291233977842068164.correct : P2291233977842068164.Spec := by
  intro n
  simp only [A010860]

end A010860

/-!
# A010861: Constant sequence: a(n) = 22.

The programs for A010861, the canonical program `A010861.P15324820128231990851` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010861 has offset 0).

The definition of A010861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010861.P15324820128231990851

`22`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010861

/-- `22` -/
def P15324820128231990851.Spec : Prop :=
  ∀ n, (P15324820128231990851.a n : ℤ) = A010861 n

theorem P15324820128231990851.correct : P15324820128231990851.Spec := by
  intro n
  simp only [A010861]

end A010861

/-!
# A010862: Constant sequence: a(n) = 23.

The programs for A010862, the canonical program `A010862.P17202967208250737117` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010862 has offset 0).

The definition of A010862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010862.P17202967208250737117

`23`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010862

/-- `23` -/
def P17202967208250737117.Spec : Prop :=
  ∀ n, (P17202967208250737117.a n : ℤ) = A010862 n

theorem P17202967208250737117.correct : P17202967208250737117.Spec := by
  intro n
  simp only [A010862]

end A010862

/-!
# A010863: Constant sequence: a(n) = 24.

The programs for A010863, the canonical program `A010863.P2282483391725482280` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010863 has offset 0).

The definition of A010863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010863.P2282483391725482280

`24`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010863

/-- `24` -/
def P2282483391725482280.Spec : Prop :=
  ∀ n, (P2282483391725482280.a n : ℤ) = A010863 n

theorem P2282483391725482280.correct : P2282483391725482280.Spec := by
  intro n
  simp only [A010863]

end A010863

/-!
# A010864: Constant sequence: a(n) = 25.

The programs for A010864, the canonical program `A010864.P12608310712065961452` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010864 has offset 0).

The definition of A010864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010864.P12608310712065961452

`25`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010864

/-- `25` -/
def P12608310712065961452.Spec : Prop :=
  ∀ n, (P12608310712065961452.a n : ℤ) = A010864 n

theorem P12608310712065961452.correct : P12608310712065961452.Spec := by
  intro n
  simp only [A010864]

end A010864

/-!
# A010865: Constant sequence: a(n) = 26.

The programs for A010865, the canonical program `A010865.P6163598212782547281` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010865 has offset 0).

The definition of A010865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010865.P6163598212782547281

`26`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010865

/-- `26` -/
def P6163598212782547281.Spec : Prop :=
  ∀ n, (P6163598212782547281.a n : ℤ) = A010865 n

theorem P6163598212782547281.correct : P6163598212782547281.Spec := by
  intro n
  simp only [A010865]

end A010865

/-!
# A010866: Constant sequence: a(n) = 27.

The programs for A010866, the canonical program `A010866.P16168181902353736938` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010866 has offset 0).

The definition of A010866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010866.P16168181902353736938

`27`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010866

/-- `27` -/
def P16168181902353736938.Spec : Prop :=
  ∀ n, (P16168181902353736938.a n : ℤ) = A010866 n

theorem P16168181902353736938.correct : P16168181902353736938.Spec := by
  intro n
  simp only [A010866]

end A010866

/-!
# A010867: Constant sequence: a(n) = 28.

The programs for A010867, the canonical program `A010867.P4075359173864053329` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010867 has offset 0).

The definition of A010867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010867.P4075359173864053329

`28`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010867

/-- `28` -/
def P4075359173864053329.Spec : Prop :=
  ∀ n, (P4075359173864053329.a n : ℤ) = A010867 n

theorem P4075359173864053329.correct : P4075359173864053329.Spec := by
  intro n
  simp only [A010867]

end A010867

/-!
# A010868: Constant sequence: a(n) = 29.

The programs for A010868, the canonical program `A010868.P3656923100899415511` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010868 has offset 0).

The definition of A010868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010868.P3656923100899415511

`29`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010868

/-- `29` -/
def P3656923100899415511.Spec : Prop :=
  ∀ n, (P3656923100899415511.a n : ℤ) = A010868 n

theorem P3656923100899415511.correct : P3656923100899415511.Spec := by
  intro n
  simp only [A010868]

end A010868

/-!
# A010869: Constant sequence: a(n) = 30.

The programs for A010869, the canonical program `A010869.P6470514731029824931` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010869 has offset 0).

The definition of A010869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010869.P6470514731029824931

`30`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010869

/-- `30` -/
def P6470514731029824931.Spec : Prop :=
  ∀ n, (P6470514731029824931.a n : ℤ) = A010869 n

theorem P6470514731029824931.correct : P6470514731029824931.Spec := by
  intro n
  simp only [A010869]

end A010869

/-!
# A010870: Constant sequence: a(n) = 31.

The programs for A010870, the canonical program `A010870.P6327781981776291818` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010870 has offset 0).

The definition of A010870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010870.P6327781981776291818

`31`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010870

/-- `31` -/
def P6327781981776291818.Spec : Prop :=
  ∀ n, (P6327781981776291818.a n : ℤ) = A010870 n

theorem P6327781981776291818.correct : P6327781981776291818.Spec := by
  intro n
  simp only [A010870]

end A010870

/-!
# A010871: Constant sequence: a(n) = 32.

The programs for A010871, the canonical program `A010871.P18382733028465623829` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010871 has offset 0).

The definition of A010871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010871.P18382733028465623829

`32`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010871

/-- `32` -/
def P18382733028465623829.Spec : Prop :=
  ∀ n, (P18382733028465623829.a n : ℤ) = A010871 n

theorem P18382733028465623829.correct : P18382733028465623829.Spec := by
  intro n
  simp only [A010871]

end A010871

/-!
# A010872: a(n) = n mod 3.

The programs for A010872, the canonical program `A010872.P18388736491551770975` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010872 has offset 0).

The definition of A010872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010872.P18388736491551770975

`a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010872

/-- `a(n-3)` -/
def P18388736491551770975.Spec : Prop :=
  ∀ n, (P18388736491551770975.a n : ℤ) = A010872 n

theorem P18388736491551770975.correct : P18388736491551770975.Spec := by
  intro n
  simp only [A010872]

end A010872

/-!
# A010873: a(n) = n mod 4.

The programs for A010873, the canonical program `A010873.P1599048511093929465` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010873 has offset 0).

The definition of A010873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010873.P1599048511093929465

`n%4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010873

/-- `n%4` -/
def P1599048511093929465.Spec : Prop :=
  ∀ n, (P1599048511093929465.a n : ℤ) = A010873 n

theorem P1599048511093929465.correct : P1599048511093929465.Spec := by
  intro n
  simp only [A010873]

end A010873

/-!
# A010874: a(n) = n mod 5.

The programs for A010874, the canonical program `A010874.P10724650744425709314` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010874 has offset 0).

The definition of A010874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010874.P10724650744425709314

`n%5`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010874

/-- `n%5` -/
def P10724650744425709314.Spec : Prop :=
  ∀ n, (P10724650744425709314.a n : ℤ) = A010874 n

theorem P10724650744425709314.correct : P10724650744425709314.Spec := by
  intro n
  simp only [A010874]

end A010874

/-!
# A010875: a(n) = n mod 6.

The programs for A010875, the canonical program `A010875.P10630340735850817347` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010875 has offset 0).

The definition of A010875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010875.P10630340735850817347

`n%6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010875

/-- `n%6` -/
def P10630340735850817347.Spec : Prop :=
  ∀ n, (P10630340735850817347.a n : ℤ) = A010875 n

theorem P10630340735850817347.correct : P10630340735850817347.Spec := by
  intro n
  simp only [A010875]

end A010875

/-!
# A010876: a(n) = n mod 7.

The programs for A010876, the canonical program `A010876.P890353537978076798` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010876 has offset 0).

The definition of A010876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010876.P890353537978076798

`n%7`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010876

/-- `n%7` -/
def P890353537978076798.Spec : Prop :=
  ∀ n, (P890353537978076798.a n : ℤ) = A010876 n

theorem P890353537978076798.correct : P890353537978076798.Spec := by
  intro n
  simp only [A010876]

end A010876

/-!
# A010877: a(n) = n mod 8.

The programs for A010877, the canonical program `A010877.P17761604469248841488` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010877 has offset 0).

The definition of A010877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010877.P17761604469248841488

`n%8`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010877

/-- `n%8` -/
def P17761604469248841488.Spec : Prop :=
  ∀ n, (P17761604469248841488.a n : ℤ) = A010877 n

theorem P17761604469248841488.correct : P17761604469248841488.Spec := by
  intro n
  simp only [A010877]

end A010877

/-!
# A010878: a(n) = n mod 9.

The programs for A010878, the canonical program `A010878.P3107363593306088729` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010878 has offset 0).

The definition of A010878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010878.P3107363593306088729

`n%9`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010878

/-- `n%9` -/
def P3107363593306088729.Spec : Prop :=
  ∀ n, (P3107363593306088729.a n : ℤ) = A010878 n

theorem P3107363593306088729.correct : P3107363593306088729.Spec := by
  intro n
  simp only [A010878]

end A010878

/-!
# A010879: Final digit of n.

The programs for A010879, the canonical program `A010879.P10561743211919002802` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010879 has offset 0).

The definition of A010879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010879.P10561743211919002802

`n%10`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010879

/-- `n%10` -/
def P10561743211919002802.Spec : Prop :=
  ∀ n, (P10561743211919002802.a n : ℤ) = A010879 n

theorem P10561743211919002802.correct : P10561743211919002802.Spec := by
  intro n
  simp only [A010879]

end A010879

/-!
# A010880: a(n) = n mod 11.

The programs for A010880, the canonical program `A010880.P18325059026936962362` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010880 has offset 0).

The definition of A010880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010880.P18325059026936962362

`n%11`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010880

/-- `n%11` -/
def P18325059026936962362.Spec : Prop :=
  ∀ n, (P18325059026936962362.a n : ℤ) = A010880 n

theorem P18325059026936962362.correct : P18325059026936962362.Spec := by
  intro n
  simp only [A010880]

end A010880

/-!
# A010881: Simple periodic sequence: n mod 12.

The programs for A010881, the canonical program `A010881.P11579450924084356808` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010881 has offset 0).

The definition of A010881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010881.P11579450924084356808

`n%12`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010881

/-- `n%12` -/
def P11579450924084356808.Spec : Prop :=
  ∀ n, (P11579450924084356808.a n : ℤ) = A010881 n

theorem P11579450924084356808.correct : P11579450924084356808.Spec := by
  intro n
  simp only [A010881]

end A010881

/-!
# A010882: Period 3: repeat [1, 2, 3].

The programs for A010882, the canonical program `A010882.P12866504876025852019` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010882 has offset 0).

The definition of A010882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010882.P12866504876025852019

`1+n%3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010882

/-- `1+n%3` -/
def P12866504876025852019.Spec : Prop :=
  ∀ n, (P12866504876025852019.a n : ℤ) = A010882 n

theorem P12866504876025852019.correct : P12866504876025852019.Spec := by
  intro n
  simp only [A010882]

end A010882

/-!
# A010883: Simple periodic sequence: repeat 1,2,3,4.

The programs for A010883, the canonical program `A010883.P6960251526923042269` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010883 has offset 0).

The definition of A010883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010883.P6960251526923042269

`A010873(n)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010883

/-- `A010873(n)+1` -/
def P6960251526923042269.Spec : Prop :=
  ∀ n, P6960251526923042269.a n = A010883 n

theorem P6960251526923042269.correct : P6960251526923042269.Spec := by
  intro n
  simp only [A010883]

end A010883

/-!
# A010884: Period 5: repeat [1,2,3,4,5].

The programs for A010884, the canonical program `A010884.P5977487512492613138` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010884 has offset 0).

The definition of A010884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010884.P5977487512492613138

`n%5+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010884

/-- `n%5+1` -/
def P5977487512492613138.Spec : Prop :=
  ∀ n, (P5977487512492613138.a n : ℤ) = A010884 n

theorem P5977487512492613138.correct : P5977487512492613138.Spec := by
  intro n
  simp only [A010884]

end A010884

/-!
# A010885: Period 6: repeat [1, 2, 3, 4, 5, 6].

The programs for A010885, the canonical program `A010885.P15420876262459193361` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010885 has offset 0).

The definition of A010885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010885.P15420876262459193361

`a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010885

/-- `a(n-6)` -/
def P15420876262459193361.Spec : Prop :=
  ∀ n, (P15420876262459193361.a n : ℤ) = A010885 n

theorem P15420876262459193361.correct : P15420876262459193361.Spec := by
  intro n
  simp only [A010885]

end A010885

/-!
# A010886: Period 7: repeat [1, 2, 3, 4, 5, 6, 7].

The programs for A010886, the canonical program `A010886.P130035635661128565` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010886 has offset 0).

The definition of A010886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010886.P130035635661128565

`n%7+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010886

/-- `n%7+1` -/
def P130035635661128565.Spec : Prop :=
  ∀ n, (P130035635661128565.a n : ℤ) = A010886 n

theorem P130035635661128565.correct : P130035635661128565.Spec := by
  intro n
  simp only [A010886]

end A010886

/-!
# A010887: Simple periodic sequence: repeat 1,2,3,4,5,6,7,8.

The programs for A010887, the canonical program `A010887.P15804666830051058931` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010887 has offset 0).

The definition of A010887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010887.P15804666830051058931

`A010877(n)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010887

/-- `A010877(n)+1` -/
def P15804666830051058931.Spec : Prop :=
  ∀ n, P15804666830051058931.a n = A010887 n

theorem P15804666830051058931.correct : P15804666830051058931.Spec := by
  intro n
  simp only [A010887]

end A010887

/-!
# A010888: Digital root of n (repeatedly add the digits of n until a single digit is reached).

The programs for A010888, the canonical program `A010888.P12602340911021437531` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010888 has offset 0).

The definition of A010888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010888.P12602340911021437531

`1+(n-1)%9`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010888

/-- `1+(n-1)%9` -/
def P12602340911021437531.Spec : Prop :=
  ∀ n, P12602340911021437531.a n = A010888 n

theorem P12602340911021437531.correct : P12602340911021437531.Spec := by
  intro n
  simp only [A010888]

end A010888

/-!
# A010889: Simple periodic sequence: repeat 1,2,3,4,5,6,7,8,9,10.

The programs for A010889, the canonical program `A010889.P15142290721062223514` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010889 has offset 0).

The definition of A010889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010889.P15142290721062223514

`n%10+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010889

/-- `n%10+1` -/
def P15142290721062223514.Spec : Prop :=
  ∀ n, (P15142290721062223514.a n : ℤ) = A010889 n

theorem P15142290721062223514.correct : P15142290721062223514.Spec := by
  intro n
  simp only [A010889]

end A010889

/-!
# A010891: Inverse of 5th cyclotomic polynomial.

The programs for A010891, the canonical program `A010891.P6930398218928324570` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010891 has offset 0).

The definition of A010891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010891.P6930398218928324570

`round(cos(exp(n%5)))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010891

/-- `round(cos(exp(n%5)))` -/
def P6930398218928324570.Spec : Prop :=
  ∀ n, P6930398218928324570.a n = A010891 n

theorem P6930398218928324570.correct : P6930398218928324570.Spec := by
  intro n
  simp only [A010891]

end A010891

/-!
# A010892: Inverse of 6th cyclotomic polynomial. A period 6 sequence.

The programs for A010892, the canonical program `A010892.P14408744864468695543` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010892 has offset 0).

The definition of A010892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010892.P14408744864468695543

`a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010892

/-- `a(n-1)-a(n-2)` -/
def P14408744864468695543.Spec : Prop :=
  ∀ n, P14408744864468695543.a n = A010892 n

theorem P14408744864468695543.correct : P14408744864468695543.Spec := by
  intro n
  simp only [A010892]

end A010892

/-!
# A010893: (n,4,1) difference families over Z_n.

The programs for A010893, there is no canonical definition to state claims against.
-/

/-! ## A010893.P464684232927580377

`A224937(A023923(n)%A138469(n+1))`
-/

namespace A010893.P464684232927580377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224937 (Int.tmod (A023923 n) (A138469 (n + 1))).toNat

end

end A010893.P464684232927580377

/-! ## A010893.P1104371944549039049

`A194749(gcd(A007664(n), A016059(n+2)))`
-/

namespace A010893.P1104371944549039049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194749 (Int.gcd (A007664 n) (A016059 (n + 2)))

end

end A010893.P1104371944549039049

/-! ## A010893.P11981361812694577909

`A218006(n+1)%A001222(A217954(n+1))`
-/

namespace A010893.P11981361812694577909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218006 (n + 1)) (A001222 (A217954 (n + 1)).toNat)

end

end A010893.P11981361812694577909

/-! ## A010893.P8029097104357451398

`C(A001511(A104805(n+1)), A302389(n+1))`
-/

namespace A010893.P8029097104357451398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001511 (A104805 (n + 1)).toNat).toNat (A302389 (n + 1)).toNat

end

end A010893.P8029097104357451398

/-!
# A010894: (n,5,1) difference families over Z_n.

The programs for A010894, there is no canonical definition to state claims against.
-/

/-! ## A010894.P11888759193160428376

`lcm(Δ[A141256(n)], A014049(n))`
-/

namespace A010894.P11888759193160428376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A014049 n)

end

end A010894.P11888759193160428376

/-! ## A010894.P9169554504321069934

`A112316(A002378(n)%A106555(n+1))`
-/

namespace A010894.P9169554504321069934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (Int.tmod (A002378 n) (A106555 (n + 1))).toNat

end

end A010894.P9169554504321069934

/-! ## A010894.P11072013859987347336

`A052920(gcd(A061885(n), A173977(n+1)))`
-/

namespace A010894.P11072013859987347336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (Int.gcd (A061885 n) (A173977 (n + 1)))

end

end A010894.P11072013859987347336

/-! ## A010894.P9246554008754799244

`A064911(A080588(2*(n+1)))*A237593(3*n+1)`
-/

namespace A010894.P9246554008754799244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A080588 (2 * (n + 1))).toNat * A237593 (3 * n + 1)

end

end A010894.P9246554008754799244

/-! ## A010894.P16986546158518606917

`A321936(A079694(n+2)^A321936(n))`
-/

namespace A010894.P16986546158518606917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (SequenceMachineLib.roundAway ((A079694 (n + 2) : ℚ) ^ (A321936 n : ℤ))).toNat

end

end A010894.P16986546158518606917

/-!
# A010895: Minimal scope of a (2,n) difference triangle.

The programs for A010895, there is no canonical definition to state claims against.
-/

/-! ## A010895.P6376742366899070637

`∑[A368363(A368363(n+4))]`
-/

namespace A010895.P6376742366899070637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368363 (A368363 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010895.P6376742366899070637

/-! ## A010895.P5781094840792452996

`∑[∑[A328806(A270570(n+2))]]`
-/

namespace A010895.P5781094840792452996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328806 (A270570 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010895.P5781094840792452996

/-! ## A010895.P10022852128829081227

`∑[A194906(∑[A245327(n+4)])]`
-/

namespace A010895.P10022852128829081227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194906 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010895.P10022852128829081227

/-! ## A010895.P2532185491162034924

`A007504(n)+∑[A057353(n+3)]`
-/

namespace A010895.P2532185491162034924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010895.P2532185491162034924

/-! ## A010895.P5715296351737329277

`A231603(n+1)+A007504(n)+1`
-/

namespace A010895.P5715296351737329277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231603 (n + 1) + (A007504 n + 1)

end

end A010895.P5715296351737329277

