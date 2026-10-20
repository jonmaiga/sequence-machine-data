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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B001.C009
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
import Seq.B003.C004
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A101600: Expansion of g.f. c(3x)^2, where c(x) is the g.f. of A000108.

The programs for A101600, the canonical program `A101600.P17060745838590597259` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101600 has offset 0).

The definition of A101600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101600.P17060745838590597259

`3^n*A000108(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101600

/-- `3^n*A000108(n+1)` -/
def P17060745838590597259.Spec : Prop :=
  ∀ n, P17060745838590597259.a n = A101600 n

theorem P17060745838590597259.correct : P17060745838590597259.Spec := by
  intro n
  simp only [A101600]

end A101600

/-! ## A101600.P7154289275550682629

`6*a(n-1)/(n+2)*Δ[n²]` with `a(0)=1`
-/

namespace A101600.P7154289275550682629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) / (n + 2 : ℚ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A101600.P7154289275550682629

namespace A101600

/-- `6*a(n-1)/(n+2)*Δ[n²]` -/
def P7154289275550682629.Spec : Prop :=
  ∀ n, P7154289275550682629.a n = (A101600 n : ℚ)

end A101600

/-! ## A101600.P2704891387795608856

`Δ[n²]*A000168(n)`
-/

namespace A101600.P2704891387795608856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000168 n

end

end A101600.P2704891387795608856

namespace A101600

/-- `Δ[n²]*A000168(n)` -/
def P2704891387795608856.Spec : Prop :=
  ∀ n, P2704891387795608856.a n = A101600 n

end A101600

/-! ## A101600.P12778803851032553962

`3^n*Δ[A014138(n)]`
-/

namespace A101600.P12778803851032553962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A101600.P12778803851032553962

namespace A101600

/-- `3^n*Δ[A014138(n)]` -/
def P12778803851032553962.Spec : Prop :=
  ∀ n, P12778803851032553962.a n = A101600 n

end A101600

/-! ## A101600.P10564391497349738592

`3^n*A120588(n+2)`
-/

namespace A101600.P10564391497349738592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A120588 (n + 2)

end

end A101600.P10564391497349738592

namespace A101600

/-- `3^n*A120588(n+2)` -/
def P10564391497349738592.Spec : Prop :=
  ∀ n, P10564391497349738592.a n = A101600 n

end A101600

/-! ## A101600.P11255704209612070008

`3^n*A039599(∑[n+1])`
-/

namespace A101600.P11255704209612070008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101600.P11255704209612070008

namespace A101600

/-- `3^n*A039599(∑[n+1])` -/
def P11255704209612070008.Spec : Prop :=
  ∀ n, P11255704209612070008.a n = A101600 n

end A101600

/-! ## A101600.P13346218519745843590

`3^(n-1)*A120589(n+2)`
-/

namespace A101600.P13346218519745843590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A120589 (n + 2) : ℚ)

end

end A101600.P13346218519745843590

namespace A101600

/-- `3^(n-1)*A120589(n+2)` -/
def P13346218519745843590.Spec : Prop :=
  ∀ n, P13346218519745843590.a n = (A101600 n : ℚ)

end A101600

/-! ## A101600.P13250451485619396210

`3*ratio[A000108(n)]*a(n-1)` with `a(0)=1`
-/

namespace A101600.P13250451485619396210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) * a (n - 1)

end

end A101600.P13250451485619396210

namespace A101600

/-- `3*ratio[A000108(n)]*a(n-1)` -/
def P13250451485619396210.Spec : Prop :=
  ∀ n, P13250451485619396210.a n = (A101600 n : ℚ)

end A101600

/-! ## A101600.P13328867582452807622

`A000108(n+1)*A000244(n)`
-/

namespace A101600.P13328867582452807622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A000244 n

end

end A101600.P13328867582452807622

namespace A101600

/-- `A000108(n+1)*A000244(n)` -/
def P13328867582452807622.Spec : Prop :=
  ∀ n, P13328867582452807622.a n = A101600 n

end A101600

/-! ## A101600.P10287997473371972440

`abs(A168491(n+1)*A352779(n))`
-/

namespace A101600.P10287997473371972440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (n + 1) * A352779 n|

end

end A101600.P10287997473371972440

namespace A101600

/-- `abs(A168491(n+1)*A352779(n))` -/
def P10287997473371972440.Spec : Prop :=
  ∀ n, P10287997473371972440.a n = A101600 n

end A101600

/-!
# A101601: Expansion of g.f. c(3x)^3, where c(x) is the g.f. of A000108.

The programs for A101601, there is no canonical definition to state claims against.
-/

/-! ## A101601.P4775249130186171690

`3^n*∑[A026012(n)]`
-/

namespace A101601.P4775249130186171690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101601.P4775249130186171690

/-! ## A101601.P14428325895960514893

`3^n*A000245(n+1)`
-/

namespace A101601.P14428325895960514893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000245 (n + 1)

end

end A101601.P14428325895960514893

/-! ## A101601.P3904746950661556044

`3^n*A071724(n+1)`
-/

namespace A101601.P3904746950661556044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A071724 (n + 1)

end

end A101601.P3904746950661556044

/-! ## A101601.P3662605273080774951

`3^n*Δ[A000108(n+1)]`
-/

namespace A101601.P3662605273080774951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A101601.P3662605273080774951

/-! ## A101601.P16950255070631083871

`3^n*Δ[A120304(n+1)]`
-/

namespace A101601.P16950255070631083871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A101601.P16950255070631083871

/-! ## A101601.P3411218061950672227

`3^n*Δ[A120588(n+2)]`
-/

namespace A101601.P3411218061950672227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A101601.P3411218061950672227

/-! ## A101601.P1789251722667096609

`∑[A026012(n)]*A000244(n)`
-/

namespace A101601.P1789251722667096609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A101601.P1789251722667096609

/-! ## A101601.P4183930497529273608

`Δ[A000108(n+1)]*A000244(n)`
-/

namespace A101601.P4183930497529273608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000244 n

end

end A101601.P4183930497529273608

/-! ## A101601.P17917436205369520627

`∑[A026012(n)]*A038754(2*n)`
-/

namespace A101601.P17917436205369520627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A038754 (2 * n)

end

end A101601.P17917436205369520627

/-! ## A101601.P2612947345581608086

`A005159(n+1)-A000168(n+1)`
-/

namespace A101601.P2612947345581608086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005159 (n + 1) - A000168 (n + 1)

end

end A101601.P2612947345581608086

/-!
# A101602: Expansion of g.f. c(3x)^4, where c(x) is the g.f. of A000108.

The programs for A101602, there is no canonical definition to state claims against.
-/

/-! ## A101602.P15917204124694143590

`3^n*A002057(n)`
-/

namespace A101602.P15917204124694143590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A002057 n

end

end A101602.P15917204124694143590

/-! ## A101602.P10465579314038671833

`3^n*A099376(n+1)`
-/

namespace A101602.P10465579314038671833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A099376 (n + 1)

end

end A101602.P10465579314038671833

/-! ## A101602.P17753863980810635872

`3^n*∑[A071725(n+1)]`
-/

namespace A101602.P17753863980810635872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101602.P17753863980810635872

/-! ## A101602.P16779384630178944544

`A002057(n)*A038221(∑[n])`
-/

namespace A101602.P16779384630178944544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n * A038221 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101602.P16779384630178944544

/-! ## A101602.P12686171032913273391

`A002057(n)*A155734(n+1)`
-/

namespace A101602.P12686171032913273391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n * A155734 (n + 1)

end

end A101602.P12686171032913273391

/-! ## A101602.P13213264006380280145

`∑[A026016(n+1)]*A000244(n)`
-/

namespace A101602.P13213264006380280145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A101602.P13213264006380280145

/-! ## A101602.P10751739108794134851

`∑[A026016(n+1)]*A140303(∑[n])`
-/

namespace A101602.P10751739108794134851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A140303 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A101602.P10751739108794134851

/-! ## A101602.P3748274651140525054

`∑[A071725(n+1)]*Δ[A003462(n)]`
-/

namespace A101602.P3748274651140525054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A101602.P3748274651140525054

/-! ## A101602.P4900547528438198415

`(A071724(n+2)-A000108(n+2))*3^n`
-/

namespace A101602.P4900547528438198415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071724 (n + 2) - A000108 (n + 2)) * (3 ^ n : ℤ)

end

end A101602.P4900547528438198415

/-!
# A101603: Riordan array (1/(1-x^2), x(1+x)/(1-x)).

The programs for A101603, there is no canonical definition to state claims against.
-/

/-! ## A101603.P8622180864976214950

`(A112475(n)+A008288(n))/2`
-/

namespace A101603.P8622180864976214950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112475 n + A008288 n : ℚ) / 2

end

end A101603.P8622180864976214950

/-! ## A101603.P6280356883455548188

`(A197870(n)+A035607(n))/2`
-/

namespace A101603.P6280356883455548188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197870 n + A035607 n : ℚ) / 2

end

end A101603.P6280356883455548188

/-! ## A101603.P17875107400010940589

`A217874(A061579(n))`
-/

namespace A101603.P17875107400010940589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217874 (A061579 n).toNat

end

end A101603.P17875107400010940589

/-! ## A101603.P9025764847726230198

`A217874(A038722(n+1)-1)`
-/

namespace A101603.P9025764847726230198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217874 (A038722 (n + 1) - 1).toNat

end

end A101603.P9025764847726230198

/-! ## A101603.P10890209585060838380

`A217874(A038722(n+2))`
-/

namespace A101603.P10890209585060838380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217874 (A038722 (n + 2)).toNat

end

end A101603.P10890209585060838380

/-! ## A101603.P10263752279048399441

`(A112475(A014132(n+1))+A112475(n))/2`
-/

namespace A101603.P10263752279048399441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112475 (A014132 (n + 1)).toNat + A112475 n : ℚ) / 2

end

end A101603.P10263752279048399441

/-! ## A101603.P6419823037361508481

`A112475(n)+A014682(A008288(n)-A112475(n))`
-/

namespace A101603.P6419823037361508481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112475 n + A014682 (A008288 n - A112475 n).toNat

end

end A101603.P6419823037361508481

/-! ## A101603.P7360909908810789881

`A273943(A008288(n)-A112475(n))+A112475(n)`
-/

namespace A101603.P7360909908810789881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A008288 n - A112475 n).toNat + A112475 n

end

end A101603.P7360909908810789881

/-! ## A101603.P13155538379086105790

`A014682(A112475(n)+A008288(n))`
-/

namespace A101603.P13155538379086105790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A112475 n + A008288 n).toNat

end

end A101603.P13155538379086105790

/-! ## A101603.P8517505384832562609

`A014682(A197870(n)+A035607(n))`
-/

namespace A101603.P8517505384832562609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A197870 n + A035607 n).toNat

end

end A101603.P8517505384832562609

/-! ## A101603.P668548142418973130

`A273943(A112475(n)+A008288(n))`
-/

namespace A101603.P668548142418973130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A112475 n + A008288 n).toNat

end

end A101603.P668548142418973130

/-! ## A101603.P10276672516275011154

`A273943(A197870(n)+A035607(n))`
-/

namespace A101603.P10276672516275011154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A197870 n + A035607 n).toNat

end

end A101603.P10276672516275011154

/-!
# A101604: a(n) = 2*a(n-1) + 5*a(n-2) + 2*a(n-3).

The programs for A101604, the canonical program `A101604.P14877935100281417377` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101604 has offset 0).

The definition of A101604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+5*a(n-2)+2*a(n-3)` (program `A101604.P14877935100281417377`, by `A101604.P14877935100281417377.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101604.P14877935100281417377

`2*a(n-1)+5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101604

/-- `2*a(n-1)+5*a(n-2)+2*a(n-3)` -/
def P14877935100281417377.Spec : Prop :=
  ∀ n, (P14877935100281417377.a n : ℤ) = A101604 n

theorem P14877935100281417377.correct : P14877935100281417377.Spec := by
  intro n
  simp only [A101604]

end A101604

/-! ## A101604.P1642070173063080733

`(A007483(n)+(-1)^n)/2`
-/

namespace A101604.P1642070173063080733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007483 n + (-1) ^ n : ℚ) / 2

end

end A101604.P1642070173063080733

namespace A101604

/-- `(A007483(n)+(-1)^n)/2` -/
def P1642070173063080733.Spec : Prop :=
  ∀ n, P1642070173063080733.a n = (A101604 n : ℚ)

end A101604

/-! ## A101604.P5864685262326076970

`ogf(-1/(-1+2x+5x^2+2x^3))`
-/

namespace A101604.P5864685262326076970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -5, -2] n

end

end A101604.P5864685262326076970

namespace A101604

/-- `ogf(-1/(-1+2x+5x^2+2x^3))` -/
def P5864685262326076970.Spec : Prop :=
  ∀ n, P5864685262326076970.a n = A101604 n

end A101604

/-! ## A101604.P11206228714271840058

`xor(1, 2*a(n-2)+3*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A101604.P11206228714271840058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 1 (2 * a (n - 2) + 3 * a (n - 1))

end

end A101604.P11206228714271840058

namespace A101604

/-- `xor(1, 2*a(n-2)+3*a(n-1))` -/
def P11206228714271840058.Spec : Prop :=
  ∀ n, (P11206228714271840058.a n : ℤ) = A101604 n

end A101604

/-! ## A101604.P2541349476677213535

`2*a(n-2)-xor(3, -(3*a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A101604.P2541349476677213535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 2) - Int.xor 3 (-(3 * a (n - 1)))

end

end A101604.P2541349476677213535

namespace A101604

/-- `2*a(n-2)-xor(3, -(3*a(n-1)))` -/
def P2541349476677213535.Spec : Prop :=
  ∀ n, P2541349476677213535.a n = A101604 n

end A101604

/-! ## A101604.P9856346605431524139

`or(2, 2*a(n-2)-1)+3*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A101604.P9856346605431524139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 2 (2 * a (n - 2) - 1) + 3 * a (n - 1)

end

end A101604.P9856346605431524139

namespace A101604

/-- `or(2, 2*a(n-2)-1)+3*a(n-1)` -/
def P9856346605431524139.Spec : Prop :=
  ∀ n, P9856346605431524139.a n = A101604 n

end A101604

/-! ## A101604.P7361475438183602484

`2*or(3, a(n-2))-3*(1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A101604.P7361475438183602484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * Int.lor 3 (a (n - 2)) - 3 * (1 - a (n - 1))

end

end A101604.P7361475438183602484

namespace A101604

/-- `2*or(3, a(n-2))-3*(1-a(n-1))` -/
def P7361475438183602484.Spec : Prop :=
  ∀ n, P7361475438183602484.a n = A101604 n

end A101604

/-! ## A101604.P3062188309764234444

`xor(1, 3*a(n-1)-(a(n-2)-3*a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A101604.P3062188309764234444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 1 (3 * a (n - 1) - (a (n - 2) - 3 * a (n - 2)))

end

end A101604.P3062188309764234444

namespace A101604

/-- `xor(1, 3*a(n-1)-(a(n-2)-3*a(n-2)))` -/
def P3062188309764234444.Spec : Prop :=
  ∀ n, P3062188309764234444.a n = A101604 n

end A101604

/-! ## A101604.P1058744800546452035

`A007482(n)-a(n-1)` with `a(0)=1`
-/

namespace A101604.P1058744800546452035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007482 n - a (n - 1)

end

end A101604.P1058744800546452035

namespace A101604

/-- `A007482(n)-a(n-1)` -/
def P1058744800546452035.Spec : Prop :=
  ∀ n, P1058744800546452035.a n = A101604 n

end A101604

/-! ## A101604.P16627014877880502966

`A104934(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A101604.P16627014877880502966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A104934 n + a (n - 2)

end

end A101604.P16627014877880502966

namespace A101604

/-- `A104934(n)+a(n-2)` -/
def P16627014877880502966.Spec : Prop :=
  ∀ n, P16627014877880502966.a n = A101604 n

end A101604

/-! ## A101604.P2803424330487288018

`A230269(n+2)+char[2*n]`
-/

namespace A101604.P2803424330487288018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230269 (n + 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A101604.P2803424330487288018

namespace A101604

/-- `A230269(n+2)+char[2*n]` -/
def P2803424330487288018.Spec : Prop :=
  ∀ n, P2803424330487288018.a n = A101604 n

end A101604

/-! ## A101604.P11550148527958499322

`A007455(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A101604.P11550148527958499322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007455 (2 * n) - a (n - 1)

end

end A101604.P11550148527958499322

namespace A101604

/-- `A007455(2*n)-a(n-1)` -/
def P11550148527958499322.Spec : Prop :=
  ∀ n, P11550148527958499322.a n = A101604 n

end A101604

/-! ## A101604.P9498206243967342935

`A007481(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A101604.P9498206243967342935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007481 (2 * n) - a (n - 1)

end

end A101604.P9498206243967342935

namespace A101604

/-- `A007481(2*n)-a(n-1)` -/
def P9498206243967342935.Spec : Prop :=
  ∀ n, P9498206243967342935.a n = A101604 n

end A101604

/-! ## A101604.P6418606954812930998

`A256960(n)-A014113(n)`
-/

namespace A101604.P6418606954812930998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256960 n - A014113 n

end

end A101604.P6418606954812930998

namespace A101604

/-- `A256960(n)-A014113(n)` -/
def P6418606954812930998.Spec : Prop :=
  ∀ n, P6418606954812930998.a n = A101604 n

end A101604

/-! ## A101604.P633669751001312028

`or(A176895(2*n), A230269(n+2))`
-/

namespace A101604.P633669751001312028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A176895 (2 * n)) (A230269 (n + 2))

end

end A101604.P633669751001312028

namespace A101604

/-- `or(A176895(2*n), A230269(n+2))` -/
def P633669751001312028.Spec : Prop :=
  ∀ n, P633669751001312028.a n = A101604 n

end A101604

/-! ## A101604.P16590254884077221280

`or(A177704(Δ[n²]), A230269(n+2))`
-/

namespace A101604.P16590254884077221280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A177704 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A230269 (n + 2))

end

end A101604.P16590254884077221280

namespace A101604

/-- `or(A177704(Δ[n²]), A230269(n+2))` -/
def P16590254884077221280.Spec : Prop :=
  ∀ n, P16590254884077221280.a n = A101604 n

end A101604

/-!
# A101605: a(n) = 1 if n is a product of exactly 3 (not necessarily distinct) primes, otherwise 0.

The programs for A101605, the canonical program `A101605.P6889417430511911463` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101605 has offset 1).

The definition of A101605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101605.P11188862826101548100

`and(4, ∑{e}[n+1, #]!)/4`
-/

namespace A101605.P11188862826101548100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 4 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℚ) / 4

end

end A101605.P11188862826101548100

namespace A101605

/-- `and(4, ∑{e}[n+1, #]!)/4` -/
def P11188862826101548100.Spec : Prop :=
  ∀ n, P11188862826101548100.a n = (A101605 (n + 1) : ℚ)

end A101605

/-! ## A101605.P6889417430511911463

`val(∑{e}[n+1, #]+abs(1-n), n+2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101605

/-- `val(∑{e}[n+1, #]+abs(1-n), n+2)` -/
def P6889417430511911463.Spec : Prop :=
  ∀ n, (P6889417430511911463.a n : ℤ) = A101605 (n + 1)

theorem P6889417430511911463.correct : P6889417430511911463.Spec := by
  intro n
  simp only [A101605, Nat.add_sub_cancel]

end A101605

/-! ## A101605.P8640046794035698088

`Δ[A072114(n)]`
-/

namespace A101605.P8640046794035698088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101605.P8640046794035698088

namespace A101605

/-- `Δ[A072114(n)]` -/
def P8640046794035698088.Spec : Prop :=
  ∀ n, P8640046794035698088.a n = A101605 (n + 1)

end A101605

/-! ## A101605.P12872686567149749308

`A101637(2*(n+1))`
-/

namespace A101605.P12872686567149749308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (2 * (n + 1))

end

end A101605.P12872686567149749308

namespace A101605

/-- `A101637(2*(n+1))` -/
def P12872686567149749308.Spec : Prop :=
  ∀ n, P12872686567149749308.a n = A101605 (n + 1)

end A101605

/-! ## A101605.P1947989170823157358

`val(A105560(n+1), 5)`
-/

namespace A101605.P1947989170823157358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105560 (n + 1)).toNat 5

end

end A101605.P1947989170823157358

namespace A101605

/-- `val(A105560(n+1), 5)` -/
def P1947989170823157358.Spec : Prop :=
  ∀ n, (P1947989170823157358.a n : ℤ) = A101605 (n + 1)

end A101605

/-! ## A101605.P17765477279222026139

`A045840(∑{e}[n+1, #])`
-/

namespace A101605.P17765477279222026139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045840 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A101605.P17765477279222026139

namespace A101605

/-- `A045840(∑{e}[n+1, #])` -/
def P17765477279222026139.Spec : Prop :=
  ∀ n, P17765477279222026139.a n = A101605 (n + 1)

end A101605

/-! ## A101605.P6667591779837743546

`A083935(∑{e}[n+1, #])`
-/

namespace A101605.P6667591779837743546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083935 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A101605.P6667591779837743546

namespace A101605

/-- `A083935(∑{e}[n+1, #])` -/
def P6667591779837743546.Spec : Prop :=
  ∀ n, P6667591779837743546.a n = A101605 (n + 1)

end A101605

/-! ## A101605.P6028174025343903557

`char[A014612(n+1)-1]`
-/

namespace A101605.P6028174025343903557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A101605.P6028174025343903557

namespace A101605

/-- `char[A014612(n+1)-1]` -/
def P6028174025343903557.Spec : Prop :=
  ∀ n, (P6028174025343903557.a n : ℤ) = A101605 (n + 1)

end A101605

/-! ## A101605.P8187235743286057888

`char[eq[3, A001222(n+1)]]`
-/

namespace A101605.P8187235743286057888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A101605.P8187235743286057888

namespace A101605

/-- `char[eq[3, A001222(n+1)]]` -/
def P8187235743286057888.Spec : Prop :=
  ∀ n, (P8187235743286057888.a n : ℤ) = A101605 (n + 1)

end A101605

/-! ## A101605.P17489190923502038339

`A316341(∑{e}[n+1, #]+3)`
-/

namespace A101605.P17489190923502038339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 3)

end

end A101605.P17489190923502038339

namespace A101605

/-- `A316341(∑{e}[n+1, #]+3)` -/
def P17489190923502038339.Spec : Prop :=
  ∀ n, P17489190923502038339.a n = A101605 (n + 1)

end A101605

/-! ## A101605.P17517225594939089777

`A294193(∑{e}[n+1, #])%2`
-/

namespace A101605.P17517225594939089777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294193 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 2

end

end A101605.P17517225594939089777

namespace A101605

/-- `A294193(∑{e}[n+1, #])%2` -/
def P17517225594939089777.Spec : Prop :=
  ∀ n, P17517225594939089777.a n = A101605 (n + 1)

end A101605

/-! ## A101605.P13411778208514435439

`A010051(A054576(n+1))`
-/

namespace A101605.P13411778208514435439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A054576 (n + 1)).toNat

end

end A101605.P13411778208514435439

namespace A101605

/-- `A010051(A054576(n+1))` -/
def P13411778208514435439.Spec : Prop :=
  ∀ n, P13411778208514435439.a n = A101605 (n + 1)

end A101605

/-! ## A101605.P5988963010194460031

`A064911(A032742(n+1))`
-/

namespace A101605.P5988963010194460031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A032742 (n + 1)).toNat

end

end A101605.P5988963010194460031

namespace A101605

/-- `A064911(A032742(n+1))` -/
def P5988963010194460031.Spec : Prop :=
  ∀ n, P5988963010194460031.a n = A101605 (n + 1)

end A101605

/-! ## A101605.P9031512455362065234

`A001343(A105560(n+1))`
-/

namespace A101605.P9031512455362065234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 (A105560 (n + 1)).toNat

end

end A101605.P9031512455362065234

namespace A101605

/-- `A001343(A105560(n+1))` -/
def P9031512455362065234.Spec : Prop :=
  ∀ n, P9031512455362065234.a n = A101605 (n + 1)

end A101605

/-! ## A101605.P1153254528527451456

`A064911(A063928(n+1))`
-/

namespace A101605.P1153254528527451456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A063928 (n + 1)).toNat

end

end A101605.P1153254528527451456

namespace A101605

/-- `A064911(A063928(n+1))` -/
def P1153254528527451456.Spec : Prop :=
  ∀ n, P1153254528527451456.a n = A101605 (n + 1)

end A101605

/-! ## A101605.P8741005538846587471

`A025468(A001222(n+1)²)`
-/

namespace A101605.P8741005538846587471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (A001222 (n + 1) ^ 2).toNat

end

end A101605.P8741005538846587471

namespace A101605

/-- `A025468(A001222(n+1)²)` -/
def P8741005538846587471.Spec : Prop :=
  ∀ n, P8741005538846587471.a n = A101605 (n + 1)

end A101605

/-! ## A101605.P9159217563228008208

`A010052(A061142(n+1)+1)`
-/

namespace A101605.P9159217563228008208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A061142 (n + 1) + 1).toNat

end

end A101605.P9159217563228008208

namespace A101605

/-- `A010052(A061142(n+1)+1)` -/
def P9159217563228008208.Spec : Prop :=
  ∀ n, P9159217563228008208.a n = A101605 (n + 1)

end A101605

/-! ## A101605.P9992145359937318563

`A072114(n+1)-A072114(n)`
-/

namespace A101605.P9992145359937318563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072114 (n + 1) - A072114 n

end

end A101605.P9992145359937318563

namespace A101605

/-- `A072114(n+1)-A072114(n)` -/
def P9992145359937318563.Spec : Prop :=
  ∀ n, P9992145359937318563.a n = A101605 (n + 1)

end A101605

/-! ## A101605.P18120804850880009695

`val(A000041(A001222(n+1)²), 6)`
-/

namespace A101605.P18120804850880009695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000041 (A001222 (n + 1) ^ 2).toNat).toNat 6

end

end A101605.P18120804850880009695

namespace A101605

/-- `val(A000041(A001222(n+1)²), 6)` -/
def P18120804850880009695.Spec : Prop :=
  ∀ n, (P18120804850880009695.a n : ℤ) = A101605 (n + 1)

end A101605

/-! ## A101605.P12324411842396913126

`char[eq[3, ∑{e}[n+1, #]]]`
-/

namespace A101605.P12324411842396913126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A101605.P12324411842396913126

namespace A101605

/-- `char[eq[3, ∑{e}[n+1, #]]]` -/
def P12324411842396913126.Spec : Prop :=
  ∀ n, (P12324411842396913126.a n : ℤ) = A101605 (n + 1)

end A101605

/-!
# A101606: a(n) = number of divisors of n that have exactly three (not necessarily distinct) prime factors.

The programs for A101606, the canonical program `A101606.P17365113457941405446` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101606 has offset 1).

The definition of A101606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101606.P17365113457941405446

`∑{d}[n+1, A101605(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101606

/-- `∑{d}[n+1, A101605(#)]` -/
def P17365113457941405446.Spec : Prop :=
  ∀ n, P17365113457941405446.a n = A101606 (n + 1)

theorem P17365113457941405446.correct : P17365113457941405446.Spec := by
  intro n
  simp only [A101606, Nat.add_sub_cancel]

end A101606

/-! ## A101606.P7963443284991596867

`A350338(n+1)-A350331(n+1)`
-/

namespace A101606.P7963443284991596867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350338 (n + 1) - A350331 (n + 1)

end

end A101606.P7963443284991596867

namespace A101606

/-- `A350338(n+1)-A350331(n+1)` -/
def P7963443284991596867.Spec : Prop :=
  ∀ n, P7963443284991596867.a n = A101606 (n + 1)

end A101606

/-! ## A101606.P8927419742665712480

`∑{d}[n+1, A015989(A001222(#)+3)]`
-/

namespace A101606.P8927419742665712480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A015989 (A001222 d + 3).toNat

end

end A101606.P8927419742665712480

namespace A101606

/-- `∑{d}[n+1, A015989(A001222(#)+3)]` -/
def P8927419742665712480.Spec : Prop :=
  ∀ n, P8927419742665712480.a n = A101606 (n + 1)

end A101606

/-! ## A101606.P16783918893204491417

`∑{d}[n+1, A015274((A001222(#)+2)²)]`
-/

namespace A101606.P16783918893204491417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A015274 ((A001222 d + 2) ^ 2).toNat

end

end A101606.P16783918893204491417

namespace A101606

/-- `∑{d}[n+1, A015274((A001222(#)+2)²)]` -/
def P16783918893204491417.Spec : Prop :=
  ∀ n, P16783918893204491417.a n = A101606 (n + 1)

end A101606

/-! ## A101606.P5988272913837902769

`A350338(n+1)-(A086971(n+1)+A001221(n+1))`
-/

namespace A101606.P5988272913837902769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350338 (n + 1) - (A086971 (n + 1) + A001221 (n + 1))

end

end A101606.P5988272913837902769

namespace A101606

/-- `A350338(n+1)-(A086971(n+1)+A001221(n+1))` -/
def P5988272913837902769.Spec : Prop :=
  ∀ n, P5988272913837902769.a n = A101606 (n + 1)

end A101606

/-! ## A101606.P9099804168358177531

`∑{d}[n+1, A101264(A001222(#²)²)]`
-/

namespace A101606.P9099804168358177531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101264 (A001222 (d ^ 2) ^ 2).toNat

end

end A101606.P9099804168358177531

namespace A101606

/-- `∑{d}[n+1, A101264(A001222(#²)²)]` -/
def P9099804168358177531.Spec : Prop :=
  ∀ n, P9099804168358177531.a n = A101606 (n + 1)

end A101606

/-! ## A101606.P14468453518728250500

`∑{d}[n+1, A107078(A001222(#²)+3)]`
-/

namespace A101606.P14468453518728250500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A107078 (A001222 (d ^ 2) + 3).toNat

end

end A101606.P14468453518728250500

namespace A101606

/-- `∑{d}[n+1, A107078(A001222(#²)+3)]` -/
def P14468453518728250500.Spec : Prop :=
  ∀ n, P14468453518728250500.a n = A101606 (n + 1)

end A101606

/-! ## A101606.P13343130895038456740

`A101638(2*(n+1))^C(n, a(n-1))` with `a(0)=0`
-/

namespace A101606.P13343130895038456740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A101638 (2 * (n + 1)) ^ Nat.choose n (a (n - 1)).toNat

end

end A101606.P13343130895038456740

namespace A101606

/-- `A101638(2*(n+1))^C(n, a(n-1))` -/
def P13343130895038456740.Spec : Prop :=
  ∀ n, P13343130895038456740.a n = A101606 (n + 1)

end A101606

/-! ## A101606.P14024272748130666588

`A101638(2*(n+1))%A101646(n+1)`
-/

namespace A101606.P14024272748130666588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101638 (2 * (n + 1))) (A101646 (n + 1))

end

end A101606.P14024272748130666588

namespace A101606

/-- `A101638(2*(n+1))%A101646(n+1)` -/
def P14024272748130666588.Spec : Prop :=
  ∀ n, P14024272748130666588.a n = A101606 (n + 1)

end A101606

/-! ## A101606.P1057130376145181976

`A101638(A002024((2*n+1)*(n+2)))`
-/

namespace A101606.P1057130376145181976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101638 (A002024 ((2 * n + 1) * (n + 2))).toNat

end

end A101606.P1057130376145181976

namespace A101606

/-- `A101638(A002024((2*n+1)*(n+2)))` -/
def P1057130376145181976.Spec : Prop :=
  ∀ n, P1057130376145181976.a n = A101606 (n + 1)

end A101606

/-!
# A101607: a(2n) = 7 - a(n), a(2n+1) = (n-1 mod 3) + 1.

The programs for A101607, the canonical program `A101607.P5864526708862086368` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101607 has offset 1).

The definition of A101607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101607.P5864526708862086368

