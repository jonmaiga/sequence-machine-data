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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C009
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A132101: a(n) = (A001147(n) + A047974(n))/2.

The programs for A132101, the canonical program `A132101.P4109760056791164260` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132101 has offset 0).

The definition of A132101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132101.P4109760056791164260

`(A001147(n)+A047974(n))/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A132101

/-- `(A001147(n)+A047974(n))/2` -/
def P4109760056791164260.Spec : Prop :=
  ∀ n, P4109760056791164260.a n = (A132101 n : ℚ)

end A132101

/-! ## A132101.P2667384147042109505

`(A001147(n)+sqrt(A115326(n)))/2`
-/

namespace A132101.P2667384147042109505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A001147 n : ℝ) + Real.sqrt (A115326 n : ℝ)) / 2

end

end A132101.P2667384147042109505

namespace A132101

/-- `(A001147(n)+sqrt(A115326(n)))/2` -/
def P2667384147042109505.Spec : Prop :=
  ∀ n, P2667384147042109505.a n = (A132101 n : ℝ)

end A132101

/-! ## A132101.P13905654636413113508

`(A123244(A000124(n))+A047974(n))/2`
-/

namespace A132101.P13905654636413113508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123244 (A000124 n).toNat + A047974 n : ℚ) / 2

end

end A132101.P13905654636413113508

namespace A132101

/-- `(A123244(A000124(n))+A047974(n))/2` -/
def P13905654636413113508.Spec : Prop :=
  ∀ n, P13905654636413113508.a n = (A132101 n : ℚ)

end A132101

/-! ## A132101.P12508023487736268319

`(A123244(A000217(n))+A047974(n))/2`
-/

namespace A132101.P12508023487736268319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123244 (A000217 n).toNat + A047974 n : ℚ) / 2

end

end A132101.P12508023487736268319

namespace A132101

/-- `(A123244(A000217(n))+A047974(n))/2` -/
def P12508023487736268319.Spec : Prop :=
  ∀ n, P12508023487736268319.a n = (A132101 n : ℚ)

end A132101

/-!
# A132102: Number of distinct Tsuro tiles which are n-gonal in shape and have 2 points per side.

The programs for A132102, there is no canonical definition to state claims against.
-/

/-! ## A132102.P9586482911202550426

`2*A132105(n)-A047974(n)`
-/

namespace A132102.P9586482911202550426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132105 n - A047974 n

end

end A132102.P9586482911202550426

/-! ## A132102.P16870186653189118952

`2*A132105(n)-sqrt(A115326(n))`
-/

namespace A132102.P16870186653189118952
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A132105 n : ℝ) - Real.sqrt (A115326 n : ℝ)

end

end A132102.P16870186653189118952

/-! ## A132102.P729681014968845076

`A004277(A132105(n))-A047974(n)`
-/

namespace A132102.P729681014968845076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A132105 n).toNat - A047974 n

end

end A132102.P729681014968845076

/-!
# A132103: Number of distinct Tsuro tiles which are digonal in shape and have Q points per side.

The programs for A132103, there is no canonical definition to state claims against.
-/

/-! ## A132103.P2009680057634949146

`A215701(n+1)+∑[∑[(-1)^floor(e*(n+1))]]`
-/

namespace A132103.P2009680057634949146
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊Real.exp 1 * (n + 1 : ℝ)⌋ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215701 (n + 1) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132103.P2009680057634949146

/-! ## A132103.P9353069307735348305

`A094110(A089847(n))`
-/

namespace A132103.P9353069307735348305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094110 (A089847 n).toNat

end

end A132103.P9353069307735348305

/-!
# A132105: Number of distinct Tsuro tiles which are n-gonal in shape and have 2 points per side.

The programs for A132105, there is no canonical definition to state claims against.
-/

/-! ## A132105.P16044466897218340164

`(A132102(n)+A047974(n))/2`
-/

namespace A132105.P16044466897218340164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132102 n + A047974 n : ℚ) / 2

end

end A132105.P16044466897218340164

/-! ## A132105.P16819308554415298155

`A014682(A132102(n)+A047974(n))`
-/

namespace A132105.P16819308554415298155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A132102 n + A047974 n).toNat

end

end A132105.P16819308554415298155

/-! ## A132105.P18182883502775310202

`A004525(A132102(n)+A047974(n))`
-/

namespace A132105.P18182883502775310202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A132102 n + A047974 n).toNat

end

end A132105.P18182883502775310202

/-!
# A132106: a(n) = 1 + floor(sqrt(n)) + Sum_{i=1..n} floor(n/i).

The programs for A132106, the canonical program `A132106.P15830577859777000377` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132106 has offset 0).

The definition of A132106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132106.P15830577859777000377

`1+A000196(n)+A006218(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A132106

/-- `1+A000196(n)+A006218(n)` -/
def P15830577859777000377.Spec : Prop :=
  ∀ n, P15830577859777000377.a n = A132106 n

theorem P15830577859777000377.correct : P15830577859777000377.Spec := by
  intro n
  simp only [A132106]

end A132106

/-! ## A132106.P5155381331698399869

`∑[∏{e}[n, #+1]]+floor(sqrt(n))`
-/

namespace A132106.P5155381331698399869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.sqrt n

end

end A132106.P5155381331698399869

namespace A132106

/-- `∑[∏{e}[n, #+1]]+floor(sqrt(n))` -/
def P5155381331698399869.Spec : Prop :=
  ∀ n, (P5155381331698399869.a n : ℤ) = A132106 n

end A132106

/-! ## A132106.P15920359454494477320

`∑[∏{e}[n, #+1]+char[(n+1)²]]`
-/

namespace A132106.P15920359454494477320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) + (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132106.P15920359454494477320

namespace A132106

/-- `∑[∏{e}[n, #+1]+char[(n+1)²]]` -/
def P15920359454494477320.Spec : Prop :=
  ∀ n, (P15920359454494477320.a n : ℤ) = A132106 n

end A132106

/-! ## A132106.P16229511264917645378

`or(1, ∏{e}[n, #+1]+a(n-1))` with `a(0)=1`
-/

namespace A132106.P16229511264917645378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + a (n - 1))

end

end A132106.P16229511264917645378

namespace A132106

/-- `or(1, ∏{e}[n, #+1]+a(n-1))` -/
def P16229511264917645378.Spec : Prop :=
  ∀ n, (P16229511264917645378.a n : ℤ) = A132106 n

end A132106

/-! ## A132106.P7046317765833752871

`floor(A054519(n)+sqrt(n))`
-/

namespace A132106.P7046317765833752871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054519 n : ℝ) + Real.sqrt (n : ℝ)⌋

end

end A132106.P7046317765833752871

namespace A132106

/-- `floor(A054519(n)+sqrt(n))` -/
def P7046317765833752871.Spec : Prop :=
  ∀ n, P7046317765833752871.a n = A132106 n

end A132106

/-! ## A132106.P17093010917249680482

`∑[or(1, A032741(n))]+n`
-/

namespace A132106.P17093010917249680482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A032741 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A132106.P17093010917249680482

namespace A132106

/-- `∑[or(1, A032741(n))]+n` -/
def P17093010917249680482.Spec : Prop :=
  ∀ n, P17093010917249680482.a n = A132106 n

end A132106

/-! ## A132106.P13084351559955241864

`A161841(n)+a(n-1)` with `a(0)=1`
-/

namespace A132106.P13084351559955241864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A161841 n + a (n - 1)

end

end A132106.P13084351559955241864

namespace A132106

/-- `A161841(n)+a(n-1)` -/
def P13084351559955241864.Spec : Prop :=
  ∀ n, P13084351559955241864.a n = A132106 n

end A132106

/-! ## A132106.P13058376955556240553

`a(n-1)+2*A038548(n)` with `a(0)=1`
-/

namespace A132106.P13058376955556240553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A038548 n

end

end A132106.P13058376955556240553

namespace A132106

/-- `a(n-1)+2*A038548(n)` -/
def P13058376955556240553.Spec : Prop :=
  ∀ n, P13058376955556240553.a n = A132106 n

end A132106

/-! ## A132106.P16528214251879433373

`or(1, A000005(n)+a(n-1))` with `a(0)=1`
-/

namespace A132106.P16528214251879433373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (A000005 n + a (n - 1))

end

end A132106.P16528214251879433373

namespace A132106

/-- `or(1, A000005(n)+a(n-1))` -/
def P16528214251879433373.Spec : Prop :=
  ∀ n, P16528214251879433373.a n = A132106 n

end A132106

/-! ## A132106.P6671948655865440103

`∑[A109613(∏{e}[n, #+1]-1)]+n`
-/

namespace A132106.P6671948655865440103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A132106.P6671948655865440103

namespace A132106

/-- `∑[A109613(∏{e}[n, #+1]-1)]+n` -/
def P6671948655865440103.Spec : Prop :=
  ∀ n, P6671948655865440103.a n = A132106 n

end A132106

/-! ## A132106.P11309182526496339543

`∑[A246416(A145154(n))]`
-/

namespace A132106.P11309182526496339543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246416 (A145154 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132106.P11309182526496339543

namespace A132106

/-- `∑[A246416(A145154(n))]` -/
def P11309182526496339543.Spec : Prop :=
  ∀ n, P11309182526496339543.a n = A132106 n

end A132106

/-! ## A132106.P2102297660336427202

`A054519(n)+A000196(n)`
-/

namespace A132106.P2102297660336427202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n + A000196 n

end

end A132106.P2102297660336427202

namespace A132106

/-- `A054519(n)+A000196(n)` -/
def P2102297660336427202.Spec : Prop :=
  ∀ n, P2102297660336427202.a n = A132106 n

theorem P2102297660336427202.correct : P2102297660336427202.Spec := by
  intro n
  simp only [A132106, Nat.add_sub_cancel, A132106.P2102297660336427202.a, A132106.P15830577859777000377.a, A000196, A000196.P15434771586934192083.a, A006218, A006218.P9218434490128439557.a, A054519, A054519.P3292618312068876157.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132106

/-! ## A132106.P12118238257873669904

`∑[A109613(A032741(n))]+n`
-/

namespace A132106.P12118238257873669904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A032741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A132106.P12118238257873669904

namespace A132106

/-- `∑[A109613(A032741(n))]+n` -/
def P12118238257873669904.Spec : Prop :=
  ∀ n, P12118238257873669904.a n = A132106 n

end A132106

/-! ## A132106.P8780325889502672566

`A006218(n)+A003059(n+1)`
-/

namespace A132106.P8780325889502672566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + A003059 (n + 1)

end

end A132106.P8780325889502672566

namespace A132106

/-- `A006218(n)+A003059(n+1)` -/
def P8780325889502672566.Spec : Prop :=
  ∀ n, P8780325889502672566.a n = A132106 n

end A132106

/-! ## A132106.P1541819468092573350

`A006590(n+1)-A028391(n)`
-/

namespace A132106.P1541819468092573350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) - A028391 n

end

end A132106.P1541819468092573350

namespace A132106

/-- `A006590(n+1)-A028391(n)` -/
def P1541819468092573350.Spec : Prop :=
  ∀ n, P1541819468092573350.a n = A132106 n

theorem P1541819468092573350.correct : P1541819468092573350.Spec := by
  intro n
  simp only [A132106, Nat.add_sub_cancel, A132106.P1541819468092573350.a, A132106.P15830577859777000377.a, A000196, A000196.P15434771586934192083.a, A006218, A006218.P9218434490128439557.a, A006590, A006590.P12269573465856499266.a, A028391, A028391.P17198271841435315725.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132106

/-! ## A132106.P11483613742699128697

`A003059(n+1)+A054519(n)-1`
-/

namespace A132106.P11483613742699128697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) + (A054519 n - 1)

end

end A132106.P11483613742699128697

namespace A132106

/-- `A003059(n+1)+A054519(n)-1` -/
def P11483613742699128697.Spec : Prop :=
  ∀ n, P11483613742699128697.a n = A132106 n

end A132106

/-! ## A132106.P14055592875542498858

`A006590(n+1)+A000196(n)-n`
-/

namespace A132106.P14055592875542498858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) + (A000196 n - (n : ℤ))

end

end A132106.P14055592875542498858

namespace A132106

/-- `A006590(n+1)+A000196(n)-n` -/
def P14055592875542498858.Spec : Prop :=
  ∀ n, P14055592875542498858.a n = A132106 n

theorem P14055592875542498858.correct : P14055592875542498858.Spec := by
  intro n
  simp only [A132106, Nat.add_sub_cancel, A132106.P14055592875542498858.a, A132106.P15830577859777000377.a, A000196, A000196.P15434771586934192083.a, A006218, A006218.P9218434490128439557.a, A006590, A006590.P12269573465856499266.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132106

/-! ## A132106.P639516785667550988

`A078358(n+1)+A006218(n)-n`
-/

namespace A132106.P639516785667550988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (n + 1) + (A006218 n - (n : ℤ))

end

end A132106.P639516785667550988

namespace A132106

/-- `A078358(n+1)+A006218(n)-n` -/
def P639516785667550988.Spec : Prop :=
  ∀ n, P639516785667550988.a n = A132106 n

end A132106

/-! ## A132106.P17700364517430260194

`A161842(n+1)+1-A161841(n+1)`
-/

namespace A132106.P17700364517430260194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161842 (n + 1) + (1 - A161841 (n + 1))

end

end A132106.P17700364517430260194

namespace A132106

/-- `A161842(n+1)+1-A161841(n+1)` -/
def P17700364517430260194.Spec : Prop :=
  ∀ n, P17700364517430260194.a n = A132106 n

end A132106

/-! ## A132106.P7935073548997681223

`∑[A010052(n)+A000005(n+1)]-A000005(n+1)`
-/

namespace A132106.P7935073548997681223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000005 (n + 1)

end

end A132106.P7935073548997681223

namespace A132106

/-- `∑[A010052(n)+A000005(n+1)]-A000005(n+1)` -/
def P7935073548997681223.Spec : Prop :=
  ∀ n, P7935073548997681223.a n = A132106 n

end A132106

/-!
# A132107: Expansion of (f(x) / f(x^3))^6 in powers of x where f() is a Ramanujan theta function.

The programs for A132107, there is no canonical definition to state claims against.
-/

/-! ## A132107.P9914034286257405316

`A007262(n)*A033999(n)`
-/

namespace A132107.P9914034286257405316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007262 n * A033999 n

end

end A132107.P9914034286257405316

/-! ## A132107.P598954479999867633

`(A004442(n)-n)*A007262(n)`
-/

namespace A132107.P598954479999867633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A007262 n

end

end A132107.P598954479999867633

/-! ## A132107.P16141959944887148106

`A007262(n)/A033999(n)^A007088(n)`
-/

namespace A132107.P16141959944887148106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007262 n : ℚ) / (A033999 n : ℚ) ^ (A007088 n : ℤ)

end

end A132107.P16141959944887148106

/-! ## A132107.P13046498731265180484

`A007262(n)*A057077(2*n)`
-/

namespace A132107.P13046498731265180484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007262 n * A057077 (2 * n)

end

end A132107.P13046498731265180484

/-! ## A132107.P18365326428088149404

`A007262(n)*A034947(2*n+1)`
-/

namespace A132107.P18365326428088149404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007262 n * A034947 (2 * n + 1)

end

end A132107.P18365326428088149404

/-! ## A132107.P15654700267841693393

`A007262(n)*A057079(A004442(3*n+1))`
-/

namespace A132107.P15654700267841693393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007262 n * A057079 (A004442 (3 * n + 1)).toNat

end

end A132107.P15654700267841693393

/-!
# A132108: Triangle T(n,k) = binomial(n,k)+n-k read by rows.

The programs for A132108, the canonical program `A132108.P1884031731046061735` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132108 has offset 0).

The definition of A132108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))+row(n)-col(n)` (program `A132108.P1884031731046061735`, by `A132108.P1884031731046061735.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132108.P1884031731046061735

`C(row(n), col(n))+row(n)-col(n)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132108

/-- `C(row(n), col(n))+row(n)-col(n)` -/
def P1884031731046061735.Spec : Prop :=
  ∀ n, P1884031731046061735.a n = A132108 n

theorem P1884031731046061735.correct : P1884031731046061735.Spec := by
  intro n
  simp only [A132108]

end A132108

/-! ## A132108.P2530651493097839095

`A025581(n)+A007318(n)`
-/

namespace A132108.P2530651493097839095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A007318 n

end

end A132108.P2530651493097839095

namespace A132108

/-- `A025581(n)+A007318(n)` -/
def P2530651493097839095.Spec : Prop :=
  ∀ n, P2530651493097839095.a n = A132108 n

theorem P2530651493097839095.correct : P2530651493097839095.Spec := by
  intro n
  simp only [A132108, Nat.add_sub_cancel, A132108.P2530651493097839095.a, A132108.P1884031731046061735.a, A007318, A007318.P11755526479805562006.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132108

/-! ## A132108.P8242496028478331451

`A131923(n)-A002262(n)`
-/

namespace A132108.P8242496028478331451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131923 n - A002262 n

end

end A132108.P8242496028478331451

namespace A132108

/-- `A131923(n)-A002262(n)` -/
def P8242496028478331451.Spec : Prop :=
  ∀ n, P8242496028478331451.a n = A132108 n

theorem P8242496028478331451.correct : P8242496028478331451.Spec := by
  intro n
  simp only [A132108, Nat.add_sub_cancel, A132108.P8242496028478331451.a, A132108.P1884031731046061735.a, A002262, A002262.P17823619022233514403.a, A131923, A131923.P8187929482264787384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132108

/-! ## A132108.P5305266419939857973

`A131948(n)-A051162(n)`
-/

namespace A132108.P5305266419939857973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131948 n - A051162 n

end

end A132108.P5305266419939857973

namespace A132108

/-- `A131948(n)-A051162(n)` -/
def P5305266419939857973.Spec : Prop :=
  ∀ n, P5305266419939857973.a n = A132108 n

end A132108

/-! ## A132108.P8027197781437825538

`A025581(n)+abs(A108086(n))`
-/

namespace A132108.P8027197781437825538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + |A108086 n|

end

end A132108.P8027197781437825538

namespace A132108

/-- `A025581(n)+abs(A108086(n))` -/
def P8027197781437825538.Spec : Prop :=
  ∀ n, P8027197781437825538.a n = A132108 n

end A132108

/-! ## A132108.P9956455864021954536

`A025581(n)+abs(A130595(n))`
-/

namespace A132108.P9956455864021954536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + |A130595 n|

end

end A132108.P9956455864021954536

namespace A132108

/-- `A025581(n)+abs(A130595(n))` -/
def P9956455864021954536.Spec : Prop :=
  ∀ n, P9956455864021954536.a n = A132108 n

end A132108

/-! ## A132108.P5698742969468456331

`A025581(n)+sqrt(A008459(n))`
-/

namespace A132108.P5698742969468456331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A132108.P5698742969468456331

namespace A132108

/-- `A025581(n)+sqrt(A008459(n))` -/
def P5698742969468456331.Spec : Prop :=
  ∀ n, P5698742969468456331.a n = (A132108 n : ℝ)

end A132108

/-! ## A132108.P4732114180102256926

`A007318(n)+log2(A130321(n))`
-/

namespace A132108.P4732114180102256926
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℝ) + Real.logb 2 (A130321 n : ℝ)

end

end A132108.P4732114180102256926

namespace A132108

/-- `A007318(n)+log2(A130321(n))` -/
def P4732114180102256926.Spec : Prop :=
  ∀ n, P4732114180102256926.a n = (A132108 n : ℝ)

end A132108

/-! ## A132108.P3740337025252872620

`A025581(n)+Δ[A102363(n)]`
-/

namespace A132108.P3740337025252872620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (f1 (n + 1) - f1 n)

end

end A132108.P3740337025252872620

namespace A132108

/-- `A025581(n)+Δ[A102363(n)]` -/
def P3740337025252872620.Spec : Prop :=
  ∀ n, P3740337025252872620.a n = A132108 n

end A132108

/-! ## A132108.P8800986480630094528

`A014473(n)+A004736(n+1)`
-/

namespace A132108.P8800986480630094528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A004736 (n + 1)

end

end A132108.P8800986480630094528

namespace A132108

/-- `A014473(n)+A004736(n+1)` -/
def P8800986480630094528.Spec : Prop :=
  ∀ n, P8800986480630094528.a n = A132108 n

end A132108

/-! ## A132108.P10473945255951166866

`A014473(n)+A025581(n)+1`
-/

namespace A132108.P10473945255951166866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A025581 n + 1)

end

end A132108.P10473945255951166866

namespace A132108

/-- `A014473(n)+A025581(n)+1` -/
def P10473945255951166866.Spec : Prop :=
  ∀ n, P10473945255951166866.a n = A132108 n

theorem P10473945255951166866.correct : P10473945255951166866.Spec := by
  intro n
  simp only [A132108, Nat.add_sub_cancel, A132108.P10473945255951166866.a, A132108.P1884031731046061735.a, A014473, A014473.P9301799580602651200.a, A025581, A025581.P16112744757063613497.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132108

/-! ## A132108.P5467955361096194306

`A131950(n)+1-A131899(n)`
-/

namespace A132108.P5467955361096194306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131950 n + (1 - A131899 n)

end

end A132108.P5467955361096194306

namespace A132108

/-- `A131950(n)+1-A131899(n)` -/
def P5467955361096194306.Spec : Prop :=
  ∀ n, P5467955361096194306.a n = A132108 n

theorem P5467955361096194306.correct : P5467955361096194306.Spec := by
  intro n
  simp only [A132108, Nat.add_sub_cancel, A132108.P5467955361096194306.a, A132108.P1884031731046061735.a, A131899, A131899.P5613504993565283858.a, A131950, A131950.P17361915348174357254.a, A002262, A002262.P17823619022233514403.a, A131821, A131821.P13312494062197045656.a, A131923, A131923.P8187929482264787384.a, A144217, A144217.P17527769007908988650.a, A131816, A131816.P3689264983321174764.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P54397649261359622.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132108

/-! ## A132108.P13321525751659792565

`A135227(n)+A193592(n)-1`
-/

namespace A132108.P13321525751659792565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n + (A193592 n - 1)

end

end A132108.P13321525751659792565

namespace A132108

/-- `A135227(n)+A193592(n)-1` -/
def P13321525751659792565.Spec : Prop :=
  ∀ n, P13321525751659792565.a n = A132108 n

end A132108

/-! ## A132108.P14079723754462825831

`A025581(n)+A028326(n)/2`
-/

namespace A132108.P14079723754462825831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) + (A028326 n : ℚ) / 2

end

end A132108.P14079723754462825831

namespace A132108

/-- `A025581(n)+A028326(n)/2` -/
def P14079723754462825831.Spec : Prop :=
  ∀ n, P14079723754462825831.a n = (A132108 n : ℚ)

theorem P14079723754462825831.correct : P14079723754462825831.Spec := by
  intro n
  simp only [A132108, Nat.add_sub_cancel, A132108.P14079723754462825831.a, A132108.P1884031731046061735.a, A025581, A025581.P16112744757063613497.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132108

/-! ## A132108.P16436096296225039451

`A007318(n)+val(A036561(n), 2)`
-/

namespace A132108.P16436096296225039451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (SequenceMachineLib.valuation (A036561 n).toNat 2 : ℤ)

end

end A132108.P16436096296225039451

namespace A132108

/-- `A007318(n)+val(A036561(n), 2)` -/
def P16436096296225039451.Spec : Prop :=
  ∀ n, P16436096296225039451.a n = A132108 n

end A132108

/-! ## A132108.P5656572974493017758

`A007318(n)+val(A054582(n), 2)`
-/

namespace A132108.P5656572974493017758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (SequenceMachineLib.valuation (A054582 n).toNat 2 : ℤ)

end

end A132108.P5656572974493017758

namespace A132108

/-- `A007318(n)+val(A054582(n), 2)` -/
def P5656572974493017758.Spec : Prop :=
  ∀ n, P5656572974493017758.a n = A132108 n

end A132108

/-! ## A132108.P7183348095457768484

`floor(A007318(n)+log2(A130330(n)))`
-/

namespace A132108.P7183348095457768484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 n : ℝ) + Real.logb 2 (A130330 n : ℝ)⌋

end

end A132108.P7183348095457768484

namespace A132108

/-- `floor(A007318(n)+log2(A130330(n)))` -/
def P7183348095457768484.Spec : Prop :=
  ∀ n, P7183348095457768484.a n = A132108 n

end A132108

/-! ## A132108.P4904670122387688444

`ceil(A025581(n)+A109128(n)/2)`
-/

namespace A132108.P4904670122387688444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A025581 n : ℚ) + (A109128 n : ℚ) / 2⌉

end

end A132108.P4904670122387688444

namespace A132108

/-- `ceil(A025581(n)+A109128(n)/2)` -/
def P4904670122387688444.Spec : Prop :=
  ∀ n, P4904670122387688444.a n = A132108 n

end A132108

/-! ## A132108.P5209445952856849990

`ceil(A025581(n)+A124927(n)/2)`
-/

namespace A132108.P5209445952856849990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A025581 n : ℚ) + (A124927 n : ℚ) / 2⌉

end

end A132108.P5209445952856849990

namespace A132108

/-- `ceil(A025581(n)+A124927(n)/2)` -/
def P5209445952856849990.Spec : Prop :=
  ∀ n, P5209445952856849990.a n = A132108 n

end A132108

/-! ## A132108.P18104234227087498176

`A025581(n)+ceil(A134059(n)/3)`
-/

namespace A132108.P18104234227087498176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + ⌈(A134059 n : ℚ) / 3⌉

end

end A132108.P18104234227087498176

namespace A132108

/-- `A025581(n)+ceil(A134059(n)/3)` -/
def P18104234227087498176.Spec : Prop :=
  ∀ n, P18104234227087498176.a n = A132108 n

end A132108

/-!
# A132109: a(n) = (2^(n+1) + n^2 + n)/2.

The programs for A132109, the canonical program `A132109.P17757012863880222908` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132109 has offset 0).

The definition of A132109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132109.P17757012863880222908

`n*(n+1)/2+2^n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132109

/-- `n*(n+1)/2+2^n` -/
def P17757012863880222908.Spec : Prop :=
  ∀ n, P17757012863880222908.a n = (A132109 n : ℚ)

end A132109

/-! ## A132109.P9661067380738012709

`(2^(n+1)+n²+n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132109.P9661067380738012709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) + n ^ 2 + n : ℚ) / 2

end

end A132109.P9661067380738012709

namespace A132109

/-- `(2^(n+1)+n²+n)/2` -/
def P9661067380738012709.Spec : Prop :=
  ∀ n, P9661067380738012709.a n = (A132109 n : ℚ)

end A132109

/-! ## A132109.P6770816628738159403

`or(2^n, ∑[n])`
-/

namespace A132109.P6770816628738159403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132109.P6770816628738159403

namespace A132109

/-- `or(2^n, ∑[n])` -/
def P6770816628738159403.Spec : Prop :=
  ∀ n, (P6770816628738159403.a n : ℤ) = A132109 n

end A132109

/-! ## A132109.P5100369217364880801

`xor(2^n, ∑[n])`
-/

namespace A132109.P5100369217364880801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132109.P5100369217364880801

namespace A132109

/-- `xor(2^n, ∑[n])` -/
def P5100369217364880801.Spec : Prop :=
  ∀ n, (P5100369217364880801.a n : ℤ) = A132109 n

end A132109

/-! ## A132109.P15133235039784539836

`∑[∑[ogf((1-2x+x^2-x^3)/(1-3x+2x^2))]]`
-/

namespace A132109.P15133235039784539836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, -1] [1, -3, 2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P15133235039784539836

namespace A132109

/-- `∑[∑[ogf((1-2x+x^2-x^3)/(1-3x+2x^2))]]` -/
def P15133235039784539836.Spec : Prop :=
  ∀ n, P15133235039784539836.a n = A132109 n

end A132109

/-! ## A132109.P6969738864726294718

`∑[Δ[2*a(n-1)]+n]` with `a(0)=0, a(1)=1`
-/

namespace A132109.P6969738864726294718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P6969738864726294718

namespace A132109

/-- `∑[Δ[2*a(n-1)]+n]` -/
def P6969738864726294718.Spec : Prop :=
  ∀ n, P6969738864726294718.a n = A132109 n

end A132109

/-! ## A132109.P15719166779482209795

`∑[∑[2*a(n-1)-1]]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A132109.P15719166779482209795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  2 * f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P15719166779482209795

namespace A132109

/-- `∑[∑[2*a(n-1)-1]]` -/
def P15719166779482209795.Spec : Prop :=
  ∀ n, P15719166779482209795.a n = A132109 n

end A132109

/-! ## A132109.P16764302295842130378

`floor(2^n-∑[a(n-1)-1])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A132109.P16764302295842130378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P16764302295842130378

namespace A132109

/-- `floor(2^n-∑[a(n-1)-1])` -/
def P16764302295842130378.Spec : Prop :=
  ∀ n, P16764302295842130378.a n = A132109 n

end A132109

/-! ## A132109.P322903968749702286

`∑[∑[a(n-1)+a(n-1)-1]]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A132109.P322903968749702286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P322903968749702286

namespace A132109

/-- `∑[∑[a(n-1)+a(n-1)-1]]` -/
def P322903968749702286.Spec : Prop :=
  ∀ n, P322903968749702286.a n = A132109 n

end A132109

/-! ## A132109.P17118443977058804164

`∑[∑[a(n-1)-(1-a(n-1))]]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A132109.P17118443977058804164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  f2 (n - 1) - (1 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P17118443977058804164

namespace A132109

/-- `∑[∑[a(n-1)-(1-a(n-1))]]` -/
def P17118443977058804164.Spec : Prop :=
  ∀ n, P17118443977058804164.a n = A132109 n

end A132109

/-! ## A132109.P2998240440570905179

`∑[A288133(n+1)]`
-/

namespace A132109.P2998240440570905179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P2998240440570905179

namespace A132109

/-- `∑[A288133(n+1)]` -/
def P2998240440570905179.Spec : Prop :=
  ∀ n, P2998240440570905179.a n = A132109 n

end A132109

/-! ## A132109.P3792634198830080446

`∑[A052968(n)-1]`
-/

namespace A132109.P3792634198830080446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052968 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P3792634198830080446

namespace A132109

/-- `∑[A052968(n)-1]` -/
def P3792634198830080446.Spec : Prop :=
  ∀ n, P3792634198830080446.a n = A132109 n

end A132109

/-! ## A132109.P14043505970961849207

`∑[A011782(n)+n]`
-/

namespace A132109.P14043505970961849207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P14043505970961849207

namespace A132109

/-- `∑[A011782(n)+n]` -/
def P14043505970961849207.Spec : Prop :=
  ∀ n, P14043505970961849207.a n = A132109 n

end A132109

/-! ## A132109.P3593197761756281283

`∑[abs(A123344(n))+n]`
-/

namespace A132109.P3593197761756281283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123344 n| + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P3593197761756281283

namespace A132109

/-- `∑[abs(A123344(n))+n]` -/
def P3593197761756281283.Spec : Prop :=
  ∀ n, P3593197761756281283.a n = A132109 n

end A132109

/-! ## A132109.P16050028627751938516

`∑[∑[A034008(n)]+n]`
-/

namespace A132109.P16050028627751938516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P16050028627751938516

namespace A132109

/-- `∑[∑[A034008(n)]+n]` -/
def P16050028627751938516.Spec : Prop :=
  ∀ n, P16050028627751938516.a n = A132109 n

end A132109

/-! ## A132109.P6062061194376098205

`∑[Δ[A056469(n)]+n]`
-/

namespace A132109.P6062061194376098205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P6062061194376098205

namespace A132109

/-- `∑[Δ[A056469(n)]+n]` -/
def P6062061194376098205.Spec : Prop :=
  ∀ n, P6062061194376098205.a n = A132109 n

end A132109

/-! ## A132109.P586533436104615352

`∑[Δ[A131577(n)]+n]`
-/

namespace A132109.P586533436104615352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P586533436104615352

namespace A132109

/-- `∑[Δ[A131577(n)]+n]` -/
def P586533436104615352.Spec : Prop :=
  ∀ n, P586533436104615352.a n = A132109 n

end A132109

/-! ## A132109.P2816710741896600474

`∑[∑[A323227(n)-n]]`
-/

namespace A132109.P2816710741896600474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323227 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P2816710741896600474

namespace A132109

/-- `∑[∑[A323227(n)-n]]` -/
def P2816710741896600474.Spec : Prop :=
  ∀ n, P2816710741896600474.a n = A132109 n

end A132109

/-! ## A132109.P13603793782998161566

`∑[A288382(n+2)-1]`
-/

namespace A132109.P13603793782998161566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288382 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P13603793782998161566

namespace A132109

/-- `∑[A288382(n+2)-1]` -/
def P13603793782998161566.Spec : Prop :=
  ∀ n, P13603793782998161566.a n = A132109 n

end A132109

/-! ## A132109.P5078282571501323723

`∑[A166444(n+1)+n]`
-/

namespace A132109.P5078282571501323723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132109.P5078282571501323723

namespace A132109

/-- `∑[A166444(n+1)+n]` -/
def P5078282571501323723.Spec : Prop :=
  ∀ n, P5078282571501323723.a n = A132109 n

end A132109

/-!
# A132110: A007318 + A059268 - A000012 as infinite lower triangular matrices.

The programs for A132110, the canonical program `A132110.P9059509720305907983` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132110 has offset 0).

The definition of A132110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132110.P16960964665425855386

`2^(n-C(∑[char[∑[n]]], 2))+A007318(n)-1`
-/

namespace A132110.P16960964665425855386
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) + (A007318 n - 1 : ℚ)

end

end A132110.P16960964665425855386

namespace A132110

/-- `2^(n-C(∑[char[∑[n]]], 2))+A007318(n)-1` -/
def P16960964665425855386.Spec : Prop :=
  ∀ n, P16960964665425855386.a n = (A132110 n : ℚ)

end A132110

/-! ## A132110.P9059509720305907983

`A059268(n)+A014473(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A132110

/-- `A059268(n)+A014473(n)` -/
def P9059509720305907983.Spec : Prop :=
  ∀ n, P9059509720305907983.a n = A132110 n

theorem P9059509720305907983.correct : P9059509720305907983.Spec := by
  intro n
  simp only [A132110]

end A132110

/-! ## A132110.P4456068469956818550

`A007318(n)+A059268(n)-1`
-/

namespace A132110.P4456068469956818550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A059268 n - 1)

