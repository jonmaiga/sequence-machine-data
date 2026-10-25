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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B001.C005
import Seq.B001.C006
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A075101: Numerator of 2^n/n.

The programs for A075101, the canonical program `A075101.P17453559021154753691` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075101 has offset 1).

The definition of A075101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075101.P16276179183968094897

`2^(n+1-val(n+1, 2))`
-/

namespace A075101.P16276179183968094897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ)

end

end A075101.P16276179183968094897

namespace A075101

/-- `2^(n+1-val(n+1, 2))` -/
def P16276179183968094897.Spec : Prop :=
  ∀ n, P16276179183968094897.a n = (A075101 (n + 1) : ℚ)

end A075101

/-! ## A075101.P5378370333450860853

`2^(n+1)/gcd(n+1, 2^(n+1))`
-/

namespace A075101.P5378370333450860853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) / (Nat.gcd (n + 1) (2 ^ (n + 1)) : ℚ)

end

end A075101.P5378370333450860853

namespace A075101

/-- `2^(n+1)/gcd(n+1, 2^(n+1))` -/
def P5378370333450860853.Spec : Prop :=
  ∀ n, P5378370333450860853.a n = (A075101 (n + 1) : ℚ)

end A075101

/-! ## A075101.P17453559021154753691

`2*A084623(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A075101

/-- `2*A084623(n+1)` -/
def P17453559021154753691.Spec : Prop :=
  ∀ n, P17453559021154753691.a n = A075101 (n + 1)

theorem P17453559021154753691.correct : P17453559021154753691.Spec := by
  intro n
  simp only [A075101, Nat.add_sub_cancel]

end A075101

/-! ## A075101.P9332293166961077335

`2^A093048(n+1)`
-/

namespace A075101.P9332293166961077335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A093048 (n + 1) : ℤ)

end

end A075101.P9332293166961077335

namespace A075101

/-- `2^A093048(n+1)` -/
def P9332293166961077335.Spec : Prop :=
  ∀ n, P9332293166961077335.a n = (A075101 (n + 1) : ℚ)

end A075101

/-! ## A075101.P11253650067287787540

`2^(n+1-A007814(n+1))`
-/

namespace A075101.P11253650067287787540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - A007814 (n + 1) : ℤ)

end

end A075101.P11253650067287787540

namespace A075101

/-- `2^(n+1-A007814(n+1))` -/
def P11253650067287787540.Spec : Prop :=
  ∀ n, P11253650067287787540.a n = (A075101 (n + 1) : ℚ)

end A075101

/-! ## A075101.P15977698190207446795

`2^(n+1)/and(n+1, -(n+1))`
-/

namespace A075101.P15977698190207446795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

end

end A075101.P15977698190207446795

namespace A075101

/-- `2^(n+1)/and(n+1, -(n+1))` -/
def P15977698190207446795.Spec : Prop :=
  ∀ n, P15977698190207446795.a n = (A075101 (n + 1) : ℚ)

end A075101

/-! ## A075101.P17622708904528724130

`lcm(2, A279635(n+1))`
-/

namespace A075101.P17622708904528724130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A279635 (n + 1))

end

end A075101.P17622708904528724130

namespace A075101

/-- `lcm(2, A279635(n+1))` -/
def P17622708904528724130.Spec : Prop :=
  ∀ n, (P17622708904528724130.a n : ℤ) = A075101 (n + 1)

end A075101

/-! ## A075101.P15333705649057124569

`2^(Δ[A000120(n)]+n)`
-/

namespace A075101.P15333705649057124569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n + (n : ℤ) : ℤ)

end

end A075101.P15333705649057124569

namespace A075101

/-- `2^(Δ[A000120(n)]+n)` -/
def P15333705649057124569.Spec : Prop :=
  ∀ n, P15333705649057124569.a n = (A075101 (n + 1) : ℚ)

end A075101

/-! ## A075101.P9993786416766555747

`2^(A093049(n+1)+1)`
-/

namespace A075101.P9993786416766555747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A093049 (n + 1) + 1 : ℤ)

end

end A075101.P9993786416766555747

namespace A075101

/-- `2^(A093049(n+1)+1)` -/
def P9993786416766555747.Spec : Prop :=
  ∀ n, P9993786416766555747.a n = (A075101 (n + 1) : ℚ)

end A075101

/-! ## A075101.P9794121692323767133

`2^(A088705(n+1)+n)`
-/

namespace A075101.P9794121692323767133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A088705 (n + 1) + (n : ℤ) : ℤ)

end

end A075101.P9794121692323767133

namespace A075101

/-- `2^(A088705(n+1)+n)` -/
def P9794121692323767133.Spec : Prop :=
  ∀ n, P9794121692323767133.a n = (A075101 (n + 1) : ℚ)

end A075101

/-! ## A075101.P16975835733284797465

`2^(3-A085058(n)+n)`
-/

namespace A075101.P16975835733284797465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (3 - A085058 n + (n : ℤ) : ℤ)

end

end A075101.P16975835733284797465

namespace A075101

/-- `2^(3-A085058(n)+n)` -/
def P16975835733284797465.Spec : Prop :=
  ∀ n, P16975835733284797465.a n = (A075101 (n + 1) : ℚ)

end A075101

/-! ## A075101.P8780305678819901664

`2^(n+2-A001511(n+1))`
-/

namespace A075101.P8780305678819901664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 2 : ℤ) - A001511 (n + 1) : ℤ)

end

end A075101.P8780305678819901664

namespace A075101

/-- `2^(n+2-A001511(n+1))` -/
def P8780305678819901664.Spec : Prop :=
  ∀ n, P8780305678819901664.a n = (A075101 (n + 1) : ℚ)

end A075101

/-! ## A075101.P17296360023207388892

`2^(A101921(n+1)-(n-1))`
-/

namespace A075101.P17296360023207388892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A101921 (n + 1) - ((n : ℤ) - 1) : ℤ)

end

end A075101.P17296360023207388892

namespace A075101

/-- `2^(A101921(n+1)-(n-1))` -/
def P17296360023207388892.Spec : Prop :=
  ∀ n, P17296360023207388892.a n = (A075101 (n + 1) : ℚ)

end A075101

/-! ## A075101.P11607857637575006277

`2^(n+1)/A006519(n+1)`
-/

namespace A075101.P11607857637575006277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A075101.P11607857637575006277

namespace A075101

/-- `2^(n+1)/A006519(n+1)` -/
def P11607857637575006277.Spec : Prop :=
  ∀ n, P11607857637575006277.a n = (A075101 (n + 1) : ℚ)

end A075101

/-! ## A075101.P18279116178961081290

`2^(n+3-A089080(n+2))`
-/

namespace A075101.P18279116178961081290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 3 : ℤ) - A089080 (n + 2) : ℤ)

end

end A075101.P18279116178961081290

namespace A075101

/-- `2^(n+3-A089080(n+2))` -/
def P18279116178961081290.Spec : Prop :=
  ∀ n, P18279116178961081290.a n = (A075101 (n + 1) : ℚ)

end A075101

/-! ## A075101.P9864596621030602767

`A011782(n-val(n+1, 2)+2)`
-/

namespace A075101.P9864596621030602767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ((n : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) + 2).toNat

end

end A075101.P9864596621030602767

namespace A075101

/-- `A011782(n-val(n+1, 2)+2)` -/
def P9864596621030602767.Spec : Prop :=
  ∀ n, P9864596621030602767.a n = A075101 (n + 1)

end A075101

/-! ## A075101.P7860061465644375270

`A011782(xor(n, val(n+1, 2))+2)`
-/

namespace A075101.P7860061465644375270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (Nat.xor n (SequenceMachineLib.valuation (n + 1) 2) + 2)

end

end A075101.P7860061465644375270

namespace A075101

/-- `A011782(xor(n, val(n+1, 2))+2)` -/
def P7860061465644375270.Spec : Prop :=
  ∀ n, P7860061465644375270.a n = A075101 (n + 1)

end A075101

/-! ## A075101.P2149208007284386816

`A000079(A093048(n+1))`
-/

namespace A075101.P2149208007284386816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A093048 (n + 1)).toNat

end

end A075101.P2149208007284386816

namespace A075101

/-- `A000079(A093048(n+1))` -/
def P2149208007284386816.Spec : Prop :=
  ∀ n, P2149208007284386816.a n = A075101 (n + 1)

end A075101

/-! ## A075101.P176830904462909606

`A000079(Δ[A000120(n)]+n)`
-/

namespace A075101.P176830904462909606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A075101.P176830904462909606

namespace A075101

/-- `A000079(Δ[A000120(n)]+n)` -/
def P176830904462909606.Spec : Prop :=
  ∀ n, P176830904462909606.a n = A075101 (n + 1)

end A075101

/-! ## A075101.P5519665693815414381

`A000079(A093049(n+1)+1)`
-/

namespace A075101.P5519665693815414381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A093049 (n + 1) + 1).toNat

end

end A075101.P5519665693815414381

namespace A075101

/-- `A000079(A093049(n+1)+1)` -/
def P5519665693815414381.Spec : Prop :=
  ∀ n, P5519665693815414381.a n = A075101 (n + 1)

end A075101

/-!
# A075103: Integer reached in A075102.

The programs for A075103, there is no canonical definition to state claims against.
-/

/-! ## A075103.P8839482091463890120

`A075108(2^(n+1))`
-/

namespace A075103.P8839482091463890120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075108 (2 ^ (n + 1))

end

end A075103.P8839482091463890120

/-!
# A075104: Greatest common divisor of n and integer part of log_2(n).

The programs for A075104, the canonical program `A075104.P6994056113091172515` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075104 has offset 1).

The definition of A075104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075104.P6994056113091172515

`gcd(n+1, A000523(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075104

/-- `gcd(n+1, A000523(n+1))` -/
def P6994056113091172515.Spec : Prop :=
  ∀ n, (P6994056113091172515.a n : ℤ) = A075104 (n + 1)

theorem P6994056113091172515.correct : P6994056113091172515.Spec := by
  intro n
  simp only [A075104, Nat.add_sub_cancel]

end A075104

/-! ## A075104.P314147345308973510

`sqrt(gcd((n+1)², ∑[A006530(n+1)%2]²))`
-/

namespace A075104.P314147345308973510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 1)) 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd ((n + 1) ^ 2 : ℤ) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) : ℝ)

end

end A075104.P314147345308973510

namespace A075104

/-- `sqrt(gcd((n+1)², ∑[A006530(n+1)%2]²))` -/
def P314147345308973510.Spec : Prop :=
  ∀ n, P314147345308973510.a n = (A075104 (n + 1) : ℝ)

end A075104

/-! ## A075104.P8865973961255278035

`gcd(A080804(n+1), A131738(n))`
-/

namespace A075104.P8865973961255278035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080804 (n + 1)) (A131738 n)

end

end A075104.P8865973961255278035

namespace A075104

/-- `gcd(A080804(n+1), A131738(n))` -/
def P8865973961255278035.Spec : Prop :=
  ∀ n, (P8865973961255278035.a n : ℤ) = A075104 (n + 1)

end A075104

/-! ## A075104.P10161517916872885544

`A000027(gcd(1-A070939(n+1), ϕ²-(ϕ-n)))`
-/

namespace A075104.P10161517916872885544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (1 - A070939 (n + 1)) (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))))

end

end A075104.P10161517916872885544

namespace A075104

/-- `A000027(gcd(1-A070939(n+1), ϕ²-(ϕ-n)))` -/
def P10161517916872885544.Spec : Prop :=
  ∀ n, P10161517916872885544.a n = A075104 (n + 1)

end A075104

/-! ## A075104.P5189887222381413825

`A000027(gcd(A000027(n+1), A059939(2*(n+1))))`
-/

namespace A075104.P5189887222381413825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (A000027 (n + 1)) (A059939 (2 * (n + 1))))

end

end A075104.P5189887222381413825

namespace A075104

/-- `A000027(gcd(A000027(n+1), A059939(2*(n+1))))` -/
def P5189887222381413825.Spec : Prop :=
  ∀ n, P5189887222381413825.a n = A075104 (n + 1)

end A075104

/-! ## A075104.P4648884273123801996

`A003989(∑[n]+1-floor(log2(n+1)))`
-/

namespace A075104.P4648884273123801996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (∑ j ∈ Finset.range (n + 1), f1 j + 1 - Nat.log 2 (n + 1))

end

end A075104.P4648884273123801996

namespace A075104

/-- `A003989(∑[n]+1-floor(log2(n+1)))` -/
def P4648884273123801996.Spec : Prop :=
  ∀ n, P4648884273123801996.a n = A075104 (n + 1)

end A075104

/-! ## A075104.P11281189766361272057

`A109004(floor(∑[n+1]+log2(n+1)))`
-/

namespace A075104.P11281189766361272057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.logb 2 (n + 1 : ℝ)⌋.toNat

end

end A075104.P11281189766361272057

namespace A075104

/-- `A109004(floor(∑[n+1]+log2(n+1)))` -/
def P11281189766361272057.Spec : Prop :=
  ∀ n, P11281189766361272057.a n = A075104 (n + 1)

end A075104

/-! ## A075104.P4076079838386765342

`A050873(∑[A014963(n+1)%2+n])`
-/

namespace A075104.P4076079838386765342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (n + 1)) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075104.P4076079838386765342

namespace A075104

/-- `A050873(∑[A014963(n+1)%2+n])` -/
def P4076079838386765342.Spec : Prop :=
  ∀ n, P4076079838386765342.a n = A075104 (n + 1)

end A075104

/-!
# A075105: Numerator of n/floor(log_2(n)); denominator is A075106(n).

The programs for A075105, the canonical program `A075105.P11919910157851516665` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075105 has offset 2).

The definition of A075105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075105.P11919910157851516665

`(n+2)/A075104(n+2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075105

/-- `(n+2)/A075104(n+2)` -/
def P11919910157851516665.Spec : Prop :=
  ∀ n, P11919910157851516665.a n = (A075105 (n + 2) : ℚ)

end A075105

/-! ## A075105.P843849195891795231

`(n+2)/gcd(n+2, A000523(n+2))`
-/

namespace A075105.P843849195891795231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd (n + 2 : ℤ) (A000523 (n + 2)) : ℚ)

end

end A075105.P843849195891795231

namespace A075105

/-- `(n+2)/gcd(n+2, A000523(n+2))` -/
def P843849195891795231.Spec : Prop :=
  ∀ n, P843849195891795231.a n = (A075105 (n + 2) : ℚ)

end A075105

/-! ## A075105.P2171717205767276707

`(n+2)*A075104(n+2)^or(-1, A000041(n))`
-/

namespace A075105.P2171717205767276707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (A075104 (n + 2) : ℚ) ^ (Int.lor (-1) (A000041 n) : ℤ)

end

end A075105.P2171717205767276707

namespace A075105

/-- `(n+2)*A075104(n+2)^or(-1, A000041(n))` -/
def P2171717205767276707.Spec : Prop :=
  ∀ n, P2171717205767276707.a n = (A075105 (n + 2) : ℚ)

end A075105

/-! ## A075105.P12465835143605747591

`(n+2)*A075104(n+2)^A008683(A098412(n+1))`
-/

namespace A075105.P12465835143605747591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (A075104 (n + 2) : ℚ) ^ (A008683 (A098412 (n + 1)).toNat : ℤ)

end

end A075105.P12465835143605747591

namespace A075105

/-- `(n+2)*A075104(n+2)^A008683(A098412(n+1))` -/
def P12465835143605747591.Spec : Prop :=
  ∀ n, P12465835143605747591.a n = (A075105 (n + 2) : ℚ)

end A075105

/-! ## A075105.P1121093339616211335

`A054531(A029837(n+3)+A000096(n))`
-/

namespace A075105.P1121093339616211335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A029837 (n + 3) + A000096 n).toNat

end

end A075105.P1121093339616211335

namespace A075105

/-- `A054531(A029837(n+3)+A000096(n))` -/
def P1121093339616211335.Spec : Prop :=
  ∀ n, P1121093339616211335.a n = A075105 (n + 2)

end A075105

/-! ## A075105.P8063544451872911778

`A054531(A000523(n+2)+A000217(n+1))`
-/

namespace A075105.P8063544451872911778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A000523 (n + 2) + A000217 (n + 1)).toNat

end

end A075105.P8063544451872911778

namespace A075105

/-- `A054531(A000523(n+2)+A000217(n+1))` -/
def P8063544451872911778.Spec : Prop :=
  ∀ n, P8063544451872911778.a n = A075105 (n + 2)

end A075105

/-! ## A075105.P16539426202209509066

`A054531(A059939(n+1)+Δ[A000292(n)]+1)`
-/

namespace A075105.P16539426202209509066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A059939 (n + 1) + (f1 (n + 1) - f1 n + 1)).toNat

end

end A075105.P16539426202209509066

namespace A075105

/-- `A054531(A059939(n+1)+Δ[A000292(n)]+1)` -/
def P16539426202209509066.Spec : Prop :=
  ∀ n, P16539426202209509066.a n = A075105 (n + 2)

end A075105

/-! ## A075105.P342893821797261135

`A054531(∑[A043545(n+1)+n+1]+1)`
-/

namespace A075105.P342893821797261135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A075105.P342893821797261135

namespace A075105

/-- `A054531(∑[A043545(n+1)+n+1]+1)` -/
def P342893821797261135.Spec : Prop :=
  ∀ n, P342893821797261135.a n = A075105 (n + 2)

end A075105

/-! ## A075105.P900936155897088879

`A054531(∑[n+2]-A000523(n+2)+1)`
-/

namespace A075105.P900936155897088879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000523 (n + 2) + 1).toNat

end

end A075105.P900936155897088879

namespace A075105

/-- `A054531(∑[n+2]-A000523(n+2)+1)` -/
def P900936155897088879.Spec : Prop :=
  ∀ n, P900936155897088879.a n = A075105 (n + 2)

end A075105

/-!
# A075106: Denominator of n/floor(log_2(n)); numerator is A075105(n).

The programs for A075106, the canonical program `A075106.P12256319414279370391` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075106 has offset 2).

The definition of A075106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075106.P12256319414279370391

`A000523(n+2)/A075104(n+2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075106

/-- `A000523(n+2)/A075104(n+2)` -/
def P12256319414279370391.Spec : Prop :=
  ∀ n, P12256319414279370391.a n = (A075106 (n + 2) : ℚ)

end A075106

/-! ## A075106.P3525487775512248026

`lcm(n+2, ceil(log2(acot(n+2))))/(n+2)`
-/

namespace A075106.P3525487775512248026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 2 : ℤ) ⌈Real.logb 2 (SequenceMachineLib.acot (n + 2 : ℝ))⌉ : ℚ) / (n + 2 : ℚ)

end

end A075106.P3525487775512248026

namespace A075106

/-- `lcm(n+2, ceil(log2(acot(n+2))))/(n+2)` -/
def P3525487775512248026.Spec : Prop :=
  ∀ n, P3525487775512248026.a n = (A075106 (n + 2) : ℚ)

end A075106

/-! ## A075106.P4760338255659847614

`Δ[A061168(n+1)]/A075104(n+2)`
-/

namespace A075106.P4760338255659847614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061168 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A075104 (n + 2) : ℚ)

end

end A075106.P4760338255659847614

namespace A075106

/-- `Δ[A061168(n+1)]/A075104(n+2)` -/
def P4760338255659847614.Spec : Prop :=
  ∀ n, P4760338255659847614.a n = (A075106 (n + 2) : ℚ)

end A075106

/-! ## A075106.P15467748400331032557

`A000523(floor(root(n+1, A075104(n+2)))+1)`
-/

namespace A075106.P15467748400331032557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (⌊(n + 1 : ℝ) ^ (1 / (A075104 (n + 2) : ℝ))⌋ + 1).toNat

end

end A075106.P15467748400331032557

namespace A075106

/-- `A000523(floor(root(n+1, A075104(n+2)))+1)` -/
def P15467748400331032557.Spec : Prop :=
  ∀ n, P15467748400331032557.a n = A075106 (n + 2)

end A075106

/-! ## A075106.P14208167546905675554

`A000523(n+2)/gcd(A000523(n+2), A131738(n+1))`
-/

namespace A075106.P14208167546905675554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000523 (n + 2) : ℚ) / (Int.gcd (A000523 (n + 2)) (A131738 (n + 1)) : ℚ)

end

end A075106.P14208167546905675554

namespace A075106

/-- `A000523(n+2)/gcd(A000523(n+2), A131738(n+1))` -/
def P14208167546905675554.Spec : Prop :=
  ∀ n, P14208167546905675554.a n = (A075106 (n + 2) : ℚ)

end A075106

/-!
# A075107: Number of steps to reach the first integer (= A075108(n)) starting with n/floor(log_2(n)) and iterating the map x -> x*ceiling(x), or -1 if no integer is ever reached.

The programs for A075107, there is no canonical definition to state claims against.
-/

/-! ## A075107.P8086693593914606834

`A251745(A280817(n+1)%A034372(2*n+1))+A075120(n+2)`
-/

namespace A075107.P8086693593914606834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251745 (Int.tmod (A280817 (n + 1)) (A034372 (2 * n + 1))).toNat + A075120 (n + 2)

end

end A075107.P8086693593914606834

/-! ## A075107.P13735686471258203378

`comp[∑[n]]%A154529(A058386(n))`
-/

namespace A075107.P13735686471258203378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A154529 (A058386 n).toNat)

end

end A075107.P13735686471258203378

/-! ## A075107.P4912906243130380486

`A180337(A180339(n))%A180360(2*(n+1))`
-/

namespace A075107.P4912906243130380486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180337 (A180339 n).toNat) (A180360 (2 * (n + 1)))

end

end A075107.P4912906243130380486

/-! ## A075107.P15451105134418298266

`A089339(A176200(2*n+1)%A089340(n+1))`
-/

namespace A075107.P15451105134418298266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089339 (Int.tmod (A176200 (2 * n + 1)) (A089340 (n + 1))).toNat

end

end A075107.P15451105134418298266

/-!
# A075109: Odd perfect powers (1 together with numbers m^k, m odd, k >= 2).

The programs for A075109, there is no canonical definition to state claims against.
-/

/-! ## A075109.P7960252967978730902

`∪[A216419(n+1), A244623(n+1)]`
-/

namespace A075109.P7960252967978730902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075109.P7960252967978730902

/-! ## A075109.P11187948999558265263

`∩[A001597(n+1), A062739(n+1)]`
-/

namespace A075109.P11187948999558265263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075109.P11187948999558265263

/-! ## A075109.P5504962707792124861

`A001597(eq[1, A001597(n+1)%2]+1)`
-/

namespace A075109.P5504962707792124861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001597 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075109.P5504962707792124861

/-! ## A075109.P16012215804989341700

`A001597(eq[1, gcd(2, A001597(n+1))]+1)`
-/

namespace A075109.P16012215804989341700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001597 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A075109.P16012215804989341700

/-! ## A075109.P4293576430608826480

`A001597(lt[val(A001597(n+1), 2), 1]+1)`
-/

namespace A075109.P4293576430608826480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001597 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A075109.P4293576430608826480

/-! ## A075109.P833365671268335537

`A001597(eq[1, and(1, A001597(n+1))]+1)`
-/

namespace A075109.P833365671268335537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001597 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075109.P833365671268335537

/-! ## A075109.P2709556677613733439

`A001597(record[n*and(1, A001597(n+1))]+1)`
-/

namespace A075109.P2709556677613733439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A001597 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A075109.P2709556677613733439

/-! ## A075109.P155106203511743267

`record[A001597(n+2)^(A001597(n+2)%2)]`
-/