`3-3/2*((-1)^val(n+1, 2)-1)-(n+2)%3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101607

/-- `3-3/2*((-1)^val(n+1, 2)-1)-(n+2)%3` -/
def P5864526708862086368.Spec : Prop :=
  ∀ n, P5864526708862086368.a n = (A101607 (n + 1) : ℚ)

end A101607

/-! ## A101607.P9978356407148695765

`(2*n)%3+(val(n+1, 2)%2+1)²`
-/

namespace A101607.P9978356407148695765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 3 + (SequenceMachineLib.valuation (n + 1) 2 % 2 + 1) ^ 2

end

end A101607.P9978356407148695765

namespace A101607

/-- `(2*n)%3+(val(n+1, 2)%2+1)²` -/
def P9978356407148695765.Spec : Prop :=
  ∀ n, (P9978356407148695765.a n : ℤ) = A101607 (n + 1)

end A101607

/-! ## A101607.P15850053045377261478

`(2*n)%3+A056832(n+1)²`
-/

namespace A101607.P15850053045377261478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n % 3 : ℕ) : ℤ) + A056832 (n + 1) ^ 2

end

end A101607.P15850053045377261478

namespace A101607

/-- `(2*n)%3+A056832(n+1)²` -/
def P15850053045377261478.Spec : Prop :=
  ∀ n, P15850053045377261478.a n = A101607 (n + 1)

end A101607

/-! ## A101607.P17056082805964417974

`A080425(n)+Δ[A065359(n)]²`
-/

namespace A101607.P17056082805964417974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n + (f1 (n + 1) - f1 n) ^ 2

end

end A101607.P17056082805964417974

namespace A101607

/-- `A080425(n)+Δ[A065359(n)]²` -/
def P17056082805964417974.Spec : Prop :=
  ∀ n, P17056082805964417974.a n = A101607 (n + 1)

end A101607

/-! ## A101607.P1452570386830079692

`A080425(n)+A056832(n+1)²`
-/

namespace A101607.P1452570386830079692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n + A056832 (n + 1) ^ 2

end

end A101607.P1452570386830079692

namespace A101607

/-- `A080425(n)+A056832(n+1)²` -/
def P1452570386830079692.Spec : Prop :=
  ∀ n, P1452570386830079692.a n = A101607 (n + 1)

end A101607

/-! ## A101607.P5583886815287245705

`A080425(n)+A105931(n+1)²`
-/

namespace A101607.P5583886815287245705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n + A105931 (n + 1) ^ 2

end

end A101607.P5583886815287245705

namespace A101607

/-- `A080425(n)+A105931(n+1)²` -/
def P5583886815287245705.Spec : Prop :=
  ∀ n, P5583886815287245705.a n = A101607 (n + 1)

end A101607

/-! ## A101607.P15646586602521733114

`A080425(n)+(2-Δ[A050292(n)])²`
-/

namespace A101607.P15646586602521733114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n + (2 - (f1 (n + 1) - f1 n)) ^ 2

end

end A101607.P15646586602521733114

namespace A101607

/-- `A080425(n)+(2-Δ[A050292(n)])²` -/
def P15646586602521733114.Spec : Prop :=
  ∀ n, P15646586602521733114.a n = A101607 (n + 1)

end A101607

/-! ## A101607.P17785904162334647349

`A080425(n)+A191254(2*(n+1))²`
-/

namespace A101607.P17785904162334647349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n + A191254 (2 * (n + 1)) ^ 2

end

end A101607.P17785904162334647349

namespace A101607

/-- `A080425(n)+A191254(2*(n+1))²` -/
def P17785904162334647349.Spec : Prop :=
  ∀ n, P17785904162334647349.a n = A101607 (n + 1)

end A101607

/-! ## A101607.P12334464945328684717

`A000096(Δ[A197911(n)])-A049347(n)`
-/

namespace A101607.P12334464945328684717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (f1 (n + 1) - f1 n).toNat - A049347 n

end

end A101607.P12334464945328684717

namespace A101607

/-- `A000096(Δ[A197911(n)])-A049347(n)` -/
def P12334464945328684717.Spec : Prop :=
  ∀ n, P12334464945328684717.a n = A101607 (n + 1)

end A101607

/-! ## A101607.P7844965289408285387

`A080425(n)+A010685(A007814(n+1))`
-/

namespace A101607.P7844965289408285387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n + A010685 (A007814 (n + 1)).toNat

end

end A101607.P7844965289408285387

namespace A101607

/-- `A080425(n)+A010685(A007814(n+1))` -/
def P7844965289408285387.Spec : Prop :=
  ∀ n, P7844965289408285387.a n = A101607 (n + 1)

end A101607

/-! ## A101607.P2019539500614722056

`A080425(n)+A040005(A001511(n+1))`
-/

namespace A101607.P2019539500614722056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n + A040005 (A001511 (n + 1)).toNat

end

end A101607.P2019539500614722056

namespace A101607

/-- `A080425(n)+A040005(A001511(n+1))` -/
def P2019539500614722056.Spec : Prop :=
  ∀ n, P2019539500614722056.a n = A101607 (n + 1)

end A101607

/-! ## A101607.P1621016278305331880

`A036579(n)+A080425(n)+A036581(n)`
-/

namespace A101607.P1621016278305331880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036579 n + (A080425 n + A036581 n)

end

end A101607.P1621016278305331880

namespace A101607

/-- `A036579(n)+A080425(n)+A036581(n)` -/
def P1621016278305331880.Spec : Prop :=
  ∀ n, P1621016278305331880.a n = A101607 (n + 1)

end A101607

/-! ## A101607.P12083987821353380677

`A173259(A171977(n+1))+A080425(n)`
-/

namespace A101607.P12083987821353380677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173259 (A171977 (n + 1)).toNat + A080425 n

end

end A101607.P12083987821353380677

namespace A101607

/-- `A173259(A171977(n+1))+A080425(n)` -/
def P12083987821353380677.Spec : Prop :=
  ∀ n, P12083987821353380677.a n = A101607 (n + 1)

end A101607

/-! ## A101607.P2100814289996631159

`A010872(2*n)+(val(n+1, 2)%2+1)²`
-/

namespace A101607.P2100814289996631159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * n) + (((SequenceMachineLib.valuation (n + 1) 2 % 2 + 1) ^ 2 : ℕ) : ℤ)

end

end A101607.P2100814289996631159

namespace A101607

/-- `A010872(2*n)+(val(n+1, 2)%2+1)²` -/
def P2100814289996631159.Spec : Prop :=
  ∀ n, P2100814289996631159.a n = A101607 (n + 1)

end A101607

/-! ## A101607.P2477274778773614720

`A080425(n)+Δ[A050292(2*n)]²`
-/

namespace A101607.P2477274778773614720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n + (f1 (n + 1) - f1 n) ^ 2

end

end A101607.P2477274778773614720

namespace A101607

/-- `A080425(n)+Δ[A050292(2*n)]²` -/
def P2477274778773614720.Spec : Prop :=
  ∀ n, P2477274778773614720.a n = A101607 (n + 1)

end A101607

/-! ## A101607.P16869030478457049819

`A010872(A005843(n))+A056832(n+1)²`
-/

namespace A101607.P16869030478457049819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A005843 n).toNat + A056832 (n + 1) ^ 2

end

end A101607.P16869030478457049819

namespace A101607

/-- `A010872(A005843(n))+A056832(n+1)²` -/
def P16869030478457049819.Spec : Prop :=
  ∀ n, P16869030478457049819.a n = A101607 (n + 1)

end A101607

/-! ## A101607.P15964196219784595786

`A093718(2*n+3)+A056832(n+1)²`
-/

namespace A101607.P15964196219784595786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093718 (2 * n + 3) + A056832 (n + 1) ^ 2

end

end A101607.P15964196219784595786

namespace A101607

/-- `A093718(2*n+3)+A056832(n+1)²` -/
def P15964196219784595786.Spec : Prop :=
  ∀ n, P15964196219784595786.a n = A101607 (n + 1)

end A101607

/-!
# A101608: Solution to Tower of Hanoi puzzle encoded in pairs with the moves (1,2),(2,3),(3,1),(2,1),(3,2),(1,3). The disks are moved from peg 1 to 2. For a tower of k disks use the first 2^k-1 number pairs.

The programs for A101608, the canonical program `A101608.P15445479744008623992` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101608 has offset 1).

The definition of A101608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101608.P15445479744008623992

`(Δ[A118827(n+1)]+n+3)%3+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A101608

/-- `(Δ[A118827(n+1)]+n+3)%3+1` -/
def P15445479744008623992.Spec : Prop :=
  ∀ n, P15445479744008623992.a n = A101608 (n + 1)

theorem P15445479744008623992.correct : P15445479744008623992.Spec := by
  intro n
  simp only [A101608, Nat.add_sub_cancel]

end A101608

/-! ## A101608.P1234429235490958301

`A130784(A154708(n+1)-(1-A035263(n+1)+A035263(n+2)))`
-/

namespace A101608.P1234429235490958301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A154708 (n + 1) - (1 - A035263 (n + 1) + A035263 (n + 2))).toNat

end

end A101608.P1234429235490958301

namespace A101608

/-- `A130784(A154708(n+1)-(1-A035263(n+1)+A035263(n+2)))` -/
def P1234429235490958301.Spec : Prop :=
  ∀ n, P1234429235490958301.a n = A101608 (n + 1)

end A101608

/-! ## A101608.P7825609251599586658

`A130784(or(2*n, A220779(n+1)))`
-/

namespace A101608.P7825609251599586658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (Int.lor (2 * n : ℤ) (A220779 (n + 1))).toNat

end

end A101608.P7825609251599586658

namespace A101608

/-- `A130784(or(2*n, A220779(n+1)))` -/
def P7825609251599586658.Spec : Prop :=
  ∀ n, P7825609251599586658.a n = A101608 (n + 1)

end A101608

/-! ## A101608.P17936886085873414092

`7%(A210243(n+1)+2)`
-/

namespace A101608.P17936886085873414092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A210243 (n + 1) + 2)

end

end A101608.P17936886085873414092

namespace A101608

/-- `7%(A210243(n+1)+2)` -/
def P17936886085873414092.Spec : Prop :=
  ∀ n, P17936886085873414092.a n = A101608 (n + 1)

end A101608

/-! ## A101608.P742884361763102784

`A231818(a(A210243(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A101608.P742884361763102784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A231818 (a (A210243 (n + 1)).toNat).toNat

end

end A101608.P742884361763102784

namespace A101608

/-- `A231818(a(A210243(n+1)))` -/
def P742884361763102784.Spec : Prop :=
  ∀ n, P742884361763102784.a n = A101608 (n + 1)

end A101608

/-! ## A101608.P4224419366687363651

`A231819(a(A210243(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A101608.P4224419366687363651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A231819 (a (A210243 (n + 1)).toNat).toNat

end

end A101608.P4224419366687363651

namespace A101608

/-- `A231819(a(A210243(n+1)))` -/
def P4224419366687363651.Spec : Prop :=
  ∀ n, P4224419366687363651.a n = A101608 (n + 1)

end A101608

/-! ## A101608.P18366228136396265952

`A342932(a(A210243(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A101608.P18366228136396265952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A342932 (a (A210243 (n + 1)).toNat).toNat

end

end A101608.P18366228136396265952

namespace A101608

/-- `A342932(a(A210243(n+1)))` -/
def P18366228136396265952.Spec : Prop :=
  ∀ n, P18366228136396265952.a n = A101608 (n + 1)

end A101608

/-! ## A101608.P11921009270872231475

`A079722(a(A210243(n+1))+2)` with `a(0)=1, a(1)=2`
-/

namespace A101608.P11921009270872231475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A079722 (a (A210243 (n + 1)).toNat + 2).toNat

end

end A101608.P11921009270872231475

namespace A101608

/-- `A079722(a(A210243(n+1))+2)` -/
def P11921009270872231475.Spec : Prop :=
  ∀ n, P11921009270872231475.a n = A101608 (n + 1)

end A101608

/-! ## A101608.P14515413567479226052

`A079723(a(A210243(n+1))+2)` with `a(0)=1, a(1)=2`
-/

namespace A101608.P14515413567479226052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A079723 (a (A210243 (n + 1)).toNat + 2).toNat

end

end A101608.P14515413567479226052

namespace A101608

/-- `A079723(a(A210243(n+1))+2)` -/
def P14515413567479226052.Spec : Prop :=
  ∀ n, P14515413567479226052.a n = A101608 (n + 1)

end A101608

/-! ## A101608.P9778353389181217388

`A001222(a(A210243(n+1))+11)` with `a(0)=1, a(1)=2`
-/

namespace A101608.P9778353389181217388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001222 (a (A210243 (n + 1)).toNat + 11).toNat

end

end A101608.P9778353389181217388

namespace A101608

/-- `A001222(a(A210243(n+1))+11)` -/
def P9778353389181217388.Spec : Prop :=
  ∀ n, P9778353389181217388.a n = A101608 (n + 1)

end A101608

/-!
# A101609: a(n) = n! * Sum_{k=1..floor(n/2)} 1/k.

The programs for A101609, the canonical program `A101609.P16251961433629584322` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101609 has offset 1).

The definition of A101609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101609.P16251961433629584322

`a(n-1)*(n+1)+(1+(-1)^(n+1))*n!` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101609

/-- `a(n-1)*(n+1)+(1+(-1)^(n+1))*n!` -/
def P16251961433629584322.Spec : Prop :=
  ∀ n, P16251961433629584322.a n = A101609 (n + 1)

theorem P16251961433629584322.correct : P16251961433629584322.Spec := by
  intro n
  simp only [A101609, Nat.add_sub_cancel]

end A101609

/-! ## A101609.P15089317379945730453

`2*A092691(n+1)`
-/

namespace A101609.P15089317379945730453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092691 (n + 1)

end

end A101609.P15089317379945730453

namespace A101609

/-- `2*A092691(n+1)` -/
def P15089317379945730453.Spec : Prop :=
  ∀ n, P15089317379945730453.a n = A101609 (n + 1)

end A101609

/-! ## A101609.P3089833432337108505

`Δ[2*∑[A092691(n)]]`
-/

namespace A101609.P3089833432337108505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092691 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101609.P3089833432337108505

namespace A101609

/-- `Δ[2*∑[A092691(n)]]` -/
def P3089833432337108505.Spec : Prop :=
  ∀ n, P3089833432337108505.a n = A101609 (n + 1)

end A101609

/-! ## A101609.P16103448320394165916

`n!+(n+1)*a(n-1)-A133942(n)` with `a(0)=0`
-/

namespace A101609.P16103448320394165916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.factorial n : ℤ) + (n + 1 : ℤ) * a (n - 1) - A133942 n

end

end A101609.P16103448320394165916

namespace A101609

/-- `n!+(n+1)*a(n-1)-A133942(n)` -/
def P16103448320394165916.Spec : Prop :=
  ∀ n, P16103448320394165916.a n = A101609 (n + 1)

end A101609

/-! ## A101609.P11454104101936710308

`A024168(n+1)+A001705(n)`
-/

namespace A101609.P11454104101936710308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024168 (n + 1) + A001705 n

end

end A101609.P11454104101936710308

namespace A101609

/-- `A024168(n+1)+A001705(n)` -/
def P11454104101936710308.Spec : Prop :=
  ∀ n, P11454104101936710308.a n = A101609 (n + 1)

end A101609

/-! ## A101609.P5948698216923715784

`A000254(n+1)-A024167(n+1)`
-/

namespace A101609.P5948698216923715784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) - A024167 (n + 1)

end

end A101609.P5948698216923715784

namespace A101609

/-- `A000254(n+1)-A024167(n+1)` -/
def P5948698216923715784.Spec : Prop :=
  ∀ n, P5948698216923715784.a n = A101609 (n + 1)

end A101609

/-! ## A101609.P9234444263734395072

`A092691(A028310(n+1))+A092691(n+1)`
-/

namespace A101609.P9234444263734395072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092691 (A028310 (n + 1)).toNat + A092691 (n + 1)

end

end A101609.P9234444263734395072

namespace A101609

/-- `A092691(A028310(n+1))+A092691(n+1)` -/
def P9234444263734395072.Spec : Prop :=
  ∀ n, P9234444263734395072.a n = A101609 (n + 1)

end A101609

/-!
# A101610: n! * Sum[k=1..ceiling(n/2), 1/k].

The programs for A101610, there is no canonical definition to state claims against.
-/

/-! ## A101610.P971175894564019481

`A101609(n+2)/(n+2)`
-/

namespace A101610.P971175894564019481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101609 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A101610.P971175894564019481

/-! ## A101610.P14535036049388036546

`A157525(A074148(n+1))+2*A092691(n+1)`
-/

namespace A101610.P14535036049388036546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157525 (A074148 (n + 1)).toNat + 2 * A092691 (n + 1)

end

end A101610.P14535036049388036546

/-!
# A101611: a(n) = n! * Sum_{k=ceiling(n/2)..n} 1/k.

The programs for A101611, there is no canonical definition to state claims against.
-/

/-! ## A101611.P13461039561773135875

`A024167(n+1)+2*A005212(n)`
-/

namespace A101611.P13461039561773135875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024167 (n + 1) + 2 * A005212 n

end

end A101611.P13461039561773135875

/-! ## A101611.P8436394553445224

`A388733(A000982(n+1))`
-/

namespace A101611.P8436394553445224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388733 (A000982 (n + 1)).toNat

end

end A101611.P8436394553445224

/-! ## A101611.P13024917528008055857

`A388733(A007590(n)+A004526(2*(n+1)))`
-/

namespace A101611.P13024917528008055857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388733 (A007590 n + A004526 (2 * (n + 1))).toNat

end

end A101611.P13024917528008055857

/-! ## A101611.P923281714762771020

`A138771(A122489(n+1))`
-/

namespace A101611.P923281714762771020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138771 (A122489 (n + 1)).toNat

end

end A101611.P923281714762771020

/-!
# A101612: n! * Sum[k=floor(n/2)..n, 1/k].

The programs for A101612, there is no canonical definition to state claims against.
-/

/-! ## A101612.P15115100751807422707

`A388733(A080476(n+2))`
-/

namespace A101612.P15115100751807422707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388733 (A080476 (n + 2)).toNat

end

end A101612.P15115100751807422707

/-! ## A101612.P16992187310997219440

`A138771(∑[and(6, n)+3]+2)`
-/

namespace A101612.P16992187310997219440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 6 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138771 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A101612.P16992187310997219440

/-! ## A101612.P15852573895679767140

`A138771(A074148(n+2)+1)`
-/

namespace A101612.P15852573895679767140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138771 (A074148 (n + 2) + 1).toNat

end

end A101612.P15852573895679767140

/-!
# A101613: (2n)! * Sum[k=n..2n, 1/k].

The programs for A101613, there is no canonical definition to state claims against.
-/

/-! ## A101613.P7746038041144633791

`A101611(2*(n+1))`
-/

namespace A101613.P7746038041144633791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101611 (2 * (n + 1))

end

end A101613.P7746038041144633791

/-! ## A101613.P12985752481169075126

`A000142(n)*A384024(n+1)`
-/

namespace A101613.P12985752481169075126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A384024 (n + 1)

end

end A101613.P12985752481169075126

/-! ## A101613.P13101701078397439230

`A024167(2*(n+1))+2*A000142(2*n+1)`
-/

namespace A101613.P13101701078397439230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024167 (2 * (n + 1)) + 2 * A000142 (2 * n + 1)

end

end A101613.P13101701078397439230

/-! ## A101613.P9493437217860350550

`A109792(2*n+1)+2*A000142(2*n+1)`
-/

namespace A101613.P9493437217860350550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109792 (2 * n + 1) + 2 * A000142 (2 * n + 1)

end

end A101613.P9493437217860350550

/-! ## A101613.P987088213205454172

`A388733(2*(n+1)²)`
-/

namespace A101613.P987088213205454172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388733 (2 * (n + 1) ^ 2)

end

end A101613.P987088213205454172

/-!
# A101614: Fixed point of morphism 0 -> 01, 1 -> 02, 2 -> 10.

The programs for A101614, the canonical program `A101614.P2926755992576604800` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101614 has offset 0).

The definition of A101614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101614.P17370519546887343657

`A003076(a(floor(n/2))-(-1)^n+1)` with `a(0)=0`
-/

namespace A101614.P17370519546887343657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A003076 (a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1).toNat

end

end A101614.P17370519546887343657

namespace A101614

/-- `A003076(a(floor(n/2))-(-1)^n+1)` -/
def P17370519546887343657.Spec : Prop :=
  ∀ n, P17370519546887343657.a n = A101614 n

end A101614

/-! ## A101614.P2966963063679378609

`A089840(n-2*(floor(n/2)-a(floor(n/2))))` with `a(0)=0`
-/

namespace A101614.P2966963063679378609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A089840 ((n : ℤ) - 2 * (⌊(n : ℚ) / 2⌋ - a ⌊(n : ℚ) / 2⌋.toNat)).toNat

end

end A101614.P2966963063679378609

namespace A101614

/-- `A089840(n-2*(floor(n/2)-a(floor(n/2))))` -/
def P2966963063679378609.Spec : Prop :=
  ∀ n, P2966963063679378609.a n = A101614 n

end A101614

/-! ## A101614.P18157762894215486859

`A122284(n-2*(floor(n/2)-a(floor(n/2))))` with `a(0)=0`
-/

namespace A101614.P18157762894215486859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A122284 ((n : ℤ) - 2 * (⌊(n : ℚ) / 2⌋ - a ⌊(n : ℚ) / 2⌋.toNat)).toNat

end

end A101614.P18157762894215486859

namespace A101614

/-- `A122284(n-2*(floor(n/2)-a(floor(n/2))))` -/
def P18157762894215486859.Spec : Prop :=
  ∀ n, P18157762894215486859.a n = A101614 n

end A101614

/-! ## A101614.P2926755992576604800

`A053186(a(floor(n/2))+A010684(n)-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101614

/-- `A053186(a(floor(n/2))+A010684(n)-1)` -/
def P2926755992576604800.Spec : Prop :=
  ∀ n, P2926755992576604800.a n = A101614 n

theorem P2926755992576604800.correct : P2926755992576604800.Spec := by
  intro n
  simp only [A101614]

end A101614

/-!
# A101615: Number of representations of n as a sum of the Jacobsthal numbers A078008 (2 is allowed twice as a part).

The programs for A101615, there is no canonical definition to state claims against.
-/

/-! ## A101615.P5109651219605323320

`A026465(∑[log2(gcd(2, n))])`
-/

namespace A101615.P5109651219605323320
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A101615.P5109651219605323320

/-! ## A101615.P24667073901593640

`A026465(∑[char[2*n]])`
-/

namespace A101615.P24667073901593640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101615.P24667073901593640

/-! ## A101615.P13392303945121738546

`A026465(floor(n/2)+1)!`
-/

namespace A101615.P13392303945121738546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A026465 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

end

end A101615.P13392303945121738546

/-! ## A101615.P16713867540487014087

`A284388(floor(n/2)+2)+1`
-/

namespace A101615.P16713867540487014087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (⌊(n : ℚ) / 2⌋ + 2).toNat + 1

end

end A101615.P16713867540487014087

/-! ## A101615.P5518528628360617497

`A395089(A284389(n+1))+1`
-/

namespace A101615.P5518528628360617497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395089 (A284389 (n + 1)).toNat + 1

end

end A101615.P5518528628360617497

/-! ## A101615.P7090516725800352820

`A001221(Δ[A026490(n+1)²]²+8)`
-/

namespace A101615.P7090516725800352820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026490 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) - f1 n) ^ 2 + 8).toNat

end

end A101615.P7090516725800352820

/-!
# A101616: Partial sums of a Jacobsthal representation sequence.

The programs for A101616, there is no canonical definition to state claims against.
-/

/-! ## A101616.P8876616034714931694

`eq[1, gcd(3, xor(n+1, 1-n))]`
-/

namespace A101616.P8876616034714931694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (Int.xor (n + 1 : ℤ) (1 - (n : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101616.P8876616034714931694

/-! ## A101616.P9350334276148432968

`comp[(2*n+3)*and(1, Δ[val(n+1, 2)])]`
-/

namespace A101616.P9350334276148432968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * Int.land 1 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A101616.P9350334276148432968

/-! ## A101616.P5093413796780412969

`eq[3, 3^((xor(n+1, n-2)+1)²%3)]`
-/

namespace A101616.P5093413796780412969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.tmod ((Int.xor (n + 1 : ℤ) ((n : ℤ) - 2) + 1) ^ 2) 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A101616.P5093413796780412969

/-! ## A101616.P5651589352412988889

`comp[eq[0, xor(n, n+2)%3]+n%2]+1`
-/

namespace A101616.P5651589352412988889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + n % 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A101616.P5651589352412988889

/-! ## A101616.P3751631081214760705

`∑[A101615(n)]`
-/

namespace A101616.P3751631081214760705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101616.P3751631081214760705

/-! ## A101616.P2593680090036277137

`∑[A026465(∑[log2(gcd(2, n))])]`
-/

namespace A101616.P2593680090036277137
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101616.P2593680090036277137

/-! ## A101616.P6122522913655448274

`eq[3, A020639(xor(n+1, 1-n)²+11)]`
-/

namespace A101616.P6122522913655448274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.xor (n + 1 : ℤ) (1 - (n : ℤ)) ^ 2 + 11).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101616.P6122522913655448274

/-! ## A101616.P10820215571284681257

`eq[0, A000010(xor(n+1, n-2)²)%3]`
-/

namespace A101616.P10820215571284681257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (Int.xor (n + 1 : ℤ) ((n : ℤ) - 2) ^ 2).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101616.P10820215571284681257

/-!
# A101618: Indices of semiprimes in A001003.

The programs for A101618, there is no canonical definition to state claims against.
-/

/-! ## A101618.P6155131947875641307

`A128719(n+3)+A051927(A001037(n))`
-/

namespace A101618.P6155131947875641307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128719 (n + 3) + A051927 (A001037 n).toNat

end

end A101618.P6155131947875641307

/-!
# A101619: Semiprimes in A001003.

The programs for A101619, there is no canonical definition to state claims against.
-/

/-! ## A101619.P10203374438587244188

`A001003(A101618(n+1))`
-/

namespace A101619.P10203374438587244188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 (A101618 (n + 1)).toNat

end

end A101619.P10203374438587244188

/-!
# A101620: Digraph topologies, represented through the number whose nonzero bits correspond to the open sets in the topology.

The programs for A101620, there is no canonical definition to state claims against.
-/

/-! ## A101620.P16231714913118344651

`∑[A319702(A110590(n+1)²)]`
-/

namespace A101620.P16231714913118344651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A110590 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101620.P16231714913118344651

/-! ## A101620.P96350163614943396

`eq[A063694(n), A204851(A004525(n))]`
-/

namespace A101620.P96350163614943396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204851 (A004525 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101620.P96350163614943396

/-!
# A101621: Initial decimal digit of n^11.

The programs for A101621, there is no canonical definition to state claims against.
-/

/-! ## A101621.P10553446764658243784

`A302786(C(A050376(n+1), A064989(n+1)))`
-/

namespace A101621.P10553446764658243784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302786 (Nat.choose (A050376 (n + 1)).toNat (A064989 (n + 1)).toNat)

end

end A101621.P10553446764658243784

/-!
# A101622: A Horadam-Jacobsthal sequence.

The programs for A101622, the canonical program `A101622.P5730009193948016768` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101622 has offset 0).

The definition of A101622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101622.P5730009193948016768

`a(n-1)+2*a(n-2)+5` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101622

/-- `a(n-1)+2*a(n-2)+5` -/
def P5730009193948016768.Spec : Prop :=
  ∀ n, (P5730009193948016768.a n : ℤ) = A101622 n

theorem P5730009193948016768.correct : P5730009193948016768.Spec := by
  intro n
  simp only [A101622]

end A101622

/-! ## A101622.P1931613729840739293

`A000079(n+1)-A010693(n)`
-/

namespace A101622.P1931613729840739293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A010693 n

end

end A101622.P1931613729840739293

namespace A101622

/-- `A000079(n+1)-A010693(n)` -/
def P1931613729840739293.Spec : Prop :=
  ∀ n, P1931613729840739293.a n = A101622 n

end A101622

/-! ## A101622.P4744727663487407516

`(2^(n+2)+(-1)^n-5)/2`
-/

namespace A101622.P4744727663487407516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 2) : ℤ) + (-1) ^ n - 5 : ℚ) / 2

end

end A101622.P4744727663487407516

namespace A101622

/-- `(2^(n+2)+(-1)^n-5)/2` -/
def P4744727663487407516.Spec : Prop :=
  ∀ n, P4744727663487407516.a n = (A101622 n : ℚ)

theorem P4744727663487407516.correct : P4744727663487407516.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A101622, Nat.add_sub_cancel, A101622.P4744727663487407516.a, A101622.P5730009193948016768.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A101622, Nat.add_sub_cancel, A101622.P4744727663487407516.a, A101622.P5730009193948016768.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101622

/-! ## A101622.P3334855336382411301

`∑[abs(xor(1, (-2)^n))]`
-/

namespace A101622.P3334855336382411301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((-2) ^ n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101622.P3334855336382411301

namespace A101622

/-- `∑[abs(xor(1, (-2)^n))]` -/
def P3334855336382411301.Spec : Prop :=
  ∀ n, P3334855336382411301.a n = A101622 n

end A101622

/-! ## A101622.P218691676312257893

`ogf((x+4x^2)/(1-2x-x^2+2x^3))`
-/

namespace A101622.P218691676312257893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4] [1, -2, -1, 2] n

end

end A101622.P218691676312257893

namespace A101622

/-- `ogf((x+4x^2)/(1-2x-x^2+2x^3))` -/
def P218691676312257893.Spec : Prop :=
  ∀ n, P218691676312257893.a n = A101622 n

end A101622

/-! ## A101622.P6605556851150091171

`∑[2^n]-gcd(2, n+1)`
-/

namespace A101622.P6605556851150091171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.gcd 2 (n + 1) : ℤ)

end

end A101622.P6605556851150091171

namespace A101622

/-- `∑[2^n]-gcd(2, n+1)` -/
def P6605556851150091171.Spec : Prop :=
  ∀ n, P6605556851150091171.a n = A101622 n

end A101622

/-! ## A101622.P13179896933216859635

`xor(3, a(n-1)+2^n)` with `a(0)=0`
-/

namespace A101622.P13179896933216859635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 3 (a (n - 1) + 2 ^ n)

end

end A101622.P13179896933216859635

namespace A101622

/-- `xor(3, a(n-1)+2^n)` -/
def P13179896933216859635.Spec : Prop :=
  ∀ n, (P13179896933216859635.a n : ℤ) = A101622 n

end A101622

/-! ## A101622.P13205997246286270590

`xor(3, or(2^n, a(n-1)))` with `a(0)=0`
-/

namespace A101622.P13205997246286270590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 3 (Nat.lor (2 ^ n) (a (n - 1)))

end

end A101622.P13205997246286270590

namespace A101622

/-- `xor(3, or(2^n, a(n-1)))` -/
def P13205997246286270590.Spec : Prop :=
  ∀ n, (P13205997246286270590.a n : ℤ) = A101622 n

end A101622

/-! ## A101622.P14690154091498391023

`xor(2^n, xor(3, a(n-1)))` with `a(0)=0`
-/

namespace A101622.P14690154091498391023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (2 ^ n) (Nat.xor 3 (a (n - 1)))

end

end A101622.P14690154091498391023

namespace A101622

/-- `xor(2^n, xor(3, a(n-1)))` -/
def P14690154091498391023.Spec : Prop :=
  ∀ n, (P14690154091498391023.a n : ℤ) = A101622 n

end A101622

/-! ## A101622.P6664838491722321391

`gcd(4, n%2)+2*a(n-1)` with `a(0)=0`
-/

namespace A101622.P6664838491722321391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.gcd 4 (n % 2) + 2 * a (n - 1)

end

end A101622.P6664838491722321391

namespace A101622

/-- `gcd(4, n%2)+2*a(n-1)` -/
def P6664838491722321391.Spec : Prop :=
  ∀ n, (P6664838491722321391.a n : ℤ) = A101622 n

end A101622

/-! ## A101622.P15877548335586611787

`2*(a(n-1)+2^(-1)^n)` with `a(0)=0`
-/

namespace A101622.P15877548335586611787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + (2 : ℚ) ^ ((-1) ^ n : ℤ))

end

end A101622.P15877548335586611787

namespace A101622

/-- `2*(a(n-1)+2^(-1)^n)` -/
def P15877548335586611787.Spec : Prop :=
  ∀ n, P15877548335586611787.a n = (A101622 n : ℚ)

end A101622

/-! ## A101622.P11823926555284434635

`gcd(n, n+2)²+2*a(n-1)` with `a(0)=0`
-/

namespace A101622.P11823926555284434635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.gcd n (n + 2) ^ 2 + 2 * a (n - 1)

end

end A101622.P11823926555284434635

namespace A101622

/-- `gcd(n, n+2)²+2*a(n-1)` -/
def P11823926555284434635.Spec : Prop :=
  ∀ n, (P11823926555284434635.a n : ℤ) = A101622 n

end A101622

/-! ## A101622.P14618913826463160288

`a(n-2)+a(n-1)+a(n-2)+5` with `a(0)=0, a(1)=1`
-/

namespace A101622.P14618913826463160288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2) + 5)

end

end A101622.P14618913826463160288

namespace A101622

/-- `a(n-2)+a(n-1)+a(n-2)+5` -/
def P14618913826463160288.Spec : Prop :=
  ∀ n, (P14618913826463160288.a n : ℤ) = A101622 n

end A101622

/-! ## A101622.P18344955307151894009

`∑[A166977(n)]`
-/

namespace A101622.P18344955307151894009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101622.P18344955307151894009

namespace A101622

/-- `∑[A166977(n)]` -/
def P18344955307151894009.Spec : Prop :=
  ∀ n, P18344955307151894009.a n = A101622 n

end A101622

/-! ## A101622.P4878740012707480518

`∑[A014551(n)]-2`
-/

namespace A101622.P4878740012707480518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A101622.P4878740012707480518

namespace A101622

/-- `∑[A014551(n)]-2` -/
def P4878740012707480518.Spec : Prop :=
  ∀ n, P4878740012707480518.a n = A101622 n

end A101622

/-! ## A101622.P14571098414760917187

`A140253(n+1)-1`
-/

namespace A101622.P14571098414760917187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 (n + 1) - 1

end

end A101622.P14571098414760917187

namespace A101622

/-- `A140253(n+1)-1` -/
def P14571098414760917187.Spec : Prop :=
  ∀ n, P14571098414760917187.a n = A101622 n

end A101622

/-! ## A101622.P7104957289615236908

`A166920(n+1)-2`
-/

namespace A101622.P7104957289615236908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 (n + 1) - 2

end

end A101622.P7104957289615236908

namespace A101622

/-- `A166920(n+1)-2` -/
def P7104957289615236908.Spec : Prop :=
  ∀ n, P7104957289615236908.a n = A101622 n

end A101622

/-! ## A101622.P454566209519668912

`A049332(n+1)-4`
-/

namespace A101622.P454566209519668912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049332 (n + 1) - 4

end

end A101622.P454566209519668912

namespace A101622

/-- `A049332(n+1)-4` -/
def P454566209519668912.Spec : Prop :=
  ∀ n, P454566209519668912.a n = A101622 n

end A101622

/-! ## A101622.P14694585126477998365

`A052950(n+2)-3`
-/

namespace A101622.P14694585126477998365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052950 (n + 2) - 3

end

end A101622.P14694585126477998365

namespace A101622

/-- `A052950(n+2)-3` -/
def P14694585126477998365.Spec : Prop :=
  ∀ n, P14694585126477998365.a n = A101622 n

