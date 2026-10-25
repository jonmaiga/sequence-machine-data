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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A120301: Absolute value of numerator of the sum of all elements of the n X n matrix M with M[i,j] = (-1)^(i+j)*i/j for i,j = 1..n.

The programs for A120301, there is no canonical definition to state claims against.
-/

/-! ## A120301.P9630988766715602071

`gcd(A005773(n), A025530(n+1))*A058313(n+1)`
-/

namespace A120301.P9630988766715602071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A005773 n) (A025530 (n + 1)) : ℤ) * A058313 (n + 1)

end

end A120301.P9630988766715602071

/-! ## A120301.P4920611271008362466

`A119787(n+2)/ratio[A025530(n+1)]`
-/

namespace A120301.P4920611271008362466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119787 (n + 2) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A120301.P4920611271008362466

/-! ## A120301.P7251539765766317270

`A025530(n+1)/A025530(n+2)*A119787(n+2)`
-/

namespace A120301.P7251539765766317270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025530 (n + 1) : ℚ) / (A025530 (n + 2) : ℚ) * (A119787 (n + 2) : ℚ)

end

end A120301.P7251539765766317270

/-! ## A120301.P14886044227380312823

`A045778(A344637(n+5))*A058313(n+1)`
-/

namespace A120301.P14886044227380312823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A344637 (n + 5)).toNat * A058313 (n + 1)

end

end A120301.P14886044227380312823

/-!
# A120302: Last term of arithmetic progression of primes described in A130791, A007918, A061558.

The programs for A120302, there is no canonical definition to state claims against.
-/

/-! ## A120302.P919919401600760283

`A130791(∑[n+1])`
-/

namespace A120302.P919919401600760283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130791 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120302.P919919401600760283

/-! ## A120302.P7347049419409593957

`record[A130791(∑[comp[12*n]])]`
-/

namespace A120302.P7347049419409593957
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130791 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120302.P7347049419409593957

/-! ## A120302.P308987736650599540

`floor(A127781(n+1)+acot(n))`
-/

namespace A120302.P308987736650599540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127781 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A120302.P308987736650599540

/-! ## A120302.P9229412519437923199

`A127781(n+1)+A000007(n)`
-/

namespace A120302.P9229412519437923199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127781 (n + 1) + A000007 n

end

end A120302.P9229412519437923199

/-! ## A120302.P15470903010566048134

`A145459(n)+A127781(n+1)`
-/

namespace A120302.P15470903010566048134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145459 n + A127781 (n + 1)

end

end A120302.P15470903010566048134

/-!
# A120303: Largest prime factor of Catalan number A000108(n).

The programs for A120303, the canonical program `A120303.P14720405322692262226` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120303 has offset 2).

The definition of A120303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120303.P5645080361414342535

`A007917(ceil(sqrt(∑[2*n])+n)+2)`
-/

namespace A120303.P5645080361414342535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n : ℝ)⌉ + 2).toNat

end

end A120303.P5645080361414342535

namespace A120303

/-- `A007917(ceil(sqrt(∑[2*n])+n)+2)` -/
def P5645080361414342535.Spec : Prop :=
  ∀ n, P5645080361414342535.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P14720405322692262226

`A060308(A065475(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A120303

/-- `A060308(A065475(n+1))` -/
def P14720405322692262226.Spec : Prop :=
  ∀ n, P14720405322692262226.a n = A120303 (n + 2)

theorem P14720405322692262226.correct : P14720405322692262226.Spec := by
  intro n
  simp only [A120303, Nat.add_sub_cancel]

end A120303

/-! ## A120303.P903177560116364186

`A136548(A005818(n+1))`
-/

namespace A120303.P903177560116364186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A005818 (n + 1)).toNat

end

end A120303.P903177560116364186

namespace A120303

/-- `A136548(A005818(n+1))` -/
def P903177560116364186.Spec : Prop :=
  ∀ n, P903177560116364186.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P17741845429777827400

`A060308(A117571(n+1))`
-/

namespace A120303.P17741845429777827400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A117571 (n + 1)).toNat

end

end A120303.P17741845429777827400

namespace A120303

/-- `A060308(A117571(n+1))` -/
def P17741845429777827400.Spec : Prop :=
  ∀ n, P17741845429777827400.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P3529178524033391026

`A136548(A136289(n+1))`
-/

namespace A120303.P3529178524033391026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A136289 (n + 1)).toNat

end

end A120303.P3529178524033391026

namespace A120303

/-- `A136548(A136289(n+1))` -/
def P3529178524033391026.Spec : Prop :=
  ∀ n, P3529178524033391026.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P13970239021268324002

`A064614(A060265(n+2))`
-/

namespace A120303.P13970239021268324002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A060265 (n + 2)).toNat

end

end A120303.P13970239021268324002

namespace A120303

/-- `A064614(A060265(n+2))` -/
def P13970239021268324002.Spec : Prop :=
  ∀ n, P13970239021268324002.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P15302660253157613498

`A064614(A060308(n+2))`
-/

namespace A120303.P15302660253157613498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A060308 (n + 2)).toNat

end

end A120303.P15302660253157613498

namespace A120303

/-- `A064614(A060308(n+2))` -/
def P15302660253157613498.Spec : Prop :=
  ∀ n, P15302660253157613498.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P16398151317541096790

`A060308(A181440(n+2))`
-/

namespace A120303.P16398151317541096790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A181440 (n + 2)).toNat

end

end A120303.P16398151317541096790

namespace A120303

/-- `A060308(A181440(n+2))` -/
def P16398151317541096790.Spec : Prop :=
  ∀ n, P16398151317541096790.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P141046569629288413

`A060308(A184985(n+2))`
-/

namespace A120303.P141046569629288413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A184985 (n + 2)).toNat

end

end A120303.P141046569629288413

namespace A120303

/-- `A060308(A184985(n+2))` -/
def P141046569629288413.Spec : Prop :=
  ∀ n, P141046569629288413.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P16124667171233176899

`A335285(A047249(n+2))`
-/

namespace A120303.P16124667171233176899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (A047249 (n + 2)).toNat

end

end A120303.P16124667171233176899

namespace A120303

/-- `A335285(A047249(n+2))` -/
def P16124667171233176899.Spec : Prop :=
  ∀ n, P16124667171233176899.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P2328774769890412234

`A335285(A047259(n+2))`
-/

namespace A120303.P2328774769890412234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (A047259 (n + 2)).toNat

end

end A120303.P2328774769890412234

namespace A120303

/-- `A335285(A047259(n+2))` -/
def P2328774769890412234.Spec : Prop :=
  ∀ n, P2328774769890412234.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P4213546738796553641

`A055377(A347838(n+2))`
-/

namespace A120303.P4213546738796553641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A347838 (n + 2)).toNat

end

end A120303.P4213546738796553641

namespace A120303

/-- `A055377(A347838(n+2))` -/
def P4213546738796553641.Spec : Prop :=
  ∀ n, P4213546738796553641.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P6745031432050895464

`A136548(A047268(n+2)+1)`
-/

namespace A120303.P6745031432050895464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A047268 (n + 2) + 1).toNat

end

end A120303.P6745031432050895464

namespace A120303

/-- `A136548(A047268(n+2)+1)` -/
def P6745031432050895464.Spec : Prop :=
  ∀ n, P6745031432050895464.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P14843475865325687728

`A136548(A267873(n+1)+2)`
-/

namespace A120303.P14843475865325687728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A267873 (n + 1) + 2).toNat

end

end A120303.P14843475865325687728

namespace A120303

/-- `A136548(A267873(n+1)+2)` -/
def P14843475865325687728.Spec : Prop :=
  ∀ n, P14843475865325687728.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P4180098023905803058

`A007918(A060308(n+2)-1)`
-/

namespace A120303.P4180098023905803058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A060308 (n + 2) - 1).toNat

end

end A120303.P4180098023905803058

namespace A120303

/-- `A007918(A060308(n+2)-1)` -/
def P4180098023905803058.Spec : Prop :=
  ∀ n, P4180098023905803058.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P15186082420164301574

`A151800(A060265(n+2)-2)`
-/

namespace A120303.P15186082420164301574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A060265 (n + 2) - 2).toNat

end

end A120303.P15186082420164301574

namespace A120303

/-- `A151800(A060265(n+2)-2)` -/
def P15186082420164301574.Spec : Prop :=
  ∀ n, P15186082420164301574.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P10220409903151872919

`A151800(A060308(n+2)-2)`
-/

namespace A120303.P10220409903151872919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A060308 (n + 2) - 2).toNat

end

end A120303.P10220409903151872919

namespace A120303

/-- `A151800(A060308(n+2)-2)` -/
def P10220409903151872919.Spec : Prop :=
  ∀ n, P10220409903151872919.a n = A120303 (n + 2)

end A120303

/-! ## A120303.P3267378295557657544

`A046022(A061008(2*n+3))`
-/

namespace A120303.P3267378295557657544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A061008 (2 * n + 3)).toNat

end

end A120303.P3267378295557657544

namespace A120303

/-- `A046022(A061008(2*n+3))` -/
def P3267378295557657544.Spec : Prop :=
  ∀ n, P3267378295557657544.a n = A120303 (n + 2)

end A120303

/-!
# A120304: Catalan numbers minus 2.

The programs for A120304, the canonical program `A120304.P16195813583233364787` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120304 has offset 0).

The definition of A120304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120304.P16195813583233364787

`A000108(n)-2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120304

/-- `A000108(n)-2` -/
def P16195813583233364787.Spec : Prop :=
  ∀ n, P16195813583233364787.a n = A120304 n

theorem P16195813583233364787.correct : P16195813583233364787.Spec := by
  intro n
  simp only [A120304]

end A120304

/-! ## A120304.P17161271729406566314

`C(2*n, n)/(n+1)-2`
-/

namespace A120304.P17161271729406566314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) - 2

end

end A120304.P17161271729406566314

namespace A120304

/-- `C(2*n, n)/(n+1)-2` -/
def P17161271729406566314.Spec : Prop :=
  ∀ n, P17161271729406566314.a n = (A120304 n : ℚ)

end A120304

/-! ## A120304.P17264481091960609652

`(2*n)!/(n!*(n+1)!)-2`
-/

namespace A120304.P17264481091960609652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (Nat.factorial n * Nat.factorial (n + 1) : ℚ) - 2

end

end A120304.P17264481091960609652

namespace A120304

/-- `(2*n)!/(n!*(n+1)!)-2` -/
def P17264481091960609652.Spec : Prop :=
  ∀ n, P17264481091960609652.a n = (A120304 n : ℚ)

end A120304

/-! ## A120304.P388445822876293987

`abs(A168491(n))-2`
-/

namespace A120304.P388445822876293987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| - 2

end

end A120304.P388445822876293987

namespace A120304

/-- `abs(A168491(n))-2` -/
def P388445822876293987.Spec : Prop :=
  ∀ n, P388445822876293987.a n = A120304 n

end A120304

/-! ## A120304.P14447582736665007182

`A120588(n+1)-2`
-/

namespace A120304.P14447582736665007182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - 2

end

end A120304.P14447582736665007182

namespace A120304

/-- `A120588(n+1)-2` -/
def P14447582736665007182.Spec : Prop :=
  ∀ n, P14447582736665007182.a n = A120304 n

end A120304

/-! ## A120304.P4316967752513959915

`A028303(2*n)-2`
-/

namespace A120304.P4316967752513959915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n) - 2

end

end A120304.P4316967752513959915

namespace A120304

/-- `A028303(2*n)-2` -/
def P4316967752513959915.Spec : Prop :=
  ∀ n, P4316967752513959915.a n = A120304 n

end A120304

/-! ## A120304.P15477604100067709591

`A028304(2*n)-2`
-/

namespace A120304.P15477604100067709591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) - 2

end

end A120304.P15477604100067709591

namespace A120304

/-- `A028304(2*n)-2` -/
def P15477604100067709591.Spec : Prop :=
  ∀ n, P15477604100067709591.a n = A120304 n

end A120304

/-! ## A120304.P5131743795014314000

`A126120(2*n)-2`
-/

namespace A120304.P5131743795014314000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) - 2

end

end A120304.P5131743795014314000

namespace A120304

/-- `A126120(2*n)-2` -/
def P5131743795014314000.Spec : Prop :=
  ∀ n, P5131743795014314000.a n = A120304 n

end A120304

/-! ## A120304.P632116684093756914

`A126324(2*n)-2`
-/

namespace A120304.P632116684093756914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n) - 2

end

end A120304.P632116684093756914

namespace A120304

/-- `A126324(2*n)-2` -/
def P632116684093756914.Spec : Prop :=
  ∀ n, P632116684093756914.a n = A120304 n

end A120304

/-! ## A120304.P14745685875805559676

`A208355(2*n)-2`
-/

namespace A120304.P14745685875805559676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n) - 2

end

end A120304.P14745685875805559676

namespace A120304

/-- `A208355(2*n)-2` -/
def P14745685875805559676.Spec : Prop :=
  ∀ n, P14745685875805559676.a n = A120304 n

end A120304

/-! ## A120304.P1037273092829143880

`A329687(3*n)-2`
-/

namespace A120304.P1037273092829143880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (3 * n) - 2

end

end A120304.P1037273092829143880

namespace A120304

/-- `A329687(3*n)-2` -/
def P1037273092829143880.Spec : Prop :=
  ∀ n, P1037273092829143880.a n = A120304 n

end A120304

/-! ## A120304.P7861531085025673324

`A246604(n)-2+n`
-/

namespace A120304.P7861531085025673324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n - 2 + (n : ℤ)

end

end A120304.P7861531085025673324

namespace A120304

/-- `A246604(n)-2+n` -/
def P7861531085025673324.Spec : Prop :=
  ∀ n, P7861531085025673324.a n = A120304 n