end

end A132110.P4456068469956818550

namespace A132110

/-- `A007318(n)+A059268(n)-1` -/
def P4456068469956818550.Spec : Prop :=
  ∀ n, P4456068469956818550.a n = A132110 n

theorem P4456068469956818550.correct : P4456068469956818550.Spec := by
  intro n
  simp only [A132110, Nat.add_sub_cancel, A132110.P4456068469956818550.a, A132110.P9059509720305907983.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A059268, A059268.P15217573790077737885.a, A018900, A018900.P2868698677378612256.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A132110

/-! ## A132110.P13894199268236126121

`A014473(n)+2^A002262(n)`
-/

namespace A132110.P13894199268236126121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014473 n : ℚ) + (2 : ℚ) ^ (A002262 n : ℤ)

end

end A132110.P13894199268236126121

namespace A132110

/-- `A014473(n)+2^A002262(n)` -/
def P13894199268236126121.Spec : Prop :=
  ∀ n, P13894199268236126121.a n = (A132110 n : ℚ)

end A132110

/-! ## A132110.P12621383764391691493

`A059268(n)+abs(A108086(n))-1`
-/

namespace A132110.P12621383764391691493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (|A108086 n| - 1)

end

end A132110.P12621383764391691493

namespace A132110

/-- `A059268(n)+abs(A108086(n))-1` -/
def P12621383764391691493.Spec : Prop :=
  ∀ n, P12621383764391691493.a n = A132110 n

end A132110

/-! ## A132110.P8792130814085084292

`A059268(n)+abs(A117440(n))-1`
-/

namespace A132110.P8792130814085084292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (|A117440 n| - 1)

end

end A132110.P8792130814085084292

namespace A132110

/-- `A059268(n)+abs(A117440(n))-1` -/
def P8792130814085084292.Spec : Prop :=
  ∀ n, P8792130814085084292.a n = A132110 n

end A132110

/-! ## A132110.P17321794867825262128

`A059268(n)+abs(A130595(n))-1`
-/

namespace A132110.P17321794867825262128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (|A130595 n| - 1)

end

end A132110.P17321794867825262128

namespace A132110

/-- `A059268(n)+abs(A130595(n))-1` -/
def P17321794867825262128.Spec : Prop :=
  ∀ n, P17321794867825262128.a n = A132110 n

end A132110

/-! ## A132110.P6966823361842688356

`sqrt(A008459(n))+A059268(n)-1`
-/

namespace A132110.P6966823361842688356
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) + (A059268 n - 1 : ℝ)

end

end A132110.P6966823361842688356

namespace A132110

/-- `sqrt(A008459(n))+A059268(n)-1` -/
def P6966823361842688356.Spec : Prop :=
  ∀ n, P6966823361842688356.a n = (A132110 n : ℝ)

end A132110

/-! ## A132110.P2518550068153339999

`A059268(n)+Δ[A102363(n)]-1`
-/

namespace A132110.P2518550068153339999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (f1 (n + 1) - f1 n - 1)

end

end A132110.P2518550068153339999

namespace A132110

/-- `A059268(n)+Δ[A102363(n)]-1` -/
def P2518550068153339999.Spec : Prop :=
  ∀ n, P2518550068153339999.a n = A132110 n

end A132110

/-! ## A132110.P9778733107156625342

`A007318(n)+A000225(A002262(n))`
-/

namespace A132110.P9778733107156625342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A000225 (A002262 n).toNat

end

end A132110.P9778733107156625342

namespace A132110

/-- `A007318(n)+A000225(A002262(n))` -/
def P9778733107156625342.Spec : Prop :=
  ∀ n, P9778733107156625342.a n = A132110 n

end A132110

/-! ## A132110.P11595495321248963491

`A007318(n)+∑{d}[A140531(n), #]`
-/

namespace A132110.P11595495321248963491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A132110.P11595495321248963491

namespace A132110

/-- `A007318(n)+∑{d}[A140531(n), #]` -/
def P11595495321248963491.Spec : Prop :=
  ∀ n, P11595495321248963491.a n = A132110 n

end A132110

/-! ## A132110.P1835714482282909002

`A035327(A059268(n))+A007318(n)`
-/

namespace A132110.P1835714482282909002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A059268 n).toNat + A007318 n

end

end A132110.P1835714482282909002

namespace A132110

/-- `A035327(A059268(n))+A007318(n)` -/
def P1835714482282909002.Spec : Prop :=
  ∀ n, P1835714482282909002.a n = A132110 n

end A132110

/-!
# A132111: Triangle read by rows: T(n,k) = n^2 + k*n + k^2, 0 <= k <= n.

The programs for A132111, the canonical program `A132111.P14495534047387877315` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132111 has offset 0).

The definition of A132111 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)²+col(n)*row(n)+col(n)²` (program `A132111.P14495534047387877315`, by `A132111.P14495534047387877315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132111.P14495534047387877315

`row(n)²+col(n)*row(n)+col(n)²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132111

/-- `row(n)²+col(n)*row(n)+col(n)²` -/
def P14495534047387877315.Spec : Prop :=
  ∀ n, (P14495534047387877315.a n : ℤ) = A132111 n

theorem P14495534047387877315.correct : P14495534047387877315.Spec := by
  intro n
  simp only [A132111]

end A132111

/-! ## A132111.P2755888125619068048

`(row(n)+col(n))²-col(n)*row(n)`
-/

namespace A132111.P2755888125619068048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) ^ 2 : ℤ) - (SequenceMachineLib.triCol n * SequenceMachineLib.triRow n : ℤ)

end

end A132111.P2755888125619068048

namespace A132111

/-- `(row(n)+col(n))²-col(n)*row(n)` -/
def P2755888125619068048.Spec : Prop :=
  ∀ n, P2755888125619068048.a n = A132111 n

theorem P2755888125619068048.correct : P2755888125619068048.Spec := by
  intro n
  simp only [A132111, Nat.add_sub_cancel, A132111.P2755888125619068048.a, A132111.P14495534047387877315.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A132111

/-! ## A132111.P3713491471241087217

`A079904(n)+A069011(n)`
-/

namespace A132111.P3713491471241087217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + A069011 n

end

end A132111.P3713491471241087217

namespace A132111

/-- `A079904(n)+A069011(n)` -/
def P3713491471241087217.Spec : Prop :=
  ∀ n, P3713491471241087217.a n = A132111 n

theorem P3713491471241087217.correct : P3713491471241087217.Spec := by
  intro n
  simp only [A132111, Nat.add_sub_cancel, A132111.P3713491471241087217.a, A132111.P14495534047387877315.a, A069011, A069011.P12730965949212328677.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132111

/-! ## A132111.P610863411743916838

`A143844(n)+A100345(n)`
-/

namespace A132111.P610863411743916838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A100345 n

end

end A132111.P610863411743916838

namespace A132111

/-- `A143844(n)+A100345(n)` -/
def P610863411743916838.Spec : Prop :=
  ∀ n, P610863411743916838.a n = A132111 n

theorem P610863411743916838.correct : P610863411743916838.Spec := by
  intro n
  simp only [A132111, Nat.add_sub_cancel, A132111.P610863411743916838.a, A132111.P14495534047387877315.a, A100345, A100345.P12526129573146748191.a, A143844, A143844.P13341456288637914710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132111

/-! ## A132111.P5660089781609403040

`A100345(n)+A002262(n)²`
-/

namespace A132111.P5660089781609403040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n + A002262 n ^ 2

end

end A132111.P5660089781609403040

namespace A132111

/-- `A100345(n)+A002262(n)²` -/
def P5660089781609403040.Spec : Prop :=
  ∀ n, P5660089781609403040.a n = A132111 n

theorem P5660089781609403040.correct : P5660089781609403040.Spec := by
  intro n
  simp only [A132111, Nat.add_sub_cancel, A132111.P5660089781609403040.a, A132111.P14495534047387877315.a, A002262, A002262.P17823619022233514403.a, A100345, A100345.P12526129573146748191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132111

/-! ## A132111.P9533037584978639974

`A051162(n)²-A079904(n)`
-/

namespace A132111.P9533037584978639974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n ^ 2 - A079904 n

end

end A132111.P9533037584978639974

namespace A132111

/-- `A051162(n)²-A079904(n)` -/
def P9533037584978639974.Spec : Prop :=
  ∀ n, P9533037584978639974.a n = A132111 n

theorem P9533037584978639974.correct : P9533037584978639974.Spec := by
  intro n
  simp only [A132111, Nat.add_sub_cancel, A132111.P9533037584978639974.a, A132111.P14495534047387877315.a, A051162, A051162.P4484969187050632534.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132111

/-! ## A132111.P13491957184240588815

`A073254(n)+2*A079904(n)`
-/

namespace A132111.P13491957184240588815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n + 2 * A079904 n

end

end A132111.P13491957184240588815

namespace A132111

/-- `A073254(n)+2*A079904(n)` -/
def P13491957184240588815.Spec : Prop :=
  ∀ n, P13491957184240588815.a n = A132111 n

theorem P13491957184240588815.correct : P13491957184240588815.Spec := by
  intro n
  simp only [A132111, Nat.add_sub_cancel, A132111.P13491957184240588815.a, A132111.P14495534047387877315.a, A073254, A073254.P5875854829665146571.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132111

/-! ## A132111.P1461323047393370814

`A281385(n)+2*A143844(n)`
-/

namespace A132111.P1461323047393370814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n + 2 * A143844 n

end

end A132111.P1461323047393370814

namespace A132111

/-- `A281385(n)+2*A143844(n)` -/
def P1461323047393370814.Spec : Prop :=
  ∀ n, P1461323047393370814.a n = A132111 n

theorem P1461323047393370814.correct : P1461323047393370814.Spec := by
  intro n
  simp only [A132111, Nat.add_sub_cancel, A132111.P1461323047393370814.a, A132111.P14495534047387877315.a, A143844, A143844.P13341456288637914710.a, A281385, A281385.P1365053129118161988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132111

/-! ## A132111.P16922488507631506556

`2*A069011(n)-A073254(n)`
-/

namespace A132111.P16922488507631506556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069011 n - A073254 n

end

end A132111.P16922488507631506556

namespace A132111

/-- `2*A069011(n)-A073254(n)` -/
def P16922488507631506556.Spec : Prop :=
  ∀ n, P16922488507631506556.a n = A132111 n

theorem P16922488507631506556.correct : P16922488507631506556.Spec := by
  intro n
  simp only [A132111, Nat.add_sub_cancel, A132111.P16922488507631506556.a, A132111.P14495534047387877315.a, A069011, A069011.P12730965949212328677.a, A073254, A073254.P5875854829665146571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132111

/-! ## A132111.P17977414096571344103

`(A069011(n)+A051162(n)²)/2`
-/

namespace A132111.P17977414096571344103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069011 n + A051162 n ^ 2 : ℚ) / 2

end

end A132111.P17977414096571344103

namespace A132111

/-- `(A069011(n)+A051162(n)²)/2` -/
def P17977414096571344103.Spec : Prop :=
  ∀ n, P17977414096571344103.a n = (A132111 n : ℚ)

theorem P17977414096571344103.correct : P17977414096571344103.Spec := by
  intro n
  simp only [A132111, Nat.add_sub_cancel, A132111.P17977414096571344103.a, A132111.P14495534047387877315.a, A051162, A051162.P4484969187050632534.a, A069011, A069011.P12730965949212328677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132111

/-! ## A132111.P15608124660575910233

`A182491(n+1)-A131421(n+1)`
-/

namespace A132111.P15608124660575910233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182491 (n + 1) - A131421 (n + 1)

end

end A132111.P15608124660575910233

namespace A132111

/-- `A182491(n+1)-A131421(n+1)` -/
def P15608124660575910233.Spec : Prop :=
  ∀ n, P15608124660575910233.a n = A132111 n

theorem P15608124660575910233.correct : P15608124660575910233.Spec := by
  intro n
  simp only [A132111, Nat.add_sub_cancel, A132111.P15608124660575910233.a, A132111.P14495534047387877315.a, A131421, A131421.P16745487656165401881.a, A182491, A182491.P13289934478675392419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132111

/-! ## A132111.P17845924803822090662

`A051162(n)²+1-A076110(n+1)`
-/

namespace A132111.P17845924803822090662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n ^ 2 + (1 - A076110 (n + 1))

end

end A132111.P17845924803822090662

namespace A132111

/-- `A051162(n)²+1-A076110(n+1)` -/
def P17845924803822090662.Spec : Prop :=
  ∀ n, P17845924803822090662.a n = A132111 n

theorem P17845924803822090662.correct : P17845924803822090662.Spec := by
  intro n
  simp only [A132111, Nat.add_sub_cancel, A132111.P17845924803822090662.a, A132111.P14495534047387877315.a, A051162, A051162.P4484969187050632534.a, A076110, A076110.P1795246513683719096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132111

/-! ## A132111.P16741997734537706730

`A051162(n)²-(A144204(n+1)+1)`
-/

namespace A132111.P16741997734537706730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n ^ 2 - (A144204 (n + 1) + 1)

end

end A132111.P16741997734537706730

namespace A132111

/-- `A051162(n)²-(A144204(n+1)+1)` -/
def P16741997734537706730.Spec : Prop :=
  ∀ n, P16741997734537706730.a n = A132111 n

theorem P16741997734537706730.correct : P16741997734537706730.Spec := by
  intro n
  simp only [A132111, Nat.add_sub_cancel, A132111.P16741997734537706730.a, A132111.P14495534047387877315.a, A051162, A051162.P4484969187050632534.a, A144204, A144204.P8638300400995235908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132111

/-! ## A132111.P9845757549819235999

`(1-A094727(n+1))²-A079904(n)`
-/

namespace A132111.P9845757549819235999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A094727 (n + 1)) ^ 2 - A079904 n

end

end A132111.P9845757549819235999

namespace A132111

/-- `(1-A094727(n+1))²-A079904(n)` -/
def P9845757549819235999.Spec : Prop :=
  ∀ n, P9845757549819235999.a n = A132111 n

theorem P9845757549819235999.correct : P9845757549819235999.Spec := by
  intro n
  simp only [A132111, Nat.add_sub_cancel, A132111.P9845757549819235999.a, A132111.P14495534047387877315.a, A079904, A079904.P681072687927778273.a, A094727, A094727.P1041695477673985807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132111

/-! ## A132111.P4725163425206081818

`(2-A108872(n+1))²-A079904(n)`
-/

namespace A132111.P4725163425206081818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A108872 (n + 1)) ^ 2 - A079904 n

end

end A132111.P4725163425206081818

namespace A132111

/-- `(2-A108872(n+1))²-A079904(n)` -/
def P4725163425206081818.Spec : Prop :=
  ∀ n, P4725163425206081818.a n = A132111 n

end A132111

/-! ## A132111.P11132071753981799968

`A069011(n)+A002262(n)*A003056(n)`
-/

namespace A132111.P11132071753981799968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n + A002262 n * A003056 n

end

end A132111.P11132071753981799968

namespace A132111

/-- `A069011(n)+A002262(n)*A003056(n)` -/
def P11132071753981799968.Spec : Prop :=
  ∀ n, P11132071753981799968.a n = A132111 n

end A132111

/-! ## A132111.P16509592281145713316

`A002262(n)²+A003056(n)*A051162(n)`
-/

namespace A132111.P16509592281145713316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + A003056 n * A051162 n

end

end A132111.P16509592281145713316

namespace A132111

/-- `A002262(n)²+A003056(n)*A051162(n)` -/
def P16509592281145713316.Spec : Prop :=
  ∀ n, P16509592281145713316.a n = A132111 n

end A132111

/-! ## A132111.P13439984916446352568

`A002262(n)²+A003056(n)*A134478(n)`
-/

namespace A132111.P13439984916446352568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + A003056 n * A134478 n

end

end A132111.P13439984916446352568

namespace A132111

/-- `A002262(n)²+A003056(n)*A134478(n)` -/
def P13439984916446352568.Spec : Prop :=
  ∀ n, P13439984916446352568.a n = A132111 n

end A132111

/-! ## A132111.P3034650853847739837

`A051162(n)²-(A069011(n)-A073254(n))`
-/

namespace A132111.P3034650853847739837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n ^ 2 - (A069011 n - A073254 n)

end

end A132111.P3034650853847739837

namespace A132111

/-- `A051162(n)²-(A069011(n)-A073254(n))` -/
def P3034650853847739837.Spec : Prop :=
  ∀ n, P3034650853847739837.a n = A132111 n

theorem P3034650853847739837.correct : P3034650853847739837.Spec := by
  intro n
  simp only [A132111, Nat.add_sub_cancel, A132111.P3034650853847739837.a, A132111.P14495534047387877315.a, A051162, A051162.P4484969187050632534.a, A069011, A069011.P12730965949212328677.a, A073254, A073254.P5875854829665146571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132111

/-! ## A132111.P17291157563320685804

`(A223544(n+1)-A079904(n))²-A079904(n)`
-/

namespace A132111.P17291157563320685804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A223544 (n + 1) - A079904 n) ^ 2 - A079904 n

end

end A132111.P17291157563320685804

namespace A132111

/-- `(A223544(n+1)-A079904(n))²-A079904(n)` -/
def P17291157563320685804.Spec : Prop :=
  ∀ n, P17291157563320685804.a n = A132111 n

theorem P17291157563320685804.correct : P17291157563320685804.Spec := by
  intro n
  simp only [A132111, Nat.add_sub_cancel, A132111.P17291157563320685804.a, A132111.P14495534047387877315.a, A079904, A079904.P681072687927778273.a, A223544, A223544.P8917817385832941990.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132111

/-!
# A132112: a(n) = n*(n+1)*(11*n+1)/6.

The programs for A132112, the canonical program `A132112.P1760662066795334359` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132112 has offset 0).

The definition of A132112 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(11*n+1)/6` (program `A132112.P13105052180171548977`, by `A132112.P13105052180171548977.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132112.P13105052180171548977

`n*(n+1)*(11*n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132112.P13105052180171548977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (11 * n + 1) : ℚ) / 6

end

end A132112.P13105052180171548977

namespace A132112

/-- `n*(n+1)*(11*n+1)/6` -/
def P13105052180171548977.Spec : Prop :=
  ∀ n, P13105052180171548977.a n = (A132112 n : ℚ)

theorem P13105052180171548977.correct : P13105052180171548977.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A132112, Nat.add_sub_cancel, A132112.P13105052180171548977.a, A132112.P1760662066795334359.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A132112, Nat.add_sub_cancel, A132112.P13105052180171548977.a, A132112.P1760662066795334359.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132112

/-! ## A132112.P1760662066795334359

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=23, a(3)=68`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132112

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1760662066795334359.Spec : Prop :=
  ∀ n, P1760662066795334359.a n = A132112 n

theorem P1760662066795334359.correct : P1760662066795334359.Spec := by
  intro n
  simp only [A132112]

end A132112

/-! ## A132112.P6336051975395718991

`∑[C(3*n, 2)+n²]`
-/

namespace A132112.P6336051975395718991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2 + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132112.P6336051975395718991

namespace A132112

/-- `∑[C(3*n, 2)+n²]` -/
def P6336051975395718991.Spec : Prop :=
  ∀ n, (P6336051975395718991.a n : ℤ) = A132112 n

end A132112

/-! ## A132112.P9273487027051843479

`∑[∑[a(n-1)+11]]` with `a(0)=0, a(1)=4`
-/

namespace A132112.P9273487027051843479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132112.P9273487027051843479

namespace A132112

/-- `∑[∑[a(n-1)+11]]` -/
def P9273487027051843479.Spec : Prop :=
  ∀ n, (P9273487027051843479.a n : ℤ) = A132112 n

end A132112

/-! ## A132112.P1669159580186532304

`∑[C(11*n, 2)/11-n]`
-/

namespace A132112.P1669159580186532304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (11 * n) 2 : ℚ) / 11 - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132112.P1669159580186532304

namespace A132112

/-- `∑[C(11*n, 2)/11-n]` -/
def P1669159580186532304.Spec : Prop :=
  ∀ n, P1669159580186532304.a n = (A132112 n : ℚ)

end A132112

/-! ## A132112.P9877360531343909637

`∑[∑[ogf((4x+7x^2)/(1-2x+x^2))]]`
-/

namespace A132112.P9877360531343909637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 7] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132112.P9877360531343909637

namespace A132112

/-- `∑[∑[ogf((4x+7x^2)/(1-2x+x^2))]]` -/
def P9877360531343909637.Spec : Prop :=
  ∀ n, P9877360531343909637.a n = A132112 n

end A132112

/-! ## A132112.P12944180697672230571

`∑[2*C(2*n, 2)]+(n+1)*∑[n]`
-/

namespace A132112.P12944180697672230571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A132112.P12944180697672230571

namespace A132112

/-- `∑[2*C(2*n, 2)]+(n+1)*∑[n]` -/
def P12944180697672230571.Spec : Prop :=
  ∀ n, (P12944180697672230571.a n : ℤ) = A132112 n

end A132112

/-! ## A132112.P14133445428896317002

`A215646(n)+n²`
-/

namespace A132112.P14133445428896317002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215646 n + (n ^ 2 : ℤ)

end

end A132112.P14133445428896317002

namespace A132112

/-- `A215646(n)+n²` -/
def P14133445428896317002.Spec : Prop :=
  ∀ n, P14133445428896317002.a n = A132112 n

end A132112

/-! ## A132112.P5710590371581114901

`∑[A226492(n)+n]`
-/

namespace A132112.P5710590371581114901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132112.P5710590371581114901

namespace A132112

/-- `∑[A226492(n)+n]` -/
def P5710590371581114901.Spec : Prop :=
  ∀ n, P5710590371581114901.a n = A132112 n

end A132112

/-! ## A132112.P14538650030693937885

`∑[A022268(n)-n]`
-/

namespace A132112.P14538650030693937885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132112.P14538650030693937885

namespace A132112

/-- `∑[A022268(n)-n]` -/
def P14538650030693937885.Spec : Prop :=
  ∀ n, P14538650030693937885.a n = A132112 n

end A132112

/-! ## A132112.P15801021241487294536

`∑[A062741(n)+n²]`
-/

namespace A132112.P15801021241487294536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132112.P15801021241487294536

namespace A132112

/-- `∑[A062741(n)+n²]` -/
def P15801021241487294536.Spec : Prop :=
  ∀ n, P15801021241487294536.a n = A132112 n

end A132112

/-! ## A132112.P1788428092936197267

`∑[A186030(n)-n²]`
-/

namespace A132112.P1788428092936197267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186030 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132112.P1788428092936197267

namespace A132112

/-- `∑[A186030(n)-n²]` -/
def P1788428092936197267.Spec : Prop :=
  ∀ n, P1788428092936197267.a n = A132112 n

end A132112

/-! ## A132112.P13711023603041839432

`A257093(n)-∑[n²]`
-/

namespace A132112.P13711023603041839432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257093 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A132112.P13711023603041839432

namespace A132112

/-- `A257093(n)-∑[n²]` -/
def P13711023603041839432.Spec : Prop :=
  ∀ n, P13711023603041839432.a n = A132112 n

end A132112

/-! ## A132112.P8667690108445064737

`∑[A049452(n)-∑[n]]`
-/

namespace A132112.P8667690108445064737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132112.P8667690108445064737

namespace A132112

/-- `∑[A049452(n)-∑[n]]` -/
def P8667690108445064737.Spec : Prop :=
  ∀ n, P8667690108445064737.a n = A132112 n

end A132112

/-! ## A132112.P3262306828119806552

`A135713(n)-∑[∑[n]]`
-/

namespace A132112.P3262306828119806552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135713 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A132112.P3262306828119806552

namespace A132112

/-- `A135713(n)-∑[∑[n]]` -/
def P3262306828119806552.Spec : Prop :=
  ∀ n, P3262306828119806552.a n = A132112 n

end A132112

/-! ## A132112.P5290474874090928946

`∑[A180223(n)+2*n]`
-/

namespace A132112.P5290474874090928946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132112.P5290474874090928946

namespace A132112

/-- `∑[A180223(n)+2*n]` -/
def P5290474874090928946.Spec : Prop :=
  ∀ n, P5290474874090928946.a n = A132112 n

end A132112

/-! ## A132112.P13343053414790742939

`∑[A022269(n)-2*n]`
-/

namespace A132112.P13343053414790742939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022269 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132112.P13343053414790742939

namespace A132112

/-- `∑[A022269(n)-2*n]` -/
def P13343053414790742939.Spec : Prop :=
  ∀ n, P13343053414790742939.a n = A132112 n

end A132112

/-! ## A132112.P17457172745812008131

`A132124(n)+n*∑[n]`
-/

namespace A132112.P17457172745812008131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132124 n + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A132112.P17457172745812008131

namespace A132112

/-- `A132124(n)+n*∑[n]` -/
def P17457172745812008131.Spec : Prop :=
  ∀ n, P17457172745812008131.a n = A132112 n

end A132112

/-! ## A132112.P2879708804865778734

`A050409(n)-n*∑[n]`
-/

namespace A132112.P2879708804865778734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 n - ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A132112.P2879708804865778734

namespace A132112

/-- `A050409(n)-n*∑[n]` -/
def P2879708804865778734.Spec : Prop :=
  ∀ n, P2879708804865778734.a n = A132112 n

end A132112

/-! ## A132112.P7268786373095847265

`A007587(n)+A006503(n)`
-/

namespace A132112.P7268786373095847265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007587 n + A006503 n

end

end A132112.P7268786373095847265

namespace A132112

/-- `A007587(n)+A006503(n)` -/
def P7268786373095847265.Spec : Prop :=
  ∀ n, P7268786373095847265.a n = A132112 n

end A132112

/-!
# A132113: Multiply previous term by 8 and reverse.

The programs for A132113, there is no canonical definition to state claims against.
-/

/-! ## A132113.P14150645216045931840

`A248423(2*a(n-1))` with `a(0)=1`
-/

namespace A132113.P14150645216045931840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248423 (2 * a (n - 1)).toNat

end

end A132113.P14150645216045931840

/-! ## A132113.P15098912691613550546

`A004086(8*a(n-1))` with `a(0)=1`
-/

namespace A132113.P15098912691613550546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (8 * a (n - 1)).toNat

end

end A132113.P15098912691613550546

/-!
# A132114: Multiply previous term by 7 and reverse.

The programs for A132114, there is no canonical definition to state claims against.
-/

/-! ## A132114.P16862891261578906261

`A004086(7*a(n-1))` with `a(0)=1`
-/

namespace A132114.P16862891261578906261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (7 * a (n - 1)).toNat

end

end A132114.P16862891261578906261

/-! ## A132114.P17055612917576382542

`A004086(A008589(a(n-1)))` with `a(0)=1`
-/

namespace A132114.P17055612917576382542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (A008589 (a (n - 1)).toNat).toNat

end

end A132114.P17055612917576382542

/-!
# A132115: Where records occur in A051445.

The programs for A132115, there is no canonical definition to state claims against.
-/

/-! ## A132115.P4497654199646369114

`A000010(A132012(n+1))/2`
-/

namespace A132115.P4497654199646369114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A132012 (n + 1)).toNat : ℚ) / 2

end

end A132115.P4497654199646369114

/-! ## A132115.P3649161895481443170

`A000010(record[A002181(n+2)])/2`
-/

namespace A132115.P3649161895481443170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A132115.P3649161895481443170

/-! ## A132115.P3050031070526155243

`A000010(record[A006511(n+2)-A196079(n+2)])/2`
-/

namespace A132115.P3050031070526155243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (n + 2) - A196079 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A132115.P3050031070526155243

/-! ## A132115.P10809885435480908367

`A000010(record[A051445(n+1)])/2`
-/

namespace A132115.P10809885435480908367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A132115.P10809885435480908367

/-! ## A132115.P2030178984122486305

`A349136(A132012(n+1))`
-/

namespace A132115.P2030178984122486305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 (A132012 (n + 1)).toNat

end

end A132115.P2030178984122486305

/-! ## A132115.P10116609582375218061

`A349136(record[A051445(n+1)])`
-/

namespace A132115.P10116609582375218061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A132115.P10116609582375218061

/-! ## A132115.P7287399605674969506

`A349136(record[A002181(n+2)])`
-/

namespace A132115.P7287399605674969506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A132115.P7287399605674969506

/-! ## A132115.P7364152466275922325

`A349444(record[A002181(n+2)])`
-/

namespace A132115.P7364152466275922325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A132115.P7364152466275922325

/-! ## A132115.P12992248906551715091

`A000010(record[A049283(n+2)])/2`
-/

namespace A132115.P12992248906551715091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A132115.P12992248906551715091

/-! ## A132115.P15574868059602387618

`A004525(A000010(record[A051445(n+1)]))`
-/

namespace A132115.P15574868059602387618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A132115.P15574868059602387618

/-!
# A132117: Binomial transform of [1, 7, 17, 17, 6, 0, 0, 0, ...].

The programs for A132117, the canonical program `A132117.P2703099555646898340` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132117 has offset 1).

The definition of A132117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132117.P2703099555646898340

`(n+1)*(n+2)*(3*(n+1)²+n+1+2)/12`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132117

/-- `(n+1)*(n+2)*(3*(n+1)²+n+1+2)/12` -/
def P2703099555646898340.Spec : Prop :=
  ∀ n, P2703099555646898340.a n = (A132117 (n + 1) : ℚ)

end A132117

/-! ## A132117.P18111113797795035169

`C(n+2, 2)²-∑[∑[n]]`
-/

namespace A132117.P18111113797795035169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A132117.P18111113797795035169

namespace A132117

/-- `C(n+2, 2)²-∑[∑[n]]` -/
def P18111113797795035169.Spec : Prop :=
  ∀ n, P18111113797795035169.a n = A132117 (n + 1)

end A132117

/-! ## A132117.P3128783969193362711

`floor(∑[∑[∑[a(n-1)+6]]])` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A132117.P3128783969193362711
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132117.P3128783969193362711

namespace A132117

/-- `floor(∑[∑[∑[a(n-1)+6]]])` -/
def P3128783969193362711.Spec : Prop :=
  ∀ n, (P3128783969193362711.a n : ℤ) = A132117 (n + 1)

end A132117

/-! ## A132117.P2781874587573419342

`∑[a(n-1)+1]²-∑[∑[n]]` with `a(0)=1`
-/

namespace A132117.P2781874587573419342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A132117.P2781874587573419342

namespace A132117

/-- `∑[a(n-1)+1]²-∑[∑[n]]` -/
def P2781874587573419342.Spec : Prop :=
  ∀ n, P2781874587573419342.a n = A132117 (n + 1)

end A132117

/-! ## A132117.P9799722913364259872

`∑[(n+1)*∑[2*n]]+C(n+3, 3)`
-/

namespace A132117.P9799722913364259872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 3) 3

end

end A132117.P9799722913364259872

namespace A132117

/-- `∑[(n+1)*∑[2*n]]+C(n+3, 3)` -/
def P9799722913364259872.Spec : Prop :=
  ∀ n, (P9799722913364259872.a n : ℤ) = A132117 (n + 1)

end A132117

/-! ## A132117.P16247216441756453813

`∑[A081436(n)]`
-/

namespace A132117.P16247216441756453813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132117.P16247216441756453813

namespace A132117

/-- `∑[A081436(n)]` -/
def P16247216441756453813.Spec : Prop :=
  ∀ n, P16247216441756453813.a n = A132117 (n + 1)

end A132117

/-! ## A132117.P11323437167527028358

`∑[∑[A056109(n)]]`
-/

namespace A132117.P11323437167527028358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132117.P11323437167527028358

namespace A132117

/-- `∑[∑[A056109(n)]]` -/
def P11323437167527028358.Spec : Prop :=
  ∀ n, P11323437167527028358.a n = A132117 (n + 1)

end A132117

/-! ## A132117.P13198939710507098421

`∑[A363288(n+1)-n]`
-/

namespace A132117.P13198939710507098421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363288 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132117.P13198939710507098421

namespace A132117

/-- `∑[A363288(n+1)-n]` -/
def P13198939710507098421.Spec : Prop :=
  ∀ n, P13198939710507098421.a n = A132117 (n + 1)

end A132117

/-! ## A132117.P405428299465796331

`∑[A005891(n)]+∑[n]²`
-/

namespace A132117.P405428299465796331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A132117.P405428299465796331

namespace A132117

/-- `∑[A005891(n)]+∑[n]²` -/
def P405428299465796331.Spec : Prop :=
  ∀ n, P405428299465796331.a n = A132117 (n + 1)

end A132117

/-! ## A132117.P14991819767701322926

`sqrt(A059977(n))-∑[∑[n]]`
-/

namespace A132117.P14991819767701322926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059977 n : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)

end

end A132117.P14991819767701322926

namespace A132117

/-- `sqrt(A059977(n))-∑[∑[n]]` -/
def P14991819767701322926.Spec : Prop :=
  ∀ n, P14991819767701322926.a n = (A132117 (n + 1) : ℝ)

end A132117

/-! ## A132117.P6561603006310796417

`A039623(n+1)+∑[n²]`
-/

namespace A132117.P6561603006310796417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039623 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A132117.P6561603006310796417

namespace A132117

/-- `A039623(n+1)+∑[n²]` -/
def P6561603006310796417.Spec : Prop :=
  ∀ n, P6561603006310796417.a n = A132117 (n + 1)

end A132117

/-! ## A132117.P16220852048385434178

`∑[A059270(n)+(n+1)²]`
-/

namespace A132117.P16220852048385434178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132117.P16220852048385434178

namespace A132117

/-- `∑[A059270(n)+(n+1)²]` -/
def P16220852048385434178.Spec : Prop :=
  ∀ n, P16220852048385434178.a n = A132117 (n + 1)

end A132117

/-! ## A132117.P15430168735619939152

`∑[A063488(n+1)+n²]`
-/

namespace A132117.P15430168735619939152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063488 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132117.P15430168735619939152

namespace A132117

/-- `∑[A063488(n+1)+n²]` -/
def P15430168735619939152.Spec : Prop :=
  ∀ n, P15430168735619939152.a n = A132117 (n + 1)

end A132117

/-! ## A132117.P4732075797526843788

`∑[n+1]²-A000292(n)`
-/

namespace A132117.P4732075797526843788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A000292 n

end

end A132117.P4732075797526843788

namespace A132117

/-- `∑[n+1]²-A000292(n)` -/
def P4732075797526843788.Spec : Prop :=
  ∀ n, P4732075797526843788.a n = A132117 (n + 1)

end A132117

/-! ## A132117.P484896437403614517

`A254407(n)+∑[1-n]²`
-/

namespace A132117.P484896437403614517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254407 n + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A132117.P484896437403614517

namespace A132117

/-- `A254407(n)+∑[1-n]²` -/
def P484896437403614517.Spec : Prop :=
  ∀ n, P484896437403614517.a n = A132117 (n + 1)

end A132117

/-! ## A132117.P6676795517491825025

`A006011(n+1)+∑[(n+1)²]`
-/

namespace A132117.P6676795517491825025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A132117.P6676795517491825025

namespace A132117

/-- `A006011(n+1)+∑[(n+1)²]` -/
def P6676795517491825025.Spec : Prop :=
  ∀ n, P6676795517491825025.a n = A132117 (n + 1)

end A132117

/-! ## A132117.P3351326576488305953

`∑[A085786(n+1)-(n+1)²]`
-/

namespace A132117.P3351326576488305953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085786 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132117.P3351326576488305953

namespace A132117

/-- `∑[A085786(n+1)-(n+1)²]` -/
def P3351326576488305953.Spec : Prop :=
  ∀ n, P3351326576488305953.a n = A132117 (n + 1)

end A132117

/-! ## A132117.P5192616878428119556

`A176060(n+1)-∑[(n+1)²]`
-/

namespace A132117.P5192616878428119556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176060 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A132117.P5192616878428119556

namespace A132117

/-- `A176060(n+1)-∑[(n+1)²]` -/
def P5192616878428119556.Spec : Prop :=
  ∀ n, P5192616878428119556.a n = A132117 (n + 1)

end A132117

/-! ## A132117.P15407476962670497877

`A154323(n)+A092185(n)`
-/

namespace A132117.P15407476962670497877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n + A092185 n

end

end A132117.P15407476962670497877

namespace A132117

/-- `A154323(n)+A092185(n)` -/
def P15407476962670497877.Spec : Prop :=
  ∀ n, P15407476962670497877.a n = A132117 (n + 1)

end A132117

/-! ## A132117.P3945863373922355925

`A014820(n)-A002415(n)`
-/

namespace A132117.P3945863373922355925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n - A002415 n

end

end A132117.P3945863373922355925

namespace A132117

/-- `A014820(n)-A002415(n)` -/
def P3945863373922355925.Spec : Prop :=
  ∀ n, P3945863373922355925.a n = A132117 (n + 1)

end A132117

/-!
# A132118: Triangle read by rows: T(n,k) = n*(n-1)/2 + 2*k - 1.

The programs for A132118, the canonical program `A132118.P1363662735479864841` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132118 has offset 1).

The definition of A132118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132118.P1363662735479864841

`(row(n)+1)*row(n)/2+2*(col(n)+1)-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132118

/-- `(row(n)+1)*row(n)/2+2*(col(n)+1)-1` -/
def P1363662735479864841.Spec : Prop :=
  ∀ n, P1363662735479864841.a n = (A132118 (n + 1) : ℚ)

end A132118

/-! ## A132118.P14729130324012643246

`n+col(n)+1`
-/

namespace A132118.P14729130324012643246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + (SequenceMachineLib.triCol n + 1)

end

end A132118.P14729130324012643246

namespace A132118

/-- `n+col(n)+1` -/
def P14729130324012643246.Spec : Prop :=
  ∀ n, (P14729130324012643246.a n : ℤ) = A132118 (n + 1)

end A132118

/-! ## A132118.P4968499646170226646

`2*n+1-C(∑[char[∑[n]]], 2)`
-/

namespace A132118.P4968499646170226646
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))

