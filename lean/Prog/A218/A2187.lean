import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A218700: Number of partitions of n in which any two distinct parts differ by at least 5.

The programs for A218700, there is no canonical definition to state claims against.
-/

/-! ## A218700.P13217153333775893475

`A218698(A055998(n)-A004276(n))`
-/

namespace A218700.P13217153333775893475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A055998 n - A004276 n).toNat

end

end A218700.P13217153333775893475

/-! ## A218700.P13393282797071686420

`A303399(A317735(n+1)+A139251(2*(n+1)))`
-/

namespace A218700.P13393282797071686420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303399 (A317735 (n + 1) + A139251 (2 * (n + 1))).toNat

end

end A218700.P13393282797071686420

/-! ## A218700.P11869045349694437967

`A290076(lt[A003961(n+1), 25])`
-/

namespace A218700.P11869045349694437967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290076 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A218700.P11869045349694437967

/-! ## A218700.P8241892844940294119

`A317243(A147151(n+1)+n)+1`
-/

namespace A218700.P8241892844940294119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317243 (A147151 (n + 1) + (n : ℤ)).toNat + 1

end

end A218700.P8241892844940294119

/-! ## A218700.P10109526156897265481

`A317243(A147182(n+1)+n)+1`
-/

namespace A218700.P10109526156897265481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317243 (A147182 (n + 1) + (n : ℤ)).toNat + 1

end

end A218700.P10109526156897265481

/-!
# A218703: Number of partitions of n in which any two distinct parts differ by at least 8.

The programs for A218703, there is no canonical definition to state claims against.
-/

/-! ## A218703.P10072849888942937203

`A274771(n+1)+A000119(A288549(n))`
-/

namespace A218703.P10072849888942937203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274771 (n + 1) + A000119 (A288549 (n + 10)).toNat

end

end A218703.P10072849888942937203

/-! ## A218703.P3022594666842181444

`A038548(A114800(n)*A262369(n+1))`
-/

namespace A218703.P3022594666842181444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A114800 n * A262369 (n + 1)).toNat

end

end A218703.P3022594666842181444

/-! ## A218703.P986333311230296658

`A131818(A332728(n)%A052023(n+1))+A093882(n)`
-/

namespace A218703.P986333311230296658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (Int.tmod (A332728 n) (A052023 (n + 1))).toNat + A093882 n

end

end A218703.P986333311230296658

/-! ## A218703.P4813609689962930330

`A214973(A280173(n))`
-/

namespace A218703.P4813609689962930330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214973 (A280173 n).toNat

end

end A218703.P4813609689962930330

/-! ## A218703.P1087261044998335506

`A073808(A073039(n+1))`
-/

namespace A218703.P1087261044998335506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073808 (A073039 (n + 1)).toNat

end

end A218703.P1087261044998335506

/-!
# A218704: Number of partitions of n in which any two distinct parts differ by at least 9.

The programs for A218704, there is no canonical definition to state claims against.
-/

/-! ## A218704.P8483570986191291489

`A193513(n)+A025469(A000225(n))`
-/

namespace A218704.P8483570986191291489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193513 n + A025469 (A000225 n).toNat

end

end A218704.P8483570986191291489

/-! ## A218704.P5765777037465157499

`A254379(A005043(n))+A193513(n)`
-/

namespace A218704.P5765777037465157499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A005043 n).toNat + A193513 n

end

end A218704.P5765777037465157499

/-! ## A218704.P10039358744782869684

`A193513(n)+A025469(A255047(n))`
-/

namespace A218704.P10039358744782869684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193513 n + A025469 (A255047 n).toNat

end

end A218704.P10039358744782869684

/-! ## A218704.P9222309688779843377

`A193513(n)+A014707(A293025(n))`
-/

namespace A218704.P9222309688779843377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193513 n + A014707 (A293025 n).toNat

end

end A218704.P9222309688779843377

/-! ## A218704.P2568133585767759334

`A193513(n)+A178333(A003358(n+1))`
-/

namespace A218704.P2568133585767759334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193513 n + A178333 (A003358 (n + 1)).toNat

end

end A218704.P2568133585767759334

/-!
# A218705: Number of partitions of n in which any two distinct parts differ by at least 10.

The programs for A218705, there is no canonical definition to state claims against.
-/

/-! ## A218705.P7249906598435657242

`A335434(A000079(A093882(n)))+A032741(n)`
-/

namespace A218705.P7249906598435657242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335434 (A000079 (A093882 n).toNat).toNat + A032741 n

end

end A218705.P7249906598435657242

/-! ## A218705.P14026222020825933653

`A308967(or(2, A014284(n+1)))`
-/

namespace A218705.P14026222020825933653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (Int.lor 2 (A014284 (n + 1))).toNat

end

end A218705.P14026222020825933653

/-! ## A218705.P13556973582206379018

`A308967(or(2, ∑[A008578(n+1)]))`
-/

namespace A218705.P13556973582206379018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A218705.P13556973582206379018

/-! ## A218705.P2024234617381442861

`A036607(A187829(n+1))+A032741(n)`
-/

namespace A218705.P2024234617381442861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036607 (A187829 (n + 1)).toNat + A032741 n

end

end A218705.P2024234617381442861

/-! ## A218705.P7998214021024825734

`(A032741(A004862(n+1))+1)%A112013(n+1)`
-/

namespace A218705.P7998214021024825734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032741 (A004862 (n + 1)).toNat + 1) (A112013 (n + 1))

end

end A218705.P7998214021024825734

/-!
# A218706: Number of nonnegative integer solutions to x^2 + 2y^2 <= n^2.

The programs for A218706, there is no canonical definition to state claims against.
-/

/-! ## A218706.P7871307186466910682

`A141735(A141715(n))+∑[A141730(n+1)]`
-/

namespace A218706.P7871307186466910682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141735 (A141715 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218706.P7871307186466910682

/-! ## A218706.P16824999694631159185

`∑[n+1]-A001221(∑[A000898(n)])`
-/

namespace A218706.P16824999694631159185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001221 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A218706.P16824999694631159185

/-! ## A218706.P17458483283983324089

`A153249(∪[n*A361777(n+1), comp[n²]²])`
-/

namespace A218706.P17458483283983324089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A361777 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153249 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n)

end

end A218706.P17458483283983324089

/-! ## A218706.P9135183352930930035

`abs(A237271(A358407(n+1))-∑[n+1])+1`
-/

namespace A218706.P9135183352930930035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A237271 (A358407 (n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| + 1

end

end A218706.P9135183352930930035

/-! ## A218706.P435028783647309232

`A144016(A000244(n))+A000217(n)`
-/

namespace A218706.P435028783647309232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144016 (A000244 n).toNat + A000217 n

end

end A218706.P435028783647309232

/-!
# A218707: First number beginning the smallest chain of n consecutive even divisors distanced no more than 2 one from each other, with no odd divisors between, of some factorial s!.

The programs for A218707, there is no canonical definition to state claims against.
-/

/-! ## A218707.P6676378120676704167

`A084546(A003071(n+1))+A027750(A144139(n))`
-/

namespace A218707.P6676378120676704167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084546 (A003071 (n + 1)).toNat + A027750 (A144139 n).toNat

end

end A218707.P6676378120676704167

/-!
# A218711: Number of nonnegative solutions to x^2 + y^2 + z^2 < n^2.

The programs for A218711, there is no canonical definition to state claims against.
-/

/-! ## A218711.P18074463457619316248

`A000604(n)-A181788(n)`
-/

namespace A218711.P18074463457619316248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000604 n - A181788 n

end

end A218711.P18074463457619316248

/-! ## A218711.P13448934647541278019

`A000604(n)-A002102(n²)`
-/

namespace A218711.P13448934647541278019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000604 n - A002102 (n ^ 2)

end

end A218711.P13448934647541278019

/-! ## A218711.P10607789006940579446

`A000606(n²)-A181788(n)`
-/

namespace A218711.P10607789006940579446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000606 (n ^ 2) - A181788 n

end

end A218711.P10607789006940579446

/-! ## A218711.P10754593088791613886

`A000606(n²)-A002102(n²)`
-/

namespace A218711.P10754593088791613886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000606 (n ^ 2) - A002102 (n ^ 2)

end

end A218711.P10754593088791613886

/-! ## A218711.P1087122491505076229

`A000606(A132411(n))%A151035(n)`
-/

namespace A218711.P1087122491505076229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000606 (A132411 n).toNat) (A151035 n)

end

end A218711.P1087122491505076229

/-!
# A218721: a(n) = (18^n-1)/17.

The programs for A218721, the canonical program `A218721.P2985229699141569824` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218721 has offset 0).

The definition of A218721 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(18^n-1)/17` (program `A218721.P305745904517481814`, by `A218721.P305745904517481814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218721.P1993408001038958860

`ogf(x/(1-19x+18x^2))`
-/

namespace A218721.P1993408001038958860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -19, 18] n

end

end A218721.P1993408001038958860

namespace A218721

/-- `ogf(x/(1-19x+18x^2))` -/
def P1993408001038958860.Spec : Prop :=
  ∀ n, P1993408001038958860.a n = A218721 n

end A218721

/-! ## A218721.P2985229699141569824

`19*a(n-1)-18*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218721

/-- `19*a(n-1)-18*a(n-2)` -/
def P2985229699141569824.Spec : Prop :=
  ∀ n, P2985229699141569824.a n = A218721 n

theorem P2985229699141569824.correct : P2985229699141569824.Spec := by
  intro n
  simp only [A218721]

end A218721

/-! ## A218721.P6178088004846673587

`floor(18^n/17)`
-/

namespace A218721.P6178088004846673587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(18 ^ n : ℚ) / 17⌋

end

end A218721.P6178088004846673587

namespace A218721

/-- `floor(18^n/17)` -/
def P6178088004846673587.Spec : Prop :=
  ∀ n, P6178088004846673587.a n = A218721 n

end A218721

/-! ## A218721.P305745904517481814

`(18^n-1)/17`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218721.P305745904517481814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 ^ n : ℤ) - 1 : ℚ) / 17

end

end A218721.P305745904517481814

namespace A218721

/-- `(18^n-1)/17` -/
def P305745904517481814.Spec : Prop :=
  ∀ n, P305745904517481814.a n = (A218721 n : ℚ)

theorem P305745904517481814.correct : P305745904517481814.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218721, Nat.add_sub_cancel, A218721.P305745904517481814.a, A218721.P2985229699141569824.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218721, Nat.add_sub_cancel, A218721.P305745904517481814.a, A218721.P2985229699141569824.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218721

/-! ## A218721.P5037070693765327999

`18*a(n-1)+1` with `a(0)=0`
-/

namespace A218721.P5037070693765327999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  18 * a (n - 1) + 1

end

end A218721.P5037070693765327999

namespace A218721

/-- `18*a(n-1)+1` -/
def P5037070693765327999.Spec : Prop :=
  ∀ n, (P5037070693765327999.a n : ℤ) = A218721 n

end A218721

/-! ## A218721.P10142104616657769034

`lcm(18, a(n-1))+1` with `a(0)=0`
-/

namespace A218721.P10142104616657769034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 18 (a (n - 1)) + 1

end

end A218721.P10142104616657769034

namespace A218721

/-- `lcm(18, a(n-1))+1` -/
def P10142104616657769034.Spec : Prop :=
  ∀ n, (P10142104616657769034.a n : ℤ) = A218721 n

end A218721

/-! ## A218721.P2832881224667313945

`or(1, 18*a(n-1))` with `a(0)=0`
-/

namespace A218721.P2832881224667313945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (18 * a (n - 1))

end

end A218721.P2832881224667313945

namespace A218721

/-- `or(1, 18*a(n-1))` -/
def P2832881224667313945.Spec : Prop :=
  ∀ n, (P2832881224667313945.a n : ℤ) = A218721 n

end A218721

/-! ## A218721.P18345312180637452665

`xor(1, 18*a(n-1))` with `a(0)=0`
-/

namespace A218721.P18345312180637452665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (18 * a (n - 1))

end

end A218721.P18345312180637452665

namespace A218721

/-- `xor(1, 18*a(n-1))` -/
def P18345312180637452665.Spec : Prop :=
  ∀ n, (P18345312180637452665.a n : ℤ) = A218721 n

end A218721

/-! ## A218721.P9574492329891971458

`1-(a(n-1)-19*a(n-1))` with `a(0)=0`
-/

namespace A218721.P9574492329891971458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 19 * a (n - 1))

end

end A218721.P9574492329891971458

namespace A218721

/-- `1-(a(n-1)-19*a(n-1))` -/
def P9574492329891971458.Spec : Prop :=
  ∀ n, P9574492329891971458.a n = A218721 n

end A218721

/-! ## A218721.P17176391978504005367

`∑[18^n]%(18^n)`
-/

namespace A218721.P17176391978504005367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 18 ^ n

end

end A218721.P17176391978504005367

namespace A218721

/-- `∑[18^n]%(18^n)` -/
def P17176391978504005367.Spec : Prop :=
  ∀ n, (P17176391978504005367.a n : ℤ) = A218721 n

end A218721

/-!
# A218722: a(n) = (19^n-1)/18.

The programs for A218722, the canonical program `A218722.P10082191361379387987` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218722 has offset 0).

The definition of A218722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(19^n-1)/18` (program `A218722.P12251329419907842488`, by `A218722.P12251329419907842488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218722.P13900183268888813039

`ogf(x/(1-20x+19x^2))`
-/

namespace A218722.P13900183268888813039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -20, 19] n

end

end A218722.P13900183268888813039

namespace A218722

/-- `ogf(x/(1-20x+19x^2))` -/
def P13900183268888813039.Spec : Prop :=
  ∀ n, P13900183268888813039.a n = A218722 n

end A218722

/-! ## A218722.P10082191361379387987

`20*a(n-1)-19*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218722

/-- `20*a(n-1)-19*a(n-2)` -/
def P10082191361379387987.Spec : Prop :=
  ∀ n, P10082191361379387987.a n = A218722 n

theorem P10082191361379387987.correct : P10082191361379387987.Spec := by
  intro n
  simp only [A218722]

end A218722

/-! ## A218722.P128643887048102780

`floor(19^n/18)`
-/

namespace A218722.P128643887048102780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(19 ^ n : ℚ) / 18⌋

end

end A218722.P128643887048102780

namespace A218722

/-- `floor(19^n/18)` -/
def P128643887048102780.Spec : Prop :=
  ∀ n, P128643887048102780.a n = A218722 n

end A218722

/-! ## A218722.P12251329419907842488

`(19^n-1)/18`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218722.P12251329419907842488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((19 ^ n : ℤ) - 1 : ℚ) / 18

end

end A218722.P12251329419907842488

namespace A218722

/-- `(19^n-1)/18` -/
def P12251329419907842488.Spec : Prop :=
  ∀ n, P12251329419907842488.a n = (A218722 n : ℚ)

theorem P12251329419907842488.correct : P12251329419907842488.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218722, Nat.add_sub_cancel, A218722.P12251329419907842488.a, A218722.P10082191361379387987.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218722, Nat.add_sub_cancel, A218722.P12251329419907842488.a, A218722.P10082191361379387987.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218722

/-! ## A218722.P1461919844923620657

`19*a(n-1)+1` with `a(0)=0`
-/

namespace A218722.P1461919844923620657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  19 * a (n - 1) + 1

end

end A218722.P1461919844923620657

namespace A218722

/-- `19*a(n-1)+1` -/
def P1461919844923620657.Spec : Prop :=
  ∀ n, (P1461919844923620657.a n : ℤ) = A218722 n

end A218722

/-! ## A218722.P13646429119002285749

`∑[19*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218722.P13646429119002285749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  19 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218722.P13646429119002285749

namespace A218722

/-- `∑[19*a(n-1)]` -/
def P13646429119002285749.Spec : Prop :=
  ∀ n, (P13646429119002285749.a n : ℤ) = A218722 n

end A218722

/-! ## A218722.P1266659494435300553

`-xor(19*a(n-1), -1)` with `a(0)=0`
-/

namespace A218722.P1266659494435300553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -Int.xor (19 * a (n - 1)) (-1)

end

end A218722.P1266659494435300553

namespace A218722

/-- `-xor(19*a(n-1), -1)` -/
def P1266659494435300553.Spec : Prop :=
  ∀ n, P1266659494435300553.a n = A218722 n

end A218722

/-! ## A218722.P13734514319627360431

`1-(a(n-1)-20*a(n-1))` with `a(0)=0`
-/

namespace A218722.P13734514319627360431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 20 * a (n - 1))

end

end A218722.P13734514319627360431

namespace A218722

/-- `1-(a(n-1)-20*a(n-1))` -/
def P13734514319627360431.Spec : Prop :=
  ∀ n, P13734514319627360431.a n = A218722 n

end A218722

/-! ## A218722.P15155315744048449399

`∑[19^n]%(19^n)`
-/

namespace A218722.P15155315744048449399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 19 ^ n

end

end A218722.P15155315744048449399

namespace A218722

/-- `∑[19^n]%(19^n)` -/
def P15155315744048449399.Spec : Prop :=
  ∀ n, (P15155315744048449399.a n : ℤ) = A218722 n

end A218722

/-! ## A218722.P278826273696676873

`∑[A017961(2*n)]-A017961(2*n)`
-/

namespace A218722.P278826273696676873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017961 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A017961 (2 * n)

end

end A218722.P278826273696676873

namespace A218722

/-- `∑[A017961(2*n)]-A017961(2*n)` -/
def P278826273696676873.Spec : Prop :=
  ∀ n, P278826273696676873.a n = A218722 n

end A218722

/-!
# A218723: a(n) = (256^n - 1)/255.

The programs for A218723, the canonical program `A218723.P5913484162877713760` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218723 has offset 0).

The definition of A218723 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(256^n-1)/255` (program `A218723.P2519904267140136496`, by `A218723.P2519904267140136496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218723.P5913484162877713760

`257*a(n-1)-256*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218723

/-- `257*a(n-1)-256*a(n-2)` -/
def P5913484162877713760.Spec : Prop :=
  ∀ n, P5913484162877713760.a n = A218723 n

theorem P5913484162877713760.correct : P5913484162877713760.Spec := by
  intro n
  simp only [A218723]

end A218723

/-! ## A218723.P8356823011519676707

`floor(256^n/255)`
-/

namespace A218723.P8356823011519676707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(256 ^ n : ℚ) / 255⌋

end

end A218723.P8356823011519676707

namespace A218723

/-- `floor(256^n/255)` -/
def P8356823011519676707.Spec : Prop :=
  ∀ n, P8356823011519676707.a n = A218723 n

end A218723

/-! ## A218723.P2519904267140136496

`(256^n-1)/255`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218723.P2519904267140136496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((256 ^ n : ℤ) - 1 : ℚ) / 255

end

end A218723.P2519904267140136496

namespace A218723

/-- `(256^n-1)/255` -/
def P2519904267140136496.Spec : Prop :=
  ∀ n, P2519904267140136496.a n = (A218723 n : ℚ)

theorem P2519904267140136496.correct : P2519904267140136496.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218723, Nat.add_sub_cancel, A218723.P2519904267140136496.a, A218723.P5913484162877713760.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218723, Nat.add_sub_cancel, A218723.P2519904267140136496.a, A218723.P5913484162877713760.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218723

/-! ## A218723.P13393906839669203610

`256*a(n-1)+1` with `a(0)=0`
-/

namespace A218723.P13393906839669203610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  256 * a (n - 1) + 1

end

end A218723.P13393906839669203610

namespace A218723

/-- `256*a(n-1)+1` -/
def P13393906839669203610.Spec : Prop :=
  ∀ n, (P13393906839669203610.a n : ℤ) = A218723 n

end A218723

/-! ## A218723.P13677866412687679413

`a(n-1)+(4^(n-1))^4` with `a(0)=0`
-/

namespace A218723.P13677866412687679413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 4

end

end A218723.P13677866412687679413

namespace A218723

/-- `a(n-1)+(4^(n-1))^4` -/
def P13677866412687679413.Spec : Prop :=
  ∀ n, P13677866412687679413.a n = (A218723 n : ℚ)

end A218723

/-!
# A218724: a(n) = (21^n - 1)/20.

The programs for A218724, the canonical program `A218724.P3116493685396923150` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218724 has offset 0).

The definition of A218724 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(21^n-1)/20` (program `A218724.P12394936226840167395`, by `A218724.P12394936226840167395.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218724.P8938790509304401418

`ogf(x/(1-22x+21x^2))`
-/

namespace A218724.P8938790509304401418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -22, 21] n

end

end A218724.P8938790509304401418

namespace A218724

/-- `ogf(x/(1-22x+21x^2))` -/
def P8938790509304401418.Spec : Prop :=
  ∀ n, P8938790509304401418.a n = A218724 n

end A218724

/-! ## A218724.P3116493685396923150

`21*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218724

/-- `21*a(n-1)+1` -/
def P3116493685396923150.Spec : Prop :=
  ∀ n, (P3116493685396923150.a n : ℤ) = A218724 n

theorem P3116493685396923150.correct : P3116493685396923150.Spec := by
  intro n
  simp only [A218724]

end A218724

/-! ## A218724.P9994086120331186135

`a(n-1)+21^(n-1)` with `a(0)=0`
-/

namespace A218724.P9994086120331186135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (21 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A218724.P9994086120331186135

namespace A218724

/-- `a(n-1)+21^(n-1)` -/
def P9994086120331186135.Spec : Prop :=
  ∀ n, P9994086120331186135.a n = (A218724 n : ℚ)

end A218724

/-! ## A218724.P9601368107982030761

`floor(21^n/20)`
-/

namespace A218724.P9601368107982030761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(21 ^ n : ℚ) / 20⌋

end

end A218724.P9601368107982030761

namespace A218724

/-- `floor(21^n/20)` -/
def P9601368107982030761.Spec : Prop :=
  ∀ n, P9601368107982030761.a n = A218724 n

end A218724

/-! ## A218724.P12394936226840167395

`(21^n-1)/20`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218724.P12394936226840167395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 ^ n : ℤ) - 1 : ℚ) / 20

end

end A218724.P12394936226840167395

namespace A218724

/-- `(21^n-1)/20` -/
def P12394936226840167395.Spec : Prop :=
  ∀ n, P12394936226840167395.a n = (A218724 n : ℚ)

theorem P12394936226840167395.correct : P12394936226840167395.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A218724, Nat.add_sub_cancel, A218724.P12394936226840167395.a, A218724.P3116493685396923150.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A218724, Nat.add_sub_cancel, A218724.P12394936226840167395.a, A218724.P3116493685396923150.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218724

/-! ## A218724.P5830890549173259180

`lcm(21, a(n-1))+1` with `a(0)=0`
-/

namespace A218724.P5830890549173259180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 21 (a (n - 1)) + 1

end

end A218724.P5830890549173259180

namespace A218724

/-- `lcm(21, a(n-1))+1` -/
def P5830890549173259180.Spec : Prop :=
  ∀ n, (P5830890549173259180.a n : ℤ) = A218724 n

end A218724

/-! ## A218724.P13452800726153119821

`∑[21*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218724.P13452800726153119821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  21 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218724.P13452800726153119821

namespace A218724

/-- `∑[21*a(n-1)]` -/
def P13452800726153119821.Spec : Prop :=
  ∀ n, (P13452800726153119821.a n : ℤ) = A218724 n

end A218724

/-! ## A218724.P7650772451921585010

`1-(a(n-1)-22*a(n-1))` with `a(0)=0`
-/

namespace A218724.P7650772451921585010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 22 * a (n - 1))

end

end A218724.P7650772451921585010

namespace A218724

/-- `1-(a(n-1)-22*a(n-1))` -/
def P7650772451921585010.Spec : Prop :=
  ∀ n, P7650772451921585010.a n = A218724 n

end A218724

/-! ## A218724.P16951507244602369615

`A009965(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A218724.P16951507244602369615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A009965 (n - 1) + a (n - 1)

end

end A218724.P16951507244602369615

namespace A218724

/-- `A009965(n-1)+a(n-1)` -/
def P16951507244602369615.Spec : Prop :=
  ∀ n, P16951507244602369615.a n = A218724 n

end A218724

/-! ## A218724.P15725162884640798920

`∑[21^n]%(21^n)`
-/

namespace A218724.P15725162884640798920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 21 ^ n

end

end A218724.P15725162884640798920

namespace A218724

/-- `∑[21^n]%(21^n)` -/
def P15725162884640798920.Spec : Prop :=
  ∀ n, (P15725162884640798920.a n : ℤ) = A218724 n

end A218724

/-!
# A218725: a(n) = (22^n - 1)/21.

The programs for A218725, the canonical program `A218725.P5376290345054570450` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218725 has offset 0).

The definition of A218725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(22^n-1)/21` (program `A218725.P3933131519985627147`, by `A218725.P3933131519985627147.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218725.P9757965708558934087

`ogf(x/(1-23x+22x^2))`
-/

namespace A218725.P9757965708558934087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -23, 22] n

end

end A218725.P9757965708558934087

namespace A218725

/-- `ogf(x/(1-23x+22x^2))` -/
def P9757965708558934087.Spec : Prop :=
  ∀ n, P9757965708558934087.a n = A218725 n

end A218725

/-! ## A218725.P5376290345054570450

`23*a(n-1)-22*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218725

/-- `23*a(n-1)-22*a(n-2)` -/
def P5376290345054570450.Spec : Prop :=
  ∀ n, P5376290345054570450.a n = A218725 n

theorem P5376290345054570450.correct : P5376290345054570450.Spec := by
  intro n
  simp only [A218725]

end A218725

/-! ## A218725.P14968028355931988896

`floor(22^n/21)`
-/

namespace A218725.P14968028355931988896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(22 ^ n : ℚ) / 21⌋

end

end A218725.P14968028355931988896

namespace A218725

/-- `floor(22^n/21)` -/
def P14968028355931988896.Spec : Prop :=
  ∀ n, P14968028355931988896.a n = A218725 n

end A218725

/-! ## A218725.P3933131519985627147

`(22^n-1)/21`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218725.P3933131519985627147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((22 ^ n : ℤ) - 1 : ℚ) / 21

end

end A218725.P3933131519985627147

namespace A218725

/-- `(22^n-1)/21` -/
def P3933131519985627147.Spec : Prop :=
  ∀ n, P3933131519985627147.a n = (A218725 n : ℚ)

theorem P3933131519985627147.correct : P3933131519985627147.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218725, Nat.add_sub_cancel, A218725.P3933131519985627147.a, A218725.P5376290345054570450.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218725, Nat.add_sub_cancel, A218725.P3933131519985627147.a, A218725.P5376290345054570450.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218725

/-! ## A218725.P3923073580533458377

`22*a(n-1)+1` with `a(0)=0`
-/

namespace A218725.P3923073580533458377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  22 * a (n - 1) + 1

end

end A218725.P3923073580533458377

namespace A218725

/-- `22*a(n-1)+1` -/
def P3923073580533458377.Spec : Prop :=
  ∀ n, (P3923073580533458377.a n : ℤ) = A218725 n

end A218725

/-! ## A218725.P16359940109274164732

`or(22*a(n-1), 1)` with `a(0)=0`
-/

namespace A218725.P16359940109274164732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor (22 * a (n - 1)) 1

end

end A218725.P16359940109274164732

namespace A218725

/-- `or(22*a(n-1), 1)` -/
def P16359940109274164732.Spec : Prop :=
  ∀ n, (P16359940109274164732.a n : ℤ) = A218725 n

end A218725

/-! ## A218725.P4575024511771852134

`∑[22*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218725.P4575024511771852134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  22 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218725.P4575024511771852134

namespace A218725

/-- `∑[22*a(n-1)]` -/
def P4575024511771852134.Spec : Prop :=
  ∀ n, (P4575024511771852134.a n : ℤ) = A218725 n

end A218725

/-! ## A218725.P12733101400818509604

`xor(1, 11*2*a(n-1))` with `a(0)=0`
-/

namespace A218725.P12733101400818509604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (11 * (2 * a (n - 1)))

end

end A218725.P12733101400818509604

namespace A218725

/-- `xor(1, 11*2*a(n-1))` -/
def P12733101400818509604.Spec : Prop :=
  ∀ n, (P12733101400818509604.a n : ℤ) = A218725 n

end A218725

/-! ## A218725.P17413163573122791469

`1-(a(n-1)-23*a(n-1))` with `a(0)=0`
-/

namespace A218725.P17413163573122791469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 23 * a (n - 1))

end

end A218725.P17413163573122791469

namespace A218725

/-- `1-(a(n-1)-23*a(n-1))` -/
def P17413163573122791469.Spec : Prop :=
  ∀ n, P17413163573122791469.a n = A218725 n

end A218725

/-! ## A218725.P12689567153496919211

`A009966(n-1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A218725.P12689567153496919211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A009966 (n - 1) + a (n - 1)

end

end A218725.P12689567153496919211

namespace A218725

/-- `A009966(n-1)+a(n-1)` -/
def P12689567153496919211.Spec : Prop :=
  ∀ n, P12689567153496919211.a n = A218725 n

end A218725

/-!
# A218726: a(n) = (23^n - 1)/22.

The programs for A218726, the canonical program `A218726.P8694309931938279813` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218726 has offset 0).

The definition of A218726 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(23^n-1)/22` (program `A218726.P7241086040365703739`, by `A218726.P7241086040365703739.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218726.P17827304384748333214

`ogf(x/(1-24x+23x^2))`
-/

namespace A218726.P17827304384748333214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -24, 23] n