theorem P7861531085025673324.correct : P7861531085025673324.Spec := by
  intro n
  simp only [A120304, Nat.add_sub_cancel, A120304.P7861531085025673324.a, A120304.P16195813583233364787.a, A000108, A000108.P17551949696095299361.a, A246604, A246604.P5603396420743086449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120304

/-! ## A120304.P16927933217737646817

`A089408(Δ[n²])-2`
-/

namespace A120304.P16927933217737646817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A120304.P16927933217737646817

namespace A120304

/-- `A089408(Δ[n²])-2` -/
def P16927933217737646817.Spec : Prop :=
  ∀ n, P16927933217737646817.a n = A120304 n

end A120304

/-! ## A120304.P1564174540656988996

`A097331(Δ[n²])-2`
-/

namespace A120304.P1564174540656988996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A120304.P1564174540656988996

namespace A120304

/-- `A097331(Δ[n²])-2` -/
def P1564174540656988996.Spec : Prop :=
  ∀ n, P1564174540656988996.a n = A120304 n

end A120304

/-! ## A120304.P7259386800928941376

`abs(A115140(n+1))-2`
-/

namespace A120304.P7259386800928941376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 (n + 1)| - 2

end

end A120304.P7259386800928941376

namespace A120304

/-- `abs(A115140(n+1))-2` -/
def P7259386800928941376.Spec : Prop :=
  ∀ n, P7259386800928941376.a n = A120304 n

end A120304

/-! ## A120304.P15244989019478223645

`abs(A090192(2*n+1))-2`
-/

namespace A120304.P15244989019478223645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090192 (2 * n + 1)| - 2

end

end A120304.P15244989019478223645

namespace A120304

/-- `abs(A090192(2*n+1))-2` -/
def P15244989019478223645.Spec : Prop :=
  ∀ n, P15244989019478223645.a n = A120304 n

end A120304

/-! ## A120304.P4326561357736936374

`abs(A105523(2*n+1))-2`
-/

namespace A120304.P4326561357736936374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105523 (2 * n + 1)| - 2

end

end A120304.P4326561357736936374

namespace A120304

/-- `abs(A105523(2*n+1))-2` -/
def P4326561357736936374.Spec : Prop :=
  ∀ n, P4326561357736936374.a n = A120304 n

end A120304

/-! ## A120304.P1855994342571067470

`abs(A210628(2*n+1))-2`
-/

namespace A120304.P1855994342571067470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210628 (2 * n + 1)| - 2

end

end A120304.P1855994342571067470

namespace A120304

/-- `abs(A210628(2*n+1))-2` -/
def P1855994342571067470.Spec : Prop :=
  ∀ n, P1855994342571067470.a n = A120304 n

end A120304

/-! ## A120304.P17827865610077250250

`abs(A182492(4*n+3))-2`
-/

namespace A120304.P17827865610077250250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182492 (4 * n + 3)| - 2

end

end A120304.P17827865610077250250

namespace A120304

/-- `abs(A182492(4*n+3))-2` -/
def P17827865610077250250.Spec : Prop :=
  ∀ n, P17827865610077250250.a n = A120304 n

end A120304

/-! ## A120304.P6447619216742894324

`A246604(n)+A023444(n)`
-/

namespace A120304.P6447619216742894324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n + A023444 n

end

end A120304.P6447619216742894324

namespace A120304

/-- `A246604(n)+A023444(n)` -/
def P6447619216742894324.Spec : Prop :=
  ∀ n, P6447619216742894324.a n = A120304 n

theorem P6447619216742894324.correct : P6447619216742894324.Spec := by
  intro n
  simp only [A120304, Nat.add_sub_cancel, A120304.P6447619216742894324.a, A120304.P16195813583233364787.a, A000108, A000108.P17551949696095299361.a, A023444, A023444.P8712163668128210297.a, A246604, A246604.P5603396420743086449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120304

/-!
# A120305: a(n) = Sum_{i=0..n} Sum_{j=0..n} (-1)^(i+j) * (i+j)!/(i!j!).

The programs for A120305, the canonical program `A120305.P7501613952261659235` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120305 has offset 0).

The definition of A120305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120305.P7501613952261659235

`ceil(A026638(n)/3)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120305

/-- `ceil(A026638(n)/3)` -/
def P7501613952261659235.Spec : Prop :=
  ∀ n, P7501613952261659235.a n = A120305 n

theorem P7501613952261659235.correct : P7501613952261659235.Spec := by
  intro n
  simp only [A120305]

end A120305

/-! ## A120305.P9980395752090704552

`∑[A072547(n+1)]`
-/

namespace A120305.P9980395752090704552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120305.P9980395752090704552

namespace A120305

/-- `∑[A072547(n+1)]` -/
def P9980395752090704552.Spec : Prop :=
  ∀ n, P9980395752090704552.a n = A120305 n

end A120305

/-! ## A120305.P7759921359081921162

`∑[abs(Δ[A112556(n)])]`
-/

namespace A120305.P7759921359081921162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112556 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120305.P7759921359081921162

namespace A120305

/-- `∑[abs(Δ[A112556(n)])]` -/
def P7759921359081921162.Spec : Prop :=
  ∀ n, P7759921359081921162.a n = A120305 n

end A120305

/-! ## A120305.P9606973661197903951

`A112556(n+1)-1`
-/

namespace A120305.P9606973661197903951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112556 (n + 1) - 1

end

end A120305.P9606973661197903951

namespace A120305

/-- `A112556(n+1)-1` -/
def P9606973661197903951.Spec : Prop :=
  ∀ n, P9606973661197903951.a n = A120305 n

end A120305

/-! ## A120305.P3746889726094369229

`A116466(2*(n+1))-1`
-/

namespace A120305.P3746889726094369229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116466 (2 * (n + 1)) - 1

end

end A120305.P3746889726094369229

namespace A120305

/-- `A116466(2*(n+1))-1` -/
def P3746889726094369229.Spec : Prop :=
  ∀ n, P3746889726094369229.a n = A120305 n

end A120305

/-! ## A120305.P3707582769534920298

`ceil((A000984(n)-a(n-1))/2)` with `a(0)=1`
-/

namespace A120305.P3707582769534920298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A000984 n - a (n - 1) : ℚ) / 2⌉

end

end A120305.P3707582769534920298

namespace A120305

/-- `ceil((A000984(n)-a(n-1))/2)` -/
def P3707582769534920298.Spec : Prop :=
  ∀ n, P3707582769534920298.a n = A120305 n

end A120305

/-! ## A120305.P10177409464191279369

`∑[A109078(A004273(n))]`
-/

namespace A120305.P10177409464191279369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109078 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120305.P10177409464191279369

namespace A120305

/-- `∑[A109078(A004273(n))]` -/
def P10177409464191279369.Spec : Prop :=
  ∀ n, P10177409464191279369.a n = A120305 n

end A120305

/-! ## A120305.P9876056757118395449

`A307354(n)-A306409(n)`
-/

namespace A120305.P9876056757118395449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307354 n - A306409 n

end

end A120305.P9876056757118395449

namespace A120305

/-- `A307354(n)-A306409(n)` -/
def P9876056757118395449.Spec : Prop :=
  ∀ n, P9876056757118395449.a n = A120305 n

end A120305

/-! ## A120305.P2504527596283925507

`A033999(n)+2*A307349(n)`
-/

namespace A120305.P2504527596283925507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 2 * A307349 n

end

end A120305.P2504527596283925507

namespace A120305

/-- `A033999(n)+2*A307349(n)` -/
def P2504527596283925507.Spec : Prop :=
  ∀ n, P2504527596283925507.a n = A120305 n

end A120305

/-! ## A120305.P6077341147915064204

`A006134(n)-2*A306409(n)`
-/

namespace A120305.P6077341147915064204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n - 2 * A306409 n

end

end A120305.P6077341147915064204

namespace A120305

/-- `A006134(n)-2*A306409(n)` -/
def P6077341147915064204.Spec : Prop :=
  ∀ n, P6077341147915064204.a n = A120305 n

end A120305

/-! ## A120305.P4400082720241307673

`∑[2*A026641(n)-A000984(n)]`
-/

namespace A120305.P4400082720241307673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026641 n - A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120305.P4400082720241307673

namespace A120305

/-- `∑[2*A026641(n)-A000984(n)]` -/
def P4400082720241307673.Spec : Prop :=
  ∀ n, P4400082720241307673.a n = A120305 n

end A120305

/-! ## A120305.P14788273041587278240

`A014300(n+1)-∑[A014301(n+1)]`
-/

namespace A120305.P14788273041587278240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120305.P14788273041587278240

namespace A120305

/-- `A014300(n+1)-∑[A014301(n+1)]` -/
def P14788273041587278240.Spec : Prop :=
  ∀ n, P14788273041587278240.a n = A120305 n

end A120305

/-! ## A120305.P13265395010140731035

`A191526(Δ[n²])-∑[A014301(n+1)]`
-/

namespace A120305.P13265395010140731035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A120305.P13265395010140731035

namespace A120305

/-- `A191526(Δ[n²])-∑[A014301(n+1)]` -/
def P13265395010140731035.Spec : Prop :=
  ∀ n, P13265395010140731035.a n = A120305 n

end A120305

/-! ## A120305.P17192005378216360189

`A307354(n)+A307354(n)-A006134(n)`
-/

namespace A120305.P17192005378216360189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307354 n + (A307354 n - A006134 n)

end

end A120305.P17192005378216360189

namespace A120305

/-- `A307354(n)+A307354(n)-A006134(n)` -/
def P17192005378216360189.Spec : Prop :=
  ∀ n, P17192005378216360189.a n = A120305 n

end A120305

/-! ## A120305.P7308677946233028306

`∑[A091526(n)+A026641(n)]-A026641(n)`
-/

namespace A120305.P7308677946233028306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091526 n + A026641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026641 n

end

end A120305.P7308677946233028306

namespace A120305

/-- `∑[A091526(n)+A026641(n)]-A026641(n)` -/
def P7308677946233028306.Spec : Prop :=
  ∀ n, P7308677946233028306.a n = A120305 n

end A120305

/-! ## A120305.P8557002102800613910

`A307354(n)+A307354(n)-∑[A000984(n)]`
-/

namespace A120305.P8557002102800613910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307354 n + (A307354 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120305.P8557002102800613910

namespace A120305

/-- `A307354(n)+A307354(n)-∑[A000984(n)]` -/
def P8557002102800613910.Spec : Prop :=
  ∀ n, P8557002102800613910.a n = A120305 n

end A120305

/-! ## A120305.P1472433562716136780

`A026641(n)+A014301(n+1)-∑[A014301(n+1)]`
-/

namespace A120305.P1472433562716136780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n + A014301 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120305.P1472433562716136780

namespace A120305

/-- `A026641(n)+A014301(n+1)-∑[A014301(n+1)]` -/
def P1472433562716136780.Spec : Prop :=
  ∀ n, P1472433562716136780.a n = A120305 n

end A120305

/-! ## A120305.P16082443560588047787

`2*A307354(n)-A006134(n)`
-/

namespace A120305.P16082443560588047787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307354 n - A006134 n

end

end A120305.P16082443560588047787

namespace A120305

/-- `2*A307354(n)-A006134(n)` -/
def P16082443560588047787.Spec : Prop :=
  ∀ n, P16082443560588047787.a n = A120305 n

end A120305

/-! ## A120305.P10208363570033052994

`∑[2*A026641(n)]-A006134(n)`
-/

namespace A120305.P10208363570033052994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006134 n

end

end A120305.P10208363570033052994

namespace A120305

/-- `∑[2*A026641(n)]-A006134(n)` -/
def P10208363570033052994.Spec : Prop :=
  ∀ n, P10208363570033052994.a n = A120305 n

end A120305

/-! ## A120305.P1260042403979450623

`A133915(n)-A002450(n)`
-/

namespace A120305.P1260042403979450623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133915 n - A002450 n

end

end A120305.P1260042403979450623

namespace A120305

/-- `A133915(n)-A002450(n)` -/
def P1260042403979450623.Spec : Prop :=
  ∀ n, P1260042403979450623.a n = A120305 n

theorem P1260042403979450623.correct : P1260042403979450623.Spec := by
  intro n
  simp only [A120305, Nat.add_sub_cancel, A120305.P1260042403979450623.a, A120305.P7501613952261659235.a, A002450, A002450.P11965591501849022414.a, A026638, A026638.P13184439560798616966.a, A133915, A133915.P1448036709764330606.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120305

/-!
# A120307: Inverse determinant of n X n matrix M[i,j] = i*j/(i+j-1).

The programs for A120307, the canonical program `A120307.P15128499229857601035` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120307 has offset 1).

The definition of A120307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120307.P15128499229857601035

`A163085(2*(n+1))/(2*(n+1))!`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120307

/-- `A163085(2*(n+1))/(2*(n+1))!` -/
def P15128499229857601035.Spec : Prop :=
  ∀ n, P15128499229857601035.a n = (A120307 (n + 1) : ℚ)

end A120307

/-! ## A120307.P7444959236749506478

`∏[C(2*n+1, n)²/(2*n+1)]`
-/

namespace A120307.P7444959236749506478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) n ^ 2 : ℚ) / (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120307.P7444959236749506478

namespace A120307

/-- `∏[C(2*n+1, n)²/(2*n+1)]` -/
def P7444959236749506478.Spec : Prop :=
  ∀ n, P7444959236749506478.a n = (A120307 (n + 1) : ℚ)

end A120307

/-! ## A120307.P12916370762327612122

`C(2*n+1, n)²/(2*n+1)*a(n-1)` with `a(0)=1`
-/

namespace A120307.P12916370762327612122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * n + 1) n ^ 2 : ℚ) / (2 * n + 1 : ℚ) * a (n - 1)

end

end A120307.P12916370762327612122

namespace A120307

/-- `C(2*n+1, n)²/(2*n+1)*a(n-1)` -/
def P12916370762327612122.Spec : Prop :=
  ∀ n, P12916370762327612122.a n = (A120307 (n + 1) : ℚ)

end A120307

/-! ## A120307.P16829964005240071017

`∏[A000891(n)]`
-/

namespace A120307.P16829964005240071017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120307.P16829964005240071017

namespace A120307

/-- `∏[A000891(n)]` -/
def P16829964005240071017.Spec : Prop :=
  ∀ n, P16829964005240071017.a n = A120307 (n + 1)

end A120307

/-! ## A120307.P10996963478990325705

`∏[A005558(2*n)]`
-/

namespace A120307.P10996963478990325705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005558 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120307.P10996963478990325705

namespace A120307

/-- `∏[A005558(2*n)]` -/
def P10996963478990325705.Spec : Prop :=
  ∀ n, P10996963478990325705.a n = A120307 (n + 1)

end A120307

/-!
# A120308: Numerator((p-1)*H(p-1))/p^2 for p = prime(n) > 3, where H(k) is k-th harmonic number A001008(k)/A002805(k).

The programs for A120308, there is no canonical definition to state claims against.
-/

/-! ## A120308.P7785561353898273139

`gcd(3, A055548(n+1))*A061002(n+3)`
-/

namespace A120308.P7785561353898273139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A055548 (n + 1)) : ℤ) * A061002 (n + 3)

end

end A120308.P7785561353898273139

/-! ## A120308.P3600636289801863761

`A061002(n+3)*A064353(A079265(n))`
-/

namespace A120308.P3600636289801863761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061002 (n + 3) * A064353 (A079265 n).toNat

end

end A120308.P3600636289801863761

/-!
# A120309: Numbers k such that pi(k) == 0 (mod 4), where pi() = A000720.

The programs for A120309, the canonical program `A120309.P4479937271549243067` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120309 has offset 1).

The definition of A120309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120309.P4479937271549243067

`eq[0, A000720(n+1)%4]+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120309

/-- `eq[0, A000720(n+1)%4]+1` -/
def P4479937271549243067.Spec : Prop :=
  ∀ n, (P4479937271549243067.a n : ℤ) = A120309 (n + 1)

theorem P4479937271549243067.correct : P4479937271549243067.Spec := by
  intro n
  simp only [A120309, Nat.add_sub_cancel]

end A120309

/-! ## A120309.P1103592108709599349

`eq[4, gcd(4, A000720(abs(1-n)+1))]`
-/

namespace A120309.P1103592108709599349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A000720 (|1 - (n : ℤ)| + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120309.P1103592108709599349

namespace A120309

/-- `eq[4, gcd(4, A000720(abs(1-n)+1))]` -/
def P1103592108709599349.Spec : Prop :=
  ∀ n, (P1103592108709599349.a n : ℤ) = A120309 (n + 1)

end A120309

/-! ## A120309.P3173124194799187366

`eq[1, A056594(A000720(n+1))]+1`
-/

namespace A120309.P3173124194799187366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A000720 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120309.P3173124194799187366

namespace A120309

/-- `eq[1, A056594(A000720(n+1))]+1` -/
def P3173124194799187366.Spec : Prop :=
  ∀ n, (P3173124194799187366.a n : ℤ) = A120309 (n + 1)

end A120309

/-! ## A120309.P14516341298076773451

`lt[1, A007814(A000720(n+1)+8)]+1`
-/

namespace A120309.P14516341298076773451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000720 (n + 1) + 8).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A120309.P14516341298076773451

namespace A120309

/-- `lt[1, A007814(A000720(n+1)+8)]+1` -/
def P14516341298076773451.Spec : Prop :=
  ∀ n, (P14516341298076773451.a n : ℤ) = A120309 (n + 1)

end A120309

/-! ## A120309.P15502683417301816903

`eq[A230980(n)%4, floor(acot(n))]`
-/

namespace A120309.P15502683417301816903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230980 n) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120309.P15502683417301816903

namespace A120309

/-- `eq[A230980(n)%4, floor(acot(n))]` -/
def P15502683417301816903.Spec : Prop :=
  ∀ n, (P15502683417301816903.a n : ℤ) = A120309 (n + 1)

end A120309

/-! ## A120309.P143300483157919597

`eq[1, A036234(n+1)%4]+1`
-/

namespace A120309.P143300483157919597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036234 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120309.P143300483157919597

namespace A120309

/-- `eq[1, A036234(n+1)%4]+1` -/
def P143300483157919597.Spec : Prop :=
  ∀ n, (P143300483157919597.a n : ℤ) = A120309 (n + 1)

end A120309

/-! ## A120309.P4225744822896268010

`lt[A230980(n+1)%4, 1]+1`
-/

namespace A120309.P4225744822896268010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230980 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A120309.P4225744822896268010

namespace A120309

/-- `lt[A230980(n+1)%4, 1]+1` -/
def P4225744822896268010.Spec : Prop :=
  ∀ n, (P4225744822896268010.a n : ℤ) = A120309 (n + 1)

end A120309

/-! ## A120309.P17666418710198370217

`lt[∑[A010051(n+1)]%4, 1]+1`
-/

namespace A120309.P17666418710198370217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A120309.P17666418710198370217

namespace A120309

/-- `lt[∑[A010051(n+1)]%4, 1]+1` -/
def P17666418710198370217.Spec : Prop :=
  ∀ n, (P17666418710198370217.a n : ℤ) = A120309 (n + 1)

end A120309

/-! ## A120309.P12061950026204017777

`eq[A230980(n)%4, A000007(n)]`
-/

namespace A120309.P12061950026204017777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230980 n) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120309.P12061950026204017777

namespace A120309

/-- `eq[A230980(n)%4, A000007(n)]` -/
def P12061950026204017777.Spec : Prop :=
  ∀ n, (P12061950026204017777.a n : ℤ) = A120309 (n + 1)

end A120309

/-! ## A120309.P9790982593583119678

`eq[and(3, A230980(n)), A000038(n)]`
-/

namespace A120309.P9790982593583119678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A230980 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120309.P9790982593583119678

namespace A120309

/-- `eq[and(3, A230980(n)), A000038(n)]` -/
def P9790982593583119678.Spec : Prop :=
  ∀ n, (P9790982593583119678.a n : ℤ) = A120309 (n + 1)

end A120309

/-!
# A120311: Numbers k such that pi(k) == 0 (mod 4), where pi() = A000720, and such that prime(k) == 3 (mod 4).

The programs for A120311, there is no canonical definition to state claims against.
-/

/-! ## A120311.P10124278618409992042

`∩[A332807(2*(n+1)), A120309(n+2)]`
-/

namespace A120311.P10124278618409992042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332807 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120309 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120311.P10124278618409992042

/-! ## A120311.P5390284773366377724

`∩[A080148(n+1), A120309(n+1)]`
-/

namespace A120311.P5390284773366377724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120311.P5390284773366377724

/-! ## A120311.P11265874231513426492

`∩[eq[0, A000720(n+1)%4]+1, A080148(n+1)]`
-/

namespace A120311.P11265874231513426492
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (n + 1)) 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A120311.P11265874231513426492

/-! ## A120311.P4190792932356259749

`filter[A120309(n+2), A100672(#)]`
-/

namespace A120311.P4190792932356259749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120309 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100672 (f1 j).toNat = 1) n)

end

end A120311.P4190792932356259749

/-! ## A120311.P2253207781185054277

`∩[A000720(A002145(n+1)), A120309(n+1)]`
-/

namespace A120311.P2253207781185054277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002145 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120311.P2253207781185054277

/-!
# A120312: Numbers k such that pi(k) == 0 (mod 4), where pi() = A000720, and such that prime(k) == 1 (mod 4).

The programs for A120312, there is no canonical definition to state claims against.
-/

/-! ## A120312.P2009302984600021513

`∩[A332807(2*n+1), A120309(n+2)]`
-/

namespace A120312.P2009302984600021513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332807 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120309 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120312.P2009302984600021513

/-! ## A120312.P4732692214029071123

`∩[A080147(n+1), A120309(n+1)]`
-/

namespace A120312.P4732692214029071123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120312.P4732692214029071123

/-! ## A120312.P1019214542576728720

`filter[A120309(n+2), A098033(#)]`
-/

namespace A120312.P1019214542576728720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120309 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098033 (f1 j).toNat = 1) n)

end

end A120312.P1019214542576728720

/-! ## A120312.P15060700660613744308

`∩[A120309(n+1), A192593(n+1)]`
-/

namespace A120312.P15060700660613744308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120312.P15060700660613744308

/-!
# A120315: Combinatorial prime formulas. This sequence gives the coefficients a(n) of combinatorial sum formulas of n-th primes or lesser: prime(n) = 2^(n-5)/(n-1)! Sum_{i=1..n} a(i) * C(n-1,i-1) * (1-(n-i)/2).

The programs for A120315, there is no canonical definition to state claims against.
-/

/-! ## A120315.P10670718877004549349

`A014684(A119362(n+1))`
-/

namespace A120315.P10670718877004549349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (A119362 (n + 1)).toNat

end

end A120315.P10670718877004549349

/-! ## A120315.P10886055291540966465

`filter[A119362(n+1), A005171(#)]`
-/

namespace A120315.P10886055291540966465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A120315.P10886055291540966465

/-! ## A120315.P16593278352544117487

`filter[A119362(n+1), A005713(#)]`
-/

namespace A120315.P16593278352544117487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005713 (f1 j).toNat = 1) n)

end

end A120315.P16593278352544117487

/-! ## A120315.P6830403167130485586

`filter[A119362(n+1), A010060(#)]`
-/

namespace A120315.P6830403167130485586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A120315.P6830403167130485586

/-!
# A120319: RF(3): refactorable numbers with smallest prime factor 3.

The programs for A120319, there is no canonical definition to state claims against.
-/

/-! ## A120319.P15568076512928878501

`∩[A036896(n+1), A016946(n)]`
-/

namespace A120319.P15568076512928878501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120319.P15568076512928878501

/-! ## A120319.P9888968067657554180

`∩[A280353(n+1), A016946(n)]`
-/