namespace A075109.P155106203511743267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 2) : ℚ) ^ (Int.tmod (A001597 (n + 2)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075109.P155106203511743267

/-! ## A075109.P10168617627966532027

`∩[A062739(n+1), A396856(n+1)]`
-/

namespace A075109.P10168617627966532027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075109.P10168617627966532027

/-! ## A075109.P10004757221938400095

`record[A000265(A001597(n+1))]`
-/

namespace A075109.P10004757221938400095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001597 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075109.P10004757221938400095

/-! ## A075109.P11079188905813970738

`record[A000265(A045542(n+1)+1)]`
-/

namespace A075109.P11079188905813970738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A045542 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075109.P11079188905813970738

/-! ## A075109.P1404676411667655274

`filter[A001597(n+1), A039982(#)]`
-/

namespace A075109.P1404676411667655274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A075109.P1404676411667655274

/-! ## A075109.P16363517819498050462

`filter[A001597(n+1), A098725(#)]`
-/

namespace A075109.P16363517819498050462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A075109.P16363517819498050462

/-! ## A075109.P1974524964789215590

`filter[A001597(n+1), A166486(#)]`
-/

namespace A075109.P1974524964789215590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A075109.P1974524964789215590

/-!
# A075110: Concatenation of n-th prime and n in decimal notation.

The programs for A075110, the canonical program `A075110.P148917138412802764` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075110 has offset 1).

The definition of A075110 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004216, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A075110.P148917138412802764

`A000040(n+1)*10^(A004216(n+1)+1)+n+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075110

/-- `A000040(n+1)*10^(A004216(n+1)+1)+n+1` -/
def P148917138412802764.Spec : Prop :=
  ∀ n, P148917138412802764.a n = (A075110 (n + 1) : ℚ)

end A075110

/-! ## A075110.P5427482691521741439

`A322828(A000040(n+1))`
-/

namespace A075110.P5427482691521741439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322828 (A000040 (n + 1)).toNat

end

end A075110.P5427482691521741439

namespace A075110

/-- `A322828(A000040(n+1))` -/
def P5427482691521741439.Spec : Prop :=
  ∀ n, P5427482691521741439.a n = A075110 (n + 1)

end A075110

/-! ## A075110.P7738182453693718725

`A322828(A008578(n+2))`
-/

namespace A075110.P7738182453693718725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322828 (A008578 (n + 2)).toNat

end

end A075110.P7738182453693718725

namespace A075110

/-- `A322828(A008578(n+2))` -/
def P7738182453693718725.Spec : Prop :=
  ∀ n, P7738182453693718725.a n = A075110 (n + 1)

end A075110

/-! ## A075110.P13542152592835577446

`A322828(A182986(n+2))`
-/

namespace A075110.P13542152592835577446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322828 (A182986 (n + 2)).toNat

end

end A075110.P13542152592835577446

namespace A075110

/-- `A322828(A182986(n+2))` -/
def P13542152592835577446.Spec : Prop :=
  ∀ n, P13542152592835577446.a n = A075110 (n + 1)

end A075110

/-! ## A075110.P6605788517835769791

`A322828(record[A006530(n+2)])`
-/

namespace A075110.P6605788517835769791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075110.P6605788517835769791

namespace A075110

/-- `A322828(record[A006530(n+2)])` -/
def P6605788517835769791.Spec : Prop :=
  ∀ n, P6605788517835769791.a n = A075110 (n + 1)

end A075110

/-! ## A075110.P2563440089623513955

`A322828(record[A014963(n+2)])`
-/

namespace A075110.P2563440089623513955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075110.P2563440089623513955

namespace A075110

/-- `A322828(record[A014963(n+2)])` -/
def P2563440089623513955.Spec : Prop :=
  ∀ n, P2563440089623513955.a n = A075110 (n + 1)

end A075110

/-! ## A075110.P4998024696026236423

`A322828(record[A020639(n+2)])`
-/

namespace A075110.P4998024696026236423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075110.P4998024696026236423

namespace A075110

/-- `A322828(record[A020639(n+2)])` -/
def P4998024696026236423.Spec : Prop :=
  ∀ n, P4998024696026236423.a n = A075110 (n + 1)

end A075110

/-! ## A075110.P7896859567738730655

`A322828(A073846(2*(n+1)))`
-/

namespace A075110.P7896859567738730655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322828 (A073846 (2 * (n + 1))).toNat

end

end A075110.P7896859567738730655

namespace A075110

/-- `A322828(A073846(2*(n+1)))` -/
def P7896859567738730655.Spec : Prop :=
  ∀ n, P7896859567738730655.a n = A075110 (n + 1)

end A075110

/-! ## A075110.P16332832962714308673

`A322828(record[p?[A322806(n+1)]])`
-/

namespace A075110.P16332832962714308673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322806 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075110.P16332832962714308673

namespace A075110

/-- `A322828(record[p?[A322806(n+1)]])` -/
def P16332832962714308673.Spec : Prop :=
  ∀ n, P16332832962714308673.a n = A075110 (n + 1)

end A075110

/-! ## A075110.P6072963935852278620

`A322828(record[p?[A322815(n+1)]])`
-/

namespace A075110.P6072963935852278620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075110.P6072963935852278620

namespace A075110

/-- `A322828(record[p?[A322815(n+1)]])` -/
def P6072963935852278620.Spec : Prop :=
  ∀ n, P6072963935852278620.a n = A075110 (n + 1)

end A075110

/-! ## A075110.P15955442598889724476

`A322828(A014689(n+1)+n+1)`
-/

namespace A075110.P15955442598889724476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322828 (A014689 (n + 1) + (n + 1 : ℤ)).toNat

end

end A075110.P15955442598889724476

namespace A075110

/-- `A322828(A014689(n+1)+n+1)` -/
def P15955442598889724476.Spec : Prop :=
  ∀ n, P15955442598889724476.a n = A075110 (n + 1)

end A075110

/-! ## A075110.P10295849554870671433

`A322828(A014688(n+1)-(n+1))`
-/

namespace A075110.P10295849554870671433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322828 (A014688 (n + 1) - (n + 1 : ℤ)).toNat

end

end A075110.P10295849554870671433

namespace A075110

/-- `A322828(A014688(n+1)-(n+1))` -/
def P10295849554870671433.Spec : Prop :=
  ∀ n, P10295849554870671433.a n = A075110 (n + 1)

end A075110

/-! ## A075110.P3121246468875321687

`A322828(record[p?[A350064(n+1)]])`
-/

namespace A075110.P3121246468875321687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075110.P3121246468875321687

namespace A075110

/-- `A322828(record[p?[A350064(n+1)]])` -/
def P3121246468875321687.Spec : Prop :=
  ∀ n, P3121246468875321687.a n = A075110 (n + 1)

end A075110

/-! ## A075110.P942406068037955241

`A322828(record[p?[A275055(n+1)]])`
-/

namespace A075110.P942406068037955241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075110.P942406068037955241

namespace A075110

/-- `A322828(record[p?[A275055(n+1)]])` -/
def P942406068037955241.Spec : Prop :=
  ∀ n, P942406068037955241.a n = A075110 (n + 1)

end A075110

/-!
# A075111: a(n) = Sum_{i=0..floor(n/2)} (-1)^(i+floor(n/2))*T(2i+e), where T(n) are tribonacci numbers (A000073) and e = (1/2)(1-(-1)^n).

The programs for A075111, the canonical program `A075111.P11677792331762195300` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075111 has offset 0).

The definition of A075111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075111.P11677792331762195300

`a(n-1)+2*a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075111

/-- `a(n-1)+2*a(n-3)+a(n-4)+a(n-5)` -/
def P11677792331762195300.Spec : Prop :=
  ∀ n, (P11677792331762195300.a n : ℤ) = A075111 n

theorem P11677792331762195300.correct : P11677792331762195300.Spec := by
  intro n
  simp only [A075111]

end A075111

/-! ## A075111.P9093935129061157799

`ogf(-x/(-1+x+2x^3+x^4+x^5))`
-/

namespace A075111.P9093935129061157799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, 0, -2, -1, -1] n

end

end A075111.P9093935129061157799

namespace A075111

/-- `ogf(-x/(-1+x+2x^3+x^4+x^5))` -/
def P9093935129061157799.Spec : Prop :=
  ∀ n, P9093935129061157799.a n = A075111 n

end A075111

/-! ## A075111.P5463318219984287189

`abs(a(n-2)-A000073(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A075111.P5463318219984287189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |a (n - 2) - A000073 (n + 1)|

end

end A075111.P5463318219984287189

namespace A075111

/-- `abs(a(n-2)-A000073(n+1))` -/
def P5463318219984287189.Spec : Prop :=
  ∀ n, P5463318219984287189.a n = A075111 n

end A075111

/-! ## A075111.P1180136714975191990

`A102560(n)+Δ[A283834(n)]`
-/

namespace A075111.P1180136714975191990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n + (f1 (n + 1) - f1 n)

end

end A075111.P1180136714975191990

namespace A075111

/-- `A102560(n)+Δ[A283834(n)]` -/
def P1180136714975191990.Spec : Prop :=
  ∀ n, P1180136714975191990.a n = A075111 n

end A075111

/-! ## A075111.P10381683735332317322

`Δ[floor(A282718(n)/2)]`
-/

namespace A075111.P10381683735332317322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282718 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075111.P10381683735332317322

namespace A075111

/-- `Δ[floor(A282718(n)/2)]` -/
def P10381683735332317322.Spec : Prop :=
  ∀ n, P10381683735332317322.a n = A075111 n

end A075111

/-! ## A075111.P236553244018556590

`Δ[ceil(A089068(n)/2)]`
-/

namespace A075111.P236553244018556590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089068 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075111.P236553244018556590

namespace A075111

/-- `Δ[ceil(A089068(n)/2)]` -/
def P236553244018556590.Spec : Prop :=
  ∀ n, P236553244018556590.a n = A075111 n

end A075111

/-! ## A075111.P11132113885009420359

`Δ[floor(A135491(n)/4)]`
-/

namespace A075111.P11132113885009420359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135491 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075111.P11132113885009420359

namespace A075111

/-- `Δ[floor(A135491(n)/4)]` -/
def P11132113885009420359.Spec : Prop :=
  ∀ n, P11132113885009420359.a n = A075111 n

end A075111

/-! ## A075111.P15633581600889689962

`Δ[ceil(A288599(n)/4)]`
-/

namespace A075111.P15633581600889689962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A288599 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075111.P15633581600889689962

namespace A075111

/-- `Δ[ceil(A288599(n)/4)]` -/
def P15633581600889689962.Spec : Prop :=
  ∀ n, P15633581600889689962.a n = A075111 n

end A075111

/-! ## A075111.P1928735840385981071

`Δ[floor(A106522(∑[n])/2)]`
-/

namespace A075111.P1928735840385981071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A106522 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075111.P1928735840385981071

namespace A075111

/-- `Δ[floor(A106522(∑[n])/2)]` -/
def P1928735840385981071.Spec : Prop :=
  ∀ n, P1928735840385981071.a n = A075111 n

end A075111

/-!
# A075112: a(n)=Sum((-1)^(i+Floor(n/2))S(2i+e),(i=0,..,Floor(n/2))), where S(n) are generalized Tetranacci numbers (A073817) and e=(1/2)(1-(-1)^n).

The programs for A075112, the canonical program `A075112.P13910243437261898754` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075112 has offset 0).

The definition of A075112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075112.P13910243437261898754

`a(n-1)+2*a(n-3)+2*a(n-4)+a(n-5)+a(n-6)` with `a(0)=4, a(1)=1, a(2)=-1, a(3)=6, a(4)=16, a(5)=20`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075112

/-- `a(n-1)+2*a(n-3)+2*a(n-4)+a(n-5)+a(n-6)` -/
def P13910243437261898754.Spec : Prop :=
  ∀ n, P13910243437261898754.a n = A075112 n

theorem P13910243437261898754.correct : P13910243437261898754.Spec := by
  intro n
  simp only [A075112]

end A075112

/-! ## A075112.P2406189555910180635

`A073817(n)-a(n-2)` with `a(0)=4, a(1)=1`
-/

namespace A075112.P2406189555910180635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  A073817 n - a (n - 2)

end

end A075112.P2406189555910180635

namespace A075112

/-- `A073817(n)-a(n-2)` -/
def P2406189555910180635.Spec : Prop :=
  ∀ n, P2406189555910180635.a n = A075112 n

end A075112

/-!
# A075113: a(n) = A000217(n) - A048702(n).

The programs for A075113, the canonical program `A075113.P11777112523547195368` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075113 has offset 0).

The definition of A075113 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048702, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A075113.P648209067311094305

`n*(n+1)/2-A048702(n)`
-/

namespace A075113.P648209067311094305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) : ℚ) / 2 - (A048702 n : ℚ)

end

end A075113.P648209067311094305

namespace A075113

/-- `n*(n+1)/2-A048702(n)` -/
def P648209067311094305.Spec : Prop :=
  ∀ n, P648209067311094305.a n = (A075113 n : ℚ)

theorem P648209067311094305.correct : P648209067311094305.Spec := by
  intro n
  simp only [A075113, Nat.add_sub_cancel, A075113.P648209067311094305.a, A075113.P11777112523547195368.a, A000217, A000217.P10269402890581615239.a, A048702, A048702.P3727629024629284360.a, A048701, A048701.P12021779623566832141.a, A030101, A030101.P16184294017372777612.a, A062383, A062383.P4595411753464333460.a, A055945, A055945.P5963763732554067333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A075113

/-! ## A075113.P11777112523547195368

`A000217(n)-A048702(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A075113

/-- `A000217(n)-A048702(n)` -/
def P11777112523547195368.Spec : Prop :=
  ∀ n, P11777112523547195368.a n = A075113 n

theorem P11777112523547195368.correct : P11777112523547195368.Spec := by
  intro n
  simp only [A075113]

end A075113

/-! ## A075113.P8635829768286748292

`∑[n]-A048701(n)/3`
-/

namespace A075113.P8635829768286748292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (A048701 n : ℚ) / 3

end

end A075113.P8635829768286748292

namespace A075113

/-- `∑[n]-A048701(n)/3` -/
def P8635829768286748292.Spec : Prop :=
  ∀ n, P8635829768286748292.a n = (A075113 n : ℚ)

end A075113

/-! ## A075113.P11524519212255052202

`A000124(n)-(A048702(n)+1)`
-/

namespace A075113.P11524519212255052202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A048702 n + 1)

end

end A075113.P11524519212255052202

namespace A075113

/-- `A000124(n)-(A048702(n)+1)` -/
def P11524519212255052202.Spec : Prop :=
  ∀ n, P11524519212255052202.a n = A075113 n

end A075113

/-! ## A075113.P5076348445207600872

`A000096(n)-(A048702(n)+n)`
-/

namespace A075113.P5076348445207600872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (A048702 n + (n : ℤ))

end

end A075113.P5076348445207600872

namespace A075113

/-- `A000096(n)-(A048702(n)+n)` -/
def P5076348445207600872.Spec : Prop :=
  ∀ n, P5076348445207600872.a n = A075113 n

theorem P5076348445207600872.correct : P5076348445207600872.Spec := by
  intro n
  simp only [A075113, Nat.add_sub_cancel, A075113.P5076348445207600872.a, A075113.P11777112523547195368.a, A000096, A000096.P6925830517264718723.a, A000217, A000217.P10269402890581615239.a, A048702, A048702.P3727629024629284360.a, A048701, A048701.P12021779623566832141.a, A030101, A030101.P16184294017372777612.a, A062383, A062383.P4595411753464333460.a, A055945, A055945.P5963763732554067333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A075113

/-! ## A075113.P5191312194014181264

`A005563(n)-A048702(n)-A000096(n)`
-/

namespace A075113.P5191312194014181264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - A048702 n - A000096 n

end

end A075113.P5191312194014181264

namespace A075113

/-- `A005563(n)-A048702(n)-A000096(n)` -/
def P5191312194014181264.Spec : Prop :=
  ∀ n, P5191312194014181264.a n = A075113 n

theorem P5191312194014181264.correct : P5191312194014181264.Spec := by
  intro n
  simp only [A075113, Nat.add_sub_cancel, A075113.P5191312194014181264.a, A075113.P11777112523547195368.a, A000096, A000096.P6925830517264718723.a, A000217, A000217.P10269402890581615239.a, A005563, A005563.P13300161655551567421.a, A048702, A048702.P3727629024629284360.a, A048701, A048701.P12021779623566832141.a, A030101, A030101.P16184294017372777612.a, A062383, A062383.P4595411753464333460.a, A055945, A055945.P5963763732554067333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A075113

/-!
# A075114: Perfect powers k such that 2*k + 1 is a perfect power; the value of y^b in the solution of the Diophantine equation x^a - 2y^b = 1.

The programs for A075114, there is no canonical definition to state claims against.
-/

/-! ## A075114.P2257493677722092750

`A117547(n+2)²`
-/

namespace A075114.P2257493677722092750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117547 (n + 2) ^ 2

end

end A075114.P2257493677722092750

/-! ## A075114.P16935841195502384193

`floor(A075127(n+1)/2)`
-/

namespace A075114.P16935841195502384193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075127 (n + 1) : ℚ) / 2⌋

end

end A075114.P16935841195502384193

/-! ## A075114.P6901447789090244767

`A117547(n+2)^A046523(A106856(n+1))`
-/

namespace A075114.P6901447789090244767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117547 (n + 2) : ℚ) ^ (A046523 (A106856 (n + 1)).toNat : ℤ)

end

end A075114.P6901447789090244767

/-! ## A075114.P2315864100355523548

`A117547(n+2)^A075016(A082069(n+1))`
-/

namespace A075114.P2315864100355523548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117547 (n + 2) : ℚ) ^ (A075016 (A082069 (n + 1)).toNat : ℤ)

end

end A075114.P2315864100355523548

/-! ## A075114.P8590006872394729284

`A117547(n+2)^A046523(A132242(n+1))`
-/

namespace A075114.P8590006872394729284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117547 (n + 2) : ℚ) ^ (A046523 (A132242 (n + 1)).toNat : ℤ)

end

end A075114.P8590006872394729284

/-!
# A075115: Binomial transform of A073145: a(n)=Sum(binomial(n,k)*A073145(k),(k=0,..,n)).

The programs for A075115, the canonical program `A075115.P13278251548491079224` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075115 has offset 0).

The definition of A075115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075115.P13278251548491079224

`2*a(n-1)-2*a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=2, a(2)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075115

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)` -/
def P13278251548491079224.Spec : Prop :=
  ∀ n, P13278251548491079224.a n = A075115 n

theorem P13278251548491079224.correct : P13278251548491079224.Spec := by
  intro n
  simp only [A075115]

end A075115

/-! ## A075115.P6346967734063348612

`ogf((3-4x+2x^2)/(1-2x+2x^2-2x^3))`
-/

namespace A075115.P6346967734063348612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, 2] [1, -2, 2, -2] n

end

end A075115.P6346967734063348612

namespace A075115

/-- `ogf((3-4x+2x^2)/(1-2x+2x^2-2x^3))` -/
def P6346967734063348612.Spec : Prop :=
  ∀ n, P6346967734063348612.a n = A075115 n

end A075115

/-! ## A075115.P10243317514889290260

`a(n-1)+2*a(n-4)` with `a(0)=3, a(1)=2, a(2)=0, a(3)=2`
-/

namespace A075115.P10243317514889290260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 0, 2] fun n a =>
  a (n - 1) + 2 * a (n - 4)

end

end A075115.P10243317514889290260

namespace A075115

/-- `a(n-1)+2*a(n-4)` -/
def P10243317514889290260.Spec : Prop :=
  ∀ n, (P10243317514889290260.a n : ℤ) = A075115 n

end A075115

/-! ## A075115.P4299128386858379042

`a(n-1)+a(n-4)+a(n-4)` with `a(0)=3, a(1)=2, a(2)=0, a(3)=2`
-/

namespace A075115.P4299128386858379042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 0, 2] fun n a =>
  a (n - 1) + (a (n - 4) + a (n - 4))

end

end A075115.P4299128386858379042

namespace A075115

/-- `a(n-1)+a(n-4)+a(n-4)` -/
def P4299128386858379042.Spec : Prop :=
  ∀ n, (P4299128386858379042.a n : ℤ) = A075115 n

end A075115

/-! ## A075115.P12507135493745493550

`2*(a(n-1)-(a(n-2)-a(n-3)))` with `a(0)=3, a(1)=2, a(2)=0`
-/

namespace A075115.P12507135493745493550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 0] fun n a =>
  2 * (a (n - 1) - (a (n - 2) - a (n - 3)))

end

end A075115.P12507135493745493550

namespace A075115

/-- `2*(a(n-1)-(a(n-2)-a(n-3)))` -/
def P12507135493745493550.Spec : Prop :=
  ∀ n, P12507135493745493550.a n = A075115 n

theorem P12507135493745493550.correct : P12507135493745493550.Spec := by
  intro n
  simp only [A075115, Nat.add_sub_cancel, A075115.P12507135493745493550.a, A075115.P13278251548491079224.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A075115

/-! ## A075115.P3560396506003515222

`A078003(n+1)+2*A078003(n)`
-/

namespace A075115.P3560396506003515222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078003 (n + 1) + 2 * A078003 n

end

end A075115.P3560396506003515222

namespace A075115

/-- `A078003(n+1)+2*A078003(n)` -/
def P3560396506003515222.Spec : Prop :=
  ∀ n, P3560396506003515222.a n = A075115 n

end A075115

/-! ## A075115.P7156630017272732411

`Δ[A077858(n)-Δ[A077943(n)]]`
-/

namespace A075115.P7156630017272732411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077943 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077858 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075115.P7156630017272732411

namespace A075115

/-- `Δ[A077858(n)-Δ[A077943(n)]]` -/
def P7156630017272732411.Spec : Prop :=
  ∀ n, P7156630017272732411.a n = A075115 n

end A075115

/-!
# A075116: Binomial transform of A073817: a(n)=Sum(Binomial(n,k)*A073817(k),(k=0,..,n)).

The programs for A075116, the canonical program `A075116.P843975711359047200` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075116 has offset 0).

The definition of A075116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075116.P843975711359047200

`5*a(n-1)-8*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=4, a(1)=5, a(2)=9, a(3)=23`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075116

/-- `5*a(n-1)-8*a(n-2)+6*a(n-3)-a(n-4)` -/
def P843975711359047200.Spec : Prop :=
  ∀ n, P843975711359047200.a n = A075116 n

theorem P843975711359047200.correct : P843975711359047200.Spec := by
  intro n
  simp only [A075116]

end A075116

/-! ## A075116.P8146247053763079607

`A005041(A132959(n+1)+7)`
-/

namespace A075116.P8146247053763079607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A132959 (n + 1) + 7).toNat

end

end A075116.P8146247053763079607

namespace A075116

/-- `A005041(A132959(n+1)+7)` -/
def P8146247053763079607.Spec : Prop :=
  ∀ n, P8146247053763079607.a n = A075116 n

end A075116

/-!
# A075117: Table by antidiagonals of generalized Lucas numbers: T(n,k) = T(n,k-1) + n*T(n,k-2) with T(n,0)=2 and T(n,1)=1.

The programs for A075117, there is no canonical definition to state claims against.
-/

/-! ## A075117.P11591709872787600296

`A341279(n)+A053735(A078122(n))`
-/

namespace A075117.P11591709872787600296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 n + A053735 (A078122 n).toNat

end

end A075117.P11591709872787600296

/-! ## A075117.P15765608060752528910

`A325678(xor(3, A211399(n+1)))`
-/

namespace A075117.P15765608060752528910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (Int.xor 3 (A211399 (n + 1))).toNat

end

end A075117.P15765608060752528910

/-! ## A075117.P17484467271482712607

`A243733(A347811(n)+A023531(n))`
-/

namespace A075117.P17484467271482712607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243733 (A347811 n + A023531 n).toNat

end

end A075117.P17484467271482712607

/-! ## A075117.P10813643278478072524

`A274821(and(A046319(n+1), A129062(n)))`
-/

namespace A075117.P10813643278478072524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274821 (Int.land (A046319 (n + 1)) (A129062 n)).toNat

end

end A075117.P10813643278478072524

/-! ## A075117.P8765813279734466388

`A025465(A023105(n))+A000032(A097805(n+1))`
-/

namespace A075117.P8765813279734466388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A023105 n).toNat + A000032 (A097805 (n + 1)).toNat

end

end A075117.P8765813279734466388

/-!
# A075118: Variant on Lucas numbers: a(n) = a(n-1) + 3*a(n-2) with a(0)=2 and a(1)=1.

The programs for A075118, the canonical program `A075118.P3697885658930936319` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075118 has offset 0).

The definition of A075118 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)` (program `A075118.P3697885658930936319`, by `A075118.P3697885658930936319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A075118.P3697885658930936319

`a(n-1)+3*a(n-2)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075118

/-- `a(n-1)+3*a(n-2)` -/
def P3697885658930936319.Spec : Prop :=
  ∀ n, (P3697885658930936319.a n : ℤ) = A075118 n

theorem P3697885658930936319.correct : P3697885658930936319.Spec := by
  intro n
  simp only [A075118]

end A075118

/-! ## A075118.P2334830968019508608

`ogf((-2+x)/(-1+x+3x^2))`
-/

namespace A075118.P2334830968019508608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -1, -3] n

end

end A075118.P2334830968019508608

namespace A075118

/-- `ogf((-2+x)/(-1+x+3x^2))` -/
def P2334830968019508608.Spec : Prop :=
  ∀ n, P2334830968019508608.a n = A075118 n

end A075118

/-! ## A075118.P13104776403104461197

`a(n-1)+lcm(3, a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A075118.P13104776403104461197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) + Nat.lcm 3 (a (n - 2))

end

end A075118.P13104776403104461197

namespace A075118

/-- `a(n-1)+lcm(3, a(n-2))` -/
def P13104776403104461197.Spec : Prop :=
  ∀ n, (P13104776403104461197.a n : ℤ) = A075118 n

end A075118

/-! ## A075118.P11748357996960945829

`3-(3*(1-a(n-2))-a(n-1))` with `a(0)=2, a(1)=1`
-/

namespace A075118.P11748357996960945829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  3 - (3 * (1 - a (n - 2)) - a (n - 1))

end

end A075118.P11748357996960945829

namespace A075118