end

end A218726.P17827304384748333214

namespace A218726

/-- `ogf(x/(1-24x+23x^2))` -/
def P17827304384748333214.Spec : Prop :=
  ∀ n, P17827304384748333214.a n = A218726 n

end A218726

/-! ## A218726.P8694309931938279813

`24*a(n-1)-23*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218726

/-- `24*a(n-1)-23*a(n-2)` -/
def P8694309931938279813.Spec : Prop :=
  ∀ n, P8694309931938279813.a n = A218726 n

theorem P8694309931938279813.correct : P8694309931938279813.Spec := by
  intro n
  simp only [A218726]

end A218726

/-! ## A218726.P6575948725981440547

`floor(23^n/22)`
-/

namespace A218726.P6575948725981440547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(23 ^ n : ℚ) / 22⌋

end

end A218726.P6575948725981440547

namespace A218726

/-- `floor(23^n/22)` -/
def P6575948725981440547.Spec : Prop :=
  ∀ n, P6575948725981440547.a n = A218726 n

end A218726

/-! ## A218726.P7241086040365703739

`(23^n-1)/22`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218726.P7241086040365703739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((23 ^ n : ℤ) - 1 : ℚ) / 22

end

end A218726.P7241086040365703739

namespace A218726

/-- `(23^n-1)/22` -/
def P7241086040365703739.Spec : Prop :=
  ∀ n, P7241086040365703739.a n = (A218726 n : ℚ)

theorem P7241086040365703739.correct : P7241086040365703739.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218726, Nat.add_sub_cancel, A218726.P7241086040365703739.a, A218726.P8694309931938279813.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218726, Nat.add_sub_cancel, A218726.P7241086040365703739.a, A218726.P8694309931938279813.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218726

/-! ## A218726.P3421813599653253751

`23*a(n-1)+1` with `a(0)=0`
-/

namespace A218726.P3421813599653253751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  23 * a (n - 1) + 1

end

end A218726.P3421813599653253751

namespace A218726

/-- `23*a(n-1)+1` -/
def P3421813599653253751.Spec : Prop :=
  ∀ n, (P3421813599653253751.a n : ℤ) = A218726 n

end A218726

/-! ## A218726.P7546516104586153971

`lcm(23, a(n-1))+1` with `a(0)=0`
-/

namespace A218726.P7546516104586153971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 23 (a (n - 1)) + 1

end

end A218726.P7546516104586153971

namespace A218726

/-- `lcm(23, a(n-1))+1` -/
def P7546516104586153971.Spec : Prop :=
  ∀ n, (P7546516104586153971.a n : ℤ) = A218726 n

end A218726

/-! ## A218726.P3186140396963927100

`∑[23*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218726.P3186140396963927100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  23 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218726.P3186140396963927100

namespace A218726

/-- `∑[23*a(n-1)]` -/
def P3186140396963927100.Spec : Prop :=
  ∀ n, (P3186140396963927100.a n : ℤ) = A218726 n

end A218726

/-! ## A218726.P17596858551428525128

`1-(a(n-1)-24*a(n-1))` with `a(0)=0`
-/

namespace A218726.P17596858551428525128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 24 * a (n - 1))

end

end A218726.P17596858551428525128

namespace A218726

/-- `1-(a(n-1)-24*a(n-1))` -/
def P17596858551428525128.Spec : Prop :=
  ∀ n, P17596858551428525128.a n = A218726 n

end A218726

/-! ## A218726.P17717543757747114463