namespace A120319.P9888968067657554180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120319.P9888968067657554180

/-! ## A120319.P4268457344037948029

`∩[A322797(n+1), A016946(n)]`
-/

namespace A120319.P4268457344037948029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120319.P4268457344037948029

/-! ## A120319.P12364452098498618522

`∩[A036896(n+1), A016766(n)]`
-/

namespace A120319.P12364452098498618522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120319.P12364452098498618522

/-! ## A120319.P4932484877309846692

`∩[A036896(n+1), A353238(n+1)]`
-/

namespace A120319.P4932484877309846692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120319.P4932484877309846692

/-! ## A120319.P10949486193655991379

`∩[(3*n)², A036897(n+1)²]`
-/

namespace A120319.P10949486193655991379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036897 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120319.P10949486193655991379

/-! ## A120319.P3008016168930915719

`∩[A036896(n+1), A173102(n+1)]`
-/

namespace A120319.P3008016168930915719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120319.P3008016168930915719

/-! ## A120319.P5266170945884744314

`∩[A036907(n+1), A016946(n)]`
-/

namespace A120319.P5266170945884744314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120319.P5266170945884744314

/-! ## A120319.P6504432132000974565

`∩[A049439(n+1), A016946(n)]`
-/

namespace A120319.P6504432132000974565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120319.P6504432132000974565

/-! ## A120319.P4484469396786723336

`∩[A376120(n+1), A016946(n)]`
-/

namespace A120319.P4484469396786723336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120319.P4484469396786723336

/-!
# A120323: Periodic sequence 0, 3, 1, 0, 1, 3.

The programs for A120323, the canonical program `A120323.P1555061394000016278` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120323 has offset 0).

The definition of A120323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120323.P1555061394000016278

`C(3, gcd(6, n)+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120323

/-- `C(3, gcd(6, n)+1)` -/
def P1555061394000016278.Spec : Prop :=
  ∀ n, (P1555061394000016278.a n : ℤ) = A120323 n

theorem P1555061394000016278.correct : P1555061394000016278.Spec := by
  intro n
  simp only [A120323]

end A120323

/-!
# A120324: Periodic sequence 0, 1, 0, 4, 0, 1.

The programs for A120324, the canonical program `A120324.P1844589818627025521` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120324 has offset 0).

The definition of A120324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120324.P1844589818627025521

`a(n-6)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=4, a(4)=0, a(5)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120324

/-- `a(n-6)` -/
def P1844589818627025521.Spec : Prop :=
  ∀ n, (P1844589818627025521.a n : ℤ) = A120324 n

theorem P1844589818627025521.correct : P1844589818627025521.Spec := by
  intro n
  simp only [A120324]

end A120324

/-!
# A120325: Period 6: repeat [0, 0, 1, 0, 1, 0].

The programs for A120325, the canonical program `A120325.P12716279113077968096` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120325 has offset 0).

The definition of A120325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120325.P12716279113077968096

`(n+3)²%((5+(-1)^n)/2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120325

/-- `(n+3)²%((5+(-1)^n)/2)` -/
def P12716279113077968096.Spec : Prop :=
  ∀ n, P12716279113077968096.a n = A120325 n

theorem P12716279113077968096.correct : P12716279113077968096.Spec := by
  intro n
  simp only [A120325]

end A120325

/-!
# A120326: Cumulative sum of the remainders when dividing primes by 3.

The programs for A120326, the canonical program `A120326.P1315719158318225091` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120326 has offset 1).

The definition of A120326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120326.P1315719158318225091

`∑[A039701(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120326

/-- `∑[A039701(n+1)]` -/
def P1315719158318225091.Spec : Prop :=
  ∀ n, P1315719158318225091.a n = A120326 (n + 1)

theorem P1315719158318225091.correct : P1315719158318225091.Spec := by
  intro n
  simp only [A120326, Nat.add_sub_cancel]

end A120326

/-! ## A120326.P1384657168987419722

`∑[Δ[A007504(n)]%3]`
-/

namespace A120326.P1384657168987419722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P1384657168987419722

namespace A120326

/-- `∑[Δ[A007504(n)]%3]` -/
def P1384657168987419722.Spec : Prop :=
  ∀ n, P1384657168987419722.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P12317008018327443823

`∑[A000040(n+1)%3]`
-/

namespace A120326.P12317008018327443823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P12317008018327443823

namespace A120326

/-- `∑[A000040(n+1)%3]` -/
def P12317008018327443823.Spec : Prop :=
  ∀ n, P12317008018327443823.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P15132294927645268148

`∑[A001749(n+1)%3]`
-/

namespace A120326.P15132294927645268148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001749 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P15132294927645268148

namespace A120326

/-- `∑[A001749(n+1)%3]` -/
def P15132294927645268148.Spec : Prop :=
  ∀ n, P15132294927645268148.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P10011201768309543618

`∑[A004087(n+1)%3]`
-/

namespace A120326.P10011201768309543618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004087 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P10011201768309543618

namespace A120326

/-- `∑[A004087(n+1)%3]` -/
def P10011201768309543618.Spec : Prop :=
  ∀ n, P10011201768309543618.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P16878224752190732607

`∑[A007605(n+1)%3]`
-/

namespace A120326.P16878224752190732607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007605 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P16878224752190732607

namespace A120326

/-- `∑[A007605(n+1)%3]` -/
def P16878224752190732607.Spec : Prop :=
  ∀ n, P16878224752190732607.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P4155675910959539613

`∑[A030078(n+1)%3]`
-/

namespace A120326.P4155675910959539613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030078 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P4155675910959539613

namespace A120326

/-- `∑[A030078(n+1)%3]` -/
def P4155675910959539613.Spec : Prop :=
  ∀ n, P4155675910959539613.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P7719254090018021440

`∑[A179665(n+1)%3]`
-/

namespace A120326.P7719254090018021440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179665 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P7719254090018021440

namespace A120326

/-- `∑[A179665(n+1)%3]` -/
def P7719254090018021440.Spec : Prop :=
  ∀ n, P7719254090018021440.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P7680907192839314564

`∑[sqrt(A001248(n+1))%3]`
-/

namespace A120326.P7680907192839314564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P7680907192839314564

namespace A120326

/-- `∑[sqrt(A001248(n+1))%3]` -/
def P7680907192839314564.Spec : Prop :=
  ∀ n, P7680907192839314564.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P1062916249501649977

`∑[∑[A054541(n+1)]%3]`
-/

namespace A120326.P1062916249501649977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P1062916249501649977

namespace A120326

/-- `∑[∑[A054541(n+1)]%3]` -/
def P1062916249501649977.Spec : Prop :=
  ∀ n, P1062916249501649977.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P15998537982362654899

`∑[(A006093(n+1)+1)%3]`
-/

namespace A120326.P15998537982362654899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P15998537982362654899

namespace A120326

/-- `∑[(A006093(n+1)+1)%3]` -/
def P15998537982362654899.Spec : Prop :=
  ∀ n, P15998537982362654899.a n = A120326 (n + 1)

theorem P15998537982362654899.correct : P15998537982362654899.Spec := by
  intro n
  simp only [A120326, Nat.add_sub_cancel, A120326.P15998537982362654899.f1, A120326.P15998537982362654899.a, A120326.P1315719158318225091.f1, A120326.P1315719158318225091.a, A006093, A006093.P2906174024863549003.a, A039701, A039701.P15201722471215268317.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120326

/-! ## A120326.P9816040912522488327

`∑[(A033286(n+1)/(n+1))%3]`
-/

namespace A120326.P9816040912522488327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A033286 (n + 1) : ℚ) / (n + 1 : ℚ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P9816040912522488327

namespace A120326

/-- `∑[(A033286(n+1)/(n+1))%3]` -/
def P9816040912522488327.Spec : Prop :=
  ∀ n, P9816040912522488327.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P7447759895145199234

`∑[A083218(A039710(n+1))]`
-/

namespace A120326.P7447759895145199234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083218 (A039710 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P7447759895145199234

namespace A120326

/-- `∑[A083218(A039710(n+1))]` -/
def P7447759895145199234.Spec : Prop :=
  ∀ n, P7447759895145199234.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P710965766823603398

`∑[A083218(A095959(n+1))]`
-/

namespace A120326.P710965766823603398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083218 (A095959 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P710965766823603398

namespace A120326

/-- `∑[A083218(A095959(n+1))]` -/
def P710965766823603398.Spec : Prop :=
  ∀ n, P710965766823603398.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P14987339285348908070

`∑[A249603(A249602(n+1))]`
-/

namespace A120326.P14987339285348908070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249603 (A249602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P14987339285348908070

namespace A120326

/-- `∑[A249603(A249602(n+1))]` -/
def P14987339285348908070.Spec : Prop :=
  ∀ n, P14987339285348908070.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P13816328398107962791

`∑[record[A006530(n+2)]%3]`
-/

namespace A120326.P13816328398107962791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P13816328398107962791

namespace A120326

/-- `∑[record[A006530(n+2)]%3]` -/
def P13816328398107962791.Spec : Prop :=
  ∀ n, P13816328398107962791.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P10147863608324250746

`∑[record[A020639(n+2)]%3]`
-/

namespace A120326.P10147863608324250746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P10147863608324250746

namespace A120326

/-- `∑[record[A020639(n+2)]%3]` -/
def P10147863608324250746.Spec : Prop :=
  ∀ n, P10147863608324250746.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P730499451917668888

`∑[record[A014963(n+2)]%3]`
-/

namespace A120326.P730499451917668888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P730499451917668888

namespace A120326

/-- `∑[record[A014963(n+2)]%3]` -/
def P730499451917668888.Spec : Prop :=
  ∀ n, P730499451917668888.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P16361803872315090034

`∑[A010872(A000040(n+1))]`
-/

namespace A120326.P16361803872315090034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P16361803872315090034

namespace A120326

/-- `∑[A010872(A000040(n+1))]` -/
def P16361803872315090034.Spec : Prop :=
  ∀ n, P16361803872315090034.a n = A120326 (n + 1)

end A120326

/-! ## A120326.P10479908417369083277

`∑[A010872(A008578(n+2))]`
-/

namespace A120326.P10479908417369083277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120326.P10479908417369083277

namespace A120326

/-- `∑[A010872(A008578(n+2))]` -/
def P10479908417369083277.Spec : Prop :=
  ∀ n, P10479908417369083277.a n = A120326 (n + 1)

end A120326

/-!
# A120327: Smallest nonsquarefree number >= n.

The programs for A120327, the canonical program `A120327.P4710944750687290271` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120327 has offset 1).

The definition of A120327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120327.P7069224179372411012

`A013929(∑[char[A105570(n)]])`
-/

namespace A120327.P7069224179372411012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120327.P7069224179372411012

namespace A120327

/-- `A013929(∑[char[A105570(n)]])` -/
def P7069224179372411012.Spec : Prop :=
  ∀ n, P7069224179372411012.a n = A120327 (n + 1)

end A120327

/-! ## A120327.P4710944750687290271

`A013929(A294234(2*n)+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120327

/-- `A013929(A294234(2*n)+1)` -/
def P4710944750687290271.Spec : Prop :=
  ∀ n, P4710944750687290271.a n = A120327 (n + 1)

theorem P4710944750687290271.correct : P4710944750687290271.Spec := by
  intro n
  simp only [A120327, Nat.add_sub_cancel]

end A120327

/-! ## A120327.P16707888836030737955

`A013929(1-A013928(n+1)+n)`
-/

namespace A120327.P16707888836030737955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (1 - A013928 (n + 1) + (n : ℤ)).toNat

end

end A120327.P16707888836030737955

namespace A120327

/-- `A013929(1-A013928(n+1)+n)` -/
def P16707888836030737955.Spec : Prop :=
  ∀ n, P16707888836030737955.a n = A120327 (n + 1)

end A120327

/-! ## A120327.P1617444500333719815

`A013929(2-A107079(n+1)+n)`
-/

namespace A120327.P1617444500333719815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (2 - A107079 (n + 1) + (n : ℤ)).toNat

end

end A120327.P1617444500333719815

namespace A120327

/-- `A013929(2-A107079(n+1)+n)` -/
def P1617444500333719815.Spec : Prop :=
  ∀ n, P1617444500333719815.a n = A120327 (n + 1)

end A120327

/-! ## A120327.P17715300402626868010

`A013929(∑[char[A013929(n+1)]]+1)`
-/

namespace A120327.P17715300402626868010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A120327.P17715300402626868010

namespace A120327

/-- `A013929(∑[char[A013929(n+1)]]+1)` -/
def P17715300402626868010.Spec : Prop :=
  ∀ n, P17715300402626868010.a n = A120327 (n + 1)

end A120327

/-! ## A120327.P1482970862639285972

`A088610(2*(1-A013928(n+1)+n))`
-/

namespace A120327.P1482970862639285972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * (1 - A013928 (n + 1) + (n : ℤ))).toNat

end

end A120327.P1482970862639285972

namespace A120327

/-- `A088610(2*(1-A013928(n+1)+n))` -/
def P1482970862639285972.Spec : Prop :=
  ∀ n, P1482970862639285972.a n = A120327 (n + 1)

end A120327

/-! ## A120327.P10246880784388254135

`A013929(n+1-A262869(2*n+1))`
-/

namespace A120327.P10246880784388254135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 ((n + 1 : ℤ) - A262869 (2 * n + 1)).toNat

end

end A120327.P10246880784388254135

namespace A120327

/-- `A013929(n+1-A262869(2*n+1))` -/
def P10246880784388254135.Spec : Prop :=
  ∀ n, P10246880784388254135.a n = A120327 (n + 1)

end A120327

/-! ## A120327.P17902479215614036490

`A013929(A057627(n+1)+A008966(n+1))`
-/

namespace A120327.P17902479215614036490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (A057627 (n + 1) + A008966 (n + 1)).toNat

end

end A120327.P17902479215614036490

namespace A120327

/-- `A013929(A057627(n+1)+A008966(n+1))` -/
def P17902479215614036490.Spec : Prop :=
  ∀ n, P17902479215614036490.a n = A120327 (n + 1)

end A120327

/-! ## A120327.P17138127706963908569

`A088610(2*(A057627(n+1)+A008966(n+1)))`
-/

namespace A120327.P17138127706963908569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * (A057627 (n + 1) + A008966 (n + 1))).toNat

end

end A120327.P17138127706963908569

namespace A120327

/-- `A088610(2*(A057627(n+1)+A008966(n+1)))` -/
def P17138127706963908569.Spec : Prop :=
  ∀ n, P17138127706963908569.a n = A120327 (n + 1)

end A120327

/-! ## A120327.P12890262136435440817

`A088610(A005843(A057627(n+1)+A008966(n+1)))`
-/

namespace A120327.P12890262136435440817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A005843 (A057627 (n + 1) + A008966 (n + 1)).toNat).toNat

end

end A120327.P12890262136435440817

namespace A120327

/-- `A088610(A005843(A057627(n+1)+A008966(n+1)))` -/
def P12890262136435440817.Spec : Prop :=
  ∀ n, P12890262136435440817.a n = A120327 (n + 1)

end A120327

/-!
# A120328: Sum of three consecutive squares: a(n) = n^2 + (n + 1)^2 + (n + 2)^2.

The programs for A120328, there is no canonical definition to state claims against.
-/

/-! ## A120328.P4139337853656254375

`3*n²+2`
-/

namespace A120328.P4139337853656254375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 2

end

end A120328.P4139337853656254375

/-! ## A120328.P16531022951916116195

`(n-1)²+n²+(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120328.P16531022951916116195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2 + (n ^ 2 : ℤ) + ((n + 1) ^ 2 : ℤ)

end

end A120328.P16531022951916116195

/-! ## A120328.P9546435483954256590

`ceil(3/acot(n)²)`
-/

namespace A120328.P9546435483954256590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉

end

end A120328.P9546435483954256590

/-! ## A120328.P7874019964049733390

`ceil(3*(n²-cos(2)))`
-/

namespace A120328.P7874019964049733390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n ^ 2 : ℝ) - Real.cos (2 : ℝ))⌉

end

end A120328.P7874019964049733390

/-! ## A120328.P1938910367029482615

`floor(3*(n²-cos(3)))`
-/

namespace A120328.P1938910367029482615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n ^ 2 : ℝ) - Real.cos (3 : ℝ))⌋

end

end A120328.P1938910367029482615

/-! ## A120328.P9363224816996732993

`ceil(3*(n²-cot(2)))`
-/

namespace A120328.P9363224816996732993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n ^ 2 : ℝ) - Real.cot (2 : ℝ))⌉

end

end A120328.P9363224816996732993

/-! ## A120328.P10961006704315431394

`ceil(3/acot(n/acot(n)))`
-/

namespace A120328.P10961006704315431394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / SequenceMachineLib.acot ((n : ℝ) / SequenceMachineLib.acot (n : ℝ))⌉

end

end A120328.P10961006704315431394

/-! ## A120328.P14031384027815416455

`∑[a(n-1)+6]` with `a(0)=2, a(1)=3`
-/

namespace A120328.P14031384027815416455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120328.P14031384027815416455

/-! ## A120328.P2680349645082890845

`abs(1-lcm(3, n²+1))`
-/

namespace A120328.P2680349645082890845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 3 (n ^ 2 + 1) : ℤ)|

end

end A120328.P2680349645082890845

/-! ## A120328.P706007496193912696

`∑[ogf((2-x+5x^2)/(1-2x+x^2))]`
-/

namespace A120328.P706007496193912696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120328.P706007496193912696

/-! ## A120328.P18293614674917598092

`ogf((2-x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A120328.P18293614674917598092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 5] [1, -3, 3, -1] n

end

end A120328.P18293614674917598092

/-! ## A120328.P11777911311389610076

`abs(or(2, (2*n)²)-n²)`
-/

namespace A120328.P11777911311389610076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 2 ((2 * n) ^ 2) : ℤ) - (n ^ 2 : ℤ)|

end

end A120328.P11777911311389610076

/-! ## A120328.P2449196191137215466

`abs(xor(2, (2*n)²)-n²)`
-/

namespace A120328.P2449196191137215466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor 2 ((2 * n) ^ 2) : ℤ) - (n ^ 2 : ℤ)|

end

end A120328.P2449196191137215466

/-! ## A120328.P11565967089290800637

`abs(3-a(n-1)-6*n)` with `a(0)=2`
-/

namespace A120328.P11565967089290800637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |3 - a (n - 1) - (6 * n : ℤ)|

end

end A120328.P11565967089290800637

/-! ## A120328.P16214478165229674718

`floor(6*n+a(n-1)-3)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A120328.P16214478165229674718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (6 * n : ℤ) + (a (n - 1) - 3)

end

end A120328.P16214478165229674718

/-! ## A120328.P14288438621542125443

