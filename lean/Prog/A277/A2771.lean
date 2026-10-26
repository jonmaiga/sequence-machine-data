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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A277100: Irregular triangle read by rows: T(n,k) is the number of partitions of n having k distinct parts i (i>=2) of multiplicity i-1 (n>=0).

The programs for A277100, there is no canonical definition to state claims against.
-/

/-! ## A277100.P5250413512092819385

`A303821(A147418(n+4))+1`
-/

namespace A277100.P5250413512092819385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303821 (A147418 (n + 4)).toNat + 1

end

end A277100.P5250413512092819385

/-! ## A277100.P17678254671382696647

`gcd(A029044(n), A055645(A097331(n)²))`
-/

namespace A277100.P17678254671382696647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029044 n) (A055645 (A097331 n ^ 2).toNat)

end

end A277100.P17678254671382696647

/-! ## A277100.P13359208444815592170

`A112789(A288862(n+1))%A053251(n+4)`
-/

namespace A277100.P13359208444815592170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112789 (A288862 (n + 1)).toNat) (A053251 (n + 4))

end

end A277100.P13359208444815592170

/-!
# A277101: Sum over all partitions of n of the number of distinct parts i of multiplicity i - 1.

The programs for A277101, there is no canonical definition to state claims against.
-/

/-! ## A277101.P16727006244076554776

`A084376(n)-(A276428(n)+A000041(n))`
-/

namespace A277101.P16727006244076554776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084376 n - (A276428 n + A000041 n)

end

end A277101.P16727006244076554776

/-! ## A277101.P12586998353013553717

`A194805(n)-(A276428(n)+A000065(n))`
-/

namespace A277101.P12586998353013553717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194805 n - (A276428 n + A000065 n)

end

end A277101.P12586998353013553717

/-! ## A277101.P7118973522022288808

`A194439(n+1)-A276428(A028310(n))`
-/

namespace A277101.P7118973522022288808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (n + 1) - A276428 (A028310 n).toNat

end

end A277101.P7118973522022288808

/-! ## A277101.P9896622635209299618

`A194439(n+1)-A276428(A134478(∑[n]))`
-/

namespace A277101.P9896622635209299618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (n + 1) - A276428 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A277101.P9896622635209299618

/-! ## A277101.P5035480289146855764

`A194439(n+1)-A276428(A000007(n)+n)`
-/

namespace A277101.P5035480289146855764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (n + 1) - A276428 (A000007 n + (n : ℤ)).toNat

end

end A277101.P5035480289146855764

/-!
# A277102: Number of partitions of n containing no part i of multiplicity i-1.

The programs for A277102, there is no canonical definition to state claims against.
-/

/-! ## A277102.P7279038723903595059

`A321728(n+1)+A067618(n)`
-/

namespace A277102.P7279038723903595059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (n + 1) + A067618 n

end

end A277102.P7279038723903595059

/-! ## A277102.P9718950265489118985

`A381996(n)+∑[char[A028982(n+3)]]`
-/

namespace A277102.P9718950265489118985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381996 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A277102.P9718950265489118985

/-! ## A277102.P17908259966295596292

`A321728(n+1)+A051840(A051838(3*(n+1)))`
-/

namespace A277102.P17908259966295596292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (n + 1) + A051840 (A051838 (3 * (n + 1))).toNat

end

end A277102.P17908259966295596292

/-! ## A277102.P5917408508993158635

`A057561(A332746(n)-char[or(2, n)])`
-/

namespace A277102.P5917408508993158635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (A332746 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A277102.P5917408508993158635

/-!
# A277103: Number of partitions of n for which the number of odd parts is equal to the positive alternating sum of the parts.

The programs for A277103, there is no canonical definition to state claims against.
-/

/-! ## A277103.P17978207485575941363

`A097567(∑[n])`
-/

namespace A277103.P17978207485575941363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097567 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277103.P17978207485575941363

/-! ## A277103.P12272007478801275258

`A097567(A000217(n))%28`
-/

namespace A277103.P12272007478801275258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097567 (A000217 n).toNat) 28

end

end A277103.P12272007478801275258

/-! ## A277103.P2705165731167963858

`A097567(A179865(n+1))%64`
-/

namespace A277103.P2705165731167963858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097567 (A179865 (n + 1)).toNat) 64

end

end A277103.P2705165731167963858

/-! ## A277103.P655063718074508393

`A000194(A097567(C(n+1, 2))²)`
-/

namespace A277103.P655063718074508393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A097567 (Nat.choose (n + 1) 2) ^ 2).toNat

end

end A277103.P655063718074508393

/-! ## A277103.P17065350872525470354

`A000194(A097567(n²-C(n, 2))²)`
-/

namespace A277103.P17065350872525470354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A097567 (n ^ 2 - Nat.choose n 2) ^ 2).toNat

end

end A277103.P17065350872525470354

/-!
# A277104: a(n) = 9*3^n - 15.

The programs for A277104, the canonical program `A277104.P17325888795200582890` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277104 has offset 1).

The definition of A277104 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*3^(n+1)-15` (program `A277104.P17325888795200582890`, by `A277104.P17325888795200582890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277104.P10666247588059598603

`3^(n+3)-15`
-/

namespace A277104.P10666247588059598603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 3) : ℤ) - 15

end

end A277104.P10666247588059598603

namespace A277104

/-- `3^(n+3)-15` -/
def P10666247588059598603.Spec : Prop :=
  ∀ n, P10666247588059598603.a n = A277104 (n + 1)

theorem P10666247588059598603.correct : P10666247588059598603.Spec := by
  intro n
  simp only [A277104, Nat.add_sub_cancel, A277104.P10666247588059598603.a, A277104.P17325888795200582890.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A277104

/-! ## A277104.P17325888795200582890

`9*3^(n+1)-15`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277104

/-- `9*3^(n+1)-15` -/
def P17325888795200582890.Spec : Prop :=
  ∀ n, P17325888795200582890.a n = A277104 (n + 1)

theorem P17325888795200582890.correct : P17325888795200582890.Spec := by
  intro n
  simp only [A277104, Nat.add_sub_cancel]

end A277104

/-! ## A277104.P163241013015280391

`3*A168613(n+2)`
-/

namespace A277104.P163241013015280391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A168613 (n + 2)

end

end A277104.P163241013015280391

namespace A277104

/-- `3*A168613(n+2)` -/
def P163241013015280391.Spec : Prop :=
  ∀ n, P163241013015280391.a n = A277104 (n + 1)

theorem P163241013015280391.correct : P163241013015280391.Spec := by
  intro n
  simp only [A277104, Nat.add_sub_cancel, A277104.P163241013015280391.a, A277104.P17325888795200582890.a, A168613, A168613.P14074791163006525735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277104

/-! ## A277104.P13114035021403042963

`ogf((12+18x)/(1-4x+3x^2))`
-/

namespace A277104.P13114035021403042963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 18] [1, -4, 3] n

end

end A277104.P13114035021403042963

namespace A277104

/-- `ogf((12+18x)/(1-4x+3x^2))` -/
def P13114035021403042963.Spec : Prop :=
  ∀ n, P13114035021403042963.a n = A277104 (n + 1)

end A277104

/-! ## A277104.P9180481015909764845

`record[lcm(3, 3^n-5)]`
-/

namespace A277104.P9180481015909764845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ((3 ^ n : ℤ) - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277104.P9180481015909764845

namespace A277104

/-- `record[lcm(3, 3^n-5)]` -/
def P9180481015909764845.Spec : Prop :=
  ∀ n, (P9180481015909764845.a n : ℤ) = A277104 (n + 1)

end A277104

/-! ## A277104.P16911156005185594463

`3*(a(n-1)+10)` with `a(0)=12`
-/

namespace A277104.P16911156005185594463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12] fun n a =>
  3 * (a (n - 1) + 10)

end

end A277104.P16911156005185594463

namespace A277104

/-- `3*(a(n-1)+10)` -/
def P16911156005185594463.Spec : Prop :=
  ∀ n, (P16911156005185594463.a n : ℤ) = A277104 (n + 1)

theorem P16911156005185594463.correct : P16911156005185594463.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A277104, Nat.add_sub_cancel, A277104.P16911156005185594463.a, A277104.P17325888795200582890.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A277104, Nat.add_sub_cancel, A277104.P16911156005185594463.a, A277104.P17325888795200582890.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A277104

/-! ## A277104.P11817969630465053108

`lcm(6, a(n-1)+10)` with `a(0)=12`
-/

namespace A277104.P11817969630465053108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12] fun n a =>
  Nat.lcm 6 (a (n - 1) + 10)

end

end A277104.P11817969630465053108

namespace A277104

/-- `lcm(6, a(n-1)+10)` -/
def P11817969630465053108.Spec : Prop :=
  ∀ n, (P11817969630465053108.a n : ℤ) = A277104 (n + 1)

end A277104

/-! ## A277104.P4298501134535833529

`∑[3*a(n-1)]` with `a(0)=12, a(1)=54`
-/

namespace A277104.P4298501134535833529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12, 54] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277104.P4298501134535833529

namespace A277104

/-- `∑[3*a(n-1)]` -/
def P4298501134535833529.Spec : Prop :=
  ∀ n, (P4298501134535833529.a n : ℤ) = A277104 (n + 1)

end A277104

/-! ## A277104.P3537288974217361563

`∑[2*A027313(n+1)]`
-/

namespace A277104.P3537288974217361563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277104.P3537288974217361563

namespace A277104

/-- `∑[2*A027313(n+1)]` -/
def P3537288974217361563.Spec : Prop :=
  ∀ n, P3537288974217361563.a n = A277104 (n + 1)

end A277104

/-! ## A277104.P13798112634864005205

`2*(A168569(n+1)-3)`
-/

namespace A277104.P13798112634864005205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168569 (n + 1) - 3)

end

end A277104.P13798112634864005205

namespace A277104

/-- `2*(A168569(n+1)-3)` -/
def P13798112634864005205.Spec : Prop :=
  ∀ n, P13798112634864005205.a n = A277104 (n + 1)

end A277104

/-! ## A277104.P13609551857298982022

`3*(A168611(n+2)-1)`
-/

namespace A277104.P13609551857298982022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A168611 (n + 2) - 1)

end

end A277104.P13609551857298982022

namespace A277104

/-- `3*(A168611(n+2)-1)` -/
def P13609551857298982022.Spec : Prop :=
  ∀ n, P13609551857298982022.a n = A277104 (n + 1)

theorem P13609551857298982022.correct : P13609551857298982022.Spec := by
  intro n
  simp only [A277104, Nat.add_sub_cancel, A277104.P13609551857298982022.a, A277104.P17325888795200582890.a, A168611, A168611.P3246960888346736715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277104

/-! ## A277104.P9368186559351967789

`3*(A058809(n+2)-2)`
-/

namespace A277104.P9368186559351967789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A058809 (n + 2) - 2)

end

end A277104.P9368186559351967789

namespace A277104

/-- `3*(A058809(n+2)-2)` -/
def P9368186559351967789.Spec : Prop :=
  ∀ n, P9368186559351967789.a n = A277104 (n + 1)

end A277104

/-! ## A277104.P5014500828044944655

`3*(A058481(n+2)-3)`
-/

namespace A277104.P5014500828044944655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A058481 (n + 2) - 3)

end

end A277104.P5014500828044944655

namespace A277104

/-- `3*(A058481(n+2)-3)` -/
def P5014500828044944655.Spec : Prop :=
  ∀ n, P5014500828044944655.a n = A277104 (n + 1)

theorem P5014500828044944655.correct : P5014500828044944655.Spec := by
  intro n
  simp only [A277104, Nat.add_sub_cancel, A277104.P5014500828044944655.a, A277104.P17325888795200582890.a, A058481, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277104

/-! ## A277104.P4758860433869841211

`3*(A060188(n+3)+n-2)`
-/

namespace A277104.P4758860433869841211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A060188 (n + 3) + ((n : ℤ) - 2))

end

end A277104.P4758860433869841211

namespace A277104

/-- `3*(A060188(n+3)+n-2)` -/
def P4758860433869841211.Spec : Prop :=
  ∀ n, P4758860433869841211.a n = A277104 (n + 1)

theorem P4758860433869841211.correct : P4758860433869841211.Spec := by
  intro n
  simp only [A277104, Nat.add_sub_cancel, A277104.P4758860433869841211.a, A277104.P17325888795200582890.a, A060188, A060188.P11107692300150342190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277104

/-!
# A277105: a(n) = (27*3^n - 63)/2.

The programs for A277105, the canonical program `A277105.P4249415682091381104` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277105 has offset 1).

The definition of A277105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277105.P4249415682091381104

`9*A116970(n+2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A277105

/-- `9*A116970(n+2)` -/
def P4249415682091381104.Spec : Prop :=
  ∀ n, P4249415682091381104.a n = A277105 (n + 1)

theorem P4249415682091381104.correct : P4249415682091381104.Spec := by
  intro n
  simp only [A277105, Nat.add_sub_cancel]

end A277105

/-! ## A277105.P16381072133638769027

`(27*3^(n+1)-63)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277105.P16381072133638769027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((27 * 3 ^ (n + 1) : ℤ) - 63 : ℚ) / 2

end

end A277105.P16381072133638769027

namespace A277105

/-- `(27*3^(n+1)-63)/2` -/
def P16381072133638769027.Spec : Prop :=
  ∀ n, P16381072133638769027.a n = (A277105 (n + 1) : ℚ)

end A277105

/-! ## A277105.P7311299030273375225

`3*(a(n-1)+21)` with `a(0)=9`
-/

namespace A277105.P7311299030273375225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  3 * (a (n - 1) + 21)

end

end A277105.P7311299030273375225

namespace A277105

/-- `3*(a(n-1)+21)` -/
def P7311299030273375225.Spec : Prop :=
  ∀ n, (P7311299030273375225.a n : ℤ) = A277105 (n + 1)

end A277105

/-! ## A277105.P10334628352700468823

`lcm(9, a(n-1)+21)` with `a(0)=9`
-/

namespace A277105.P10334628352700468823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  Nat.lcm 9 (a (n - 1) + 21)

end

end A277105.P10334628352700468823

namespace A277105

/-- `lcm(9, a(n-1)+21)` -/
def P10334628352700468823.Spec : Prop :=
  ∀ n, (P10334628352700468823.a n : ℤ) = A277105 (n + 1)

end A277105

/-! ## A277105.P1078118687774219890

`∑[3*a(n-1)]` with `a(0)=9, a(1)=81`
-/

namespace A277105.P1078118687774219890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 81] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277105.P1078118687774219890

namespace A277105

/-- `∑[3*a(n-1)]` -/
def P1078118687774219890.Spec : Prop :=
  ∀ n, (P1078118687774219890.a n : ℤ) = A277105 (n + 1)

end A277105

/-! ## A277105.P11755421807411961768

`a(n-1)+3^(n+3)` with `a(0)=9`
-/

namespace A277105.P11755421807411961768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + 3 ^ (n + 3)

end

end A277105.P11755421807411961768

namespace A277105

/-- `a(n-1)+3^(n+3)` -/
def P11755421807411961768.Spec : Prop :=
  ∀ n, (P11755421807411961768.a n : ℤ) = A277105 (n + 1)

end A277105

/-! ## A277105.P1530191998166234562

`∑[3^(n+3-C(2, n+2))]`
-/