`A009967(n-1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A218726.P17717543757747114463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A009967 (n - 1) + a (n - 1)

end

end A218726.P17717543757747114463

namespace A218726

/-- `A009967(n-1)+a(n-1)` -/
def P17717543757747114463.Spec : Prop :=
  ∀ n, P17717543757747114463.a n = A218726 n

end A218726

/-! ## A218726.P18385484655762120565

`∑[A017973(2*n)]-A017973(2*n)`
-/

namespace A218726.P18385484655762120565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017973 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A017973 (2 * n)

end

end A218726.P18385484655762120565

namespace A218726

/-- `∑[A017973(2*n)]-A017973(2*n)` -/
def P18385484655762120565.Spec : Prop :=
  ∀ n, P18385484655762120565.a n = A218726 n

end A218726

/-!
# A218727: a(n) = (24^n - 1)/23.

The programs for A218727, the canonical program `A218727.P17715519711891739675` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218727 has offset 0).

The definition of A218727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(24^n-1)/23` (program `A218727.P9652169824948930889`, by `A218727.P9652169824948930889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218727.P10356459851552072428

`ogf(x/(1-25x+24x^2))`
-/

namespace A218727.P10356459851552072428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -25, 24] n

end

end A218727.P10356459851552072428

namespace A218727

/-- `ogf(x/(1-25x+24x^2))` -/
def P10356459851552072428.Spec : Prop :=
  ∀ n, P10356459851552072428.a n = A218727 n

end A218727

/-! ## A218727.P17715519711891739675

`25*a(n-1)-24*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218727

/-- `25*a(n-1)-24*a(n-2)` -/
def P17715519711891739675.Spec : Prop :=
  ∀ n, P17715519711891739675.a n = A218727 n

theorem P17715519711891739675.correct : P17715519711891739675.Spec := by
  intro n
  simp only [A218727]

end A218727

/-! ## A218727.P15235866914746095654

`floor(24^n/23)`
-/

namespace A218727.P15235866914746095654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(24 ^ n : ℚ) / 23⌋

end

end A218727.P15235866914746095654

namespace A218727

/-- `floor(24^n/23)` -/
def P15235866914746095654.Spec : Prop :=
  ∀ n, P15235866914746095654.a n = A218727 n

end A218727

/-! ## A218727.P9652169824948930889

`(24^n-1)/23`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218727.P9652169824948930889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((24 ^ n : ℤ) - 1 : ℚ) / 23

end

end A218727.P9652169824948930889

namespace A218727

/-- `(24^n-1)/23` -/
def P9652169824948930889.Spec : Prop :=
  ∀ n, P9652169824948930889.a n = (A218727 n : ℚ)

theorem P9652169824948930889.correct : P9652169824948930889.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218727, Nat.add_sub_cancel, A218727.P9652169824948930889.a, A218727.P17715519711891739675.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218727, Nat.add_sub_cancel, A218727.P9652169824948930889.a, A218727.P17715519711891739675.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218727

/-! ## A218727.P10322757201245598028

`24*a(n-1)+1` with `a(0)=0`
-/

namespace A218727.P10322757201245598028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  24 * a (n - 1) + 1

end

end A218727.P10322757201245598028

namespace A218727

/-- `24*a(n-1)+1` -/
def P10322757201245598028.Spec : Prop :=
  ∀ n, (P10322757201245598028.a n : ℤ) = A218727 n

end A218727

/-! ## A218727.P7030952733034347635

`lcm(24, a(n-1))+1` with `a(0)=0`
-/

namespace A218727.P7030952733034347635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 24 (a (n - 1)) + 1

end

end A218727.P7030952733034347635

namespace A218727

/-- `lcm(24, a(n-1))+1` -/
def P7030952733034347635.Spec : Prop :=
  ∀ n, (P7030952733034347635.a n : ℤ) = A218727 n

end A218727

/-! ## A218727.P2276104511260595289

`or(1, 24*a(n-1))` with `a(0)=0`
-/

namespace A218727.P2276104511260595289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (24 * a (n - 1))

end

end A218727.P2276104511260595289

namespace A218727

/-- `or(1, 24*a(n-1))` -/
def P2276104511260595289.Spec : Prop :=
  ∀ n, (P2276104511260595289.a n : ℤ) = A218727 n

end A218727

/-! ## A218727.P9461408333072091589

`xor(1, 24*a(n-1))` with `a(0)=0`
-/

namespace A218727.P9461408333072091589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (24 * a (n - 1))

end

end A218727.P9461408333072091589

namespace A218727

/-- `xor(1, 24*a(n-1))` -/
def P9461408333072091589.Spec : Prop :=
  ∀ n, (P9461408333072091589.a n : ℤ) = A218727 n

end A218727

/-! ## A218727.P8989006235931181343

`∑[24*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218727.P8989006235931181343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  24 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218727.P8989006235931181343

namespace A218727

/-- `∑[24*a(n-1)]` -/
def P8989006235931181343.Spec : Prop :=
  ∀ n, (P8989006235931181343.a n : ℤ) = A218727 n

end A218727

/-! ## A218727.P12791290624917839337

`1-(a(n-1)-25*a(n-1))` with `a(0)=0`
-/

namespace A218727.P12791290624917839337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 25 * a (n - 1))

end

end A218727.P12791290624917839337

namespace A218727

/-- `1-(a(n-1)-25*a(n-1))` -/
def P12791290624917839337.Spec : Prop :=
  ∀ n, P12791290624917839337.a n = A218727 n

end A218727

/-!
# A218728: a(n) = (25^n - 1)/24.

The programs for A218728, the canonical program `A218728.P2569341767872769614` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218728 has offset 0).

The definition of A218728 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(25^n-1)/24` (program `A218728.P7009984948754980396`, by `A218728.P7009984948754980396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218728.P1868712256980443697

`ogf(x/(1-26x+25x^2))`
-/

namespace A218728.P1868712256980443697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -26, 25] n

end

end A218728.P1868712256980443697

namespace A218728

/-- `ogf(x/(1-26x+25x^2))` -/
def P1868712256980443697.Spec : Prop :=
  ∀ n, P1868712256980443697.a n = A218728 n

end A218728

/-! ## A218728.P2569341767872769614

`25*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218728

/-- `25*a(n-1)+1` -/
def P2569341767872769614.Spec : Prop :=
  ∀ n, (P2569341767872769614.a n : ℤ) = A218728 n

theorem P2569341767872769614.correct : P2569341767872769614.Spec := by
  intro n
  simp only [A218728]

end A218728

/-! ## A218728.P5378849764671720644

`floor(25^n/24)`
-/

namespace A218728.P5378849764671720644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(25 ^ n : ℚ) / 24⌋

end

end A218728.P5378849764671720644

namespace A218728

/-- `floor(25^n/24)` -/
def P5378849764671720644.Spec : Prop :=
  ∀ n, P5378849764671720644.a n = A218728 n

end A218728

/-! ## A218728.P7009984948754980396

`(25^n-1)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218728.P7009984948754980396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((25 ^ n : ℤ) - 1 : ℚ) / 24

end

end A218728.P7009984948754980396

namespace A218728

/-- `(25^n-1)/24` -/
def P7009984948754980396.Spec : Prop :=
  ∀ n, P7009984948754980396.a n = (A218728 n : ℚ)

theorem P7009984948754980396.correct : P7009984948754980396.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A218728, Nat.add_sub_cancel, A218728.P7009984948754980396.a, A218728.P2569341767872769614.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A218728, Nat.add_sub_cancel, A218728.P7009984948754980396.a, A218728.P2569341767872769614.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218728

/-! ## A218728.P10595285515055033895

`1+25*a(n-1)` with `a(0)=0`
-/

namespace A218728.P10595285515055033895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + 25 * a (n - 1)

end

end A218728.P10595285515055033895

namespace A218728

/-- `1+25*a(n-1)` -/
def P10595285515055033895.Spec : Prop :=
  ∀ n, (P10595285515055033895.a n : ℤ) = A218728 n

theorem P10595285515055033895.correct : P10595285515055033895.Spec := by
  intro n
  simp only [A218728, Nat.add_sub_cancel, A218728.P10595285515055033895.a, A218728.P2569341767872769614.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A218728

/-! ## A218728.P4632025390745561654

`∑[25*a(n-1)]-3` with `a(0)=3, a(1)=1`
-/

namespace A218728.P4632025390745561654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  25 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A218728.P4632025390745561654

namespace A218728

/-- `∑[25*a(n-1)]-3` -/
def P4632025390745561654.Spec : Prop :=
  ∀ n, P4632025390745561654.a n = A218728 n

end A218728

/-! ## A218728.P5680781647808611572

`a(n-1)/(1/5)²+1` with `a(0)=0`
-/

namespace A218728.P5680781647808611572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((1 : ℚ) / 5) ^ 2 + 1

end

end A218728.P5680781647808611572

namespace A218728

/-- `a(n-1)/(1/5)²+1` -/
def P5680781647808611572.Spec : Prop :=
  ∀ n, P5680781647808611572.a n = (A218728 n : ℚ)

end A218728

/-! ## A218728.P14463799199715764570

`a(n-1)+(5^(n-1))²` with `a(0)=0`
-/

namespace A218728.P14463799199715764570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2

end

end A218728.P14463799199715764570

namespace A218728

/-- `a(n-1)+(5^(n-1))²` -/
def P14463799199715764570.Spec : Prop :=
  ∀ n, P14463799199715764570.a n = (A218728 n : ℚ)

end A218728

/-! ## A218728.P15241439760043498125

`record[(-5)^(n-1)]+a(n-1)` with `a(0)=0`
-/

namespace A218728.P15241439760043498125
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1)

end

end A218728.P15241439760043498125

namespace A218728

/-- `record[(-5)^(n-1)]+a(n-1)` -/
def P15241439760043498125.Spec : Prop :=
  ∀ n, P15241439760043498125.a n = (A218728 n : ℚ)

end A218728

/-! ## A218728.P15598132843635634784

`1-(a(n-1)-26*a(n-1))` with `a(0)=0`
-/

namespace A218728.P15598132843635634784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 26 * a (n - 1))

end

end A218728.P15598132843635634784

namespace A218728

/-- `1-(a(n-1)-26*a(n-1))` -/
def P15598132843635634784.Spec : Prop :=
  ∀ n, P15598132843635634784.a n = A218728 n

end A218728

/-!
# A218729: a(n) = (26^n - 1)/25.

The programs for A218729, the canonical program `A218729.P13252695594177453196` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218729 has offset 0).

The definition of A218729 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(26^n-1)/25` (program `A218729.P15039608779905083467`, by `A218729.P15039608779905083467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218729.P16219685142619464673

`ogf(x/(1-27x+26x^2))`
-/

namespace A218729.P16219685142619464673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -27, 26] n

end

end A218729.P16219685142619464673

namespace A218729

/-- `ogf(x/(1-27x+26x^2))` -/
def P16219685142619464673.Spec : Prop :=
  ∀ n, P16219685142619464673.a n = A218729 n

end A218729

/-! ## A218729.P13252695594177453196

`27*a(n-1)-26*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218729

/-- `27*a(n-1)-26*a(n-2)` -/
def P13252695594177453196.Spec : Prop :=
  ∀ n, P13252695594177453196.a n = A218729 n

theorem P13252695594177453196.correct : P13252695594177453196.Spec := by
  intro n
  simp only [A218729]

end A218729

/-! ## A218729.P4607287406597012079

`floor(26^n/25)`
-/

namespace A218729.P4607287406597012079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(26 ^ n : ℚ) / 25⌋

end

end A218729.P4607287406597012079

namespace A218729

/-- `floor(26^n/25)` -/
def P4607287406597012079.Spec : Prop :=
  ∀ n, P4607287406597012079.a n = A218729 n

end A218729

/-! ## A218729.P15039608779905083467

`(26^n-1)/25`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218729.P15039608779905083467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((26 ^ n : ℤ) - 1 : ℚ) / 25

end

end A218729.P15039608779905083467

namespace A218729

/-- `(26^n-1)/25` -/
def P15039608779905083467.Spec : Prop :=
  ∀ n, P15039608779905083467.a n = (A218729 n : ℚ)

theorem P15039608779905083467.correct : P15039608779905083467.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218729, Nat.add_sub_cancel, A218729.P15039608779905083467.a, A218729.P13252695594177453196.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218729, Nat.add_sub_cancel, A218729.P15039608779905083467.a, A218729.P13252695594177453196.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218729

/-! ## A218729.P10386734257306052459

`26*a(n-1)+1` with `a(0)=0`
-/

namespace A218729.P10386734257306052459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  26 * a (n - 1) + 1

end

end A218729.P10386734257306052459

namespace A218729

/-- `26*a(n-1)+1` -/
def P10386734257306052459.Spec : Prop :=
  ∀ n, (P10386734257306052459.a n : ℤ) = A218729 n

end A218729

/-! ## A218729.P7800666641091506045

`lcm(26, a(n-1))+1` with `a(0)=0`
-/

namespace A218729.P7800666641091506045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 26 (a (n - 1)) + 1

end

end A218729.P7800666641091506045

namespace A218729

/-- `lcm(26, a(n-1))+1` -/
def P7800666641091506045.Spec : Prop :=
  ∀ n, (P7800666641091506045.a n : ℤ) = A218729 n

end A218729

/-! ## A218729.P10625730597090867056

`or(1, 26*a(n-1))` with `a(0)=0`
-/

namespace A218729.P10625730597090867056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (26 * a (n - 1))

end

end A218729.P10625730597090867056

namespace A218729

/-- `or(1, 26*a(n-1))` -/
def P10625730597090867056.Spec : Prop :=
  ∀ n, (P10625730597090867056.a n : ℤ) = A218729 n

end A218729

/-! ## A218729.P10169255300880475485

`xor(1, 26*a(n-1))` with `a(0)=0`
-/

namespace A218729.P10169255300880475485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (26 * a (n - 1))

end

end A218729.P10169255300880475485

namespace A218729

/-- `xor(1, 26*a(n-1))` -/
def P10169255300880475485.Spec : Prop :=
  ∀ n, (P10169255300880475485.a n : ℤ) = A218729 n

end A218729

/-! ## A218729.P12935959708349416150

`∑[26*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218729.P12935959708349416150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  26 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218729.P12935959708349416150

namespace A218729

/-- `∑[26*a(n-1)]` -/
def P12935959708349416150.Spec : Prop :=
  ∀ n, (P12935959708349416150.a n : ℤ) = A218729 n

end A218729

/-! ## A218729.P208272249177880527

`1-(a(n-1)-27*a(n-1))` with `a(0)=0`
-/

namespace A218729.P208272249177880527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 27 * a (n - 1))

end

end A218729.P208272249177880527

namespace A218729

/-- `1-(a(n-1)-27*a(n-1))` -/
def P208272249177880527.Spec : Prop :=
  ∀ n, P208272249177880527.a n = A218729 n

end A218729

/-!
# A218730: a(n) = (27^n - 1)/26.

The programs for A218730, the canonical program `A218730.P18290801691927511841` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218730 has offset 0).

The definition of A218730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(27^n-1)/26` (program `A218730.P7355036864584873986`, by `A218730.P7355036864584873986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218730.P6386370115225743456

`ogf(x/(1-28x+27x^2))`
-/

namespace A218730.P6386370115225743456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -28, 27] n

end

end A218730.P6386370115225743456

namespace A218730

/-- `ogf(x/(1-28x+27x^2))` -/
def P6386370115225743456.Spec : Prop :=
  ∀ n, P6386370115225743456.a n = A218730 n

end A218730

/-! ## A218730.P18290801691927511841

`28*a(n-1)-27*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218730

/-- `28*a(n-1)-27*a(n-2)` -/
def P18290801691927511841.Spec : Prop :=
  ∀ n, P18290801691927511841.a n = A218730 n

theorem P18290801691927511841.correct : P18290801691927511841.Spec := by
  intro n
  simp only [A218730]

end A218730

/-! ## A218730.P15555953047984568363

`floor(27^n/26)`
-/

namespace A218730.P15555953047984568363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(27 ^ n : ℚ) / 26⌋

end

end A218730.P15555953047984568363

namespace A218730

/-- `floor(27^n/26)` -/
def P15555953047984568363.Spec : Prop :=
  ∀ n, P15555953047984568363.a n = A218730 n

end A218730

/-! ## A218730.P7355036864584873986

`(27^n-1)/26`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218730.P7355036864584873986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((27 ^ n : ℤ) - 1 : ℚ) / 26

end

end A218730.P7355036864584873986

namespace A218730

/-- `(27^n-1)/26` -/
def P7355036864584873986.Spec : Prop :=
  ∀ n, P7355036864584873986.a n = (A218730 n : ℚ)

theorem P7355036864584873986.correct : P7355036864584873986.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218730, Nat.add_sub_cancel, A218730.P7355036864584873986.a, A218730.P18290801691927511841.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218730, Nat.add_sub_cancel, A218730.P7355036864584873986.a, A218730.P18290801691927511841.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218730

/-! ## A218730.P14228974179573642985

`27*a(n-1)+1` with `a(0)=0`
-/

namespace A218730.P14228974179573642985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  27 * a (n - 1) + 1

end

end A218730.P14228974179573642985

namespace A218730

/-- `27*a(n-1)+1` -/
def P14228974179573642985.Spec : Prop :=
  ∀ n, (P14228974179573642985.a n : ℤ) = A218730 n

end A218730

/-! ## A218730.P1129787947525330559

`lcm(27, a(n-1))+1` with `a(0)=0`
-/

namespace A218730.P1129787947525330559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 27 (a (n - 1)) + 1

end

end A218730.P1129787947525330559

namespace A218730

/-- `lcm(27, a(n-1))+1` -/
def P1129787947525330559.Spec : Prop :=
  ∀ n, (P1129787947525330559.a n : ℤ) = A218730 n

end A218730

/-! ## A218730.P10051140515944663127

`∑[27*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218730.P10051140515944663127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  27 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218730.P10051140515944663127

namespace A218730

/-- `∑[27*a(n-1)]` -/
def P10051140515944663127.Spec : Prop :=
  ∀ n, (P10051140515944663127.a n : ℤ) = A218730 n

end A218730

/-! ## A218730.P18109104268166302905

`a(n-1)+(3^(n-1))^3` with `a(0)=0`
-/

namespace A218730.P18109104268166302905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 3

end

end A218730.P18109104268166302905

namespace A218730

/-- `a(n-1)+(3^(n-1))^3` -/
def P18109104268166302905.Spec : Prop :=
  ∀ n, P18109104268166302905.a n = (A218730 n : ℚ)

end A218730

/-! ## A218730.P12917854330588378146

`1-(a(n-1)-28*a(n-1))` with `a(0)=0`
-/

namespace A218730.P12917854330588378146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 28 * a (n - 1))

end

end A218730.P12917854330588378146

namespace A218730

/-- `1-(a(n-1)-28*a(n-1))` -/
def P12917854330588378146.Spec : Prop :=
  ∀ n, P12917854330588378146.a n = A218730 n

end A218730

/-! ## A218730.P7478572796317441565

`∑[A140429(n)^3]`
-/

namespace A218730.P7478572796317441565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218730.P7478572796317441565

namespace A218730

/-- `∑[A140429(n)^3]` -/
def P7478572796317441565.Spec : Prop :=
  ∀ n, P7478572796317441565.a n = A218730 n

end A218730

/-!
# A218731: a(n) = (28^n - 1)/27.

The programs for A218731, the canonical program `A218731.P5823478663060017572` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218731 has offset 0).

The definition of A218731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(28^n-1)/27` (program `A218731.P859232924944916559`, by `A218731.P859232924944916559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218731.P1267254962970172008

`ogf(x/(1-29x+28x^2))`
-/

namespace A218731.P1267254962970172008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -29, 28] n

end

end A218731.P1267254962970172008

namespace A218731

/-- `ogf(x/(1-29x+28x^2))` -/
def P1267254962970172008.Spec : Prop :=
  ∀ n, P1267254962970172008.a n = A218731 n

end A218731

/-! ## A218731.P5823478663060017572

`29*a(n-1)-28*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218731

/-- `29*a(n-1)-28*a(n-2)` -/
def P5823478663060017572.Spec : Prop :=
  ∀ n, P5823478663060017572.a n = A218731 n

theorem P5823478663060017572.correct : P5823478663060017572.Spec := by
  intro n
  simp only [A218731]

end A218731

/-! ## A218731.P7860083830439980054

`floor(28^n/27)`
-/

namespace A218731.P7860083830439980054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(28 ^ n : ℚ) / 27⌋

end

end A218731.P7860083830439980054

namespace A218731

/-- `floor(28^n/27)` -/
def P7860083830439980054.Spec : Prop :=
  ∀ n, P7860083830439980054.a n = A218731 n

end A218731

/-! ## A218731.P859232924944916559

`(28^n-1)/27`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218731.P859232924944916559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((28 ^ n : ℤ) - 1 : ℚ) / 27

end

end A218731.P859232924944916559

namespace A218731

/-- `(28^n-1)/27` -/
def P859232924944916559.Spec : Prop :=
  ∀ n, P859232924944916559.a n = (A218731 n : ℚ)

theorem P859232924944916559.correct : P859232924944916559.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218731, Nat.add_sub_cancel, A218731.P859232924944916559.a, A218731.P5823478663060017572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218731, Nat.add_sub_cancel, A218731.P859232924944916559.a, A218731.P5823478663060017572.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218731

/-! ## A218731.P693269915758319981

`1+28*a(n-1)` with `a(0)=0`
-/

namespace A218731.P693269915758319981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + 28 * a (n - 1)

end

end A218731.P693269915758319981

namespace A218731

/-- `1+28*a(n-1)` -/
def P693269915758319981.Spec : Prop :=
  ∀ n, (P693269915758319981.a n : ℤ) = A218731 n

end A218731

/-! ## A218731.P15531253463239975155

`lcm(28, a(n-1))+1` with `a(0)=0`
-/

namespace A218731.P15531253463239975155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 28 (a (n - 1)) + 1

end

end A218731.P15531253463239975155

namespace A218731

/-- `lcm(28, a(n-1))+1` -/
def P15531253463239975155.Spec : Prop :=
  ∀ n, (P15531253463239975155.a n : ℤ) = A218731 n

end A218731

/-! ## A218731.P15334706055817018534

`or(1, 28*a(n-1))` with `a(0)=0`
-/

namespace A218731.P15334706055817018534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (28 * a (n - 1))

end

end A218731.P15334706055817018534

namespace A218731

/-- `or(1, 28*a(n-1))` -/
def P15334706055817018534.Spec : Prop :=
  ∀ n, (P15334706055817018534.a n : ℤ) = A218731 n

end A218731

/-! ## A218731.P16422054365633685978

`xor(1, 28*a(n-1))` with `a(0)=0`
-/

namespace A218731.P16422054365633685978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (28 * a (n - 1))

end

end A218731.P16422054365633685978

namespace A218731

/-- `xor(1, 28*a(n-1))` -/
def P16422054365633685978.Spec : Prop :=
  ∀ n, (P16422054365633685978.a n : ℤ) = A218731 n

end A218731

/-! ## A218731.P3783872111718785971

`∑[28*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218731.P3783872111718785971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  28 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218731.P3783872111718785971

namespace A218731

/-- `∑[28*a(n-1)]` -/
def P3783872111718785971.Spec : Prop :=
  ∀ n, (P3783872111718785971.a n : ℤ) = A218731 n

end A218731

/-! ## A218731.P16902664061595573895

`1-(a(n-1)-29*a(n-1))` with `a(0)=0`
-/

namespace A218731.P16902664061595573895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 29 * a (n - 1))

end

end A218731.P16902664061595573895

namespace A218731

/-- `1-(a(n-1)-29*a(n-1))` -/
def P16902664061595573895.Spec : Prop :=
  ∀ n, P16902664061595573895.a n = A218731 n

end A218731

/-!
# A218732: a(n) = (29^n - 1)/28.

The programs for A218732, the canonical program `A218732.P15344510160193302253` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218732 has offset 0).

The definition of A218732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(29^n-1)/28` (program `A218732.P17977154014997656008`, by `A218732.P17977154014997656008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218732.P16017234237773163607

`ogf(x/(1-30x+29x^2))`
-/

namespace A218732.P16017234237773163607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -30, 29] n

end

end A218732.P16017234237773163607

namespace A218732

/-- `ogf(x/(1-30x+29x^2))` -/
def P16017234237773163607.Spec : Prop :=
  ∀ n, P16017234237773163607.a n = A218732 n

end A218732

/-! ## A218732.P15344510160193302253

`30*a(n-1)-29*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218732

/-- `30*a(n-1)-29*a(n-2)` -/
def P15344510160193302253.Spec : Prop :=
  ∀ n, P15344510160193302253.a n = A218732 n

theorem P15344510160193302253.correct : P15344510160193302253.Spec := by
  intro n
  simp only [A218732]

end A218732

/-! ## A218732.P152277953051173398

`floor(29^n/28)`
-/

namespace A218732.P152277953051173398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(29 ^ n : ℚ) / 28⌋

end

end A218732.P152277953051173398

namespace A218732

/-- `floor(29^n/28)` -/
def P152277953051173398.Spec : Prop :=
  ∀ n, P152277953051173398.a n = A218732 n

end A218732

/-! ## A218732.P17977154014997656008

`(29^n-1)/28`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218732.P17977154014997656008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((29 ^ n : ℤ) - 1 : ℚ) / 28

end

end A218732.P17977154014997656008

namespace A218732

/-- `(29^n-1)/28` -/
def P17977154014997656008.Spec : Prop :=
  ∀ n, P17977154014997656008.a n = (A218732 n : ℚ)

theorem P17977154014997656008.correct : P17977154014997656008.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218732, Nat.add_sub_cancel, A218732.P17977154014997656008.a, A218732.P15344510160193302253.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218732, Nat.add_sub_cancel, A218732.P17977154014997656008.a, A218732.P15344510160193302253.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218732

/-! ## A218732.P4210503093827750524

`29*a(n-1)+1` with `a(0)=0`
-/

namespace A218732.P4210503093827750524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  29 * a (n - 1) + 1

end

end A218732.P4210503093827750524

namespace A218732

/-- `29*a(n-1)+1` -/
def P4210503093827750524.Spec : Prop :=
  ∀ n, (P4210503093827750524.a n : ℤ) = A218732 n

end A218732

/-! ## A218732.P10715354847910069082

`lcm(29, a(n-1))+1` with `a(0)=0`
-/

namespace A218732.P10715354847910069082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 29 (a (n - 1)) + 1

end

end A218732.P10715354847910069082

namespace A218732

/-- `lcm(29, a(n-1))+1` -/
def P10715354847910069082.Spec : Prop :=
  ∀ n, (P10715354847910069082.a n : ℤ) = A218732 n

end A218732

/-! ## A218732.P4435029781243416185

`∑[29*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218732.P4435029781243416185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  29 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218732.P4435029781243416185

namespace A218732

/-- `∑[29*a(n-1)]` -/
def P4435029781243416185.Spec : Prop :=
  ∀ n, (P4435029781243416185.a n : ℤ) = A218732 n

end A218732

/-! ## A218732.P6184084225522160888

`-xor(29*a(n-1), -1)` with `a(0)=0`
-/

namespace A218732.P6184084225522160888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -Int.xor (29 * a (n - 1)) (-1)

end

end A218732.P6184084225522160888

namespace A218732

/-- `-xor(29*a(n-1), -1)` -/
def P6184084225522160888.Spec : Prop :=
  ∀ n, P6184084225522160888.a n = A218732 n

end A218732

/-! ## A218732.P18402811229976756319

`1-(a(n-1)-30*a(n-1))` with `a(0)=0`
-/

namespace A218732.P18402811229976756319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 30 * a (n - 1))

end

end A218732.P18402811229976756319

namespace A218732

/-- `1-(a(n-1)-30*a(n-1))` -/
def P18402811229976756319.Spec : Prop :=
  ∀ n, P18402811229976756319.a n = A218732 n

end A218732

/-! ## A218732.P6007793638075362571

`∑[29^(A028310(n)-1)]-1`
-/

namespace A218732.P6007793638075362571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (29 : ℚ) ^ (A028310 n - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A218732.P6007793638075362571

namespace A218732

/-- `∑[29^(A028310(n)-1)]-1` -/
def P6007793638075362571.Spec : Prop :=
  ∀ n, P6007793638075362571.a n = (A218732 n : ℚ)

end A218732

/-!
# A218733: a(n) = (30^n - 1)/29.

The programs for A218733, the canonical program `A218733.P9923569957565494807` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218733 has offset 0).

The definition of A218733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(30^n-1)/29` (program `A218733.P12477498998365653009`, by `A218733.P12477498998365653009.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218733.P7159381023809772531

`ogf(x/(1-31x+30x^2))`
-/

namespace A218733.P7159381023809772531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -31, 30] n

end

end A218733.P7159381023809772531

namespace A218733

/-- `ogf(x/(1-31x+30x^2))` -/
def P7159381023809772531.Spec : Prop :=
  ∀ n, P7159381023809772531.a n = A218733 n

end A218733

/-! ## A218733.P9923569957565494807

`31*a(n-1)-30*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218733

/-- `31*a(n-1)-30*a(n-2)` -/
def P9923569957565494807.Spec : Prop :=
  ∀ n, P9923569957565494807.a n = A218733 n

theorem P9923569957565494807.correct : P9923569957565494807.Spec := by
  intro n
  simp only [A218733]

end A218733

/-! ## A218733.P17440177948065137903

`floor(30^n/29)`
-/

namespace A218733.P17440177948065137903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(30 ^ n : ℚ) / 29⌋

end

end A218733.P17440177948065137903

namespace A218733

/-- `floor(30^n/29)` -/
def P17440177948065137903.Spec : Prop :=
  ∀ n, P17440177948065137903.a n = A218733 n

end A218733

/-! ## A218733.P12477498998365653009

`(30^n-1)/29`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218733.P12477498998365653009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((30 ^ n : ℤ) - 1 : ℚ) / 29

end

end A218733.P12477498998365653009

namespace A218733

/-- `(30^n-1)/29` -/
def P12477498998365653009.Spec : Prop :=
  ∀ n, P12477498998365653009.a n = (A218733 n : ℚ)

theorem P12477498998365653009.correct : P12477498998365653009.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218733, Nat.add_sub_cancel, A218733.P12477498998365653009.a, A218733.P9923569957565494807.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218733, Nat.add_sub_cancel, A218733.P12477498998365653009.a, A218733.P9923569957565494807.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218733

/-! ## A218733.P11591188320702835267

`30*a(n-1)+1` with `a(0)=0`
-/

namespace A218733.P11591188320702835267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  30 * a (n - 1) + 1

end

end A218733.P11591188320702835267

namespace A218733

/-- `30*a(n-1)+1` -/
def P11591188320702835267.Spec : Prop :=
  ∀ n, (P11591188320702835267.a n : ℤ) = A218733 n

end A218733

/-! ## A218733.P3657980270423734196

`or(1, 30*a(n-1))` with `a(0)=0`
-/

namespace A218733.P3657980270423734196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (30 * a (n - 1))

end

end A218733.P3657980270423734196

namespace A218733

/-- `or(1, 30*a(n-1))` -/
def P3657980270423734196.Spec : Prop :=
  ∀ n, (P3657980270423734196.a n : ℤ) = A218733 n

end A218733

/-! ## A218733.P8971413047419890814

`xor(1, 30*a(n-1))` with `a(0)=0`
-/

namespace A218733.P8971413047419890814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (30 * a (n - 1))

end

end A218733.P8971413047419890814

namespace A218733

/-- `xor(1, 30*a(n-1))` -/
def P8971413047419890814.Spec : Prop :=
  ∀ n, (P8971413047419890814.a n : ℤ) = A218733 n

end A218733

/-! ## A218733.P4038268148191785099

`∑[30*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218733.P4038268148191785099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  30 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218733.P4038268148191785099

namespace A218733

/-- `∑[30*a(n-1)]` -/
def P4038268148191785099.Spec : Prop :=
  ∀ n, (P4038268148191785099.a n : ℤ) = A218733 n

end A218733

/-! ## A218733.P10756512450482237797

`or(1, lcm(30, a(n-1)))` with `a(0)=0`
-/

namespace A218733.P10756512450482237797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (Nat.lcm 30 (a (n - 1)))

end

end A218733.P10756512450482237797

namespace A218733

/-- `or(1, lcm(30, a(n-1)))` -/
def P10756512450482237797.Spec : Prop :=
  ∀ n, (P10756512450482237797.a n : ℤ) = A218733 n

end A218733

/-! ## A218733.P4382055011720199120

`1-(a(n-1)-31*a(n-1))` with `a(0)=0`
-/

namespace A218733.P4382055011720199120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 31 * a (n - 1))

end

end A218733.P4382055011720199120

namespace A218733

/-- `1-(a(n-1)-31*a(n-1))` -/
def P4382055011720199120.Spec : Prop :=
  ∀ n, P4382055011720199120.a n = A218733 n

end A218733

/-!
# A218734: a(n) = (31^n - 1)/30.

The programs for A218734, the canonical program `A218734.P5431283314780184151` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218734 has offset 0).

The definition of A218734 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(31^n-1)/30` (program `A218734.P6435233979722881062`, by `A218734.P6435233979722881062.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218734.P8888036575299338892

`ogf(x/(1-32x+31x^2))`
-/

namespace A218734.P8888036575299338892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -32, 31] n

end

end A218734.P8888036575299338892

namespace A218734

/-- `ogf(x/(1-32x+31x^2))` -/
def P8888036575299338892.Spec : Prop :=
  ∀ n, P8888036575299338892.a n = A218734 n

end A218734

/-! ## A218734.P5431283314780184151

`32*a(n-1)-31*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218734

/-- `32*a(n-1)-31*a(n-2)` -/
def P5431283314780184151.Spec : Prop :=
  ∀ n, P5431283314780184151.a n = A218734 n

theorem P5431283314780184151.correct : P5431283314780184151.Spec := by
  intro n
  simp only [A218734]

end A218734

/-! ## A218734.P7844493232162901094

`floor(31^n/30)`
-/

namespace A218734.P7844493232162901094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(31 ^ n : ℚ) / 30⌋

end

end A218734.P7844493232162901094

namespace A218734

/-- `floor(31^n/30)` -/
def P7844493232162901094.Spec : Prop :=
  ∀ n, P7844493232162901094.a n = A218734 n

end A218734

/-! ## A218734.P6435233979722881062

`(31^n-1)/30`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218734.P6435233979722881062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((31 ^ n : ℤ) - 1 : ℚ) / 30

end

end A218734.P6435233979722881062

namespace A218734

/-- `(31^n-1)/30` -/
def P6435233979722881062.Spec : Prop :=
  ∀ n, P6435233979722881062.a n = (A218734 n : ℚ)

theorem P6435233979722881062.correct : P6435233979722881062.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218734, Nat.add_sub_cancel, A218734.P6435233979722881062.a, A218734.P5431283314780184151.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218734, Nat.add_sub_cancel, A218734.P6435233979722881062.a, A218734.P5431283314780184151.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218734

/-! ## A218734.P8982110094903929908

`31*a(n-1)+1` with `a(0)=0`
-/

namespace A218734.P8982110094903929908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  31 * a (n - 1) + 1

end

end A218734.P8982110094903929908

namespace A218734

/-- `31*a(n-1)+1` -/
def P8982110094903929908.Spec : Prop :=
  ∀ n, (P8982110094903929908.a n : ℤ) = A218734 n

end A218734

/-! ## A218734.P3618616686869753024

`∑[31*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218734.P3618616686869753024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  31 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218734.P3618616686869753024

namespace A218734

/-- `∑[31*a(n-1)]` -/
def P3618616686869753024.Spec : Prop :=
  ∀ n, (P3618616686869753024.a n : ℤ) = A218734 n

end A218734

/-! ## A218734.P17486663417483526553

`a(n-1)+31^(n-1)` with `a(0)=0`
-/

namespace A218734.P17486663417483526553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (31 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A218734.P17486663417483526553

namespace A218734

/-- `a(n-1)+31^(n-1)` -/
def P17486663417483526553.Spec : Prop :=
  ∀ n, P17486663417483526553.a n = (A218734 n : ℚ)

end A218734

/-! ## A218734.P3401545502607727515

`∑[31^abs(ceil(n*sin(11)))]-1`
-/

namespace A218734.P3401545502607727515
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (31 : ℚ) ^ (|⌈(n : ℝ) * Real.sin (11 : ℝ)⌉| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A218734.P3401545502607727515

namespace A218734

/-- `∑[31^abs(ceil(n*sin(11)))]-1` -/
def P3401545502607727515.Spec : Prop :=
  ∀ n, P3401545502607727515.a n = (A218734 n : ℚ)

end A218734

/-! ## A218734.P9411932206852604281

`Δ[31*a(n-1)-(1-n)]` with `a(0)=0`
-/

namespace A218734.P9411932206852604281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  31 * f1 (n - 1) - (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218734.P9411932206852604281

namespace A218734

/-- `Δ[31*a(n-1)-(1-n)]` -/
def P9411932206852604281.Spec : Prop :=
  ∀ n, P9411932206852604281.a n = A218734 n

end A218734

/-! ## A218734.P9424075557193411238

`∑[31^abs(ceil(sin(n)²)-n)]-1`
-/

namespace A218734.P9424075557193411238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (31 : ℚ) ^ (|⌈Real.sin (n : ℝ) ^ 2⌉ - (n : ℤ)| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A218734.P9424075557193411238

namespace A218734

/-- `∑[31^abs(ceil(sin(n)²)-n)]-1` -/
def P9424075557193411238.Spec : Prop :=
  ∀ n, P9424075557193411238.a n = (A218734 n : ℚ)

end A218734

/-!
# A218735: Values of x in the solutions to x^2 - 3xy + y^2 + 29 = 0, where 0 < x < y.

The programs for A218735, the canonical program `A218735.P13031373752223723315` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218735 has offset 1).

The definition of A218735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218735.P1909819948221356864

`ogf((5+6x-6x^2-5x^3)/(1-3x^2+x^4))`
-/

namespace A218735.P1909819948221356864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 6, -6, -5] [1, 0, -3, 0, 1] n

end

end A218735.P1909819948221356864

namespace A218735

/-- `ogf((5+6x-6x^2-5x^3)/(1-3x^2+x^4))` -/
def P1909819948221356864.Spec : Prop :=
  ∀ n, P1909819948221356864.a n = A218735 (n + 1)

end A218735

/-! ## A218735.P13031373752223723315

`3*a(n-2)-a(n-4)` with `a(0)=5, a(1)=6, a(2)=9, a(3)=13`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218735

/-- `3*a(n-2)-a(n-4)` -/
def P13031373752223723315.Spec : Prop :=
  ∀ n, P13031373752223723315.a n = A218735 (n + 1)

theorem P13031373752223723315.correct : P13031373752223723315.Spec := by
  intro n
  simp only [A218735, Nat.add_sub_cancel]

end A218735

/-! ## A218735.P9923411980127889033

`a(n-1)+A097132(n)-1` with `a(0)=5`
-/

namespace A218735.P9923411980127889033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (A097132 n - 1)

end

end A218735.P9923411980127889033

namespace A218735

/-- `a(n-1)+A097132(n)-1` -/
def P9923411980127889033.Spec : Prop :=
  ∀ n, P9923411980127889033.a n = A218735 (n + 1)

end A218735

/-! ## A218735.P14943130643680047451

`A237133(n+1)+A094967(n)`
-/

namespace A218735.P14943130643680047451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237133 (n + 1) + A094967 n

end

end A218735.P14943130643680047451

namespace A218735

/-- `A237133(n+1)+A094967(n)` -/
def P14943130643680047451.Spec : Prop :=
  ∀ n, P14943130643680047451.a n = A218735 (n + 1)

end A218735

/-! ## A218735.P3000642870097048660

`A237132(n+1)+2*A094967(n)`
-/

namespace A218735.P3000642870097048660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237132 (n + 1) + 2 * A094967 n

end

end A218735.P3000642870097048660

namespace A218735

/-- `A237132(n+1)+2*A094967(n)` -/
def P3000642870097048660.Spec : Prop :=
  ∀ n, P3000642870097048660.a n = A218735 (n + 1)

end A218735

/-! ## A218735.P4786336976834028150

`A237132(n+1)+2*A000045(A109613(n))`
-/

namespace A218735.P4786336976834028150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237132 (n + 1) + 2 * A000045 (A109613 n).toNat

end

end A218735.P4786336976834028150

namespace A218735

/-- `A237132(n+1)+2*A000045(A109613(n))` -/
def P4786336976834028150.Spec : Prop :=
  ∀ n, P4786336976834028150.a n = A218735 (n + 1)

end A218735

/-! ## A218735.P14709477957160872768

`A237133(n+1)+A237133(n+1)-A237132(n+1)`
-/

namespace A218735.P14709477957160872768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237133 (n + 1) + (A237133 (n + 1) - A237132 (n + 1))

end

end A218735.P14709477957160872768

namespace A218735

/-- `A237133(n+1)+A237133(n+1)-A237132(n+1)` -/
def P14709477957160872768.Spec : Prop :=
  ∀ n, P14709477957160872768.a n = A218735 (n + 1)

end A218735

/-! ## A218735.P8340375380139858531

`2*A237133(n+1)-A237132(n+1)`
-/

namespace A218735.P8340375380139858531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237133 (n + 1) - A237132 (n + 1)

end

end A218735.P8340375380139858531

namespace A218735

/-- `2*A237133(n+1)-A237132(n+1)` -/
def P8340375380139858531.Spec : Prop :=
  ∀ n, P8340375380139858531.a n = A218735 (n + 1)

end A218735

/-!
# A218736: a(n) = (33^n - 1)/32.

The programs for A218736, the canonical program `A218736.P5535993210781736363` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218736 has offset 0).

The definition of A218736 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(33^n-1)/32` (program `A218736.P1926880909034078093`, by `A218736.P1926880909034078093.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218736.P2542409221560007273

`ogf(x/(1-34x+33x^2))`
-/

namespace A218736.P2542409221560007273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -34, 33] n

end

end A218736.P2542409221560007273

namespace A218736

/-- `ogf(x/(1-34x+33x^2))` -/
def P2542409221560007273.Spec : Prop :=
  ∀ n, P2542409221560007273.a n = A218736 n

end A218736

/-! ## A218736.P5535993210781736363

`34*a(n-1)-33*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218736

/-- `34*a(n-1)-33*a(n-2)` -/
def P5535993210781736363.Spec : Prop :=
  ∀ n, P5535993210781736363.a n = A218736 n

theorem P5535993210781736363.correct : P5535993210781736363.Spec := by
  intro n
  simp only [A218736]

end A218736

/-! ## A218736.P13005219176359605640

`floor(33^n/32)`
-/

namespace A218736.P13005219176359605640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(33 ^ n : ℚ) / 32⌋

end

end A218736.P13005219176359605640

namespace A218736

/-- `floor(33^n/32)` -/
def P13005219176359605640.Spec : Prop :=
  ∀ n, P13005219176359605640.a n = A218736 n

end A218736

/-! ## A218736.P1926880909034078093

`(33^n-1)/32`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218736.P1926880909034078093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((33 ^ n : ℤ) - 1 : ℚ) / 32

end

end A218736.P1926880909034078093

namespace A218736

/-- `(33^n-1)/32` -/
def P1926880909034078093.Spec : Prop :=
  ∀ n, P1926880909034078093.a n = (A218736 n : ℚ)

theorem P1926880909034078093.correct : P1926880909034078093.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218736, Nat.add_sub_cancel, A218736.P1926880909034078093.a, A218736.P5535993210781736363.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218736, Nat.add_sub_cancel, A218736.P1926880909034078093.a, A218736.P5535993210781736363.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218736

/-! ## A218736.P14130331434161353795

`1+33*a(n-1)` with `a(0)=0`
-/

namespace A218736.P14130331434161353795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + 33 * a (n - 1)

end

end A218736.P14130331434161353795

namespace A218736

/-- `1+33*a(n-1)` -/
def P14130331434161353795.Spec : Prop :=
  ∀ n, (P14130331434161353795.a n : ℤ) = A218736 n

end A218736

/-! ## A218736.P5491083229485215724

`lcm(33, a(n-1))+1` with `a(0)=0`
-/

namespace A218736.P5491083229485215724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 33 (a (n - 1)) + 1

end

end A218736.P5491083229485215724

namespace A218736

/-- `lcm(33, a(n-1))+1` -/
def P5491083229485215724.Spec : Prop :=
  ∀ n, (P5491083229485215724.a n : ℤ) = A218736 n

end A218736

/-! ## A218736.P69725835550331199

`∑[33*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218736.P69725835550331199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  33 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218736.P69725835550331199

namespace A218736

/-- `∑[33*a(n-1)]` -/
def P69725835550331199.Spec : Prop :=
  ∀ n, (P69725835550331199.a n : ℤ) = A218736 n

end A218736

/-! ## A218736.P14732796797377256819

`1-(a(n-1)-34*a(n-1))` with `a(0)=0`
-/

namespace A218736.P14732796797377256819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 34 * a (n - 1))

end

end A218736.P14732796797377256819

namespace A218736

/-- `1-(a(n-1)-34*a(n-1))` -/
def P14732796797377256819.Spec : Prop :=
  ∀ n, P14732796797377256819.a n = A218736 n

end A218736

/-! ## A218736.P4025108011701481308

`∑[A009977(n)]-A009977(n)`
-/

namespace A218736.P4025108011701481308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A009977 n

end

end A218736.P4025108011701481308

namespace A218736

/-- `∑[A009977(n)]-A009977(n)` -/
def P4025108011701481308.Spec : Prop :=
  ∀ n, P4025108011701481308.a n = A218736 n

end A218736

/-!
# A218737: a(n) = (34^n - 1)/33.

The programs for A218737, the canonical program `A218737.P15565916828874567590` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218737 has offset 0).

The definition of A218737 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(34^n-1)/33` (program `A218737.P446323522688726880`, by `A218737.P446323522688726880.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218737.P4450680559810068702

`ogf(x/(1-35x+34x^2))`
-/

namespace A218737.P4450680559810068702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -35, 34] n

end

end A218737.P4450680559810068702

namespace A218737

/-- `ogf(x/(1-35x+34x^2))` -/
def P4450680559810068702.Spec : Prop :=
  ∀ n, P4450680559810068702.a n = A218737 n

end A218737

/-! ## A218737.P15565916828874567590

`35*a(n-1)-34*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218737

/-- `35*a(n-1)-34*a(n-2)` -/
def P15565916828874567590.Spec : Prop :=
  ∀ n, P15565916828874567590.a n = A218737 n

theorem P15565916828874567590.correct : P15565916828874567590.Spec := by
  intro n
  simp only [A218737]

end A218737

/-! ## A218737.P1986097439435298955

`floor(34^n/33)`
-/

namespace A218737.P1986097439435298955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(34 ^ n : ℚ) / 33⌋

end

end A218737.P1986097439435298955

namespace A218737

/-- `floor(34^n/33)` -/
def P1986097439435298955.Spec : Prop :=
  ∀ n, P1986097439435298955.a n = A218737 n

end A218737

/-! ## A218737.P446323522688726880

`(34^n-1)/33`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218737.P446323522688726880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((34 ^ n : ℤ) - 1 : ℚ) / 33

end

end A218737.P446323522688726880

namespace A218737

/-- `(34^n-1)/33` -/
def P446323522688726880.Spec : Prop :=
  ∀ n, P446323522688726880.a n = (A218737 n : ℚ)

theorem P446323522688726880.correct : P446323522688726880.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218737, Nat.add_sub_cancel, A218737.P446323522688726880.a, A218737.P15565916828874567590.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218737, Nat.add_sub_cancel, A218737.P446323522688726880.a, A218737.P15565916828874567590.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218737

/-! ## A218737.P847658530457478303

`34*a(n-1)+1` with `a(0)=0`
-/

namespace A218737.P847658530457478303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  34 * a (n - 1) + 1

end

end A218737.P847658530457478303

namespace A218737

/-- `34*a(n-1)+1` -/
def P847658530457478303.Spec : Prop :=
  ∀ n, (P847658530457478303.a n : ℤ) = A218737 n

end A218737

/-! ## A218737.P14137206913016260905

`or(1, 34*a(n-1))` with `a(0)=0`
-/

namespace A218737.P14137206913016260905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (34 * a (n - 1))

end

end A218737.P14137206913016260905

namespace A218737

/-- `or(1, 34*a(n-1))` -/
def P14137206913016260905.Spec : Prop :=
  ∀ n, (P14137206913016260905.a n : ℤ) = A218737 n

end A218737

/-! ## A218737.P13425235665948494986

`xor(1, 34*a(n-1))` with `a(0)=0`
-/

namespace A218737.P13425235665948494986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (34 * a (n - 1))

end

end A218737.P13425235665948494986

namespace A218737

/-- `xor(1, 34*a(n-1))` -/
def P13425235665948494986.Spec : Prop :=
  ∀ n, (P13425235665948494986.a n : ℤ) = A218737 n

end A218737

/-! ## A218737.P7807561723122316352

`∑[34*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218737.P7807561723122316352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  34 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218737.P7807561723122316352

namespace A218737

/-- `∑[34*a(n-1)]` -/
def P7807561723122316352.Spec : Prop :=
  ∀ n, (P7807561723122316352.a n : ℤ) = A218737 n

end A218737

/-! ## A218737.P12317662965463346183

`xor(1, lcm(34, a(n-1)))` with `a(0)=0`
-/

namespace A218737.P12317662965463346183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (Nat.lcm 34 (a (n - 1)))

end

end A218737.P12317662965463346183

namespace A218737

/-- `xor(1, lcm(34, a(n-1)))` -/
def P12317662965463346183.Spec : Prop :=
  ∀ n, (P12317662965463346183.a n : ℤ) = A218737 n

end A218737

/-! ## A218737.P16414241778803534036

`1-(a(n-1)-35*a(n-1))` with `a(0)=0`
-/

namespace A218737.P16414241778803534036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 35 * a (n - 1))

end

end A218737.P16414241778803534036

namespace A218737

/-- `1-(a(n-1)-35*a(n-1))` -/
def P16414241778803534036.Spec : Prop :=
  ∀ n, P16414241778803534036.a n = A218737 n

end A218737

/-!
# A218738: a(n) = (35^n - 1)/34.

The programs for A218738, the canonical program `A218738.P17121300674099464025` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218738 has offset 0).

The definition of A218738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(35^n-1)/34` (program `A218738.P16260108864878497519`, by `A218738.P16260108864878497519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218738.P9730902922972139642

`ogf(x/(1-36x+35x^2))`
-/

namespace A218738.P9730902922972139642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -36, 35] n

end

end A218738.P9730902922972139642

namespace A218738

/-- `ogf(x/(1-36x+35x^2))` -/
def P9730902922972139642.Spec : Prop :=
  ∀ n, P9730902922972139642.a n = A218738 n

end A218738

/-! ## A218738.P17121300674099464025

`36*a(n-1)-35*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218738

/-- `36*a(n-1)-35*a(n-2)` -/
def P17121300674099464025.Spec : Prop :=
  ∀ n, P17121300674099464025.a n = A218738 n

theorem P17121300674099464025.correct : P17121300674099464025.Spec := by
  intro n
  simp only [A218738]

end A218738

/-! ## A218738.P7409346082483104295

`floor(35^n/34)`
-/

namespace A218738.P7409346082483104295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(35 ^ n : ℚ) / 34⌋

end

end A218738.P7409346082483104295

namespace A218738

/-- `floor(35^n/34)` -/
def P7409346082483104295.Spec : Prop :=
  ∀ n, P7409346082483104295.a n = A218738 n

end A218738

/-! ## A218738.P16260108864878497519

`(35^n-1)/34`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218738.P16260108864878497519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((35 ^ n : ℤ) - 1 : ℚ) / 34

end

end A218738.P16260108864878497519

namespace A218738

/-- `(35^n-1)/34` -/
def P16260108864878497519.Spec : Prop :=
  ∀ n, P16260108864878497519.a n = (A218738 n : ℚ)

theorem P16260108864878497519.correct : P16260108864878497519.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218738, Nat.add_sub_cancel, A218738.P16260108864878497519.a, A218738.P17121300674099464025.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218738, Nat.add_sub_cancel, A218738.P16260108864878497519.a, A218738.P17121300674099464025.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218738

/-! ## A218738.P17327761578925872831

`35*a(n-1)+1` with `a(0)=0`
-/

namespace A218738.P17327761578925872831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  35 * a (n - 1) + 1

end

end A218738.P17327761578925872831

namespace A218738

/-- `35*a(n-1)+1` -/
def P17327761578925872831.Spec : Prop :=
  ∀ n, (P17327761578925872831.a n : ℤ) = A218738 n

end A218738

/-! ## A218738.P2829442114302230453

`∑[35*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218738.P2829442114302230453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  35 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218738.P2829442114302230453

namespace A218738

/-- `∑[35*a(n-1)]` -/
def P2829442114302230453.Spec : Prop :=
  ∀ n, (P2829442114302230453.a n : ℤ) = A218738 n

end A218738

/-! ## A218738.P10719276219033192041

`lcm(35, a(n-1))+1` with `a(0)=0, a(1)=1`
-/

namespace A218738.P10719276219033192041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lcm 35 (a (n - 1)) + 1

end

end A218738.P10719276219033192041

namespace A218738

/-- `lcm(35, a(n-1))+1` -/
def P10719276219033192041.Spec : Prop :=
  ∀ n, (P10719276219033192041.a n : ℤ) = A218738 n

end A218738

/-! ## A218738.P5806988664044876778

`a(n-1)+35^(n-1)` with `a(0)=0`
-/

namespace A218738.P5806988664044876778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (35 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A218738.P5806988664044876778

namespace A218738

/-- `a(n-1)+35^(n-1)` -/
def P5806988664044876778.Spec : Prop :=
  ∀ n, P5806988664044876778.a n = (A218738 n : ℚ)

end A218738

/-! ## A218738.P598883398527287492

`1-(a(n-1)-36*a(n-1))` with `a(0)=0`
-/

namespace A218738.P598883398527287492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 36 * a (n - 1))

end

end A218738.P598883398527287492

namespace A218738

/-- `1-(a(n-1)-36*a(n-1))` -/
def P598883398527287492.Spec : Prop :=
  ∀ n, P598883398527287492.a n = A218738 n

end A218738

/-! ## A218738.P10679563013010634147

`∑[35^n]%(35^n)`
-/

namespace A218738.P10679563013010634147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 35 ^ n

end

end A218738.P10679563013010634147

namespace A218738

/-- `∑[35^n]%(35^n)` -/
def P10679563013010634147.Spec : Prop :=
  ∀ n, (P10679563013010634147.a n : ℤ) = A218738 n

end A218738

/-!
# A218739: a(n) = (36^n - 1)/35.

The programs for A218739, the canonical program `A218739.P9298696295368011734` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218739 has offset 0).

The definition of A218739 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(36^n-1)/35` (program `A218739.P3402821923501791386`, by `A218739.P3402821923501791386.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218739.P13888617826541701076

`ogf(x/(1-37x+36x^2))`
-/

namespace A218739.P13888617826541701076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -37, 36] n

end

end A218739.P13888617826541701076

namespace A218739

/-- `ogf(x/(1-37x+36x^2))` -/
def P13888617826541701076.Spec : Prop :=
  ∀ n, P13888617826541701076.a n = A218739 n

end A218739

/-! ## A218739.P9298696295368011734

`37*a(n-1)-36*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218739

/-- `37*a(n-1)-36*a(n-2)` -/
def P9298696295368011734.Spec : Prop :=
  ∀ n, P9298696295368011734.a n = A218739 n

theorem P9298696295368011734.correct : P9298696295368011734.Spec := by
  intro n
  simp only [A218739]

end A218739

/-! ## A218739.P650251701581290868

`floor(36^n/35)`
-/

namespace A218739.P650251701581290868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(36 ^ n : ℚ) / 35⌋

end

end A218739.P650251701581290868

namespace A218739

/-- `floor(36^n/35)` -/
def P650251701581290868.Spec : Prop :=
  ∀ n, P650251701581290868.a n = A218739 n

end A218739

/-! ## A218739.P3402821923501791386

`(36^n-1)/35`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218739.P3402821923501791386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((36 ^ n : ℤ) - 1 : ℚ) / 35

end

end A218739.P3402821923501791386

namespace A218739

/-- `(36^n-1)/35` -/
def P3402821923501791386.Spec : Prop :=
  ∀ n, P3402821923501791386.a n = (A218739 n : ℚ)

theorem P3402821923501791386.correct : P3402821923501791386.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218739, Nat.add_sub_cancel, A218739.P3402821923501791386.a, A218739.P9298696295368011734.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218739, Nat.add_sub_cancel, A218739.P3402821923501791386.a, A218739.P9298696295368011734.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218739

/-! ## A218739.P14908966331399777642

`36*a(n-1)+1` with `a(0)=0`
-/

namespace A218739.P14908966331399777642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  36 * a (n - 1) + 1

end

end A218739.P14908966331399777642

namespace A218739

/-- `36*a(n-1)+1` -/
def P14908966331399777642.Spec : Prop :=
  ∀ n, (P14908966331399777642.a n : ℤ) = A218739 n

end A218739

/-! ## A218739.P2267919546721742176

`or(1, 36*a(n-1))` with `a(0)=0`
-/

namespace A218739.P2267919546721742176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (36 * a (n - 1))

end

end A218739.P2267919546721742176

namespace A218739

/-- `or(1, 36*a(n-1))` -/
def P2267919546721742176.Spec : Prop :=
  ∀ n, (P2267919546721742176.a n : ℤ) = A218739 n

end A218739

/-! ## A218739.P12177855870818146215

`xor(1, 36*a(n-1))` with `a(0)=0`
-/

namespace A218739.P12177855870818146215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (36 * a (n - 1))

end

end A218739.P12177855870818146215

namespace A218739

/-- `xor(1, 36*a(n-1))` -/
def P12177855870818146215.Spec : Prop :=
  ∀ n, (P12177855870818146215.a n : ℤ) = A218739 n

end A218739

/-! ## A218739.P3784576846059228331

`a(n-1)/(1/6)²+1` with `a(0)=0`
-/

namespace A218739.P3784576846059228331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((1 : ℚ) / 6) ^ 2 + 1

end

end A218739.P3784576846059228331

namespace A218739

/-- `a(n-1)/(1/6)²+1` -/
def P3784576846059228331.Spec : Prop :=
  ∀ n, P3784576846059228331.a n = (A218739 n : ℚ)

end A218739

/-! ## A218739.P5420014030007535727

`a(n-1)+(6^(n-1))²` with `a(0)=0`
-/

namespace A218739.P5420014030007535727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2

end

end A218739.P5420014030007535727

namespace A218739

/-- `a(n-1)+(6^(n-1))²` -/
def P5420014030007535727.Spec : Prop :=
  ∀ n, P5420014030007535727.a n = (A218739 n : ℚ)

end A218739

/-! ## A218739.P12080582589752675533

`1-(a(n-1)-37*a(n-1))` with `a(0)=0`
-/

namespace A218739.P12080582589752675533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 37 * a (n - 1))

end

end A218739.P12080582589752675533

namespace A218739

/-- `1-(a(n-1)-37*a(n-1))` -/
def P12080582589752675533.Spec : Prop :=
  ∀ n, P12080582589752675533.a n = A218739 n

end A218739

/-!
# A218740: a(n) = (37^n - 1)/36.

The programs for A218740, the canonical program `A218740.P8358735525987358521` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218740 has offset 0).

The definition of A218740 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(37^n-1)/36` (program `A218740.P16807543120745505825`, by `A218740.P16807543120745505825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218740.P4824753187403519191

`ogf(x/(1-38x+37x^2))`
-/

namespace A218740.P4824753187403519191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -38, 37] n

end

end A218740.P4824753187403519191

namespace A218740

/-- `ogf(x/(1-38x+37x^2))` -/
def P4824753187403519191.Spec : Prop :=
  ∀ n, P4824753187403519191.a n = A218740 n

end A218740

/-! ## A218740.P8358735525987358521

`38*a(n-1)-37*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218740

/-- `38*a(n-1)-37*a(n-2)` -/
def P8358735525987358521.Spec : Prop :=
  ∀ n, P8358735525987358521.a n = A218740 n

theorem P8358735525987358521.correct : P8358735525987358521.Spec := by
  intro n
  simp only [A218740]

end A218740

/-! ## A218740.P9260032304364981224

`floor(37^n/36)`
-/

namespace A218740.P9260032304364981224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(37 ^ n : ℚ) / 36⌋

end

end A218740.P9260032304364981224

namespace A218740

/-- `floor(37^n/36)` -/
def P9260032304364981224.Spec : Prop :=
  ∀ n, P9260032304364981224.a n = A218740 n

end A218740

/-! ## A218740.P16807543120745505825

`(37^n-1)/36`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218740.P16807543120745505825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((37 ^ n : ℤ) - 1 : ℚ) / 36

end

end A218740.P16807543120745505825

namespace A218740

/-- `(37^n-1)/36` -/
def P16807543120745505825.Spec : Prop :=
  ∀ n, P16807543120745505825.a n = (A218740 n : ℚ)

theorem P16807543120745505825.correct : P16807543120745505825.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218740, Nat.add_sub_cancel, A218740.P16807543120745505825.a, A218740.P8358735525987358521.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218740, Nat.add_sub_cancel, A218740.P16807543120745505825.a, A218740.P8358735525987358521.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218740

/-! ## A218740.P9838355100005927850

`37*a(n-1)+1` with `a(0)=0`
-/

namespace A218740.P9838355100005927850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  37 * a (n - 1) + 1

end

end A218740.P9838355100005927850

namespace A218740

/-- `37*a(n-1)+1` -/
def P9838355100005927850.Spec : Prop :=
  ∀ n, (P9838355100005927850.a n : ℤ) = A218740 n

end A218740

/-! ## A218740.P11351619036074234987

`∑[37*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218740.P11351619036074234987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  37 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218740.P11351619036074234987

namespace A218740

/-- `∑[37*a(n-1)]` -/
def P11351619036074234987.Spec : Prop :=
  ∀ n, (P11351619036074234987.a n : ℤ) = A218740 n

end A218740

/-! ## A218740.P10443021667118119367

`a(n-1)+37^(n-1)` with `a(0)=0`
-/

namespace A218740.P10443021667118119367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (37 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A218740.P10443021667118119367

namespace A218740

/-- `a(n-1)+37^(n-1)` -/
def P10443021667118119367.Spec : Prop :=
  ∀ n, P10443021667118119367.a n = (A218740 n : ℚ)

end A218740

/-! ## A218740.P15391602581903039851

`1-(a(n-1)-38*a(n-1))` with `a(0)=0`
-/

namespace A218740.P15391602581903039851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 38 * a (n - 1))

end

end A218740.P15391602581903039851

namespace A218740

/-- `1-(a(n-1)-38*a(n-1))` -/
def P15391602581903039851.Spec : Prop :=
  ∀ n, P15391602581903039851.a n = A218740 n

end A218740

/-! ## A218740.P13640743503625029789

`∑[37^n]%(37^n)`
-/

namespace A218740.P13640743503625029789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 37 ^ n

end

end A218740.P13640743503625029789

namespace A218740

/-- `∑[37^n]%(37^n)` -/
def P13640743503625029789.Spec : Prop :=
  ∀ n, (P13640743503625029789.a n : ℤ) = A218740 n

end A218740

/-! ## A218740.P11335062131509261686

`∑[A009981(n)]-A009981(n)`
-/

namespace A218740.P11335062131509261686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A009981 n

end

end A218740.P11335062131509261686

namespace A218740

/-- `∑[A009981(n)]-A009981(n)` -/
def P11335062131509261686.Spec : Prop :=
  ∀ n, P11335062131509261686.a n = A218740 n

end A218740

/-!
# A218741: a(n) = (38^n - 1)/37.

The programs for A218741, the canonical program `A218741.P7206092528621060985` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218741 has offset 0).

The definition of A218741 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(38^n-1)/37` (program `A218741.P961043531494733327`, by `A218741.P961043531494733327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218741.P16025337956885090117

`ogf(x/(1-39x+38x^2))`
-/

namespace A218741.P16025337956885090117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -39, 38] n

end

end A218741.P16025337956885090117

namespace A218741

/-- `ogf(x/(1-39x+38x^2))` -/
def P16025337956885090117.Spec : Prop :=
  ∀ n, P16025337956885090117.a n = A218741 n

end A218741

/-! ## A218741.P7206092528621060985

`39*a(n-1)-38*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218741

/-- `39*a(n-1)-38*a(n-2)` -/
def P7206092528621060985.Spec : Prop :=
  ∀ n, P7206092528621060985.a n = A218741 n

theorem P7206092528621060985.correct : P7206092528621060985.Spec := by
  intro n
  simp only [A218741]

end A218741

/-! ## A218741.P8902192709217540926

`floor(38^n/37)`
-/

namespace A218741.P8902192709217540926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(38 ^ n : ℚ) / 37⌋

end

end A218741.P8902192709217540926

namespace A218741

/-- `floor(38^n/37)` -/
def P8902192709217540926.Spec : Prop :=
  ∀ n, P8902192709217540926.a n = A218741 n

end A218741

/-! ## A218741.P961043531494733327

`(38^n-1)/37`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218741.P961043531494733327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((38 ^ n : ℤ) - 1 : ℚ) / 37

end

end A218741.P961043531494733327

namespace A218741

/-- `(38^n-1)/37` -/
def P961043531494733327.Spec : Prop :=
  ∀ n, P961043531494733327.a n = (A218741 n : ℚ)

theorem P961043531494733327.correct : P961043531494733327.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218741, Nat.add_sub_cancel, A218741.P961043531494733327.a, A218741.P7206092528621060985.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218741, Nat.add_sub_cancel, A218741.P961043531494733327.a, A218741.P7206092528621060985.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218741

/-! ## A218741.P9444950356532996004

`1+38*a(n-1)` with `a(0)=0`
-/

namespace A218741.P9444950356532996004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + 38 * a (n - 1)

end

end A218741.P9444950356532996004

namespace A218741

/-- `1+38*a(n-1)` -/
def P9444950356532996004.Spec : Prop :=
  ∀ n, (P9444950356532996004.a n : ℤ) = A218741 n

end A218741

/-! ## A218741.P15398518905768766581

`∑[38*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218741.P15398518905768766581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  38 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218741.P15398518905768766581

namespace A218741

/-- `∑[38*a(n-1)]` -/
def P15398518905768766581.Spec : Prop :=
  ∀ n, (P15398518905768766581.a n : ℤ) = A218741 n

end A218741

/-! ## A218741.P6821663339711385802

`xor(1, 38*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A218741.P6821663339711385802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor 1 (38 * a (n - 1))

end

end A218741.P6821663339711385802

namespace A218741

/-- `xor(1, 38*a(n-1))` -/
def P6821663339711385802.Spec : Prop :=
  ∀ n, (P6821663339711385802.a n : ℤ) = A218741 n

end A218741

/-! ## A218741.P5417010863096023333

`or(1, 19*2*a(n-1))` with `a(0)=0`
-/

namespace A218741.P5417010863096023333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (19 * (2 * a (n - 1)))

end

end A218741.P5417010863096023333

namespace A218741

/-- `or(1, 19*2*a(n-1))` -/
def P5417010863096023333.Spec : Prop :=
  ∀ n, (P5417010863096023333.a n : ℤ) = A218741 n

end A218741

/-! ## A218741.P16584308062722919542

`1-(a(n-1)-39*a(n-1))` with `a(0)=0`
-/

namespace A218741.P16584308062722919542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 39 * a (n - 1))

end

end A218741.P16584308062722919542

namespace A218741

/-- `1-(a(n-1)-39*a(n-1))` -/
def P16584308062722919542.Spec : Prop :=
  ∀ n, P16584308062722919542.a n = A218741 n

end A218741

/-! ## A218741.P16456487470664620196

`∑[A009982(n)]-A009982(n)`
-/

namespace A218741.P16456487470664620196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A009982 n

end

end A218741.P16456487470664620196

namespace A218741

/-- `∑[A009982(n)]-A009982(n)` -/
def P16456487470664620196.Spec : Prop :=
  ∀ n, P16456487470664620196.a n = A218741 n

end A218741

/-!
# A218742: a(n) = (39^n - 1)/38.

The programs for A218742, the canonical program `A218742.P3068626315292424955` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218742 has offset 0).

The definition of A218742 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(39^n-1)/38` (program `A218742.P7538545377267987654`, by `A218742.P7538545377267987654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218742.P16403781512012768364

`ogf(x/(1-40x+39x^2))`
-/

namespace A218742.P16403781512012768364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -40, 39] n

end

end A218742.P16403781512012768364

namespace A218742

/-- `ogf(x/(1-40x+39x^2))` -/
def P16403781512012768364.Spec : Prop :=
  ∀ n, P16403781512012768364.a n = A218742 n

end A218742

/-! ## A218742.P3068626315292424955

`40*a(n-1)-39*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218742

/-- `40*a(n-1)-39*a(n-2)` -/
def P3068626315292424955.Spec : Prop :=
  ∀ n, P3068626315292424955.a n = A218742 n

theorem P3068626315292424955.correct : P3068626315292424955.Spec := by
  intro n
  simp only [A218742]

end A218742

/-! ## A218742.P5217927240437921786

`floor(39^n/38)`
-/

namespace A218742.P5217927240437921786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(39 ^ n : ℚ) / 38⌋

end

end A218742.P5217927240437921786

namespace A218742

/-- `floor(39^n/38)` -/
def P5217927240437921786.Spec : Prop :=
  ∀ n, P5217927240437921786.a n = A218742 n

end A218742

/-! ## A218742.P7538545377267987654

`(39^n-1)/38`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218742.P7538545377267987654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((39 ^ n : ℤ) - 1 : ℚ) / 38

end

end A218742.P7538545377267987654

namespace A218742

/-- `(39^n-1)/38` -/
def P7538545377267987654.Spec : Prop :=
  ∀ n, P7538545377267987654.a n = (A218742 n : ℚ)

theorem P7538545377267987654.correct : P7538545377267987654.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218742, Nat.add_sub_cancel, A218742.P7538545377267987654.a, A218742.P3068626315292424955.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218742, Nat.add_sub_cancel, A218742.P7538545377267987654.a, A218742.P3068626315292424955.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218742

/-! ## A218742.P7976904738918811693

`39*a(n-1)+1` with `a(0)=0`
-/

namespace A218742.P7976904738918811693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  39 * a (n - 1) + 1

end

end A218742.P7976904738918811693

namespace A218742

/-- `39*a(n-1)+1` -/
def P7976904738918811693.Spec : Prop :=
  ∀ n, (P7976904738918811693.a n : ℤ) = A218742 n

end A218742

/-! ## A218742.P13800292816395495024

`∑[39*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218742.P13800292816395495024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  39 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218742.P13800292816395495024

namespace A218742

/-- `∑[39*a(n-1)]` -/
def P13800292816395495024.Spec : Prop :=
  ∀ n, (P13800292816395495024.a n : ℤ) = A218742 n

end A218742

/-! ## A218742.P14108274474404737649

`lcm(39, a(n-1))+1` with `a(0)=0, a(1)=1`
-/

namespace A218742.P14108274474404737649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lcm 39 (a (n - 1)) + 1

end

end A218742.P14108274474404737649

namespace A218742

/-- `lcm(39, a(n-1))+1` -/
def P14108274474404737649.Spec : Prop :=
  ∀ n, (P14108274474404737649.a n : ℤ) = A218742 n

end A218742

/-! ## A218742.P7849729496126550196

`1-(a(n-1)-40*a(n-1))` with `a(0)=0`
-/

namespace A218742.P7849729496126550196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 40 * a (n - 1))

end

end A218742.P7849729496126550196

namespace A218742

/-- `1-(a(n-1)-40*a(n-1))` -/
def P7849729496126550196.Spec : Prop :=
  ∀ n, P7849729496126550196.a n = A218742 n

end A218742

/-! ## A218742.P2801353065028006237

`∑[39^(A003056(∑[n]+1)-1)]-1`
-/

namespace A218742.P2801353065028006237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (39 : ℚ) ^ (A003056 (∑ j ∈ Finset.range (n + 1), f2 j + 1) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A218742.P2801353065028006237

namespace A218742

/-- `∑[39^(A003056(∑[n]+1)-1)]-1` -/
def P2801353065028006237.Spec : Prop :=
  ∀ n, P2801353065028006237.a n = (A218742 n : ℚ)

end A218742

/-!
# A218743: a(n) = (40^n - 1)/39.

The programs for A218743, the canonical program `A218743.P17625228139919644604` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218743 has offset 0).

The definition of A218743 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(40^n-1)/39` (program `A218743.P8550302948379940025`, by `A218743.P8550302948379940025.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218743.P4712282206613544451

`ogf(x/(1-41x+40x^2))`
-/

namespace A218743.P4712282206613544451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -41, 40] n

end

end A218743.P4712282206613544451

namespace A218743

/-- `ogf(x/(1-41x+40x^2))` -/
def P4712282206613544451.Spec : Prop :=
  ∀ n, P4712282206613544451.a n = A218743 n

end A218743

/-! ## A218743.P17625228139919644604

`41*a(n-1)-40*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218743

/-- `41*a(n-1)-40*a(n-2)` -/
def P17625228139919644604.Spec : Prop :=
  ∀ n, P17625228139919644604.a n = A218743 n

theorem P17625228139919644604.correct : P17625228139919644604.Spec := by
  intro n
  simp only [A218743]

end A218743

/-! ## A218743.P16483792033135811621

`floor(40^n/39)`
-/

namespace A218743.P16483792033135811621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(40 ^ n : ℚ) / 39⌋

end

end A218743.P16483792033135811621

namespace A218743

/-- `floor(40^n/39)` -/
def P16483792033135811621.Spec : Prop :=
  ∀ n, P16483792033135811621.a n = A218743 n

end A218743

/-! ## A218743.P8550302948379940025

`(40^n-1)/39`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218743.P8550302948379940025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((40 ^ n : ℤ) - 1 : ℚ) / 39

end

end A218743.P8550302948379940025

namespace A218743

/-- `(40^n-1)/39` -/
def P8550302948379940025.Spec : Prop :=
  ∀ n, P8550302948379940025.a n = (A218743 n : ℚ)

theorem P8550302948379940025.correct : P8550302948379940025.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218743, Nat.add_sub_cancel, A218743.P8550302948379940025.a, A218743.P17625228139919644604.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218743, Nat.add_sub_cancel, A218743.P8550302948379940025.a, A218743.P17625228139919644604.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218743

/-! ## A218743.P12750276940139626483

`1+40*a(n-1)` with `a(0)=0`
-/

namespace A218743.P12750276940139626483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + 40 * a (n - 1)

end

end A218743.P12750276940139626483

namespace A218743

/-- `1+40*a(n-1)` -/
def P12750276940139626483.Spec : Prop :=
  ∀ n, (P12750276940139626483.a n : ℤ) = A218743 n

end A218743

/-! ## A218743.P9639619497736691655

`or(1, 40*a(n-1))` with `a(0)=0`
-/

namespace A218743.P9639619497736691655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (40 * a (n - 1))

end

end A218743.P9639619497736691655

namespace A218743

/-- `or(1, 40*a(n-1))` -/
def P9639619497736691655.Spec : Prop :=
  ∀ n, (P9639619497736691655.a n : ℤ) = A218743 n

end A218743

/-! ## A218743.P10027270806629060812

`xor(1, 40*a(n-1))` with `a(0)=0`
-/

namespace A218743.P10027270806629060812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (40 * a (n - 1))

end

end A218743.P10027270806629060812

namespace A218743

/-- `xor(1, 40*a(n-1))` -/
def P10027270806629060812.Spec : Prop :=
  ∀ n, (P10027270806629060812.a n : ℤ) = A218743 n

end A218743

/-! ## A218743.P2991069329109977947

`∑[40*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218743.P2991069329109977947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  40 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218743.P2991069329109977947

namespace A218743

/-- `∑[40*a(n-1)]` -/
def P2991069329109977947.Spec : Prop :=
  ∀ n, (P2991069329109977947.a n : ℤ) = A218743 n

end A218743

/-! ## A218743.P3034851602917358762

`lcm(40, a(n-1))+1` with `a(0)=0, a(1)=1`
-/

namespace A218743.P3034851602917358762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lcm 40 (a (n - 1)) + 1

end

end A218743.P3034851602917358762

namespace A218743

/-- `lcm(40, a(n-1))+1` -/
def P3034851602917358762.Spec : Prop :=
  ∀ n, (P3034851602917358762.a n : ℤ) = A218743 n

end A218743

/-! ## A218743.P1509394026695544802

`1-(a(n-1)-41*a(n-1))` with `a(0)=0`
-/

namespace A218743.P1509394026695544802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 41 * a (n - 1))

end

end A218743.P1509394026695544802

namespace A218743

/-- `1-(a(n-1)-41*a(n-1))` -/
def P1509394026695544802.Spec : Prop :=
  ∀ n, P1509394026695544802.a n = A218743 n

end A218743

/-!
# A218744: a(n) = (41^n - 1)/40.

The programs for A218744, the canonical program `A218744.P6535884034822564536` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218744 has offset 0).

The definition of A218744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218744.P6535884034822564536

`floor(41^n/40)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218744

/-- `floor(41^n/40)` -/
def P6535884034822564536.Spec : Prop :=
  ∀ n, P6535884034822564536.a n = A218744 n

theorem P6535884034822564536.correct : P6535884034822564536.Spec := by
  intro n
  simp only [A218744]

end A218744

/-! ## A218744.P7886951758616319221

`(41^n-1)/40`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218744.P7886951758616319221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((41 ^ n : ℤ) - 1 : ℚ) / 40

end

end A218744.P7886951758616319221

namespace A218744

/-- `(41^n-1)/40` -/
def P7886951758616319221.Spec : Prop :=
  ∀ n, P7886951758616319221.a n = (A218744 n : ℚ)

end A218744

/-! ## A218744.P17477362462796159278

`ogf(x/(1-42x+41x^2))`
-/

namespace A218744.P17477362462796159278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -42, 41] n

end

end A218744.P17477362462796159278

namespace A218744

/-- `ogf(x/(1-42x+41x^2))` -/
def P17477362462796159278.Spec : Prop :=
  ∀ n, P17477362462796159278.a n = A218744 n

end A218744

/-! ## A218744.P17183146607141257316

`42*a(n-1)-41*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A218744.P17183146607141257316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  42 * a (n - 1) - 41 * a (n - 2)

end

end A218744.P17183146607141257316

namespace A218744

/-- `42*a(n-1)-41*a(n-2)` -/
def P17183146607141257316.Spec : Prop :=
  ∀ n, P17183146607141257316.a n = A218744 n

end A218744

/-! ## A218744.P5489789217414494868

`1+41*a(n-1)` with `a(0)=0`
-/

namespace A218744.P5489789217414494868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + 41 * a (n - 1)

end

end A218744.P5489789217414494868

namespace A218744

/-- `1+41*a(n-1)` -/
def P5489789217414494868.Spec : Prop :=
  ∀ n, (P5489789217414494868.a n : ℤ) = A218744 n

end A218744

/-! ## A218744.P14937811530880494757

`∑[41*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218744.P14937811530880494757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  41 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218744.P14937811530880494757

namespace A218744

/-- `∑[41*a(n-1)]` -/
def P14937811530880494757.Spec : Prop :=
  ∀ n, (P14937811530880494757.a n : ℤ) = A218744 n

end A218744

/-! ## A218744.P5337528655831056679

`a(n-1)+41^(n-1)` with `a(0)=0`
-/

namespace A218744.P5337528655831056679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (41 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A218744.P5337528655831056679

namespace A218744

/-- `a(n-1)+41^(n-1)` -/
def P5337528655831056679.Spec : Prop :=
  ∀ n, P5337528655831056679.a n = (A218744 n : ℚ)

end A218744

/-! ## A218744.P8635034641369181242

`1-(a(n-1)-42*a(n-1))` with `a(0)=0`
-/

namespace A218744.P8635034641369181242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 42 * a (n - 1))

end

end A218744.P8635034641369181242

namespace A218744

/-- `1-(a(n-1)-42*a(n-1))` -/
def P8635034641369181242.Spec : Prop :=
  ∀ n, P8635034641369181242.a n = A218744 n

end A218744

/-! ## A218744.P11135790941488415842

`∑[round(41^A023443(n))]`
-/

namespace A218744.P11135790941488415842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((41 : ℚ) ^ (A023443 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218744.P11135790941488415842

namespace A218744

/-- `∑[round(41^A023443(n))]` -/
def P11135790941488415842.Spec : Prop :=
  ∀ n, P11135790941488415842.a n = A218744 n

end A218744

/-! ## A218744.P10137917885297639708

`∑[A009985(n)]-A009985(n)`
-/

namespace A218744.P10137917885297639708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A009985 n

end

end A218744.P10137917885297639708

namespace A218744

/-- `∑[A009985(n)]-A009985(n)` -/
def P10137917885297639708.Spec : Prop :=
  ∀ n, P10137917885297639708.a n = A218744 n

end A218744

/-!
# A218745: a(n) = (42^n - 1)/41.

The programs for A218745, the canonical program `A218745.P16589858922387480984` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218745 has offset 0).

The definition of A218745 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(42^n-1)/41` (program `A218745.P17901588987196518567`, by `A218745.P17901588987196518567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218745.P8344033522471845998

`ogf(x/(1-43x+42x^2))`
-/

namespace A218745.P8344033522471845998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -43, 42] n

end

end A218745.P8344033522471845998

namespace A218745

/-- `ogf(x/(1-43x+42x^2))` -/
def P8344033522471845998.Spec : Prop :=
  ∀ n, P8344033522471845998.a n = A218745 n

end A218745

/-! ## A218745.P16589858922387480984

`43*a(n-1)-42*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218745

/-- `43*a(n-1)-42*a(n-2)` -/
def P16589858922387480984.Spec : Prop :=
  ∀ n, P16589858922387480984.a n = A218745 n

theorem P16589858922387480984.correct : P16589858922387480984.Spec := by
  intro n
  simp only [A218745]

end A218745

/-! ## A218745.P17985008727039541704

`floor(42^n/41)`
-/

namespace A218745.P17985008727039541704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(42 ^ n : ℚ) / 41⌋

end

end A218745.P17985008727039541704

namespace A218745

/-- `floor(42^n/41)` -/
def P17985008727039541704.Spec : Prop :=
  ∀ n, P17985008727039541704.a n = A218745 n

end A218745

/-! ## A218745.P17901588987196518567

`(42^n-1)/41`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218745.P17901588987196518567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((42 ^ n : ℤ) - 1 : ℚ) / 41

end

end A218745.P17901588987196518567

namespace A218745

/-- `(42^n-1)/41` -/
def P17901588987196518567.Spec : Prop :=
  ∀ n, P17901588987196518567.a n = (A218745 n : ℚ)

theorem P17901588987196518567.correct : P17901588987196518567.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218745, Nat.add_sub_cancel, A218745.P17901588987196518567.a, A218745.P16589858922387480984.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218745, Nat.add_sub_cancel, A218745.P17901588987196518567.a, A218745.P16589858922387480984.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218745

/-! ## A218745.P7353610367228525714

`42*a(n-1)+1` with `a(0)=0`
-/

namespace A218745.P7353610367228525714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  42 * a (n - 1) + 1

end

end A218745.P7353610367228525714

namespace A218745

/-- `42*a(n-1)+1` -/
def P7353610367228525714.Spec : Prop :=
  ∀ n, (P7353610367228525714.a n : ℤ) = A218745 n

end A218745

/-! ## A218745.P4465634236694092281

`lcm(42, a(n-1))+1` with `a(0)=0`
-/

namespace A218745.P4465634236694092281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 42 (a (n - 1)) + 1

end

end A218745.P4465634236694092281

namespace A218745

/-- `lcm(42, a(n-1))+1` -/
def P4465634236694092281.Spec : Prop :=
  ∀ n, (P4465634236694092281.a n : ℤ) = A218745 n

end A218745

/-! ## A218745.P13572898662439262168

`∑[42*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218745.P13572898662439262168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  42 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218745.P13572898662439262168

namespace A218745

/-- `∑[42*a(n-1)]` -/
def P13572898662439262168.Spec : Prop :=
  ∀ n, (P13572898662439262168.a n : ℤ) = A218745 n

end A218745

/-! ## A218745.P2498765747479695922

`xor(1, 14*3*a(n-1))` with `a(0)=0`
-/

namespace A218745.P2498765747479695922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (14 * (3 * a (n - 1)))

end

end A218745.P2498765747479695922

namespace A218745

/-- `xor(1, 14*3*a(n-1))` -/
def P2498765747479695922.Spec : Prop :=
  ∀ n, (P2498765747479695922.a n : ℤ) = A218745 n

end A218745

/-! ## A218745.P16854045623974852736

`a(n-1)+42^(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A218745.P16854045623974852736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (42 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A218745.P16854045623974852736

namespace A218745

/-- `a(n-1)+42^(n-1)` -/
def P16854045623974852736.Spec : Prop :=
  ∀ n, P16854045623974852736.a n = (A218745 n : ℚ)

end A218745

/-! ## A218745.P9707792944359123604

`1-(a(n-1)-43*a(n-1))` with `a(0)=0`
-/

namespace A218745.P9707792944359123604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 43 * a (n - 1))

end

end A218745.P9707792944359123604

namespace A218745

/-- `1-(a(n-1)-43*a(n-1))` -/
def P9707792944359123604.Spec : Prop :=
  ∀ n, P9707792944359123604.a n = A218745 n

end A218745

/-!
# A218746: a(n) = (43^n - 1)/42.

The programs for A218746, the canonical program `A218746.P15988415674141918712` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218746 has offset 0).

The definition of A218746 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(43^n-1)/42` (program `A218746.P12341822873810704621`, by `A218746.P12341822873810704621.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218746.P17544440347955678766

`ogf(x/(1-44x+43x^2))`
-/

namespace A218746.P17544440347955678766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -44, 43] n

end

end A218746.P17544440347955678766

namespace A218746

/-- `ogf(x/(1-44x+43x^2))` -/
def P17544440347955678766.Spec : Prop :=
  ∀ n, P17544440347955678766.a n = A218746 n

end A218746

/-! ## A218746.P15988415674141918712

`44*a(n-1)-43*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218746

/-- `44*a(n-1)-43*a(n-2)` -/
def P15988415674141918712.Spec : Prop :=
  ∀ n, P15988415674141918712.a n = A218746 n

theorem P15988415674141918712.correct : P15988415674141918712.Spec := by
  intro n
  simp only [A218746]

end A218746

/-! ## A218746.P15134303241473963558

`floor(43^n/42)`
-/

namespace A218746.P15134303241473963558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(43 ^ n : ℚ) / 42⌋

end

end A218746.P15134303241473963558

namespace A218746

/-- `floor(43^n/42)` -/
def P15134303241473963558.Spec : Prop :=
  ∀ n, P15134303241473963558.a n = A218746 n

end A218746

/-! ## A218746.P12341822873810704621

`(43^n-1)/42`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218746.P12341822873810704621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((43 ^ n : ℤ) - 1 : ℚ) / 42

end

end A218746.P12341822873810704621

namespace A218746

/-- `(43^n-1)/42` -/
def P12341822873810704621.Spec : Prop :=
  ∀ n, P12341822873810704621.a n = (A218746 n : ℚ)

theorem P12341822873810704621.correct : P12341822873810704621.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218746, Nat.add_sub_cancel, A218746.P12341822873810704621.a, A218746.P15988415674141918712.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218746, Nat.add_sub_cancel, A218746.P12341822873810704621.a, A218746.P15988415674141918712.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218746

/-! ## A218746.P12243524488769303075

`43*a(n-1)+1` with `a(0)=0`
-/

namespace A218746.P12243524488769303075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  43 * a (n - 1) + 1

end

end A218746.P12243524488769303075

namespace A218746

/-- `43*a(n-1)+1` -/
def P12243524488769303075.Spec : Prop :=
  ∀ n, (P12243524488769303075.a n : ℤ) = A218746 n

end A218746

/-! ## A218746.P3663989498623967786

`∑[43*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218746.P3663989498623967786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  43 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218746.P3663989498623967786

namespace A218746

/-- `∑[43*a(n-1)]` -/
def P3663989498623967786.Spec : Prop :=
  ∀ n, (P3663989498623967786.a n : ℤ) = A218746 n

end A218746

/-! ## A218746.P6860809350173366655

`1-(a(n-1)-44*a(n-1))` with `a(0)=0`
-/

namespace A218746.P6860809350173366655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 44 * a (n - 1))

end

end A218746.P6860809350173366655

namespace A218746

/-- `1-(a(n-1)-44*a(n-1))` -/
def P6860809350173366655.Spec : Prop :=
  ∀ n, P6860809350173366655.a n = A218746 n

end A218746

/-! ## A218746.P13689030907433035371

`∑[43^n]%(43^n)`
-/

namespace A218746.P13689030907433035371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 43 ^ n

end

end A218746.P13689030907433035371

namespace A218746

/-- `∑[43^n]%(43^n)` -/
def P13689030907433035371.Spec : Prop :=
  ∀ n, (P13689030907433035371.a n : ℤ) = A218746 n

end A218746

/-! ## A218746.P6210899230725405649

`∑[A009987(n)]-A009987(n)`
-/

namespace A218746.P6210899230725405649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A009987 n

end

end A218746.P6210899230725405649

namespace A218746

/-- `∑[A009987(n)]-A009987(n)` -/
def P6210899230725405649.Spec : Prop :=
  ∀ n, P6210899230725405649.a n = A218746 n

end A218746

/-!
# A218747: a(n) = (44^n - 1)/43.

The programs for A218747, the canonical program `A218747.P17566758968883012695` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218747 has offset 0).

The definition of A218747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(44^n-1)/43` (program `A218747.P11646039372574357006`, by `A218747.P11646039372574357006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218747.P9939806003527724677

`ogf(x/(1-45x+44x^2))`
-/

namespace A218747.P9939806003527724677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -45, 44] n

end

end A218747.P9939806003527724677

namespace A218747

/-- `ogf(x/(1-45x+44x^2))` -/
def P9939806003527724677.Spec : Prop :=
  ∀ n, P9939806003527724677.a n = A218747 n

end A218747

/-! ## A218747.P17566758968883012695

`45*a(n-1)-44*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218747

/-- `45*a(n-1)-44*a(n-2)` -/
def P17566758968883012695.Spec : Prop :=
  ∀ n, P17566758968883012695.a n = A218747 n

theorem P17566758968883012695.correct : P17566758968883012695.Spec := by
  intro n
  simp only [A218747]

end A218747

/-! ## A218747.P13206899781076591417

`floor(44^n/43)`
-/

namespace A218747.P13206899781076591417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(44 ^ n : ℚ) / 43⌋

end

end A218747.P13206899781076591417

namespace A218747

/-- `floor(44^n/43)` -/
def P13206899781076591417.Spec : Prop :=
  ∀ n, P13206899781076591417.a n = A218747 n

end A218747

/-! ## A218747.P11646039372574357006

`(44^n-1)/43`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218747.P11646039372574357006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((44 ^ n : ℤ) - 1 : ℚ) / 43

end

end A218747.P11646039372574357006

namespace A218747

/-- `(44^n-1)/43` -/
def P11646039372574357006.Spec : Prop :=
  ∀ n, P11646039372574357006.a n = (A218747 n : ℚ)

theorem P11646039372574357006.correct : P11646039372574357006.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A218747, Nat.add_sub_cancel, A218747.P11646039372574357006.a, A218747.P17566758968883012695.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A218747, Nat.add_sub_cancel, A218747.P11646039372574357006.a, A218747.P17566758968883012695.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218747

/-! ## A218747.P16691095192171173422

`44*a(n-1)+1` with `a(0)=0`
-/

namespace A218747.P16691095192171173422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  44 * a (n - 1) + 1

end

end A218747.P16691095192171173422

namespace A218747

/-- `44*a(n-1)+1` -/
def P16691095192171173422.Spec : Prop :=
  ∀ n, (P16691095192171173422.a n : ℤ) = A218747 n

end A218747

/-! ## A218747.P4943544332467755879

`xor(1, 44*a(n-1))` with `a(0)=0`
-/

namespace A218747.P4943544332467755879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (44 * a (n - 1))

end

end A218747.P4943544332467755879

namespace A218747

/-- `xor(1, 44*a(n-1))` -/
def P4943544332467755879.Spec : Prop :=
  ∀ n, (P4943544332467755879.a n : ℤ) = A218747 n

end A218747

/-! ## A218747.P11946437853917148821

`∑[44*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218747.P11946437853917148821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  44 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218747.P11946437853917148821

namespace A218747

/-- `∑[44*a(n-1)]` -/
def P11946437853917148821.Spec : Prop :=
  ∀ n, (P11946437853917148821.a n : ℤ) = A218747 n

end A218747

/-! ## A218747.P16251801652871072418

`or(1, 4*lcm(11, a(n-1)))` with `a(0)=0`
-/

namespace A218747.P16251801652871072418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (4 * Nat.lcm 11 (a (n - 1)))

end

end A218747.P16251801652871072418

namespace A218747

/-- `or(1, 4*lcm(11, a(n-1)))` -/
def P16251801652871072418.Spec : Prop :=
  ∀ n, (P16251801652871072418.a n : ℤ) = A218747 n

end A218747

/-! ## A218747.P8036263410753907907

`a(n-1)+44^(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A218747.P8036263410753907907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (44 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A218747.P8036263410753907907

namespace A218747

/-- `a(n-1)+44^(n-1)` -/
def P8036263410753907907.Spec : Prop :=
  ∀ n, P8036263410753907907.a n = (A218747 n : ℚ)

end A218747

/-! ## A218747.P384678917573157406

`1-(a(n-1)-45*a(n-1))` with `a(0)=0`
-/

namespace A218747.P384678917573157406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 45 * a (n - 1))

end

end A218747.P384678917573157406

namespace A218747

/-- `1-(a(n-1)-45*a(n-1))` -/
def P384678917573157406.Spec : Prop :=
  ∀ n, P384678917573157406.a n = A218747 n

end A218747

/-!
# A218748: a(n) = (45^n - 1)/44.

The programs for A218748, the canonical program `A218748.P11295922530663435409` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218748 has offset 0).

The definition of A218748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(45^n-1)/44` (program `A218748.P8388580716201651890`, by `A218748.P8388580716201651890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218748.P5955015833211908131

`ogf(x/(1-46x+45x^2))`
-/

namespace A218748.P5955015833211908131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -46, 45] n

end

end A218748.P5955015833211908131

namespace A218748

/-- `ogf(x/(1-46x+45x^2))` -/
def P5955015833211908131.Spec : Prop :=
  ∀ n, P5955015833211908131.a n = A218748 n

end A218748

/-! ## A218748.P11295922530663435409

`45*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218748

/-- `45*a(n-1)+1` -/
def P11295922530663435409.Spec : Prop :=
  ∀ n, (P11295922530663435409.a n : ℤ) = A218748 n

theorem P11295922530663435409.correct : P11295922530663435409.Spec := by
  intro n
  simp only [A218748]

end A218748

/-! ## A218748.P3240108667635137053

`floor(45^n/44)`
-/

namespace A218748.P3240108667635137053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(45 ^ n : ℚ) / 44⌋

end

end A218748.P3240108667635137053

namespace A218748

/-- `floor(45^n/44)` -/
def P3240108667635137053.Spec : Prop :=
  ∀ n, P3240108667635137053.a n = A218748 n

end A218748

/-! ## A218748.P8388580716201651890

`(45^n-1)/44`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218748.P8388580716201651890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((45 ^ n : ℤ) - 1 : ℚ) / 44

end

end A218748.P8388580716201651890

namespace A218748

/-- `(45^n-1)/44` -/
def P8388580716201651890.Spec : Prop :=
  ∀ n, P8388580716201651890.a n = (A218748 n : ℚ)

theorem P8388580716201651890.correct : P8388580716201651890.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A218748, Nat.add_sub_cancel, A218748.P8388580716201651890.a, A218748.P11295922530663435409.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A218748, Nat.add_sub_cancel, A218748.P8388580716201651890.a, A218748.P11295922530663435409.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218748

/-! ## A218748.P2585264662798283847

`∑[45*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218748.P2585264662798283847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  45 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218748.P2585264662798283847

namespace A218748

/-- `∑[45*a(n-1)]` -/
def P2585264662798283847.Spec : Prop :=
  ∀ n, (P2585264662798283847.a n : ℤ) = A218748 n

end A218748

/-! ## A218748.P12125896800178044125

`a(n-1)+45^(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A218748.P12125896800178044125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (45 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A218748.P12125896800178044125

namespace A218748

/-- `a(n-1)+45^(n-1)` -/
def P12125896800178044125.Spec : Prop :=
  ∀ n, P12125896800178044125.a n = (A218748 n : ℚ)

end A218748

/-! ## A218748.P14720118997418897647

`1-(a(n-1)-46*a(n-1))` with `a(0)=0`
-/

namespace A218748.P14720118997418897647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 46 * a (n - 1))

end

end A218748.P14720118997418897647

namespace A218748

/-- `1-(a(n-1)-46*a(n-1))` -/
def P14720118997418897647.Spec : Prop :=
  ∀ n, P14720118997418897647.a n = A218748 n

end A218748

/-! ## A218748.P7250351335261631725

`∑[45^n]%(45^n)`
-/

namespace A218748.P7250351335261631725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 45 ^ n

end

end A218748.P7250351335261631725

namespace A218748

/-- `∑[45^n]%(45^n)` -/
def P7250351335261631725.Spec : Prop :=
  ∀ n, (P7250351335261631725.a n : ℤ) = A218748 n

end A218748

/-! ## A218748.P11270061822028974538

`∑[A009989(n)]-A009989(n)`
-/

namespace A218748.P11270061822028974538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A009989 n

end

end A218748.P11270061822028974538

namespace A218748

/-- `∑[A009989(n)]-A009989(n)` -/
def P11270061822028974538.Spec : Prop :=
  ∀ n, P11270061822028974538.a n = A218748 n

end A218748

/-!
# A218749: a(n) = (46^n - 1)/45.

The programs for A218749, the canonical program `A218749.P9673123714755331749` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218749 has offset 0).

The definition of A218749 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(46^n-1)/45` (program `A218749.P11481824676678750228`, by `A218749.P11481824676678750228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218749.P3458979276078454767

`ogf(x/(1-47x+46x^2))`
-/

namespace A218749.P3458979276078454767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -47, 46] n

end

end A218749.P3458979276078454767

namespace A218749

/-- `ogf(x/(1-47x+46x^2))` -/
def P3458979276078454767.Spec : Prop :=
  ∀ n, P3458979276078454767.a n = A218749 n

end A218749

/-! ## A218749.P9673123714755331749

`46*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218749

/-- `46*a(n-1)+1` -/
def P9673123714755331749.Spec : Prop :=
  ∀ n, (P9673123714755331749.a n : ℤ) = A218749 n

theorem P9673123714755331749.correct : P9673123714755331749.Spec := by
  intro n
  simp only [A218749]

end A218749

/-! ## A218749.P6993238497644791442

`floor(46^n/45)`
-/

namespace A218749.P6993238497644791442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(46 ^ n : ℚ) / 45⌋

end

end A218749.P6993238497644791442

namespace A218749

/-- `floor(46^n/45)` -/
def P6993238497644791442.Spec : Prop :=
  ∀ n, P6993238497644791442.a n = A218749 n

end A218749

/-! ## A218749.P11481824676678750228

`(46^n-1)/45`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218749.P11481824676678750228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((46 ^ n : ℤ) - 1 : ℚ) / 45

end

end A218749.P11481824676678750228

namespace A218749

/-- `(46^n-1)/45` -/
def P11481824676678750228.Spec : Prop :=
  ∀ n, P11481824676678750228.a n = (A218749 n : ℚ)

theorem P11481824676678750228.correct : P11481824676678750228.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A218749, Nat.add_sub_cancel, A218749.P11481824676678750228.a, A218749.P9673123714755331749.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A218749, Nat.add_sub_cancel, A218749.P11481824676678750228.a, A218749.P9673123714755331749.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218749

/-! ## A218749.P12946619534857491372

`xor(1, 46*a(n-1))` with `a(0)=0`
-/

namespace A218749.P12946619534857491372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (46 * a (n - 1))

end

end A218749.P12946619534857491372

namespace A218749

/-- `xor(1, 46*a(n-1))` -/
def P12946619534857491372.Spec : Prop :=
  ∀ n, (P12946619534857491372.a n : ℤ) = A218749 n

end A218749

/-! ## A218749.P1107369652472191943

`∑[46*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218749.P1107369652472191943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  46 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218749.P1107369652472191943

namespace A218749

/-- `∑[46*a(n-1)]` -/
def P1107369652472191943.Spec : Prop :=
  ∀ n, (P1107369652472191943.a n : ℤ) = A218749 n

end A218749

/-! ## A218749.P6804840855339226665

`1-(a(n-1)-47*a(n-1))` with `a(0)=0`
-/

namespace A218749.P6804840855339226665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 47 * a (n - 1))

end

end A218749.P6804840855339226665

namespace A218749

/-- `1-(a(n-1)-47*a(n-1))` -/
def P6804840855339226665.Spec : Prop :=
  ∀ n, P6804840855339226665.a n = A218749 n

end A218749

/-! ## A218749.P2618088700174578947

`∑[A009990(n)]-A009990(n)`
-/

namespace A218749.P2618088700174578947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A009990 n

end

end A218749.P2618088700174578947

namespace A218749

/-- `∑[A009990(n)]-A009990(n)` -/
def P2618088700174578947.Spec : Prop :=
  ∀ n, P2618088700174578947.a n = A218749 n

end A218749

/-!
# A218750: a(n) = (47^n - 1)/46.

The programs for A218750, the canonical program `A218750.P12186370693366744939` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218750 has offset 0).

The definition of A218750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(47^n-1)/46` (program `A218750.P577719614195369254`, by `A218750.P577719614195369254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218750.P15952343184384772998

`ogf(x/(1-48x+47x^2))`
-/

namespace A218750.P15952343184384772998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -48, 47] n

end

end A218750.P15952343184384772998

namespace A218750

/-- `ogf(x/(1-48x+47x^2))` -/
def P15952343184384772998.Spec : Prop :=
  ∀ n, P15952343184384772998.a n = A218750 n

end A218750

/-! ## A218750.P12186370693366744939

`47*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218750

/-- `47*a(n-1)+1` -/
def P12186370693366744939.Spec : Prop :=
  ∀ n, (P12186370693366744939.a n : ℤ) = A218750 n

theorem P12186370693366744939.correct : P12186370693366744939.Spec := by
  intro n
  simp only [A218750]

end A218750

/-! ## A218750.P4402034384090091476

`floor(47^n/46)`
-/

namespace A218750.P4402034384090091476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(47 ^ n : ℚ) / 46⌋

end

end A218750.P4402034384090091476

namespace A218750

/-- `floor(47^n/46)` -/
def P4402034384090091476.Spec : Prop :=
  ∀ n, P4402034384090091476.a n = A218750 n

end A218750

/-! ## A218750.P577719614195369254

`(47^n-1)/46`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218750.P577719614195369254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((47 ^ n : ℤ) - 1 : ℚ) / 46

end

end A218750.P577719614195369254

namespace A218750

/-- `(47^n-1)/46` -/
def P577719614195369254.Spec : Prop :=
  ∀ n, P577719614195369254.a n = (A218750 n : ℚ)

theorem P577719614195369254.correct : P577719614195369254.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A218750, Nat.add_sub_cancel, A218750.P577719614195369254.a, A218750.P12186370693366744939.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A218750, Nat.add_sub_cancel, A218750.P577719614195369254.a, A218750.P12186370693366744939.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218750

/-! ## A218750.P9310449889528929960

`∑[47*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218750.P9310449889528929960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  47 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218750.P9310449889528929960

namespace A218750

/-- `∑[47*a(n-1)]` -/
def P9310449889528929960.Spec : Prop :=
  ∀ n, (P9310449889528929960.a n : ℤ) = A218750 n

end A218750

/-! ## A218750.P5600384998495849131

`1-(a(n-1)-48*a(n-1))` with `a(0)=0`
-/

namespace A218750.P5600384998495849131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 48 * a (n - 1))

end

end A218750.P5600384998495849131

namespace A218750

/-- `1-(a(n-1)-48*a(n-1))` -/
def P5600384998495849131.Spec : Prop :=
  ∀ n, P5600384998495849131.a n = A218750 n

end A218750

/-! ## A218750.P11267589112584885024

`∑[47^n]%(47^n)`
-/

namespace A218750.P11267589112584885024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 47 ^ n

end

end A218750.P11267589112584885024

namespace A218750

/-- `∑[47^n]%(47^n)` -/
def P11267589112584885024.Spec : Prop :=
  ∀ n, (P11267589112584885024.a n : ℤ) = A218750 n

end A218750

/-! ## A218750.P871052356863582307

`∑[47^n]-A009991(n)`
-/

namespace A218750.P871052356863582307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A009991 n

end

end A218750.P871052356863582307

namespace A218750

/-- `∑[47^n]-A009991(n)` -/
def P871052356863582307.Spec : Prop :=
  ∀ n, P871052356863582307.a n = A218750 n

end A218750

/-!
# A218751: a(n) = (48^n - 1)/47.

The programs for A218751, the canonical program `A218751.P8824529888749691117` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218751 has offset 0).

The definition of A218751 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(48^n-1)/47` (program `A218751.P15124810007480931014`, by `A218751.P15124810007480931014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218751.P16783430816918942810

`ogf(x/(1-49x+48x^2))`
-/

namespace A218751.P16783430816918942810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -49, 48] n

end

end A218751.P16783430816918942810

namespace A218751

/-- `ogf(x/(1-49x+48x^2))` -/
def P16783430816918942810.Spec : Prop :=
  ∀ n, P16783430816918942810.a n = A218751 n

end A218751

/-! ## A218751.P8824529888749691117

`48*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218751

/-- `48*a(n-1)+1` -/
def P8824529888749691117.Spec : Prop :=
  ∀ n, (P8824529888749691117.a n : ℤ) = A218751 n

theorem P8824529888749691117.correct : P8824529888749691117.Spec := by
  intro n
  simp only [A218751]

end A218751

/-! ## A218751.P14681656311941456575

`floor(48^n/47)`
-/

namespace A218751.P14681656311941456575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(48 ^ n : ℚ) / 47⌋

end

end A218751.P14681656311941456575

namespace A218751

/-- `floor(48^n/47)` -/
def P14681656311941456575.Spec : Prop :=
  ∀ n, P14681656311941456575.a n = A218751 n

end A218751

/-! ## A218751.P15124810007480931014

`(48^n-1)/47`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218751.P15124810007480931014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((48 ^ n : ℤ) - 1 : ℚ) / 47

end

end A218751.P15124810007480931014

namespace A218751

/-- `(48^n-1)/47` -/
def P15124810007480931014.Spec : Prop :=
  ∀ n, P15124810007480931014.a n = (A218751 n : ℚ)

theorem P15124810007480931014.correct : P15124810007480931014.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A218751, Nat.add_sub_cancel, A218751.P15124810007480931014.a, A218751.P8824529888749691117.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A218751, Nat.add_sub_cancel, A218751.P15124810007480931014.a, A218751.P8824529888749691117.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218751

/-! ## A218751.P8272970935611377222

`1+48*a(n-1)` with `a(0)=0`
-/

namespace A218751.P8272970935611377222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + 48 * a (n - 1)

end

end A218751.P8272970935611377222

namespace A218751

/-- `1+48*a(n-1)` -/
def P8272970935611377222.Spec : Prop :=
  ∀ n, (P8272970935611377222.a n : ℤ) = A218751 n

theorem P8272970935611377222.correct : P8272970935611377222.Spec := by
  intro n
  simp only [A218751, Nat.add_sub_cancel, A218751.P8272970935611377222.a, A218751.P8824529888749691117.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A218751

/-! ## A218751.P6834705485699664477

`∑[48*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218751.P6834705485699664477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  48 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218751.P6834705485699664477

namespace A218751

/-- `∑[48*a(n-1)]` -/
def P6834705485699664477.Spec : Prop :=
  ∀ n, (P6834705485699664477.a n : ℤ) = A218751 n

end A218751

/-! ## A218751.P17375465906790900445

`lcm(48, a(n-1))+1` with `a(0)=0, a(1)=1`
-/

namespace A218751.P17375465906790900445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lcm 48 (a (n - 1)) + 1

end

end A218751.P17375465906790900445

namespace A218751

/-- `lcm(48, a(n-1))+1` -/
def P17375465906790900445.Spec : Prop :=
  ∀ n, (P17375465906790900445.a n : ℤ) = A218751 n

end A218751

/-! ## A218751.P4126764080302185686

`or(1, 8*6*a(n-1))` with `a(0)=0`
-/

namespace A218751.P4126764080302185686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (8 * (6 * a (n - 1)))

end

end A218751.P4126764080302185686

namespace A218751

/-- `or(1, 8*6*a(n-1))` -/
def P4126764080302185686.Spec : Prop :=
  ∀ n, (P4126764080302185686.a n : ℤ) = A218751 n

end A218751

/-! ## A218751.P9302491141352748499

`xor(1, 6*8*a(n-1))` with `a(0)=0`
-/

namespace A218751.P9302491141352748499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (6 * (8 * a (n - 1)))

end

end A218751.P9302491141352748499

namespace A218751

/-- `xor(1, 6*8*a(n-1))` -/
def P9302491141352748499.Spec : Prop :=
  ∀ n, (P9302491141352748499.a n : ℤ) = A218751 n

end A218751

/-! ## A218751.P12885353450619103336

`1-(a(n-1)-49*a(n-1))` with `a(0)=0`
-/

namespace A218751.P12885353450619103336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 49 * a (n - 1))

end

end A218751.P12885353450619103336

namespace A218751

/-- `1-(a(n-1)-49*a(n-1))` -/
def P12885353450619103336.Spec : Prop :=
  ∀ n, P12885353450619103336.a n = A218751 n

end A218751

/-!
# A218752: a(n) = (50^n - 1)/49.

The programs for A218752, the canonical program `A218752.P17461406305802521760` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218752 has offset 0).

The definition of A218752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(50^n-1)/49` (program `A218752.P15901730297085491166`, by `A218752.P15901730297085491166.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218752.P596030132201507552

`ogf(x/(1-51x+50x^2))`
-/

namespace A218752.P596030132201507552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -51, 50] n

end

end A218752.P596030132201507552

namespace A218752

/-- `ogf(x/(1-51x+50x^2))` -/
def P596030132201507552.Spec : Prop :=
  ∀ n, P596030132201507552.a n = A218752 n

end A218752

/-! ## A218752.P17461406305802521760

`50*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218752

/-- `50*a(n-1)+1` -/
def P17461406305802521760.Spec : Prop :=
  ∀ n, (P17461406305802521760.a n : ℤ) = A218752 n

theorem P17461406305802521760.correct : P17461406305802521760.Spec := by
  intro n
  simp only [A218752]

end A218752

/-! ## A218752.P5171522128503092427

`floor(50^n/49)`
-/

namespace A218752.P5171522128503092427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(50 ^ n : ℚ) / 49⌋

end

end A218752.P5171522128503092427

namespace A218752

/-- `floor(50^n/49)` -/
def P5171522128503092427.Spec : Prop :=
  ∀ n, P5171522128503092427.a n = A218752 n

end A218752

/-! ## A218752.P15901730297085491166

`(50^n-1)/49`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218752.P15901730297085491166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((50 ^ n : ℤ) - 1 : ℚ) / 49

end

end A218752.P15901730297085491166

namespace A218752

/-- `(50^n-1)/49` -/
def P15901730297085491166.Spec : Prop :=
  ∀ n, P15901730297085491166.a n = (A218752 n : ℚ)

theorem P15901730297085491166.correct : P15901730297085491166.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A218752, Nat.add_sub_cancel, A218752.P15901730297085491166.a, A218752.P17461406305802521760.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A218752, Nat.add_sub_cancel, A218752.P15901730297085491166.a, A218752.P17461406305802521760.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218752

/-! ## A218752.P16356830076377331574

`xor(1, 50*a(n-1))` with `a(0)=0`
-/

namespace A218752.P16356830076377331574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (50 * a (n - 1))

end

end A218752.P16356830076377331574

namespace A218752

/-- `xor(1, 50*a(n-1))` -/
def P16356830076377331574.Spec : Prop :=
  ∀ n, (P16356830076377331574.a n : ℤ) = A218752 n

end A218752

/-! ## A218752.P8234769656246494177

`∑[50*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A218752.P8234769656246494177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  50 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218752.P8234769656246494177

namespace A218752

/-- `∑[50*a(n-1)]` -/
def P8234769656246494177.Spec : Prop :=
  ∀ n, (P8234769656246494177.a n : ℤ) = A218752 n

end A218752

/-! ## A218752.P15732553622874664603

`or(1, 5*10*a(n-1))` with `a(0)=0`
-/

namespace A218752.P15732553622874664603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (5 * (10 * a (n - 1)))

end

end A218752.P15732553622874664603

namespace A218752

/-- `or(1, 5*10*a(n-1))` -/
def P15732553622874664603.Spec : Prop :=
  ∀ n, (P15732553622874664603.a n : ℤ) = A218752 n

end A218752

/-! ## A218752.P11812572518904675107

`26-5*(5-10*a(n-1))` with `a(0)=0`
-/

namespace A218752.P11812572518904675107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  26 - 5 * (5 - 10 * a (n - 1))

end

end A218752.P11812572518904675107

namespace A218752

/-- `26-5*(5-10*a(n-1))` -/
def P11812572518904675107.Spec : Prop :=
  ∀ n, P11812572518904675107.a n = A218752 n

end A218752

/-! ## A218752.P8268805668460673190

`∑[A165800(n)]-A165800(n)`
-/

namespace A218752.P8268805668460673190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A165800 n

end

end A218752.P8268805668460673190

namespace A218752

/-- `∑[A165800(n)]-A165800(n)` -/
def P8268805668460673190.Spec : Prop :=
  ∀ n, P8268805668460673190.a n = A218752 n

end A218752

/-! ## A218752.P12925641274286580187

`∑[A096882(2*n)]-A096882(2*n)`
-/

namespace A218752.P12925641274286580187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096882 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A096882 (2 * n)

end

end A218752.P12925641274286580187

namespace A218752

/-- `∑[A096882(2*n)]-A096882(2*n)` -/
def P12925641274286580187.Spec : Prop :=
  ∀ n, P12925641274286580187.a n = A218752 n

end A218752

/-!
# A218753: a(n) = (49^n - 1)/48.

The programs for A218753, the canonical program `A218753.P15839875506967528019` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218753 has offset 0).

The definition of A218753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(49^n-1)/48` (program `A218753.P1067312497387609621`, by `A218753.P1067312497387609621.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218753.P4153160179059302616

`ogf(x/(1-50x+49x^2))`
-/

namespace A218753.P4153160179059302616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -50, 49] n

end

end A218753.P4153160179059302616

namespace A218753

/-- `ogf(x/(1-50x+49x^2))` -/
def P4153160179059302616.Spec : Prop :=
  ∀ n, P4153160179059302616.a n = A218753 n

end A218753

/-! ## A218753.P15839875506967528019

`49*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218753

/-- `49*a(n-1)+1` -/
def P15839875506967528019.Spec : Prop :=
  ∀ n, (P15839875506967528019.a n : ℤ) = A218753 n

theorem P15839875506967528019.correct : P15839875506967528019.Spec := by
  intro n
  simp only [A218753]

end A218753

/-! ## A218753.P9105182452490487134

`floor(49^n/48)`
-/

namespace A218753.P9105182452490487134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(49 ^ n : ℚ) / 48⌋

end

end A218753.P9105182452490487134

namespace A218753

/-- `floor(49^n/48)` -/
def P9105182452490487134.Spec : Prop :=
  ∀ n, P9105182452490487134.a n = A218753 n

end A218753

/-! ## A218753.P1067312497387609621

`(49^n-1)/48`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218753.P1067312497387609621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((49 ^ n : ℤ) - 1 : ℚ) / 48

end

end A218753.P1067312497387609621

namespace A218753

/-- `(49^n-1)/48` -/
def P1067312497387609621.Spec : Prop :=
  ∀ n, P1067312497387609621.a n = (A218753 n : ℚ)

theorem P1067312497387609621.correct : P1067312497387609621.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A218753, Nat.add_sub_cancel, A218753.P1067312497387609621.a, A218753.P15839875506967528019.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A218753, Nat.add_sub_cancel, A218753.P1067312497387609621.a, A218753.P15839875506967528019.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218753

/-! ## A218753.P12726306009425627782

`∑[49*a(n-1)]-1` with `a(0)=1, a(1)=1`
-/

namespace A218753.P12726306009425627782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  49 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A218753.P12726306009425627782

namespace A218753

/-- `∑[49*a(n-1)]-1` -/
def P12726306009425627782.Spec : Prop :=
  ∀ n, P12726306009425627782.a n = A218753 n

end A218753

/-! ## A218753.P4149981461910973389

`a(n-1)/(1/7)²+1` with `a(0)=0`
-/

namespace A218753.P4149981461910973389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((1 : ℚ) / 7) ^ 2 + 1

end

end A218753.P4149981461910973389

namespace A218753

/-- `a(n-1)/(1/7)²+1` -/
def P4149981461910973389.Spec : Prop :=
  ∀ n, P4149981461910973389.a n = (A218753 n : ℚ)

end A218753

/-! ## A218753.P2015066616962662059

`a(n-1)+(7^(n-1))²` with `a(0)=0`
-/

namespace A218753.P2015066616962662059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2

end

end A218753.P2015066616962662059

namespace A218753

/-- `a(n-1)+(7^(n-1))²` -/
def P2015066616962662059.Spec : Prop :=
  ∀ n, P2015066616962662059.a n = (A218753 n : ℚ)

end A218753

/-! ## A218753.P2608296129860860879

`1-(a(n-1)-50*a(n-1))` with `a(0)=0`
-/

namespace A218753.P2608296129860860879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 50 * a (n - 1))

end

end A218753.P2608296129860860879

namespace A218753

/-- `1-(a(n-1)-50*a(n-1))` -/
def P2608296129860860879.Spec : Prop :=
  ∀ n, P2608296129860860879.a n = A218753 n

end A218753

/-! ## A218753.P10251032787872074274

`∑[A000420(n)²]-A000420(n)²`
-/

namespace A218753.P10251032787872074274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000420 n ^ 2

end

end A218753.P10251032787872074274

namespace A218753

/-- `∑[A000420(n)²]-A000420(n)²` -/
def P10251032787872074274.Spec : Prop :=
  ∀ n, P10251032787872074274.a n = A218753 n

end A218753

/-!
# A218755: Denominators of Bernoulli numbers which are == 6 (mod 9).

The programs for A218755, there is no canonical definition to state claims against.
-/

/-! ## A218755.P13184545265567927566

`A090801(lt[2, dr(A090801(n+3)-1)]+3)`
-/

namespace A218755.P13184545265567927566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A090801 (n + 3) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3)

end

end A218755.P13184545265567927566

/-! ## A218755.P9866583920427091523

`∩[2*A017197(2*n), A090801(n+2)]`
-/

namespace A218755.P9866583920427091523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017197 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218755.P9866583920427091523

/-! ## A218755.P9421794015588315828

`∩[2*A055041(n+1), A090801(n+1)]`
-/

namespace A218755.P9421794015588315828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218755.P9421794015588315828

/-! ## A218755.P13578036342360855511

`filter[A090801(n+1), A373256(#)]`
-/

namespace A218755.P13578036342360855511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A218755.P13578036342360855511

/-! ## A218755.P6992278009071935580

`∩[A017233(n), A090801(n+1)]`
-/

namespace A218755.P6992278009071935580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218755.P6992278009071935580

/-! ## A218755.P3954795660658300318

`∩[A055040(n+1), A090801(n+1)]`
-/

namespace A218755.P3954795660658300318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218755.P3954795660658300318

/-! ## A218755.P9824056052582914019

`∩[A090801(n+1), A228020(n+1)]`
-/

namespace A218755.P9824056052582914019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218755.P9824056052582914019

/-!
# A218757: Triangle read by rows: T(n,k) is the number of length-n ascent sequences without flat steps, containing k zeros.

The programs for A218757, there is no canonical definition to state claims against.
-/

/-! ## A218757.P16447866399598957967

`A199087(A325188(n)^A195663(n))`
-/

namespace A218757.P16447866399598957967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199087 (SequenceMachineLib.roundAway ((A325188 n : ℚ) ^ (A195663 n : ℤ))).toNat

end

end A218757.P16447866399598957967

/-! ## A218757.P15811509828528360979

`A344612(A009087(n+1)^A320179(n+1))`
-/

namespace A218757.P15811509828528360979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (SequenceMachineLib.roundAway ((A009087 (n + 1) : ℚ) ^ (A320179 (n + 1) : ℤ))).toNat

end

end A218757.P15811509828528360979

/-! ## A218757.P8678125653901682836

`A030998(A330462(n)^n)`
-/

namespace A218757.P8678125653901682836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 (A330462 n ^ n).toNat

end

end A218757.P8678125653901682836

/-! ## A218757.P13005958305982997002

`and(record[A303189(n)], A110540(n+1))`
-/

namespace A218757.P13005958305982997002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A110540 (n + 1))

end

end A218757.P13005958305982997002

/-! ## A218757.P8792775764464445688

`A333755(n)-A304118(A223256(n))`
-/

namespace A218757.P8792775764464445688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 n - A304118 (A223256 n).toNat

end

end A218757.P8792775764464445688

/-!
# A218758: Unmatched value maps: number of n X n binary arrays indicating the locations of corresponding elements not equal to any horizontal or vertical neighbor in a random 0..1 n X n array.

The programs for A218758, there is no canonical definition to state claims against.
-/

/-! ## A218758.P835635099594697300

`A218765(∑[4*n]+1)`
-/

namespace A218758.P835635099594697300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218758.P835635099594697300

/-! ## A218758.P17380953682851172211

`record[A218765(Δ[A235355(n)])]`
-/

namespace A218758.P17380953682851172211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218758.P17380953682851172211

/-! ## A218758.P6276606911815740694

`record[A218765(Δ[A079824(n+1)])]`
-/

namespace A218758.P6276606911815740694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218758.P6276606911815740694

/-! ## A218758.P16232019111576933679

`A218765(A001844(n))+A067169(n)`
-/

namespace A218758.P16232019111576933679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A001844 n).toNat + A067169 (n + 11)

end

end A218758.P16232019111576933679

/-!
# A218759: Unmatched value maps: number of n X 2 binary arrays indicating the locations of corresponding elements not equal to any horizontal or vertical neighbor in a random 0..1 n X 2 array.

The programs for A218759, the canonical program `A218759.P2253233517694361243` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218759 has offset 1).

The definition of A218759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218759.P2253233517694361243

`ogf((2+2x+4x^2-x^3+4x^4-2x^6)/(1-2x-x^2-3x^3-2x^5-2x^6+2x^7))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218759

/-- `ogf((2+2x+4x^2-x^3+4x^4-2x^6)/(1-2x-x^2-3x^3-2x^5-2x^6+2x^7))` -/
def P2253233517694361243.Spec : Prop :=
  ∀ n, P2253233517694361243.a n = A218759 (n + 1)

theorem P2253233517694361243.correct : P2253233517694361243.Spec := by
  intro n
  simp only [A218759, Nat.add_sub_cancel]

end A218759

/-! ## A218759.P17296735771230663314

`A219441(∑[n+2])`
-/

namespace A218759.P17296735771230663314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218759.P17296735771230663314

namespace A218759

/-- `A219441(∑[n+2])` -/
def P17296735771230663314.Spec : Prop :=
  ∀ n, P17296735771230663314.a n = A218759 (n + 1)

end A218759

/-! ## A218759.P14061787105524506096

`A218765(∑[n+1]+2)`
-/

namespace A218759.P14061787105524506096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218759.P14061787105524506096

namespace A218759

/-- `A218765(∑[n+1]+2)` -/
def P14061787105524506096.Spec : Prop :=
  ∀ n, P14061787105524506096.a n = A218759 (n + 1)

end A218759

/-! ## A218759.P1794889351387325473

`record[A219441(A101881(n)+1)]`
-/

namespace A218759.P1794889351387325473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218759.P1794889351387325473

namespace A218759

/-- `record[A219441(A101881(n)+1)]` -/
def P1794889351387325473.Spec : Prop :=
  ∀ n, P1794889351387325473.a n = A218759 (n + 1)

end A218759

/-! ## A218759.P12038272669990095418

`record[A219441(Δ[A003453(n+5)])]`
-/

namespace A218759.P12038272669990095418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218759.P12038272669990095418

namespace A218759

/-- `record[A219441(Δ[A003453(n+5)])]` -/
def P12038272669990095418.Spec : Prop :=
  ∀ n, P12038272669990095418.a n = A218759 (n + 1)

end A218759

/-!
# A218760: Unmatched value maps: number of nX3 binary arrays indicating the locations of corresponding elements not equal to any horizontal or vertical neighbor in a random 0..1 nX3 array.

The programs for A218760, there is no canonical definition to state claims against.
-/

/-! ## A218760.P7737285361375470313

`A218765(∑[n+2]+4)`
-/

namespace A218760.P7737285361375470313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218760.P7737285361375470313

/-! ## A218760.P18249120234112518956

`lcm((-1)^n, A218765(A167614(n+1)))`
-/

namespace A218760.P18249120234112518956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A218765 (A167614 (n + 1)).toNat)

end

end A218760.P18249120234112518956

/-! ## A218760.P14363531919856806756

`A218765(A167614(n+1))+A067169(n)`
-/

namespace A218760.P14363531919856806756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A167614 (n + 1)).toNat + A067169 (n + 11)

end

end A218760.P14363531919856806756

/-! ## A218760.P15877264794905150022

`A218765(A167614(n+1))+A105516(n)`
-/

namespace A218760.P15877264794905150022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A167614 (n + 1)).toNat + A105516 n

end

end A218760.P15877264794905150022

/-! ## A218760.P6602408455627461532

`A218765(A167614(n+1))+A105517(n)`
-/

namespace A218760.P6602408455627461532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A167614 (n + 1)).toNat + A105517 n

end

end A218760.P6602408455627461532

/-!
# A218761: Unmatched value maps: number of n X 4 binary arrays indicating the locations of corresponding elements not equal to any horizontal or vertical neighbor in a random 0..1 n X 4 array.

The programs for A218761, there is no canonical definition to state claims against.
-/

/-! ## A218761.P8561908080631947963

`A218765(∑[n+3]+7)`
-/

namespace A218761.P8561908080631947963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A218761.P8561908080631947963

/-! ## A218761.P15927933583300633120

`A283666(n+1)+A218765(A055998(n+2))`
-/

namespace A218761.P15927933583300633120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (n + 1) + A218765 (A055998 (n + 2)).toNat

end

end A218761.P15927933583300633120

/-! ## A218761.P10439480339014561479

`lcm(A218765(A055998(n+2)), A349236(n+1))`
-/

namespace A218761.P10439480339014561479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A218765 (A055998 (n + 2)).toNat) (A349236 (n + 1))

end

end A218761.P10439480339014561479

/-!
# A218762: Unmatched value maps: number of nX5 binary arrays indicating the locations of corresponding elements not equal to any horizontal or vertical neighbor in a random 0..1 nX5 array.

The programs for A218762, there is no canonical definition to state claims against.
-/

/-! ## A218762.P10168971426320024563

`A218765(A167499(n+3))`
-/

namespace A218762.P10168971426320024563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A167499 (n + 3)).toNat

end

end A218762.P10168971426320024563

/-! ## A218762.P17648502746785563221

`A218765(A155212(n)+13)`
-/

namespace A218762.P17648502746785563221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A155212 n + 13).toNat

end

end A218762.P17648502746785563221

/-! ## A218762.P269064897964178209

`A218765(A056000(n)+15)`
-/

namespace A218762.P269064897964178209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A056000 n + 15).toNat

end

end A218762.P269064897964178209

/-! ## A218762.P15940452401416368707

`A218765(eq[7, A066657(n)])`
-/

namespace A218762.P15940452401416368707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218762.P15940452401416368707

/-! ## A218762.P17014709051732251337

`A218765(A167614(n+3)+2)`
-/

namespace A218762.P17014709051732251337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A167614 (n + 3) + 2).toNat

end

end A218762.P17014709051732251337

/-!
# A218763: Unmatched value maps: number of nX6 binary arrays indicating the locations of corresponding elements not equal to any horizontal or vertical neighbor in a random 0..1 nX6 array.

The programs for A218763, there is no canonical definition to state claims against.
-/

/-! ## A218763.P9484757456664535337

`A218765(A056115(n)+21)`
-/

namespace A218763.P9484757456664535337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A056115 n + 21).toNat

end

end A218763.P9484757456664535337

/-! ## A218763.P14120447671226144251

`A218765(Δ[A264443(n)]+10)`
-/

namespace A218763.P14120447671226144251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (f1 (n + 1) - f1 n + 10).toNat

end

end A218763.P14120447671226144251

/-! ## A218763.P5621128092761577547

`A218765(A167499(n+4)+1)`
-/

namespace A218763.P5621128092761577547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A167499 (n + 4) + 1).toNat

end

end A218763.P5621128092761577547

/-! ## A218763.P12462929055879633448

`A218765(A077169(n+6)+1)`
-/

namespace A218763.P12462929055879633448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A077169 (n + 6) + 1).toNat

end

end A218763.P12462929055879633448

/-! ## A218763.P7949245031263887447

`A218765(A167614(n+4)+3)`
-/

namespace A218763.P7949245031263887447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A167614 (n + 4) + 3).toNat

end

end A218763.P7949245031263887447

/-!
# A218764: Unmatched value maps: number of nX7 binary arrays indicating the locations of corresponding elements not equal to any horizontal or vertical neighbor in a random 0..1 nX7 array.

The programs for A218764, there is no canonical definition to state claims against.
-/

/-! ## A218764.P8549824587949446622

`A218765(A056119(n)+28)`
-/

namespace A218764.P8549824587949446622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A056119 n + 28).toNat

end

end A218764.P8549824587949446622

/-! ## A218764.P9666398044449673665

`A218765(eq[11, A066657(n)])`
-/

namespace A218764.P9666398044449673665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218764.P9666398044449673665

/-! ## A218764.P3230695766765767083

`A218765(A166136(n+5)+1)`
-/

namespace A218764.P3230695766765767083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A166136 (n + 5) + 1).toNat

end

end A218764.P3230695766765767083

/-! ## A218764.P7200966358128230792

`A218765(A167499(n+5)+2)`
-/

namespace A218764.P7200966358128230792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A167499 (n + 5) + 2).toNat

end

end A218764.P7200966358128230792

/-! ## A218764.P9790252555176188682

`A218765(A052905(n+3)+12)`
-/

namespace A218764.P9790252555176188682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218765 (A052905 (n + 3) + 12).toNat

end

end A218764.P9790252555176188682

/-!
# A218765: T(n,k)=Unmatched value maps: number of nXk binary arrays indicating the locations of corresponding elements not equal to any horizontal or vertical neighbor in a random 0..1 nXk array.

The programs for A218765, there is no canonical definition to state claims against.
-/

/-! ## A218765.P6755064420727651099

`A219310(n+1)-A088434(A277793(n+1))`
-/

namespace A218765.P6755064420727651099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (n + 1) - A088434 (A277793 (n + 1)).toNat

end

end A218765.P6755064420727651099

/-! ## A218765.P530482254813497823

`A219310(n+1)-A184955(A055231(n+4))`
-/

namespace A218765.P530482254813497823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219310 (n + 1) - A184955 (A055231 (n + 4)).toNat

end

end A218765.P530482254813497823

/-! ## A218765.P11352419834194639691

`A338265(A219310(n+1))`
-/

namespace A218765.P11352419834194639691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338265 (A219310 (n + 1)).toNat

end

end A218765.P11352419834194639691

/-! ## A218765.P508968704668481871

`A055572(A252820(n+1)-1)+1`
-/

namespace A218765.P508968704668481871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A252820 (n + 1) - 1).toNat + 1

end

end A218765.P508968704668481871

/-! ## A218765.P16558502153844303880

`A295051(n+1)-A124778(∑[∑{e}[n+1, #]+1])`
-/

namespace A218765.P16558502153844303880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (n + 1) - A124778 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218765.P16558502153844303880

/-!
# A218766: Composite numbers with both 10 and -10 as primitive root.

The programs for A218766, there is no canonical definition to state claims against.
-/

/-! ## A218766.P230382329886373272

`∩[A146945(n+1), A158248(n+1)]`
-/

namespace A218766.P230382329886373272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218766.P230382329886373272

/-! ## A218766.P12565846167118667377

`∩[A158248(n+1), A369563(n+1)]`
-/

namespace A218766.P12565846167118667377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218766.P12565846167118667377

/-! ## A218766.P4676257834120783204

`∩[A158248(n+1), A266927(n+1)]`
-/

namespace A218766.P4676257834120783204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218766.P4676257834120783204

/-! ## A218766.P3918468080995615865

`∩[A158248(n+1), A034025(n)]`
-/

namespace A218766.P3918468080995615865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218766.P3918468080995615865

/-! ## A218766.P15362201266208272920

`filter[A158248(n+1), A353814(#)]`
-/

namespace A218766.P15362201266208272920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A218766.P15362201266208272920

/-!
# A218767: Total number of divisors and anti-divisors of n.

The programs for A218767, there is no canonical definition to state claims against.
-/

/-! ## A218767.P17796533719866863892

`A000005(n+1)+A066272(n+1)`
-/

namespace A218767.P17796533719866863892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A066272 (n + 1)

end

end A218767.P17796533719866863892

/-! ## A218767.P5584894990401544276

`A066272(n+1)+∏{e}[n+1, #+1]`
-/

namespace A218767.P5584894990401544276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A218767.P5584894990401544276

/-! ## A218767.P4575469767620794271

`A066272(n+1)+Δ[A006218(n)]`
-/

namespace A218767.P4575469767620794271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) + (f1 (n + 1) - f1 n)

end

end A218767.P4575469767620794271

/-! ## A218767.P13080658885018210320

`A066272(1+n)+Δ[A054519(n)]`
-/

namespace A218767.P13080658885018210320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (1 + n) + (f1 (n + 1) - f1 n)

end

end A218767.P13080658885018210320

/-! ## A218767.P14157292242461793917

`A066241(n+1)+A032741(n+1)`
-/

namespace A218767.P14157292242461793917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066241 (n + 1) + A032741 (n + 1)

end

end A218767.P14157292242461793917

/-! ## A218767.P12109561905909514642

`A000005(n+1)+A066241(n+1)-1`
-/

namespace A218767.P12109561905909514642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A066241 (n + 1) - 1)

end

end A218767.P12109561905909514642

/-! ## A218767.P7006834746530694463

`A066272(n+1)+∑{d}[n+1, A020639(2*#)]/2`
-/

namespace A218767.P7006834746530694463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066272 (n + 1) : ℚ) + ((∑ d ∈ Nat.divisors (f1 n), A020639 (2 * d) : ℤ) : ℚ) / 2

end

end A218767.P7006834746530694463

/-! ## A218767.P1738892254016640659

`∑{d}[n+1, A020639(2*#)]/2+A066241(n+1)-1`
-/

namespace A218767.P1738892254016640659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A020639 (2 * d) : ℤ) : ℚ) / 2 + (A066241 (n + 1) - 1 : ℚ)

end

end A218767.P1738892254016640659

/-! ## A218767.P15825092199105887956

`A066272(n+1)+∑{d}[n+1, 1-A000010(#)]+n+1`
-/

namespace A218767.P15825092199105887956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) + (∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d) + (n + 1 : ℤ))

end

end A218767.P15825092199105887956

/-! ## A218767.P7934260606883004714

`A066272(n+1)+∑{d}[n+1, 1-#]+A000203(n+1)`
-/

namespace A218767.P7934260606883004714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) + (∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + A000203 (n + 1))

end

end A218767.P7934260606883004714

/-! ## A218767.P11814883363377323869

`abs(∑{d}[n+1, 1-A000010(#)]+n+1)+A066241(n+1)-1`
-/

namespace A218767.P11814883363377323869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d) + (n + 1 : ℤ)| + (A066241 (n + 1) - 1)

end

end A218767.P11814883363377323869

/-! ## A218767.P5689645938881748733

`A066272(n+1)+A195155(n+1)+A195150(n+1)`
-/

namespace A218767.P5689645938881748733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) + (A195155 (n + 1) + A195150 (n + 1))

end

end A218767.P5689645938881748733

/-!
# A218768: a(n+2) = (2*n+1)^2*a(n+1) + (2*n+1)*(2*n-1)*a(n) with a(1)=1 and a(2)=2.

The programs for A218768, the canonical program `A218768.P6681312255316336838` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218768 has offset 1).

The definition of A218768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218768.P6681312255316336838

`(2*(n+1)-3)²*a(n-1)+(2*(n+1)-3)*(2*(n+1)-5)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A218768

/-- `(2*(n+1)-3)²*a(n-1)+(2*(n+1)-3)*(2*(n+1)-5)*a(n-2)` -/
def P6681312255316336838.Spec : Prop :=
  ∀ n, P6681312255316336838.a n = A218768 (n + 1)

theorem P6681312255316336838.correct : P6681312255316336838.Spec := by
  intro n
  simp only [A218768, Nat.add_sub_cancel]

end A218768

/-! ## A218768.P3106564076762555983

`∏[abs(1-2*n)]*A001515(n)`
-/

namespace A218768.P3106564076762555983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001515 n

end

end A218768.P3106564076762555983

namespace A218768

/-- `∏[abs(1-2*n)]*A001515(n)` -/
def P3106564076762555983.Spec : Prop :=
  ∀ n, P3106564076762555983.a n = A218768 (n + 1)

end A218768

/-! ## A218768.P6046868323391085232

`A001515(n)*A305402(∑[n])`
-/

namespace A218768.P6046868323391085232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001515 n * A305402 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218768.P6046868323391085232

namespace A218768

/-- `A001515(n)*A305402(∑[n])` -/
def P6046868323391085232.Spec : Prop :=
  ∀ n, P6046868323391085232.a n = A218768 (n + 1)

end A218768

/-! ## A218768.P8769355239809559481

`record[A144502(n)]*A001147(n)`
-/

namespace A218768.P8769355239809559481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001147 n

end

end A218768.P8769355239809559481

namespace A218768

/-- `record[A144502(n)]*A001147(n)` -/
def P8769355239809559481.Spec : Prop :=
  ∀ n, P8769355239809559481.a n = A218768 (n + 1)

end A218768

/-! ## A218768.P17245059937173052292

`A001147(n)*A144301(n+1)`
-/

namespace A218768.P17245059937173052292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n * A144301 (n + 1)

end

end A218768.P17245059937173052292

namespace A218768

/-- `A001147(n)*A144301(n+1)` -/
def P17245059937173052292.Spec : Prop :=
  ∀ n, P17245059937173052292.a n = A218768 (n + 1)

end A218768

/-!
# A218769: Let (p,p+2) be the n-th twin prime pair. a(n) is the least integer r > 1 for which the interval (r*p, r*(p+2)) contains no primes, or a(n)=0, if no such r exists.

The programs for A218769, there is no canonical definition to state claims against.
-/

/-! ## A218769.P4216096799200574343

`A218850(A040040(n+1))`
-/

namespace A218769.P4216096799200574343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218850 (A040040 (n + 1)).toNat

end

end A218769.P4216096799200574343

/-! ## A218769.P12633236310034998173

`A218850(A168497(n+2))`
-/

namespace A218769.P12633236310034998173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218850 (A168497 (n + 2)).toNat

end

end A218769.P12633236310034998173

/-! ## A218769.P5987979537194268629

`A218850(A014574(n+1)/2)`
-/

namespace A218769.P5987979537194268629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218850 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 2)).toNat

end

end A218769.P5987979537194268629

/-! ## A218769.P2606598367532957541

`A218850(round(A001359(n+1)/2))`
-/

namespace A218769.P2606598367532957541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218850 (SequenceMachineLib.roundAway ((A001359 (n + 1) : ℚ) / 2)).toNat

end

end A218769.P2606598367532957541

/-! ## A218769.P11458253950713810999

`A218850((A001359(n+1)+1)/2)`
-/

namespace A218769.P11458253950713810999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218850 (SequenceMachineLib.roundAway ((A001359 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A218769.P11458253950713810999

/-! ## A218769.P13822418431990603999

`A218850((A006512(n+1)-1)/2)`
-/

namespace A218769.P13822418431990603999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218850 (SequenceMachineLib.roundAway ((A006512 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A218769.P13822418431990603999

/-!
# A218770: Smallest number which when multiplied by n gives a pandigital number.

The programs for A218770, there is no canonical definition to state claims against.
-/

/-! ## A218770.P16803619932160101764

`A061604(n+1)/(n+1)`
-/

namespace A218770.P16803619932160101764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061604 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A218770.P16803619932160101764

/-! ## A218770.P11160638251821201119

`A302096(n+1)/A328292(n+1)*A328291(n+1)`
-/

namespace A218770.P11160638251821201119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302096 (n + 1) : ℚ) / (A328292 (n + 1) : ℚ) * (A328291 (n + 1) : ℚ)

end

end A218770.P11160638251821201119

/-! ## A218770.P2464747442814404311

`A302096(n+1)/A000005(A000079(n))`
-/

namespace A218770.P2464747442814404311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302096 (n + 1) : ℚ) / (A000005 (A000079 n).toNat : ℚ)

end

end A218770.P2464747442814404311

/-! ## A218770.P7894567108380886905

`A050278(A071926(n+1))/(n+1)`
-/

namespace A218770.P7894567108380886905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050278 (A071926 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A218770.P7894567108380886905

/-!
# A218771: Primes of the form p^2 + 3pq + q^2 with p and q prime.

The programs for A218771, there is no canonical definition to state claims against.
-/

/-! ## A218771.P12126301153337225110

`p?[A218793(n+1)]`
-/

namespace A218771.P12126301153337225110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218771.P12126301153337225110

/-! ## A218771.P15528970599127385524

`record[p?[A218793(A052938(n))]]`
-/

namespace A218771.P15528970599127385524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218771.P15528970599127385524

/-! ## A218771.P7492469739605145711

`p?[A218793(A052938(n))-A000035(n)]`
-/

namespace A218771.P7492469739605145711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (A052938 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218771.P7492469739605145711

/-! ## A218771.P2924895123458554613

`p?[A000034(2*n)*A218793(A052938(2*n))]`
-/

namespace A218771.P2924895123458554613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A218793 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218771.P2924895123458554613

/-! ## A218771.P9449759937397658066

`p?[A000034(n)²*A218793(A052938(n))]`
-/

namespace A218771.P9449759937397658066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A218793 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218771.P9449759937397658066

/-! ## A218771.P1119036021874979428

`∩[A038872(n+1), A218793(n+1)]`
-/

namespace A218771.P1119036021874979428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218771.P1119036021874979428

/-! ## A218771.P11724524785664276955

`∩[A045468(n+1), A218793(n+1)]`
-/

namespace A218771.P11724524785664276955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218771.P11724524785664276955

/-! ## A218771.P5817732503627848964

`∩[A064739(n+1), A218793(n+1)]`
-/

namespace A218771.P5817732503627848964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218771.P5817732503627848964

/-! ## A218771.P6487167370048432507

`∩[A076518(n+1), A218793(n+1)]`
-/

namespace A218771.P6487167370048432507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218771.P6487167370048432507

/-! ## A218771.P15107833445881803638

`∩[A218793(n+1), A341783(n+1)]`
-/

namespace A218771.P15107833445881803638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218771.P15107833445881803638

/-! ## A218771.P9323944414521243520

`∩[A218793(n+1), A328896(n+1)]`
-/

namespace A218771.P9323944414521243520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218771.P9323944414521243520

/-! ## A218771.P2650804019880028214

`∩[A218793(n+1), A380468(n+1)]`
-/

namespace A218771.P2650804019880028214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218771.P2650804019880028214

/-! ## A218771.P11856860160172994819

`p?[A010892(3*n)*A218793(A052938(n))]`
-/

namespace A218771.P11856860160172994819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A218793 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218771.P11856860160172994819

/-! ## A218771.P12447675902283011652

`∩[A218793(n+1), A219612(n+1)]`
-/

namespace A218771.P12447675902283011652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218771.P12447675902283011652

/-! ## A218771.P12500964683592850710

`∩[A045348(n+1), A218793(n+1)]`
-/

namespace A218771.P12500964683592850710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218771.P12500964683592850710

/-! ## A218771.P14834365933359261680

`∩[A045371(n+1), A218793(n+1)]`
-/

namespace A218771.P14834365933359261680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218771.P14834365933359261680

/-! ## A218771.P10456436671796141361

`∩[A045405(n+1), A218793(n+1)]`
-/

namespace A218771.P10456436671796141361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218771.P10456436671796141361

/-! ## A218771.P14723327500859232168

`∩[A045428(n+1), A218793(n+1)]`
-/

namespace A218771.P14723327500859232168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218771.P14723327500859232168

/-! ## A218771.P8802893947363398488

`∩[A218793(n+1), A229947(n+1)]`
-/

namespace A218771.P8802893947363398488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218771.P8802893947363398488

/-! ## A218771.P13907627140566970897

`∩[A218793(n+1), A230359(n+1)]`
-/

namespace A218771.P13907627140566970897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218771.P13907627140566970897

/-!
# A218772: Positions in the infinite trunk of beanstalk (see A179016) where the next node upwards is the smaller of the two possible branches.

The programs for A218772, there is no canonical definition to state claims against.
-/

/-! ## A218772.P14841400933851882368

`A213732(n+1)-1`
-/

namespace A218772.P14841400933851882368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213732 (n + 1) - 1

end

end A218772.P14841400933851882368

/-! ## A218772.P18178086202423425532

`A218774(n)+a(n-1)` with `a(0)=2`
-/

namespace A218772.P18178086202423425532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A218774 n + a (n - 1)

end

end A218772.P18178086202423425532

/-! ## A218772.P7193263772013113208

`comp[A218773(n+1)]`
-/

namespace A218772.P7193263772013113208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A218772.P7193263772013113208

/-! ## A218772.P5509359096883408121

`lt[A179016(n+1)%2, 1]`
-/

namespace A218772.P5509359096883408121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179016 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A218772.P5509359096883408121

/-! ## A218772.P6486496396680758596

`eq[2, A020639(A179016(n+1))]`
-/

namespace A218772.P6486496396680758596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A179016 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218772.P6486496396680758596

/-! ## A218772.P2635292615867178996

`A023443(A213732(n+1))`
-/

namespace A218772.P2635292615867178996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A213732 (n + 1)).toNat

end

end A218772.P2635292615867178996

/-! ## A218772.P5814584274589703213

`lt[A218618(n), 0]`
-/

namespace A218772.P5814584274589703213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218618 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A218772.P5814584274589703213

/-! ## A218772.P9310554381298104722

`eq[1, gcd(2, A218604(n+1))]`
-/

namespace A218772.P9310554381298104722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A218604 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218772.P9310554381298104722

/-! ## A218772.P17839491335084524402

`eq[1, A010059(A213715(n+1))]`
-/

namespace A218772.P17839491335084524402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A213715 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218772.P17839491335084524402

/-! ## A218772.P7874571603015654515

`eq[0, A213729(n+1)]`
-/

namespace A218772.P7874571603015654515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218772.P7874571603015654515

/-! ## A218772.P3188158181398556221

`lt[0, A213728(n+1)]`
-/

namespace A218772.P3188158181398556221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A218772.P3188158181398556221

/-! ## A218772.P4792473449289017078

`lt[Δ[n*A213729(n)], 1]`
-/

namespace A218772.P4792473449289017078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A213729 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A218772.P4792473449289017078

/-! ## A218772.P2125220720019600231

`lt[acot(n), A213728(n)]-1`
-/

namespace A218772.P2125220720019600231
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n : ℤ) - 1

end

end A218772.P2125220720019600231

/-! ## A218772.P9995667854000469366

`eq[A000007(n), A213729(n)]-1`
-/

namespace A218772.P9995667854000469366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A218772.P9995667854000469366

/-! ## A218772.P3688465584733939524

`eq[A000038(n), A213729(n)]-1`
-/

namespace A218772.P3688465584733939524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A218772.P3688465584733939524

/-! ## A218772.P12276806196097899614

`eq[A054977(n), A213728(n)]-1`
-/

namespace A218772.P12276806196097899614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A218772.P12276806196097899614

/-! ## A218772.P6574584977751779488

`eq[A057427(n), A213728(n)]-1`
-/

namespace A218772.P6574584977751779488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A218772.P6574584977751779488

/-!
# A218773: Positions in the infinite trunk of beanstalk (see A179016) where the next node upwards is the larger of the two possible branches.

The programs for A218773, there is no canonical definition to state claims against.
-/

/-! ## A218773.P17393320449116210525

`comp[A218772(n+1)]`
-/

namespace A218773.P17393320449116210525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A218773.P17393320449116210525

/-! ## A218773.P7667864630270301484

`A213733(1+n)-1`
-/

namespace A218773.P7667864630270301484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213733 (1 + n) - 1

end

end A218773.P7667864630270301484

/-! ## A218773.P13255658624019044860

`comp[A213732(n+1)-1]`
-/

namespace A218773.P13255658624019044860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213732 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A218773.P13255658624019044860

/-! ## A218773.P7853836329555875835

`∑[A218775(n+1)]-A218775(n+1)`
-/

namespace A218773.P7853836329555875835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A218775 (n + 1)

end

end A218773.P7853836329555875835

/-! ## A218773.P14747482659187191240

`lt[val(A179016(n+1), 2), 1]`
-/

namespace A218773.P14747482659187191240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A179016 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A218773.P14747482659187191240

/-! ## A218773.P8001618085987914300

`A023443(A213733(n+1))`
-/

namespace A218773.P8001618085987914300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A213733 (n + 1)).toNat

end

end A218773.P8001618085987914300

/-! ## A218773.P1334508035378726496

`comp[lt[A218618(n), 0]]`
-/

namespace A218773.P1334508035378726496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218618 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A218773.P1334508035378726496

/-! ## A218773.P2262830459387501489

`eq[2, gcd(2, A218604(n+1))]`
-/

namespace A218773.P2262830459387501489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A218604 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218773.P2262830459387501489

/-! ## A218773.P13475758726066917380

`eq[0, A213728(n+1)]`
-/

namespace A218773.P13475758726066917380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218773.P13475758726066917380

/-! ## A218773.P7241688080585064496

`eq[0, A213728(n)]-1`
-/

namespace A218773.P7241688080585064496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A218773.P7241688080585064496

/-! ## A218773.P15483777811766327113

`lt[0, A213729(n+1)]`
-/

namespace A218773.P15483777811766327113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A218773.P15483777811766327113

/-! ## A218773.P18013393491433545910

`eq[1, A213729(n)]-1`
-/

namespace A218773.P18013393491433545910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A218773.P18013393491433545910

/-! ## A218773.P6563328360801910426

`lt[0, A000035(A179016(n+1))]`
-/

namespace A218773.P6563328360801910426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A179016 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A218773.P6563328360801910426

/-! ## A218773.P1820931381334583826

`eq[1, A000035(A179016(n))]-1`
-/

namespace A218773.P1820931381334583826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A179016 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A218773.P1820931381334583826

/-! ## A218773.P6442119505670381091

`lt[A010686(lt[A213727(n+1), 1]), 2]`
-/

namespace A218773.P6442119505670381091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A218773.P6442119505670381091

/-! ## A218773.P4778694689349444519

`eq[A213729(n+1), A213729(A213733(n+1))]`
-/

namespace A218773.P4778694689349444519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 (A213733 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218773.P4778694689349444519

/-!
# A218774: First differences of A218772.

The programs for A218774, there is no canonical definition to state claims against.
-/

/-! ## A218774.P9987101111017366334

`A218772(n+2)-A218772(n+1)`
-/

namespace A218774.P9987101111017366334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218772 (n + 2) - A218772 (n + 1)

end

end A218774.P9987101111017366334

/-! ## A218774.P10376534567580516890

`Δ[A213732(n+1)]`
-/

namespace A218774.P10376534567580516890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218774.P10376534567580516890

/-! ## A218774.P14138113289570177367

`Δ[A218772(1+n)]`
-/

namespace A218774.P14138113289570177367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218772 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218774.P14138113289570177367

/-! ## A218774.P3607595366636680671

`Δ[abs(A213732(Δ[n²]-n)-1)]`
-/

namespace A218774.P3607595366636680671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213732 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218774.P3607595366636680671

/-! ## A218774.P13551235441021876927

`A213732(n+2)-A213732(n+1)`
-/

namespace A218774.P13551235441021876927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213732 (n + 2) - A213732 (n + 1)

end

end A218774.P13551235441021876927

/-! ## A218774.P8419793526145141811

`Δ[lt[A218618(n), 0]]`
-/

namespace A218774.P8419793526145141811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218618 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A218774.P8419793526145141811

/-! ## A218774.P16230613395478882156

`Δ[eq[1, gcd(2, A218604(n))]]`
-/

namespace A218774.P16230613395478882156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A218604 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A218774.P16230613395478882156

/-! ## A218774.P5149593765214756626

`runs[∑[A213728(n+3)]]`
-/

namespace A218774.P5149593765214756626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A218774.P5149593765214756626

/-! ## A218774.P5142377952678638278

`Δ[eq[0, A213729(n+1)]]`
-/

namespace A218774.P5142377952678638278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A218774.P5142377952678638278

/-! ## A218774.P14036823409712794152

`Δ[eq[1, A213728(n+1)]]`
-/

namespace A218774.P14036823409712794152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A218774.P14036823409712794152

/-! ## A218774.P7701354884221155022

`Δ[lt[0, n*A213728(n)]]`
-/

namespace A218774.P7701354884221155022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A213728 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A218774.P7701354884221155022

/-! ## A218774.P5654182771029268667

`Δ[lt[n*A213729(n), n]]`
-/

namespace A218774.P5654182771029268667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A213729 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A218774.P5654182771029268667

/-!
# A218775: First differences of A218773.

The programs for A218775, there is no canonical definition to state claims against.
-/

/-! ## A218775.P8481121409649068363

`A218773(n+2)-A218773(n+1)`
-/

namespace A218775.P8481121409649068363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218773 (n + 2) - A218773 (n + 1)

end

end A218775.P8481121409649068363

/-! ## A218775.P9479345682279520679

`Δ[comp[A218772(n+1)]]`
-/

namespace A218775.P9479345682279520679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218772 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A218775.P9479345682279520679

/-! ## A218775.P210566714826940371

`Δ[A213733(n+1)]`
-/

namespace A218775.P210566714826940371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218775.P210566714826940371

/-! ## A218775.P8985070054491066006

`Δ[A218773(n+1)]`
-/

namespace A218775.P8985070054491066006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218775.P8985070054491066006

/-! ## A218775.P9978086175890464946

`A213733(n+2)-A213733(n+1)`
-/

namespace A218775.P9978086175890464946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213733 (n + 2) - A213733 (n + 1)

end

end A218775.P9978086175890464946

/-! ## A218775.P15672293328904632820

`Δ[lt[0, A218618(n)+1]]`
-/

namespace A218775.P15672293328904632820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218618 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A218775.P15672293328904632820

/-! ## A218775.P7057592723895259920

`Δ[eq[0, A213728(n)]]`
-/

namespace A218775.P7057592723895259920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A218775.P7057592723895259920

/-! ## A218775.P17989245734078138807

`Δ[lt[0, A213729(n)]]`
-/

namespace A218775.P17989245734078138807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A218775.P17989245734078138807

/-! ## A218775.P18417546129138018742

`runs[∑[A213729(n+1)]]`
-/

namespace A218775.P18417546129138018742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A218775.P18417546129138018742

/-!
# A218776: A014486-codes for the Beanstalk-tree growing one natural number at time, starting from the tree of one internal node (1), with the "lesser numbers to the left hand side" construction.

The programs for A218776, there is no canonical definition to state claims against.
-/

/-! ## A218776.P7261213863338612095

`A014486(A218777(n+1))`
-/

namespace A218776.P7261213863338612095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A218777 (n + 1)).toNat

end

end A218776.P7261213863338612095

/-! ## A218776.P13049988599229915844

`A014486(A057163(A218779(n+1)))`
-/

namespace A218776.P13049988599229915844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A057163 (A218779 (n + 1)).toNat).toNat

end

end A218776.P13049988599229915844

/-!
# A218777: A014486-indices for the Beanstalk-tree growing one natural number at time, starting from the tree of one internal node (1), with the "lesser numbers to the left hand side" construction.

The programs for A218777, there is no canonical definition to state claims against.
-/

/-! ## A218777.P10208418184746503669

`A080300(A218776(n+1))`
-/

namespace A218777.P10208418184746503669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A218776 (n + 1)).toNat

end

end A218777.P10208418184746503669

/-! ## A218777.P10950064149024453832

`A057163(A218779(n+1))`
-/

namespace A218777.P10950064149024453832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A218779 (n + 1)).toNat

end

end A218777.P10950064149024453832

/-! ## A218777.P4206101556161663149

`or(n, A226190(A005960(n+1)))`
-/

namespace A218777.P4206101556161663149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A226190 (A005960 (n + 1)).toNat)

end

end A218777.P4206101556161663149

/-!
# A218778: A014486-codes for the Beanstalk-tree growing one natural number at time, starting from the tree of one internal node (1), with the "lesser numbers to the right side" construction.

The programs for A218778, there is no canonical definition to state claims against.
-/

/-! ## A218778.P15424771676110140999

`A014486(A218779(n+1))`
-/

namespace A218778.P15424771676110140999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A218779 (n + 1)).toNat

end

end A218778.P15424771676110140999

/-! ## A218778.P4009310430534804095

`A014486(A057163(A218777(n+1)))`
-/

namespace A218778.P4009310430534804095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A057163 (A218777 (n + 1)).toNat).toNat

end

end A218778.P4009310430534804095

/-!
# A218779: A014486-indices for the Beanstalk-tree growing one natural number at time, starting from the tree of one internal node (1), with the "lesser numbers to the right hand side" construction.

The programs for A218779, there is no canonical definition to state claims against.
-/

/-! ## A218779.P10775664731601557334

`A057163(A218777(n+1))`
-/

namespace A218779.P10775664731601557334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A218777 (n + 1)).toNat

end

end A218779.P10775664731601557334

/-! ## A218779.P10306138322988421013

`A080300(A218778(n+1))`
-/

namespace A218779.P10306138322988421013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A218778 (n + 1)).toNat

end

end A218779.P10306138322988421013

/-! ## A218779.P2277797094735515498

`A154457(or(A079559(n), A218777(n+1)))`
-/

namespace A218779.P2277797094735515498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154457 (Int.lor (A079559 n) (A218777 (n + 1))).toNat

end

end A218779.P2277797094735515498

/-! ## A218779.P2307222446674240572

`A154457(or(A213712(n), A218777(n+1)))`
-/

namespace A218779.P2307222446674240572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154457 (Int.lor (A213712 n) (A218777 (n + 1))).toNat

end

end A218779.P2307222446674240572

/-!
# A218780: A014486-codes for the compact representation of Beanstalk-tree, growing by two natural numbers at time, starting from the tree of one internal node (1) and two leaves (2 and 3), with the lesser numbers coming to the left hand side.

The programs for A218780, there is no canonical definition to state claims against.
-/

/-! ## A218780.P4071990855139561443

`A014486(A218781(n+1))`
-/

namespace A218780.P4071990855139561443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A218781 (n + 1)).toNat

end

end A218780.P4071990855139561443

/-! ## A218780.P2117253287377918692

`A014486(A057163(A218783(n+1)))`
-/

namespace A218780.P2117253287377918692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A057163 (A218783 (n + 1)).toNat).toNat

end

end A218780.P2117253287377918692

/-!
# A218781: A014486-indices for the compact representation of Beanstalk-tree, with the lesser numbers coming to the left hand side.

The programs for A218781, there is no canonical definition to state claims against.
-/

/-! ## A218781.P16230605157400581018

`A057163(A218783(n+1))`
-/

namespace A218781.P16230605157400581018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A218783 (n + 1)).toNat

end

end A218781.P16230605157400581018

/-! ## A218781.P5850495838830610106

`A108141(A294790(n))`
-/

namespace A218781.P5850495838830610106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A294790 n).toNat

end

end A218781.P5850495838830610106

/-! ## A218781.P3407532702854980465

`∑[A172471(A059035(n))]`
-/

namespace A218781.P3407532702854980465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A059035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218781.P3407532702854980465

/-!
# A218782: A014486-codes for the compact representation of Beanstalk-tree, growing by two natural numbers at time, starting from the tree of one internal node (1) and two leaves (3 and 2), with the larger numbers coming to the left hand side.

The programs for A218782, there is no canonical definition to state claims against.
-/

/-! ## A218782.P7883965427100559687

`A014486(A218783(n+1))`
-/

namespace A218782.P7883965427100559687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A218783 (n + 1)).toNat

end

end A218782.P7883965427100559687

/-! ## A218782.P13962904370520840589

`A014486(A057163(A218781(n+1)))`
-/

namespace A218782.P13962904370520840589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A057163 (A218781 (n + 1)).toNat).toNat

end

end A218782.P13962904370520840589

/-!
# A218783: A014486-indices for the compact representation of Beanstalk-tree, with the lesser numbers coming to the right hand side.

The programs for A218783, there is no canonical definition to state claims against.
-/

/-! ## A218783.P798564824676161230

`A080300(A218782(n+1))`
-/

namespace A218783.P798564824676161230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A218782 (n + 1)).toNat

end

end A218783.P798564824676161230

/-! ## A218783.P2777070140777297365

`A057163(A218781(n+1))`
-/

namespace A218783.P2777070140777297365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A218781 (n + 1)).toNat

end

end A218783.P2777070140777297365

/-! ## A218783.P16044155645925116239

`A154457(or(A080300(n), A218781(n+1)))`
-/

namespace A218783.P16044155645925116239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154457 (Int.lor (A080300 n) (A218781 (n + 1))).toNat

end

end A218783.P16044155645925116239

/-! ## A218783.P16581314657358632138

`or(A154457(A218781(n+1)), A209640(n))`
-/

namespace A218783.P16581314657358632138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A154457 (A218781 (n + 1)).toNat) (A209640 n)

end

end A218783.P16581314657358632138

/-!
# A218784: Positions where the parity of A179016 changes, i.e., where the runs of A213729 begin.

The programs for A218784, there is no canonical definition to state claims against.
-/

/-! ## A218784.P3503453322492359369

`A218544(n)-1`
-/

namespace A218784.P3503453322492359369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218544 n - 1

end

end A218784.P3503453322492359369

/-! ## A218784.P13961402558158214069

`A218545(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A218784.P13961402558158214069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A218545 n + a (n - 1)

end

end A218784.P13961402558158214069

/-! ## A218784.P15844614548435571746

`∑[A218545(A028310(n))]-1`
-/

namespace A218784.P15844614548435571746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218545 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A218784.P15844614548435571746

/-! ## A218784.P11304076872368789315

`∑[A218545(A000007(n)+n)]-1`
-/

namespace A218784.P11304076872368789315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218545 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A218784.P11304076872368789315

/-! ## A218784.P298152255808380366

`∑[A218545(n+1)]-A218545(n+1)`
-/

namespace A218784.P298152255808380366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A218545 (n + 1)

end

end A218784.P298152255808380366

/-! ## A218784.P11401398464555045088

`eq[A026741(A213712(n)), A213712(n)]`
-/

namespace A218784.P11401398464555045088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A213712 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218784.P11401398464555045088

/-! ## A218784.P16098647596901391394

`A023443(A218544(n))`
-/

namespace A218784.P16098647596901391394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A218544 n).toNat

end

end A218784.P16098647596901391394

/-! ## A218784.P13020381237507216458

`A023444(A218544(n)+1)`
-/

namespace A218784.P13020381237507216458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A218544 n + 1).toNat

end

end A218784.P13020381237507216458

/-! ## A218784.P4374110628500935011

`∑{d}[A008578(A218544(n)), A000720(#)]`
-/

namespace A218784.P4374110628500935011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A218544 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d

end

end A218784.P4374110628500935011

/-! ## A218784.P12907469405577033401

`record[n*A010060(A179016(n))]`
-/

namespace A218784.P12907469405577033401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010060 (A179016 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218784.P12907469405577033401

/-!
# A218785: Partial sums of absolute values of A218618.

The programs for A218785, there is no canonical definition to state claims against.
-/

/-! ## A218785.P2018152521217553393

`∑[abs(A218618(n))]`
-/

namespace A218785.P2018152521217553393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A218618 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218785.P2018152521217553393

/-! ## A218785.P9438454544744570049

`∑[A213727(A213730(n))]`
-/

namespace A218785.P9438454544744570049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 (A213730 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218785.P9438454544744570049

/-! ## A218785.P11669423708300159082

`∑[A038690(A218618(n)²)]`
-/

namespace A218785.P11669423708300159082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (A218618 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218785.P11669423708300159082

/-! ## A218785.P6815113838536167125

`∑[A038690(A218618(n)^2)]`
-/

namespace A218785.P6815113838536167125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (A218618 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218785.P6815113838536167125

/-! ## A218785.P13987727100566388407

`A257677(A179016(n+1))-(n+1)`
-/

namespace A218785.P13987727100566388407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257677 (A179016 (n + 1)).toNat - (n + 1 : ℤ)

end

end A218785.P13987727100566388407

/-! ## A218785.P6800605671383972888

`A257677(A213730(n+1))-(n+2)`
-/

namespace A218785.P6800605671383972888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257677 (A213730 (n + 1)).toNat - (n + 2 : ℤ)

end

end A218785.P6800605671383972888

/-!
# A218786: The sizes of the "tendrils" (finite side-trees sprouting at A213730, A218787) of infinite beanstalk (A179016).

The programs for A218786, there is no canonical definition to state claims against.
-/

/-! ## A218786.P10504175201499914785

`A213726(A213730(n+1))-1`
-/

namespace A218786.P10504175201499914785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213726 (A213730 (n + 1)).toNat - 1

end

end A218786.P10504175201499914785

/-! ## A218786.P9594236183589266086

`(Δ[A218785(n)]-1)/2`
-/

namespace A218786.P9594236183589266086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218785 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 : ℚ) / 2

end

end A218786.P9594236183589266086

/-! ## A218786.P8336694761750613256

`A004526(Δ[A218785(n)])`
-/

namespace A218786.P8336694761750613256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A218786.P8336694761750613256

/-! ## A218786.P17772270799421083472

`A001057(abs(A218618(n+1)))-1`
-/

namespace A218786.P17772270799421083472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 |A218618 (n + 1)|.toNat - 1

end

end A218786.P17772270799421083472

/-! ## A218786.P16578342238992471479

`A004526(A218785(n+1)-A218785(n))`
-/

namespace A218786.P16578342238992471479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A218785 (n + 1) - A218785 n).toNat

end

end A218786.P16578342238992471479

/-! ## A218786.P4549644115533499366

`A001281(A218785(n+1)-1-A218785(n))`
-/

namespace A218786.P4549644115533499366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A218785 (n + 1) - 1 - A218785 n).toNat

end

end A218786.P4549644115533499366

/-! ## A218786.P9074268105214794132

`A259361(Δ[A218789(n)]²)/2`
-/

namespace A218786.P9074268105214794132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259361 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ) / 2

end

end A218786.P9074268105214794132

/-! ## A218786.P12519305995992638639

`Δ[A257677(A179016(n+1))/2]-1`
-/

namespace A218786.P12519305995992638639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257677 (A179016 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A218786.P12519305995992638639

/-! ## A218786.P16112012274161342326

`A072643(A218787(n+1))`
-/

namespace A218786.P16112012274161342326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A218787 (n + 1)).toNat

end

end A218786.P16112012274161342326

/-! ## A218786.P14553708972483180720

`A072643(A218788(n+1))`
-/

namespace A218786.P14553708972483180720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A218788 (n + 1)).toNat

end

end A218786.P14553708972483180720

/-!
# A218787: a(n) = A014486-index for the n-th tendril of infinite beanstalk (A213730(n)), with the "lesser numbers to the left side" construction.

The programs for A218787, there is no canonical definition to state claims against.
-/

/-! ## A218787.P4814413797167551086

`A057163(A218788(n+1))`
-/

namespace A218787.P4814413797167551086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A218788 (n + 1)).toNat

end

end A218787.P4814413797167551086

/-! ## A218787.P9580577058526713773

`A122354(A218788(n+1)%A102726(n))`
-/

namespace A218787.P9580577058526713773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122354 (Int.tmod (A218788 (n + 1)) (A102726 n)).toNat

end

end A218787.P9580577058526713773

/-! ## A218787.P17458971282477086216

`(A159075(n)+1)*A122354(A218788(n+1))`
-/

namespace A218787.P17458971282477086216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159075 n + 1) * A122354 (A218788 (n + 1)).toNat

end

end A218787.P17458971282477086216

/-! ## A218787.P13625861432789396056

`A122354(A218788(n+1))%A000040(n+1)`
-/

namespace A218787.P13625861432789396056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122354 (A218788 (n + 1)).toNat) (A000040 (n + 1))

end

end A218787.P13625861432789396056

/-! ## A218787.P14890043794202214082

`A122354(A218788(n+1))+A024794(A070939(n))`
-/

namespace A218787.P14890043794202214082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122354 (A218788 (n + 1)).toNat + A024794 (A070939 n).toNat

end

end A218787.P14890043794202214082

/-! ## A218787.P15310006700628948528

`A122354(A218788(n+1))*A176156(A063995(n+1))`
-/

namespace A218787.P15310006700628948528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122354 (A218788 (n + 1)).toNat * A176156 (A063995 (n + 1)).toNat

end

end A218787.P15310006700628948528

/-! ## A218787.P6699389436034986421

`A122298(A218788(n+1))%A373411(n+1)`
-/

namespace A218787.P6699389436034986421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122298 (A218788 (n + 1)).toNat) (A373411 (n + 1))

end

end A218787.P6699389436034986421

/-! ## A218787.P9238552202798955352

`A122298(A218788(n+1))%A173643(A028310(n))`
-/

namespace A218787.P9238552202798955352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122298 (A218788 (n + 1)).toNat) (A173643 (A028310 n).toNat)