`floor(6*n-(3-a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A120328.P14288438621542125443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (6 * n : ℤ) - (3 - a (n - 1))

end

end A120328.P14288438621542125443

/-! ## A120328.P10339406178988217443

`ceil(A097803(n)/2)`
-/

namespace A120328.P10339406178988217443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A097803 n : ℚ) / 2⌉

end

end A120328.P10339406178988217443

/-! ## A120328.P10526008242691760999

`(A227776(n)+3)/2`
-/

namespace A120328.P10526008242691760999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227776 n + 3 : ℚ) / 2

end

end A120328.P10526008242691760999

/-! ## A120328.P14127669655916716989

`ceil((A005897(n)+2)/2)`
-/

namespace A120328.P14127669655916716989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005897 n + 2 : ℚ) / 2⌉

end

end A120328.P14127669655916716989

/-! ## A120328.P14634543044669339077

`A083196(n)%A222465(n)`
-/

namespace A120328.P14634543044669339077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083196 n) (A222465 n)

end

end A120328.P14634543044669339077

/-!
# A120330: Primes not congruent to +- 1, 3, or 4 (mod 13).

The programs for A120330, there is no canonical definition to state claims against.
-/

/-! ## A120330.P7382456119737634178

`∪[A038884(n+1), A087511(n+1)]`
-/

namespace A120330.P7382456119737634178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120330.P7382456119737634178

/-! ## A120330.P7360375645242859496

`∪[A038884(n+1), A106985(n+1)]`
-/

namespace A120330.P7360375645242859496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120330.P7360375645242859496

/-! ## A120330.P3464730060023569113

`∪[A038884(n+1), A106986(n+1)]`
-/

namespace A120330.P3464730060023569113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120330.P3464730060023569113

/-! ## A120330.P17842246928546999975

`∪[A038884(n+1), A107132(n+1)]`
-/

namespace A120330.P17842246928546999975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120330.P17842246928546999975

/-! ## A120330.P5297753515109272526

`∪[A107207(n+1), A038884(n+1)]`
-/

namespace A120330.P5297753515109272526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120330.P5297753515109272526

/-! ## A120330.P10675447507000989756

`p?[n*a(A035195(n))]` with `a(0)=1, a(1)=1`
-/

namespace A120330.P10675447507000989756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * f1 (A035195 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A120330.P10675447507000989756

/-! ## A120330.P7852649446410193475

`p?[A311440(n)-round(8*n/5)]`
-/

namespace A120330.P7852649446410193475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n - SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120330.P7852649446410193475

/-! ## A120330.P9724240850277813374

`p?[A313623(n)-A072154(n)]`
-/

namespace A120330.P9724240850277813374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313623 n - A072154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120330.P9724240850277813374

/-! ## A120330.P11221771902631513487

`p?[A313693(n)-ceil(abs(1-8*n)/3)]`
-/

namespace A120330.P11221771902631513487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n - ⌈(|1 - (8 * n : ℤ)| : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120330.P11221771902631513487

/-! ## A120330.P11561970128763944783

`p?[lcm(n, A070662(2*n))]`
-/

namespace A120330.P11561970128763944783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A070662 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A120330.P11561970128763944783

/-! ## A120330.P11170104260838548499

`p?[A004525(A313284(n))]`
-/

namespace A120330.P11170104260838548499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313284 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120330.P11170104260838548499

/-!
# A120331: Number of polynomials in two noncommuting variables over the field F_2 having complexity or rank n.

The programs for A120331, there is no canonical definition to state claims against.
-/

/-! ## A120331.P9334217182872935697

`A262544(floor(7/n)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A120331.P9334217182872935697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A262544 (⌊7 / (n : ℚ)⌋ * a (n - 1)).toNat

end

end A120331.P9334217182872935697

/-!
# A120333: Number of monocyclic skeletons with n carbon atoms and a ring size of 5.

The programs for A120333, there is no canonical definition to state claims against.
-/

/-! ## A120333.P10921849007110480295

`A305059(A167499(n+1))`
-/

namespace A120333.P10921849007110480295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A167499 (n + 1)).toNat

end

end A120333.P10921849007110480295

/-! ## A120333.P7500056563105276108

`A305059(A167487(n)+n)`
-/

namespace A120333.P7500056563105276108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A167487 n + (n : ℤ)).toNat

end

end A120333.P7500056563105276108

/-! ## A120333.P6068539207368802583

`A305059(A166136(n+1)-1)`
-/

namespace A120333.P6068539207368802583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A166136 (n + 1) - 1).toNat

end

end A120333.P6068539207368802583

/-! ## A120333.P17119577062252877153

`A305059(A167614(n+1)+2)`
-/

namespace A120333.P17119577062252877153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A167614 (n + 1) + 2).toNat

end

end A120333.P17119577062252877153

/-! ## A120333.P14505621747734779321

`A305059(A340266(n+1)+3)`
-/

namespace A120333.P14505621747734779321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A340266 (n + 1) + 3).toNat

end

end A120333.P14505621747734779321

/-!
# A120334: Odd primes of the form p = 2^k +- 1 or p = 4^k +- 3 or such that 2^p - 1 is prime or (2^p + 1)/3 is prime or PRP.

The programs for A120334, there is no canonical definition to state claims against.
-/

/-! ## A120334.P17955887796147143772

`p?[lt[A156144(n+1), val((n+1)², 2)+1]]`
-/

namespace A120334.P17955887796147143772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156144 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A120334.P17955887796147143772

/-! ## A120334.P18016967645442121968

`p?[lt[A319522(n+1), A227158(n)]]`
-/

namespace A120334.P18016967645442121968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319522 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227158 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A120334.P18016967645442121968

/-! ## A120334.P9881646400876875116

`∪[A000978(n+1), A057171(n+1)]%A128335(n+1)`
-/

namespace A120334.P9881646400876875116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057171 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A128335 (n + 1))

end

end A120334.P9881646400876875116

/-! ## A120334.P17666289422279273858

`p?[A196036(record[A029235(n)])]`
-/

namespace A120334.P17666289422279273858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029235 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196036 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120334.P17666289422279273858

/-!
# A120336: Number of solutions (x,y) of Diophantine equation y^2 = x*(a^N - x)*(b^N + x) (Weierstrass elliptic equation) with a and b legs in primitive Pythagorean triangles and N = 2. Sequence ordered in increasing values of leg "a".

The programs for A120336, there is no canonical definition to state claims against.
-/

/-! ## A120336.P1932794451804296329

`∏{e}[A004736(A099400(n+1)), #]`
-/

namespace A120336.P1932794451804296329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A099400 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A120336.P1932794451804296329

/-! ## A120336.P15278506048155901930

`gcd(A000196(A039649(n+1)), A325884(n+1))`
-/

namespace A120336.P15278506048155901930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 (A039649 (n + 1)).toNat) (A325884 (n + 1))

end

end A120336.P15278506048155901930

/-! ## A120336.P14689761678962408211

`gcd(A086971(n+1), A143519(A031593(n+1)))`
-/

namespace A120336.P14689761678962408211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086971 (n + 1)) (A143519 (A031593 (n + 1)).toNat)

end

end A120336.P14689761678962408211

/-! ## A120336.P6412324017709502134

`gcd(A163985(A047140(n)), A217931(n+1))`
-/

namespace A120336.P6412324017709502134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A163985 (A047140 n).toNat) (A217931 (n + 1))

end

end A120336.P6412324017709502134

/-! ## A120336.P13749393404069117953

`A089723(A217581(n+1)+A052331(n+1))`
-/

namespace A120336.P13749393404069117953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A217581 (n + 1) + A052331 (n + 1)).toNat

end

end A120336.P13749393404069117953

/-!
# A120337: Euler-irregular primes p dividing E(2k) for some 2k < p-1.

The programs for A120337, there is no canonical definition to state claims against.
-/

/-! ## A120337.P9612943307311194734

`A250216(∑[A165022(n+1)^A051953(n+1)])`
-/