end

end A132118.P4968499646170226646

namespace A132118

/-- `2*n+1-C(∑[char[∑[n]]], 2)` -/
def P4968499646170226646.Spec : Prop :=
  ∀ n, P4968499646170226646.a n = A132118 (n + 1)

end A132118

/-! ## A132118.P8104002209412350779

`2*n-(C(∑[char[∑[n]]], 2)-1)`
-/

namespace A132118.P8104002209412350779
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - 1)

end

end A132118.P8104002209412350779

namespace A132118

/-- `2*n-(C(∑[char[∑[n]]], 2)-1)` -/
def P8104002209412350779.Spec : Prop :=
  ∀ n, P8104002209412350779.a n = A132118 (n + 1)

end A132118

/-! ## A132118.P15971183127652910446

`1-C(∑[char[∑[n]]], 2)+n+n`
-/

namespace A132118.P15971183127652910446
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) + (n : ℤ)

end

end A132118.P15971183127652910446

namespace A132118

/-- `1-C(∑[char[∑[n]]], 2)+n+n` -/
def P15971183127652910446.Spec : Prop :=
  ∀ n, P15971183127652910446.a n = A132118 (n + 1)

end A132118

/-! ## A132118.P17488280993153119210

`n+1-C(round(sqrt(2*n+1)), 2)+n`
-/

namespace A132118.P17488280993153119210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat 2 : ℤ) + (n : ℤ)

end

end A132118.P17488280993153119210

namespace A132118

/-- `n+1-C(round(sqrt(2*n+1)), 2)+n` -/
def P17488280993153119210.Spec : Prop :=
  ∀ n, P17488280993153119210.a n = A132118 (n + 1)

end A132118

/-! ## A132118.P16500233219325578732

`(n+1)%(C(∑[char[∑[n]]], 2)+1)+1+n`
-/

namespace A132118.P16500233219325578732
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1) + 1 + n

end

end A132118.P16500233219325578732

namespace A132118

/-- `(n+1)%(C(∑[char[∑[n]]], 2)+1)+1+n` -/
def P16500233219325578732.Spec : Prop :=
  ∀ n, (P16500233219325578732.a n : ℤ) = A132118 (n + 1)

end A132118

/-! ## A132118.P2304914454726915230

`2*n-comp[C(comp[∑[n]]-n, 2)+n]+1+n`
-/

namespace A132118.P2304914454726915230
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + 1 + (n : ℤ)

end

end A132118.P2304914454726915230

namespace A132118

/-- `2*n-comp[C(comp[∑[n]]-n, 2)+n]+1+n` -/
def P2304914454726915230.Spec : Prop :=
  ∀ n, P2304914454726915230.a n = A132118 (n + 1)

end A132118

/-! ## A132118.P2880824693812758185

`A002260(n+1)+n`
-/

namespace A132118.P2880824693812758185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (n : ℤ)

end

end A132118.P2880824693812758185

namespace A132118

/-- `A002260(n+1)+n` -/
def P2880824693812758185.Spec : Prop :=
  ∀ n, P2880824693812758185.a n = A132118 (n + 1)

end A132118

/-! ## A132118.P2767579044502130903

`A002262(n)+1+n`
-/

namespace A132118.P2767579044502130903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + 1 + (n : ℤ)

end

end A132118.P2767579044502130903

namespace A132118

/-- `A002262(n)+1+n` -/
def P2767579044502130903.Spec : Prop :=
  ∀ n, P2767579044502130903.a n = A132118 (n + 1)

end A132118

/-! ## A132118.P13162827556254672750

`Δ[n²]-A057944(n)`
-/

namespace A132118.P13162827556254672750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A057944 n

end

end A132118.P13162827556254672750

namespace A132118

/-- `Δ[n²]-A057944(n)` -/
def P13162827556254672750.Spec : Prop :=
  ∀ n, P13162827556254672750.a n = A132118 (n + 1)

end A132118

/-! ## A132118.P15314836680617588921

`abs(A140756(n+1))+n`
-/

namespace A132118.P15314836680617588921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)| + (n : ℤ)

end

end A132118.P15314836680617588921

namespace A132118

/-- `abs(A140756(n+1))+n` -/
def P15314836680617588921.Spec : Prop :=
  ∀ n, P15314836680617588921.a n = A132118 (n + 1)

end A132118

/-! ## A132118.P7994830109899627230

`sqrt(A133819(n+1))+n`
-/

namespace A132118.P7994830109899627230
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) + (n : ℝ)

end

end A132118.P7994830109899627230

namespace A132118

/-- `sqrt(A133819(n+1))+n` -/
def P7994830109899627230.Spec : Prop :=
  ∀ n, P7994830109899627230.a n = (A132118 (n + 1) : ℝ)

end A132118

/-! ## A132118.P13786178238963231541

`sqrt(A143844(n))+1+n`
-/

namespace A132118.P13786178238963231541
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143844 n : ℝ) + 1 + (n : ℝ)

end

end A132118.P13786178238963231541

namespace A132118

/-- `sqrt(A143844(n))+1+n` -/
def P13786178238963231541.Spec : Prop :=
  ∀ n, P13786178238963231541.a n = (A132118 (n + 1) : ℝ)

end A132118

/-! ## A132118.P1593360823835159955

`val(A204985(n+1), 2)+n`
-/

namespace A132118.P1593360823835159955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A204985 (n + 1)).toNat 2 + n

end

end A132118.P1593360823835159955

namespace A132118

/-- `val(A204985(n+1), 2)+n` -/
def P1593360823835159955.Spec : Prop :=
  ∀ n, (P1593360823835159955.a n : ℤ) = A132118 (n + 1)

end A132118

/-! ## A132118.P1966413371158215058

`sqrt(sqrt(A133821(n+1)))+n`
-/

namespace A132118.P1966413371158215058
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A133821 (n + 1) : ℝ)) + (n : ℝ)

end

end A132118.P1966413371158215058

namespace A132118

/-- `sqrt(sqrt(A133821(n+1)))+n` -/
def P1966413371158215058.Spec : Prop :=
  ∀ n, P1966413371158215058.a n = (A132118 (n + 1) : ℝ)

end A132118

/-! ## A132118.P6261116964913564918

`∑[2-A130296(n+1)]+n`
-/

namespace A132118.P6261116964913564918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A132118.P6261116964913564918

namespace A132118

/-- `∑[2-A130296(n+1)]+n` -/
def P6261116964913564918.Spec : Prop :=
  ∀ n, P6261116964913564918.a n = A132118 (n + 1)

end A132118

/-! ## A132118.P12900915863446515419

`A057554(2*n+1)+n+1`
-/

namespace A132118.P12900915863446515419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * n + 1) + (n + 1 : ℤ)

end

end A132118.P12900915863446515419

namespace A132118

/-- `A057554(2*n+1)+n+1` -/
def P12900915863446515419.Spec : Prop :=
  ∀ n, P12900915863446515419.a n = A132118 (n + 1)

end A132118

/-! ## A132118.P10815975087171050994

`2*n+1-A000217(∑[char[∑[n+1]]])`
-/

namespace A132118.P10815975087171050994
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132118.P10815975087171050994

namespace A132118

/-- `2*n+1-A000217(∑[char[∑[n+1]]])` -/
def P10815975087171050994.Spec : Prop :=
  ∀ n, P10815975087171050994.a n = A132118 (n + 1)

end A132118

/-! ## A132118.P3173794684255917625

`A016777(n)-A061885(n)`
-/

namespace A132118.P3173794684255917625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A061885 n

end

end A132118.P3173794684255917625

namespace A132118

/-- `A016777(n)-A061885(n)` -/
def P3173794684255917625.Spec : Prop :=
  ∀ n, P3173794684255917625.a n = A132118 (n + 1)

end A132118

/-!
# A132119: A002260 + A000027 - A000012 as infinite lower triangular matrices.

The programs for A132119, the canonical program `A132119.P14999219633576669522` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132119 has offset 1).

The definition of A132119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132119.P3272530593612105134

`Δ[C(round(sqrt(2*n)), 2)]+1+n`
-/

namespace A132119.P3272530593612105134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 + (n : ℤ)

end

end A132119.P3272530593612105134

namespace A132119

/-- `Δ[C(round(sqrt(2*n)), 2)]+1+n` -/
def P3272530593612105134.Spec : Prop :=
  ∀ n, P3272530593612105134.a n = A132119 (n + 1)

end A132119

/-! ## A132119.P1212241143261779212

`floor(sqrt(2*n)*char[∑[n]])+n+1`
-/

namespace A132119.P1212241143261779212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * n : ℝ) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋ + (n : ℤ) + 1

end

end A132119.P1212241143261779212

namespace A132119

/-- `floor(sqrt(2*n)*char[∑[n]])+n+1` -/
def P1212241143261779212.Spec : Prop :=
  ∀ n, P1212241143261779212.a n = A132119 (n + 1)

end A132119

/-! ## A132119.P14999219633576669522

`A000027(A130296(n+1)+n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A132119

/-- `A000027(A130296(n+1)+n)` -/
def P14999219633576669522.Spec : Prop :=
  ∀ n, P14999219633576669522.a n = A132119 (n + 1)

theorem P14999219633576669522.correct : P14999219633576669522.Spec := by
  intro n
  simp only [A132119, Nat.add_sub_cancel]

end A132119

/-! ## A132119.P855682414761807921

`abs(Δ[A131818(n+1)]-(n+2))`
-/

namespace A132119.P855682414761807921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (n + 2 : ℤ)|

end

end A132119.P855682414761807921

namespace A132119

/-- `abs(Δ[A131818(n+1)]-(n+2))` -/
def P855682414761807921.Spec : Prop :=
  ∀ n, P855682414761807921.a n = A132119 (n + 1)

end A132119

/-! ## A132119.P1814424951813426789

`ceil(ratio[-round(sqrt(2*n))!]-(n-2*n))`
-/

namespace A132119.P1814424951813426789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) - ((n : ℤ) - (2 * n : ℤ) : ℚ)⌉

end

end A132119.P1814424951813426789

namespace A132119

/-- `ceil(ratio[-round(sqrt(2*n))!]-(n-2*n))` -/
def P1814424951813426789.Spec : Prop :=
  ∀ n, P1814424951813426789.a n = A132119 (n + 1)

end A132119

/-! ## A132119.P9396878505217508713

`(A130296(n+1)+n)*A007318(∑[n])`
-/

namespace A132119.P9396878505217508713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130296 (n + 1) + (n : ℤ)) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132119.P9396878505217508713

namespace A132119

/-- `(A130296(n+1)+n)*A007318(∑[n])` -/
def P9396878505217508713.Spec : Prop :=
  ∀ n, P9396878505217508713.a n = A132119 (n + 1)

end A132119

/-! ## A132119.P625901295253703151

`A002260(A034856(A130296(n+1)+n+1))`
-/

namespace A132119.P625901295253703151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A034856 (A130296 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A132119.P625901295253703151

namespace A132119

/-- `A002260(A034856(A130296(n+1)+n+1))` -/
def P625901295253703151.Spec : Prop :=
  ∀ n, P625901295253703151.a n = A132119 (n + 1)

end A132119

/-! ## A132119.P13296097570817225853

`abs(Δ[n²]-A352520(n))`
-/

namespace A132119.P13296097570817225853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - A352520 n|

end

end A132119.P13296097570817225853

namespace A132119

/-- `abs(Δ[n²]-A352520(n))` -/
def P13296097570817225853.Spec : Prop :=
  ∀ n, P13296097570817225853.a n = A132119 (n + 1)

end A132119

/-!
# A132121: Triangle read by rows: T(n,k)=n*(n+1)*((3*k+2)*n+1)/6, 0<=k<=n.

The programs for A132121, the canonical program `A132121.P4850799735873907847` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132121 has offset 0).

The definition of A132121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132121.P4850799735873907847

`row(n)*(row(n)+1)*((3*col(n)+2)*row(n)+1)/6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132121

/-- `row(n)*(row(n)+1)*((3*col(n)+2)*row(n)+1)/6` -/
def P4850799735873907847.Spec : Prop :=
  ∀ n, P4850799735873907847.a n = (A132121 n : ℚ)

end A132121

/-!
# A132122: a(n) = n * (n+1)^2 * (3*n^2 + 4*n + 2) / 12.

The programs for A132122, the canonical program `A132122.P2249693330651238976` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132122 has offset 0).

The definition of A132122 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A132122.anchor (n : ℕ) : (A132122 n : ℚ) = (n * (n + 1) ^ 2 * (3 * n ^ 2 + 4 * n + 2) : ℚ) / 12` in `Proof.A132.A132122`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132122.P2249693330651238976

`n*(n+1)²*(3*n²+4*n+2)/12`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132122

/-- `n*(n+1)²*(3*n²+4*n+2)/12` -/
def P2249693330651238976.Spec : Prop :=
  ∀ n, P2249693330651238976.a n = (A132122 n : ℚ)

end A132122

/-! ## A132122.P14001625826896041088

`(n+1)/4*A292057(n+1)`
-/

namespace A132122.P14001625826896041088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A292057 (n + 1) : ℚ)

end

end A132122.P14001625826896041088

namespace A132122

/-- `(n+1)/4*A292057(n+1)` -/
def P14001625826896041088.Spec : Prop :=
  ∀ n, P14001625826896041088.a n = (A132122 n : ℚ)

end A132122

/-! ## A132122.P15477612334475420036

`Δ[C(n², 2)/6*A000217(n)]`
-/

namespace A132122.P15477612334475420036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 6 * (A000217 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132122.P15477612334475420036

namespace A132122

/-- `Δ[C(n², 2)/6*A000217(n)]` -/
def P15477612334475420036.Spec : Prop :=
  ∀ n, P15477612334475420036.a n = (A132122 n : ℚ)

end A132122

/-! ## A132122.P387422877977151686

`A372583(n+1)-A108650(n)`
-/

namespace A132122.P387422877977151686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372583 (n + 1) - A108650 n

end

end A132122.P387422877977151686

namespace A132122

/-- `A372583(n+1)-A108650(n)` -/
def P387422877977151686.Spec : Prop :=
  ∀ n, P387422877977151686.a n = A132122 n

end A132122

/-! ## A132122.P4582785317347264584

`A208954(n+1)-A331528(n)`
-/

namespace A132122.P4582785317347264584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208954 (n + 1) - A331528 n

end

end A132122.P4582785317347264584

namespace A132122

/-- `A208954(n+1)-A331528(n)` -/
def P4582785317347264584.Spec : Prop :=
  ∀ n, P4582785317347264584.a n = A132122 n

end A132122

/-! ## A132122.P6654450216546612284

`A000330(n)+2*n*A001296(n)`
-/

namespace A132122.P6654450216546612284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + 2 * ((n : ℤ) * A001296 n)

end

end A132122.P6654450216546612284

namespace A132122

/-- `A000330(n)+2*n*A001296(n)` -/
def P6654450216546612284.Spec : Prop :=
  ∀ n, P6654450216546612284.a n = A132122 n

end A132122

/-! ## A132122.P14812571640459294226

`Δ[(A006008(n)-n²)*A000217(n)]`
-/

namespace A132122.P14812571640459294226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006008 n - (n ^ 2 : ℤ)) * A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132122.P14812571640459294226

namespace A132122

/-- `Δ[(A006008(n)-n²)*A000217(n)]` -/
def P14812571640459294226.Spec : Prop :=
  ∀ n, P14812571640459294226.a n = A132122 n

end A132122

/-! ## A132122.P7542191443621268028

`Δ[C(n, 2)/3*∑[n]²]`
-/

namespace A132122.P7542191443621268028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) / 3 * (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132122.P7542191443621268028

namespace A132122

/-- `Δ[C(n, 2)/3*∑[n]²]` -/
def P7542191443621268028.Spec : Prop :=
  ∀ n, P7542191443621268028.a n = (A132122 n : ℚ)

end A132122

/-! ## A132122.P10079736816707964047

`Δ[n/2*∑[C(n, 2)]*∑[n]]`
-/

namespace A132122.P10079736816707964047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132122.P10079736816707964047

namespace A132122

/-- `Δ[n/2*∑[C(n, 2)]*∑[n]]` -/
def P10079736816707964047.Spec : Prop :=
  ∀ n, P10079736816707964047.a n = (A132122 n : ℚ)

end A132122

/-! ## A132122.P17134746694926227611

`Δ[∑[n]*A002415(n)]`
-/

namespace A132122.P17134746694926227611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A002415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132122.P17134746694926227611

namespace A132122

/-- `Δ[∑[n]*A002415(n)]` -/
def P17134746694926227611.Spec : Prop :=
  ∀ n, P17134746694926227611.a n = A132122 n

end A132122

/-! ## A132122.P9826535792886410730

`Δ[A008911(n)/2*∑[n]]`
-/

namespace A132122.P9826535792886410730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008911 n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132122.P9826535792886410730

namespace A132122

/-- `Δ[A008911(n)/2*∑[n]]` -/
def P9826535792886410730.Spec : Prop :=
  ∀ n, P9826535792886410730.a n = (A132122 n : ℚ)

end A132122

/-! ## A132122.P17747482479950854668

`A002415(n+1)+A000217(n)*A006002(n)`
-/

namespace A132122.P17747482479950854668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + A000217 n * A006002 n

end

end A132122.P17747482479950854668

namespace A132122

/-- `A002415(n+1)+A000217(n)*A006002(n)` -/
def P17747482479950854668.Spec : Prop :=
  ∀ n, P17747482479950854668.a n = A132122 n

end A132122

/-! ## A132122.P6498903101958629483

`Δ[A000217(n)*A081283(abs(1-n)+n-1)]`
-/

namespace A132122.P6498903101958629483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A081283 (|1 - (n : ℤ)| + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132122.P6498903101958629483

namespace A132122

/-- `Δ[A000217(n)*A081283(abs(1-n)+n-1)]` -/
def P6498903101958629483.Spec : Prop :=
  ∀ n, P6498903101958629483.a n = A132122 n

end A132122

/-!
# A132123: a(n) = n * (2*n + 1) * (6*n^2 + 4*n + 1) / 3.

The programs for A132123, the canonical program `A132123.P4775769122706633601` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132123 has offset 0).

The definition of A132123 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A132123.anchor (n : ℕ) : (A132123 n : ℚ) = (n * (2 * n + 1) * (6 * n ^ 2 + 4 * n + 1) : ℚ) / 3` in `Proof.A132.A132123`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132123.P4775769122706633601

`n*(2*n+1)*(6*n²+4*n+1)/3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132123

/-- `n*(2*n+1)*(6*n²+4*n+1)/3` -/
def P4775769122706633601.Spec : Prop :=
  ∀ n, P4775769122706633601.a n = (A132123 n : ℚ)

end A132123

/-! ## A132123.P1099970148629588302

`∑[2*n²]+C(2*n+1, 2)²`
-/

namespace A132123.P1099970148629588302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (2 * n + 1) 2 ^ 2

end

end A132123.P1099970148629588302

namespace A132123

/-- `∑[2*n²]+C(2*n+1, 2)²` -/
def P1099970148629588302.Spec : Prop :=
  ∀ n, (P1099970148629588302.a n : ℤ) = A132123 n

end A132123

/-! ## A132123.P15724419236677610753

`A007204(n)-A100174(n+1)`
-/

namespace A132123.P15724419236677610753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n - A100174 (n + 1)

end

end A132123.P15724419236677610753

namespace A132123

/-- `A007204(n)-A100174(n+1)` -/
def P15724419236677610753.Spec : Prop :=
  ∀ n, P15724419236677610753.a n = A132123 n

end A132123

/-! ## A132123.P3610800255604256445

`A248698(n)-A035005(n+1)`
-/

namespace A132123.P3610800255604256445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248698 n - A035005 (n + 1)

end

end A132123.P3610800255604256445

namespace A132123

/-- `A248698(n)-A035005(n+1)` -/
def P3610800255604256445.Spec : Prop :=
  ∀ n, P3610800255604256445.a n = A132123 n

end A132123

/-! ## A132123.P8696579295570354316

`A006331(n)+A000537(2*n)`
-/

namespace A132123.P8696579295570354316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n + A000537 (2 * n)

end

end A132123.P8696579295570354316

namespace A132123

/-- `A006331(n)+A000537(2*n)` -/
def P8696579295570354316.Spec : Prop :=
  ∀ n, P8696579295570354316.a n = A132123 n

end A132123

/-! ## A132123.P15149276188443925683

`A132121(∑[4*n])`
-/

namespace A132123.P15149276188443925683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132121 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132123.P15149276188443925683

namespace A132123

/-- `A132121(∑[4*n])` -/
def P15149276188443925683.Spec : Prop :=
  ∀ n, P15149276188443925683.a n = A132123 n

end A132123

/-!
# A132124: a(n) = n*(n+1)*(8*n + 1)/6.

The programs for A132124, the canonical program `A132124.P7402126348460062974` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132124 has offset 0).

The definition of A132124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132124.P2108346558487161931

`n*(n+1)*(8*n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132124.P2108346558487161931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (8 * n + 1) : ℚ) / 6

end

end A132124.P2108346558487161931

namespace A132124

/-- `n*(n+1)*(8*n+1)/6` -/
def P2108346558487161931.Spec : Prop :=
  ∀ n, P2108346558487161931.a n = (A132124 n : ℚ)

end A132124

/-! ## A132124.P7402126348460062974