end

end A218787.P9238552202798955352

/-! ## A218787.P13139148102753455789

`A057505(A218788(n+1))%A007716(n)`
-/

namespace A218787.P13139148102753455789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057505 (A218788 (n + 1)).toNat) (A007716 n)

end

end A218787.P13139148102753455789

/-!
# A218788: a(n) = A014486-index for the n-th tendril of infinite beanstalk (A213730(n)), with the "lesser numbers to the right side" construction.

The programs for A218788, there is no canonical definition to state claims against.
-/

/-! ## A218788.P3780447472496906208

`A057163(A218787(n+1))`
-/

namespace A218788.P3780447472496906208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A218787 (n + 1)).toNat

end

end A218788.P3780447472496906208

/-! ## A218788.P12190197592427194586

`A078898(A078626(n+1))*A130359(A218787(n+1))`
-/

namespace A218788.P12190197592427194586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A078626 (n + 1)).toNat * A130359 (A218787 (n + 1)).toNat

end

end A218788.P12190197592427194586

/-! ## A218788.P3566006340730016163

`A130359(A218787(n+1))/A054977(A043061(n+1))`
-/

namespace A218788.P3566006340730016163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130359 (A218787 (n + 1)).toNat : ℚ) / (A054977 (A043061 (n + 1)).toNat : ℚ)