namespace A120337.P9612943307311194734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165022 (n + 1) : ℚ) ^ (A051953 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250216 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A120337.P9612943307311194734

/-!
# A120338: Number of disconnected antichain covers of a labeled n-set.

The programs for A120338, there is no canonical definition to state claims against.
-/

/-! ## A120338.P10778237763739569006

`A006126(n+1)-A048143(n+1)`
-/

namespace A120338.P10778237763739569006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006126 (n + 1) - A048143 (n + 1)

end

end A120338.P10778237763739569006

/-! ## A120338.P17191810186860445249

`A307249(n+1)-A048143(n+1)`
-/

namespace A120338.P17191810186860445249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307249 (n + 1) - A048143 (n + 1)

end

end A120338.P17191810186860445249

/-!
# A120341: Sequence of pairs numerator(s(n)), denominator(s(n)) where s(n) is the n-th partial sum of 1/A119753(n).

The programs for A120341, there is no canonical definition to state claims against.
-/

/-! ## A120341.P11698647517552606405

`∪[A329031(10^n), A070826(n+1)]`
-/

namespace A120341.P11698647517552606405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329031 (10 ^ n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120341.P11698647517552606405

/-! ## A120341.P3457517054161245146

`∪[A329031(10^n), ∏[A065091(n+1)]]`
-/

namespace A120341.P3457517054161245146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329031 (10 ^ n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120341.P3457517054161245146

/-! ## A120341.P9496572682565719777

`∪[A118750(n+1), A069359(A118750(n+1))]`
-/

namespace A120341.P9496572682565719777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A118750 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120341.P9496572682565719777

/-!
# A120342: Sequence of pairs numerator(s(n)), denominator(s(n)) where s(n) is the n-th partial sum of 1/A119752(n).

The programs for A120342, there is no canonical definition to state claims against.
-/

/-! ## A120342.P10347242016398795150

`A319787(A323093(n))+A000129(n)`
-/

namespace A120342.P10347242016398795150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319787 (A323093 n).toNat + A000129 n

end

end A120342.P10347242016398795150

/-!
# A120343: Sequence of pairs numerator(s(n)), denominator(s(n)) where s(n) is the n-th partial sum of 1/A119754(n).

The programs for A120343, there is no canonical definition to state claims against.
-/

/-! ## A120343.P5915958670836265361

`∪[A057130(n+1), A003415(A057130(n+1))]`
-/

namespace A120343.P5915958670836265361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A057130 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120343.P5915958670836265361

/-!
# A120344: Numbers k such that 23*k + 1 is a prime.

The programs for A120344, the canonical program `A120344.P3389248356274926550` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120344 has offset 1).

The definition of A120344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3577 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120344.P3389248356274926550

`floor(p?[a(n-1)+23]/23)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120344

/-- `floor(p?[a(n-1)+23]/23)` -/
def P3389248356274926550.Spec : Prop :=
  ∀ n, P3389248356274926550.a n = A120344 (n + 1)

theorem P3389248356274926550.correct : P3389248356274926550.Spec := by
  intro n
  simp only [A120344, Nat.add_sub_cancel]

end A120344

/-! ## A120344.P11862693121653010551

`eq[1, A001222(23*n+1)]`
-/

namespace A120344.P11862693121653010551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (23 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120344.P11862693121653010551

namespace A120344

/-- `eq[1, A001222(23*n+1)]` -/
def P11862693121653010551.Spec : Prop :=
  ∀ n, (P11862693121653010551.a n : ℤ) = A120344 (n + 1)

end A120344

/-! ## A120344.P14357910384101530901

`eq[1, A010051(23*n+1)]`
-/

namespace A120344.P14357910384101530901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (23 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120344.P14357910384101530901

namespace A120344

/-- `eq[1, A010051(23*n+1)]` -/
def P14357910384101530901.Spec : Prop :=
  ∀ n, (P14357910384101530901.a n : ℤ) = A120344 (n + 1)

end A120344

/-! ## A120344.P3654962912891539886

`eq[2, A000005(23*n+1)]`
-/

namespace A120344.P3654962912891539886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (23 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120344.P3654962912891539886

namespace A120344

/-- `eq[2, A000005(23*n+1)]` -/
def P3654962912891539886.Spec : Prop :=
  ∀ n, (P3654962912891539886.a n : ℤ) = A120344 (n + 1)

end A120344

/-! ## A120344.P13764327349337950181

`eq[2, A077462(A103214(n)-n)]`
-/

namespace A120344.P13764327349337950181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A103214 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120344.P13764327349337950181

namespace A120344

/-- `eq[2, A077462(A103214(n)-n)]` -/
def P13764327349337950181.Spec : Prop :=
  ∀ n, (P13764327349337950181.a n : ℤ) = A120344 (n + 1)

end A120344

/-! ## A120344.P17716671258609384877

`lt[A001222(11*A004277(n)+n+1), 2]`
-/

namespace A120344.P17716671258609384877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * A004277 n + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A120344.P17716671258609384877

namespace A120344

/-- `lt[A001222(11*A004277(n)+n+1), 2]` -/
def P17716671258609384877.Spec : Prop :=
  ∀ n, (P17716671258609384877.a n : ℤ) = A120344 (n + 1)

end A120344

/-! ## A120344.P3398378636867679188

`eq[A001414(A215148(n)), A215148(n)]`
-/

namespace A120344.P3398378636867679188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A215148 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120344.P3398378636867679188

namespace A120344

/-- `eq[A001414(A215148(n)), A215148(n)]` -/
def P3398378636867679188.Spec : Prop :=
  ∀ n, (P3398378636867679188.a n : ℤ) = A120344 (n + 1)

end A120344

/-! ## A120344.P383070209309885578

`lt[A103208(n+1), A020639(A103214(n)-n)]`
-/

namespace A120344.P383070209309885578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103214 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120344.P383070209309885578

namespace A120344

/-- `lt[A103208(n+1), A020639(A103214(n)-n)]` -/
def P383070209309885578.Spec : Prop :=
  ∀ n, (P383070209309885578.a n : ℤ) = A120344 (n + 1)

end A120344

/-! ## A120344.P4750551156183268689

`lt[A103215(n+1), A020639(A103214(n)-n)]`
-/

namespace A120344.P4750551156183268689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103214 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120344.P4750551156183268689

namespace A120344

/-- `lt[A103215(n+1), A020639(A103214(n)-n)]` -/
def P4750551156183268689.Spec : Prop :=
  ∀ n, (P4750551156183268689.a n : ℤ) = A120344 (n + 1)

end A120344

/-! ## A120344.P16883100668435284067

`lt[A103246(n+1), A020639(A103214(n)-n)]`
-/

namespace A120344.P16883100668435284067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103214 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120344.P16883100668435284067

namespace A120344

/-- `lt[A103246(n+1), A020639(A103214(n)-n)]` -/
def P16883100668435284067.Spec : Prop :=
  ∀ n, (P16883100668435284067.a n : ℤ) = A120344 (n + 1)

end A120344

/-! ## A120344.P4756134818188796211

`eq[1, A054024(Δ[n²]+22*n-n)]`
-/

namespace A120344.P4756134818188796211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) + (22 * n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120344.P4756134818188796211

namespace A120344

/-- `eq[1, A054024(Δ[n²]+22*n-n)]` -/
def P4756134818188796211.Spec : Prop :=
  ∀ n, (P4756134818188796211.a n : ℤ) = A120344 (n + 1)

end A120344

/-!
# A120346: Number of permutations avoiding 3142, 25314, 246135 and 362514.

The programs for A120346, there is no canonical definition to state claims against.
-/

/-! ## A120346.P14804314500331830102

`A376395(n)+A376364(A279310(n))`
-/

namespace A120346.P14804314500331830102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376395 n + A376364 (A279310 n).toNat

end

end A120346.P14804314500331830102

/-! ## A120346.P6193202447244219774

`∏{e}[13^n, A231444(#)]`
-/

namespace A120346.P6193202447244219774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A231444 (Nat.factorization (f1 n) p)

end

end A120346.P6193202447244219774

/-!
# A120347: Numerator of Sum_{k=1..n-1} 1/k^n.

The programs for A120347, there is no canonical definition to state claims against.
-/

/-! ## A120347.P60424683515284902

`A322265(∑[4*(n+1)])`
-/

namespace A120347.P60424683515284902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322265 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120347.P60424683515284902

/-! ## A120347.P17622185492757737259

`A095820(n+2)-A095821(n+2)/A001563(n+1)`
-/

namespace A120347.P17622185492757737259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095820 (n + 2) : ℚ) - (A095821 (n + 2) : ℚ) / (A001563 (n + 1) : ℚ)

end

end A120347.P17622185492757737259

/-!
# A120348: Number of labeled simply-rooted 2-trees with n labeled vertices (i.e., n+2 vertices altogether; a simply-rooted 2-tree is an externally rooted 2-tree whose root edge belongs to exactly one triangle).

The programs for A120348, there is no canonical definition to state claims against.
-/

/-! ## A120348.P11790441107014198840

`(n+1)!*A118971(n)`
-/

namespace A120348.P11790441107014198840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A118971 n

end

end A120348.P11790441107014198840

/-! ## A120348.P6702568875912717489

`n!*C(A016885(n), n)`
-/

namespace A120348.P6702568875912717489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (A016885 n).toNat n

end

end A120348.P6702568875912717489

/-! ## A120348.P6545357997132313791

`(n+1)!*A329060(∑[n])`
-/

namespace A120348.P6545357997132313791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A329060 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120348.P6545357997132313791

/-! ## A120348.P13989961321583366646

`record[A233543(n)]*A118971(n)`
-/

namespace A120348.P13989961321583366646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A118971 n

end

end A120348.P13989961321583366646

/-! ## A120348.P15572600289872962689

`A000142(n+1)*A118971(n)`
-/

namespace A120348.P15572600289872962689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A118971 n

end

end A120348.P15572600289872962689

/-!
# A120349: Refactorable numbers k such that the number of odd divisors r is odd, the number of even divisors s is even and both r and s are divisors of k.

The programs for A120349, there is no canonical definition to state claims against.
-/

/-! ## A120349.P13730122550398630730

`∩[A181795(n+1), A280353(n+1)]`
-/

namespace A120349.P13730122550398630730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120349.P13730122550398630730

/-! ## A120349.P9051354105839704764

`∩[A181795(n+1), A322797(n+1)]`
-/

namespace A120349.P9051354105839704764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120349.P9051354105839704764

/-! ## A120349.P15163211219023072522

`∩[A036907(n+1), A181795(n+1)]`
-/

namespace A120349.P15163211219023072522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120349.P15163211219023072522

/-! ## A120349.P3342675000675827261

`∩[A181795(n+1), A376120(n+1)]`
-/

namespace A120349.P3342675000675827261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120349.P3342675000675827261

/-! ## A120349.P6031787124815478011

`∩[A120350(n+1), n²]`
-/

namespace A120349.P6031787124815478011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120350 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A120349.P6031787124815478011

/-!
# A120350: Refactorable numbers k such that the number of odd divisors and the number of even divisors of k are both divisors of k.

The programs for A120350, the canonical program `A120350.P15236837773027403607` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120350 has offset 1).

The definition of A120350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120350.P15236837773027403607

`∩[A033950(n+1), A120351(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A120350

/-- `∩[A033950(n+1), A120351(n+1)]` -/
def P15236837773027403607.Spec : Prop :=
  ∀ n, (P15236837773027403607.a n : ℤ) = A120350 (n + 1)

theorem P15236837773027403607.correct : P15236837773027403607.Spec := by
  intro n
  simp only [A120350, Nat.add_sub_cancel]

end A120350

/-! ## A120350.P13739871889775156864

`∩[A036762(n+1)*A039819(n+1), A120351(n+1)]`
-/

namespace A120350.P13739871889775156864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036762 (n + 1) * A039819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120350.P13739871889775156864

namespace A120350

/-- `∩[A036762(n+1)*A039819(n+1), A120351(n+1)]` -/
def P13739871889775156864.Spec : Prop :=
  ∀ n, (P13739871889775156864.a n : ℤ) = A120350 (n + 1)

end A120350

/-! ## A120350.P6361327564921482564

`record[A122377(A120351(n+1))]`
-/

namespace A120350.P6361327564921482564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A120351 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120350.P6361327564921482564

namespace A120350

/-- `record[A122377(A120351(n+1))]` -/
def P6361327564921482564.Spec : Prop :=
  ∀ n, P6361327564921482564.a n = A120350 (n + 1)

end A120350

/-!
# A120351: Even numbers k such that the number of odd divisors r and the number of even divisors s are both divisors of k.

The programs for A120351, the canonical program `A120351.P11340224125315453001` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120351 has offset 1).

The definition of A120351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120351.P11340224125315453001

`record[2*(n+1)/A000010(A090387(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A120351

/-- `record[2*(n+1)/A000010(A090387(n+1))]` -/
def P11340224125315453001.Spec : Prop :=
  ∀ n, P11340224125315453001.a n = (A120351 (n + 1) : ℚ)

end A120351

/-! ## A120351.P9864687164248363318

`eq[n+1, lcm(n+1, A183063(n+1))]+1`
-/

namespace A120351.P9864687164248363318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A183063 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120351.P9864687164248363318

namespace A120351

/-- `eq[n+1, lcm(n+1, A183063(n+1))]+1` -/
def P9864687164248363318.Spec : Prop :=
  ∀ n, (P9864687164248363318.a n : ℤ) = A120351 (n + 1)

end A120351

/-! ## A120351.P898325750005149432

`lt[(n+2)%A000005(A080513(n)), 1]+2`
-/

namespace A120351.P898325750005149432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000005 (A080513 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A120351.P898325750005149432

namespace A120351

/-- `lt[(n+2)%A000005(A080513(n)), 1]+2` -/
def P898325750005149432.Spec : Prop :=
  ∀ n, (P898325750005149432.a n : ℤ) = A120351 (n + 1)

end A120351

/-! ## A120351.P10936728346155999902

`lt[(n+1)%A000005(A123108(n)+1), 1]+1`
-/

namespace A120351.P10936728346155999902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000005 (A123108 n + 1).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A120351.P10936728346155999902

namespace A120351

/-- `lt[(n+1)%A000005(A123108(n)+1), 1]+1` -/
def P10936728346155999902.Spec : Prop :=
  ∀ n, (P10936728346155999902.a n : ℤ) = A120351 (n + 1)

end A120351

/-! ## A120351.P16571921885074604495

`lt[A309203(n+1), A029579(3*n+1)+1]`
-/

namespace A120351.P16571921885074604495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (3 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120351.P16571921885074604495

namespace A120351

/-- `lt[A309203(n+1), A029579(3*n+1)+1]` -/
def P16571921885074604495.Spec : Prop :=
  ∀ n, (P16571921885074604495.a n : ℤ) = A120351 (n + 1)

end A120351

/-!
# A120352: 

The programs for A120352, there is no canonical definition to state claims against.
-/

/-! ## A120352.P242325265816583510

`A120347(p?[A120401(n)])`
-/

namespace A120352.P242325265816583510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120347 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120352.P242325265816583510

/-! ## A120352.P12172424838861828344

`A120347(A000040(n+1))`
-/

namespace A120352.P12172424838861828344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120347 (A000040 (n + 1)).toNat

end

end A120352.P12172424838861828344

/-! ## A120352.P14399038381560941735

`A120347(A006093(n+1)+1)`
-/

namespace A120352.P14399038381560941735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120347 (A006093 (n + 1) + 1).toNat

end

end A120352.P14399038381560941735

/-!
# A120353: Sum of 5 consecutive powers of 3, starting with a power of 9.

The programs for A120353, the canonical program `A120353.P14065190886964983014` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120353 has offset 1).

The definition of A120353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120353.P14065190886964983014

`121*9^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120353

/-- `121*9^n` -/
def P14065190886964983014.Spec : Prop :=
  ∀ n, (P14065190886964983014.a n : ℤ) = A120353 (n + 1)

theorem P14065190886964983014.correct : P14065190886964983014.Spec := by
  intro n
  simp only [A120353, Nat.add_sub_cancel]

end A120353

/-!
# A120354: a(n) = 11*3^n.

The programs for A120354, the canonical program `A120354.P15435024084218546282` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120354 has offset 0).

The definition of A120354 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*3^n` (program `A120354.P15435024084218546282`, by `A120354.P15435024084218546282.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120354.P15435024084218546282

`11*3^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120354

/-- `11*3^n` -/
def P15435024084218546282.Spec : Prop :=
  ∀ n, (P15435024084218546282.a n : ℤ) = A120354 n

theorem P15435024084218546282.correct : P15435024084218546282.Spec := by
  intro n
  simp only [A120354]

end A120354

/-!
# A120355: a(n) = min{k>0: the n-th convergent to e equals m/k! for some m}.

The programs for A120355, there is no canonical definition to state claims against.
-/

/-! ## A120355.P1150641459722125327

`A002034(A007677(n))`
-/

namespace A120355.P1150641459722125327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A007677 n).toNat

end

end A120355.P1150641459722125327

/-! ## A120355.P14490943090866457395

`A002034(A113874(n+2))`
-/

namespace A120355.P14490943090866457395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A113874 (n + 2)).toNat

end

end A120355.P14490943090866457395

/-!
# A120356: Even refactorable numbers n such that the number r of odd divisors and the number s of even divisors are both even divisors of n and n is the first number for which the triple (r,s,t) occurs, where t is the number of divisors of n.

The programs for A120356, there is no canonical definition to state claims against.
-/

/-! ## A120356.P15845165533856295798

`record[A120360(n+1)/A255326(A047864(n))]`
-/

namespace A120356.P15845165533856295798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120360 (n + 1) : ℚ) / (A255326 (A047864 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120356.P15845165533856295798

/-!
# A120357: a(n) is the smallest prime p such that 2^p-1 (a Mersenne number) contains 10^n or more decimal digits.

The programs for A120357, there is no canonical definition to state claims against.
-/

/-! ## A120357.P8480032250538571202

`A151800(A227689(n)-1)`
-/

namespace A120357.P8480032250538571202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A227689 n - 1).toNat

end

end A120357.P8480032250538571202

/-!
# A120358: Even refactorable numbers k such that the number r of odd divisors and the number s of even divisors are both odd divisors of k and k is the first number for which the triple (r,s,t) occurs, where t is the number of divisors of k.

The programs for A120358, there is no canonical definition to state claims against.
-/

/-! ## A120358.P5621580374950753815

`A120361(A361396(n+1))`
-/

namespace A120358.P5621580374950753815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120361 (A361396 (n + 1)).toNat

end

end A120358.P5621580374950753815

/-!
# A120359: Even refactorable numbers k such that the number r of odd divisors is odd, the number s of even divisors is even, both r and s are divisors of k and k is the first number for which the triple (r,s,t) occurs, where t is the number of divisors of k.

The programs for A120359, there is no canonical definition to state claims against.
-/

/-! ## A120359.P7490418708673545565

`A120349(eq[A069010(n), A355028(n)])`
-/

namespace A120359.P7490418708673545565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120349 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A120359.P7490418708673545565

/-! ## A120359.P12183830177017550482

`record[A120349(∑{e}[A157486(3*(n+1)), #])]`
-/

namespace A120359.P12183830177017550482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157486 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120349 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120359.P12183830177017550482

/-!
# A120360: Even refactorable numbers k such that the number of odd divisors of k and the number of even divisors of k are both even divisors of k.

The programs for A120360, the canonical program `A120360.P8400398089451663641` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120360 has offset 1).

The definition of A120360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 776 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120360.P8400398089451663641

`∩[A057265(n+1), A181794(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A120360

/-- `∩[A057265(n+1), A181794(n+1)]` -/
def P8400398089451663641.Spec : Prop :=
  ∀ n, (P8400398089451663641.a n : ℤ) = A120360 (n + 1)

theorem P8400398089451663641.correct : P8400398089451663641.Spec := by
  intro n
  simp only [A120360, Nat.add_sub_cancel]

end A120360

/-! ## A120360.P14351063403141987558

`∩[A120350(n+1), A204825(n+1)]`
-/

namespace A120360.P14351063403141987558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120360.P14351063403141987558

namespace A120360

/-- `∩[A120350(n+1), A204825(n+1)]` -/
def P14351063403141987558.Spec : Prop :=
  ∀ n, (P14351063403141987558.a n : ℤ) = A120360 (n + 1)

end A120360

/-! ## A120360.P10384121443429980362

`∩[2*A088829(n+1), A120350(n+1)]`
-/

namespace A120360.P10384121443429980362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120360.P10384121443429980362

namespace A120360

/-- `∩[2*A088829(n+1), A120350(n+1)]` -/
def P10384121443429980362.Spec : Prop :=
  ∀ n, (P10384121443429980362.a n : ℤ) = A120360 (n + 1)

end A120360

/-! ## A120360.P12119082392178093411

`∩[A088829(n+1), A120350(n+1)]`
-/

namespace A120360.P12119082392178093411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120360.P12119082392178093411

namespace A120360

/-- `∩[A088829(n+1), A120350(n+1)]` -/
def P12119082392178093411.Spec : Prop :=
  ∀ n, (P12119082392178093411.a n : ℤ) = A120360 (n + 1)

end A120360

/-! ## A120360.P14847326146764210756

`∩[2*A028983(n+1), A120350(n+1)]`
-/

namespace A120360.P14847326146764210756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120360.P14847326146764210756

namespace A120360

/-- `∩[2*A028983(n+1), A120350(n+1)]` -/
def P14847326146764210756.Spec : Prop :=
  ∀ n, (P14847326146764210756.a n : ℤ) = A120360 (n + 1)

end A120360

/-! ## A120360.P12260088488077468373

`∩[A053869(n+1), A120350(n+1)]`
-/

namespace A120360.P12260088488077468373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120360.P12260088488077468373

namespace A120360

/-- `∩[A053869(n+1), A120350(n+1)]` -/
def P12260088488077468373.Spec : Prop :=
  ∀ n, (P12260088488077468373.a n : ℤ) = A120360 (n + 1)

end A120360

/-! ## A120360.P461724384221652817

`∩[A028983(n+1), A120350(n+1)]`
-/

namespace A120360.P461724384221652817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120360.P461724384221652817

namespace A120360

/-- `∩[A028983(n+1), A120350(n+1)]` -/
def P461724384221652817.Spec : Prop :=
  ∀ n, (P461724384221652817.a n : ℤ) = A120360 (n + 1)

end A120360

/-!
# A120361: Even refactorable numbers k such that the number r of odd divisors of k and the number s of even divisors of k are both odd divisors of k.

The programs for A120361, there is no canonical definition to state claims against.
-/

/-! ## A120361.P8439800990452123215

`∩[2*n², A120350(n+1)]`
-/

namespace A120361.P8439800990452123215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120361.P8439800990452123215

/-! ## A120361.P18441352352162205126

`∩[A120350(n+1), A000982(n)]`
-/

namespace A120361.P18441352352162205126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120361.P18441352352162205126

/-! ## A120361.P6015661244137311307

`∩[A120350(n+1), A001105(n)]`
-/

namespace A120361.P6015661244137311307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120361.P6015661244137311307

/-! ## A120361.P15428064087232462200

`∩[A120350(n+1), A213037(n)]`
-/

namespace A120361.P15428064087232462200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120361.P15428064087232462200

/-! ## A120361.P3062333201205304044

`∩[A120350(n+1), A247375(n)]`
-/

namespace A120361.P3062333201205304044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247375 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120361.P3062333201205304044

/-! ## A120361.P10409831743788975345

`∩[A120350(n+1), A251599(n+1)]`
-/

namespace A120361.P10409831743788975345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120361.P10409831743788975345

/-! ## A120361.P6875108293324761064

`∩[A120350(n+1), A376114(n+1)]`
-/

namespace A120361.P6875108293324761064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120361.P6875108293324761064

/-!
# A120363: Row 5 of array in A105272.

The programs for A120363, there is no canonical definition to state claims against.
-/

/-! ## A120363.P16947493152952143632

`A105272(∑[n+4]+11)`
-/

namespace A120363.P16947493152952143632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A120363.P16947493152952143632

/-! ## A120363.P16740251012951394003

`or(char[3], A105272(A000217(n+4)+5))`
-/

namespace A120363.P16740251012951394003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A105272 (A000217 (n + 4) + 5).toNat)

end

end A120363.P16740251012951394003

/-! ## A120363.P17458155985905040711

`∑{d}[A105272(A000217(n+4)+5), A000010(#)]`
-/

namespace A120363.P17458155985905040711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A000217 (n + 4) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A120363.P17458155985905040711

/-! ## A120363.P7552110019664165583

`A105272(A000217(n+4)+5)%A000041(n+5)`
-/

namespace A120363.P7552110019664165583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105272 (A000217 (n + 4) + 5).toNat) (A000041 (n + 5))

end

end A120363.P7552110019664165583

/-! ## A120363.P3564718921778379351

`A000108(C(2, n+2))*A105272(A000217(n+4)+5)`
-/

namespace A120363.P3564718921778379351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A105272 (A000217 (n + 4) + 5).toNat

end

end A120363.P3564718921778379351

/-!
# A120364: Primes p such that p^2-p-1 and p^2-p+1 are twin primes.

The programs for A120364, there is no canonical definition to state claims against.
-/

/-! ## A120364.P4945071248719848797

`p?[A131530(n+1)]`
-/

namespace A120364.P4945071248719848797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120364.P4945071248719848797

/-! ## A120364.P770972107378757297

`p?[A088485(n+1)+1]`
-/

namespace A120364.P770972107378757297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120364.P770972107378757297

/-! ## A120364.P16200576514228653538

`p?[ceil(sqrt(A088486(n+1)))]`
-/

namespace A120364.P16200576514228653538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A088486 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120364.P16200576514228653538

/-! ## A120364.P1175910977148557236

`∩[A065508(n+1), A131530(n+1)]`
-/

namespace A120364.P1175910977148557236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P1175910977148557236

/-! ## A120364.P7118183680191292666

`∩[A131530(n+1), A286319(n+1)]`
-/

namespace A120364.P7118183680191292666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P7118183680191292666

/-! ## A120364.P13619004913563274619

`∩[A088485(n+1)+1, A286319(n+1)]`
-/

namespace A120364.P13619004913563274619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P13619004913563274619

/-! ## A120364.P11893325501962591758

`∩[A034913(n+1), A131530(n+1)]`
-/

namespace A120364.P11893325501962591758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P11893325501962591758

/-! ## A120364.P15698406467775858899

`∩[A034914(n+1), A131530(n+1)]`
-/

namespace A120364.P15698406467775858899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P15698406467775858899

/-! ## A120364.P11752226397257169297

`∩[A007645(n+1), A131530(n+1)]`
-/

namespace A120364.P11752226397257169297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P11752226397257169297

/-! ## A120364.P6076745646641256026

`∩[A045331(n+1), A131530(n+1)]`
-/

namespace A120364.P6076745646641256026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P6076745646641256026

/-! ## A120364.P8334221519102573305

`∩[A007645(n+1), A286319(n+1)]`
-/

namespace A120364.P8334221519102573305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P8334221519102573305

/-! ## A120364.P1694217397985183029

`∩[A279815(n+1), A286319(n+1)]`
-/

namespace A120364.P1694217397985183029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P1694217397985183029

/-! ## A120364.P4759430897453538800

`∩[A055664(n+1), A286319(n+1)]`
-/

namespace A120364.P4759430897453538800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P4759430897453538800

/-! ## A120364.P6108908021885290080

`∩[A040116(n+1), A131530(n+1)]`
-/

namespace A120364.P6108908021885290080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P6108908021885290080

/-! ## A120364.P5108774133240658421

`∩[A131530(n+1), A325143(n+1)]`
-/

namespace A120364.P5108774133240658421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P5108774133240658421

/-! ## A120364.P3849297688938257579

`∩[A045320(n+1), A131530(n+1)]`
-/

namespace A120364.P3849297688938257579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P3849297688938257579

/-! ## A120364.P15073040111522679001

`∩[A049585(n+1), A131530(n+1)]`
-/

namespace A120364.P15073040111522679001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P15073040111522679001

/-! ## A120364.P2888223117889522594

`A000040(A131578(n+1))`
-/

namespace A120364.P2888223117889522594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A131578 (n + 1)).toNat

end

end A120364.P2888223117889522594

/-! ## A120364.P16276930786845678910

`∩[A000040(n+1), A131530(n+1)]`
-/

namespace A120364.P16276930786845678910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P16276930786845678910

/-! ## A120364.P9562619420194415530

`∩[A004139(n+1), A131530(n+1)]`
-/

namespace A120364.P9562619420194415530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120364.P9562619420194415530

/-!
# A120365: a(1) = 3, a(2) = 4. a(n) = (largest composite which occurs earlier in sequence) + (largest prime which occurs earlier in sequence).

The programs for A120365, there is no canonical definition to state claims against.
-/

/-! ## A120365.P8975620357572574137

`A086593(A044432(n)+1)`
-/

namespace A120365.P8975620357572574137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086593 (A044432 n + 1).toNat

end

end A120365.P8975620357572574137

/-! ## A120365.P3823482812626017125

`A086592(A044432(n+1))`
-/

namespace A120365.P3823482812626017125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (A044432 (n + 1)).toNat

end

end A120365.P3823482812626017125

/-! ## A120365.P8863401849541386650

`A086592(2*A044432(n))`
-/

namespace A120365.P8863401849541386650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (2 * A044432 n).toNat

end

end A120365.P8863401849541386650

/-! ## A120365.P8009694059791292633

`eq[2, A143182(A286283(n))]`
-/

namespace A120365.P8009694059791292633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 (A286283 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120365.P8009694059791292633

/-!
# A120366: Primes p such that p-1 is not a multiple of 3, 4 or 5.

The programs for A120366, the canonical program `A120366.P6356666893774340032` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120366 has offset 1).

The definition of A120366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120366.P6356666893774340032

`p?[(n+1)%gcd(90, n)+2*n+1]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120366

/-- `p?[(n+1)%gcd(90, n)+2*n+1]` -/
def P6356666893774340032.Spec : Prop :=
  ∀ n, (P6356666893774340032.a n : ℤ) = A120366 (n + 1)

theorem P6356666893774340032.correct : P6356666893774340032.Spec := by
  intro n
  simp only [A120366, Nat.add_sub_cancel]

end A120366

/-! ## A120366.P542105286089480468

`record[A020639(or(2, n%3+5*n))]`
-/

namespace A120366.P542105286089480468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 2 (n % 3 + 5 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120366.P542105286089480468

namespace A120366

/-- `record[A020639(or(2, n%3+5*n))]` -/
def P542105286089480468.Spec : Prop :=
  ∀ n, P542105286089480468.a n = A120366 (n + 1)

end A120366

/-! ## A120366.P4720180223462867036

`∩[A042991(n+1), A084917(n+1)]`
-/

namespace A120366.P4720180223462867036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120366.P4720180223462867036

namespace A120366

/-- `∩[A042991(n+1), A084917(n+1)]` -/
def P4720180223462867036.Spec : Prop :=
  ∀ n, (P4720180223462867036.a n : ℤ) = A120366 (n + 1)

end A120366

/-! ## A120366.P8441039488917222125

`∩[A045327(n+1), A084917(n+1)]`
-/

namespace A120366.P8441039488917222125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120366.P8441039488917222125

namespace A120366

/-- `∩[A045327(n+1), A084917(n+1)]` -/
def P8441039488917222125.Spec : Prop :=
  ∀ n, (P8441039488917222125.a n : ℤ) = A120366 (n + 1)

end A120366

/-! ## A120366.P667222572869271897

`∩[A042991(n+1), A141123(n+1)]`
-/

namespace A120366.P667222572869271897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120366.P667222572869271897

namespace A120366

/-- `∩[A042991(n+1), A141123(n+1)]` -/
def P667222572869271897.Spec : Prop :=
  ∀ n, (P667222572869271897.a n : ℤ) = A120366 (n + 1)

end A120366

/-! ## A120366.P400646583104351742

`∩[A045327(n+1), A141123(n+1)]`
-/

namespace A120366.P400646583104351742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120366.P400646583104351742

namespace A120366

/-- `∩[A045327(n+1), A141123(n+1)]` -/
def P400646583104351742.Spec : Prop :=
  ∀ n, (P400646583104351742.a n : ℤ) = A120366 (n + 1)

end A120366

/-! ## A120366.P6599356509234908838

`∩[A042944(n+1), A042991(n+1)]`
-/

namespace A120366.P6599356509234908838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120366.P6599356509234908838

namespace A120366

/-- `∩[A042944(n+1), A042991(n+1)]` -/
def P6599356509234908838.Spec : Prop :=
  ∀ n, (P6599356509234908838.a n : ℤ) = A120366 (n + 1)

end A120366

/-! ## A120366.P11600237462552041400

`∩[A042944(n+1), A045327(n+1)]`
-/

namespace A120366.P11600237462552041400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120366.P11600237462552041400

namespace A120366

/-- `∩[A042944(n+1), A045327(n+1)]` -/
def P11600237462552041400.Spec : Prop :=
  ∀ n, (P11600237462552041400.a n : ℤ) = A120366 (n + 1)

end A120366

/-! ## A120366.P9821837851862945993

`p?[A112652(A047207(n+1))-10]`
-/

namespace A120366.P9821837851862945993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (A047207 (n + 1)).toNat - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120366.P9821837851862945993

namespace A120366

/-- `p?[A112652(A047207(n+1))-10]` -/
def P9821837851862945993.Spec : Prop :=
  ∀ n, P9821837851862945993.a n = A120366 (n + 1)

end A120366

/-! ## A120366.P4359963018242510849

`∩[A042991(n+1), A218155(n+1)]`
-/

namespace A120366.P4359963018242510849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120366.P4359963018242510849

namespace A120366

/-- `∩[A042991(n+1), A218155(n+1)]` -/
def P4359963018242510849.Spec : Prop :=
  ∀ n, (P4359963018242510849.a n : ℤ) = A120366 (n + 1)

end A120366

/-! ## A120366.P1973501741265374056

`∩[A045327(n+1), A218155(n+1)]`
-/

namespace A120366.P1973501741265374056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120366.P1973501741265374056

namespace A120366

/-- `∩[A045327(n+1), A218155(n+1)]` -/
def P1973501741265374056.Spec : Prop :=
  ∀ n, (P1973501741265374056.a n : ℤ) = A120366 (n + 1)

end A120366

/-! ## A120366.P13344141065638739477

`p?[A059029(A060791(A016789(n)))]`
-/

namespace A120366.P13344141065638739477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (A060791 (A016789 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120366.P13344141065638739477

namespace A120366

/-- `p?[A059029(A060791(A016789(n)))]` -/
def P13344141065638739477.Spec : Prop :=
  ∀ n, P13344141065638739477.a n = A120366 (n + 1)

end A120366

/-! ## A120366.P8387687981405102703

`p?[A053438(A047246(A047201(n+1)))]`
-/

namespace A120366.P8387687981405102703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (A047246 (A047201 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120366.P8387687981405102703

namespace A120366

/-- `p?[A053438(A047246(A047201(n+1)))]` -/
def P8387687981405102703.Spec : Prop :=
  ∀ n, P8387687981405102703.a n = A120366 (n + 1)

end A120366

/-! ## A120366.P6965502539571034356

`∩[A047202(n+1), A141123(n+1)]`
-/

namespace A120366.P6965502539571034356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120366.P6965502539571034356

namespace A120366

/-- `∩[A047202(n+1), A141123(n+1)]` -/
def P6965502539571034356.Spec : Prop :=
  ∀ n, (P6965502539571034356.a n : ℤ) = A120366 (n + 1)

end A120366

/-! ## A120366.P18116530617606553713

`∩[A141123(n+1), A187332(n+1)]`
-/

namespace A120366.P18116530617606553713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120366.P18116530617606553713

namespace A120366

/-- `∩[A141123(n+1), A187332(n+1)]` -/
def P18116530617606553713.Spec : Prop :=
  ∀ n, (P18116530617606553713.a n : ℤ) = A120366 (n + 1)

end A120366

/-! ## A120366.P6673732013426407314

`∩[A047203(n+1), A141123(n+1)]`
-/

namespace A120366.P6673732013426407314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120366.P6673732013426407314

namespace A120366

/-- `∩[A047203(n+1), A141123(n+1)]` -/
def P6673732013426407314.Spec : Prop :=
  ∀ n, (P6673732013426407314.a n : ℤ) = A120366 (n + 1)

end A120366

/-! ## A120366.P18014790655245716080

`p?[A084385(2*A229829(n+1))]`
-/

namespace A120366.P18014790655245716080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084385 (2 * A229829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120366.P18014790655245716080

namespace A120366

/-- `p?[A084385(2*A229829(n+1))]` -/
def P18014790655245716080.Spec : Prop :=
  ∀ n, P18014790655245716080.a n = A120366 (n + 1)

end A120366

/-! ## A120366.P4339239292638150393

`p?[A084385(A005843(A229829(n+1)))]`
-/

namespace A120366.P4339239292638150393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084385 (A005843 (A229829 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120366.P4339239292638150393

namespace A120366

/-- `p?[A084385(A005843(A229829(n+1)))]` -/
def P4339239292638150393.Spec : Prop :=
  ∀ n, P4339239292638150393.a n = A120366 (n + 1)

end A120366

/-! ## A120366.P5725125559780165276

`record[A020639(A286472(6*n+3))]`
-/

namespace A120366.P5725125559780165276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A286472 (6 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120366.P5725125559780165276

namespace A120366

/-- `record[A020639(A286472(6*n+3))]` -/
def P5725125559780165276.Spec : Prop :=
  ∀ n, P5725125559780165276.a n = A120366 (n + 1)

end A120366

/-! ## A120366.P8916421262828011755

`p?[A080029(A004396(A045572(n+1)))]`
-/

namespace A120366.P8916421262828011755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080029 (A004396 (A045572 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120366.P8916421262828011755

namespace A120366

/-- `p?[A080029(A004396(A045572(n+1)))]` -/
def P8916421262828011755.Spec : Prop :=
  ∀ n, P8916421262828011755.a n = A120366 (n + 1)

end A120366

/-!
# A120367: a(1) = 1. a(n) = a(n-1) + (maximum number of 1's occurring in the binary representation of any of the sequence's earlier terms).

The programs for A120367, there is no canonical definition to state claims against.
-/

/-! ## A120367.P6116908046317292768

`∑[A176835(∑[A387381(3*n+1)])]`
-/

namespace A120367.P6116908046317292768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387381 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176835 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120367.P6116908046317292768

/-! ## A120367.P8911146366218154042

`∑[A000045(A335037(2^ceil(n/2)))]`
-/

namespace A120367.P8911146366218154042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A335037 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120367.P8911146366218154042

/-! ## A120367.P3799353433004676653

`∑[A167439(A008778(A056172(n+1)))]`
-/

namespace A120367.P3799353433004676653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A008778 (A056172 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120367.P3799353433004676653

/-! ## A120367.P15598349961427215485

`∑[∑[A000161(A299278(n))]]`
-/

namespace A120367.P15598349961427215485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A299278 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120367.P15598349961427215485

/-!
# A120368: a(n) = number of sequences (a_1, a_2, ..., a_n) in {1,2,...,n} such that the range {a_1, a_2, ..., a_n} is an interval.

The programs for A120368, there is no canonical definition to state claims against.
-/

/-! ## A120368.P10794661886456926843

`A005649(n)-A053525(n+1)`
-/

namespace A120368.P10794661886456926843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005649 n - A053525 (n + 1)

end

end A120368.P10794661886456926843

/-! ## A120368.P7945952162346596489

`Δ[∑[A052882(n)]-A032109(n)]`
-/

namespace A120368.P7945952162346596489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052882 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A032109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120368.P7945952162346596489

/-! ## A120368.P7822707380149238972

`A052882(n+1)-Δ[A032109(n)]`
-/

namespace A120368.P7822707380149238972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052882 (n + 1) - (f1 (n + 1) - f1 n)

end

end A120368.P7822707380149238972

/-! ## A120368.P4781466189619576316

`A327868(2*n)-A053525(n+1)`
-/

namespace A120368.P4781466189619576316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327868 (2 * n) - A053525 (n + 1)

end

end A120368.P4781466189619576316

/-! ## A120368.P5138504635094286263

`A226513(A034856(n+1))-A053525(n+1)`
-/

namespace A120368.P5138504635094286263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A034856 (n + 1)).toNat - A053525 (n + 1)

end

end A120368.P5138504635094286263

/-! ## A120368.P7299369590269626747

`A327868(2*n)+A052882(n+1)-A327868(2*n+1)`
-/

namespace A120368.P7299369590269626747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327868 (2 * n) + (A052882 (n + 1) - A327868 (2 * n + 1))

end

end A120368.P7299369590269626747

/-!
# A120369: a(n) = smallest value of k such that n*k^(1/n) >= (n+1)*k^(1/(n+1)).

The programs for A120369, the canonical program `A120369.P8534789772660698127` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120369 has offset 1).

The definition of A120369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120369.P8534789772660698127

`ceil(((n+2)/(n+1))^((n+2)*(n+1)))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120369

/-- `ceil(((n+2)/(n+1))^((n+2)*(n+1)))` -/
def P8534789772660698127.Spec : Prop :=
  ∀ n, P8534789772660698127.a n = A120369 (n + 1)

theorem P8534789772660698127.correct : P8534789772660698127.Spec := by
  intro n
  simp only [A120369, Nat.add_sub_cancel]

end A120369

/-! ## A120369.P14711023506974956820

`A229790(A290924(n+1))`
-/

namespace A120369.P14711023506974956820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229790 (A290924 (n + 1)).toNat

end

end A120369.P14711023506974956820

namespace A120369

/-- `A229790(A290924(n+1))` -/
def P14711023506974956820.Spec : Prop :=
  ∀ n, P14711023506974956820.a n = A120369 (n + 1)

end A120369

/-!
# A120370: a(1) = 2. a(n) = a(n-1) + (maximum number of distinct primes dividing any earlier terms).

The programs for A120370, there is no canonical definition to state claims against.
-/

/-! ## A120370.P15314535228087124411

`∑[∑[char[or(1, 4^n)]]]+2`
-/

namespace A120370.P15314535228087124411
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 ^ n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A120370.P15314535228087124411

/-! ## A120370.P3461635859272872395

`∑[∑[char[xor(n, -n)²+1]]]+2`
-/

namespace A120370.P3461635859272872395
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A120370.P3461635859272872395

/-! ## A120370.P4037276791444513155

`∑[floor(log2(sqrt(61*n+8)))-2]+3`
-/

namespace A120370.P4037276791444513155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.sqrt (61 * n + 8 : ℝ))⌋ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A120370.P4037276791444513155

/-! ## A120370.P8606426006450019280

`floor((A088382(3*n+4)+3)/3)`
-/

namespace A120370.P8606426006450019280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088382 (3 * n + 4) + 3 : ℚ) / 3⌋

end

end A120370.P8606426006450019280

/-! ## A120370.P14028184338730763150

`∑[A262438(n²-a(n-1))]` with `a(0)=2, a(1)=1`
-/

namespace A120370.P14028184338730763150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  A262438 ((n ^ 2 : ℤ) - f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120370.P14028184338730763150

/-! ## A120370.P14127527525590570973

`∑[A055642(n*(and(2, a(n-1))²+2))]` with `a(0)=2`
-/

namespace A120370.P14127527525590570973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A055642 ((n : ℤ) * (Int.land 2 (f1 (n - 1)) ^ 2 + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120370.P14127527525590570973

/-! ## A120370.P9433109843525556859

`abs(∑[A084558(A244800(n+2))]-n)`
-/

namespace A120370.P9433109843525556859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A244800 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A120370.P9433109843525556859

/-! ## A120370.P2132018837881434166

`∑[ceil(A084865(n+1)/A107925(n+1))]`
-/

namespace A120370.P2132018837881434166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084865 (n + 1) : ℚ) / (A107925 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120370.P2132018837881434166

/-!
# A120371: Number of isomers of polyhex hydrocarbons with C_(2h) symmetry with eighteen hexagons.

The programs for A120371, there is no canonical definition to state claims against.
-/

/-! ## A120371.P562055548219521953

`A286183(n+1)-A113108(A020047(n))`
-/

namespace A120371.P562055548219521953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286183 (n + 1) - A113108 (A020047 n).toNat

end

end A120371.P562055548219521953

/-!
# A120372: a(n) = ((2n)!+1)*((2n+2)!+1) mod (2n+1)*(2n+3).

The programs for A120372, there is no canonical definition to state claims against.
-/

/-! ## A120372.P16642997500509906734

`C(A104275(n+1), A080839(A205373(2*n+1)))`
-/

namespace A120372.P16642997500509906734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A104275 (n + 1)).toNat (A080839 (A205373 (2 * n + 1)).toNat).toNat

end

end A120372.P16642997500509906734

/-! ## A120372.P14437650311072228472

`C(A104275(n+1), A088310(A104146(n+1)))`
-/

namespace A120372.P14437650311072228472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A104275 (n + 1)).toNat (A088310 (A104146 (n + 1)).toNat).toNat

end

end A120372.P14437650311072228472

/-!
# A120374: Median of prime divisors of 2n+1 (with multiplicity).

The programs for A120374, there is no canonical definition to state claims against.
-/

/-! ## A120374.P5823782197336390594

`A361632(2*n+3)`
-/

namespace A120374.P5823782197336390594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361632 (2 * n + 3)

end

end A120374.P5823782197336390594

/-! ## A120374.P6667488140123314251

`or(A000038(n), A361632(Δ[(n+1)²]))`
-/

namespace A120374.P6667488140123314251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A361632 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A120374.P6667488140123314251

/-! ## A120374.P8789957629592265055

`A360459(2*n+3)/2`
-/

namespace A120374.P8789957629592265055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360459 (2 * n + 3) : ℚ) / 2

end

end A120374.P8789957629592265055

/-! ## A120374.P5559984973984731112

`ceil(A360459(Δ[n²]+2)/2)`
-/

namespace A120374.P5559984973984731112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A360459 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat : ℚ) / 2⌉

end

end A120374.P5559984973984731112

/-! ## A120374.P7693009975071348389

`A004526(A360459(2*n+3))`
-/

namespace A120374.P7693009975071348389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A360459 (2 * n + 3)).toNat