end A101622

/-! ## A101622.P63611963838582004

`2*A320933(n)+n`
-/

namespace A101622.P63611963838582004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320933 n + (n : ℤ)

end

end A101622.P63611963838582004

namespace A101622

/-- `2*A320933(n)+n` -/
def P63611963838582004.Spec : Prop :=
  ∀ n, P63611963838582004.a n = A101622 n

end A101622

/-!
# A101623: Modular binomial transform of 10^n.

The programs for A101623, there is no canonical definition to state claims against.
-/

/-! ## A101623.P7870008254303566060

`A260534(eq[21, A099375(n)])`
-/

namespace A101623.P7870008254303566060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101623.P7870008254303566060

/-! ## A101623.P3405479094766018592

`A260534(A000124(n+10)+n-1)`
-/

namespace A101623.P3405479094766018592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260534 (A000124 (n + 10) + ((n : ℤ) - 1)).toNat

end

end A101623.P3405479094766018592

/-! ## A101623.P13232359036648925464

`A260534(A005408(n)+A000217(n+9)+9)`
-/

namespace A101623.P13232359036648925464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260534 (A005408 n + (A000217 (n + 9) + 9)).toNat

end

end A101623.P13232359036648925464

/-! ## A101623.P11431790277394043780

`A260534(eq[11, A193739(n)])`
-/

namespace A101623.P11431790277394043780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101623.P11431790277394043780

/-! ## A101623.P11299736471812952152

`A260534(eq[11, A004736(n+1)])`
-/

namespace A101623.P11299736471812952152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101623.P11299736471812952152

/-!
# A101624: Stern-Jacobsthal numbers.

The programs for A101624, the canonical program `A101624.P7381934698581333813` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101624 has offset 0).

The definition of A101624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101624.P7381934698581333813

`xor(2*a(n-2), a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101624

/-- `xor(2*a(n-2), a(n-1))` -/
def P7381934698581333813.Spec : Prop :=
  ∀ n, (P7381934698581333813.a n : ℤ) = A101624 n

theorem P7381934698581333813.correct : P7381934698581333813.Spec := by
  intro n
  simp only [A101624]

end A101624

/-! ## A101624.P3200700855395752994

`xor(lcm(2, a(n-2)), a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A101624.P3200700855395752994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor (Nat.lcm 2 (a (n - 2))) (a (n - 1))

end

end A101624.P3200700855395752994

namespace A101624

/-- `xor(lcm(2, a(n-2)), a(n-1))` -/
def P3200700855395752994.Spec : Prop :=
  ∀ n, (P3200700855395752994.a n : ℤ) = A101624 n

end A101624

/-! ## A101624.P17596162972472639748

`xor(a(n-2)+a(n-2), a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A101624.P17596162972472639748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor (a (n - 2) + a (n - 2)) (a (n - 1))

end

end A101624.P17596162972472639748

namespace A101624

/-- `xor(a(n-2)+a(n-2), a(n-1))` -/
def P17596162972472639748.Spec : Prop :=
  ∀ n, (P17596162972472639748.a n : ℤ) = A101624 n

theorem P17596162972472639748.correct : P17596162972472639748.Spec := by
  intro n
  simp only [A101624, Nat.add_sub_cancel, A101624.P17596162972472639748.a, A101624.P7381934698581333813.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A101624

/-! ## A101624.P7713951327445099401

`A260534(∑[n+3])`
-/

namespace A101624.P7713951327445099401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260534 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101624.P7713951327445099401

namespace A101624

/-- `A260534(∑[n+3])` -/
def P7713951327445099401.Spec : Prop :=
  ∀ n, P7713951327445099401.a n = A101624 n

end A101624

/-! ## A101624.P12534910483799466420

`A030101(A006921(n))`
-/

namespace A101624.P12534910483799466420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A006921 n).toNat

end

end A101624.P12534910483799466420

namespace A101624

/-- `A030101(A006921(n))` -/
def P12534910483799466420.Spec : Prop :=
  ∀ n, P12534910483799466420.a n = A101624 n

end A101624

/-!
# A101625: A bisection of the Stern-Jacobsthal numbers.

The programs for A101625, the canonical program `A101625.P10743912997521348069` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101625 has offset 0).

The definition of A101625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101625.P10743912997521348069

`xor(4*a(n-2), a(n-1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101625

/-- `xor(4*a(n-2), a(n-1))` -/
def P10743912997521348069.Spec : Prop :=
  ∀ n, (P10743912997521348069.a n : ℤ) = A101625 n

theorem P10743912997521348069.correct : P10743912997521348069.Spec := by
  intro n
  simp only [A101625]

end A101625

/-! ## A101625.P16609941341016058344

`xor(lcm(4, a(n-2)), a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A101625.P16609941341016058344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor (Nat.lcm 4 (a (n - 2))) (a (n - 1))

end

end A101625.P16609941341016058344

namespace A101625

/-- `xor(lcm(4, a(n-2)), a(n-1))` -/
def P16609941341016058344.Spec : Prop :=
  ∀ n, (P16609941341016058344.a n : ℤ) = A101625 n

end A101625

/-! ## A101625.P8573061161515209056

`xor(a(n-2)/(1/2)², a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A101625.P8573061161515209056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 2) : ℚ) / ((1 : ℚ) / 2) ^ 2)) (a (n - 1))

end

end A101625.P8573061161515209056

namespace A101625

/-- `xor(a(n-2)/(1/2)², a(n-1))` -/
def P8573061161515209056.Spec : Prop :=
  ∀ n, P8573061161515209056.a n = A101625 n

end A101625

/-! ## A101625.P3796917384753764259

`A101624(A004273(n))-A000007(n)`
-/

namespace A101625.P3796917384753764259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101624 (A004273 n).toNat - A000007 n

end

end A101625.P3796917384753764259

namespace A101625

/-- `A101624(A004273(n))-A000007(n)` -/
def P3796917384753764259.Spec : Prop :=
  ∀ n, P3796917384753764259.a n = A101625 n

end A101625

/-! ## A101625.P423481644893311468

`xor(A099901(n), A099902(n))`
-/

namespace A101625.P423481644893311468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A099901 n) (A099902 n)

end

end A101625.P423481644893311468

namespace A101625

/-- `xor(A099901(n), A099902(n))` -/
def P423481644893311468.Spec : Prop :=
  ∀ n, P423481644893311468.a n = A101625 n

end A101625

/-! ## A101625.P15630239972323817041

`(A101624(2*n)-A101624(2*n+1))/2`
-/

namespace A101625.P15630239972323817041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101624 (2 * n) - A101624 (2 * n + 1) : ℚ) / 2

end

end A101625.P15630239972323817041

namespace A101625

/-- `(A101624(2*n)-A101624(2*n+1))/2` -/
def P15630239972323817041.Spec : Prop :=
  ∀ n, P15630239972323817041.a n = (A101625 n : ℚ)

end A101625

/-! ## A101625.P5291016958306114521

`A101624(A004273(n))%A317857(n+1)`
-/

namespace A101625.P5291016958306114521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101624 (A004273 n).toNat) (A317857 (n + 1))

end

end A101625.P5291016958306114521

namespace A101625

/-- `A101624(A004273(n))%A317857(n+1)` -/
def P5291016958306114521.Spec : Prop :=
  ∀ n, P5291016958306114521.a n = A101625 n

end A101625

/-!
# A101626: Initial decimal digit of n^12.

The programs for A101626, there is no canonical definition to state claims against.
-/

/-! ## A101626.P13386795238361131098

`A097410((n+1)²)`
-/

namespace A101626.P13386795238361131098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097410 ((n + 1) ^ 2)

end

end A101626.P13386795238361131098

/-! ## A101626.P4041816615631835302

`dr(A097410(∑[2*n+1]))`
-/

namespace A101626.P4041816615631835302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A097410 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A101626.P4041816615631835302

/-! ## A101626.P9326942458133190361

`A097410(∑[n+1+n])%20`
-/

namespace A101626.P9326942458133190361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097410 (∑ j ∈ Finset.range (n + 1), f1 j)) 20

end

end A101626.P9326942458133190361

/-! ## A101626.P14250767211793871410

`A097410(∑[2*n+1])+char[A016964(n)]`
-/

namespace A101626.P14250767211793871410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016964 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097410 (∑ j ∈ Finset.range (n + 1), f1 j) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A101626.P14250767211793871410

/-! ## A101626.P8890561426351979613

`char[A006068(n)]*A097410(∑[2*n+1])`
-/

namespace A101626.P8890561426351979613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A097410 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A101626.P8890561426351979613

/-! ## A101626.P983102426286438410

`A097410(∑[2*n+1])+A000007(n+1)`
-/

namespace A101626.P983102426286438410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097410 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 (n + 1)

end

end A101626.P983102426286438410

/-! ## A101626.P10642461768813054040

`A007318(C(2, n))*A097410(∑[2*n+1])`
-/

namespace A101626.P10642461768813054040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A097410 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101626.P10642461768813054040

/-! ## A101626.P15138518516977353674

`A000041(and(1, -n))*A097410(∑[2*n+1])`
-/

namespace A101626.P15138518516977353674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * A097410 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101626.P15138518516977353674

/-! ## A101626.P16536801062012502583

`A007318(and(1, -n))*A097410(∑[2*n+1])`
-/

namespace A101626.P16536801062012502583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A097410 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101626.P16536801062012502583

/-! ## A101626.P9348193371008549066

`char[A055396(n+1)]*A097410(∑[2*n+1])`
-/

namespace A101626.P9348193371008549066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A097410 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A101626.P9348193371008549066

/-! ## A101626.P14165083714287885579

`char[A056239(n+1)]*A097410(∑[2*n+1])`
-/

namespace A101626.P14165083714287885579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A097410 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A101626.P14165083714287885579

/-! ## A101626.P3520059575473724167

`char[A241917(n+1)]*A097410(∑[2*n+1])`
-/

namespace A101626.P3520059575473724167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A097410 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A101626.P3520059575473724167

/-! ## A101626.P3368170315402462240

`A097410(∑[2*n+1])^ceil(n/A000041(n))`
-/

namespace A101626.P3368170315402462240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097410 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (⌈(n : ℚ) / (A000041 n : ℚ)⌉ : ℤ)

end

end A101626.P3368170315402462240

/-! ## A101626.P166486981810736889

`A010167(2*n+1)*A097410(∑[2*n+1])`
-/

namespace A101626.P166486981810736889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010167 (2 * n + 1) * A097410 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101626.P166486981810736889

/-! ## A101626.P6591751396693061090

`A007318(val(n+1, 9))*A097410(∑[2*n+1])`
-/

namespace A101626.P6591751396693061090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 9) * A097410 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101626.P6591751396693061090

/-! ## A101626.P5976345611903967076

`A097410(∑[2*n+1])+A008683(20*n+48)`
-/

namespace A101626.P5976345611903967076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097410 (∑ j ∈ Finset.range (n + 1), f1 j) + A008683 (20 * n + 48)

end

end A101626.P5976345611903967076

/-! ## A101626.P2841268113395152218

`A097410(∑[2*n+1])^A000045(ceil(n/(n+1)))`
-/

namespace A101626.P2841268113395152218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097410 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A101626.P2841268113395152218

/-! ## A101626.P16604332719647620129

`A001222(A008578(n+2))*A097410(∑[2*n+1])`
-/

namespace A101626.P16604332719647620129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 2)).toNat * A097410 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101626.P16604332719647620129

/-!
# A101628: Denominator of partial sums of a certain series.

The programs for A101628, there is no canonical definition to state claims against.
-/

/-! ## A101628.P8325126416913655376

`A058312(3*n+4)/A195616(A374988(n+1))`
-/

namespace A101628.P8325126416913655376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058312 (3 * n + 4) : ℚ) / (A195616 (A374988 (n + 1)).toNat : ℚ)

end

end A101628.P8325126416913655376

/-!
# A101630: Denominator of partial sums of a certain series.

The programs for A101630, there is no canonical definition to state claims against.
-/

/-! ## A101630.P9811545242590280786

`A051538(2*(n+1))/5`
-/

namespace A101630.P9811545242590280786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051538 (2 * (n + 1)) : ℚ) / 5

end

end A101630.P9811545242590280786

/-! ## A101630.P13037834473234477448

`A120101(A096376(n+1))`
-/

namespace A101630.P13037834473234477448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120101 (A096376 (n + 1)).toNat

end

end A101630.P13037834473234477448

/-! ## A101630.P13345592451147599130

`A120105(eq[3, A140756(n+1)])`
-/

namespace A101630.P13345592451147599130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101630.P13345592451147599130

/-! ## A101630.P3846589210439998916

`A120101(A099776(n+1)-n)`
-/

namespace A101630.P3846589210439998916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120101 (A099776 (n + 1) - (n : ℤ)).toNat

end

end A101630.P3846589210439998916

/-! ## A101630.P1204267206696376676

`A120101(A167614(2*n+1)-1)`
-/

namespace A101630.P1204267206696376676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120101 (A167614 (2 * n + 1) - 1).toNat

end

end A101630.P1204267206696376676

/-!
# A101633: Main diagonal of array in A101385.

The programs for A101633, there is no canonical definition to state claims against.
-/

/-! ## A101633.P7287075448894592803

`A101385(∑[4*n]+1)`
-/

namespace A101633.P7287075448894592803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101385 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A101633.P7287075448894592803

/-!
# A101634: Subtract 1, multiply by 1, subtract 2, multiply by 2, etc.

The programs for A101634, there is no canonical definition to state claims against.
-/

/-! ## A101634.P10689118184516587352

`n*(a(n-1)-n)` with `a(0)=6`
-/

namespace A101634.P10689118184516587352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  (n : ℤ) * (a (n - 1) - (n : ℤ))

end

end A101634.P10689118184516587352

/-! ## A101634.P9435336759120104153

`2*A117643(n)+n`
-/

namespace A101634.P9435336759120104153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117643 n + (n : ℤ)

end

end A101634.P9435336759120104153

/-! ## A101634.P11781154929264256099

`A028310(n)-(A000007(n)-2*A117643(n))`
-/

namespace A101634.P11781154929264256099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (A000007 n - 2 * A117643 n)

end

end A101634.P11781154929264256099

/-! ## A101634.P14743693688913121775

`A162514(A133263(n))-(A000007(n)-2*A117643(n))`
-/

namespace A101634.P14743693688913121775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 (A133263 n).toNat - (A000007 n - 2 * A117643 n)

end

end A101634.P14743693688913121775

/-! ## A101634.P6915193851696242228

`6*A000142(n)-A030297(n)`
-/

namespace A101634.P6915193851696242228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000142 n - A030297 n

end

end A101634.P6915193851696242228

/-!
# A101635: Increasing primes of alternating congruences modulo 6.

The programs for A101635, there is no canonical definition to state claims against.
-/

/-! ## A101635.P10980271527225481701

`A204910(a(n-1)-3)` with `a(0)=5`
-/

namespace A101635.P10980271527225481701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A204910 (a (n - 1) - 3).toNat

end

end A101635.P10980271527225481701

/-! ## A101635.P9883132771660716820

`A092525(A175442(n+1))`
-/

namespace A101635.P9883132771660716820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092525 (A175442 (n + 1)).toNat

end

end A101635.P9883132771660716820

/-! ## A101635.P3701929484545147220

`A045344(A270189(n+2))`
-/

namespace A101635.P3701929484545147220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A270189 (n + 2)).toNat

end

end A101635.P3701929484545147220

/-! ## A101635.P13516306069069075808

`A000040(A270189(n+2)+1)`
-/

namespace A101635.P13516306069069075808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A270189 (n + 2) + 1).toNat

end

end A101635.P13516306069069075808

/-! ## A101635.P1413956947961067094

`A008578(A270189(n+2)+2)`
-/

namespace A101635.P1413956947961067094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A270189 (n + 2) + 2).toNat

end

end A101635.P1413956947961067094

/-! ## A101635.P10370625634313893646

`A006530(5*A175442(n+1))`
-/

namespace A101635.P10370625634313893646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * A175442 (n + 1)).toNat

end

end A101635.P10370625634313893646

/-! ## A101635.P6558206134101279035

`A006530(lcm(5, A175442(n+1)))`
-/

namespace A101635.P6558206134101279035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 5 (A175442 (n + 1)))

end

end A101635.P6558206134101279035

/-! ## A101635.P8993697581727796726

`A001222(a(n-1))*A175442(n+1)` with `a(0)=5`
-/

namespace A101635.P8993697581727796726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A001222 (a (n - 1)).toNat * A175442 (n + 1)

end

end A101635.P8993697581727796726

/-!
# A101637: a(n) = 1 if n is a 4-almost prime, that is a product of exactly four (not necessarily distinct) primes, 0 otherwise.

The programs for A101637, the canonical program `A101637.P10076770007622641866` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101637 has offset 1).

The definition of A101637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101637.P11771989289604142659

`val(A105560(n+1), 7)`
-/

namespace A101637.P11771989289604142659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105560 (n + 1)).toNat 7

end

end A101637.P11771989289604142659

namespace A101637

/-- `val(A105560(n+1), 7)` -/
def P11771989289604142659.Spec : Prop :=
  ∀ n, (P11771989289604142659.a n : ℤ) = A101637 (n + 1)

end A101637

/-! ## A101637.P17290554771523796559

`char[A014613(n+1)-1]`
-/

namespace A101637.P17290554771523796559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A101637.P17290554771523796559

namespace A101637

/-- `char[A014613(n+1)-1]` -/
def P17290554771523796559.Spec : Prop :=
  ∀ n, (P17290554771523796559.a n : ℤ) = A101637 (n + 1)

end A101637

/-! ## A101637.P17016846685845015866

`char[eq[4, A001222(n+1)]]`
-/

namespace A101637.P17016846685845015866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A101637.P17016846685845015866

namespace A101637

/-- `char[eq[4, A001222(n+1)]]` -/
def P17016846685845015866.Spec : Prop :=
  ∀ n, (P17016846685845015866.a n : ℤ) = A101637 (n + 1)

end A101637

/-! ## A101637.P10076770007622641866

`C(4, A086436(n+1))%2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101637

/-- `C(4, A086436(n+1))%2` -/
def P10076770007622641866.Spec : Prop :=
  ∀ n, (P10076770007622641866.a n : ℤ) = A101637 (n + 1)

theorem P10076770007622641866.correct : P10076770007622641866.Spec := by
  intro n
  simp only [A101637, Nat.add_sub_cancel]

end A101637

/-! ## A101637.P15562840650995243767

`A289389(∑{e}[n+1, #])%5`
-/

namespace A101637.P15562840650995243767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289389 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 5

end

end A101637.P15562840650995243767

namespace A101637

/-- `A289389(∑{e}[n+1, #])%5` -/
def P15562840650995243767.Spec : Prop :=
  ∀ n, P15562840650995243767.a n = A101637 (n + 1)

end A101637

/-! ## A101637.P18207357879289257672

`char[eq[4, val(A329600(n+1), 2)]]`
-/

namespace A101637.P18207357879289257672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329600 (n + 1)).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A101637.P18207357879289257672

namespace A101637

/-- `char[eq[4, val(A329600(n+1), 2)]]` -/
def P18207357879289257672.Spec : Prop :=
  ∀ n, (P18207357879289257672.a n : ℤ) = A101637 (n + 1)

end A101637

/-! ## A101637.P11443578690671635276

`A316866(xor(1, ∑{e}[n+1, #]+1)+1)`
-/

namespace A101637.P11443578690671635276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (Nat.xor 1 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1) + 1)

end

end A101637.P11443578690671635276

namespace A101637

/-- `A316866(xor(1, ∑{e}[n+1, #]+1)+1)` -/
def P11443578690671635276.Spec : Prop :=
  ∀ n, P11443578690671635276.a n = A101637 (n + 1)

end A101637

/-! ## A101637.P7107750479268135494

`A316869(xor(2, ∑{e}[n+1, #]+1)+1)`
-/

namespace A101637.P7107750479268135494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (Nat.xor 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1) + 1)

end

end A101637.P7107750479268135494

namespace A101637

/-- `A316869(xor(2, ∑{e}[n+1, #]+1)+1)` -/
def P7107750479268135494.Spec : Prop :=
  ∀ n, P7107750479268135494.a n = A101637 (n + 1)

end A101637

/-! ## A101637.P8445757390944844488

`A064911(A054576(n+1))`
-/

namespace A101637.P8445757390944844488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A054576 (n + 1)).toNat

end

end A101637.P8445757390944844488

namespace A101637

/-- `A064911(A054576(n+1))` -/
def P8445757390944844488.Spec : Prop :=
  ∀ n, P8445757390944844488.a n = A101637 (n + 1)

end A101637

/-! ## A101637.P6574915876931730761

`A010051(A117358(n+1))`
-/

namespace A101637.P6574915876931730761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A117358 (n + 1)).toNat

end

end A101637.P6574915876931730761

namespace A101637

/-- `A010051(A117358(n+1))` -/
def P6574915876931730761.Spec : Prop :=
  ∀ n, P6574915876931730761.a n = A101637 (n + 1)

end A101637

/-! ## A101637.P4922280813516526825

`A101605(A032742(n+1))`
-/

namespace A101637.P4922280813516526825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A032742 (n + 1)).toNat

end

end A101637.P4922280813516526825

namespace A101637

/-- `A101605(A032742(n+1))` -/
def P4922280813516526825.Spec : Prop :=
  ∀ n, P4922280813516526825.a n = A101637 (n + 1)

end A101637

/-! ## A101637.P12041840733498649889

`A091225(A073093(n+1)²)`
-/

namespace A101637.P12041840733498649889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A073093 (n + 1) ^ 2).toNat

end

end A101637.P12041840733498649889

namespace A101637

/-- `A091225(A073093(n+1)²)` -/
def P12041840733498649889.Spec : Prop :=
  ∀ n, P12041840733498649889.a n = A101637 (n + 1)

end A101637

/-! ## A101637.P14658963943796360339

`A016389(A001222(n+1)+1)`
-/

namespace A101637.P14658963943796360339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A001222 (n + 1) + 1).toNat

end

end A101637.P14658963943796360339

namespace A101637

/-- `A016389(A001222(n+1)+1)` -/
def P14658963943796360339.Spec : Prop :=
  ∀ n, P14658963943796360339.a n = A101637 (n + 1)

end A101637

/-! ## A101637.P608053966002002397

`val(A000041(A001222(n+1)²), 7)`
-/

namespace A101637.P608053966002002397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000041 (A001222 (n + 1) ^ 2).toNat).toNat 7

end

end A101637.P608053966002002397

namespace A101637

/-- `val(A000041(A001222(n+1)²), 7)` -/
def P608053966002002397.Spec : Prop :=
  ∀ n, (P608053966002002397.a n : ℤ) = A101637 (n + 1)

end A101637

/-! ## A101637.P17471476497410929333

`A236959(xor(4, A001222(n+1))+1)%2`
-/

namespace A101637.P17471476497410929333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236959 (Int.xor 4 (A001222 (n + 1)) + 1).toNat) 2

end

end A101637.P17471476497410929333

namespace A101637

/-- `A236959(xor(4, A001222(n+1))+1)%2` -/
def P17471476497410929333.Spec : Prop :=
  ∀ n, P17471476497410929333.a n = A101637 (n + 1)

end A101637

/-! ## A101637.P4845597638185599198

`∑{d}[n+1, A008683(#)*A101638((n+1)/#)]`
-/

namespace A101637.P4845597638185599198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A101638 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A101637.P4845597638185599198

namespace A101637

/-- `∑{d}[n+1, A008683(#)*A101638((n+1)/#)]` -/
def P4845597638185599198.Spec : Prop :=
  ∀ n, P4845597638185599198.a n = A101637 (n + 1)

end A101637

/-! ## A101637.P7869644693382264514

`char[eq[4, A144494(n+1)]]`
-/

namespace A101637.P7869644693382264514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A101637.P7869644693382264514

namespace A101637

/-- `char[eq[4, A144494(n+1)]]` -/
def P7869644693382264514.Spec : Prop :=
  ∀ n, (P7869644693382264514.a n : ℤ) = A101637 (n + 1)

end A101637

/-! ## A101637.P24608880899300692

`char[eq[4, A255201(n+1)/2]]`
-/

namespace A101637.P24608880899300692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255201 (n + 1) : ℚ) / 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A101637.P24608880899300692

namespace A101637

/-- `char[eq[4, A255201(n+1)/2]]` -/
def P24608880899300692.Spec : Prop :=
  ∀ n, (P24608880899300692.a n : ℤ) = A101637 (n + 1)

end A101637

/-! ## A101637.P6996762498224542775

`char[eq[4, val(A124508(n+1), 2)]]`
-/

namespace A101637.P6996762498224542775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124508 (n + 1)).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A101637.P6996762498224542775

namespace A101637

/-- `char[eq[4, val(A124508(n+1), 2)]]` -/
def P6996762498224542775.Spec : Prop :=
  ∀ n, (P6996762498224542775.a n : ℤ) = A101637 (n + 1)

end A101637

/-! ## A101637.P9890847524675249780

`char[eq[4, val(A167334(n+1), 2)]]`
-/

namespace A101637.P9890847524675249780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A167334 (n + 1)).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A101637.P9890847524675249780

namespace A101637

/-- `char[eq[4, val(A167334(n+1), 2)]]` -/
def P9890847524675249780.Spec : Prop :=
  ∀ n, (P9890847524675249780.a n : ℤ) = A101637 (n + 1)

end A101637

/-!
# A101638: Number of distinct 4-almost primes A014613 which are factors of n.

The programs for A101638, the canonical program `A101638.P11906782754422928034` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101638 has offset 1).

The definition of A101638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101638.P11906782754422928034

`∑{d}[n+1, A101637(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101638

/-- `∑{d}[n+1, A101637(#)]` -/
def P11906782754422928034.Spec : Prop :=
  ∀ n, P11906782754422928034.a n = A101638 (n + 1)

theorem P11906782754422928034.correct : P11906782754422928034.Spec := by
  intro n
  simp only [A101638, Nat.add_sub_cancel]

end A101638

/-! ## A101638.P4542024626337250283

`∑{d}[n+1, A101605(A032742(#))]`
-/

namespace A101638.P4542024626337250283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101605 (A032742 d).toNat

end

end A101638.P4542024626337250283

namespace A101638

/-- `∑{d}[n+1, A101605(A032742(#))]` -/
def P4542024626337250283.Spec : Prop :=
  ∀ n, P4542024626337250283.a n = A101638 (n + 1)

end A101638

/-! ## A101638.P1385199026333669327

`∑{d}[n+1, A267417(A001222(#)+2)]`
-/

namespace A101638.P1385199026333669327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267417 (A001222 d + 2).toNat

end

end A101638.P1385199026333669327

namespace A101638

/-- `∑{d}[n+1, A267417(A001222(#)+2)]` -/
def P1385199026333669327.Spec : Prop :=
  ∀ n, P1385199026333669327.a n = A101638 (n + 1)

end A101638

/-! ## A101638.P6281762116182939571

`∑{d}[n+1, val(A175415(A001222(#²)+1), 4)]`
-/

namespace A101638.P6281762116182939571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A175415 (A001222 (d ^ 2) + 1).toNat).toNat 4

end

end A101638.P6281762116182939571

namespace A101638

/-- `∑{d}[n+1, val(A175415(A001222(#²)+1), 4)]` -/
def P6281762116182939571.Spec : Prop :=
  ∀ n, (P6281762116182939571.a n : ℤ) = A101638 (n + 1)

end A101638

/-! ## A101638.P9441345916006414636

`∑{d}[n+1, A001222(A000188(A001222(#*#)+1))]`
-/

namespace A101638.P9441345916006414636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 (A000188 (A001222 (d * d) + 1).toNat).toNat

end

end A101638.P9441345916006414636

namespace A101638

/-- `∑{d}[n+1, A001222(A000188(A001222(#*#)+1))]` -/
def P9441345916006414636.Spec : Prop :=
  ∀ n, P9441345916006414636.a n = A101638 (n + 1)

end A101638

/-! ## A101638.P6447016430498958475

`A097795(A007427(n+1)+A007425(n+1))`
-/

namespace A101638.P6447016430498958475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A007427 (n + 1) + A007425 (n + 1)).toNat

end

end A101638.P6447016430498958475

namespace A101638

/-- `A097795(A007427(n+1)+A007425(n+1))` -/
def P6447016430498958475.Spec : Prop :=
  ∀ n, P6447016430498958475.a n = A101638 (n + 1)

end A101638

/-! ## A101638.P4795057078851920293

`A077028(A000217(n))*A101606(A032742(n+1))`
-/

namespace A101638.P4795057078851920293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A000217 n).toNat * A101606 (A032742 (n + 1)).toNat

end

end A101638.P4795057078851920293

namespace A101638

/-- `A077028(A000217(n))*A101606(A032742(n+1))` -/
def P4795057078851920293.Spec : Prop :=
  ∀ n, P4795057078851920293.a n = A101638 (n + 1)

end A101638

/-! ## A101638.P10542175983887572271

`A001221(A140513(n))*A101606(A032742(n+1))`
-/

namespace A101638.P10542175983887572271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A140513 n).toNat * A101606 (A032742 (n + 1)).toNat

end

end A101638.P10542175983887572271

namespace A101638

/-- `A001221(A140513(n))*A101606(A032742(n+1))` -/
def P10542175983887572271.Spec : Prop :=
  ∀ n, P10542175983887572271.a n = A101638 (n + 1)

end A101638

/-! ## A101638.P7143050667411286527

`A101606(A032742(n+1))%A166521(A062767(n+1)+1)`
-/

namespace A101638.P7143050667411286527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101606 (A032742 (n + 1)).toNat) (A166521 (A062767 (n + 1) + 1).toNat)

end

end A101638.P7143050667411286527

namespace A101638

/-- `A101606(A032742(n+1))%A166521(A062767(n+1)+1)` -/
def P7143050667411286527.Spec : Prop :=
  ∀ n, P7143050667411286527.a n = A101638 (n + 1)

end A101638

/-! ## A101638.P16434756285845864712

`A167688(A001511((n+1)²))+A118458(A167688(n+1))`
-/

namespace A101638.P16434756285845864712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167688 (A001511 ((n + 1) ^ 2)).toNat + A118458 (A167688 (n + 1)).toNat

end

end A101638.P16434756285845864712

namespace A101638

/-- `A167688(A001511((n+1)²))+A118458(A167688(n+1))` -/
def P16434756285845864712.Spec : Prop :=
  ∀ n, P16434756285845864712.a n = A101638 (n + 1)

end A101638

/-!
# A101642: a(n) = Knuth's Fibonacci (or circle) product "3 o n".

The programs for A101642, the canonical program `A101642.P9483542321522411203` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101642 has offset 1).

The definition of A101642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101642.P9730589834124428364

`3*A000201(n+2)+2*(n+1)-3`
-/

namespace A101642.P9730589834124428364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000201 (n + 2) + (2 * (n + 1) : ℤ) - 3

end

end A101642.P9730589834124428364

namespace A101642

/-- `3*A000201(n+2)+2*(n+1)-3` -/
def P9730589834124428364.Spec : Prop :=
  ∀ n, P9730589834124428364.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P9483542321522411203

`A101345(n+1)+A000201(n+2)+n`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101642

/-- `A101345(n+1)+A000201(n+2)+n` -/
def P9483542321522411203.Spec : Prop :=
  ∀ n, P9483542321522411203.a n = A101642 (n + 1)

theorem P9483542321522411203.correct : P9483542321522411203.Spec := by
  intro n
  simp only [A101642, Nat.add_sub_cancel]

end A101642

/-! ## A101642.P1940739868332586973

`∑[Δ[floor(ϕ*(n+1))]²+4]`
-/

namespace A101642.P1940739868332586973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101642.P1940739868332586973

namespace A101642

/-- `∑[Δ[floor(ϕ*(n+1))]²+4]` -/
def P1940739868332586973.Spec : Prop :=
  ∀ n, P1940739868332586973.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P10088700043390636217

`A151915(n+2)-1`
-/

namespace A101642.P10088700043390636217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151915 (n + 2) - 1

end

end A101642.P10088700043390636217

namespace A101642

/-- `A151915(n+2)-1` -/
def P10088700043390636217.Spec : Prop :=
  ∀ n, P10088700043390636217.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P16419444559458102065

`A035337(n+1)-3`
-/

namespace A101642.P16419444559458102065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 (n + 1) - 3

end

end A101642.P16419444559458102065

namespace A101642

/-- `A035337(n+1)-3` -/
def P16419444559458102065.Spec : Prop :=
  ∀ n, P16419444559458102065.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P17025980335271257387

`A134861(n+2)-2`
-/

namespace A101642.P17025980335271257387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134861 (n + 2) - 2

end

end A101642.P17025980335271257387

namespace A101642

/-- `A134861(n+2)-2` -/
def P17025980335271257387.Spec : Prop :=
  ∀ n, P17025980335271257387.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P10587624010987769209

`round(ϕ*A101345(n+1))`
-/

namespace A101642.P10587624010987769209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A101345 (n + 1) : ℝ))

end

end A101642.P10587624010987769209

namespace A101642

/-- `round(ϕ*A101345(n+1))` -/
def P10587624010987769209.Spec : Prop :=
  ∀ n, P10587624010987769209.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P14806556772324708812

`3*A026274(n+1)-(n+1)`
-/

namespace A101642.P14806556772324708812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026274 (n + 1) - (n + 1 : ℤ)

end

end A101642.P14806556772324708812

namespace A101642

/-- `3*A026274(n+1)-(n+1)` -/
def P14806556772324708812.Spec : Prop :=
  ∀ n, P14806556772324708812.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P2580654735414550928

`∑[A014675(n)²]+4*(n+1)`
-/

namespace A101642.P2580654735414550928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 * (n + 1) : ℤ)

end

end A101642.P2580654735414550928