end

end A218788.P3566006340730016163

/-! ## A218788.P10922245767717512112

`A130359(A218787(n+1))%A087156(A043061(n+1)+1)`
-/

namespace A218788.P10922245767717512112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130359 (A218787 (n + 1)).toNat) (A087156 (A043061 (n + 1) + 1).toNat)

end

end A218788.P10922245767717512112

/-! ## A218788.P971224232547628816

`A130359(A218787(n+1))+A010051(A163956(n+1))`
-/

namespace A218788.P971224232547628816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130359 (A218787 (n + 1)).toNat + A010051 (A163956 (n + 1)).toNat

end

end A218788.P971224232547628816

/-! ## A218788.P16974689513335371112

`A147843(A077068(n+1))+A130359(A218787(n+1))`
-/

namespace A218788.P16974689513335371112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147843 (A077068 (n + 1)).toNat + A130359 (A218787 (n + 1)).toNat

end

end A218788.P16974689513335371112

/-! ## A218788.P16236014162421733938

`A003963(A130321(n))*A130359(A218787(n+1))`
-/

namespace A218788.P16236014162421733938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A130321 n).toNat * A130359 (A218787 (n + 1)).toNat

end

end A218788.P16236014162421733938

/-! ## A218788.P11239419020392804880

`A130359(A218787(n+1)^A043288(n+1))`
-/