`A002412(n)+A006331(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A132124

/-- `A002412(n)+A006331(n)` -/
def P7402126348460062974.Spec : Prop :=
  ∀ n, P7402126348460062974.a n = A132124 n

theorem P7402126348460062974.correct : P7402126348460062974.Spec := by
  intro n
  simp only [A132124]

end A132124

/-! ## A132124.P521242134514227124

`A007585(n)+A002378(n)`
-/

namespace A132124.P521242134514227124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 n + A002378 n

end

end A132124.P521242134514227124

namespace A132124

/-- `A007585(n)+A002378(n)` -/
def P521242134514227124.Spec : Prop :=
  ∀ n, P521242134514227124.a n = A132124 n

end A132124

/-! ## A132124.P15862411459149505244

`∑[∑[a(n-1)+8]]` with `a(0)=0, a(1)=3`
-/

namespace A132124.P15862411459149505244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132124.P15862411459149505244

namespace A132124

/-- `∑[∑[a(n-1)+8]]` -/
def P15862411459149505244.Spec : Prop :=
  ∀ n, (P15862411459149505244.a n : ℤ) = A132124 n

end A132124

/-! ## A132124.P983309076107381124

`C(2*(n+1), 3)-∑[n]`
-/

namespace A132124.P983309076107381124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A132124.P983309076107381124

namespace A132124

/-- `C(2*(n+1), 3)-∑[n]` -/
def P983309076107381124.Spec : Prop :=
  ∀ n, P983309076107381124.a n = A132124 n

end A132124

/-! ## A132124.P13482160760636473003

`∑[n²]+lcm(n+1, n²)`
-/

namespace A132124.P13482160760636473003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (n + 1) (n ^ 2)

end

end A132124.P13482160760636473003

namespace A132124

/-- `∑[n²]+lcm(n+1, n²)` -/
def P13482160760636473003.Spec : Prop :=
  ∀ n, (P13482160760636473003.a n : ℤ) = A132124 n

end A132124

/-! ## A132124.P8489965097653769061

`∑[n*record[lcm(2, n)]]+∑[n]`
-/

namespace A132124.P8489965097653769061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A132124.P8489965097653769061

namespace A132124

/-- `∑[n*record[lcm(2, n)]]+∑[n]` -/
def P8489965097653769061.Spec : Prop :=
  ∀ n, (P8489965097653769061.a n : ℤ) = A132124 n

end A132124

/-! ## A132124.P11142880589864113598

`∑[∑[ogf((3x+5x^2)/(1-2x+x^2))]]`
-/

namespace A132124.P11142880589864113598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 5] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132124.P11142880589864113598

namespace A132124

/-- `∑[∑[ogf((3x+5x^2)/(1-2x+x^2))]]` -/
def P11142880589864113598.Spec : Prop :=
  ∀ n, P11142880589864113598.a n = A132124 n

end A132124

/-! ## A132124.P7524463156022286741

`ogf((3x+5x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A132124.P7524463156022286741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 5] [1, -4, 6, -4, 1] n

end

end A132124.P7524463156022286741

namespace A132124

/-- `ogf((3x+5x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P7524463156022286741.Spec : Prop :=
  ∀ n, P7524463156022286741.a n = A132124 n

end A132124

/-! ## A132124.P6171515564482342032

`∑[5-∑[a(n-1)-8]]` with `a(0)=5`
-/

namespace A132124.P6171515564482342032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132124.P6171515564482342032

namespace A132124

/-- `∑[5-∑[a(n-1)-8]]` -/
def P6171515564482342032.Spec : Prop :=
  ∀ n, P6171515564482342032.a n = A132124 n

end A132124

/-! ## A132124.P17209139145565334532

`∑[2*C(2*n, 2)]+∑[n]`
-/

namespace A132124.P17209139145565334532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A132124.P17209139145565334532

namespace A132124

/-- `∑[2*C(2*n, 2)]+∑[n]` -/
def P17209139145565334532.Spec : Prop :=
  ∀ n, (P17209139145565334532.a n : ℤ) = A132124 n

end A132124

/-! ## A132124.P11489045023224361963

`Δ[(2*n-1)*C(n+1, 3)]`
-/

namespace A132124.P11489045023224361963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * (Nat.choose (n + 1) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132124.P11489045023224361963

namespace A132124

/-- `Δ[(2*n-1)*C(n+1, 3)]` -/
def P11489045023224361963.Spec : Prop :=
  ∀ n, P11489045023224361963.a n = A132124 n

end A132124

/-! ## A132124.P16917053788495298666

`Δ[(n+1)*C(2*n, 3)/4]`
-/

namespace A132124.P16917053788495298666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.choose (2 * n) 3 : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132124.P16917053788495298666

namespace A132124

/-- `Δ[(n+1)*C(2*n, 3)/4]` -/
def P16917053788495298666.Spec : Prop :=
  ∀ n, P16917053788495298666.a n = (A132124 n : ℚ)

end A132124

/-! ## A132124.P7344995074271863432

`(2*n)²+a(n-1)-n` with `a(0)=0`
-/

namespace A132124.P7344995074271863432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n) ^ 2 : ℤ) + (a (n - 1) - (n : ℤ))

end

end A132124.P7344995074271863432

namespace A132124

/-- `(2*n)²+a(n-1)-n` -/
def P7344995074271863432.Spec : Prop :=
  ∀ n, P7344995074271863432.a n = A132124 n

end A132124

/-! ## A132124.P18177055544070749842

`(2*n)²-(n-a(n-1))` with `a(0)=0`
-/

namespace A132124.P18177055544070749842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n) ^ 2 : ℤ) - ((n : ℤ) - a (n - 1))

end

end A132124.P18177055544070749842

namespace A132124

/-- `(2*n)²-(n-a(n-1))` -/
def P18177055544070749842.Spec : Prop :=
  ∀ n, P18177055544070749842.a n = A132124 n

end A132124

/-! ## A132124.P14992321728974687575

`a(n-1)+n*(4*n-1)` with `a(0)=0`
-/

namespace A132124.P14992321728974687575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * ((4 * n : ℤ) - 1)

end

end A132124.P14992321728974687575

namespace A132124

/-- `a(n-1)+n*(4*n-1)` -/
def P14992321728974687575.Spec : Prop :=
  ∀ n, P14992321728974687575.a n = A132124 n

end A132124

/-! ## A132124.P11305053023892427587

`∑[lcm(1-2*n, 2*n)]+∑[n]`
-/

namespace A132124.P11305053023892427587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (2 * n : ℤ)) (2 * n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A132124.P11305053023892427587

namespace A132124

/-- `∑[lcm(1-2*n, 2*n)]+∑[n]` -/
def P11305053023892427587.Spec : Prop :=
  ∀ n, (P11305053023892427587.a n : ℤ) = A132124 n

end A132124

/-! ## A132124.P6856884405012040334

`floor(a(n-1)-n*(1-4*n))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A132124.P6856884405012040334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (n : ℤ) * (1 - (4 * n : ℤ))

end

end A132124.P6856884405012040334

namespace A132124

/-- `floor(a(n-1)-n*(1-4*n))` -/
def P6856884405012040334.Spec : Prop :=
  ∀ n, P6856884405012040334.a n = A132124 n

end A132124

/-! ## A132124.P2861661394589453522

`2*n*∑[2*n]-∑[C(2*n, 2)]`
-/

namespace A132124.P2861661394589453522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A132124.P2861661394589453522

namespace A132124

/-- `2*n*∑[2*n]-∑[C(2*n, 2)]` -/
def P2861661394589453522.Spec : Prop :=
  ∀ n, P2861661394589453522.a n = A132124 n

end A132124

/-! ## A132124.P15760045062821249451

`∑[2*n*and(2*n+1, 2*n)]-∑[n]`
-/

namespace A132124.P15760045062821249451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.land (2 * n + 1) (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A132124.P15760045062821249451

namespace A132124

/-- `∑[2*n*and(2*n+1, 2*n)]-∑[n]` -/
def P15760045062821249451.Spec : Prop :=
  ∀ n, P15760045062821249451.a n = A132124 n

end A132124

/-!
# A132125: Number of distinct Fibonacci divisors of the factorial of n.

The programs for A132125, there is no canonical definition to state claims against.
-/

/-! ## A132125.P3752482965278571690

`∑[A323511(∏{e}[A079398(n+1), #*(n+1)])]`
-/

namespace A132125.P3752482965278571690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323511 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132125.P3752482965278571690

/-! ## A132125.P16942943841961169068

`∑[A302777(A300951(n)+A223490(n+1))]`
-/

namespace A132125.P16942943841961169068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (A300951 n + A223490 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132125.P16942943841961169068

/-! ## A132125.P9696671035898799252

`∑[A010060(A178334((n+1)*5^∑{e}[n+1, #]))]`
-/

namespace A132125.P9696671035898799252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A178334 ((n + 1) * 5 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132125.P9696671035898799252

/-! ## A132125.P2715831166042074539

`∑[C(A339757(n+1), A340193(n+1))]`
-/

namespace A132125.P2715831166042074539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A339757 (n + 1)).toNat (A340193 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132125.P2715831166042074539

/-! ## A132125.P771680569612145251

`∑[A080995(A178472(n+1))]`
-/

namespace A132125.P771680569612145251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 (A178472 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132125.P771680569612145251

/-!
# A132126: Number of nonassociative subloops of order 8n of the Cayley octonions (up to isomorphism).

The programs for A132126, there is no canonical definition to state claims against.
-/

/-! ## A132126.P11537082400025827032

`gcd(A001617(n+1), A088323(n+2))`
-/

namespace A132126.P11537082400025827032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001617 (n + 1)) (A088323 (n + 2))

end

end A132126.P11537082400025827032

/-!
# A132127: a(n) = (n^3 + 3*n - 2)/2.

The programs for A132127, the canonical program `A132127.P17513514438604319180` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132127 has offset 1).

The definition of A132127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3+3*(n+1)-2)/2` (program `A132127.P6006312277183794091`, by `A132127.P6006312277183794091.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132127.P610718632925578245

`(n+1)*((n+1)²+3)/2-1`
-/

namespace A132127.P610718632925578245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * ((n + 1) ^ 2 + 3) : ℚ) / 2 - 1

end

end A132127.P610718632925578245

namespace A132127

/-- `(n+1)*((n+1)²+3)/2-1` -/
def P610718632925578245.Spec : Prop :=
  ∀ n, P610718632925578245.a n = (A132127 (n + 1) : ℚ)

theorem P610718632925578245.correct : P610718632925578245.Spec := by
  intro n
  simp only [A132127, Nat.add_sub_cancel, A132127.P610718632925578245.a, A132127.P17513514438604319180.f1, A132127.P17513514438604319180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132127

/-! ## A132127.P6006312277183794091

`((n+1)^3+3*(n+1)-2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132127.P6006312277183794091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 + 3 * (n + 1) : ℤ) - 2 : ℚ) / 2

end

end A132127.P6006312277183794091

namespace A132127

/-- `((n+1)^3+3*(n+1)-2)/2` -/
def P6006312277183794091.Spec : Prop :=
  ∀ n, P6006312277183794091.a n = (A132127 (n + 1) : ℚ)

theorem P6006312277183794091.correct : P6006312277183794091.Spec := by
  intro n
  simp only [A132127, Nat.add_sub_cancel, A132127.P6006312277183794091.a, A132127.P17513514438604319180.f1, A132127.P17513514438604319180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132127

/-! ## A132127.P1332171915726072671

`∑[∑[a(n-1)+3]]` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A132127.P1332171915726072671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132127.P1332171915726072671

namespace A132127

/-- `∑[∑[a(n-1)+3]]` -/
def P1332171915726072671.Spec : Prop :=
  ∀ n, (P1332171915726072671.a n : ℤ) = A132127 (n + 1)

end A132127

/-! ## A132127.P17513514438604319180

`Δ[C(C(n+1, 2), 2)+n²]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132127

/-- `Δ[C(C(n+1, 2), 2)+n²]` -/
def P17513514438604319180.Spec : Prop :=
  ∀ n, P17513514438604319180.a n = A132127 (n + 1)

theorem P17513514438604319180.correct : P17513514438604319180.Spec := by
  intro n
  simp only [A132127, Nat.add_sub_cancel]

end A132127

/-! ## A132127.P18005297364055937536

`∑[∑[n*3%a(n-1)]]` with `a(0)=1, a(1)=4`
-/

namespace A132127.P18005297364055937536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  n * (3 % f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132127.P18005297364055937536

namespace A132127

/-- `∑[∑[n*3%a(n-1)]]` -/
def P18005297364055937536.Spec : Prop :=
  ∀ n, (P18005297364055937536.a n : ℤ) = A132127 (n + 1)

end A132127

/-! ## A132127.P3386155699336585286

`∑[4*n-(n-a(n-1))]` with `a(0)=1, a(1)=5`
-/

namespace A132127.P3386155699336585286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  (4 * n : ℤ) - ((n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132127.P3386155699336585286

namespace A132127

/-- `∑[4*n-(n-a(n-1))]` -/
def P3386155699336585286.Spec : Prop :=
  ∀ n, P3386155699336585286.a n = A132127 (n + 1)

end A132127

/-! ## A132127.P13578334877068875582

`floor(C((n+1)², 2)/(n+1)+2*n+1)`
-/

namespace A132127.P13578334877068875582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose ((n + 1) ^ 2) 2 : ℚ) / (n + 1 : ℚ) + (2 * n + 1 : ℚ)⌋

end

end A132127.P13578334877068875582

namespace A132127

/-- `floor(C((n+1)², 2)/(n+1)+2*n+1)` -/
def P13578334877068875582.Spec : Prop :=
  ∀ n, P13578334877068875582.a n = A132127 (n + 1)

end A132127

/-! ## A132127.P7976441878952458304

`(C(n+1, 2)+(2*n+1)/(n+2))*(n+2)`
-/

namespace A132127.P7976441878952458304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 1) 2 : ℚ) + (2 * n + 1 : ℚ) / (n + 2 : ℚ)) * (n + 2 : ℚ)

end

end A132127.P7976441878952458304

namespace A132127

/-- `(C(n+1, 2)+(2*n+1)/(n+2))*(n+2)` -/
def P7976441878952458304.Spec : Prop :=
  ∀ n, P7976441878952458304.a n = (A132127 (n + 1) : ℚ)

theorem P7976441878952458304.correct : P7976441878952458304.Spec := by
  intro n
  simp only [A132127, Nat.add_sub_cancel, A132127.P7976441878952458304.a, A132127.P17513514438604319180.f1, A132127.P17513514438604319180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132127

/-! ## A132127.P7410694436175284515

`∑[A134869(n+1)+n²]`
-/

namespace A132127.P7410694436175284515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132127.P7410694436175284515

namespace A132127

/-- `∑[A134869(n+1)+n²]` -/
def P7410694436175284515.Spec : Prop :=
  ∀ n, P7410694436175284515.a n = A132127 (n + 1)

end A132127

/-! ## A132127.P13790452339034251122

`∑[A003682(n+1)+∑[n]]`
-/

namespace A132127.P13790452339034251122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003682 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132127.P13790452339034251122

namespace A132127

/-- `∑[A003682(n+1)+∑[n]]` -/
def P13790452339034251122.Spec : Prop :=
  ∀ n, P13790452339034251122.a n = A132127 (n + 1)

end A132127

/-! ## A132127.P14633240918182617150

`abs(∑[(A270710(n)+3+n)/2+1]-1)`
-/

namespace A132127.P14633240918182617150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270710 n + 3 + (n : ℤ) : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A132127.P14633240918182617150

namespace A132127

/-- `abs(∑[(A270710(n)+3+n)/2+1]-1)` -/
def P14633240918182617150.Spec : Prop :=
  ∀ n, P14633240918182617150.a n = (A132127 (n + 1) : ℚ)

end A132127

/-! ## A132127.P14950774640104465491

`round(abs(A184628(n+1)+4*n-n)/2)`
-/

namespace A132127.P14950774640104465491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|A184628 (n + 1) + (4 * n : ℤ) - (n : ℤ)| : ℚ) / 2)

end

end A132127.P14950774640104465491

namespace A132127

/-- `round(abs(A184628(n+1)+4*n-n)/2)` -/
def P14950774640104465491.Spec : Prop :=
  ∀ n, P14950774640104465491.a n = A132127 (n + 1)

end A132127

/-! ## A132127.P11846758484477790971

`A166781(n+1)%A164845(n)`
-/

namespace A132127.P11846758484477790971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166781 (n + 1)) (A164845 n)

end

end A132127.P11846758484477790971

namespace A132127

/-- `A166781(n+1)%A164845(n)` -/
def P11846758484477790971.Spec : Prop :=
  ∀ n, P11846758484477790971.a n = A132127 (n + 1)

end A132127

/-! ## A132127.P5094478449631820859

`∑[A089071(n+1)+A005563(n)]`
-/

namespace A132127.P5094478449631820859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (n + 1) + A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132127.P5094478449631820859

namespace A132127

/-- `∑[A089071(n+1)+A005563(n)]` -/
def P5094478449631820859.Spec : Prop :=
  ∀ n, P5094478449631820859.a n = A132127 (n + 1)

end A132127

/-! ## A132127.P12221179676266259888

`A269641(n+1)%A162254(n+1)`
-/

namespace A132127.P12221179676266259888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269641 (n + 1)) (A162254 (n + 1))

end

end A132127.P12221179676266259888

namespace A132127

/-- `A269641(n+1)%A162254(n+1)` -/
def P12221179676266259888.Spec : Prop :=
  ∀ n, P12221179676266259888.a n = A132127 (n + 1)

end A132127

/-! ## A132127.P4361113890751244809

`∑[∑[A016777(n)+1]-A004277(n)]`
-/

namespace A132127.P4361113890751244809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132127.P4361113890751244809

namespace A132127

/-- `∑[∑[A016777(n)+1]-A004277(n)]` -/
def P4361113890751244809.Spec : Prop :=
  ∀ n, P4361113890751244809.a n = A132127 (n + 1)

end A132127

/-! ## A132127.P16365108261814928133

`Δ[C(∑[n], 2)+n²]`
-/

namespace A132127.P16365108261814928133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132127.P16365108261814928133

namespace A132127

/-- `Δ[C(∑[n], 2)+n²]` -/
def P16365108261814928133.Spec : Prop :=
  ∀ n, P16365108261814928133.a n = A132127 (n + 1)

end A132127

/-! ## A132127.P373346133527331039

`Δ[A267707(n)-n]`
-/

namespace A132127.P373346133527331039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267707 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132127.P373346133527331039

namespace A132127

/-- `Δ[A267707(n)-n]` -/
def P373346133527331039.Spec : Prop :=
  ∀ n, P373346133527331039.a n = A132127 (n + 1)

end A132127

/-! ## A132127.P245235446279860413

`∑[A114119(∑[2*n])]`
-/

namespace A132127.P245235446279860413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132127.P245235446279860413

namespace A132127

/-- `∑[A114119(∑[2*n])]` -/
def P245235446279860413.Spec : Prop :=
  ∀ n, P245235446279860413.a n = A132127 (n + 1)

end A132127

/-! ## A132127.P6787210774324944876

`∑[A299542(∑[2*n])]`
-/

namespace A132127.P6787210774324944876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299542 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132127.P6787210774324944876

namespace A132127

/-- `∑[A299542(∑[2*n])]` -/
def P6787210774324944876.Spec : Prop :=
  ∀ n, P6787210774324944876.a n = A132127 (n + 1)

end A132127

/-!
# A132128: A051340 + A000027 - A000012.

The programs for A132128, the canonical program `A132128.P11388277187391197128` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132128 has offset 1).

The definition of A132128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132128.P11388277187391197128

`A051340(n)+n`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A132128

/-- `A051340(n)+n` -/
def P11388277187391197128.Spec : Prop :=
  ∀ n, P11388277187391197128.a n = A132128 (n + 1)

theorem P11388277187391197128.correct : P11388277187391197128.Spec := by
  intro n
  simp only [A132128, Nat.add_sub_cancel]

end A132128

/-! ## A132128.P11120092455545607107

`Δ[A063656(n)]+n`
-/

namespace A132128.P11120092455545607107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A132128.P11120092455545607107

namespace A132128

/-- `Δ[A063656(n)]+n` -/
def P11120092455545607107.Spec : Prop :=
  ∀ n, P11120092455545607107.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P15321892087999543101

`2-Δ[A094727(n+1)]+n`
-/

namespace A132128.P15321892087999543101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A132128.P15321892087999543101

namespace A132128

/-- `2-Δ[A094727(n+1)]+n` -/
def P15321892087999543101.Spec : Prop :=
  ∀ n, P15321892087999543101.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P7381786578189830423

`Δ[C(A003056(n), 2)]+n+1`
-/

namespace A132128.P7381786578189830423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)

end

end A132128.P7381786578189830423

namespace A132128

/-- `Δ[C(A003056(n), 2)]+n+1` -/
def P7381786578189830423.Spec : Prop :=
  ∀ n, P7381786578189830423.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P9371797386604708447

`round(sqrt(A127701(n+1)²+1))+n`
-/

namespace A132128.P9371797386604708447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A127701 (n + 1) ^ 2 + 1 : ℝ)) + (n : ℤ)

end

end A132128.P9371797386604708447

namespace A132128

/-- `round(sqrt(A127701(n+1)²+1))+n` -/
def P9371797386604708447.Spec : Prop :=
  ∀ n, P9371797386604708447.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P2676582614454589011

`A000463(A131227(n))+n`
-/

namespace A132128.P2676582614454589011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A131227 n).toNat + (n : ℤ)

end

end A132128.P2676582614454589011

namespace A132128

/-- `A000463(A131227(n))+n` -/
def P2676582614454589011.Spec : Prop :=
  ∀ n, P2676582614454589011.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P2339776901115252933

`A008620(A131431(n))+n`
-/

namespace A132128.P2339776901115252933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A131431 n).toNat + (n : ℤ)

end

end A132128.P2339776901115252933

namespace A132128

/-- `A008620(A131431(n))+n` -/
def P2339776901115252933.Spec : Prop :=
  ∀ n, P2339776901115252933.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P4367019773646684083

`A028310(A127648(n))+n`
-/

namespace A132128.P4367019773646684083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A127648 n).toNat + (n : ℤ)

end

end A132128.P4367019773646684083

namespace A132128

/-- `A028310(A127648(n))+n` -/
def P4367019773646684083.Spec : Prop :=
  ∀ n, P4367019773646684083.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P13186271178343629449

`A056926(A001614(n+1))+n`
-/

namespace A132128.P13186271178343629449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A001614 (n + 1)).toNat + (n : ℤ)

end

end A132128.P13186271178343629449

namespace A132128

/-- `A056926(A001614(n+1))+n` -/
def P13186271178343629449.Spec : Prop :=
  ∀ n, P13186271178343629449.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P2361799242843668126

`A056926(A004201(n+1))+n`
-/

namespace A132128.P2361799242843668126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A004201 (n + 1)).toNat + (n : ℤ)

end

end A132128.P2361799242843668126

namespace A132128

/-- `A056926(A004201(n+1))+n` -/
def P2361799242843668126.Spec : Prop :=
  ∀ n, P2361799242843668126.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P12957705428412239399

`A028310(A127701(n+1))+n`
-/

namespace A132128.P12957705428412239399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A127701 (n + 1)).toNat + (n : ℤ)

end

end A132128.P12957705428412239399

namespace A132128

/-- `A028310(A127701(n+1))+n` -/
def P12957705428412239399.Spec : Prop :=
  ∀ n, P12957705428412239399.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P5101522408758888500

`A134402(n)+A087156(n+1)`
-/

namespace A132128.P5101522408758888500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134402 n + A087156 (n + 1)

end

end A132128.P5101522408758888500

namespace A132128

/-- `A134402(n)+A087156(n+1)` -/
def P5101522408758888500.Spec : Prop :=
  ∀ n, P5101522408758888500.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P2510835792688959666

`A028242(A198954(n+1))+n`
-/

namespace A132128.P2510835792688959666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A198954 (n + 1)).toNat + (n : ℤ)

end

end A132128.P2510835792688959666

namespace A132128

/-- `A028242(A198954(n+1))+n` -/
def P2510835792688959666.Spec : Prop :=
  ∀ n, P2510835792688959666.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P2545327716936459469

`A023532(n)+A127648(n)+n`
-/

namespace A132128.P2545327716936459469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n + (A127648 n + (n : ℤ))

end

end A132128.P2545327716936459469

namespace A132128

/-- `A023532(n)+A127648(n)+n` -/
def P2545327716936459469.Spec : Prop :=
  ∀ n, P2545327716936459469.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P13550067405861910814

`A057427(n)+A134402(n)+n`
-/

namespace A132128.P13550067405861910814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A134402 n + (n : ℤ))

end

end A132128.P13550067405861910814

namespace A132128

/-- `A057427(n)+A134402(n)+n` -/
def P13550067405861910814.Spec : Prop :=
  ∀ n, P13550067405861910814.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P16510487890488234536

`A134402(n)+n-A057428(n)`
-/

namespace A132128.P16510487890488234536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134402 n + ((n : ℤ) - A057428 n)

end

end A132128.P16510487890488234536

namespace A132128

/-- `A134402(n)+n-A057428(n)` -/
def P16510487890488234536.Spec : Prop :=
  ∀ n, P16510487890488234536.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P17868386552378356120

`A074909(n*A023531(n))+n`
-/

namespace A132128.P17868386552378356120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ((n : ℤ) * A023531 n).toNat + (n : ℤ)

end

end A132128.P17868386552378356120

namespace A132128

/-- `A074909(n*A023531(n))+n` -/
def P17868386552378356120.Spec : Prop :=
  ∀ n, P17868386552378356120.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P6550699086112487645

`A127648(n*A023531(n))+n`
-/

namespace A132128.P6550699086112487645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 ((n : ℤ) * A023531 n).toNat + (n : ℤ)

end

end A132128.P6550699086112487645

namespace A132128

/-- `A127648(n*A023531(n))+n` -/
def P6550699086112487645.Spec : Prop :=
  ∀ n, P6550699086112487645.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P7692184134345892857

`A002260(n*A023531(n)+1)+n`
-/

namespace A132128.P7692184134345892857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ((n : ℤ) * A023531 n + 1).toNat + (n : ℤ)

end

end A132128.P7692184134345892857

namespace A132128

/-- `A002260(n*A023531(n)+1)+n` -/
def P7692184134345892857.Spec : Prop :=
  ∀ n, P7692184134345892857.a n = A132128 (n + 1)

end A132128

/-! ## A132128.P13579993504922824645

`A002260(n+1)/A128227(n)+n`
-/

namespace A132128.P13579993504922824645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A128227 n : ℚ) + (n : ℚ)

end

end A132128.P13579993504922824645

namespace A132128

/-- `A002260(n+1)/A128227(n)+n` -/
def P13579993504922824645.Spec : Prop :=
  ∀ n, P13579993504922824645.a n = (A132128 (n + 1) : ℚ)

end A132128

/-!
# A132131: "Punctual Bird" numbers n with the additional property that n-1 is not a Punctual Bird (cf. A131881).

The programs for A132131, there is no canonical definition to state claims against.
-/

/-! ## A132131.P13104281957415513538

`eq[A004086(A080465(n)), A131809(n)]`
-/

namespace A132131.P13104281957415513538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A080465 (n + 10)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131809 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132131.P13104281957415513538

/-! ## A132131.P9582337592563737028

`(A108965(n+1)*A166486(A198196(n+1)))%A164609(n)+1`
-/

namespace A132131.P9582337592563737028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108965 (n + 1) * A166486 (A198196 (n + 1)).toNat) (A164609 n) + 1

end

end A132131.P9582337592563737028

/-! ## A132131.P15224196026088983476

`eq[A080465(n), A131809(n)]`
-/

namespace A132131.P15224196026088983476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080465 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131809 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132131.P15224196026088983476

/-! ## A132131.P5717787155166419236

`A175885(n+2)%A325407(3*n+1)+1`
-/

namespace A132131.P5717787155166419236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175885 (n + 2)) (A325407 (3 * n + 1)) + 1

end

end A132131.P5717787155166419236

/-!
# A132132: "Early Bird" numbers n such that n-1 is not an Early Bird (cf. A116700).

The programs for A132132, there is no canonical definition to state claims against.
-/

/-! ## A132132.P4759504333763325220

`∩[A116700(n+1), A131881(n+1)+1]`
-/

namespace A132132.P4759504333763325220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131881 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132132.P4759504333763325220

/-! ## A132132.P776785485050978311

`eq[A061674(n), A179801(n+1)]+1`
-/

namespace A132132.P776785485050978311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A132132.P776785485050978311

/-! ## A132132.P11827978117638614734

`A020725(eq[A061674(n), A179801(n+1)])`
-/

namespace A132132.P11827978117638614734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A132132.P11827978117638614734

/-! ## A132132.P8813613668506010474

`A063660(eq[A061674(n), A179801(n+1)])`
-/

namespace A132132.P8813613668506010474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A132132.P8813613668506010474

/-! ## A132132.P17943885883742134626

`A153152(eq[A061674(n), A179801(n+1)])`
-/

namespace A132132.P17943885883742134626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A132132.P17943885883742134626

/-!
# A132133: Number of n-digit "Punctual Birds" (cf. A131881).

The programs for A132133, there is no canonical definition to state claims against.
-/

/-! ## A132133.P4817811057063219533

`A329101(A220963(2*n)+A052392(n))`
-/

namespace A132133.P4817811057063219533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329101 (A220963 (2 * n) + A052392 n).toNat

end

end A132133.P4817811057063219533

/-!
# A132135: Number of base-3 "Punctual Birds" with n base-3 digits.

The programs for A132135, there is no canonical definition to state claims against.
-/

/-! ## A132135.P6246314141559430859

`A047593(A002024((n+1)!))`
-/

namespace A132135.P6246314141559430859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047593 (A002024 (Nat.factorial (n + 1))).toNat

end

end A132135.P6246314141559430859

/-! ## A132135.P4477923781685636056

`A047593(A002024(∏[n+1]))`
-/

namespace A132135.P4477923781685636056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047593 (A002024 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A132135.P4477923781685636056

/-! ## A132135.P11527510849293693556

`A371632(A363507(n))+n+1`
-/

namespace A132135.P11527510849293693556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371632 (A363507 n).toNat + (n + 1 : ℤ)

end

end A132135.P11527510849293693556

/-!
# A132136: Expansion of -lambda(t + 1) in powers of the nome q = exp(Pi i t).

The programs for A132136, there is no canonical definition to state claims against.
-/

/-! ## A132136.P15389414367812939849

`A014972(n+1)`
-/

namespace A132136.P15389414367812939849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014972 (n + 1)

end

end A132136.P15389414367812939849

/-! ## A132136.P10950171130837797528

`16*A092877(n+1)`
-/

namespace A132136.P10950171130837797528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A092877 (n + 1)

end

end A132136.P10950171130837797528

/-! ## A132136.P988206535745982661

`(-1)^n*A115977(n+1)`
-/

namespace A132136.P988206535745982661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A115977 (n + 1)

end

end A132136.P988206535745982661

/-! ## A132136.P1144413723861320479

`abs(A115977(n+1))`
-/

namespace A132136.P1144413723861320479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115977 (n + 1)|

end

end A132136.P1144413723861320479

/-! ## A132136.P10410205764118629333

`A131126(2*(n+1))`
-/

namespace A132136.P10410205764118629333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131126 (2 * (n + 1))

end

end A132136.P10410205764118629333

/-! ## A132136.P8067255195401338357

`A208933(4*(n+1))`
-/

namespace A132136.P8067255195401338357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208933 (4 * (n + 1))

end

end A132136.P8067255195401338357

/-! ## A132136.P12963351936048137426

`A215348(4*(n+1))`
-/

namespace A132136.P12963351936048137426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215348 (4 * (n + 1))

end

end A132136.P12963351936048137426

/-! ## A132136.P15124411249716281368

`record[A014972(abs(1-n))]`
-/

namespace A132136.P15124411249716281368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014972 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132136.P15124411249716281368

/-! ## A132136.P3230275110948336974

`4*A107035(2*(n+1))`
-/

namespace A132136.P3230275110948336974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A107035 (2 * (n + 1))

end

end A132136.P3230275110948336974

/-! ## A132136.P87554687586339519

`4*4*abs(A005798(n+1))`
-/

namespace A132136.P87554687586339519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * |A005798 (n + 1)|)

end

end A132136.P87554687586339519

/-! ## A132136.P3355907088788887209

`ratio[A014972(n)]*A014972(n)`
-/

namespace A132136.P3355907088788887209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014972 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A014972 n : ℚ)

end

end A132136.P3355907088788887209

/-! ## A132136.P2712593713169953477

`lcm(A000034(n), A115977(n+1))`
-/

namespace A132136.P2712593713169953477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A115977 (n + 1))

end

end A132136.P2712593713169953477

/-! ## A132136.P4488616180357247926

`gcd(A115977(n+1), A115979(3*n+2))`
-/

namespace A132136.P4488616180357247926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115977 (n + 1)) (A115979 (3 * n + 2))

end

end A132136.P4488616180357247926

/-! ## A132136.P7130431043977413812

`A097243(n+1)/2`
-/

namespace A132136.P7130431043977413812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097243 (n + 1) : ℚ) / 2

end

end A132136.P7130431043977413812

/-! ## A132136.P4396733292349709925

`A014969(2*(n+1))/2`
-/

namespace A132136.P4396733292349709925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 (2 * (n + 1)) : ℚ) / 2

end

end A132136.P4396733292349709925

/-! ## A132136.P17056060356709461201

`A007096(A004767(n)+1)/2`
-/

namespace A132136.P17056060356709461201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 (A004767 n + 1).toNat : ℚ) / 2

end

end A132136.P17056060356709461201

/-! ## A132136.P6824903414975232634

`abs(A128692(n+1))`
-/

namespace A132136.P6824903414975232634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128692 (n + 1)|

end

end A132136.P6824903414975232634

/-! ## A132136.P15408090438382823684

`A033999(n+1)*A128692(n+1)`
-/

namespace A132136.P15408090438382823684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A128692 (n + 1)

end

end A132136.P15408090438382823684

/-! ## A132136.P11417237483569470645

`gcd(A000038(n+1), A128692(n+1))`
-/

namespace A132136.P11417237483569470645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n + 1)) (A128692 (n + 1))

end

end A132136.P11417237483569470645

/-! ## A132136.P15019398198016164554

`2*A128692(n+1)/A280560(n+1)`
-/

namespace A132136.P15019398198016164554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A128692 (n + 1) : ℚ) / (A280560 (n + 1) : ℚ))

end

end A132136.P15019398198016164554

/-!
# A132137: a(1)=1, a(n)=maximal digit of sum a(1)+...+a(n-1).

The programs for A132137, the canonical program `A132137.P15193229265496179695` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132137 has offset 1).

The definition of A132137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1436 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132137.P15193229265496179695

`Δ[A095815(a(n-1))]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A132137

/-- `Δ[A095815(a(n-1))]` -/
def P15193229265496179695.Spec : Prop :=
  ∀ n, P15193229265496179695.a n = A132137 (n + 1)

theorem P15193229265496179695.correct : P15193229265496179695.Spec := by
  intro n
  simp only [A132137, Nat.add_sub_cancel]

end A132137

/-! ## A132137.P579055304226359839

`Δ[A054055(a(n-1))+a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A132137.P579055304226359839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A054055 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132137.P579055304226359839

namespace A132137

/-- `Δ[A054055(a(n-1))+a(n-1)]` -/
def P579055304226359839.Spec : Prop :=
  ∀ n, P579055304226359839.a n = A132137 (n + 1)

end A132137

/-! ## A132137.P3428835346872928637

`Δ[eq[0, A096306(A137735(n²))]]`
-/

namespace A132137.P3428835346872928637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096306 (A137735 (n ^ 2)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132137.P3428835346872928637

namespace A132137

/-- `Δ[eq[0, A096306(A137735(n²))]]` -/
def P3428835346872928637.Spec : Prop :=
  ∀ n, P3428835346872928637.a n = A132137 (n + 1)

end A132137

/-! ## A132137.P15119747788281200744

`A010879(∏[A193495(2^floor(n/2))])`
-/

namespace A132137.P15119747788281200744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193495 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132137.P15119747788281200744

namespace A132137

/-- `A010879(∏[A193495(2^floor(n/2))])` -/
def P15119747788281200744.Spec : Prop :=
  ∀ n, P15119747788281200744.a n = A132137 (n + 1)

end A132137

/-! ## A132137.P16685078828971682791

`A010879(∏[A162608(comp[∑[n!]+n]-n)])`
-/

namespace A132137.P16685078828971682791
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132137.P16685078828971682791

namespace A132137

/-- `A010879(∏[A162608(comp[∑[n!]+n]-n)])` -/
def P16685078828971682791.Spec : Prop :=
  ∀ n, P16685078828971682791.a n = A132137 (n + 1)

end A132137

/-!
# A132138: Characteristic function of the set of numbers defined in A002977.

The programs for A132138, there is no canonical definition to state claims against.
-/

/-! ## A132138.P15269210978655546615

`char[A007448(n)-1]`
-/

namespace A132138.P15269210978655546615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A132138.P15269210978655546615

/-! ## A132138.P1315304946177988829

`char[A002977(n+1)-1]`
-/

namespace A132138.P1315304946177988829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002977 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A132138.P1315304946177988829

/-! ## A132138.P7677256607373426668

`char[A276786(n+1)-1]`
-/

namespace A132138.P7677256607373426668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276786 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A132138.P7677256607373426668

/-! ## A132138.P14568832522488528991

`char[A190807(n+1)-2]`
-/

namespace A132138.P14568832522488528991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190807 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A132138.P14568832522488528991

/-! ## A132138.P2974872876081117437

`A063524(A007448(n)-n)`
-/

namespace A132138.P2974872876081117437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A007448 n - (n : ℤ)).toNat

end

end A132138.P2974872876081117437

/-! ## A132138.P5041310094974331180

`A079944(A003817(A007448(n)-n))`
-/

namespace A132138.P5041310094974331180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A003817 (A007448 n - (n : ℤ)).toNat).toNat

end

end A132138.P5041310094974331180

/-! ## A132138.P7609366490797095972

`A010052((n+1)*A007448(n))`
-/

namespace A132138.P7609366490797095972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n + 1 : ℤ) * A007448 n).toNat

end

end A132138.P7609366490797095972

/-!
# A132140: Numbers containing no zeros in ternary representation and with an initial 1.

The programs for A132140, the canonical program `A132140.P1279910826299744396` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132140 has offset 1).

The definition of A132140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132140.P1279910826299744396

