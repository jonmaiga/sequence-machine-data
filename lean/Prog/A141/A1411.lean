import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B001.C013
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A141100: Number of unordered pairs of odd composite numbers that sum to 2n.

The programs for A141100, there is no canonical definition to state claims against.
-/

/-! ## A141100.P3612622687403944805

`A224709(n+1)+1-A065033(n)`
-/

namespace A141100.P3612622687403944805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224709 (n + 1) + (1 - A065033 n)

end

end A141100.P3612622687403944805

/-! ## A141100.P5952256411887594008

`A224709(n+1)-A140106(n+1)`
-/

namespace A141100.P5952256411887594008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224709 (n + 1) - A140106 (n + 1)

end

end A141100.P5952256411887594008

/-! ## A141100.P10527061438519986607

`A141099(n+1)-A005171(2*n+1)`
-/

namespace A141100.P10527061438519986607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141099 (n + 1) - A005171 (2 * n + 1)

end

end A141100.P10527061438519986607

/-! ## A141100.P2832453543953816556

`A224708(A103517(n))-A140106(n+1)`
-/

namespace A141100.P2832453543953816556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (A103517 n).toNat - A140106 (n + 1)

end

end A141100.P2832453543953816556

/-! ## A141100.P616682311580836213

`A224709(n+1)-A002265(A004280(n+1))`
-/

namespace A141100.P616682311580836213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224709 (n + 1) - A002265 (A004280 (n + 1)).toNat

end

end A141100.P616682311580836213

/-! ## A141100.P3445352089790119928

`A141097(n+1)+A141099(n+1)-A141095(n+1)`
-/

namespace A141100.P3445352089790119928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141097 (n + 1) + (A141099 (n + 1) - A141095 (n + 1))

end

end A141100.P3445352089790119928

/-! ## A141100.P5895454694127999737

`A224708(2*(n+1))+A140106(n+2)-A140106(2*n+1)`
-/

namespace A141100.P5895454694127999737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (2 * (n + 1)) + (A140106 (n + 2) - A140106 (2 * n + 1))

end

end A141100.P5895454694127999737

/-!
# A141101: a(n) = prime(2*n) - 2*n.

The programs for A141101, the canonical program `A141101.P16887844390166522487` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141101 has offset 1).

The definition of A141101 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1))-2*(n+1)` (program `A141101.P16887844390166522487`, by `A141101.P16887844390166522487.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141101.P612062592887508824

`A031215(n+1)-A005843(n+1)`
-/

namespace A141101.P612062592887508824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - A005843 (n + 1)

end

end A141101.P612062592887508824

namespace A141101

/-- `A031215(n+1)-A005843(n+1)` -/
def P612062592887508824.Spec : Prop :=
  ∀ n, P612062592887508824.a n = A141101 (n + 1)

theorem P612062592887508824.correct : P612062592887508824.Spec := by
  intro n
  simp only [A141101, Nat.add_sub_cancel, A141101.P612062592887508824.a, A141101.P16887844390166522487.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005843, A005843.P3167286115683555970.a, A031215, A031215.P2952175553723239727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141101

/-! ## A141101.P16887844390166522487

`A000040(2*(n+1))-2*(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141101

/-- `A000040(2*(n+1))-2*(n+1)` -/
def P16887844390166522487.Spec : Prop :=
  ∀ n, P16887844390166522487.a n = A141101 (n + 1)

theorem P16887844390166522487.correct : P16887844390166522487.Spec := by
  intro n
  simp only [A141101, Nat.add_sub_cancel]

end A141101

/-! ## A141101.P12205522960712551337

`A014689(A005843(n+1))`
-/

namespace A141101.P12205522960712551337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A005843 (n + 1)).toNat

end

end A141101.P12205522960712551337

namespace A141101

/-- `A014689(A005843(n+1))` -/
def P12205522960712551337.Spec : Prop :=
  ∀ n, P12205522960712551337.a n = A141101 (n + 1)

end A141101

/-! ## A141101.P5011193270894576580

`A134591(n+1)+A074766(n+1)`
-/

namespace A141101.P5011193270894576580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) + A074766 (n + 1)

end

end A141101.P5011193270894576580

namespace A141101

/-- `A134591(n+1)+A074766(n+1)` -/
def P5011193270894576580.Spec : Prop :=
  ∀ n, P5011193270894576580.a n = A141101 (n + 1)

theorem P5011193270894576580.correct : P5011193270894576580.Spec := by
  intro n
  simp only [A141101, Nat.add_sub_cancel, A141101.P5011193270894576580.a, A141101.P16887844390166522487.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A074766, A074766.P7109472300547683338.a, A134591, A134591.P13784663667261059065.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141101

/-! ## A141101.P7663021184345597031

`A092390(n+1)-A078916(n+1)`
-/

namespace A141101.P7663021184345597031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092390 (n + 1) - A078916 (n + 1)

end

end A141101.P7663021184345597031

namespace A141101

/-- `A092390(n+1)-A078916(n+1)` -/
def P7663021184345597031.Spec : Prop :=
  ∀ n, P7663021184345597031.a n = A141101 (n + 1)

theorem P7663021184345597031.correct : P7663021184345597031.Spec := by
  intro n
  simp only [A141101, Nat.add_sub_cancel, A141101.P7663021184345597031.a, A141101.P16887844390166522487.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A078916, A078916.P17748288243755169363.a, A092390, A092390.P1796857975132051005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141101

/-! ## A141101.P10093054528643540273

`A031215(n+1)+1-A144396(n+1)`
-/

namespace A141101.P10093054528643540273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + 1 - A144396 (n + 1)

end

end A141101.P10093054528643540273

namespace A141101

/-- `A031215(n+1)+1-A144396(n+1)` -/
def P10093054528643540273.Spec : Prop :=
  ∀ n, P10093054528643540273.a n = A141101 (n + 1)

theorem P10093054528643540273.correct : P10093054528643540273.Spec := by
  intro n
  simp only [A141101, Nat.add_sub_cancel, A141101.P10093054528643540273.a, A141101.P16887844390166522487.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A144396, A144396.P18396969748453668116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141101

/-! ## A141101.P4917775600017200155

`A066066(n+1)+2*(A008864(n+1)-1)-(n+2)-n`
-/

namespace A141101.P4917775600017200155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) + 2 * (A008864 (n + 1) - 1) - (n + 2 : ℤ) - (n : ℤ)

end

end A141101.P4917775600017200155

namespace A141101

/-- `A066066(n+1)+2*(A008864(n+1)-1)-(n+2)-n` -/
def P4917775600017200155.Spec : Prop :=
  ∀ n, P4917775600017200155.a n = A141101 (n + 1)

theorem P4917775600017200155.correct : P4917775600017200155.Spec := by
  intro n
  simp only [A141101, Nat.add_sub_cancel, A141101.P4917775600017200155.a, A141101.P16887844390166522487.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A066066, A066066.P16664765326660587690.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141101

/-! ## A141101.P6667150173459346218

`∩[2*n+1, A168285(n+1)]`
-/

namespace A141101.P6667150173459346218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141101.P6667150173459346218

namespace A141101

/-- `∩[2*n+1, A168285(n+1)]` -/
def P6667150173459346218.Spec : Prop :=
  ∀ n, (P6667150173459346218.a n : ℤ) = A141101 (n + 1)

end A141101

/-! ## A141101.P4036909135562094546

`∩[2*n+1, p?[2*n+1]-(n+2)]`
-/

namespace A141101.P4036909135562094546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141101.P4036909135562094546

namespace A141101

/-- `∩[2*n+1, p?[2*n+1]-(n+2)]` -/
def P4036909135562094546.Spec : Prop :=
  ∀ n, (P4036909135562094546.a n : ℤ) = A141101 (n + 1)

end A141101

/-! ## A141101.P8391406750318094078

`∑[A046930(Δ[n²])]`
-/

namespace A141101.P8391406750318094078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141101.P8391406750318094078

namespace A141101

/-- `∑[A046930(Δ[n²])]` -/
def P8391406750318094078.Spec : Prop :=
  ∀ n, P8391406750318094078.a n = A141101 (n + 1)

end A141101

/-! ## A141101.P16209005471986943124

`A014689(2*(n+1))`
-/

namespace A141101.P16209005471986943124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (2 * (n + 1))

end

end A141101.P16209005471986943124

namespace A141101

/-- `A014689(2*(n+1))` -/
def P16209005471986943124.Spec : Prop :=
  ∀ n, P16209005471986943124.a n = A141101 (n + 1)

end A141101

/-! ## A141101.P836565379659157231

`A065890(2*(n+1))+1`
-/

namespace A141101.P836565379659157231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (2 * (n + 1)) + 1

end

end A141101.P836565379659157231

namespace A141101

/-- `A065890(2*(n+1))+1` -/
def P836565379659157231.Spec : Prop :=
  ∀ n, P836565379659157231.a n = A141101 (n + 1)

end A141101

/-! ## A141101.P5369871686728177180

`A014692(2*(n+1))-1`
-/

namespace A141101.P5369871686728177180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (2 * (n + 1)) - 1

end

end A141101.P5369871686728177180

namespace A141101

/-- `A014692(2*(n+1))-1` -/
def P5369871686728177180.Spec : Prop :=
  ∀ n, P5369871686728177180.a n = A141101 (n + 1)

end A141101

/-! ## A141101.P2692502341621525419

`∑[A159461(2*n+1)]+1`
-/

namespace A141101.P2692502341621525419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A141101.P2692502341621525419

namespace A141101

/-- `∑[A159461(2*n+1)]+1` -/
def P2692502341621525419.Spec : Prop :=
  ∀ n, P2692502341621525419.a n = A141101 (n + 1)

end A141101

/-! ## A141101.P3688178615392936065

`A014693(2*(n+1))-(n+1)`
-/

namespace A141101.P3688178615392936065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014693 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A141101.P3688178615392936065

namespace A141101

/-- `A014693(2*(n+1))-(n+1)` -/
def P3688178615392936065.Spec : Prop :=
  ∀ n, P3688178615392936065.a n = A141101 (n + 1)

end A141101

/-! ## A141101.P4524305161991970530

`record[A000040(n+2)-lcm(2, n+2)]`
-/

namespace A141101.P4524305161991970530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - (Nat.lcm 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141101.P4524305161991970530

namespace A141101

/-- `record[A000040(n+2)-lcm(2, n+2)]` -/
def P4524305161991970530.Spec : Prop :=
  ∀ n, P4524305161991970530.a n = A141101 (n + 1)

end A141101

/-! ## A141101.P6707584037201850853

`record[A000040(or(1, n)+1)-(n+2)]`
-/

namespace A141101.P6707584037201850853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.lor 1 n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141101.P6707584037201850853

namespace A141101

/-- `record[A000040(or(1, n)+1)-(n+2)]` -/
def P6707584037201850853.Spec : Prop :=
  ∀ n, P6707584037201850853.a n = A141101 (n + 1)

end A141101

/-! ## A141101.P436825870350807753

`record[A000040(xor(1, n)+1)-(n+2)]`
-/

namespace A141101.P436825870350807753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.xor 1 n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141101.P436825870350807753

namespace A141101

/-- `record[A000040(xor(1, n)+1)-(n+2)]` -/
def P436825870350807753.Spec : Prop :=
  ∀ n, P436825870350807753.a n = A141101 (n + 1)

end A141101

/-! ## A141101.P10960350763292656632

`record[A000040(gcd(2, n)+n)-(n+2)]`
-/

namespace A141101.P10960350763292656632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.gcd 2 n + n) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141101.P10960350763292656632

namespace A141101

/-- `record[A000040(gcd(2, n)+n)-(n+2)]` -/
def P10960350763292656632.Spec : Prop :=
  ∀ n, P10960350763292656632.a n = A141101 (n + 1)

end A141101

/-!
# A141102: a(n) = prime(2^n) - n^2.

The programs for A141102, the canonical program `A141102.P60375567433698693` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141102 has offset 1).

The definition of A141102 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2^(n+1))-(n+1)²` (program `A141102.P60375567433698693`, by `A141102.P60375567433698693.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141102.P60375567433698693

`A000040(2^(n+1))-(n+1)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141102

/-- `A000040(2^(n+1))-(n+1)²` -/
def P60375567433698693.Spec : Prop :=
  ∀ n, P60375567433698693.a n = A141102 (n + 1)

theorem P60375567433698693.correct : P60375567433698693.Spec := by
  intro n
  simp only [A141102, Nat.add_sub_cancel]

end A141102

/-! ## A141102.P15859271708960438088

`A033844(n+1)-(n+1)²`
-/

namespace A141102.P15859271708960438088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A141102.P15859271708960438088

namespace A141102

/-- `A033844(n+1)-(n+1)²` -/
def P15859271708960438088.Spec : Prop :=
  ∀ n, P15859271708960438088.a n = A141102 (n + 1)

end A141102

/-! ## A141102.P9174785964144989529

`A141088(n+1)+1-n²`
-/

namespace A141102.P9174785964144989529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141088 (n + 1) + (1 - (n ^ 2 : ℤ))

end

end A141102.P9174785964144989529

namespace A141102

/-- `A141088(n+1)+1-n²` -/
def P9174785964144989529.Spec : Prop :=
  ∀ n, P9174785964144989529.a n = A141102 (n + 1)

theorem P9174785964144989529.correct : P9174785964144989529.Spec := by
  intro n
  simp only [A141102, Nat.add_sub_cancel, A141102.P9174785964144989529.a, A141102.P60375567433698693.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A141088, A141088.P1595580981459965203.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141102

/-! ## A141102.P10081762693753718225

`A018249(n+1)-n*(n+2)`
-/

namespace A141102.P10081762693753718225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018249 (n + 1) - (n * (n + 2) : ℤ)

end

end A141102.P10081762693753718225

namespace A141102

/-- `A018249(n+1)-n*(n+2)` -/
def P10081762693753718225.Spec : Prop :=
  ∀ n, P10081762693753718225.a n = A141102 (n + 1)

theorem P10081762693753718225.correct : P10081762693753718225.Spec := by
  intro n
  simp only [A141102, Nat.add_sub_cancel, A141102.P10081762693753718225.a, A141102.P60375567433698693.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A018249, A018249.P2453322492412683053.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141102

/-! ## A141102.P15332834965193308665

`A051440(n+1)-1-(n+1)²`
-/

namespace A141102.P15332834965193308665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051440 (n + 1) - 1 - ((n + 1) ^ 2 : ℤ)

end

end A141102.P15332834965193308665

namespace A141102

/-- `A051440(n+1)-1-(n+1)²` -/
def P15332834965193308665.Spec : Prop :=
  ∀ n, P15332834965193308665.a n = A141102 (n + 1)

theorem P15332834965193308665.correct : P15332834965193308665.Spec := by
  intro n
  simp only [A141102, Nat.add_sub_cancel, A141102.P15332834965193308665.a, A141102.P60375567433698693.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A051440, A051440.P8598338040170600768.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141102

/-!
# A141103: a(n) = prime(n^n) - n^n.

The programs for A141103, the canonical program `A141103.P13943151980029966926` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141103 has offset 1).

The definition of A141103 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((n+1)^(n+1))-(n+1)^(n+1)` (program `A141103.P13943151980029966926`, by `A141103.P13943151980029966926.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141103.P13943151980029966926

`A000040((n+1)^(n+1))-(n+1)^(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141103

/-- `A000040((n+1)^(n+1))-(n+1)^(n+1)` -/
def P13943151980029966926.Spec : Prop :=
  ∀ n, P13943151980029966926.a n = A141103 (n + 1)

theorem P13943151980029966926.correct : P13943151980029966926.Spec := by
  intro n
  simp only [A141103, Nat.add_sub_cancel]

end A141103

/-! ## A141103.P14566299889266017807

`A062448(n+1)-(n+1)^(n+1)`
-/

namespace A141103.P14566299889266017807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062448 (n + 1) - ((n + 1) ^ (n + 1) : ℤ)

end

end A141103.P14566299889266017807

namespace A141103

/-- `A062448(n+1)-(n+1)^(n+1)` -/
def P14566299889266017807.Spec : Prop :=
  ∀ n, P14566299889266017807.a n = A141103 (n + 1)

end A141103

/-! ## A141103.P15605336471297407651

`A347000(A001844(n))-(n+1)^(n+1)`
-/

namespace A141103.P15605336471297407651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (A001844 n).toNat - ((n + 1) ^ (n + 1) : ℤ)

end

end A141103.P15605336471297407651

namespace A141103

/-- `A347000(A001844(n))-(n+1)^(n+1)` -/
def P15605336471297407651.Spec : Prop :=
  ∀ n, P15605336471297407651.a n = A141103 (n + 1)

end A141103

/-!
# A141104: Lower Even Swappage of Upper Wythoff Sequence.

The programs for A141104, there is no canonical definition to state claims against.
-/

/-! ## A141104.P13842658861533180140

`and(comp[floor(ϕ*n)], -2)`
-/

namespace A141104.P13842658861533180140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-2)

end

end A141104.P13842658861533180140

/-! ## A141104.P412278573929370637

`2*comp[floor(n*sqrt(18))]`
-/

namespace A141104.P412278573929370637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (18 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A141104.P412278573929370637

/-! ## A141104.P10075413872733150205

`or(1, comp[floor(ϕ*n)])-1`
-/

namespace A141104.P10075413872733150205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℤ) - 1

end

end A141104.P10075413872733150205

/-! ## A141104.P1617715555563344029

`xor(1, or(1, comp[floor(ϕ*n)]))`
-/

namespace A141104.P1617715555563344029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A141104.P1617715555563344029

/-! ## A141104.P15340358590204016185

`Δ[n²]+or(1, floor((n+1)/ϕ))`
-/

namespace A141104.P15340358590204016185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + Int.lor 1 ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

end

end A141104.P15340358590204016185

/-! ## A141104.P10195764151013225972

`lcm(2, 2*floor((n+1)/(3-sqrt(5))))`
-/

namespace A141104.P10195764151013225972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * ⌊(n + 1 : ℝ) / (3 - Real.sqrt (5 : ℝ))⌋)

end

end A141104.P10195764151013225972

/-! ## A141104.P17107561100010927602

`comp[floor(ϕ*n)]-comp[floor(ϕ*n)]%2`
-/

namespace A141104.P17107561100010927602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n % 2 : ℕ) : ℤ)

end

end A141104.P17107561100010927602

/-! ## A141104.P13110440780775054757

`A141107(n+1)-1`
-/

namespace A141104.P13110440780775054757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141107 (n + 1) - 1

end

end A141104.P13110440780775054757

/-! ## A141104.P1032466153344667871

`∑[2*Δ[A188188(n+1)]]`
-/

namespace A141104.P1032466153344667871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141104.P1032466153344667871

/-! ## A141104.P13640132526731051593

`∩[2*n, A187485(n+1)]`
-/

namespace A141104.P13640132526731051593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141104.P13640132526731051593

/-!
# A141105: Upper Even Swappage of Upper Wythoff Sequence.

The programs for A141105, the canonical program `A141105.P16209607723613337592` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141105 has offset 1).

The definition of A141105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141105.P1217732447742075817

`and(-2, ceil((n+1)*ϕ²))`
-/

namespace A141105.P1217732447742075817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ⌈(n + 1 : ℝ) * Real.goldenRatio ^ 2⌉

end

end A141105.P1217732447742075817

namespace A141105

/-- `and(-2, ceil((n+1)*ϕ²))` -/
def P1217732447742075817.Spec : Prop :=
  ∀ n, P1217732447742075817.a n = A141105 (n + 1)

end A141105

/-! ## A141105.P17724232482237755970

`or(1, floor(ϕ*(n+1)+n))+1`
-/

namespace A141105.P17724232482237755970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊Real.goldenRatio * (n + 1 : ℝ) + (n : ℝ)⌋ + 1

end

end A141105.P17724232482237755970

namespace A141105

/-- `or(1, floor(ϕ*(n+1)+n))+1` -/
def P17724232482237755970.Spec : Prop :=
  ∀ n, P17724232482237755970.a n = A141105 (n + 1)

end A141105

/-! ## A141105.P5717720020184363854

`2*(round((n+1)/(2*ϕ)+2*n+1)-n)`
-/

namespace A141105.P5717720020184363854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.roundAway ((n + 1 : ℝ) / (2 * Real.goldenRatio) + (2 * n + 1 : ℝ)) - (n : ℤ))

end

end A141105.P5717720020184363854

namespace A141105

/-- `2*(round((n+1)/(2*ϕ)+2*n+1)-n)` -/
def P5717720020184363854.Spec : Prop :=
  ∀ n, P5717720020184363854.a n = A141105 (n + 1)

end A141105

/-! ## A141105.P195895742857357587

`A001950(n+1)+and(1, comp[floor(ϕ*n)])`
-/

namespace A141105.P195895742857357587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + (Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℤ)

end

end A141105.P195895742857357587

namespace A141105

/-- `A001950(n+1)+and(1, comp[floor(ϕ*n)])` -/
def P195895742857357587.Spec : Prop :=
  ∀ n, P195895742857357587.a n = A141105 (n + 1)

end A141105

/-! ## A141105.P2471125604316054427

`A171587(n)+A001950(n+1)`
-/

namespace A141105.P2471125604316054427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171587 n + A001950 (n + 1)

end

end A141105.P2471125604316054427

namespace A141105

/-- `A171587(n)+A001950(n+1)` -/
def P2471125604316054427.Spec : Prop :=
  ∀ n, P2471125604316054427.a n = A141105 (n + 1)

end A141105

/-! ## A141105.P10886792680842303464

`A000035(A005206(n))+ceil(2*n+1+(n+1)/ϕ)`
-/

namespace A141105.P10886792680842303464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005206 n).toNat + ⌈(2 * n + 1 : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌉

end

end A141105.P10886792680842303464

namespace A141105

/-- `A000035(A005206(n))+ceil(2*n+1+(n+1)/ϕ)` -/
def P10886792680842303464.Spec : Prop :=
  ∀ n, P10886792680842303464.a n = A141105 (n + 1)

end A141105

/-! ## A141105.P16209607723613337592

`A109613(A019446(n+1))+A005408(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141105

/-- `A109613(A019446(n+1))+A005408(n)` -/
def P16209607723613337592.Spec : Prop :=
  ∀ n, P16209607723613337592.a n = A141105 (n + 1)

theorem P16209607723613337592.correct : P16209607723613337592.Spec := by
  intro n
  simp only [A141105, Nat.add_sub_cancel]

end A141105

/-! ## A141105.P10470064859549690544

`A001950(n+1)+A191329(n+1)-A085002(n+1)`
-/

namespace A141105.P10470064859549690544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + (A191329 (n + 1) - A085002 (n + 1))

end

end A141105.P10470064859549690544

namespace A141105

/-- `A001950(n+1)+A191329(n+1)-A085002(n+1)` -/
def P10470064859549690544.Spec : Prop :=
  ∀ n, P10470064859549690544.a n = A141105 (n + 1)

end A141105

/-! ## A141105.P12675139847264052128

`A007066(n+2)-gcd(2, A007066(n+2))`
-/

namespace A141105.P12675139847264052128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 2) - (Int.gcd 2 (A007066 (n + 2)) : ℤ)

end

end A141105.P12675139847264052128

namespace A141105

/-- `A007066(n+2)-gcd(2, A007066(n+2))` -/
def P12675139847264052128.Spec : Prop :=
  ∀ n, P12675139847264052128.a n = A141105 (n + 1)

end A141105

/-! ## A141105.P14403405740854271087

`A004277(ceil(A001950(n+1)/2))`
-/

namespace A141105.P14403405740854271087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ⌈(A001950 (n + 1) : ℚ) / 2⌉.toNat

end

end A141105.P14403405740854271087

namespace A141105

/-- `A004277(ceil(A001950(n+1)/2))` -/
def P14403405740854271087.Spec : Prop :=
  ∀ n, P14403405740854271087.a n = A141105 (n + 1)

end A141105

/-! ## A141105.P12487663458792485174

`A001950(n+1)+1-A085002(A000201(n+1))`
-/

namespace A141105.P12487663458792485174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + (1 - A085002 (A000201 (n + 1)).toNat)

end

end A141105.P12487663458792485174

namespace A141105

/-- `A001950(n+1)+1-A085002(A000201(n+1))` -/
def P12487663458792485174.Spec : Prop :=
  ∀ n, P12487663458792485174.a n = A141105 (n + 1)

end A141105

/-! ## A141105.P10670364774079476412

`∩[2*n, A307295(n)]`
-/

namespace A141105.P10670364774079476412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141105.P10670364774079476412

namespace A141105

/-- `∩[2*n, A307295(n)]` -/
def P10670364774079476412.Spec : Prop :=
  ∀ n, (P10670364774079476412.a n : ℤ) = A141105 (n + 1)

end A141105

/-! ## A141105.P12525593740301806727

`A085002(A085002(n+1)+A001950(n+1))+A001950(n+1)`
-/

namespace A141105.P12525593740301806727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (A085002 (n + 1) + A001950 (n + 1)).toNat + A001950 (n + 1)

end

end A141105.P12525593740301806727

namespace A141105

/-- `A085002(A085002(n+1)+A001950(n+1))+A001950(n+1)` -/
def P12525593740301806727.Spec : Prop :=
  ∀ n, P12525593740301806727.a n = A141105 (n + 1)

end A141105

/-! ## A141105.P12226066679441408631

`filter[A307295(n), A135528(#)]`
-/

namespace A141105.P12226066679441408631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A141105.P12226066679441408631

namespace A141105

/-- `filter[A307295(n), A135528(#)]` -/
def P12226066679441408631.Spec : Prop :=
  ∀ n, P12226066679441408631.a n = A141105 (n + 1)

end A141105

/-! ## A141105.P7167600271088840457

`A109613(A003622(n+1))+1`
-/

namespace A141105.P7167600271088840457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A003622 (n + 1)).toNat + 1

end

end A141105.P7167600271088840457

namespace A141105

/-- `A109613(A003622(n+1))+1` -/
def P7167600271088840457.Spec : Prop :=
  ∀ n, P7167600271088840457.a n = A141105 (n + 1)

end A141105

/-! ## A141105.P385027569465247921

`A052928(A001950(n+1)-1)+2`
-/

namespace A141105.P385027569465247921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A001950 (n + 1) - 1).toNat + 2

end

end A141105.P385027569465247921

namespace A141105

/-- `A052928(A001950(n+1)-1)+2` -/
def P385027569465247921.Spec : Prop :=
  ∀ n, P385027569465247921.a n = A141105 (n + 1)

end A141105

/-! ## A141105.P5480615369619724295

`A109613(A187485(2*n+1))+1`
-/

namespace A141105.P5480615369619724295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A187485 (2 * n + 1)).toNat + 1

end

end A141105.P5480615369619724295

namespace A141105

/-- `A109613(A187485(2*n+1))+1` -/
def P5480615369619724295.Spec : Prop :=
  ∀ n, P5480615369619724295.a n = A141105 (n + 1)

end A141105

/-! ## A141105.P15861789427136850935

`lt[and(A003714(n), A280193(n)), 1]+2`
-/

namespace A141105.P15861789427136850935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003714 n) (A280193 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A141105.P15861789427136850935

namespace A141105

/-- `lt[and(A003714(n), A280193(n)), 1]+2` -/
def P15861789427136850935.Spec : Prop :=
  ∀ n, (P15861789427136850935.a n : ℤ) = A141105 (n + 1)

end A141105

/-! ## A141105.P12865920586017650742

`A219636(2*(n+1))+A000034(A219636(2*n+1))`
-/

namespace A141105.P12865920586017650742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219636 (2 * (n + 1)) + A000034 (A219636 (2 * n + 1)).toNat

end

end A141105.P12865920586017650742

namespace A141105

/-- `A219636(2*(n+1))+A000034(A219636(2*n+1))` -/
def P12865920586017650742.Spec : Prop :=
  ∀ n, P12865920586017650742.a n = A141105 (n + 1)

end A141105

/-!
# A141106: Lower Odd Swappage of Upper Wythoff Sequence.

The programs for A141106, there is no canonical definition to state claims against.
-/

/-! ## A141106.P11693238206738460473

`or(1, comp[floor(ϕ*n)-1])`
-/

namespace A141106.P11693238206738460473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A141106.P11693238206738460473

/-! ## A141106.P9612645823803129407

`abs(or(1, -comp[floor(ϕ*n)]))`
-/

namespace A141106.P9612645823803129407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ))|

end

end A141106.P9612645823803129407

/-! ## A141106.P3290591820438068342

`-or(1, -comp[floor(ϕ*n)])`
-/

namespace A141106.P3290591820438068342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ))

end

end A141106.P3290591820438068342

/-! ## A141106.P13863035049323500722

`or(1, ceil((n+1)*ϕ²))-2`
-/

namespace A141106.P13863035049323500722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈(n + 1 : ℝ) * Real.goldenRatio ^ 2⌉ - 2

end

end A141106.P13863035049323500722

/-! ## A141106.P2927344271777771796

`and(comp[floor(ϕ*n)-1], -2)+1`
-/

namespace A141106.P2927344271777771796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-2) + 1

end

end A141106.P2927344271777771796

/-! ## A141106.P1452676799698381015

`comp[floor(ϕ*n)]-ceil((n+1)/ϕ)%2`
-/

namespace A141106.P1452676799698381015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - Int.tmod ⌈(n + 1 : ℝ) / Real.goldenRatio⌉ 2

end

end A141106.P1452676799698381015

/-! ## A141106.P3156314857538504600

`comp[floor(ϕ*n)]%2+comp[floor(ϕ*n)]-1`
-/

namespace A141106.P3156314857538504600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2 : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1)

end

end A141106.P3156314857538504600

/-! ## A141106.P4655233115992335778

`A141105(n+1)-1`
-/

namespace A141106.P4655233115992335778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141105 (n + 1) - 1

end

end A141106.P4655233115992335778

/-! ## A141106.P18099442286080980012

`A109613(comp[floor(ϕ*n)]-1)`
-/

namespace A141106.P18099442286080980012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - 1)

end

end A141106.P18099442286080980012

/-! ## A141106.P11421623654076340532

`∩[2*n+1, A187485(n+1)]`
-/

namespace A141106.P11421623654076340532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141106.P11421623654076340532

/-!
# A141107: Upper Odd Swappage of Upper Wythoff Sequence.

The programs for A141107, there is no canonical definition to state claims against.
-/

/-! ## A141107.P12930160910927052483

`or(1, comp[floor(ϕ*n)])`
-/

namespace A141107.P12930160910927052483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A141107.P12930160910927052483

/-! ## A141107.P9189908864327574272

`and(comp[floor(ϕ*n)], -2)+1`
-/

namespace A141107.P9189908864327574272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-2) + 1

end

end A141107.P9189908864327574272

/-! ## A141107.P3967897464484620753

`xor(1, and(comp[floor(ϕ*n)], -2))`
-/

namespace A141107.P3967897464484620753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-2))

end

end A141107.P3967897464484620753

/-! ## A141107.P10908682038223846475

`2*comp[floor(n*sqrt(18))]+1`
-/

namespace A141107.P10908682038223846475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (18 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A141107.P10908682038223846475

/-! ## A141107.P2070226644393716563

`xor(1, 2*comp[floor(n*sqrt(18))])`
-/

namespace A141107.P2070226644393716563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (18 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A141107.P2070226644393716563

/-! ## A141107.P2831953006012215563

`record[or(1, floor(abs(1-n)*ϕ²))]`
-/

namespace A141107.P2831953006012215563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(|1 - (n : ℤ)| : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141107.P2831953006012215563

/-! ## A141107.P12535091196277525206

`abs(or(1, Δ[lcm(n, n+1)]+floor((n+1)/ϕ)))`
-/

namespace A141107.P12535091196277525206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌊(n + 1 : ℝ) / Real.goldenRatio⌋)|

end

end A141107.P12535091196277525206

/-! ## A141107.P6054378332524195867

`A109613(comp[floor(ϕ*n)])`
-/

namespace A141107.P6054378332524195867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A141107.P6054378332524195867

/-! ## A141107.P1560587365453758401

`∩[2*n+1, A307295(n)]`
-/

namespace A141107.P1560587365453758401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141107.P1560587365453758401

/-! ## A141107.P6760996840775337734

`abs(or(1, n-A003231(n+1)))`
-/

namespace A141107.P6760996840775337734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((n : ℤ) - A003231 (n + 1))|

end

end A141107.P6760996840775337734

/-!
# A141109: Even numbers 2n such that for every prime p in [n,2n-2], 2n-p is also prime.

The programs for A141109, there is no canonical definition to state claims against.
-/

/-! ## A141109.P1360649550386327417

`2*A002271(n+1)`
-/

namespace A141109.P1360649550386327417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002271 (n + 1)

end

end A141109.P1360649550386327417

/-! ## A141109.P4102213116155229630

`∩[2*n, A141340(n+3)]`
-/

namespace A141109.P4102213116155229630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141340 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141109.P4102213116155229630

/-! ## A141109.P12361800958742381736

`A004277(A002271(n+1))`
-/

namespace A141109.P12361800958742381736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A002271 (n + 1)).toNat

end

end A141109.P12361800958742381736

/-! ## A141109.P529836780262030115

`A004275(A002271(n+1)+1)`
-/

namespace A141109.P529836780262030115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A002271 (n + 1) + 1).toNat

end

end A141109.P529836780262030115

/-! ## A141109.P10464880423306115518

`filter[A141340(n+1), A066247(#)]`
-/

namespace A141109.P10464880423306115518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A141109.P10464880423306115518

/-!
# A141110: Number of cycles and fixed points in the permutation (n, n-2, n-4, ..., 1, ..., n-3, n-1).

The programs for A141110, there is no canonical definition to state claims against.
-/

/-! ## A141110.P9996870834379155274

`A064287(n+1)+A064286(n+1)`
-/

namespace A141110.P9996870834379155274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064287 (n + 1) + A064286 (n + 1)

end

end A141110.P9996870834379155274

/-! ## A141110.P3722982621898577152

`A006694(n+1)-A064287(n+1)`
-/

namespace A141110.P3722982621898577152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (n + 1) - A064287 (n + 1)

end

end A141110.P3722982621898577152

/-! ## A141110.P3345906855583214201

`A081844(n+1)-1-A064287(n+1)`
-/

namespace A141110.P3345906855583214201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081844 (n + 1) - 1 - A064287 (n + 1)

end

end A141110.P3345906855583214201

/-! ## A141110.P2905958410128744551

`A123108(A064286(n+1)+A006694(n+1))`
-/

namespace A141110.P2905958410128744551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A064286 (n + 1) + A006694 (n + 1)).toNat

end

end A141110.P2905958410128744551

/-! ## A141110.P14600615272202002901

`A252759(A064286(n+1)+A006694(n+1))`
-/

namespace A141110.P14600615272202002901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252759 (A064286 (n + 1) + A006694 (n + 1)).toNat

end

end A141110.P14600615272202002901

/-! ## A141110.P8598045173577934228

`Δ[record[A165006(n+2)]]`
-/

namespace A141110.P8598045173577934228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165006 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141110.P8598045173577934228

/-! ## A141110.P11886795165310138234

`Δ[A165006(2*n+3)]`
-/

namespace A141110.P11886795165310138234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165006 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141110.P11886795165310138234

/-! ## A141110.P1142405199908613169

`record[A165006(2*n+1)]-record[A165006(n+2)]`
-/