/-- `3-(3*(1-a(n-2))-a(n-1))` -/
def P11748357996960945829.Spec : Prop :=
  ∀ n, P11748357996960945829.a n = A075118 n

end A075118

/-! ## A075118.P6839011537505529228

`a(n-1)+a(n-2)/(1-2/3)` with `a(0)=2, a(1)=1`
-/

namespace A075118.P6839011537505529228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) + a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A075118.P6839011537505529228

namespace A075118

/-- `a(n-1)+a(n-2)/(1-2/3)` -/
def P6839011537505529228.Spec : Prop :=
  ∀ n, P6839011537505529228.a n = (A075118 n : ℚ)

end A075118

/-! ## A075118.P3293787600091715183

`a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A075118.P3293787600091715183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A075118.P3293787600091715183

namespace A075118

/-- `a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P3293787600091715183.Spec : Prop :=
  ∀ n, (P3293787600091715183.a n : ℤ) = A075118 n

end A075118

/-! ## A075118.P6485061394017610932

`A052533(n)+A006130(n)`
-/

namespace A075118.P6485061394017610932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n + A006130 n

end

end A075118.P6485061394017610932

namespace A075118

/-- `A052533(n)+A006130(n)` -/
def P6485061394017610932.Spec : Prop :=
  ∀ n, P6485061394017610932.a n = A075118 n

end A075118

/-! ## A075118.P5212852613485561624

`A006130(n)+A006130(n)-abs(A182228(n))`
-/

namespace A075118.P5212852613485561624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n + (A006130 n - |A182228 n|)

end

end A075118.P5212852613485561624

namespace A075118

/-- `A006130(n)+A006130(n)-abs(A182228(n))` -/
def P5212852613485561624.Spec : Prop :=
  ∀ n, P5212852613485561624.a n = A075118 n

end A075118

/-! ## A075118.P15813071170941266832

`A006138(n)+A006138(n)-A052533(n+1)`
-/

namespace A075118.P15813071170941266832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n + (A006138 n - A052533 (n + 1))

end

end A075118.P15813071170941266832

namespace A075118

/-- `A006138(n)+A006138(n)-A052533(n+1)` -/
def P15813071170941266832.Spec : Prop :=
  ∀ n, P15813071170941266832.a n = A075118 n

end A075118

/-! ## A075118.P7416228009219862550

`A052533(n+2)-A006138(n)`
-/

namespace A075118.P7416228009219862550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 (n + 2) - A006138 n

end

end A075118.P7416228009219862550

namespace A075118

/-- `A052533(n+2)-A006138(n)` -/
def P7416228009219862550.Spec : Prop :=
  ∀ n, P7416228009219862550.a n = A075118 n

end A075118

/-! ## A075118.P16395426482739708972

`3*A006130(n)-A006138(n)`
-/

namespace A075118.P16395426482739708972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006130 n - A006138 n

end

end A075118.P16395426482739708972

namespace A075118

/-- `3*A006130(n)-A006138(n)` -/
def P16395426482739708972.Spec : Prop :=
  ∀ n, P16395426482739708972.a n = A075118 n

end A075118

/-! ## A075118.P3212193668412878040

`A006130(n)+Δ[abs(A182228(n))]`
-/

namespace A075118.P3212193668412878040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182228 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n + (f1 (n + 1) - f1 n)

end

end A075118.P3212193668412878040

namespace A075118

/-- `A006130(n)+Δ[abs(A182228(n))]` -/
def P3212193668412878040.Spec : Prop :=
  ∀ n, P3212193668412878040.a n = A075118 n

end A075118

/-! ## A075118.P16507069984738924657

`A052533(n)+A228661(n+1)/2`
-/

namespace A075118.P16507069984738924657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052533 n : ℚ) + (A228661 (n + 1) : ℚ) / 2

end

end A075118.P16507069984738924657

namespace A075118

/-- `A052533(n)+A228661(n+1)/2` -/
def P16507069984738924657.Spec : Prop :=
  ∀ n, P16507069984738924657.a n = (A075118 n : ℚ)

end A075118

/-! ## A075118.P2811119454410383226

`A099232(n+1)+A052533(n)-A099232(n)`
-/

namespace A075118.P2811119454410383226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099232 (n + 1) + (A052533 n - A099232 n)

end

end A075118.P2811119454410383226

namespace A075118

/-- `A099232(n+1)+A052533(n)-A099232(n)` -/
def P2811119454410383226.Spec : Prop :=
  ∀ n, P2811119454410383226.a n = A075118 n

end A075118

/-! ## A075118.P12544661675192659101

`A006138(n+1)+A006138(n)-A274977(n)`
-/

namespace A075118.P12544661675192659101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 (n + 1) + (A006138 n - A274977 n)

end

end A075118.P12544661675192659101

namespace A075118

/-- `A006138(n+1)+A006138(n)-A274977(n)` -/
def P12544661675192659101.Spec : Prop :=
  ∀ n, P12544661675192659101.a n = A075118 n

end A075118

/-! ## A075118.P5527310327460508536

`A105476(n+2)-A105963(n)`
-/

namespace A075118.P5527310327460508536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 (n + 2) - A105963 n

end

end A075118.P5527310327460508536

namespace A075118

/-- `A105476(n+2)-A105963(n)` -/
def P5527310327460508536.Spec : Prop :=
  ∀ n, P5527310327460508536.a n = A075118 n

end A075118

/-! ## A075118.P5712368976217878250

`Δ[A006130(n+1)]-A006138(n)`
-/

namespace A075118.P5712368976217878250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006138 n

end

end A075118.P5712368976217878250

namespace A075118

/-- `Δ[A006130(n+1)]-A006138(n)` -/
def P5712368976217878250.Spec : Prop :=
  ∀ n, P5712368976217878250.a n = A075118 n

end A075118

/-! ## A075118.P8581232549089215591

`(Δ[A274977(n)]-A006130(n))/2`
-/

namespace A075118.P8581232549089215591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274977 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A006130 n : ℚ) / 2

end

end A075118.P8581232549089215591

namespace A075118

/-- `(Δ[A274977(n)]-A006130(n))/2` -/
def P8581232549089215591.Spec : Prop :=
  ∀ n, P8581232549089215591.a n = (A075118 n : ℚ)

end A075118

/-! ## A075118.P17631402452246682870

`A105963(n+1)-(A006138(n+1)+A006138(n))`
-/

namespace A075118.P17631402452246682870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105963 (n + 1) - (A006138 (n + 1) + A006138 n)

end

end A075118.P17631402452246682870

namespace A075118

/-- `A105963(n+1)-(A006138(n+1)+A006138(n))` -/
def P17631402452246682870.Spec : Prop :=
  ∀ n, P17631402452246682870.a n = A075118 n

end A075118

/-! ## A075118.P8272430957609150456

`A274977(n+1)+A052533(n)-A105963(n+1)`
-/

namespace A075118.P8272430957609150456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274977 (n + 1) + (A052533 n - A105963 (n + 1))

end

end A075118.P8272430957609150456

namespace A075118

/-- `A274977(n+1)+A052533(n)-A105963(n+1)` -/
def P8272430957609150456.Spec : Prop :=
  ∀ n, P8272430957609150456.a n = A075118 n

end A075118

/-!
# A075119: Denominator of n/floor(sqrt(n)); numerator is A073890(n).

The programs for A075119, the canonical program `A075119.P17054687099876462793` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075119 has offset 1).

The definition of A075119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075119.P17054687099876462793

`A000196(n+1)/A067815(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075119

/-- `A000196(n+1)/A067815(n+1)` -/
def P17054687099876462793.Spec : Prop :=
  ∀ n, P17054687099876462793.a n = (A075119 (n + 1) : ℚ)

end A075119

/-! ## A075119.P12537652665009261016

`lcm(n+1, floor(sqrt(n+1)))/(n+1)`
-/

namespace A075119.P12537652665009261016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (Nat.sqrt (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A075119.P12537652665009261016

namespace A075119

/-- `lcm(n+1, floor(sqrt(n+1)))/(n+1)` -/
def P12537652665009261016.Spec : Prop :=
  ∀ n, P12537652665009261016.a n = (A075119 (n + 1) : ℚ)

end A075119

/-! ## A075119.P663097593745495754

`A241083(n+1)/(n+1)`
-/

namespace A075119.P663097593745495754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241083 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A075119.P663097593745495754

namespace A075119

/-- `A241083(n+1)/(n+1)` -/
def P663097593745495754.Spec : Prop :=
  ∀ n, P663097593745495754.a n = (A075119 (n + 1) : ℚ)

end A075119

/-! ## A075119.P8976244698839234023

`A026741(A256098(n+1))`
-/

namespace A075119.P8976244698839234023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A256098 (n + 1)).toNat

end

end A075119.P8976244698839234023

namespace A075119

/-- `A026741(A256098(n+1))` -/
def P8976244698839234023.Spec : Prop :=
  ∀ n, P8976244698839234023.a n = A075119 (n + 1)

end A075119

/-! ## A075119.P12347240952108761096

`A001281(lcm(2, A256098(n+1)))`
-/

namespace A075119.P12347240952108761096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A256098 (n + 1)))

end

end A075119.P12347240952108761096

namespace A075119

/-- `A001281(lcm(2, A256098(n+1)))` -/
def P12347240952108761096.Spec : Prop :=
  ∀ n, P12347240952108761096.a n = A075119 (n + 1)

end A075119

/-! ## A075119.P8717488958165420602

`A137735(n+1)/gcd(n+1, A137735(n+1))`
-/

namespace A075119.P8717488958165420602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137735 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A137735 (n + 1)) : ℚ)

end

end A075119.P8717488958165420602

namespace A075119

/-- `A137735(n+1)/gcd(n+1, A137735(n+1))` -/
def P8717488958165420602.Spec : Prop :=
  ∀ n, P8717488958165420602.a n = (A075119 (n + 1) : ℚ)

end A075119

/-! ## A075119.P7210823852098510821

`A028310(A241083(n+1)%A028310(n))`
-/

namespace A075119.P7210823852098510821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A241083 (n + 1)) (A028310 n)).toNat

end

end A075119.P7210823852098510821

namespace A075119

/-- `A028310(A241083(n+1)%A028310(n))` -/
def P7210823852098510821.Spec : Prop :=
  ∀ n, P7210823852098510821.a n = A075119 (n + 1)

end A075119

/-! ## A075119.P6757852243012638461

`A073890(n+1)-A028391(n+1)/A067815(n+1)`
-/

namespace A075119.P6757852243012638461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073890 (n + 1) : ℚ) - (A028391 (n + 1) : ℚ) / (A067815 (n + 1) : ℚ)

end

end A075119.P6757852243012638461

namespace A075119

/-- `A073890(n+1)-A028391(n+1)/A067815(n+1)` -/
def P6757852243012638461.Spec : Prop :=
  ∀ n, P6757852243012638461.a n = (A075119 (n + 1) : ℚ)

end A075119

/-! ## A075119.P13988823280555341767

`A164306(∑[n+1-A049240(n+1)])`
-/

namespace A075119.P13988823280555341767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A049240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075119.P13988823280555341767

namespace A075119

/-- `A164306(∑[n+1-A049240(n+1)])` -/
def P13988823280555341767.Spec : Prop :=
  ∀ n, P13988823280555341767.a n = A075119 (n + 1)

end A075119

/-! ## A075119.P7672941571557899321

`A326700(A319423(n+1))`
-/

namespace A075119.P7672941571557899321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326700 (A319423 (n + 1)).toNat

end

end A075119.P7672941571557899321

namespace A075119

/-- `A326700(A319423(n+1))` -/
def P7672941571557899321.Spec : Prop :=
  ∀ n, P7672941571557899321.a n = A075119 (n + 1)

end A075119

/-!
# A075120: Number of steps to reach the first integer (= A075121(n)) starting with n/floor(sqrt(n)) and iterating the map x -> x*ceiling(x), or -1 if no integer is ever reached.

The programs for A075120, there is no canonical definition to state claims against.
-/

/-! ## A075120.P13815353238818352662

`A280817(n+1)%A034372(2*n+1)`
-/

namespace A075120.P13815353238818352662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280817 (n + 1)) (A034372 (2 * n + 1))

end

end A075120.P13815353238818352662

/-! ## A075120.P4708168371713949379

`A111775(A024493(n)+A006093(n+1))`
-/

namespace A075120.P4708168371713949379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (A024493 n + A006093 (n + 1)).toNat

end

end A075120.P4708168371713949379

/-! ## A075120.P3890528355011297008

`A075107(A160899(n+1))`
-/

namespace A075120.P3890528355011297008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075107 (A160899 (n + 1)).toNat

end

end A075120.P3890528355011297008

/-! ## A075120.P16293655030788863496

`A000035(A024493(n+1))*A280817(n+1)`
-/

namespace A075120.P16293655030788863496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A024493 (n + 1)).toNat * A280817 (n + 1)

end

end A075120.P16293655030788863496

/-!
# A075123: a(n) is the least positive integer > a(n-1) and a(n) is not 2*a(i)+a(j) for 1<=i

The programs for A075123, the canonical program `A075123.P1148881969726418568` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075123 has offset 1).

The definition of A075123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075123.P1148881969726418568

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=9, a(5)=14`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075123

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P1148881969726418568.Spec : Prop :=
  ∀ n, P1148881969726418568.a n = A075123 (n + 1)

theorem P1148881969726418568.correct : P1148881969726418568.Spec := by
  intro n
  simp only [A075123, Nat.add_sub_cancel]

end A075123

/-! ## A075123.P17951771594540381082

`a(n-2)+8` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=9`
-/

namespace A075123.P17951771594540381082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6, 9] fun n a =>
  a (n - 2) + 8

end

end A075123.P17951771594540381082

namespace A075123

/-- `a(n-2)+8` -/
def P17951771594540381082.Spec : Prop :=
  ∀ n, (P17951771594540381082.a n : ℤ) = A075123 (n + 1)

end A075123

/-! ## A075123.P3235744585333465946

`∑[8-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=3`
-/

namespace A075123.P3235744585333465946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3, 3] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075123.P3235744585333465946

namespace A075123

/-- `∑[8-a(n-1)]` -/
def P3235744585333465946.Spec : Prop :=
  ∀ n, P3235744585333465946.a n = A075123 (n + 1)

end A075123

/-! ## A075123.P16335992153726896545

`ogf((1+x+2x^3+2x^4+2x^5)/(1-x-x^2+x^3))`
-/

namespace A075123.P16335992153726896545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 2, 2, 2] [1, -1, -1, 1] n

end

end A075123.P16335992153726896545

namespace A075123

/-- `ogf((1+x+2x^3+2x^4+2x^5)/(1-x-x^2+x^3))` -/
def P16335992153726896545.Spec : Prop :=
  ∀ n, P16335992153726896545.a n = A075123 (n + 1)

end A075123

/-! ## A075123.P15954240078504205932

`8-or(2, 3-a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A075123.P15954240078504205932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  8 - Int.lor 2 (3 - a (n - 1))

end

end A075123.P15954240078504205932

namespace A075123

/-- `8-or(2, 3-a(n-1))` -/
def P15954240078504205932.Spec : Prop :=
  ∀ n, P15954240078504205932.a n = A075123 (n + 1)

end A075123

/-! ## A075123.P78979709408949125

`record[and(n, and(2, n+1)-2)+n+1]`
-/

namespace A075123.P78979709408949125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((Nat.land 2 (n + 1) : ℤ) - 2) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075123.P78979709408949125

namespace A075123

/-- `record[and(n, and(2, n+1)-2)+n+1]` -/
def P78979709408949125.Spec : Prop :=
  ∀ n, P78979709408949125.a n = A075123 (n + 1)

end A075123

/-! ## A075123.P3489215311384682199

`5-(and(2, a(n-1))-a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A075123.P3489215311384682199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  5 - (Int.land 2 (a (n - 1)) - a (n - 1))

end

end A075123.P3489215311384682199

namespace A075123

/-- `5-(and(2, a(n-1))-a(n-1))` -/
def P3489215311384682199.Spec : Prop :=
  ∀ n, P3489215311384682199.a n = A075123 (n + 1)

end A075123

/-! ## A075123.P9180799904531055552

`2-xor(-a(n-1), a(2%a(n-2)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A075123.P9180799904531055552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 - Int.xor (-a (n - 1)) (a (Int.tmod 2 (a (n - 2))).toNat)

end

end A075123.P9180799904531055552

namespace A075123

/-- `2-xor(-a(n-1), a(2%a(n-2)))` -/
def P9180799904531055552.Spec : Prop :=
  ∀ n, P9180799904531055552.a n = A075123 (n + 1)

end A075123

/-! ## A075123.P10928324212408184340

`A359506(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A075123.P10928324212408184340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A359506 (a (n - 1)).toNat

end

end A075123.P10928324212408184340

namespace A075123

/-- `A359506(a(n-1))` -/
def P10928324212408184340.Spec : Prop :=
  ∀ n, P10928324212408184340.a n = A075123 (n + 1)

end A075123

/-! ## A075123.P7422369036191089037

`record[A000265(or(2, n)+n)+n]`
-/

namespace A075123.P7422369036191089037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Nat.lor 2 n + n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075123.P7422369036191089037

namespace A075123

/-- `record[A000265(or(2, n)+n)+n]` -/
def P7422369036191089037.Spec : Prop :=
  ∀ n, P7422369036191089037.a n = A075123 (n + 1)

end A075123

/-! ## A075123.P9577529578532756210

`∪[A038537(n+1), A047452(n+1)]`
-/

namespace A075123.P9577529578532756210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075123.P9577529578532756210

namespace A075123

/-- `∪[A038537(n+1), A047452(n+1)]` -/
def P9577529578532756210.Spec : Prop :=
  ∀ n, (P9577529578532756210.a n : ℤ) = A075123 (n + 1)

end A075123

/-! ## A075123.P17879379387755825340

`∪[A047452(n+1), A216977(n+1)]`
-/

namespace A075123.P17879379387755825340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075123.P17879379387755825340

namespace A075123

/-- `∪[A047452(n+1), A216977(n+1)]` -/
def P17879379387755825340.Spec : Prop :=
  ∀ n, (P17879379387755825340.a n : ℤ) = A075123 (n + 1)

end A075123

/-! ## A075123.P3870210455959659672

`record[A093411(A098180(n))+n]`
-/

namespace A075123.P3870210455959659672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A098180 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075123.P3870210455959659672

namespace A075123

/-- `record[A093411(A098180(n))+n]` -/
def P3870210455959659672.Spec : Prop :=
  ∀ n, P3870210455959659672.a n = A075123 (n + 1)

end A075123

/-! ## A075123.P1254902100544678121

`record[A004396(A065330(n+1))+A004396(n)]`
-/

namespace A075123.P1254902100544678121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A065330 (n + 1)).toNat + A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075123.P1254902100544678121

namespace A075123

/-- `record[A004396(A065330(n+1))+A004396(n)]` -/
def P1254902100544678121.Spec : Prop :=
  ∀ n, P1254902100544678121.a n = A075123 (n + 1)

end A075123

/-! ## A075123.P16557103034218897273

`record[A076844(n+1)+n]`
-/

namespace A075123.P16557103034218897273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076844 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075123.P16557103034218897273

namespace A075123

/-- `record[A076844(n+1)+n]` -/
def P16557103034218897273.Spec : Prop :=
  ∀ n, P16557103034218897273.a n = A075123 (n + 1)

end A075123

/-! ## A075123.P3911765143813473777

`or(1, record[A076118(n)]+n)-n`
-/

namespace A075123.P3911765143813473777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)) - (n : ℤ)

end

end A075123.P3911765143813473777

namespace A075123

/-- `or(1, record[A076118(n)]+n)-n` -/
def P3911765143813473777.Spec : Prop :=
  ∀ n, P3911765143813473777.a n = A075123 (n + 1)

end A075123

/-! ## A075123.P9414736982857636402

`record[A004396(A065330(n+1)+n)]`
-/

namespace A075123.P9414736982857636402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A065330 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075123.P9414736982857636402

namespace A075123

/-- `record[A004396(A065330(n+1)+n)]` -/
def P9414736982857636402.Spec : Prop :=
  ∀ n, P9414736982857636402.a n = A075123 (n + 1)

end A075123

/-! ## A075123.P17547448767653509429

`record[gcd(A047533(n+2), A047572(n+1))]`
-/

namespace A075123.P17547448767653509429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047533 (n + 2)) (A047572 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075123.P17547448767653509429

namespace A075123

/-- `record[gcd(A047533(n+2), A047572(n+1))]` -/
def P17547448767653509429.Spec : Prop :=
  ∀ n, (P17547448767653509429.a n : ℤ) = A075123 (n + 1)

end A075123

/-! ## A075123.P2891959628169833059

`record[gcd(A047552(n+1), A047592(n+1))]`
-/

namespace A075123.P2891959628169833059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047552 (n + 1)) (A047592 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075123.P2891959628169833059

namespace A075123

/-- `record[gcd(A047552(n+1), A047592(n+1))]` -/
def P2891959628169833059.Spec : Prop :=
  ∀ n, (P2891959628169833059.a n : ℤ) = A075123 (n + 1)

end A075123

/-!
# A075124: Orders of symmetric, cubic, connected graphs, sorted from smallest to largest with duplications when there exist multiple such graphs of the same order.

The programs for A075124, there is no canonical definition to state claims against.
-/

/-! ## A075124.P6965790455395778024

`A333491(2*(n+2))-A003016(A376653(3*(n+1)))`
-/

namespace A075124.P6965790455395778024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333491 (2 * (n + 2)) - A003016 (A376653 (3 * (n + 1))).toNat

end

end A075124.P6965790455395778024

/-! ## A075124.P12836911510230067162

`A165471(A248762(n+1))+A102487(2*(n+2))`
-/

namespace A075124.P12836911510230067162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (A248762 (n + 1)).toNat + A102487 (2 * (n + 2))

end

end A075124.P12836911510230067162

/-!
# A075125: Number of parallelogram polyominoes of site-perimeter n (also called staircase polyominoes, although that term is overused).

The programs for A075125, there is no canonical definition to state claims against.
-/

/-! ## A075125.P8517248779245243176

`A162986(A133263(n)-2*n)`
-/

namespace A075125.P8517248779245243176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162986 (A133263 n - (2 * n : ℤ)).toNat

end

end A075125.P8517248779245243176

/-! ## A075125.P11468290765215984648

`A162986(A133263(n)-n-n)`
-/

namespace A075125.P11468290765215984648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162986 (A133263 n - (n : ℤ) - (n : ℤ)).toNat

end

end A075125.P11468290765215984648

/-! ## A075125.P18054032340702251114

`A162986(∑[n]+1-A004273(n))`
-/

namespace A075125.P18054032340702251114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162986 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A004273 n).toNat

end

end A075125.P18054032340702251114

/-! ## A075125.P1094340590924164794

`A162986(∑[n+2]-A008574(n))`
-/

namespace A075125.P1094340590924164794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162986 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008574 n).toNat

end

end A075125.P1094340590924164794

/-! ## A075125.P8019582328081522601

`A162986(A238531(n+1)-2*n)`
-/

namespace A075125.P8019582328081522601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162986 (A238531 (n + 1) - (2 * n : ℤ)).toNat

end

end A075125.P8019582328081522601

/-!
# A075127: Safe perfect powers: perfect powers n such that (n-1)/2 is also a perfect power.

The programs for A075127, there is no canonical definition to state claims against.
-/

/-! ## A075127.P2869082509774745343

`2*A075114(n+1)+1`
-/

namespace A075127.P2869082509774745343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075114 (n + 1) + 1

end

end A075127.P2869082509774745343

/-! ## A075127.P12941971216302980012

`2*A117547(n+2)²+1`
-/

namespace A075127.P12941971216302980012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117547 (n + 2) ^ 2 + 1

end

end A075127.P12941971216302980012

/-! ## A075127.P4997806989080753858

`2*A117547(n+2)^A075016(A082069(n+1))+1`
-/

namespace A075127.P4997806989080753858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (A117547 (n + 2) : ℚ) ^ (A075016 (A082069 (n + 1)).toNat : ℤ) + 1

end

end A075127.P4997806989080753858

/-! ## A075127.P12031878402098065197

`2*A117547(n+2)^A034444(A034444(n+5))+1`
-/

namespace A075127.P12031878402098065197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (A117547 (n + 2) : ℚ) ^ (A034444 (A034444 (n + 5)).toNat : ℤ) + 1

end

end A075127.P12031878402098065197

/-!
# A075128: Binomial transform of generalized tetranacci numbers A073817: a(n)=Sum((-1)^k Binomial(n,k)*A073817(k),(k=0,..,n)).

The programs for A075128, the canonical program `A075128.P2557099913443398640` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075128 has offset 0).

The definition of A075128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075128.P2557099913443398640

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)` with `a(0)=4, a(1)=3, a(2)=5, a(3)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075128

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)` -/
def P2557099913443398640.Spec : Prop :=
  ∀ n, P2557099913443398640.a n = A075128 n

theorem P2557099913443398640.correct : P2557099913443398640.Spec := by
  intro n
  simp only [A075128]

end A075128

/-!
# A075129: Binomial transform of reflected tetranacci numbers A074058: a(n)=Sum((-1)^k Binomial(n,k)*A074058(k),(k=0,..,n)).

The programs for A075129, the canonical program `A075129.P8164667656178165228` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075129 has offset 0).

The definition of A075129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075129.P8164667656178165228

`5*a(n-1)-10*a(n-2)+10*a(n-3)-3*a(n-4)` with `a(0)=4, a(1)=5, a(2)=5, a(3)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075129

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-3*a(n-4)` -/
def P8164667656178165228.Spec : Prop :=
  ∀ n, P8164667656178165228.a n = A075129 n

theorem P8164667656178165228.correct : P8164667656178165228.Spec := by
  intro n
  simp only [A075129]

end A075129

/-!
# A075130: Primes with decimal representation 140{{0}10{9}89}.

The programs for A075130, there is no canonical definition to state claims against.
-/

/-! ## A075130.P12540139269468931105

`A075131(n+1)/57`
-/

namespace A075130.P12540139269468931105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075131 (n + 1) : ℚ) / 57

end

end A075130.P12540139269468931105

/-!
# A075131: Picture-perfect numbers of form 57*p for p in A075130. The decimal reversal is equal to the sum of the reversed proper divisors.

The programs for A075131, there is no canonical definition to state claims against.
-/

/-! ## A075131.P9789123693459954220

`57*A075130(n+1)`
-/

namespace A075131.P9789123693459954220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  57 * A075130 (n + 1)

end

end A075131.P9789123693459954220

/-!
# A075132: a(0)=1; for n > 0, a(n)=sum(binomial(n,k)*binomial(n+k,k+1)*binomial(n+k+1,k),k=0..n)/n.

The programs for A075132, there is no canonical definition to state claims against.
-/

/-! ## A075132.P10691872732208680208

`A019565(n)+A004524(A000894(n))`
-/

namespace A075132.P10691872732208680208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n + A004524 (A000894 n).toNat

end

end A075132.P10691872732208680208

/-!
# A075133: Indices of double-safe primes: p=prime(n) is double-safe: q=(p-1)/2 & r=(q-1)/2 are both prime (and q is safe).

The programs for A075133, the canonical program `A075133.P12496156715621399041` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075133 has offset 1).

The definition of A075133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075133.P12496156715621399041

`record[A100394(A100394(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A075133

/-- `record[A100394(A100394(n+1))]` -/
def P12496156715621399041.Spec : Prop :=
  ∀ n, P12496156715621399041.a n = A075133 (n + 1)

theorem P12496156715621399041.correct : P12496156715621399041.Spec := by
  intro n
  simp only [A075133, Nat.add_sub_cancel]

end A075133

/-! ## A075133.P15544128344389665040

`A000720(A066179(n+1))`
-/

namespace A075133.P15544128344389665040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A066179 (n + 1)).toNat

end

end A075133.P15544128344389665040

namespace A075133

/-- `A000720(A066179(n+1))` -/
def P15544128344389665040.Spec : Prop :=
  ∀ n, P15544128344389665040.a n = A075133 (n + 1)

end A075133

/-! ## A075133.P1100077224298953322

`A099801(A059455(n+1))`
-/

namespace A075133.P1100077224298953322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A059455 (n + 1)).toNat

end

end A075133.P1100077224298953322

namespace A075133

/-- `A099801(A059455(n+1))` -/
def P1100077224298953322.Spec : Prop :=
  ∀ n, P1100077224298953322.a n = A075133 (n + 1)

end A075133

/-! ## A075133.P13971577732294987702

`A061395(p?[A066179(n+1)])`
-/

namespace A075133.P13971577732294987702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075133.P13971577732294987702

namespace A075133

/-- `A061395(p?[A066179(n+1)])` -/
def P13971577732294987702.Spec : Prop :=
  ∀ n, P13971577732294987702.a n = A075133 (n + 1)

end A075133

/-! ## A075133.P3800406747952619273

`∑{d}[A066179(n+1), A061395(#)]`
-/

namespace A075133.P3800406747952619273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A075133.P3800406747952619273

namespace A075133

/-- `∑{d}[A066179(n+1), A061395(#)]` -/
def P3800406747952619273.Spec : Prop :=
  ∀ n, P3800406747952619273.a n = A075133 (n + 1)

end A075133

/-! ## A075133.P4372267612039979076

`A000720(2*A059455(n+1)+1)`
-/

namespace A075133.P4372267612039979076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A059455 (n + 1) + 1).toNat

end

end A075133.P4372267612039979076

namespace A075133

/-- `A000720(2*A059455(n+1)+1)` -/
def P4372267612039979076.Spec : Prop :=
  ∀ n, P4372267612039979076.a n = A075133 (n + 1)

end A075133

/-! ## A075133.P10896605244178388471

`A000720(4*A007700(n+1))+1`
-/

namespace A075133.P10896605244178388471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (4 * A007700 (n + 1)).toNat + 1

end

end A075133.P10896605244178388471

namespace A075133

/-- `A000720(4*A007700(n+1))+1` -/
def P10896605244178388471.Spec : Prop :=
  ∀ n, P10896605244178388471.a n = A075133 (n + 1)

end A075133

/-! ## A075133.P7690102947656454003

`A066328(p?[A066179(n+1)])`
-/

namespace A075133.P7690102947656454003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075133.P7690102947656454003

namespace A075133

/-- `A066328(p?[A066179(n+1)])` -/
def P7690102947656454003.Spec : Prop :=
  ∀ n, P7690102947656454003.a n = A075133 (n + 1)

end A075133

/-!
# A075134: Indices of triple-safe primes: p=prime(n) is double-safe: q=(p-1)/2, r=(q-1)/2 and s=(r-1)/2 are all prime (and q is double-safe).

The programs for A075134, there is no canonical definition to state claims against.
-/

/-! ## A075134.P14109179198836821066

`A000720(A157358(n+1))`
-/

namespace A075134.P14109179198836821066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A157358 (n + 1)).toNat

end

end A075134.P14109179198836821066

/-! ## A075134.P15588321623060438053

`A061395(p?[A157358(n+1)])`
-/

namespace A075134.P15588321623060438053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075134.P15588321623060438053

/-! ## A075134.P12140812112141425144

`A061395(or(1, A157358(n+1)))`
-/

namespace A075134.P12140812112141425144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A157358 (n + 1))).toNat