namespace A101642

/-- `∑[A014675(n)²]+4*(n+1)` -/
def P2580654735414550928.Spec : Prop :=
  ∀ n, P2580654735414550928.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P3153008916898642125

`A001950(Δ[floor(ϕ*(n+1))])+3*floor(n*ϕ²+ϕ)-n`
-/

namespace A101642.P3153008916898642125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (f1 (n + 1) - f1 n).toNat + (3 * ⌊(n : ℝ) * Real.goldenRatio ^ 2 + Real.goldenRatio⌋ - (n : ℤ))

end

end A101642.P3153008916898642125

namespace A101642

/-- `A001950(Δ[floor(ϕ*(n+1))])+3*floor(n*ϕ²+ϕ)-n` -/
def P3153008916898642125.Spec : Prop :=
  ∀ n, P3153008916898642125.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P7691124577069316291

`A101345(n+1)+A026274(n+1)`
-/

namespace A101642.P7691124577069316291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (n + 1) + A026274 (n + 1)

end

end A101642.P7691124577069316291

namespace A101642

/-- `A101345(n+1)+A026274(n+1)` -/
def P7691124577069316291.Spec : Prop :=
  ∀ n, P7691124577069316291.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P16666106500466018068

`A001478(n+1)+3*A026274(n+1)`
-/

namespace A101642.P16666106500466018068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + 3 * A026274 (n + 1)

end

end A101642.P16666106500466018068

namespace A101642

/-- `A001478(n+1)+3*A026274(n+1)` -/
def P16666106500466018068.Spec : Prop :=
  ∀ n, P16666106500466018068.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P12053176392065824001

`A003622(n+2)+A058065(n)+A003622(n+2)`
-/

namespace A101642.P12053176392065824001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 2) + (A058065 n + A003622 (n + 2))

end

end A101642.P12053176392065824001

namespace A101642

/-- `A003622(n+2)+A058065(n)+A003622(n+2)` -/
def P12053176392065824001.Spec : Prop :=
  ∀ n, P12053176392065824001.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P6565683572119984304

`A134860(n+2)-4`
-/

namespace A101642.P6565683572119984304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 2) - 4

end

end A101642.P6565683572119984304

namespace A101642

/-- `A134860(n+2)-4` -/
def P6565683572119984304.Spec : Prop :=
  ∀ n, P6565683572119984304.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P2326434942968559185

`A188438(n+2)-8`
-/

namespace A101642.P2326434942968559185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188438 (n + 2) - 8

end

end A101642.P2326434942968559185

namespace A101642

/-- `A188438(n+2)-8` -/
def P2326434942968559185.Spec : Prop :=
  ∀ n, P2326434942968559185.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P11290057852211182941

`A190509(n+2)-3+n`
-/

namespace A101642.P11290057852211182941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190509 (n + 2) - 3 + (n : ℤ)

end

end A101642.P11290057852211182941

namespace A101642

/-- `A190509(n+2)-3+n` -/
def P11290057852211182941.Spec : Prop :=
  ∀ n, P11290057852211182941.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P11840354177682882548

`A284396(n+2)+2*n-3`
-/

namespace A101642.P11840354177682882548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284396 (n + 2) + ((2 * n : ℤ) - 3)

end

end A101642.P11840354177682882548

namespace A101642

/-- `A284396(n+2)+2*n-3` -/
def P11840354177682882548.Spec : Prop :=
  ∀ n, P11840354177682882548.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P16367607218137019655

`3*A057843(n+2)-(n-2)`
-/

namespace A101642.P16367607218137019655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A057843 (n + 2) - ((n : ℤ) - 2)

end

end A101642.P16367607218137019655

namespace A101642

/-- `3*A057843(n+2)-(n-2)` -/
def P16367607218137019655.Spec : Prop :=
  ∀ n, P16367607218137019655.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P2510150711730822408

`A134859(A066096(n+2))-1`
-/

namespace A101642.P2510150711730822408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (A066096 (n + 2)).toNat - 1

end

end A101642.P2510150711730822408

namespace A101642

/-- `A134859(A066096(n+2))-1` -/
def P2510150711730822408.Spec : Prop :=
  ∀ n, P2510150711730822408.a n = A101642 (n + 1)

end A101642

/-! ## A101642.P17809316201049120649

`A035338(n+1)-(A003623(n+2)+2)`
-/

namespace A101642.P17809316201049120649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035338 (n + 1) - (A003623 (n + 2) + 2)

end

end A101642.P17809316201049120649

namespace A101642

/-- `A035338(n+1)-(A003623(n+2)+2)` -/
def P17809316201049120649.Spec : Prop :=
  ∀ n, P17809316201049120649.a n = A101642 (n + 1)

end A101642

/-!
# A101643: First row of array in A101385.

The programs for A101643, there is no canonical definition to state claims against.
-/

/-! ## A101643.P3763769714396078555

`A054204(A022340(n+1))`
-/

namespace A101643.P3763769714396078555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054204 (A022340 (n + 1)).toNat

end

end A101643.P3763769714396078555

/-! ## A101643.P15453196626265218192

`A054204(∑[2*A129761(n)])`
-/

namespace A101643.P15453196626265218192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054204 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101643.P15453196626265218192

/-! ## A101643.P13876563990367564530

`A054204(2*A003714(n+1))`
-/

namespace A101643.P13876563990367564530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054204 (2 * A003714 (n + 1)).toNat

end

end A101643.P13876563990367564530

/-! ## A101643.P1116479362973630683

`A054204(record[A229763(2*(n+1))])`
-/

namespace A101643.P1116479362973630683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054204 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101643.P1116479362973630683

/-! ## A101643.P1483298997764892814

`A054204(record[A292272(2*(n+1))])`
-/

namespace A101643.P1483298997764892814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054204 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101643.P1483298997764892814

/-!
# A101644: Second row of array in A101385.

The programs for A101644, there is no canonical definition to state claims against.
-/

/-! ## A101644.P16288288213964140146

`A107227(A022340(n+1))`
-/

namespace A101644.P16288288213964140146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107227 (A022340 (n + 1)).toNat

end

end A101644.P16288288213964140146

/-! ## A101644.P9222627953605050767

`A107227(2*A003714(n+1))`
-/

namespace A101644.P9222627953605050767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107227 (2 * A003714 (n + 1)).toNat

end

end A101644.P9222627953605050767

/-! ## A101644.P17804913902835164614

`A107227(record[A022340(abs(1-n))])`
-/

namespace A101644.P17804913902835164614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107227 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101644.P17804913902835164614

/-! ## A101644.P9903758953393280554

`A107227(record[A090077(2*(n+1))])`
-/

namespace A101644.P9903758953393280554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107227 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101644.P9903758953393280554

/-! ## A101644.P4642199950435339290

`A107227(record[A184615(2*(n+1))])`
-/

namespace A101644.P4642199950435339290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184615 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107227 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101644.P4642199950435339290

/-!
# A101645: Third row of array in A101385.

The programs for A101645, there is no canonical definition to state claims against.
-/

/-! ## A101645.P12110287277521735067

`A054204(A062880(A003714(A022342(n+2))))`
-/

namespace A101645.P12110287277521735067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054204 (A062880 (A003714 (A022342 (n + 2)).toNat).toNat).toNat

end

end A101645.P12110287277521735067

/-! ## A101645.P811872557536006268

`A101385(∑[n+2]+4)`
-/

namespace A101645.P811872557536006268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101385 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A101645.P811872557536006268

/-! ## A101645.P329035091349127937

`lcm(3, A101385(A167614(n+1)))`
-/

namespace A101645.P329035091349127937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A101385 (A167614 (n + 1)).toNat)

end

end A101645.P329035091349127937

/-! ## A101645.P13026914307801173707

`A101385(A167614(n+1))+A025442(n)`
-/

namespace A101645.P13026914307801173707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101385 (A167614 (n + 1)).toNat + A025442 n

end

end A101645.P13026914307801173707

/-!
# A101646: Array read by antidiagonals: T(n,k) = variant of Knuth's Fibonacci (or circle) product of n and k (A101330). Sometimes called the "arroba" product.

The programs for A101646, there is no canonical definition to state claims against.
-/

/-! ## A101646.P11284068124682635967

`round(A101330(n+1)/ϕ²)`
-/

namespace A101646.P11284068124682635967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A101330 (n + 1) : ℝ) / Real.goldenRatio ^ 2)

end

end A101646.P11284068124682635967

/-! ## A101646.P16162690762059855307

`A189663(A101330(n+1))`
-/

namespace A101646.P16162690762059855307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A101330 (n + 1)).toNat

end

end A101646.P16162690762059855307

/-! ## A101646.P16264116925352879616

`A057364(A101330(n+1)+1)`
-/

namespace A101646.P16264116925352879616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (A101330 (n + 1) + 1).toNat

end

end A101646.P16264116925352879616

/-! ## A101646.P2103620686677417871

`A060144(A101330(n+1)+1)`
-/

namespace A101646.P2103620686677417871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A101330 (n + 1) + 1).toNat

end

end A101646.P2103620686677417871

/-! ## A101646.P4719673921048947933

`A057360(A101330(n+1)+2)`
-/

namespace A101646.P4719673921048947933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A101330 (n + 1) + 2).toNat

end

end A101646.P4719673921048947933

/-! ## A101646.P16711278097954365863

`A005206(A005206(A101330(n+1)-1))`
-/

namespace A101646.P16711278097954365863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 (A101330 (n + 1) - 1).toNat).toNat

end

end A101646.P16711278097954365863

/-! ## A101646.P16098034165462073811

`A005206(A000201(A101330(n+1))%A101330(n+1))`
-/

namespace A101646.P16098034165462073811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.tmod (A000201 (A101330 (n + 1)).toNat) (A101330 (n + 1))).toNat

end

end A101646.P16098034165462073811

/-! ## A101646.P14747456059044250561

`A005206(A001950(A101330(n+1))%A101330(n+1))`
-/

namespace A101646.P14747456059044250561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.tmod (A001950 (A101330 (n + 1)).toNat) (A101330 (n + 1))).toNat

end

end A101646.P14747456059044250561

/-!
# A101650: A Thue-Morse-Stern sequence.

The programs for A101650, the canonical program `A101650.P6445489699259495269` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101650 has offset 0).

The definition of A101650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101650.P6018618239337417482

`(A029886(n)-1)%3`
-/

namespace A101650.P6018618239337417482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029886 n - 1) 3

end

end A101650.P6018618239337417482

namespace A101650

/-- `(A029886(n)-1)%3` -/
def P6018618239337417482.Spec : Prop :=
  ∀ n, P6018618239337417482.a n = A101650 n

end A101650

/-! ## A101650.P8854418775132499607

`(A308985(n)-1)%3`
-/

namespace A101650.P8854418775132499607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308985 n - 1) 3

end

end A101650.P8854418775132499607

namespace A101650

/-- `(A308985(n)-1)%3` -/
def P8854418775132499607.Spec : Prop :=
  ∀ n, P8854418775132499607.a n = A101650 n

end A101650

/-! ## A101650.P6445489699259495269

`(A002487(n+1)-1)%3`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A101650

/-- `(A002487(n+1)-1)%3` -/
def P6445489699259495269.Spec : Prop :=
  ∀ n, P6445489699259495269.a n = A101650 n

theorem P6445489699259495269.correct : P6445489699259495269.Spec := by
  intro n
  simp only [A101650]

end A101650

/-! ## A101650.P3847464196462666420

`(A178243(n+1)-1)%3`
-/

namespace A101650.P3847464196462666420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178243 (n + 1) - 1) 3

end

end A101650.P3847464196462666420

namespace A101650

/-- `(A178243(n+1)-1)%3` -/
def P3847464196462666420.Spec : Prop :=
  ∀ n, P3847464196462666420.a n = A101650 n

end A101650

/-! ## A101650.P10848399591156495408

`(A178569(n+1)-1)%3`
-/

namespace A101650.P10848399591156495408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178569 (n + 1) - 1) 3

end

end A101650.P10848399591156495408

namespace A101650

/-- `(A178569(n+1)-1)%3` -/
def P10848399591156495408.Spec : Prop :=
  ∀ n, P10848399591156495408.a n = A101650 n

end A101650

/-! ## A101650.P6312683725565183727

`(2*n+1-A000360(n))%3`
-/

namespace A101650.P6312683725565183727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 1 : ℤ) - A000360 n) 3

end

end A101650.P6312683725565183727

namespace A101650

/-- `(2*n+1-A000360(n))%3` -/
def P6312683725565183727.Spec : Prop :=
  ∀ n, P6312683725565183727.a n = A101650 n

end A101650

/-! ## A101650.P15568264968312791005

`A049347(A002487(n+1))+1`
-/

namespace A101650.P15568264968312791005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A002487 (n + 1)).toNat + 1

end

end A101650.P15568264968312791005

namespace A101650

/-- `A049347(A002487(n+1))+1` -/
def P15568264968312791005.Spec : Prop :=
  ∀ n, P15568264968312791005.a n = A101650 n

end A101650

/-! ## A101650.P6079619950523381486

`A010872(A002487(n+1)-1)`
-/

namespace A101650.P6079619950523381486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A002487 (n + 1) - 1).toNat

end

end A101650.P6079619950523381486

namespace A101650

/-- `A010872(A002487(n+1)-1)` -/
def P6079619950523381486.Spec : Prop :=
  ∀ n, P6079619950523381486.a n = A101650 n

end A101650

/-! ## A101650.P4562269794233559613

`log2(gcd(4, A071412(n+1)))`
-/

namespace A101650.P4562269794233559613
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (A071412 (n + 1)) : ℝ)

end

end A101650.P4562269794233559613

namespace A101650

/-- `log2(gcd(4, A071412(n+1)))` -/
def P4562269794233559613.Spec : Prop :=
  ∀ n, P4562269794233559613.a n = (A101650 n : ℝ)

end A101650

/-! ## A101650.P13502845155975181029

`(n-A284013(n+1))%3`
-/

namespace A101650.P13502845155975181029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A284013 (n + 1)) 3

end

end A101650.P13502845155975181029

namespace A101650

/-- `(n-A284013(n+1))%3` -/
def P13502845155975181029.Spec : Prop :=
  ∀ n, P13502845155975181029.a n = A101650 n

end A101650

/-! ## A101650.P131600666479039994

`(n-A284556(n+1))%3`
-/

namespace A101650.P131600666479039994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A284556 (n + 1)) 3

end

end A101650.P131600666479039994

namespace A101650

/-- `(n-A284556(n+1))%3` -/
def P131600666479039994.Spec : Prop :=
  ∀ n, P131600666479039994.a n = A101650 n

end A101650

/-! ## A101650.P9859731570362707178

`A080425(A126606(n+2)+1)`
-/

namespace A101650.P9859731570362707178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A126606 (n + 2) + 1).toNat

end

end A101650.P9859731570362707178

namespace A101650

/-- `A080425(A126606(n+2)+1)` -/
def P9859731570362707178.Spec : Prop :=
  ∀ n, P9859731570362707178.a n = A101650 n

end A101650

/-! ## A101650.P14300221017422612603

`A010872(n-A284556(n+1))`
-/

namespace A101650.P14300221017422612603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((n : ℤ) - A284556 (n + 1)).toNat

end

end A101650.P14300221017422612603

namespace A101650

/-- `A010872(n-A284556(n+1))` -/
def P14300221017422612603.Spec : Prop :=
  ∀ n, P14300221017422612603.a n = A101650 n

end A101650

/-! ## A101650.P4056417458983166061

`(A007729(2*n)-1)%3`
-/

namespace A101650.P4056417458983166061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007729 (2 * n) - 1) 3

end

end A101650.P4056417458983166061

namespace A101650

/-- `(A007729(2*n)-1)%3` -/
def P4056417458983166061.Spec : Prop :=
  ∀ n, P4056417458983166061.a n = A101650 n

end A101650

/-! ## A101650.P12326426791355156947

`(A295515(2*(n+1))+2)%3`
-/

namespace A101650.P12326426791355156947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295515 (2 * (n + 1)) + 2) 3

end

end A101650.P12326426791355156947

namespace A101650

/-- `(A295515(2*(n+1))+2)%3` -/
def P12326426791355156947.Spec : Prop :=
  ∀ n, P12326426791355156947.a n = A101650 n

end A101650

/-! ## A101650.P15307003791292669562

`A011540(A029886(n))%3`
-/

namespace A101650.P15307003791292669562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011540 (A029886 n).toNat) 3

end

end A101650.P15307003791292669562

namespace A101650

/-- `A011540(A029886(n))%3` -/
def P15307003791292669562.Spec : Prop :=
  ∀ n, P15307003791292669562.a n = A101650 n

end A101650

/-! ## A101650.P335045307091595421

`A301977(A017113(n))%3`
-/

namespace A101650.P335045307091595421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301977 (A017113 n).toNat) 3

end

end A101650.P335045307091595421

namespace A101650

/-- `A301977(A017113(n))%3` -/
def P335045307091595421.Spec : Prop :=
  ∀ n, P335045307091595421.a n = A101650 n

end A101650

/-! ## A101650.P18144129112102461785

`A301977(A004769(n))%3`
-/

namespace A101650.P18144129112102461785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301977 (A004769 n).toNat) 3

end

end A101650.P18144129112102461785

namespace A101650

/-- `A301977(A004769(n))%3` -/
def P18144129112102461785.Spec : Prop :=
  ∀ n, P18144129112102461785.a n = A101650 n

end A101650

/-! ## A101650.P4560098216828422442

`(∑[A099902(n)]+2)%3`
-/

namespace A101650.P4560098216828422442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 2) 3

end

end A101650.P4560098216828422442

namespace A101650

/-- `(∑[A099902(n)]+2)%3` -/
def P4560098216828422442.Spec : Prop :=
  ∀ n, P4560098216828422442.a n = A101650 n

end A101650

/-!
# A101651: a(n) = Product_{k=0..n} (1 + 0^A010060(k))/2.

The programs for A101651, the canonical program `A101651.P2336243589466442413` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101651 has offset 0).

The definition of A101651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101651.P2336243589466442413

`2^A245710(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A101651

/-- `2^A245710(n)` -/
def P2336243589466442413.Spec : Prop :=
  ∀ n, P2336243589466442413.a n = (A101651 n : ℚ)

end A101651

/-! ## A101651.P4679760755380059316

`2^(∑[char[xor(n, 2*n)]]-1)`
-/

namespace A101651.P4679760755380059316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ)

end

end A101651.P4679760755380059316

namespace A101651

/-- `2^(∑[char[xor(n, 2*n)]]-1)` -/
def P4679760755380059316.Spec : Prop :=
  ∀ n, P4679760755380059316.a n = (A101651 n : ℚ)

end A101651

/-! ## A101651.P8937783672648761841

`2^(n-∑[char[xor(n, Δ[n²])]])`
-/

namespace A101651.P8937783672648761841
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A101651.P8937783672648761841

namespace A101651

/-- `2^(n-∑[char[xor(n, Δ[n²])]])` -/
def P8937783672648761841.Spec : Prop :=
  ∀ n, P8937783672648761841.a n = (A101651 n : ℚ)

end A101651

/-! ## A101651.P12121145839192709856

`2^(A159481(n)-1)`
-/

namespace A101651.P12121145839192709856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A159481 n - 1 : ℤ)

end

end A101651.P12121145839192709856

namespace A101651

/-- `2^(A159481(n)-1)` -/
def P12121145839192709856.Spec : Prop :=
  ∀ n, P12121145839192709856.a n = (A101651 n : ℚ)

end A101651

/-! ## A101651.P11428311768568022885

`2^(n-A115384(n))`
-/

namespace A101651.P11428311768568022885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A115384 n : ℤ)

end

end A101651.P11428311768568022885

namespace A101651

/-- `2^(n-A115384(n))` -/
def P11428311768568022885.Spec : Prop :=
  ∀ n, P11428311768568022885.a n = (A101651 n : ℚ)

end A101651

/-! ## A101651.P4758437410808971350

`a(n-1)*A161175(n)` with `a(0)=1`
-/

namespace A101651.P4758437410808971350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A161175 n

end

end A101651.P4758437410808971350

namespace A101651

/-- `a(n-1)*A161175(n)` -/
def P4758437410808971350.Spec : Prop :=
  ∀ n, P4758437410808971350.a n = A101651 n

end A101651

/-! ## A101651.P11295825684569461072

`A011782(A159481(n))`
-/

namespace A101651.P11295825684569461072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A159481 n).toNat

end

end A101651.P11295825684569461072

namespace A101651

/-- `A011782(A159481(n))` -/
def P11295825684569461072.Spec : Prop :=
  ∀ n, P11295825684569461072.a n = A101651 n

end A101651

/-! ## A101651.P10265216798722690057

`A000079(A245710(n))`
-/

namespace A101651.P10265216798722690057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A245710 n).toNat

end

end A101651.P10265216798722690057

namespace A101651

/-- `A000079(A245710(n))` -/
def P10265216798722690057.Spec : Prop :=
  ∀ n, P10265216798722690057.a n = A101651 n

end A101651

/-! ## A101651.P15714172150353302314

`A016116(A161560(n+1))`
-/

namespace A101651.P15714172150353302314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A161560 (n + 1)).toNat

end

end A101651.P15714172150353302314

namespace A101651

/-- `A016116(A161560(n+1))` -/
def P15714172150353302314.Spec : Prop :=
  ∀ n, P15714172150353302314.a n = A101651 n

end A101651

/-! ## A101651.P5308833604347481816

`A166444(A159481(n)+1)`
-/

namespace A101651.P5308833604347481816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A159481 n + 1).toNat

end

end A101651.P5308833604347481816

namespace A101651

/-- `A166444(A159481(n)+1)` -/
def P5308833604347481816.Spec : Prop :=
  ∀ n, P5308833604347481816.a n = A101651 n

end A101651

/-! ## A101651.P14339780897790234644

`A158780(A093505(n+2))`
-/

namespace A101651.P14339780897790234644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A093505 (n + 2)).toNat

end

end A101651.P14339780897790234644

namespace A101651

/-- `A158780(A093505(n+2))` -/
def P14339780897790234644.Spec : Prop :=
  ∀ n, P14339780897790234644.a n = A101651 n

end A101651

/-! ## A101651.P17388022690444851155

`A016116(n-A010060(n))`
-/

namespace A101651.P17388022690444851155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 ((n : ℤ) - A010060 n).toNat

end

end A101651.P17388022690444851155

namespace A101651

/-- `A016116(n-A010060(n))` -/
def P17388022690444851155.Spec : Prop :=
  ∀ n, P17388022690444851155.a n = A101651 n

end A101651

/-! ## A101651.P7547187403361534802

`A016116(n-A101671(n))`
-/

namespace A101651.P7547187403361534802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 ((n : ℤ) - A101671 n).toNat

end

end A101651.P7547187403361534802

namespace A101651

/-- `A016116(n-A101671(n))` -/
def P7547187403361534802.Spec : Prop :=
  ∀ n, P7547187403361534802.a n = A101651 n

end A101651

/-! ## A101651.P5872861788077153736

`A000079(n-∑[A010060(n)])`
-/

namespace A101651.P5872861788077153736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101651.P5872861788077153736

namespace A101651

/-- `A000079(n-∑[A010060(n)])` -/
def P5872861788077153736.Spec : Prop :=
  ∀ n, P5872861788077153736.a n = A101651 n

end A101651

/-! ## A101651.P13031219664478215138

`A016116(n-A010059(n+1))`
-/

namespace A101651.P13031219664478215138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 ((n : ℤ) - A010059 (n + 1)).toNat

end

end A101651.P13031219664478215138

namespace A101651

/-- `A016116(n-A010059(n+1))` -/
def P13031219664478215138.Spec : Prop :=
  ∀ n, P13031219664478215138.a n = A101651 n

end A101651

/-! ## A101651.P15491641326438592503

`A166444(n+2-A115384(n))`
-/

namespace A101651.P15491641326438592503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 ((n + 2 : ℤ) - A115384 n).toNat

end

end A101651.P15491641326438592503

namespace A101651

/-- `A166444(n+2-A115384(n))` -/
def P15491641326438592503.Spec : Prop :=
  ∀ n, P15491641326438592503.a n = A101651 n

end A101651

/-! ## A101651.P11765922572708345265

`A166444(A008619(A010060(n+1)+n+1))`
-/

namespace A101651.P11765922572708345265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A008619 (A010060 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A101651.P11765922572708345265

namespace A101651

/-- `A166444(A008619(A010060(n+1)+n+1))` -/
def P11765922572708345265.Spec : Prop :=
  ∀ n, P11765922572708345265.a n = A101651 n

end A101651

/-! ## A101651.P9775624635274188218

`∏[char[xor(n, 2*n)]+1]/2`
-/

namespace A101651.P9775624635274188218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A101651.P9775624635274188218

namespace A101651

/-- `∏[char[xor(n, 2*n)]+1]/2` -/
def P9775624635274188218.Spec : Prop :=
  ∀ n, P9775624635274188218.a n = (A101651 n : ℚ)

end A101651

/-! ## A101651.P2575334919125855398

`2^∑[char[xor(n, 2*n)]]/2`
-/

namespace A101651.P2575334919125855398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A101651.P2575334919125855398

namespace A101651

/-- `2^∑[char[xor(n, 2*n)]]/2` -/
def P2575334919125855398.Spec : Prop :=
  ∀ n, P2575334919125855398.a n = (A101651 n : ℚ)

end A101651

/-! ## A101651.P10929411256369297120

`∏[2-char[xor(n, Δ[n²])]]/2`
-/

namespace A101651.P10929411256369297120
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A101651.P10929411256369297120

namespace A101651

/-- `∏[2-char[xor(n, Δ[n²])]]/2` -/
def P10929411256369297120.Spec : Prop :=
  ∀ n, P10929411256369297120.a n = (A101651 n : ℚ)

end A101651

/-!
# A101652: a(n)=Product{k=0..n, 1+2^A010060(k)}/2.

The programs for A101652, the canonical program `A101652.P2865208701805658760` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101652 has offset 0).

The definition of A101652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101652.P2865208701805658760

`(char[xor(n, Δ[n²])]+2)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101652

/-- `(char[xor(n, Δ[n²])]+2)*a(n-1)` -/
def P2865208701805658760.Spec : Prop :=
  ∀ n, (P2865208701805658760.a n : ℤ) = A101652 n

theorem P2865208701805658760.correct : P2865208701805658760.Spec := by
  intro n
  simp only [A101652]

end A101652

/-! ## A101652.P15183340321995275767

`∏[char[xor(n, Δ[n²])]+2]/2`
-/

namespace A101652.P15183340321995275767
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A101652.P15183340321995275767

namespace A101652

/-- `∏[char[xor(n, Δ[n²])]+2]/2` -/
def P15183340321995275767.Spec : Prop :=
  ∀ n, P15183340321995275767.a n = (A101652 n : ℚ)

end A101652

/-! ## A101652.P17624097691154844872

`∏[char[comp[xor(n, 2*n)]]+2]/2`
-/

namespace A101652.P17624097691154844872
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A101652.P17624097691154844872

namespace A101652

/-- `∏[char[comp[xor(n, 2*n)]]+2]/2` -/
def P17624097691154844872.Spec : Prop :=
  ∀ n, P17624097691154844872.a n = (A101652 n : ℚ)

end A101652

/-! ## A101652.P3367800259345884428

`∏[p?[5-a(and(n, n-1))]]/2` with `a(0)=2`
-/

namespace A101652.P3367800259345884428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  5 - f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A101652.P3367800259345884428

namespace A101652

/-- `∏[p?[5-a(and(n, n-1))]]/2` -/
def P3367800259345884428.Spec : Prop :=
  ∀ n, P3367800259345884428.a n = (A101652 n : ℚ)

end A101652

/-! ## A101652.P18006366854058829660

`∏[A005681(2*n+1)]/2`
-/

namespace A101652.P18006366854058829660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005681 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A101652.P18006366854058829660

namespace A101652

/-- `∏[A005681(2*n+1)]/2` -/
def P18006366854058829660.Spec : Prop :=
  ∀ n, P18006366854058829660.a n = (A101652 n : ℚ)

end A101652

/-!
# A101653: a(n)=Product{k=0..n, 1+3^A010060(k)}/2.

The programs for A101653, the canonical program `A101653.P853968798283273440` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101653 has offset 0).

The definition of A101653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101653.P1984095841212920007

`2^comp[comp[xor(n, 2*n)]+n]`
-/

namespace A101653.P1984095841212920007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A101653.P1984095841212920007

namespace A101653

/-- `2^comp[comp[xor(n, 2*n)]+n]` -/
def P1984095841212920007.Spec : Prop :=
  ∀ n, (P1984095841212920007.a n : ℤ) = A101653 n

end A101653

/-! ## A101653.P16894048322246452082

`2^(∑[char[xor(n, Δ[n²])]]+n)`
-/

namespace A101653.P16894048322246452082
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A101653.P16894048322246452082

namespace A101653

/-- `2^(∑[char[xor(n, Δ[n²])]]+n)` -/
def P16894048322246452082.Spec : Prop :=
  ∀ n, (P16894048322246452082.a n : ℤ) = A101653 n

end A101653

/-! ## A101653.P853968798283273440

`∏[4-2%a(and(n, n-1))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101653

/-- `∏[4-2%a(and(n, n-1))]` -/
def P853968798283273440.Spec : Prop :=
  ∀ n, P853968798283273440.a n = A101653 n

theorem P853968798283273440.correct : P853968798283273440.Spec := by
  intro n
  simp only [A101653]

end A101653

/-! ## A101653.P17975754719333930910

`2^(∑[2-char[xor(n, 2*n)]]-1)`
-/

namespace A101653.P17975754719333930910
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ)

end

end A101653.P17975754719333930910

namespace A101653

/-- `2^(∑[2-char[xor(n, 2*n)]]-1)` -/
def P17975754719333930910.Spec : Prop :=
  ∀ n, P17975754719333930910.a n = (A101653 n : ℚ)

end A101653

/-! ## A101653.P1394419292675825304

`2^n*∏[2-char[xor(n, 2*n)]]`
-/

namespace A101653.P1394419292675825304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A101653.P1394419292675825304

namespace A101653

/-- `2^n*∏[2-char[xor(n, 2*n)]]` -/
def P1394419292675825304.Spec : Prop :=
  ∀ n, P1394419292675825304.a n = A101653 n

end A101653

/-! ## A101653.P10289784386822819098

`2^(A115384(n)+n)`
-/

namespace A101653.P10289784386822819098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A115384 n + (n : ℤ) : ℤ)

end

end A101653.P10289784386822819098

namespace A101653

/-- `2^(A115384(n)+n)` -/
def P10289784386822819098.Spec : Prop :=
  ∀ n, P10289784386822819098.a n = (A101653 n : ℚ)

end A101653

/-! ## A101653.P9701583501741009167

`2^(A026430(n+1)-1)`
-/

namespace A101653.P9701583501741009167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A026430 (n + 1) - 1 : ℤ)

end

end A101653.P9701583501741009167

namespace A101653

/-- `2^(A026430(n+1)-1)` -/
def P9701583501741009167.Spec : Prop :=
  ∀ n, P9701583501741009167.a n = (A101653 n : ℚ)

end A101653

/-! ## A101653.P1755055542481448312

`2^(A360392(n+1)-3)`
-/

namespace A101653.P1755055542481448312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A360392 (n + 1) - 3 : ℤ)

end

end A101653.P1755055542481448312

namespace A101653

/-- `2^(A360392(n+1)-3)` -/
def P1755055542481448312.Spec : Prop :=
  ∀ n, P1755055542481448312.a n = (A101653 n : ℚ)

end A101653

/-! ## A101653.P17862823074042484087

`A011782(A026430(n+1))`
-/

namespace A101653.P17862823074042484087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A026430 (n + 1)).toNat

end

end A101653.P17862823074042484087

namespace A101653

/-- `A011782(A026430(n+1))` -/
def P17862823074042484087.Spec : Prop :=
  ∀ n, P17862823074042484087.a n = A101653 n

end A101653

/-! ## A101653.P8263698730012212613

`A034008(A285954(n+2))`
-/

namespace A101653.P8263698730012212613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A285954 (n + 2)).toNat

end

end A101653.P8263698730012212613

namespace A101653

/-- `A034008(A285954(n+2))` -/
def P8263698730012212613.Spec : Prop :=
  ∀ n, P8263698730012212613.a n = A101653 n

end A101653

/-! ## A101653.P13725467001172758144

`A000079(∑[A010060(n)]+n)`
-/

namespace A101653.P13725467001172758144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A101653.P13725467001172758144

namespace A101653

/-- `A000079(∑[A010060(n)]+n)` -/
def P13725467001172758144.Spec : Prop :=
  ∀ n, P13725467001172758144.a n = A101653 n

end A101653

/-! ## A101653.P3233821417820707873

`A166444(A115384(n)+n+2)`
-/

namespace A101653.P3233821417820707873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A115384 n + (n + 2 : ℤ)).toNat

end

end A101653.P3233821417820707873

namespace A101653

/-- `A166444(A115384(n)+n+2)` -/
def P3233821417820707873.Spec : Prop :=
  ∀ n, P3233821417820707873.a n = A101653 n

end A101653

/-! ## A101653.P14575952878730376292

`A000079(n)*A000079(∑[A010060(n)])`
-/

namespace A101653.P14575952878730376292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000079 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101653.P14575952878730376292

namespace A101653

/-- `A000079(n)*A000079(∑[A010060(n)])` -/
def P14575952878730376292.Spec : Prop :=
  ∀ n, P14575952878730376292.a n = A101653 n

end A101653

/-! ## A101653.P13330688686795331704

`A000302(n)/A101651(n)`
-/

namespace A101653.P13330688686795331704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n : ℚ) / (A101651 n : ℚ)

end

end A101653.P13330688686795331704

namespace A101653

/-- `A000302(n)/A101651(n)` -/
def P13330688686795331704.Spec : Prop :=
  ∀ n, P13330688686795331704.a n = (A101653 n : ℚ)

end A101653

/-! ## A101653.P14022645444291806901

`A000079(n)²/A000079(A245710(n))`
-/

namespace A101653.P14022645444291806901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) / (A000079 (A245710 n).toNat : ℚ)

end

end A101653.P14022645444291806901

namespace A101653

/-- `A000079(n)²/A000079(A245710(n))` -/
def P14022645444291806901.Spec : Prop :=
  ∀ n, P14022645444291806901.a n = (A101653 n : ℚ)

end A101653

/-!
# A101654: a(n)=Product{k=0..n, 1+4^A010060(k)}/2.

The programs for A101654, the canonical program `A101654.P14364751511690637778` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101654 has offset 0).

The definition of A101654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101654.P16320581901906888933

`∏[(2-char[xor(n, 2*n)])²-(C(2, n+2)-1)]`
-/

namespace A101654.P16320581901906888933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2 - ((Nat.choose 2 (n + 2) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101654.P16320581901906888933

namespace A101654

/-- `∏[(2-char[xor(n, 2*n)])²-(C(2, n+2)-1)]` -/
def P16320581901906888933.Spec : Prop :=
  ∀ n, P16320581901906888933.a n = A101654 n

end A101654

/-! ## A101654.P8354729403702611669

`∏[ceil(sin(n)²)+A001285(n)²]`
-/

namespace A101654.P8354729403702611669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ + A001285 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101654.P8354729403702611669

namespace A101654

/-- `∏[ceil(sin(n)²)+A001285(n)²]` -/
def P8354729403702611669.Spec : Prop :=
  ∀ n, P8354729403702611669.a n = A101654 n

end A101654

/-! ## A101654.P10847160956660143042

`∏[A153518(a(and(n, n-1))+1)]` with `a(0)=1`
-/

namespace A101654.P10847160956660143042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A153518 (f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101654.P10847160956660143042

namespace A101654

/-- `∏[A153518(a(and(n, n-1))+1)]` -/
def P10847160956660143042.Spec : Prop :=
  ∀ n, P10847160956660143042.a n = A101654 n

end A101654

/-! ## A101654.P10784200738145977631

`∏[A153648(a(and(n, n-1))+1)]` with `a(0)=1`
-/

namespace A101654.P10784200738145977631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A153648 (f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101654.P10784200738145977631

namespace A101654

/-- `∏[A153648(a(and(n, n-1))+1)]` -/
def P10784200738145977631.Spec : Prop :=
  ∀ n, P10784200738145977631.a n = A101654 n

end A101654

/-! ## A101654.P14364751511690637778

`∏[A181668(a(and(n, n-1))+1)]` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A101654

/-- `∏[A181668(a(and(n, n-1))+1)]` -/
def P14364751511690637778.Spec : Prop :=
  ∀ n, P14364751511690637778.a n = A101654 n

theorem P14364751511690637778.correct : P14364751511690637778.Spec := by
  intro n
  simp only [A101654]

end A101654

/-!
# A101655: a(n)=Product{k=0..n, 1+9^A010060(k)}/2.

The programs for A101655, the canonical program `A101655.P17862669677575122574` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101655 has offset 0).

The definition of A101655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101655.P17862669677575122574

`∏[and(10, -a(and(n, n-1)))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101655

/-- `∏[and(10, -a(and(n, n-1)))]` -/
def P17862669677575122574.Spec : Prop :=
  ∀ n, P17862669677575122574.a n = A101655 n

theorem P17862669677575122574.correct : P17862669677575122574.Spec := by
  intro n
  simp only [A101655]

end A101655

/-! ## A101655.P12665696387744901828

`lcm(2^n, A101654(n))`
-/

namespace A101655.P12665696387744901828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A101654 n)