namespace A277105.P1530191998166234562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n + 3 : ℤ) - (Nat.choose 2 (n + 2) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277105.P1530191998166234562

namespace A277105

/-- `∑[3^(n+3-C(2, n+2))]` -/
def P1530191998166234562.Spec : Prop :=
  ∀ n, P1530191998166234562.a n = (A277105 (n + 1) : ℚ)

end A277105

/-! ## A277105.P14038744934437010394

`∑[3^ceil(atan(n+1)+n+1)]`
-/

namespace A277105.P14038744934437010394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌈Real.arctan (n + 1 : ℝ) + (n + 1 : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277105.P14038744934437010394

namespace A277105

/-- `∑[3^ceil(atan(n+1)+n+1)]` -/
def P14038744934437010394.Spec : Prop :=
  ∀ n, P14038744934437010394.a n = (A277105 (n + 1) : ℚ)

end A277105

/-! ## A277105.P16728095486079529659

`∑[3^((n+1)%(2*n+1)+2)]`
-/

namespace A277105.P16728095486079529659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ ((n + 1) % (2 * n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277105.P16728095486079529659

namespace A277105

/-- `∑[3^((n+1)%(2*n+1)+2)]` -/
def P16728095486079529659.Spec : Prop :=
  ∀ n, (P16728095486079529659.a n : ℤ) = A277105 (n + 1)

end A277105

/-! ## A277105.P8866231451602420588

`∑[3^A326178(n+2)]`
-/

namespace A277105.P8866231451602420588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A326178 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277105.P8866231451602420588

namespace A277105

/-- `∑[3^A326178(n+2)]` -/
def P8866231451602420588.Spec : Prop :=
  ∀ n, P8866231451602420588.a n = (A277105 (n + 1) : ℚ)

end A277105

/-! ## A277105.P10893568360850280567

`∑[A000244(ceil(sqrt(4*(n+1)+n²+n)))]`
-/

namespace A277105.P10893568360850280567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 ⌈Real.sqrt (4 * (n + 1) + (n ^ 2 + n) : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277105.P10893568360850280567

namespace A277105

/-- `∑[A000244(ceil(sqrt(4*(n+1)+n²+n)))]` -/
def P10893568360850280567.Spec : Prop :=
  ∀ n, P10893568360850280567.a n = A277105 (n + 1)

end A277105

/-! ## A277105.P5402696435275887600

`A295911(n+1)+A036547(n)`
-/

namespace A277105.P5402696435275887600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295911 (n + 1) + A036547 n

end

end A277105.P5402696435275887600

namespace A277105

/-- `A295911(n+1)+A036547(n)` -/
def P5402696435275887600.Spec : Prop :=
  ∀ n, P5402696435275887600.a n = A277105 (n + 1)

end A277105

/-! ## A277105.P17040599833212840483

`∑[A056449(2*A319701(2*(n+1)))]`
-/

namespace A277105.P17040599833212840483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 (2 * A319701 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277105.P17040599833212840483

namespace A277105

/-- `∑[A056449(2*A319701(2*(n+1)))]` -/
def P17040599833212840483.Spec : Prop :=
  ∀ n, P17040599833212840483.a n = A277105 (n + 1)

end A277105

/-! ## A277105.P1700318935143581691

`∑[dr(A000244(n+1))*A000244(n+1)]`
-/

namespace A277105.P1700318935143581691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A000244 (n + 1)) : ℤ) * A000244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277105.P1700318935143581691

namespace A277105

/-- `∑[dr(A000244(n+1))*A000244(n+1)]` -/
def P1700318935143581691.Spec : Prop :=
  ∀ n, P1700318935143581691.a n = A277105 (n + 1)

end A277105

/-! ## A277105.P13032546290500580450

`∑[record[A000244(A004736(n+5))]]`
-/

namespace A277105.P13032546290500580450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A004736 (n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277105.P13032546290500580450

namespace A277105

/-- `∑[record[A000244(A004736(n+5))]]` -/
def P13032546290500580450.Spec : Prop :=
  ∀ n, P13032546290500580450.a n = A277105 (n + 1)

end A277105

/-! ## A277105.P13523917826770235925

`∑[A255622(A000096(n+1)-1)]`
-/

namespace A277105.P13523917826770235925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255622 (A000096 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277105.P13523917826770235925

namespace A277105

/-- `∑[A255622(A000096(n+1)-1)]` -/
def P13523917826770235925.Spec : Prop :=
  ∀ n, P13523917826770235925.a n = A277105 (n + 1)

end A277105

/-!
# A277106: a(n) = 8*3^n - 12.

The programs for A277106, the canonical program `A277106.P18109216653649048968` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277106 has offset 1).

The definition of A277106 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*3^(n+1)-12` (program `A277106.P18109216653649048968`, by `A277106.P18109216653649048968.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277106.P18109216653649048968

`8*3^(n+1)-12`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277106

/-- `8*3^(n+1)-12` -/
def P18109216653649048968.Spec : Prop :=
  ∀ n, P18109216653649048968.a n = A277106 (n + 1)

theorem P18109216653649048968.correct : P18109216653649048968.Spec := by
  intro n
  simp only [A277106, Nat.add_sub_cancel]

end A277106

/-! ## A277106.P1964384128979810235

`12*A048473(n)`
-/

namespace A277106.P1964384128979810235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A048473 n

end

end A277106.P1964384128979810235

namespace A277106

/-- `12*A048473(n)` -/
def P1964384128979810235.Spec : Prop :=
  ∀ n, P1964384128979810235.a n = A277106 (n + 1)

theorem P1964384128979810235.correct : P1964384128979810235.Spec := by
  intro n
  simp only [A277106, Nat.add_sub_cancel, A277106.P1964384128979810235.a, A277106.P18109216653649048968.a, A048473, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277106

/-! ## A277106.P11267059587897218915

`ogf((12+12x)/(1-4x+3x^2))`
-/

namespace A277106.P11267059587897218915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 12] [1, -4, 3] n

end

end A277106.P11267059587897218915

namespace A277106

/-- `ogf((12+12x)/(1-4x+3x^2))` -/
def P11267059587897218915.Spec : Prop :=
  ∀ n, P11267059587897218915.a n = A277106 (n + 1)

end A277106

/-! ## A277106.P7340451110304977219

`lcm(12, 1-Δ[3^n])`
-/

namespace A277106.P7340451110304977219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A277106.P7340451110304977219

namespace A277106

/-- `lcm(12, 1-Δ[3^n])` -/
def P7340451110304977219.Spec : Prop :=
  ∀ n, (P7340451110304977219.a n : ℤ) = A277106 (n + 1)

end A277106

/-! ## A277106.P3543024201561860643

`6*xor(6, 4*3^n)`
-/

namespace A277106.P3543024201561860643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.xor 6 (4 * 3 ^ n)

end

end A277106.P3543024201561860643

namespace A277106

/-- `6*xor(6, 4*3^n)` -/
def P3543024201561860643.Spec : Prop :=
  ∀ n, (P3543024201561860643.a n : ℤ) = A277106 (n + 1)

end A277106

/-! ## A277106.P17034545848639736063

`3*(a(n-1)+8)` with `a(0)=12`
-/

namespace A277106.P17034545848639736063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12] fun n a =>
  3 * (a (n - 1) + 8)

end

end A277106.P17034545848639736063

namespace A277106

/-- `3*(a(n-1)+8)` -/
def P17034545848639736063.Spec : Prop :=
  ∀ n, (P17034545848639736063.a n : ℤ) = A277106 (n + 1)

theorem P17034545848639736063.correct : P17034545848639736063.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A277106, Nat.add_sub_cancel, A277106.P17034545848639736063.a, A277106.P18109216653649048968.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A277106, Nat.add_sub_cancel, A277106.P17034545848639736063.a, A277106.P18109216653649048968.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A277106

/-! ## A277106.P9665674528638524658

`∑[3*a(n-1)]` with `a(0)=12, a(1)=48`
-/

namespace A277106.P9665674528638524658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12, 48] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277106.P9665674528638524658

namespace A277106

/-- `∑[3*a(n-1)]` -/
def P9665674528638524658.Spec : Prop :=
  ∀ n, (P9665674528638524658.a n : ℤ) = A277106 (n + 1)

end A277106

/-! ## A277106.P5826519589692689771

`6*abs(2-Δ[3*a(n-1)])` with `a(0)=2`
-/

namespace A277106.P5826519589692689771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * |2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A277106.P5826519589692689771

namespace A277106

/-- `6*abs(2-Δ[3*a(n-1)])` -/
def P5826519589692689771.Spec : Prop :=
  ∀ n, P5826519589692689771.a n = A277106 (n + 1)

end A277106

/-! ## A277106.P6159519485684206633

`∑[12*A003946(n)]`
-/

namespace A277106.P6159519485684206633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A003946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277106.P6159519485684206633

namespace A277106

/-- `∑[12*A003946(n)]` -/
def P6159519485684206633.Spec : Prop :=
  ∀ n, P6159519485684206633.a n = A277106 (n + 1)

end A277106

/-! ## A277106.P18148562450687516827

`3*(A036545(n)+3)`
-/

namespace A277106.P18148562450687516827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A036545 n + 3)

end

end A277106.P18148562450687516827

namespace A277106

/-- `3*(A036545(n)+3)` -/
def P18148562450687516827.Spec : Prop :=
  ∀ n, P18148562450687516827.a n = A277106 (n + 1)

theorem P18148562450687516827.correct : P18148562450687516827.Spec := by
  intro n
  simp only [A277106, Nat.add_sub_cancel, A277106.P18148562450687516827.a, A277106.P18109216653649048968.a, A036545, A036545.P10477077024341625309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277106

/-! ## A277106.P3274784858648481978

`3*(A171495(n)-2)`
-/

namespace A277106.P3274784858648481978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A171495 n - 2)

end

end A277106.P3274784858648481978

namespace A277106

/-- `3*(A171495(n)-2)` -/
def P3274784858648481978.Spec : Prop :=
  ∀ n, P3274784858648481978.a n = A277106 (n + 1)

end A277106

/-! ## A277106.P17691856148831810069

`3*(A198644(n)-3)`
-/

namespace A277106.P17691856148831810069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A198644 n - 3)

end

end A277106.P17691856148831810069

namespace A277106

/-- `3*(A198644(n)-3)` -/
def P17691856148831810069.Spec : Prop :=
  ∀ n, P17691856148831810069.a n = A277106 (n + 1)

theorem P17691856148831810069.correct : P17691856148831810069.Spec := by
  intro n
  simp only [A277106, Nat.add_sub_cancel, A277106.P17691856148831810069.a, A277106.P18109216653649048968.a, A198644, A198644.P1212691084711322894.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277106

/-! ## A277106.P9392723873560546556

`3*(A005051(n)-4)`
-/

namespace A277106.P9392723873560546556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A005051 n - 4)

end

end A277106.P9392723873560546556

namespace A277106

/-- `3*(A005051(n)-4)` -/
def P9392723873560546556.Spec : Prop :=
  ∀ n, P9392723873560546556.a n = A277106 (n + 1)

theorem P9392723873560546556.correct : P9392723873560546556.Spec := by
  intro n
  simp only [A277106, Nat.add_sub_cancel, A277106.P9392723873560546556.a, A277106.P18109216653649048968.a, A005051, A005051.P1587912369668506881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277106

/-! ## A277106.P14815207177392971174

`3*(A199111(n)-5)`
-/

namespace A277106.P14815207177392971174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A199111 n - 5)

end

end A277106.P14815207177392971174

namespace A277106

/-- `3*(A199111(n)-5)` -/
def P14815207177392971174.Spec : Prop :=
  ∀ n, P14815207177392971174.a n = A277106 (n + 1)

theorem P14815207177392971174.correct : P14815207177392971174.Spec := by
  intro n
  simp only [A277106, Nat.add_sub_cancel, A277106.P14815207177392971174.a, A277106.P18109216653649048968.a, A199111, A199111.P16186390846937489639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277106

/-! ## A277106.P12180195867891165546

`12*(2-A165746(n))`
-/

namespace A277106.P12180195867891165546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (2 - A165746 n)

end

end A277106.P12180195867891165546

namespace A277106

/-- `12*(2-A165746(n))` -/
def P12180195867891165546.Spec : Prop :=
  ∀ n, P12180195867891165546.a n = A277106 (n + 1)

theorem P12180195867891165546.correct : P12180195867891165546.Spec := by
  intro n
  simp only [A277106, Nat.add_sub_cancel, A277106.P12180195867891165546.a, A277106.P18109216653649048968.a, A165746, A165746.P9992936474950471143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277106

/-! ## A277106.P2999868393602113273

`∑[4*A027327(n+1)]`
-/

namespace A277106.P2999868393602113273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A027327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277106.P2999868393602113273

namespace A277106

/-- `∑[4*A027327(n+1)]` -/
def P2999868393602113273.Spec : Prop :=
  ∀ n, P2999868393602113273.a n = A277106 (n + 1)

end A277106

/-! ## A277106.P1342639049906494505

`Δ[4*A107583(n+1)]`
-/

namespace A277106.P1342639049906494505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A107583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277106.P1342639049906494505

namespace A277106

/-- `Δ[4*A107583(n+1)]` -/
def P1342639049906494505.Spec : Prop :=
  ∀ n, P1342639049906494505.a n = A277106 (n + 1)

theorem P1342639049906494505.correct : P1342639049906494505.Spec := by
  intro n
  simp only [A277106, Nat.add_sub_cancel, A277106.P1342639049906494505.f1, A277106.P1342639049906494505.a, A277106.P18109216653649048968.a, A107583, A107583.P8707585772826993051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277106

/-! ## A277106.P5275570698129451181

`2*(A302507(n+1)-2)`
-/

namespace A277106.P5275570698129451181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A302507 (n + 1) - 2)

end

end A277106.P5275570698129451181

namespace A277106

/-- `2*(A302507(n+1)-2)` -/
def P5275570698129451181.Spec : Prop :=
  ∀ n, P5275570698129451181.a n = A277106 (n + 1)

theorem P5275570698129451181.correct : P5275570698129451181.Spec := by
  intro n
  simp only [A277106, Nat.add_sub_cancel, A277106.P5275570698129451181.a, A277106.P18109216653649048968.a, A302507, A302507.P17660413285331424769.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277106

/-! ## A277106.P157775492303508074

`2*(A036543(n+1)-3)`
-/

namespace A277106.P157775492303508074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036543 (n + 1) - 3)

end

end A277106.P157775492303508074

namespace A277106

/-- `2*(A036543(n+1)-3)` -/
def P157775492303508074.Spec : Prop :=
  ∀ n, P157775492303508074.a n = A277106 (n + 1)

theorem P157775492303508074.correct : P157775492303508074.Spec := by
  intro n
  simp only [A277106, Nat.add_sub_cancel, A277106.P157775492303508074.a, A277106.P18109216653649048968.a, A036543, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277106

/-! ## A277106.P11294884814323267301

`6*A117862(2*n+1)`
-/

namespace A277106.P11294884814323267301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A117862 (2 * n + 1)

end

end A277106.P11294884814323267301

namespace A277106

/-- `6*A117862(2*n+1)` -/
def P11294884814323267301.Spec : Prop :=
  ∀ n, P11294884814323267301.a n = A277106 (n + 1)

end A277106

/-!
# A277107: a(n) = 16*3^n - 48.

The programs for A277107, the canonical program `A277107.P1944116890723267704` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277107 has offset 1).

The definition of A277107 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*3^(n+1)-48` (program `A277107.P1944116890723267704`, by `A277107.P1944116890723267704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277107.P1944116890723267704

`16*3^(n+1)-48`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277107

/-- `16*3^(n+1)-48` -/
def P1944116890723267704.Spec : Prop :=
  ∀ n, P1944116890723267704.a n = A277107 (n + 1)

theorem P1944116890723267704.correct : P1944116890723267704.Spec := by
  intro n
  simp only [A277107, Nat.add_sub_cancel]

end A277107

/-! ## A277107.P9625676167116120969

`96*A003462(n)`
-/

namespace A277107.P9625676167116120969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  96 * A003462 n

end

end A277107.P9625676167116120969

namespace A277107

/-- `96*A003462(n)` -/
def P9625676167116120969.Spec : Prop :=
  ∀ n, P9625676167116120969.a n = A277107 (n + 1)

end A277107

/-! ## A277107.P15185241582073550860

`lcm(3, a(n-1)+32)` with `a(0)=0`
-/

namespace A277107.P15185241582073550860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 3 (a (n - 1) + 32)

end

end A277107.P15185241582073550860

namespace A277107

/-- `lcm(3, a(n-1)+32)` -/
def P15185241582073550860.Spec : Prop :=
  ∀ n, (P15185241582073550860.a n : ℤ) = A277107 (n + 1)

end A277107

/-! ## A277107.P14331304219510852169

`12*A302507(n)`
-/

namespace A277107.P14331304219510852169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A302507 n

end

end A277107.P14331304219510852169

namespace A277107

/-- `12*A302507(n)` -/
def P14331304219510852169.Spec : Prop :=
  ∀ n, P14331304219510852169.a n = A277107 (n + 1)

theorem P14331304219510852169.correct : P14331304219510852169.Spec := by
  intro n
  simp only [A277107, Nat.add_sub_cancel, A277107.P14331304219510852169.a, A277107.P1944116890723267704.a, A302507, A302507.P17660413285331424769.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277107

/-! ## A277107.P11805558371449316365

`3*(A036546(n)-1)`
-/

namespace A277107.P11805558371449316365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A036546 n - 1)

end

end A277107.P11805558371449316365

namespace A277107

/-- `3*(A036546(n)-1)` -/
def P11805558371449316365.Spec : Prop :=
  ∀ n, P11805558371449316365.a n = A277107 (n + 1)

theorem P11805558371449316365.correct : P11805558371449316365.Spec := by
  intro n
  simp only [A277107, Nat.add_sub_cancel, A277107.P11805558371449316365.a, A277107.P1944116890723267704.a, A036546, A036546.P11218812028669592346.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277107

/-! ## A277107.P7463517396719701997

`A024023(n)*A040552(n)`
-/

namespace A277107.P7463517396719701997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n * A040552 n

end

end A277107.P7463517396719701997

namespace A277107

/-- `A024023(n)*A040552(n)` -/
def P7463517396719701997.Spec : Prop :=
  ∀ n, P7463517396719701997.a n = A277107 (n + 1)

end A277107

/-! ## A277107.P8518904502679079219

`A040132(n)*A100774(n)`
-/

namespace A277107.P8518904502679079219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040132 n * A100774 n

end

end A277107.P8518904502679079219

namespace A277107

/-- `A040132(n)*A100774(n)` -/
def P8518904502679079219.Spec : Prop :=
  ∀ n, P8518904502679079219.a n = A277107 (n + 1)

end A277107

/-! ## A277107.P16438502522847801955

`A029858(n+1)*A040240(n)`
-/

namespace A277107.P16438502522847801955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1) * A040240 n

end

end A277107.P16438502522847801955

namespace A277107

/-- `A029858(n+1)*A040240(n)` -/
def P16438502522847801955.Spec : Prop :=
  ∀ n, P16438502522847801955.a n = A277107 (n + 1)

end A277107

/-! ## A277107.P11978688226696915963

`(A036549(n)-A036547(n))/2`
-/

namespace A277107.P11978688226696915963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036549 n - A036547 n : ℚ) / 2

end

end A277107.P11978688226696915963

namespace A277107

/-- `(A036549(n)-A036547(n))/2` -/
def P11978688226696915963.Spec : Prop :=
  ∀ n, P11978688226696915963.a n = (A277107 (n + 1) : ℚ)

theorem P11978688226696915963.correct : P11978688226696915963.Spec := by
  intro n
  simp only [A277107, Nat.add_sub_cancel, A277107.P11978688226696915963.a, A277107.P1944116890723267704.a, A036547, A036547.P8961781053565525089.a, A036549, A036549.P2639299217749662331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277107

/-!
# A277108: a(n) = 4*n*(n+5).

The programs for A277108, the canonical program `A277108.P10625956043023315339` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277108 has offset 1).

The definition of A277108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)*(n+6)` (program `A277108.P10625956043023315339`, by `A277108.P10625956043023315339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277108.P10625956043023315339

`4*(n+1)*(n+6)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277108

/-- `4*(n+1)*(n+6)` -/
def P10625956043023315339.Spec : Prop :=
  ∀ n, (P10625956043023315339.a n : ℤ) = A277108 (n + 1)

theorem P10625956043023315339.correct : P10625956043023315339.Spec := by
  intro n
  simp only [A277108, Nat.add_sub_cancel]

end A277108

/-! ## A277108.P11593203862289646265

`floor(8/acot(∑[n+3]))`
-/

namespace A277108.P11593203862289646265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A277108.P11593203862289646265

namespace A277108

/-- `floor(8/acot(∑[n+3]))` -/
def P11593203862289646265.Spec : Prop :=
  ∀ n, P11593203862289646265.a n = A277108 (n + 1)

end A277108

/-! ## A277108.P11758271991686666731

`8/tan(acot(∑[n+3]))`
-/

namespace A277108.P11758271991686666731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  8 / Real.tan (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A277108.P11758271991686666731

namespace A277108

/-- `8/tan(acot(∑[n+3]))` -/
def P11758271991686666731.Spec : Prop :=
  ∀ n, P11758271991686666731.a n = (A277108 (n + 1) : ℝ)

end A277108

/-! ## A277108.P8314024656452812089

`∑[n+3]/cot(atan(8))`
-/

namespace A277108.P8314024656452812089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cot (Real.arctan (8 : ℝ))

end

end A277108.P8314024656452812089

namespace A277108

/-- `∑[n+3]/cot(atan(8))` -/
def P8314024656452812089.Spec : Prop :=
  ∀ n, P8314024656452812089.a n = (A277108 (n + 1) : ℝ)

end A277108

/-! ## A277108.P11395320027324189446

`floor(∑[a(n-1)+8])` with `a(0)=24`

`floor` is left out, it is the identity on integers.
-/

namespace A277108.P11395320027324189446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [24] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277108.P11395320027324189446

namespace A277108

/-- `floor(∑[a(n-1)+8])` -/
def P11395320027324189446.Spec : Prop :=
  ∀ n, (P11395320027324189446.a n : ℤ) = A277108 (n + 1)

end A277108

/-! ## A277108.P4279737100576800913

`lcm(4, (n+3)²+n-2)-4`
-/

namespace A277108.P4279737100576800913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (((n + 3) ^ 2 : ℤ) + ((n : ℤ) - 2)) : ℤ) - 4

end

end A277108.P4279737100576800913

namespace A277108

/-- `lcm(4, (n+3)²+n-2)-4` -/
def P4279737100576800913.Spec : Prop :=
  ∀ n, P4279737100576800913.a n = A277108 (n + 1)

end A277108

/-! ## A277108.P5204312153975374354

`6*4*∑[ogf((3-2x)/(1-2x+x^2))]/3`
-/

namespace A277108.P5204312153975374354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2] [1, -2, 1] n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ) : ℚ) / 3

end

end A277108.P5204312153975374354

namespace A277108

/-- `6*4*∑[ogf((3-2x)/(1-2x+x^2))]/3` -/
def P5204312153975374354.Spec : Prop :=
  ∀ n, P5204312153975374354.a n = (A277108 (n + 1) : ℚ)

end A277108

/-! ## A277108.P4688957870700942428

`A145923(n+1)-9`
-/

namespace A277108.P4688957870700942428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145923 (n + 1) - 9

end

end A277108.P4688957870700942428

namespace A277108

/-- `A145923(n+1)-9` -/
def P4688957870700942428.Spec : Prop :=
  ∀ n, P4688957870700942428.a n = A277108 (n + 1)

theorem P4688957870700942428.correct : P4688957870700942428.Spec := by
  intro n
  simp only [A277108, Nat.add_sub_cancel, A277108.P4688957870700942428.a, A277108.P10625956043023315339.a, A145923, A145923.P7531917158050139915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277108

/-! ## A277108.P2060021872638988910

`A164897(n)+A102603(n)`
-/

namespace A277108.P2060021872638988910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164897 n + A102603 n

end

end A277108.P2060021872638988910

namespace A277108

/-- `A164897(n)+A102603(n)` -/
def P2060021872638988910.Spec : Prop :=
  ∀ n, P2060021872638988910.a n = A277108 (n + 1)

theorem P2060021872638988910.correct : P2060021872638988910.Spec := by
  intro n
  simp only [A277108, Nat.add_sub_cancel, A277108.P2060021872638988910.a, A277108.P10625956043023315339.a, A102603, A102603.P3247987965860974134.a, A164897, A164897.P2809855780232688833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277108

/-! ## A277108.P4484415950420799767

`A350051(n)+A078370(n)`
-/

namespace A277108.P4484415950420799767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350051 n + A078370 n

end

end A277108.P4484415950420799767

namespace A277108

/-- `A350051(n)+A078370(n)` -/
def P4484415950420799767.Spec : Prop :=
  ∀ n, P4484415950420799767.a n = A277108 (n + 1)

theorem P4484415950420799767.correct : P4484415950420799767.Spec := by
  intro n
  simp only [A277108, Nat.add_sub_cancel, A277108.P4484415950420799767.a, A277108.P10625956043023315339.a, A078370, A078370.P14272331962349434448.a, A350051, A350051.P14041846798359851300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277108

/-! ## A277108.P13066451299429958944

`A125169(n)+A016754(n+1)`
-/

namespace A277108.P13066451299429958944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + A016754 (n + 1)

end

end A277108.P13066451299429958944

namespace A277108

/-- `A125169(n)+A016754(n+1)` -/
def P13066451299429958944.Spec : Prop :=
  ∀ n, P13066451299429958944.a n = A277108 (n + 1)

theorem P13066451299429958944.correct : P13066451299429958944.Spec := by
  intro n
  simp only [A277108, Nat.add_sub_cancel, A277108.P13066451299429958944.a, A277108.P10625956043023315339.a, A016754, A016754.P2987865549988322084.a, A125169, A125169.P15085034264192254056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277108

/-! ## A277108.P946976790019298574

`A173960(n+1)+A017557(n)`
-/

namespace A277108.P946976790019298574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173960 (n + 1) + A017557 n

end

end A277108.P946976790019298574

namespace A277108

/-- `A173960(n+1)+A017557(n)` -/
def P946976790019298574.Spec : Prop :=
  ∀ n, P946976790019298574.a n = A277108 (n + 1)

theorem P946976790019298574.correct : P946976790019298574.Spec := by
  intro n
  simp only [A277108, Nat.add_sub_cancel, A277108.P946976790019298574.a, A277108.P10625956043023315339.a, A017557, A017557.P7719209615978230604.a, A173960, A173960.P13449104019235701913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277108

/-! ## A277108.P463216167638692159

`A250657(n+1)+A023457(n)`
-/

namespace A277108.P463216167638692159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250657 (n + 1) + A023457 n

end

end A277108.P463216167638692159

namespace A277108

/-- `A250657(n+1)+A023457(n)` -/
def P463216167638692159.Spec : Prop :=
  ∀ n, P463216167638692159.a n = A277108 (n + 1)

end A277108

/-! ## A277108.P9216554072165397298

`A154576(n+1)+A152813(n)`
-/

namespace A277108.P9216554072165397298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154576 (n + 1) + A152813 n

end

end A277108.P9216554072165397298

namespace A277108

/-- `A154576(n+1)+A152813(n)` -/
def P9216554072165397298.Spec : Prop :=
  ∀ n, P9216554072165397298.a n = A277108 (n + 1)

theorem P9216554072165397298.correct : P9216554072165397298.Spec := by
  intro n
  simp only [A277108, Nat.add_sub_cancel, A277108.P9216554072165397298.a, A277108.P10625956043023315339.a, A152813, A152813.P6849465060171849523.a, A154576, A154576.P17742162986823344533.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277108

/-! ## A277108.P1334289816450489822

`A250657(n+1)-A022971(n)`
-/

namespace A277108.P1334289816450489822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250657 (n + 1) - A022971 n

end

end A277108.P1334289816450489822

namespace A277108

/-- `A250657(n+1)-A022971(n)` -/
def P1334289816450489822.Spec : Prop :=
  ∀ n, P1334289816450489822.a n = A277108 (n + 1)

end A277108

/-! ## A277108.P11968642604140881628

`A153169(n+1)+A004770(n+1)`
-/

namespace A277108.P11968642604140881628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153169 (n + 1) + A004770 (n + 1)

end

end A277108.P11968642604140881628

namespace A277108

/-- `A153169(n+1)+A004770(n+1)` -/
def P11968642604140881628.Spec : Prop :=
  ∀ n, P11968642604140881628.a n = A277108 (n + 1)

theorem P11968642604140881628.correct : P11968642604140881628.Spec := by
  intro n
  simp only [A277108, Nat.add_sub_cancel, A277108.P11968642604140881628.a, A277108.P10625956043023315339.a, A004770, A004770.P3348596714663788795.a, A153169, A153169.P8963340210342088963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277108

/-! ## A277108.P9619415405211410617

`A128473(n+1)+A054554(n+1)`
-/

namespace A277108.P9619415405211410617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A054554 (n + 1)

end

end A277108.P9619415405211410617

namespace A277108

/-- `A128473(n+1)+A054554(n+1)` -/
def P9619415405211410617.Spec : Prop :=
  ∀ n, P9619415405211410617.a n = A277108 (n + 1)

theorem P9619415405211410617.correct : P9619415405211410617.Spec := by
  intro n
  simp only [A277108, Nat.add_sub_cancel, A277108.P9619415405211410617.a, A277108.P10625956043023315339.a, A054554, A054554.P10059529129339584182.a, A128473, A128473.P5922218971527117777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277108

/-! ## A277108.P13079741222511239324

`A157365(n+1)-A180578(n+1)`
-/

namespace A277108.P13079741222511239324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157365 (n + 1) - A180578 (n + 1)

end

end A277108.P13079741222511239324

namespace A277108

/-- `A157365(n+1)-A180578(n+1)` -/
def P13079741222511239324.Spec : Prop :=
  ∀ n, P13079741222511239324.a n = A277108 (n + 1)

theorem P13079741222511239324.correct : P13079741222511239324.Spec := by
  intro n
  simp only [A277108, Nat.add_sub_cancel, A277108.P13079741222511239324.a, A277108.P10625956043023315339.a, A157365, A157365.P11866209212843534164.a, A180578, A180578.P8423033402098098908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277108

/-! ## A277108.P8024327164540729029

`A158316(n+1)%A158062(n+1)`
-/

namespace A277108.P8024327164540729029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158316 (n + 1)) (A158062 (n + 1))

end

end A277108.P8024327164540729029

namespace A277108

/-- `A158316(n+1)%A158062(n+1)` -/
def P8024327164540729029.Spec : Prop :=
  ∀ n, P8024327164540729029.a n = A277108 (n + 1)

end A277108

/-! ## A277108.P5289269913626919911

`A277385(n+2)-9`
-/

namespace A277108.P5289269913626919911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277385 (n + 2) - 9

end

end A277108.P5289269913626919911

namespace A277108

/-- `A277385(n+2)-9` -/
def P5289269913626919911.Spec : Prop :=
  ∀ n, P5289269913626919911.a n = A277108 (n + 1)

end A277108

/-!
# A277109: Starting from 2^n+1, the length of the longest sequence of consecutive numbers which all take the same number of steps to reach 1 in the Collatz (or '3x+1') problem.

The programs for A277109, there is no canonical definition to state claims against.
-/

/-! ## A277109.P13928330141193586326

`gcd(A126266(val(n+1, 2)+2), A212008(2*n+3))`
-/

namespace A277109.P13928330141193586326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126266 (SequenceMachineLib.valuation (n + 1) 2 + 2)) (A212008 (2 * n + 3))

end

end A277109.P13928330141193586326

/-! ## A277109.P4465285735304505262

`gcd(A000265(A280370(n)), A166861(n))`
-/

namespace A277109.P4465285735304505262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (A280370 n).toNat) (A166861 n)

end

end A277109.P4465285735304505262

/-! ## A277109.P2087742731166282734

`A245563(A124763(n)+A006827(n+1))`
-/

namespace A277109.P2087742731166282734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245563 (A124763 n + A006827 (n + 1)).toNat

end

end A277109.P2087742731166282734

/-! ## A277109.P2525201206129104193

`A329516(A161832(n)%A228572(n+3))`
-/

namespace A277109.P2525201206129104193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329516 (Int.tmod (A161832 n) (A228572 (n + 3))).toNat

end

end A277109.P2525201206129104193

/-! ## A277109.P17931836487013490076

`A201169(∑{e}[A201156(n+1), A007318(#)])`
-/

namespace A277109.P17931836487013490076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201169 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A277109.P17931836487013490076

/-!
# A277110: a(n) = A066048(a(n-1) + a(n-2)) with a(0) = 0 and a(1) = 1.

The programs for A277110, there is no canonical definition to state claims against.
-/

/-! ## A277110.P15470635998565066908

`A066048(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277110.P15470635998565066908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A066048 (a (n - 1) + a (n - 2)).toNat

end

end A277110.P15470635998565066908

/-!
# A277112: a(n) = floor(n*(1+sqrt(5))/Pi).

The programs for A277112, the canonical program `A277112.P12188984487034035865` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277112 has offset 0).

The definition of A277112 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(1+sqrt(5))/π)` (program `A277112.P12188984487034035865`, by `A277112.P12188984487034035865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277112.P12188984487034035865

`floor(n*(1+sqrt(5))/π)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277112

/-- `floor(n*(1+sqrt(5))/π)` -/
def P12188984487034035865.Spec : Prop :=
  ∀ n, P12188984487034035865.a n = A277112 n

theorem P12188984487034035865.correct : P12188984487034035865.Spec := by
  intro n
  simp only [A277112]

end A277112

/-! ## A277112.P13291620276143285363

`comp[A277113(n+1)]`
-/

namespace A277112.P13291620276143285363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277112.P13291620276143285363

namespace A277112

/-- `comp[A277113(n+1)]` -/
def P13291620276143285363.Spec : Prop :=
  ∀ n, (P13291620276143285363.a n : ℤ) = A277112 n

end A277112

/-! ## A277112.P6701715708838061585

`comp[A376484(n)-A196090(n+1)]`
-/

namespace A277112.P6701715708838061585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376484 n - A196090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277112.P6701715708838061585

namespace A277112

/-- `comp[A376484(n)-A196090(n+1)]` -/
def P6701715708838061585.Spec : Prop :=
  ∀ n, (P6701715708838061585.a n : ℤ) = A277112 n

end A277112

/-! ## A277112.P13729039530376576882

`comp[Δ[A274923(A244050(3*n+5))]]`
-/

namespace A277112.P13729039530376576882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A244050 (3 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277112.P13729039530376576882

namespace A277112

/-- `comp[Δ[A274923(A244050(3*n+5))]]` -/
def P13729039530376576882.Spec : Prop :=
  ∀ n, (P13729039530376576882.a n : ℤ) = A277112 n

end A277112

/-! ## A277112.P1184755412332138612

`comp[A267593(A303901(2*n+1)²)]`
-/

namespace A277112.P1184755412332138612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267593 (A303901 (2 * n + 1) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277112.P1184755412332138612

namespace A277112

/-- `comp[A267593(A303901(2*n+1)²)]` -/
def P1184755412332138612.Spec : Prop :=
  ∀ n, (P1184755412332138612.a n : ℤ) = A277112 n

end A277112

/-! ## A277112.P17117694051606962227

`comp[A101727(3*n+1)-A000727(3*n)]`
-/

namespace A277112.P17117694051606962227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101727 (3 * n + 1) - A000727 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277112.P17117694051606962227

namespace A277112

/-- `comp[A101727(3*n+1)-A000727(3*n)]` -/
def P17117694051606962227.Spec : Prop :=
  ∀ n, (P17117694051606962227.a n : ℤ) = A277112 n

end A277112

/-! ## A277112.P8265536194661685883

`comp[A017257(3*(n+1))-A368000(n+1)]`
-/

namespace A277112.P8265536194661685883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (3 * (n + 1)) - A368000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277112.P8265536194661685883

namespace A277112

/-- `comp[A017257(3*(n+1))-A368000(n+1)]` -/
def P8265536194661685883.Spec : Prop :=
  ∀ n, (P8265536194661685883.a n : ℤ) = A277112 n

end A277112

/-! ## A277112.P14243770352475970222

`comp[A026511(Δ[A271269(2*n+3)])]`
-/

namespace A277112.P14243770352475970222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271269 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026511 (f2 (n + 1) - f2 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277112.P14243770352475970222

namespace A277112

/-- `comp[A026511(Δ[A271269(2*n+3)])]` -/
def P14243770352475970222.Spec : Prop :=
  ∀ n, (P14243770352475970222.a n : ℤ) = A277112 n

end A277112

/-! ## A277112.P18431850156291566913

`comp[A000045(Δ[A256870(n+1)])]`
-/

namespace A277112.P18431850156291566913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256870 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277112.P18431850156291566913

namespace A277112

/-- `comp[A000045(Δ[A256870(n+1)])]` -/
def P18431850156291566913.Spec : Prop :=
  ∀ n, (P18431850156291566913.a n : ℤ) = A277112 n

end A277112

/-!
# A277113: a(n) = floor(n/(1-Pi/(sqrt(5)+1))).

The programs for A277113, the canonical program `A277113.P9342723648749817880` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277113 has offset 1).

The definition of A277113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/(1-π/(sqrt(5)+1)))` (program `A277113.P9342723648749817880`, by `A277113.P9342723648749817880.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277113.P9342723648749817880

`floor((n+1)/(1-π/(sqrt(5)+1)))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277113

/-- `floor((n+1)/(1-π/(sqrt(5)+1)))` -/
def P9342723648749817880.Spec : Prop :=
  ∀ n, P9342723648749817880.a n = A277113 (n + 1)

theorem P9342723648749817880.correct : P9342723648749817880.Spec := by
  intro n
  simp only [A277113, Nat.add_sub_cancel]

end A277113

/-! ## A277113.P15006194990622775587

`comp[A277112(n)]`
-/

namespace A277113.P15006194990622775587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277112 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277113.P15006194990622775587

namespace A277113

/-- `comp[A277112(n)]` -/
def P15006194990622775587.Spec : Prop :=
  ∀ n, (P15006194990622775587.a n : ℤ) = A277113 (n + 1)

end A277113

/-! ## A277113.P15842644883421293086

`A110654(A110654(A158130(n+1))+A004771(n))`
-/

namespace A277113.P15842644883421293086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 (A158130 (n + 1)).toNat + A004771 n).toNat

end

end A277113.P15842644883421293086

namespace A277113

/-- `A110654(A110654(A158130(n+1))+A004771(n))` -/
def P15842644883421293086.Spec : Prop :=
  ∀ n, P15842644883421293086.a n = A277113 (n + 1)

end A277113

/-! ## A277113.P11959693672174834559

`∑[36-A000034(A294895(n+1))]`
-/

namespace A277113.P11959693672174834559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 - A000034 (A294895 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277113.P11959693672174834559

namespace A277113

/-- `∑[36-A000034(A294895(n+1))]` -/
def P11959693672174834559.Spec : Prop :=
  ∀ n, P11959693672174834559.a n = A277113 (n + 1)

end A277113

/-! ## A277113.P11291255555831509439

`∑[35-A032742(A161980(n+1))%2]`
-/

namespace A277113.P11291255555831509439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 - Int.tmod (A032742 (A161980 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277113.P11291255555831509439

namespace A277113

/-- `∑[35-A032742(A161980(n+1))%2]` -/
def P11291255555831509439.Spec : Prop :=
  ∀ n, P11291255555831509439.a n = A277113 (n + 1)

end A277113

/-!
# A277116: Number of segments used to represent the number n on a 7-segment display: variant where digits 6, 7 and 9 use 6, 3 and 5 segments, respectively.

The programs for A277116, the canonical program `A277116.P17367549874121161640` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277116 has offset 0).

The definition of A277116 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277116.P17367549874121161640

`A006942(n)-A102683(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A277116

/-- `A006942(n)-A102683(n)` -/
def P17367549874121161640.Spec : Prop :=
  ∀ n, P17367549874121161640.a n = A277116 n

theorem P17367549874121161640.correct : P17367549874121161640.Spec := by
  intro n
  simp only [A277116]

end A277116

/-! ## A277116.P3832879780744470414

`A063720(n)+A102677(n)-A102679(n)`
-/

namespace A277116.P3832879780744470414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063720 n + A102677 n - A102679 n

end

end A277116.P3832879780744470414

namespace A277116

/-- `A063720(n)+A102677(n)-A102679(n)` -/
def P3832879780744470414.Spec : Prop :=
  ∀ n, P3832879780744470414.a n = A277116 n

end A277116

/-! ## A277116.P745658990699794628

`A074458(n)-A102679(n)+A102681(n)`
-/

namespace A277116.P745658990699794628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074458 n - A102679 n + A102681 n

end

end A277116.P745658990699794628

namespace A277116

/-- `A074458(n)-A102679(n)+A102681(n)` -/
def P745658990699794628.Spec : Prop :=
  ∀ n, P745658990699794628.a n = A277116 n

end A277116

/-! ## A277116.P8174743672458297172

`A316867(n)+A063720(n)`
-/

namespace A277116.P8174743672458297172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n + A063720 n

end

end A277116.P8174743672458297172

namespace A277116

/-- `A316867(n)+A063720(n)` -/
def P8174743672458297172.Spec : Prop :=
  ∀ n, P8174743672458297172.a n = A277116 n

end A277116

/-! ## A277116.P9016415162602354409

`A074458(n)-A316868(n)`
-/

namespace A277116.P9016415162602354409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074458 n - A316868 n

end

end A277116.P9016415162602354409

namespace A277116

/-- `A074458(n)-A316868(n)` -/
def P9016415162602354409.Spec : Prop :=
  ∀ n, P9016415162602354409.a n = A277116 n

end A277116

/-! ## A277116.P9629899230919047694

`A102683(A222251(n))+A063720(n)`
-/

namespace A277116.P9629899230919047694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A222251 n).toNat + A063720 n

end

end A277116.P9629899230919047694

namespace A277116

/-- `A102683(A222251(n))+A063720(n)` -/
def P9629899230919047694.Spec : Prop :=
  ∀ n, P9629899230919047694.a n = A277116 n

end A277116

/-! ## A277116.P6136581512858455175

`A006942(n)-A102671(A064770(n))`
-/

namespace A277116.P6136581512858455175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n - A102671 (A064770 n).toNat

end

end A277116.P6136581512858455175

namespace A277116

/-- `A006942(n)-A102671(A064770(n))` -/
def P6136581512858455175.Spec : Prop :=
  ∀ n, P6136581512858455175.a n = A277116 n

end A277116

/-! ## A277116.P610415628576026503

`A006942(n)-A102681(A107128(n))`
-/

namespace A277116.P610415628576026503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n - A102681 (A107128 n).toNat

end

end A277116.P610415628576026503

namespace A277116

/-- `A006942(n)-A102681(A107128(n))` -/
def P610415628576026503.Spec : Prop :=
  ∀ n, P610415628576026503.a n = A277116 n

end A277116

/-! ## A277116.P860861329064953042

`A010371(n)-A102677(A107128(n))`
-/

namespace A277116.P860861329064953042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A102677 (A107128 n).toNat

end

end A277116.P860861329064953042

namespace A277116

/-- `A010371(n)-A102677(A107128(n))` -/
def P860861329064953042.Spec : Prop :=
  ∀ n, P860861329064953042.a n = A277116 n

end A277116

/-! ## A277116.P7378162420600378275

`A010371(n)-A102681(A222252(n))`
-/

namespace A277116.P7378162420600378275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A102681 (A222252 n).toNat

end

end A277116.P7378162420600378275

namespace A277116

/-- `A010371(n)-A102681(A222252(n))` -/
def P7378162420600378275.Spec : Prop :=
  ∀ n, P7378162420600378275.a n = A277116 n

end A277116

/-! ## A277116.P11286603635772945574

`A006942(n)-A102681(A235049(n))`
-/

namespace A277116.P11286603635772945574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n - A102681 (A235049 n).toNat

end

end A277116.P11286603635772945574

namespace A277116

/-- `A006942(n)-A102681(A235049(n))` -/
def P11286603635772945574.Spec : Prop :=
  ∀ n, P11286603635772945574.a n = A277116 n

end A277116

/-! ## A277116.P17399287862782792497

`A006942(n)-A316867(A222251(n))`
-/

namespace A277116.P17399287862782792497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n - A316867 (A222251 n).toNat

end

end A277116.P17399287862782792497

namespace A277116

/-- `A006942(n)-A316867(A222251(n))` -/
def P17399287862782792497.Spec : Prop :=
  ∀ n, P17399287862782792497.a n = A277116 n

end A277116

/-! ## A277116.P13468504779444672274

`A006942(n)-A316868(A222253(n))`
-/

namespace A277116.P13468504779444672274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n - A316868 (A222253 n).toNat

end

end A277116.P13468504779444672274

namespace A277116

/-- `A006942(n)-A316868(A222253(n))` -/
def P13468504779444672274.Spec : Prop :=
  ∀ n, P13468504779444672274.a n = A277116 n

end A277116

/-! ## A277116.P12691485520143771493

`A006942(n)+A074458(n)-A010371(n)`
-/

namespace A277116.P12691485520143771493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n + (A074458 n - A010371 n)

end

end A277116.P12691485520143771493

namespace A277116

/-- `A006942(n)+A074458(n)-A010371(n)` -/
def P12691485520143771493.Spec : Prop :=
  ∀ n, P12691485520143771493.a n = A277116 n

end A277116

/-! ## A277116.P2845159319949523353

`A100910(A017341(n))+A063720(n)`
-/

namespace A277116.P2845159319949523353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017341 n).toNat + A063720 n

end

end A277116.P2845159319949523353

namespace A277116

/-- `A100910(A017341(n))+A063720(n)` -/
def P2845159319949523353.Spec : Prop :=
  ∀ n, P2845159319949523353.a n = A277116 n

end A277116

/-! ## A277116.P13939882410973081794

`A006942(n)-A100910(A017377(n))`
-/

namespace A277116.P13939882410973081794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n - A100910 (A017377 n).toNat

end

end A277116.P13939882410973081794

namespace A277116

/-- `A006942(n)-A100910(A017377(n))` -/
def P13939882410973081794.Spec : Prop :=
  ∀ n, P13939882410973081794.a n = A277116 n

end A277116

/-! ## A277116.P7746810754319655712

`A006942(n)-A100910(A017353(n)+2)`
-/

namespace A277116.P7746810754319655712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n - A100910 (A017353 n + 2).toNat

end

end A277116.P7746810754319655712

namespace A277116

/-- `A006942(n)-A100910(A017353(n)+2)` -/
def P7746810754319655712.Spec : Prop :=
  ∀ n, P7746810754319655712.a n = A277116 n

end A277116

/-! ## A277116.P10979365645957897443

`A006942(n)-A055641(A216556(n))`
-/

namespace A277116.P10979365645957897443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n - A055641 (A216556 n).toNat

end

end A277116.P10979365645957897443

namespace A277116

/-- `A006942(n)-A055641(A216556(n))` -/
def P10979365645957897443.Spec : Prop :=
  ∀ n, P10979365645957897443.a n = A277116 n

end A277116

/-!
# A277118: For a lesser p of twin primes, let B_k be A159559, but with initial term k; then a(n) is the smallest m such that B_(p+2)(m)-B_p(m)>6, where p = A001359(n-1), or a(n) = 0 if there is no such m.

The programs for A277118, there is no canonical definition to state claims against.
-/

/-! ## A277118.P6394100221497615127

`A277255(A029707(n+1))`
-/

namespace A277118.P6394100221497615127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277255 (A029707 (n + 1)).toNat

end

end A277118.P6394100221497615127

/-! ## A277118.P9016815179830417835

`A277255(eq[3, A076368(n+1)])`
-/

namespace A277118.P9016815179830417835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277118.P9016815179830417835

/-! ## A277118.P4807826275622456064

`A277255(A000720(A001359(n+1)))`
-/

namespace A277118.P4807826275622456064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277255 (A000720 (A001359 (n + 1)).toNat).toNat

end

end A277118.P4807826275622456064

/-! ## A277118.P8315328337486295121

`A277255(∏{p}[A108605(n+1), A000720(#)])`
-/

namespace A277118.P8315328337486295121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277255 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A277118.P8315328337486295121

/-! ## A277118.P3708526063910424995

`A277255(eq[A334971(n+1)+2, A000040(n+1)])`
-/

namespace A277118.P3708526063910424995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334971 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277255 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277118.P3708526063910424995

/-! ## A277118.P15918322923123677142

`A277255(A055396(p?[A040976(n+1)]))`
-/

namespace A277118.P15918322923123677142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277255 (A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A277118.P15918322923123677142

/-! ## A277118.P13535037604642562925

`A277255(∏{p}[A001359(n+1), A055396(#)])`
-/

namespace A277118.P13535037604642562925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277255 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A055396 p).toNat

end

end A277118.P13535037604642562925

/-!
# A277120: Number of branching factorizations of n.

The programs for A277120, there is no canonical definition to state claims against.
-/

/-! ## A277120.P7560114521716416248

`A366884(A101296(n+1))`
-/

namespace A277120.P7560114521716416248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366884 (A101296 (n + 1)).toNat

end

end A277120.P7560114521716416248

/-! ## A277120.P10074742849178929530

`A366377(A238745(n+1))`
-/

namespace A277120.P10074742849178929530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366377 (A238745 (n + 1)).toNat

end

end A277120.P10074742849178929530

/-! ## A277120.P2573918924662052482

`A104725(n+1)%A332293(n+1)`
-/

namespace A277120.P2573918924662052482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104725 (n + 1)) (A332293 (n + 1))

end

end A277120.P2573918924662052482

/-! ## A277120.P2680422429207083697

`A104725(n+1)+A010815(A067262(2*n+1))`
-/

namespace A277120.P2680422429207083697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (n + 1) + A010815 (A067262 (2 * n + 1)).toNat

end

end A277120.P2680422429207083697

/-! ## A277120.P17644847260925376680

`A046523(n+1)-A381438(A253249(n+1))`
-/

namespace A277120.P17644847260925376680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1) - A381438 (A253249 (n + 1)).toNat

end

end A277120.P17644847260925376680

/-!
# A277121: Numbers that immediately halt Conway's FIBONACCIGAME.

The programs for A277121, there is no canonical definition to state claims against.
-/

/-! ## A277121.P13351982974508411478

`∑[A001222(A000005(A166753(n+1)))]`
-/

namespace A277121.P13351982974508411478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (A166753 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277121.P13351982974508411478

/-! ## A277121.P11555347413400420197

`A225643(A308825(n))+comp[3*n]`
-/

namespace A277121.P11555347413400420197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225643 (A308825 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A277121.P11555347413400420197

/-!
# A277124: Numbers k such that (k+1)*prime(k) + k is a prime.

The programs for A277124, there is no canonical definition to state claims against.
-/

/-! ## A277124.P8225257376729344835

`eq[2, A175940((comp[A018252(n+1)]+1)*(n+1))+1]`
-/

namespace A277124.P8225257376729344835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175940 ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1) * (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277124.P8225257376729344835

/-! ## A277124.P10037460532425194201

`lt[A001281(A347713(n+1)), A005875(n)]`
-/

namespace A277124.P10037460532425194201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A347713 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277124.P10037460532425194201

/-! ## A277124.P1477820492033876543

`eq[A012257(n), A245539(A152175(n+1))]`
-/

namespace A277124.P1477820492033876543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245539 (A152175 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277124.P1477820492033876543

/-! ## A277124.P9050552562063170735

`eq[A249133(A143409(n)), A344617(2*n+1)]`
-/

namespace A277124.P9050552562063170735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249133 (A143409 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344617 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277124.P9050552562063170735

/-!
# A277127: a(n) = n - lambda(n), where lambda(n) = A002322(n).

The programs for A277127, there is no canonical definition to state claims against.
-/

/-! ## A277127.P16635624679951417965

`1-A002322(n+1)+n`
-/

namespace A277127.P16635624679951417965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002322 (n + 1) + (n : ℤ)

end

end A277127.P16635624679951417965

/-! ## A277127.P11559975781774851677

`2-A263027(n+1)+n`
-/

namespace A277127.P11559975781774851677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A263027 (n + 1) + (n : ℤ)

end

end A277127.P11559975781774851677

/-! ## A277127.P4139284181791119411

`A104194(n+1)+n+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A277127.P4139284181791119411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104194 (n + 1) : ℚ) + ((n + 1 : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A277127.P4139284181791119411

/-! ## A277127.P7668185362257077619

`A024000(A002322(n+1))+n`
-/

namespace A277127.P7668185362257077619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A002322 (n + 1)).toNat + (n : ℤ)

end

end A277127.P7668185362257077619

/-! ## A277127.P13803930244460556297

`A022958(A002322(n+1)+1)+n`
-/

namespace A277127.P13803930244460556297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A002322 (n + 1) + 1).toNat + (n : ℤ)

end

end A277127.P13803930244460556297

/-! ## A277127.P4964302670408603502

`A104194(n+1)+A051953(n+1)`
-/

namespace A277127.P4964302670408603502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104194 (n + 1) + A051953 (n + 1)

end

end A277127.P4964302670408603502

/-! ## A277127.P13182209174110156272

`A104193(n+1)-A014689(n+1)`
-/

namespace A277127.P13182209174110156272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104193 (n + 1) - A014689 (n + 1)

end

end A277127.P13182209174110156272

/-! ## A277127.P4034350684426771758

`1-A000010(n+1)/A034380(n+1)+n`
-/

namespace A277127.P4034350684426771758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A000010 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ) + (n : ℚ)

end

end A277127.P4034350684426771758

/-! ## A277127.P936547911501342554

`-A002322(n+1)%A000040(n+1)+n+1`
-/

namespace A277127.P936547911501342554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A002322 (n + 1)) (A000040 (n + 1)) + (n + 1 : ℤ)

end

end A277127.P936547911501342554

/-! ## A277127.P10078747825277719452

`n+1-(n-A219428(n+1))/A034380(n+1)`
-/

namespace A277127.P10078747825277719452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - ((n : ℤ) - A219428 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ)

end

end A277127.P10078747825277719452

/-! ## A277127.P9256922074018403293

`n+1-(1-A051953(n+1)+n)/A034380(n+1)`
-/

namespace A277127.P9256922074018403293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A034380 (n + 1) : ℚ)

end

end A277127.P9256922074018403293

/-! ## A277127.P13668132355473960674

`n+1-∏{p}[n+1, #-1]*A003557(n+1)/A034380(n+1)`
-/

namespace A277127.P13668132355473960674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) : ℤ) : ℚ) / (A034380 (n + 1) : ℚ)

end

end A277127.P13668132355473960674

/-! ## A277127.P5345703750061514143

`n+1-(n+1)/∏{p}[n+1, #]*A173557(n+1)/A034380(n+1)`
-/

namespace A277127.P5345703750061514143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ)

end

end A277127.P5345703750061514143

/-! ## A277127.P5004070510484209136

`n+1-(A048865(n+1)+A048864(n+1))/A034380(n+1)`
-/

namespace A277127.P5004070510484209136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A048865 (n + 1) + A048864 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ)

end

end A277127.P5004070510484209136

/-! ## A277127.P5993547620703356881

`A008619(2*n)-A002322(A008619(2*n))`
-/

namespace A277127.P5993547620703356881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A002322 (A008619 (2 * n)).toNat

end

end A277127.P5993547620703356881

/-! ## A277127.P2929702628640828572

`1-A004736(A289622(n+1))+n`
-/

namespace A277127.P2929702628640828572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004736 (A289622 (n + 1)).toNat + (n : ℤ)

end

end A277127.P2929702628640828572

/-!
# A277129: Largest m < n such that 2^m == 2^n (mod n).

The programs for A277129, there is no canonical definition to state claims against.
-/

/-! ## A277129.P10805896888874211710

`1-A007733(n+1)+n`
-/

namespace A277129.P10805896888874211710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007733 (n + 1) + (n : ℤ)

end

end A277129.P10805896888874211710

/-! ## A277129.P14281933019157675176

`1-A066799(∑[n+2])+n`
-/

namespace A277129.P14281933019157675176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A066799 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A277129.P14281933019157675176

/-! ## A277129.P15663779683518307157

`2*(n+1)-A385989(n+1)`
-/

namespace A277129.P15663779683518307157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A385989 (n + 1)

end

end A277129.P15663779683518307157

/-! ## A277129.P15385910794586307125

`1-(A007733(Δ[n²]-n)-n)`
-/

namespace A277129.P15385910794586307125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A007733 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ))

end

end A277129.P15385910794586307125

/-! ## A277129.P13512200679919177165

`(n*A007733(2*(n+1)))%(n+1)`
-/

namespace A277129.P13512200679919177165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A007733 (2 * (n + 1))) (n + 1 : ℤ)