namespace A218788.P11239419020392804880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130359 (SequenceMachineLib.roundAway ((A218787 (n + 1) : ℚ) ^ (A043288 (n + 1) : ℤ))).toNat

end

end A218788.P11239419020392804880

/-! ## A218788.P12186345880587809282

`A130359(A218787(n+1)^A160338(n+1))`
-/

namespace A218788.P12186345880587809282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130359 (SequenceMachineLib.roundAway ((A218787 (n + 1) : ℚ) ^ (A160338 (n + 1) : ℤ))).toNat

end

end A218788.P12186345880587809282

/-! ## A218788.P8385618134781980979

`A130359(A218787(n+1))%A121149(n)`
-/

namespace A218788.P8385618134781980979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130359 (A218787 (n + 1)).toNat) (A121149 n)

end

end A218788.P8385618134781980979

/-!
# A218789: Partial sums of A218618.

The programs for A218789, there is no canonical definition to state claims against.
-/

/-! ## A218789.P732449970474239770

`∑[A218618(n)]`
-/

namespace A218789.P732449970474239770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218789.P732449970474239770

/-! ## A218789.P7553366446267563744

`a(n-1)+A218618(n)%A175822(n)` with `a(0)=0, a(1)=1`
-/

namespace A218789.P7553366446267563744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Int.tmod (A218618 n) (A175822 n)