end

end A075134.P12140812112141425144

/-! ## A075134.P7752097308907960304

`∑{d}[A157358(n+1), A061395(#)]`
-/

namespace A075134.P7752097308907960304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A075134.P7752097308907960304

/-! ## A075134.P10881667947313087445

`A061395(∏{d}[A157358(n+1), #])`
-/

namespace A075134.P10881667947313087445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A075134.P10881667947313087445

/-!
# A075135: Numerator of the generalized harmonic number H(n,3,1) described below.

The programs for A075135, there is no canonical definition to state claims against.
-/

/-! ## A075135.P18091338234981089088

`A074596(n+1)/3`
-/

namespace A075135.P18091338234981089088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074596 (n + 1) : ℚ) / 3

end

end A075135.P18091338234981089088

/-! ## A075135.P14057358595117794639

`A000265(A024216(n))`
-/

namespace A075135.P14057358595117794639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A024216 n).toNat

end

end A075135.P14057358595117794639

/-!
# A075136: Numerator of the generalized harmonic number H(n,4,1).

The programs for A075136, there is no canonical definition to state claims against.
-/

/-! ## A075136.P14087090363938514455

`A074598(n+1)/4`
-/

namespace A075136.P14087090363938514455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074598 (n + 1) : ℚ) / 4

end

end A075136.P14087090363938514455

/-! ## A075136.P1503381145635132357

`gcd(A024382(n), A074598(n+1))`
-/

namespace A075136.P1503381145635132357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024382 n) (A074598 (n + 1))

end

end A075136.P1503381145635132357

/-!
# A075138: Denominator of the generalized harmonic number H(n,5,1).

The programs for A075138, there is no canonical definition to state claims against.
-/

/-! ## A075138.P11021975967391643748

`record[A134278(n+1)/A127296(n)]`
-/

namespace A075138.P11021975967391643748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134278 (n + 1) : ℚ) / (A127296 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075138.P11021975967391643748

/-!
# A075139: Numerator of the generalized harmonic number H(n,5,2).

The programs for A075139, there is no canonical definition to state claims against.
-/

/-! ## A075139.P12747261613932128528

`A000265(A383232(n+1))`
-/

namespace A075139.P12747261613932128528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A383232 (n + 1)).toNat

end

end A075139.P12747261613932128528

/-!
# A075140: Denominator of the generalized harmonic number H(n,5,2).

The programs for A075140, there is no canonical definition to state claims against.
-/

/-! ## A075140.P5776624243626551861

`2*A007947(A034323(n+1))`
-/

namespace A075140.P5776624243626551861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007947 (A034323 (n + 1)).toNat

end

end A075140.P5776624243626551861

/-!
# A075142: Denominator of the generalized harmonic number H(n,5,3).

The programs for A075142, there is no canonical definition to state claims against.
-/

/-! ## A075142.P15664421481638959784

`∏[A351904(3*n+2)-n]`
-/

namespace A075142.P15664421481638959784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351904 (3 * n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A075142.P15664421481638959784

/-!
# A075145: Prime basis of A061373.

The programs for A075145, the canonical program `A075145.P13107702614752429613` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075145 has offset 1).

The definition of A075145 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061373, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A075145.P13107702614752429613

`A061373(A000040(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A075145

/-- `A061373(A000040(n+1))` -/
def P13107702614752429613.Spec : Prop :=
  ∀ n, P13107702614752429613.a n = A075145 (n + 1)

theorem P13107702614752429613.correct : P13107702614752429613.Spec := by
  intro n
  simp only [A075145, Nat.add_sub_cancel]

end A075145

/-! ## A075145.P5182479393603974499

`A061373(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A075145.P5182479393603974499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A075145.P5182479393603974499

namespace A075145

/-- `A061373(p?[a(n-1)+2])` -/
def P5182479393603974499.Spec : Prop :=
  ∀ n, P5182479393603974499.a n = A075145 (n + 1)

end A075145

/-! ## A075145.P3954506033862210013

`A061373(Δ[A007504(n)])`
-/

namespace A075145.P3954506033862210013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (f1 (n + 1) - f1 n).toNat

end

end A075145.P3954506033862210013

namespace A075145

/-- `A061373(Δ[A007504(n)])` -/
def P3954506033862210013.Spec : Prop :=
  ∀ n, P3954506033862210013.a n = A075145 (n + 1)

end A075145

/-! ## A075145.P11778366085672116881

`A061373(A008578(n+2))`
-/

namespace A075145.P11778366085672116881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (A008578 (n + 2)).toNat

end

end A075145.P11778366085672116881

namespace A075145

/-- `A061373(A008578(n+2))` -/
def P11778366085672116881.Spec : Prop :=
  ∀ n, P11778366085672116881.a n = A075145 (n + 1)

end A075145

/-! ## A075145.P4728410620522676077

`A061373(A182986(n+2))`
-/

namespace A075145.P4728410620522676077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (A182986 (n + 2)).toNat

end

end A075145.P4728410620522676077

namespace A075145

/-- `A061373(A182986(n+2))` -/
def P4728410620522676077.Spec : Prop :=
  ∀ n, P4728410620522676077.a n = A075145 (n + 1)

end A075145

/-! ## A075145.P1411873154818068058

`A061373(record[A006530(n+2)])`
-/

namespace A075145.P1411873154818068058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075145.P1411873154818068058

namespace A075145

/-- `A061373(record[A006530(n+2)])` -/
def P1411873154818068058.Spec : Prop :=
  ∀ n, P1411873154818068058.a n = A075145 (n + 1)

end A075145

/-! ## A075145.P5030046535535359193

`A061373(record[A020639(n+2)])`
-/

namespace A075145.P5030046535535359193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075145.P5030046535535359193

namespace A075145

/-- `A061373(record[A020639(n+2)])` -/
def P5030046535535359193.Spec : Prop :=
  ∀ n, P5030046535535359193.a n = A075145 (n + 1)

end A075145

/-! ## A075145.P6408363526591849126

`A061373(A067747(2*n+1))`
-/

namespace A075145.P6408363526591849126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (A067747 (2 * n + 1)).toNat

end

end A075145.P6408363526591849126

namespace A075145

/-- `A061373(A067747(2*n+1))` -/
def P6408363526591849126.Spec : Prop :=
  ∀ n, P6408363526591849126.a n = A075145 (n + 1)

end A075145

/-!
# A075146: n-th perfect power - n-th prime: pp(n) - prime(n).

The programs for A075146, there is no canonical definition to state claims against.
-/

/-! ## A075146.P14650336950800900978

`A001597(n+1)-A000040(n+1)`
-/

namespace A075146.P14650336950800900978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - A000040 (n + 1)

end

end A075146.P14650336950800900978

/-! ## A075146.P15034423372463454068

`∑[A076412(n)]-A000040(n+1)`
-/

namespace A075146.P15034423372463454068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000040 (n + 1)

end

end A075146.P15034423372463454068

/-! ## A075146.P11826025443283514083

`A001597(n+1)-Δ[A007504(n)]`
-/

namespace A075146.P11826025443283514083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - (f1 (n + 1) - f1 n)

end

end A075146.P11826025443283514083

/-! ## A075146.P928825067933725142

`A001597(n+1)-abs(Δ[A008348(n)])`
-/

namespace A075146.P928825067933725142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - |f1 (n + 1) - f1 n|

end

end A075146.P928825067933725142

/-! ## A075146.P1994155352808403029

`A001597(n+1)-abs(Δ[A022837(n)])`
-/

namespace A075146.P1994155352808403029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - |f1 (n + 1) - f1 n|

end

end A075146.P1994155352808403029

/-! ## A075146.P328443605098297646

`A001597(n+1)-abs(Δ[A064365(n)])`
-/

namespace A075146.P328443605098297646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - |f1 (n + 1) - f1 n|

end

end A075146.P328443605098297646

/-! ## A075146.P11084770446137883511

`abs(A157985(n+1))-A000040(n+1)`
-/

namespace A075146.P11084770446137883511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)| - A000040 (n + 1)

end

end A075146.P11084770446137883511

/-! ## A075146.P616342426704443099

`A001597(n+1)-sqrt(A001248(n+1))`
-/

namespace A075146.P616342426704443099
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) : ℝ) - Real.sqrt (A001248 (n + 1) : ℝ)

end

end A075146.P616342426704443099

/-! ## A075146.P16036167458107474365

`A001597(n+1)-∑[A054541(n+1)]`
-/

namespace A075146.P16036167458107474365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075146.P16036167458107474365

/-! ## A075146.P18053487480497560120

`A001597(n+1)-(A006093(n+1)+1)`
-/

namespace A075146.P18053487480497560120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - (A006093 (n + 1) + 1)

end

end A075146.P18053487480497560120

/-! ## A075146.P9516341538736765406

`A001597(n+1)+1-A008864(n+1)`
-/

namespace A075146.P9516341538736765406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) + (1 - A008864 (n + 1))

end

end A075146.P9516341538736765406

/-! ## A075146.P352503802090136691

`A001597(n+1)-A100484(n+1)/2`
-/

namespace A075146.P352503802090136691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) : ℚ) - (A100484 (n + 1) : ℚ) / 2

end

end A075146.P352503802090136691

/-! ## A075146.P2812003206874810907

`A001597(n+1)-A247665(A248387(n+1))`
-/

namespace A075146.P2812003206874810907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - A247665 (A248387 (n + 1)).toNat

end

end A075146.P2812003206874810907

/-! ## A075146.P11610054723036170618

`A001597(n+1)+A007504(n)-A007504(n+1)`
-/

namespace A075146.P11610054723036170618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) + (A007504 n - A007504 (n + 1))

end

end A075146.P11610054723036170618

/-! ## A075146.P6371019177407649745

`A001597(n+1)-A008578(n+2)`
-/

namespace A075146.P6371019177407649745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - A008578 (n + 2)

end

end A075146.P6371019177407649745

/-! ## A075146.P4356222003472200652

`A001597(n+1)-A246655(A027883(n+1))`
-/

namespace A075146.P4356222003472200652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - A246655 (A027883 (n + 1)).toNat

end

end A075146.P4356222003472200652

/-! ## A075146.P16525933301619829404

`A001597(n+1)-p?[A000961(n+1)]`
-/

namespace A075146.P16525933301619829404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075146.P16525933301619829404

/-! ## A075146.P8152565270550643002

`A001597(n+1)-A000961(A024620(n+1))`
-/

namespace A075146.P8152565270550643002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - A000961 (A024620 (n + 1)).toNat

end

end A075146.P8152565270550643002

/-! ## A075146.P8255659290037048878

`A001597(n+1)-record[A006530(n+2)]`
-/

namespace A075146.P8255659290037048878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075146.P8255659290037048878

/-!
# A075147: Number of Lyndon words (aperiodic necklaces) with n beads of n colors.

The programs for A075147, there is no canonical definition to state claims against.
-/

/-! ## A075147.P16394101873233795116

`A252764(n+1)/(n+1)`
-/

namespace A075147.P16394101873233795116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252764 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A075147.P16394101873233795116

/-! ## A075147.P13308651797066574674

`A074650(∑[4*n]+1)`
-/

namespace A075147.P13308651797066574674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A075147.P13308651797066574674

/-! ## A075147.P384174129831696188

`A143325((n+1)²+n²)`
-/

namespace A075147.P384174129831696188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 ((n + 1) ^ 2 + n ^ 2)

end

end A075147.P384174129831696188

/-! ## A075147.P4950993274368917284

`A007318(C(n, 2))*A074650(A001844(n))`
-/

namespace A075147.P4950993274368917284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A074650 (A001844 n).toNat

end

end A075147.P4950993274368917284

/-! ## A075147.P7228975639353718500

`A000045(A020639(2*(n+1)))*A074650(A001844(n))`
-/

namespace A075147.P7228975639353718500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A074650 (A001844 n).toNat

end

end A075147.P7228975639353718500

/-!
# A075148: Table E(n,k) (listed antidiagonalwise as E(0,0), E(1,0), E(0,1), E(2,0), E(1,1), E(0,2), ...) where E(n,k) is F(n+k) for all even n and L(n+k) for all odd n. F(n) and L(n) are the n-th Fibonacci (A000045) and Lucas (A000032) numbers respectively.

The programs for A075148, there is no canonical definition to state claims against.
-/

/-! ## A075148.P10709661865938265710

`A050609(n)/A050613(A025581(n))`
-/

namespace A075148.P10709661865938265710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050609 n : ℚ) / (A050613 (A025581 n).toNat : ℚ)

end

end A075148.P10709661865938265710

/-! ## A075148.P9912152718647358238

`A050610(A061579(n))/A050613(A025581(n))`
-/

namespace A075148.P9912152718647358238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050610 (A061579 n).toNat : ℚ) / (A050613 (A025581 n).toNat : ℚ)

end

end A075148.P9912152718647358238

/-! ## A075148.P10356397378398887833

`A050610(A114327(n)+n)/A050613(A025581(n))`
-/

namespace A075148.P10356397378398887833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050610 (A114327 n + (n : ℤ)).toNat : ℚ) / (A050613 (A025581 n).toNat : ℚ)

end

end A075148.P10356397378398887833

/-! ## A075148.P16738497278363347149

`A050610(∑[A198954(n)-1])/A050613(A025581(n))`
-/

namespace A075148.P16738497278363347149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050610 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A050613 (A025581 n).toNat : ℚ)

end

end A075148.P16738497278363347149

/-! ## A075148.P5646853091576616948

`A050610(A038722(n+1)-1)/A050613(A025581(n))`
-/

namespace A075148.P5646853091576616948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050610 (A038722 (n + 1) - 1).toNat : ℚ) / (A050613 (A025581 n).toNat : ℚ)

end

end A075148.P5646853091576616948

/-! ## A075148.P3494979213680130845

`A050610(A002024(n+1)²-(n+1))/A050613(A025581(n))`
-/

namespace A075148.P3494979213680130845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050610 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat : ℚ) / (A050613 (A025581 n).toNat : ℚ)

end

end A075148.P3494979213680130845

/-!
# A075149: Sum_{i=0..2*A053645(n)} (C(2*A053645(n),i) mod 2)*A000045(n-i) [where C(r,c) is the binomial coefficient (A007318) and A000045(n) is the n-th Fibonacci number].

The programs for A075149, the canonical program `A075149.P18175513624776809686` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075149 has offset 0).

The definition of A075149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075149.P18175513624776809686

`floor(A051656(n)/A000032(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075149

/-- `floor(A051656(n)/A000032(n))` -/
def P18175513624776809686.Spec : Prop :=
  ∀ n, P18175513624776809686.a n = A075149 n

theorem P18175513624776809686.correct : P18175513624776809686.Spec := by
  intro n
  simp only [A075149]

end A075149

/-! ## A075149.P18335768007460558743

`ceil(A051656(n)/A001612(n))`
-/

namespace A075149.P18335768007460558743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051656 n : ℚ) / (A001612 n : ℚ)⌉

end

end A075149.P18335768007460558743

namespace A075149

/-- `ceil(A051656(n)/A001612(n))` -/
def P18335768007460558743.Spec : Prop :=
  ∀ n, P18335768007460558743.a n = A075149 n

end A075149

/-! ## A075149.P272368488937617558

`floor(A051656(n)/A329723(n+2))`
-/

namespace A075149.P272368488937617558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051656 n : ℚ) / (A329723 (n + 2) : ℚ)⌋

end

end A075149.P272368488937617558

namespace A075149

/-- `floor(A051656(n)/A329723(n+2))` -/
def P272368488937617558.Spec : Prop :=
  ∀ n, P272368488937617558.a n = A075149 n

end A075149

/-! ## A075149.P16816388326719170464

`floor(A050609(∑[n])/A000032(n))`
-/

namespace A075149.P16816388326719170464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050609 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A000032 n : ℚ)⌋

end

end A075149.P16816388326719170464

namespace A075149

/-- `floor(A050609(∑[n])/A000032(n))` -/
def P16816388326719170464.Spec : Prop :=
  ∀ n, P16816388326719170464.a n = A075149 n

end A075149

/-! ## A075149.P600086717125752579

`ceil(A050609(∑[n])/A001612(n))`
-/

namespace A075149.P600086717125752579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050609 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A001612 n : ℚ)⌉

end

end A075149.P600086717125752579

namespace A075149

/-- `ceil(A050609(∑[n])/A001612(n))` -/
def P600086717125752579.Spec : Prop :=
  ∀ n, P600086717125752579.a n = A075149 n

end A075149

/-!
# A075150: a(n) = L(n)*C(n), L(n)=Lucas numbers (A000032), C(n)=reflected Lucas numbers (see comment to A061084).

The programs for A075150, the canonical program `A075150.P6709441431228982623` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075150 has offset 0).

The definition of A075150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075150.P6709441431228982623

`(-1)^n*A001254(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075150

/-- `(-1)^n*A001254(n)` -/
def P6709441431228982623.Spec : Prop :=
  ∀ n, P6709441431228982623.a n = A075150 n

theorem P6709441431228982623.correct : P6709441431228982623.Spec := by
  intro n
  simp only [A075150]

end A075150

/-! ## A075150.P5101367650732175076

`(-1)^n*A000032(n)²`
-/

namespace A075150.P5101367650732175076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000032 n ^ 2

end

end A075150.P5101367650732175076

namespace A075150

/-- `(-1)^n*A000032(n)²` -/
def P5101367650732175076.Spec : Prop :=
  ∀ n, P5101367650732175076.a n = A075150 n

end A075150

/-! ## A075150.P3365523392963934901

`(-1)^n*A000032(2*n)+2`
-/

namespace A075150.P3365523392963934901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000032 (2 * n) + 2

end

end A075150.P3365523392963934901

namespace A075150

/-- `(-1)^n*A000032(2*n)+2` -/
def P3365523392963934901.Spec : Prop :=
  ∀ n, P3365523392963934901.a n = A075150 n

end A075150

/-! ## A075150.P9902261631872041322

`ogf((4+7x-x^2)/(1+2x-2x^2-x^3))`
-/

namespace A075150.P9902261631872041322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 7, -1] [1, 2, -2, -1] n

end

end A075150.P9902261631872041322

namespace A075150

/-- `ogf((4+7x-x^2)/(1+2x-2x^2-x^3))` -/
def P9902261631872041322.Spec : Prop :=
  ∀ n, P9902261631872041322.a n = A075150 n

end A075150

/-! ## A075150.P10220043493756701389

`(floor((-ϕ)^n)+1)²*(-1)^n`
-/

namespace A075150.P10220043493756701389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(-Real.goldenRatio) ^ n⌋ + 1) ^ 2 * (-1) ^ n

end

end A075150.P10220043493756701389

namespace A075150

/-- `(floor((-ϕ)^n)+1)²*(-1)^n` -/
def P10220043493756701389.Spec : Prop :=
  ∀ n, P10220043493756701389.a n = A075150 n