end

end A101655.P12665696387744901828

namespace A101655

/-- `lcm(2^n, A101654(n))` -/
def P12665696387744901828.Spec : Prop :=
  ∀ n, (P12665696387744901828.a n : ℤ) = A101655 n

end A101655

/-! ## A101655.P8700639993946984306

`2^n*5^A115384(n)`
-/

namespace A101655.P8700639993946984306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (5 : ℚ) ^ (A115384 n : ℤ)

end

end A101655.P8700639993946984306

namespace A101655

/-- `2^n*5^A115384(n)` -/
def P8700639993946984306.Spec : Prop :=
  ∀ n, P8700639993946984306.a n = (A101655 n : ℚ)

end A101655

/-! ## A101655.P3424867819537547442

`(A268676(n)²+1)*a(n-1)` with `a(0)=1`
-/

namespace A101655.P3424867819537547442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A268676 n ^ 2 + 1) * a (n - 1)

end

end A101655.P3424867819537547442

namespace A101655

/-- `(A268676(n)²+1)*a(n-1)` -/
def P3424867819537547442.Spec : Prop :=
  ∀ n, P3424867819537547442.a n = A101655 n

end A101655

/-! ## A101655.P11823098065259896735

`((2-A106400(n))²+1)*a(n-1)` with `a(0)=1`
-/

namespace A101655.P11823098065259896735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 - A106400 n) ^ 2 + 1) * a (n - 1)

end

end A101655.P11823098065259896735

namespace A101655

/-- `((2-A106400(n))²+1)*a(n-1)` -/
def P11823098065259896735.Spec : Prop :=
  ∀ n, P11823098065259896735.a n = A101655 n

end A101655

/-!
# A101656: a(n)=Product{k=0..n, 1+0^A101650(k)}/2.

The programs for A101656, the canonical program `A101656.P2452111853965697328` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101656 has offset 0).

The definition of A101656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 896 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101656.P2452111853965697328

`a(n-1)*a(A071412(n+1)%2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A101656

/-- `a(n-1)*a(A071412(n+1)%2)` -/
def P2452111853965697328.Spec : Prop :=
  ∀ n, (P2452111853965697328.a n : ℤ) = A101656 n

theorem P2452111853965697328.correct : P2452111853965697328.Spec := by
  intro n
  simp only [A101656]

end A101656

/-! ## A101656.P3806099270457076637

`A011782(∑[A071412(n+1)%2])`
-/

namespace A101656.P3806099270457076637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071412 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101656.P3806099270457076637

namespace A101656

/-- `A011782(∑[A071412(n+1)%2])` -/
def P3806099270457076637.Spec : Prop :=
  ∀ n, P3806099270457076637.a n = A101656 n

end A101656

/-! ## A101656.P9812196490412072737

`∏[A073788(a(A071412(n+1)))]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A101656.P9812196490412072737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  A073788 (f1 (A071412 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101656.P9812196490412072737

namespace A101656

/-- `∏[A073788(a(A071412(n+1)))]` -/
def P9812196490412072737.Spec : Prop :=
  ∀ n, P9812196490412072737.a n = A101656 n

end A101656

/-! ## A101656.P5414135434551247604

`∏[A156253(A236378(a(n-1))^A101650(n)+1)]` with `a(0)=1`
-/

namespace A101656.P5414135434551247604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A156253 (SequenceMachineLib.roundAway ((A236378 (f1 (n - 1)).toNat : ℚ) ^ (A101650 n : ℤ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101656.P5414135434551247604

namespace A101656

/-- `∏[A156253(A236378(a(n-1))^A101650(n)+1)]` -/
def P5414135434551247604.Spec : Prop :=
  ∀ n, P5414135434551247604.a n = A101656 n

end A101656

/-! ## A101656.P17868066298915595549

`2^val(A101657(n), 2)`
-/

namespace A101656.P17868066298915595549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A101657 n).toNat 2

end

end A101656.P17868066298915595549

namespace A101656

/-- `2^val(A101657(n), 2)` -/
def P17868066298915595549.Spec : Prop :=
  ∀ n, (P17868066298915595549.a n : ℤ) = A101656 n

end A101656

/-! ## A101656.P15302895146026116301

`gcd(A000079(n), A101657(n))`
-/

namespace A101656.P15302895146026116301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A101657 n)

end

end A101656.P15302895146026116301

namespace A101656

/-- `gcd(A000079(n), A101657(n))` -/
def P15302895146026116301.Spec : Prop :=
  ∀ n, (P15302895146026116301.a n : ℤ) = A101656 n

end A101656

/-!
# A101657: a(n)=Product{k=0..n, 1+2^A101650(k)}/2.

The programs for A101657, the canonical program `A101657.P2248602799950987862` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101657 has offset 0).

The definition of A101657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101657.P2248602799950987862

`∏[A000040(a(A101650(n)))]` with `a(0)=1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A101657

/-- `∏[A000040(a(A101650(n)))]` -/
def P2248602799950987862.Spec : Prop :=
  ∀ n, P2248602799950987862.a n = A101657 n

theorem P2248602799950987862.correct : P2248602799950987862.Spec := by
  intro n
  simp only [A101657]

end A101657

/-! ## A101657.P13207335661898258612

`∏[A071255(a(A101650(n)))]` with `a(0)=1`
-/

namespace A101657.P13207335661898258612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A071255 (f1 (A101650 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101657.P13207335661898258612

namespace A101657

/-- `∏[A071255(a(A101650(n)))]` -/
def P13207335661898258612.Spec : Prop :=
  ∀ n, P13207335661898258612.a n = A101657 n

end A101657

/-! ## A101657.P11384403205461031538

`∏[A100742(a(A101650(n)))]` with `a(0)=1`
-/

namespace A101657.P11384403205461031538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A100742 (f1 (A101650 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101657.P11384403205461031538

namespace A101657

/-- `∏[A100742(a(A101650(n)))]` -/
def P11384403205461031538.Spec : Prop :=
  ∀ n, P11384403205461031538.a n = A101657 n

end A101657

/-! ## A101657.P3551907617308400226

`∏[A348041(Δ[A023545(n+1)])]`
-/

namespace A101657.P3551907617308400226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101657.P3551907617308400226

namespace A101657

/-- `∏[A348041(Δ[A023545(n+1)])]` -/
def P3551907617308400226.Spec : Prop :=
  ∀ n, P3551907617308400226.a n = A101657 n

end A101657

/-!
# A101658: a(n)=Product{k=0..n, 1+3^A101650(k)}/2.

The programs for A101658, the canonical program `A101658.P12420169299485616279` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101658 has offset 0).

The definition of A101658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101658.P12420169299485616279

`∏[A000123(a(A101650(n)))]` with `a(0)=1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A101658

/-- `∏[A000123(a(A101650(n)))]` -/
def P12420169299485616279.Spec : Prop :=
  ∀ n, P12420169299485616279.a n = A101658 n

theorem P12420169299485616279.correct : P12420169299485616279.Spec := by
  intro n
  simp only [A101658]

end A101658

/-! ## A101658.P17426363201322701402

`∏[A001223(∑[A038173(n+1)])]`
-/

namespace A101658.P17426363201322701402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038173 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101658.P17426363201322701402

namespace A101658

/-- `∏[A001223(∑[A038173(n+1)])]` -/
def P17426363201322701402.Spec : Prop :=
  ∀ n, P17426363201322701402.a n = A101658 n

end A101658

/-! ## A101658.P10690597404862666465

`A091732(A000244(n)*A316471(n+1))`
-/

namespace A101658.P10690597404862666465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (A000244 n * A316471 (n + 1)).toNat

end

end A101658.P10690597404862666465

namespace A101658

/-- `A091732(A000244(n)*A316471(n+1))` -/
def P10690597404862666465.Spec : Prop :=
  ∀ n, P10690597404862666465.a n = A101658 n

end A101658

/-!
# A101659: Fixed point of morphism 0 -> 01, 1 -> 02, 2 -> 11.

The programs for A101659, there is no canonical definition to state claims against.
-/

/-! ## A101659.P14363553612107930265

`A096268(A318921(n))+n%2`
-/

namespace A101659.P14363553612107930265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A318921 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A101659.P14363553612107930265

/-! ## A101659.P18118291046379077296

`A096268(A318921(n))+A000035(n)`
-/

namespace A101659.P18118291046379077296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A318921 n).toNat + A000035 n

end

end A101659.P18118291046379077296

/-! ## A101659.P5204718686212685661

`A091297(or(n, 2*n)+1)`
-/

namespace A101659.P5204718686212685661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (Nat.lor n (2 * n) + 1)

end

end A101659.P5204718686212685661

/-! ## A101659.P9143787503818904670

`A091297(A163617(n)+1)`
-/

namespace A101659.P9143787503818904670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (A163617 n + 1).toNat

end

end A101659.P9143787503818904670

/-! ## A101659.P15765596210667872061

`A091297(A229763(n)+A005408(n))`
-/

namespace A101659.P15765596210667872061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (A229763 n + A005408 n).toNat

end

end A101659.P15765596210667872061

/-! ## A101659.P4594510902051013392

`A091297(A016777(n)-A213370(n))`
-/

namespace A101659.P4594510902051013392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (A016777 n - A213370 n).toNat

end

end A101659.P4594510902051013392

/-! ## A101659.P16707229552471602597

`A091297(A008619(A008458(n)-A048728(n)))`
-/

namespace A101659.P16707229552471602597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (A008619 (A008458 n - A048728 n).toNat).toNat

end

end A101659.P16707229552471602597

/-! ## A101659.P593659969115010958

`A096268(n²)+A096268(A318921(n))`
-/

namespace A101659.P593659969115010958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (n ^ 2) + A096268 (A318921 n).toNat

end

end A101659.P593659969115010958

/-!
# A101660: Fixed point of morphism 0 -> 01, 1 -> 02, 2 -> 12.

The programs for A101660, the canonical program `A101660.P15238381681422468022` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101660 has offset 0).

The definition of A101660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101660.P15238381681422468022

`1-Δ[A007302(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A101660

/-- `1-Δ[A007302(n)]` -/
def P15238381681422468022.Spec : Prop :=
  ∀ n, P15238381681422468022.a n = A101660 n

theorem P15238381681422468022.correct : P15238381681422468022.Spec := by
  intro n
  simp only [A101660]

end A101660

/-! ## A101660.P1485292126344577903

`A025581(Δ[A007302(n)]+8)`
-/

namespace A101660.P1485292126344577903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (f1 (n + 1) - f1 n + 8).toNat

end

end A101660.P1485292126344577903

namespace A101660

/-- `A025581(Δ[A007302(n)]+8)` -/
def P1485292126344577903.Spec : Prop :=
  ∀ n, P1485292126344577903.a n = A101660 n

end A101660

/-! ## A101660.P5491245375100113561

`1-A084091(A001651(n+1))`
-/

namespace A101660.P5491245375100113561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A084091 (A001651 (n + 1)).toNat

end

end A101660.P5491245375100113561

namespace A101660

/-- `1-A084091(A001651(n+1))` -/
def P5491245375100113561.Spec : Prop :=
  ∀ n, P5491245375100113561.a n = A101660 n

end A101660

/-! ## A101660.P11788314716110855254

`A007302(n)-A280737(n+1)`
-/

namespace A101660.P11788314716110855254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 n - A280737 (n + 1)

end

end A101660.P11788314716110855254

namespace A101660

/-- `A007302(n)-A280737(n+1)` -/
def P11788314716110855254.Spec : Prop :=
  ∀ n, P11788314716110855254.a n = A101660 n

end A101660

/-! ## A101660.P11527645626577779017

`A128468(n)%A045898(n+1)`
-/

namespace A101660.P11527645626577779017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128468 n) (A045898 (n + 1))

end

end A101660.P11527645626577779017

namespace A101660

/-- `A128468(n)%A045898(n+1)` -/
def P11527645626577779017.Spec : Prop :=
  ∀ n, P11527645626577779017.a n = A101660 n

end A101660

/-! ## A101660.P16940823140327746017

`A288477(n)%A045898(n+1)`
-/

namespace A101660.P16940823140327746017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288477 n) (A045898 (n + 1))

end

end A101660.P16940823140327746017

namespace A101660

/-- `A288477(n)%A045898(n+1)` -/
def P16940823140327746017.Spec : Prop :=
  ∀ n, P16940823140327746017.a n = A101660 n

end A101660

/-! ## A101660.P17664428925896959379

`A007302(n)+1-A007302(n+1)`
-/

namespace A101660.P17664428925896959379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 n + (1 - A007302 (n + 1))

end

end A101660.P17664428925896959379

namespace A101660

/-- `A007302(n)+1-A007302(n+1)` -/
def P17664428925896959379.Spec : Prop :=
  ∀ n, P17664428925896959379.a n = A101660 n

theorem P17664428925896959379.correct : P17664428925896959379.Spec := by
  intro n
  simp only [A101660, Nat.add_sub_cancel, A101660.P17664428925896959379.a, A101660.P15238381681422468022.f1, A101660.P15238381681422468022.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A101660

/-! ## A101660.P3672609650684399568

`A052292(n+1)%A045898(n+1)`
-/

namespace A101660.P3672609650684399568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052292 (n + 1)) (A045898 (n + 1))

end

end A101660.P3672609650684399568

namespace A101660

/-- `A052292(n+1)%A045898(n+1)` -/
def P3672609650684399568.Spec : Prop :=
  ∀ n, P3672609650684399568.a n = A101660 n

end A101660

/-! ## A101660.P13980509376703099904

`A055783(n+1)%A045898(n+1)`
-/

namespace A101660.P13980509376703099904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055783 (n + 1)) (A045898 (n + 1))

end

end A101660.P13980509376703099904

namespace A101660

/-- `A055783(n+1)%A045898(n+1)` -/
def P13980509376703099904.Spec : Prop :=
  ∀ n, P13980509376703099904.a n = A101660 n

end A101660

/-! ## A101660.P2515147960178900827

`A122710(n+1)%A045898(n+1)`
-/

namespace A101660.P2515147960178900827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122710 (n + 1)) (A045898 (n + 1))

end

end A101660.P2515147960178900827

namespace A101660

/-- `A122710(n+1)%A045898(n+1)` -/
def P2515147960178900827.Spec : Prop :=
  ∀ n, P2515147960178900827.a n = A101660 n

end A101660

/-! ## A101660.P14484926785029067587

`A123100(n+1)%A045898(n+1)`
-/

namespace A101660.P14484926785029067587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123100 (n + 1)) (A045898 (n + 1))

end

end A101660.P14484926785029067587

namespace A101660

/-- `A123100(n+1)%A045898(n+1)` -/
def P14484926785029067587.Spec : Prop :=
  ∀ n, P14484926785029067587.a n = A101660 n

end A101660

/-! ## A101660.P14170104957307020714

`A142788(n+1)%A045898(n+1)`
-/

namespace A101660.P14170104957307020714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142788 (n + 1)) (A045898 (n + 1))

end

end A101660.P14170104957307020714

namespace A101660

/-- `A142788(n+1)%A045898(n+1)` -/
def P14170104957307020714.Spec : Prop :=
  ∀ n, P14170104957307020714.a n = A101660 n

end A101660

/-! ## A101660.P8731163241092499209

`A201785(n+1)%A045898(n+1)`
-/

namespace A101660.P8731163241092499209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201785 (n + 1)) (A045898 (n + 1))

end

end A101660.P8731163241092499209

namespace A101660

/-- `A201785(n+1)%A045898(n+1)` -/
def P8731163241092499209.Spec : Prop :=
  ∀ n, P8731163241092499209.a n = A101660 n

end A101660

/-! ## A101660.P1888196974996631681

`A258896(n+1)%A045898(n+1)`
-/

namespace A101660.P1888196974996631681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258896 (n + 1)) (A045898 (n + 1))

end

end A101660.P1888196974996631681

namespace A101660

/-- `A258896(n+1)%A045898(n+1)` -/
def P1888196974996631681.Spec : Prop :=
  ∀ n, P1888196974996631681.a n = A101660 n

end A101660

/-! ## A101660.P14771694373247946876

`A287925(n+1)%A045898(n+1)`
-/

namespace A101660.P14771694373247946876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287925 (n + 1)) (A045898 (n + 1))

end

end A101660.P14771694373247946876

namespace A101660

/-- `A287925(n+1)%A045898(n+1)` -/
def P14771694373247946876.Spec : Prop :=
  ∀ n, P14771694373247946876.a n = A101660 n

end A101660

/-! ## A101660.P7787746100222434021

`A000035(n)+A000035(A318921(n))`
-/

namespace A101660.P7787746100222434021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A000035 (A318921 n).toNat

end

end A101660.P7787746100222434021

namespace A101660

/-- `A000035(n)+A000035(A318921(n))` -/
def P7787746100222434021.Spec : Prop :=
  ∀ n, P7787746100222434021.a n = A101660 n

end A101660

/-! ## A101660.P3137460406008685149

`A007302(n)-A007302(A053646(n+1))`
-/

namespace A101660.P3137460406008685149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 n - A007302 (A053646 (n + 1)).toNat

end

end A101660.P3137460406008685149

namespace A101660

/-- `A007302(n)-A007302(A053646(n+1))` -/
def P3137460406008685149.Spec : Prop :=
  ∀ n, P3137460406008685149.a n = A101660 n

end A101660

/-! ## A101660.P11552895078143628363

`A036580(A003188(n))`
-/

namespace A101660.P11552895078143628363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (A003188 n).toNat

end

end A101660.P11552895078143628363

namespace A101660

/-- `A036580(A003188(n))` -/
def P11552895078143628363.Spec : Prop :=
  ∀ n, P11552895078143628363.a n = A101660 n

end A101660

/-! ## A101660.P6367047194132262355

`A007413(A003188(n)+1)-1`
-/

namespace A101660.P6367047194132262355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (A003188 n + 1).toNat - 1

end

end A101660.P6367047194132262355

namespace A101660

/-- `A007413(A003188(n)+1)-1` -/
def P6367047194132262355.Spec : Prop :=
  ∀ n, P6367047194132262355.a n = A101660 n

end A101660

/-!
# A101661: Fixed point of morphism 0 -> 01, 1 -> 02, 2 -> 20.

The programs for A101661, the canonical program `A101661.P4985312497426929413` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101661 has offset 0).

The definition of A101661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101661.P4985312497426929413

`A000122(a(floor(n/2))+gcd(2, n)-n%2)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101661

/-- `A000122(a(floor(n/2))+gcd(2, n)-n%2)` -/
def P4985312497426929413.Spec : Prop :=
  ∀ n, P4985312497426929413.a n = A101661 n

theorem P4985312497426929413.correct : P4985312497426929413.Spec := by
  intro n
  simp only [A101661]

end A101661

/-! ## A101661.P2930123615515885861

`A020639(3*n+2)%A112798(A309077(2*(n+1)))`
-/

namespace A101661.P2930123615515885861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (3 * n + 2)) (A112798 (A309077 (2 * (n + 1))).toNat)

end

end A101661.P2930123615515885861

namespace A101661

/-- `A020639(3*n+2)%A112798(A309077(2*(n+1)))` -/
def P2930123615515885861.Spec : Prop :=
  ∀ n, P2930123615515885861.a n = A101661 n

end A101661

/-! ## A101661.P3453794730498444539

`C(A101662(n), A024361(A112630(n+1)))`
-/

namespace A101661.P3453794730498444539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A101662 n).toNat (A024361 (A112630 (n + 1)).toNat).toNat

end

end A101661.P3453794730498444539

namespace A101661

/-- `C(A101662(n), A024361(A112630(n+1)))` -/
def P3453794730498444539.Spec : Prop :=
  ∀ n, (P3453794730498444539.a n : ℤ) = A101661 n

end A101661

/-! ## A101661.P17050860415250181166

`and(A271860(n), A323018(A323028(n+1)))`
-/

namespace A101661.P17050860415250181166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A271860 n) (A323018 (A323028 (n + 1)).toNat)

end

end A101661.P17050860415250181166

namespace A101661

/-- `and(A271860(n), A323018(A323028(n+1)))` -/
def P17050860415250181166.Spec : Prop :=
  ∀ n, P17050860415250181166.a n = A101661 n

end A101661

/-!
# A101662: Fixed point of morphism 0 -> 01, 1 -> 02, 2 -> 21.

The programs for A101662, the canonical program `A101662.P7215598947080091620` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101662 has offset 0).

The definition of A101662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101662.P14663779560794285587

`A165472(5*(2*a(floor(n/2))-(-1)^n+1)/10^(n%2))` with `a(0)=0`
-/

namespace A101662.P14663779560794285587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A165472 (SequenceMachineLib.roundAway ((5 * (2 * a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1) : ℚ) / (10 ^ (n % 2) : ℚ))).toNat

end

end A101662.P14663779560794285587

namespace A101662

/-- `A165472(5*(2*a(floor(n/2))-(-1)^n+1)/10^(n%2))` -/
def P14663779560794285587.Spec : Prop :=
  ∀ n, P14663779560794285587.a n = A101662 n

end A101662

/-! ## A101662.P7215598947080091620

`A134451(2*n)-A101674(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A101662

/-- `A134451(2*n)-A101674(n)` -/
def P7215598947080091620.Spec : Prop :=
  ∀ n, P7215598947080091620.a n = A101662 n

theorem P7215598947080091620.correct : P7215598947080091620.Spec := by
  intro n
  simp only [A101662]

end A101662

/-! ## A101662.P2545856123739636788

`A107393(4*n)-A101674(n)`
-/

namespace A101662.P2545856123739636788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (4 * n) - A101674 n

end

end A101662.P2545856123739636788

namespace A101662

/-- `A107393(4*n)-A101674(n)` -/
def P2545856123739636788.Spec : Prop :=
  ∀ n, P2545856123739636788.a n = A101662 n

end A101662

/-! ## A101662.P16720528123276298845

`and(2, A008418(n))-A101674(n)`
-/

namespace A101662.P16720528123276298845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A008418 n) - A101674 n

end

end A101662.P16720528123276298845

namespace A101662

/-- `and(2, A008418(n))-A101674(n)` -/
def P16720528123276298845.Spec : Prop :=
  ∀ n, P16720528123276298845.a n = A101662 n

end A101662

/-! ## A101662.P9021044214585458975

`A001359(n+1)%(3-A101674(n))`
-/

namespace A101662.P9021044214585458975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (n + 1)) (3 - A101674 n)

end

end A101662.P9021044214585458975

namespace A101662

/-- `A001359(n+1)%(3-A101674(n))` -/
def P9021044214585458975.Spec : Prop :=
  ∀ n, P9021044214585458975.a n = A101662 n

end A101662

/-! ## A101662.P7628557004285265915

`and(A040001(A089309(n)), A059100(n))`
-/

namespace A101662.P7628557004285265915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040001 (A089309 n).toNat) (A059100 n)

end

end A101662.P7628557004285265915

namespace A101662

/-- `and(A040001(A089309(n)), A059100(n))` -/
def P7628557004285265915.Spec : Prop :=
  ∀ n, P7628557004285265915.a n = A101662 n

end A101662

/-! ## A101662.P18018521427645569266

`and(A040077(n), A090079(A089309(n)))`
-/

namespace A101662.P18018521427645569266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040077 n) (A090079 (A089309 n).toNat)

end

end A101662.P18018521427645569266

namespace A101662

/-- `and(A040077(n), A090079(A089309(n)))` -/
def P18018521427645569266.Spec : Prop :=
  ∀ n, P18018521427645569266.a n = A101662 n

end A101662

/-! ## A101662.P632206920835411030

`A010673(A030101(n))-A101674(n)`
-/

namespace A101662.P632206920835411030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A030101 n).toNat - A101674 n

end

end A101662.P632206920835411030

namespace A101662

/-- `A010673(A030101(n))-A101674(n)` -/
def P632206920835411030.Spec : Prop :=
  ∀ n, P632206920835411030.a n = A101662 n

end A101662

/-! ## A101662.P11919017667440723350

`A016789(n)%A082204(A342410(n))`
-/

namespace A101662.P11919017667440723350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016789 n) (A082204 (A342410 n).toNat)

end

end A101662.P11919017667440723350

namespace A101662

/-- `A016789(n)%A082204(A342410(n))` -/
def P11919017667440723350.Spec : Prop :=
  ∀ n, P11919017667440723350.a n = A101662 n

end A101662

/-! ## A101662.P16667146599171721975

`A101674(A377355(n))`
-/

namespace A101662.P16667146599171721975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101674 (A377355 n).toNat

end

end A101662.P16667146599171721975

namespace A101662

/-- `A101674(A377355(n))` -/
def P16667146599171721975.Spec : Prop :=
  ∀ n, P16667146599171721975.a n = A101662 n

end A101662

/-! ## A101662.P6752981481315083938

`A010673(A004273(n))-A101674(n)`
-/

namespace A101662.P6752981481315083938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A004273 n).toNat - A101674 n

end

end A101662.P6752981481315083938

namespace A101662

/-- `A010673(A004273(n))-A101674(n)` -/
def P6752981481315083938.Spec : Prop :=
  ∀ n, P6752981481315083938.a n = A101662 n

end A101662

/-! ## A101662.P3723468972387656562

`A153284(2*n+1)-((1-A101674(n))²+A101674(2*n))`
-/

namespace A101662.P3723468972387656562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (2 * n + 1) - ((1 - A101674 n) ^ 2 + A101674 (2 * n))

end

end A101662.P3723468972387656562

namespace A101662

/-- `A153284(2*n+1)-((1-A101674(n))²+A101674(2*n))` -/
def P3723468972387656562.Spec : Prop :=
  ∀ n, P3723468972387656562.a n = A101662 n

end A101662

/-! ## A101662.P5190499899648245499

`A153284(2*n+1)-(A101674(2*n+1)+A101674(2*n))`
-/

namespace A101662.P5190499899648245499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (2 * n + 1) - (A101674 (2 * n + 1) + A101674 (2 * n))

end

end A101662.P5190499899648245499

namespace A101662

/-- `A153284(2*n+1)-(A101674(2*n+1)+A101674(2*n))` -/
def P5190499899648245499.Spec : Prop :=
  ∀ n, P5190499899648245499.a n = A101662 n

end A101662

/-! ## A101662.P3431551595687106030

`A266258(A266258(n)+n)-A101674(n)`
-/

namespace A101662.P3431551595687106030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 (A266258 n + (n : ℤ)).toNat - A101674 n

end

end A101662.P3431551595687106030

namespace A101662

/-- `A266258(A266258(n)+n)-A101674(n)` -/
def P3431551595687106030.Spec : Prop :=
  ∀ n, P3431551595687106030.a n = A101662 n

end A101662

/-! ## A101662.P15528799548734454154

`A266258(A266258(2*n))-A101674(n)`
-/

namespace A101662.P15528799548734454154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 (A266258 (2 * n)).toNat - A101674 n

end

end A101662.P15528799548734454154

namespace A101662

/-- `A266258(A266258(2*n))-A101674(n)` -/
def P15528799548734454154.Spec : Prop :=
  ∀ n, P15528799548734454154.a n = A101662 n

end A101662

/-! ## A101662.P18020978320586478279

`A080940(4*n+2)-A101674(n)`
-/

namespace A101662.P18020978320586478279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (4 * n + 2) - A101674 n

end

end A101662.P18020978320586478279

namespace A101662

/-- `A080940(4*n+2)-A101674(n)` -/
def P18020978320586478279.Spec : Prop :=
  ∀ n, P18020978320586478279.a n = A101662 n

end A101662

/-!
# A101663: Fixed point of morphism 0 -> 01, 1 -> 02, 2 -> 22.

The programs for A101663, the canonical program `A101663.P3709189261986435343` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101663 has offset 0).

The definition of A101663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101663.P17154308466861674243

`ceil(atan(and(n, comp[2*n])))`
-/

namespace A101663.P17154308466861674243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Nat.land n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)⌉

end

end A101663.P17154308466861674243

namespace A101663

/-- `ceil(atan(and(n, comp[2*n])))` -/
def P17154308466861674243.Spec : Prop :=
  ∀ n, P17154308466861674243.a n = A101663 n

end A101663

/-! ## A101663.P22045374967287329

`round(atan(and(n+1, 2*n)²))`
-/

namespace A101663.P22045374967287329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Nat.land (n + 1) (2 * n) ^ 2 : ℝ))

end

end A101663.P22045374967287329

namespace A101663

/-- `round(atan(and(n+1, 2*n)²))` -/
def P22045374967287329.Spec : Prop :=
  ∀ n, P22045374967287329.a n = A101663 n

end A101663

/-! ## A101663.P1565714518642830824

`ceil(atan(sqrt(and(n+1, 2*n))))`
-/

namespace A101663.P1565714518642830824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Real.sqrt (Nat.land (n + 1) (2 * n) : ℝ))⌉

end

end A101663.P1565714518642830824

namespace A101663

/-- `ceil(atan(sqrt(and(n+1, 2*n))))` -/
def P1565714518642830824.Spec : Prop :=
  ∀ n, P1565714518642830824.a n = A101663 n

end A101663

/-! ## A101663.P10582798886752685028

`dr(ceil(atan(and(n, 2*n+1))))`
-/

namespace A101663.P10582798886752685028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌈Real.arctan (Nat.land n (2 * n + 1) : ℝ)⌉

end

end A101663.P10582798886752685028

namespace A101663

/-- `dr(ceil(atan(and(n, 2*n+1))))` -/
def P10582798886752685028.Spec : Prop :=
  ∀ n, (P10582798886752685028.a n : ℤ) = A101663 n

end A101663

/-! ## A101663.P18355471916885933094

`round(sinh(atan(and(n+1, 2*n))))`
-/

namespace A101663.P18355471916885933094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.arctan (Nat.land (n + 1) (2 * n) : ℝ)))

end

end A101663.P18355471916885933094

namespace A101663

/-- `round(sinh(atan(and(n+1, 2*n))))` -/
def P18355471916885933094.Spec : Prop :=
  ∀ n, P18355471916885933094.a n = A101663 n

end A101663

/-! ## A101663.P3709189261986435343

`2-C(2, and(n+1, Δ[n²]))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101663