end

end A277129.P13512200679919177165

/-! ## A277129.P16910252393065898145

`n-log2(1/2)-A007733(n-log2(1/2))`
-/

namespace A277129.P16910252393065898145
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A007733 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ)

end

end A277129.P16910252393065898145

/-! ## A277129.P17897857928973979565

`A024000(A007733(n+1))+n`
-/

namespace A277129.P17897857928973979565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A007733 (n + 1)).toNat + (n : ℤ)

end

end A277129.P17897857928973979565

/-! ## A277129.P5008829304362821884

`1-A002326(A025480(n))+n`
-/

namespace A277129.P5008829304362821884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002326 (A025480 n).toNat + (n : ℤ)

end

end A277129.P5008829304362821884

/-! ## A277129.P12805726097134288261

`1-A054703(A000265(n+1))+n`
-/

namespace A277129.P12805726097134288261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A054703 (A000265 (n + 1)).toNat + (n : ℤ)

end

end A277129.P12805726097134288261

/-! ## A277129.P556720854822431290

`1-A057593(A137882(n+1))+n`
-/

namespace A277129.P556720854822431290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057593 (A137882 (n + 1)).toNat + (n : ℤ)

end

end A277129.P556720854822431290

/-!
# A277130: Number of planar branching factorizations of n.