`record[3*a(floor(n/2))+n-2*floor(n/2)+1]` with `a(0)=1, a(1)=-1, a(2)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132140

/-- `record[3*a(floor(n/2))+n-2*floor(n/2)+1]` -/
def P1279910826299744396.Spec : Prop :=
  ∀ n, P1279910826299744396.a n = A132140 (n + 1)

theorem P1279910826299744396.correct : P1279910826299744396.Spec := by
  intro n
  simp only [A132140, Nat.add_sub_cancel]

end A132140

/-! ## A132140.P17149288330552354169

`A191110(n+1)+A083904(n+1)`
-/

namespace A132140.P17149288330552354169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191110 (n + 1) + A083904 (n + 1)

end

end A132140.P17149288330552354169

namespace A132140

/-- `A191110(n+1)+A083904(n+1)` -/
def P17149288330552354169.Spec : Prop :=
  ∀ n, P17149288330552354169.a n = A132140 (n + 1)

end A132140

/-! ## A132140.P7524418268624708559

`A005823(n+2)-A153775(n+1)`
-/

namespace A132140.P7524418268624708559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 2) - A153775 (n + 1)

end

end A132140.P7524418268624708559

namespace A132140

/-- `A005823(n+2)-A153775(n+1)` -/
def P7524418268624708559.Spec : Prop :=
  ∀ n, P7524418268624708559.a n = A132140 (n + 1)

theorem P7524418268624708559.correct : P7524418268624708559.Spec := by
  intro n
  simp only [A132140, Nat.add_sub_cancel, A132140.P7524418268624708559.a, A132140.P1279910826299744396.f1, A132140.P1279910826299744396.a, A005823, A005823.P15253501149959078210.a, A153775, A153775.P10416961851045421435.a, A005836, A005836.P12367569128854000442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132140

/-! ## A132140.P4852317503896497400

`A005836(n+2)+A003462(A000523(n+1))`
-/

namespace A132140.P4852317503896497400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2) + A003462 (A000523 (n + 1)).toNat

end

end A132140.P4852317503896497400

namespace A132140

/-- `A005836(n+2)+A003462(A000523(n+1))` -/
def P4852317503896497400.Spec : Prop :=
  ∀ n, P4852317503896497400.a n = A132140 (n + 1)

end A132140

/-! ## A132140.P12133070215844725840

`A005836(A053644(n+1))+A005836(n+2)`
-/

namespace A132140.P12133070215844725840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A053644 (n + 1)).toNat + A005836 (n + 2)

end

end A132140.P12133070215844725840

namespace A132140

/-- `A005836(A053644(n+1))+A005836(n+2)` -/
def P12133070215844725840.Spec : Prop :=
  ∀ n, P12133070215844725840.a n = A132140 (n + 1)

end A132140

/-! ## A132140.P810385440653427040

`A191110(n+1)+A005836(n+2)-A147991(n+1)`
-/

namespace A132140.P810385440653427040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191110 (n + 1) + (A005836 (n + 2) - A147991 (n + 1))

end

end A132140.P810385440653427040

namespace A132140

/-- `A191110(n+1)+A005836(n+2)-A147991(n+1)` -/
def P810385440653427040.Spec : Prop :=
  ∀ n, P810385440653427040.a n = A132140 (n + 1)

end A132140

/-! ## A132140.P9512007615736584077

`A005836(n+2)+A005836(n+2)-A153775(n+1)`
-/

namespace A132140.P9512007615736584077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2) + (A005836 (n + 2) - A153775 (n + 1))

end

end A132140.P9512007615736584077

namespace A132140

/-- `A005836(n+2)+A005836(n+2)-A153775(n+1)` -/
def P9512007615736584077.Spec : Prop :=
  ∀ n, P9512007615736584077.a n = A132140 (n + 1)

theorem P9512007615736584077.correct : P9512007615736584077.Spec := by
  intro n
  simp only [A132140, Nat.add_sub_cancel, A132140.P9512007615736584077.a, A132140.P1279910826299744396.f1, A132140.P1279910826299744396.a, A005836, A005836.P12367569128854000442.a, A153775, A153775.P10416961851045421435.a, A005823, A005823.P15253501149959078210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132140

/-! ## A132140.P6643472331840067295

`A191108(n+2)-(A191106(n+2)+A153775(n+1))`
-/

namespace A132140.P6643472331840067295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191108 (n + 2) - (A191106 (n + 2) + A153775 (n + 1))

end

end A132140.P6643472331840067295

namespace A132140

/-- `A191108(n+2)-(A191106(n+2)+A153775(n+1))` -/
def P6643472331840067295.Spec : Prop :=
  ∀ n, P6643472331840067295.a n = A132140 (n + 1)

theorem P6643472331840067295.correct : P6643472331840067295.Spec := by
  intro n
  simp only [A132140, Nat.add_sub_cancel, A132140.P6643472331840067295.a, A132140.P1279910826299744396.f1, A132140.P1279910826299744396.a, A153775, A153775.P10416961851045421435.a, A191106, A191106.P14318960782642290276.a, A191108, A191108.P16458009110707439268.a, A005823, A005823.P15253501149959078210.a, A005836, A005836.P12367569128854000442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132140

/-! ## A132140.P10423924874651373645

`A032924(A092754(n+1))`
-/

namespace A132140.P10423924874651373645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (A092754 (n + 1)).toNat

end

end A132140.P10423924874651373645

namespace A132140

/-- `A032924(A092754(n+1))` -/
def P10423924874651373645.Spec : Prop :=
  ∀ n, P10423924874651373645.a n = A132140 (n + 1)

end A132140

/-! ## A132140.P12256174058713247519

`A032924(2*n+1-A053645(n+1))`
-/

namespace A132140.P12256174058713247519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 ((2 * n + 1 : ℤ) - A053645 (n + 1)).toNat

end

end A132140.P12256174058713247519

namespace A132140

/-- `A032924(2*n+1-A053645(n+1))` -/
def P12256174058713247519.Spec : Prop :=
  ∀ n, P12256174058713247519.a n = A132140 (n + 1)

end A132140

/-! ## A132140.P14075692013534604946

`A032924(2*n+1-A160588(2*n))`
-/

namespace A132140.P14075692013534604946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 ((2 * n + 1 : ℤ) - A160588 (2 * n)).toNat

end

end A132140.P14075692013534604946

namespace A132140

/-- `A032924(2*n+1-A160588(2*n))` -/
def P14075692013534604946.Spec : Prop :=
  ∀ n, P14075692013534604946.a n = A132140 (n + 1)

end A132140

/-! ## A132140.P14692324161666201780

`record[A117966(A244042(n)+1+n)+n]`
-/

namespace A132140.P14692324161666201780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A244042 n + 1 + (n : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132140.P14692324161666201780

namespace A132140

/-- `record[A117966(A244042(n)+1+n)+n]` -/
def P14692324161666201780.Spec : Prop :=
  ∀ n, P14692324161666201780.a n = A132140 (n + 1)

end A132140

/-! ## A132140.P13418655970637002594

`A255588(A259566(n+1))`
-/

namespace A132140.P13418655970637002594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A259566 (n + 1)).toNat

end

end A132140.P13418655970637002594

namespace A132140

/-- `A255588(A259566(n+1))` -/
def P13418655970637002594.Spec : Prop :=
  ∀ n, P13418655970637002594.a n = A132140 (n + 1)

end A132140

/-! ## A132140.P1676074458166850558

`A073849(A005836(n+2))`
-/

namespace A132140.P1676074458166850558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073849 (A005836 (n + 2)).toNat

end

end A132140.P1676074458166850558

namespace A132140

/-- `A073849(A005836(n+2))` -/
def P1676074458166850558.Spec : Prop :=
  ∀ n, P1676074458166850558.a n = A132140 (n + 1)

end A132140

/-! ## A132140.P15058378891964439970

`A132141(record[A117966(n+1)])`
-/

namespace A132140.P15058378891964439970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A132140.P15058378891964439970

namespace A132140

/-- `A132141(record[A117966(n+1)])` -/
def P15058378891964439970.Spec : Prop :=
  ∀ n, P15058378891964439970.a n = A132140 (n + 1)

end A132140

/-! ## A132140.P239764641904818430

`record[A117967(A274601(n+1))]`
-/

namespace A132140.P239764641904818430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (A274601 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132140.P239764641904818430

namespace A132140

/-- `record[A117967(A274601(n+1))]` -/
def P239764641904818430.Spec : Prop :=
  ∀ n, P239764641904818430.a n = A132140 (n + 1)

end A132140

/-! ## A132140.P14468129724084001499

`record[A117967(A338247(n+1))]`
-/

namespace A132140.P14468129724084001499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (A338247 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132140.P14468129724084001499

namespace A132140

/-- `record[A117967(A338247(n+1))]` -/
def P14468129724084001499.Spec : Prop :=
  ∀ n, P14468129724084001499.a n = A132140 (n + 1)

end A132140

/-! ## A132140.P7606677096295851385

`∩[A032924(n+1), A132141(n+1)]`
-/

namespace A132140.P7606677096295851385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132140.P7606677096295851385

namespace A132140

/-- `∩[A032924(n+1), A132141(n+1)]` -/
def P7606677096295851385.Spec : Prop :=
  ∀ n, (P7606677096295851385.a n : ℤ) = A132140 (n + 1)

end A132140

/-! ## A132140.P15828223286471517427

`record[A190906(2*n+1)+n]`
-/

namespace A132140.P15828223286471517427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190906 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132140.P15828223286471517427

namespace A132140

/-- `record[A190906(2*n+1)+n]` -/
def P15828223286471517427.Spec : Prop :=
  ∀ n, P15828223286471517427.a n = A132140 (n + 1)

end A132140

/-! ## A132140.P9420400083519419110

`A372783(A191110(n+1))`
-/

namespace A132140.P9420400083519419110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372783 (A191110 (n + 1)).toNat

end

end A132140.P9420400083519419110

namespace A132140

/-- `A372783(A191110(n+1))` -/
def P9420400083519419110.Spec : Prop :=
  ∀ n, P9420400083519419110.a n = A132140 (n + 1)

end A132140

/-!
# A132141: Numbers whose ternary representation begins with 1.

The programs for A132141, the canonical program `A132141.P14786770210645261491` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132141 has offset 1).

The definition of A132141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132141.P7595914389526732651

`lt[n, A004488(n)]`
-/

namespace A132141.P7595914389526732651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132141.P7595914389526732651

namespace A132141

/-- `lt[n, A004488(n)]` -/
def P7595914389526732651.Spec : Prop :=
  ∀ n, (P7595914389526732651.a n : ℤ) = A132141 (n + 1)

end A132141

/-! ## A132141.P2980118925095035402

`record[A330740(n+1)]`
-/

namespace A132141.P2980118925095035402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132141.P2980118925095035402

namespace A132141

/-- `record[A330740(n+1)]` -/
def P2980118925095035402.Spec : Prop :=
  ∀ n, P2980118925095035402.a n = A132141 (n + 1)

end A132141

/-! ## A132141.P3770781839650635261

`lt[1, A117966(n)+1]`
-/

namespace A132141.P3770781839650635261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132141.P3770781839650635261

namespace A132141

/-- `lt[1, A117966(n)+1]` -/
def P3770781839650635261.Spec : Prop :=
  ∀ n, (P3770781839650635261.a n : ℤ) = A132141 (n + 1)

end A132141

/-! ## A132141.P2550011992919990087

`lt[2*A300222(n), n]`
-/

namespace A132141.P2550011992919990087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300222 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A132141.P2550011992919990087

namespace A132141

/-- `lt[2*A300222(n), n]` -/
def P2550011992919990087.Spec : Prop :=
  ∀ n, (P2550011992919990087.a n : ℤ) = A132141 (n + 1)

end A132141

/-! ## A132141.P6115798392795119534

`(A297251(n+1)-2)/3`
-/

namespace A132141.P6115798392795119534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297251 (n + 1) - 2 : ℚ) / 3

end

end A132141.P6115798392795119534

namespace A132141

/-- `(A297251(n+1)-2)/3` -/
def P6115798392795119534.Spec : Prop :=
  ∀ n, P6115798392795119534.a n = (A132141 (n + 1) : ℚ)

end A132141

/-! ## A132141.P14786770210645261491

`A157671(n+1)-A132171(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A132141

/-- `A157671(n+1)-A132171(n)` -/
def P14786770210645261491.Spec : Prop :=
  ∀ n, P14786770210645261491.a n = A132141 (n + 1)

theorem P14786770210645261491.correct : P14786770210645261491.Spec := by
  intro n
  simp only [A132141, Nat.add_sub_cancel]

end A132141

/-! ## A132141.P3206207920048864580

`comp[A117967(n)+n]`
-/

namespace A132141.P3206207920048864580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132141.P3206207920048864580

namespace A132141

/-- `comp[A117967(n)+n]` -/
def P3206207920048864580.Spec : Prop :=
  ∀ n, (P3206207920048864580.a n : ℤ) = A132141 (n + 1)

end A132141

/-! ## A132141.P9147533940485838417

`A117967(A338245(n+1))`
-/

namespace A132141.P9147533940485838417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (A338245 (n + 1)).toNat

end

end A132141.P9147533940485838417

namespace A132141

/-- `A117967(A338245(n+1))` -/
def P9147533940485838417.Spec : Prop :=
  ∀ n, P9147533940485838417.a n = A132141 (n + 1)

end A132141

/-! ## A132141.P13871164998265917237

`A365459(A157671(n+1))`
-/

namespace A132141.P13871164998265917237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365459 (A157671 (n + 1)).toNat

end

end A132141.P13871164998265917237

namespace A132141

/-- `A365459(A157671(n+1))` -/
def P13871164998265917237.Spec : Prop :=
  ∀ n, P13871164998265917237.a n = A132141 (n + 1)

end A132141

/-! ## A132141.P3182599865744868758

`A374336(A365458(2*n+1))+n+1`
-/

namespace A132141.P3182599865744868758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374336 (A365458 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A132141.P3182599865744868758

namespace A132141

/-- `A374336(A365458(2*n+1))+n+1` -/
def P3182599865744868758.Spec : Prop :=
  ∀ n, P3182599865744868758.a n = A132141 (n + 1)

end A132141

/-! ## A132141.P16317428727652859899

`lt[n, 2*A167877(n)]`
-/

namespace A132141.P16317428727652859899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132141.P16317428727652859899

namespace A132141

/-- `lt[n, 2*A167877(n)]` -/
def P16317428727652859899.Spec : Prop :=
  ∀ n, (P16317428727652859899.a n : ℤ) = A132141 (n + 1)

end A132141

/-! ## A132141.P13944952539411982801

`eq[n, A330740(A028310(n))]`
-/

namespace A132141.P13944952539411982801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132141.P13944952539411982801

namespace A132141

/-- `eq[n, A330740(A028310(n))]` -/
def P13944952539411982801.Spec : Prop :=
  ∀ n, (P13944952539411982801.a n : ℤ) = A132141 (n + 1)

end A132141

/-! ## A132141.P9487929529358578794

`lt[0, A333773(n)]`
-/

namespace A132141.P9487929529358578794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132141.P9487929529358578794

namespace A132141

/-- `lt[0, A333773(n)]` -/
def P9487929529358578794.Spec : Prop :=
  ∀ n, (P9487929529358578794.a n : ℤ) = A132141 (n + 1)

end A132141

/-! ## A132141.P17212832040341792365

`lt[n, A060587(n)]`
-/

namespace A132141.P17212832040341792365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060587 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132141.P17212832040341792365

namespace A132141

/-- `lt[n, A060587(n)]` -/
def P17212832040341792365.Spec : Prop :=
  ∀ n, (P17212832040341792365.a n : ℤ) = A132141 (n + 1)

end A132141

/-! ## A132141.P12301664625214254698

`lt[n, 2*A244042(n)]`
-/

namespace A132141.P12301664625214254698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244042 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132141.P12301664625214254698

namespace A132141

/-- `lt[n, 2*A244042(n)]` -/
def P12301664625214254698.Spec : Prop :=
  ∀ n, (P12301664625214254698.a n : ℤ) = A132141 (n + 1)

end A132141

/-! ## A132141.P2978315149107098232

`lt[A353158(n), A167877(n)]`
-/

namespace A132141.P2978315149107098232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353158 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A132141.P2978315149107098232

namespace A132141

/-- `lt[A353158(n), A167877(n)]` -/
def P2978315149107098232.Spec : Prop :=
  ∀ n, (P2978315149107098232.a n : ℤ) = A132141 (n + 1)

end A132141

/-! ## A132141.P12281850651285602280

`A117968(n+1)-A338245(A338245(n+1))`
-/

namespace A132141.P12281850651285602280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117968 (n + 1) - A338245 (A338245 (n + 1)).toNat

end

end A132141.P12281850651285602280

namespace A132141

/-- `A117968(n+1)-A338245(A338245(n+1))` -/
def P12281850651285602280.Spec : Prop :=
  ∀ n, P12281850651285602280.a n = A132141 (n + 1)

end A132141

/-! ## A132141.P337375068896129844

`lt[A343766(n)+1, 1]`
-/

namespace A132141.P337375068896129844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343766 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A132141.P337375068896129844

namespace A132141

/-- `lt[A343766(n)+1, 1]` -/
def P337375068896129844.Spec : Prop :=
  ∀ n, (P337375068896129844.a n : ℤ) = A132141 (n + 1)

end A132141

/-! ## A132141.P8588613891543798693

`eq[n, A361945(A171960(n))]`
-/

namespace A132141.P8588613891543798693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361945 (A171960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132141.P8588613891543798693

namespace A132141

/-- `eq[n, A361945(A171960(n))]` -/
def P8588613891543798693.Spec : Prop :=
  ∀ n, (P8588613891543798693.a n : ℤ) = A132141 (n + 1)

end A132141

/-!
# A132142: Complement of A002977.

The programs for A132142, there is no canonical definition to state claims against.
-/

/-! ## A132142.P10640577494941002804

`comp[A190807(n+1)-1]`
-/

namespace A132142.P10640577494941002804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190807 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132142.P10640577494941002804

/-! ## A132142.P7508121949174325800

`lt[A132138(n+1), 1]+1`
-/

namespace A132142.P7508121949174325800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132138 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A132142.P7508121949174325800

/-! ## A132142.P18432689892296429092

`record[(n+2)%A007448(n+1)]`
-/

namespace A132142.P18432689892296429092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A007448 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132142.P18432689892296429092

/-! ## A132142.P16558202313404969736

`lt[n*char[A007448(n)], n]`
-/

namespace A132142.P16558202313404969736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A132142.P16558202313404969736

/-! ## A132142.P11080504200647340290

`lt[n*char[A276786(n+1)], n]`
-/

namespace A132142.P11080504200647340290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276786 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A132142.P11080504200647340290

/-! ## A132142.P2006828112401465080

`eq[A007448(abs(1-n)), A007448(n)]`
-/

namespace A132142.P2006828112401465080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132142.P2006828112401465080

/-! ## A132142.P10142921145145768982

`eq[1, A006017(Δ[A007448(n+1)])]+2`
-/

namespace A132142.P10142921145145768982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006017 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A132142.P10142921145145768982

/-! ## A132142.P8931307306287575083

`eq[1, A007448(Δ[A007448(n+1)])]+2`
-/

namespace A132142.P8931307306287575083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A132142.P8931307306287575083

/-! ## A132142.P7984714660617627498

`record[A065190(A065190(n+2)-A132138(n+2))]`
-/

namespace A132142.P7984714660617627498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A065190 (n + 2) - A132138 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132142.P7984714660617627498

/-! ## A132142.P14578167395250375655

`comp[A132139(n+1)]`
-/

namespace A132142.P14578167395250375655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132142.P14578167395250375655

/-! ## A132142.P17064321262270899356

`lt[char[A007448(n)], n/A000108(n)]`
-/

namespace A132142.P17064321262270899356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000108 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A132142.P17064321262270899356

/-!
# A132143: Prime numbers P such that (P^k-2) is not divisible by 35(=A119691(1)) for any value of k.

The programs for A132143, the canonical program `A132143.P10521542141353229339` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132143 has offset 1).

The definition of A132143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132143.P10521542141353229339

`∪[A038872(n+1), A045398(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A132143

/-- `∪[A038872(n+1), A045398(n+1)]` -/
def P10521542141353229339.Spec : Prop :=
  ∀ n, (P10521542141353229339.a n : ℤ) = A132143 (n + 1)

theorem P10521542141353229339.correct : P10521542141353229339.Spec := by
  intro n
  simp only [A132143, Nat.add_sub_cancel]

end A132143

/-! ## A132143.P15783607426977250454

`∪[A045398(n+1), A045468(n+1)]`
-/

namespace A132143.P15783607426977250454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132143.P15783607426977250454

namespace A132143

/-- `∪[A045398(n+1), A045468(n+1)]` -/
def P15783607426977250454.Spec : Prop :=
  ∀ n, (P15783607426977250454.a n : ℤ) = A132143 (n + 1)

end A132143

/-! ## A132143.P10209187414018639882

`∪[A045398(n+1), A106881(n+1)]`
-/

namespace A132143.P10209187414018639882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132143.P10209187414018639882

namespace A132143

/-- `∪[A045398(n+1), A106881(n+1)]` -/
def P10209187414018639882.Spec : Prop :=
  ∀ n, (P10209187414018639882.a n : ℤ) = A132143 (n + 1)

end A132143

/-! ## A132143.P3111019698215688611

`∪[A045398(n+1), A191026(n+1)]`
-/

namespace A132143.P3111019698215688611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132143.P3111019698215688611

namespace A132143

/-- `∪[A045398(n+1), A191026(n+1)]` -/
def P3111019698215688611.Spec : Prop :=
  ∀ n, (P3111019698215688611.a n : ℤ) = A132143 (n + 1)

end A132143

/-! ## A132143.P10558807976786615703

`A133956(lt[A122890(3*n), C(n², 2)/2])`
-/

namespace A132143.P10558807976786615703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 (3 * n)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133956 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A132143.P10558807976786615703

namespace A132143

/-- `A133956(lt[A122890(3*n), C(n², 2)/2])` -/
def P10558807976786615703.Spec : Prop :=
  ∀ n, P10558807976786615703.a n = A132143 (n + 1)

end A132143

/-!
# A132144: Numbers that can't be expressed as the sum of a prime number and a Fibonacci number (0 is considered to be a Fibonacci number).

The programs for A132144, there is no canonical definition to state claims against.
-/

/-! ## A132144.P17807793946488383009

`filter[A132146(n+1), A005171(#)]`
-/

namespace A132144.P17807793946488383009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A132144.P17807793946488383009

/-! ## A132144.P98041422395165531

`filter[A132146(n+1), A292438(#)]`
-/

namespace A132144.P98041422395165531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A132144.P98041422395165531

/-! ## A132144.P7279203626255808985

`∩[A018252(n+1), A132146(n+1)]`
-/

namespace A132144.P7279203626255808985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132144.P7279203626255808985

/-! ## A132144.P2739222931303830053

`∩[A132146(n+1), A141468(n+1)]`
-/

namespace A132144.P2739222931303830053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132144.P2739222931303830053

/-! ## A132144.P2742459613137591018

`∩[A132146(n+1), A164276(n+1)]`
-/

namespace A132144.P2742459613137591018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132144.P2742459613137591018

/-! ## A132144.P5391791013992565770

`∩[A056653(n+1), A132146(n+1)]`
-/

namespace A132144.P5391791013992565770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132144.P5391791013992565770

/-! ## A132144.P14794784285526784325

`record[A191558(A132146(n+1))]`
-/

namespace A132144.P14794784285526784325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A132146 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132144.P14794784285526784325

/-!
# A132145: Numbers that can be presented as a sum of a prime number and a Fibonacci number (0 is considered to be a Fibonacci number).

The programs for A132145, there is no canonical definition to state claims against.
-/

/-! ## A132145.P3021126169210513765

`comp[A132144(n+1)-1]+1`
-/

namespace A132145.P3021126169210513765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132144 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A132145.P3021126169210513765

/-! ## A132145.P4916436135436539435

`comp[A191558(A132146(n+1))]`
-/

namespace A132145.P4916436135436539435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A132146 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132145.P4916436135436539435

/-! ## A132145.P14248461810789498357

`∪[A000040(n+1), A132147(n+1)]`
-/

namespace A132145.P14248461810789498357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132145.P14248461810789498357

/-! ## A132145.P14339761977508397359

`∪[p?[A131511(n+1)], A132147(n+1)]`
-/

namespace A132145.P14339761977508397359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131511 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A132145.P14339761977508397359

/-! ## A132145.P13100777592436871648

`∪[p?[A132146(n+1)], A132147(n+1)]`
-/

namespace A132145.P13100777592436871648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132146 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A132145.P13100777592436871648

/-! ## A132145.P270598902388736317

`comp[A286354(∑[A319576(n)])]`
-/

namespace A132145.P270598902388736317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319576 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132145.P270598902388736317

/-! ## A132145.P3597574427201933094

`comp[A128890(Δ[A301537(n+1)])]`
-/

namespace A132145.P3597574427201933094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301537 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128890 (f2 (n + 1) - f2 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132145.P3597574427201933094

/-! ## A132145.P5564845916419063733

`∪[A007989(n), A090334(n+1)]`
-/

namespace A132145.P5564845916419063733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132145.P5564845916419063733

/-! ## A132145.P15759024011774723313

`A204166(A008033(n+1))`
-/

namespace A132145.P15759024011774723313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A008033 (n + 1)).toNat

end

end A132145.P15759024011774723313

/-!
# A132146: Numbers that can't be presented as a sum of a prime number and a Fibonacci number (0 is not considered to be a Fibonacci number).

The programs for A132146, there is no canonical definition to state claims against.
-/

/-! ## A132146.P11780274516809447689

`eq[A010051(n+1), A375642(n+1)]+1`
-/

namespace A132146.P11780274516809447689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A132146.P11780274516809447689

/-!
# A132147: Numbers that are the sum of a prime number and a positive Fibonacci number.

The programs for A132147, there is no canonical definition to state claims against.
-/

/-! ## A132147.P9159593479460997589

`comp[A132146(n+1)-1]+1`
-/

namespace A132147.P9159593479460997589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132146 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A132147.P9159593479460997589

/-! ## A132147.P7103241208308746329

`eq[char[A132146(n+1)], A000007(n)]`
-/

namespace A132147.P7103241208308746329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132146 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A132147.P7103241208308746329

/-! ## A132147.P10454964352888467206

`eq[char[A132146(n+1)], A000038(n)]`
-/

namespace A132147.P10454964352888467206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132146 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A132147.P10454964352888467206

/-! ## A132147.P11283075937575039121

`eq[char[A132146(n+1)], A169585(n)]`
-/

namespace A132147.P11283075937575039121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132146 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A132147.P11283075937575039121

/-! ## A132147.P12903232414151318071

`eq[A065033(2*n)-n, char[A132146(n+1)]]`
-/

namespace A132147.P12903232414151318071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132146 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A132147.P12903232414151318071

/-! ## A132147.P902951920587218937

`eq[A151575(n)%2, char[A132146(n+1)]]`
-/

namespace A132147.P902951920587218937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151575 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132146 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A132147.P902951920587218937

/-!
# A132148: Triangular array T(n,k) = C(n,k)*Lucas(n-k), 0 <= k <= n.

The programs for A132148, the canonical program `A132148.P10087144429743258918` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132148 has offset 0).

The definition of A132148 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))*A000032(row(n)-col(n))` (program `A132148.P10087144429743258918`, by `A132148.P10087144429743258918.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132148.P10087144429743258918

`C(row(n), col(n))*A000032(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A132148

/-- `C(row(n), col(n))*A000032(row(n)-col(n))` -/
def P10087144429743258918.Spec : Prop :=
  ∀ n, P10087144429743258918.a n = A132148 n

theorem P10087144429743258918.correct : P10087144429743258918.Spec := by
  intro n
  simp only [A132148]

end A132148

/-! ## A132148.P16947442722887091058

`2*A094441(n)-A171731(n)`
-/

namespace A132148.P16947442722887091058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094441 n - A171731 n

end

end A132148.P16947442722887091058

namespace A132148

/-- `2*A094441(n)-A171731(n)` -/
def P16947442722887091058.Spec : Prop :=
  ∀ n, P16947442722887091058.a n = A132148 n

end A132148

/-! ## A132148.P3285758219306203646

`4*A094441(n)-A094443(n)`
-/

namespace A132148.P3285758219306203646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A094441 n - A094443 n

end

end A132148.P3285758219306203646

namespace A132148

/-- `4*A094441(n)-A094443(n)` -/
def P3285758219306203646.Spec : Prop :=
  ∀ n, P3285758219306203646.a n = A132148 n

end A132148

/-! ## A132148.P7628185839949831552

`(7*A094443(n))%A094444(n)`
-/

namespace A132148.P7628185839949831552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (7 * A094443 n) (A094444 n)

end

end A132148.P7628185839949831552

namespace A132148

/-- `(7*A094443(n))%A094444(n)` -/
def P7628185839949831552.Spec : Prop :=
  ∀ n, P7628185839949831552.a n = A132148 n

end A132148

/-! ## A132148.P7269694049470316132

`A007318(n)*A000032(A025581(n))`
-/

namespace A132148.P7269694049470316132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000032 (A025581 n).toNat

end

end A132148.P7269694049470316132

namespace A132148

/-- `A007318(n)*A000032(A025581(n))` -/
def P7269694049470316132.Spec : Prop :=
  ∀ n, P7269694049470316132.a n = A132148 n

end A132148

/-! ## A132148.P6318954596326839074

`A007318(n)*A302126(A099375(n))`
-/

namespace A132148.P6318954596326839074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A302126 (A099375 n).toNat

end

end A132148.P6318954596326839074

namespace A132148

/-- `A007318(n)*A302126(A099375(n))` -/
def P6318954596326839074.Spec : Prop :=
  ∀ n, P6318954596326839074.a n = A132148 n

end A132148

/-! ## A132148.P904672689343097970

`abs(A000032(A025581(n))*A130595(n))`
-/

namespace A132148.P904672689343097970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000032 (A025581 n).toNat * A130595 n|

end

end A132148.P904672689343097970

namespace A132148

/-- `abs(A000032(A025581(n))*A130595(n))` -/
def P904672689343097970.Spec : Prop :=
  ∀ n, P904672689343097970.a n = A132148 n

end A132148

/-! ## A132148.P3460916760110741099

`sqrt(A008459(n))*A000032(A025581(n))`
-/

namespace A132148.P3460916760110741099
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A000032 (A025581 n).toNat : ℝ)

end

end A132148.P3460916760110741099

namespace A132148

/-- `sqrt(A008459(n))*A000032(A025581(n))` -/
def P3460916760110741099.Spec : Prop :=
  ∀ n, P3460916760110741099.a n = (A132148 n : ℝ)

end A132148

/-! ## A132148.P9013657568944506543

`A007318(n)*A000032(log2(A130321(n)))`
-/

namespace A132148.P9013657568944506543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000032 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A132148.P9013657568944506543

namespace A132148

/-- `A007318(n)*A000032(log2(A130321(n)))` -/
def P9013657568944506543.Spec : Prop :=
  ∀ n, P9013657568944506543.a n = A132148 n

end A132148

/-! ## A132148.P5210265365549032520

`A000032(A025581(n))*Δ[A102363(n)]`
-/

namespace A132148.P5210265365549032520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A025581 n).toNat * (f1 (n + 1) - f1 n)

end

end A132148.P5210265365549032520

namespace A132148

/-- `A000032(A025581(n))*Δ[A102363(n)]` -/
def P5210265365549032520.Spec : Prop :=
  ∀ n, P5210265365549032520.a n = A132148 n

end A132148

/-! ## A132148.P7855314487505423951

`(A014473(n)+1)*A000032(A025581(n))`
-/

namespace A132148.P7855314487505423951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A000032 (A025581 n).toNat

end

end A132148.P7855314487505423951

namespace A132148

/-- `(A014473(n)+1)*A000032(A025581(n))` -/
def P7855314487505423951.Spec : Prop :=
  ∀ n, P7855314487505423951.a n = A132148 n

end A132148

/-! ## A132148.P14611319026380691891

`A007318(n)*A000032(val(A130321(n), 2))`
-/

namespace A132148.P14611319026380691891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000032 (SequenceMachineLib.valuation (A130321 n).toNat 2)

end

end A132148.P14611319026380691891

namespace A132148

/-- `A007318(n)*A000032(val(A130321(n), 2))` -/
def P14611319026380691891.Spec : Prop :=
  ∀ n, P14611319026380691891.a n = A132148 n

end A132148

/-! ## A132148.P10579513939278163141

`ceil(A134059(n)/3)*A000032(A025581(n))`
-/

namespace A132148.P10579513939278163141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A000032 (A025581 n).toNat

end

end A132148.P10579513939278163141

namespace A132148

/-- `ceil(A134059(n)/3)*A000032(A025581(n))` -/
def P10579513939278163141.Spec : Prop :=
  ∀ n, P10579513939278163141.a n = A132148 n

end A132148

/-! ## A132148.P7871078507335307812

`ceil(A135087(n)/4)*A000032(A025581(n))`
-/

namespace A132148.P7871078507335307812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135087 n : ℚ) / 4⌉ * A000032 (A025581 n).toNat

end

end A132148.P7871078507335307812

namespace A132148

/-- `ceil(A135087(n)/4)*A000032(A025581(n))` -/
def P7871078507335307812.Spec : Prop :=
  ∀ n, P7871078507335307812.a n = A132148 n

end A132148

/-! ## A132148.P8672715638734523603

`ceil(A135089(n)/5)*A000032(A025581(n))`
-/

namespace A132148.P8672715638734523603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135089 n : ℚ) / 5⌉ * A000032 (A025581 n).toNat

end

end A132148.P8672715638734523603

namespace A132148

/-- `ceil(A135089(n)/5)*A000032(A025581(n))` -/
def P8672715638734523603.Spec : Prop :=
  ∀ n, P8672715638734523603.a n = A132148 n

end A132148

/-! ## A132148.P14081934524829980634

`A000032(A004736(n+1)-1)*A007318(n)`
-/

namespace A132148.P14081934524829980634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A004736 (n + 1) - 1).toNat * A007318 n

end

end A132148.P14081934524829980634

namespace A132148

/-- `A000032(A004736(n+1)-1)*A007318(n)` -/
def P14081934524829980634.Spec : Prop :=
  ∀ n, P14081934524829980634.a n = A132148 n

end A132148

/-! ## A132148.P219952067878835804

`A134059(A028310(n))/3*A000032(A025581(n))`
-/

namespace A132148.P219952067878835804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 * (A000032 (A025581 n).toNat : ℚ)

end

end A132148.P219952067878835804

namespace A132148

/-- `A134059(A028310(n))/3*A000032(A025581(n))` -/
def P219952067878835804.Spec : Prop :=
  ∀ n, P219952067878835804.a n = (A132148 n : ℚ)

end A132148

/-! ## A132148.P6362417685158877861

`(A285118(n)+A285116(n))*A000032(A025581(n))`
-/

namespace A132148.P6362417685158877861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A000032 (A025581 n).toNat

end

end A132148.P6362417685158877861

namespace A132148

/-- `(A285118(n)+A285116(n))*A000032(A025581(n))` -/
def P6362417685158877861.Spec : Prop :=
  ∀ n, P6362417685158877861.a n = A132148 n

end A132148

/-! ## A132148.P9915039034202630775

`ceil(A134060(n)/3)*A000032(A025581(n))`
-/

namespace A132148.P9915039034202630775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉ * A000032 (A025581 n).toNat

end

end A132148.P9915039034202630775

namespace A132148

/-- `ceil(A134060(n)/3)*A000032(A025581(n))` -/
def P9915039034202630775.Spec : Prop :=
  ∀ n, P9915039034202630775.a n = A132148 n

end A132148

/-!
# A132151: Period 8: repeat [0, 1, 0, 0, 0, 0, -1, 0].

The programs for A132151, the canonical program `A132151.P9000291094960769081` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132151 has offset 0).

The definition of A132151 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A132151.anchor (n : ℕ) : A132151 n = [0, 1, 0, 0, 0, 0, -1, 0].getD (n % 8) 0` in `Proof.A132.A132151`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132151.P9000291094960769081

`floor((n-1)/8)-floor((n-2)/8)-floor((n-6)/8)+floor((n-7)/8)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132151

/-- `floor((n-1)/8)-floor((n-2)/8)-floor((n-6)/8)+floor((n-7)/8)` -/
def P9000291094960769081.Spec : Prop :=
  ∀ n, P9000291094960769081.a n = A132151 n

theorem P9000291094960769081.correct : P9000291094960769081.Spec := by
  intro n
  simp only [A132151]

end A132151

/-!
# A132152: a(4n+k) = 4a(4n+k-1)-6a(4n+k-2)+4a(4n+k-3), for k = 0,1,2; 2*a(4n+3) = 7a(4n+2)-8(4n+1)+2a(4n), with a(0) = a(1) = a(2) = 0, a(3) = 1.

The programs for A132152, the canonical program `A132152.P12619834373522506519` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132152 has offset 0).

The definition of A132152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132152.P12619834373522506519

`10*a(n-4)+16*a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=4, a(5)=10, a(6)=20, a(7)=34, a(8)=56`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132152

/-- `10*a(n-4)+16*a(n-8)` -/
def P12619834373522506519.Spec : Prop :=
  ∀ n, (P12619834373522506519.a n : ℤ) = A132152 n

theorem P12619834373522506519.correct : P12619834373522506519.Spec := by
  intro n
  simp only [A132152]

end A132152

/-! ## A132152.P16042017980054025155

`and(A336932(5*3^n)-(n+1), C(n, 3))`
-/

namespace A132152.P16042017980054025155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A336932 (5 * 3 ^ n) - (n + 1 : ℤ)) (Nat.choose n 3 : ℤ)

end

end A132152.P16042017980054025155

namespace A132152

/-- `and(A336932(5*3^n)-(n+1), C(n, 3))` -/
def P16042017980054025155.Spec : Prop :=
  ∀ n, P16042017980054025155.a n = A132152 n

end A132152

/-! ## A132152.P6386471492407083155

`A123497(A123502(C(n, 3)))`
-/

namespace A132152.P6386471492407083155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123497 (A123502 (Nat.choose n 3)).toNat

end

end A132152.P6386471492407083155

namespace A132152

/-- `A123497(A123502(C(n, 3)))` -/
def P6386471492407083155.Spec : Prop :=
  ∀ n, P6386471492407083155.a n = A132152 n

end A132152

/-! ## A132152.P9895618568618753791

`A180198(A180198(C(n, 3)))`
-/

namespace A132152.P9895618568618753791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180198 (A180198 (Nat.choose n 3)).toNat

end

end A132152.P9895618568618753791

namespace A132152

/-- `A180198(A180198(C(n, 3)))` -/
def P9895618568618753791.Spec : Prop :=
  ∀ n, P9895618568618753791.a n = A132152 n

end A132152

/-! ## A132152.P14041279077953695937

`∑[∑[A353862(A005316(n))]]`
-/

namespace A132152.P14041279077953695937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353862 (A005316 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132152.P14041279077953695937

namespace A132152

/-- `∑[∑[A353862(A005316(n))]]` -/
def P14041279077953695937.Spec : Prop :=
  ∀ n, P14041279077953695937.a n = A132152 n

end A132152

/-!
# A132153: Largest prime <= square root of 10^n.

The programs for A132153, there is no canonical definition to state claims against.
-/

/-! ## A132153.P7159301799718517864

`sqrt(A175734(n+1))`
-/

namespace A132153.P7159301799718517864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A175734 (n + 1) : ℝ)

end

end A132153.P7159301799718517864

/-! ## A132153.P9461264576763170404

`A000040(A122121(n+1))`
-/

namespace A132153.P9461264576763170404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A122121 (n + 1)).toNat

end

end A132153.P9461264576763170404

/-! ## A132153.P8748784818958873251

`root(A175734(n+1), A000040((-1)^(2*n)))`
-/

namespace A132153.P8748784818958873251
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A175734 (n + 1) : ℝ) ^ (1 / (A000040 ((-1) ^ (2 * n)).toNat : ℝ))

end

end A132153.P8748784818958873251

/-! ## A132153.P8177875947637839201

`A174394(2*(n+1))`
-/

namespace A132153.P8177875947637839201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174394 (2 * (n + 1))

end

end A132153.P8177875947637839201

/-! ## A132153.P3480589943571386539

`and(-1, A174394(n+2+n))`
-/

namespace A132153.P3480589943571386539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A174394 (n + 2 + n))

end

end A132153.P3480589943571386539

/-!
# A132154: Where records occur in A006511.

The programs for A132154, there is no canonical definition to state claims against.
-/

/-! ## A132154.P15238665248642495532

`record[A006511(n+1)]-record[A006511(n+1)-(n+1)]`
-/

namespace A132154.P15238665248642495532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A132154.P15238665248642495532

/-! ## A132154.P13134767585978756090

`A264810(A036912(n+1))`
-/

namespace A132154.P13134767585978756090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (A036912 (n + 1)).toNat

end

end A132154.P13134767585978756090

/-! ## A132154.P227994613581694670

`A264810(A000010(record[A057635(n+1)]))`
-/

namespace A132154.P227994613581694670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A132154.P227994613581694670

/-! ## A132154.P3711873947549224772

`A264810(record[A131883((2*n)^(n%2))])`
-/

namespace A132154.P3711873947549224772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 ((2 * n) ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A132154.P3711873947549224772

/-! ## A132154.P10101632326623594658

`A264810(record[A131883(n+1)-A077752(n)])`
-/

namespace A132154.P10101632326623594658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (n + 1) - A077752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A132154.P10101632326623594658

/-!
# A132155: a(n) = A099009(n)/9.

The programs for A132155, there is no canonical definition to state claims against.
-/

/-! ## A132155.P12315825929114836162

`A099009(n+1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132155.P12315825929114836162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099009 (n + 1) : ℚ) / 9

end

end A132155.P12315825929114836162

/-! ## A132155.P3548383312467976305

`A164718(eq[1, A164719(n+1)]+1)/9`
-/

namespace A132155.P3548383312467976305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 9

end

end A132155.P3548383312467976305

/-! ## A132155.P7822996927575545639

`A164718(record[(n+1)/A164719(n+1)])/9`
-/

namespace A132155.P7822996927575545639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A164719 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164718 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat : ℚ) / 9