namespace A141110.P1142405199908613169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165006 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165006 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A141110.P1142405199908613169

/-! ## A141110.P4264581547228299714

`1-A346036(n+2)+n`
-/

namespace A141110.P4264581547228299714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A346036 (n + 2) + (n : ℤ)

end

end A141110.P4264581547228299714

/-!
# A141111: Primes of the form 4*x^2+x*y-4*y^2 (as well as of the form 4*x^2+9*x*y+y^2).

The programs for A141111, there is no canonical definition to state claims against.
-/

/-! ## A141111.P4608206394909890077

`∩[A038945(n+1), A045468(n+1)]`
-/

namespace A141111.P4608206394909890077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P4608206394909890077

/-! ## A141111.P3781502104815771708

`∩[A038872(n+1), A038883(n+1)]`
-/

namespace A141111.P3781502104815771708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P3781502104815771708

/-! ## A141111.P10715757202814866313

`∩[A038883(n+1), A045468(n+1)]`
-/

namespace A141111.P10715757202814866313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P10715757202814866313

/-! ## A141111.P8189461733707296277

`∩[A038883(n+1), A064739(n+1)]`
-/

namespace A141111.P8189461733707296277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P8189461733707296277

/-! ## A141111.P14455117324026620682

`∩[A038872(n+1), A296937(n+1)]`
-/

namespace A141111.P14455117324026620682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P14455117324026620682

/-! ## A141111.P14658198036388602805

`∩[A038945(n+1), A296937(n+1)]`
-/

namespace A141111.P14658198036388602805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P14658198036388602805

/-! ## A141111.P12908659985208473134

`∩[A038883(n+1), A076518(n+1)]`
-/

namespace A141111.P12908659985208473134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P12908659985208473134

/-! ## A141111.P7689704897684473355

`∩[A076518(n+1), A296937(n+1)]`
-/

namespace A141111.P7689704897684473355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P7689704897684473355

/-! ## A141111.P7843990093134899246

`∩[A038872(n+1), A270997(n+1)]`
-/

namespace A141111.P7843990093134899246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P7843990093134899246

/-! ## A141111.P319911326017828998

`∩[A038945(n+1), A270997(n+1)]`
-/

namespace A141111.P319911326017828998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P319911326017828998

/-! ## A141111.P5148475886409477181

`∩[A045468(n+1), A270997(n+1)]`
-/

namespace A141111.P5148475886409477181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P5148475886409477181

/-! ## A141111.P12531854336836221723

`∩[A064739(n+1), A270997(n+1)]`
-/

namespace A141111.P12531854336836221723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P12531854336836221723

/-! ## A141111.P14751976465871251336

`∩[A038883(n+1), A219612(n+1)]`
-/

namespace A141111.P14751976465871251336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P14751976465871251336

/-! ## A141111.P14834879364856973497

`∩[A038945(n+1), A219612(n+1)]`
-/

namespace A141111.P14834879364856973497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P14834879364856973497

/-! ## A141111.P4526728668949761771

`∩[A023173(n+1), A038883(n+1)]`
-/

namespace A141111.P4526728668949761771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P4526728668949761771

/-! ## A141111.P9771036490124771683

`∩[A023173(n+1), A296937(n+1)]`
-/

namespace A141111.P9771036490124771683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P9771036490124771683

/-! ## A141111.P7964026785385799533

`∩[A038883(n+1), A336403(n+1)]`
-/

namespace A141111.P7964026785385799533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P7964026785385799533

/-! ## A141111.P11688194472344052449

`∩[A038883(n+1), A057538(n+1)]`
-/

namespace A141111.P11688194472344052449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P11688194472344052449

/-! ## A141111.P2827027414715874316

`∩[A038945(n+1), A057538(n+1)]`
-/

namespace A141111.P2827027414715874316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P2827027414715874316

/-! ## A141111.P10345652193921530968

`∩[A031363(n+1), A038883(n+1)]`
-/

namespace A141111.P10345652193921530968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141111.P10345652193921530968

/-!
# A141112: Primes of the form 2*x^2+5*x*y-5*y^2 (as well as of the form 7*x^2+11*x*y+2*y^2).

The programs for A141112, there is no canonical definition to state claims against.
-/

/-! ## A141112.P1780778563289944148

`∩[A038945(n+1), A120330(n+1)]`
-/

namespace A141112.P1780778563289944148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141112.P1780778563289944148

/-! ## A141112.P1842481410842617816

`∩[A038945(n+1), A042993(n+1)]`
-/

namespace A141112.P1842481410842617816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141112.P1842481410842617816

/-! ## A141112.P11870328048035832908

`∩[A042993(n+1), A120330(n+1)]`
-/

namespace A141112.P11870328048035832908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141112.P11870328048035832908

/-! ## A141112.P12583597044498470163

`∩[A038945(n+1), A140971(n+1)]`
-/

namespace A141112.P12583597044498470163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141112.P12583597044498470163

/-! ## A141112.P17254739719033816269

`∩[A120330(n+1), A140971(n+1)]`
-/

namespace A141112.P17254739719033816269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141112.P17254739719033816269

/-! ## A141112.P10517991163583978789

`∩[A038945(n+1), A260181(n+1)]`
-/

namespace A141112.P10517991163583978789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141112.P10517991163583978789

/-! ## A141112.P11048249086280549451

`∩[A120330(n+1), A260181(n+1)]`
-/

namespace A141112.P11048249086280549451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141112.P11048249086280549451

/-! ## A141112.P13063749985653380217

`∩[A038945(n+1), A047222(n+1)]`
-/

namespace A141112.P13063749985653380217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141112.P13063749985653380217

/-! ## A141112.P9606112458599938210

`∩[A047222(n+1), A120330(n+1)]`
-/

namespace A141112.P9606112458599938210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141112.P9606112458599938210

/-! ## A141112.P13943924709605745720

`p?[A243171(n+1)]`
-/

namespace A141112.P13943924709605745720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141112.P13943924709605745720

/-! ## A141112.P15732877244451392406

`filter[A243171(n+2), A010051(#)]`
-/

namespace A141112.P15732877244451392406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243171 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141112.P15732877244451392406

/-! ## A141112.P8650979156192578815

`filter[A243171(n+2), A080339(#)]`
-/

namespace A141112.P8650979156192578815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243171 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A141112.P8650979156192578815

/-! ## A141112.P15093596820329144972

`filter[A243171(n+2), A302777(#)]`
-/

namespace A141112.P15093596820329144972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243171 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A141112.P15093596820329144972

/-! ## A141112.P10547903146955803009

`filter[A243171(n+2), A355937(#)]`
-/

namespace A141112.P10547903146955803009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243171 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A141112.P10547903146955803009

/-!
# A141113: Positive integers k such that d(d(k)) divides k, where d(k) is the number of divisors of k.

The programs for A141113, the canonical program `A141113.P12877220988294223017` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141113 has offset 1).

The definition of A141113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141113.P12877220988294223017

`eq[0, (n+1)%A000005(A000005(n+1))]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141113

/-- `eq[0, (n+1)%A000005(A000005(n+1))]+1` -/
def P12877220988294223017.Spec : Prop :=
  ∀ n, (P12877220988294223017.a n : ℤ) = A141113 (n + 1)

theorem P12877220988294223017.correct : P12877220988294223017.Spec := by
  intro n
  simp only [A141113, Nat.add_sub_cancel]

end A141113

/-! ## A141113.P16991124693367979218

`record[A127446(A010553(n+1)+A000217(n))]`
-/

namespace A141113.P16991124693367979218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (A010553 (n + 1) + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141113.P16991124693367979218

namespace A141113

/-- `record[A127446(A010553(n+1)+A000217(n))]` -/
def P16991124693367979218.Spec : Prop :=
  ∀ n, P16991124693367979218.a n = A141113 (n + 1)

end A141113

/-!
# A141114: Positive integers k where d(d(k)) is coprime to k, where d(k) is the number of divisors of k.

The programs for A141114, the canonical program `A141114.P17286940861939981141` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141114 has offset 1).

The definition of A141114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141114.P2433891244168884497

`eq[1, gcd(n+1, A000005(A000005(n+1)))]+1`
-/

namespace A141114.P2433891244168884497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000005 (A000005 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A141114.P2433891244168884497

namespace A141114

/-- `eq[1, gcd(n+1, A000005(A000005(n+1)))]+1` -/
def P2433891244168884497.Spec : Prop :=
  ∀ n, (P2433891244168884497.a n : ℤ) = A141114 (n + 1)

end A141114

/-! ## A141114.P17286940861939981141

`eq[1, gcd(n+1, A010553(n+1))]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141114

/-- `eq[1, gcd(n+1, A010553(n+1))]+1` -/
def P17286940861939981141.Spec : Prop :=
  ∀ n, (P17286940861939981141.a n : ℤ) = A141114 (n + 1)

theorem P17286940861939981141.correct : P17286940861939981141.Spec := by
  intro n
  simp only [A141114, Nat.add_sub_cancel]

end A141114

/-! ## A141114.P1090270097554649648

`record[A054531(A010553(n+1)+A000217(n))]`
-/

namespace A141114.P1090270097554649648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A010553 (n + 1) + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141114.P1090270097554649648

namespace A141114

/-- `record[A054531(A010553(n+1)+A000217(n))]` -/
def P1090270097554649648.Spec : Prop :=
  ∀ n, P1090270097554649648.a n = A141114 (n + 1)

end A141114

/-! ## A141114.P10386282380206273770

`record[A127449(A010553(n+1)+A000217(n))]`
-/

namespace A141114.P10386282380206273770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127449 (A010553 (n + 1) + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141114.P10386282380206273770

namespace A141114

/-- `record[A127449(A010553(n+1)+A000217(n))]` -/
def P10386282380206273770.Spec : Prop :=
  ∀ n, P10386282380206273770.a n = A141114 (n + 1)

end A141114

/-! ## A141114.P5894631825244488041

`A279814(n+1)-A210709(A057506(n))`
-/

namespace A141114.P5894631825244488041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279814 (n + 1) - A210709 (A057506 n).toNat

end

end A141114.P5894631825244488041

namespace A141114

/-- `A279814(n+1)-A210709(A057506(n))` -/
def P5894631825244488041.Spec : Prop :=
  ∀ n, P5894631825244488041.a n = A141114 (n + 1)

end A141114

/-!
# A141115: Those positive integers k where both d(d(k)) is not coprime to k and d(d(k)) does not divide k, where d(k) is the number of divisors of k.

The programs for A141115, there is no canonical definition to state claims against.
-/

/-! ## A141115.P17938397071610837969

`A118967(A390760(n+1))`
-/

namespace A141115.P17938397071610837969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118967 (A390760 (n + 1)).toNat

end

end A141115.P17938397071610837969

/-! ## A141115.P12332607602600199411

`A096604(eq[2, A348515(n+1)])`
-/

namespace A141115.P12332607602600199411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141115.P12332607602600199411

/-! ## A141115.P741741489657272808

`filter[A096604(2*(n+1)), A262683(#)]`
-/

namespace A141115.P741741489657272808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096604 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262683 (f1 j).toNat = 1) n)

end

end A141115.P741741489657272808

/-! ## A141115.P2527360730357051488

`filter[A272305(2*n+3), A262683(#)]`
-/

namespace A141115.P2527360730357051488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272305 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262683 (f1 j).toNat = 1) n)

end

end A141115.P2527360730357051488

/-! ## A141115.P15805161040794580311

`A016825(eq[2, A340102(3*n+1)])`
-/

namespace A141115.P15805161040794580311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141115.P15805161040794580311

/-!
# A141116: Smallest n-digit prime with no identical adjacent digits (or 0 if no such prime exists).

The programs for A141116, there is no canonical definition to state claims against.
-/

/-! ## A141116.P1723885424709812032

`A151800(A283816(n)-floor(n/ϕ))`
-/

namespace A141116.P1723885424709812032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A283816 n - ⌊(n : ℝ) / Real.goldenRatio⌋).toNat

end

end A141116.P1723885424709812032

/-!
# A141117: G.f.: A(x) = G(G(x)) = G(x)*(1 + A(A(x))) where G(x) = x + x*G(G(G(x))) = g.f. of A091713.

The programs for A141117, there is no canonical definition to state claims against.
-/

/-! ## A141117.P17170677457391295023

`A396992(A034856(n+2))`
-/

namespace A141117.P17170677457391295023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396992 (A034856 (n + 2)).toNat

end

end A141117.P17170677457391295023

/-! ## A141117.P15220412587965308304

`A008620(A052844(n+1)-A001003(n))`
-/

namespace A141117.P15220412587965308304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A052844 (n + 1) - A001003 n).toNat

end

end A141117.P15220412587965308304

/-!
# A141118: G.f. A(x) satisfies: A(A(A(x))) = x + 9*x^2.

The programs for A141118, there is no canonical definition to state claims against.
-/

/-! ## A141118.P16420463464199220767

`A255563(A000244(n)*A321735(n))`
-/

namespace A141118.P16420463464199220767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255563 (A000244 n * A321735 n).toNat

end

end A141118.P16420463464199220767

/-!
# A141123: Primes of the form -x^2+2*x*y+2*y^2 (as well as of the form 3*x^2+6*x*y+2*y^2).

The programs for A141123, the canonical program `A141123.P3500198032887264477` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141123 has offset 1).

The definition of A141123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141123.P10466628049362293893

`∪[A056899(n+1), A068231(n+1)]`
-/

namespace A141123.P10466628049362293893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P10466628049362293893

namespace A141123

/-- `∪[A056899(n+1), A068231(n+1)]` -/
def P10466628049362293893.Spec : Prop :=
  ∀ n, (P10466628049362293893.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P11558046050661932956

`∪[A068231(n+1), A242366(n+1)]`
-/

namespace A141123.P11558046050661932956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P11558046050661932956

namespace A141123

/-- `∪[A068231(n+1), A242366(n+1)]` -/
def P11558046050661932956.Spec : Prop :=
  ∀ n, (P11558046050661932956.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P3500198032887264477

`p?[or(2, 3*n)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141123

/-- `p?[or(2, 3*n)]` -/
def P3500198032887264477.Spec : Prop :=
  ∀ n, (P3500198032887264477.a n : ℤ) = A141123 (n + 1)

theorem P3500198032887264477.correct : P3500198032887264477.Spec := by
  intro n
  simp only [A141123, Nat.add_sub_cancel]

end A141123

/-! ## A141123.P11909966170366677174

`p?[ogf((2-x+4x^2+x^3)/(1-2x+2x^2-2x^3+x^4))]`
-/

namespace A141123.P11909966170366677174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 4, 1] [1, -2, 2, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141123.P11909966170366677174

namespace A141123

/-- `p?[ogf((2-x+4x^2+x^3)/(1-2x+2x^2-2x^3+x^4))]` -/
def P11909966170366677174.Spec : Prop :=
  ∀ n, P11909966170366677174.a n = A141123 (n + 1)

end A141123

/-! ## A141123.P4405858904219034130

`∩[A038874(n+1), A045309(n+1)]`
-/

namespace A141123.P4405858904219034130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P4405858904219034130

namespace A141123

/-- `∩[A038874(n+1), A045309(n+1)]` -/
def P4405858904219034130.Spec : Prop :=
  ∀ n, (P4405858904219034130.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P18391526548048359726

`∩[A040101(n+1), A045309(n+1)]`
-/

namespace A141123.P18391526548048359726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P18391526548048359726

namespace A141123

/-- `∩[A040101(n+1), A045309(n+1)]` -/
def P18391526548048359726.Spec : Prop :=
  ∀ n, (P18391526548048359726.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P3470314305996192725

`∩[A040124(n+1), A045309(n+1)]`
-/

namespace A141123.P3470314305996192725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P3470314305996192725

namespace A141123

/-- `∩[A040124(n+1), A045309(n+1)]` -/
def P3470314305996192725.Spec : Prop :=
  ∀ n, (P3470314305996192725.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P18103082253859286435

`∩[A040994(n+1), A045309(n+1)]`
-/

namespace A141123.P18103082253859286435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P18103082253859286435

namespace A141123

/-- `∩[A040994(n+1), A045309(n+1)]` -/
def P18103082253859286435.Spec : Prop :=
  ∀ n, (P18103082253859286435.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P13753451984184473275

`∩[A045309(n+1), A045317(n+1)]`
-/

namespace A141123.P13753451984184473275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P13753451984184473275

namespace A141123

/-- `∩[A045309(n+1), A045317(n+1)]` -/
def P13753451984184473275.Spec : Prop :=
  ∀ n, (P13753451984184473275.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P207776767282212953

`∩[A045309(n+1), A391369(n+1)]`
-/

namespace A141123.P207776767282212953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P207776767282212953

namespace A141123

/-- `∩[A045309(n+1), A391369(n+1)]` -/
def P207776767282212953.Spec : Prop :=
  ∀ n, (P207776767282212953.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P4951895714023428151

`∩[A038874(n+1), A045326(n+1)]`
-/

namespace A141123.P4951895714023428151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P4951895714023428151

namespace A141123

/-- `∩[A038874(n+1), A045326(n+1)]` -/
def P4951895714023428151.Spec : Prop :=
  ∀ n, (P4951895714023428151.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P8365351948267996057

`∩[A040101(n+1), A045326(n+1)]`
-/

namespace A141123.P8365351948267996057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P8365351948267996057

namespace A141123

/-- `∩[A040101(n+1), A045326(n+1)]` -/
def P8365351948267996057.Spec : Prop :=
  ∀ n, (P8365351948267996057.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P13679746567980279348

`∩[A040124(n+1), A045326(n+1)]`
-/

namespace A141123.P13679746567980279348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P13679746567980279348

namespace A141123

/-- `∩[A040124(n+1), A045326(n+1)]` -/
def P13679746567980279348.Spec : Prop :=
  ∀ n, (P13679746567980279348.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P4692574456879612808

`∩[A040994(n+1), A045326(n+1)]`
-/

namespace A141123.P4692574456879612808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P4692574456879612808

namespace A141123

/-- `∩[A040994(n+1), A045326(n+1)]` -/
def P4692574456879612808.Spec : Prop :=
  ∀ n, (P4692574456879612808.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P11856325510788778334

`∩[A045309(n+1), A045326(n+1)]`
-/

namespace A141123.P11856325510788778334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P11856325510788778334

namespace A141123

/-- `∩[A045309(n+1), A045326(n+1)]` -/
def P11856325510788778334.Spec : Prop :=
  ∀ n, (P11856325510788778334.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P4303021815668380886

`∩[A045317(n+1), A045326(n+1)]`
-/

namespace A141123.P4303021815668380886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P4303021815668380886

namespace A141123

/-- `∩[A045317(n+1), A045326(n+1)]` -/
def P4303021815668380886.Spec : Prop :=
  ∀ n, (P4303021815668380886.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P6850005208827610693

`p?[lcm(2*n+1, (n+2)%6)]`
-/

namespace A141123.P6850005208827610693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) ((n + 2) % 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141123.P6850005208827610693

namespace A141123

/-- `p?[lcm(2*n+1, (n+2)%6)]` -/
def P6850005208827610693.Spec : Prop :=
  ∀ n, (P6850005208827610693.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P130511247181866368

`∩[A040116(n+1), A045309(n+1)]`
-/

namespace A141123.P130511247181866368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P130511247181866368

namespace A141123

/-- `∩[A040116(n+1), A045309(n+1)]` -/
def P130511247181866368.Spec : Prop :=
  ∀ n, (P130511247181866368.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P14757702195146851059

`∩[A038874(n+1), A167135(n+1)]`
-/

namespace A141123.P14757702195146851059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P14757702195146851059

namespace A141123

/-- `∩[A038874(n+1), A167135(n+1)]` -/
def P14757702195146851059.Spec : Prop :=
  ∀ n, (P14757702195146851059.a n : ℤ) = A141123 (n + 1)

end A141123

/-! ## A141123.P6131767274179257240

`∩[A038874(n+1), A066501(n+1)]`
-/

namespace A141123.P6131767274179257240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141123.P6131767274179257240

namespace A141123

/-- `∩[A038874(n+1), A066501(n+1)]` -/
def P6131767274179257240.Spec : Prop :=
  ∀ n, (P6131767274179257240.a n : ℤ) = A141123 (n + 1)

end A141123

/-!
# A141124: Hankel transform of a transform of Jacobsthal numbers.

The programs for A141124, the canonical program `A141124.P120687196524492228` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141124 has offset 0).

The definition of A141124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141124.P120687196524492228

`(A009001(n)*A016813(n))%A004767(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141124

/-- `(A009001(n)*A016813(n))%A004767(n)` -/
def P120687196524492228.Spec : Prop :=
  ∀ n, P120687196524492228.a n = A141124 n

theorem P120687196524492228.correct : P120687196524492228.Spec := by
  intro n
  simp only [A141124]

end A141124

/-! ## A141124.P18192425825643437813

`(A009001(n)*A017113(n))%A004767(n)`
-/

namespace A141124.P18192425825643437813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009001 n * A017113 n) (A004767 n)

end

end A141124.P18192425825643437813

namespace A141124

/-- `(A009001(n)*A017113(n))%A004767(n)` -/
def P18192425825643437813.Spec : Prop :=
  ∀ n, P18192425825643437813.a n = A141124 n

end A141124

/-! ## A141124.P2142859386473488058

`Δ[n*(2*A070352(n)-5)]`
-/

namespace A141124.P2142859386473488058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 * A070352 n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141124.P2142859386473488058

namespace A141124

/-- `Δ[n*(2*A070352(n)-5)]` -/
def P2142859386473488058.Spec : Prop :=
  ∀ n, P2142859386473488058.a n = A141124 n

end A141124

/-! ## A141124.P14893700492582428366

`Δ[n*A112030(A263426(n))]`
-/

namespace A141124.P14893700492582428366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A112030 (A263426 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141124.P14893700492582428366

namespace A141124

/-- `Δ[n*A112030(A263426(n))]` -/
def P14893700492582428366.Spec : Prop :=
  ∀ n, P14893700492582428366.a n = A141124 n

end A141124

/-! ## A141124.P5384764691801578709

`Δ[A005408(A057979(n))*A009531(n)]`
-/

namespace A141124.P5384764691801578709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A057979 n).toNat * A009531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141124.P5384764691801578709

namespace A141124

/-- `Δ[A005408(A057979(n))*A009531(n)]` -/
def P5384764691801578709.Spec : Prop :=
  ∀ n, P5384764691801578709.a n = A141124 n

end A141124

/-! ## A141124.P3204892326581311564

`Δ[n*A112030(A103889(n+1))]`
-/

namespace A141124.P3204892326581311564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A112030 (A103889 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141124.P3204892326581311564

namespace A141124

/-- `Δ[n*A112030(A103889(n+1))]` -/
def P3204892326581311564.Spec : Prop :=
  ∀ n, P3204892326581311564.a n = A141124 n

end A141124

/-! ## A141124.P2957776918152982935

`Δ[n*Δ[A270708(n+3)]%4]`
-/

namespace A141124.P2957776918152982935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270708 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (f2 (n + 1) - f2 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141124.P2957776918152982935

namespace A141124

/-- `Δ[n*Δ[A270708(n+3)]%4]` -/
def P2957776918152982935.Spec : Prop :=
  ∀ n, P2957776918152982935.a n = A141124 n

end A141124

/-!
# A141125: Hankel transform of a transform of Fibonacci numbers.

The programs for A141125, the canonical program `A141125.P3776746434152624400` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141125 has offset 0).

The definition of A141125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141125.P4944141890049860657

`ogf((1+4x)/(1+4x^2))`
-/

namespace A141125.P4944141890049860657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 0, 4] n

end

end A141125.P4944141890049860657

namespace A141125

/-- `ogf((1+4x)/(1+4x^2))` -/
def P4944141890049860657.Spec : Prop :=
  ∀ n, P4944141890049860657.a n = A141125 n

end A141125

/-! ## A141125.P3776746434152624400

`-(4*a(n-2))` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141125

/-- `-(4*a(n-2))` -/
def P3776746434152624400.Spec : Prop :=
  ∀ n, P3776746434152624400.a n = A141125 n

theorem P3776746434152624400.correct : P3776746434152624400.Spec := by
  intro n
  simp only [A141125]

end A141125

/-! ## A141125.P1423233631739710135

`∏[3-a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A141125.P1423233631739710135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A141125.P1423233631739710135

namespace A141125

/-- `∏[3-a(n-1)]` -/
def P1423233631739710135.Spec : Prop :=
  ∀ n, P1423233631739710135.a n = A141125 n

end A141125

/-! ## A141125.P15874038796262915659

`Δ[4*(5-a(n-2))]` with `a(0)=3, a(1)=4`
-/

namespace A141125.P15874038796262915659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  4 * (5 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141125.P15874038796262915659

namespace A141125

/-- `Δ[4*(5-a(n-2))]` -/
def P15874038796262915659.Spec : Prop :=
  ∀ n, P15874038796262915659.a n = A141125 n

end A141125

/-! ## A141125.P16127506529750572404

`char[1]-4*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A141125.P16127506529750572404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 4 * a (n - 2)

end

end A141125.P16127506529750572404

namespace A141125

/-- `char[1]-4*a(n-2)` -/
def P16127506529750572404.Spec : Prop :=
  ∀ n, P16127506529750572404.a n = A141125 n

end A141125

/-! ## A141125.P3489674442034505222

`4-4*(a(n-2)+1)` with `a(0)=1, a(1)=4`
-/

namespace A141125.P3489674442034505222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 - 4 * (a (n - 2) + 1)

end

end A141125.P3489674442034505222

namespace A141125

/-- `4-4*(a(n-2)+1)` -/
def P3489674442034505222.Spec : Prop :=
  ∀ n, P3489674442034505222.a n = A141125 n

theorem P3489674442034505222.correct : P3489674442034505222.Spec := by
  intro n
  simp only [A141125, Nat.add_sub_cancel, A141125.P3489674442034505222.a, A141125.P3776746434152624400.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141125

/-! ## A141125.P1254215169809479094

`4*(1-a(n-2))-4` with `a(0)=1, a(1)=4`
-/

namespace A141125.P1254215169809479094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * (1 - a (n - 2)) - 4

end

end A141125.P1254215169809479094

namespace A141125

/-- `4*(1-a(n-2))-4` -/
def P1254215169809479094.Spec : Prop :=
  ∀ n, P1254215169809479094.a n = A141125 n

theorem P1254215169809479094.correct : P1254215169809479094.Spec := by
  intro n
  simp only [A141125, Nat.add_sub_cancel, A141125.P1254215169809479094.a, A141125.P3776746434152624400.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141125

/-! ## A141125.P5603655441798404996

`a(n-2)/(3/4-1)` with `a(0)=1, a(1)=4`
-/

namespace A141125.P5603655441798404996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) / ((3 : ℚ) / 4 - 1)

end

end A141125.P5603655441798404996

namespace A141125

/-- `a(n-2)/(3/4-1)` -/
def P5603655441798404996.Spec : Prop :=
  ∀ n, P5603655441798404996.a n = (A141125 n : ℚ)

end A141125

/-! ## A141125.P14746605947510554406

`-∏[and(3, 2*n+1)!-2]`
-/

namespace A141125.P14746605947510554406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 3 (2 * n + 1)) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A141125.P14746605947510554406

namespace A141125

/-- `-∏[and(3, 2*n+1)!-2]` -/
def P14746605947510554406.Spec : Prop :=
  ∀ n, P14746605947510554406.a n = A141125 n

end A141125

/-! ## A141125.P1016552954597540442

`A078069(2*n)`
-/

namespace A141125.P1016552954597540442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 (2 * n)

end

end A141125.P1016552954597540442

namespace A141125

/-- `A078069(2*n)` -/
def P1016552954597540442.Spec : Prop :=
  ∀ n, P1016552954597540442.a n = A141125 n

end A141125

/-! ## A141125.P8727118739691861236

`A090131(2*n)`
-/

namespace A141125.P8727118739691861236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090131 (2 * n)

end

end A141125.P8727118739691861236

namespace A141125

/-- `A090131(2*n)` -/
def P8727118739691861236.Spec : Prop :=
  ∀ n, P8727118739691861236.a n = A141125 n

end A141125

/-! ## A141125.P11694827232641069096

`-A164111(n+1)`
-/

namespace A141125.P11694827232641069096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A164111 (n + 1)

end

end A141125.P11694827232641069096

namespace A141125

/-- `-A164111(n+1)` -/
def P11694827232641069096.Spec : Prop :=
  ∀ n, P11694827232641069096.a n = A141125 n

end A141125

/-! ## A141125.P17788365393678838722

`Δ[-∑[A164111(n)]]`
-/

namespace A141125.P17788365393678838722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164111 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141125.P17788365393678838722

namespace A141125

/-- `Δ[-∑[A164111(n)]]` -/
def P17788365393678838722.Spec : Prop :=
  ∀ n, P17788365393678838722.a n = A141125 n

end A141125

/-! ## A141125.P17772184312339659070

`A164111(n+3)/4`
-/

namespace A141125.P17772184312339659070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164111 (n + 3) : ℚ) / 4

end

end A141125.P17772184312339659070

namespace A141125

/-- `A164111(n+3)/4` -/
def P17772184312339659070.Spec : Prop :=
  ∀ n, P17772184312339659070.a n = (A141125 n : ℚ)

end A141125

/-! ## A141125.P16046137212490608352

`A164111(xor(1, n+1))`
-/

namespace A141125.P16046137212490608352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164111 (Nat.xor 1 (n + 1))

end

end A141125.P16046137212490608352

namespace A141125

/-- `A164111(xor(1, n+1))` -/
def P16046137212490608352.Spec : Prop :=
  ∀ n, P16046137212490608352.a n = A141125 n

end A141125

/-! ## A141125.P7701246840372980213

`Δ[-A009116(2*n)]`
-/

namespace A141125.P7701246840372980213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A009116 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141125.P7701246840372980213

namespace A141125

/-- `Δ[-A009116(2*n)]` -/
def P7701246840372980213.Spec : Prop :=
  ∀ n, P7701246840372980213.a n = A141125 n

end A141125

/-! ## A141125.P5789669274688506926

`Δ[-A146559(2*n)]`
-/

namespace A141125.P5789669274688506926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A146559 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141125.P5789669274688506926

namespace A141125

/-- `Δ[-A146559(2*n)]` -/
def P5789669274688506926.Spec : Prop :=
  ∀ n, P5789669274688506926.a n = A141125 n

end A141125

/-! ## A141125.P18284950018922882127

`Δ[Δ[A137505(2*n)]]`
-/

namespace A141125.P18284950018922882127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137505 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141125.P18284950018922882127

namespace A141125

/-- `Δ[Δ[A137505(2*n)]]` -/
def P18284950018922882127.Spec : Prop :=
  ∀ n, P18284950018922882127.a n = A141125 n

end A141125

/-! ## A141125.P12952517914917902310

`2^n*A228826(n+3)`
-/

namespace A141125.P12952517914917902310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A228826 (n + 3)

end

end A141125.P12952517914917902310

namespace A141125

/-- `2^n*A228826(n+3)` -/
def P12952517914917902310.Spec : Prop :=
  ∀ n, P12952517914917902310.a n = A141125 n

end A141125

/-! ## A141125.P1511871571767064620

`Δ[-A363524(2*n+1)]`
-/

namespace A141125.P1511871571767064620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A363524 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141125.P1511871571767064620

namespace A141125

/-- `Δ[-A363524(2*n+1)]` -/
def P1511871571767064620.Spec : Prop :=
  ∀ n, P1511871571767064620.a n = A141125 n

end A141125

/-!
# A141126: a(n+1) = a(n)-n^2 if positive and new, else a(n+1) = a(n)+n^2; a(0)=1.

The programs for A141126, there is no canonical definition to state claims against.
-/

/-! ## A141126.P4486983238729926052

`A053461(floor(n²/(n+1)))+1`
-/

namespace A141126.P4486983238729926052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053461 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat + 1

end

end A141126.P4486983238729926052

/-! ## A141126.P10457444637951825013

`∑[(1-n)²/A033999(A332544(n+6))]`
-/

namespace A141126.P10457444637951825013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 : ℚ) / (A033999 (A332544 (n + 6)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141126.P10457444637951825013

/-!
# A141127: a(n) = prime(prime(n*n) - n*n) - n*n where prime(n) is the n-th prime.

The programs for A141127, the canonical program `A141127.P18198130879852702955` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141127 has offset 1).

The definition of A141127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040((n+1)*(n+1))-(n+1)*(n+1))-(n+1)*(n+1)` (program `A141127.P18198130879852702955`, by `A141127.P18198130879852702955.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141127.P2006182237363878272

`A000040(A000040((n+1)²)-(n+1)²)-(n+1)²`
-/

namespace A141127.P2006182237363878272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)).toNat - ((n + 1) ^ 2 : ℤ)

end

end A141127.P2006182237363878272

namespace A141127

/-- `A000040(A000040((n+1)²)-(n+1)²)-(n+1)²` -/
def P2006182237363878272.Spec : Prop :=
  ∀ n, P2006182237363878272.a n = A141127 (n + 1)