The programs for A277130, there is no canonical definition to state claims against.
-/

/-! ## A277130.P13418315780228240890

`A157477(A330773(n))%(2^n)`
-/

namespace A277130.P13418315780228240890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157477 (A330773 n).toNat) (2 ^ n : ℤ)

end

end A277130.P13418315780228240890

/-! ## A277130.P2676264993350403820

`A111660(A330773(n)+A001876(n))`
-/

namespace A277130.P2676264993350403820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A330773 n + A001876 n).toNat

end

end A277130.P2676264993350403820

/-! ## A277130.P5325053943759095214

`A157477(A330773(n))-A001221(ceil(2/(n+1)))`
-/

namespace A277130.P5325053943759095214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 (A330773 n).toNat - A001221 ⌈2 / (n + 1 : ℚ)⌉.toNat

end

end A277130.P5325053943759095214

/-! ## A277130.P16399424969967448956

`A157477(A330773(n))+A008683(floor((n+2)²/2))`
-/

namespace A277130.P16399424969967448956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 (A330773 n).toNat + A008683 ⌊((n + 2) ^ 2 : ℚ) / 2⌋.toNat

end

end A277130.P16399424969967448956

/-! ## A277130.P12829854746556707498

`A008683(2*A000040(n+1))*A157477(A330773(n))`
-/

namespace A277130.P12829854746556707498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (n + 1)).toNat * A157477 (A330773 n).toNat

end

end A277130.P12829854746556707498

/-!
# A277131: Magic numbers of anti-Mackay icosahedra.

The programs for A277131, the canonical program `A277131.P3061154276195630855` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277131 has offset 2).

The definition of A277131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277131.P3061154276195630855

`10/3*n^3+25*n²+161/3*n+45`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277131

/-- `10/3*n^3+25*n²+161/3*n+45` -/
def P3061154276195630855.Spec : Prop :=
  ∀ n, P3061154276195630855.a n = (A277131 (n + 2) : ℚ)

end A277131

/-!
# A277132: The first subdiagonal of triangle A196842.

The programs for A277132, there is no canonical definition to state claims against.
-/

/-! ## A277132.P1017467532054961593

`Δ[A097422(n)]+(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A277132.P1017467532054961593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097422 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + ((n : ℤ) - 1) * a (n - 1)

end

end A277132.P1017467532054961593

/-! ## A277132.P13454793879644292525

`A000254(n+1)+(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A277132.P13454793879644292525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000254 (n + 1) + ((n : ℤ) - 1) * a (n - 1)

end

end A277132.P13454793879644292525

/-! ## A277132.P14280526182389422324

`A196842(∑[n+2]-1)`
-/

namespace A277132.P14280526182389422324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196842 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A277132.P14280526182389422324

/-! ## A277132.P6675284757645654529

`record[A196842(∑[A158416(n)])]`
-/

namespace A277132.P6675284757645654529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196842 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277132.P6675284757645654529

/-! ## A277132.P606387003989304182

`record[A196842(n)^A351725(n+1)]`
-/

namespace A277132.P606387003989304182
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196842 n : ℚ) ^ (A351725 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277132.P606387003989304182

/-!
# A277133: Number of distinct sets of periods of length >= ceiling(n/2) in all binary strings of length n.

The programs for A277133, there is no canonical definition to state claims against.
-/

/-! ## A277133.P14265369281605401304

`round(sqrt(A130051(a(n-2)+1)))` with `a(0)=1, a(1)=2`
-/

namespace A277133.P14265369281605401304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (A130051 (a (n - 2) + 1).toNat : ℝ))

end

end A277133.P14265369281605401304

/-! ## A277133.P16799771622781038943

`A028291(A065033(n)%A272773(n))`
-/

namespace A277133.P16799771622781038943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028291 (Int.tmod (A065033 n) (A272773 n)).toNat

end

end A277133.P16799771622781038943

/-! ## A277133.P9468418596897255540

`A028291(A110654(n)%A272773(n))`
-/

namespace A277133.P9468418596897255540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028291 (Int.tmod (A110654 n) (A272773 n)).toNat

end

end A277133.P9468418596897255540

/-! ## A277133.P18443708809471454775

`A028291(floor(log2(A018494(n+1))))`
-/

namespace A277133.P18443708809471454775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028291 (Nat.log 2 (A018494 (n + 1)).toNat)

end

end A277133.P18443708809471454775

/-! ## A277133.P2736513480410063389

`A067997(floor(log2(A018494(n+1))))`
-/

namespace A277133.P2736513480410063389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067997 (Nat.log 2 (A018494 (n + 1)).toNat)

end

end A277133.P2736513480410063389

/-!
# A277134: Number of "unbordered" n X n binary arrays.

The programs for A277134, there is no canonical definition to state claims against.
-/

/-! ## A277134.P13256328085811824367

`xor(3, A199218(a(n-1)+1))` with `a(0)=1, a(1)=2`
-/

namespace A277134.P13256328085811824367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 3 (A199218 (a (n - 1) + 1).toNat)

end

end A277134.P13256328085811824367

/-!
# A277135: Separate the digits of Pi into smallest blocks such that each block contains all digits from 0 to 9. Sequence gives the last digits of blocks from left to right.

The programs for A277135, there is no canonical definition to state claims against.
-/

/-! ## A277135.P7291408731899123501

`A000796(∑[A104781(n+1)]-1)`
-/

namespace A277135.P7291408731899123501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat + 1)

end

end A277135.P7291408731899123501

/-! ## A277135.P11758711971472403003

`A123152(∑[A104781(n+1)])-1`
-/

namespace A277135.P11758711971472403003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A277135.P11758711971472403003

/-! ## A277135.P12158636810570722831

`A065253(∑[A104781(n+1)])%10`
-/

namespace A277135.P12158636810570722831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 10

end

end A277135.P12158636810570722831

/-! ## A277135.P3020382275532057777

`A001355(2*(∑[A104781(n+1)]-1)+1)`
-/

namespace A277135.P3020382275532057777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1).toNat

end

end A277135.P3020382275532057777

/-! ## A277135.P14571248858156052762

`A166931(n+1)%A123152(∑[A104781(n+1)])`
-/

namespace A277135.P14571248858156052762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A123152 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A277135.P14571248858156052762

/-!
# A277136: Numbers k such that cos(k) > 0 and cos(k+2) > 0.

The programs for A277136, the canonical program `A277136.P608649818475032619` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277136 has offset 1).

The definition of A277136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9084 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277136.P608649818475032619

`lt[sin(1), cos(n+1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277136

/-- `lt[sin(1), cos(n+1)]` -/
def P608649818475032619.Spec : Prop :=
  ∀ n, (P608649818475032619.a n : ℤ) = A277136 (n + 1)

theorem P608649818475032619.correct : P608649818475032619.Spec := by
  intro n
  simp only [A277136, Nat.add_sub_cancel]

end A277136

/-! ## A277136.P10326878055612525466

`lt[1, asin(cos(n+1))]`
-/

namespace A277136.P10326878055612525466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arcsin (Real.cos (n + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A277136.P10326878055612525466

namespace A277136

/-- `lt[1, asin(cos(n+1))]` -/
def P10326878055612525466.Spec : Prop :=
  ∀ n, (P10326878055612525466.a n : ℤ) = A277136 (n + 1)

end A277136

/-! ## A277136.P10913551179156049677

`lt[log2(log(6)), cos(n+1)]`
-/

namespace A277136.P10913551179156049677
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.log (6 : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277136.P10913551179156049677

namespace A277136

/-- `lt[log2(log(6)), cos(n+1)]` -/
def P10913551179156049677.Spec : Prop :=
  ∀ n, (P10913551179156049677.a n : ℤ) = A277136 (n + 1)

end A277136

/-! ## A277136.P3140062317655089682

`eq[0, floor(sin(1)/cos(n+1))]`
-/

namespace A277136.P3140062317655089682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (1 : ℝ) / Real.cos (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277136.P3140062317655089682

namespace A277136

/-- `eq[0, floor(sin(1)/cos(n+1))]` -/
def P3140062317655089682.Spec : Prop :=
  ∀ n, (P3140062317655089682.a n : ℤ) = A277136 (n + 1)

end A277136

/-! ## A277136.P8068278985311809238

`∩[A246395(n)-1, A246395(n)]`
-/

namespace A277136.P8068278985311809238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277136.P8068278985311809238

namespace A277136

/-- `∩[A246395(n)-1, A246395(n)]` -/
def P8068278985311809238.Spec : Prop :=
  ∀ n, (P8068278985311809238.a n : ℤ) = A277136 (n + 1)

end A277136

/-! ## A277136.P5255349991688830143

`∩[A131503(n+1), A246441(n+1)-1]`
-/

namespace A277136.P5255349991688830143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246441 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277136.P5255349991688830143

namespace A277136

/-- `∩[A131503(n+1), A246441(n+1)-1]` -/
def P5255349991688830143.Spec : Prop :=
  ∀ n, (P5255349991688830143.a n : ℤ) = A277136 (n + 1)

end A277136

/-! ## A277136.P16439289816438038801

`∩[A131503(n+2)-2, A131503(n+2)]`
-/

namespace A277136.P16439289816438038801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277136.P16439289816438038801

namespace A277136

/-- `∩[A131503(n+2)-2, A131503(n+2)]` -/
def P16439289816438038801.Spec : Prop :=
  ∀ n, (P16439289816438038801.a n : ℤ) = A277136 (n + 1)

end A277136

/-!
# A277137: Numbers k such that cos(k) > 0 and cos(k+2) < 0.

The programs for A277137, the canonical program `A277137.P3554020471178101780` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277137 has offset 1).

The definition of A277137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277137.P11344483034303453898

`lt[n, n/acos(sin(n+1))]`
-/

namespace A277137.P11344483034303453898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.arccos (Real.sin (n + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A277137.P11344483034303453898

namespace A277137

/-- `lt[n, n/acos(sin(n+1))]` -/
def P11344483034303453898.Spec : Prop :=
  ∀ n, (P11344483034303453898.a n : ℤ) = A277137 (n + 1)

end A277137

/-! ## A277137.P4667883814891349107

`lt[(n+1)^acos(sin(n+1)), n+1]`
-/

namespace A277137.P4667883814891349107
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (Real.arccos (Real.sin (n + 1 : ℝ)))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A277137.P4667883814891349107

namespace A277137

/-- `lt[(n+1)^acos(sin(n+1)), n+1]` -/
def P4667883814891349107.Spec : Prop :=
  ∀ n, (P4667883814891349107.a n : ℤ) = A277137 (n + 1)

end A277137

/-! ## A277137.P3554020471178101780

`A246393(A110654(n))-A000035(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A277137

/-- `A246393(A110654(n))-A000035(n)` -/
def P3554020471178101780.Spec : Prop :=
  ∀ n, P3554020471178101780.a n = A277137 (n + 1)

theorem P3554020471178101780.correct : P3554020471178101780.Spec := by
  intro n
  simp only [A277137, Nat.add_sub_cancel]

end A277137

/-! ## A277137.P17041919744479955752

`A246393(∑[A000035(n)])-A000035(n)`
-/

namespace A277137.P17041919744479955752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246393 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000035 n

end

end A277137.P17041919744479955752

namespace A277137

/-- `A246393(∑[A000035(n)])-A000035(n)` -/
def P17041919744479955752.Spec : Prop :=
  ∀ n, P17041919744479955752.a n = A277137 (n + 1)

end A277137

/-! ## A277137.P1157508990585326986

`A257984(A109613(n+1))-A109613(n+1)+n`
-/

namespace A277137.P1157508990585326986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (A109613 (n + 1)).toNat - A109613 (n + 1) + (n : ℤ)

end

end A277137.P1157508990585326986

namespace A277137

/-- `A257984(A109613(n+1))-A109613(n+1)+n` -/
def P1157508990585326986.Spec : Prop :=
  ∀ n, P1157508990585326986.a n = A277137 (n + 1)

end A277137

/-! ## A277137.P7878401807989217986

`round(log2(A041721(n+1)))`
-/

namespace A277137.P7878401807989217986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A041721 (n + 1) : ℝ))

end

end A277137.P7878401807989217986

namespace A277137

/-- `round(log2(A041721(n+1)))` -/
def P7878401807989217986.Spec : Prop :=
  ∀ n, P7878401807989217986.a n = A277137 (n + 1)

end A277137

/-!
# A277138: Numbers k such that cos(k) < 0 and cos(k+2) > 0.

The programs for A277138, the canonical program `A277138.P17338092222714243702` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277138 has offset 1).

The definition of A277138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277138.P17338092222714243702

`lt[cos(1), sin(-(n+1))]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277138

/-- `lt[cos(1), sin(-(n+1))]` -/
def P17338092222714243702.Spec : Prop :=
  ∀ n, (P17338092222714243702.a n : ℤ) = A277138 (n + 1)

theorem P17338092222714243702.correct : P17338092222714243702.Spec := by
  intro n
  simp only [A277138, Nat.add_sub_cancel]

end A277138

/-! ## A277138.P7027381590527136424

`lt[acos(sin(-(n+1))), 1]`
-/

namespace A277138.P7027381590527136424
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (Real.sin (-(n + 1 : ℤ) : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A277138.P7027381590527136424

namespace A277138

/-- `lt[acos(sin(-(n+1))), 1]` -/
def P7027381590527136424.Spec : Prop :=
  ∀ n, (P7027381590527136424.a n : ℤ) = A277138 (n + 1)

end A277138

/-! ## A277138.P238469144394003946

`lt[sin(n+1), tan(sqrt(7))]`
-/

namespace A277138.P238469144394003946
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (Real.sqrt (7 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277138.P238469144394003946

namespace A277138

/-- `lt[sin(n+1), tan(sqrt(7))]` -/
def P238469144394003946.Spec : Prop :=
  ∀ n, (P238469144394003946.a n : ℤ) = A277138 (n + 1)

end A277138

/-! ## A277138.P3877589407844893219

`lt[cos(n), floor(cos(n+2))]`
-/

namespace A277138.P3877589407844893219
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (n + 2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A277138.P3877589407844893219

namespace A277138

/-- `lt[cos(n), floor(cos(n+2))]` -/
def P3877589407844893219.Spec : Prop :=
  ∀ n, (P3877589407844893219.a n : ℤ) = A277138 (n + 1)

end A277138

/-! ## A277138.P6291326808745991820

`lt[ceil(cos(n)), cos(n+2)]`
-/

namespace A277138.P6291326808745991820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (n : ℝ)⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A277138.P6291326808745991820

namespace A277138

/-- `lt[ceil(cos(n)), cos(n+2)]` -/
def P6291326808745991820.Spec : Prop :=
  ∀ n, (P6291326808745991820.a n : ℤ) = A277138 (n + 1)

end A277138

/-! ## A277138.P15556340643940720018

`∪[A246394(n)-1, A246394(n)]`
-/

namespace A277138.P15556340643940720018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246394 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246394 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277138.P15556340643940720018

namespace A277138

/-- `∪[A246394(n)-1, A246394(n)]` -/
def P15556340643940720018.Spec : Prop :=
  ∀ n, (P15556340643940720018.a n : ℤ) = A277138 (n + 1)

end A277138

/-! ## A277138.P1850895735779065183

`∪[A332482(n+1)-2, A332483(n+1)]`
-/

namespace A277138.P1850895735779065183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332482 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277138.P1850895735779065183

namespace A277138

/-- `∪[A332482(n+1)-2, A332483(n+1)]` -/
def P1850895735779065183.Spec : Prop :=
  ∀ n, (P1850895735779065183.a n : ℤ) = A277138 (n + 1)

end A277138

/-! ## A277138.P2290008418533170477

`∪[A062389(2*(n+1))-1, A062389(2*(n+1))]`
-/

namespace A277138.P2290008418533170477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (2 * (n + 1)) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277138.P2290008418533170477

namespace A277138

/-- `∪[A062389(2*(n+1))-1, A062389(2*(n+1))]` -/
def P2290008418533170477.Spec : Prop :=
  ∀ n, (P2290008418533170477.a n : ℤ) = A277138 (n + 1)

end A277138

/-!
# A277139: Numbers k such that cos(k) < 0 and cos(k+2) < 0.

The programs for A277139, the canonical program `A277139.P1932778838949227484` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277139 has offset 1).

The definition of A277139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9085 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277139.P1932778838949227484

`lt[sin(1), sin(10-n)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277139

/-- `lt[sin(1), sin(10-n)]` -/
def P1932778838949227484.Spec : Prop :=
  ∀ n, (P1932778838949227484.a n : ℤ) = A277139 (n + 1)

theorem P1932778838949227484.correct : P1932778838949227484.Spec := by
  intro n
  simp only [A277139, Nat.add_sub_cancel]

end A277139

/-! ## A277139.P13985057089349382960

`lt[sin(1), -cos(n+1)]`
-/

namespace A277139.P13985057089349382960
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.cos (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277139.P13985057089349382960

namespace A277139

/-- `lt[sin(1), -cos(n+1)]` -/
def P13985057089349382960.Spec : Prop :=
  ∀ n, (P13985057089349382960.a n : ℤ) = A277139 (n + 1)

end A277139

/-! ## A277139.P5775808245340752592

`lt[1, asin(-cos(n+1))]`
-/

namespace A277139.P5775808245340752592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arcsin (-Real.cos (n + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A277139.P5775808245340752592

namespace A277139

/-- `lt[1, asin(-cos(n+1))]` -/
def P5775808245340752592.Spec : Prop :=
  ∀ n, (P5775808245340752592.a n : ℤ) = A277139 (n + 1)

end A277139

/-! ## A277139.P18047818667105760255

`lt[asin(cos(n))+3, 2]-1`
-/

namespace A277139.P18047818667105760255
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arcsin (Real.cos (n : ℝ)) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n : ℤ) - 1

end

end A277139.P18047818667105760255

namespace A277139

/-- `lt[asin(cos(n))+3, 2]-1` -/
def P18047818667105760255.Spec : Prop :=
  ∀ n, P18047818667105760255.a n = A277139 (n + 1)

end A277139

/-! ## A277139.P9992985867059867478

`∩[A246396(n)-1, A246396(n)]`
-/

namespace A277139.P9992985867059867478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277139.P9992985867059867478

namespace A277139

/-- `∩[A246396(n)-1, A246396(n)]` -/
def P9992985867059867478.Spec : Prop :=
  ∀ n, (P9992985867059867478.a n : ℤ) = A277139 (n + 1)

end A277139

/-! ## A277139.P3663114239302981732

`∩[A246440(n+1)-1, A246444(n+1)]`
-/

namespace A277139.P3663114239302981732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246440 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277139.P3663114239302981732

namespace A277139

/-- `∩[A246440(n+1)-1, A246444(n+1)]` -/
def P3663114239302981732.Spec : Prop :=
  ∀ n, (P3663114239302981732.a n : ℤ) = A277139 (n + 1)

end A277139

/-!
# A277142: Lexicographically least sequence of nonnegative integers that avoids 4/3-powers.

The programs for A277142, there is no canonical definition to state claims against.
-/

/-! ## A277142.P14240511182139997898

`A277164(A277218(n+3))+A277162(3*n)`
-/

namespace A277142.P14240511182139997898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277164 (A277218 (n + 3)).toNat + A277162 (3 * n)

end

end A277142.P14240511182139997898

/-! ## A277142.P16406564560736904838

`A277162(3*n)+A277148(A008327(3*n+1))`
-/

namespace A277142.P16406564560736904838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277162 (3 * n) + A277148 (A008327 (3 * n + 1)).toNat

end

end A277142.P16406564560736904838

/-! ## A277142.P1395514743679619242

`A277164(A277169(2*n+5))+A277162(3*n)`
-/

namespace A277142.P1395514743679619242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277164 (A277169 (2 * n + 5)).toNat + A277162 (3 * n)

end

end A277142.P1395514743679619242

/-! ## A277142.P18061842092877746073

`A005811(A277162(3*n)^A277109(n))`
-/

namespace A277142.P18061842092877746073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A277162 (3 * n) : ℚ) ^ (A277109 n : ℤ))).toNat

end

end A277142.P18061842092877746073

/-! ## A277142.P10271091877289251379

`A090079(A277162(3*n)^A277109(n))`
-/

namespace A277142.P10271091877289251379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (SequenceMachineLib.roundAway ((A277162 (3 * n) : ℚ) ^ (A277109 n : ℤ))).toNat

end

end A277142.P10271091877289251379

/-!
# A277143: Lexicographically least sequence of nonnegative integers that avoids 5/3-powers.

The programs for A277143, the canonical program `A277143.P13131131765562550234` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277143 has offset 0).

The definition of A277143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277143.P13131131765562550234