end

end A132155.P7822996927575545639

/-! ## A132155.P3643086071652514040

`A164716(record[(n+1)/A164717(n+1)²])/9`
-/

namespace A132155.P3643086071652514040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A164717 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164716 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat : ℚ) / 9

end

end A132155.P3643086071652514040

/-! ## A132155.P10536488871629858924

`record[(2-A164717(n+1))*A164716(n+1)]/9`
-/

namespace A132155.P10536488871629858924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A164717 (n + 1)) * A164716 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 9

end

end A132155.P10536488871629858924

/-! ## A132155.P10334247502679232202

`A164716(record[gcd(n+1, A164717(n+1)+n)])/9`
-/

namespace A132155.P10334247502679232202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A164717 (n + 1) + (n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164716 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 9

end

end A132155.P10334247502679232202

/-!
# A132157: a(n) = number of times n occurs in A063882.

The programs for A132157, the canonical program `A132157.P13318743662329449319` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132157 has offset 1).

The definition of A132157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132157.P13318743662329449319

`Δ[A202014(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A132157

/-- `Δ[A202014(n+1)]` -/
def P13318743662329449319.Spec : Prop :=
  ∀ n, P13318743662329449319.a n = A132157 (n + 1)

theorem P13318743662329449319.correct : P13318743662329449319.Spec := by
  intro n
  simp only [A132157, Nat.add_sub_cancel]

end A132157

/-! ## A132157.P17534679898931676406

`abs(Δ[A202014(A008619(2*n))])`
-/

namespace A132157.P17534679898931676406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202014 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A132157.P17534679898931676406

namespace A132157

/-- `abs(Δ[A202014(A008619(2*n))])` -/
def P17534679898931676406.Spec : Prop :=
  ∀ n, P17534679898931676406.a n = A132157 (n + 1)

end A132157

/-! ## A132157.P14997580667486189486

`abs(Δ[A202014(A328399(2*n))])`
-/

namespace A132157.P14997580667486189486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202014 (A328399 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A132157.P14997580667486189486

namespace A132157

/-- `abs(Δ[A202014(A328399(2*n))])` -/
def P14997580667486189486.Spec : Prop :=
  ∀ n, P14997580667486189486.a n = A132157 (n + 1)

end A132157

/-! ## A132157.P8640054128607633401

`A202014(n+2)-A202014(n+1)`
-/

namespace A132157.P8640054128607633401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202014 (n + 2) - A202014 (n + 1)

end

end A132157.P8640054128607633401

namespace A132157

/-- `A202014(n+2)-A202014(n+1)` -/
def P8640054128607633401.Spec : Prop :=
  ∀ n, P8640054128607633401.a n = A132157 (n + 1)

theorem P8640054128607633401.correct : P8640054128607633401.Spec := by
  intro n
  simp only [A132157, Nat.add_sub_cancel, A132157.P8640054128607633401.a, A132157.P13318743662329449319.f1, A132157.P13318743662329449319.a, SequenceMachineLib.memo_apply]

end A132157

/-! ## A132157.P13669641800778215301

`A033999(n)²*Δ[A202014(A328399(2*n))]`
-/

namespace A132157.P13669641800778215301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202014 (A328399 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A132157.P13669641800778215301

namespace A132157

/-- `A033999(n)²*Δ[A202014(A328399(2*n))]` -/
def P13669641800778215301.Spec : Prop :=
  ∀ n, P13669641800778215301.a n = A132157 (n + 1)

end A132157

/-! ## A132157.P2389256567317987362

`Δ[A202014(A328399(2*n))]-A344993(n)%2`
-/

namespace A132157.P2389256567317987362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202014 (A328399 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (A344993 n) 2

end

end A132157.P2389256567317987362

namespace A132157

/-- `Δ[A202014(A328399(2*n))]-A344993(n)%2` -/
def P2389256567317987362.Spec : Prop :=
  ∀ n, P2389256567317987362.a n = A132157 (n + 1)

end A132157

/-! ## A132157.P15662224391585723043

`A001222(ratio[A000079(A202014(n+1))])`
-/

namespace A132157.P15662224391585723043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A202014 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A132157.P15662224391585723043

namespace A132157

/-- `A001222(ratio[A000079(A202014(n+1))])` -/
def P15662224391585723043.Spec : Prop :=
  ∀ n, P15662224391585723043.a n = A132157 (n + 1)

end A132157

/-! ## A132157.P13671082349268666331

`Δ[record[A202014(A193739(n))]]`
-/

namespace A132157.P13671082349268666331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202014 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132157.P13671082349268666331

namespace A132157

/-- `Δ[record[A202014(A193739(n))]]` -/
def P13671082349268666331.Spec : Prop :=
  ∀ n, P13671082349268666331.a n = A132157 (n + 1)

end A132157

/-!
# A132158: a(3n+k) = 3a(3n+k-1)-3a(3n+k-2)+2a(3n+k-3) for k = 0,1; a(3n+2) = 3a(3n-1)-3a(3n-2), with a(0) = 0,a(1) = 1,a(2) = 3.

The programs for A132158, the canonical program `A132158.P8478849005407785948` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132158 has offset 0).

The definition of A132158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132158.P8478849005407785948

`A133335(n)-A010892(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A132158

/-- `A133335(n)-A010892(n)` -/
def P8478849005407785948.Spec : Prop :=
  ∀ n, P8478849005407785948.a n = A132158 n

theorem P8478849005407785948.correct : P8478849005407785948.Spec := by
  intro n
  simp only [A132158]

end A132158

/-! ## A132158.P8668964121372980638

`A133335(n)-A128834(n+1)`
-/

namespace A132158.P8668964121372980638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 n - A128834 (n + 1)

end

end A132158.P8668964121372980638

namespace A132158

/-- `A133335(n)-A128834(n+1)` -/
def P8668964121372980638.Spec : Prop :=
  ∀ n, P8668964121372980638.a n = A132158 n

end A132158

/-! ## A132158.P8800047178851503608

`A140730(A004773(n))-A010892(n)`
-/

namespace A132158.P8800047178851503608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A004773 n).toNat - A010892 n

end

end A132158.P8800047178851503608

namespace A132158

/-- `A140730(A004773(n))-A010892(n)` -/
def P8800047178851503608.Spec : Prop :=
  ∀ n, P8800047178851503608.a n = A132158 n

end A132158

/-! ## A132158.P16284151392151380607

`A131761(n)+A138278(n)-A133335(n)`
-/

namespace A132158.P16284151392151380607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131761 n + (A138278 n - A133335 n)

end

end A132158.P16284151392151380607

namespace A132158

/-- `A131761(n)+A138278(n)-A133335(n)` -/
def P16284151392151380607.Spec : Prop :=
  ∀ n, P16284151392151380607.a n = A132158 n

end A132158

/-!
# A132159: Lower triangular matrix T(n,j) for double application of an iterated mixed order Laguerre transform inverse to A132014. Coefficients of Laguerre polynomials (-1)^n * n! * L(n,-2-n,x).

The programs for A132159, the canonical program `A132159.P2555085652242820276` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132159 has offset 0).

The definition of A132159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132159.P2555085652242820276

`(row(n)-col(n)+1)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132159

/-- `(row(n)-col(n)+1)*T(n-1,k)+T(n-1,k-1)` -/
def P2555085652242820276.Spec : Prop :=
  ∀ n, P2555085652242820276.a n = A132159 n

theorem P2555085652242820276.correct : P2555085652242820276.Spec := by
  intro n
  simp only [A132159]

end A132159

/-! ## A132159.P15352246965684021655

`C(row(n), col(n))*(row(n)-col(n)+1)!`
-/

namespace A132159.P15352246965684021655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) * Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A132159.P15352246965684021655

namespace A132159

/-- `C(row(n), col(n))*(row(n)-col(n)+1)!` -/
def P15352246965684021655.Spec : Prop :=
  ∀ n, (P15352246965684021655.a n : ℤ) = A132159 n

end A132159

/-! ## A132159.P9455926495452514256

`A121757(A061579(n))`
-/

namespace A132159.P9455926495452514256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121757 (A061579 n).toNat

end

end A132159.P9455926495452514256

namespace A132159

/-- `A121757(A061579(n))` -/
def P9455926495452514256.Spec : Prop :=
  ∀ n, P9455926495452514256.a n = A132159 n

end A132159

/-! ## A132159.P15932956735441614703

`A324224(A004201(n+1))`
-/

namespace A132159.P15932956735441614703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324224 (A004201 (n + 1)).toNat

end

end A132159.P15932956735441614703

namespace A132159

/-- `A324224(A004201(n+1))` -/
def P15932956735441614703.Spec : Prop :=
  ∀ n, P15932956735441614703.a n = A132159 n

end A132159

/-! ## A132159.P12437969838655850826

`A324224(A061885(n)+1)`
-/

namespace A132159.P12437969838655850826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324224 (A061885 n + 1).toNat

end

end A132159.P12437969838655850826

namespace A132159

/-- `A324224(A061885(n)+1)` -/
def P12437969838655850826.Spec : Prop :=
  ∀ n, P12437969838655850826.a n = A132159 n

end A132159

/-! ## A132159.P13948704559859742928

`A121757(A038722(n+1)-1)`
-/

namespace A132159.P13948704559859742928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121757 (A038722 (n + 1) - 1).toNat

end

end A132159.P13948704559859742928

namespace A132159

/-- `A121757(A038722(n+1)-1)` -/
def P13948704559859742928.Spec : Prop :=
  ∀ n, P13948704559859742928.a n = A132159 n

end A132159

/-! ## A132159.P8488477804243014023

`A004736(n+1)*A094587(n)`
-/

namespace A132159.P8488477804243014023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A094587 n

end

end A132159.P8488477804243014023

namespace A132159

/-- `A004736(n+1)*A094587(n)` -/
def P8488477804243014023.Spec : Prop :=
  ∀ n, P8488477804243014023.a n = A132159 n

end A132159

/-! ## A132159.P1267254214558135712

`(A025581(n)+1)*A094587(n)`
-/

namespace A132159.P1267254214558135712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A094587 n

end

end A132159.P1267254214558135712

namespace A132159

/-- `(A025581(n)+1)*A094587(n)` -/
def P1267254214558135712.Spec : Prop :=
  ∀ n, P1267254214558135712.a n = A132159 n

end A132159

/-! ## A132159.P16248635617174815710

`A093375(n+1)*A119502(n)`
-/

namespace A132159.P16248635617174815710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) * A119502 n

end

end A132159.P16248635617174815710

namespace A132159

/-- `A093375(n+1)*A119502(n)` -/
def P16248635617174815710.Spec : Prop :=
  ∀ n, P16248635617174815710.a n = A132159 n

end A132159

/-! ## A132159.P5167608526671972629

`(log2(A130321(n))+1)*A094587(n)`
-/

namespace A132159.P5167608526671972629
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A130321 n : ℝ) + 1) * (A094587 n : ℝ)

end

end A132159.P5167608526671972629

namespace A132159

/-- `(log2(A130321(n))+1)*A094587(n)` -/
def P5167608526671972629.Spec : Prop :=
  ∀ n, P5167608526671972629.a n = (A132159 n : ℝ)

end A132159

/-! ## A132159.P647478629960514574

`A004736(n+1)!*A007318(n)`
-/

namespace A132159.P647478629960514574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (n + 1)).toNat : ℤ) * A007318 n

end

end A132159.P647478629960514574

namespace A132159

/-- `A004736(n+1)!*A007318(n)` -/
def P647478629960514574.Spec : Prop :=
  ∀ n, P647478629960514574.a n = A132159 n

end A132159

/-! ## A132159.P17575083715172533394

`A091441(n+1)/A166350(n+1)`
-/

namespace A132159.P17575083715172533394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091441 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A132159.P17575083715172533394

namespace A132159

/-- `A091441(n+1)/A166350(n+1)` -/
def P17575083715172533394.Spec : Prop :=
  ∀ n, P17575083715172533394.a n = (A132159 n : ℚ)

end A132159

/-! ## A132159.P15571479305501152733

`(sqrt(A095831(n+1))+1)*A094587(n)`
-/

namespace A132159.P15571479305501152733
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A095831 (n + 1) : ℝ) + 1) * (A094587 n : ℝ)

end

end A132159.P15571479305501152733

namespace A132159

/-- `(sqrt(A095831(n+1))+1)*A094587(n)` -/
def P15571479305501152733.Spec : Prop :=
  ∀ n, P15571479305501152733.a n = (A132159 n : ℝ)

end A132159

/-! ## A132159.P4611994129574195378

`A004736(n+1)!*ceil(A134059(n)/3)`
-/

namespace A132159.P4611994129574195378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (n + 1)).toNat : ℤ) * ⌈(A134059 n : ℚ) / 3⌉

end

end A132159.P4611994129574195378

namespace A132159

/-- `A004736(n+1)!*ceil(A134059(n)/3)` -/
def P4611994129574195378.Spec : Prop :=
  ∀ n, P4611994129574195378.a n = A132159 n

end A132159

/-! ## A132159.P9050755577156138780

`A002260(A061579(n)+1)*A094587(n)`
-/

namespace A132159.P9050755577156138780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A061579 n + 1).toNat * A094587 n

end

end A132159.P9050755577156138780

namespace A132159

/-- `A002260(A061579(n)+1)*A094587(n)` -/
def P9050755577156138780.Spec : Prop :=
  ∀ n, P9050755577156138780.a n = A132159 n

end A132159

/-! ## A132159.P15432506375616697382

`A007318(n)*A081123(A099375(n)+1)`
-/

namespace A132159.P15432506375616697382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A081123 (A099375 n + 1).toNat

end

end A132159.P15432506375616697382

namespace A132159

/-- `A007318(n)*A081123(A099375(n)+1)` -/
def P15432506375616697382.Spec : Prop :=
  ∀ n, P15432506375616697382.a n = A132159 n

end A132159

/-! ## A132159.P16889372218684292724

`A094587(n)*A193739(A014132(n+1))`
-/

namespace A132159.P16889372218684292724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A193739 (A014132 (n + 1)).toNat

end

end A132159.P16889372218684292724

namespace A132159

/-- `A094587(n)*A193739(A014132(n+1))` -/
def P16889372218684292724.Spec : Prop :=
  ∀ n, P16889372218684292724.a n = A132159 n

end A132159

/-! ## A132159.P17574821338700871145

`A004736(n+1)!*A193554(lt[1, A193588(n)])`
-/

namespace A132159.P17574821338700871145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (n + 1)).toNat : ℤ) * A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132159.P17574821338700871145

namespace A132159

/-- `A004736(n+1)!*A193554(lt[1, A193588(n)])` -/
def P17574821338700871145.Spec : Prop :=
  ∀ n, P17574821338700871145.a n = A132159 n

end A132159

/-! ## A132159.P13617980204272331573

`A004736(n+1)!*C(A003056(n), A002262(n))`
-/

namespace A132159.P13617980204272331573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004736 (n + 1)).toNat * Nat.choose (A003056 n).toNat (A002262 n).toNat

end

end A132159.P13617980204272331573

namespace A132159

/-- `A004736(n+1)!*C(A003056(n), A002262(n))` -/
def P13617980204272331573.Spec : Prop :=
  ∀ n, (P13617980204272331573.a n : ℤ) = A132159 n

end A132159

/-! ## A132159.P16804431470914685148

`A004736(n+1)!*C(A003056(n), A025581(n))`
-/

namespace A132159.P16804431470914685148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004736 (n + 1)).toNat * Nat.choose (A003056 n).toNat (A025581 n).toNat

end

end A132159.P16804431470914685148

namespace A132159

/-- `A004736(n+1)!*C(A003056(n), A025581(n))` -/
def P16804431470914685148.Spec : Prop :=
  ∀ n, (P16804431470914685148.a n : ℤ) = A132159 n

end A132159

/-!
# A132162: a(2n+1) = 3*a(2*n) - 4*n with a(0) = 1, a(1) = 3.

The programs for A132162, the canonical program `A132162.P10655536448635448789` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132162 has offset 0).

The definition of A132162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132162.P10655536448635448789

`A132171(A014682(n))+A052928(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A132162

/-- `A132171(A014682(n))+A052928(n)` -/
def P10655536448635448789.Spec : Prop :=
  ∀ n, P10655536448635448789.a n = A132162 n

theorem P10655536448635448789.correct : P10655536448635448789.Spec := by
  intro n
  simp only [A132162]

end A132162

/-! ## A132162.P6886374869056223696

`A132171(A014682(n))+2*A004526(n)`
-/

namespace A132162.P6886374869056223696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A014682 n).toNat + 2 * A004526 n

end

end A132162.P6886374869056223696

namespace A132162

/-- `A132171(A014682(n))+2*A004526(n)` -/
def P6886374869056223696.Spec : Prop :=
  ∀ n, P6886374869056223696.a n = A132162 n

end A132162

/-! ## A132162.P2462392993879231851

`A132171(A014682(n))+A004442(or(1, n))`
-/

namespace A132162.P2462392993879231851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A014682 n).toNat + A004442 (Nat.lor 1 n)

end

end A132162.P2462392993879231851

namespace A132162

/-- `A132171(A014682(n))+A004442(or(1, n))` -/
def P2462392993879231851.Spec : Prop :=
  ∀ n, P2462392993879231851.a n = A132162 n

end A132162

/-! ## A132162.P6011493274968519271

`A132171(A014682(n))+and(n, A004442(n))`
-/

namespace A132162.P6011493274968519271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A014682 n).toNat + Int.land (n : ℤ) (A004442 n)

end

end A132162.P6011493274968519271

namespace A132162

/-- `A132171(A014682(n))+and(n, A004442(n))` -/
def P6011493274968519271.Spec : Prop :=
  ∀ n, P6011493274968519271.a n = A132162 n

end A132162

/-! ## A132162.P10612521241777497415

`A132171(A014682(n))+∑[2%A020639(n+1)]`
-/

namespace A132162.P10612521241777497415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A020639 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A014682 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132162.P10612521241777497415

namespace A132162

/-- `A132171(A014682(n))+∑[2%A020639(n+1)]` -/
def P10612521241777497415.Spec : Prop :=
  ∀ n, P10612521241777497415.a n = A132162 n

end A132162

/-!
# A132163: Triangle read by rows. For row n, start with 1 but from the second term onwards always choose the largest positive integer between 1 and n inclusive that i) has not already appeared in the row ii) gives a prime when added to the previous term. Stop if no such integer can be found.

The programs for A132163, there is no canonical definition to state claims against.
-/

/-! ## A132163.P3788491750191617157

`A004741(gcd(A184955(n), A246694(n)))`
-/

namespace A132163.P3788491750191617157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (Int.gcd (A184955 n) (A246694 n))

end

end A132163.P3788491750191617157

/-! ## A132163.P3460272117621773002

`A004741(A246694(n))*A006257(2^n)`
-/

namespace A132163.P3460272117621773002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A246694 n).toNat * A006257 (2 ^ n)

end

end A132163.P3460272117621773002

/-! ## A132163.P2743861901246560135

`A002260(A376214(n+1)%A068234(n+1))`
-/

namespace A132163.P2743861901246560135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.tmod (A376214 (n + 1)) (A068234 (n + 1))).toNat

end

end A132163.P2743861901246560135

/-! ## A132163.P10925392223920121020

`A172467(n+1)/A063435(A245300(2*n+1))`
-/

namespace A132163.P10925392223920121020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172467 (n + 1) : ℚ) / (A063435 (A245300 (2 * n + 1)).toNat : ℚ)

end

end A132163.P10925392223920121020

/-! ## A132163.P12168566318252814092

`A004741(A246694(n))%A200824(A007318(n))`
-/

namespace A132163.P12168566318252814092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004741 (A246694 n).toNat) (A200824 (A007318 n).toNat)

end

end A132163.P12168566318252814092

/-!
# A132164: Row sums of triangle A134141 (S1p(7)).

The programs for A132164, there is no canonical definition to state claims against.
-/

/-! ## A132164.P11114924951642764258

`A291709(A155212(n+4))`
-/

namespace A132164.P11114924951642764258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (A155212 (n + 4)).toNat

end

end A132164.P11114924951642764258

/-! ## A132164.P18413322326319693394

`A291709(eq[4, A263233(n)])`
-/

namespace A132164.P18413322326319693394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A132164.P18413322326319693394

/-! ## A132164.P1266349496409329478

`A291709(eq[7, A025581(n)])`
-/

namespace A132164.P1266349496409329478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A132164.P1266349496409329478

/-! ## A132164.P16667790589069869565

`A291709(eq[15, A099375(n)])`
-/

namespace A132164.P16667790589069869565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A132164.P16667790589069869565

/-! ## A132164.P4867588499218605249

`A291709(eq[8, A004736(n+1)])`
-/

namespace A132164.P4867588499218605249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A132164.P4867588499218605249

/-!
# A132166: A convolution triangle of numbers obtained from A036224.

The programs for A132166, there is no canonical definition to state claims against.
-/

/-! ## A132166.P1196024546189048011

`A092083(n+1)/A092082(n+1)*A134141(n+1)`
-/

namespace A132166.P1196024546189048011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092083 (n + 1) : ℚ) / (A092082 (n + 1) : ℚ) * (A134141 (n + 1) : ℚ)

end

end A132166.P1196024546189048011

/-!
# A132169: Irregular triangle read by rows. A141616(n)/4.

The programs for A132169, the canonical program `A132169.P12794010027182556537` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132169 has offset 0).

The definition of A132169 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141616, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A132169.P12794010027182556537

`A141616(n+1)/4`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A132169

/-- `A141616(n+1)/4` -/
def P12794010027182556537.Spec : Prop :=
  ∀ n, P12794010027182556537.a n = (A132169 n : ℚ)

end A132169

/-! ## A132169.P12829814745479488914

`A003991(lt[floor(sqrt(8*n+1))%2, 1]+1)`
-/

namespace A132169.P12829814745479488914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (8 * n + 1) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A132169.P12829814745479488914

namespace A132169

/-- `A003991(lt[floor(sqrt(8*n+1))%2, 1]+1)` -/
def P12829814745479488914.Spec : Prop :=
  ∀ n, P12829814745479488914.a n = A132169 n

end A132169

/-! ## A132169.P5871687880661985485

`A002265(A141616(n+1))`
-/

namespace A132169.P5871687880661985485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A141616 (n + 1)).toNat

end

end A132169.P5871687880661985485

namespace A132169

/-- `A002265(A141616(n+1))` -/
def P5871687880661985485.Spec : Prop :=
  ∀ n, P5871687880661985485.a n = A132169 n

end A132169

/-! ## A132169.P7053061058926888292

`A003991(A274428(n+1))`
-/

namespace A132169.P7053061058926888292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A274428 (n + 1)).toNat

end

end A132169.P7053061058926888292

namespace A132169

/-- `A003991(A274428(n+1))` -/
def P7053061058926888292.Spec : Prop :=
  ∀ n, P7053061058926888292.a n = A132169 n

end A132169

/-! ## A132169.P7538929265311482337

`A004247(lt[1, A098158(n)])`
-/

namespace A132169.P7538929265311482337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132169.P7538929265311482337

namespace A132169

/-- `A004247(lt[1, A098158(n)])` -/
def P7538929265311482337.Spec : Prop :=
  ∀ n, P7538929265311482337.a n = A132169 n

end A132169

/-! ## A132169.P17099864415733894923

`A004247(lt[1, A274835(n)])`
-/

namespace A132169.P17099864415733894923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132169.P17099864415733894923

namespace A132169

/-- `A004247(lt[1, A274835(n)])` -/
def P17099864415733894923.Spec : Prop :=
  ∀ n, P17099864415733894923.a n = A132169 n

end A132169

/-! ## A132169.P6538306955009417629

`A008624(A141616(n+1)+1)`
-/

namespace A132169.P6538306955009417629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A141616 (n + 1) + 1).toNat

end

end A132169.P6538306955009417629

namespace A132169

/-- `A008624(A141616(n+1)+1)` -/
def P6538306955009417629.Spec : Prop :=
  ∀ n, P6538306955009417629.a n = A132169 n

end A132169

/-! ## A132169.P1756044150688672119

`A025480(A141616(n+1)+1)`
-/

namespace A132169.P1756044150688672119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A141616 (n + 1) + 1).toNat

end

end A132169.P1756044150688672119

namespace A132169

/-- `A025480(A141616(n+1)+1)` -/
def P1756044150688672119.Spec : Prop :=
  ∀ n, P1756044150688672119.a n = A132169 n

end A132169

/-! ## A132169.P10651873338716707059

`A106609(2*A141616(n+1))`
-/

namespace A132169.P10651873338716707059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (2 * A141616 (n + 1)).toNat

end

end A132169.P10651873338716707059

namespace A132169

/-- `A106609(2*A141616(n+1))` -/
def P10651873338716707059.Spec : Prop :=
  ∀ n, P10651873338716707059.a n = A132169 n

end A132169

/-! ## A132169.P6665645105392195761

`A003991(eq[0, A089627(n)]+1)`
-/

namespace A132169.P6665645105392195761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A132169.P6665645105392195761

namespace A132169

/-- `A003991(eq[0, A089627(n)]+1)` -/
def P6665645105392195761.Spec : Prop :=
  ∀ n, P6665645105392195761.a n = A132169 n

end A132169

/-!
# A132170: Primes of the form (3pq - q - 6)/(3p + 1), where p and q are prime.

The programs for A132170, there is no canonical definition to state claims against.
-/

/-! ## A132170.P491988623473606607

`p?[abs(3-A010423(n+6))]`
-/

namespace A132170.P491988623473606607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A010423 (n + 6)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132170.P491988623473606607

/-! ## A132170.P15448246435025926351

`p?[A143694(A143513(n+4))]`
-/

namespace A132170.P15448246435025926351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143694 (A143513 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132170.P15448246435025926351

/-! ## A132170.P14711931394468025562

`record[A020639(A001513(n+4)+n)]`
-/

namespace A132170.P14711931394468025562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001513 (n + 4) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132170.P14711931394468025562

/-!
# A132171: 3^n repeated 3^n times.

The programs for A132171, the canonical program `A132171.P11899531183203491323` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132171 has offset 0).

The definition of A132171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132171.P18059714375583568452

`3^∑[char[∑[3^n]]]`
-/

namespace A132171.P18059714375583568452
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132171.P18059714375583568452

namespace A132171

/-- `3^∑[char[∑[3^n]]]` -/
def P18059714375583568452.Spec : Prop :=
  ∀ n, (P18059714375583568452.a n : ℤ) = A132171 n

end A132171

/-! ## A132171.P11899531183203491323