end

end A120374.P7693009975071348389

/-!
# A120375: Integers k such that 2*5^k - 1 is prime.

The programs for A120375, there is no canonical definition to state claims against.
-/

/-! ## A120375.P8984055669303606337

`2*A002958(n+1)`
-/

namespace A120375.P8984055669303606337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002958 (n + 1)

end

end A120375.P8984055669303606337

/-! ## A120375.P6494227465459433034

`A002958(A000027(n+1))+A002958(n+1)`
-/

namespace A120375.P6494227465459433034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002958 (A000027 (n + 1)).toNat + A002958 (n + 1)

end

end A120375.P6494227465459433034

/-! ## A120375.P4834225223474456237

`A002958(n+1)+A002958(A038770(n+1))`
-/

namespace A120375.P4834225223474456237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002958 (n + 1) + A002958 (A038770 (n + 1)).toNat

end

end A120375.P4834225223474456237

/-! ## A120375.P14037478309097290413

`A002958(n+1)+A002958(A064598(n+1))`
-/

namespace A120375.P14037478309097290413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002958 (n + 1) + A002958 (A064598 (n + 1)).toNat

end

end A120375.P14037478309097290413

/-!
# A120379: Number of partitions of the Catalan number binomial(2n,n)/(n+1).

The programs for A120379, there is no canonical definition to state claims against.
-/

/-! ## A120379.P4415783849757786435

`A000041(C(2*n, n)/(n+1))`
-/

namespace A120379.P4415783849757786435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ))).toNat

end

end A120379.P4415783849757786435

/-! ## A120379.P11118321124082024524

`A000041(C(2*n, n)-C(2*n, n+1))`
-/

namespace A120379.P11118321124082024524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose (2 * n) n - Nat.choose (2 * n) (n + 1))

end

end A120379.P11118321124082024524

/-! ## A120379.P10968862368693353215

`A000041(A000108(n))`
-/

namespace A120379.P10968862368693353215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000108 n).toNat