theorem P2006182237363878272.correct : P2006182237363878272.Spec := by
  intro n
  simp only [A141127, Nat.add_sub_cancel, A141127.P2006182237363878272.a, A141127.P18198130879852702955.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141127

/-! ## A141127.P18198130879852702955

`A000040(A000040((n+1)*(n+1))-(n+1)*(n+1))-(n+1)*(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141127

/-- `A000040(A000040((n+1)*(n+1))-(n+1)*(n+1))-(n+1)*(n+1)` -/
def P18198130879852702955.Spec : Prop :=
  ∀ n, P18198130879852702955.a n = A141127 (n + 1)

theorem P18198130879852702955.correct : P18198130879852702955.Spec := by
  intro n
  simp only [A141127, Nat.add_sub_cancel]

end A141127

/-! ## A141127.P3364534028347758274

`A065994((n+1)²)-(n+1)²`
-/

namespace A141127.P3364534028347758274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065994 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A141127.P3364534028347758274

namespace A141127

/-- `A065994((n+1)²)-(n+1)²` -/
def P3364534028347758274.Spec : Prop :=
  ∀ n, P3364534028347758274.a n = A141127 (n + 1)

end A141127

/-! ## A141127.P533826675463594513

`A000040(A141129(n+1))-(n+1)²`
-/

namespace A141127.P533826675463594513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A141129 (n + 1)).toNat - ((n + 1) ^ 2 : ℤ)

end

end A141127.P533826675463594513

namespace A141127

/-- `A000040(A141129(n+1))-(n+1)²` -/
def P533826675463594513.Spec : Prop :=
  ∀ n, P533826675463594513.a n = A141127 (n + 1)

theorem P533826675463594513.correct : P533826675463594513.Spec := by
  intro n
  simp only [A141127, Nat.add_sub_cancel, A141127.P533826675463594513.a, A141127.P18198130879852702955.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A141129, A141129.P5465048195474713331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141127

/-! ## A141127.P13788253040578352953

`A000040(A014689((n+1)²))-(n+1)²`
-/

namespace A141127.P13788253040578352953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014689 ((n + 1) ^ 2)).toNat - ((n + 1) ^ 2 : ℤ)

end

end A141127.P13788253040578352953

namespace A141127

/-- `A000040(A014689((n+1)²))-(n+1)²` -/
def P13788253040578352953.Spec : Prop :=
  ∀ n, P13788253040578352953.a n = A141127 (n + 1)

end A141127

/-!
# A141128: Sum over unitary prime power divisors p^k of n of A025528(p^k).

The programs for A141128, there is no canonical definition to state claims against.
-/

/-! ## A141128.P18392514670551250667

`∑{p}[A338224(n+1), A000720(#)]`
-/

namespace A141128.P18392514670551250667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A141128.P18392514670551250667

/-! ## A141128.P1642561469261495772

`∑{p}[A338224(n+1), A003963(#)]`
-/

namespace A141128.P1642561469261495772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p

end

end A141128.P1642561469261495772

/-! ## A141128.P3921463386700033008

`∑{p}[A338224(n+1), A026233(#)]`
-/

namespace A141128.P3921463386700033008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A026233 p

end

end A141128.P3921463386700033008

/-! ## A141128.P3210960891813020635

`∑{p}[A338224(n+1), A026238(#)]`
-/

namespace A141128.P3210960891813020635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A026238 p

end

end A141128.P3210960891813020635

/-! ## A141128.P2886294644420633949

`∑{p}[A338224(n+1), A055396(#)]`
-/

namespace A141128.P2886294644420633949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A055396 p

end

end A141128.P2886294644420633949

/-! ## A141128.P15161613212451834858

`∑{d}[A338224(n+1), A297109(#)]`
-/

namespace A141128.P15161613212451834858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297109 d

end

end A141128.P15161613212451834858

/-! ## A141128.P10847089069423663352

`A056239(A338224(n+1))`
-/

namespace A141128.P10847089069423663352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A338224 (n + 1)).toNat

end

end A141128.P10847089069423663352

/-! ## A141128.P2995115371873675394

`∑{d}[A338224(n+1), A049084(#)]`
-/

namespace A141128.P2995115371873675394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A141128.P2995115371873675394

/-! ## A141128.P4670474141023934156

`A066328(A338224(n+1)²)`
-/

namespace A141128.P4670474141023934156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A338224 (n + 1) ^ 2).toNat

end

end A141128.P4670474141023934156

/-! ## A141128.P13334430605644728340

`A333842(A338224(n+1)²)`
-/

namespace A141128.P13334430605644728340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333842 (A338224 (n + 1) ^ 2).toNat

end

end A141128.P13334430605644728340

/-!
# A141129: a(n) = prime(n^2) - n^2.

The programs for A141129, the canonical program `A141129.P5465048195474713331` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141129 has offset 1).

The definition of A141129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((n+1)²)-(n+1)²` (program `A141129.P5465048195474713331`, by `A141129.P5465048195474713331.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141129.P11126076675905361379

`A014689((n+1)²)`
-/

namespace A141129.P11126076675905361379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 ((n + 1) ^ 2)

end

end A141129.P11126076675905361379

namespace A141129

/-- `A014689((n+1)²)` -/
def P11126076675905361379.Spec : Prop :=
  ∀ n, P11126076675905361379.a n = A141129 (n + 1)

end A141129

/-! ## A141129.P5465048195474713331

`A000040((n+1)²)-(n+1)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141129

/-- `A000040((n+1)²)-(n+1)²` -/
def P5465048195474713331.Spec : Prop :=
  ∀ n, P5465048195474713331.a n = A141129 (n + 1)

theorem P5465048195474713331.correct : P5465048195474713331.Spec := by
  intro n
  simp only [A141129, Nat.add_sub_cancel]

end A141129

/-! ## A141129.P7245196950034045211

`A011757(n+1)-(n+1)²`
-/

namespace A141129.P7245196950034045211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A141129.P7245196950034045211

namespace A141129

/-- `A011757(n+1)-(n+1)²` -/
def P7245196950034045211.Spec : Prop :=
  ∀ n, P7245196950034045211.a n = A141129 (n + 1)

end A141129

/-! ## A141129.P11857644623322045179

`A106588(n+1)-A123914(n+1)`
-/

namespace A141129.P11857644623322045179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106588 (n + 1) - A123914 (n + 1)

end

end A141129.P11857644623322045179

namespace A141129

/-- `A106588(n+1)-A123914(n+1)` -/
def P11857644623322045179.Spec : Prop :=
  ∀ n, P11857644623322045179.a n = A141129 (n + 1)

theorem P11857644623322045179.correct : P11857644623322045179.Spec := by
  intro n
  simp only [A141129, Nat.add_sub_cancel, A141129.P11857644623322045179.a, A141129.P5465048195474713331.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A106588, A106588.P570258578308934851.a, A123914, A123914.P8916338796586414767.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141129

/-! ## A141129.P6066338653311255839

`A213926(n+1)-A073497(n+1)`
-/

namespace A141129.P6066338653311255839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213926 (n + 1) - A073497 (n + 1)

end

end A141129.P6066338653311255839

namespace A141129

/-- `A213926(n+1)-A073497(n+1)` -/
def P6066338653311255839.Spec : Prop :=
  ∀ n, P6066338653311255839.a n = A141129 (n + 1)

theorem P6066338653311255839.correct : P6066338653311255839.Spec := by
  intro n
  simp only [A141129, Nat.add_sub_cancel, A141129.P6066338653311255839.a, A141129.P5465048195474713331.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A073497, A073497.P4382820423101221026.a, A213926, A213926.P7531459219814302167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141129

/-! ## A141129.P2464521574980526215

`A092504(n+1)-A004232(n+1)`
-/

namespace A141129.P2464521574980526215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092504 (n + 1) - A004232 (n + 1)

end

end A141129.P2464521574980526215

namespace A141129

/-- `A092504(n+1)-A004232(n+1)` -/
def P2464521574980526215.Spec : Prop :=
  ∀ n, P2464521574980526215.a n = A141129 (n + 1)

theorem P2464521574980526215.correct : P2464521574980526215.Spec := by
  intro n
  simp only [A141129, Nat.add_sub_cancel, A141129.P2464521574980526215.a, A141129.P5465048195474713331.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A004232, A004232.P3456609317362794228.a, A092504, A092504.P5803117585915799915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141129

/-! ## A141129.P324117745926458589

`A323526(n+2)-(n+1)²`
-/

namespace A141129.P324117745926458589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323526 (n + 2) - ((n + 1) ^ 2 : ℤ)

end

end A141129.P324117745926458589

namespace A141129

/-- `A323526(n+2)-(n+1)²` -/
def P324117745926458589.Spec : Prop :=
  ∀ n, P324117745926458589.a n = A141129 (n + 1)

end A141129

/-! ## A141129.P2175611401298641729

`A168285(A078435(n+1))`
-/

namespace A141129.P2175611401298641729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168285 (A078435 (n + 1)).toNat

end

end A141129.P2175611401298641729

namespace A141129

/-- `A168285(A078435(n+1))` -/
def P2175611401298641729.Spec : Prop :=
  ∀ n, P2175611401298641729.a n = A141129 (n + 1)

end A141129

/-! ## A141129.P8780974241420465747

`A065890((n+1)²)+1`
-/

namespace A141129.P8780974241420465747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 ((n + 1) ^ 2) + 1

end

end A141129.P8780974241420465747

namespace A141129

/-- `A065890((n+1)²)+1` -/
def P8780974241420465747.Spec : Prop :=
  ∀ n, P8780974241420465747.a n = A141129 (n + 1)

end A141129

/-! ## A141129.P9469729106440674443

`A014692((n+1)²)-1`
-/

namespace A141129.P9469729106440674443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 ((n + 1) ^ 2) - 1

end

end A141129.P9469729106440674443

namespace A141129

/-- `A014692((n+1)²)-1` -/
def P9469729106440674443.Spec : Prop :=
  ∀ n, P9469729106440674443.a n = A141129 (n + 1)

end A141129

/-! ## A141129.P2142783602741981629

`A068519((n+1)²)-(n+1)²`
-/

namespace A141129.P2142783602741981629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068519 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A141129.P2142783602741981629

namespace A141129

/-- `A068519((n+1)²)-(n+1)²` -/
def P2142783602741981629.Spec : Prop :=
  ∀ n, P2142783602741981629.a n = A141129 (n + 1)

end A141129

/-! ## A141129.P5427131952499026195

`A161847((n+1)²)-(n+1)²`
-/

namespace A141129.P5427131952499026195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A141129.P5427131952499026195

namespace A141129

/-- `A161847((n+1)²)-(n+1)²` -/
def P5427131952499026195.Spec : Prop :=
  ∀ n, P5427131952499026195.a n = A141129 (n + 1)

end A141129

/-! ## A141129.P4768114094889181116

`A346180((n+1)²)-(n+1)²`
-/

namespace A141129.P4768114094889181116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346180 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A141129.P4768114094889181116

namespace A141129

/-- `A346180((n+1)²)-(n+1)²` -/
def P4768114094889181116.Spec : Prop :=
  ∀ n, P4768114094889181116.a n = A141129 (n + 1)

end A141129

/-! ## A141129.P14581108628316314471

`A383578((n+1)²)-(n+1)²`
-/

namespace A141129.P14581108628316314471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A141129.P14581108628316314471

namespace A141129

/-- `A383578((n+1)²)-(n+1)²` -/
def P14581108628316314471.Spec : Prop :=
  ∀ n, P14581108628316314471.a n = A141129 (n + 1)

end A141129

/-!
# A141130: a(n) = prime(prime(prime(prime(prime(A028815(n) - 1) - 1) - 1) - 1) - 1) - 1.

The programs for A141130, the canonical program `A141130.P15115507160674459778` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141130 has offset 0).

The definition of A141130 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141130.P15115507160674459778

`A000040(A000040(A000040(A000040(A000040(A028815(n)-1)-1)-1)-1)-1)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A141130

/-- `A000040(A000040(A000040(A000040(A000040(A028815(n)-1)-1)-1)-1)-1)-1` -/
def P15115507160674459778.Spec : Prop :=
  ∀ n, P15115507160674459778.a n = A141130 n

theorem P15115507160674459778.correct : P15115507160674459778.Spec := by
  intro n
  simp only [A141130]

end A141130

/-! ## A141130.P2229699849322392218

`A141139(A008578(n+1))`
-/

namespace A141130.P2229699849322392218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141139 (A008578 (n + 1)).toNat

end

end A141130.P2229699849322392218

namespace A141130

/-- `A141139(A008578(n+1))` -/
def P2229699849322392218.Spec : Prop :=
  ∀ n, P2229699849322392218.a n = A141130 n

theorem P2229699849322392218.correct : P2229699849322392218.Spec := by
  intro n
  simp only [A141130, Nat.add_sub_cancel, A141130.P2229699849322392218.a, A141130.P15115507160674459778.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A141139, A141139.P7152767870583584372.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141130

/-! ## A141130.P4640810769508360168

`A141139(A158611(n+2))`
-/

namespace A141130.P4640810769508360168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141139 (A158611 (n + 2)).toNat

end

end A141130.P4640810769508360168

namespace A141130

/-- `A141139(A158611(n+2))` -/
def P4640810769508360168.Spec : Prop :=
  ∀ n, P4640810769508360168.a n = A141130 n

theorem P4640810769508360168.correct : P4640810769508360168.Spec := by
  intro n
  simp only [A141130, Nat.add_sub_cancel, A141130.P4640810769508360168.a, A141130.P15115507160674459778.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A028815, A028815.P810525423351225743.a, A141139, A141139.P7152767870583584372.a, A158611, A158611.P9275629407611603775.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141130

/-! ## A141130.P7058559008295466223

`A141139(record[A006530(n+1)])`
-/

namespace A141130.P7058559008295466223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141139 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141130.P7058559008295466223

namespace A141130

/-- `A141139(record[A006530(n+1)])` -/
def P7058559008295466223.Spec : Prop :=
  ∀ n, P7058559008295466223.a n = A141130 n

end A141130

/-! ## A141130.P15922279097661859375

`A141139(record[A020639(n+1)])`
-/

namespace A141130.P15922279097661859375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141139 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141130.P15922279097661859375

namespace A141130

/-- `A141139(record[A020639(n+1)])` -/
def P15922279097661859375.Spec : Prop :=
  ∀ n, P15922279097661859375.a n = A141130 n

end A141130

/-! ## A141130.P7796445140442040486

`A141139(record[A060681(n+1)+1])`
-/

namespace A141130.P7796445140442040486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141139 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141130.P7796445140442040486

namespace A141130

/-- `A141139(record[A060681(n+1)+1])` -/
def P7796445140442040486.Spec : Prop :=
  ∀ n, P7796445140442040486.a n = A141130 n

end A141130

/-! ## A141130.P6400064507603934506

`A141217(A141138(n))`
-/

namespace A141130.P6400064507603934506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (A141138 n).toNat

end

end A141130.P6400064507603934506

namespace A141130

/-- `A141217(A141138(n))` -/
def P6400064507603934506.Spec : Prop :=
  ∀ n, P6400064507603934506.a n = A141130 n

end A141130

/-!
# A141132: a(n) = prime(prime(prime(prime(A028815(n) - 1) - 1) - 1) - 1) - 1.

The programs for A141132, the canonical program `A141132.P16379204966305241626` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141132 has offset 0).

The definition of A141132 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141132.P16379204966305241626

`A000040(A000040(A000040(A000040(A028815(n)-1)-1)-1)-1)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A141132

/-- `A000040(A000040(A000040(A000040(A028815(n)-1)-1)-1)-1)-1` -/
def P16379204966305241626.Spec : Prop :=
  ∀ n, P16379204966305241626.a n = A141132 n

theorem P16379204966305241626.correct : P16379204966305241626.Spec := by
  intro n
  simp only [A141132]

end A141132

/-! ## A141132.P17603726109172318759

`A141217(A008578(n+1))`
-/

namespace A141132.P17603726109172318759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (A008578 (n + 1)).toNat

end

end A141132.P17603726109172318759

namespace A141132

/-- `A141217(A008578(n+1))` -/
def P17603726109172318759.Spec : Prop :=
  ∀ n, P17603726109172318759.a n = A141132 n

theorem P17603726109172318759.correct : P17603726109172318759.Spec := by
  intro n
  simp only [A141132, Nat.add_sub_cancel, A141132.P17603726109172318759.a, A141132.P16379204966305241626.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A141217, A141217.P3867012679131986940.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141132

/-! ## A141132.P11614237786641997973

`A141217(A158611(n+2))`
-/

namespace A141132.P11614237786641997973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (A158611 (n + 2)).toNat

end

end A141132.P11614237786641997973

namespace A141132

/-- `A141217(A158611(n+2))` -/
def P11614237786641997973.Spec : Prop :=
  ∀ n, P11614237786641997973.a n = A141132 n

theorem P11614237786641997973.correct : P11614237786641997973.Spec := by
  intro n
  simp only [A141132, Nat.add_sub_cancel, A141132.P11614237786641997973.a, A141132.P16379204966305241626.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A028815, A028815.P810525423351225743.a, A141217, A141217.P3867012679131986940.a, A158611, A158611.P9275629407611603775.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141132

/-! ## A141132.P12782610932780344489

`A141217(record[A006530(n+1)])`
-/

namespace A141132.P12782610932780344489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141132.P12782610932780344489

namespace A141132

/-- `A141217(record[A006530(n+1)])` -/
def P12782610932780344489.Spec : Prop :=
  ∀ n, P12782610932780344489.a n = A141132 n

end A141132

/-! ## A141132.P11104894172969809572

`A141217(record[A020639(n+1)])`
-/

namespace A141132.P11104894172969809572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141132.P11104894172969809572

namespace A141132

/-- `A141217(record[A020639(n+1)])` -/
def P11104894172969809572.Spec : Prop :=
  ∀ n, P11104894172969809572.a n = A141132 n

end A141132

/-! ## A141132.P7636031062889377868

`A141208(A141138(n))`
-/

namespace A141132.P7636031062889377868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (A141138 n).toNat

end

end A141132.P7636031062889377868

namespace A141132

/-- `A141208(A141138(n))` -/
def P7636031062889377868.Spec : Prop :=
  ∀ n, P7636031062889377868.a n = A141132 n

end A141132

/-!
# A141133: a(n) = prime(prime(prime(A028815(n) - 1) - 1) - 1) - 1.

The programs for A141133, the canonical program `A141133.P13051906493185686307` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141133 has offset 0).

The definition of A141133 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141133.P13051906493185686307

`A000040(A000040(A000040(A028815(n)-1)-1)-1)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A141133

/-- `A000040(A000040(A000040(A028815(n)-1)-1)-1)-1` -/
def P13051906493185686307.Spec : Prop :=
  ∀ n, P13051906493185686307.a n = A141133 n

theorem P13051906493185686307.correct : P13051906493185686307.Spec := by
  intro n
  simp only [A141133]

end A141133

/-! ## A141133.P2845964169969126780

`A141208(A008578(n+1))`
-/

namespace A141133.P2845964169969126780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (A008578 (n + 1)).toNat

end

end A141133.P2845964169969126780

namespace A141133

/-- `A141208(A008578(n+1))` -/
def P2845964169969126780.Spec : Prop :=
  ∀ n, P2845964169969126780.a n = A141133 n

theorem P2845964169969126780.correct : P2845964169969126780.Spec := by
  intro n
  simp only [A141133, Nat.add_sub_cancel, A141133.P2845964169969126780.a, A141133.P13051906493185686307.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A141208, A141208.P5460889517822824978.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141133

/-! ## A141133.P980386015329092461

`A141208(A158611(n+2))`
-/

namespace A141133.P980386015329092461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (A158611 (n + 2)).toNat

end

end A141133.P980386015329092461

namespace A141133

/-- `A141208(A158611(n+2))` -/
def P980386015329092461.Spec : Prop :=
  ∀ n, P980386015329092461.a n = A141133 n

theorem P980386015329092461.correct : P980386015329092461.Spec := by
  intro n
  simp only [A141133, Nat.add_sub_cancel, A141133.P980386015329092461.a, A141133.P13051906493185686307.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A028815, A028815.P810525423351225743.a, A141208, A141208.P5460889517822824978.a, A158611, A158611.P9275629407611603775.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141133

/-! ## A141133.P10890194792729756354

`A141208(eq[1, A074206(n)])`
-/

namespace A141133.P10890194792729756354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141133.P10890194792729756354

namespace A141133

/-- `A141208(eq[1, A074206(n)])` -/
def P10890194792729756354.Spec : Prop :=
  ∀ n, P10890194792729756354.a n = A141133 n

end A141133

/-! ## A141133.P11874967674277419583

`A141208(record[A020639(n+1)])`
-/

namespace A141133.P11874967674277419583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141133.P11874967674277419583

namespace A141133

/-- `A141208(record[A020639(n+1)])` -/
def P11874967674277419583.Spec : Prop :=
  ∀ n, P11874967674277419583.a n = A141133 n

end A141133

/-! ## A141133.P16340246401596145846

`A141208(record[A064989(n+1)])`
-/

namespace A141133.P16340246401596145846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141133.P16340246401596145846

namespace A141133

/-- `A141208(record[A064989(n+1)])` -/
def P16340246401596145846.Spec : Prop :=
  ∀ n, P16340246401596145846.a n = A141133 n

end A141133

/-! ## A141133.P13875814218751154141

`A140853(A141138(n))`
-/

namespace A141133.P13875814218751154141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (A141138 n).toNat

end

end A141133.P13875814218751154141

namespace A141133

/-- `A140853(A141138(n))` -/
def P13875814218751154141.Spec : Prop :=
  ∀ n, P13875814218751154141.a n = A141133 n

end A141133

/-!
# A141134: Hankel transform of C(2n+4,n+4).

The programs for A141134, the canonical program `A141134.P11216613699486305974` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141134 has offset 0).

The definition of A141134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141134.P11216613699486305974

`Δ[Δ[A000096(n)%(2*n+3)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141134

/-- `Δ[Δ[A000096(n)%(2*n+3)]]` -/
def P11216613699486305974.Spec : Prop :=
  ∀ n, P11216613699486305974.a n = A141134 n

theorem P11216613699486305974.correct : P11216613699486305974.Spec := by
  intro n
  simp only [A141134]

end A141134

/-! ## A141134.P4594659572064071887

`Δ[Δ[A098547(n)%(2*n+3)]]`
-/

namespace A141134.P4594659572064071887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098547 n) (2 * n + 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141134.P4594659572064071887

namespace A141134

/-- `Δ[Δ[A098547(n)%(2*n+3)]]` -/
def P4594659572064071887.Spec : Prop :=
  ∀ n, P4594659572064071887.a n = A141134 n

end A141134

/-! ## A141134.P11160759505389675259

`Δ[Δ[A000217(n+1)%(2*n+3)]]`
-/

namespace A141134.P11160759505389675259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 1)) (2 * n + 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141134.P11160759505389675259

namespace A141134

/-- `Δ[Δ[A000217(n+1)%(2*n+3)]]` -/
def P11160759505389675259.Spec : Prop :=
  ∀ n, P11160759505389675259.a n = A141134 n

end A141134

/-! ## A141134.P9268789570115015013

`Δ[Δ[∑[n+1]%(2*n+3)]]`
-/

namespace A141134.P9268789570115015013
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141134.P9268789570115015013

namespace A141134

/-- `Δ[Δ[∑[n+1]%(2*n+3)]]` -/
def P9268789570115015013.Spec : Prop :=
  ∀ n, P9268789570115015013.a n = A141134 n

end A141134

/-! ## A141134.P16998297902790395140

`A080412(A082111(n))-A082111(A080412(n))`
-/

namespace A141134.P16998297902790395140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A082111 n).toNat - A082111 (A080412 n).toNat

end

end A141134.P16998297902790395140

namespace A141134

/-- `A080412(A082111(n))-A082111(A080412(n))` -/
def P16998297902790395140.Spec : Prop :=
  ∀ n, P16998297902790395140.a n = A141134 n

end A141134

/-!
# A141135: Minimal number of unit edges required to construct n regular pentagons when allowing edge-sharing.

The programs for A141135, there is no canonical definition to state claims against.
-/

/-! ## A141135.P18289403891769711304

`comp[ceil((1-sqrt(3*n+1))²)]+2*n+3`
-/

namespace A141135.P18289403891769711304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - Real.sqrt (3 * n + 1 : ℝ)) ^ 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (2 * n + 3)

end

end A141135.P18289403891769711304

/-! ## A141135.P6704127601017658857

`∑[5-Δ[A263135(n)]]`
-/

namespace A141135.P6704127601017658857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263135 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141135.P6704127601017658857

/-! ## A141135.P18253429833501662728

`∑[Δ[(A067628(n)-n)/2+n+1]+3]`
-/

namespace A141135.P18253429833501662728
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067628 n - (n : ℤ) : ℚ) / 2 + (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141135.P18253429833501662728

/-! ## A141135.P6040366095714892306

`∑[A004444(Δ[A263135(n)])+2]`
-/

namespace A141135.P6040366095714892306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263135 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 (f2 (n + 1) - f2 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141135.P6040366095714892306

/-! ## A141135.P16009033194980032188

`∑[A022959(Δ[A263135(n)])+2]`
-/

namespace A141135.P16009033194980032188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263135 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022959 (f2 (n + 1) - f2 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141135.P16009033194980032188

/-!
# A141136: a(n) = prime(prime(A028815(n) - 1) - 1) - 1.

The programs for A141136, the canonical program `A141136.P10009492963449235360` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141136 has offset 0).

The definition of A141136 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141136.P10009492963449235360

`A000040(A000040(A028815(n)-1)-1)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A141136

/-- `A000040(A000040(A028815(n)-1)-1)-1` -/
def P10009492963449235360.Spec : Prop :=
  ∀ n, P10009492963449235360.a n = A141136 n

theorem P10009492963449235360.correct : P10009492963449235360.Spec := by
  intro n
  simp only [A141136]

end A141136

/-! ## A141136.P2567257724211778372

`A140853(A008578(n+1))`
-/

namespace A141136.P2567257724211778372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (A008578 (n + 1)).toNat

end

end A141136.P2567257724211778372

namespace A141136

/-- `A140853(A008578(n+1))` -/
def P2567257724211778372.Spec : Prop :=
  ∀ n, P2567257724211778372.a n = A141136 n

theorem P2567257724211778372.correct : P2567257724211778372.Spec := by
  intro n
  simp only [A141136, Nat.add_sub_cancel, A141136.P2567257724211778372.a, A141136.P10009492963449235360.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A140853, A140853.P12533604689105357758.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141136

/-! ## A141136.P5188277730047349818

`A140853(A158611(n+2))`
-/

namespace A141136.P5188277730047349818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (A158611 (n + 2)).toNat

end

end A141136.P5188277730047349818

namespace A141136

/-- `A140853(A158611(n+2))` -/
def P5188277730047349818.Spec : Prop :=
  ∀ n, P5188277730047349818.a n = A141136 n

theorem P5188277730047349818.correct : P5188277730047349818.Spec := by
  intro n
  simp only [A141136, Nat.add_sub_cancel, A141136.P5188277730047349818.a, A141136.P10009492963449235360.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A028815, A028815.P810525423351225743.a, A140853, A140853.P12533604689105357758.a, A158611, A158611.P9275629407611603775.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141136

/-! ## A141136.P7960006378701836884

`A055003(record[A020639(n+1)])-1`
-/

namespace A141136.P7960006378701836884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A141136.P7960006378701836884

namespace A141136

/-- `A055003(record[A020639(n+1)])-1` -/
def P7960006378701836884.Spec : Prop :=
  ∀ n, P7960006378701836884.a n = A141136 n

end A141136

/-! ## A141136.P5744536513419861757

`A055003(A181363(2*n+1))-1`
-/

namespace A141136.P5744536513419861757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (A181363 (2 * n + 1)).toNat - 1

end

end A141136.P5744536513419861757

namespace A141136

/-- `A055003(A181363(2*n+1))-1` -/
def P5744536513419861757.Spec : Prop :=
  ∀ n, P5744536513419861757.a n = A141136 n

end A141136

/-! ## A141136.P8105728712429119691

`A140853(A000040(n+1)-A075526(n))`
-/

namespace A141136.P8105728712429119691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (A000040 (n + 1) - A075526 n).toNat

end

end A141136.P8105728712429119691

namespace A141136

/-- `A140853(A000040(n+1)-A075526(n))` -/
def P8105728712429119691.Spec : Prop :=
  ∀ n, P8105728712429119691.a n = A141136 n

end A141136

/-! ## A141136.P2024265322212674067

`A006093(A141138(n))`
-/

namespace A141136.P2024265322212674067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A141138 n).toNat

end

end A141136.P2024265322212674067

namespace A141136

/-- `A006093(A141138(n))` -/
def P2024265322212674067.Spec : Prop :=
  ∀ n, P2024265322212674067.a n = A141136 n

end A141136

/-! ## A141136.P18168065264588478675

`A030013(A175247(n+1))`
-/

namespace A141136.P18168065264588478675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (A175247 (n + 1)).toNat

end

end A141136.P18168065264588478675

namespace A141136

/-- `A030013(A175247(n+1))` -/
def P18168065264588478675.Spec : Prop :=
  ∀ n, P18168065264588478675.a n = A141136 n

end A141136

/-! ## A141136.P11200902513646909028

`A006093(A006093(A130008(2*n+1)))`
-/

namespace A141136.P11200902513646909028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A006093 (A130008 (2 * n + 1)).toNat).toNat

end

end A141136.P11200902513646909028

namespace A141136

/-- `A006093(A006093(A130008(2*n+1)))` -/
def P11200902513646909028.Spec : Prop :=
  ∀ n, P11200902513646909028.a n = A141136 n

end A141136

/-! ## A141136.P18263287430373943680

`A006093(A006093(A167136(n+1)-n))`
-/

namespace A141136.P18263287430373943680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A006093 (A167136 (n + 1) - (n : ℤ)).toNat).toNat

end

end A141136.P18263287430373943680

namespace A141136

/-- `A006093(A006093(A167136(n+1)-n))` -/
def P18263287430373943680.Spec : Prop :=
  ∀ n, P18263287430373943680.a n = A141136 n

theorem P18263287430373943680.correct : P18263287430373943680.Spec := by
  intro n
  simp only [A141136, Nat.add_sub_cancel, A141136.P18263287430373943680.a, A141136.P10009492963449235360.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A028815, A028815.P810525423351225743.a, A167136, A167136.P17162096113252504066.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141136

/-! ## A141136.P13070716017583265863

`A006093(A006093(A162177(n+1)+n+1))`
-/

namespace A141136.P13070716017583265863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A006093 (A162177 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A141136.P13070716017583265863

namespace A141136

/-- `A006093(A006093(A162177(n+1)+n+1))` -/
def P13070716017583265863.Spec : Prop :=
  ∀ n, P13070716017583265863.a n = A141136 n

theorem P13070716017583265863.correct : P13070716017583265863.Spec := by
  intro n
  simp only [A141136, Nat.add_sub_cancel, A141136.P13070716017583265863.a, A141136.P10009492963449235360.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A028815, A028815.P810525423351225743.a, A162177, A162177.P8282933836838632122.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141136

/-! ## A141136.P2452331453453297972

`A006093(A006093(A090178(n+1)-(n+1)))`
-/

namespace A141136.P2452331453453297972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A006093 (A090178 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A141136.P2452331453453297972

namespace A141136

/-- `A006093(A006093(A090178(n+1)-(n+1)))` -/
def P2452331453453297972.Spec : Prop :=
  ∀ n, P2452331453453297972.a n = A141136 n

theorem P2452331453453297972.correct : P2452331453453297972.Spec := by
  intro n
  simp only [A141136, Nat.add_sub_cancel, A141136.P2452331453453297972.a, A141136.P10009492963449235360.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A028815, A028815.P810525423351225743.a, A090178, A090178.P3922482968985292774.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141136

/-! ## A141136.P1558498731895756435

`A006093(record[A006093(n+1)/A032742(n+1)])`
-/

namespace A141136.P1558498731895756435
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A141136.P1558498731895756435

namespace A141136

/-- `A006093(record[A006093(n+1)/A032742(n+1)])` -/
def P1558498731895756435.Spec : Prop :=
  ∀ n, P1558498731895756435.a n = A141136 n

end A141136

/-!
# A141138: a(n) = prime(A028815(n) - 1) - 1.

The programs for A141138, the canonical program `A141138.P7125824368820176257` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141138 has offset 0).

The definition of A141138 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141138.P7125824368820176257

`A000040(A028815(n)-1)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A141138

/-- `A000040(A028815(n)-1)-1` -/
def P7125824368820176257.Spec : Prop :=
  ∀ n, P7125824368820176257.a n = A141138 n

theorem P7125824368820176257.correct : P7125824368820176257.Spec := by
  intro n
  simp only [A141138]

end A141138

/-! ## A141138.P26682240259945506

`A175247(n+1)-1`
-/

namespace A141138.P26682240259945506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1) - 1

end

end A141138.P26682240259945506

namespace A141138

/-- `A175247(n+1)-1` -/
def P26682240259945506.Spec : Prop :=
  ∀ n, P26682240259945506.a n = A141138 n

theorem P26682240259945506.correct : P26682240259945506.Spec := by
  intro n
  simp only [A141138, Nat.add_sub_cancel, A141138.P26682240259945506.a, A141138.P7125824368820176257.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A028815, A028815.P810525423351225743.a, A175247, A175247.P4698162389150652956.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141138

/-! ## A141138.P17318041242775533151

`p?[A302592(n+1)]-1`
-/

namespace A141138.P17318041242775533151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141138.P17318041242775533151

namespace A141138

/-- `p?[A302592(n+1)]-1` -/
def P17318041242775533151.Spec : Prop :=
  ∀ n, P17318041242775533151.a n = A141138 n

end A141138

/-! ## A141138.P15887021588361087119

`p?[A302539(n+1)]-1`
-/

namespace A141138.P15887021588361087119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141138.P15887021588361087119

namespace A141138

/-- `p?[A302539(n+1)]-1` -/
def P15887021588361087119.Spec : Prop :=
  ∀ n, P15887021588361087119.a n = A141138 n

end A141138

/-! ## A141138.P250739931450937905

`∩[A302491(n+1), A302593(n+1)]-1`
-/

namespace A141138.P250739931450937905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A141138.P250739931450937905

namespace A141138

/-- `∩[A302491(n+1), A302593(n+1)]-1` -/
def P250739931450937905.Spec : Prop :=
  ∀ n, P250739931450937905.a n = A141138 n

end A141138

/-! ## A141138.P14765261349099581431

`record[A105574(n+1)-1]`
-/

namespace A141138.P14765261349099581431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105574 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141138.P14765261349099581431

namespace A141138

/-- `record[A105574(n+1)-1]` -/
def P14765261349099581431.Spec : Prop :=
  ∀ n, P14765261349099581431.a n = A141138 n

end A141138

/-! ## A141138.P1267251926411358344

`record[A105562(n+1)-1]`
-/

namespace A141138.P1267251926411358344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105562 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141138.P1267251926411358344

namespace A141138

/-- `record[A105562(n+1)-1]` -/
def P1267251926411358344.Spec : Prop :=
  ∀ n, P1267251926411358344.a n = A141138 n

end A141138

/-! ## A141138.P7730484851370650610

`A006093(A008578(n+1))`
-/

namespace A141138.P7730484851370650610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A008578 (n + 1)).toNat

end

end A141138.P7730484851370650610

namespace A141138

/-- `A006093(A008578(n+1))` -/
def P7730484851370650610.Spec : Prop :=
  ∀ n, P7730484851370650610.a n = A141138 n

theorem P7730484851370650610.correct : P7730484851370650610.Spec := by
  intro n
  simp only [A141138, Nat.add_sub_cancel, A141138.P7730484851370650610.a, A141138.P7125824368820176257.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A008578, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141138

/-! ## A141138.P12920910662004558649

`A006093(A028815(n)-1)`
-/

namespace A141138.P12920910662004558649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A028815 n - 1).toNat

end

end A141138.P12920910662004558649

namespace A141138

/-- `A006093(A028815(n)-1)` -/
def P12920910662004558649.Spec : Prop :=
  ∀ n, P12920910662004558649.a n = A141138 n

end A141138

/-! ## A141138.P16605753871216534467

`A006093(A158611(n+2))`
-/

namespace A141138.P16605753871216534467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A158611 (n + 2)).toNat

end

end A141138.P16605753871216534467

namespace A141138

/-- `A006093(A158611(n+2))` -/
def P16605753871216534467.Spec : Prop :=
  ∀ n, P16605753871216534467.a n = A141138 n

theorem P16605753871216534467.correct : P16605753871216534467.Spec := by
  intro n
  simp only [A141138, Nat.add_sub_cancel, A141138.P16605753871216534467.a, A141138.P7125824368820176257.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141138

/-! ## A141138.P9666577536764843676

`A006093(record[A006530(n+1)])`
-/

namespace A141138.P9666577536764843676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141138.P9666577536764843676

namespace A141138

/-- `A006093(record[A006530(n+1)])` -/
def P9666577536764843676.Spec : Prop :=
  ∀ n, P9666577536764843676.a n = A141138 n

end A141138

/-! ## A141138.P2357084352587967337

`A006093(record[A014963(n+1)])`
-/

namespace A141138.P2357084352587967337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141138.P2357084352587967337

namespace A141138

/-- `A006093(record[A014963(n+1)])` -/
def P2357084352587967337.Spec : Prop :=
  ∀ n, P2357084352587967337.a n = A141138 n

end A141138

/-! ## A141138.P10321196722131712590

`A006093(record[A020639(n+1)])`
-/

namespace A141138.P10321196722131712590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141138.P10321196722131712590

namespace A141138

/-- `A006093(record[A020639(n+1)])` -/
def P10321196722131712590.Spec : Prop :=
  ∀ n, P10321196722131712590.a n = A141138 n

end A141138

/-! ## A141138.P9829647700424212097

`A006093(record[A259153(n+1)])`
-/

namespace A141138.P9829647700424212097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141138.P9829647700424212097

namespace A141138

/-- `A006093(record[A259153(n+1)])` -/
def P9829647700424212097.Spec : Prop :=
  ∀ n, P9829647700424212097.a n = A141138 n

end A141138

/-! ## A141138.P2843161913907520051

`A000040(record[A166333(n)])-1`
-/

namespace A141138.P2843161913907520051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A141138.P2843161913907520051

namespace A141138

/-- `A000040(record[A166333(n)])-1` -/
def P2843161913907520051.Spec : Prop :=
  ∀ n, P2843161913907520051.a n = A141138 n

end A141138

/-! ## A141138.P1583687709916205660

`A006093(A130008(2*n+1))`
-/

namespace A141138.P1583687709916205660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A130008 (2 * n + 1)).toNat

end

end A141138.P1583687709916205660

namespace A141138

/-- `A006093(A130008(2*n+1))` -/
def P1583687709916205660.Spec : Prop :=
  ∀ n, P1583687709916205660.a n = A141138 n

end A141138

/-! ## A141138.P6538987657173684557

`A006093(A001747(n+1)/2)`
-/

namespace A141138.P6538987657173684557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) / 2)).toNat

end

end A141138.P6538987657173684557

namespace A141138

/-- `A006093(A001747(n+1)/2)` -/
def P6538987657173684557.Spec : Prop :=
  ∀ n, P6538987657173684557.a n = A141138 n

end A141138

/-! ## A141138.P10989349337796084061

`A006093(A167136(n+1)-n)`
-/

namespace A141138.P10989349337796084061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A167136 (n + 1) - (n : ℤ)).toNat

end

end A141138.P10989349337796084061

namespace A141138

/-- `A006093(A167136(n+1)-n)` -/
def P10989349337796084061.Spec : Prop :=
  ∀ n, P10989349337796084061.a n = A141138 n

theorem P10989349337796084061.correct : P10989349337796084061.Spec := by
  intro n
  simp only [A141138, Nat.add_sub_cancel, A141138.P10989349337796084061.a, A141138.P7125824368820176257.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A028815, A028815.P810525423351225743.a, A167136, A167136.P17162096113252504066.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141138

/-! ## A141138.P5789001727686305676

`A000040(sqrt(A280076(n+1)))-1`
-/

namespace A141138.P5789001727686305676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A280076 (n + 1) : ℝ))).toNat - 1

end

end A141138.P5789001727686305676

namespace A141138

/-- `A000040(sqrt(A280076(n+1)))-1` -/
def P5789001727686305676.Spec : Prop :=
  ∀ n, P5789001727686305676.a n = A141138 n

end A141138

/-! ## A141138.P8966927948451484381

`A040976(record[A006530(n+1)])+1`
-/

namespace A141138.P8966927948451484381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A141138.P8966927948451484381

namespace A141138

/-- `A040976(record[A006530(n+1)])+1` -/
def P8966927948451484381.Spec : Prop :=
  ∀ n, P8966927948451484381.a n = A141138 n

end A141138

/-!
# A141139: a(n) = f(f(f(f(f(n))))), where f(n) is prime(n)-1.

The programs for A141139, the canonical program `A141139.P7152767870583584372` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141139 has offset 1).

The definition of A141139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141139.P7152767870583584372

`A000040(A000040(A000040(A000040(A000040(n+1)-1)-1)-1)-1)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141139

/-- `A000040(A000040(A000040(A000040(A000040(n+1)-1)-1)-1)-1)-1` -/
def P7152767870583584372.Spec : Prop :=
  ∀ n, P7152767870583584372.a n = A141139 (n + 1)

theorem P7152767870583584372.correct : P7152767870583584372.Spec := by
  intro n
  simp only [A141139, Nat.add_sub_cancel]

end A141139

/-! ## A141139.P7707836835325056175

`A141217(A006093(n+1))`
-/

namespace A141139.P7707836835325056175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (A006093 (n + 1)).toNat

end

end A141139.P7707836835325056175

namespace A141139

/-- `A141217(A006093(n+1))` -/
def P7707836835325056175.Spec : Prop :=
  ∀ n, P7707836835325056175.a n = A141139 (n + 1)

end A141139

/-! ## A141139.P9856194113971716018

`A141217(A000040(n+1)-1)`
-/

namespace A141139.P9856194113971716018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (A000040 (n + 1) - 1).toNat

end

end A141139.P9856194113971716018

namespace A141139

/-- `A141217(A000040(n+1)-1)` -/
def P9856194113971716018.Spec : Prop :=
  ∀ n, P9856194113971716018.a n = A141139 (n + 1)

end A141139

/-! ## A141139.P15168903815200351900

`A141217(A008578(n+2)-1)`
-/

namespace A141139.P15168903815200351900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (A008578 (n + 2) - 1).toNat

end

end A141139.P15168903815200351900

namespace A141139

/-- `A141217(A008578(n+2)-1)` -/
def P15168903815200351900.Spec : Prop :=
  ∀ n, P15168903815200351900.a n = A141139 (n + 1)

end A141139

/-! ## A141139.P602400367527279580

`A141217(A055631(A000040(n+1)))`
-/

namespace A141139.P602400367527279580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (A055631 (A000040 (n + 1)).toNat).toNat

end

end A141139.P602400367527279580

namespace A141139

/-- `A141217(A055631(A000040(n+1)))` -/
def P602400367527279580.Spec : Prop :=
  ∀ n, P602400367527279580.a n = A141139 (n + 1)

end A141139

/-! ## A141139.P2945152002175965813

`A141217(eq[A000217(n), A023896(n+1)])`
-/

namespace A141139.P2945152002175965813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A141139.P2945152002175965813

namespace A141139

/-- `A141217(eq[A000217(n), A023896(n+1)])` -/
def P2945152002175965813.Spec : Prop :=
  ∀ n, P2945152002175965813.a n = A141139 (n + 1)

end A141139

/-! ## A141139.P12696423593707112904

`A141208(A140853(n+1))`
-/

namespace A141139.P12696423593707112904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (A140853 (n + 1)).toNat

end

end A141139.P12696423593707112904

namespace A141139

/-- `A141208(A140853(n+1))` -/
def P12696423593707112904.Spec : Prop :=
  ∀ n, P12696423593707112904.a n = A141139 (n + 1)

end A141139

/-! ## A141139.P8467256760362374877

`A141208(A055003(n+1)-1)`
-/

namespace A141139.P8467256760362374877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (A055003 (n + 1) - 1).toNat

end

end A141139.P8467256760362374877

namespace A141139

/-- `A141208(A055003(n+1)-1)` -/
def P8467256760362374877.Spec : Prop :=
  ∀ n, P8467256760362374877.a n = A141139 (n + 1)

end A141139

/-! ## A141139.P1621907492117093272

`A141208(A175248(n+2)-1)`
-/

namespace A141139.P1621907492117093272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (A175248 (n + 2) - 1).toNat

end

end A141139.P1621907492117093272

namespace A141139

/-- `A141208(A175248(n+2)-1)` -/
def P1621907492117093272.Spec : Prop :=
  ∀ n, P1621907492117093272.a n = A141139 (n + 1)

end A141139

/-! ## A141139.P13903459383189081682

`A141208(A000010(A055003(n+1)))`
-/

namespace A141139.P13903459383189081682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (A000010 (A055003 (n + 1)).toNat).toNat

end

end A141139.P13903459383189081682

namespace A141139

/-- `A141208(A000010(A055003(n+1)))` -/
def P13903459383189081682.Spec : Prop :=
  ∀ n, P13903459383189081682.a n = A141139 (n + 1)

end A141139

/-!
# A141140: G.f. satisfies: A(A(x)) = A(x) + A(x^2).

The programs for A141140, there is no canonical definition to state claims against.
-/

/-! ## A141140.P13542073367826092965

`A345182(A076551(n))*A363553(2*(n+2))`
-/

namespace A141140.P13542073367826092965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345182 (A076551 n).toNat * A363553 (2 * (n + 2))

end

end A141140.P13542073367826092965

/-!
# A141141: The main diagonal in the table of coefficients of iterations of G(x), where G(x) = x + x*G(G(x)) = g.f. of A030266.

The programs for A141141, there is no canonical definition to state claims against.
-/

/-! ## A141141.P9415428191350682235

`A128325(∑[4*n]+1)`
-/

namespace A141141.P9415428191350682235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128325 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A141141.P9415428191350682235

/-! ## A141141.P3065858852275959560

`∑{digits}[n, 10^#]%9*A128325(n²+(n+1)²)`
-/

namespace A141141.P3065858852275959560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9 : ℕ) : ℤ) * A128325 (n ^ 2 + (n + 1) ^ 2)

end

end A141141.P3065858852275959560

/-!
# A141142: Numerators of power series arising in random graphs.

The programs for A141142, there is no canonical definition to state claims against.
-/

/-! ## A141142.P3040170445844346880

`A113886(A048495(n))-A112469(3*n+2)`
-/

namespace A141142.P3040170445844346880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113886 (A048495 n).toNat - A112469 (3 * n + 2)

end

end A141142.P3040170445844346880

/-!
# A141143: Denominators of power series arising in random graphs.

The programs for A141143, there is no canonical definition to state claims against.
-/

/-! ## A141143.P3522585247584220208

`∏{e}[A132911(n), A282264(#)]`
-/

namespace A141143.P3522585247584220208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A282264 (Nat.factorization (f1 n).natAbs p)

end

end A141143.P3522585247584220208

/-! ## A141143.P7185155583731606169

`∏{e}[A047749(3*n+2), A221945(#)]`
-/

namespace A141143.P7185155583731606169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A221945 (Nat.factorization (f1 n).natAbs p)

end

end A141143.P7185155583731606169

/-!
# A141146: Number of linear arrangements of n blue, n red and n green items such that first and last elements are blue but there are no adjacent items of the same color.

The programs for A141146, there is no canonical definition to state claims against.
-/

/-! ## A141146.P15287494868709121214

`A110711(n+1)/3`
-/

namespace A141146.P15287494868709121214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110711 (n + 1) : ℚ) / 3

end

end A141146.P15287494868709121214

/-! ## A141146.P17028340385919817214

`A262407(n+1)-A000172(n)`
-/

namespace A141146.P17028340385919817214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262407 (n + 1) - A000172 n

end

end A141146.P17028340385919817214

/-! ## A141146.P5680139427430580869

`2*A190917(n+1)-A141147(n+1)`
-/

namespace A141146.P5680139427430580869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190917 (n + 1) - A141147 (n + 1)

end

end A141146.P5680139427430580869

/-! ## A141146.P8619614539223811146

`(A110706(n+1)/3)%A197657(n)`
-/

namespace A141146.P8619614539223811146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A110706 (n + 1) : ℚ) / 3)) (A197657 n)