`val(A005843(A007093(n+1)), 10)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A277143

/-- `val(A005843(A007093(n+1)), 10)` -/
def P13131131765562550234.Spec : Prop :=
  ∀ n, (P13131131765562550234.a n : ℤ) = A277143 n

theorem P13131131765562550234.correct : P13131131765562550234.Spec := by
  intro n
  simp only [A277143]

end A277143

/-! ## A277143.P2511953489066500954

`A122840(2*A007093(n+1))`
-/

namespace A277143.P2511953489066500954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (2 * A007093 (n + 1)).toNat

end

end A277143.P2511953489066500954

namespace A277143

/-- `A122840(2*A007093(n+1))` -/
def P2511953489066500954.Spec : Prop :=
  ∀ n, P2511953489066500954.a n = A277143 n

end A277143

/-! ## A277143.P12517625456282627189

`val(A154517(A154379(n+1)), 7)`
-/

namespace A277143.P12517625456282627189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A154517 (A154379 (n + 1)).toNat).toNat 7

end

end A277143.P12517625456282627189

namespace A277143

/-- `val(A154517(A154379(n+1)), 7)` -/
def P12517625456282627189.Spec : Prop :=
  ∀ n, (P12517625456282627189.a n : ℤ) = A277143 n

end A277143

/-! ## A277143.P16528603101521645632

`A214411(A080859(n+4)+3)`
-/

namespace A277143.P16528603101521645632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A080859 (n + 4) + 3).toNat

end

end A277143.P16528603101521645632

namespace A277143

/-- `A214411(A080859(n+4)+3)` -/
def P16528603101521645632.Spec : Prop :=
  ∀ n, P16528603101521645632.a n = A277143 n

end A277143

/-! ## A277143.P7076633985395198604

`A176405(A152751(n))`
-/

namespace A277143.P7076633985395198604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176405 (A152751 n).toNat

end

end A277143.P7076633985395198604

namespace A277143

/-- `A176405(A152751(n))` -/
def P7076633985395198604.Spec : Prop :=
  ∀ n, P7076633985395198604.a n = A277143 n

end A277143

/-!
# A277144: Lexicographically least sequence of nonnegative integers that avoids 5/4-powers.

The programs for A277144, there is no canonical definition to state claims against.
-/

/-! ## A277144.P2983437743953342859

`A277158(A014601(n)%A141214(n))`
-/

namespace A277144.P2983437743953342859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277158 (Int.tmod (A014601 n) (A141214 n)).toNat

end

end A277144.P2983437743953342859

/-! ## A277144.P11775002309325058874

`floor(n/4)%A028356(A244805(n+1))`
-/

namespace A277144.P11775002309325058874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℚ) / 4⌋ (A028356 (A244805 (n + 1)).toNat)

end

end A277144.P11775002309325058874

/-! ## A277144.P17856359185063529171

`A002265(n)%A001221(A070876(n))`
-/

namespace A277144.P17856359185063529171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 n) (A001221 (A070876 n).toNat)

end

end A277144.P17856359185063529171

/-!
# A277145: Lexicographically least sequence of nonnegative integers that avoids 7/4-powers.

The programs for A277145, there is no canonical definition to state claims against.
-/

/-! ## A277145.P50860229745199195

`(A027388(n)%A055642(3*n))^A158232(n+1)`
-/

namespace A277145.P50860229745199195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A027388 n) (A055642 (3 * n)) : ℚ) ^ (A158232 (n + 1) : ℤ)

end

end A277145.P50860229745199195

/-! ## A277145.P15708418013112308015

`A230632(gcd(A227690(2*n), A353503(n+1)))`
-/

namespace A277145.P15708418013112308015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 (Int.gcd (A227690 (2 * n)) (A353503 (n + 1)))

end

end A277145.P15708418013112308015

/-! ## A277145.P3859278493385484051

`A001859(A330607(n))%A043537(3*n+2)`
-/

namespace A277145.P3859278493385484051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001859 (A330607 n).toNat) (A043537 (3 * n + 2))

end

end A277145.P3859278493385484051

/-! ## A277145.P7662906178956922514

`val(A000281(n)+3, 22)`
-/

namespace A277145.P7662906178956922514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000281 n + 3).toNat 22

end

end A277145.P7662906178956922514

/-! ## A277145.P13679462485713865217

`A079998(A028992(n+1))`
-/

namespace A277145.P13679462485713865217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A028992 (n + 1)).toNat

end

end A277145.P13679462485713865217

/-!
# A277146: Lexicographically least sequence of nonnegative integers that avoids 6/5-powers.

The programs for A277146, there is no canonical definition to state claims against.
-/

/-! ## A277146.P6314593766951046885

`A076142(A081438(n))`
-/

namespace A277146.P6314593766951046885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076142 (A081438 n).toNat

end

end A277146.P6314593766951046885

/-!
# A277147: Lexicographically least sequence of nonnegative integers that avoids 7/5-powers.

The programs for A277147, there is no canonical definition to state claims against.
-/

/-! ## A277147.P11959838443777123768

`and(A000404(A028563(3*n+4)), A264442(3*n+4))`
-/

namespace A277147.P11959838443777123768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000404 (A028563 (3 * n + 4)).toNat) (A264442 (3 * n + 4))

end

end A277147.P11959838443777123768

/-! ## A277147.P12481559575155738458

`A268643(A038220(n)-A033879(n+1))`
-/

namespace A277147.P12481559575155738458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A038220 n - A033879 (n + 1)).toNat

end

end A277147.P12481559575155738458

/-! ## A277147.P6543765098861339654

`and(A011772(2*(n+2)), A213729(A045944(n)))`
-/

namespace A277147.P6543765098861339654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011772 (2 * (n + 2))) (A213729 (A045944 n).toNat)

end

end A277147.P6543765098861339654

/-! ## A277147.P1294773270371367439

`A169674(A178982(n)%A299069(n))`
-/

namespace A277147.P1294773270371367439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169674 (Int.tmod (A178982 n) (A299069 n)).toNat

end

end A277147.P1294773270371367439

/-! ## A277147.P3529511379470699695

`A353470(A353470(n+1)+A327481(3*n+1))`
-/

namespace A277147.P3529511379470699695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353470 (A353470 (n + 1) + A327481 (3 * n + 1)).toNat

end

end A277147.P3529511379470699695

/-!
# A277148: Lexicographically least sequence of nonnegative integers that avoids 8/5-powers.

The programs for A277148, there is no canonical definition to state claims against.
-/

/-! ## A277148.P16203168938511080744

`A086011(A060415(n+1))%A115577(n+2)`
-/

namespace A277148.P16203168938511080744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086011 (A060415 (n + 1)).toNat) (A115577 (n + 2))

end

end A277148.P16203168938511080744

/-! ## A277148.P8626615718854997113

`A055073(A141214(n+1))%A115583(n+2)`
-/

namespace A277148.P8626615718854997113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055073 (A141214 (n + 1)).toNat) (A115583 (n + 2))

end

end A277148.P8626615718854997113

/-! ## A277148.P14915557317126192249

`A100555(A083089(n+4))%A081653(n+1)`
-/

namespace A277148.P14915557317126192249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100555 (A083089 (n + 4)).toNat) (A081653 (n + 1))

end

end A277148.P14915557317126192249

/-! ## A277148.P18130061604842104139

`A095293(n+1)%A386385(n)`
-/

namespace A277148.P18130061604842104139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095293 (n + 1)) (A386385 n)

end

end A277148.P18130061604842104139

/-! ## A277148.P890534875204952169

`A144595((A004756(n+1)+5)²)`
-/

namespace A277148.P890534875204952169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144595 ((A004756 (n + 1) + 5) ^ 2).toNat

end

end A277148.P890534875204952169

/-!
# A277149: Lexicographically least sequence of nonnegative integers that avoids 9/5-powers.

The programs for A277149, the canonical program `A277149.P7769864639982086180` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277149 has offset 0).

The definition of A277149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277149.P4135475024563041181

`val(A105343(A105271(n+1)), 13)`
-/

namespace A277149.P4135475024563041181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105343 (A105271 (n + 1)).toNat).toNat 13

end

end A277149.P4135475024563041181

namespace A277149

/-- `val(A105343(A105271(n+1)), 13)` -/
def P4135475024563041181.Spec : Prop :=
  ∀ n, (P4135475024563041181.a n : ℤ) = A277149 n

end A277149

/-! ## A277149.P15270377591277987710

`val(A056000(A328617(n+5)), 13)`
-/

namespace A277149.P15270377591277987710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A056000 (A328617 (n + 5)).toNat).toNat 13

end

end A277149.P15270377591277987710

namespace A277149

/-- `val(A056000(A328617(n+5)), 13)` -/
def P15270377591277987710.Spec : Prop :=
  ∀ n, (P15270377591277987710.a n : ℤ) = A277149 n

end A277149

/-! ## A277149.P2378504725066367881

`val(A007947(n*record[lcm(4, n)]+1), 13)`
-/

namespace A277149.P2378504725066367881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007947 (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat 13

end

end A277149.P2378504725066367881

namespace A277149

/-- `val(A007947(n*record[lcm(4, n)]+1), 13)` -/
def P2378504725066367881.Spec : Prop :=
  ∀ n, (P2378504725066367881.a n : ℤ) = A277149 n

end A277149

/-! ## A277149.P12330666825451388714

`val(A007947(A080856(n)), 13)`
-/

namespace A277149.P12330666825451388714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007947 (A080856 n).toNat).toNat 13

end

end A277149.P12330666825451388714

namespace A277149

/-- `val(A007947(A080856(n)), 13)` -/
def P12330666825451388714.Spec : Prop :=
  ∀ n, (P12330666825451388714.a n : ℤ) = A277149 n

end A277149

/-! ## A277149.P7769864639982086180

`A197879(A001954(2*13*n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A277149

/-- `A197879(A001954(2*13*n))` -/
def P7769864639982086180.Spec : Prop :=
  ∀ n, P7769864639982086180.a n = A277149 n

theorem P7769864639982086180.correct : P7769864639982086180.Spec := by
  intro n
  simp only [A277149]

end A277149

/-! ## A277149.P17719897581742259847

`val(A056000(90*(n+1)), 13)`
-/

namespace A277149.P17719897581742259847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A056000 (90 * (n + 1))).toNat 13

end

end A277149.P17719897581742259847

namespace A277149

/-- `val(A056000(90*(n+1)), 13)` -/
def P17719897581742259847.Spec : Prop :=
  ∀ n, (P17719897581742259847.a n : ℤ) = A277149 n

end A277149

/-! ## A277149.P10282198243289755418

`val(A000096(A053743(n)), 65)`
-/

namespace A277149.P10282198243289755418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000096 (A053743 n).toNat).toNat 65

end

end A277149.P10282198243289755418

namespace A277149

/-- `val(A000096(A053743(n)), 65)` -/
def P10282198243289755418.Spec : Prop :=
  ∀ n, (P10282198243289755418.a n : ℤ) = A277149 n

end A277149

/-! ## A277149.P13261036406589779907

`val(A000217(A049450(n+1)), 13)`
-/

namespace A277149.P13261036406589779907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000217 (A049450 (n + 1)).toNat).toNat 13

end

end A277149.P13261036406589779907

namespace A277149

/-- `val(A000217(A049450(n+1)), 13)` -/
def P13261036406589779907.Spec : Prop :=
  ∀ n, (P13261036406589779907.a n : ℤ) = A277149 n

end A277149

/-! ## A277149.P15061032027034072876

`A014022(A070262(n+1))`
-/

namespace A277149.P15061032027034072876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014022 (A070262 (n + 1)).toNat

end

end A277149.P15061032027034072876

namespace A277149

/-- `A014022(A070262(n+1))` -/
def P15061032027034072876.Spec : Prop :=
  ∀ n, P15061032027034072876.a n = A277149 n

end A277149

/-! ## A277149.P2351658074944077794

`A014022(A067728(n+1)/2)`
-/

namespace A277149.P2351658074944077794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014022 (SequenceMachineLib.roundAway ((A067728 (n + 1) : ℚ) / 2)).toNat

end

end A277149.P2351658074944077794

namespace A277149

/-- `A014022(A067728(n+1)/2)` -/
def P2351658074944077794.Spec : Prop :=
  ∀ n, P2351658074944077794.a n = A277149 n

end A277149

/-!
# A277150: Lexicographically least sequence of nonnegative integers that avoids 7/6-powers.

The programs for A277150, there is no canonical definition to state claims against.
-/

/-! ## A277150.P15185226941958534992

`A172272(A196082(2*n+1))%(3-(n+1)%2)`
-/

namespace A277150.P15185226941958534992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172272 (A196082 (2 * n + 1)).toNat) (3 - (((n + 1) % 2 : ℕ) : ℤ))

end

end A277150.P15185226941958534992

/-! ## A277150.P16630383705592913472

`A054895(n)%A020639(A001704(3*n+1))`
-/

namespace A277150.P16630383705592913472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054895 n) (A020639 (A001704 (3 * n + 1)).toNat)

end

end A277150.P16630383705592913472

/-! ## A277150.P14130041877045181999

`A112765(A276086(n))%A053669(3*n+5)`
-/

namespace A277150.P14130041877045181999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112765 (A276086 n).toNat) (A053669 (3 * n + 5))

end

end A277150.P14130041877045181999

/-! ## A277150.P5317240514855408314

`floor(n/6)%A001222(A062988(n))`
-/

namespace A277150.P5317240514855408314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℚ) / 6⌋ (A001222 (A062988 n).toNat)

end

end A277150.P5317240514855408314

/-! ## A277150.P13593210129342934934

`ceil(ceil(A089051(A097855(n+1))/2)/2)`
-/

namespace A277150.P13593210129342934934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A089051 (A097855 (n + 1)).toNat : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A277150.P13593210129342934934

/-!
# A277151: Lexicographically least sequence of nonnegative integers that avoids 11/6-powers.

The programs for A277151, there is no canonical definition to state claims against.
-/

/-! ## A277151.P2606783976492762232

`val(A106648(A304609(n+1)), 64)`
-/

namespace A277151.P2606783976492762232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A106648 (A304609 (n + 1)).toNat).toNat 64

end

end A277151.P2606783976492762232

/-! ## A277151.P7453105651389406868

`A102683(A007284(3*n+1)+7)`
-/

namespace A277151.P7453105651389406868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A007284 (3 * n + 1) + 7).toNat

end

end A277151.P7453105651389406868

/-! ## A277151.P16490746184613613775

`C(A358006(n+4), A236927(A084964(n)))`
-/

namespace A277151.P16490746184613613775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A358006 (n + 4 + 32)).toNat (A236927 (A084964 n).toNat).toNat

end

end A277151.P16490746184613613775

/-! ## A277151.P7767831831742778957

`A121262(or(A002378(3*n+2), A118277(n)))`
-/

namespace A277151.P7767831831742778957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (Int.lor (A002378 (3 * n + 2)) (A118277 n)).toNat

end

end A277151.P7767831831742778957

/-! ## A277151.P1531447857665886877

`A295659(A034856(n+1)+(3*n)²)`
-/

namespace A277151.P1531447857665886877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A034856 (n + 1) + ((3 * n) ^ 2 : ℤ)).toNat

end

end A277151.P1531447857665886877

/-! ## A277151.P475317513029600507

`A002265(A001511(∑[3*xor(1, n)]))`
-/

namespace A277151.P475317513029600507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A001511 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A277151.P475317513029600507

/-! ## A277151.P8050584373904392578

`A014025(∑[A016777(n)])²`
-/

namespace A277151.P8050584373904392578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A277151.P8050584373904392578

/-! ## A277151.P12355659453883646307

`A235127(A019554(∑[3*n+1]))`
-/

namespace A277151.P12355659453883646307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A019554 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A277151.P12355659453883646307

/-! ## A277151.P11954137150779967387

`val(A001318(A188623(3*(n+1))), A001318(2*(n+2)))`
-/

namespace A277151.P11954137150779967387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001318 (A188623 (3 * (n + 1))).toNat).toNat (A001318 (2 * (n + 2))).toNat

end

end A277151.P11954137150779967387

/-! ## A277151.P5087385732024591873

`A001221(A027750(A006519(A001318(2*n+1))))`
-/

namespace A277151.P5087385732024591873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A027750 (A006519 (A001318 (2 * n + 1)).toNat).toNat).toNat

end

end A277151.P5087385732024591873

/-!
# A277152: Lexicographically least sequence of nonnegative integers that avoids 8/7-powers.

The programs for A277152, there is no canonical definition to state claims against.
-/

/-! ## A277152.P6790224736679966731

`and(A006323((4*n+9)²), A111858(n+1))`
-/

namespace A277152.P6790224736679966731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006323 ((4 * n + 9) ^ 2)) (A111858 (n + 1))

end

end A277152.P6790224736679966731

/-! ## A277152.P12715425493102768073

`and(A100037(2*(n+2))+2, A111858(n+1))`
-/

namespace A277152.P12715425493102768073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100037 (2 * (n + 2)) + 2) (A111858 (n + 1))

end

end A277152.P12715425493102768073

/-! ## A277152.P3072746110446456801

`and(A033999(A274775(n+1)), A111858(n+1))`
-/

namespace A277152.P3072746110446456801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A274775 (n + 1)).toNat) (A111858 (n + 1))

end

end A277152.P3072746110446456801

/-! ## A277152.P6819974157961273309

`and(A161709(n), A284258(A253666(2*n+1)))`
-/

namespace A277152.P6819974157961273309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161709 n) (A284258 (A253666 (2 * n + 1)).toNat)

end

end A277152.P6819974157961273309

/-! ## A277152.P6794547883867990917

`A111858(n+1)%A276625(A020639(3*n+4))`
-/

namespace A277152.P6794547883867990917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111858 (n + 1)) (A276625 (A020639 (3 * n + 4)).toNat)

end

end A277152.P6794547883867990917

/-!
# A277153: Lexicographically least sequence of nonnegative integers that avoids 9/7-powers.

The programs for A277153, there is no canonical definition to state claims against.
-/

/-! ## A277153.P8022014833916106557

`A003849(∑{e}[A076228(n+1), A076255(#)])`
-/

namespace A277153.P8022014833916106557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A076255 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A277153.P8022014833916106557

/-!
# A277154: Lexicographically least sequence of nonnegative integers that avoids 10/7-powers.

The programs for A277154, there is no canonical definition to state claims against.
-/

/-! ## A277154.P17517468025670009959

`val(A328623(A316720(n)), 7)`
-/

namespace A277154.P17517468025670009959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328623 (A316720 n).toNat).toNat 7

end

end A277154.P17517468025670009959

/-! ## A277154.P12212004511564881210

`A011719(A114986(n)+A081130(2*n+1))`
-/

namespace A277154.P12212004511564881210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011719 (A114986 n + A081130 (2 * n + 1)).toNat

end

end A277154.P12212004511564881210

/-! ## A277154.P2683729452071244056

`A055641(A287394(n)+A089863(2*n+1))`
-/

namespace A277154.P2683729452071244056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A287394 n + A089863 (2 * n + 1)).toNat

end

end A277154.P2683729452071244056

/-! ## A277154.P2870799956124550094

`A000225(n)%A124010(A142172(3*n+5))`
-/

namespace A277154.P2870799956124550094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 n) (A124010 (A142172 (3 * n + 5)).toNat)

end

end A277154.P2870799956124550094

/-!
# A277155: Lexicographically least sequence of nonnegative integers that avoids 11/7-powers.

The programs for A277155, the canonical program `A277155.P4577781163159758858` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277155 has offset 0).

The definition of A277155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277155.P4577781163159758858

`A144596(A030503(n+4)+2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A277155

/-- `A144596(A030503(n+4)+2)` -/
def P4577781163159758858.Spec : Prop :=
  ∀ n, P4577781163159758858.a n = A277155 n

theorem P4577781163159758858.correct : P4577781163159758858.Spec := by
  intro n
  simp only [A277155]

end A277155

/-! ## A277155.P12445965105323003255

`A277160(A000196(∑[3*n]))`
-/

namespace A277155.P12445965105323003255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277160 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A277155.P12445965105323003255

namespace A277155

/-- `A277160(A000196(∑[3*n]))` -/
def P12445965105323003255.Spec : Prop :=
  ∀ n, P12445965105323003255.a n = A277155 n

end A277155

/-! ## A277155.P10677463400001556141

`A277160(2*n+1-A247973(n+1))`
-/

namespace A277155.P10677463400001556141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277160 ((2 * n + 1 : ℤ) - A247973 (n + 1)).toNat

end

end A277155.P10677463400001556141

namespace A277155

/-- `A277160(2*n+1-A247973(n+1))` -/
def P10677463400001556141.Spec : Prop :=
  ∀ n, P10677463400001556141.a n = A277155 n

end A277155

/-! ## A277155.P16655837643167076421

`val(gcd(A247973(n+1)², A058331(n))+1, 2)-1`
-/

namespace A277155.P16655837643167076421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (Int.gcd (A247973 (n + 1) ^ 2) (A058331 n) + 1) 2 : ℤ) - 1

end

end A277155.P16655837643167076421

namespace A277155

/-- `val(gcd(A247973(n+1)², A058331(n))+1, 2)-1` -/
def P16655837643167076421.Spec : Prop :=
  ∀ n, P16655837643167076421.a n = A277155 n

end A277155

/-! ## A277155.P6146940754776293971

`A010051(gcd(A247973(n+1)², A058331(n)))`
-/

namespace A277155.P6146940754776293971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.gcd (A247973 (n + 1) ^ 2) (A058331 n))

end

end A277155.P6146940754776293971

namespace A277155

/-- `A010051(gcd(A247973(n+1)², A058331(n)))` -/
def P6146940754776293971.Spec : Prop :=
  ∀ n, P6146940754776293971.a n = A277155 n

end A277155

/-!
# A277156: Lexicographically least sequence of nonnegative integers that avoids 12/7-powers.

The programs for A277156, the canonical program `A277156.P10138368382409887168` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277156 has offset 0).

The definition of A277156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277156.P10138368382409887168

`val(A014132(A034856(n+1)), 17)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A277156

/-- `val(A014132(A034856(n+1)), 17)` -/
def P10138368382409887168.Spec : Prop :=
  ∀ n, (P10138368382409887168.a n : ℤ) = A277156 n

theorem P10138368382409887168.correct : P10138368382409887168.Spec := by
  intro n
  simp only [A277156]

end A277156

/-!
# A277157: Lexicographically least sequence of nonnegative integers that avoids 13/7-powers.

The programs for A277157, there is no canonical definition to state claims against.
-/

/-! ## A277157.P15730700748466454016

`A014047(3*(n+1))^A100484(A209636(n+3))`
-/

namespace A277157.P15730700748466454016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014047 (3 * (n + 1)) : ℚ) ^ (A100484 (A209636 (n + 3)).toNat : ℤ)

end

end A277157.P15730700748466454016

/-! ## A277157.P6923989708332724661

`A014028(3*(n+1))^A049417(A307857(2*(n+1)))`
-/

namespace A277157.P6923989708332724661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014028 (3 * (n + 1)) : ℚ) ^ (A049417 (A307857 (2 * (n + 1))).toNat : ℤ)

end

end A277157.P6923989708332724661

/-! ## A277157.P14334212887358341792

`val(A005899(n+4), A040342(A103152(n+1)))`
-/

namespace A277157.P14334212887358341792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005899 (n + 4)).toNat (A040342 (A103152 (n + 1)).toNat).toNat

end

end A277157.P14334212887358341792

/-! ## A277157.P13168260878961671888

`A014047(3*(n+1))^A324541(3*n+4)`
-/

namespace A277157.P13168260878961671888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014047 (3 * (n + 1)) : ℚ) ^ (A324541 (3 * n + 4) : ℤ)

end

end A277157.P13168260878961671888

/-! ## A277157.P17073301800834164906

`A014047(3*(n+1))^A326912(A014085(n+2))`
-/

namespace A277157.P17073301800834164906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014047 (3 * (n + 1)) : ℚ) ^ (A326912 (A014085 (n + 2)).toNat : ℤ)

end

end A277157.P17073301800834164906

/-! ## A277157.P9602829799828510887

`lcm(A008284(A000124(n)), A014028(3*n+3))`
-/

namespace A277157.P9602829799828510887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008284 (A000124 n).toNat) (A014028 (3 * n + 3))

end

end A277157.P9602829799828510887

/-! ## A277157.P337934506084601563

`A014047(3*(n+1))^A105774(A001694(n+1))`
-/

namespace A277157.P337934506084601563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014047 (3 * (n + 1)) : ℚ) ^ (A105774 (A001694 (n + 1)).toNat : ℤ)

end

end A277157.P337934506084601563

/-! ## A277157.P10559412829820431169

`A014028(3*(n+1))^A005835(A005384(n+1))`
-/

namespace A277157.P10559412829820431169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014028 (3 * (n + 1)) : ℚ) ^ (A005835 (A005384 (n + 1)).toNat : ℤ)

end

end A277157.P10559412829820431169

/-! ## A277157.P8582649297938729982

`A014028(3*(n+1))^A301680(A301680(3*n+4))`
-/

namespace A277157.P8582649297938729982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014028 (3 * (n + 1)) : ℚ) ^ (A301680 (A301680 (3 * n + 4)).toNat : ℤ)

end

end A277157.P8582649297938729982

/-! ## A277157.P16658255693143754295

`C(A070672(A007318(n)), A070701(3*n+3))`
-/

namespace A277157.P16658255693143754295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070672 (A007318 n).toNat).toNat (A070701 (3 * n + 3)).toNat

end

end A277157.P16658255693143754295

/-! ## A277157.P5519427521727617165

`val(A305073(n+1), A078539(A016789(3*n+1)))`
-/

namespace A277157.P5519427521727617165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305073 (n + 1)).toNat (A078539 (A016789 (3 * n + 1)).toNat).toNat

end

end A277157.P5519427521727617165

/-! ## A277157.P16091265841953218717

`A014047(3*(n+1))^A302781(A302781(n))`
-/

namespace A277157.P16091265841953218717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014047 (3 * (n + 1)) : ℚ) ^ (A302781 (A302781 n).toNat : ℤ)

end

end A277157.P16091265841953218717

/-! ## A277157.P72910835462241418

`A070661(C(A070672(n+4), A070701(3*(n+1))))`
-/

namespace A277157.P72910835462241418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070661 (Nat.choose (A070672 (n + 4)).toNat (A070701 (3 * (n + 1))).toNat)

end

end A277157.P72910835462241418

/-! ## A277157.P17583548473361722577

`A070663(C(A070672(n+4), A070701(3*(n+1))))`
-/

namespace A277157.P17583548473361722577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070663 (Nat.choose (A070672 (n + 4)).toNat (A070701 (3 * (n + 1))).toNat)

end

end A277157.P17583548473361722577

/-! ## A277157.P16547210664498137244