/-- `2-C(2, and(n+1, Δ[n²]))` -/
def P3709189261986435343.Spec : Prop :=
  ∀ n, P3709189261986435343.a n = A101663 n

theorem P3709189261986435343.correct : P3709189261986435343.Spec := by
  intro n
  simp only [A101663]

end A101663

/-! ## A101663.P2605307110453640455

`ceil(atan(log2(and(2*n+1, n+1))))`
-/

namespace A101663.P2605307110453640455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Real.logb 2 (Nat.land (2 * n + 1) (n + 1) : ℝ))⌉

end

end A101663.P2605307110453640455

namespace A101663

/-- `ceil(atan(log2(and(2*n+1, n+1))))` -/
def P2605307110453640455.Spec : Prop :=
  ∀ n, P2605307110453640455.a n = A101663 n

end A101663

/-! ## A101663.P16390900692229172080

`2-C(2, and(n, 2*n+1)+1)`
-/

namespace A101663.P16390900692229172080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (Nat.land n (2 * n + 1) + 1) : ℤ)

end

end A101663.P16390900692229172080

namespace A101663

/-- `2-C(2, and(n, 2*n+1)+1)` -/
def P16390900692229172080.Spec : Prop :=
  ∀ n, P16390900692229172080.a n = A101663 n

end A101663

/-! ## A101663.P6609787181827981319

`floor(atan(and(n, 2*n+1)-1))+1`
-/

namespace A101663.P6609787181827981319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((Nat.land n (2 * n + 1) : ℤ) - 1 : ℝ)⌋ + 1

end

end A101663.P6609787181827981319

namespace A101663

/-- `floor(atan(and(n, 2*n+1)-1))+1` -/
def P6609787181827981319.Spec : Prop :=
  ∀ n, P6609787181827981319.a n = A101663 n

end A101663

/-! ## A101663.P8818202119994693202

`2-floor(2/and(2*n+1, n+1))`
-/

namespace A101663.P8818202119994693202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊2 / (Nat.land (2 * n + 1) (n + 1) : ℚ)⌋

end

end A101663.P8818202119994693202

namespace A101663

/-- `2-floor(2/and(2*n+1, n+1))` -/
def P8818202119994693202.Spec : Prop :=
  ∀ n, P8818202119994693202.a n = A101663 n

end A101663

/-! ## A101663.P13305952488365324704

`3-ceil(3/and(2*n+1, n+1))`
-/

namespace A101663.P13305952488365324704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ⌈3 / (Nat.land (2 * n + 1) (n + 1) : ℚ)⌉

end

end A101663.P13305952488365324704

namespace A101663

/-- `3-ceil(3/and(2*n+1, n+1))` -/
def P13305952488365324704.Spec : Prop :=
  ∀ n, P13305952488365324704.a n = A101663 n

end A101663

/-! ## A101663.P2266673044465976826

`2-round(ϕ/and(2*n+1, n+1))`
-/

namespace A101663.P2266673044465976826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - SequenceMachineLib.roundAway (Real.goldenRatio / (Nat.land (2 * n + 1) (n + 1) : ℝ))

end

end A101663.P2266673044465976826

namespace A101663

/-- `2-round(ϕ/and(2*n+1, n+1))` -/
def P2266673044465976826.Spec : Prop :=
  ∀ n, P2266673044465976826.a n = A101663 n

end A101663

/-! ## A101663.P9615719178286347785

`ceil(and(n, 2*n+1)^(1/(n+1)))`
-/

namespace A101663.P9615719178286347785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land n (2 * n + 1) : ℝ) ^ (1 / (n + 1 : ℚ) : ℝ)⌉

end

end A101663.P9615719178286347785

namespace A101663

/-- `ceil(and(n, 2*n+1)^(1/(n+1)))` -/
def P9615719178286347785.Spec : Prop :=
  ∀ n, P9615719178286347785.a n = A101663 n

end A101663

/-! ## A101663.P13438563314073337932

`C(2, C(2, and(2*n+1, n+1))+1)`
-/

namespace A101663.P13438563314073337932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose 2 (Nat.land (2 * n + 1) (n + 1)) + 1)

end

end A101663.P13438563314073337932

namespace A101663

/-- `C(2, C(2, and(2*n+1, n+1))+1)` -/
def P13438563314073337932.Spec : Prop :=
  ∀ n, (P13438563314073337932.a n : ℤ) = A101663 n

end A101663

/-! ## A101663.P3681199043878499594

`ceil(log(A105498(n)))`
-/

namespace A101663.P3681199043878499594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A105498 n : ℝ)⌉

end

end A101663.P3681199043878499594

namespace A101663

/-- `ceil(log(A105498(n)))` -/
def P3681199043878499594.Spec : Prop :=
  ∀ n, P3681199043878499594.a n = A101663 n

end A101663

/-! ## A101663.P12958569059207673856

`A046698(and(n+1, 2*n))`
-/

namespace A101663.P12958569059207673856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (Nat.land (n + 1) (2 * n))

end

end A101663.P12958569059207673856

namespace A101663

/-- `A046698(and(n+1, 2*n))` -/
def P12958569059207673856.Spec : Prop :=
  ∀ n, P12958569059207673856.a n = A101663 n

end A101663

/-! ## A101663.P18298310392918876268

`A107286(and(n+1, 2*n))`
-/

namespace A101663.P18298310392918876268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (Nat.land (n + 1) (2 * n))

end

end A101663.P18298310392918876268

namespace A101663

/-- `A107286(and(n+1, 2*n))` -/
def P18298310392918876268.Spec : Prop :=
  ∀ n, P18298310392918876268.a n = A101663 n

end A101663

/-! ## A101663.P8003861151892604341

`A130130(and(n, 2*n+1))`
-/

namespace A101663.P8003861151892604341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (Nat.land n (2 * n + 1))

end

end A101663.P8003861151892604341

namespace A101663

/-- `A130130(and(n, 2*n+1))` -/
def P8003861151892604341.Spec : Prop :=
  ∀ n, P8003861151892604341.a n = A101663 n

end A101663

/-! ## A101663.P17473255147726820329

`ceil(atan(and(2*n, A004767(n))-1))`
-/

namespace A101663.P17473255147726820329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Int.land (2 * n : ℤ) (A004767 n) - 1 : ℝ)⌉

end

end A101663.P17473255147726820329

namespace A101663

/-- `ceil(atan(and(2*n, A004767(n))-1))` -/
def P17473255147726820329.Spec : Prop :=
  ∀ n, P17473255147726820329.a n = A101663 n

end A101663

/-! ## A101663.P8027954159096887711

`2-C(2, A000041(and(n+1, 2*n)))`
-/

namespace A101663.P8027954159096887711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (A000041 (Nat.land (n + 1) (2 * n))).toNat : ℤ)

end

end A101663.P8027954159096887711

namespace A101663

/-- `2-C(2, A000041(and(n+1, 2*n)))` -/
def P8027954159096887711.Spec : Prop :=
  ∀ n, P8027954159096887711.a n = A101663 n

end A101663

/-!
# A101664: Fixed point of morphism 0 -> 01, 1 -> 12, 2 -> 00.

The programs for A101664, the canonical program `A101664.P4122839835703906853` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101664 has offset 0).

The definition of A101664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101664.P4122839835703906853

`(a(floor(n/2))+4)%(n%2+2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101664

/-- `(a(floor(n/2))+4)%(n%2+2)` -/
def P4122839835703906853.Spec : Prop :=
  ∀ n, (P4122839835703906853.a n : ℤ) = A101664 n

theorem P4122839835703906853.correct : P4122839835703906853.Spec := by
  intro n
  simp only [A101664]

end A101664

/-! ## A101664.P17958951466953060345

`A289814((3-(-1)^n)*a(floor(n/2))+1-(-1)^n)` with `a(0)=0`
-/

namespace A101664.P17958951466953060345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A289814 ((3 - (-1) ^ n) * a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n)).toNat

end

end A101664.P17958951466953060345

namespace A101664

/-- `A289814((3-(-1)^n)*a(floor(n/2))+1-(-1)^n)` -/
def P17958951466953060345.Spec : Prop :=
  ∀ n, P17958951466953060345.a n = A101664 n

end A101664

/-! ## A101664.P3601402939553099743

`A003987(A003987((3-(-1)^n)*a(floor(n/2))+1-(-1)^n))` with `a(0)=0`
-/

namespace A101664.P3601402939553099743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A003987 (A003987 ((3 - (-1) ^ n) * a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n)).toNat).toNat

end

end A101664.P3601402939553099743

namespace A101664

/-- `A003987(A003987((3-(-1)^n)*a(floor(n/2))+1-(-1)^n))` -/
def P3601402939553099743.Spec : Prop :=
  ∀ n, P3601402939553099743.a n = A101664 n

end A101664

/-! ## A101664.P2639005661763550768

`A169611(A271206((3-(-1)^n)*a(floor(n/2))+1-(-1)^n))` with `a(0)=0, a(1)=1`
-/

namespace A101664.P2639005661763550768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A169611 (A271206 ((3 - (-1) ^ n) * a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n)).toNat).toNat

end

end A101664.P2639005661763550768

namespace A101664

/-- `A169611(A271206((3-(-1)^n)*a(floor(n/2))+1-(-1)^n))` -/
def P2639005661763550768.Spec : Prop :=
  ∀ n, P2639005661763550768.a n = A101664 n

end A101664

/-! ## A101664.P7461320486598974440

`A101614(A088697(n)%A033253(n+1))`
-/

namespace A101664.P7461320486598974440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101614 (Int.tmod (A088697 n) (A033253 (n + 1))).toNat

end

end A101664.P7461320486598974440

namespace A101664

/-- `A101614(A088697(n)%A033253(n+1))` -/
def P7461320486598974440.Spec : Prop :=
  ∀ n, P7461320486598974440.a n = A101664 n

end A101664

/-! ## A101664.P11133852348199974666

`A101614(A088697(n))`
-/

namespace A101664.P11133852348199974666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101614 (A088697 n).toNat

end

end A101664.P11133852348199974666

namespace A101664

/-- `A101614(A088697(n))` -/
def P11133852348199974666.Spec : Prop :=
  ∀ n, P11133852348199974666.a n = A101664 n

end A101664

/-!
# A101665: Fixed point of morphism 0 -> 01, 1 -> 12, 2 -> 02.

The programs for A101665, there is no canonical definition to state claims against.
-/

/-! ## A101665.P16110462235158292755

`A287411(A003278(n+1))`
-/

namespace A101665.P16110462235158292755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (A003278 (n + 1)).toNat

end

end A101665.P16110462235158292755

/-! ## A101665.P8314022224909879768

`A287411(A005836(n+1)+1)`
-/

namespace A101665.P8314022224909879768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (A005836 (n + 1) + 1).toNat

end

end A101665.P8314022224909879768

/-! ## A101665.P9235814995930975865

`A287411(A005823(n+1)/2+1)`
-/

namespace A101665.P9235814995930975865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (SequenceMachineLib.roundAway ((A005823 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A101665.P9235814995930975865

/-! ## A101665.P13139556261223427056

`A287411(A052938(record[A004488(n)]))`
-/

namespace A101665.P13139556261223427056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (A052938 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A101665.P13139556261223427056

/-! ## A101665.P3979079023886432110

`A287411(A052938(A005823(n+1)))`
-/

namespace A101665.P3979079023886432110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (A052938 (A005823 (n + 1)).toNat).toNat

end

end A101665.P3979079023886432110

/-! ## A101665.P216251782089832434

`A287411(record[A008619(A140266(n+1))])`
-/

namespace A101665.P216251782089832434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A140266 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101665.P216251782089832434

/-!
# A101666: Fixed point of morphism 0 -> 01, 1 -> 12, 2 -> 10, starting with 0.

The programs for A101666, the canonical program `A101666.P1208846011814995245` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101666 has offset 0).

The definition of A101666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101666.P7070186054711392351

`and(3, 1-A287373(n+1))`
-/

namespace A101666.P7070186054711392351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (1 - A287373 (n + 1))

end

end A101666.P7070186054711392351

namespace A101666

/-- `and(3, 1-A287373(n+1))` -/
def P7070186054711392351.Spec : Prop :=
  ∀ n, P7070186054711392351.a n = A101666 n

end A101666

/-! ## A101666.P1208846011814995245

`A000045(and(3, a(floor(n/2))+2*n))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101666

/-- `A000045(and(3, a(floor(n/2))+2*n))` -/
def P1208846011814995245.Spec : Prop :=
  ∀ n, P1208846011814995245.a n = A101666 n

theorem P1208846011814995245.correct : P1208846011814995245.Spec := by
  intro n
  simp only [A101666]

end A101666

/-! ## A101666.P9242844238172747154

`A101661(A006257(n))`
-/

namespace A101666.P9242844238172747154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101661 (A006257 n).toNat

end

end A101666.P9242844238172747154

namespace A101666

/-- `A101661(A006257(n))` -/
def P9242844238172747154.Spec : Prop :=
  ∀ n, P9242844238172747154.a n = A101666 n

end A101666

/-! ## A101666.P6095056663781932347

`A287516(A287373(n+1)-4*n)`
-/

namespace A101666.P6095056663781932347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287516 (A287373 (n + 1) - (4 * n : ℤ)).toNat

end

end A101666.P6095056663781932347

namespace A101666

/-- `A287516(A287373(n+1)-4*n)` -/
def P6095056663781932347.Spec : Prop :=
  ∀ n, P6095056663781932347.a n = A101666 n

end A101666

/-! ## A101666.P548048417884335211

`A287374(2*(n+1))-(A287374(2*n+1)+1)`
-/

namespace A101666.P548048417884335211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287374 (2 * (n + 1)) - (A287374 (2 * n + 1) + 1)

end

end A101666.P548048417884335211

namespace A101666

/-- `A287374(2*(n+1))-(A287374(2*n+1)+1)` -/
def P548048417884335211.Spec : Prop :=
  ∀ n, P548048417884335211.a n = A101666 n

end A101666

/-! ## A101666.P9259206676532061907

`A000720(A287374(2*(n+1))-A287374(2*n+1))`
-/

namespace A101666.P9259206676532061907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A287374 (2 * (n + 1)) - A287374 (2 * n + 1)).toNat

end

end A101666.P9259206676532061907

namespace A101666

/-- `A000720(A287374(2*(n+1))-A287374(2*n+1))` -/
def P9259206676532061907.Spec : Prop :=
  ∀ n, P9259206676532061907.a n = A101666 n

end A101666

/-! ## A101666.P4323693238620682943

`A004442(A287373(n+1))%4`
-/

namespace A101666.P4323693238620682943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 (A287373 (n + 1)).toNat) 4

end

end A101666.P4323693238620682943

namespace A101666

/-- `A004442(A287373(n+1))%4` -/
def P4323693238620682943.Spec : Prop :=
  ∀ n, P4323693238620682943.a n = A101666 n

end A101666

/-! ## A101666.P8237819498255652537

`A287418(A003278(n+1))`
-/

namespace A101666.P8237819498255652537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (A003278 (n + 1)).toNat

end

end A101666.P8237819498255652537

namespace A101666

/-- `A287418(A003278(n+1))` -/
def P8237819498255652537.Spec : Prop :=
  ∀ n, P8237819498255652537.a n = A101666 n

end A101666

/-! ## A101666.P17808652208684229751

`A287418(A005836(n+1)+1)`
-/

namespace A101666.P17808652208684229751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (A005836 (n + 1) + 1).toNat

end

end A101666.P17808652208684229751

namespace A101666

/-- `A287418(A005836(n+1)+1)` -/
def P17808652208684229751.Spec : Prop :=
  ∀ n, P17808652208684229751.a n = A101666 n

end A101666

/-! ## A101666.P5069112200378801887

`A287418(A005823(n+1)/2+1)`
-/

namespace A101666.P5069112200378801887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (SequenceMachineLib.roundAway ((A005823 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A101666.P5069112200378801887

namespace A101666

/-- `A287418(A005823(n+1)/2+1)` -/
def P5069112200378801887.Spec : Prop :=
  ∀ n, P5069112200378801887.a n = A101666 n

end A101666

/-! ## A101666.P10598639923346054868

`A287418(A008619(record[A300222(n)]))`
-/

namespace A101666.P10598639923346054868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A101666.P10598639923346054868

namespace A101666

/-- `A287418(A008619(record[A300222(n)]))` -/
def P10598639923346054868.Spec : Prop :=
  ∀ n, P10598639923346054868.a n = A101666 n

end A101666

/-! ## A101666.P10760302918602022824

`A287418(A008619(A005823(n+1)))`
-/

namespace A101666.P10760302918602022824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (A008619 (A005823 (n + 1)).toNat).toNat

end

end A101666.P10760302918602022824

namespace A101666

/-- `A287418(A008619(A005823(n+1)))` -/
def P10760302918602022824.Spec : Prop :=
  ∀ n, P10760302918602022824.a n = A101666 n

end A101666

/-!
# A101667: Ceiling(2(1-cos(2n))), a bisection of A103121.

The programs for A101667, the canonical program `A101667.P14200950530166550395` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101667 has offset 1).

The definition of A101667 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(2*(1-cos(2*(n+1))))` (program `A101667.P14200950530166550395`, by `A101667.P14200950530166550395.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101667.P14200950530166550395

`ceil(2*(1-cos(2*(n+1))))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101667

/-- `ceil(2*(1-cos(2*(n+1))))` -/
def P14200950530166550395.Spec : Prop :=
  ∀ n, P14200950530166550395.a n = A101667 (n + 1)

theorem P14200950530166550395.correct : P14200950530166550395.Spec := by
  intro n
  simp only [A101667, Nat.add_sub_cancel]

end A101667

/-!
# A101668: Fixed point of morphism 0 -> 01, 1 -> 20, 2 -> 00.

The programs for A101668, the canonical program `A101668.P13957911429453187080` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101668 has offset 0).

The definition of A101668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101668.P13957911429453187080

`and(a(floor(n/2))+1, -n)%3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101668

/-- `and(a(floor(n/2))+1, -n)%3` -/
def P13957911429453187080.Spec : Prop :=
  ∀ n, P13957911429453187080.a n = A101668 n

theorem P13957911429453187080.correct : P13957911429453187080.Spec := by
  intro n
  simp only [A101668]

end A101668

/-! ## A101668.P3952441953203899655

`A080843(3*a(floor(n/2))+n-2*floor(n/2))` with `a(0)=0`
-/

namespace A101668.P3952441953203899655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A080843 (3 * a ⌊(n : ℚ) / 2⌋.toNat + ((n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋)).toNat

end

end A101668.P3952441953203899655

namespace A101668

/-- `A080843(3*a(floor(n/2))+n-2*floor(n/2))` -/
def P3952441953203899655.Spec : Prop :=
  ∀ n, P3952441953203899655.a n = A101668 n

end A101668

/-! ## A101668.P2211286303190889382

`A309954((3*a(floor(n/2))+n-2*floor(n/2))²)` with `a(0)=0`
-/

namespace A101668.P2211286303190889382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A309954 ((3 * a ⌊(n : ℚ) / 2⌋.toNat + ((n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋)) ^ 2).toNat

end

end A101668.P2211286303190889382

namespace A101668

/-- `A309954((3*a(floor(n/2))+n-2*floor(n/2))²)` -/
def P2211286303190889382.Spec : Prop :=
  ∀ n, P2211286303190889382.a n = A101668 n

end A101668

/-! ## A101668.P13303838102284010790

`n%A011973(5*(n-2*(floor(n/2)-a(floor(n/2)))))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A101668.P13303838102284010790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Int.tmod (n : ℤ) (A011973 (5 * ((n : ℤ) - 2 * (⌊(n : ℚ) / 2⌋ - a ⌊(n : ℚ) / 2⌋.toNat))).toNat)

end

end A101668.P13303838102284010790

namespace A101668

/-- `n%A011973(5*(n-2*(floor(n/2)-a(floor(n/2)))))` -/
def P13303838102284010790.Spec : Prop :=
  ∀ n, P13303838102284010790.a n = A101668 n

end A101668

/-!
# A101669: Fixed point of morphism 0 -> 01, 1 -> 20, 2 -> 01.

The programs for A101669, the canonical program `A101669.P17359681822000414752` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101669 has offset 0).

The definition of A101669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101669.P17359681822000414752

`(n%(xor(n, n+2)+2))%3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101669

/-- `(n%(xor(n, n+2)+2))%3` -/
def P17359681822000414752.Spec : Prop :=
  ∀ n, (P17359681822000414752.a n : ℤ) = A101669 n

theorem P17359681822000414752.correct : P17359681822000414752.Spec := by
  intro n
  simp only [A101669]

end A101669

/-! ## A101669.P7133997568265232030

`and(n, A101674(n))`
-/

namespace A101669.P7133997568265232030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A101674 n)

end

end A101669.P7133997568265232030

namespace A101669

/-- `and(n, A101674(n))` -/
def P7133997568265232030.Spec : Prop :=
  ∀ n, P7133997568265232030.a n = A101669 n

end A101669

/-! ## A101669.P378016058343581443

`and(n, 2-A101662(n))`
-/

namespace A101669.P378016058343581443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (2 - A101662 n)

end

end A101669.P378016058343581443

namespace A101669

/-- `and(n, 2-A101662(n))` -/
def P378016058343581443.Spec : Prop :=
  ∀ n, P378016058343581443.a n = A101669 n

end A101669

/-! ## A101669.P1297890662827123677

`and(gcd(2, n), A001202(n+1))`
-/

namespace A101669.P1297890662827123677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.gcd 2 n : ℤ) (A001202 (n + 1))

end

end A101669.P1297890662827123677

namespace A101669

/-- `and(gcd(2, n), A001202(n+1))` -/
def P1297890662827123677.Spec : Prop :=
  ∀ n, P1297890662827123677.a n = A101669 n

end A101669

/-! ## A101669.P15912882591758783790

`and(Δ[val(n+1, 2)%2]+2, -A159619(n+1))`
-/

namespace A101669.P15912882591758783790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2) (-A159619 (n + 1))

end

end A101669.P15912882591758783790

namespace A101669

/-- `and(Δ[val(n+1, 2)%2]+2, -A159619(n+1))` -/
def P15912882591758783790.Spec : Prop :=
  ∀ n, P15912882591758783790.a n = A101669 n

end A101669

/-! ## A101669.P3810352737342456210

`A159917(A022290(n))`
-/

namespace A101669.P3810352737342456210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 (A022290 n).toNat

end

end A101669.P3810352737342456210

namespace A101669

/-- `A159917(A022290(n))` -/
def P3810352737342456210.Spec : Prop :=
  ∀ n, P3810352737342456210.a n = A101669 n

end A101669

/-! ## A101669.P11793301342989758003

`A101674(A190621(n))`
-/

namespace A101669.P11793301342989758003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101674 (A190621 n).toNat

end

end A101669.P11793301342989758003

namespace A101669

/-- `A101674(A190621(n))` -/
def P11793301342989758003.Spec : Prop :=
  ∀ n, P11793301342989758003.a n = A101669 n

end A101669

/-! ## A101669.P1244494864369131210

`A101674(n*A166486(n))`
-/

namespace A101669.P1244494864369131210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101674 ((n : ℤ) * A166486 n).toNat

end

end A101669.P1244494864369131210

namespace A101669

/-- `A101674(n*A166486(n))` -/
def P1244494864369131210.Spec : Prop :=
  ∀ n, P1244494864369131210.a n = A101669 n

end A101669

/-! ## A101669.P14331048989337506412

`A101674(n)%A001148(n)`
-/

namespace A101669.P14331048989337506412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101674 n) (A001148 n)

end

end A101669.P14331048989337506412

namespace A101669

/-- `A101674(n)%A001148(n)` -/
def P14331048989337506412.Spec : Prop :=
  ∀ n, P14331048989337506412.a n = A101669 n

end A101669

/-! ## A101669.P8782006512199863098

`A087808(n)%A040003(n)`
-/

namespace A101669.P8782006512199863098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087808 n) (A040003 n)

end

end A101669.P8782006512199863098

namespace A101669

/-- `A087808(n)%A040003(n)` -/
def P8782006512199863098.Spec : Prop :=
  ∀ n, P8782006512199863098.a n = A101669 n

end A101669

/-! ## A101669.P7421858848095115299

`A179821(n)%A040003(n)`
-/

namespace A101669.P7421858848095115299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179821 n) (A040003 n)

end

end A101669.P7421858848095115299

namespace A101669

/-- `A179821(n)%A040003(n)` -/
def P7421858848095115299.Spec : Prop :=
  ∀ n, P7421858848095115299.a n = A101669 n

end A101669

/-! ## A101669.P11796021501054518554

`A261393(n)%A040003(n)`
-/

namespace A101669.P11796021501054518554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261393 n) (A040003 n)

end

end A101669.P11796021501054518554

namespace A101669

/-- `A261393(n)%A040003(n)` -/
def P11796021501054518554.Spec : Prop :=
  ∀ n, P11796021501054518554.a n = A101669 n

end A101669

/-! ## A101669.P14142303377451668263

`A283187(n)%A040003(n)`
-/

namespace A101669.P14142303377451668263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283187 n) (A040003 n)

end

end A101669.P14142303377451668263

namespace A101669

/-- `A283187(n)%A040003(n)` -/
def P14142303377451668263.Spec : Prop :=
  ∀ n, P14142303377451668263.a n = A101669 n

end A101669

/-! ## A101669.P5166894979749568053

`A101674(lcm(n, A007877(n)))`
-/

namespace A101669.P5166894979749568053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101674 (Int.lcm (n : ℤ) (A007877 n))

end

end A101669.P5166894979749568053

namespace A101669

/-- `A101674(lcm(n, A007877(n)))` -/
def P5166894979749568053.Spec : Prop :=
  ∀ n, P5166894979749568053.a n = A101669 n

end A101669

/-! ## A101669.P17879721733839001235

`and(A007877(n), A087808(n))`
-/

namespace A101669.P17879721733839001235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007877 n) (A087808 n)

end

end A101669.P17879721733839001235

namespace A101669

/-- `and(A007877(n), A087808(n))` -/
def P17879721733839001235.Spec : Prop :=
  ∀ n, P17879721733839001235.a n = A101669 n

end A101669

/-! ## A101669.P13760325667727068719

`A270788(A022290(n)+1)-1`
-/

namespace A101669.P13760325667727068719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270788 (A022290 n + 1).toNat - 1

end

end A101669.P13760325667727068719

namespace A101669

/-- `A270788(A022290(n)+1)-1` -/
def P13760325667727068719.Spec : Prop :=
  ∀ n, P13760325667727068719.a n = A101669 n

end A101669

/-! ## A101669.P7971902304628707925

`A001202(n+1)%A040003(n)`
-/

namespace A101669.P7971902304628707925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001202 (n + 1)) (A040003 n)

end

end A101669.P7971902304628707925

namespace A101669

/-- `A001202(n+1)%A040003(n)` -/
def P7971902304628707925.Spec : Prop :=
  ∀ n, P7971902304628707925.a n = A101669 n

end A101669

/-! ## A101669.P91959746196055681

`and(A001202(n+1), A007877(n))`
-/

namespace A101669.P91959746196055681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001202 (n + 1)) (A007877 n)

end

end A101669.P91959746196055681

namespace A101669

/-- `and(A001202(n+1), A007877(n))` -/
def P91959746196055681.Spec : Prop :=
  ∀ n, P91959746196055681.a n = A101669 n

end A101669

/-! ## A101669.P13037708247469846444

`and(n*A089309(n), A040001(n))`
-/

namespace A101669.P13037708247469846444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) * A089309 n) (A040001 n)

end

end A101669.P13037708247469846444

namespace A101669

/-- `and(n*A089309(n), A040001(n))` -/
def P13037708247469846444.Spec : Prop :=
  ∀ n, P13037708247469846444.a n = A101669 n

end A101669

/-!
# A101670: Fixed point of morphism 0 -> 01, 1 -> 20, 2 -> 02.

The programs for A101670, there is no canonical definition to state claims against.
-/

/-! ## A101670.P2957798889935645447

`A339444(a(floor(n/2))+gcd(2, n))` with `a(0)=0`
-/

namespace A101670.P2957798889935645447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A339444 (a ⌊(n : ℚ) / 2⌋.toNat + (Nat.gcd 2 n : ℤ)).toNat

end

end A101670.P2957798889935645447

/-! ## A101670.P18166377282353485408

`A293936(a(floor(n/2))+and(1, n+1))` with `a(0)=0`
-/

namespace A101670.P18166377282353485408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A293936 (a ⌊(n : ℚ) / 2⌋.toNat + (Nat.land 1 (n + 1) : ℤ)).toNat

end

end A101670.P18166377282353485408

/-! ## A101670.P17893960077518170507

`A293938(a(floor(n/2))+and(1, n+1))` with `a(0)=0`
-/

namespace A101670.P17893960077518170507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A293938 (a ⌊(n : ℚ) / 2⌋.toNat + (Nat.land 1 (n + 1) : ℤ)).toNat

end

end A101670.P17893960077518170507

/-! ## A101670.P15275934529890619663

`A287443(A003278(n+1))`
-/

namespace A101670.P15275934529890619663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (A003278 (n + 1)).toNat

end

end A101670.P15275934529890619663

/-! ## A101670.P12010760644130343972

`A287443(A005836(n+1)+1)`
-/

namespace A101670.P12010760644130343972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (A005836 (n + 1) + 1).toNat

end

end A101670.P12010760644130343972

/-! ## A101670.P14945366792978480501

`A287443(A033164(n+1)-3)`
-/

namespace A101670.P14945366792978480501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (A033164 (n + 1) - 3).toNat

end

end A101670.P14945366792978480501

/-! ## A101670.P11617983200253372989

`A287443(A004488(record[A004488(n)])+1)`
-/

namespace A101670.P11617983200253372989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (A004488 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1).toNat

end

end A101670.P11617983200253372989

/-! ## A101670.P16862429093901483424

`A287443(A008619(record[A004488(n)]))`
-/

namespace A101670.P16862429093901483424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A101670.P16862429093901483424

/-! ## A101670.P9078053174418904198

`A287443(record[A109613(n)-A004488(n)])`
-/

namespace A101670.P9078053174418904198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101670.P9078053174418904198

/-! ## A101670.P14429770403102995914

`A287443(A265100(n+1))`
-/

namespace A101670.P14429770403102995914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (A265100 (n + 1)).toNat

end

end A101670.P14429770403102995914

/-!
# A101671: Fixed point of morphism 0 -> 01, 1 -> 20, 2 -> 10.

The programs for A101671, the canonical program `A101671.P12160402881735965879` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101671 has offset 0).

The definition of A101671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101671.P12160402881735965879