end

end A141146.P8619614539223811146

/-! ## A141146.P6010750118863652456

`A110706(n+1)/3-A141147(n+1)`
-/

namespace A141146.P6010750118863652456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110706 (n + 1) : ℚ) / 3 - (A141147 (n + 1) : ℚ)

end

end A141146.P6010750118863652456

/-!
# A141147: Number of linear arrangements of n blue, n red and n green items such that the first item is blue and there are no adjacent items of the same color (first and last elements considered as adjacent).

The programs for A141147, there is no canonical definition to state claims against.
-/

/-! ## A141147.P9108088317730435123

`A110707(n+1)/3`
-/

namespace A141147.P9108088317730435123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110707 (n + 1) : ℚ) / 3

end

end A141147.P9108088317730435123

/-! ## A141147.P6536621091279392515

`(A000172(n+1)+A000172(n))*2/3`
-/

namespace A141147.P6536621091279392515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000172 (n + 1) + A000172 n) * 2 : ℚ) / 3

end

end A141147.P6536621091279392515

/-! ## A141147.P5144928942994821822

`2*A197657(n)`
-/

namespace A141147.P5144928942994821822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A197657 n

end

end A141147.P5144928942994821822

/-! ## A141147.P7562862002188348339

`A000172(n+1)+A000172(n)-A197657(n)`
-/

namespace A141147.P7562862002188348339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 (n + 1) + (A000172 n - A197657 n)

end

end A141147.P7562862002188348339

/-! ## A141147.P14107446428299618926

`2*sqrt(A209352(n+1))`
-/

namespace A141147.P14107446428299618926
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A209352 (n + 1) : ℝ)

end

end A141147.P14107446428299618926

/-!
# A141148: Number of aperiodic ternary necklaces with n beads of each color and no adjacent beads of the same color.

The programs for A141148, there is no canonical definition to state claims against.
-/

/-! ## A141148.P15381307086561528413

`A107998(A301433(n))`
-/

namespace A141148.P15381307086561528413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (A301433 n).toNat

end

end A141148.P15381307086561528413

/-!
# A141150: Number of hypohamiltonian graphs on n vertices.

The programs for A141150, there is no canonical definition to state claims against.
-/

/-! ## A141150.P10979535975571159992

`A139761(A241061(n))-A130722(A241065(n))`
-/

namespace A141150.P10979535975571159992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 (A241061 n).toNat - A130722 (A241065 n).toNat

end

end A141150.P10979535975571159992

/-!
# A141151: L.g.f.: A(x) = log( Sum_{n>=0} n^n*x^n ) = Sum_{n>=1} a(n)*x^n/n.

The programs for A141151, there is no canonical definition to state claims against.
-/

/-! ## A141151.P14824201710067072594

`A306628(n+1)/n!`
-/

namespace A141151.P14824201710067072594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306628 (n + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A141151.P14824201710067072594

/-! ## A141151.P16466255967011869582

`A306628(n+1)/A000142(n)`
-/

namespace A141151.P16466255967011869582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306628 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A141151.P16466255967011869582

/-! ## A141151.P5269442059522501892

`abs(A306628(n+1)/A133942(n))`
-/

namespace A141151.P5269442059522501892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A306628 (n + 1) : ℚ) / (A133942 n : ℚ)|

end

end A141151.P5269442059522501892

/-! ## A141151.P14010598879731758273

`A306628(n+1)/A028421(∑[n])`
-/

namespace A141151.P14010598879731758273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306628 (n + 1) : ℚ) / (A028421 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A141151.P14010598879731758273

/-!
# A141152: L.g.f.: A(x) = log( 1 + Sum_{n>=1} n^(n-1)*x^n ) = Sum_{n>=1} a(n)*x^n/n.

The programs for A141152, there is no canonical definition to state claims against.
-/

/-! ## A141152.P1865791075666507601

`A005100(A217799(n)+A012415(n))`
-/

namespace A141152.P1865791075666507601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (A217799 n + A012415 n).toNat

end

end A141152.P1865791075666507601

/-!
# A141153: G.f.: A(x) = Sum_{n>=1} a(n-1)*x^(2*n)/(2*n) = log( Sum_{n>=0} a(n)*x^(2*n)/(n!*2^n) ).

The programs for A141153, there is no canonical definition to state claims against.
-/

/-! ## A141153.P17129698360572055480

`A111225(n^floor((n/2)²))`
-/

namespace A141153.P17129698360572055480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊((n : ℚ) / 2) ^ 2⌋ : ℤ))).toNat

end

end A141153.P17129698360572055480

/-!
# A141154: L.g.f.: A(x) = log( 1 + Sum_{n>=1} (n-1)!*x^n ) = Sum_{n>=1} a(n)*x^n/n.

The programs for A141154, there is no canonical definition to state claims against.
-/

/-! ## A141154.P8358259988286419215

`A052186(n+1)+A052186(n)`
-/

namespace A141154.P8358259988286419215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052186 (n + 1) + A052186 n

end

end A141154.P8358259988286419215

/-! ## A141154.P5284304214800159987

`A145878(A000217(n+1))+A145878(∑[n])`
-/

namespace A141154.P5284304214800159987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145878 (A000217 (n + 1)).toNat + A145878 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141154.P5284304214800159987

/-! ## A141154.P7740280316783764474

`A144108(A000217(n+1))+A144108(∑[n])`
-/

namespace A141154.P7740280316783764474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144108 (A000217 (n + 1)).toNat + A144108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141154.P7740280316783764474

/-!
# A141155: Triangle read by rows: T(n,k) = Sum_{i=k..n} A000041(i).

The programs for A141155, there is no canonical definition to state claims against.
-/

/-! ## A141155.P18145577757546355848

`A141210(n)/A140207(n)`
-/

namespace A141155.P18145577757546355848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141210 n : ℚ) / (A140207 n : ℚ)

end

end A141155.P18145577757546355848

/-! ## A141155.P6245326801598563370

`A141210(n)/A000041(A002262(n))`
-/

namespace A141155.P6245326801598563370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141210 n : ℚ) / (A000041 (A002262 n).toNat : ℚ)

end

end A141155.P6245326801598563370

/-! ## A141155.P4502933752578624347

`A141210(n)/A000041(sqrt(A143844(n)))`
-/

namespace A141155.P4502933752578624347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141210 n : ℚ) / (A000041 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))).toNat : ℚ)

end

end A141155.P4502933752578624347

/-! ## A141155.P10797200896066249138

`A141210(n)/A000041(log2(A059268(n)))`
-/

namespace A141155.P10797200896066249138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141210 n : ℚ) / (A000041 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat : ℚ)

end

end A141155.P10797200896066249138

/-! ## A141155.P16230327085375579264

`A141210(n)/A000041(A144328(n+1))`
-/

namespace A141155.P16230327085375579264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141210 n : ℚ) / (A000041 (A144328 (n + 1)).toNat : ℚ)

end

end A141155.P16230327085375579264

/-! ## A141155.P7166559133055342771

`A141210(n)/A000041(val(A036561(n), 3))`
-/

namespace A141155.P7166559133055342771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141210 n : ℚ) / (A000041 (SequenceMachineLib.valuation (A036561 n).toNat 3) : ℚ)

end

end A141155.P7166559133055342771

/-! ## A141155.P4418231222265239722

`A141210(n)/A000041(A128227(abs(1-n)))`
-/

namespace A141155.P4418231222265239722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141210 n : ℚ) / (A000041 (A128227 |1 - (n : ℤ)|.toNat).toNat : ℚ)

end

end A141155.P4418231222265239722

/-! ## A141155.P16317741785606985719

`A141210(n)/A000041(A002260(n+1)-1)`
-/

namespace A141155.P16317741785606985719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141210 n : ℚ) / (A000041 (A002260 (n + 1) - 1).toNat : ℚ)

end

end A141155.P16317741785606985719

/-! ## A141155.P7150866327812040989

`A141210(n)/A000041(2*n-A061885(n))`
-/

namespace A141155.P7150866327812040989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141210 n : ℚ) / (A000041 ((2 * n : ℤ) - A061885 n).toNat : ℚ)

end

end A141155.P7150866327812040989

/-! ## A141155.P13563692009235841070

`A141210(n)/A000041(n-A061885(n)+n)`
-/

namespace A141155.P13563692009235841070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141210 n : ℚ) / (A000041 ((n : ℤ) - A061885 n + (n : ℤ)).toNat : ℚ)

end

end A141155.P13563692009235841070

/-!
# A141156: Row sums of triangle A141155.

The programs for A141156, there is no canonical definition to state claims against.
-/

/-! ## A141156.P16024103143955902567

`∑[A228816(n+1)]`
-/

namespace A141156.P16024103143955902567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P16024103143955902567

/-! ## A141156.P8921849322789027443

`∑[(n+1)*A000041(n)]`
-/

namespace A141156.P8921849322789027443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P8921849322789027443

/-! ## A141156.P2342458479356928048

`∑[(n+1)*∑[A002865(n)]]`
-/

namespace A141156.P2342458479356928048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P2342458479356928048

/-! ## A141156.P609285112342956093

`∑[(n+1)*A139582(n)/2]`
-/

namespace A141156.P609285112342956093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A139582 n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P609285112342956093

/-! ## A141156.P5484491127343001868

`∑[(A133041(n)-n)*(n+1)]`
-/

namespace A141156.P5484491127343001868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133041 n - (n : ℤ)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P5484491127343001868

/-! ## A141156.P9315638618447762806

`∑[∑[A085811(n+3)]*(n+1)]`
-/

namespace A141156.P9315638618447762806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P9315638618447762806

/-! ## A141156.P2123191719324889982

`∑[A066186(n)+A000041(n)]`
-/

namespace A141156.P2123191719324889982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n + A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P2123191719324889982

/-! ## A141156.P1049448688496377778

`A000070(n)+∑[A066186(n)]`
-/

namespace A141156.P1049448688496377778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P1049448688496377778

/-! ## A141156.P17734496848474864379

`∑[A066186(n)+∑[A002865(n)]]`
-/

namespace A141156.P17734496848474864379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P17734496848474864379

/-! ## A141156.P2213657172693780386

`∑[A066186(n)+A139582(n)/2]`
-/

namespace A141156.P2213657172693780386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066186 n : ℚ) + (A139582 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P2213657172693780386

/-! ## A141156.P4583574454223668037

`∑[A000041(n)+A220909(n)/2]`
-/

namespace A141156.P4583574454223668037
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) + (A220909 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P4583574454223668037

/-! ## A141156.P1755245355127586403

`A000070(n)+∑[A220909(n)/2]`
-/

namespace A141156.P1755245355127586403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220909 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000070 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P1755245355127586403

/-! ## A141156.P5602048073455826289

`∑[A066186(n)+A133041(n)-n]`
-/

namespace A141156.P5602048073455826289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n + (A133041 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P5602048073455826289

/-! ## A141156.P140528404089771818

`∑[(A039900(n)+A003106(n))*(n+1)]`
-/

namespace A141156.P140528404089771818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039900 n + A003106 n) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P140528404089771818

/-! ## A141156.P1950332391772718863

`∑[(n+1)*(A295341(n)+A000726(n))]`
-/

namespace A141156.P1950332391772718863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A295341 n + A000726 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P1950332391772718863

/-! ## A141156.P1891587334280974567

`∑[(A052810(n)-A057427(n))*(n+1)]`
-/

namespace A141156.P1891587334280974567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052810 n - A057427 n) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P1891587334280974567

/-! ## A141156.P16803582401881608861

`∑[A000837(n)+A066186(n)+A018783(n)]`
-/

namespace A141156.P16803582401881608861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A066186 n + A018783 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P16803582401881608861

/-! ## A141156.P6253235443515255079

`∑[A003106(n)+A066186(n)+A039900(n)]`
-/

namespace A141156.P6253235443515255079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n + (A066186 n + A039900 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P6253235443515255079

/-! ## A141156.P13504494918999873653

`∑[A000009(n)+A066186(n)+A047967(n)]`
-/

namespace A141156.P13504494918999873653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A066186 n + A047967 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P13504494918999873653

/-! ## A141156.P17707459486065151325

`∑[A032741(n)+A167934(n)+A066186(n)]`
-/

namespace A141156.P17707459486065151325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + (A167934 n + A066186 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141156.P17707459486065151325

/-!
# A141157: Triangle read by rows, A000012 * A140207.

The programs for A141157, there is no canonical definition to state claims against.
-/

/-! ## A141157.P13179074572530563474

`A004736(n+1)*A140207(n)`
-/

namespace A141157.P13179074572530563474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A140207 n

end

end A141157.P13179074572530563474

/-! ## A141157.P9992527234715956539

`(A025581(n)+1)*A140207(n)`
-/

namespace A141157.P9992527234715956539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A140207 n

end

end A141157.P9992527234715956539

/-! ## A141157.P2242861023577865239

`A000041(A002262(n))*A004736(n+1)`
-/

namespace A141157.P2242861023577865239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002262 n).toNat * A004736 (n + 1)

end

end A141157.P2242861023577865239

/-! ## A141157.P14603762281432187033

`(A025581(n)+1)*A000041(A002262(n))`
-/

namespace A141157.P14603762281432187033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A000041 (A002262 n).toNat

end

end A141157.P14603762281432187033

/-! ## A141157.P12506001675117969882

`A002260(A038722(n+1))*A140207(n)`
-/

namespace A141157.P12506001675117969882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat * A140207 n

end

end A141157.P12506001675117969882

/-! ## A141157.P9407705907560883285

`A000041(A144328(n+1))*A004736(n+1)`
-/

namespace A141157.P9407705907560883285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A144328 (n + 1)).toNat * A004736 (n + 1)

end

end A141157.P9407705907560883285

/-! ## A141157.P3513446141872476915

`A000041(n-A057944(n))*A004737(A004201(n+1))`
-/

namespace A141157.P3513446141872476915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((n : ℤ) - A057944 n).toNat * A004737 (A004201 (n + 1)).toNat

end

end A141157.P3513446141872476915

/-! ## A141157.P4097728428522151372

`A000041(2*n-A061885(n))*A004737(A004201(n+1))`
-/

namespace A141157.P4097728428522151372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((2 * n : ℤ) - A061885 n).toNat * A004737 (A004201 (n + 1)).toNat

end

end A141157.P4097728428522151372

/-! ## A141157.P12233066212275846762

`A340011(A212013(n+1))`
-/

namespace A141157.P12233066212275846762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340011 (A212013 (n + 1)).toNat

end

end A141157.P12233066212275846762

/-! ## A141157.P5597687612574207656

`A072078(A140303(n))*A140207(n)`
-/

namespace A141157.P5597687612574207656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (A140303 n).toNat * A140207 n

end

end A141157.P5597687612574207656

/-!
# A141160: Primes of the form -x^2 + 3*x*y + 3*y^2 (as well as of the form 5*x^2 + 9*x*y + 3*y^2).

The programs for A141160, the canonical program `A141160.P1294984761903642852` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141160 has offset 1).

The definition of A141160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141160.P8446140789197326323

`∩[A003625(n+1), A038893(n+1)]`
-/

namespace A141160.P8446140789197326323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P8446140789197326323

namespace A141160