end A075150

/-! ## A075150.P15867554085728694505

`A001254(n)/A033999(n)`
-/

namespace A075150.P15867554085728694505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001254 n : ℚ) / (A033999 n : ℚ)

end

end A075150.P15867554085728694505

namespace A075150

/-- `A001254(n)/A033999(n)` -/
def P15867554085728694505.Spec : Prop :=
  ∀ n, P15867554085728694505.a n = (A075150 n : ℚ)

end A075150

/-! ## A075150.P10600733148577987046

`A033999(n)*A047946(n)+1`
-/

namespace A075150.P10600733148577987046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A047946 n + 1

end

end A075150.P10600733148577987046

namespace A075150

/-- `A033999(n)*A047946(n)+1` -/
def P10600733148577987046.Spec : Prop :=
  ∀ n, P10600733148577987046.a n = A075150 n

end A075150

/-! ## A075150.P5725130464200691355

`A005248(n)*A033999(n)+2`
-/

namespace A075150.P5725130464200691355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n * A033999 n + 2

end

end A075150.P5725130464200691355

namespace A075150

/-- `A005248(n)*A033999(n)+2` -/
def P5725130464200691355.Spec : Prop :=
  ∀ n, P5725130464200691355.a n = A075150 n

end A075150

/-! ## A075150.P738405948986375166

`A001254(n)/A056594(2*n)`
-/

namespace A075150.P738405948986375166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001254 n : ℚ) / (A056594 (2 * n) : ℚ)

end

end A075150.P738405948986375166

namespace A075150

/-- `A001254(n)/A056594(2*n)` -/
def P738405948986375166.Spec : Prop :=
  ∀ n, P738405948986375166.a n = (A075150 n : ℚ)

end A075150

/-! ## A075150.P17990869682111582145

`Δ[A000045(n)*A061084(n)]+2`
-/

namespace A075150.P17990869682111582145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A061084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A075150.P17990869682111582145

namespace A075150

/-- `Δ[A000045(n)*A061084(n)]+2` -/
def P17990869682111582145.Spec : Prop :=
  ∀ n, P17990869682111582145.a n = A075150 n

end A075150

/-! ## A075150.P17926841869846951439

`A001254(n)/A112299(2*n+1)`
-/

namespace A075150.P17926841869846951439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001254 n : ℚ) / (A112299 (2 * n + 1) : ℚ)

end

end A075150.P17926841869846951439

namespace A075150

/-- `A001254(n)/A112299(2*n+1)` -/
def P17926841869846951439.Spec : Prop :=
  ∀ n, P17926841869846951439.a n = (A075150 n : ℚ)

end A075150

/-! ## A075150.P12020783917684755689

`A001638(2*n)/A056594(2*n)`
-/

namespace A075150.P12020783917684755689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001638 (2 * n) : ℚ) / (A056594 (2 * n) : ℚ)

end

end A075150.P12020783917684755689

namespace A075150

/-- `A001638(2*n)/A056594(2*n)` -/
def P12020783917684755689.Spec : Prop :=
  ∀ n, P12020783917684755689.a n = (A075150 n : ℚ)

end A075150

/-! ## A075150.P507468772096268588

`2-A000032(2*n)*A033999(n+1)`
-/

namespace A075150.P507468772096268588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000032 (2 * n) * A033999 (n + 1)

end

end A075150.P507468772096268588

namespace A075150

/-- `2-A000032(2*n)*A033999(n+1)` -/
def P507468772096268588.Spec : Prop :=
  ∀ n, P507468772096268588.a n = A075150 n

end A075150

/-! ## A075150.P5988329224192504433

`2-A005247(2*n)*A033999(n+1)`
-/

namespace A075150.P5988329224192504433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A005247 (2 * n) * A033999 (n + 1)

end

end A075150.P5988329224192504433

namespace A075150

/-- `2-A005247(2*n)*A033999(n+1)` -/
def P5988329224192504433.Spec : Prop :=
  ∀ n, P5988329224192504433.a n = A075150 n

end A075150

/-! ## A075150.P9879379503918610630

`A000032(2*n)*A009001(2*n)+2`
-/

namespace A075150.P9879379503918610630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) * A009001 (2 * n) + 2

end

end A075150.P9879379503918610630

namespace A075150

/-- `A000032(2*n)*A009001(2*n)+2` -/
def P9879379503918610630.Spec : Prop :=
  ∀ n, P9879379503918610630.a n = A075150 n

end A075150

/-! ## A075150.P16736184467486766787

`A000032(2*n)*A056594(2*n)+2`
-/

namespace A075150.P16736184467486766787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) * A056594 (2 * n) + 2

end

end A075150.P16736184467486766787

namespace A075150

/-- `A000032(2*n)*A056594(2*n)+2` -/
def P16736184467486766787.Spec : Prop :=
  ∀ n, P16736184467486766787.a n = A075150 n

end A075150

/-! ## A075150.P16283795754944052138

`2-A033999(n+1)*A061084(2*n+1)`
-/

namespace A075150.P16283795754944052138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A033999 (n + 1) * A061084 (2 * n + 1)

end

end A075150.P16283795754944052138

namespace A075150

/-- `2-A033999(n+1)*A061084(2*n+1)` -/
def P16283795754944052138.Spec : Prop :=
  ∀ n, P16283795754944052138.a n = A075150 n

end A075150

/-! ## A075150.P13242626889702428085

`A000032(n)+A000032(n)*A355021(n)`
-/

namespace A075150.P13242626889702428085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + A000032 n * A355021 n

end

end A075150.P13242626889702428085

namespace A075150

/-- `A000032(n)+A000032(n)*A355021(n)` -/
def P13242626889702428085.Spec : Prop :=
  ∀ n, P13242626889702428085.a n = A075150 n

end A075150

/-! ## A075150.P2891759987188992135

`A001254(n)/(A047946(n)-A005248(n))`
-/

namespace A075150.P2891759987188992135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001254 n : ℚ) / (A047946 n - A005248 n : ℚ)

end

end A075150.P2891759987188992135

namespace A075150

/-- `A001254(n)/(A047946(n)-A005248(n))` -/
def P2891759987188992135.Spec : Prop :=
  ∀ n, P2891759987188992135.a n = (A075150 n : ℚ)

end A075150

/-! ## A075150.P14177707488739777680

`A075151(n)/A000032(n)`
-/

namespace A075150.P14177707488739777680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075151 n : ℚ) / (A000032 n : ℚ)

end

end A075150.P14177707488739777680

namespace A075150

/-- `A075151(n)/A000032(n)` -/
def P14177707488739777680.Spec : Prop :=
  ∀ n, P14177707488739777680.a n = (A075150 n : ℚ)

end A075150

/-!
# A075151: a(n)=L(n)^2*C(n), L(n)=Lucas numbers (A000032), C(n)=reflected Lucas numbers (comment to A061084).

The programs for A075151, the canonical program `A075151.P11861447919673689050` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075151 has offset 0).

The definition of A075151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075151.P15344584247886847096

`(floor((-ϕ)^n)+1)^3`
-/

namespace A075151.P15344584247886847096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(-Real.goldenRatio) ^ n⌋ + 1) ^ 3

end

end A075151.P15344584247886847096

namespace A075151

/-- `(floor((-ϕ)^n)+1)^3` -/
def P15344584247886847096.Spec : Prop :=
  ∀ n, P15344584247886847096.a n = A075151 n

end A075151

/-! ## A075151.P11861447919673689050

`(-1)^n*A075155(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075151

/-- `(-1)^n*A075155(n)` -/
def P11861447919673689050.Spec : Prop :=
  ∀ n, P11861447919673689050.a n = A075151 n

theorem P11861447919673689050.correct : P11861447919673689050.Spec := by
  intro n
  simp only [A075151]

end A075151

/-! ## A075151.P9946060315133129032

`(-1)^n*A000032(n)^3`
-/

namespace A075151.P9946060315133129032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000032 n ^ 3

end

end A075151.P9946060315133129032

namespace A075151

/-- `(-1)^n*A000032(n)^3` -/
def P9946060315133129032.Spec : Prop :=
  ∀ n, P9946060315133129032.a n = A075151 n

end A075151

/-! ## A075151.P3990166439888752565

`A000032(n)*A075150(n)`
-/

namespace A075151.P3990166439888752565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A075150 n

end

end A075151.P3990166439888752565

namespace A075151

/-- `A000032(n)*A075150(n)` -/
def P3990166439888752565.Spec : Prop :=
  ∀ n, P3990166439888752565.a n = A075151 n

end A075151

/-! ## A075151.P7895768755885950398

`A075155(n)/A033999(n)`
-/

namespace A075151.P7895768755885950398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075155 n : ℚ) / (A033999 n : ℚ)

end

end A075151.P7895768755885950398

namespace A075151

/-- `A075155(n)/A033999(n)` -/
def P7895768755885950398.Spec : Prop :=
  ∀ n, P7895768755885950398.a n = (A075151 n : ℚ)

end A075151

/-! ## A075151.P10159517723258068547

`A001254(n)*A061084(n+1)`
-/

namespace A075151.P10159517723258068547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 n * A061084 (n + 1)

end

end A075151.P10159517723258068547

namespace A075151

/-- `A001254(n)*A061084(n+1)` -/
def P10159517723258068547.Spec : Prop :=
  ∀ n, P10159517723258068547.a n = A075151 n

end A075151

/-! ## A075151.P9254765495410301470

`A000032(n)²*A061084(n+1)`
-/

namespace A075151.P9254765495410301470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 2 * A061084 (n + 1)

end

end A075151.P9254765495410301470

namespace A075151

/-- `A000032(n)²*A061084(n+1)` -/
def P9254765495410301470.Spec : Prop :=
  ∀ n, P9254765495410301470.a n = A075151 n

end A075151

/-! ## A075151.P2517279871108150433

`Δ[A000204(n+1)]*A075150(n)`
-/

namespace A075151.P2517279871108150433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A075150 n

end

end A075151.P2517279871108150433

namespace A075151

/-- `Δ[A000204(n+1)]*A075150(n)` -/
def P2517279871108150433.Spec : Prop :=
  ∀ n, P2517279871108150433.a n = A075151 n

end A075151

/-! ## A075151.P6597459794188019186

`A001638(2*n)*A061084(n+1)`
-/

namespace A075151.P6597459794188019186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (2 * n) * A061084 (n + 1)

end

end A075151.P6597459794188019186

namespace A075151

/-- `A001638(2*n)*A061084(n+1)` -/
def P6597459794188019186.Spec : Prop :=
  ∀ n, P6597459794188019186.a n = A075151 n

end A075151

/-! ## A075151.P14076761272448241947

`Δ[A001610(n)]²*A061084(n+1)`
-/

namespace A075151.P14076761272448241947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A061084 (n + 1)

end

end A075151.P14076761272448241947

namespace A075151

/-- `Δ[A001610(n)]²*A061084(n+1)` -/
def P14076761272448241947.Spec : Prop :=
  ∀ n, P14076761272448241947.a n = A075151 n

end A075151

/-! ## A075151.P7869076400491620720

`A127218(2*n)²*A061084(n+1)`
-/

namespace A075151.P7869076400491620720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n) ^ 2 * A061084 (n + 1)

end

end A075151.P7869076400491620720

namespace A075151

/-- `A127218(2*n)²*A061084(n+1)` -/
def P7869076400491620720.Spec : Prop :=
  ∀ n, P7869076400491620720.a n = A075151 n

end A075151

/-! ## A075151.P6560189087743638367

`A303427(2*n)²*A061084(n+1)`
-/

namespace A075151.P6560189087743638367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n) ^ 2 * A061084 (n + 1)

end

end A075151.P6560189087743638367

namespace A075151

/-- `A303427(2*n)²*A061084(n+1)` -/
def P6560189087743638367.Spec : Prop :=
  ∀ n, P6560189087743638367.a n = A075151 n

end A075151

/-! ## A075151.P6263129651001633973

`A302126(Δ[n²])²*A061084(n+1)`
-/

namespace A075151.P6263129651001633973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2 * A061084 (n + 1)

end

end A075151.P6263129651001633973

namespace A075151

/-- `A302126(Δ[n²])²*A061084(n+1)` -/
def P6263129651001633973.Spec : Prop :=
  ∀ n, P6263129651001633973.a n = A075151 n

end A075151

/-! ## A075151.P4872786613161388561

`(-1)^n*(Δ[A000045(n)]+A000045(n+1))^3`
-/

namespace A075151.P4872786613161388561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n + A000045 (n + 1)) ^ 3

end

end A075151.P4872786613161388561

namespace A075151

/-- `(-1)^n*(Δ[A000045(n)]+A000045(n+1))^3` -/
def P4872786613161388561.Spec : Prop :=
  ∀ n, P4872786613161388561.a n = A075151 n

end A075151

/-! ## A075151.P5561313275720774595

`(A075091(n)-A000032(n))*A000032(n)²`
-/

namespace A075151.P5561313275720774595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075091 n - A000032 n) * A000032 n ^ 2

end

end A075151.P5561313275720774595

namespace A075151

/-- `(A075091(n)-A000032(n))*A000032(n)²` -/
def P5561313275720774595.Spec : Prop :=
  ∀ n, P5561313275720774595.a n = A075151 n

end A075151

/-! ## A075151.P15795995178053298448

`A000032(n)*A033999(n)*A000032(n)²`
-/

namespace A075151.P15795995178053298448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A033999 n * A000032 n ^ 2

end

end A075151.P15795995178053298448

namespace A075151

/-- `A000032(n)*A033999(n)*A000032(n)²` -/
def P15795995178053298448.Spec : Prop :=
  ∀ n, P15795995178053298448.a n = A075151 n

end A075151

/-! ## A075151.P8129334279528622533

`A000032(n)²/A075193(n)*A215602(n)`
-/

namespace A075151.P8129334279528622533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n ^ 2 : ℚ) / (A075193 n : ℚ) * (A215602 n : ℚ)

end

end A075151.P8129334279528622533

namespace A075151

/-- `A000032(n)²/A075193(n)*A215602(n)` -/
def P8129334279528622533.Spec : Prop :=
  ∀ n, P8129334279528622533.a n = (A075151 n : ℚ)

end A075151

/-! ## A075151.P4946195254498407768

`A075150(n)/A061084(n+1)*A075150(n)`
-/

namespace A075151.P4946195254498407768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075150 n : ℚ) / (A061084 (n + 1) : ℚ) * (A075150 n : ℚ)

end

end A075151.P4946195254498407768

namespace A075151

/-- `A075150(n)/A061084(n+1)*A075150(n)` -/
def P4946195254498407768.Spec : Prop :=
  ∀ n, P4946195254498407768.a n = (A075151 n : ℚ)

end A075151

/-! ## A075151.P10318738732113885928

`(Δ[A000045(n)]+A000045(n+1))²*A061084(n+1)`
-/

namespace A075151.P10318738732113885928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + A000045 (n + 1)) ^ 2 * A061084 (n + 1)

end

end A075151.P10318738732113885928

namespace A075151

/-- `(Δ[A000045(n)]+A000045(n+1))²*A061084(n+1)` -/
def P10318738732113885928.Spec : Prop :=
  ∀ n, P10318738732113885928.a n = A075151 n

end A075151

/-! ## A075151.P14844222336832030060

`A099923(n)/A061084(n+1)`
-/

namespace A075151.P14844222336832030060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099923 n : ℚ) / (A061084 (n + 1) : ℚ)

end

end A075151.P14844222336832030060

namespace A075151

/-- `A099923(n)/A061084(n+1)` -/
def P14844222336832030060.Spec : Prop :=
  ∀ n, P14844222336832030060.a n = (A075151 n : ℚ)

end A075151

/-!
# A075155: Cubes of Lucas numbers.

The programs for A075155, the canonical program `A075155.P6042806549785850183` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075155 has offset 0).

The definition of A075155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075155.P6042806549785850183

`3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=8, a(1)=1, a(2)=27, a(3)=64`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075155

/-- `3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` -/
def P6042806549785850183.Spec : Prop :=
  ∀ n, P6042806549785850183.a n = A075155 n

theorem P6042806549785850183.correct : P6042806549785850183.Spec := by
  intro n
  simp only [A075155]

end A075155

/-! ## A075155.P14887453773486818995

`A000032(n)^3`
-/

namespace A075155.P14887453773486818995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 3

end

end A075155.P14887453773486818995

namespace A075155

/-- `A000032(n)^3` -/
def P14887453773486818995.Spec : Prop :=
  ∀ n, P14887453773486818995.a n = A075155 n

end A075155

/-! ## A075155.P11196511955908503209

`(-1)^n*A075151(n)`
-/

namespace A075155.P11196511955908503209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A075151 n

end

end A075155.P11196511955908503209

namespace A075155

/-- `(-1)^n*A075151(n)` -/
def P11196511955908503209.Spec : Prop :=
  ∀ n, P11196511955908503209.a n = A075155 n

end A075155

/-! ## A075155.P5603122205167354855

`A000032(n)*A001254(n)`
-/

namespace A075155.P5603122205167354855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A001254 n

end

end A075155.P5603122205167354855

namespace A075155

/-- `A000032(n)*A001254(n)` -/
def P5603122205167354855.Spec : Prop :=
  ∀ n, P5603122205167354855.a n = A075155 n

end A075155

/-! ## A075155.P1566803188665399814

`2*A001077(n)+3*A061084(n+1)`
-/

namespace A075155.P1566803188665399814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001077 n + 3 * A061084 (n + 1)

end

end A075155.P1566803188665399814

namespace A075155

/-- `2*A001077(n)+3*A061084(n+1)` -/
def P1566803188665399814.Spec : Prop :=
  ∀ n, P1566803188665399814.a n = A075155 n

end A075155

/-! ## A075155.P11516089600120310935

`abs((floor((-ϕ)^n)+1)^3)`
-/

namespace A075155.P11516089600120310935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(⌊(-Real.goldenRatio) ^ n⌋ + 1) ^ 3|

end

end A075155.P11516089600120310935

namespace A075155

/-- `abs((floor((-ϕ)^n)+1)^3)` -/
def P11516089600120310935.Spec : Prop :=
  ∀ n, P11516089600120310935.a n = A075155 n

end A075155

/-! ## A075155.P16192939533480810961

`∑[a(n-1)+a(n-2)]^3` with `a(0)=2, a(1)=-1, a(2)=2`
-/

namespace A075155.P16192939533480810961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A075155.P16192939533480810961

namespace A075155

/-- `∑[a(n-1)+a(n-2)]^3` -/
def P16192939533480810961.Spec : Prop :=
  ∀ n, P16192939533480810961.a n = A075155 n

end A075155

/-! ## A075155.P1725358475562138003

`Δ[A001610(n)]^3`
-/

namespace A075155.P1725358475562138003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A075155.P1725358475562138003

namespace A075155

/-- `Δ[A001610(n)]^3` -/
def P1725358475562138003.Spec : Prop :=
  ∀ n, P1725358475562138003.a n = A075155 n

end A075155

/-! ## A075155.P2674034938077570919

`(A001612(n)-1)^3`
-/

namespace A075155.P2674034938077570919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001612 n - 1) ^ 3

end

end A075155.P2674034938077570919

namespace A075155

/-- `(A001612(n)-1)^3` -/
def P2674034938077570919.Spec : Prop :=
  ∀ n, P2674034938077570919.a n = A075155 n

end A075155

/-! ## A075155.P16031605222798648908

`A329723(n+2)^3`
-/

namespace A075155.P16031605222798648908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 2) ^ 3

end

end A075155.P16031605222798648908

namespace A075155

/-- `A329723(n+2)^3` -/
def P16031605222798648908.Spec : Prop :=
  ∀ n, P16031605222798648908.a n = A075155 n

end A075155

/-! ## A075155.P13767497534918428914

`(A000211(n)-2)^3`
-/

namespace A075155.P13767497534918428914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000211 n - 2) ^ 3

end

end A075155.P13767497534918428914

namespace A075155

/-- `(A000211(n)-2)^3` -/
def P13767497534918428914.Spec : Prop :=
  ∀ n, P13767497534918428914.a n = A075155 n

end A075155

/-! ## A075155.P17788907011200185553

`A127218(2*n)^3`
-/

namespace A075155.P17788907011200185553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n) ^ 3

end

end A075155.P17788907011200185553

namespace A075155

/-- `A127218(2*n)^3` -/
def P17788907011200185553.Spec : Prop :=
  ∀ n, P17788907011200185553.a n = A075155 n

end A075155

/-! ## A075155.P539452153408659676

`A303427(2*n)^3`
-/

namespace A075155.P539452153408659676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n) ^ 3

end

end A075155.P539452153408659676

namespace A075155

/-- `A303427(2*n)^3` -/
def P539452153408659676.Spec : Prop :=
  ∀ n, P539452153408659676.a n = A075155 n

end A075155

/-! ## A075155.P7443489929168403559

`A090244(Δ[n²])^3`
-/

namespace A075155.P7443489929168403559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 3

end

end A075155.P7443489929168403559

namespace A075155

/-- `A090244(Δ[n²])^3` -/
def P7443489929168403559.Spec : Prop :=
  ∀ n, P7443489929168403559.a n = A075155 n

end A075155

/-! ## A075155.P16101910601941331422

`A302126(Δ[n²])^3`
-/

namespace A075155.P16101910601941331422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 3

end

end A075155.P16101910601941331422

namespace A075155

/-- `A302126(Δ[n²])^3` -/
def P16101910601941331422.Spec : Prop :=
  ∀ n, P16101910601941331422.a n = A075155 n

end A075155

/-! ## A075155.P5013119992649844822

`Δ[A000204(n+1)]^3`
-/

namespace A075155.P5013119992649844822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A075155.P5013119992649844822

namespace A075155

/-- `Δ[A000204(n+1)]^3` -/
def P5013119992649844822.Spec : Prop :=
  ∀ n, P5013119992649844822.a n = A075155 n

end A075155

/-! ## A075155.P209914806556982307

`Δ[A000211(n+1)]^3`
-/

namespace A075155.P209914806556982307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A075155.P209914806556982307

namespace A075155

/-- `Δ[A000211(n+1)]^3` -/
def P209914806556982307.Spec : Prop :=
  ∀ n, P209914806556982307.a n = A075155 n

end A075155

/-! ## A075155.P8644031870190555804

`Δ[A001612(n+1)]^3`
-/

namespace A075155.P8644031870190555804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A075155.P8644031870190555804

namespace A075155

/-- `Δ[A001612(n+1)]^3` -/
def P8644031870190555804.Spec : Prop :=
  ∀ n, P8644031870190555804.a n = A075155 n

end A075155

/-! ## A075155.P3501328368265389910

`Δ[A366506(n+1)]^3`
-/

namespace A075155.P3501328368265389910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A075155.P3501328368265389910

namespace A075155

/-- `Δ[A366506(n+1)]^3` -/
def P3501328368265389910.Spec : Prop :=
  ∀ n, P3501328368265389910.a n = A075155 n

end A075155

/-! ## A075155.P8834205064401608574

`Δ[A386707(n+1)]^3`
-/

namespace A075155.P8834205064401608574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A075155.P8834205064401608574

namespace A075155

/-- `Δ[A386707(n+1)]^3` -/
def P8834205064401608574.Spec : Prop :=
  ∀ n, P8834205064401608574.a n = A075155 n

end A075155

/-!
# A075156: Binomial transform of pentanacci numbers A074048: a(n) = Sum_{k=0..n} binomial(n,k)*A074048(k).

The programs for A075156, there is no canonical definition to state claims against.
-/

/-! ## A075156.P3543290386831866687

`A140523(6^n)+5`
-/

namespace A075156.P3543290386831866687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140523 (6 ^ n) + 5

end

end A075156.P3543290386831866687

/-! ## A075156.P3927837121610043936

`(3^n-2^n)%∏{p}[A052723(comp[and(n, n+3)+1]), #]+5`
-/

namespace A075156.P3927837121610043936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3) + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052723 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((3 ^ n : ℤ) - (2 ^ n : ℤ)) ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) + 5

end

end A075156.P3927837121610043936

/-!
# A075157: Run lengths in the binary expansion of n gives the vector of exponents in prime factorization of a(n)+1, with the least significant run corresponding to the exponent of the least prime, 2; with one subtracted from each run length, except for the most significant run of 1's.

The programs for A075157, the canonical program `A075157.P13529888082519648211` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075157 has offset 0).

The definition of A075157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075157.P714935186762514288

`A075159(n+1)-1`
-/

namespace A075157.P714935186762514288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075159 (n + 1) - 1

end

end A075157.P714935186762514288

namespace A075157

/-- `A075159(n+1)-1` -/
def P714935186762514288.Spec : Prop :=
  ∀ n, P714935186762514288.a n = A075157 n