end

end A120379.P10968862368693353215

/-! ## A120379.P10154379155950221398

`A000041(A211216(n))`
-/

namespace A120379.P10154379155950221398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A211216 n).toNat

end

end A120379.P10154379155950221398

/-! ## A120379.P14619658620531075566

`A000041(A242450(n))`
-/

namespace A120379.P14619658620531075566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A242450 n).toNat

end

end A120379.P14619658620531075566

/-!
# A120380: Number of partitions of n*(n+1).

The programs for A120380, there is no canonical definition to state claims against.
-/

/-! ## A120380.P8968482934405382889

`A000041(A002378(n))`
-/

namespace A120380.P8968482934405382889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002378 n).toNat

end

end A120380.P8968482934405382889

/-! ## A120380.P10263987699109544681

`A058696(∑[n])`
-/

namespace A120380.P10263987699109544681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120380.P10263987699109544681

/-! ## A120380.P8555642248539417939

`A000041(∑[2*n])`
-/

namespace A120380.P8555642248539417939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120380.P8555642248539417939

/-! ## A120380.P15816593296562950354

`A000065(n²+n)+1`
-/

namespace A120380.P15816593296562950354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n ^ 2 + n) + 1

end

end A120380.P15816593296562950354

/-! ## A120380.P12282490466706922185

`A139582(n²+n)/2`
-/

namespace A120380.P12282490466706922185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 (n ^ 2 + n) : ℚ) / 2

end

end A120380.P12282490466706922185

/-! ## A120380.P792210597378136584

`A299473(n²+n)/3`
-/

namespace A120380.P792210597378136584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299473 (n ^ 2 + n) : ℚ) / 3

end

end A120380.P792210597378136584

/-! ## A120380.P5856570122218930726

`A035363(∑[4*n])`
-/

namespace A120380.P5856570122218930726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120380.P5856570122218930726

/-! ## A120380.P113654872381260854

`A119620(∑[4*n])`
-/

namespace A120380.P113654872381260854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120380.P113654872381260854

/-! ## A120380.P7981046712026314291

`A035444(A033996(n))`
-/

namespace A120380.P7981046712026314291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A033996 n).toNat

end

end A120380.P7981046712026314291

/-! ## A120380.P18183977310994844469

`A035444(n*A008574(n+1))`
-/

namespace A120380.P18183977310994844469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 ((n : ℤ) * A008574 (n + 1)).toNat

end

end A120380.P18183977310994844469

/-!
# A120381: Number of partitions of Bell(n).

The programs for A120381, there is no canonical definition to state claims against.
-/

/-! ## A120381.P11489117077718668426

`A000041(A000110(n))`
-/

namespace A120381.P11489117077718668426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000110 n).toNat

end

end A120381.P11489117077718668426

/-! ## A120381.P6138687437896351055

`A000041(A164863(n))`
-/

namespace A120381.P6138687437896351055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A164863 n).toNat

end

end A120381.P6138687437896351055

/-! ## A120381.P3278891088814223200

`A000041(A164864(n))`
-/

namespace A120381.P3278891088814223200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A164864 n).toNat

end

end A120381.P3278891088814223200

/-! ## A120381.P6716563557558222907

`A000041(A192126(n))`
-/

namespace A120381.P6716563557558222907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A192126 n).toNat

end

end A120381.P6716563557558222907

/-! ## A120381.P3572497701299107242

`A000041(A192127(n))`
-/

namespace A120381.P3572497701299107242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A192127 n).toNat

end

end A120381.P3572497701299107242

/-!
# A120382: Even numbers k such that 3*k-1 and 3*k+1 are not prime.

The programs for A120382, the canonical program `A120382.P11282506073447857493` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120382 has offset 1).

The definition of A120382 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060461, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120382.P11282506073447857493

`2*A060461(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A120382

/-- `2*A060461(n+1)` -/
def P11282506073447857493.Spec : Prop :=
  ∀ n, P11282506073447857493.a n = A120382 (n + 1)

theorem P11282506073447857493.correct : P11282506073447857493.Spec := by
  intro n
  simp only [A120382, Nat.add_sub_cancel]

end A120382

/-! ## A120382.P291221441502921935

`A259826(n+1)/3`
-/

namespace A120382.P291221441502921935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259826 (n + 1) : ℚ) / 3

end

end A120382.P291221441502921935

namespace A120382

/-- `A259826(n+1)/3` -/
def P291221441502921935.Spec : Prop :=
  ∀ n, P291221441502921935.a n = (A120382 (n + 1) : ℚ)

theorem P291221441502921935.correct : P291221441502921935.Spec := by
  intro n
  simp only [A120382, Nat.add_sub_cancel, A120382.P291221441502921935.a, A120382.P11282506073447857493.a, A060461, A060461.P10262298228971221195.a, A259826, A259826.P6433926168437489858.a, A171696, A171696.P13576368370877495331.f1, A171696.P13576368370877495331.a, A377540, A377540.P8485193340030685808.f1, A377540.P8485193340030685808.f2, A377540.P8485193340030685808.a, A161996, A161996.P3418427153135750794.f1, A161996.P3418427153135750794.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120382

/-! ## A120382.P1250285265989593648

`A060461(A000027(n+1))+A060461(n+1)`
-/

namespace A120382.P1250285265989593648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (A000027 (n + 1)).toNat + A060461 (n + 1)

end

end A120382.P1250285265989593648

namespace A120382

/-- `A060461(A000027(n+1))+A060461(n+1)` -/
def P1250285265989593648.Spec : Prop :=
  ∀ n, P1250285265989593648.a n = A120382 (n + 1)

end A120382

/-! ## A120382.P3110784795502392053

`2*A171696(n+2)`
-/

namespace A120382.P3110784795502392053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171696 (n + 2)

end

end A120382.P3110784795502392053

namespace A120382

/-- `2*A171696(n+2)` -/
def P3110784795502392053.Spec : Prop :=
  ∀ n, P3110784795502392053.a n = A120382 (n + 1)

end A120382

/-! ## A120382.P7178686742102191081

`A171696(n+2)+A060461(n+1)`
-/

namespace A120382.P7178686742102191081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171696 (n + 2) + A060461 (n + 1)

end

end A120382.P7178686742102191081

namespace A120382

/-- `A171696(n+2)+A060461(n+1)` -/
def P7178686742102191081.Spec : Prop :=
  ∀ n, P7178686742102191081.a n = A120382 (n + 1)

theorem P7178686742102191081.correct : P7178686742102191081.Spec := by
  intro n
  simp only [A120382, Nat.add_sub_cancel, A120382.P7178686742102191081.a, A120382.P11282506073447857493.a, A060461, A060461.P10262298228971221195.a, A171696, A171696.P13576368370877495331.f1, A171696.P13576368370877495331.a, A377540, A377540.P8485193340030685808.f1, A377540.P8485193340030685808.f2, A377540.P8485193340030685808.a, A161996, A161996.P3418427153135750794.f1, A161996.P3418427153135750794.a, A000045, A000045.P11838749114346432762.a, A100637, A100637.P13819822131188342482.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120382

/-! ## A120382.P15173457476232754661

`2*∩[A046953(n+1), A046954(n+1)]`
-/

namespace A120382.P15173457476232754661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120382.P15173457476232754661

namespace A120382

/-- `2*∩[A046953(n+1), A046954(n+1)]` -/
def P15173457476232754661.Spec : Prop :=
  ∀ n, (P15173457476232754661.a n : ℤ) = A120382 (n + 1)

end A120382

/-! ## A120382.P15921097623704368135

`A004277(A060461(n+1))`
-/

namespace A120382.P15921097623704368135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A060461 (n + 1)).toNat

end

end A120382.P15921097623704368135

namespace A120382

/-- `A004277(A060461(n+1))` -/
def P15921097623704368135.Spec : Prop :=
  ∀ n, P15921097623704368135.a n = A120382 (n + 1)

end A120382

/-! ## A120382.P17067886318415027328

`A004277(A171696(n+2))`
-/

namespace A120382.P17067886318415027328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A171696 (n + 2)).toNat

end

end A120382.P17067886318415027328

namespace A120382

/-- `A004277(A171696(n+2))` -/
def P17067886318415027328.Spec : Prop :=
  ∀ n, P17067886318415027328.a n = A120382 (n + 1)

end A120382

/-! ## A120382.P531772510382755469

`A004277(comp[round(A000040(n+1)/6)])`
-/

namespace A120382.P531772510382755469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A120382.P531772510382755469

namespace A120382

/-- `A004277(comp[round(A000040(n+1)/6)])` -/
def P531772510382755469.Spec : Prop :=
  ∀ n, P531772510382755469.a n = A120382 (n + 1)

end A120382

/-! ## A120382.P16077497172500475623

`A005408(comp[round(A000040(n+1)/6)])-1`
-/

namespace A120382.P16077497172500475623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A120382.P16077497172500475623

namespace A120382

/-- `A005408(comp[round(A000040(n+1)/6)])-1` -/
def P16077497172500475623.Spec : Prop :=
  ∀ n, P16077497172500475623.a n = A120382 (n + 1)

end A120382

/-! ## A120382.P5254429561144991431

`2*lt[2, A051699(6*n)]`
-/

namespace A120382.P5254429561144991431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A120382.P5254429561144991431

namespace A120382

/-- `2*lt[2, A051699(6*n)]` -/
def P5254429561144991431.Spec : Prop :=
  ∀ n, (P5254429561144991431.a n : ℤ) = A120382 (n + 1)

end A120382

/-! ## A120382.P908326624506854035

`A002264(A259826(n+1))`
-/

namespace A120382.P908326624506854035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A259826 (n + 1)).toNat

end

end A120382.P908326624506854035

namespace A120382

/-- `A002264(A259826(n+1))` -/
def P908326624506854035.Spec : Prop :=
  ∀ n, P908326624506854035.a n = A120382 (n + 1)

end A120382

/-! ## A120382.P8630624296111329031

`A008615(2*A259826(n+1))`
-/

namespace A120382.P8630624296111329031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A259826 (n + 1)).toNat

end

end A120382.P8630624296111329031

namespace A120382

/-- `A008615(2*A259826(n+1))` -/
def P8630624296111329031.Spec : Prop :=
  ∀ n, P8630624296111329031.a n = A120382 (n + 1)

end A120382

/-!
# A120383: A number n is included if it satisfies: m divides n for all m's where the m-th prime divides n.

The programs for A120383, the canonical program `A120383.P4051644873206706518` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120383 has offset 1).

The definition of A120383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 406 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120383.P16485988198526550202

`eq[1, A285038(n+1)]+1`
-/

namespace A120383.P16485988198526550202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120383.P16485988198526550202

namespace A120383

/-- `eq[1, A285038(n+1)]+1` -/
def P16485988198526550202.Spec : Prop :=
  ∀ n, (P16485988198526550202.a n : ℤ) = A120383 (n + 1)

end A120383

/-! ## A120383.P12554060009532615540

`record[gcd(n+1, (n+1)%A290103(n+1))]`
-/

namespace A120383.P12554060009532615540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (n + 1 : ℤ) (A290103 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120383.P12554060009532615540

namespace A120383

/-- `record[gcd(n+1, (n+1)%A290103(n+1))]` -/
def P12554060009532615540.Spec : Prop :=
  ∀ n, (P12554060009532615540.a n : ℤ) = A120383 (n + 1)

end A120383

/-! ## A120383.P4051644873206706518

`eq[A001222(n+1), A324848(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A120383

/-- `eq[A001222(n+1), A324848(n+1)]+1` -/
def P4051644873206706518.Spec : Prop :=
  ∀ n, (P4051644873206706518.a n : ℤ) = A120383 (n + 1)

theorem P4051644873206706518.correct : P4051644873206706518.Spec := by
  intro n
  simp only [A120383, Nat.add_sub_cancel]

end A120383

/-! ## A120383.P2791516172517101247

`record[root(A207801(n+1), A285038(n+1))]`
-/

namespace A120383.P2791516172517101247
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207801 (n + 1) : ℝ) ^ (1 / (A285038 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120383.P2791516172517101247

namespace A120383

/-- `record[root(A207801(n+1), A285038(n+1))]` -/
def P2791516172517101247.Spec : Prop :=
  ∀ n, P2791516172517101247.a n = (A120383 (n + 1) : ℝ)

end A120383

/-! ## A120383.P16390793402260047103

`record[A008619(n)/A285038(A008619(n))]`
-/

namespace A120383.P16390793402260047103
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A285038 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120383.P16390793402260047103

namespace A120383

/-- `record[A008619(n)/A285038(A008619(n))]` -/
def P16390793402260047103.Spec : Prop :=
  ∀ n, P16390793402260047103.a n = (A120383 (n + 1) : ℚ)

end A120383

/-! ## A120383.P6672482518702025608

`eq[n, A285038(A008578(n+1))]`
-/

namespace A120383.P6672482518702025608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285038 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120383.P6672482518702025608

namespace A120383

/-- `eq[n, A285038(A008578(n+1))]` -/
def P6672482518702025608.Spec : Prop :=
  ∀ n, (P6672482518702025608.a n : ℤ) = A120383 (n + 1)

end A120383

/-! ## A120383.P6833891541747642665

`A285038(record[A000040(n+1)/A285038(n+1)])`
-/

namespace A120383.P6833891541747642665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A285038 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285038 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A120383.P6833891541747642665

namespace A120383

/-- `A285038(record[A000040(n+1)/A285038(n+1)])` -/
def P6833891541747642665.Spec : Prop :=
  ∀ n, P6833891541747642665.a n = A120383 (n + 1)

end A120383

/-!
# A120384: Isolated primes: geometric mean of distances of a prime to neighboring primes sets record.

The programs for A120384, there is no canonical definition to state claims against.
-/

/-! ## A120384.P5334172886161848760

`∏{p}[A096265(n+2)², #]`
-/

namespace A120384.P5334172886161848760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096265 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A120384.P5334172886161848760

/-! ## A120384.P12016963400414149510

`A094549(A031133(n+1))`
-/

namespace A120384.P12016963400414149510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094549 (A031133 (n + 1)).toNat

end

end A120384.P12016963400414149510

/-! ## A120384.P3756928383769972187

`A126991(A122413(n+1))`
-/

namespace A120384.P3756928383769972187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126991 (A122413 (n + 1)).toNat

end

end A120384.P3756928383769972187

/-! ## A120384.P11834672872128924132

`A160656(A098969(n+1))`
-/

namespace A120384.P11834672872128924132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (A098969 (n + 1)).toNat

end

end A120384.P11834672872128924132

/-!
# A120385: If a(n-1) = 1 then largest value so far + 1, otherwise floor(a(n-1)/2); or table T(n,k) with T(n,0) = n, T(n,k+1) = floor(T(n,k)/2).

The programs for A120385, there is no canonical definition to state claims against.
-/

/-! ## A120385.P9725758724811242457

`A002260(A038722(record[A131966(n+1)]))`
-/

namespace A120385.P9725758724811242457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A120385.P9725758724811242457

/-! ## A120385.P10549636624165685726

`A138530(record[A131966(n+1)])`
-/

namespace A120385.P10549636624165685726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120385.P10549636624165685726

/-! ## A120385.P17568620684726291540

`A004736(record[A131966(n+1)])`
-/

namespace A120385.P17568620684726291540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120385.P17568620684726291540

/-! ## A120385.P8007997551271026294

`A265917(record[A099884(n)])`
-/

namespace A120385.P8007997551271026294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265917 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120385.P8007997551271026294

/-! ## A120385.P7721393528176438858

`A266742(lt[A266742(3*n+2), A194104(n+1)])`
-/

namespace A120385.P7721393528176438858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266742 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266742 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A120385.P7721393528176438858

/-!
# A120386: Number of isomers of polyhex hydrocarbons with C_(2h) symmetry with nineteen hexagons.

The programs for A120386, there is no canonical definition to state claims against.
-/

/-! ## A120386.P5372987134551419807

`∑[eq[1, A238766(3*n+2)]]`
-/

namespace A120386.P5372987134551419807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238766 (3 * n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120386.P5372987134551419807

/-!
# A120387: c(n) mod b(n) where c(n) = (n-1)! and b(n) = Sum_{i=1..n} i.

The programs for A120387, the canonical program `A120387.P9382839840075496527` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120387 has offset 1).

The definition of A120387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120387.P9382839840075496527

`ceil((n+1)/2)*A289207(A110560(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A120387

/-- `ceil((n+1)/2)*A289207(A110560(n))` -/
def P9382839840075496527.Spec : Prop :=
  ∀ n, P9382839840075496527.a n = A120387 (n + 1)

theorem P9382839840075496527.correct : P9382839840075496527.Spec := by
  intro n
  simp only [A120387, Nat.add_sub_cancel]

end A120387

/-! ## A120387.P5479315477478587224

`A008619(n)*A049820(A110560(n))`
-/

namespace A120387.P5479315477478587224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A049820 (A110560 n).toNat

end

end A120387.P5479315477478587224

namespace A120387

/-- `A008619(n)*A049820(A110560(n))` -/
def P5479315477478587224.Spec : Prop :=
  ∀ n, P5479315477478587224.a n = A120387 (n + 1)

end A120387

/-! ## A120387.P1785304596941158563

`abs(Δ[A118136(n)]*A008619(n))`
-/

namespace A120387.P1785304596941158563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A008619 n|

end

end A120387.P1785304596941158563

namespace A120387

/-- `abs(Δ[A118136(n)]*A008619(n))` -/
def P1785304596941158563.Spec : Prop :=
  ∀ n, P1785304596941158563.a n = A120387 (n + 1)

end A120387

/-! ## A120387.P882462169032052754

`n!%∑[n+1]`
-/

namespace A120387.P882462169032052754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120387.P882462169032052754

namespace A120387

/-- `n!%∑[n+1]` -/
def P882462169032052754.Spec : Prop :=
  ∀ n, (P882462169032052754.a n : ℤ) = A120387 (n + 1)

end A120387

/-! ## A120387.P1862629555562265952

`∏[round(1/acot(n))]%∑[n+1]`
-/

namespace A120387.P1862629555562265952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A120387.P1862629555562265952

namespace A120387

/-- `∏[round(1/acot(n))]%∑[n+1]` -/
def P1862629555562265952.Spec : Prop :=
  ∀ n, P1862629555562265952.a n = A120387 (n + 1)

end A120387

/-! ## A120387.P5592678444383340902

`∏[ceil(abs(γ-n))]%∑[n+1]`
-/

namespace A120387.P5592678444383340902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A120387.P5592678444383340902

namespace A120387

/-- `∏[ceil(abs(γ-n))]%∑[n+1]` -/
def P5592678444383340902.Spec : Prop :=
  ∀ n, P5592678444383340902.a n = A120387 (n + 1)

end A120387

/-!
# A120388: Number of connected 2-colored graphs with n vertices and at least one edge that are minimal with respect to bisimilarity.

The programs for A120388, there is no canonical definition to state claims against.
-/

/-! ## A120388.P11585596435199695872

`A329623(A005366(n))+A005366(n)`
-/

namespace A120388.P11585596435199695872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329623 (A005366 n).toNat + A005366 n

end

end A120388.P11585596435199695872

/-!
# A120389: a(n) is such that the a(n)-th composite number is (n-th prime)^2.

The programs for A120389, the canonical program `A120389.P8073201827714242340` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120389 has offset 1).

The definition of A120389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120389.P8073201827714242340

`A065855(A000040(n+1)²)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A120389

/-- `A065855(A000040(n+1)²)` -/
def P8073201827714242340.Spec : Prop :=
  ∀ n, P8073201827714242340.a n = A120389 (n + 1)

theorem P8073201827714242340.correct : P8073201827714242340.Spec := by
  intro n
  simp only [A120389, Nat.add_sub_cancel]

end A120389

/-! ## A120389.P9934020293201342363

`A053683(n+1)-1`
-/

namespace A120389.P9934020293201342363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053683 (n + 1) - 1

end

end A120389.P9934020293201342363

namespace A120389

/-- `A053683(n+1)-1` -/
def P9934020293201342363.Spec : Prop :=
  ∀ n, P9934020293201342363.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P17022498847103314253

`A335135(n)+a(n-1)` with `a(0)=1`
-/

namespace A120389.P17022498847103314253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A335135 n + a (n - 1)

end

end A120389.P17022498847103314253

namespace A120389

/-- `A335135(n)+a(n-1)` -/
def P17022498847103314253.Spec : Prop :=
  ∀ n, P17022498847103314253.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P8479666265201579865

`A084920(n+1)-A000879(n+1)`
-/

namespace A120389.P8479666265201579865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) - A000879 (n + 1)

end

end A120389.P8479666265201579865

namespace A120389

/-- `A084920(n+1)-A000879(n+1)` -/
def P8479666265201579865.Spec : Prop :=
  ∀ n, P8479666265201579865.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P11676889313509592867

`A001248(n+1)-(∑[A050216(n)]+1)`
-/

namespace A120389.P11676889313509592867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A120389.P11676889313509592867

namespace A120389

/-- `A001248(n+1)-(∑[A050216(n)]+1)` -/
def P11676889313509592867.Spec : Prop :=
  ∀ n, P11676889313509592867.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P11437449867795188031

`A001248(n+1)-(A000879(n+1)+1)`
-/

namespace A120389.P11437449867795188031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - (A000879 (n + 1) + 1)

end

end A120389.P11437449867795188031

namespace A120389

/-- `A001248(n+1)-(A000879(n+1)+1)` -/
def P11437449867795188031.Spec : Prop :=
  ∀ n, P11437449867795188031.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P60767859201795779

`A000040(n+1)²-(A000879(n+1)+1)`
-/

namespace A120389.P60767859201795779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - (A000879 (n + 1) + 1)

end

end A120389.P60767859201795779

namespace A120389

/-- `A000040(n+1)²-(A000879(n+1)+1)` -/
def P60767859201795779.Spec : Prop :=
  ∀ n, P60767859201795779.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P16966901361645576985

`A057428(n+1)+A053683(n+1)`
-/

namespace A120389.P16966901361645576985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A053683 (n + 1)

end

end A120389.P16966901361645576985

namespace A120389

/-- `A057428(n+1)+A053683(n+1)` -/
def P16966901361645576985.Spec : Prop :=
  ∀ n, P16966901361645576985.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P13650965851935284789

`record[A006530(n+2)²]-(∑[A050216(n)]+1)`
-/

namespace A120389.P13650965851935284789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A120389.P13650965851935284789

namespace A120389

/-- `record[A006530(n+2)²]-(∑[A050216(n)]+1)` -/
def P13650965851935284789.Spec : Prop :=
  ∀ n, P13650965851935284789.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P14750032325769187218

`record[A020639(n+2)²]-(∑[A050216(n)]+1)`
-/

namespace A120389.P14750032325769187218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A120389.P14750032325769187218

namespace A120389

/-- `record[A020639(n+2)²]-(∑[A050216(n)]+1)` -/
def P14750032325769187218.Spec : Prop :=
  ∀ n, P14750032325769187218.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P9647497928482756274

`A182174(n+1)-A054272(n+1)`
-/

namespace A120389.P9647497928482756274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) - A054272 (n + 1)

end

end A120389.P9647497928482756274

namespace A120389

/-- `A182174(n+1)-A054272(n+1)` -/
def P9647497928482756274.Spec : Prop :=
  ∀ n, P9647497928482756274.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P5641191833990243653

`A001248(n+1)-(A250473(n+1)+n)`
-/

namespace A120389.P5641191833990243653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - (A250473 (n + 1) + (n : ℤ))

end

end A120389.P5641191833990243653

namespace A120389

/-- `A001248(n+1)-(A250473(n+1)+n)` -/
def P5641191833990243653.Spec : Prop :=
  ∀ n, P5641191833990243653.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P9356752973131976254

`A000040(n+1)²-(A250473(n+1)+n)`
-/

namespace A120389.P9356752973131976254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - (A250473 (n + 1) + (n : ℤ))

end

end A120389.P9356752973131976254

namespace A120389

/-- `A000040(n+1)²-(A250473(n+1)+n)` -/
def P9356752973131976254.Spec : Prop :=
  ∀ n, P9356752973131976254.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P10962891497806864556

`A001248(n+1)-A062773(n+1)`
-/

namespace A120389.P10962891497806864556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A062773 (n + 1)

end

end A120389.P10962891497806864556

namespace A120389

/-- `A001248(n+1)-A062773(n+1)` -/
def P10962891497806864556.Spec : Prop :=
  ∀ n, P10962891497806864556.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P10045162414662537735

`A280076(n+2)-A062773(n+1)`
-/

namespace A120389.P10045162414662537735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2) - A062773 (n + 1)