/-- `∩[A003625(n+1), A038893(n+1)]` -/
def P8446140789197326323.Spec : Prop :=
  ∀ n, (P8446140789197326323.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P1294984761903642852

`∩[A003625(n+1), A045309(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141160

/-- `∩[A003625(n+1), A045309(n+1)]` -/
def P1294984761903642852.Spec : Prop :=
  ∀ n, (P1294984761903642852.a n : ℤ) = A141160 (n + 1)

theorem P1294984761903642852.correct : P1294984761903642852.Spec := by
  intro n
  simp only [A141160, Nat.add_sub_cancel]

end A141160

/-! ## A141160.P13133013582013392122

`∩[A003625(n+1), A045410(n+1)]`
-/

namespace A141160.P13133013582013392122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P13133013582013392122

namespace A141160

/-- `∩[A003625(n+1), A045410(n+1)]` -/
def P13133013582013392122.Spec : Prop :=
  ∀ n, (P13133013582013392122.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P9741652751241704312

`∩[A038893(n+1), A045309(n+1)]`
-/

namespace A141160.P9741652751241704312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P9741652751241704312

namespace A141160

/-- `∩[A038893(n+1), A045309(n+1)]` -/
def P9741652751241704312.Spec : Prop :=
  ∀ n, (P9741652751241704312.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P11275644078158884739

`∩[A038893(n+1), A045410(n+1)]`
-/

namespace A141160.P11275644078158884739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P11275644078158884739

namespace A141160

/-- `∩[A038893(n+1), A045410(n+1)]` -/
def P11275644078158884739.Spec : Prop :=
  ∀ n, (P11275644078158884739.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P5694949536074568266

`∩[A045309(n+1), A045399(n+1)]`
-/

namespace A141160.P5694949536074568266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P5694949536074568266

namespace A141160

/-- `∩[A045309(n+1), A045399(n+1)]` -/
def P5694949536074568266.Spec : Prop :=
  ∀ n, (P5694949536074568266.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P8676417124853868056

`∩[A045399(n+1), A045410(n+1)]`
-/

namespace A141160.P8676417124853868056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P8676417124853868056

namespace A141160

/-- `∩[A045399(n+1), A045410(n+1)]` -/
def P8676417124853868056.Spec : Prop :=
  ∀ n, (P8676417124853868056.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P13130107467014804924

`∩[A003625(n+1), A391370(n+1)]`
-/

namespace A141160.P13130107467014804924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P13130107467014804924

namespace A141160

/-- `∩[A003625(n+1), A391370(n+1)]` -/
def P13130107467014804924.Spec : Prop :=
  ∀ n, (P13130107467014804924.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P8896571390514832689

`∩[A045309(n+1), A391370(n+1)]`
-/

namespace A141160.P8896571390514832689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P8896571390514832689

namespace A141160

/-- `∩[A045309(n+1), A391370(n+1)]` -/
def P8896571390514832689.Spec : Prop :=
  ∀ n, (P8896571390514832689.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P7684352852874053453

`∩[A045410(n+1), A391370(n+1)]`
-/

namespace A141160.P7684352852874053453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P7684352852874053453

namespace A141160

/-- `∩[A045410(n+1), A391370(n+1)]` -/
def P7684352852874053453.Spec : Prop :=
  ∀ n, (P7684352852874053453.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P4441057182678547267

`∩[A003625(n+1), A066501(n+1)]`
-/

namespace A141160.P4441057182678547267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P4441057182678547267

namespace A141160

/-- `∩[A003625(n+1), A066501(n+1)]` -/
def P4441057182678547267.Spec : Prop :=
  ∀ n, (P4441057182678547267.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P6899479579234682024

`∩[A038893(n+1), A066501(n+1)]`
-/

namespace A141160.P6899479579234682024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P6899479579234682024

namespace A141160

/-- `∩[A038893(n+1), A066501(n+1)]` -/
def P6899479579234682024.Spec : Prop :=
  ∀ n, (P6899479579234682024.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P5681250969608333200

`∩[A045399(n+1), A066501(n+1)]`
-/

namespace A141160.P5681250969608333200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P5681250969608333200

namespace A141160

/-- `∩[A045399(n+1), A066501(n+1)]` -/
def P5681250969608333200.Spec : Prop :=
  ∀ n, (P5681250969608333200.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P9807698493131672698

`∩[A003625(n+1), A074243(n+1)]`
-/

namespace A141160.P9807698493131672698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P9807698493131672698

namespace A141160

/-- `∩[A003625(n+1), A074243(n+1)]` -/
def P9807698493131672698.Spec : Prop :=
  ∀ n, (P9807698493131672698.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P15174488981402526566

`∩[A038893(n+1), A074243(n+1)]`
-/

namespace A141160.P15174488981402526566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P15174488981402526566

namespace A141160

/-- `∩[A038893(n+1), A074243(n+1)]` -/
def P15174488981402526566.Spec : Prop :=
  ∀ n, (P15174488981402526566.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P11047138977854486516

`∩[A045399(n+1), A074243(n+1)]`
-/

namespace A141160.P11047138977854486516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P11047138977854486516

namespace A141160

/-- `∩[A045399(n+1), A074243(n+1)]` -/
def P11047138977854486516.Spec : Prop :=
  ∀ n, (P11047138977854486516.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P16102726823544542030

`∩[A074243(n+1), A391370(n+1)]`
-/

namespace A141160.P16102726823544542030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P16102726823544542030

namespace A141160

/-- `∩[A074243(n+1), A391370(n+1)]` -/
def P16102726823544542030.Spec : Prop :=
  ∀ n, (P16102726823544542030.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P12970282586726982625

`∩[A045410(n+1), A042952(n)]`
-/

namespace A141160.P12970282586726982625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P12970282586726982625

namespace A141160

/-- `∩[A045410(n+1), A042952(n)]` -/
def P12970282586726982625.Spec : Prop :=
  ∀ n, (P12970282586726982625.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P7291442289323259699

`∩[A003625(n+1), A035260(n+1)]`
-/

namespace A141160.P7291442289323259699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P7291442289323259699

namespace A141160

/-- `∩[A003625(n+1), A035260(n+1)]` -/
def P7291442289323259699.Spec : Prop :=
  ∀ n, (P7291442289323259699.a n : ℤ) = A141160 (n + 1)

end A141160

/-! ## A141160.P12690131329279828718

`∩[A035260(n+1), A045309(n+1)]`
-/

namespace A141160.P12690131329279828718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141160.P12690131329279828718

namespace A141160

/-- `∩[A035260(n+1), A045309(n+1)]` -/
def P12690131329279828718.Spec : Prop :=
  ∀ n, (P12690131329279828718.a n : ℤ) = A141160 (n + 1)

end A141160

/-!
# A141161: Primes of the form 4*x^2+6*x*y-7*y^2.

The programs for A141161, there is no canonical definition to state claims against.
-/

/-! ## A141161.P6546374134217464100

`p?[A309133(n+1)]`
-/

namespace A141161.P6546374134217464100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141161.P6546374134217464100

/-! ## A141161.P483433350487950638

`record[p?[A309133(A052938(n))]]`
-/

namespace A141161.P483433350487950638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309133 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141161.P483433350487950638

/-! ## A141161.P9079929502508534751

`p?[record[A309133(A106466(n))]]`
-/

namespace A141161.P9079929502508534751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309133 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141161.P9079929502508534751

/-! ## A141161.P8396225690980737115

`record[A006530(A309133(n+2))]`
-/

namespace A141161.P8396225690980737115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A309133 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141161.P8396225690980737115

/-! ## A141161.P6820650269215383676

`filter[A309133(n+1), A358771(#)]`
-/

namespace A141161.P6820650269215383676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A141161.P6820650269215383676

/-!
# A141162: Smallest k such that lambda(k) = n, or 0 if there is no such k.

The programs for A141162, there is no canonical definition to state claims against.
-/

/-! ## A141162.P6360148129647724687

`A213000(A341825(n+1))*A341860(n+1)`
-/

namespace A141162.P6360148129647724687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213000 (A341825 (n + 1)).toNat * A341860 (n + 1)

end

end A141162.P6360148129647724687

/-!
# A141163: Primes of the form x^2+12*x*y-y^2.

The programs for A141163, there is no canonical definition to state claims against.
-/

/-! ## A141163.P17642772981337346041

`p?[A309134(n+1)]`
-/

namespace A141163.P17642772981337346041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141163.P17642772981337346041

/-! ## A141163.P6875323229527625368

`p?[record[A309134(A028920(n))]]`
-/

namespace A141163.P6875323229527625368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309134 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141163.P6875323229527625368

/-! ## A141163.P4128148088966953837

`p?[record[A309134(A052938(n))]]`
-/

namespace A141163.P4128148088966953837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309134 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141163.P4128148088966953837

/-! ## A141163.P13413558409911675225

`filter[A309134(n+2), A010051(#)]`
-/

namespace A141163.P13413558409911675225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309134 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141163.P13413558409911675225

/-!
# A141164: Numbers having exactly 1 divisor of the form 8*k + 7.

The programs for A141164, the canonical program `A141164.P6885543074851642575` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141164 has offset 1).

The definition of A141164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2878 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141164.P6885543074851642575

`eq[1, A188172(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141164

/-- `eq[1, A188172(n+1)]+1` -/
def P6885543074851642575.Spec : Prop :=
  ∀ n, (P6885543074851642575.a n : ℤ) = A141164 (n + 1)

theorem P6885543074851642575.correct : P6885543074851642575.Spec := by
  intro n
  simp only [A141164, Nat.add_sub_cancel]

end A141164

/-! ## A141164.P12607380682573406294

`eq[n, n-a(A188172(n))]` with `a(0)=1`
-/

namespace A141164.P12607380682573406294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (A188172 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141164.P12607380682573406294

namespace A141164

/-- `eq[n, n-a(A188172(n))]` -/
def P12607380682573406294.Spec : Prop :=
  ∀ n, (P12607380682573406294.a n : ℤ) = A141164 (n + 1)

end A141164

/-! ## A141164.P2719938634148466516

`eq[1, A236384(a(A188172(n)))]` with `a(0)=7, a(1)=3`
-/

namespace A141164.P2719938634148466516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, 3] fun n f2 =>
  A236384 (f2 (A188172 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141164.P2719938634148466516

namespace A141164

/-- `eq[1, A236384(a(A188172(n)))]` -/
def P2719938634148466516.Spec : Prop :=
  ∀ n, (P2719938634148466516.a n : ℤ) = A141164 (n + 1)

end A141164

/-! ## A141164.P18412980584771238684

`eq[1, A250666(a(A188172(n)))]` with `a(0)=9, a(1)=3`
-/

namespace A141164.P18412980584771238684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [9, 3] fun n f2 =>
  A250666 (f2 (A188172 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141164.P18412980584771238684

namespace A141164

/-- `eq[1, A250666(a(A188172(n)))]` -/
def P18412980584771238684.Spec : Prop :=
  ∀ n, (P18412980584771238684.a n : ℤ) = A141164 (n + 1)

end A141164

/-! ## A141164.P10397310896080043191

`eq[1, A188172(A008486(n)-n)]`
-/

namespace A141164.P10397310896080043191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188172 (A008486 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141164.P10397310896080043191

namespace A141164

/-- `eq[1, A188172(A008486(n)-n)]` -/
def P10397310896080043191.Spec : Prop :=
  ∀ n, (P10397310896080043191.a n : ℤ) = A141164 (n + 1)

end A141164

/-! ## A141164.P16109588981191822097

`eq[1, A188172(A008574(n))]`
-/

namespace A141164.P16109588981191822097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188172 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141164.P16109588981191822097

namespace A141164

/-- `eq[1, A188172(A008574(n))]` -/
def P16109588981191822097.Spec : Prop :=
  ∀ n, (P16109588981191822097.a n : ℤ) = A141164 (n + 1)

end A141164

/-!
# A141165: Primes of the form 9*x^2+7*x*y-5*y^2.

The programs for A141165, there is no canonical definition to state claims against.
-/

/-! ## A141165.P14841586953872880507

`p?[A309135(n+1)]`
-/

namespace A141165.P14841586953872880507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141165.P14841586953872880507

/-! ## A141165.P10163569825098758717

`p?[record[A309135(A106466(n))]]`
-/

namespace A141165.P10163569825098758717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309135 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141165.P10163569825098758717

/-! ## A141165.P4637559239706933560

`p?[record[A309135(A292266(n))]]`
-/

namespace A141165.P4637559239706933560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309135 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141165.P4637559239706933560

/-! ## A141165.P1922040635349286583

`record[A006530(A309135(n+2))]`
-/

namespace A141165.P1922040635349286583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A309135 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141165.P1922040635349286583

/-! ## A141165.P11280107437513289495

`filter[A309135(n+1), A358771(#)]`
-/

namespace A141165.P11280107437513289495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A141165.P11280107437513289495

/-!
# A141166: Primes of the form x^2+15*x*y-y^2.

The programs for A141166, there is no canonical definition to state claims against.
-/

/-! ## A141166.P15474571350556946314

`p?[A309136(n+1)]`
-/

namespace A141166.P15474571350556946314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141166.P15474571350556946314

/-! ## A141166.P10932421564750820831

`filter[A309136(n+3), A010051(#)]`
-/

namespace A141166.P10932421564750820831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141166.P10932421564750820831

/-! ## A141166.P5973356674318195253

`∩[A000040(n+1), A309136(n+1)]`
-/

namespace A141166.P5973356674318195253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P5973356674318195253

/-! ## A141166.P16790975845569609315

`∩[A004139(n+1), A309136(n+1)]`
-/

namespace A141166.P16790975845569609315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P16790975845569609315

/-! ## A141166.P9355893934832658065

`∩[A045319(n+1), A309136(n+1)]`
-/

namespace A141166.P9355893934832658065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P9355893934832658065

/-! ## A141166.P2158184422173784380

`∩[A045344(n+1), A309136(n+1)]`
-/

namespace A141166.P2158184422173784380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P2158184422173784380

/-! ## A141166.P11061086035295312331

`∩[A053813(n+1), A309136(n+1)]`
-/

namespace A141166.P11061086035295312331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P11061086035295312331

/-! ## A141166.P15867836533516465025

`∩[A065091(n+1), A309136(n+1)]`
-/

namespace A141166.P15867836533516465025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P15867836533516465025

/-! ## A141166.P16710899635587180858

`∩[A065396(n+1), A309136(n+1)]`
-/

namespace A141166.P16710899635587180858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P16710899635587180858

/-! ## A141166.P6180926819101857093

`∩[A066047(n+1), A309136(n+1)]`
-/

namespace A141166.P6180926819101857093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P6180926819101857093

/-! ## A141166.P18280772715025412651

`∩[A070957(n+1), A309136(n+1)]`
-/

namespace A141166.P18280772715025412651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P18280772715025412651

/-! ## A141166.P6895468135921860039

`∩[A071621(n+1), A309136(n+1)]`
-/

namespace A141166.P6895468135921860039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P6895468135921860039

/-! ## A141166.P10858651064534606767

`∩[A078138(n+1), A309136(n+1)]`
-/

namespace A141166.P10858651064534606767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P10858651064534606767

/-! ## A141166.P6278441370575510546

`∩[A085118(n+1), A309136(n+1)]`
-/

namespace A141166.P6278441370575510546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P6278441370575510546

/-! ## A141166.P865110034811412231

`∩[A087749(n+1), A309136(n+1)]`
-/

namespace A141166.P865110034811412231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P865110034811412231

/-! ## A141166.P13826928659840158636

`∩[A106118(n+1), A309136(n+1)]`
-/

namespace A141166.P13826928659840158636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P13826928659840158636

/-! ## A141166.P15977848656532812042

`∩[A106119(n+1), A309136(n+1)]`
-/

namespace A141166.P15977848656532812042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P15977848656532812042

/-! ## A141166.P15761835387884362468

`∩[A108719(n+1), A309136(n+1)]`
-/

namespace A141166.P15761835387884362468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P15761835387884362468

/-! ## A141166.P15170797418817532580

`∩[A116974(n+1), A309136(n+1)]`
-/

namespace A141166.P15170797418817532580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P15170797418817532580

/-! ## A141166.P8795883280196757883

`∩[A138837(n+1), A309136(n+1)]`
-/

namespace A141166.P8795883280196757883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141166.P8795883280196757883

/-!
# A141167: Primes of the form 8*x^2+x*y-8*y^2.

The programs for A141167, there is no canonical definition to state claims against.
-/

/-! ## A141167.P15915112121929850250

`p?[A243180(n+1)]`
-/

namespace A141167.P15915112121929850250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141167.P15915112121929850250

/-! ## A141167.P236807335580111386

`p?[record[A243180(A126759(n))]]`
-/

namespace A141167.P236807335580111386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141167.P236807335580111386

/-! ## A141167.P3135271151040672425

`p?[record[A243180(A152271(n))]]`
-/

namespace A141167.P3135271151040672425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141167.P3135271151040672425

/-! ## A141167.P11021898374107756157

`p?[record[A243180(A286378(n))]]`
-/

namespace A141167.P11021898374107756157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141167.P11021898374107756157

/-! ## A141167.P4416934909672750434

`filter[A243180(n+2), A010051(#)]`
-/

namespace A141167.P4416934909672750434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141167.P4416934909672750434

/-! ## A141167.P8230820197392190223

`∩[A000040(n+1), A243180(n+1)]`
-/

namespace A141167.P8230820197392190223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141167.P8230820197392190223

/-! ## A141167.P12383073905461853602

`∩[A004139(n+1), A243180(n+1)]`
-/

namespace A141167.P12383073905461853602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141167.P12383073905461853602

/-! ## A141167.P17730595874165329283

`∩[A045319(n+1), A243180(n+1)]`
-/

namespace A141167.P17730595874165329283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141167.P17730595874165329283

/-! ## A141167.P16661244977572661060

`∩[A045344(n+1), A243180(n+1)]`
-/

namespace A141167.P16661244977572661060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141167.P16661244977572661060

/-! ## A141167.P2778353776705243191

`∩[A065091(n+1), A243180(n+1)]`
-/

namespace A141167.P2778353776705243191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141167.P2778353776705243191

/-! ## A141167.P13596270480580277123

`∩[A071621(n+1), A243180(n+1)]`
-/

namespace A141167.P13596270480580277123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141167.P13596270480580277123

/-! ## A141167.P15824275703922798928

`∩[A078138(n+1), A243180(n+1)]`
-/

namespace A141167.P15824275703922798928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141167.P15824275703922798928

/-! ## A141167.P15779478152712624710

`∩[A106118(n+1), A243180(n+1)]`
-/

namespace A141167.P15779478152712624710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141167.P15779478152712624710

/-! ## A141167.P10884821125442061385

`∩[A116974(n+1), A243180(n+1)]`
-/

namespace A141167.P10884821125442061385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141167.P10884821125442061385

/-! ## A141167.P3047469218215471977

`∩[A138837(n+1), A243180(n+1)]`
-/

namespace A141167.P3047469218215471977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141167.P3047469218215471977

/-! ## A141167.P6875614704829919190

`∩[A157996(n+1), A243180(n+1)]`
-/

namespace A141167.P6875614704829919190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141167.P6875614704829919190

/-! ## A141167.P6941204696260120647

`∩[A215848(n+1), A243180(n+1)]`
-/

namespace A141167.P6941204696260120647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141167.P6941204696260120647

/-! ## A141167.P3931308914256768440

`∩[A216495(n+1), A243180(n+1)]`
-/

namespace A141167.P3931308914256768440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141167.P3931308914256768440

/-! ## A141167.P3433361688904097065

`∩[A216887(n+1), A243180(n+1)]`
-/

namespace A141167.P3433361688904097065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141167.P3433361688904097065

/-!
# A141168: Primes of the form 4*x^2+9*x*y-11*y^2.

The programs for A141168, there is no canonical definition to state claims against.
-/

/-! ## A141168.P9580954022017566374

`p?[A243181(n+1)]`
-/

namespace A141168.P9580954022017566374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141168.P9580954022017566374

/-! ## A141168.P8705444626375620702

`record[A006530(A243181(n+2))]`
-/

namespace A141168.P8705444626375620702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A243181 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141168.P8705444626375620702

/-! ## A141168.P16052670472289729650

`record[A020639(A243181(n+3))]`
-/

namespace A141168.P16052670472289729650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A243181 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141168.P16052670472289729650

/-! ## A141168.P13936581434184013088

`filter[A243181(n+2), A010051(#)]`
-/

namespace A141168.P13936581434184013088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243181 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141168.P13936581434184013088

/-! ## A141168.P2985780430449567633

`filter[A243181(n+2), A080339(#)]`
-/

namespace A141168.P2985780430449567633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243181 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A141168.P2985780430449567633

/-! ## A141168.P8976107907835517849

`∩[A000040(n+1), A243181(n+1)]`
-/

namespace A141168.P8976107907835517849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141168.P8976107907835517849

/-! ## A141168.P11248537014992715584

`∩[A008578(n+1), A243181(n+1)]`
-/

namespace A141168.P11248537014992715584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141168.P11248537014992715584

/-! ## A141168.P1928931919841670057

`∩[A045319(n+1), A243181(n+1)]`
-/

namespace A141168.P1928931919841670057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141168.P1928931919841670057

/-! ## A141168.P9571471888749225268

`∩[A045344(n+1), A243181(n+1)]`
-/

namespace A141168.P9571471888749225268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141168.P9571471888749225268

/-! ## A141168.P16905444829911959242

`∩[A116974(n+1), A243181(n+1)]`
-/

namespace A141168.P16905444829911959242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141168.P16905444829911959242

/-! ## A141168.P14897935873330451351

`∩[A243181(n+1), A324050(n+1)]`
-/

namespace A141168.P14897935873330451351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141168.P14897935873330451351

/-! ## A141168.P17687439637847445457

`∩[A243181(n+1), A326715(n+1)]`
-/

namespace A141168.P17687439637847445457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141168.P17687439637847445457

/-! ## A141168.P6403843133313883229

`∩[A243181(n+1), A348440(n+1)]`
-/

namespace A141168.P6403843133313883229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141168.P6403843133313883229

/-! ## A141168.P8694971280405809606

`∩[A243181(n+1), A372059(n+1)]`
-/

namespace A141168.P8694971280405809606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141168.P8694971280405809606

/-! ## A141168.P7693565699316298738

`∩[A240960(n+1), A243181(n+1)]`
-/

namespace A141168.P7693565699316298738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141168.P7693565699316298738

/-! ## A141168.P7340203555481018551

`p?[A006370(A243180(n+1))]`
-/

namespace A141168.P7340203555481018551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A243180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141168.P7340203555481018551

/-! ## A141168.P17531325807125508637

`p?[A073675(A243180(n+2))]`
-/

namespace A141168.P17531325807125508637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (A243180 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141168.P17531325807125508637

/-! ## A141168.P9988129141430371116

`p?[A152271(A243180(n+2)-1)]`
-/

namespace A141168.P9988129141430371116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A243180 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141168.P9988129141430371116

/-!
# A141169: Triangle of Fibonacci numbers, read by rows: T(n,k) = A000045(k), 0<=k<=n.

The programs for A141169, the canonical program `A141169.P5864777374650614929` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141169 has offset 0).

The definition of A141169 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(col(n))` (program `A141169.P5864777374650614929`, by `A141169.P5864777374650614929.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141169.P5864777374650614929

`A000045(col(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141169

/-- `A000045(col(n))` -/
def P5864777374650614929.Spec : Prop :=
  ∀ n, P5864777374650614929.a n = A141169 n

theorem P5864777374650614929.correct : P5864777374650614929.Spec := by
  intro n
  simp only [A141169]

end A141169

/-! ## A141169.P7422930387108914318

`A000045(n-C(∑[char[∑[n]]], 2))`
-/

namespace A141169.P7422930387108914318
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A141169.P7422930387108914318

namespace A141169

/-- `A000045(n-C(∑[char[∑[n]]], 2))` -/
def P7422930387108914318.Spec : Prop :=
  ∀ n, P7422930387108914318.a n = A141169 n

end A141169

/-! ## A141169.P645474415276948061

`A000045(A002262(n))`
-/

namespace A141169.P645474415276948061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n).toNat

end

end A141169.P645474415276948061

namespace A141169

/-- `A000045(A002262(n))` -/
def P645474415276948061.Spec : Prop :=
  ∀ n, P645474415276948061.a n = A141169 n

end A141169

/-! ## A141169.P9942407240201388043

`A017125(A112367(n))`
-/

namespace A141169.P9942407240201388043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 (A112367 n).toNat

end

end A141169.P9942407240201388043

namespace A141169

/-- `A017125(A112367(n))` -/
def P9942407240201388043.Spec : Prop :=
  ∀ n, P9942407240201388043.a n = A141169 n

end A141169

/-! ## A141169.P12675032411821276536

`A000045(sqrt(A143844(n)))`
-/

namespace A141169.P12675032411821276536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))).toNat

end

end A141169.P12675032411821276536

namespace A141169

/-- `A000045(sqrt(A143844(n)))` -/
def P12675032411821276536.Spec : Prop :=
  ∀ n, P12675032411821276536.a n = A141169 n

end A141169

/-! ## A141169.P12030439641633541014

`A000045(log2(A059268(n)))`
-/

namespace A141169.P12030439641633541014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A141169.P12030439641633541014

namespace A141169

/-- `A000045(log2(A059268(n)))` -/
def P12030439641633541014.Spec : Prop :=
  ∀ n, P12030439641633541014.a n = A141169 n

end A141169

/-! ## A141169.P13269465414486974780

`A212804(A002260(n+1))`
-/

namespace A141169.P13269465414486974780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A002260 (n + 1)).toNat

end

end A141169.P13269465414486974780

namespace A141169

/-- `A212804(A002260(n+1))` -/
def P13269465414486974780.Spec : Prop :=
  ∀ n, P13269465414486974780.a n = A141169 n

end A141169

/-! ## A141169.P13530623337664552932

`A212804(A002262(n)+1)`
-/

namespace A141169.P13530623337664552932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A002262 n + 1).toNat

end

end A141169.P13530623337664552932

namespace A141169

/-- `A212804(A002262(n)+1)` -/
def P13530623337664552932.Spec : Prop :=
  ∀ n, P13530623337664552932.a n = A141169 n

end A141169

/-! ## A141169.P13542155364401226236

`A103609(A158405(n+1))`
-/

namespace A141169.P13542155364401226236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A158405 (n + 1)).toNat

end

end A141169.P13542155364401226236

namespace A141169

/-- `A103609(A158405(n+1))` -/
def P13542155364401226236.Spec : Prop :=
  ∀ n, P13542155364401226236.a n = A141169 n

end A141169

/-! ## A141169.P4174048576385485686

`A155161(A112367(n)+1)`
-/

namespace A141169.P4174048576385485686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A112367 n + 1).toNat

end

end A141169.P4174048576385485686

namespace A141169

/-- `A155161(A112367(n)+1)` -/
def P4174048576385485686.Spec : Prop :=
  ∀ n, P4174048576385485686.a n = A141169 n

end A141169

/-! ## A141169.P10124899135007475363

`A247049(A131226(n+1))`
-/

namespace A141169.P10124899135007475363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A131226 (n + 1)).toNat

end

end A141169.P10124899135007475363

namespace A141169

/-- `A247049(A131226(n+1))` -/
def P10124899135007475363.Spec : Prop :=
  ∀ n, P10124899135007475363.a n = A141169 n

end A141169

/-! ## A141169.P10374828367472658928

`A053602(2*A002262(n))`
-/

namespace A141169.P10374828367472658928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A002262 n).toNat

end

end A141169.P10374828367472658928

namespace A141169

/-- `A053602(2*A002262(n))` -/
def P10374828367472658928.Spec : Prop :=
  ∀ n, P10374828367472658928.a n = A141169 n

end A141169

/-! ## A141169.P5996092010921247318

`A103609(2*A002262(n))`
-/

namespace A141169.P5996092010921247318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A002262 n).toNat

end

end A141169.P5996092010921247318

namespace A141169

/-- `A103609(2*A002262(n))` -/
def P5996092010921247318.Spec : Prop :=
  ∀ n, P5996092010921247318.a n = A141169 n

end A141169

/-! ## A141169.P4548174445283134706

`A000045(val(A175840(n), 2))`
-/

namespace A141169.P4548174445283134706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A175840 n).toNat 2)

end

end A141169.P4548174445283134706

namespace A141169

/-- `A000045(val(A175840(n), 2))` -/
def P4548174445283134706.Spec : Prop :=
  ∀ n, P4548174445283134706.a n = A141169 n

end A141169

/-! ## A141169.P126175435786874108

`A000045(val(A055235(n), 3))`
-/

namespace A141169.P126175435786874108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A055235 n).toNat 3)

end

end A141169.P126175435786874108

namespace A141169

/-- `A000045(val(A055235(n), 3))` -/
def P126175435786874108.Spec : Prop :=
  ∀ n, P126175435786874108.a n = A141169 n

end A141169

/-! ## A141169.P5462005275493485694

`A000045(val(A055236(n), 4))`
-/

namespace A141169.P5462005275493485694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A055236 n).toNat 4)

end

end A141169.P5462005275493485694

namespace A141169

/-- `A000045(val(A055236(n), 4))` -/
def P5462005275493485694.Spec : Prop :=
  ∀ n, P5462005275493485694.a n = A141169 n

end A141169

/-! ## A141169.P7952907932593341408

`A000045(val(A055237(n), 5))`
-/

namespace A141169.P7952907932593341408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A055237 n).toNat 5)

end

end A141169.P7952907932593341408

namespace A141169

/-- `A000045(val(A055237(n), 5))` -/
def P7952907932593341408.Spec : Prop :=
  ∀ n, P7952907932593341408.a n = A141169 n

end A141169

/-! ## A141169.P16045665630549585939

`A000045(n-A057944(n))`
-/

namespace A141169.P16045665630549585939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n : ℤ) - A057944 n).toNat

end

end A141169.P16045665630549585939

namespace A141169

/-- `A000045(n-A057944(n))` -/
def P16045665630549585939.Spec : Prop :=
  ∀ n, P16045665630549585939.a n = A141169 n

end A141169

/-! ## A141169.P18246741619224810897

`A000045(A057554(Δ[n²]))`
-/

namespace A141169.P18246741619224810897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A141169.P18246741619224810897

namespace A141169

/-- `A000045(A057554(Δ[n²]))` -/
def P18246741619224810897.Spec : Prop :=
  ∀ n, P18246741619224810897.a n = A141169 n

end A141169

/-! ## A141169.P3848064606735591850

`A000045(A002260(n+1)-1)`
-/

namespace A141169.P3848064606735591850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1) - 1).toNat

end

end A141169.P3848064606735591850

namespace A141169

/-- `A000045(A002260(n+1)-1)` -/
def P3848064606735591850.Spec : Prop :=
  ∀ n, P3848064606735591850.a n = A141169 n

end A141169

/-!
# A141170: Primes of the form x^2+4*x*y-2*y^2 (as well as of the form 3*x^2+6*x*y+y^2).

The programs for A141170, the canonical program `A141170.P12417277428237352377` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141170 has offset 1).

The definition of A141170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141170.P12417277428237352377

`p?[or(4, 6*n)-3]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141170

/-- `p?[or(4, 6*n)-3]` -/
def P12417277428237352377.Spec : Prop :=
  ∀ n, P12417277428237352377.a n = A141170 (n + 1)

theorem P12417277428237352377.correct : P12417277428237352377.Spec := by
  intro n
  simp only [A141170, Nat.add_sub_cancel]

end A141170

/-! ## A141170.P7556275671890947217

`p?[xor(2, 7*n)-(n+1)]`
-/

namespace A141170.P7556275671890947217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (7 * n) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141170.P7556275671890947217

namespace A141170

/-- `p?[xor(2, 7*n)-(n+1)]` -/
def P7556275671890947217.Spec : Prop :=
  ∀ n, P7556275671890947217.a n = A141170 (n + 1)

end A141170

/-! ## A141170.P4425681634160850031

`p?[and(4, n)+3*n]`
-/

namespace A141170.P4425681634160850031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 4 n + 3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141170.P4425681634160850031

namespace A141170

/-- `p?[and(4, n)+3*n]` -/
def P4425681634160850031.Spec : Prop :=
  ∀ n, (P4425681634160850031.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P10362422681459770979

`∩[A033200(n+1), A038876(n+1)]`
-/

namespace A141170.P10362422681459770979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P10362422681459770979

namespace A141170

/-- `∩[A033200(n+1), A038876(n+1)]` -/
def P10362422681459770979.Spec : Prop :=
  ∀ n, (P10362422681459770979.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P17657075714548432925

`∩[A007645(n+1), A033200(n+1)]`
-/

namespace A141170.P17657075714548432925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P17657075714548432925

namespace A141170

/-- `∩[A007645(n+1), A033200(n+1)]` -/
def P17657075714548432925.Spec : Prop :=
  ∀ n, (P17657075714548432925.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P11840739225767487601

`∩[A007645(n+1), A033203(n+1)]`
-/

namespace A141170.P11840739225767487601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P11840739225767487601

namespace A141170

/-- `∩[A007645(n+1), A033203(n+1)]` -/
def P11840739225767487601.Spec : Prop :=
  ∀ n, (P11840739225767487601.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P18351676933290698407

`∩[A007645(n+1), A038876(n+1)]`
-/

namespace A141170.P18351676933290698407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P18351676933290698407

namespace A141170

/-- `∩[A007645(n+1), A038876(n+1)]` -/
def P18351676933290698407.Spec : Prop :=
  ∀ n, (P18351676933290698407.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P5643427017800016066

`∩[A033200(n+1), A045331(n+1)]`
-/

namespace A141170.P5643427017800016066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P5643427017800016066

namespace A141170

/-- `∩[A033200(n+1), A045331(n+1)]` -/
def P5643427017800016066.Spec : Prop :=
  ∀ n, (P5643427017800016066.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P8573612391596005163

`∩[A279815(n+1), A033200(n+1)]`
-/

namespace A141170.P8573612391596005163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P8573612391596005163

namespace A141170

/-- `∩[A279815(n+1), A033200(n+1)]` -/
def P8573612391596005163.Spec : Prop :=
  ∀ n, (P8573612391596005163.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P6422588316801534733

`∩[A033200(n+1), A055664(n+1)]`
-/

namespace A141170.P6422588316801534733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P6422588316801534733

namespace A141170

/-- `∩[A033200(n+1), A055664(n+1)]` -/
def P6422588316801534733.Spec : Prop :=
  ∀ n, (P6422588316801534733.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P12299355486987545083

`∩[A033203(n+1), A055664(n+1)]`
-/

namespace A141170.P12299355486987545083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P12299355486987545083

namespace A141170

/-- `∩[A033203(n+1), A055664(n+1)]` -/
def P12299355486987545083.Spec : Prop :=
  ∀ n, (P12299355486987545083.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P17163077725932327880

`∩[A038876(n+1), A055664(n+1)]`
-/

namespace A141170.P17163077725932327880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P17163077725932327880

namespace A141170

/-- `∩[A038876(n+1), A055664(n+1)]` -/
def P17163077725932327880.Spec : Prop :=
  ∀ n, (P17163077725932327880.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P502009977935840075

`∩[A341784(n+1), A007645(n+1)]`
-/

namespace A141170.P502009977935840075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P502009977935840075

namespace A141170

/-- `∩[A341784(n+1), A007645(n+1)]` -/
def P502009977935840075.Spec : Prop :=
  ∀ n, (P502009977935840075.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P3318292413180163894

`p?[A155564(n+1)]`
-/

namespace A141170.P3318292413180163894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141170.P3318292413180163894

namespace A141170

/-- `p?[A155564(n+1)]` -/
def P3318292413180163894.Spec : Prop :=
  ∀ n, P3318292413180163894.a n = A141170 (n + 1)

end A141170

/-! ## A141170.P18138927467120706830

`∩[A007645(n+1), A155564(n+1)]`
-/

namespace A141170.P18138927467120706830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P18138927467120706830

namespace A141170

/-- `∩[A007645(n+1), A155564(n+1)]` -/
def P18138927467120706830.Spec : Prop :=
  ∀ n, (P18138927467120706830.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P9875409805665821566

`∩[A033203(n+1), A155564(n+1)]`
-/

namespace A141170.P9875409805665821566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P9875409805665821566

namespace A141170

/-- `∩[A033203(n+1), A155564(n+1)]` -/
def P9875409805665821566.Spec : Prop :=
  ∀ n, (P9875409805665821566.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P13733091742860433253

`∩[A038876(n+1), A155564(n+1)]`
-/

namespace A141170.P13733091742860433253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P13733091742860433253

namespace A141170

/-- `∩[A038876(n+1), A155564(n+1)]` -/
def P13733091742860433253.Spec : Prop :=
  ∀ n, (P13733091742860433253.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P14031217448379821385

`∩[A040116(n+1), A155564(n+1)]`
-/

namespace A141170.P14031217448379821385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P14031217448379821385

namespace A141170

/-- `∩[A040116(n+1), A155564(n+1)]` -/
def P14031217448379821385.Spec : Prop :=
  ∀ n, (P14031217448379821385.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P8125243738866729606

`∩[A042998(n+1), A155564(n+1)]`
-/

namespace A141170.P8125243738866729606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P8125243738866729606

namespace A141170

/-- `∩[A042998(n+1), A155564(n+1)]` -/
def P8125243738866729606.Spec : Prop :=
  ∀ n, (P8125243738866729606.a n : ℤ) = A141170 (n + 1)

end A141170

/-! ## A141170.P11195833870638151393

`∩[A007645(n+1), A262931(n+1)]`
-/

namespace A141170.P11195833870638151393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141170.P11195833870638151393

namespace A141170

/-- `∩[A007645(n+1), A262931(n+1)]` -/
def P11195833870638151393.Spec : Prop :=
  ∀ n, (P11195833870638151393.a n : ℤ) = A141170 (n + 1)

end A141170

/-!
# A141171: Primes of the form -x^2+4*x*y+2*y^2 (as well as of the form 5*x^2+8*x*y+2*y^2).

The programs for A141171, the canonical program `A141171.P12338924987220492789` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141171 has offset 1).

The definition of A141171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141171.P12338924987220492789

`p?[4*n-gcd(6, n+1)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141171

/-- `p?[4*n-gcd(6, n+1)]` -/
def P12338924987220492789.Spec : Prop :=
  ∀ n, P12338924987220492789.a n = A141171 (n + 1)

theorem P12338924987220492789.correct : P12338924987220492789.Spec := by
  intro n
  simp only [A141171, Nat.add_sub_cancel]

end A141171

/-! ## A141171.P9286978334977915826

`p?[4*n-or(4, n)]`
-/

namespace A141171.P9286978334977915826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (Nat.lor 4 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141171.P9286978334977915826

namespace A141171

/-- `p?[4*n-or(4, n)]` -/
def P9286978334977915826.Spec : Prop :=
  ∀ n, P9286978334977915826.a n = A141171 (n + 1)

end A141171

/-! ## A141171.P10945058443040089222

`p?[3*n-and(4, n+4)]`
-/

namespace A141171.P10945058443040089222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (Nat.land 4 (n + 4) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141171.P10945058443040089222

namespace A141171

/-- `p?[3*n-and(4, n+4)]` -/
def P10945058443040089222.Spec : Prop :=
  ∀ n, P10945058443040089222.a n = A141171 (n + 1)

end A141171

/-! ## A141171.P8369276237302957616

`p?[abs(1-3*n*C(n+4, 4)%2)]`
-/

namespace A141171.P8369276237302957616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((3 * n * (Nat.choose (n + 4) 4 % 2) : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141171.P8369276237302957616

namespace A141171

/-- `p?[abs(1-3*n*C(n+4, 4)%2)]` -/
def P8369276237302957616.Spec : Prop :=
  ∀ n, P8369276237302957616.a n = A141171 (n + 1)

end A141171

/-! ## A141171.P5245344507659885239

`∩[A003627(n+1), A038876(n+1)]`
-/

namespace A141171.P5245344507659885239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141171.P5245344507659885239

namespace A141171

/-- `∩[A003627(n+1), A038876(n+1)]` -/
def P5245344507659885239.Spec : Prop :=
  ∀ n, (P5245344507659885239.a n : ℤ) = A141171 (n + 1)

end A141171

/-! ## A141171.P9765139021986776176

`∩[A003627(n+1), A045355(n+1)]`
-/

namespace A141171.P9765139021986776176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141171.P9765139021986776176

namespace A141171

/-- `∩[A003627(n+1), A045355(n+1)]` -/
def P9765139021986776176.Spec : Prop :=
  ∀ n, (P9765139021986776176.a n : ℤ) = A141171 (n + 1)

end A141171

/-! ## A141171.P12298666763679343580

`∩[A038876(n+1), A045355(n+1)]`
-/

namespace A141171.P12298666763679343580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141171.P12298666763679343580

namespace A141171

/-- `∩[A038876(n+1), A045355(n+1)]` -/
def P12298666763679343580.Spec : Prop :=
  ∀ n, (P12298666763679343580.a n : ℤ) = A141171 (n + 1)

end A141171

/-! ## A141171.P514638306587346746

`∩[A045309(n+1), A045355(n+1)]`
-/

namespace A141171.P514638306587346746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141171.P514638306587346746

namespace A141171

/-- `∩[A045309(n+1), A045355(n+1)]` -/
def P514638306587346746.Spec : Prop :=
  ∀ n, (P514638306587346746.a n : ℤ) = A141171 (n + 1)

end A141171

/-! ## A141171.P5660992709906429064

`∩[A045355(n+1), A066501(n+1)]`
-/

namespace A141171.P5660992709906429064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141171.P5660992709906429064

namespace A141171

/-- `∩[A045355(n+1), A066501(n+1)]` -/
def P5660992709906429064.Spec : Prop :=
  ∀ n, (P5660992709906429064.a n : ℤ) = A141171 (n + 1)

end A141171

/-! ## A141171.P6674669432878467024

`∩[A003627(n+1), A262931(n+1)]`
-/

namespace A141171.P6674669432878467024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141171.P6674669432878467024

namespace A141171

/-- `∩[A003627(n+1), A262931(n+1)]` -/
def P6674669432878467024.Spec : Prop :=
  ∀ n, (P6674669432878467024.a n : ℤ) = A141171 (n + 1)

end A141171

/-! ## A141171.P11971712348529830927

`∩[A045355(n+1), A262931(n+1)]`
-/

namespace A141171.P11971712348529830927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141171.P11971712348529830927

namespace A141171

/-- `∩[A045355(n+1), A262931(n+1)]` -/
def P11971712348529830927.Spec : Prop :=
  ∀ n, (P11971712348529830927.a n : ℤ) = A141171 (n + 1)

end A141171

/-! ## A141171.P10038178041747159940

`∩[A038876(n+1), A082406(n+1)]`
-/

namespace A141171.P10038178041747159940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141171.P10038178041747159940

namespace A141171

/-- `∩[A038876(n+1), A082406(n+1)]` -/
def P10038178041747159940.Spec : Prop :=
  ∀ n, (P10038178041747159940.a n : ℤ) = A141171 (n + 1)

end A141171

/-! ## A141171.P4560415659489718100

`∩[A045355(n+1), A082406(n+1)]`
-/

namespace A141171.P4560415659489718100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141171.P4560415659489718100

namespace A141171

/-- `∩[A045355(n+1), A082406(n+1)]` -/
def P4560415659489718100.Spec : Prop :=
  ∀ n, (P4560415659489718100.a n : ℤ) = A141171 (n + 1)

end A141171

/-! ## A141171.P4018507346933151998

`∩[A003627(n+1), A243805(n+1)]`
-/

namespace A141171.P4018507346933151998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141171.P4018507346933151998

namespace A141171

/-- `∩[A003627(n+1), A243805(n+1)]` -/
def P4018507346933151998.Spec : Prop :=
  ∀ n, (P4018507346933151998.a n : ℤ) = A141171 (n + 1)

end A141171

/-! ## A141171.P1859619577379050964

`∩[A038876(n+1), A167409(n+1)]`
-/

namespace A141171.P1859619577379050964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141171.P1859619577379050964

namespace A141171

/-- `∩[A038876(n+1), A167409(n+1)]` -/
def P1859619577379050964.Spec : Prop :=
  ∀ n, (P1859619577379050964.a n : ℤ) = A141171 (n + 1)

end A141171

/-! ## A141171.P2453258549915260381

`∩[A045355(n+1), A167409(n+1)]`
-/

namespace A141171.P2453258549915260381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141171.P2453258549915260381

namespace A141171

/-- `∩[A045355(n+1), A167409(n+1)]` -/
def P2453258549915260381.Spec : Prop :=
  ∀ n, (P2453258549915260381.a n : ℤ) = A141171 (n + 1)

end A141171

/-! ## A141171.P6622969915187598844

`p?[A242665(n+1)]`
-/

namespace A141171.P6622969915187598844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141171.P6622969915187598844

namespace A141171

/-- `p?[A242665(n+1)]` -/
def P6622969915187598844.Spec : Prop :=
  ∀ n, P6622969915187598844.a n = A141171 (n + 1)

end A141171

/-! ## A141171.P1392031433600213181

`record[A006530(A242665(n+2))]`
-/

namespace A141171.P1392031433600213181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A242665 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141171.P1392031433600213181

namespace A141171

/-- `record[A006530(A242665(n+2))]` -/
def P1392031433600213181.Spec : Prop :=
  ∀ n, P1392031433600213181.a n = A141171 (n + 1)

end A141171

/-! ## A141171.P11821201681182878550

`filter[A242665(n+2), A010051(#)]`
-/

namespace A141171.P11821201681182878550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242665 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141171.P11821201681182878550

namespace A141171

/-- `filter[A242665(n+2), A010051(#)]` -/
def P11821201681182878550.Spec : Prop :=
  ∀ n, P11821201681182878550.a n = A141171 (n + 1)

end A141171

/-! ## A141171.P3245611388104897315

`filter[A242665(n+2), A302777(#)]`
-/

namespace A141171.P3245611388104897315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242665 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A141171.P3245611388104897315

namespace A141171

/-- `filter[A242665(n+2), A302777(#)]` -/
def P3245611388104897315.Spec : Prop :=
  ∀ n, P3245611388104897315.a n = A141171 (n + 1)

end A141171

/-!
# A141172: Primes of the form 2*x^2+2*x*y-3*y^2 (as well as of the form 2*x^2+6*x*y+y^2).

The programs for A141172, there is no canonical definition to state claims against.
-/

/-! ## A141172.P8520516604221687344

`∪[A028883(n+1), A107134(n+1)]`
-/

namespace A141172.P8520516604221687344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P8520516604221687344

/-! ## A141172.P405998686671507516

`∩[A002313(n+1), A038878(n+1)]`
-/

namespace A141172.P405998686671507516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P405998686671507516

/-! ## A141172.P3895654908151229302

`∩[A002313(n+1), A045373(n+1)]`
-/

namespace A141172.P3895654908151229302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P3895654908151229302

/-! ## A141172.P5879604294826145009

`∩[A002313(n+1), A045386(n+1)]`
-/

namespace A141172.P5879604294826145009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P5879604294826145009

/-! ## A141172.P9737583933630718325

`∩[A038878(n+1), A045386(n+1)]`
-/

namespace A141172.P9737583933630718325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P9737583933630718325

/-! ## A141172.P9236230475144967377

`∩[A038878(n+1), A055025(n+1)]`
-/

namespace A141172.P9236230475144967377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P9236230475144967377

/-! ## A141172.P861776511153485204

`∩[A045373(n+1), A055025(n+1)]`
-/

namespace A141172.P861776511153485204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P861776511153485204

/-! ## A141172.P11153455037036347497

`∩[A045386(n+1), A055025(n+1)]`
-/

namespace A141172.P11153455037036347497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P11153455037036347497

/-! ## A141172.P6249035218239404627

`p?[abs(A155568(n+1)-1)+1]`
-/

namespace A141172.P6249035218239404627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155568 (n + 1) - 1| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141172.P6249035218239404627

/-! ## A141172.P17784582836404056467

`∩[A038878(n+1), A347877(n+1)]`
-/

namespace A141172.P17784582836404056467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P17784582836404056467

/-! ## A141172.P3692147412932790217

`∩[A045373(n+1), A347877(n+1)]`
-/

namespace A141172.P3692147412932790217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P3692147412932790217

/-! ## A141172.P12525211295738058921

`∩[A045386(n+1), A347877(n+1)]`
-/

namespace A141172.P12525211295738058921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P12525211295738058921

/-! ## A141172.P2797469909351461513

`∩[A038878(n+1), A281292(n+1)]`
-/

namespace A141172.P2797469909351461513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P2797469909351461513

/-! ## A141172.P12766152338375611021

`∩[A038878(n+1), A224450(n+1)]`
-/

namespace A141172.P12766152338375611021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P12766152338375611021

/-! ## A141172.P1795379812008707211

`∩[A002313(n+1), A262932(n+1)]`
-/

namespace A141172.P1795379812008707211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P1795379812008707211

/-! ## A141172.P9389061235736897218

`∩[A045386(n+1), A262932(n+1)]`
-/

namespace A141172.P9389061235736897218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P9389061235736897218

/-! ## A141172.P11561043517464570493

`∩[A003654(n+1), A038878(n+1)]`
-/

namespace A141172.P11561043517464570493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P11561043517464570493

/-! ## A141172.P13142696195828468427

`∩[A003814(n+1), A038878(n+1)]`
-/

namespace A141172.P13142696195828468427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P13142696195828468427

/-! ## A141172.P1328813093913297250

`∩[A003654(n+1), A045373(n+1)]`
-/

namespace A141172.P1328813093913297250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P1328813093913297250

/-! ## A141172.P12780922015603450389

`∩[A003654(n+1), A045386(n+1)]`
-/

namespace A141172.P12780922015603450389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141172.P12780922015603450389

/-!
# A141173: Primes of the form -2*x^2+2*x*y+3*y^2 (as well as of the form 6*x^2+10*x*y+3*y^2).

The programs for A141173, the canonical program `A141173.P1291796232190447647` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141173 has offset 1).

The definition of A141173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141173.P5171915431560605838

`∩[A038878(n+1), A045399(n+1)]`
-/

namespace A141173.P5171915431560605838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P5171915431560605838

namespace A141173

/-- `∩[A038878(n+1), A045399(n+1)]` -/
def P5171915431560605838.Spec : Prop :=
  ∀ n, (P5171915431560605838.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P128413902160532636

`∩[A040112(n+1), A045399(n+1)]`
-/

namespace A141173.P128413902160532636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P128413902160532636

namespace A141173

/-- `∩[A040112(n+1), A045399(n+1)]` -/
def P128413902160532636.Spec : Prop :=
  ∀ n, (P128413902160532636.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P3548887501494292195

`∩[A002145(n+1), A038878(n+1)]`
-/

namespace A141173.P3548887501494292195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P3548887501494292195

namespace A141173

/-- `∩[A002145(n+1), A038878(n+1)]` -/
def P3548887501494292195.Spec : Prop :=
  ∀ n, (P3548887501494292195.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P16452926234885632491

`∩[A002145(n+1), A040112(n+1)]`
-/

namespace A141173.P16452926234885632491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P16452926234885632491

namespace A141173

/-- `∩[A002145(n+1), A040112(n+1)]` -/
def P16452926234885632491.Spec : Prop :=
  ∀ n, (P16452926234885632491.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P1291796232190447647

`∩[A002145(n+1), A045399(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141173

/-- `∩[A002145(n+1), A045399(n+1)]` -/
def P1291796232190447647.Spec : Prop :=
  ∀ n, (P1291796232190447647.a n : ℤ) = A141173 (n + 1)

theorem P1291796232190447647.correct : P1291796232190447647.Spec := by
  intro n
  simp only [A141173, Nat.add_sub_cancel]

end A141173

/-! ## A141173.P12437579271927964056

`∩[A045326(n+1), A045399(n+1)]`
-/

namespace A141173.P12437579271927964056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P12437579271927964056

namespace A141173

/-- `∩[A045326(n+1), A045399(n+1)]` -/
def P12437579271927964056.Spec : Prop :=
  ∀ n, (P12437579271927964056.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P9043090784119741566

`∩[A038878(n+1), A085760(n+1)]`
-/

namespace A141173.P9043090784119741566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P9043090784119741566

namespace A141173

/-- `∩[A038878(n+1), A085760(n+1)]` -/
def P9043090784119741566.Spec : Prop :=
  ∀ n, (P9043090784119741566.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P8719922980368841562

`∩[A040112(n+1), A085760(n+1)]`
-/

namespace A141173.P8719922980368841562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P8719922980368841562

namespace A141173

/-- `∩[A040112(n+1), A085760(n+1)]` -/
def P8719922980368841562.Spec : Prop :=
  ∀ n, (P8719922980368841562.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P9344499301433834524

`∩[A045399(n+1), A085760(n+1)]`
-/

namespace A141173.P9344499301433834524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P9344499301433834524

namespace A141173

/-- `∩[A045399(n+1), A085760(n+1)]` -/
def P9344499301433834524.Spec : Prop :=
  ∀ n, (P9344499301433834524.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P12877679361367666308

`∩[A038878(n+1), A197504(n+1)]`
-/

namespace A141173.P12877679361367666308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P12877679361367666308

namespace A141173

/-- `∩[A038878(n+1), A197504(n+1)]` -/
def P12877679361367666308.Spec : Prop :=
  ∀ n, (P12877679361367666308.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P15811535823726824453

`∩[A040112(n+1), A197504(n+1)]`
-/

namespace A141173.P15811535823726824453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P15811535823726824453

namespace A141173

/-- `∩[A040112(n+1), A197504(n+1)]` -/
def P15811535823726824453.Spec : Prop :=
  ∀ n, (P15811535823726824453.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P15115087790077389194

`∩[A038878(n+1), A292762(n+1)]`
-/

namespace A141173.P15115087790077389194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P15115087790077389194

namespace A141173

/-- `∩[A038878(n+1), A292762(n+1)]` -/
def P15115087790077389194.Spec : Prop :=
  ∀ n, (P15115087790077389194.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P4130894982140226372

`∩[A038878(n+1), A066499(n+1)]`
-/

namespace A141173.P4130894982140226372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P4130894982140226372

namespace A141173

/-- `∩[A038878(n+1), A066499(n+1)]` -/
def P4130894982140226372.Spec : Prop :=
  ∀ n, (P4130894982140226372.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P17454198249779507736

`∩[A040112(n+1), A066499(n+1)]`
-/

namespace A141173.P17454198249779507736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P17454198249779507736

namespace A141173

/-- `∩[A040112(n+1), A066499(n+1)]` -/
def P17454198249779507736.Spec : Prop :=
  ∀ n, (P17454198249779507736.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P11484943486601455649

`∩[A045399(n+1), A066499(n+1)]`
-/

namespace A141173.P11484943486601455649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P11484943486601455649

namespace A141173

/-- `∩[A045399(n+1), A066499(n+1)]` -/
def P11484943486601455649.Spec : Prop :=
  ∀ n, (P11484943486601455649.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P1294689632464816976

`∩[A045399(n+1), A097987(n+1)]`
-/

namespace A141173.P1294689632464816976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P1294689632464816976

namespace A141173

/-- `∩[A045399(n+1), A097987(n+1)]` -/
def P1294689632464816976.Spec : Prop :=
  ∀ n, (P1294689632464816976.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P17641312228753630618

`∩[A038878(n+1), A094179(n+1)]`
-/

namespace A141173.P17641312228753630618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P17641312228753630618

namespace A141173

/-- `∩[A038878(n+1), A094179(n+1)]` -/
def P17641312228753630618.Spec : Prop :=
  ∀ n, (P17641312228753630618.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P7765580192900358709

`∩[A040112(n+1), A094179(n+1)]`
-/

namespace A141173.P7765580192900358709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P7765580192900358709

namespace A141173

/-- `∩[A040112(n+1), A094179(n+1)]` -/
def P7765580192900358709.Spec : Prop :=
  ∀ n, (P7765580192900358709.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P12005569248187181549

`∩[A045399(n+1), A094179(n+1)]`
-/

namespace A141173.P12005569248187181549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P12005569248187181549

namespace A141173

/-- `∩[A045399(n+1), A094179(n+1)]` -/
def P12005569248187181549.Spec : Prop :=
  ∀ n, (P12005569248187181549.a n : ℤ) = A141173 (n + 1)

end A141173

/-! ## A141173.P9849480689489039508

`∩[A002145(n+1), A262932(n+1)]`
-/

namespace A141173.P9849480689489039508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141173.P9849480689489039508

namespace A141173

/-- `∩[A002145(n+1), A262932(n+1)]` -/
def P9849480689489039508.Spec : Prop :=
  ∀ n, (P9849480689489039508.a n : ℤ) = A141173 (n + 1)

end A141173

/-!
# A141176: Primes of the form 2*x^2 + 3*x*y - 3*y^2 (as well as of the form 6*x^2 + 9*x*y + 2*y^2).

The programs for A141176, there is no canonical definition to state claims against.
-/

/-! ## A141176.P15743959155885392142

`∩[A003627(n+1), A038907(n+1)]`
-/

namespace A141176.P15743959155885392142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P15743959155885392142

/-! ## A141176.P11576157378907773560

`∩[A038907(n+1), A082406(n+1)]`
-/

namespace A141176.P11576157378907773560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P11576157378907773560

/-! ## A141176.P12683324620434355187

`∩[A038907(n+1), A167409(n+1)]`
-/

namespace A141176.P12683324620434355187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P12683324620434355187

/-! ## A141176.P5190055460666119021

`∩[A004612(n+1), A038907(n+1)]`
-/

namespace A141176.P5190055460666119021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P5190055460666119021

/-! ## A141176.P18210722716313084745

`∩[A038907(n+1), A179871(n+1)]`
-/

namespace A141176.P18210722716313084745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P18210722716313084745

/-! ## A141176.P14307509393279892184

`∩[A038907(n+1), A347838(n+1)]`
-/

namespace A141176.P14307509393279892184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P14307509393279892184

/-! ## A141176.P9235263066133096193

`∩[A038907(n+1), A016789(n)]`
-/

namespace A141176.P9235263066133096193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P9235263066133096193

/-! ## A141176.P3893281552535150820

`∩[A038907(n+1), A022429(n)]`
-/

namespace A141176.P3893281552535150820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022429 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P3893281552535150820

/-! ## A141176.P4253728209969844985

`∩[A038907(n+1), A022430(n)]`
-/

namespace A141176.P4253728209969844985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022430 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P4253728209969844985

/-! ## A141176.P7108829464365506176

`∩[A038907(n+1), A055048(n+1)]`
-/

namespace A141176.P7108829464365506176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P7108829464365506176

/-! ## A141176.P6731835554036017935

`∩[A038907(n+1), A277574(n+1)]`
-/

namespace A141176.P6731835554036017935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P6731835554036017935

/-! ## A141176.P16321935078721660929

`∩[A038907(n+1), A174438(n+1)]`
-/

namespace A141176.P16321935078721660929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P16321935078721660929

/-! ## A141176.P8210576350598673141

`∩[A026179(n+1), A038907(n+1)]`
-/

namespace A141176.P8210576350598673141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P8210576350598673141

/-! ## A141176.P5378074591860602548

`∩[A038907(n+1), A047261(n+1)]`
-/

namespace A141176.P5378074591860602548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P5378074591860602548

/-! ## A141176.P7187878523579977720

`∩[A038907(n+1), A047267(n+1)]`
-/

namespace A141176.P7187878523579977720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P7187878523579977720

/-! ## A141176.P9272660015499892931

`p?[A279195(n+1)+gcd(3, A279195(n+1))]`
-/

namespace A141176.P9272660015499892931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279195 (n + 1) + (Int.gcd 3 (A279195 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141176.P9272660015499892931

/-! ## A141176.P893947007272537881

`∩[A038907(n+1), A274436(n+1)]`
-/

namespace A141176.P893947007272537881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P893947007272537881

/-! ## A141176.P8549239572236106039

`∩[A038907(n+1), A049636(n)]`
-/

namespace A141176.P8549239572236106039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P8549239572236106039

/-! ## A141176.P6718282937263051574

`∩[A038907(n+1), A047262(n+1)]`
-/

namespace A141176.P6718282937263051574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P6718282937263051574

/-! ## A141176.P12982841772264380192

`∩[A034020(n+1), A038907(n+1)]`
-/

namespace A141176.P12982841772264380192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141176.P12982841772264380192

/-!
# A141177: Primes of the form -2*x^2 + 3*x*y + 3*y^2 (as well as of the form 4*x^2 + 7*x*y + y^2).

The programs for A141177, there is no canonical definition to state claims against.
-/

/-! ## A141177.P7535232117701338573

`∪[A107013(n+1), A139964(n+1)]`
-/

namespace A141177.P7535232117701338573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141177.P7535232117701338573

/-! ## A141177.P16382837654686252643

`∩[A007645(n+1), A038907(n+1)]`
-/

namespace A141177.P16382837654686252643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141177.P16382837654686252643

/-! ## A141177.P10746262356239112251

`∩[A038907(n+1), A279815(n+1)]`
-/

namespace A141177.P10746262356239112251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141177.P10746262356239112251

/-! ## A141177.P3771702549041126940

`∩[A007645(n+1), A296920(n+1)]`
-/

namespace A141177.P3771702549041126940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141177.P3771702549041126940

/-! ## A141177.P5959799335546091728

`∩[A038907(n+1), A296920(n+1)]`
-/

namespace A141177.P5959799335546091728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141177.P5959799335546091728

/-! ## A141177.P591523491549174380

`∩[A045331(n+1), A296920(n+1)]`
-/

namespace A141177.P591523491549174380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141177.P591523491549174380

/-! ## A141177.P6108450834307651622

`∩[A279815(n+1), A296920(n+1)]`
-/

namespace A141177.P6108450834307651622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141177.P6108450834307651622

/-! ## A141177.P8784492576287273442

`∩[A007645(n+1), A056874(n+1)]`
-/

namespace A141177.P8784492576287273442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141177.P8784492576287273442

/-! ## A141177.P17134023579869813862

`∩[A045331(n+1), A056874(n+1)]`
-/

namespace A141177.P17134023579869813862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141177.P17134023579869813862

/-! ## A141177.P14722072187361678897

`∩[A056874(n+1), A279815(n+1)]`
-/

namespace A141177.P14722072187361678897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141177.P14722072187361678897

/-! ## A141177.P11814617146192897185

`∩[A038907(n+1), A055664(n+1)]`
-/

namespace A141177.P11814617146192897185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141177.P11814617146192897185

/-! ## A141177.P3903135339671160166

`∩[A055664(n+1), A056874(n+1)]`
-/

namespace A141177.P3903135339671160166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141177.P3903135339671160166

/-! ## A141177.P10363731414325638383

`∩[A055664(n+1), A296920(n+1)]`
-/

namespace A141177.P10363731414325638383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141177.P10363731414325638383

/-! ## A141177.P18057860004883611962

`∩[A007645(n+1), A341785(n+1)]`
-/

namespace A141177.P18057860004883611962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141177.P18057860004883611962

/-! ## A141177.P15956225254371931374

`∩[A045331(n+1), A341785(n+1)]`
-/

namespace A141177.P15956225254371931374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141177.P15956225254371931374

/-! ## A141177.P8267688801361213286

`filter[A038907(n+1), A353815(#)]`
-/

namespace A141177.P8267688801361213286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A141177.P8267688801361213286

/-! ## A141177.P15039299271957504540

`filter[A038907(n+1), A353816(#)]`
-/

namespace A141177.P15039299271957504540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A141177.P15039299271957504540

/-! ## A141177.P4720653952607254208

`filter[A056874(n+1), A353815(#)]`
-/

namespace A141177.P4720653952607254208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A141177.P4720653952607254208

/-! ## A141177.P17057733434806286010

`filter[A056874(n+1), A353816(#)]`
-/

namespace A141177.P17057733434806286010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A141177.P17057733434806286010

/-! ## A141177.P7626137358952532775

`filter[A296920(n+1), A353815(#)]`
-/

namespace A141177.P7626137358952532775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A141177.P7626137358952532775

/-!
# A141179: Primes of the form 3*x^2 + 2*x*y - 3*y^2 (as well as of the form 3*x^2 + 8*x*y + 2*y^2).

The programs for A141179, the canonical program `A141179.P8753015154346743664` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141179 has offset 1).

The definition of A141179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5013 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141179.P5304442630582846883

`∩[A038879(n+1), A042999(n+1)]`
-/

namespace A141179.P5304442630582846883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P5304442630582846883

namespace A141179

/-- `∩[A038879(n+1), A042999(n+1)]` -/
def P5304442630582846883.Spec : Prop :=
  ∀ n, (P5304442630582846883.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P14890259974265759294

`∩[A038879(n+1), A042993(n+1)]`
-/

namespace A141179.P14890259974265759294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P14890259974265759294

namespace A141179

/-- `∩[A038879(n+1), A042993(n+1)]` -/
def P14890259974265759294.Spec : Prop :=
  ∀ n, (P14890259974265759294.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P8753015154346743664

`∩[A042993(n+1), A042999(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141179

/-- `∩[A042993(n+1), A042999(n+1)]` -/
def P8753015154346743664.Spec : Prop :=
  ∀ n, (P8753015154346743664.a n : ℤ) = A141179 (n + 1)

theorem P8753015154346743664.correct : P8753015154346743664.Spec := by
  intro n
  simp only [A141179, Nat.add_sub_cancel]

end A141179

/-! ## A141179.P10674723431044524138

`∩[A042993(n+1), A391367(n+1)]`
-/

namespace A141179.P10674723431044524138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P10674723431044524138

namespace A141179

/-- `∩[A042993(n+1), A391367(n+1)]` -/
def P10674723431044524138.Spec : Prop :=
  ∀ n, (P10674723431044524138.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P1352351397936339153

`∩[A042999(n+1), A391367(n+1)]`
-/

namespace A141179.P1352351397936339153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P1352351397936339153

namespace A141179

/-- `∩[A042999(n+1), A391367(n+1)]` -/
def P1352351397936339153.Spec : Prop :=
  ∀ n, (P1352351397936339153.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P7812307888308949590

`∩[A038879(n+1), A140971(n+1)]`
-/

namespace A141179.P7812307888308949590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P7812307888308949590

namespace A141179

/-- `∩[A038879(n+1), A140971(n+1)]` -/
def P7812307888308949590.Spec : Prop :=
  ∀ n, (P7812307888308949590.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P1903580771004057692

`∩[A042999(n+1), A140971(n+1)]`
-/

namespace A141179.P1903580771004057692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P1903580771004057692

namespace A141179

/-- `∩[A042999(n+1), A140971(n+1)]` -/
def P1903580771004057692.Spec : Prop :=
  ∀ n, (P1903580771004057692.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P6811207450381253724

`∩[A140971(n+1), A391367(n+1)]`
-/

namespace A141179.P6811207450381253724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P6811207450381253724

namespace A141179

/-- `∩[A140971(n+1), A391367(n+1)]` -/
def P6811207450381253724.Spec : Prop :=
  ∀ n, (P6811207450381253724.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P16305604844686488430

`∩[A038879(n+1), A180636(n+1)]`
-/

namespace A141179.P16305604844686488430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P16305604844686488430

namespace A141179

/-- `∩[A038879(n+1), A180636(n+1)]` -/
def P16305604844686488430.Spec : Prop :=
  ∀ n, (P16305604844686488430.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P4142208661418124976

`∩[A042993(n+1), A180636(n+1)]`
-/

namespace A141179.P4142208661418124976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P4142208661418124976

namespace A141179

/-- `∩[A042993(n+1), A180636(n+1)]` -/
def P4142208661418124976.Spec : Prop :=
  ∀ n, (P4142208661418124976.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P15839750031327360555

`∩[A180636(n+1), A391367(n+1)]`
-/

namespace A141179.P15839750031327360555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P15839750031327360555

namespace A141179

/-- `∩[A180636(n+1), A391367(n+1)]` -/
def P15839750031327360555.Spec : Prop :=
  ∀ n, (P15839750031327360555.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P15057901035979407891

`∩[A038879(n+1), A047604(n+1)]`
-/

namespace A141179.P15057901035979407891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P15057901035979407891

namespace A141179

/-- `∩[A038879(n+1), A047604(n+1)]` -/
def P15057901035979407891.Spec : Prop :=
  ∀ n, (P15057901035979407891.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P2581428138158149434

`∩[A042993(n+1), A047604(n+1)]`
-/

namespace A141179.P2581428138158149434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P2581428138158149434

namespace A141179

/-- `∩[A042993(n+1), A047604(n+1)]` -/
def P2581428138158149434.Spec : Prop :=
  ∀ n, (P2581428138158149434.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P8109912522046559199

`∩[A047604(n+1), A391367(n+1)]`
-/

namespace A141179.P8109912522046559199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P8109912522046559199

namespace A141179

/-- `∩[A047604(n+1), A391367(n+1)]` -/
def P8109912522046559199.Spec : Prop :=
  ∀ n, (P8109912522046559199.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P1175790639085154412

`∩[A038879(n+1), A260181(n+1)]`
-/

namespace A141179.P1175790639085154412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P1175790639085154412

namespace A141179

/-- `∩[A038879(n+1), A260181(n+1)]` -/
def P1175790639085154412.Spec : Prop :=
  ∀ n, (P1175790639085154412.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P7542567621067402058

`∩[A042999(n+1), A260181(n+1)]`
-/

namespace A141179.P7542567621067402058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P7542567621067402058

namespace A141179

/-- `∩[A042999(n+1), A260181(n+1)]` -/
def P7542567621067402058.Spec : Prop :=
  ∀ n, (P7542567621067402058.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P1983715531283256006

`∩[A260181(n+1), A391367(n+1)]`
-/

namespace A141179.P1983715531283256006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P1983715531283256006

namespace A141179

/-- `∩[A260181(n+1), A391367(n+1)]` -/
def P1983715531283256006.Spec : Prop :=
  ∀ n, (P1983715531283256006.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P4641736241872562840

`∩[A038879(n+1), A047447(n+1)]`
-/

namespace A141179.P4641736241872562840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P4641736241872562840

namespace A141179

/-- `∩[A038879(n+1), A047447(n+1)]` -/
def P4641736241872562840.Spec : Prop :=
  ∀ n, (P4641736241872562840.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P15485283526100953623

`∩[A038879(n+1), A047596(n+1)]`
-/

namespace A141179.P15485283526100953623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P15485283526100953623

namespace A141179

/-- `∩[A038879(n+1), A047596(n+1)]` -/
def P15485283526100953623.Spec : Prop :=
  ∀ n, (P15485283526100953623.a n : ℤ) = A141179 (n + 1)

end A141179

/-! ## A141179.P16454026637858944363

`∩[A038879(n+1), A047605(n+1)]`
-/

namespace A141179.P16454026637858944363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141179.P16454026637858944363

namespace A141179

/-- `∩[A038879(n+1), A047605(n+1)]` -/
def P16454026637858944363.Spec : Prop :=
  ∀ n, (P16454026637858944363.a n : ℤ) = A141179 (n + 1)

end A141179

/-!
# A141180: Primes of the form x^2+6*x*y-y^2 (as well as of the form 6*x^2+8*x*y+y^2).

The programs for A141180, the canonical program `A141180.P6880636864397310422` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141180 has offset 1).

The definition of A141180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141180.P6880636864397310422

`p?[or(5, 5*n)+10]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141180

/-- `p?[or(5, 5*n)+10]` -/
def P6880636864397310422.Spec : Prop :=
  ∀ n, (P6880636864397310422.a n : ℤ) = A141180 (n + 1)

theorem P6880636864397310422.correct : P6880636864397310422.Spec := by
  intro n
  simp only [A141180, Nat.add_sub_cancel]

end A141180

/-! ## A141180.P7188983203688919591

`∩[A001132(n+1), A038872(n+1)]`
-/

namespace A141180.P7188983203688919591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P7188983203688919591

namespace A141180

/-- `∩[A001132(n+1), A038872(n+1)]` -/
def P7188983203688919591.Spec : Prop :=
  ∀ n, (P7188983203688919591.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P12405978818150963445

`∩[A001132(n+1), A045468(n+1)]`
-/

namespace A141180.P12405978818150963445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P12405978818150963445

namespace A141180

/-- `∩[A001132(n+1), A045468(n+1)]` -/
def P12405978818150963445.Spec : Prop :=
  ∀ n, (P12405978818150963445.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P7057776105269181904

`∩[A001132(n+1), A064739(n+1)]`
-/

namespace A141180.P7057776105269181904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P7057776105269181904

namespace A141180

/-- `∩[A001132(n+1), A064739(n+1)]` -/
def P7057776105269181904.Spec : Prop :=
  ∀ n, (P7057776105269181904.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P3133903945392838250

`∩[A038872(n+1), A038873(n+1)]`
-/

namespace A141180.P3133903945392838250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P3133903945392838250

namespace A141180

/-- `∩[A038872(n+1), A038873(n+1)]` -/
def P3133903945392838250.Spec : Prop :=
  ∀ n, (P3133903945392838250.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P3007754739093425372

`∩[A038873(n+1), A045468(n+1)]`
-/

namespace A141180.P3007754739093425372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P3007754739093425372

namespace A141180

/-- `∩[A038873(n+1), A045468(n+1)]` -/
def P3007754739093425372.Spec : Prop :=
  ∀ n, (P3007754739093425372.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P4337175634200116228

`∩[A001132(n+1), A076518(n+1)]`
-/

namespace A141180.P4337175634200116228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P4337175634200116228

namespace A141180

/-- `∩[A001132(n+1), A076518(n+1)]` -/
def P4337175634200116228.Spec : Prop :=
  ∀ n, (P4337175634200116228.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P3689552527497570692

`∩[A001132(n+1), A097955(n+1)]`
-/

namespace A141180.P3689552527497570692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P3689552527497570692

namespace A141180

/-- `∩[A001132(n+1), A097955(n+1)]` -/
def P3689552527497570692.Spec : Prop :=
  ∀ n, (P3689552527497570692.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P15660631334840362465

`∩[A038873(n+1), A097955(n+1)]`
-/

namespace A141180.P15660631334840362465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P15660631334840362465

namespace A141180

/-- `∩[A038873(n+1), A097955(n+1)]` -/
def P15660631334840362465.Spec : Prop :=
  ∀ n, (P15660631334840362465.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P17188151007661040605

`∩[A076518(n+1), A097955(n+1)]`
-/

namespace A141180.P17188151007661040605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P17188151007661040605

namespace A141180

/-- `∩[A076518(n+1), A097955(n+1)]` -/
def P17188151007661040605.Spec : Prop :=
  ∀ n, (P17188151007661040605.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P15642711971240233959

`∩[A001132(n+1), A038879(n+1)]`
-/

namespace A141180.P15642711971240233959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P15642711971240233959

namespace A141180

/-- `∩[A001132(n+1), A038879(n+1)]` -/
def P15642711971240233959.Spec : Prop :=
  ∀ n, (P15642711971240233959.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P17826934630465928583

`∩[A038879(n+1), A045468(n+1)]`
-/

namespace A141180.P17826934630465928583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P17826934630465928583

namespace A141180

/-- `∩[A038879(n+1), A045468(n+1)]` -/
def P17826934630465928583.Spec : Prop :=
  ∀ n, (P17826934630465928583.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P13490016692496414269

`∩[A038872(n+1), A055673(n+1)]`
-/

namespace A141180.P13490016692496414269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P13490016692496414269

namespace A141180

/-- `∩[A038872(n+1), A055673(n+1)]` -/
def P13490016692496414269.Spec : Prop :=
  ∀ n, (P13490016692496414269.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P5723764035416892791

`∩[A045468(n+1), A055673(n+1)]`
-/

namespace A141180.P5723764035416892791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P5723764035416892791

namespace A141180

/-- `∩[A045468(n+1), A055673(n+1)]` -/
def P5723764035416892791.Spec : Prop :=
  ∀ n, (P5723764035416892791.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P8023091342498560267

`∩[A064739(n+1), A366526(n+1)]`
-/

namespace A141180.P8023091342498560267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P8023091342498560267

namespace A141180

/-- `∩[A064739(n+1), A366526(n+1)]` -/
def P8023091342498560267.Spec : Prop :=
  ∀ n, (P8023091342498560267.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P885673681914414771

`p?[A390526(n+1)]`
-/

namespace A141180.P885673681914414771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141180.P885673681914414771

namespace A141180

/-- `p?[A390526(n+1)]` -/
def P885673681914414771.Spec : Prop :=
  ∀ n, P885673681914414771.a n = A141180 (n + 1)

end A141180

/-! ## A141180.P4325601969434399419

`∩[A001132(n+1), A023173(n+1)]`
-/

namespace A141180.P4325601969434399419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P4325601969434399419

namespace A141180

/-- `∩[A001132(n+1), A023173(n+1)]` -/
def P4325601969434399419.Spec : Prop :=
  ∀ n, (P4325601969434399419.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P4491631441104477057

`∩[A023173(n+1), A097955(n+1)]`
-/

namespace A141180.P4491631441104477057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P4491631441104477057

namespace A141180

/-- `∩[A023173(n+1), A097955(n+1)]` -/
def P4491631441104477057.Spec : Prop :=
  ∀ n, (P4491631441104477057.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P7916627932545998908

`∩[A023173(n+1), A097958(n+1)]`
-/

namespace A141180.P7916627932545998908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P7916627932545998908

namespace A141180

/-- `∩[A023173(n+1), A097958(n+1)]` -/
def P7916627932545998908.Spec : Prop :=
  ∀ n, (P7916627932545998908.a n : ℤ) = A141180 (n + 1)

end A141180

/-! ## A141180.P4899123246103835127

`∩[A058529(n+1), A038872(n+1)]`
-/

namespace A141180.P4899123246103835127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141180.P4899123246103835127

namespace A141180

/-- `∩[A058529(n+1), A038872(n+1)]` -/
def P4899123246103835127.Spec : Prop :=
  ∀ n, (P4899123246103835127.a n : ℤ) = A141180 (n + 1)

end A141180

/-!
# A141182: Primes of the form x^2+6*x*y-2*y^2 (as well as of the form 5*x^2+8*x*y+y^2).

The programs for A141182, there is no canonical definition to state claims against.
-/

/-! ## A141182.P465166714322030339

`∩[A008846(n+1), A038881(n+1)]`
-/

namespace A141182.P465166714322030339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P465166714322030339

/-! ## A141182.P7826826377821463104

`∩[A002144(n+1), A038881(n+1)]`
-/

namespace A141182.P7826826377821463104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P7826826377821463104

/-! ## A141182.P16548637238416444133

`∩[A002313(n+1), A038881(n+1)]`
-/

namespace A141182.P16548637238416444133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P16548637238416444133

/-! ## A141182.P5123331390910662639

`∩[A002144(n+1), A056874(n+1)]`
-/

namespace A141182.P5123331390910662639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P5123331390910662639

/-! ## A141182.P17022681970671465157

`∩[A002313(n+1), A056874(n+1)]`
-/

namespace A141182.P17022681970671465157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P17022681970671465157

/-! ## A141182.P6032210328523774393

`∩[A008846(n+1), A056874(n+1)]`
-/

namespace A141182.P6032210328523774393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P6032210328523774393

/-! ## A141182.P6293566472583253870

`∩[A002144(n+1), A296920(n+1)]`
-/

namespace A141182.P6293566472583253870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P6293566472583253870

/-! ## A141182.P8683797946129443970

`A056874(eq[1, and(3, A056874(n+1))]+1)`
-/

namespace A141182.P8683797946129443970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A056874 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A141182.P8683797946129443970

/-! ## A141182.P9477294420034597486

`∩[A038881(n+1), A055025(n+1)]`
-/

namespace A141182.P9477294420034597486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P9477294420034597486

/-! ## A141182.P9424513152268592305

`∩[A038881(n+1), A120960(n+1)]`
-/

namespace A141182.P9424513152268592305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P9424513152268592305

/-! ## A141182.P2311629646024198680

`∩[A038881(n+1), A125018(n+1)]`
-/

namespace A141182.P2311629646024198680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P2311629646024198680

/-! ## A141182.P14149929084445360698

`∩[A038881(n+1), A230779(n+1)]`
-/

namespace A141182.P14149929084445360698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P14149929084445360698

/-! ## A141182.P6675722951068099254

`∩[A056874(n+1), A230779(n+1)]`
-/

namespace A141182.P6675722951068099254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P6675722951068099254

/-! ## A141182.P9938658595155955434

`∩[A230779(n+1), A296920(n+1)]`
-/

namespace A141182.P9938658595155955434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P9938658595155955434

/-! ## A141182.P16989445375162020135

`∩[A230779(n+1), A296935(n+1)]`
-/

namespace A141182.P16989445375162020135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P16989445375162020135

/-! ## A141182.P17320170555824832074

`∩[A230779(n+1), A341785(n+1)]`
-/

namespace A141182.P17320170555824832074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P17320170555824832074

/-! ## A141182.P9940931360402078541

`∩[A038881(n+1), A347877(n+1)]`
-/

namespace A141182.P9940931360402078541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P9940931360402078541

/-! ## A141182.P3608875342655903169

`∩[A056874(n+1), A347877(n+1)]`
-/

namespace A141182.P3608875342655903169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P3608875342655903169

/-! ## A141182.P13712298128992764894

`∩[A296920(n+1), A347877(n+1)]`
-/

namespace A141182.P13712298128992764894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P13712298128992764894

/-! ## A141182.P16119294946798994069

`∩[A296935(n+1), A347877(n+1)]`
-/

namespace A141182.P16119294946798994069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141182.P16119294946798994069

/-!
# A141183: Primes of the form -x^2+6*x*y+2*y^2 (as well as of the form 7*x^2+10*x*y+2*y^2).

The programs for A141183, there is no canonical definition to state claims against.
-/

/-! ## A141183.P17903577032527229849

`∩[A040122(n+1), A045326(n+1)]`
-/

namespace A141183.P17903577032527229849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P17903577032527229849

/-! ## A141183.P9692349984476769174

`∩[A040122(n+1), A332555(n+1)]`
-/

namespace A141183.P9692349984476769174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P9692349984476769174

/-! ## A141183.P6341956398616459757

`∩[A040122(n+1), A097987(n+1)]`
-/

namespace A141183.P6341956398616459757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P6341956398616459757

/-! ## A141183.P1119920478083654827

`∩[A040122(n+1), A120127(n+1)]`
-/

namespace A141183.P1119920478083654827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P1119920478083654827

/-! ## A141183.P12341146927064504906

`filter[A040122(n+1), A347871(#)]`
-/

namespace A141183.P12341146927064504906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A141183.P12341146927064504906

/-! ## A141183.P11490528479298862809

`∩[A004144(n+1), A040122(n+1)]`
-/

namespace A141183.P11490528479298862809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P11490528479298862809

/-! ## A141183.P12122991672860170660

`∩[A040122(n+1), A394579(n+1)]`
-/

namespace A141183.P12122991672860170660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P12122991672860170660

/-! ## A141183.P11196266726412069271

`∩[A040122(n+1), A081754(n+1)]`
-/

namespace A141183.P11196266726412069271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P11196266726412069271

/-! ## A141183.P1743962460806998028

`∩[A040122(n+1), A268377(n+1)]`
-/

namespace A141183.P1743962460806998028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P1743962460806998028

/-! ## A141183.P13094917946955784614

`∩[A040122(n+1), A047531(n+1)]`
-/

namespace A141183.P13094917946955784614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P13094917946955784614

/-! ## A141183.P556007313654208542

`∩[A040122(n+1), A053438(n)]`
-/

namespace A141183.P556007313654208542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P556007313654208542

/-! ## A141183.P2416147032217472603

`∩[A040122(n+1), A042964(n+1)]`
-/

namespace A141183.P2416147032217472603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P2416147032217472603

/-! ## A141183.P2498738411304835071

`∩[A040122(n+1), A047532(n+1)]`
-/

namespace A141183.P2498738411304835071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P2498738411304835071

/-! ## A141183.P1909311491558766278

`∩[A040122(n+1), A047546(n+1)]`
-/

namespace A141183.P1909311491558766278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P1909311491558766278

/-! ## A141183.P8703919431116210757

`∩[A040122(n+1), A338691(n+1)]`
-/

namespace A141183.P8703919431116210757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P8703919431116210757

/-! ## A141183.P12410968150116871299

`∩[A040122(n+1), A209921(n+1)]`
-/

namespace A141183.P12410968150116871299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P12410968150116871299

/-! ## A141183.P1684360253358000033

`∩[A040122(n+1), A347873(n+1)]`
-/

namespace A141183.P1684360253358000033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P1684360253358000033

/-! ## A141183.P18344335300375771965

`∩[A040122(n+1), A083089(n+1)]`
-/

namespace A141183.P18344335300375771965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P18344335300375771965

/-! ## A141183.P16458347489061761548

`∩[A014456(n+1), A040122(n+1)]`
-/

namespace A141183.P16458347489061761548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P16458347489061761548

/-! ## A141183.P3511152856087141826

`∩[A040122(n+1), A047518(n+1)]`
-/

namespace A141183.P3511152856087141826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141183.P3511152856087141826

/-!
# A141185: a(n) = prime(prime(prime(prime(prime(prime(n)-1)-1)-1)-1)-1)-1, where prime(n) is the n-th prime.

The programs for A141185, the canonical program `A141185.P2615932710267151141` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141185 has offset 1).

The definition of A141185 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(A000040(A000040(A000040(A000040(n+1)-1)-1)-1)-1)-1)-1` (program `A141185.P2615932710267151141`, by `A141185.P2615932710267151141.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141185.P2615932710267151141

`A000040(A000040(A000040(A000040(A000040(A000040(n+1)-1)-1)-1)-1)-1)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141185

/-- `A000040(A000040(A000040(A000040(A000040(A000040(n+1)-1)-1)-1)-1)-1)-1` -/
def P2615932710267151141.Spec : Prop :=
  ∀ n, P2615932710267151141.a n = A141185 (n + 1)

theorem P2615932710267151141.correct : P2615932710267151141.Spec := by
  intro n
  simp only [A141185, Nat.add_sub_cancel]

end A141185

/-! ## A141185.P10320517124676975227

`A141139(eq[1, ∑{e}[n+1, #]])`
-/

namespace A141185.P10320517124676975227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141139 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A141185.P10320517124676975227

namespace A141185

/-- `A141139(eq[1, ∑{e}[n+1, #]])` -/
def P10320517124676975227.Spec : Prop :=
  ∀ n, P10320517124676975227.a n = A141185 (n + 1)

end A141185

/-! ## A141185.P13145118985220358531

`A141139(A006093(n+1))`
-/

namespace A141185.P13145118985220358531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141139 (A006093 (n + 1)).toNat

end

end A141185.P13145118985220358531

namespace A141185

/-- `A141139(A006093(n+1))` -/
def P13145118985220358531.Spec : Prop :=
  ∀ n, P13145118985220358531.a n = A141185 (n + 1)

end A141185

/-! ## A141185.P6436123839815594738

`A141139(record[A000010(n+1)])`
-/

namespace A141185.P6436123839815594738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141139 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141185.P6436123839815594738

namespace A141185

/-- `A141139(record[A000010(n+1)])` -/
def P6436123839815594738.Spec : Prop :=
  ∀ n, P6436123839815594738.a n = A141185 (n + 1)

end A141185

/-! ## A141185.P14728413918235837591

`A141139(A000040(n+1)-1)`
-/

namespace A141185.P14728413918235837591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141139 (A000040 (n + 1) - 1).toNat

end

end A141185.P14728413918235837591

namespace A141185

/-- `A141139(A000040(n+1)-1)` -/
def P14728413918235837591.Spec : Prop :=
  ∀ n, P14728413918235837591.a n = A141185 (n + 1)

end A141185

/-! ## A141185.P18112149848036479768

`A141139(A008578(n+2)-1)`
-/

namespace A141185.P18112149848036479768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141139 (A008578 (n + 2) - 1).toNat

end

end A141185.P18112149848036479768

namespace A141185

/-- `A141139(A008578(n+2)-1)` -/
def P18112149848036479768.Spec : Prop :=
  ∀ n, P18112149848036479768.a n = A141185 (n + 1)

end A141185

/-! ## A141185.P15756135799692766741

`A141139(eq[2, A000005(n+1)])`
-/

namespace A141185.P15756135799692766741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141185.P15756135799692766741

namespace A141185

/-- `A141139(eq[2, A000005(n+1)])` -/
def P15756135799692766741.Spec : Prop :=
  ∀ n, P15756135799692766741.a n = A141185 (n + 1)

end A141185

/-! ## A141185.P15200659303196547939

`A141139(eq[n, A000010(n+1)])`
-/

namespace A141185.P15200659303196547939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141185.P15200659303196547939

namespace A141185

/-- `A141139(eq[n, A000010(n+1)])` -/
def P15200659303196547939.Spec : Prop :=
  ∀ n, P15200659303196547939.a n = A141185 (n + 1)

end A141185

/-! ## A141185.P2053220337820483112

`A141139(A055631(A000040(n+1)))`
-/

namespace A141185.P2053220337820483112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141139 (A055631 (A000040 (n + 1)).toNat).toNat

end

end A141185.P2053220337820483112

namespace A141185

/-- `A141139(A055631(A000040(n+1)))` -/
def P2053220337820483112.Spec : Prop :=
  ∀ n, P2053220337820483112.a n = A141185 (n + 1)

end A141185

/-! ## A141185.P14807329974240095157

`A141217(A140853(n+1))`
-/

namespace A141185.P14807329974240095157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (A140853 (n + 1)).toNat

end

end A141185.P14807329974240095157

namespace A141185

/-- `A141217(A140853(n+1))` -/
def P14807329974240095157.Spec : Prop :=
  ∀ n, P14807329974240095157.a n = A141185 (n + 1)

end A141185

/-! ## A141185.P18159310012443832075

`A141217(A055003(n+1)-1)`
-/

namespace A141185.P18159310012443832075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (A055003 (n + 1) - 1).toNat

end

end A141185.P18159310012443832075

namespace A141185

/-- `A141217(A055003(n+1)-1)` -/
def P18159310012443832075.Spec : Prop :=
  ∀ n, P18159310012443832075.a n = A141185 (n + 1)

end A141185

/-! ## A141185.P13211477243727061035

`A141217(A000010(A055003(n+1)))`
-/

namespace A141185.P13211477243727061035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141217 (A000010 (A055003 (n + 1)).toNat).toNat

end

end A141185.P13211477243727061035

namespace A141185

/-- `A141217(A000010(A055003(n+1)))` -/
def P13211477243727061035.Spec : Prop :=
  ∀ n, P13211477243727061035.a n = A141185 (n + 1)

end A141185

/-!
# A141187: Primes of the form -x^2+6*x*y+3*y^2 (as well as of the form 8*x^2+12*x*y+3*y^2).

The programs for A141187, the canonical program `A141187.P9156569322079504470` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141187 has offset 1).

The definition of A141187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141187.P9156569322079504470

`p?[a(n-1)+12]` with `a(0)=3, a(1)=11`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141187

/-- `p?[a(n-1)+12]` -/
def P9156569322079504470.Spec : Prop :=
  ∀ n, (P9156569322079504470.a n : ℤ) = A141187 (n + 1)

theorem P9156569322079504470.correct : P9156569322079504470.Spec := by
  intro n
  simp only [A141187, Nat.add_sub_cancel]

end A141187

/-! ## A141187.P8040430703043298273

`p?[ogf((3+5x+4x^2)/(1-2x+x^2))]`
-/

namespace A141187.P8040430703043298273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141187.P8040430703043298273

namespace A141187

/-- `p?[ogf((3+5x+4x^2)/(1-2x+x^2))]` -/
def P8040430703043298273.Spec : Prop :=
  ∀ n, P8040430703043298273.a n = A141187 (n + 1)

end A141187

/-! ## A141187.P13575983789129036743

`∪[A068231(n+1), A094319(n)]`
-/

namespace A141187.P13575983789129036743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094319 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141187.P13575983789129036743

namespace A141187

/-- `∪[A068231(n+1), A094319(n)]` -/
def P13575983789129036743.Spec : Prop :=
  ∀ n, (P13575983789129036743.a n : ℤ) = A141187 (n + 1)

end A141187

/-! ## A141187.P6987498726449483785

`A141123(n+2)`
-/

namespace A141187.P6987498726449483785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 2)

end

end A141187.P6987498726449483785

namespace A141187

/-- `A141123(n+2)` -/
def P6987498726449483785.Spec : Prop :=
  ∀ n, P6987498726449483785.a n = A141187 (n + 1)

end A141187

/-! ## A141187.P307854221532981897

`p?[lcm(3, 2*n+1)-2*n]`
-/

namespace A141187.P307854221532981897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (2 * n + 1) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141187.P307854221532981897

namespace A141187

/-- `p?[lcm(3, 2*n+1)-2*n]` -/
def P307854221532981897.Spec : Prop :=
  ∀ n, P307854221532981897.a n = A141187 (n + 1)

end A141187

/-! ## A141187.P11333990471444003204

`p?[or(2, 3*(n+1))]`
-/

namespace A141187.P11333990471444003204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141187.P11333990471444003204

namespace A141187

/-- `p?[or(2, 3*(n+1))]` -/
def P11333990471444003204.Spec : Prop :=
  ∀ n, (P11333990471444003204.a n : ℤ) = A141187 (n + 1)

end A141187

/-! ## A141187.P3217867488771461512

`p?[or(2, 3*n)-3]`
-/

namespace A141187.P3217867488771461512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 * n) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141187.P3217867488771461512

namespace A141187

/-- `p?[or(2, 3*n)-3]` -/
def P3217867488771461512.Spec : Prop :=
  ∀ n, P3217867488771461512.a n = A141187 (n + 1)

end A141187

/-! ## A141187.P12428002951314146131

`p?[and(2, n)+3*n]`
-/

namespace A141187.P12428002951314146131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + 3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141187.P12428002951314146131

namespace A141187

/-- `p?[and(2, n)+3*n]` -/
def P12428002951314146131.Spec : Prop :=
  ∀ n, (P12428002951314146131.a n : ℤ) = A141187 (n + 1)

end A141187

/-! ## A141187.P12165837380872342747

`∩[A045410(n+1), A038874(n+1)]`
-/

namespace A141187.P12165837380872342747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141187.P12165837380872342747

namespace A141187

/-- `∩[A045410(n+1), A038874(n+1)]` -/
def P12165837380872342747.Spec : Prop :=
  ∀ n, (P12165837380872342747.a n : ℤ) = A141187 (n + 1)

end A141187

/-! ## A141187.P13265432626502806387

`∩[A002145(n+1), A038874(n+1)]`
-/

namespace A141187.P13265432626502806387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141187.P13265432626502806387

namespace A141187

/-- `∩[A002145(n+1), A038874(n+1)]` -/
def P13265432626502806387.Spec : Prop :=
  ∀ n, (P13265432626502806387.a n : ℤ) = A141187 (n + 1)

end A141187

/-! ## A141187.P3346929103880654963

`∩[A002145(n+1), A040101(n+1)]`
-/

namespace A141187.P3346929103880654963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141187.P3346929103880654963

namespace A141187

/-- `∩[A002145(n+1), A040101(n+1)]` -/
def P3346929103880654963.Spec : Prop :=
  ∀ n, (P3346929103880654963.a n : ℤ) = A141187 (n + 1)

end A141187

/-! ## A141187.P13188347115396286600

`∩[A002145(n+1), A040124(n+1)]`
-/

namespace A141187.P13188347115396286600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141187.P13188347115396286600

namespace A141187

/-- `∩[A002145(n+1), A040124(n+1)]` -/
def P13188347115396286600.Spec : Prop :=
  ∀ n, (P13188347115396286600.a n : ℤ) = A141187 (n + 1)

end A141187

/-! ## A141187.P12783908860571955773

`∩[A002145(n+1), A040994(n+1)]`
-/

namespace A141187.P12783908860571955773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141187.P12783908860571955773

namespace A141187

/-- `∩[A002145(n+1), A040994(n+1)]` -/
def P12783908860571955773.Spec : Prop :=
  ∀ n, (P12783908860571955773.a n : ℤ) = A141187 (n + 1)

end A141187

/-! ## A141187.P1910433657034989139

`∩[A002145(n+1), A045309(n+1)]`
-/

namespace A141187.P1910433657034989139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141187.P1910433657034989139

namespace A141187

/-- `∩[A002145(n+1), A045309(n+1)]` -/
def P1910433657034989139.Spec : Prop :=
  ∀ n, (P1910433657034989139.a n : ℤ) = A141187 (n + 1)

end A141187

/-! ## A141187.P3243992787608380135

`∩[A002145(n+1), A045317(n+1)]`
-/

namespace A141187.P3243992787608380135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141187.P3243992787608380135

namespace A141187

/-- `∩[A002145(n+1), A045317(n+1)]` -/
def P3243992787608380135.Spec : Prop :=
  ∀ n, (P3243992787608380135.a n : ℤ) = A141187 (n + 1)

end A141187

/-! ## A141187.P17724048259556281161

`∩[A002145(n+1), A045410(n+1)]`
-/

namespace A141187.P17724048259556281161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141187.P17724048259556281161

namespace A141187

/-- `∩[A002145(n+1), A045410(n+1)]` -/
def P17724048259556281161.Spec : Prop :=
  ∀ n, (P17724048259556281161.a n : ℤ) = A141187 (n + 1)

end A141187

/-! ## A141187.P9468839305177438942

`∩[A002145(n+1), A296933(n+1)]`
-/

namespace A141187.P9468839305177438942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141187.P9468839305177438942

namespace A141187

/-- `∩[A002145(n+1), A296933(n+1)]` -/
def P9468839305177438942.Spec : Prop :=
  ∀ n, (P9468839305177438942.a n : ℤ) = A141187 (n + 1)

end A141187

/-! ## A141187.P10536919067653093876

`∩[A045326(n+1), A045410(n+1)]`
-/

namespace A141187.P10536919067653093876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141187.P10536919067653093876

namespace A141187

/-- `∩[A045326(n+1), A045410(n+1)]` -/
def P10536919067653093876.Spec : Prop :=
  ∀ n, (P10536919067653093876.a n : ℤ) = A141187 (n + 1)

end A141187

/-! ## A141187.P10179329872694483945

`p?[gcd(6, n)+2*n]`
-/

namespace A141187.P10179329872694483945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 n + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141187.P10179329872694483945

namespace A141187

/-- `p?[gcd(6, n)+2*n]` -/
def P10179329872694483945.Spec : Prop :=
  ∀ n, (P10179329872694483945.a n : ℤ) = A141187 (n + 1)

end A141187

/-! ## A141187.P1160333526641368536

`∩[A002145(n+1), A066501(n+1)]`
-/

namespace A141187.P1160333526641368536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141187.P1160333526641368536

namespace A141187

/-- `∩[A002145(n+1), A066501(n+1)]` -/
def P1160333526641368536.Spec : Prop :=
  ∀ n, (P1160333526641368536.a n : ℤ) = A141187 (n + 1)

end A141187

/-!
# A141190: Primes of the form 2*x^2+4*x*y-5*y^2 (as well as of the form 2*x^2+8*x*y+y^2).

The programs for A141190, the canonical program `A141190.P11090339652137459371` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141190 has offset 1).

The definition of A141190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4960 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141190.P2814903820856519391

`∩[A033203(n+1), A038885(n+1)]`
-/

namespace A141190.P2814903820856519391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P2814903820856519391

namespace A141190

/-- `∩[A033203(n+1), A038885(n+1)]` -/
def P2814903820856519391.Spec : Prop :=
  ∀ n, (P2814903820856519391.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P11090339652137459371

`∩[A033203(n+1), A045373(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141190

/-- `∩[A033203(n+1), A045373(n+1)]` -/
def P11090339652137459371.Spec : Prop :=
  ∀ n, (P11090339652137459371.a n : ℤ) = A141190 (n + 1)

theorem P11090339652137459371.correct : P11090339652137459371.Spec := by
  intro n
  simp only [A141190, Nat.add_sub_cancel]

end A141190

/-! ## A141190.P15976688792359165940

`∩[A033203(n+1), A045386(n+1)]`
-/

namespace A141190.P15976688792359165940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P15976688792359165940

namespace A141190

/-- `∩[A033203(n+1), A045386(n+1)]` -/
def P15976688792359165940.Spec : Prop :=
  ∀ n, (P15976688792359165940.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P2791196580338367287

`∩[A038885(n+1), A045386(n+1)]`
-/

namespace A141190.P2791196580338367287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P2791196580338367287

namespace A141190

/-- `∩[A038885(n+1), A045386(n+1)]` -/
def P2791196580338367287.Spec : Prop :=
  ∀ n, (P2791196580338367287.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P12713222538943175017

`∩[A038885(n+1), A341784(n+1)]`
-/

namespace A141190.P12713222538943175017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P12713222538943175017

namespace A141190

/-- `∩[A038885(n+1), A341784(n+1)]` -/
def P12713222538943175017.Spec : Prop :=
  ∀ n, (P12713222538943175017.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P10182330085587651578

`∩[A045373(n+1), A341784(n+1)]`
-/

namespace A141190.P10182330085587651578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P10182330085587651578

namespace A141190

/-- `∩[A045373(n+1), A341784(n+1)]` -/
def P10182330085587651578.Spec : Prop :=
  ∀ n, (P10182330085587651578.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P4662000072585134814

`∩[A045386(n+1), A341784(n+1)]`
-/

namespace A141190.P4662000072585134814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P4662000072585134814

namespace A141190

/-- `∩[A045386(n+1), A341784(n+1)]` -/
def P4662000072585134814.Spec : Prop :=
  ∀ n, (P4662000072585134814.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P15568466062721220602

`∩[A034031(n+1), A038885(n+1)]`
-/

namespace A141190.P15568466062721220602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P15568466062721220602

namespace A141190

/-- `∩[A034031(n+1), A038885(n+1)]` -/
def P15568466062721220602.Spec : Prop :=
  ∀ n, (P15568466062721220602.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P10406032513236348988

`∩[A034031(n+1), A045373(n+1)]`
-/

namespace A141190.P10406032513236348988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P10406032513236348988

namespace A141190

/-- `∩[A034031(n+1), A045373(n+1)]` -/
def P10406032513236348988.Spec : Prop :=
  ∀ n, (P10406032513236348988.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P6622654392688370043

`∩[A034031(n+1), A045386(n+1)]`
-/

namespace A141190.P6622654392688370043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P6622654392688370043

namespace A141190

/-- `∩[A034031(n+1), A045386(n+1)]` -/
def P6622654392688370043.Spec : Prop :=
  ∀ n, (P6622654392688370043.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P2777017645530202023

`∩[A033203(n+1), A244779(n+1)]`
-/

namespace A141190.P2777017645530202023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P2777017645530202023

namespace A141190

/-- `∩[A033203(n+1), A244779(n+1)]` -/
def P2777017645530202023.Spec : Prop :=
  ∀ n, (P2777017645530202023.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P17818578532777653307

`∩[A038885(n+1), A057127(n+1)]`
-/

namespace A141190.P17818578532777653307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P17818578532777653307

namespace A141190

/-- `∩[A038885(n+1), A057127(n+1)]` -/
def P17818578532777653307.Spec : Prop :=
  ∀ n, (P17818578532777653307.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P9163675623415416832

`∩[A045373(n+1), A057127(n+1)]`
-/

namespace A141190.P9163675623415416832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P9163675623415416832

namespace A141190

/-- `∩[A045373(n+1), A057127(n+1)]` -/
def P9163675623415416832.Spec : Prop :=
  ∀ n, (P9163675623415416832.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P13050017544249535269

`∩[A045386(n+1), A057127(n+1)]`
-/

namespace A141190.P13050017544249535269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P13050017544249535269

namespace A141190

/-- `∩[A045386(n+1), A057127(n+1)]` -/
def P13050017544249535269.Spec : Prop :=
  ∀ n, (P13050017544249535269.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P3555909462485297835

`∩[A033203(n+1), A035248(n+1)]`
-/

namespace A141190.P3555909462485297835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P3555909462485297835

namespace A141190

/-- `∩[A033203(n+1), A035248(n+1)]` -/
def P3555909462485297835.Spec : Prop :=
  ∀ n, (P3555909462485297835.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P13333426930049852055

`∩[A034034(n+1), A038885(n+1)]`
-/

namespace A141190.P13333426930049852055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P13333426930049852055

namespace A141190

/-- `∩[A034034(n+1), A038885(n+1)]` -/
def P13333426930049852055.Spec : Prop :=
  ∀ n, (P13333426930049852055.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P3142162972824685380

`∩[A034034(n+1), A045373(n+1)]`
-/

namespace A141190.P3142162972824685380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P3142162972824685380

namespace A141190

/-- `∩[A034034(n+1), A045373(n+1)]` -/
def P3142162972824685380.Spec : Prop :=
  ∀ n, (P3142162972824685380.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P2588899060408711288

`∩[A034034(n+1), A045386(n+1)]`
-/

namespace A141190.P2588899060408711288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P2588899060408711288

namespace A141190

/-- `∩[A034034(n+1), A045386(n+1)]` -/
def P2588899060408711288.Spec : Prop :=
  ∀ n, (P2588899060408711288.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P14522529167783052430

`∩[A002479(n+1), A038885(n+1)]`
-/

namespace A141190.P14522529167783052430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P14522529167783052430

namespace A141190

/-- `∩[A002479(n+1), A038885(n+1)]` -/
def P14522529167783052430.Spec : Prop :=
  ∀ n, (P14522529167783052430.a n : ℤ) = A141190 (n + 1)

end A141190

/-! ## A141190.P653783823030585296

`∩[A002479(n+1), A045373(n+1)]`
-/

namespace A141190.P653783823030585296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141190.P653783823030585296

namespace A141190

/-- `∩[A002479(n+1), A045373(n+1)]` -/
def P653783823030585296.Spec : Prop :=
  ∀ n, (P653783823030585296.a n : ℤ) = A141190 (n + 1)

end A141190

/-!
# A141191: Primes of the form -2*x^2+4*x*y+5*y^2 (as well as of the form 10*x^2+16*x*y+5*y^2).

The programs for A141191, the canonical program `A141191.P4676343676224680577` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141191 has offset 1).

The definition of A141191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141191.P65929382511361320

`∩[A038885(n+1), A045399(n+1)]`
-/

namespace A141191.P65929382511361320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P65929382511361320

namespace A141191

/-- `∩[A038885(n+1), A045399(n+1)]` -/
def P65929382511361320.Spec : Prop :=
  ∀ n, (P65929382511361320.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P6472199184552241068

`∩[A003628(n+1), A038885(n+1)]`
-/

namespace A141191.P6472199184552241068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P6472199184552241068

namespace A141191

/-- `∩[A003628(n+1), A038885(n+1)]` -/
def P6472199184552241068.Spec : Prop :=
  ∀ n, (P6472199184552241068.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P4676343676224680577

`∩[A003628(n+1), A045399(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141191

/-- `∩[A003628(n+1), A045399(n+1)]` -/
def P4676343676224680577.Spec : Prop :=
  ∀ n, (P4676343676224680577.a n : ℤ) = A141191 (n + 1)

theorem P4676343676224680577.correct : P4676343676224680577.Spec := by
  intro n
  simp only [A141191, Nat.add_sub_cancel]

end A141191

/-! ## A141191.P18614073612191421

`∩[A045355(n+1), A045399(n+1)]`
-/

namespace A141191.P18614073612191421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P18614073612191421

namespace A141191

/-- `∩[A045355(n+1), A045399(n+1)]` -/
def P18614073612191421.Spec : Prop :=
  ∀ n, (P18614073612191421.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P12780467843568251601

`∩[A045399(n+1), A216738(n+1)]`
-/

namespace A141191.P12780467843568251601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P12780467843568251601

namespace A141191

/-- `∩[A045399(n+1), A216738(n+1)]` -/
def P12780467843568251601.Spec : Prop :=
  ∀ n, (P12780467843568251601.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P11279587154614815212

`∩[A003628(n+1), A042952(n)]`
-/

namespace A141191.P11279587154614815212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P11279587154614815212

namespace A141191

/-- `∩[A003628(n+1), A042952(n)]` -/
def P11279587154614815212.Spec : Prop :=
  ∀ n, (P11279587154614815212.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P7803405091364799603

`∩[A216738(n+1), A042952(n)]`
-/

namespace A141191.P7803405091364799603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P7803405091364799603

namespace A141191

/-- `∩[A216738(n+1), A042952(n)]` -/
def P7803405091364799603.Spec : Prop :=
  ∀ n, (P7803405091364799603.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P10110242326932195613

`∩[A038885(n+1), A047550(n+1)]`
-/

namespace A141191.P10110242326932195613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P10110242326932195613

namespace A141191

/-- `∩[A038885(n+1), A047550(n+1)]` -/
def P10110242326932195613.Spec : Prop :=
  ∀ n, (P10110242326932195613.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P10254313998509727797

`∩[A045399(n+1), A047550(n+1)]`
-/

namespace A141191.P10254313998509727797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P10254313998509727797

namespace A141191

/-- `∩[A045399(n+1), A047550(n+1)]` -/
def P10254313998509727797.Spec : Prop :=
  ∀ n, (P10254313998509727797.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P18166545674255109668

`∩[A003628(n+1), A035257(n+1)]`
-/

namespace A141191.P18166545674255109668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P18166545674255109668

namespace A141191

/-- `∩[A003628(n+1), A035257(n+1)]` -/
def P18166545674255109668.Spec : Prop :=
  ∀ n, (P18166545674255109668.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P8422750921287194682

`∩[A035257(n+1), A045399(n+1)]`
-/

namespace A141191.P8422750921287194682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P8422750921287194682

namespace A141191

/-- `∩[A035257(n+1), A045399(n+1)]` -/
def P8422750921287194682.Spec : Prop :=
  ∀ n, (P8422750921287194682.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P2951741312940148740

`∩[A038885(n+1), A273929(n+1)]`
-/

namespace A141191.P2951741312940148740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P2951741312940148740

namespace A141191

/-- `∩[A038885(n+1), A273929(n+1)]` -/
def P2951741312940148740.Spec : Prop :=
  ∀ n, (P2951741312940148740.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P13116417830024224619

`∩[A045399(n+1), A273929(n+1)]`
-/

namespace A141191.P13116417830024224619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P13116417830024224619

namespace A141191

/-- `∩[A045399(n+1), A273929(n+1)]` -/
def P13116417830024224619.Spec : Prop :=
  ∀ n, (P13116417830024224619.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P6567628618916347655

`∩[A038885(n+1), A055052(n+1)]`
-/

namespace A141191.P6567628618916347655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P6567628618916347655

namespace A141191

/-- `∩[A038885(n+1), A055052(n+1)]` -/
def P6567628618916347655.Spec : Prop :=
  ∀ n, (P6567628618916347655.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P2240754276758862449

`∩[A045399(n+1), A055052(n+1)]`
-/

namespace A141191.P2240754276758862449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P2240754276758862449

namespace A141191

/-- `∩[A045399(n+1), A055052(n+1)]` -/
def P2240754276758862449.Spec : Prop :=
  ∀ n, (P2240754276758862449.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P4670261100154188611

`∩[A038885(n+1), A047574(n+1)]`
-/

namespace A141191.P4670261100154188611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P4670261100154188611

namespace A141191

/-- `∩[A038885(n+1), A047574(n+1)]` -/
def P4670261100154188611.Spec : Prop :=
  ∀ n, (P4670261100154188611.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P10070820103698117180

`∩[A045399(n+1), A047574(n+1)]`
-/

namespace A141191.P10070820103698117180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P10070820103698117180

namespace A141191

/-- `∩[A045399(n+1), A047574(n+1)]` -/
def P10070820103698117180.Spec : Prop :=
  ∀ n, (P10070820103698117180.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P7413001149599717302

`∩[A038885(n+1), A047477(n+1)]`
-/

namespace A141191.P7413001149599717302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P7413001149599717302

namespace A141191

/-- `∩[A038885(n+1), A047477(n+1)]` -/
def P7413001149599717302.Spec : Prop :=
  ∀ n, (P7413001149599717302.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P15736304391461472878

`∩[A038885(n+1), A047491(n+1)]`
-/

namespace A141191.P15736304391461472878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P15736304391461472878

namespace A141191

/-- `∩[A038885(n+1), A047491(n+1)]` -/
def P15736304391461472878.Spec : Prop :=
  ∀ n, (P15736304391461472878.a n : ℤ) = A141191 (n + 1)

end A141191

/-! ## A141191.P10712453322100894468

`∩[A045399(n+1), A047477(n+1)]`
-/

namespace A141191.P10712453322100894468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141191.P10712453322100894468

namespace A141191

/-- `∩[A045399(n+1), A047477(n+1)]` -/
def P10712453322100894468.Spec : Prop :=
  ∀ n, (P10712453322100894468.a n : ℤ) = A141191 (n + 1)

end A141191

/-!
# A141192: Primes of the form 3*x^2+3*x*y-4*y^2 (as well as of the form 8*x^2+11*x*y+2*y^2).

The programs for A141192, the canonical program `A141192.P12091153532500432266` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141192 has offset 1).

The definition of A141192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141192.P1421538387180095063

`∩[A038935(n+1), A045309(n+1)]`
-/

namespace A141192.P1421538387180095063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141192.P1421538387180095063

namespace A141192

/-- `∩[A038935(n+1), A045309(n+1)]` -/
def P1421538387180095063.Spec : Prop :=
  ∀ n, (P1421538387180095063.a n : ℤ) = A141192 (n + 1)

end A141192

/-! ## A141192.P8256095077580457710

`∩[A038935(n+1), A191063(n+1)]`
-/

namespace A141192.P8256095077580457710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141192.P8256095077580457710

namespace A141192

/-- `∩[A038935(n+1), A191063(n+1)]` -/
def P8256095077580457710.Spec : Prop :=
  ∀ n, (P8256095077580457710.a n : ℤ) = A141192 (n + 1)

end A141192

/-! ## A141192.P12091153532500432266

`∩[A045309(n+1), A191063(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A141192

/-- `∩[A045309(n+1), A191063(n+1)]` -/
def P12091153532500432266.Spec : Prop :=
  ∀ n, (P12091153532500432266.a n : ℤ) = A141192 (n + 1)

theorem P12091153532500432266.correct : P12091153532500432266.Spec := by
  intro n
  simp only [A141192, Nat.add_sub_cancel]

end A141192

/-! ## A141192.P11282428868942360863

`∩[A038935(n+1), A066501(n+1)]`
-/

namespace A141192.P11282428868942360863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141192.P11282428868942360863

namespace A141192

/-- `∩[A038935(n+1), A066501(n+1)]` -/
def P11282428868942360863.Spec : Prop :=
  ∀ n, (P11282428868942360863.a n : ℤ) = A141192 (n + 1)

end A141192

/-! ## A141192.P8929563104938276643

`∩[A066501(n+1), A191063(n+1)]`
-/

namespace A141192.P8929563104938276643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141192.P8929563104938276643

namespace A141192

/-- `∩[A066501(n+1), A191063(n+1)]` -/
def P8929563104938276643.Spec : Prop :=
  ∀ n, (P8929563104938276643.a n : ℤ) = A141192 (n + 1)

end A141192

/-! ## A141192.P10765672139690973928

`∩[A038935(n+1), A074243(n+1)]`
-/

namespace A141192.P10765672139690973928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141192.P10765672139690973928

namespace A141192

/-- `∩[A038935(n+1), A074243(n+1)]` -/
def P10765672139690973928.Spec : Prop :=
  ∀ n, (P10765672139690973928.a n : ℤ) = A141192 (n + 1)

end A141192

/-! ## A141192.P5081482490591869884

`∩[A074243(n+1), A191063(n+1)]`
-/

namespace A141192.P5081482490591869884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141192.P5081482490591869884

namespace A141192

/-- `∩[A074243(n+1), A191063(n+1)]` -/
def P5081482490591869884.Spec : Prop :=
  ∀ n, (P5081482490591869884.a n : ℤ) = A141192 (n + 1)

end A141192

/-! ## A141192.P13075544063869998221

`∩[A038935(n+1), A088232(n+1)]`
-/

namespace A141192.P13075544063869998221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141192.P13075544063869998221

namespace A141192

/-- `∩[A038935(n+1), A088232(n+1)]` -/
def P13075544063869998221.Spec : Prop :=
  ∀ n, (P13075544063869998221.a n : ℤ) = A141192 (n + 1)

end A141192

/-! ## A141192.P13626910412293556004

`∩[A088232(n+1), A191063(n+1)]`
-/

namespace A141192.P13626910412293556004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141192.P13626910412293556004

namespace A141192

/-- `∩[A088232(n+1), A191063(n+1)]` -/
def P13626910412293556004.Spec : Prop :=
  ∀ n, (P13626910412293556004.a n : ℤ) = A141192 (n + 1)

end A141192

/-! ## A141192.P14603254468346458205

`∩[A038935(n+1), A230780(n+1)]`
-/

namespace A141192.P14603254468346458205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141192.P14603254468346458205

namespace A141192

/-- `∩[A038935(n+1), A230780(n+1)]` -/
def P14603254468346458205.Spec : Prop :=
  ∀ n, (P14603254468346458205.a n : ℤ) = A141192 (n + 1)

end A141192

/-! ## A141192.P13759996538752281831

`∩[A191063(n+1), A230780(n+1)]`
-/

namespace A141192.P13759996538752281831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141192.P13759996538752281831

namespace A141192

/-- `∩[A191063(n+1), A230780(n+1)]` -/
def P13759996538752281831.Spec : Prop :=
  ∀ n, (P13759996538752281831.a n : ℤ) = A141192 (n + 1)

end A141192

/-! ## A141192.P11279283685147325047

`∩[A038935(n+1), A047254(n+1)]`
-/

namespace A141192.P11279283685147325047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141192.P11279283685147325047

namespace A141192

/-- `∩[A038935(n+1), A047254(n+1)]` -/
def P11279283685147325047.Spec : Prop :=
  ∀ n, (P11279283685147325047.a n : ℤ) = A141192 (n + 1)

end A141192

/-! ## A141192.P16679994807673376790

`∩[A038935(n+1), A189716(n+1)]`
-/

namespace A141192.P16679994807673376790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141192.P16679994807673376790

namespace A141192

/-- `∩[A038935(n+1), A189716(n+1)]` -/
def P16679994807673376790.Spec : Prop :=
  ∀ n, (P16679994807673376790.a n : ℤ) = A141192 (n + 1)

end A141192

/-! ## A141192.P8704263653977844577

`∩[A047254(n+1), A191063(n+1)]`
-/

namespace A141192.P8704263653977844577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141192.P8704263653977844577

namespace A141192

/-- `∩[A047254(n+1), A191063(n+1)]` -/
def P8704263653977844577.Spec : Prop :=
  ∀ n, (P8704263653977844577.a n : ℤ) = A141192 (n + 1)

end A141192

/-! ## A141192.P6425337570257882463

`∩[A189716(n+1), A191063(n+1)]`
-/

namespace A141192.P6425337570257882463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141192.P6425337570257882463

namespace A141192

/-- `∩[A189716(n+1), A191063(n+1)]` -/
def P6425337570257882463.Spec : Prop :=
  ∀ n, (P6425337570257882463.a n : ℤ) = A141192 (n + 1)

end A141192

/-! ## A141192.P1141146517025631073

`p?[A243192(n+1)]`
-/

namespace A141192.P1141146517025631073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141192.P1141146517025631073

namespace A141192

/-- `p?[A243192(n+1)]` -/
def P1141146517025631073.Spec : Prop :=
  ∀ n, P1141146517025631073.a n = A141192 (n + 1)

end A141192

/-! ## A141192.P13177680137575054607

`record[A020639(A243192(n+2))]`
-/

namespace A141192.P13177680137575054607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A243192 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141192.P13177680137575054607

namespace A141192

/-- `record[A020639(A243192(n+2))]` -/
def P13177680137575054607.Spec : Prop :=
  ∀ n, P13177680137575054607.a n = A141192 (n + 1)

end A141192

/-! ## A141192.P5349390610139433372

`filter[A243192(n+2), A010051(#)]`
-/

namespace A141192.P5349390610139433372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243192 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141192.P5349390610139433372

namespace A141192

/-- `filter[A243192(n+2), A010051(#)]` -/
def P5349390610139433372.Spec : Prop :=
  ∀ n, P5349390610139433372.a n = A141192 (n + 1)

end A141192

/-! ## A141192.P10690974752666503217

`filter[A243192(n+2), A302777(#)]`
-/

namespace A141192.P10690974752666503217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243192 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A141192.P10690974752666503217

namespace A141192

/-- `filter[A243192(n+2), A302777(#)]` -/
def P10690974752666503217.Spec : Prop :=
  ∀ n, P10690974752666503217.a n = A141192 (n + 1)

end A141192

/-! ## A141192.P7014423386752538418

`filter[A243192(n+2), A323152(#)]`
-/

namespace A141192.P7014423386752538418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243192 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A141192.P7014423386752538418

namespace A141192

/-- `filter[A243192(n+2), A323152(#)]` -/
def P7014423386752538418.Spec : Prop :=
  ∀ n, P7014423386752538418.a n = A141192 (n + 1)

end A141192

/-!
# A141193: Primes of the form -3*x^2+3*x*y+4*y^2 (as well as of the form 6*x^2+9*x*y+y^2).

The programs for A141193, there is no canonical definition to state claims against.
-/

/-! ## A141193.P3696364155135123181

`∩[A002476(n+1), A106863(n+1)]`
-/

namespace A141193.P3696364155135123181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P3696364155135123181

/-! ## A141193.P7976987189354271372

`∩[A007645(n+1), A106863(n+1)]`
-/

namespace A141193.P7976987189354271372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P7976987189354271372

/-! ## A141193.P11946999323455546947

`∩[A045331(n+1), A106863(n+1)]`
-/

namespace A141193.P11946999323455546947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P11946999323455546947

/-! ## A141193.P17384850367816856671

`∩[A045375(n+1), A106863(n+1)]`
-/

namespace A141193.P17384850367816856671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P17384850367816856671

/-! ## A141193.P11214950373282277527

`∩[A279815(n+1), A106863(n+1)]`
-/

namespace A141193.P11214950373282277527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P11214950373282277527

/-! ## A141193.P9466972381468888533

`∩[A002476(n+1), A038935(n+1)]`
-/

namespace A141193.P9466972381468888533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P9466972381468888533

/-! ## A141193.P14486101213543609043

`∩[A038935(n+1), A106863(n+1)]`
-/

namespace A141193.P14486101213543609043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P14486101213543609043

/-! ## A141193.P4826886878206766612

`∩[A038935(n+1), A123365(n+1)]`
-/

namespace A141193.P4826886878206766612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P4826886878206766612

/-! ## A141193.P12685877077472322829

`∩[A002476(n+1), A341787(n+1)]`
-/

namespace A141193.P12685877077472322829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P12685877077472322829

/-! ## A141193.P10839935609554417342

`∩[A007645(n+1), A341787(n+1)]`
-/

namespace A141193.P10839935609554417342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P10839935609554417342

/-! ## A141193.P13227757473573070576

`∩[A055664(n+1), A106863(n+1)]`
-/

namespace A141193.P13227757473573070576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P13227757473573070576

/-! ## A141193.P14463637490081605333

`∩[A038935(n+1), A133290(n+1)]`
-/

namespace A141193.P14463637490081605333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P14463637490081605333

/-! ## A141193.P12609700009470625531

`∩[A106863(n+1), A133290(n+1)]`
-/

namespace A141193.P12609700009470625531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P12609700009470625531

/-! ## A141193.P10702847312449379272

`∩[A038935(n+1), A137827(n+1)]`
-/

namespace A141193.P10702847312449379272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P10702847312449379272

/-! ## A141193.P908937672971386516

`filter[A038935(n+1), A070563(#)]`
-/

namespace A141193.P908937672971386516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A141193.P908937672971386516

/-! ## A141193.P8906099969685188554

`filter[A106863(n+1), A070563(#)]`
-/

namespace A141193.P8906099969685188554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A141193.P8906099969685188554

/-! ## A141193.P2725106232247752253

`∩[A038935(n+1), A107925(n+1)]`
-/

namespace A141193.P2725106232247752253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P2725106232247752253

/-! ## A141193.P4082695175228408919

`∩[A004611(n+1), A038935(n+1)]`
-/

namespace A141193.P4082695175228408919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P4082695175228408919

/-! ## A141193.P3574318276459096266

`∩[A004611(n+1), A106863(n+1)]`
-/

namespace A141193.P3574318276459096266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P3574318276459096266

/-! ## A141193.P3021047351964714719

`∩[A038935(n+1), A129904(n+1)]`
-/

namespace A141193.P3021047351964714719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141193.P3021047351964714719

/-!
# A141194: Primes of the form 16k+7.

The programs for A141194, the canonical program `A141194.P3921873644654613885` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141194 has offset 1).

The definition of A141194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9832 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141194.P3921873644654613885

`p?[4*4*n+7]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141194

/-- `p?[4*4*n+7]` -/
def P3921873644654613885.Spec : Prop :=
  ∀ n, (P3921873644654613885.a n : ℤ) = A141194 (n + 1)

theorem P3921873644654613885.correct : P3921873644654613885.Spec := by
  intro n
  simp only [A141194, Nat.add_sub_cancel]

end A141194

/-! ## A141194.P5148133118854158199

`or(3, p?[a(n-1)+16])` with `a(0)=7`
-/

namespace A141194.P5148133118854158199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141194.P5148133118854158199

namespace A141194

/-- `or(3, p?[a(n-1)+16])` -/
def P5148133118854158199.Spec : Prop :=
  ∀ n, (P5148133118854158199.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P4477477188493534129

`∩[A004628(n+1), A228227(n+1)]`
-/

namespace A141194.P4477477188493534129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P4477477188493534129

namespace A141194

/-- `∩[A004628(n+1), A228227(n+1)]` -/
def P4477477188493534129.Spec : Prop :=
  ∀ n, (P4477477188493534129.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P7008983884995164627

`∩[A040141(n+1), A228227(n+1)]`
-/

namespace A141194.P7008983884995164627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P7008983884995164627

namespace A141194

/-- `∩[A040141(n+1), A228227(n+1)]` -/
def P7008983884995164627.Spec : Prop :=
  ∀ n, (P7008983884995164627.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P12699419603786814099

`∩[A036259(n+1), A228227(n+1)]`
-/

namespace A141194.P12699419603786814099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P12699419603786814099

namespace A141194

/-- `∩[A036259(n+1), A228227(n+1)]` -/
def P12699419603786814099.Spec : Prop :=
  ∀ n, (P12699419603786814099.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P14075457079541157085

`∩[A045315(n+1), A228227(n+1)]`
-/

namespace A141194.P14075457079541157085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P14075457079541157085

namespace A141194

/-- `∩[A045315(n+1), A228227(n+1)]` -/
def P14075457079541157085.Spec : Prop :=
  ∀ n, (P14075457079541157085.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P17821109295112493315

`∩[A001132(n+1), A228227(n+1)]`
-/

namespace A141194.P17821109295112493315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P17821109295112493315

namespace A141194

/-- `∩[A001132(n+1), A228227(n+1)]` -/
def P17821109295112493315.Spec : Prop :=
  ∀ n, (P17821109295112493315.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P15914052610321521349

`∩[A004628(n+1), A214588(n+1)]`
-/

namespace A141194.P15914052610321521349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P15914052610321521349

namespace A141194

/-- `∩[A004628(n+1), A214588(n+1)]` -/
def P15914052610321521349.Spec : Prop :=
  ∀ n, (P15914052610321521349.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P11708047045352958263

`∩[A007522(n+1), A214588(n+1)]`
-/

namespace A141194.P11708047045352958263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P11708047045352958263

namespace A141194

/-- `∩[A007522(n+1), A214588(n+1)]` -/
def P11708047045352958263.Spec : Prop :=
  ∀ n, (P11708047045352958263.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P6069611743314999400

`∩[A003628(n+1), A228227(n+1)]`
-/

namespace A141194.P6069611743314999400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P6069611743314999400

namespace A141194

/-- `∩[A003628(n+1), A228227(n+1)]` -/
def P6069611743314999400.Spec : Prop :=
  ∀ n, (P6069611743314999400.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P7190827460157298575

`∩[A216690(n+1), A228227(n+1)]`
-/

namespace A141194.P7190827460157298575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P7190827460157298575

namespace A141194

/-- `∩[A216690(n+1), A228227(n+1)]` -/
def P7190827460157298575.Spec : Prop :=
  ∀ n, (P7190827460157298575.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P17264819070105198744

`∩[A095283(n+1), A228227(n+1)]`
-/

namespace A141194.P17264819070105198744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P17264819070105198744

namespace A141194

/-- `∩[A095283(n+1), A228227(n+1)]` -/
def P17264819070105198744.Spec : Prop :=
  ∀ n, (P17264819070105198744.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P1893555046527100321

`∩[A095283(n+1), A170837(n)+2]`
-/

namespace A141194.P1893555046527100321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P1893555046527100321

namespace A141194

/-- `∩[A095283(n+1), A170837(n)+2]` -/
def P1893555046527100321.Spec : Prop :=
  ∀ n, (P1893555046527100321.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P15715587932123053021

`∩[A216734(n+1), A170837(n)+2]`
-/

namespace A141194.P15715587932123053021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P15715587932123053021

namespace A141194

/-- `∩[A216734(n+1), A170837(n)+2]` -/
def P15715587932123053021.Spec : Prop :=
  ∀ n, (P15715587932123053021.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P1757192869069954583

`∩[A216735(n+1), A228227(n+1)]`
-/

namespace A141194.P1757192869069954583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P1757192869069954583

namespace A141194

/-- `∩[A216735(n+1), A228227(n+1)]` -/
def P1757192869069954583.Spec : Prop :=
  ∀ n, (P1757192869069954583.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P12774091293113924428

`∩[A216739(n+1), A228227(n+1)]`
-/

namespace A141194.P12774091293113924428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P12774091293113924428

namespace A141194

/-- `∩[A216739(n+1), A228227(n+1)]` -/
def P12774091293113924428.Spec : Prop :=
  ∀ n, (P12774091293113924428.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P6034630947834754268

`∩[A049564(n+1), A228227(n+1)]`
-/

namespace A141194.P6034630947834754268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P6034630947834754268

namespace A141194

/-- `∩[A049564(n+1), A228227(n+1)]` -/
def P6034630947834754268.Spec : Prop :=
  ∀ n, (P6034630947834754268.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P13185217680415039363

`∩[A045352(n+1), A228227(n+1)]`
-/

namespace A141194.P13185217680415039363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P13185217680415039363

namespace A141194

/-- `∩[A045352(n+1), A228227(n+1)]` -/
def P13185217680415039363.Spec : Prop :=
  ∀ n, (P13185217680415039363.a n : ℤ) = A141194 (n + 1)

end A141194

/-! ## A141194.P10752197111615492739

`∩[A045442(n+1), A228227(n+1)]`
-/

namespace A141194.P10752197111615492739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141194.P10752197111615492739

namespace A141194

/-- `∩[A045442(n+1), A228227(n+1)]` -/
def P10752197111615492739.Spec : Prop :=
  ∀ n, (P10752197111615492739.a n : ℤ) = A141194 (n + 1)

end A141194

/-!
# A141195: Primes of the form 16k+11.

The programs for A141195, the canonical program `A141195.P9133799144925653088` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141195 has offset 1).

The definition of A141195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9815 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141195.P9133799144925653088

`p?[16*n-5]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141195

/-- `p?[16*n-5]` -/
def P9133799144925653088.Spec : Prop :=
  ∀ n, P9133799144925653088.a n = A141195 (n + 1)

theorem P9133799144925653088.correct : P9133799144925653088.Spec := by
  intro n
  simp only [A141195, Nat.add_sub_cancel]

end A141195

/-! ## A141195.P6481547507293199410

`∩[A332446(n+1), A228227(n+1)]`
-/

namespace A141195.P6481547507293199410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P6481547507293199410

namespace A141195

/-- `∩[A332446(n+1), A228227(n+1)]` -/
def P6481547507293199410.Spec : Prop :=
  ∀ n, (P6481547507293199410.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P18142539509106892860

`∩[A033200(n+1), A228227(n+1)]`
-/

namespace A141195.P18142539509106892860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P18142539509106892860

namespace A141195

/-- `∩[A033200(n+1), A228227(n+1)]` -/
def P18142539509106892860.Spec : Prop :=
  ∀ n, (P18142539509106892860.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P1715208340832059537

`∩[A042999(n+1), A228227(n+1)]`
-/

namespace A141195.P1715208340832059537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P1715208340832059537

namespace A141195

/-- `∩[A042999(n+1), A228227(n+1)]` -/
def P1715208340832059537.Spec : Prop :=
  ∀ n, (P1715208340832059537.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P76636516527410028

`∩[A002145(n+1), A106839(n)]`
-/

namespace A141195.P76636516527410028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P76636516527410028

namespace A141195

/-- `∩[A002145(n+1), A106839(n)]` -/
def P76636516527410028.Spec : Prop :=
  ∀ n, (P76636516527410028.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P11408142177511900035

`∩[A003629(n+1), A106839(n)]`
-/

namespace A141195.P11408142177511900035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P11408142177511900035

namespace A141195

/-- `∩[A003629(n+1), A106839(n)]` -/
def P11408142177511900035.Spec : Prop :=
  ∀ n, (P11408142177511900035.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P2901425044320594759

`∩[A007520(n+1), A106839(n)]`
-/

namespace A141195.P2901425044320594759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P2901425044320594759

namespace A141195

/-- `∩[A007520(n+1), A106839(n)]` -/
def P2901425044320594759.Spec : Prop :=
  ∀ n, (P2901425044320594759.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P5649266227754245523

`∩[A033200(n+1), A106839(n)]`
-/

namespace A141195.P5649266227754245523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P5649266227754245523

namespace A141195

/-- `∩[A033200(n+1), A106839(n)]` -/
def P5649266227754245523.Spec : Prop :=
  ∀ n, (P5649266227754245523.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P8297490653922841554

`∩[A033203(n+1), A106839(n)]`
-/

namespace A141195.P8297490653922841554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P8297490653922841554

namespace A141195

/-- `∩[A033203(n+1), A106839(n)]` -/
def P8297490653922841554.Spec : Prop :=
  ∀ n, (P8297490653922841554.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P16551588562229781790

`∩[A040100(n+1), A106839(n)]`
-/

namespace A141195.P16551588562229781790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P16551588562229781790

namespace A141195

/-- `∩[A040100(n+1), A106839(n)]` -/
def P16551588562229781790.Spec : Prop :=
  ∀ n, (P16551588562229781790.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P3232898883137769711

`∩[A040144(n+1), A106839(n)]`
-/

namespace A141195.P3232898883137769711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P3232898883137769711

namespace A141195

/-- `∩[A040144(n+1), A106839(n)]` -/
def P3232898883137769711.Spec : Prop :=
  ∀ n, (P3232898883137769711.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P5467341341291199941

`∩[A040993(n+1), A106839(n)]`
-/

namespace A141195.P5467341341291199941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P5467341341291199941

namespace A141195

/-- `∩[A040993(n+1), A106839(n)]` -/
def P5467341341291199941.Spec : Prop :=
  ∀ n, (P5467341341291199941.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P988216737133744177

`∩[A042999(n+1), A106839(n)]`
-/

namespace A141195.P988216737133744177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P988216737133744177

namespace A141195

/-- `∩[A042999(n+1), A106839(n)]` -/
def P988216737133744177.Spec : Prop :=
  ∀ n, (P988216737133744177.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P13822806719444374784

`∩[A045326(n+1), A106839(n)]`
-/

namespace A141195.P13822806719444374784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P13822806719444374784

namespace A141195

/-- `∩[A045326(n+1), A106839(n)]` -/
def P13822806719444374784.Spec : Prop :=
  ∀ n, (P13822806719444374784.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P8060448070336774984

`∩[A045339(n+1), A106839(n)]`
-/

namespace A141195.P8060448070336774984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P8060448070336774984

namespace A141195

/-- `∩[A045339(n+1), A106839(n)]` -/
def P8060448070336774984.Spec : Prop :=
  ∀ n, (P8060448070336774984.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P6022609042699090751

`∩[A049098(n+1), A106839(n)]`
-/

namespace A141195.P6022609042699090751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P6022609042699090751

namespace A141195

/-- `∩[A049098(n+1), A106839(n)]` -/
def P6022609042699090751.Spec : Prop :=
  ∀ n, (P6022609042699090751.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P2820829033158934373

`∩[A051071(n+1), A106839(n)]`
-/

namespace A141195.P2820829033158934373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P2820829033158934373

namespace A141195

/-- `∩[A051071(n+1), A106839(n)]` -/
def P2820829033158934373.Spec : Prop :=
  ∀ n, (P2820829033158934373.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P901285212869248137

`∩[A051073(n+1), A106839(n)]`
-/

namespace A141195.P901285212869248137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P901285212869248137

namespace A141195

/-- `∩[A051073(n+1), A106839(n)]` -/
def P901285212869248137.Spec : Prop :=
  ∀ n, (P901285212869248137.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P8113194131395476459

`∩[A051077(n+1), A106839(n)]`
-/

namespace A141195.P8113194131395476459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P8113194131395476459

namespace A141195

/-- `∩[A051077(n+1), A106839(n)]` -/
def P8113194131395476459.Spec : Prop :=
  ∀ n, (P8113194131395476459.a n : ℤ) = A141195 (n + 1)

end A141195

/-! ## A141195.P10027105955615683391

`∩[A059263(n+1), A106839(n)]`
-/

namespace A141195.P10027105955615683391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141195.P10027105955615683391

namespace A141195

/-- `∩[A059263(n+1), A106839(n)]` -/
def P10027105955615683391.Spec : Prop :=
  ∀ n, (P10027105955615683391.a n : ℤ) = A141195 (n + 1)

end A141195

/-!
# A141196: Primes of the form 16k+13.

The programs for A141196, the canonical program `A141196.P13853549410394302553` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141196 has offset 1).

The definition of A141196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9807 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141196.P13853549410394302553

`p?[16*n-3]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141196

/-- `p?[16*n-3]` -/
def P13853549410394302553.Spec : Prop :=
  ∀ n, P13853549410394302553.a n = A141196 (n + 1)

theorem P13853549410394302553.correct : P13853549410394302553.Spec := by
  intro n
  simp only [A141196, Nat.add_sub_cancel]

end A141196

/-! ## A141196.P9457614625262808181

`∩[A002144(n+1), A082285(n)]`
-/

namespace A141196.P9457614625262808181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P9457614625262808181

namespace A141196

/-- `∩[A002144(n+1), A082285(n)]` -/
def P9457614625262808181.Spec : Prop :=
  ∀ n, (P9457614625262808181.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P5922004935267243441

`∩[A002313(n+1), A082285(n)]`
-/

namespace A141196.P5922004935267243441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P5922004935267243441

namespace A141196

/-- `∩[A002313(n+1), A082285(n)]` -/
def P5922004935267243441.Spec : Prop :=
  ∀ n, (P5922004935267243441.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P2602304390658561845

`∩[A003628(n+1), A082285(n)]`
-/

namespace A141196.P2602304390658561845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P2602304390658561845

namespace A141196

/-- `∩[A003628(n+1), A082285(n)]` -/
def P2602304390658561845.Spec : Prop :=
  ∀ n, (P2602304390658561845.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P17488574764989177633

`∩[A003629(n+1), A082285(n)]`
-/

namespace A141196.P17488574764989177633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P17488574764989177633

namespace A141196

/-- `∩[A003629(n+1), A082285(n)]` -/
def P17488574764989177633.Spec : Prop :=
  ∀ n, (P17488574764989177633.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P15793926673428747542

`∩[A007521(n+1), A082285(n)]`
-/

namespace A141196.P15793926673428747542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P15793926673428747542

namespace A141196

/-- `∩[A007521(n+1), A082285(n)]` -/
def P15793926673428747542.Spec : Prop :=
  ∀ n, (P15793926673428747542.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P15859889985525503590

`∩[A040100(n+1), A082285(n)]`
-/

namespace A141196.P15859889985525503590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P15859889985525503590

namespace A141196

/-- `∩[A040100(n+1), A082285(n)]` -/
def P15859889985525503590.Spec : Prop :=
  ∀ n, (P15859889985525503590.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P17169123441410142513

`∩[A040144(n+1), A082285(n)]`
-/

namespace A141196.P17169123441410142513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P17169123441410142513

namespace A141196

/-- `∩[A040144(n+1), A082285(n)]` -/
def P17169123441410142513.Spec : Prop :=
  ∀ n, (P17169123441410142513.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P9921083540887899981

`∩[A040993(n+1), A082285(n)]`
-/

namespace A141196.P9921083540887899981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P9921083540887899981

namespace A141196

/-- `∩[A040993(n+1), A082285(n)]` -/
def P9921083540887899981.Spec : Prop :=
  ∀ n, (P9921083540887899981.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P1061967630877318758

`∩[A042999(n+1), A082285(n)]`
-/

namespace A141196.P1061967630877318758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P1061967630877318758

namespace A141196

/-- `∩[A042999(n+1), A082285(n)]` -/
def P1061967630877318758.Spec : Prop :=
  ∀ n, (P1061967630877318758.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P8374210491724469436

`∩[A045355(n+1), A082285(n)]`
-/

namespace A141196.P8374210491724469436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P8374210491724469436

namespace A141196

/-- `∩[A045355(n+1), A082285(n)]` -/
def P8374210491724469436.Spec : Prop :=
  ∀ n, (P8374210491724469436.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P9896072620009993346

`∩[A045366(n+1), A082285(n)]`
-/

namespace A141196.P9896072620009993346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P9896072620009993346

namespace A141196

/-- `∩[A045366(n+1), A082285(n)]` -/
def P9896072620009993346.Spec : Prop :=
  ∀ n, (P9896072620009993346.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P4890318419573619333

`∩[A049092(n+1), A082285(n)]`
-/

namespace A141196.P4890318419573619333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P4890318419573619333

namespace A141196

/-- `∩[A049092(n+1), A082285(n)]` -/
def P4890318419573619333.Spec : Prop :=
  ∀ n, (P4890318419573619333.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P14387329884014440823

`∩[A055025(n+1), A082285(n)]`
-/

namespace A141196.P14387329884014440823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P14387329884014440823

namespace A141196

/-- `∩[A055025(n+1), A082285(n)]` -/
def P14387329884014440823.Spec : Prop :=
  ∀ n, (P14387329884014440823.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P6713600816115932703

`∩[A059263(n+1), A082285(n)]`
-/

namespace A141196.P6713600816115932703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P6713600816115932703

namespace A141196

/-- `∩[A059263(n+1), A082285(n)]` -/
def P6713600816115932703.Spec : Prop :=
  ∀ n, (P6713600816115932703.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P18029993584982297009

`∩[A059265(n+1), A082285(n)]`
-/

namespace A141196.P18029993584982297009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P18029993584982297009

namespace A141196

/-- `∩[A059265(n+1), A082285(n)]` -/
def P18029993584982297009.Spec : Prop :=
  ∀ n, (P18029993584982297009.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P13849320950113380125

`∩[A059311(n+1), A082285(n)]`
-/

namespace A141196.P13849320950113380125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P13849320950113380125

namespace A141196

/-- `∩[A059311(n+1), A082285(n)]` -/
def P13849320950113380125.Spec : Prop :=
  ∀ n, (P13849320950113380125.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P12820122446825597081

`∩[A059314(n+1), A082285(n)]`
-/

namespace A141196.P12820122446825597081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P12820122446825597081

namespace A141196

/-- `∩[A059314(n+1), A082285(n)]` -/
def P12820122446825597081.Spec : Prop :=
  ∀ n, (P12820122446825597081.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P1329075722293906393

`∩[A079348(n+1), A082285(n)]`
-/

namespace A141196.P1329075722293906393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P1329075722293906393

namespace A141196

/-- `∩[A079348(n+1), A082285(n)]` -/
def P1329075722293906393.Spec : Prop :=
  ∀ n, (P1329075722293906393.a n : ℤ) = A141196 (n + 1)

end A141196

/-! ## A141196.P13295748847826927065

`∩[A172480(n+1), A082285(n)]`
-/

namespace A141196.P13295748847826927065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141196.P13295748847826927065

namespace A141196

/-- `∩[A172480(n+1), A082285(n)]` -/
def P13295748847826927065.Spec : Prop :=
  ∀ n, (P13295748847826927065.a n : ℤ) = A141196 (n + 1)

end A141196

/-!
# A141197: a(n) = the number of divisors of n that are each one less than a power of a prime.

The programs for A141197, the canonical program `A141197.P14685996120928120634` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141197 has offset 1).

The definition of A141197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141197.P14685996120928120634

`∑{d}[n+1, A069513(#+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141197

/-- `∑{d}[n+1, A069513(#+1)]` -/
def P14685996120928120634.Spec : Prop :=
  ∀ n, P14685996120928120634.a n = A141197 (n + 1)

theorem P14685996120928120634.correct : P14685996120928120634.Spec := by
  intro n
  simp only [A141197, Nat.add_sub_cancel]

end A141197

/-! ## A141197.P3796222219887683524

`∑{d}[n+1, C(2, A001221(#+1)+1)]`
-/

namespace A141197.P3796222219887683524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose 2 (A001221 (d + 1) + 1).toNat

end

end A141197.P3796222219887683524

namespace A141197

/-- `∑{d}[n+1, C(2, A001221(#+1)+1)]` -/
def P3796222219887683524.Spec : Prop :=
  ∀ n, (P3796222219887683524.a n : ℤ) = A141197 (n + 1)

end A141197

/-! ## A141197.P5486104362149431864

`∑{d}[n+1, val(A006530(#+1), A020639(#+1))]`
-/

namespace A141197.P5486104362149431864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A006530 (d + 1)).toNat (A020639 (d + 1)).toNat

end

end A141197.P5486104362149431864

namespace A141197

/-- `∑{d}[n+1, val(A006530(#+1), A020639(#+1))]` -/
def P5486104362149431864.Spec : Prop :=
  ∀ n, (P5486104362149431864.a n : ℤ) = A141197 (n + 1)

end A141197

/-! ## A141197.P4354944334425217611

`∑{d}[n+1, A010055(#+1)]`
-/

namespace A141197.P4354944334425217611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010055 (d + 1)

end

end A141197.P4354944334425217611

namespace A141197

/-- `∑{d}[n+1, A010055(#+1)]` -/
def P4354944334425217611.Spec : Prop :=
  ∀ n, P4354944334425217611.a n = A141197 (n + 1)

end A141197

/-! ## A141197.P18294144405401510149

`∑{d}[n+1, A001222(A014963(#+1))]`
-/

namespace A141197.P18294144405401510149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 (A014963 (d + 1)).toNat

end

end A141197.P18294144405401510149

namespace A141197

/-- `∑{d}[n+1, A001222(A014963(#+1))]` -/
def P18294144405401510149.Spec : Prop :=
  ∀ n, P18294144405401510149.a n = A141197 (n + 1)

end A141197

/-!
# A141198: a(n) is the number of divisors of n that are each one more than a power of a prime.

The programs for A141198, there is no canonical definition to state claims against.
-/

/-! ## A141198.P15779481383875753940

`A252505(n+1)-A342007(A001405(n))`
-/

namespace A141198.P15779481383875753940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252505 (n + 1) - A342007 (A001405 n).toNat

end

end A141198.P15779481383875753940

/-! ## A141198.P16210154076237731792

`∏{e}[n+1, #+1]-A043284(A336131(n))`
-/

namespace A141198.P16210154076237731792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A043284 (A336131 n).toNat

end

end A141198.P16210154076237731792

/-! ## A141198.P5828081186970130309

`Δ[A054519(n)]-A055090(A038754(n))`
-/

namespace A141198.P5828081186970130309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A055090 (A038754 n).toNat

end

end A141198.P5828081186970130309

/-! ## A141198.P5961990862172131722

`A000005(n+1)-A055090(A038754(n))`
-/

namespace A141198.P5961990862172131722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A055090 (A038754 n).toNat

end

end A141198.P5961990862172131722

/-! ## A141198.P14282363645258419546

`A000005(n+1)+A324290(A233247(n))-2`
-/

namespace A141198.P14282363645258419546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A324290 (A233247 n).toNat - 2)

end

end A141198.P14282363645258419546

/-!
# A141199: Number of hierarchical ordered partitions of partitions.

The programs for A141199, there is no canonical definition to state claims against.
-/

/-! ## A141199.P9099246622866018473

`or(A319003(n), A366388(A202705(n)))`
-/

namespace A141199.P9099246622866018473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A319003 n) (A366388 (A202705 n).toNat)

end

end A141199.P9099246622866018473

/-! ## A141199.P2460755271204571240

`A319003(n)+A032741(A185236(2*n+1))`
-/

namespace A141199.P2460755271204571240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319003 n + A032741 (A185236 (2 * n + 1)).toNat

end

end A141199.P2460755271204571240

/-! ## A141199.P5892377947051672156

`or(A316223(A000837(n)), A319003(n))`
-/

namespace A141199.P5892377947051672156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A316223 (A000837 n).toNat) (A319003 n)

end

end A141199.P5892377947051672156

/-! ## A141199.P3308639606188886801

`or(A319003(n), A327051(A023359(n)))`
-/

namespace A141199.P3308639606188886801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A319003 n) (A327051 (A023359 n).toNat)

end

end A141199.P3308639606188886801

/-! ## A141199.P6956131112582330598

`or(A086077(A300975(n)), A319003(n))`
-/

namespace A141199.P6956131112582330598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086077 (A300975 n).toNat) (A319003 n)

end

end A141199.P6956131112582330598