theorem P714935186762514288.correct : P714935186762514288.Spec := by
  intro n
  simp only [A075157, Nat.add_sub_cancel, A075157.P714935186762514288.a, A075157.P13529888082519648211.a, A004760, A004760.P18986604660661848.f1, A004760.P18986604660661848.f2, A004760.P18986604660661848.a, A075159, A075159.P14435593091515298809.a, A286468, A286468.P8368266959325649577.a, A092323, A092323.P17946410828982596858.a, A243353, A243353.P15336044787577737942.a, A258746, A258746.P7650068295521346496.a, A003188, A003188.P10544524695508875182.a, A005940, A005940.P5942875842694471387.a, A054429, A054429.P11515140416303889102.a, A165199, A165199.P18080261923669933743.a, A000035, A000035.P2023072528413494694.a, A000523, A000523.P3314682526375882520.a, A065190, A065190.P13211442057156314252.a, A092569, A092569.P9977416492423426890.a, A122111, A122111.P18124015185857335041.a, A253563, A253563.P3695549317124564486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075157

/-! ## A075157.P13529888082519648211

`A286468(A004760(n+2))-1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A075157

/-- `A286468(A004760(n+2))-1` -/
def P13529888082519648211.Spec : Prop :=
  ∀ n, P13529888082519648211.a n = A075157 n

theorem P13529888082519648211.correct : P13529888082519648211.Spec := by
  intro n
  simp only [A075157]

end A075157

/-! ## A075157.P5832029437948875352

`A253563(A341915(n))-1`
-/

namespace A075157.P5832029437948875352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (A341915 n).toNat - 1

end

end A075157.P5832029437948875352

namespace A075157

/-- `A253563(A341915(n))-1` -/
def P5832029437948875352.Spec : Prop :=
  ∀ n, P5832029437948875352.a n = A075157 n

end A075157

/-! ## A075157.P3520926437680853058

`A163511(xor(n, floor(n/2)))-1`
-/

namespace A075157.P3520926437680853058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat - 1

end

end A075157.P3520926437680853058

namespace A075157

/-- `A163511(xor(n, floor(n/2)))-1` -/
def P3520926437680853058.Spec : Prop :=
  ∀ n, P3520926437680853058.a n = A075157 n

end A075157

/-! ## A075157.P17661961677601333173

`A163511(A003188(n))-1`
-/

namespace A075157.P17661961677601333173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A003188 n).toNat - 1

end

end A075157.P17661961677601333173

namespace A075157

/-- `A163511(A003188(n))-1` -/
def P17661961677601333173.Spec : Prop :=
  ∀ n, P17661961677601333173.a n = A075157 n

end A075157

/-! ## A075157.P12518649654515819629

`A291200(A014963(2*(n+1)))+A163511(A003188(n))`
-/

namespace A075157.P12518649654515819629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291200 (A014963 (2 * (n + 1))).toNat + A163511 (A003188 n).toNat

end

end A075157.P12518649654515819629

namespace A075157

/-- `A291200(A014963(2*(n+1)))+A163511(A003188(n))` -/
def P12518649654515819629.Spec : Prop :=
  ∀ n, P12518649654515819629.a n = A075157 n

end A075157

/-! ## A075157.P5483908567599692831

`A243353(A165199(n))-1`
-/

namespace A075157.P5483908567599692831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A165199 n).toNat - 1

end

end A075157.P5483908567599692831

namespace A075157

/-- `A243353(A165199(n))-1` -/
def P5483908567599692831.Spec : Prop :=
  ∀ n, P5483908567599692831.a n = A075157 n

end A075157

/-! ## A075157.P7664497334606654064

`A124833(A377837(n))-1`
-/

namespace A075157.P7664497334606654064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124833 (A377837 n).toNat - 1

end

end A075157.P7664497334606654064

namespace A075157

/-- `A124833(A377837(n))-1` -/
def P7664497334606654064.Spec : Prop :=
  ∀ n, P7664497334606654064.a n = A075157 n

end A075157

/-! ## A075157.P6359129198353226613

`A023443(A075159(n+1))`
-/

namespace A075157.P6359129198353226613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A075159 (n + 1)).toNat

end

end A075157.P6359129198353226613

namespace A075157

/-- `A023443(A075159(n+1))` -/
def P6359129198353226613.Spec : Prop :=
  ∀ n, P6359129198353226613.a n = A075157 n

end A075157

/-! ## A075157.P6994492244741284457

`A241909(A243353(n))-1`
-/

namespace A075157.P6994492244741284457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A243353 n).toNat - 1

end

end A075157.P6994492244741284457

namespace A075157

/-- `A241909(A243353(n))-1` -/
def P6994492244741284457.Spec : Prop :=
  ∀ n, P6994492244741284457.a n = A075157 n

end A075157

/-!
# A075158: Prime factorization of n+1 encoded with the run lengths of binary expansion.

The programs for A075158, there is no canonical definition to state claims against.
-/

/-! ## A075158.P10494543929776910968

`A075160(n+1)-1`
-/

namespace A075158.P10494543929776910968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075160 (n + 1) - 1

end

end A075158.P10494543929776910968

/-! ## A075158.P7386300724566410485

`A134824(n+2)+A075160(n+1)`
-/

namespace A075158.P7386300724566410485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A075160 (n + 1)

end

end A075158.P7386300724566410485

/-! ## A075158.P13098507336127805837

`A153881(n+2)+A075160(n+1)`
-/

namespace A075158.P13098507336127805837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A075160 (n + 1)

end

end A075158.P13098507336127805837

/-! ## A075158.P11064135598331463893

`A280193(or(1, n))+A075160(n+1)`
-/

namespace A075158.P11064135598331463893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (Nat.lor 1 n) + A075160 (n + 1)

end

end A075158.P11064135598331463893

/-! ## A075158.P5631410137488995646

`A280193(Δ[n²])+A075160(n+1)`
-/

namespace A075158.P5631410137488995646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A075160 (n + 1)

end

end A075158.P5631410137488995646

/-! ## A075158.P7368075863744847623

`abs(A075160(n+1)+A057428(n+1))`
-/

namespace A075158.P7368075863744847623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075160 (n + 1) + A057428 (n + 1)|

end

end A075158.P7368075863744847623

/-! ## A075158.P107284062197528772

`A001478(n+1)+A075160(n+1)+n`
-/

namespace A075158.P107284062197528772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A075160 (n + 1) + (n : ℤ))

end

end A075158.P107284062197528772

/-! ## A075158.P11707109107973354317

`(A075160(n+1)+A057428(n))*floor(atan(n+1))`
-/

namespace A075158.P11707109107973354317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075160 (n + 1) + A057428 n) * ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A075158.P11707109107973354317

/-! ## A075158.P13419028443270150573

`A328310(A000040(n+1))+A075160(n+1)`
-/

namespace A075158.P13419028443270150573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328310 (A000040 (n + 1)).toNat + A075160 (n + 1)

end

end A075158.P13419028443270150573

/-! ## A075158.P13154713816198860235

`A110514(A102603(n))+A075160(n+1)`
-/

namespace A075158.P13154713816198860235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A102603 n).toNat + A075160 (n + 1)

end

end A075158.P13154713816198860235

/-!
# A075159: Run lengths in the binary expansion of n-1 gives the vector of exponents in prime factorization of a(n), with the least significant run corresponding to the exponent of the least prime, 2.

The programs for A075159, the canonical program `A075159.P14435593091515298809` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075159 has offset 1).

The definition of A075159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075159.P14435593091515298809

`1+A075157(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A075159

/-- `1+A075157(n)` -/
def P14435593091515298809.Spec : Prop :=
  ∀ n, P14435593091515298809.a n = A075159 (n + 1)

theorem P14435593091515298809.correct : P14435593091515298809.Spec := by
  intro n
  simp only [A075159, Nat.add_sub_cancel]

end A075159

/-! ## A075159.P11376336245614623899

`A286468(2^ceil(log2(n+1))+n)`
-/

namespace A075159.P11376336245614623899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286468 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + (n : ℚ))).toNat

end

end A075159.P11376336245614623899

namespace A075159

/-- `A286468(2^ceil(log2(n+1))+n)` -/
def P11376336245614623899.Spec : Prop :=
  ∀ n, P11376336245614623899.a n = A075159 (n + 1)

end A075159

/-! ## A075159.P17934433352370767878

`A253563(A341915(n))`
-/

namespace A075159.P17934433352370767878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (A341915 n).toNat

end

end A075159.P17934433352370767878

namespace A075159

/-- `A253563(A341915(n))` -/
def P17934433352370767878.Spec : Prop :=
  ∀ n, P17934433352370767878.a n = A075159 (n + 1)

end A075159

/-! ## A075159.P9479933073048826850

`A163511(xor(n, floor(n/2)))`
-/

namespace A075159.P9479933073048826850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A075159.P9479933073048826850

namespace A075159

/-- `A163511(xor(n, floor(n/2)))` -/
def P9479933073048826850.Spec : Prop :=
  ∀ n, P9479933073048826850.a n = A075159 (n + 1)

end A075159

/-! ## A075159.P18233963107860785275

`A163511(abs(xor(n, n-∑[n%2])))`
-/

namespace A075159.P18233963107860785275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 |Int.xor (n : ℤ) ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))|.toNat

end

end A075159.P18233963107860785275

namespace A075159

/-- `A163511(abs(xor(n, n-∑[n%2])))` -/
def P18233963107860785275.Spec : Prop :=
  ∀ n, P18233963107860785275.a n = A075159 (n + 1)

end A075159

/-! ## A075159.P4427084620683028749

`A163511(abs(xor(n, (or(1, n)-1)/2)))`
-/

namespace A075159.P4427084620683028749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 |Int.xor (n : ℤ) (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2))|.toNat

end

end A075159.P4427084620683028749

namespace A075159

/-- `A163511(abs(xor(n, (or(1, n)-1)/2)))` -/
def P4427084620683028749.Spec : Prop :=
  ∀ n, P4427084620683028749.a n = A075159 (n + 1)

end A075159

/-! ## A075159.P5700502959368643741

`A163511(xor(2*n, and(n, -2))/2)`
-/

namespace A075159.P5700502959368643741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (SequenceMachineLib.roundAway ((Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2)).toNat

end

end A075159.P5700502959368643741

namespace A075159

/-- `A163511(xor(2*n, and(n, -2))/2)` -/
def P5700502959368643741.Spec : Prop :=
  ∀ n, P5700502959368643741.a n = A075159 (n + 1)

end A075159

/-! ## A075159.P6611389350480674413

`A163511(and(2*n, -n)-ceil(n/2))`
-/

namespace A075159.P6611389350480674413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (Int.land (2 * n : ℤ) (-(n : ℤ)) - ⌈(n : ℚ) / 2⌉).toNat

end

end A075159.P6611389350480674413

namespace A075159

/-- `A163511(and(2*n, -n)-ceil(n/2))` -/
def P6611389350480674413.Spec : Prop :=
  ∀ n, P6611389350480674413.a n = A075159 (n + 1)

end A075159

/-! ## A075159.P9332475934839848678

`A163511(floor(n/2)+and(n, Δ[-n²]))`
-/

namespace A075159.P9332475934839848678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (⌊(n : ℚ) / 2⌋ + Int.land (n : ℤ) (f1 (n + 1) - f1 n)).toNat

end

end A075159.P9332475934839848678

namespace A075159

/-- `A163511(floor(n/2)+and(n, Δ[-n²]))` -/
def P9332475934839848678.Spec : Prop :=
  ∀ n, P9332475934839848678.a n = A075159 (n + 1)

end A075159

/-! ## A075159.P4830677210111676076

`A163511(floor(n/2)+n-and(n, 2*n))`
-/

namespace A075159.P4830677210111676076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (⌊(n : ℚ) / 2⌋ + ((n : ℤ) - (Nat.land n (2 * n) : ℤ))).toNat

end

end A075159.P4830677210111676076

namespace A075159

/-- `A163511(floor(n/2)+n-and(n, 2*n))` -/
def P4830677210111676076.Spec : Prop :=
  ∀ n, P4830677210111676076.a n = A075159 (n + 1)

end A075159

/-! ## A075159.P12726321262560842941

`A163511(xor(n, ∑[char[2*(n+1)]])%(6*n+3))`
-/

namespace A075159.P12726321262560842941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (Nat.xor n (∑ j ∈ Finset.range (n + 1), f1 j) % (6 * n + 3))

end

end A075159.P12726321262560842941

namespace A075159

/-- `A163511(xor(n, ∑[char[2*(n+1)]])%(6*n+3))` -/
def P12726321262560842941.Spec : Prop :=
  ∀ n, P12726321262560842941.a n = A075159 (n + 1)

end A075159

/-! ## A075159.P6453353213983210812

`A163511(A003188(n))`
-/

namespace A075159.P6453353213983210812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A003188 n).toNat

end

end A075159.P6453353213983210812

namespace A075159

/-- `A163511(A003188(n))` -/
def P6453353213983210812.Spec : Prop :=
  ∀ n, P6453353213983210812.a n = A075159 (n + 1)

end A075159

/-! ## A075159.P16486229989404501818

`A243353(A165199(n))`
-/

namespace A075159.P16486229989404501818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A165199 n).toNat

end

end A075159.P16486229989404501818

namespace A075159

/-- `A243353(A165199(n))` -/
def P16486229989404501818.Spec : Prop :=
  ∀ n, P16486229989404501818.a n = A075159 (n + 1)

end A075159

/-! ## A075159.P4762788957133355496

`A124833(A377837(n))`
-/

namespace A075159.P4762788957133355496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124833 (A377837 n).toNat

end

end A075159.P4762788957133355496

namespace A075159

/-- `A124833(A377837(n))` -/
def P4762788957133355496.Spec : Prop :=
  ∀ n, P4762788957133355496.a n = A075159 (n + 1)

end A075159

/-!
# A075160: Prime factorization of n encoded with the run lengths of binary expansion + 1.

The programs for A075160, there is no canonical definition to state claims against.
-/

/-! ## A075160.P6558246736133815268

`A075158(n)+1`
-/

namespace A075160.P6558246736133815268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075158 n + 1

end

end A075160.P6558246736133815268

/-! ## A075160.P4709895398709651728

`1-A057428(n)*A075158(n)`
-/

namespace A075160.P4709895398709651728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A075158 n

end

end A075160.P4709895398709651728

/-! ## A075160.P3154677781988279712

`A000124(n)-(∑[n]-A075158(n))`
-/

namespace A075160.P3154677781988279712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A075158 n)

end

end A075160.P3154677781988279712

/-! ## A075160.P4666423608280028594

`1-(A000035(2*n)-A075158(n))`
-/

namespace A075160.P4666423608280028594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000035 (2 * n) - A075158 n)

end

end A075160.P4666423608280028594

/-! ## A075160.P7519371353934722857

`2-(A057979(2*n)-A075158(n))`
-/

namespace A075160.P7519371353934722857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A057979 (2 * n) - A075158 n)

end

end A075160.P7519371353934722857

/-! ## A075160.P15474585118001642570

`1-(A028326(n)%2-A075158(n))`
-/

namespace A075160.P15474585118001642570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.tmod (A028326 n) 2 - A075158 n)

end

end A075160.P15474585118001642570

/-! ## A075160.P18098158662509329977

`2-(A007318(C(2, n))-A075158(n))`
-/

namespace A075160.P18098158662509329977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Nat.choose 2 n) - A075158 n)

end

end A075160.P18098158662509329977

/-! ## A075160.P542619093354402288

`A020639(Δ[(2*n)²])-(1-A075158(n))`
-/

namespace A075160.P542619093354402288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (1 - A075158 n)

end

end A075160.P542619093354402288

/-! ## A075160.P2955313930497543513

`A000005(A051697(n))-(1-A075158(n))`
-/

namespace A075160.P2955313930497543513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051697 n).toNat - (1 - A075158 n)

end

end A075160.P2955313930497543513

/-!
# A075161: Position of A075165(n+1) in A014486.

The programs for A075161, there is no canonical definition to state claims against.
-/

/-! ## A075161.P9028623366452281177

`A075163(n+1)-1`
-/

namespace A075161.P9028623366452281177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075163 (n + 1) - 1

end

end A075161.P9028623366452281177

/-! ## A075161.P8402397209680403857

`A134824(n+2)+A075163(n+1)`
-/

namespace A075161.P8402397209680403857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A075163 (n + 1)

end

end A075161.P8402397209680403857

/-! ## A075161.P4796036909912739101

`A280193(2*n+1)+A075163(n+1)`
-/

namespace A075161.P4796036909912739101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A075163 (n + 1)

end

end A075161.P4796036909912739101

/-! ## A075161.P3380741392839281876

`A309873(A016825(n))+A075163(n+1)`
-/

namespace A075161.P3380741392839281876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A016825 n).toNat + A075163 (n + 1)

end

end A075161.P3380741392839281876

/-! ## A075161.P13305304729714807007

`A307445(A051698(n))+A075163(n+1)`
-/

namespace A075161.P13305304729714807007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A051698 n).toNat + A075163 (n + 1)

end

end A075161.P13305304729714807007

/-! ## A075161.P17102753796925940391

`A105523(A328479(2*n+1))+A075163(n+1)`
-/

namespace A075161.P17102753796925940391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (A328479 (2 * n + 1)).toNat + A075163 (n + 1)

end

end A075161.P17102753796925940391

/-! ## A075161.P11603950776287390814

`A087960(A070552(n+1))+A075163(n+1)`
-/

namespace A075161.P11603950776287390814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A070552 (n + 1)).toNat + A075163 (n + 1)

end

end A075161.P11603950776287390814

/-! ## A075161.P8882931753117853840

`(A075163(n+1)+A014138(n))%A014137(n)`
-/

namespace A075161.P8882931753117853840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075163 (n + 1) + A014138 n) (A014137 n)

end

end A075161.P8882931753117853840

/-! ## A075161.P11707715711041295347

`A115140(A007318(∑[n]))+A075163(n+1)`
-/

namespace A075161.P11707715711041295347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A075163 (n + 1)

end

end A075161.P11707715711041295347

/-!
# A075162: Position of A014486(n) in A075165, minus one.

The programs for A075162, there is no canonical definition to state claims against.
-/

/-! ## A075162.P16761098945168916461

`A075164(n+1)-1`
-/

namespace A075162.P16761098945168916461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075164 (n + 1) - 1

end

end A075162.P16761098945168916461

/-! ## A075162.P10210090820574238880

`A134824(n+2)+A075164(n+1)`
-/

namespace A075162.P10210090820574238880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A075164 (n + 1)

end

end A075162.P10210090820574238880

/-! ## A075162.P8074569818365983094

`A153881(n+2)+A075164(n+1)`
-/

namespace A075162.P8074569818365983094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A075164 (n + 1)

end

end A075162.P8074569818365983094

/-! ## A075162.P4454918906314725825

`A280193(or(1, n))+A075164(n+1)`
-/

namespace A075162.P4454918906314725825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (Nat.lor 1 n) + A075164 (n + 1)

end

end A075162.P4454918906314725825

/-! ## A075162.P12483460929021566715

`A280193(2*n+1)+A075164(n+1)`
-/

namespace A075162.P12483460929021566715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A075164 (n + 1)

end

end A075162.P12483460929021566715

/-! ## A075162.P8491018766266921374

`A108086(gcd(n, n+1))+A075164(n+1)`
-/

namespace A075162.P8491018766266921374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 (Nat.gcd n (n + 1)) + A075164 (n + 1)

end

end A075162.P8491018766266921374

/-! ## A075162.P17483732792478187039

`abs(A075164(n+1)+-1%p?[A056847(n)])`
-/

namespace A075162.P17483732792478187039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075164 (n + 1) + Int.tmod (-1) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))|

end

end A075162.P17483732792478187039

/-! ## A075162.P5608309968195309873

`A087960(A070552(n+1))+A075164(n+1)`
-/

namespace A075162.P5608309968195309873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A070552 (n + 1)).toNat + A075164 (n + 1)

end

end A075162.P5608309968195309873

/-! ## A075162.P15548949797496257625

`A265643(A020639(2*(n+1)))+A075164(n+1)`
-/

namespace A075162.P15548949797496257625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265643 (A020639 (2 * (n + 1))).toNat + A075164 (n + 1)

end

end A075162.P15548949797496257625

/-!
# A075163: Position of A075165(n) in A014486 plus one.

The programs for A075163, there is no canonical definition to state claims against.
-/

/-! ## A075163.P18294591219991490602

`A106453(A106442(n+1))`
-/

namespace A075163.P18294591219991490602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106453 (A106442 (n + 1)).toNat

end

end A075163.P18294591219991490602

/-! ## A075163.P12943300224580800886

`A075161(n)+1`
-/

namespace A075163.P12943300224580800886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075161 n + 1

end

end A075163.P12943300224580800886

/-! ## A075163.P546473078799637698

`1-A057428(n)*A075161(n)`
-/

namespace A075163.P546473078799637698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A075161 n

end

end A075163.P546473078799637698

/-! ## A075163.P12311395942253414602

`A000124(n)-(∑[n]-A075161(n))`
-/

namespace A075163.P12311395942253414602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A075161 n)

end

end A075163.P12311395942253414602

/-! ## A075163.P11018456869442539519

`A065033(2*n)-(A004273(n)-n-A075161(n))`
-/

namespace A075163.P11018456869442539519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - (A004273 n - (n : ℤ) - A075161 n)

end

end A075163.P11018456869442539519

/-! ## A075163.P16165203555084316524

`A014137(n)-(A014138(n)-A075161(n))`
-/

namespace A075163.P16165203555084316524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n - (A014138 n - A075161 n)

end

end A075163.P16165203555084316524

/-! ## A075163.P12127167887505509110

`2-(A007318(A000217(n))-A075161(n))`
-/

namespace A075163.P12127167887505509110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (A000217 n).toNat - A075161 n)

end

end A075163.P12127167887505509110

/-!
# A075164: Position of A014486(n-1) in A075165.

The programs for A075164, there is no canonical definition to state claims against.
-/

/-! ## A075164.P14105672439240233669

`A106443(A106454(n+1))`
-/

namespace A075164.P14105672439240233669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106443 (A106454 (n + 1)).toNat

end

end A075164.P14105672439240233669

/-! ## A075164.P7047748615744520457

`A075162(n)+1`
-/

namespace A075164.P7047748615744520457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075162 n + 1

end

end A075164.P7047748615744520457

/-! ## A075164.P4536935356736879601

`A008619(2*A075162(n))`
-/

namespace A075164.P4536935356736879601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A075162 n).toNat

end

end A075164.P4536935356736879601

/-! ## A075164.P16685474803472499629

`A028242(2*A075162(n))`
-/

namespace A075164.P16685474803472499629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A075162 n).toNat

end

end A075164.P16685474803472499629

/-! ## A075164.P2564940307835628545

`A008620(3*A075162(n))`
-/

namespace A075164.P2564940307835628545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A075162 n).toNat

end

end A075164.P2564940307835628545

/-!
# A075165: Sequence A075166 interpreted as binary numbers and converted to decimal.

The programs for A075165, there is no canonical definition to state claims against.
-/

/-! ## A075165.P1836234893395100268

`A106455(A106442(n+1))`
-/

namespace A075165.P1836234893395100268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106455 (A106442 (n + 1)).toNat

end

end A075165.P1836234893395100268

/-! ## A075165.P15795466612673736234

`A014486(A075161(n))`
-/

namespace A075165.P15795466612673736234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A075161 n).toNat

end

end A075165.P15795466612673736234

/-! ## A075165.P13801976553282783768

`A106455(A091202(n+1))`
-/

namespace A075165.P13801976553282783768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106455 (A091202 (n + 1)).toNat

end

end A075165.P13801976553282783768

/-! ## A075165.P10974397010684097320

`A106455(A106444(n+1))`
-/

namespace A075165.P10974397010684097320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106455 (A106444 (n + 1)).toNat

end

end A075165.P10974397010684097320

/-! ## A075165.P7459104370920495021

`A014486(A075163(n+1)-1)`
-/

namespace A075165.P7459104370920495021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A075163 (n + 1) - 1).toNat

end

end A075165.P7459104370920495021

/-!
# A075166: Natural numbers mapped to Dyck path encodings of the rooted plane trees obtained by recursing on the exponents of the prime factorization of n.

The programs for A075166, there is no canonical definition to state claims against.
-/

/-! ## A075166.P12065592433641101739

`A007088(A075165(n+1))`
-/

namespace A075166.P12065592433641101739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A075165 (n + 1)).toNat

end

end A075166.P12065592433641101739

/-! ## A075166.P1939386344266351760

`A106456(A106442(n+1))`
-/

namespace A075166.P1939386344266351760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106456 (A106442 (n + 1)).toNat

end

end A075166.P1939386344266351760

/-! ## A075166.P2182036447805437026

`A063171(A075161(n))`
-/

namespace A075166.P2182036447805437026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A075161 n).toNat

end

end A075166.P2182036447805437026

/-! ## A075166.P7604043488655018141

`A063171(A075163(n+1)-1)`
-/

namespace A075166.P7604043488655018141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A075163 (n + 1) - 1).toNat

end

end A075166.P7604043488655018141

/-! ## A075166.P12605168193403495855

`A063171(A280193(2*n+1)+A075163(n+1))`
-/