`xor(n, n-(a(n-1)+1))%3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101671

/-- `xor(n, n-(a(n-1)+1))%3` -/
def P12160402881735965879.Spec : Prop :=
  ∀ n, P12160402881735965879.a n = A101671 n

theorem P12160402881735965879.correct : P12160402881735965879.Spec := by
  intro n
  simp only [A101671]

end A101671

/-! ## A101671.P666511001383731227

`xor(n, n-1-a(n-1))%3` with `a(0)=0`
-/

namespace A101671.P666511001383731227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1 - a (n - 1))) 3

end

end A101671.P666511001383731227

namespace A101671

/-- `xor(n, n-1-a(n-1))%3` -/
def P666511001383731227.Spec : Prop :=
  ∀ n, P666511001383731227.a n = A101671 n

theorem P666511001383731227.correct : P666511001383731227.Spec := by
  intro n
  simp only [A101671, Nat.add_sub_cancel, A101671.P666511001383731227.a, A101671.P12160402881735965879.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A101671

/-! ## A101671.P14972715199513180541

`(a(n-1)+1)*char[comp[xor(n, 2*n)]]` with `a(0)=0, a(1)=1`
-/

namespace A101671.P14972715199513180541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + 1) * (if ∃ j, f1 j = n then 1 else 0)

end

end A101671.P14972715199513180541

namespace A101671

/-- `(a(n-1)+1)*char[comp[xor(n, 2*n)]]` -/
def P14972715199513180541.Spec : Prop :=
  ∀ n, (P14972715199513180541.a n : ℤ) = A101671 n

end A101671

/-! ## A101671.P5023390116539680608

`(A268726(n)-1)%2+1`
-/

namespace A101671.P5023390116539680608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268726 n - 1) 2 + 1

end

end A101671.P5023390116539680608

namespace A101671

/-- `(A268726(n)-1)%2+1` -/
def P5023390116539680608.Spec : Prop :=
  ∀ n, P5023390116539680608.a n = A101671 n

end A101671

/-! ## A101671.P11270502777232357510

`(a(n-1)+1)*A010060(n)` with `a(0)=0`
-/

namespace A101671.P11270502777232357510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * A010060 n

end

end A101671.P11270502777232357510

namespace A101671

/-- `(a(n-1)+1)*A010060(n)` -/
def P11270502777232357510.Spec : Prop :=
  ∀ n, P11270502777232357510.a n = A101671 n

end A101671

/-! ## A101671.P5310123535304552016

`A134451(A268726(n))`
-/

namespace A101671.P5310123535304552016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A268726 n).toNat

end

end A101671.P5310123535304552016

namespace A101671

/-- `A134451(A268726(n))` -/
def P5310123535304552016.Spec : Prop :=
  ∀ n, P5310123535304552016.a n = A101671 n

end A101671

/-! ## A101671.P6654950704267289582

`A191254(A000069(n+1))`
-/

namespace A101671.P6654950704267289582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (A000069 (n + 1)).toNat

end

end A101671.P6654950704267289582

namespace A101671

/-- `A191254(A000069(n+1))` -/
def P6654950704267289582.Spec : Prop :=
  ∀ n, P6654950704267289582.a n = A101671 n

end A101671

/-! ## A101671.P8595566405904631171

`A191254(A066194(n+1))`
-/

namespace A101671.P8595566405904631171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (A066194 (n + 1)).toNat

end

end A101671.P8595566405904631171

namespace A101671

/-- `A191254(A066194(n+1))` -/
def P8595566405904631171.Spec : Prop :=
  ∀ n, P8595566405904631171.a n = A101671 n

end A101671

/-! ## A101671.P1096962649708905332

`A001285(n)-A127254(n)`
-/

namespace A101671.P1096962649708905332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n - A127254 n

end

end A101671.P1096962649708905332

namespace A101671

/-- `A001285(n)-A127254(n)` -/
def P1096962649708905332.Spec : Prop :=
  ∀ n, P1096962649708905332.a n = A101671 n

end A101671

/-! ## A101671.P15886709407354742478

`n-A001969(A159481(n))`
-/

namespace A101671.P15886709407354742478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001969 (A159481 n).toNat

end

end A101671.P15886709407354742478

namespace A101671

/-- `n-A001969(A159481(n))` -/
def P15886709407354742478.Spec : Prop :=
  ∀ n, P15886709407354742478.a n = A101671 n

end A101671

/-! ## A101671.P12391032042481540335

`A010873(A232637(n+1)-1)`
-/

namespace A101671.P12391032042481540335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A232637 (n + 1) - 1).toNat

end

end A101671.P12391032042481540335

namespace A101671

/-- `A010873(A232637(n+1)-1)` -/
def P12391032042481540335.Spec : Prop :=
  ∀ n, P12391032042481540335.a n = A101671 n

end A101671

/-! ## A101671.P10262873372936784473

`A010060(n)+1-A127254(n)`
-/

namespace A101671.P10262873372936784473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + (1 - A127254 n)

end

end A101671.P10262873372936784473

namespace A101671

/-- `A010060(n)+1-A127254(n)` -/
def P10262873372936784473.Spec : Prop :=
  ∀ n, P10262873372936784473.a n = A101671 n

end A101671

/-! ## A101671.P9004369608463190994

`n-A161560(A010059(n)+n)`
-/

namespace A101671.P9004369608463190994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A161560 (A010059 n + (n : ℤ)).toNat

end

end A101671.P9004369608463190994

namespace A101671

/-- `n-A161560(A010059(n)+n)` -/
def P9004369608463190994.Spec : Prop :=
  ∀ n, P9004369608463190994.a n = A101671 n

end A101671

/-! ## A101671.P13851566829298799218

`n-A161560(A161560(n+1)+1)`
-/

namespace A101671.P13851566829298799218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A161560 (A161560 (n + 1) + 1).toNat

end

end A101671.P13851566829298799218

namespace A101671

/-- `n-A161560(A161560(n+1)+1)` -/
def P13851566829298799218.Spec : Prop :=
  ∀ n, P13851566829298799218.a n = A101671 n

end A101671

/-! ## A101671.P18094062832122164731

`A191254(2*n+1-A010060(n))`
-/

namespace A101671.P18094062832122164731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 ((2 * n + 1 : ℤ) - A010060 n).toNat

end

end A101671.P18094062832122164731

namespace A101671

/-- `A191254(2*n+1-A010060(n))` -/
def P18094062832122164731.Spec : Prop :=
  ∀ n, P18094062832122164731.a n = A101671 n

end A101671

/-! ## A101671.P14672704179846108971

`gcd(A005680(n+1), A036579(n))-1`
-/

namespace A101671.P14672704179846108971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A005680 (n + 1)) (A036579 n) : ℤ) - 1

end

end A101671.P14672704179846108971

namespace A101671

/-- `gcd(A005680(n+1), A036579(n))-1` -/
def P14672704179846108971.Spec : Prop :=
  ∀ n, P14672704179846108971.a n = A101671 n

end A101671

/-! ## A101671.P17642090509373267578

`and(n, -n)%3*char[xor(n, Δ[n²])]`
-/

namespace A101671.P17642090509373267578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A101671.P17642090509373267578

namespace A101671

/-- `and(n, -n)%3*char[xor(n, Δ[n²])]` -/
def P17642090509373267578.Spec : Prop :=
  ∀ n, P17642090509373267578.a n = A101671 n

end A101671

/-! ## A101671.P4438681320958199741

`(a(n-1)+1)*char[xor(n, Δ[n²])]` with `a(0)=0`
-/

namespace A101671.P4438681320958199741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A101671.P4438681320958199741

namespace A101671

/-- `(a(n-1)+1)*char[xor(n, Δ[n²])]` -/
def P4438681320958199741.Spec : Prop :=
  ∀ n, (P4438681320958199741.a n : ℤ) = A101671 n

end A101671

/-! ## A101671.P1634157207373857283

`2^a(n-1)*char[xor(n, Δ[n²])]` with `a(0)=0`
-/

namespace A101671.P1634157207373857283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 ^ a (n - 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A101671.P1634157207373857283

namespace A101671

/-- `2^a(n-1)*char[xor(n, Δ[n²])]` -/
def P1634157207373857283.Spec : Prop :=
  ∀ n, (P1634157207373857283.a n : ℤ) = A101671 n

end A101671

/-!
# A101672: Fixed point of morphism 0 -> 01, 1 -> 20, 2 -> 11.

The programs for A101672, the canonical program `A101672.P16866957700523318769` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101672 has offset 0).

The definition of A101672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101672.P16866957700523318769

`(n%2+gcd(2, n)*a(floor(n/2)))%(gcd(2, n)+1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101672

/-- `(n%2+gcd(2, n)*a(floor(n/2)))%(gcd(2, n)+1)` -/
def P16866957700523318769.Spec : Prop :=
  ∀ n, (P16866957700523318769.a n : ℤ) = A101672 n

theorem P16866957700523318769.correct : P16866957700523318769.Spec := by
  intro n
  simp only [A101672]

end A101672

/-! ## A101672.P5949378225071113376

`A030341(5*(n-2*(floor(n/2)-a(floor(n/2)))))` with `a(0)=0`
-/

namespace A101672.P5949378225071113376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A030341 (5 * ((n : ℤ) - 2 * (⌊(n : ℚ) / 2⌋ - a ⌊(n : ℚ) / 2⌋.toNat))).toNat

end

end A101672.P5949378225071113376

namespace A101672

/-- `A030341(5*(n-2*(floor(n/2)-a(floor(n/2)))))` -/
def P5949378225071113376.Spec : Prop :=
  ∀ n, P5949378225071113376.a n = A101672 n

end A101672

/-! ## A101672.P18062979582126330934

`(n%2+gcd(2, n)*a(floor(n/2)))%A094290(n+2)` with `a(0)=0`
-/

namespace A101672.P18062979582126330934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (((n % 2 : ℕ) : ℤ) + (Nat.gcd 2 n : ℤ) * a ⌊(n : ℚ) / 2⌋.toNat) (A094290 (n + 2))

end

end A101672.P18062979582126330934

namespace A101672

/-- `(n%2+gcd(2, n)*a(floor(n/2)))%A094290(n+2)` -/
def P18062979582126330934.Spec : Prop :=
  ∀ n, P18062979582126330934.a n = A101672 n

end A101672

/-! ## A101672.P990385229311490111

`A331601(2*n+5)%A010684(A000045(n))`
-/

namespace A101672.P990385229311490111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331601 (2 * n + 5)) (A010684 (A000045 n).toNat)

end

end A101672.P990385229311490111

namespace A101672

/-- `A331601(2*n+5)%A010684(A000045(n))` -/
def P990385229311490111.Spec : Prop :=
  ∀ n, P990385229311490111.a n = A101672 n

end A101672

/-!
# A101673: Fixed point of morphism 0 -> 01, 1 -> 20, 2 -> 20.

The programs for A101673, the canonical program `A101673.P15412235099696167501` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101673 has offset 0).

The definition of A101673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101673.P7715976998602079890

`log2(gcd(4, comp[xor(n, 2*n)]))`
-/

namespace A101673.P7715976998602079890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 4 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)

end

end A101673.P7715976998602079890

namespace A101673

/-- `log2(gcd(4, comp[xor(n, 2*n)]))` -/
def P7715976998602079890.Spec : Prop :=
  ∀ n, P7715976998602079890.a n = (A101673 n : ℝ)

end A101673

/-! ## A101673.P6009851091997172385

`val(or(4, comp[xor(n, 2*n)]), 2)`
-/

namespace A101673.P6009851091997172385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 4 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 2

end

end A101673.P6009851091997172385

namespace A101673

/-- `val(or(4, comp[xor(n, 2*n)]), 2)` -/
def P6009851091997172385.Spec : Prop :=
  ∀ n, (P6009851091997172385.a n : ℤ) = A101673 n

end A101673

/-! ## A101673.P6249781612465748687

`(1-char[xor(n, 2*n)])*(2-and(1, n))`
-/

namespace A101673.P6249781612465748687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * (2 - (Nat.land 1 n : ℤ))

end

end A101673.P6249781612465748687

namespace A101673

/-- `(1-char[xor(n, 2*n)])*(2-and(1, n))` -/
def P6249781612465748687.Spec : Prop :=
  ∀ n, P6249781612465748687.a n = A101673 n

end A101673

/-! ## A101673.P5760880310238745958

`(char[2*n]+1)*char[comp[xor(n, 2*n)]]`
-/

namespace A101673.P5760880310238745958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) * (if ∃ j, f2 j = n then 1 else 0)

end

end A101673.P5760880310238745958

namespace A101673

/-- `(char[2*n]+1)*char[comp[xor(n, 2*n)]]` -/
def P5760880310238745958.Spec : Prop :=
  ∀ n, (P5760880310238745958.a n : ℤ) = A101673 n

end A101673

/-! ## A101673.P16767667394767495152

`char[xor(n, 2*n+1)]*∑{d}[n, round(1/#)]`
-/

namespace A101673.P16767667394767495152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * (∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.roundAway (1 / (d : ℚ)))

end

end A101673.P16767667394767495152

namespace A101673

/-- `char[xor(n, 2*n+1)]*∑{d}[n, round(1/#)]` -/
def P16767667394767495152.Spec : Prop :=
  ∀ n, P16767667394767495152.a n = A101673 n

end A101673

/-! ## A101673.P11901143260256447480

`ceil(atan(A268726(n)))`
-/

namespace A101673.P11901143260256447480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A268726 n : ℝ)⌉

end

end A101673.P11901143260256447480

namespace A101673

/-- `ceil(atan(A268726(n)))` -/
def P11901143260256447480.Spec : Prop :=
  ∀ n, P11901143260256447480.a n = A101673 n

end A101673

/-! ## A101673.P15412235099696167501

`gcd(2, n)*A010060(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A101673

/-- `gcd(2, n)*A010060(n)` -/
def P15412235099696167501.Spec : Prop :=
  ∀ n, P15412235099696167501.a n = A101673 n

theorem P15412235099696167501.correct : P15412235099696167501.Spec := by
  intro n
  simp only [A101673]

end A101673

/-! ## A101673.P13241082851921401078

`A277808(or(n, n+2))`
-/

namespace A101673.P13241082851921401078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277808 (Nat.lor n (n + 2))

end

end A101673.P13241082851921401078

namespace A101673

/-- `A277808(or(n, n+2))` -/
def P13241082851921401078.Spec : Prop :=
  ∀ n, P13241082851921401078.a n = A101673 n

end A101673

/-! ## A101673.P13196434438660295649

`(char[2*n]+1)*A000120(n)%2`
-/

namespace A101673.P13196434438660295649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * Int.tmod (A000120 n) 2

end

end A101673.P13196434438660295649

namespace A101673

/-- `(char[2*n]+1)*A000120(n)%2` -/
def P13196434438660295649.Spec : Prop :=
  ∀ n, P13196434438660295649.a n = A101673 n

end A101673

/-! ## A101673.P6297410618786562284

`A076826(A102392(n))`
-/

namespace A101673.P6297410618786562284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A102392 n).toNat

end

end A101673.P6297410618786562284

namespace A101673

/-- `A076826(A102392(n))` -/
def P6297410618786562284.Spec : Prop :=
  ∀ n, P6297410618786562284.a n = A101673 n

end A101673

/-! ## A101673.P5989735100606570748

`A101668(A090078(n))`
-/

namespace A101673.P5989735100606570748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101668 (A090078 n).toNat

end

end A101673.P5989735100606570748

namespace A101673

/-- `A101668(A090078(n))` -/
def P5989735100606570748.Spec : Prop :=
  ∀ n, P5989735100606570748.a n = A101673 n

end A101673

/-! ## A101673.P8171181551342788226

`A134451(A246160(n))`
-/

namespace A101673.P8171181551342788226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A246160 n).toNat

end

end A101673.P8171181551342788226

namespace A101673

/-- `A134451(A246160(n))` -/
def P8171181551342788226.Spec : Prop :=
  ∀ n, P8171181551342788226.a n = A101673 n

end A101673

/-! ## A101673.P6714186015084655744

`A254379(n)+A010060(n)`
-/

namespace A101673.P6714186015084655744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 n + A010060 n

end

end A101673.P6714186015084655744

namespace A101673

/-- `A254379(n)+A010060(n)` -/
def P6714186015084655744.Spec : Prop :=
  ∀ n, P6714186015084655744.a n = A101673 n

end A101673

/-! ## A101673.P4021952394432973894

`A001285(n)-A254651(n)`
-/

namespace A101673.P4021952394432973894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n - A254651 n

end

end A101673.P4021952394432973894

namespace A101673

/-- `A001285(n)-A254651(n)` -/
def P4021952394432973894.Spec : Prop :=
  ∀ n, P4021952394432973894.a n = A101673 n

end A101673

/-! ## A101673.P12058776411705888204

`A254377(n)-A106400(n)`
-/

namespace A101673.P12058776411705888204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 n - A106400 n

end

end A101673.P12058776411705888204

namespace A101673

/-- `A254377(n)-A106400(n)` -/
def P12058776411705888204.Spec : Prop :=
  ∀ n, P12058776411705888204.a n = A101673 n

end A101673

/-! ## A101673.P6013137961634226435

`A010060(n)*A040001(n)`
-/

namespace A101673.P6013137961634226435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n * A040001 n

end

end A101673.P6013137961634226435

namespace A101673

/-- `A010060(n)*A040001(n)` -/
def P6013137961634226435.Spec : Prop :=
  ∀ n, P6013137961634226435.a n = A101673 n

end A101673

/-! ## A101673.P1616923097166805443

`(2-n%2)*char[xor(n, Δ[n²])]`
-/

namespace A101673.P1616923097166805443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((n % 2 : ℕ) : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A101673.P1616923097166805443

namespace A101673

/-- `(2-n%2)*char[xor(n, Δ[n²])]` -/
def P1616923097166805443.Spec : Prop :=
  ∀ n, P1616923097166805443.a n = A101673 n

end A101673

/-! ## A101673.P7392898603343082315

`((n+1)%2+1)*char[xor(n, Δ[n²])]`
-/

namespace A101673.P7392898603343082315
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % 2 + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A101673.P7392898603343082315

namespace A101673

/-- `((n+1)%2+1)*char[xor(n, Δ[n²])]` -/
def P7392898603343082315.Spec : Prop :=
  ∀ n, (P7392898603343082315.a n : ℤ) = A101673 n

end A101673

/-!
# A101674: Fixed point of morphism 0 -> 01, 1 -> 20, 2 -> 21.

The programs for A101674, the canonical program `A101674.P11494463839896824026` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101674 has offset 0).

The definition of A101674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101674.P14993717699496321647

`2-a(A101662(n))` with `a(0)=0, a(1)=1`
-/

namespace A101674.P14993717699496321647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - a (A101662 n).toNat

end

end A101674.P14993717699496321647

namespace A101674

/-- `2-a(A101662(n))` -/
def P14993717699496321647.Spec : Prop :=
  ∀ n, P14993717699496321647.a n = A101674 n

end A101674

/-! ## A101674.P11898710113998136696

`A101669(A090078(n))`
-/

namespace A101674.P11898710113998136696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101669 (A090078 n).toNat

end

end A101674.P11898710113998136696

namespace A101674

/-- `A101669(A090078(n))` -/
def P11898710113998136696.Spec : Prop :=
  ∀ n, P11898710113998136696.a n = A101674 n

end A101674

/-! ## A101674.P11494463839896824026

`gcd(2, n)*A000035(A089309(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A101674

/-- `gcd(2, n)*A000035(A089309(n))` -/
def P11494463839896824026.Spec : Prop :=
  ∀ n, P11494463839896824026.a n = A101674 n

theorem P11494463839896824026.correct : P11494463839896824026.Spec := by
  intro n
  simp only [A101674]

end A101674

/-! ## A101674.P7001779860641864504

`and(1, A089309(n))*A040001(n)`
-/

namespace A101674.P7001779860641864504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A089309 n) * A040001 n

end

end A101674.P7001779860641864504

namespace A101674

/-- `and(1, A089309(n))*A040001(n)` -/
def P7001779860641864504.Spec : Prop :=
  ∀ n, P7001779860641864504.a n = A101674 n

end A101674

/-! ## A101674.P5526214634616463208

`A000035(A089309(n))*A040001(n)`
-/

namespace A101674.P5526214634616463208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A089309 n).toNat * A040001 n

end

end A101674.P5526214634616463208

namespace A101674

/-- `A000035(A089309(n))*A040001(n)` -/
def P5526214634616463208.Spec : Prop :=
  ∀ n, P5526214634616463208.a n = A101674 n

end A101674

/-! ## A101674.P9833576526718704979

`(2-A000035(n))*A000035(A089309(n))`
-/

namespace A101674.P9833576526718704979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A000035 (A089309 n).toNat

end

end A101674.P9833576526718704979

namespace A101674

/-- `(2-A000035(n))*A000035(A089309(n))` -/
def P9833576526718704979.Spec : Prop :=
  ∀ n, P9833576526718704979.a n = A101674 n

end A101674

/-! ## A101674.P2741583039295392545

`A158478(A158478(n)+n)-A101662(n)`
-/

namespace A101674.P2741583039295392545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A158478 n + (n : ℤ)).toNat - A101662 n

end

end A101674.P2741583039295392545

namespace A101674

/-- `A158478(A158478(n)+n)-A101662(n)` -/
def P2741583039295392545.Spec : Prop :=
  ∀ n, P2741583039295392545.a n = A101674 n

end A101674

/-! ## A101674.P5418765021636485104

`(A000035(n+1)+1)*A000035(A089309(n))`
-/

namespace A101674.P5418765021636485104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) + 1) * A000035 (A089309 n).toNat

end

end A101674.P5418765021636485104

namespace A101674

/-- `(A000035(n+1)+1)*A000035(A089309(n))` -/
def P5418765021636485104.Spec : Prop :=
  ∀ n, P5418765021636485104.a n = A101674 n

end A101674

/-! ## A101674.P244325593894049181

`A036580(A342410(n))`
-/

namespace A101674.P244325593894049181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (A342410 n).toNat

end

end A101674.P244325593894049181

namespace A101674

/-- `A036580(A342410(n))` -/
def P244325593894049181.Spec : Prop :=
  ∀ n, P244325593894049181.a n = A101674 n

end A101674

/-! ## A101674.P2007436454209532579

`A101662(A377355(n))`
-/

namespace A101674.P2007436454209532579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101662 (A377355 n).toNat

end

end A101674.P2007436454209532579

namespace A101674

/-- `A101662(A377355(n))` -/
def P2007436454209532579.Spec : Prop :=
  ∀ n, P2007436454209532579.a n = A101674 n

end A101674

/-! ## A101674.P10830087810043067385

`A158478(2*n)-A101662(n)`
-/

namespace A101674.P10830087810043067385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (2 * n) - A101662 n

end

end A101674.P10830087810043067385

namespace A101674

/-- `A158478(2*n)-A101662(n)` -/
def P10830087810043067385.Spec : Prop :=
  ∀ n, P10830087810043067385.a n = A101674 n

end A101674

/-! ## A101674.P289350378770560484

`A287455(A003278(n+1))`
-/

namespace A101674.P289350378770560484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (A003278 (n + 1)).toNat

end

end A101674.P289350378770560484

namespace A101674

/-- `A287455(A003278(n+1))` -/
def P289350378770560484.Spec : Prop :=
  ∀ n, P289350378770560484.a n = A101674 n

end A101674

/-! ## A101674.P11323418888686210080

`A287455(record[A244042(n)+1])`
-/

namespace A101674.P11323418888686210080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101674.P11323418888686210080

namespace A101674

/-- `A287455(record[A244042(n)+1])` -/
def P11323418888686210080.Spec : Prop :=
  ∀ n, P11323418888686210080.a n = A101674 n

end A101674

/-! ## A101674.P2644510408286677733

`A287455(A005836(n+1)+1)`
-/

namespace A101674.P2644510408286677733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (A005836 (n + 1) + 1).toNat

end

end A101674.P2644510408286677733

namespace A101674

/-- `A287455(A005836(n+1)+1)` -/
def P2644510408286677733.Spec : Prop :=
  ∀ n, P2644510408286677733.a n = A101674 n

end A101674

/-! ## A101674.P6626671567806222798

`A287455(A008619(record[A004488(n)]))`
-/

namespace A101674.P6626671567806222798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A101674.P6626671567806222798

namespace A101674

/-- `A287455(A008619(record[A004488(n)]))` -/
def P6626671567806222798.Spec : Prop :=
  ∀ n, P6626671567806222798.a n = A101674 n

end A101674

/-! ## A101674.P14429190075515346235

`A287455(A131732(record[A004488(n)]))`
-/

namespace A101674.P14429190075515346235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (A131732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A101674.P14429190075515346235

namespace A101674

/-- `A287455(A131732(record[A004488(n)]))` -/
def P14429190075515346235.Spec : Prop :=
  ∀ n, P14429190075515346235.a n = A101674 n

end A101674

/-! ## A101674.P16945510265185303372

`A287455(A008619(record[A300222(n)]))`
-/

namespace A101674.P16945510265185303372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A101674.P16945510265185303372

namespace A101674

/-- `A287455(A008619(record[A300222(n)]))` -/
def P16945510265185303372.Spec : Prop :=
  ∀ n, P16945510265185303372.a n = A101674 n

end A101674

/-!
# A101675: Expansion of (1 - x - x^2)/(1 + x^2 + x^4).

The programs for A101675, the canonical program `A101675.P16406819616190208931` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101675 has offset 0).

The definition of A101675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^2)/(1+x^2+x^4))` (program `A101675.P16406819616190208931`, by `A101675.P16406819616190208931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101675.P16406819616190208931

`ogf((1-x-x^2)/(1+x^2+x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101675

/-- `ogf((1-x-x^2)/(1+x^2+x^4))` -/
def P16406819616190208931.Spec : Prop :=
  ∀ n, P16406819616190208931.a n = A101675 n

theorem P16406819616190208931.correct : P16406819616190208931.Spec := by
  intro n
  simp only [A101675]

end A101675

/-!
# A101676: a(n) = a(n-1) - a(n-2) + a(n-3) - a(n-4) + a(n-5) with initial terms 1,0,-2,-1,0.

The programs for A101676, the canonical program `A101676.P6658406280989709981` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101676 has offset 0).

The definition of A101676 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` (program `A101676.P6658406280989709981`, by `A101676.P6658406280989709981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101676.P6658406280989709981

`a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=-2, a(3)=-1, a(4)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101676

/-- `a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` -/
def P6658406280989709981.Spec : Prop :=
  ∀ n, P6658406280989709981.a n = A101676 n

theorem P6658406280989709981.correct : P6658406280989709981.Spec := by
  intro n
  simp only [A101676]

end A101676

/-!
# A101677: a(n) = a(n-1) - 2*a(n-2) + 2*a(n-3) - 2*a(n-4) + 2*a(n-5) - a(n-6).

The programs for A101677, the canonical program `A101677.P10813575379826768119` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101677 has offset 0).

The definition of A101677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101677.P13401607305938082798

`∑[∑[ogf((1-x-x^2)/(1+x^2+x^4))]]`
-/

namespace A101677.P13401607305938082798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, 0, 1, 0, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101677.P13401607305938082798

namespace A101677

/-- `∑[∑[ogf((1-x-x^2)/(1+x^2+x^4))]]` -/
def P13401607305938082798.Spec : Prop :=
  ∀ n, P13401607305938082798.a n = A101677 n

end A101677

/-! ## A101677.P10813575379826768119

`∑[xor(1, a(n-1)-a(n-2))]` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101677

/-- `∑[xor(1, a(n-1)-a(n-2))]` -/
def P10813575379826768119.Spec : Prop :=
  ∀ n, P10813575379826768119.a n = A101677 n

theorem P10813575379826768119.correct : P10813575379826768119.Spec := by
  intro n
  simp only [A101677]

end A101677

/-! ## A101677.P16405686748787005903

`∑[floor(a(n-3))]-(a(n-3)+n)` with `a(0)=1, a(1)=1, a(2)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A101677.P16405686748787005903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (a (n - 3) + (n : ℤ))

end

end A101677.P16405686748787005903

namespace A101677

/-- `∑[floor(a(n-3))]-(a(n-3)+n)` -/
def P16405686748787005903.Spec : Prop :=
  ∀ n, P16405686748787005903.a n = A101677 n

end A101677

/-! ## A101677.P3640983081776784702

`∑[floor(a(n-3))]-a(n-3)-n` with `a(0)=1, a(1)=1, a(2)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A101677.P3640983081776784702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 3) - (n : ℤ)

end

end A101677.P3640983081776784702

namespace A101677

/-- `∑[floor(a(n-3))]-a(n-3)-n` -/
def P3640983081776784702.Spec : Prop :=
  ∀ n, P3640983081776784702.a n = A101677 n

end A101677

/-! ## A101677.P12523156048293866584

`∑[A101676(n)]`
-/

namespace A101677.P12523156048293866584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101677.P12523156048293866584

namespace A101677

/-- `∑[A101676(n)]` -/
def P12523156048293866584.Spec : Prop :=
  ∀ n, P12523156048293866584.a n = A101677 n

end A101677

/-! ## A101677.P9146536024242016298

`∑[∑[A101675(n)]]`
-/

namespace A101677.P9146536024242016298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101677.P9146536024242016298

namespace A101677

/-- `∑[∑[A101675(n)]]` -/
def P9146536024242016298.Spec : Prop :=
  ∀ n, P9146536024242016298.a n = A101677 n

end A101677

/-! ## A101677.P13230802749389454432

`A010892(n)-A002264(n+1)`
-/

namespace A101677.P13230802749389454432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n - A002264 (n + 1)

end

end A101677.P13230802749389454432

namespace A101677

/-- `A010892(n)-A002264(n+1)` -/
def P13230802749389454432.Spec : Prop :=
  ∀ n, P13230802749389454432.a n = A101677 n

end A101677

/-! ## A101677.P14373672651004858077

`A131026(n+1)-A086161(n)`
-/

namespace A101677.P14373672651004858077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131026 (n + 1) - A086161 n

end

end A101677.P14373672651004858077

namespace A101677

/-- `A131026(n+1)-A086161(n)` -/
def P14373672651004858077.Spec : Prop :=
  ∀ n, P14373672651004858077.a n = A101677 n

end A101677

/-! ## A101677.P4857754388943101744

`A004396(n)+A010892(n)-n`
-/

namespace A101677.P4857754388943101744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A010892 n - (n : ℤ))

end

end A101677.P4857754388943101744

namespace A101677

/-- `A004396(n)+A010892(n)-n` -/
def P4857754388943101744.Spec : Prop :=
  ∀ n, P4857754388943101744.a n = A101677 n

end A101677

/-! ## A101677.P4686861020302074080

`A010892(n)+1-A008620(n+1)`
-/

namespace A101677.P4686861020302074080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n + (1 - A008620 (n + 1))

end

end A101677.P4686861020302074080

namespace A101677

/-- `A010892(n)+1-A008620(n+1)` -/
def P4686861020302074080.Spec : Prop :=
  ∀ n, P4686861020302074080.a n = A101677 n

end A101677

/-! ## A101677.P7765627335879964363

`A027916(n+2)-A359626(n+1)`
-/

namespace A101677.P7765627335879964363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027916 (n + 2) - A359626 (n + 1)

end

end A101677.P7765627335879964363

namespace A101677

/-- `A027916(n+2)-A359626(n+1)` -/
def P7765627335879964363.Spec : Prop :=
  ∀ n, P7765627335879964363.a n = A101677 n

end A101677

/-! ## A101677.P3586106657391613010

`A010892(n)-A042965(n+1)+n`
-/

namespace A101677.P3586106657391613010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n - A042965 (n + 1) + (n : ℤ)

end

end A101677.P3586106657391613010

namespace A101677

/-- `A010892(n)-A042965(n+1)+n` -/
def P3586106657391613010.Spec : Prop :=
  ∀ n, P3586106657391613010.a n = A101677 n

end A101677

/-! ## A101677.P16091340422019888934

`A010892(n)-∑[A131531(n+1)²]`
-/

namespace A101677.P16091340422019888934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101677.P16091340422019888934

namespace A101677

/-- `A010892(n)-∑[A131531(n+1)²]` -/
def P16091340422019888934.Spec : Prop :=
  ∀ n, P16091340422019888934.a n = A101677 n

end A101677

/-! ## A101677.P6367720906562248978

`A010892(n)-A002264(n)-A022003(n)`
-/

namespace A101677.P6367720906562248978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n - A002264 n - A022003 n

end

end A101677.P6367720906562248978

namespace A101677

/-- `A010892(n)-A002264(n)-A022003(n)` -/
def P6367720906562248978.Spec : Prop :=
  ∀ n, P6367720906562248978.a n = A101677 n

end A101677

/-! ## A101677.P7733043827933588641

`A128834(n+1)-A002264(n+1)`
-/

namespace A101677.P7733043827933588641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (n + 1) - A002264 (n + 1)

end

end A101677.P7733043827933588641

namespace A101677

/-- `A128834(n+1)-A002264(n+1)` -/
def P7733043827933588641.Spec : Prop :=
  ∀ n, P7733043827933588641.a n = A101677 n

end A101677

/-! ## A101677.P7274994811270015527

`A163806(n+1)-A002264(n+1)`
-/

namespace A101677.P7274994811270015527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 (n + 1) - A002264 (n + 1)

end

end A101677.P7274994811270015527

namespace A101677

/-- `A163806(n+1)-A002264(n+1)` -/
def P7274994811270015527.Spec : Prop :=
  ∀ n, P7274994811270015527.a n = A101677 n

end A101677

/-! ## A101677.P6606278828991045734

`A163806(n+1)+1-A008620(n+1)`
-/

namespace A101677.P6606278828991045734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 (n + 1) + (1 - A008620 (n + 1))

end

end A101677.P6606278828991045734

namespace A101677

/-- `A163806(n+1)+1-A008620(n+1)` -/
def P6606278828991045734.Spec : Prop :=
  ∀ n, P6606278828991045734.a n = A101677 n

end A101677

/-! ## A101677.P14641666901184152948

`A144110(n+1)-(A135265(n)+A002264(n+1))`
-/

namespace A101677.P14641666901184152948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144110 (n + 1) - (A135265 n + A002264 (n + 1))

end

end A101677.P14641666901184152948

namespace A101677

/-- `A144110(n+1)-(A135265(n)+A002264(n+1))` -/
def P14641666901184152948.Spec : Prop :=
  ∀ n, P14641666901184152948.a n = A101677 n

end A101677

/-! ## A101677.P11556579279509976661

`A010872(n+1)/A057079(n)-A002264(n+1)`
-/

namespace A101677.P11556579279509976661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010872 (n + 1) : ℚ) / (A057079 n : ℚ) - (A002264 (n + 1) : ℚ)

end

end A101677.P11556579279509976661

namespace A101677

/-- `A010872(n+1)/A057079(n)-A002264(n+1)` -/
def P11556579279509976661.Spec : Prop :=
  ∀ n, P11556579279509976661.a n = (A101677 n : ℚ)

end A101677

/-! ## A101677.P507757891121321550

`A128834(n+1)-A004396(2*n)+n`
-/

namespace A101677.P507757891121321550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (n + 1) - A004396 (2 * n) + (n : ℤ)

end

end A101677.P507757891121321550

namespace A101677

/-- `A128834(n+1)-A004396(2*n)+n` -/
def P507757891121321550.Spec : Prop :=
  ∀ n, P507757891121321550.a n = A101677 n

end A101677

/-!
# A101679: A bisection of A101678.

The programs for A101679, there is no canonical definition to state claims against.
-/

/-! ## A101679.P13937817041521218359

`record[A101678(n)]`
-/

namespace A101679.P13937817041521218359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101679.P13937817041521218359

/-! ## A101679.P17634719810734680944

`A101678(2*n)`
-/

namespace A101679.P17634719810734680944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101678 (2 * n)

end

end A101679.P17634719810734680944

/-! ## A101679.P3878307113023074031

`abs(A101678(comp[Δ[n²]]))`
-/

namespace A101679.P3878307113023074031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101678 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A101679.P3878307113023074031

/-!
# A101680: A modular binomial transform of 10^n.

The programs for A101680, there is no canonical definition to state claims against.
-/

/-! ## A101680.P2685562593786168470

`record[A101623(n)]`
-/

namespace A101680.P2685562593786168470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101680.P2685562593786168470

/-! ## A101680.P16181145280804958842

`A101623(2*n)`
-/

namespace A101680.P16181145280804958842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101623 (2 * n)

end

end A101680.P16181145280804958842

/-! ## A101680.P14271081138832385622

`or(1, A101623(A005843(n)))`
-/

namespace A101680.P14271081138832385622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101623 (A005843 n).toNat)

end

end A101680.P14271081138832385622

/-! ## A101680.P10292550902571839193

`gcd(A000038(n), A101623(A005843(n)))`
-/

namespace A101680.P10292550902571839193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A101623 (A005843 n).toNat)

end

end A101680.P10292550902571839193

/-! ## A101680.P1919499101634875455

`A211020(A211020(n))+A101623(A005843(n))`
-/