`3*a(floor((n-1)/3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132171

/-- `3*a(floor((n-1)/3))` -/
def P11899531183203491323.Spec : Prop :=
  ∀ n, (P11899531183203491323.a n : ℤ) = A132171 n

theorem P11899531183203491323.correct : P11899531183203491323.Spec := by
  intro n
  simp only [A132171]

end A132171

/-! ## A132171.P5789498927543353395

`A064235(ceil(2*n/3)+1)`
-/

namespace A132171.P5789498927543353395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064235 (⌈2 * ((n : ℚ) / 3)⌉ + 1).toNat

end

end A132171.P5789498927543353395

namespace A132171

/-- `A064235(ceil(2*n/3)+1)` -/
def P5789498927543353395.Spec : Prop :=
  ∀ n, P5789498927543353395.a n = A132171 n

end A132171

/-! ## A132171.P6638904697961251380

`(A274601(n+1)+n+1)/2`
-/

namespace A132171.P6638904697961251380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274601 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A132171.P6638904697961251380

namespace A132171

/-- `(A274601(n+1)+n+1)/2` -/
def P6638904697961251380.Spec : Prop :=
  ∀ n, P6638904697961251380.a n = (A132171 n : ℚ)

theorem P6638904697961251380.correct : P6638904697961251380.Spec := by
  intro n
  simp only [A132171, Nat.add_sub_cancel, A132171.P6638904697961251380.a, A132171.P11899531183203491323.a, A274601, A274601.P12542519559083663936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132171

/-! ## A132171.P17514578466908038540

`∏[A006530(2*n+1)²%6]`
-/

namespace A132171.P17514578466908038540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (2 * n + 1) ^ 2) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A132171.P17514578466908038540

namespace A132171

/-- `∏[A006530(2*n+1)²%6]` -/
def P17514578466908038540.Spec : Prop :=
  ∀ n, P17514578466908038540.a n = A132171 n

end A132171

/-! ## A132171.P383970559387114064

`∏[A106216(Δ[A134021(n)])]`
-/

namespace A132171.P383970559387114064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106216 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A132171.P383970559387114064

namespace A132171

/-- `∏[A106216(Δ[A134021(n)])]` -/
def P383970559387114064.Spec : Prop :=
  ∀ n, P383970559387114064.a n = A132171 n

end A132171

/-! ## A132171.P15082290716882796386

`∏[A133991(Δ[A134021(n)])]`
-/

namespace A132171.P15082290716882796386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133991 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A132171.P15082290716882796386

namespace A132171

/-- `∏[A133991(Δ[A134021(n)])]` -/
def P15082290716882796386.Spec : Prop :=
  ∀ n, P15082290716882796386.a n = A132171 n

end A132171

/-! ## A132171.P6978719405307684594

`A140429(∑[char[A003462(n)]])`
-/

namespace A132171.P6978719405307684594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132171.P6978719405307684594

namespace A132171

/-- `A140429(∑[char[A003462(n)]])` -/
def P6978719405307684594.Spec : Prop :=
  ∀ n, P6978719405307684594.a n = A132171 n

end A132171

/-! ## A132171.P16837260234974362720

`A132141(A132141(n+1)-n)`
-/

namespace A132171.P16837260234974362720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (A132141 (n + 1) - (n : ℤ)).toNat

end

end A132171.P16837260234974362720

namespace A132171

/-- `A132141(A132141(n+1)-n)` -/
def P16837260234974362720.Spec : Prop :=
  ∀ n, P16837260234974362720.a n = A132171 n

end A132171

/-! ## A132171.P1645992806828266156

`A000244(∑[char[A003462(n+1)]])`
-/

namespace A132171.P1645992806828266156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132171.P1645992806828266156

namespace A132171

/-- `A000244(∑[char[A003462(n+1)]])` -/
def P1645992806828266156.Spec : Prop :=
  ∀ n, P1645992806828266156.a n = A132171 n

end A132171

/-! ## A132171.P8378996614380464831

`A000244(∑[char[A003462(n)]]-1)`
-/

namespace A132171.P8378996614380464831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A132171.P8378996614380464831

namespace A132171

/-- `A000244(∑[char[A003462(n)]]-1)` -/
def P8378996614380464831.Spec : Prop :=
  ∀ n, P8378996614380464831.a n = A132171 n

end A132171

/-! ## A132171.P3621325334486298936

`∏[A217983(A217983(2*n+1))]`
-/

namespace A132171.P3621325334486298936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217983 (A217983 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A132171.P3621325334486298936

namespace A132171

/-- `∏[A217983(A217983(2*n+1))]` -/
def P3621325334486298936.Spec : Prop :=
  ∀ n, P3621325334486298936.a n = A132171 n

end A132171

/-! ## A132171.P9691267328445576834

`A004488(A274601(n+1)+1+n)`
-/

namespace A132171.P9691267328445576834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A274601 (n + 1) + 1 + (n : ℤ)).toNat

end

end A132171.P9691267328445576834

namespace A132171

/-- `A004488(A274601(n+1)+1+n)` -/
def P9691267328445576834.Spec : Prop :=
  ∀ n, P9691267328445576834.a n = A132171 n

end A132171

/-! ## A132171.P11951317482076930842

`∏[A006530(gcd(n-1, A006530(2*n+1)))]`
-/

namespace A132171.P11951317482076930842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd ((n : ℤ) - 1) (A006530 (2 * n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A132171.P11951317482076930842

namespace A132171

/-- `∏[A006530(gcd(n-1, A006530(2*n+1)))]` -/
def P11951317482076930842.Spec : Prop :=
  ∀ n, P11951317482076930842.a n = A132171 n

end A132171

/-! ## A132171.P5206943964131505169

`A365458(Δ[n²])`
-/

namespace A132171.P5206943964131505169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365458 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A132171.P5206943964131505169

namespace A132171

/-- `A365458(Δ[n²])` -/
def P5206943964131505169.Spec : Prop :=
  ∀ n, P5206943964131505169.a n = A132171 n

end A132171

/-! ## A132171.P15184001608715116149

`2*n+1-A365459(2*n+1)`
-/

namespace A132171.P15184001608715116149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A365459 (2 * n + 1)

end

end A132171.P15184001608715116149

namespace A132171

/-- `2*n+1-A365459(2*n+1)` -/
def P15184001608715116149.Spec : Prop :=
  ∀ n, P15184001608715116149.a n = A132171 n

end A132171

/-! ## A132171.P13893543473115267127

`A356867(A365458(2*n+1))`
-/

namespace A132171.P13893543473115267127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356867 (A365458 (2 * n + 1)).toNat

end

end A132171.P13893543473115267127

namespace A132171

/-- `A356867(A365458(2*n+1))` -/
def P13893543473115267127.Spec : Prop :=
  ∀ n, P13893543473115267127.a n = A132171 n

end A132171

/-!
# A132173: Maternal generation number of A063882(n).

The programs for A132173, there is no canonical definition to state claims against.
-/

/-! ## A132173.P11335754235868455938

`floor(log(n^(2*log2(log2(3)))+3))`
-/

namespace A132173.P11335754235868455938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((n : ℝ) ^ (2 * Real.logb 2 (Real.logb 2 (3 : ℝ))) + 3)⌋

end

end A132173.P11335754235868455938

/-! ## A132173.P10170493049259704305

`∑[char[A132175(n+1)]]+1`
-/

namespace A132173.P10170493049259704305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132175 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A132173.P10170493049259704305

/-! ## A132173.P17419973456726937863

`∑[char[A132174(n+1)-1]]`
-/

namespace A132173.P17419973456726937863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132174 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132173.P17419973456726937863

/-! ## A132173.P9375879184801165789

`A095791(floor(n/root(n+2, 3)))`
-/

namespace A132173.P9375879184801165789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 ⌊(n : ℝ) / (n + 2 : ℝ) ^ (1 / (3 : ℝ))⌋.toNat

end

end A132173.P9375879184801165789

/-! ## A132173.P8947821306032098573

`∑[char[A125894(4*(n+2))]]+1`
-/

namespace A132173.P8947821306032098573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125894 (4 * (n + 2))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A132173.P8947821306032098573

/-! ## A132173.P4084111181159029975

`char[A132175(-xor(n, -1))]+a(n-1)` with `a(0)=1`
-/

namespace A132173.P4084111181159029975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132175 (-Int.xor (n : ℤ) (-1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A132173.P4084111181159029975

/-! ## A132173.P8082250587195635636

`A110592(∑[gcd(n+1, ∏{p}[n+1, (n+1)/#])]-1)`
-/

namespace A132173.P8082250587195635636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A132173.P8082250587195635636

/-! ## A132173.P17813428220529331725

`A110591(A056865(comp[n²]))`
-/

namespace A132173.P17813428220529331725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A056865 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A132173.P17813428220529331725

/-! ## A132173.P11374421120936959972

`A008621(∑[char[A125894(n+1)]])`
-/

namespace A132173.P11374421120936959972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125894 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132173.P11374421120936959972

/-! ## A132173.P12268957301149175118

`∑[char[A023443(A132174(n+1))]]`
-/

namespace A132173.P12268957301149175118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A132174 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132173.P12268957301149175118

/-!
# A132174: Index of starting position of n-th generation of terms in A063882.

The programs for A132174, the canonical program `A132174.P12716140200397345964` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132174 has offset 1).

The definition of A132174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132174.P12716140200397345964

`3*a(n-1)-2*a(n-2)+a(n-5)-3*a(n-6)+2*a(n-7)` with `a(0)=1, a(1)=5, a(2)=10, a(3)=21, a(4)=44, a(5)=92, a(6)=189, a(7)=385`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132174

/-- `3*a(n-1)-2*a(n-2)+a(n-5)-3*a(n-6)+2*a(n-7)` -/
def P12716140200397345964.Spec : Prop :=
  ∀ n, P12716140200397345964.a n = A132174 (n + 1)

theorem P12716140200397345964.correct : P12716140200397345964.Spec := by
  intro n
  simp only [A132174, Nat.add_sub_cancel]

end A132174

/-! ## A132174.P2066155588256603852

`A132177(n)+a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A132174.P2066155588256603852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A132177 n + a (n - 1)

end

end A132174.P2066155588256603852

namespace A132174

/-- `A132177(n)+a(n-1)` -/
def P2066155588256603852.Spec : Prop :=
  ∀ n, P2066155588256603852.a n = A132174 (n + 1)

end A132174

/-! ## A132174.P13685760739943032995

`a(n-1)+A132176(n+1)-1` with `a(0)=1, a(1)=5`
-/

namespace A132174.P13685760739943032995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (A132176 (n + 1) - 1)

end

end A132174.P13685760739943032995

namespace A132174

/-- `a(n-1)+A132176(n+1)-1` -/
def P13685760739943032995.Spec : Prop :=
  ∀ n, P13685760739943032995.a n = A132174 (n + 1)

end A132174

/-! ## A132174.P269365622361871026

`∑[A132176(n+1)+A169585(n)-1]`
-/

namespace A132174.P269365622361871026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132176 (n + 1) + (A169585 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132174.P269365622361871026

namespace A132174

/-- `∑[A132176(n+1)+A169585(n)-1]` -/
def P269365622361871026.Spec : Prop :=
  ∀ n, P269365622361871026.a n = A132174 (n + 1)

end A132174

/-! ## A132174.P5836924546351372139

`A132175(n+1)%A132177(n+1)+1`
-/

namespace A132174.P5836924546351372139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132175 (n + 1)) (A132177 (n + 1)) + 1

end

end A132174.P5836924546351372139

namespace A132174

/-- `A132175(n+1)%A132177(n+1)+1` -/
def P5836924546351372139.Spec : Prop :=
  ∀ n, P5836924546351372139.a n = A132174 (n + 1)

end A132174

/-!
# A132175: Index of end of n-th generation of terms in A063882.

The programs for A132175, there is no canonical definition to state claims against.
-/

/-! ## A132175.P5911500741135813847

`A132174(n+2)-1`
-/

namespace A132175.P5911500741135813847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132174 (n + 2) - 1

end

end A132175.P5911500741135813847

/-! ## A132175.P3564064593249369154

`∑[A132177(n+1)]+3`
-/

namespace A132175.P3564064593249369154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A132175.P3564064593249369154

/-! ## A132175.P14423705001670719092

`∑[abs(Δ[A132174(n+1)])]`
-/

namespace A132175.P14423705001670719092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132174 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132175.P14423705001670719092

/-! ## A132175.P8011676862725430536

`A003056(n²)+2*a(n-1)` with `a(0)=4`
-/

namespace A132175.P8011676862725430536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A003056 (n ^ 2) + 2 * a (n - 1)

end

end A132175.P8011676862725430536

/-! ## A132175.P8853393062362693788

`2*a(n-1)+A214857(n)-1` with `a(0)=4`
-/

namespace A132175.P8853393062362693788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  2 * a (n - 1) + (A214857 n - 1)

end

end A132175.P8853393062362693788

/-!
# A132176: Value of A063882 at start of n-th generation of terms.

The programs for A132176, there is no canonical definition to state claims against.
-/

/-! ## A132176.P8125209110308989861

`A132177(n)+a(A000038(n))` with `a(0)=1`
-/

namespace A132176.P8125209110308989861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132177 n + a (A000038 n).toNat

end

end A132176.P8125209110308989861

/-! ## A132176.P2504353052990087102

`A132177(A028310(n))+char[A007318(n)]`
-/

namespace A132176.P2504353052990087102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132177 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A132176.P2504353052990087102

/-! ## A132176.P4092140590448100988

`A132177(A028310(n))+A000045(ceil(n/9))`
-/

namespace A132176.P4092140590448100988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132177 (A028310 n).toNat + A000045 ⌈(n : ℚ) / 9⌉.toNat

end

end A132176.P4092140590448100988

/-! ## A132176.P14886309572105897424

`A132177(A028310(n))+A000040(n+1)%2`
-/

namespace A132176.P14886309572105897424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132177 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A132176.P14886309572105897424

/-! ## A132176.P14576464141372597643

`A132177(A028310(n))-A008683(C(2, n+1)+2)`
-/

namespace A132176.P14576464141372597643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132177 (A028310 n).toNat - A008683 (Nat.choose 2 (n + 1) + 2)

end

end A132176.P14576464141372597643

/-!
# A132177: Value of A063882 at end of n-th generation of terms.

The programs for A132177, there is no canonical definition to state claims against.
-/

/-! ## A132177.P10391390268473687698

`Δ[A132174(n+1)]^ceil(n/63)`
-/

namespace A132177.P10391390268473687698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132174 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (⌈(n : ℚ) / 63⌉ : ℤ)

end

end A132177.P10391390268473687698

/-! ## A132177.P4707655330891436537

`Δ[A132174(n+1)]%A018041(n+1)`
-/

namespace A132177.P4707655330891436537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A018041 (n + 1))

end

end A132177.P4707655330891436537

/-! ## A132177.P12228601477281733842

`A132176(n+2)-1`
-/

namespace A132177.P12228601477281733842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132176 (n + 2) - 1

end

end A132177.P12228601477281733842

/-! ## A132177.P15642581620701623892

`∑[abs(Δ[A132176(n+1)])]`
-/

namespace A132177.P15642581620701623892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132176 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132177.P15642581620701623892

/-! ## A132177.P9317457219242080829

`∑[Δ[A132176(n+1)]%A132153(n+1)]`
-/

namespace A132177.P9317457219242080829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132176 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A132153 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132177.P9317457219242080829

/-!
# A132178: Triangle read by rows: T(n,m) is the number of cyclic permutations of [n] in which m of successive numbers add to a prime. 0<=m<=n, read by rows n>=0.

The programs for A132178, there is no canonical definition to state claims against.
-/

/-! ## A132178.P12202055492352641899

`A168087(n+2)%A006530(A013609(n))`
-/

namespace A132178.P12202055492352641899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168087 (n + 2)) (A006530 (A013609 n).toNat)

end

end A132178.P12202055492352641899

/-! ## A132178.P8043334881113164239

`and(A142150(A169928(n+1)), A159853(n))`
-/

namespace A132178.P8043334881113164239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A142150 (A169928 (n + 1)).toNat) (A159853 n)

end

end A132178.P8043334881113164239

/-! ## A132178.P11147324497447844050

`and(A117479(A010785(n)), A257541(n+2))`
-/

namespace A132178.P11147324497447844050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117479 (A010785 n).toNat) (A257541 (n + 2))

end

end A132178.P11147324497447844050

/-! ## A132178.P7726363870419314493

`A008797(A121150(n+1))%A128117(n+1)`
-/

namespace A132178.P7726363870419314493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008797 (A121150 (n + 1)).toNat) (A128117 (n + 1))

end

end A132178.P7726363870419314493

/-! ## A132178.P11757521751904131274

`and(A000203(A065659(2*(n+2))), A174947(n+1))`
-/

namespace A132178.P11757521751904131274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A065659 (2 * (n + 2))).toNat) (A174947 (n + 1))

end

end A132178.P11757521751904131274

/-!
# A132179: Expansion of f(-x^2)^2 * f(x, x^2) / f(-x^3)^3 in powers of x where f(,) is a Ramanujan theta function.

The programs for A132179, there is no canonical definition to state claims against.
-/

/-! ## A132179.P7179187505899826765

`(-1)^n*A254525(n)`
-/

namespace A132179.P7179187505899826765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A254525 n

end

end A132179.P7179187505899826765

/-! ## A132179.P12362901382121928316

`A062242(2*n)`
-/

namespace A132179.P12362901382121928316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062242 (2 * n)

end

end A132179.P12362901382121928316

/-! ## A132179.P3645199307810442942

`A062244(2*n)`
-/

namespace A132179.P3645199307810442942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062244 (2 * n)

end

end A132179.P3645199307810442942

/-! ## A132179.P4047508663147653187

`A132301(2*n)`
-/

namespace A132179.P4047508663147653187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132301 (2 * n)

end

end A132179.P4047508663147653187

/-! ## A132179.P10906179468930592646

`A182036(3*n)`
-/

namespace A132179.P10906179468930592646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182036 (3 * n)

end

end A132179.P10906179468930592646

/-! ## A132179.P9971981385916214411

`A254525(n)/A033999(n)`
-/

namespace A132179.P9971981385916214411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254525 n : ℚ) / (A033999 n : ℚ)

end

end A132179.P9971981385916214411

/-! ## A132179.P6968348487998156198

`A263526(2*n)`
-/

namespace A132179.P6968348487998156198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263526 (2 * n)

end

end A132179.P6968348487998156198

/-!
# A132180: Expansion of f(q, q^2) * f(-q^3) / f(-q^2)^2 in powers of q where f(, ), f() are Ramanujan theta functions.

The programs for A132180, there is no canonical definition to state claims against.
-/

/-! ## A132180.P949189139308233299

`A132972(n)/A010684(n)`
-/

namespace A132180.P949189139308233299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132972 n : ℚ) / (A010684 n : ℚ)

end

end A132180.P949189139308233299

/-! ## A132180.P16713077159471947163

`A153284(n+1)*A213267(n)`
-/

namespace A132180.P16713077159471947163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (n + 1) * A213267 n

end

end A132180.P16713077159471947163

/-! ## A132180.P14355197294640808203

`A132972(n)/(2-A033999(n))`
-/

namespace A132180.P14355197294640808203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132972 n : ℚ) / (2 - A033999 n : ℚ)

end

end A132180.P14355197294640808203

/-! ## A132180.P987557614944534633

`A132972(n)/A005408(n)%4`
-/

namespace A132180.P987557614944534633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132972 n : ℚ) / (Int.tmod (A005408 n) 4 : ℚ)

end

end A132180.P987557614944534633

/-! ## A132180.P10666990211526594500

`lcm(A010684(n), A141094(n))/A010684(n)`
-/

namespace A132180.P10666990211526594500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A010684 n) (A141094 n) : ℚ) / (A010684 n : ℚ)

end

end A132180.P10666990211526594500

/-! ## A132180.P4525750923330278825

`A141094(n)/(A004442(n)-A004442(n+1))`
-/

namespace A132180.P4525750923330278825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141094 n : ℚ) / (A004442 n - A004442 (n + 1) : ℚ)

end

end A132180.P4525750923330278825

/-! ## A132180.P15656187501375858805

`A132972(n)/Δ[A042963(n+1)]`
-/

namespace A132180.P15656187501375858805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132972 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A132180.P15656187501375858805

/-! ## A132180.P10768282281129343821

`A254372(4*n)`
-/

namespace A132180.P10768282281129343821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254372 (4 * n)

end

end A132180.P10768282281129343821

/-! ## A132180.P11716976286965794773

`A254372(A008574(n))-floor(1/(n+1))`
-/

namespace A132180.P11716976286965794773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254372 (A008574 n).toNat - ⌊1 / (n + 1 : ℚ)⌋

end

end A132180.P11716976286965794773

/-!
# A132182: a(n) = floor(n^(n -1/2)).

The programs for A132182, there is no canonical definition to state claims against.
-/

/-! ## A132182.P2090806382012903270

`floor(sqrt(n+1)^Δ[n²])`
-/

namespace A132182.P2090806382012903270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n + 1 : ℝ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)⌋

end

end A132182.P2090806382012903270

/-! ## A132182.P15373059594006243847

`A255616(∑[a(n-1)+9])` with `a(0)=2`
-/

namespace A132182.P15373059594006243847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255616 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132182.P15373059594006243847

/-! ## A132182.P9895982806881902103

`A255616(A062708(n+1))`
-/

namespace A132182.P9895982806881902103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255616 (A062708 (n + 1)).toNat

end

end A132182.P9895982806881902103

/-! ## A132182.P16783172421499468646

`A255616(record[A062708(∑[(-1)^(n%3)])])`
-/

namespace A132182.P16783172421499468646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255616 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A132182.P16783172421499468646

/-! ## A132182.P8923066331734122554

`A255616(eq[A002262(n), A099375(n)])`
-/

namespace A132182.P8923066331734122554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255616 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A132182.P8923066331734122554

/-!
# A132186: Number of idempotent n X n matrices over GF(2); also number of diagonalizable n X n matrices over GF(2).

The programs for A132186, there is no canonical definition to state claims against.
-/

/-! ## A132186.P7880229136414814158

`A357410(n+1)/A002884(n+1)*A002884(n)`
-/

namespace A132186.P7880229136414814158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357410 (n + 1) : ℚ) / (A002884 (n + 1) : ℚ) * (A002884 n : ℚ)

end

end A132186.P7880229136414814158

/-! ## A132186.P11363958846893471815

`A346201(∑[n]+n)`
-/

namespace A132186.P11363958846893471815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346201 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A132186.P11363958846893471815

/-! ## A132186.P15091855773522053471

`A346677(∑[n]+n)`
-/

namespace A132186.P15091855773522053471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346677 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A132186.P15091855773522053471

/-! ## A132186.P12516963562377384222

`record[char[∑[n-1]]*A346677(n)]`
-/

namespace A132186.P12516963562377384222
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A346677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132186.P12516963562377384222

/-!
# A132188: Number of 3-term geometric progressions with no term exceeding n.

The programs for A132188, the canonical program `A132188.P7469144520474104274` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132188 has offset 1).

The definition of A132188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132188.P11909189338345775347

`∑[2*∏{p}[n+1, #^val(n+1, #²)]-1]`
-/

namespace A132188.P11909189338345775347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132188.P11909189338345775347

namespace A132188

/-- `∑[2*∏{p}[n+1, #^val(n+1, #²)]-1]` -/
def P11909189338345775347.Spec : Prop :=
  ∀ n, P11909189338345775347.a n = A132188 (n + 1)

end A132188

/-! ## A132188.P5817699669832083277

`∑[2*n%∏{p}[n+1, #^val(n+1, #²)]+1]`
-/

namespace A132188.P5817699669832083277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132188.P5817699669832083277

namespace A132188

/-- `∑[2*n%∏{p}[n+1, #^val(n+1, #²)]+1]` -/
def P5817699669832083277.Spec : Prop :=
  ∀ n, (P5817699669832083277.a n : ℤ) = A132188 (n + 1)

end A132188

/-! ## A132188.P17266945510509124058

`∑[val(4^(∏{p}[n+1, #^val(n+1, #²)]-1), 2)]+n+1`
-/

namespace A132188.P17266945510509124058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((4 : ℚ) ^ (((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) - 1 : ℤ))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A132188.P17266945510509124058

namespace A132188

/-- `∑[val(4^(∏{p}[n+1, #^val(n+1, #²)]-1), 2)]+n+1` -/
def P17266945510509124058.Spec : Prop :=
  ∀ n, (P17266945510509124058.a n : ℤ) = A132188 (n + 1)

end A132188

/-! ## A132188.P2092305295122004564

`A132189(n+1)+1+n`
-/

namespace A132188.P2092305295122004564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132189 (n + 1) + 1 + (n : ℤ)

end

end A132188.P2092305295122004564

namespace A132188

/-- `A132189(n+1)+1+n` -/
def P2092305295122004564.Spec : Prop :=
  ∀ n, P2092305295122004564.a n = A132188 (n + 1)

theorem P2092305295122004564.correct : P2092305295122004564.Spec := by
  intro n
  simp only [A132188, Nat.add_sub_cancel, A132188.P2092305295122004564.a, A132188.P7469144520474104274.a, A120486, A120486.P15640467166856276779.f2, A120486.P15640467166856276779.f1, A120486.P15640467166856276779.a, A132189, A132189.P8063069834652726525.a, A132345, A132345.P9558372219206818084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132188

/-! ## A132188.P10455717589395007234

`∑[2*A000188(n+1)-1]`
-/

namespace A132188.P10455717589395007234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000188 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132188.P10455717589395007234

namespace A132188

/-- `∑[2*A000188(n+1)-1]` -/
def P10455717589395007234.Spec : Prop :=
  ∀ n, P10455717589395007234.a n = A132188 (n + 1)

end A132188

/-! ## A132188.P13475809948198586809

`2*A132345(n+1)+n+1`
-/

namespace A132188.P13475809948198586809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132345 (n + 1) + (n + 1 : ℤ)

end

end A132188.P13475809948198586809

namespace A132188

/-- `2*A132345(n+1)+n+1` -/
def P13475809948198586809.Spec : Prop :=
  ∀ n, P13475809948198586809.a n = A132188 (n + 1)

theorem P13475809948198586809.correct : P13475809948198586809.Spec := by
  intro n
  simp only [A132188, Nat.add_sub_cancel, A132188.P13475809948198586809.a, A132188.P7469144520474104274.a, A120486, A120486.P15640467166856276779.f2, A120486.P15640467166856276779.f1, A120486.P15640467166856276779.a, A132345, A132345.P9558372219206818084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132188

/-! ## A132188.P7469144520474104274

`2*A120486(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A132188

/-- `2*A120486(n+1)-(n+1)` -/
def P7469144520474104274.Spec : Prop :=
  ∀ n, P7469144520474104274.a n = A132188 (n + 1)

theorem P7469144520474104274.correct : P7469144520474104274.Spec := by
  intro n
  simp only [A132188, Nat.add_sub_cancel]

end A132188

/-! ## A132188.P9071073097082147201

`A064368(n+1)-(2*n+3)`
-/

namespace A132188.P9071073097082147201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064368 (n + 1) - (2 * n + 3 : ℤ)

end

end A132188.P9071073097082147201

namespace A132188

/-- `A064368(n+1)-(2*n+3)` -/
def P9071073097082147201.Spec : Prop :=
  ∀ n, P9071073097082147201.a n = A132188 (n + 1)

end A132188

/-! ## A132188.P7612414543527660781

`∑[A005408(A000188(n+1)-1)]`
-/

namespace A132188.P7612414543527660781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A000188 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132188.P7612414543527660781

namespace A132188

/-- `∑[A005408(A000188(n+1)-1)]` -/
def P7612414543527660781.Spec : Prop :=
  ∀ n, P7612414543527660781.a n = A132188 (n + 1)

end A132188

/-! ## A132188.P17191102048321028512

`A132345(n+1)+A120486(n+1)`
-/

namespace A132188.P17191102048321028512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (n + 1) + A120486 (n + 1)

end

end A132188.P17191102048321028512

namespace A132188

/-- `A132345(n+1)+A120486(n+1)` -/
def P17191102048321028512.Spec : Prop :=
  ∀ n, P17191102048321028512.a n = A132188 (n + 1)

theorem P17191102048321028512.correct : P17191102048321028512.Spec := by
  intro n
  simp only [A132188, Nat.add_sub_cancel, A132188.P17191102048321028512.a, A132188.P7469144520474104274.a, A120486, A120486.P15640467166856276779.f2, A120486.P15640467166856276779.f1, A120486.P15640467166856276779.a, A132345, A132345.P9558372219206818084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132188

/-! ## A132188.P16428490173475388303

`A362932(n+1)+A362931(n+1)`
-/

namespace A132188.P16428490173475388303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362932 (n + 1) + A362931 (n + 1)

end

end A132188.P16428490173475388303

namespace A132188

/-- `A362932(n+1)+A362931(n+1)` -/
def P16428490173475388303.Spec : Prop :=
  ∀ n, P16428490173475388303.a n = A132188 (n + 1)

end A132188

/-! ## A132188.P8111144170745538337

`A362931(n+1)+2*A362933(n+1)`
-/

namespace A132188.P8111144170745538337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362931 (n + 1) + 2 * A362933 (n + 1)

end

end A132188.P8111144170745538337

namespace A132188

/-- `A362931(n+1)+2*A362933(n+1)` -/
def P8111144170745538337.Spec : Prop :=
  ∀ n, P8111144170745538337.a n = A132188 (n + 1)

end A132188

/-! ## A132188.P9134132981244794674

`A000982(n+1)-A362934(n+1)`
-/

namespace A132188.P9134132981244794674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) - A362934 (n + 1)

end

end A132188.P9134132981244794674

namespace A132188

/-- `A000982(n+1)-A362934(n+1)` -/
def P9134132981244794674.Spec : Prop :=
  ∀ n, P9134132981244794674.a n = A132188 (n + 1)

theorem P9134132981244794674.correct : P9134132981244794674.Spec := by
  intro n
  simp only [A132188, Nat.add_sub_cancel, A132188.P9134132981244794674.a, A132188.P7469144520474104274.a, A000982, A000982.P7286196366017051516.a, A120486, A120486.P15640467166856276779.f2, A120486.P15640467166856276779.f1, A120486.P15640467166856276779.a, A362934, A362934.P7877997360191221463.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132188

/-! ## A132188.P13499911245567750188

`A000982(n+1)+A362932(n+1)-A362936(n+1)`
-/

namespace A132188.P13499911245567750188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) + (A362932 (n + 1) - A362936 (n + 1))

end

end A132188.P13499911245567750188

namespace A132188

/-- `A000982(n+1)+A362932(n+1)-A362936(n+1)` -/
def P13499911245567750188.Spec : Prop :=
  ∀ n, P13499911245567750188.a n = A132188 (n + 1)

end A132188

/-! ## A132188.P11690376163647684503

`A000982(n+1)-A362935(n+1)-A362935(n+1)`
-/

namespace A132188.P11690376163647684503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) - A362935 (n + 1) - A362935 (n + 1)

end

end A132188.P11690376163647684503

namespace A132188

/-- `A000982(n+1)-A362935(n+1)-A362935(n+1)` -/
def P11690376163647684503.Spec : Prop :=
  ∀ n, P11690376163647684503.a n = A132188 (n + 1)

end A132188

/-! ## A132188.P6640271751302254526

`∑[A057918(4*(n+1))]`
-/

namespace A132188.P6640271751302254526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132188.P6640271751302254526

namespace A132188

/-- `∑[A057918(4*(n+1))]` -/
def P6640271751302254526.Spec : Prop :=
  ∀ n, P6640271751302254526.a n = A132188 (n + 1)

end A132188

/-! ## A132188.P9090391071299100797

`∑[A057918(n+1)+A057918(A072905(n+1))]`
-/

namespace A132188.P9090391071299100797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (n + 1) + A057918 (A072905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132188.P9090391071299100797

namespace A132188

/-- `∑[A057918(n+1)+A057918(A072905(n+1))]` -/
def P9090391071299100797.Spec : Prop :=
  ∀ n, P9090391071299100797.a n = A132188 (n + 1)

end A132188

/-! ## A132188.P15685903744948189514

`∑[A070139(16*(n+1))]`
-/

namespace A132188.P15685903744948189514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070139 (16 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132188.P15685903744948189514

namespace A132188

/-- `∑[A070139(16*(n+1))]` -/
def P15685903744948189514.Spec : Prop :=
  ∀ n, P15685903744948189514.a n = A132188 (n + 1)

end A132188

/-! ## A132188.P9184058195994629039

`A059169(A211422(n+1))-(n+1)`
-/

namespace A132188.P9184058195994629039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A211422 (n + 1)).toNat - (n + 1 : ℤ)

end

end A132188.P9184058195994629039

namespace A132188

/-- `A059169(A211422(n+1))-(n+1)` -/
def P9184058195994629039.Spec : Prop :=
  ∀ n, P9184058195994629039.a n = A132188 (n + 1)

end A132188

/-!
# A132189: Number of non-constant 3-term geometric progressions with no term exceeding n.

The programs for A132189, the canonical program `A132189.P8063069834652726525` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132189 has offset 1).

The definition of A132189 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132345, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A132189.P8063069834652726525

`2*A132345(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A132189

/-- `2*A132345(n+1)` -/
def P8063069834652726525.Spec : Prop :=
  ∀ n, P8063069834652726525.a n = A132189 (n + 1)

theorem P8063069834652726525.correct : P8063069834652726525.Spec := by
  intro n
  simp only [A132189, Nat.add_sub_cancel]

end A132189

/-! ## A132189.P15578268346148170840

`∑[2*(∏{p}[n+1, #^val(n+1, #²)]-1)]`
-/

namespace A132189.P15578268346148170840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132189.P15578268346148170840

namespace A132189

/-- `∑[2*(∏{p}[n+1, #^val(n+1, #²)]-1)]` -/
def P15578268346148170840.Spec : Prop :=
  ∀ n, P15578268346148170840.a n = A132189 (n + 1)

end A132189

/-! ## A132189.P372184199523470779

`∑[2*n%∏{p}[n+1, #^val(n+1, #²)]]`
-/

namespace A132189.P372184199523470779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132189.P372184199523470779

namespace A132189

/-- `∑[2*n%∏{p}[n+1, #^val(n+1, #²)]]` -/
def P372184199523470779.Spec : Prop :=
  ∀ n, (P372184199523470779.a n : ℤ) = A132189 (n + 1)

end A132189

/-! ## A132189.P3634212504393747839

`∑[val(4^(∏{p}[n+1, #^val(n+1, #²)]-1), 2)]`
-/

namespace A132189.P3634212504393747839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((4 : ℚ) ^ (((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) - 1 : ℤ))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132189.P3634212504393747839

namespace A132189

/-- `∑[val(4^(∏{p}[n+1, #^val(n+1, #²)]-1), 2)]` -/
def P3634212504393747839.Spec : Prop :=
  ∀ n, (P3634212504393747839.a n : ℤ) = A132189 (n + 1)

end A132189

/-! ## A132189.P8408134577490029589

`∑[2*A057918(n+1)]`
-/

namespace A132189.P8408134577490029589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132189.P8408134577490029589

namespace A132189

/-- `∑[2*A057918(n+1)]` -/
def P8408134577490029589.Spec : Prop :=
  ∀ n, P8408134577490029589.a n = A132189 (n + 1)

end A132189

/-! ## A132189.P2569721112610345749

`A132188(n+1)-(n+1)`
-/

namespace A132189.P2569721112610345749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132188 (n + 1) - (n + 1 : ℤ)

end

end A132189.P2569721112610345749

namespace A132189

/-- `A132188(n+1)-(n+1)` -/
def P2569721112610345749.Spec : Prop :=
  ∀ n, P2569721112610345749.a n = A132189 (n + 1)

theorem P2569721112610345749.correct : P2569721112610345749.Spec := by
  intro n
  simp only [A132189, Nat.add_sub_cancel, A132189.P2569721112610345749.a, A132189.P8063069834652726525.a, A132188, A132188.P7469144520474104274.a, A132345, A132345.P9558372219206818084.a, A120486, A120486.P15640467166856276779.f2, A120486.P15640467166856276779.f1, A120486.P15640467166856276779.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132189

/-! ## A132189.P3813041284073413585

`∑[2*(A000188(n+1)-1)]`
-/

namespace A132189.P3813041284073413585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000188 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132189.P3813041284073413585

namespace A132189

/-- `∑[2*(A000188(n+1)-1)]` -/
def P3813041284073413585.Spec : Prop :=
  ∀ n, P3813041284073413585.a n = A132189 (n + 1)

end A132189

/-! ## A132189.P3037723086012689453

`2*(A120486(n+1)-(n+1))`
-/

namespace A132189.P3037723086012689453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A120486 (n + 1) - (n + 1 : ℤ))

end

end A132189.P3037723086012689453

namespace A132189

/-- `2*(A120486(n+1)-(n+1))` -/
def P3037723086012689453.Spec : Prop :=
  ∀ n, P3037723086012689453.a n = A132189 (n + 1)

end A132189

/-! ## A132189.P5849250359434591573

`A007590(n)-A362934(n+1)`
-/

namespace A132189.P5849250359434591573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n - A362934 (n + 1)

end

end A132189.P5849250359434591573

namespace A132189

/-- `A007590(n)-A362934(n+1)` -/
def P5849250359434591573.Spec : Prop :=
  ∀ n, P5849250359434591573.a n = A132189 (n + 1)

end A132189

/-! ## A132189.P1850759627576624893

`A132345(n+1)+A132345(n+2)-A057918(n+2)`
-/

namespace A132189.P1850759627576624893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132345 (n + 1) + (A132345 (n + 2) - A057918 (n + 2))

end

end A132189.P1850759627576624893

namespace A132189

/-- `A132345(n+1)+A132345(n+2)-A057918(n+2)` -/
def P1850759627576624893.Spec : Prop :=
  ∀ n, P1850759627576624893.a n = A132189 (n + 1)

end A132189

/-! ## A132189.P3508801222798137915

`A005843(A132345(n+1))`
-/

namespace A132189.P3508801222798137915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A132345 (n + 1)).toNat

end

end A132189.P3508801222798137915

namespace A132189

/-- `A005843(A132345(n+1))` -/
def P3508801222798137915.Spec : Prop :=
  ∀ n, P3508801222798137915.a n = A132189 (n + 1)

end A132189

/-! ## A132189.P3955367355962951519

`∑[2*A309395(2*(n+1))]`
-/

namespace A132189.P3955367355962951519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309395 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132189.P3955367355962951519

namespace A132189

/-- `∑[2*A309395(2*(n+1))]` -/
def P3955367355962951519.Spec : Prop :=
  ∀ n, P3955367355962951519.a n = A132189 (n + 1)

end A132189

/-!
# A132190: Numbers n such that 7*n^2 + 1 is prime.

The programs for A132190, there is no canonical definition to state claims against.
-/

/-! ## A132190.P14633296371512686140

`floor(sqrt(A201602(n+1)/7))`
-/

namespace A132190.P14633296371512686140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A201602 (n + 1) : ℚ) / 7 : ℝ)⌋

end

end A132190.P14633296371512686140

/-! ## A132190.P9219999152051535688

`A000027(round(sqrt(A201602(n+1)/7)))`
-/

namespace A132190.P9219999152051535688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt ((A201602 (n + 1) : ℚ) / 7 : ℝ))).toNat

end

end A132190.P9219999152051535688

/-! ## A132190.P14264043559178512485

`round(sqrt(A201602(n+1)/7))%A000217(n+2)`
-/

namespace A132190.P14264043559178512485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((A201602 (n + 1) : ℚ) / 7 : ℝ))) (A000217 (n + 2))

end

end A132190.P14264043559178512485

/-! ## A132190.P4020462966449889929

`A004442(ceil(sqrt(A201602(n+1)/7)))`
-/

namespace A132190.P4020462966449889929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ⌈Real.sqrt ((A201602 (n + 1) : ℚ) / 7 : ℝ)⌉.toNat

end

end A132190.P4020462966449889929

/-! ## A132190.P6335894522016066789

`-A001489(round(sqrt(A201602(n+1)/7)))`
-/

namespace A132190.P6335894522016066789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 (SequenceMachineLib.roundAway (Real.sqrt ((A201602 (n + 1) : ℚ) / 7 : ℝ))).toNat

end

end A132190.P6335894522016066789

/-! ## A132190.P6509486582471648368

`A233583(ceil(sqrt(A201602(n+1)/7)))`
-/

namespace A132190.P6509486582471648368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 ⌈Real.sqrt ((A201602 (n + 1) : ℚ) / 7 : ℝ)⌉.toNat

end

end A132190.P6509486582471648368

/-!
# A132191: Square array a(m,n) read by antidiagonals, defined by A000010(n)*a(m,n) = Sum_{k=1..n, gcd(k,n)=1} m^{ Sum_{d|n} A000010(d)/ (multiplicative order of k modulo d) }.

The programs for A132191, there is no canonical definition to state claims against.
-/

/-! ## A132191.P11403690873946166944

`A002260(n+1)*A285522(n+1)`
-/

namespace A132191.P11403690873946166944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A285522 (n + 1)

end

end A132191.P11403690873946166944

/-! ## A132191.P2724922342045111737

`(A002262(n)+1)*A285522(n+1)`
-/

namespace A132191.P2724922342045111737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A285522 (n + 1)

end

end A132191.P2724922342045111737

/-! ## A132191.P4931046492836838138

`sqrt(A133819(n+1))*A285522(n+1)`
-/

namespace A132191.P4931046492836838138
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A285522 (n + 1) : ℝ)

end

end A132191.P4931046492836838138

/-! ## A132191.P11969469504011298065

`A097285(A005408(n))*A285522(n+1)`
-/

namespace A132191.P11969469504011298065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A005408 n).toNat * A285522 (n + 1)

end

end A132191.P11969469504011298065

/-! ## A132191.P16036342764748847644

`A004736(A038722(n+1))*A285522(n+1)`
-/

namespace A132191.P16036342764748847644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A285522 (n + 1)

end

end A132191.P16036342764748847644

/-! ## A132191.P8970709714650551663

`A000005(A059268(n))*A285522(n+1)`
-/

namespace A132191.P8970709714650551663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A285522 (n + 1)

end

end A132191.P8970709714650551663

/-! ## A132191.P682684039033135669

`A125585(A000124(n))*A285522(n+1)`
-/

namespace A132191.P682684039033135669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125585 (A000124 n).toNat * A285522 (n + 1)

end

end A132191.P682684039033135669

/-!
# A132192: Least number k such that 4*(k*(2^p-1))^2 + 1 is prime where 2^p-1 is a Mersenne prime (p in A000043).

The programs for A132192, there is no canonical definition to state claims against.
-/

/-! ## A132192.P443259397341294217

`A098774(n+1)/2`
-/

namespace A132192.P443259397341294217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098774 (n + 1) : ℚ) / 2