end

end A218789.P7553366446267563744

/-! ## A218789.P7879996013006481292

`∑[(-1)^A213730(n)*A213727(A213730(n))]`
-/

namespace A218789.P7879996013006481292
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A213730 n : ℤ) * (A213727 (A213730 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218789.P7879996013006481292

/-!
# A218790: a(n) = binary code (shown here in decimal) of the position of the predecessor of the natural number pair (2n,2n+1) in the compact beanstalk-tree A218782.

The programs for A218790, there is no canonical definition to state claims against.
-/

/-! ## A218790.P4738066706106535067

`A218614(A005187(n+1))`
-/

namespace A218790.P4738066706106535067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218614 (A005187 (n + 1)).toNat

end

end A218790.P4738066706106535067

/-! ## A218790.P739748335867370826

`A218614(A283208(n)+1)`
-/

namespace A218790.P739748335867370826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218614 (A283208 n + 1).toNat

end

end A218790.P739748335867370826

/-! ## A218790.P9408864419662564581

`A218614(∑[A001511(n+1)])`
-/

namespace A218790.P9408864419662564581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218614 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218790.P9408864419662564581

/-! ## A218790.P18217163225011398759

`A218614(A011371(2*(n+1)))`
-/

namespace A218790.P18217163225011398759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218614 (A011371 (2 * (n + 1))).toNat

end

end A218790.P18217163225011398759

/-! ## A218790.P5170545544606023977

`A218614(∑[A007814(n+1)+1])`
-/

namespace A218790.P5170545544606023977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218614 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218790.P5170545544606023977

/-! ## A218790.P5914781875614431368

`A218614(A011371(n+1)+n+1)`
-/

namespace A218790.P5914781875614431368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218614 (A011371 (n + 1) + (n + 1 : ℤ)).toNat

end

end A218790.P5914781875614431368

/-!
# A218791: a(n) = binary code (shown here in decimal) of the position of the predecessor of the natural number pair (2n,2n+1) in the compact beanstalk-tree A218780.

The programs for A218791, there is no canonical definition to state claims against.
-/

/-! ## A218791.P16631139923836946022

`A218615(A005187(n+1))`
-/

namespace A218791.P16631139923836946022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218615 (A005187 (n + 1)).toNat

end

end A218791.P16631139923836946022

/-! ## A218791.P2492406813040302258

`A218615(A283208(n)+1)`
-/

namespace A218791.P2492406813040302258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218615 (A283208 n + 1).toNat

end

end A218791.P2492406813040302258

/-! ## A218791.P17842342306341424969

`A218615(∑[A001511(n+1)])`
-/

namespace A218791.P17842342306341424969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218615 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218791.P17842342306341424969

/-! ## A218791.P8107816711327987666

`A218615(A011371(2*(n+1)))`
-/

namespace A218791.P8107816711327987666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218615 (A011371 (2 * (n + 1))).toNat

end

end A218791.P8107816711327987666

/-! ## A218791.P13880568258680734694

`A218615(∑[A007814(n+1)+1])`
-/

namespace A218791.P13880568258680734694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218615 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218791.P13880568258680734694

/-! ## A218791.P3310723181442202454

`A218615(∑[A002487(xor(n, n+1))])`
-/

namespace A218791.P3310723181442202454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Nat.xor n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218615 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218791.P3310723181442202454

/-! ## A218791.P4439084408759431082

`A218615(A011371(n+1)+n+1)`
-/

namespace A218791.P4439084408759431082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218615 (A011371 (n + 1) + (n + 1 : ℤ)).toNat

end

end A218791.P4439084408759431082

/-!
# A218793: Numbers that can be written as p^2 + 3pq + q^2 with prime p and q.

The programs for A218793, there is no canonical definition to state claims against.
-/

/-! ## A218793.P6641133524727136047

`A284788(3*n+5)+A034961(n+1)`
-/

namespace A218793.P6641133524727136047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284788 (3 * n + 5) + A034961 (n + 1)

end

end A218793.P6641133524727136047

/-! ## A218793.P6935168016134947252

`A008854(A336660(n+5)+A188040(n+1))`
-/

namespace A218793.P6935168016134947252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (A336660 (n + 5) + A188040 (n + 1)).toNat

end

end A218793.P6935168016134947252

/-!
# A218794: Numbers that can be written as p^2 + 3pq + q^2 with primes p < q.

The programs for A218794, there is no canonical definition to state claims against.
-/

/-! ## A218794.P2735625291134454435

`∩[A167207(n+1), A218793(n+1)]`
-/

namespace A218794.P2735625291134454435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218794.P2735625291134454435

/-! ## A218794.P12732659181798818648

`∩[A210490(n+1), A218793(n+1)]`
-/

namespace A218794.P12732659181798818648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218794.P12732659181798818648

/-! ## A218794.P7785445921425258307

`∩[A218793(n+1), A286972(n+1)]`
-/

namespace A218794.P7785445921425258307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218794.P7785445921425258307

/-! ## A218794.P17318766321793741167

`∩[A218793(n+1), A361634(n+1)]`
-/

namespace A218794.P17318766321793741167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218794.P17318766321793741167

/-!
# A218797: Number of ways to write 2n - 1 as p + q + r with p <= q <= r and p, q, r, p^2 + q^2 + r^2 all prime.

The programs for A218797, there is no canonical definition to state claims against.
-/

/-! ## A218797.P14552834079186778638

`A124764(A333255(n+1)-A089254(n+1))`
-/

namespace A218797.P14552834079186778638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A333255 (n + 1) - A089254 (n + 1)).toNat

end

end A218797.P14552834079186778638

/-! ## A218797.P1001900621123529444

`A319662(A259971(n+2))`
-/

namespace A218797.P1001900621123529444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319662 (A259971 (n + 2)).toNat

end

end A218797.P1001900621123529444

/-! ## A218797.P13512042132985250660

`A086078(A002445(n))+n%floor(sqrt(n+1))`
-/

namespace A218797.P13512042132985250660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086078 (A002445 n).toNat + ((n % Nat.sqrt (n + 1) : ℕ) : ℤ)

end

end A218797.P13512042132985250660

/-! ## A218797.P12327773921019347574

`A001222(A112685(n))%A114848(n)`
-/

namespace A218797.P12327773921019347574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A112685 n).toNat) (A114848 n)