namespace A101680.P1919499101634875455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211020 (A211020 n).toNat + A101623 (A005843 n).toNat

end

end A101680.P1919499101634875455

/-!
# A101681: Numbers k such that gcd(C(2k,k), 2k+1) > 1.

The programs for A101681, the canonical program `A101681.P7450056971872264129` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101681 has offset 1).

The definition of A101681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101681.P7450056971872264129

`lt[A056617(n), n]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101681

/-- `lt[A056617(n), n]` -/
def P7450056971872264129.Spec : Prop :=
  ∀ n, (P7450056971872264129.a n : ℤ) = A101681 (n + 1)

theorem P7450056971872264129.correct : P7450056971872264129.Spec := by
  intro n
  simp only [A101681, Nat.add_sub_cancel]

end A101681

/-! ## A101681.P8862349357754890692

`eq[A056617(n)%A263021(n), A056617(n)]`
-/

namespace A101681.P8862349357754890692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056617 n) (A263021 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101681.P8862349357754890692

namespace A101681

/-- `eq[A056617(n)%A263021(n), A056617(n)]` -/
def P8862349357754890692.Spec : Prop :=
  ∀ n, (P8862349357754890692.a n : ℤ) = A101681 (n + 1)

end A101681

/-! ## A101681.P13890939510482726637

`lt[2*(n+1), A181861(2*n+1)]`
-/

namespace A101681.P13890939510482726637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A101681.P13890939510482726637

namespace A101681

/-- `lt[2*(n+1), A181861(2*n+1)]` -/
def P13890939510482726637.Spec : Prop :=
  ∀ n, (P13890939510482726637.a n : ℤ) = A101681 (n + 1)

end A101681

/-! ## A101681.P11503544337941021605

`eq[A194372(n+1)%A181861(2*n+1), A194372(n+1)]`
-/

namespace A101681.P11503544337941021605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194372 (n + 1)) (A181861 (2 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101681.P11503544337941021605

namespace A101681

/-- `eq[A194372(n+1)%A181861(2*n+1), A194372(n+1)]` -/
def P11503544337941021605.Spec : Prop :=
  ∀ n, (P11503544337941021605.a n : ℤ) = A101681 (n + 1)

end A101681

/-! ## A101681.P478221452221651104

`lt[1, gcd(2*n+1, A000108(n))]`
-/

namespace A101681.P478221452221651104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A000108 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101681.P478221452221651104

namespace A101681

/-- `lt[1, gcd(2*n+1, A000108(n))]` -/
def P478221452221651104.Spec : Prop :=
  ∀ n, (P478221452221651104.a n : ℤ) = A101681 (n + 1)

end A101681

/-!
# A101682: Expansion of 2 - exp(-1 + sqrt(1-4x)).

The programs for A101682, there is no canonical definition to state claims against.
-/

/-! ## A101682.P9424904842644007617

`A000079(n)*A079267(A161680(n))`
-/

namespace A101682.P9424904842644007617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A079267 (A161680 n).toNat

end

end A101682.P9424904842644007617

/-! ## A101682.P12830367140932658288

`record[A034008(n)]*A079267(A161680(n))`
-/

namespace A101682.P12830367140932658288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A079267 (A161680 n).toNat

end

end A101682.P12830367140932658288

/-! ## A101682.P9422285260260373522

`record[A077957(n)]*A079267(A161680(n))`
-/

namespace A101682.P9422285260260373522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A079267 (A161680 n).toNat

end

end A101682.P9422285260260373522

/-! ## A101682.P529261350122444911

`record[A130321(n)]*A079267(A161680(n))`
-/

namespace A101682.P529261350122444911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A079267 (A161680 n).toNat

end

end A101682.P529261350122444911

/-! ## A101682.P13562725190554232029

`record[A131575(n)]*A079267(A161680(n))`
-/

namespace A101682.P13562725190554232029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A079267 (A161680 n).toNat

end

end A101682.P13562725190554232029

/-!
# A101684: Exponent of 2 in denominators of expansion of e.g.f.: exp(-1 + sqrt(1+x)).

The programs for A101684, there is no canonical definition to state claims against.
-/

/-! ## A101684.P10054527281198784711

`∑[A101685(abs(1-n))]+1`
-/

namespace A101684.P10054527281198784711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101685 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A101684.P10054527281198784711

/-! ## A101684.P15640222863288918450

`∑[A101685(abs(1-n))%A008574(n)]`
-/

namespace A101684.P15640222863288918450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101685 |1 - (n : ℤ)|.toNat) (A008574 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101684.P15640222863288918450

/-! ## A101684.P10019861553540811365

`abs(A101685(n)-∑[A101685(n)])`
-/

namespace A101684.P10019861553540811365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101685 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A101684.P10019861553540811365

/-! ## A101684.P16080692490479641305

`A000005(2^n)-A074909(A190911(n+1))`
-/

namespace A101684.P16080692490479641305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ n) - A074909 (A190911 (n + 1)).toNat

end

end A101684.P16080692490479641305

/-! ## A101684.P10879761304987280134

`A004482(n)-A292438(A306484(n))`
-/

namespace A101684.P10879761304987280134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n - A292438 (A306484 n).toNat

end

end A101684.P10879761304987280134

/-!
# A101685: First differences of A101684.

The programs for A101685, there is no canonical definition to state claims against.
-/

/-! ## A101685.P7164669083340028726

`A101684(n+1)-A101684(n)`
-/

namespace A101685.P7164669083340028726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101684 (n + 1) - A101684 n

end

end A101685.P7164669083340028726

/-! ## A101685.P6125163270392698594

`Δ[A101684(n)]`
-/

namespace A101685.P6125163270392698594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101685.P6125163270392698594

/-! ## A101685.P12709241052511970512

`Δ[A000005(2^n)-A074909(A190911(n+1))]`
-/

namespace A101685.P12709241052511970512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ n) - A074909 (A190911 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101685.P12709241052511970512

/-! ## A101685.P5754283975859415092

`Δ[A004482(n)-A292438(A306484(n))]`
-/

namespace A101685.P5754283975859415092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n - A292438 (A306484 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101685.P5754283975859415092

/-!
# A101686: a(n) = Product_{i=1..n} (i^2 + 1).

The programs for A101686, the canonical program `A101686.P4985112465869208866` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101686 has offset 0).

The definition of A101686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101686.P4985112465869208866

`(n²+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101686

/-- `(n²+1)*a(n-1)` -/
def P4985112465869208866.Spec : Prop :=
  ∀ n, (P4985112465869208866.a n : ℤ) = A101686 n

theorem P4985112465869208866.correct : P4985112465869208866.Spec := by
  intro n
  simp only [A101686]

end A101686

/-! ## A101686.P13988910785774955889

`A105750(n)²+A105751(n)²`
-/

namespace A101686.P13988910785774955889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105750 n ^ 2 + A105751 n ^ 2

end

end A101686.P13988910785774955889

namespace A101686

/-- `A105750(n)²+A105751(n)²` -/
def P13988910785774955889.Spec : Prop :=
  ∀ n, P13988910785774955889.a n = A101686 n

end A101686

/-! ## A101686.P1315171197942794203

`A003703(n+1)²+A009454(n+1)²`
-/

namespace A101686.P1315171197942794203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003703 (n + 1) ^ 2 + A009454 (n + 1) ^ 2

end

end A101686.P1315171197942794203

namespace A101686

/-- `A003703(n+1)²+A009454(n+1)²` -/
def P1315171197942794203.Spec : Prop :=
  ∀ n, P1315171197942794203.a n = A101686 n

end A101686

/-! ## A101686.P17301659833636305725

`∏[1+n²]`
-/

namespace A101686.P17301659833636305725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101686.P17301659833636305725

namespace A101686

/-- `∏[1+n²]` -/
def P17301659833636305725.Spec : Prop :=
  ∀ n, (P17301659833636305725.a n : ℤ) = A101686 n

end A101686

/-! ## A101686.P1999672513561119994

`a(n-1)/cos(atan(n))²` with `a(0)=1`
-/

namespace A101686.P1999672513561119994
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / Real.cos (Real.arctan (n : ℝ)) ^ 2

end

end A101686.P1999672513561119994

namespace A101686

/-- `a(n-1)/cos(atan(n))²` -/
def P1999672513561119994.Spec : Prop :=
  ∀ n, P1999672513561119994.a n = (A101686 n : ℝ)

end A101686

/-!
# A101687: a(n) = Sum_{k=1..n} floor(binomial(n,k)/k).

The programs for A101687, there is no canonical definition to state claims against.
-/

/-! ## A101687.P5097448321027672261

`A261104(n*A124329(n+1))`
-/

namespace A101687.P5097448321027672261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 ((n : ℤ) * A124329 (n + 1)).toNat

end

end A101687.P5097448321027672261

/-! ## A101687.P4665924185270579154

`A004788(floor(∑[3*2^(n-2)]))-A117716(n)`
-/

namespace A101687.P4665924185270579154
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat - A117716 n

end

end A101687.P4665924185270579154

/-! ## A101687.P11707450998243393240

`A071702(A320856(n+1))`
-/

namespace A101687.P11707450998243393240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071702 (A320856 (n + 1 + 10)).toNat

end

end A101687.P11707450998243393240

/-! ## A101687.P13455831437304902538

`A335467(A173714(n+1))`
-/

namespace A101687.P13455831437304902538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (A173714 (n + 1)).toNat

end

end A101687.P13455831437304902538

/-!
# A101688: Once 1, once 0, repeat, twice 1, twice 0, repeat, thrice 1, thrice 0, ... and so on.

The programs for A101688, the canonical program `A101688.P16852833126151798959` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101688 has offset 0).

The definition of A101688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101688.P16852833126151798959

`floor(sqrt(2*n+1))-floor(sqrt(2*n+1)-1/2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101688

/-- `floor(sqrt(2*n+1))-floor(sqrt(2*n+1)-1/2)` -/
def P16852833126151798959.Spec : Prop :=
  ∀ n, P16852833126151798959.a n = A101688 n

theorem P16852833126151798959.correct : P16852833126151798959.Spec := by
  intro n
  simp only [A101688]

end A101688

/-! ## A101688.P15143647436836279896

`ceil(sqrt(8*(n+1)))%2`
-/

namespace A101688.P15143647436836279896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2

end

end A101688.P15143647436836279896

namespace A101688

/-- `ceil(sqrt(8*(n+1)))%2` -/
def P15143647436836279896.Spec : Prop :=
  ∀ n, P15143647436836279896.a n = A101688 n

end A101688

/-! ## A101688.P16172719845817342546

`and(1, ceil(sqrt(8*(n+1))))`
-/

namespace A101688.P16172719845817342546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉

end

end A101688.P16172719845817342546

namespace A101688

/-- `and(1, ceil(sqrt(8*(n+1))))` -/
def P16172719845817342546.Spec : Prop :=
  ∀ n, P16172719845817342546.a n = A101688 n

end A101688

/-! ## A101688.P10835816886270317601

`xor(a(n-1), char[floor(n²/8)])` with `a(0)=1`
-/

namespace A101688.P10835816886270317601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 8⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A101688.P10835816886270317601

namespace A101688

/-- `xor(a(n-1), char[floor(n²/8)])` -/
def P10835816886270317601.Spec : Prop :=
  ∀ n, (P10835816886270317601.a n : ℤ) = A101688 n

end A101688

/-! ## A101688.P11872795090507602579

`char[2*n-n%floor(sqrt(n+1))]`
-/

namespace A101688.P11872795090507602579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n % Nat.sqrt (n + 1) : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A101688.P11872795090507602579

namespace A101688

/-- `char[2*n-n%floor(sqrt(n+1))]` -/
def P11872795090507602579.Spec : Prop :=
  ∀ n, (P11872795090507602579.a n : ℤ) = A101688 n

end A101688

/-! ## A101688.P3186260674910433251

`abs(A187034(n))`
-/

namespace A101688.P3186260674910433251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187034 n|

end

end A101688.P3186260674910433251

namespace A101688

/-- `abs(A187034(n))` -/
def P3186260674910433251.Spec : Prop :=
  ∀ n, P3186260674910433251.a n = A101688 n

end A101688

/-! ## A101688.P8459311968824553013

`char[lt[A114327(n), 1]]`
-/

namespace A101688.P8459311968824553013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A101688.P8459311968824553013

namespace A101688

/-- `char[lt[A114327(n), 1]]` -/
def P8459311968824553013.Spec : Prop :=
  ∀ n, (P8459311968824553013.a n : ℤ) = A101688 n

end A101688

/-! ## A101688.P15074531428253244841

`ceil(abs(sin(A238160(n))))`
-/

namespace A101688.P15074531428253244841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (A238160 n : ℝ)|⌉

end

end A101688.P15074531428253244841

namespace A101688

/-- `ceil(abs(sin(A238160(n))))` -/
def P15074531428253244841.Spec : Prop :=
  ∀ n, P15074531428253244841.a n = A101688 n

end A101688

/-! ## A101688.P5216667344024155331

`ceil(sin(A098158(n))²)`
-/

namespace A101688.P5216667344024155331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (A098158 n : ℝ) ^ 2⌉

end

end A101688.P5216667344024155331

namespace A101688

/-- `ceil(sin(A098158(n))²)` -/
def P5216667344024155331.Spec : Prop :=
  ∀ n, P5216667344024155331.a n = A101688 n

end A101688

/-! ## A101688.P13628916149364876001

`floor(acot(A037012(n)))²`
-/

namespace A101688.P13628916149364876001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A037012 n : ℝ)⌋ ^ 2

end

end A101688.P13628916149364876001

namespace A101688

/-- `floor(acot(A037012(n)))²` -/
def P13628916149364876001.Spec : Prop :=
  ∀ n, P13628916149364876001.a n = A101688 n

end A101688

/-! ## A101688.P10363796378138408062

`C(2, A050206(n+2))`
-/

namespace A101688.P10363796378138408062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A050206 (n + 2)).toNat

end

end A101688.P10363796378138408062

namespace A101688

/-- `C(2, A050206(n+2))` -/
def P10363796378138408062.Spec : Prop :=
  ∀ n, (P10363796378138408062.a n : ℤ) = A101688 n

end A101688

/-! ## A101688.P8533273065261208943

`C(2, 2*A183189(n))`
-/

namespace A101688.P8533273065261208943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A183189 n).toNat

end

end A101688.P8533273065261208943

namespace A101688

/-- `C(2, 2*A183189(n))` -/
def P8533273065261208943.Spec : Prop :=
  ∀ n, (P8533273065261208943.a n : ℤ) = A101688 n

end A101688

/-! ## A101688.P15789032571608086739

`C(2, 2*A202064(n))`
-/

namespace A101688.P15789032571608086739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A202064 n).toNat

end

end A101688.P15789032571608086739

namespace A101688

/-- `C(2, 2*A202064(n))` -/
def P15789032571608086739.Spec : Prop :=
  ∀ n, (P15789032571608086739.a n : ℤ) = A101688 n

end A101688

/-! ## A101688.P67959383098585745

`floor(sqrt(A168313(n+1)))`
-/

namespace A101688.P67959383098585745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A168313 (n + 1))

end

end A101688.P67959383098585745

namespace A101688

/-- `floor(sqrt(A168313(n+1)))` -/
def P67959383098585745.Spec : Prop :=
  ∀ n, P67959383098585745.a n = A101688 n

end A101688

/-! ## A101688.P14425680033162458759

`ceil(atan(A113953(n))/2)`
-/

namespace A101688.P14425680033162458759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A113953 n : ℝ) / 2⌉

end

end A101688.P14425680033162458759

namespace A101688

/-- `ceil(atan(A113953(n))/2)` -/
def P14425680033162458759.Spec : Prop :=
  ∀ n, P14425680033162458759.a n = A101688 n

end A101688

/-! ## A101688.P15217692352839153096

`ceil(atan(A246187(n))/2)`
-/

namespace A101688.P15217692352839153096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A246187 n : ℝ) / 2⌉

end

end A101688.P15217692352839153096

namespace A101688

/-- `ceil(atan(A246187(n))/2)` -/
def P15217692352839153096.Spec : Prop :=
  ∀ n, P15217692352839153096.a n = A101688 n

end A101688

/-! ## A101688.P16000045545525457805

`C(2, A010766(n+1)+1)`
-/

namespace A101688.P16000045545525457805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A010766 (n + 1) + 1).toNat

end

end A101688.P16000045545525457805

namespace A101688

/-- `C(2, A010766(n+1)+1)` -/
def P16000045545525457805.Spec : Prop :=
  ∀ n, (P16000045545525457805.a n : ℤ) = A101688 n

end A101688

/-! ## A101688.P11343917319781678733

`C(2, 2*A185914(n+1))`
-/

namespace A101688.P11343917319781678733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A185914 (n + 1)).toNat

end

end A101688.P11343917319781678733

namespace A101688

/-- `C(2, 2*A185914(n+1))` -/
def P11343917319781678733.Spec : Prop :=
  ∀ n, (P11343917319781678733.a n : ℤ) = A101688 n

end A101688

/-! ## A101688.P10025421456705383239

`A063524(A010766(n+1))`
-/

namespace A101688.P10025421456705383239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A010766 (n + 1)).toNat

end

end A101688.P10025421456705383239

namespace A101688

/-- `A063524(A010766(n+1))` -/
def P10025421456705383239.Spec : Prop :=
  ∀ n, P10025421456705383239.a n = A101688 n

end A101688

/-! ## A101688.P6831303965710428429

`A098158(C(2, A098158(n)))`
-/

namespace A101688.P6831303965710428429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 (Nat.choose 2 (A098158 n).toNat)

end

end A101688.P6831303965710428429

namespace A101688

/-- `A098158(C(2, A098158(n)))` -/
def P6831303965710428429.Spec : Prop :=
  ∀ n, P6831303965710428429.a n = A101688 n

end A101688

/-!
# A101691: A modular binomial sum sequence.

The programs for A101691, the canonical program `A101691.P15330832678396903197` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101691 has offset 0).

The definition of A101691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101691.P15330832678396903197

`A286548(A001316(abs(1-n)))+A209229(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A101691

/-- `A286548(A001316(abs(1-n)))+A209229(n)` -/
def P15330832678396903197.Spec : Prop :=
  ∀ n, P15330832678396903197.a n = A101691 n

theorem P15330832678396903197.correct : P15330832678396903197.Spec := by
  intro n
  simp only [A101691]

end A101691

/-! ## A101691.P15790985656409440313

`floor(A029579((n+3)*(Δ[n²]-A267582(n)))/(n+1))`
-/

namespace A101691.P15790985656409440313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029579 ((n + 3 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267582 n)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A101691.P15790985656409440313

namespace A101691

/-- `floor(A029579((n+3)*(Δ[n²]-A267582(n)))/(n+1))` -/
def P15790985656409440313.Spec : Prop :=
  ∀ n, P15790985656409440313.a n = A101691 n

end A101691

/-! ## A101691.P5189130147809973739

`A261363(∑[and(n, -2)])`
-/

namespace A101691.P5189130147809973739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261363 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101691.P5189130147809973739

namespace A101691

/-- `A261363(∑[and(n, -2)])` -/
def P5189130147809973739.Spec : Prop :=
  ∀ n, P5189130147809973739.a n = A101691 n

end A101691

/-! ## A101691.P2092653365104457595

`A261363(floor(n²/2))`
-/

namespace A101691.P2092653365104457595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261363 ⌊(n ^ 2 : ℚ) / 2⌋.toNat

end

end A101691.P2092653365104457595

namespace A101691

/-- `A261363(floor(n²/2))` -/
def P2092653365104457595.Spec : Prop :=
  ∀ n, P2092653365104457595.a n = A101691 n

end A101691

/-! ## A101691.P1297349822922434434

`A261363(A007590(n))%comp[∑[n]]`
-/

namespace A101691.P1297349822922434434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261363 (A007590 n).toNat) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A101691.P1297349822922434434

namespace A101691

/-- `A261363(A007590(n))%comp[∑[n]]` -/
def P1297349822922434434.Spec : Prop :=
  ∀ n, P1297349822922434434.a n = A101691 n

end A101691

/-!
# A101692: A modular binomial sum transform of 2^n.

The programs for A101692, the canonical program `A101692.P8436950815142899831` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101692 has offset 0).

The definition of A101692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 422 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101692.P5294317128907891152

`A133179(2*(n+1))`
-/

namespace A101692.P5294317128907891152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (2 * (n + 1))

end

end A101692.P5294317128907891152

namespace A101692

/-- `A133179(2*(n+1))` -/
def P5294317128907891152.Spec : Prop :=
  ∀ n, P5294317128907891152.a n = A101692 n

end A101692

/-! ## A101692.P8486801731843702293

`or(1, A133179(Δ[n²+n]))`
-/

namespace A101692.P8486801731843702293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A133179 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A101692.P8486801731843702293

namespace A101692

/-- `or(1, A133179(Δ[n²+n]))` -/
def P8486801731843702293.Spec : Prop :=
  ∀ n, P8486801731843702293.a n = A101692 n

end A101692

/-! ## A101692.P606196221319574572

`A038183(A053645(n+1))`
-/

namespace A101692.P606196221319574572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038183 (A053645 (n + 1)).toNat

end

end A101692.P606196221319574572

namespace A101692

/-- `A038183(A053645(n+1))` -/
def P606196221319574572.Spec : Prop :=
  ∀ n, P606196221319574572.a n = A101692 n

end A101692

/-! ## A101692.P8436950815142899831

`A001317(A006257(n+1)-1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101692

/-- `A001317(A006257(n+1)-1)` -/
def P8436950815142899831.Spec : Prop :=
  ∀ n, P8436950815142899831.a n = A101692 n

theorem P8436950815142899831.correct : P8436950815142899831.Spec := by
  intro n
  simp only [A101692]

end A101692

/-! ## A101692.P3562062190653901151

`A001317(A053645(2*(n+1)))`
-/

namespace A101692.P3562062190653901151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A053645 (2 * (n + 1))).toNat

end

end A101692.P3562062190653901151

namespace A101692

/-- `A001317(A053645(2*(n+1)))` -/
def P3562062190653901151.Spec : Prop :=
  ∀ n, P3562062190653901151.a n = A101692 n

end A101692

/-! ## A101692.P12704986093182502798

`A038183(A164089(2*(n+1)))`
-/

namespace A101692.P12704986093182502798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038183 (A164089 (2 * (n + 1))).toNat

end

end A101692.P12704986093182502798

namespace A101692

/-- `A038183(A164089(2*(n+1)))` -/
def P12704986093182502798.Spec : Prop :=
  ∀ n, P12704986093182502798.a n = A101692 n

end A101692

/-! ## A101692.P5085784089767117636

`A001317(n-A035327(n+1))`
-/

namespace A101692.P5085784089767117636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 ((n : ℤ) - A035327 (n + 1)).toNat

end

end A101692.P5085784089767117636

namespace A101692

/-- `A001317(n-A035327(n+1))` -/
def P5085784089767117636.Spec : Prop :=
  ∀ n, P5085784089767117636.a n = A101692 n

end A101692

/-! ## A101692.P11132371467158862800

`A001317(2*A164089(2*(n+1)))`
-/

namespace A101692.P11132371467158862800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (2 * A164089 (2 * (n + 1))).toNat

end

end A101692.P11132371467158862800

namespace A101692

/-- `A001317(2*A164089(2*(n+1)))` -/
def P11132371467158862800.Spec : Prop :=
  ∀ n, P11132371467158862800.a n = A101692 n

end A101692

/-! ## A101692.P2501319467312609770

`A001317(1-A080079(n+1)+n)`
-/

namespace A101692.P2501319467312609770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (1 - A080079 (n + 1) + (n : ℤ)).toNat

end

end A101692.P2501319467312609770

namespace A101692

/-- `A001317(1-A080079(n+1)+n)` -/
def P2501319467312609770.Spec : Prop :=
  ∀ n, P2501319467312609770.a n = A101692 n

end A101692

/-! ## A101692.P3987848183425118657

`A282388(n+1)/3`
-/

namespace A101692.P3987848183425118657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282388 (n + 1) : ℚ) / 3

end

end A101692.P3987848183425118657

namespace A101692

/-- `A282388(n+1)/3` -/
def P3987848183425118657.Spec : Prop :=
  ∀ n, P3987848183425118657.a n = (A101692 n : ℚ)

end A101692

/-! ## A101692.P9430848328921936580

`A133179(n+3+n)/3`
-/

namespace A101692.P9430848328921936580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133179 (n + 3 + n) : ℚ) / 3

end

end A101692.P9430848328921936580

namespace A101692

/-- `A133179(n+3+n)/3` -/
def P9430848328921936580.Spec : Prop :=
  ∀ n, P9430848328921936580.a n = (A101692 n : ℚ)

end A101692

/-! ## A101692.P9017506880648893033

`and(A052992(n), A277934(n+1))`
-/

namespace A101692.P9017506880648893033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052992 n) (A277934 (n + 1))

end

end A101692.P9017506880648893033

namespace A101692

/-- `and(A052992(n), A277934(n+1))` -/
def P9017506880648893033.Spec : Prop :=
  ∀ n, P9017506880648893033.a n = A101692 n

end A101692

/-! ## A101692.P13798486117229628482

`and(A052992(n), A282388(n+1))`
-/

namespace A101692.P13798486117229628482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052992 n) (A282388 (n + 1))

end

end A101692.P13798486117229628482

namespace A101692

/-- `and(A052992(n), A282388(n+1))` -/
def P13798486117229628482.Spec : Prop :=
  ∀ n, P13798486117229628482.a n = A101692 n

end A101692

/-! ## A101692.P12907514451937806840

`and(A038183(n+1), A126646(n))`
-/

namespace A101692.P12907514451937806840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038183 (n + 1)) (A126646 n)

end

end A101692.P12907514451937806840

namespace A101692

/-- `and(A038183(n+1), A126646(n))` -/
def P12907514451937806840.Spec : Prop :=
  ∀ n, P12907514451937806840.a n = A101692 n

end A101692

/-! ## A101692.P16994085640191938688

`and(A118173(n), A266382(n+1))`
-/

namespace A101692.P16994085640191938688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118173 n) (A266382 (n + 1))

end

end A101692.P16994085640191938688

namespace A101692

/-- `and(A118173(n), A266382(n+1))` -/
def P16994085640191938688.Spec : Prop :=
  ∀ n, P16994085640191938688.a n = A101692 n

end A101692

/-! ## A101692.P16366578914267934808

`and(A118171(n), A277934(n+1))`
-/

namespace A101692.P16366578914267934808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118171 n) (A277934 (n + 1))

end

end A101692.P16366578914267934808

namespace A101692

/-- `and(A118171(n), A277934(n+1))` -/
def P16366578914267934808.Spec : Prop :=
  ∀ n, P16366578914267934808.a n = A101692 n

end A101692

/-! ## A101692.P4335656330865049927

`and(A266382(n+1), A284031(n))`
-/

namespace A101692.P4335656330865049927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266382 (n + 1)) (A284031 n)

end

end A101692.P4335656330865049927

namespace A101692

/-- `and(A266382(n+1), A284031(n))` -/
def P4335656330865049927.Spec : Prop :=
  ∀ n, P4335656330865049927.a n = A101692 n

end A101692

/-! ## A101692.P8234230701147609224

`and(A000225(n+1), A038183(n+1))`
-/

namespace A101692.P8234230701147609224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (n + 1)) (A038183 (n + 1))

end

end A101692.P8234230701147609224

namespace A101692

/-- `and(A000225(n+1), A038183(n+1))` -/
def P8234230701147609224.Spec : Prop :=
  ∀ n, P8234230701147609224.a n = A101692 n

end A101692

/-! ## A101692.P669711222981762392

`A126646(n+1)-and(A126646(n+1), A267247(n+1))`
-/

namespace A101692.P669711222981762392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) - Int.land (A126646 (n + 1)) (A267247 (n + 1))

end

end A101692.P669711222981762392

namespace A101692

/-- `A126646(n+1)-and(A126646(n+1), A267247(n+1))` -/
def P669711222981762392.Spec : Prop :=
  ∀ n, P669711222981762392.a n = A101692 n

end A101692

/-! ## A101692.P1543839150162302281

`and(A048711(n), A052992(n))`
-/

namespace A101692.P1543839150162302281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048711 n) (A052992 n)

end

end A101692.P1543839150162302281

namespace A101692

/-- `and(A048711(n), A052992(n))` -/
def P1543839150162302281.Spec : Prop :=
  ∀ n, P1543839150162302281.a n = A101692 n

end A101692

/-!
# A101693: A modular binomial sum transform of 2^n.

The programs for A101693, there is no canonical definition to state claims against.
-/

/-! ## A101693.P16557578590740212401

`and(record[A277934(n)], A052992(n))`
-/

namespace A101693.P16557578590740212401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A052992 n)

end

end A101693.P16557578590740212401

/-! ## A101693.P6316154127911236233

`and(record[A282388(n)], A052992(n))`
-/

namespace A101693.P6316154127911236233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A052992 n)

end

end A101693.P6316154127911236233

/-! ## A101693.P7064138019370975622

`and(A000225(n+1), A038183(abs(1-n)))`
-/

namespace A101693.P7064138019370975622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (n + 1)) (A038183 |1 - (n : ℤ)|.toNat)

end

end A101693.P7064138019370975622

/-! ## A101693.P12411825052092454453

`and(A038183(A259361(n²)), A126646(n))`
-/

namespace A101693.P12411825052092454453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038183 (A259361 (n ^ 2)).toNat) (A126646 n)

end

end A101693.P12411825052092454453

/-! ## A101693.P14103377741829424267

`and(A118173(n), A266382(A259361(n²)))`
-/

namespace A101693.P14103377741829424267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118173 n) (A266382 (A259361 (n ^ 2)).toNat)

end

end A101693.P14103377741829424267

/-!
# A101694: A101693(2^n).

The programs for A101694, there is no canonical definition to state claims against.
-/

/-! ## A101694.P10741243046245695340

`A101693(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101694.P10741243046245695340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101693 (2 ^ n)

end

end A101694.P10741243046245695340

/-! ## A101694.P7659824242813950578

`a(n-1)²-floor(a(n-1)/2)²` with `a(0)=1, a(1)=5`
-/

namespace A101694.P7659824242813950578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) ^ 2 - ⌊(a (n - 1) : ℚ) / 2⌋ ^ 2

end

end A101694.P7659824242813950578

/-! ## A101694.P10457175731879385484

`A052992(2^n)`
-/

namespace A101694.P10457175731879385484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 (2 ^ n)

end

end A101694.P10457175731879385484

/-! ## A101694.P5548603596662411376

`A097074(2^n)`
-/

namespace A101694.P5548603596662411376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097074 (2 ^ n)

end

end A101694.P5548603596662411376

/-! ## A101694.P17469506492269687984

`A084183(2^n+1)`
-/

namespace A101694.P17469506492269687984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084183 (2 ^ n + 1)

end

end A101694.P17469506492269687984

/-!
# A101695: a(n) = n-th n-almost prime.

The programs for A101695, there is no canonical definition to state claims against.
-/

/-! ## A101695.P1572481029956796364

`2*A078841(n)`
-/

namespace A101695.P1572481029956796364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078841 n

end

end A101695.P1572481029956796364

/-! ## A101695.P2280523758911356525

`A078841(A005843(n)/2)+A078841(n)`
-/

namespace A101695.P2280523758911356525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078841 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A078841 n

end

end A101695.P2280523758911356525

/-! ## A101695.P6833955137459352486

`A078841(A005843(n)-n)+A078841(n)`
-/

namespace A101695.P6833955137459352486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078841 (A005843 n - (n : ℤ)).toNat + A078841 n

end

end A101695.P6833955137459352486

/-! ## A101695.P8592224766026048622

`A078841(n)+A078841(n%A078841(n))`
-/

namespace A101695.P8592224766026048622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078841 n + A078841 (Int.tmod (n : ℤ) (A078841 n)).toNat

end

end A101695.P8592224766026048622

/-! ## A101695.P9614179833001262126

`2*A078840(2*n²)`
-/

namespace A101695.P9614179833001262126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078840 (2 * n ^ 2)

end

end A101695.P9614179833001262126

/-! ## A101695.P11608508327953138618

`A078840((n+1)²+n²)`
-/

namespace A101695.P11608508327953138618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 ((n + 1) ^ 2 + n ^ 2)

end

end A101695.P11608508327953138618

/-! ## A101695.P15815482577710889682

`record[Δ[2*A078840(A030978(n))]]`
-/

namespace A101695.P15815482577710889682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078840 (A030978 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101695.P15815482577710889682

/-! ## A101695.P16273878311953751225

`A091538(2*(n+1)²)`
-/

namespace A101695.P16273878311953751225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091538 (2 * (n + 1) ^ 2)

end

end A101695.P16273878311953751225

/-!
# A101696: a(n) = sum(i=1,n)(i-th i-almost prime). Cumulative sums of A101695.

The programs for A101696, there is no canonical definition to state claims against.
-/

/-! ## A101696.P15322923718972130959

`∑[2*A165712(a(n-1))]` with `a(0)=2`
-/

namespace A101696.P15322923718972130959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * A165712 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101696.P15322923718972130959

/-! ## A101696.P10488560968071081046

`∑[A004277(A078841(n))]`
-/

namespace A101696.P10488560968071081046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A078841 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101696.P10488560968071081046

/-! ## A101696.P10964983825147451042

`∑[A245092(A101695(n+1))]`
-/

namespace A101696.P10964983825147451042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A101695 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101696.P10964983825147451042

/-! ## A101696.P1774425427268232549

`2*A327626(∑[A078841(n)])`
-/

namespace A101696.P1774425427268232549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327626 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101696.P1774425427268232549

/-! ## A101696.P4362951681637540314

`∑[A004277(A078840(2*n²))]`
-/

namespace A101696.P4362951681637540314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A078840 (2 * n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101696.P4362951681637540314