`A070688(C(A070672(n+4), A070701(3*(n+1))))`
-/

namespace A277157.P16547210664498137244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070688 (Nat.choose (A070672 (n + 4)).toNat (A070701 (3 * (n + 1))).toNat)

end

end A277157.P16547210664498137244

/-! ## A277157.P7774459047013673617

`A070700(C(A070672(n+4), A070701(3*(n+1))))`
-/

namespace A277157.P7774459047013673617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070700 (Nat.choose (A070672 (n + 4)).toNat (A070701 (3 * (n + 1))).toNat)

end

end A277157.P7774459047013673617

/-!
# A277158: Lexicographically least sequence of nonnegative integers that avoids 9/8-powers.

The programs for A277158, there is no canonical definition to state claims against.
-/

/-! ## A277158.P4033000260323137978

`A054897(n)%p?[A134060(n)]`
-/

namespace A277158.P4033000260323137978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054897 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A277158.P4033000260323137978

/-! ## A277158.P16237794606966408148

`A132292(n+1)%p?[A134060(n)]`
-/

namespace A277158.P16237794606966408148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132292 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A277158.P16237794606966408148

/-! ## A277158.P3043247651510837941

`(A161447(n+1)-A342742(2*n+1))%3`
-/

namespace A277158.P3043247651510837941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161447 (n + 1) - A342742 (2 * n + 1)) 3

end

end A277158.P3043247651510837941

/-! ## A277158.P17787174325947353149

`A007895(and(n, A278211(2*(n+1))))`
-/

namespace A277158.P17787174325947353149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Int.land (n : ℤ) (A278211 (2 * (n + 1)))).toNat

end

end A277158.P17787174325947353149

/-!
# A277159: Lexicographically least sequence of nonnegative integers that avoids 11/8-powers.

The programs for A277159, there is no canonical definition to state claims against.
-/

/-! ## A277159.P9542378078205539801

`A003982(A077233(n+1)*A322494(n))`
-/

namespace A277159.P9542378078205539801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A077233 (n + 1) * A322494 n).toNat

end

end A277159.P9542378078205539801

/-! ## A277159.P4018403090401993174

`and(A137264(A002808(2*(n+1))), A156258(2*(n+1)))`
-/

namespace A277159.P4018403090401993174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137264 (A002808 (2 * (n + 1))).toNat) (A156258 (2 * (n + 1)))

end

end A277159.P4018403090401993174

/-! ## A277159.P14674385864021694671

`val(A330958(A140595(n)), 2)`
-/

namespace A277159.P14674385864021694671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A330958 (A140595 n).toNat).toNat 2

end

end A277159.P14674385864021694671

/-! ## A277159.P18409215399423280171

`val(A194000(A246438(n+1)), 7)`
-/

namespace A277159.P18409215399423280171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A194000 (A246438 (n + 1)).toNat).toNat 7

end

end A277159.P18409215399423280171

/-! ## A277159.P11440823239854245753

`A126010(A297466(n+1))`
-/

namespace A277159.P11440823239854245753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126010 (A297466 (n + 1)).toNat

end

end A277159.P11440823239854245753

/-!
# A277160: Lexicographically least sequence of nonnegative integers that avoids 13/8-powers.

The programs for A277160, there is no canonical definition to state claims against.
-/

/-! ## A277160.P11805207605583075031

`val(A249115(A329997(n+1)), 12)`
-/

namespace A277160.P11805207605583075031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A249115 (A329997 (n + 1)).toNat).toNat 12

end

end A277160.P11805207605583075031

/-! ## A277160.P18368769122216388990

`A029427(gcd(A192360(n+1), A324689(n)))`
-/

namespace A277160.P18368769122216388990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029427 (Int.gcd (A192360 (n + 1)) (A324689 n))

end

end A277160.P18368769122216388990

/-! ## A277160.P4564526442028913970

`val(A316597(n+2), 18)`
-/

namespace A277160.P4564526442028913970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A316597 (n + 2)).toNat 18

end

end A277160.P4564526442028913970

/-! ## A277160.P7096397204188298657

`A373598(A316597(n+2))`
-/

namespace A277160.P7096397204188298657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373598 (A316597 (n + 2)).toNat

end

end A277160.P7096397204188298657

/-! ## A277160.P3119293971945475136

`val(A033578(A229312(n+1)), 42)`
-/

namespace A277160.P3119293971945475136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033578 (A229312 (n + 1)).toNat).toNat 42

end

end A277160.P3119293971945475136

/-! ## A277160.P3372035306144056298

`A324326(∑[∑{p}[n+1, gcd(n, #)]]+1)%2`
-/

namespace A277160.P3372035306144056298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324326 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 2

end

end A277160.P3372035306144056298

/-! ## A277160.P17986705666331515020

`and(A175400(n), A226044(A082186(n+1)))`
-/

namespace A277160.P17986705666331515020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175400 n) (A226044 (A082186 (n + 1)).toNat)

end

end A277160.P17986705666331515020

/-! ## A277160.P14915391812243785718

`A010216(A046328(n+1))%A199596(A023511(n+2))`
-/

namespace A277160.P14915391812243785718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010216 (A046328 (n + 1)).toNat) (A199596 (A023511 (n + 2)).toNat)

end

end A277160.P14915391812243785718

/-!
# A277161: Lexicographically least sequence of nonnegative integers that avoids 15/8-powers.

The programs for A277161, the canonical program `A277161.P6226237887953159833` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277161 has offset 0).

The definition of A277161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277161.P6226237887953159833

`val(A000027(A018227(n+1)), 11)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A277161

/-- `val(A000027(A018227(n+1)), 11)` -/
def P6226237887953159833.Spec : Prop :=
  ∀ n, (P6226237887953159833.a n : ℤ) = A277161 n

theorem P6226237887953159833.correct : P6226237887953159833.Spec := by
  intro n
  simp only [A277161]

end A277161

/-! ## A277161.P10540743513889720043

`val(A000027(∑[A093907(n+1)]), 11)`
-/

namespace A277161.P10540743513889720043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093907 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat 11

end

end A277161.P10540743513889720043

namespace A277161

/-- `val(A000027(∑[A093907(n+1)]), 11)` -/
def P10540743513889720043.Spec : Prop :=
  ∀ n, (P10540743513889720043.a n : ℤ) = A277161 n

end A277161

/-! ## A277161.P14841337503489412065

`C(A054845(n), A000027(A018227(n+1))%11)`
-/

namespace A277161.P14841337503489412065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054845 n).toNat (Int.tmod (A000027 (A018227 (n + 1)).toNat) 11).toNat

end

end A277161.P14841337503489412065

namespace A277161

/-- `C(A054845(n), A000027(A018227(n+1))%11)` -/
def P14841337503489412065.Spec : Prop :=
  ∀ n, (P14841337503489412065.a n : ℤ) = A277161 n

end A277161

/-! ## A277161.P2073444157917668664

`val(A104136(∑[n]+1), 13)`
-/

namespace A277161.P2073444157917668664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A104136 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat 13

end

end A277161.P2073444157917668664

namespace A277161

/-- `val(A104136(∑[n]+1), 13)` -/
def P2073444157917668664.Spec : Prop :=
  ∀ n, (P2073444157917668664.a n : ℤ) = A277161 n

end A277161

/-! ## A277161.P11031770769822937154

`val(∑[A017077(A326657(n))], 11)`
-/

namespace A277161.P11031770769822937154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A326657 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 11

end

end A277161.P11031770769822937154

namespace A277161

/-- `val(∑[A017077(A326657(n))], 11)` -/
def P11031770769822937154.Spec : Prop :=
  ∀ n, (P11031770769822937154.a n : ℤ) = A277161 n

end A277161

/-! ## A277161.P17886597842099796017

`val(A032766(A002024(∑[n]+1))+11, 11)`
-/

namespace A277161.P17886597842099796017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A032766 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat + 11).toNat 11

end

end A277161.P17886597842099796017

namespace A277161

/-- `val(A032766(A002024(∑[n]+1))+11, 11)` -/
def P17886597842099796017.Spec : Prop :=
  ∀ n, (P17886597842099796017.a n : ℤ) = A277161 n

end A277161

/-! ## A277161.P16846008221136569806

`val(A199944(A003986(∑[n+1])), 22)`
-/

namespace A277161.P16846008221136569806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A199944 (A003986 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat 22

end

end A277161.P16846008221136569806

namespace A277161

/-- `val(A199944(A003986(∑[n+1])), 22)` -/
def P16846008221136569806.Spec : Prop :=
  ∀ n, (P16846008221136569806.a n : ℤ) = A277161 n

end A277161

/-! ## A277161.P5011912684414994317

`val(A095800(∑[n+3]+7), 11)`
-/

namespace A277161.P5011912684414994317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A095800 (∑ j ∈ Finset.range (n + 1), f1 j + 7)).toNat 11

end

end A277161.P5011912684414994317

namespace A277161

/-- `val(A095800(∑[n+3]+7), 11)` -/
def P5011912684414994317.Spec : Prop :=
  ∀ n, (P5011912684414994317.a n : ℤ) = A277161 n

end A277161

/-! ## A277161.P715598629591959805

`val(A204904(A297996(n+1)), 11)`
-/

namespace A277161.P715598629591959805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A204904 (A297996 (n + 1)).toNat).toNat 11

end

end A277161.P715598629591959805

namespace A277161

/-- `val(A204904(A297996(n+1)), 11)` -/
def P715598629591959805.Spec : Prop :=
  ∀ n, (P715598629591959805.a n : ℤ) = A277161 n

end A277161

/-! ## A277161.P7395021663585148320

`val(∑[A093178(A000384(n))], 11)`
-/

namespace A277161.P7395021663585148320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A000384 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 11

end

end A277161.P7395021663585148320

namespace A277161

/-- `val(∑[A093178(A000384(n))], 11)` -/
def P7395021663585148320.Spec : Prop :=
  ∀ n, (P7395021663585148320.a n : ℤ) = A277161 n

end A277161

/-! ## A277161.P481867844486771201

`val(∑[12*A006519(n²+1)], 33)`
-/

namespace A277161.P481867844486771201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A006519 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 33

end

end A277161.P481867844486771201

namespace A277161

/-- `val(∑[12*A006519(n²+1)], 33)` -/
def P481867844486771201.Spec : Prop :=
  ∀ n, (P481867844486771201.a n : ℤ) = A277161 n

end A277161

/-! ## A277161.P15906562798010442534

`val(∑[24/A006519(n²+2)], 33)`
-/

namespace A277161.P15906562798010442534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  24 / (A006519 (n ^ 2 + 2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 33

end

end A277161.P15906562798010442534

namespace A277161

/-- `val(∑[24/A006519(n²+2)], 33)` -/
def P15906562798010442534.Spec : Prop :=
  ∀ n, (P15906562798010442534.a n : ℤ) = A277161 n

end A277161

/-!
# A277162: Lexicographically least sequence of nonnegative integers that avoids 10/9-powers.

The programs for A277162, there is no canonical definition to state claims against.
-/

/-! ## A277162.P12643907050539888924

`A005843(3*n+2)%A055642(A000041(n+4))`
-/

namespace A277162.P12643907050539888924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (3 * n + 2)) (A055642 (A000041 (n + 4)).toNat)

end

end A277162.P12643907050539888924

/-!
# A277163: Lexicographically least sequence of nonnegative integers that avoids 13/9-powers.

The programs for A277163, there is no canonical definition to state claims against.
-/

/-! ## A277163.P11497694377085045546

`A001221(gcd(A064086(n+1), A128905(n+1)))`
-/

namespace A277163.P11497694377085045546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A064086 (n + 1)) (A128905 (n + 1)))

end

end A277163.P11497694377085045546

/-! ## A277163.P65846738207432039

`A373371(xor(A000931(n), A286708(2*n+1)))`
-/

namespace A277163.P65846738207432039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (Int.xor (A000931 n) (A286708 (2 * n + 1))).toNat

end

end A277163.P65846738207432039

/-! ## A277163.P16067220443584457781

`A004247(A142003(n+1))%A055642(n)`
-/

namespace A277163.P16067220443584457781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004247 (A142003 (n + 1)).toNat) (A055642 n)

end

end A277163.P16067220443584457781

/-! ## A277163.P14392203207693581796

`A003991(A142003(n+1))%A043537(n+1)`
-/

namespace A277163.P14392203207693581796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003991 (A142003 (n + 1)).toNat) (A043537 (n + 1))

end

end A277163.P14392203207693581796

/-! ## A277163.P3254544922640247850

`and(A003991(A142003(n+1)), A004216(n+1))`
-/

namespace A277163.P3254544922640247850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003991 (A142003 (n + 1)).toNat) (A004216 (n + 1))

end

end A277163.P3254544922640247850

/-!
# A277164: Lexicographically least sequence of nonnegative integers that avoids 17/10-powers.

The programs for A277164, there is no canonical definition to state claims against.
-/

/-! ## A277164.P7790863026147405462

`A079978(gcd(A153363(n+1), A162897(n+1)))`
-/

namespace A277164.P7790863026147405462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (Int.gcd (A153363 (n + 1)) (A162897 (n + 1)))

end

end A277164.P7790863026147405462

/-!
# A277165: Lexicographically least sequence of nonnegative integers that avoids 27/23-powers.

The programs for A277165, there is no canonical definition to state claims against.
-/

/-! ## A277165.P12795680422054512543

`A231600(C(A336168(n), 3))`
-/

namespace A277165.P12795680422054512543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231600 (Nat.choose (A336168 n).toNat 3)

end

end A277165.P12795680422054512543

/-! ## A277165.P3607509819873739844

`A318282(A128305(n+1))%A236398(n+1)`
-/

namespace A277165.P3607509819873739844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318282 (A128305 (n + 1)).toNat) (A236398 (n + 1))

end

end A277165.P3607509819873739844

/-! ## A277165.P489831655423933615

`and(A061885(2*(n+1)²), A316867(A212623(n+1)))`
-/

namespace A277165.P489831655423933615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061885 (2 * (n + 1) ^ 2)) (A316867 (A212623 (n + 1)).toNat)

end

end A277165.P489831655423933615

/-! ## A277165.P6218059662884662280

`and(A085862(A212623(n+1)), A131209(n))`
-/

namespace A277165.P6218059662884662280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085862 (A212623 (n + 1)).toNat) (A131209 n)

end

end A277165.P6218059662884662280

/-! ## A277165.P8780515670860268262

`A010052(A016789(n)*A026358(n+1))`
-/

namespace A277165.P8780515670860268262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A016789 n * A026358 (n + 1)).toNat

end

end A277165.P8780515670860268262

/-! ## A277165.P12011487620726336282

`val(A000010(A003506(2*n+5)), A128670(n+4))`
-/

namespace A277165.P12011487620726336282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A003506 (2 * n + 5)).toNat).toNat (A128670 (n + 4)).toNat

end

end A277165.P12011487620726336282

/-!
# A277166: Numbers m such that m divides the number of divisors of m!!.

The programs for A277166, the canonical program `A277166.P3337470438737064914` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277166 has offset 1).

The definition of A277166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277166.P3337470438737064914

`record[gcd(n, A114338(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A277166

/-- `record[gcd(n, A114338(n))]` -/
def P3337470438737064914.Spec : Prop :=
  ∀ n, (P3337470438737064914.a n : ℤ) = A277166 (n + 1)

theorem P3337470438737064914.correct : P3337470438737064914.Spec := by
  intro n
  simp only [A277166, Nat.add_sub_cancel]

end A277166

/-! ## A277166.P12203378774582433287

`record[A090375(n+1)%A000408(n+1)]`
-/

namespace A277166.P12203378774582433287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090375 (n + 1)) (A000408 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277166.P12203378774582433287

namespace A277166

/-- `record[A090375(n+1)%A000408(n+1)]` -/
def P12203378774582433287.Spec : Prop :=
  ∀ n, P12203378774582433287.a n = A277166 (n + 1)

end A277166

/-! ## A277166.P13541944605062540728

`record[A166469(A035253(2*n+1))]`
-/

namespace A277166.P13541944605062540728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166469 (A035253 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277166.P13541944605062540728

namespace A277166

/-- `record[A166469(A035253(2*n+1))]` -/
def P13541944605062540728.Spec : Prop :=
  ∀ n, P13541944605062540728.a n = A277166 (n + 1)

end A277166

/-! ## A277166.P12798732759766859913

`record[and(A246060(n+3), A288638(n))]`
-/

namespace A277166.P12798732759766859913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A246060 (n + 3)) (A288638 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277166.P12798732759766859913

namespace A277166

/-- `record[and(A246060(n+3), A288638(n))]` -/
def P12798732759766859913.Spec : Prop :=
  ∀ n, P12798732759766859913.a n = A277166 (n + 1)

end A277166

/-! ## A277166.P6672251996306157411

`record[gcd(A097000(n+1), A175431(n+1))]`
-/

namespace A277166.P6672251996306157411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097000 (n + 1)) (A175431 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277166.P6672251996306157411

namespace A277166

/-- `record[gcd(A097000(n+1), A175431(n+1))]` -/
def P6672251996306157411.Spec : Prop :=
  ∀ n, (P6672251996306157411.a n : ℤ) = A277166 (n + 1)

end A277166

/-!
# A277168: Coefficients in the series reversion of x*exp(-x^2).

The programs for A277168, the canonical program `A277168.P6339302316372532804` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277168 has offset 1).

The definition of A277168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277168.P6339302316372532804

`C(2*(n+1)-1, n)*(2*(n+1)-1)^(n-1)*(n+1)!`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277168

/-- `C(2*(n+1)-1, n)*(2*(n+1)-1)^(n-1)*(n+1)!` -/
def P6339302316372532804.Spec : Prop :=
  ∀ n, P6339302316372532804.a n = (A277168 (n + 1) : ℚ)

end A277168

/-! ## A277168.P2136063350820487920

`n!*C(2*n, n)*Δ[n²]^n`
-/

namespace A277168.P2136063350820487920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.choose (2 * n) n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n

end

end A277168.P2136063350820487920

namespace A277168

/-- `n!*C(2*n, n)*Δ[n²]^n` -/
def P2136063350820487920.Spec : Prop :=
  ∀ n, P2136063350820487920.a n = A277168 (n + 1)

end A277168

/-! ## A277168.P17963217150135731399

`(2*n+1)^n*n!*C(2*n, n)`
-/

namespace A277168.P17963217150135731399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ n * Nat.factorial n * Nat.choose (2 * n) n

end

end A277168.P17963217150135731399

namespace A277168

/-- `(2*n+1)^n*n!*C(2*n, n)` -/
def P17963217150135731399.Spec : Prop :=
  ∀ n, (P17963217150135731399.a n : ℤ) = A277168 (n + 1)

end A277168

/-! ## A277168.P3585351671507100546

`(2*n+1)^n*A001813(n)`
-/

namespace A277168.P3585351671507100546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ n : ℤ) * A001813 n

end

end A277168.P3585351671507100546

namespace A277168

/-- `(2*n+1)^n*A001813(n)` -/
def P3585351671507100546.Spec : Prop :=
  ∀ n, P3585351671507100546.a n = A277168 (n + 1)

end A277168

/-! ## A277168.P11914631726959255922

`(2*n+1)^(n-1)*∏[Δ[n²]]*A016116(2*n)`
-/

namespace A277168.P11914631726959255922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (A016116 (2 * n) : ℚ)

end

end A277168.P11914631726959255922

namespace A277168

/-- `(2*n+1)^(n-1)*∏[Δ[n²]]*A016116(2*n)` -/
def P11914631726959255922.Spec : Prop :=
  ∀ n, P11914631726959255922.a n = (A277168 (n + 1) : ℚ)

end A277168

/-!
# A277169: Product of squares of proper divisors of n.

The programs for A277169, the canonical program `A277169.P7870320882973460960` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277169 has offset 1).

The definition of A277169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277169.P13543981448269113332

`(n+1)^(A000005(n+1)-2)`
-/

namespace A277169.P13543981448269113332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000005 (n + 1) - 2 : ℤ)

end

end A277169.P13543981448269113332

namespace A277169

/-- `(n+1)^(A000005(n+1)-2)` -/
def P13543981448269113332.Spec : Prop :=
  ∀ n, P13543981448269113332.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P7554393924895729552

`A062758(n+1)/A000290(n+1)`
-/

namespace A277169.P7554393924895729552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062758 (n + 1) : ℚ) / (A000290 (n + 1) : ℚ)

end

end A277169.P7554393924895729552

namespace A277169

/-- `A062758(n+1)/A000290(n+1)` -/
def P7554393924895729552.Spec : Prop :=
  ∀ n, P7554393924895729552.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P16214643987758564137

`(n+1)^A000005(n+1)/A000290(n+1)`
-/

namespace A277169.P16214643987758564137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000005 (n + 1) : ℤ) / (A000290 (n + 1) : ℚ)

end

end A277169.P16214643987758564137

namespace A277169

/-- `(n+1)^A000005(n+1)/A000290(n+1)` -/
def P16214643987758564137.Spec : Prop :=
  ∀ n, P16214643987758564137.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P7870320882973460960

`A000290(A007956(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A277169

/-- `A000290(A007956(n+1))` -/
def P7870320882973460960.Spec : Prop :=
  ∀ n, P7870320882973460960.a n = A277169 (n + 1)

theorem P7870320882973460960.correct : P7870320882973460960.Spec := by
  intro n
  simp only [A277169, Nat.add_sub_cancel]

end A277169

/-! ## A277169.P11474045787602076150

`A000290(A007955(n+1)/(n+1))`
-/

namespace A277169.P11474045787602076150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway ((A007955 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A277169.P11474045787602076150

namespace A277169

/-- `A000290(A007955(n+1)/(n+1))` -/
def P11474045787602076150.Spec : Prop :=
  ∀ n, P11474045787602076150.a n = A277169 (n + 1)

end A277169

/-! ## A277169.P17974298887987462824

`(∏{d}[n+1, #]/(n+1))²`
-/

namespace A277169.P17974298887987462824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A277169.P17974298887987462824

namespace A277169

/-- `(∏{d}[n+1, #]/(n+1))²` -/
def P17974298887987462824.Spec : Prop :=
  ∀ n, P17974298887987462824.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P1532787042448940610

`((n+1)/∏{d}[n+1, #])^-2`
-/

namespace A277169.P1532787042448940610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)) ^ (-2 : ℤ)

end

end A277169.P1532787042448940610

namespace A277169

/-- `((n+1)/∏{d}[n+1, #])^-2` -/
def P1532787042448940610.Spec : Prop :=
  ∀ n, P1532787042448940610.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P4870168319748451331

`(n+1)^(∏{e}[n+1, #+1]-2)`
-/

namespace A277169.P4870168319748451331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 2 : ℤ)

end

end A277169.P4870168319748451331

namespace A277169

/-- `(n+1)^(∏{e}[n+1, #+1]-2)` -/
def P4870168319748451331.Spec : Prop :=
  ∀ n, P4870168319748451331.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P3099810575959740013

`(n+1)^Δ[A325459(n)]`
-/

namespace A277169.P3099810575959740013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A277169.P3099810575959740013

namespace A277169

/-- `(n+1)^Δ[A325459(n)]` -/
def P3099810575959740013.Spec : Prop :=
  ∀ n, P3099810575959740013.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P17718736470549323035

`∏{d}[n+1, A048671(#)²]`
-/

namespace A277169.P17718736470549323035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A048671 d ^ 2

end

end A277169.P17718736470549323035

namespace A277169

/-- `∏{d}[n+1, A048671(#)²]` -/
def P17718736470549323035.Spec : Prop :=
  ∀ n, P17718736470549323035.a n = A277169 (n + 1)

end A277169

/-! ## A277169.P11902660449948944594

`(n+1)^A070824(n+1)`
-/

namespace A277169.P11902660449948944594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A070824 (n + 1) : ℤ)

end

end A277169.P11902660449948944594

namespace A277169

/-- `(n+1)^A070824(n+1)` -/
def P11902660449948944594.Spec : Prop :=
  ∀ n, P11902660449948944594.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P16269660746008195483

`(n+1)^(A325765(n)-1)`
-/

namespace A277169.P16269660746008195483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A325765 n - 1 : ℤ)

end

end A277169.P16269660746008195483

namespace A277169