end

end A218797.P12327773921019347574

/-! ## A218797.P3998303376123162199

`A001222(A112685(n))-char[A052549(n+1)]`
-/

namespace A218797.P3998303376123162199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052549 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A112685 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A218797.P3998303376123162199

/-!
# A218798: E.g.f.: Sum_{n>=0} a(n) * (cos(n*x)-sin(n*x)) * x^n/n! = 1 + x.

The programs for A218798, there is no canonical definition to state claims against.
-/

/-! ## A218798.P18375773365804431675

`A368357(∑[C(n, 2)²])`
-/

namespace A218798.P18375773365804431675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368357 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218798.P18375773365804431675

/-!
# A218799: Number of solutions to x^2 + 2y^2 = n^2.

The programs for A218799, there is no canonical definition to state claims against.
-/

/-! ## A218799.P9414891173083079053

`A399266(n²)`
-/

namespace A218799.P9414891173083079053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399266 (n ^ 2)

end

end A218799.P9414891173083079053

/-! ## A218799.P14582858663873020563

`A216278(n²)+1`
-/

namespace A218799.P14582858663873020563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216278 (n ^ 2) + 1

end

end A218799.P14582858663873020563

/-! ## A218799.P10496499775288534902

`A399211(n²)+1`
-/

namespace A218799.P10496499775288534902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399211 (n ^ 2) + 1

end

end A218799.P10496499775288534902

/-! ## A218799.P5561523162106359419

`ceil(A339377(n)/2)`
-/

namespace A218799.P5561523162106359419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A339377 n : ℚ) / 2⌉

end

end A218799.P5561523162106359419

/-! ## A218799.P9695519888122577476

`ceil(A033715(n²)/4)`
-/

namespace A218799.P9695519888122577476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033715 (n ^ 2) : ℚ) / 4⌉

end

end A218799.P9695519888122577476

/-! ## A218799.P14288737373234469544

`ceil(A226225(n²)/4)`
-/

namespace A218799.P14288737373234469544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A226225 (n ^ 2) : ℚ) / 4⌉

end

end A218799.P14288737373234469544

/-! ## A218799.P12525791896796307035

`A216282(n^ceil(atan(n)))`
-/

namespace A218799.P12525791896796307035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

end

end A218799.P12525791896796307035

/-! ## A218799.P10166877674137865622

`A216282(floor(acot(n)+n)²)`
-/

namespace A218799.P10166877674137865622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ ^ 2).toNat

end

end A218799.P10166877674137865622

/-! ## A218799.P1141655128503843949

`A216282(round(acot(n)+n)²)`
-/

namespace A218799.P1141655128503843949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) ^ 2).toNat

end

end A218799.P1141655128503843949

/-! ## A218799.P2720941383687853020

`A216282(n^(2%(n+1)))`
-/

namespace A218799.P2720941383687853020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (n ^ (2 % (n + 1)))

end

end A218799.P2720941383687853020