end

end A120389.P10045162414662537735

namespace A120389

/-- `A280076(n+2)-A062773(n+1)` -/
def P10045162414662537735.Spec : Prop :=
  ∀ n, P10045162414662537735.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P2903295157582117271

`A000040(n+1)²-A062773(n+1)`
-/

namespace A120389.P2903295157582117271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A062773 (n + 1)

end

end A120389.P2903295157582117271

namespace A120389

/-- `A000040(n+1)²-A062773(n+1)` -/
def P2903295157582117271.Spec : Prop :=
  ∀ n, P2903295157582117271.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P8578169332374127752

`A066872(n+1)-(A062773(n+1)+1)`
-/

namespace A120389.P8578169332374127752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - (A062773 (n + 1) + 1)

end

end A120389.P8578169332374127752

namespace A120389

/-- `A066872(n+1)-(A062773(n+1)+1)` -/
def P8578169332374127752.Spec : Prop :=
  ∀ n, P8578169332374127752.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P10895188878817657523

`Δ[A036439(n+1)]²-A062773(n+1)`
-/

namespace A120389.P10895188878817657523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A062773 (n + 1)

end

end A120389.P10895188878817657523

namespace A120389

/-- `Δ[A036439(n+1)]²-A062773(n+1)` -/
def P10895188878817657523.Spec : Prop :=
  ∀ n, P10895188878817657523.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P15256296429579324118

`record[A006530(n+2)²]-A062773(n+1)`
-/

namespace A120389.P15256296429579324118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A062773 (n + 1)

end

end A120389.P15256296429579324118

namespace A120389

/-- `record[A006530(n+2)²]-A062773(n+1)` -/
def P15256296429579324118.Spec : Prop :=
  ∀ n, P15256296429579324118.a n = A120389 (n + 1)

end A120389

/-! ## A120389.P9558277985043982617

`record[A020639(n+2)²]-A062773(n+1)`
-/

namespace A120389.P9558277985043982617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A062773 (n + 1)

end

end A120389.P9558277985043982617

namespace A120389

/-- `record[A020639(n+2)²]-A062773(n+1)` -/
def P9558277985043982617.Spec : Prop :=
  ∀ n, P9558277985043982617.a n = A120389 (n + 1)

end A120389

/-!
# A120390: Sum of digits of double factorial numbers.

The programs for A120390, the canonical program `A120390.P1160814264801887653` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120390 has offset 1).

The definition of A120390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120390.P1160814264801887653

`∑{digits}[(n+1)*a(n-2), #]` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120390

/-- `∑{digits}[(n+1)*a(n-2), #]` -/
def P1160814264801887653.Spec : Prop :=
  ∀ n, (P1160814264801887653.a n : ℤ) = A120390 (n + 1)

theorem P1160814264801887653.correct : P1160814264801887653.Spec := by
  intro n
  simp only [A120390, Nat.add_sub_cancel]

end A120390

/-! ## A120390.P13447358285145117516

`∑{digits}[∏[(n+1)/a(n-1)], #]` with `a(0)=1`
-/

namespace A120390.P13447358285145117516
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1 : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A120390.P13447358285145117516

namespace A120390

/-- `∑{digits}[∏[(n+1)/a(n-1)], #]` -/
def P13447358285145117516.Spec : Prop :=
  ∀ n, (P13447358285145117516.a n : ℤ) = A120390 (n + 1)

end A120390

/-! ## A120390.P837873839992741193

`∑{digits}[A006882(n+1), #]`
-/

namespace A120390.P837873839992741193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A120390.P837873839992741193

namespace A120390

/-- `∑{digits}[A006882(n+1), #]` -/
def P837873839992741193.Spec : Prop :=
  ∀ n, (P837873839992741193.a n : ℤ) = A120390 (n + 1)

end A120390

/-! ## A120390.P5611753869308046081

`∑{digits}[A128882(n+1)+1, #]`
-/

namespace A120390.P5611753869308046081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A120390.P5611753869308046081

namespace A120390

/-- `∑{digits}[A128882(n+1)+1, #]` -/
def P5611753869308046081.Spec : Prop :=
  ∀ n, (P5611753869308046081.a n : ℤ) = A120390 (n + 1)

end A120390

/-! ## A120390.P8996638979683038867

`∑{digits}[Δ[A129981(n)], #]`
-/

namespace A120390.P8996638979683038867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A120390.P8996638979683038867

namespace A120390

/-- `∑{digits}[Δ[A129981(n)], #]` -/
def P8996638979683038867.Spec : Prop :=
  ∀ n, (P8996638979683038867.a n : ℤ) = A120390 (n + 1)

end A120390

/-! ## A120390.P18083413963885522755

`∑{digits}[(n+1)*A172089(∑[n]), #]`
-/

namespace A120390.P18083413963885522755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A172089 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A120390.P18083413963885522755

namespace A120390

/-- `∑{digits}[(n+1)*A172089(∑[n]), #]` -/
def P18083413963885522755.Spec : Prop :=
  ∀ n, (P18083413963885522755.a n : ℤ) = A120390 (n + 1)

end A120390

/-! ## A120390.P12013909001574005744

`∑{digits}[A172089(A000124(n+1)), #]`
-/

namespace A120390.P12013909001574005744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172089 (A000124 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A120390.P12013909001574005744

namespace A120390

/-- `∑{digits}[A172089(A000124(n+1)), #]` -/
def P12013909001574005744.Spec : Prop :=
  ∀ n, (P12013909001574005744.a n : ℤ) = A120390 (n + 1)

end A120390

/-! ## A120390.P9623681380833121684

`∑{digits}[A172089(A253145(n)+1), #]`
-/

namespace A120390.P9623681380833121684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172089 (A253145 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A120390.P9623681380833121684

namespace A120390

/-- `∑{digits}[A172089(A253145(n)+1), #]` -/
def P9623681380833121684.Spec : Prop :=
  ∀ n, (P9623681380833121684.a n : ℤ) = A120390 (n + 1)

end A120390

/-! ## A120390.P15017140089025329095

`∑{digits}[A248809(∑[n]), #]`
-/

namespace A120390.P15017140089025329095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248809 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A120390.P15017140089025329095

namespace A120390

/-- `∑{digits}[A248809(∑[n]), #]` -/
def P15017140089025329095.Spec : Prop :=
  ∀ n, (P15017140089025329095.a n : ℤ) = A120390 (n + 1)

end A120390

/-! ## A120390.P4532093348670675263

`∑{digits}[record[A230698(A001971(n))], #]`
-/

namespace A120390.P4532093348670675263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (A001971 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A120390.P4532093348670675263

namespace A120390

/-- `∑{digits}[record[A230698(A001971(n))], #]` -/
def P4532093348670675263.Spec : Prop :=
  ∀ n, (P4532093348670675263.a n : ℤ) = A120390 (n + 1)

end A120390

/-! ## A120390.P13528055887978802948

`∑{digits}[A230698(A000217(n+1)), #]`
-/

namespace A120390.P13528055887978802948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (A000217 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A120390.P13528055887978802948

namespace A120390

/-- `∑{digits}[A230698(A000217(n+1)), #]` -/
def P13528055887978802948.Spec : Prop :=
  ∀ n, (P13528055887978802948.a n : ℤ) = A120390 (n + 1)

end A120390

/-!
# A120391: Expansion of -x*(1+x-x^2+x^3+4*x^4) / ( (x^3-2*x^2-x+1)*(x^3+2*x^2-x-1) ).

The programs for A120391, the canonical program `A120391.P15789494540663405406` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120391 has offset 0).

The definition of A120391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2-x^3+x^4+4x^5)/(1-5x^2+6x^4-x^6))` (program `A120391.P15789494540663405406`, by `A120391.P15789494540663405406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120391.P15789494540663405406

`ogf((x+x^2-x^3+x^4+4x^5)/(1-5x^2+6x^4-x^6))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120391

/-- `ogf((x+x^2-x^3+x^4+4x^5)/(1-5x^2+6x^4-x^6))` -/
def P15789494540663405406.Spec : Prop :=
  ∀ n, P15789494540663405406.a n = A120391 n

theorem P15789494540663405406.correct : P15789494540663405406.Spec := by
  intro n
  simp only [A120391]

end A120391

/-!
# A120392: a(1) is the least k such that p(1) = (k*3)^2 + k*3 - 1 is prime, then a(n+1) is the least k such that (k*p(n))^2 + k*p(n) - 1 = p(n+1) is prime.

The programs for A120392, there is no canonical definition to state claims against.
-/

/-! ## A120392.P15740160682534416050

`A259799(∑[n²+2])`
-/

namespace A120392.P15740160682534416050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259799 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120392.P15740160682534416050

/-! ## A120392.P15545481055519929135

`4*A031438(2*(n+2))+1`
-/

namespace A120392.P15545481055519929135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A031438 (2 * (n + 2)) + 1

end

end A120392.P15545481055519929135

/-! ## A120392.P558641680191227786

`A058018(A099398(n))`
-/

namespace A120392.P558641680191227786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058018 (A099398 n).toNat

end

end A120392.P558641680191227786

/-!
# A120394: a(1) is the least k such that p(1) = (k*7)^2 + k*7 - 1 is prime, then a(n+1) is the least k such that (k*p(n))^2 + k*p(n) - 1 = p(n+1) is prime.

The programs for A120394, there is no canonical definition to state claims against.
-/

/-! ## A120394.P15697978914618993907

`A116956(a(n-1))` with `a(0)=3, a(1)=1, a(2)=6, a(3)=4`
-/

namespace A120394.P15697978914618993907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 6, 4] fun n a =>
  A116956 (a (n - 1)).toNat

end

end A120394.P15697978914618993907

/-!
# A120395: Let p(1) = 13. Then a(n) is the least k such that p(n+1) = (k*p(n))^2 + k*p(n) - 1 is prime.

The programs for A120395, there is no canonical definition to state claims against.
-/

/-! ## A120395.P9931214191083619877

`A122085(A332354(3*n+4)+A090245(n))`
-/

namespace A120395.P9931214191083619877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122085 (A332354 (3 * n + 4) + A090245 n).toNat

end

end A120395.P9931214191083619877

/-!
# A120397: Minimal number of steps needed to represent a prime >=5 as a sum of at most 3 primes such that all the previous odd primes are represented.

The programs for A120397, there is no canonical definition to state claims against.
-/

/-! ## A120397.P14719702741375675190

`floor(A073518(n+7)/3)`
-/

namespace A120397.P14719702741375675190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073518 (n + 7) : ℚ) / 3⌋

end

end A120397.P14719702741375675190

/-! ## A120397.P18414479127283893291

`floor(A270301(n+1)/74)`
-/

namespace A120397.P18414479127283893291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A270301 (n + 1) : ℚ) / 74⌋

end

end A120397.P18414479127283893291

/-! ## A120397.P16919801591204452751

`ceil(record[log(A250229(n+1))])`
-/

namespace A120397.P16919801591204452751
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A250229 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A120397.P16919801591204452751

/-! ## A120397.P17018369687956390176

`∑[char[A210485(∏{digits}[n, #]+n)]]`
-/

namespace A120397.P17018369687956390176
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120397.P17018369687956390176

/-! ## A120397.P6878309642100150242

`round((n+1)²/A002048(n+1))`
-/

namespace A120397.P6878309642100150242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A002048 (n + 1) : ℚ))

end

end A120397.P6878309642100150242

/-!
# A120398: Sums of two distinct prime cubes.

The programs for A120398, there is no canonical definition to state claims against.
-/

/-! ## A120398.P6089716572979985969

`∩[A086119(n+1), A141805(n+1)]`
-/

namespace A120398.P6089716572979985969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120398.P6089716572979985969

/-! ## A120398.P2644714349888063158

`∩[A086119(n+1), A202679(n+1)]`
-/

namespace A120398.P2644714349888063158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120398.P2644714349888063158

/-! ## A120398.P4975258656772868568

`∩[A024670(n+1), A086119(n+1)]`
-/

namespace A120398.P4975258656772868568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120398.P4975258656772868568

/-! ## A120398.P8753081600650785088

`∩[A086119(n+1), A114090(n+1)]`
-/

namespace A120398.P8753081600650785088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120398.P8753081600650785088

/-! ## A120398.P7612911330526705934

`∩[A086119(n+1), A293645(n+1)]`
-/

namespace A120398.P7612911330526705934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120398.P7612911330526705934

/-! ## A120398.P12984416315738945361

`∩[A086119(n+1), A307585(n+1)]`
-/

namespace A120398.P12984416315738945361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120398.P12984416315738945361

/-! ## A120398.P14639369667678552891

`∩[A086119(n+1), A213519(n+1)]`
-/

namespace A120398.P14639369667678552891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120398.P14639369667678552891

/-! ## A120398.P9894013333993212857

`filter[A086119(n+2), A354108(#)]`
-/

namespace A120398.P9894013333993212857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A120398.P9894013333993212857