/-- `(n+1)^(A325765(n)-1)` -/
def P16269660746008195483.Spec : Prop :=
  ∀ n, P16269660746008195483.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P7154760463476807299

`(n+1)^(Δ[A006218(n)]-2)`
-/

namespace A277169.P7154760463476807299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n - 2 : ℤ)

end

end A277169.P7154760463476807299

namespace A277169

/-- `(n+1)^(Δ[A006218(n)]-2)` -/
def P7154760463476807299.Spec : Prop :=
  ∀ n, P7154760463476807299.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P3892465397623436273

`∏{d}[n+1, (#/A014963(#))²]`
-/

namespace A277169.P3892465397623436273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ((d : ℚ) / (A014963 d : ℚ)) ^ 2

end

end A277169.P3892465397623436273

namespace A277169

/-- `∏{d}[n+1, (#/A014963(#))²]` -/
def P3892465397623436273.Spec : Prop :=
  ∀ n, P3892465397623436273.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P4980358357017831085

`(n+1)^(A032741(n+1)-1)`
-/

namespace A277169.P4980358357017831085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A032741 (n + 1) - 1 : ℤ)

end

end A277169.P4980358357017831085

namespace A277169

/-- `(n+1)^(A032741(n+1)-1)` -/
def P4980358357017831085.Spec : Prop :=
  ∀ n, P4980358357017831085.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P3285841275947284693

`(n+1)^(A334954(n+1)-3)`
-/

namespace A277169.P3285841275947284693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A334954 (n + 1) - 3 : ℤ)

end

end A277169.P3285841275947284693

namespace A277169

/-- `(n+1)^(A334954(n+1)-3)` -/
def P3285841275947284693.Spec : Prop :=
  ∀ n, P3285841275947284693.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P7993844189841046747

`(n+1)^(n-A062968(n+1))`
-/

namespace A277169.P7993844189841046747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - A062968 (n + 1) : ℤ)

end

end A277169.P7993844189841046747

namespace A277169

/-- `(n+1)^(n-A062968(n+1))` -/
def P7993844189841046747.Spec : Prop :=
  ∀ n, P7993844189841046747.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P12359153758732774703

`(A338576(n+1)/(n+1)²)²`
-/

namespace A277169.P12359153758732774703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A338576 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)) ^ 2

end

end A277169.P12359153758732774703

namespace A277169

/-- `(A338576(n+1)/(n+1)²)²` -/
def P12359153758732774703.Spec : Prop :=
  ∀ n, P12359153758732774703.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P17585458131061032542

`(n+1)^(n+1-A059292(n+1))`
-/

namespace A277169.P17585458131061032542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n + 1 : ℤ) - A059292 (n + 1) : ℤ)

end

end A277169.P17585458131061032542

namespace A277169

/-- `(n+1)^(n+1-A059292(n+1))` -/
def P17585458131061032542.Spec : Prop :=
  ∀ n, P17585458131061032542.a n = (A277169 (n + 1) : ℚ)

end A277169

/-! ## A277169.P2802730156304052554

`(n+1)^(A134871(n+1)-(n+1))`
-/

namespace A277169.P2802730156304052554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A134871 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A277169.P2802730156304052554

namespace A277169

/-- `(n+1)^(A134871(n+1)-(n+1))` -/
def P2802730156304052554.Spec : Prop :=
  ∀ n, P2802730156304052554.a n = (A277169 (n + 1) : ℚ)

end A277169

/-!
# A277172: Numbers n such that 2^(sigma(n)-n) == 1 (mod n).

The programs for A277172, there is no canonical definition to state claims against.
-/

/-! ## A277172.P16013514863768918107

`filter[A381010(n+1), A354927(#)]`
-/

namespace A277172.P16013514863768918107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A277172.P16013514863768918107

/-! ## A277172.P13734716149655459599

`filter[A381010(n+1), A356163(#)]`
-/

namespace A277172.P13734716149655459599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A277172.P13734716149655459599

/-! ## A277172.P9493983957895549000

`filter[A381010(n+1), A358680(#)]`
-/

namespace A277172.P9493983957895549000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A277172.P9493983957895549000

/-!
# A277173: Numbers m such that b^sigma(m) == b^phi(m) == b^numdiv(m) == b^m (mod m) for every integer b.

The programs for A277173, there is no canonical definition to state claims against.
-/

/-! ## A277173.P17152175898274406950

`record[A155864(n)%A353531(2*n+1)]`
-/

namespace A277173.P17152175898274406950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155864 n) (A353531 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277173.P17152175898274406950

/-! ## A277173.P5954839077669262311

`A328484((n+1)!)`
-/

namespace A277173.P5954839077669262311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328484 (Nat.factorial (n + 1))

end

end A277173.P5954839077669262311

/-! ## A277173.P5501495381660214919

`A328484(∏[n+1])`
-/

namespace A277173.P5501495381660214919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328484 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A277173.P5501495381660214919

/-!
# A277174: a(n) = Product_{i=1..n} i*rad(i) where rad(n) = A007947(n).

The programs for A277174, the canonical program `A277174.P1977954027832943730` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277174 has offset 0).

The definition of A277174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277174.P1977954027832943730