namespace A075166.P12605168193403495855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A280193 (2 * n + 1) + A075163 (n + 1)).toNat

end

end A075166.P12605168193403495855

/-!
# A075167: Number of edges in each rooted plane tree produced with the unranking algorithm presented in A075166, which is based on prime factorization.

The programs for A075167, there is no canonical definition to state claims against.
-/

/-! ## A075167.P14986989617296148019

`a(A071178(n+1)-1)+A061395(n+1)-A061395(A051119(n+1))+A253783(A051119(n+1))` with `a(0)=0`
-/

namespace A075167.P14986989617296148019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A071178 (n + 1) - 1).toNat + (A061395 (n + 1) - A061395 (A051119 (n + 1)).toNat) + A253783 (A051119 (n + 1)).toNat

end

end A075167.P14986989617296148019

/-! ## A075167.P5988721520711959703

`A106457(A106442(n+1))`
-/

namespace A075167.P5988721520711959703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106457 (A106442 (n + 1)).toNat

end

end A075167.P5988721520711959703

/-! ## A075167.P8468184221925325611

`A000120(A075165(n+1))`
-/

namespace A075167.P8468184221925325611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A075165 (n + 1)).toNat

end

end A075167.P8468184221925325611

/-! ## A075167.P4904708356888079868

`A029837(1+A075165(n+1))/2`
-/

namespace A075167.P4904708356888079868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029837 (1 + A075165 (n + 1)).toNat : ℚ) / 2

end

end A075167.P4904708356888079868

/-! ## A075167.P344003753362058285

`A106457(A091202(n+1))`
-/

namespace A075167.P344003753362058285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106457 (A091202 (n + 1)).toNat

end

end A075167.P344003753362058285

/-!
# A075168: Position of A075170(n) in A014486.

The programs for A075168, there is no canonical definition to state claims against.
-/

/-! ## A075168.P12754631940287231018

`A080300(A075170(n))`
-/

namespace A075168.P12754631940287231018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A075170 n).toNat

end

end A075168.P12754631940287231018

/-! ## A075168.P1331798246341792467

`A215406(A075170(n)+1)`
-/

namespace A075168.P1331798246341792467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215406 (A075170 n + 1).toNat

end

end A075168.P1331798246341792467

/-! ## A075168.P8770122486344897664

`A215406(2*A075170(n))`
-/

namespace A075168.P8770122486344897664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215406 (2 * A075170 n).toNat

end

end A075168.P8770122486344897664

/-! ## A075168.P2951261498295170479

`A215406(lcm(2, A075170(n)))`
-/

namespace A075168.P2951261498295170479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215406 (Int.lcm 2 (A075170 n))

end

end A075168.P2951261498295170479

/-! ## A075168.P6129315664716943996

`A215406(or(1, A075170(n)))`
-/

namespace A075168.P6129315664716943996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215406 (Int.lor 1 (A075170 n)).toNat

end

end A075168.P6129315664716943996

/-! ## A075168.P311374226720326356

`A215406(xor(1, A075170(n)))`
-/

namespace A075168.P311374226720326356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215406 (Int.xor 1 (A075170 n)).toNat

end

end A075168.P311374226720326356

/-! ## A075168.P8031179912173989855

`A215406(A075170(A215406(A014486(n))))`
-/

namespace A075168.P8031179912173989855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215406 (A075170 (A215406 (A014486 n).toNat).toNat).toNat

end

end A075168.P8031179912173989855

/-!
# A075169: Position of A014486(n) in A075170.

The programs for A075169, there is no canonical definition to state claims against.
-/

/-! ## A075169.P13428950371483530495

`A075158(cosh(A015161(n))*A075162(n))`
-/

namespace A075169.P13428950371483530495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075158 (SequenceMachineLib.roundAway (Real.cosh (A015161 n : ℝ) * (A075162 n : ℝ))).toNat

end

end A075169.P13428950371483530495

/-! ## A075169.P17775251372254580097

`A075158(A075162(n)/cosh(A015161(n)))`
-/

namespace A075169.P17775251372254580097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075158 (SequenceMachineLib.roundAway ((A075162 n : ℝ) / Real.cosh (A015161 n : ℝ))).toNat

end

end A075169.P17775251372254580097

/-! ## A075169.P9739372546388517792

`A075158((A015161(n)+1)*A075162(n))`
-/

namespace A075169.P9739372546388517792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075158 ((A015161 n + 1) * A075162 n).toNat

end

end A075169.P9739372546388517792

/-!
# A075170: Sequence A075171 interpreted as binary numbers and converted to decimal.

The programs for A075170, there is no canonical definition to state claims against.
-/

/-! ## A075170.P1895772067359377921

`A014486(A075168(n))`
-/

namespace A075170.P1895772067359377921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A075168 n).toNat

end

end A075170.P1895772067359377921

/-! ## A075170.P5824905735249524482

`abs(A057520(A075168(n))*A280560(n))`
-/

namespace A075170.P5824905735249524482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057520 (A075168 n).toNat * A280560 n|

end

end A075170.P5824905735249524482

/-! ## A075170.P9385172557174948672

`A020639(2*(n+1))*A057520(A075168(n))`
-/

namespace A075170.P9385172557174948672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) * A057520 (A075168 n).toNat

end

end A075170.P9385172557174948672

/-! ## A075170.P15076033262862138108

`A000040(gcd(n, n+1))*A057520(A075168(n))`
-/

namespace A075170.P15076033262862138108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.gcd n (n + 1)) * A057520 (A075168 n).toNat

end

end A075170.P15076033262862138108

/-! ## A075170.P12089256594889831048

`A000032(floor(1/(n+1)))*A057520(A075168(n))`
-/

namespace A075170.P12089256594889831048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat * A057520 (A075168 n).toNat

end

end A075170.P12089256594889831048

/-! ## A075170.P8274288446559538667

`A014963(A001316(n))*A057520(A075168(n))`
-/

namespace A075170.P8274288446559538667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A057520 (A075168 n).toNat

end

end A075170.P8274288446559538667

/-! ## A075170.P17658316925272076273

`A001222(2*A006530(n+1))*A057520(A075168(n))`
-/

namespace A075170.P17658316925272076273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A006530 (n + 1)).toNat * A057520 (A075168 n).toNat

end

end A075170.P17658316925272076273

/-! ## A075170.P4253919833830397522

`A001222(37*A000040(n+1))*A057520(A075168(n))`
-/

namespace A075170.P4253919833830397522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (37 * A000040 (n + 1)).toNat * A057520 (A075168 n).toNat

end

end A075170.P4253919833830397522

/-! ## A075170.P4844349551196078698

`ratio[A000079(n)]*A057520(A075168(n))`
-/

namespace A075170.P4844349551196078698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A057520 (A075168 n).toNat : ℚ)

end

end A075170.P4844349551196078698

/-! ## A075170.P5440474209055495223

`A000122(n²)*A057520(A075168(n))`
-/

namespace A075170.P5440474209055495223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A057520 (A075168 n).toNat

end

end A075170.P5440474209055495223

/-!
# A075171: Nonnegative integers mapped to Dyck path encodings of the rooted plane trees obtained by recursing on the run lengths of the binary expansion of n.

The programs for A075171, there is no canonical definition to state claims against.
-/

/-! ## A075171.P12218706387722521694

`A063171(A075168(n))`
-/

namespace A075171.P12218706387722521694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A075168 n).toNat

end

end A075171.P12218706387722521694

/-! ## A075171.P1378362642570406942

`A007088(A075170(n))`
-/

namespace A075171.P1378362642570406942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A075170 n).toNat

end

end A075171.P1378362642570406942

/-! ## A075171.P14388166399025726476

`A099820(A075170(n)/2)`
-/

namespace A075171.P14388166399025726476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (SequenceMachineLib.roundAway ((A075170 n : ℚ) / 2)).toNat

end

end A075171.P14388166399025726476

/-! ## A075171.P6464550998383821246

`A185544(2*A075170(n))`
-/

namespace A075171.P6464550998383821246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A075170 n).toNat

end

end A075171.P6464550998383821246

/-! ## A075171.P2481957133173112352

`A185544(A075170(n)+A075170(n))`
-/

namespace A075171.P2481957133173112352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A075170 n + A075170 n).toNat

end

end A075171.P2481957133173112352

/-!
# A075172: Number of edges in each rooted plane tree produced with the binary run length unranking algorithm presented in A075171.

The programs for A075172, there is no canonical definition to state claims against.
-/

/-! ## A075172.P181026964902791586

`∑{digits}[A075171(n), #]`
-/

namespace A075172.P181026964902791586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075171 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A075172.P181026964902791586

/-! ## A075172.P13295035137525330521

`A196050(A382255(n))`
-/

namespace A075172.P13295035137525330521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A382255 n).toNat

end

end A075172.P13295035137525330521

/-! ## A075172.P161506779610256219

`A072643(A075168(n))`
-/

namespace A075172.P161506779610256219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A075168 n).toNat

end

end A075172.P161506779610256219

/-! ## A075172.P7562016432387380470

`∑{e}[A163755(n), A225634(#)]`
-/

namespace A075172.P7562016432387380470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A225634 (Nat.factorization (f1 n).natAbs p)

end

end A075172.P7562016432387380470

/-! ## A075172.P9830781281224306310

`∑{e}[A163755(n), A029837(#)+1]`
-/

namespace A075172.P9830781281224306310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A029837 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A075172.P9830781281224306310

/-! ## A075172.P2942758286112813973

`∑{e}[A163755(n), A029837(2*#)]`
-/

namespace A075172.P2942758286112813973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A029837 (2 * Nat.factorization (f1 n).natAbs p)

end

end A075172.P2942758286112813973

/-! ## A075172.P13142540506375041147

`A000120(A075170(n)/2)`
-/

namespace A075172.P13142540506375041147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A075170 n : ℚ) / 2)).toNat

end

end A075172.P13142540506375041147

/-! ## A075172.P7193412996718699715

`A000120(A075170(n))`
-/

namespace A075172.P7193412996718699715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A075170 n).toNat

end

end A075172.P7193412996718699715

/-!
# A075173: Prime factorization of n encoded by interleaving successive prime exponents in unary to bit-positions given by columns of A075300.

The programs for A075173, there is no canonical definition to state claims against.
-/

/-! ## A075173.P13067956165917375233

`A059884((n+1)²/∏{p}[n+1, #])`
-/

namespace A075173.P13067956165917375233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059884 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A075173.P13067956165917375233

/-! ## A075173.P6952402295457443472

`A059884(xor(n, (∑{d}[2^val(n+1, 2), #²]+1)/2))`
-/

namespace A075173.P6952402295457443472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059884 (Int.xor (n : ℤ) (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d ^ 2 + 1 : ℕ) : ℚ) / 2))).toNat

end

end A075173.P6952402295457443472

/-! ## A075173.P13181490893748554927

`A334859((n+1)²/∏{p}[n+1, #])-floor(log(cosh(∑{e}[n+1, #])))`
-/

namespace A075173.P13181490893748554927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334859 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat - ⌊Real.log (Real.cosh ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ))⌋

end

end A075173.P13181490893748554927

/-!
# A075174: Inverse function of N -> N injection A075173.

The programs for A075174, there is no canonical definition to state claims against.
-/

/-! ## A075174.P3578877182669737775

`A075176(lt[A108617(3*n+2), A075254(3*n+2)])`
-/

namespace A075174.P3578877182669737775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075176 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075174.P3578877182669737775

/-! ## A075174.P16093426465538145176

`A075176(n)%A139491(n+1)`
-/

namespace A075174.P16093426465538145176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075176 n) (A139491 (n + 1))

end

end A075174.P16093426465538145176

/-! ## A075174.P8717404004798545596

`A172444(A123125(n))+A075176(n)`
-/

namespace A075174.P8717404004798545596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172444 (A123125 n).toNat + A075176 n

end

end A075174.P8717404004798545596

/-! ## A075174.P13118656325190145297

`A249344(A215004(n))+A075176(n)`
-/

namespace A075174.P13118656325190145297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249344 (A215004 n).toNat + A075176 n

end

end A075174.P13118656325190145297

/-! ## A075174.P16317993611269192337

`A332833(A245794(n))+A075176(n)`
-/

namespace A075174.P16317993611269192337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332833 (A245794 n).toNat + A075176 n

end

end A075174.P16317993611269192337

/-!
# A075177: Indices of additive primes, see A046704.

The programs for A075177, the canonical program `A075177.P9409297406548734582` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075177 has offset 1).

The definition of A075177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4086 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075177.P9409297406548734582

`eq[2, A000005(A007605(n+1))]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A075177

/-- `eq[2, A000005(A007605(n+1))]+1` -/
def P9409297406548734582.Spec : Prop :=
  ∀ n, (P9409297406548734582.a n : ℤ) = A075177 (n + 1)

theorem P9409297406548734582.correct : P9409297406548734582.Spec := by
  intro n
  simp only [A075177, Nat.add_sub_cancel]

end A075177

/-! ## A075177.P18227868314819049948

`eq[1, A001222(∑{digits}[A000040(n+1), #])]+1`
-/

namespace A075177.P18227868314819049948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A075177.P18227868314819049948

namespace A075177

/-- `eq[1, A001222(∑{digits}[A000040(n+1), #])]+1` -/
def P18227868314819049948.Spec : Prop :=
  ∀ n, (P18227868314819049948.a n : ℤ) = A075177 (n + 1)

end A075177

/-! ## A075177.P5700088562596020738

`eq[2, A000005(∑{digits}[A000040(n+1), #])]+1`
-/

namespace A075177.P5700088562596020738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A075177.P5700088562596020738

namespace A075177

/-- `eq[2, A000005(∑{digits}[A000040(n+1), #])]+1` -/
def P5700088562596020738.Spec : Prop :=
  ∀ n, (P5700088562596020738.a n : ℤ) = A075177 (n + 1)

end A075177

/-! ## A075177.P10861320771661803872

`record[(n+1)/A000010(A322382(A007605(n+1))²)]`
-/

namespace A075177.P10861320771661803872
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (A322382 (A007605 (n + 1)).toNat ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075177.P10861320771661803872

namespace A075177

/-- `record[(n+1)/A000010(A322382(A007605(n+1))²)]` -/
def P10861320771661803872.Spec : Prop :=
  ∀ n, P10861320771661803872.a n = (A075177 (n + 1) : ℚ)

end A075177

/-! ## A075177.P14538536249306811539

`A000720(A046704(n+1))`
-/

namespace A075177.P14538536249306811539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A046704 (n + 1)).toNat

end

end A075177.P14538536249306811539

namespace A075177

/-- `A000720(A046704(n+1))` -/
def P14538536249306811539.Spec : Prop :=
  ∀ n, P14538536249306811539.a n = A075177 (n + 1)

end A075177

/-! ## A075177.P6456906509846011832

`A061395(p?[A046704(n+1)])`
-/

namespace A075177.P6456906509846011832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075177.P6456906509846011832

namespace A075177

/-- `A061395(p?[A046704(n+1)])` -/
def P6456906509846011832.Spec : Prop :=
  ∀ n, P6456906509846011832.a n = A075177 (n + 1)

end A075177

/-! ## A075177.P7053717988610121616

`A000720(p?[A028834(n+1)])`
-/

namespace A075177.P7053717988610121616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075177.P7053717988610121616

namespace A075177

/-- `A000720(p?[A028834(n+1)])` -/
def P7053717988610121616.Spec : Prop :=
  ∀ n, P7053717988610121616.a n = A075177 (n + 1)

end A075177

/-! ## A075177.P15645314295114480105

`A061395(2*A046704(n+1))`
-/

namespace A075177.P15645314295114480105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A046704 (n + 1)).toNat

end

end A075177.P15645314295114480105

namespace A075177

/-- `A061395(2*A046704(n+1))` -/
def P15645314295114480105.Spec : Prop :=
  ∀ n, P15645314295114480105.a n = A075177 (n + 1)

end A075177

/-! ## A075177.P9839892728975269400

`lt[A001222(A007605(n+1)), A264940(2*(n+2))]+1`
-/

namespace A075177.P9839892728975269400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007605 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A075177.P9839892728975269400

namespace A075177

/-- `lt[A001222(A007605(n+1)), A264940(2*(n+2))]+1` -/
def P9839892728975269400.Spec : Prop :=
  ∀ n, (P9839892728975269400.a n : ℤ) = A075177 (n + 1)

end A075177

/-! ## A075177.P11612853846257821115

`eq[2, A306509(eq[1, A074206(n)])]`
-/

namespace A075177.P11612853846257821115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075177.P11612853846257821115

namespace A075177

/-- `eq[2, A306509(eq[1, A074206(n)])]` -/
def P11612853846257821115.Spec : Prop :=
  ∀ n, (P11612853846257821115.a n : ℤ) = A075177 (n + 1)

end A075177

/-! ## A075177.P18199678626751854905

`eq[2, A306509(eq[1, A078898(n)])]`
-/

namespace A075177.P18199678626751854905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075177.P18199678626751854905

namespace A075177

/-- `eq[2, A306509(eq[1, A078898(n)])]` -/
def P18199678626751854905.Spec : Prop :=
  ∀ n, (P18199678626751854905.a n : ℤ) = A075177 (n + 1)

end A075177

/-! ## A075177.P7565591556039674528

`A324861(A046704(2*n+1-n))`
-/

namespace A075177.P7565591556039674528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324861 (A046704 (2 * n + 1 - n)).toNat

end

end A075177.P7565591556039674528

namespace A075177

/-- `A324861(A046704(2*n+1-n))` -/
def P7565591556039674528.Spec : Prop :=
  ∀ n, P7565591556039674528.a n = A075177 (n + 1)

end A075177

/-! ## A075177.P5964143433733350694

`eq[2, A000005(A007953(A000040(n+1)))]+1`
-/

namespace A075177.P5964143433733350694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007953 (A000040 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A075177.P5964143433733350694

namespace A075177

/-- `eq[2, A000005(A007953(A000040(n+1)))]+1` -/
def P5964143433733350694.Spec : Prop :=
  ∀ n, (P5964143433733350694.a n : ℤ) = A075177 (n + 1)

end A075177

/-!
# A075178: Denominators of expansion of 1/x+1/log(1-x).

The programs for A075178, there is no canonical definition to state claims against.
-/

/-! ## A075178.P12400913048344332443

`2*A075179(n)`
-/

namespace A075178.P12400913048344332443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075179 n

end

end A075178.P12400913048344332443

/-! ## A075178.P16546106547522933897

`(n+1)*A006233(n+1)`
-/

namespace A075178.P16546106547522933897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006233 (n + 1)

end

end A075178.P16546106547522933897

/-! ## A075178.P9754431093325393771

`lcm(A075179(n), A117973(n))`
-/

namespace A075178.P9754431093325393771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A075179 n) (A117973 n)

end

end A075178.P9754431093325393771

/-! ## A075178.P11864832113121102976

`A075179(n-char[2])+A075179(n)`
-/

namespace A075178.P11864832113121102976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075179 (n - (if ∃ j, f1 j = n then 1 else 0)) + A075179 n

end

end A075178.P11864832113121102976

/-! ## A075178.P4136019542816120206

`A006233(A008619(2*n))*A008619(2*n)`
-/

namespace A075178.P4136019542816120206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006233 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A075178.P4136019542816120206

/-!
# A075179: One half of A075178.

The programs for A075179, there is no canonical definition to state claims against.
-/

/-! ## A075179.P5097198073962685255

`(n+1)/2*A006233(n+1)`
-/

namespace A075179.P5097198073962685255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A006233 (n + 1) : ℚ)

end

end A075179.P5097198073962685255

/-! ## A075179.P8088065806223814049

`A075178(n)/2`
-/

namespace A075179.P8088065806223814049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075178 n : ℚ) / 2

end

end A075179.P8088065806223814049

/-! ## A075179.P16796988285182734917

`2^A008683(A020483(n))*A075178(n)`
-/

namespace A075179.P16796988285182734917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A075178 n : ℚ)

end

end A075179.P16796988285182734917

/-! ## A075179.P13579457512897901510

`2^A008683(A151800(n))*A075178(n)`
-/

namespace A075179.P13579457512897901510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A151800 n).toNat : ℤ) * (A075178 n : ℚ)

end

end A075179.P13579457512897901510

/-! ## A075179.P955792248782069124

`2^A008683(A046028(n+1))*A075178(n)`
-/

namespace A075179.P955792248782069124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A046028 (n + 1)).toNat : ℤ) * (A075178 n : ℚ)

end

end A075179.P955792248782069124

/-!
# A075180: Denominators from e.g.f. 1/(1-exp(-x)) - 1/x.

The programs for A075180, there is no canonical definition to state claims against.
-/

/-! ## A075180.P9151747478529270750

`A185633(n+1)/A040001(n)`
-/

namespace A075180.P9151747478529270750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185633 (n + 1) : ℚ) / (A040001 n : ℚ)

end

end A075180.P9151747478529270750

/-! ## A075180.P15558655960880397721

`gcd(A185633(n+1), A266439(n))`
-/

namespace A075180.P15558655960880397721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185633 (n + 1)) (A266439 n)

end

end A075180.P15558655960880397721

/-! ## A075180.P2735545165555319039

`A000007(n)+A079612(n+1)/2`
-/

namespace A075180.P2735545165555319039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (A079612 (n + 1) : ℚ) / 2

end

end A075180.P2735545165555319039

/-! ## A075180.P10608192217368761228

`A079612(n+1)/A323157(2*n+1)`
-/

namespace A075180.P10608192217368761228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (n + 1) : ℚ) / (A323157 (2 * n + 1) : ℚ)

end

end A075180.P10608192217368761228

/-! ## A075180.P13760950522028102420

`A079612(n+1)/A324736(n²%(n+1))`
-/

namespace A075180.P13760950522028102420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (n + 1) : ℚ) / (A324736 (n ^ 2 % (n + 1)) : ℚ)

end

end A075180.P13760950522028102420

/-! ## A075180.P10451131750069154441

`A079612(n+1)/A162330(floor(1/(n+1))+1)`
-/

namespace A075180.P10451131750069154441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (n + 1) : ℚ) / (A162330 (⌊1 / (n + 1 : ℚ)⌋ + 1).toNat : ℚ)

end

end A075180.P10451131750069154441

/-! ## A075180.P16125766652924294335

`A079612(n+1)/(A001221(A001316(n))+1)`
-/

namespace A075180.P16125766652924294335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (n + 1) : ℚ) / (A001221 (A001316 n).toNat + 1 : ℚ)

end

end A075180.P16125766652924294335

/-! ## A075180.P14951744311177228227

`A010873(A008574(n))+A079612(n+1)/2`
-/

namespace A075180.P14951744311177228227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010873 (A008574 n).toNat : ℚ) + (A079612 (n + 1) : ℚ) / 2

end

end A075180.P14951744311177228227

/-! ## A075180.P14944204110125997697

`A079612(n+1)/(A001221(A008578(n+1))+1)`
-/

namespace A075180.P14944204110125997697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (n + 1) : ℚ) / (A001221 (A008578 (n + 1)).toNat + 1 : ℚ)

end

end A075180.P14944204110125997697

/-! ## A075180.P10426011809834292877

`A135481(A073659(n+1))+A079612(n+1)/2`
-/

namespace A075180.P10426011809834292877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135481 (A073659 (n + 1)).toNat : ℚ) + (A079612 (n + 1) : ℚ) / 2

end

end A075180.P10426011809834292877

/-! ## A075180.P10908407544873463679

`A079612(n+1)/A000034(lt[n, A079612(n+1)])`
-/

namespace A075180.P10908407544873463679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (n + 1) : ℚ) / (A000034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ)

end

end A075180.P10908407544873463679

/-! ## A075180.P16376213847763049636

`A027642(n+1)*A193267(n+1)`
-/

namespace A075180.P16376213847763049636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (n + 1) * A193267 (n + 1)

end

end A075180.P16376213847763049636

/-! ## A075180.P14190662655162355295

`A164869(n+1)/A300330(n+1)`
-/

namespace A075180.P14190662655162355295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164869 (n + 1) : ℚ) / (A300330 (n + 1) : ℚ)

end

end A075180.P14190662655162355295

/-! ## A075180.P17110411879139958746

`A185633(n+1)-(n+1)%A046523(A008578(n+1))`
-/

namespace A075180.P17110411879139958746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185633 (n + 1) - Int.tmod (n + 1 : ℤ) (A046523 (A008578 (n + 1)).toNat)

end

end A075180.P17110411879139958746

/-! ## A075180.P10413276246825488918

`A097331(A004277(n))+A079612(n+1)/2`
-/

namespace A075180.P10413276246825488918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097331 (A004277 n).toNat : ℚ) + (A079612 (n + 1) : ℚ) / 2

end

end A075180.P10413276246825488918

/-! ## A075180.P12844543909637235358

`A008683(A016754(n))+A079612(n+1)/2`
-/

namespace A075180.P12844543909637235358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A016754 n).toNat : ℚ) + (A079612 (n + 1) : ℚ) / 2

end

end A075180.P12844543909637235358