end

end A132192.P443259397341294217

/-! ## A132192.P11099530696339020102

`A014682(A098774(n+1))`
-/

namespace A132192.P11099530696339020102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A098774 (n + 1)).toNat

end

end A132192.P11099530696339020102

/-! ## A132192.P15589424305666235725

`A328399(A098774(n+1)-2)`
-/

namespace A132192.P15589424305666235725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A098774 (n + 1) - 2).toNat

end

end A132192.P15589424305666235725

/-! ## A132192.P12875773593444097904

`A117358(4*A098774(n+1))`
-/

namespace A132192.P12875773593444097904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (4 * A098774 (n + 1)).toNat

end

end A132192.P12875773593444097904

/-! ## A132192.P16852300658070312616

`A175126(lcm(2, A098774(n+1)))`
-/

namespace A132192.P16852300658070312616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.lcm 2 (A098774 (n + 1)))

end

end A132192.P16852300658070312616

/-!
# A132194: a(n) = 1 if n-th prime is 0 or 2 mod 3, otherwise 0.

The programs for A132194, the canonical program `A132194.P14895513087867125861` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132194 has offset 1).

The definition of A132194 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099618, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A132194.P14895513087867125861

`1-A099618(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A132194

/-- `1-A099618(n+1)` -/
def P14895513087867125861.Spec : Prop :=
  ∀ n, P14895513087867125861.a n = A132194 (n + 1)

theorem P14895513087867125861.correct : P14895513087867125861.Spec := by
  intro n
  simp only [A132194, Nat.add_sub_cancel]

end A132194

/-! ## A132194.P2314550131464517488

`A005722(n+1)%3`
-/

namespace A132194.P2314550131464517488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005722 (n + 1)) 3

end

end A132194.P2314550131464517488

namespace A132194

/-- `A005722(n+1)%3` -/
def P2314550131464517488.Spec : Prop :=
  ∀ n, P2314550131464517488.a n = A132194 (n + 1)

end A132194

/-! ## A132194.P12815993422389512738

`A060800(n+1)%3`
-/

namespace A132194.P12815993422389512738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060800 (n + 1)) 3

end

end A132194.P12815993422389512738

namespace A132194

/-- `A060800(n+1)%3` -/
def P12815993422389512738.Spec : Prop :=
  ∀ n, P12815993422389512738.a n = A132194 (n + 1)

end A132194

/-! ## A132194.P10365508226763790330

`A068503(n+1)%3`
-/

namespace A132194.P10365508226763790330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068503 (n + 1)) 3

end

end A132194.P10365508226763790330

namespace A132194

/-- `A068503(n+1)%3` -/
def P10365508226763790330.Spec : Prop :=
  ∀ n, P10365508226763790330.a n = A132194 (n + 1)

end A132194

/-! ## A132194.P9708489064025340221

`A156037(n+1)%3`
-/

namespace A132194.P9708489064025340221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156037 (n + 1)) 3

end

end A132194.P9708489064025340221

namespace A132194

/-- `A156037(n+1)%3` -/
def P9708489064025340221.Spec : Prop :=
  ∀ n, P9708489064025340221.a n = A132194 (n + 1)

end A132194

/-! ## A132194.P14151293330492406379

`A181151(n+1)%3`
-/

namespace A132194.P14151293330492406379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181151 (n + 1)) 3

end

end A132194.P14151293330492406379

namespace A132194

/-- `A181151(n+1)%3` -/
def P14151293330492406379.Spec : Prop :=
  ∀ n, P14151293330492406379.a n = A132194 (n + 1)

end A132194

/-! ## A132194.P8421504378924643506

`val(A083558(n+1), 3)`
-/

namespace A132194.P8421504378924643506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A083558 (n + 1)).toNat 3

end

end A132194.P8421504378924643506

namespace A132194

/-- `val(A083558(n+1), 3)` -/
def P8421504378924643506.Spec : Prop :=
  ∀ n, (P8421504378924643506.a n : ℤ) = A132194 (n + 1)

end A132194

/-! ## A132194.P7467332110631663910

`val(A133064(n+1), 6)`
-/

namespace A132194.P7467332110631663910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A133064 (n + 1)).toNat 6

end

end A132194.P7467332110631663910

namespace A132194

/-- `val(A133064(n+1), 6)` -/
def P7467332110631663910.Spec : Prop :=
  ∀ n, (P7467332110631663910.a n : ℤ) = A132194 (n + 1)

end A132194

/-! ## A132194.P8463719015894979221

`(1-A039701(n+1))²`
-/

namespace A132194.P8463719015894979221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A039701 (n + 1)) ^ 2

end

end A132194.P8463719015894979221

namespace A132194

/-- `(1-A039701(n+1))²` -/
def P8463719015894979221.Spec : Prop :=
  ∀ n, P8463719015894979221.a n = A132194 (n + 1)

end A132194

/-! ## A132194.P3987520754208692256

`A006093(n+1)²%3`
-/

namespace A132194.P3987520754208692256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) ^ 2) 3

end

end A132194.P3987520754208692256

namespace A132194

/-- `A006093(n+1)²%3` -/
def P3987520754208692256.Spec : Prop :=
  ∀ n, P3987520754208692256.a n = A132194 (n + 1)

end A132194

/-! ## A132194.P1675370133841550987

`A072055(n+1)²%3`
-/

namespace A132194.P1675370133841550987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072055 (n + 1) ^ 2) 3

end

end A132194.P1675370133841550987

namespace A132194

/-- `A072055(n+1)²%3` -/
def P1675370133841550987.Spec : Prop :=
  ∀ n, P1675370133841550987.a n = A132194 (n + 1)

end A132194

/-! ## A132194.P4915071494383031356

`ceil(log(sqrt(A039704(n+1))))`
-/

namespace A132194.P4915071494383031356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.sqrt (A039704 (n + 1) : ℝ))⌉

end

end A132194.P4915071494383031356

namespace A132194

/-- `ceil(log(sqrt(A039704(n+1))))` -/
def P4915071494383031356.Spec : Prop :=
  ∀ n, P4915071494383031356.a n = A132194 (n + 1)

end A132194

/-! ## A132194.P14301800731374163653

`∏{d}[A271228(n+1), log(#)]`
-/

namespace A132194.P14301800731374163653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271228 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A132194.P14301800731374163653

namespace A132194

/-- `∏{d}[A271228(n+1), log(#)]` -/
def P14301800731374163653.Spec : Prop :=
  ∀ n, P14301800731374163653.a n = (A132194 (n + 1) : ℝ)

end A132194

/-! ## A132194.P4700490154768053661

`∏{d}[A272198(n+1), log(#)]`
-/

namespace A132194.P4700490154768053661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272198 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A132194.P4700490154768053661

namespace A132194

/-- `∏{d}[A272198(n+1), log(#)]` -/
def P4700490154768053661.Spec : Prop :=
  ∀ n, P4700490154768053661.a n = (A132194 (n + 1) : ℝ)

end A132194

/-! ## A132194.P3547444046040464054

`∏{d}[A272203(n+1), log(#)]`
-/

namespace A132194.P3547444046040464054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272203 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A132194.P3547444046040464054

namespace A132194

/-- `∏{d}[A272203(n+1), log(#)]` -/
def P3547444046040464054.Spec : Prop :=
  ∀ n, P3547444046040464054.a n = (A132194 (n + 1) : ℝ)

end A132194

/-! ## A132194.P17615521478460178570

`floor(atan(A000040(n+1)%6))`
-/

namespace A132194.P17615521478460178570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (Int.tmod (A000040 (n + 1)) 6 : ℝ)⌋

end

end A132194.P17615521478460178570

namespace A132194

/-- `floor(atan(A000040(n+1)%6))` -/
def P17615521478460178570.Spec : Prop :=
  ∀ n, P17615521478460178570.a n = A132194 (n + 1)

end A132194

/-! ## A132194.P527804533704409580

`(A040976(n+1)+1)²%3`
-/

namespace A132194.P527804533704409580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A040976 (n + 1) + 1) ^ 2) 3

end

end A132194.P527804533704409580

namespace A132194

/-- `(A040976(n+1)+1)²%3` -/
def P527804533704409580.Spec : Prop :=
  ∀ n, P527804533704409580.a n = A132194 (n + 1)

end A132194

/-! ## A132194.P7646836023315338185

`A000360(A039710(n+1))`
-/

namespace A132194.P7646836023315338185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (A039710 (n + 1)).toNat

end

end A132194.P7646836023315338185

namespace A132194

/-- `A000360(A039710(n+1))` -/
def P7646836023315338185.Spec : Prop :=
  ∀ n, P7646836023315338185.a n = A132194 (n + 1)

end A132194

/-! ## A132194.P5725441673306276444

`1-A024375(A039713(n+1))`
-/

namespace A132194.P5725441673306276444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A024375 (A039713 (n + 1)).toNat

end

end A132194.P5725441673306276444

namespace A132194

/-- `1-A024375(A039713(n+1))` -/
def P5725441673306276444.Spec : Prop :=
  ∀ n, P5725441673306276444.a n = A132194 (n + 1)

end A132194

/-! ## A132194.P1496464791329457783

`A008349(n)%A039704(n+1)`
-/

namespace A132194.P1496464791329457783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008349 n) (A039704 (n + 1))

end

end A132194.P1496464791329457783

namespace A132194

/-- `A008349(n)%A039704(n+1)` -/
def P1496464791329457783.Spec : Prop :=
  ∀ n, P1496464791329457783.a n = A132194 (n + 1)

end A132194

/-!
# A132196: a(2n+1) = 2a(2n)-n for the odd indices. Smallest strictly positive integer not yet in the list for the even indices, a(2n).

The programs for A132196, the canonical program `A132196.P17347026632687300166` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132196 has offset 0).

The definition of A132196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132196.P17347026632687300166

`A160588(n)+A092323(n+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A132196

/-- `A160588(n)+A092323(n+2)` -/
def P17347026632687300166.Spec : Prop :=
  ∀ n, P17347026632687300166.a n = A132196 n

theorem P17347026632687300166.correct : P17347026632687300166.Spec := by
  intro n
  simp only [A132196]

end A132196

/-! ## A132196.P1898963277593996739

`A080542(n+2)-1`
-/

namespace A132196.P1898963277593996739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (n + 2) - 1

end

end A132196.P1898963277593996739

namespace A132196

/-- `A080542(n+2)-1` -/
def P1898963277593996739.Spec : Prop :=
  ∀ n, P1898963277593996739.a n = A132196 n

end A132196

/-! ## A132196.P4887748353738500512

`∑[-Δ[-A080542(n+1)]]`
-/

namespace A132196.P4887748353738500512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A080542 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132196.P4887748353738500512

namespace A132196

/-- `∑[-Δ[-A080542(n+1)]]` -/
def P4887748353738500512.Spec : Prop :=
  ∀ n, P4887748353738500512.a n = A132196 n

end A132196

/-! ## A132196.P2614678936190292553

`∑[Δ[A080542(n+1)]%A016825(n)]`
-/

namespace A132196.P2614678936190292553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A016825 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132196.P2614678936190292553

namespace A132196

/-- `∑[Δ[A080542(n+1)]%A016825(n)]` -/
def P2614678936190292553.Spec : Prop :=
  ∀ n, P2614678936190292553.a n = A132196 n

end A132196

/-! ## A132196.P9534291498656970517

`A110210(n*A000007(n))+A080542(n+2)`
-/

namespace A132196.P9534291498656970517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110210 ((n : ℤ) * A000007 n).toNat + A080542 (n + 2)

end

end A132196.P9534291498656970517

namespace A132196

/-- `A110210(n*A000007(n))+A080542(n+2)` -/
def P9534291498656970517.Spec : Prop :=
  ∀ n, P9534291498656970517.a n = A132196 n

end A132196

/-! ## A132196.P175333978765206198

`A080544(A080541(n+2))-1`
-/

namespace A132196.P175333978765206198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080544 (A080541 (n + 2)).toNat - 1

end

end A132196.P175333978765206198

namespace A132196

/-- `A080544(A080541(n+2))-1` -/
def P175333978765206198.Spec : Prop :=
  ∀ n, P175333978765206198.a n = A132196 n

end A132196

/-! ## A132196.P131026494402144097

`A059893(A163807(n+2))-1`
-/

namespace A132196.P131026494402144097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A163807 (n + 2)).toNat - 1

end

end A132196.P131026494402144097

namespace A132196

/-- `A059893(A163807(n+2))-1` -/
def P131026494402144097.Spec : Prop :=
  ∀ n, P131026494402144097.a n = A132196 n

end A132196

/-! ## A132196.P174646267237930680

`A023443(A080542(n+2))`
-/

namespace A132196.P174646267237930680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080542 (n + 2)).toNat

end

end A132196.P174646267237930680

namespace A132196

/-- `A023443(A080542(n+2))` -/
def P174646267237930680.Spec : Prop :=
  ∀ n, P174646267237930680.a n = A132196 n

end A132196

/-!
# A132197: 2^n-1 written 2^n-1 times.

The programs for A132197, there is no canonical definition to state claims against.
-/

/-! ## A132197.P6302504625532063113

`∏[char[∑[2^n-1]]+1]-1`
-/

namespace A132197.P6302504625532063113
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A132197.P6302504625532063113

/-! ## A132197.P13778105733559316280

`or(∑[comp[2^n]%2]+1, a(n-1))` with `a(0)=1`
-/

namespace A132197.P13778105733559316280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f1 j + 1) (a (n - 1))

end

end A132197.P13778105733559316280

/-! ## A132197.P5920430118775196743

`or(comp[2^n]-a(n-1), a(n-1))` with `a(0)=1`
-/

namespace A132197.P5920430118775196743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - a (n - 1)) (a (n - 1))

end

end A132197.P5920430118775196743

/-! ## A132197.P15184656348517765995

`A092323(comp[2^n-1])`
-/

namespace A132197.P15184656348517765995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092323 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A132197.P15184656348517765995

/-! ## A132197.P13022218467541046822

`or(a(n-1), A302290(n))` with `a(0)=1`
-/

namespace A132197.P13022218467541046822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1)) (A302290 n)

end

end A132197.P13022218467541046822

/-! ## A132197.P2945131313307215467

`A000225(floor(log2(comp[2^n-1])))`
-/

namespace A132197.P2945131313307215467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Nat.log 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A132197.P2945131313307215467

/-! ## A132197.P12791513726536450774

`or(a(n-1), A004001(n+2))` with `a(0)=1`
-/

namespace A132197.P12791513726536450774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1)) (A004001 (n + 2))

end

end A132197.P12791513726536450774

/-! ## A132197.P8929699204737090420

`A086099(A007843(n+1))`
-/

namespace A132197.P8929699204737090420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (A007843 (n + 1)).toNat

end

end A132197.P8929699204737090420

/-! ## A132197.P13432204959916415853

`A003817(A274089(n+1))`
-/

namespace A132197.P13432204959916415853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A274089 (n + 1)).toNat

end

end A132197.P13432204959916415853

/-! ## A132197.P12794522991831550459

`A159913(A351993(n+1))`
-/

namespace A132197.P12794522991831550459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159913 (A351993 (n + 1)).toNat

end

end A132197.P12794522991831550459

/-!
# A132198: a(n) is the least prime >= 2^(2^n).

The programs for A132198, there is no canonical definition to state claims against.
-/

/-! ## A132198.P1838570305117030846

`A104080(2^n)`
-/

namespace A132198.P1838570305117030846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104080 (2 ^ n)

end

end A132198.P1838570305117030846

/-! ## A132198.P3821485356181996033

`A014210(2^n*A057427(n))`
-/

namespace A132198.P3821485356181996033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 ((2 ^ n : ℤ) * A057427 n).toNat

end

end A132198.P3821485356181996033

/-! ## A132198.P6700548655110760611

`A014210(and(2^n, A014210(n)))`
-/

namespace A132198.P6700548655110760611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (Int.land (2 ^ n : ℤ) (A014210 n)).toNat

end

end A132198.P6700548655110760611

/-! ## A132198.P367222969870921750

`A014210(xor(2^n, A000007(n)))`
-/

namespace A132198.P367222969870921750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (Int.xor (2 ^ n : ℤ) (A000007 n)).toNat

end

end A132198.P367222969870921750

/-! ## A132198.P9869933159730544829

`A014210(Δ[A004273(ceil(2^(n-1)))])`
-/

namespace A132198.P9869933159730544829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (f1 (n + 1) - f1 n).toNat

end

end A132198.P9869933159730544829

/-!
# A132199: Rowland's prime-generating sequence: first differences of A106108.

The programs for A132199, the canonical program `A132199.P10057998437925682092` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132199 has offset 1).

The definition of A132199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132199.P10057998437925682092

`A106108(n+2)-A106108(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A132199

/-- `A106108(n+2)-A106108(n+1)` -/
def P10057998437925682092.Spec : Prop :=
  ∀ n, P10057998437925682092.a n = A132199 (n + 1)

theorem P10057998437925682092.correct : P10057998437925682092.Spec := by
  intro n
  simp only [A132199, Nat.add_sub_cancel]

end A132199

/-! ## A132199.P875955925467701287

`Δ[a(n-1)+gcd(n+1, a(n-1))]` with `a(0)=7`
-/

namespace A132199.P875955925467701287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + Nat.gcd (n + 1) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132199.P875955925467701287

namespace A132199

/-- `Δ[a(n-1)+gcd(n+1, a(n-1))]` -/
def P875955925467701287.Spec : Prop :=
  ∀ n, P875955925467701287.a n = A132199 (n + 1)

theorem P875955925467701287.correct : P875955925467701287.Spec := by
  intro n
  simp only [A132199, Nat.add_sub_cancel, A132199.P875955925467701287.f1, A132199.P875955925467701287.a, A132199.P10057998437925682092.a, A106108, A106108.P10627651117089182159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132199

/-! ## A132199.P8589887326913628850

`Δ[A106108(n+1)]`
-/

namespace A132199.P8589887326913628850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132199.P8589887326913628850

namespace A132199

/-- `Δ[A106108(n+1)]` -/
def P8589887326913628850.Spec : Prop :=
  ∀ n, P8589887326913628850.a n = A132199 (n + 1)

theorem P8589887326913628850.correct : P8589887326913628850.Spec := by
  intro n
  simp only [A132199, Nat.add_sub_cancel, A132199.P8589887326913628850.f1, A132199.P8589887326913628850.a, A132199.P10057998437925682092.a, SequenceMachineLib.memo_apply]

end A132199

/-! ## A132199.P3167828643149250763

`A134743(1-char[1]+n)`
-/

namespace A132199.P3167828643149250763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134743 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A132199.P3167828643149250763

namespace A132199

/-- `A134743(1-char[1]+n)` -/
def P3167828643149250763.Spec : Prop :=
  ∀ n, P3167828643149250763.a n = A132199 (n + 1)

end A132199

/-! ## A132199.P12380116883732234666

`A134734(n+1)-C(2, n²)`
-/

namespace A132199.P12380116883732234666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134734 (n + 1) - (Nat.choose 2 (n ^ 2) : ℤ)

end

end A132199.P12380116883732234666

namespace A132199

/-- `A134734(n+1)-C(2, n²)` -/
def P12380116883732234666.Spec : Prop :=
  ∀ n, P12380116883732234666.a n = A132199 (n + 1)

end A132199

/-! ## A132199.P9603079881299927751

`A134734(n+1)-A130706(n)`
-/

namespace A132199.P9603079881299927751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134734 (n + 1) - A130706 n

end

end A132199.P9603079881299927751

namespace A132199

/-- `A134734(n+1)-A130706(n)` -/
def P9603079881299927751.Spec : Prop :=
  ∀ n, P9603079881299927751.a n = A132199 (n + 1)

end A132199

/-! ## A132199.P14408375143838198440

`A134743(n+1)%A002082(n)`
-/

namespace A132199.P14408375143838198440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134743 (n + 1)) (A002082 n)

end

end A132199.P14408375143838198440

namespace A132199

/-- `A134743(n+1)%A002082(n)` -/
def P14408375143838198440.Spec : Prop :=
  ∀ n, P14408375143838198440.a n = A132199 (n + 1)

end A132199

/-! ## A132199.P8352614453808001674

`gcd(A057544(n), A084662(n+1))`
-/

namespace A132199.P8352614453808001674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057544 n) (A084662 (n + 1))

end

end A132199.P8352614453808001674

namespace A132199

/-- `gcd(A057544(n), A084662(n+1))` -/
def P8352614453808001674.Spec : Prop :=
  ∀ n, (P8352614453808001674.a n : ℤ) = A132199 (n + 1)

end A132199

/-! ## A132199.P2144431667822517540

`and(A134743(n+1), A260196(n))`
-/

namespace A132199.P2144431667822517540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134743 (n + 1)) (A260196 n)

end

end A132199.P2144431667822517540

namespace A132199

/-- `and(A134743(n+1), A260196(n))` -/
def P2144431667822517540.Spec : Prop :=
  ∀ n, P2144431667822517540.a n = A132199 (n + 1)

end A132199

/-! ## A132199.P8808824398930430438

`gcd(A020725(n+1), A106108(n+1))`
-/

namespace A132199.P8808824398930430438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020725 (n + 1)) (A106108 (n + 1))

end

end A132199.P8808824398930430438

namespace A132199

/-- `gcd(A020725(n+1), A106108(n+1))` -/
def P8808824398930430438.Spec : Prop :=
  ∀ n, (P8808824398930430438.a n : ℤ) = A132199 (n + 1)

end A132199

/-! ## A132199.P5765647867508182630

`A134743(n+1)/A134734(A084662(n+1)-1)`
-/

namespace A132199.P5765647867508182630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134743 (n + 1) : ℚ) / (A134734 (A084662 (n + 1) - 1).toNat : ℚ)

end

end A132199.P5765647867508182630

namespace A132199

/-- `A134743(n+1)/A134734(A084662(n+1)-1)` -/
def P5765647867508182630.Spec : Prop :=
  ∀ n, P5765647867508182630.a n = (A132199 (n + 1) : ℚ)

end A132199

/-! ## A132199.P6834561822939006146

`A134743(n+1)/A134743(A084662(n+1)-1)`
-/

namespace A132199.P6834561822939006146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134743 (n + 1) : ℚ) / (A134743 (A084662 (n + 1) - 1).toNat : ℚ)

end

end A132199.P6834561822939006146

namespace A132199

/-- `A134743(n+1)/A134743(A084662(n+1)-1)` -/
def P6834561822939006146.Spec : Prop :=
  ∀ n, P6834561822939006146.a n = (A132199 (n + 1) : ℚ)

end A132199

/-! ## A132199.P15447168990649846041

`and(A134743(n+1), A255047(n))`
-/

namespace A132199.P15447168990649846041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134743 (n + 1)) (A255047 n)

end

end A132199.P15447168990649846041

namespace A132199

/-- `and(A134743(n+1), A255047(n))` -/
def P15447168990649846041.Spec : Prop :=
  ∀ n, P15447168990649846041.a n = A132199 (n + 1)

end A132199

/-! ## A132199.P18066707702359410983

`and(A134743(n+1), A283908(n))`
-/

namespace A132199.P18066707702359410983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134743 (n + 1)) (A283908 n)

end

end A132199.P18066707702359410983

namespace A132199

/-- `and(A134743(n+1), A283908(n))` -/
def P18066707702359410983.Spec : Prop :=
  ∀ n, P18066707702359410983.a n = A132199 (n + 1)

end A132199

/-! ## A132199.P7605829113615230264

`and(A134743(n+1), A284022(n))`
-/

namespace A132199.P7605829113615230264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134743 (n + 1)) (A284022 n)

end

end A132199.P7605829113615230264

namespace A132199

/-- `and(A134743(n+1), A284022(n))` -/
def P7605829113615230264.Spec : Prop :=
  ∀ n, P7605829113615230264.a n = A132199 (n + 1)

end A132199

/-! ## A132199.P15927172109886584710

`and(A134743(n+1), A286858(n))`
-/

namespace A132199.P15927172109886584710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134743 (n + 1)) (A286858 n)

end

end A132199.P15927172109886584710

namespace A132199

/-- `and(A134743(n+1), A286858(n))` -/
def P15927172109886584710.Spec : Prop :=
  ∀ n, P15927172109886584710.a n = A132199 (n + 1)

end A132199

/-! ## A132199.P7889702410200838246

`and(A134743(n+1), A288906(n))`
-/

namespace A132199.P7889702410200838246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134743 (n + 1)) (A288906 n)

end

end A132199.P7889702410200838246

namespace A132199

/-- `and(A134743(n+1), A288906(n))` -/
def P7889702410200838246.Spec : Prop :=
  ∀ n, P7889702410200838246.a n = A132199 (n + 1)

end A132199

/-! ## A132199.P12263234567569227484

`and(A134743(n+1), A289041(n))`
-/

namespace A132199.P12263234567569227484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134743 (n + 1)) (A289041 n)

end

end A132199.P12263234567569227484

namespace A132199

/-- `and(A134743(n+1), A289041(n))` -/
def P12263234567569227484.Spec : Prop :=
  ∀ n, P12263234567569227484.a n = A132199 (n + 1)

end A132199

/-! ## A132199.P16331477576851831253

`and(A134743(n+1), A289370(n))`
-/

namespace A132199.P16331477576851831253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134743 (n + 1)) (A289370 n)

end

end A132199.P16331477576851831253

namespace A132199

/-- `and(A134743(n+1), A289370(n))` -/
def P16331477576851831253.Spec : Prop :=
  ∀ n, P16331477576851831253.a n = A132199 (n + 1)

end A132199

/-! ## A132199.P12972578833206607929

`and(A134743(n+1), A289932(n))`
-/

namespace A132199.P12972578833206607929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134743 (n + 1)) (A289932 n)

end

end A132199.P12972578833206607929

namespace A132199

/-- `and(A134743(n+1), A289932(n))` -/
def P12972578833206607929.Spec : Prop :=
  ∀ n, P12972578833206607929.a n = A132199 (n + 1)

end A132199