`n!*A048803(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A277174

/-- `n!*A048803(n)` -/
def P1977954027832943730.Spec : Prop :=
  ∀ n, P1977954027832943730.a n = A277174 n

theorem P1977954027832943730.correct : P1977954027832943730.Spec := by
  intro n
  simp only [A277174]

end A277174

/-! ## A277174.P13536205082278575588

`n!*∏[∏{p}[n, #]]`
-/

namespace A277174.P13536205082278575588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A277174.P13536205082278575588

namespace A277174

/-- `n!*∏[∏{p}[n, #]]` -/
def P13536205082278575588.Spec : Prop :=
  ∀ n, (P13536205082278575588.a n : ℤ) = A277174 n

end A277174

/-! ## A277174.P4013081146426103702

`∏[round(∏{p}[n, #]/acot(n))]`
-/

namespace A277174.P4013081146426103702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℝ) / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A277174.P4013081146426103702

namespace A277174

/-- `∏[round(∏{p}[n, #]/acot(n))]` -/
def P4013081146426103702.Spec : Prop :=
  ∀ n, P4013081146426103702.a n = A277174 n

end A277174

/-! ## A277174.P17562417510673024819

`n*a(n-1)*∏{p}[n, #]` with `a(0)=1`
-/

namespace A277174.P17562417510673024819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (a (n - 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A277174.P17562417510673024819

namespace A277174

/-- `n*a(n-1)*∏{p}[n, #]` -/
def P17562417510673024819.Spec : Prop :=
  ∀ n, (P17562417510673024819.a n : ℤ) = A277174 n

end A277174

/-! ## A277174.P6926524399925131223

`∏[(n+1)*∏{p}[n, #]]/(n+1)`
-/

namespace A277174.P6926524399925131223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A277174.P6926524399925131223

namespace A277174

/-- `∏[(n+1)*∏{p}[n, #]]/(n+1)` -/
def P6926524399925131223.Spec : Prop :=
  ∀ n, P6926524399925131223.a n = (A277174 n : ℚ)

end A277174

/-!
# A277175: Convolution of Catalan numbers and factorial numbers.

The programs for A277175, there is no canonical definition to state claims against.
-/

/-! ## A277175.P9965888483943632592

`Δ[record[A333921(A135934(n))]]`
-/

namespace A277175.P9965888483943632592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333921 (A135934 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277175.P9965888483943632592

/-! ## A277175.P14123820557616306939

`∑[A001462(A144015(n))]`
-/

namespace A277175.P14123820557616306939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A144015 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277175.P14123820557616306939

/-!
# A277176: Exponential convolution of Catalan numbers and factorial numbers.

The programs for A277176, the canonical program `A277176.P2781277448489021913` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277176 has offset 0).

The definition of A277176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277176.P2781277448489021913

`((n²+5*n-2)*a(n-1)-(4*n-2)*(n-1)*a(n-2))/(n+1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277176

/-- `((n²+5*n-2)*a(n-1)-(4*n-2)*(n-1)*a(n-2))/(n+1)` -/
def P2781277448489021913.Spec : Prop :=
  ∀ n, P2781277448489021913.a n = (A277176 n : ℚ)

end A277176

/-! ## A277176.P5510962150970819980

`A000108(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A277176.P5510962150970819980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000108 n + (n : ℤ) * a (n - 1)

end

end A277176.P5510962150970819980

namespace A277176

/-- `A000108(n)+n*a(n-1)` -/
def P5510962150970819980.Spec : Prop :=
  ∀ n, P5510962150970819980.a n = A277176 n

end A277176

/-! ## A277176.P8347532869803134298

`A120588(n+1)+n*a(n-1)` with `a(0)=1`
-/

namespace A277176.P8347532869803134298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120588 (n + 1) + (n : ℤ) * a (n - 1)

end

end A277176.P8347532869803134298

namespace A277176

/-- `A120588(n+1)+n*a(n-1)` -/
def P8347532869803134298.Spec : Prop :=
  ∀ n, P8347532869803134298.a n = A277176 n

end A277176

/-! ## A277176.P7380037998970096520

`n*a(n-1)-A115140(n+1)` with `a(0)=1`
-/

namespace A277176.P7380037998970096520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A115140 (n + 1)

end

end A277176.P7380037998970096520

namespace A277176

/-- `n*a(n-1)-A115140(n+1)` -/
def P7380037998970096520.Spec : Prop :=
  ∀ n, P7380037998970096520.a n = A277176 n

end A277176

/-! ## A277176.P15448820130409408278

`n*a(n-1)-A115141(n+1)` with `a(0)=1`
-/

namespace A277176.P15448820130409408278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A115141 (n + 1)

end

end A277176.P15448820130409408278

namespace A277176

/-- `n*a(n-1)-A115141(n+1)` -/
def P15448820130409408278.Spec : Prop :=
  ∀ n, P15448820130409408278.a n = A277176 n

end A277176

/-! ## A277176.P832452412019628914

`n*a(n-1)+A120304(n)+2` with `a(0)=1`
-/

namespace A277176.P832452412019628914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + (A120304 n + 2)

end

end A277176.P832452412019628914

namespace A277176

/-- `n*a(n-1)+A120304(n)+2` -/
def P832452412019628914.Spec : Prop :=
  ∀ n, P832452412019628914.a n = A277176 n

end A277176

/-! ## A277176.P13387109195955027993

`A028303(2*n)+n*a(n-1)` with `a(0)=1`
-/

namespace A277176.P13387109195955027993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028303 (2 * n) + (n : ℤ) * a (n - 1)

end

end A277176.P13387109195955027993

namespace A277176

/-- `A028303(2*n)+n*a(n-1)` -/
def P13387109195955027993.Spec : Prop :=
  ∀ n, P13387109195955027993.a n = A277176 n

end A277176

/-! ## A277176.P7974095969234225801

`A126120(2*n)+n*a(n-1)` with `a(0)=1`
-/

namespace A277176.P7974095969234225801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126120 (2 * n) + (n : ℤ) * a (n - 1)

end

end A277176.P7974095969234225801

namespace A277176

/-- `A126120(2*n)+n*a(n-1)` -/
def P7974095969234225801.Spec : Prop :=
  ∀ n, P7974095969234225801.a n = A277176 n

end A277176

/-! ## A277176.P3006772778395160369

`A126324(2*n)+n*a(n-1)` with `a(0)=1`
-/

namespace A277176.P3006772778395160369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126324 (2 * n) + (n : ℤ) * a (n - 1)

end

end A277176.P3006772778395160369

namespace A277176

/-- `A126324(2*n)+n*a(n-1)` -/
def P3006772778395160369.Spec : Prop :=
  ∀ n, P3006772778395160369.a n = A277176 n

end A277176

/-! ## A277176.P6277892214992277680

`A208355(2*n)+n*a(n-1)` with `a(0)=1`
-/

namespace A277176.P6277892214992277680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A208355 (2 * n) + (n : ℤ) * a (n - 1)

end

end A277176.P6277892214992277680

namespace A277176

/-- `A208355(2*n)+n*a(n-1)` -/
def P6277892214992277680.Spec : Prop :=
  ∀ n, P6277892214992277680.a n = A277176 n

end A277176

/-!
# A277178: a(n) = Sum_{k=0..n} k*binomial(2*k,k)/2.

The programs for A277178, the canonical program `A277178.P15202113963426692843` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277178 has offset 0).

The definition of A277178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277178.P4507013004702101677

`A191319(2*n)`
-/

namespace A277178.P4507013004702101677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191319 (2 * n)

end

end A277178.P4507013004702101677

namespace A277178

/-- `A191319(2*n)` -/
def P4507013004702101677.Spec : Prop :=
  ∀ n, P4507013004702101677.a n = A277178 n

end A277178

/-! ## A277178.P12304672456004140037

`∑[A289719(n)-1]`
-/

namespace A277178.P12304672456004140037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289719 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P12304672456004140037

namespace A277178

/-- `∑[A289719(n)-1]` -/
def P12304672456004140037.Spec : Prop :=
  ∀ n, P12304672456004140037.a n = A277178 n

end A277178

/-! ## A277178.P8644294550890797719

`∑[A005430(n)/2]`
-/

namespace A277178.P8644294550890797719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005430 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P8644294550890797719

namespace A277178

/-- `∑[A005430(n)/2]` -/
def P8644294550890797719.Spec : Prop :=
  ∀ n, P8644294550890797719.a n = (A277178 n : ℚ)

end A277178

/-! ## A277178.P12724775387982506516

`∑[n*A088218(n)]`
-/

namespace A277178.P12724775387982506516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P12724775387982506516

namespace A277178

/-- `∑[n*A088218(n)]` -/
def P12724775387982506516.Spec : Prop :=
  ∀ n, P12724775387982506516.a n = A277178 n

end A277178

/-! ## A277178.P6653340627657300469

`A191319(Δ[n²])/2`
-/

namespace A277178.P6653340627657300469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191319 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A277178.P6653340627657300469

namespace A277178

/-- `A191319(Δ[n²])/2` -/
def P6653340627657300469.Spec : Prop :=
  ∀ n, P6653340627657300469.a n = (A277178 n : ℚ)

end A277178

/-! ## A277178.P15202113963426692843

`∑[record[A274707(n+1)]]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A277178

/-- `∑[record[A274707(n+1)]]` -/
def P15202113963426692843.Spec : Prop :=
  ∀ n, P15202113963426692843.a n = A277178 n

theorem P15202113963426692843.correct : P15202113963426692843.Spec := by
  intro n
  simp only [A277178]

end A277178

/-! ## A277178.P2314736191995162895

`∑[abs(n*A110556(n))]`
-/

namespace A277178.P2314736191995162895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A110556 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P2314736191995162895

namespace A277178

/-- `∑[abs(n*A110556(n))]` -/
def P2314736191995162895.Spec : Prop :=
  ∀ n, P2314736191995162895.a n = A277178 n

end A277178

/-! ## A277178.P13152682556205534319

`∑[∑[n]*A000108(n)]`
-/

namespace A277178.P13152682556205534319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P13152682556205534319

namespace A277178

/-- `∑[∑[n]*A000108(n)]` -/
def P13152682556205534319.Spec : Prop :=
  ∀ n, P13152682556205534319.a n = A277178 n

end A277178

/-! ## A277178.P11743860698000776074

`∑[n*record[A138364(n)]]`
-/

namespace A277178.P11743860698000776074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P11743860698000776074

namespace A277178

/-- `∑[n*record[A138364(n)]]` -/
def P11743860698000776074.Spec : Prop :=
  ∀ n, P11743860698000776074.a n = A277178 n

end A277178

/-! ## A277178.P16173391660133247330

`∑[A100071(2*n)/2]`
-/

namespace A277178.P16173391660133247330
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P16173391660133247330

namespace A277178

/-- `∑[A100071(2*n)/2]` -/
def P16173391660133247330.Spec : Prop :=
  ∀ n, P16173391660133247330.a n = (A277178 n : ℚ)

end A277178

/-! ## A277178.P15418527700435202173

`∑[A212303(2*n)/2]`
-/

namespace A277178.P15418527700435202173
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212303 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P15418527700435202173

namespace A277178

/-- `∑[A212303(2*n)/2]` -/
def P15418527700435202173.Spec : Prop :=
  ∀ n, P15418527700435202173.a n = (A277178 n : ℚ)

end A277178

/-! ## A277178.P3397102454621688466

`∑[A218073(2*n)/2]`
-/

namespace A277178.P3397102454621688466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218073 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P3397102454621688466

namespace A277178

/-- `∑[A218073(2*n)/2]` -/
def P3397102454621688466.Spec : Prop :=
  ∀ n, P3397102454621688466.a n = (A277178 n : ℚ)

end A277178

/-! ## A277178.P9038948781406797041

`∑[n*(A260878(n)-1)]`
-/

namespace A277178.P9038948781406797041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A260878 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P9038948781406797041

namespace A277178

/-- `∑[n*(A260878(n)-1)]` -/
def P9038948781406797041.Spec : Prop :=
  ∀ n, P9038948781406797041.a n = A277178 n

end A277178

/-! ## A277178.P17487739468276018027

`∑[n*A210736(2*n)]`
-/

namespace A277178.P17487739468276018027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A210736 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P17487739468276018027

namespace A277178

/-- `∑[n*A210736(2*n)]` -/
def P17487739468276018027.Spec : Prop :=
  ∀ n, P17487739468276018027.a n = A277178 n

end A277178

/-! ## A277178.P2615717064076175135

`∑[n/2*A000984(n)]`
-/

namespace A277178.P2615717064076175135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A000984 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P2615717064076175135

namespace A277178

/-- `∑[n/2*A000984(n)]` -/
def P2615717064076175135.Spec : Prop :=
  ∀ n, P2615717064076175135.a n = (A277178 n : ℚ)

end A277178

/-! ## A277178.P17247471016099901377

`∑[n/4*A028329(n)]`
-/

namespace A277178.P17247471016099901377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A028329 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P17247471016099901377

namespace A277178

/-- `∑[n/4*A028329(n)]` -/
def P17247471016099901377.Spec : Prop :=
  ∀ n, P17247471016099901377.a n = (A277178 n : ℚ)

end A277178

/-! ## A277178.P2197136686346669569

`∑[abs(∑[n]*A168491(n))]`
-/

namespace A277178.P2197136686346669569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A168491 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P2197136686346669569

namespace A277178

/-- `∑[abs(∑[n]*A168491(n))]` -/
def P2197136686346669569.Spec : Prop :=
  ∀ n, P2197136686346669569.a n = A277178 n

end A277178

/-! ## A277178.P15776334617664568105

`∑[∑[n]*A120588(n+1)]`
-/

namespace A277178.P15776334617664568105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P15776334617664568105

namespace A277178

/-- `∑[∑[n]*A120588(n+1)]` -/
def P15776334617664568105.Spec : Prop :=
  ∀ n, P15776334617664568105.a n = A277178 n

end A277178

/-! ## A277178.P2807885230033692452

`∑[∑[n]*A028303(2*n)]`
-/

namespace A277178.P2807885230033692452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A028303 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P2807885230033692452

namespace A277178

/-- `∑[∑[n]*A028303(2*n)]` -/
def P2807885230033692452.Spec : Prop :=
  ∀ n, P2807885230033692452.a n = A277178 n

end A277178

/-! ## A277178.P18281896914028404194

`∑[∑[n]*A028304(2*n)]`
-/

namespace A277178.P18281896914028404194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A028304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277178.P18281896914028404194

namespace A277178

/-- `∑[∑[n]*A028304(2*n)]` -/
def P18281896914028404194.Spec : Prop :=
  ∀ n, P18281896914028404194.a n = A277178 n

end A277178

/-!
# A277179: G.f. A(x) satisfies: Series_Reversion( A(x)/(1 - i*x + A(x)^2) ) = A(x)/(1 + i*x + A(x)^2), where odd function A(x) = Sum_{n>=1} a(n)*x^(2*n-1) and i^2 = -1.

The programs for A277179, there is no canonical definition to state claims against.
-/

/-! ## A277179.P6673755011649605797

`Δ[A256502(n!+3+n)]`
-/

namespace A277179.P6673755011649605797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (Nat.factorial n + 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277179.P6673755011649605797

/-! ## A277179.P2230529432641450351

`A308754(A034216(n))`
-/

namespace A277179.P2230529432641450351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308754 (A034216 n).toNat

end

end A277179.P2230529432641450351

/-!
# A277180: E.g.f.: A(x) = ... x*exp(x^4) o x*exp(x^3) o x*exp(x^2) o x*exp(x), the composition of functions x*exp(x^n) for n = 1,2,3,...

The programs for A277180, there is no canonical definition to state claims against.
-/

/-! ## A277180.P3865129958050220124

`A071786(A014293(n))+n`
-/

namespace A277180.P3865129958050220124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A014293 n).toNat + (n : ℤ)

end

end A277180.P3865129958050220124

/-!
# A277181: E.g.f.: A(x) = x*exp(x) o x*exp(x^2) o x*exp(x^3) o x*exp(x^4) o ..., the composition of functions x*exp(x^n) for n=...,3,2,1.

The programs for A277181, there is no canonical definition to state claims against.
-/

/-! ## A277181.P14829381395936588079

`A276797(∏[∏[char[∑[n]]+1]])`
-/

namespace A277181.P14829381395936588079
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A277181.P14829381395936588079

/-!
# A277182: E.g.f.: logarithm of G(x)/x where G(x) = ... x*exp(x^4) o x*exp(x^3) o x*exp(x^2) o x*exp(x), a composition of functions x*exp(x^n) for n = 1,2,3,...

The programs for A277182, there is no canonical definition to state claims against.
-/

/-! ## A277182.P8330945113078278325

`A370681(or(1, A318264(2*n)))`
-/

namespace A277182.P8330945113078278325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370681 (Int.lor 1 (A318264 (2 * n))).toNat

end

end A277182.P8330945113078278325

/-!
# A277183: E.g.f.: logarithm of G(x)/x where G(x) = x*exp(x) o x*exp(x^2) o x*exp(x^3) o x*exp(x^4) o ..., a composition of functions x*exp(x^n) for n = ...,3,2,1.

The programs for A277183, there is no canonical definition to state claims against.
-/

/-! ## A277183.P776717842836503226

`(n+1)*A177710(A063834(n))`
-/

namespace A277183.P776717842836503226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A177710 (A063834 n).toNat

end

end A277183.P776717842836503226

/-! ## A277183.P10953330891865214089

`A000005(A002212(n))*A106037(n+1)`
-/

namespace A277183.P10953330891865214089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002212 n).toNat * A106037 (n + 1)

end

end A277183.P10953330891865214089

/-!
# A277184: E.g.f. A(x) satisfies A(x) = x*exp(A(x) - A(x)^2) + A(x)^2.

The programs for A277184, there is no canonical definition to state claims against.
-/

/-! ## A277184.P14674224425669604582

`(n+1)*A380673(n)`
-/

namespace A277184.P14674224425669604582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A380673 n

end

end A277184.P14674224425669604582

/-!
# A277187: Numbers k such that A001158(k) == 1 (mod k).

The programs for A277187, there is no canonical definition to state claims against.
-/

/-! ## A277187.P9947107269909664

`filter[A383099(n+1), A307430(#)]`
-/

namespace A277187.P9947107269909664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A277187.P9947107269909664

/-! ## A277187.P14702756492926350681

`∩[A253781(n+1), A383099(n+1)]`
-/

namespace A277187.P14702756492926350681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277187.P14702756492926350681

/-!
# A277188: The binomial sum a(n) = Sum_{k=0..n}(binomial(n,k)*binomial(n+1,k+1)*binomial(n+2,k+2)).

The programs for A277188, there is no canonical definition to state claims against.
-/

/-! ## A277188.P12902095273225297303

`∑[A195124(A143420(n+2))]`
-/

namespace A277188.P12902095273225297303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195124 (A143420 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277188.P12902095273225297303

/-!
# A277189: Odd bisection of A277020: a(n) = A277020(2n+1).

The programs for A277189, there is no canonical definition to state claims against.
-/

/-! ## A277189.P11458845662423757568

`A277020(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277189.P11458845662423757568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277020 (2 * n + 1)

end

end A277189.P11458845662423757568

/-! ## A277189.P1469072649617105992

`or(1, A277020(A005408(n)))`
-/

namespace A277189.P1469072649617105992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A277020 (A005408 n).toNat)

end

end A277189.P1469072649617105992

/-! ## A277189.P3020237521880597003

`A277020(n+1+n)+A000007(n+1)`
-/

namespace A277189.P3020237521880597003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277020 (n + 1 + n) + A000007 (n + 1)

end

end A277189.P3020237521880597003

/-! ## A277189.P6210132291736024032

`A277020(A016825(n))/2`
-/

namespace A277189.P6210132291736024032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277020 (A016825 n).toNat : ℚ) / 2

end

end A277189.P6210132291736024032

/-! ## A277189.P6169826600737333531

`A277020(n+1+n)+A089812(A083370(n+1))`
-/

namespace A277189.P6169826600737333531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277020 (n + 1 + n) + A089812 (A083370 (n + 1)).toNat

end

end A277189.P6169826600737333531

/-!
# A277190: Numbers n such that A277013(n) differs from A001222(n).

The programs for A277190, there is no canonical definition to state claims against.
-/

/-! ## A277190.P13180094469360354558

`lt[A277013(n+1), A001222(n+1)]+1`
-/

namespace A277190.P13180094469360354558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277190.P13180094469360354558

/-! ## A277190.P10976581091407979302

`lt[A277027(n+1), A001222(n+1)²]+1`
-/

namespace A277190.P10976581091407979302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277190.P10976581091407979302

/-! ## A277190.P9749711026663089162

`lt[A000196(A277027(n+1)%(n+3)), A001222(n+1)]+1`
-/

namespace A277190.P9749711026663089162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A277027 (n + 1)) (n + 3 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277190.P9749711026663089162

/-!
# A277191: Number of integers k in range [n^2, ((n+1)^2)-1] for which the least number of squares that add up to k (A002828) is odd.

The programs for A277191, there is no canonical definition to state claims against.
-/

/-! ## A277191.P9723900966023585911

`Δ[n²]-A277192(n)`
-/

namespace A277191.P9723900966023585911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A277192 n

end

end A277191.P9723900966023585911

/-! ## A277191.P3148718616556040405

`A277193(n)+A057427(n)`
-/

namespace A277191.P3148718616556040405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 n + A057427 n

end

end A277191.P3148718616556040405

/-! ## A277191.P1323699957238724150

`A277193(n)-A057428(n)`
-/

namespace A277191.P1323699957238724150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 n - A057428 n

end

end A277191.P1323699957238724150

/-! ## A277191.P15048217037961822425

`A277193(n)+A157928(n+1)`
-/

namespace A277191.P15048217037961822425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 n + A157928 (n + 1)

end

end A277191.P15048217037961822425

/-! ## A277191.P16564947463380285086

`A277193(n)+n/A028310(n)`
-/

namespace A277191.P16564947463380285086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277193 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A277191.P16564947463380285086

/-! ## A277191.P18295035409326153516

`A277193(n)+A243978(C(2, n²))`
-/

namespace A277191.P18295035409326153516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 n + A243978 (Nat.choose 2 (n ^ 2))

end

end A277191.P18295035409326153516

/-! ## A277191.P10623274729236963169

`A277193(n)+char[A038722(n+1)]`
-/

namespace A277191.P10623274729236963169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A277191.P10623274729236963169

/-! ## A277191.P14466640156521049543

`A000290(n+1)-(A277192(n)+A000290(n))`
-/

namespace A277191.P14466640156521049543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A277192 n + A000290 n)

end

end A277191.P14466640156521049543

/-! ## A277191.P2388850135541384653

`A277193(n)+A002828(n²)`
-/

namespace A277191.P2388850135541384653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 n + A002828 (n ^ 2)

end

end A277191.P2388850135541384653

/-! ## A277191.P10652303027384393575

`(A277193(n)+1)*A002828(A000290(n))`
-/

namespace A277191.P10652303027384393575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A277193 n + 1) * A002828 (A000290 n).toNat

end

end A277191.P10652303027384393575

/-!
# A277192: Number of integers k in range [n^2, ((n+1)^2)-1] for which the least number of squares that add up to k (A002828) is even.

The programs for A277192, there is no canonical definition to state claims against.
-/

/-! ## A277192.P12060316095321769711

`Δ[n²]-A277191(n)`
-/

namespace A277192.P12060316095321769711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A277191 n

end

end A277192.P12060316095321769711

/-! ## A277192.P14405379546392842431

`n+1-A277191(n%(n+1))+n`
-/

namespace A277192.P14405379546392842431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A277191 (n % (n + 1)) + (n : ℤ)

end

end A277192.P14405379546392842431

/-! ## A277192.P16852358718208396612

`A004277(n)-A277193(n)`
-/

namespace A277192.P16852358718208396612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A277193 n

end

end A277192.P16852358718208396612

/-! ## A277192.P10633756160495508965

`A005843(n)+1-A277191(n)`
-/

namespace A277192.P10633756160495508965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A277191 n)

end

end A277192.P10633756160495508965

/-! ## A277192.P8905955829777663604

`A028310(2*n-A277193(n))`
-/

namespace A277192.P8905955829777663604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((2 * n : ℤ) - A277193 n).toNat

end

end A277192.P8905955829777663604

/-! ## A277192.P16015526168426021391

`A028310(n-A277193(n)+n)`
-/

namespace A277192.P16015526168426021391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A277193 n + (n : ℤ)).toNat

end

end A277192.P16015526168426021391

/-! ## A277192.P16471123567497492192

`A028310(n-(A277193(n)-n))`
-/

namespace A277192.P16471123567497492192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - (A277193 n - (n : ℤ))).toNat

end

end A277192.P16471123567497492192

/-! ## A277192.P8134878298442121357

`∑[A005408(n)]-(A277191(n)+n²)`
-/

namespace A277192.P8134878298442121357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A277191 n + (n ^ 2 : ℤ))

end

end A277192.P8134878298442121357

/-! ## A277192.P7520064422258211563

`A000007(n)+A277194(n)+A077773(n)`
-/

namespace A277192.P7520064422258211563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A277194 n + A077773 n)

end

end A277192.P7520064422258211563

/-! ## A277192.P3533373776097931857

`A000290(n+1)-(A277191(n)+A000290(n))`
-/

namespace A277192.P3533373776097931857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A277191 n + A000290 n)

end

end A277192.P3533373776097931857

/-!
# A277193: Number of integers k in range [n^2, ((n+1)^2)-1] for which 3 = the least number of squares that add up to k (A002828).

The programs for A277193, there is no canonical definition to state claims against.
-/

/-! ## A277193.P10802231260788790077

`n-(A277192(n)-n)%(n+1)`
-/

namespace A277193.P10802231260788790077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A277192 n - (n : ℤ)) (n + 1 : ℤ)

end

end A277193.P10802231260788790077

/-! ## A277193.P9054684358567232103

`A277191(n)+A057428(n)`
-/

namespace A277193.P9054684358567232103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277191 n + A057428 n

end

end A277193.P9054684358567232103

/-! ## A277193.P17696245751714158059

`A004277(n)-A277192(n)`
-/

namespace A277193.P17696245751714158059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A277192 n

end

end A277193.P17696245751714158059

/-! ## A277193.P17639998196816355443

`A277191(n)-A057427(n)`
-/

namespace A277193.P17639998196816355443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277191 n - A057427 n

end

end A277193.P17639998196816355443

/-! ## A277193.P18193315452256898790

`Δ[A047809(n)-A047808(n)]`
-/

namespace A277193.P18193315452256898790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047809 n - A047808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277193.P18193315452256898790

/-! ## A277193.P4862709292151871112

`A028310(2*n)-A277192(n)`
-/

namespace A277193.P4862709292151871112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n) - A277192 n

end

end A277193.P4862709292151871112

/-! ## A277193.P14886454696466861349

`A028310(n)+n-A277192(n)`
-/

namespace A277193.P14886454696466861349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + ((n : ℤ) - A277192 n)

end

end A277193.P14886454696466861349

/-! ## A277193.P2394336528090393105

`A277191(n)-char[A163357(n+1)]`
-/

namespace A277193.P2394336528090393105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277191 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A277193.P2394336528090393105

/-! ## A277193.P432991851951549680

`(A277191(n)-1)%A000960(n+1)`
-/

namespace A277193.P432991851951549680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277191 n - 1) (A000960 (n + 1))

end

end A277193.P432991851951549680

/-! ## A277193.P6347984608568992789

`A277191(n)-A005812(n²%(n+1))`
-/

namespace A277193.P6347984608568992789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277191 n - A005812 (n ^ 2 % (n + 1))

end

end A277193.P6347984608568992789

/-! ## A277193.P4563888486574954289

`A289207(n)+n-A289207(A277192(n))`
-/

namespace A277193.P4563888486574954289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + ((n : ℤ) - A289207 (A277192 n).toNat)

end

end A277193.P4563888486574954289

/-! ## A277193.P16016476401360307818

`A035363(A000040(n+1))+A277191(n)-1`
-/

namespace A277193.P16016476401360307818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A000040 (n + 1)).toNat + (A277191 n - 1)

end

end A277193.P16016476401360307818

/-! ## A277193.P6059958667208025887

`A277191(n)-A002828(n²)`
-/

namespace A277193.P6059958667208025887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277191 n - A002828 (n ^ 2)

end

end A277193.P6059958667208025887

/-! ## A277193.P8010021769296662497

`(A277191(n)-1)*A002828(A000290(n))`
-/

namespace A277193.P8010021769296662497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A277191 n - 1) * A002828 (A000290 n).toNat

end

end A277193.P8010021769296662497

/-!
# A277194: Number of integers k in range [n^2, ((n+1)^2)-1] for which 4 = the least number of squares that add up to k (A002828).

The programs for A277194, the canonical program `A277194.P2099939740491535609` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277194 has offset 0).

The definition of A277194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277194.P2099939740491535609

`Δ[n²-A047809(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A277194

/-- `Δ[n²-A047809(n)]` -/
def P2099939740491535609.Spec : Prop :=
  ∀ n, P2099939740491535609.a n = A277194 n

theorem P2099939740491535609.correct : P2099939740491535609.Spec := by
  intro n
  simp only [A277194]

end A277194

/-! ## A277194.P16911696084694181842

`A005408(n)-Δ[A047809(n)]`
-/

namespace A277194.P16911696084694181842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (f1 (n + 1) - f1 n)

end

end A277194.P16911696084694181842

namespace A277194

/-- `A005408(n)-Δ[A047809(n)]` -/
def P16911696084694181842.Spec : Prop :=
  ∀ n, P16911696084694181842.a n = A277194 n

theorem P16911696084694181842.correct : P16911696084694181842.Spec := by
  intro n
  simp only [A277194, Nat.add_sub_cancel, A277194.P16911696084694181842.f1, A277194.P16911696084694181842.a, A277194.P2099939740491535609.f1, A277194.P2099939740491535609.a, A005408, A005408.P17437947328870227736.a, A047809, A047809.P213500810862372979.a, A071377, A071377.P2407551919736960090.f3, A071377.P2407551919736960090.f4, A071377.P2407551919736960090.f2, A071377.P2407551919736960090.f1, A071377.P2407551919736960090.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277194

/-! ## A277194.P4014600881426258960

`Δ[A002522(n)%A047809(n)]`
-/

namespace A277194.P4014600881426258960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 n) (A047809 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277194.P4014600881426258960

namespace A277194

/-- `Δ[A002522(n)%A047809(n)]` -/
def P4014600881426258960.Spec : Prop :=
  ∀ n, P4014600881426258960.a n = A277194 n

end A277194

/-! ## A277194.P13800214728586978618

`record[A004442(n)]-Δ[A047809(n)]`
-/

namespace A277194.P13800214728586978618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (f2 (n + 1) - f2 n)

end

end A277194.P13800214728586978618

namespace A277194

/-- `record[A004442(n)]-Δ[A047809(n)]` -/
def P13800214728586978618.Spec : Prop :=
  ∀ n, P13800214728586978618.a n = A277194 n

end A277194

/-! ## A277194.P13211531402041563645

`A008619(4*n)-Δ[A047809(n)]`
-/

namespace A277194.P13211531402041563645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * n) - (f1 (n + 1) - f1 n)

end

end A277194.P13211531402041563645

namespace A277194

/-- `A008619(4*n)-Δ[A047809(n)]` -/
def P13211531402041563645.Spec : Prop :=
  ∀ n, P13211531402041563645.a n = A277194 n

end A277194

/-! ## A277194.P6612907627287818118

`A277192(n)-A077773(A028310(n))`
-/

namespace A277194.P6612907627287818118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 n - A077773 (A028310 n).toNat

end

end A277194.P6612907627287818118

namespace A277194

/-- `A277192(n)-A077773(A028310(n))` -/
def P6612907627287818118.Spec : Prop :=
  ∀ n, P6612907627287818118.a n = A277194 n

end A277194

/-! ## A277194.P14194744630673341809

`A277192(n)-A077773(A000007(n)+n)`
-/

namespace A277194.P14194744630673341809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 n - A077773 (A000007 n + (n : ℤ)).toNat

end

end A277194.P14194744630673341809

namespace A277194

/-- `A277192(n)-A077773(A000007(n)+n)` -/
def P14194744630673341809.Spec : Prop :=
  ∀ n, P14194744630673341809.a n = A277194 n

end A277194

/-! ## A277194.P11320728898295049198

`2*n-A364444(n)`
-/

namespace A277194.P11320728898295049198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A364444 n

end

end A277194.P11320728898295049198

namespace A277194

/-- `2*n-A364444(n)` -/
def P11320728898295049198.Spec : Prop :=
  ∀ n, P11320728898295049198.a n = A277194 n

end A277194

/-!
# A277195: Permutation of nonnegative integers: a(n) = A022290(A277010(n)).

The programs for A277195, the canonical program `A277195.P15992803584694098218` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277195 has offset 1).

The definition of A277195 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022290, A277010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277195.P15992803584694098218

`A022290(A277010(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A277195

/-- `A022290(A277010(n+1))` -/
def P15992803584694098218.Spec : Prop :=
  ∀ n, P15992803584694098218.a n = A277195 (n + 1)

theorem P15992803584694098218.correct : P15992803584694098218.Spec := by
  intro n
  simp only [A277195, Nat.add_sub_cancel]

end A277195

/-! ## A277195.P11817223205280997860

`A022290(A156552(A005117(n+1)))`
-/

namespace A277195.P11817223205280997860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A156552 (A005117 (n + 1)).toNat).toNat

end

end A277195.P11817223205280997860

namespace A277195

/-- `A022290(A156552(A005117(n+1)))` -/
def P11817223205280997860.Spec : Prop :=
  ∀ n, P11817223205280997860.a n = A277195 (n + 1)

end A277195

/-! ## A277195.P851366719884369087

`A048680(A048672(n+1))`
-/

namespace A277195.P851366719884369087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A048672 (n + 1)).toNat

end

end A277195.P851366719884369087

namespace A277195

/-- `A048680(A048672(n+1))` -/
def P851366719884369087.Spec : Prop :=
  ∀ n, P851366719884369087.a n = A277195 (n + 1)

end A277195

/-! ## A277195.P10386011835284112610

`A048680(A048675(record[∏{p}[n, #]]))`
-/

namespace A277195.P10386011835284112610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A048675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A277195.P10386011835284112610

namespace A277195

/-- `A048680(A048675(record[∏{p}[n, #]]))` -/
def P10386011835284112610.Spec : Prop :=
  ∀ n, P10386011835284112610.a n = A277195 (n + 1)

end A277195

/-! ## A277195.P8200202834890387743

`A048680(A087207(record[∏{p}[n, #]]))`
-/

namespace A277195.P8200202834890387743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A087207 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A277195.P8200202834890387743

namespace A277195

/-- `A048680(A087207(record[∏{p}[n, #]]))` -/
def P8200202834890387743.Spec : Prop :=
  ∀ n, P8200202834890387743.a n = A277195 (n + 1)

end A277195

/-!
# A277196: Permutation of natural numbers: a(n) = A107079(A277006(n)).

The programs for A277196, the canonical program `A277196.P18269893961211515832` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277196 has offset 0).

The definition of A277196 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107079, A277006, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277196.P18269893961211515832

`A107079(A277006(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A277196

/-- `A107079(A277006(n))` -/
def P18269893961211515832.Spec : Prop :=
  ∀ n, P18269893961211515832.a n = A277196 n

theorem P18269893961211515832.correct : P18269893961211515832.Spec := by
  intro n
  simp only [A277196]

end A277196

/-! ## A277196.P3953792516974141501

`A107079(A005940(1+A003714(n)))`
-/

namespace A277196.P3953792516974141501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A005940 (1 + A003714 n).toNat).toNat

end

end A277196.P3953792516974141501

namespace A277196

/-- `A107079(A005940(1+A003714(n)))` -/
def P3953792516974141501.Spec : Prop :=
  ∀ n, P3953792516974141501.a n = A277196 n

end A277196

/-! ## A277196.P7707389135323911946

`A013928(A277006(n)+1)`
-/

namespace A277196.P7707389135323911946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A277006 n + 1).toNat

end

end A277196.P7707389135323911946

namespace A277196

/-- `A013928(A277006(n)+1)` -/
def P7707389135323911946.Spec : Prop :=
  ∀ n, P7707389135323911946.a n = A277196 n

end A277196

/-! ## A277196.P14411095988173704517

`A107079(A019565(A048679(n)))`
-/

namespace A277196.P14411095988173704517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A019565 (A048679 n).toNat).toNat

end

end A277196.P14411095988173704517

namespace A277196

/-- `A107079(A019565(A048679(n)))` -/
def P14411095988173704517.Spec : Prop :=
  ∀ n, P14411095988173704517.a n = A277196 n

end A277196

/-! ## A277196.P4916394031744482167

`A107079(A019565(A087808(A003714(n))))`
-/

namespace A277196.P4916394031744482167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A019565 (A087808 (A003714 n).toNat).toNat).toNat

end

end A277196.P4916394031744482167

namespace A277196

/-- `A107079(A019565(A087808(A003714(n))))` -/
def P4916394031744482167.Spec : Prop :=
  ∀ n, P4916394031744482167.a n = A277196 n

end A277196

/-! ## A277196.P16563535425700492399

`A100112(2*A277006(n)-A277006(n))`
-/

namespace A277196.P16563535425700492399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (2 * A277006 n - A277006 n).toNat

end

end A277196.P16563535425700492399

namespace A277196

/-- `A100112(2*A277006(n)-A277006(n))` -/
def P16563535425700492399.Spec : Prop :=
  ∀ n, P16563535425700492399.a n = A277196 n

end A277196

/-! ## A277196.P4493820529464171442

`A246353(A048679(n))`
-/

namespace A277196.P4493820529464171442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246353 (A048679 n).toNat

end

end A277196.P4493820529464171442

namespace A277196

/-- `A246353(A048679(n))` -/
def P4493820529464171442.Spec : Prop :=
  ∀ n, P4493820529464171442.a n = A277196 n

end A277196

/-!
# A277197: First differences of A260443.

The programs for A277197, there is no canonical definition to state claims against.
-/

/-! ## A277197.P16257901499856224633

`A260443(n+1)-A260443(n)`
-/

namespace A277197.P16257901499856224633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (n + 1) - A260443 n

end

end A277197.P16257901499856224633

/-! ## A277197.P2514995668695564266

`Δ[A260443(n)]`
-/

namespace A277197.P2514995668695564266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277197.P2514995668695564266

/-! ## A277197.P419790034502407532

`Δ[A277330(n)*A283989(n)]`
-/

namespace A277197.P419790034502407532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 n * A283989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277197.P419790034502407532

/-! ## A277197.P7481671897550045231

`Δ[A284553(n)*A284554(n)]`
-/

namespace A277197.P7481671897550045231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284553 n * A284554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277197.P7481671897550045231

/-! ## A277197.P2664749096765488500

`A277324(n)/A260443(n)-A260443(n)`
-/

namespace A277197.P2664749096765488500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277324 n : ℚ) / (A260443 n : ℚ) - (A260443 n : ℚ)

end

end A277197.P2664749096765488500

/-!
# A277198: a(n) = gcd(A260443(n), A260443(n+1)).

The programs for A277198, there is no canonical definition to state claims against.
-/

/-! ## A277198.P4337964852228860961

`gcd(A260443(n), A260443(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277198.P4337964852228860961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260443 n) (A260443 (n + 1))

end

end A277198.P4337964852228860961

/-! ## A277198.P3068819315724527245

`gcd(A260443(n), A277197(n))`
-/

namespace A277198.P3068819315724527245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260443 n) (A277197 n)

end

end A277198.P3068819315724527245

/-! ## A277198.P14940102799367214977

`A277324(n)/A284008(n)`
-/

namespace A277198.P14940102799367214977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277324 n : ℚ) / (A284008 n : ℚ)

end

end A277198.P14940102799367214977

/-! ## A277198.P3690628119546180665

`A260443(2*n+1)/A284008(n)`
-/

namespace A277198.P3690628119546180665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 (2 * n + 1) : ℚ) / (A284008 n : ℚ)

end

end A277198.P3690628119546180665

/-! ## A277198.P13427081368351806774

`A284576(n)*A284578(n)/A284008(n)`
-/

namespace A277198.P13427081368351806774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284576 n * A284578 n : ℚ) / (A284008 n : ℚ)

end

end A277198.P13427081368351806774

/-! ## A277198.P10121763638614606284

`A284553(2*n+1)*A284564(n)/A284008(n)`
-/

namespace A277198.P10121763638614606284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284553 (2 * n + 1) * A284564 n : ℚ) / (A284008 n : ℚ)

end

end A277198.P10121763638614606284

/-! ## A277198.P8411790140089922793

`A284554(2*n+1)*A284563(n)/A284008(n)`
-/

namespace A277198.P8411790140089922793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284554 (2 * n + 1) * A284563 n : ℚ) / (A284008 n : ℚ)

end

end A277198.P8411790140089922793

/-! ## A277198.P16004663398711135712

`A260443(A008619(2*n))*A260443(n)/A284008(n)`
-/

namespace A277198.P16004663398711135712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 (A008619 (2 * n)).toNat * A260443 n : ℚ) / (A284008 n : ℚ)

end

end A277198.P16004663398711135712

/-! ## A277198.P3177122532975427546

`floor(A284576(n)²/A284577(n))/A284008(n)`
-/

namespace A277198.P3177122532975427546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A284576 n ^ 2 : ℚ) / (A284577 n : ℚ)⌋ : ℚ) / (A284008 n : ℚ)

end

end A277198.P3177122532975427546

/-!
# A277199: Square array A(n,k) = A048720(n, A065621(k)), read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A277199, there is no canonical definition to state claims against.
-/

/-! ## A277199.P18211782201448862786

`A277320(A038722(n+1))`
-/

namespace A277199.P18211782201448862786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277320 (A038722 (n + 1)).toNat

end

end A277199.P18211782201448862786

/-! ## A277199.P16634005906083014148

`A277320(A061579(n)+1)`
-/

namespace A277199.P16634005906083014148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277320 (A061579 n + 1).toNat

end

end A277199.P16634005906083014148

/-! ## A277199.P6481784883081755044

`A277320(A002024(n+1)²-n)`
-/

namespace A277199.P6481784883081755044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277320 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A277199.P6481784883081755044

/-! ## A277199.P10884530268903514507

`A277320(A057944(n)+A004736(n+1))`
-/

namespace A277199.P10884530268903514507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277320 (A057944 n + A004736 (n + 1)).toNat

end

end A277199.P10884530268903514507

/-! ## A277199.P3450558137155927386

`A277320(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A277199.P3450558137155927386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277320 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A277199.P3450558137155927386

/-! ## A277199.P12257449175695692487

`A277320(A349520(2*(n+1))²-n)`
-/

namespace A277199.P12257449175695692487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277320 (A349520 (2 * (n + 1)) ^ 2 - (n : ℤ)).toNat

end

end A277199.P12257449175695692487

/-! ## A277199.P1339390565175676627

`A277320(A277821(A277819(n+1)))`
-/

namespace A277199.P1339390565175676627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277320 (A277821 (A277819 (n + 1)).toNat).toNat

end

end A277199.P1339390565175676627