/-! ## A075180.P10537254132970272708

`A079612(n+1)/(1-A342881(∑[n])+n)`
-/

namespace A075180.P10537254132970272708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (n + 1) : ℚ) / (1 - A342881 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℚ)

end

end A075180.P10537254132970272708

/-!
# A075181: Coefficients of certain polynomials (rising powers).

The programs for A075181, there is no canonical definition to state claims against.
-/

/-! ## A075181.P5664548391740565866

`A004736(n+1)*A188881(A038722(n+1))`
-/

namespace A075181.P5664548391740565866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A188881 (A038722 (n + 1)).toNat

end

end A075181.P5664548391740565866

/-! ## A075181.P1465259079983266293

`A008276(n+1)/A001263(n+1)*A066667(n)`
-/

namespace A075181.P1465259079983266293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008276 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A066667 n : ℚ)

end

end A075181.P1465259079983266293

/-! ## A075181.P6847825104752967977

`A094638(n+1)/A001263(n+1)*A105278(n+1)`
-/

namespace A075181.P6847825104752967977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094638 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A105278 (n + 1) : ℚ)

end

end A075181.P6847825104752967977

/-! ## A075181.P4010188439000549532

`abs(A048594(A038722(n+1)))`
-/

namespace A075181.P4010188439000549532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048594 (A038722 (n + 1)).toNat|

end

end A075181.P4010188439000549532

/-! ## A075181.P13095433492356531898

`lcm(A048594(A038722(n+1)), A083952(n))`
-/

namespace A075181.P13095433492356531898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048594 (A038722 (n + 1)).toNat) (A083952 n)

end

end A075181.P13095433492356531898

/-! ## A075181.P13724101366680216799

`A225479(A014132(n+1)+A061579(n)-n)`
-/

namespace A075181.P13724101366680216799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225479 (A014132 (n + 1) + (A061579 n - (n : ℤ))).toNat

end

end A075181.P13724101366680216799

/-!
# A075182: Greatest common divisors of rows of triangle A075181 and of (unsigned) triangle A048594.

The programs for A075182, there is no canonical definition to state claims against.
-/

/-! ## A075182.P6594106263008185930

`A085056(A168508(n+1)+A001222(2^(n+1)))`
-/

namespace A075182.P6594106263008185930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085056 (A168508 (n + 1) + A001222 (2 ^ (n + 1))).toNat

end

end A075182.P6594106263008185930

/-! ## A075182.P1981934458151556726

`A085056(A286852(n)+A187829(n+1))`
-/

namespace A075182.P1981934458151556726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085056 (A286852 n + A187829 (n + 1)).toNat

end

end A075182.P1981934458151556726

/-! ## A075182.P12653649383795513415

`∏[A275870(Δ[A270804(n)])]`
-/

namespace A075182.P12653649383795513415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275870 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A075182.P12653649383795513415

/-! ## A075182.P3330191415517708703

`∏[A028408(A006519(n+2))]`
-/

namespace A075182.P3330191415517708703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028408 (A006519 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A075182.P3330191415517708703

/-! ## A075182.P10763551247441668127

`A085056(A048804(A246466(n))+n+1)`
-/

namespace A075182.P10763551247441668127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085056 (A048804 (A246466 n).toNat + (n + 1 : ℤ)).toNat

end

end A075182.P10763551247441668127

/-!
# A075183: One half of third column of triangle A075181.

The programs for A075183, there is no canonical definition to state claims against.
-/

/-! ## A075183.P10253730956603218230

`2*A061206(n+1)-A136659(n)`
-/

namespace A075183.P10253730956603218230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061206 (n + 1) - A136659 n

end

end A075183.P10253730956603218230

/-! ## A075183.P10027920736450553971

`A075181(A167614(n+1))/2`
-/

namespace A075183.P10027920736450553971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075181 (A167614 (n + 1)).toNat : ℚ) / 2

end

end A075183.P10027920736450553971

/-! ## A075183.P14499544065728733182

`and(2, A180274(n+1))^-1*A075181(A167614(n+1))`
-/

namespace A075183.P14499544065728733182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A180274 (n + 1)) : ℚ) ^ (-1 : ℤ) * (A075181 (A167614 (n + 1)).toNat : ℚ)

end

end A075183.P14499544065728733182

/-! ## A075183.P4457363368904538935

`A048594(∑[n+3]+1)/2`
-/

namespace A075183.P4457363368904538935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048594 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A075183.P4457363368904538935

/-! ## A075183.P11491955806614183134

`A185421(A034856(n+2))/2`
-/

namespace A075183.P11491955806614183134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185421 (A034856 (n + 2)).toNat : ℚ) / 2

end

end A075183.P11491955806614183134

/-!
# A075184: One half of fourth column of triangle A075181.

The programs for A075184, there is no canonical definition to state claims against.
-/

/-! ## A075184.P8666242565305146940

`A001303(n+1)/2*(n+1)!`
-/

namespace A075184.P8666242565305146940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001303 (n + 1) : ℚ) / 2 * (Nat.factorial (n + 1) : ℚ)

end

end A075184.P8666242565305146940

/-! ## A075184.P7663991108509436039

`A000142(n+1)/2*A001303(n+1)`
-/

namespace A075184.P7663991108509436039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / 2 * (A001303 (n + 1) : ℚ)

end

end A075184.P7663991108509436039

/-! ## A075184.P935587053988757856

`A001806(n+4)/Δ[A090288(n)]`
-/

namespace A075184.P935587053988757856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001806 (n + 4) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A075184.P935587053988757856

/-!
# A075185: One-fourth of fifth column of triangle A075181.

The programs for A075185, there is no canonical definition to state claims against.
-/

/-! ## A075185.P14790614702278741380

`A075181(A167499(n+3))/4`
-/

namespace A075185.P14790614702278741380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075181 (A167499 (n + 3)).toNat : ℚ) / 4

end

end A075185.P14790614702278741380

/-! ## A075185.P18368103522118031173

`A048594(Δ[A023545(n+1)])/4`
-/

namespace A075185.P18368103522118031173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048594 (f1 (n + 1) - f1 n).toNat : ℚ) / 4

end

end A075185.P18368103522118031173

/-! ## A075185.P9786578903975306697

`A225479(A055999(n+3)+1)/4`
-/

namespace A075185.P9786578903975306697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225479 (A055999 (n + 3) + 1).toNat : ℚ) / 4

end

end A075185.P9786578903975306697

/-!
# A075188: Number of times that the numerator of a sum generated from the set 1, 1/2, 1/3,..., 1/n is prime.

The programs for A075188, there is no canonical definition to state claims against.
-/

/-! ## A075188.P14295780472019892063

`or(A002262(n+1), A178930(9*n))`
-/

namespace A075188.P14295780472019892063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (n + 1)) (A178930 (9 * n))

end

end A075188.P14295780472019892063

/-!
# A075190: Numbers k such that k^2 is an interprime = average of two successive primes.

The programs for A075190, there is no canonical definition to state claims against.
-/

/-! ## A075190.P8053677268716762264

`sqrt(A069495(n+1))`
-/

namespace A075190.P8053677268716762264
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069495 (n + 1) : ℝ)

end

end A075190.P8053677268716762264

/-! ## A075190.P10745641396046666358

`A000027(A069495(n+1)^(1/2))`
-/

namespace A075190.P10745641396046666358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A069495 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ))).toNat

end

end A075190.P10745641396046666358

/-! ## A075190.P6674651502219933237

`root(A069495(n+1), A020639(A020639(n+1)+n+1))`
-/

namespace A075190.P6674651502219933237
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A069495 (n + 1) : ℝ) ^ (1 / (A020639 (A020639 (n + 1) + (n + 1 : ℤ)).toNat : ℝ))

end

end A075190.P6674651502219933237

/-! ## A075190.P2388906131487400877

`ceil(sqrt(A225195(n+1)))`
-/

namespace A075190.P2388906131487400877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A225195 (n + 1) : ℝ)⌉

end

end A075190.P2388906131487400877

/-! ## A075190.P16055151951544807395

`round(sqrt(A225195(n+1)))%A001919(n+3)`
-/

namespace A075190.P16055151951544807395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A225195 (n + 1) : ℝ))) (A001919 (n + 3))

end

end A075190.P16055151951544807395

/-! ## A075190.P18221713648111120934

`lt[A056929(n+2)², 1]+2`
-/

namespace A075190.P18221713648111120934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056929 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A075190.P18221713648111120934

/-! ## A075190.P129192739738671050

`record[gcd(n+2, A056928(n+2))]`
-/

namespace A075190.P129192739738671050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A056928 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075190.P129192739738671050

/-! ## A075190.P14359835220888131431

`A166127(A076692(n+1))`
-/

namespace A075190.P14359835220888131431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166127 (A076692 (n + 1)).toNat

end

end A075190.P14359835220888131431

/-!
# A075191: Numbers k such that k^3 is an interprime = average of two successive primes.

The programs for A075191, there is no canonical definition to state claims against.
-/

/-! ## A075191.P11585846164452999856

`root(A234240(n+1), 3)`
-/

namespace A075191.P11585846164452999856
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234240 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A075191.P11585846164452999856

/-! ## A075191.P10475689451719648237

`round(root(A234240(n-(1-gcd(2, 2*n))), 3))`
-/

namespace A075191.P10475689451719648237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A234240 ((n : ℤ) - (1 - (Nat.gcd 2 (2 * n) : ℤ))).toNat : ℝ) ^ (1 / (3 : ℝ)))

end

end A075191.P10475689451719648237

/-! ## A075191.P12133691668960881562

`A234240(n+1)^3^A008683(A007918(n))`
-/

namespace A075191.P12133691668960881562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234240 (n + 1) : ℝ) ^ ((3 : ℚ) ^ (A008683 (A007918 n).toNat : ℤ) : ℝ)

end

end A075191.P12133691668960881562

/-! ## A075191.P3698011532780284298

`ceil(root(A242382(n+1), 3))`
-/

namespace A075191.P3698011532780284298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A242382 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A075191.P3698011532780284298

/-! ## A075191.P16868424588182742494

`round(root(A242382(n+1), 3))%A000045(n+7)`
-/

namespace A075191.P16868424588182742494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A242382 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A000045 (n + 7))

end

end A075191.P16868424588182742494

/-! ## A075191.P7490529274001365821

`round(root(A242382(n+1), 3))*A014963(6*(n+3))`
-/

namespace A075191.P7490529274001365821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A242382 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) * A014963 (6 * (n + 3))

end

end A075191.P7490529274001365821

/-! ## A075191.P10832680603191696408

`A007318(2-(-1)^n)*round(root(A242382(n+1), 3))`
-/

namespace A075191.P10832680603191696408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 - (-1) ^ n).toNat * SequenceMachineLib.roundAway ((A242382 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A075191.P10832680603191696408

/-!
# A075192: Numbers k such that k^4 is an interprime = average of two successive primes.

The programs for A075192, there is no canonical definition to state claims against.
-/

/-! ## A075192.P3716812433079691987

`sqrt(∩[A075190(n+1), n²])`
-/

namespace A075192.P3716812433079691987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A075192.P3716812433079691987

/-!
# A075193: Expansion of (1-2*x)/(1+x-x^2).

The programs for A075193, the canonical program `A075193.P1648427573293607510` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075193 has offset 0).

The definition of A075193 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1+x-x^2))` (program `A075193.P1648427573293607510`, by `A075193.P1648427573293607510.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A075193.P1648427573293607510

`ogf((1-2x)/(1+x-x^2))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075193

/-- `ogf((1-2x)/(1+x-x^2))` -/
def P1648427573293607510.Spec : Prop :=
  ∀ n, P1648427573293607510.a n = A075193 n

theorem P1648427573293607510.correct : P1648427573293607510.Spec := by
  intro n
  simp only [A075193]

end A075193

/-! ## A075193.P11751579898248661248

`a(n-2)-a(n-1)` with `a(0)=1, a(1)=-3`
-/

namespace A075193.P11751579898248661248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3] fun n a =>
  a (n - 2) - a (n - 1)

end

end A075193.P11751579898248661248

namespace A075193

/-- `a(n-2)-a(n-1)` -/
def P11751579898248661248.Spec : Prop :=
  ∀ n, P11751579898248661248.a n = A075193 n

end A075193

/-! ## A075193.P8442504413055791784

`Δ[A061084(n)]`
-/

namespace A075193.P8442504413055791784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075193.P8442504413055791784

namespace A075193

/-- `Δ[A061084(n)]` -/
def P8442504413055791784.Spec : Prop :=
  ∀ n, P8442504413055791784.a n = A075193 n

end A075193

/-! ## A075193.P3080638339179957082

`-A061084(n+2)`
-/

namespace A075193.P3080638339179957082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A061084 (n + 2)

end

end A075193.P3080638339179957082

namespace A075193

/-- `-A061084(n+2)` -/
def P3080638339179957082.Spec : Prop :=
  ∀ n, P3080638339179957082.a n = A075193 n

end A075193

/-! ## A075193.P4043340941900581261

`(-1)^n*A000032(n+1)`
-/

namespace A075193.P4043340941900581261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000032 (n + 1)

end

end A075193.P4043340941900581261

namespace A075193

/-- `(-1)^n*A000032(n+1)` -/
def P4043340941900581261.Spec : Prop :=
  ∀ n, P4043340941900581261.a n = A075193 n

end A075193

/-! ## A075193.P4522239037837899638

`(-1)^n*A000204(n+1)`
-/

namespace A075193.P4522239037837899638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000204 (n + 1)

end

end A075193.P4522239037837899638

namespace A075193

/-- `(-1)^n*A000204(n+1)` -/
def P4522239037837899638.Spec : Prop :=
  ∀ n, P4522239037837899638.a n = A075193 n

end A075193

/-! ## A075193.P18124176853210126605

`A061084(n+1)-A061084(n)`
-/

namespace A075193.P18124176853210126605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) - A061084 n

end

end A075193.P18124176853210126605

namespace A075193

/-- `A061084(n+1)-A061084(n)` -/
def P18124176853210126605.Spec : Prop :=
  ∀ n, P18124176853210126605.a n = A075193 n

end A075193

/-! ## A075193.P3850554965112554139

`A000032(n+1)*A033999(n)`
-/

namespace A075193.P3850554965112554139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A033999 n

end

end A075193.P3850554965112554139

namespace A075193

/-- `A000032(n+1)*A033999(n)` -/
def P3850554965112554139.Spec : Prop :=
  ∀ n, P3850554965112554139.a n = A075193 n

end A075193

/-! ## A075193.P482281393322953542

`A000204(n+1)*A033999(n)`
-/

namespace A075193.P482281393322953542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A033999 n

end

end A075193.P482281393322953542

namespace A075193

/-- `A000204(n+1)*A033999(n)` -/
def P482281393322953542.Spec : Prop :=
  ∀ n, P482281393322953542.a n = A075193 n

end A075193

/-! ## A075193.P432041246832056310

`Δ[Δ[A112469(n)]-A112469(n)]`
-/

namespace A075193.P432041246832056310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A112469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075193.P432041246832056310

namespace A075193

/-- `Δ[Δ[A112469(n)]-A112469(n)]` -/
def P432041246832056310.Spec : Prop :=
  ∀ n, P432041246832056310.a n = A075193 n

end A075193

/-! ## A075193.P5383914377171202188

`A000032(n+1)*A062157(n+1)`
-/

namespace A075193.P5383914377171202188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A062157 (n + 1)

end

end A075193.P5383914377171202188

namespace A075193

/-- `A000032(n+1)*A062157(n+1)` -/
def P5383914377171202188.Spec : Prop :=
  ∀ n, P5383914377171202188.a n = A075193 n

end A075193

/-! ## A075193.P1786579613325206391

`A000032(n+1)/A033999(n+2)`
-/

namespace A075193.P1786579613325206391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A075193.P1786579613325206391

namespace A075193

/-- `A000032(n+1)/A033999(n+2)` -/
def P1786579613325206391.Spec : Prop :=
  ∀ n, P1786579613325206391.a n = (A075193 n : ℚ)

end A075193

/-! ## A075193.P5586827229522439356

`A000204(n+1)/A033999(n+2)`
-/

namespace A075193.P5586827229522439356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 1) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A075193.P5586827229522439356

namespace A075193

/-- `A000204(n+1)/A033999(n+2)` -/
def P5586827229522439356.Spec : Prop :=
  ∀ n, P5586827229522439356.a n = (A075193 n : ℚ)

end A075193

/-! ## A075193.P10840660728149442272

`A000032(n+1)*A009001(2*n)`
-/

namespace A075193.P10840660728149442272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A009001 (2 * n)

end

end A075193.P10840660728149442272

namespace A075193

/-- `A000032(n+1)*A009001(2*n)` -/
def P10840660728149442272.Spec : Prop :=
  ∀ n, P10840660728149442272.a n = A075193 n

end A075193

/-! ## A075193.P17182148239988872592

`A000032(n+1)*A056594(2*n)`
-/

namespace A075193.P17182148239988872592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A056594 (2 * n)

end

end A075193.P17182148239988872592

namespace A075193

/-- `A000032(n+1)*A056594(2*n)` -/
def P17182148239988872592.Spec : Prop :=
  ∀ n, P17182148239988872592.a n = A075193 n

end A075193

/-! ## A075193.P11028078217115397577

`A000032(n+1)*A057077(2*n)`
-/

namespace A075193.P11028078217115397577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A057077 (2 * n)

end

end A075193.P11028078217115397577

namespace A075193

/-- `A000032(n+1)*A057077(2*n)` -/
def P11028078217115397577.Spec : Prop :=
  ∀ n, P11028078217115397577.a n = A075193 n

end A075193

/-! ## A075193.P18352581294271703012

`A000032(n+1)*A087960(2*n)`
-/

namespace A075193.P18352581294271703012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A087960 (2 * n)

end

end A075193.P18352581294271703012

namespace A075193

/-- `A000032(n+1)*A087960(2*n)` -/
def P18352581294271703012.Spec : Prop :=
  ∀ n, P18352581294271703012.a n = A075193 n

end A075193

/-! ## A075193.P16597603079665648812

`A000032(n+1)*A156872(2*n)`
-/

namespace A075193.P16597603079665648812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A156872 (2 * n)

end

end A075193.P16597603079665648812

namespace A075193

/-- `A000032(n+1)*A156872(2*n)` -/
def P16597603079665648812.Spec : Prop :=
  ∀ n, P16597603079665648812.a n = A075193 n

end A075193

/-!
# A075194: Binomial transform of pentanacci numbers A074048: a(n)=Sum((-1)^k*Binomial(n,k)*A074048(k),(k=0,..,n)).

The programs for A075194, the canonical program `A075194.P309722123693878713` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075194 has offset 0).

The definition of A075194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075194.P309722123693878713

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)` with `a(0)=5, a(1)=4, a(2)=6, a(3)=4, a(4)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075194

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)` -/
def P309722123693878713.Spec : Prop :=
  ∀ n, P309722123693878713.a n = A075194 n

theorem P309722123693878713.correct : P309722123693878713.Spec := by
  intro n
  simp only [A075194]

end A075194

/-!
# A075195: Jablonski table T(n,k) read by antidiagonals: T(n,k) = number of necklaces with n beads of k colors.

The programs for A075195, there is no canonical definition to state claims against.
-/

/-! ## A075195.P7660638164815022886

`A284855(n+1)+2*A293496(n+1)`
-/

namespace A075195.P7660638164815022886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284855 (n + 1) + 2 * A293496 (n + 1)

end

end A075195.P7660638164815022886

/-! ## A075195.P525376964311184184

`A319082(2*comp[∑[n]]-n)`
-/

namespace A075195.P525376964311184184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319082 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A075195.P525376964311184184

/-! ## A075195.P6677236671438637757

`A284855(n+1)+A005843(A293496(n+1))`
-/

namespace A075195.P6677236671438637757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284855 (n + 1) + A005843 (A293496 (n + 1)).toNat

end

end A075195.P6677236671438637757

/-! ## A075195.P2855705964362062810

`A260999(A062145(n+1))`
-/

namespace A075195.P2855705964362062810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A062145 (n + 1)).toNat

end

end A075195.P2855705964362062810

/-! ## A075195.P16986579850777663354

`A135278(n)+A003982(A056040(n))`
-/

namespace A075195.P16986579850777663354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + A003982 (A056040 n).toNat

end

end A075195.P16986579850777663354

/-!
# A075196: Table T(n,k) by antidiagonals: T(n,k) = number of partitions of n balls of k colors.

The programs for A075196, there is no canonical definition to state claims against.
-/

/-! ## A075196.P9310121734065040784

`A246935(eq[A158821(n), A185037(n)])`
-/

namespace A075196.P9310121734065040784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A075196.P9310121734065040784

/-! ## A075196.P10663370413672736468

`A350847(A358708(n))+A209158(n+1)`
-/

namespace A075196.P10663370413672736468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350847 (A358708 n).toNat + A209158 (n + 1)

end

end A075196.P10663370413672736468

/-! ## A075196.P15072407831471197235

`A080464(C(A210859(n+1), A229891(n)))`
-/

namespace A075196.P15072407831471197235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080464 (Nat.choose (A210859 (n + 1)).toNat (A229891 n).toNat + 10)

end

end A075196.P15072407831471197235

/-! ## A075196.P8669281818789483990

`A246935(lt[A066016(n+1), A228900(n)])`
-/

namespace A075196.P8669281818789483990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075196.P8669281818789483990

/-! ## A075196.P10992172940614870128

`A316864(Δ[A097332(n)])+A003506(n+1)`
-/

namespace A075196.P10992172940614870128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (f1 (n + 1) - f1 n).toNat + A003506 (n + 1)

end

end A075196.P10992172940614870128

/-!
# A075197: Number of partitions of n balls of n colors.

The programs for A075197, there is no canonical definition to state claims against.
-/

/-! ## A075197.P11863289019542813974

`A075196((1-n)²+n²)`
-/

namespace A075197.P11863289019542813974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A075197.P11863289019542813974

/-! ## A075197.P12011888908543790669

`A062298(A120592(n)+A076024(n))`
-/

namespace A075197.P12011888908543790669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A120592 n + A076024 n).toNat

end

end A075197.P12011888908543790669

/-!
# A075198: Number of polyominoes with n cells that tile the plane by translation.

The programs for A075198, there is no canonical definition to state claims against.
-/

/-! ## A075198.P17807444870852069654

`A075200(n+1)+A075199(n+1)`
-/

namespace A075198.P17807444870852069654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075200 (n + 1) + A075199 (n + 1)

end

end A075198.P17807444870852069654

/-! ## A075198.P17520971628852211975

`A075203(n+1)-A075201(n+1)`
-/

namespace A075198.P17520971628852211975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075203 (n + 1) - A075201 (n + 1)

end

end A075198.P17520971628852211975

/-! ## A075198.P5843622832046925407

`A075203(n+1)+A057428(n)*A075201(n+1)`
-/

namespace A075198.P5843622832046925407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075203 (n + 1) + A057428 n * A075201 (n + 1)

end

end A075198.P5843622832046925407

/-! ## A075198.P13818254014906232732

`A075203(n+1)+A075201(n+1)*A260196(n)`
-/

namespace A075198.P13818254014906232732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075203 (n + 1) + A075201 (n + 1) * A260196 n

end

end A075198.P13818254014906232732

/-! ## A075198.P4379617027429987464

`A075199(n+1)+A075202(n+1)-A075201(n+1)`
-/

namespace A075198.P4379617027429987464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075199 (n + 1) + (A075202 (n + 1) - A075201 (n + 1))

end

end A075198.P4379617027429987464

/-!
# A075199: Number of polyominoes with n cells that tile the plane by translation but not by 180-degree rotation (Conway criterion).

The programs for A075199, there is no canonical definition to state claims against.
-/

/-! ## A075199.P2779906158312253511

`A075198(n+1)-A075200(n+1)`
-/

namespace A075199.P2779906158312253511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075198 (n + 1) - A075200 (n + 1)

end

end A075199.P2779906158312253511

/-! ## A075199.P7331572936305707388

`A075203(n+1)-A075202(n+1)`
-/

namespace A075199.P7331572936305707388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075203 (n + 1) - A075202 (n + 1)

end

end A075199.P7331572936305707388

/-! ## A075199.P9571139214883623698

`A075198(C(n+1, n))%A075200(n+1)`
-/

namespace A075199.P9571139214883623698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075198 (Nat.choose (n + 1) n)) (A075200 (n + 1))

end

end A075199.P9571139214883623698

/-! ## A075199.P6527787404197996913

`A075203(C(n+1, n))%A075202(n+1)`
-/

namespace A075199.P6527787404197996913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075203 (Nat.choose (n + 1) n)) (A075202 (n + 1))

end

end A075199.P6527787404197996913

/-! ## A075199.P14423108600484400476

`A075198(A000027(n+1))%A075200(n+1)`
-/

namespace A075199.P14423108600484400476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075198 (A000027 (n + 1)).toNat) (A075200 (n + 1))

end

end A075199.P14423108600484400476

